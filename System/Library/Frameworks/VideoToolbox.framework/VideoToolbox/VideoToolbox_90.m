unsigned __int8 *vt_Copy_xf422_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v40 = *(v10 + 124);
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
      if (v11 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v43;
        v55 = v45;
        do
        {
          v56 = (v49 + 2 * v52);
          v57 = (v56[1] >> v51) - v21;
          v58 = v23 * v57;
          v59 = v22 * ((*v53 >> v51) - v20);
          v60 = (v23 * v57) + v59;
          v61 = 8191.0;
          if (v60 <= 8191.0)
          {
            v61 = (v23 * v57) + v59;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          v62 = (*v56 >> v51) - v21;
          v63 = (v25 * v57) + (v62 * v24);
          v64 = 8191.0;
          if ((v59 + v63) <= 8191.0)
          {
            v64 = v59 + v63;
            if ((v59 + v63) < 0.0)
            {
              v64 = 0.0;
            }
          }

          v65 = v26 * v62;
          v66 = (v26 * v62) + v59;
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v22 * ((v53[1] >> v51) - v20);
          v69 = v58 + v68;
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          v71 = 8191.0;
          if ((v63 + v68) <= 8191.0)
          {
            v71 = v63 + v68;
            if ((v63 + v68) < 0.0)
            {
              v71 = 0.0;
            }
          }

          v72 = v65 + v68;
          v73 = (v65 + v68) <= 8191.0;
          v74 = 8191.0;
          if (v73)
          {
            v74 = v72;
            if (v72 < 0.0)
            {
              v74 = 0.0;
            }
          }

          if (v55)
          {
            LOWORD(v72) = *v55;
            LOWORD(v63) = v55[1];
            v55 += 2;
            v75 = LODWORD(v72) * 0.000015259;
            v76 = LODWORD(v63) * 0.000015259;
          }

          else
          {
            v75 = 0.0;
            v76 = 0.0;
          }

          _H27 = *(v36 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v36 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H31 = *(v36 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v36 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v36 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          _H10 = *(v36 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
          }

          v92 = ((v28 * _S28) + (_S27 * v27)) + (_S31 * v29);
          v93 = ((v31 * _S28) + (_S27 * v30)) + (_S31 * v32);
          _S27 = ((v34 * _S28) + (_S27 * v33)) + (_S31 * v35);
          _S28 = ((v28 * _S9) + (_S8 * v27)) + (_S10 * v29);
          _S31 = ((v31 * _S9) + (_S8 * v30)) + (_S10 * v32);
          _S8 = ((v34 * _S9) + (_S8 * v33)) + (_S10 * v35);
          LOWORD(_S9) = *(v37 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          LOWORD(_S10) = *(v37 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          LOWORD(_S27) = *(v37 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          LOWORD(_S28) = *(v37 + 2 * llroundf(fminf(fmaxf(_S28, 0.0), 8191.0)));
          LOWORD(_S31) = *(v37 + 2 * llroundf(fminf(fmaxf(_S31, 0.0), 8191.0)));
          LOWORD(_S8) = *(v37 + 2 * llroundf(fminf(fmaxf(_S8, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
            FCVT            S27, H27
            FCVT            S28, H28
            FCVT            S31, H31
            FCVT            S8, H8
          }

          *v54 = _S9;
          *(v54 + 4) = _S10;
          if (!v55)
          {
            v75 = 1.0;
          }

          *(v54 + 8) = _S27;
          *(v54 + 12) = v75;
          if (v55)
          {
            v104 = v76;
          }

          else
          {
            v104 = 1.0;
          }

          *(v54 + 16) = _S28;
          *(v54 + 20) = _S31;
          *(v54 + 24) = _S8;
          *(v54 + 28) = v104;
          v52 += 2;
          v53 += 2;
          v54 += 32;
        }

        while (v52 < v11);
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

uint64_t vt_Copy_xf422_rgb_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
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
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_RGfA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_xf422_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, double a7, int16x4_t a8, float32x4_t a9)
{
  v12 = *result;
  v13 = *(result + 13);
  v14 = v13 * a2 / v12;
  v15 = (v13 + v13 * a2) / v12 - v14;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(result + 24);
    v18 = *(result + 19);
    v19 = *(result + 7);
    v20 = *(result + 8);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = **(result + 17);
    v25 = v18[17].u16[2];
    v26 = v18[17].u16[3];
    a9.i32[0] = v18[3].i32[1];
    a3.i32[0] = 1.0;
    v9.f32[0] = 1.0 / v18[16].u32[0];
    v27 = v25;
    v28 = v26;
    _S3 = v9.f32[0] * v18->f32[0];
    __asm { FCVT            H4, S3 }

    *a8.i16 = v25;
    v35 = vdupq_lane_s16(a8, 0);
    v36 = -v26;
    a9.i32[1] = v18[1].i32[0];
    *a9.f32 = vmul_n_f32(*a9.f32, v9.f32[0]);
    v37 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    *v9.f32 = vmul_n_f32(v18[2], v9.f32[0]);
    v38 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v39 = vmulq_n_f16(v37, v36);
    v40 = vmulq_n_f16(v38, v36);
    LODWORD(v18) = v18[15].u8[4];
    v41 = 16 - v18;
    v42 = v19[2];
    v43 = *(result + 28) * a2 / v12 + *(result + 44);
    v44 = *(result + 36);
    v45 = v42 + v23 * v43 + 2 * v44;
    v46 = v14 + *(result + 15);
    v47 = *v19;
    v48 = *(*(result + 7) + 8);
    _CF = v18 >= 0x11;
    v49 = v48 + v22 * v43 + 2 * v44;
    if (_CF)
    {
      v41 = 0;
    }

    v50 = **(result + 16) + v24 * v46 + 16 * *(result + 14);
    if (!v42)
    {
      v45 = 0;
    }

    if (!v48)
    {
      v49 = 0;
    }

    v51 = v47 + v21 * v43 + 2 * v44;
    v52 = vdupq_n_s16(-v41);
    __asm { FMOV            V23.4S, #1.0 }

    do
    {
      if (v17 < 8)
      {
        v83 = 0;
        v58 = v49;
        v57 = v45;
        v56 = v50;
        v55 = v51;
      }

      else
      {
        v54 = 0;
        v55 = v51;
        v56 = v50;
        v57 = v45;
        v58 = v49;
        do
        {
          if (v57)
          {
            v59 = *v57++;
            *v60.i8 = vzip1_s16(*v59.i8, 0);
            v60.u64[1] = vzip2_s16(*v59.i8, 0);
            v61 = vextq_s8(v59, v59, 8uLL).u64[0];
            *v62.i8 = vzip1_s16(v61, 0);
            v62.u64[1] = vzip2_s16(v61, 0);
            v63 = vdupq_n_s32(0x37800080u);
            v64 = vmulq_f32(vcvtq_f32_u32(v60), v63);
            v65 = vmulq_f32(vcvtq_f32_u32(v62), v63);
          }

          else
          {
            v64 = _Q23;
            v65 = _Q23;
          }

          v66 = *v58++;
          v67 = vcvtq_f16_u16(vshlq_u16(v66, v52));
          v68 = vmlaq_f16(v39, v37, v67);
          v69 = vmlaq_f16(v40, v38, v67);
          v70 = vuzp1q_s16(v69, a3).u64[0];
          v71 = vuzp2q_s16(v69, a3);
          *v71.i8 = vadd_f16(v70, *v71.i8);
          v72 = *v55++;
          v73 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v72, v52)), v35);
          v74 = vmlaq_n_f16(vtrn2q_s16(v68, v68), v73, _H4);
          v75 = vmlaq_n_f16(vzip1q_s16(v71, v71), v73, _H4);
          v76 = vmlaq_n_f16(vtrn1q_s16(v68, v68), v73, _H4);
          v10 = vcvtq_f32_f16(*v74.i8);
          v11 = vcvtq_f32_f16(*v75.i8);
          v77 = vcvtq_f32_f16(*v76.i8);
          v78 = vcvtq_f32_f16(*&vextq_s8(v74, v74, 8uLL));
          v79 = vcvtq_f32_f16(*&vextq_s8(v75, v75, 8uLL));
          v80 = vcvtq_f32_f16(*&vextq_s8(v76, v76, 8uLL));
          v81 = v56 + 128;
          vst4q_f32(v56, *v10.f32);
          v82 = (v56 + 64);
          vst4q_f32(v82, *(&v65 - 3));
          v56 = v81;
          v54 += 8;
        }

        while (v54 < v17 - 7);
        v83 = v17 & 0x7FFFFFF8;
      }

      while (v83 < (v17 & 0xFFFFFFFE))
      {
        if (v57)
        {
          v10.i16[0] = v57->i16[0];
          v11.i16[0] = v57->i16[1];
          v57 = (v57 + 4);
          v10.f32[0] = v10.u32[0] * 0.000015259;
          v11.f32[0] = v11.u32[0] * 0.000015259;
        }

        else
        {
          v10.i32[0] = 0;
          v11.i32[0] = 0;
        }

        v84 = (v58->u16[0] >> v41) - v28;
        v85 = (v58->u16[1] >> v41) - v28;
        v86 = a9.f32[1] * v85;
        v87 = (v9.f32[1] * v85) + (v84 * v9.f32[0]);
        v88 = a9.f32[0] * v84;
        v89 = _S3 * ((v55->u16[0] >> v41) - v27);
        v90 = _S3 * ((v55->u16[1] >> v41) - v27);
        v91 = v86 + v89;
        v92 = v89 + v87;
        v93 = v88 + v89;
        v94 = v86 + v90;
        v95 = v87 + v90;
        v96 = v88 + v90;
        *v56 = v91;
        *(v56 + 4) = v92;
        if (!v57)
        {
          v10.f32[0] = 1.0;
        }

        *(v56 + 8) = v93;
        *(v56 + 12) = v10.i32[0];
        if (v57)
        {
          v10.f32[0] = v11.f32[0];
        }

        else
        {
          v10.f32[0] = 1.0;
        }

        *(v56 + 16) = v94;
        *(v56 + 20) = v95;
        *(v56 + 24) = v96;
        *(v56 + 28) = v10.i32[0];
        v56 += 32;
        v83 += 2;
        v58 = (v58 + 4);
        v55 = (v55 + 4);
      }

      v51 += v21;
      v49 += v22;
      v45 += v23;
      v50 += v24;
      ++v16;
    }

    while (v16 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_xf422_rgb_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v34 = 2 * v33, 2 * v33 > *v64) || ((2 * (v33 + (v33 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v64[1] || (v35 = v64[2], v34 > v35) && v35 || (16 * (v31 + v28) + 16) > *v62)
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
      if ((*v62 * (v68 + v39 - 1) + 16 * (v38 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_xf422_rgb_RGfA_GCD);
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

unsigned __int8 *vt_Copy_xf422_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v7 = *result;
  v8 = *(result + 13);
  v9 = v8 * a2 / v7;
  v10 = (v8 + v8 * a2) / v7 - v9;
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = *(result + 19);
    v13 = *(result + 24) & 0xFFFFFFFE;
    v14 = *(result + 7);
    v15 = *(result + 8);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = **(result + 17);
    *&v20 = *(v12 + 128);
    v21 = 1.0 / *&v20;
    LOWORD(v20) = *(v12 + 140);
    v22 = v20;
    LOWORD(a5) = *(v12 + 142);
    v23 = LODWORD(a5);
    v24 = v21 * *v12;
    v25 = v21 * *(v12 + 8);
    v26 = v21 * *(v12 + 16);
    v27 = v21 * *(v12 + 20);
    v28 = v21 * *(v12 + 28);
    v29 = v9 + *(result + 15);
    v30 = *(result + 28) * a2 / v7 + *(result + 44);
    v31 = *(v12 + 124);
    v32 = *(result + 36);
    if (v31 >= 0x11)
    {
      v33 = 0;
    }

    else
    {
      v33 = 16 - v31;
    }

    v34 = **(result + 16) + v19 * v29 + 16 * *(result + 14);
    v35 = v14[2];
    if (v35)
    {
      v36 = v35 + v30 * v18 + 2 * v32;
    }

    else
    {
      v36 = 0;
    }

    v37 = *v14;
    v38 = *(*(result + 7) + 8);
    v39 = v38 == 0;
    v40 = v38 + v30 * v17 + 2 * v32;
    if (v39)
    {
      v40 = 0;
    }

    v41 = v37 + v30 * v16 + 2 * v32;
    v42 = v33;
    do
    {
      if (v13 >= 1)
      {
        v43 = 0;
        v44 = v41;
        v45 = v34;
        v46 = v36;
        do
        {
          if (v46)
          {
            LOWORD(v5) = *v46;
            LOWORD(v6) = v46[1];
            v46 += 2;
            v47 = LODWORD(v5) * 0.000015259;
            v6 = LODWORD(v6) * 0.000015259;
          }

          else
          {
            v47 = 0.0;
            v6 = 0.0;
          }

          v48 = (v40 + 2 * v43);
          v49 = (*v48 >> v42) - v23;
          v50 = (v48[1] >> v42) - v23;
          v51 = v25 * v50;
          v52 = (v27 * v50) + (v49 * v26);
          v53 = v28 * v49;
          v54 = v24 * ((*v44 >> v42) - v22);
          v55 = v24 * ((v44[1] >> v42) - v22);
          v56 = v51 + v54;
          v57 = v54 + v52;
          v58 = v53 + v54;
          v59 = v51 + v55;
          v60 = v52 + v55;
          v61 = v53 + v55;
          *v45 = v56;
          v45[1] = v57;
          if (!v46)
          {
            v47 = 1.0;
          }

          v45[2] = v58;
          v45[3] = v47;
          if (v46)
          {
            v5 = v6;
          }

          else
          {
            v5 = 1.0;
          }

          v45[4] = v59;
          v45[5] = v60;
          v45[6] = v61;
          v45[7] = v5;
          v43 += 2;
          v44 += 2;
          v45 += 8;
        }

        while (v43 < v13);
      }

      v41 += v16;
      v40 += v17;
      v36 += v18;
      v34 += v19;
      ++v11;
    }

    while (v11 != v10);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

void VTTileDecompressionSessionInvalidate(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 168);
    if (!*(a1 + 168))
    {
      if (*(a1 + 152))
      {
        VTDecompressionSessionRemoteBridge_Invalidate(*(a1 + 152));
        *v1 = 1;
      }

      else
      {
        VTTileDecompressionSessionInvalidate_cold_1(a1, (a1 + 168));
      }
    }
  }
}

uint64_t RegisterVTTileDecompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTTileDecompressionSessionID = v0;
  sVTTileDecompressionSessionPropertyCallbacks = 0;
  *algn_1ED6D43E8 = VTTileDecompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D43F0 = VTTileDecompressionSessionSetProperty;
  qword_1ED6D43F8 = VTTileDecompressionSessionCopyProperty;
  qword_1ED6D4400 = VTTileDecompressionSessionSetProperties;
  qword_1ED6D4408 = VTTileDecompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTTileDecompressionSessionPropertyCallbacks, v0);
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v14 = 0;
  v15[0] = 0;
  if (!a2)
  {
    VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_3(&v13);
LABEL_26:
    v11 = v13;
    goto LABEL_20;
  }

  *a2 = 0;
  if (!a1)
  {
    VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_2(&v13);
    goto LABEL_26;
  }

  if (*(a1 + 168) == 1)
  {
    VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_1(&v13);
    goto LABEL_26;
  }

  v3 = *(a1 + 152);
  if (v3)
  {

    return VTDecompressionSessionRemoteBridge_CopySupportedPropertyDictionary(v3);
  }

  v5 = *(a1 + 80);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6 || ((v7 = v6(v5, &cf), v7 != -12782) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    if (cf)
    {
      v9 = v15;
      v14 = cf;
    }

    else
    {
      v9 = &v14;
    }

    v10 = *(a1 + 144);
    if (v10)
    {
      *v9 = v10;
    }

    v11 = FigCFCreateCombinedDictionary();
  }

  else
  {
    v11 = v7;
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t VTTileDecompressionSessionSetProperty(uint64_t a1, void *key, const __CFNumber *a3)
{
  if (!a1)
  {
    VTTileDecompressionSessionSetProperty_cold_2(&v13);
    return v13;
  }

  if (*(a1 + 168) == 1)
  {
    VTTileDecompressionSessionSetProperty_cold_1(&v12);
    return v12;
  }

  v6 = *(a1 + 152);
  if (v6)
  {

    return VTDecompressionSessionRemoteBridge_SetProperty(v6, key, a3);
  }

  v8 = *(a1 + 144);
  if (v8 && CFDictionaryContainsKey(v8, key))
  {
    if (CFEqual(@"CanvasPixelBufferAttributes", key) || CFEqual(@"TileDecoderRequirements", key))
    {
      fig_log_get_emitter();
      v9 = FigSignalErrorAtGM();
    }

    else
    {
      if (CFEqual(@"ClientPID", key))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 192));
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 4294954396;
  }

  if (!vtTileDecompressionSessionIsPropertyHandledByVideoDecoder(a1, key))
  {
    return v9;
  }

  CMBaseObject = VTVideoDecoderGetCMBaseObject(*(a1 + 80));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    return 4294954514;
  }

  return v11(CMBaseObject, key, a3);
}

BOOL vtTileDecompressionSessionIsPropertyHandledByVideoDecoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  v3 = *(a1 + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4)
  {
    return 0;
  }

  v4(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v5 = CFDictionaryContainsKey(theDict, a2) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

uint64_t VTTileDecompressionSessionCopyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4)
{
  if (!a4)
  {
    VTTileDecompressionSessionCopyProperty_cold_3(&v16);
    return v16;
  }

  *a4 = 0;
  if (!a1)
  {
    VTTileDecompressionSessionCopyProperty_cold_2(&v15);
    return v15;
  }

  if (*(a1 + 168) == 1)
  {
    VTTileDecompressionSessionCopyProperty_cold_1(&v14);
    return v14;
  }

  if (!*(a1 + 152))
  {
    v9 = *(a1 + 144);
    if (!v9 || !CFDictionaryContainsKey(v9, cf1))
    {
      if (!vtTileDecompressionSessionIsPropertyHandledByVideoDecoder(a1, cf1))
      {
        return 4294954396;
      }

      CMBaseObject = VTVideoDecoderGetCMBaseObject(*(a1 + 80));
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v13)
      {
        return 4294954514;
      }

      return v13(CMBaseObject, cf1, a3, a4);
    }

    if (CFEqual(@"CanvasPixelBufferAttributes", cf1))
    {
      FigReadWriteLockLockForRead();
      v10 = *(a1 + 96);
      if (v10)
      {
LABEL_11:
        v10 = CFRetain(v10);
      }
    }

    else
    {
      if (!CFEqual(@"TileDecoderRequirements", cf1))
      {
        result = CFEqual(@"ForgetCachedIOSurfaces", cf1);
        if (result)
        {
          fig_log_get_emitter();

          return FigSignalErrorAtGM();
        }

        return result;
      }

      FigReadWriteLockLockForRead();
      v10 = *(a1 + 104);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    *a4 = v10;
    FigReadWriteLockUnlockForRead();
    return 0;
  }

  if (CFEqual(cf1, @"PixelBufferPool"))
  {
    return 4294954396;
  }

  v11 = *(a1 + 152);

  return VTDecompressionSessionRemoteBridge_CopyProperty(v11, cf1, a3, a4);
}

uint64_t VTTileDecompressionSessionSetProperties(uint64_t a1, const __CFDictionary *a2)
{
  v15 = a1;
  v16 = 0;
  if (!a1)
  {
    VTTileDecompressionSessionSetProperties_cold_2(&v16);
    return v16;
  }

  if (*(a1 + 168) == 1)
  {
    VTTileDecompressionSessionSetProperties_cold_1(&v16);
    return v16;
  }

  v4 = *(a1 + 152);
  if (!v4)
  {
    if (a2)
    {
      v19 = 0;
      v20 = 0;
      context = *(a1 + 144);
      cf = 0;
      v6 = *(a1 + 80);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v7 || ((v8 = v7(v6, &cf), v8 != -12782) ? (v9 = v8 == 0) : (v9 = 1), v9))
      {
        CFDictionaryApplyFunction(a2, vtTileDecompressionSessionAddPropertyToPartition, &context);
        v12 = 0;
        v13 = v19;
        v14 = v20;
      }

      else
      {
        v12 = v8;
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        v13 = 0;
        v14 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      LODWORD(v16) = v12;
      if (!v12)
      {
        if (v13)
        {
          CFDictionaryApplyFunction(v13, vtTileCompressionSessionSetOneProperty, &v15);
        }

        if (v14)
        {
          v10 = *(a1 + 80);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v11 || (LODWORD(v16) = v11(v10, v14), v16 == -12782))
          {
            LODWORD(v16) = 0;
            CFDictionaryApplyFunction(v14, vtTileCompressionSessionSetOneProperty, &v15);
          }
        }
      }
    }

    return v16;
  }

  return VTDecompressionSessionRemoteBridge_SetProperties(v4, a2);
}

uint64_t vtTileCompressionSessionSetOneProperty(void *key, const __CFNumber *a2, uint64_t a3)
{
  result = VTTileDecompressionSessionSetProperty(*a3, key, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    if (a1)
    {
      if (*(a1 + 168) == 1)
      {
        VTTileDecompressionSessionCopySerializableProperties_cold_1(&v9);
        return v9;
      }

      else if (*(a1 + 152))
      {
        v5 = *(a1 + 152);

        return VTDecompressionSessionRemoteBridge_CopySerializableProperties(v5, a2, a3);
      }

      else
      {
        v7 = *(a1 + 80);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v8)
        {
          return 0;
        }

        result = v8(v7, a2, a3);
        if (result == -12782)
        {
          return 0;
        }
      }
    }

    else
    {
      VTTileDecompressionSessionCopySerializableProperties_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    VTTileDecompressionSessionCopySerializableProperties_cold_3(&v11);
    return v11;
  }

  return result;
}

uint64_t VTTileDecompressionSessionDecodeTile(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v27 = 0;
  if (a1)
  {
    if (*(a1 + 168) == 1)
    {
      result = 4294954393;
    }

    else
    {
      v17 = *(a1 + 152);
      if (v17)
      {

        return VTDecompressionSessionRemoteBridge_DecodeTile(v17, a2, a3, a4, a5, a6, a7, a8, a9);
      }

      FigReadWriteLockLockForWrite();
      v19 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004086CAA5EDuLL);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 120);
        *(a1 + 120) = v21 + 1;
        *v19 = v21;
        v19[1] = a8;
        v19[2] = a3;
        v19[3] = a4;
        if (a5)
        {
          v22 = CFRetain(a5);
          v23 = *v20;
        }

        else
        {
          v23 = v21;
          v22 = 0;
        }

        v20[4] = v22;
        v20[5] = a6;
        v20[6] = *(a1 + 136);
        *(a1 + 136) = v20;
        FigReadWriteLockUnlockForWrite();
        if ((a7 & 2) == 0)
        {
          ++*(a1 + 188);
        }

        v24 = *(a1 + 80);
        v25 = *(CMBaseObjectGetVTable() + 16);
        if (*v25 < 3uLL || (v26 = v25[9]) == 0 || (result = v26(v24, v23, a2, a3, a4, a5, a6, a7, &v27), result))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          result = 0;
        }
      }

      else
      {
        FigReadWriteLockUnlockForWrite();
        result = 4294954392;
      }
    }
  }

  else
  {
    result = 4294954394;
  }

  if (a9)
  {
    *a9 = v27;
  }

  return result;
}

uint64_t VTTileDecoderSessionEmitDecodedTile(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v5 = a5;
  if (!a1[1])
  {
    v11 = *a1;
    if (*a1)
    {
      if (*(v11 + 168) == 1)
      {
        v14 = 0;
        v15 = 4294954393;
        goto LABEL_23;
      }

      FigReadWriteLockLockForWrite();
      v13 = (v11 + 136);
      v12 = *(v11 + 136);
      if (v12)
      {
        v14 = *(v11 + 136);
        while (*v14 != a2)
        {
          v14 = v14[6];
          if (!v14)
          {
            goto LABEL_12;
          }
        }

        if (v12 != v14)
        {
          do
          {
            v16 = v12;
            v12 = v12[6];
          }

          while (v12 != v14);
          v13 = v16 + 6;
        }

        *v13 = v12[6];
        FigReadWriteLockUnlockForWrite();
        if (v5 || (v5 = v14[4]) != 0)
        {
          ++*(v11 + 184);
        }

        (*(v11 + 48))(*(v11 + 56), v14[1], v14[2], v14[3], v5, v14[5], a3, a4);
        v17 = v14[4];
        if (v17)
        {
          CFRelease(v17);
          v15 = 0;
          v14[4] = 0;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_23;
      }

LABEL_12:
      FigReadWriteLockUnlockForWrite();
    }

LABEL_13:
    v14 = 0;
    v15 = 4294954394;
LABEL_23:
    free(v14);
    return v15;
  }

  v9 = a1[1];

  return VTParavirtualizationHostDecoderSessionEmitDecodedTile(v9, a2, a3, a4, a5);
}

const __CFArray *VTTileDecoderSessionCleanUpAfterDecode(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return VTParavirtualizationHostDecoderSessionCleanUpAfterTileDecode(result);
  }

  return result;
}

double vtTileDecompressionSessionInit(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
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

void vtTileDecompressionSessionFinalize(void *a1)
{
  VTTileDecompressionSessionInvalidate(a1);
  FigReadWriteLockDestroy();
  FigReadWriteLockDestroy();
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
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

  v5 = a1[18];
  if (v5)
  {
    CFRelease(v5);
    a1[18] = 0;
  }

  v6 = a1[13];
  if (v6)
  {
    CFRelease(v6);
    a1[13] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[19];
  if (v8)
  {
    CFRelease(v8);
    a1[19] = 0;
  }
}

__CFString *vtTileDecompressionSessionCopyDebugDesc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (v2 > 0xA)
  {
    if (v2 > 0x28)
    {
      v2 = bswap32(v2);
      v6 = v2 >> 8;
      v5 = BYTE2(v2);
      LOBYTE(v7) = v2;
    }

    else
    {
      v5 = 0;
      v8 = *(a1 + 16);
      v7 = v8 / 0xA + 48;
      v6 = (v8 % 0xA) | 0x30;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v6) = 0;
    v7 = *(a1 + 16) + 48;
  }

  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTTileDecompressionSession %p [%p]>{'%c%c%c%c',videoDecoder:%p, }", a1, v9, HIBYTE(v2), v5, v6, v7, *(a1 + 80));
  return Mutable;
}

void vtTileDecompressionSessionAddPropertyToPartition(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (*a3 && CFDictionaryContainsKey(*a3, key))
  {
    v8 = a3[2];
    v7 = a3 + 2;
    Mutable = v8;
    if (!v8)
    {
LABEL_4:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v7 = Mutable;
    }
  }

  else
  {
    v9 = a3[1];
    if (!v9 || !CFDictionaryContainsKey(v9, key))
    {
      return;
    }

    v10 = a3[3];
    v7 = a3 + 3;
    Mutable = v10;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  CFDictionarySetValue(Mutable, key, a2);
}

void OUTLINED_FUNCTION_1_22(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t AppleJPEGVideoDecoder_CreateInstance()
{
  v2 = 0;
  VTVideoDecoderGetClassID();
  v0 = CMDerivedObjectCreate();
  AppleJPEGVideoDecoder_CreateInstance_cold_1(v0, &v2);
  return v0;
}

void AppleJPEGVideoDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = 0;
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }
}

__CFString *AppleJPEGVideoDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleJPEGVideoDecoder %p>", a1);
  return Mutable;
}

uint64_t AppleJPEGVideoDecoder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ReducedFrameDelivery"))
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, (DerivedStorage + 8));
    *a4 = v7;
    if (!v7)
    {
      AppleJPEGVideoDecoder_CopyProperty_cold_1();
    }

    return 0;
  }

  if (CFEqual(a2, @"SuggestedQualityOfServiceTiers"))
  {
    MEMORY[0x193AE3010](&sCreateSuggestedQualityOfServiceTiersOnce_0, applejpegCreateSuggestedQualityOfServiceTiers);
    v8 = gJPEGVideoDecoderSuggestedQualityOfServiceTiers;
    if (!gJPEGVideoDecoderSuggestedQualityOfServiceTiers)
    {
      AppleJPEGVideoDecoder_CopyProperty_cold_2();
      return 0;
    }

LABEL_9:
    *a4 = CFRetain(v8);
    return 0;
  }

  if (CFEqual(a2, @"ContentHasInterframeDependencies"))
  {
    v8 = *MEMORY[0x1E695E4C0];
    goto LABEL_9;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t AppleJPEGVideoDecoder_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ReducedFrameDelivery"))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr = 1.0;
        CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
        if (valuePtr < 0.0 || valuePtr > 1.0)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }

        else
        {
          result = 0;
          *(DerivedStorage + 8) = valuePtr;
        }

        return result;
      }
    }

    fig_log_get_emitter();
  }

  else
  {
    CFEqual(a2, @"SuggestedQualityOfServiceTiers");
    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

uint64_t AppleJPEGVideoDecoder_StartSession(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  FigFormatDescriptionRelease();
  v4 = FigFormatDescriptionRetain();
  *(DerivedStorage + 40) = v4;
  Dimensions = CMVideoFormatDescriptionGetDimensions(v4);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != 24; i += 4)
      {
        FigCFArrayAppendInt32();
      }

      CFDictionarySetValue(v7, *MEMORY[0x1E6966130], v9);
      CFRelease(v9);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if ((-Dimensions.width & 0xF) != 0)
      {
        FigCFDictionarySetInt32();
      }

      if ((-Dimensions.height & 0xF) != 0)
      {
        FigCFDictionarySetInt32();
      }

      VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 24), v7);
      CFRelease(v7);
      return 0;
    }

    AppleJPEGVideoDecoder_StartSession_cold_1(v7, &v12);
    result = v12;
  }

  else
  {
    AppleJPEGVideoDecoder_StartSession_cold_2(&v13);
    result = v13;
  }

  if (!result)
  {
    VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 24), 0);
    return 0;
  }

  return result;
}

