unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v18 = LODWORD(a5);
    v19 = *(v14 + 72);
    v20 = *(v14 + 76);
    v21 = *(v14 + 80);
    v22 = *(v14 + 84);
    v23 = *(v14 + 88);
    v24 = *(v14 + 92);
    v25 = *(v14 + 96);
    v26 = *(v14 + 100);
    v27 = v14 + 164;
    v28 = v14 + 16548;
    v29 = v14 + 32932;
    v30 = *(v14 + 104);
    v31 = *(v14 + 108);
    v32 = *(v14 + 112);
    v33 = *(v14 + 116);
    v34 = *(v14 + 120);
    v35 = v10 + *(result + 15);
    v36 = *(result + 28) * a2 / v8 + *(result + 44);
    v37 = *(v14 + 157);
    v38 = *(v14 + 156);
    v39 = *(v14 + 155);
    v40 = *(v14 + 154);
    v41 = **(result + 16) + v16 * v35 + 16 * *(result + 14);
    v42 = **(result + 7) + v36 * v15 + 8 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v43 = v13;
        v44 = v41;
        v45 = v42;
        do
        {
          LOWORD(v5) = *(v45 + 2 * v40);
          LOWORD(v6) = *(v45 + 2 * v39);
          LOWORD(v7) = *(v45 + 2 * v38);
          _H29 = *(v27 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v5), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H30 = *(v27 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v6), 0.0), 8191.0)));
          v53 = llroundf(fminf(fmaxf(v17 * LODWORD(v7), 0.0), 8191.0));
          __asm { FCVT            S31, H30 }

          _H30 = *(v27 + 2 * v53);
          __asm { FCVT            S9, H30 }

          v57 = (((v32 * _S31) + (v31 * _S29)) + (v33 * _S9)) + (v34 * fmaxf(_S29, fmaxf(_S31, _S9)));
          v58 = 8191.0;
          if (v57 <= 8191.0)
          {
            v58 = v57;
            if (v57 < 0.0)
            {
              v58 = 0.0;
            }
          }

          _H30 = *(v28 + 2 * llroundf(v58));
          __asm { FCVT            S10, H30 }

          v61 = _S29 * _S10;
          v62 = _S31 * _S10;
          v63 = _S9 * _S10;
          _H29 = *(v29 + 2 * llroundf(fminf(fmaxf(((v26 * v62) + ((_S29 * _S10) * v25)) + ((_S9 * _S10) * v30), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v66 = v18 + _S29;
          v67 = (v18 + _S29) <= 1023.0;
          v68 = 1023.0;
          if (v67)
          {
            v68 = v66;
            if (v66 < 0.0)
            {
              v68 = 0.0;
            }
          }

          _H9 = *(v29 + 2 * llroundf(fminf(fmaxf(((v23 * v62) + (v61 * v22)) + (v63 * v24), 0.0), 8191.0)));
          __asm { FCVT            S9, H9 }

          v71 = v18 + _S9;
          v67 = (v18 + _S9) <= 1023.0;
          v72 = 1023.0;
          if (v67)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H30 = *(v29 + 2 * llroundf(fminf(fmaxf(((v20 * v62) + (v61 * v19)) + (v63 * v21), 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          v75 = v18 + _S30;
          v67 = (v18 + _S30) <= 1023.0;
          v6 = 1023.0;
          if (v67)
          {
            v6 = v75;
            if (v75 < 0.0)
            {
              v6 = 0.0;
            }
          }

          v7 = *(v45 + 2 * v37) * 3.0 / 65535.0;
          v76 = llroundf(v68);
          v45 += 8;
          v77 = llroundf(v72) << 10;
          v78 = llroundf(v6);
          v5 = llroundf(v7);
          if (v5 > 3.0)
          {
            v5 = 3.0;
          }

          *v44++ = v77 | v76 | (llroundf(v5) << 30) | (v78 << 20);
          --v43;
        }

        while (v43);
      }

      v42 += v15;
      v41 += v16;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_l10r_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v16 = **(result + 17);
    v17 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 144);
    v18 = LODWORD(a5);
    v19 = *(v14 + 72);
    v20 = *(v14 + 76);
    v21 = *(v14 + 80);
    v22 = *(v14 + 84);
    v23 = *(v14 + 88);
    v24 = *(v14 + 92);
    v25 = *(v14 + 96);
    v26 = *(v14 + 100);
    v27 = *(v14 + 104);
    v28 = v14 + 164;
    v29 = v14 + 16548;
    v30 = v10 + *(result + 15);
    v31 = *(result + 28) * a2 / v8 + *(result + 44);
    v32 = *(v14 + 157);
    v33 = *(v14 + 156);
    v34 = *(v14 + 155);
    v35 = *(v14 + 154);
    v36 = **(result + 16) + v16 * v30 + 16 * *(result + 14);
    v37 = **(result + 7) + v31 * v15 + 8 * *(result + 36);
    do
    {
      if (v13 >= 1)
      {
        v38 = v13;
        v39 = v37;
        v40 = v36;
        do
        {
          LOWORD(v5) = *(v39 + 2 * v35);
          LOWORD(v6) = *(v39 + 2 * v34);
          LOWORD(v7) = *(v39 + 2 * v33);
          v41 = v17 * LODWORD(v7);
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v17 * LODWORD(v5), 0.0), 8191.0)));
          v43 = llroundf(fminf(fmaxf(v17 * LODWORD(v6), 0.0), 8191.0));
          __asm { FCVT            S26, H25 }

          _H25 = *(v28 + 2 * v43);
          __asm { FCVT            S27, H25 }

          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v41, 0.0), 8191.0)));
          __asm { FCVT            S28, H25 }

          _H25 = *(v29 + 2 * llroundf(fminf(fmaxf(((v26 * _S27) + (_S26 * v25)) + (_S28 * v27), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v55 = v18 + _S25;
          v56 = (v18 + _S25) <= 1023.0;
          v57 = 1023.0;
          if (v56)
          {
            v57 = v55;
            if (v55 < 0.0)
            {
              v57 = 0.0;
            }
          }

          _H29 = *(v29 + 2 * llroundf(fminf(fmaxf(((v23 * _S27) + (_S26 * v22)) + (_S28 * v24), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v60 = v18 + _S29;
          v56 = (v18 + _S29) <= 1023.0;
          v61 = 1023.0;
          if (v56)
          {
            v61 = v60;
            if (v60 < 0.0)
            {
              v61 = 0.0;
            }
          }

          _H26 = *(v29 + 2 * llroundf(fminf(fmaxf(((v20 * _S27) + (_S26 * v19)) + (_S28 * v21), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          *&v7 = v18 + _S26;
          v56 = (v18 + _S26) <= 1023.0;
          v6 = 1023.0;
          if (v56)
          {
            v6 = *&v7;
            if (*&v7 < 0.0)
            {
              v6 = 0.0;
            }
          }

          LOWORD(v7) = *(v39 + 2 * v32);
          v39 += 8;
          v7 = *&v7 * 3.0 / 65535.0;
          *&v7 = v7;
          v64 = llroundf(v57);
          v65 = llroundf(v6);
          v5 = llroundf(*&v7);
          v66 = llroundf(v61) << 10;
          if (v5 > 3.0)
          {
            v5 = 3.0;
          }

          *v40++ = v66 | v64 | (llroundf(v5) << 30) | (v65 << 20);
          --v38;
        }

        while (v38);
      }

      v37 += v15;
      v36 += v16;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_l10r_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, float a10)
{
  v13 = *result;
  v14 = *(result + 13);
  v15 = v14 * a2 / v13;
  v16 = (v14 + v14 * a2) / v13 - v15;
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(result + 24);
    v19 = *(result + 19);
    v20 = **(result + 8);
    v21 = **(result + 17);
    *&v22 = *(v19 + 136);
    v23 = *&v22 / *(v19 + 128);
    LOWORD(v22) = *(v19 + 144);
    v24 = v22;
    v25 = v15 + *(result + 15);
    v26 = *(result + 28) * a2 / v13 + *(result + 44);
    v27 = *(v19 + 157);
    v28 = *(v19 + 156);
    v29 = *(v19 + 155);
    v30 = *(v19 + 154);
    v31 = **(result + 16) + v21 * v25 + 16 * *(result + 14);
    v32 = **(result + 7) + v26 * v20 + 8 * *(result + 36);
    do
    {
      if (v18 >= 1)
      {
        v33 = v18;
        v34 = v32;
        v35 = v31;
        do
        {
          LOWORD(a10) = *(v34 + 2 * v30);
          LOWORD(v10) = *(v34 + 2 * v29);
          LOWORD(v11) = *(v34 + 2 * v28);
          v36 = v23 * LODWORD(a10);
          v37 = LODWORD(v10);
          LOWORD(v12) = *(v34 + 2 * v27);
          v12 = *&v12 * 3.0 / 65535.0;
          v38 = (v23 * LODWORD(v11)) + v24;
          if (v38 < 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v38;
          }

          v40 = v38 <= 1023.0;
          v41 = v12;
          if (v40)
          {
            *&v12 = v39;
          }

          else
          {
            *&v12 = 1023.0;
          }

          v42 = llroundf(*&v12);
          v43 = llroundf(v41);
          v44 = (v23 * v37) + v24;
          if (v44 < 0.0)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = v44;
          }

          if (v44 <= 1023.0)
          {
            v45 = v11;
          }

          else
          {
            v45 = 1023.0;
          }

          v46 = llroundf(v45);
          v47 = v36 + v24;
          if (v47 < 0.0)
          {
            v48 = 0.0;
          }

          else
          {
            v48 = v47;
          }

          v49 = v46 << 10;
          if (v47 <= 1023.0)
          {
            v50 = v48;
          }

          else
          {
            v50 = 1023.0;
          }

          v10 = v43;
          v51 = llroundf(v50);
          if (v10 <= 3.0)
          {
            a10 = v10;
          }

          else
          {
            a10 = 3.0;
          }

          v34 += 8;
          *v35++ = v49 | v42 | (llroundf(a10) << 30) | (v51 << 20);
          --v33;
        }

        while (v33);
      }

      v32 += v20;
      v31 += v21;
      ++v17;
    }

    while (v17 != v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOWORD(_S25) = *(v40 + 2 * v36);
          LOWORD(v3) = *(v40 + 2 * v35);
          LOWORD(v4) = *(v40 + 2 * v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S25), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S28)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S28)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          _H27 = *(v24 + 2 * llroundf(v53));
          __asm { FCVT            S29, H27 }

          v56 = _S25 * _S29;
          v57 = _S26 * _S29;
          v58 = _S28 * _S29;
          LOWORD(_S29) = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v57) + (v56 * v15)) + ((_S28 * _S29) * v17), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v60 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v60 = _S30;
            if (_NF)
            {
              v60 = 0.0;
            }
          }

          v62 = *(v40 + 2 * v33);
          v63 = ((v19 * v57) + (v56 * v18)) + (v58 * v20);
          v64 = ((v22 * v57) + (v56 * v21)) + (v58 * v26);
          _H26 = *(v25 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          _S25 = fminf(fmaxf(v64, 0.0), 8191.0);
          LOWORD(_S25) = *(v25 + 2 * llroundf(_S25));
          __asm { FCVT            S29, H26 }

          *v41 = llroundf(v60);
          v4 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v4 = _S29;
            if (_NF)
            {
              v4 = 0.0;
            }
          }

          __asm { FCVT            S28, H25 }

          v41[1] = llroundf(v4);
          v3 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v3 = _S28;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v40 += 8;
          v41[2] = llroundf(v3);
          v41[3] = v62;
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 8 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOWORD(_S21) = *(v35 + 2 * v31);
          LOWORD(v3) = *(v35 + 2 * v30);
          LOWORD(v4) = *(v35 + 2 * v29);
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S21), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          _H25 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S22) + (_S21 * v15)) + (_S23 * v17), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v49 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v49 = _S26;
            if (_NF)
            {
              v49 = 0.0;
            }
          }

          v51 = *(v35 + 2 * v28);
          v52 = ((v19 * _S22) + (_S21 * v18)) + (_S23 * v20);
          v53 = ((v22 * _S22) + (_S21 * v21)) + (_S23 * v23);
          _H22 = *(v25 + 2 * llroundf(fminf(fmaxf(v52, 0.0), 8191.0)));
          _S21 = fminf(fmaxf(v53, 0.0), 8191.0);
          LOWORD(_S21) = *(v25 + 2 * llroundf(_S21));
          __asm { FCVT            S25, H22 }

          *v36 = llroundf(v49);
          v4 = 65535.0;
          if (_S25 <= 65535.0)
          {
            __asm { FCMP            H22, #0 }

            v4 = _S25;
            if (_NF)
            {
              v4 = 0.0;
            }
          }

          __asm { FCVT            S24, H21 }

          v36[1] = llroundf(v4);
          v3 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H21, #0 }

            v3 = _S24;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v35 += 8;
          v36[2] = llroundf(v3);
          v36[3] = v51;
          v36 += 4;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_l64r_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = **(result + 17);
    v14 = *(v11 + 136) / *(v11 + 128);
    v15 = v7 + *(result + 15);
    v16 = *(result + 28) * a2 / v5 + *(result + 44);
    v17 = *(v11 + 157);
    v18 = *(v11 + 156);
    v19 = *(v11 + 155);
    v20 = *(v11 + 154);
    v21 = **(result + 16) + v13 * v15 + 8 * *(result + 14);
    v22 = **(result + 7) + v16 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v22;
        v25 = v21;
        do
        {
          LOWORD(a5) = *(v24 + 2 * v20);
          v26 = v14 * LODWORD(a5);
          v27 = 65535.0;
          if (v26 <= 65535.0)
          {
            v27 = v26;
            if (v26 < 0.0)
            {
              v27 = 0.0;
            }
          }

          LOWORD(v26) = *(v24 + 2 * v19);
          v28 = LODWORD(v26);
          LOWORD(v26) = *(v24 + 2 * v18);
          v29 = *(v24 + 2 * v17);
          v30 = v14 * v28;
          *v25 = llroundf(v27);
          v31 = 65535.0;
          if (v30 <= 65535.0)
          {
            v31 = v30;
            if (v30 < 0.0)
            {
              v31 = 0.0;
            }
          }

          v32 = v14 * LODWORD(v26);
          v25[1] = llroundf(v31);
          a5 = 65535.0;
          if (v32 <= 65535.0)
          {
            a5 = v32;
            if (v32 < 0.0)
            {
              a5 = 0.0;
            }
          }

          v24 += 8;
          v25[2] = llroundf(a5);
          v25[3] = v29;
          v25 += 4;
          --v23;
        }

        while (v23);
      }

      v22 += v12;
      v21 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOWORD(v2) = *(v40 + 2 * v36);
          LOWORD(v3) = *(v40 + 2 * v35);
          LOWORD(v4) = *(v40 + 2 * v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          v49 = llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0));
          __asm { FCVT            S27, H26 }

          _H26 = *(v23 + 2 * v49);
          __asm { FCVT            S29, H26 }

          v53 = (((v28 * _S27) + (v27 * _S25)) + (v29 * _S29)) + (v30 * fmaxf(_S25, fmaxf(_S27, _S29)));
          v54 = 8191.0;
          if (v53 <= 8191.0)
          {
            v54 = v53;
            if (v53 < 0.0)
            {
              v54 = 0.0;
            }
          }

          _H26 = *(v24 + 2 * llroundf(v54));
          __asm { FCVT            S30, H26 }

          v57 = _S25 * _S30;
          v58 = _S27 * _S30;
          v4 = _S29 * _S30;
          _H29 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * v58) + ((_S25 * _S30) * v15)) + ((_S29 * _S30) * v17), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v2 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v2 = _S30;
            if (_NF)
            {
              v2 = 0.0;
            }
          }

          _H30 = *(v25 + 2 * llroundf(fminf(fmaxf(((v19 * v58) + (v57 * v18)) + (v4 * v20), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          v64 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v64 = _S31;
            if (_NF)
            {
              v64 = 0.0;
            }
          }

          _H27 = *(v25 + 2 * llroundf(fminf(fmaxf(((v22 * v58) + (v57 * v21)) + (v4 * v26), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v3 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v3 = _S28;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v69 = *(v40 + 2 * v33);
          v40 += 8;
          *v41 = __rev16(v69);
          v41[1] = __rev16(llroundf(v2));
          v41[2] = __rev16(llroundf(v64));
          v41[3] = __rev16(llroundf(v3));
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 8 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOWORD(v2) = *(v35 + 2 * v31);
          LOWORD(v3) = *(v35 + 2 * v30);
          LOWORD(_S23) = *(v35 + 2 * v29);
          v37 = v14 * LODWORD(_S23);
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0)));
          v39 = llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0));
          __asm { FCVT            S22, H21 }

          _H21 = *(v24 + 2 * v39);
          __asm { FCVT            S23, H21 }

          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v37, 0.0), 8191.0)));
          __asm { FCVT            S24, H21 }

          _H25 = *(v25 + 2 * llroundf(fminf(fmaxf(((v16 * _S23) + (_S22 * v15)) + (_S24 * v17), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v2 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v2 = _S26;
            if (_NF)
            {
              v2 = 0.0;
            }
          }

          _H26 = *(v25 + 2 * llroundf(fminf(fmaxf(((v19 * _S23) + (_S22 * v18)) + (_S24 * v20), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          v54 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v54 = _S27;
            if (_NF)
            {
              v54 = 0.0;
            }
          }

          _S23 = v22 * _S23;
          LOWORD(_S23) = *(v25 + 2 * llroundf(fminf(fmaxf((_S23 + (_S22 * v21)) + (_S24 * v23), 0.0), 8191.0)));
          __asm { FCVT            S24, H23 }

          v3 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H23, #0 }

            v3 = _S24;
            if (_NF)
            {
              v3 = 0.0;
            }
          }

          v58 = *(v35 + 2 * v28);
          v35 += 8;
          *v36 = __rev16(v58);
          v36[1] = __rev16(llroundf(v2));
          v36[2] = __rev16(llroundf(v54));
          v36[3] = __rev16(llroundf(v3));
          v36 += 4;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_b64a_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = **(result + 17);
    v14 = *(v11 + 136) / *(v11 + 128);
    v15 = v7 + *(result + 15);
    v16 = *(result + 28) * a2 / v5 + *(result + 44);
    v17 = *(v11 + 157);
    v18 = *(v11 + 156);
    v19 = *(v11 + 155);
    v20 = *(v11 + 154);
    v21 = **(result + 16) + v13 * v15 + 8 * *(result + 14);
    v22 = **(result + 7) + v16 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v22;
        v25 = v21;
        do
        {
          LOWORD(a5) = *(v24 + 2 * v20);
          v26 = v14 * LODWORD(a5);
          a5 = 65535.0;
          if (v26 <= 65535.0)
          {
            a5 = v26;
            if (v26 < 0.0)
            {
              a5 = 0.0;
            }
          }

          LOWORD(v26) = *(v24 + 2 * v19);
          v27 = v14 * LODWORD(v26);
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = v27;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          LOWORD(v27) = *(v24 + 2 * v18);
          v29 = v14 * LODWORD(v27);
          v30 = 65535.0;
          if (v29 <= 65535.0)
          {
            v30 = v29;
            if (v29 < 0.0)
            {
              v30 = 0.0;
            }
          }

          v31 = *(v24 + 2 * v17);
          v24 += 8;
          *v25 = __rev16(v31);
          v25[1] = __rev16(llroundf(a5));
          v25[2] = __rev16(llroundf(v28));
          v25[3] = __rev16(llroundf(v30));
          v25 += 4;
          --v23;
        }

        while (v23);
      }

      v22 += v12;
      v21 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 8 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOWORD(_S25) = *(v40 + 2 * v36);
          LOWORD(v3) = *(v40 + 2 * v35);
          LOWORD(v4) = *(v40 + 2 * v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(_S25), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v4), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S27)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          v54 = *(v40 + 2 * v33);
          _H28 = *(v24 + 2 * llroundf(v53));
          v40 += 8;
          __asm { FCVT            S28, H28 }

          v57 = _S25 * _S28;
          v58 = _S26 * _S28;
          v59 = _S27 * _S28;
          v60 = ((v16 * v58) + (v57 * v15)) + (v59 * v17);
          v61 = ((v19 * v58) + (v57 * v18)) + (v59 * v20);
          v62 = ((v22 * v58) + (v57 * v21)) + (v59 * v26);
          v3 = fminf(fmaxf(v60, 0.0), 8191.0);
          v4 = fminf(fmaxf(v61, 0.0), 8191.0);
          LOWORD(v4) = *(v25 + 2 * llroundf(v4));
          _S25 = fminf(fmaxf(v62, 0.0), 8191.0);
          LOWORD(_S25) = *(v25 + 2 * llroundf(_S25));
          _S28 = v54 * 0.000015259;
          *v41 = *(v25 + 2 * llroundf(v3));
          v41[1] = LOWORD(v4);
          v41[2] = LOWORD(_S25);
          __asm { FCVT            H25, S28 }

          v41[3] = LOWORD(_S25);
          v41 += 4;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 8);
    v14 = **(result + 17);
    v15 = 8191.0 / *(v12 + 128);
    v16 = *(v12 + 72);
    v17 = *(v12 + 76);
    v18 = *(v12 + 80);
    v19 = *(v12 + 84);
    v20 = *(v12 + 88);
    v21 = *(v12 + 92);
    v22 = *(v12 + 96);
    v23 = *(v12 + 100);
    v24 = *(v12 + 104);
    v25 = v12 + 164;
    v26 = v12 + 16548;
    v27 = v8 + *(result + 15);
    v28 = *(result + 28) * a2 / v6 + *(result + 44);
    v29 = *(v12 + 157);
    v30 = *(v12 + 156);
    v31 = *(v12 + 155);
    v32 = *(v12 + 154);
    v33 = **(result + 16) + v14 * v27 + 8 * *(result + 14);
    v34 = **(result + 7) + v28 * v13 + 8 * *(result + 36);
    do
    {
      if (v11 >= 1)
      {
        v35 = v11;
        v36 = v34;
        v37 = v33;
        do
        {
          LOWORD(_S21) = *(v36 + 2 * v32);
          LOWORD(v3) = *(v36 + 2 * v31);
          LOWORD(v4) = *(v36 + 2 * v30);
          LOWORD(_S24) = *(v36 + 2 * v29);
          v36 += 8;
          _H21 = *(v25 + 2 * llroundf(fminf(fmaxf(v15 * LODWORD(_S21), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v25 + 2 * llroundf(fminf(fmaxf(v15 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v46 = llroundf(fminf(fmaxf(v15 * LODWORD(v4), 0.0), 8191.0));
          v47 = (v17 * _S22) + (_S21 * v16);
          v48 = (v20 * _S22) + (_S21 * v19);
          v49 = (v23 * _S22) + (_S21 * v22);
          LOWORD(_S22) = *(v25 + 2 * v46);
          __asm { FCVT            S22, H22 }

          v4 = v47 + (_S22 * v18);
          v51 = v49 + (_S22 * v24);
          v3 = fminf(fmaxf(v48 + (_S22 * v21), 0.0), 8191.0);
          v52 = llroundf(v3);
          LOWORD(v3) = *(v26 + 2 * llroundf(fminf(fmaxf(v4, 0.0), 8191.0)));
          _S21 = fminf(fmaxf(v51, 0.0), 8191.0);
          v53 = llroundf(_S21);
          LOWORD(_S21) = *(v26 + 2 * v52);
          LOWORD(v4) = *(v26 + 2 * v53);
          _S24 = LODWORD(_S24) * 0.000015259;
          *v37 = LOWORD(v3);
          v37[1] = LOWORD(_S21);
          v37[2] = LOWORD(v4);
          __asm { FCVT            H21, S24 }

          v37[3] = LOWORD(_S21);
          v37 += 4;
          --v35;
        }

        while (v35);
      }

      v34 += v13;
      v33 += v14;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_RGhA_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 1.0 / *(v8 + 128);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 8 * *(result + 14);
    v19 = &dword_18FED012C;
    v20 = vld1q_dup_f32(v19);
    v21 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    *v20.i32 = v11;
    v22 = vzip1q_s32(v20, v20);
    v22.f32[2] = v11;
    do
    {
      if (v7 >= 1)
      {
        v23 = v7;
        v24 = v21;
        v25 = v18;
        do
        {
          v26 = (v24 + 2 * v16);
          v27 = (v24 + 2 * v15);
          v28 = (v24 + 2 * v14);
          v29.i16[0] = *(v24 + 2 * v17);
          v24 += 8;
          v29.i16[1] = *v26;
          v29.i16[2] = *v27;
          v29.i16[3] = *v28;
          *v25++ = vcvt_f16_f32(vmulq_f32(v22, vcvtq_f32_u32(vmovl_u16(v29))));
          --v23;
        }

        while (v23);
      }

      v21 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Tone_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 104);
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = v7 + *(result + 15);
    v32 = *(result + 28) * a2 / v5 + *(result + 44);
    v33 = *(v11 + 157);
    v34 = *(v11 + 156);
    v35 = *(v11 + 155);
    v36 = *(v11 + 154);
    v37 = **(result + 16) + v13 * v31 + 16 * *(result + 14);
    v38 = **(result + 7) + v32 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v39 = v10;
        v40 = v38;
        v41 = v37;
        do
        {
          LOWORD(_S25) = *(v40 + 2 * v36);
          LOWORD(v3) = *(v40 + 2 * v35);
          LOWORD(_S27) = *(v40 + 2 * v34);
          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * _S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v23 + 2 * llroundf(fminf(fmaxf(v14 * _S27, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v52 = (((v28 * _S26) + (v27 * _S25)) + (v29 * _S27)) + (v30 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v53 = 8191.0;
          if (v52 <= 8191.0)
          {
            v53 = v52;
            if (v52 < 0.0)
            {
              v53 = 0.0;
            }
          }

          v54 = *(v40 + 2 * v33);
          v40 += 8;
          _H28 = *(v24 + 2 * llroundf(v53));
          __asm { FCVT            S28, H28 }

          v57 = _S25 * _S28;
          _S26 = _S26 * _S28;
          _S27 = _S27 * _S28;
          v60 = ((v16 * _S26) + (v57 * v15)) + (_S27 * v17);
          v61 = ((v19 * _S26) + (v57 * v18)) + (_S27 * v20);
          _S25 = ((v22 * _S26) + (v57 * v21)) + (_S27 * v26);
          LOWORD(_S26) = *(v25 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          LOWORD(_S27) = *(v25 + 2 * llroundf(fminf(fmaxf(v61, 0.0), 8191.0)));
          __asm
          {
            FCVT            S26, H26
            FCVT            S27, H27
          }

          LOWORD(_S25) = *(v25 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          *v41 = _S26;
          *(v41 + 4) = _S27;
          v3 = v54 * 0.000015259;
          *(v41 + 8) = _S25;
          *(v41 + 12) = v3;
          v41 += 16;
          --v39;
        }

        while (v39);
      }

      v38 += v12;
      v37 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_TRC_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_l64r_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v13 = **(result + 17);
    v14 = 8191.0 / *(v11 + 128);
    v15 = *(v11 + 72);
    v16 = *(v11 + 76);
    v17 = *(v11 + 80);
    v18 = *(v11 + 84);
    v19 = *(v11 + 88);
    v20 = *(v11 + 92);
    v21 = *(v11 + 96);
    v22 = *(v11 + 100);
    v23 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v7 + *(result + 15);
    v27 = *(result + 28) * a2 / v5 + *(result + 44);
    v28 = *(v11 + 157);
    v29 = *(v11 + 156);
    v30 = *(v11 + 155);
    v31 = *(v11 + 154);
    v32 = **(result + 16) + v13 * v26 + 16 * *(result + 14);
    v33 = **(result + 7) + v27 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v34 = v10;
        v35 = v33;
        v36 = v32;
        do
        {
          LOWORD(v2) = *(v35 + 2 * v31);
          LOWORD(v3) = *(v35 + 2 * v30);
          LOWORD(_S23) = *(v35 + 2 * v29);
          v37 = llroundf(fminf(fmaxf(v14 * LODWORD(v2), 0.0), 8191.0));
          _S21 = v14 * _S23;
          _H23 = *(v24 + 2 * v37);
          __asm { FCVT            S23, H23 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v14 * LODWORD(v3), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S21) = *(v24 + 2 * llroundf(fminf(fmaxf(_S21, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _S24 = ((v16 * _S22) + (_S23 * v15)) + (_S21 * v17);
          v49 = ((v19 * _S22) + (_S23 * v18)) + (_S21 * v20);
          *&v50 = (v22 * _S22) + (_S23 * v21);
          v51 = *&v50 + (_S21 * v23);
          LOWORD(v50) = *(v35 + 2 * v28);
          v35 += 8;
          LOWORD(_S23) = *(v25 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          LOWORD(_S24) = *(v25 + 2 * llroundf(fminf(fmaxf(v49, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          v52 = llroundf(fminf(fmaxf(v51, 0.0), 8191.0));
          __asm { FCVT            S21, H24 }

          LOWORD(_S24) = *(v25 + 2 * v52);
          __asm { FCVT            S24, H24 }

          v3 = v50;
          *v36 = _S23;
          *(v36 + 4) = _S21;
          v2 = v3 * 0.000015259;
          *(v36 + 8) = _S24;
          *(v36 + 12) = v3 * 0.000015259;
          v36 += 16;
          --v34;
        }

        while (v34);
      }

      v33 += v12;
      v32 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l64r_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_l64r_rgb_RGfA_GCD);
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

unsigned __int8 *vt_Copy_l64r_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 1.0 / *(v8 + 128);
    v12 = v4 + *(result + 15);
    v13 = *(result + 28) * a2 / v2 + *(result + 44);
    v14 = *(v8 + 157);
    v15 = *(v8 + 156);
    v16 = *(v8 + 155);
    v17 = *(v8 + 154);
    v18 = **(result + 16) + v10 * v12 + 16 * *(result + 14);
    v19 = &dword_18FED012C;
    v20 = vld1q_dup_f32(v19);
    v21 = **(result + 7) + v13 * v9 + 8 * *(result + 36);
    *v20.i32 = v11;
    v22 = vzip1q_s32(v20, v20);
    v22.f32[2] = v11;
    do
    {
      if (v7 >= 1)
      {
        v23 = v7;
        v24 = v21;
        v25 = v18;
        do
        {
          v26 = (v24 + 2 * v15);
          v27 = (v24 + 2 * v14);
          v28.i16[0] = *(v24 + 2 * v17);
          v28.i16[1] = *(v24 + 2 * v16);
          v24 += 8;
          v28.i16[2] = *v26;
          v28.i16[3] = *v27;
          *v25++ = vmulq_f32(v22, vcvtq_f32_u32(vmovl_u16(v28)));
          --v23;
        }

        while (v23);
      }

      v21 += v9;
      v18 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vtLoadVideoDecodersGuts(int a1)
{
  vtTryToLoadVideoDecoder("/System/Library/VideoCodecs/H264SW.videocodec", "VCPAVCRegisterDecoder");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/VCH263.videodecoder", "VCH263Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/H264H2.videodecoder", "H264H2Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/MP4VH2.videodecoder", "MP4VH2Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/Slim.videodecoder", "SLIMRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/JPEGH1.videodecoder", "JPEGH1Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/H264H4.videodecoder", "H264H4Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/MP4VH4.videodecoder", "MP4VH4Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/H264H6.videodecoder", "H264H6Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/MP4VH6.videodecoder", "MP4VH6Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/H264H8.videodecoder", "H264H8Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/MP4VH8.videodecoder", "MP4VH8Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/HEVCH8.videodecoder", "HEVCH8Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/H8.videodecoder", "H8Register");
  vtTryToLoadVideoDecoder("/System/Library/VideoCodecs/VCPHEVC.videocodec", "VCPHEVCRegisterDecoder");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/AVD.videodecoder", "AVDRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/ExampleIPB.videodecoder", "ExampleIPBDecoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/BritannicusDecoder.videodecoder", "BritannicusRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/VCPMP4V.videodecoder", "VCPMP4VRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/AppleProResSWDecoder.videodecoder", "ProResSWDecoderRegister");
  if (!a1 || !vtTryToLoadVideoDecoder("/AppleInternal/Library/VideoCodecs/AppleProResHWDecoder-Dev.videodecoder", "ProResDecoderRegister"))
  {
    vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/AppleProResHWDecoder.videodecoder", "ProResDecoderRegister");
  }

  vtTryToLoadVideoDecoder("/System/Library/VideoDecoders/AV1SW.videodecoder", "AV1RegisterDecoder");

  return vtTryToLoadVideoDecoder("/AppleInternal/Library/VideoCodecs/yzip.videocodec", "yzipRegisterDecoder");
}

uint64_t vtTryToLoadVideoDecoder(const char *a1, const char *a2)
{
  result = dlopen(a1, 4);
  if (result)
  {
    result = dlsym(result, a2);
    if (result)
    {
      (result)();
      return 1;
    }
  }

  return result;
}

void FigGetAlignmentForIOSurfaceOutputToDisplayService(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    if ((planeBaseRequirement_checked & 1) == 0)
    {
      H3clcdService = getH3clcdService();
      if (H3clcdService)
      {
        v6 = H3clcdService;
        v7 = 64;
        valuePtr = 64;
        v8 = IORegistryEntrySearchCFProperty(H3clcdService, "IOService", @"DisplayPipePlaneBaseAlignment", 0, 0);
        if (v8)
        {
          v9 = v8;
          Value = CFDictionaryGetValue(v8, @"PlaneBaseAlignmentLinear");
          if (Value)
          {
            v11 = Value;
            v12 = CFGetTypeID(Value);
            if (v12 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
            }
          }

          CFRelease(v9);
          v7 = valuePtr;
        }

        planeBaseRequirement_requirement = v7;
        IOObjectRelease(v6);
      }

      planeBaseRequirement_checked = 1;
    }

    *a2 = planeBaseRequirement_requirement;
  }

  if (a3)
  {
    if ((strideRequirement_checked & 1) == 0)
    {
      v13 = getH3clcdService();
      if (v13)
      {
        v14 = v13;
        v15 = 64;
        valuePtr = 64;
        v16 = IORegistryEntrySearchCFProperty(v13, "IOService", @"DisplayPipeStrideRequirements", 0, 0);
        if (v16)
        {
          v17 = v16;
          v18 = CFDictionaryGetValue(v16, @"StrideLinearHorizontal");
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v19, kCFNumberLongLongType, &valuePtr);
            }
          }

          CFRelease(v17);
          v15 = valuePtr;
        }

        strideRequirement_requirement = v15;
        IOObjectRelease(v14);
      }

      strideRequirement_checked = 1;
    }

    *a3 = strideRequirement_requirement;
  }
}

uint64_t FigGetNumberOfScalerCores()
{
  v3 = 0u;
  v4 = 0u;
  v2 = 0u;
  memset(v1, 0, sizeof(v1));
  scalerCapabilities(v1);
  return DWORD2(v2);
}

uint64_t scalerCapabilities(uint64_t result)
{
  v1 = result;
  if ((scalerCapabilities_checked & 1) == 0)
  {
    v2 = *MEMORY[0x1E696CD60];
    v3 = IOServiceMatching("AppleM2ScalerCSCDriver");
    result = IOServiceGetMatchingService(v2, v3);
    if (result)
    {
      v4 = result;
      valuePtr = 0;
      v92 = 0;
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      scalerCapabilities_flagCropping = 1;
      v5 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(v5, @"IOSurfaceAcceleratorFormatInInterleaved422");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagYUVS = 1;
            }
          }
        }

        v10 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesIdentityCSC");
        if (v10)
        {
          v11 = v10;
          v12 = CFGetTypeID(v10);
          if (v12 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v11, kCFNumberLongLongType, &v90);
            if (v90)
            {
              scalerCapabilities_flagRangeConversion = 1;
            }
          }
        }

        v13 = CFDictionaryGetValue(v6, @"kSurfaceAcceleratorCapabilitiesColorManager");
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v14, kCFNumberLongLongType, &v89);
            if (v89)
            {
              scalerCapabilities_flagColorConversion = 1;
            }
          }
        }

        v16 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesHDR");
        if (v16)
        {
          v17 = v16;
          v18 = CFGetTypeID(v16);
          if (v18 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v17, kCFNumberLongLongType, &v88);
            if (v88)
            {
              scalerCapabilities_flagHDR = 1;
            }
          }
        }

        v19 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesFractionalDimensions");
        if (v19)
        {
          v20 = v19;
          v21 = CFGetTypeID(v19);
          if (v21 == CFNumberGetTypeID())
          {
            v86 = 0;
            CFNumberGetValue(v20, kCFNumberLongLongType, &v86);
            if (v86)
            {
              scalerCapabilities_flagFractionalDimensionsSupport = 1;
            }
          }
        }

        v22 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesMaxSourceWidth");
        if (v22)
        {
          v23 = v22;
          v24 = CFGetTypeID(v22);
          if (v24 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v23, kCFNumberLongLongType, &scalerCapabilities_maxSourceWidthVal);
          }
        }

        v25 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesMaxSourceHeight");
        if (v25)
        {
          v26 = v25;
          v27 = CFGetTypeID(v25);
          if (v27 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v26, kCFNumberLongLongType, &scalerCapabilities_maxSourceHeightVal);
          }
        }

        v28 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesMaxDestWidth");
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v29, kCFNumberLongLongType, &scalerCapabilities_maxDestWidthVal);
          }
        }

        v31 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorCapabilitiesMaxDestHeight");
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v32, kCFNumberLongLongType, &scalerCapabilities_maxDestHeightVal);
          }
        }

        v34 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorScalerVersion");
        if (v34)
        {
          v35 = v34;
          v36 = CFGetTypeID(v34);
          if (v36 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v35, kCFNumberLongLongType, &v87);
            if (v87 >= 262151)
            {
              scalerCapabilities_numScalerCores = 1;
            }
          }
        }

        v37 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatInRGBA8888");
        if (v37)
        {
          v38 = v37;
          v39 = CFGetTypeID(v37);
          if (v39 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v38, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagRGBA = 1;
            }
          }
        }

        v40 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatInARGB2101010");
        if (v40)
        {
          v41 = v40;
          v42 = CFGetTypeID(v40);
          if (v42 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v41, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagInw30r = 1;
            }
          }
        }

        v43 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOutARGB2101010");
        if (v43)
        {
          v44 = v43;
          v45 = CFGetTypeID(v43);
          if (v45 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v44, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOutw30r = 1;
            }
          }
        }

        v46 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatInARGB8101010");
        if (v46)
        {
          v47 = v46;
          v48 = CFGetTypeID(v46);
          if (v48 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v47, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagInb3a8 = 1;
            }
          }
        }

        v49 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOutARGB8101010");
        if (v49)
        {
          v50 = v49;
          v51 = CFGetTypeID(v49);
          if (v51 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v50, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOutb3a8 = 1;
            }
          }
        }

        v52 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatIn1PlaneYCBCR10444");
        if (v52)
        {
          v53 = v52;
          v54 = CFGetTypeID(v52);
          if (v54 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v53, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagIn1PlaneYCBCR10Bit444 = 1;
            }
          }
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInLumaOnlyL008 = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInLumaOnlyL010 = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInLumaOnlyL016 = 1;
        }

        v55 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOut1PlaneYCBCR10444");
        if (v55)
        {
          v56 = v55;
          v57 = CFGetTypeID(v55);
          if (v57 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v56, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOut1PlaneYCBCR10Bit444 = 1;
            }
          }
        }

        v58 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatIn2Planes42010");
        if (v58)
        {
          v59 = v58;
          v60 = CFGetTypeID(v58);
          if (v60 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v59, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagIn2PlanesYCBCR10Bit420 = 1;
            }
          }
        }

        v61 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOut2Planes42010");
        if (v61)
        {
          v62 = v61;
          v63 = CFGetTypeID(v61);
          if (v63 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v62, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOut2PlanesYCBCR10Bit420 = 1;
            }
          }
        }

        v64 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatIn2Planes42210");
        if (v64)
        {
          v65 = v64;
          v66 = CFGetTypeID(v64);
          if (v66 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v65, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagIn2PlanesYCBCR10Bit422 = 1;
            }
          }
        }

        v67 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOut2Planes42210");
        if (v67)
        {
          v68 = v67;
          v69 = CFGetTypeID(v67);
          if (v69 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v68, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOut2PlanesYCBCR10Bit422 = 1;
            }
          }
        }

        v70 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatIn2Planes44410");
        if (v70)
        {
          v71 = v70;
          v72 = CFGetTypeID(v70);
          if (v72 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v71, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagIn2PlanesYCBCR10Bit444 = 1;
            }
          }
        }

        v73 = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFormatOut2Planes44410");
        if (v73)
        {
          v74 = v73;
          v75 = CFGetTypeID(v73);
          if (v75 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v74, kCFNumberLongLongType, &valuePtr);
            if (valuePtr)
            {
              scalerCapabilities_flagOut2PlanesYCBCR10Bit444 = 1;
            }
          }
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInMediaCompression = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagOutMediaCompression = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInterchangeCompression = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagInterchangeLossyCompression = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagBayerRepacking = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagOutLumaOnlyL008 = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagOutLumaOnlyL010 = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagOutLumaOnlyL016 = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flag12bitYCbCr = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flag16bitYCbCr = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && valuePtr)
        {
          scalerCapabilities_flagYCbCrAlpha = 1;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          *&scalerCapabilities_maxWidthScaleFactorVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          *&scalerCapabilities_minWidthScaleFactorVal = 1.0 / v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          *&scalerCapabilities_maxHeightScaleFactorVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          *&v76 = 1.0 / v92;
          scalerCapabilities_minHeightScaleFactorVal = v76;
        }

        else
        {
          v76 = scalerCapabilities_minHeightScaleFactorVal;
        }

        v77 = scalerCapabilities_minWidthScaleFactorVal;
        if (*&scalerCapabilities_minWidthScaleFactorVal < *&v76)
        {
          scalerCapabilities_minWidthScaleFactorVal = v76;
          v77 = v76;
        }

        if (*&v76 < *&v77)
        {
          scalerCapabilities_minHeightScaleFactorVal = v77;
        }

        if (*&scalerCapabilities_maxWidthScaleFactorVal <= *&scalerCapabilities_maxHeightScaleFactorVal)
        {
          if (*&scalerCapabilities_maxHeightScaleFactorVal > *&scalerCapabilities_maxWidthScaleFactorVal)
          {
            scalerCapabilities_maxHeightScaleFactorVal = scalerCapabilities_maxWidthScaleFactorVal;
          }
        }

        else
        {
          scalerCapabilities_maxWidthScaleFactorVal = scalerCapabilities_maxHeightScaleFactorVal;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_vTapsVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_hTapsVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_vPhasesVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_hPhasesVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_prePointBitsVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_postPointBitsVal = v92;
        }

        if (FigCFDictionaryGetInt64IfPresent() && v92)
        {
          scalerCapabilities_flagSymmetricScalingSupported = v92 != 0;
        }

        CFRelease(v6);
      }

      result = IOObjectRelease(v4);
    }

    scalerCapabilities_checked = 1;
  }

  if (v1)
  {
    *v1 = scalerCapabilities_flagCropping;
    *(v1 + 1) = scalerCapabilities_flagColorConversion;
    *(v1 + 16) = scalerCapabilities_flagHDR;
    *(v1 + 17) = scalerCapabilities_flagFractionalDimensionsSupport;
    *(v1 + 2) = scalerCapabilities_flagYUVS;
    *(v1 + 3) = scalerCapabilities_flagRGBA;
    *(v1 + 4) = scalerCapabilities_flagInw30r & scalerCapabilities_flagOutw30r & 1;
    *(v1 + 5) = scalerCapabilities_flagInb3a8 & scalerCapabilities_flagOutb3a8 & 1;
    *(v1 + 9) = scalerCapabilities_flagIn1PlaneYCBCR10Bit444 & scalerCapabilities_flagOut1PlaneYCBCR10Bit444 & 1;
    *(v1 + 10) = scalerCapabilities_flagIn2PlanesYCBCR10Bit420 & scalerCapabilities_flagOut2PlanesYCBCR10Bit420 & 1;
    *(v1 + 11) = scalerCapabilities_flagIn2PlanesYCBCR10Bit422 & scalerCapabilities_flagOut2PlanesYCBCR10Bit422 & 1;
    *(v1 + 12) = scalerCapabilities_flagIn2PlanesYCBCR10Bit444 & scalerCapabilities_flagOut2PlanesYCBCR10Bit444 & 1;
    *(v1 + 13) = scalerCapabilities_flagInMediaCompression & scalerCapabilities_flagOutMediaCompression & 1;
    *(v1 + 14) = scalerCapabilities_flagInterchangeCompression;
    *(v1 + 76) = scalerCapabilities_flagInterchangeLossyCompression;
    *(v1 + 6) = scalerCapabilities_flagInLumaOnlyL008 & scalerCapabilities_flagOutLumaOnlyL008 & 1;
    *(v1 + 7) = scalerCapabilities_flagInLumaOnlyL010 & scalerCapabilities_flagOutLumaOnlyL010 & 1;
    *(v1 + 8) = scalerCapabilities_flagInLumaOnlyL016 & scalerCapabilities_flagOutLumaOnlyL016 & 1;
    *(v1 + 15) = scalerCapabilities_flagRangeConversion;
    *(v1 + 77) = scalerCapabilities_flag12bitYCbCr;
    *(v1 + 78) = scalerCapabilities_flag16bitYCbCr;
    *(v1 + 79) = scalerCapabilities_flagYCbCrAlpha;
    v78 = scalerCapabilities_maxSourceHeightVal;
    *(v1 + 24) = scalerCapabilities_maxSourceWidthVal;
    *(v1 + 32) = v78;
    v79 = scalerCapabilities_maxDestHeightVal;
    *(v1 + 40) = scalerCapabilities_maxDestWidthVal;
    *(v1 + 48) = v79;
    v80 = scalerCapabilities_minWidthScaleFactorVal;
    *(v1 + 56) = scalerCapabilities_maxWidthScaleFactorVal;
    *(v1 + 60) = v80;
    v81 = scalerCapabilities_minHeightScaleFactorVal;
    *(v1 + 64) = scalerCapabilities_maxHeightScaleFactorVal;
    *(v1 + 68) = v81;
    if (scalerCapabilities_numScalerCores)
    {
      v82 = 2;
    }

    else
    {
      v82 = 1;
    }

    *(v1 + 72) = v82;
    v83 = scalerCapabilities_hTapsVal;
    *(v1 + 80) = scalerCapabilities_vTapsVal;
    *(v1 + 84) = v83;
    v84 = scalerCapabilities_hPhasesVal;
    *(v1 + 88) = scalerCapabilities_vPhasesVal;
    *(v1 + 92) = v84;
    v85 = scalerCapabilities_postPointBitsVal;
    *(v1 + 96) = scalerCapabilities_prePointBitsVal;
    *(v1 + 100) = v85;
    *(v1 + 104) = scalerCapabilities_flagBayerRepacking;
    *(v1 + 18) = scalerCapabilities_flagSymmetricScalingSupported;
  }

  return result;
}

