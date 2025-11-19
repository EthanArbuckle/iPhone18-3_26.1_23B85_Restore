unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v12 = **(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 17);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    *&a5 = v18;
    LOWORD(v18) = *(v11 + 144);
    v20 = v18;
    LOWORD(v18) = *(v11 + 146);
    v21 = v18;
    LOWORD(v18) = *(v11 + 148);
    v22 = v18;
    LOWORD(v18) = *(v11 + 150);
    v23 = v18;
    LOWORD(v18) = *(v11 + 152);
    v24 = v18;
    v25 = *(v11 + 36);
    v26 = *(v11 + 40);
    v27 = *(v11 + 44);
    v96 = *(v11 + 52);
    v97 = *(v11 + 48);
    v94 = *(v11 + 60);
    v95 = *(v11 + 56);
    v92 = *(v11 + 68);
    v93 = *(v11 + 64);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v35 = *(v11 + 96);
    v34 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = *(v11 + 108);
    v38 = v11 + 164;
    v39 = v11 + 16548;
    v40 = v11 + 32932;
    v41 = *(v11 + 112);
    v42 = *(v11 + 116);
    v43 = *(v11 + 120);
    v44 = *(result + 14);
    v45 = v7 + *(result + 15);
    v46 = *(result + 28) * a2 / v5 + *(result + 44);
    v47 = *(v11 + 132);
    if (v47 >= 0x11)
    {
      v48 = 0;
    }

    else
    {
      v48 = 16 - v47;
    }

    v49 = v13[2];
    if (v49)
    {
      v50 = v49 + v17 * v45 + 2 * v44;
    }

    else
    {
      v50 = 0;
    }

    v51 = v13[1];
    _ZF = v51 == 0;
    v53 = v51 + v16 * v45 + 2 * v44;
    if (_ZF)
    {
      v53 = 0;
    }

    v54 = *v13 + v15 * v45 + 2 * v44;
    v55 = **(result + 7) + v46 * v12 + 4 * *(result + 36);
    v56 = v48;
    v57 = vdup_lane_s32(*&a5, 0);
    do
    {
      if (v10 >= 1)
      {
        v58 = v10;
        v59 = v50;
        v60 = v53;
        v61 = v54;
        v62 = v55;
        do
        {
          v64 = *v62++;
          v63 = v64;
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v64), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v57), v19), 0), vdup_n_s32(0x45FFF800u))));
          _D7.i16[0] = *(v38 + 2 * _D7.u32[0]);
          __asm { FCVT            S21, H7 }

          _D7.i16[0] = *(v38 + 2 * _D7.u32[1]);
          __asm { FCVT            S22, H7 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v19 * ((v64 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S23, H0 }

          v73 = (((v41 * _S22) + (v37 * _S21)) + (v42 * _S23)) + (v43 * fmaxf(_S21, fmaxf(_S22, _S23)));
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          _H0 = *(v39 + 2 * llroundf(v74));
          __asm { FCVT            S0, H0 }

          _S7 = _S21 * _S0;
          v78 = _S22 * _S0;
          v79 = _S23 * _S0;
          v80 = ((v29 * v78) + (_S7 * v28)) + (v79 * v30);
          v81 = ((v32 * v78) + (_S7 * v31)) + (v79 * v33);
          _S0 = ((v34 * v78) + (_S7 * v35)) + (v79 * v36);
          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v80, 0.0), 8191.0)));
          __asm { FCVT            S21, H7 }

          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S22, H7 }

          LOWORD(_S0) = *(v40 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S23, H0 }

          v86 = (((v26 * _S22) + (v25 * _S21)) + (v27 * _S23)) + v20;
          v87 = v22;
          if (v86 <= v22)
          {
            v87 = (((v26 * _S22) + (v25 * _S21)) + (v27 * _S23)) + v20;
            if (v86 < v20)
            {
              v87 = v20;
            }
          }

          *v61++ = llroundf(v87) << v56;
          if (v60)
          {
            v88 = ((v21 + (_S21 * v97)) + (_S22 * v96)) + (_S23 * v95);
            v89 = v24;
            if (v88 <= v24)
            {
              v89 = ((v21 + (_S21 * v97)) + (_S22 * v96)) + (_S23 * v95);
              if (v88 < v23)
              {
                v89 = v23;
              }
            }

            v90 = ((v21 + (_S21 * v94)) + (_S22 * v93)) + (_S23 * v92);
            *v60 = llroundf(v89) << v56;
            v91 = v24;
            if (v90 <= v24)
            {
              v91 = v90;
              if (v90 < v23)
              {
                v91 = v23;
              }
            }

            v60[1] = llroundf(v91) << v56;
            v60 += 2;
          }

          if (v59)
          {
            *v59++ = 21845 * (v63 >> 30);
          }

          --v58;
        }

        while (v58);
      }

      v55 += v12;
      v54 += v15;
      v53 += v16;
      v50 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
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
LABEL_26:
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
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v48, v28);
  v30 = (*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5;
  v44 = a9;
  v46 = v27;
  if (v30)
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else
  {
    v34 = vaddq_s64(v50, v28);
    v35 = v34.i64[1] + v27.i64[1];
    if ((*a8 * (v34.i64[1] + v27.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v31 = v14;
        v32 = a8;
        v33 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_20;
        }

        v31 = v14;
        v32 = a8;
        v33 = a7;
      }
    }

    else
    {
      v31 = v14;
      v32 = a8;
      v33 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v33;
  a8 = v32;
  v14 = v31;
  v24 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_xf444_GCD);
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

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8)
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
    v21 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 140);
    *&a5 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 144);
    v22 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 146);
    v23 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 148);
    v24 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 150);
    v25 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v86 = *(v14 + 52);
    v87 = *(v14 + 48);
    v84 = *(v14 + 60);
    v85 = *(v14 + 56);
    v30 = *(v14 + 68);
    v83 = *(v14 + 64);
    v31 = *(v14 + 72);
    v32 = *(v14 + 76);
    v33 = *(v14 + 80);
    v34 = *(v14 + 84);
    v35 = *(v14 + 88);
    v36 = *(v14 + 92);
    v38 = *(v14 + 96);
    v37 = *(v14 + 100);
    v39 = *(v14 + 104);
    v40 = v14 + 164;
    v41 = v14 + 16548;
    v42 = *(result + 14);
    v43 = v10 + *(result + 15);
    v44 = *(result + 28) * a2 / v8 + *(result + 44);
    v45 = *(v14 + 132);
    if (v45 >= 0x11)
    {
      v46 = 0;
    }

    else
    {
      v46 = 16 - v45;
    }

    v47 = v16[2];
    if (v47)
    {
      v48 = v47 + v20 * v43 + 2 * v42;
    }

    else
    {
      v48 = 0;
    }

    v49 = v16[1];
    _ZF = v49 == 0;
    v51 = v49 + v19 * v43 + 2 * v42;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = *v16 + v18 * v43 + 2 * v42;
    v53 = **(result + 7) + v44 * v15 + 4 * *(result + 36);
    v54 = v46;
    v55 = vdup_lane_s32(*&a5, 0);
    do
    {
      if (v13 >= 1)
      {
        v56 = v13;
        v57 = v53;
        v58 = v48;
        v59 = v51;
        v60 = v52;
        do
        {
          v62 = *v57++;
          v61 = v62;
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v62), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v55), v21), 0), vdup_n_s32(0x45FFF800u))));
          _D7.i16[0] = *(v40 + 2 * _D7.u32[0]);
          __asm { FCVT            S7, H7 }

          _H19 = *(v40 + 2 * _D7.u32[1]);
          __asm { FCVT            S19, H19 }

          _H5 = *(v40 + 2 * llroundf(fminf(fmaxf(v21 * ((v62 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v71 = ((v32 * _S19) + (*_D7.i32 * v31)) + (_S5 * v33);
          v72 = ((v35 * _S19) + (*_D7.i32 * v34)) + (_S5 * v36);
          _S5 = ((v37 * _S19) + (*_D7.i32 * v38)) + (_S5 * v39);
          _D7.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm { FCVT            S15, H7 }

          _D7.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S19, H7 }

          LOWORD(_S5) = *(v41 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          v77 = (((v28 * _S19) + (v27 * _S15)) + (v29 * _S20)) + v22;
          v78 = v24;
          if (v77 <= v24)
          {
            v78 = (((v28 * _S19) + (v27 * _S15)) + (v29 * _S20)) + v22;
            if (v77 < v22)
            {
              v78 = v22;
            }
          }

          *v60++ = llroundf(v78) << v54;
          if (v59)
          {
            v79 = ((v23 + (_S15 * v87)) + (_S19 * v86)) + (_S20 * v85);
            v80 = v26;
            if (v79 <= v26)
            {
              v80 = ((v23 + (_S15 * v87)) + (_S19 * v86)) + (_S20 * v85);
              if (v79 < v25)
              {
                v80 = v25;
              }
            }

            v81 = ((v23 + (_S15 * v84)) + (_S19 * v83)) + (_S20 * v30);
            *v59 = llroundf(v80) << v54;
            v82 = v26;
            if (v81 <= v26)
            {
              v82 = v81;
              if (v81 < v25)
              {
                v82 = v25;
              }
            }

            v59[1] = llroundf(v82) << v54;
            v59 += 2;
          }

          if (v58)
          {
            *v58++ = 21845 * (v61 >> 30);
          }

          --v56;
        }

        while (v56);
      }

      v53 += v15;
      v52 += v18;
      v51 += v19;
      v48 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
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
LABEL_26:
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
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v48, v28);
  v30 = (*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5;
  v44 = a9;
  v46 = v27;
  if (v30)
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else
  {
    v34 = vaddq_s64(v50, v28);
    v35 = v34.i64[1] + v27.i64[1];
    if ((*a8 * (v34.i64[1] + v27.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v31 = v14;
        v32 = a8;
        v33 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_20;
        }

        v31 = v14;
        v32 = a8;
        v33 = a7;
      }
    }

    else
    {
      v31 = v14;
      v32 = a8;
      v33 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v33;
  a8 = v32;
  v14 = v31;
  v24 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_xf444_GCD);
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

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_xf444_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 24);
    v15 = *(result + 19);
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *&v22 = *(v15 + 136);
    v23 = *&v22 / *(v15 + 128);
    LOWORD(v22) = *(v15 + 140);
    v24 = v22;
    LOWORD(a5) = *(v15 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v29 = LODWORD(a9);
    v30 = *(v15 + 36);
    v31 = *(v15 + 40);
    v32 = *(v15 + 44);
    v33 = *(v15 + 48);
    v34 = *(v15 + 52);
    v35 = *(v15 + 56);
    v36 = *(v15 + 60);
    v37 = *(v15 + 64);
    v38 = *(v15 + 68);
    v39 = *(result + 14);
    v40 = v11 + *(result + 15);
    v41 = *(result + 28) * a2 / v9 + *(result + 44);
    v42 = *(v15 + 132);
    if (v42 >= 0x11)
    {
      v43 = 0;
    }

    else
    {
      v43 = 16 - v42;
    }

    v44 = v17[2];
    if (v44)
    {
      v45 = v44 + v21 * v40 + 2 * v39;
    }

    else
    {
      v45 = 0;
    }

    v46 = v17[1];
    v47 = v46 == 0;
    v48 = v46 + v20 * v40 + 2 * v39;
    if (v47)
    {
      v48 = 0;
    }

    v49 = *v17 + v19 * v40 + 2 * v39;
    v50 = **(result + 7) + v41 * v16 + 4 * *(result + 36);
    v51 = v43;
    do
    {
      if (v14 >= 1)
      {
        v52 = v14;
        v53 = v50;
        v54 = v45;
        v55 = v48;
        v56 = v49;
        do
        {
          v58 = *v53++;
          v57 = v58;
          v59 = v23 * ((v58 & 0x3FF) - v24);
          v60 = v23 * (((v58 >> 10) & 0x3FF) - v24);
          v61 = v23 * (((v58 >> 20) & 0x3FF) - v24);
          v62 = (((v31 * v60) + (v30 * v61)) + (v32 * v59)) + v25;
          v63 = v27;
          if (v62 <= v27)
          {
            v63 = (((v31 * v60) + (v30 * v61)) + (v32 * v59)) + v25;
            if (v62 < v25)
            {
              v63 = v25;
            }
          }

          *v56++ = llroundf(v63) << v51;
          if (v55)
          {
            v64 = ((v26 + (v61 * v33)) + (v60 * v34)) + (v59 * v35);
            v65 = v29;
            if (v64 <= v29)
            {
              v65 = ((v26 + (v61 * v33)) + (v60 * v34)) + (v59 * v35);
              if (v64 < v28)
              {
                v65 = v28;
              }
            }

            v66 = ((v26 + (v61 * v36)) + (v60 * v37)) + (v59 * v38);
            *v55 = llroundf(v65) << v51;
            v67 = v29;
            if (v66 <= v29)
            {
              v67 = v66;
              if (v66 < v28)
              {
                v67 = v28;
              }
            }

            v55[1] = llroundf(v67) << v51;
            v55 += 2;
          }

          if (v54)
          {
            *v54++ = 21845 * (v57 >> 30);
          }

          --v52;
        }

        while (v52);
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

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_BGRA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = v11 + 164;
    v27 = v11 + 16548;
    v28 = v11 + 32932;
    v29 = *(v11 + 104);
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = v7 + *(result + 15);
    v35 = *(result + 28) * a2 / v5 + *(result + 44);
    v36 = *(result + 36);
    v37 = *(v11 + 161);
    v38 = *(v11 + 160);
    v39 = *(v11 + 159);
    v40 = *(v11 + 158);
    v41 = **(result + 16) + v16 * v34 + *(result + 14);
    v43 = *v12;
    v42 = v12[1];
    v44 = v42 + v35 * v15 + 4 * v36;
    if (!v42)
    {
      v44 = 0;
    }

    v45 = vdup_lane_s32(*&a5, 0);
    v46 = v43 + v35 * v14 + 4 * v36;
    v47 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v48 = v10;
        v49 = v46;
        v50 = v41;
        v51 = v44;
        do
        {
          v53 = *v49++;
          v52 = v53;
          if (v51)
          {
            v55 = *v51++;
            LOBYTE(v54) = v55;
          }

          else
          {
            v54 = v52 >> 30;
          }

          _D31 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v52), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v45), v17), 0), v47)));
          _D31.i16[0] = *(v26 + 2 * _D31.u32[0]);
          __asm { FCVT            S31, H31 }

          _H9 = *(v26 + 2 * _D31.u32[1]);
          __asm { FCVT            S8, H9 }

          _H9 = *(v26 + 2 * llroundf(fminf(fmaxf(v17 * ((v52 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S10, H9 }

          v66 = (((v31 * _S8) + (v30 * _S31)) + (v32 * _S10)) + (v33 * fmaxf(_S31, fmaxf(_S8, _S10)));
          v67 = 8191.0;
          if (v66 <= 8191.0)
          {
            v67 = v66;
            if (v66 < 0.0)
            {
              v67 = 0.0;
            }
          }

          _H9 = *(v27 + 2 * llroundf(v67));
          __asm { FCVT            S11, H9 }

          v70 = _S31 * _S11;
          v71 = _S8 * _S11;
          v72 = _S10 * _S11;
          if (*(v28 + 2 * llroundf(fminf(fmaxf(((v19 * v71) + (v70 * v18)) + ((_S10 * _S11) * v20), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S10 = 0.0;
            }

            else
            {
              __asm { FCVT            S10, H10 }
            }
          }

          else
          {
            _S10 = 255.0;
          }

          v75 = ((v22 * v71) + (v70 * v21)) + (v72 * v23);
          v76 = ((v25 * v71) + (v70 * v24)) + (v72 * v29);
          v77 = *(v28 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          v78 = *(v28 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          *(v50 + v40) = llroundf(_S10);
          if (v77 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              _S8 = 0.0;
            }

            else
            {
              __asm { FCVT            S8, H8 }
            }
          }

          else
          {
            _S8 = 255.0;
          }

          *(v50 + v39) = llroundf(_S8);
          if (v78 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H31, #0 }

            if (_NF)
            {
              _S31 = 0.0;
            }

            else
            {
              __asm { FCVT            S31, H31 }
            }
          }

          else
          {
            _S31 = 255.0;
          }

          *(v50 + v38) = llroundf(_S31);
          *(v50 + v37) = 85 * v54;
          v50 += 4;
          --v48;
        }

        while (v48);
      }

      v46 += v14;
      v44 += v15;
      v41 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_BGRA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_BGRA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = *(v11 + 104);
    v27 = v11 + 164;
    v28 = v11 + 16548;
    v29 = v7 + *(result + 15);
    v30 = *(result + 28) * a2 / v5 + *(result + 44);
    v31 = *(result + 36);
    v32 = *(v11 + 161);
    v33 = *(v11 + 160);
    v34 = *(v11 + 159);
    v35 = *(v11 + 158);
    v36 = **(result + 16) + v16 * v29 + *(result + 14);
    v38 = *v12;
    v37 = v12[1];
    v39 = v37 + v30 * v15 + 4 * v31;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = vdup_lane_s32(*&a5, 0);
    v41 = v38 + v30 * v14 + 4 * v31;
    v42 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v41;
        v45 = v36;
        v46 = v39;
        do
        {
          v48 = *v44++;
          v47 = v48;
          if (v46)
          {
            v50 = *v46++;
            LOBYTE(v49) = v50;
          }

          else
          {
            v49 = v47 >> 30;
          }

          _D27 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v47), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v40), v17), 0), v42)));
          _D27.i16[0] = *(v27 + 2 * _D27.u32[0]);
          __asm { FCVT            S27, H27 }

          _H28 = *(v27 + 2 * _D27.u32[1]);
          _H30 = *(v27 + 2 * llroundf(fminf(fmaxf(v17 * ((v47 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm
          {
            FCVT            S29, H28
            FCVT            S28, H30
          }

          if (*(v28 + 2 * llroundf(fminf(fmaxf(((v19 * _S29) + (_S27 * v18)) + (_S28 * v20), 0.0), 8191.0))) <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H30 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          v63 = ((v22 * _S29) + (_S27 * v21)) + (_S28 * v23);
          v64 = ((v25 * _S29) + (_S27 * v24)) + (_S28 * v26);
          v65 = *(v28 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          v66 = *(v28 + 2 * llroundf(fminf(fmaxf(v64, 0.0), 8191.0)));
          *(v45 + v35) = llroundf(_S30);
          if (v65 <= COERCE_SHORT_FLOAT(23544))
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

          *(v45 + v34) = llroundf(_S28);
          if (v66 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H27, #0 }

            if (_NF)
            {
              _S27 = 0.0;
            }

            else
            {
              __asm { FCVT            S27, H27 }
            }
          }

          else
          {
            _S27 = 255.0;
          }

          *(v45 + v33) = llroundf(_S27);
          *(v45 + v32) = 85 * v49;
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v41 += v14;
      v39 += v15;
      v36 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_BGRA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_BGRA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_BGRA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    *&v14 = *(v8 + 136);
    v15 = *&v14 / *(v8 + 128);
    LOWORD(v14) = *(v8 + 140);
    v16 = v14;
    v17 = v4 + *(result + 15);
    v18 = *(result + 28) * a2 / v2 + *(result + 44);
    v19 = *(result + 36);
    v20 = *(v8 + 161);
    v21 = *(v8 + 160);
    v22 = *(v8 + 159);
    v23 = *(v8 + 158);
    v24 = **(result + 16) + v13 * v17 + *(result + 14);
    v26 = *v9;
    v25 = v9[1];
    v27 = v25 + v18 * v12 + 4 * v19;
    if (!v25)
    {
      v27 = 0;
    }

    v28 = v26 + v18 * v11 + 4 * v19;
    do
    {
      if (v7 >= 1)
      {
        v29 = v7;
        v30 = v28;
        v31 = v24;
        v32 = v27;
        do
        {
          v34 = *v30++;
          v33 = v34;
          if (v32)
          {
            v36 = *v32++;
            LOBYTE(v35) = v36;
          }

          else
          {
            v35 = v33 >> 30;
          }

          v37 = v15 * (((v33 >> 20) & 0x3FF) - v16);
          v38 = 255.0;
          if (v37 <= 255.0)
          {
            v38 = v15 * (((v33 >> 20) & 0x3FF) - v16);
            if (v37 < 0.0)
            {
              v38 = 0.0;
            }
          }

          v39 = v15 * (((v33 >> 10) & 0x3FF) - v16);
          *(v31 + v23) = llroundf(v38);
          v40 = 255.0;
          if (v39 <= 255.0)
          {
            v40 = v15 * (((v33 >> 10) & 0x3FF) - v16);
            if (v39 < 0.0)
            {
              v40 = 0.0;
            }
          }

          v41 = v15 * ((v33 & 0x3FF) - v16);
          *(v31 + v22) = llroundf(v40);
          v42 = 255.0;
          if (v41 <= 255.0)
          {
            v42 = v15 * ((v33 & 0x3FF) - v16);
            if (v41 < 0.0)
            {
              v42 = 0.0;
            }
          }

          *(v31 + v21) = llroundf(v42);
          *(v31 + v20) = 85 * v35;
          v31 += 4;
          --v29;
        }

        while (v29);
      }

      v28 += v11;
      v27 += v12;
      v24 += v13;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_22:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
        {
          goto LABEL_16;
        }

        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_21;
  }

LABEL_16:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6)
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
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = 8191.0 / *(v12 + 128);
    LOWORD(a5) = *(v12 + 140);
    *&a5 = LODWORD(a5);
    LOWORD(a6) = *(v12 + 144);
    v21 = LODWORD(a6);
    v22 = *(v12 + 72);
    v23 = *(v12 + 76);
    v24 = *(v12 + 80);
    v25 = *(v12 + 84);
    v26 = *(v12 + 88);
    v27 = *(v12 + 92);
    v28 = *(v12 + 96);
    v29 = *(v12 + 100);
    v30 = v12 + 164;
    v31 = v12 + 16548;
    v32 = v12 + 32932;
    v33 = *(v12 + 104);
    v34 = *(v12 + 108);
    v35 = *(v12 + 112);
    v36 = *(v12 + 116);
    v37 = *(v12 + 120);
    v38 = *(result + 14);
    v39 = v8 + *(result + 15);
    v40 = *(result + 28) * a2 / v6 + *(result + 44);
    v41 = *(result + 36);
    v42 = v16[1];
    _ZF = v42 == 0;
    v44 = v42 + v19 * v39 + 4 * v38;
    if (_ZF)
    {
      v44 = 0;
    }

    v45 = *v16 + v18 * v39 + 4 * v38;
    v46 = *(*(result + 7) + 8);
    if (v46)
    {
      v47 = v46 + v40 * v15 + 4 * v41;
    }

    else
    {
      v47 = 0;
    }

    v48 = **(result + 7) + v40 * v14 + 4 * v41;
    v49 = vdup_lane_s32(*&a5, 0);
    v50 = vdup_n_s32(0x45FFF800u);
    while (v11 < 1)
    {
LABEL_39:
      v48 += v14;
      v47 += v15;
      v45 += v18;
      v44 += v19;
      if (++v10 == v9)
      {
        goto LABEL_40;
      }
    }

    v51 = v11;
    v52 = v44;
    v53 = v45;
    v54 = v47;
    v55 = v48;
    while (1)
    {
      v57 = *v55++;
      v56 = v57;
      if (v54)
      {
        v59 = *v54++;
        v58 = v59;
      }

      else
      {
        v58 = v56 >> 30;
      }

      _D11 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v56), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v49), v20), 0), v50)));
      _D11.i16[0] = *(v30 + 2 * _D11.u32[0]);
      __asm { FCVT            S11, H11 }

      _H12 = *(v30 + 2 * _D11.u32[1]);
      __asm { FCVT            S12, H12 }

      _H31 = *(v30 + 2 * llroundf(fminf(fmaxf(v20 * ((v56 & 0x3FF) - *&a5), 0.0), 8191.0)));
      __asm { FCVT            S13, H31 }

      v69 = (((v35 * _S12) + (v34 * _S11)) + (v36 * _S13)) + (v37 * fmaxf(_S11, fmaxf(_S12, _S13)));
      v70 = 8191.0;
      if (v69 <= 8191.0)
      {
        v70 = v69;
        if (v69 < 0.0)
        {
          v70 = 0.0;
        }
      }

      if (v52 && v54)
      {
        goto LABEL_23;
      }

      if (v54)
      {
        v71 = v58 * 3.0 / 255.0;
      }

      else
      {
        if (!v52)
        {
          goto LABEL_23;
        }

        v71 = v58 * 255.0 / 3.0;
      }

      v72 = v71;
      v58 = llroundf(v72);
LABEL_23:
      _H31 = *(v31 + 2 * llroundf(v70));
      __asm { FCVT            S31, H31 }

      v75 = _S11 * _S31;
      v76 = _S12 * _S31;
      v77 = _S13 * _S31;
      LOWORD(_S31) = *(v32 + 2 * llroundf(fminf(fmaxf(((v29 * v76) + ((_S11 * _S31) * v28)) + ((_S13 * _S31) * v33), 0.0), 8191.0)));
      __asm { FCVT            S31, H31 }

      v79 = 1023.0;
      if ((v21 + _S31) <= 1023.0)
      {
        v79 = v21 + _S31;
        if ((v21 + _S31) < 0.0)
        {
          v79 = 0.0;
        }
      }

      _H31 = *(v32 + 2 * llroundf(fminf(fmaxf(((v26 * v76) + (v75 * v25)) + (v77 * v27), 0.0), 8191.0)));
      __asm { FCVT            S31, H31 }

      v82 = v21 + _S31;
      v83 = (v21 + _S31) <= 1023.0;
      v84 = 1023.0;
      if (v83)
      {
        v84 = v82;
        if (v82 < 0.0)
        {
          v84 = 0.0;
        }
      }

      _H12 = *(v32 + 2 * llroundf(fminf(fmaxf(((v23 * v76) + (v75 * v22)) + (v77 * v24), 0.0), 8191.0)));
      __asm { FCVT            S12, H12 }

      v87 = v21 + _S12;
      v83 = (v21 + _S12) <= 1023.0;
      v88 = 1023.0;
      if (v83)
      {
        v88 = v87;
        if (v87 < 0.0)
        {
          v88 = 0.0;
        }
      }

      v89 = llroundf(v79);
      v90 = llroundf(v84);
      v91 = llroundf(v88);
      v92 = v58;
      if (v58 > 3.0)
      {
        v92 = 3.0;
      }

      *v53++ = (v90 << 10) | v89 | (llroundf(v92) << 30) | (v91 << 20);
      if (v52)
      {
        *v52++ = v58;
      }

      if (!--v51)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_22:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
        {
          goto LABEL_16;
        }

        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_21;
  }

LABEL_16:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6)
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
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = 8191.0 / *(v12 + 128);
    LOWORD(a5) = *(v12 + 140);
    *&a5 = LODWORD(a5);
    LOWORD(a6) = *(v12 + 144);
    v21 = LODWORD(a6);
    v22 = *(v12 + 72);
    v23 = *(v12 + 76);
    v24 = *(v12 + 80);
    v25 = *(v12 + 84);
    v26 = *(v12 + 88);
    v27 = *(v12 + 92);
    v28 = *(v12 + 96);
    v29 = *(v12 + 100);
    v30 = *(v12 + 104);
    v31 = v12 + 164;
    v32 = v12 + 16548;
    v33 = *(result + 14);
    v34 = v8 + *(result + 15);
    v35 = *(result + 28) * a2 / v6 + *(result + 44);
    v36 = *(result + 36);
    v37 = *(*(result + 16) + 8);
    _ZF = v37 == 0;
    v39 = v37 + v19 * v34 + 4 * v33;
    if (_ZF)
    {
      v39 = 0;
    }

    v40 = **(result + 16) + v18 * v34 + 4 * v33;
    v42 = *v13;
    v41 = v13[1];
    v43 = v41 + v35 * v16 + 4 * v36;
    if (!v41)
    {
      v43 = 0;
    }

    v44 = v42 + v35 * v15 + 4 * v36;
    v45 = vdup_lane_s32(*&a5, 0);
    v46 = vdup_n_s32(0x45FFF800u);
    while (v11 < 1)
    {
LABEL_36:
      v44 += v15;
      v43 += v16;
      v40 += v18;
      v39 += v19;
      if (++v10 == v9)
      {
        goto LABEL_37;
      }
    }

    v47 = v11;
    v48 = v39;
    v49 = v40;
    v50 = v43;
    v51 = v44;
    while (1)
    {
      v53 = *v51++;
      v52 = v53;
      if (v50)
      {
        v55 = *v50++;
        v54 = v55;
        if (!v48)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v54 = v52 >> 30;
        if (!v48)
        {
          goto LABEL_14;
        }
      }

      if (v50)
      {
        goto LABEL_19;
      }

LABEL_14:
      if (v50)
      {
        v56 = v54 * 3.0 / 255.0;
      }

      else
      {
        if (!v48)
        {
          goto LABEL_19;
        }

        v56 = v54 * 255.0 / 3.0;
      }

      v57 = v56;
      v54 = llroundf(v57);
LABEL_19:
      _D8 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v52), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v45), v20), 0), v46)));
      _D8.i16[0] = *(v31 + 2 * _D8.u32[0]);
      __asm { FCVT            S8, H8 }

      _H9 = *(v31 + 2 * _D8.u32[1]);
      __asm { FCVT            S9, H9 }

      _H31 = *(v31 + 2 * llroundf(fminf(fmaxf(v20 * ((v52 & 0x3FF) - *&a5), 0.0), 8191.0)));
      __asm { FCVT            S10, H31 }

      _H31 = *(v32 + 2 * llroundf(fminf(fmaxf(((v29 * _S9) + (_S8 * v28)) + (_S10 * v30), 0.0), 8191.0)));
      __asm { FCVT            S31, H31 }

      v69 = v21 + _S31;
      v70 = (v21 + _S31) <= 1023.0;
      v71 = 1023.0;
      if (v70)
      {
        v71 = v69;
        if (v69 < 0.0)
        {
          v71 = 0.0;
        }
      }

      _H11 = *(v32 + 2 * llroundf(fminf(fmaxf(((v26 * _S9) + (_S8 * v25)) + (_S10 * v27), 0.0), 8191.0)));
      __asm { FCVT            S11, H11 }

      v74 = v21 + _S11;
      v70 = (v21 + _S11) <= 1023.0;
      v75 = 1023.0;
      if (v70)
      {
        v75 = v74;
        if (v74 < 0.0)
        {
          v75 = 0.0;
        }
      }

      _H8 = *(v32 + 2 * llroundf(fminf(fmaxf(((v23 * _S9) + (_S8 * v22)) + (_S10 * v24), 0.0), 8191.0)));
      __asm { FCVT            S8, H8 }

      v78 = v21 + _S8;
      v70 = (v21 + _S8) <= 1023.0;
      v79 = 1023.0;
      if (v70)
      {
        v79 = v78;
        if (v78 < 0.0)
        {
          v79 = 0.0;
        }
      }

      v80 = llroundf(v71);
      v81 = llroundf(v75);
      v82 = llroundf(v79);
      v83 = v54;
      if (v54 > 3.0)
      {
        v83 = 3.0;
      }

      *v49++ = (v81 << 10) | v80 | (llroundf(v83) << 30) | (v82 << 20);
      if (v48)
      {
        *v48++ = v54;
      }

      if (!--v47)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_22:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 4 * v33.i64[0]) <= *a9)
      {
        if (!*(a7 + 8) || v33.i64[0] + a8[1] * (v33.i64[1] + v27.i64[1]) <= a9[1])
        {
          goto LABEL_16;
        }

        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        v41 = v27;
        v42.i64[0] = a9;
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_21;
  }

