unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    LOWORD(a5) = *(v11 + 144);
    v15 = LODWORD(a5);
    v16 = *(v11 + 72);
    v17 = *(v11 + 76);
    v18 = *(v11 + 80);
    v19 = *(v11 + 84);
    v20 = *(v11 + 88);
    v21 = *(v11 + 92);
    v22 = *(v11 + 96);
    v23 = *(v11 + 100);
    v24 = *(v11 + 104);
    v25 = v7 + *(result + 15);
    v26 = *(result + 28) * a2 / v5 + *(result + 44);
    v27 = v11 + 16548;
    v28 = v11 + 164;
    v29 = **(result + 16) + v13 * v25 + 16 * *(result + 14);
    v30 = **(result + 7) + v26 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v31 = v10;
        v32 = v30;
        v33 = v29;
        do
        {
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S27, H25 }

          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v14 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S28, H25 }

          _H25 = *(v27 + 2 * llroundf(fminf(fmaxf(((v23 * _S27) + (_S26 * v22)) + (_S28 * v24), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v46 = v15 + _S25;
          v47 = (v15 + _S25) <= 1023.0;
          v48 = 1023.0;
          if (v47)
          {
            v48 = v46;
            if (v46 < 0.0)
            {
              v48 = 0.0;
            }
          }

          _H29 = *(v27 + 2 * llroundf(fminf(fmaxf(((v20 * _S27) + (_S26 * v19)) + (_S28 * v21), 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          v51 = v15 + _S29;
          v47 = (v15 + _S29) <= 1023.0;
          v52 = 1023.0;
          if (v47)
          {
            v52 = v51;
            if (v51 < 0.0)
            {
              v52 = 0.0;
            }
          }

          _H26 = *(v27 + 2 * llroundf(fminf(fmaxf(((v17 * _S27) + (_S26 * v16)) + (_S28 * v18), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          v55 = v15 + _S26;
          v47 = (v15 + _S26) <= 1023.0;
          v56 = 1023.0;
          if (v47)
          {
            v56 = v55;
            if (v55 < 0.0)
            {
              v56 = 0.0;
            }
          }

          v57 = *v32;
          v32 += 4;
          v58 = (bswap32(v57) >> 16) * 3.0 / 65535.0;
          v59 = llroundf(v48);
          v60 = llroundf(v52) << 10;
          v61 = llroundf(v56);
          v62 = llroundf(v58);
          if (v62 > 3.0)
          {
            v62 = 3.0;
          }

          *v33++ = v60 | v59 | (llroundf(v62) << 30) | (v61 << 20);
          --v31;
        }

        while (v31);
      }

      v30 += v12;
      v29 += v13;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_l10r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_l10r_GCD);
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

unsigned __int8 *vt_Copy_b64a_rgb_l10r_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
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
    v13 = *(v11 + 128);
    v14 = *(v11 + 136);
    LOWORD(a5) = *(v11 + 144);
    v15 = *(result + 28) * a2 / v5 + *(result + 44);
    v16 = **(result + 17);
    v17 = v14 / v13;
    v18 = LODWORD(a5);
    v19 = **(result + 16) + v16 * (v7 + *(result + 15)) + 16 * *(result + 14);
    v20 = **(result + 7) + v15 * v12 + 8 * *(result + 36);
    do
    {
      if (v10 >= 1)
      {
        v21 = v10;
        v22 = v20;
        v23 = v19;
        do
        {
          v24 = v22[1];
          v25 = v22[2];
          v26 = v22[3];
          v27 = *v22;
          v22 += 4;
          v28 = v17 * (bswap32(v24) >> 16);
          v29 = v17 * (bswap32(v25) >> 16);
          v30 = bswap32(v27) >> 16;
          v31 = (v17 * (bswap32(v26) >> 16)) + v18;
          if (v31 < 0.0)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = v31;
          }

          if (v31 <= 1023.0)
          {
            v34 = v32;
          }

          else
          {
            v34 = 1023.0;
          }

          v33 = v30 * 3.0 / 65535.0;
          v35 = llroundf(v33);
          v36 = llroundf(v34);
          v37 = v29 + v18;
          if (v37 < 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v37;
          }

          if (v37 <= 1023.0)
          {
            v39 = v38;
          }

          else
          {
            v39 = 1023.0;
          }

          v40 = llroundf(v39);
          v41 = v28 + v18;
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

          v44 = v35;
          v45 = llroundf(v43);
          if (v44 <= 3.0)
          {
            v46 = v44;
          }

          else
          {
            v46 = 3.0;
          }

          *v23++ = (v40 << 10) | v36 | (llroundf(v46) << 30) | (v45 << 20);
          --v21;
        }

        while (v21);
      }

      v20 += v12;
      v19 += v16;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = v8 + 16548;
    v21 = *(result + 28) * a2 / v2 + *(result + 44);
    v22 = v8 + 32932;
    v23 = *(v8 + 104);
    v24 = *(v8 + 108);
    v25 = *(v8 + 112);
    v26 = *(v8 + 116);
    v27 = *(v8 + 120);
    v28 = v8 + 164;
    v29 = **(result + 16) + v10 * (v4 + *(result + 15)) + 8 * *(result + 14);
    v30 = **(result + 7) + v21 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v30;
        v33 = v29;
        do
        {
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v44 = (((v25 * _S26) + (v24 * _S25)) + (v26 * _S28)) + (v27 * fmaxf(_S25, fmaxf(_S26, _S28)));
          v45 = 8191.0;
          if (v44 <= 8191.0)
          {
            v45 = v44;
            if (v44 < 0.0)
            {
              v45 = 0.0;
            }
          }

          _H27 = *(v20 + 2 * llroundf(v45));
          __asm { FCVT            S29, H27 }

          v48 = _S25 * _S29;
          v49 = _S26 * _S29;
          v50 = _S28 * _S29;
          LOWORD(_S29) = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * v49) + (v48 * v12)) + ((_S28 * _S29) * v14), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v52 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v52 = _S30;
            if (_NF)
            {
              v52 = 0.0;
            }
          }

          v54 = *v32;
          v55 = ((v16 * v49) + (v48 * v15)) + (v50 * v17);
          v56 = ((v19 * v49) + (v48 * v18)) + (v50 * v23);
          _H26 = *(v22 + 2 * llroundf(fminf(fmaxf(v55, 0.0), 8191.0)));
          _H25 = *(v22 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          __asm { FCVT            S29, H26 }

          *v33 = llroundf(v52);
          v60 = 65535.0;
          if (_S29 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v60 = _S29;
            if (_NF)
            {
              v60 = 0.0;
            }
          }

          __asm { FCVT            S28, H25 }

          v33[1] = llroundf(v60);
          v63 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v63 = _S28;
            if (_NF)
            {
              v63 = 0.0;
            }
          }

          v32 += 4;
          v33[2] = llroundf(v63);
          v33[3] = bswap32(v54) >> 16;
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v30 += v9;
      v29 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_l64r_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = *(v8 + 104);
    v21 = v4 + *(result + 15);
    v22 = *(result + 28) * a2 / v2 + *(result + 44);
    v23 = v8 + 16548;
    v24 = v8 + 164;
    v25 = **(result + 16) + v10 * v21 + 8 * *(result + 14);
    v26 = **(result + 7) + v22 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v27 = v7;
        v28 = v26;
        v29 = v25;
        do
        {
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(((v13 * _S22) + (_S21 * v12)) + (_S23 * v14), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v42 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v42 = _S26;
            if (_NF)
            {
              v42 = 0.0;
            }
          }

          v44 = *v28;
          v45 = ((v16 * _S22) + (_S21 * v15)) + (_S23 * v17);
          v46 = ((v19 * _S22) + (_S21 * v18)) + (_S23 * v20);
          _H22 = *(v23 + 2 * llroundf(fminf(fmaxf(v45, 0.0), 8191.0)));
          _H21 = *(v23 + 2 * llroundf(fminf(fmaxf(v46, 0.0), 8191.0)));
          __asm { FCVT            S25, H22 }

          *v29 = llroundf(v42);
          v50 = 65535.0;
          if (_S25 <= 65535.0)
          {
            __asm { FCMP            H22, #0 }

            v50 = _S25;
            if (_NF)
            {
              v50 = 0.0;
            }
          }

          __asm { FCVT            S24, H21 }

          v29[1] = llroundf(v50);
          v53 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H21, #0 }

            v53 = _S24;
            if (_NF)
            {
              v53 = 0.0;
            }
          }

          v28 += 4;
          v29[2] = llroundf(v53);
          v29[3] = bswap32(v44) >> 16;
          v29 += 4;
          --v27;
        }

        while (v27);
      }

      v26 += v9;
      v25 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_l64r(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_l64r_GCD);
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

unsigned __int8 *vt_Copy_b64a_rgb_l64r_GCD(unsigned __int8 *result, uint64_t a2)
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
    v10 = *(v8 + 128);
    v11 = *(v8 + 136);
    v12 = *(result + 28) * a2 / v2 + *(result + 44);
    v13 = **(result + 17);
    v14 = v11 / v10;
    v15 = **(result + 16) + v13 * (v4 + *(result + 15)) + 8 * *(result + 14);
    v16 = **(result + 7) + v12 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v17 = v7;
        v18 = v16;
        v19 = v15;
        do
        {
          v20 = bswap32(v18[1]);
          v21 = v14 * HIWORD(v20);
          v22 = 65535.0;
          if (v21 <= 65535.0)
          {
            v22 = v14 * HIWORD(v20);
            if (v21 < 0.0)
            {
              v22 = 0.0;
            }
          }

          v23 = v18[3];
          v24 = *v18;
          v25 = v14 * (bswap32(v18[2]) >> 16);
          *v19 = llroundf(v22);
          v26 = 65535.0;
          if (v25 <= 65535.0)
          {
            v26 = v25;
            if (v25 < 0.0)
            {
              v26 = 0.0;
            }
          }

          v27 = v14 * (bswap32(v23) >> 16);
          v19[1] = llroundf(v26);
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = v27;
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v18 += 4;
          v19[2] = llroundf(v28);
          v19[3] = bswap32(v24) >> 16;
          v19 += 4;
          --v17;
        }

        while (v17);
      }

      v16 += v9;
      v15 += v13;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = v8 + 16548;
    v21 = *(result + 28) * a2 / v2 + *(result + 44);
    v22 = v8 + 32932;
    v23 = *(v8 + 104);
    v24 = *(v8 + 108);
    v25 = *(v8 + 112);
    v26 = *(v8 + 116);
    v27 = *(v8 + 120);
    v28 = v8 + 164;
    v29 = **(result + 16) + v10 * (v4 + *(result + 15)) + 8 * *(result + 14);
    v30 = **(result + 7) + v21 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v30;
        v33 = v29;
        do
        {
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          _H26 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S29, H26 }

          v44 = (((v25 * _S27) + (v24 * _S25)) + (v26 * _S29)) + (v27 * fmaxf(_S25, fmaxf(_S27, _S29)));
          v45 = 8191.0;
          if (v44 <= 8191.0)
          {
            v45 = v44;
            if (v44 < 0.0)
            {
              v45 = 0.0;
            }
          }

          _H26 = *(v20 + 2 * llroundf(v45));
          __asm { FCVT            S30, H26 }

          v48 = _S25 * _S30;
          v49 = _S27 * _S30;
          v50 = _S29 * _S30;
          _H29 = *(v22 + 2 * llroundf(fminf(fmaxf(((v13 * v49) + ((_S25 * _S30) * v12)) + ((_S29 * _S30) * v14), 0.0), 8191.0)));
          __asm { FCVT            S30, H29 }

          v53 = 65535.0;
          if (_S30 <= 65535.0)
          {
            __asm { FCMP            H29, #0 }

            v53 = _S30;
            if (_NF)
            {
              v53 = 0.0;
            }
          }

          _H30 = *(v22 + 2 * llroundf(fminf(fmaxf(((v16 * v49) + (v48 * v15)) + (v50 * v17), 0.0), 8191.0)));
          __asm { FCVT            S31, H30 }

          v57 = 65535.0;
          if (_S31 <= 65535.0)
          {
            __asm { FCMP            H30, #0 }

            v57 = _S31;
            if (_NF)
            {
              v57 = 0.0;
            }
          }

          _H27 = *(v22 + 2 * llroundf(fminf(fmaxf(((v19 * v49) + (v48 * v18)) + (v50 * v23), 0.0), 8191.0)));
          __asm { FCVT            S28, H27 }

          v61 = 65535.0;
          if (_S28 <= 65535.0)
          {
            __asm { FCMP            H27, #0 }

            v61 = _S28;
            if (_NF)
            {
              v61 = 0.0;
            }
          }

          v63 = *v32;
          v32 += 4;
          *v33 = v63;
          v33[1] = __rev16(llroundf(v53));
          v33[2] = __rev16(llroundf(v57));
          v33[3] = __rev16(llroundf(v61));
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v30 += v9;
      v29 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_b64a_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = *(v8 + 104);
    v21 = v4 + *(result + 15);
    v22 = *(result + 28) * a2 / v2 + *(result + 44);
    v23 = v8 + 16548;
    v24 = v8 + 164;
    v25 = **(result + 16) + v10 * v21 + 8 * *(result + 14);
    v26 = **(result + 7) + v22 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v27 = v7;
        v28 = v26;
        v29 = v25;
        do
        {
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H21 }

          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S23, H21 }

          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v28[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S24, H21 }

          _H25 = *(v23 + 2 * llroundf(fminf(fmaxf(((v13 * _S23) + (_S22 * v12)) + (_S24 * v14), 0.0), 8191.0)));
          __asm { FCVT            S26, H25 }

          v42 = 65535.0;
          if (_S26 <= 65535.0)
          {
            __asm { FCMP            H25, #0 }

            v42 = _S26;
            if (_NF)
            {
              v42 = 0.0;
            }
          }

          _H26 = *(v23 + 2 * llroundf(fminf(fmaxf(((v16 * _S23) + (_S22 * v15)) + (_S24 * v17), 0.0), 8191.0)));
          __asm { FCVT            S27, H26 }

          v46 = 65535.0;
          if (_S27 <= 65535.0)
          {
            __asm { FCMP            H26, #0 }

            v46 = _S27;
            if (_NF)
            {
              v46 = 0.0;
            }
          }

          _H23 = *(v23 + 2 * llroundf(fminf(fmaxf(((v19 * _S23) + (_S22 * v18)) + (_S24 * v20), 0.0), 8191.0)));
          __asm { FCVT            S24, H23 }

          v50 = 65535.0;
          if (_S24 <= 65535.0)
          {
            __asm { FCMP            H23, #0 }

            v50 = _S24;
            if (_NF)
            {
              v50 = 0.0;
            }
          }

          v52 = *v28;
          v28 += 4;
          *v29 = v52;
          v29[1] = __rev16(llroundf(v42));
          v29[2] = __rev16(llroundf(v46));
          v29[3] = __rev16(llroundf(v50));
          v29 += 4;
          --v27;
        }

        while (v27);
      }

      v26 += v9;
      v25 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_b64a(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_b64a_GCD);
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

unsigned __int8 *vt_Copy_b64a_rgb_b64a_GCD(unsigned __int8 *result, uint64_t a2)
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
    v10 = *(v8 + 128);
    v11 = *(v8 + 136);
    v12 = *(result + 28) * a2 / v2 + *(result + 44);
    v13 = **(result + 17);
    v14 = v11 / v10;
    v15 = **(result + 16) + v13 * (v4 + *(result + 15)) + 8 * *(result + 14);
    v16 = **(result + 7) + v12 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v17 = v7;
        v18 = v16;
        v19 = v15;
        do
        {
          v20 = bswap32(v18[1]);
          v21 = v14 * HIWORD(v20);
          v22 = 65535.0;
          if (v21 <= 65535.0)
          {
            v22 = v14 * HIWORD(v20);
            if (v21 < 0.0)
            {
              v22 = 0.0;
            }
          }

          v23 = bswap32(v18[2]);
          v24 = v14 * HIWORD(v23);
          v25 = 65535.0;
          if (v24 <= 65535.0)
          {
            v25 = v14 * HIWORD(v23);
            if (v24 < 0.0)
            {
              v25 = 0.0;
            }
          }

          v26 = bswap32(v18[3]);
          v27 = v14 * HIWORD(v26);
          v28 = 65535.0;
          if (v27 <= 65535.0)
          {
            v28 = v14 * HIWORD(v26);
            if (v27 < 0.0)
            {
              v28 = 0.0;
            }
          }

          v29 = *v18;
          v18 += 4;
          *v19 = v29;
          v19[1] = __rev16(llroundf(v22));
          v19[2] = __rev16(llroundf(v25));
          v19[3] = __rev16(llroundf(v28));
          v19 += 4;
          --v17;
        }

        while (v17);
      }

      v16 += v9;
      v15 += v13;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = v8 + 16548;
    v21 = *(result + 28) * a2 / v2 + *(result + 44);
    v22 = v8 + 32932;
    v23 = *(v8 + 104);
    v24 = *(v8 + 108);
    v25 = *(v8 + 112);
    v26 = *(v8 + 116);
    v27 = *(v8 + 120);
    v28 = v8 + 164;
    v29 = **(result + 16) + v10 * (v4 + *(result + 15)) + 8 * *(result + 14);
    v30 = **(result + 7) + v21 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v30;
        v33 = v29;
        do
        {
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v44 = (((v25 * _S26) + (v24 * _S25)) + (v26 * _S27)) + (v27 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v45 = 8191.0;
          if (v44 <= 8191.0)
          {
            v45 = v44;
            if (v44 < 0.0)
            {
              v45 = 0.0;
            }
          }

          v46 = *v32;
          v32 += 4;
          _H28 = *(v20 + 2 * llroundf(v45));
          __asm { FCVT            S28, H28 }

          v49 = _S25 * _S28;
          v50 = _S26 * _S28;
          v51 = _S27 * _S28;
          v52 = ((v13 * v50) + (v49 * v12)) + (v51 * v14);
          v53 = ((v16 * v50) + (v49 * v15)) + (v51 * v17);
          _S25 = ((v19 * v50) + (v49 * v18)) + (v51 * v23);
          LOWORD(v50) = *(v22 + 2 * llroundf(fminf(fmaxf(v52, 0.0), 8191.0)));
          LOWORD(v51) = *(v22 + 2 * llroundf(fminf(fmaxf(v53, 0.0), 8191.0)));
          LOWORD(_S25) = *(v22 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          _S28 = (bswap32(v46) >> 16) * 0.000015259;
          *v33 = LOWORD(v50);
          v33[1] = LOWORD(v51);
          v33[2] = LOWORD(_S25);
          __asm { FCVT            H25, S28 }

          v33[3] = LOWORD(_S25);
          v33 += 4;
          --v31;
        }

        while (v31);
      }

      v30 += v9;
      v29 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = *(v8 + 104);
    v21 = v4 + *(result + 15);
    v22 = *(result + 28) * a2 / v2 + *(result + 44);
    v23 = v8 + 16548;
    v24 = v8 + 164;
    v25 = **(result + 16) + v10 * v21 + 8 * *(result + 14);
    v26 = **(result + 7) + v22 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v27 = v7;
        v28 = v26;
        v29 = v25;
        do
        {
          v30 = v28[2];
          v31 = v28[1];
          v32 = v28[3];
          v33 = *v28;
          v28 += 4;
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v31) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v30) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          v44 = ((v13 * _S22) + (_S21 * v12)) + (_S23 * v14);
          v45 = ((v16 * _S22) + (_S21 * v15)) + (_S23 * v17);
          _S21 = ((v19 * _S22) + (_S21 * v18)) + (_S23 * v20);
          LOWORD(_S22) = *(v23 + 2 * llroundf(fminf(fmaxf(v44, 0.0), 8191.0)));
          v47 = llroundf(fminf(fmaxf(_S21, 0.0), 8191.0));
          LOWORD(_S21) = *(v23 + 2 * llroundf(fminf(fmaxf(v45, 0.0), 8191.0)));
          LOWORD(_S23) = *(v23 + 2 * v47);
          _S24 = (bswap32(v33) >> 16) * 0.000015259;
          *v29 = LOWORD(_S22);
          v29[1] = LOWORD(_S21);
          v29[2] = LOWORD(_S23);
          __asm { FCVT            H21, S24 }

          v29[3] = LOWORD(_S21);
          v29 += 4;
          --v27;
        }

        while (v27);
      }

      v26 += v9;
      v25 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_RGhA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_RGhA_GCD);
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

unsigned __int8 *vt_Copy_b64a_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, int32x2_t a4)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = **(result + 8);
    v11 = *(result + 28) * a2 / v4 + *(result + 44);
    v12 = **(result + 17);
    v13 = **(result + 16) + v12 * (v6 + *(result + 15)) + 8 * *(result + 14);
    v14 = **(result + 7) + v11 * v10 + 8 * *(result + 36);
    a4.i32[0] = 931135616;
    v15 = vdupq_lane_s32(a4, 0);
    *v15.i32 = 1.0 / *(*(result + 19) + 128);
    v16 = vdupq_lane_s32(*v15.i8, 0);
    v16.i32[0] = 931135616;
    do
    {
      if (v9 >= 1)
      {
        v17 = v9;
        v18 = v14;
        v19 = v13;
        do
        {
          v20 = *v18++;
          v21 = vcvt_f16_f32(vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(vrev16_s8(v20)))));
          *v19++ = vext_s8(v21, v21, 2uLL);
          --v17;
        }

        while (v17);
      }

      v14 += v10;
      v13 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Tone_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = v8 + 16548;
    v21 = *(result + 28) * a2 / v2 + *(result + 44);
    v22 = v8 + 32932;
    v23 = *(v8 + 104);
    v24 = *(v8 + 108);
    v25 = *(v8 + 112);
    v26 = *(v8 + 116);
    v27 = *(v8 + 120);
    v28 = v8 + 164;
    v29 = **(result + 16) + v10 * (v4 + *(result + 15)) + 16 * *(result + 14);
    v30 = **(result + 7) + v21 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v31 = v7;
        v32 = v30;
        v33 = v29;
        do
        {
          _H25 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[1]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          _H26 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[2]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S26, H26 }

          _H27 = *(v28 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32[3]) >> 16), 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          v44 = (((v25 * _S26) + (v24 * _S25)) + (v26 * _S27)) + (v27 * fmaxf(_S25, fmaxf(_S26, _S27)));
          v45 = 8191.0;
          if (v44 <= 8191.0)
          {
            v45 = v44;
            if (v44 < 0.0)
            {
              v45 = 0.0;
            }
          }

          v46 = *v32;
          v32 += 4;
          _H28 = *(v20 + 2 * llroundf(v45));
          __asm { FCVT            S28, H28 }

          v49 = _S25 * _S28;
          _S26 = _S26 * _S28;
          _S27 = _S27 * _S28;
          v52 = ((v13 * _S26) + (v49 * v12)) + (_S27 * v14);
          v53 = ((v16 * _S26) + (v49 * v15)) + (_S27 * v17);
          _S25 = ((v19 * _S26) + (v49 * v18)) + (_S27 * v23);
          LOWORD(_S26) = *(v22 + 2 * llroundf(fminf(fmaxf(v52, 0.0), 8191.0)));
          LOWORD(_S27) = *(v22 + 2 * llroundf(fminf(fmaxf(v53, 0.0), 8191.0)));
          __asm
          {
            FCVT            S26, H26
            FCVT            S27, H27
          }

          LOWORD(_S25) = *(v22 + 2 * llroundf(fminf(fmaxf(_S25, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          *v33 = _S26;
          *(v33 + 4) = _S27;
          *(v33 + 8) = _S25;
          *(v33 + 12) = (bswap32(v46) >> 16) * 0.000015259;
          v33 += 16;
          --v31;
        }

        while (v31);
      }

      v30 += v9;
      v29 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_TRC_Mat_TRC_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_TRC_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_b64a_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
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
    v11 = 8191.0 / *(v8 + 128);
    v12 = *(v8 + 72);
    v13 = *(v8 + 76);
    v14 = *(v8 + 80);
    v15 = *(v8 + 84);
    v16 = *(v8 + 88);
    v17 = *(v8 + 92);
    v18 = *(v8 + 96);
    v19 = *(v8 + 100);
    v20 = *(v8 + 104);
    v21 = v4 + *(result + 15);
    v22 = *(result + 28) * a2 / v2 + *(result + 44);
    v23 = v8 + 16548;
    v24 = v8 + 164;
    v25 = **(result + 16) + v10 * v21 + 16 * *(result + 14);
    v26 = **(result + 7) + v22 * v9 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v27 = v7;
        v28 = v26;
        v29 = v25;
        do
        {
          v30 = v28[1];
          v31 = v28[2];
          v32 = v28[3];
          v33 = *v28;
          v28 += 4;
          _H22 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v31) >> 16), 0.0), 8191.0)));
          _H23 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v30) >> 16), 0.0), 8191.0)));
          _H21 = *(v24 + 2 * llroundf(fminf(fmaxf(v11 * (bswap32(v32) >> 16), 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H23
            FCVT            S22, H22
            FCVT            S21, H21
          }

          v44 = ((v13 * _S22) + (_S23 * v12)) + (_S21 * v14);
          v45 = ((v16 * _S22) + (_S23 * v15)) + (_S21 * v17);
          v46 = ((v19 * _S22) + (_S23 * v18)) + (_S21 * v20);
          LOWORD(_S22) = *(v23 + 2 * llroundf(fminf(fmaxf(v44, 0.0), 8191.0)));
          LOWORD(_S23) = *(v23 + 2 * llroundf(fminf(fmaxf(v45, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          v48 = llroundf(fminf(fmaxf(v46, 0.0), 8191.0));
          __asm { FCVT            S21, H23 }

          LOWORD(_S23) = *(v23 + 2 * v48);
          __asm { FCVT            S23, H23 }

          *v29 = _S22;
          *(v29 + 4) = _S21;
          *(v29 + 8) = _S23;
          *(v29 + 12) = (bswap32(v33) >> 16) * 0.000015259;
          v29 += 16;
          --v27;
        }

        while (v27);
      }

      v26 += v9;
      v25 += v10;
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_b64a_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
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
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_b64a_rgb_RGfA_GCD);
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

unsigned __int8 *vt_Copy_b64a_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, int32x2_t a4)
{
  v4 = *result;
  v5 = *(result + 13);
  v6 = v5 * a2 / v4;
  v7 = (v5 + v5 * a2) / v4 - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(result + 24);
    v10 = **(result + 8);
    v11 = *(result + 28) * a2 / v4 + *(result + 44);
    v12 = **(result + 17);
    v13 = **(result + 16) + v12 * (v6 + *(result + 15)) + 16 * *(result + 14);
    v14 = **(result + 7) + v11 * v10 + 8 * *(result + 36);
    a4.i32[0] = 931135616;
    v15 = vdupq_lane_s32(a4, 0);
    *v15.i32 = 1.0 / *(*(result + 19) + 128);
    v16 = vdupq_lane_s32(*v15.i8, 0);
    v16.i32[0] = 931135616;
    do
    {
      if (v9 >= 1)
      {
        v17 = v9;
        v18 = v14;
        v19 = v13;
        do
        {
          v20 = *v18++;
          v21 = vmulq_f32(v16, vcvtq_f32_u32(vmovl_u16(vrev16_s8(v20))));
          *v19++ = vextq_s8(v21, v21, 4uLL);
          --v17;
        }

        while (v17);
      }

      v14 += v10;
      v13 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

CFTypeRef VTImageRotationSessionRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void VTImageRotationSessionRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t VTImageRotationSessionCreate(const __CFAllocator *a1, int a2, VTPixelRotationSessionRef *pixelRotationSessionOut)
{
  if (a2 <= 179)
  {
    if (a2 && a2 != 90)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (!pixelRotationSessionOut)
    {
      return 0;
    }

    result = VTPixelRotationSessionCreate(a1, pixelRotationSessionOut);
    if (result)
    {
      return result;
    }

    switch(a2)
    {
      case 90:
        v6 = &kVTRotation_CW90;
        break;
      case 270:
        v6 = &kVTRotation_CCW90;
        break;
      case 180:
        v6 = &kVTRotation_180;
        break;
      default:
LABEL_20:
        VTSessionSetProperty(*pixelRotationSessionOut, @"EnableGPUAcceleratedTransfer", *MEMORY[0x1E695E4C0]);
        return 0;
    }

    if (*v6)
    {
      VTSessionSetProperty(*pixelRotationSessionOut, @"Rotation", *v6);
    }

    goto LABEL_20;
  }

  if (a2 == 180 || a2 == 270)
  {
    goto LABEL_7;
  }

LABEL_13:

  return FigSignalErrorAtGM();
}

uint64_t vtCopyPlane(char *__src, uint64_t a2, char *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a6;
    v12 = a7 * a5;
    do
    {
      memcpy(__dst, __src, v12);
      __src += a2;
      __dst += a4;
      --v7;
    }

    while (v7);
  }

  return 0;
}

vImage_Error vt_Rotate_8(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, size_t *a5, void **a6, int a7)
{
  v10 = *a4;
  v11 = *a2;
  src.data = *a4;
  src.height = v11;
  v12 = *a1;
  v13 = *a3;
  src.width = v12;
  src.rowBytes = v13;
  v14 = *a6;
  v18.data = *a6;
  v18.height = v11;
  v15 = *a5;
  v18.width = v12;
  v18.rowBytes = v15;
  if (a7 == 90)
  {
    v16 = 3;
    goto LABEL_8;
  }

  if (a7 == 270)
  {
    v16 = 1;
LABEL_8:
    src.height = v12;
    src.width = v11;
    return vImageRotate90_Planar8(&src, &v18, v16, 0, 0);
  }

  if (a7 != 180)
  {
    v16 = 0;
    return vImageRotate90_Planar8(&src, &v18, v16, 0, 0);
  }

  if (v10 != v14)
  {
    v16 = 2;
    return vImageRotate90_Planar8(&src, &v18, v16, 0, 0);
  }

  if ((v10 & 0xF) != 0 || (v13 & 0xF) != 0 || (v15 & 0xF) != 0 || (v12 & 0xF) != 0)
  {
    vtRotatePixelRect180_1BPP_inplace(v10, v13, v14, v15, v12, v11);
  }

  else
  {
    vtRotatePixelRect180_1BPP_inplace_arm(v10, v13, v14, v15, v12, v11);
  }

  return 0;
}

uint64_t vtRotatePixelRect180_1BPP_inplace(uint64_t result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (result + a5 + (a6 - 1) * a2 - 1);
  if (a6 >= 2)
  {
    v7 = a6 >> 1;
    do
    {
      if (a5)
      {
        v8 = 0;
        v9 = a3;
        do
        {
          v10 = *v9;
          *v9++ = v6[v8];
          v6[v8--] = v10;
        }

        while (-a5 != v8);
      }

      v6 -= a2;
      a3 += a4;
    }

    while (v7-- > 1);
  }

  if ((a6 & 1) != 0 && (a5 + 1) >= 3)
  {
    v12 = a5 / 2;
    do
    {
      v13 = *a3;
      *a3++ = *v6;
      *v6-- = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

vImage_Error vt_Rotate_16(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, size_t *a5, void **a6, int a7)
{
  v7 = *a2;
  src.data = *a4;
  src.height = v7;
  v8 = *a1;
  v9 = *a3;
  src.width = v8;
  src.rowBytes = v9;
  v13.data = *a6;
  v13.height = v7;
  v10 = *a5;
  v13.width = v8;
  v13.rowBytes = v10;
  switch(a7)
  {
    case 270:
      src.height = v8;
      src.width = v7;
      v11 = 1;
      break;
    case 180:
      v11 = 2;
      break;
    case 90:
      src.height = v8;
      src.width = v7;
      v11 = 3;
      break;
    default:
      v11 = 0;
      break;
  }

  return vImageRotate90_Planar16U(&src, &v13, v11, 0, 0);
}

uint64_t vtRotatePixelRect180_2BPP_inplace(uint64_t result, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (result + 2 * a5 + (a6 - 1) * a2 - 2);
  if (a6 >= 2)
  {
    v7 = a6 >> 1;
    do
    {
      if (a5)
      {
        v8 = 0;
        for (i = 0; i != a5; ++i)
        {
          v10 = a3[i];
          a3[i] = v6[v8];
          v6[v8--] = v10;
        }
      }

      v6 = (v6 - a2);
      a3 = (a3 + a4);
    }

    while (v7-- > 1);
  }

  if ((a6 & 1) != 0 && (a5 + 1) >= 3)
  {
    v12 = a5 / 2;
    do
    {
      v13 = *a3;
      *a3++ = *v6;
      *v6-- = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

vImage_Error vt_Rotate_32(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, size_t *a5, void **a6, int a7)
{
  *backColor = 255;
  v7 = *a2;
  src.data = *a4;
  src.height = v7;
  v8 = *a1;
  v9 = *a3;
  src.width = v8;
  src.rowBytes = v9;
  dest.data = *a6;
  dest.height = v7;
  v10 = *a5;
  dest.width = v8;
  dest.rowBytes = v10;
  switch(a7)
  {
    case 270:
      src.height = v8;
      src.width = v7;
      v11 = 1;
      break;
    case 180:
      v11 = 2;
      break;
    case 90:
      src.height = v8;
      src.width = v7;
      v11 = 3;
      break;
    default:
      v11 = 0;
      break;
  }

  return vImageRotate90_ARGB8888(&src, &dest, v11, backColor, 0);
}

uint64_t vtRotatePixelRect180_4BPP_inplace(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (result + 2 * a5 + (a6 - 1) * a2 - 2);
  if (a6 >= 2)
  {
    v7 = a6 >> 1;
    do
    {
      if (a5)
      {
        v8 = 0;
        for (i = 0; i != a5; ++i)
        {
          v10 = a3[i];
          a3[i] = v6[v8];
          v6[v8--] = v10;
        }
      }

      v6 = (v6 - a2);
      a3 = (a3 + a4);
    }

    while (v7-- > 1);
  }

  if ((a6 & 1) != 0 && (a5 + 1) >= 3)
  {
    v12 = a5 / 2;
    do
    {
      v13 = *a3;
      *a3++ = *v6;
      *v6-- = v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

vImage_Error vt_Rotate_64(vImagePixelCount *a1, vImagePixelCount *a2, size_t *a3, void **a4, size_t *a5, void **a6, int a7)
{
  v16 = *MEMORY[0x1E69E9840];
  *backColor = 255;
  v7 = *a2;
  src.data = *a4;
  src.height = v7;
  v8 = *a1;
  v9 = *a3;
  src.width = v8;
  src.rowBytes = v9;
  v13.data = *a6;
  v13.height = v7;
  v10 = *a5;
  v13.width = v8;
  v13.rowBytes = v10;
  switch(a7)
  {
    case 270:
      src.height = v8;
      src.width = v7;
      v11 = 1;
      break;
    case 180:
      v11 = 2;
      break;
    case 90:
      src.height = v8;
      src.width = v7;
      v11 = 3;
      break;
    default:
      v11 = 0;
      break;
  }

  return vImageRotate90_ARGB16U(&src, &v13, v11, backColor, 0);
}

uint64_t vt_Rotate_y420(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, void *a6, int a7)
{
  if (*a4 != *a6 && a4[1] != a6[1] && a4[2] != a6[2])
  {
    v25 = 0;
    v14 = 0;
LABEL_21:
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = *(a3 + v15 * 8);
      v18 = a4[v15];
      v19 = *&a5[v15 * 8];
      v20 = a6[v15];
      v21 = *(a2 + v15 * 8);
      src.data = v18;
      src.height = v21;
      v22 = *&a1[v15 * 8];
      src.width = v22;
      src.rowBytes = v17;
      dest.data = v20;
      dest.height = v21;
      dest.width = v22;
      dest.rowBytes = v19;
      if (a7 == 90)
      {
        break;
      }

      if (a7 == 270)
      {
        v23 = 1;
        goto LABEL_30;
      }

      if (a7 == 180)
      {
        if (v14)
        {
          if (v25)
          {
            vtRotatePixelRect180_1BPP_inplace_arm(v18, v17, v20, v19, v22, v21);
          }

          else
          {
            vtRotatePixelRect180_1BPP_inplace(v18, v17, v20, v19, v22, v21);
          }

          goto LABEL_36;
        }

        v23 = 2;
      }

      else
      {
        v23 = 0;
        if (v14)
        {
          goto LABEL_36;
        }
      }

LABEL_35:
      v16 = vImageRotate90_Planar8(&src, &dest, v23, 0, 0);
LABEL_36:
      if (++v15 == 3)
      {
        return v16;
      }
    }

    v23 = 3;
LABEL_30:
    src.height = v22;
    src.width = v21;
    if (v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (a7 == 180)
  {
    v25 = (*a4 & 0xFLL) == 0 && (*a3 & 0xF) == 0 && (a4[1] & 0xF) == 0 && (*(a3 + 8) & 0xF) == 0 && (a4[2] & 0xF) == 0 && ((*(a3 + 16) | *a6) & 0xFLL) == 0 && (*a5 & 0xF) == 0 && (a6[1] & 0xF) == 0 && (a5[8] & 0xF) == 0 && (a6[2] & 0xF) == 0 && (a5[16] & 0xF) == 0 && (*a1 & 0xF) == 0 && (a1[8] & 0xF) == 0 && (a1[16] & 0xF) == 0;
    v14 = 1;
    goto LABEL_21;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

vImage_Error vt_Rotate_420v(int64x2_t *a1, vImagePixelCount *a2, int64x2_t *a3, int8x16_t *a4, int64x2_t *a5, uint64_t a6, int a7)
{
  v11 = a2[1];
  src.height = *a2;
  height = src.height;
  v12 = *a4;
  src.data = a4->i64[0];
  v26.data = v12.i64[1];
  v26.height = v11;
  v13 = *a1;
  v14 = *a3;
  *&src.width = vzip1q_s64(*a1, *a3);
  *&v26.width = vzip2q_s64(v13, v14);
  v15 = *a6;
  v16 = *(a6 + 8);
  dest.data = *a6;
  dest.height = src.height;
  v24.data = v16;
  v24.height = v11;
  v17 = *a5;
  *&dest.width = vzip1q_s64(v13, *a5);
  *&v24.width = vzip2q_s64(v13, v17);
  switch(a7)
  {
    case 90:
      v18 = 3;
      goto LABEL_9;
    case 270:
      v18 = 1;
LABEL_9:
      src.height = v13.i64[0];
      src.width = height;
      v26.height = v13.u64[1];
      v26.width = v11;
      break;
    case 180:
      v18 = 2;
      if (*&v12 == __PAIR128__(v16, v15))
      {
        v22 = vdupq_n_s64(0xFuLL);
        if (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(vextq_s8(v12, v12, 8uLL), v22)), vceqzq_s64(vandq_s8(v14, v22))), vuzp1q_s32(vceqzq_s64(vandq_s8(v17, v22)), vceqzq_s64(vandq_s8(v13, v22))))))))
        {
          vtRotatePixelRect180_1BPP_inplace(v12.i64[0], v14.i64[0], v15, v17.i64[0], v13.i64[0], src.height);
          vtRotatePixelRect180_2BPP_inplace(a4->i64[1], a3->i64[1], *(a6 + 8), a5->i64[1], a1->i64[1], a2[1]);
        }

        else
        {
          vtRotatePixelRect180_1BPP_inplace_arm(v12.i64[0], v14.i64[0], v15, v17.i64[0], v13.i64[0], src.height);
          vtRotatePixelRect180_2BPP_inplace_arm(a4->i64[1], a3->i64[1], *(a6 + 8), a5->i64[1], a1->i64[1], a2[1]);
        }

        return 0;
      }

      break;
    default:
      v18 = 0;
      break;
  }

  result = vImageRotate90_Planar8(&src, &dest, v18, 0, 0);
  if (!result)
  {
    return vImageRotate90_Planar16U(&v26, &v24, v18, 0, 0);
  }

  return result;
}

vImage_Error vt_Rotate_x420(int64x2_t *a1, vImagePixelCount *a2, int64x2_t *a3, int8x16_t *a4, int64x2_t *a5, uint64_t a6, int a7)
{
  *backColor = 255;
  v11 = a2[1];
  src.height = *a2;
  height = src.height;
  v12 = *a4;
  src.data = a4->i64[0];
  v26.data = v12.i64[1];
  v26.height = v11;
  v13 = *a1;
  v14 = *a3;
  *&src.width = vzip1q_s64(*a1, *a3);
  *&v26.width = vzip2q_s64(v13, v14);
  v15 = *a6;
  v16 = *(a6 + 8);
  dest.data = *a6;
  dest.height = src.height;
  v24.data = v16;
  v24.height = v11;
  v17 = *a5;
  *&dest.width = vzip1q_s64(v13, *a5);
  *&v24.width = vzip2q_s64(v13, v17);
  switch(a7)
  {
    case 90:
      v18 = 3;
      goto LABEL_9;
    case 270:
      v18 = 1;
LABEL_9:
      src.height = v13.i64[0];
      src.width = height;
      v26.height = v13.u64[1];
      v26.width = v11;
      break;
    case 180:
      v18 = 2;
      if (*&v12 == __PAIR128__(v16, v15))
      {
        v22 = vdupq_n_s64(0xFuLL);
        if (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(vextq_s8(v12, v12, 8uLL), v22)), vceqzq_s64(vandq_s8(v14, v22))), vuzp1q_s32(vceqzq_s64(vandq_s8(v17, v22)), vceqzq_s64(vandq_s8(v13, v22))))))))
        {
          vtRotatePixelRect180_2BPP_inplace(v12.i64[0], v14.i64[0], v15, v17.i64[0], v13.i64[0], src.height);
        }

        else
        {
          vtRotatePixelRect180_2BPP_inplace_arm(v12.i64[0], v14.i64[0], v15, v17.i64[0], v13.i64[0], src.height);
        }

        vtRotatePixelRect180_4BPP_inplace(a4->i64[1], a3->i64[1], *(a6 + 8), a5->i64[1], a1->i64[1], a2[1]);
        return 0;
      }

      break;
    default:
      v18 = 0;
      break;
  }

  result = vImageRotate90_Planar16U(&src, &dest, v18, 0, 0);
  if (!result)
  {
    return vImageRotate90_ARGB8888(&v26, &v24, v18, backColor, 0);
  }

  return result;
}

uint64_t vt_Rotate_2vuy(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, _BYTE **a6, int a7)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  switch(a7)
  {
    case 270:
      vtRotatePixelRect90CCW_2vuy(v10, v9, v12, v11, *a1, *a2);
      break;
    case 180:
      vtRotatePixelRect180_2vuy(v10, v9, v12, v11, *a1, *a2);
      break;
    case 90:
      vtRotatePixelRect90CW_2vuy(v10, v9, v12, v11, *a1, *a2);
      break;
  }

  return 0;
}

unint64_t vtRotatePixelRect90CW_2vuy(unint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = result + (a5 - 1) * a2;
    do
    {
      if (a6 >= 1)
      {
        if (a5 >= 0x40)
        {
          v7 = 64;
        }

        else
        {
          v7 = a5;
        }

        v8 = a6;
        v9 = a3;
        v10 = v6;
        do
        {
          if (v8 >= 0x40)
          {
            result = 64;
          }

          else
          {
            result = v8;
          }

          v11 = 1;
          v12 = v7;
          v13 = v9;
          v14 = v10;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = result >> 1;
            if (v11)
            {
              if (v8 >= 2)
              {
                do
                {
                  *v15 = *v16;
                  v15[1] = v16[1];
                  v15[2] = v16[2];
                  v18 = &v15[a4];
                  *v18 = *v16;
                  v18[1] = v16[3];
                  v18[2] = v16[2];
                  v16 += 4;
                  v15 = &v18[a4];
                  --v17;
                }

                while (v17);
              }

              if (result)
              {
                *v15 = *v16;
                v15[1] = v16[1];
                v15[2] = v16[2];
              }
            }

            else
            {
              if (v8 >= 2)
              {
                do
                {
                  v15[3] = v16[1];
                  v15[a4 + 3] = v16[3];
                  v16 += 4;
                  v15 += a4 + a4;
                  --v17;
                }

                while (v17);
              }

              if (result)
              {
                v15[3] = v16[1];
              }

              v13 += 4;
            }

            v14 -= a2;
            v11 ^= 1u;
            --v12;
          }

          while (v12);
          v10 += 128;
          v9 += 64 * a4;
          v19 = v8 <= 64;
          v8 -= 64;
        }

        while (!v19);
      }

      v6 -= a2 << 6;
      a3 += 128;
      v19 = a5 <= 64;
      a5 -= 64;
    }

    while (!v19);
  }

  return result;
}

uint64_t vtRotatePixelRect180_2vuy(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = result + 4 * (a5 / 2) + (a6 - 1) * a2 - 4;
    do
    {
      v7 = a3;
      if ((a5 + 1) >= 3)
      {
        v8 = 0;
        v7 = a3;
        v9 = a5 / 2;
        do
        {
          *v7 = *(v6 + v8);
          v7[1] = *(v6 + v8 + 3);
          v7[2] = *(v6 + v8 + 2);
          v7[3] = *(v6 + v8 + 1);
          v7 += 4;
          v8 -= 4;
          --v9;
        }

        while (v9);
      }

      if (a5)
      {
        *v7 = 276828288;
      }

      v6 -= a2;
      a3 += a4;
      --a6;
    }

    while (a6);
  }

  return result;
}

