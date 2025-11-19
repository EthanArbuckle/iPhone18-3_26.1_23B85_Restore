uint64_t vt_Copy_RGhA_rgb_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v60;
    if (v21 || (8 * (v29 + v28) + 8) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 8 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_rgb_422vf_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_rgb_422vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v5 = 0;
  v119 = *(result + 36);
  v6 = *(result + 24);
  v7 = *result;
  v9 = *(result + 13);
  v8 = *(result + 14);
  v10 = *(result + 19);
  v11 = *(result + 16);
  v12 = v9 * a2 / v7;
  v13 = v12 + *(result + 15);
  v14 = *(result + 17);
  v15 = v9 + v9 * a2;
  v16 = **(result + 8);
  v118 = **(result + 7);
  v17 = v16 * (*(result + 28) * a2 / v7 + *(result + 44));
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v22 = *v11;
  v21 = v11[1];
  v23 = v11[2];
  v24 = *(v10 + 136);
  v128 = *(v10 + 154);
  v25 = *(v10 + 144);
  v26 = *(v10 + 146);
  v27 = *(v10 + 148);
  v28 = *(v10 + 150);
  v29 = *(v10 + 152);
  _S0 = *(v10 + 36);
  _S1 = *(v10 + 40);
  _S2 = *(v10 + 44);
  v33.i32[0] = *(v10 + 48);
  v2.i32[0] = *(v10 + 52);
  v3.i32[0] = *(v10 + 56);
  v35 = *(v10 + 60);
  v34 = *(v10 + 64);
  v36 = *(v10 + 68);
  memset(v127, 0, sizeof(v127));
  v37 = v15 / v7;
  do
  {
    v38 = 0;
    v39 = *(&v128 + v5);
    v40 = *(v127 + v5);
    do
    {
      v126 = v40;
      *(&v126 | v38 & 7) = v39 + 4 * v38;
      v40 = v126;
      ++v38;
    }

    while (v38 != 8);
    *(v127 + v5++) = v126;
  }

  while (v5 != 4);
  v41 = v37 - v12;
  if (v37 - v12 >= 1)
  {
    v42 = 0;
    _S3 = v24;
    v44 = v25;
    v45 = v26;
    v46 = v27;
    v47 = v28;
    v48 = v29;
    v33.i32[1] = v35;
    v49 = v6 & 0xFFFFFFFE;
    *v4.f32 = vmul_f32(v33, 0x3F0000003F000000);
    v2.i32[1] = v34;
    *v2.f32 = vmul_f32(*v2.f32, 0x3F0000003F000000);
    v3.i32[1] = v36;
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    __asm { FCVT            H8, S0 }

    v125 = _H8;
    __asm { FCVT            H8, S1 }

    v124 = _H8;
    __asm { FCVT            H8, S2 }

    v122 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v123 = _H8;
    v121 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    v62 = vcvt_f16_f32(v3);
    v57 = vdupq_lane_s32(v62, 0);
    *v62.i16 = v25;
    v58 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v26;
    v59 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v27;
    v60 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v28;
    v61 = vdupq_lane_s16(v62, 0);
    *v62.i16 = v29;
    v63 = vdupq_lane_s16(v62, 0);
    if (v23)
    {
      v64 = v23 + v20 * v13 + v8;
    }

    else
    {
      v64 = 0;
    }

    if (v21)
    {
      v65 = (v21 + v19 * v13 + v8);
    }

    else
    {
      v65 = 0;
    }

    v66 = (v22 + v18 * v13 + v8);
    v67 = v118 + v17 + 8 * v119;
    __asm { FCVT            H11, S3 }

    v69 = v2.i64[0];
    v70 = v3.f32[0];
    do
    {
      if (v6 < 8)
      {
        v82 = 0;
        v81 = v65;
        v74 = v64;
        v73 = v66;
        v72 = v67;
      }

      else
      {
        v71 = 0;
        v72 = v67;
        v73 = v66;
        v74 = v64;
        do
        {
          v129 = vld4q_s16(v72);
          v72 += 32;
          v75 = vmulq_n_f16(v129.val[0], _H11);
          v76 = vmulq_n_f16(v129.val[1], _H11);
          v77 = vmulq_n_f16(v129.val[2], _H11);
          v78 = COERCE_DOUBLE(vmovn_s16(vcvtq_u16_f16(vmulq_f16(v129.val[3], vdupq_n_s16(0x5BF8u)))));
          if (v74)
          {
            v79 = v78;
          }

          else
          {
            v79 = 0.0;
          }

          *v73++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v75, v125), v76, v124), v77, v123), v58), v60)));
          v80 = vpaddq_f16(v75, v76);
          v62 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v59, v122, vzip1q_s16(v80, v80)), v121, vzip2q_s16(v80, v80)), v57, vaddq_f16(vtrn1q_s16(v77, v77), vtrn2q_s16(v77, v77))), v61), v63)));
          *&v65[v71] = v62;
          if (v74)
          {
            *v74 = v79;
            v74 += 8;
          }

          v71 += 8;
        }

        while (v71 < v6 - 7);
        v81 = &v65[v71];
        v82 = v6 & 0xFFFFFFF8;
      }

      if (v82 < v49)
      {
        v83 = v72 + 4;
        do
        {
          if (v74)
          {
            v84 = &v83[HIBYTE(v128)];
            v62.i16[0] = *(v84 - 4);
            v62.i16[1] = *v84;
            v62 = vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v62), vdup_n_s32(0x437F0000u)));
            v85 = vcvt_s32_f32(v62);
          }

          else
          {
            v85 = 0;
          }

          v86 = &v83[v128];
          _H16 = *(v86 - 4);
          __asm { FCVT            S16, H16 }

          v89 = _S3 * _S16;
          v90 = &v83[BYTE1(v128)];
          _H18 = *(v90 - 4);
          __asm { FCVT            S18, H18 }

          v93 = _S3 * _S18;
          v94 = &v83[BYTE2(v128)];
          _H31 = *(v94 - 4);
          __asm { FCVT            S31, H31 }

          v97 = _S3 * _S31;
          _H8 = *v86;
          __asm { FCVT            S8, H8 }

          v100 = _S3 * _S8;
          _H13 = *v90;
          __asm { FCVT            S13, H13 }

          v103 = _S3 * _S13;
          LOWORD(_S13) = *v94;
          __asm { FCVT            S13, H13 }

          v105 = _S3 * _S13;
          v106 = (((_S1 * v93) + (_S0 * v89)) + (_S2 * v97)) + v44;
          v107 = (((_S1 * v103) + (_S0 * v100)) + (_S2 * v105)) + v44;
          if (v106 < v44)
          {
            v108 = v25;
          }

          else
          {
            v108 = (((_S1 * v93) + (_S0 * v89)) + (_S2 * v97)) + v44;
          }

          if (v106 > v46)
          {
            v108 = v46;
          }

          v73->i8[0] = llroundf(v108);
          if (v107 < v44)
          {
            v109 = v25;
          }

          else
          {
            v109 = (((_S1 * v103) + (_S0 * v100)) + (_S2 * v105)) + v44;
          }

          if (v107 <= v46)
          {
            v110 = v109;
          }

          else
          {
            v110 = v46;
          }

          v73->i8[1] = llroundf(v110);
          v111 = v89 + v100;
          v112 = v93 + v103;
          v113 = v97 + v105;
          v114 = ((v45 + ((v89 + v100) * v4.f32[0])) + (v112 * *&v69)) + (v113 * v70);
          v115 = v48;
          if (v114 <= v48)
          {
            v115 = v114;
            if (v114 < v47)
            {
              v115 = v47;
            }
          }

          v116 = ((v45 + (v111 * v4.f32[1])) + (v112 * *(&v69 + 1))) + (v113 * v3.f32[1]);
          *v81 = llroundf(v115);
          v117 = v48;
          if (v116 <= v48)
          {
            v117 = v116;
            if (v116 < v47)
            {
              v117 = v47;
            }
          }

          v81[1] = llroundf(v117);
          if (v74)
          {
            *v74 = v85.i8[0];
            *(v74 + 1) = v85.i8[4];
            v74 += 2;
          }

          v82 += 2;
          v83 += 8;
          v73 = (v73 + 2);
          v81 += 2;
        }

        while (v82 < v49);
      }

      v67 += v16;
      v66 = (v66 + v18);
      v65 += v19;
      v64 += v20;
      ++v42;
    }

    while (v42 != v41);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v61 = a8;
  v59 = a7;
  v64 = a5;
  v66 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v58 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v62 = a6[1];
  v63 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v56 = a1;
  v57 = v17;
  v19 = a6[4];
  v60 = a6[5];
  v65 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v22 = (&v54 - v24);
    bzero(&v54 - v24, v25);
  }

  v55 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v60;
    if (v21 || (8 * (v29 + v28) + 8) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v65;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v60;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v65)
  {
    v27 = v65 - v30;
  }

  if (v15 + v58 <= v63)
  {
    v34 = v58;
  }

  else
  {
    v34 = v63 - v15;
  }

  if (v31 + v57 <= v62)
  {
    v35 = v57;
  }

  else
  {
    v35 = v62 - v31;
  }

  if (v28 >= v27)
  {
    v36 = v27;
  }

  else
  {
    v36 = v28;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  if ((*v66 * (v15 + v37 - 1) + 8 * (v36 + v29)) <= *v64)
  {
    v42 = v31 + v37 - 1;
    v43 = v36 + v30;
    if (v36 + v30 + *v61 * v42 <= *a9)
    {
      v44 = v59;
      if (*(v59 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * v42 > a9[1])
      {
        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }

      else
      {
        if (!*(v59 + 16) || v43 + v61[2] * v42 <= a9[2])
        {
          goto LABEL_53;
        }

        v58 = v29;
        v38 = v10;
        v39 = v12;
        v40 = v15;
        v41 = a9;
      }
    }

    else
    {
      v58 = v29;
      v38 = v10;
      v39 = v12;
      v40 = v15;
      v41 = a9;
    }
  }

  else
  {
    v58 = v29;
    v38 = v10;
    v39 = v12;
    v40 = v15;
    v41 = a9;
  }

  fig_log_get_emitter();
  v45 = FigSignalErrorAtGM();
  v44 = v59;
  v31 = v60;
  v26 = v41;
  v15 = v40;
  v12 = v39;
  v10 = v38;
  v29 = v58;
  if (v45)
  {
    v23 = v45;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v46 = v62;
  *(v22 + 12) = v63;
  *(v22 + 20) = v36;
  *(v22 + 28) = v37;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v46;
  v22[12] = v36;
  v22[13] = v37;
  v22[14] = v30;
  v48 = v65;
  v47 = v66;
  v22[7] = v55;
  v22[8] = v47;
  v22[9] = v64;
  v22[10] = v48;
  v22[15] = v31;
  v22[16] = v44;
  v22[17] = v61;
  v22[18] = v26;
  v22[19] = v56;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_rgb_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v50 = (v22 + 20);
  v51 = v10;
  while (1)
  {
    v52 = *v50++;
    v23 = v52;
    if (v52)
    {
      break;
    }

    if (!--v51)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
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
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v23 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v27 = LODWORD(a8);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v31 = *(v14 + 48) * 0.5;
    v32 = *(v14 + 52) * 0.5;
    v33 = *(v14 + 56) * 0.5;
    v34 = *(v14 + 60) * 0.5;
    v35 = *(v14 + 64) * 0.5;
    v36 = *(v14 + 68) * 0.5;
    v37 = *(result + 14);
    v38 = v11 + *(result + 15);
    v39 = *(result + 28) * a2 / v9 + *(result + 44);
    v40 = *(v14 + 157);
    v41 = *(v14 + 156);
    v42 = *(v14 + 155);
    v43 = *(v14 + 154);
    v44 = v17[2];
    if (v44)
    {
      v45 = (v44 + v21 * v38 + v37);
    }

    else
    {
      v45 = 0;
    }

    v47 = *v17;
    v46 = v17[1];
    v48 = v46 + v20 * v38 + v37;
    if (!v46)
    {
      v48 = 0;
    }

    v49 = (v47 + v19 * v38 + v37);
    v50 = **(result + 7) + v39 * v16 + 8 * *(result + 36);
    v51 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v15 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v45;
        v55 = v49;
        do
        {
          v56 = v53 + 8;
          if (v54)
          {
            v8.i16[0] = *(v53 + 2 * v40);
            v8.i16[1] = *(v56 + 2 * v40);
            v8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v8), v51)));
          }

          else
          {
            v8 = 0;
          }

          _H25 = *(v53 + 2 * v43);
          __asm { FCVT            S25, H25 }

          v63 = v22 * _S25;
          _H26 = *(v53 + 2 * v42);
          __asm { FCVT            S26, H26 }

          v66 = v22 * _S26;
          _H27 = *(v53 + 2 * v41);
          __asm { FCVT            S27, H27 }

          v69 = v22 * _S27;
          _H28 = *(v56 + 2 * v43);
          __asm { FCVT            S28, H28 }

          v72 = v22 * _S28;
          _H29 = *(v56 + 2 * v42);
          __asm { FCVT            S29, H29 }

          v75 = v22 * _S29;
          _H30 = *(v56 + 2 * v41);
          __asm { FCVT            S30, H30 }

          v78 = v22 * _S30;
          v79 = (((v29 * v66) + (v28 * v63)) + (v30 * v69)) + v23;
          v80 = (((v29 * v75) + (v28 * v72)) + (v30 * v78)) + v23;
          if (v79 < v23)
          {
            v81 = v23;
          }

          else
          {
            v81 = (((v29 * v66) + (v28 * v63)) + (v30 * v69)) + v23;
          }

          if (v79 <= v25)
          {
            v82 = v81;
          }

          else
          {
            v82 = v25;
          }

          *v55 = llroundf(v82);
          if (v80 < v23)
          {
            v83 = v23;
          }

          else
          {
            v83 = (((v29 * v75) + (v28 * v72)) + (v30 * v78)) + v23;
          }

          if (v80 > v25)
          {
            v83 = v25;
          }

          v55[1] = llroundf(v83);
          v84 = v63 + v72;
          v85 = v66 + v75;
          v86 = v69 + v78;
          v87 = ((v24 + (v84 * v31)) + (v85 * v32)) + (v86 * v33);
          v88 = v27;
          if (v87 <= v27)
          {
            v88 = ((v24 + (v84 * v31)) + (v85 * v32)) + (v86 * v33);
            if (v87 < v26)
            {
              v88 = v26;
            }
          }

          v89 = ((v24 + (v84 * v34)) + (v85 * v35)) + (v86 * v36);
          *(v48 + v52) = llroundf(v88);
          v90 = v27;
          if (v89 <= v27)
          {
            v90 = v89;
            if (v89 < v26)
            {
              v90 = v26;
            }
          }

          *(v48 + v52 + 1) = llroundf(v90);
          if (v54)
          {
            *v54 = v8.i8[0];
            v54[1] = v8.i8[4];
            v54 += 2;
          }

          v53 += 16;
          v52 += 2;
          v55 += 2;
        }

        while (v52 < v15);
      }

      v50 += v16;
      v49 += v19;
      v48 += v20;
      v45 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, float a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v15 = *result;
  v16 = *(result + 13);
  v17 = *(result + 14);
  v18 = v16 * a2 / v15;
  v19 = *(result + 16);
  v20 = v18 + *(result + 15);
  v21 = (v16 + v16 * a2) / v15 - v18;
  v22 = *(result + 17);
  v23 = v19[1];
  if (v23)
  {
    v23 += v22[1] * v20 + v17;
  }

  if (v21 >= 1)
  {
    v24 = 0;
    v25 = **(result + 8);
    v26 = *v22;
    v27 = *(result + 19);
    LOWORD(a3) = *(v27 + 144);
    LOWORD(a8) = *(v27 + 146);
    LOWORD(a9) = *(v27 + 148);
    LOWORD(a10) = *(v27 + 150);
    LOWORD(v11) = *(v27 + 152);
    v28 = *(v27 + 40);
    v126 = *(v27 + 36);
    v29 = *(v27 + 44);
    v30 = *(v27 + 72);
    v31 = **(result + 7) + v25 * (*(result + 28) * a2 / v15 + *(result + 44)) + 8 * *(result + 36);
    v32 = (*v19 + v26 * v20 + v17);
    v33 = *(result + 24) & 0xFFFFFFFE;
    v34 = LODWORD(a3);
    v35 = LODWORD(a8);
    v36 = LODWORD(a9);
    v37 = LODWORD(a10);
    v38 = v11;
    v124 = *(v27 + 52) * 0.5;
    v125 = *(v27 + 48) * 0.5;
    v122 = *(v27 + 60) * 0.5;
    v123 = *(v27 + 56) * 0.5;
    v120 = *(v27 + 68) * 0.5;
    v121 = *(v27 + 64) * 0.5;
    v39 = *(v27 + 76);
    v40 = *(v27 + 80);
    v41 = *(v27 + 84);
    v42 = *(v27 + 88);
    v43 = *(v27 + 92);
    v44 = *(v27 + 96);
    v45 = *(v27 + 100);
    v46 = *(v27 + 104);
    v47 = v27 + 164;
    v48 = v27 + 16548;
    v49 = v27 + 32932;
    v51 = *(v27 + 108);
    v50 = *(v27 + 112);
    v52 = *(v27 + 116);
    v53 = *(v27 + 120);
    v54 = *(v27 + 157);
    v55 = *(v27 + 156);
    v56 = *(v27 + 155);
    v57 = vdup_n_s32(0x45FFF800u);
    v58 = *(v27 + 154);
    do
    {
      if (v33 >= 1)
      {
        v59 = 0;
        v60 = v23;
        v61 = v32;
        v62 = v31;
        do
        {
          _D17.i16[0] = *(v62 + 2 * v58);
          _D19.i16[0] = *(v62 + 2 * v55);
          v63 = v62 + 8;
          _D17.i16[1] = *(v62 + 2 * v56);
          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D17), v57), 0), v57)));
          _D17.i16[0] = *(v47 + 2 * _D17.u32[0]);
          __asm { FCVT            S17, H17 }

          _H18 = *(v47 + 2 * _D17.u32[1]);
          __asm { FCVT            S18, H18 }

          _D19.i16[1] = *(v62 + 8 + 2 * v58);
          _D19 = vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D19), v57), 0), v57));
          v70 = vcvt_s32_f32(_D19);
          _D19.i16[0] = *(v47 + 2 * v70.u32[0]);
          __asm { FCVT            S19, H19 }

          v71 = (((v50 * _S18) + (v51 * *_D17.i32)) + (v52 * *_D19.i32)) + (v53 * fmaxf(*_D17.i32, fmaxf(_S18, *_D19.i32)));
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v10.i16[0] = *(v62 + 2 * v54);
          _D20.i16[0] = *(v63 + 2 * v56);
          _H21 = *(v47 + 2 * v70.u32[1]);
          _D20.i16[1] = *(v63 + 2 * v55);
          _D20 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D20), v57), 0), v57)));
          __asm { FCVT            S21, H21 }

          _D20.i16[0] = *(v47 + 2 * _D20.u32[0]);
          _H12 = *(v47 + 2 * _D20.u32[1]);
          __asm
          {
            FCVT            S22, H20
            FCVT            S12, H12
          }

          _D20.i16[0] = *(v48 + 2 * llroundf(v72));
          __asm { FCVT            S20, H20 }

          v78 = *_D17.i32 * *_D20.i32;
          v79 = _S18 * *_D20.i32;
          v80 = *_D19.i32 * *_D20.i32;
          v81 = (((v50 * _S22) + (v51 * _S21)) + (v52 * _S12)) + (v53 * fmaxf(_S21, fmaxf(_S22, _S12)));
          _D20.i32[0] = 1174403072;
          if (v81 <= 8191.0)
          {
            *_D20.i32 = v81;
            if (v81 < 0.0)
            {
              _D20 = 0;
            }
          }

          _H19 = *(v48 + 2 * llroundf(*_D20.i32));
          __asm { FCVT            S19, H19 }

          v84 = _S21 * _S19;
          v85 = _S22 * _S19;
          v86 = _S12 * _S19;
          _S22 = ((v39 * v79) + (v78 * v30)) + (v80 * v40);
          v88 = ((v42 * v79) + (v78 * v41)) + (v80 * v43);
          _S17 = ((v45 * v79) + (v78 * v44)) + (v80 * v46);
          v90 = (v39 * v85) + (v84 * v30);
          v91 = (v42 * v85) + (v84 * v41);
          _S20 = (v45 * v85) + (v84 * v44);
          _S18 = v90 + (v86 * v40);
          v94 = v91 + (v86 * v43);
          v95 = _S20 + (v86 * v46);
          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v49 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S17) = *(v49 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          LOWORD(_S18) = *(v49 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H17
            FCVT            S17, H18
          }

          LOWORD(_S18) = *(v49 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v100 = llroundf(fminf(fmaxf(v95, 0.0), 8191.0));
          __asm { FCVT            S18, H18 }

          v102 = (v28 * _S22) + (v126 * _S20);
          _S19 = _S20 + _S17;
          v104 = _S22 + _S18;
          v105 = (v35 + ((_S20 + _S17) * v125)) + (v104 * v124);
          v106 = (v35 + (_S19 * v122)) + (v104 * v121);
          LOWORD(_S19) = *(v49 + 2 * v100);
          __asm { FCVT            S19, H19 }

          v108 = v102 + (v29 * _S12);
          v109 = v105 + ((_S12 + _S19) * v123);
          v110 = v106 + ((_S12 + _S19) * v120);
          if (v109 < v37)
          {
            v111 = v37;
          }

          else
          {
            v111 = v109;
          }

          v112 = v109 <= v38;
          v113 = v108 + v34;
          if (!v112)
          {
            v111 = v38;
          }

          v114 = llroundf(v111);
          if (v113 < v34)
          {
            v115 = LODWORD(a3);
          }

          else
          {
            v115 = v108 + v34;
          }

          v10.i16[1] = *(v63 + 2 * v54);
          *v61 = v114;
          if (v113 <= v36)
          {
            v116 = v115;
          }

          else
          {
            v116 = v36;
          }

          v61[1] = llroundf(v116);
          v117 = v38;
          if (v110 <= v38)
          {
            v117 = v110;
            if (v110 < v37)
            {
              v117 = v37;
            }
          }

          v118 = (((v28 * _S18) + (v126 * _S17)) + (v29 * _S19)) + v34;
          v61[2] = llroundf(v117);
          v119 = v36;
          if (v118 <= v36)
          {
            v119 = v118;
            if (v118 < v34)
            {
              v119 = LODWORD(a3);
            }
          }

          v61[3] = llroundf(v119);
          if (v60)
          {
            _D19 = vdup_n_s32(0x437F0000u);
            _D17 = vbic_s8(vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v10), _D19))), vceqd_s64(v60, 0));
            *v60 = _D17.i8[0];
            v60[1] = _D17.i8[4];
            v60 += 2;
          }

          v62 += 16;
          v59 += 2;
          v61 += 4;
        }

        while (v59 < v33);
      }

      v31 += v25;
      v32 += v26;
      ++v24;
    }

    while (v24 != v21);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, double _D7)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 += v19[1] * v17 + v14;
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = **(result + 8);
    v23 = *v19;
    v24 = *(result + 19);
    LOWORD(a6) = *(v24 + 144);
    LOWORD(a7) = *(v24 + 146);
    LOWORD(a8) = *(v24 + 148);
    LOWORD(a9) = *(v24 + 150);
    LOWORD(_D7) = *(v24 + 152);
    v25 = *(v24 + 36);
    v26 = *(v24 + 40);
    v27 = *(v24 + 44);
    v28 = **(result + 7) + v22 * (*(result + 28) * a2 / v12 + *(result + 44)) + 8 * *(result + 36);
    v29 = (*v16 + v23 * v17 + v14);
    v30 = *(result + 24) & 0xFFFFFFFE;
    v31 = LODWORD(a6);
    v32 = LODWORD(a7);
    v33 = LODWORD(a8);
    v34 = LODWORD(a9);
    v35 = LODWORD(_D7);
    v95 = *(v24 + 52) * 0.5;
    v96 = *(v24 + 48) * 0.5;
    v93 = *(v24 + 60) * 0.5;
    v94 = *(v24 + 56) * 0.5;
    v36 = *(v24 + 64) * 0.5;
    v37 = *(v24 + 72);
    v38 = *(v24 + 68) * 0.5;
    v39 = *(v24 + 76);
    v40 = *(v24 + 80);
    v41 = *(v24 + 84);
    v42 = *(v24 + 88);
    v43 = *(v24 + 92);
    v44 = *(v24 + 96);
    v45 = *(v24 + 100);
    v46 = *(v24 + 104);
    v47 = v24 + 164;
    v48 = v24 + 16548;
    v49 = *(v24 + 157);
    v50 = *(v24 + 156);
    v51 = *(v24 + 155);
    v52 = vdup_n_s32(0x45FFF800u);
    v53 = *(v24 + 154);
    do
    {
      if (v30 >= 1)
      {
        v54 = 0;
        v55 = v28;
        v56 = v20;
        v57 = v29;
        do
        {
          v58 = v55 + 8;
          if (v56)
          {
            LOWORD(_D7) = *(v55 + 2 * v49);
            WORD1(_D7) = *(v58 + 2 * v49);
            _D7 = COERCE_DOUBLE(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*&_D7), vdup_n_s32(0x437F0000u))));
            v59 = vcvt_s32_f32(*&_D7);
          }

          else
          {
            v59 = 0;
          }

          LOWORD(_D7) = *(v55 + 2 * v53);
          _D12.i16[0] = *(v55 + 2 * v50);
          WORD1(_D7) = *(v55 + 2 * v51);
          _D7 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D7), v52), 0), v52))));
          LOWORD(_D7) = *(v47 + 2 * LODWORD(_D7));
          _D13.i16[0] = *(v58 + 2 * v51);
          __asm { FCVT            S7, H7 }

          _H14 = *(v47 + 2 * HIDWORD(_D7));
          _D12.i16[1] = *(v58 + 2 * v53);
          _D12 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D12), v52), 0), v52)));
          __asm { FCVT            S14, H14 }

          _D12.i16[0] = *(v47 + 2 * _D12.u32[0]);
          _H15 = *(v47 + 2 * _D12.u32[1]);
          __asm
          {
            FCVT            S12, H12
            FCVT            S15, H15
          }

          _D13.i16[1] = *(v58 + 2 * v50);
          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D13), v52), 0), v52)));
          _D13.i16[0] = *(v47 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _S17 = ((v39 * _S14) + (*&_D7 * v37)) + (*_D12.i32 * v40);
          _S18 = ((v42 * _S14) + (*&_D7 * v41)) + (*_D12.i32 * v43);
          *&_D7 = ((v45 * _S14) + (*&_D7 * v44)) + (*_D12.i32 * v46);
          *_D12.i32 = (v39 * *_D13.i32) + (_S15 * v37);
          v70 = (v42 * *_D13.i32) + (_S15 * v41);
          *_D13.i32 = (v45 * *_D13.i32) + (_S15 * v44);
          LOWORD(_S15) = *(v47 + 2 * _D13.u32[1]);
          __asm { FCVT            S15, H15 }

          *_D12.i32 = *_D12.i32 + (_S15 * v40);
          v72 = v70 + (_S15 * v43);
          LOWORD(_S17) = *(v48 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          v73 = *_D13.i32 + (_S15 * v46);
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          v75 = llroundf(fminf(fmaxf(*&_D7, 0.0), 8191.0));
          __asm { FCVT            S7, H18 }

          LOWORD(_S18) = *(v48 + 2 * v75);
          __asm { FCVT            S18, H18 }

          _D12.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(*_D12.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _D13.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          v77 = llroundf(fminf(fmaxf(v73, 0.0), 8191.0));
          v78 = (v26 * *&_D7) + (v25 * _S17);
          _S17 = _S17 + *_D12.i32;
          *&_D7 = *&_D7 + *_D13.i32;
          v80 = (v32 + (_S17 * v96)) + (*&_D7 * v95);
          *&_D7 = (v32 + (_S17 * v93)) + (*&_D7 * v36);
          LOWORD(_S17) = *(v48 + 2 * v77);
          __asm { FCVT            S14, H17 }

          v82 = v78 + (v27 * _S18);
          v83 = _S18 + _S14;
          v84 = v80 + (v83 * v94);
          v85 = *&_D7 + (v83 * v38);
          if (v84 < v34)
          {
            v86 = v34;
          }

          else
          {
            v86 = v84;
          }

          v87 = v82 + v31;
          if (v84 > v35)
          {
            v86 = v35;
          }

          v88 = llroundf(v86);
          if (v87 < v31)
          {
            v89 = v31;
          }

          else
          {
            v89 = v87;
          }

          *v57 = v88;
          if (v87 > v33)
          {
            v89 = v33;
          }

          v57[1] = llroundf(v89);
          v90 = v35;
          if (v85 <= v35)
          {
            v90 = v85;
            if (v85 < v34)
            {
              v90 = v34;
            }
          }

          v91 = (((v26 * *_D13.i32) + (v25 * *_D12.i32)) + (v27 * _S14)) + v31;
          v57[2] = llroundf(v90);
          v92 = v33;
          if (v91 <= v33)
          {
            v92 = v91;
            if (v91 < v31)
            {
              v92 = v31;
            }
          }

          v57[3] = llroundf(v92);
          if (v56)
          {
            *v56 = v59.i8[0];
            v56[1] = v59.i8[4];
            v56 += 2;
          }

          v55 += 16;
          v54 += 2;
          v57 += 4;
        }

        while (v54 < v30);
      }

      v28 += v22;
      v29 += v23;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_2vuyf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 += v16[1] * v14 + v11;
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = **(result + 8);
    v20 = *v16;
    v21 = *(result + 19);
    LOWORD(a4) = *(v21 + 144);
    LOWORD(a5) = *(v21 + 146);
    LOWORD(a6) = *(v21 + 148);
    v22 = *v13 + v20 * v14;
    v23 = **(result + 7) + v19 * (*(result + 28) * a2 / v9 + *(result + 44)) + 8 * *(result + 36);
    v24 = (v22 + v11);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = *(v21 + 136);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    v29 = LODWORD(a6);
    LOWORD(a7) = *(v21 + 150);
    v30 = LODWORD(a7);
    LOWORD(a8) = *(v21 + 152);
    v31 = LODWORD(a8);
    v32 = *(v21 + 36);
    v33 = *(v21 + 40);
    v34 = *(v21 + 44);
    v35 = *(v21 + 48) * 0.5;
    v36 = *(v21 + 52) * 0.5;
    v37 = *(v21 + 56) * 0.5;
    v38 = *(v21 + 60) * 0.5;
    v39 = *(v21 + 64) * 0.5;
    v40 = *(v21 + 68) * 0.5;
    v41 = *(v21 + 157);
    v42 = *(v21 + 156);
    v43 = vdup_n_s32(0x437F0000u);
    v44 = *(v21 + 155);
    v45 = *(v21 + 154);
    do
    {
      if (v25 >= 1)
      {
        v46 = 0;
        v47 = v23;
        v48 = v17;
        v49 = v24;
        do
        {
          v50 = v47 + 8;
          if (v48)
          {
            v8.i16[0] = *(v47 + 2 * v41);
            v8.i16[1] = *(v50 + 2 * v41);
            v8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v8), v43)));
          }

          else
          {
            v8 = 0;
          }

          _H25 = *(v47 + 2 * v45);
          __asm { FCVT            S25, H25 }

          _H26 = *(v47 + 2 * v44);
          v58 = v26 * _S25;
          __asm { FCVT            S25, H26 }

          v60 = v26 * _S25;
          LOWORD(_S25) = *(v47 + 2 * v42);
          __asm { FCVT            S25, H25 }

          v62 = v26 * _S25;
          LOWORD(_S25) = *(v50 + 2 * v45);
          __asm { FCVT            S25, H25 }

          _H26 = *(v50 + 2 * v44);
          v65 = v26 * _S25;
          __asm { FCVT            S26, H26 }

          v67 = v26 * _S26;
          _H27 = *(v50 + 2 * v42);
          __asm { FCVT            S27, H27 }

          v70 = v26 * _S27;
          v71 = (((v33 * v60) + (v32 * v58)) + (v34 * v62)) + v27;
          v72 = v58 + v65;
          v73 = v60 + v67;
          v74 = v62 + v70;
          v75 = ((v28 + (v72 * v35)) + (v73 * v36)) + (v74 * v37);
          v76 = ((v28 + (v72 * v38)) + (v73 * v39)) + (v74 * v40);
          if (v75 < v30)
          {
            v77 = v30;
          }

          else
          {
            v77 = v75;
          }

          if (v75 > v31)
          {
            v77 = v31;
          }

          *v49 = llroundf(v77);
          if (v71 < v27)
          {
            v78 = v27;
          }

          else
          {
            v78 = v71;
          }

          if (v71 > v29)
          {
            v78 = v29;
          }

          v49[1] = llroundf(v78);
          v79 = v31;
          if (v76 <= v31)
          {
            v79 = v76;
            if (v76 < v30)
            {
              v79 = v30;
            }
          }

          v80 = (((v33 * v67) + (v32 * v65)) + (v34 * v70)) + v27;
          v49[2] = llroundf(v79);
          v81 = v29;
          if (v80 <= v29)
          {
            v81 = v80;
            if (v80 < v27)
            {
              v81 = v27;
            }
          }

          v49[3] = llroundf(v81);
          if (v48)
          {
            *v48 = v8.i8[0];
            v48[1] = v8.i8[4];
            v48 += 2;
          }

          v47 += 16;
          v46 += 2;
          v49 += 4;
        }

        while (v46 < v25);
      }

      v23 += v19;
      v24 += v20;
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, double _D7)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = **(result + 8);
    v25 = *v21;
    v26 = *(result + 19);
    LOWORD(a7) = *(v26 + 144);
    LOWORD(a8) = *(v26 + 146);
    LOWORD(a9) = *(v26 + 148);
    LOWORD(_D7) = *(v26 + 150);
    LOWORD(v11) = *(v26 + 152);
    v27 = *(v26 + 40);
    v123 = *(v26 + 36);
    v28 = *(v26 + 44);
    v29 = *(v26 + 72);
    v30 = **(result + 7) + v24 * (*(result + 28) * a2 / v14 + *(result + 44)) + 8 * *(result + 36);
    v31 = (*v18 + v25 * v19 + v16);
    v32 = *(result + 24) & 0xFFFFFFFE;
    v33 = LODWORD(a7);
    v34 = LODWORD(a8);
    v35 = LODWORD(a9);
    v122 = LODWORD(_D7);
    v36 = v11;
    v121 = *(v26 + 48) * 0.5;
    v120 = *(v26 + 52) * 0.5;
    v119 = *(v26 + 56) * 0.5;
    v118 = *(v26 + 60) * 0.5;
    v117 = *(v26 + 64) * 0.5;
    v116 = *(v26 + 68) * 0.5;
    v37 = *(v26 + 76);
    v38 = *(v26 + 80);
    v39 = *(v26 + 84);
    v40 = *(v26 + 88);
    v41 = *(v26 + 92);
    v42 = *(v26 + 96);
    v43 = *(v26 + 100);
    v44 = *(v26 + 104);
    v45 = v26 + 164;
    v46 = v26 + 16548;
    v47 = v26 + 32932;
    v49 = *(v26 + 108);
    v48 = *(v26 + 112);
    v50 = *(v26 + 116);
    v51 = *(v26 + 120);
    v52 = *(v26 + 157);
    v53 = *(v26 + 156);
    v54 = *(v26 + 155);
    v55 = vdup_n_s32(0x45FFF800u);
    v56 = *(v26 + 154);
    do
    {
      if (v32 >= 1)
      {
        v57 = 0;
        v58 = v22;
        v59 = v31;
        v60 = v30;
        do
        {
          LOWORD(_D7) = *(v60 + 2 * v56);
          v12.i16[0] = *(v60 + 2 * v53);
          v61 = v60 + 8;
          WORD1(_D7) = *(v60 + 2 * v54);
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D7), v55), 0), v55)));
          _D7.i16[0] = *(v45 + 2 * _D7.u32[0]);
          __asm { FCVT            S17, H7 }

          _D7.i16[0] = *(v45 + 2 * _D7.u32[1]);
          __asm { FCVT            S18, H7 }

          v12.i16[1] = *(v60 + 8 + 2 * v56);
          v69 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(v12), v55), 0), v55)));
          _H19 = *(v45 + 2 * v69.u32[0]);
          __asm { FCVT            S19, H19 }

          v72 = fmaxf(_S17, fmaxf(_S18, _S19));
          v73 = (((v48 * _S18) + (v49 * _S17)) + (v50 * _S19)) + (v51 * v72);
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = (((v48 * _S18) + (v49 * _S17)) + (v50 * _S19)) + (v51 * v72);
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          v13.i16[0] = *(v61 + 2 * v54);
          _H7 = *(v45 + 2 * v69.u32[1]);
          v13.i16[1] = *(v61 + 2 * v53);
          __asm { FCVT            S21, H7 }

          _D7 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(v13), v55), 0), v55))));
          LOWORD(_D7) = *(v45 + 2 * LODWORD(_D7));
          __asm { FCVT            S22, H7 }

          LOWORD(_D7) = *(v45 + 2 * HIDWORD(_D7));
          __asm { FCVT            S7, H7 }

          v78 = (((v48 * _S22) + (v49 * _S21)) + (v50 * *&_D7)) + (v51 * fmaxf(_S21, fmaxf(_S22, *&_D7)));
          v13.i32[0] = 1174403072;
          if (v78 <= 8191.0)
          {
            *v13.i32 = v78;
            if (v78 < 0.0)
            {
              v13 = 0;
            }
          }

          v10.i16[0] = *(v60 + 2 * v52);
          v10.i16[1] = *(v61 + 2 * v52);
          _H13 = *(v46 + 2 * llroundf(v74));
          __asm { FCVT            S13, H13 }

          v81 = _S17 * _S13;
          v82 = _S18 * _S13;
          _H20 = *(v46 + 2 * llroundf(*v13.i32));
          v84 = _S19 * _S13;
          __asm { FCVT            S20, H20 }

          v86 = _S21 * _S20;
          v87 = _S22 * _S20;
          _S7 = *&_D7 * _S20;
          v89 = ((v37 * v82) + (v81 * v29)) + (v84 * v38);
          v90 = ((v40 * v82) + (v81 * v39)) + (v84 * v41);
          _S17 = ((v43 * v82) + (v81 * v42)) + (v84 * v44);
          _S18 = ((v37 * v87) + (v86 * v29)) + (_S7 * v38);
          v93 = ((v40 * v87) + (v86 * v39)) + (_S7 * v41);
          v94 = ((v43 * v87) + (v86 * v42)) + (_S7 * v44);
          LOWORD(_S7) = *(v47 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S20, H7 }

          LOWORD(_S7) = *(v47 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          LOWORD(_S17) = *(v47 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H7
            FCVT            S13, H17
          }

          LOWORD(_S7) = *(v47 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S17) = *(v47 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v47 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v101 = (((v27 * _S22) + (v123 * _S20)) + (v28 * _S13)) + v33;
          v102 = _S20 + _S7;
          v103 = _S22 + _S17;
          v104 = (v34 + ((_S20 + _S7) * v121)) + ((_S22 + _S17) * v120);
          v105 = _S13 + _S18;
          v106 = v104 + ((_S13 + _S18) * v119);
          if (v101 < v33)
          {
            v107 = v33;
          }

          else
          {
            v107 = v101;
          }

          if (v101 <= v35)
          {
            v108 = v107;
          }

          else
          {
            v108 = v35;
          }

          *v59 = llroundf(v108);
          v109 = v36;
          if (v106 <= v36)
          {
            v109 = v106;
            if (v106 < v122)
            {
              v109 = v122;
            }
          }

          v110 = (((v27 * _S17) + (v123 * _S7)) + (v28 * _S18)) + v33;
          v111 = ((v34 + (v102 * v118)) + (v103 * v117)) + (v105 * v116);
          v59[1] = llroundf(v109);
          if (v110 < v33)
          {
            v112 = v33;
          }

          else
          {
            v112 = v110;
          }

          if (v110 <= v35)
          {
            v113 = v112;
          }

          else
          {
            v113 = v35;
          }

          v59[2] = llroundf(v113);
          v114 = v36;
          if (v111 <= v36)
          {
            v114 = ((v34 + (v102 * v118)) + (v103 * v117)) + (v105 * v116);
            if (v111 < v122)
            {
              v114 = v122;
            }
          }

          v59[3] = llroundf(v114);
          if (v58)
          {
            _D7 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v10), vdup_n_s32(0x437F0000u)))));
            v115 = vbic_s8(*&_D7, vceqd_s64(v58, 0));
            *v58 = v115.i8[0];
            v58[1] = v115.i8[4];
            v58 += 2;
          }

          v60 += 16;
          v57 += 2;
          v59 += 4;
        }

        while (v57 < v32);
      }

      v30 += v24;
      v31 += v25;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, double _D7)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 += v19[1] * v17 + v14;
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = **(result + 8);
    v23 = *v19;
    v24 = *(result + 19);
    LOWORD(a6) = *(v24 + 144);
    LOWORD(a7) = *(v24 + 146);
    LOWORD(a8) = *(v24 + 148);
    LOWORD(a9) = *(v24 + 150);
    LOWORD(_D7) = *(v24 + 152);
    v25 = *(v24 + 36);
    v26 = *(v24 + 40);
    v27 = *(v24 + 44);
    v28 = **(result + 7) + v22 * (*(result + 28) * a2 / v12 + *(result + 44)) + 8 * *(result + 36);
    v29 = (*v16 + v23 * v17 + v14);
    v30 = *(result + 24) & 0xFFFFFFFE;
    v31 = LODWORD(a6);
    v32 = LODWORD(a7);
    v33 = LODWORD(a8);
    v34 = LODWORD(a9);
    v35 = LODWORD(_D7);
    v90 = *(v24 + 52) * 0.5;
    v91 = *(v24 + 48) * 0.5;
    v88 = *(v24 + 60) * 0.5;
    v89 = *(v24 + 56) * 0.5;
    v36 = *(v24 + 72);
    v86 = *(v24 + 68) * 0.5;
    v87 = *(v24 + 64) * 0.5;
    v37 = *(v24 + 76);
    v38 = *(v24 + 80);
    v39 = *(v24 + 84);
    v40 = *(v24 + 88);
    v41 = *(v24 + 92);
    v42 = *(v24 + 96);
    v43 = *(v24 + 100);
    v44 = *(v24 + 104);
    v45 = v24 + 164;
    v46 = v24 + 16548;
    v47 = *(v24 + 157);
    v48 = *(v24 + 156);
    v49 = *(v24 + 155);
    v50 = vdup_n_s32(0x45FFF800u);
    v51 = *(v24 + 154);
    do
    {
      if (v30 >= 1)
      {
        v52 = 0;
        v53 = v28;
        v54 = v20;
        v55 = v29;
        do
        {
          v56 = v53 + 8;
          if (v54)
          {
            LOWORD(_D7) = *(v53 + 2 * v47);
            WORD1(_D7) = *(v56 + 2 * v47);
            _D16 = vdup_n_s32(0x437F0000u);
            _D7 = COERCE_DOUBLE(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*&_D7), _D16)));
            v57 = vcvt_s32_f32(*&_D7);
          }

          else
          {
            v57 = 0;
          }

          LOWORD(_D7) = *(v53 + 2 * v51);
          _D16.i16[0] = *(v53 + 2 * v48);
          WORD1(_D7) = *(v53 + 2 * v49);
          _D7 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D7), v50), 0), v50))));
          LOWORD(_D7) = *(v45 + 2 * LODWORD(_D7));
          _D17.i16[0] = *(v56 + 2 * v49);
          __asm { FCVT            S7, H7 }

          _H18 = *(v45 + 2 * HIDWORD(_D7));
          __asm { FCVT            S18, H18 }

          _D16.i16[1] = *(v56 + 2 * v51);
          _D16 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D16), v50), 0), v50)));
          _D16.i16[0] = *(v45 + 2 * _D16.u32[0]);
          _H12 = *(v45 + 2 * _D16.u32[1]);
          _D17.i16[1] = *(v56 + 2 * v48);
          __asm { FCVT            S16, H16 }

          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D17), v50), 0), v50)));
          _D17.i16[0] = *(v45 + 2 * _D17.u32[0]);
          __asm
          {
            FCVT            S12, H12
            FCVT            S17, H17
          }

          _H13 = *(v45 + 2 * _D17.u32[1]);
          __asm { FCVT            S13, H13 }

          v68 = ((v37 * _S18) + (*&_D7 * v36)) + (*_D16.i32 * v38);
          v69 = ((v40 * _S18) + (*&_D7 * v39)) + (*_D16.i32 * v41);
          *&_D7 = ((v43 * _S18) + (*&_D7 * v42)) + (*_D16.i32 * v44);
          *_D16.i32 = ((v37 * *_D17.i32) + (_S12 * v36)) + (_S13 * v38);
          v70 = ((v40 * *_D17.i32) + (_S12 * v39)) + (_S13 * v41);
          *_D17.i32 = ((v43 * *_D17.i32) + (_S12 * v42)) + (_S13 * v44);
          LOWORD(_S12) = *(v46 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          __asm { FCVT            S20, H12 }

          LOWORD(_S12) = *(v46 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          LOWORD(_D7) = *(v46 + 2 * llroundf(fminf(fmaxf(*&_D7, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H12
            FCVT            S7, H7
          }

          _D16.i16[0] = *(v46 + 2 * llroundf(fminf(fmaxf(*_D16.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H16 }

          _D16.i16[0] = *(v46 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          _D16.i16[0] = *(v46 + 2 * llroundf(fminf(fmaxf(*_D17.i32, 0.0), 8191.0)));
          __asm { FCVT            S14, H16 }

          v76 = (((v26 * _S22) + (v25 * _S20)) + (v27 * *&_D7)) + v31;
          v77 = _S20 + _S12;
          *_D17.i32 = *&_D7 + _S14;
          *&_D7 = ((v32 + ((_S20 + _S12) * v91)) + ((_S22 + _S13) * v90)) + ((*&_D7 + _S14) * v89);
          if (v76 < v31)
          {
            v78 = v31;
          }

          else
          {
            v78 = v76;
          }

          if (v76 <= v33)
          {
            v79 = v78;
          }

          else
          {
            v79 = v33;
          }

          *v55 = llroundf(v79);
          v80 = v35;
          if (*&_D7 <= v35)
          {
            v80 = *&_D7;
            if (*&_D7 < v34)
            {
              v80 = v34;
            }
          }

          v81 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v31;
          v82 = ((v32 + (v77 * v88)) + ((_S22 + _S13) * v87)) + (*_D17.i32 * v86);
          v55[1] = llroundf(v80);
          if (v81 < v31)
          {
            v83 = v31;
          }

          else
          {
            v83 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v31;
          }

          if (v81 <= v33)
          {
            v84 = v83;
          }

          else
          {
            v84 = v33;
          }

          v55[2] = llroundf(v84);
          v85 = v35;
          if (v82 <= v35)
          {
            v85 = v82;
            if (v82 < v34)
            {
              v85 = v34;
            }
          }

          v55[3] = llroundf(v85);
          if (v54)
          {
            *v54 = v57.i8[0];
            v54[1] = v57.i8[4];
            v54 += 2;
          }

          v53 += 16;
          v52 += 2;
          v55 += 4;
        }

        while (v52 < v30);
      }

      v28 += v22;
      v29 += v23;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_yuvsf_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 += v16[1] * v14 + v11;
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = **(result + 8);
    v20 = *v16;
    v21 = *(result + 19);
    LOWORD(a4) = *(v21 + 144);
    LOWORD(a5) = *(v21 + 146);
    LOWORD(a6) = *(v21 + 148);
    v22 = *v13 + v20 * v14;
    v23 = **(result + 7) + v19 * (*(result + 28) * a2 / v9 + *(result + 44)) + 8 * *(result + 36);
    v24 = (v22 + v11);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = *(v21 + 136);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    v29 = LODWORD(a6);
    LOWORD(a7) = *(v21 + 150);
    v30 = LODWORD(a7);
    LOWORD(a8) = *(v21 + 152);
    v31 = LODWORD(a8);
    v32 = *(v21 + 36);
    v33 = *(v21 + 40);
    v34 = *(v21 + 44);
    v35 = *(v21 + 48) * 0.5;
    v36 = *(v21 + 52) * 0.5;
    v37 = *(v21 + 56) * 0.5;
    v38 = *(v21 + 60) * 0.5;
    v39 = *(v21 + 64) * 0.5;
    v40 = *(v21 + 68) * 0.5;
    v41 = *(v21 + 157);
    v42 = *(v21 + 156);
    v43 = vdup_n_s32(0x437F0000u);
    v44 = *(v21 + 155);
    v45 = *(v21 + 154);
    do
    {
      if (v25 >= 1)
      {
        v46 = 0;
        v47 = v23;
        v48 = v17;
        v49 = v24;
        do
        {
          v50 = v47 + 8;
          if (v48)
          {
            v8.i16[0] = *(v47 + 2 * v41);
            v8.i16[1] = *(v50 + 2 * v41);
            v8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v8), v43)));
          }

          else
          {
            v8 = 0;
          }

          _H25 = *(v47 + 2 * v45);
          __asm { FCVT            S25, H25 }

          v57 = v26 * _S25;
          _H26 = *(v47 + 2 * v44);
          __asm { FCVT            S26, H26 }

          v60 = v26 * _S26;
          _H27 = *(v47 + 2 * v42);
          __asm { FCVT            S27, H27 }

          v63 = v26 * _S27;
          _H28 = *(v50 + 2 * v45);
          __asm { FCVT            S28, H28 }

          v66 = v26 * _S28;
          _H29 = *(v50 + 2 * v44);
          __asm { FCVT            S29, H29 }

          v69 = v26 * _S29;
          _H30 = *(v50 + 2 * v42);
          __asm { FCVT            S30, H30 }

          v72 = v26 * _S30;
          v73 = (((v33 * v60) + (v32 * v57)) + (v34 * v63)) + v27;
          v74 = (((v33 * v69) + (v32 * v66)) + (v34 * v72)) + v27;
          v75 = v57 + v66;
          v76 = v60 + v69;
          v77 = v63 + v72;
          v78 = ((v28 + (v75 * v35)) + (v76 * v36)) + (v77 * v37);
          v79 = (v28 + (v75 * v38)) + (v76 * v39);
          if (v73 < v27)
          {
            v80 = v27;
          }

          else
          {
            v80 = v73;
          }

          if (v73 > v29)
          {
            v80 = v29;
          }

          v81 = v79 + (v77 * v40);
          *v49 = llroundf(v80);
          if (v78 < v30)
          {
            v82 = v30;
          }

          else
          {
            v82 = v78;
          }

          if (v78 > v31)
          {
            v82 = v31;
          }

          v49[1] = llroundf(v82);
          if (v74 < v27)
          {
            v83 = v27;
          }

          else
          {
            v83 = v74;
          }

          if (v74 > v29)
          {
            v83 = v29;
          }

          v49[2] = llroundf(v83);
          v84 = v31;
          if (v81 <= v31)
          {
            v84 = v81;
            if (v81 < v30)
            {
              v84 = v30;
            }
          }

          v49[3] = llroundf(v84);
          if (v48)
          {
            *v48 = v8.i8[0];
            v48[1] = v8.i8[4];
            v48 += 2;
          }

          v47 += 16;
          v46 += 2;
          v49 += 4;
        }

        while (v46 < v25);
      }

      v23 += v19;
      v24 += v20;
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

__int16 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float16x8_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = 0;
  v7 = *(a1 + 36);
  v8 = *(a1 + 24);
  v9 = *a1;
  v10 = *(a1 + 28) * a2 / v9 + *(a1 + 44);
  v12 = *(a1 + 13);
  v11 = *(a1 + 14);
  v13 = v12 * a2;
  v14 = *(a1 + 19);
  v15 = *(a1 + 15);
  v16 = *(a1 + 16);
  v17 = *(a1 + 17);
  v18 = **(a1 + 8);
  result = **(a1 + 7);
  v173 = *v17;
  v20 = v17[1];
  v21 = v17[2];
  v22 = v16[1];
  v200 = *v16;
  v23 = v16[2];
  v209 = *(v14 + 154);
  v24 = *(v14 + 144);
  v25 = *(v14 + 132);
  v26 = v13 / v9;
  v27 = v13 / v9 + v15;
  v28 = *(v14 + 146);
  v172 = v18;
  v29 = v18 * v10;
  v30 = *(v14 + 148);
  v31 = *(v14 + 150);
  v32 = *(v14 + 152);
  v205 = *(v14 + 36);
  v204 = *(v14 + 40);
  v33.i32[0] = *(v14 + 48);
  v203 = *(v14 + 44);
  v35.i32[0] = *(v14 + 52);
  v34.i32[0] = *(v14 + 56);
  v36 = *(v14 + 60);
  v37 = *(v14 + 64);
  v38 = *(v14 + 68);
  v202 = *(v14 + 72);
  _S4 = *(v14 + 76);
  _S5 = *(v14 + 80);
  _S6 = *(v14 + 84);
  _S7 = *(v14 + 88);
  _S16 = *(v14 + 92);
  _S17 = *(v14 + 96);
  _S18 = *(v14 + 100);
  _S19 = *(v14 + 104);
  _S20 = *(v14 + 108);
  _S21 = *(v14 + 112);
  _S22 = *(v14 + 116);
  _S23 = *(v14 + 120);
  memset(v208, 0, sizeof(v208));
  v51 = (v12 + v13) / v9;
  do
  {
    v52 = 0;
    v53 = *(&v209 + v6);
    v54 = *(v208 + v6);
    do
    {
      v207 = v54;
      *(&v207 | v52 & 7) = v53 + 4 * v52;
      v54 = v207;
      ++v52;
    }

    while (v52 != 8);
    *(v208 + v6++) = v207;
  }

  while (v6 != 4);
  v55 = v51 - v26;
  if (v51 - v26 >= 1)
  {
    v56 = 0;
    v57 = v24;
    v58 = v28;
    v59 = v30;
    v206 = v31;
    v60 = v32;
    v33.i32[1] = v36;
    *a4.i8 = vmul_f32(v33, 0x3F0000003F000000);
    v35.i32[1] = v37;
    v34.i32[1] = v38;
    *a5.f32 = vmul_f32(v35, 0x3F0000003F000000);
    *a6.f32 = vmul_f32(v34, 0x3F0000003F000000);
    v61 = v14 + 16548;
    _S0 = v205;
    __asm { FCVT            H0, S0 }

    v198 = *&_S0;
    v67 = v8 & 0xFFFFFFFE;
    _S0 = v204;
    __asm { FCVT            H0, S0 }

    v197 = *&_S0;
    _S0 = v203;
    __asm { FCVT            H0, S0 }

    v196 = *&_S0;
    v70 = v14 + 32932;
    v195 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v71 = v14 + 164;
    v194 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v193 = _Q0;
    __asm { FCVT            H0, S20 }

    v192 = *_Q0.i16;
    __asm { FCVT            H0, S21 }

    v191 = *_Q0.i16;
    __asm { FCVT            H0, S22 }

    v190 = *_Q0.i16;
    __asm { FCVT            H0, S23 }

    v189 = *_Q0.i16;
    *_Q0.i32 = v202;
    __asm { FCVT            H0, S0 }

    v188 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v187 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v186 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v185 = *_Q0.i16;
    __asm { FCVT            H0, S7 }

    v184 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v183 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v182 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v181 = *_Q0.i16;
    *_Q0.i16 = v24;
    v73 = vdupq_lane_s16(*_Q0.i8, 0);
    __asm { FCVT            H0, S19 }

    v180 = *_Q0.i16;
    v74 = 16 - v25;
    *_Q0.i16 = v28;
    v75 = vdupq_lane_s16(*_Q0.i8, 0);
    v179 = v75;
    *v75.i16 = v30;
    v76 = vdupq_lane_s16(*v75.i8, 0);
    v178 = v76;
    if (v25 >= 0x11)
    {
      v74 = 0;
    }

    *v76.i16 = v31;
    v77 = vdupq_lane_s16(*v76.i8, 0);
    v177 = v77;
    if (v23)
    {
      v78 = v23 + v21 * v27 + 2 * v11;
    }

    else
    {
      v78 = 0;
    }

    *v77.i16 = v32;
    _Q0 = vdupq_lane_s16(*v77.i8, 0);
    v176 = _Q0;
    if (v22)
    {
      v80 = v22 + v20 * v27 + 2 * v11;
    }

    else
    {
      v80 = 0;
    }

    v81 = v200 + v173 * v27 + 2 * v11;
    v82 = &result[4 * v7] + v29;
    v83 = v74;
    v84 = vdupq_n_s16(v74);
    v199 = a5.f32[0];
    v201 = a4.i64[0];
    v175 = *&a4.i32[1];
    v85 = a6.i64[0];
    v174 = a5.f32[1];
    v86.i64[0] = 0x9000900090009000;
    v86.i64[1] = 0x9000900090009000;
    do
    {
      if (v8 < 8)
      {
        v116 = 0;
        v91 = v81;
        v90 = v80;
        v89 = v78;
        v88 = v82;
      }

      else
      {
        v87 = 0;
        v88 = v82;
        v89 = v78;
        v90 = v80;
        v91 = v81;
        do
        {
          v210 = vld4q_s16(v88);
          v88 += 32;
          if (v89)
          {
            v92 = vdupq_n_s32(0x477FFF00u);
            v93 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v210.val[3].i8), v92)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v210.val[3], v210.val[3], 8uLL)), v92)));
          }

          else
          {
            v93 = 0uLL;
          }

          v94.i64[0] = 0x7000700070007000;
          v94.i64[1] = 0x7000700070007000;
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v210.val[0], v94), 0), v86));
          v96.i16[0] = *(v71 + 2 * v95.u16[0]);
          v96.i16[1] = *(v71 + 2 * v95.u16[1]);
          v96.i16[2] = *(v71 + 2 * v95.u16[2]);
          v96.i16[3] = *(v71 + 2 * v95.u16[3]);
          v96.i16[4] = *(v71 + 2 * v95.u16[4]);
          v96.i16[5] = *(v71 + 2 * v95.u16[5]);
          v96.i16[6] = *(v71 + 2 * v95.u16[6]);
          v96.i16[7] = *(v71 + 2 * v95.u16[7]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v210.val[1], v94), 0), v86));
          v98.i16[0] = *(v71 + 2 * v97.u16[0]);
          v98.i16[1] = *(v71 + 2 * v97.u16[1]);
          v98.i16[2] = *(v71 + 2 * v97.u16[2]);
          v98.i16[3] = *(v71 + 2 * v97.u16[3]);
          v98.i16[4] = *(v71 + 2 * v97.u16[4]);
          v98.i16[5] = *(v71 + 2 * v97.u16[5]);
          v98.i16[6] = *(v71 + 2 * v97.u16[6]);
          v98.i16[7] = *(v71 + 2 * v97.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v210.val[2], v94), 0), v86));
          v94.i16[0] = *(v71 + 2 * v99.u16[0]);
          v94.i16[1] = *(v71 + 2 * v99.u16[1]);
          v94.i16[2] = *(v71 + 2 * v99.u16[2]);
          v94.i16[3] = *(v71 + 2 * v99.u16[3]);
          v94.i16[4] = *(v71 + 2 * v99.u16[4]);
          v94.i16[5] = *(v71 + 2 * v99.u16[5]);
          v94.i16[6] = *(v71 + 2 * v99.u16[6]);
          v94.i16[7] = *(v71 + 2 * v99.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v96, v192), v98, v191), v94, v190), vmaxq_f16(vmaxq_f16(v96, v98), v94), v189), 0), v86));
          v101.i16[0] = *(v61 + 2 * v100.u16[0]);
          v101.i16[1] = *(v61 + 2 * v100.u16[1]);
          v101.i16[2] = *(v61 + 2 * v100.u16[2]);
          v101.i16[3] = *(v61 + 2 * v100.u16[3]);
          v101.i16[4] = *(v61 + 2 * v100.u16[4]);
          v101.i16[5] = *(v61 + 2 * v100.u16[5]);
          v101.i16[6] = *(v61 + 2 * v100.u16[6]);
          v101.i16[7] = *(v61 + 2 * v100.u16[7]);
          v102 = vmulq_f16(v96, v101);
          v103 = vmulq_f16(v98, v101);
          v104 = vmulq_f16(v94, v101);
          v105 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v185), v103, v184), v104, v183);
          v106 = vmulq_n_f16(v104, v180);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v102, v188), v103, v187), v104, v186), 0), v86));
          v96.i16[0] = *(v70 + 2 * v107.u16[0]);
          v96.i16[1] = *(v70 + 2 * v107.u16[1]);
          v96.i16[2] = *(v70 + 2 * v107.u16[2]);
          v96.i16[3] = *(v70 + 2 * v107.u16[3]);
          v96.i16[4] = *(v70 + 2 * v107.u16[4]);
          v96.i16[5] = *(v70 + 2 * v107.u16[5]);
          v96.i16[6] = *(v70 + 2 * v107.u16[6]);
          v108 = vmlaq_n_f16(v106, v103, v181);
          v109 = v96;
          v109.i16[7] = *(v70 + 2 * v107.u16[7]);
          v110 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v86));
          v94.i16[0] = *(v70 + 2 * v110.u16[0]);
          v94.i16[1] = *(v70 + 2 * v110.u16[1]);
          v94.i16[2] = *(v70 + 2 * v110.u16[2]);
          v94.i16[3] = *(v70 + 2 * v110.u16[3]);
          v94.i16[4] = *(v70 + 2 * v110.u16[4]);
          v94.i16[5] = *(v70 + 2 * v110.u16[5]);
          v94.i16[6] = *(v70 + 2 * v110.u16[6]);
          v111 = v94;
          v111.i16[7] = *(v70 + 2 * v110.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v108, v102, v182), 0), v86));
          v102.i16[0] = *(v70 + 2 * v112.u16[0]);
          result = (v70 + 2 * v112.u16[4]);
          v102.i16[1] = *(v70 + 2 * v112.u16[1]);
          v102.i16[2] = *(v70 + 2 * v112.u16[2]);
          v102.i16[3] = *(v70 + 2 * v112.u16[3]);
          v102.i16[4] = *result;
          v102.i16[5] = *(v70 + 2 * v112.u16[5]);
          v102.i16[6] = *(v70 + 2 * v112.u16[6]);
          v113 = (v70 + 2 * v112.u16[7]);
          v114 = v102;
          v114.i16[7] = *v113;
          *v91++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v73, v109, v198), v111, v197), v114, v196), v73), v178)), v84);
          a4 = vaddq_f16(vuzp1q_s16(v96, v94), vuzp2q_s16(v109, v111));
          v115 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v179, v195, vzip1q_s16(a4, a4)), v194, vzip2q_s16(a4, a4)), v193, vaddq_f16(vtrn1q_s16(v102, v102), vtrn2q_s16(v114, v114)));
          a4.i32[1] = v176.i32[1];
          _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, v177), v176)), v84);
          *v90++ = _Q0;
          if (v89)
          {
            *v89 = v93;
            v89 += 16;
          }

          v87 += 8;
        }

        while (v87 < v8 - 7);
        v116 = v8 & 0xFFFFFFF8;
      }

      if (v116 < v67)
      {
        v117 = v88 + 4;
        do
        {
          v118 = &v117[v209];
          _Q0.i16[0] = *(v118 - 4);
          v119 = &v117[BYTE1(v209)];
          _Q0.i16[1] = *(v119 - 4);
          v120 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q0.i8), v120), 0), v120)));
          _D0.i16[0] = *(v71 + 2 * _D0.u32[0]);
          v122 = &v117[BYTE2(v209)];
          a4.i16[0] = *(v122 - 4);
          __asm { FCVT            S27, H0 }

          _D0.i16[0] = *(v71 + 2 * _D0.u32[1]);
          __asm { FCVT            S8, H0 }

          a4.i16[1] = *v118;
          *_Q0.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*a4.i8), v120), 0), v120)));
          _H1 = *(v71 + 2 * _Q0.u32[0]);
          __asm { FCVT            S9, H1 }

          v127 = fmaxf(_S27, fmaxf(_S8, _S9));
          v128 = (((_S21 * _S8) + (_S20 * _S27)) + (_S22 * _S9)) + (_S23 * v127);
          v129 = 8191.0;
          if (v128 <= 8191.0)
          {
            v129 = (((_S21 * _S8) + (_S20 * _S27)) + (_S22 * _S9)) + (_S23 * v127);
            if (v128 < 0.0)
            {
              v129 = 0.0;
            }
          }

          a4.i16[0] = *v119;
          _H0 = *(v71 + 2 * _Q0.u32[1]);
          a4.i16[1] = *v122;
          __asm { FCVT            S15, H0 }

          *_Q0.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*a4.i8), v120), 0), v120)));
          _Q0.i16[0] = *(v71 + 2 * _Q0.u32[0]);
          __asm { FCVT            S0, H0 }

          _H1 = *(v71 + 2 * _Q0.u32[1]);
          __asm { FCVT            S1, H1 }

          v134 = (((_S21 * *_Q0.i32) + (_S20 * _S15)) + (_S22 * _S1)) + (_S23 * fmaxf(_S15, fmaxf(*_Q0.i32, _S1)));
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = v134;
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          v136 = &v117[HIBYTE(v209)];
          v120.i16[0] = *(v136 - 4);
          v120.i16[1] = *v136;
          _H3 = *(v61 + 2 * llroundf(v129));
          __asm { FCVT            S3, H3 }

          v139 = _S27 * _S3;
          v140 = _S8 * _S3;
          v141 = _S9 * _S3;
          _H2 = *(v61 + 2 * llroundf(v135));
          __asm { FCVT            S2, H2 }

          v144 = _S15 * _S2;
          v145 = *_Q0.i32 * _S2;
          _S1 = _S1 * _S2;
          _S2 = ((_S4 * v140) + (v139 * v202)) + (v141 * _S5);
          v148 = ((_S7 * v140) + (v139 * _S6)) + (v141 * _S16);
          _S3 = ((_S18 * v140) + (v139 * _S17)) + (v141 * _S19);
          _S27 = ((_S4 * v145) + (v144 * v202)) + (_S1 * _S5);
          _S8 = ((_S7 * v145) + (v144 * _S6)) + (_S1 * _S16);
          _S0 = ((_S18 * v145) + (v144 * _S17)) + (_S1 * _S19);
          LOWORD(_S1) = *(v70 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v70 + 2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v70 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          LOWORD(_S27) = *(v70 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S27, H27
          }

          LOWORD(_S8) = *(v70 + 2 * llroundf(fminf(fmaxf(_S8, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          LOWORD(_S0) = *(v70 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S9, H0 }

          v159 = (((v204 * _S2) + (v205 * _S1)) + (v203 * _S3)) + v57;
          v160 = (((v204 * _S8) + (v205 * _S27)) + (v203 * _S9)) + v57;
          if (v159 < v57)
          {
            v161 = v57;
          }

          else
          {
            v161 = (((v204 * _S2) + (v205 * _S1)) + (v203 * _S3)) + v57;
          }

          if (v159 <= v59)
          {
            v162 = v161;
          }

          else
          {
            v162 = v59;
          }

          v91->i16[0] = llroundf(v162) << v83;
          if (v160 < v57)
          {
            v163 = v57;
          }

          else
          {
            v163 = (((v204 * _S8) + (v205 * _S27)) + (v203 * _S9)) + v57;
          }

          if (v160 > v59)
          {
            v163 = v59;
          }

          v91->i16[1] = llroundf(v163) << v83;
          v164 = _S1 + _S27;
          a4.i32[1] = HIDWORD(v201);
          *a4.i32 = _S2 + _S8;
          v165 = _S3 + _S9;
          v166 = ((v58 + (v164 * *&v201)) + (*a4.i32 * v199)) + ((_S3 + _S9) * *&v85);
          v167 = v60;
          if (v166 <= v60)
          {
            v167 = ((v58 + (v164 * *&v201)) + (*a4.i32 * v199)) + (v165 * *&v85);
            if (v166 < v206)
            {
              v167 = v206;
            }
          }

          v168 = ((v58 + (v164 * v175)) + (*a4.i32 * v174)) + (v165 * *(&v85 + 1));
          v90->i16[0] = llroundf(v167) << v83;
          v169 = v60;
          if (v168 <= v60)
          {
            v169 = v168;
            if (v168 < v206)
            {
              v169 = v206;
            }
          }

          v90->i16[1] = llroundf(v169) << v83;
          if (v89)
          {
            *a4.i8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v120), vdup_n_s32(0x477FFF00u))));
            *_Q0.i8 = vbic_s8(*a4.i8, vceqd_s64(v89, 0));
            *v89 = _Q0.i16[0];
            *(v89 + 2) = _Q0.i16[2];
            v89 += 4;
          }

          v116 += 2;
          v117 += 8;
          v91 = (v91 + 4);
          v90 = (v90 + 4);
        }

        while (v116 < v67);
      }

      v82 += v172;
      v81 += v173;
      v80 += v20;
      v78 += v21;
      ++v56;
    }

    while (v56 != v55);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, double _D3)
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
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    LOWORD(a3) = *(v14 + 144);
    v22 = LODWORD(a3);
    LOWORD(a4) = *(v14 + 146);
    v23 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 148);
    v24 = LODWORD(a5);
    LOWORD(_D3) = *(v14 + 150);
    v25 = LODWORD(_D3);
    LOWORD(_D3) = *(v14 + 152);
    v26 = LODWORD(_D3);
    v27 = *(v14 + 40);
    v129 = *(v14 + 36);
    v130 = v25;
    v28 = *(v14 + 44);
    v127 = *(v14 + 52) * 0.5;
    v128 = *(v14 + 48) * 0.5;
    v125 = *(v14 + 60) * 0.5;
    v126 = *(v14 + 56) * 0.5;
    v29 = *(v14 + 72);
    v123 = *(v14 + 68) * 0.5;
    v124 = *(v14 + 64) * 0.5;
    v30 = *(v14 + 76);
    v31 = *(v14 + 80);
    v32 = *(v14 + 84);
    v33 = *(v14 + 88);
    v34 = *(v14 + 92);
    v35 = *(v14 + 96);
    v36 = *(v14 + 100);
    v37 = *(v14 + 104);
    v38 = v14 + 164;
    v39 = v14 + 16548;
    v40 = v14 + 32932;
    v42 = *(v14 + 108);
    v41 = *(v14 + 112);
    v43 = *(v14 + 116);
    v44 = *(v14 + 120);
    v45 = *(result + 14);
    v46 = v11 + *(result + 15);
    v47 = *(result + 28) * a2 / v9 + *(result + 44);
    v48 = *(v14 + 132);
    if (v48 >= 0x11)
    {
      v49 = 0;
    }

    else
    {
      v49 = 16 - v48;
    }

    v50 = *(v14 + 157);
    v51 = *(v14 + 156);
    v52 = *(v14 + 155);
    v53 = *(v14 + 154);
    v54 = v17[2];
    if (v54)
    {
      v55 = v54 + v21 * v46 + 2 * v45;
    }

    else
    {
      v55 = 0;
    }

    v57 = *v17;
    v56 = v17[1];
    v58 = v56 + v20 * v46 + 2 * v45;
    if (!v56)
    {
      v58 = 0;
    }

    v59 = v57 + v19 * v46 + 2 * v45;
    v60 = **(result + 7) + v47 * v16 + 8 * *(result + 36);
    v61 = vdup_n_s32(0x45FFF800u);
    v62 = v49;
    do
    {
      if (v15 >= 1)
      {
        v63 = 0;
        v64 = v55;
        v65 = v59;
        v66 = v60;
        do
        {
          v67 = v23;
          LOWORD(_D3) = *(v66 + 2 * v53);
          v7.i16[0] = *(v66 + 2 * v51);
          v68 = v66 + 8;
          WORD1(_D3) = *(v66 + 2 * v52);
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D3), v61), 0), v61)));
          _D3.i16[0] = *(v38 + 2 * _D3.u32[0]);
          __asm { FCVT            S16, H3 }

          _D3.i16[0] = *(v38 + 2 * _D3.u32[1]);
          __asm { FCVT            S17, H3 }

          v7.i16[1] = *(v66 + 8 + 2 * v53);
          v76 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(v7), v61), 0), v61)));
          _H18 = *(v38 + 2 * v76.u32[0]);
          __asm { FCVT            S18, H18 }

          v79 = fmaxf(_S16, fmaxf(_S17, _S18));
          v80 = (((v41 * _S17) + (v42 * _S16)) + (v43 * _S18)) + (v44 * v79);
          v81 = 8191.0;
          if (v80 <= 8191.0)
          {
            v81 = (((v41 * _S17) + (v42 * _S16)) + (v43 * _S18)) + (v44 * v79);
            if (v80 < 0.0)
            {
              v81 = 0.0;
            }
          }

          v8.i16[0] = *(v68 + 2 * v52);
          _H3 = *(v38 + 2 * v76.u32[1]);
          v8.i16[1] = *(v68 + 2 * v51);
          __asm { FCVT            S20, H3 }

          _D3 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(v8), v61), 0), v61))));
          LOWORD(_D3) = *(v38 + 2 * LODWORD(_D3));
          __asm { FCVT            S22, H3 }

          LOWORD(_D3) = *(v38 + 2 * HIDWORD(_D3));
          __asm { FCVT            S3, H3 }

          v85 = (((v41 * _S22) + (v42 * _S20)) + (v43 * *&_D3)) + (v44 * fmaxf(_S20, fmaxf(_S22, *&_D3)));
          v8.i32[0] = 1174403072;
          if (v85 <= 8191.0)
          {
            *v8.i32 = v85;
            if (v85 < 0.0)
            {
              v8 = 0;
            }
          }

          v6.i16[0] = *(v66 + 2 * v50);
          v6.i16[1] = *(v68 + 2 * v50);
          _H13 = *(v39 + 2 * llroundf(v81));
          __asm { FCVT            S13, H13 }

          v88 = _S16 * _S13;
          v89 = _S17 * _S13;
          v90 = _S18 * _S13;
          _H19 = *(v39 + 2 * llroundf(*v8.i32));
          __asm { FCVT            S19, H19 }

          _S20 = _S20 * _S19;
          v94 = _S22 * _S19;
          v95 = *&_D3 * _S19;
          _S19 = ((v30 * v89) + (v88 * v29)) + (v90 * v31);
          v97 = ((v33 * v89) + (v88 * v32)) + (v90 * v34);
          _S16 = ((v36 * v89) + (v88 * v35)) + (v90 * v37);
          _S17 = ((v30 * v94) + (_S20 * v29)) + (v95 * v31);
          v100 = ((v33 * v94) + (_S20 * v32)) + (v95 * v34);
          _S3 = ((v36 * v94) + (_S20 * v35)) + (v95 * v37);
          LOWORD(_S19) = *(v40 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v40 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S16) = *(v40 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          LOWORD(_S17) = *(v40 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H16
            FCVT            S16, H17
          }

          LOWORD(_S17) = *(v40 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S3) = *(v40 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          v108 = (((v27 * _S20) + (v129 * _S19)) + (v28 * _S22)) + v22;
          v109 = (((v27 * _S17) + (v129 * _S16)) + (v28 * _S18)) + v22;
          if (v108 < v22)
          {
            v110 = v22;
          }

          else
          {
            v110 = (((v27 * _S20) + (v129 * _S19)) + (v28 * _S22)) + v22;
          }

          if (v108 > v24)
          {
            v110 = v24;
          }

          *v65 = llroundf(v110) << v62;
          if (v109 < v22)
          {
            v111 = v22;
          }

          else
          {
            v111 = (((v27 * _S17) + (v129 * _S16)) + (v28 * _S18)) + v22;
          }

          if (v109 > v24)
          {
            v111 = v24;
          }

          v65[1] = llroundf(v111) << v62;
          v112 = _S19 + _S16;
          v23 = v67;
          v113 = v67 + ((_S19 + _S16) * v128);
          v114 = _S20 + _S17;
          v115 = v113 + ((_S20 + _S17) * v127);
          v116 = _S22 + _S18;
          v117 = v115 + ((_S22 + _S18) * v126);
          v118 = v26;
          if (v117 <= v26)
          {
            v118 = v117;
            if (v117 < v130)
            {
              v118 = v130;
            }
          }

          v119 = (v58 + 2 * v63);
          v120 = ((v67 + (v112 * v125)) + (v114 * v124)) + (v116 * v123);
          *v119 = llroundf(v118) << v62;
          v121 = v26;
          if (v120 <= v26)
          {
            v121 = v120;
            if (v120 < v130)
            {
              v121 = v130;
            }
          }

          v119[1] = llroundf(v121) << v62;
          if (v64)
          {
            _D3 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v6), vdup_n_s32(0x477FFF00u)))));
            v122 = vbic_s8(*&_D3, vceqd_s64(v64, 0));
            *v64 = v122.i16[0];
            v64[1] = v122.i16[2];
            v64 += 2;
          }

          v66 += 16;
          v63 += 2;
          v65 += 2;
        }

        while (v63 < v15);
      }

      v60 += v16;
      v59 += v19;
      v58 += v20;
      v55 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_TRC_Mat_TRC_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