LABEL_16:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_l10r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_21:
  if (v15 == 255)
  {
    goto LABEL_22;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(result + 16);
    v16 = *(result + 17);
    v17 = *v16;
    v18 = v16[1];
    *&v19 = *(v11 + 136);
    v20 = *&v19 / *(v11 + 128);
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 144);
    v22 = LODWORD(a5);
    v23 = *(result + 14);
    v24 = v7 + *(result + 15);
    v25 = *(result + 28) * a2 / v5 + *(result + 44);
    v26 = *(result + 36);
    v27 = v15[1];
    v28 = v27 == 0;
    v29 = v27 + v18 * v24 + 4 * v23;
    if (v28)
    {
      v29 = 0;
    }

    v30 = *v15 + v17 * v24 + 4 * v23;
    v31 = *(*(result + 7) + 8);
    if (v31)
    {
      v32 = v31 + v25 * v14 + 4 * v26;
    }

    else
    {
      v32 = 0;
    }

    v33 = **(result + 7) + v25 * v13 + 4 * v26;
    while (v10 < 1)
    {
LABEL_30:
      v33 += v13;
      v32 += v14;
      v30 += v17;
      v29 += v18;
      if (++v9 == v8)
      {
        goto LABEL_31;
      }
    }

    v34 = v10;
    v35 = v29;
    v36 = v30;
    v37 = v32;
    v38 = v33;
    while (1)
    {
      v40 = *v38++;
      v39 = v40;
      if (v37)
      {
        v42 = *v37++;
        v41 = v42;
        if (v35)
        {
          goto LABEL_16;
        }

        v43 = v41 * 3.0 / 255.0;
      }

      else
      {
        v41 = v39 >> 30;
        v37 = 0;
        if (!v35)
        {
          goto LABEL_16;
        }

        v43 = v41 * 255.0 / 3.0;
      }

      v44 = v43;
      v41 = llroundf(v44);
LABEL_16:
      v45 = (v20 * ((v39 & 0x3FF) - v21)) + v22;
      v46 = 1023.0;
      if (v45 <= 1023.0)
      {
        v46 = (v20 * ((v39 & 0x3FF) - v21)) + v22;
        if (v45 < 0.0)
        {
          v46 = 0.0;
        }
      }

      v47 = (v20 * (((v39 >> 10) & 0x3FF) - v21)) + v22;
      v48 = 1023.0;
      if (v47 <= 1023.0)
      {
        v48 = (v20 * (((v39 >> 10) & 0x3FF) - v21)) + v22;
        if (v47 < 0.0)
        {
          v48 = 0.0;
        }
      }

      v49 = (v20 * (((v39 >> 20) & 0x3FF) - v21)) + v22;
      v50 = 1023.0;
      if (v49 <= 1023.0)
      {
        v50 = (v20 * (((v39 >> 20) & 0x3FF) - v21)) + v22;
        if (v49 < 0.0)
        {
          v50 = 0.0;
        }
      }

      v51 = llroundf(v46);
      v52 = llroundf(v48);
      v53 = llroundf(v50);
      v54 = v41;
      if (v41 > 3.0)
      {
        v54 = 3.0;
      }

      *v36++ = (v52 << 10) | v51 | (llroundf(v54) << 30) | (v53 << 20);
      if (v35)
      {
        *v35++ = v41;
      }

      if (!--v34)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_l64r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = v11 + 16548;
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = v11 + 32932;
    v29 = *(v11 + 104);
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = v11 + 164;
    v35 = *(result + 36);
    v36 = **(result + 16) + v16 * (v7 + *(result + 15)) + 2 * *(result + 14);
    v38 = *v12;
    v37 = v12[1];
    v39 = v37 + v27 * v15 + 4 * v35;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = vdup_lane_s32(*&a5, 0);
    v41 = v38 + v27 * v14 + 4 * v35;
    v42 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v41;
        v45 = v36;
        v46 = v39;
        do
        {
          v48 = *v44++;
          v47 = v48;
          if (v46)
          {
            v50 = *v46++;
            LOWORD(v49) = v50;
          }

          else
          {
            v49 = v47 >> 30;
          }

          _D31 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v47), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v40), v17), 0), v42)));
          _D31.i16[0] = *(v34 + 2 * _D31.u32[0]);
          __asm { FCVT            S31, H31 }

          _H9 = *(v34 + 2 * _D31.u32[1]);
          __asm { FCVT            S8, H9 }

          _H9 = *(v34 + 2 * llroundf(fminf(fmaxf(v17 * ((v47 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S10, H9 }

          v61 = (((v31 * _S8) + (v30 * _S31)) + (v32 * _S10)) + (v33 * fmaxf(_S31, fmaxf(_S8, _S10)));
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = v61;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          _H9 = *(v26 + 2 * llroundf(v62));
          __asm { FCVT            S11, H9 }

          v65 = _S31 * _S11;
          v66 = _S8 * _S11;
          v67 = _S10 * _S11;
          LOWORD(_S11) = *(v28 + 2 * llroundf(fminf(fmaxf(((v19 * v66) + (v65 * v18)) + ((_S10 * _S11) * v20), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          v69 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v69 = _S12;
            if (_NF)
            {
              v69 = 0.0;
            }
          }

          v71 = ((v22 * v66) + (v65 * v21)) + (v67 * v23);
          v72 = ((v25 * v66) + (v65 * v24)) + (v67 * v29);
          _H8 = *(v28 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          _H31 = *(v28 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S11, H8 }

          *v45 = llroundf(v69);
          v76 = 65535.0;
          if (_S11 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v76 = _S11;
            if (_NF)
            {
              v76 = 0.0;
            }
          }

          __asm { FCVT            S10, H31 }

          v45[1] = llroundf(v76);
          v79 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v79 = _S10;
            if (_NF)
            {
              v79 = 0.0;
            }
          }

          v45[2] = llroundf(v79);
          v45[3] = 21845 * v49;
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v41 += v14;
      v39 += v15;
      v36 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_l64r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v13 = *(result + 7);
    v12 = *(result + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = *(v11 + 104);
    v27 = v7 + *(result + 15);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = v11 + 16548;
    v30 = v11 + 164;
    v31 = *(result + 36);
    v32 = **(result + 16) + v16 * v27 + 2 * *(result + 14);
    v34 = *v13;
    v33 = v13[1];
    v35 = v33 + v28 * v15 + 4 * v31;
    if (!v33)
    {
      v35 = 0;
    }

    v36 = vdup_lane_s32(*&a5, 0);
    v37 = v34 + v28 * v14 + 4 * v31;
    v38 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v37;
        v41 = v32;
        v42 = v35;
        do
        {
          v44 = *v40++;
          v43 = v44;
          if (v42)
          {
            v46 = *v42++;
            LOWORD(v45) = v46;
          }

          else
          {
            v45 = v43 >> 30;
          }

          _D27 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v36), v17), 0), v38)));
          _D27.i16[0] = *(v30 + 2 * _D27.u32[0]);
          __asm { FCVT            S27, H27 }

          _H28 = *(v30 + 2 * _D27.u32[1]);
          __asm { FCVT            S28, H28 }

          _H29 = *(v30 + 2 * llroundf(fminf(fmaxf(v17 * ((v43 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H31 = *(v29 + 2 * llroundf(fminf(fmaxf(((v19 * _S28) + (_S27 * v18)) + (_S29 * v20), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v59 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v59 = _S8;
            if (_NF)
            {
              v59 = 0.0;
            }
          }

          v61 = ((v22 * _S28) + (_S27 * v21)) + (_S29 * v23);
          v62 = ((v25 * _S28) + (_S27 * v24)) + (_S29 * v26);
          _H28 = *(v29 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          _H27 = *(v29 + 2 * llroundf(fminf(fmaxf(v62, 0.0), 8191.0)));
          __asm { FCVT            S31, H28 }

          *v41 = llroundf(v59);
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

          v41[1] = llroundf(v66);
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

          v41[2] = llroundf(v69);
          v41[3] = 21845 * v45;
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v37 += v14;
      v35 += v15;
      v32 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_l64r_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    LOWORD(a5) = *(v11 + 140);
    v15 = *(result + 28) * a2 / v5 + *(result + 44);
    v16 = **(result + 17);
    v17 = *(v11 + 136) / *(v11 + 128);
    v18 = LODWORD(a5);
    v19 = *(result + 36);
    v20 = **(result + 16) + v16 * (v7 + *(result + 15)) + 2 * *(result + 14);
    v21 = *(*(result + 7) + 8);
    v22 = v21 == 0;
    v23 = v21 + v15 * v14 + 4 * v19;
    if (v22)
    {
      v23 = 0;
    }

    v24 = **(result + 7) + v15 * v13 + 4 * v19;
    do
    {
      if (v10 >= 1)
      {
        v25 = v10;
        v26 = v24;
        v27 = v20;
        v28 = v23;
        do
        {
          v30 = *v26++;
          v29 = v30;
          if (v28)
          {
            v32 = *v28++;
            LOWORD(v31) = v32;
          }

          else
          {
            v31 = v29 >> 30;
          }

          v33 = v17 * (((v29 >> 20) & 0x3FF) - v18);
          v34 = 65535.0;
          if (v33 <= 65535.0)
          {
            v34 = v17 * (((v29 >> 20) & 0x3FF) - v18);
            if (v33 < 0.0)
            {
              v34 = 0.0;
            }
          }

          v35 = v17 * (((v29 >> 10) & 0x3FF) - v18);
          *v27 = llroundf(v34);
          v36 = 65535.0;
          if (v35 <= 65535.0)
          {
            v36 = v17 * (((v29 >> 10) & 0x3FF) - v18);
            if (v35 < 0.0)
            {
              v36 = 0.0;
            }
          }

          v37 = v17 * ((v29 & 0x3FF) - v18);
          v27[1] = llroundf(v36);
          v38 = 65535.0;
          if (v37 <= 65535.0)
          {
            v38 = v17 * ((v29 & 0x3FF) - v18);
            if (v37 < 0.0)
            {
              v38 = 0.0;
            }
          }

          v27[2] = llroundf(v38);
          v27[3] = 21845 * v31;
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      v24 += v13;
      v23 += v14;
      v20 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_b64a_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = v11 + 16548;
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = v11 + 32932;
    v29 = *(v11 + 104);
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = v11 + 164;
    v35 = *(result + 36);
    v36 = **(result + 16) + v16 * (v7 + *(result + 15)) + 2 * *(result + 14);
    v38 = *v12;
    v37 = v12[1];
    v39 = v37 + v27 * v15 + 4 * v35;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = vdup_lane_s32(*&a5, 0);
    v41 = v38 + v27 * v14 + 4 * v35;
    v42 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v41;
        v45 = v36;
        v46 = v39;
        do
        {
          v48 = *v44++;
          v47 = v48;
          if (v46)
          {
            v50 = *v46++;
            v49 = v50;
          }

          else
          {
            v49 = v47 >> 30;
          }

          _D31 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v47), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v40), v17), 0), v42)));
          _D31.i16[0] = *(v34 + 2 * _D31.u32[0]);
          __asm { FCVT            S31, H31 }

          _H9 = *(v34 + 2 * _D31.u32[1]);
          __asm { FCVT            S9, H9 }

          _H8 = *(v34 + 2 * llroundf(fminf(fmaxf(v17 * ((v47 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S11, H8 }

          v61 = (((v31 * _S9) + (v30 * _S31)) + (v32 * _S11)) + (v33 * fmaxf(_S31, fmaxf(_S9, _S11)));
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = v61;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          _H8 = *(v26 + 2 * llroundf(v62));
          __asm { FCVT            S12, H8 }

          v65 = _S31 * _S12;
          v66 = _S9 * _S12;
          v67 = _S11 * _S12;
          _H11 = *(v28 + 2 * llroundf(fminf(fmaxf(((v19 * v66) + ((_S31 * _S12) * v18)) + ((_S11 * _S12) * v20), 0.0), 8191.0)));
          __asm { FCVT            S12, H11 }

          v70 = 65535.0;
          if (_S12 <= 65535.0)
          {
            __asm { FCMP            H11, #0 }

            v70 = _S12;
            if (_NF)
            {
              v70 = 0.0;
            }
          }

          _H12 = *(v28 + 2 * llroundf(fminf(fmaxf(((v22 * v66) + (v65 * v21)) + (v67 * v23), 0.0), 8191.0)));
          __asm { FCVT            S13, H12 }

          v74 = 65535.0;
          if (_S13 <= 65535.0)
          {
            __asm { FCMP            H12, #0 }

            v74 = _S13;
            if (_NF)
            {
              v74 = 0.0;
            }
          }

          _H9 = *(v28 + 2 * llroundf(fminf(fmaxf(((v25 * v66) + (v65 * v24)) + (v67 * v29), 0.0), 8191.0)));
          __asm { FCVT            S10, H9 }

          v78 = 65535.0;
          if (_S10 <= 65535.0)
          {
            __asm { FCMP            H9, #0 }

            v78 = _S10;
            if (_NF)
            {
              v78 = 0.0;
            }
          }

          *v45 = bswap32(21845 * v49) >> 16;
          v45[1] = __rev16(llroundf(v70));
          v45[2] = __rev16(llroundf(v74));
          v45[3] = __rev16(llroundf(v78));
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v41 += v14;
      v39 += v15;
      v36 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_b64a_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v13 = *(result + 7);
    v12 = *(result + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = *(v11 + 104);
    v27 = v7 + *(result + 15);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = v11 + 16548;
    v30 = v11 + 164;
    v31 = *(result + 36);
    v32 = **(result + 16) + v16 * v27 + 2 * *(result + 14);
    v34 = *v13;
    v33 = v13[1];
    v35 = v33 + v28 * v15 + 4 * v31;
    if (!v33)
    {
      v35 = 0;
    }

    v36 = vdup_lane_s32(*&a5, 0);
    v37 = v34 + v28 * v14 + 4 * v31;
    v38 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v37;
        v41 = v32;
        v42 = v35;
        do
        {
          v44 = *v40++;
          v43 = v44;
          if (v42)
          {
            v46 = *v42++;
            v45 = v46;
          }

          else
          {
            v45 = v43 >> 30;
          }

          _D28 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v36), v17), 0), v38)));
          _D28.i16[0] = *(v30 + 2 * _D28.u32[0]);
          __asm { FCVT            S28, H28 }

          _H29 = *(v30 + 2 * _D28.u32[1]);
          __asm { FCVT            S29, H29 }

          _H27 = *(v30 + 2 * llroundf(fminf(fmaxf(v17 * ((v43 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S30, H27 }

          _H31 = *(v29 + 2 * llroundf(fminf(fmaxf(((v19 * _S29) + (_S28 * v18)) + (_S30 * v20), 0.0), 8191.0)));
          __asm { FCVT            S8, H31 }

          v59 = 65535.0;
          if (_S8 <= 65535.0)
          {
            __asm { FCMP            H31, #0 }

            v59 = _S8;
            if (_NF)
            {
              v59 = 0.0;
            }
          }

          _H8 = *(v29 + 2 * llroundf(fminf(fmaxf(((v22 * _S29) + (_S28 * v21)) + (_S30 * v23), 0.0), 8191.0)));
          __asm { FCVT            S9, H8 }

          v63 = 65535.0;
          if (_S9 <= 65535.0)
          {
            __asm { FCMP            H8, #0 }

            v63 = _S9;
            if (_NF)
            {
              v63 = 0.0;
            }
          }

          _H29 = *(v29 + 2 * llroundf(fminf(fmaxf(((v25 * _S29) + (_S28 * v24)) + (_S30 * v26), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v67 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v67 = _S30;
            if (_NF)
            {
              v67 = 0.0;
            }
          }

          *v41 = bswap32(21845 * v45) >> 16;
          v41[1] = __rev16(llroundf(v59));
          v41[2] = __rev16(llroundf(v63));
          v41[3] = __rev16(llroundf(v67));
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v37 += v14;
      v35 += v15;
      v32 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_b64a_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v12 = *(result + 8);
    v13 = *v12;
    v14 = v12[1];
    LOWORD(a5) = *(v11 + 140);
    v15 = *(result + 28) * a2 / v5 + *(result + 44);
    v16 = **(result + 17);
    v17 = *(v11 + 136) / *(v11 + 128);
    v18 = LODWORD(a5);
    v19 = *(result + 36);
    v20 = **(result + 16) + v16 * (v7 + *(result + 15)) + 2 * *(result + 14);
    v21 = *(*(result + 7) + 8);
    v22 = v21 == 0;
    v23 = v21 + v15 * v14 + 4 * v19;
    if (v22)
    {
      v23 = 0;
    }

    v24 = **(result + 7) + v15 * v13 + 4 * v19;
    do
    {
      if (v10 >= 1)
      {
        v25 = v10;
        v26 = v24;
        v27 = v20;
        v28 = v23;
        do
        {
          v30 = *v26++;
          v29 = v30;
          if (v28)
          {
            v32 = *v28++;
            v31 = v32;
          }

          else
          {
            v31 = v29 >> 30;
          }

          v33 = v17 * (((v29 >> 20) & 0x3FF) - v18);
          v34 = 65535.0;
          if (v33 <= 65535.0)
          {
            v34 = v17 * (((v29 >> 20) & 0x3FF) - v18);
            if (v33 < 0.0)
            {
              v34 = 0.0;
            }
          }

          v35 = v17 * (((v29 >> 10) & 0x3FF) - v18);
          v36 = 65535.0;
          if (v35 <= 65535.0)
          {
            v36 = v17 * (((v29 >> 10) & 0x3FF) - v18);
            if (v35 < 0.0)
            {
              v36 = 0.0;
            }
          }

          v37 = v17 * ((v29 & 0x3FF) - v18);
          v38 = 65535.0;
          if (v37 <= 65535.0)
          {
            v38 = v17 * ((v29 & 0x3FF) - v18);
            if (v37 < 0.0)
            {
              v38 = 0.0;
            }
          }

          *v27 = bswap32(21845 * v31) >> 16;
          v27[1] = __rev16(llroundf(v34));
          v27[2] = __rev16(llroundf(v36));
          v27[3] = __rev16(llroundf(v38));
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      v24 += v13;
      v23 += v14;
      v20 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_RGhA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = v11 + 16548;
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = v11 + 32932;
    v29 = *(v11 + 104);
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = v11 + 164;
    v35 = *(result + 36);
    v36 = **(result + 16) + v16 * (v7 + *(result + 15)) + 2 * *(result + 14);
    v38 = *v12;
    v37 = v12[1];
    v39 = v37 + v27 * v15 + 4 * v35;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = v38 + v27 * v14 + 4 * v35;
    v41 = vdup_lane_s32(*&a5, 0);
    v42 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v40;
        v45 = v36;
        v46 = v39;
        do
        {
          v48 = *v44++;
          v47 = v48;
          if (v46)
          {
            v50 = *v46++;
            v49 = v50;
          }

          else
          {
            v49 = v47 >> 30;
          }

          _D31 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v47), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v41), v17), 0), v42)));
          _D31.i16[0] = *(v34 + 2 * _D31.u32[0]);
          __asm { FCVT            S31, H31 }

          _H9 = *(v34 + 2 * _D31.u32[1]);
          __asm { FCVT            S8, H9 }

          _H9 = *(v34 + 2 * llroundf(fminf(fmaxf(v17 * ((v47 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v61 = (((v31 * _S8) + (v30 * _S31)) + (v32 * _S9)) + (v33 * fmaxf(_S31, fmaxf(_S8, _S9)));
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = v61;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          _H10 = *(v26 + 2 * llroundf(v62));
          __asm { FCVT            S10, H10 }

          v65 = _S31 * _S10;
          v66 = _S8 * _S10;
          v67 = _S9 * _S10;
          v68 = ((v19 * v66) + (v65 * v18)) + (v67 * v20);
          v69 = ((v22 * v66) + (v65 * v21)) + (v67 * v23);
          _S31 = ((v25 * v66) + (v65 * v24)) + (v67 * v29);
          LOWORD(v66) = *(v28 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          LOWORD(v67) = *(v28 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          LOWORD(_S31) = *(v28 + 2 * llroundf(fminf(fmaxf(_S31, 0.0), 8191.0)));
          _S10 = v49 * 0.33333;
          *v45 = LOWORD(v66);
          v45[1] = LOWORD(v67);
          v45[2] = LOWORD(_S31);
          __asm { FCVT            H31, S10 }

          v45[3] = LOWORD(_S31);
          v45 += 4;
          --v43;
        }

        while (v43);
      }

      v40 += v14;
      v39 += v15;
      v36 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_RGhA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v13 = *(result + 7);
    v12 = *(result + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = *(v11 + 104);
    v27 = v7 + *(result + 15);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = v11 + 16548;
    v30 = v11 + 164;
    v31 = *(result + 36);
    v32 = **(result + 16) + v16 * v27 + 2 * *(result + 14);
    v34 = *v13;
    v33 = v13[1];
    v35 = v33 + v28 * v15 + 4 * v31;
    if (!v33)
    {
      v35 = 0;
    }

    v36 = v34 + v28 * v14 + 4 * v31;
    v37 = vdup_lane_s32(*&a5, 0);
    v38 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v36;
        v41 = v32;
        v42 = v35;
        do
        {
          v44 = *v40++;
          v43 = v44;
          if (v42)
          {
            v46 = *v42++;
            v45 = v46;
          }

          else
          {
            v45 = v43 >> 30;
          }

          _D28 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v37), v17), 0), v38)));
          _D28.i16[0] = *(v30 + 2 * _D28.u32[0]);
          __asm { FCVT            S28, H28 }

          _H29 = *(v30 + 2 * _D28.u32[1]);
          __asm { FCVT            S29, H29 }

          _H27 = *(v30 + 2 * llroundf(fminf(fmaxf(v17 * ((v43 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v56 = ((v19 * _S29) + (*_D28.i32 * v18)) + (_S27 * v20);
          v57 = ((v22 * _S29) + (*_D28.i32 * v21)) + (_S27 * v23);
          _S27 = ((v25 * _S29) + (*_D28.i32 * v24)) + (_S27 * v26);
          _D28.i16[0] = *(v29 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          LOWORD(_S29) = *(v29 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          LOWORD(_S27) = *(v29 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          _S30 = v45 * 0.33333;
          *v41 = _D28.i16[0];
          v41[1] = LOWORD(_S29);
          v41[2] = LOWORD(_S27);
          __asm { FCVT            H27, S30 }

          v41[3] = LOWORD(_S27);
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v36 += v14;
      v35 += v15;
      v32 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 8 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_RGhA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4)
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
    v11 = *(result + 8);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(a4) = *(v10 + 140);
    v14 = *(result + 28) * a2 / v4 + *(result + 44);
    v15 = **(result + 17);
    v16 = 1.0 / *(v10 + 128);
    v17 = LODWORD(a4);
    v18 = *(result + 36);
    v19 = **(result + 16) + v15 * (v6 + *(result + 15)) + 2 * *(result + 14);
    v20 = *(*(result + 7) + 8);
    _ZF = v20 == 0;
    v22 = v20 + v14 * v13 + 4 * v18;
    if (_ZF)
    {
      v22 = 0;
    }

    v23 = **(result + 7) + v14 * v12 + 4 * v18;
    do
    {
      if (v9 >= 1)
      {
        v24 = v9;
        v25 = v23;
        v26 = v19;
        v27 = v22;
        do
        {
          v29 = *v25++;
          v28 = v29;
          if (v27)
          {
            v31 = *v27++;
            v30 = v31;
          }

          else
          {
            v30 = v28 >> 30;
          }

          _S3 = v16 * ((v28 & 0x3FF) - v17);
          _S4 = v16 * (((v28 >> 10) & 0x3FF) - v17);
          _S5 = v16 * (((v28 >> 20) & 0x3FF) - v17);
          _S6 = v30 * 0.33333;
          __asm { FCVT            H5, S5 }

          *v26 = LOWORD(_S5);
          __asm { FCVT            H4, S4 }

          v26[1] = LOWORD(_S4);
          __asm { FCVT            H3, S3 }

          v26[2] = LOWORD(_S3);
          __asm { FCVT            H3, S6 }

          v26[3] = LOWORD(_S3);
          v26 += 4;
          --v24;
        }

        while (v24);
      }

      v23 += v12;
      v22 += v13;
      v19 += v15;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 16 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_RGfA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = v11 + 16548;
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = v11 + 32932;
    v29 = *(v11 + 104);
    v30 = *(v11 + 108);
    v31 = *(v11 + 112);
    v32 = *(v11 + 116);
    v33 = *(v11 + 120);
    v34 = v11 + 164;
    v35 = *(result + 36);
    v36 = **(result + 16) + v16 * (v7 + *(result + 15)) + 4 * *(result + 14);
    v38 = *v12;
    v37 = v12[1];
    v39 = v37 + v27 * v15 + 4 * v35;
    if (!v37)
    {
      v39 = 0;
    }

    v40 = v38 + v27 * v14 + 4 * v35;
    v41 = vdup_lane_s32(*&a5, 0);
    v42 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v43 = v10;
        v44 = v40;
        v45 = v36;
        v46 = v39;
        do
        {
          v48 = *v44++;
          v47 = v48;
          if (v46)
          {
            v50 = *v46++;
            v49 = v50;
          }

          else
          {
            v49 = v47 >> 30;
          }

          _D31 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v47), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v41), v17), 0), v42)));
          _D31.i16[0] = *(v34 + 2 * _D31.u32[0]);
          __asm { FCVT            S31, H31 }

          _H9 = *(v34 + 2 * _D31.u32[1]);
          __asm { FCVT            S8, H9 }

          _H9 = *(v34 + 2 * llroundf(fminf(fmaxf(v17 * ((v47 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v61 = (((v31 * _S8) + (v30 * _S31)) + (v32 * _S9)) + (v33 * fmaxf(_S31, fmaxf(_S8, _S9)));
          v62 = 8191.0;
          if (v61 <= 8191.0)
          {
            v62 = v61;
            if (v61 < 0.0)
            {
              v62 = 0.0;
            }
          }

          _H10 = *(v26 + 2 * llroundf(v62));
          __asm { FCVT            S10, H10 }

          v65 = _S31 * _S10;
          _S8 = _S8 * _S10;
          _S9 = _S9 * _S10;
          v68 = ((v19 * _S8) + (v65 * v18)) + (_S9 * v20);
          v69 = ((v22 * _S8) + (v65 * v21)) + (_S9 * v23);
          _S31 = ((v25 * _S8) + (v65 * v24)) + (_S9 * v29);
          LOWORD(_S8) = *(v28 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          LOWORD(_S9) = *(v28 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm
          {
            FCVT            S8, H8
            FCVT            S9, H9
          }

          LOWORD(_S31) = *(v28 + 2 * llroundf(fminf(fmaxf(_S31, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          *v45 = _S8;
          *(v45 + 4) = _S9;
          *(v45 + 8) = _S31;
          *(v45 + 12) = v49 * 0.33333;
          v45 += 16;
          --v43;
        }

        while (v43);
      }

      v40 += v14;
      v39 += v15;
      v36 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 16 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_RGfA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
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
    v13 = *(result + 7);
    v12 = *(result + 8);
    v14 = *v12;
    v15 = v12[1];
    v16 = **(result + 17);
    v17 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 140);
    *&a5 = LODWORD(a5);
    v18 = *(v11 + 72);
    v19 = *(v11 + 76);
    v20 = *(v11 + 80);
    v21 = *(v11 + 84);
    v22 = *(v11 + 88);
    v23 = *(v11 + 92);
    v24 = *(v11 + 96);
    v25 = *(v11 + 100);
    v26 = *(v11 + 104);
    v27 = v7 + *(result + 15);
    v28 = *(result + 28) * a2 / v5 + *(result + 44);
    v29 = v11 + 16548;
    v30 = v11 + 164;
    v31 = *(result + 36);
    v32 = **(result + 16) + v16 * v27 + 4 * *(result + 14);
    v34 = *v13;
    v33 = v13[1];
    v35 = v33 + v28 * v15 + 4 * v31;
    if (!v33)
    {
      v35 = 0;
    }

    v36 = v34 + v28 * v14 + 4 * v31;
    v37 = vdup_lane_s32(*&a5, 0);
    v38 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v36;
        v41 = v32;
        v42 = v35;
        do
        {
          v44 = *v40++;
          v43 = v44;
          if (v42)
          {
            v46 = *v42++;
            v45 = v46;
          }

          else
          {
            v45 = v43 >> 30;
          }

          _D28 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v43), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v37), v17), 0), v38)));
          _D28.i16[0] = *(v30 + 2 * _D28.u32[0]);
          _H29 = *(v30 + 2 * _D28.u32[1]);
          __asm
          {
            FCVT            S28, H28
            FCVT            S29, H29
          }

          _H27 = *(v30 + 2 * llroundf(fminf(fmaxf(v17 * ((v43 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v56 = ((v19 * _S29) + (*_D28.i32 * v18)) + (_S27 * v20);
          v57 = ((v22 * _S29) + (*_D28.i32 * v21)) + (_S27 * v23);
          _S27 = ((v25 * _S29) + (*_D28.i32 * v24)) + (_S27 * v26);
          _D28.i16[0] = *(v29 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          LOWORD(_S29) = *(v29 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm
          {
            FCVT            S28, H28
            FCVT            S29, H29
          }

          LOWORD(_S27) = *(v29 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          *v41 = _D28.i32[0];
          *(v41 + 4) = _S29;
          *(v41 + 8) = _S27;
          *(v41 + 12) = v45 * 0.33333;
          v41 += 16;
          --v39;
        }

        while (v39);
      }

      v36 += v14;
      v35 += v15;
      v32 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v44 = a2[2];
  v45 = v16;
  v19 = *a6;
  v18 = a6[1];
  v42 = v17;
  v43 = v19;
  v41 = v18;
  v46 = a6[2];
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
    v20 = &v41.i8[-v22];
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v44, v42), v45), vsubq_s64(v45, v44), v42);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v41), v43), vsubq_s64(v43, v46), v41);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v44, v28);
  if ((*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) <= *a5)
  {
    if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
    {
      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }

    else
    {
      v33 = vaddq_s64(v46, v28);
      if ((*a8 * (v33.i64[1] + v27.i64[1]) + 16 * v33.i64[0]) <= *a9)
      {
        goto LABEL_13;
      }

      v41 = v27;
      v42.i64[0] = a9;
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  else
  {
    v41 = v27;
    v42.i64[0] = a9;
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42.i64[0];
  v27 = v41;
  if (v34)
  {
    v21 = v34;
    goto LABEL_18;
  }

LABEL_13:
  *v20 = v15;
  v35 = v44;
  *(v20 + 4) = v45;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v43;
  *(v20 + 6) = v27;
  *(v20 + 7) = v46;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_RGfA_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_18:
  if (v15 == 255)
  {
    goto LABEL_19;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4)
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
    v11 = *(result + 8);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(a4) = *(v10 + 140);
    v14 = *(result + 28) * a2 / v4 + *(result + 44);
    v15 = **(result + 17);
    v16 = 1.0 / *(v10 + 128);
    *&a4 = LODWORD(a4);
    v17 = *(result + 36);
    v18 = **(result + 16) + v15 * (v6 + *(result + 15)) + 4 * *(result + 14);
    v19 = *(*(result + 7) + 8);
    v20 = v19 == 0;
    v21 = v19 + v14 * v13 + 4 * v17;
    if (v20)
    {
      v21 = 0;
    }

    v22 = vdup_lane_s32(*&a4, 0);
    v23 = **(result + 7) + v14 * v12 + 4 * v17;
    do
    {
      if (v9 >= 1)
      {
        v24 = v9;
        v25 = v23;
        v26 = v18;
        v27 = v21;
        do
        {
          v29 = *v25++;
          v28 = v29;
          if (v27)
          {
            v31 = *v27++;
            v30 = v31;
          }

          else
          {
            v30 = v28 >> 30;
          }

          *v26 = vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v28), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v22), v16);
          v26[1].f32[0] = v16 * ((v28 & 0x3FF) - *&a4);
          v26[1].f32[1] = v30 * 0.33333;
          v26 += 2;
          --v24;
        }

        while (v24);
      }

      v23 += v12;
      v21 += v13;
      v18 += v15;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t RegisterVTPreprocessingSession()
{
  v0 = _CFRuntimeRegisterClass();
  sVTPreprocessingSessionID = v0;
  sVTProcessingSessionPropertyCallbacks = 0;
  *algn_1EAD320A8 = VTPreprocessingSessionCopySupportedPropertyDictionary;
  qword_1EAD320B0 = VTPreprocessingSessionSetProperty;
  qword_1EAD320B8 = VTPreprocessingSessionCopyProperty;
  qword_1EAD320C0 = VTPreprocessingSessionSetProperties;
  qword_1EAD320C8 = VTPreprocessingSessionCopySerializableProperties;

  return VTSessionRegisterCallbacksForTypeID(&sVTProcessingSessionPropertyCallbacks, v0);
}

uint64_t VTPreprocessingSessionCopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  if (a2 && (*a2 = 0, a1) && !*(a1 + 16))
  {

    return vtPreprocessingSessionCopyProperties(a2);
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtPreprocessingSessionCopyProperties(CFTypeRef *a1)
{
  MEMORY[0x193AE3010](&sVTCreatePropertiesHandledByPreprocessingSessionOnce, vtPreprocessingSessionCreateProperties);
  if (a1 && sVTPreprocessingSessionProperties)
  {
    *a1 = CFRetain(sVTPreprocessingSessionProperties);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTPreprocessingSessionSetProperty(uint64_t a1, const void *a2)
{
  if (!a1 || *(a1 + 16) || !vtPreprocessingSessionIsPropertyHandledByVideoToolbox(a2) || (result = CFEqual(@"SourcePixelBufferAttributes", a2), result))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

BOOL vtPreprocessingSessionIsPropertyHandledByVideoToolbox(const void *a1)
{
  theDict = 0;
  vtPreprocessingSessionCopyProperties(&theDict);
  if (!theDict)
  {
    return 0;
  }

  v2 = CFDictionaryContainsKey(theDict, a1) != 0;
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v2;
}

uint64_t VTPreprocessingSessionCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (*(a1 + 16) || !vtPreprocessingSessionIsPropertyHandledByVideoToolbox(a2))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (CFEqual(@"SourcePixelBufferAttributes", a2))
    {
      v8 = *(a1 + 40);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *a4 = v8;
    }

    return 0;
  }
}

uint64_t VTPreprocessingSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  if (a1 && !*(a1 + 16))
  {
    if (theDict)
    {
      v4 = 0;
      CFDictionaryApplyFunction(theDict, vtCompressionSessionSetOneProperty, &v3);
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtCompressionSessionSetOneProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  result = VTPreprocessingSessionSetProperty(*a3, a1);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTPreprocessingSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (a1 && !*(a1 + 16))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTPreprocessingSessionCreate(const __CFAllocator *a1, int a2, int a3, const void *a4, void *a5)
{
  if (!a5)
  {
    VTPreprocessingSessionCreate_cold_5(&callBacks);
    return LODWORD(callBacks.version);
  }

  if (!a4)
  {
    VTPreprocessingSessionCreate_cold_4(&callBacks);
    return LODWORD(callBacks.version);
  }

  if (a2 <= 0)
  {
    VTPreprocessingSessionCreate_cold_3(&callBacks);
    return LODWORD(callBacks.version);
  }

  if (a3 <= 0)
  {
    VTPreprocessingSessionCreate_cold_2(&callBacks);
    return LODWORD(callBacks.version);
  }

  MEMORY[0x193AE3010](&VTPreprocessingSessionGetTypeID_sRegisterVTPreprocessingSessionOnce, RegisterVTPreprocessingSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTPreprocessingSessionCreate_cold_1(&callBacks);
    return LODWORD(callBacks.version);
  }

  v11 = Instance;
  *(Instance + 20) = a2;
  *(Instance + 24) = a3;
  *(Instance + 72) = Instance;
  *(Instance + 88) = 0;
  *(Instance + 96) = 0;
  VTCreateVideoEncoderInstanceFromEncoderID(a4, *MEMORY[0x1E695E480], (Instance + 64));
  v12 = v11[8];
  v13 = *(v11 + 20);
  v14 = *(CMBaseObjectGetVTable() + 16);
  if (*v14 < 2uLL || (v15 = v14[10]) == 0)
  {
    v16 = 4294954514;
    goto LABEL_11;
  }

  v16 = v15(v12, v11 + 9, v13);
  if (v16)
  {
LABEL_11:
    CFRelease(v11);
    return v16;
  }

  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = vtPreprocessingSessionResolutionReleaseCallBack;
  v11[10] = CFArrayCreateMutable(a1, 0, &callBacks);
  *a5 = v11;
  return v16;
}

void vtPreprocessingSessionResolutionReleaseCallBack(int a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
    a2[1] = 0;
  }

  v4 = a2[4];
  if (v4)
  {
    CFRelease(v4);
    a2[4] = 0;
  }

  v5 = a2[5];
  if (v5)
  {
    CFRelease(v5);
    a2[5] = 0;
  }

  v6 = a2[6];
  if (v6)
  {
    CFRelease(v6);
    a2[6] = 0;
  }

  v7 = a2[3];
  if (v7)
  {
    CFRelease(v7);
    a2[3] = 0;
  }

  v8 = a2[2];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a2);
}

uint64_t VTPreprocessingSessionAddResolution(uint64_t a1, int a2, int a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    VTPreprocessingSessionAddResolution_cold_4(&v22);
    return v22;
  }

  if (*(a1 + 16))
  {
    VTPreprocessingSessionAddResolution_cold_1(&v22);
    return v22;
  }

  if (a2 <= 0)
  {
    VTPreprocessingSessionAddResolution_cold_3(&v22);
    return v22;
  }

  if (a3 <= 0)
  {
    VTPreprocessingSessionAddResolution_cold_2(&v22);
    return v22;
  }

  v14 = malloc_type_calloc(1uLL, 0x48uLL, 0x10E00409425AC4EuLL);
  *v14 = a2;
  v14[1] = a3;
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 1) = v15;
  *(v14 + 7) = a6;
  *(v14 + 8) = a7;
  if (a5)
  {
    v16 = CFRetain(a5);
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 4) = v16;
  CFArrayAppendValue(*(a1 + 80), v14);
  v17 = *(a1 + 64);
  v18 = *v14;
  v19 = *(CMBaseObjectGetVTable() + 16);
  if (*v19 < 2uLL)
  {
    return 4294954514;
  }

  v20 = v19[11];
  if (!v20)
  {
    return 4294954514;
  }

  return v20(v17, v14, v18);
}

void VTPreprocessingSessionInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    *(a1 + 16) = 1;
    v2 = *(a1 + 64);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 64) = 0;
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 80) = 0;
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 88) = 0;
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 48) = 0;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 56) = 0;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 32) = 0;
    }
  }
}

const void *VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes(void *a1, CFTypeRef cf)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[5];
      v2[5] = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      v4 = v2[6];
      if (v4)
      {
        CFRelease(v4);
        v2[6] = 0;
      }

      result = v2[7];
      if (result)
      {
        CFRelease(result);
        result = 0;
        v2[7] = 0;
      }
    }

    else
    {
      VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    VTEncoderPreprocessingSessionSetSourcePixelBufferAttributes_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t vtPreprocessingSessionEnsureResolutionIsPartOfSession(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v5 = 374;
LABEL_9:
    vtPreprocessingSessionEnsureResolutionIsPartOfSession_cold_1(v5, &v6);
    return v6;
  }

  if (!*a1)
  {
    v5 = 378;
    goto LABEL_9;
  }

  v3 = *(*a1 + 80);
  v7.length = CFArrayGetCount(v3);
  v7.location = 0;
  if (!CFArrayContainsValue(v3, v7, a2))
  {
    v5 = 379;
    goto LABEL_9;
  }

  return 0;
}

double vtPreprocessingSessionInit(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__CFString *vtPreprocessingSessionCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPreprocessingSession %p [%p]>{}", a1, v4);
  return Mutable;
}

void vtPreprocessingSessionCreateProperties()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    v2 = v1;
    values = v1;
    keys[0] = @"SourcePixelBufferAttributes";
    sVTPreprocessingSessionProperties = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!sVTPreprocessingSessionProperties)
    {
      vtPreprocessingSessionCreateProperties_cold_1();
    }

    CFRelease(v2);
  }

  else
  {
    vtPreprocessingSessionCreateProperties_cold_2();
  }
}

uint64_t RegisterVTMultiPassStorage()
{
  result = _CFRuntimeRegisterClass();
  sVTMultiPassStorageID = result;
  return result;
}

OSStatus VTMultiPassStorageCreate(CFAllocatorRef allocator, CFURLRef fileURL, CMTimeRange *timeRange, CFDictionaryRef options, VTMultiPassStorageRef *multiPassStorageOut)
{
  v80 = *MEMORY[0x1E69E9840];
  value = 0;
  if (!multiPassStorageOut)
  {
    return -12902;
  }

  MEMORY[0x193AE3010](&VTMultiPassStorageGetTypeID_sRegisterVTMultiPassStorageOnce, RegisterVTMultiPassStorage);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return -12904;
  }

  v11 = Instance;
  memset(&callBacks, 0, sizeof(callBacks));
  if (!FigServer_IsServerProcess())
  {
    v15 = *&timeRange->start.epoch;
    *&range1.start.value = *&timeRange->start.value;
    *&range1.start.epoch = v15;
    *&range1.duration.timescale = *&timeRange->duration.timescale;
    EmptyTable = VTMultiPassStorageRemote_Create(v11, allocator, fileURL, &range1, options, (v11 + 16));
    if (!EmptyTable)
    {
      goto LABEL_76;
    }

    goto LABEL_32;
  }

  if (!options)
  {
    v13 = 1;
    goto LABEL_13;
  }

  v12 = CFDictionaryGetValue(options, @"ParavirtualizationHostEncoderSession");
  *(v11 + 24) = v12;
  if (v12)
  {
    goto LABEL_76;
  }

  *(v11 + 56) = 1;
  if (CFDictionaryGetValueIfPresent(options, @"DoNotDelete", &value))
  {
    v13 = value != *MEMORY[0x1E695E4D0];
LABEL_13:
    *(v11 + 56) = v13;
  }

  callBacks.version = 0;
  callBacks.retain = vtMultiPassStorageLocationRetain;
  callBacks.release = vtMultiPassStorageLocationRelease;
  callBacks.copyDescription = vtMultiPassStorageLocationCopyDescription;
  callBacks.equal = vtMultiPassStorageLocationEqual;
  v17 = CFGetAllocator(v11);
  *(v11 + 160) = CFArrayCreateMutable(v17, 0, &callBacks);
  v18 = CFGetAllocator(v11);
  *(v11 + 168) = CFArrayCreateMutable(v18, 0, &callBacks);
  v19 = *&timeRange->start.epoch;
  *&range1.start.value = *&timeRange->start.value;
  *&range1.start.epoch = v19;
  *&range1.duration.timescale = *&timeRange->duration.timescale;
  v20 = *(MEMORY[0x1E6960C98] + 16);
  *&range2.start.value = *MEMORY[0x1E6960C98];
  *&range2.start.epoch = v20;
  *&range2.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (!CMTimeRangeEqual(&range1, &range2) && ((timeRange->start.flags & 1) == 0 || (timeRange->duration.flags & 1) == 0 || timeRange->duration.epoch || timeRange->duration.value < 0))
  {
    VTMultiPassStorageCreate_cold_4(&range1);
    v14 = range1.start.value;
    goto LABEL_65;
  }

  v21 = *&timeRange->start.value;
  v22 = *&timeRange->duration.timescale;
  *(v11 + 128) = *&timeRange->start.epoch;
  *(v11 + 144) = v22;
  *(v11 + 112) = v21;
  *(v11 + 40) = FigReentrantMutexCreate();
  if (!fileURL)
  {
    range1.start.value = 0;
    v29 = FigCFURLCreateFromTemporaryFileWithDirectory();
    if (v29)
    {
      v30 = v29;
      v31 = FigFileForkOpenMainByCFURL();
      if (v31)
      {
        v14 = v31;
        if (range1.start.value)
        {
          FigFileForkClose();
        }

        CFRelease(v30);
        goto LABEL_65;
      }

      v32 = range1.start.value;
      *(v11 + 64) = v30;
      *(v11 + 72) = v32;
    }

    else if (!VTMultiPassStorageCreate_cold_3(&range1, &range2))
    {
      v14 = range2.start.value;
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  *(v11 + 64) = CFRetain(fileURL);
  if (!FigFileDoesFileExist())
  {
    EmptyTable = FigFileForkOpenMainByCFURL();
    if (EmptyTable)
    {
      goto LABEL_32;
    }

LABEL_31:
    EmptyTable = vtMultiPassStorageCreateEmptyTable();
    if (!EmptyTable)
    {
      goto LABEL_76;
    }

    goto LABEL_32;
  }

  EmptyTable = FigFileForkOpenMainByCFURL();
  if (EmptyTable)
  {
LABEL_32:
    v14 = EmptyTable;
    goto LABEL_65;
  }

  memset(&range1, 0, 40);
  FigSimpleMutexLock();
  FileInfo = FigFileGetFileInfo();
  if (FileInfo)
  {
    goto LABEL_26;
  }

  v24 = range1.start.value;
  FileInfo = FigFileForkRead();
  if (FileInfo)
  {
    goto LABEL_26;
  }

  v25 = bswap32(v76);
  if (v25 < 0x14 || v24 < v25 || v77 != 1887007846 || v78 != 1936747894 || v79 != 0x1000000)
  {
    fig_log_get_emitter();
    FileInfo = FigSignalErrorAtGM();
LABEL_26:
    v14 = FileInfo;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_71;
  }

  v65 = 0;
  v66 = 0;
  allocatora = *MEMORY[0x1E695E480];
  while (1)
  {
    v33 = FigFileForkRead();
    if (v33)
    {
      goto LABEL_68;
    }

    if (v73 == 0x1000000)
    {
      v33 = FigFileForkRead();
      if (v33)
      {
        goto LABEL_68;
      }

      v34 = bswap64(v75);
      v35 = 16;
    }

    else
    {
      v34 = bswap32(v73);
      v35 = 12;
    }

    v36 = v34 + v25;
    v37 = v34 < 8 || v36 > v24;
    if (v37)
    {
      VTMultiPassStorageCreate_cold_2(&range2);
LABEL_87:
      v26 = 0;
      v14 = range2.start.value;
      goto LABEL_69;
    }

    if (v74 == 1768975734)
    {
      break;
    }

    if (v74 == 1936747894)
    {
      *&range2.start.value = *MEMORY[0x1E6960CC0];
      range2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      v44 = v34 - v35;
      v45 = (v34 - v35) / 0x24;
      if ((v34 - v35) % 0x24)
      {
LABEL_67:
        fig_log_get_emitter();
        v33 = FigSignalErrorAtGM();
LABEL_68:
        v14 = v33;
        v26 = 0;
      }

      else
      {
        v47 = 512;
        if (v45 < 0x200)
        {
          v47 = v45;
        }

        v62 = v47;
        v48 = 36 * v47;
        if (v44 >= 0x24)
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        v26 = malloc_type_malloc(v49, 0x100004077774924uLL);
        if (v26)
        {
          if (v44 >= 0x24)
          {
            v50 = 0;
            v51 = 0;
            v52 = v35 + v25;
            v61 = v45;
            while (1)
            {
              v53 = v45 - v51 >= v62 ? v62 : v45 - v51;
              allocatorb = (36 * v53);
              v39 = FigFileForkRead();
              if (v39)
              {
                break;
              }

              if (v53)
              {
                v60 = v52;
                v54 = 0;
                v59 = v53 + v51;
                while (1)
                {
                  v55 = malloc_type_malloc(0x30uLL, 0x10000400B536EFBuLL);
                  *v55 = *(v54 + v26);
                  *(v55 + 2) = *(v54 + v26 + 8);
                  v56 = *(v54 + v26 + 12);
                  *(v55 + 3) = v56;
                  *(v55 + 2) = 0;
                  *(v55 + 6) = *(v54 + v26 + 16);
                  *(v55 + 4) = *(v54 + v26 + 20);
                  *(v55 + 5) = *(v54 + v26 + 28);
                  v57 = (v56 & 0x1D) == 1;
                  v58 = 168;
                  if (v57)
                  {
                    v58 = 160;
                  }

                  CFArrayAppendValue(*(v11 + v58), v55);
                  if (v51 <= 0)
                  {
                    v50 = *(v55 + 6);
                  }

                  else
                  {
                    time1 = *v55;
                    time2 = range2.start;
                    if (CMTimeCompare(&time1, &time2) < 0)
                    {
                      goto LABEL_109;
                    }

                    time1 = *v55;
                    time2 = range2.start;
                    if (CMTimeCompare(&time1, &time2))
                    {
                      v50 = *(v55 + 6);
                    }

                    else
                    {
                      v37 = *(v55 + 6) < v50;
                      v50 = *(v55 + 6);
                      if (v37)
                      {
LABEL_109:
                        fig_log_get_emitter();
                        v39 = FigSignalErrorAtGM();
                        goto LABEL_110;
                      }
                    }
                  }

                  *&range2.start.value = *v55;
                  range2.start.epoch = *(v55 + 2);
                  ++v51;
                  v54 = (v54 + 36);
                  if (allocatorb == v54)
                  {
                    v51 = v59;
                    v52 = v60;
                    break;
                  }
                }
              }

              v52 += allocatorb;
              v45 = v61;
              if (v51 >= v61)
              {
                goto LABEL_85;
              }
            }

LABEL_110:
            v14 = v39;
          }

          else
          {
LABEL_85:
            v14 = 0;
            *(v11 + 80) = v24;
            *(v11 + 88) = 0;
          }
        }

        else
        {
LABEL_112:
          v14 = -12904;
        }
      }

LABEL_69:
      v28 = v65;
      goto LABEL_70;
    }

LABEL_62:
    v25 = v36;
    if (v36 >= v24)
    {
      goto LABEL_67;
    }
  }

  if (v75)
  {
    VTMultiPassStorageCreate_cold_1(&range2);
    goto LABEL_87;
  }

  v38 = v34 - v35;
  if (v34 == v35)
  {
    goto LABEL_62;
  }

  v26 = malloc_type_malloc(v34 - v35, 0x100004077774924uLL);
  if (!v26)
  {
    goto LABEL_112;
  }

  v39 = FigFileForkRead();
  if (v39)
  {
    goto LABEL_110;
  }

  if (v66)
  {
    CFRelease(v66);
  }

  v40 = CFDataCreate(allocatora, v26, v38);
  v66 = v40;
  if (!v40)
  {
    goto LABEL_61;
  }

  v41 = v40;
  if (v65)
  {
    v42 = v40;
    CFRelease(v65);
    v41 = v42;
  }

  v28 = CFStringCreateFromExternalRepresentation(allocatora, v41, 0x8000100u);
  v43 = VTMultiPassStorageSetIdentifier(v11, v28);
  if (!v43)
  {
    v65 = v28;
LABEL_61:
    free(v26);
    goto LABEL_62;
  }

  v14 = v43;
LABEL_70:
  v27 = v66;
LABEL_71:
  FigSimpleMutexUnlock();
  free(v26);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (!v14)
  {
LABEL_76:
    v14 = 0;
    *multiPassStorageOut = v11;
    return v14;
  }

LABEL_65:
  CFRelease(v11);
  return v14;
}

__CFString *vtMultiPassStorageLocationCopyDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<vtMultiPassStorageLocation>{time:%lld/%d, index:%d, dataOffset:%lld, dataSize:%lld}", *a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  return Mutable;
}

BOOL vtMultiPassStorageLocationEqual(uint64_t a1, uint64_t a2)
{
  time1 = *a1;
  v5 = *a2;
  return !CMTimeCompare(&time1, &v5) && *(a1 + 24) == *(a2 + 24);
}

uint64_t VTMultiPassStorageInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 32))
  {
    *(a1 + 32) = 1;
    v2 = *(a1 + 24);
    if (v2)
    {
      VTParavirtualizationHostEncoderSessionMultipassStorageInvalidate(v2);
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        VTMultiPassStorageRemote_Invalidate(v3);
      }

      else
      {
        if (*(a1 + 40))
        {
          FigSimpleMutexLock();
        }

        FigFileForkClose();
        if (*(a1 + 64))
        {
          FigFileDeleteFile();
        }

        *(a1 + 72) = 0;
        v4 = *(a1 + 160);
        if (v4)
        {
          CFRelease(v4);
          *(a1 + 160) = 0;
        }

        v5 = *(a1 + 168);
        if (v5)
        {
          CFRelease(v5);
          *(a1 + 168) = 0;
        }

        v6 = *(a1 + 64);
        if (v6)
        {
          CFRelease(v6);
          *(a1 + 64) = 0;
        }

        v7 = *(a1 + 48);
        if (v7)
        {
          CFRelease(v7);
          *(a1 + 48) = 0;
        }

        if (*(a1 + 40))
        {
          FigSimpleMutexUnlock();
          FigSimpleMutexDestroy();
        }
      }
    }
  }

  return 0;
}

uint64_t VTMultiPassStorageSetIdentifier(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    VTMultiPassStorageSetIdentifier_cold_3(&v12);
    return v12;
  }

  if (*(a1 + 32))
  {
    VTMultiPassStorageSetIdentifier_cold_1(&v10);
    return v10;
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    return VTParavirtualizationHostEncoderSessionMultipassStorageSetIdentifier(v4);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v7 = *(a1 + 48);
      if (v7)
      {
        if (CFEqual(v7, a2))
        {
          v8 = 0;
        }

        else
        {
          v8 = 4294955083;
        }
      }

      else
      {
        v9 = CFRetain(a2);
        v8 = 0;
        *(a1 + 48) = v9;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      VTMultiPassStorageSetIdentifier_cold_2(&v11);
      return v11;
    }

    return v8;
  }

  return VTMultiPassStorageRemote_SetIdentifier(v6);
}

CFStringRef VTMultiPassStorageCopyIdentifier(uint64_t a1)
{
  if (!a1)
  {
    VTMultiPassStorageCopyIdentifier_cold_2();
    return 0;
  }

  if (*(a1 + 32))
  {
    VTMultiPassStorageCopyIdentifier_cold_1();
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    return VTParavirtualizationHostEncoderSessionMultipassStorageCopyIdentifier(v2);
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    FigSimpleMutexLock();
    v5 = *(a1 + 48);
    if (v5)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v5);
    }

    else
    {
      Copy = 0;
    }

    FigSimpleMutexUnlock();
    return Copy;
  }

  return VTMultiPassStorageRemote_CopyIdentifier(v4);
}

uint64_t VTMultiPassStorageSetDataAtTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, CFDataRef theData)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VTMultiPassStorageSetDataAtTimeStamp_cold_4(&range);
    return LODWORD(range.start.value);
  }

  if (*(a1 + 32))
  {
    VTMultiPassStorageSetDataAtTimeStamp_cold_1(&range);
    return LODWORD(range.start.value);
  }

  v6 = a3;
  v8 = *(a2 + 3);
  if ((v8 & 0x1D) == 1)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_5;
    }

LABEL_8:
    VTMultiPassStorageSetDataAtTimeStamp_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v9 = *(a1 + 24);
  if (!v9)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      *&range.start.value = *a2;
      range.start.epoch = *(a2 + 2);
      return VTMultiPassStorageRemote_SetDataAtTimeStamp(v11, &range, a3, theData);
    }

    if ((*(a1 + 124) & 1) == 0 || (*(a1 + 148) & 1) == 0 || *(a1 + 152) || (v8 & 1) == 0 || (*(a1 + 136) & 0x8000000000000000) != 0 || (v14 = *(a1 + 128), *&range.start.value = *(a1 + 112), *&range.start.epoch = v14, *&range.duration.timescale = *(a1 + 144), time = *a2, CMTimeRangeContainsTime(&range, &time)))
    {
      FigSimpleMutexLock();
      v15 = 160;
      if ((*(a2 + 3) & 1) == 0)
      {
        v15 = 168;
      }

      v16 = *(a1 + v15);
      value = *a2;
      v32 = *(a2 + 2);
      LODWORD(v33) = v6;
      Count = CFArrayGetCount(v16);
      v38.location = 0;
      v38.length = Count;
      v18 = CFArrayBSearchValues(v16, v38, &value, vtMultiPassLocationCompareTimeStampAndIndex, 0);
      if (v18 >= Count)
      {
        ValueAtIndex = 0;
        v19 = Count;
        if (theData)
        {
LABEL_26:
          Length = CFDataGetLength(theData);
          v23 = Length;
          theArray = v16;
          if (ValueAtIndex && ValueAtIndex[5] >= Length)
          {
            v25 = ValueAtIndex[4];
            v26 = *(a1 + 80);
          }

          else
          {
            if (!*(a1 + 88))
            {
              FigSimpleMutexLock();
              *&range.start.value = xmmword_18FED0D90;
              *(a1 + 88) = *(a1 + 80);
              v24 = FigFileForkWrite();
              if (v24)
              {
                v12 = v24;
                FigSimpleMutexUnlock();
                goto LABEL_42;
              }

              *(a1 + 80) += 16;
              FigSimpleMutexUnlock();
            }

            v25 = *(a1 + 80);
            v26 = v25 + v23;
          }

          CFDataGetBytePtr(theData);
          v27 = FigFileForkWrite();
          if (v27)
          {
            v12 = v27;
            goto LABEL_42;
          }

          *(a1 + 80) = v26;
          if (ValueAtIndex)
          {
            v12 = 0;
            ValueAtIndex[4] = v25;
            ValueAtIndex[5] = v23;
LABEL_42:
            FigSimpleMutexUnlock();
            return v12;
          }

          v28 = malloc_type_malloc(0x30uLL, 0x10000400B536EFBuLL);
          if (!v28)
          {
            v12 = 4294954392;
            goto LABEL_42;
          }

          *v28 = *a2;
          v28[2] = 0;
          v28[1] = *(a2 + 1);
          *(v28 + 6) = v6;
          v28[4] = v25;
          v28[5] = v23;
          CFArrayInsertValueAtIndex(theArray, v19, v28);
LABEL_41:
          v12 = 0;
          goto LABEL_42;
        }
      }

      else
      {
        v19 = v18;
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
        v21 = *ValueAtIndex;
        range.start.epoch = ValueAtIndex[2];
        *&range.start.value = v21;
        time = *a2;
        if (CMTimeCompare(&range.start, &time) || *(ValueAtIndex + 6) != v6)
        {
          ValueAtIndex = 0;
        }

        if (theData)
        {
          goto LABEL_26;
        }
      }

      if (ValueAtIndex)
      {
        CFArrayRemoveValueAtIndex(v16, v19);
      }

      goto LABEL_41;
    }

    VTMultiPassStorageSetDataAtTimeStamp_cold_3(&range);
    return LODWORD(range.start.value);
  }

  *&range.start.value = *a2;
  range.start.epoch = *(a2 + 2);
  return VTParavirtualizationHostEncoderSessionMultipassStorageSetDataAtTimeStamp(v9, &range.start, a3, theData);
}

uint64_t vtMultiPassLocationCompareTimeStampAndIndex(uint64_t a1, uint64_t a2)
{
  time1 = *a1;
  v9 = *a2;
  LODWORD(result) = CMTimeCompare(&time1, &v9);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  v7 = v5 < v6;
  v8 = v5 > v6;
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

uint64_t VTMultiPassStorageGetTimeStamp(uint64_t a1, __int128 *a2, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    VTMultiPassStorageGetTimeStamp_cold_6(&value);
    return value;
  }

  if (!a3)
  {
    VTMultiPassStorageGetTimeStamp_cold_5(&value);
    return value;
  }

  if (!a4)
  {
    VTMultiPassStorageGetTimeStamp_cold_4(&value);
    return value;
  }

  if (*(a1 + 32))
  {
    VTMultiPassStorageGetTimeStamp_cold_1(&value);
    return value;
  }

  v8 = *(a2 + 3);
  if ((v8 & 0x1D) == 1)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v8)
  {
LABEL_10:
    VTMultiPassStorageGetTimeStamp_cold_2(&value);
    return value;
  }

LABEL_7:
  v33 = 0u;
  v34 = 0u;
  value = 0u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      *&range.start.value = *a2;
      range.start.epoch = *(a2 + 2);
      return VTMultiPassStorageRemote_GetTimeStamp(v11, &range.start.value, a3, a4);
    }

    Count = CFArrayGetCount(*(a1 + 160));
    if (*(a1 + 124) & 1) != 0 && (*(a1 + 148) & 1) != 0 && !*(a1 + 152) && (*(a1 + 136) & 0x8000000000000000) == 0 && (*(a2 + 12))
    {
      v21 = *(a1 + 128);
      *&range.start.value = *(a1 + 112);
      *&range.start.epoch = v21;
      *&range.duration.timescale = *(a1 + 144);
      v30 = *a2;
      if (!CMTimeRangeContainsTime(&range, &v30))
      {
        VTMultiPassStorageGetTimeStamp_cold_3(&range);
        return LODWORD(range.start.value);
      }
    }

    if (!Count)
    {
      v12 = 0;
      v17 = MEMORY[0x1E6960C70];
      *a4 = *MEMORY[0x1E6960C70];
      *(a4 + 16) = *(v17 + 16);
      return v12;
    }

    FigSimpleMutexLock();
    if (CFEqual(a3, @"GetCurrentTimeStamp"))
    {
      v12 = 0;
      v15 = *a2;
      v16 = *(a2 + 2);
LABEL_21:
      *(a4 + 16) = v16;
      *a4 = v15;
LABEL_30:
      FigSimpleMutexUnlock();
      return v12;
    }

    if (CFEqual(a3, @"GetFirstTimeStamp") || CFEqual(a3, @"GetLastTimeStamp"))
    {
      if (CFEqual(a3, @"GetFirstTimeStamp"))
      {
        v18 = 0;
      }

      else
      {
        v18 = Count - 1;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), v18);
      v12 = 0;
      v20 = ValueAtIndex[2];
      *a4 = *ValueAtIndex;
      goto LABEL_29;
    }

    if (!CFEqual(a3, @"GetPreviousTimeStamp") && !CFEqual(a3, @"GetNextTimeStamp"))
    {
      fig_log_get_emitter();
      v12 = FigSignalErrorAtGM();
      goto LABEL_30;
    }

    value = *a2;
    *&v33 = *(a2 + 2);
    v35.location = 0;
    v35.length = Count;
    v22 = CFArrayBSearchValues(*(a1 + 160), v35, &value, vtMultiPassLocationCompareTimeStampOnly, 0);
    if (v22 == CFArrayGetCount(*(a1 + 160)))
    {
      v22 = CFArrayGetCount(*(a1 + 160)) - 1;
    }

    if (CFEqual(a3, @"GetPreviousTimeStamp"))
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(*(a1 + 160), v22);
          v24 = *v23;
          range.start.epoch = v23[2];
          *&range.start.value = v24;
          v30 = *a2;
          if (CMTimeCompare(&range.start, &v30) < 0)
          {
            break;
          }

          if (v22-- < 1)
          {
            goto LABEL_51;
          }
        }

LABEL_52:
        v12 = 0;
        v15 = *v23;
        v16 = v23[2];
        goto LABEL_21;
      }
    }

    else
    {
      v26 = CFArrayGetCount(*(a1 + 160));
      if (Count >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = Count;
      }

      if (v22 < v27)
      {
        do
        {
          v23 = CFArrayGetValueAtIndex(*(a1 + 160), v22);
          v28 = *v23;
          range.start.epoch = v23[2];
          *&range.start.value = v28;
          v30 = *a2;
          if (CMTimeCompare(&range.start, &v30) >= 1)
          {
            goto LABEL_52;
          }
        }

        while (v27 != ++v22);
      }
    }