uint64_t FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions()
{
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v1 = 0u;
  scalerCapabilities(&v1);
  return BYTE1(v2);
}

uint64_t FigGetIOSurfaceAcceleratorCapabilityQuadraBayerRepacking()
{
  v2 = 0u;
  memset(v1, 0, sizeof(v1));
  scalerCapabilities(v1);
  return BYTE8(v2);
}

CFDictionaryRef FigCreateIOSurfacePropertiesDictionaryWithCacheMode(int a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  keys[1] = 0;
  values[1] = 0;
  v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  keys[0] = *MEMORY[0x1E696CE60];
  values[0] = v1;
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t FigCreatePixelBufferAttributesWithIOSurfaceSupport(const void *a1, int a2, __CFDictionary **a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_4(keys);
    return LODWORD(keys[0]);
  }

  if (VTAvoidIOSurfaceBackings())
  {
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    v20 = 0;
    *a3 = v6;
    return v20;
  }

  v7 = MEMORY[0x1E695E480];
  if (!a1)
  {
    v9 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E69660D8]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x1E6966038]);
  if (!Value)
  {
LABEL_15:
    values = 0;
    keys[0] = 0;
    v21 = CFDictionaryCreate(*v7, keys, &values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v21)
    {
      v17 = v21;
      Value = 0;
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_17:
      v19 = CFRetain(v9);
      goto LABEL_28;
    }

    FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_3(keys);
    return LODWORD(keys[0]);
  }

  v17 = CFRetain(Value);
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (!v17 || (v18 = CFGetTypeID(v17), v18 != CFDictionaryGetTypeID()) || !CFDictionaryGetValue(v17, *MEMORY[0x1E696CE60]))
  {
    if ((a2 - 1) >= 4)
    {
      if (a2)
      {
        if (a2 != 5)
        {
          fig_log_get_emitter();
          v20 = FigSignalErrorAtGM();
          goto LABEL_50;
        }

        if (displayRequiresRealTimeCacheMode_sCheckOnce != -1)
        {
          FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_1();
        }

        if (displayRequiresRealTimeCacheMode_isTrueUCEnabled)
        {
          v23 = 0;
          v19 = 0;
          goto LABEL_33;
        }
      }

      ArrayWithCacheModes = createArrayWithCacheModes(1024, v10, v11, v12, v13, v14, v15, v16, 1280);
    }

    else
    {
      ArrayWithCacheModes = createArrayWithCacheModes(768, v10, v11, v12, v13, v14, v15, v16, 0);
    }

    v19 = ArrayWithCacheModes;
    if (ArrayWithCacheModes)
    {
      goto LABEL_28;
    }

    FigCreatePixelBufferAttributesWithIOSurfaceSupport_cold_2(keys);
    v20 = LODWORD(keys[0]);
LABEL_50:
    v19 = 0;
    if (v20)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

  v19 = 0;
LABEL_28:
  if (Value != v17 || v9 != v19)
  {
    v23 = 1;
LABEL_33:
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v26 = MutableCopy;
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660D8], v17);
      if (v19)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6966038], v19);
      }

      if ((v23 & 1) == 0)
      {
        CFDictionarySetValue(v26, @"PreferRealTimeCacheModeIfEveryoneDoes", *MEMORY[0x1E695E4D0]);
      }

      v20 = 0;
      *a3 = v26;
    }

    else
    {
      fig_log_get_emitter();
      v20 = FigSignalErrorAtGM();
    }

    goto LABEL_44;
  }

  if (a1)
  {
    v27 = CFRetain(a1);
  }

  else
  {
    v27 = 0;
  }

  v20 = 0;
  *a3 = v27;