uint64_t AppleJPEGVideoDecoder_DecodeFrame(uint64_t a1, const void *a2, CMSampleBufferRef sbuf, uint64_t a4, _DWORD *a5)
{
  v58 = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  dataPointerOut = 0;
  blockBufferOut = 0;
  pixelBufferOut = 0;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v50 = 0u;
  v51 = 0u;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = xmmword_1F0390D40;
  v46 = qword_1F0390D50;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0 && (Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410])) != 0 && (v15 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v15)) && CFBooleanGetValue(v15) || (v17 = *(DerivedStorage + 8) + *(DerivedStorage + 16), *(DerivedStorage + 16) = v17, v17 < 1.0))
  {
    v18 = 0;
    *a5 |= 2u;
    goto LABEL_53;
  }

  v19 = v17 + -1.0;
  if (v19 >= 1.0)
  {
    v19 = 1.0;
  }

  *(DerivedStorage + 16) = v19;
  if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0))
  {
    v20 = CFRetain(DataBuffer);
    blockBufferOut = v20;
  }

  else
  {
    v21 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], DataBuffer, *MEMORY[0x1E695E480], 0, 0, DataLength, 0, &blockBufferOut);
    if (v21)
    {
      goto LABEL_57;
    }

    v20 = blockBufferOut;
  }

  CMBlockBufferGetDataPointer(v20, 0, 0, 0, &dataPointerOut);
  v48 = dataPointerOut;
  v49 = DataLength;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool(*(DerivedStorage + 24));
  v23 = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBufferOut);
  if (v23)
  {
    v18 = v23;
    AppleJPEGVideoDecoder_DecodeFrame_cold_1();
    goto LABEL_59;
  }

  VTDecoderSessionTrace(*(DerivedStorage + 24));
  v21 = CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  if (v21)
  {
LABEL_57:
    v18 = v21;
LABEL_59:
    v28 = 0;
    goto LABEL_46;
  }

  if (!applejpeg_decode_create())
  {
    v18 = 4294954392;
    goto LABEL_34;
  }

  if (applejpeg_decode_open_jpeg_dib())
  {
    v18 = 4294954392;
    goto LABEL_33;
  }

  if (!*(DerivedStorage + 40))
  {
LABEL_22:
    extraRowsOnBottom = 0;
    memset(v57, 0, sizeof(v57));
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
    IsPlanar = CVPixelBufferIsPlanar(pixelBufferOut);
    CVPixelBufferGetExtendedPixels(pixelBufferOut, 0, 0, 0, &extraRowsOnBottom);
    applejpeg_decode_options_init();
    if (PixelFormatType > 1278555700)
    {
      switch(PixelFormatType)
      {
        case 1278555701:
          v27 = 2;
          break;
        case 1380401729:
          v27 = 3;
          break;
        case 2037741158:
          v27 = 7;
          break;
        default:
LABEL_32:
          v18 = 4294954394;
LABEL_33:
          applejpeg_decode_destroy();
LABEL_34:
          v28 = 1;
LABEL_46:
          fig_log_get_emitter();
          FigSignalErrorAtGM();
          goto LABEL_47;
      }
    }

    else
    {
      v27 = 10;
      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
        if (PixelFormatType == 1111970369)
        {
          v27 = 4;
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

LABEL_36:
    DWORD2(v50) = v27;
    if (IsPlanar)
    {
      PlaneCount = CVPixelBufferGetPlaneCount(pixelBufferOut);
      if (PlaneCount >= 1)
      {
        v43 = a5;
        v30 = a2;
        v31 = 0;
        v32 = PlaneCount & 0x7FFFFFFF;
        v33 = v57 + 1;
        do
        {
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, v31);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, v31);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, v31);
          v37 = (extraRowsOnBottom + HeightOfPlane) * BytesPerRowOfPlane;
          *(v33 - 1) = BaseAddressOfPlane;
          *v33 = v37;
          *(v52 + ++v31) = BytesPerRowOfPlane;
          v33 += 2;
        }

        while (v32 != v31);
        a2 = v30;
        a5 = v43;
      }
    }

    else
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      Height = CVPixelBufferGetHeight(pixelBufferOut);
      *&v57[0] = CVPixelBufferGetBaseAddress(pixelBufferOut);
      *(&v57[0] + 1) = (extraRowsOnBottom + Height) * BytesPerRow;
      *(&v52[0] + 1) = BytesPerRow;
    }

    if (!applejpeg_decode_set_options() && !applejpeg_decode_image_all())
    {
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      VTDecoderSessionTrace(*(DerivedStorage + 24));
      v28 = 0;
      v18 = 0;
      goto LABEL_45;
    }

    goto LABEL_56;
  }

  if (!applejpeg_decode_get_image_info())
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 40));
    if (Dimensions.width)
    {
      v42 = 599;
    }

    else
    {
      if (!Dimensions.height)
      {
        goto LABEL_22;
      }

      v42 = 600;
    }

    AppleJPEGVideoDecoder_DecodeFrame_cold_2(v42, v57);
    v18 = LODWORD(v57[0]);
    goto LABEL_65;
  }

LABEL_56:
  v18 = 4294954394;
LABEL_65:
  v28 = 1;
LABEL_45:
  applejpeg_decode_destroy();
  if (v18)
  {
    goto LABEL_46;
  }

LABEL_47:
  v40 = pixelBufferOut;
  if (v28)
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v40 = pixelBufferOut;
  }

  if (v40 && (CVPixelBufferGetPixelFormatType(v40) == 1111970369 || CVPixelBufferGetPixelFormatType(pixelBufferOut) == 32))
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CB8], *MEMORY[0x1E695E4D0], kCVAttachmentMode_ShouldPropagate);
  }

LABEL_53:
  VTDecoderSessionEmitDecodedFrame(*(DerivedStorage + 24), a2, v18, *a5, pixelBufferOut);
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  CVPixelBufferRelease(pixelBufferOut);
  return v18;
}

uint64_t AppleJPEGVideoDecoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  MEMORY[0x193AE3010](&gCreateSupportedPropertyDictionaryOnce, applejpegCreateSupportedPropertyDictionary);
  if (a2 && gJPEGVideoDecoderSupportedPropertyDictionary)
  {
    *a2 = CFRetain(gJPEGVideoDecoderSupportedPropertyDictionary);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void applejpegCreateSupportedPropertyDictionary()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    applejpegCreateSupportedPropertyDictionary_cold_4();
    return;
  }

  v1 = Mutable;
  CFDictionarySetValue(Mutable, @"PropertyType", @"Number");
  CFDictionarySetValue(v1, @"ReadWriteStatus", @"ReadWrite");
  if (FigCFDictionarySetInt32() || FigCFDictionarySetInt32())
  {
    goto LABEL_16;
  }

  v2 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v2)
  {
    applejpegCreateSupportedPropertyDictionary_cold_3();
LABEL_16:
    v7 = v1;
    goto LABEL_10;
  }

  v3 = v2;
  v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = v4;
  if (v4)
  {
    CFDictionarySetValue(v4, @"PropertyType", @"Boolean");
    CFDictionarySetValue(v5, @"ReadWriteStatus", @"ReadOnly");
    v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    gJPEGVideoDecoderSupportedPropertyDictionary = v6;
    if (v6)
    {
      CFDictionarySetValue(v6, @"ReducedFrameDelivery", v1);
      CFDictionarySetValue(gJPEGVideoDecoderSupportedPropertyDictionary, @"SuggestedQualityOfServiceTiers", v3);
      CFDictionarySetValue(gJPEGVideoDecoderSupportedPropertyDictionary, @"ContentHasInterframeDependencies", v5);
    }

    else
    {
      applejpegCreateSupportedPropertyDictionary_cold_1();
    }
  }

  else
  {
    applejpegCreateSupportedPropertyDictionary_cold_2();
  }

  CFRelease(v1);
  CFRelease(v3);
  if (v5)
  {
    v7 = v5;
LABEL_10:

    CFRelease(v7);
  }
}

uint64_t copyBytesPerRowString(char *a1, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    snprintf(a1, 0x80uLL, "rowbytes( %ld", BytesPerRowOfPlane);
    v5 = strnlen(a1, 0x80uLL);
    v6 = &a1[v5];
    if (CVPixelBufferGetPlaneCount(pixelBuffer) >= 2)
    {
      v7 = 1;
      do
      {
        v8 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, v7);
        snprintf(v6, 128 - v5, ", %ld", v8);
        v5 = strnlen(a1, 0x80uLL);
        ++v7;
        v6 = &a1[v5];
      }

      while (CVPixelBufferGetPlaneCount(pixelBuffer) > v7);
    }

    return snprintf(v6, 128 - v5, ")");
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    return snprintf(a1, 0x80uLL, "rowbytes( %ld)", BytesPerRow);
  }
}

uint64_t VTPixelTransferChainNodeSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  if (!theDict)
  {
    return 0;
  }

  v4 = 0;
  CFDictionaryApplyFunction(theDict, VTPixelTransferChainNodeSessionSetOneProperty, &v3);
  return v4;
}

uint64_t VTPixelTransferChainNodeSessionSetOneProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = VTPixelTransferChainNodeSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTPixelTransferNodeGetTypeID()
{
  MEMORY[0x193AE3010](&VTPixelTransferNodeGetClassID_sRegisterVTPixelTransferNodeTypeOnce, RegisterVTPixelTransferNodeType);

  return CMBaseClassGetCFTypeID();
}

uint64_t VTPixelTransferNodeBaseDoFlush(uint64_t a1, CVPixelBufferPoolFlushFlags a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v3)
  {
    CVPixelBufferPoolFlush(v3, a2);
  }

  return 0;
}

void VTPixelTransferNodeBaseFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t RegisterVTPixelTransferNodeType()
{
  CMBaseGetClassID();
  FigBaseClassRegisterClass();
  sVTSessionPropertyCallbacks = 0;
  *algn_1ED6D4428 = VTPixelTransferChainNodeSessionCopySupportedPropertyDictionary;
  qword_1ED6D4430 = VTPixelTransferChainNodeSessionSetProperty;
  qword_1ED6D4438 = VTPixelTransferChainNodeSessionCopyProperty;
  qword_1ED6D4440 = VTPixelTransferChainNodeSessionSetProperties;
  qword_1ED6D4448 = VTPixelTransferChainNodeSessionCopySerializableProperties;
  CFTypeID = CMBaseClassGetCFTypeID();

  return VTSessionRegisterCallbacksForTypeID(&sVTSessionPropertyCallbacks, CFTypeID);
}

uint64_t VTPixelTransferChainRemoveAllNodes(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      CFArrayRemoveAllValues(v1);
    }
  }

  return 0;
}

const __CFArray *VTPixelTransferChainHasNodes(const __CFArray *result)
{
  if (result)
  {
    result = *(result + 2);
    if (result)
    {
      return (CFArrayGetCount(result) != 0);
    }
  }

  return result;
}

uint64_t RegisterVTPixelTransferChain()
{
  result = _CFRuntimeRegisterClass();
  sVTPixelTransferChainID = result;
  return result;
}

__CFArray *VTPixelTransferChainCopyDescriptionChain(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 16)) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  Mutable = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  do
  {
    if (v3)
    {
      CFRelease(v3);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v2);
    if (ValueAtIndex)
    {
      v3 = CFCopyDescription(ValueAtIndex);
      if (v3)
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v5, 0, v6);
          if (!Mutable)
          {
            goto LABEL_13;
          }
        }

        CFArrayAppendValue(Mutable, v3);
      }
    }

    else
    {
      v3 = 0;
    }

    ++v2;
  }

  while (CFArrayGetCount(*(a1 + 16)) > v2);
  if (!v3)
  {
    return Mutable;
  }

LABEL_13:
  CFRelease(v3);
  return Mutable;
}

uint64_t VTPixelTransferChainNodeSessionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t VTPixelTransferChainNodeSessionCopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t VTPixelTransferChainNodeSessionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t vtPixelTransferChainInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void vtPixelTransferChainFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

const char *OUTLINED_FUNCTION_0_23(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

uint64_t VTTestMotionEstimationProcessor_CompleteFrames(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == VTMotionEstimationProcessorGetTypeID()))
  {
    return 0;
  }

  else
  {
    return 4294954394;
  }
}

void vtTestMotionEstimationProcessor_createSupportedPropertyDictionary()
{
  v16 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v0 = *MEMORY[0x1E695E4D0];
  values[0] = *MEMORY[0x1E695E4C0];
  values[1] = v0;
  v1 = *MEMORY[0x1E695E480];
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  keys = @"PropertyType";
  v14 = @"ReadWriteStatus";
  v10 = @"Boolean";
  v11 = @"ReadWrite";
  v15 = @"SupportedValueList";
  v12 = v2;
  v3 = CFDictionaryCreate(v1, &keys, &v10, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFRelease(v2);
  }

  keys = @"PropertyType";
  v14 = @"ReadWriteStatus";
  v10 = @"Enumeration";
  v11 = @"ReadWrite";
  v15 = @"SupportedValueList";
  v12 = 0;
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  v6 = CFDictionaryCreate(v1, &keys, &v10, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sVTTestMotionEstimationProcessorSupportedPropertyDictionary = CFDictionaryCreate(v1, v8, v7, 0, v4, v5);
  if (!sVTTestMotionEstimationProcessorSupportedPropertyDictionary)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t DolbyVisionDecoder_CreateInstance()
{
  VTVideoDecoderGetClassID();
  v0 = CMDerivedObjectCreate();
  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return v0;
}

uint64_t DolbyVisionDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 72))
    {
      v2 = 2;
      do
      {
        v3 = *(v1 + 72);
        v4 = dispatch_time(0, 1000000000 * v2);
        v2 *= 2;
      }

      while (dispatch_group_wait(v3, v4));
    }
  }

  return 0;
}

void DolbyVisionDecoder_Finalize()
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

  v5 = DerivedStorage[8];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[8] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[9] = 0;
  }
}

__CFString *DolbyVisionDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<DolbyVisionDecoder %p>", a1);
  return Mutable;
}