void vtRotatePixelRect90CCW_2vuy(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = a2 << 6;
    v7 = a1 + 4 * ((a6 + (a6 >> 63)) >> 1);
    v8 = v7 - 4;
    v9 = (v7 - 1);
    v10 = a5;
    v11 = a3;
    do
    {
      if (a6 >= 1)
      {
        if (v10 >= 0x40)
        {
          v12 = 64;
        }

        else
        {
          v12 = v10;
        }

        v13 = v9;
        v14 = a6;
        v15 = v11;
        v16 = v8;
        do
        {
          v17 = v14 >> 1;
          if (v14 >= 0x40)
          {
            v17 = 32;
          }

          v18 = 1;
          v19 = v13;
          v20 = v12;
          v21 = v16;
          v22 = v15;
          do
          {
            if (v18)
            {
              if (v17)
              {
                v23 = 0;
                v24 = v22;
                v25 = v17;
                do
                {
                  *v24 = *(v21 + v23);
                  v24[1] = *(v21 + v23 + 3);
                  v24[2] = *(v21 + v23 + 2);
                  v26 = &v24[a4];
                  *v26 = *(v21 + v23);
                  v26[1] = *(v21 + v23 + 1);
                  v26[2] = *(v21 + v23 + 2);
                  v24 += a4 + a4;
                  v23 -= 4;
                  --v25;
                }

                while (v25);
              }
            }

            else
            {
              if (v17)
              {
                v27 = v22 + 3;
                v28 = v19;
                v29 = v17;
                do
                {
                  *v27 = *v28;
                  v27[a4] = *(v28 - 2);
                  v27 += 2 * a4;
                  v28 -= 4;
                  --v29;
                }

                while (v29);
              }

              v22 += 4;
            }

            v21 += a2;
            v18 ^= 1u;
            v19 += a2;
            --v20;
          }

          while (v20);
          v16 -= 128;
          v13 -= 128;
          v15 += 64 * a4;
          v30 = v14 <= 64;
          v14 -= 64;
        }

        while (!v30);
      }

      v8 += v6;
      v11 += 128;
      v9 += v6;
      v30 = v10 <= 64;
      v10 -= 64;
    }

    while (!v30);
  }

  if (a6)
  {
    __pattern4 = 276828288;
    memset_pattern4(&a3[(a6 - 1) * a4], &__pattern4, (2 * (a5 + 1 + ((a5 + 1) >> 63))) & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t vt_Rotate_yuvs(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, _BYTE **a6, int a7)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  switch(a7)
  {
    case 270:
      vtRotatePixelRect90CCW_yuvs(v10, v9, v12, v11, *a1, *a2);
      break;
    case 180:
      vtRotatePixelRect180_yuvs(v10, v9, v12, v11, *a1, *a2);
      break;
    case 90:
      vtRotatePixelRect90CW_yuvs(v10, v9, v12, v11, *a1, *a2);
      break;
  }

  return 0;
}

unint64_t vtRotatePixelRect90CW_yuvs(unint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = result + (a5 - 1) * a2;
    do
    {
      if (a6 >= 1)
      {
        if (a5 >= 0x40)
        {
          v7 = 64;
        }

        else
        {
          v7 = a5;
        }

        v8 = a6;
        v9 = a3;
        v10 = v6;
        do
        {
          if (v8 >= 0x40)
          {
            result = 64;
          }

          else
          {
            result = v8;
          }

          v11 = 1;
          v12 = v7;
          v13 = v9;
          v14 = v10;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = result >> 1;
            if (v11)
            {
              if (v8 >= 2)
              {
                do
                {
                  *v15 = *v16;
                  v15[1] = v16[1];
                  v15[3] = v16[3];
                  v18 = &v15[a4];
                  *v18 = v16[2];
                  v18[1] = v16[1];
                  v18[3] = v16[3];
                  v16 += 4;
                  v15 = &v18[a4];
                  --v17;
                }

                while (v17);
              }

              if (result)
              {
                *v15 = *v16;
                v15[1] = v16[1];
                v15[3] = v16[3];
              }
            }

            else
            {
              if (v8 >= 2)
              {
                do
                {
                  v15[2] = *v16;
                  v15[a4 + 2] = v16[2];
                  v16 += 4;
                  v15 += a4 + a4;
                  --v17;
                }

                while (v17);
              }

              if (result)
              {
                v15[2] = *v16;
              }

              v13 += 4;
            }

            v14 -= a2;
            v11 ^= 1u;
            --v12;
          }

          while (v12);
          v10 += 128;
          v9 += 64 * a4;
          v19 = v8 <= 64;
          v8 -= 64;
        }

        while (!v19);
      }

      v6 -= a2 << 6;
      a3 += 128;
      v19 = a5 <= 64;
      a5 -= 64;
    }

    while (!v19);
  }

  return result;
}