LABEL_44:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v20;
}

__CFArray *FigCreatePixelBufferCacheModeArray(int a1)
{
  valuePtr = 768;
  v14 = a1;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigCreatePixelBufferCacheModeArray_cold_2();
    return Mutable;
  }

  for (i = 0; i != 6; ++i)
  {
    v5 = dword_18FED0208[i];
    if (v5 != a1 && i != 3)
    {
      appendIntToArray(v5, Mutable);
    }
  }

  if (a1 != 768)
  {
    v7 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    if (!v7)
    {
      v12 = 2132;
      goto LABEL_18;
    }

    v8 = v7;
    CFArrayInsertValueAtIndex(Mutable, 0, v7);
    CFRelease(v8);
  }

  v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &v14);
  if (!v9)
  {
    v12 = 2139;
LABEL_18:
    FigCreatePixelBufferCacheModeArray_cold_1(v12, Mutable);
    return 0;
  }

  v10 = v9;
  CFArrayInsertValueAtIndex(Mutable, 0, v9);
  CFRelease(v10);
  return Mutable;
}

uint64_t appendIntToArray(int a1, __CFArray *a2)
{
  valuePtr = a1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(a2, v3);
    CFRelease(v4);
    return 0;
  }

  else
  {
    appendIntToArray_cold_1(&v7);
    return v7;
  }
}

uint64_t FigCreateIOSurfaceBackedCVPixelBufferWithAttributes(int a1, int a2, OSType a3, CFDictionaryRef theDict, CVPixelBufferRef *a5)
{
  v9 = MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v11 = MutableCopy;
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  if (IOSurfacePropertiesDictionary)
  {
    v13 = IOSurfacePropertiesDictionary;
    if (!VTAvoidIOSurfaceBackings())
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E69660D8], v13);
    }

    CFRelease(v13);
  }

  v14 = CVPixelBufferCreate(*v9, a1, a2, a3, v11, a5);
  CFRelease(v11);
  return v14;
}

uint64_t FigCreateProtectedIOSurfaceBackedCVPixelBufferWithAttributes(int a1, int a2, OSType a3, uint64_t a4, uint64_t a5, CVPixelBufferRef *a6)
{
  v11 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  v14 = FigCFDictionaryCreateMutableCopy();
  if (a5)
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660D8], v14);
  v15 = CVPixelBufferCreate(v11, a1, a2, a3, MutableCopy, a6);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (IOSurfacePropertiesDictionary)
  {
    CFRelease(IOSurfacePropertiesDictionary);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

uint64_t getH3clcdService()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleCLCD");
  result = IOServiceGetMatchingService(v0, v1);
  if (!result)
  {
    v3 = IOServiceMatching("AppleCLCD2");
    result = IOServiceGetMatchingService(v0, v3);
    if (!result)
    {
      v4 = IOServiceMatching("AppleRGBOUT");

      return IOServiceGetMatchingService(v0, v4);
    }
  }

  return result;
}

