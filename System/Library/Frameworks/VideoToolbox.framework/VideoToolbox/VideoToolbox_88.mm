void *vt_Copy_xf422_rgb_444vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = *(result + 36);
  v11 = *result;
  v12 = *(result + 28) * a2 / v11 + *(result + 44);
  v13 = result[14];
  v14 = result[12];
  v15 = result[13];
  v16 = v15 * a2 / v11;
  v17 = v16 + result[15];
  v18 = (v15 + v15 * a2) / v11 - v16;
  v20 = result[7];
  v19 = result[8];
  v22 = result[16];
  v21 = result[17];
  v23 = v19[2];
  v24 = v20[2];
  v25 = v21[2];
  v26 = v22[2];
  v27 = (v26 + v25 * v17 + v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = result[19];
    v30 = v14 & 0xFFFFFFFE;
    v31 = *v19;
    v32 = v19[1];
    v33 = *v21;
    v34 = v21[1];
    LOWORD(a5) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    v35 = *(v29 + 136) / *(v29 + 128);
    v36 = LODWORD(a5);
    v37 = LODWORD(a6);
    v38 = v35 * *v29;
    v39 = v35 * *(v29 + 8);
    v40 = v35 * *(v29 + 16);
    v41 = v35 * *(v29 + 20);
    v42 = *(v29 + 28);
    v43 = v35 * v42;
    LOWORD(v42) = *(v29 + 144);
    v44 = LODWORD(v42);
    LOWORD(v6) = *(v29 + 146);
    v45 = v6;
    LOWORD(v7) = *(v29 + 148);
    v46 = v7;
    LOWORD(v8) = *(v29 + 150);
    v47 = v8;
    LOWORD(v9) = *(v29 + 152);
    v48 = v9;
    v49 = *(v29 + 36);
    v50 = *(v29 + 40);
    v51 = *(v29 + 44);
    v52 = *(v29 + 48);
    v53 = *(v29 + 52);
    v54 = *(v29 + 56);
    v55 = *(v29 + 60);
    v56 = *(v29 + 64);
    v57 = *(v29 + 68);
    v58 = *(v29 + 124);
    if (v58 >= 0x11)
    {
      v59 = 0;
    }

    else
    {
      v59 = 16 - v58;
    }

    v61 = *v22;
    v60 = v22[1];
    v62 = (v60 + v34 * v17 + v13);
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v33 * v17 + v13);
    v65 = *v20;
    v64 = v20[1];
    v66 = v64 + v32 * v12 + 2 * v10;
    if (!v64)
    {
      v66 = 0;
    }

    v67 = v65 + v31 * v12 + 2 * v10;
    do
    {
      if (v30 >= 1)
      {
        v68 = 0;
        v69 = v67;
        v70 = v63;
        v71 = v62;
        do
        {
          v72 = (v66 + 2 * v68);
          v73 = (*v72 >> v59) - v37;
          v74 = (v72[1] >> v59) - v37;
          v75 = v39 * v74;
          v76 = (v41 * v74) + (v73 * v40);
          v77 = v43 * v73;
          v78 = v38 * ((*v69 >> v59) - v36);
          v79 = v75 + v78;
          v80 = v78 + v76;
          v81 = v77 + v78;
          v82 = (((v50 * v80) + (v49 * v79)) + (v51 * v81)) + v44;
          v83 = v46;
          if (v82 <= v46)
          {
            v83 = (((v50 * v80) + (v49 * v79)) + (v51 * v81)) + v44;
            if (v82 < v44)
            {
              v83 = v44;
            }
          }

          v84 = v69[1];
          *v70 = llroundf(v83);
          if (v71)
          {
            v85 = ((v45 + (v79 * v52)) + (v80 * v53)) + (v81 * v54);
            v86 = v48;
            if (v85 <= v48)
            {
              v86 = ((v45 + (v79 * v52)) + (v80 * v53)) + (v81 * v54);
              if (v85 < v47)
              {
                v86 = v47;
              }
            }

            v87 = ((v45 + (v79 * v55)) + (v80 * v56)) + (v81 * v57);
            *v71 = llroundf(v86);
            v88 = v48;
            if (v87 <= v48)
            {
              if (v87 < v47)
              {
                v88 = v47;
              }

              else
              {
                v88 = v87;
              }
            }

            v71[1] = llroundf(v88);
            v71 += 2;
          }

          v89 = v38 * ((v84 >> v59) - v36);
          v90 = v75 + v89;
          v91 = v76 + v89;
          v92 = v77 + v89;
          v93 = (((v50 * v91) + (v49 * v90)) + (v51 * v92)) + v44;
          v94 = v46;
          if (v93 <= v46)
          {
            v94 = (((v50 * v91) + (v49 * v90)) + (v51 * v92)) + v44;
            if (v93 < v44)
            {
              v94 = v44;
            }
          }

          v70[1] = llroundf(v94);
          if (v71)
          {
            v95 = ((v45 + (v90 * v52)) + (v91 * v53)) + (v92 * v54);
            v96 = v48;
            if (v95 <= v48)
            {
              v96 = ((v45 + (v90 * v52)) + (v91 * v53)) + (v92 * v54);
              if (v95 < v47)
              {
                v96 = v47;
              }
            }

            v97 = ((v45 + (v90 * v55)) + (v91 * v56)) + (v92 * v57);
            *v71 = llroundf(v96);
            v98 = v48;
            if (v97 <= v48)
            {
              v98 = v97;
              if (v97 < v47)
              {
                v98 = v47;
              }
            }

            v71[1] = llroundf(v98);
            v71 += 2;
          }

          v68 += 2;
          v69 += 2;
          v70 += 2;
        }

        while (v68 < v30);
      }

      v67 += v31;
      v66 += v32;
      v63 += v33;
      v62 += v34;
      ++v28;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v99 = 0;
      v100 = v24 + v23 * v12 + 2 * v10;
      do
      {
        if (v14 >= 1)
        {
          v101 = v14;
          v102 = v27;
          v103 = v100;
          do
          {
            v104 = *v103++;
            *v102++ = llroundf(v104 * 0.0038911);
            --v101;
          }

          while (v101);
        }

        v100 += v23;
        v27 += v25;
        ++v99;
      }

      while (v18 > v99);
    }
  }

  else if (v26 && v18 >= 1)
  {
    v105 = 0;
    v106 = vdupq_n_s64(v14 - 1);
    do
    {
      if (v14 >= 1)
      {
        v107 = 0;
        do
        {
          v108 = vdupq_n_s64(v107);
          v109 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v109, *v106.i8), *v106.i8).u8[0])
          {
            v27[v107] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v109, *&v106), *&v106).i8[1])
          {
            v27[v107 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDDA0)))), *&v106).i8[2])
          {
            v27[v107 + 2] = -1;
            v27[v107 + 3] = -1;
          }

          v110 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v106, vuzp1_s16(v110, *&v106)).i32[1])
          {
            v27[v107 + 4] = -1;
          }

          if (vuzp1_s8(*&v106, vuzp1_s16(v110, *&v106)).i8[5])
          {
            v27[v107 + 5] = -1;
          }

          if (vuzp1_s8(*&v106, vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD80))))).i8[6])
          {
            v27[v107 + 6] = -1;
            v27[v107 + 7] = -1;
          }

          v111 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v111, *v106.i8), *v106.i8).u8[0])
          {
            v27[v107 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v111, *&v106), *&v106).i8[1])
          {
            v27[v107 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD60)))), *&v106).i8[2])
          {
            v27[v107 + 10] = -1;
            v27[v107 + 11] = -1;
          }

          v112 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v106, vuzp1_s16(v112, *&v106)).i32[1])
          {
            v27[v107 + 12] = -1;
          }

          if (vuzp1_s8(*&v106, vuzp1_s16(v112, *&v106)).i8[5])
          {
            v27[v107 + 13] = -1;
          }

          if (vuzp1_s8(*&v106, vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v108, xmmword_18FECDD40))))).i8[6])
          {
            v27[v107 + 14] = -1;
            v27[v107 + 15] = -1;
          }

          v107 += 16;
        }

        while (((v14 + 15) & 0xFFFFFFFFFFFFFFF0) != v107);
      }

      v27 += v25;
      ++v105;
    }

    while (v18 > v105);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
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