LABEL_51:
    v12 = 0;
    v29 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    v20 = *(v29 + 16);
LABEL_29:
    *(a4 + 16) = v20;
    goto LABEL_30;
  }

  *&range.start.value = *a2;
  range.start.epoch = *(a2 + 2);
  return VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStamp(v9, &range.start, a3, a4);
}

uint64_t vtMultiPassLocationCompareTimeStampOnly(CMTime *a1, CMTime *a2)
{
  time1 = *a1;
  v3 = *a2;
  return CMTimeCompare(&time1, &v3);
}

uint64_t VTMultiPassStorageGetTimeStampAndDuration(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 24);
  if (v8)
  {
    *&range.start.value = *a2;
    range.start.epoch = *(a2 + 16);
    return VTParavirtualizationHostEncoderSessionMultipassStorageGetTimeStampAndDuration(v8, &range.start, a3, a4, a5);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *&range.start.value = *a2;
    range.start.epoch = *(a2 + 16);
    return VTMultiPassStorageRemote_GetTimeStampAndDuration(v10, &range.start.value, a3, a4, a5);
  }

  *&range.start.value = *a2;
  range.start.epoch = *(a2 + 16);
  TimeStamp = VTMultiPassStorageGetTimeStamp(a1, &range.start.value, a3, a4);
  v11 = TimeStamp;
  if (a5 && !TimeStamp)
  {
    if ((*(a4 + 12) & 1) == 0)
    {
      v11 = 0;
      v14 = MEMORY[0x1E6960C70];
      *a5 = *MEMORY[0x1E6960C70];
      epoch = *(v14 + 16);
      goto LABEL_21;
    }

    v19 = *MEMORY[0x1E6960C70];
    *&v25.value = *MEMORY[0x1E6960C70];
    v16 = *(MEMORY[0x1E6960C70] + 16);
    v25.epoch = v16;
    *&range.start.value = *a4;
    range.start.epoch = *(a4 + 16);
    if (VTMultiPassStorageGetTimeStamp(a1, &range.start.value, @"GetNextTimeStamp", &v25))
    {
LABEL_12:
      *&range.start.value = v19;
      range.start.epoch = v16;
      lhs = *a4;
      v11 = VTMultiPassStorageGetTimeStamp(a1, &lhs.value, @"GetPreviousTimeStamp", &range);
      if (v11 || (range.start.flags & 1) == 0)
      {
        *a5 = v19;
        *(a5 + 16) = v16;
        return v11;
      }

      rhs = *a4;
      start = range.start;
      CMTimeSubtract(&lhs, &rhs, &start);
      *a5 = *&lhs.value;
      epoch = lhs.epoch;
LABEL_21:
      *(a5 + 16) = epoch;
      return v11;
    }

    if (v25.flags)
    {
      lhs = v25;
    }

    else
    {
      v17 = *(a1 + 128);
      *&range.start.value = *(a1 + 112);
      *&range.start.epoch = v17;
      *&range.duration.timescale = *(a1 + 144);
      CMTimeRangeGetEnd(&v22, &range);
      if ((v22.flags & 0x1D) != 1)
      {
        goto LABEL_12;
      }

      v18 = *(a1 + 128);
      *&range.start.value = *(a1 + 112);
      *&range.start.epoch = v18;
      *&range.duration.timescale = *(a1 + 144);
      CMTimeRangeGetEnd(&lhs, &range);
    }

    rhs = *a4;
    CMTimeSubtract(&range.start, &lhs, &rhs);
    v11 = 0;
    *a5 = *&range.start.value;
    epoch = range.start.epoch;
    goto LABEL_21;
  }

  return v11;
}