CFMutableArrayRef createArrayWithCacheModes(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (appendIntToArray(a1, Mutable))
    {
LABEL_6:
      CFRelease(Mutable);
      return 0;
    }

    else
    {
      v13 = &a9;
      while (1)
      {
        v11 = v13;
        v13 += 2;
        if (*v11 < 0)
        {
          break;
        }

        if (appendIntToArray(*v11, Mutable))
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
    createArrayWithCacheModes_cold_1();
  }

  return Mutable;
}

uint64_t figIOSurfaceAcceleratedPixelTransfer_Transfer(int a1, int a2, CVPixelBufferRef pixelBuffer, uint64_t a4, __CVBuffer *a5)
{
  CVPixelBufferGetIOSurface(pixelBuffer);
  CVPixelBufferGetIOSurface(a5);
  v6 = IOSurfaceAcceleratorTransferSurface();
  if (v6)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v6;
}

IOSurfaceRef figIOSurfaceAcceleratedPixelTransfer_ValidateM2(__CVBuffer *a1, __CVBuffer *a2)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v6 = CVPixelBufferGetWidth(a2);
  v7 = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = CVPixelBufferGetPixelFormatType(a2);
  v10 = v9;
  v11 = 0;
  v27 = v6;
  if (Width >= v6 && Height >= v7)
  {
    v11 = v9 == 1111970369 || (v9 & 0xFFFFFFEF) == 875704422;
  }

  v29 = v11;
  scalerCapabilities(&v30);
  v14 = (PixelFormatType & 0xFFFFFFEF) != 0x34323066 || v10 != 1111970369;
  if ((Height & 1) == 0)
  {
    v14 = 1;
  }

  if (Height != v7)
  {
    v14 = 1;
  }

  v28 = v14;
  v15 = *MEMORY[0x1E6965F30];
  v16 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F30], 0);
  v17 = *MEMORY[0x1E6965D88];
  v18 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D88], 0);
  v19 = CVBufferCopyAttachment(a2, v15, 0);
  v20 = CVBufferCopyAttachment(a2, v17, 0);
  v21 = v20;
  if (v10 == 1380411457 && v16 && v19 && v18 && v20)
  {
    v22 = FigCFEqual() && FigCFEqual() || FigCFEqual() != 0;
  }

  else
  {
    v22 = 1;
    if (!v16)
    {
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  CFRelease(v16);
  if (v18)
  {
LABEL_29:
    CFRelease(v18);
  }

LABEL_30:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  result = CVPixelBufferGetIOSurface(a1);
  if (result)
  {
    IOSurface = CVPixelBufferGetIOSurface(a2);
    result = 0;
    if (IOSurface)
    {
      if (Width >= 0x10 && Height >= 0x10)
      {
        v25 = v28 && v29;
        if (Width > *(&v31 + 1) && (Width > 0x4000 || !v28 || !v29))
        {
          return 0;
        }

        if (Height <= v32)
        {
          result = 0;
          if (v27 < 0x10 || v7 < 0x10)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (Height > 0x4000 || !v25 || v27 < 0x10 || v7 <= 0xF)
          {
            return result;
          }
        }

        if (v27 > *(&v32 + 1) && (v27 > 0x4000 || !v28 || !v29))
        {
          return 0;
        }

        v26 = v7 <= 0x4000 && v25;
        if (v7 <= v33)
        {
          v26 = 1;
        }

        return (v26 & v22);
      }
    }
  }

  return result;
}

uint64_t getSubSampling(OSType pixelFormat)
{
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  if (v1)
  {
    v2 = v1;
    Value = CFDictionaryGetValue(v1, *MEMORY[0x1E69662D8]);
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFArrayGetTypeID() && CFArrayGetCount(v4) >= 1)
      {
        v6 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
          if (ValueAtIndex)
          {
            v8 = CFGetTypeID(ValueAtIndex);
            if (v8 == CFDictionaryGetTypeID())
            {
              FigCFDictionaryGetInt32IfPresent();
            }
          }

          ++v6;
        }

        while (CFArrayGetCount(v4) > v6);
      }
    }

    FigCFDictionaryGetInt32IfPresent();
    CFRelease(v2);
  }

  return 1;
}

BOOL figPixelFormatTypeContainsYCbCr(OSType pixelFormat)
{
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *MEMORY[0x1E695E4D0];
  v4 = v3 == CFDictionaryGetValue(v1, *MEMORY[0x1E69662B8]);
  CFRelease(v2);
  return v4;
}

uint64_t isH3Platform()
{
  if ((isH3Platform_checked & 1) == 0)
  {
    v0 = *MEMORY[0x1E696CD60];
    v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
    MatchingService = IOServiceGetMatchingService(v0, v1);
    if (MatchingService)
    {
      v3 = MatchingService;
      valuePtr = 0;
      v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
      if (v4)
      {
        v5 = v4;
        Value = CFDictionaryGetValue(v4, @"IOSurfaceAcceleratorScalerVersion");
        if (Value)
        {
          v7 = Value;
          v8 = CFGetTypeID(Value);
          if (v8 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v7, kCFNumberLongLongType, &valuePtr);
            if (valuePtr == 131079 || valuePtr == 131074)
            {
              isH3Platform_isH3Platform = 1;
            }
          }
        }

        CFRelease(v5);
      }

      IOObjectRelease(v3);
    }

    isH3Platform_checked = 1;
  }

  return isH3Platform_isH3Platform;
}

void _initAsgFilter(unsigned int a1, uint64_t a2, char a3, char a4, int a5, unsigned int *a6, double a7)
{
  v40 = a5;
  v46 = a2;
  v51 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    v7 = a6;
    v9 = 0;
    v39 = v46 / -2;
    v10 = v46;
    v45 = 8 * v46;
    v38 = a1;
    v37 = a1 >> 1;
    v36 = (v46 / 2);
    v35 = 0.5 / a7 + -0.5;
    v50 = v46;
    v47 = v46 * -0.5;
    v48 = vcvtd_n_f64_s32(v46, 1uLL);
    v41 = (v46 + (v46 >> 31)) >> 1;
    v11 = (1 << a4);
    v12 = ~(-1 << (a4 + a3));
    v44 = 1 << a4;
    v42 = &a6[v46 / 2 * a1];
    v43 = a1;
    v13 = 4 * a1;
    v14 = v45;
    v49 = 3.14159265;
    do
    {
      MEMORY[0x1EEE9AC00]();
      v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFF0));
      bzero(v15, v45);
      if (a7 == 1.0)
      {
        v15[v41] = 1.0;
        v16 = 1.0;
      }

      else
      {
        if (v46 < 1)
        {
          goto LABEL_29;
        }

        v17 = 0;
        v18 = v9 / v38;
        if (v9 >= v37)
        {
          v18 = v18 + -1.0;
        }

        v19 = v39;
        if (v40)
        {
          v20 = v18;
        }

        else
        {
          v20 = v35 + v18;
        }

        v21 = v20 + v36;
        v22 = fmin(v20 + v36, v50 - (v20 + v36) + -1.0);
        v16 = 0.0;
        do
        {
          if (vabdd_f64(v17, v21) <= v22)
          {
            v23 = (v19 - v20) * a7;
            v24 = v23 * v49;
            v25 = cos(v23 * v49 / v50);
            v26 = 1.0;
            if (v23 != 0.0)
            {
              v26 = 0.0;
              if (v48 > v23 && v47 < v23)
              {
                v28 = v25 * v25;
                if (a7 >= 1.0)
                {
                  v28 = v25;
                }

                v26 = sin(v24) / v24 * (v25 * (v25 * v28));
              }
            }

            v15[v17] = v26;
            v16 = v16 + v26;
          }

          else
          {
            v15[v17] = 0.0;
          }

          ++v17;
          ++v19;
        }

        while (v10 != v17);
      }

      if (v46 >= 1)
      {
        v29 = 0;
        v30 = v10;
        v31 = v7;
        do
        {
          v32 = *v15++;
          v33 = llround(v32 / v16 * v11) & v12;
          *v31 = v33;
          v29 += v33;
          v31 = (v31 + v13);
          --v30;
        }

        while (v30);
        goto LABEL_30;
      }

LABEL_29:
      v29 = 0;
LABEL_30:
      v42[v9] = (v44 - v29 + v42[v9]);
      ++v9;
      ++v7;
    }

    while (v9 != v43);
  }
}

uint64_t VTDecompressionSessionServerStartXPC()
{
  FigKTraceInit();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  v1 = FigXPCServerStart();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t dssxpc_decompressionSessionClientRecordCreate()
{
  if (dssxpc_dscr_GetTypeID_once != -1)
  {
    dssxpc_decompressionSessionClientRecordCreate_cold_1();
  }

  return _CFRuntimeCreateInstance();
}

uint64_t dssxpc_InitializeClient(uint64_t a1, int a2, uint64_t a3, void *a4, const void *a5, const void *a6, uint64_t a7)
{
  valuePtr = a2;
  *(a1 + 16) = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = xpc_retain(a4);
  *(a1 + 48) = 0;
  *(a1 + 122) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = v12;
  if (a5)
  {
    v13 = CFRetain(a5);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 56) = v13;
  if (a6)
  {
    v14 = CFRetain(a6);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 64) = v14;
  *(a1 + 104) = FigSemaphoreCreate();
  *(a1 + 88) = dispatch_group_create();
  *(a1 + 112) = FigSimpleMutexCreate();
  if (!a7 || (UInt32 = FigCFNumberGetUInt32(), UInt32 > 0x32) || UInt32 == 5)
  {
    v16 = dispatch_queue_create("DecompressionSessionMessageQueue", 0);
  }

  else
  {
    v16 = FigDispatchQueueCreateWithPriority();
  }

  *(a1 + 96) = v16;
  if (v16)
  {
    v17 = FigOSTransactionCreateWithProcessName();
    *(a1 + 144) = v17;
    if (v17)
    {
      v18 = FigSimpleMutexCreate();
      result = 0;
      *(a1 + 160) = v18;
    }

    else
    {
      dssxpc_InitializeClient_cold_1(&v21);
      return v21;
    }
  }

  else
  {
    dssxpc_InitializeClient_cold_2(&v22);
    return v22;
  }

  return result;
}

uint64_t dssxpc_copyPixelBufferOriginForConnection(uint64_t a1, uint64_t a2)
{
  ConnectionRefcon = FigXPCServerGetConnectionRefcon();
  if (ConnectionRefcon)
  {
    v4 = *ConnectionRefcon;

    return MEMORY[0x1EEDBD940](v4, a2);
  }

  else
  {
    dssxpc_copyPixelBufferOriginForConnection_cold_1(&v6);
    return v6;
  }
}

void dssxpc_ensureEventLinkIfSupported(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = 0;
  v4 = MEMORY[0x193AE2FD0]();
  if (dssxpc_ensureEventLinkIfSupported_onceToken != -1)
  {
    dssxpc_ensureEventLinkIfSupported_cold_1();
  }

  if (dssxpc_ensureEventLinkIfSupported_prefersEventLink && (dssxpc_ensureEventLinkIfSupported_prefersEventLinkForApp || *(a1 + 152)))
  {
    FigSimpleMutexLock();
    if (*(a1 + 153))
    {
      v5 = 0;
      v6 = (a1 + 168);
      if (dssxpc_maxNumberOfEmitFrameEventLinksToCreatePerSession_onceToken != -1)
      {
        dssxpc_ensureEventLinkIfSupported_cold_2();
      }

      while (v5 < dssxpc_maxNumberOfEmitFrameEventLinksToCreatePerSession_maxEventLinkCount)
      {
        if (v4 == v6[10])
        {
          goto LABEL_17;
        }

        if (!*v6)
        {
          v7 = *(a1 + 156);
          goto LABEL_14;
        }

        ++v5;
        ++v6;
      }
    }

    else if (dssxpc_ensureEventLinkIfSupported_cold_3(a1, &v9, &v10, &v11))
    {
      v5 = 0;
      v7 = v11;
LABEL_14:
      if (v7 >= 1)
      {
        FigXPCServerCopyMemoryOrigin();
        FigXPCServerCopyMemoryRecipient();
        v8 = a1 + 8 * v5;
        v6 = (v8 + 168);
        if (!FigXPCServerCreateAssociatedEventLinkForConnection())
        {
          *(v8 + 248) = v4;
LABEL_17:
          *a2 = *v6;
        }
      }
    }

    *(a1 + 153) = 1;
    FigSimpleMutexUnlock();
  }

  else
  {
    *(a1 + 153) = 1;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t __DecompressionOutputCallback_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!result)
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) != 0)
    {
      return 4294949291;
    }

    else if (lengthAtOffsetOut > 0xA7)
    {
      *(dataPointerOut + 20) = 0;
      *(v4 + 8) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 32) + 24);
      *(v5 + 2) = 1701672038;
      *(v5 + 4) = *(a1 + 64);
      *(v5 + 5) = *(a1 + 68);
      *(v5 + 3) = *(a1 + 40);
      v6 = *(a1 + 72);
      *(v5 + 6) = *(a1 + 88);
      *(v5 + 2) = v6;
      v7 = *(a1 + 96);
      *(v5 + 9) = *(a1 + 112);
      *(v5 + 56) = v7;
      if (!*(*(a1 + 32) + 328))
      {
        v8 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v10 = CFStringCreateWithFormat(v8, 0, @"DecompressionSessionServer-%p", *(a1 + 32));
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], v10);
        *(*(a1 + 32) + 328) = CMMemoryPoolCreate(Mutable);
        if (v10)
        {
          CFRelease(v10);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      if (*(a1 + 48) && !*(a1 + 64))
      {
        return FigPixelBufferOriginAppendPixelBufferToIPCMessageData();
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294949290;
    }
  }

  return result;
}

uint64_t __dssxpc_ensureEventLinkIfSupported_block_invoke()
{
  dssxpc_ensureEventLinkIfSupported_prefersEventLink = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceNumberWithDefault();
  dssxpc_ensureEventLinkIfSupported_prefersEventLinkForApp = result;
  return result;
}

uint64_t __dssxpc_maxNumberOfEmitFrameEventLinksToCreatePerSession_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  if (result >= 10)
  {
    v1 = 10;
  }

  else
  {
    v1 = result;
  }

  dssxpc_maxNumberOfEmitFrameEventLinksToCreatePerSession_maxEventLinkCount = v1;
  return result;
}

double dssxpc_dscr_Init(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
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

void dssxpc_dscr_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    v4 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __dssxpc_dscr_Finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_76;
    block[4] = v3;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    dispatch_release(v9);
    a1[11] = 0;
  }

  v10 = a1[12];
  if (v10)
  {
    dispatch_release(v10);
    a1[12] = 0;
  }

  FigSemaphoreDestroy();
  a1[13] = 0;
  FigSimpleMutexDestroy();
  a1[14] = 0;
  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = a1[17];
  if (v12)
  {
    a1[17] = 0;
    xpc_release(v12);
  }

  v13 = a1[18];
  if (v13)
  {
    os_release(v13);
    a1[18] = 0;
  }

  v14 = (a1 + 21);
  v15 = 10;
  do
  {
    if (*v14)
    {
      CFRelease(*v14);
      *v14 = 0;
    }

    v14[10] = 0;
    ++v14;
    --v15;
  }

  while (v15);
  if (a1[20])
  {
    FigSimpleMutexDestroy();
    a1[20] = 0;
  }

  v16 = a1[41];
  if (v16)
  {
    CFRelease(v16);
    a1[41] = 0;
  }
}

CFStringRef dssxpc_dscr_CopyDebugDesc(uint64_t a1)
{
  v1 = "subTileSession";
  if (!*(a1 + 32))
  {
    v1 = "subDecompressionSession";
  }

  v2 = 64;
  if (!*(a1 + 32))
  {
    v2 = 56;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[ClientRecord %p] [isTile: %d, %s: %p, subSessionIsGone: %d]", a1, *(a1 + 32), v1, *(a1 + v2), *(a1 + 122));
}

uint64_t vtInitializePerClientAudioSessionStorage()
{
  _MergedGlobals_13 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  result = FigSimpleMutexCreate();
  qword_1ED6D4228 = result;
  return result;
}

uint64_t registerVTPerClientAudioSessionType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED6D4238 = result;
  return result;
}

double vtPerClientAudioSessionInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtPerClientAudioSessionFinalize(uint64_t a1)
{
  if (_MergedGlobals_13)
  {
    v2 = CFDataCreate(*MEMORY[0x1E695E480], (a1 + 16), 32);
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(_MergedGlobals_13, v2);
    FigSimpleMutexUnlock();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void __dssxpc_invalidateSession_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  VTDecompressionSessionInvalidate(*(*(a1 + 32) + 56));
  VTTileDecompressionSessionInvalidate(*(*(a1 + 32) + 64));
  FigSimpleMutexUnlock();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

double __TileDecompressionOutputCallback_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0xA7)
    {
      *(dataPointerOut + 20) = 0;
      result = 0.0;
      *(v4 + 8) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 32) + 24);
      *(v5 + 2) = 1701669236;
      *(v5 + 4) = *(a1 + 48);
      *(v5 + 5) = *(a1 + 52);
      *(v5 + 3) = *(a1 + 40);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_15_4(NSObject *a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>, uint64_t a4, char block, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a9 = v12;
  a10 = a3;
  a11 = v11;

  dispatch_group_async(a1, a2, &block);
}

uint64_t vtdcr_Register()
{
  result = _CFRuntimeRegisterClass();
  sVTDecompressionSessionRemoteID = result;
  return result;
}

uint64_t VTDecompressionSessionRemote_Create(uint64_t a1, uint64_t a2, void *a3, const __CFDictionary *a4, const __CFDictionary *a5, _OWORD *a6, uint64_t *a7)
{
  v28 = 0;
  values = a3;
  cf = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v11 = vtdsr_oneTimeInitialization();
  if (v11)
  {
    v21 = v11;
    v15 = 0;
    v19 = 0;
  }

  else
  {
    VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
    MEMORY[0x193AE3010](&VTDecompressionSessionRemoteGetTypeID_sRegisterVTDecompressionSessionRemoteOnce, vtdcr_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      *(Instance + 56) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v13 + 120) = dispatch_group_create();
      *(v13 + 112) = dispatch_queue_create("com.apple.coremedia.decompressionsession.clientcallback", 0);
      *(v13 + 104) = dispatch_queue_create("com.apple.coremedia.decompressionsession.pendingframequeue", 0);
      *(v13 + 136) = FigSemaphoreCreate();
      *(v13 + 160) = FigSemaphoreCreate();
      *(v13 + 200) = 1;
      *(v13 + 40) = FigSemaphoreCreate();
      if (a6)
      {
        *(v13 + 72) = *a6;
      }

      *(v13 + 240) = 1;
      v14 = *MEMORY[0x1E695E480];
      v15 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      if (!v15)
      {
        VTDecompressionSessionRemote_Create_cold_1(&v30);
        v19 = 0;
        v21 = v30;
        goto LABEL_37;
      }

      SerializedAtomDataForFormatDescriptions = FigRemote_CreateSerializedAtomDataForFormatDescriptions();
      if (SerializedAtomDataForFormatDescriptions)
      {
        v21 = SerializedAtomDataForFormatDescriptions;
      }

      else
      {
        if (!a4)
        {
          v19 = 0;
LABEL_14:
          PixelBufferAttributesWithIOSurfaceSupport = vtdsr_createPixelBufferAttributesWithIOSurfaceSupport(a5, &v24);
          if (!PixelBufferAttributesWithIOSurfaceSupport)
          {
            PixelBufferAttributesWithIOSurfaceSupport = FigCreateCFDataFromCFPropertyList();
            if (!PixelBufferAttributesWithIOSurfaceSupport)
            {
              *(v13 + 248) = 0;
              PixelBufferAttributesWithIOSurfaceSupport = weakReferenceTable_AddPointerAndGetKey_0();
              if (!PixelBufferAttributesWithIOSurfaceSupport)
              {
                PixelBufferAttributesWithIOSurfaceSupport = FigRPCCreateServerConnectionForObjectUsingMachChannel();
                if (!PixelBufferAttributesWithIOSurfaceSupport)
                {
                  PixelBufferAttributesWithIOSurfaceSupport = FigRPCGetServerConnectionInfo();
                  if (!PixelBufferAttributesWithIOSurfaceSupport)
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListener();
                    v21 = 0;
                    if (a7)
                    {
                      *a7 = v13;
                      goto LABEL_21;
                    }

LABEL_37:
                    v22 = vtdsr_handleMachErrorsInternal(v13, v21);
                    CFRelease(v13);
                    if (!v15)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_22;
                  }
                }
              }
            }
          }

LABEL_36:
          v21 = PixelBufferAttributesWithIOSurfaceSupport;
          goto LABEL_37;
        }

        if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode() || !CFDictionaryContainsKey(a4, @"CMSession"))
        {
          v19 = 0;
LABEL_13:
          PixelBufferAttributesWithIOSurfaceSupport = FigCreateCFDataFromCFPropertyList();
          if (PixelBufferAttributesWithIOSurfaceSupport)
          {
            goto LABEL_36;
          }

          goto LABEL_14;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, a4);
        if (MutableCopy)
        {
          v18 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, @"CMSession");
          v19 = v18;
          goto LABEL_13;
        }

        v21 = 0;
      }

      v19 = 0;
      goto LABEL_37;
    }

    VTDecompressionSessionRemote_Create_cold_2(&v30);
    v15 = 0;
    v19 = 0;
    v21 = v30;
  }