float32x2_t *vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, float32x4_t a4, int16x4_t a5, double a6, double a7, double a8, double a9, float32x4_t _Q7)
{
  v10 = result->u8[0];
  v231 = *(&result[3] + 4) * a2 / v10 + *(&result[5] + 4);
  v232 = *(&result[4] + 4);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v238 = result;
  v14 = *&v12 * a2 / v10;
  v15 = v14 + *&result[15];
  v16 = (*&v12 + *&v12 * a2) / v10 - v14;
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v230 = v18[2];
  v234 = v17[2];
  v236 = v20[2];
  v233 = v19[2];
  v235 = v233 + v236 * v15 + 2 * *&v11;
  if (v16 >= 1)
  {
    v21 = 0;
    v22 = result[19];
    v23 = v13 - 7;
    v24 = *v18;
    v25 = v18[1];
    v26 = *v20;
    v27 = v20[1];
    v28 = v22[17].u16[2];
    v29 = v22[17].u16[3];
    a5.i32[0] = v22->i32[0];
    v30.i32[0] = v22[3].i32[1];
    v31 = v22[18].u16[0];
    v32 = v22[18].u16[1];
    v33 = v22[18].u16[2];
    v34 = v22[18].u16[3];
    v35 = v22[19].u16[0];
    _S30 = v22[4].f32[1];
    _S26 = v22[5].f32[1];
    _S5 = v22[6].f32[1];
    _S6 = v22[7].i32[0];
    result = (v22 + 16548);
    v40 = v13 & 0xFFFFFFFE;
    a4.f32[0] = 8191.0 / v22[16].u32[0];
    v41 = v28;
    v42 = v29;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v297 = v34;
    v46 = v35;
    _S27 = a4.f32[0] * v22->f32[0];
    v48 = &v22[20] + 4;
    *a5.i16 = v28;
    v49 = &v22[4116] + 4;
    __asm { FCVT            H7, S27 }

    v272 = *_Q7.i16;
    v291 = vdupq_lane_s16(a5, 0);
    v54 = -v29;
    v30.i32[1] = v22[1].i32[0];
    *_Q7.f32 = vmul_n_f32(v30, a4.f32[0]);
    *a4.f32 = vmul_n_f32(v22[2], a4.f32[0]);
    v290 = vdupq_lane_s32(vcvt_f16_f32(_Q7), 0);
    v288 = vmulq_n_f16(v290, v54);
    v289 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    _Q0 = vmulq_n_f16(v289, v54);
    v287 = _Q0;
    __asm { FCVT            H0, S30 }

    v286 = *_Q0.i16;
    v299 = v22[5].f32[0];
    __asm { FCVT            H0, S3 }

    v285 = *_Q0.i16;
    __asm { FCVT            H0, S26 }

    v284 = *_Q0.i16;
    v296 = v22[6].f32[0];
    __asm { FCVT            H0, S4 }

    v257 = *_Q0.i16;
    *_Q0.i16 = v31;
    v56 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v32;
    v57 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v33;
    v58 = vdupq_lane_s16(*_Q0.i8, 0);
    v282 = v58;
    v283 = v56;
    *v58.i16 = v34;
    v59 = vdupq_lane_s16(*v58.i8, 0);
    v256 = v59;
    *v59.i16 = v35;
    v255 = vdupq_lane_s16(*v59.i8, 0);
    v60 = v22[16].u8[4];
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v62 = v22[15].u8[4];
    v63 = 16 - v62;
    if (v62 >= 0x11)
    {
      v63 = 0;
    }

    v64 = v19[1];
    if (v64)
    {
      v65 = v64 + v27 * v15 + 2 * *&v11;
    }

    else
    {
      v65 = 0;
    }

    v66 = *v19 + v26 * v15 + 2 * *&v11;
    v68 = *v17;
    v67 = v17[1];
    v69 = v67 + v25 * v231 + 2 * v232;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v24 * v231 + 2 * v232;
    v71 = v63;
    v72 = v61;
    v239 = v13 & 0xFFFFFFF8;
    __asm { FCVT            H0, S5 }

    v254 = _H0;
    _S13 = v22[13].f32[1];
    _S18 = v22[14].f32[0];
    v295 = v22[7].f32[0];
    __asm { FCVT            H6, S6 }

    v253 = _H6;
    v294 = v22[7].f32[1];
    __asm { FCVT            H0, S0 }

    v252 = _H0;
    v293 = v22[8].f32[0];
    __asm { FCVT            H0, S2 }

    v251 = _H0;
    _S14 = v22[14].f32[1];
    v292 = v22[8].f32[1];
    __asm { FCVT            H2, S20 }

    v250 = _H2;
    __asm { FCVT            H2, S13 }

    v271 = _H2;
    __asm { FCVT            H2, S18 }

    v270 = _H2;
    __asm { FCVT            H2, S14 }

    v269 = _H2;
    v298 = v22[15].f32[0];
    __asm { FCVT            H0, S0 }

    v268 = _H0;
    v281 = v22[9].f32[0];
    __asm { FCVT            H0, S23 }

    v267 = _H0;
    v280 = v22[9].f32[1];
    __asm { FCVT            H0, S24 }

    v266 = _H0;
    v279 = v22[10].f32[0];
    __asm { FCVT            H0, S28 }

    v265 = _H0;
    v278 = v22[10].f32[1];
    __asm { FCVT            H0, S29 }

    v264 = _H0;
    v277 = v22[11].f32[0];
    __asm { FCVT            H0, S31 }

    v263 = _H0;
    v276 = v22[11].f32[1];
    __asm { FCVT            H0, S3 }

    v262 = _H0;
    v275 = v22[12].f32[0];
    __asm { FCVT            H0, S4 }

    v261 = _H0;
    v274 = v22[12].f32[1];
    __asm { FCVT            H0, S5 }

    v260 = _H0;
    v259 = vdupq_n_s16(-v63);
    v93 = vdupq_n_s16(v61);
    v94 = _Q7.i64[0];
    v95 = a4.i64[0];
    v273 = v22[13].f32[0];
    __asm { FCVT            H0, S9 }

    v258 = _H0;
    v244 = v13;
    v245 = v16;
    v242 = v25;
    v243 = v24;
    v240 = v27;
    v241 = v26;
    do
    {
      if (v13 < 8)
      {
        v144 = 0;
        v101 = v65;
        v100 = v66;
        v99 = v69;
        v98 = v70;
      }

      else
      {
        v249 = v21;
        v97 = 0;
        v98 = v70;
        v246 = v69;
        v247 = v66;
        v99 = v69;
        v100 = v66;
        v248 = v65;
        v101 = v65;
        do
        {
          v102 = *v99++;
          v103 = vcvtq_f16_u16(vshlq_u16(v102, v259));
          v104 = vmlaq_f16(v288, v290, v103);
          v105 = vmlaq_f16(v287, v289, v103);
          v106 = vtrn2q_s16(v104, v104);
          v107 = vuzp1q_s16(v105, v106).u64[0];
          v108 = vuzp2q_s16(v105, v106);
          *v108.i8 = vadd_f16(v107, *v108.i8);
          v109 = *v98++;
          v110 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v109, v259)), v291);
          v111.i64[0] = 0x9000900090009000;
          v111.i64[1] = 0x9000900090009000;
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v106, v110, v272), 0), v111));
          v113.i16[0] = *&v48[2 * v112.u16[0]];
          v113.i16[1] = *&v48[2 * v112.u16[1]];
          v113.i16[2] = *&v48[2 * v112.u16[2]];
          v113.i16[3] = *&v48[2 * v112.u16[3]];
          v113.i16[4] = *&v48[2 * v112.u16[4]];
          v113.i16[5] = *&v48[2 * v112.u16[5]];
          v113.i16[6] = *&v48[2 * v112.u16[6]];
          v113.i16[7] = *&v48[2 * v112.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v108, v108), v110, v272), 0), v111));
          v112.i16[0] = *&v48[2 * v114.u16[0]];
          v112.i16[1] = *&v48[2 * v114.u16[1]];
          v112.i16[2] = *&v48[2 * v114.u16[2]];
          v112.i16[3] = *&v48[2 * v114.u16[3]];
          v112.i16[4] = *&v48[2 * v114.u16[4]];
          v112.i16[5] = *&v48[2 * v114.u16[5]];
          v112.i16[6] = *&v48[2 * v114.u16[6]];
          v112.i16[7] = *&v48[2 * v114.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v104, v104), v110, v272), 0), v111));
          v104.i16[0] = *&v48[2 * v115.u16[0]];
          v104.i16[1] = *&v48[2 * v115.u16[1]];
          v104.i16[2] = *&v48[2 * v115.u16[2]];
          v104.i16[3] = *&v48[2 * v115.u16[3]];
          v104.i16[4] = *&v48[2 * v115.u16[4]];
          v104.i16[5] = *&v48[2 * v115.u16[5]];
          v104.i16[6] = *&v48[2 * v115.u16[6]];
          v104.i16[7] = *&v48[2 * v115.u16[7]];
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v271), v112, v270), v104, v269), vmaxq_f16(vmaxq_f16(v113, v112), v104), v268), 0), v111));
          v116.i16[0] = result->i16[v116.u16[0]];
          v116.i16[1] = result->i16[v116.u16[1]];
          v116.i16[2] = result->i16[v116.u16[2]];
          v116.i16[3] = result->i16[v116.u16[3]];
          v116.i16[4] = result->i16[v116.u16[4]];
          v116.i16[5] = result->i16[v116.u16[5]];
          v116.i16[6] = result->i16[v116.u16[6]];
          v116.i16[7] = result->i16[v116.u16[7]];
          v117 = vmulq_f16(v113, v116);
          v118 = vmulq_f16(v112, v116);
          v119 = vmulq_f16(v104, v116);
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v267), v118, v266), v119, v265), 0), v111));
          v121 = v120.u16[0];
          v122 = v120.u16[1];
          v123 = v120.u16[2];
          v124 = v120.u16[3];
          v125 = v120.u16[4];
          v126 = v120.u16[5];
          v127 = v120.u16[6];
          v128 = v120.u16[7];
          v129 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v264), v118, v263), v119, v262), 0), v111));
          v130 = v129.u16[0];
          v131 = v129.u16[1];
          v132 = v129.u16[2];
          v133 = v129.u16[3];
          v134 = v129.u16[4];
          v135 = v129.u16[5];
          v136 = v129.u16[6];
          v137 = v129.u16[7];
          v138.i16[0] = *&v49[2 * v121];
          v138.i16[1] = *&v49[2 * v122];
          v138.i16[2] = *&v49[2 * v123];
          v138.i16[3] = *&v49[2 * v124];
          v138.i16[4] = *&v49[2 * v125];
          v138.i16[5] = *&v49[2 * v126];
          v138.i16[6] = *&v49[2 * v127];
          v138.i16[7] = *&v49[2 * v128];
          v139 = vmlaq_n_f16(vmulq_n_f16(v119, v258), v118, v260);
          v140.i16[0] = *&v49[2 * v130];
          v140.i16[1] = *&v49[2 * v131];
          v140.i16[2] = *&v49[2 * v132];
          v140.i16[3] = *&v49[2 * v133];
          v140.i16[4] = *&v49[2 * v134];
          v140.i16[5] = *&v49[2 * v135];
          v140.i16[6] = *&v49[2 * v136];
          v140.i16[7] = *&v49[2 * v137];
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v139, v117, v261), 0), v111));
          v142.i16[0] = *&v49[2 * v141.u16[0]];
          v142.i16[1] = *&v49[2 * v141.u16[1]];
          v142.i16[2] = *&v49[2 * v141.u16[2]];
          v142.i16[3] = *&v49[2 * v141.u16[3]];
          v142.i16[4] = *&v49[2 * v141.u16[4]];
          v142.i16[5] = *&v49[2 * v141.u16[5]];
          v142.i16[6] = *&v49[2 * v141.u16[6]];
          v142.i16[7] = *&v49[2 * v141.u16[7]];
          *v100++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v283, v138, v286), v140, v285), v142, v284), v283), v282)), v93);
          if (v101)
          {
            v143 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v138, v252), v140, v251), v142, v250);
            v300.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v138, v257), v140, v254), v142, v253), v256), v255), v256), v255)), v93);
            v300.val[1] = vshlq_u16(vcvtq_u16_f16(v143), v93);
            vst2q_s16(v101, v300);
            v101 += 16;
          }

          v97 += 8;
        }

        while (v97 < v23);
        v144 = v239;
        v13 = v244;
        v16 = v245;
        v21 = v249;
        v25 = v242;
        v24 = v243;
        v27 = v240;
        v26 = v241;
        v66 = v247;
        v65 = v248;
        v69 = v246;
      }

      while (v144 < v40)
      {
        v145 = (v99->u16[1] >> v71) - v42;
        v146 = *(&v94 + 1) * v145;
        v147 = _S27 * ((v98->u16[0] >> v71) - v41);
        v148 = (*(&v94 + 1) * v145) + v147;
        v149 = 8191.0;
        if (v148 <= 8191.0)
        {
          v149 = (*(&v94 + 1) * v145) + v147;
          if (v148 < 0.0)
          {
            v149 = 0.0;
          }
        }

        v150 = v42;
        v151 = (v99->u16[0] >> v71) - v42;
        v152 = (*(&v95 + 1) * v145) + (v151 * *&v95);
        v153 = 8191.0;
        if ((v147 + v152) <= 8191.0)
        {
          v153 = v147 + v152;
          if ((v147 + v152) < 0.0)
          {
            v153 = 0.0;
          }
        }

        v154 = *&v94 * v151;
        v155 = v154 + v147;
        v156 = (v154 + v147) <= 8191.0;
        v157 = 8191.0;
        if (v156)
        {
          v157 = v155;
          if (v155 < 0.0)
          {
            v157 = 0.0;
          }
        }

        v158 = v44;
        v159 = v41;
        v160 = _S27 * ((v98->u16[1] >> v71) - v41);
        v161 = v146 + v160;
        v156 = (v146 + v160) <= 8191.0;
        v162 = 8191.0;
        if (v156)
        {
          v162 = v161;
          if (v161 < 0.0)
          {
            v162 = 0.0;
          }
        }

        v163 = _S27;
        v164 = v152 + v160;
        v156 = (v152 + v160) <= 8191.0;
        v165 = 8191.0;
        if (v156)
        {
          v165 = v164;
          if (v164 < 0.0)
          {
            v165 = 0.0;
          }
        }

        v166 = _S26;
        v167 = v154 + v160;
        v156 = (v154 + v160) <= 8191.0;
        v168 = 8191.0;
        if (v156)
        {
          v168 = v167;
          if (v167 < 0.0)
          {
            v168 = 0.0;
          }
        }

        v169 = _S30;
        _H0 = *&v48[2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v48[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H16 = *&v48[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm { FCVT            S20, H16 }

        v176 = (((_S18 * _S1) + (_S13 * _S0)) + (_S14 * _S20)) + (v298 * fmaxf(_S0, fmaxf(_S1, _S20)));
        v177 = 8191.0;
        if (v176 <= 8191.0)
        {
          v177 = v176;
          if (v176 < 0.0)
          {
            v177 = 0.0;
          }
        }

        _H2 = *&v48[2 * llroundf(fminf(fmaxf(v162, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H6 = *&v48[2 * llroundf(fminf(fmaxf(v165, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = *&v48[2 * llroundf(fminf(fmaxf(v168, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        _H22 = result->i16[llroundf(v177)];
        v185 = (((_S18 * _S6) + (_S13 * _S2)) + (_S14 * _S7)) + (v298 * fmaxf(_S2, fmaxf(_S6, _S7)));
        v186 = 8191.0;
        if (v185 <= 8191.0)
        {
          v186 = v185;
          if (v185 < 0.0)
          {
            v186 = 0.0;
          }
        }

        __asm { FCVT            S16, H22 }

        v188 = _S0 * _S16;
        v189 = _S1 * _S16;
        v190 = _S20 * _S16;
        _H20 = result->i16[llroundf(v186)];
        __asm { FCVT            S20, H20 }

        v193 = _S2 * _S20;
        _S6 = _S6 * _S20;
        _S7 = _S7 * _S20;
        v196 = ((v280 * v189) + (v188 * v281)) + (v190 * v279);
        v197 = ((v277 * v189) + (v188 * v278)) + (v190 * v276);
        _S0 = ((v274 * v189) + (v188 * v275)) + (v190 * v273);
        v199 = ((v280 * _S6) + (v193 * v281)) + (_S7 * v279);
        v200 = ((v277 * _S6) + (v193 * v278)) + (_S7 * v276);
        v201 = ((v274 * _S6) + (v193 * v275)) + (_S7 * v273);
        LOWORD(_S6) = *&v49[2 * llroundf(fminf(fmaxf(v196, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        LOWORD(_S7) = *&v49[2 * llroundf(fminf(fmaxf(v197, 0.0), 8191.0))];
        __asm { FCVT            S20, H7 }

        LOWORD(_S0) = *&v49[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S7, H0 }

        _H0 = *&v49[2 * llroundf(fminf(fmaxf(v199, 0.0), 8191.0))];
        _H1 = *&v49[2 * llroundf(fminf(fmaxf(v200, 0.0), 8191.0))];
        _H2 = *&v49[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        _S30 = v169;
        v208 = (v299 * _S20) + (v169 * _S6);
        _S26 = v166;
        v209 = (v208 + (v166 * _S7)) + v43;
        v210 = v45;
        if (v209 <= v45)
        {
          v210 = v209;
          if (v209 < v43)
          {
            v210 = v43;
          }
        }

        v100->i16[0] = llroundf(v210) << v72;
        _S27 = v163;
        if (v101)
        {
          v44 = v158;
          v211 = ((v158 + (_S6 * v296)) + (_S20 * _S5)) + (_S7 * v295);
          v212 = v46;
          if (v211 <= v46)
          {
            v212 = ((v158 + (_S6 * v296)) + (_S20 * _S5)) + (_S7 * v295);
            if (v211 < v297)
            {
              v212 = v297;
            }
          }

          v213 = ((v158 + (_S6 * v294)) + (_S20 * v293)) + (_S7 * v292);
          *v101 = llroundf(v212) << v72;
          v214 = v46;
          v41 = v159;
          if (v213 <= v46)
          {
            v214 = v213;
            if (v213 < v297)
            {
              v214 = v297;
            }
          }

          v101[1] = llroundf(v214) << v72;
          v215 = v101 + 2;
          v42 = v150;
        }

        else
        {
          v215 = 0;
          v41 = v159;
          v42 = v150;
          v44 = v158;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
        }

        v219 = (((v299 * _S1) + (_S30 * _S0)) + (_S26 * _S2)) + v43;
        v220 = v45;
        if (v219 <= v45)
        {
          v220 = (((v299 * _S1) + (_S30 * _S0)) + (_S26 * _S2)) + v43;
          if (v219 < v43)
          {
            v220 = v43;
          }
        }

        v100->i16[1] = llroundf(v220) << v72;
        if (v215)
        {
          v221 = ((v44 + (_S0 * v296)) + (_S1 * _S5)) + (_S2 * v295);
          v222 = v46;
          if (v221 <= v46)
          {
            v222 = ((v44 + (_S0 * v296)) + (_S1 * _S5)) + (_S2 * v295);
            if (v221 < v297)
            {
              v222 = v297;
            }
          }

          v223 = ((v44 + (_S0 * v294)) + (_S1 * v293)) + (_S2 * v292);
          *v215 = llroundf(v222) << v72;
          v224 = v46;
          if (v223 <= v46)
          {
            v224 = v223;
            if (v223 < v297)
            {
              v224 = v297;
            }
          }

          v215[1] = llroundf(v224) << v72;
          v101 = v215 + 2;
        }

        else
        {
          v101 = 0;
        }

        v144 += 2;
        v99 = (v99 + 4);
        v98 = (v98 + 4);
        v100 = (v100 + 4);
      }

      v70 += v24;
      v69 += v25;
      v66 += v26;
      v65 += v27;
      ++v21;
    }

    while (v21 != v16);
  }

  if (v234 && v233)
  {
    v225 = v235;
    if (v16 >= 1)
    {
      v226 = 0;
      v227 = (v234 + v230 * v231 + 2 * v232);
      v228 = 2 * v13;
      do
      {
        result = memcpy(v225, v227, v228);
        v227 += v230;
        v225 += v236;
        ++v226;
      }

      while (v16 > v226);
    }
  }

  else
  {
    v229 = v235;
    if (v233 && v16 >= 1)
    {
      do
      {
        if (v13 >= 1)
        {
          result = memset(v229, 255, 2 * v13);
        }

        v229 += v236;
        --v16;
      }

      while (v16);
    }
  }

  v238[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_GCD);
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

void *vt_Copy_xf422_TRC_Tone_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v10 = result;
  v11 = *result;
  v159 = *(result + 28) * a2 / v11 + *(result + 44);
  v160 = *(result + 36);
  v12 = result[14];
  v14 = result[12];
  v13 = result[13];
  v15 = v13 * a2 / v11;
  v16 = v15 + result[15];
  v17 = (v13 + v13 * a2) / v11 - v15;
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v22 = v19[2];
  v161 = v18[2];
  v23 = v21[2];
  v24 = v20[2];
  v25 = (v24 + v23 * v16 + 2 * v12);
  if (v17 >= 1)
  {
    v26 = 0;
    v27 = result[19];
    v28 = v14 & 0xFFFFFFFE;
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
    LOWORD(a4) = *(v27 + 140);
    LOWORD(a6) = *(v27 + 142);
    LOWORD(v6) = *(v27 + 144);
    LOWORD(v7) = *(v27 + 146);
    LOWORD(v8) = *(v27 + 148);
    v33 = 8191.0 / *(v27 + 128);
    v34 = LODWORD(a4);
    v35 = LODWORD(a6);
    v36 = v33 * *v27;
    v166 = v33 * *(v27 + 16);
    v167 = v33 * *(v27 + 8);
    v37 = v33 * *(v27 + 20);
    *&v38 = v33 * *(v27 + 28);
    v164 = *&v38;
    v165 = v37;
    v39 = v6;
    v40 = v7;
    v41 = v8;
    LOWORD(v38) = *(v27 + 150);
    v42 = v38;
    LOWORD(v38) = *(v27 + 152);
    v43 = v38;
    v44 = *(v27 + 36);
    v174 = v42;
    v175 = *(v27 + 40);
    v45 = *(v27 + 44);
    v172 = *(v27 + 52);
    v173 = *(v27 + 48);
    v170 = *(v27 + 60);
    v171 = *(v27 + 56);
    v168 = *(v27 + 68);
    v169 = *(v27 + 64);
    v46 = *(v27 + 80);
    v162 = *(v27 + 76);
    v163 = *(v27 + 72);
    v47 = *(v27 + 84);
    v48 = *(v27 + 88);
    v49 = *(v27 + 92);
    v50 = *(v27 + 96);
    v51 = *(v27 + 100);
    v52 = *(v27 + 104);
    result = (v27 + 164);
    v53 = v27 + 16548;
    v54 = *(v27 + 132);
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    else
    {
      v55 = 16 - v54;
    }

    v56 = *(v27 + 124);
    if (v56 >= 0x11)
    {
      v57 = 0;
    }

    else
    {
      v57 = 16 - v56;
    }

    v58 = v20[1];
    v59 = *v20 + v31 * v16;
    v60 = v27 + 32932;
    v61 = v58 + v32 * v16 + 2 * v12;
    if (!v58)
    {
      v61 = 0;
    }

    v62 = (v59 + 2 * v12);
    v64 = *v18;
    v63 = v18[1];
    _ZF = v63 == 0;
    v66 = v63 + v30 * v159 + 2 * v160;
    if (_ZF)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    v68 = v64 + v29 * v159 + 2 * v160;
    v69 = v55;
    v71 = *(v27 + 108);
    v70 = *(v27 + 112);
    v72 = *(v27 + 116);
    v73 = *(v27 + 120);
    do
    {
      if (v28 >= 1)
      {
        v74 = 0;
        v75 = v68;
        v76 = v62;
        v77 = v61;
        do
        {
          v78 = (v67 + 2 * v74);
          v79 = (v78[1] >> v57) - v35;
          v80 = v167 * v79;
          v81 = v36 * ((*v75 >> v57) - v34);
          v82 = (v167 * v79) + v81;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = (v167 * v79) + v81;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = (*v78 >> v57) - v35;
          v85 = (v165 * v79) + (v84 * v166);
          v86 = 8191.0;
          if ((v81 + v85) <= 8191.0)
          {
            v86 = v81 + v85;
            if ((v81 + v85) < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v164 * v84;
          v88 = v87 + v81;
          v89 = (v87 + v81) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v36 * ((v75[1] >> v57) - v34);
          v92 = v80 + v91;
          v89 = (v80 + v91) <= 8191.0;
          v93 = 8191.0;
          if (v89)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v85 + v91;
          v89 = (v85 + v91) <= 8191.0;
          v95 = 8191.0;
          if (v89)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = v87 + v91;
          v89 = (v87 + v91) <= 8191.0;
          v97 = 8191.0;
          if (v89)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H19 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H28 = *(result + llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H29 = *(result + llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v110 = fmaxf(_S24, fmaxf(_S25, _S26));
          v111 = (((v70 * _S25) + (v71 * _S24)) + (v72 * _S26)) + (v73 * v110);
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = (((v70 * _S25) + (v71 * _S24)) + (v72 * _S26)) + (v73 * v110);
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          v113 = v44;
          __asm
          {
            FCVT            S27, H19
            FCVT            S28, H28
            FCVT            S29, H29
          }

          _H19 = *(v53 + 2 * llroundf(v112));
          v118 = (((v70 * _S28) + (v71 * _S27)) + (v72 * _S29)) + (v73 * fmaxf(_S27, fmaxf(_S28, _S29)));
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          __asm { FCVT            S0, H19 }

          v121 = _S24 * _S0;
          _S24 = _S25 * _S0;
          v123 = _S26 * _S0;
          _H1 = *(v53 + 2 * llroundf(v119));
          __asm { FCVT            S1, H1 }

          v126 = _S27 * _S1;
          v127 = _S28 * _S1;
          v128 = _S29 * _S1;
          v129 = ((v162 * _S24) + (v121 * v163)) + (v123 * v46);
          v130 = ((v48 * _S24) + (v121 * v47)) + (v123 * v49);
          _S0 = ((v51 * _S24) + (v121 * v50)) + (v123 * v52);
          v132 = ((v162 * v127) + (v126 * v163)) + (v128 * v46);
          v133 = ((v48 * v127) + (v126 * v47)) + (v128 * v49);
          v134 = ((v51 * v127) + (v126 * v50)) + (v128 * v52);
          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          LOWORD(_S24) = *(v60 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S28, H24 }

          LOWORD(_S0) = *(v60 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H24 = *(v60 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          _H25 = *(v60 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          _H26 = *(v60 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          v44 = v113;
          v141 = (((v175 * _S28) + (v113 * _S27)) + (v45 * _S29)) + v39;
          v142 = v41;
          if (v141 <= v41)
          {
            v142 = (((v175 * _S28) + (v113 * _S27)) + (v45 * _S29)) + v39;
            if (v141 < v39)
            {
              v142 = v39;
            }
          }

          *v76 = llroundf(v142) << v69;
          if (v77)
          {
            v143 = ((v40 + (_S27 * v173)) + (_S28 * v172)) + (_S29 * v171);
            v144 = v43;
            if (v143 <= v43)
            {
              v144 = ((v40 + (_S27 * v173)) + (_S28 * v172)) + (_S29 * v171);
              if (v143 < v174)
              {
                v144 = v174;
              }
            }

            v145 = ((v40 + (_S27 * v170)) + (_S28 * v169)) + (_S29 * v168);
            *v77 = llroundf(v144) << v69;
            v146 = v43;
            if (v145 <= v43)
            {
              v146 = ((v40 + (_S27 * v170)) + (_S28 * v169)) + (_S29 * v168);
              if (v145 < v174)
              {
                v146 = v174;
              }
            }

            v77[1] = llroundf(v146) << v69;
            v77 += 2;
          }

          __asm
          {
            FCVT            S24, H24
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v150 = (((v175 * _S25) + (v113 * _S24)) + (v45 * _S26)) + v39;
          v151 = v41;
          if (v150 <= v41)
          {
            v151 = (((v175 * _S25) + (v113 * _S24)) + (v45 * _S26)) + v39;
            if (v150 < v39)
            {
              v151 = v39;
            }
          }

          v76[1] = llroundf(v151) << v69;
          if (v77)
          {
            v152 = ((v40 + (_S24 * v173)) + (_S25 * v172)) + (_S26 * v171);
            v153 = v43;
            if (v152 <= v43)
            {
              v153 = ((v40 + (_S24 * v173)) + (_S25 * v172)) + (_S26 * v171);
              if (v152 < v174)
              {
                v153 = v174;
              }
            }

            v154 = ((v40 + (_S24 * v170)) + (_S25 * v169)) + (_S26 * v168);
            *v77 = llroundf(v153) << v69;
            v155 = v43;
            if (v154 <= v43)
            {
              v155 = ((v40 + (_S24 * v170)) + (_S25 * v169)) + (_S26 * v168);
              if (v154 < v174)
              {
                v155 = v174;
              }
            }

            v77[1] = llroundf(v155) << v69;
            v77 += 2;
          }

          v74 += 2;
          v75 += 2;
          v76 += 2;
        }

        while (v74 < v28);
      }

      v68 += v29;
      v67 += v30;
      v62 = (v62 + v31);
      v61 += v32;
      ++v26;
    }

    while (v26 != v17);
  }

  if (v161 && v24)
  {
    if (v17 >= 1)
    {
      v156 = 0;
      v157 = (v161 + v22 * v159 + 2 * v160);
      v158 = 2 * v14;
      do
      {
        result = memcpy(v25, v157, v158);
        v157 += v22;
        v25 += v23;
        ++v156;
      }

      while (v17 > v156);
    }
  }

  else if (v24 && v17 >= 1)
  {
    do
    {
      if (v14 >= 1)
      {
        result = memset(v25, 255, 2 * v14);
      }

      v25 += v23;
      --v17;
    }

    while (v17);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_xf444_neon_fp16_GCD);
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

float32x2_t *vt_Copy_xf422_TRC_Mat_TRC_xf444_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, double a4, float32x4_t a5)
{
  v6 = result->u8[0];
  v197 = *(&result[3] + 4) * a2 / v6 + *(&result[5] + 4);
  v198 = *(&result[4] + 4);
  v7 = result[14];
  v9 = result[12];
  v8 = result[13];
  v203 = result;
  v10 = *&v8 * a2 / v6;
  v11 = v10 + *&result[15];
  v12 = (*&v8 + *&v8 * a2) / v6 - v10;
  v13 = result[7];
  v14 = result[8];
  v15 = result[16];
  v16 = result[17];
  v196 = v14[2];
  v200 = v13[2];
  v201 = v16[2];
  v199 = v15[2];
  v17 = (v199 + v201 * v11 + 2 * *&v7);
  if (v12 >= 1)
  {
    v18 = 0;
    v19 = result[19];
    v20 = v9 - 7;
    v22 = *v14;
    v21 = v14[1];
    v23 = *v16;
    v24 = v16[1];
    v25 = v19[17].u16[2];
    v26 = v19[17].u16[3];
    a5.i32[0] = v19[3].i32[1];
    v27 = v19[18].u16[0];
    v28 = v19[18].u16[1];
    v29 = v19[18].u16[2];
    v30 = v19[18].u16[3];
    v31 = v19[19].u16[0];
    _S17 = v19[4].f32[1];
    _S18 = v19[5].f32[0];
    _S3 = v19[5].i32[1];
    _S4 = v19[6].i32[0];
    _S5 = v19[6].i32[1];
    _S6 = v19[7].i32[0];
    _S7 = v19[7].f32[1];
    _S19 = v19[8].i32[0];
    result = (v19 + 164);
    v40 = v9 & 0xFFFFFFFE;
    v241 = v26;
    v242 = v25;
    v41 = 8191.0 / v19[16].u32[0];
    v42 = v27;
    v43 = v28;
    v44 = v29;
    *&a4 = v30;
    v239 = v30;
    v240 = v41 * v19->f32[0];
    v45 = v31;
    *&a4 = v25;
    v46 = &v19[2068] + 4;
    __asm { FCVT            H8, S23 }

    v233 = vdupq_lane_s16(*&a4, 0);
    a5.i32[1] = v19[1].i32[0];
    *v5.f32 = vmul_n_f32(*a5.f32, v41);
    *a5.f32 = vmul_n_f32(v19[2], v41);
    v52 = vcvt_f16_f32(a5);
    v53 = vdupq_lane_s32(v52, 0);
    *v52.i16 = -v26;
    v232 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v230 = vmulq_n_f16(v232, *v52.i16);
    v231 = v53;
    v54 = vmulq_n_f16(v53, *v52.i16);
    *v52.i16 = v27;
    v55 = vdupq_lane_s16(v52, 0);
    v228 = v55;
    v229 = v54;
    *v55.i16 = v28;
    v56 = vdupq_lane_s16(*v55.i8, 0);
    *v55.i16 = v29;
    v57 = vdupq_lane_s16(*v55.i8, 0);
    v227 = v57;
    *v57.i16 = v30;
    _Q0 = vdupq_lane_s16(*v57.i8, 0);
    v213 = _Q0;
    v214 = v56;
    *_Q0.i16 = v31;
    v212 = vdupq_lane_s16(*_Q0.i8, 0);
    __asm { FCVT            H0, S17 }

    v226 = *_Q0.i16;
    v59 = v19[16].u8[4];
    if (v59 >= 0x11)
    {
      v60 = 0;
    }

    else
    {
      v60 = 16 - v59;
    }

    v61 = v19[15].u8[4];
    v62 = 16 - v61;
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    v64 = *v15;
    v63 = v15[1];
    v65 = v63 + v24 * v11 + 2 * *&v7;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v23 * v11 + 2 * *&v7;
    v69 = v13;
    v67 = *v13;
    v68 = v69[1];
    v70 = v68 + v21 * v197 + 2 * v198;
    if (!v68)
    {
      v70 = 0;
    }

    v71 = v67 + v22 * v197 + 2 * v198;
    v72 = v62;
    v204 = v9 & 0xFFFFFFF8;
    _S25 = v19[9].f32[0];
    _S26 = v19[9].f32[1];
    _S27 = v19[10].f32[0];
    _S28 = v19[10].f32[1];
    _S29 = v19[11].f32[0];
    _S30 = v19[11].f32[1];
    _S31 = v19[12].f32[0];
    __asm { FCVT            H1, S18 }

    v225 = _H1;
    v81 = v19[5].f32[1];
    __asm { FCVT            H1, S3 }

    v224 = _H1;
    v238 = v19[6].f32[0];
    __asm { FCVT            H1, S4 }

    v211 = _H1;
    _S11 = v19[12].f32[1];
    _S14 = v19[13].f32[0];
    v237 = v19[6].f32[1];
    __asm { FCVT            H1, S5 }

    v210 = _H1;
    v236 = v19[7].f32[0];
    __asm { FCVT            H1, S6 }

    v209 = _H1;
    __asm { FCVT            H1, S7 }

    v208 = _H1;
    v235 = v19[8].f32[0];
    __asm { FCVT            H1, S19 }

    v207 = _H1;
    v234 = v19[8].f32[1];
    __asm { FCVT            H0, S0 }

    v206 = _H0;
    __asm { FCVT            H0, S25 }

    v223 = _H0;
    __asm { FCVT            H0, S26 }

    v222 = _H0;
    __asm { FCVT            H0, S27 }

    v221 = _H0;
    __asm { FCVT            H0, S28 }

    v220 = _H0;
    __asm { FCVT            H0, S29 }

    v219 = _H0;
    __asm { FCVT            H0, S30 }

    v218 = _H0;
    __asm { FCVT            H0, S31 }

    v217 = _H0;
    __asm { FCVT            H0, S11 }

    v216 = _H0;
    v99 = vdupq_n_s16(-v62);
    v100 = vdupq_n_s16(v60);
    __asm { FCVT            H0, S14 }

    v215 = _H0;
    v102 = v5.i64[0];
    v103 = a5.i64[0];
    v104.i64[0] = 0x9000900090009000;
    v104.i64[1] = 0x9000900090009000;
    v205 = v9;
    do
    {
      if (v9 < 8)
      {
        v130 = 0;
        v109 = v65;
        v108 = v66;
        v107 = v70;
        v106 = v71;
      }

      else
      {
        v105 = 0;
        v106 = v71;
        v107 = v70;
        v108 = v66;
        v109 = v65;
        do
        {
          v110 = *v107++;
          v111 = vcvtq_f16_u16(vshlq_u16(v110, v99));
          v112 = vmlaq_f16(v230, v232, v111);
          v113 = vmlaq_f16(v229, v231, v111);
          v114 = vtrn2q_s16(v112, v112);
          v115 = vtrn1q_s16(v112, v112);
          v116 = vuzp1q_s16(v113, v114);
          *v116.i8 = vadd_f16(*v116.i8, *&vuzp2q_s16(v113, v114));
          v117 = *v106++;
          v118 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v117, v99)), v233);
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v114, v118, _H8), 0), v104));
          v120.i16[0] = result->i16[v119.u16[0]];
          v120.i16[1] = result->i16[v119.u16[1]];
          v120.i16[2] = result->i16[v119.u16[2]];
          v120.i16[3] = result->i16[v119.u16[3]];
          v120.i16[4] = result->i16[v119.u16[4]];
          v120.i16[5] = result->i16[v119.u16[5]];
          v120.i16[6] = result->i16[v119.u16[6]];
          v120.i16[7] = result->i16[v119.u16[7]];
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v116, v116), v118, _H8), 0), v104));
          v122.i16[0] = result->i16[v121.u16[0]];
          v122.i16[1] = result->i16[v121.u16[1]];
          v122.i16[2] = result->i16[v121.u16[2]];
          v122.i16[3] = result->i16[v121.u16[3]];
          v122.i16[4] = result->i16[v121.u16[4]];
          v122.i16[5] = result->i16[v121.u16[5]];
          v122.i16[6] = result->i16[v121.u16[6]];
          v122.i16[7] = result->i16[v121.u16[7]];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v115, v118, _H8), 0), v104));
          v116.i16[0] = result->i16[v123.u16[0]];
          v116.i16[1] = result->i16[v123.u16[1]];
          v116.i16[2] = result->i16[v123.u16[2]];
          v116.i16[3] = result->i16[v123.u16[3]];
          v116.i16[4] = result->i16[v123.u16[4]];
          v116.i16[5] = result->i16[v123.u16[5]];
          v116.i16[6] = result->i16[v123.u16[6]];
          v116.i16[7] = result->i16[v123.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v223), v122, v222), v116, v221), 0), v104));
          v125.i16[0] = *&v46[2 * v124.u16[0]];
          v125.i16[1] = *&v46[2 * v124.u16[1]];
          v125.i16[2] = *&v46[2 * v124.u16[2]];
          v125.i16[3] = *&v46[2 * v124.u16[3]];
          v125.i16[4] = *&v46[2 * v124.u16[4]];
          v125.i16[5] = *&v46[2 * v124.u16[5]];
          v125.i16[6] = *&v46[2 * v124.u16[6]];
          v125.i16[7] = *&v46[2 * v124.u16[7]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v220), v122, v219), v116, v218), 0), v104));
          v127.i16[0] = *&v46[2 * v126.u16[0]];
          v127.i16[1] = *&v46[2 * v126.u16[1]];
          v127.i16[2] = *&v46[2 * v126.u16[2]];
          v127.i16[3] = *&v46[2 * v126.u16[3]];
          v127.i16[4] = *&v46[2 * v126.u16[4]];
          v127.i16[5] = *&v46[2 * v126.u16[5]];
          v127.i16[6] = *&v46[2 * v126.u16[6]];
          v127.i16[7] = *&v46[2 * v126.u16[7]];
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v215), v122, v216), v120, v217), 0), v104));
          v129.i16[0] = *&v46[2 * v128.u16[0]];
          v129.i16[1] = *&v46[2 * v128.u16[1]];
          v129.i16[2] = *&v46[2 * v128.u16[2]];
          v129.i16[3] = *&v46[2 * v128.u16[3]];
          v129.i16[4] = *&v46[2 * v128.u16[4]];
          v129.i16[5] = *&v46[2 * v128.u16[5]];
          v129.i16[6] = *&v46[2 * v128.u16[6]];
          v129.i16[7] = *&v46[2 * v128.u16[7]];
          *v108++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v228, v125, v226), v127, v225), v129, v224), v228), v227)), v100);
          if (v109)
          {
            v243.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v214, v125, v211), v127, v210), v129, v209), v213), v212), v213), v212)), v100);
            v243.val[1] = vshlq_u16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v214, v125, v208), v127, v207), v129, v206)), v100);
            vst2q_s16(v109, v243);
            v109 += 16;
          }

          v105 += 8;
        }

        while (v105 < v20);
        v130 = v204;
        v9 = v205;
      }

      while (v130 < v40)
      {
        v131 = (v107->u16[1] >> v72) - v241;
        v132 = *(&v102 + 1) * v131;
        v133 = v240 * ((v106->u16[0] >> v72) - v242);
        v134 = (*(&v102 + 1) * v131) + v133;
        v135 = 8191.0;
        if (v134 <= 8191.0)
        {
          v135 = (*(&v102 + 1) * v131) + v133;
          if (v134 < 0.0)
          {
            v135 = 0.0;
          }
        }

        v136 = (v107->u16[0] >> v72) - v241;
        v137 = (*(&v103 + 1) * v131) + (v136 * *&v103);
        v138 = 8191.0;
        if ((v133 + v137) <= 8191.0)
        {
          v138 = v133 + v137;
          if ((v133 + v137) < 0.0)
          {
            v138 = 0.0;
          }
        }

        v139 = *&v102 * v136;
        v140 = 8191.0;
        if (((*&v102 * v136) + v133) <= 8191.0)
        {
          v140 = v139 + v133;
          if ((v139 + v133) < 0.0)
          {
            v140 = 0.0;
          }
        }

        v141 = v240 * ((v106->u16[1] >> v72) - v242);
        v142 = v132 + v141;
        v143 = 8191.0;
        if (v142 <= 8191.0)
        {
          v143 = v142;
          if (v142 < 0.0)
          {
            v143 = 0.0;
          }
        }

        v144 = v137 + v141;
        v145 = (v137 + v141) <= 8191.0;
        v146 = 8191.0;
        if (v145)
        {
          v146 = v144;
          if (v144 < 0.0)
          {
            v146 = 0.0;
          }
        }

        v147 = v139 + v141;
        if ((v139 + v141) < 0.0)
        {
          v148 = 0.0;
        }

        else
        {
          v148 = v139 + v141;
        }

        v149 = llroundf(fminf(fmaxf(v135, 0.0), 8191.0));
        if (v147 <= 8191.0)
        {
          v150 = v148;
        }

        else
        {
          v150 = 8191.0;
        }

        _H1 = result->i16[v149];
        __asm { FCVT            S1, H1 }

        _H2 = result->i16[llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H10 = result->i16[llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        __asm { FCVT            S10, H10 }

        v157 = ((_S26 * _S2) + (_S1 * _S25)) + (_S10 * _S27);
        v158 = ((_S29 * _S2) + (_S1 * _S28)) + (_S10 * _S30);
        _S1 = ((_S11 * _S2) + (_S1 * _S31)) + (_S10 * _S14);
        LOWORD(_S2) = *&v46[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm { FCVT            S10, H2 }

        LOWORD(_S2) = *&v46[2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0))];
        __asm { FCVT            S12, H2 }

        LOWORD(_S1) = *&v46[2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0))];
        __asm { FCVT            S13, H1 }

        v163 = _S18;
        v164 = _S18 * _S12;
        v165 = _S17;
        v166 = ((v164 + (_S17 * _S10)) + (v81 * _S13)) + v42;
        v167 = v44;
        if (v166 <= v44)
        {
          v167 = v166;
          if (v166 < v42)
          {
            v167 = v27;
          }
        }

        _H2 = result->i16[llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H23 = result->i16[llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S23, H23 }

        _H0 = result->i16[llroundf(fminf(fmaxf(v150, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        v174 = ((_S26 * _S23) + (_S2 * _S25)) + (_S0 * _S27);
        v175 = ((_S29 * _S23) + (_S2 * _S28)) + (_S0 * _S30);
        v176 = ((_S11 * _S23) + (_S2 * _S31)) + (_S0 * _S14);
        _H0 = *&v46[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        _H23 = *&v46[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        _H15 = *&v46[2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
        v108->i16[0] = llroundf(v167) << v60;
        if (v109)
        {
          v180 = ((v43 + (_S10 * v238)) + (_S12 * v237)) + (_S13 * v236);
          v181 = v45;
          if (v180 <= v45)
          {
            v181 = ((v43 + (_S10 * v238)) + (_S12 * v237)) + (_S13 * v236);
            if (v180 < v239)
            {
              v181 = v239;
            }
          }

          v182 = ((v43 + (_S10 * _S7)) + (_S12 * v235)) + (_S13 * v234);
          *v109 = llroundf(v181) << v60;
          v183 = v45;
          _S17 = v165;
          if (v182 <= v45)
          {
            v183 = ((v43 + (_S10 * _S7)) + (_S12 * v235)) + (_S13 * v234);
            if (v182 < v239)
            {
              v183 = v239;
            }
          }

          v109[1] = llroundf(v183) << v60;
          v109 += 2;
        }

        else
        {
          _S17 = v165;
        }

        _S18 = v163;
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H23
          FCVT            S23, H15
        }

        v187 = (((v163 * _S1) + (_S17 * _S0)) + (v81 * _S23)) + v42;
        v188 = v44;
        if (v187 <= v44)
        {
          v188 = (((v163 * _S1) + (_S17 * _S0)) + (v81 * _S23)) + v42;
          if (v187 < v42)
          {
            v188 = v27;
          }
        }

        v108->i16[1] = llroundf(v188) << v60;
        if (v109)
        {
          v189 = ((v43 + (_S0 * v238)) + (_S1 * v237)) + (_S23 * v236);
          v190 = v45;
          if (v189 <= v45)
          {
            v190 = ((v43 + (_S0 * v238)) + (_S1 * v237)) + (_S23 * v236);
            if (v189 < v239)
            {
              v190 = v239;
            }
          }

          v191 = ((v43 + (_S0 * _S7)) + (_S1 * v235)) + (_S23 * v234);
          *v109 = llroundf(v190) << v60;
          v192 = v45;
          if (v191 <= v45)
          {
            v192 = v191;
            if (v191 < v239)
            {
              v192 = v239;
            }
          }

          v109[1] = llroundf(v192) << v60;
          v109 += 2;
        }

        v130 += 2;
        v107 = (v107 + 4);
        v106 = (v106 + 4);
        v108 = (v108 + 4);
      }

      v71 += v22;
      v70 += v21;
      v66 += v23;
      v65 += v24;
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

  v203[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_xf444_GCD);
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

void *vt_Copy_xf422_TRC_Mat_TRC_xf444_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = result;
  v143 = *(result + 36);
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
  v144 = v19[2];
  v24 = v22[2];
  v25 = v21[2];
  v26 = (v25 + v24 * v17 + 2 * v13);
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
    v148 = v34 * *(v28 + 8);
    v146 = v34 * *(v28 + 20);
    v147 = v34 * *(v28 + 16);
    *&v38 = v34 * *(v28 + 28);
    v145 = *&v38;
    v39 = v6;
    v40 = v7;
    v41 = v8;
    LOWORD(v38) = *(v28 + 150);
    v42 = v38;
    LOWORD(v38) = *(v28 + 152);
    v43 = v38;
    v44 = *(v28 + 36);
    v45 = *(v28 + 40);
    v46 = *(v28 + 44);
    v152 = *(v28 + 52);
    v153 = *(v28 + 48);
    v150 = *(v28 + 60);
    v151 = *(v28 + 56);
    v149 = *(v28 + 64);
    v47 = *(v28 + 68);
    v48 = *(v28 + 72);
    v50 = *(v28 + 76);
    v49 = *(v28 + 80);
    v51 = *(v28 + 84);
    v52 = *(v28 + 88);
    v53 = *(v28 + 92);
    v54 = *(v28 + 96);
    v55 = *(v28 + 100);
    v56 = *(v28 + 104);
    result = (v28 + 164);
    v57 = v28 + 16548;
    v58 = *(v28 + 132);
    _CF = v58 >= 0x11;
    v60 = 16 - v58;
    if (_CF)
    {
      v60 = 0;
    }

    v61 = *(v28 + 124);
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v64 = *v21;
    v63 = v21[1];
    v65 = v63 + v33 * v17 + 2 * v13;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v32 * v17 + 2 * v13;
    v68 = *v19;
    v67 = v19[1];
    v69 = v67 + v31 * v12 + 2 * v143;
    if (!v67)
    {
      v69 = 0;
    }

    v70 = v68 + v30 * v12 + 2 * v143;
    v71 = v60;
    do
    {
      if (v29 >= 1)
      {
        v72 = 0;
        v73 = v70;
        v74 = v66;
        v75 = v65;
        do
        {
          v76 = (v69 + 2 * v72);
          v77 = (v76[1] >> v62) - v36;
          v78 = v148 * v77;
          v79 = v37 * ((*v73 >> v62) - v35);
          v80 = (v148 * v77) + v79;
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = (v148 * v77) + v79;
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = (*v76 >> v62) - v36;
          v83 = (v146 * v77) + (v82 * v147);
          v84 = 8191.0;
          if ((v79 + v83) <= 8191.0)
          {
            v84 = v79 + v83;
            if ((v79 + v83) < 0.0)
            {
              v84 = 0.0;
            }
          }

          v85 = v145 * v82;
          v86 = (v145 * v82) + v79;
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          v88 = v37 * ((v73[1] >> v62) - v35);
          v89 = v78 + v88;
          v90 = 8191.0;
          if (v89 <= 8191.0)
          {
            v90 = v89;
            if (v89 < 0.0)
            {
              v90 = 0.0;
            }
          }

          v91 = v83 + v88;
          v92 = (v83 + v88) <= 8191.0;
          v93 = 8191.0;
          if (v92)
          {
            v93 = v91;
            if (v91 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v85 + v88;
          if ((v85 + v88) < 0.0)
          {
            v95 = 0.0;
          }

          else
          {
            v95 = v85 + v88;
          }

          v96 = llroundf(fminf(fmaxf(v81, 0.0), 8191.0));
          if (v94 <= 8191.0)
          {
            v97 = v95;
          }

          else
          {
            v97 = 8191.0;
          }

          _H4 = *(result + v96);
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v107 = ((v50 * _S5) + (_S4 * v48)) + (_S6 * v49);
          v108 = ((v52 * _S5) + (_S4 * v51)) + (_S6 * v53);
          _S4 = ((v55 * _S5) + (_S4 * v54)) + (_S6 * v56);
          LOWORD(_S5) = *(v57 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v57 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S4) = *(v57 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S7, H4 }

          v113 = (((v45 * _S6) + (v44 * _S5)) + (v46 * _S7)) + v39;
          v114 = v41;
          if (v113 <= v41)
          {
            v114 = (((v45 * _S6) + (v44 * _S5)) + (v46 * _S7)) + v39;
            if (v113 < v39)
            {
              v114 = v39;
            }
          }

          _H4 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H24 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H25 = *(result + llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v121 = ((v50 * _S24) + (_S4 * v48)) + (_S25 * v49);
          v122 = ((v52 * _S24) + (_S4 * v51)) + (_S25 * v53);
          v123 = ((v55 * _S24) + (_S4 * v54)) + (_S25 * v56);
          _H4 = *(v57 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          _H24 = *(v57 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          _H25 = *(v57 + 2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0)));
          *v74 = llroundf(v114) << v71;
          if (v75)
          {
            v127 = ((v40 + (_S5 * v153)) + (_S6 * v152)) + (_S7 * v151);
            v128 = v43;
            if (v127 <= v43)
            {
              v128 = ((v40 + (_S5 * v153)) + (_S6 * v152)) + (_S7 * v151);
              if (v127 < v42)
              {
                v128 = v42;
              }
            }

            v129 = ((v40 + (_S5 * v150)) + (_S6 * v149)) + (_S7 * v47);
            *v75 = llroundf(v128) << v71;
            v130 = v43;
            if (v129 <= v43)
            {
              v130 = v129;
              if (v129 < v42)
              {
                v130 = v42;
              }
            }

            v75[1] = llroundf(v130) << v71;
            v75 += 2;
          }

          __asm
          {
            FCVT            S4, H4
            FCVT            S5, H24
            FCVT            S6, H25
          }

          v134 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
          v135 = v41;
          if (v134 <= v41)
          {
            v135 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
            if (v134 < v39)
            {
              v135 = v39;
            }
          }

          v74[1] = llroundf(v135) << v71;
          if (v75)
          {
            v136 = ((v40 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
            v137 = v43;
            if (v136 <= v43)
            {
              v137 = ((v40 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
              if (v136 < v42)
              {
                v137 = v42;
              }
            }

            v138 = ((v40 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v47);
            *v75 = llroundf(v137) << v71;
            v139 = v43;
            if (v138 <= v43)
            {
              v139 = v138;
              if (v138 < v42)
              {
                v139 = v42;
              }
            }

            v75[1] = llroundf(v139) << v71;
            v75 += 2;
          }

          v72 += 2;
          v73 += 2;
          v74 += 2;
        }

        while (v72 < v29);
      }

      v70 += v30;
      v69 += v31;
      v66 += v32;
      v65 += v33;
      ++v27;
    }

    while (v27 != v18);
  }

  if (v144 && v25)
  {
    if (v18 >= 1)
    {
      v140 = 0;
      v141 = (v144 + v23 * v12 + 2 * v143);
      v142 = 2 * v15;
      do
      {
        result = memcpy(v26, v141, v142);
        v141 += v23;
        v26 += v24;
        ++v140;
      }

      while (v18 > v140);
    }
  }

  else if (v25 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v26, 255, 2 * v15);
      }

      v26 += v24;
      --v18;
    }

    while (v18);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_rgb_xf444_neon_fp16_GCD);
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

void *vt_Copy_xf422_rgb_xf444_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0)
{
  v7 = result;
  v8 = *result;
  v146 = *(result + 28) * a2 / v8 + *(result + 44);
  v147 = *(result + 36);
  v9 = result[14];
  v11 = result[12];
  v10 = result[13];
  v12 = v10 * a2 / v8;
  v13 = v12 + result[15];
  v14 = (v10 + v10 * a2) / v8 - v12;
  v15 = result[7];
  v16 = result[8];
  v17 = result[16];
  v18 = result[17];
  v19 = v16[2];
  v148 = v15[2];
  v20 = v18[2];
  v21 = v17[2];
  v22 = (v21 + v20 * v13 + 2 * v9);
  if (v14 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = *v16;
    v26 = v16[1];
    v27 = *v18;
    v28 = v18[1];
    v29 = v24[17].u16[2];
    v30 = v24[17].u16[3];
    v4.i32[0] = v24[3].i32[1];
    v31 = v24[18].u16[0];
    v32 = v24[18].u16[1];
    v33 = v24[18].u16[2];
    v34 = v24[18].u16[3];
    v35 = v24[19].u16[0];
    _Q0.i32[0] = v24[4].i32[1];
    _S1 = v24[5].f32[0];
    _S2 = v24[5].f32[1];
    _S26 = v24[6].f32[0];
    _S27 = v24[6].f32[1];
    _S28 = v24[7].f32[0];
    _S29 = v24[7].f32[1];
    _S30 = v24[8].f32[0];
    v43 = v29;
    _S31 = v24[8].f32[1];
    *v5.i16 = v29;
    result = (result[12] & 0xFFFFFFFELL);
    v45 = v24[17].u32[0] / v24[16].u32[0];
    v46 = v30;
    v47 = v31;
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v51 = v35;
    _S24 = v45 * v24->f32[0];
    __asm { FCVT            H8, S24 }

    v163 = vdupq_lane_s16(v5, 0);
    v58 = -v30;
    v4.i32[1] = v24[1].i32[0];
    *v4.f32 = vmul_n_f32(*v4.f32, v45);
    *v3.f32 = vmul_n_f32(v24[2], v45);
    _Q3 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v162 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v160 = vmulq_n_f16(v162, v58);
    v161 = _Q3;
    v60 = vmulq_n_f16(_Q3, v58);
    __asm { FCVT            H3, S0 }

    v158 = *_Q3.i16;
    v159 = v60;
    __asm { FCVT            H3, S1 }

    v157 = *_Q3.i16;
    *_Q3.i16 = v31;
    v61 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v32;
    v62 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v33;
    v63 = vdupq_lane_s16(*_Q3.i8, 0);
    v156 = v63;
    *v63.i16 = v34;
    v64 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v35;
    v65 = vdupq_lane_s16(*v63.i8, 0);
    v66 = v24[16].u8[4];
    if (v66 >= 0x11)
    {
      v67 = 0;
    }

    else
    {
      v67 = 16 - v66;
    }

    v68 = v24[15].u8[4];
    if (v68 >= 0x11)
    {
      v69 = 0;
    }

    else
    {
      v69 = 16 - v68;
    }

    v71 = *v17;
    v70 = v17[1];
    v72 = v70 + v28 * v13 + 2 * v9;
    if (!v70)
    {
      v72 = 0;
    }

    v73 = v71 + v27 * v13 + 2 * v9;
    v74 = *v15;
    v75 = v15[1];
    v76 = v75 + v26 * v146 + 2 * v147;
    if (!v75)
    {
      v76 = 0;
    }

    v77 = v74 + v25 * v146 + 2 * v147;
    v78 = v69;
    v79 = -v69;
    v80 = v67;
    __asm { FCVT            H3, S2 }

    v155 = _H3;
    v82 = _S26;
    __asm { FCVT            H3, S26 }

    v154 = _H3;
    v84 = _S27;
    __asm { FCVT            H3, S27 }

    v153 = _H3;
    v86 = _S28;
    __asm { FCVT            H3, S28 }

    v152 = _H3;
    v88 = _S29;
    __asm { FCVT            H3, S29 }

    v151 = _H3;
    v90 = _S30;
    __asm { FCVT            H3, S30 }

    v150 = _H3;
    v92 = _S31;
    __asm { FCVT            H3, S31 }

    v149 = _H3;
    v94 = vdupq_n_s16(v79);
    v95 = vdupq_n_s16(v67);
    v96 = v4.i64[0];
    v97 = v3.i64[0];
    do
    {
      if (v11 < 8)
      {
        v116 = 0;
        v102 = v72;
        v101 = v73;
        v100 = v76;
        v99 = v77;
      }

      else
      {
        v98 = 0;
        v99 = v77;
        v100 = v76;
        v101 = v73;
        v102 = v72;
        do
        {
          v103 = *v100++;
          v104 = vcvtq_f16_u16(vshlq_u16(v103, v94));
          v105 = vmlaq_f16(v160, v162, v104);
          v106 = vmlaq_f16(v159, v161, v104);
          v107 = vtrn2q_s16(v105, v105);
          v108 = vtrn1q_s16(v105, v105);
          v109 = vuzp1q_s16(v106, _Q0);
          *v109.i8 = vadd_f16(*v109.i8, *&vuzp2q_s16(v106, _Q0));
          v110 = *v99++;
          v111 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v110, v94)), v163);
          v112 = vmlaq_n_f16(v107, v111, _H8);
          v113 = vmlaq_n_f16(vzip1q_s16(v109, v109), v111, _H8);
          v114 = vmlaq_n_f16(v108, v111, _H8);
          *v101++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v112, v158), v113, v157), v114, v155), v61), v156)), v95);
          if (v102)
          {
            v115 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v112, v151), v113, v150), v114, v149);
            v164.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v112, v154), v113, v153), v114, v152), v64), v65), v64), v65)), v95);
            v164.val[1] = vshlq_u16(vcvtq_u16_f16(v115), v95);
            vst2q_s16(v102, v164);
            v102 += 16;
          }

          v98 += 8;
        }

        while (v98 < v11 - 7);
        v116 = v11 & 0x7FFFFFF8;
      }

      while (v116 < result)
      {
        v117 = (v100->u16[0] >> v78) - v46;
        v118 = (v100->u16[1] >> v78) - v46;
        v119 = *(&v96 + 1) * v118;
        v120 = (*(&v97 + 1) * v118) + (v117 * *&v97);
        v121 = *&v96 * v117;
        v122 = _S24 * ((v99->u16[0] >> v78) - v43);
        v123 = (*(&v96 + 1) * v118) + v122;
        v124 = v122 + v120;
        v125 = v121 + v122;
        v126 = (((_S1 * v124) + (*_Q0.i32 * v123)) + (_S2 * v125)) + v47;
        v127 = v49;
        if (v126 <= v49)
        {
          v127 = (((_S1 * v124) + (*_Q0.i32 * v123)) + (_S2 * v125)) + v47;
          if (v126 < v47)
          {
            v127 = v47;
          }
        }

        v128 = v99->u16[1];
        v101->i16[0] = llroundf(v127) << v80;
        if (v102)
        {
          v129 = ((v48 + (v123 * v82)) + (v124 * v84)) + (v125 * v86);
          v130 = v51;
          if (v129 <= v51)
          {
            v130 = ((v48 + (v123 * v82)) + (v124 * v84)) + (v125 * v86);
            if (v129 < v50)
            {
              v130 = v50;
            }
          }

          v131 = ((v48 + (v123 * v88)) + (v124 * v90)) + (v125 * v92);
          *v102 = llroundf(v130) << v80;
          v132 = v51;
          if (v131 <= v51)
          {
            if (v131 < v50)
            {
              v132 = v50;
            }

            else
            {
              v132 = v131;
            }
          }

          v102[1] = llroundf(v132) << v80;
          v102 += 2;
        }

        v133 = _S24 * ((v128 >> v78) - v43);
        v134 = v119 + v133;
        v135 = v120 + v133;
        v136 = v121 + v133;
        v137 = (((_S1 * (v120 + v133)) + (*_Q0.i32 * v134)) + (_S2 * v136)) + v47;
        v138 = v49;
        if (v137 <= v49)
        {
          v138 = v137;
          if (v137 < v47)
          {
            v138 = v47;
          }
        }

        v101->i16[1] = llroundf(v138) << v80;
        if (v102)
        {
          v139 = ((v48 + (v134 * v82)) + (v135 * v84)) + (v136 * v86);
          v140 = v51;
          if (v139 <= v51)
          {
            v140 = ((v48 + (v134 * v82)) + (v135 * v84)) + (v136 * v86);
            if (v139 < v50)
            {
              v140 = v50;
            }
          }

          v141 = ((v48 + (v134 * v88)) + (v135 * v90)) + (v136 * v92);
          *v102 = llroundf(v140) << v80;
          v142 = v51;
          if (v141 <= v51)
          {
            v142 = v141;
            if (v141 < v50)
            {
              v142 = v50;
            }
          }

          v102[1] = llroundf(v142) << v80;
          v102 += 2;
        }

        v116 += 2;
        v100 = (v100 + 4);
        v99 = (v99 + 4);
        v101 = (v101 + 4);
      }

      v77 += v25;
      v76 += v26;
      v73 += v27;
      v72 += v28;
      ++v23;
    }

    while (v23 != v14);
  }

  if (v148 && v21)
  {
    if (v14 >= 1)
    {
      v143 = 0;
      v144 = (v148 + v19 * v146 + 2 * v147);
      v145 = 2 * v11;
      do
      {
        result = memcpy(v22, v144, v145);
        v144 += v19;
        v22 += v20;
        ++v143;
      }

      while (v14 > v143);
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

  *(v7 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v69) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v35 = v69[2], v34 > v35) && v35 || (v36 = 2 * (v31 + v28) + 2, v36 > *a8) || (v37 = a8[1], v37 < 2 * v36) && v37 || (v38 = a8[2], v36 > v38) && v38)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v73;
      ++v74;
      ++v29;
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

  if (*(v68 + 8) && v32[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > v76[1])
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
  if (*a8 * v52 + 2 * (v41 + v31) > *a9)
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && a8[1] * v52 + 4 * v53 > a9[1])
  {
    v48 = v11;
    v49 = v31;
    v50 = a8;
    v51 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && 2 * v53 + a8[2] * v52 > a9[2])
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
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_xf422_rgb_xf444_GCD);
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