uint64_t VTMultiPassStorageCopyDataAtTimeStamp(uint64_t a1, __int128 *a2, uint64_t a3, __CFData **a4)
{
  if (!a1)
  {
    VTMultiPassStorageCopyDataAtTimeStamp_cold_4(&range);
    return LODWORD(range.start.value);
  }

  if (*(a1 + 32))
  {
    VTMultiPassStorageCopyDataAtTimeStamp_cold_1(&range);
    return LODWORD(range.start.value);
  }

  v6 = a3;
  v8 = *(a2 + 3);
  if ((v8 & 0x1D) == 1)
  {
    if (!*(a2 + 2))
    {
      goto LABEL_5;
    }

LABEL_8:
    VTMultiPassStorageCopyDataAtTimeStamp_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v9 = *(a1 + 24);
  if (!v9)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      *&range.start.value = *a2;
      range.start.epoch = *(a2 + 2);
      return VTMultiPassStorageRemote_CopyDataAtTimeStamp(v11, &range.start.value, a3, a4);
    }

    if ((*(a1 + 124) & 1) == 0 || (*(a1 + 148) & 1) == 0 || *(a1 + 152) || (v8 & 1) == 0 || (*(a1 + 136) & 0x8000000000000000) != 0 || (v14 = *(a1 + 128), *&range.start.value = *(a1 + 112), *&range.start.epoch = v14, *&range.duration.timescale = *(a1 + 144), v25 = *a2, CMTimeRangeContainsTime(&range, &v25)))
    {
      FigSimpleMutexLock();
      v15 = 160;
      if ((*(a2 + 3) & 1) == 0)
      {
        v15 = 168;
      }

      v16 = *(a1 + v15);
      value = *a2;
      v28 = *(a2 + 2);
      LODWORD(v29) = v6;
      Count = CFArrayGetCount(v16);
      v32.location = 0;
      v32.length = Count;
      v18 = CFArrayBSearchValues(v16, v32, &value, vtMultiPassLocationCompareTimeStampAndIndex, 0);
      if (v18 >= Count || (ValueAtIndex = CFArrayGetValueAtIndex(v16, v18), v20 = *ValueAtIndex, range.start.epoch = ValueAtIndex[2], *&range.start.value = v20, v25 = *a2, CMTimeCompare(&range.start, &v25)) || *(ValueAtIndex + 6) != v6)
      {
        v23 = 0;
      }

      else
      {
        v21 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v21, ValueAtIndex[5]);
        if (!Mutable)
        {
          v12 = 4294954392;
          goto LABEL_29;
        }

        v23 = Mutable;
        CFDataSetLength(Mutable, ValueAtIndex[5]);
        CFDataGetMutableBytePtr(v23);
        v24 = FigFileForkRead();
        if (v24)
        {
          v12 = v24;
          FigSimpleMutexUnlock();
          CFRelease(v23);
          return v12;
        }
      }

      v12 = 0;
      *a4 = v23;
LABEL_29:
      FigSimpleMutexUnlock();
      return v12;
    }

    VTMultiPassStorageCopyDataAtTimeStamp_cold_3(&range);
    return LODWORD(range.start.value);
  }

  *&range.start.value = *a2;
  range.start.epoch = *(a2 + 2);
  return VTParavirtualizationHostEncoderSessionMultipassStorageCopyDataAtTimeStamp(v9, &range.start, a3, a4);
}