LABEL_21:
  v22 = vtdsr_handleMachErrorsInternal(0, v21);
  if (v15)
  {
LABEL_22:
    CFRelease(v15);
  }

LABEL_23:
  if (v28 && v27)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v22;
}

uint64_t vtdsr_oneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtdsr_oneTimeInitialization_block_invoke;
  block[3] = &unk_1E72C8CA8;
  block[4] = &v3;
  if (vtdsr_oneTimeInitialization_once != -1)
  {
    dispatch_once(&vtdsr_oneTimeInitialization_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t weakReferenceTable_AddPointerAndGetKey_0()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteDecompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization_0);
  if (gWeakReferenceTable_RemoteDecompressionSessionClient)
  {

    return MEMORY[0x1EEDBC840]();
  }

  else
  {
    weakReferenceTable_AddPointerAndGetKey_cold_1_0(&v1);
    return v1;
  }
}

void vtdsr_handleDeadServerConnection(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  *(a2 + 28) = 1;
  *(a2 + 24) = 0;
  v3 = *(a2 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtdsr_handleDeadServerConnection_block_invoke;
  block[3] = &unk_1E72C8D60;
  block[5] = v8;
  block[6] = a2;
  block[4] = v9;
  dispatch_sync(v3, block);
  CFRetain(a2);
  v5 = *(a2 + 112);
  v4 = *(a2 + 120);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __vtdsr_handleDeadServerConnection_block_invoke_2;
  v6[3] = &unk_1E72C8D88;
  v6[4] = v8;
  v6[5] = v9;
  v6[6] = a2;
  dispatch_group_async(v4, v5, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

uint64_t vtdsr_handleMachErrorsInternal(uint64_t a1, uint64_t a2)
{
  if (a2 <= 268435458)
  {
    if (a2 != -308 && a2 != -303)
    {
      goto LABEL_11;
    }
  }

  else if ((a2 - 268435459) >= 2 && a2 != 268451843)
  {
LABEL_11:
    v2 = a2;
LABEL_12:
    if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
    {
      goto LABEL_15;
    }

    return v2;
  }

  if (a1)
  {
    *(a1 + 28) = 1;
    v2 = 4294954385;
    goto LABEL_12;
  }

  if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
  {
    v2 = 4294954385;
LABEL_15:
    FigRPCKillServerOnTimeout();
    return v2;
  }

  return 4294954385;
}

uint64_t VTDecompressionSessionRemote_Invalidate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 52))
    {
      *(result + 52) = 1;
      v2 = *(result + 24);
      if (v2 && *(v1 + 56))
      {
        if (*(v1 + 224))
        {
          VTDecompressionSessionRemote_FinishDelayedTiles(v1);
        }

        else
        {
          VTDecompressionSessionRemoteClient_Invalidate(v2);
        }

        if (*(v1 + 112))
        {
          vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(v1, 1, 1);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v3 = *(v1 + 120);
      if (v3)
      {
        dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 = *(v1 + 24);
      if (v4)
      {
        v5 = VTDecompressionSessionRemoteClient_Destroy(v4);
        v6 = vtdsr_handleMachErrorsInternal(v1, v5);
      }

      else
      {
        v6 = 0;
      }

      FigRPCDisposeServerConnection();
      *(v1 + 16) = 0;
      v7 = *(v1 + 64);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 64) = 0;
      }

      v8 = *(v1 + 184);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 184) = 0;
      }

      v9 = *(v1 + 192);
      if (v9)
      {
        CFRelease(v9);
        *(v1 + 192) = 0;
      }

      if (*(v1 + 248))
      {
        MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteDecompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization_0);
        if (gWeakReferenceTable_RemoteDecompressionSessionClient)
        {
          FigCFWeakReferenceTableRemoveValue();
          *(v1 + 248) = 0;
        }

        else
        {
          VTDecompressionSessionRemote_Invalidate_cold_1();
        }
      }

      return vtdsr_handleMachErrorsInternal(v1, v6);
    }
  }

  return result;
}

uint64_t VTDecompressionSessionRemote_FinishDelayedTiles(uint64_t a1)
{
  if (!*(a1 + 28) && *(a1 + 16))
  {
    VTDecompressionSessionRemote_FinishDelayedTiles_cold_1(a1);
    return v2;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(uint64_t a1, char a2, int a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v5 = *(a1 + 120);
  v6 = *(a1 + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke;
  block[3] = &unk_1E72C8CD0;
  v8 = a2;
  block[4] = v9;
  block[5] = a1;
  dispatch_group_async(v5, v6, block);
  if (a3)
  {
    dispatch_group_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(v9, 8);
}

uint64_t VTDecompressionSessionRemote_CopySupportedPropertyDictionary(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CFPropertyListFromData = VTDecompressionSessionRemoteClient_CopySupportedPropertyDictionary(*(a1 + 24), &v7, &v6, &v8);
  if (CFPropertyListFromData)
  {
    goto LABEL_9;
  }

  v4 = v8;
  if (!v8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_9:
    v4 = CFPropertyListFromData;
  }

  v5 = vtdsr_handleMachErrorsInternal(a1, v4);
  if (v6)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v7);
  }

  return v5;
}

uint64_t VTDecompressionSessionRemote_CopySerializableProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (*(a1 + 28) || *(a1 + 52) || !a3)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  CFPropertyListFromData = VTDecompressionSessionRemoteClient_CopySerializableProperties(*(a1 + 24), &v9, &v8, &v10);
  if (CFPropertyListFromData)
  {
    goto LABEL_10;
  }

  v6 = v10;
  if (!v10)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_10:
    v6 = CFPropertyListFromData;
  }

  v7 = vtdsr_handleMachErrorsInternal(a1, v6);
  if (v8)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v9);
  }

  return v7;
}

uint64_t VTDecompressionSessionRemote_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  cf[3] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"PixelBufferPool"))
  {
    v21 = 0;
    cf[0] = 0;
    v8 = *MEMORY[0x1E6966050];
    cf[1] = *MEMORY[0x1E69660F8];
    cf[2] = v8;
    v9 = VTDecompressionSessionRemote_CopyProperty(a1, @"PoolPixelBufferAttributesSeed", a3, cf);
    if (!v9)
    {
      if (FigCFEqual())
      {
LABEL_11:
        if (v21 && !*(a1 + 192))
        {
          CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
          pixelBufferAttributes = 0;
          v16 = vtdsr_createPixelBufferAttributesWithIOSurfaceSupport(CopyRemovingKeys, &pixelBufferAttributes);
          if (v16)
          {
            v11 = v16;
          }

          else
          {
            v11 = CVPixelBufferPoolCreate(a3, 0, pixelBufferAttributes, (a1 + 192));
            CFRelease(pixelBufferAttributes);
          }
        }

        else
        {
          CopyRemovingKeys = 0;
          v11 = 0;
        }

        goto LABEL_14;
      }

      v9 = VTDecompressionSessionRemote_CopyProperty(a1, @"PoolPixelBufferAttributes", a3, &v21);
      if (!v9)
      {
        VTDecompressionSessionRemote_CopyProperty_cold_1(a1, (a1 + 184), cf);
        goto LABEL_11;
      }
    }

    v11 = v9;
    CopyRemovingKeys = 0;
LABEL_14:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (CopyRemovingKeys)
    {
      CFRelease(CopyRemovingKeys);
    }

    if (!v11)
    {
      v12 = *(a1 + 192);
      if (v12)
      {
        v12 = CFRetain(v12);
      }

      v11 = 0;
      *a4 = v12;
    }

    goto LABEL_28;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  CFPropertyListFromData = VTDecompressionSessionRemoteClient_CopyProperty(*(a1 + 24), CStringPtrAndBufferToFree, &v18, &v17, &v19);
  if (CFPropertyListFromData)
  {
    goto LABEL_27;
  }

  v11 = v19;
  if (!v19)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
LABEL_27:
    v11 = CFPropertyListFromData;
  }

LABEL_28:
  free(0);
  v15 = vtdsr_handleMachErrorsInternal(a1, v11);
  if (v17)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v18);
  }

  return v15;
}

uint64_t VTDecompressionSessionRemote_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  if (*(a1 + 28) || *(a1 + 52) || !a2 || !a3)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    if (FigCFEqual())
    {
      v5 = *(a1 + 208);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 208) = 0;
      }
    }

    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    CFGetAllocator(a1);
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v12 = CFDataFromCFPropertyList;
    }

    else
    {
      v8 = *(a1 + 24);
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v11 = VTDecompressionSessionRemoteClient_SetProperty(v8, CStringPtrAndBufferToFree, BytePtr, Length, &v13);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v13;
      }
    }

    free(0);
    return vtdsr_handleMachErrorsInternal(a1, v12);
  }
}

uint64_t VTDecompressionSessionRemote_SetProperties(mach_port_t *cf, uint64_t a2)
{
  v10 = 0;
  if (*(cf + 28) || *(cf + 52) || !a2)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    CFGetAllocator(cf);
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v9 = CFDataFromCFPropertyList;
    }

    else
    {
      v5 = cf[6];
      BytePtr = CFDataGetBytePtr(0);
      Length = CFDataGetLength(0);
      v8 = VTDecompressionSessionRemoteClient_SetProperties(v5, BytePtr, Length, &v10);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = v10;
      }
    }

    return vtdsr_handleMachErrorsInternal(cf, v9);
  }
}

uint64_t VTDecompressionSessionRemote_SetMultiImageCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    VTDecompressionSessionRemote_SetMultiImageCallback_cold_3();
    return 0;
  }

  if (!a2)
  {
    VTDecompressionSessionRemote_SetMultiImageCallback_cold_2();
    return 0;
  }

  if (*(a1 + 88))
  {
    VTDecompressionSessionRemote_SetMultiImageCallback_cold_1();
    return 0;
  }

  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  v3 = *(a1 + 24);

  return VTDecompressionSessionRemoteClient_EnableMIO(v3);
}

uint64_t vtDecompressionSessionRemote_DecodeFrameCommon(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, const __CFDictionary *a4, uint64_t a5, _DWORD *a6, const void *a7, const void *a8)
{
  v39 = 0;
  v38 = 0;
  theData = 0;
  v37 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  SerializedAtomDataForSampleBufferWithOptions = FigRemote_CreateSerializedAtomDataForSampleBufferWithOptions();
  if (SerializedAtomDataForSampleBufferWithOptions)
  {
    v18 = SerializedAtomDataForSampleBufferWithOptions;
    *(a1 + 176) = 0;
    goto LABEL_22;
  }

  *(a1 + 176) = (v37 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  if (a4)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v18 = CFDataFromCFPropertyList;
      goto LABEL_22;
    }
  }

  v20 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040737232EDuLL);
  v21 = *(a1 + 200);
  *(a1 + 200) = v21 + 1;
  *v20 = v21;
  v20[1] = a5;
  v20[3] = _Block_copy(a7);
  v20[4] = _Block_copy(a8);
  v20[2] = CMSampleBufferGetNumSamples(a2);
  v20[9] = VTDecompressionSessionCopyAnalysisOptions(a4);
  v22 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __vtDecompressionSessionRemote_DecodeFrameCommon_block_invoke;
  block[3] = &__block_descriptor_tmp_20_0;
  block[4] = a1;
  block[5] = v20;
  dispatch_sync(v22, block);
  v23 = *(a1 + 24);
  v24 = v39;
  v25 = v38;
  v26 = v37;
  if (!theData)
  {
    BytePtr = 0;
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!theData)
  {
LABEL_14:
    Length = 0;
    goto LABEL_15;
  }

  Length = CFDataGetLength(theData);
LABEL_15:
  v29 = VTDecompressionSessionRemoteClient_DecodeFrame(v23, v24, v25, v26, a3, BytePtr, Length, *v20, a8 != 0);
  if (v29)
  {
    v18 = v29;
  }

  else
  {
    FigSemaphoreWaitRelative();
    v18 = *(a1 + 152);
    v30 = *(a1 + 144);
    v31 = *(a1 + 148);
    if ((v30 & 1) == 0)
    {
      vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
    }

    if (a6)
    {
      *a6 = v30;
    }

    if (v31)
    {
      goto LABEL_22;
    }
  }

  v32 = *(a1 + 104);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = __vtDecompressionSessionRemote_DecodeFrameCommon_block_invoke_2;
  v34[3] = &__block_descriptor_tmp_21_0;
  v34[4] = a1;
  v34[5] = v20;
  dispatch_sync(v32, v34);
LABEL_22:
  v33 = vtdsr_handleMachErrorsInternal(a1, v18);
  FigMachPortReleaseSendRight_();
  if (v37)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v38);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v33;
}

uint64_t VTDecompressionSessionRemote_DecodeFrameWithOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, int a3, const __CFDictionary *a4, _DWORD *a5, unint64_t a6, unint64_t a7)
{
  if (a6 | a7)
  {

    return vtDecompressionSessionRemote_DecodeFrameCommon(a1, a2, a3, a4, 0, a5, a6, a7);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    VTDecompressionSessionRemote_DecodeFrameWithOutputHandler_cold_1(&v10);
    return v10;
  }
}

uint64_t weakReferenceTable_CopyPointerFromKey_0()
{
  MEMORY[0x193AE3010](&gWeakReferenceTable_RemoteDecompressionSessionClientThreadOnce, weakReferenceTable_OneTimeInitialization_0);
  if (gWeakReferenceTable_RemoteDecompressionSessionClient)
  {

    return MEMORY[0x1EEDBC858]();
  }

  else
  {
    weakReferenceTable_CopyPointerFromKey_cold_1_0();
    return 0;
  }
}

uint64_t VTDecompressionSessionRemote_WaitForAsynchronousFrames(uint64_t a1)
{
  if (!*(a1 + 28) && *(a1 + 16))
  {
    VTDecompressionSessionRemote_WaitForAsynchronousFrames_cold_1(a1);
    return v2;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTDecompressionSessionRemote_FinishDelayedFrames(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    VTDecompressionSessionRemote_FinishDelayedFrames_cold_1(a1);
    return v2;
  }
}

uint64_t VTDecompressionSessionRemote_CanAcceptFormatDescription(uint64_t a1, void *a2)
{
  values = a2;
  v8 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    v7 = 0;
LABEL_10:
    vtdsr_handleMachErrorsInternal(a1, v7);
    return v8;
  }

  v3 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (!v3)
  {
    VTDecompressionSessionRemote_CanAcceptFormatDescription_cold_1(&v10);
    v7 = v10;
    goto LABEL_10;
  }

  v4 = v3;
  SerializedAtomDataForFormatDescriptions = FigRemote_CreateSerializedAtomDataForFormatDescriptions();
  if (!SerializedAtomDataForFormatDescriptions)
  {
    SerializedAtomDataForFormatDescriptions = VTDecompressionSessionRemoteClient_CanAcceptFormatDescription(*(a1 + 24), 0, 0, &v8);
  }

  vtdsr_handleMachErrorsInternal(a1, SerializedAtomDataForFormatDescriptions);
  CFRelease(v4);
  return v8;
}

uint64_t VTDecompressionSessionRemote_CopyBlackPixelBuffer(uint64_t a1, CFTypeRef *a2)
{
  v10 = 0;
  cf = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  PixelBufferFromSerializedAtomData = VTDecompressionSessionRemoteClient_CopyBlackPixelBuffer(*(a1 + 24), &v8, &v7, &v6, &v10);
  if (PixelBufferFromSerializedAtomData)
  {
LABEL_18:
    v5 = PixelBufferFromSerializedAtomData;
    goto LABEL_11;
  }

  v5 = v10;
  if (!v10)
  {
    PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!PixelBufferFromSerializedAtomData)
    {
      v6 = 0;
      v5 = 0;
      if (a2)
      {
        *a2 = cf;
        cf = 0;
      }

      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_11:
  if (v8)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v6)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t VTDecompressionSessionRemote_FlushPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v3 = VTDecompressionSessionRemoteClient_FlushPixelBufferPool(*(a1 + 24));

    return vtdsr_handleMachErrorsInternal(a1, v3);
  }
}

uint64_t VTDecompressionSessionRemote_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = *"";
  memset(v22, 0, sizeof(v22));
  v15 = 0;
  v16 = &v15;
  v17 = *"";
  memset(v18, 0, sizeof(v18));
  if (!*(a1 + 28) && !*(a1 + 52))
  {
    if (*(a1 + 128))
    {
      MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = VTDecompressionSessionRemoteClient_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(a1 + 24), v22, v18, &v26);
      v9 = v28;
      *(v28 + 6) = MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded;
      if (MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = *(a1 + 112);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTDecompressionSessionRemote_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
      block[3] = &unk_1E72C8C18;
      block[4] = &v27;
      block[5] = &v19;
      block[6] = &v15;
      block[7] = &v23;
      block[8] = a1;
      dispatch_sync(v10, block);
      v9 = v28;
      if (*(v28 + 6))
      {
LABEL_14:
        v4 = vtdsr_handleMachErrorsInternal(a1, *(v9 + 6));
        *(v28 + 6) = v4;
        goto LABEL_4;
      }
    }

    v11 = *(v24 + 6);
    *(v9 + 6) = v11;
    if (!v11)
    {
      if (a2)
      {
        v12 = v20[5];
        *a2 = *(v20 + 3);
        *(a2 + 16) = v12;
      }

      if (a3)
      {
        v13 = v16[5];
        *a3 = *(v16 + 3);
        *(a3 + 16) = v13;
      }
    }

    goto LABEL_14;
  }

  fig_log_get_emitter();
  v4 = FigSignalErrorAtGM();
