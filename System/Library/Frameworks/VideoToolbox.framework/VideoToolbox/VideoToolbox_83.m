uint64_t vt_Copy_RGfA_rgb_422vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
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
    if (v21 || (16 * (v29 + v28) + 16) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
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

  if ((*v66 * (v15 + v37 - 1) + 16 * (v36 + v29)) <= *v64)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_rgb_422vf_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_422vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v5 = 0;
  v107 = *(result + 36);
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
  v106 = **(result + 7);
  v17 = v16 * (*(result + 28) * a2 / v7 + *(result + 44));
  v18 = *v14;
  v19 = v14[1];
  v20 = v14[2];
  v22 = *v11;
  v21 = v11[1];
  v23 = v11[2];
  v24 = *(v10 + 136);
  v117 = *(v10 + 154);
  v25 = *(v10 + 144);
  v26 = *(v10 + 146);
  v27 = *(v10 + 148);
  v28 = *(v10 + 150);
  v29 = *(v10 + 152);
  _S0 = *(v10 + 36);
  _S1 = *(v10 + 40);
  _S2 = *(v10 + 44);
  v2.i32[0] = *(v10 + 48);
  v3.i32[0] = *(v10 + 52);
  v4.i32[0] = *(v10 + 56);
  v34 = *(v10 + 60);
  v33 = *(v10 + 64);
  v35 = *(v10 + 68);
  memset(v116, 0, sizeof(v116));
  v36 = v15 / v7;
  do
  {
    v37 = 0;
    v38 = *(&v117 + v5);
    v39 = *(v116 + v5);
    do
    {
      v115 = v39;
      *(&v115 | v37 & 7) = v38 + 4 * v37;
      v39 = v115;
      ++v37;
    }

    while (v37 != 8);
    *(v116 + v5++) = v115;
  }

  while (v5 != 4);
  v40 = v36 - v12;
  if (v36 - v12 >= 1)
  {
    v41 = 0;
    _S3 = v24;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v29;
    v2.i32[1] = v34;
    v48 = v6 & 0xFFFFFFFE;
    *v2.f32 = vmul_f32(*v2.f32, 0x3F0000003F000000);
    v3.i32[1] = v33;
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    v4.i32[1] = v35;
    *v4.f32 = vmul_f32(*v4.f32, 0x3F0000003F000000);
    __asm { FCVT            H8, S0 }

    v114 = _H8;
    __asm { FCVT            H8, S1 }

    v113 = _H8;
    __asm { FCVT            H8, S2 }

    v111 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    v112 = _H8;
    v56 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v109 = v56;
    v110 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    *v56.i16 = v25;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v26;
    v58 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v27;
    v59 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v28;
    v60 = vdupq_lane_s16(*v56.i8, 0);
    *v56.i16 = v29;
    v61 = vdupq_lane_s16(*v56.i8, 0);
    if (v23)
    {
      v62 = v23 + v20 * v13 + v8;
    }

    else
    {
      v62 = 0;
    }

    if (v21)
    {
      v63 = (v21 + v19 * v13 + v8);
    }

    else
    {
      v63 = 0;
    }

    v64 = (v22 + v18 * v13 + v8);
    v65 = v106 + v17 + 16 * v107;
    __asm { FCVT            H11, S3 }

    v67 = v2.i64[0];
    v68 = v3.i64[0];
    v69 = v4.i64[0];
    do
    {
      if (v6 < 8)
      {
        v82 = 0;
        v73 = v65;
        v72 = v64;
        v81 = v63;
        v71 = v62;
      }

      else
      {
        v70 = 0;
        v71 = v62;
        v72 = v64;
        v73 = v65;
        do
        {
          v74 = v73;
          v118 = vld4q_f32(v74);
          v74 += 16;
          v119 = vld4q_f32(v74);
          v75 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v118.val[0]), v119.val[0]), _H11);
          v76 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v118.val[1]), v119.val[1]), _H11);
          v77 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v118.val[2]), v119.val[2]), _H11);
          v78 = COERCE_DOUBLE(vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v118.val[3]), v119.val[3]), vdupq_n_s16(0x5BF8u)))));
          if (v71)
          {
            v79 = v78;
          }

          else
          {
            v79 = 0.0;
          }

          *v72++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v57, v75, v114), v76, v113), v77, v112), v57), v59)));
          v80 = vpaddq_f16(v75, v76);
          *&v63[v70] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v58, v111, vzip1q_s16(v80, v80)), v110, vzip2q_s16(v80, v80)), v109, vaddq_f16(vtrn1q_s16(v77, v77), vtrn2q_s16(v77, v77))), v60), v61)));
          if (v71)
          {
            *v71 = v79;
            v71 += 8;
          }

          v73 += 32;
          v70 += 8;
        }

        while (v70 < v6 - 7);
        v81 = &v63[v70];
        v82 = v6 & 0xFFFFFFF8;
      }

      if (v82 < v48)
      {
        v83 = v73 + 4;
        do
        {
          if (v71)
          {
            v84 = &v83[HIBYTE(v117)];
            v85 = llroundf(*(v84 - 4) * 255.0);
            v86 = llroundf(*v84 * 255.0);
          }

          else
          {
            v85 = 0;
            v86 = 0;
          }

          v87 = &v83[v117];
          v88 = *(v87 - 4) * _S3;
          v89 = &v83[BYTE1(v117)];
          v90 = *(v89 - 4) * _S3;
          v91 = &v83[BYTE2(v117)];
          v92 = *(v91 - 4) * _S3;
          v93 = *v87 * _S3;
          v94 = *v89 * _S3;
          v95 = *v91 * _S3;
          v96 = (((_S1 * v90) + (_S0 * v88)) + (_S2 * v92)) + v43;
          v97 = (((_S1 * v94) + (_S0 * v93)) + (_S2 * v95)) + v43;
          if (v96 < v43)
          {
            v98 = v43;
          }

          else
          {
            v98 = (((_S1 * v90) + (_S0 * v88)) + (_S2 * v92)) + v43;
          }

          if (v96 <= v45)
          {
            v99 = v98;
          }

          else
          {
            v99 = v45;
          }

          v72->i8[0] = llroundf(v99);
          if (v97 < v43)
          {
            v100 = v43;
          }

          else
          {
            v100 = (((_S1 * v94) + (_S0 * v93)) + (_S2 * v95)) + v43;
          }

          if (v97 > v45)
          {
            v100 = v45;
          }

          v72->i8[1] = llroundf(v100);
          v101 = v88 + v93;
          v102 = ((v44 + ((v88 + v93) * *&v67)) + ((v90 + v94) * *&v68)) + ((v92 + v95) * *&v69);
          v103 = v47;
          if (v102 <= v47)
          {
            v103 = v102;
            if (v102 < v46)
            {
              v103 = v46;
            }
          }

          v104 = ((v44 + (v101 * *(&v67 + 1))) + ((v90 + v94) * *(&v68 + 1))) + ((v92 + v95) * *(&v69 + 1));
          *v81 = llroundf(v103);
          v105 = v47;
          if (v104 <= v47)
          {
            v105 = v104;
            if (v104 < v46)
            {
              v105 = v46;
            }
          }

          v81[1] = llroundf(v105);
          if (v71)
          {
            *v71 = v85;
            *(v71 + 1) = v86;
            v71 += 2;
          }

          v82 += 2;
          v83 += 8;
          v72 = (v72 + 2);
          v81 += 2;
        }

        while (v82 < v48);
      }

      v65 += v16;
      v64 = (v64 + v18);
      v63 += v19;
      v62 += v20;
      ++v41;
    }

    while (v41 != v40);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
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
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
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
    if (v21 || (16 * (v29 + v28) + 16) > *v66 || (v32 = v27 + 1 + v30, v32 > *v61) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v61[1] || (v33 = v61[2], v32 > v33) && v33)
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

  if ((*v66 * (v15 + v37 - 1) + 16 * (v36 + v29)) <= *v64)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_rgb_422vf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v13 + 136);
    LOWORD(a4) = *(v13 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v26 = LODWORD(a8);
    v27 = *(v13 + 36);
    v28 = *(v13 + 40);
    v29 = *(v13 + 44);
    v30 = *(v13 + 48) * 0.5;
    v31 = *(v13 + 52) * 0.5;
    v32 = *(v13 + 56) * 0.5;
    v33 = *(v13 + 60) * 0.5;
    v34 = *(v13 + 64) * 0.5;
    v35 = *(v13 + 68) * 0.5;
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v13 + 157);
    v40 = *(v13 + 156);
    v41 = *(v13 + 155);
    v42 = *(v13 + 154);
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
    v47 = v45 + v19 * v37 + v36;
    if (!v45)
    {
      v47 = 0;
    }

    v48 = (v46 + v18 * v37 + v36);
    v49 = **(result + 7) + v38 * v15 + 16 * *(result + 36);
    do
    {
      if (v14 >= 1)
      {
        v50 = 0;
        v51 = v49;
        v52 = v44;
        v53 = v48;
        do
        {
          v54 = v51 + 16;
          if (v52)
          {
            v55 = llroundf(*(v51 + 4 * v39) * 255.0);
            v56 = llroundf(*(v54 + 4 * v39) * 255.0);
          }

          else
          {
            v55 = 0;
            v56 = 0;
          }

          v57 = *(v51 + 4 * v42) * v21;
          v58 = *(v51 + 4 * v41) * v21;
          v59 = *(v51 + 4 * v40) * v21;
          v60 = *(v54 + 4 * v42) * v21;
          v61 = *(v54 + 4 * v41) * v21;
          v62 = *(v54 + 4 * v40) * v21;
          v63 = (((v28 * v58) + (v27 * v57)) + (v29 * v59)) + v22;
          v64 = (((v28 * v61) + (v27 * v60)) + (v29 * v62)) + v22;
          if (v63 < v22)
          {
            v65 = v22;
          }

          else
          {
            v65 = (((v28 * v58) + (v27 * v57)) + (v29 * v59)) + v22;
          }

          if (v63 <= v24)
          {
            v66 = v65;
          }

          else
          {
            v66 = v24;
          }

          *v53 = llroundf(v66);
          if (v64 < v22)
          {
            v67 = v22;
          }

          else
          {
            v67 = (((v28 * v61) + (v27 * v60)) + (v29 * v62)) + v22;
          }

          if (v64 > v24)
          {
            v67 = v24;
          }

          v53[1] = llroundf(v67);
          v68 = v57 + v60;
          v69 = v58 + v61;
          v70 = v59 + v62;
          v71 = ((v23 + (v68 * v30)) + (v69 * v31)) + (v70 * v32);
          v72 = v26;
          if (v71 <= v26)
          {
            v72 = ((v23 + (v68 * v30)) + (v69 * v31)) + (v70 * v32);
            if (v71 < v25)
            {
              v72 = v25;
            }
          }

          v73 = ((v23 + (v68 * v33)) + (v69 * v34)) + (v70 * v35);
          *(v47 + v50) = llroundf(v72);
          v74 = v26;
          if (v73 <= v26)
          {
            v74 = v73;
            if (v73 < v25)
            {
              v74 = v25;
            }
          }

          *(v47 + v50 + 1) = llroundf(v74);
          if (v52)
          {
            *v52 = v55;
            v52[1] = v56;
            v52 += 2;
          }

          v51 += 32;
          v50 += 2;
          v53 += 2;
        }

        while (v50 < v14);
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

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, float a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 += v18[1] * v16 + v13;
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = **(result + 8);
    v22 = *v18;
    v23 = *(result + 19);
    LOWORD(a3) = *(v23 + 144);
    LOWORD(a8) = *(v23 + 146);
    LOWORD(a9) = *(v23 + 148);
    LOWORD(a10) = *(v23 + 150);
    LOWORD(v10) = *(v23 + 152);
    v24 = *(v23 + 36);
    v25 = *(v23 + 40);
    v26 = *(v23 + 44);
    v27 = **(result + 7) + v21 * (*(result + 28) * a2 / v11 + *(result + 44)) + 16 * *(result + 36);
    v28 = (*v15 + v22 * v16 + v13);
    v29 = *(result + 24) & 0xFFFFFFFE;
    v30 = LODWORD(a3);
    v132 = LODWORD(a8);
    v133 = *(v23 + 72);
    v31 = LODWORD(a9);
    v32 = LODWORD(a10);
    v33 = v10;
    v130 = *(v23 + 52) * 0.5;
    v131 = *(v23 + 48) * 0.5;
    v128 = *(v23 + 60) * 0.5;
    v129 = *(v23 + 56) * 0.5;
    v126 = *(v23 + 68) * 0.5;
    v127 = *(v23 + 64) * 0.5;
    v34 = *(v23 + 80);
    v125 = *(v23 + 76);
    v35 = *(v23 + 84);
    v36 = *(v23 + 88);
    v37 = *(v23 + 92);
    v38 = *(v23 + 96);
    v39 = *(v23 + 100);
    v40 = *(v23 + 104);
    v41 = v23 + 164;
    v42 = v23 + 16548;
    v43 = v23 + 32932;
    v45 = *(v23 + 108);
    v44 = *(v23 + 112);
    v46 = *(v23 + 116);
    v47 = *(v23 + 120);
    v48 = *(v23 + 157);
    v49 = *(v23 + 156);
    v50 = *(v23 + 155);
    v51 = vdup_n_s32(0x45FFF800u);
    v52 = *(v23 + 154);
    do
    {
      if (v29 >= 1)
      {
        v53 = 0;
        v54 = v19;
        v55 = v28;
        v56 = v27;
        do
        {
          v57 = v25;
          v58.i32[0] = *(v56 + 4 * v52);
          v58.i32[1] = *(v56 + 4 * v50);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v58, v51), 0), v51)));
          v60 = v56 + 16;
          _D0.i16[0] = *(v41 + 2 * _D0.u32[0]);
          __asm { FCVT            S15, H0 }

          _D0.i16[0] = *(v41 + 2 * _D0.u32[1]);
          v66.i32[0] = *(v56 + 4 * v49);
          v66.i32[1] = *(v56 + 16 + 4 * v52);
          __asm { FCVT            S17, H0 }

          v68 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v66, v51), 0), v51)));
          _D0.i16[0] = *(v41 + 2 * v68.u32[0]);
          __asm { FCVT            S18, H0 }

          v70 = fmaxf(_S15, fmaxf(_S17, _S18));
          v71 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v70);
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v70);
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H19 = *(v41 + 2 * v68.u32[1]);
          __asm { FCVT            S20, H19 }

          v75.i32[0] = *(v60 + 4 * v50);
          v75.i32[1] = *(v60 + 4 * v49);
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v75, v51), 0), v51)));
          _D19.i16[0] = *(v41 + 2 * _D19.u32[0]);
          __asm { FCVT            S21, H19 }

          _D19.i16[0] = *(v41 + 2 * _D19.u32[1]);
          __asm { FCVT            S22, H19 }

          v79 = (((v44 * _S21) + (v45 * _S20)) + (v46 * _S22)) + (v47 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v80 = 8191.0;
          if (v79 <= 8191.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          if (v54)
          {
            v81 = *(v60 + 4 * v48);
            v82 = llroundf(*(v56 + 4 * v48) * 255.0);
            v83 = llroundf(v81 * 255.0);
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

          _H0 = *(v42 + 2 * llroundf(v72));
          __asm { FCVT            S0, H0 }

          v86 = _S15 * _S0;
          v87 = _S17 * _S0;
          v88 = _S18 * _S0;
          _H17 = *(v42 + 2 * llroundf(v80));
          __asm { FCVT            S17, H17 }

          v91 = _S20 * _S17;
          _S19 = _S21 * _S17;
          _S17 = _S22 * _S17;
          v94 = ((v125 * v87) + (v86 * v133)) + (v88 * v34);
          v95 = ((v36 * v87) + (v86 * v35)) + (v88 * v37);
          v96 = ((v39 * v87) + (v86 * v38)) + (v88 * v40);
          v97 = (v125 * _S19) + (v91 * v133);
          v98 = (v36 * _S19) + (v91 * v35);
          v99 = (v39 * _S19) + (v91 * v38);
          _S1 = v97 + (_S17 * v34);
          v101 = v98 + (_S17 * v37);
          LOWORD(_S19) = *(v43 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v102 = v99 + (_S17 * v40);
          __asm { FCVT            S19, H19 }

          LOWORD(_S17) = *(v43 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v104 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          __asm { FCVT            S0, H17 }

          LOWORD(_S17) = *(v43 + 2 * v104);
          __asm { FCVT            S21, H17 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S18, H1 }

          v25 = v57;
          v109 = (v57 * _S0) + (v24 * _S19);
          _S2 = _S19 + _S17;
          v111 = _S0 + _S18;
          v112 = (v132 + ((_S19 + _S17) * v131)) + (v111 * v130);
          v113 = (v132 + (_S2 * v128)) + (v111 * v127);
          LOWORD(_S2) = *(v43 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S20, H2 }

          v115 = v109 + (v26 * _S21);
          v116 = v112 + ((_S21 + _S20) * v129);
          v117 = v113 + ((_S21 + _S20) * v126);
          if (v116 < v32)
          {
            v118 = v32;
          }

          else
          {
            v118 = v116;
          }

          v119 = v115 + v30;
          if (v116 > v33)
          {
            v118 = v33;
          }

          v120 = llroundf(v118);
          if (v119 < v30)
          {
            v121 = v30;
          }

          else
          {
            v121 = v119;
          }

          *v55 = v120;
          if (v119 > v31)
          {
            v121 = v31;
          }

          v55[1] = llroundf(v121);
          v122 = v33;
          if (v117 <= v33)
          {
            v122 = v117;
            if (v117 < v32)
            {
              v122 = v32;
            }
          }

          v123 = ((v57 * _S18) + (v24 * _S17)) + (v26 * _S20);
          v55[2] = llroundf(v122);
          v124 = v31;
          if ((v123 + v30) <= v31)
          {
            v124 = v123 + v30;
            if ((v123 + v30) < v30)
            {
              v124 = v30;
            }
          }

          v55[3] = llroundf(v124);
          if (v54)
          {
            *v54 = v82;
            v54[1] = v83;
            v54 += 2;
          }

          v56 += 32;
          v53 += 2;
          v55 += 4;
        }

        while (v53 < v29);
      }

      v27 += v21;
      v28 += v22;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = *(result + 14);
  v13 = v11 * a2 / v10;
  v14 = *(result + 16);
  v15 = v13 + *(result + 15);
  v16 = (v11 + v11 * a2) / v10 - v13;
  v17 = *(result + 17);
  v18 = v14[1];
  if (v18)
  {
    v18 += v17[1] * v15 + v12;
  }

  if (v16 >= 1)
  {
    v19 = 0;
    v20 = **(result + 8);
    v21 = *v17;
    v22 = *(result + 19);
    LOWORD(a6) = *(v22 + 144);
    LOWORD(a7) = *(v22 + 146);
    LOWORD(a8) = *(v22 + 148);
    LOWORD(a9) = *(v22 + 150);
    LOWORD(a10) = *(v22 + 152);
    v23 = *(v22 + 36);
    v24 = *(v22 + 40);
    v25 = *(v22 + 44);
    v26 = **(result + 7) + v20 * (*(result + 28) * a2 / v10 + *(result + 44)) + 16 * *(result + 36);
    v27 = (*v14 + v21 * v15 + v12);
    v28 = *(result + 24) & 0xFFFFFFFE;
    v29 = LODWORD(a6);
    v30 = LODWORD(a7);
    v31 = LODWORD(a8);
    v32 = LODWORD(a9);
    v33 = LODWORD(a10);
    v102 = *(v22 + 52) * 0.5;
    v103 = *(v22 + 48) * 0.5;
    v101 = *(v22 + 56) * 0.5;
    v34 = *(v22 + 60) * 0.5;
    v35 = *(v22 + 64) * 0.5;
    v36 = *(v22 + 72);
    v37 = *(v22 + 68) * 0.5;
    v38 = *(v22 + 76);
    v39 = *(v22 + 80);
    v40 = *(v22 + 84);
    v41 = *(v22 + 88);
    v42 = *(v22 + 92);
    v43 = *(v22 + 96);
    v44 = *(v22 + 100);
    v45 = *(v22 + 104);
    v46 = v22 + 164;
    v47 = v22 + 16548;
    v48 = *(v22 + 157);
    v49 = *(v22 + 156);
    v50 = *(v22 + 155);
    v51 = vdup_n_s32(0x45FFF800u);
    v52 = *(v22 + 154);
    do
    {
      if (v28 >= 1)
      {
        v53 = 0;
        v54 = v26;
        v55 = v18;
        v56 = v27;
        do
        {
          v57 = v54 + 16;
          if (v55)
          {
            v58 = llroundf(*(v54 + 4 * v48) * 255.0);
            v59 = llroundf(*(v57 + 4 * v48) * 255.0);
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          v60.i32[0] = *(v54 + 4 * v52);
          v60.i32[1] = *(v54 + 4 * v50);
          _D11 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v60, v51), 0), v51)));
          _D11.i16[0] = *(v46 + 2 * _D11.u32[0]);
          __asm { FCVT            S11, H11 }

          _H12 = *(v46 + 2 * _D11.u32[1]);
          __asm { FCVT            S12, H12 }

          v68.i32[0] = *(v54 + 4 * v49);
          v68.i32[1] = *(v57 + 4 * v52);
          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v68, v51), 0), v51)));
          _D13.i16[0] = *(v46 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _H14 = *(v46 + 2 * _D13.u32[1]);
          __asm { FCVT            S14, H14 }

          v72.i32[0] = *(v57 + 4 * v50);
          v72.i32[1] = *(v57 + 4 * v49);
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v72, v51), 0), v51)));
          _D15.i16[0] = *(v46 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _S16 = ((v38 * _S12) + (*_D11.i32 * v36)) + (*_D13.i32 * v39);
          _S17 = ((v41 * _S12) + (*_D11.i32 * v40)) + (*_D13.i32 * v42);
          *_D11.i32 = ((v44 * _S12) + (*_D11.i32 * v43)) + (*_D13.i32 * v45);
          v76 = (v38 * *_D15.i32) + (_S14 * v36);
          *_D13.i32 = (v41 * *_D15.i32) + (_S14 * v40);
          v77 = (v44 * *_D15.i32) + (_S14 * v43);
          _D15.i16[0] = *(v46 + 2 * _D15.u32[1]);
          __asm { FCVT            S15, H15 }

          _S12 = v76 + (*_D15.i32 * v39);
          *_D13.i32 = *_D13.i32 + (*_D15.i32 * v42);
          LOWORD(_S16) = *(v47 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          v79 = v77 + (*_D15.i32 * v45);
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v47 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _D11.i16[0] = *(v47 + 2 * llroundf(fminf(fmaxf(*_D11.i32, 0.0), 8191.0)));
          __asm { FCVT            S15, H11 }

          _D11.i16[0] = *(v47 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v47 + 2 * llroundf(fminf(fmaxf(*_D13.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v84 = llroundf(fminf(fmaxf(v79, 0.0), 8191.0));
          v85 = (v24 * _S17) + (v23 * _S16);
          v86 = _S16 + _S11;
          _S17 = _S17 + _S12;
          v88 = (v30 + (v86 * v103)) + (_S17 * v102);
          v89 = (v30 + (v86 * v34)) + (_S17 * v35);
          LOWORD(_S17) = *(v47 + 2 * v84);
          __asm { FCVT            S13, H17 }

          v91 = v85 + (v25 * *_D15.i32);
          v92 = v88 + ((*_D15.i32 + _S13) * v101);
          v93 = v89 + ((*_D15.i32 + _S13) * v37);
          if (v92 < v32)
          {
            v94 = v32;
          }

          else
          {
            v94 = v92;
          }

          v95 = v91 + v29;
          if (v92 > v33)
          {
            v94 = v33;
          }

          v96 = llroundf(v94);
          if (v95 < v29)
          {
            v97 = v29;
          }

          else
          {
            v97 = v95;
          }

          *v56 = v96;
          if (v95 > v31)
          {
            v97 = v31;
          }

          v56[1] = llroundf(v97);
          v98 = v33;
          if (v93 <= v33)
          {
            v98 = v93;
            if (v93 < v32)
            {
              v98 = v32;
            }
          }

          v99 = (((v24 * _S12) + (v23 * _S11)) + (v25 * _S13)) + v29;
          v56[2] = llroundf(v98);
          v100 = v31;
          if (v99 <= v31)
          {
            v100 = v99;
            if (v99 < v29)
            {
              v100 = v29;
            }
          }

          v56[3] = llroundf(v100);
          if (v55)
          {
            *v55 = v58;
            v55[1] = v59;
            v55 += 2;
          }

          v54 += 32;
          v53 += 2;
          v56 += 4;
        }

        while (v53 < v28);
      }

      v26 += v20;
      v27 += v21;
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_2vuyf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 += v15[1] * v13 + v10;
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = **(result + 8);
    v19 = *(result + 28) * a2 / v8;
    v20 = *v15;
    v21 = *(result + 19);
    LOWORD(a4) = *(v21 + 144);
    LOWORD(a5) = *(v21 + 146);
    v22 = *v12 + *v15 * v13;
    v23 = **(result + 7) + v18 * (v19 + *(result + 44)) + 16 * *(result + 36);
    v24 = (v22 + v10);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = *(v21 + 136);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    LOWORD(a6) = *(v21 + 148);
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
    v43 = *(v21 + 155);
    v44 = *(v21 + 154);
    do
    {
      if (v25 >= 1)
      {
        v45 = 0;
        v46 = v23;
        v47 = v16;
        v48 = v24;
        do
        {
          v49 = v46 + 16;
          if (v47)
          {
            v50 = llroundf(*(v46 + 4 * v41) * 255.0);
            v51 = llroundf(*(v49 + 4 * v41) * 255.0);
          }

          else
          {
            v50 = 0;
            v51 = 0;
          }

          v52 = *(v46 + 4 * v44) * v26;
          v53 = *(v46 + 4 * v43) * v26;
          v54 = *(v46 + 4 * v42) * v26;
          v55 = *(v49 + 4 * v44) * v26;
          v56 = *(v49 + 4 * v43) * v26;
          v57 = *(v49 + 4 * v42) * v26;
          v58 = (((v33 * v53) + (v32 * v52)) + (v34 * v54)) + v27;
          v59 = v52 + v55;
          v60 = v53 + v56;
          v61 = v54 + v57;
          v62 = ((v28 + (v59 * v35)) + (v60 * v36)) + (v61 * v37);
          v63 = ((v28 + (v59 * v38)) + (v60 * v39)) + (v61 * v40);
          if (v62 < v30)
          {
            v64 = v30;
          }

          else
          {
            v64 = v62;
          }

          if (v62 > v31)
          {
            v64 = v31;
          }

          *v48 = llroundf(v64);
          if (v58 < v27)
          {
            v65 = v27;
          }

          else
          {
            v65 = v58;
          }

          if (v58 > v29)
          {
            v65 = v29;
          }

          v48[1] = llroundf(v65);
          v66 = v31;
          if (v63 <= v31)
          {
            v66 = v63;
            if (v63 < v30)
            {
              v66 = v30;
            }
          }

          v67 = (((v33 * v56) + (v32 * v55)) + (v34 * v57)) + v27;
          v48[2] = llroundf(v66);
          v68 = v29;
          if (v67 <= v29)
          {
            v68 = v67;
            if (v67 < v27)
            {
              v68 = v27;
            }
          }

          v48[3] = llroundf(v68);
          if (v47)
          {
            *v47 = v50;
            v47[1] = v51;
            v47 += 2;
          }

          v46 += 32;
          v45 += 2;
          v48 += 4;
        }

        while (v45 < v25);
      }

      v23 += v18;
      v24 += v20;
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 += v18[1] * v16 + v13;
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = **(result + 8);
    v22 = *v18;
    v23 = *(result + 19);
    LOWORD(a7) = *(v23 + 144);
    LOWORD(a8) = *(v23 + 146);
    LOWORD(a9) = *(v23 + 148);
    LOWORD(a10) = *(v23 + 150);
    LOWORD(v10) = *(v23 + 152);
    v124 = *(v23 + 40);
    v125 = *(v23 + 36);
    v24 = *(v23 + 44);
    v25 = *(v23 + 72);
    v26 = **(result + 7) + v21 * (*(result + 28) * a2 / v11 + *(result + 44)) + 16 * *(result + 36);
    v27 = (*v15 + v22 * v16 + v13);
    v28 = *(result + 24) & 0xFFFFFFFE;
    v29 = LODWORD(a7);
    v30 = LODWORD(a8);
    v31 = LODWORD(a9);
    v32 = v10;
    v122 = *(v23 + 48) * 0.5;
    v123 = LODWORD(a10);
    v120 = *(v23 + 56) * 0.5;
    v121 = *(v23 + 52) * 0.5;
    v118 = *(v23 + 64) * 0.5;
    v119 = *(v23 + 60) * 0.5;
    v117 = *(v23 + 68) * 0.5;
    v33 = *(v23 + 76);
    v34 = *(v23 + 80);
    v35 = *(v23 + 84);
    v36 = *(v23 + 88);
    v37 = *(v23 + 92);
    v38 = *(v23 + 96);
    v39 = *(v23 + 100);
    v40 = *(v23 + 104);
    v41 = v23 + 164;
    v42 = v23 + 16548;
    v43 = v23 + 32932;
    v45 = *(v23 + 108);
    v44 = *(v23 + 112);
    v46 = *(v23 + 116);
    v47 = *(v23 + 120);
    v48 = *(v23 + 157);
    v49 = *(v23 + 156);
    v50 = *(v23 + 155);
    v51 = vdup_n_s32(0x45FFF800u);
    v52 = *(v23 + 154);
    do
    {
      if (v28 >= 1)
      {
        v53 = 0;
        v54 = v19;
        v55 = v27;
        v56 = v26;
        do
        {
          v57.i32[0] = *(v56 + 4 * v52);
          v57.i32[1] = *(v56 + 4 * v50);
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v57, v51), 0), v51)));
          v59 = v56 + 16;
          _D7.i16[0] = *(v41 + 2 * _D7.u32[0]);
          __asm { FCVT            S15, H7 }

          _D7.i16[0] = *(v41 + 2 * _D7.u32[1]);
          v65.i32[0] = *(v56 + 4 * v49);
          v65.i32[1] = *(v56 + 16 + 4 * v52);
          __asm { FCVT            S17, H7 }

          v67 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v65, v51), 0), v51)));
          _D7.i16[0] = *(v41 + 2 * v67.u32[0]);
          __asm { FCVT            S18, H7 }

          v69 = fmaxf(_S15, fmaxf(_S17, _S18));
          v70 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v69);
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v69);
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          _H19 = *(v41 + 2 * v67.u32[1]);
          __asm { FCVT            S20, H19 }

          v74.i32[0] = *(v59 + 4 * v50);
          v74.i32[1] = *(v59 + 4 * v49);
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v74, v51), 0), v51)));
          _D19.i16[0] = *(v41 + 2 * _D19.u32[0]);
          __asm { FCVT            S21, H19 }

          _D19.i16[0] = *(v41 + 2 * _D19.u32[1]);
          __asm { FCVT            S22, H19 }

          v78 = (((v44 * _S21) + (v45 * _S20)) + (v46 * _S22)) + (v47 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = v78;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          if (v54)
          {
            v80 = *(v59 + 4 * v48);
            v81 = llroundf(*(v56 + 4 * v48) * 255.0);
            v82 = llroundf(v80 * 255.0);
          }

          else
          {
            v81 = 0;
            v82 = 0;
          }

          _H0 = *(v42 + 2 * llroundf(v71));
          __asm { FCVT            S0, H0 }

          v85 = _S15 * _S0;
          v86 = _S17 * _S0;
          _H17 = *(v42 + 2 * llroundf(v79));
          v88 = _S18 * _S0;
          __asm { FCVT            S17, H17 }

          v90 = _S20 * _S17;
          v91 = _S21 * _S17;
          _S17 = _S22 * _S17;
          v93 = ((v33 * v86) + (v85 * v25)) + (v88 * v34);
          v94 = ((v36 * v86) + (v85 * v35)) + (v88 * v37);
          _S0 = ((v39 * v86) + (v85 * v38)) + (v88 * v40);
          _S1 = ((v33 * v91) + (v90 * v25)) + (_S17 * v34);
          v97 = ((v36 * v91) + (v90 * v35)) + (_S17 * v37);
          v98 = ((v39 * v91) + (v90 * v38)) + (_S17 * v40);
          LOWORD(_S17) = *(v43 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S19, H17 }

          LOWORD(_S17) = *(v43 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          LOWORD(_S0) = *(v43 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H17
            FCVT            S0, H0
          }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S7, H1 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S18, H1 }

          v105 = (((v124 * _S21) + (v125 * _S19)) + (v24 * _S0)) + v29;
          v107 = _S21 + _S7;
          v108 = _S0 + _S18;
          v109 = ((v30 + ((_S19 + _S17) * v122)) + (v107 * v121)) + ((_S0 + _S18) * v120);
          if (v105 < v29)
          {
            v110 = v29;
          }

          else
          {
            v110 = v105;
          }

          if (v105 > v31)
          {
            v110 = v31;
          }

          *v55 = llroundf(v110);
          v111 = v32;
          if (v109 <= v32)
          {
            v111 = ((v30 + ((_S19 + _S17) * v122)) + (v107 * v121)) + (v108 * v120);
            if (v109 < v123)
            {
              v111 = v123;
            }
          }

          v112 = (((v124 * _S7) + (v125 * _S17)) + (v24 * _S18)) + v29;
          v106 = _S19 + _S17;
          v113 = ((v30 + ((_S19 + _S17) * v119)) + (v107 * v118)) + (v108 * v117);
          v55[1] = llroundf(v111);
          if (v112 < v29)
          {
            v114 = v29;
          }

          else
          {
            v114 = v112;
          }

          if (v112 <= v31)
          {
            v115 = v114;
          }

          else
          {
            v115 = v31;
          }

          v55[2] = llroundf(v115);
          v116 = v32;
          if (v113 <= v32)
          {
            v116 = ((v30 + (v106 * v119)) + (v107 * v118)) + (v108 * v117);
            if (v113 < v123)
            {
              v116 = v123;
            }
          }

          v55[3] = llroundf(v116);
          if (v54)
          {
            *v54 = v81;
            v54[1] = v82;
            v54 += 2;
          }

          v56 += 32;
          v53 += 2;
          v55 += 4;
        }

        while (v53 < v28);
      }

      v26 += v21;
      v27 += v22;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = *(result + 14);
  v13 = v11 * a2 / v10;
  v14 = *(result + 16);
  v15 = v13 + *(result + 15);
  v16 = (v11 + v11 * a2) / v10 - v13;
  v17 = *(result + 17);
  v18 = v14[1];
  if (v18)
  {
    v18 += v17[1] * v15 + v12;
  }

  if (v16 >= 1)
  {
    v19 = 0;
    v20 = **(result + 8);
    v21 = *v17;
    v22 = *(result + 19);
    LOWORD(a6) = *(v22 + 144);
    LOWORD(a7) = *(v22 + 146);
    LOWORD(a8) = *(v22 + 148);
    LOWORD(a9) = *(v22 + 150);
    LOWORD(a10) = *(v22 + 152);
    v23 = *(v22 + 36);
    v24 = *(v22 + 40);
    v25 = *(v22 + 44);
    v26 = **(result + 7) + v20 * (*(result + 28) * a2 / v10 + *(result + 44)) + 16 * *(result + 36);
    v27 = (*v14 + v21 * v15 + v12);
    v28 = *(result + 24) & 0xFFFFFFFE;
    v29 = LODWORD(a6);
    v30 = LODWORD(a7);
    v31 = LODWORD(a8);
    v32 = LODWORD(a9);
    v33 = LODWORD(a10);
    v99 = *(v22 + 52) * 0.5;
    v100 = *(v22 + 48) * 0.5;
    v97 = *(v22 + 60) * 0.5;
    v98 = *(v22 + 56) * 0.5;
    v34 = *(v22 + 64) * 0.5;
    v35 = *(v22 + 72);
    v36 = *(v22 + 68) * 0.5;
    v37 = *(v22 + 76);
    v38 = *(v22 + 80);
    v39 = *(v22 + 84);
    v40 = *(v22 + 88);
    v41 = *(v22 + 92);
    v42 = *(v22 + 96);
    v43 = *(v22 + 100);
    v44 = *(v22 + 104);
    v45 = v22 + 164;
    v46 = v22 + 16548;
    v47 = *(v22 + 157);
    v48 = *(v22 + 156);
    v49 = *(v22 + 155);
    v50 = vdup_n_s32(0x45FFF800u);
    v51 = *(v22 + 154);
    do
    {
      if (v28 >= 1)
      {
        v52 = 0;
        v53 = v26;
        v54 = v18;
        v55 = v27;
        do
        {
          v56 = v53 + 16;
          if (v54)
          {
            v57 = llroundf(*(v53 + 4 * v47) * 255.0);
            v58 = llroundf(*(v56 + 4 * v47) * 255.0);
          }

          else
          {
            v57 = 0;
            v58 = 0;
          }

          v59.i32[0] = *(v53 + 4 * v51);
          v59.i32[1] = *(v53 + 4 * v49);
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v59, v50), 0), v50)));
          _D7.i16[0] = *(v45 + 2 * _D7.u32[0]);
          __asm { FCVT            S7, H7 }

          _H16 = *(v45 + 2 * _D7.u32[1]);
          v66.i32[0] = *(v53 + 4 * v48);
          v66.i32[1] = *(v56 + 4 * v51);
          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v66, v50), 0), v50)));
          _D17.i16[0] = *(v45 + 2 * _D17.u32[0]);
          __asm
          {
            FCVT            S16, H16
            FCVT            S17, H17
          }

          _H11 = *(v45 + 2 * _D17.u32[1]);
          v70.i32[0] = *(v56 + 4 * v49);
          v70.i32[1] = *(v56 + 4 * v48);
          _D12 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v70, v50), 0), v50)));
          _D12.i16[0] = *(v45 + 2 * _D12.u32[0]);
          __asm
          {
            FCVT            S11, H11
            FCVT            S12, H12
          }

          _H13 = *(v45 + 2 * _D12.u32[1]);
          __asm { FCVT            S13, H13 }

          v75 = ((v37 * _S16) + (*_D7.i32 * v35)) + (*_D17.i32 * v38);
          v76 = ((v40 * _S16) + (*_D7.i32 * v39)) + (*_D17.i32 * v41);
          *_D7.i32 = ((v43 * _S16) + (*_D7.i32 * v42)) + (*_D17.i32 * v44);
          _S16 = ((v37 * *_D12.i32) + (_S11 * v35)) + (_S13 * v38);
          *_D17.i32 = ((v40 * *_D12.i32) + (_S11 * v39)) + (_S13 * v41);
          v78 = ((v43 * *_D12.i32) + (_S11 * v42)) + (_S13 * v44);
          LOWORD(_S11) = *(v46 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S14, H11 }

          LOWORD(_S11) = *(v46 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _D7.i16[0] = *(v46 + 2 * llroundf(fminf(fmaxf(*_D7.i32, 0.0), 8191.0)));
          __asm
          {
            FCVT            S15, H11
            FCVT            S7, H7
          }

          LOWORD(_S16) = *(v46 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm { FCVT            S11, H16 }

          LOWORD(_S16) = *(v46 + 2 * llroundf(fminf(fmaxf(*_D17.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H16 }

          LOWORD(_S16) = *(v46 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S13, H16 }

          v84 = (((v24 * _S15) + (v23 * _S14)) + (v25 * *_D7.i32)) + v29;
          v85 = _S14 + _S11;
          v86 = _S15 + _S12;
          v87 = *_D7.i32 + _S13;
          v88 = ((v30 + (v85 * v100)) + (v86 * v99)) + ((*_D7.i32 + _S13) * v98);
          if (v84 < v29)
          {
            v89 = v29;
          }

          else
          {
            v89 = v84;
          }

          if (v84 <= v31)
          {
            v90 = v89;
          }

          else
          {
            v90 = v31;
          }

          *v55 = llroundf(v90);
          v91 = v33;
          if (v88 <= v33)
          {
            v91 = v88;
            if (v88 < v32)
            {
              v91 = v32;
            }
          }

          v92 = (((v24 * _S12) + (v23 * _S11)) + (v25 * _S13)) + v29;
          v93 = ((v30 + (v85 * v97)) + (v86 * v34)) + (v87 * v36);
          v55[1] = llroundf(v91);
          if (v92 < v29)
          {
            v94 = v29;
          }

          else
          {
            v94 = (((v24 * _S12) + (v23 * _S11)) + (v25 * _S13)) + v29;
          }

          if (v92 <= v31)
          {
            v95 = v94;
          }

          else
          {
            v95 = v31;
          }

          v55[2] = llroundf(v95);
          v96 = v33;
          if (v93 <= v33)
          {
            v96 = v93;
            if (v93 < v32)
            {
              v96 = v32;
            }
          }

          v55[3] = llroundf(v96);
          if (v54)
          {
            *v54 = v57;
            v54[1] = v58;
            v54 += 2;
          }

          v53 += 32;
          v52 += 2;
          v55 += 4;
        }

        while (v52 < v28);
      }

      v26 += v20;
      v27 += v21;
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_yuvsf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 += v15[1] * v13 + v10;
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = **(result + 8);
    v19 = *(result + 28) * a2 / v8;
    v20 = *v15;
    v21 = *(result + 19);
    LOWORD(a4) = *(v21 + 144);
    LOWORD(a5) = *(v21 + 146);
    v22 = *v12 + *v15 * v13;
    v23 = **(result + 7) + v18 * (v19 + *(result + 44)) + 16 * *(result + 36);
    v24 = (v22 + v10);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = *(v21 + 136);
    v27 = LODWORD(a4);
    v28 = LODWORD(a5);
    LOWORD(a6) = *(v21 + 148);
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
    v43 = *(v21 + 155);
    v44 = *(v21 + 154);
    do
    {
      if (v25 >= 1)
      {
        v45 = 0;
        v46 = v23;
        v47 = v16;
        v48 = v24;
        do
        {
          v49 = v46 + 16;
          if (v47)
          {
            v50 = llroundf(*(v46 + 4 * v41) * 255.0);
            v51 = llroundf(*(v49 + 4 * v41) * 255.0);
          }

          else
          {
            v50 = 0;
            v51 = 0;
          }

          v52 = *(v46 + 4 * v44) * v26;
          v53 = *(v46 + 4 * v43) * v26;
          v54 = *(v46 + 4 * v42) * v26;
          v55 = *(v49 + 4 * v44) * v26;
          v56 = *(v49 + 4 * v43) * v26;
          v57 = *(v49 + 4 * v42) * v26;
          v58 = (((v33 * v53) + (v32 * v52)) + (v34 * v54)) + v27;
          v59 = (((v33 * v56) + (v32 * v55)) + (v34 * v57)) + v27;
          v60 = v52 + v55;
          v61 = v53 + v56;
          v62 = v54 + v57;
          v63 = ((v28 + (v60 * v35)) + (v61 * v36)) + (v62 * v37);
          v64 = (v28 + (v60 * v38)) + (v61 * v39);
          if (v58 < v27)
          {
            v65 = v27;
          }

          else
          {
            v65 = v58;
          }

          if (v58 > v29)
          {
            v65 = v29;
          }

          v66 = v64 + (v62 * v40);
          *v48 = llroundf(v65);
          if (v63 < v30)
          {
            v67 = v30;
          }

          else
          {
            v67 = v63;
          }

          if (v63 > v31)
          {
            v67 = v31;
          }

          v48[1] = llroundf(v67);
          if (v59 < v27)
          {
            v68 = v27;
          }

          else
          {
            v68 = v59;
          }

          if (v59 > v29)
          {
            v68 = v29;
          }

          v48[2] = llroundf(v68);
          v69 = v31;
          if (v66 <= v31)
          {
            v69 = v66;
            if (v66 < v30)
            {
              v69 = v30;
            }
          }

          v48[3] = llroundf(v69);
          if (v47)
          {
            *v47 = v50;
            v47[1] = v51;
            v47 += 2;
          }

          v46 += 32;
          v45 += 2;
          v48 += 4;
        }

        while (v45 < v25);
      }

      v23 += v18;
      v24 += v20;
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD);
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

__int16 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = 0;
  v207 = *(a1 + 36);
  v7 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 28) * a2 / v8 + *(a1 + 44);
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  v12 = v11 * a2;
  v13 = *(a1 + 19);
  v14 = *(a1 + 15);
  v15 = *(a1 + 16);
  v16 = *(a1 + 17);
  v17 = **(a1 + 8);
  result = **(a1 + 7);
  v19 = v16[1];
  v180 = *v16;
  v20 = v16[2];
  v22 = *v15;
  v21 = v15[1];
  v23 = v15[2];
  v220 = *(v13 + 154);
  v24 = *(v13 + 144);
  v25 = *(v13 + 132);
  v26 = v12 / v8;
  v27 = v12 / v8 + v14;
  v28 = *(v13 + 146);
  v179 = v17;
  v29 = v17 * v9;
  v30 = *(v13 + 148);
  v31 = *(v13 + 150);
  v32 = *(v13 + 152);
  v216 = *(v13 + 36);
  v215 = *(v13 + 40);
  v33.i32[0] = *(v13 + 48);
  v214 = *(v13 + 44);
  v35.i32[0] = *(v13 + 52);
  v34.i32[0] = *(v13 + 56);
  v36 = *(v13 + 60);
  v37 = *(v13 + 64);
  v38 = *(v13 + 68);
  v213 = *(v13 + 72);
  v212 = *(v13 + 76);
  v211 = *(v13 + 80);
  v210 = *(v13 + 84);
  v209 = *(v13 + 88);
  _S16 = *(v13 + 92);
  _S17 = *(v13 + 96);
  _S18 = *(v13 + 100);
  _S19 = *(v13 + 104);
  _S20 = *(v13 + 108);
  _S21 = *(v13 + 112);
  _S22 = *(v13 + 116);
  _S23 = *(v13 + 120);
  memset(v219, 0, sizeof(v219));
  v47 = (v11 + v12) / v8;
  do
  {
    v48 = 0;
    v49 = *(&v220 + v6);
    v50 = *(v219 + v6);
    do
    {
      v218 = v50;
      *(&v218 | v48 & 7) = v49 + 4 * v48;
      v50 = v218;
      ++v48;
    }

    while (v48 != 8);
    *(v219 + v6++) = v218;
  }

  while (v6 != 4);
  v51 = v47 - v26;
  if (v47 - v26 >= 1)
  {
    v52 = 0;
    v53 = v24;
    v54 = v28;
    v55 = v30;
    v217 = v31;
    v56 = v32;
    v33.i32[1] = v36;
    *a4.f32 = vmul_f32(v33, 0x3F0000003F000000);
    v35.i32[1] = v37;
    *a5.f32 = vmul_f32(v35, 0x3F0000003F000000);
    v34.i32[1] = v38;
    *a6.f32 = vmul_f32(v34, 0x3F0000003F000000);
    v57 = v13 + 16548;
    _S0 = v216;
    __asm { FCVT            H0, S0 }

    v205 = *&_S0;
    v63 = v7 & 0xFFFFFFFE;
    _S0 = v215;
    __asm { FCVT            H0, S0 }

    v204 = *&_S0;
    v65 = v13 + 32932;
    _S0 = v214;
    __asm { FCVT            H0, S0 }

    v202 = *&_S0;
    v203 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v67 = v13 + 164;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v200 = _Q0;
    v201 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    __asm { FCVT            H0, S20 }

    v199 = *_Q0.i16;
    __asm { FCVT            H0, S21 }

    v198 = *_Q0.i16;
    __asm { FCVT            H0, S22 }

    v197 = *_Q0.i16;
    __asm { FCVT            H0, S23 }

    v196 = *_Q0.i16;
    *_Q0.i32 = v213;
    __asm { FCVT            H0, S0 }

    v195 = *_Q0.i16;
    *_Q0.i32 = v212;
    __asm { FCVT            H0, S0 }

    v194 = *_Q0.i16;
    *_Q0.i32 = v211;
    __asm { FCVT            H0, S0 }

    v193 = *_Q0.i16;
    *_Q0.i32 = v210;
    __asm { FCVT            H0, S0 }

    v192 = *_Q0.i16;
    *_Q0.i32 = v209;
    __asm { FCVT            H0, S0 }

    v191 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v190 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v189 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v188 = *_Q0.i16;
    __asm { FCVT            H0, S19 }

    v187 = *_Q0.i16;
    *_Q0.i16 = v24;
    v69 = vdupq_lane_s16(*_Q0.i8, 0);
    v70 = 16 - v25;
    *_Q0.i16 = v28;
    v71 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v30;
    v72 = vdupq_lane_s16(*_Q0.i8, 0);
    v185 = v72;
    v186 = v71;
    if (v25 >= 0x11)
    {
      v70 = 0;
    }

    *v72.i16 = v31;
    v73 = vdupq_lane_s16(*v72.i8, 0);
    if (v23)
    {
      v74 = v23 + v20 * v27 + 2 * v10;
    }

    else
    {
      v74 = 0;
    }

    *v72.i16 = v32;
    v183 = vdupq_lane_s16(*v72.i8, 0);
    v184 = v73;
    if (v21)
    {
      v75 = v21 + v19 * v27 + 2 * v10;
    }

    else
    {
      v75 = 0;
    }

    v76 = v22 + v180 * v27 + 2 * v10;
    v77 = &result[8 * v207] + v29;
    v78 = v70;
    v79 = vdupq_n_s16(v70);
    v206 = a5.f32[0];
    v208 = a4.f32[0];
    v181 = a5.f32[1];
    v182 = a4.f32[1];
    v80 = a6.i64[0];
    v81.i64[0] = 0x9000900090009000;
    v81.i64[1] = 0x9000900090009000;
    do
    {
      if (v7 < 8)
      {
        v116 = 0;
        v115 = v77;
        v85 = v76;
        v84 = v75;
        v83 = v74;
      }

      else
      {
        v82 = 0;
        v83 = v74;
        v84 = v75;
        v85 = v76;
        v86 = v77;
        do
        {
          v87 = v86;
          v222 = vld4q_f32(v86);
          v88 = v86 + 16;
          v221 = vld4q_f32(v88);
          if (v83)
          {
            v89 = vdupq_n_s32(0x477FFF00u);
            v90 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v222.val[3], v89)), vcvtq_u32_f32(vmulq_f32(v221.val[3], v89)));
          }

          else
          {
            v90 = 0uLL;
          }

          *v91.i8 = vcvt_f16_f32(v222.val[0]);
          v92 = vcvt_hight_f16_f32(vcvt_f16_f32(v222.val[2]), v221.val[2]);
          v93.i64[0] = 0x7000700070007000;
          v93.i64[1] = 0x7000700070007000;
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(*v91.i8, v221.val[0]), v93), 0), v81));
          v95.i16[0] = *(v67 + 2 * v94.u16[0]);
          v95.i16[1] = *(v67 + 2 * v94.u16[1]);
          v95.i16[2] = *(v67 + 2 * v94.u16[2]);
          v95.i16[3] = *(v67 + 2 * v94.u16[3]);
          v95.i16[4] = *(v67 + 2 * v94.u16[4]);
          v95.i16[5] = *(v67 + 2 * v94.u16[5]);
          v95.i16[6] = *(v67 + 2 * v94.u16[6]);
          v95.i16[7] = *(v67 + 2 * v94.u16[7]);
          v96 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v222.val[1]), v221.val[1]), v93), 0), v81));
          v97.i16[0] = *(v67 + 2 * v96.u16[0]);
          v97.i16[1] = *(v67 + 2 * v96.u16[1]);
          v97.i16[2] = *(v67 + 2 * v96.u16[2]);
          v97.i16[3] = *(v67 + 2 * v96.u16[3]);
          v97.i16[4] = *(v67 + 2 * v96.u16[4]);
          v97.i16[5] = *(v67 + 2 * v96.u16[5]);
          v97.i16[6] = *(v67 + 2 * v96.u16[6]);
          v97.i16[7] = *(v67 + 2 * v96.u16[7]);
          v98 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v92, v93), 0), v81));
          v91.i16[0] = *(v67 + 2 * v98.u16[0]);
          v91.i16[1] = *(v67 + 2 * v98.u16[1]);
          v91.i16[2] = *(v67 + 2 * v98.u16[2]);
          v91.i16[3] = *(v67 + 2 * v98.u16[3]);
          v91.i16[4] = *(v67 + 2 * v98.u16[4]);
          v91.i16[5] = *(v67 + 2 * v98.u16[5]);
          v91.i16[6] = *(v67 + 2 * v98.u16[6]);
          v91.i16[7] = *(v67 + 2 * v98.u16[7]);
          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v95, v199), v97, v198), v91, v197), vmaxq_f16(vmaxq_f16(v95, v97), v91), v196), 0), v81));
          v100.i16[0] = *(v57 + 2 * v99.u16[0]);
          v100.i16[1] = *(v57 + 2 * v99.u16[1]);
          v100.i16[2] = *(v57 + 2 * v99.u16[2]);
          v100.i16[3] = *(v57 + 2 * v99.u16[3]);
          v100.i16[4] = *(v57 + 2 * v99.u16[4]);
          v100.i16[5] = *(v57 + 2 * v99.u16[5]);
          v100.i16[6] = *(v57 + 2 * v99.u16[6]);
          v100.i16[7] = *(v57 + 2 * v99.u16[7]);
          v101 = vmulq_f16(v95, v100);
          v102 = vmulq_f16(v97, v100);
          v103 = vmulq_f16(v91, v100);
          v104 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v192), v102, v191), v103, v190);
          v105 = vmulq_n_f16(v103, v187);
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v195), v102, v194), v103, v193), 0), v81));
          v95.i16[0] = *(v65 + 2 * v106.u16[0]);
          v95.i16[1] = *(v65 + 2 * v106.u16[1]);
          v95.i16[2] = *(v65 + 2 * v106.u16[2]);
          v95.i16[3] = *(v65 + 2 * v106.u16[3]);
          v95.i16[4] = *(v65 + 2 * v106.u16[4]);
          v95.i16[5] = *(v65 + 2 * v106.u16[5]);
          v95.i16[6] = *(v65 + 2 * v106.u16[6]);
          v107 = vmlaq_n_f16(v105, v102, v188);
          v108 = v95;
          v108.i16[7] = *(v65 + 2 * v106.u16[7]);
          v109 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v104, 0), v81));
          v91.i16[0] = *(v65 + 2 * v109.u16[0]);
          v91.i16[1] = *(v65 + 2 * v109.u16[1]);
          v91.i16[2] = *(v65 + 2 * v109.u16[2]);
          v91.i16[3] = *(v65 + 2 * v109.u16[3]);
          v91.i16[4] = *(v65 + 2 * v109.u16[4]);
          v91.i16[5] = *(v65 + 2 * v109.u16[5]);
          v91.i16[6] = *(v65 + 2 * v109.u16[6]);
          v110 = v91;
          v110.i16[7] = *(v65 + 2 * v109.u16[7]);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v107, v101, v189), 0), v81));
          v101.i16[0] = *(v65 + 2 * v111.u16[0]);
          result = (v65 + 2 * v111.u16[5]);
          v101.i16[1] = *(v65 + 2 * v111.u16[1]);
          v101.i16[2] = *(v65 + 2 * v111.u16[2]);
          v101.i16[3] = *(v65 + 2 * v111.u16[3]);
          v101.i16[4] = *(v65 + 2 * v111.u16[4]);
          v101.i16[5] = *result;
          v101.i16[6] = *(v65 + 2 * v111.u16[6]);
          v112 = (v65 + 2 * v111.u16[7]);
          v113 = v101;
          v113.i16[7] = *v112;
          *v85++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v69, v108, v205), v110, v204), v113, v202), v69), v185)), v79);
          v114 = vaddq_f16(vuzp1q_s16(v95, v91), vuzp2q_s16(v108, v110));
          *v84++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v186, v203, vzip1q_s16(v114, v114)), v201, vzip2q_s16(v114, v114)), v200, vaddq_f16(vtrn1q_s16(v101, v101), vtrn2q_s16(v113, v113))), v184), v183)), v79);
          if (v83)
          {
            *v83++ = v90;
          }

          v82 += 8;
          v86 = v87 + 32;
        }

        while (v82 < v7 - 7);
        v115 = (v87 + 32);
        v116 = v7 & 0xFFFFFFF8;
      }

      if (v116 < v63)
      {
        v117 = v115 + 16;
        do
        {
          v118 = (v117 + 4 * v220);
          v119.i32[0] = *(v118 - 4);
          v120 = (v117 + 4 * BYTE1(v220));
          v119.i32[1] = *(v120 - 4);
          v121 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v119, v121), 0), v121)));
          _D0.i16[0] = *(v67 + 2 * _D0.u32[0]);
          v123 = (v117 + 4 * BYTE2(v220));
          _D1.i32[0] = *(v123 - 4);
          __asm { FCVT            S8, H0 }

          _D0.i16[0] = *(v67 + 2 * _D0.u32[1]);
          __asm { FCVT            S14, H0 }

          _D1.i32[1] = *v118;
          v127 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D1, v121), 0), v121)));
          _D1.i16[0] = *(v67 + 2 * v127.u32[0]);
          __asm { FCVT            S27, H1 }

          v129 = fmaxf(_S8, fmaxf(_S14, _S27));
          v130 = (((_S21 * _S14) + (_S20 * _S8)) + (_S22 * _S27)) + (_S23 * v129);
          v131 = 8191.0;
          if (v130 <= 8191.0)
          {
            v131 = (((_S21 * _S14) + (_S20 * _S8)) + (_S22 * _S27)) + (_S23 * v129);
            if (v130 < 0.0)
            {
              v131 = 0.0;
            }
          }

          v132.i32[0] = *v120;
          _H0 = *(v67 + 2 * v127.u32[1]);
          __asm { FCVT            S15, H0 }

          v132.i32[1] = *v123;
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v132, v121), 0), v121)));
          _D0.i16[0] = *(v67 + 2 * _D0.u32[0]);
          __asm { FCVT            S11, H0 }

          _D0.i16[0] = *(v67 + 2 * _D0.u32[1]);
          __asm { FCVT            S0, H0 }

          v138 = (((_S21 * _S11) + (_S20 * _S15)) + (_S22 * _S0)) + (_S23 * fmaxf(_S15, fmaxf(_S11, _S0)));
          v139 = 8191.0;
          if (v138 <= 8191.0)
          {
            v139 = v138;
            if (v138 < 0.0)
            {
              v139 = 0.0;
            }
          }

          if (v83)
          {
            v140 = (v117 + 4 * HIBYTE(v220));
            v141 = llroundf(*(v140 - 4) * 65535.0);
            v142 = llroundf(*v140 * 65535.0);
          }

          else
          {
            v141 = 0;
            v142 = 0;
          }

          _H2 = *(v57 + 2 * llroundf(v131));
          __asm { FCVT            S2, H2 }

          v145 = _S8 * _S2;
          v146 = _S14 * _S2;
          v147 = _S27 * _S2;
          _H1 = *(v57 + 2 * llroundf(v139));
          __asm { FCVT            S1, H1 }

          _S5 = _S15 * _S1;
          v151 = _S11 * _S1;
          v152 = _S0 * _S1;
          _S1 = ((v212 * v146) + (v145 * v213)) + (v147 * v211);
          v154 = ((v209 * v146) + (v145 * v210)) + (v147 * _S16);
          _S2 = ((_S18 * v146) + (v145 * _S17)) + (v147 * _S19);
          _S3 = ((v212 * v151) + (_S5 * v213)) + (v152 * v211);
          _S4 = ((v209 * v151) + (_S5 * v210)) + (v152 * _S16);
          _S0 = ((_S18 * v151) + (_S5 * _S17)) + (v152 * _S19);
          LOWORD(_S1) = *(v65 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S5) = *(v65 + 2 * llroundf(fminf(fmaxf(v154, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S2) = *(v65 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          LOWORD(_S3) = *(v65 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S2, H2
            FCVT            S3, H3
          }

          LOWORD(_S4) = *(v65 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S0) = *(v65 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S6, H0 }

          v165 = (((v215 * _S5) + (v216 * _S1)) + (v214 * _S2)) + v53;
          v166 = (((v215 * _S4) + (v216 * _S3)) + (v214 * _S6)) + v53;
          if (v165 < v53)
          {
            v167 = v53;
          }

          else
          {
            v167 = (((v215 * _S5) + (v216 * _S1)) + (v214 * _S2)) + v53;
          }

          if (v165 <= v55)
          {
            v168 = v167;
          }

          else
          {
            v168 = v55;
          }

          v85->i16[0] = llroundf(v168) << v78;
          if (v166 < v53)
          {
            v169 = v53;
          }

          else
          {
            v169 = (((v215 * _S4) + (v216 * _S3)) + (v214 * _S6)) + v53;
          }

          if (v166 > v55)
          {
            v169 = v55;
          }

          v85->i16[1] = llroundf(v169) << v78;
          v170 = _S1 + _S3;
          v171 = _S5 + _S4;
          v172 = _S2 + _S6;
          v173 = ((v54 + (v170 * v208)) + ((_S5 + _S4) * v206)) + (v172 * *&v80);
          v174 = v32;
          if (v173 <= v56)
          {
            v174 = ((v54 + (v170 * v208)) + (v171 * v206)) + (v172 * *&v80);
            if (v173 < v217)
            {
              v174 = v217;
            }
          }

          v175 = ((v54 + (v170 * v182)) + (v171 * v181)) + (v172 * *(&v80 + 1));
          v84->i16[0] = llroundf(v174) << v78;
          v176 = v32;
          if (v175 <= v56)
          {
            v176 = v175;
            if (v175 < v217)
            {
              v176 = v217;
            }
          }

          v84->i16[1] = llroundf(v176) << v78;
          if (v83)
          {
            v83->i16[0] = v141;
            v83->i16[1] = v142;
            v83 = (v83 + 4);
          }

          v116 += 2;
          v117 += 32;
          v85 = (v85 + 4);
          v84 = (v84 + 4);
        }

        while (v116 < v63);
      }

      v77 += v179;
      v76 += v180;
      v75 += v19;
      v74 += v20;
      ++v52;
    }

    while (v52 != v51);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = **(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 17);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    LOWORD(a3) = *(v11 + 144);
    v19 = LODWORD(a3);
    LOWORD(a4) = *(v11 + 146);
    v20 = LODWORD(a4);
    LOWORD(a5) = *(v11 + 148);
    v21 = LODWORD(a5);
    LOWORD(a6) = *(v11 + 150);
    v22 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 152);
    v23 = LODWORD(a6);
    v132 = *(v11 + 36);
    v133 = v22;
    v131 = *(v11 + 40);
    v24 = *(v11 + 44);
    v129 = *(v11 + 52) * 0.5;
    v130 = *(v11 + 48) * 0.5;
    v127 = *(v11 + 60) * 0.5;
    v128 = *(v11 + 56) * 0.5;
    v25 = *(v11 + 72);
    v125 = *(v11 + 68) * 0.5;
    v126 = *(v11 + 64) * 0.5;
    v26 = *(v11 + 76);
    v27 = *(v11 + 80);
    v28 = *(v11 + 84);
    v29 = *(v11 + 88);
    v30 = *(v11 + 92);
    v31 = *(v11 + 96);
    v32 = *(v11 + 100);
    v33 = *(v11 + 104);
    v34 = v11 + 164;
    v35 = v11 + 16548;
    v36 = v11 + 32932;
    v38 = *(v11 + 108);
    v37 = *(v11 + 112);
    v39 = *(v11 + 116);
    v40 = *(v11 + 120);
    v41 = *(result + 14);
    v42 = v8 + *(result + 15);
    v43 = *(result + 28) * a2 / v6 + *(result + 44);
    v44 = *(v11 + 132);
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    else
    {
      v45 = 16 - v44;
    }

    v46 = *(v11 + 157);
    v47 = *(v11 + 156);
    v48 = *(v11 + 155);
    v49 = *(v11 + 154);
    v50 = v14[2];
    if (v50)
    {
      v51 = v50 + v18 * v42 + 2 * v41;
    }

    else
    {
      v51 = 0;
    }

    v53 = *v14;
    v52 = v14[1];
    v54 = v52 + v17 * v42 + 2 * v41;
    if (!v52)
    {
      v54 = 0;
    }

    v55 = v53 + v16 * v42 + 2 * v41;
    v56 = **(result + 7) + v43 * v13 + 16 * *(result + 36);
    v57 = vdup_n_s32(0x45FFF800u);
    v58 = v45;
    do
    {
      if (v12 >= 1)
      {
        v59 = 0;
        v60 = v51;
        v61 = v55;
        v62 = v56;
        do
        {
          v63.i32[0] = *(v62 + 4 * v49);
          v63.i32[1] = *(v62 + 4 * v48);
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v63, v57), 0), v57)));
          v65 = v62 + 16;
          _D3.i16[0] = *(v34 + 2 * _D3.u32[0]);
          __asm { FCVT            S15, H3 }

          _D3.i16[0] = *(v34 + 2 * _D3.u32[1]);
          v71.i32[0] = *(v62 + 4 * v47);
          v71.i32[1] = *(v62 + 16 + 4 * v49);
          __asm { FCVT            S16, H3 }

          v73 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v71, v57), 0), v57)));
          _D3.i16[0] = *(v34 + 2 * v73.u32[0]);
          __asm { FCVT            S17, H3 }

          v75 = fmaxf(_S15, fmaxf(_S16, _S17));
          v76 = (((v37 * _S16) + (v38 * _S15)) + (v39 * _S17)) + (v40 * v75);
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = (((v37 * _S16) + (v38 * _S15)) + (v39 * _S17)) + (v40 * v75);
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          _H18 = *(v34 + 2 * v73.u32[1]);
          __asm { FCVT            S19, H18 }

          v80.i32[0] = *(v65 + 4 * v48);
          v80.i32[1] = *(v65 + 4 * v47);
          _D18 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v80, v57), 0), v57)));
          _D18.i16[0] = *(v34 + 2 * _D18.u32[0]);
          __asm { FCVT            S20, H18 }

          _D18.i16[0] = *(v34 + 2 * _D18.u32[1]);
          __asm { FCVT            S22, H18 }

          v84 = (((v37 * _S20) + (v38 * _S19)) + (v39 * _S22)) + (v40 * fmaxf(_S19, fmaxf(_S20, _S22)));
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          if (v60)
          {
            v86 = *(v65 + 4 * v46);
            v87 = llroundf(*(v62 + 4 * v46) * 65535.0);
            v88 = llroundf(v86 * 65535.0);
          }

          else
          {
            v87 = 0;
            v88 = 0;
          }

          _H1 = *(v35 + 2 * llroundf(v77));
          __asm { FCVT            S1, H1 }

          v91 = _S15 * _S1;
          v92 = _S16 * _S1;
          v93 = _S17 * _S1;
          _H16 = *(v35 + 2 * llroundf(v85));
          __asm { FCVT            S16, H16 }

          _S17 = _S19 * _S16;
          _S18 = _S20 * _S16;
          v98 = _S22 * _S16;
          v99 = ((v26 * v92) + (v91 * v25)) + (v93 * v27);
          v100 = ((v29 * v92) + (v91 * v28)) + (v93 * v30);
          _S1 = ((v32 * v92) + (v91 * v31)) + (v93 * v33);
          _S3 = ((v26 * _S18) + (_S17 * v25)) + (v98 * v27);
          _S5 = ((v29 * _S18) + (_S17 * v28)) + (v98 * v30);
          _S16 = ((v32 * _S18) + (_S17 * v31)) + (v98 * v33);
          LOWORD(_S17) = *(v36 + 2 * llroundf(fminf(fmaxf(v99, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v36 + 2 * llroundf(fminf(fmaxf(v100, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          LOWORD(_S1) = *(v36 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          LOWORD(_S3) = *(v36 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm
          {
            FCVT            S1, H1
            FCVT            S3, H3
          }

          LOWORD(_S5) = *(v36 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S16) = *(v36 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm { FCVT            S19, H16 }

          v111 = (((v131 * _S18) + (v132 * _S17)) + (v24 * _S1)) + v19;
          v112 = (((v131 * _S5) + (v132 * _S3)) + (v24 * _S19)) + v19;
          if (v111 < v19)
          {
            v113 = v19;
          }

          else
          {
            v113 = (((v131 * _S18) + (v132 * _S17)) + (v24 * _S1)) + v19;
          }

          if (v111 <= v21)
          {
            v114 = v113;
          }

          else
          {
            v114 = v21;
          }

          *v61 = llroundf(v114) << v58;
          if (v112 < v19)
          {
            v115 = v19;
          }

          else
          {
            v115 = (((v131 * _S5) + (v132 * _S3)) + (v24 * _S19)) + v19;
          }

          if (v112 > v21)
          {
            v115 = v21;
          }

          v61[1] = llroundf(v115) << v58;
          v116 = _S17 + _S3;
          v117 = _S18 + _S5;
          v118 = _S1 + _S19;
          v119 = ((v20 + (v116 * v130)) + ((_S18 + _S5) * v129)) + ((_S1 + _S19) * v128);
          v120 = v23;
          if (v119 <= v23)
          {
            v120 = v119;
            if (v119 < v133)
            {
              v120 = v133;
            }
          }

          v121 = (v54 + 2 * v59);
          v122 = ((v20 + (v116 * v127)) + (v117 * v126)) + (v118 * v125);
          *v121 = llroundf(v120) << v58;
          v123 = v23;
          if (v122 <= v23)
          {
            v123 = v122;
            if (v122 < v133)
            {
              v123 = v133;
            }
          }

          v121[1] = llroundf(v123) << v58;
          if (v60)
          {
            *v60 = v87;
            v60[1] = v88;
            v60 += 2;
          }

          v62 += 32;
          v59 += 2;
          v61 += 2;
        }

        while (v59 < v12);
      }

      v56 += v13;
      v55 += v16;
      v54 += v17;
      v51 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_TRC_Mat_TRC_xf422_neon_fp16_GCD);
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

_WORD *vt_Copy_RGfA_TRC_Mat_TRC_xf422_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = 0;
  v7 = *(a1 + 36);
  v8 = *(a1 + 24);
  v9 = *a1;
  v10 = *(a1 + 28) * a2 / v9 + *(a1 + 44);
  v11 = *(a1 + 13);
  v12 = *(a1 + 14);
  v13 = *(a1 + 19);
  v15 = *(a1 + 15);
  v14 = *(a1 + 16);
  v16 = *(a1 + 17);
  v17 = **(a1 + 8);
  result = **(a1 + 7);
  v154 = *v16;
  v19 = v16[1];
  v20 = v16[2];
  v21 = v14[1];
  v176 = *v14;
  v22 = v14[2];
  v23 = v11 * a2 / v9;
  v24 = v23 + v15;
  v152 = v19;
  v153 = v17;
  v25 = v17 * v10;
  v181 = *(v13 + 154);
  v26 = *(v13 + 144);
  v27 = *(v13 + 132);
  v28 = *(v13 + 146);
  v29 = *(v13 + 148);
  v30 = *(v13 + 150);
  v31 = *(v13 + 152);
  _S13 = *(v13 + 40);
  v177 = *(v13 + 36);
  _S23 = *(v13 + 44);
  a6.i32[0] = *(v13 + 48);
  a4.i32[0] = *(v13 + 52);
  v34.i32[0] = *(v13 + 56);
  v35 = *(v13 + 60);
  a5.i32[0] = *(v13 + 64);
  v36 = *(v13 + 68);
  _S14 = *(v13 + 72);
  _S4 = *(v13 + 76);
  _S5 = *(v13 + 80);
  _S6 = *(v13 + 84);
  _S7 = *(v13 + 88);
  _S16 = *(v13 + 92);
  _S17 = *(v13 + 96);
  _S18 = *(v13 + 100);
  _S19 = *(v13 + 104);
  memset(v180, 0, sizeof(v180));
  v46 = (v11 + v11 * a2) / v9;
  do
  {
    v47 = 0;
    v48 = *(&v181 + v6);
    v49 = *(v180 + v6);
    do
    {
      v179 = v49;
      *(&v179 | v47 & 7) = v48 + 4 * v47;
      v49 = v179;
      ++v47;
    }

    while (v47 != 8);
    *(v180 + v6++) = v179;
  }

  while (v6 != 4);
  v50 = v46 - v23;
  if (v46 - v23 >= 1)
  {
    v51 = 0;
    v52 = v26;
    v53 = v28;
    v54 = v29;
    v178 = v30;
    v55 = v31;
    a6.i32[1] = v35;
    *a6.f32 = vmul_f32(*a6.f32, 0x3F0000003F000000);
    a4.i32[1] = a5.i32[0];
    *a4.f32 = vmul_f32(*a4.f32, 0x3F0000003F000000);
    v34.i32[1] = v36;
    *a5.f32 = vmul_f32(v34, 0x3F0000003F000000);
    v56 = v13 + 164;
    _S0 = v177;
    __asm { FCVT            H0, S0 }

    v174 = *&_S0;
    v62 = v13 + 16548;
    __asm { FCVT            H0, S13 }

    v173 = *&_S0;
    v63 = v8 & 0xFFFFFFFE;
    __asm { FCVT            H0, S23 }

    v172 = *&_S0;
    v171 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    v170 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    v169 = _Q0;
    __asm { FCVT            H0, S14 }

    v168 = *_Q0.i16;
    __asm { FCVT            H0, S4 }

    v167 = *_Q0.i16;
    __asm { FCVT            H0, S5 }

    v166 = *_Q0.i16;
    __asm { FCVT            H0, S6 }

    v165 = *_Q0.i16;
    __asm { FCVT            H0, S7 }

    v164 = *_Q0.i16;
    __asm { FCVT            H0, S16 }

    v163 = *_Q0.i16;
    __asm { FCVT            H0, S17 }

    v162 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v161 = *_Q0.i16;
    __asm { FCVT            H0, S19 }

    v160 = *_Q0.i16;
    *_Q0.i16 = v26;
    v65 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v28;
    v66 = vdupq_lane_s16(*_Q0.i8, 0);
    v159 = v66;
    *v66.i16 = v29;
    v67 = vdupq_lane_s16(*v66.i8, 0);
    v158 = v67;
    if (v27 >= 0x11)
    {
      v68 = 0;
    }

    else
    {
      v68 = 16 - v27;
    }

    *v67.i16 = v30;
    v69 = vdupq_lane_s16(*v67.i8, 0);
    v157 = v69;
    if (v22)
    {
      v70 = v22 + v20 * v24 + 2 * v12;
    }

    else
    {
      v70 = 0;
    }

    *v69.i16 = v31;
    v156 = vdupq_lane_s16(*v69.i8, 0);
    if (v21)
    {
      v71 = v21 + v19 * v24 + 2 * v12;
    }

    else
    {
      v71 = 0;
    }

    v72 = v176 + v154 * v24 + 2 * v12;
    v73 = &result[8 * v7] + v25;
    v74 = v68;
    v75 = vdupq_n_s16(v68);
    v175 = a4.f32[0];
    v76 = a6.i64[0];
    v77 = a5.i64[0];
    v155 = a4.f32[1];
    v78.i64[0] = 0x9000900090009000;
    v78.i64[1] = 0x9000900090009000;
    v79.i64[0] = 0x7000700070007000;
    v79.i64[1] = 0x7000700070007000;
    do
    {
      if (v8 < 8)
      {
        v112 = 0;
        v111 = v73;
        v83 = v72;
        v82 = v71;
        v81 = v70;
      }

      else
      {
        v80 = 0;
        v81 = v70;
        v82 = v71;
        v83 = v72;
        v84 = v73;
        do
        {
          v85 = v84;
          v183 = vld4q_f32(v84);
          v86 = v84 + 16;
          v182 = vld4q_f32(v86);
          if (v81)
          {
            v87 = vdupq_n_s32(0x477FFF00u);
            v88 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v183.val[3], v87)), vcvtq_u32_f32(vmulq_f32(v182.val[3], v87)));
          }

          else
          {
            v88 = 0uLL;
          }

          v89 = vcvt_f16_f32(v183.val[0]);
          v90 = vcvt_f16_f32(v183.val[2]);
          v91 = vcvt_hight_f16_f32(vcvt_f16_f32(v183.val[1]), v182.val[1]);
          v92 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(v89, v182.val[0]), v79), 0), v78));
          v93.i16[0] = *(v56 + 2 * v92.u16[0]);
          v93.i16[1] = *(v56 + 2 * v92.u16[1]);
          v93.i16[2] = *(v56 + 2 * v92.u16[2]);
          v93.i16[3] = *(v56 + 2 * v92.u16[3]);
          v93.i16[4] = *(v56 + 2 * v92.u16[4]);
          v93.i16[5] = *(v56 + 2 * v92.u16[5]);
          v93.i16[6] = *(v56 + 2 * v92.u16[6]);
          v93.i16[7] = *(v56 + 2 * v92.u16[7]);
          v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v91, v79), 0), v78));
          v95.i16[0] = *(v56 + 2 * v94.u16[0]);
          v96 = vcvt_hight_f16_f32(v90, v182.val[2]);
          v95.i16[1] = *(v56 + 2 * v94.u16[1]);
          v95.i16[2] = *(v56 + 2 * v94.u16[2]);
          v95.i16[3] = *(v56 + 2 * v94.u16[3]);
          v95.i16[4] = *(v56 + 2 * v94.u16[4]);
          v95.i16[5] = *(v56 + 2 * v94.u16[5]);
          v95.i16[6] = *(v56 + 2 * v94.u16[6]);
          v95.i16[7] = *(v56 + 2 * v94.u16[7]);
          v97 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(v96, v79), 0), v78));
          v98.i16[0] = *(v56 + 2 * v97.u16[0]);
          v98.i16[1] = *(v56 + 2 * v97.u16[1]);
          v98.i16[2] = *(v56 + 2 * v97.u16[2]);
          v98.i16[3] = *(v56 + 2 * v97.u16[3]);
          v98.i16[4] = *(v56 + 2 * v97.u16[4]);
          v98.i16[5] = *(v56 + 2 * v97.u16[5]);
          v98.i16[6] = *(v56 + 2 * v97.u16[6]);
          v98.i16[7] = *(v56 + 2 * v97.u16[7]);
          v99 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v165), v95, v164), v98, v163);
          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v93, v168), v95, v167), v98, v166), 0), v78));
          v96.i16[0] = *(v62 + 2 * v100.u16[0]);
          v96.i16[1] = *(v62 + 2 * v100.u16[1]);
          v96.i16[2] = *(v62 + 2 * v100.u16[2]);
          v96.i16[3] = *(v62 + 2 * v100.u16[3]);
          v96.i16[4] = *(v62 + 2 * v100.u16[4]);
          v96.i16[5] = *(v62 + 2 * v100.u16[5]);
          v96.i16[6] = *(v62 + 2 * v100.u16[6]);
          v101 = vmlaq_n_f16(vmulq_n_f16(v98, v160), v95, v161);
          v102 = v96;
          v102.i16[7] = *(v62 + 2 * v100.u16[7]);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, 0), v78));
          v94.i16[0] = *(v62 + 2 * v103.u16[0]);
          v94.i16[1] = *(v62 + 2 * v103.u16[1]);
          v94.i16[2] = *(v62 + 2 * v103.u16[2]);
          v94.i16[3] = *(v62 + 2 * v103.u16[3]);
          v94.i16[4] = *(v62 + 2 * v103.u16[4]);
          v94.i16[5] = *(v62 + 2 * v103.u16[5]);
          v94.i16[6] = *(v62 + 2 * v103.u16[6]);
          v104 = (v62 + 2 * v103.u16[7]);
          v105 = v94;
          v105.i16[7] = *v104;
          v106 = vminq_f16(vmaxq_f16(vmlaq_n_f16(v101, v93, v162), 0), v78);
          v107 = vcvtq_u16_f16(v106);
          v106.i16[0] = *(v62 + 2 * v107.u16[0]);
          result = (v62 + 2 * v107.u16[4]);
          v106.i16[1] = *(v62 + 2 * v107.u16[1]);
          v106.i16[2] = *(v62 + 2 * v107.u16[2]);
          v106.i16[3] = *(v62 + 2 * v107.u16[3]);
          v106.i16[4] = *result;
          v106.i16[5] = *(v62 + 2 * v107.u16[5]);
          v106.i16[6] = *(v62 + 2 * v107.u16[6]);
          v108 = (v62 + 2 * v107.u16[7]);
          v109 = v106;
          v109.i16[7] = *v108;
          *v83++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v102, v174), v105, v173), v109, v172), v65), v158)), v75);
          v110 = vaddq_f16(vuzp1q_s16(v96, v94), vuzp2q_s16(v102, v105));
          *v82++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v159, v171, vzip1q_s16(v110, v110)), v170, vzip2q_s16(v110, v110)), v169, vaddq_f16(vtrn1q_s16(v106, v106), vtrn2q_s16(v109, v109))), v157), v156)), v75);
          if (v81)
          {
            *v81++ = v88;
          }

          v80 += 8;
          v84 = v85 + 32;
        }

        while (v80 < v8 - 7);
        v111 = (v85 + 32);
        v112 = v8 & 0xFFFFFFF8;
      }

      if (v112 < v63)
      {
        v113 = v111 + 16;
        do
        {
          if (v81)
          {
            v114 = (v113 + 4 * HIBYTE(v181));
            v115 = llroundf(*(v114 - 4) * 65535.0);
            v116 = llroundf(*v114 * 65535.0);
          }

          else
          {
            v115 = 0;
            v116 = 0;
          }

          v117 = (v113 + 4 * v181);
          v118.i32[0] = *(v117 - 4);
          v119 = (v113 + 4 * BYTE1(v181));
          result = (v113 + 4 * BYTE2(v181));
          v120.i32[0] = *(result - 4);
          v121.i32[0] = *v119;
          v118.i32[1] = *(v119 - 4);
          _D3 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v118, _D3), 0), _D3)));
          _D0.i16[0] = *(v56 + 2 * _D0.u32[0]);
          __asm { FCVT            S0, H0 }

          _H25 = *(v56 + 2 * _D0.u32[1]);
          v120.i32[1] = *v117;
          _D1 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v120, _D3), 0), _D3)));
          _D1.i16[0] = *(v56 + 2 * _D1.u32[0]);
          __asm
          {
            FCVT            S25, H25
            FCVT            S1, H1
          }

          _H26 = *(v56 + 2 * _D1.u32[1]);
          v121.i32[1] = *result;
          __asm { FCVT            S26, H26 }

          _D2 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v121, _D3), 0), _D3)));
          _D2.i16[0] = *(v56 + 2 * _D2.u32[0]);
          __asm { FCVT            S2, H2 }

          _D3.i16[0] = *(v56 + 2 * _D2.u32[1]);
          __asm { FCVT            S3, H3 }

          _S27 = ((_S4 * _S25) + (*_D0.i32 * _S14)) + (*_D1.i32 * _S5);
          v131 = ((_S7 * _S25) + (*_D0.i32 * _S6)) + (*_D1.i32 * _S16);
          *_D0.i32 = ((_S18 * _S25) + (*_D0.i32 * _S17)) + (*_D1.i32 * _S19);
          *_D1.i32 = ((_S4 * *_D2.i32) + (_S26 * _S14)) + (_D3.f32[0] * _S5);
          v132 = ((_S7 * *_D2.i32) + (_S26 * _S6)) + (_D3.f32[0] * _S16);
          *_D2.i32 = ((_S18 * *_D2.i32) + (_S26 * _S17)) + (_D3.f32[0] * _S19);
          _D3.i16[0] = *(v62 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S27) = *(v62 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _D0.i16[0] = *(v62 + 2 * llroundf(fminf(fmaxf(*_D0.i32, 0.0), 8191.0)));
          _D1.i16[0] = *(v62 + 2 * llroundf(fminf(fmaxf(*_D1.i32, 0.0), 8191.0)));
          __asm
          {
            FCVT            S28, H0
            FCVT            S0, H1
          }

          _D1.i16[0] = *(v62 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _D2.i16[0] = *(v62 + 2 * llroundf(fminf(fmaxf(*_D2.i32, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v139 = (((_S13 * _S27) + (v177 * _S3)) + (_S23 * _S28)) + v52;
          v140 = (((_S13 * _S1) + (v177 * _S0)) + (_S23 * _S2)) + v52;
          if (v139 < v52)
          {
            v141 = v52;
          }

          else
          {
            v141 = (((_S13 * _S27) + (v177 * _S3)) + (_S23 * _S28)) + v52;
          }

          if (v139 <= v54)
          {
            v142 = v141;
          }

          else
          {
            v142 = v54;
          }

          v83->i16[0] = llroundf(v142) << v74;
          if (v140 < v52)
          {
            v143 = v52;
          }

          else
          {
            v143 = (((_S13 * _S1) + (v177 * _S0)) + (_S23 * _S2)) + v52;
          }

          if (v140 > v54)
          {
            v143 = v54;
          }

          v83->i16[1] = llroundf(v143) << v74;
          v144 = _S3 + _S0;
          v145 = _S27 + _S1;
          v146 = _S28 + _S2;
          v147 = ((v53 + (v144 * *&v76)) + (v145 * v175)) + (v146 * *&v77);
          v148 = v31;
          if (v147 <= v55)
          {
            v148 = ((v53 + (v144 * *&v76)) + (v145 * v175)) + (v146 * *&v77);
            if (v147 < v178)
            {
              v148 = v178;
            }
          }

          v149 = ((v53 + (v144 * *(&v76 + 1))) + (v145 * v155)) + (v146 * *(&v77 + 1));
          v82->i16[0] = llroundf(v148) << v74;
          v150 = v31;
          if (v149 <= v55)
          {
            v150 = v149;
            if (v149 < v178)
            {
              v150 = v178;
            }
          }

          v82->i16[1] = llroundf(v150) << v74;
          if (v81)
          {
            v81->i16[0] = v115;
            v81->i16[1] = v116;
            v81 = (v81 + 4);
          }

          v112 += 2;
          v113 += 32;
          v83 = (v83 + 4);
          v82 = (v82 + 4);
        }

        while (v112 < v63);
      }

      v73 += v153;
      v72 += v154;
      v71 += v152;
      v70 += v20;
      ++v51;
    }

    while (v51 != v50);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_TRC_Mat_TRC_xf422_GCD);
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

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7)
{
  v7 = *a1;
  v8 = *(a1 + 13);
  v9 = v8 * a2 / v7;
  result = ((v8 + v8 * a2) / v7) - v9;
  if (result >= 1)
  {
    v11 = 0;
    v12 = *(a1 + 19);
    v13 = *(a1 + 24) & 0xFFFFFFFE;
    v14 = **(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 17);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    LOWORD(a3) = *(v12 + 144);
    v20 = LODWORD(a3);
    LOWORD(a4) = *(v12 + 146);
    v21 = LODWORD(a4);
    LOWORD(a5) = *(v12 + 148);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v12 + 150);
    v23 = LODWORD(a6);
    LOWORD(a7) = *(v12 + 152);
    v24 = LODWORD(a7);
    v25 = *(v12 + 36);
    v26 = *(v12 + 40);
    v27 = *(v12 + 44);
    v107 = *(v12 + 52) * 0.5;
    v108 = *(v12 + 48) * 0.5;
    v105 = *(v12 + 60) * 0.5;
    v106 = *(v12 + 56) * 0.5;
    v28 = *(v12 + 64) * 0.5;
    v29 = *(v12 + 72);
    v30 = *(v12 + 68) * 0.5;
    v31 = *(v12 + 76);
    v32 = *(v12 + 80);
    v33 = *(v12 + 84);
    v34 = *(v12 + 88);
    v35 = *(v12 + 92);
    v36 = *(v12 + 96);
    v37 = *(v12 + 100);
    v38 = *(v12 + 104);
    v39 = v12 + 164;
    v40 = v12 + 16548;
    v41 = *(a1 + 14);
    v42 = v9 + *(a1 + 15);
    v43 = *(a1 + 28) * a2 / v7 + *(a1 + 44);
    v44 = *(v12 + 132);
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    else
    {
      v45 = 16 - v44;
    }

    v46 = *(v12 + 157);
    v47 = *(v12 + 156);
    v48 = *(v12 + 155);
    v49 = *(v12 + 154);
    v50 = v15[2];
    if (v50)
    {
      v51 = v50 + v19 * v42 + 2 * v41;
    }

    else
    {
      v51 = 0;
    }

    v53 = *v15;
    v52 = v15[1];
    v54 = v52 + v18 * v42 + 2 * v41;
    if (!v52)
    {
      v54 = 0;
    }

    v55 = v53 + v17 * v42 + 2 * v41;
    v56 = **(a1 + 7) + v43 * v14 + 16 * *(a1 + 36);
    v57 = vdup_n_s32(0x45FFF800u);
    v58 = v45;
    do
    {
      if (v13 >= 1)
      {
        v59 = 0;
        v60 = v56;
        v61 = v51;
        v62 = v55;
        do
        {
          v63 = v60 + 16;
          if (v61)
          {
            v64 = llroundf(*(v60 + 4 * v46) * 65535.0);
            v65 = llroundf(*(v63 + 4 * v46) * 65535.0);
          }

          else
          {
            v64 = 0;
            v65 = 0;
          }

          v66.i32[0] = *(v60 + 4 * v49);
          v66.i32[1] = *(v60 + 4 * v48);
          _D11 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v66, v57), 0), v57)));
          _D11.i16[0] = *(v39 + 2 * _D11.u32[0]);
          __asm { FCVT            S11, H11 }

          _H12 = *(v39 + 2 * _D11.u32[1]);
          __asm { FCVT            S12, H12 }

          v74.i32[0] = *(v60 + 4 * v47);
          v74.i32[1] = *(v63 + 4 * v49);
          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v74, v57), 0), v57)));
          _D13.i16[0] = *(v39 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _H14 = *(v39 + 2 * _D13.u32[1]);
          __asm { FCVT            S14, H14 }

          v78.i32[0] = *(v63 + 4 * v48);
          v78.i32[1] = *(v63 + 4 * v47);
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v78, v57), 0), v57)));
          _D15.i16[0] = *(v39 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _H16 = *(v39 + 2 * _D15.u32[1]);
          __asm { FCVT            S16, H16 }

          _S17 = ((v31 * _S12) + (*_D11.i32 * v29)) + (*_D13.i32 * v32);
          _S18 = ((v34 * _S12) + (*_D11.i32 * v33)) + (*_D13.i32 * v35);
          *_D11.i32 = ((v37 * _S12) + (*_D11.i32 * v36)) + (*_D13.i32 * v38);
          _S12 = ((v31 * *_D15.i32) + (_S14 * v29)) + (_S16 * v32);
          *_D13.i32 = ((v34 * *_D15.i32) + (_S14 * v33)) + (_S16 * v35);
          v85 = ((v37 * *_D15.i32) + (_S14 * v36)) + (_S16 * v38);
          LOWORD(_S17) = *(v40 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S18) = *(v40 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _D11.i16[0] = *(v40 + 2 * llroundf(fminf(fmaxf(*_D11.i32, 0.0), 8191.0)));
          LOWORD(_S12) = *(v40 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm
          {
            FCVT            S14, H11
            FCVT            S11, H12
          }

          LOWORD(_S12) = *(v40 + 2 * llroundf(fminf(fmaxf(*_D13.i32, 0.0), 8191.0)));
          v90 = llroundf(fminf(fmaxf(v85, 0.0), 8191.0));
          __asm { FCVT            S16, H12 }

          LOWORD(_S12) = *(v40 + 2 * v90);
          __asm { FCVT            S13, H12 }

          v93 = (((v26 * _S18) + (v25 * _S17)) + (v27 * _S14)) + v20;
          v94 = (((v26 * _S16) + (v25 * _S11)) + (v27 * _S13)) + v20;
          if (v93 < v20)
          {
            v95 = v20;
          }

          else
          {
            v95 = (((v26 * _S18) + (v25 * _S17)) + (v27 * _S14)) + v20;
          }

          if (v93 > v22)
          {
            v95 = v22;
          }

          *v62 = llroundf(v95) << v58;
          if (v94 < v20)
          {
            v96 = v20;
          }

          else
          {
            v96 = (((v26 * _S16) + (v25 * _S11)) + (v27 * _S13)) + v20;
          }

          if (v94 > v22)
          {
            v96 = v22;
          }

          v62[1] = llroundf(v96) << v58;
          v97 = _S17 + _S11;
          v98 = _S14 + _S13;
          v99 = ((v21 + (v97 * v108)) + ((_S18 + _S16) * v107)) + (v98 * v106);
          v100 = v24;
          if (v99 <= v24)
          {
            v100 = ((v21 + (v97 * v108)) + ((_S18 + _S16) * v107)) + (v98 * v106);
            if (v99 < v23)
            {
              v100 = v23;
            }
          }

          v101 = (v54 + 2 * v59);
          v102 = ((v21 + (v97 * v105)) + ((_S18 + _S16) * v28)) + (v98 * v30);
          *v101 = llroundf(v100) << v58;
          v103 = v24;
          if (v102 <= v24)
          {
            v103 = v102;
            if (v102 < v23)
            {
              v103 = v23;
            }
          }

          v101[1] = llroundf(v103) << v58;
          if (v61)
          {
            *v61 = v64;
            v61[1] = v65;
            v61 += 2;
          }

          v60 += 32;
          v59 += 2;
          v62 += 2;
        }

        while (v59 < v13);
      }

      v56 += v14;
      v55 += v17;
      v54 += v18;
      v51 += v19;
      ++v11;
    }

    while (v11 != result);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_xf422_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_rgb_xf422_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_xf422_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v5 = 0;
  v117 = *(result + 36);
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
  v115 = v17 * v8;
  v116 = **(result + 7);
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v23 = *v13;
  v22 = v13[1];
  v24 = v13[2];
  v25 = *(v12 + 136);
  v127 = *(v12 + 154);
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
  memset(v126, 0, sizeof(v126));
  v39 = v18 / v7;
  do
  {
    v40 = 0;
    v41 = *(&v127 + v5);
    v42 = *(v126 + v5);
    do
    {
      v125 = v42;
      *(&v125 | v40 & 7) = v41 + 4 * v40;
      v42 = v125;
      ++v40;
    }

    while (v40 != 8);
    *(v126 + v5++) = v125;
  }

  while (v5 != 4);
  v43 = v39 - v15;
  if (v39 - v15 >= 1)
  {
    v44 = 0;
    _S3 = v25;
    v46 = v26;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    v50 = v31;
    v35.i32[1] = v37;
    v51 = v6 & 0xFFFFFFFE;
    *v4.f32 = vmul_f32(v35, 0x3F0000003F000000);
    v2.i32[1] = v36;
    *v2.f32 = vmul_f32(*v2.f32, 0x3F0000003F000000);
    v3.i32[1] = v38;
    *v3.f32 = vmul_f32(*v3.f32, 0x3F0000003F000000);
    __asm { FCVT            H8, S0 }

    v124 = _H8;
    __asm { FCVT            H8, S1 }

    v123 = _H8;
    __asm { FCVT            H8, S2 }

    v122 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v59 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v120 = v59;
    v121 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    *v59.i16 = v26;
    v60 = vdupq_lane_s16(*v59.i8, 0);
    *v59.i16 = v28;
    v61 = vdupq_lane_s16(*v59.i8, 0);
    *v59.i16 = v29;
    v62 = vdupq_lane_s16(*v59.i8, 0);
    v119 = v62;
    *v62.i16 = v30;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v31;
    v64 = vdupq_lane_s16(*v62.i8, 0);
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
    v69 = v116 + v115 + 16 * v117;
    __asm { FCVT            H11, S3 }

    v71 = v65;
    v72 = vdupq_n_s16(v65);
    v73 = v4.i64[0];
    v74 = v2.i64[0];
    v75 = v3.i64[0];
    do
    {
      if (v6 < 8)
      {
        v90 = 0;
        v89 = v69;
        v79 = v68;
        v78 = v67;
        v77 = v66;
      }

      else
      {
        v76 = 0;
        v77 = v66;
        v78 = v67;
        v79 = v68;
        v80 = v69;
        do
        {
          v81 = v80;
          v129 = vld4q_f32(v80);
          v82 = v80 + 16;
          v128 = vld4q_f32(v82);
          if (v77)
          {
            v83 = vdupq_n_s32(0x477FFF00u);
            v84 = vuzp1q_s16(vcvtq_u32_f32(vmulq_f32(v129.val[3], v83)), vcvtq_u32_f32(vmulq_f32(v128.val[3], v83)));
          }

          else
          {
            v84 = 0uLL;
          }

          v85 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v129.val[0]), v128.val[0]), _H11);
          v86 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v129.val[1]), v128.val[1]), _H11);
          v87 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v129.val[2]), v128.val[2]), _H11);
          *v79++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v60, v85, v124), v86, v123), v87, _H8), v60), v119)), v72);
          v88 = vpaddq_f16(v85, v86);
          *v78++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v61, v122, vzip1q_s16(v88, v88)), v121, vzip2q_s16(v88, v88)), v120, vaddq_f16(vtrn1q_s16(v87, v87), vtrn2q_s16(v87, v87))), v63), v64)), v72);
          if (v77)
          {
            *v77++ = v84;
          }

          v76 += 8;
          v80 = v81 + 32;
        }

        while (v76 < v6 - 7);
        v89 = (v81 + 32);
        v90 = v6 & 0xFFFFFFF8;
      }

      if (v90 < v51)
      {
        v91 = v89 + 16;
        do
        {
          if (v77)
          {
            v92 = (v91 + 4 * HIBYTE(v127));
            v93 = llroundf(*(v92 - 4) * 65535.0);
            v94 = llroundf(*v92 * 65535.0);
          }

          else
          {
            v93 = 0;
            v94 = 0;
          }

          v95 = (v91 + 4 * v127);
          v96 = *(v95 - 4) * _S3;
          v97 = (v91 + 4 * BYTE1(v127));
          v98 = *(v97 - 4) * _S3;
          v99 = (v91 + 4 * BYTE2(v127));
          v100 = *(v99 - 4) * _S3;
          v101 = (((_S1 * v98) + (_S0 * v96)) + (_S2 * v100)) + v46;
          v102 = v48;
          if (v101 <= v48)
          {
            v102 = (((_S1 * v98) + (_S0 * v96)) + (_S2 * v100)) + v46;
            if (v101 < v46)
            {
              v102 = v46;
            }
          }

          v103 = *v95 * _S3;
          v104 = *v97 * _S3;
          v105 = *v99 * _S3;
          v106 = (((_S1 * v104) + (_S0 * v103)) + (_S2 * v105)) + v46;
          v79->i16[0] = llroundf(v102) << v71;
          v107 = v48;
          if (v106 <= v48)
          {
            v107 = (((_S1 * v104) + (_S0 * v103)) + (_S2 * v105)) + v46;
            if (v106 < v46)
            {
              v107 = v46;
            }
          }

          v79->i16[1] = llroundf(v107) << v71;
          v108 = v96 + v103;
          v109 = v98 + v104;
          v110 = v100 + v105;
          v111 = ((v47 + (v108 * *&v73)) + (v109 * *&v74)) + (v110 * *&v75);
          v112 = v50;
          if (v111 <= v50)
          {
            v112 = ((v47 + (v108 * *&v73)) + (v109 * *&v74)) + (v110 * *&v75);
            if (v111 < v49)
            {
              v112 = v49;
            }
          }

          v113 = ((v47 + (v108 * *(&v73 + 1))) + (v109 * *(&v74 + 1))) + (v110 * *(&v75 + 1));
          v78->i16[0] = llroundf(v112) << v71;
          v114 = v50;
          if (v113 <= v50)
          {
            v114 = v113;
            if (v113 < v49)
            {
              v114 = v49;
            }
          }

          v78->i16[1] = llroundf(v114) << v71;
          if (v77)
          {
            v77->i16[0] = v93;
            v77->i16[1] = v94;
            v77 = (v77 + 4);
          }

          v90 += 2;
          v91 += 32;
          v79 = (v79 + 4);
          v78 = (v78 + 4);
        }

        while (v90 < v51);
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

uint64_t vt_Copy_RGfA_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v21 || (16 * (v29 + v28) + 16) > *v67 || (v32 = v27 + 1 + v30, v33 = 2 * v32, 2 * v32 > *v62) || ((2 * (v32 + (v32 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v34 = v62[2], v33 > v34) && v34)
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

  if ((*v67 * (v15 + v38 - 1) + 16 * (v37 + v29)) <= *v65)
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
  dispatch_apply_f(v10, global_queue, v22, vt_Copy_RGfA_rgb_xf422_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *(v13 + 136);
    LOWORD(a4) = *(v13 + 144);
    v22 = LODWORD(a4);
    LOWORD(a5) = *(v13 + 146);
    v23 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v24 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v25 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v26 = LODWORD(a8);
    v27 = *(v13 + 36);
    v28 = *(v13 + 40);
    v29 = *(v13 + 44);
    v30 = *(v13 + 48) * 0.5;
    v31 = *(v13 + 52) * 0.5;
    v32 = *(v13 + 56) * 0.5;
    v33 = *(v13 + 60) * 0.5;
    v34 = *(v13 + 64) * 0.5;
    v35 = *(v13 + 68) * 0.5;
    v36 = *(result + 14);
    v37 = v10 + *(result + 15);
    v38 = *(result + 28) * a2 / v8 + *(result + 44);
    v39 = *(v13 + 132);
    if (v39 >= 0x11)
    {
      v40 = 0;
    }

    else
    {
      v40 = 16 - v39;
    }

    v41 = *(v13 + 157);
    v42 = *(v13 + 156);
    v43 = *(v13 + 155);
    v44 = *(v13 + 154);
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
    v51 = **(result + 7) + v38 * v15 + 16 * *(result + 36);
    v52 = v40;
    do
    {
      if (v14 >= 1)
      {
        v53 = 0;
        v54 = v51;
        v55 = v46;
        v56 = v50;
        do
        {
          v57 = v54 + 16;
          if (v55)
          {
            v58 = llroundf(*(v54 + 4 * v41) * 65535.0);
            v59 = llroundf(*(v57 + 4 * v41) * 65535.0);
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          v60 = *(v54 + 4 * v44) * v21;
          v61 = *(v54 + 4 * v43) * v21;
          v62 = *(v54 + 4 * v42) * v21;
          v63 = (((v28 * v61) + (v27 * v60)) + (v29 * v62)) + v22;
          v64 = v24;
          if (v63 <= v24)
          {
            v64 = (((v28 * v61) + (v27 * v60)) + (v29 * v62)) + v22;
            if (v63 < v22)
            {
              v64 = v22;
            }
          }

          v65 = *(v57 + 4 * v44) * v21;
          v66 = *(v57 + 4 * v43) * v21;
          v67 = *(v57 + 4 * v42) * v21;
          v68 = (((v28 * v66) + (v27 * v65)) + (v29 * v67)) + v22;
          *v56 = llroundf(v64) << v52;
          v69 = v24;
          if (v68 <= v24)
          {
            v69 = (((v28 * v66) + (v27 * v65)) + (v29 * v67)) + v22;
            if (v68 < v22)
            {
              v69 = v22;
            }
          }

          v56[1] = llroundf(v69) << v52;
          v70 = v60 + v65;
          v71 = v61 + v66;
          v72 = v62 + v67;
          v73 = ((v23 + (v70 * v30)) + (v71 * v31)) + (v72 * v32);
          v74 = v26;
          if (v73 <= v26)
          {
            v74 = ((v23 + (v70 * v30)) + (v71 * v31)) + (v72 * v32);
            if (v73 < v25)
            {
              v74 = v25;
            }
          }

          v75 = (v49 + 2 * v53);
          v76 = ((v23 + (v70 * v33)) + (v71 * v34)) + (v72 * v35);
          *v75 = llroundf(v74) << v52;
          v77 = v26;
          if (v76 <= v26)
          {
            v77 = v76;
            if (v76 < v25)
            {
              v77 = v25;
            }
          }

          v75[1] = llroundf(v77) << v52;
          if (v55)
          {
            *v55 = v58;
            v55[1] = v59;
            v55 += 2;
          }

          v54 += 32;
          v53 += 2;
          v56 += 2;
        }

        while (v53 < v14);
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

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_v216_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, float a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = *(result + 14);
  v14 = v12 * a2 / v11;
  v15 = *(result + 16);
  v16 = v14 + *(result + 15);
  v17 = (v12 + v12 * a2) / v11 - v14;
  v18 = *(result + 17);
  v19 = v15[1];
  if (v19)
  {
    v19 = (v19 + 2 * v13 + v18[1] * v16);
  }

  if (v17 >= 1)
  {
    v20 = 0;
    v21 = **(result + 8);
    v22 = *v18;
    v23 = *(result + 19);
    LOWORD(a3) = *(v23 + 144);
    LOWORD(a8) = *(v23 + 146);
    LOWORD(a9) = *(v23 + 148);
    LOWORD(a10) = *(v23 + 150);
    LOWORD(v10) = *(v23 + 152);
    v24 = *(v23 + 36);
    v25 = *(v23 + 40);
    v26 = *(v23 + 44);
    v27 = **(result + 7) + v21 * (*(result + 28) * a2 / v11 + *(result + 44)) + 16 * *(result + 36);
    v28 = *v15 + v22 * v16 + 2 * v13;
    v29 = *(result + 24) & 0xFFFFFFFE;
    v30 = LODWORD(a3);
    v132 = LODWORD(a8);
    v133 = *(v23 + 72);
    v31 = LODWORD(a9);
    v32 = LODWORD(a10);
    v33 = v10;
    v130 = *(v23 + 52) * 0.5;
    v131 = *(v23 + 48) * 0.5;
    v128 = *(v23 + 60) * 0.5;
    v129 = *(v23 + 56) * 0.5;
    v126 = *(v23 + 68) * 0.5;
    v127 = *(v23 + 64) * 0.5;
    v34 = *(v23 + 80);
    v125 = *(v23 + 76);
    v35 = *(v23 + 84);
    v36 = *(v23 + 88);
    v37 = *(v23 + 92);
    v38 = *(v23 + 96);
    v39 = *(v23 + 100);
    v40 = *(v23 + 104);
    v41 = v23 + 164;
    v42 = v23 + 16548;
    v43 = v23 + 32932;
    v45 = *(v23 + 108);
    v44 = *(v23 + 112);
    v46 = *(v23 + 116);
    v47 = *(v23 + 120);
    v48 = *(v23 + 157);
    v49 = *(v23 + 156);
    v50 = *(v23 + 155);
    v51 = vdup_n_s32(0x45FFF800u);
    v52 = *(v23 + 154);
    do
    {
      if (v29 >= 1)
      {
        v53 = 0;
        v54 = v19;
        v55 = v28;
        v56 = v27;
        do
        {
          v57 = v25;
          v58.i32[0] = *(v56 + 4 * v52);
          v58.i32[1] = *(v56 + 4 * v50);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v58, v51), 0), v51)));
          v60 = v56 + 16;
          _D0.i16[0] = *(v41 + 2 * _D0.u32[0]);
          __asm { FCVT            S15, H0 }

          _D0.i16[0] = *(v41 + 2 * _D0.u32[1]);
          v66.i32[0] = *(v56 + 4 * v49);
          v66.i32[1] = *(v56 + 16 + 4 * v52);
          __asm { FCVT            S17, H0 }

          v68 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v66, v51), 0), v51)));
          _D0.i16[0] = *(v41 + 2 * v68.u32[0]);
          __asm { FCVT            S18, H0 }

          v70 = fmaxf(_S15, fmaxf(_S17, _S18));
          v71 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v70);
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = (((v44 * _S17) + (v45 * _S15)) + (v46 * _S18)) + (v47 * v70);
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H19 = *(v41 + 2 * v68.u32[1]);
          __asm { FCVT            S20, H19 }

          v75.i32[0] = *(v60 + 4 * v50);
          v75.i32[1] = *(v60 + 4 * v49);
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v75, v51), 0), v51)));
          _D19.i16[0] = *(v41 + 2 * _D19.u32[0]);
          __asm { FCVT            S21, H19 }

          _D19.i16[0] = *(v41 + 2 * _D19.u32[1]);
          __asm { FCVT            S22, H19 }

          v79 = (((v44 * _S21) + (v45 * _S20)) + (v46 * _S22)) + (v47 * fmaxf(_S20, fmaxf(_S21, _S22)));
          v80 = 8191.0;
          if (v79 <= 8191.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          if (v54)
          {
            v81 = *(v60 + 4 * v48);
            v82 = llroundf(*(v56 + 4 * v48) * 65535.0);
            v83 = llroundf(v81 * 65535.0);
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

          _H0 = *(v42 + 2 * llroundf(v72));
          __asm { FCVT            S0, H0 }

          v86 = _S15 * _S0;
          v87 = _S17 * _S0;
          v88 = _S18 * _S0;
          _H17 = *(v42 + 2 * llroundf(v80));
          __asm { FCVT            S17, H17 }

          v91 = _S20 * _S17;
          _S19 = _S21 * _S17;
          _S17 = _S22 * _S17;
          v94 = ((v125 * v87) + (v86 * v133)) + (v88 * v34);
          v95 = ((v36 * v87) + (v86 * v35)) + (v88 * v37);
          v96 = ((v39 * v87) + (v86 * v38)) + (v88 * v40);
          v97 = (v125 * _S19) + (v91 * v133);
          v98 = (v36 * _S19) + (v91 * v35);
          v99 = (v39 * _S19) + (v91 * v38);
          _S1 = v97 + (_S17 * v34);
          v101 = v98 + (_S17 * v37);
          LOWORD(_S19) = *(v43 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v102 = v99 + (_S17 * v40);
          __asm { FCVT            S19, H19 }

          LOWORD(_S17) = *(v43 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v104 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          __asm { FCVT            S0, H17 }

          LOWORD(_S17) = *(v43 + 2 * v104);
          __asm { FCVT            S21, H17 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          LOWORD(_S1) = *(v43 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S18, H1 }

          v25 = v57;
          v109 = (v57 * _S0) + (v24 * _S19);
          _S2 = _S19 + _S17;
          v111 = _S0 + _S18;
          v112 = (v132 + ((_S19 + _S17) * v131)) + (v111 * v130);
          v113 = (v132 + (_S2 * v128)) + (v111 * v127);
          LOWORD(_S2) = *(v43 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S20, H2 }

          v115 = v109 + (v26 * _S21);
          v116 = v112 + ((_S21 + _S20) * v129);
          v117 = v113 + ((_S21 + _S20) * v126);
          if (v116 < v30)
          {
            v118 = v30;
          }

          else
          {
            v118 = v116;
          }

          v119 = v115 + v30;
          if (v116 > v31)
          {
            v118 = v31;
          }

          v120 = llroundf(v118);
          if (v119 < v32)
          {
            v121 = v32;
          }

          else
          {
            v121 = v119;
          }

          *v55 = v120;
          if (v119 > v33)
          {
            v121 = v33;
          }

          v55[1] = llroundf(v121);
          v122 = v31;
          if (v117 <= v31)
          {
            v122 = v117;
            if (v117 < v30)
            {
              v122 = v30;
            }
          }

          v123 = ((v57 * _S18) + (v24 * _S17)) + (v26 * _S20);
          v55[2] = llroundf(v122);
          v124 = v33;
          if ((v123 + v30) <= v33)
          {
            v124 = v123 + v30;
            if ((v123 + v30) < v32)
            {
              v124 = v32;
            }
          }

          v55[3] = llroundf(v124);
          if (v54)
          {
            *v54 = v82;
            v54[1] = v83;
            v54 += 2;
          }

          v56 += 32;
          v53 += 2;
          v55 += 4;
        }

        while (v53 < v29);
      }

      v27 += v21;
      v28 += v22;
      ++v20;
    }

    while (v20 != v17);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_v216_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = *(result + 14);
  v13 = v11 * a2 / v10;
  v14 = *(result + 16);
  v15 = v13 + *(result + 15);
  v16 = (v11 + v11 * a2) / v10 - v13;
  v17 = *(result + 17);
  v18 = v14[1];
  if (v18)
  {
    v18 = (v18 + 2 * v12 + v17[1] * v15);
  }

  if (v16 >= 1)
  {
    v19 = 0;
    v20 = **(result + 8);
    v21 = *v17;
    v22 = *(result + 19);
    LOWORD(a6) = *(v22 + 144);
    LOWORD(a7) = *(v22 + 146);
    LOWORD(a8) = *(v22 + 148);
    LOWORD(a9) = *(v22 + 150);
    LOWORD(a10) = *(v22 + 152);
    v23 = *(v22 + 36);
    v24 = *(v22 + 40);
    v25 = *(v22 + 44);
    v26 = **(result + 7) + v20 * (*(result + 28) * a2 / v10 + *(result + 44)) + 16 * *(result + 36);
    v27 = *v14 + v21 * v15 + 2 * v12;
    v28 = *(result + 24) & 0xFFFFFFFE;
    v29 = LODWORD(a6);
    v30 = LODWORD(a7);
    v31 = LODWORD(a8);
    v32 = LODWORD(a9);
    v33 = LODWORD(a10);
    v102 = *(v22 + 52) * 0.5;
    v103 = *(v22 + 48) * 0.5;
    v101 = *(v22 + 56) * 0.5;
    v34 = *(v22 + 60) * 0.5;
    v35 = *(v22 + 64) * 0.5;
    v36 = *(v22 + 72);
    v37 = *(v22 + 68) * 0.5;
    v38 = *(v22 + 76);
    v39 = *(v22 + 80);
    v40 = *(v22 + 84);
    v41 = *(v22 + 88);
    v42 = *(v22 + 92);
    v43 = *(v22 + 96);
    v44 = *(v22 + 100);
    v45 = *(v22 + 104);
    v46 = v22 + 164;
    v47 = v22 + 16548;
    v48 = *(v22 + 157);
    v49 = *(v22 + 156);
    v50 = *(v22 + 155);
    v51 = vdup_n_s32(0x45FFF800u);
    v52 = *(v22 + 154);
    do
    {
      if (v28 >= 1)
      {
        v53 = 0;
        v54 = v26;
        v55 = v18;
        v56 = v27;
        do
        {
          v57 = v54 + 16;
          if (v55)
          {
            v58 = llroundf(*(v54 + 4 * v48) * 65535.0);
            v59 = llroundf(*(v57 + 4 * v48) * 65535.0);
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          v60.i32[0] = *(v54 + 4 * v52);
          v60.i32[1] = *(v54 + 4 * v50);
          _D11 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v60, v51), 0), v51)));
          _D11.i16[0] = *(v46 + 2 * _D11.u32[0]);
          __asm { FCVT            S11, H11 }

          _H12 = *(v46 + 2 * _D11.u32[1]);
          __asm { FCVT            S12, H12 }

          v68.i32[0] = *(v54 + 4 * v49);
          v68.i32[1] = *(v57 + 4 * v52);
          _D13 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v68, v51), 0), v51)));
          _D13.i16[0] = *(v46 + 2 * _D13.u32[0]);
          __asm { FCVT            S13, H13 }

          _H14 = *(v46 + 2 * _D13.u32[1]);
          __asm { FCVT            S14, H14 }

          v72.i32[0] = *(v57 + 4 * v50);
          v72.i32[1] = *(v57 + 4 * v49);
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v72, v51), 0), v51)));
          _D15.i16[0] = *(v46 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _S16 = ((v38 * _S12) + (*_D11.i32 * v36)) + (*_D13.i32 * v39);
          _S17 = ((v41 * _S12) + (*_D11.i32 * v40)) + (*_D13.i32 * v42);
          *_D11.i32 = ((v44 * _S12) + (*_D11.i32 * v43)) + (*_D13.i32 * v45);
          v76 = (v38 * *_D15.i32) + (_S14 * v36);
          *_D13.i32 = (v41 * *_D15.i32) + (_S14 * v40);
          v77 = (v44 * *_D15.i32) + (_S14 * v43);
          _D15.i16[0] = *(v46 + 2 * _D15.u32[1]);
          __asm { FCVT            S15, H15 }

          _S12 = v76 + (*_D15.i32 * v39);
          *_D13.i32 = *_D13.i32 + (*_D15.i32 * v42);
          LOWORD(_S16) = *(v47 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          v79 = v77 + (*_D15.i32 * v45);
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v47 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _D11.i16[0] = *(v47 + 2 * llroundf(fminf(fmaxf(*_D11.i32, 0.0), 8191.0)));
          __asm { FCVT            S15, H11 }

          _D11.i16[0] = *(v47 + 2 * llroundf(fminf(fmaxf(_S12, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          LOWORD(_S12) = *(v47 + 2 * llroundf(fminf(fmaxf(*_D13.i32, 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          v84 = llroundf(fminf(fmaxf(v79, 0.0), 8191.0));
          v85 = (v24 * _S17) + (v23 * _S16);
          v86 = _S16 + _S11;
          _S17 = _S17 + _S12;
          v88 = (v30 + (v86 * v103)) + (_S17 * v102);
          v89 = (v30 + (v86 * v34)) + (_S17 * v35);
          LOWORD(_S17) = *(v47 + 2 * v84);
          __asm { FCVT            S13, H17 }

          v91 = v85 + (v25 * *_D15.i32);
          v92 = v88 + ((*_D15.i32 + _S13) * v101);
          v93 = v89 + ((*_D15.i32 + _S13) * v37);
          if (v92 < v29)
          {
            v94 = v29;
          }

          else
          {
            v94 = v92;
          }

          v95 = v91 + v29;
          if (v92 > v31)
          {
            v94 = v31;
          }

          v96 = llroundf(v94);
          if (v95 < v32)
          {
            v97 = v32;
          }

          else
          {
            v97 = v95;
          }

          *v56 = v96;
          if (v95 > v33)
          {
            v97 = v33;
          }

          v56[1] = llroundf(v97);
          v98 = v31;
          if (v93 <= v31)
          {
            v98 = v93;
            if (v93 < v29)
            {
              v98 = v29;
            }
          }

          v99 = (((v24 * _S12) + (v23 * _S11)) + (v25 * _S13)) + v29;
          v56[2] = llroundf(v98);
          v100 = v33;
          if (v99 <= v33)
          {
            v100 = v99;
            if (v99 < v32)
            {
              v100 = v32;
            }
          }

          v56[3] = llroundf(v100);
          if (v55)
          {
            *v55 = v58;
            v55[1] = v59;
            v55 += 2;
          }

          v54 += 32;
          v53 += 2;
          v56 += 4;
        }

        while (v53 < v28);
      }

      v26 += v20;
      v27 += v21;
      ++v19;
    }

    while (v19 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 16 * v26.i64[0]) > *a5 && (v36 = v25, fig_log_get_emitter(), v27 = FigSignalErrorAtGM(), v25 = v36, v27))
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_v216_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = *(result + 14);
  v11 = v9 * a2 / v8;
  v12 = *(result + 16);
  v13 = v11 + *(result + 15);
  v14 = (v9 + v9 * a2) / v8 - v11;
  v15 = *(result + 17);
  v16 = v12[1];
  if (v16)
  {
    v16 = (v16 + 2 * v10 + v15[1] * v13);
  }

  if (v14 >= 1)
  {
    v17 = 0;
    v18 = **(result + 8);
    v19 = *v15;
    v20 = *(result + 19);
    LOWORD(a4) = *(v20 + 144);
    LOWORD(a5) = *(v20 + 146);
    LOWORD(a6) = *(v20 + 148);
    v21 = *v12 + v19 * v13;
    v22 = **(result + 7) + v18 * (*(result + 28) * a2 / v8 + *(result + 44)) + 16 * *(result + 36);
    v23 = (v21 + 2 * v10);
    v24 = *(result + 24) & 0xFFFFFFFE;
    v25 = *(v20 + 136);
    v26 = LODWORD(a4);
    v27 = LODWORD(a5);
    v28 = LODWORD(a6);
    LOWORD(a7) = *(v20 + 150);
    v29 = LODWORD(a7);
    LOWORD(a8) = *(v20 + 152);
    v30 = LODWORD(a8);
    v31 = *(v20 + 36);
    v32 = *(v20 + 40);
    v33 = *(v20 + 44);
    v34 = *(v20 + 48) * 0.5;
    v35 = *(v20 + 52) * 0.5;
    v36 = *(v20 + 56) * 0.5;
    v37 = *(v20 + 60) * 0.5;
    v38 = *(v20 + 64) * 0.5;
    v39 = *(v20 + 68) * 0.5;
    v40 = *(v20 + 157);
    v41 = *(v20 + 156);
    v42 = *(v20 + 155);
    v43 = *(v20 + 154);
    do
    {
      if (v24 >= 1)
      {
        v44 = 0;
        v45 = v22;
        v46 = v16;
        v47 = v23;
        do
        {
          v48 = v45 + 16;
          if (v46)
          {
            v49 = llroundf(*(v45 + 4 * v40) * 65535.0);
            v50 = llroundf(*(v48 + 4 * v40) * 65535.0);
          }

          else
          {
            v49 = 0;
            v50 = 0;
          }

          v51 = *(v45 + 4 * v43) * v25;
          v52 = *(v45 + 4 * v42) * v25;
          v53 = *(v45 + 4 * v41) * v25;
          v54 = *(v48 + 4 * v43) * v25;
          v55 = *(v48 + 4 * v42) * v25;
          v56 = *(v48 + 4 * v41) * v25;
          v57 = (((v32 * v52) + (v31 * v51)) + (v33 * v53)) + v26;
          v58 = v51 + v54;
          v59 = v52 + v55;
          v60 = v53 + v56;
          v61 = ((v27 + (v58 * v34)) + (v59 * v35)) + (v60 * v36);
          v62 = ((v27 + (v58 * v37)) + (v59 * v38)) + (v60 * v39);
          if (v61 < v26)
          {
            v63 = v26;
          }

          else
          {
            v63 = v61;
          }

          if (v61 > v28)
          {
            v63 = v28;
          }

          *v47 = llroundf(v63);
          if (v57 < v29)
          {
            v64 = v29;
          }

          else
          {
            v64 = v57;
          }

          if (v57 > v30)
          {
            v64 = v30;
          }

          v47[1] = llroundf(v64);
          v65 = v28;
          if (v62 <= v28)
          {
            v65 = v62;
            if (v62 < v26)
            {
              v65 = v26;
            }
          }

          v66 = (((v32 * v55) + (v31 * v54)) + (v33 * v56)) + v26;
          v47[2] = llroundf(v65);
          v67 = v30;
          if (v66 <= v30)
          {
            v67 = v66;
            if (v66 < v29)
            {
              v67 = v29;
            }
          }

          v47[3] = llroundf(v67);
          if (v46)
          {
            *v46 = v49;
            v46[1] = v50;
            v46 += 2;
          }

          v45 += 32;
          v44 += 2;
          v47 += 4;
        }

        while (v44 < v24);
      }

      v22 += v18;
      v23 = (v23 + v19);
      ++v17;
    }

    while (v17 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD);
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

__int16 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, int16x4_t _D3)
{
  v6 = 0;
  v149 = *(a1 + 36);
  v7 = *a1;
  v8 = *(a1 + 28) * a2 / v7 + *(a1 + 44);
  v9 = *(a1 + 14);
  v10 = *(a1 + 15);
  v12 = *(a1 + 12);
  v11 = *(a1 + 13);
  v13 = *(a1 + 19);
  v15 = *(a1 + 16);
  v14 = *(a1 + 17);
  v16 = **(a1 + 8);
  result = **(a1 + 7);
  v18 = v14[1];
  v154 = *v14;
  v19 = v14[2];
  v21 = *v15;
  v20 = v15[1];
  v22 = v15[2];
  v191 = *(v13 + 154);
  v23 = *(v13 + 144);
  v24 = v11 * a2 / v7;
  v25 = v24 + v10;
  v26 = *(v13 + 146);
  v27 = v20 + v18 * (v24 + v10);
  v28 = v22 + v19 * (v24 + v10);
  v29 = *(v13 + 148);
  v30 = *(v13 + 150);
  v31 = *(v13 + 152);
  _S29 = *(v13 + 36);
  _S13 = *(v13 + 40);
  _S14 = *(v13 + 44);
  v164 = *(v13 + 52);
  v165 = *(v13 + 48);
  _S15 = *(v13 + 60);
  v162 = *(v13 + 64);
  v163 = *(v13 + 56);
  v161 = *(v13 + 68);
  v188 = *(v13 + 72);
  v187 = *(v13 + 76);
  v186 = *(v13 + 80);
  v185 = *(v13 + 84);
  v184 = *(v13 + 88);
  v183 = *(v13 + 92);
  v182 = *(v13 + 96);
  v181 = *(v13 + 100);
  v180 = *(v13 + 104);
  v179 = *(v13 + 108);
  v178 = *(v13 + 112);
  v177 = *(v13 + 116);
  v176 = *(v13 + 120);
  memset(v190, 0, sizeof(v190));
  v36 = (v11 + v11 * a2) / v7;
  do
  {
    v37 = 0;
    v38 = *(&v191 + v6);
    v39 = *(v190 + v6);
    do
    {
      v189 = v39;
      *(&v189 | v37 & 7) = v38 + 4 * v37;
      v39 = v189;
      ++v37;
    }

    while (v37 != 8);
    *(v190 + v6++) = v189;
  }

  while (v6 != 4);
  v40 = v36 - v24;
  if (v36 - v24 >= 1)
  {
    v41 = 0;
    v42 = v23;
    v43 = v26;
    __asm { FCVT            H0, S29 }

    v175 = _H0;
    v49 = v29;
    __asm { FCVT            H0, S13 }

    v174 = _H0;
    v166 = v30;
    v51 = v31;
    __asm { FCVT            H0, S14 }

    v173 = _H0;
    v53 = v13 + 16548;
    _S0 = v165;
    __asm { FCVT            H0, S0 }

    v160 = *&_S0;
    v55 = v13 + 32932;
    v56 = v13 + 164;
    _S0 = v164;
    __asm { FCVT            H0, S0 }

    v159 = *&_S0;
    _S0 = v163;
    __asm { FCVT            H0, S0 }

    v158 = *&_S0;
    __asm { FCVT            H0, S15 }

    v157 = *&_S0;
    _S0 = v162;
    __asm { FCVT            H0, S0 }

    v156 = *&_S0;
    _S0 = v161;
    __asm { FCVT            H0, S0 }

    v155 = *&_S0;
    _S0 = v179;
    __asm { FCVT            H0, S0 }

    v172 = *&_S0;
    _S0 = v178;
    __asm { FCVT            H0, S0 }

    v171 = *&_S0;
    _S0 = v177;
    __asm { FCVT            H0, S0 }

    v170 = *&_S0;
    _S0 = v176;
    __asm { FCVT            H7, S0 }

    _S0 = v188;
    __asm { FCVT            H0, S0 }

    v169 = *&_S0;
    _S0 = v187;
    __asm { FCVT            H0, S0 }

    v168 = *&_S0;
    _S0 = v186;
    __asm { FCVT            H0, S0 }

    v167 = *&_S0;
    _S0 = v185;
    __asm { FCVT            H0, S0 }

    _S1 = v184;
    __asm { FCVT            H1, S1 }

    v73 = (v27 + v9);
    _S2 = v183;
    __asm { FCVT            H2, S2 }

    *_D3.i32 = v182;
    __asm { FCVT            H11, S3 }

    *_D3.i32 = v181;
    __asm { FCVT            H8, S3 }

    *_D3.i16 = v23;
    v78 = vdupq_lane_s16(_D3, 0);
    *_D3.i16 = v26;
    v79 = vdupq_lane_s16(_D3, 0);
    *_D3.i16 = v29;
    v80 = vdupq_lane_s16(_D3, 0);
    if (v22)
    {
      v81 = (v28 + v9);
    }

    else
    {
      v81 = 0;
    }

    *_D3.i16 = v30;
    v82 = vdupq_lane_s16(_D3, 0);
    if (v20)
    {
      v83 = v73;
    }

    else
    {
      v83 = 0;
    }

    *_D3.i16 = v31;
    v84 = vdupq_lane_s16(_D3, 0);
    v85 = (v21 + v154 * v25 + v9);
    _S3 = v180;
    __asm { FCVT            H10, S3 }

    v88 = &result[8 * v149] + v16 * v8;
    v89.i64[0] = 0x7000700070007000;
    v89.i64[1] = 0x7000700070007000;
    v90.i64[0] = 0x9000900090009000;
    v90.i64[1] = 0x9000900090009000;
    v152 = _S13;
    v153 = _S29;
    v150 = _S15;
    v151 = _S14;
    do
    {
      if (v12 < 8)
      {
        v119 = 0;
        v118 = v88;
        v94 = v85;
        v93 = v83;
        v92 = v81;
      }

      else
      {
        v91 = 0;
        v92 = v81;
        v93 = v83;
        v94 = v85;
        v95 = v88;
        do
        {
          v96 = v95;
          v193 = vld4q_f32(v95);
          v97 = v95 + 16;
          v194 = vld4q_f32(v97);
          if (v92)
          {
            v98 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v193.val[3]), v194.val[3]), vdupq_n_s16(0x5BF8u))));
          }

          else
          {
            v98 = 0;
          }

          v99 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v193.val[0]), v194.val[0]), v89), 0), v90));
          v100.i16[0] = *(v56 + 2 * v99.u16[0]);
          v100.i16[1] = *(v56 + 2 * v99.u16[1]);
          v100.i16[2] = *(v56 + 2 * v99.u16[2]);
          v100.i16[3] = *(v56 + 2 * v99.u16[3]);
          v100.i16[4] = *(v56 + 2 * v99.u16[4]);
          v100.i16[5] = *(v56 + 2 * v99.u16[5]);
          v100.i16[6] = *(v56 + 2 * v99.u16[6]);
          v100.i16[7] = *(v56 + 2 * v99.u16[7]);
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v193.val[1]), v194.val[1]), v89), 0), v90));
          v102.i16[0] = *(v56 + 2 * v101.u16[0]);
          v102.i16[1] = *(v56 + 2 * v101.u16[1]);
          v102.i16[2] = *(v56 + 2 * v101.u16[2]);
          v102.i16[3] = *(v56 + 2 * v101.u16[3]);
          v102.i16[4] = *(v56 + 2 * v101.u16[4]);
          v102.i16[5] = *(v56 + 2 * v101.u16[5]);
          v102.i16[6] = *(v56 + 2 * v101.u16[6]);
          v102.i16[7] = *(v56 + 2 * v101.u16[7]);
          v103 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v193.val[2]), v194.val[2]), v89), 0), v90));
          v104.i16[0] = *(v56 + 2 * v103.u16[0]);
          v104.i16[1] = *(v56 + 2 * v103.u16[1]);
          v104.i16[2] = *(v56 + 2 * v103.u16[2]);
          v104.i16[3] = *(v56 + 2 * v103.u16[3]);
          v104.i16[4] = *(v56 + 2 * v103.u16[4]);
          v104.i16[5] = *(v56 + 2 * v103.u16[5]);
          v104.i16[6] = *(v56 + 2 * v103.u16[6]);
          v104.i16[7] = *(v56 + 2 * v103.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v100, v172), v102, v171), v104, v170), vmaxq_f16(vmaxq_f16(v100, v102), v104), _H7), 0), v90));
          v106.i16[0] = *(v53 + 2 * v105.u16[0]);
          v106.i16[1] = *(v53 + 2 * v105.u16[1]);
          v106.i16[2] = *(v53 + 2 * v105.u16[2]);
          v106.i16[3] = *(v53 + 2 * v105.u16[3]);
          v106.i16[4] = *(v53 + 2 * v105.u16[4]);
          v106.i16[5] = *(v53 + 2 * v105.u16[5]);
          v106.i16[6] = *(v53 + 2 * v105.u16[6]);
          v106.i16[7] = *(v53 + 2 * v105.u16[7]);
          v107 = vmulq_f16(v100, v106);
          v108 = vmulq_f16(v102, v106);
          v109 = vmulq_f16(v104, v106);
          v110 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v107, _H0), v108, _H1), v109, _H2);
          v111 = vmulq_n_f16(v109, _H10);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v107, v169), v108, v168), v109, v167), 0), v90));
          v113.i16[0] = *(v55 + 2 * v112.u16[0]);
          v113.i16[1] = *(v55 + 2 * v112.u16[1]);
          v113.i16[2] = *(v55 + 2 * v112.u16[2]);
          v113.i16[3] = *(v55 + 2 * v112.u16[3]);
          v113.i16[4] = *(v55 + 2 * v112.u16[4]);
          v113.i16[5] = *(v55 + 2 * v112.u16[5]);
          v113.i16[6] = *(v55 + 2 * v112.u16[6]);
          v113.i16[7] = *(v55 + 2 * v112.u16[7]);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v90));
          v115.i16[0] = *(v55 + 2 * v114.u16[0]);
          v115.i16[1] = *(v55 + 2 * v114.u16[1]);
          v115.i16[2] = *(v55 + 2 * v114.u16[2]);
          v115.i16[3] = *(v55 + 2 * v114.u16[3]);
          v115.i16[4] = *(v55 + 2 * v114.u16[4]);
          v115.i16[5] = *(v55 + 2 * v114.u16[5]);
          v115.i16[6] = *(v55 + 2 * v114.u16[6]);
          v115.i16[7] = *(v55 + 2 * v114.u16[7]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v111, v108, _H8), v107, _H11), 0), v90));
          v117.i16[0] = *(v55 + 2 * v116.u16[0]);
          result = (v55 + 2 * v116.u16[3]);
          v117.i16[1] = *(v55 + 2 * v116.u16[1]);
          v117.i16[2] = *(v55 + 2 * v116.u16[2]);
          v117.i16[3] = *result;
          v117.i16[4] = *(v55 + 2 * v116.u16[4]);
          v117.i16[5] = *(v55 + 2 * v116.u16[5]);
          v117.i16[6] = *(v55 + 2 * v116.u16[6]);
          v117.i16[7] = *(v55 + 2 * v116.u16[7]);
          *v94++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v78, v113, v175), v115, v174), v117, v173), v78), v80)));
          if (v93)
          {
            v192.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v79, v113, v160), v115, v159), v117, v158), v82), v84), v82), v84)));
            v192.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v79, v113, v157), v115, v156), v117, v155)));
            vst2_s8(v93, v192);
            v93 += 16;
          }

          if (v92)
          {
            *v92++ = v98;
          }

          v91 += 8;
          v95 = v96 + 32;
        }

        while (v91 < v12 - 7);
        v118 = (v96 + 32);
        v119 = v12 & 0xFFFFFFF8;
        _S13 = v152;
        _S29 = v153;
        _S15 = v150;
        _S14 = v151;
      }

      v120 = v12 - v119;
      if (v12 > v119)
      {
        do
        {
          result = BYTE2(v191);
          _D4.i32[0] = *(v118 + 4 * v191);
          _D4.i32[1] = *(v118 + 4 * BYTE1(v191));
          _D5 = vdup_n_s32(0x45FFF800u);
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(_D4, _D5), 0), _D5)));
          _D3.i16[0] = *(v56 + 2 * _D3.u32[0]);
          __asm { FCVT            S3, H3 }

          _D4.i16[0] = *(v56 + 2 * _D3.u32[1]);
          __asm { FCVT            S4, H4 }

          _D5.i16[0] = *(v56 + 2 * llroundf(fminf(fmaxf(*(v118 + 4 * BYTE2(v191)) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v127 = (((v178 * _S4) + (v179 * _S3)) + (v177 * _S5)) + (v176 * fmaxf(_S3, fmaxf(_S4, _S5)));
          v128 = 8191.0;
          if (v127 <= 8191.0)
          {
            v128 = v127;
            if (v127 < 0.0)
            {
              v128 = 0.0;
            }
          }

          _H6 = *(v53 + 2 * llroundf(v128));
          __asm { FCVT            S6, H6 }

          v131 = _S3 * _S6;
          _S4 = _S4 * _S6;
          v133 = _S5 * _S6;
          v134 = ((v187 * _S4) + (v131 * v188)) + (v133 * v186);
          v135 = ((v184 * _S4) + (v131 * v185)) + (v133 * v183);
          _S3 = (v181 * _S4) + (v131 * v182);
          LOWORD(_S4) = *(v55 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          __asm { FCVT            S26, H4 }

          LOWORD(_S4) = *(v55 + 2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0)));
          __asm { FCVT            S27, H4 }

          LOWORD(_S3) = *(v55 + 2 * llroundf(fminf(fmaxf(_S3 + (v133 * v180), 0.0), 8191.0)));
          __asm { FCVT            S28, H3 }

          v140 = (((_S13 * _S27) + (_S29 * _S26)) + (_S14 * _S28)) + v42;
          v141 = v49;
          if (v140 <= v49)
          {
            v141 = (((_S13 * _S27) + (_S29 * _S26)) + (_S14 * _S28)) + v42;
            if (v140 < v42)
            {
              v141 = v42;
            }
          }

          v142 = *(v118 + 4 * HIBYTE(v191));
          v94->i8[0] = llroundf(v141);
          v94 = (v94 + 1);
          if (v93)
          {
            v143 = ((v43 + (_S26 * v165)) + (_S27 * v164)) + (_S28 * v163);
            v144 = v31;
            if (v143 <= v51)
            {
              v144 = ((v43 + (_S26 * v165)) + (_S27 * v164)) + (_S28 * v163);
              if (v143 < v166)
              {
                v144 = v166;
              }
            }

            v145 = ((v43 + (_S26 * _S15)) + (_S27 * v162)) + (_S28 * v161);
            *v93 = llroundf(v144);
            v146 = v31;
            if (v145 <= v51)
            {
              v146 = ((v43 + (_S26 * _S15)) + (_S27 * v162)) + (_S28 * v161);
              if (v145 < v166)
              {
                v146 = v166;
              }
            }

            v93[1] = llroundf(v146);
            v93 += 2;
          }

          if (v92)
          {
            v92->i8[0] = llroundf(v142 * 255.0);
            v92 = (v92 + 1);
          }

          v118 += 16;
          --v120;
        }

        while (v120);
      }

      v88 += v16;
      v85 = (v85 + v154);
      v83 += v18;
      v81 = (v81 + v19);
      ++v41;
    }

    while (v41 != v40);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, float a7)
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
    LOWORD(a7) = *(v13 + 152);
    v24 = LODWORD(a7);
    v25 = *(v13 + 36);
    v26 = *(v13 + 40);
    v27 = *(v13 + 44);
    v99 = *(v13 + 48);
    v98 = *(v13 + 52);
    v97 = *(v13 + 56);
    v96 = *(v13 + 60);
    v28 = *(v13 + 68);
    v95 = *(v13 + 64);
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
    v58 = **(result + 7) + v47 * v14 + 16 * *(result + 36);
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
          v65.i32[0] = *(v64 + 4 * v51);
          v65.i32[1] = *(v64 + 4 * v50);
          _D4 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v65, v59), 0), v59)));
          _D4.i16[0] = *(v39 + 2 * _D4.u32[0]);
          __asm { FCVT            S16, H4 }

          _D4.i16[0] = *(v39 + 2 * _D4.u32[1]);
          __asm { FCVT            S17, H4 }

          _D4.i16[0] = *(v39 + 2 * llroundf(fminf(fmaxf(*(v64 + 4 * v49) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v74 = fmaxf(_S16, fmaxf(_S17, _S18));
          v75 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v74);
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = (((v42 * _S17) + (v38 * _S16)) + (v43 * _S18)) + (v44 * v74);
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          _H4 = *(v40 + 2 * llroundf(v76));
          __asm { FCVT            S4, H4 }

          _S16 = _S16 * _S4;
          _S17 = _S17 * _S4;
          v81 = _S18 * _S4;
          v82 = ((v30 * _S17) + (_S16 * v29)) + (v81 * v31);
          v83 = ((v33 * _S17) + (_S16 * v32)) + (v81 * v34);
          _S4 = ((v36 * _S17) + (_S16 * v35)) + (v81 * v37);
          LOWORD(_S16) = *(v41 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = *(v41 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          LOWORD(_S4) = *(v41 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S18, H4 }

          v88 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
          v89 = v22;
          if (v88 <= v22)
          {
            v89 = (((v26 * _S17) + (v25 * _S16)) + (v27 * _S18)) + v20;
            if (v88 < v20)
            {
              v89 = v20;
            }
          }

          v90 = *(v64 + 4 * v48);
          *v63++ = llroundf(v89);
          if (v62)
          {
            v91 = ((v21 + (_S16 * v99)) + (_S17 * v98)) + (_S18 * v97);
            v92 = v24;
            if (v91 <= v24)
            {
              v92 = ((v21 + (_S16 * v99)) + (_S17 * v98)) + (_S18 * v97);
              if (v91 < v23)
              {
                v92 = v23;
              }
            }

            v93 = ((v21 + (_S16 * v96)) + (_S17 * v95)) + (_S18 * v28);
            *v62 = llroundf(v92);
            v94 = v24;
            if (v93 <= v24)
            {
              v94 = v93;
              if (v93 < v23)
              {
                v94 = v23;
              }
            }

            v62[1] = llroundf(v94);
            v62 += 2;
          }

          if (v61)
          {
            *v61++ = llroundf(v90 * 255.0);
          }

          v64 += 16;
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

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_444vf_neon_fp16_GCD);
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

__int16 *vt_Copy_RGfA_TRC_Mat_TRC_444vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0;
  v106 = *(a1 + 36);
  v3 = *a1;
  v4 = *(a1 + 28) * a2 / v3 + *(a1 + 44);
  v6 = *(a1 + 14);
  v5 = *(a1 + 15);
  v8 = *(a1 + 12);
  v7 = *(a1 + 13);
  v9 = *(a1 + 19);
  v11 = *(a1 + 16);
  v10 = *(a1 + 17);
  v12 = **(a1 + 8);
  result = **(a1 + 7);
  v14 = v10[1];
  v107 = *v10;
  v15 = v10[2];
  v17 = *v11;
  v16 = v11[1];
  v18 = v7 * a2 / v3;
  v19 = v18 + v5;
  v20 = v11[2];
  v139 = *(v9 + 154);
  v21 = *(v9 + 144);
  v22 = *(v9 + 146);
  v23 = *(v9 + 148);
  v24 = *(v9 + 150);
  v25 = *(v9 + 152);
  v136 = *(v9 + 36);
  v135 = *(v9 + 40);
  v134 = *(v9 + 44);
  v118 = *(v9 + 52);
  v119 = *(v9 + 48);
  v116 = *(v9 + 60);
  v117 = *(v9 + 56);
  v114 = *(v9 + 68);
  v115 = *(v9 + 64);
  v133 = *(v9 + 72);
  v132 = *(v9 + 76);
  v131 = *(v9 + 80);
  v130 = *(v9 + 84);
  v129 = *(v9 + 88);
  v128 = *(v9 + 92);
  v126 = *(v9 + 100);
  v127 = *(v9 + 96);
  v125 = *(v9 + 104);
  memset(v138, 0, sizeof(v138));
  v26 = (v7 + v7 * a2) / v3;
  do
  {
    v27 = 0;
    v28 = *(&v139 + v2);
    _D0 = *(v138 + 8 * v2);
    do
    {
      v137 = _D0;
      *(&v137 | v27 & 7) = v28 + 4 * v27;
      _D0 = v137;
      ++v27;
    }

    while (v27 != 8);
    *(v138 + v2++) = v137;
  }

  while (v2 != 4);
  v30 = v26 - v18;
  if (v26 - v18 >= 1)
  {
    v31 = 0;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v120 = v24;
    v35 = v25;
    v36 = v9 + 164;
    v37 = v9 + 16548;
    *_D0.i32 = v136;
    __asm { FCVT            H0, S0 }

    v124 = *_D0.i16;
    *_D0.i32 = v135;
    __asm { FCVT            H0, S0 }

    v123 = *_D0.i16;
    *_D0.i32 = v134;
    __asm { FCVT            H0, S0 }

    v122 = *_D0.i16;
    *_D0.i32 = v119;
    __asm { FCVT            H0, S0 }

    v113 = *_D0.i16;
    *_D0.i32 = v118;
    __asm { FCVT            H0, S0 }

    v112 = *_D0.i16;
    *_D0.i32 = v117;
    __asm { FCVT            H0, S0 }

    v111 = *_D0.i16;
    *_D0.i32 = v116;
    __asm { FCVT            H0, S0 }

    v110 = *_D0.i16;
    *_D0.i32 = v115;
    __asm { FCVT            H0, S0 }

    v109 = *_D0.i16;
    *_D0.i32 = v114;
    __asm { FCVT            H0, S0 }

    v108 = *_D0.i16;
    *_D0.i32 = v133;
    __asm { FCVT            H8, S0 }

    *_D0.i32 = v132;
    __asm { FCVT            H9, S0 }

    *_D0.i32 = v131;
    __asm { FCVT            H10, S0 }

    *_D0.i32 = v130;
    __asm { FCVT            H0, S0 }

    v121 = *_D0.i16;
    *_D0.i32 = v129;
    __asm { FCVT            H11, S0 }

    *_D0.i32 = v128;
    __asm { FCVT            H12, S0 }

    *_D0.i32 = v126;
    _S1 = v127;
    __asm
    {
      FCVT            H13, S1
      FCVT            H14, S0
    }

    *_D0.i16 = v21;
    v50 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v22;
    v51 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v23;
    v52 = vdupq_lane_s16(_D0, 0);
    if (v20)
    {
      v53 = (v20 + v15 * v19 + v6);
    }

    else
    {
      v53 = 0;
    }

    *_D0.i16 = v24;
    v54 = vdupq_lane_s16(_D0, 0);
    if (v16)
    {
      v55 = (v16 + v14 * v19 + v6);
    }

    else
    {
      v55 = 0;
    }

    *_D0.i16 = v25;
    v56 = vdupq_lane_s16(_D0, 0);
    v57 = (v17 + v107 * v19 + v6);
    _S1 = v125;
    __asm { FCVT            H1, S1 }

    v60 = &result[8 * v106] + v12 * v4;
    v61.i64[0] = 0x7000700070007000;
    v61.i64[1] = 0x7000700070007000;
    v62.i64[0] = 0x9000900090009000;
    v62.i64[1] = 0x9000900090009000;
    do
    {
      if (v8 < 8)
      {
        v84 = 0;
        v83 = v60;
        v66 = v57;
        v65 = v55;
        v64 = v53;
      }

      else
      {
        v63 = 0;
        v64 = v53;
        v65 = v55;
        v66 = v57;
        v67 = v60;
        do
        {
          v68 = v67;
          v141 = vld4q_f32(v67);
          v69 = v67 + 16;
          v142 = vld4q_f32(v69);
          if (v64)
          {
            v70 = vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v141.val[3]), v142.val[3]), vdupq_n_s16(0x5BF8u))));
          }

          else
          {
            v70 = 0;
          }

          v71 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v141.val[0]), v142.val[0]), v61), 0), v62));
          v72.i16[0] = *(v36 + 2 * v71.u16[0]);
          v72.i16[1] = *(v36 + 2 * v71.u16[1]);
          v72.i16[2] = *(v36 + 2 * v71.u16[2]);
          v72.i16[3] = *(v36 + 2 * v71.u16[3]);
          v72.i16[4] = *(v36 + 2 * v71.u16[4]);
          v72.i16[5] = *(v36 + 2 * v71.u16[5]);
          v72.i16[6] = *(v36 + 2 * v71.u16[6]);
          v72.i16[7] = *(v36 + 2 * v71.u16[7]);
          v73 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v141.val[1]), v142.val[1]), v61), 0), v62));
          v74.i16[0] = *(v36 + 2 * v73.u16[0]);
          v74.i16[1] = *(v36 + 2 * v73.u16[1]);
          v74.i16[2] = *(v36 + 2 * v73.u16[2]);
          v74.i16[3] = *(v36 + 2 * v73.u16[3]);
          v74.i16[4] = *(v36 + 2 * v73.u16[4]);
          v74.i16[5] = *(v36 + 2 * v73.u16[5]);
          v74.i16[6] = *(v36 + 2 * v73.u16[6]);
          v74.i16[7] = *(v36 + 2 * v73.u16[7]);
          v75 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v141.val[2]), v142.val[2]), v61), 0), v62));
          v76.i16[0] = *(v36 + 2 * v75.u16[0]);
          v76.i16[1] = *(v36 + 2 * v75.u16[1]);
          v76.i16[2] = *(v36 + 2 * v75.u16[2]);
          v76.i16[3] = *(v36 + 2 * v75.u16[3]);
          v76.i16[4] = *(v36 + 2 * v75.u16[4]);
          v76.i16[5] = *(v36 + 2 * v75.u16[5]);
          v76.i16[6] = *(v36 + 2 * v75.u16[6]);
          v76.i16[7] = *(v36 + 2 * v75.u16[7]);
          v77 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v72, _H8), v74, _H9), v76, _H10), 0), v62));
          v78.i16[0] = *(v37 + 2 * v77.u16[0]);
          v78.i16[1] = *(v37 + 2 * v77.u16[1]);
          v78.i16[2] = *(v37 + 2 * v77.u16[2]);
          v78.i16[3] = *(v37 + 2 * v77.u16[3]);
          v78.i16[4] = *(v37 + 2 * v77.u16[4]);
          v78.i16[5] = *(v37 + 2 * v77.u16[5]);
          v78.i16[6] = *(v37 + 2 * v77.u16[6]);
          v78.i16[7] = *(v37 + 2 * v77.u16[7]);
          v79 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v72, v121), v74, _H11), v76, _H12), 0), v62));
          v80.i16[0] = *(v37 + 2 * v79.u16[0]);
          v80.i16[1] = *(v37 + 2 * v79.u16[1]);
          v80.i16[2] = *(v37 + 2 * v79.u16[2]);
          v80.i16[3] = *(v37 + 2 * v79.u16[3]);
          v80.i16[4] = *(v37 + 2 * v79.u16[4]);
          v80.i16[5] = *(v37 + 2 * v79.u16[5]);
          v80.i16[6] = *(v37 + 2 * v79.u16[6]);
          v80.i16[7] = *(v37 + 2 * v79.u16[7]);
          v81 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, _H1), v74, _H14), v72, _H13), 0), v62));
          v82.i16[0] = *(v37 + 2 * v81.u16[0]);
          result = (v37 + 2 * v81.u16[2]);
          v82.i16[1] = *(v37 + 2 * v81.u16[1]);
          v82.i16[2] = *result;
          v82.i16[3] = *(v37 + 2 * v81.u16[3]);
          v82.i16[4] = *(v37 + 2 * v81.u16[4]);
          v82.i16[5] = *(v37 + 2 * v81.u16[5]);
          v82.i16[6] = *(v37 + 2 * v81.u16[6]);
          v82.i16[7] = *(v37 + 2 * v81.u16[7]);
          *v66++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v50, v78, v124), v80, v123), v82, v122), v50), v52)));
          if (v65)
          {
            v140.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v51, v78, v113), v80, v112), v82, v111), v54), v56), v54), v56)));
            v140.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v51, v78, v110), v80, v109), v82, v108)));
            vst2_s8(v65, v140);
            v65 += 16;
          }

          if (v64)
          {
            *v64++ = v70;
          }

          v63 += 8;
          v67 = v68 + 32;
        }

        while (v63 < v8 - 7);
        v83 = (v68 + 32);
        v84 = v8 & 0xFFFFFFF8;
      }

      v85 = v8 - v84;
      if (v8 > v84)
      {
        do
        {
          v86.i32[0] = *(v83 + 4 * v139);
          v86.i32[1] = *(v83 + 4 * BYTE1(v139));
          _D7 = vdup_n_s32(0x45FFF800u);
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v86, _D7), 0), _D7)));
          result = _D6.u32[0];
          _D6.i16[0] = *(v36 + 2 * _D6.u32[0]);
          __asm { FCVT            S6, H6 }

          _D7.i16[0] = *(v36 + 2 * _D6.u32[1]);
          __asm { FCVT            S7, H7 }

          _H4 = *(v36 + 2 * llroundf(fminf(fmaxf(*(v83 + 4 * BYTE2(v139)) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          v91 = ((v132 * _D7.f32[0]) + (*_D6.i32 * v133)) + (_S4 * v131);
          v92 = ((v129 * _D7.f32[0]) + (*_D6.i32 * v130)) + (_S4 * v128);
          _S4 = ((v126 * _D7.f32[0]) + (*_D6.i32 * v127)) + (_S4 * v125);
          _D6.i16[0] = *(v37 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S21, H6 }

          _D6.i16[0] = *(v37 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S22, H6 }

          LOWORD(_S4) = *(v37 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          __asm { FCVT            S23, H4 }

          v97 = (((v135 * _S22) + (v136 * _S21)) + (v134 * _S23)) + v32;
          v98 = v34;
          if (v97 <= v34)
          {
            v98 = (((v135 * _S22) + (v136 * _S21)) + (v134 * _S23)) + v32;
            if (v97 < v32)
            {
              v98 = v32;
            }
          }

          v99 = *(v83 + 4 * HIBYTE(v139));
          v66->i8[0] = llroundf(v98);
          v66 = (v66 + 1);
          if (v65)
          {
            v100 = ((v33 + (_S21 * v119)) + (_S22 * v118)) + (_S23 * v117);
            v101 = v25;
            if (v100 <= v35)
            {
              v101 = ((v33 + (_S21 * v119)) + (_S22 * v118)) + (_S23 * v117);
              if (v100 < v120)
              {
                v101 = v120;
              }
            }

            v102 = ((v33 + (_S21 * v116)) + (_S22 * v115)) + (_S23 * v114);
            *v65 = llroundf(v101);
            v103 = v25;
            if (v102 <= v35)
            {
              v103 = ((v33 + (_S21 * v116)) + (_S22 * v115)) + (_S23 * v114);
              if (v102 < v120)
              {
                v103 = v120;
              }
            }

            v65[1] = llroundf(v103);
            v65 += 2;
          }

          if (v64)
          {
            v64->i8[0] = llroundf(v99 * 255.0);
            v64 = (v64 + 1);
          }

          v83 += 16;
          --v85;
        }

        while (v85);
      }

      v60 += v12;
      v57 = (v57 + v107);
      v55 += v14;
      v53 = (v53 + v15);
      ++v31;
    }

    while (v31 != v30);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_TRC_Mat_TRC_444vf_GCD);
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

unsigned __int8 *vt_Copy_RGfA_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, float a3, float a4, float a5, float a6, float a7)
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
    LOWORD(a7) = *(v13 + 152);
    v24 = LODWORD(a7);
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
    v57 = **(result + 7) + v46 * v14 + 16 * *(result + 36);
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
          v64.i32[0] = *(v60 + 4 * v50);
          v64.i32[1] = *(v60 + 4 * v49);
          _D4 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_f32(v64, v58), 0), v58)));
          _D4.i16[0] = *(v42 + 2 * _D4.u32[0]);
          __asm { FCVT            S4, H4 }

          _H12 = *(v42 + 2 * _D4.u32[1]);
          __asm { FCVT            S12, H12 }

          _H11 = *(v42 + 2 * llroundf(fminf(fmaxf(*(v60 + 4 * v48) * 8191.0, 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          v74 = ((v34 * _S12) + (*_D4.i32 * v33)) + (_S11 * v35);
          v75 = ((v37 * _S12) + (*_D4.i32 * v36)) + (_S11 * v38);
          *_D4.i32 = ((v40 * _S12) + (*_D4.i32 * v39)) + (_S11 * v41);
          LOWORD(_S11) = *(v43 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          LOWORD(_S11) = *(v43 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S13, H11 }

          _D4.i16[0] = *(v43 + 2 * llroundf(fminf(fmaxf(*_D4.i32, 0.0), 8191.0)));
          __asm { FCVT            S14, H4 }

          v79 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v20;
          v80 = v22;
          if (v79 <= v22)
          {
            v80 = (((v26 * _S13) + (v25 * _S12)) + (v27 * _S14)) + v20;
            if (v79 < v20)
            {
              v80 = v20;
            }
          }

          v81 = *(v60 + 4 * v47);
          *v63++ = llroundf(v80);
          if (v62)
          {
            v82 = ((v21 + (_S12 * v86)) + (_S13 * v28)) + (_S14 * v29);
            v83 = v24;
            if (v82 <= v24)
            {
              v83 = ((v21 + (_S12 * v86)) + (_S13 * v28)) + (_S14 * v29);
              if (v82 < v23)
              {
                v83 = v23;
              }
            }

            v84 = ((v21 + (_S12 * v30)) + (_S13 * v31)) + (_S14 * v32);
            *v62 = llroundf(v83);
            v85 = v24;
            if (v84 <= v24)
            {
              v85 = v84;
              if (v84 < v23)
              {
                v85 = v23;
              }
            }

            v62[1] = llroundf(v85);
            v62 += 2;
          }

          if (v61)
          {
            *v61++ = llroundf(v81 * 255.0);
          }

          v60 += 16;
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

uint64_t vt_Copy_RGfA_rgb_444vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_444vf_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_RGfA_rgb_444vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v96 = *(result + 36);
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
  v95 = **(result + 7);
  v19 = v18 * (*(result + 28) * a2 / v8 + *(result + 44));
  v20 = *v15;
  v21 = v15[1];
  v22 = v15[2];
  v23 = *v16;
  v24 = v16[1];
  v25 = v16[2];
  v26 = *(v12 + 136);
  v111 = *(v12 + 154);
  v27 = *(v12 + 144);
  v28 = *(v12 + 146);
  v29 = *(v12 + 148);
  v30 = *(v12 + 150);
  v31 = *(v12 + 152);
  _S16 = *(v12 + 36);
  _S15 = *(v12 + 40);
  _S2 = *(v12 + 44);
  LODWORD(a7) = *(v12 + 56);
  v107 = *(v12 + 52);
  v108 = *(v12 + 48);
  v105 = *(v12 + 60);
  v106 = *&a7;
  v103 = *(v12 + 68);
  v104 = *(v12 + 64);
  memset(v110, 0, sizeof(v110));
  v35 = v17 / v8;
  do
  {
    v36 = 0;
    v37 = *(&v111 + v7);
    v38 = *(v110 + v7);
    do
    {
      v109 = v38;
      *(&v109 | v36 & 7) = v37 + 4 * v36;
      v38 = v109;
      ++v36;
    }

    while (v36 != 8);
    *(v110 + v7++) = v109;
  }

  while (v7 != 4);
  v39 = v35 - v13;
  if (v35 - v13 >= 1)
  {
    v40 = 0;
    _S17 = v26;
    v42 = v27;
    v43 = v28;
    v44 = v30;
    v45 = v31;
    __asm
    {
      FCVT            H8, S16
      FCVT            H9, S15
      FCVT            H10, S2
    }

    _S0 = v108;
    __asm { FCVT            H0, S0 }

    v102 = *&_S0;
    _S0 = v107;
    __asm { FCVT            H0, S0 }

    v101 = *&_S0;
    _S0 = LODWORD(a7);
    __asm { FCVT            H0, S0 }

    v100 = *&_S0;
    _S0 = v105;
    __asm { FCVT            H0, S0 }

    v99 = *&_S0;
    _S0 = v104;
    __asm { FCVT            H0, S0 }

    v98 = *&_S0;
    _S0 = v103;
    __asm { FCVT            H3, S0 }

    *&a7 = v27;
    v60 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v28;
    v61 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v29;
    v62 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v30;
    v63 = vdupq_lane_s16(*&a7, 0);
    *&a7 = v31;
    v64 = vdupq_lane_s16(*&a7, 0);
    if (v25)
    {
      v65 = (v25 + v22 * v14 + v9);
    }

    else
    {
      v65 = 0;
    }

    if (v24)
    {
      v66 = (v24 + v21 * v14 + v9);
    }

    else
    {
      v66 = 0;
    }

    v67 = (v23 + v20 * v14 + v9);
    v68 = v95 + v19 + 16 * v96;
    __asm { FCVT            H4, S17 }

    do
    {
      if (v10 < 8)
      {
        v83 = 0;
        v82 = v68;
        v73 = v67;
        v72 = v66;
        v71 = v65;
      }

      else
      {
        v70 = 0;
        v71 = v65;
        v72 = v66;
        v73 = v67;
        v74 = v68;
        do
        {
          v75 = v74;
          v113 = vld4q_f32(v74);
          v76 = v74 + 16;
          v114 = vld4q_f32(v76);
          v77 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[0]), v114.val[0]), _H4);
          v78 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[1]), v114.val[1]), _H4);
          v79 = vmulq_n_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[2]), v114.val[2]), _H4);
          v80 = COERCE_DOUBLE(vmovn_s16(vcvtq_u16_f16(vmulq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(v113.val[3]), v114.val[3]), vdupq_n_s16(0x5BF8u)))));
          if (v71)
          {
            v81 = v80;
          }

          else
          {
            v81 = 0.0;
          }

          *v73++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v60, v77, _H8), v78, _H9), v79, _H10), v60), v62)));
          if (v72)
          {
            v112.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v77, v102), v78, v101), v79, v100), v63), v64), v63), v64)));
            v112.val[1] = vmovn_s16(vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v61, v77, v99), v78, v98), v79, _H3)));
            vst2_s8(v72, v112);
            v72 += 16;
          }

          if (v71)
          {
            *v71++ = v81;
          }

          v70 += 8;
          v74 = v75 + 32;
        }

        while (v70 < v10 - 7);
        v82 = (v75 + 32);
        v83 = v10 & 0xFFFFFFF8;
      }

      v84 = v10 - v83;
      if (v10 > v83)
      {
        do
        {
          v85 = *(v82 + 4 * v111) * _S17;
          v86 = *(v82 + 4 * BYTE1(v111)) * _S17;
          v87 = *(v82 + 4 * BYTE2(v111)) * _S17;
          v88 = ((_S15 * v86) + (_S16 * v85)) + (_S2 * v87);
          v89 = v29;
          if ((v88 + v42) <= v29)
          {
            v89 = v88 + v42;
            if ((v88 + v42) < v42)
            {
              v89 = v27;
            }
          }

          v90 = *(v82 + 4 * HIBYTE(v111));
          v73->i8[0] = llroundf(v89);
          v73 = (v73 + 1);
          if (v72)
          {
            v91 = ((v43 + (v85 * v108)) + (v86 * v107)) + (v87 * v106);
            v92 = v45;
            if (v91 <= v45)
            {
              v92 = ((v43 + (v85 * v108)) + (v86 * v107)) + (v87 * v106);
              if (v91 < v44)
              {
                v92 = v44;
              }
            }

            v93 = ((v43 + (v85 * v105)) + (v86 * v104)) + (v87 * v103);
            *v72 = llroundf(v92);
            v94 = v45;
            if (v93 <= v45)
            {
              v94 = v93;
              if (v93 < v44)
              {
                v94 = v44;
              }
            }

            v72[1] = llroundf(v94);
            v72 += 2;
          }

          if (v71)
          {
            *v71 = llroundf(v90 * 255.0);
            v71 = (v71 + 1);
          }

          v82 += 16;
          --v84;
        }

        while (v84);
      }

      v68 += v18;
      v67 = (v67 + v20);
      v66 += v21;
      v65 = (v65 + v22);
      ++v40;
    }

    while (v40 != v39);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGfA_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  if ((*a4 * (v28.i64[1] + v27.i64[1]) + 16 * v28.i64[0]) <= *a5)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGfA_rgb_444vf_GCD);
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