uint64_t vtRotatePixelRect180_yuvs(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = (a6 - 1) * a2 + 4 * (a5 / 2) + result - 2;
    do
    {
      v7 = a3;
      if ((a5 + 1) >= 3)
      {
        v8 = v6;
        v7 = a3;
        v9 = a5 / 2;
        do
        {
          *v7 = *v8;
          v7[1] = *(v8 - 1);
          v7[2] = *(v8 - 2);
          v7[3] = v8[1];
          v7 += 4;
          v8 -= 4;
          --v9;
        }

        while (v9);
      }

      if (a5)
      {
        *v7 = -2146402288;
      }

      a3 += a4;
      v6 -= a2;
      --a6;
    }

    while (a6);
  }

  return result;
}

void vtRotatePixelRect90CCW_yuvs(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = a2 << 6;
    v7 = a1 + 4 * ((a6 + (a6 >> 63)) >> 1);
    v8 = v7 - 4;
    v9 = (v7 - 2);
    v10 = a5;
    v11 = a3;
    do
    {
      if (a6 >= 1)
      {
        if (v10 >= 0x40)
        {
          v12 = 64;
        }

        else
        {
          v12 = v10;
        }

        v13 = v9;
        v14 = a6;
        v15 = v11;
        v16 = v8;
        do
        {
          v17 = v14 >> 1;
          if (v14 >= 0x40)
          {
            v17 = 32;
          }

          v18 = 1;
          v19 = v13;
          v20 = v12;
          v21 = v16;
          v22 = v15;
          do
          {
            if (v18)
            {
              v23 = v19;
              v24 = v22;
              for (i = v17; i; --i)
              {
                *v24 = *v23;
                v24[1] = *(v23 - 1);
                v24[3] = v23[1];
                v26 = &v24[a4];
                *v26 = *(v23 - 2);
                v26[1] = *(v23 - 1);
                v26[3] = v23[1];
                v24 = &v26[a4];
                v23 -= 4;
              }
            }

            else
            {
              if (v17)
              {
                v27 = 0;
                v28 = v22 + 2;
                v29 = v17;
                do
                {
                  *v28 = v19[v27];
                  v30 = *(v21 + v27);
                  v27 -= 4;
                  v28[a4] = v30;
                  v28 += 2 * a4;
                  --v29;
                }

                while (v29);
              }

              v22 += 4;
            }

            v21 += a2;
            v18 ^= 1u;
            v19 += a2;
            --v20;
          }

          while (v20);
          v16 -= 128;
          v13 -= 128;
          v15 += 64 * a4;
          v31 = v14 <= 64;
          v14 -= 64;
        }

        while (!v31);
      }

      v8 += v6;
      v11 += 128;
      v9 += v6;
      v31 = v10 <= 64;
      v10 -= 64;
    }

    while (!v31);
  }

  if (a6)
  {
    __pattern4 = -2146402288;
    memset_pattern4(&a3[(a6 - 1) * a4], &__pattern4, (2 * (a5 + 1 + ((a5 + 1) >> 63))) & 0xFFFFFFFFFFFFFFFCLL);
  }
}