uint64_t VTMultiPassStorageWriteSegment(const __CFURL *a1, uint64_t a2, const __CFURL *a3, uint64_t a4, uint64_t a5)
{
  multiPassStorageOut = 0;
  multiPassStorage = 0;
  v20 = 0u;
  v21 = 0u;
  if (!a1)
  {
    VTMultiPassStorageWriteSegment_cold_2(&v19);
    goto LABEL_17;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    VTMultiPassStorageWriteSegment_cold_1(&v19);
LABEL_17:
    value_low = LODWORD(v19.start.value);
    goto LABEL_18;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"DoNotDelete", *MEMORY[0x1E695E4D0]);
  v12 = *(a2 + 16);
  *&v19.start.value = *a2;
  *&v19.start.epoch = v12;
  *&v19.duration.timescale = *(a2 + 32);
  v13 = VTMultiPassStorageCreate(v10, a1, &v19, Mutable, &multiPassStorageOut);
  if (!v13)
  {
    v14 = *(a2 + 16);
    *&v19.start.value = *a2;
    *&v19.start.epoch = v14;
    *&v19.duration.timescale = *(a2 + 32);
    v13 = VTMultiPassStorageCreate(v10, a3, &v19, Mutable, &multiPassStorage);
    if (!v13)
    {
      *&v21 = a4;
      *(&v21 + 1) = a5;
      v15 = a5 ? &v20 : 0;
      v16 = *(a2 + 16);
      *&v19.start.value = *a2;
      *&v19.start.epoch = v16;
      *&v19.duration.timescale = *(a2 + 32);
      v20 = xmmword_18FECDDB0;
      v13 = vtMultiPassStorageCopyStorageToMultiPassStorage(multiPassStorageOut, multiPassStorage, &v19, v15);
      if (!v13)
      {
        v13 = VTMultiPassStorageClose(multiPassStorage);
        if (!v13)
        {
          v13 = VTMultiPassStorageClose(multiPassStorageOut);
        }
      }
    }
  }

  value_low = v13;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_18:
  if (multiPassStorageOut)
  {
    CFRelease(multiPassStorageOut);
  }

  if (multiPassStorage)
  {
    CFRelease(multiPassStorage);
  }

  return value_low;
}