uint64_t DolbyVisionDecoder_DecodeFrame(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, VTDecodeFrameFlags a4, VTDecodeInfoFlags *a5)
{
  v9 = a1;
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v80 = 0;
  cf = 0;
  dispatch_group_enter(*(DerivedStorage + 72));
  ++*(DerivedStorage + 80);
  if (!CMSampleBufferDataIsReady(a3))
  {
    DolbyVisionDecoder_DecodeFrame_cold_22(&blockBufferOut);
    v35 = 0;
    v33 = 0;
    goto LABEL_138;
  }

  if (!*(DerivedStorage + 104))
  {
    goto LABEL_38;
  }

  v11 = *(DerivedStorage + 108);
  if (v11 == 2)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    blockBufferOut = 0;
    dataPointerOut = 0;
    theBuffer = 0;
    destination = 0;
    if (DataBuffer)
    {
      v37 = DataBuffer;
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v37, *MEMORY[0x1E695E480], 0, 0, DataLength, 0, &theBuffer);
      DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &destination, &dataPointerOut);
      if (DataPointer)
      {
        v32 = DataPointer;
        DolbyVisionDecoder_DecodeFrame_cold_1();
      }

      else
      {
        v32 = FigAV1Bridge_CopyITU_T_T35MetadataDolbyVisionRPURawByteSequence();
      }
    }

    else
    {
      DolbyVisionDecoder_DecodeFrame_cold_2(&v87);
      v32 = v87;
    }

    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    if (v32)
    {
      v35 = 0;
      v33 = 0;
      goto LABEL_110;
    }

    v40 = CMSampleBufferGetDataBuffer(a3);
    DerivedSampleBuffer = dovi_createDerivedSampleBuffer(a3, v40, *(DerivedStorage + 32), &cf);
    v35 = 0;
    if (DerivedSampleBuffer)
    {
      v32 = DerivedSampleBuffer;
      v33 = 0;
      goto LABEL_110;
    }

    v33 = 0;
    goto LABEL_47;
  }

  if (v11 != 1)
  {
LABEL_38:
    v33 = 0;
    goto LABEL_47;
  }

  v78 = a3;
  v12 = CMSampleBufferGetDataBuffer(a3);
  v13 = v12;
  blockBufferOut = 0;
  theBuffer = 0;
  if (!v12)
  {
    DolbyVisionDecoder_DecodeFrame_cold_11(&dataPointerOut);
    v32 = dataPointerOut;
    goto LABEL_143;
  }

  v72 = a4;
  v74 = a5;
  v76 = v9;
  v71 = a2;
  v14 = CMBlockBufferGetDataLength(v12);
  v15 = *MEMORY[0x1E695E480];
  appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (appended || (allocator = v15, appended = CMBlockBufferCreateEmpty(v15, 0, 0, &theBuffer), appended))
  {
LABEL_120:
    v32 = appended;
    goto LABEL_141;
  }

  if (v14)
  {
    v17 = 0;
    v18 = *MEMORY[0x1E695E488];
    do
    {
      if (v17 + 5 > v14)
      {
        DolbyVisionDecoder_DecodeFrame_cold_9(&dataPointerOut);
        v13 = 0;
        goto LABEL_129;
      }

      LODWORD(destination) = 0;
      LOBYTE(v87) = 0;
      v82 = 0;
      appended = CMBlockBufferCopyDataBytes(v13, v17, 4uLL, &destination);
      if (appended)
      {
        goto LABEL_120;
      }

      if (!destination)
      {
        DolbyVisionDecoder_DecodeFrame_cold_7(&dataPointerOut);
        goto LABEL_140;
      }

      v19 = bswap32(destination);
      v20 = v17 + 4 + v19;
      if (v20 > v14)
      {
        DolbyVisionDecoder_DecodeFrame_cold_6(&dataPointerOut);
        goto LABEL_140;
      }

      appended = CMBlockBufferCopyDataBytes(v13, v17 + 4, 1uLL, &v87);
      if (appended)
      {
        goto LABEL_120;
      }

      if (v87 == 124)
      {
        v22 = v19 + 4;
        if (v22 <= 6)
        {
          DolbyVisionDecoder_DecodeFrame_cold_5(&dataPointerOut);
          goto LABEL_140;
        }

        appended = CMBlockBufferCopyDataBytes(v13, v17 + 5, 1uLL, &v82);
        if (appended)
        {
          goto LABEL_120;
        }

        if (v82 != 1)
        {
          DolbyVisionDecoder_DecodeFrame_cold_3(&dataPointerOut);
          goto LABEL_140;
        }

        if (v20 < v14)
        {
          v26 = malloc_type_malloc(v19 + 4, 0xE2D851AEuLL);
          if (!v26)
          {
            DolbyVisionDecoder_DecodeFrame_cold_4(&dataPointerOut);
LABEL_140:
            v32 = dataPointerOut;
LABEL_141:
            v13 = 0;
LABEL_142:
            a2 = v71;
            a5 = v74;
            v9 = v76;
            a4 = v72;
            goto LABEL_143;
          }

          v27 = v26;
          *v26 = HIBYTE(v19);
          v26[1] = BYTE2(v19);
          v26[2] = BYTE1(v19);
          v26[3] = v19;
          *(v26 + 2) = 332;
          memset(v26 + 6, 255, v22 - 7);
          v27[v22 - 1] = 0x80;
          appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, v27, v19 + 4, v18, 0, 0, v19 + 4, 0);
          if (appended)
          {
            goto LABEL_120;
          }
        }

        v25 = v19 - 2;
        v21 = theBuffer;
        v24 = v17 + 6;
        v23 = v13;
      }

      else
      {
        if (v87 == 126)
        {
          DolbyVisionDecoder_DecodeFrame_cold_8(&dataPointerOut);
          goto LABEL_140;
        }

        v21 = blockBufferOut;
        v22 = v19 + 4;
        v23 = v13;
        v24 = v17;
        v25 = v22;
      }

      appended = CMBlockBufferAppendBufferReference(v21, v23, v24, v25, 0);
      if (appended)
      {
        goto LABEL_120;
      }

      v17 += v22;
    }

    while (v17 < v14);
  }

  v28 = CMBlockBufferGetDataLength(theBuffer);
  Mutable = CFDataCreateMutable(allocator, v28);
  v13 = Mutable;
  if (!Mutable)
  {
    DolbyVisionDecoder_DecodeFrame_cold_10(&dataPointerOut);
LABEL_129:
    v32 = dataPointerOut;
    goto LABEL_142;
  }

  CFDataSetLength(Mutable, v28);
  v30 = theBuffer;
  MutableBytePtr = CFDataGetMutableBytePtr(v13);
  v32 = CMBlockBufferCopyDataBytes(v30, 0, v28, MutableBytePtr);
  a2 = v71;
  a5 = v74;
  v9 = v76;
  a4 = v72;
  if (v32)
  {
LABEL_143:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    v33 = 0;
  }

  else
  {
    v33 = blockBufferOut;
    blockBufferOut = 0;
    v80 = v13;
    v13 = 0;
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v32)
  {
    goto LABEL_37;
  }

  a3 = v78;
  v34 = dovi_createDerivedSampleBuffer(v78, v33, *(DerivedStorage + 32), &cf);
  if (!v34)
  {
LABEL_47:
    if (!*(DerivedStorage + 105))
    {
      v35 = 0;
LABEL_107:
      v63 = cf;
      if (cf)
      {
        goto LABEL_108;
      }

      DolbyVisionDecoder_DecodeFrame_cold_21(&blockBufferOut);
LABEL_138:
      v32 = blockBufferOut;
      goto LABEL_110;
    }

    v42 = *(DerivedStorage + 108);
    if (v42 != 2)
    {
      if (v42 != 1)
      {
        v35 = 0;
LABEL_105:
        v63 = cf;
        if (cf)
        {
LABEL_108:
          v66 = malloc_type_malloc(0x20uLL, 0x60040FFD3A10EuLL);
          if (v66)
          {
            *v66 = v9;
            v66[1] = a2;
            v67 = v80;
            v80 = 0;
            v66[2] = v67;
            v66[3] = v35;
            v32 = VTDecompressionSessionDecodeFrame(*(DerivedStorage + 40), v63, a4, v66, a5);
            v35 = 0;
            if (!v32)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          }

          DolbyVisionDecoder_DecodeFrame_cold_20(&blockBufferOut);
          goto LABEL_138;
        }

        v64 = CMSampleBufferGetDataBuffer(a3);
        v65 = dovi_createDerivedSampleBuffer(a3, v64, *(DerivedStorage + 32), &cf);
        if (v65)
        {
          v32 = v65;
          goto LABEL_110;
        }

        goto LABEL_107;
      }

      *v79 = a3;
      v43 = CMSampleBufferGetDataBuffer(a3);
      v35 = v43;
      blockBufferOut = 0;
      theBuffer = 0;
      if (!v43)
      {
        DolbyVisionDecoder_DecodeFrame_cold_19(&dataPointerOut);
        v54 = 0;
        v32 = dataPointerOut;
        goto LABEL_99;
      }

      v73 = a4;
      v75 = a5;
      v77 = v9;
      v44 = a2;
      v45 = CMBlockBufferGetDataLength(v43);
      v46 = *MEMORY[0x1E695E480];
      v47 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
      if (v47)
      {
LABEL_146:
        v32 = v47;
        v35 = 0;
      }

      else
      {
        if (v45)
        {
          v48 = 0;
          while (1)
          {
            if (v48 + 5 > v45)
            {
              DolbyVisionDecoder_DecodeFrame_cold_17(&dataPointerOut);
              v35 = 0;
              v54 = 0;
              goto LABEL_122;
            }

            LODWORD(destination) = 0;
            v49 = CMBlockBufferCopyDataBytes(v35, v48, 4uLL, &destination);
            if (v49)
            {
              v32 = v49;
              goto LABEL_127;
            }

            if (!destination)
            {
              v69 = 1317;
              goto LABEL_126;
            }

            v50 = bswap32(destination);
            if (v48 + 4 + v50 > v45)
            {
              break;
            }

            LOBYTE(dataPointerOut) = 0;
            if (!CMBlockBufferCopyDataBytes(v35, v48 + 4, 1uLL, &dataPointerOut) && dataPointerOut == 78)
            {
              LOBYTE(dataPointerOut) = 0;
              if (!CMBlockBufferCopyDataBytes(v35, v48 + 5, 1uLL, &dataPointerOut) && dataPointerOut == 1)
              {
                LOBYTE(dataPointerOut) = 0;
                if (!CMBlockBufferCopyDataBytes(v35, v48 + 6, 1uLL, &dataPointerOut) && dataPointerOut == 4)
                {
                  LOBYTE(dataPointerOut) = 0;
                  if (!CMBlockBufferCopyDataBytes(v35, v48 + 8, 1uLL, &dataPointerOut) && dataPointerOut == 181)
                  {
                    LOBYTE(dataPointerOut) = 0;
                    if (!CMBlockBufferCopyDataBytes(v35, v48 + 9, 1uLL, &dataPointerOut) && !dataPointerOut)
                    {
                      LOBYTE(dataPointerOut) = 0;
                      if (!CMBlockBufferCopyDataBytes(v35, v48 + 10, 1uLL, &dataPointerOut) && dataPointerOut == 60)
                      {
                        LOBYTE(dataPointerOut) = 0;
                        if (!CMBlockBufferCopyDataBytes(v35, v48 + 11, 1uLL, &dataPointerOut) && !dataPointerOut)
                        {
                          LOBYTE(dataPointerOut) = 0;
                          if (!CMBlockBufferCopyDataBytes(v35, v48 + 12, 1uLL, &dataPointerOut) && dataPointerOut == 1)
                          {
                            LOBYTE(dataPointerOut) = 0;
                            if (!CMBlockBufferCopyDataBytes(v35, v48 + 13, 1uLL, &dataPointerOut) && dataPointerOut == 4)
                            {
                              v47 = CMBlockBufferAppendBufferReference(blockBufferOut, v35, v48 + 6, v50 - 2, 0);
                              if (v47)
                              {
                                goto LABEL_146;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v48 += v50 + 4;
            if (v48 >= v45)
            {
              goto LABEL_78;
            }
          }

          v69 = 1318;
LABEL_126:
          DolbyVisionDecoder_DecodeFrame_cold_16(v69, &dataPointerOut);
          v32 = dataPointerOut;
LABEL_127:
          a2 = v44;
          a5 = v75;
          v9 = v77;
          a4 = v73;
          v35 = 0;
          goto LABEL_98;
        }

LABEL_78:
        v51 = CMBlockBufferGetDataLength(blockBufferOut);
        if (v51)
        {
          v52 = v51;
          v53 = CFDataCreateMutable(v46, v51);
          v54 = v53;
          if (v53)
          {
            CFDataSetLength(v53, v52);
            v55 = blockBufferOut;
            v56 = CFDataGetMutableBytePtr(v54);
            v57 = CMBlockBufferCopyDataBytes(v55, 0, v52, v56);
            if (!v57)
            {
              a2 = v44;
              a5 = v75;
              v9 = v77;
              a4 = v73;
              if (FigH264Bridge_CopyDataWithEmulationPreventionBytesRemoved())
              {
                fig_log_get_emitter();
                v32 = FigSignalErrorAtGM();
                if (theBuffer)
                {
                  CFRelease(theBuffer);
                }

                v35 = 0;
                goto LABEL_99;
              }

              v35 = theBuffer;
              if (!theBuffer)
              {
                v32 = 0;
                v35 = v54;
LABEL_98:
                v54 = 0;
                goto LABEL_99;
              }

              v32 = 0;
              theBuffer = 0;
LABEL_99:
              if (blockBufferOut)
              {
                CFRelease(blockBufferOut);
              }

              if (v54)
              {
                CFRelease(v54);
              }

              a3 = *v79;
              goto LABEL_104;
            }

            v32 = v57;
            v35 = 0;
          }

          else
          {
            DolbyVisionDecoder_DecodeFrame_cold_18(&dataPointerOut);
            v35 = 0;
LABEL_122:
            v32 = dataPointerOut;
          }

LABEL_96:
          a2 = v44;
          a5 = v75;
          v9 = v77;
          a4 = v73;
          goto LABEL_99;
        }

        v35 = 0;
        v32 = 0;
      }

      v54 = 0;
      goto LABEL_96;
    }

    v58 = CMSampleBufferGetDataBuffer(a3);
    blockBufferOut = 0;
    dataPointerOut = 0;
    theBuffer = 0;
    destination = 0;
    if (v58)
    {
      v59 = v58;
      v60 = CMBlockBufferGetDataLength(v58);
      v61 = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], v59, *MEMORY[0x1E695E480], 0, 0, v60, 0, &theBuffer);
      if (v61)
      {
        v32 = v61;
        DolbyVisionDecoder_DecodeFrame_cold_12();
LABEL_161:
        v35 = 0;
LABEL_91:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

LABEL_104:
        if (v32)
        {
          goto LABEL_110;
        }

        goto LABEL_105;
      }

      if (theBuffer)
      {
        v62 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, &destination, &dataPointerOut);
        if (v62)
        {
          v32 = v62;
          DolbyVisionDecoder_DecodeFrame_cold_13();
        }

        else
        {
          v32 = FigAV1Bridge_CopyITU_T_T35MetadataHDR10PlusMetadata();
          if (!v32)
          {
            v35 = blockBufferOut;
            blockBufferOut = 0;
            goto LABEL_91;
          }

          fig_log_get_emitter();
          FigSignalErrorAtGM();
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }
        }

        goto LABEL_161;
      }

      DolbyVisionDecoder_DecodeFrame_cold_14(&v87);
    }

    else
    {
      DolbyVisionDecoder_DecodeFrame_cold_15(&v87);
    }

    v35 = 0;
    v32 = v87;
    goto LABEL_91;
  }

  v32 = v34;
LABEL_37:
  v35 = 0;
LABEL_110:
  dovi_emitDecodedFrame(v9, a2, v32, 0, 0);
LABEL_111:
  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v32;
}

const __CFDictionary *dovi_shouldAllowInterchangeCompressedPixelFormatForHDRPlaybackToCA()
{
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x1E69662D8]);
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFArrayGetTypeID())
      {
        CFArrayGetValueAtIndex(v1, 0);
        FigCFDictionaryGetInt32IfPresent();
      }

      return 0;
    }
  }

  return result;
}

void dovi_singleImageDecompressionOutput(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __CVBuffer *a5)
{
  if (a3)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if (a5)
    {
      dovi_attachMetadataToPixelBuffer(*a2, *(a2 + 16), *(a2 + 24), a5);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = a4 | 0x1000000u;
    a3 = 0;
    v9 = a5;
  }

  dovi_emitDecodedFrame(v6, v7, a3, v8, v9);
  v12 = *(a2 + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a2 + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  free(a2);
}

void dovi_multiImageDecompressionOutput(int a1, uint64_t a2, uint64_t a3, int a4, CMTaggedBufferGroupRef group)
{
  if (a3 || !group)
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    Count = CMTaggedBufferGroupGetCount(group);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        if (CVPixelBufferAtIndex)
        {
          dovi_attachMetadataToPixelBuffer(*a2, *(a2 + 16), *(a2 + 24), CVPixelBufferAtIndex);
        }
      }
    }

    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = a4 | 0x1000000u;
    a3 = 0;
    v15 = group;
  }

  dovi_emitDecodedMultiImageFrame(v12, v13, a3, v14, v15);
  v16 = *(a2 + 16);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a2 + 24);
  if (v17)
  {
    CFRelease(v17);
  }

  free(a2);
}

void dovi_emitDecodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTDecoderSessionEmitDecodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 80);
  v10 = *(DerivedStorage + 72);

  dispatch_group_leave(v10);
}

void dovi_attachMetadataToPixelBuffer(uint64_t a1, const void *a2, const void *a3, __CVBuffer *a4)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 100);
  v9 = v8 > 0xA;
  v10 = (1 << v8) & 0x446;
  if (!v9 && v10 != 0)
  {
    CVBufferSetAttachment(a4, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F70], kCVAttachmentMode_ShouldPropagate);
  }

  if (!*(DerivedStorage + 57) && *(DerivedStorage + 56))
  {
    if (a2)
    {
      if (*(DerivedStorage + 104))
      {
        CVBufferSetAttachment(a4, *MEMORY[0x1E6965E48], a2, kCVAttachmentMode_ShouldPropagate);
        if (*(DerivedStorage + 100) == 2)
        {
          CVBufferSetAttachment(a4, *MEMORY[0x1E6965E40], @"1", kCVAttachmentMode_ShouldPropagate);
        }
      }
    }

    if (a3 && *(DerivedStorage + 105))
    {
      v12 = *MEMORY[0x1E6965E88];

      CVBufferSetAttachment(a4, v12, a3, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

void dovi_emitDecodedMultiImageFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, OpaqueCMTaggedBufferGroup *a5)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTDecoderSessionEmitDecodedMultiImageFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 80);
  v10 = *(DerivedStorage + 72);

  dispatch_group_leave(v10);
}

uint64_t dovi_createDerivedSampleBuffer(opaqueCMSampleBuffer *a1, CMBlockBufferRef theBuffer, const opaqueCMFormatDescription *a3, CMSampleBufferRef *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  sbuf = 0;
  memset(&timingInfoOut, 0, sizeof(timingInfoOut));
  sampleSizeArray = CMBlockBufferGetDataLength(theBuffer);
  CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
  v8 = *MEMORY[0x1E695E480];
  v9 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], theBuffer, a3, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &sbuf);
  if (v9)
  {
    value_low = v9;
  }

  else
  {
    CMPropagateAttachments(a1, sbuf);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
    if (!SampleAttachmentsArray)
    {
      goto LABEL_20;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v12 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    v13 = CFArrayGetValueAtIndex(v12, 0);
    CFDictionaryApplyFunction(ValueAtIndex, dovi_dictionarySetValue, v13);
    SampleSize = CMSampleBufferGetSampleSize(a1, 0);
    v15 = CMSampleBufferGetSampleSize(sbuf, 0);
    v16 = SampleSize - v15;
    if (SampleSize == v15)
    {
      goto LABEL_20;
    }

    if (SampleSize < v15)
    {
      dovi_createDerivedSampleBuffer_cold_5(&outputPresentationTimeStamp);
    }

    else
    {
      v17 = *MEMORY[0x1E69603F8];
      Value = CFDictionaryGetValue(v13, *MEMORY[0x1E69603F8]);
      if (!Value)
      {
        goto LABEL_20;
      }

      v19 = Value;
      Length = CFDataGetLength(Value);
      if ((Length & 7) != 0)
      {
        dovi_createDerivedSampleBuffer_cold_1(&outputPresentationTimeStamp);
      }

      else
      {
        v21 = Length;
        if (Length)
        {
          MutableCopy = CFDataCreateMutableCopy(v8, 0, v19);
          if (MutableCopy)
          {
            v23 = MutableCopy;
            v24 = &CFDataGetMutableBytePtr(MutableCopy)[v21];
            v25 = *(v24 - 2);
            if (v16 > v25)
            {
              dovi_createDerivedSampleBuffer_cold_2(&outputPresentationTimeStamp);
              value_low = LODWORD(outputPresentationTimeStamp.value);
            }

            else
            {
              *(v24 - 2) = v25 - v16;
              CFDictionarySetValue(v13, v17, v23);
              value_low = 0;
            }

            CFRelease(v23);
            if (value_low)
            {
              goto LABEL_12;
            }

LABEL_20:
            FigSampleBufferGetDecryptor();
            FigSampleBufferSetDecryptor();
            v27 = sbuf;
            CMSampleBufferGetOutputPresentationTimeStamp(&outputPresentationTimeStamp, a1);
            CMSampleBufferSetOutputPresentationTimeStamp(v27, &outputPresentationTimeStamp);
            value_low = 0;
            *a4 = sbuf;
            return value_low;
          }

          dovi_createDerivedSampleBuffer_cold_3(&outputPresentationTimeStamp);
        }

        else
        {
          dovi_createDerivedSampleBuffer_cold_4(&outputPresentationTimeStamp);
        }
      }
    }

    value_low = LODWORD(outputPresentationTimeStamp.value);
    if (!LODWORD(outputPresentationTimeStamp.value))
    {
      goto LABEL_20;
    }
  }

LABEL_12:
  if (sbuf)
  {
    CFRelease(sbuf);
  }

  return value_low;
}

void VTTileCompressionSessionInvalidate(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 176);
    if (!*(a1 + 176))
    {
      if (*(a1 + 168))
      {
        VTCompressionSessionRemote_Invalidate(*(a1 + 168));
        *v1 = 1;
      }

      else
      {
        VTTileCompressionSessionInvalidate_cold_1(a1, (a1 + 176));
      }
    }
  }
}

uint64_t RegisterVTTileCompressionSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTTileCompressionSessionID = v0;
  sVTTileCompressionSessionPropertyCallbacks = 0;
  unk_1ED6D4460 = VTTileCompressionSessionCopySupportedPropertyDictionary;
  qword_1ED6D4468 = VTTileCompressionSessionSetProperty;
  qword_1ED6D4470 = VTTileCompressionSessionCopyProperty;
  qword_1ED6D4478 = VTTileCompressionSessionSetProperties;
  qword_1ED6D4480 = VTTileCompressionSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTTileCompressionSessionPropertyCallbacks, v0);
}

uint64_t VTTileCompressionSessionCopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v14 = 0;
  v15[0] = 0;
  if (!a2)
  {
    VTTileCompressionSessionCopySupportedPropertyDictionary_cold_3(&v13);
LABEL_26:
    v11 = v13;
    goto LABEL_20;
  }

  *a2 = 0;
  if (!a1)
  {
    VTTileCompressionSessionCopySupportedPropertyDictionary_cold_2(&v13);
    goto LABEL_26;
  }

  if (*(a1 + 176) == 1)
  {
    VTTileCompressionSessionCopySupportedPropertyDictionary_cold_1(&v13);
    goto LABEL_26;
  }

  v3 = *(a1 + 168);
  if (v3)
  {

    return VTCompressionSessionRemote_CopySupportedPropertyDictionary(v3);
  }

  v5 = *(a1 + 80);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6 || ((v7 = v6(v5, &cf), v7 != -12782) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    if (cf)
    {
      v9 = v15;
      v14 = cf;
    }

    else
    {
      v9 = &v14;
    }

    v10 = *(a1 + 160);
    if (v10)
    {
      *v9 = v10;
    }

    v11 = FigCFCreateCombinedDictionary();
  }

  else
  {
    v11 = v7;
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t VTTileCompressionSessionSetProperty(uint64_t a1, void *key, const __CFNumber *a3)
{
  if (!a1)
  {
    VTTileCompressionSessionSetProperty_cold_2(&v13);
    return v13;
  }

  if (*(a1 + 176) == 1)
  {
    VTTileCompressionSessionSetProperty_cold_1(&v12);
    return v12;
  }

  v6 = *(a1 + 168);
  if (v6)
  {

    return VTCompressionSessionRemote_SetProperty(v6, key, a3);
  }

  v8 = *(a1 + 160);
  if (v8 && CFDictionaryContainsKey(v8, key))
  {
    if (CFEqual(@"VideoEncoderPixelBufferAttributes", key) || CFEqual(@"CanvasPixelBufferAttributes", key) || CFEqual(@"TileEncoderRequirements", key))
    {
      fig_log_get_emitter();
      v9 = FigSignalErrorAtGM();
    }

    else
    {
      if (CFEqual(@"ClientPID", key))
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 180));
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 4294954396;
  }

  if (!vtTileCompressionSessionIsPropertyHandledByVideoEncoder(a1, key))
  {
    return v9;
  }

  CMBaseObject = VTVideoEncoderGetCMBaseObject(*(a1 + 80));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    return 4294954514;
  }

  return v11(CMBaseObject, key, a3);
}

BOOL vtTileCompressionSessionIsPropertyHandledByVideoEncoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  v3 = *(a1 + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v4(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v5 = CFDictionaryContainsKey(theDict, a2) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v5;
}

uint64_t VTTileCompressionSessionCopyProperty(uint64_t a1, void *key, uint64_t a3, void *a4)
{
  if (!a4)
  {
    VTTileCompressionSessionCopyProperty_cold_3(&v18);
    return v18;
  }

  *a4 = 0;
  if (!a1)
  {
    VTTileCompressionSessionCopyProperty_cold_2(&v18);
    return v18;
  }

  if (*(a1 + 176) == 1)
  {
    VTTileCompressionSessionCopyProperty_cold_1(&v18);
    return v18;
  }

  v8 = *(a1 + 168);
  if (v8)
  {

    return VTCompressionSessionRemote_CopyProperty(v8);
  }

  else
  {
    v10 = *(a1 + 160);
    if (v10 && CFDictionaryContainsKey(v10, key))
    {
      if (CFEqual(@"VideoEncoderPixelBufferAttributes", key))
      {
        v11 = *(a1 + 152);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 0x40000000;
        v17[2] = __VTTileCompressionSessionCopyProperty_block_invoke;
        v17[3] = &__block_descriptor_tmp_26;
        v17[4] = a4;
        v17[5] = a1;
        v12 = v17;
      }

      else if (CFEqual(@"CanvasPixelBufferAttributes", key))
      {
        v11 = *(a1 + 152);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __VTTileCompressionSessionCopyProperty_block_invoke_2;
        v16[3] = &__block_descriptor_tmp_5_0;
        v16[4] = a4;
        v16[5] = a1;
        v12 = v16;
      }

      else
      {
        result = CFEqual(@"TileEncoderRequirements", key);
        if (!result)
        {
          return result;
        }

        v11 = *(a1 + 152);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __VTTileCompressionSessionCopyProperty_block_invoke_3;
        block[3] = &__block_descriptor_tmp_6_3;
        block[4] = a4;
        block[5] = a1;
        v12 = block;
      }

      dispatch_sync(v11, v12);
      return 0;
    }

    else if (vtTileCompressionSessionIsPropertyHandledByVideoEncoder(a1, key))
    {
      CMBaseObject = VTVideoEncoderGetCMBaseObject(*(a1 + 80));
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {

        return v14(CMBaseObject, key, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294954396;
    }
  }
}

CFTypeRef __VTTileCompressionSessionCopyProperty_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 96);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __VTTileCompressionSessionCopyProperty_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 112);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __VTTileCompressionSessionCopyProperty_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 40) + 120);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