uint64_t vt_Rotate_v216(uint64_t *a1, uint64_t *a2, unint64_t *a3, _WORD **a4, unint64_t *a5, _WORD **a6, int a7)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  switch(a7)
  {
    case 270:
      vtRotatePixelRect90CCW_v216(v10, v9, v12, v11, *a1, *a2);
      break;
    case 180:
      vtRotatePixelRect180_v216(v10, v9, v12, v11, *a1, *a2);
      break;
    case 90:
      vtRotatePixelRect90CW_v216(v10, v9, v12, v11, *a1, *a2);
      break;
  }

  return 0;
}

_WORD *vtRotatePixelRect90CW_v216(_WORD *result, unint64_t a2, _WORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = (result + (a5 - 1) * a2);
    v7 = -(a2 >> 1);
    v8 = a4 >> 1 << 7;
    v9 = a4 >> 1;
    v10 = 4 * (a4 >> 1);
    v11 = -128 * (a2 >> 1);
    do
    {
      if (a6 >= 1)
      {
        if (a5 >= 0x40)
        {
          v12 = 64;
        }

        else
        {
          v12 = a5;
        }

        v13 = a6;
        result = a3;
        v14 = v6;
        do
        {
          if (v13 >= 0x40)
          {
            v15 = 64;
          }

          else
          {
            v15 = v13;
          }

          v16 = 1;
          v17 = v12;
          v18 = v14;
          v19 = result;
          do
          {
            v20 = v19;
            v21 = v18;
            v22 = v15 >> 1;
            if (v16)
            {
              if (v13 >= 2)
              {
                do
                {
                  *v20 = *v21;
                  v20[1] = v21[1];
                  v20[2] = v21[2];
                  v23 = &v20[v9];
                  *v23 = *v21;
                  v23[1] = v21[3];
                  v23[2] = v21[2];
                  v21 += 4;
                  v20 = (v20 + v10);
                  --v22;
                }

                while (v22);
              }

              if (v15)
              {
                *v20 = *v21;
                v20[1] = v21[1];
                v20[2] = v21[2];
              }
            }

            else
            {
              if (v13 >= 2)
              {
                do
                {
                  v20[3] = v21[1];
                  v20[v9 + 3] = v21[3];
                  v21 += 4;
                  v20 = (v20 + v10);
                  --v22;
                }

                while (v22);
              }

              if (v15)
              {
                v20[3] = v21[1];
              }

              v19 += 4;
            }

            v18 += v7;
            v16 ^= 1u;
            --v17;
          }

          while (v17);
          v14 += 128;
          result = (result + v8);
          v24 = v13 <= 64;
          v13 -= 64;
        }

        while (!v24);
      }

      v6 = (v6 + v11);
      a3 += 128;
      v24 = a5 <= 64;
      a5 -= 64;
    }

    while (!v24);
  }

  return result;
}

uint64_t vtRotatePixelRect180_v216(uint64_t result, uint64_t a2, _WORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v6 = result + (a6 - 1) * a2 + 8 * (a5 / 2) - 8;
    do
    {
      v7 = a3;
      if ((a5 + 1) >= 3)
      {
        v8 = 0;
        v9 = a5 / 2;
        v7 = a3;
        do
        {
          *v7 = *(v6 + v8);
          v7[1] = *(v6 + v8 + 6);
          result = *(v6 + v8 + 4);
          v7[2] = result;
          v7[3] = *(v6 + v8 + 2);
          v7 += 4;
          v8 -= 8;
          --v9;
        }

        while (v9);
      }

      if (a5)
      {
        *v7 = 0x1000800010008000;
      }

      a3 += a4 >> 1;
      v6 -= a2 & 0xFFFFFFFFFFFFFFFELL;
      --a6;
    }

    while (a6);
  }

  return result;
}

void vtRotatePixelRect90CCW_v216(uint64_t a1, unint64_t a2, _WORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 >> 1;
  if (a5 >= 1)
  {
    v7 = a1 + 8 * ((a6 + (a6 >> 63)) >> 1);
    v8 = v7 - 8;
    v9 = a2 >> 1 << 7;
    v10 = 4 * v6;
    v11 = 2 * (a2 >> 1);
    v12 = (v7 - 2);
    v13 = a3;
    v14 = a5;
    do
    {
      if (a6 >= 1)
      {
        if (v14 >= 0x40)
        {
          v15 = 64;
        }

        else
        {
          v15 = v14;
        }

        v16 = v12;
        v17 = a6;
        v18 = v13;
        v19 = v8;
        do
        {
          v20 = v17 >> 1;
          if (v17 >= 0x40)
          {
            v20 = 32;
          }

          v21 = 1;
          v22 = v16;
          v23 = v19;
          v24 = v15;
          v25 = v18;
          do
          {
            if (v21)
            {
              if (v20)
              {
                v26 = 0;
                v27 = v25;
                v28 = v20;
                do
                {
                  *v27 = *(v23 + v26);
                  v27[1] = *(v23 + v26 + 6);
                  v27[2] = *(v23 + v26 + 4);
                  v29 = &v27[v6];
                  *v29 = *(v23 + v26);
                  v29[1] = *(v23 + v26 + 2);
                  v29[2] = *(v23 + v26 + 4);
                  v27 = (v27 + v10);
                  v26 -= 8;
                  --v28;
                }

                while (v28);
              }
            }

            else
            {
              if (v20)
              {
                v30 = v25 + 3;
                v31 = v22;
                v32 = v20;
                do
                {
                  *v30 = *v31;
                  v30[v6] = *(v31 - 2);
                  v30 = (v30 + v10);
                  v31 -= 4;
                  --v32;
                }

                while (v32);
              }

              v25 += 4;
            }

            v21 ^= 1u;
            v23 += v11;
            v22 = (v22 + v11);
            --v24;
          }

          while (v24);
          v19 -= 256;
          v16 -= 128;
          v18 += 64 * v6;
          v33 = v17 <= 64;
          v17 -= 64;
        }

        while (!v33);
      }

      v8 += v9;
      v13 += 128;
      v12 = (v12 + v9);
      v33 = v14 <= 64;
      v14 -= 64;
    }

    while (!v33);
  }

  if (a6)
  {
    __pattern4 = 0x1000800010008000;
    memset_pattern4(a3 + (a6 - 1) * v6, &__pattern4, (2 * (a5 + 1 + ((a5 + 1) >> 63))) & 0xFFFFFFFFFFFFFFFCLL);
  }
}