double vtMultiPassStorageInit(_OWORD *a1)
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
  return result;
}

__CFString *vtMultiPassStorageCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 160);
  if (v8)
  {
    Count = CFArrayGetCount(*(a1 + 160));
  }

  else
  {
    Count = 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = CFArrayGetCount(*(a1 + 168));
  }

  else
  {
    v11 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"<VTMultiPassStorage %p [%p]>{invalid:%d, delete:%d, url:%@, locations:%p (%ld)globals:%p (%ld)remote:%p}", a1, v4, v5, v6, v7, v8, Count, v10, v11, *(a1 + 16));
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, CMTime *time2, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 time2a, uint64_t time2_16, uint64_t a13, __n128 time1a, uint64_t time1_16)
{
  time1_16 = a1;
  time1a = a2;
  time2a = *(v15 + 48);
  time2_16 = *(v16 - 160);

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t VTDecompressionSessionRemoteClient_Create(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9, char *src, _DWORD *a11, void *a12, void *a13, int *a14)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  memset(v37, 0, 400);
  v35 = 0;
  v26 = 0x13000000000000;
  memset(&name, 0, sizeof(name));
  v24 = 4;
  v25 = a2;
  v27 = a4;
  LODWORD(v28) = 16777472;
  HIDWORD(v28) = a5;
  v29 = a6;
  v30 = 16777472;
  v31 = a7;
  v32 = a8;
  v33 = 16777472;
  v34 = a9;
  v35 = *MEMORY[0x1E69E99E0];
  *&v36 = a3;
  *(&v36 + 1) = __PAIR64__(a7, a5);
  LODWORD(v37[0]) = a9;
  if (MEMORY[0x1EEE9AC40])
  {
    v15 = mig_strncpy_zerofill(v37 + 12, src, 512);
  }

  else
  {
    v15 = mig_strncpy(v37 + 12, src, 512);
  }

  DWORD1(v37[0]) = 0;
  DWORD2(v37[0]) = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x471800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v19 = mach_msg(&name, 3162387, v16 + 124, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v20 = v19;
  if ((v19 - 268435458) > 0xE || ((1 << (v19 - 2)) & 0x4003) == 0)
  {
    if (!v19)
    {
      if (name.msgh_id == 71)
      {
        v20 = 4294966988;
      }

      else if (name.msgh_id == 18300)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v20 = 4294966996;
            if (v26)
            {
              if (name.msgh_remote_port)
              {
                v20 = 4294966996;
              }

              else
              {
                v20 = v26;
              }
            }
          }

          else
          {
            v20 = 4294966996;
          }

          goto LABEL_30;
        }

        v20 = 4294966996;
        if (v24 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v26) << 16 == 1114112)
        {
          v20 = 0;
          *a11 = v25;
          v21 = v29;
          *a12 = v28;
          *a13 = v21;
          *a14 = v30;
          return v20;
        }
      }

      else
      {
        v20 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v20;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v20 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v20;
}