void *vt_Copy_xf422_rgb_xf444_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
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
    v54 = *(v30 + 48);
    v55 = *(v30 + 52);
    v56 = *(v30 + 56);
    v57 = *(v30 + 60);
    v58 = *(v30 + 64);
    v59 = *(v30 + 68);
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
    do
    {
      if (v31 >= 1)
      {
        v72 = 0;
        v73 = v71;
        v74 = v67;
        v75 = result;
        do
        {
          v76 = (v70 + 2 * v72);
          v77 = (*v76 >> v64) - v39;
          v78 = (v76[1] >> v64) - v39;
          v79 = v41 * v78;
          v80 = (v43 * v78) + (v77 * v42);
          v81 = v45 * v77;
          v82 = v40 * ((*v73 >> v64) - v38);
          v83 = v79 + v82;
          v84 = v82 + v80;
          v85 = v81 + v82;
          v86 = (((v52 * v84) + (v51 * v83)) + (v53 * v85)) + v46;
          v87 = v48;
          if (v86 <= v48)
          {
            v87 = (((v52 * v84) + (v51 * v83)) + (v53 * v85)) + v46;
            if (v86 < v46)
            {
              v87 = v46;
            }
          }

          v88 = v73[1];
          *v74 = llroundf(v87) << v62;
          if (v75)
          {
            v89 = ((v47 + (v83 * v54)) + (v84 * v55)) + (v85 * v56);
            v90 = v50;
            if (v89 <= v50)
            {
              v90 = ((v47 + (v83 * v54)) + (v84 * v55)) + (v85 * v56);
              if (v89 < v49)
              {
                v90 = v49;
              }
            }

            v91 = ((v47 + (v83 * v57)) + (v84 * v58)) + (v85 * v59);
            *v75 = llroundf(v90) << v62;
            v92 = v50;
            if (v91 <= v50)
            {
              if (v91 < v49)
              {
                v92 = v49;
              }

              else
              {
                v92 = v91;
              }
            }

            v75[1] = llroundf(v92) << v62;
            v75 += 2;
          }

          v93 = v40 * ((v88 >> v64) - v38);
          v94 = v79 + v93;
          v95 = v80 + v93;
          v96 = v81 + v93;
          v97 = (((v52 * v95) + (v51 * v94)) + (v53 * v96)) + v46;
          v98 = v48;
          if (v97 <= v48)
          {
            v98 = (((v52 * v95) + (v51 * v94)) + (v53 * v96)) + v46;
            if (v97 < v46)
            {
              v98 = v46;
            }
          }

          v74[1] = llroundf(v98) << v62;
          if (v75)
          {
            v99 = ((v47 + (v94 * v54)) + (v95 * v55)) + (v96 * v56);
            v100 = v50;
            if (v99 <= v50)
            {
              v100 = ((v47 + (v94 * v54)) + (v95 * v55)) + (v96 * v56);
              if (v99 < v49)
              {
                v100 = v49;
              }
            }

            v101 = ((v47 + (v94 * v57)) + (v95 * v58)) + (v96 * v59);
            *v75 = llroundf(v100) << v62;
            v102 = v50;
            if (v101 <= v50)
            {
              v102 = v101;
              if (v101 < v49)
              {
                v102 = v49;
              }
            }

            v75[1] = llroundf(v102) << v62;
            v75 += 2;
          }

          v72 += 2;
          v73 += 2;
          v74 += 2;
        }

        while (v72 < v31);
      }

      v71 += v32;
      v70 += v33;
      v67 += v34;
      result = (result + v35);
      ++v29;
    }

    while (v29 != v19);
  }

  if (v25 && v27)
  {
    if (v19 >= 1)
    {
      v103 = 0;
      v104 = (v25 + v24 * v13 + 2 * v11);
      v105 = 2 * v16;
      do
      {
        result = memcpy(v28, v104, v105);
        v104 += v24;
        v28 += v26;
        ++v103;
      }

      while (v19 > v103);
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

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4)
{
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 36);
  v9 = *(a1 + 24);
  v10 = *a1;
  v11 = *(a1 + 28) * a2 / v10 + *(a1 + 44);
  v12 = *(a1 + 13);
  v228 = *(a1 + 14);
  v13 = v12 * a2;
  v14 = *(a1 + 19);
  v16 = *(a1 + 7);
  v15 = *(a1 + 8);
  v17 = *(a1 + 15);
  v18 = *(a1 + 16);
  v19 = *(a1 + 17);
  result = v15[1];
  v207 = result;
  v208 = *v15;
  v21 = v15[2];
  v22 = v16[1];
  v226 = *v16;
  v23 = v16[2];
  v24 = *v19;
  v209 = *v18;
  v25 = v14[16].u32[0];
  v26 = v14[19].u8[6];
  v241[0] = v14[19].i8[6];
  v27 = v13 / v10;
  v28 = v14[19].u8[7];
  v29 = v12 + v13;
  v205 = v24;
  v206 = v21;
  v30 = v23 + v21 * v11;
  v31 = v24 * (v13 / v10 + v17);
  v241[1] = v14[19].i8[7];
  v32 = v14[20].u8[0];
  v241[2] = v14[20].i8[0];
  v33 = v14[20].u8[1];
  v241[3] = v14[20].i8[1];
  v34 = v14[17].u16[2];
  v35 = v14[15].u8[4];
  v36 = v14[17].u16[3];
  v37 = v14->f32[0];
  v38 = v14[1].i32[0];
  v39 = v14[2];
  v40.i32[0] = v14[3].i32[1];
  v238 = v14[9].f32[0];
  v237 = v14[9].f32[1];
  v236 = v14[10].f32[0];
  v235 = v14[10].f32[1];
  v234 = v14[11].f32[0];
  v233 = v14[11].f32[1];
  LODWORD(a4) = v14[12].i32[0];
  v232 = *&a4;
  v231 = v14[12].f32[1];
  _S2 = v14[13].f32[1];
  v230 = v14[13].f32[0];
  _S3 = v14[14].f32[0];
  _S4 = v14[14].f32[1];
  _S5 = v14[15].f32[0];
  v239 = 0u;
  v240 = 0u;
  v45 = v29 / v10;
  do
  {
    v46 = 0;
    v47 = v241[v7];
    do
    {
      *((&v239 + ((v47 + 4 * v46) & 0xF8)) | (v47 + 4 * v46) & 7) = v6 + v46;
      ++v46;
    }

    while (v46 != 8);
    ++v7;
    v6 += 8;
  }

  while (v7 != 4);
  v48 = v45 - v27;
  if (v45 - v27 >= 1)
  {
    v49 = 0;
    v50 = v25;
    v51 = &v14[2068] + 4;
    v52 = v9 & 0xFFFFFFFE;
    _S0 = 8191.0 / v50;
    v54 = v34;
    v55 = v36;
    _S16 = _S0 * v37;
    v57 = &v14[4116] + 4;
    v58 = &v14[20] + 4;
    __asm { FCVT            H8, S16 }

    *&a4 = v34;
    v229 = vdupq_lane_s16(*&a4, 0);
    v64 = -v36;
    v40.i32[1] = v38;
    *v4.f32 = vmul_n_f32(v40, _S0);
    *v5.f32 = vmul_n_f32(v39, _S0);
    v227 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v224 = vmulq_n_f16(v227, v64);
    v225 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v65 = vmulq_n_f16(v225, v64);
    __asm { FCVT            H0, S2 }

    v223 = *&_S0;
    __asm { FCVT            H0, S3 }

    v222 = *&_S0;
    __asm { FCVT            H0, S4 }

    v221 = *&_S0;
    __asm { FCVT            H0, S5 }

    v220 = *&_S0;
    _S0 = v238;
    __asm { FCVT            H0, S0 }

    v219 = *&_S0;
    _S0 = v237;
    __asm { FCVT            H0, S0 }

    v218 = *&_S0;
    _S0 = v236;
    __asm { FCVT            H0, S0 }

    v217 = *&_S0;
    _S0 = v235;
    __asm { FCVT            H0, S0 }

    v216 = *&_S0;
    _S0 = v234;
    __asm { FCVT            H0, S0 }

    v215 = *&_S0;
    _S0 = v233;
    __asm { FCVT            H0, S0 }

    v214 = *&_S0;
    _S0 = v232;
    __asm { FCVT            H0, S0 }

    v213 = *&_S0;
    _S0 = v231;
    __asm { FCVT            H0, S0 }

    v212 = *&_S0;
    _S0 = v230;
    __asm { FCVT            H0, S0 }

    v211 = *&_S0;
    v75 = 16 - v35;
    if (v35 >= 0x11)
    {
      v75 = 0;
    }

    v76 = v209 + v31 + 4 * v228;
    if (v23)
    {
      v77 = (v30 + 2 * v8);
    }

    else
    {
      v77 = 0;
    }

    if (v22)
    {
      v78 = v22 + result * v11 + 2 * v8;
    }

    else
    {
      v78 = 0;
    }

    result = v226 + v208 * v11;
    v79 = (result + 2 * v8);
    v80 = v75;
    v210 = vdupq_n_s16(-v75);
    v203 = v28 + 4;
    v204 = v32 + 4;
    v201 = v33 + 4;
    v202 = v26 + 4;
    v81.i64[0] = 0x9000900090009000;
    v81.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v122 = 0;
        v88 = v78;
        v87 = v77;
        v86 = v76;
        v85 = v79;
      }

      else
      {
        v82 = 0;
        v83 = *(&v239 + 8);
        v84 = v239;
        v85 = v79;
        v86 = v76;
        v87 = v77;
        v88 = v78;
        v90 = *(&v240 + 8);
        v89 = v240;
        do
        {
          if (v87 && (v91 = *v87, ++v87, v92 = v91, v87))
          {
            *v93.i8 = vzip1_s16(*v92.i8, 0);
            v93.u64[1] = vzip2_s16(*v92.i8, 0);
            v94 = vextq_s8(v92, v92, 8uLL).u64[0];
            *v95.i8 = vzip1_s16(v94, 0);
            v95.u64[1] = vzip2_s16(v94, 0);
            v96 = vcvtq_f32_u32(v95);
            v97 = vdupq_n_s32(0x3B7F00FFu);
            v98 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v93), v97)), vcvtq_u32_f32(vmulq_f32(v96, v97))));
          }

          else
          {
            v98 = -1;
          }

          v99 = *v88++;
          v100 = vcvtq_f16_u16(vshlq_u16(v99, v210));
          v101 = vmlaq_f16(v224, v227, v100);
          v102 = vmlaq_f16(v65, v225, v100);
          v103 = vtrn2q_s16(v101, v101);
          v104 = vtrn1q_s16(v101, v101);
          v105 = vuzp1q_s16(v102, v103);
          *v105.i8 = vadd_f16(*v105.i8, *&vuzp2q_s16(v102, v103));
          v106 = *v85++;
          v107 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v106, v210)), v229);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v107, _H8), 0), v81));
          v109.i16[0] = *&v58[2 * v108.u16[0]];
          v109.i16[1] = *&v58[2 * v108.u16[1]];
          v109.i16[2] = *&v58[2 * v108.u16[2]];
          v109.i16[3] = *&v58[2 * v108.u16[3]];
          v109.i16[4] = *&v58[2 * v108.u16[4]];
          v109.i16[5] = *&v58[2 * v108.u16[5]];
          v109.i16[6] = *&v58[2 * v108.u16[6]];
          v109.i16[7] = *&v58[2 * v108.u16[7]];
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vzip1q_s16(v105, v105), v107, _H8), 0), v81));
          v111.i16[0] = *&v58[2 * v110.u16[0]];
          v111.i16[1] = *&v58[2 * v110.u16[1]];
          v111.i16[2] = *&v58[2 * v110.u16[2]];
          v111.i16[3] = *&v58[2 * v110.u16[3]];
          v111.i16[4] = *&v58[2 * v110.u16[4]];
          v111.i16[5] = *&v58[2 * v110.u16[5]];
          v111.i16[6] = *&v58[2 * v110.u16[6]];
          v111.i16[7] = *&v58[2 * v110.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v104, v107, _H8), 0), v81));
          v104.i16[0] = *&v58[2 * v112.u16[0]];
          v104.i16[1] = *&v58[2 * v112.u16[1]];
          v104.i16[2] = *&v58[2 * v112.u16[2]];
          v104.i16[3] = *&v58[2 * v112.u16[3]];
          v104.i16[4] = *&v58[2 * v112.u16[4]];
          v104.i16[5] = *&v58[2 * v112.u16[5]];
          v104.i16[6] = *&v58[2 * v112.u16[6]];
          v104.i16[7] = *&v58[2 * v112.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v223), v111, v222), v104, v221), vmaxq_f16(vmaxq_f16(v109, v111), v104), v220), 0), v81));
          v105.i16[0] = *&v51[2 * v113.u16[0]];
          v105.i16[1] = *&v51[2 * v113.u16[1]];
          v105.i16[2] = *&v51[2 * v113.u16[2]];
          v105.i16[3] = *&v51[2 * v113.u16[3]];
          v105.i16[4] = *&v51[2 * v113.u16[4]];
          v105.i16[5] = *&v51[2 * v113.u16[5]];
          v105.i16[6] = *&v51[2 * v113.u16[6]];
          v105.i16[7] = *&v51[2 * v113.u16[7]];
          v114 = vmulq_f16(v109, v105);
          v115 = vmulq_f16(v111, v105);
          v116 = vmulq_f16(v104, v105);
          v117 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v216), v115, v215), v116, v214);
          v242.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v116, v211), v115, v212), v114, v213);
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v114, v219), v115, v218), v116, v217), 0), v81));
          v109.i16[0] = *&v57[2 * v118.u16[0]];
          v109.i16[1] = *&v57[2 * v118.u16[1]];
          v109.i16[2] = *&v57[2 * v118.u16[2]];
          v109.i16[3] = *&v57[2 * v118.u16[3]];
          v109.i16[4] = *&v57[2 * v118.u16[4]];
          v109.i16[5] = *&v57[2 * v118.u16[5]];
          v109.i16[6] = *&v57[2 * v118.u16[6]];
          v109.i16[7] = *&v57[2 * v118.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v81));
          v117.i16[0] = *&v57[2 * v119.u16[0]];
          v117.i16[1] = *&v57[2 * v119.u16[1]];
          v117.i16[2] = *&v57[2 * v119.u16[2]];
          v117.i16[3] = *&v57[2 * v119.u16[3]];
          v117.i16[4] = *&v57[2 * v119.u16[4]];
          v117.i16[5] = *&v57[2 * v119.u16[5]];
          v117.i16[6] = *&v57[2 * v119.u16[6]];
          v117.i16[7] = *&v57[2 * v119.u16[7]];
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v242.val[1], 0), v81));
          v116.i16[0] = *&v57[2 * v120.u16[0]];
          result = &v57[2 * v120.u16[5]];
          v116.i16[1] = *&v57[2 * v120.u16[1]];
          v116.i16[2] = *&v57[2 * v120.u16[2]];
          v116.i16[3] = *&v57[2 * v120.u16[3]];
          v116.i16[4] = *&v57[2 * v120.u16[4]];
          v116.i16[5] = *result;
          v116.i16[6] = *&v57[2 * v120.u16[6]];
          v116.i16[7] = *&v57[2 * v120.u16[7]];
          v121 = vdupq_n_s16(0x5BF8u);
          *v242.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v121)));
          v242.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v121)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v121)));
          v242.val[1].u64[1] = v98;
          *v120.i8 = vqtbl2_s8(v242, v84);
          v120.u64[1] = vqtbl2_s8(v242, v83);
          *v116.i8 = vqtbl2_s8(v242, v89);
          v116.u64[1] = vqtbl2_s8(v242, v90);
          *v86 = v120;
          v86[1] = v116;
          v86 += 2;
          v82 += 8;
        }

        while (v82 < v9 - 7);
        v122 = v9 & 0xFFFFFFF8;
      }

      if (v122 < v52)
      {
        v123 = v86 + v204;
        v124 = v86 + v203;
        v125 = v86 + v202;
        v126 = v86 + v201;
        do
        {
          v127 = (v88->u16[1] >> v80) - v55;
          v128 = v4.f32[1] * v127;
          v129 = _S16 * ((v85->u16[0] >> v80) - v54);
          v130 = (v4.f32[1] * v127) + v129;
          v131 = 8191.0;
          if (v130 <= 8191.0)
          {
            v131 = (v4.f32[1] * v127) + v129;
            if (v130 < 0.0)
            {
              v131 = 0.0;
            }
          }

          v132 = (v88->u16[0] >> v80) - v55;
          HIWORD(v133) = v5.i16[1];
          v134 = (v5.f32[1] * v127) + (v132 * v5.f32[0]);
          v135 = 8191.0;
          if ((v129 + v134) <= 8191.0)
          {
            v135 = v129 + v134;
            if ((v129 + v134) < 0.0)
            {
              v135 = 0.0;
            }
          }

          v136 = v4.f32[0] * v132;
          v137 = (v4.f32[0] * v132) + v129;
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          v139 = _S16 * ((v85->u16[1] >> v80) - v54);
          v140 = 8191.0;
          if ((v128 + v139) <= 8191.0)
          {
            v140 = v128 + v139;
            if ((v128 + v139) < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = 8191.0;
          if ((v134 + v139) <= 8191.0)
          {
            v141 = v134 + v139;
            if ((v134 + v139) < 0.0)
            {
              v141 = 0.0;
            }
          }

          v142 = v136 + v139;
          v143 = 8191.0;
          if ((v136 + v139) <= 8191.0)
          {
            v143 = v136 + v139;
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          if (v87)
          {
            LOWORD(v142) = v87->i16[0];
            LOWORD(v133) = v87->i16[1];
            v87 = (v87 + 4);
            v144 = LODWORD(v142) * 0.0038911;
            v145 = v133 * 0.0038911;
          }

          else
          {
            v144 = 0.0;
            v145 = 0.0;
          }

          _H0 = *&v58[2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0))];
          __asm { FCVT            S15, H0 }

          _H0 = *&v58[2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0))];
          __asm { FCVT            S11, H0 }

          _H0 = *&v58[2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
          __asm { FCVT            S12, H0 }

          _H13 = *&v58[2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
          _H14 = *&v58[2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0))];
          _H27 = *&v58[2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
          v155 = fmaxf(_S15, fmaxf(_S11, _S12));
          v156 = (((_S3 * _S11) + (_S2 * _S15)) + (_S4 * _S12)) + (_S5 * v155);
          v157 = 8191.0;
          if (v156 <= 8191.0)
          {
            v157 = (((_S3 * _S11) + (_S2 * _S15)) + (_S4 * _S12)) + (_S5 * v155);
            if (v156 < 0.0)
            {
              v157 = 0.0;
            }
          }

          __asm
          {
            FCVT            S21, H13
            FCVT            S13, H14
            FCVT            S14, H27
          }

          _H27 = *&v51[2 * llroundf(v157)];
          v162 = (((_S3 * _S13) + (_S2 * _S21)) + (_S4 * _S14)) + (_S5 * fmaxf(_S21, fmaxf(_S13, _S14)));
          v163 = 8191.0;
          if (v162 <= 8191.0)
          {
            v163 = v162;
            if (v162 < 0.0)
            {
              v163 = 0.0;
            }
          }

          __asm { FCVT            S0, H27 }

          v165 = _S15 * _S0;
          v166 = _S11 * _S0;
          v167 = _S12 * _S0;
          _H1 = *&v51[2 * llroundf(v163)];
          __asm { FCVT            S1, H1 }

          v170 = _S21 * _S1;
          v171 = _S13 * _S1;
          v172 = _S14 * _S1;
          v173 = ((v237 * v166) + (v165 * v238)) + (v167 * v236);
          v174 = ((v234 * v166) + (v165 * v235)) + (v167 * v233);
          v175 = ((v231 * v166) + (v165 * v232)) + (v167 * v230);
          v176 = ((v237 * v171) + (v170 * v238)) + (v172 * v236);
          v177 = ((v234 * v171) + (v170 * v235)) + (v172 * v233);
          v178 = ((v231 * v171) + (v170 * v232)) + (v172 * v230);
          v179 = *&v57[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
          v180 = *&v57[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
          v181 = *&v57[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
          v182 = *&v57[2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
          v183 = *&v57[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
          v184 = *&v57[2 * llroundf(fminf(fmaxf(v178, 0.0), 8191.0))];
          v185 = llroundf(v144);
          if (!v87)
          {
            v185 = -1;
          }

          v186 = llroundf(v145);
          if (v87)
          {
            result = v186;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          if (v179 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H14, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H14 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *(v125 - 4) = llroundf(_S0);
          if (v180 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H21, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H21 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *(v124 - 4) = llroundf(_S0);
          if (v181 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H13, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H13 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *(v123 - 4) = llroundf(_S0);
          *(v126 - 4) = v185;
          if (v182 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H12 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *v125 = llroundf(_S0);
          if (v183 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H11 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *v124 = llroundf(_S0);
          if (v184 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S0 = 0.0;
            }

            else
            {
              __asm { FCVT            S0, H10 }
            }
          }

          else
          {
            _S0 = 255.0;
          }

          *v123 = llroundf(_S0);
          v123 += 8;
          *v126 = result;
          v126 += 8;
          v122 += 2;
          v124 += 8;
          v125 += 8;
          v88 = (v88 + 4);
          v85 = (v85 + 4);
        }

        while (v122 < v52);
      }

      v79 = (v79 + v208);
      v78 += v207;
      v77 = (v77 + v206);
      v76 += v205;
      ++v49;
    }

    while (v49 != v48);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *a1;
  v6 = *(a1 + 13);
  v7 = v6 * a2 / v5;
  result = ((v6 + v6 * a2) / v5) - v7;
  if (result >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 19);
    v11 = *(a1 + 24) & 0xFFFFFFFE;
    v13 = *(a1 + 7);
    v12 = *(a1 + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = v12[2];
    v17 = **(a1 + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v141 = v19 * *(v10 + 16);
    v142 = v19 * *(v10 + 8);
    v23 = v19 * *(v10 + 20);
    v24 = v19 * *(v10 + 28);
    v25 = *(v10 + 72);
    v26 = *(v10 + 76);
    v27 = *(v10 + 80);
    v28 = *(v10 + 84);
    v29 = *(v10 + 88);
    v30 = *(v10 + 92);
    v31 = *(v10 + 96);
    v32 = *(v10 + 100);
    v33 = v10 + 164;
    v34 = v10 + 16548;
    v35 = v10 + 32932;
    v36 = *(v10 + 104);
    v37 = *(v10 + 108);
    v38 = *(v10 + 112);
    v39 = *(v10 + 116);
    v40 = *(v10 + 120);
    v41 = v7 + *(a1 + 15);
    v42 = *(a1 + 28) * a2 / v5 + *(a1 + 44);
    v43 = *(a1 + 36);
    v44 = *(v10 + 124);
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    else
    {
      v45 = 16 - v44;
    }

    v46 = *(v10 + 161);
    v47 = *(v10 + 160);
    v48 = *(v10 + 159);
    v49 = *(v10 + 158);
    v50 = **(a1 + 16) + v17 * v41 + 4 * *(a1 + 14);
    v51 = v13[2];
    v52 = v51 + v42 * v16 + 2 * v43;
    if (!v51)
    {
      v52 = 0;
    }

    v54 = *v13;
    v53 = v13[1];
    _ZF = v53 == 0;
    v56 = v53 + v42 * v15 + 2 * v43;
    if (_ZF)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    v58 = v54 + v42 * v14 + 2 * v43;
    do
    {
      if (v11 >= 1)
      {
        v59 = 0;
        v60 = v58;
        v61 = v50;
        v62 = v52;
        do
        {
          v63 = (v57 + 2 * v59);
          v64 = (v63[1] >> v45) - v21;
          v65 = v142 * v64;
          v66 = v22 * ((*v60 >> v45) - v20);
          v67 = (v142 * v64) + v66;
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = (v142 * v64) + v66;
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = (*v63 >> v45) - v21;
          v70 = (v23 * v64) + (v69 * v141);
          v71 = 8191.0;
          if ((v66 + v70) <= 8191.0)
          {
            v71 = v66 + v70;
            if ((v66 + v70) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v24 * v69;
          v73 = (v24 * v69) + v66;
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = (v60[1] >> v45) - v20;
          v76 = v22 * v75;
          v77 = v65 + (v22 * v75);
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = 8191.0;
          if ((v70 + v76) <= 8191.0)
          {
            v79 = v70 + v76;
            if ((v70 + v76) < 0.0)
            {
              v79 = 0.0;
            }
          }

          v80 = v72 + v76;
          v81 = (v72 + v76) <= 8191.0;
          v82 = 8191.0;
          if (v81)
          {
            v82 = v80;
            if (v80 < 0.0)
            {
              v82 = 0.0;
            }
          }

          if (v62)
          {
            LOWORD(v75) = *v62;
            LOWORD(v70) = v62[1];
            v62 += 2;
            v83 = LODWORD(v75) * 0.0038911;
            v84 = LODWORD(v70) * 0.0038911;
          }

          else
          {
            v83 = 0.0;
            v84 = 0.0;
          }

          _S4 = fmaxf(v68, 0.0);
          v86 = 8191.0;
          LOWORD(_S4) = *(v33 + 2 * llroundf(fminf(_S4, 8191.0)));
          __asm { FCVT            S13, H4 }

          LOWORD(_S4) = *(v33 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S9, H4 }

          LOWORD(_S4) = *(v33 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S10, H4 }

          _H11 = *(v33 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H12 = *(v33 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H14 = *(v33 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          v96 = (((v38 * _S9) + (v37 * _S13)) + (v39 * _S10)) + (v40 * fmaxf(_S13, fmaxf(_S9, _S10)));
          v97 = 8191.0;
          if (v96 <= 8191.0)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          __asm
          {
            FCVT            S11, H11
            FCVT            S12, H12
            FCVT            S14, H14
          }

          _H15 = *(v34 + 2 * llroundf(v97));
          v102 = fmaxf(_S11, fmaxf(_S12, _S14));
          v103 = (((v38 * _S12) + (v37 * _S11)) + (v39 * _S14)) + (v40 * v102);
          if (v103 <= 8191.0)
          {
            v86 = (((v38 * _S12) + (v37 * _S11)) + (v39 * _S14)) + (v40 * v102);
            if (v103 < 0.0)
            {
              v86 = 0.0;
            }
          }

          __asm { FCVT            S4, H15 }

          v105 = _S13 * _S4;
          v106 = _S9 * _S4;
          v107 = _S10 * _S4;
          _H8 = *(v34 + 2 * llroundf(v86));
          __asm { FCVT            S8, H8 }

          v110 = _S11 * _S8;
          v111 = _S12 * _S8;
          v112 = _S14 * _S8;
          v113 = ((v26 * v106) + (v105 * v25)) + (v107 * v27);
          v114 = ((v29 * v106) + (v105 * v28)) + (v107 * v30);
          v115 = ((v32 * v106) + (v105 * v31)) + (v107 * v36);
          v116 = ((v26 * v111) + (v110 * v25)) + (v112 * v27);
          v117 = ((v29 * v111) + (v110 * v28)) + (v112 * v30);
          v118 = ((v32 * v111) + (v110 * v31)) + (v112 * v36);
          v119 = *(v35 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          v120 = *(v35 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          v121 = *(v35 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          v122 = *(v35 + 2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0)));
          v123 = *(v35 + 2 * llroundf(fminf(fmaxf(v117, 0.0), 8191.0)));
          v124 = *(v35 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          v125 = llroundf(v83);
          if (!v62)
          {
            v125 = -1;
          }

          v126 = llroundf(v84);
          if (!v62)
          {
            v126 = -1;
          }

          if (v119 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H13, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H13 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v61 + v49) = llroundf(_S31);
          if (v120 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H12 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v61 + v48) = llroundf(_S31);
          if (v121 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H11 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v61 + v47) = llroundf(_S31);
          *(v61 + v46) = v125;
          if (v122 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H10 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          v135 = v61 + 4;
          *(v61 + 4 + v49) = llroundf(_S31);
          if (v123 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H9, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H9 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v135 + v48) = llroundf(_S31);
          if (v124 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H8 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          *(v135 + v47) = llroundf(_S30);
          *(v135 + v46) = v126;
          v61 += 8;
          v59 += 2;
          v60 += 2;
        }

        while (v59 < v11);
      }

      v58 += v14;
      v57 += v15;
      v52 += v16;
      v50 += v17;
      ++v9;
    }

    while (v9 != result);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, int16x8_t _Q0)
{
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 36);
  v9 = *(a1 + 24);
  v10 = *a1;
  v11 = *(a1 + 28) * a2 / v10 + *(a1 + 44);
  v12 = *(a1 + 13);
  v192 = *(a1 + 14);
  v13 = v12 * a2;
  v14 = *(a1 + 19);
  v16 = *(a1 + 7);
  v15 = *(a1 + 8);
  v190 = *v15;
  v191 = *v16;
  v17 = v16[1];
  v18 = v16[2];
  v19 = **(a1 + 17);
  v20 = v12 * a2 / v10;
  v21 = v20 + *(a1 + 15);
  v187 = **(a1 + 16);
  v188 = v15[2];
  v22 = v12 + v13;
  v189 = v15[1];
  v23 = v19 * v21;
  v24 = v14[16].u32[0];
  v25 = v14[19].u8[6];
  v209[0] = v14[19].i8[6];
  v26 = v14[19].u8[7];
  v209[1] = v14[19].i8[7];
  v27 = v14[20].u8[0];
  v209[2] = v14[20].i8[0];
  v28 = v14[20].u8[1];
  v209[3] = v14[20].i8[1];
  v29 = v14[17].u16[2];
  v30 = v14[15].u8[4];
  v31 = v14[17].u16[3];
  v32 = v14->f32[0];
  v3.i32[0] = v14[1].i32[0];
  v33 = v14[2];
  v34.i32[0] = v14[3].i32[1];
  _Q0.i32[0] = v14[9].i32[0];
  _S1 = v14[9].f32[1];
  _S2 = v14[10].f32[0];
  _S3 = v14[10].f32[1];
  _S4 = v14[11].f32[0];
  _S5 = v14[11].f32[1];
  _S6 = v14[12].f32[0];
  _S7 = v14[12].f32[1];
  _S16 = v14[13].f32[0];
  v207 = 0u;
  v208 = 0u;
  v43 = v22 / v10;
  result = v209;
  do
  {
    v45 = 0;
    v46 = v209[v7];
    do
    {
      *((&v207 + ((v46 + 4 * v45) & 0xF8)) | (v46 + 4 * v45) & 7) = v6 + v45;
      ++v45;
    }

    while (v45 != 8);
    ++v7;
    v6 += 8;
  }

  while (v7 != 4);
  v47 = v43 - v20;
  if (v43 - v20 >= 1)
  {
    v48 = 0;
    v4.f32[0] = v24;
    v49 = &v14[20] + 4;
    v50 = v9 & 0xFFFFFFFE;
    v51 = &v14[2068] + 4;
    v52 = v29;
    v53 = v31;
    v4.f32[0] = 8191.0 / v4.f32[0];
    _S20 = v4.f32[0] * v32;
    __asm { FCVT            H8, S20 }

    *v5.i16 = v29;
    v60 = -v31;
    v34.i32[1] = v3.i32[0];
    *v3.f32 = vmul_n_f32(v34, v4.f32[0]);
    *v4.f32 = vmul_n_f32(v33, v4.f32[0]);
    v205 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v206 = vdupq_lane_s16(v5, 0);
    v203 = vmulq_n_f16(v205, v60);
    v204 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v61 = vmulq_n_f16(v204, v60);
    __asm { FCVT            H9, S0 }

    v201 = _H9;
    v202 = v61;
    __asm { FCVT            H9, S1 }

    v200 = _H9;
    __asm { FCVT            H9, S2 }

    v199 = _H9;
    __asm { FCVT            H9, S3 }

    v198 = _H9;
    __asm { FCVT            H9, S4 }

    v197 = _H9;
    __asm { FCVT            H9, S5 }

    v196 = _H9;
    __asm { FCVT            H9, S6 }

    v195 = _H9;
    __asm { FCVT            H9, S7 }

    v194 = _H9;
    __asm { FCVT            H9, S16 }

    v193 = _H9;
    v71 = 16 - v30;
    if (v30 >= 0x11)
    {
      v71 = 0;
    }

    v72 = v187 + v23 + 4 * v192;
    if (v18)
    {
      v73 = v18 + v188 * v11 + 2 * v8;
    }

    else
    {
      v73 = 0;
    }

    if (v17)
    {
      v74 = v17 + v189 * v11 + 2 * v8;
    }

    else
    {
      v74 = 0;
    }

    result = v191 + v190 * v11;
    v75 = (result + 2 * v8);
    v76 = v71;
    v77 = vdupq_n_s16(-v71);
    v78 = v3.i64[0];
    v79 = v4.i64[0];
    v185 = v26 + 4;
    v186 = v27 + 4;
    v183 = v28 + 4;
    v184 = v25 + 4;
    v80.i64[0] = 0x9000900090009000;
    v80.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v116 = 0;
        v87 = v74;
        v86 = v73;
        v85 = v72;
        v84 = v75;
      }

      else
      {
        v81 = 0;
        v83 = *(&v207 + 8);
        v82 = v207;
        v84 = v75;
        v85 = v72;
        v86 = v73;
        v87 = v74;
        v88 = *(&v208 + 8);
        v89 = v208;
        do
        {
          if (v86 && (v90 = *v86, v86 += 16, v91 = v90, v86))
          {
            *v92.i8 = vzip1_s16(*v91.i8, 0);
            v92.u64[1] = vzip2_s16(*v91.i8, 0);
            v93 = vextq_s8(v91, v91, 8uLL).u64[0];
            *v94.i8 = vzip1_s16(v93, 0);
            v94.u64[1] = vzip2_s16(v93, 0);
            v95 = vcvtq_f32_u32(v94);
            v96 = vdupq_n_s32(0x3B7F00FFu);
            v97 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v92), v96)), vcvtq_u32_f32(vmulq_f32(v95, v96))));
          }

          else
          {
            v97 = -1;
          }

          v98 = *v87++;
          v99 = vcvtq_f16_u16(vshlq_u16(v98, v77));
          v210.val[1] = vmlaq_f16(v203, v205, v99);
          v100 = vmlaq_f16(v202, v204, v99);
          v101 = vuzp1q_s16(v100, _Q0);
          *v101.i8 = vadd_f16(*v101.i8, *&vuzp2q_s16(v100, _Q0));
          v102 = vzip1q_s16(v101, v101);
          v103 = *v84++;
          v104 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v103, v77)), v206);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v210.val[1], v210.val[1]), v104, _H8), 0), v80));
          v106.i16[0] = *&v49[2 * v105.u16[0]];
          v106.i16[1] = *&v49[2 * v105.u16[1]];
          v106.i16[2] = *&v49[2 * v105.u16[2]];
          v106.i16[3] = *&v49[2 * v105.u16[3]];
          v106.i16[4] = *&v49[2 * v105.u16[4]];
          v106.i16[5] = *&v49[2 * v105.u16[5]];
          v106.i16[6] = *&v49[2 * v105.u16[6]];
          v106.i16[7] = *&v49[2 * v105.u16[7]];
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v102, v104, _H8), 0), v80));
          v102.i16[0] = *&v49[2 * v107.u16[0]];
          v102.i16[1] = *&v49[2 * v107.u16[1]];
          v102.i16[2] = *&v49[2 * v107.u16[2]];
          v102.i16[3] = *&v49[2 * v107.u16[3]];
          v102.i16[4] = *&v49[2 * v107.u16[4]];
          v102.i16[5] = *&v49[2 * v107.u16[5]];
          v102.i16[6] = *&v49[2 * v107.u16[6]];
          v102.i16[7] = *&v49[2 * v107.u16[7]];
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v210.val[1], v210.val[1]), v104, _H8), 0), v80));
          v210.val[1].i16[0] = *&v49[2 * v108.u16[0]];
          v210.val[1].i16[1] = *&v49[2 * v108.u16[1]];
          v210.val[1].i16[2] = *&v49[2 * v108.u16[2]];
          v210.val[1].i16[3] = *&v49[2 * v108.u16[3]];
          v210.val[1].i16[4] = *&v49[2 * v108.u16[4]];
          v210.val[1].i16[5] = *&v49[2 * v108.u16[5]];
          v210.val[1].i16[6] = *&v49[2 * v108.u16[6]];
          v210.val[1].i16[7] = *&v49[2 * v108.u16[7]];
          v109 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v198), v102, v197), v210.val[1], v196);
          v110 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v210.val[1], v193), v102, v194), v106, v195);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v201), v102, v200), v210.val[1], v199), 0), v80));
          v106.i16[0] = *&v51[2 * v111.u16[0]];
          v106.i16[1] = *&v51[2 * v111.u16[1]];
          v106.i16[2] = *&v51[2 * v111.u16[2]];
          v106.i16[3] = *&v51[2 * v111.u16[3]];
          v106.i16[4] = *&v51[2 * v111.u16[4]];
          v106.i16[5] = *&v51[2 * v111.u16[5]];
          v106.i16[6] = *&v51[2 * v111.u16[6]];
          v106.i16[7] = *&v51[2 * v111.u16[7]];
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v80));
          v111.i16[0] = *&v51[2 * v112.u16[0]];
          v111.i16[1] = *&v51[2 * v112.u16[1]];
          v111.i16[2] = *&v51[2 * v112.u16[2]];
          v111.i16[3] = *&v51[2 * v112.u16[3]];
          v111.i16[4] = *&v51[2 * v112.u16[4]];
          v111.i16[5] = *&v51[2 * v112.u16[5]];
          v111.i16[6] = *&v51[2 * v112.u16[6]];
          v111.i16[7] = *&v51[2 * v112.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v80));
          v112.i16[0] = *&v51[2 * v113.u16[0]];
          result = &v51[2 * v113.u16[4]];
          v112.i16[1] = *&v51[2 * v113.u16[1]];
          v112.i16[2] = *&v51[2 * v113.u16[2]];
          v112.i16[3] = *&v51[2 * v113.u16[3]];
          v112.i16[4] = *result;
          v112.i16[5] = *&v51[2 * v113.u16[5]];
          v112.i16[6] = *&v51[2 * v113.u16[6]];
          v112.i16[7] = *&v51[2 * v113.u16[7]];
          v114 = vmaxq_f16(v106, 0);
          v115 = vdupq_n_s16(0x5BF8u);
          *v210.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v115)));
          v210.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(v114, v115)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v111, 0), v115)));
          v210.val[1].u64[1] = v97;
          *v114.i8 = vqtbl2_s8(v210, v82);
          v114.u64[1] = vqtbl2_s8(v210, v83);
          *v111.i8 = vqtbl2_s8(v210, v89);
          v111.u64[1] = vqtbl2_s8(v210, v88);
          *v85 = v114;
          v85[1] = v111;
          v85 += 2;
          v81 += 8;
        }

        while (v81 < v9 - 7);
        v116 = v9 & 0xFFFFFFF8;
      }

      if (v116 < v50)
      {
        v117 = v85 + v186;
        v118 = v85 + v185;
        v119 = v85 + v184;
        v120 = v85 + v183;
        do
        {
          v121 = (v87->u16[1] >> v76) - v53;
          v122 = *(&v78 + 1) * v121;
          v123 = _S20 * ((v84->u16[0] >> v76) - v52);
          v124 = (*(&v78 + 1) * v121) + v123;
          v125 = 8191.0;
          if (v124 <= 8191.0)
          {
            v125 = (*(&v78 + 1) * v121) + v123;
            if (v124 < 0.0)
            {
              v125 = 0.0;
            }
          }

          v126 = (v87->u16[0] >> v76) - v53;
          HIWORD(v127) = HIWORD(v79);
          v128 = (*(&v79 + 1) * v121) + (v126 * *&v79);
          v129 = 8191.0;
          if ((v123 + v128) <= 8191.0)
          {
            v129 = v123 + v128;
            if ((v123 + v128) < 0.0)
            {
              v129 = 0.0;
            }
          }

          v130 = *&v78 * v126;
          v131 = (*&v78 * v126) + v123;
          v132 = 8191.0;
          if (v131 <= 8191.0)
          {
            v132 = v131;
            if (v131 < 0.0)
            {
              v132 = 0.0;
            }
          }

          v133 = _S20 * ((v84->u16[1] >> v76) - v52);
          v134 = v122 + v133;
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = v134;
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          v136 = 8191.0;
          if ((v128 + v133) <= 8191.0)
          {
            v136 = v128 + v133;
            if ((v128 + v133) < 0.0)
            {
              v136 = 0.0;
            }
          }

          v137 = v130 + v133;
          v138 = (v130 + v133) <= 8191.0;
          v139 = 8191.0;
          if (v138)
          {
            v139 = v137;
            if (v137 < 0.0)
            {
              v139 = 0.0;
            }
          }

          if (v86)
          {
            LOWORD(v137) = *v86;
            LOWORD(v127) = *(v86 + 2);
            v86 += 4;
            v140 = LODWORD(v137) * 0.0038911;
            v141 = v127 * 0.0038911;
          }

          else
          {
            v140 = 0.0;
            v141 = 0.0;
          }

          _H9 = *&v49[2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0))];
          v143 = llroundf(fminf(fmaxf(v129, 0.0), 8191.0));
          __asm { FCVT            S24, H9 }

          _H9 = *&v49[2 * v143];
          __asm { FCVT            S9, H9 }

          _H25 = *&v49[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
          __asm { FCVT            S25, H25 }

          _H27 = *&v49[2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0))];
          __asm { FCVT            S27, H27 }

          _H12 = *&v49[2 * llroundf(fminf(fmaxf(v136, 0.0), 8191.0))];
          _H13 = *&v49[2 * llroundf(fminf(fmaxf(v139, 0.0), 8191.0))];
          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
          }

          v155 = ((_S1 * _S9) + (_S24 * *_Q0.i32)) + (_S25 * _S2);
          v156 = ((_S4 * _S9) + (_S24 * _S3)) + (_S25 * _S5);
          v157 = ((_S7 * _S9) + (_S24 * _S6)) + (_S25 * _S16);
          v158 = ((_S1 * _S12) + (_S27 * *_Q0.i32)) + (_S13 * _S2);
          v159 = ((_S4 * _S12) + (_S27 * _S3)) + (_S13 * _S5);
          v160 = ((_S7 * _S12) + (_S27 * _S6)) + (_S13 * _S16);
          v161 = *&v51[2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0))];
          v162 = *&v51[2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0))];
          v163 = *&v51[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
          v164 = *&v51[2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0))];
          v165 = *&v51[2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
          v166 = *&v51[2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0))];
          v167 = llroundf(v140);
          if (v86)
          {
            result = v167;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          v168 = llroundf(v141);
          if (!v86)
          {
            v168 = -1;
          }

          if (v161 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H14, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H14 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *(v119 - 4) = llroundf(_S26);
          if (v162 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H13, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H13 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *(v118 - 4) = llroundf(_S26);
          if (v163 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H12 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *(v117 - 4) = llroundf(_S26);
          *(v120 - 4) = result;
          if (v164 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H27 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *v119 = llroundf(_S26);
          if (v165 <= COERCE_SHORT_FLOAT(23544))
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

          *v118 = llroundf(_S25);
          if (v166 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H23, #0 }

            if (_NF)
            {
              _S23 = 0.0;
            }

            else
            {
              __asm { FCVT            S23, H23 }
            }
          }

          else
          {
            _S23 = 255.0;
          }

          *v117 = llroundf(_S23);
          v117 += 8;
          *v120 = v168;
          v120 += 8;
          v116 += 2;
          v118 += 8;
          v119 += 8;
          v87 = (v87 + 4);
          v84 = (v84 + 4);
        }

        while (v116 < v50);
      }

      v75 = (v75 + v190);
      v74 += v189;
      v73 += v188;
      v72 += v19;
      ++v48;
    }

    while (v48 != v47);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v23 = v19 * *(v10 + 8);
    v24 = v19 * *(v10 + 16);
    v25 = v19 * *(v10 + 20);
    v26 = v19 * *(v10 + 28);
    v27 = *(v10 + 72);
    v28 = *(v10 + 76);
    v29 = *(v10 + 80);
    v30 = *(v10 + 84);
    v31 = *(v10 + 88);
    v32 = *(v10 + 92);
    v33 = *(v10 + 96);
    v34 = *(v10 + 100);
    v35 = *(v10 + 104);
    v36 = v10 + 164;
    v37 = v10 + 16548;
    v38 = v7 + *(result + 15);
    v39 = *(result + 28) * a2 / v5 + *(result + 44);
    v40 = *(result + 36);
    v41 = *(v10 + 124);
    if (v41 >= 0x11)
    {
      v42 = 0;
    }

    else
    {
      v42 = 16 - v41;
    }

    v43 = *(v10 + 161);
    v44 = *(v10 + 160);
    v45 = *(v10 + 159);
    v46 = *(v10 + 158);
    v47 = **(result + 16) + v17 * v38 + 4 * *(result + 14);
    v48 = v12[2];
    if (v48)
    {
      v49 = v48 + v39 * v16 + 2 * v40;
    }

    else
    {
      v49 = 0;
    }

    v51 = *v12;
    v50 = v12[1];
    v52 = v50 + v39 * v15 + 2 * v40;
    if (!v50)
    {
      v52 = 0;
    }

    v53 = v51 + v39 * v14 + 2 * v40;
    do
    {
      if (v11 >= 1)
      {
        v54 = 0;
        v55 = v53;
        v56 = v47;
        v57 = v49;
        do
        {
          v58 = (v52 + 2 * v54);
          v59 = (v58[1] >> v42) - v21;
          v60 = v23 * v59;
          v61 = v22 * ((*v55 >> v42) - v20);
          v62 = (v23 * v59) + v61;
          v63 = 8191.0;
          if (v62 <= 8191.0)
          {
            v63 = (v23 * v59) + v61;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = (*v58 >> v42) - v21;
          v65 = (v25 * v59) + (v64 * v24);
          v66 = 8191.0;
          if ((v61 + v65) <= 8191.0)
          {
            v66 = v61 + v65;
            if ((v61 + v65) < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = v26 * v64;
          v68 = (v26 * v64) + v61;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = v68;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v22 * ((v55[1] >> v42) - v20);
          v71 = v60 + v70;
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = 8191.0;
          if ((v65 + v70) <= 8191.0)
          {
            v73 = v65 + v70;
            if ((v65 + v70) < 0.0)
            {
              v73 = 0.0;
            }
          }

          v74 = v67 + v70;
          v75 = (v67 + v70) <= 8191.0;
          v76 = 8191.0;
          if (v75)
          {
            v76 = v74;
            if (v74 < 0.0)
            {
              v76 = 0.0;
            }
          }

          if (v57)
          {
            LOWORD(v74) = *v57;
            LOWORD(v65) = v57[1];
            v57 += 2;
            v77 = LODWORD(v74) * 0.0038911;
            v78 = LODWORD(v65) * 0.0038911;
          }

          else
          {
            v77 = 0.0;
            v78 = 0.0;
          }

          _H26 = *(v36 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H30 = *(v36 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm
          {
            FCVT            S8, H8
            FCVT            S9, H9
          }

          v95 = ((v28 * _S27) + (_S26 * v27)) + (_S28 * v29);
          v96 = ((v31 * _S27) + (_S26 * v30)) + (_S28 * v32);
          v97 = ((v34 * _S27) + (_S26 * v33)) + (_S28 * v35);
          v98 = ((v28 * _S8) + (_S30 * v27)) + (_S9 * v29);
          v99 = ((v31 * _S8) + (_S30 * v30)) + (_S9 * v32);
          v100 = ((v34 * _S8) + (_S30 * v33)) + (_S9 * v35);
          v101 = *(v37 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v102 = *(v37 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          v103 = *(v37 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v104 = *(v37 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          v105 = *(v37 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          v106 = *(v37 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          v107 = llroundf(v77);
          if (v57)
          {
            v108 = v107;
          }

          else
          {
            v108 = -1;
          }

          v109 = llroundf(v78);
          if (!v57)
          {
            v109 = -1;
          }

          if (v101 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H10 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          *(v56 + v46) = llroundf(_S29);
          if (v102 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H9, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H9 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          *(v56 + v45) = llroundf(_S29);
          if (v103 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H8 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          *(v56 + v44) = llroundf(_S29);
          *(v56 + v43) = v108;
          if (v104 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S29 = 0.0;
            }

            else
            {
              __asm { FCVT            S29, H30 }
            }
          }

          else
          {
            _S29 = 255.0;
          }

          v118 = v56 + 4;
          *(v56 + 4 + v46) = llroundf(_S29);
          if (v105 <= COERCE_SHORT_FLOAT(23544))
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

          *(v118 + v45) = llroundf(_S28);
          if (v106 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H26, #0 }

            if (_NF)
            {
              _S26 = 0.0;
            }

            else
            {
              __asm { FCVT            S26, H26 }
            }
          }

          else
          {
            _S26 = 255.0;
          }

          *(v118 + v44) = llroundf(_S26);
          *(v118 + v43) = v109;
          v56 += 8;
          v54 += 2;
          v55 += 2;
        }

        while (v54 < v11);
      }

      v53 += v14;
      v52 += v15;
      v49 += v16;
      v47 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

uint64_t vt_Copy_xf422_rgb_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, int16x4_t a6, double a7, float32x4_t a8, double a9, float32x4_t a10)
{
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 24);
  v15 = *a1;
  v16 = *(a1 + 28) * a2 / v15 + *(a1 + 44);
  v17 = *(a1 + 13);
  v131 = *(a1 + 14);
  v133 = *(a1 + 36);
  v18 = *(a1 + 19);
  v20 = *(a1 + 7);
  v19 = *(a1 + 8);
  v21 = v17 * a2 / v15;
  v22 = v17 + v17 * a2;
  v23 = *v19;
  v24 = v19[1];
  v25 = v19[2];
  v26 = *v20;
  v27 = v20[1];
  v28 = v20[2];
  v29 = **(a1 + 17);
  v128 = **(a1 + 16);
  v127 = v29 * (v21 + *(a1 + 15));
  v30 = *(v18 + 128);
  v31 = *(v18 + 136);
  result = *(v18 + 158);
  v136[0] = *(v18 + 158);
  v33 = *(v18 + 159);
  v136[1] = *(v18 + 159);
  v34 = *(v18 + 160);
  v136[2] = *(v18 + 160);
  v35 = *(v18 + 161);
  v136[3] = *(v18 + 161);
  v36 = *(v18 + 140);
  v37 = *(v18 + 124);
  v38 = *v18;
  v39 = *(v18 + 8);
  a10.i64[0] = *(v18 + 16);
  a8.i32[0] = *(v18 + 28);
  v40 = *(v18 + 142);
  v41.i32[1] = 0;
  v41.i64[1] = 0;
  v134 = 0u;
  v135 = 0u;
  v42 = v22 / v15;
  do
  {
    v43 = 0;
    v44 = v136[v13];
    do
    {
      *((&v134 + ((v44 + 4 * v43) & 0xF8)) | (v44 + 4 * v43) & 7) = v12 + v43;
      ++v43;
    }

    while (v43 != 8);
    ++v13;
    v12 += 8;
  }

  while (v13 != 4);
  v45 = v42 - v21;
  if (v42 - v21 >= 1)
  {
    v46 = 0;
    v47 = v30;
    v48 = v14 & 0xFFFFFFFE;
    v49 = v31 / v47;
    *v41.i32 = v36;
    v50 = v40;
    _S2 = v49 * v38;
    *a6.i16 = v36;
    v52 = vdupq_lane_s16(a6, 0);
    __asm { FCVT            H4, S2 }

    a8.i32[1] = v39;
    *a8.f32 = vmul_n_f32(*a8.f32, v49);
    v58 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    *a10.f32 = vmul_n_f32(*a10.f32, v49);
    v59 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v60 = -v40;
    v61 = vmulq_n_f16(v58, v60);
    v62 = vmulq_n_f16(v59, v60);
    if (v37 >= 0x11)
    {
      v63 = 0;
    }

    else
    {
      v63 = 16 - v37;
    }

    v64 = v128 + v127 + 4 * v131;
    if (v28)
    {
      v65 = v28 + v25 * v16 + 2 * v133;
    }

    else
    {
      v65 = 0;
    }

    if (v27)
    {
      v66 = v27 + v24 * v16 + 2 * v133;
    }

    else
    {
      v66 = 0;
    }

    v67 = v26 + v23 * v16 + 2 * v133;
    v68 = vdupq_n_s16(-v63);
    v130 = v33 + 4;
    v132 = v34 + 4;
    v129 = (result + 4);
    v69 = vdupq_n_s32(0x3B7F00FFu);
    do
    {
      if (v14 < 8)
      {
        v95 = 0;
        v73 = v66;
        v72 = v65;
        result = v64;
        v71 = v67;
      }

      else
      {
        v70 = 0;
        v11 = *(&v134 + 8);
        v10 = v134;
        v71 = v67;
        result = v64;
        v72 = v65;
        v73 = v66;
        v75 = *(&v135 + 8);
        v74 = v135;
        do
        {
          if (v72)
          {
            v76 = *v72++;
            *v77.i8 = vzip1_s16(*v76.i8, 0);
            v77.u64[1] = vzip2_s16(*v76.i8, 0);
            v78 = vextq_s8(v76, v76, 8uLL).u64[0];
            *v79.i8 = vzip1_s16(v78, 0);
            v79.u64[1] = vzip2_s16(v78, 0);
            v80 = vmovn_s16(vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v77), v69)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_u32(v79), v69))));
          }

          else
          {
            v80 = -1;
          }

          v81 = *v73++;
          v82 = vcvtq_f16_u16(vshlq_u16(v81, v68));
          v83 = vmlaq_f16(v61, v58, v82);
          v84 = vmlaq_f16(v62, v59, v82);
          v85 = vtrn2q_s16(v83, v83);
          v86 = vuzp1q_s16(v84, v41).u64[0];
          v87 = vuzp2q_s16(v84, v41);
          *v87.i8 = vadd_f16(v86, *v87.i8);
          v88 = *v71++;
          v89 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v88, v68)), v52);
          v90 = vmlaq_n_f16(vzip1q_s16(v87, v87), v89, _H4);
          v91 = vmlaq_n_f16(vtrn1q_s16(v83, v83), v89, _H4);
          v92 = vmaxq_f16(vmlaq_n_f16(v85, v89, _H4), 0);
          v93 = vdupq_n_s16(0x5BF8u);
          *v137.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v93)));
          v137.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(v92, v93)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v90, 0), v93)));
          v137.val[1].u64[1] = v80;
          *&v94 = vqtbl2_s8(v137, v10);
          *(&v94 + 1) = vqtbl2_s8(v137, v11);
          *v92.i8 = vqtbl2_s8(v137, v74);
          v92.u64[1] = vqtbl2_s8(v137, v75);
          *result = v94;
          *(result + 16) = v92;
          result += 32;
          v70 += 8;
        }

        while (v70 < v14 - 7);
        v95 = v14 & 0xFFFFFFF8;
      }

      if (v95 < v48)
      {
        v96 = (result + v132);
        v97 = (result + v130);
        v98 = &v129[result];
        result += v35 + 4;
        do
        {
          if (v72)
          {
            v10.i16[0] = v72->i16[0];
            v11.i16[0] = v72->i16[1];
            v72 = (v72 + 4);
            v99 = v10.u32[0] * 0.0038911;
            v100 = v11.u32[0] * 0.0038911;
          }

          else
          {
            v99 = 0.0;
            v100 = 0.0;
          }

          v101 = (v73->u16[0] >> v63) - v50;
          v102 = (v73->u16[1] >> v63) - v50;
          v103 = a8.f32[1] * v102;
          v104 = (a10.f32[1] * v102) + (v101 * a10.f32[0]);
          v105 = _S2 * ((v71->u16[0] >> v63) - *v41.i32);
          v106 = v71->u16[1];
          v107 = v103 + v105;
          v108 = v105 + v104;
          v109 = llroundf(v99);
          if (v72)
          {
            v110 = v109;
          }

          else
          {
            v110 = -1;
          }

          v111 = llroundf(v100);
          if (!v72)
          {
            v111 = -1;
          }

          v112 = 255.0;
          if (v107 < 0.0)
          {
            v113 = 0.0;
          }

          else
          {
            v113 = v103 + v105;
          }

          if (v107 <= 255.0)
          {
            v112 = v113;
          }

          *(v98 - 4) = llroundf(v112);
          v114 = 255.0;
          if (v108 <= 255.0)
          {
            v114 = v105 + v104;
            if (v108 < 0.0)
            {
              v114 = 0.0;
            }
          }

          v115 = a8.f32[0] * v101;
          v116 = _S2 * ((v106 >> v63) - *v41.i32);
          v117 = v115 + v105;
          v118 = v103 + v116;
          v119 = v104 + v116;
          *(v97 - 4) = llroundf(v114);
          v120 = 255.0;
          if (v117 < 0.0)
          {
            v121 = 0.0;
          }

          else
          {
            v121 = v117;
          }

          if (v117 <= 255.0)
          {
            v122 = v121;
          }

          else
          {
            v122 = 255.0;
          }

          *(v96 - 4) = llroundf(v122);
          *(result - 4) = v110;
          if (v118 < 0.0)
          {
            v123 = 0.0;
          }

          else
          {
            v123 = v118;
          }

          if (v118 <= 255.0)
          {
            v120 = v123;
          }

          *v98 = llroundf(v120);
          v124 = 255.0;
          if (v119 <= 255.0)
          {
            v124 = v119;
            if (v119 < 0.0)
            {
              v124 = 0.0;
            }
          }

          *v11.i32 = v115 + v116;
          *v97 = llroundf(v124);
          v10.i32[0] = 1132396544;
          if (*v11.i32 <= 255.0)
          {
            v10.i32[0] = v11.i32[0];
            if (*v11.i32 < 0.0)
            {
              v10.i32[0] = 0;
            }
          }

          *v96 = llroundf(*v10.i32);
          v96 += 8;
          *result = v111;
          result += 8;
          v95 += 2;
          v97 += 8;
          v98 += 8;
          v73 = (v73 + 4);
          v71 = (v71 + 4);
        }

        while (v95 < v48);
      }

      v67 += v23;
      v66 += v24;
      v65 += v25;
      v64 += v29;
      ++v46;
    }

    while (v46 != v45);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_BGRA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v64 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v61 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v65 = a6[1];
  v66 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v59 = a1;
  v60 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v67 = v16;
  v68 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v57 - v25);
    bzero(&v57 - v25, v26);
  }

  v58 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v64;
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (4 * (v31 + v28) + 4) > *v62)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v67;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v64;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v67)
  {
    v28 = v67 - v31;
  }

  if (v15 + v61 <= v66)
  {
    v36 = v61;
  }

  else
  {
    v36 = v66 - v15;
  }

  if (v68 + v60 <= v65)
  {
    v37 = v60;
  }

  else
  {
    v37 = v65 - v68;
  }

  if (v29 >= v28)
  {
    v38 = v28;
  }

  else
  {
    v38 = v29;
  }

  if (v36 >= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v36;
  }

  v40 = v15 + v39 - 1;
  v41 = v38 + v30;
  if ((*v32 * v40 + 2 * (v38 + v30)) <= *v69)
  {
    v46 = v63;
    if (*(v63 + 8) && v32[1] * v40 + 4 * ((v41 + 1 + ((v41 + 1) >> 63)) >> 1) > v69[1])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else if (*(v63 + 16) && (2 * v41 + v32[2] * v40) > v69[2])
    {
      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }

    else
    {
      if ((*v62 * (v68 + v39 - 1) + 4 * (v38 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v61 = v30;
      v42 = v10;
      v43 = v12;
      v44 = v15;
      v45 = a9;
    }
  }

  else
  {
    v61 = v30;
    v42 = v10;
    v43 = v12;
    v44 = v15;
    v45 = a9;
  }

  fig_log_get_emitter();
  v47 = FigSignalErrorAtGM();
  v46 = v63;
  v32 = v64;
  v27 = v45;
  v15 = v44;
  v12 = v43;
  v10 = v42;
  v30 = v61;
  if (v47)
  {
    v24 = v47;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v48 = v65;
  *(v23 + 12) = v66;
  *(v23 + 20) = v38;
  *(v23 + 28) = v39;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v48;
  v23[12] = v38;
  v23[13] = v39;
  v23[14] = v31;
  v23[7] = v46;
  v23[8] = v32;
  v49 = v67;
  v50 = v68;
  v23[9] = v69;
  v23[10] = v49;
  v51 = v58;
  v23[15] = v50;
  v23[16] = v51;
  v23[17] = v62;
  v23[18] = v27;
  v23[19] = v59;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_BGRA_GCD);
  if (!v10)
  {
    return 0;
  }

  v53 = (v23 + 20);
  v54 = v10;
  while (1)
  {
    v55 = *v53++;
    v24 = v55;
    if (v55)
    {
      break;
    }

    if (!--v54)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 19);
    v10 = *(result + 24) & 0xFFFFFFFE;
    v11 = *(result + 7);
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = **(result + 17);
    *&v17 = *(v9 + 128);
    *&v18 = *(v9 + 136);
    v19 = *&v18 / *&v17;
    LOWORD(v17) = *(v9 + 140);
    v20 = v17;
    LOWORD(v18) = *(v9 + 142);
    v21 = v18;
    v22 = v19 * *v9;
    v23 = v19 * *(v9 + 8);
    v24 = v19 * *(v9 + 16);
    v25 = v19 * *(v9 + 20);
    v26 = v19 * *(v9 + 28);
    v27 = v6 + *(result + 15);
    v28 = *(result + 28) * a2 / v4 + *(result + 44);
    v29 = *(result + 36);
    v30 = *(v9 + 124);
    if (v30 >= 0x11)
    {
      v31 = 0;
    }

    else
    {
      v31 = 16 - v30;
    }

    v32 = *(v9 + 161);
    v33 = *(v9 + 160);
    v34 = *(v9 + 159);
    v35 = *(v9 + 158);
    v36 = **(result + 16) + v16 * v27 + 4 * *(result + 14);
    v37 = v11[2];
    if (v37)
    {
      v38 = v37 + v28 * v15 + 2 * v29;
    }

    else
    {
      v38 = 0;
    }

    v40 = *v11;
    v39 = v11[1];
    v41 = v39 + v28 * v14 + 2 * v29;
    if (!v39)
    {
      v41 = 0;
    }

    v42 = v40 + v28 * v13 + 2 * v29;
    v43 = v31;
    do
    {
      if (v10 >= 1)
      {
        v44 = 0;
        v45 = v42;
        v46 = v36;
        v47 = v38;
        do
        {
          if (v47)
          {
            LOWORD(v2) = *v47;
            LOWORD(v3) = v47[1];
            v47 += 2;
            v48 = LODWORD(v2) * 0.0038911;
            v49 = LODWORD(v3) * 0.0038911;
          }

          else
          {
            v48 = 0.0;
            v49 = 0.0;
          }

          v50 = (v41 + 2 * v44);
          v51 = (*v50 >> v43) - v21;
          v52 = (v50[1] >> v43) - v21;
          v53 = v23 * v52;
          v54 = (v25 * v52) + (v51 * v24);
          v55 = v22 * ((*v45 >> v43) - v20);
          v56 = v45[1];
          v57 = v53 + v55;
          v58 = llroundf(v48);
          if (v47)
          {
            v59 = v58;
          }

          else
          {
            v59 = -1;
          }

          v60 = llroundf(v49);
          if (!v47)
          {
            v60 = -1;
          }

          v61 = 255.0;
          if (v57 < 0.0)
          {
            v62 = 0.0;
          }

          else
          {
            v62 = v53 + v55;
          }

          if (v57 <= 255.0)
          {
            v61 = v62;
          }

          *(v46 + v35) = llroundf(v61);
          v63 = 255.0;
          if ((v55 + v54) <= 255.0)
          {
            v63 = v55 + v54;
            if ((v55 + v54) < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v26 * v51;
          v65 = v22 * ((v56 >> v43) - v20);
          v66 = v64 + v55;
          v67 = v53 + v65;
          *(v46 + v34) = llroundf(v63);
          v68 = v54 + v65;
          if (v66 < 0.0)
          {
            v69 = 0.0;
          }

          else
          {
            v69 = v66;
          }

          if (v66 <= 255.0)
          {
            v70 = v69;
          }

          else
          {
            v70 = 255.0;
          }

          *(v46 + v33) = llroundf(v70);
          *(v46 + v32) = v59;
          if (v67 < 0.0)
          {
            v71 = 0.0;
          }

          else
          {
            v71 = v67;
          }

          if (v67 <= 255.0)
          {
            v72 = v71;
          }

          else
          {
            v72 = 255.0;
          }

          v73 = v46 + 4;
          *(v46 + 4 + v35) = llroundf(v72);
          v74 = 255.0;
          if (v68 <= 255.0)
          {
            v74 = v68;
            if (v68 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v75 = llroundf(v74);
          v3 = v64 + v65;
          *(v73 + v34) = v75;
          v2 = 255.0;
          if ((v64 + v65) <= 255.0)
          {
            v2 = v64 + v65;
            if (v3 < 0.0)
            {
              v2 = 0.0;
            }
          }

          *(v73 + v33) = llroundf(v2);
          *(v73 + v32) = v60;
          v46 += 8;
          v44 += 2;
          v45 += 2;
        }

        while (v44 < v10);
      }

      v42 += v13;
      v41 += v14;
      v38 += v15;
      v36 += v16;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Tone_Mat_TRC_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v76 = a5;
  v68 = a3;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v11;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v12;
  v22 = v15 + v13 != v12 || v20 + v17 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_64:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v13;
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
    v32 = v66;
    v33 = v67;
    v34 = v69;
    if (v22 || (v35 = v29 + 1 + v30, v36 = 2 * v35, 2 * v35 > *v69) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v37 = v69[2], v36 > v37) && v37 || (v38 = v28 + 1 + v31, *v67 < 4 * v38) || (v39 = v67[1], v38 > v39) && v39)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v73;
      ++v74;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v66;
    v33 = v67;
    v34 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v14 <= v72)
  {
    v40 = v14;
  }

  else
  {
    v40 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v41 = v18;
  }

  else
  {
    v41 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v42 = v28;
  }

  else
  {
    v42 = v29;
  }

  if (v40 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v40;
  }

  v44 = v71 + v43 - 1;
  v45 = v42 + v30;
  v46 = *v34 * v44 + 2 * (v42 + v30);
  v47 = *v76;
  v64 = v30;
  if (v46 > v47)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v52 = v68;
  if (*(v68 + 8) && v34[1] * v44 + 4 * ((v45 + 1 + ((v45 + 1) >> 63)) >> 1) > v76[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v68 + 16) && 2 * v45 + v34[2] * v44 > v76[2])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v53 = v75 + v43 - 1;
  if ((*v33 * v53 + 4 * (v42 + v31)) > *a9)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v32 + 8) && (v42 + v31 + v33[1] * v53) > a9[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
LABEL_57:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v52 = v68;
    v34 = v69;
    v27 = v51;
    v32 = v50;
    v31 = v49;
    v10 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_63;
    }
  }

  *v23 = v10;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v52;
  v23[8] = v34;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v32;
  v23[17] = v33;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v10;
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

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v24;
}

unsigned __int8 *vt_Copy_xf422_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, double a6, double a7, double a8, double a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = *(result + 7);
    v17 = *(result + 8);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = **(result + 17);
    *&v22 = *(v14 + 128);
    v23 = 8191.0 / *&v22;
    LOWORD(v22) = *(v14 + 140);
    v24 = v22;
    LOWORD(a5) = *(v14 + 142);
    v25 = LODWORD(a5);
    v26 = v23 * *v14;
    v151 = v23 * *(v14 + 16);
    v152 = v23 * *(v14 + 8);
    v27 = v23 * *(v14 + 20);
    *&v28 = v23 * *(v14 + 28);
    v149 = *&v28;
    v150 = v27;
    LOWORD(v28) = *(v14 + 144);
    v29 = v28;
    v30 = *(v14 + 72);
    v31 = *(v14 + 76);
    v32 = *(v14 + 80);
    v33 = *(v14 + 84);
    v34 = *(v14 + 88);
    v35 = *(v14 + 92);
    v36 = *(v14 + 96);
    v37 = *(v14 + 100);
    v38 = v14 + 164;
    v39 = v14 + 16548;
    v40 = v14 + 32932;
    v41 = *(v14 + 104);
    v42 = *(v14 + 108);
    v43 = *(v14 + 112);
    v44 = *(v14 + 116);
    v45 = *(v14 + 120);
    v46 = v11 + *(result + 15);
    v47 = *(result + 28) * a2 / v9 + *(result + 44);
    v48 = *(v14 + 124);
    v49 = *(result + 36);
    if (v48 >= 0x11)
    {
      v50 = 0;
    }

    else
    {
      v50 = 16 - v48;
    }

    v51 = **(result + 16) + v21 * v46 + 16 * *(result + 14);
    v52 = v16[2];
    if (v52)
    {
      v53 = v52 + v47 * v20 + 2 * v49;
    }

    else
    {
      v53 = 0;
    }

    v55 = *v16;
    v54 = *(*(result + 7) + 8);
    _ZF = v54 == 0;
    v57 = v54 + v47 * v19 + 2 * v49;
    if (_ZF)
    {
      v57 = 0;
    }

    v58 = v55 + v47 * v18 + 2 * v49;
    v59 = v50;
    do
    {
      if (v15 >= 1)
      {
        v60 = 0;
        v61 = v58;
        v62 = v51;
        v63 = v53;
        do
        {
          v64 = (v57 + 2 * v60);
          v65 = (v64[1] >> v59) - v25;
          v66 = v152 * v65;
          v67 = v26 * ((*v61 >> v59) - v24);
          v68 = (v152 * v65) + v67;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = (v152 * v65) + v67;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = (*v64 >> v59) - v25;
          v71 = (v150 * v65) + (v70 * v151);
          v72 = 8191.0;
          if ((v67 + v71) <= 8191.0)
          {
            v72 = v67 + v71;
            if ((v67 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          WORD1(a9) = HIWORD(v149);
          v73 = v149 * v70;
          v74 = (v149 * v70) + v67;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v26 * ((v61[1] >> v59) - v24);
          v77 = v66 + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = 8191.0;
          if ((v71 + v76) <= 8191.0)
          {
            v79 = v71 + v76;
            if ((v71 + v76) < 0.0)
            {
              v79 = 0.0;
            }
          }

          *&a8 = v73 + v76;
          v80 = 8191.0;
          if ((v73 + v76) <= 8191.0)
          {
            v80 = v73 + v76;
            if (*&a8 < 0.0)
            {
              v80 = 0.0;
            }
          }

          if (v63)
          {
            LOWORD(a8) = *v63;
            LOWORD(a9) = v63[1];
            v63 += 2;
            v81 = *&a8 * 3.0;
            a8 = *&a9;
            v82 = *&a9 * 3.0;
          }

          else
          {
            v81 = 0.0;
            v82 = 0.0;
          }

          _S5 = fmaxf(v69, 0.0);
          v84 = 8191.0;
          LOWORD(_S5) = *(v38 + 2 * llroundf(fminf(_S5, 8191.0)));
          __asm { FCVT            S8, H5 }

          LOWORD(_S5) = *(v38 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S12, H5 }

          LOWORD(_S5) = *(v38 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S13, H5 }

          _H14 = *(v38 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H15 = *(v38 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          _H5 = *(v38 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          v94 = (((v43 * _S12) + (v42 * _S8)) + (v44 * _S13)) + (v45 * fmaxf(_S8, fmaxf(_S12, _S13)));
          LODWORD(a9) = 1174403072;
          if (v94 <= 8191.0)
          {
            *&a9 = v94;
            if (v94 < 0.0)
            {
              a9 = 0.0;
            }
          }

          __asm
          {
            FCVT            S4, H14
            FCVT            S14, H15
            FCVT            S15, H5
          }

          _H5 = *(v39 + 2 * llroundf(*&a9));
          v99 = fmaxf(_S4, fmaxf(_S14, _S15));
          v100 = (((v43 * _S14) + (v42 * _S4)) + (v44 * _S15)) + (v45 * v99);
          if (v100 <= 8191.0)
          {
            v84 = (((v43 * _S14) + (v42 * _S4)) + (v44 * _S15)) + (v45 * v99);
            if (v100 < 0.0)
            {
              v84 = 0.0;
            }
          }

          __asm { FCVT            S5, H5 }

          v102 = _S8 * _S5;
          v103 = _S12 * _S5;
          v104 = _S13 * _S5;
          _H8 = *(v39 + 2 * llroundf(v84));
          __asm { FCVT            S8, H8 }

          v107 = _S4 * _S8;
          v108 = _S14 * _S8;
          v109 = _S15 * _S8;
          v110 = ((v31 * v103) + (v102 * v30)) + (v104 * v32);
          v111 = ((v34 * v103) + (v102 * v33)) + (v104 * v35);
          v112 = ((v37 * v103) + (v102 * v36)) + (v104 * v41);
          v113 = ((v31 * v108) + (v107 * v30)) + (v109 * v32);
          v114 = ((v34 * v108) + (v107 * v33)) + (v109 * v35);
          v115 = ((v37 * v108) + (v107 * v36)) + (v109 * v41);
          _H13 = *(v40 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          _H4 = *(v40 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          _H15 = *(v40 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          _H11 = *(v40 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          _H12 = *(v40 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          _H14 = *(v40 + 2 * llroundf(fminf(fmaxf(v115, 0.0), 8191.0)));
          if (v63)
          {
            a9 = v81 / 65535.0;
            *&a9 = v81 / 65535.0;
            a8 = v82 / 65535.0;
            *&a8 = v82 / 65535.0;
            v122 = llroundf(*&a9);
            v123 = llroundf(*&a8);
          }

          else
          {
            v122 = 3.0;
            v123 = 3.0;
          }

          __asm { FCVT            S5, H15 }

          v125 = v29 + _S5;
          v126 = 1023.0;
          v127 = 1023.0;
          if (v125 <= 1023.0)
          {
            v127 = v125;
            if (v125 < 0.0)
            {
              v127 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v129 = v29 + _S4;
          v130 = (v29 + _S4) <= 1023.0;
          v131 = 1023.0;
          if (v130)
          {
            v131 = v129;
            if (v129 < 0.0)
            {
              v131 = 0.0;
            }
          }

          __asm { FCVT            S5, H13 }

          v133 = v29 + _S5;
          v130 = (v29 + _S5) <= 1023.0;
          LODWORD(a8) = 1149222912;
          if (v130)
          {
            *&a8 = v133;
            if (v133 < 0.0)
            {
              a8 = 0.0;
            }
          }

          __asm { FCVT            S6, H14 }

          v135 = llroundf(v127);
          v136 = llroundf(*&a8);
          v137 = llroundf(v131) << 10;
          if (v122 <= 3.0)
          {
            v138 = v122;
          }

          else
          {
            v138 = 3.0;
          }

          *v62 = v137 | v135 | (llroundf(v138) << 30) | (v136 << 20);
          v139 = 1023.0;
          if ((v29 + _S6) <= 1023.0)
          {
            v139 = v29 + _S6;
            if ((v29 + _S6) < 0.0)
            {
              v139 = 0.0;
            }
          }

          __asm { FCVT            S5, H12 }

          v141 = v29 + _S5;
          v142 = 1023.0;
          if (v141 <= 1023.0)
          {
            v142 = v141;
            if (v141 < 0.0)
            {
              v142 = 0.0;
            }
          }

          __asm { FCVT            S5, H11 }

          v144 = v29 + _S5;
          if (v144 <= 1023.0)
          {
            v126 = v144;
            if (v144 < 0.0)
            {
              v126 = 0.0;
            }
          }

          v145 = llroundf(v139);
          v146 = llroundf(v142) << 10;
          v147 = llroundf(v126);
          if (v123 <= 3.0)
          {
            v148 = v123;
          }

          else
          {
            v148 = 3.0;
          }

          v62[1] = v146 | v145 | (llroundf(v148) << 30) | (v147 << 20);
          v60 += 2;
          v61 += 2;
          v62 += 2;
        }

        while (v60 < v15);
      }

      v58 += v18;
      v57 += v19;
      v53 += v20;
      v51 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_TRC_Mat_TRC_l10r(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v76 = a5;
  v68 = a3;
  v69 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v71 = a2[5];
  v72 = v11;
  v16 = *a6;
  v70 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v74 = v16;
  v75 = v19;
  v73 = v12;
  v22 = v15 + v13 != v12 || v20 + v17 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_64:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v63 - v25);
    bzero(&v63 - v25, v26);
  }

  v65 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v13;
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
    v32 = v66;
    v33 = v67;
    v34 = v69;
    if (v22 || (v35 = v29 + 1 + v30, v36 = 2 * v35, 2 * v35 > *v69) || ((2 * (v35 + (v35 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v69[1] || (v37 = v69[2], v36 > v37) && v37 || (v38 = v28 + 1 + v31, *v67 < 4 * v38) || (v39 = v67[1], v38 > v39) && v39)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v73;
      ++v74;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v66;
    v33 = v67;
    v34 = v69;
  }

  if (v29 + v30 > v73)
  {
    v29 = v73 - v30;
  }

  if (v28 + v31 > v74)
  {
    v28 = v74 - v31;
  }

  if (v71 + v14 <= v72)
  {
    v40 = v14;
  }

  else
  {
    v40 = v72 - v71;
  }

  if (v75 + v18 <= v70)
  {
    v41 = v18;
  }

  else
  {
    v41 = v70 - v75;
  }

  if (v29 >= v28)
  {
    v42 = v28;
  }

  else
  {
    v42 = v29;
  }

  if (v40 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v40;
  }

  v44 = v71 + v43 - 1;
  v45 = v42 + v30;
  v46 = *v34 * v44 + 2 * (v42 + v30);
  v47 = *v76;
  v64 = v30;
  if (v46 > v47)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v52 = v68;
  if (*(v68 + 8) && v34[1] * v44 + 4 * ((v45 + 1 + ((v45 + 1) >> 63)) >> 1) > v76[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v68 + 16) && 2 * v45 + v34[2] * v44 > v76[2])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  v53 = v75 + v43 - 1;
  if ((*v33 * v53 + 4 * (v42 + v31)) > *a9)
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
    goto LABEL_57;
  }

  if (*(v32 + 8) && (v42 + v31 + v33[1] * v53) > a9[1])
  {
    v48 = v10;
    v49 = v31;
    v50 = v32;
    v51 = a9;
LABEL_57:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v52 = v68;
    v34 = v69;
    v27 = v51;
    v32 = v50;
    v31 = v49;
    v10 = v48;
    v30 = v64;
    if (v24)
    {
      goto LABEL_63;
    }
  }

  *v23 = v10;
  v54 = v72;
  *(v23 + 4) = v73;
  *(v23 + 12) = v54;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  v55 = v70;
  *(v23 + 44) = v71;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v52;
  v23[8] = v34;
  v56 = v74;
  v57 = v75;
  v23[9] = v76;
  v23[10] = v56;
  v23[15] = v57;
  v23[16] = v32;
  v23[17] = v33;
  v23[18] = v27;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_TRC_Mat_TRC_l10r_GCD);
  if (!v10)
  {
    return 0;
  }

  v59 = (v23 + 20);
  v60 = v10;
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

LABEL_63:
  if (v10 == 255)
  {
    goto LABEL_64;
  }

  return v24;
}