void vt_Flip_8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_1BPP(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_1BPP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + a5 + (a6 - 1) * a2 - 1;
  v7 = (a3 + (a6 - 1) * a4);
  if (result == a3)
  {
    for (; a6; --a6)
    {
      if ((a5 + 1) >= 3)
      {
        v10 = 0;
        v11 = v7;
        do
        {
          v12 = *v11;
          *v11++ = *(v6 + v10);
          *(v6 + v10--) = v12;
        }

        while (a5 / -2 != v10);
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  else
  {
    for (; a6; --a6)
    {
      if (a5)
      {
        v8 = 0;
        v9 = v7;
        do
        {
          *v9++ = *(v6 + v8--);
        }

        while (-a5 != v8);
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  return result;
}

void vt_Flip_16(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_2BPP(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_2BPP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + 2 * a5 + (a6 - 1) * a2 - 2;
  v7 = a3 + (a6 - 1) * a4;
  if (result == a3)
  {
    for (; a6; --a6)
    {
      if ((a5 + 1) >= 3)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v7 + 2 * v11);
          *(v7 + 2 * v11) = *(v6 + v10);
          *(v6 + v10) = v12;
          ++v11;
          v10 -= 2;
        }

        while (a5 / 2 != v11);
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  else
  {
    for (; a6; --a6)
    {
      if (a5)
      {
        v8 = 0;
        for (i = 0; i != a5; ++i)
        {
          *(v7 + 2 * i) = *(v6 + v8);
          v8 -= 2;
        }
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  return result;
}

void vt_Flip_32(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_4BPP(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_4BPP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + 4 * a5 + (a6 - 1) * a2 - 4;
  v7 = a3 + (a6 - 1) * a4;
  if (result == a3)
  {
    for (; a6; --a6)
    {
      if ((a5 + 1) >= 3)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v7 + 4 * v11);
          *(v7 + 4 * v11) = *(v6 + v10);
          *(v6 + v10) = v12;
          ++v11;
          v10 -= 4;
        }

        while (a5 / 2 != v11);
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  else
  {
    for (; a6; --a6)
    {
      if (a5)
      {
        v8 = 0;
        for (i = 0; i != a5; ++i)
        {
          *(v7 + 4 * i) = *(v6 + v8);
          v8 -= 4;
        }
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  return result;
}

void vt_Flip_64(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_8BPP(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_8BPP(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + 8 * a5 + (a6 - 1) * a2 - 8;
  v7 = a3 + (a6 - 1) * a4;
  if (result == a3)
  {
    for (; a6; --a6)
    {
      if ((a5 + 1) >= 3)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = *(v7 + 8 * v11);
          *(v7 + 8 * v11) = *(v6 + v10);
          *(v6 + v10) = v12;
          ++v11;
          v10 -= 8;
        }

        while (a5 / 2 != v11);
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  else
  {
    for (; a6; --a6)
    {
      if (a5)
      {
        v8 = 0;
        for (i = 0; i != a5; ++i)
        {
          *(v7 + 8 * i) = *(v6 + v8);
          v8 -= 8;
        }
      }

      v6 -= a2;
      v7 -= a4;
    }
  }

  return result;
}

uint64_t vt_Flip_y420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v16 = 0;
  v17 = 0;
  do
  {
    if (a7)
    {
      vtFlipPixelRectHoriz_1BPP(*(a4 + v16), *(a3 + v16), *(a6 + v16), *(a5 + v16), *(a1 + v16), *(a2 + v16));
    }

    else if (a8)
    {
      vtFlipPixelRectVert();
      v17 = v18;
    }

    v16 += 8;
  }

  while (v16 != 24);
  return v17;
}

void vt_Flip_420v(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_1BPP(*a4, *a3, *a6, *a5, *a1, *a2);
    vtFlipPixelRectHoriz_2BPP(a4[1], a3[1], a6[1], a5[1], a1[1], a2[1]);
  }

  else if (a8)
  {
    vtFlipPixelRectVert();
    if (!v14)
    {

      vtFlipPixelRectVert();
    }
  }
}

void vt_Flip_x420(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_2BPP(*a4, *a3, *a6, *a5, *a1, *a2);
    vtFlipPixelRectHoriz_4BPP(a4[1], a3[1], a6[1], a5[1], a1[1], a2[1]);
  }

  else if (a8)
  {
    vtFlipPixelRectVert();
    if (!v14)
    {

      vtFlipPixelRectVert();
    }
  }
}

void vt_Flip_2vuy(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_2vuy(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_2vuy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + 4 * (a5 / 2) + (a6 - 1) * a2 - 4;
  v7 = (a3 + (a6 - 1) * a4);
  if (result == a3)
  {
    if (a6)
    {
      if (a5 >= 0)
      {
        v13 = a5;
      }

      else
      {
        v13 = a5 + 3;
      }

      v14 = v13 >> 2;
      v15 = -a2;
      do
      {
        if (a5)
        {
          *(v6 + 4) = 276828288;
        }

        if ((a5 + 3) >= 7)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            result = &v7[v17];
            v18 = (v6 + v16);
            v19 = *result;
            *result = *(v6 + v16);
            *(result + 1) = *(v6 + v16 + 3);
            *(result + 2) = *(v6 + v16 + 2);
            *(result + 3) = *(v6 + v16 + 1);
            *v18 = v19;
            v18[1] = HIBYTE(v19);
            v18[2] = BYTE2(v19);
            v18[3] = BYTE1(v19);
            ++v17;
            v16 -= 4;
          }

          while (v14 != v17);
        }

        v6 += v15;
        v7 = (v7 - a4);
        --a6;
      }

      while (a6);
    }
  }

  else if (a6)
  {
    v8 = -a2;
    do
    {
      v9 = v7;
      if ((a5 + 1) >= 3)
      {
        v10 = 0;
        v11 = 0;
        result = a5 / 2;
        do
        {
          v12 = &v7[v10];
          *v12 = *(v6 + v11);
          v12[1] = *(v6 + v11 + 3);
          v12[2] = *(v6 + v11 + 2);
          v12[3] = *(v6 + v11 + 1);
          v11 -= 4;
          ++v10;
          --result;
        }

        while (result);
        v9 = &v7[v11 / 0xFFFFFFFFFFFFFFFCLL];
      }

      if (a5)
      {
        *v9 = 276828288;
      }

      v6 += v8;
      v7 = (v7 - a4);
      --a6;
    }

    while (a6);
  }

  return result;
}

void vt_Flip_yuvs(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_yuvs(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_yuvs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 4 * (a5 / 2);
  v7 = (a6 - 1) * a2;
  v8 = (a3 + (a6 - 1) * a4);
  if (result == a3)
  {
    if (a6)
    {
      v12 = result + 4 * (a5 / 2) + v7 - 4;
      if (a5 >= 0)
      {
        v13 = a5;
      }

      else
      {
        v13 = a5 + 3;
      }

      v14 = v13 >> 2;
      v15 = -a2;
      v16 = v7 + v6 + result - 2;
      do
      {
        if (a5)
        {
          *(v12 + 4) = -2146402288;
        }

        if ((a5 + 3) >= 7)
        {
          v17 = 0;
          result = v16;
          do
          {
            v18 = &v8[4 * v17];
            v19 = *v18;
            *v18 = *result;
            v18[1] = *(result - 1);
            v18[2] = *(result - 2);
            v18[3] = *(result + 1);
            *(result - 2) = BYTE2(v19);
            *(result - 1) = BYTE1(v19);
            *result = v19;
            *(result + 1) = HIBYTE(v19);
            ++v17;
            result -= 4;
          }

          while (v14 != v17);
        }

        v12 += v15;
        v8 -= a4;
        v16 += v15;
        --a6;
      }

      while (a6);
    }
  }

  else if (a6)
  {
    v9 = v7 + v6 + result - 2;
    do
    {
      v10 = v8;
      if ((a5 + 1) >= 3)
      {
        v11 = v9;
        result = a5 / 2;
        v10 = v8;
        do
        {
          *v10 = *v11;
          v10[1] = *(v11 - 1);
          v10[2] = *(v11 - 2);
          v10[3] = v11[1];
          v10 += 4;
          v11 -= 4;
          --result;
        }

        while (result);
      }

      if (a5)
      {
        *v10 = -2146402288;
      }

      v8 -= a4;
      v9 -= a2;
      --a6;
    }

    while (a6);
  }

  return result;
}

void vt_Flip_v216(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6, int a7, int a8)
{
  if (a7)
  {
    vtFlipPixelRectHoriz_v216(*a4, *a3, *a6, *a5, *a1, *a2);
  }

  else if (a8)
  {

    vtFlipPixelRectVert();
  }
}

uint64_t vtFlipPixelRectHoriz_v216(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result + (a6 - 1) * a2 + 8 * (a5 / 2) - 8;
  v7 = (a3 + (a6 - 1) * a4);
  v8 = a5;
  v9 = a2 >> 1;
  v10 = a4 >> 1;
  if (result == a3)
  {
    if (a6)
    {
      v15 = a5 + 3;
      if (a5 >= 0)
      {
        v16 = a5;
      }

      else
      {
        v16 = a5 + 3;
      }

      v17 = v16 >> 2;
      v18 = -2 * v10;
      v19 = -2 * v9;
      do
      {
        if (v8)
        {
          *(v6 + 16) = 0x1000800010008000;
        }

        if (v15 >= 7)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            result = &v7[4 * v21];
            v22 = (v6 + v20);
            v23 = *result;
            v24 = *result >> 16;
            v25 = HIDWORD(*result);
            v26 = HIWORD(*result);
            *result = *(v6 + v20);
            *(result + 2) = *(v6 + v20 + 6);
            *(result + 4) = *(v6 + v20 + 4);
            *(result + 6) = *(v6 + v20 + 2);
            *v22 = v23;
            v22[1] = v26;
            v22[2] = v25;
            v22[3] = v24;
            ++v21;
            v20 -= 8;
          }

          while (v17 != v21);
        }

        v6 += v19;
        v7 = (v7 + v18);
        --a6;
      }

      while (a6);
    }
  }

  else if (a6)
  {
    v11 = -v10;
    v12 = -2 * v9;
    do
    {
      v13 = v7;
      if ((a5 + 1) >= 3)
      {
        v14 = 0;
        result = a5 / 2;
        v13 = v7;
        do
        {
          *v13 = *(v6 + v14);
          v13[1] = *(v6 + v14 + 6);
          v13[2] = *(v6 + v14 + 4);
          v13[3] = *(v6 + v14 + 2);
          v13 += 4;
          v14 -= 8;
          --result;
        }

        while (result);
      }

      if (a5)
      {
        *v13 = 0x1000800010008000;
      }

      v7 += v11;
      v6 += v12;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t vtParavirtualizationHostDecoderSession_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke(uint64_t a1)
{
  v164 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3)
  {
    goto LABEL_304;
  }

  v4 = *(a1 + 72);
  if (v4 > 1685283189)
  {
    if (v4 > 1685288050)
    {
      if (v4 <= 1685349992)
      {
        if (v4 != 1685288051)
        {
          if (v4 == 1685288304)
          {
            v6 = *(a1 + 32);
            v5 = *(a1 + 40);
            *type = 0;
            cf = 0;
            v159 = 0;
            if (!VTParavirtualizationCreateReplyAndByteStream(v5, 4, type, &v159))
            {
              v7 = *(v6 + 24);
              v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              v9 = v8 ? v8(v7, &cf) : -12782;
              if (!VTParavirtualizationMessageAppendSInt32() && (!cf || !VTParavirtualizationMessageAppendCFPropertyList()))
              {
                vtParavirtualizationHostDecoderSession_sendMessageToGuest(v6, *type);
                if (!v9)
                {
                  goto LABEL_191;
                }
              }
            }

LABEL_163:
            v118 = FigCFCopyCompactDescription();
            LODWORD(sbuf) = 0;
            v156[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (v118)
            {
              CFRelease(v118);
            }

LABEL_191:
            v126 = cf;
            if (cf)
            {
              goto LABEL_192;
            }

            goto LABEL_193;
          }

LABEL_137:
          LODWORD(cf) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          FigSignalErrorAtGM();
          goto LABEL_304;
        }

        v56 = *(a1 + 32);
        v57 = *(a1 + 40);
        *type = 0;
        cf = 0;
        v159 = 0;
        if (!VTParavirtualizationCreateReplyAndByteStream(v57, 4, type, &v159) && !VTParavirtualizationMessageCopyCMFormatDescription())
        {
          v58 = cf;
          if (cf)
          {
            v59 = *(v56 + 24);
            v60 = *(CMBaseObjectGetVTable() + 16);
            if (*v60 >= 3uLL && (v61 = v60[8]) != 0)
            {
              v62 = v61(v59, v56 + 72, v58);
            }

            else
            {
              v62 = -12782;
            }

            if (!VTParavirtualizationMessageAppendSInt32())
            {
              vtParavirtualizationHostDecoderSession_sendMessageToGuest(v56, *type);
              if (!v62)
              {
                goto LABEL_191;
              }
            }
          }

          else
          {
            __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_4(&valueCallBacks);
            if (!LODWORD(valueCallBacks.version))
            {
              goto LABEL_191;
            }
          }
        }

        LODWORD(sbuf) = 0;
        v156[0] = OS_LOG_TYPE_DEFAULT;
        v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT);
LABEL_188:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_191;
      }

      if (v4 != 1685349993)
      {
        if (v4 != 1685350764)
        {
          goto LABEL_137;
        }

        v40 = *(a1 + 32);
        v41 = *(a1 + 40);
        v43 = *(a1 + 48);
        v42 = *(a1 + 56);
        v44 = *(a1 + 64);
        *v158 = 0;
        *type = 0;
        cf = 0;
        v159 = 0;
        *v156 = 0;
        sbuf = 0;
        pixelBufferOut = 0;
        *v155 = 0;
        v152 = 0;
        v153 = 0;
        v151 = 0;
        if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v41, 0, v158, 0))
        {
          v45 = *(v40 + 216);
          if ((v158[0] & 0x10) != 0)
          {
            if (!v45)
            {
              if (v41)
              {
                v135 = CFRetain(v41);
              }

              else
              {
                v135 = 0;
              }

              v46 = 0;
              *(v40 + 216) = v135;
              goto LABEL_279;
            }

            v46 = 0;
            if (!CMBlockBufferAppendBufferReference(v45, v41, 0, 0, 0))
            {
              goto LABEL_279;
            }

            goto LABEL_276;
          }

          if ((!v45 || !CMBlockBufferAppendBufferReference(v45, v41, 0, 0, 0)) && !VTParavirtualizationCreateReplyAndByteStream(v41, 4, &cf, type))
          {
            v46 = *(v40 + 216);
            if (v46)
            {
              *(v40 + 216) = 0;
              v41 = v46;
            }

            if (VTParavirtualizationMessageGetSInt64())
            {
              goto LABEL_276;
            }

            key = v159;
            if (VTParavirtualizationMessageCopyCMSampleBuffer(v41, 745759334, *(v40 + 128), v40 + 232, v40 + 240, &sbuf))
            {
              goto LABEL_276;
            }

            if (sbuf)
            {
              VTParavirtualizationMessageGetVTInt32Point();
              if (v47)
              {
                goto LABEL_276;
              }

              VTParavirtualizationMessageGetVTInt32Size();
              if (v48)
              {
                goto LABEL_276;
              }

              if (v42 && v43 && v44 == 1 && *v43)
              {
                v49 = *MEMORY[0x1E695E480];
                if (CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *v43, 0, &pixelBufferOut) || VTParavirtualizationMessageCopyCFUUID())
                {
                  goto LABEL_276;
                }

                v51 = v153;
                v50 = pixelBufferOut;
                SInt64 = FigCFNumberCreateSInt64();
                FigSimpleMutexLock();
                v53 = *(v40 + 192);
                if (v53 || (valueCallBacks.version = 0, valueCallBacks.retain = vtClonePendingTileSurfaceStuff_0, valueCallBacks.copyDescription = 0, valueCallBacks.equal = 0, valueCallBacks.release = vtFreePendingTileSurfaceStuff_0, v53 = CFDictionaryCreateMutable(v49, 0, 0, &valueCallBacks), (*(v40 + 192) = v53) != 0))
                {
                  if (!CFDictionaryGetValue(v53, key))
                  {
                    dispatch_group_enter(*(v40 + 224));
                    CFDictionarySetValue(*(v40 + 192), key, 0);
                    Value = CFDictionaryGetValue(*(v40 + 192), key);
                    CFArrayAppendValue(*Value, v50);
                    CFArrayAppendValue(Value[1], v51);
                    FigCFArrayAppendInt64();
                  }

                  Mutable = *(v40 + 200);
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(v49, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    *(v40 + 200) = Mutable;
                  }

                  if (CFDictionaryGetValue(Mutable, SInt64))
                  {
                    FigCFArrayAppendInt64();
                  }

                  else
                  {
                    v137 = CFArrayCreateMutable(v49, 0, MEMORY[0x1E695E9C0]);
                    FigCFArrayAppendInt64();
                    CFDictionarySetValue(*(v40 + 200), SInt64, v137);
                    if (v137)
                    {
                      CFRelease(v137);
                    }
                  }

                  v138 = 0;
                }

                else
                {
                  v138 = FigSignalErrorAtGM();
                }

                FigSimpleMutexUnlock();
                if (SInt64)
                {
                  CFRelease(SInt64);
                }

                if (v138)
                {
                  goto LABEL_276;
                }

                VTParavirtualizationMessageGetVTInt32Point();
                if (v139)
                {
                  goto LABEL_276;
                }

                VTParavirtualizationMessageGetUInt32();
                if (v140)
                {
                  goto LABEL_276;
                }

                v141 = *(v40 + 24);
                v143 = *v156;
                v142 = sbuf;
                v144 = pixelBufferOut;
                v145 = *v155;
                v146 = *(CMBaseObjectGetVTable() + 16);
                if (*v146 >= 3uLL && (v147 = v146[9]) != 0)
                {
                  v148 = v147(v141, key, v142, v143, v145, v144, v152, HIDWORD(v151), &v151);
                }

                else
                {
                  v148 = -12782;
                }

                if (VTParavirtualizationMessageAppendSInt32())
                {
                  goto LABEL_276;
                }

                if (VTParavirtualizationMessageAppendUInt32())
                {
                  goto LABEL_276;
                }

                vtParavirtualizationHostDecoderSession_sendMessageToGuest(v40, cf);
                if (v148)
                {
                  goto LABEL_276;
                }

LABEL_279:
                if (sbuf)
                {
                  CFRelease(sbuf);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                if (*type)
                {
                  CFRelease(*type);
                }

                if (v46)
                {
                  CFRelease(v46);
                }

                if (pixelBufferOut)
                {
                  CFRelease(pixelBufferOut);
                }

                v116 = v153;
                if (!v153)
                {
                  goto LABEL_304;
                }

                goto LABEL_303;
              }

              __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_2(&valueCallBacks);
            }

            else
            {
              __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_3(&valueCallBacks);
            }

            if (!LODWORD(valueCallBacks.version))
            {
              goto LABEL_279;
            }

LABEL_276:
            v149 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_279;
          }
        }

        v46 = 0;
        goto LABEL_276;
      }

      v64 = *(a1 + 32);
      v63 = *(a1 + 40);
      *type = 0;
      cf = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v63, 4, &cf, type))
      {
        v65 = *(v64 + 24);
        v66 = *(CMBaseObjectGetVTable() + 16);
        if (*v66 >= 3uLL && (v67 = v66[10]) != 0)
        {
          v68 = v67(v65);
        }

        else
        {
          v68 = -12782;
        }

        if (!VTParavirtualizationMessageAppendSInt32())
        {
          vtParavirtualizationHostDecoderSession_sendMessageToGuest(v64, cf);
          if (!v68)
          {
            goto LABEL_202;
          }
        }
      }

      goto LABEL_201;
    }

    if (v4 == 1685283190)
    {
      v70 = *(a1 + 32);
      v69 = *(a1 + 40);
      *type = 0;
      cf = 0;
      v159 = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v69, 4, type, &v159))
      {
        v71 = *(v70 + 24);
        v72 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        v73 = v72 ? v72(v71, *MEMORY[0x1E695E480], &cf) : -12782;
        if (!VTParavirtualizationMessageAppendSInt32() && (!cf || !VTParavirtualizationMessageAppendCFDictionary(v159, 745566831, cf)))
        {
          vtParavirtualizationHostDecoderSession_sendMessageToGuest(v70, *type);
          if (!v73)
          {
            goto LABEL_191;
          }
        }
      }

      goto LABEL_163;
    }

    if (v4 != 1685284212)
    {
      if (v4 != 1685288033)
      {
        goto LABEL_137;
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *type = 0;
      cf = 0;
      v159 = 0;
      LODWORD(sbuf) = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v17, 4, type, &v159) && !VTParavirtualizationMessageCopyCMFormatDescription())
      {
        VTParavirtualizationMessageGetSInt32();
        if (!v18)
        {
          *(v16 + 256) = sbuf == 1;
          v19 = cf;
          if (cf)
          {
            v20 = *(v16 + 24);
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v21)
            {
              v22 = v21(v20, v16 + 32, v19);
            }

            else
            {
              v22 = -12782;
            }

            if (!VTParavirtualizationMessageAppendSInt32())
            {
              vtParavirtualizationHostDecoderSession_sendMessageToGuest(v16, *type);
              if (!v22)
              {
                goto LABEL_191;
              }
            }
          }

          else
          {
            __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_6(&valueCallBacks);
            if (!LODWORD(valueCallBacks.version))
            {
              goto LABEL_191;
            }
          }
        }
      }

      *v156 = 0;
      v155[0] = OS_LOG_TYPE_DEFAULT;
      v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT);
      goto LABEL_188;
    }

    v74 = *(a1 + 32);
    v75 = *(a1 + 40);
    *type = 0;
    cf = 0;
    v159 = 0;
    *v156 = 0;
    sbuf = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v75, 4, &sbuf, v156) || VTParavirtualizationMessageCopyCFPropertyList(v75, 745235833, &cf))
    {
      goto LABEL_210;
    }

    if (cf && (v76 = CFGetTypeID(cf), v76 == CFStringGetTypeID()))
    {
      if (!vtParavirtualizationHostDecoderSession_isPropertyInDenyList(cf))
      {
        if (VTParavirtualizationMessageCopyCFPropertyList(v75, 745955692, type))
        {
          goto LABEL_210;
        }

        if (vtParavirtualizationHostDecoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v74, cf, *type, &v159) == -19097)
        {
          v77 = 0;
        }

        else
        {
          v122 = cf;
          v123 = v159;
          CMBaseObject = VTVideoDecoderGetCMBaseObject(*(v74 + 24));
          v125 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          v77 = v125 ? v125(CMBaseObject, v122, v123) : -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32())
        {
          goto LABEL_210;
        }

        vtParavirtualizationHostDecoderSession_sendMessageToGuest(v74, sbuf);
        if (v77)
        {
          goto LABEL_210;
        }

        goto LABEL_216;
      }

      __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_7(&valueCallBacks);
    }

    else
    {
      __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_8(&valueCallBacks);
    }

    if (LODWORD(valueCallBacks.version))
    {
LABEL_210:
      *v155 = 0;
      LOBYTE(pixelBufferOut) = 0;
      v128 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_216:
    if (cf)
    {
      CFRelease(cf);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (v159)
    {
      CFRelease(v159);
    }

    if (sbuf)
    {
      CFRelease(sbuf);
    }

    v116 = *v156;
    if (!*v156)
    {
      goto LABEL_304;
    }

    goto LABEL_303;
  }

  if (v4 <= 1684435564)
  {
    if (v4 != 1684234606)
    {
      if (v4 != 1684238192)
      {
        if (v4 != 1684433262)
        {
          goto LABEL_137;
        }

        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        *type = 0;
        cf = 0;
        if (!VTParavirtualizationCreateReplyAndByteStream(v10, 4, &cf, type))
        {
          v12 = *(v11 + 24);
          v13 = *(CMBaseObjectGetVTable() + 16);
          if (*v13 >= 2uLL && (v14 = v13[7]) != 0)
          {
            v15 = v14(v12);
          }

          else
          {
            v15 = -12782;
          }

          if (!VTParavirtualizationMessageAppendSInt32())
          {
            vtParavirtualizationHostDecoderSession_sendMessageToGuest(v11, cf);
            if (!v15)
            {
              goto LABEL_202;
            }
          }
        }

        goto LABEL_201;
      }

      v102 = *(a1 + 32);
      v103 = *(a1 + 40);
      *type = 0;
      cf = 0;
      v159 = 0;
      sbuf = 0;
      if (VTParavirtualizationCreateReplyAndByteStream(v103, 4, &v159, &sbuf) || VTParavirtualizationMessageCopyCFPropertyList(v103, 745235833, &cf))
      {
        goto LABEL_175;
      }

      if (cf && (v104 = CFGetTypeID(cf), v104 == CFStringGetTypeID()))
      {
        v105 = cf;
        v106 = VTVideoDecoderGetCMBaseObject(*(v102 + 24));
        v107 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v107)
        {
          v108 = v107(v106, v105, *MEMORY[0x1E695E480], type);
        }

        else
        {
          v108 = -12782;
        }

        if (VTParavirtualizationMessageAppendSInt32() || *type && VTParavirtualizationMessageAppendCFPropertyList())
        {
          goto LABEL_175;
        }

        vtParavirtualizationHostDecoderSession_sendMessageToGuest(v102, v159);
        if (v108)
        {
          goto LABEL_175;
        }
      }

      else
      {
        __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_9(&valueCallBacks);
        if (LODWORD(valueCallBacks.version))
        {
LABEL_175:
          *v156 = 0;
          v155[0] = OS_LOG_TYPE_DEFAULT;
          v120 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (*type)
      {
        CFRelease(*type);
      }

      if (v159)
      {
        CFRelease(v159);
      }

      v116 = sbuf;
      if (!sbuf)
      {
        goto LABEL_304;
      }

      goto LABEL_303;
    }

    v78 = *(a1 + 32);
    v79 = *(a1 + 40);
    valueCallBacks.version = 0;
    cf = 0;
    v162 = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v79, 4, &v162, &cf) && !VTParavirtualizationMessageCopyCMFormatDescription())
    {
      v80 = *(v78 + 24);
      version = valueCallBacks.version;
      v82 = *(CMBaseObjectGetVTable() + 16);
      if (*v82 >= 2uLL)
      {
        v83 = v82[6];
        if (v83)
        {
          v83(v80, version);
        }
      }

      if (!VTParavirtualizationMessageAppendSInt32())
      {
        vtParavirtualizationHostDecoderSession_sendMessageToGuest(v78, v162);
      }
    }

    if (valueCallBacks.version)
    {
      CFRelease(valueCallBacks.version);
    }

    if (v162)
    {
      CFRelease(v162);
    }

    v116 = cf;
    if (!cf)
    {
      goto LABEL_304;
    }

LABEL_303:
    CFRelease(v116);
    goto LABEL_304;
  }

  if (v4 == 1684435565)
  {
    v84 = *(a1 + 32);
    v85 = *(a1 + 40);
    *v155 = 0;
    *type = 0;
    cf = 0;
    v159 = 0;
    *v156 = 0;
    sbuf = 0;
    LODWORD(pixelBufferOut) = 0;
    LODWORD(v153) = 0;
    if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v85, 0, v155, 0))
    {
      v86 = *(v84 + 168);
      if ((v155[0] & 0x10) != 0)
      {
        if (!v86)
        {
          if (v85)
          {
            v136 = CFRetain(v85);
          }

          else
          {
            v136 = 0;
          }

          v87 = 0;
          *(v84 + 168) = v136;
          goto LABEL_293;
        }

        v87 = 0;
        if (!CMBlockBufferAppendBufferReference(v86, v85, 0, 0, 0))
        {
LABEL_293:
          if (sbuf)
          {
            CFRelease(sbuf);
          }

          if (*v156)
          {
            CFRelease(*v156);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (*type)
          {
            CFRelease(*type);
          }

          if (!v87)
          {
            goto LABEL_304;
          }

          v116 = v87;
          goto LABEL_303;
        }

LABEL_215:
        LODWORD(v152) = 0;
        v158[0] = OS_LOG_TYPE_DEFAULT;
        v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v129, v158[0]);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_293;
      }

      if ((!v86 || !CMBlockBufferAppendBufferReference(v86, v85, 0, 0, 0)) && !VTParavirtualizationCreateReplyAndByteStream(v85, 4, &cf, type))
      {
        v87 = *(v84 + 168);
        if (v87)
        {
          *(v84 + 168) = 0;
          v85 = v87;
        }

        if (!VTParavirtualizationMessageGetSInt64())
        {
          v88 = v159;
          if (!VTParavirtualizationMessageCopyCMSampleBuffer(v85, 745759334, *(v84 + 128), v84 + 232, v84 + 240, &sbuf))
          {
            if (sbuf)
            {
              FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
              CMFormatDescriptionGetMediaSubType(FormatDescription);
              VTParavirtualizationMessageGetUInt32();
              if (!v90 && !VTParavirtualizationMessageCopyCFDictionary(v85, 744910704, v156))
              {
                v91 = *v156;
                if (!*v156 || (v92 = *(v84 + 24), v93 = sbuf, v94 = *(CMBaseObjectGetVTable() + 16), *v94 < 4uLL) || (v95 = v94[11]) == 0 || (v96 = v95(v92, v88, v93, pixelBufferOut, v91, &v153), !*v156) || (v97 = v96, v96 == -12782))
                {
                  v98 = *(v84 + 24);
                  v99 = sbuf;
                  v100 = pixelBufferOut;
                  v101 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (v101)
                  {
                    v97 = v101(v98, v88, v99, v100, &v153);
                  }

                  else
                  {
                    v97 = -12782;
                  }
                }

                if (!VTParavirtualizationMessageAppendSInt32() && !VTParavirtualizationMessageAppendUInt32())
                {
                  vtParavirtualizationHostDecoderSession_sendMessageToGuest(v84, cf);
                  if (!v97)
                  {
                    goto LABEL_293;
                  }
                }
              }
            }

            else
            {
              __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_5(&valueCallBacks);
              if (!LODWORD(valueCallBacks.version))
              {
                goto LABEL_293;
              }
            }
          }
        }

        goto LABEL_215;
      }
    }

    v87 = 0;
    goto LABEL_215;
  }

  if (v4 == 1684631158)
  {
    v110 = *(a1 + 32);
    v109 = *(a1 + 40);
    *type = 0;
    cf = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v109, 4, &cf, type))
    {
      v111 = VTVideoDecoderGetCMBaseObject(*(v110 + 24));
      if (v111)
      {
        v112 = v111;
        v113 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        v114 = v113 ? v113(v112) : -12782;
      }

      else
      {
        v114 = -12780;
      }

      if (!VTParavirtualizationMessageAppendSInt32())
      {
        vtParavirtualizationHostDecoderSession_sendMessageToGuest(v110, cf);
        if (!v114)
        {
LABEL_202:
          if (cf)
          {
            CFRelease(cf);
          }

          v116 = *type;
          if (!*type)
          {
            goto LABEL_304;
          }

          goto LABEL_303;
        }
      }
    }

LABEL_201:
    LODWORD(v159) = 0;
    LOBYTE(sbuf) = 0;
    v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_202;
  }

  if (v4 != 1684895084)
  {
    goto LABEL_137;
  }

  v24 = *(a1 + 32);
  v23 = *(a1 + 40);
  *type = 0;
  cf = 0;
  v159 = 0;
  if (VTParavirtualizationCreateReplyAndByteStream(v23, 4, type, &v159) || VTParavirtualizationMessageCopyCFDictionary(v23, 745566831, &cf))
  {
    MutableCopy = 0;
    v27 = 0;
    v31 = 0;
    goto LABEL_247;
  }

  v25 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v27 = FigCFDictionaryCopyArrayOfKeys();
  v28 = 0;
  if (v27)
  {
    goto LABEL_37;
  }