LABEL_4:
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return v4;
}

uint64_t VTTileDecompressionSessionRemote_Create(uint64_t a1, uint64_t a2, void *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  values = a3;
  v11 = vtdsr_oneTimeInitialization();
  if (v11)
  {
    v21 = v11;
    v15 = 0;
    v19 = 0;
    goto LABEL_19;
  }

  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  MEMORY[0x193AE3010](&VTDecompressionSessionRemoteGetTypeID_sRegisterVTDecompressionSessionRemoteOnce, vtdcr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VTTileDecompressionSessionRemote_Create_cold_2(&v25);
    v15 = 0;
    v19 = 0;
    v21 = v25;
    goto LABEL_19;
  }

  v13 = Instance;
  *(Instance + 56) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v13 + 120) = dispatch_group_create();
  *(v13 + 112) = dispatch_queue_create("com.apple.coremedia.decompressionsession.clientcallback", 0);
  *(v13 + 104) = dispatch_queue_create("com.apple.coremedia.decompressionsession.pendingframequeue", 0);
  *(v13 + 136) = FigSemaphoreCreate();
  *(v13 + 160) = FigSemaphoreCreate();
  *(v13 + 200) = 1;
  *(v13 + 40) = FigSemaphoreCreate();
  *(v13 + 224) = a5;
  *(v13 + 232) = a6;
  *(v13 + 240) = 0;
  v14 = *MEMORY[0x1E695E480];
  v15 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    SerializedAtomDataForFormatDescriptions = FigRemote_CreateSerializedAtomDataForFormatDescriptions();
    if (SerializedAtomDataForFormatDescriptions)
    {
      v21 = SerializedAtomDataForFormatDescriptions;
    }

    else
    {
      if (!a4)
      {
        v19 = 0;
LABEL_14:
        *(v13 + 248) = 0;
        Key_0 = weakReferenceTable_AddPointerAndGetKey_0();
        if (Key_0)
        {
          goto LABEL_24;
        }

        Key_0 = FigRPCCreateServerConnectionForObjectUsingMachChannel();
        if (Key_0)
        {
          goto LABEL_24;
        }

        Key_0 = FigRPCGetServerConnectionInfo();
        if (Key_0)
        {
          goto LABEL_24;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        v21 = 0;
        if (!a7)
        {
          goto LABEL_30;
        }

        *a7 = v13;
LABEL_19:
        v22 = vtdsr_handleMachErrorsInternal(0, v21);
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (!VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode() || !CFDictionaryContainsKey(a4, @"CMSession"))
      {
        v19 = 0;
LABEL_11:
        Key_0 = FigCreateCFDataFromCFPropertyList();
        if (Key_0)
        {
LABEL_24:
          v21 = Key_0;
          goto LABEL_30;
        }

        goto LABEL_14;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, a4);
      if (MutableCopy)
      {
        v18 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CMSession");
        v19 = v18;
        goto LABEL_11;
      }

      v21 = 0;
    }

    v19 = 0;
  }

  else
  {
    VTTileDecompressionSessionRemote_Create_cold_1(&v25);
    v19 = 0;
    v21 = v25;
  }

LABEL_30:
  v22 = vtdsr_handleMachErrorsInternal(v13, v21);
  CFRelease(v13);
  if (v15)
  {
LABEL_20:
    CFRelease(v15);
  }

LABEL_21:
  if (v19)
  {
    CFRelease(v19);
  }

  return v22;
}

uint64_t VTDecompressionSessionRemote_DecodeTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9)
{
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  if (*(a1 + 28) || *(a1 + 52))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  SerializedAtomDataForSampleBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
  if (SerializedAtomDataForSampleBuffer)
  {
    v18 = SerializedAtomDataForSampleBuffer;
    *(a1 + 176) = 0;
  }

  else
  {
    v19 = MEMORY[0x1E69E9AC8];
    *(a1 + 176) = (v37 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (!FigCFEqual())
    {
      SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
      if (SerializedAtomDataForPixelBuffer)
      {
        v18 = SerializedAtomDataForPixelBuffer;
        *(a1 + 216) = 0;
        goto LABEL_21;
      }

      v31 = (v35 + *v19 - 1) & -*v19;
      v32 = *(a1 + 208);
      *(a1 + 208) = a5;
      *(a1 + 216) = v31;
      if (a5)
      {
        CFRetain(a5);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    v20 = malloc_type_calloc(1uLL, 0x58uLL, 0x10E0040737232EDuLL);
    v21 = *(a1 + 200);
    *(a1 + 200) = v21 + 1;
    *v20 = v21;
    v20[1] = a8;
    if (a5)
    {
      v22 = CFRetain(a5);
    }

    else
    {
      v22 = 0;
    }

    v20[5] = v22;
    v20[6] = a3;
    v20[7] = a4;
    v20[8] = a6;
    v20[2] = 1;
    v24 = *(a1 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VTDecompressionSessionRemote_DecodeTile_block_invoke;
    block[3] = &__block_descriptor_tmp_11_3;
    block[4] = a1;
    block[5] = v20;
    dispatch_sync(v24, block);
    v25 = VTDecompressionSessionRemoteClient_DecodeTile(*(a1 + 24), SHIDWORD(v39), v38, v37, a3, a4, v39, v36, v35, a6, a7, *v20);
    if (v25)
    {
      v18 = v25;
    }

    else
    {
      FigSemaphoreWaitRelative();
      v18 = *(a1 + 152);
      v26 = *(a1 + 144);
      v27 = *(a1 + 148);
      if ((v26 & 1) == 0)
      {
        vtdsr_dequeueAllPendingFramesAndCallbackClientForEach(a1, 0, 1);
      }

      if (a9)
      {
        *a9 = v26;
      }

      if (v27)
      {
        goto LABEL_21;
      }
    }

    v28 = *(a1 + 104);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = __VTDecompressionSessionRemote_DecodeTile_block_invoke_2;
    v33[3] = &__block_descriptor_tmp_12_3;
    v33[4] = a1;
    v33[5] = v20;
    dispatch_sync(v28, v33);
  }

LABEL_21:
  v29 = vtdsr_handleMachErrorsInternal(a1, v18);
  FigMachPortReleaseSendRight_();
  FigMachPortReleaseSendRight_();
  v30 = MEMORY[0x1E69E9A60];
  if (v37)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v38);
  }

  if (v35)
  {
    MEMORY[0x193AE4440](*v30, v36);
  }

  return v29;
}

double vtdsr_Init(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void vtdsr_Finalize(uint64_t a1)
{
  VTDecompressionSessionRemote_Invalidate(a1);
  v2 = *(a1 + 120);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(a1 + 120));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    dispatch_release(v4);
  }

  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  FigSemaphoreDestroy();
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 208);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t __vtdsr_oneTimeInitialization_block_invoke(uint64_t a1)
{
  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  result = FigRPCCreateRemoteClient();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke(uint64_t a1)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 40) + 52) && !*(a1 + 48))
  {
    fig_log_get_emitter();
    *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM();
    return;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E69E9A60];
  do
  {
    v5 = *(a1 + 40);
    v107 = 0;
    v106 = 0;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2000000000;
    v105 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3002000000;
    v99 = __Block_byref_object_copy__1;
    v100 = __Block_byref_object_dispose__1;
    v101 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x3002000000;
    v93 = __Block_byref_object_copy__1;
    v94 = __Block_byref_object_dispose__1;
    v95 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2000000000;
    v89 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2000000000;
    v85 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2000000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2000000000;
    v77 = 0;
    v73 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2000000000;
    v72 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v64 = 0uLL;
    v65 = 0;
    v62 = 0uLL;
    v63 = 0;
    memset(v123, 0, sizeof(v123));
    v122 = 0u;
    v121 = 0u;
    memset(v120, 0, sizeof(v120));
    v119 = 0u;
    v118 = 0u;
    memset(v117, 0, sizeof(v117));
    v116 = 0u;
    v115 = 0u;
    memset(v114, 0, sizeof(v114));
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    cf = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = 0;
    v6 = *(v5 + 24);
    if (!v6)
    {
      __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_4(&v54);
      Mutable = 0;
      v11 = 0;
      v8 = v54;
      goto LABEL_52;
    }

    v7 = VTDecompressionSessionRemoteClient_DequeueNextPendingFrame(v6, &v106, &v105, &v73 + 1, &v73, &v68, &v67, &v66, &v108, &v108 + 1, &v109, &v109 + 1, &v110, &v112, &v112 + 1, &v113, &v113 + 1, v114, &v115, &v115 + 1, &v116, &v116 + 1, v117, &v118, &v118 + 1, &v119, &v119 + 1, v120, &v121, &v121 + 1, &v122, &v122 + 1, v123, &v64, &v62, &v107, &v107 + 1);
    if (v7)
    {
      v8 = v7;
LABEL_102:
      Mutable = 0;
      v11 = 0;
      goto LABEL_52;
    }

    v8 = HIDWORD(v107);
    if (HIDWORD(v107))
    {
      goto LABEL_102;
    }

    if (!v106)
    {
      v8 = 0;
      Mutable = 0;
      v11 = 0;
      goto LABEL_51;
    }

    if (HIDWORD(v73))
    {
      goto LABEL_28;
    }

    v9 = MEMORY[0x1E695E9C0];
    if (v68 | v66)
    {
      HIDWORD(v73) = FigRemote_CreatePixelBufferFromSerializedAtomData();
      if (HIDWORD(v73))
      {
        goto LABEL_28;
      }

      v66 = 0;
    }

    if (!(v108 | v109))
    {
LABEL_28:
      v8 = 0;
      Mutable = 0;
      v11 = 0;
      goto LABEL_29;
    }

    Mutable = CFArrayCreateMutable(v3, 5, v9);
    if (!Mutable)
    {
      __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_3(&v54);
      v11 = 0;
LABEL_106:
      v8 = v54;
      goto LABEL_29;
    }

    v11 = CFArrayCreateMutable(v3, 5, v9);
    if (!v11)
    {
      __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_2(&v54);
      goto LABEL_106;
    }

    v12 = 0;
    while (1)
    {
      v13 = &v108 + v12;
      if (*(&v108 + v12) | *(&v108 + v12 + 16))
      {
        HIDWORD(v73) = FigRemote_CreatePixelBufferFromSerializedAtomData();
        if (HIDWORD(v73))
        {
          goto LABEL_99;
        }

        *(v13 + 4) = 0;
      }

      v14 = *(v13 + 3);
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = *(&v110 + v12);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = CFDataCreate(v3, v14, v15);
      *(&v110 + v12 + 8) = v16;
      if (!v16)
      {
        break;
      }

      HIDWORD(v73) = MEMORY[0x193AE2F20](v16, v3, &v111 + v12);
      if (HIDWORD(v73))
      {
        goto LABEL_99;
      }

LABEL_23:
      v17 = (&v108 + v12);
      v18 = *(&v111 + v12);
      if (v18 && v17[7])
      {
        CFArrayAppendValue(Mutable, v18);
        CFArrayAppendValue(v11, v17[7]);
      }

      v12 += 64;
      if (v12 == 320)
      {
        v8 = 0;
        HIDWORD(v73) = MEMORY[0x193AE2F70](v3, Mutable, v11, &cf);
        goto LABEL_29;
      }
    }

    __vtdsr_dequeueAllPendingFramesAndCallbackClientForEach_block_invoke_cold_1(&v73 + 1);
LABEL_99:
    v8 = 0;
LABEL_29:
    v19 = *(v5 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtdsr_dequeueNextPendingFrameAndCallbackClient_block_invoke;
    block[3] = &unk_1E72C8CF8;
    block[4] = &v102;
    block[5] = &v96;
    block[6] = &v90;
    block[7] = &v86;
    block[8] = &v82;
    block[9] = &v78;
    block[10] = &v57;
    block[11] = &v69;
    block[13] = v5;
    block[12] = &v74;
    dispatch_sync(v19, block);
    if (*(v75 + 24))
    {
      *(v5 + 128) = 1;
      if (*(v5 + 240))
      {
        v20 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v20)
        {
          v21 = v20;
          v22 = v58[3];
          v54 = v64;
          v55 = v65;
          VTDecompressionSessionAnalyzeAndInterruptFrame(v20, SHIDWORD(v73), &v54, v22, &v73, v70 + 3);
          CFRelease(v21);
        }
      }

      v23 = v70[3];
      if (v23)
      {
LABEL_34:
        if (cf && !*(v5 + 88) && !v91[5])
        {
          if (!HIDWORD(v73))
          {
            HIDWORD(v73) = -17699;
          }

          v46 = *(v5 + 72);
          if (v46)
          {
            v47 = *(v5 + 80);
            v48 = v103[3];
            v54 = *MEMORY[0x1E6960C70];
            v55 = *(MEMORY[0x1E6960C70] + 16);
            v52 = v54;
            v53 = v55;
            v46(v47, v48);
            goto LABEL_43;
          }

          v51 = v97[5];
          if (!v51)
          {
            goto LABEL_43;
          }

          v45 = *(v51 + 16);
          v54 = *MEMORY[0x1E6960C70];
          v55 = *(MEMORY[0x1E6960C70] + 16);
          v52 = v54;
          v53 = v55;
LABEL_97:
          v45();
          goto LABEL_43;
        }

        v24 = *(v5 + 72);
        if (v24)
        {
          v25 = *(v5 + 80);
          v26 = v103[3];
          v27 = HIDWORD(v73);
          v28 = v73;
          v54 = v64;
          v55 = v65;
          v52 = v62;
          v53 = v63;
          v29 = v23;
          goto LABEL_42;
        }

        v41 = *(v5 + 224);
        if (v41)
        {
          v41(*(v5 + 232), v103[3], v87[3], v83[3], v70[3], v79[3], HIDWORD(v73), v73);
          goto LABEL_43;
        }

        v44 = v97[5];
        if (v44)
        {
          v45 = *(v44 + 16);
          v54 = v64;
          v55 = v65;
          v52 = v62;
          v53 = v63;
          goto LABEL_97;
        }

        v49 = v91[5];
        if (v49)
        {
          v50 = *(v49 + 16);
          v54 = v64;
          v55 = v65;
          v52 = v62;
          v53 = v63;
          v50(v49, HIDWORD(v73), v73, v23, 0, &v54, &v52);
        }
      }

      else
      {
        v24 = *(v5 + 88);
        if (v24)
        {
          v25 = *(v5 + 96);
          v26 = v103[3];
          v27 = HIDWORD(v73);
          v28 = v73;
          v29 = cf;
          v54 = v64;
          v55 = v65;
          v52 = v62;
          v53 = v63;
LABEL_42:
          v24(v25, v26, v27, v28, v29, &v54, &v52);
        }

        else
        {
          v42 = v91[5];
          if (!v42)
          {
            goto LABEL_34;
          }

          v43 = *(v42 + 16);
          v54 = v64;
          v55 = v65;
          v52 = v62;
          v53 = v63;
          v43(v42, HIDWORD(v73), v73, 0, cf, &v54, &v52);
        }
      }

LABEL_43:
      if ((v73 & 0x10) != 0)
      {
        v30 = v70[3];
        if (v30)
        {
          CFRelease(v30);
        }
      }

      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }

      v31 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v31)
      {
        v32 = v31;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v32);
      }

      *(v5 + 128) = 0;
LABEL_51:
      v2 = v107;
    }

    else
    {
      v8 = 4294954385;
    }

LABEL_52:
    v33 = vtdsr_handleMachErrorsInternal(v5, v8);
    if (v68)
    {
      FigMachPortReleaseSendRight_();
    }

    if (v66)
    {
      MEMORY[0x193AE4440](*v4, v67);
    }

    for (i = 0; i != 320; i += 64)
    {
      if (*(&v108 + i))
      {
        FigMachPortReleaseSendRight_();
      }

      v35 = &v108 + i;
      if (*(&v108 + i + 16))
      {
        MEMORY[0x193AE4440](*v4, *(v35 + 1));
      }

      if (*(v35 + 8))
      {
        MEMORY[0x193AE4440](*v4, *(&v109 + i + 8));
      }

      v36 = *(&v111 + i);
      if (v36)
      {
        CFRelease(v36);
      }

      v37 = *(&v110 + i + 8);
      if (v37)
      {
        CFRelease(v37);
      }

      v38 = *(&v111 + i + 8);
      if (v38)
      {
        CFRelease(v38);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v39 = v70[3];
    if (v39)
    {
      CFRelease(v39);
    }

    _Block_release(v97[5]);
    _Block_release(v91[5]);
    v40 = v58[3];
    if (v40)
    {
      CFRelease(v40);
    }

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v102, 8);
    *(*(*(a1 + 32) + 8) + 24) = v33;
  }

  while (v2 && !*(*(*(a1 + 32) + 8) + 24));
}

void __vtdsr_dequeueNextPendingFrameAndCallbackClient_block_invoke(void *a1)
{
  v1 = *(a1[13] + 32);
  if (v1)
  {
    v3 = *(a1[4] + 8);
    while (*v1 != *(v3 + 24))
    {
      v1 = v1[10];
      if (!v1)
      {
        return;
      }
    }

    *(v3 + 24) = v1[1];
    *(*(a1[5] + 8) + 40) = _Block_copy(v1[3]);
    *(*(a1[6] + 8) + 40) = _Block_copy(v1[4]);
    *(*(a1[7] + 8) + 24) = v1[6];
    *(*(a1[8] + 8) + 24) = v1[7];
    *(*(a1[9] + 8) + 24) = v1[8];
    v4 = v1[9];
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *(*(a1[10] + 8) + 24) = v4;
    v5 = v1[2] - 1;
    v1[2] = v5;
    v6 = v1[5];
    if (v6)
    {
      *(*(a1[11] + 8) + 24) = v6;
    }

    if (!v5)
    {
      _Block_release(v1[3]);
      _Block_release(v1[4]);
      v7 = v1[9];
      if (v7)
      {
        CFRelease(v7);
        v1[9] = 0;
      }

      v8 = a1[13];
      v11 = *(v8 + 32);
      v10 = (v8 + 32);
      v9 = v11;
      if (v11 != v1)
      {
        do
        {
          v12 = v9;
          v9 = v9[10];
        }

        while (v9 != v1);
        v10 = v12 + 10;
      }

      *v10 = v9[10];
      free(v1);
    }

    *(*(a1[12] + 8) + 24) = 1;
  }
}

void *__vtdsr_handleDeadServerConnection_block_invoke(void *result)
{
  *(*(result[4] + 8) + 24) = *(result[6] + 32);
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 24);
  *(result[6] + 32) = 0;
  return result;
}