uint64_t VTDecompressionSessionRemoteClient_Invalidate(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x471900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18301)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t VTDecompressionSessionRemoteClient_Destroy(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x471A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18302)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t VTDecompressionSessionRemoteClient_CopySupportedPropertyDictionary(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x471B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x44u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18303)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_31;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v13 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v13;
            *a4 = DWORD1(v17);
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v11;
}

uint64_t VTDecompressionSessionRemoteClient_CopySerializableProperties(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x471C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x44u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18304)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_31;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
        {
          v13 = DWORD1(v16);
          if (DWORD1(v16) == v17)
          {
            v11 = 0;
            *a2 = *&msg[28];
            *a3 = v13;
            *a4 = DWORD1(v17);
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v11;
}

uint64_t VTDecompressionSessionRemoteClient_CopyProperty(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  *name = 0u;
  memset(v18, 0, sizeof(v18));
  *(&v18[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(&v18[1] + 8, a2, 512);
  }

  else
  {
    v9 = mig_strncpy(&v18[1] + 8, a2, 512);
  }

  LODWORD(v18[1]) = 0;
  DWORD1(v18[1]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18[0] = 0x471D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v12 = name[3];
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(name, 3162387, v10 + 40, 0x44u, v12, *MEMORY[0x1E695FF48], 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v18[0]) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v18[0]) == 18305)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v14 = 4294966996;
            if (LODWORD(v18[1]))
            {
              if (name[2])
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = LODWORD(v18[1]);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_31;
        }

        v14 = 4294966996;
        if (DWORD2(v18[0]) == 1 && name[1] == 60 && !name[2] && BYTE7(v18[1]) == 1)
        {
          v15 = DWORD2(v18[1]);
          if (DWORD2(v18[1]) == DWORD1(v19))
          {
            v14 = 0;
            *a3 = *(v18 + 12);
            *a4 = v15;
            *a5 = DWORD2(v19);
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v14;
}

uint64_t VTDecompressionSessionRemoteClient_SetProperty(mach_port_t a1, const char *a2, uint64_t a3, unsigned int a4, int *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *&v20[8] = 0u;
  memset(&name, 0, sizeof(name));
  v17 = 1;
  v18 = a3;
  v19 = 16777472;
  *v20 = a4;
  *&v20[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v8 = mig_strncpy_zerofill(&v20[20], a2, 512);
  }

  else
  {
    v8 = mig_strncpy(&v20[20], a2, 512);
  }

  *&v20[12] = 0;
  *&v20[16] = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  *&v20[v9 + 20] = a4;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x471E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&name, 3162387, v9 + 64, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (name.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (name.msgh_id == 18306)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 40)
          {
            if (!name.msgh_remote_port)
            {
              v13 = HIDWORD(v18);
              if (!HIDWORD(v18))
              {
                *a5 = v19;
                return v13;
              }

              goto LABEL_29;
            }
          }

          else if (name.msgh_size == 36)
          {
            if (name.msgh_remote_port)
            {
              v14 = 1;
            }

            else
            {
              v14 = HIDWORD(v18) == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = HIDWORD(v18);
            }

            goto LABEL_29;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&name);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v13;
}

uint64_t VTDecompressionSessionRemoteClient_SetProperties(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x471F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162387, 0x38u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 18307)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                return v9;
              }

              goto LABEL_29;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_29;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v9;
}

uint64_t VTDecompressionSessionRemoteClient_DecodeFrame(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[28] = a2;
  v12 = 1245184;
  v13 = a3;
  v14 = 16777472;
  v15 = a4;
  v16 = a6;
  v17 = 16777472;
  v18 = a7;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x300004720;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v9 = mach_msg(msg, 2097169, 0x68u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v9;
}

uint64_t VTDecompressionSessionRemoteClient_DequeueNextPendingFrame(int a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, void *a10, _DWORD *a11, void *a12, _DWORD *a13, _DWORD *a14, void *a15, _DWORD *a16, void *a17, _DWORD *a18, _DWORD *a19, void *a20, _DWORD *a21, void *a22, _DWORD *a23, _DWORD *a24, void *a25, _DWORD *a26, void *a27, _DWORD *a28, _DWORD *a29, void *a30, _DWORD *a31, void *a32, _DWORD *a33, uint64_t a34, uint64_t a35, _DWORD *a36, _DWORD *a37)
{
  v86 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  memset(v82, 0, sizeof(v82));
  v80 = 0u;
  v81 = 0u;
  memset(v79, 0, sizeof(v79));
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  memset(v70, 0, sizeof(v70));
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x472100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v46 = *&msg[12];
  }

  else
  {
    v46 = special_reply_port;
  }

  v47 = mach_msg(msg, 3162387, 0x18u, 0x19Cu, v46, *MEMORY[0x1E695FF48], 0);
  v48 = v47;
  if ((v47 - 268435458) > 0xE || ((1 << (v47 - 2)) & 0x4003) == 0)
  {
    if (!v47)
    {
      if (*&msg[20] == 71)
      {
        v48 = 4294966988;
      }

      else if (*&msg[20] == 18309)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v48 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v48 = 4294966996;
              }

              else
              {
                v48 = *&msg[32];
              }
            }
          }

          else
          {
            v48 = 4294966996;
          }

          goto LABEL_54;
        }

        v48 = 4294966996;
        if (*&msg[24] == 17 && *&msg[4] == 404 && !*&msg[8] && WORD1(v66) << 16 == 1114112 && HIBYTE(v66) == 1 && HIWORD(v67) << 16 == 1114112 && BYTE11(v68) == 1 && BYTE11(v69) == 1 && WORD5(v70[0]) << 16 == 1114112 && BYTE7(v70[1]) == 1 && BYTE7(v70[2]) == 1 && WORD3(v71) << 16 == 1114112 && BYTE3(v72) == 1 && BYTE3(v73) == 1 && WORD1(v74) << 16 == 1114112 && HIBYTE(v74) == 1 && HIBYTE(v75) == 1 && HIWORD(v76) << 16 == 1114112 && BYTE11(v77) == 1 && BYTE11(v78) == 1)
        {
          v49 = v67;
          if (v67 == v79[7])
          {
            v50 = HIDWORD(v68);
            if (HIDWORD(v68) == v80)
            {
              v51 = HIDWORD(v69);
              if (HIDWORD(v69) == DWORD1(v80))
              {
                v52 = DWORD2(v70[1]);
                if (DWORD2(v70[1]) == DWORD2(v80))
                {
                  v53 = DWORD2(v70[2]);
                  if (DWORD2(v70[2]) == HIDWORD(v80))
                  {
                    v54 = DWORD1(v72);
                    if (DWORD1(v72) == v81)
                    {
                      v55 = DWORD1(v73);
                      if (DWORD1(v73) == DWORD1(v81))
                      {
                        v56 = v75;
                        if (v75 == DWORD2(v81))
                        {
                          v57 = v76;
                          if (v76 == HIDWORD(v81))
                          {
                            v58 = HIDWORD(v77);
                            if (HIDWORD(v77) == LODWORD(v82[0]))
                            {
                              v59 = HIDWORD(v78);
                              if (HIDWORD(v78) == HIDWORD(v82[0]))
                              {
                                v48 = 0;
                                v60 = DWORD1(v76);
                                *a2 = v79[2];
                                *a3 = *&v79[3];
                                *a4 = v79[5];
                                *a5 = v79[6];
                                *a6 = *&msg[28];
                                *a7 = *(&v66 + 4);
                                *a8 = v49;
                                *a9 = DWORD1(v67);
                                *a10 = v68;
                                *a11 = v50;
                                *a12 = v69;
                                *a13 = v51;
                                *a14 = v70[0];
                                v61 = *(&v70[1] + 12);
                                *a15 = *(v70 + 12);
                                *a16 = v52;
                                *a17 = v61;
                                *a18 = v53;
                                v62 = DWORD2(v73);
                                *a19 = HIDWORD(v70[2]);
                                *a20 = *(&v71 + 1);
                                *a21 = v54;
                                *a22 = *(&v72 + 1);
                                *a23 = v55;
                                *a24 = v62;
                                v63 = *(&v75 + 4);
                                *a25 = *(&v74 + 4);
                                *a26 = v56;
                                *a27 = v63;
                                *a28 = v57;
                                *a29 = v60;
                                *a30 = v77;
                                *a31 = v58;
                                *a32 = v78;
                                *a33 = v59;
                                *a34 = *&v82[1];
                                *(a34 + 16) = v82[3];
                                *a35 = v83;
                                *(a35 + 16) = v84;
                                *a36 = DWORD2(v84);
                                *a37 = HIDWORD(v84);
                                return v48;
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
          }
        }
      }

      else
      {
        v48 = 4294966995;
      }

LABEL_54:
      mach_msg_destroy(msg);
      return v48;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v48 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_54;
  }

  return v48;
}

uint64_t VTDecompressionSessionRemoteClient_FinishDelayedFrames(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x472200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097169, 0x18u, 0, 0, *MEMORY[0x1E695FF48], 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t VTDecompressionSessionRemoteClient_CanAcceptFormatDescription(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x472300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162387, 0x38u, 0x30u, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 18311)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                return v9;
              }

              goto LABEL_29;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v15) == 0;
            }

            if (v11)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_29;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&v13);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v13.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v13.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v9;
}

uint64_t VTDecompressionSessionRemoteClient_CopyBlackPixelBuffer(int a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  memset(v23, 0, sizeof(v23));
  v22 = 0u;
  *&name_12[4] = 0u;
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v17 = 5395;
  *name_12 = 0x472400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v17);
    v11 = name_8;
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(&v17, 3162387, 0x18u, 0x50u, v11, *MEMORY[0x1E695FF48], 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&name_12[4] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&name_12[4] == 18312)
      {
        if ((v17 & 0x80000000) == 0)
        {
          if (name == 36)
          {
            v13 = 4294966996;
            if (*&name_12[16])
            {
              if (name_4)
              {
                v13 = 4294966996;
              }

              else
              {
                v13 = *&name_12[16];
              }
            }
          }

          else
          {
            v13 = 4294966996;
          }

          goto LABEL_32;
        }

        v13 = 4294966996;
        if (*&name_12[8] == 2 && name == 72 && !name_4 && WORD1(v22) << 16 == 1114112 && HIBYTE(v22) == 1)
        {
          v15 = v23[0];
          if (v23[0] == v23[3])
          {
            v13 = 0;
            *a2 = *&name_12[12];
            *a3 = *(&v22 + 4);
            *a4 = v15;
            *a5 = v23[4];
            return v13;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_32:
      mach_msg_destroy(&v17);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((v17 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_32;
  }

  return v13;
}

uint64_t VTDecompressionSessionRemoteClient_FlushPixelBufferPool(int a1)
{
  v9 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x472500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162387, 0x18u, 0x2Cu, v3, *MEMORY[0x1E695FF48], 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (!v4)
    {
      if (*&msg[20] == 71)
      {
        v5 = 4294966988;
      }

      else if (*&msg[20] == 18313)
      {
        v5 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v5 = *&msg[32];
          if (!*&msg[32])
          {
            return v5;
          }
        }
      }

      else
      {
        v5 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v5;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v5 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_23;
  }

  return v5;
}

uint64_t VTDecompressionSessionRemoteClient_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v12 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x472600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162387, 0x18u, 0x44u, v5, *MEMORY[0x1E695FF48], 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 18314)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 60)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v12;
                *(a2 + 16) = v13;
                return v7;
              }

              goto LABEL_29;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_29;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v7;
}

uint64_t VTDecompressionSessionRemoteClient_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x472700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162387, 0x18u, 0x60u, v9, *MEMORY[0x1E695FF48], 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18315)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 88)
          {
            if (!*&msg[8])
            {
              v11 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v16;
                *(a2 + 16) = *v17;
                *a3 = *&v17[8];
                *(a3 + 16) = *&v17[24];
                *a4 = *&v17[32];
                return v11;
              }

              goto LABEL_29;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v13 = 1;
            }

            else
            {
              v13 = *&msg[32] == 0;
            }

            if (v13)
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }

            goto LABEL_29;
          }
        }

        v11 = 4294966996;
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_29;
  }

  return v11;
}