LABEL_38:
  for (i = 0; v28 < i; i = CFArrayGetCount(v27))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v27, v28);
    if (vtParavirtualizationHostDecoderSession_isPropertyInDenyList(ValueAtIndex))
    {
      CFDictionaryRemoveValue(MutableCopy, ValueAtIndex);
    }

    ++v28;
    if (!v27)
    {
      goto LABEL_38;
    }

LABEL_37:
    ;
  }

  if (FigCFDictionaryGetCount() < 1)
  {
    __VTParavirtualizationHostDecoderSessionDeliverMessageFromGuest_block_invoke_cold_1(&valueCallBacks);
    v31 = 0;
    if (LODWORD(valueCallBacks.version))
    {
      goto LABEL_247;
    }

    goto LABEL_249;
  }

  v31 = CFDictionaryCreateMutable(v25, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v32 = FigCFDictionaryCopyArrayOfKeys();
  Count = FigCFDictionaryGetCount();
  if (Count < 1)
  {
    v36 = 0;
    goto LABEL_239;
  }

  v34 = Count;
  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = CFArrayGetValueAtIndex(v32, v35);
    v38 = CFDictionaryGetValue(MutableCopy, v37);
    valueCallBacks.version = 0;
    v39 = vtParavirtualizationHostDecoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(v24, v37, v38, &valueCallBacks);
    if (v39 != -19097)
    {
      if (!v36)
      {
        v36 = v39;
      }

      if (!v39)
      {
        FigCFDictionarySetValue();
      }

      if (valueCallBacks.version)
      {
        CFRelease(valueCallBacks.version);
      }

      goto LABEL_52;
    }

    if (v34 == 1)
    {
      break;
    }

LABEL_52:
    if (v34 == ++v35)
    {
      goto LABEL_239;
    }
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (valueCallBacks.version)
  {
    CFRelease(valueCallBacks.version);
  }

  v31 = 0;
LABEL_239:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v36 || ((v130 = *(v24 + 24), (v131 = *(*(CMBaseObjectGetVTable() + 16) + 32)) == 0) ? (v132 = -12782) : (v132 = v131(v130, v31)), VTParavirtualizationMessageAppendSInt32() || (vtParavirtualizationHostDecoderSession_sendMessageToGuest(v24, *type), v132)))
  {
LABEL_247:
    v133 = FigCFCopyCompactDescription();
    LODWORD(sbuf) = 0;
    v156[0] = OS_LOG_TYPE_DEFAULT;
    v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v133)
    {
      CFRelease(v133);
    }
  }

LABEL_249:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v27)
  {
    v126 = v27;
LABEL_192:
    CFRelease(v126);
  }

LABEL_193:
  if (*type)
  {
    CFRelease(*type);
  }

  v116 = v159;
  if (v159)
  {
    goto LABEL_303;
  }

LABEL_304:
  free(*(a1 + 48));
  free(*(a1 + 56));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions(CVPixelBufferPoolRef *poolOut, uint64_t a2, uint64_t a3, CVPixelBufferRef *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v37 = 0;
  cf = 0;
  v36 = 0;
  v35 = 0;
  surface = 0;
  v34 = 0;
  pixelBufferOut = 0;
  v32 = 0;
  if (*(poolOut + 32) >= 5u && *(poolOut + 256) && *(poolOut + 132))
  {
    v9 = poolOut + 18;
    v8 = poolOut[18];
    v10 = *MEMORY[0x1E695E480];
    if (v8)
    {
      goto LABEL_7;
    }

    appended = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, poolOut[17], poolOut + 18);
    if (!appended)
    {
      v8 = *v9;
LABEL_7:
      appended = CVPixelBufferPoolCreatePixelBuffer(v10, v8, &pixelBufferOut);
      if (appended)
      {
        goto LABEL_48;
      }

      goto LABEL_36;
    }

LABEL_48:
    v15 = appended;
    goto LABEL_49;
  }

  appended = VTParavirtualizationCreateMessageAndByteStream(1147303270, 2, (poolOut + 14), 0, &cf, &v37);
  if (appended)
  {
    goto LABEL_48;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(v37, 745566064, a3);
    if (appended)
    {
      goto LABEL_48;
    }
  }

  v12 = cf;
  v39 = 0;
  LODWORD(callBacks.version) = 0;
  *v41 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(cf, &v39, &callBacks, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((callBacks.version & 2) == 0)
    {
      VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_1(&v50);
      v15 = v50;
      goto LABEL_19;
    }

    MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(poolOut[12], v12, v41);
    if (!MessageTypeAndFlagsAndGuestUUID)
    {
      MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(poolOut, v12);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        v14 = poolOut[12];
        v50 = kVTParavirtualizationDefaultReplyTimeout;
        v51 = 0;
        MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v14, v39, *v41, &v50, &v36, &surface, &v32);
      }
    }
  }

  v15 = MessageTypeAndFlagsAndGuestUUID;