void __vtdsr_handleDeadServerConnection_block_invoke_2(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    v3 = MEMORY[0x1E6960C70];
    do
    {
      *(*(a1[5] + 8) + 24) = v2;
      *(*(a1[4] + 8) + 24) = *(*(*(a1[4] + 8) + 24) + 80);
      v4 = a1[6];
      v5 = v4[9];
      if (v5)
      {
        v6 = v4[10];
        v7 = *(*(*(a1[5] + 8) + 24) + 8);
        v23 = *v3;
        v24 = *(v3 + 2);
        v21 = v23;
        v22 = v24;
        v5(v6, v7, 4294954385, 2, 0, &v23, &v21);
      }

      else
      {
        v8 = v4[28];
        if (v8)
        {
          v9 = v4[29];
          v10 = *(*(a1[5] + 8) + 24);
          v8(v9, v10[1], v10[6], v10[7], 0, v10[8], 4294954385, 2);
        }

        else
        {
          v11 = *(*(a1[5] + 8) + 24);
          v12 = *(v11 + 32);
          if (v12)
          {
            v13 = *(v12 + 16);
            v23 = *v3;
            v24 = *(v3 + 2);
            v21 = v23;
            v22 = v24;
            v13(v12, 4294954385, 2, 0, 0, &v23, &v21);
          }

          else
          {
            v14 = *(v11 + 24);
            if (v14)
            {
              v15 = *(v14 + 16);
              v23 = *v3;
              v24 = *(v3 + 2);
              v21 = v23;
              v22 = v24;
              v15(v14, 4294954385, 2, 0, &v23, &v21);
            }
          }
        }
      }

      v16 = *(*(a1[5] + 8) + 24);
      v17 = *(v16 + 40);
      if (v17)
      {
        CFRelease(v17);
        v16 = *(*(a1[5] + 8) + 24);
      }

      _Block_release(*(v16 + 24));
      _Block_release(*(*(*(a1[5] + 8) + 24) + 32));
      v18 = *(*(a1[5] + 8) + 24);
      if (v18[9])
      {
        CFRelease(v18[9]);
        *(*(*(a1[5] + 8) + 24) + 72) = 0;
        v18 = *(*(a1[5] + 8) + 24);
      }

      free(v18);
      if (!FigAtomicDecrement32())
      {
        FigSemaphoreSignal();
      }

      v2 = *(*(a1[4] + 8) + 24);
    }

    while (v2);
  }

  v19 = a1[6];
  *(v19 + 144) = 0;
  *(v19 + 152) = 0;
  *(v19 + 148) = 0;
  *(v19 + 168) = 0;
  FigSemaphoreSignal();
  FigSemaphoreSignal();
  v20 = a1[6];
  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2)
{

  return vtdsr_handleMachErrorsInternal(v2, a2);
}