uint64_t VTTileCompressionSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v15 = a1;
  v16 = 0;
  if (!a1)
  {
    VTTileCompressionSessionSetProperties_cold_2(&v16);
    return v16;
  }

  if (*(a1 + 176) == 1)
  {
    VTTileCompressionSessionSetProperties_cold_1(&v16);
    return v16;
  }

  v4 = *(a1 + 168);
  if (!v4)
  {
    if (theDict)
    {
      v19 = 0;
      v20 = 0;
      context = *(a1 + 160);
      cf = 0;
      v6 = *(a1 + 80);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v7 || ((v8 = v7(v6, &cf), v8 != -12782) ? (v9 = v8 == 0) : (v9 = 1), v9))
      {
        CFDictionaryApplyFunction(theDict, vtTileCompressionSessionAddPropertyToPartition, &context);
        v12 = 0;
        v13 = v19;
        v14 = v20;
      }

      else
      {
        v12 = v8;
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        v13 = 0;
        v14 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      LODWORD(v16) = v12;
      if (v12)
      {
        if (!v14)
        {
LABEL_25:
          if (v13)
          {
            CFRelease(v13);
          }

          return v16;
        }
      }

      else
      {
        if (v13)
        {
          CFDictionaryApplyFunction(v13, vtTileCompressionSessionSetOneProperty_0, &v15);
        }

        if (!v14)
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 80);
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v11 || (LODWORD(v16) = v11(v10, v14), v16 == -12782))
        {
          LODWORD(v16) = 0;
          CFDictionaryApplyFunction(v14, vtTileCompressionSessionSetOneProperty_0, &v15);
        }
      }

      CFRelease(v14);
      goto LABEL_25;
    }

    return v16;
  }

  return VTCompressionSessionRemote_SetProperties(v4, theDict);
}

uint64_t vtTileCompressionSessionSetOneProperty_0(void *key, const __CFNumber *a2, uint64_t a3)
{
  result = VTTileCompressionSessionSetProperty(*a3, key, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTTileCompressionSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    if (a1)
    {
      if (*(a1 + 176) == 1)
      {
        VTTileCompressionSessionCopySerializableProperties_cold_1(&v9);
        return v9;
      }

      else if (*(a1 + 168))
      {
        v5 = *(a1 + 168);

        return VTCompressionSessionRemote_CopySerializableProperties(v5);
      }

      else
      {
        v7 = *(a1 + 80);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v8)
        {
          return 0;
        }

        result = v8(v7, a2, a3);
        if (result == -12782)
        {
          return 0;
        }
      }
    }

    else
    {
      VTTileCompressionSessionCopySerializableProperties_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    VTTileCompressionSessionCopySerializableProperties_cold_3(&v11);
    return v11;
  }

  return result;
}

void __VTTileEncoderSessionSetTileAttributes_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *(a1[4] + 104) = a1[6];
}

uint64_t VTEncoderSessionEmitEncodedTile(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v14 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!a1[1])
  {
    v10 = *a1;
    if (*a1)
    {
      if (*(v10 + 176) == 1)
      {
        a1 = 0;
        v13 = 4294954393;
        goto LABEL_10;
      }

      v11 = *(v10 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __vtTileCompressionSessionTrackTileLeavingEncoder_block_invoke;
      block[3] = &__block_descriptor_tmp_17_4;
      block[4] = v10;
      block[5] = a2;
      block[6] = &v14;
      dispatch_sync(v11, block);
      v12 = v14;
      if (v14)
      {
        ++*(v10 + 192);
        (*(v10 + 48))(*(v10 + 56), v12[1], v12[2], v12[3], a3, a4, a5);
        v13 = 0;
        a1 = v14;
LABEL_10:
        free(a1);
        return v13;
      }
    }

    a1 = 0;
LABEL_12:
    v13 = 4294954394;
    goto LABEL_10;
  }

  v8 = a1[1];

  return VTParavirtualizationHostEncoderSessionEmitEncodedTile(v8, a2, a3, a4, a5);
}

void __VTTileEncoderSessionSetTileEncodeRequirements_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  v6 = *(v5 + 120);
  v7 = a1[6];
  *(v5 + 120) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

double vtTileCompressionSessionInit(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
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

void vtTileCompressionSessionFinalize(void *a1)
{
  VTTileCompressionSessionInvalidate(a1);
  v2 = a1[17];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
    a1[10] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    CFRelease(v7);
    a1[20] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[15];
  if (v9)
  {
    CFRelease(v9);
    a1[15] = 0;
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
    a1[14] = 0;
  }

  v11 = a1[21];
  if (v11)
  {
    CFRelease(v11);
    a1[21] = 0;
  }
}

__CFString *vtTileCompressionSessionCopyDebugDesc(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (v2 > 0xA)
  {
    if (v2 > 0x28)
    {
      v2 = bswap32(v2);
      v6 = v2 >> 8;
      v5 = BYTE2(v2);
      LOBYTE(v7) = v2;
    }

    else
    {
      v5 = 0;
      v8 = *(a1 + 16);
      v7 = v8 / 0xA + 48;
      v6 = (v8 % 0xA) | 0x30;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v6) = 0;
    v7 = *(a1 + 16) + 48;
  }

  v9 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTTileCompressionSession %p [%p]>{'%c%c%c%c',Tile size: %dx%d,videoEncoder:%p, }", a1, v9, HIBYTE(v2), v5, v6, v7, *(a1 + 20), *(a1 + 24), *(a1 + 80));
  return Mutable;
}

void vtTileCompressionSessionAddPropertyToPartition(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (*a3 && CFDictionaryContainsKey(*a3, key))
  {
    v8 = a3[2];
    v7 = a3 + 2;
    Mutable = v8;
    if (!v8)
    {
LABEL_4:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v7 = Mutable;
    }
  }

  else
  {
    v9 = a3[1];
    if (!v9 || !CFDictionaryContainsKey(v9, key))
    {
      return;
    }

    v10 = a3[3];
    v7 = a3 + 3;
    Mutable = v10;
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  CFDictionarySetValue(Mutable, key, a2);
}

void *__vtTileCompressionSessionTrackTileEnteringEncoder_block_invoke(void *a1)
{
  result = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040569D7752uLL);
  if (result)
  {
    result[1] = a1[5];
    v3 = a1[6];
    v4 = *(v3 + 128);
    *(v3 + 128) = v4 + 1;
    *result = v4;
    result[2] = a1[8];
    result[3] = a1[9];
    v5 = a1[7];
    if (v5)
    {
      *v5 = v4;
    }

    result[4] = *(a1[6] + 144);
    *(a1[6] + 144) = result;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12904;
  }

  return result;
}

uint64_t __vtTileCompressionSessionTrackTileLeavingEncoder_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v4 = *(v1 + 144);
  v3 = (v1 + 144);
  v2 = v4;
  if (v4)
  {
    v5 = v2;
    while (*v5 != *(result + 40))
    {
      v5 = v5[4];
      if (!v5)
      {
        return result;
      }
    }

    if (v2 != v5)
    {
      do
      {
        v6 = v2;
        v2 = v2[4];
      }

      while (v2 != v5);
      v3 = v6 + 4;
    }

    *v3 = v2[4];
    **(result + 48) = v5;
  }

  return result;
}

void *TestIPBQueuedFrameRetain(uint64_t a1, __int128 *a2)
{
  v3 = malloc_type_malloc(0x28uLL, 0x10200406E8F4065uLL);
  v4 = v3;
  if (v3)
  {
    v5 = *a2;
    v6 = a2[1];
    v3[4] = *(a2 + 4);
    *v3 = v5;
    *(v3 + 1) = v6;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v4;
}

__CFString *TestIPBQueuedFrameCopyDescription(uint64_t *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *a1;
  time = *(a1 + 1);
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"<frame %d, pts %1.3f, displayNumber %d>", v3, *&Seconds, *(a1 + 8));
  return Mutable;
}

uint64_t TestIPBVideoEncoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[6];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[6] = 0;
  }

  v2 = DerivedStorage[15];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[15] = 0;
  }

  v3 = DerivedStorage[13];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[13] = 0;
  }

  return 0;
}

__CFString *TestIPBVideoEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<TestIPBVideoEncoder %p>", a1);
  return Mutable;
}

uint64_t TestIPBVideoEncoder_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"AllowTemporalCompression"))
  {
    if (CFEqual(a2, @"AllowFrameReordering"))
    {
      v7 = MEMORY[0x1E695E4D0];
      v8 = *(DerivedStorage + 25);
      goto LABEL_5;
    }

    if (CFEqual(a2, @"MaxKeyFrameInterval"))
    {
      v12 = (DerivedStorage + 28);
    }

    else
    {
      if (CFEqual(a2, @"AllowOpenGOP"))
      {
        v7 = MEMORY[0x1E695E4D0];
        v8 = *(DerivedStorage + 32);
        goto LABEL_5;
      }

      if (!CFEqual(a2, @"MaxConsecutiveBFrames"))
      {
        if (CFEqual(a2, @"AllowDelayedIFrames"))
        {
          v7 = MEMORY[0x1E695E4D0];
          v8 = *(DerivedStorage + 40);
          goto LABEL_5;
        }

        if (CFEqual(a2, @"Quality"))
        {
          SInt32 = FigCFNumberCreateSInt32();
          goto LABEL_9;
        }

        if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
        {
          SInt32 = *(DerivedStorage + 48);
          if (!SInt32)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (CFEqual(a2, @"MVHEVCViewIDs") || CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
        {
          SInt32 = *(DerivedStorage + 56);
          if (!SInt32)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (!CFEqual(a2, @"ExpectedFrameRate"))
        {
          return 4294954396;
        }

        v12 = (DerivedStorage + 72);
        v13 = kCFNumberFloatType;
LABEL_14:
        SInt32 = CFNumberCreate(0, v13, v12);
        goto LABEL_9;
      }

      v12 = (DerivedStorage + 36);
    }

    v13 = kCFNumberSInt32Type;
    goto LABEL_14;
  }

  v7 = MEMORY[0x1E695E4D0];
  v8 = *(DerivedStorage + 24);
LABEL_5:
  if (!v8)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  SInt32 = *v7;
LABEL_8:
  SInt32 = CFRetain(SInt32);
LABEL_9:
  v10 = 0;
  *a4 = SInt32;
  return v10;
}

uint64_t TestIPBVideoEncoder_SetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"AllowTemporalCompression"))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 24) = Value;
        return result;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"AllowFrameReordering"))
  {
    if (a3)
    {
      v9 = CFBooleanGetTypeID();
      if (v9 == CFGetTypeID(a3))
      {
        v10 = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 25) = v10;
        return result;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"MaxKeyFrameInterval"))
  {
    if (a3)
    {
      v11 = CFNumberGetTypeID();
      if (v11 == CFGetTypeID(a3))
      {
        v12 = (DerivedStorage + 28);
LABEL_13:
        v13 = a3;
        v14 = kCFNumberSInt32Type;
LABEL_14:
        CFNumberGetValue(v13, v14, v12);
        return 0;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"AllowOpenGOP"))
  {
    if (a3)
    {
      v15 = CFBooleanGetTypeID();
      if (v15 == CFGetTypeID(a3))
      {
        v16 = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 32) = v16;
        return result;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"MaxConsecutiveBFrames"))
  {
    if (a3)
    {
      v17 = CFNumberGetTypeID();
      if (v17 == CFGetTypeID(a3))
      {
        v12 = (DerivedStorage + 36);
        goto LABEL_13;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"AllowDelayedIFrames"))
  {
    if (a3)
    {
      v18 = CFBooleanGetTypeID();
      if (v18 == CFGetTypeID(a3))
      {
        v19 = CFBooleanGetValue(a3);
        result = 0;
        *(DerivedStorage + 40) = v19;
        return result;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"Quality"))
  {
    if (a3)
    {
      v20 = CFNumberGetTypeID();
      if (v20 == CFGetTypeID(a3))
      {
        return 0;
      }
    }

    return 4294954394;
  }

  if (CFEqual(a2, @"MVHEVCVideoLayerIDs"))
  {
    if (a3)
    {
      v21 = CFGetTypeID(a3);
      if (v21 != CFArrayGetTypeID())
      {
        return 4294954394;
      }

      v22 = *(DerivedStorage + 48);
      if (v22)
      {
        CFRelease(v22);
        *(DerivedStorage + 48) = 0;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
      result = 0;
      *(DerivedStorage + 48) = Copy;
    }

    else
    {
      result = *(DerivedStorage + 48);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(DerivedStorage + 48) = 0;
      }
    }
  }

  else if (CFEqual(a2, @"MVHEVCViewIDs"))
  {
    if (a3)
    {
      v24 = CFGetTypeID(a3);
      if (v24 != CFArrayGetTypeID())
      {
        return 4294954394;
      }

      v25 = *(DerivedStorage + 56);
      if (v25)
      {
        CFRelease(v25);
        *(DerivedStorage + 56) = 0;
      }

      v26 = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
      result = 0;
      *(DerivedStorage + 56) = v26;
    }

    else
    {
      result = *(DerivedStorage + 56);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(DerivedStorage + 56) = 0;
      }
    }
  }

  else if (CFEqual(a2, @"MVHEVCLeftAndRightViewIDs"))
  {
    if (a3)
    {
      v27 = CFGetTypeID(a3);
      if (v27 != CFArrayGetTypeID())
      {
        return 4294954394;
      }

      v28 = *(DerivedStorage + 64);
      if (v28)
      {
        CFRelease(v28);
        *(DerivedStorage + 64) = 0;
      }

      v29 = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
      result = 0;
      *(DerivedStorage + 64) = v29;
    }

    else
    {
      result = *(DerivedStorage + 64);
      if (result)
      {
        CFRelease(result);
        result = 0;
        *(DerivedStorage + 64) = 0;
      }
    }
  }

  else
  {
    v30 = CFEqual(a2, @"ExpectedFrameRate");
    result = 4294954394;
    if (a3 && v30)
    {
      v31 = CFNumberGetTypeID();
      if (v31 == CFGetTypeID(a3))
      {
        v12 = (DerivedStorage + 72);
        v13 = a3;
        v14 = kCFNumberFloatType;
        goto LABEL_14;
      }

      return 4294954394;
    }
  }

  return result;
}

uint64_t TestIPBVideoEncoder_EncodeFrame(uint64_t a1, CMTimeValue a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CVPixelBufferGetWidth(a3) != *(DerivedStorage + 76))
  {
    TestIPBVideoEncoder_EncodeFrame_cold_1(&v13);
    return v13;
  }

  if (CVPixelBufferGetHeight(a3) != *(DerivedStorage + 80))
  {
    TestIPBVideoEncoder_EncodeFrame_cold_2(&v13);
    return v13;
  }

  if (*(DerivedStorage + 48))
  {
    TestIPBVideoEncoder_EncodeFrame_cold_3(&v13);
    return v13;
  }

  v13 = *a4;
  v14 = *(a4 + 16);
  return TestIPBVideoEncoder_encodeFrameCommon(a1, a2, &v13, a6);
}

uint64_t TestIPBVideoEncoder_CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  if (sCreateSupportedPropertyDictionaryOnce_5 != -1)
  {
    TestIPBVideoEncoder_CopySupportedPropertyDictionary_cold_1();
  }

  result = 4294954392;
  if (a2)
  {
    if (sTestIPBVideoEncoder_SupportedPropertyDictionary)
    {
      v4 = CFRetain(sTestIPBVideoEncoder_SupportedPropertyDictionary);
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t TestIPBVideoEncoder_EncodeMultiImageFrame(uint64_t a1, CMTimeValue a2, OpaqueCMTaggedBufferGroup *a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    TestIPBVideoEncoder_EncodeMultiImageFrame_cold_7(&v18);
    return v18;
  }

  v12 = DerivedStorage;
  if (!*(DerivedStorage + 48))
  {
    TestIPBVideoEncoder_EncodeMultiImageFrame_cold_6(&v18);
    return v18;
  }

  Count = CMTaggedBufferGroupGetCount(a3);
  if (CFArrayGetCount(*(v12 + 48)) != Count)
  {
    TestIPBVideoEncoder_EncodeMultiImageFrame_cold_1(&v18);
    return v18;
  }

  v22 = 0;
  v23 = 0;
  FigCFArrayGetIntAtIndex();
  FigCFArrayGetIntAtIndex();
  if (Count >= 1)
  {
    v14 = 0;
    v17 = *MEMORY[0x1E6963130];
    while (1)
    {
      CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v14);
      v18 = v17;
      v21 = v17;
      result = FigTagCollectionGetTagsWithCategory();
      if (result)
      {
        return result;
      }

      FigTagGetSInt64Value();
      if (!FigCFArrayContainsInt())
      {
        TestIPBVideoEncoder_EncodeMultiImageFrame_cold_5(&v20);
        return v20;
      }

      v20 = 0;
      result = FigTagCollectionGetTagsWithCategory();
      if (result)
      {
        return result;
      }

      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      if (CVPixelBufferGetWidth(CVPixelBufferAtIndex) != *(v12 + 76))
      {
        break;
      }

      if (CVPixelBufferGetHeight(CVPixelBufferAtIndex) != *(v12 + 80))
      {
        TestIPBVideoEncoder_EncodeMultiImageFrame_cold_3(&v24);
        return v24;
      }

      if (Count == ++v14)
      {
        goto LABEL_12;
      }
    }

    TestIPBVideoEncoder_EncodeMultiImageFrame_cold_2(&v24);
    return v24;
  }

LABEL_12:
  v18 = *a4;
  v19 = *(a4 + 16);
  return TestIPBVideoEncoder_encodeFrameCommon(a1, a2, &v18, a6);
}

void OUTLINED_FUNCTION_1_23(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

OSStatus VTCreateCGImageFromCVPixelBuffer(CVPixelBufferRef pixelBuffer, CFDictionaryRef options, CGImageRef *imageOut)
{
  v53 = 0;
  provider = 0;
  v52 = 0;
  cf = 0;
  image = 0;
  if (!pixelBuffer)
  {
    VTCreateCGImageFromCVPixelBuffer_cold_3(&pixelTransferSessionOut);
LABEL_88:
    v13 = 0;
    v27 = 0;
    v42 = pixelTransferSessionOut;
    goto LABEL_73;
  }

  v3 = imageOut;
  if (!imageOut)
  {
    VTCreateCGImageFromCVPixelBuffer_cold_2(&pixelTransferSessionOut);
    goto LABEL_88;
  }

  v5 = pixelBuffer;
  if (options)
  {
    Value = CFDictionaryGetValue(options, @"DeferFormatConversion");
    if (Value)
    {
      v7 = CFBooleanGetValue(Value);
    }

    else
    {
      v7 = 1;
    }

    v9 = CFDictionaryGetValue(options, @"ForceImmediateFormatConversion");
    if (v9)
    {
      v10 = CFBooleanGetValue(v9);
      v46 = v10 != 0;
      if (v10)
      {
        v7 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v11 = CFDictionaryGetValue(options, @"PrefersStandardDynamicRange");
    if (v11)
    {
      v8 = CFBooleanGetValue(v11) == 1;
    }

    else
    {
      v8 = 1;
    }

    v48 = v7 == 0;
  }

  else
  {
    v48 = 0;
    v46 = 0;
    v8 = 1;
  }

  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  v13 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965F30], 0);
  if (!v8 || !FigCFEqual() && !FigCFEqual())
  {
    ColorSpace = CVImageBufferGetColorSpace(v5);
    v28 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965D88], 0);
    if (FigCFEqual())
    {
      ColorSpace = createAppleP3ColorSpace();
      v27 = ColorSpace;
      if (!v28)
      {
LABEL_42:
        v25 = 0;
        if (ColorSpace)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v27 = 0;
      if (!v28)
      {
        goto LABEL_42;
      }
    }

    CFRelease(v28);
    goto LABEL_42;
  }

  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  v14 = *MEMORY[0x1E695E480];
  v45 = Width;
  if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_29;
  }

  v15 = MEMORY[0x1E695E9D8];
  v16 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = CFDictionaryCreateMutable(v14, 0, v15, v16);
  v19 = v18;
  if (Mutable && v18)
  {
    v20 = CVPixelBufferGetWidth(v5);
    v21 = CVPixelBufferGetHeight(v5);
    CVPixelBufferGetPixelFormatType(v5);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v19, *MEMORY[0x1E69660D8], Mutable);
    v22 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965D88], 0);
    v23 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965F98], 0);
    VTSessionSetProperty(pixelTransferSessionOut, @"DestinationColorPrimaries", v22);
    VTSessionSetProperty(pixelTransferSessionOut, @"DestinationTransferFunction", *MEMORY[0x1E6965F50]);
    VTSessionSetProperty(pixelTransferSessionOut, @"DestinationYCbCrMatrix", v23);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v5);
    if (!CVPixelBufferCreate(v14, v20, v21, PixelFormatType, v19, &pixelBufferOut) && !VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v5, pixelBufferOut))
    {
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    }

    goto LABEL_26;
  }

  v23 = 0;
  v22 = 0;
  if (Mutable)
  {
LABEL_26:
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_29:
  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v25 = pixelBufferOut;
  if (pixelBufferOut)
  {
    v5 = pixelBufferOut;
  }

  ColorSpace = CVImageBufferGetColorSpace(v5);
  v27 = 0;
  Width = v45;
  if (!ColorSpace)
  {
LABEL_43:
    v29 = CVBufferCopyAttachments(v5, kCVAttachmentMode_ShouldPropagate);
    if (v29)
    {
      v30 = v29;
      ColorSpace = CVImageBufferCreateColorSpaceFromAttachments(v29);
      CFRelease(v30);
      v27 = ColorSpace;
    }

    else
    {
      ColorSpace = 0;
    }
  }

LABEL_46:
  v31 = CVPixelBufferGetPixelFormatType(v5);
  if (vtcg_bufferContainsAlpha(v31))
  {
    v32 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965CB8], 0);
    if (FigCFEqual())
    {
      v33 = 0;
      if (!v32)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v44 = v13;
    v34 = v3;
    v35 = Width;
    v36 = CVBufferCopyAttachment(v5, *MEMORY[0x1E6965CC0], 0);
    if (FigCFEqual())
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    if (v36)
    {
      CFRelease(v36);
    }

    Width = v35;
    v3 = v34;
    v13 = v44;
    if (v32)
    {
LABEL_57:
      CFRelease(v32);
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_58:
  if (!v48)
  {
    goto LABEL_68;
  }

  v38 = v31 == 1111970369 || v31 == 32 || v31 == 1380411457;
  v39 = v46;
  if (!v38)
  {
    v39 = 1;
  }

  if (v39 != 1)
  {
    goto LABEL_68;
  }

  vtcg_createCGCompatiblePixelBuffer(v5, 0, &cf);
  if (cf)
  {
    v40 = vtcg_convertPixelBuffer(v5, cf);
    if (v40)
    {
LABEL_85:
      v42 = v40;
      goto LABEL_71;
    }

    v5 = cf;
LABEL_68:
    v40 = vtcg_createDeferredImageProviderWithPixelBuffer(v5, &v53, &v52, &provider);
    if (!v40)
    {
      IOSurface = CVPixelBufferGetIOSurface(v5);
      v42 = vtcg_createCGImageWithProvider(provider, v53, Width, Height, v52, v33, 0, IOSurface, ColorSpace, &image);
      if (!v42)
      {
        *v3 = image;
        image = 0;
      }

      goto LABEL_71;
    }

    goto LABEL_85;
  }

  VTCreateCGImageFromCVPixelBuffer_cold_1(&pixelTransferSessionOut);
  v42 = pixelTransferSessionOut;
LABEL_71:
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_73:
  CGImageRelease(image);
  CGDataProviderRelease(provider);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v42;
}

BOOL vtcg_bufferContainsAlpha(OSType pixelFormat)
{
  value = 0;
  if ((vtcg_bufferContainsAlpha_sDidCheck & 1) == 0)
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"force_cgimage_opaque", @"com.apple.coremedia", 0);
    vtcg_bufferContainsAlpha_sForceOpaque = AppBooleanValue;
    vtcg_bufferContainsAlpha_sDidCheck = 1;
    if (!AppBooleanValue)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (vtcg_bufferContainsAlpha_sForceOpaque)
  {
    return 0;
  }

LABEL_5:
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFDictionaryGetValueIfPresent(v3, *MEMORY[0x1E6966290], &value))
  {
    v5 = CFEqual(value, *MEMORY[0x1E695E4D0]) != 0;
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v4);
  return v5;
}