LABEL_19:
  VTParavirtualizationReplyClerkCleanUpReply(poolOut[12], *v41);
  if (!v15)
  {
    VTParavirtualizationMessageGetSInt32();
    if (appended)
    {
      goto LABEL_48;
    }

    v15 = v35;
    if (!v35)
    {
      appended = VTParavirtualizationMessageCopyCFUUID();
      if (appended)
      {
        goto LABEL_48;
      }

      if (*(poolOut + 132))
      {
        v16 = surface;
        if (!surface)
        {
          if (VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_2(&v50))
          {
            v15 = 0;
            goto LABEL_37;
          }

          goto LABEL_59;
        }

        v17 = *MEMORY[0x1E695E480];
      }

      else
      {
        v17 = *MEMORY[0x1E695E480];
        v16 = surface;
      }

      appended = CVPixelBufferCreateWithIOSurface(v17, v16, 0, &pixelBufferOut);
      if (appended)
      {
        goto LABEL_48;
      }

      v18 = v32;
      v19 = v34;
      FigSimpleMutexLock();
      if (poolOut[20] || (callBacks.version = 0, callBacks.retain = vtClonePendingFrameSurfaceStuff_0, callBacks.copyDescription = 0, callBacks.equal = 0, callBacks.release = vtFreePendingFrameSurfaceStuff_0, v20 = CFArrayCreateMutable(v17, 0, &callBacks), (poolOut[20] = v20) != 0))
      {
        dispatch_group_enter(poolOut[22]);
        CFArrayAppendValue(poolOut[20], 0);
        v21 = poolOut[20];
        Count = CFArrayGetCount(v21);
        ValueAtIndex = CFArrayGetValueAtIndex(v21, Count - 1);
        if (ValueAtIndex)
        {
          v24 = ValueAtIndex;
          *ValueAtIndex = a2;
          FigCFWeakReferenceStore();
          if (v19)
          {
            v25 = CFRetain(v19);
          }

          else
          {
            v25 = 0;
          }

          v24[2] = v25;
          v24[3] = v18;
        }

        FigSimpleMutexUnlock();
        goto LABEL_36;
      }

      if (VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions_cold_3(&callBacks, (poolOut + 19), &v50))
      {
LABEL_36:
        v15 = 0;
        *a4 = pixelBufferOut;
        pixelBufferOut = 0;
        goto LABEL_37;
      }

LABEL_59:
      v15 = v50;
    }
  }

LABEL_49:
  v39 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v28 = v39;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 & 0xFFFFFFFE;
  }

  if (v29)
  {
    v30 = poolOut[3];
    *v41 = 136316162;
    *&v41[4] = "VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions";
    v42 = 2048;
    v43 = poolOut;
    v44 = 2048;
    v45 = v30;
    v46 = 1024;
    v47 = a2;
    v48 = 1024;
    v49 = v15;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_37:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (surface)
  {
    CFRelease(surface);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v15;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  cf[27] = *MEMORY[0x1E69E9840];
  v17 = 0;
  cf[0] = 0;
  v15 = 0;
  v16 = 0;
  v7 = *(a1 + 128) >= 5u && *(a1 + 256) && *(a1 + 132) != 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1147497844, 2, a1 + 112, 0, cf, &v17);
  if (appended)
  {
    goto LABEL_28;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_28;
  }

  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
    goto LABEL_28;
  }

  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_28;
  }

  if (a5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    goto LABEL_16;
  }

  appended = VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments(v17, a5);
  if (appended)
  {
LABEL_28:
    v12 = appended;
    v10 = 0;
  }

  else
  {
    vtParavirtualizationHostDecoderSession_lookupAndRetainUUIDForPendingPixelBuffer(a1, a5, &v15);
    v10 = v15;
    if (!v15 || (v11 = VTParavirtualizationMessageAppendCFUUID(), !v11))
    {
LABEL_16:
      v12 = vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf[0], &kVTParavirtualizationCodecOperationReplyTimeout, &v16);
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v12 = v11;
  }

LABEL_17:
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_18:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t vtParavirtualizationHostDecoderSession_lookupAndRetainUUIDForPendingPixelBuffer(uint64_t a1, const void *a2, void *a3)
{
  FigSimpleMutexLock();
  v6 = *(a1 + 160);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), i);
        v11 = MEMORY[0x193AE2470](ValueAtIndex + 1);
        if (v11)
        {
          if (v11 == a2)
          {
            *a3 = ValueAtIndex[2];
            ValueAtIndex[2] = 0;
            CFRelease(v11);
            break;
          }

          CFRelease(v11);
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vtParavirtualizationHostDecoderSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 20));
  if (*(a1 + 16))
  {
    v6 = 1061109567;
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 104) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v4;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, OpaqueCMTaggedBufferGroup *a5)
{
  value[16] = *MEMORY[0x1E69E9840];
  v23 = 0;
  cf = 0;
  v22 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v10 = CFArrayCreateMutable(v7, 0, v8);
  v11 = v10;
  if (!Mutable)
  {
    VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_2(value);
    goto LABEL_38;
  }

  if (!v10)
  {
    VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame_cold_1(value);
LABEL_38:
    v18 = LODWORD(value[0]);
    if (!LODWORD(value[0]))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  appended = VTParavirtualizationCreateMessageAndByteStream(1148021094, 2, a1 + 112, 0, &cf, &v23);
  if (appended)
  {
    goto LABEL_35;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_35;
  }

  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
    goto LABEL_35;
  }

  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_35;
  }

  if (CMTaggedBufferGroupGetCount(a5) >= 1)
  {
    for (i = 0; i < CMTaggedBufferGroupGetCount(a5); ++i)
    {
      value[0] = 0;
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a5, i);
      if (CVPixelBufferAtIndex)
      {
        vtParavirtualizationHostDecoderSession_lookupAndRetainUUIDForPendingPixelBuffer(a1, CVPixelBufferAtIndex, value);
        v16 = value[0];
        if (value[0])
        {
          CFArrayAppendValue(Mutable, value[0]);
          v17 = 0;
          if (!TagCollectionAtIndex)
          {
            goto LABEL_16;
          }

LABEL_15:
          CFArrayAppendValue(v11, TagCollectionAtIndex);
          goto LABEL_16;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = 1;
      if (TagCollectionAtIndex)
      {
        goto LABEL_15;
      }

LABEL_16:
      if ((v17 & 1) == 0)
      {
        CFRelease(v16);
      }
    }
  }

  appended = VTParavirtualizationMessageAppendCFUUIDArray(v23, 745892139, Mutable);
  if (appended || (appended = VTParavirtualizationMessageAppendFigTagCollectionArray(v23, 745825067, v11), appended))
  {
LABEL_35:
    v18 = appended;
  }

  else
  {
    v18 = vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v22);
    if (!v18)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  v19 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v18;
}

uint64_t VTParavirtualizationHostDecoderSessionGetDestinationPixelBufferAttributes(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v7 = 0;
  cf[0] = 0;
  v5 = 0;
  v6 = 0;
  if (VTParavirtualizationCreateMessageAndByteStream(1147433057, 2, a1 + 112, 0, cf, &v7) || vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf[0], &kVTParavirtualizationDefaultReplyTimeout, &v6) || VTParavirtualizationMessageCopyCFDictionary(v6, 745562721, &v5))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v2 = *(a1 + 248);
    if (v2)
    {
      CFRelease(v2);
    }

    *(a1 + 248) = v5;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t VTParavirtualizationHostDecoderSessionSetTileDecodeRequirements(uint64_t a1, uint64_t a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  v7 = 0;
  appended = VTParavirtualizationCopyFilteredPixelBufferAttributes(a2, &v7);
  if (appended || (appended = VTParavirtualizationCreateMessageAndByteStream(1413772146, 0, a1 + 112, 0, cf, &v8), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended))
  {
    v4 = appended;
  }

  else
  {
    v4 = vtParavirtualizationHostDecoderSession_sendMessageToGuest(a1, cf[0]);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_7:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

uint64_t VTParavirtualizationHostDecoderSessionEmitDecodedTile(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf[27] = *MEMORY[0x1E69E9840];
  v17 = 0;
  cf[0] = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  theArray = 0;
  v8 = VTParavirtualizationCreateMessageAndByteStream(1413768557, 2, a1 + 112, 0, cf, &v17);
  if (v8 || (v8 = VTParavirtualizationMessageAppendSInt64(), v8) || (v8 = VTParavirtualizationMessageAppendSInt32(), v8) || (v8 = VTParavirtualizationMessageAppendUInt32(), v8))
  {
    v10 = v8;
    vtParavirtualizationHostDecoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, 0, 0, 0);
  }

  else
  {
    vtParavirtualizationHostDecoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(a1, a2, &v15, &theArray, &v13);
    if (a5 && (CFArrayGetValueAtIndex(theArray, 0), appended = VTParavirtualizationMessageAppendCFUUID(), appended))
    {
      v10 = appended;
    }

    else
    {
      v10 = vtParavirtualizationHostDecoderSession_sendMessageToGuestAndCopyReplySync(a1, cf[0], &kVTParavirtualizationCodecOperationReplyTimeout, &v16);
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t vtParavirtualizationHostDecoderSession_lookupRetainAndForgetPendingTilePixelBuffersAndUUIDsAndMappingIDs(uint64_t a1, const void *a2, void *a3, void *a4, void *a5)
{
  FigSimpleMutexLock();
  v10 = *(a1 + 192);
  if (!v10)
  {
    return FigSimpleMutexUnlock();
  }

  Value = CFDictionaryGetValue(v10, a2);
  if (!Value)
  {
    return FigSimpleMutexUnlock();
  }

  v12 = Value;
  v27 = a5;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a3)
  {
    *a3 = *v12;
    *v12 = 0;
  }

  if (a4)
  {
    *a4 = v12[1];
    v12[1] = 0;
  }

  for (i = 0; ; ++i)
  {
    Count = v12[2];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    FigCFArrayGetInt64AtIndex();
    SInt64 = FigCFNumberCreateSInt64();
    v17 = CFDictionaryGetValue(*(a1 + 200), SInt64);
    v18 = v17;
    if (v17)
    {
      v19 = CFArrayGetCount(v17);
      if (v19 >= 1)
      {
        v20 = v19;
        v21 = FigCFNumberCreateSInt64();
        v28.location = 0;
        v28.length = v20;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v18, v28, v21);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v18, FirstIndexOfValue);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }
    }

    if (CFArrayGetCount(v18))
    {
      if (!SInt64)
      {
        continue;
      }

LABEL_19:
      CFRelease(SInt64);
      continue;
    }

    CFDictionaryRemoveValue(*(a1 + 200), SInt64);
    FigCFArrayAppendInt64();
    if (SInt64)
    {
      goto LABEL_19;
    }
  }

  if (v27)
  {
    *v27 = v12[2];
    v12[2] = 0;
  }

  CFDictionaryRemoveValue(*(a1 + 192), a2);
  dispatch_group_leave(*(a1 + 224));
  ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
  v24 = ConcatenationOfTwoArrays;
  v25 = *(a1 + 208);
  *(a1 + 208) = ConcatenationOfTwoArrays;
  if (ConcatenationOfTwoArrays)
  {
    CFRetain(ConcatenationOfTwoArrays);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return FigSimpleMutexUnlock();
}

void VTParavirtualizationHostDecoderSessionInvalidate(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  *(a1 + 16) = 1;
  os_unfair_lock_unlock((a1 + 20));
  v2 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationHostDecoderSessionInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_6_2;
  block[4] = a1;
  dispatch_sync(v2, block);
}

uint64_t __VTParavirtualizationHostDecoderSessionInvalidate_block_invoke(uint64_t a1)
{
  result = VTVideoDecoderGetCMBaseObject(*(*(a1 + 32) + 24));
  if (result)
  {
    v2 = result;
    VTable = CMBaseObjectGetVTable();
    v4 = *(VTable + 8);
    result = VTable + 8;
    v5 = *(v4 + 24);
    if (v5)
    {

      return v5(v2);
    }
  }

  return result;
}

intptr_t VTParavirtualizationHostDecoderSessionCompleteInvalidate(intptr_t result)
{
  v1 = result;
  v2 = *(result + 176);
  if (v2)
  {
    v3 = dispatch_time(0, 2000000000);
    result = dispatch_group_wait(v2, v3);
    if (result)
    {
      v4 = *MEMORY[0x1E695E480];
      v5 = 2;
      do
      {
        Mutable = CFStringCreateMutable(v4, 0);
        FigSimpleMutexLock();
        for (i = 0; ; ++i)
        {
          Count = *(v1 + 160);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (i >= Count)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 160), i);
          CFStringAppendFormat(Mutable, 0, @"%p-", *ValueAtIndex);
        }

        FigSimpleMutexUnlock();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        VTDecoderSessionCleanUpAfterDecode(v1 + 32);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v5 *= 2;
        v11 = *(v1 + 176);
        v12 = dispatch_time(0, 1000000000 * v5);
        result = dispatch_group_wait(v11, v12);
      }

      while (result);
    }
  }

  v13 = *(v1 + 224);
  if (v13)
  {
    v14 = dispatch_time(0, 2000000000);
    result = dispatch_group_wait(v13, v14);
    if (result)
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = 2;
      do
      {
        v17 = CFStringCreateMutable(v15, 0);
        FigSimpleMutexLock();
        FigCFDictionaryApplyBlock();
        FigSimpleMutexUnlock();
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (v17)
        {
          CFRelease(v17);
        }

        v16 *= 2;
        v19 = *(v1 + 224);
        v20 = dispatch_time(0, 1000000000 * v16);
        result = dispatch_group_wait(v19, v20);
      }

      while (result);
    }
  }

  return result;
}

double vtParavirtualizationHostDecoderSession_Init(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
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

__CFString *vtParavirtualizationHostDecoderSession_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostDecoderSession %p RC: %d decoder %p", a1, v4, a1[3]);
  return Mutable;
}

uint64_t vtParavirtualizationHostDecoderSession_isPropertyInDenyList(void *value)
{
  if (vtParavirtualizationHostDecoderSession_isPropertyInDenyList_onceToken != -1)
  {
    vtParavirtualizationHostDecoderSession_isPropertyInDenyList_cold_1();
  }

  v2 = vtParavirtualizationHostDecoderSession_isPropertyInDenyList_denyList;

  return CFSetContainsValue(v2, value);
}

uint64_t vtParavirtualizationHostDecoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (vtParavirtualizationHostDecoderSession_getSpecialCaseHandlersForSettingProperties_sCreateDictionaryOnce != -1)
  {
    vtParavirtualizationHostDecoderSession_handleAnySpecialCaseSetPropertyAndCopyReplacementValue_cold_1();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *(Value + 8);

    return v8(a1, a3, a4);
  }

  else
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    return 0;
  }
}

CFSetRef __vtParavirtualizationHostDecoderSession_isPropertyInDenyList_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = @"Paravirtualized";
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 1, MEMORY[0x1E695E9F8]);
  vtParavirtualizationHostDecoderSession_isPropertyInDenyList_denyList = result;
  return result;
}

CFDictionaryRef __vtParavirtualizationHostDecoderSession_getSpecialCaseHandlersForSettingProperties_block_invoke()
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], &values, &values, 0, MEMORY[0x1E695E9D8], 0);
  vtParavirtualizationHostDecoderSession_getSpecialCaseHandlersForSettingProperties_sSpecialCaseHandlersForSettingProperties = result;
  return result;
}