__int16 *vt_Copy_RGhA_TRC_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t _Q2)
{
  v6 = 0;
  v168 = *(a1 + 36);
  v7 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 28) * a2 / v8 + *(a1 + 44);
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  v12 = *(a1 + 19);
  v13 = *(a1 + 15);
  v14 = *(a1 + 16);
  v15 = *(a1 + 17);
  v16 = **(a1 + 8);
  result = **(a1 + 7);
  v18 = v15[1];
  v145 = *v15;
  v19 = v15[2];
  v21 = *v14;
  v20 = v14[1];
  v22 = v14[2];
  v23 = v11 * a2 / v8;
  v24 = v23 + v13;
  v144 = v16;
  v25 = v16 * v9;
  v173 = *(v12 + 154);
  v26 = *(v12 + 144);
  v27 = *(v12 + 132);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S28 = *(v12 + 36);
  _S30 = *(v12 + 40);
  _S12 = *(v12 + 44);
  v35.i32[0] = *(v12 + 48);
  a4.i32[0] = *(v12 + 52);
  v36.i32[0] = *(v12 + 56);
  v38 = *(v12 + 60);
  v37 = *(v12 + 64);
  _Q2.i32[0] = *(v12 + 68);
  _S13 = *(v12 + 72);
  _S4 = *(v12 + 76);
  _S5 = *(v12 + 80);
  _S6 = *(v12 + 84);
  _S7 = *(v12 + 88);
  _S16 = *(v12 + 92);
  _S17 = *(v12 + 96);
  _S18 = *(v12 + 100);
  _S19 = *(v12 + 104);
  memset(v172, 0, sizeof(v172));
  v48 = (v11 + v11 * a2) / v8;
  do
  {
    v49 = 0;
    v50 = *(&v173 + v6);
    v51 = *(v172 + v6);
    do
    {
      v171 = v51;
      *(&v171 | v49 & 7) = v50 + 4 * v49;
      v51 = v171;
      ++v49;
    }

    while (v49 != 8);
    *(v172 + v6++) = v171;
  }

  while (v6 != 4);
  v52 = v48 - v23;
  if (v48 - v23 >= 1)
  {
    v53 = 0;
    v54 = v26;
    v55 = v28;
    v56 = v29;
    v170 = v30;
    v57 = v31;
    v35.i32[1] = v38;
    *v5.f32 = vmul_f32(v35, 0x3F0000003F000000);
    a4.i32[1] = v37;
    v36.i32[1] = _Q2.i32[0];
    *a4.f32 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    *_Q2.f32 = vmul_f32(v36, 0x3F0000003F000000);
    v58 = v12 + 164;
    __asm { FCVT            H0, S28 }

    v166 = _H0;
    v64 = v12 + 16548;
    __asm { FCVT            H0, S30 }

    v165 = _H0;
    v66 = v7 & 0xFFFFFFFE;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v163 = _Q0;
    v164 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    *_Q0.i8 = vcvt_f16_f32(_Q2);
    v68 = vdupq_lane_s32(*_Q0.i8, 0);
    __asm { FCVT            H0, S12 }

    v161 = *_Q0.i16;
    v162 = v68;
    __asm { FCVT            H0, S13 }

    v160 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v159 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v158 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v157 = *_Q0.i16;
    __asm { FCVT            H0, S7 }

    v156 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v155 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v154 = _Q0;
    __asm { FCVT            H0, S18 }

    v153 = *_Q0.i16;
    *_Q0.i16 = v26;
    v69 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v28;
    v70 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v29;
    _Q0 = vdupq_lane_s16(*_Q0.i8, 0);
    v151 = _Q0;
    v152 = v70;
    __asm { FCVT            H0, S19 }

    v150 = *_Q0.i16;
    v72 = 16 - v27;
    if (v27 >= 0x11)
    {
      v72 = 0;
    }

    *_Q0.i16 = v30;
    v73 = vdupq_lane_s16(*_Q0.i8, 0);
    if (v22)
    {
      v74 = v22 + v19 * v24 + 2 * v10;
    }

    else
    {
      v74 = 0;
    }

    *_Q0.i16 = v31;
    _Q0 = vdupq_lane_s16(*_Q0.i8, 0);
    v148 = _Q0;
    v149 = v73;
    if (v20)
    {
      v76 = v20 + v18 * v24 + 2 * v10;
    }

    else
    {
      v76 = 0;
    }

    v77 = v21 + v145 * v24 + 2 * v10;
    v78 = &result[4 * v168] + v25;
    v79 = v72;
    v80 = vdupq_n_s16(v72);
    v167 = a4.f32[0];
    v169 = v5.i64[0];
    v146 = a4.f32[1];
    v147 = v5.f32[1];
    v81 = _Q2.i64[0];
    v82.i64[0] = 0x9000900090009000;
    v82.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v109 = 0;
        v87 = v76;
        v86 = v74;
        v85 = v77;
        v84 = v78;
      }

      else
      {
        v83 = 0;
        v84 = v78;
        v85 = v77;
        v86 = v74;
        v87 = v76;
        do
        {
          v174 = vld4q_s16(v84);
          v84 += 32;
          if (v86)
          {
            v88 = vdupq_n_s32(0x477FFF00u);
            v89 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v174.val[3].i8), v88)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v174.val[3], v174.val[3], 8uLL)), v88)));
          }

          else
          {
            v89 = 0uLL;
          }

          v90.i64[0] = 0x7000700070007000;
          v90.i64[1] = 0x7000700070007000;
          v91 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v174.val[0], v90), 0), v82));
          v92.i16[0] = *(v58 + 2 * v91.u16[0]);
          v92.i16[1] = *(v58 + 2 * v91.u16[1]);
          v92.i16[2] = *(v58 + 2 * v91.u16[2]);
          v92.i16[3] = *(v58 + 2 * v91.u16[3]);
          v92.i16[4] = *(v58 + 2 * v91.u16[4]);
          v92.i16[5] = *(v58 + 2 * v91.u16[5]);
          v92.i16[6] = *(v58 + 2 * v91.u16[6]);
          v92.i16[7] = *(v58 + 2 * v91.u16[7]);
          v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v174.val[1], v90), 0), v82));
          v94.i16[0] = *(v58 + 2 * v93.u16[0]);
          v94.i16[1] = *(v58 + 2 * v93.u16[1]);
          v94.i16[2] = *(v58 + 2 * v93.u16[2]);
          v94.i16[3] = *(v58 + 2 * v93.u16[3]);
          v94.i16[4] = *(v58 + 2 * v93.u16[4]);
          v94.i16[5] = *(v58 + 2 * v93.u16[5]);
          v94.i16[6] = *(v58 + 2 * v93.u16[6]);
          v94.i16[7] = *(v58 + 2 * v93.u16[7]);
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v174.val[2], v90), 0), v82));
          v96.i16[0] = *(v58 + 2 * v95.u16[0]);
          v96.i16[1] = *(v58 + 2 * v95.u16[1]);
          v96.i16[2] = *(v58 + 2 * v95.u16[2]);
          v96.i16[3] = *(v58 + 2 * v95.u16[3]);
          v96.i16[4] = *(v58 + 2 * v95.u16[4]);
          v96.i16[5] = *(v58 + 2 * v95.u16[5]);
          v96.i16[6] = *(v58 + 2 * v95.u16[6]);
          v96.i16[7] = *(v58 + 2 * v95.u16[7]);
          v97 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v92, v157), v94, v156), v96, v155);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v92, v160), v94, v159), v96, v158), 0), v82));
          v93.i16[0] = *(v64 + 2 * v98.u16[0]);
          v93.i16[1] = *(v64 + 2 * v98.u16[1]);
          v93.i16[2] = *(v64 + 2 * v98.u16[2]);
          v93.i16[3] = *(v64 + 2 * v98.u16[3]);
          v93.i16[4] = *(v64 + 2 * v98.u16[4]);
          v93.i16[5] = *(v64 + 2 * v98.u16[5]);
          v93.i16[6] = *(v64 + 2 * v98.u16[6]);
          v99 = vmlaq_n_f16(vmulq_n_f16(v96, v150), v94, v153);
          v100 = v93;
          v100.i16[7] = *(v64 + 2 * v98.u16[7]);
          v101 = vminq_f16(vmaxq_f16(v97, 0), v82);
          v102 = vcvtq_u16_f16(v101);
          v101.i16[0] = *(v64 + 2 * v102.u16[0]);
          v101.i16[1] = *(v64 + 2 * v102.u16[1]);
          v101.i16[2] = *(v64 + 2 * v102.u16[2]);
          v101.i16[3] = *(v64 + 2 * v102.u16[3]);
          v101.i16[4] = *(v64 + 2 * v102.u16[4]);
          v101.i16[5] = *(v64 + 2 * v102.u16[5]);
          v101.i16[6] = *(v64 + 2 * v102.u16[6]);
          v103 = (v64 + 2 * v102.u16[7]);
          _Q2 = v101;
          _Q2.i16[7] = *v103;
          v104.i16[7] = v154.i16[7];
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v99, v92, *v154.i16), 0), v82));
          v104.i16[0] = *(v64 + 2 * v105.u16[0]);
          result = (v64 + 2 * v105.u16[3]);
          v104.i16[1] = *(v64 + 2 * v105.u16[1]);
          v104.i16[2] = *(v64 + 2 * v105.u16[2]);
          v104.i16[3] = *result;
          v104.i16[4] = *(v64 + 2 * v105.u16[4]);
          v104.i16[5] = *(v64 + 2 * v105.u16[5]);
          v104.i16[6] = *(v64 + 2 * v105.u16[6]);
          v106 = (v64 + 2 * v105.u16[7]);
          v107 = vtrn1q_s16(v104, v104);
          v104.i16[7] = *v106;
          *v85++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v100, v166), _Q2, v165), v104, v161), v69), v151)), v80);
          v108 = vaddq_f16(vuzp1q_s16(v93, v101), vuzp2q_s16(v100, _Q2));
          _Q2.i32[1] = v163.i32[1];
          v73 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v152, v164, vzip1q_s16(v108, v108)), v163, vzip2q_s16(v108, v108)), v162, vaddq_f16(v107, vtrn2q_s16(v104, v104)));
          _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v73, v149), v148)), v80);
          *v87++ = _Q0;
          if (v86)
          {
            *v86++ = v89;
          }

          v83 += 8;
        }

        while (v83 < v7 - 7);
        v109 = v7 & 0xFFFFFFF8;
      }

      if (v109 < v66)
      {
        v110 = v84 + 4;
        do
        {
          if (v86)
          {
            v111 = &v110[HIBYTE(v173)];
            _Q0.i16[0] = *(v111 - 4);
            _Q0.i16[1] = *v111;
            *_Q0.i8 = vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*_Q0.i8), vdup_n_s32(0x477FFF00u)));
            v112 = vcvt_s32_f32(*_Q0.i8);
          }

          else
          {
            v112 = 0;
          }

          v113 = &v110[v173];
          _Q0.i16[0] = *(v113 - 4);
          v114 = &v110[BYTE1(v173)];
          _Q0.i16[1] = *(v114 - 4);
          v115 = vdup_n_s32(0x45FFF800u);
          *_Q0.i8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q0.i8), v115), 0), v115)));
          result = _Q0.u32[1];
          _Q0.i16[0] = *(v58 + 2 * _Q0.u32[0]);
          v116 = &v110[BYTE2(v173)];
          _Q2.i16[0] = *(v116 - 4);
          v73.i16[0] = *v114;
          __asm { FCVT            S0, H0 }

          _H25 = *(v58 + 2 * _Q0.u32[1]);
          _Q2.i16[1] = *v113;
          __asm { FCVT            S25, H25 }

          *_Q2.f32 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*_Q2.f32), v115), 0), v115)));
          _Q2.i16[0] = *(v58 + 2 * _Q2.u32[0]);
          __asm { FCVT            S2, H2 }

          _H27 = *(v58 + 2 * _Q2.u32[1]);
          __asm { FCVT            S27, H27 }

          v73.i16[1] = *v116;
          _D1 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*v73.i8), v115), 0), v115)));
          _D1.i16[0] = *(v58 + 2 * _D1.u32[0]);
          __asm { FCVT            S1, H1 }

          _H3 = *(v58 + 2 * _D1.u32[1]);
          __asm { FCVT            S3, H3 }

          v124 = ((_S4 * _S25) + (*_Q0.i32 * _S13)) + (_Q2.f32[0] * _S5);
          _S23 = ((_S7 * _S25) + (*_Q0.i32 * _S6)) + (_Q2.f32[0] * _S16);
          *_Q0.i32 = ((_S18 * _S25) + (*_Q0.i32 * _S17)) + (_Q2.f32[0] * _S19);
          _Q2.f32[0] = ((_S4 * *_D1.i32) + (_S27 * _S13)) + (_S3 * _S5);
          v126 = ((_S7 * *_D1.i32) + (_S27 * _S6)) + (_S3 * _S16);
          *_D1.i32 = ((_S18 * *_D1.i32) + (_S27 * _S17)) + (_S3 * _S19);
          LOWORD(_S3) = *(v64 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S23) = *(v64 + 2 * llroundf(fminf(fmaxf(_S23, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          _Q0.i16[0] = *(v64 + 2 * llroundf(fminf(fmaxf(*_Q0.i32, 0.0), 8191.0)));
          _Q2.i16[0] = *(v64 + 2 * llroundf(fminf(fmaxf(_Q2.f32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S11, H0
            FCVT            S0, H2
          }

          _Q2.i16[0] = *(v64 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          LODWORD(v113) = llroundf(fminf(fmaxf(*_D1.i32, 0.0), 8191.0));
          __asm { FCVT            S1, H2 }

          _Q2.i16[0] = *(v64 + 2 * v113);
          __asm { FCVT            S2, H2 }

          v131 = (((_S30 * _S23) + (_S28 * _S3)) + (_S12 * _S11)) + v54;
          v132 = (((_S30 * _S1) + (_S28 * *_Q0.i32)) + (_S12 * _Q2.f32[0])) + v54;
          if (v131 < v54)
          {
            v133 = v26;
          }

          else
          {
            v133 = (((_S30 * _S23) + (_S28 * _S3)) + (_S12 * _S11)) + v54;
          }

          if (v131 <= v56)
          {
            v134 = v133;
          }

          else
          {
            v134 = v56;
          }

          v85->i16[0] = llroundf(v134) << v79;
          if (v132 < v54)
          {
            v135 = v26;
          }

          else
          {
            v135 = (((_S30 * _S1) + (_S28 * *_Q0.i32)) + (_S12 * _Q2.f32[0])) + v54;
          }

          if (v132 > v56)
          {
            v135 = v56;
          }

          v85->i16[1] = llroundf(v135) << v79;
          v136 = _S3 + *_Q0.i32;
          v137 = _S23 + _S1;
          v138 = _S11 + _Q2.f32[0];
          v139 = ((v55 + (v136 * *&v169)) + (v137 * v167)) + (v138 * *&v81);
          v73.i64[0] = __PAIR64__(HIDWORD(v169), LODWORD(v57));
          if (v139 <= v57)
          {
            *v73.i32 = ((v55 + (v136 * *&v169)) + (v137 * v167)) + (v138 * *&v81);
            if (v139 < v170)
            {
              *v73.i32 = v170;
            }
          }

          v140 = ((v55 + (v136 * v147)) + (v137 * v146)) + (v138 * *(&v81 + 1));
          v87->i16[0] = llroundf(*v73.i32) << v79;
          v141 = v57;
          if (v140 <= v57)
          {
            v141 = v140;
            if (v140 < v170)
            {
              v141 = v170;
            }
          }

          v87->i16[1] = llroundf(v141) << v79;
          if (v86)
          {
            v86->i16[0] = v112.i16[0];
            v86->i16[1] = v112.i16[2];
            v86 = (v86 + 4);
          }

          v109 += 2;
          v110 += 8;
          v85 = (v85 + 4);
          v87 = (v87 + 4);
        }

        while (v109 < v66);
      }

      v78 += v144;
      v77 += v145;
      v76 += v18;
      v74 += v19;
      ++v53;
    }

    while (v53 != v52);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_TRC_Mat_TRC_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, double _D4)
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
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    LOWORD(a3) = *(v14 + 144);
    v22 = LODWORD(a3);
    LOWORD(a4) = *(v14 + 146);
    v23 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 148);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 150);
    v25 = LODWORD(a6);
    LOWORD(_D4) = *(v14 + 152);
    v26 = LODWORD(_D4);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v99 = *(v14 + 48) * 0.5;
    v98 = *(v14 + 52) * 0.5;
    v97 = *(v14 + 56) * 0.5;
    v96 = *(v14 + 60) * 0.5;
    v95 = *(v14 + 64) * 0.5;
    v30 = *(v14 + 72);
    v31 = *(v14 + 68) * 0.5;
    v32 = *(v14 + 76);
    v33 = *(v14 + 80);
    v34 = *(v14 + 84);
    v35 = *(v14 + 88);
    v36 = *(v14 + 92);
    v37 = *(v14 + 96);
    v38 = *(v14 + 100);
    v39 = *(v14 + 104);
    v40 = v14 + 164;
    v41 = v14 + 16548;
    v42 = *(result + 14);
    v43 = v11 + *(result + 15);
    v44 = *(result + 28) * a2 / v9 + *(result + 44);
    v45 = *(v14 + 132);
    if (v45 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v45;
    }

    v47 = *(v14 + 157);
    v48 = *(v14 + 156);
    v49 = *(v14 + 155);
    v50 = *(v14 + 154);
    v51 = v17[2];
    if (v51)
    {
      v52 = v51 + v21 * v43 + 2 * v42;
    }

    else
    {
      v52 = 0;
    }

    v54 = *v17;
    v53 = v17[1];
    v55 = v53 + v20 * v43 + 2 * v42;
    if (!v53)
    {
      v55 = 0;
    }

    v56 = v54 + v19 * v43 + 2 * v42;
    v57 = **(result + 7) + v44 * v16 + 8 * *(result + 36);
    v58 = vdup_n_s32(0x45FFF800u);
    v59 = v46;
    do
    {
      if (v15 >= 1)
      {
        v60 = 0;
        v61 = v57;
        v62 = v52;
        v63 = v56;
        do
        {
          v64 = v61 + 8;
          if (v62)
          {
            LOWORD(_D4) = *(v61 + 2 * v47);
            WORD1(_D4) = *(v64 + 2 * v47);
            _D4 = COERCE_DOUBLE(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), vdup_n_s32(0x477FFF00u))));
            v65 = vcvt_s32_f32(*&_D4);
          }

          else
          {
            v65 = 0;
          }

          LOWORD(_D4) = *(v61 + 2 * v50);
          _D12.i16[0] = *(v61 + 2 * v48);
          _D13.i16[0] = *(v64 + 2 * v49);
          WORD1(_D4) = *(v61 + 2 * v49);
          _D4 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), v58), 0), v58))));
          LOWORD(_D4) = *(v40 + 2 * LODWORD(_D4));
          _H14 = *(v40 + 2 * HIDWORD(_D4));
          _D12.i16[1] = *(v64 + 2 * v50);
          __asm { FCVT            S4, H4 }

          _D12 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D12), v58), 0), v58)));
          _D12.i16[0] = *(v40 + 2 * _D12.u32[0]);
          __asm
          {
            FCVT            S14, H14
            FCVT            S12, H12
          }

          _H15 = *(v40 + 2 * _D12.u32[1]);
          _D13.i16[1] = *(v64 + 2 * v48);
          __asm { FCVT            S15, H15 }

          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D13), v58), 0), v58)));
          _D13.i16[0] = *(v40 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _H17 = *(v40 + 2 * _D13.u32[1]);
          __asm { FCVT            S17, H17 }

          _S18 = ((v32 * _S14) + (*&_D4 * v30)) + (*_D12.i32 * v33);
          _S19 = ((v35 * _S14) + (*&_D4 * v34)) + (*_D12.i32 * v36);
          *&_D4 = ((v38 * _S14) + (*&_D4 * v37)) + (*_D12.i32 * v39);
          *_D12.i32 = ((v32 * *_D13.i32) + (_S15 * v30)) + (_S17 * v33);
          v78 = ((v35 * *_D13.i32) + (_S15 * v34)) + (_S17 * v36);
          v79 = ((v38 * *_D13.i32) + (_S15 * v37)) + (_S17 * v39);
          LOWORD(_S18) = *(v41 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S19) = *(v41 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_D4) = *(v41 + 2 * llroundf(fminf(fmaxf(*&_D4, 0.0), 8191.0)));
          _D12.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(*_D12.i32, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H4
            FCVT            S12, H12
          }

          _D13.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          v82 = llroundf(fminf(fmaxf(v79, 0.0), 8191.0));
          __asm { FCVT            S17, H13 }

          _D13.i16[0] = *(v41 + 2 * v82);
          __asm { FCVT            S14, H13 }

          *_D13.i32 = (((v28 * _S19) + (v27 * _S18)) + (v29 * *&_D4)) + v22;
          v85 = (((v28 * _S17) + (v27 * *_D12.i32)) + (v29 * _S14)) + v22;
          if (*_D13.i32 < v22)
          {
            v86 = v22;
          }

          else
          {
            v86 = (((v28 * _S19) + (v27 * _S18)) + (v29 * *&_D4)) + v22;
          }

          if (*_D13.i32 > v24)
          {
            v86 = v24;
          }

          *v63 = llroundf(v86) << v59;
          if (v85 < v22)
          {
            v87 = v22;
          }

          else
          {
            v87 = (((v28 * _S17) + (v27 * *_D12.i32)) + (v29 * _S14)) + v22;
          }

          if (v85 > v24)
          {
            v87 = v24;
          }

          v63[1] = llroundf(v87) << v59;
          v88 = _S18 + *_D12.i32;
          v89 = *&_D4 + _S14;
          v90 = ((v23 + (v88 * v99)) + ((_S19 + _S17) * v98)) + (v89 * v97);
          v91 = v26;
          if (v90 <= v26)
          {
            v91 = ((v23 + (v88 * v99)) + ((_S19 + _S17) * v98)) + (v89 * v97);
            if (v90 < v25)
            {
              v91 = v25;
            }
          }

          v92 = (v55 + 2 * v60);
          v93 = ((v23 + (v88 * v96)) + ((_S19 + _S17) * v95)) + (v89 * v31);
          *v92 = llroundf(v91) << v59;
          v94 = v26;
          if (v93 <= v26)
          {
            v94 = v93;
            if (v93 < v25)
            {
              v94 = v25;
            }
          }

          v92[1] = llroundf(v94) << v59;
          if (v62)
          {
            *v62 = v65.i16[0];
            v62[1] = v65.i16[2];
            v62 += 2;
          }

          v61 += 16;
          v60 += 2;
          v63 += 2;
        }

        while (v60 < v15);
      }

      v57 += v16;
      v56 += v19;
      v55 += v20;
      v52 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_rgb_xf422_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_rgb_xf422_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v5 = 0;
  v122 = *(result + 36);
  v6 = *(result + 24);
  v7 = *result;
  v8 = *(result + 28) * a2 / v7 + *(result + 44);
  v10 = *(result + 13);
  v9 = *(result + 14);
  v11 = v10 * a2;
  v12 = *(result + 19);
  v13 = *(result + 16);
  v14 = *(result + 17);
  v15 = v11 / v7;
  v16 = v11 / v7 + *(result + 15);
  v17 = **(result + 8);
  v18 = v10 + v11;
  v120 = v17 * v8;
  v121 = **(result + 7);
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v23 = *v13;
  v22 = v13[1];
  v24 = v13[2];
  v25 = *(v12 + 136);
  v131 = *(v12 + 154);
  v26 = *(v12 + 144);
  v27 = *(v12 + 132);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v35.i32[0] = *(v12 + 48);
  v2.i32[0] = *(v12 + 52);
  v3.i32[0] = *(v12 + 56);
  v37 = *(v12 + 60);
  v36 = *(v12 + 64);
  v38 = *(v12 + 68);
  memset(v130, 0, sizeof(v130));
  v39 = v18 / v7;
  do
  {
    v40 = 0;
    v41 = *(&v131 + v5);
    v42 = *(v130 + v5);
    do
    {
      v129 = v42;
      *(&v129 | v40 & 7) = v41 + 4 * v40;
      v42 = v129;
      ++v40;
    }

    while (v40 != 8);
    *(v130 + v5++) = v129;
  }

  while (v5 != 4);
  v43 = v39 - v15;
  if (v39 - v15 >= 1)
  {
    v44 = 0;
    _S3 = v25;
    v46 = v6 & 0xFFFFFFFE;
    v47 = v26;
    v48 = v28;
    v49 = v29;
    v50 = v30;
    v51 = v31;
    v35.i32[1] = v37;
    *v4.f32 = vmul_f32(v35, 0x3F0000003F000000);
    v2.i32[1] = v36;
    *v2.f32 = vmul_f32(*v2.f32, 0x3F0000003F000000);
    v3.i32[1] = v38;
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    __asm { FCVT            H8, S0 }

    v128 = _H8;
    __asm { FCVT            H8, S1 }

    v126 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v127 = _H8;
    v62 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v124 = v62;
    v125 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    *v62.i16 = v26;
    v58 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v28;
    v59 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v29;
    v60 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v30;
    v61 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v31;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    __asm { FCVT            H10, S2 }

    v65 = 16 - v27;
    if (v27 >= 0x11)
    {
      v65 = 0;
    }

    if (v24)
    {
      v66 = v24 + v21 * v16 + 2 * v9;
    }

    else
    {
      v66 = 0;
    }

    if (v22)
    {
      v67 = v22 + v20 * v16 + 2 * v9;
    }

    else
    {
      v67 = 0;
    }

    v68 = v23 + v19 * v16 + 2 * v9;
    v69 = v121 + v120 + 8 * v122;
    v70 = v65;
    v71 = vdupq_n_s16(v65);
    __asm { FCVT            H11, S3 }

    v73 = v2.i64[0];
    v74 = v3.i64[0];
    do
    {
      if (v6 < 8)
      {
        v86 = 0;
        v79 = v67;
        v78 = v66;
        v77 = v68;
        v76 = v69;
      }

      else
      {
        v75 = 0;
        v76 = v69;
        v77 = v68;
        v78 = v66;
        v79 = v67;
        do
        {
          v132 = vld4q_s16(v76);
          v76 += 32;
          if (v78)
          {
            v80 = vdupq_n_s32(0x477FFF00u);
            v81 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*v132.val[3].i8), v80)), vcvtq_u32_f32(vmulq_f32(vcvtq_f32_f16(*&vextq_s8(v132.val[3], v132.val[3], 8uLL)), v80)));
          }

          else
          {
            v81 = 0uLL;
          }

          v82 = vmulq_n_f16(v132.val[0], _H11);
          v83 = vmulq_n_f16(v132.val[1], _H11);
          v84 = vmulq_n_f16(v132.val[2], _H11);
          *v77++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v82, v128), v83, v127), v84, _H10), v58), v60)), v71);
          v85 = vpaddq_f16(v82, v83);
          v62 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v59, v126, vzip1q_s16(v85, v85)), v125, vzip2q_s16(v85, v85)), v124, vaddq_f16(vtrn1q_s16(v84, v84), vtrn2q_s16(v84, v84))), v61), v63)), v71);
          *v79++ = v62;
          if (v78)
          {
            *v78++ = v81;
          }

          v75 += 8;
        }

        while (v75 < v6 - 7);
        v86 = v6 & 0x7FFFFFF8;
      }

      if (v86 < v46)
      {
        v87 = v76 + 4;
        do
        {
          if (v78)
          {
            v88 = &v87[HIBYTE(v131)];
            v62.i16[0] = *(v88 - 4);
            v62.i16[1] = *v88;
            *v62.i8 = vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*v62.i8), vdup_n_s32(0x477FFF00u)));
            v89 = vcvt_s32_f32(*v62.i8);
          }

          else
          {
            v89 = 0;
          }

          v90 = &v87[v131];
          _H17 = *(v90 - 4);
          __asm { FCVT            S17, H17 }

          v93 = _S3 * _S17;
          v94 = &v87[BYTE1(v131)];
          LOWORD(_S17) = *(v94 - 4);
          __asm { FCVT            S17, H17 }

          v96 = _S3 * _S17;
          v97 = &v87[BYTE2(v131)];
          LOWORD(_S17) = *(v97 - 4);
          __asm { FCVT            S17, H17 }

          v99 = _S3 * _S17;
          v100 = (((_S1 * v96) + (_S0 * v93)) + (_S2 * (_S3 * _S17))) + v47;
          v101 = v49;
          if (v100 <= v49)
          {
            v101 = v100;
            if (v100 < v47)
            {
              v101 = v26;
            }
          }

          _H17 = *v90;
          __asm { FCVT            S17, H17 }

          v104 = _S3 * _S17;
          _H18 = *v94;
          __asm { FCVT            S18, H18 }

          v107 = _S3 * _S18;
          _H20 = *v97;
          __asm { FCVT            S20, H20 }

          v110 = _S3 * _S20;
          v111 = (((_S1 * v107) + (_S0 * v104)) + (_S2 * (_S3 * _S20))) + v47;
          v77->i16[0] = llroundf(v101) << v70;
          v112 = v49;
          if (v111 <= v49)
          {
            v112 = v111;
            if (v111 < v47)
            {
              v112 = v26;
            }
          }

          v77->i16[1] = llroundf(v112) << v70;
          v113 = v93 + v104;
          v114 = v96 + v107;
          v115 = v99 + v110;
          v116 = ((v48 + (v113 * v4.f32[0])) + (v114 * *&v73)) + ((v99 + v110) * *&v74);
          v117 = v51;
          if (v116 <= v51)
          {
            v117 = v116;
            if (v116 < v50)
            {
              v117 = v50;
            }
          }

          v118 = ((v48 + (v113 * v4.f32[1])) + (v114 * *(&v73 + 1))) + (v115 * *(&v74 + 1));
          v79->i16[0] = llroundf(v117) << v70;
          v119 = v51;
          if (v118 <= v51)
          {
            v119 = v118;
            if (v118 < v50)
            {
              v119 = v50;
            }
          }

          v79->i16[1] = llroundf(v119) << v70;
          if (v78)
          {
            v78->i16[0] = v89.i16[0];
            v78->i16[1] = v89.i16[2];
            v78 = (v78 + 4);
          }

          v86 += 2;
          v87 += 8;
          v77 = (v77 + 4);
          v79 = (v79 + 4);
        }

        while (v86 < v46);
      }

      v69 += v17;
      v68 += v19;
      v67 += v20;
      v66 += v21;
      ++v44;
    }

    while (v44 != v43);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v60 = a7;
  v65 = a5;
  v67 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v59 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v63 = a6[1];
  v64 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v57 = a1;
  v58 = v17;
  v19 = a6[4];
  v61 = a6[5];
  v66 = v16;
  v21 = v14 + v13 != v12 || v19 + v18 != v16;
  if (v10 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_59:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v22 = (&v55 - v24);
    bzero(&v55 - v24, v25);
  }

  v56 = a3;
  v26 = a9;
  v27 = v18 - 1;
  v28 = v13 - 1;
  if (v19)
  {
    v29 = v14 + 1;
  }

  else
  {
    v28 = v13;
    v29 = v14;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v18;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v61;
    if (v21 || (8 * (v29 + v28) + 8) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v66;
      ++v28;
      ++v12;
      ++v27;
    }
  }

  else
  {
    v31 = v61;
  }

  if (v28 + v29 > v12)
  {
    v28 = v12 - v29;
  }

  if (v27 + v30 > v66)
  {
    v27 = v66 - v30;
  }

  if (v15 + v59 <= v64)
  {
    v35 = v59;
  }

  else
  {
    v35 = v64 - v15;
  }

  if (v31 + v58 <= v63)
  {
    v36 = v58;
  }

  else
  {
    v36 = v63 - v31;
  }

  if (v28 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v28;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if ((*v67 * (v15 + v38 - 1) + 8 * (v37 + v29)) <= *v65)
  {
    v43 = v31 + v38 - 1;
    v44 = v37 + v30;
    if ((*v62 * v43 + 2 * (v37 + v30)) <= *a9)
    {
      v45 = v60;
      if (*(v60 + 8) && v62[1] * v43 + 4 * ((v44 + 1 + ((v44 + 1) >> 63)) >> 1) > a9[1])
      {
        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }

      else
      {
        if (!*(v60 + 16) || (2 * v44 + v62[2] * v43) <= a9[2])
        {
          goto LABEL_53;
        }

        v59 = v29;
        v39 = v10;
        v40 = v12;
        v41 = v15;
        v42 = a9;
      }
    }

    else
    {
      v59 = v29;
      v39 = v10;
      v40 = v12;
      v41 = v15;
      v42 = a9;
    }
  }

  else
  {
    v59 = v29;
    v39 = v10;
    v40 = v12;
    v41 = v15;
    v42 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v60;
  v31 = v61;
  v26 = v42;
  v15 = v41;
  v12 = v40;
  v10 = v39;
  v29 = v59;
  if (v46)
  {
    v23 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v22 = v10;
  *(v22 + 4) = v12;
  v47 = v63;
  *(v22 + 12) = v64;
  *(v22 + 20) = v37;
  *(v22 + 28) = v38;
  *(v22 + 36) = v29;
  *(v22 + 44) = v15;
  v22[11] = v47;
  v22[12] = v37;
  v22[13] = v38;
  v22[14] = v30;
  v49 = v66;
  v48 = v67;
  v22[7] = v56;
  v22[8] = v48;
  v22[9] = v65;
  v22[10] = v49;
  v22[15] = v31;
  v22[16] = v45;
  v22[17] = v62;
  v22[18] = v26;
  v22[19] = v57;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGhA_rgb_xf422_GCD);
  if (!v10)
  {
    return 0;
  }

  v51 = (v22 + 20);
  v52 = v10;
  while (1)
  {
    v53 = *v51++;
    v23 = v53;
    if (v53)
    {
      break;
    }

    if (!--v52)
    {
      v23 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v23;
}

unsigned __int8 *vt_Copy_RGhA_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
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
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = *(v14 + 136);
    LOWORD(a4) = *(v14 + 144);
    v23 = LODWORD(a4);
    LOWORD(a5) = *(v14 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 152);
    v27 = LODWORD(a8);
    v28 = *(v14 + 36);
    v29 = *(v14 + 40);
    v30 = *(v14 + 44);
    v31 = *(v14 + 48) * 0.5;
    v32 = *(v14 + 52) * 0.5;
    v33 = *(v14 + 56) * 0.5;
    v34 = *(v14 + 60) * 0.5;
    v35 = *(v14 + 64) * 0.5;
    v36 = *(v14 + 68) * 0.5;
    v37 = *(result + 14);
    v38 = v11 + *(result + 15);
    v39 = *(result + 28) * a2 / v9 + *(result + 44);
    v40 = *(v14 + 132);
    if (v40 >= 0x11)
    {
      v41 = 0;
    }

    else
    {
      v41 = 16 - v40;
    }

    v42 = *(v14 + 157);
    v43 = *(v14 + 156);
    v44 = *(v14 + 155);
    v45 = *(v14 + 154);
    v46 = v17[2];
    if (v46)
    {
      v47 = v46 + v21 * v38 + 2 * v37;
    }

    else
    {
      v47 = 0;
    }

    v49 = *v17;
    v48 = v17[1];
    v50 = v48 + v20 * v38 + 2 * v37;
    if (!v48)
    {
      v50 = 0;
    }

    v51 = v49 + v19 * v38 + 2 * v37;
    v52 = **(result + 7) + v39 * v16 + 8 * *(result + 36);
    v53 = v41;
    v54 = vdup_n_s32(0x477FFF00u);
    do
    {
      if (v15 >= 1)
      {
        v55 = 0;
        v56 = v52;
        v57 = v47;
        v58 = v51;
        do
        {
          v59 = v56 + 8;
          if (v57)
          {
            v8.i16[0] = *(v56 + 2 * v42);
            v8.i16[1] = *(v59 + 2 * v42);
            v8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v8), v54)));
          }

          else
          {
            v8 = 0;
          }

          _H25 = *(v56 + 2 * v45);
          __asm { FCVT            S25, H25 }

          v66 = v22 * _S25;
          _H26 = *(v56 + 2 * v44);
          __asm { FCVT            S26, H26 }

          v69 = v22 * _S26;
          _H27 = *(v56 + 2 * v43);
          __asm { FCVT            S27, H27 }

          v72 = v22 * _S27;
          v73 = (((v29 * v69) + (v28 * v66)) + (v30 * v72)) + v23;
          v74 = v25;
          if (v73 <= v25)
          {
            v74 = (((v29 * v69) + (v28 * v66)) + (v30 * v72)) + v23;
            if (v73 < v23)
            {
              v74 = v23;
            }
          }

          _H28 = *(v59 + 2 * v45);
          __asm { FCVT            S28, H28 }

          v77 = v22 * _S28;
          _H29 = *(v59 + 2 * v44);
          __asm { FCVT            S29, H29 }

          v80 = v22 * _S29;
          _H30 = *(v59 + 2 * v43);
          __asm { FCVT            S30, H30 }

          v83 = v22 * _S30;
          v84 = (((v29 * v80) + (v28 * v77)) + (v30 * v83)) + v23;
          *v58 = llroundf(v74) << v53;
          v85 = v25;
          if (v84 <= v25)
          {
            v85 = (((v29 * v80) + (v28 * v77)) + (v30 * v83)) + v23;
            if (v84 < v23)
            {
              v85 = v23;
            }
          }

          v58[1] = llroundf(v85) << v53;
          v86 = v66 + v77;
          v87 = v69 + v80;
          v88 = v72 + v83;
          v89 = ((v24 + (v86 * v31)) + (v87 * v32)) + (v88 * v33);
          v90 = v27;
          if (v89 <= v27)
          {
            v90 = ((v24 + (v86 * v31)) + (v87 * v32)) + (v88 * v33);
            if (v89 < v26)
            {
              v90 = v26;
            }
          }

          v91 = (v50 + 2 * v55);
          v92 = ((v24 + (v86 * v34)) + (v87 * v35)) + (v88 * v36);
          *v91 = llroundf(v90) << v53;
          v93 = v27;
          if (v92 <= v27)
          {
            v93 = v92;
            if (v92 < v26)
            {
              v93 = v26;
            }
          }

          v91[1] = llroundf(v93) << v53;
          if (v57)
          {
            *v57 = v8.i16[0];
            v57[1] = v8.i16[2];
            v57 += 2;
          }

          v56 += 16;
          v55 += 2;
          v58 += 2;
        }

        while (v55 < v15);
      }

      v52 += v16;
      v51 += v19;
      v50 += v20;
      v47 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, float a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v15 = *result;
  v16 = *(result + 13);
  v17 = *(result + 14);
  v18 = v16 * a2 / v15;
  v19 = *(result + 16);
  v20 = v18 + *(result + 15);
  v21 = (v16 + v16 * a2) / v15 - v18;
  v22 = *(result + 17);
  v23 = v19[1];
  if (v23)
  {
    v23 = (v23 + 2 * v17 + v22[1] * v20);
  }

  if (v21 >= 1)
  {
    v24 = 0;
    v25 = **(result + 8);
    v26 = *v22;
    v27 = *(result + 19);
    LOWORD(a3) = *(v27 + 144);
    LOWORD(a8) = *(v27 + 146);
    LOWORD(a9) = *(v27 + 148);
    LOWORD(a10) = *(v27 + 150);
    LOWORD(v11) = *(v27 + 152);
    v28 = *(v27 + 40);
    v126 = *(v27 + 36);
    v29 = *(v27 + 44);
    v30 = *(v27 + 72);
    v31 = **(result + 7) + v25 * (*(result + 28) * a2 / v15 + *(result + 44)) + 8 * *(result + 36);
    v32 = *v19 + v26 * v20 + 2 * v17;
    v33 = *(result + 24) & 0xFFFFFFFE;
    v34 = LODWORD(a3);
    v35 = LODWORD(a8);
    v36 = LODWORD(a9);
    v37 = LODWORD(a10);
    v38 = v11;
    v124 = *(v27 + 52) * 0.5;
    v125 = *(v27 + 48) * 0.5;
    v122 = *(v27 + 60) * 0.5;
    v123 = *(v27 + 56) * 0.5;
    v120 = *(v27 + 68) * 0.5;
    v121 = *(v27 + 64) * 0.5;
    v39 = *(v27 + 76);
    v40 = *(v27 + 80);
    v41 = *(v27 + 84);
    v42 = *(v27 + 88);
    v43 = *(v27 + 92);
    v44 = *(v27 + 96);
    v45 = *(v27 + 100);
    v46 = *(v27 + 104);
    v47 = v27 + 164;
    v48 = v27 + 16548;
    v49 = v27 + 32932;
    v51 = *(v27 + 108);
    v50 = *(v27 + 112);
    v52 = *(v27 + 116);
    v53 = *(v27 + 120);
    v54 = *(v27 + 157);
    v55 = *(v27 + 156);
    v56 = *(v27 + 155);
    v57 = vdup_n_s32(0x45FFF800u);
    v58 = *(v27 + 154);
    do
    {
      if (v33 >= 1)
      {
        v59 = 0;
        v60 = v23;
        v61 = v32;
        v62 = v31;
        do
        {
          _D17.i16[0] = *(v62 + 2 * v58);
          _D19.i16[0] = *(v62 + 2 * v55);
          v63 = v62 + 8;
          _D17.i16[1] = *(v62 + 2 * v56);
          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D17), v57), 0), v57)));
          _D17.i16[0] = *(v47 + 2 * _D17.u32[0]);
          __asm { FCVT            S17, H17 }

          _H18 = *(v47 + 2 * _D17.u32[1]);
          __asm { FCVT            S18, H18 }

          _D19.i16[1] = *(v62 + 8 + 2 * v58);
          _D19 = vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D19), v57), 0), v57));
          v70 = vcvt_s32_f32(_D19);
          _D19.i16[0] = *(v47 + 2 * v70.u32[0]);
          __asm { FCVT            S19, H19 }

          v71 = (((v50 * _S18) + (v51 * *_D17.i32)) + (v52 * *_D19.i32)) + (v53 * fmaxf(*_D17.i32, fmaxf(_S18, *_D19.i32)));
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          v10.i16[0] = *(v62 + 2 * v54);
          _D20.i16[0] = *(v63 + 2 * v56);
          _H21 = *(v47 + 2 * v70.u32[1]);
          _D20.i16[1] = *(v63 + 2 * v55);
          _D20 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D20), v57), 0), v57)));
          __asm { FCVT            S21, H21 }

          _D20.i16[0] = *(v47 + 2 * _D20.u32[0]);
          _H12 = *(v47 + 2 * _D20.u32[1]);
          __asm
          {
            FCVT            S22, H20
            FCVT            S12, H12
          }

          _D20.i16[0] = *(v48 + 2 * llroundf(v72));
          __asm { FCVT            S20, H20 }

          v78 = *_D17.i32 * *_D20.i32;
          v79 = _S18 * *_D20.i32;
          v80 = *_D19.i32 * *_D20.i32;
          v81 = (((v50 * _S22) + (v51 * _S21)) + (v52 * _S12)) + (v53 * fmaxf(_S21, fmaxf(_S22, _S12)));
          _D20.i32[0] = 1174403072;
          if (v81 <= 8191.0)
          {
            *_D20.i32 = v81;
            if (v81 < 0.0)
            {
              _D20 = 0;
            }
          }

          _H19 = *(v48 + 2 * llroundf(*_D20.i32));
          __asm { FCVT            S19, H19 }

          v84 = _S21 * _S19;
          v85 = _S22 * _S19;
          v86 = _S12 * _S19;
          _S22 = ((v39 * v79) + (v78 * v30)) + (v80 * v40);
          v88 = ((v42 * v79) + (v78 * v41)) + (v80 * v43);
          _S17 = ((v45 * v79) + (v78 * v44)) + (v80 * v46);
          v90 = (v39 * v85) + (v84 * v30);
          v91 = (v42 * v85) + (v84 * v41);
          _S20 = (v45 * v85) + (v84 * v44);
          _S18 = v90 + (v86 * v40);
          v94 = v91 + (v86 * v43);
          v95 = _S20 + (v86 * v46);
          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S22) = *(v49 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S17) = *(v49 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          LOWORD(_S18) = *(v49 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm
          {
            FCVT            S12, H17
            FCVT            S17, H18
          }

          LOWORD(_S18) = *(v49 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v100 = llroundf(fminf(fmaxf(v95, 0.0), 8191.0));
          __asm { FCVT            S18, H18 }

          v102 = (v28 * _S22) + (v126 * _S20);
          _S19 = _S20 + _S17;
          v104 = _S22 + _S18;
          v105 = (v35 + ((_S20 + _S17) * v125)) + (v104 * v124);
          v106 = (v35 + (_S19 * v122)) + (v104 * v121);
          LOWORD(_S19) = *(v49 + 2 * v100);
          __asm { FCVT            S19, H19 }

          v108 = v102 + (v29 * _S12);
          v109 = v105 + ((_S12 + _S19) * v123);
          v110 = v106 + ((_S12 + _S19) * v120);
          if (v109 < v34)
          {
            v111 = LODWORD(a3);
          }

          else
          {
            v111 = v109;
          }

          v112 = v109 <= v36;
          v113 = v108 + v34;
          if (!v112)
          {
            v111 = v36;
          }

          v114 = llroundf(v111);
          if (v113 < v37)
          {
            v115 = v37;
          }

          else
          {
            v115 = v108 + v34;
          }

          v10.i16[1] = *(v63 + 2 * v54);
          *v61 = v114;
          if (v113 <= v38)
          {
            v116 = v115;
          }

          else
          {
            v116 = v38;
          }

          v61[1] = llroundf(v116);
          v117 = v36;
          if (v110 <= v36)
          {
            v117 = v110;
            if (v110 < v34)
            {
              v117 = LODWORD(a3);
            }
          }

          v118 = (((v28 * _S18) + (v126 * _S17)) + (v29 * _S19)) + v34;
          v61[2] = llroundf(v117);
          v119 = v38;
          if (v118 <= v38)
          {
            v119 = v118;
            if (v118 < v37)
            {
              v119 = v37;
            }
          }

          v61[3] = llroundf(v119);
          if (v60)
          {
            _D19 = vdup_n_s32(0x477FFF00u);
            _D17 = vbic_s8(vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v10), _D19))), vceqd_s64(v60, 0));
            *v60 = _D17.i16[0];
            v60[1] = _D17.i16[2];
            v60 += 2;
          }

          v62 += 16;
          v59 += 2;
          v61 += 4;
        }

        while (v59 < v33);
      }

      v31 += v25;
      v32 += v26;
      ++v24;
    }

    while (v24 != v21);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, double _D5, float a9, float a10)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = *(result + 14);
  v15 = v13 * a2 / v12;
  v16 = *(result + 16);
  v17 = v15 + *(result + 15);
  v18 = (v13 + v13 * a2) / v12 - v15;
  v19 = *(result + 17);
  v20 = v16[1];
  if (v20)
  {
    v20 = (v20 + 2 * v14 + v19[1] * v17);
  }

  if (v18 >= 1)
  {
    v21 = 0;
    v22 = **(result + 8);
    v23 = *v19;
    v24 = *(result + 19);
    LOWORD(a6) = *(v24 + 144);
    LOWORD(a7) = *(v24 + 146);
    LOWORD(_D5) = *(v24 + 148);
    LOWORD(a9) = *(v24 + 150);
    LOWORD(a10) = *(v24 + 152);
    v25 = *(v24 + 36);
    v26 = *(v24 + 40);
    v27 = *(v24 + 44);
    v28 = **(result + 7) + v22 * (*(result + 28) * a2 / v12 + *(result + 44)) + 8 * *(result + 36);
    v29 = *v16 + v23 * v17 + 2 * v14;
    v30 = *(result + 24) & 0xFFFFFFFE;
    v31 = LODWORD(a6);
    v32 = LODWORD(a7);
    v33 = LODWORD(_D5);
    v34 = LODWORD(a9);
    v35 = LODWORD(a10);
    v95 = *(v24 + 52) * 0.5;
    v96 = *(v24 + 48) * 0.5;
    v93 = *(v24 + 60) * 0.5;
    v94 = *(v24 + 56) * 0.5;
    v36 = *(v24 + 64) * 0.5;
    v37 = *(v24 + 72);
    v38 = *(v24 + 68) * 0.5;
    v39 = *(v24 + 76);
    v40 = *(v24 + 80);
    v41 = *(v24 + 84);
    v42 = *(v24 + 88);
    v43 = *(v24 + 92);
    v44 = *(v24 + 96);
    v45 = *(v24 + 100);
    v46 = *(v24 + 104);
    v47 = v24 + 164;
    v48 = v24 + 16548;
    v49 = *(v24 + 157);
    v50 = *(v24 + 156);
    v51 = *(v24 + 155);
    v52 = vdup_n_s32(0x45FFF800u);
    v53 = *(v24 + 154);
    do
    {
      if (v30 >= 1)
      {
        v54 = 0;
        v55 = v28;
        v56 = v20;
        v57 = v29;
        do
        {
          v58 = v55 + 8;
          if (v56)
          {
            LOWORD(_D5) = *(v55 + 2 * v49);
            WORD1(_D5) = *(v58 + 2 * v49);
            _D5 = COERCE_DOUBLE(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(*&_D5), vdup_n_s32(0x477FFF00u))));
            v59 = vcvt_s32_f32(*&_D5);
          }

          else
          {
            v59 = 0;
          }

          LOWORD(_D5) = *(v55 + 2 * v53);
          _D12.i16[0] = *(v55 + 2 * v50);
          WORD1(_D5) = *(v55 + 2 * v51);
          _D5 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D5), v52), 0), v52))));
          LOWORD(_D5) = *(v47 + 2 * LODWORD(_D5));
          _D13.i16[0] = *(v58 + 2 * v51);
          __asm { FCVT            S5, H5 }

          _H14 = *(v47 + 2 * HIDWORD(_D5));
          _D12.i16[1] = *(v58 + 2 * v53);
          _D12 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D12), v52), 0), v52)));
          __asm { FCVT            S14, H14 }

          _D12.i16[0] = *(v47 + 2 * _D12.u32[0]);
          _H15 = *(v47 + 2 * _D12.u32[1]);
          __asm
          {
            FCVT            S12, H12
            FCVT            S15, H15
          }

          _D13.i16[1] = *(v58 + 2 * v50);
          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D13), v52), 0), v52)));
          _D13.i16[0] = *(v47 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _S17 = ((v39 * _S14) + (*&_D5 * v37)) + (*_D12.i32 * v40);
          _S18 = ((v42 * _S14) + (*&_D5 * v41)) + (*_D12.i32 * v43);
          *&_D5 = ((v45 * _S14) + (*&_D5 * v44)) + (*_D12.i32 * v46);
          *_D12.i32 = (v39 * *_D13.i32) + (_S15 * v37);
          v70 = (v42 * *_D13.i32) + (_S15 * v41);
          *_D13.i32 = (v45 * *_D13.i32) + (_S15 * v44);
          LOWORD(_S15) = *(v47 + 2 * _D13.u32[1]);
          __asm { FCVT            S15, H15 }

          *_D12.i32 = *_D12.i32 + (_S15 * v40);
          v72 = v70 + (_S15 * v43);
          LOWORD(_S17) = *(v48 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          v73 = *_D13.i32 + (_S15 * v46);
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v48 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          v75 = llroundf(fminf(fmaxf(*&_D5, 0.0), 8191.0));
          __asm { FCVT            S5, H18 }

          LOWORD(_S18) = *(v48 + 2 * v75);
          __asm { FCVT            S18, H18 }

          _D12.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(*_D12.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _D13.i16[0] = *(v48 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          v77 = llroundf(fminf(fmaxf(v73, 0.0), 8191.0));
          v78 = (v26 * *&_D5) + (v25 * _S17);
          _S17 = _S17 + *_D12.i32;
          *&_D5 = *&_D5 + *_D13.i32;
          v80 = (v32 + (_S17 * v96)) + (*&_D5 * v95);
          *&_D5 = (v32 + (_S17 * v93)) + (*&_D5 * v36);
          LOWORD(_S17) = *(v48 + 2 * v77);
          __asm { FCVT            S14, H17 }

          v82 = v78 + (v27 * _S18);
          v83 = _S18 + _S14;
          v84 = v80 + (v83 * v94);
          v85 = *&_D5 + (v83 * v38);
          if (v84 < v31)
          {
            v86 = v31;
          }

          else
          {
            v86 = v84;
          }

          v87 = v82 + v31;
          if (v84 > v33)
          {
            v86 = v33;
          }

          v88 = llroundf(v86);
          if (v87 < v34)
          {
            v89 = v34;
          }

          else
          {
            v89 = v87;
          }

          *v57 = v88;
          if (v87 > v35)
          {
            v89 = v35;
          }

          v57[1] = llroundf(v89);
          v90 = v33;
          if (v85 <= v33)
          {
            v90 = v85;
            if (v85 < v31)
            {
              v90 = v31;
            }
          }

          v91 = (((v26 * *_D13.i32) + (v25 * *_D12.i32)) + (v27 * _S14)) + v31;
          v57[2] = llroundf(v90);
          v92 = v35;
          if (v91 <= v35)
          {
            v92 = v91;
            if (v91 < v34)
            {
              v92 = v34;
            }
          }

          v57[3] = llroundf(v92);
          if (v56)
          {
            *v56 = v59.i16[0];
            v56[1] = v59.i16[2];
            v56 += 2;
          }

          v55 += 16;
          v54 += 2;
          v57 += 4;
        }

        while (v54 < v30);
      }

      v28 += v22;
      v29 += v23;
      ++v21;
    }

    while (v21 != v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_13:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 8 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
  {
    v20 = v27;
  }

  else
  {
    *v19 = v15;
    v28 = v39;
    *(v19 + 4) = v40;
    *(v19 + 20) = v25;
    *(v19 + 36) = v28;
    v29 = v37;
    *(v19 + 5) = v38;
    *(v19 + 6) = v25;
    *(v19 + 7) = v29;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = a9;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_v216_GCD);
    if (!v15)
    {
      return 0;
    }

    v31 = (v19 + 160);
    v32 = v15;
    while (1)
    {
      v33 = *v31++;
      v20 = v33;
      if (v33)
      {
        break;
      }

      if (!--v32)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_13;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 = (v17 + 2 * v11 + v16[1] * v14);
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = **(result + 8);
    v20 = *v16;
    v21 = *(result + 19);
    LOWORD(a4) = *(v21 + 144);
    LOWORD(a5) = *(v21 + 146);
    LOWORD(a6) = *(v21 + 148);
    v22 = *v13 + v20 * v14;
    v23 = **(result + 7) + v19 * (*(result + 28) * a2 / v9 + *(result + 44)) + 8 * *(result + 36);
    v24 = (v22 + 2 * v11);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = *(v21 + 136);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    v29 = LODWORD(a6);
    LOWORD(a7) = *(v21 + 150);
    v30 = LODWORD(a7);
    LOWORD(a8) = *(v21 + 152);
    v31 = LODWORD(a8);
    v32 = *(v21 + 36);
    v33 = *(v21 + 40);
    v34 = *(v21 + 44);
    v35 = *(v21 + 48) * 0.5;
    v36 = *(v21 + 52) * 0.5;
    v37 = *(v21 + 56) * 0.5;
    v38 = *(v21 + 60) * 0.5;
    v39 = *(v21 + 64) * 0.5;
    v40 = *(v21 + 68) * 0.5;
    v41 = *(v21 + 157);
    v42 = *(v21 + 156);
    v43 = vdup_n_s32(0x477FFF00u);
    v44 = *(v21 + 155);
    v45 = *(v21 + 154);
    do
    {
      if (v25 >= 1)
      {
        v46 = 0;
        v47 = v23;
        v48 = v17;
        v49 = v24;
        do
        {
          v50 = v47 + 8;
          if (v48)
          {
            v8.i16[0] = *(v47 + 2 * v41);
            v8.i16[1] = *(v50 + 2 * v41);
            v8 = vcvt_s32_f32(vrnda_f32(vmul_f32(*&vcvtq_f32_f16(v8), v43)));
          }

          else
          {
            v8 = 0;
          }

          _H25 = *(v47 + 2 * v45);
          __asm { FCVT            S25, H25 }

          _H26 = *(v47 + 2 * v44);
          v58 = v26 * _S25;
          __asm { FCVT            S25, H26 }

          v60 = v26 * _S25;
          LOWORD(_S25) = *(v47 + 2 * v42);
          __asm { FCVT            S25, H25 }

          v62 = v26 * _S25;
          LOWORD(_S25) = *(v50 + 2 * v45);
          __asm { FCVT            S25, H25 }

          _H26 = *(v50 + 2 * v44);
          v65 = v26 * _S25;
          __asm { FCVT            S26, H26 }

          v67 = v26 * _S26;
          _H27 = *(v50 + 2 * v42);
          __asm { FCVT            S27, H27 }

          v70 = v26 * _S27;
          v71 = (((v33 * v60) + (v32 * v58)) + (v34 * v62)) + v27;
          v72 = v58 + v65;
          v73 = v60 + v67;
          v74 = v62 + v70;
          v75 = ((v28 + (v72 * v35)) + (v73 * v36)) + (v74 * v37);
          v76 = ((v28 + (v72 * v38)) + (v73 * v39)) + (v74 * v40);
          if (v75 < v27)
          {
            v77 = v27;
          }

          else
          {
            v77 = v75;
          }

          if (v75 > v29)
          {
            v77 = v29;
          }

          *v49 = llroundf(v77);
          if (v71 < v30)
          {
            v78 = v30;
          }

          else
          {
            v78 = v71;
          }

          if (v71 > v31)
          {
            v78 = v31;
          }

          v49[1] = llroundf(v78);
          v79 = v29;
          if (v76 <= v29)
          {
            v79 = v76;
            if (v76 < v27)
            {
              v79 = v27;
            }
          }

          v80 = (((v33 * v67) + (v32 * v65)) + (v34 * v70)) + v27;
          v49[2] = llroundf(v79);
          v81 = v31;
          if (v80 <= v31)
          {
            v81 = v80;
            if (v80 < v30)
            {
              v81 = v30;
            }
          }

          v49[3] = llroundf(v81);
          if (v48)
          {
            *v48 = v8.i16[0];
            v48[1] = v8.i16[2];
            v48 += 2;
          }

          v47 += 16;
          v46 += 2;
          v49 += 4;
        }

        while (v46 < v25);
      }

      v23 += v19;
      v24 = (v24 + v20);
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD);
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

__int16 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v4 = 0;
  v148 = *(a1 + 36);
  v5 = *a1;
  v6 = *(a1 + 28) * a2 / v5 + *(a1 + 44);
  v7 = *(a1 + 14);
  v8 = *(a1 + 15);
  v10 = *(a1 + 12);
  v9 = *(a1 + 13);
  v11 = *(a1 + 19);
  v13 = *(a1 + 16);
  v12 = *(a1 + 17);
  v14 = **(a1 + 8);
  result = **(a1 + 7);
  v16 = v12[1];
  v152 = *v12;
  v17 = v12[2];
  v19 = *v13;
  v18 = v13[1];
  v20 = v13[2];
  v188 = *(v11 + 154);
  v21 = *(v11 + 144);
  v22 = v9 * a2 / v5;
  v23 = v22 + v8;
  v24 = *(v11 + 146);
  v151 = v14;
  v25 = v18 + v16 * (v22 + v8);
  v26 = v20 + v17 * (v22 + v8);
  v27 = *(v11 + 148);
  v28 = *(v11 + 150);
  v29 = *(v11 + 152);
  _S14 = *(v11 + 36);
  _S15 = *(v11 + 40);
  v185 = *(v11 + 44);
  v163 = *(v11 + 52);
  v164 = *(v11 + 48);
  v161 = *(v11 + 60);
  v162 = *(v11 + 56);
  v159 = *(v11 + 68);
  v160 = *(v11 + 64);
  v184 = *(v11 + 72);
  v183 = *(v11 + 76);
  v182 = *(v11 + 80);
  v181 = *(v11 + 84);
  v180 = *(v11 + 88);
  v179 = *(v11 + 92);
  v178 = *(v11 + 96);
  v177 = *(v11 + 100);
  v176 = *(v11 + 104);
  v175 = *(v11 + 108);
  v174 = *(v11 + 112);
  v173 = *(v11 + 116);
  v172 = *(v11 + 120);
  memset(v187, 0, sizeof(v187));
  v32 = (v9 + v9 * a2) / v5;
  do
  {
    v33 = 0;
    v34 = *(&v188 + v4);
    v35 = *(v187 + v4);
    do
    {
      v186 = v35;
      *(&v186 | v33 & 7) = v34 + 4 * v33;
      v35 = v186;
      ++v33;
    }

    while (v33 != 8);
    *(v187 + v4++) = v186;
  }

  while (v4 != 4);
  v36 = v32 - v22;
  if (v32 - v22 >= 1)
  {
    v37 = 0;
    v38 = v21;
    v39 = v24;
    __asm { FCVT            H0, S14 }

    v171 = _H0;
    v45 = v27;
    __asm { FCVT            H0, S15 }

    v170 = _H0;
    v165 = v28;
    v47 = v29;
    _S0 = v185;
    __asm { FCVT            H0, S0 }

    v169 = *&_S0;
    v49 = v11 + 16548;
    _S0 = v164;
    __asm { FCVT            H0, S0 }

    v158 = *&_S0;
    v51 = v11 + 32932;
    v52 = v11 + 164;
    _S0 = v163;
    __asm { FCVT            H0, S0 }

    v157 = *&_S0;
    _S0 = v162;
    __asm { FCVT            H0, S0 }

    v156 = *&_S0;
    _S0 = v161;
    __asm { FCVT            H0, S0 }

    v155 = *&_S0;
    _S0 = v160;
    __asm { FCVT            H0, S0 }

    v154 = *&_S0;
    _S0 = v159;
    __asm { FCVT            H0, S0 }

    v153 = *&_S0;
    _S0 = v175;
    __asm { FCVT            H0, S0 }

    v168 = *&_S0;
    _S0 = v174;
    __asm { FCVT            H0, S0 }

    v167 = *&_S0;
    _S0 = v173;
    __asm { FCVT            H0, S0 }

    v166 = *&_S0;
    _S0 = v172;
    __asm { FCVT            H3, S0 }

    _S0 = v184;
    __asm { FCVT            H4, S0 }

    _S0 = v183;
    __asm { FCVT            H5, S0 }

    _S0 = v182;
    __asm { FCVT            H6, S0 }

    _S0 = v181;
    __asm { FCVT            H0, S0 }

    _S1 = v180;
    __asm { FCVT            H1, S1 }

    v73 = (v25 + v7);
    _S2 = v179;
    __asm { FCVT            H2, S2 }

    _S7 = v178;
    __asm { FCVT            H11, S7 }

    _S7 = v177;
    __asm { FCVT            H8, S7 }

    *v2.i16 = v21;
    v80 = vdupq_lane_s16(v2, 0);
    *v2.i16 = v24;
    v81 = vdupq_lane_s16(v2, 0);
    *v2.i16 = v27;
    v82 = vdupq_lane_s16(v2, 0);
    if (v20)
    {
      v83 = (v26 + v7);
    }

    else
    {
      v83 = 0;
    }

    *v2.i16 = v28;
    v84 = vdupq_lane_s16(v2, 0);
    if (v18)
    {
      v85 = v73;
    }

    else
    {
      v85 = 0;
    }

    *v2.i16 = v29;
    v86 = vdupq_lane_s16(v2, 0);
    v87 = (v19 + v152 * v23 + v7);
    _S7 = v176;
    __asm { FCVT            H10, S7 }

    v90 = &result[4 * v148] + v14 * v6;
    v91.i64[0] = 0x7000700070007000;
    v91.i64[1] = 0x7000700070007000;
    v92.i64[0] = 0x9000900090009000;
    v92.i64[1] = 0x9000900090009000;
    v149 = _S15;
    v150 = _S14;
    do
    {
      if (v10 < 8)
      {
        v116 = 0;
        v97 = v87;
        v96 = v85;
        v95 = v83;
        v94 = v90;
      }

      else
      {
        v93 = 0;
        v94 = v90;
        v95 = v83;
        v96 = v85;
        v97 = v87;
        do
        {
          v190 = vld4q_s16(v94);
          v94 += 32;
          if (v95)
          {
            _D26 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(v190.val[3], vdupq_n_s16(0x5BF8u))));
          }

          else
          {
            _D26 = 0;
          }

          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v190.val[0], v91), 0), v92));
          v99.i16[0] = *(v52 + 2 * v98.u16[0]);
          v99.i16[1] = *(v52 + 2 * v98.u16[1]);
          v99.i16[2] = *(v52 + 2 * v98.u16[2]);
          v99.i16[3] = *(v52 + 2 * v98.u16[3]);
          v99.i16[4] = *(v52 + 2 * v98.u16[4]);
          v99.i16[5] = *(v52 + 2 * v98.u16[5]);
          v99.i16[6] = *(v52 + 2 * v98.u16[6]);
          v99.i16[7] = *(v52 + 2 * v98.u16[7]);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v190.val[1], v91), 0), v92));
          v101.i16[0] = *(v52 + 2 * v100.u16[0]);
          v101.i16[1] = *(v52 + 2 * v100.u16[1]);
          v101.i16[2] = *(v52 + 2 * v100.u16[2]);
          v101.i16[3] = *(v52 + 2 * v100.u16[3]);
          v101.i16[4] = *(v52 + 2 * v100.u16[4]);
          v101.i16[5] = *(v52 + 2 * v100.u16[5]);
          v101.i16[6] = *(v52 + 2 * v100.u16[6]);
          v101.i16[7] = *(v52 + 2 * v100.u16[7]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v190.val[2], v91), 0), v92));
          v103.i16[0] = *(v52 + 2 * v102.u16[0]);
          v103.i16[1] = *(v52 + 2 * v102.u16[1]);
          v103.i16[2] = *(v52 + 2 * v102.u16[2]);
          v103.i16[3] = *(v52 + 2 * v102.u16[3]);
          v103.i16[4] = *(v52 + 2 * v102.u16[4]);
          v103.i16[5] = *(v52 + 2 * v102.u16[5]);
          v103.i16[6] = *(v52 + 2 * v102.u16[6]);
          v103.i16[7] = *(v52 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v99, v168), v101, v167), v103, v166), vmaxq_f16(vmaxq_f16(v99, v101), v103), _H3), 0), v92));
          v105.i16[0] = *(v49 + 2 * v104.u16[0]);
          v105.i16[1] = *(v49 + 2 * v104.u16[1]);
          v105.i16[2] = *(v49 + 2 * v104.u16[2]);
          v105.i16[3] = *(v49 + 2 * v104.u16[3]);
          v105.i16[4] = *(v49 + 2 * v104.u16[4]);
          v105.i16[5] = *(v49 + 2 * v104.u16[5]);
          v105.i16[6] = *(v49 + 2 * v104.u16[6]);
          v105.i16[7] = *(v49 + 2 * v104.u16[7]);
          v106 = vmulq_f16(v99, v105);
          v107 = vmulq_f16(v101, v105);
          v108 = vmulq_f16(v103, v105);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, _H4), v107, _H5), v108, _H6), 0), v92));
          v110.i16[0] = *(v51 + 2 * v109.u16[0]);
          v110.i16[1] = *(v51 + 2 * v109.u16[1]);
          v110.i16[2] = *(v51 + 2 * v109.u16[2]);
          v110.i16[3] = *(v51 + 2 * v109.u16[3]);
          v110.i16[4] = *(v51 + 2 * v109.u16[4]);
          v110.i16[5] = *(v51 + 2 * v109.u16[5]);
          v110.i16[6] = *(v51 + 2 * v109.u16[6]);
          v110.i16[7] = *(v51 + 2 * v109.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, _H0), v107, _H1), v108, _H2), 0), v92));
          v112.i16[0] = *(v51 + 2 * v111.u16[0]);
          v112.i16[1] = *(v51 + 2 * v111.u16[1]);
          v112.i16[2] = *(v51 + 2 * v111.u16[2]);
          v112.i16[3] = *(v51 + 2 * v111.u16[3]);
          v112.i16[4] = *(v51 + 2 * v111.u16[4]);
          v112.i16[5] = *(v51 + 2 * v111.u16[5]);
          v112.i16[6] = *(v51 + 2 * v111.u16[6]);
          v112.i16[7] = *(v51 + 2 * v111.u16[7]);
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, _H10), v107, _H8), v106, _H11), 0), v92));
          v114.i16[0] = *(v51 + 2 * v113.u16[0]);
          result = (v51 + 2 * v113.u16[3]);
          v114.i16[1] = *(v51 + 2 * v113.u16[1]);
          v114.i16[2] = *(v51 + 2 * v113.u16[2]);
          v114.i16[3] = *result;
          v114.i16[4] = *(v51 + 2 * v113.u16[4]);
          v114.i16[5] = *(v51 + 2 * v113.u16[5]);
          v114.i16[6] = *(v51 + 2 * v113.u16[6]);
          v114.i16[7] = *(v51 + 2 * v113.u16[7]);
          *v97++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v80, v110, v171), v112, v170), v114, v169), v80), v82)));
          if (v96)
          {
            v115 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v81, v110, v155), v112, v154), v114, v153);
            v189.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v81, v110, v158), v112, v157), v114, v156), v84), v86), v84), v86)));
            v189.val[1] = vmovn_s16(vcvtq_u16_f16(v115));
            vst2_s8(v96, v189);
            v96 += 16;
          }

          if (v95)
          {
            *v95++ = _D26;
          }

          v93 += 8;
        }

        while (v93 < v10 - 7);
        v116 = v10 & 0xFFFFFFF8;
        _S15 = v149;
        _S14 = v150;
      }

      v117 = v10 - v116;
      if (v10 > v116)
      {
        do
        {
          _D26.i16[0] = v94[v188];
          _H16 = v94[BYTE2(v188)];
          __asm { FCVT            S27, H16 }

          _D26.i16[1] = v94[BYTE1(v188)];
          _D28 = vdup_n_s32(0x45FFF800u);
          _D26 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D26), _D28), 0), _D28)));
          _D26.i16[0] = *(v52 + 2 * _D26.u32[0]);
          __asm { FCVT            S26, H26 }

          _D28.i16[0] = *(v52 + 2 * _D26.u32[1]);
          v121 = llroundf(fminf(fmaxf(_S27 * 8191.0, 0.0), 8191.0));
          __asm { FCVT            S27, H28 }

          _D28.i16[0] = *(v52 + 2 * v121);
          __asm { FCVT            S28, H28 }

          v124 = (((v174 * _S27) + (v175 * *_D26.i32)) + (v173 * _S28)) + (v172 * fmaxf(*_D26.i32, fmaxf(_S27, _S28)));
          v125 = 8191.0;
          if (v124 <= 8191.0)
          {
            v125 = v124;
            if (v124 < 0.0)
            {
              v125 = 0.0;
            }
          }

          _H29 = *(v49 + 2 * llroundf(v125));
          __asm { FCVT            S29, H29 }

          _S26 = *_D26.i32 * _S29;
          _S27 = _S27 * _S29;
          v130 = _S28 * _S29;
          v131 = ((v183 * _S27) + (_S26 * v184)) + (v130 * v182);
          v132 = ((v180 * _S27) + (_S26 * v181)) + (v130 * v179);
          v133 = ((v177 * _S27) + (_S26 * v178)) + (v130 * v176);
          LOWORD(_S26) = *(v51 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          LOWORD(_S27) = *(v51 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H16 = *(v51 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          __asm { FCVT            S28, H16 }

          v138 = (((_S15 * _S27) + (_S14 * _S26)) + (v185 * _S28)) + v38;
          v139 = v45;
          if (v138 <= v45)
          {
            v139 = (((_S15 * _S27) + (_S14 * _S26)) + (v185 * _S28)) + v38;
            if (v138 < v38)
            {
              v139 = v38;
            }
          }

          _H16 = v94[HIBYTE(v188)];
          v97->i8[0] = llroundf(v139);
          v97 = (v97 + 1);
          if (v96)
          {
            v141 = ((v39 + (_S26 * v164)) + (_S27 * v163)) + (_S28 * v162);
            v142 = v29;
            if (v141 <= v47)
            {
              v142 = ((v39 + (_S26 * v164)) + (_S27 * v163)) + (_S28 * v162);
              if (v141 < v165)
              {
                v142 = v165;
              }
            }

            v143 = ((v39 + (_S26 * v161)) + (_S27 * v160)) + (_S28 * v159);
            *v96 = llroundf(v142);
            v144 = v29;
            if (v143 <= v47)
            {
              v144 = v143;
              if (v143 < v165)
              {
                v144 = v165;
              }
            }

            v96[1] = llroundf(v144);
            v96 += 2;
          }

          if (v95)
          {
            __asm { FCVT            S16, H16 }

            v95->i8[0] = llroundf(_S16 * 255.0);
            v95 = (v95 + 1);
          }

          v94 += 4;
          --v117;
        }

        while (v117);
      }

      v90 += v151;
      v87 = (v87 + v152);
      v85 += v16;
      v83 = (v83 + v17);
      ++v37;
    }

    while (v37 != v36);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_RGhA_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, double _D4)
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
    v101 = *(v13 + 48);
    v100 = *(v13 + 52);
    v99 = *(v13 + 56);
    v98 = *(v13 + 60);
    v28 = *(v13 + 68);
    v97 = *(v13 + 64);
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
    v48 = *(v13 + 157);
    v49 = *(v13 + 156);
    v50 = *(v13 + 155);
    v51 = *(v13 + 154);
    v52 = v15[2];
    if (v52)
    {
      v53 = (v52 + v19 * v46 + v45);
    }

    else
    {
      v53 = 0;
    }

    v55 = *v15;
    v54 = v15[1];
    v56 = (v54 + v18 * v46 + v45);
    if (!v54)
    {
      v56 = 0;
    }

    v57 = (v55 + v17 * v46 + v45);
    v58 = **(result + 7) + v47 * v14 + 8 * *(result + 36);
    v59 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v60 = v12;
        v61 = v53;
        v62 = v56;
        v63 = v57;
        v64 = v58;
        do
        {
          LOWORD(_D4) = *(v64 + 2 * v51);
          WORD1(_D4) = *(v64 + 2 * v50);
          _D4 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), v59), 0), v59))));
          LOWORD(_D4) = *(v39 + 2 * LODWORD(_D4));
          _H16 = *(v64 + 2 * v49);
          __asm { FCVT            S16, H16 }

          v71 = _S16 * 8191.0;
          __asm { FCVT            S16, H4 }

          LOWORD(_D4) = *(v39 + 2 * HIDWORD(_D4));
          v73 = llroundf(fminf(fmaxf(v71, 0.0), 8191.0));
          __asm { FCVT            S17, H4 }

          LOWORD(_D4) = *(v39 + 2 * v73);
          __asm { FCVT            S18, H4 }

          v76 = fmaxf(_S16, fmaxf(_S17, _S18));
          v77 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v76);
          LODWORD(_D4) = 1174403072;
          if (v77 <= 8191.0)
          {
            *&_D4 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v76);
            if (v77 < 0.0)
            {
              _D4 = 0.0;
            }
          }

          _H4 = *(v40 + 2 * llroundf(*&_D4));
          __asm { FCVT            S4, H4 }

          _S16 = _S16 * _S4;
          _S17 = _S17 * _S4;
          v82 = _S18 * _S4;
          v83 = ((v30 * _S17) + (_S16 * v29)) + (v82 * v31);
          v84 = ((v33 * _S17) + (_S16 * v32)) + (v82 * v34);
          _S4 = ((v36 * _S17) + (_S16 * v35)) + (v82 * v37);
          LOWORD(_S16) = *(v41 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v41 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S4) = *(v41 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v89 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
          v90 = v22;
          if (v89 <= v22)
          {
            v90 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
            if (v89 < v20)
            {
              v90 = v20;
            }
          }

          _H15 = *(v64 + 2 * v48);
          *v63++ = llroundf(v90);
          if (v62)
          {
            v92 = ((v21 + (_S16 * v101)) + (_S17 * v100)) + (_S18 * v99);
            v93 = v24;
            if (v92 <= v24)
            {
              v93 = ((v21 + (_S16 * v101)) + (_S17 * v100)) + (_S18 * v99);
              if (v92 < v23)
              {
                v93 = v23;
              }
            }

            v94 = ((v21 + (_S16 * v98)) + (_S17 * v97)) + (_S18 * v28);
            *v62 = llroundf(v93);
            v95 = v24;
            if (v94 <= v24)
            {
              v95 = v94;
              if (v94 < v23)
              {
                v95 = v23;
              }
            }

            v62[1] = llroundf(v95);
            v62 += 2;
          }

          if (v61)
          {
            __asm { FCVT            S4, H15 }

            *v61++ = llroundf(_S4 * 255.0);
          }

          v64 += 8;
          --v60;
        }

        while (v60);
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

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_444vf_neon_fp16_GCD);
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