uint64_t VTDecompressionSessionRemoteClient_GetNextPendingNotification(int a1, _DWORD *a2, void *a3, char *a4, void *a5, _DWORD *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, 444);
  v22 = 0u;
  v21 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x472800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(msg, 3162387, 0x18u, 0x254u, v13, *MEMORY[0x1E695FF48], 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 18316)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v15 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = *&msg[32];
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_31;
        }

        v15 = 4294966996;
        if (*&msg[24] == 1 && (*&msg[4] - 76) <= 0x200 && !*&msg[8] && BYTE3(v21) == 1 && LODWORD(v23[0]) <= 0x200 && (*&msg[4] - 76) >= LODWORD(v23[0]))
        {
          v16 = (LODWORD(v23[0]) + 3) & 0xFFFFFFFC;
          if (*&msg[4] == v16 + 76)
          {
            v17 = &msg[v16];
            if (DWORD1(v21) == *(v17 + 18))
            {
              v18 = v17 - 512;
              *a2 = v22;
              *a3 = *(&v22 + 4);
              mig_strncpy(a4, v23 + 4, 512);
              v15 = 0;
              *a5 = *&msg[28];
              *a6 = *(v18 + 146);
              return v15;
            }
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_31;
  }

  return v15;
}

uint64_t VTDecompressionSessionRemoteClient_TileCreate(mach_port_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, char *src, _DWORD *a9, void *a10, void *a11, int *a12)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(v32, 0, 416);
  v30 = 0;
  v31 = 0u;
  v24 = 0x13000000000000;
  memset(&name, 0, sizeof(name));
  v22 = 3;
  v23 = a2;
  v25 = a4;
  LODWORD(v26) = 16777472;
  HIDWORD(v26) = a5;
  v27 = a6;
  v28 = 16777472;
  v29 = a7;
  v30 = *MEMORY[0x1E69E99E0];
  *&v31 = a3;
  *(&v31 + 1) = __PAIR64__(a7, a5);
  if (MEMORY[0x1EEE9AC40])
  {
    v13 = mig_strncpy_zerofill(v32 + 8, src, 512);
  }

  else
  {
    v13 = mig_strncpy(v32 + 8, src, 512);
  }

  LODWORD(v32[0]) = 0;
  DWORD1(v32[0]) = v13;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x472900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v17 = mach_msg(&name, 3162387, v14 + 104, 0x4Cu, msgh_local_port, *MEMORY[0x1E695FF48], 0);
  v18 = v17;
  if ((v17 - 268435458) > 0xE || ((1 << (v17 - 2)) & 0x4003) == 0)
  {
    if (!v17)
    {
      if (name.msgh_id == 71)
      {
        v18 = 4294966988;
      }

      else if (name.msgh_id == 18317)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 36)
          {
            v18 = 4294966996;
            if (v24)
            {
              if (name.msgh_remote_port)
              {
                v18 = 4294966996;
              }

              else
              {
                v18 = v24;
              }
            }
          }

          else
          {
            v18 = 4294966996;
          }

          goto LABEL_30;
        }

        v18 = 4294966996;
        if (v22 == 1 && name.msgh_size == 68 && !name.msgh_remote_port && HIWORD(v24) << 16 == 1114112)
        {
          v18 = 0;
          *a9 = v23;
          v19 = v27;
          *a10 = v26;
          *a11 = v19;
          *a12 = v28;
          return v18;
        }
      }

      else
      {
        v18 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&name);
      return v18;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v18 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_30;
  }

  return v18;
}