CFMutableArrayRef *vtClonePendingTileSurfaceStuff_0(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 24, 0x20040960023A9, 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  *v1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v1[1] = CFArrayCreateMutable(v2, 0, v3);
  v1[2] = CFArrayCreateMutable(v2, 0, v3);
  return v1;
}

void vtFreePendingTileSurfaceStuff_0(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
    *ptr = 0;
  }

  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  v5 = ptr[2];
  if (v5)
  {
    CFRelease(v5);
    ptr[2] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

double vtClonePendingFrameSurfaceStuff_0(uint64_t a1)
{
  v1 = MEMORY[0x193AE0CD0](a1, 32, 0x10600408D5616BCLL, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

void vtFreePendingFrameSurfaceStuff_0(const __CFAllocator *a1, void *a2)
{
  FigCFWeakReferenceStore();
  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
    a2[2] = 0;
  }

  CFAllocatorDeallocate(a1, a2);
}

uint64_t vt_Copy_2vuyITU601_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38155 * *v12 - 610480;
          v17 = 38155 * v12[2] - 610480;
          v18 = -12836 * v14 - 26638 * v15;
          v19 = 66101 * v14;
          v20 = 52299 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v13 = -1;
          v13[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v13[2] = v24;
          v13[3] = v26;
          v13[4] = -1;
          v13[5] = v28;
          v13[6] = v30;
          v13[7] = v31 & ~(v31 >> 31);
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU601_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38155 * *v12 - 610480;
          v17 = 38155 * v12[2] - 610480;
          v18 = -12836 * v14 - 26638 * v15;
          v19 = 66101 * v14;
          v20 = 52299 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v13 = v26;
          v13[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v13[2] = v22;
          v13[3] = -1;
          v13[4] = v31 & ~(v31 >> 31);
          v13[5] = v29;
          v13[6] = v27 & ~(v27 >> 31);
          v13[7] = -1;
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU601_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38155 * v13[2] - 610480;
          v18 = -12836 * v15 - 26638 * v16;
          v19 = 52299 * v16;
          v20 = 66101 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v13 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU601_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38155 * v14 - 610480) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38155 * v15 - 610480) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU601_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38155 * *v13 - 610480;
          v17 = 38155 * v13[2] - 610480;
          v18 = -12836 * v14 - 26638 * v15;
          v19 = 66101 * v14;
          v20 = 52299 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v12 = -1;
          v12[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v12[2] = v24;
          v12[3] = v26;
          v12[4] = -1;
          v12[5] = v28;
          v12[6] = v30;
          v12[7] = v31 & ~(v31 >> 31);
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU601_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38155 * *v13 - 610480;
          v17 = 38155 * v13[2] - 610480;
          v18 = -12836 * v14 - 26638 * v15;
          v19 = 66101 * v14;
          v20 = 52299 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v12 = v26;
          v12[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v12[2] = v22;
          v12[3] = -1;
          v12[4] = v31 & ~(v31 >> 31);
          v12[5] = v29;
          v12[6] = v27 & ~(v27 >> 31);
          v12[7] = -1;
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU601_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v9;
        v14 = v10;
        do
        {
          v15 = v14[1] - 128;
          v16 = v14[3] - 128;
          v17 = 38155 * v14[2] - 610480;
          v18 = -12836 * v15 - 26638 * v16;
          v19 = 52299 * v16;
          v20 = 66101 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v14 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v13 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v13 + 4) = v22;
          *(v13 + 5) = v26 & ~(v26 >> 31);
          v14 += 4;
          v13 += 6;
          --v12;
        }

        while (v12);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU601_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = (38155 * *v13 - 610480) >> 15;
          if (v14 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          else
          {
            v15 = (38155 * *v13 - 610480) >> 15;
          }

          if (v14 >= 0)
          {
            v16 = ~v15;
          }

          else
          {
            v16 = -1;
          }

          v17 = (38155 * v13[2] - 610480) >> 15;
          if (v17 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          else
          {
            v18 = (38155 * v13[2] - 610480) >> 15;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          *v12 = v16;
          v12[1] = v19;
          v13 += 4;
          v12 += 2;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU601_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38155 * *v14 - 610480;
          v20 = 38155 * v14[2] - 610480;
          v21 = -12836 * v17 - 26638 * v18;
          v22 = 66101 * v17;
          v23 = 52299 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = *v16;
          v15[1] = v25;
          v15[2] = v27;
          v15[3] = v29;
          v15[4] = v16[1];
          v15[5] = v31;
          v15[6] = v33;
          v15[7] = v34 & ~(v34 >> 31);
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU601_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38155 * *v14 - 610480;
          v20 = 38155 * v14[2] - 610480;
          v21 = -12836 * v17 - 26638 * v18;
          v22 = 66101 * v17;
          v23 = 52299 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = v29;
          v15[1] = v27;
          v15[2] = v25;
          v15[3] = *v16;
          v15[4] = v34 & ~(v34 >> 31);
          v15[5] = v33;
          v15[6] = v31;
          v15[7] = v16[1];
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU601_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38155 * v13[2] - 610480;
          v18 = -12836 * v15 - 26638 * v16;
          v19 = 52299 * v16;
          v20 = 66101 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v13 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU601_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38155 * v14 - 610480) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38155 * v15 - 610480) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU709_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38155 * *v12 - 610480;
          v17 = 38155 * v12[2] - 610480;
          v18 = -6987 * v14 - 17461 * v15;
          v19 = 69219 * v14;
          v20 = 58745 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v13 = -1;
          v13[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v13[2] = v24;
          v13[3] = v26;
          v13[4] = -1;
          v13[5] = v28;
          v13[6] = v30;
          v13[7] = v31 & ~(v31 >> 31);
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU709_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38155 * *v12 - 610480;
          v17 = 38155 * v12[2] - 610480;
          v18 = -6987 * v14 - 17461 * v15;
          v19 = 69219 * v14;
          v20 = 58745 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v13 = v26;
          v13[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v13[2] = v22;
          v13[3] = -1;
          v13[4] = v31 & ~(v31 >> 31);
          v13[5] = v29;
          v13[6] = v27 & ~(v27 >> 31);
          v13[7] = -1;
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU709_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38155 * v13[2] - 610480;
          v18 = -6987 * v15 - 17461 * v16;
          v19 = 58745 * v16;
          v20 = 69219 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v13 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU709_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38155 * v14 - 610480) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38155 * v15 - 610480) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU709_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38155 * *v13 - 610480;
          v17 = 38155 * v13[2] - 610480;
          v18 = -6987 * v14 - 17461 * v15;
          v19 = 69219 * v14;
          v20 = 58745 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v12 = -1;
          v12[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v12[2] = v24;
          v12[3] = v26;
          v12[4] = -1;
          v12[5] = v28;
          v12[6] = v30;
          v12[7] = v31 & ~(v31 >> 31);
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU709_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38155 * *v13 - 610480;
          v17 = 38155 * v13[2] - 610480;
          v18 = -6987 * v14 - 17461 * v15;
          v19 = 69219 * v14;
          v20 = 58745 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v12 = v26;
          v12[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v12[2] = v22;
          v12[3] = -1;
          v12[4] = v31 & ~(v31 >> 31);
          v12[5] = v29;
          v12[6] = v27 & ~(v27 >> 31);
          v12[7] = -1;
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU709_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v9;
        v14 = v10;
        do
        {
          v15 = v14[1] - 128;
          v16 = v14[3] - 128;
          v17 = 38155 * v14[2] - 610480;
          v18 = -6987 * v15 - 17461 * v16;
          v19 = 58745 * v16;
          v20 = 69219 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v14 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v13 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v13 + 4) = v22;
          *(v13 + 5) = v26 & ~(v26 >> 31);
          v14 += 4;
          v13 += 6;
          --v12;
        }

        while (v12);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU709_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = (38155 * *v13 - 610480) >> 15;
          if (v14 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          else
          {
            v15 = (38155 * *v13 - 610480) >> 15;
          }

          if (v14 >= 0)
          {
            v16 = ~v15;
          }

          else
          {
            v16 = -1;
          }

          v17 = (38155 * v13[2] - 610480) >> 15;
          if (v17 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          else
          {
            v18 = (38155 * v13[2] - 610480) >> 15;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          *v12 = v16;
          v12[1] = v19;
          v13 += 4;
          v12 += 2;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU709_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38155 * *v14 - 610480;
          v20 = 38155 * v14[2] - 610480;
          v21 = -6987 * v17 - 17461 * v18;
          v22 = 69219 * v17;
          v23 = 58745 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = *v16;
          v15[1] = v25;
          v15[2] = v27;
          v15[3] = v29;
          v15[4] = v16[1];
          v15[5] = v31;
          v15[6] = v33;
          v15[7] = v34 & ~(v34 >> 31);
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU709_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a5;
    v8 = *a3;
    v9 = a3[1];
    v10 = a4[1];
    v11 = *a4 + 1;
    v12 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v13 = a1 >> 1;
        v14 = v11;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v14 - 1) - 128;
          v18 = v14[1] - 128;
          v19 = 38155 * *v14 - 610480;
          v20 = 38155 * v14[2] - 610480;
          v21 = -6987 * v17 - 17461 * v18;
          v22 = 69219 * v17;
          v23 = 58745 * v18;
          v24 = (v23 + v19) >> 15;
          if (v24 >= 255)
          {
            v24 = 255;
          }

          v25 = v24 & ~(v24 >> 31);
          v26 = (v21 + v19) >> 15;
          if (v26 >= 255)
          {
            v26 = 255;
          }

          v27 = v26 & ~(v26 >> 31);
          v28 = (v22 + v19) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v23 + v20) >> 15;
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v31 = v30 & ~(v30 >> 31);
          v32 = (v21 + v20) >> 15;
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v33 = v32 & ~(v32 >> 31);
          v34 = (v22 + v20) >> 15;
          if (v34 >= 255)
          {
            v34 = 255;
          }

          *v15 = v29;
          v15[1] = v27;
          v15[2] = v25;
          v15[3] = *v16;
          v15[4] = v34 & ~(v34 >> 31);
          v15[5] = v33;
          v15[6] = v31;
          v15[7] = v16[1];
          v15 += 8;
          v14 += 4;
          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v10 += v9;
      v12 += v7;
      ++v6;
      v11 += v8;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU709_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38155 * v13[2] - 610480;
          v18 = -6987 * v15 - 17461 * v16;
          v19 = 58745 * v16;
          v20 = 69219 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38155 * *v13 - 610480;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_a2vyITU709_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38155 * v14 - 610480) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38155 * v15 - 610480) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU2020_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38267 * *v12 - 612272;
          v17 = 38267 * v12[2] - 612272;
          v18 = -6155 * v14 - 21375 * v15;
          v19 = 70388 * v14;
          v20 = 55169 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v13 = -1;
          v13[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v13[2] = v24;
          v13[3] = v26;
          v13[4] = -1;
          v13[5] = v28;
          v13[6] = v30;
          v13[7] = v31 & ~(v31 >> 31);
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU2020_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a4 + 1;
    v10 = *a6;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = *(v12 - 1) - 128;
          v15 = v12[1] - 128;
          v16 = 38267 * *v12 - 612272;
          v17 = 38267 * v12[2] - 612272;
          v18 = -6155 * v14 - 21375 * v15;
          v19 = 70388 * v14;
          v20 = 55169 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v13 = v26;
          v13[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v13[2] = v22;
          v13[3] = -1;
          v13[4] = v31 & ~(v31 >> 31);
          v13[5] = v29;
          v13[6] = v27 & ~(v27 >> 31);
          v13[7] = -1;
          v13 += 8;
          v12 += 4;
          --v11;
        }

        while (v11);
      }

      v10 += v8;
      ++v6;
      v9 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU2020_24RGB(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 1;
    v11.i64[0] = 0xFF000000FFLL;
    v11.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a1 >= 2)
      {
        v12 = a1 >> 1;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(v13 - 1) - 128;
          v16 = v13[1] - 128;
          v17 = 38267 * v13[2] - 612272;
          v18 = -6155 * v15 - 21375 * v16;
          v19 = 55169 * v16;
          v20 = 70388 * v15;
          v21 = (v18 + v17) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23.i32[0] = 38267 * *v13 - 612272;
          v23.i32[1] = v18;
          v23.i64[1] = __PAIR64__(v17, v23.u32[0]);
          v24.i64[0] = __PAIR64__(v23.u32[0], v19);
          v24.i64[1] = __PAIR64__(v19, v20);
          v25 = vaddq_s32(v23, v24);
          if ((v20 + v17) >> 15 >= 255)
          {
            v26 = 255;
          }

          else
          {
            v26 = (v20 + v17) >> 15;
          }

          *v14 = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vshrq_n_s32(v25, 0xFuLL), v11), 0)), *v11.i8).u32[0];
          *(v14 + 4) = v22;
          *(v14 + 5) = v26 & ~(v26 >> 31);
          v14 += 6;
          v13 += 4;
          --v12;
        }

        while (v12);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuyITU2020_8GRAYSCALE(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4 + 3;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = *(v12 - 2);
          v16 = *v12;
          v12 += 4;
          v15 = v16;
          v17 = (38267 * v14 - 612272) >> 15;
          if (v17 >= 255)
          {
            v18 = -1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0)
          {
            v19 = ~v18;
          }

          else
          {
            v19 = -1;
          }

          v20 = (38267 * v15 - 612272) >> 15;
          if (v20 >= 255)
          {
            v21 = -1;
          }

          else
          {
            v21 = v20;
          }

          if (v20 >= 0)
          {
            v22 = ~v21;
          }

          else
          {
            v22 = -1;
          }

          *v13 = v19;
          v13[1] = v22;
          v13 += 2;
          --v11;
        }

        while (v11);
      }

      v9 += v8;
      ++v6;
      v10 += v7;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU2020_32ARGB(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38267 * *v13 - 612272;
          v17 = 38267 * v13[2] - 612272;
          v18 = -6155 * v14 - 21375 * v15;
          v19 = 70388 * v14;
          v20 = 55169 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = v27 & ~(v27 >> 31);
          v29 = (v18 + v17) >> 15;
          if (v29 >= 255)
          {
            v29 = 255;
          }

          v30 = v29 & ~(v29 >> 31);
          v31 = (v19 + v17) >> 15;
          *v12 = -1;
          v12[1] = v22;
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v12[2] = v24;
          v12[3] = v26;
          v12[4] = -1;
          v12[5] = v28;
          v12[6] = v30;
          v12[7] = v31 & ~(v31 >> 31);
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvsITU2020_32BGRA(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4, uint64_t *a5, void *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = a1 >> 1;
        v12 = v9;
        v13 = v10;
        do
        {
          v14 = v13[1] - 128;
          v15 = v13[3] - 128;
          v16 = 38267 * *v13 - 612272;
          v17 = 38267 * v13[2] - 612272;
          v18 = -6155 * v14 - 21375 * v15;
          v19 = 70388 * v14;
          v20 = 55169 * v15;
          v21 = (v20 + v16) >> 15;
          if (v21 >= 255)
          {
            v21 = 255;
          }

          v22 = v21 & ~(v21 >> 31);
          v23 = (v18 + v16) >> 15;
          if (v23 >= 255)
          {
            v23 = 255;
          }

          v24 = v23 & ~(v23 >> 31);
          v25 = (v19 + v16) >> 15;
          if (v25 >= 255)
          {
            v25 = 255;
          }

          v26 = v25 & ~(v25 >> 31);
          v27 = (v20 + v17) >> 15;
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v28 = (v18 + v17) >> 15;
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v29 = v28 & ~(v28 >> 31);
          v30 = (v19 + v17) >> 15;
          *v12 = v26;
          v12[1] = v24;
          if (v30 >= 255)
          {
            v31 = 255;
          }

          else
          {
            v31 = v30;
          }

          v12[2] = v22;
          v12[3] = -1;
          v12[4] = v31 & ~(v31 >> 31);
          v12[5] = v29;
          v12[6] = v27 & ~(v27 >> 31);
          v12[7] = -1;
          v13 += 4;
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}