uint64_t vtLoadVideoEncodersGuts(int a1)
{
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/AV1SW.videoencoder", "AV1RegisterEncoder");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/HEVCH9.videoencoder", "HEVCH9EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/H9.videoencoder", "H9EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoCodecs/VCPHEVC.videocodec", "VCPHEVCRegisterEncoder");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/H264H9.videoencoder", "H264H9EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/H264H7.videoencoder", "H264H7EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/H264H4.videoencoder", "H264H4EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/H264H2.videoencoder", "H264H2EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/JPEGH1.videoencoder", "JPEGH1EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/VCH263.videoencoder", "VCH263EncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/Slim.videoencoder", "SLIMEncoderRegister");
  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/ExampleIPB.videoencoder", "ExampleIPBEncoderRegister");
  if (FigServer_IsServerProcess())
  {
    vtTryToLoadVideoDecoder("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", "VPModuleInitialize");
  }

  vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/AppleProResSWEncoder.videoencoder", "ProResSWEncoderRegister");
  if (!a1 || !vtTryToLoadVideoDecoder("/AppleInternal/Library/VideoCodecs/AppleProResHWEncoder-Dev.videoencoder", "ProResEncoderRegister"))
  {
    vtTryToLoadVideoDecoder("/System/Library/VideoEncoders/AppleProResHWEncoder.videoencoder", "ProResEncoderRegister");
  }

  return vtTryToLoadVideoDecoder("/AppleInternal/Library/VideoCodecs/yzip.videocodec", "yzipRegisterEncoder");
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_420vf_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 2 * *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = 2 * ((v3 + v3 * a2) / v2 - v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 19);
    v8 = *(result + 24) & 0xFFFFFFFE;
    v9 = **(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 17);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    *&v15 = *(v7 + 128);
    v16 = 8191.0 / *&v15;
    LOWORD(v15) = *(v7 + 144);
    v17 = v15;
    LOWORD(v15) = *(v7 + 146);
    v18 = v15;
    LOWORD(v15) = *(v7 + 148);
    v19 = v15;
    LOWORD(v15) = *(v7 + 150);
    v20 = v15;
    v178 = v20;
    LOWORD(v20) = *(v7 + 152);
    v174 = *(v7 + 40);
    v175 = *(v7 + 36);
    v173 = *(v7 + 44);
    v171 = *(v7 + 52) * 0.25;
    v172 = *(v7 + 48) * 0.25;
    v169 = *(v7 + 60) * 0.25;
    v170 = *(v7 + 56) * 0.25;
    v167 = *(v7 + 72);
    v168 = *(v7 + 64) * 0.25;
    v165 = *(v7 + 76);
    v166 = *(v7 + 68) * 0.25;
    v163 = *(v7 + 84);
    v164 = *(v7 + 80);
    v161 = *(v7 + 92);
    v162 = *(v7 + 88);
    v159 = *(v7 + 100);
    v160 = *(v7 + 96);
    v158 = *(v7 + 104);
    v21 = v7 + 164;
    v22 = v7 + 16548;
    v23 = v7 + 32932;
    v25 = *(v7 + 108);
    v24 = *(v7 + 112);
    v26 = *(v7 + 116);
    v27 = *(v7 + 120);
    v28 = *(result + 14);
    v29 = *(result + 15) + 2 * v4;
    v30 = *(result + 44) + 2 * (*(result + 28) * a2 / v2);
    v31 = v10[2];
    _ZF = v31 == 0;
    v33 = (v31 + v14 * v29 + v28);
    if (_ZF)
    {
      v33 = 0;
    }

    v34 = (*v10 + v12 * v29 + v28);
    v35 = (**(result + 7) + v30 * v9 + 8 * *(result + 36));
    v36 = v10[1] + v13 * (v29 / 2) + v28;
    v176 = LODWORD(v20);
    v177 = v18;
    v156 = v24;
    v157 = v25;
    v154 = v27;
    v155 = v26;
    do
    {
      v37 = v35 + v9;
      v38 = &v34[v12];
      v39 = &v33[v14];
      if (v8 >= 1)
      {
        v40 = 0;
        v41 = &v33[v14];
        v42 = &v34[v12];
        v43 = (v35 + v9);
        do
        {
          v44.i16[0] = *v43;
          v44.i16[1] = *v35;
          _H0 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          _H0 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H0 }

          _H0 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H0 }

          v54 = fmaxf(_S15, fmaxf(_S18, _S19));
          v55 = (((v24 * _S18) + (v25 * _S15)) + (v26 * _S19)) + (v27 * v54);
          v56 = 8191.0;
          if (v55 <= 8191.0)
          {
            v56 = (((v24 * _S18) + (v25 * _S15)) + (v26 * _S19)) + (v27 * v54);
            if (v55 < 0.0)
            {
              v56 = 0.0;
            }
          }

          v44.i16[2] = v35[4];
          v44.i16[3] = v43[4];
          _H17 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H17 }

          _H3 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          _H3 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v35[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          _H17 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[1]) >> 16), 0.0), 8191.0)));
          _H6 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[2]) >> 16), 0.0), 8191.0)));
          _H23 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[3]) >> 16), 0.0), 8191.0)));
          _H3 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[5]) >> 16), 0.0), 8191.0)));
          _H5 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[6]) >> 16), 0.0), 8191.0)));
          _H7 = *(v21 + 2 * llroundf(fminf(fmaxf(v16 * (bswap32(v43[7]) >> 16), 0.0), 8191.0)));
          _H16 = *(v22 + 2 * llroundf(v56));
          v70 = (((v24 * _S22) + (v25 * _S21)) + (v26 * _S24)) + (v27 * fmaxf(_S21, fmaxf(_S22, _S24)));
          v71 = 8191.0;
          if (v70 <= 8191.0)
          {
            v71 = v70;
            if (v70 < 0.0)
            {
              v71 = 0.0;
            }
          }

          __asm
          {
            FCVT            S26, H17
            FCVT            S27, H6
            FCVT            S28, H23
          }

          _H29 = *(v22 + 2 * llroundf(v71));
          v76 = (((v24 * _S27) + (v25 * _S26)) + (v26 * _S28)) + (v27 * fmaxf(_S26, fmaxf(_S27, _S28)));
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = v76;
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          __asm
          {
            FCVT            S6, H3
            FCVT            S23, H5
            FCVT            S25, H7
            FCVT            S3, H16
          }

          v82 = _S15 * _S3;
          v83 = _S18 * _S3;
          v84 = _S19 * _S3;
          __asm { FCVT            S3, H29 }

          v86 = _S21 * _S3;
          v87 = _S22 * _S3;
          v88 = _S24 * _S3;
          _H0 = *(v22 + 2 * llroundf(v77));
          __asm { FCVT            S0, H0 }

          v91 = _S26 * _S0;
          v92 = _S27 * _S0;
          v93 = _S28 * _S0;
          v94 = (((v24 * _S23) + (v25 * _S6)) + (v26 * _S25)) + (v27 * fmaxf(_S6, fmaxf(_S23, _S25)));
          v95 = 8191.0;
          if (v94 <= 8191.0)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          _H0 = *(v22 + 2 * llroundf(v95));
          __asm { FCVT            S0, H0 }

          _S6 = _S6 * _S0;
          v99 = _S23 * _S0;
          v100 = _S25 * _S0;
          v101 = ((v165 * v83) + (v82 * v167)) + (v84 * v164);
          v102 = ((v162 * v83) + (v82 * v163)) + (v84 * v161);
          v103 = ((v159 * v83) + (v82 * v160)) + (v84 * v158);
          v104 = ((v165 * v87) + (v86 * v167)) + (v88 * v164);
          v105 = ((v162 * v87) + (v86 * v163)) + (v88 * v161);
          v106 = ((v159 * v87) + (v86 * v160)) + (v88 * v158);
          v107 = ((v165 * v92) + (v91 * v167)) + (v93 * v164);
          v108 = ((v162 * v92) + (v91 * v163)) + (v93 * v161);
          v109 = ((v159 * v92) + (v91 * v160)) + (v93 * v158);
          v110 = ((v165 * v99) + (_S6 * v167)) + (v100 * v164);
          v111 = ((v162 * v99) + (_S6 * v163)) + (v100 * v161);
          _S0 = ((v159 * v99) + (_S6 * v160)) + (v100 * v158);
          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v101, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          _H5 = *(v23 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H3
            FCVT            S21, H5
          }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H5 = *(v23 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v23 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S24, H6 }

          LOWORD(_S6) = *(v23 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S16, H6 }

          LOWORD(_S6) = *(v23 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          LOWORD(_S0) = *(v23 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S7, H0
          }

          v133 = (((v174 * _S18) + (v175 * _S15)) + (v173 * _S19)) + v17;
          if (v133 < v17)
          {
            v134 = v17;
          }

          else
          {
            v134 = (((v174 * _S18) + (v175 * _S15)) + (v173 * _S19)) + v17;
          }

          v135 = v133 <= v19;
          v136 = (((v174 * _S22) + (v175 * _S20)) + (v173 * _S21)) + v17;
          if (!v135)
          {
            v134 = v19;
          }

          v137 = llroundf(v134);
          if (v136 < v17)
          {
            v138 = v17;
          }

          else
          {
            v138 = (((v174 * _S22) + (v175 * _S20)) + (v173 * _S21)) + v17;
          }

          v135 = v136 <= v19;
          v139 = (((v174 * _S5) + (v175 * _S3)) + (v173 * _S24)) + v17;
          if (!v135)
          {
            v138 = v19;
          }

          v140 = llroundf(v138);
          if (v139 < v17)
          {
            v141 = v17;
          }

          else
          {
            v141 = (((v174 * _S5) + (v175 * _S3)) + (v173 * _S24)) + v17;
          }

          v135 = v139 <= v19;
          v142 = (((v174 * _S6) + (v175 * _S16)) + (v173 * _S7)) + v17;
          if (!v135)
          {
            v141 = v19;
          }

          v143 = llroundf(v141);
          if (v142 < v17)
          {
            v144 = v17;
          }

          else
          {
            v144 = (((v174 * _S6) + (v175 * _S16)) + (v173 * _S7)) + v17;
          }

          if (v142 <= v19)
          {
            v145 = v144;
          }

          else
          {
            v145 = v19;
          }

          v146 = ((_S15 + _S20) + _S3) + _S16;
          v147 = ((_S18 + _S22) + _S5) + _S6;
          *v34 = v137;
          v34[1] = v140;
          *v42 = v143;
          v42[1] = llroundf(v145);
          v148 = ((_S19 + _S21) + _S24) + _S7;
          v149 = ((v177 + (v146 * v172)) + (v147 * v171)) + (v148 * v170);
          v150 = v176;
          if (v149 <= v176)
          {
            v150 = ((v177 + (v146 * v172)) + (v147 * v171)) + (v148 * v170);
            if (v149 < v178)
            {
              v150 = v178;
            }
          }

          v151 = ((v177 + (v146 * v169)) + (v147 * v168)) + (v148 * v166);
          *(v36 + v40) = llroundf(v150);
          v152 = v176;
          if (v151 <= v176)
          {
            v152 = v151;
            if (v151 < v178)
            {
              v152 = v178;
            }
          }

          *(v36 + v40 + 1) = llroundf(v152);
          v24 = v156;
          v25 = v157;
          v27 = v154;
          v26 = v155;
          if (v33)
          {
            v153 = vbic_s8(vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vrev16_s8(v44))), vdupq_n_s32(0x3B7F00FFu))))), vceqd_s64(v33, 0));
            *v33 = v153.i8[2];
            v33[1] = v153.i8[4];
            v33 += 2;
            *v41 = v153.i8[0];
            v41[1] = v153.i8[6];
            v41 += 2;
          }

          v35 += 8;
          v43 += 8;
          v34 += 2;
          v42 += 2;
          v40 += 2;
        }

        while (v40 < v8);
      }

      v35 = &v37[v9];
      v34 = &v38[v12];
      v36 += v13;
      v33 = &v39[v14];
      v6 += 2;
    }

    while (v6 < v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_TRC_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = 2 * *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = 2 * ((v9 + v9 * a2) / v8 - v10);
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
    v21 = 8191.0 / *(v13 + 128);
    LOWORD(a5) = *(v13 + 144);
    v22 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 146);
    *&v23 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 148);
    v24 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 150);
    v136 = LODWORD(a6);
    v137 = LODWORD(a8);
    LOWORD(v23) = *(v13 + 152);
    v134 = *(v13 + 36);
    v135 = v23;
    v132 = *(v13 + 44);
    v133 = *(v13 + 40);
    v130 = *(v13 + 52) * 0.25;
    v131 = *(v13 + 48) * 0.25;
    v128 = *(v13 + 60) * 0.25;
    v129 = *(v13 + 56) * 0.25;
    v25 = *(v13 + 72);
    v126 = *(v13 + 68) * 0.25;
    v127 = *(v13 + 64) * 0.25;
    v26 = *(v13 + 76);
    v27 = *(v13 + 80);
    v28 = *(v13 + 84);
    v29 = *(v13 + 88);
    v30 = *(v13 + 92);
    v31 = *(v13 + 96);
    v33 = *(v13 + 100);
    v32 = *(v13 + 104);
    v34 = v13 + 164;
    v35 = v13 + 16548;
    v36 = *(result + 14);
    v37 = *(result + 15) + 2 * v10;
    v38 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
    v40 = v16[1];
    v39 = v16[2];
    _ZF = v39 == 0;
    v42 = (v39 + v20 * v37 + v36);
    if (_ZF)
    {
      v42 = 0;
    }

    v43 = (*v16 + v18 * v37 + v36);
    v44 = (**(result + 7) + v38 * v15 + 8 * *(result + 36));
    v45 = v40 + v19 * (v37 / 2) + v36;
    do
    {
      v46 = v44 + v15;
      v47 = &v43[v18];
      v48 = &v42[v20];
      if (v14 >= 1)
      {
        v49 = 0;
        v50 = &v42[v20];
        v51 = &v43[v18];
        v52 = (v44 + v15);
        do
        {
          if (v42)
          {
            v53.i16[0] = *v52;
            v53.i16[1] = *v44;
            v53.i16[2] = v44[4];
            v53.i16[3] = v52[4];
            v54 = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vrev16_s8(v53))), vdupq_n_s32(0x3B7F00FFu)))));
          }

          else
          {
            v54 = 0;
          }

          _H18 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          _H21 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[6]) >> 16), 0.0), 8191.0)));
          _H24 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v44[7]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S24, H24
          }

          _H11 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S13, H13 }

          _H14 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H14 }

          _H15 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[6]) >> 16), 0.0), 8191.0)));
          _H5 = *(v34 + 2 * llroundf(fminf(fmaxf(v21 * (bswap32(v52[7]) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S15, H15
            FCVT            S5, H5
          }

          _S3 = ((v26 * _S19) + (_S18 * v25)) + (_S20 * v27);
          _S7 = ((v29 * _S19) + (_S18 * v28)) + (_S20 * v30);
          v84 = ((v33 * _S19) + (_S18 * v31)) + (_S20 * v32);
          v85 = ((v26 * _S22) + (_S21 * v25)) + (_S24 * v27);
          v86 = ((v29 * _S22) + (_S21 * v28)) + (_S24 * v30);
          v87 = ((v33 * _S22) + (_S21 * v31)) + (_S24 * v32);
          v88 = ((v26 * _S12) + (_S11 * v25)) + (_S13 * v27);
          v89 = ((v29 * _S12) + (_S11 * v28)) + (_S13 * v30);
          v90 = ((v33 * _S12) + (_S11 * v31)) + (_S13 * v32);
          v91 = ((v26 * _S15) + (_S14 * v25)) + (_S5 * v27);
          v92 = ((v29 * _S15) + (_S14 * v28)) + (_S5 * v30);
          _S5 = ((v33 * _S15) + (_S14 * v31)) + (_S5 * v32);
          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S13, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S12, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          LOWORD(_S7) = *(v35 + 2 * llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm
          {
            FCVT            S18, H3
            FCVT            S15, H7
          }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S24, H3 }

          LOWORD(_S3) = *(v35 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          LOWORD(_S5) = *(v35 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S22, H5
          }

          v106 = (((v133 * _S11) + (v134 * _S13)) + (v132 * _S12)) + v22;
          if (v106 < v22)
          {
            v107 = v22;
          }

          else
          {
            v107 = (((v133 * _S11) + (v134 * _S13)) + (v132 * _S12)) + v22;
          }

          v108 = v106 <= v24;
          v109 = (((v133 * _S18) + (v134 * _S14)) + (v132 * _S15)) + v22;
          if (!v108)
          {
            v107 = v24;
          }

          v110 = llroundf(v107);
          if (v109 < v22)
          {
            v111 = v22;
          }

          else
          {
            v111 = (((v133 * _S18) + (v134 * _S14)) + (v132 * _S15)) + v22;
          }

          v108 = v109 <= v24;
          v112 = (((v133 * _S20) + (v134 * _S21)) + (v132 * _S19)) + v22;
          if (!v108)
          {
            v111 = v24;
          }

          v113 = llroundf(v111);
          if (v112 < v22)
          {
            v114 = v22;
          }

          else
          {
            v114 = (((v133 * _S20) + (v134 * _S21)) + (v132 * _S19)) + v22;
          }

          v108 = v112 <= v24;
          v115 = (((v133 * _S3) + (v134 * _S24)) + (v132 * _S22)) + v22;
          if (!v108)
          {
            v114 = v24;
          }

          v116 = llroundf(v114);
          if (v115 < v22)
          {
            v117 = v22;
          }

          else
          {
            v117 = (((v133 * _S3) + (v134 * _S24)) + (v132 * _S22)) + v22;
          }

          if (v115 <= v24)
          {
            v118 = v117;
          }

          else
          {
            v118 = v24;
          }

          v119 = ((_S13 + _S14) + _S21) + _S24;
          v120 = ((_S11 + _S18) + _S20) + _S3;
          *v43 = v110;
          v43[1] = v113;
          *v51 = v116;
          v51[1] = llroundf(v118);
          v121 = ((_S12 + _S15) + _S19) + _S22;
          v122 = ((v136 + (v119 * v131)) + (v120 * v130)) + (v121 * v129);
          v123 = v135;
          if (v122 <= v135)
          {
            v123 = ((v136 + (v119 * v131)) + (v120 * v130)) + (v121 * v129);
            if (v122 < v137)
            {
              v123 = v137;
            }
          }

          v124 = ((v136 + (v119 * v128)) + (v120 * v127)) + (v121 * v126);
          *(v45 + v49) = llroundf(v123);
          v125 = v135;
          if (v124 <= v135)
          {
            v125 = v124;
            if (v124 < v137)
            {
              v125 = v137;
            }
          }

          *(v45 + v49 + 1) = llroundf(v125);
          if (v42)
          {
            *v42 = v54.i8[2];
            v42[1] = v54.i8[4];
            v42 += 2;
            *v50 = v54.i8[0];
            v50[1] = v54.i8[6];
            v50 += 2;
          }

          v44 += 8;
          v52 += 8;
          v43 += 2;
          v51 += 2;
          v49 += 2;
        }

        while (v49 < v14);
      }

      v44 = &v46[v15];
      v43 = &v47[v18];
      v45 += v19;
      v42 = &v48[v20];
      v12 += 2;
    }

    while (v12 < v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_rgb_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_rgb_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v8 = 2 * *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = 2 * ((v9 + v9 * a2) / v8 - v10);
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
    *&v21 = *(v13 + 136);
    v22 = *&v21 / *(v13 + 128);
    LOWORD(v21) = *(v13 + 144);
    v23 = v21;
    LOWORD(a5) = *(v13 + 146);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v13 + 148);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v13 + 150);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 152);
    v27 = LODWORD(a8);
    v28 = *(v13 + 36);
    v29 = *(v13 + 40);
    v30 = *(v13 + 44);
    v82 = *(v13 + 48) * 0.25;
    v31 = *(v13 + 52) * 0.25;
    v32 = *(v13 + 56) * 0.25;
    v33 = *(v13 + 60) * 0.25;
    v34 = *(v13 + 64) * 0.25;
    v35 = *(v13 + 68) * 0.25;
    v36 = *(result + 14);
    v37 = *(result + 15) + 2 * v10;
    v38 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
    v39 = v16[2];
    v40 = v39 == 0;
    v41 = (v39 + v20 * v37 + v36);
    if (v40)
    {
      v41 = 0;
    }

    v42 = (*v16 + v18 * v37 + v36);
    v43 = (**(result + 7) + v38 * v15 + 8 * *(result + 36));
    v44 = v16[1] + v19 * (v37 / 2) + v36;
    do
    {
      v45 = v43 + v15;
      v46 = &v42[v18];
      v47 = &v41[v20];
      if (v14 >= 1)
      {
        v48 = 0;
        v49 = &v41[v20];
        v50 = &v42[v18];
        v51 = (v43 + v15);
        do
        {
          if (v41)
          {
            v52.i16[0] = *v51;
            v52.i16[1] = *v43;
            v52.i16[2] = v43[4];
            v52.i16[3] = v51[4];
            v53 = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(vrev16_s8(v52))), vdupq_n_s32(0x3B7F00FFu)))));
          }

          else
          {
            v53 = 0;
          }

          v54 = v22 * (bswap32(v43[1]) >> 16);
          v55 = v22 * (bswap32(v43[2]) >> 16);
          v56 = v22 * (bswap32(v43[3]) >> 16);
          v57 = v22 * (bswap32(v43[5]) >> 16);
          v58 = v22 * (bswap32(v43[6]) >> 16);
          v59 = v22 * (bswap32(v43[7]) >> 16);
          v60 = v22 * (bswap32(v51[1]) >> 16);
          v61 = v22 * (bswap32(v51[2]) >> 16);
          v62 = v22 * (bswap32(v51[3]) >> 16);
          v63 = v22 * (bswap32(v51[5]) >> 16);
          v64 = v22 * (bswap32(v51[6]) >> 16);
          v65 = v22 * (bswap32(v51[7]) >> 16);
          v66 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
          v67 = (((v29 * v58) + (v28 * v57)) + (v30 * v59)) + v23;
          v68 = (((v29 * v61) + (v28 * v60)) + (v30 * v62)) + v23;
          v69 = (((v29 * v64) + (v28 * v63)) + (v30 * v65)) + v23;
          if (v66 < v23)
          {
            v70 = v23;
          }

          else
          {
            v70 = (((v29 * v55) + (v28 * v54)) + (v30 * v56)) + v23;
          }

          if (v66 > v25)
          {
            v70 = v25;
          }

          v71 = llroundf(v70);
          if (v67 < v23)
          {
            v72 = v23;
          }

          else
          {
            v72 = (((v29 * v58) + (v28 * v57)) + (v30 * v59)) + v23;
          }

          if (v67 > v25)
          {
            v72 = v25;
          }

          *v42 = v71;
          v42[1] = llroundf(v72);
          if (v68 < v23)
          {
            v73 = v23;
          }

          else
          {
            v73 = (((v29 * v61) + (v28 * v60)) + (v30 * v62)) + v23;
          }

          if (v68 > v25)
          {
            v73 = v25;
          }

          *v50 = llroundf(v73);
          if (v69 < v23)
          {
            v74 = v23;
          }

          else
          {
            v74 = (((v29 * v64) + (v28 * v63)) + (v30 * v65)) + v23;
          }

          if (v69 > v25)
          {
            v74 = v25;
          }

          v50[1] = llroundf(v74);
          v75 = ((v54 + v57) + v60) + v63;
          v76 = ((v55 + v58) + v61) + v64;
          v77 = ((v56 + v59) + v62) + v65;
          v78 = ((v24 + (v75 * v82)) + (v76 * v31)) + (v77 * v32);
          v79 = v27;
          if (v78 <= v27)
          {
            v79 = ((v24 + (v75 * v82)) + (v76 * v31)) + (v77 * v32);
            if (v78 < v26)
            {
              v79 = v26;
            }
          }

          v80 = ((v24 + (v75 * v33)) + (v76 * v34)) + (v77 * v35);
          *(v44 + v48) = llroundf(v79);
          v81 = v27;
          if (v80 <= v27)
          {
            v81 = v80;
            if (v80 < v26)
            {
              v81 = v26;
            }
          }

          *(v44 + v48 + 1) = llroundf(v81);
          if (v41)
          {
            *v41 = v53.i8[2];
            v41[1] = v53.i8[4];
            v41 += 2;
            *v49 = v53.i8[0];
            v49[1] = v53.i8[6];
            v49 += 2;
          }

          v43 += 8;
          v51 += 8;
          v42 += 2;
          v50 += 2;
          v48 += 2;
        }

        while (v48 < v14);
      }

      v43 = &v45[v15];
      v42 = &v46[v18];
      v44 += v19;
      v41 = &v47[v20];
      v12 += 2;
    }

    while (v12 < v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 8 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((*v61 * v45 + 2 * (v39 + v31)) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && v61[1] * ((v40 + v37 + 1) / 2 - 1) + 4 * ((v46 + 1 + ((v46 + 1) >> 63)) >> 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (2 * v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
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
    v18 = 8191.0 / *(v11 + 128);
    LOWORD(a5) = *(v11 + 144);
    v19 = LODWORD(a5);
    LOWORD(a6) = *(v11 + 146);
    v20 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 148);
    v21 = LODWORD(a6);
    LOWORD(a6) = *(v11 + 150);
    v22 = LODWORD(a6);
    v178 = v22;
    LOWORD(v22) = *(v11 + 152);
    v174 = *(v11 + 40);
    v175 = *(v11 + 36);
    v173 = *(v11 + 44);
    v171 = *(v11 + 52) * 0.25;
    v172 = *(v11 + 48) * 0.25;
    v169 = *(v11 + 60) * 0.25;
    v170 = *(v11 + 56) * 0.25;
    v167 = *(v11 + 72);
    v168 = *(v11 + 64) * 0.25;
    v165 = *(v11 + 76);
    v166 = *(v11 + 68) * 0.25;
    v163 = *(v11 + 84);
    v164 = *(v11 + 80);
    v161 = *(v11 + 92);
    v162 = *(v11 + 88);
    v159 = *(v11 + 100);
    v160 = *(v11 + 96);
    v158 = *(v11 + 104);
    v23 = v11 + 164;
    v24 = v11 + 16548;
    v25 = v11 + 32932;
    v26 = *(v11 + 108);
    v27 = *(v11 + 112);
    v28 = *(v11 + 116);
    v29 = *(v11 + 120);
    v30 = *(result + 14);
    v31 = *(result + 15) + 2 * v8;
    v32 = *v14;
    v33 = v14[1];
    v34 = (v32 + v16 * v31 + 2 * v30);
    v35 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v6)) * v13 + 8 * *(result + 36));
    LODWORD(v11) = *(v11 + 132);
    v36 = 16 - v11;
    if (v11 >= 0x11)
    {
      v36 = 0;
    }

    v37 = v33 + v17 * (v31 / 2) + 2 * v30;
    v38 = v36;
    v176 = LODWORD(v22);
    v177 = v20;
    v156 = v26;
    v157 = v27;
    v155 = v28;
    do
    {
      v39 = v35 + v13;
      v40 = &v34[v16];
      if (v12 >= 1)
      {
        v41 = 0;
        v42 = (v35 + v13);
        v43 = &v34[v16];
        do
        {
          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          v54 = fmaxf(_S14, fmaxf(_S15, _S18));
          v55 = (((v27 * _S15) + (v26 * _S14)) + (v28 * _S18)) + (v29 * v54);
          v56 = 8191.0;
          if (v55 <= 8191.0)
          {
            v56 = (((v27 * _S15) + (v26 * _S14)) + (v28 * _S18)) + (v29 * v54);
            if (v55 < 0.0)
            {
              v56 = 0.0;
            }
          }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v35[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          v63 = fmaxf(_S20, fmaxf(_S21, _S22));
          v64 = (((v27 * _S21) + (v26 * _S20)) + (v28 * _S22)) + (v29 * v63);
          v65 = 8191.0;
          if (v64 <= 8191.0)
          {
            v65 = (((v27 * _S21) + (v26 * _S20)) + (v28 * _S22)) + (v29 * v63);
            if (v64 < 0.0)
            {
              v65 = 0.0;
            }
          }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S5, H3 }

          _H3 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          _H6 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          v72 = (((v27 * _S3) + (v26 * _S5)) + (v28 * _S7)) + (v29 * fmaxf(_S5, fmaxf(_S3, _S7)));
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = v72;
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          _H6 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[5]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S17, H6 }

          _H6 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[6]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S23, H6 }

          _H6 = *(v23 + 2 * llroundf(fminf(fmaxf(v18 * (bswap32(v42[7]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S25, H6 }

          _H6 = *(v24 + 2 * llroundf(v56));
          __asm { FCVT            S19, H6 }

          v82 = _S14 * _S19;
          v83 = _S15 * _S19;
          v84 = _S18 * _S19;
          _H18 = *(v24 + 2 * llroundf(v65));
          __asm { FCVT            S19, H18 }

          v87 = _S20 * _S19;
          v88 = _S21 * _S19;
          v89 = _S22 * _S19;
          _H16 = *(v24 + 2 * llroundf(v73));
          __asm { FCVT            S21, H16 }

          v92 = _S5 * _S21;
          v93 = _S3 * _S21;
          v94 = _S7 * _S21;
          v95 = (((v27 * _S23) + (v26 * _S17)) + (v28 * _S25)) + (v29 * fmaxf(_S17, fmaxf(_S23, _S25)));
          v96 = 8191.0;
          if (v95 <= 8191.0)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          _H7 = *(v24 + 2 * llroundf(v96));
          __asm { FCVT            S7, H7 }

          v99 = _S17 * _S7;
          v100 = _S23 * _S7;
          v101 = _S25 * _S7;
          v102 = ((v165 * v83) + (v82 * v167)) + (v84 * v164);
          v103 = ((v162 * v83) + (v82 * v163)) + (v84 * v161);
          _S6 = ((v159 * v83) + (v82 * v160)) + (v84 * v158);
          v105 = ((v165 * v88) + (v87 * v167)) + (v89 * v164);
          v106 = ((v162 * v88) + (v87 * v163)) + (v89 * v161);
          v107 = ((v159 * v88) + (v87 * v160)) + (v89 * v158);
          v108 = ((v165 * v93) + (v92 * v167)) + (v94 * v164);
          v109 = ((v162 * v93) + (v92 * v163)) + (v94 * v161);
          _S3 = ((v159 * v93) + (v92 * v160)) + (v94 * v158);
          v111 = ((v165 * v100) + (v99 * v167)) + (v101 * v164);
          v112 = ((v162 * v100) + (v99 * v163)) + (v101 * v161);
          v113 = ((v159 * v100) + (v99 * v160)) + (v101 * v158);
          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v102, 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          LOWORD(_S6) = *(v25 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm
          {
            FCVT            S20, H5
            FCVT            S21, H6
          }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm { FCVT            S24, H5 }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S22, H5 }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v25 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S3) = *(v25 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          LOWORD(_S6) = *(v25 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          __asm
          {
            FCVT            S14, H3
            FCVT            S7, H6
          }

          LOWORD(_S3) = *(v25 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          __asm { FCVT            S16, H3 }

          LOWORD(_S3) = *(v25 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          v133 = (((v174 * _S19) + (v175 * _S18)) + (v173 * _S20)) + v19;
          if (v133 < v19)
          {
            v134 = v19;
          }

          else
          {
            v134 = (((v174 * _S19) + (v175 * _S18)) + (v173 * _S20)) + v19;
          }

          v135 = v133 <= v21;
          v136 = (((v174 * _S24) + (v175 * _S21)) + (v173 * _S22)) + v19;
          if (!v135)
          {
            v134 = v21;
          }

          v137 = llroundf(v134);
          if (v136 < v19)
          {
            v138 = v19;
          }

          else
          {
            v138 = (((v174 * _S24) + (v175 * _S21)) + (v173 * _S22)) + v19;
          }

          v135 = v136 <= v21;
          v139 = (((v174 * _S5) + (v175 * _S15)) + (v173 * _S14)) + v19;
          if (!v135)
          {
            v138 = v21;
          }

          v140 = llroundf(v138);
          if (v139 < v19)
          {
            v141 = v19;
          }

          else
          {
            v141 = (((v174 * _S5) + (v175 * _S15)) + (v173 * _S14)) + v19;
          }

          v135 = v139 <= v21;
          v142 = (((v174 * _S16) + (v175 * _S7)) + (v173 * _S3)) + v19;
          if (!v135)
          {
            v141 = v21;
          }

          v143 = llroundf(v141);
          if (v142 < v19)
          {
            v144 = v19;
          }

          else
          {
            v144 = (((v174 * _S16) + (v175 * _S7)) + (v173 * _S3)) + v19;
          }

          if (v142 <= v21)
          {
            v145 = v144;
          }

          else
          {
            v145 = v21;
          }

          v146 = llroundf(v145);
          v147 = ((_S18 + _S21) + _S15) + _S7;
          v148 = ((_S19 + _S24) + _S5) + _S16;
          *v34 = v137 << v38;
          *(v34 + 1) = v140 << v38;
          *v43 = v143 << v38;
          *(v43 + 1) = v146 << v38;
          v149 = ((_S20 + _S22) + _S14) + _S3;
          v150 = ((v177 + (v147 * v172)) + (v148 * v171)) + (v149 * v170);
          v151 = v176;
          if (v150 <= v176)
          {
            v151 = ((v177 + (v147 * v172)) + (v148 * v171)) + (v149 * v170);
            if (v150 < v178)
            {
              v151 = v178;
            }
          }

          v152 = (v37 + 2 * v41);
          v153 = ((v177 + (v147 * v169)) + (v148 * v168)) + (v149 * v166);
          *v152 = llroundf(v151) << v38;
          v154 = v176;
          if (v153 <= v176)
          {
            v154 = v153;
            if (v153 < v178)
            {
              v154 = v178;
            }
          }

          v35 += 8;
          v42 += 8;
          v34 += 4;
          v43 += 4;
          v152[1] = llroundf(v154) << v38;
          v41 += 2;
          v26 = v156;
          v27 = v157;
          v28 = v155;
        }

        while (v41 < v12);
      }

      v35 = &v39[v13];
      v34 = &v40[v16];
      v37 += v17;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}