uint64_t vtcg_createDeferredImageProviderWithPixelBuffer(__CVBuffer *a1, OSType *a2, size_t *a3, CGDataProviderRef *a4)
{
  v20 = *byte_1F03910C0;
  if (!a1)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_7(&v21);
LABEL_26:
    v18 = v21;
    goto LABEL_18;
  }

  if (!a4)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_6(&v21);
    goto LABEL_26;
  }

  Width = CVPixelBufferGetWidth(a1);
  if (!Width)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_5(&v21);
    goto LABEL_26;
  }

  v9 = Width;
  Height = CVPixelBufferGetHeight(a1);
  if (!Height)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_4(&v21);
    goto LABEL_26;
  }

  v11 = Height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  CGCompatiblePixelFormat = vtcg_getCGCompatiblePixelFormat(a1);
  if (!VTPixelTransferSessionCanTransfer(PixelFormatType, CGCompatiblePixelFormat, 0))
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_3(&v21);
    goto LABEL_26;
  }

  v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  if (!v14)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_2(&v21);
    goto LABEL_26;
  }

  v15 = v14;
  if (PixelFormatType == 32 || PixelFormatType == 1111970369 || PixelFormatType == 1380411457)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v15[1] = CFRetain(a1);
  }

  else
  {
    BytesPerRow = calculateBytesPerRow(CGCompatiblePixelFormat, v9);
    *v15 = CFRetain(a1);
  }

  v15[2] = BytesPerRow;
  v17 = CGDataProviderCreateDirect(v15, BytesPerRow * v11, &v20);
  if (!v17)
  {
    vtcg_createDeferredImageProviderWithPixelBuffer_cold_1(v15, &v21);
    goto LABEL_26;
  }

  if (a2)
  {
    *a2 = CGCompatiblePixelFormat;
  }

  if (a3)
  {
    *a3 = BytesPerRow;
  }

  v18 = 0;
  *a4 = v17;
LABEL_18:
  CGDataProviderRelease(0);
  return v18;
}

uint64_t vtcg_convertPixelBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  session = 0;
  if (!a1)
  {
    vtcg_convertPixelBuffer_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    vtcg_convertPixelBuffer_cold_1(&v8);
    return v8;
  }

  v4 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &session);
  v5 = session;
  if (!v4)
  {
    v4 = VTPixelTransferSessionTransferImage(session, a1, a2);
    v5 = session;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t vtcg_createCGImageWithProvider(CGDataProvider *a1, int a2, size_t a3, size_t a4, size_t a5, int a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, CGImageRef *a10)
{
  if (!a1)
  {
    vtcg_createCGImageWithProvider_cold_8(&v29);
    goto LABEL_42;
  }

  if (!a2)
  {
    vtcg_createCGImageWithProvider_cold_7(&v29);
    goto LABEL_42;
  }

  if (!a3)
  {
    vtcg_createCGImageWithProvider_cold_6(&v29);
    goto LABEL_42;
  }

  if (!a4)
  {
    vtcg_createCGImageWithProvider_cold_5(&v29);
    goto LABEL_42;
  }

  if (!a5)
  {
    vtcg_createCGImageWithProvider_cold_4(&v29);
    goto LABEL_42;
  }

  if (!a10)
  {
    vtcg_createCGImageWithProvider_cold_3(&v29);
    goto LABEL_42;
  }

  v14 = a9;
  if (a2 == 1380411457)
  {
    v15 = 16;
  }

  else
  {
    v15 = 8;
  }

  if (a2 == 1380411457)
  {
    v16 = 64;
  }

  else
  {
    v16 = 32;
  }

  if (!a7)
  {
    if (a2 == 32)
    {
      v19 = 0x4000;
    }

    else
    {
      v19 = 0x2000;
    }

    if (a6 == 2)
    {
      v20 = v19 | 2;
      v21 = a2 == 1380411457;
      v22 = 4353;
    }

    else if (a6 == 1)
    {
      v20 = v19 | 4;
      v21 = a2 == 1380411457;
      v22 = 4355;
    }

    else
    {
      v20 = v19 | 6;
      v21 = a2 == 1380411457;
      v22 = 4357;
    }

    if (v21)
    {
      UInt32 = v22;
    }

    else
    {
      UInt32 = v20;
    }

    if (a9)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  UInt32 = FigCFNumberGetUInt32();
  if (!a9)
  {
LABEL_28:
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = DeviceRGB;
    if (DeviceRGB)
    {
      goto LABEL_29;
    }

    vtcg_createCGImageWithProvider_cold_2(&v29);
LABEL_42:
    v26 = 0;
    v25 = v29;
    goto LABEL_34;
  }

LABEL_15:
  DeviceRGB = 0;
LABEL_29:
  v23 = CGImageCreate(a3, a4, v15, v16, a5, v14, UInt32, a1, 0, 1, kCGRenderingIntentPerceptual);
  if (v23)
  {
    v24 = v23;
    if (a8)
    {
      CGImageSetProperty();
    }

    v25 = 0;
    *a10 = v24;
  }

  else
  {
    vtcg_createCGImageWithProvider_cold_1(&v29);
    v25 = v29;
  }

  v26 = DeviceRGB;
LABEL_34:
  CGColorSpaceRelease(v26);
  return v25;
}

uint64_t vtcg_createDeferredImageProviderWithIOSurface(__IOSurface *a1, const void *a2, OSType *a3, size_t *a4, CGDataProviderRef *a5)
{
  v26 = *byte_1F03910E8;
  if (!a1)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_6(&v27);
LABEL_32:
    v24 = v27;
    goto LABEL_25;
  }

  if (!a5)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_5(&v27);
    goto LABEL_32;
  }

  Width = IOSurfaceGetWidth(a1);
  if (!Width)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_4(&v27);
    goto LABEL_32;
  }

  v11 = Width;
  Height = IOSurfaceGetHeight(a1);
  if (!Height)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_3(&v27);
    goto LABEL_32;
  }

  v13 = Height;
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  v15 = malloc_type_calloc(1uLL, 0x20uLL, 0x10600408D5616BCuLL);
  if (!v15)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_2(&v27);
    goto LABEL_32;
  }

  v16 = v15;
  if (PixelFormat == 32 || PixelFormat == 1111970369 || PixelFormat == 1380411457)
  {
    BytesPerRow = IOSurfaceGetBytesPerRow(a1);
    if (a2)
    {
LABEL_10:
      v18 = CFRetain(a2);
      goto LABEL_19;
    }
  }

  else
  {
    v19 = 4 * v11;
    v20 = rowAlignment_bytesPerRowAlignment;
    if (rowAlignment_bytesPerRowAlignment)
    {
      v21 = (v19 + rowAlignment_bytesPerRowAlignment - 1) / rowAlignment_bytesPerRowAlignment;
    }

    else
    {
      FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
      v20 = rowAlignment_bytesPerRowAlignment;
      v22 = v19 + rowAlignment_bytesPerRowAlignment - 1;
      if (rowAlignment_bytesPerRowAlignment)
      {
        v21 = v22 / rowAlignment_bytesPerRowAlignment;
      }

      else
      {
        FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
        v20 = rowAlignment_bytesPerRowAlignment;
        v21 = v22 / rowAlignment_bytesPerRowAlignment;
        if (!rowAlignment_bytesPerRowAlignment)
        {
          FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
          v20 = rowAlignment_bytesPerRowAlignment;
        }
      }
    }

    BytesPerRow = v21 * v20;
    PixelFormat = 1111970369;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  v18 = 0;
LABEL_19:
  v16[2] = v18;
  CFRetain(a1);
  IOSurfaceIncrementUseCount(a1);
  *v16 = a1;
  v16[3] = BytesPerRow;
  v23 = CGDataProviderCreateDirect(v16, BytesPerRow * v13, &v26);
  if (!v23)
  {
    vtcg_createDeferredImageProviderWithIOSurface_cold_1(v16, &v27);
    goto LABEL_32;
  }

  if (a3)
  {
    *a3 = PixelFormat;
  }

  if (a4)
  {
    *a4 = BytesPerRow;
  }

  v24 = 0;
  *a5 = v23;
LABEL_25:
  CGDataProviderRelease(0);
  return v24;
}

void *_getImageBytePointerFromPixelBuffer(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    _getImageBytePointerFromPixelBuffer_cold_4();
    goto LABEL_16;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    _getImageBytePointerFromPixelBuffer_cold_3();
    goto LABEL_16;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    goto LABEL_4;
  }

  v5 = *a1;
  if (!*a1)
  {
    _getImageBytePointerFromPixelBuffer_cold_2();
    goto LABEL_16;
  }

  if (!vtcg_createCGCompatiblePixelBuffer(*a1, v2, &cf) && !vtcg_convertPixelBuffer(v5, cf))
  {
    v3 = cf;
LABEL_4:
    if (!CVPixelBufferLockBaseAddress(v3, 1uLL))
    {
      result = CVPixelBufferGetBaseAddress(v3);
      if (result)
      {
        if (cf)
        {
          *(a1 + 8) = v3;
        }

        return result;
      }

      _getImageBytePointerFromPixelBuffer_cold_1();
    }
  }

LABEL_16:
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

__CVBuffer *_releaseImageBytePointerFromPixelBuffer(__CVBuffer *result, uint64_t a2)
{
  if (result && a2)
  {
    result = *(result + 1);
    if (result)
    {
      return CVPixelBufferUnlockBaseAddress(result, 1uLL);
    }
  }

  return result;
}