__int16 *vt_Copy_RGhA_TRC_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v3 = 0;
  v110 = *(a1 + 36);
  v4 = *a1;
  v5 = *(a1 + 28) * a2 / v4 + *(a1 + 44);
  v7 = *(a1 + 14);
  v6 = *(a1 + 15);
  v9 = *(a1 + 12);
  v8 = *(a1 + 13);
  v10 = *(a1 + 19);
  v12 = *(a1 + 16);
  v11 = *(a1 + 17);
  v13 = **(a1 + 8);
  result = **(a1 + 7);
  v15 = v11[1];
  v111 = *v11;
  v16 = v11[2];
  v18 = *v12;
  v17 = v12[1];
  v19 = v8 * a2 / v4;
  v20 = v19 + v6;
  v21 = v12[2];
  v140 = *(v10 + 154);
  v22 = *(v10 + 144);
  v23 = *(v10 + 146);
  v24 = *(v10 + 148);
  v25 = *(v10 + 150);
  v26 = *(v10 + 152);
  v136 = *(v10 + 40);
  v137 = *(v10 + 36);
  v122 = *(v10 + 52);
  v123 = *(v10 + 48);
  v120 = *(v10 + 60);
  v121 = *(v10 + 56);
  v118 = *(v10 + 68);
  v119 = *(v10 + 64);
  v134 = *(v10 + 72);
  v135 = *(v10 + 44);
  v132 = *(v10 + 80);
  v133 = *(v10 + 76);
  v130 = *(v10 + 88);
  v131 = *(v10 + 84);
  v128 = *(v10 + 96);
  v129 = *(v10 + 92);
  v126 = *(v10 + 104);
  v127 = *(v10 + 100);
  memset(v139, 0, sizeof(v139));
  v27 = (v8 + v8 * a2) / v4;
  do
  {
    v28 = 0;
    v29 = *(&v140 + v3);
    _D0 = *(v139 + 8 * v3);
    do
    {
      v138 = _D0;
      *(&v138 | v28 & 7) = v29 + 4 * v28;
      _D0 = v138;
      ++v28;
    }

    while (v28 != 8);
    *(v139 + v3++) = v138;
  }

  while (v3 != 4);
  v31 = v27 - v19;
  if (v27 - v19 >= 1)
  {
    v32 = 0;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v124 = v25;
    v36 = v26;
    v37 = v10 + 164;
    v38 = v10 + 16548;
    *_D0.i32 = v137;
    __asm { FCVT            H0, S0 }

    v125 = *_D0.i16;
    *_D0.i32 = v135;
    _S1 = v136;
    __asm
    {
      FCVT            H9, S1
      FCVT            H10, S0
    }

    *_D0.i32 = v123;
    __asm { FCVT            H0, S0 }

    v117 = *_D0.i16;
    *_D0.i32 = v122;
    __asm { FCVT            H0, S0 }

    v116 = *_D0.i16;
    *_D0.i32 = v121;
    __asm { FCVT            H0, S0 }

    v115 = *_D0.i16;
    *_D0.i32 = v120;
    __asm { FCVT            H0, S0 }

    v114 = *_D0.i16;
    *_D0.i32 = v119;
    __asm { FCVT            H0, S0 }

    v113 = *_D0.i16;
    *_D0.i32 = v118;
    __asm { FCVT            H0, S0 }

    v112 = *_D0.i16;
    *_D0.i32 = v133;
    _S1 = v134;
    __asm
    {
      FCVT            H4, S1
      FCVT            H5, S0
    }

    *_D0.i32 = v131;
    _S1 = v132;
    __asm
    {
      FCVT            H6, S1
      FCVT            H7, S0
    }

    *_D0.i32 = v129;
    _S1 = v130;
    __asm
    {
      FCVT            H11, S1
      FCVT            H12, S0
    }

    *_D0.i32 = v127;
    _S1 = v128;
    __asm
    {
      FCVT            H13, S1
      FCVT            H14, S0
    }

    *_D0.i16 = v22;
    v58 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v23;
    v59 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v24;
    v60 = vdupq_lane_s16(_D0, 0);
    if (v21)
    {
      v61 = (v21 + v16 * v20 + v7);
    }

    else
    {
      v61 = 0;
    }

    *_D0.i16 = v25;
    v62 = vdupq_lane_s16(_D0, 0);
    if (v17)
    {
      v63 = (v17 + v15 * v20 + v7);
    }

    else
    {
      v63 = 0;
    }

    *_D0.i16 = v26;
    v64 = vdupq_lane_s16(_D0, 0);
    v65 = (v18 + v111 * v20 + v7);
    _S1 = v126;
    __asm { FCVT            H1, S1 }

    v68 = &result[4 * v110] + v13 * v5;
    v69.i64[0] = 0x7000700070007000;
    v69.i64[1] = 0x7000700070007000;
    v70.i64[0] = 0x9000900090009000;
    v70.i64[1] = 0x9000900090009000;
    do
    {
      if (v9 < 8)
      {
        v90 = 0;
        v75 = v63;
        v74 = v61;
        v73 = v65;
        v72 = v68;
      }

      else
      {
        v71 = 0;
        v72 = v68;
        v73 = v65;
        v74 = v61;
        v75 = v63;
        do
        {
          v142 = vld4q_s16(v72);
          v72 += 32;
          if (v74)
          {
            _D20 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(v142.val[3], vdupq_n_s16(0x5BF8u))));
          }

          else
          {
            _D20 = 0;
          }

          v76 = vmulq_f16(v142.val[1], v69);
          v77 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v142.val[0], v69), 0), v70));
          v78.i16[0] = *(v37 + 2 * v77.u16[0]);
          v78.i16[1] = *(v37 + 2 * v77.u16[1]);
          v78.i16[2] = *(v37 + 2 * v77.u16[2]);
          v78.i16[3] = *(v37 + 2 * v77.u16[3]);
          v78.i16[4] = *(v37 + 2 * v77.u16[4]);
          v78.i16[5] = *(v37 + 2 * v77.u16[5]);
          v78.i16[6] = *(v37 + 2 * v77.u16[6]);
          v78.i16[7] = *(v37 + 2 * v77.u16[7]);
          v79 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v76, 0), v70));
          v77.i16[0] = *(v37 + 2 * v79.u16[0]);
          v77.i16[1] = *(v37 + 2 * v79.u16[1]);
          v77.i16[2] = *(v37 + 2 * v79.u16[2]);
          v77.i16[3] = *(v37 + 2 * v79.u16[3]);
          v77.i16[4] = *(v37 + 2 * v79.u16[4]);
          v77.i16[5] = *(v37 + 2 * v79.u16[5]);
          v77.i16[6] = *(v37 + 2 * v79.u16[6]);
          v77.i16[7] = *(v37 + 2 * v79.u16[7]);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v142.val[2], v69), 0), v70));
          v79.i16[0] = *(v37 + 2 * v80.u16[0]);
          v79.i16[1] = *(v37 + 2 * v80.u16[1]);
          v79.i16[2] = *(v37 + 2 * v80.u16[2]);
          v79.i16[3] = *(v37 + 2 * v80.u16[3]);
          v79.i16[4] = *(v37 + 2 * v80.u16[4]);
          v79.i16[5] = *(v37 + 2 * v80.u16[5]);
          v79.i16[6] = *(v37 + 2 * v80.u16[6]);
          v79.i16[7] = *(v37 + 2 * v80.u16[7]);
          v81 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v78, _H7), v77, _H11), v79, _H12);
          v82 = vmulq_n_f16(v79, _H1);
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v78, _H4), v77, _H5), v79, _H6), 0), v70));
          v84.i16[0] = *(v38 + 2 * v83.u16[0]);
          v84.i16[1] = *(v38 + 2 * v83.u16[1]);
          v84.i16[2] = *(v38 + 2 * v83.u16[2]);
          v84.i16[3] = *(v38 + 2 * v83.u16[3]);
          v84.i16[4] = *(v38 + 2 * v83.u16[4]);
          v84.i16[5] = *(v38 + 2 * v83.u16[5]);
          v84.i16[6] = *(v38 + 2 * v83.u16[6]);
          v84.i16[7] = *(v38 + 2 * v83.u16[7]);
          v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, 0), v70));
          v86.i16[0] = *(v38 + 2 * v85.u16[0]);
          v86.i16[1] = *(v38 + 2 * v85.u16[1]);
          v86.i16[2] = *(v38 + 2 * v85.u16[2]);
          v86.i16[3] = *(v38 + 2 * v85.u16[3]);
          v86.i16[4] = *(v38 + 2 * v85.u16[4]);
          v86.i16[5] = *(v38 + 2 * v85.u16[5]);
          v86.i16[6] = *(v38 + 2 * v85.u16[6]);
          v86.i16[7] = *(v38 + 2 * v85.u16[7]);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v82, v77, _H14), v78, _H13), 0), v70));
          v88.i16[0] = *(v38 + 2 * v87.u16[0]);
          result = (v38 + 2 * v87.u16[2]);
          v88.i16[1] = *(v38 + 2 * v87.u16[1]);
          v88.i16[2] = *result;
          v88.i16[3] = *(v38 + 2 * v87.u16[3]);
          v88.i16[4] = *(v38 + 2 * v87.u16[4]);
          v88.i16[5] = *(v38 + 2 * v87.u16[5]);
          v88.i16[6] = *(v38 + 2 * v87.u16[6]);
          v88.i16[7] = *(v38 + 2 * v87.u16[7]);
          *v73++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v58, v84, v125), v86, _H9), v88, _H10), v58), v60)));
          if (v75)
          {
            v89 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v59, v84, v114), v86, v113), v88, v112);
            v141.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v59, v84, v117), v86, v116), v88, v115), v62), v64), v62), v64)));
            v141.val[1] = vmovn_s16(vcvtq_u16_f16(v89));
            vst2_s8(v75, v141);
            v75 += 16;
          }

          if (v74)
          {
            *v74++ = _D20;
          }

          v71 += 8;
        }

        while (v71 < v9 - 7);
        v90 = v9 & 0xFFFFFFF8;
      }

      v91 = v9 - v90;
      if (v9 > v90)
      {
        do
        {
          _D20.i16[0] = v72[v140];
          _H21 = v72[BYTE2(v140)];
          __asm { FCVT            S21, H21 }

          _D20.i16[1] = v72[BYTE1(v140)];
          _D22 = vdup_n_s32(0x45FFF800u);
          _D20 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(_D20), _D22), 0), _D22)));
          result = _D20.u32[0];
          _D20.i16[0] = *(v37 + 2 * _D20.u32[0]);
          __asm { FCVT            S20, H20 }

          _D22.i16[0] = *(v37 + 2 * _D20.u32[1]);
          __asm { FCVT            S22, H22 }

          LOWORD(_S21) = *(v37 + 2 * llroundf(fminf(fmaxf(_S21 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          v96 = ((v133 * _D22.f32[0]) + (*_D20.i32 * v134)) + (_S21 * v132);
          v97 = ((v130 * _D22.f32[0]) + (*_D20.i32 * v131)) + (_S21 * v129);
          *_D20.i32 = ((v127 * _D22.f32[0]) + (*_D20.i32 * v128)) + (_S21 * v126);
          LOWORD(_S21) = *(v38 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _D22.i16[0] = *(v38 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _D20.i16[0] = *(v38 + 2 * llroundf(fminf(fmaxf(*_D20.i32, 0.0), 8191.0)));
          __asm { FCVT            S23, H20 }

          *_D20.i32 = (((v136 * _S22) + (v137 * _S21)) + (v135 * _S23)) + v33;
          v101 = v35;
          if (*_D20.i32 <= v35)
          {
            v101 = (((v136 * _S22) + (v137 * _S21)) + (v135 * _S23)) + v33;
            if (*_D20.i32 < v33)
            {
              v101 = v33;
            }
          }

          _H20 = v72[HIBYTE(v140)];
          v73->i8[0] = llroundf(v101);
          v73 = (v73 + 1);
          if (v75)
          {
            v103 = ((v34 + (_S21 * v123)) + (_S22 * v122)) + (_S23 * v121);
            v104 = v26;
            if (v103 <= v36)
            {
              v104 = ((v34 + (_S21 * v123)) + (_S22 * v122)) + (_S23 * v121);
              if (v103 < v124)
              {
                v104 = v124;
              }
            }

            v105 = ((v34 + (_S21 * v120)) + (_S22 * v119)) + (_S23 * v118);
            *v75 = llroundf(v104);
            v106 = v26;
            if (v105 <= v36)
            {
              v106 = v105;
              if (v105 < v124)
              {
                v106 = v124;
              }
            }

            v75[1] = llroundf(v106);
            v75 += 2;
          }

          if (v74)
          {
            __asm { FCVT            S20, H20 }

            v74->i8[0] = llroundf(_S20 * 255.0);
            v74 = (v74 + 1);
          }

          v72 += 4;
          --v91;
        }

        while (v91);
      }

      v68 += v13;
      v65 = (v65 + v111);
      v63 += v15;
      v61 = (v61 + v16);
      ++v32;
    }

    while (v32 != v31);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_TRC_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_RGhA_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, double _D4)
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
    v86 = *(v13 + 48);
    v28 = *(v13 + 52);
    v29 = *(v13 + 56);
    v30 = *(v13 + 60);
    v31 = *(v13 + 64);
    v32 = *(v13 + 68);
    v33 = *(v13 + 72);
    v34 = *(v13 + 76);
    v35 = *(v13 + 80);
    v36 = *(v13 + 84);
    v37 = *(v13 + 88);
    v38 = *(v13 + 92);
    v39 = *(v13 + 96);
    v40 = *(v13 + 100);
    v41 = *(v13 + 104);
    v42 = v13 + 164;
    v43 = v13 + 16548;
    v44 = *(result + 14);
    v45 = v9 + *(result + 15);
    v46 = *(result + 28) * a2 / v7 + *(result + 44);
    v47 = *(v13 + 157);
    v48 = *(v13 + 156);
    v49 = *(v13 + 155);
    v50 = *(v13 + 154);
    v51 = v15[2];
    if (v51)
    {
      v52 = (v51 + v19 * v45 + v44);
    }

    else
    {
      v52 = 0;
    }

    v54 = *v15;
    v53 = v15[1];
    v55 = (v53 + v18 * v45 + v44);
    if (!v53)
    {
      v55 = 0;
    }

    v56 = (v54 + v17 * v45 + v44);
    v57 = **(result + 7) + v46 * v14 + 8 * *(result + 36);
    v58 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v12 >= 1)
      {
        v59 = v12;
        v60 = v57;
        v61 = v52;
        v62 = v55;
        v63 = v56;
        do
        {
          LOWORD(_D4) = *(v60 + 2 * v50);
          WORD1(_D4) = *(v60 + 2 * v49);
          _D4 = COERCE_DOUBLE(vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(*&vcvtq_f32_f16(*&_D4), v58), 0), v58))));
          LOWORD(_D4) = *(v42 + 2 * LODWORD(_D4));
          _H11 = *(v60 + 2 * v48);
          __asm
          {
            FCVT            S11, H11
            FCVT            S4, H4
          }

          _H12 = *(v42 + 2 * HIDWORD(_D4));
          __asm { FCVT            S12, H12 }

          LOWORD(_S11) = *(v42 + 2 * llroundf(fminf(fmaxf(_S11 * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v73 = ((v34 * _S12) + (*&_D4 * v33)) + (_S11 * v35);
          v74 = ((v37 * _S12) + (*&_D4 * v36)) + (_S11 * v38);
          *&_D4 = ((v40 * _S12) + (*&_D4 * v39)) + (_S11 * v41);
          LOWORD(_S11) = *(v43 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          LOWORD(_S11) = *(v43 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S13, H11 }

          LOWORD(_D4) = *(v43 + 2 * llroundf(fminf(fmaxf(*&_D4, 0.0), 8191.0)));
          __asm { FCVT            S14, H4 }

          v78 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v20;
          v79 = v22;
          if (v78 <= v22)
          {
            v79 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v20;
            if (v78 < v20)
            {
              v79 = v20;
            }
          }

          _H11 = *(v60 + 2 * v47);
          *v63++ = llroundf(v79);
          if (v62)
          {
            v81 = ((v21 + (_S12 * v86)) + (_S13 * v28)) + (_S14 * v29);
            v82 = v24;
            if (v81 <= v24)
            {
              v82 = ((v21 + (_S12 * v86)) + (_S13 * v28)) + (_S14 * v29);
              if (v81 < v23)
              {
                v82 = v23;
              }
            }

            v83 = ((v21 + (_S12 * v30)) + (_S13 * v31)) + (_S14 * v32);
            *v62 = llroundf(v82);
            v84 = v24;
            if (v83 <= v24)
            {
              v84 = v83;
              if (v83 < v23)
              {
                v84 = v23;
              }
            }

            v62[1] = llroundf(v84);
            v62 += 2;
          }

          if (v61)
          {
            __asm { FCVT            S4, H11 }

            *v61++ = llroundf(_S4 * 255.0);
          }

          v60 += 8;
          --v59;
        }

        while (v59);
      }

      v57 += v14;
      v56 += v17;
      v55 += v18;
      v52 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_444vf_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_RGhA_rgb_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v99 = *(result + 36);
  v8 = *result;
  v9 = *(result + 14);
  v10 = *(result + 12);
  v11 = *(result + 13);
  v12 = *(result + 19);
  v13 = v11 * a2 / v8;
  v14 = v13 + *(result + 15);
  v16 = *(result + 16);
  v15 = *(result + 17);
  v17 = v11 + v11 * a2;
  v18 = **(result + 8);
  v98 = **(result + 7);
  v19 = v18 * (*(result + 28) * a2 / v8 + *(result + 44));
  v20 = *v15;
  v21 = v15[1];
  v22 = v15[2];
  v23 = *v16;
  v24 = v16[1];
  v25 = v16[2];
  v26 = *(v12 + 136);
  v112 = *(v12 + 154);
  v27 = *(v12 + 144);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v108 = *(v12 + 52);
  v109 = *(v12 + 48);
  LODWORD(a7) = *(v12 + 60);
  v106 = *&a7;
  v107 = *(v12 + 56);
  v105 = *(v12 + 64);
  _S16 = *(v12 + 68);
  memset(v111, 0, sizeof(v111));
  v36 = v17 / v8;
  do
  {
    v37 = 0;
    v38 = *(&v112 + v7);
    v39 = *(v111 + v7);
    do
    {
      v110 = v39;
      *(&v110 | v37 & 7) = v38 + 4 * v37;
      v39 = v110;
      ++v37;
    }

    while (v37 != 8);
    *(v111 + v7++) = v110;
  }

  while (v7 != 4);
  v40 = v36 - v13;
  if (v36 - v13 >= 1)
  {
    v41 = 0;
    _S17 = v26;
    v43 = v27;
    v44 = v28;
    v45 = v30;
    v46 = v31;
    __asm
    {
      FCVT            H8, S0
      FCVT            H9, S1
      FCVT            H10, S2
    }

    _S3 = v109;
    __asm { FCVT            H3, S3 }

    v104 = *&_S3;
    _S3 = v108;
    __asm { FCVT            H3, S3 }

    v103 = *&_S3;
    _S3 = v107;
    __asm { FCVT            H3, S3 }

    v102 = *&_S3;
    _S3 = LODWORD(a7);
    __asm { FCVT            H3, S3 }

    v101 = *&_S3;
    _S3 = v105;
    __asm
    {
      FCVT            H15, S3
      FCVT            H3, S16
    }

    *&a7 = v27;
    v61 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v28;
    v62 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v29;
    v63 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v30;
    v64 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v31;
    v65 = vdupq_lane_s16(*&a7, 0);
    if (v25)
    {
      v66 = (v25 + v22 * v14 + v9);
    }

    else
    {
      v66 = 0;
    }

    if (v24)
    {
      v67 = (v24 + v21 * v14 + v9);
    }

    else
    {
      v67 = 0;
    }

    v68 = (v23 + v20 * v14 + v9);
    v69 = v98 + v19 + 8 * v99;
    __asm { FCVT            H4, S17 }

    do
    {
      if (v10 < 8)
      {
        v81 = 0;
        v75 = v67;
        v74 = v66;
        v73 = v68;
        v72 = v69;
      }

      else
      {
        v71 = 0;
        v72 = v69;
        v73 = v68;
        v74 = v66;
        v75 = v67;
        do
        {
          v114 = vld4q_s16(v72);
          v72 += 32;
          v76 = vmulq_n_f16(v114.val[0], _H4);
          v77 = vmulq_n_f16(v114.val[1], _H4);
          v78 = vmulq_n_f16(v114.val[2], _H4);
          v79 = COERCE_DOUBLE(vmovn_s16(vcvtq_u16_f16(vmulq_f16(v114.val[3], vdupq_n_s16(0x5BF8u)))));
          if (v74)
          {
            v80 = v79;
          }

          else
          {
            v80 = 0.0;
          }

          *v73++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v76, _H8), v77, _H9), v78, _H10), v61), v63)));
          if (v75)
          {
            v113.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v76, v104), v77, v103), v78, v102), v64), v65), v64), v65)));
            v113.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v76, v101), v77, _H15), v78, _H3)));
            vst2_s8(v75, v113);
            v75 += 16;
          }

          if (v74)
          {
            *v74++ = v80;
          }

          v71 += 8;
        }

        while (v71 < v10 - 7);
        v81 = v10 & 0x7FFFFFF8;
      }

      v82 = v10 - v81;
      if (v10 > v81)
      {
        do
        {
          _H5 = v72[v112];
          __asm { FCVT            S5, H5 }

          v85 = _S17 * _S5;
          LOWORD(_S5) = v72[BYTE1(v112)];
          __asm { FCVT            S5, H5 }

          v87 = _S17 * _S5;
          LOWORD(_S5) = v72[BYTE2(v112)];
          __asm { FCVT            S5, H5 }

          v89 = _S17 * _S5;
          v90 = (((_S1 * v87) + (_S0 * v85)) + (_S2 * v89)) + v43;
          v91 = v29;
          if (v90 <= v29)
          {
            v91 = (((_S1 * v87) + (_S0 * v85)) + (_S2 * v89)) + v43;
            if (v90 < v43)
            {
              v91 = v27;
            }
          }

          _H31 = v72[HIBYTE(v112)];
          v73->i8[0] = llroundf(v91);
          v73 = (v73 + 1);
          if (v75)
          {
            v93 = ((v44 + (v85 * v109)) + (v87 * v108)) + (v89 * v107);
            v94 = v46;
            if (v93 <= v46)
            {
              v94 = ((v44 + (v85 * v109)) + (v87 * v108)) + (v89 * v107);
              if (v93 < v45)
              {
                v94 = v45;
              }
            }

            v95 = ((v44 + (v85 * v106)) + (v87 * v105)) + (v89 * _S16);
            *v75 = llroundf(v94);
            v96 = v46;
            if (v95 <= v46)
            {
              v96 = v95;
              if (v95 < v45)
              {
                v96 = v45;
              }
            }

            v75[1] = llroundf(v96);
            v75 += 2;
          }

          if (v74)
          {
            __asm { FCVT            S5, H31 }

            *v74 = llroundf(_S5 * 255.0);
            v74 = (v74 + 1);
          }

          v72 += 4;
          --v82;
        }

        while (v82);
      }

      v69 += v18;
      v68 = (v68 + v20);
      v67 += v21;
      v66 = (v66 + v22);
      ++v41;
    }

    while (v41 != v40);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}