void _releaseInfoFromPixelBuffer(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

unint64_t calculateBytesPerRow(int a1, uint64_t a2)
{
  v2 = rowAlignment_bytesPerRowAlignment;
  if (a1 == 1380411457)
  {
    v3 = 8 * a2;
    if (!rowAlignment_bytesPerRowAlignment)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = (v3 + rowAlignment_bytesPerRowAlignment - 1) / rowAlignment_bytesPerRowAlignment;
    return v5 * v2;
  }

  v3 = 4 * a2;
  if (rowAlignment_bytesPerRowAlignment)
  {
    goto LABEL_6;
  }

LABEL_3:
  FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
  v2 = rowAlignment_bytesPerRowAlignment;
  v4 = v3 + rowAlignment_bytesPerRowAlignment - 1;
  if (rowAlignment_bytesPerRowAlignment)
  {
    v5 = v4 / rowAlignment_bytesPerRowAlignment;
  }

  else
  {
    FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
    v2 = rowAlignment_bytesPerRowAlignment;
    v5 = v4 / rowAlignment_bytesPerRowAlignment;
    if (!rowAlignment_bytesPerRowAlignment)
    {
      FigGetAlignmentForIOSurfaceOutputToDisplayService(0, 0, &rowAlignment_bytesPerRowAlignment);
      v2 = rowAlignment_bytesPerRowAlignment;
    }
  }

  return v5 * v2;
}

CVPixelBufferRef *_releaseImageBytePointerFromIOSurface(CVPixelBufferRef *result, uint64_t a2)
{
  if (result && a2)
  {
    if (result[1])
    {
      return CVPixelBufferUnlockBaseAddress(result[1], 1uLL);
    }

    else
    {
      result = *result;
      if (result)
      {
        return IOSurfaceUnlock(result, 1u, 0);
      }
    }
  }

  return result;
}

void _releaseInfoFromIOSurface(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      IOSurfaceDecrementUseCount(v2);
      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[1];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

CFNumberRef OUTLINED_FUNCTION_1_24(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(0, kCFNumberDoubleType, a3);
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
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
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
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

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
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
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
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
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
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

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = 2 * *result;
  v339 = *(result + 44) + 2 * (*(result + 28) * a2 / v13);
  v340 = *(result + 36);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v346 = result;
  v17 = v15 * a2 / v13;
  v18 = result[15] + 2 * v17;
  v19 = 2 * ((v15 + v15 * a2) / v13 - v17);
  v21 = result[7];
  v20 = result[8];
  v23 = result[16];
  v22 = result[17];
  v338 = v20[2];
  v342 = v21[2];
  v344 = v22[2];
  v341 = v23[2];
  v343 = (v341 + v344 * v18 + v14);
  if (v19 >= 1)
  {
    v24 = 0;
    v25 = result[19];
    v26 = *v20;
    v27 = v20[1];
    v28 = *v22;
    v29 = v22[1];
    v30 = v25[17].u16[2];
    v31 = v25[17].u16[3];
    v32.i32[0] = v25[3].i32[1];
    v33 = v25[18].u16[0];
    v34 = v25[18].u16[1];
    v35 = v25[18].u16[2];
    v36 = v25[18].u16[3];
    v37 = v25[19].u16[0];
    _S16 = v25[5].i32[0];
    v39.i32[0] = v25[6].i32[0];
    v418 = v25[5].f32[1];
    v41.i32[0] = v25[6].i32[1];
    v40.i32[0] = v25[7].i32[0];
    v42 = 8191.0 / v25[16].u32[0];
    v43 = v30;
    _S25 = v42 * v25->f32[0];
    v45 = v33;
    v357 = v34;
    v412 = v35;
    v420 = v36;
    *&a8 = v37;
    v385 = v37;
    __asm { FCVT            H8, S25 }

    *&a8 = v30;
    v51 = &v25[2068] + 4;
    v52 = v16 & 0xFFFFFFFE;
    v53 = &v25[20] + 4;
    v54 = vdupq_lane_s16(*&a8, 0);
    v55 = -v31;
    v32.i32[1] = v25[1].i32[0];
    *v11.f32 = vmul_n_f32(v32, v42);
    v56 = &v25[4116] + 4;
    v57 = vdupq_lane_s32(vcvt_f16_f32(v11), 0);
    *v12.f32 = vmul_n_f32(v25[2], v42);
    v58 = vdupq_lane_s32(vcvt_f16_f32(v12), 0);
    _Q3 = vmulq_n_f16(v57, v55);
    v389 = _Q3;
    v39.i32[1] = v25[7].i32[1];
    v59 = vmulq_n_f16(v58, v55);
    v60 = v31;
    __asm { FMOV            V3.2S, #0.25 }

    *v8.f32 = vmul_f32(v39, *_Q3.i8);
    v41.i32[1] = v25[8].i32[0];
    *v10.f32 = vmul_f32(v41, *_Q3.i8);
    v62 = vdupq_lane_s32(vcvt_f16_f32(v10), 0);
    v40.i32[1] = v25[8].i32[1];
    *v9.f32 = vmul_f32(v40, *_Q3.i8);
    v63 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v416 = v63;
    v417 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    *v63.i16 = v33;
    v64 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v34;
    v65 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v35;
    v66 = vdupq_lane_s16(*v63.i8, 0);
    *v63.i16 = v36;
    _Q0 = vdupq_lane_s16(*v63.i8, 0);
    v403 = _Q0;
    v404 = v66;
    v414 = v25[4].f32[1];
    __asm { FCVT            H0, S6 }

    v402 = *_Q0.i16;
    *_Q0.i16 = v37;
    _Q0 = vdupq_lane_s16(*_Q0.i8, 0);
    v401 = _Q0;
    v69 = v25[15].u8[4];
    if (v69 >= 0x11)
    {
      v70 = 0;
    }

    else
    {
      v70 = 16 - v69;
    }

    v362 = v29;
    v363 = v27;
    v71 = (v23[1] + v29 * (v18 / 2) + v14);
    v72 = *v23 + v28 * v18;
    v73 = v28;
    v74 = (v72 + v14);
    v75 = v26;
    result = (v21[1] + v27 * (v339 / 2) + 2 * v340);
    v76 = (*v21 + v26 * v339 + 2 * v340);
    v77 = v70;
    v350 = v16 & 0xFFFFFFF8;
    v413 = v25[5].f32[0];
    __asm { FCVT            H3, S16 }

    v381 = *_Q3.i16;
    v78 = v65;
    _Q3.i32[0] = v25[5].i32[1];
    __asm { FCVT            H3, S3 }

    v384 = v25[13].f32[1];
    __asm { FCVT            H0, S0 }

    v379 = *_Q0.i16;
    v380 = *_Q3.i16;
    _Q0.i32[0] = v25[15].i32[0];
    v383 = v25[14].f32[0];
    __asm { FCVT            H1, S1 }

    v377 = _H1;
    v382 = v25[14].f32[1];
    __asm { FCVT            H1, S2 }

    v378 = *_Q0.i32;
    __asm { FCVT            H0, S0 }

    v375 = *_Q0.i16;
    v376 = _H1;
    v400 = v25[9].f32[0];
    __asm { FCVT            H0, S19 }

    v374 = *_Q0.i16;
    v399 = v25[9].f32[1];
    __asm { FCVT            H6, S6 }

    v398 = v25[10].f32[0];
    __asm { FCVT            H11, S11 }

    v396 = v25[10].f32[1];
    __asm { FCVT            H0, S12 }

    v371 = *_Q0.i16;
    v394 = v25[11].f32[0];
    __asm { FCVT            H2, S13 }

    v392 = v25[11].f32[1];
    __asm { FCVT            H3, S14 }

    v390 = v25[12].f32[0];
    __asm { FCVT            H13, S15 }

    v388 = v25[12].f32[1];
    __asm { FCVT            H0, S4 }

    v386 = v25[13].f32[0];
    __asm { FCVT            H1, S17 }

    v86 = vdupq_n_s16(-v70);
    v87 = v12.i64[0];
    v409 = v10.f32[0];
    v410 = v8.f32[0];
    v365 = v10.f32[1];
    v407 = v9.f32[0];
    v408 = v62;
    v364 = v9.f32[1];
    v88 = v416;
    v89 = v417;
    v90 = v357;
    v91 = 0uLL;
    v415 = v16 - 7;
    v421 = v86;
    v355 = v19;
    v356 = v16;
    v353 = v73;
    v354 = v26;
    v351 = v70;
    v352 = v16 & 0xFFFFFFFE;
    v411 = v59;
    v405 = v78;
    v406 = v58;
    v397 = v64;
    v395 = _H8;
    v393 = v54;
    v391 = v57;
    v387 = v43;
    v372 = _H11;
    v373 = _H6;
    v369 = _Q3;
    v370 = _H2;
    v367 = _Q0;
    v368 = _H13;
    v366 = _H1;
    v348 = _S25;
    v349 = v31;
    v347 = v33;
    do
    {
      v92 = &v76->i8[v75];
      v93 = v74 + v73;
      if (v16 < 8)
      {
        v193 = 0;
        v192 = v71;
        v97 = (v74 + v73);
        v96 = result;
        v95 = (v76 + v75);
      }

      else
      {
        v361 = v24;
        v94 = 0;
        v358 = &v76->i8[v75];
        v359 = v74 + v73;
        v95 = (v76 + v75);
        v360 = result;
        v96 = result;
        v97 = (v74 + v73);
        v98.i64[0] = 0x9000900090009000;
        v98.i64[1] = 0x9000900090009000;
        v419 = v71;
        do
        {
          v99 = *v96++;
          v100 = vcvtq_f16_u16(vshlq_u16(v99, v86));
          v101 = vmlaq_f16(v389, v57, v100);
          v102 = vmlaq_f16(v59, v58, v100);
          v103 = vuzp1q_s16(v102, v100);
          *v103.i8 = vadd_f16(*v103.i8, *&vuzp2q_s16(v102, v103));
          v104 = *v76++;
          v105 = vzip1q_s16(v103, v103);
          v106 = vcvtq_f16_u16(vshlq_u16(v104, v86));
          v107 = *v95++;
          v108 = vcvtq_f16_u16(vshlq_u16(v107, v86));
          v109 = vtrn1q_s16(v101, v101);
          v110 = vsubq_f16(v106, v54);
          v111 = vsubq_f16(v108, v54);
          v112 = vtrn2q_s16(v101, v101);
          v113 = vmlaq_n_f16(v112, v111, _H8);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v110, _H8), v91), v98));
          v115 = v114.u16[0];
          v116 = v114.u16[1];
          v117 = v114.u16[2];
          v118 = v114.u16[3];
          v119 = v114.u16[4];
          v120 = v114.u16[5];
          v121 = v114.u16[6];
          v122 = v114.u16[7];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v110, _H8), v91), v98));
          v124.i16[0] = *&v53[2 * v115];
          v124.i16[1] = *&v53[2 * v116];
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v110, _H8), v91), v98));
          v124.i16[2] = *&v53[2 * v117];
          v126.i16[0] = *&v53[2 * v125.u16[0]];
          v127.i16[0] = *&v53[2 * v123.u16[0]];
          v128 = &v53[2 * v125.u16[2]];
          v129 = &v53[2 * v125.u16[3]];
          v130 = &v53[2 * v125.u16[4]];
          v131 = v125.u16[6];
          v132 = &v53[2 * v125.u16[5]];
          v133 = v125.u16[7];
          v126.i16[1] = *&v53[2 * v125.u16[1]];
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v113, v91), v98));
          v113.i16[0] = *&v53[2 * v134.u16[0]];
          v113.i16[1] = *&v53[2 * v134.u16[1]];
          v126.i16[2] = *v128;
          v124.i16[3] = *&v53[2 * v118];
          v113.i16[2] = *&v53[2 * v134.u16[2]];
          v127.i16[1] = *&v53[2 * v123.u16[1]];
          v135 = &v53[2 * v134.u16[5]];
          v136 = &v53[2 * v134.u16[6]];
          v126.i16[3] = *v129;
          v113.i16[3] = *&v53[2 * v134.u16[3]];
          v124.i16[4] = *&v53[2 * v119];
          v137 = &v53[2 * v134.u16[7]];
          v113.i16[4] = *&v53[2 * v134.u16[4]];
          v127.i16[2] = *&v53[2 * v123.u16[2]];
          v138 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v105, v111, _H8), v91), v98));
          v126.i16[4] = *v130;
          v105.i16[0] = *&v53[2 * v138.u16[0]];
          v113.i16[5] = *v135;
          v124.i16[5] = *&v53[2 * v120];
          v127.i16[3] = *&v53[2 * v123.u16[3]];
          v126.i16[5] = *v132;
          v139 = &v53[2 * v138.u16[5]];
          v140 = &v53[2 * v138.u16[6]];
          v113.i16[6] = *v136;
          v105.i16[1] = *&v53[2 * v138.u16[1]];
          v124.i16[6] = *&v53[2 * v121];
          v105.i16[2] = *&v53[2 * v138.u16[2]];
          v105.i16[3] = *&v53[2 * v138.u16[3]];
          v127.i16[4] = *&v53[2 * v123.u16[4]];
          v141 = &v53[2 * v138.u16[7]];
          v105.i16[4] = *&v53[2 * v138.u16[4]];
          v126.i16[6] = *&v53[2 * v131];
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v111, _H8), v91), v98));
          v113.i16[7] = *v137;
          v109.i16[0] = *&v53[2 * v142.u16[0]];
          v105.i16[5] = *v139;
          v124.i16[7] = *&v53[2 * v122];
          v127.i16[5] = *&v53[2 * v123.u16[5]];
          v126.i16[7] = *&v53[2 * v133];
          v127.i16[6] = *&v53[2 * v123.u16[6]];
          v109.i16[1] = *&v53[2 * v142.u16[1]];
          v127.i16[7] = *&v53[2 * v123.u16[7]];
          v109.i16[2] = *&v53[2 * v142.u16[2]];
          v109.i16[3] = *&v53[2 * v142.u16[3]];
          v105.i16[6] = *v140;
          v109.i16[4] = *&v53[2 * v142.u16[4]];
          v109.i16[5] = *&v53[2 * v142.u16[5]];
          v105.i16[7] = *v141;
          v109.i16[6] = *&v53[2 * v142.u16[6]];
          v109.i16[7] = *&v53[2 * v142.u16[7]];
          v143 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v124, v379), v127, v377), v126, v376), vmaxq_f16(vmaxq_f16(v124, v127), v126), v375), v91), v98));
          v142.i16[0] = *&v51[2 * v143.u16[0]];
          v144 = v143.u16[5];
          v145 = &v51[2 * v143.u16[1]];
          v146 = &v51[2 * v143.u16[2]];
          v147 = v143.u16[6];
          v148 = v143.u16[7];
          v149 = &v51[2 * v143.u16[3]];
          v150 = &v51[2 * v143.u16[4]];
          v151 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v379), v105, v377), v109, v376), vmaxq_f16(vmaxq_f16(v113, v105), v109), v375), v91), v98));
          v123.i16[0] = *&v51[2 * v151.u16[0]];
          v142.i16[1] = *v145;
          v142.i16[2] = *v146;
          v142.i16[3] = *v149;
          v142.i16[4] = *v150;
          v142.i16[5] = *&v51[2 * v144];
          v142.i16[6] = *&v51[2 * v147];
          v123.i16[1] = *&v51[2 * v151.u16[1]];
          v123.i16[2] = *&v51[2 * v151.u16[2]];
          v142.i16[7] = *&v51[2 * v148];
          v123.i16[3] = *&v51[2 * v151.u16[3]];
          v123.i16[4] = *&v51[2 * v151.u16[4]];
          v152 = vmulq_f16(v124, v142);
          v123.i16[5] = *&v51[2 * v151.u16[5]];
          v123.i16[6] = *&v51[2 * v151.u16[6]];
          v153 = vmulq_f16(v127, v142);
          v123.i16[7] = *&v51[2 * v151.u16[7]];
          v154 = v89;
          v155 = vmulq_f16(v113, v123);
          v156 = vmulq_f16(v105, v123);
          v157 = vmulq_f16(v109, v123);
          v158 = vmulq_f16(v126, v142);
          v126.i16[7] = 0;
          v159 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v152, v374), v153, v373), v158, v372);
          v127.i16[7] = v369.i16[7];
          v160 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v152, v371), v153, v370), v158, *v369.i16);
          v124.i16[7] = v367.i16[7];
          v161 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v155, v374), v156, v373), v157, v372);
          v162 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v158, v366), v153, *v367.i16), v152, v368);
          v163 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v155, v371), v156, v370), v157, *v369.i16);
          v164 = vmlaq_n_f16(vmulq_n_f16(v157, v366), v156, *v367.i16);
          v165 = vmaxq_f16(v159, 0);
          v91 = 0uLL;
          v166 = vcvtq_u16_f16(vminq_f16(v165, v98));
          v124.i16[0] = *&v56[2 * v166.u16[0]];
          v167 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v160, 0), v98));
          v126.i16[0] = *&v56[2 * v167.u16[0]];
          v168 = &v56[2 * v167.u16[1]];
          v169 = &v56[2 * v167.u16[2]];
          v170 = &v56[2 * v167.u16[3]];
          v171 = &v56[2 * v167.u16[4]];
          LOWORD(v149) = v167.i16[6];
          LOWORD(v137) = v167.i16[7];
          v172 = &v56[2 * v167.u16[5]];
          v173 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v162, 0), v98));
          v127.i16[0] = *&v56[2 * v173.u16[0]];
          v174 = &v56[2 * v173.u16[4]];
          v124.i16[1] = *&v56[2 * v166.u16[1]];
          v175 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v161, 0), v98));
          v126.i16[1] = *v168;
          v161.i16[0] = *&v56[2 * v175.u16[0]];
          v127.i16[1] = *&v56[2 * v173.u16[1]];
          v176 = &v56[2 * v173.u16[5]];
          v124.i16[2] = *&v56[2 * v166.u16[2]];
          v161.i16[1] = *&v56[2 * v175.u16[1]];
          v126.i16[2] = *v169;
          v177 = &v56[2 * v173.u16[6]];
          v127.i16[2] = *&v56[2 * v173.u16[2]];
          v161.i16[2] = *&v56[2 * v175.u16[2]];
          v124.i16[3] = *&v56[2 * v166.u16[3]];
          v178 = &v56[2 * v173.u16[7]];
          v126.i16[3] = *v170;
          v161.i16[3] = *&v56[2 * v175.u16[3]];
          v127.i16[3] = *&v56[2 * v173.u16[3]];
          v161.i16[4] = *&v56[2 * v175.u16[4]];
          v179 = vminq_f16(vmaxq_f16(v163, 0), v98);
          v180 = vcvtq_u16_f16(v179);
          v124.i16[4] = *&v56[2 * v166.u16[4]];
          v179.i16[0] = *&v56[2 * v180.u16[0]];
          v126.i16[4] = *v171;
          v127.i16[4] = *v174;
          v71 = v419;
          v179.i16[1] = *&v56[2 * v180.u16[1]];
          v161.i16[5] = *&v56[2 * v175.u16[5]];
          v124.i16[5] = *&v56[2 * v166.u16[5]];
          v179.i16[2] = *&v56[2 * v180.u16[2]];
          v126.i16[5] = *v172;
          v127.i16[5] = *v176;
          v179.i16[3] = *&v56[2 * v180.u16[3]];
          v161.i16[6] = *&v56[2 * v175.u16[6]];
          v179.i16[4] = *&v56[2 * v180.u16[4]];
          v124.i16[6] = *&v56[2 * v166.u16[6]];
          v179.i16[5] = *&v56[2 * v180.u16[5]];
          v126.i16[6] = *&v56[2 * v149];
          v179.i16[6] = *&v56[2 * v180.u16[6]];
          LOWORD(v172) = v180.i16[7];
          v127.i16[6] = *v177;
          v181 = &v56[2 * v175.u16[7]];
          v182 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v164, v155, v368), 0), v98));
          v183 = vuzp1q_s16(v161, v179);
          v166.i16[0] = *&v56[2 * v182.u16[0]];
          v161.i16[7] = *v181;
          v184 = vuzp1q_s16(v124, v126);
          v124.i16[7] = *&v56[2 * v166.u16[7]];
          v166.i16[1] = *&v56[2 * v182.u16[1]];
          v166.i16[2] = *&v56[2 * v182.u16[2]];
          v126.i16[7] = *&v56[2 * v137];
          v166.i16[3] = *&v56[2 * v182.u16[3]];
          v166.i16[4] = *&v56[2 * v182.u16[4]];
          v179.i16[7] = *&v56[2 * v172];
          v185 = vmlaq_n_f16(vmlaq_n_f16(v64, v161, v402), v179, v381);
          v186 = vuzp2q_s16(v161, v179);
          v187 = v127;
          v166.i16[5] = *&v56[2 * v182.u16[5]];
          v166.i16[6] = *&v56[2 * v182.u16[6]];
          v187.i16[7] = *v178;
          v188 = v166;
          v188.i16[7] = *&v56[2 * v182.u16[7]];
          *v74++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v64, v124, v402), v126, v381), v187, v380), v64), v404)));
          v189 = vaddq_f16(vaddq_f16(v184, vuzp2q_s16(v124, v126)), v183);
          v86 = v421;
          v190 = vaddq_f16(v189, v186);
          v191 = vmaxq_f16(vmlaq_n_f16(v185, v188, v380), v64);
          v89 = v154;
          *v97++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(v191, v404)));
          *&v419[v94] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v405, v154, vzip1q_s16(v190, v190)), v62, vzip2q_s16(v190, v190)), v88, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v127, v127), vtrn2q_s16(v187, v187)), vtrn1q_s16(v166, v166)), vtrn2q_s16(v188, v188))), v403), v401)));
          v94 += 8;
        }

        while (v94 < v415);
        v192 = &v419[v94];
        v193 = v350;
        v77 = v351;
        v19 = v355;
        v16 = v356;
        v24 = v361;
        v73 = v353;
        v75 = v354;
        v52 = v352;
        v93 = v359;
        result = v360;
        v92 = v358;
        v90 = v357;
        _S25 = v348;
        v60 = v349;
        v45 = v347;
      }

      for (; v193 < v52; v86 = v421)
      {
        v194 = (v96->u16[1] >> v77) - v60;
        v195 = v11.f32[1] * v194;
        v196 = _S25 * ((v76->u16[0] >> v77) - v43);
        v197 = (v11.f32[1] * v194) + v196;
        v198 = 8191.0;
        if (v197 <= 8191.0)
        {
          v198 = (v11.f32[1] * v194) + v196;
          if (v197 < 0.0)
          {
            v198 = 0.0;
          }
        }

        v199 = (v96->u16[0] >> v77) - v60;
        v200 = (*(&v87 + 1) * v194) + (v199 * *&v87);
        v201 = 8191.0;
        if ((v196 + v200) <= 8191.0)
        {
          v201 = v196 + v200;
          if ((v196 + v200) < 0.0)
          {
            v201 = 0.0;
          }
        }

        v202 = v11.f32[0] * v199;
        v203 = (v11.f32[0] * v199) + v196;
        v204 = 8191.0;
        if (v203 <= 8191.0)
        {
          v204 = v203;
          if (v203 < 0.0)
          {
            v204 = 0.0;
          }
        }

        v205 = _S25 * ((v76->u16[1] >> v77) - v43);
        v206 = 8191.0;
        if ((v195 + v205) <= 8191.0)
        {
          v206 = v195 + v205;
          if ((v195 + v205) < 0.0)
          {
            v206 = 0.0;
          }
        }

        v207 = 8191.0;
        if ((v200 + v205) <= 8191.0)
        {
          v207 = v200 + v205;
          if ((v200 + v205) < 0.0)
          {
            v207 = 0.0;
          }
        }

        v208 = v202 + v205;
        v209 = 8191.0;
        if (v208 <= 8191.0)
        {
          v209 = v208;
          if (v208 < 0.0)
          {
            v209 = 0.0;
          }
        }

        v210 = _S25 * ((v95->u16[0] >> v77) - v43);
        v211 = 8191.0;
        if ((v195 + v210) <= 8191.0)
        {
          v211 = v195 + v210;
          if ((v195 + v210) < 0.0)
          {
            v211 = 0.0;
          }
        }

        v212 = 8191.0;
        if ((v200 + v210) <= 8191.0)
        {
          v212 = v200 + v210;
          if ((v200 + v210) < 0.0)
          {
            v212 = 0.0;
          }
        }

        v213 = v202 + v210;
        v214 = 8191.0;
        if (v213 <= 8191.0)
        {
          v214 = v213;
          if (v213 < 0.0)
          {
            v214 = 0.0;
          }
        }

        v215 = _S25 * ((v95->u16[1] >> v77) - v43);
        v216 = v195 + v215;
        v217 = (v195 + v215) <= 8191.0;
        v218 = 8191.0;
        if (v217)
        {
          v218 = v216;
          if (v216 < 0.0)
          {
            v218 = 0.0;
          }
        }

        v219 = v200 + v215;
        v217 = (v200 + v215) <= 8191.0;
        v220 = 8191.0;
        if (v217)
        {
          v220 = v219;
          if (v219 < 0.0)
          {
            v220 = 0.0;
          }
        }

        v221 = v202 + v215;
        v222 = 8191.0;
        if (v221 <= 8191.0)
        {
          v222 = v221;
          if (v221 < 0.0)
          {
            v222 = 0.0;
          }
        }

        _H0 = *&v53[2 * llroundf(fminf(fmaxf(v198, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v53[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H4 = *&v53[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        __asm { FCVT            S20, H4 }

        _H14 = *&v53[2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0))];
        _H22 = *&v53[2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0))];
        _H23 = *&v53[2 * llroundf(fminf(fmaxf(v209, 0.0), 8191.0))];
        _H11 = *&v53[2 * llroundf(fminf(fmaxf(v211, 0.0), 8191.0))];
        _H19 = *&v53[2 * llroundf(fminf(fmaxf(v212, 0.0), 8191.0))];
        _H10 = *&v53[2 * llroundf(fminf(fmaxf(v214, 0.0), 8191.0))];
        _H2 = *&v53[2 * llroundf(fminf(fmaxf(v218, 0.0), 8191.0))];
        _H21 = *&v53[2 * llroundf(fminf(fmaxf(v220, 0.0), 8191.0))];
        _H6 = *&v53[2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0))];
        v238 = (((v383 * _S1) + (v384 * _S0)) + (v382 * _S20)) + (v378 * fmaxf(_S0, fmaxf(_S1, _S20)));
        v239 = 8191.0;
        if (v238 <= 8191.0)
        {
          v239 = v238;
          if (v238 < 0.0)
          {
            v239 = 0.0;
          }
        }

        v240 = v90;
        v241 = _S25;
        __asm
        {
          FCVT            S13, H14
          FCVT            S14, H22
          FCVT            S15, H23
        }

        _H3 = *&v51[2 * llroundf(v239)];
        v246 = (((v383 * _S14) + (v384 * _S13)) + (v382 * _S15)) + (v378 * fmaxf(_S13, fmaxf(_S14, _S15)));
        v247 = 8191.0;
        if (v246 <= 8191.0)
        {
          v247 = v246;
          if (v246 < 0.0)
          {
            v247 = 0.0;
          }
        }

        __asm
        {
          FCVT            S24, H11
          FCVT            S28, H19
          FCVT            S25, H10
        }

        _H19 = *&v51[2 * llroundf(v247)];
        v252 = (((v383 * _S28) + (v384 * _S24)) + (v382 * _S25)) + (v378 * fmaxf(_S24, fmaxf(_S28, _S25)));
        v253 = 8191.0;
        if (v252 <= 8191.0)
        {
          v253 = v252;
          if (v252 < 0.0)
          {
            v253 = 0.0;
          }
        }

        __asm
        {
          FCVT            S23, H2
          FCVT            S10, H21
          FCVT            S11, H6
          FCVT            S2, H3
        }

        v258 = _S0 * _S2;
        v259 = _S1 * _S2;
        v260 = _S20 * _S2;
        __asm { FCVT            S0, H19 }

        v262 = _S13 * _S0;
        v263 = _S14 * _S0;
        v264 = _S15 * _S0;
        LOWORD(_S0) = *&v51[2 * llroundf(v253)];
        __asm { FCVT            S1, H0 }

        v266 = _S24 * _S1;
        v267 = _S28 * _S1;
        v268 = _S25 * _S1;
        v269 = (((v383 * _S10) + (v384 * _S23)) + (v382 * _S11)) + (v378 * fmaxf(_S23, fmaxf(_S10, _S11)));
        v270 = 8191.0;
        if (v269 <= 8191.0)
        {
          v270 = v269;
          if (v269 < 0.0)
          {
            v270 = 0.0;
          }
        }

        _H4 = *&v51[2 * llroundf(v270)];
        __asm { FCVT            S4, H4 }

        v273 = _S23 * _S4;
        v274 = _S10 * _S4;
        _S4 = _S11 * _S4;
        v276 = ((v399 * v259) + (v258 * v400)) + (v260 * v398);
        v277 = ((v394 * v259) + (v258 * v396)) + (v260 * v392);
        _S20 = ((v388 * v259) + (v258 * v390)) + (v260 * v386);
        _S21 = ((v399 * v263) + (v262 * v400)) + (v264 * v398);
        v280 = ((v394 * v263) + (v262 * v396)) + (v264 * v392);
        _S6 = ((v388 * v263) + (v262 * v390)) + (v264 * v386);
        v282 = ((v399 * v267) + (v266 * v400)) + (v268 * v398);
        v283 = ((v394 * v267) + (v266 * v396)) + (v268 * v392);
        v284 = ((v388 * v267) + (v266 * v390)) + (v268 * v386);
        _H0 = *&v56[2 * llroundf(fminf(fmaxf(v276, 0.0), 8191.0))];
        __asm { FCVT            S2, H0 }

        _H0 = *&v56[2 * llroundf(fminf(fmaxf(v277, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v56[2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H3 = *&v56[2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0))];
        __asm { FCVT            S3, H3 }

        _H19 = *&v56[2 * llroundf(fminf(fmaxf(v280, 0.0), 8191.0))];
        LOWORD(_S6) = *&v56[2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0))];
        __asm
        {
          FCVT            S19, H19
          FCVT            S6, H6
        }

        LOWORD(_S20) = *&v56[2 * llroundf(fminf(fmaxf(v282, 0.0), 8191.0))];
        v296 = llroundf(fminf(fmaxf(v283, 0.0), 8191.0));
        __asm { FCVT            S11, H20 }

        LOWORD(_S20) = *&v56[2 * v296];
        __asm { FCVT            S10, H20 }

        LOWORD(_S20) = *&v56[2 * llroundf(fminf(fmaxf(v284, 0.0), 8191.0))];
        __asm { FCVT            S20, H20 }

        LOWORD(_S21) = *&v56[2 * llroundf(fminf(fmaxf(((v399 * v274) + (v273 * v400)) + (_S4 * v398), 0.0), 8191.0))];
        __asm { FCVT            S14, H21 }

        LOWORD(_S21) = *&v56[2 * llroundf(fminf(fmaxf(((v394 * v274) + (v273 * v396)) + (_S4 * v392), 0.0), 8191.0))];
        LOWORD(_S4) = *&v56[2 * llroundf(fminf(fmaxf(((v388 * v274) + (v273 * v390)) + (_S4 * v386), 0.0), 8191.0))];
        __asm
        {
          FCVT            S21, H21
          FCVT            S13, H4
        }

        v303 = (((v413 * _S0) + (v414 * _S2)) + (v418 * _S1)) + v45;
        if (v303 < v45)
        {
          v304 = v45;
        }

        else
        {
          v304 = (((v413 * _S0) + (v414 * _S2)) + (v418 * _S1)) + v45;
        }

        v217 = v303 <= v412;
        v305 = (((v413 * _S19) + (v414 * _S3)) + (v418 * _S6)) + v45;
        if (!v217)
        {
          v304 = v412;
        }

        v306 = llroundf(v304);
        if (v305 < v45)
        {
          v307 = v45;
        }

        else
        {
          v307 = (((v413 * _S19) + (v414 * _S3)) + (v418 * _S6)) + v45;
        }

        v217 = v305 <= v412;
        v308 = (((v413 * _S10) + (v414 * _S11)) + (v418 * _S20)) + v45;
        if (!v217)
        {
          v307 = v412;
        }

        v309 = llroundf(v307);
        if (v308 < v45)
        {
          v310 = v45;
        }

        else
        {
          v310 = (((v413 * _S10) + (v414 * _S11)) + (v418 * _S20)) + v45;
        }

        v217 = v308 <= v412;
        v311 = (((v413 * _S21) + (v414 * _S14)) + (v418 * _S13)) + v45;
        if (!v217)
        {
          v310 = v412;
        }

        v312 = llroundf(v310);
        if (v311 < v45)
        {
          v313 = v45;
        }

        else
        {
          v313 = (((v413 * _S21) + (v414 * _S14)) + (v418 * _S13)) + v45;
        }

        if (v311 <= v412)
        {
          v314 = v313;
        }

        else
        {
          v314 = v412;
        }

        v315 = ((_S2 + _S3) + _S11) + _S14;
        v316 = ((_S0 + _S19) + _S10) + _S21;
        v74->i8[0] = v306;
        v74->i8[1] = v309;
        v97->i8[0] = v312;
        v97->i8[1] = llroundf(v314);
        v90 = v240;
        v317 = ((_S1 + _S6) + _S20) + _S13;
        v318 = ((v240 + (v315 * v410)) + (v316 * v409)) + (v317 * v407);
        v319 = v385;
        if (v318 <= v385)
        {
          v319 = ((v240 + (v315 * v410)) + (v316 * v409)) + (v317 * v407);
          if (v318 < v420)
          {
            v319 = v420;
          }
        }

        v320 = ((v240 + (v315 * v8.f32[1])) + (v316 * v365)) + (v317 * v364);
        *v192 = llroundf(v319);
        v321 = v385;
        v43 = v387;
        _S25 = v241;
        v89 = v417;
        v91 = 0uLL;
        if (v320 <= v385)
        {
          v321 = v320;
          if (v320 < v420)
          {
            v321 = v420;
          }
        }

        v193 += 2;
        v96 = (v96 + 4);
        v76 = (v76 + 4);
        v95 = (v95 + 4);
        v192[1] = llroundf(v321);
        v74 = (v74 + 2);
        v97 = (v97 + 2);
        v192 += 2;
        v54 = v393;
        v57 = v391;
        _H8 = v395;
        v58 = v406;
        v59 = v411;
        v62 = v408;
        v88 = v416;
        v64 = v397;
      }

      v76 = &v92[v75];
      result = (result + v363);
      v74 = &v93[v73];
      v71 += v362;
      v24 += 2;
    }

    while (v24 < v19);
  }

  if (v342 && v341)
  {
    v322 = v343;
    if (v19 >= 1)
    {
      v323 = 0;
      v324 = v342 + v338 * v339 + 2 * v340;
      do
      {
        if (v16 >= 1)
        {
          v325 = v16;
          v326 = v322;
          v327 = v324;
          do
          {
            v328 = *v327++;
            *v326++ = llroundf(v328 * 0.0038911);
            --v325;
          }

          while (v325);
        }

        v324 += v338;
        v322 += v344;
        ++v323;
      }

      while (v19 > v323);
    }
  }

  else
  {
    v329 = v343;
    if (v341 && v19 >= 1)
    {
      v330 = 0;
      v331 = vdupq_n_s64(v16 - 1);
      do
      {
        if (v16 >= 1)
        {
          v332 = 0;
          do
          {
            v333 = vdupq_n_s64(v332);
            v334 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDDB0)));
            if (vuzp1_s8(vuzp1_s16(v334, *v331.i8), *v331.i8).u8[0])
            {
              v329[v332] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v334, *&v331), *&v331).i8[1])
            {
              v329[v332 + 1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDDA0)))), *&v331).i8[2])
            {
              v329[v332 + 2] = -1;
              v329[v332 + 3] = -1;
            }

            v335 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD90)));
            if (vuzp1_s8(*&v331, vuzp1_s16(v335, *&v331)).i32[1])
            {
              v329[v332 + 4] = -1;
            }

            if (vuzp1_s8(*&v331, vuzp1_s16(v335, *&v331)).i8[5])
            {
              v329[v332 + 5] = -1;
            }

            if (vuzp1_s8(*&v331, vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD80))))).i8[6])
            {
              v329[v332 + 6] = -1;
              v329[v332 + 7] = -1;
            }

            v336 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD70)));
            if (vuzp1_s8(vuzp1_s16(v336, *v331.i8), *v331.i8).u8[0])
            {
              v329[v332 + 8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v336, *&v331), *&v331).i8[1])
            {
              v329[v332 + 9] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD60)))), *&v331).i8[2])
            {
              v329[v332 + 10] = -1;
              v329[v332 + 11] = -1;
            }

            v337 = vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD50)));
            if (vuzp1_s8(*&v331, vuzp1_s16(v337, *&v331)).i32[1])
            {
              v329[v332 + 12] = -1;
            }

            if (vuzp1_s8(*&v331, vuzp1_s16(v337, *&v331)).i8[5])
            {
              v329[v332 + 13] = -1;
            }

            if (vuzp1_s8(*&v331, vuzp1_s16(*&v331, vmovn_s64(vcgeq_u64(v331, vorrq_s8(v333, xmmword_18FECDD40))))).i8[6])
            {
              v329[v332 + 14] = -1;
              v329[v332 + 15] = -1;
            }

            v332 += 16;
          }

          while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v332);
        }

        v329 += v344;
        ++v330;
      }

      while (v19 > v330);
    }
  }

  *(v346 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
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
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
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

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
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
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
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
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_GCD);
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

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Tone_Mat_TRC_420vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v9 = 2 * *result;
  v210 = *(result + 44) + 2 * (*(result + 28) * a2 / v9);
  v211 = *(result + 36);
  v10 = result[14];
  v11 = result[12];
  v12 = result[13];
  v13 = v12 * a2 / v9;
  v14 = result[15] + 2 * v13;
  v15 = 2 * ((v12 + v12 * a2) / v9 - v13);
  v17 = result[7];
  v16 = result[8];
  v19 = result[16];
  v18 = result[17];
  v20 = v16[2];
  v213 = v17[2];
  v21 = v18[2];
  v212 = v19[2];
  v22 = (v212 + v21 * v14 + v10);
  if (v15 >= 1)
  {
    v23 = 0;
    v24 = result[19];
    v25 = v11 & 0xFFFFFFFE;
    v26 = *v16;
    v27 = v16[1];
    v28 = *v18;
    v29 = v18[1];
    LOWORD(a5) = *(v24 + 140);
    LOWORD(a6) = *(v24 + 142);
    LOWORD(v6) = *(v24 + 144);
    LOWORD(v7) = *(v24 + 146);
    LOWORD(v8) = *(v24 + 148);
    v30 = 8191.0 / *(v24 + 128);
    v31 = LODWORD(a5);
    v32 = LODWORD(a6);
    v33 = v30 * *v24;
    v238 = v30 * *(v24 + 16);
    v239 = v30 * *(v24 + 8);
    v34 = v30 * *(v24 + 20);
    *&v35 = v30 * *(v24 + 28);
    v236 = *&v35;
    v237 = v34;
    v36 = v6;
    v37 = v7;
    v38 = v8;
    LOWORD(v35) = *(v24 + 150);
    v39 = v35;
    v243 = v39;
    v232 = *(v24 + 40);
    v233 = *(v24 + 36);
    v231 = *(v24 + 44);
    v229 = *(v24 + 52) * 0.25;
    v230 = *(v24 + 48) * 0.25;
    v227 = *(v24 + 60) * 0.25;
    v228 = *(v24 + 56) * 0.25;
    v225 = *(v24 + 72);
    v226 = *(v24 + 64) * 0.25;
    v223 = *(v24 + 76);
    v224 = *(v24 + 68) * 0.25;
    v221 = *(v24 + 84);
    v222 = *(v24 + 80);
    v219 = *(v24 + 92);
    v220 = *(v24 + 88);
    v217 = *(v24 + 100);
    v218 = *(v24 + 96);
    v216 = *(v24 + 104);
    v40 = v24 + 164;
    v41 = v24 + 16548;
    v42 = v24 + 32932;
    v43 = *(v24 + 124);
    v44 = 16 - v43;
    _CF = v43 >= 0x11;
    v46 = v19[1];
    v47 = (*v19 + v28 * v14 + v10);
    v48 = v46 + v29 * (v14 / 2);
    v49 = v17[1];
    v50 = (*v17 + v26 * v210 + 2 * v211);
    if (_CF)
    {
      v51 = 0;
    }

    else
    {
      v51 = v44;
    }

    v52 = v48 + v10;
    v53 = v49 + v27 * (v210 / 2) + 2 * v211;
    v54 = v51;
    v55 = *(v24 + 108);
    v56 = *(v24 + 112);
    v57 = *(v24 + 116);
    v58 = *(v24 + 120);
    v241 = LODWORD(a6);
    v242 = v31;
    v240 = v33;
    LOWORD(v39) = *(v24 + 152);
    v234 = LODWORD(v39);
    v235 = v37;
    v214 = v57;
    v215 = v56;
    do
    {
      v59 = &v50[v26];
      v60 = &v47[v28];
      if (v25 >= 1)
      {
        v61 = 0;
        v62 = &v50[v26];
        v63 = &v47[v28];
        do
        {
          v64 = (v53 + 2 * v61);
          v65 = (v64[1] >> v54) - v32;
          v66 = v239 * v65;
          v67 = v33 * ((*v50 >> v54) - v31);
          v68 = (v239 * v65) + v67;
          v69 = 8191.0;
          if (v68 <= 8191.0)
          {
            v69 = (v239 * v65) + v67;
            if (v68 < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = (*v64 >> v54) - v32;
          v71 = (v237 * v65) + (v70 * v238);
          v72 = 8191.0;
          if ((v67 + v71) <= 8191.0)
          {
            v72 = v67 + v71;
            if ((v67 + v71) < 0.0)
            {
              v72 = 0.0;
            }
          }

          v73 = v236 * v70;
          v74 = (v236 * v70) + v67;
          v75 = 8191.0;
          if (v74 <= 8191.0)
          {
            v75 = v74;
            if (v74 < 0.0)
            {
              v75 = 0.0;
            }
          }

          v76 = v33 * ((*(v50 + 1) >> v54) - v31);
          v77 = 8191.0;
          if ((v66 + v76) <= 8191.0)
          {
            v77 = v66 + v76;
            if ((v66 + v76) < 0.0)
            {
              v77 = 0.0;
            }
          }

          v78 = 8191.0;
          if ((v71 + v76) <= 8191.0)
          {
            v78 = v71 + v76;
            if ((v71 + v76) < 0.0)
            {
              v78 = 0.0;
            }
          }

          v79 = v73 + v76;
          v80 = 8191.0;
          if (v79 <= 8191.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          v81 = v33 * ((*v62 >> v54) - v31);
          v82 = 8191.0;
          if ((v66 + v81) <= 8191.0)
          {
            v82 = v66 + v81;
            if ((v66 + v81) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = 8191.0;
          if ((v71 + v81) <= 8191.0)
          {
            v83 = v71 + v81;
            if ((v71 + v81) < 0.0)
            {
              v83 = 0.0;
            }
          }

          v84 = v73 + v81;
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v33 * ((*(v62 + 1) >> v54) - v31);
          v87 = v66 + v86;
          v88 = (v66 + v86) <= 8191.0;
          v89 = 8191.0;
          if (v88)
          {
            v89 = v87;
            if (v87 < 0.0)
            {
              v89 = 0.0;
            }
          }

          v90 = v71 + v86;
          v88 = (v71 + v86) <= 8191.0;
          v91 = 8191.0;
          if (v88)
          {
            v91 = v90;
            if (v90 < 0.0)
            {
              v91 = 0.0;
            }
          }

          v92 = v73 + v86;
          v93 = 8191.0;
          if (v92 <= 8191.0)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          _H19 = *(v40 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v40 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          _H20 = *(v40 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          _H28 = *(v40 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          _H23 = *(v40 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          _H20 = *(v40 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          _H17 = *(v40 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          _H26 = *(v40 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          _H21 = *(v40 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          _H1 = *(v40 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          _H2 = *(v40 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          _H3 = *(v40 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          v112 = (((v56 * _S24) + (v55 * _S19)) + (v57 * _S25)) + (v58 * fmaxf(_S19, fmaxf(_S24, _S25)));
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

          _H22 = *(v41 + 2 * llroundf(v113));
          v118 = (((v56 * _S28) + (v55 * _S27)) + (v57 * _S30)) + (v58 * fmaxf(_S27, fmaxf(_S28, _S30)));
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

          _H17 = *(v41 + 2 * llroundf(v119));
          v124 = fmaxf(_S8, fmaxf(_S9, _S10));
          v125 = (((v56 * _S9) + (v55 * _S8)) + (v57 * _S10)) + (v58 * v124);
          v126 = 8191.0;
          if (v125 <= 8191.0)
          {
            v126 = (((v56 * _S9) + (v55 * _S8)) + (v57 * _S10)) + (v58 * v124);
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
          LOWORD(_S1) = *(v41 + 2 * llroundf(v126));
          __asm { FCVT            S2, H1 }

          v139 = _S8 * _S2;
          v140 = _S9 * _S2;
          v141 = _S10 * _S2;
          v142 = (((v56 * _S29) + (v55 * _S26)) + (v57 * _S31)) + (v58 * fmaxf(_S26, fmaxf(_S29, _S31)));
          v143 = 8191.0;
          if (v142 <= 8191.0)
          {
            v143 = v142;
            if (v142 < 0.0)
            {
              v143 = 0.0;
            }
          }

          _H24 = *(v41 + 2 * llroundf(v143));
          __asm { FCVT            S24, H24 }

          v146 = _S26 * _S24;
          v147 = _S29 * _S24;
          v148 = _S31 * _S24;
          v149 = ((v223 * v132) + (v131 * v225)) + (v133 * v222);
          v150 = ((v220 * v132) + (v131 * v221)) + (v133 * v219);
          _S20 = ((v217 * v132) + (v131 * v218)) + (v133 * v216);
          _S22 = ((v223 * v136) + (v135 * v225)) + (v137 * v222);
          v153 = ((v220 * v136) + (v135 * v221)) + (v137 * v219);
          _S19 = ((v217 * v136) + (v135 * v218)) + (v137 * v216);
          v155 = ((v223 * v140) + (v139 * v225)) + (v141 * v222);
          v156 = ((v220 * v140) + (v139 * v221)) + (v141 * v219);
          v157 = ((v217 * v140) + (v139 * v218)) + (v141 * v216);
          v158 = ((v223 * v147) + (v146 * v225)) + (v148 * v222);
          v159 = ((v220 * v147) + (v146 * v221)) + (v148 * v219);
          v160 = ((v217 * v147) + (v146 * v218)) + (v148 * v216);
          _H1 = *(v42 + 2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0)));
          __asm { FCVT            S17, H1 }

          _H1 = *(v42 + 2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v42 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v42 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0)));
          LOWORD(_S19) = *(v42 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H20
            FCVT            S19, H19
          }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v155, 0.0), 8191.0)));
          __asm { FCVT            S26, H20 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v156, 0.0), 8191.0)));
          __asm { FCVT            S25, H20 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0)));
          __asm { FCVT            S24, H20 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0)));
          __asm { FCVT            S28, H20 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0)));
          LOWORD(_S22) = *(v42 + 2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H20
            FCVT            S27, H22
          }

          v177 = (((v232 * _S1) + (v233 * _S17)) + (v231 * _S2)) + v36;
          if (v177 < v36)
          {
            v178 = v36;
          }

          else
          {
            v178 = (((v232 * _S1) + (v233 * _S17)) + (v231 * _S2)) + v36;
          }

          v88 = v177 <= v38;
          v179 = (((v232 * _S21) + (v233 * _S3)) + (v231 * _S19)) + v36;
          if (!v88)
          {
            v178 = v38;
          }

          v180 = llroundf(v178);
          if (v179 < v36)
          {
            v181 = v36;
          }

          else
          {
            v181 = (((v232 * _S21) + (v233 * _S3)) + (v231 * _S19)) + v36;
          }

          v88 = v179 <= v38;
          v182 = (((v232 * _S25) + (v233 * _S26)) + (v231 * _S24)) + v36;
          if (!v88)
          {
            v181 = v38;
          }

          v183 = llroundf(v181);
          if (v182 < v36)
          {
            v184 = v36;
          }

          else
          {
            v184 = (((v232 * _S25) + (v233 * _S26)) + (v231 * _S24)) + v36;
          }

          v88 = v182 <= v38;
          v185 = (((v232 * _S20) + (v233 * _S28)) + (v231 * _S27)) + v36;
          if (!v88)
          {
            v184 = v38;
          }

          v186 = llroundf(v184);
          if (v185 < v36)
          {
            v187 = v36;
          }

          else
          {
            v187 = (((v232 * _S20) + (v233 * _S28)) + (v231 * _S27)) + v36;
          }

          if (v185 <= v38)
          {
            v188 = v187;
          }

          else
          {
            v188 = v38;
          }

          v189 = ((_S17 + _S3) + _S26) + _S28;
          v190 = ((_S1 + _S21) + _S25) + _S20;
          *v47 = v180;
          v47[1] = v183;
          *v63 = v186;
          v63[1] = llroundf(v188);
          v191 = ((_S2 + _S19) + _S24) + _S27;
          v192 = ((v235 + (v189 * v230)) + (v190 * v229)) + (v191 * v228);
          v193 = v234;
          if (v192 <= v234)
          {
            v193 = ((v235 + (v189 * v230)) + (v190 * v229)) + (v191 * v228);
            if (v192 < v243)
            {
              v193 = v243;
            }
          }

          v194 = ((v235 + (v189 * v227)) + (v190 * v226)) + (v191 * v224);
          *(v52 + v61) = llroundf(v193);
          v195 = v234;
          v32 = v241;
          v31 = v242;
          v33 = v240;
          if (v194 <= v234)
          {
            v195 = v194;
            if (v194 < v243)
            {
              v195 = v243;
            }
          }

          v50 += 4;
          v62 += 4;
          v47 += 2;
          v63 += 2;
          *(v52 + v61 + 1) = llroundf(v195);
          v61 += 2;
          v57 = v214;
          v56 = v215;
        }

        while (v61 < v25);
      }

      v50 = &v59[v26];
      v53 += v27;
      v47 = &v60[v28];
      v52 += v29;
      v23 += 2;
    }

    while (v23 < v15);
  }

  if (v213 && v212)
  {
    if (v15 >= 1)
    {
      v196 = 0;
      v197 = v213 + v20 * v210 + 2 * v211;
      do
      {
        if (v11 >= 1)
        {
          v198 = v11;
          v199 = v22;
          v200 = v197;
          do
          {
            v201 = *v200++;
            *v199++ = llroundf(v201 * 0.0038911);
            --v198;
          }

          while (v198);
        }

        v197 += v20;
        v22 += v21;
        ++v196;
      }

      while (v15 > v196);
    }
  }

  else if (v212 && v15 >= 1)
  {
    v202 = 0;
    v203 = vdupq_n_s64(v11 - 1);
    do
    {
      if (v11 >= 1)
      {
        v204 = 0;
        do
        {
          v205 = vdupq_n_s64(v204);
          v206 = vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v206, *v203.i8), *v203.i8).u8[0])
          {
            v22[v204] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v206, *&v203), *&v203).i8[1])
          {
            v22[v204 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v203, vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDDA0)))), *&v203).i8[2])
          {
            v22[v204 + 2] = -1;
            v22[v204 + 3] = -1;
          }

          v207 = vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v203, vuzp1_s16(v207, *&v203)).i32[1])
          {
            v22[v204 + 4] = -1;
          }

          if (vuzp1_s8(*&v203, vuzp1_s16(v207, *&v203)).i8[5])
          {
            v22[v204 + 5] = -1;
          }

          if (vuzp1_s8(*&v203, vuzp1_s16(*&v203, vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD80))))).i8[6])
          {
            v22[v204 + 6] = -1;
            v22[v204 + 7] = -1;
          }

          v208 = vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v208, *v203.i8), *v203.i8).u8[0])
          {
            v22[v204 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v208, *&v203), *&v203).i8[1])
          {
            v22[v204 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v203, vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD60)))), *&v203).i8[2])
          {
            v22[v204 + 10] = -1;
            v22[v204 + 11] = -1;
          }

          v209 = vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v203, vuzp1_s16(v209, *&v203)).i32[1])
          {
            v22[v204 + 12] = -1;
          }

          if (vuzp1_s8(*&v203, vuzp1_s16(v209, *&v203)).i8[5])
          {
            v22[v204 + 13] = -1;
          }

          if (vuzp1_s8(*&v203, vuzp1_s16(*&v203, vmovn_s64(vcgeq_u64(v203, vorrq_s8(v205, xmmword_18FECDD40))))).i8[6])
          {
            v22[v204 + 14] = -1;
            v22[v204 + 15] = -1;
          }

          v204 += 16;
        }

        while (((v11 + 15) & 0xFFFFFFFFFFFFFFF0) != v204);
      }

      v22 += v21;
      ++v202;
    }

    while (v15 > v202);
  }

  *(result + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_420vf_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
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
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
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

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
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
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
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
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_420vf_neon_fp16_GCD);
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

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}

void *vt_Copy_xf420_TRC_Mat_TRC_420vf_neon_fp16_GCD(void *result, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, double a6, int16x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  v11 = 2 * *result;
  v314 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v315 = *(result + 36);
  v12 = result[14];
  v13 = result[12];
  v14 = result[13];
  v321 = result;
  v15 = v14 * a2 / v11;
  v16 = result[15] + 2 * v15;
  v17 = 2 * ((v14 + v14 * a2) / v11 - v15);
  v19 = result[7];
  v18 = result[8];
  v21 = result[16];
  v20 = result[17];
  v313 = v18[2];
  v317 = v19[2];
  v319 = v20[2];
  v316 = v21[2];
  v318 = (v316 + v319 * v16 + v12);
  if (v17 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = *v18;
    v25 = v18[1];
    v26 = *v20;
    v27 = v23[17].u16[2];
    v28 = v23[17].u16[3];
    a7.i32[0] = v23->i32[0];
    a8.i32[0] = v23[3].i32[1];
    v29 = v23[18].u16[0];
    v30 = v23[18].u16[1];
    v31 = v23[18].u16[2];
    v32 = v23[18].u16[3];
    v33 = v23[19].u16[0];
    _S28 = v23[4].i32[1];
    _S14 = v23[5].i32[0];
    v36.i32[0] = v23[6].i32[0];
    v372 = v23[5].f32[1];
    a10.f32[0] = 8191.0 / v23[16].u32[0];
    a5.i32[0] = v23[6].i32[1];
    a4.i32[0] = v23[7].i32[0];
    v37 = v27;
    _S21 = a10.f32[0] * v23->f32[0];
    *a7.i16 = v27;
    v39 = vdupq_lane_s16(a7, 0);
    *a9.i16 = -v28;
    a8.i32[1] = v23[1].i32[0];
    *a8.f32 = vmul_n_f32(*a8.f32, a10.f32[0]);
    _S23 = v23[9].i32[0];
    _S24 = v23[9].i32[1];
    v378 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    *a10.f32 = vmul_n_f32(v23[2], a10.f32[0]);
    _S25 = v23[10].i32[0];
    _S3 = v23[10].i32[1];
    _S29 = v23[11].i32[0];
    _S19 = v23[11].f32[1];
    _S8 = v23[12].i32[0];
    _S31 = v23[12].i32[1];
    v48 = &v23[20] + 4;
    v49 = &v23[2068] + 4;
    v50 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v51 = vmulq_n_f16(v378, *a9.i16);
    v52 = vmulq_n_f16(v50, *a9.i16);
    v36.i32[1] = v23[7].i32[1];
    __asm { FMOV            V4.2S, #0.25 }

    *a9.f32 = vmul_f32(v36, _D4);
    v58 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    a5.i32[1] = v23[8].i32[0];
    *a5.f32 = vmul_f32(*a5.f32, _D4);
    v59 = vdupq_lane_s32(vcvt_f16_f32(a5), 0);
    a4.i32[1] = v23[8].i32[1];
    *a4.f32 = vmul_f32(*a4.f32, _D4);
    v60 = vcvt_f16_f32(a4);
    v61 = vdupq_lane_s32(v60, 0);
    *v60.i16 = v29;
    v62 = vdupq_lane_s16(v60, 0);
    *v60.i16 = v30;
    v63 = vdupq_lane_s16(v60, 0);
    *v60.i16 = v31;
    v64 = vdupq_lane_s16(v60, 0);
    v352 = v64;
    *v64.i16 = v32;
    v65 = vdupq_lane_s16(*v64.i8, 0);
    v351 = v65;
    *v65.i16 = v33;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    v67 = v23[15].u8[4];
    if (v67 >= 0x11)
    {
      v68 = 0;
    }

    else
    {
      v68 = 16 - v67;
    }

    v334 = v20[1];
    v69 = (v21[1] + v334 * (v16 / 2) + v12);
    v70 = (*v21 + v26 * v16 + v12);
    v71 = v13 & 0xFFFFFFFE;
    v72 = v19[1] + v25 * (v314 / 2) + 2 * v315;
    v73 = (*v19 + v24 * v314 + 2 * v315);
    v74 = v68;
    v322 = v13 & 0xFFFFFFF8;
    v377 = v28;
    v75 = v29;
    v376 = v30;
    v350 = v31;
    v373 = v32;
    v375 = v33;
    __asm { FCVT            H9, S21 }

    v349 = *&_Q9;
    LODWORD(_Q9) = v23[13].i32[0];
    v370 = v23[4].f32[1];
    __asm { FCVT            H11, S28 }

    v346 = _H11;
    v369 = v23[5].f32[0];
    __asm { FCVT            H11, S14 }

    v78 = v59;
    _S28 = v23[5].i32[1];
    __asm { FCVT            H10, S28 }

    v345 = _H10;
    v368 = v23[9].f32[0];
    __asm { FCVT            H10, S23 }

    v82 = v61;
    v367 = v23[9].f32[1];
    __asm { FCVT            H4, S24 }

    v84 = v62;
    v366 = v23[10].f32[0];
    __asm { FCVT            H12, S25 }

    v86 = v63;
    v365 = v23[10].f32[1];
    __asm { FCVT            H13, S3 }

    v88 = _H11;
    v364 = v23[11].f32[0];
    __asm { FCVT            H11, S29 }

    v90 = v78;
    v91 = v66;
    __asm { FCVT            H0, S19 }

    v340 = _H0;
    v93 = v91;
    v363 = v23[12].f32[0];
    __asm { FCVT            H8, S8 }

    v362 = v23[12].f32[1];
    __asm { FCVT            H0, S31 }

    v339 = _H0;
    v348 = *&_Q9;
    __asm { FCVT            H9, S9 }

    v96 = vdupq_n_s16(-v68);
    v97 = a8.i64[0];
    v98 = v378;
    v99 = a10.i64[0];
    v360 = a9.f32[0];
    v358 = a5.f32[0];
    v359 = v39;
    v336 = a5.f32[1];
    v337 = a9.f32[1];
    v356 = a4.f32[0];
    v357 = v90;
    v335 = a4.f32[1];
    v100 = 0uLL;
    v101.i64[0] = 0x9000900090009000;
    v101.i64[1] = 0x9000900090009000;
    v379 = _H11;
    v374 = v96;
    v328 = v17;
    v329 = v13;
    v371 = v13 - 7;
    v326 = v25;
    v327 = v24;
    v325 = *v20;
    v323 = v68;
    v324 = v13 & 0xFFFFFFFE;
    v361 = v52;
    v354 = v84;
    v355 = v82;
    v353 = v86;
    v347 = v58;
    v343 = _H4;
    v344 = _H10;
    v341 = _H13;
    v342 = _H12;
    v338 = _Q9;
    do
    {
      result = (v73->i64 + v24);
      v102 = v70 + v26;
      if (v13 < 8)
      {
        v196 = 0;
        v195 = v69;
        v106 = (v70 + v26);
        v105 = v72;
        v104 = (v73 + v24);
      }

      else
      {
        v333 = v22;
        v103 = 0;
        v330 = (v73->i64 + v24);
        v331 = v70 + v26;
        v104 = (v73 + v24);
        v332 = v72;
        v105 = v72;
        v106 = (v70 + v26);
        do
        {
          v107 = *v105++;
          v108 = vcvtq_f16_u16(vshlq_u16(v107, v96));
          v109 = vmlaq_f16(v51, v98, v108);
          v110 = vmlaq_f16(v52, v50, v108);
          v111 = vtrn2q_s16(v109, v109);
          v112 = vtrn1q_s16(v109, v109);
          v113 = vuzp1q_s16(v110, v108);
          v114 = *v73++;
          *v113.i8 = vadd_f16(*v113.i8, *&vuzp2q_s16(v110, v113));
          v115 = vcvtq_f16_u16(vshlq_u16(v114, v96));
          v116 = *v104++;
          v117 = vzip1q_s16(v113, v113);
          v118 = vsubq_f16(v115, v39);
          v119 = vsubq_f16(vcvtq_f16_u16(vshlq_u16(v116, v96)), v39);
          v120 = vmlaq_n_f16(v117, v118, v349);
          v121 = vmlaq_n_f16(v112, v118, v349);
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v111, v118, v349), v100), v101));
          v123 = v122.u16[2];
          v124 = v122.u16[3];
          v125 = v122.u16[4];
          v126 = v122.u16[5];
          v127 = v122.u16[6];
          v101.i64[0] = 0x9000900090009000;
          v101.i64[1] = 0x9000900090009000;
          v128.i16[0] = *&v48[2 * v122.u16[0]];
          v129 = v122.u16[7];
          v130 = &v48[2 * v122.u16[1]];
          v131 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v101));
          v132 = &v48[2 * v123];
          v133 = &v48[2 * v124];
          v134 = &v48[2 * v125];
          v135 = &v48[2 * v126];
          v136 = &v48[2 * v127];
          v128.i16[1] = *v130;
          v137 = &v48[2 * v129];
          v138 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v121, 0), v101));
          v128.i16[2] = *v132;
          v139.i16[0] = *&v48[2 * v138.u16[0]];
          v140.i16[0] = *&v48[2 * v131.u16[0]];
          v141 = &v48[2 * v138.u16[2]];
          v142 = &v48[2 * v138.u16[3]];
          v143 = &v48[2 * v138.u16[4]];
          v144 = &v48[2 * v138.u16[5]];
          v145 = &v48[2 * v138.u16[6]];
          v146 = &v48[2 * v138.u16[7]];
          v139.i16[1] = *&v48[2 * v138.u16[1]];
          v147 = &v48[2 * v131.u16[5]];
          v148 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v111, v119, v349), 0), v101));
          v111.i16[0] = *&v48[2 * v148.u16[0]];
          v149 = &v48[2 * v131.u16[6]];
          v139.i16[2] = *v141;
          v150 = &v48[2 * v131.u16[7]];
          v111.i16[1] = *&v48[2 * v148.u16[1]];
          v128.i16[3] = *v133;
          v151 = &v48[2 * v148.u16[5]];
          v140.i16[1] = *&v48[2 * v131.u16[1]];
          v111.i16[2] = *&v48[2 * v148.u16[2]];
          v139.i16[3] = *v142;
          v111.i16[3] = *&v48[2 * v148.u16[3]];
          v152 = v148.u16[7];
          v128.i16[4] = *v134;
          v153 = &v48[2 * v148.u16[6]];
          v111.i16[4] = *&v48[2 * v148.u16[4]];
          v140.i16[2] = *&v48[2 * v131.u16[2]];
          v154 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v117, v119, v349), 0), v101));
          v139.i16[4] = *v143;
          v117.i16[0] = *&v48[2 * v154.u16[0]];
          v111.i16[5] = *v151;
          v128.i16[5] = *v135;
          v140.i16[3] = *&v48[2 * v131.u16[3]];
          v139.i16[5] = *v144;
          v111.i16[6] = *v153;
          v117.i16[1] = *&v48[2 * v154.u16[1]];
          v128.i16[6] = *v136;
          v117.i16[2] = *&v48[2 * v154.u16[2]];
          v117.i16[3] = *&v48[2 * v154.u16[3]];
          v140.i16[4] = *&v48[2 * v131.u16[4]];
          v117.i16[4] = *&v48[2 * v154.u16[4]];
          v139.i16[6] = *v145;
          v155 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v112, v119, v349), 0), v101));
          v111.i16[7] = *&v48[2 * v152];
          v154.i16[0] = *&v48[2 * v155.u16[0]];
          v117.i16[5] = *&v48[2 * v154.u16[5]];
          v128.i16[7] = *v137;
          v140.i16[5] = *v147;
          v139.i16[7] = *v146;
          v117.i16[6] = *&v48[2 * v154.u16[6]];
          v140.i16[6] = *v149;
          v154.i16[1] = *&v48[2 * v155.u16[1]];
          v154.i16[2] = *&v48[2 * v155.u16[2]];
          v140.i16[7] = *v150;
          v154.i16[3] = *&v48[2 * v155.u16[3]];
          v154.i16[4] = *&v48[2 * v155.u16[4]];
          v117.i16[7] = *&v48[2 * v154.u16[7]];
          v154.i16[5] = *&v48[2 * v155.u16[5]];
          v154.i16[6] = *&v48[2 * v155.u16[6]];
          v154.i16[7] = *&v48[2 * v155.u16[7]];
          v156 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v128, v344), v140, v343), v139, v342);
          v157 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v128, v341), v140, _H11), v139, v340);
          v112.i16[7] = HIWORD(v338);
          v158 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v344), v117, v343), v154, v342);
          v159 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v139, *&v338), v140, v339), v128, _H8);
          v160 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v111, v341), v117, v379), v154, v340);
          v161 = vmlaq_n_f16(vmulq_n_f16(v154, *&v338), v117, v339);
          v162 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v156, 0), v101));
          v112.i16[0] = *&v49[2 * v162.u16[0]];
          v163 = vmlaq_n_f16(v161, v111, _H8);
          v164 = &v49[2 * v162.u16[1]];
          v165 = &v49[2 * v162.u16[2]];
          v166 = &v49[2 * v162.u16[3]];
          v167 = &v49[2 * v162.u16[4]];
          LOWORD(v141) = v162.i16[6];
          v168 = &v49[2 * v162.u16[5]];
          LOWORD(v150) = v162.i16[7];
          v169 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v157, 0), v101));
          v170 = &v49[2 * v141];
          v128.i16[0] = *&v49[2 * v169.u16[0]];
          v171 = &v49[2 * v150];
          v172 = &v49[2 * v169.u16[1]];
          v173 = &v49[2 * v169.u16[2]];
          v174 = &v49[2 * v169.u16[3]];
          v175 = &v49[2 * v169.u16[4]];
          LOWORD(v141) = v169.i16[6];
          v176 = v169.u16[7];
          v177 = &v49[2 * v169.u16[5]];
          v178 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v159, 0), v101));
          v117.i16[0] = *&v49[2 * v178.u16[0]];
          v179 = &v49[2 * v178.u16[4]];
          _H11 = v379;
          v112.i16[1] = *v164;
          v180 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v158, 0), v101));
          v128.i16[1] = *v172;
          v111.i16[0] = *&v49[2 * v180.u16[0]];
          v117.i16[1] = *&v49[2 * v178.u16[1]];
          v181 = &v49[2 * v178.u16[5]];
          v112.i16[2] = *v165;
          v111.i16[1] = *&v49[2 * v180.u16[1]];
          v128.i16[2] = *v173;
          v182 = &v49[2 * v178.u16[6]];
          v117.i16[2] = *&v49[2 * v178.u16[2]];
          v111.i16[2] = *&v49[2 * v180.u16[2]];
          v112.i16[3] = *v166;
          v183 = &v49[2 * v178.u16[7]];
          v128.i16[3] = *v174;
          v111.i16[3] = *&v49[2 * v180.u16[3]];
          v117.i16[3] = *&v49[2 * v178.u16[3]];
          v111.i16[4] = *&v49[2 * v180.u16[4]];
          v184 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v160, 0), v101));
          v112.i16[4] = *v167;
          v160.i16[0] = *&v49[2 * v184.u16[0]];
          v128.i16[4] = *v175;
          v117.i16[4] = *v179;
          v160.i16[1] = *&v49[2 * v184.u16[1]];
          v111.i16[5] = *&v49[2 * v180.u16[5]];
          v112.i16[5] = *v168;
          v160.i16[2] = *&v49[2 * v184.u16[2]];
          v128.i16[5] = *v177;
          v117.i16[5] = *v181;
          v160.i16[3] = *&v49[2 * v184.u16[3]];
          v111.i16[6] = *&v49[2 * v180.u16[6]];
          v160.i16[4] = *&v49[2 * v184.u16[4]];
          v112.i16[6] = *v170;
          v160.i16[5] = *&v49[2 * v184.u16[5]];
          v128.i16[6] = *&v49[2 * v141];
          v160.i16[6] = *&v49[2 * v184.u16[6]];
          LOWORD(v175) = v184.i16[7];
          v117.i16[6] = *v182;
          v185 = &v49[2 * v180.u16[7]];
          v186 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v163, 0), v101));
          v187 = vuzp1q_s16(v111, v160);
          v156.i16[0] = *&v49[2 * v186.u16[0]];
          v111.i16[7] = *v185;
          v188 = vuzp1q_s16(v112, v128);
          v112.i16[7] = *v171;
          v156.i16[1] = *&v49[2 * v186.u16[1]];
          v156.i16[2] = *&v49[2 * v186.u16[2]];
          v128.i16[7] = *&v49[2 * v176];
          v156.i16[3] = *&v49[2 * v186.u16[3]];
          v156.i16[4] = *&v49[2 * v186.u16[4]];
          v160.i16[7] = *&v49[2 * v175];
          v189 = v117;
          v156.i16[5] = *&v49[2 * v186.u16[5]];
          v156.i16[6] = *&v49[2 * v186.u16[6]];
          v189.i16[7] = *v183;
          v190 = v156;
          v190.i16[7] = *&v49[2 * v186.u16[7]];
          *v70++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v84, v112, v346), v128, v88), v189, v345), v84), v352)));
          v191 = vaddq_f16(vaddq_f16(vaddq_f16(v188, vuzp2q_s16(v112, v128)), v187), vuzp2q_s16(v111, v160));
          v192 = vtrn2q_s16(v189, v189);
          v96 = v374;
          v193 = vaddq_f16(vtrn1q_s16(v117, v117), v192);
          v100 = 0uLL;
          *v106++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v84, v111, v346), v160, v88), v190, v345), v84), v352)));
          v194 = vtrn2q_s16(v190, v190);
          v98 = v378;
          *&v69[v103] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v86, v58, vzip1q_s16(v191, v191)), v90, vzip2q_s16(v191, v191)), v82, vaddq_f16(vaddq_f16(v193, vtrn1q_s16(v156, v156)), v194)), v351), v93)));
          v103 += 8;
        }

        while (v103 < v371);
        v195 = &v69[v103];
        v196 = v322;
        v74 = v323;
        v17 = v328;
        v13 = v329;
        v22 = v333;
        v25 = v326;
        v24 = v327;
        v26 = v325;
        v71 = v324;
        v102 = v331;
        v72 = v332;
        result = v330;
      }

      for (; v196 < v71; v86 = v353)
      {
        v197 = (v105->u16[1] >> v74) - v377;
        v198 = *(&v97 + 1) * v197;
        v199 = _S21 * ((v73->u16[0] >> v74) - v37);
        v200 = (*(&v97 + 1) * v197) + v199;
        v201 = 8191.0;
        if (v200 <= 8191.0)
        {
          v201 = (*(&v97 + 1) * v197) + v199;
          if (v200 < 0.0)
          {
            v201 = 0.0;
          }
        }

        v202 = (v105->u16[0] >> v74) - v377;
        v203 = (*(&v99 + 1) * v197) + (v202 * *&v99);
        v204 = 8191.0;
        if ((v199 + v203) <= 8191.0)
        {
          v204 = v199 + v203;
          if ((v199 + v203) < 0.0)
          {
            v204 = 0.0;
          }
        }

        v205 = *&v97 * v202;
        v206 = (*&v97 * v202) + *(&v97 + 1);
        v207 = 8191.0;
        if (v206 <= 8191.0)
        {
          v207 = (*&v97 * v202) + *(&v97 + 1);
          if (v206 < 0.0)
          {
            v207 = 0.0;
          }
        }

        v208 = v50;
        v209 = _S21 * ((v73->u16[1] >> v74) - v37);
        v210 = 8191.0;
        if ((v198 + v209) <= 8191.0)
        {
          v210 = v198 + v209;
          if ((v198 + v209) < 0.0)
          {
            v210 = 0.0;
          }
        }

        v211 = 8191.0;
        if ((v203 + v209) <= 8191.0)
        {
          v211 = v203 + v209;
          if ((v203 + v209) < 0.0)
          {
            v211 = 0.0;
          }
        }

        v212 = v205 + v209;
        v213 = 8191.0;
        if (v212 <= 8191.0)
        {
          v213 = v212;
          if (v212 < 0.0)
          {
            v213 = 0.0;
          }
        }

        v214 = _S21 * ((v104->u16[0] >> v74) - v37);
        v215 = 8191.0;
        if ((v198 + v214) <= 8191.0)
        {
          v215 = v198 + v214;
          if ((v198 + v214) < 0.0)
          {
            v215 = 0.0;
          }
        }

        v216 = 8191.0;
        if ((v203 + v214) <= 8191.0)
        {
          v216 = v203 + v214;
          if ((v203 + v214) < 0.0)
          {
            v216 = 0.0;
          }
        }

        v217 = v205 + v214;
        v218 = (v205 + v214) <= 8191.0;
        v219 = 8191.0;
        if (v218)
        {
          v219 = v217;
          if (v217 < 0.0)
          {
            v219 = 0.0;
          }
        }

        v220 = _S21 * ((v104->u16[1] >> v74) - v37);
        v221 = v198 + v220;
        v222 = 8191.0;
        if (v221 <= 8191.0)
        {
          v222 = v221;
          if (v221 < 0.0)
          {
            v222 = 0.0;
          }
        }

        v223 = v203 + v220;
        v218 = (v203 + v220) <= 8191.0;
        v224 = 8191.0;
        if (v218)
        {
          v224 = v223;
          if (v223 < 0.0)
          {
            v224 = 0.0;
          }
        }

        v225 = v208;
        v226 = _S21;
        v227 = v37;
        v228 = v205 + v220;
        v229 = 8191.0;
        if (v228 <= 8191.0)
        {
          v229 = v228;
          if (v228 < 0.0)
          {
            v229 = 0.0;
          }
        }

        _H4 = *&v48[2 * llroundf(fminf(fmaxf(v201, 0.0), 8191.0))];
        __asm { FCVT            S4, H4 }

        _H6 = *&v48[2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = *&v48[2 * llroundf(fminf(fmaxf(v207, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        _H9 = *&v48[2 * llroundf(fminf(fmaxf(v210, 0.0), 8191.0))];
        __asm { FCVT            S9, H9 }

        _H10 = *&v48[2 * llroundf(fminf(fmaxf(v211, 0.0), 8191.0))];
        _H31 = *&v48[2 * llroundf(fminf(fmaxf(v213, 0.0), 8191.0))];
        __asm
        {
          FCVT            S10, H10
          FCVT            S31, H31
        }

        _H0 = *&v48[2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v48[2 * llroundf(fminf(fmaxf(v216, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v48[2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H5 = *&v48[2 * llroundf(fminf(fmaxf(v222, 0.0), 8191.0))];
        __asm { FCVT            S5, H5 }

        _H12 = *&v48[2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0))];
        _H13 = *&v48[2 * llroundf(fminf(fmaxf(v229, 0.0), 8191.0))];
        __asm
        {
          FCVT            S12, H12
          FCVT            S13, H13
        }

        v254 = ((v367 * _S6) + (_S4 * v368)) + (_S7 * v366);
        v255 = ((v364 * _S6) + (_S4 * v365)) + (_S7 * _S19);
        _S4 = ((v362 * _S6) + (_S4 * v363)) + (_S7 * v348);
        _S7 = ((v367 * _S10) + (_S9 * v368)) + (_S31 * v366);
        v258 = ((v364 * _S10) + (_S9 * v365)) + (_S31 * _S19);
        v259 = ((v362 * _S10) + (_S9 * v363)) + (_S31 * v348);
        v260 = ((v367 * _S1) + (_S0 * v368)) + (_S2 * v366);
        v261 = ((v364 * _S1) + (_S0 * v365)) + (_S2 * _S19);
        v262 = ((v362 * _S1) + (_S0 * v363)) + (_S2 * v348);
        v263 = ((v367 * _S12) + (_S5 * v368)) + (_S13 * v366);
        v264 = ((v364 * _S12) + (_S5 * v365)) + (_S13 * _S19);
        _S5 = ((v362 * _S12) + (_S5 * v363)) + (_S13 * v348);
        LOWORD(_S0) = *&v49[2 * llroundf(fminf(fmaxf(v254, 0.0), 8191.0))];
        __asm { FCVT            S6, H0 }

        LOWORD(_S0) = *&v49[2 * llroundf(fminf(fmaxf(v255, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        LOWORD(_S1) = *&v49[2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        LOWORD(_S2) = *&v49[2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v258, 0.0), 8191.0))];
        LOWORD(_S7) = *&v49[2 * llroundf(fminf(fmaxf(v259, 0.0), 8191.0))];
        __asm
        {
          FCVT            S31, H4
          FCVT            S7, H7
        }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v260, 0.0), 8191.0))];
        __asm { FCVT            S12, H4 }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v261, 0.0), 8191.0))];
        __asm { FCVT            S10, H4 }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v262, 0.0), 8191.0))];
        __asm { FCVT            S9, H4 }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v263, 0.0), 8191.0))];
        __asm { FCVT            S14, H4 }

        LOWORD(_S4) = *&v49[2 * llroundf(fminf(fmaxf(v264, 0.0), 8191.0))];
        LOWORD(_S5) = *&v49[2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0))];
        __asm
        {
          FCVT            S4, H4
          FCVT            S13, H5
        }

        v278 = (((v369 * _S0) + (v370 * _S6)) + (v372 * _S1)) + v75;
        if (v278 < v75)
        {
          v279 = v75;
        }

        else
        {
          v279 = (((v369 * _S0) + (v370 * _S6)) + (v372 * _S1)) + v75;
        }

        v218 = v278 <= v350;
        v280 = (((v369 * _S31) + (v370 * _S2)) + (v372 * _S7)) + v75;
        if (!v218)
        {
          v279 = v350;
        }

        v281 = llroundf(v279);
        if (v280 < v75)
        {
          v282 = v75;
        }

        else
        {
          v282 = (((v369 * _S31) + (v370 * _S2)) + (v372 * _S7)) + v75;
        }

        v218 = v280 <= v350;
        v283 = (((v369 * _S10) + (v370 * _S12)) + (v372 * _S9)) + v75;
        if (!v218)
        {
          v282 = v350;
        }

        v284 = llroundf(v282);
        if (v283 < v75)
        {
          v285 = v75;
        }

        else
        {
          v285 = (((v369 * _S10) + (v370 * _S12)) + (v372 * _S9)) + v75;
        }

        v218 = v283 <= v350;
        v286 = (((v369 * _S4) + (v370 * _S14)) + (v372 * _S13)) + v75;
        if (!v218)
        {
          v285 = v350;
        }

        v287 = llroundf(v285);
        if (v286 < v75)
        {
          v288 = v75;
        }

        else
        {
          v288 = (((v369 * _S4) + (v370 * _S14)) + (v372 * _S13)) + v75;
        }

        if (v286 <= v350)
        {
          v289 = v288;
        }

        else
        {
          v289 = v350;
        }

        v290 = ((_S6 + _S2) + _S12) + _S14;
        v291 = ((_S0 + _S31) + _S10) + _S4;
        v70->i8[0] = v281;
        v70->i8[1] = v284;
        v106->i8[0] = v287;
        v106->i8[1] = llroundf(v289);
        v292 = ((_S1 + _S7) + _S9) + _S13;
        v293 = ((v376 + (v290 * v360)) + (v291 * v358)) + (v292 * v356);
        v294 = v375;
        if (v293 <= v375)
        {
          v294 = ((v376 + (v290 * v360)) + (v291 * v358)) + (v292 * v356);
          if (v293 < v373)
          {
            v294 = v373;
          }
        }

        v295 = ((v376 + (v290 * v337)) + (v291 * v336)) + (v292 * v335);
        *v195 = llroundf(v294);
        v296 = v375;
        v37 = v227;
        _S21 = v226;
        v98 = v378;
        _H11 = v379;
        v50 = v225;
        v58 = v347;
        v90 = v357;
        v96 = v374;
        v101.i64[0] = 0x9000900090009000;
        v101.i64[1] = 0x9000900090009000;
        if (v295 <= v375)
        {
          v296 = v295;
          if (v295 < v373)
          {
            v296 = v373;
          }
        }

        v196 += 2;
        v105 = (v105 + 4);
        v73 = (v73 + 4);
        v104 = (v104 + 4);
        v195[1] = llroundf(v296);
        v70 = (v70 + 2);
        v106 = (v106 + 2);
        v195 += 2;
        v39 = v359;
        v52 = v361;
        v84 = v354;
        v82 = v355;
      }

      v73 = (result + v24);
      v72 += v25;
      v70 = &v102[v26];
      v69 += v334;
      v22 += 2;
      v100 = 0uLL;
    }

    while (v22 < v17);
  }

  if (v317 && v316)
  {
    v297 = v318;
    if (v17 >= 1)
    {
      v298 = 0;
      v299 = v317 + v313 * v314 + 2 * v315;
      do
      {
        if (v13 >= 1)
        {
          v300 = v13;
          v301 = v297;
          v302 = v299;
          do
          {
            v303 = *v302++;
            *v301++ = llroundf(v303 * 0.0038911);
            --v300;
          }

          while (v300);
        }

        v299 += v313;
        v297 += v319;
        ++v298;
      }

      while (v17 > v298);
    }
  }

  else
  {
    v304 = v318;
    if (v316 && v17 >= 1)
    {
      v305 = 0;
      v306 = vdupq_n_s64(v13 - 1);
      do
      {
        if (v13 >= 1)
        {
          v307 = 0;
          do
          {
            v308 = vdupq_n_s64(v307);
            v309 = vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDDB0)));
            if (vuzp1_s8(vuzp1_s16(v309, *v306.i8), *v306.i8).u8[0])
            {
              v304[v307] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v309, *&v306), *&v306).i8[1])
            {
              v304[v307 + 1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v306, vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDDA0)))), *&v306).i8[2])
            {
              v304[v307 + 2] = -1;
              v304[v307 + 3] = -1;
            }

            v310 = vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD90)));
            if (vuzp1_s8(*&v306, vuzp1_s16(v310, *&v306)).i32[1])
            {
              v304[v307 + 4] = -1;
            }

            if (vuzp1_s8(*&v306, vuzp1_s16(v310, *&v306)).i8[5])
            {
              v304[v307 + 5] = -1;
            }

            if (vuzp1_s8(*&v306, vuzp1_s16(*&v306, vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD80))))).i8[6])
            {
              v304[v307 + 6] = -1;
              v304[v307 + 7] = -1;
            }

            v311 = vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD70)));
            if (vuzp1_s8(vuzp1_s16(v311, *v306.i8), *v306.i8).u8[0])
            {
              v304[v307 + 8] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v311, *&v306), *&v306).i8[1])
            {
              v304[v307 + 9] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v306, vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD60)))), *&v306).i8[2])
            {
              v304[v307 + 10] = -1;
              v304[v307 + 11] = -1;
            }

            v312 = vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD50)));
            if (vuzp1_s8(*&v306, vuzp1_s16(v312, *&v306)).i32[1])
            {
              v304[v307 + 12] = -1;
            }

            if (vuzp1_s8(*&v306, vuzp1_s16(v312, *&v306)).i8[5])
            {
              v304[v307 + 13] = -1;
            }

            if (vuzp1_s8(*&v306, vuzp1_s16(*&v306, vmovn_s64(vcgeq_u64(v306, vorrq_s8(v308, xmmword_18FECDD40))))).i8[6])
            {
              v304[v307 + 14] = -1;
              v304[v307 + 15] = -1;
            }

            v307 += 16;
          }

          while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v307);
        }

        v304 += v319;
        ++v305;
      }

      while (v17 > v305);
    }
  }

  *(v321 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_xf420_TRC_Mat_TRC_420vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v13 = a3;
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
LABEL_71:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v59 - v21);
    bzero(&v59 - v21, v22);
  }

  v23 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v67, v68), v71), vceqq_s64(vaddq_s64(v69, v70), v72))));
  v24 = v67.i64[0];
  v25 = v68.i64[0];
  v26 = v70.i64[0];
  v27 = v69.i64[0];
  if (v67.i8[0])
  {
    v24 = v67.i64[0] + 1;
    v27 = v69.i64[0] + 1;
    v25 = v68.i64[0] - 1;
    v26 = v70.i64[0] - 1;
  }

  v28 = a9;
  v29 = v71.i64[0];
  v30 = v72.i64[0];
  if (v25)
  {
    if (v23.i8[4] & 1 | v23.i8[0] & 1 || (v31 = v26 + 1 + v27, v32 = 2 * v31, 2 * v31 > *a4) || ((2 * (v31 + (v31 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > a4[1] || (v33 = a4[2], v32 > v33) && v33 || (v34 = v25 + 1 + v24, v34 > *a8) || ((v34 + (v34 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a8[1] || (v35 = a8[2], v34 > v35) && v35)
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
    if (v23.i8[6] & 1 | v23.i8[2] & 1 || (v42 = v37 + 1 + v38, (*a4 * v42) > *a5) || (a4[1] * (v42 / 2)) > a5[1] || (a4[2] * v42) > a5[2] || (v43 = v36 + 1 + v39, *a8 * v43 > *a9) || a8[1] * (v43 / 2) > a9[1] || a8[2] * v43 > a9[2])
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

  if (v25 + v24 > v29)
  {
    v25 = v29 - v24;
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
  v48 = (v46 * *a4 + 2 * (v44 + v27)) > *a5;
  v64 = v24;
  v65 = v13;
  v62 = a9;
  v63 = v27;
  v60 = v30;
  v61 = v29;
  v70.i64[0] = v39;
  v69.i64[0] = v38;
  v72.i64[0] = v40;
  v71.i64[0] = v41;
  if (v48)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 8) && a4[1] * ((v45 + v38 + 1) / 2 - 1) + 4 * ((v47 + 1 + ((v47 + 1) >> 63)) >> 1) > a5[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(v13 + 16) && (2 * v47 + a4[2] * v46) > a5[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  v52 = v45 + v39 - 1;
  v53 = v44 + v24;
  if (v44 + v24 + *a8 * v52 > *a9)
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a8[1] * ((v45 + v39 + 1) / 2 - 1) > a9[1])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
    goto LABEL_64;
  }

  if (*(a7 + 16) && v53 + a8[2] * v52 > a9[2])
  {
    v49 = a5;
    v50 = a8;
    v51 = v15;
LABEL_64:
    fig_log_get_emitter();
    v20 = FigSignalErrorAtGM();
    v15 = v51;
    a8 = v50;
    a5 = v49;
    v24 = v64;
    v13 = v65;
    v28 = v62;
    v27 = v63;
    v30 = v60;
    v29 = v61;
    v39 = v70.i64[0];
    v38 = v69.i64[0];
    v40 = v72.i64[0];
    v41 = v71.i64[0];
    if (v20)
    {
      goto LABEL_70;
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
  v19[14] = v24;
  v19[7] = v13;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = v29;
  v19[15] = v39;
  v19[16] = a7;
  v19[17] = a8;
  v19[18] = v28;
  v19[19] = v66;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_xf420_TRC_Mat_TRC_420vf_GCD);
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

LABEL_70:
  if (v15 == 255)
  {
    goto LABEL_71;
  }

  return v20;
}