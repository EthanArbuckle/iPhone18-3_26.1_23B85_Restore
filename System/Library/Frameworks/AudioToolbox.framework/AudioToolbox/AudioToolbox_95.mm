void noise_est_down(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, float a9, __int16 a10, __int16 a11, float *a12, float *a13, float *a14)
{
  LOWORD(v23) = a10;
  *a12 = 0.0;
  v24 = 0.0;
  if (a10 > a11)
  {
LABEL_12:
    v30 = log10(v24);
    v31 = 0;
    *&v30 = v30;
    *a12 = *&v30 * 10.0;
    while (1)
    {
      v32 = (a1 + v31);
      if (a1 + v31 < a1)
      {
        break;
      }

      v33 = v32 + 20;
      v34 = (v32 + 1) > a2 || v32 > v32 + 1;
      v35 = v32 + 21;
      v36 = !v34 && v33 >= a1;
      v37 = !v36 || v35 > a2;
      v38 = v37 || v33 > v35;
      v39 = (a7 + v31);
      v40 = a7 + v31 + 4;
      v41 = !v38 && v39 >= a7;
      v42 = !v41 || v40 > a8;
      if (v42 || v39 > v40)
      {
        break;
      }

      *v39 = (*v32 + v32[20]) * 0.5;
      v31 += 4;
      if (v31 == 80)
      {
        v44 = 0;
        v45 = 0.1;
        while (1)
        {
          v46 = (a3 + v44);
          v47 = a3 + v44 + 4;
          v48 = a3 + v44 < a3 || v47 > a4;
          v49 = v48 || v46 > v47;
          v50 = (a7 + v44);
          v51 = a7 + v44 + 4;
          v52 = !v49 && v50 >= a7;
          v53 = !v52 || v51 > a8;
          if (v53 || v50 > v51)
          {
            break;
          }

          v55 = (a5 + v44);
          if (a5 + v44 < a5 || (v55 + 1) > a6 || v55 > v55 + 1)
          {
            break;
          }

          v56 = (*v50 * 0.1) + (*v46 * 0.9);
          *v55 = v56;
          if (v56 < *v46)
          {
            *v46 = v56;
          }

          v44 += 4;
          if (v44 == 80)
          {
            v57 = vabds_f32(*a13, a9);
            if (v57 > 3.0)
            {
              v57 = 3.0;
            }

            v58 = (v57 * 0.02) + (*a14 * 0.98);
            if (v58 >= 0.1)
            {
              v45 = v58;
            }

            *a14 = v45;
            return;
          }
        }

        break;
      }
    }
  }

  else
  {
    v25 = 0.0;
    while (1)
    {
      v26 = (a3 + 4 * v23);
      v27 = v26 + 1;
      v28 = v26 < a3 || v27 > a4;
      if (v28 || v26 > v27)
      {
        break;
      }

      v25 = *v26 + v25;
      *a12 = v25;
      v23 = (v23 + 1);
      if (v23 > a11)
      {
        v24 = v25;
        goto LABEL_12;
      }
    }
  }

  __break(0x5519u);
}

void dtx(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v5 = (a1 + 67462);
  v6 = a1 + 24876;
  if (!*(a1 + 18612))
  {
    *(a1 + 148) = 20;
    v11 = *a1 != 1 && *(a1 + 142) == 0;
    v7 = (a1 + 144);
    v8 = *(a1 + 144);
    *(a1 + 146) = v11;
    goto LABEL_15;
  }

  v7 = (a1 + 144);
  v8 = *(a1 + 144);
  v9 = *(a1 + 18612) >= 3 && a2 == 0;
  if (!v9 || v8 == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 39848))
  {
LABEL_10:
    v8 = 1;
    goto LABEL_15;
  }

  v18 = *(a1 + 52108);
  if (v18 != 4 && !*(a1 + 142))
  {
    if (*(a1 + 104) >= 2401)
    {
      v21 = *(a1 + 80);
      if (v21 == -1 || v21 == *(a1 + 64))
      {
        goto LABEL_34;
      }

      if (v21 >= 24401)
      {
        if (*(a1 + 24992) >= 15.0)
        {
          goto LABEL_34;
        }

        *(a1 + 64) = v21;
      }

      else
      {
        *(a1 + 64) = v21;
        if (v21 == 7200 && *(a1 + 150))
        {
          goto LABEL_185;
        }
      }

      *(a1 + 150) = 0;
LABEL_185:
      *(a1 + 67462) = *(a1 + 67466);
      *(a1 + 130) = *(a1 + 138);
      v59 = *(a1 + 4);
      goto LABEL_198;
    }

    v24 = *(a1 + 72);
    if (v24 == *(a1 + 64))
    {
      goto LABEL_34;
    }

    if (v24 >= 24401)
    {
      if (*(a1 + 24992) >= 15.0)
      {
        goto LABEL_34;
      }

      *(a1 + 64) = v24;
    }

    else
    {
      *(a1 + 64) = v24;
      if (v24 == 7200 && *(a1 + 150))
      {
LABEL_170:
        *(a1 + 67468) = 0;
        if (*v5 && v24 == 13200 && *(a1 + 67474) >= 1)
        {
          v58 = *(a1 + 130);
          if (v58)
          {
            v58 = 1;
            *(a1 + 67468) = 1;
          }

          *v5 = v58;
          *(a1 + 130) = *(a1 + 136);
          v59 = 1;
          goto LABEL_198;
        }

        *v5 = 0;
        *(a1 + 130) = *(a1 + 136);
        v59 = 1;
        if (v24 > 24399)
        {
          if (v24 > 63999)
          {
            if (v24 == 64000)
            {
              goto LABEL_198;
            }

            if (v24 != 96000)
            {
              v60 = 128000;
LABEL_196:
              if (v24 != v60)
              {
                goto LABEL_34;
              }
            }
          }

          else if (v24 != 24400)
          {
            if (v24 == 32000)
            {
              goto LABEL_198;
            }

            v60 = 48000;
            goto LABEL_196;
          }
        }

        else
        {
          if (v24 <= 9599)
          {
            if (v24 != 5900 && v24 != 7200 && v24 != 8000)
            {
              goto LABEL_34;
            }

LABEL_198:
            *a1 = v59;
            goto LABEL_34;
          }

          if (v24 != 9600)
          {
            if (v24 == 13200)
            {
              goto LABEL_198;
            }

            v60 = 16400;
            goto LABEL_196;
          }
        }

        v59 = 2;
        goto LABEL_198;
      }
    }

    *(a1 + 150) = 0;
    goto LABEL_170;
  }

LABEL_34:
  v19 = *(a1 + 64);
  if (v19 >= 24401 && *(a1 + 24992) >= 15.0)
  {
    goto LABEL_10;
  }

  *(a1 + 148) = 0;
  if (*(a1 + 142))
  {
    *(a1 + 80) = -1;
    if (*(a1 + 24996))
    {
      *(a1 + 96) = 0;
      goto LABEL_56;
    }

    v20 = 1750;
  }

  else
  {
    *(a1 + 80) = v19;
    *(a1 + 138) = *(a1 + 130);
    *(a1 + 4) = *a1;
    *(a1 + 67466) = *(a1 + 67462);
    if (*(a1 + 24996))
    {
      v9 = v18 == 0;
      v20 = 2400;
      if (v9)
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 2400;
    }
  }

  *(a1 + 96) = v20;
LABEL_56:
  if (v19 <= 24400 && *(a1 + 146) == 1)
  {
    if (v19 == 9600 || v19 == 24400 || v19 == 16400)
    {
      *a1 = 2;
    }

    goto LABEL_10;
  }

  *(a1 + 146) = 0;
  if (*a1 == 2)
  {
    *(a1 + 154) = 1;
  }

  v8 = 1;
  *a1 = 1;
LABEL_15:
  v12 = *(a1 + 96);
  if (!v12 || v12 == 1750 || v12 == 2400)
  {
    goto LABEL_81;
  }

  *(a1 + 24996) = 0;
  v13 = *(a1 + 142);
  if (*(a1 + 142))
  {
    v14 = 3;
  }

  else
  {
    v14 = 8;
  }

  if (v14 >= *(a1 + 25000))
  {
    LOWORD(v14) = *(a1 + 25000);
  }

  *(a1 + 24998) = v14;
  *(a1 + 25576) = 0;
  v15 = *(a1 + 148);
  if (v15 >= 20)
  {
    if (!v13)
    {
      if (*(a1 + 146) == 1)
      {
        if (*(a1 + 128))
        {
          if (*(a1 + 128) < 1)
          {
            goto LABEL_77;
          }

          v22 = *v6;
          v23 = 10.0;
        }

        else
        {
          v22 = *v6;
          v23 = 2.0;
        }

        if (v22 < v23)
        {
          v25 = 0;
          goto LABEL_76;
        }
      }

      else if (!*(a1 + 146))
      {
        if (*(a1 + 128))
        {
          if (*(a1 + 128) < 1)
          {
            goto LABEL_77;
          }

          v16 = *v6;
          v17 = 45.0;
        }

        else
        {
          v16 = *v6;
          v17 = 9.0;
        }

        if (v16 > v17)
        {
          v25 = 1;
LABEL_76:
          *(a1 + 146) = v25;
        }
      }

LABEL_77:
      *(a1 + 80) = -1;
      goto LABEL_78;
    }

    goto LABEL_31;
  }

  if (v13)
  {
LABEL_31:
    *(a1 + 146) = 0;
  }

LABEL_78:
  v26 = (v15 + 1);
  if (v26 >= 200)
  {
    LOWORD(v26) = 200;
  }

  *(a1 + 148) = v26;
LABEL_81:
  *(a1 + 25600) = 0;
  if (v8)
  {
    if (a4 < a3 || (a4 - a3) < 1021)
    {
LABEL_199:
      __break(0x5519u);
      return;
    }

    v27 = 0;
    v28 = 0.0;
    do
    {
      v29 = vmulq_f32(*(a3 + v27), *(a3 + v27));
      v28 = (((v28 + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3];
      v27 += 16;
    }

    while (v27 != 1024);
    *(a1 + 25600) = v28;
    if (*(a1 + 3536) == 3)
    {
      v30 = (a1 + 25012);
      v31 = *(a1 + 25012);
      v32 = v28 > v31;
      v33 = 25008;
    }

    else
    {
      if (*(a1 + 142))
      {
        goto LABEL_96;
      }

      v30 = (a1 + 25020);
      v31 = *(a1 + 25020);
      v32 = v28 < v31;
      v33 = 25016;
    }

    v34 = 0.99;
    if (v32)
    {
      v34 = 0.9;
    }

    *v30 = (v28 * (1.0 - v34)) + (v34 * v31);
    v35 = (*(a1 + v33) + 1);
    if (v35 >= 50)
    {
      LOWORD(v35) = 50;
    }

    *(a1 + v33) = v35;
  }

  else
  {
    v28 = 0.0;
  }

LABEL_96:
  if (v12 && v12 != 1750 && v12 != 2400)
  {
    v40 = *v7;
    goto LABEL_136;
  }

  v36 = *(a1 + 24912);
  if (*(a1 + 24912) && *(a1 + 25008) == 50 && *(a1 + 25016) == 50)
  {
    v37 = log10(((*(a1 + 25012) + 0.01) / (*(a1 + 25020) + 0.01)));
    v38 = v37 * 10.0;
    LOWORD(v39) = 50;
    if (v38 <= 51.0)
    {
      if (v38 >= 36.0)
      {
        v39 = (((v38 + -36.0) * 42.0) / 15.0) + 8;
      }

      else
      {
        LOWORD(v39) = 8;
      }
    }

    v39 = v39;
    if (v39 <= 8)
    {
      v39 = 8;
    }

    if (v39 >= 50)
    {
      v41 = 50;
    }

    else
    {
      v41 = v39;
    }

    *(v6 + 124) = v41;
    if (!*(a1 + 142) || *(v6 + 122) != 3)
    {
      *(v6 + 122) = v41;
    }
  }

  v40 = *(a1 + 144);
  v42 = *(v6 + 120);
  if (v40 == 1 && *(v6 + 120))
  {
    v43 = log10(((*(v6 + 144) + 0.01) / (*(v6 + 148) + 0.01)));
    if ((v43 * 10.0) < -4.0 && *(v6 + 132) == 50 && *(v6 + 140) == 50)
    {
      *(v6 + 144) = v28;
    }
  }

  else
  {
    *(v6 + 148) = *(v6 + 144);
  }

  v44 = (v42 + 1);
  *(v6 + 120) = v42 + 1;
  if (!v36)
  {
    v46 = *(v6 + 124);
    if (v46 < 2)
    {
      goto LABEL_134;
    }

    if (v46 >= 8)
    {
      LOWORD(v46) = 8;
    }

    goto LABEL_133;
  }

  v45 = *(v6 + 122);
  if (*(a1 + 142) && v45 == 3 && v44 == 3)
  {
    LOWORD(v46) = 3;
LABEL_133:
    *(v6 + 152) = v46;
    goto LABEL_134;
  }

  if (v45 != 3 && v44 == 8)
  {
    LOWORD(v46) = 8;
    goto LABEL_133;
  }

LABEL_134:
  if (v44 >= *(v6 + 122))
  {
    *(v6 + 122) = *(v6 + 124);
    *(v6 + 120) = 0;
  }

LABEL_136:
  if (!v40 || v12 != 2400 && v12)
  {
    return;
  }

  v47 = *(a1 + 136);
  *(a1 + 130) = v47;
  if (*(a1 + 104) >= 2401 && *(a1 + 80) != -1)
  {
    v47 = *(a1 + 138);
    *(a1 + 130) = v47;
  }

  if (v5[3])
  {
    if (*(a1 + 64) == 13200)
    {
      if (v47)
      {
        goto LABEL_147;
      }

      *a1 = 1;
    }

    reset_rf_indices(a1);
    v5[3] = 0;
    *v5 = 0;
  }

LABEL_147:
  if (*a1 == 2)
  {
    v48 = 0;
    v50 = FrameSizeConfig;
    while (1)
    {
      v51 = *v50;
      v50 += 6;
      v49 = ((*(a1 + 64) * 0xA3D70A3D70A3D70BLL) >> 64) + *(a1 + 64);
      if (((v49 >> 63) + (v49 >> 5)) == v51)
      {
        break;
      }

      if (++v48 == 13)
      {
        LOWORD(v52) = 1;
LABEL_165:
        *(a1 + 130) = v52;
        return;
      }
    }

    v53 = &FrameSizeConfig[6 * v48];
    v54 = v53 + 6;
    if (v53 >= FrameSizeConfig && v54 <= inter6_2 && v53 <= v54)
    {
      v57 = *(v53 + 8);
      if (*v5)
      {
        v57 = 1;
      }

      v52 = *(v53 + 9);
      if (*(a1 + 130) < v52)
      {
        v52 = *(a1 + 130);
      }

      if (v52 <= v57)
      {
        LOWORD(v52) = v57;
      }

      goto LABEL_165;
    }

    goto LABEL_199;
  }
}

void SetModeIndex(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (*(a1 + 72) != a2 || *(a1 + 136) != a3 || *(a1 + 2) == 1 || *(a1 + 67464) != *(a1 + 67462))
  {
    core_coder_mode_switch(a1, *(a1 + 130), a2);
  }
}

float *analy_lp(void *a1, unsigned int a2, int a3, _DWORD *a4, float *a5, unint64_t a6, float *a7, unint64_t a8, float a9, __int128 *a10, unint64_t a11, unint64_t a12, unint64_t a13, _OWORD *a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  v18 = 0;
  v19 = a12;
  v20 = a13;
  if (a2 == 256)
  {
    v21 = 320;
  }

  else
  {
    v21 = 400;
  }

  *&v59[12] = *MEMORY[0x1E69E9840];
  v58 = -1;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  if (a2 == 256)
  {
    v23 = &LP_assym_window;
  }

  else
  {
    v23 = &LP_assym_window_16k;
  }

  v57[2] = v22;
  v57[3] = v22;
  v24 = &hamcos_window;
  if (a2 == 256)
  {
    v24 = dicn_inv;
  }

  v50 = v24;
  v51 = v23;
  v57[0] = v22;
  v57[1] = v22;
  v48 = a9;
  v25 = a15 < a14 || (a15 - a14) <= 60;
  v26 = !v25;
  v45 = 4 * (a2 >> 1);
  v46 = a2 >> 1;
  v27 = v21;
  v28 = v45 + 4 * a3 - 4 * v21;
  v29 = 4 * v21 - (v45 + 4 * a3);
  v30 = 2 * v46;
  v47 = v26 ^ 1;
  do
  {
    v31 = a1[1];
    v32 = *a1 + v28;
    if (v32 > v31)
    {
      goto LABEL_49;
    }

    if (a1[2] > v32)
    {
      goto LABEL_49;
    }

    if (v27 > (v29 + v31 - *a1) >> 2)
    {
      goto LABEL_49;
    }

    autocorr(v32, v57, v59, 16, v27, v51, v50, 0, 0);
    v33 = (a16 + 2 * v18);
    if (v33 < a16)
    {
      goto LABEL_49;
    }

    if ((v33 + 1) > a16 + 4)
    {
      goto LABEL_49;
    }

    if (v33 > v33 + 1)
    {
      goto LABEL_49;
    }

    v34 = (a17 + 4 * v18);
    if (v34 < a17 || (v34 + 1) > a17 + 8 || v34 > v34 + 1)
    {
      goto LABEL_49;
    }

    v35 = *v33;
    v36 = *v34;
    if (v35 > 79)
    {
      v37 = v35 <= 0x9Fu && v36 > 0.3;
    }

    else
    {
      v37 = v36 <= 0.6 ? 1 : 2;
    }

    lag_wind_11465(v57, v59, v48, v37);
    lev_dur(a5, a6, v57, v59, 16, a7, a8);
    v38 = v47;
    if (v20 < v19)
    {
      v38 = 1;
    }

    if ((v38 & 1) != 0 || (v20 - v19) < 61)
    {
      goto LABEL_49;
    }

    ++v18;
    v56[0] = a5;
    v56[1] = a6;
    v56[2] = a5;
    a2lsp_stab(v56, v19, a14);
    v28 += v45;
    v29 -= v45;
    v25 = a2 < v30;
    v30 += v46;
    v19 = a10;
    v20 = a11;
  }

  while (!v25);
  if ((a13 - a12) < 61 || a13 < a12 || a11 < a10 || (a11 - a10) < 61 || (result = int_lsp4(a2, a14, a12, a10, a5, a6, 0), a11 - a10 < 0x40) || a15 - a14 <= 0x3F || (v40 = *a10, v41 = a10[1], v42 = a10[3], a14[2] = a10[2], a14[3] = v42, *a14 = v40, a14[1] = v41, a14 + 4 < a14) || (v43 = a7 + 16, a7 + 16 < a7) || (a7 + 17) > a8 || v43 > a7 + 17)
  {
LABEL_49:
    __break(0x5519u);
  }

  *a4 = *v43;
  return result;
}

void find_wsp(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float **a6, int *a7, int a8, float a9, float a10, const vDSP_biquad_SetupStruct **a11, unint64_t a12)
{
  if (*a3 >= *(a3 + 16))
  {
    v13 = *a4;
    if (v13 >= *(a4 + 16))
    {
      weight_a_subfr(a2, *a3, *(a3 + 8), v13, *(a4 + 8), a10);
      LOWORD(v20) = 0;
      v21 = *(a4 + 16);
      v22 = *a4;
      while (1)
      {
        v23 = v22;
        v24 = a6[1];
        v25 = &(*a6)[v20];
        if (v25 > v24 || a6[2] > v25)
        {
          break;
        }

        if ((v24 - v25) < 256 || v23 < v21)
        {
          break;
        }

        vDSP_conv((*a5 + 4 * v20 - 64), 1, v23 + 16, -1, v25, 1, 0x40uLL, 0x11uLL);
        v22 = v23 + 17;
        v20 = (v20 + 64);
        if (v20 >= a1)
        {
          if (a12 >= a11 && (a12 - a11) >= 17)
          {
            v27 = *a6;
            v28 = a6[1];
            if (*a6 <= v28 && a6[2] <= v27 && a1 <= v28 - v27)
            {
              deemph_opt(v27, a11, a1, a7, a9);
              v29 = a6[1];
              v30 = &(*a6)[a1];
              if (v30 <= v29 && a6[2] <= v30 && a8 <= (v29 - v30) >> 2)
              {
                vDSP_conv((*a5 + 4 * a1 - 64), 1, v23 + 16, -1, v30, 1, a8, 0x11uLL);
                v33 = *a7;
                v31 = a6[1];
                v32 = &(*a6)[a1];
                if (v32 <= v31 && a6[2] <= v32 && a8 <= (v31 - v32) >> 2)
                {
                  deemph_opt(v32, a11, a8, &v33, a9);
                  return;
                }
              }
            }
          }

          break;
        }
      }
    }
  }

  __break(0x5519u);
}

_WORD *pitch_ol(__int16 *a1, float *a2, __int16 *a3, float *a4, float *a5, _WORD *a6, char *a7, unint64_t a8, float a9, float a10, unint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, __int16 a15, __int16 a16)
{
  *v481 = *MEMORY[0x1E69E9840];
  memset(v470, 255, sizeof(v470));
  v465 = -1431655766;
  v464 = 0xAAAAAAAAAAAAAAAALL;
  memset(v462, 170, sizeof(v462));
  v461[1] = -1;
  v461[0] = -1;
  v460[1] = -1;
  v460[0] = -1;
  v452 = -1;
  memset(v454, 255, sizeof(v454));
  if (a14 <= 1 && a15)
  {
    *a5 = 0.0;
  }

  else if (!a15)
  {
    if (*a3 > 24 || *a5 < 0.1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*a3 > 34)
  {
LABEL_6:
    v20 = 0;
    v420 = 17;
    v419 = 22;
    v413 = 1;
    v411 = 2;
    goto LABEL_10;
  }

LABEL_9:
  v411 = 0;
  v413 = 0;
  v420 = 10;
  v419 = 12;
  v20 = 1;
LABEL_10:
  v401 = v20;
  memset(__b, 255, sizeof(__b));
  v478 = -1;
  v479 = -1;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v474[0] = v21;
  v474[1] = v21;
  v474[2] = v21;
  v475[0] = v21;
  v475[1] = v21;
  *v476 = v21;
  *&v476[12] = v21;
  memset(__C, 255, sizeof(__C));
  memset(__dst, 255, sizeof(__dst));
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v467 = v22;
  v468 = v22;
  v469 = v22;
  *&v22 = -1;
  *(&v22 + 1) = -1;
  v456[0] = v22;
  v456[1] = v22;
  v457[0] = v22;
  v457[1] = v22;
  v458 = v22;
  v459 = v22;
  v455[0] = v22;
  v455[1] = v22;
  v455[2] = v22;
  v455[3] = v22;
  v455[4] = v22;
  v455[5] = v22;
  if (a8 < a7)
  {
    goto LABEL_628;
  }

  if (a8 - a7 <= 0x1CB)
  {
    goto LABEL_628;
  }

  memmove(__b, a7, 0x1CCuLL);
  lp_decim2(a11);
  v478 = *a13;
  v479 = *(a13 + 8);
  if (a11 + 1024 < a11)
  {
    goto LABEL_628;
  }

  lp_decim2(a11 + 1024);
  memmove(a7, &__b[512], 0x1CCuLL);
  if (a7 + 460 < a7)
  {
    goto LABEL_628;
  }

  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 0xDuLL);
  v418 = (116 - v420);
  v23 = &__C[v418 + 13];
  if (v23 < __C)
  {
    goto LABEL_628;
  }

  __A = 0.0;
  vDSP_vfill(&__A, v23, 1, 0xDuLL);
  v417 = &__C[v418 + 26];
  v24 = &v417[116 - v419];
  if (v24 < __C)
  {
    goto LABEL_628;
  }

  v25 = a9 * 0.5;
  __A = 0.0;
  vDSP_vfill(&__A, v24, 1, 0xDuLL);
  v26 = 0;
  v27 = v475 + 1;
  v28 = *a5;
  v29 = v475 + 2;
  v30 = *a5 / -14.0;
  do
  {
    if (v29 > v477)
    {
      goto LABEL_628;
    }

    v31 = (v28 + (v30 * v26)) + 1.0;
    *(v29 - 1) = v31;
    if (v27 < v474 || v27 + 1 > v477 || v27 > v27 + 1)
    {
      goto LABEL_628;
    }

    *v27-- = v31;
    v32 = v26++;
    ++v29;
  }

  while (v32 < 0xD);
  v33 = 0;
  v34 = (*a6 + *a3);
  if (v34 >= 115)
  {
    v35 = 115;
  }

  else
  {
    v35 = *a6 + *a3;
  }

  if (v34 >= v420)
  {
    v36 = v35;
  }

  else
  {
    v36 = v420;
  }

  v37 = (v36 + *a6);
  if (v37 >= 115)
  {
    v38 = 115;
  }

  else
  {
    v38 = v36 + *a6;
  }

  if (v37 >= v420)
  {
    v39 = v38;
  }

  else
  {
    v39 = v420;
  }

  v404 = v39;
  v40 = &pit_max_12k8[v411];
  v41 = v40 + 2 > len_12k8 || v40 > v40 + 2;
  v398 = &pit_max_12k8[v411];
  v42 = !v41 && v40 >= pit_max_12k8;
  v43 = v42;
  if (v401)
  {
    v44 = 2;
  }

  else
  {
    v44 = 5;
  }

  v399 = v44;
  v400 = v43;
  v45 = &__dst[v418];
  v46 = v413;
  v48 = v417 < __C || v45 < __dst;
  __n = (4 * v418);
  v50 = v45 > __C || v417 > v474;
  v408 = v50;
  v409 = v48;
  v406 = 116 - v419;
  v407 = &__dst[v418];
  v405 = &v45[v406];
  v440 = 4 * v413;
  v443 = 2 * v413;
  v416 = &v467;
  v415 = v455;
  v414 = v456;
  v51 = 0;
  do
  {
    v435 = v36;
    v52 = &__b[256 * (v51 & 0x3FFFFFF) + 460];
    v421 = v51;
    v412 = v33;
    v450 = v52;
    if (v51 == 2)
    {
      v53 = &__b[256 * (v33 >> 6)];
      v54 = v46;
      v446 = v52 + 55;
      v55 = v52 + 55;
      v56 = 0.01;
      do
      {
        v57 = (len_12k8 + 2 * v54);
        v58 = v57 + 1;
        if (v57 < len_12k8 || v58 > len1_12k8 || v57 > v58)
        {
          goto LABEL_628;
        }

        v61 = (*v57 + ((v55 - v446) >> 2));
        if (v61 >= 1)
        {
          do
          {
            v62 = v55 + 1;
            if (v55 < __b || v62 > v481 || v55 > v62)
            {
              goto LABEL_628;
            }

            v65 = *v55--;
            v56 = v56 + (v65 * v65);
            v66 = v61--;
          }

          while (v66 > 1);
        }

        v67 = v461 + 4 * v54;
        if (v67 < v461)
        {
          goto LABEL_628;
        }

        if (v67 + 4 > v462)
        {
          goto LABEL_628;
        }

        if (v67 > v67 + 4)
        {
          goto LABEL_628;
        }

        *(v461 + v54) = v56;
        v68 = &len1_12k8[v54];
        if (v68 < len1_12k8 || v68 + 1 > sublen_12k8 || v68 > v68 + 1)
        {
          goto LABEL_628;
        }

        v69 = (*v68 + ((v55 - v446) >> 2));
        v70 = v56;
        if (v69 >= 1)
        {
          v71 = v55;
          v70 = v56;
          do
          {
            v72 = v71 + 1;
            if (v71 < __b || v72 > v481 || v71 > v72)
            {
              goto LABEL_628;
            }

            v75 = *v71--;
            v70 = v70 + (v75 * v75);
            v76 = v69--;
          }

          while (v76 > 1);
        }

        v77 = v460 + 4 * v54;
        if (v77 < v460 || v77 + 4 > v461 || v77 > v77 + 4)
        {
          goto LABEL_628;
        }

        *(v460 + v54++) = v70;
      }

      while (v54 != 4);
      if (v401)
      {
        v78 = &v446[-v420];
      }

      else
      {
        v78 = v450 + 38;
      }

      v79 = &__C[13];
      v80 = v399;
      do
      {
        v81 = v79 + 1;
        if (v79 + 1 > v474)
        {
          goto LABEL_628;
        }

        v82 = 0;
        *v79 = 0.0;
        v83 = 0.0;
        do
        {
          v84 = &v53[v82 * 4 + 680];
          v85 = &v53[v82 * 4 + 684];
          v87 = v84 < __b || v85 > v481 || v84 > v85;
          v88 = &v78[v82];
          v89 = &v78[v82 + 1];
          if (v87 || v88 < __b || v89 > v481 || v88 > v89)
          {
            goto LABEL_628;
          }

          v83 = v83 + (*v84 * *v88);
          *v79 = v83;
          --v82;
        }

        while (v82 != -40);
        --v78;
        v93 = v80--;
        ++v79;
      }

      while (v93 > 1);
      v94 = v411;
      v95 = &__C[v418 + 26];
      while (1)
      {
        v437 = v94;
        v96 = &sublen_12k8[v94];
        v97 = v96 + 2;
        if (v96 < sublen_12k8 || v97 > &sublen1_12k8 || v96 > v97)
        {
          goto LABEL_628;
        }

        v100 = &sublen1_12k8 + 2 * v94;
        if (v100 < &sublen1_12k8)
        {
          goto LABEL_628;
        }

        if (v100 + 2 > sec_length_12k8)
        {
          goto LABEL_628;
        }

        if (v100 > v100 + 2)
        {
          goto LABEL_628;
        }

        v101 = &pit_max_12k8[v94];
        v102 = (v101 + 1);
        if (v101 + 1 < pit_max_12k8 || v101 + 2 > len_12k8 || v102 > (v101 + 2) || v101 < pit_max_12k8 || v101 > v102)
        {
          goto LABEL_628;
        }

        v103 = sublen_12k8[v94];
        v104 = *(&sublen1_12k8 + v94);
        v105 = (v101[1] - *v101);
        if (v103 >= v104)
        {
          if (v105 >= 1)
          {
            v111 = *(&sublen1_12k8 + v94);
            v112 = v103 - v104;
            while (1)
            {
              vDSP_dotpr(v446, -1, v78, -1, v95, v111);
              vDSP_dotpr(&v446[-v111], -1, &v78[-v111], -1, v81, v112);
              if (v95 < __C)
              {
                break;
              }

              v109 = v95 + 1;
              if (v95 + 1 > v474)
              {
                break;
              }

              if (v95 > v109)
              {
                break;
              }

              if (v81 < __C)
              {
                break;
              }

              v108 = v81 + 1;
              if (v81 + 1 > v474 || v81 > v108)
              {
                break;
              }

              --v78;
              v113 = v105--;
              *v81 = *v95 + *v81;
              ++v81;
              ++v95;
              if (v113 <= 1)
              {
                goto LABEL_159;
              }
            }

LABEL_628:
            __break(0x5519u);
          }
        }

        else if (v105 >= 1)
        {
          v106 = sublen_12k8[v94];
          v107 = v104 - v103;
          while (1)
          {
            vDSP_dotpr(v446, -1, v78, -1, v81, v106);
            vDSP_dotpr(&v446[-v106], -1, &v78[-v106], -1, v95, v107);
            if (v81 < __C)
            {
              goto LABEL_628;
            }

            v108 = v81 + 1;
            if (v81 + 1 > v474)
            {
              goto LABEL_628;
            }

            if (v81 > v108)
            {
              goto LABEL_628;
            }

            if (v95 < __C)
            {
              goto LABEL_628;
            }

            v109 = v95 + 1;
            if (v95 + 1 > v474 || v95 > v109)
            {
              goto LABEL_628;
            }

            --v78;
            v110 = v105--;
            *v95 = *v81++ + *v95;
            ++v95;
            if (v110 <= 1)
            {
              goto LABEL_159;
            }
          }
        }

        v109 = v95;
        v108 = v81;
LABEL_159:
        v94 = v437 + 1;
        v81 = v108;
        v95 = v109;
        if (v437 == 6)
        {
          goto LABEL_266;
        }
      }
    }

    v114 = v46;
    v115 = &__b[256 * (v51 & 0x3FFFFFF) + 460];
    v116 = 0.01;
    v117 = &v52[-v420];
    do
    {
      v118 = (len_12k8 + 2 * v114);
      v119 = v118 + 1;
      if (v118 < len_12k8 || v119 > len1_12k8 || v118 > v119)
      {
        goto LABEL_628;
      }

      v122 = (*v118 + ((v450 - v115) >> 2));
      if (v122 >= 1)
      {
        v123 = v115;
        do
        {
          v115 = v123 + 1;
          if (v123 < __b || v115 > v481 || v123 > v115)
          {
            goto LABEL_628;
          }

          v116 = v116 + (*v123 * *v123);
          v126 = v122--;
          ++v123;
        }

        while (v126 > 1);
      }

      v127 = v461 + 4 * v114;
      if (v127 < v461)
      {
        goto LABEL_628;
      }

      if (v127 + 4 > v462)
      {
        goto LABEL_628;
      }

      if (v127 > v127 + 4)
      {
        goto LABEL_628;
      }

      *(v461 + v114) = v116;
      v128 = &len1_12k8[v114];
      if (v128 < len1_12k8 || v128 + 1 > sublen_12k8 || v128 > v128 + 1)
      {
        goto LABEL_628;
      }

      v129 = (*v128 + ((v450 - v115) >> 2));
      v130 = v116;
      if (v129 >= 1)
      {
        v131 = v115;
        v130 = v116;
        do
        {
          v132 = v131 + 1;
          if (v131 < __b || v132 > v481 || v131 > v132)
          {
            goto LABEL_628;
          }

          v130 = v130 + (*v131 * *v131);
          v135 = v129--;
          ++v131;
        }

        while (v135 > 1);
      }

      v136 = v460 + 4 * v114;
      if (v136 < v460 || v136 + 4 > v461 || v136 > v136 + 4)
      {
        goto LABEL_628;
      }

      *(v460 + v114++) = v130;
    }

    while (v114 != 4);
    if (!v400)
    {
      goto LABEL_628;
    }

    if (((*v398 - v420) & 0x8000) != 0)
    {
      v143 = &__C[13];
    }

    else
    {
      v137 = (*v398 - v420);
      v139 = v450 > v481 || __b > v450;
      v140 = &__C[13];
      do
      {
        v142 = v117 > v481 || __b > v117;
        if (v142 || v139)
        {
          goto LABEL_628;
        }

        __A = NAN;
        vDSP_dotpr(v450, 1, v117, 1, &__A, 0x28uLL);
        if (v140 < __C)
        {
          goto LABEL_628;
        }

        v143 = v140 + 1;
        if (v140 + 1 > v474 || v140 > v143)
        {
          goto LABEL_628;
        }

        --v117;
        *v140 = __A;
        v144 = v137--;
        ++v140;
      }

      while (v144 > 0);
    }

    v145 = v411;
    v146 = &__C[v418 + 26];
    do
    {
      v447 = v145;
      v147 = &sublen_12k8[v145];
      v148 = v147 + 2;
      if (v147 < sublen_12k8 || v148 > &sublen1_12k8 || v147 > v148)
      {
        goto LABEL_628;
      }

      v151 = &sublen1_12k8 + 2 * v145;
      if (v151 < &sublen1_12k8 || v151 + 2 > sec_length_12k8 || v151 > v151 + 2)
      {
        goto LABEL_628;
      }

      v152 = sublen_12k8[v145];
      v153 = *(&sublen1_12k8 + v145);
      v154 = v117 - v450;
      v155 = &pit_max_12k8[v145];
      v156 = (v155 + 2);
      v157 = v155 + 4;
      v160 = v157 <= len_12k8 && v156 <= v157 && v156 >= pit_max_12k8;
      v161 = v152 - v153;
      if (v152 >= v153)
      {
        if (!v160)
        {
          goto LABEL_628;
        }

        v170 = *v156 + (v154 >> 2);
        if ((v170 & 0x8000) != 0)
        {
LABEL_264:
          v168 = v146;
          v167 = v143;
          goto LABEL_265;
        }

        v171 = v170;
        v172 = v153;
        v173 = v153;
        v174 = v161;
        do
        {
          vDSP_dotpr(v450, 1, v117, 1, v146, v172);
          vDSP_dotpr(&v450[v173], 1, &v117[v173], 1, v143, v174);
          if (v146 < __C)
          {
            goto LABEL_628;
          }

          v168 = v146 + 1;
          if (v146 + 1 > v474)
          {
            goto LABEL_628;
          }

          if (v146 > v168)
          {
            goto LABEL_628;
          }

          if (v143 < __C)
          {
            goto LABEL_628;
          }

          v167 = v143 + 1;
          if (v143 + 1 > v474 || v143 > v167)
          {
            goto LABEL_628;
          }

          --v117;
          v175 = v171--;
          *v143 = *v146 + *v143;
          ++v143;
          ++v146;
        }

        while (v175 > 0);
      }

      else
      {
        if (!v160)
        {
          goto LABEL_628;
        }

        v162 = *v156 + (v154 >> 2);
        if ((v162 & 0x8000) != 0)
        {
          goto LABEL_264;
        }

        v163 = v162;
        v164 = v152;
        v165 = v152;
        v166 = v153 - v152;
        do
        {
          vDSP_dotpr(v450, 1, v117, 1, v143, v164);
          vDSP_dotpr(&v450[v165], 1, &v117[v165], 1, v146, v166);
          if (v143 < __C)
          {
            goto LABEL_628;
          }

          v167 = v143 + 1;
          if (v143 + 1 > v474)
          {
            goto LABEL_628;
          }

          if (v143 > v167)
          {
            goto LABEL_628;
          }

          if (v146 < __C)
          {
            goto LABEL_628;
          }

          v168 = v146 + 1;
          if (v146 + 1 > v474 || v146 > v168)
          {
            goto LABEL_628;
          }

          --v117;
          v169 = v163--;
          *v146 = *v143++ + *v146;
          ++v146;
        }

        while (v169 > 0);
      }

LABEL_265:
      v145 = v447 + 1;
      v143 = v167;
      v146 = v168;
    }

    while (v447 != 6);
LABEL_266:
    memcpy(__dst, &__C[13], __n);
    if ((__dst + __n) < __dst)
    {
      goto LABEL_628;
    }

    if (v409)
    {
      goto LABEL_628;
    }

    if (v408)
    {
      goto LABEL_628;
    }

    memcpy(v407, v417, v406 * 4);
    if (v405 < v407)
    {
      goto LABEL_628;
    }

    v176 = 0;
    v177 = 0;
    v178 = &__C[v435 - v420];
    v179 = &__C[v435] + 4 * v418 - 4 * v419;
    do
    {
      v180 = &v178[v176 / 4];
      v181 = &v178[v176 / 4 + 1];
      if (v474 + v176 + 4 > v477 || v180 < __C || v181 > v474 || v180 > v181)
      {
        goto LABEL_628;
      }

      v185 = &v179[v176];
      v186 = &v179[v176 + 52];
      v187 = *(v474 + v176);
      *v180 = v187 * *v180;
      if (v186 < __C || v185 + 56 > v474 || v186 > v185 + 14)
      {
        goto LABEL_628;
      }

      *v186 = v187 * *v186;
      v176 += 4;
      v42 = v177++ >= 0x1A;
    }

    while (!v42);
    v436 = 0;
    v432 = 0;
    v188 = v421;
    v430 = &v467 + v421;
    v428 = &v455[2 * v421];
    v429 = (v430 + 1);
    v426 = &v456[2 * v421];
    v427 = (v428 + 8);
    v425 = (v426 + 8);
    v431 = v460;
    v434 = v461;
    v189 = sec_length_12k8;
    v448 = len_12k8;
    v433 = sec_length1_12k8;
    v190 = v415;
    v191 = v416;
    v192 = v414;
    v438 = len1_12k8;
    v193 = 8;
    v194 = &__C[13];
    v195 = &__C[v418 + 26];
    do
    {
      v423 = v193;
      if (v188 == 2)
      {
        v196 = v189;
        v197 = (v448 + v443);
        if ((v448 + v443) < len_12k8)
        {
          goto LABEL_628;
        }

        if (v197 + 1 > len1_12k8)
        {
          goto LABEL_628;
        }

        if (v197 > v197 + 1)
        {
          goto LABEL_628;
        }

        v198 = &v438[v443];
        if (&v438[v443] < len1_12k8 || v198 + 2 > sublen_12k8 || v198 > v198 + 2)
        {
          goto LABEL_628;
        }

        v199 = (56 - *v197);
        v424 = (56 - *v198);
        v189 = v196;
      }

      else
      {
        v199 = 0;
        v424 = 0;
      }

      v422 = v189;
      v200 = &v189[v443];
      if (&v189[v443] < sec_length_12k8)
      {
        goto LABEL_628;
      }

      if (v200 + 1 > sec_length1_12k8)
      {
        goto LABEL_628;
      }

      if (v200 > v200 + 1)
      {
        goto LABEL_628;
      }

      if (v194 > v474)
      {
        goto LABEL_628;
      }

      if (__C > v194)
      {
        goto LABEL_628;
      }

      v201 = *v200;
      if ((v201 & 0x80000000) != 0)
      {
        goto LABEL_628;
      }

      if ((v474 - v194) >> 2 < v201)
      {
        goto LABEL_628;
      }

      v202 = maximum(v194, v201, 0);
      v203 = (v191 + v443);
      if ((v191 + v443) < v430)
      {
        goto LABEL_628;
      }

      if ((v203 + 1) > v429)
      {
        goto LABEL_628;
      }

      if (v203 > v203 + 1)
      {
        goto LABEL_628;
      }

      v204 = v202 + v436;
      *v203 = v202 + v436 + v420;
      v205 = (v448 + v443);
      if ((v448 + v443) < len_12k8)
      {
        goto LABEL_628;
      }

      if (v205 + 1 > len1_12k8)
      {
        goto LABEL_628;
      }

      if (v205 > v205 + 1)
      {
        goto LABEL_628;
      }

      v206 = &v450[v199 - (v202 + v436 + v420)];
      if (v206 > v481)
      {
        goto LABEL_628;
      }

      if (__b > v206)
      {
        goto LABEL_628;
      }

      v207 = *v205;
      if ((v207 & 0x80000000) != 0)
      {
        goto LABEL_628;
      }

      if (v481 - v206 < v207)
      {
        goto LABEL_628;
      }

      __A = NAN;
      vDSP_dotpr(v206, 1, v206, 1, &__A, v207);
      v208 = (v434 + v440);
      if ((v434 + v440) < v461)
      {
        goto LABEL_628;
      }

      if (v208 + 1 > v462)
      {
        goto LABEL_628;
      }

      if (v208 > v208 + 1)
      {
        goto LABEL_628;
      }

      v209 = &__dst[v204];
      if (v209 < __dst)
      {
        goto LABEL_628;
      }

      if (v209 + 1 > __C)
      {
        goto LABEL_628;
      }

      if (v209 > v209 + 1)
      {
        goto LABEL_628;
      }

      v210 = (v190 + v440);
      if ((v190 + v440) < v428)
      {
        goto LABEL_628;
      }

      if ((v210 + 1) > v427)
      {
        goto LABEL_628;
      }

      if (v210 > v210 + 1)
      {
        goto LABEL_628;
      }

      v211 = 1.0 / sqrt(((__A + 0.01) * *v208));
      *v210 = __dst[v204] * v211;
      v212 = &__C[v204 + 13];
      if (v212 < __C)
      {
        goto LABEL_628;
      }

      if (v212 + 1 > v474)
      {
        goto LABEL_628;
      }

      if (v212 > v212 + 1)
      {
        goto LABEL_628;
      }

      v213 = (v192 + v440);
      if ((v192 + v440) < v426)
      {
        goto LABEL_628;
      }

      if ((v213 + 1) > v425)
      {
        goto LABEL_628;
      }

      if (v213 > v213 + 1)
      {
        goto LABEL_628;
      }

      *v213 = *v212 * v211;
      v214 = &v433[v443];
      if (&v433[v443] < sec_length1_12k8)
      {
        goto LABEL_628;
      }

      if (v214 + 1 > h_fir)
      {
        goto LABEL_628;
      }

      if (v214 > v214 + 1)
      {
        goto LABEL_628;
      }

      if (v195 > v474)
      {
        goto LABEL_628;
      }

      if (__C > v195)
      {
        goto LABEL_628;
      }

      v215 = *v214;
      if ((v215 & 0x80000000) != 0)
      {
        goto LABEL_628;
      }

      if ((v474 - v195) >> 2 < v215)
      {
        goto LABEL_628;
      }

      v216 = maximum(v195, v215, 0);
      v217 = (v191 + v443 + 8);
      if (v217 < v430)
      {
        goto LABEL_628;
      }

      v218 = v191 + v443 + 10;
      if (v218 > v429)
      {
        goto LABEL_628;
      }

      if (v217 > v218)
      {
        goto LABEL_628;
      }

      v219 = (v216 + v432);
      *v217 = v216 + v432 + v419;
      v220 = &v438[v443];
      if (&v438[v443] < len1_12k8)
      {
        goto LABEL_628;
      }

      if (v220 + 1 > sublen_12k8)
      {
        goto LABEL_628;
      }

      if (v220 > v220 + 1)
      {
        goto LABEL_628;
      }

      v221 = &v450[v424 - (v219 + v419)];
      if (v221 > v481)
      {
        goto LABEL_628;
      }

      if (__b > v221)
      {
        goto LABEL_628;
      }

      v222 = *v220;
      if ((v222 & 0x80000000) != 0)
      {
        goto LABEL_628;
      }

      if (v481 - v221 < v222)
      {
        goto LABEL_628;
      }

      __A = NAN;
      vDSP_dotpr(v221, 1, v221, 1, &__A, v222);
      v223 = (v431 + v440);
      if ((v431 + v440) < v460)
      {
        goto LABEL_628;
      }

      if (v223 + 1 > v461)
      {
        goto LABEL_628;
      }

      if (v223 > v223 + 1)
      {
        goto LABEL_628;
      }

      v224 = &__dst[v219 + v418];
      if (v224 < __dst)
      {
        goto LABEL_628;
      }

      if (v224 + 1 > __C)
      {
        goto LABEL_628;
      }

      if (v224 > v224 + 1)
      {
        goto LABEL_628;
      }

      v225 = (v190 + v440 + 16);
      if (v225 < v428)
      {
        goto LABEL_628;
      }

      v226 = v190 + v440 + 20;
      if (v226 > v427)
      {
        goto LABEL_628;
      }

      if (v225 > v226)
      {
        goto LABEL_628;
      }

      v227 = 1.0 / sqrt(((__A + 0.01) * *v223));
      *v225 = *v224 * v227;
      v228 = &__C[129 - v420 + 13 + v219];
      if (v228 < __C)
      {
        goto LABEL_628;
      }

      if (v228 + 1 > v474)
      {
        goto LABEL_628;
      }

      if (v228 > v228 + 1)
      {
        goto LABEL_628;
      }

      v229 = (v192 + v440 + 16);
      if (v229 < v426)
      {
        goto LABEL_628;
      }

      v230 = v192 + v440 + 20;
      if (v230 > v425 || v229 > v230)
      {
        goto LABEL_628;
      }

      v194 += v201;
      v436 += v201;
      v195 += v215;
      v432 += v215;
      v193 = v423 - 2;
      v431 = (v431 + 4);
      v438 += 2;
      *v229 = *v228 * v227;
      v192 = (v192 + 4);
      v190 = (v190 + 4);
      v191 = (v191 + 2);
      v433 += 2;
      v434 = (v434 + 4);
      v448 = (v448 + 2);
      v189 = v422 + 2;
      v188 = v421;
    }

    while (v443 != v423 - 2);
    v51 = v421 + 1;
    v33 = v412 + 64;
    v414 += 2;
    v415 += 2;
    ++v416;
    v36 = v404;
    v46 = v413;
  }

  while (v421 != 2);
  v231 = &v467;
  v232 = v456;
  v233 = 1;
  do
  {
    v234 = v233;
    v452 = 1066779279;
    v235 = v231[2];
    find_mult(&v452, v235, v231[3], 115, v232 + 2, a3, a4, 1.0);
    v236 = v231[1];
    find_mult(&v452, v236, v235, 61, v232 + 1, a3, a4, 1.0);
    if (v401)
    {
      v237 = *v231;
      if (v237 >= 10)
      {
        find_mult(&v452, v237, v236, 31, v232, a3, a4, 1.0);
      }
    }

    v452 = 1066779279;
    v238 = v231[6];
    find_mult(&v452, v238, v231[7], 115, v232 + 6, a3, a4, 1.0);
    v239 = v231[5];
    find_mult(&v452, v239, v238, 77, v232 + 5, a3, a4, 1.0);
    if (v401)
    {
      v240 = v231[4];
      if (v240 >= 10)
      {
        find_mult(&v452, v240, v239, 40, v232 + 4, a3, a4, 1.0);
      }
    }

    v233 = 0;
    v232 = v457;
    v231 = &v468;
  }

  while ((v234 & 1) != 0);
  v452 = 1066779279;
  v241 = SWORD2(v469);
  find_mult(&v452, SWORD2(v469), SWORD3(v469), 115, &v458 + 2, a3, a4, 2.0);
  v242 = SWORD1(v469);
  find_mult(&v452, SWORD1(v469), v241, 61, &v458 + 1, a3, a4, 1.0);
  if (v401 && v469 >= 10)
  {
    find_mult(&v452, v469, v242, 31, &v458, a3, a4, 1.0);
  }

  v452 = 1066779279;
  v243 = SWORD6(v469);
  find_mult(&v452, SWORD6(v469), SHIWORD(v469), 115, &v459 + 2, a3, a4, 2.0);
  v244 = SWORD5(v469);
  find_mult(&v452, SWORD5(v469), v243, 77, &v459 + 1, a3, a4, 1.0);
  if (v401 && SWORD4(v469) >= 10)
  {
    find_mult(&v452, SWORD4(v469), v244, 40, &v459, a3, a4, 1.0);
  }

  v245 = 0;
  v246 = 0;
  v247 = 0;
  v248 = 0;
  v249 = 4 * v413;
  v451 = (4 - v413);
  v449 = v413 | 4;
  v439 = v249;
  v441 = (16 - v249) >> 2;
  v444 = v456 | v249;
  do
  {
    v250 = &v456[v248];
    v251 = (v444 + v248 * 16);
    if (v444 + v248 * 16 > &v456[v248 + 2] || v250 > v251)
    {
      goto LABEL_628;
    }

    v253 = maximum(v251, v451, 0) + v413;
    *&v462[v246 + 8] = v253;
    v254 = &v467 + v245 + 16;
    v255 = &v467 + 2 * v253 + v245;
    v256 = v255 + 2;
    v257 = v255 < &v467 + v245 || v256 > v254;
    if (v257 || v255 > v256)
    {
      goto LABEL_628;
    }

    v259 = v253;
    *(&v464 + v246) = *(&v467 + 2 * v253 + v245);
    v260 = &v455[v248];
    v261 = v455 + 4 * v253 + v248 * 16;
    if (v261 < &v455[v248] || v261 + 4 > v260 + 32 || v261 > v261 + 4)
    {
      goto LABEL_628;
    }

    v262 = v25 + *(v455 + 4 * v259 + v248 * 16);
    if (v262 > 1.0)
    {
      v262 = 1.0;
    }

    *(v454 + v247) = v262;
    *(v470 + v247) = v262 * 0.4;
    v263 = (v444 + v248 * 16 + 16);
    if (v263 > &v456[v248 + 2])
    {
      goto LABEL_628;
    }

    if (v250 > v263)
    {
      goto LABEL_628;
    }

    if (v441 < v451)
    {
      goto LABEL_628;
    }

    v264 = maximum(v263, v451, 0) + v449;
    *&v462[v246 + 14] = v264;
    v265 = &v467 + 2 * v264 + v245;
    if (v265 < &v467 + v245)
    {
      goto LABEL_628;
    }

    if (v265 + 2 > v254)
    {
      goto LABEL_628;
    }

    if (v265 > v265 + 2)
    {
      goto LABEL_628;
    }

    v266 = v264;
    *(&v464 + v246 + 6) = *(&v467 + 2 * v264 + v245);
    v267 = v455 + 4 * v264 + v248 * 16;
    if (v267 < v260 || v267 + 4 > v260 + 32 || v267 > v267 + 4)
    {
      goto LABEL_628;
    }

    v268 = v25 + *(v455 + 4 * v266 + v248 * 16);
    if (v268 > 1.0)
    {
      v268 = 1.0;
    }

    *(&v454[1] + v247 + 4) = v268;
    v248 += 2;
    *(&v470[1] + v247 + 4) = v268 * 0.4;
    v247 += 4;
    v246 += 2;
    v245 += 16;
  }

  while (v248 != 6);
  v269 = v413;
  for (i = v413; i != 4; ++i)
  {
    v271 = 0;
    if (i == 3)
    {
      v272 = 2;
    }

    else
    {
      v272 = 3;
    }

    do
    {
      v273 = 0;
      v274 = (&v467 + v271);
      v275 = &v274[i];
      v278 = v275 + 1 <= v274 + 8 && v275 <= v275 + 1 && v275 >= v274;
      v279 = &v456[2 * v271];
      v280 = &v279[i];
      v283 = v280 + 1 > v279 + 8 || v280 > v280 + 1 || v280 < v279;
      do
      {
        if (v273 != v271)
        {
          v284 = v454 + v273;
          v285 = v284 + 1;
          if (v284 < v454 || v285 > v455 || v284 > v285)
          {
            goto LABEL_628;
          }

          if (*v284 >= 0.5)
          {
            if (!v278)
            {
              goto LABEL_628;
            }

            v288 = &v464 + v273;
            if (v288 < &v464 || v288 + 1 > v466 || v288 > v288 + 1)
            {
              goto LABEL_628;
            }

            v289 = *v275;
            v290 = *v288;
            v291 = v289 - v290;
            if (v289 - v290 < 0)
            {
              v291 = v290 - v289;
            }

            if (v290 >= v289)
            {
              v292 = *v275;
            }

            else
            {
              v292 = v290;
            }

            if (v290 > v289)
            {
              v289 = v290;
            }

            if ((v292 * 1.4) > v289 && v289 - v292 <= 13)
            {
              v293 = &v462[2 * v273 + 8];
              if (v293 < &v462[8] || v293 + 2 > v463 || v293 > v293 + 2)
              {
                goto LABEL_628;
              }

              v294 = v470 + v273;
              v297 = v294 + 1 > v471 || v294 > v294 + 1 || v294 < v470;
              v298 = v297 || v283;
              if (*&v462[2 * v273 + 8] == i)
              {
                if (v298)
                {
                  goto LABEL_628;
                }

                v299 = *v294;
                v300 = *v294 / -14.0;
                v301 = v291;
              }

              else
              {
                if (v298)
                {
                  goto LABEL_628;
                }

                v300 = (*v294 / -14.0) * 0.625;
                v301 = v291;
                v299 = *v294 * 0.625;
              }

              *v280 = *v280 * ((v299 + (v300 * v301)) + 1.0);
            }
          }
        }

        ++v273;
      }

      while (v272 > v273);
      ++v271;
    }

    while (v272 > v271);
  }

  do
  {
    v302 = 0;
    if (v269 == 3)
    {
      v303 = 2;
    }

    else
    {
      v303 = 3;
    }

    v304 = v269 + 4;
    do
    {
      v305 = 0;
      v306 = 0;
      v307 = (&v467 + v302);
      v308 = &v307[v304];
      v311 = v308 + 1 <= v307 + 8 && v308 <= v308 + 1 && v308 >= v307;
      v312 = &v456[2 * v302];
      v313 = &v312[v304];
      v316 = v313 + 1 > v312 + 8 || v313 > v313 + 1 || v313 < v312;
      do
      {
        if (v306 != v302)
        {
          v317 = v305 + 3;
          v318 = v454 + v317;
          if (v318 < v454)
          {
            goto LABEL_628;
          }

          if (v318 + 1 > v455 || v318 > v318 + 1)
          {
            goto LABEL_628;
          }

          if (*v318 >= 0.5)
          {
            if (!v311)
            {
              goto LABEL_628;
            }

            v320 = v317;
            v321 = &v464 + v317;
            if (v321 < &v464 || v321 + 1 > v466 || v321 > v321 + 1)
            {
              goto LABEL_628;
            }

            v322 = *v308;
            v323 = *v321;
            v324 = v322 - v323;
            if (v322 - v323 < 0)
            {
              v324 = v323 - v322;
            }

            if (v323 >= v322)
            {
              v325 = *v308;
            }

            else
            {
              v325 = v323;
            }

            if (v323 > v322)
            {
              v322 = v323;
            }

            if ((v325 * 1.4) > v322 && v322 - v325 <= 13)
            {
              v326 = &v462[2 * v320 + 8];
              if (v326 < &v462[8] || v326 + 2 > v463 || v326 > v326 + 2)
              {
                goto LABEL_628;
              }

              v327 = *&v462[2 * v320 + 8];
              v328 = v470 + v320;
              v331 = v328 + 1 > v471 || v328 > v328 + 1 || v328 < v470;
              v332 = v331 || v316;
              if (v304 == v327)
              {
                if (v332)
                {
                  goto LABEL_628;
                }

                v333 = *v328;
                v334 = *v328 / -14.0;
                v335 = v324;
              }

              else
              {
                if (v332)
                {
                  goto LABEL_628;
                }

                v334 = (*v328 / -14.0) * 0.625;
                v335 = v324;
                v333 = *v328 * 0.625;
              }

              *v313 = *v313 * ((v333 + (v334 * v335)) + 1.0);
            }
          }
        }

        v305 = ++v306;
      }

      while (v303 > v306);
      ++v302;
    }

    while (v303 > v302);
    ++v269;
  }

  while (v269 != 4);
  v336 = 0;
  v337 = 0;
  v338 = 0;
  v442 = v455 | v439;
  v445 = v456 | v439;
  while (2)
  {
    v339 = &v456[v337 / 0x10];
    v340 = &v456[v337 / 0x10 + 2];
    v341 = (v445 + v337);
    if (v445 + v337 > v340 || v339 > v341)
    {
      goto LABEL_628;
    }

    v343 = maximum(v341, v451, 0);
    v344 = &v455[v337 / 0x10];
    v345 = &v455[v337 / 0x10 + 2];
    v346 = (v442 + v337);
    if (v442 + v337 > v345)
    {
      goto LABEL_628;
    }

    if (v344 > v346)
    {
      goto LABEL_628;
    }

    v347 = maximum(v346, v451, 0);
    v348 = (v445 + v337 + 16);
    if (v348 > v340)
    {
      goto LABEL_628;
    }

    if (v339 > v348)
    {
      goto LABEL_628;
    }

    v349 = maximum(v348, v451, 0);
    v350 = (v442 + v337 + 16);
    if (v350 > v345)
    {
      goto LABEL_628;
    }

    if (v344 > v350)
    {
      goto LABEL_628;
    }

    v351 = v349 + v449;
    v352 = maximum(v350, v451, 0);
    v353 = v456 + 4 * v351 + v337;
    if (v353 < v339)
    {
      goto LABEL_628;
    }

    if (v353 + 4 > v340)
    {
      goto LABEL_628;
    }

    if (v353 > v353 + 4)
    {
      goto LABEL_628;
    }

    v354 = v343 + v413;
    v355 = v456 + 4 * (v343 + v413) + v337;
    if (v355 < v339 || v355 + 4 > v340 || v355 > v355 + 4)
    {
      goto LABEL_628;
    }

    if (*(v456 + 4 * v351 + v337) > *(v456 + 4 * v354 + v337))
    {
      v354 = v351;
    }

    if (a16)
    {
      v356 = v455 + 4 * (v352 + v449) + v337;
      if (v356 < v344)
      {
        goto LABEL_628;
      }

      if (v356 + 4 > v345)
      {
        goto LABEL_628;
      }

      if (v356 > v356 + 4)
      {
        goto LABEL_628;
      }

      LOWORD(v357) = v347 + v413;
      v358 = v455 + 4 * (v347 + v413) + v337;
      if (v358 < v344)
      {
        goto LABEL_628;
      }

      if (v358 + 4 > v345)
      {
        goto LABEL_628;
      }

      if (v358 > v358 + 4)
      {
        goto LABEL_628;
      }

      v359 = &v467 + v336;
      v360 = &v467 + 2 * v354 + v336;
      if (v360 < &v467 + v336 || v360 + 2 > v359 + 16 || v360 > v360 + 2)
      {
        goto LABEL_628;
      }

      if (*(v455 + 4 * (v352 + v449) + v337) > *(v455 + 4 * v357 + v337))
      {
        LOWORD(v357) = v352 + v449;
      }

      v361 = &v467 + 2 * v357 + v336;
      if (v361 < v359 || v361 + 2 > v359 + 16 || v361 > v361 + 2)
      {
        goto LABEL_628;
      }

      v362 = v354;
      v363 = *(&v467 + 2 * v354 + v336);
      v364 = v363 * 0.4;
      v365 = *(&v467 + 2 * v357 + v336);
      v366 = v365;
      v367 = v363 * 0.6;
      if (v364 < v366 && v367 > v366)
      {
        v357 = v357;
        v369 = v455 + 4 * v357 + v337;
        if (v369 < v344 || v369 + 4 > v345 || v369 > v369 + 4)
        {
          goto LABEL_628;
        }

        v370 = *(v455 + 4 * v357 + v337);
        if (v370 >= 0.9)
        {
          a1[v338] = v365;
          goto LABEL_584;
        }
      }
    }

    else
    {
      v362 = v354;
    }

    v371 = &v467 + 2 * v362 + v336;
    if (v371 < &v467 + v336)
    {
      goto LABEL_628;
    }

    if (v371 + 2 > &v467 + v336 + 16)
    {
      goto LABEL_628;
    }

    if (v371 > v371 + 2)
    {
      goto LABEL_628;
    }

    a1[v338] = *(&v467 + 2 * v362 + v336);
    v372 = v455 + 4 * v362 + v337;
    if (v372 < v344 || v372 + 4 > v345 || v372 > v372 + 4)
    {
      goto LABEL_628;
    }

    v370 = *(v455 + 4 * v362 + v337);
LABEL_584:
    a2[v338++] = v370;
    v337 += 32;
    v336 += 16;
    if (v337 != 96)
    {
      continue;
    }

    break;
  }

  v373 = v25 + ((*a2 + a2[1]) * 0.5);
  if (v373 > 1.0)
  {
    v373 = 1.0;
  }

  v374 = *a1;
  v375 = *a1;
  v376 = a1[1];
  if (v376 >= v375)
  {
    v377 = *a1;
  }

  else
  {
    v377 = a1[1];
  }

  if (v376 <= v374)
  {
    v376 = *a1;
  }

  v378 = (v377 * 1.4) <= v376 || v376 - v377 >= 14;
  result = a6;
  v380 = *a3;
  v381 = *a3;
  v382 = v381 < v374;
  if (v381 <= v374)
  {
    v383 = *a1;
  }

  else
  {
    v383 = *a3;
  }

  if (v382)
  {
    v375 = *a3;
  }

  v384 = 0.0;
  if ((v375 * 1.4) > v383 && v383 - v375 <= 13)
  {
    v385 = v373 < 0.4 || v378;
    if (a10 >= -11.0 && (v385 & 1) == 0)
    {
      v384 = *a5 + (v373 * 0.16);
    }
  }

  v386 = 0;
  v387 = 0;
  v388 = 0;
  if (v384 > 0.7)
  {
    v384 = 0.7;
  }

  *a5 = v384;
  if (a2[1] > *a2)
  {
    v373 = a2[1];
  }

  *a4 = v373;
  *v462 = v380;
  *&v462[2] = *a1;
  *&v462[6] = a1[2];
  *a6 = 0;
  do
  {
    v389 = *&v462[v386 + 2];
    v390 = *&v462[v386];
    v391 = v389 - v390;
    if (v389 >= v390)
    {
      v392 = *&v462[v386];
    }

    else
    {
      v392 = *&v462[v386 + 2];
    }

    if (v389 <= v390)
    {
      v389 = *&v462[v386];
    }

    if ((v392 * 1.4) > v389 && v389 - v392 <= 13)
    {
      v387 += v391;
      *a6 = v387;
      ++v388;
    }

    v386 += 2;
  }

  while (v386 != 6);
  if ((v388 & 0xFFFE) == 2)
  {
    *a6 = v387 / v388;
  }

  v393 = 0;
  *a3 = a1[1];
  do
  {
    a1[v393++] *= 2;
  }

  while (v393 != 3);
  return result;
}

void pitch_ol2(int a1, __int16 a2, float *a3, float *a4, unsigned __int16 a5, uint64_t *a6, __int16 a7)
{
  *&v58[12] = *MEMORY[0x1E69E9840];
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  *&v7 = -1;
  *(&v7 + 1) = -1;
  __B[14] = v7;
  __B[15] = v7;
  __B[12] = v7;
  __B[13] = v7;
  __B[10] = v7;
  __B[11] = v7;
  __B[8] = v7;
  __B[9] = v7;
  __B[6] = v7;
  __B[7] = v7;
  __B[4] = v7;
  __B[5] = v7;
  __B[2] = v7;
  __B[3] = v7;
  if ((a2 - a7) <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2 - a7;
  }

  if ((a2 + a7 - 1) >= 231)
  {
    v9 = 231;
  }

  else
  {
    v9 = a2 + a7 - 1;
  }

  v10 = *a6;
  v46 = a6[1];
  v11 = (*a6 + 4 * a5);
  __B[0] = v7;
  __B[1] = v7;
  v12 = 0.0;
  v57 = 0;
  v47 = a6[2];
  if ((v8 - 4) <= (v9 + 4))
  {
    v13 = (4 * a5 - 4 * v8 + v10 + 16);
    v14 = &v46[v8 - 4] - v10 + -4 * a5;
    v15 = v8 - 3;
    v16 = &v55;
    do
    {
      if (v13 > v46)
      {
        goto LABEL_53;
      }

      if (v47 > v13)
      {
        goto LABEL_53;
      }

      if (v14 < 253)
      {
        goto LABEL_53;
      }

      if (v11 > v46)
      {
        goto LABEL_53;
      }

      if (v47 > v11)
      {
        goto LABEL_53;
      }

      if (v46 - v11 <= 252)
      {
        goto LABEL_53;
      }

      LODWORD(__C) = -1;
      vDSP_dotpr(v11, 1, v13, 1, &__C, 0x40uLL);
      if (v16 < &v55 || v16 + 4 > v58 || v16 > (v16 + 4))
      {
        goto LABEL_53;
      }

      *v16 = __C;
      --v13;
      v14 += 4;
      v17 = (v9 + 5) == v15++;
      v16 = (v16 + 4);
    }

    while (!v17);
    v12 = *v56;
  }

  v18 = (v8 + 1);
  if (v18 > v9)
  {
    v19 = v56 - 4 * v8;
LABEL_35:
    __C = v56;
    v52 = v58;
    v53 = &v55;
    v48 = E_ROM_inter4_1_11466;
    v49 = Env_TR_Cdbk1;
    v50 = E_ROM_inter4_1_11466;
    interpolation(&__C, &v48, 0, 4, 4);
    v27 = v26;
    LOWORD(v28) = 0;
    v29 = v8;
    goto LABEL_41;
  }

  v20 = v56 + 1;
  v21 = v8;
  do
  {
    v22 = v20 + 1;
    v23 = v20 < &v55 || v22 > v58;
    if (v23 || v20 >= v22)
    {
      goto LABEL_53;
    }

    if (*v20 > v12)
    {
      v12 = *v20;
      v21 = v18;
    }

    v25 = v18;
    LOWORD(v18) = v18 + 1;
    v23 = v25 < v9;
    v20 = v22;
  }

  while (v23);
  v19 = v56 - 4 * v8;
  if (v21 == v8)
  {
    goto LABEL_35;
  }

  v29 = v21 - 1;
  v43 = v56 - 4 * v8;
  v30 = &v19[4 * (v21 - 1)];
  __C = v30;
  v52 = v58;
  v53 = &v55;
  v48 = E_ROM_inter4_1_11466;
  v49 = Env_TR_Cdbk1;
  v50 = E_ROM_inter4_1_11466;
  LOWORD(v28) = 1;
  interpolation(&__C, &v48, 1, 4, 4);
  v27 = v31;
  v32 = 2;
  do
  {
    __C = v30;
    v52 = v58;
    v53 = &v55;
    v48 = E_ROM_inter4_1_11466;
    v49 = Env_TR_Cdbk1;
    v50 = E_ROM_inter4_1_11466;
    interpolation(&__C, &v48, v32, 4, 4);
    v34 = v32;
    if (v33 > v27)
    {
      v27 = v33;
      LOWORD(v28) = v32;
    }

    ++v32;
  }

  while (v34 < 3);
  v8 = v21;
  v19 = v43;
LABEL_41:
  v35 = 0;
  do
  {
    __C = &v19[4 * v8];
    v52 = v58;
    v53 = &v55;
    v48 = E_ROM_inter4_1_11466;
    v49 = Env_TR_Cdbk1;
    v50 = E_ROM_inter4_1_11466;
    interpolation(&__C, &v48, v35, 4, 4);
    v37 = v35;
    v38 = v36 <= v27;
    if (v36 <= v27)
    {
      v39 = v28;
    }

    else
    {
      v27 = v36;
      v39 = v35;
    }

    v28 = v39;
    if (v38)
    {
      v40 = v29;
    }

    else
    {
      v40 = v8;
    }

    v29 = v40;
    ++v35;
  }

  while (v37 < 3);
  *a3 = vcvts_n_f32_s32(v28, 2uLL) + v40;
  __C = v11;
  v52 = v46;
  v53 = v47;
  pred_lt4(&__C, __B, v40, v28, 64, E_ROM_inter4_1_11466, Env_TR_Cdbk1, 4u, 4);
  if (v46 < v11 || v47 > v11 || v46 - v11 < 253)
  {
LABEL_53:
    __break(0x5519u);
  }

  LODWORD(__C) = -1;
  vDSP_dotpr(v11, 1, v11, 1, &__C, 0x40uLL);
  v41 = *&__C + 0.01;
  LODWORD(__C) = -1;
  vDSP_dotpr(__B, 1, __B, 1, &__C, 0x40uLL);
  v42 = 1.0 / sqrt((v41 * (*&__C + 0.01)));
  *a4 = v27 * v42;
}

BOOL noise_est(float32x2_t *a1, unint64_t a2, unint64_t a3, __int16 *a4, unint64_t a5, float *a6, unint64_t a7, float a8, float a9, float a10, float a11, uint64_t a12, float *a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, float *a19, float *a20, float *a21, __int16 *a22, unint64_t a23, unint64_t a24, __int16 *a25, float *a26)
{
  v370 = a6;
  v371 = a1;
  v376 = a2;
  v377 = a3;
  v367 = a8;
  v394[1] = *MEMORY[0x1E69E9840];
  if (a24 < a23 || (a24 - a23) <= 28)
  {
    goto LABEL_609;
  }

  v31 = 0;
  v365 = a22;
  v373 = a21;
  v369 = a13;
  v366 = a14;
  v380 = a15;
  v379 = a16;
  v32 = v371;
  v33 = v371 + 3044;
  v34 = &v371[2289] + 1;
  v35 = 0.0;
  do
  {
    v35 = (((v35 + COERCE_FLOAT(*(a23 + v31))) + COERCE_FLOAT(HIDWORD(*(a23 + v31)))) + COERCE_FLOAT(*(a23 + v31 + 8))) + COERCE_FLOAT(HIDWORD(*(a23 + v31)));
    v31 += 16;
  }

  while (v31 != 32);
  v36 = log10((v35 * 0.125));
  v37 = (v36 * 10.0) / (v367 + 0.01);
  if (v37 < 0.0)
  {
    v37 = 0.0;
  }

  if (v37 > 1.0)
  {
    v37 = 1.0;
  }

  v371[2575].f32[1] = v37;
  v38 = v32[16].u16[0];
  v372 = v33;
  v375 = v34;
  if (v38)
  {
    v359 = 1.6;
    *&v39 = 350000.0;
    v40 = 0.52;
    *&v41 = 0.85;
  }

  else
  {
    v359 = *"ff&A";
    v39 = *"";
    v40 = 0.65;
    *&v41 = 0.7;
  }

  v360 = *&v41;
  v42 = (a4 + 1);
  if ((a4 + 1) > a5 || v42 < a4 || (a4 + 2) > a5 || v42 > (a4 + 2))
  {
    goto LABEL_609;
  }

  v43 = *a4;
  v381 = &v372[41] + 4;
  v44 = v43 - v372[41].i16[2];
  if (v44 < 0)
  {
    LOWORD(v44) = v372[41].i16[2] - v43;
  }

  v45 = a4[1];
  v46 = v45 - v43;
  if (v46 < 0)
  {
    v46 = -v46;
  }

  v47 = v370 + 1;
  if ((v370 + 1) > a7)
  {
    goto LABEL_609;
  }

  if (v47 < v370)
  {
    goto LABEL_609;
  }

  v48 = (v370 + 2);
  if ((v370 + 2) > a7 || v47 > v48 || v48 < v370 || (v370 + 3) > a7 || v48 > (v370 + 3))
  {
    goto LABEL_609;
  }

  v374 = *&v39;
  v49 = v46 + v44;
  v50 = v371;
  v51 = v371[16].u16[1];
  v52 = v371[16].i16[1] ? 512 : 304;
  LODWORD(v364) = v371[16].u16[1];
  v53 = (((*v370 + v370[1]) + v370[2]) / 3.0) + a10;
  v54 = v51 ? 128 : 76;
  v55 = v51 ? 0 : 512 - v52;
  v372[41].i16[2] = v45;
  v368 = *&v50[8];
  *&v56 = 0xAAAAAAAAAAAAAAAALL;
  *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v392 = v56;
  v393 = v56;
  v390 = v56;
  v391 = v56;
  v57 = v49 >= 12 || v53 < v40;
  v58 = !v57;
  v362 = v58;
  v59 = &v50[442] + 1;
  v388 = v56;
  v389 = v56;
  *__N = v56;
  v387 = v56;
  memset(__dst + v52, 255, v55);
  memcpy(__dst, &v50[442] + 4, v52);
  if ((__dst + v52) < __dst)
  {
    goto LABEL_609;
  }

  v60 = &v50[2980];
  v61 = &v50[2916];
  v62 = __N;
  if (v50[442].f32[1] < v50[443].f32[0])
  {
    v62 = (__N + 2);
    LOWORD(__N[0]) = 0;
  }

  v63 = &v50[570] + 4;
  v64 = v54 - 1;
  v65 = 1;
  do
  {
    v66 = &v59[v65];
    v67 = v66 + 1;
    if (v66 < v59 || v67 > v63 || v66 > v67)
    {
      goto LABEL_609;
    }

    v70 = v66 - 1;
    v71 = *v66;
    if (v66 - 1 < v59 || v70 > v66)
    {
      goto LABEL_609;
    }

    if (v71 < *v70)
    {
      v73 = v66 + 2;
      if (v73 > v63 || v67 > v73)
      {
        goto LABEL_609;
      }

      if (v71 < *v67)
      {
        if (v62 < __N || (v62 + 2) > v394 || v62 > (v62 + 2))
        {
          goto LABEL_609;
        }

        *v62 = v65;
        v62 = (v62 + 2);
      }
    }

    ++v65;
  }

  while (v64 > v65);
  v74 = &v59[v64];
  if (v74 < v59)
  {
    goto LABEL_609;
  }

  if ((v74 + 1) > v63)
  {
    goto LABEL_609;
  }

  if (v74 > v74 + 1)
  {
    goto LABEL_609;
  }

  v75 = &v59[v54];
  v76 = v75 - 2;
  if (v75 - 2 < v59)
  {
    goto LABEL_609;
  }

  v77 = (v75 - 1);
  if (v77 > v63 || v76 > v77)
  {
    goto LABEL_609;
  }

  if (*v74 < *v76)
  {
    if (v62 < __N || (v62 + 2) > v394 || v62 > (v62 + 2))
    {
      goto LABEL_609;
    }

    *v62 = v64;
    LODWORD(v62) = v62 + 2;
  }

  v78 = (((v62 - __N) >> 1) - 1);
  __A = 0.0;
  vDSP_vfill(&__A, __dst, 1, v54);
  v378 = v78;
  if (v78 < 1)
  {
    *a26 = *v59;
  }

  else
  {
    *a26 = 0.0;
    v79 = 0.0;
    v80 = __N;
    v81 = v78;
    do
    {
      v82 = v80 + 2;
      if (v80 < __N || v82 > v394 || v80 > v82)
      {
        goto LABEL_609;
      }

      v85 = &v59[*v80];
      v86 = v85 + 1;
      v87 = v85 < v59 || v86 > v63;
      if (v87 || v85 > v86)
      {
        goto LABEL_609;
      }

      v79 = *v85 + v79;
      *a26 = v79;
      v80 = (v80 + 2);
      --v81;
    }

    while (v81);
    *a26 = v79 / v378;
    __A = 0.0;
    vDSP_vfill(&__A, __dst, 1, SLOWORD(__N[0]));
    v89 = __N + v78;
    if (v89 < __N)
    {
      goto LABEL_609;
    }

    if (v89 + 1 > v394)
    {
      goto LABEL_609;
    }

    if (v89 > v89 + 1)
    {
      goto LABEL_609;
    }

    v90 = *v89;
    v91 = &__dst[v90];
    if (v91 < __dst)
    {
      goto LABEL_609;
    }

    __A = 0.0;
    vDSP_vfill(&__A, v91, 1, (v54 - v90));
    v92 = __N[0];
    if (SLOWORD(__N[0]) < *v89)
    {
      v93 = __N[0];
      v94 = *v89;
      v95 = 4 * SLOWORD(__N[0]);
      v96 = -SLOWORD(__N[0]);
      v97 = 0.0;
      v98 = __dst;
      v99 = v371;
      v100 = 0.0;
      v101 = __N;
      do
      {
        v102 = (v101 + 2);
        if ((v101 + 2) > v394 || v101 > v102)
        {
          goto LABEL_609;
        }

        if (v92 == v93)
        {
          v104 = (&v99[442] + v95 + 4);
          if (v104 < v59)
          {
            goto LABEL_609;
          }

          v105 = &v99[443] + v95;
          if (v105 > v63)
          {
            goto LABEL_609;
          }

          if (v104 > v105)
          {
            goto LABEL_609;
          }

          if (v102 < __N)
          {
            goto LABEL_609;
          }

          v106 = v101 + 4;
          if (v106 > v394)
          {
            goto LABEL_609;
          }

          if (v102 > v106)
          {
            goto LABEL_609;
          }

          v107 = *v102;
          v108 = &v59[v107];
          if (v108 < v59 || (v108 + 1) > v63 || v108 > v108 + 1)
          {
            goto LABEL_609;
          }

          v97 = *v104;
          v92 = *v102;
          v100 = (*v108 - v97) / (v96 + v107);
          v101 = v102;
        }

        v109 = (&v99[442] + v95 + 4);
        if (v109 < v59)
        {
          goto LABEL_609;
        }

        v110 = &v99[443] + v95;
        if (v110 > v63 || v109 > v110)
        {
          goto LABEL_609;
        }

        v111 = *v109;
        v112 = &v98[v95 / 4];
        v113 = &v98[v95 / 4 + 1];
        v116 = v113 <= __N && v112 <= v113 && v112 >= __dst;
        if (v111 <= v97)
        {
          v117 = 0.0;
          if (!v116)
          {
            goto LABEL_609;
          }
        }

        else
        {
          if (!v116)
          {
            goto LABEL_609;
          }

          v117 = v111 - v97;
        }

        *v112 = v117;
        v97 = v100 + v97;
        ++v93;
        v99 = (v99 + 4);
        ++v98;
        --v96;
      }

      while (v94 != v93);
    }
  }

  v118 = *a26 * 0.434294482;
  *a26 = v118;
  v119 = &__dst[v54];
  if (__N < v119 - 20 || __dst > v119 - 40 || __N - (v119 - 40) < 157)
  {
    goto LABEL_609;
  }

  v120 = 0.0;
  v121 = 0x3FFFFFFFFFFFFFD8;
  do
  {
    v120 = (((v120 + COERCE_FLOAT(*&v119[v121])) + COERCE_FLOAT(HIDWORD(*&v119[v121]))) + COERCE_FLOAT(*&v119[v121 + 2])) + COERCE_FLOAT(HIDWORD(*&v119[v121]));
    v121 += 4;
  }

  while (v121 * 4);
  v122 = v375;
  v123 = ((v120 / 40.0) * 0.4) + (v375[569] * 0.6);
  v124 = v378;
  if (v123 < 9.6 && *(v375 + 240))
  {
    *(v375 + 240) = 0;
    v122[570] = v123;
    v125 = v368;
  }

  else
  {
    v125 = v368;
    if ((v123 - v375[570]) > 4.5)
    {
      *(v375 + 240) = 1;
    }
  }

  if ((*&v125 - 16401) <= 0xFFFFFFFFFFFFE56ELL)
  {
    *(v122 + 240) = 1;
  }

  v122[569] = v123;
  if (v124 >= 1)
  {
    v126 = &v61[SLOWORD(__N[0])];
    if (v126 < v61)
    {
      goto LABEL_609;
    }

    if (v126 + 1 > v60)
    {
      goto LABEL_609;
    }

    if (v126 > v126 + 1)
    {
      goto LABEL_609;
    }

    v127 = __N + v378;
    if (v127 < __N || v127 + 1 > v394 || v127 > v127 + 1)
    {
      goto LABEL_609;
    }

    v128 = LOWORD(__N[0]);
    v129 = *v127;
    v130 = v129;
    LODWORD(v131) = (LOWORD(__N[0]) + 1);
    if (v131 <= v129)
    {
      v132 = *v126 * *v126;
      v133 = &v371[2916] + 4;
      v134 = 1;
      v135 = 0.0;
      v136 = 0.0;
      do
      {
        v137 = __N + v134;
        v138 = (v137 + 1);
        if (v137 < __N || v138 > v394 || v137 > v138)
        {
          goto LABEL_609;
        }

        v131 = v131;
        v141 = &v61[v131];
        if (*v137 == v131)
        {
          if (v141 < v61 || v141 + 1 > v60 || v141 > v141 + 1)
          {
            goto LABEL_609;
          }

          v142 = 0.0;
          if (v136 != 0.0)
          {
            v143 = v132 + (*v141 * *v141);
            if (v143 != 0.0)
            {
              v142 = (v135 * v135) / (v136 * v143);
            }
          }

          v144 = (v137 - 1);
          if (v137 - 1 < __N || v144 > v137)
          {
            goto LABEL_609;
          }

          if (*v144 < v131)
          {
            v145 = v131 - *v144;
            v146 = *v144;
            v147 = __dst;
            v148 = v133;
            v149 = v50 + 2916;
            do
            {
              v150 = &v147[v146];
              if (&v147[v146] < __dst)
              {
                goto LABEL_609;
              }

              v151 = v150 + 1 > __N || v150 > v150 + 1;
              v152 = (v149 + v146 * 4);
              v153 = &v148[v146 * 4];
              v154 = !v151 && v152 >= v61;
              v155 = !v154 || v153 > v60;
              if (v155 || v152 > v153)
              {
                goto LABEL_609;
              }

              *v152 = *v150;
              *v150 = v142;
              v149 = (v149 + 4);
              v148 += 4;
              ++v147;
            }

            while (--v145);
          }

          ++v134;
          v135 = 0.0;
          v132 = 0.0;
          v136 = 0.0;
        }

        v157 = &__dst[v131];
        if (v157 < __dst || v157 + 1 > __N || v157 > v157 + 1 || v141 < v61 || v141 + 1 > v60 || v141 > v141 + 1)
        {
          goto LABEL_609;
        }

        v136 = v136 + (*v157 * *v157);
        v132 = v132 + (*v141 * *v141);
        v135 = v135 + (*v157 * *v141);
        LODWORD(v131) = (v131 + 1);
      }

      while (v131 <= v130);
    }

    if (v128 >= 1)
    {
      if (v128 >= 0x81)
      {
        goto LABEL_609;
      }

      memcpy(v61, __dst, 4 * v128);
    }

    v158 = &__dst[v130];
    if (v158 < __dst || (v159 = &v61[v130], v159 < v61) || (v54 - v130) >= 1 && (v60 < v159 || v158 > __N || (v160 = 4 * (v54 - v130), v160 > 512 - 4 * v130) || v160 > v60 - v159 || (memcpy(&v61[v130], v158, v160), &v159[v160 / 4] < v159)))
    {
LABEL_609:
      __break(0x5519u);
    }
  }

  *a19 = 0.0;
  v161 = v54;
  vDSP_sve(__dst, 1, a19, v54);
  v383 = 0.9;
  vDSP_vintb(__dst, 1, v60, 1, &v383, v60, 1, v54);
  v382 = NAN;
  vDSP_maxv(v60, 1, &v382, v54);
  v162 = 0.0;
  v163 = v382;
  do
  {
    v164 = *v60;
    v60 += 4;
    v162 = (((v162 + *&v164) + *(&v164 + 1)) + *(&v164 + 2)) + *(&v164 + 3);
    v161 -= 4;
  }

  while (v161);
  v166 = v371;
  v165 = v372;
  if (v364 == 0.0)
  {
    v162 = v162 * 1.53;
    *a19 = *a19 * 1.53;
  }

  v167 = v375;
  v168 = v165[11].f32[0];
  v169 = v168 + flt_19B0AF9D0[v162 > 56.0];
  if (v169 > 60.0)
  {
    v169 = 60.0;
  }

  if (v169 < 49.0)
  {
    v169 = 49.0;
  }

  v165[11].f32[0] = v169;
  if (v378 <= 0)
  {
    __A = 0.0;
    vDSP_vfill(&__A, v61, 1, v54);
  }

  v170 = v163 > 0.95;
  if (v162 > v168)
  {
    v170 = 1;
  }

  *v365 = v170;
  v171 = (a17 + 40);
  v172 = &v166[2284] + 1;
  v173 = *(v167 + 159);
  v174 = 0.0;
  v175 = 0.0;
  if (v173 >= 10)
  {
    LOWORD(v176) = 10;
    v177 = (a17 + 40);
    v178 = v375;
    while (v177 >= a17 && (v177 + 1) <= a18 && v177 <= v177 + 1 && v178 + 1 <= &v371[2294] + 1 && v178 <= v178 + 1 && v178 >= v172)
    {
      v179 = *v177;
      if (*v177 > *v178)
      {
        v180 = (v179 * v179) / *v178;
      }

      else
      {
        v179 = *v178;
        v180 = (*v178 * *v178) / *v177;
      }

      v175 = v175 + v180;
      v174 = v174 + v179;
      v176 = (v176 + 1);
      ++v177;
      ++v178;
      if (v176 > v173)
      {
        goto LABEL_231;
      }
    }

    goto LABEL_609;
  }

LABEL_231:
  *a20 = v175 / (v174 + 0.00001);
  v181 = *(v375 + 158);
  v182 = (a17 + 4 * v181);
  if (v182 > a18 || v182 < a17 || (10 - v181) < 0 || (a18 - v182) >> 2 < (10 - v181))
  {
    goto LABEL_609;
  }

  v183 = 0.0;
  if (v181 != 10)
  {
    v184 = (10 - v181);
    do
    {
      v185 = *v182++;
      v183 = v183 + v185;
      --v184;
    }

    while (v184);
  }

  if (v171 > a18 || v171 < a17 || (v173 - 9) < 0 || (a18 - v171) >> 2 < (v173 - 9))
  {
    goto LABEL_609;
  }

  v186 = 0.0;
  if (v173 != 9)
  {
    v187 = (v173 - 9);
    do
    {
      v188 = *v171++;
      v186 = v186 + v188;
      --v187;
    }

    while (v187);
  }

  v189 = fminf(v183, v186);
  v190 = v186 / v183;
  if (v189 < 100.0)
  {
    v190 = 0.0;
  }

  if (v190 > 10.0)
  {
    v190 = 10.0;
  }

  v191 = v371;
  v192 = v372->f32[0];
  v364 = 0.9;
  v363 = (v190 * 0.1) + (v192 * 0.9);
  v372->f32[0] = v363;
  v193 = *&v191[2280].i32[1];
  *(v172 + 2) = *&v191[2278].i32[1];
  *(v172 + 3) = v193;
  *(v172 + 4) = *&v191[2282].i32[1];
  v194 = *&v191[2276].i32[1];
  *v172 = *&v191[2274].i32[1];
  *(v172 + 1) = v194;
  v195 = (a17 + 80);
  if (a17 + 80 < a17 || a18 < v195 || a18 - v195 <= 0x4F)
  {
    goto LABEL_609;
  }

  v196 = v174 * 5.0;
  memmove(&v191[2274] + 4, v195, 0x50uLL);
  v197 = 0.0;
  if (a9 >= 0.0)
  {
    v198 = a9;
  }

  else
  {
    v198 = 0.0;
  }

  v199 = (v198 * 0.064) + 0.75;
  if (v199 <= 0.999)
  {
    v200 = v199;
  }

  else
  {
    v200 = 0.999;
  }

  if (v175 <= v196)
  {
    v201 = v200;
  }

  else
  {
    v201 = 0.0;
  }

  *v373 = 0.0;
  v202 = 1.0;
  v203 = 1.0;
  v204 = v374;
  if (v181 <= v173)
  {
    v205 = &v371[3075] + 4;
    v206 = 1.0;
    v207 = 1.0 - v200;
    v208 = &v371[3044] + 1;
    v209 = &v371[3054] + 4;
    v210 = 1.0 - v201;
    v211 = &v371[2542];
    v212 = &v371[2549] + 4;
    v368 = -0.00349387405;
    v213 = &v371[3065] + 1;
    LODWORD(v378) = 1124072960;
    do
    {
      v214 = (v380 + 4 * v181);
      v215 = v214 + 1;
      v216 = v214 < v380 || v215 > v379;
      if (v216 || v214 > v215)
      {
        goto LABEL_609;
      }

      v181 = v181;
      v218 = *v214 + v206;
      v219 = (v205 + 4 * v181);
      if (v203 <= v204)
      {
        if (v219 < v205 || (v219 + 1) > v381 || v219 > v219 + 1)
        {
          goto LABEL_609;
        }

        v220 = *v219 + v206;
        if (v218 <= v220)
        {
          v221 = v220 / v218;
        }

        else
        {
          v221 = v218 / v220;
        }

        v203 = v203 * v221;
      }

      if (v219 < v205 || (v219 + 1) > v381 || v219 > v219 + 1)
      {
        goto LABEL_609;
      }

      *v219 = (v207 * *v214) + (v200 * *v219);
      v222 = &v208[v181];
      if (v202 <= v204)
      {
        if (v222 < v208 || (v222 + 1) > v209 || v222 > v222 + 1)
        {
          goto LABEL_609;
        }

        v223 = *v222 + v206;
        if (v218 <= v223)
        {
          v224 = v223 / v218;
        }

        else
        {
          v224 = v218 / v223;
        }

        v202 = v202 * v224;
      }

      if (v222 < v208 || (v222 + 1) > v209 || v222 > v222 + 1)
      {
        goto LABEL_609;
      }

      *v222 = (v210 * *v214) + (v201 * *v222);
      if ((v181 - 2) <= 0xEu)
      {
        v225 = v211 + 4 * v181;
        v226 = (v225 - 8);
        if (v225 - 8 < v211)
        {
          goto LABEL_609;
        }

        v227 = v225 - 4;
        if (v227 > v212 || v226 > v227)
        {
          goto LABEL_609;
        }

        v228 = log(*v214);
        if (*v226 >= v228)
        {
          v229 = *v226 - v228;
        }

        else
        {
          v229 = v228 - *v226;
        }

        *v373 = v229 + *v373;
        *v226 = v228;
        if (*(v375 + 148) > 99)
        {
          v231 = &v213[v181];
          if (v231 < v213 || (v231 + 1) > v205 || v231 > v231 + 1)
          {
            goto LABEL_609;
          }

          v232 = log((*v214 + v206));
          v233 = v210;
          v234 = v200;
          v235 = v207;
          v236 = v201;
          v237 = v232;
          v238 = log((*v231 + 1.0));
          v204 = v374;
          v239 = v237 - v238;
          v201 = v236;
          v207 = v235;
          v200 = v234;
          v210 = v233;
          v206 = 1.0;
          *&v239 = v239;
          v197 = v197 + fabsf(*&v239);
        }

        else
        {
          v230 = log((*v214 + v206));
          *&v230 = v230 + v368;
          v197 = v197 + fabsf(*&v230);
          v204 = v374;
        }
      }

      if (v197 >= 128.0)
      {
        v197 = *&v378;
      }

      LODWORD(v181) = (v181 + 1);
    }

    while (v181 <= v173);
  }

  v240 = v367;
  if (v367 >= -5.0)
  {
    v241 = v202;
  }

  else
  {
    v241 = 1.0;
  }

  if (v367 >= -5.0)
  {
    v242 = v203;
  }

  else
  {
    v242 = 1.0;
  }

  if (v367 >= 20.0)
  {
    v243 = v367;
  }

  else
  {
    v243 = 20.0;
  }

  v244 = *(v375 + 148);
  v245 = v372;
  v246 = (v372[55].f32[0] * 0.75) + (v243 * 0.25);
  v372[55].f32[0] = v246;
  v247 = (v245[55].f32[1] * 0.75) + ((v243 * 0.25) * v243);
  v245[55].f32[1] = v247;
  if (v240 > 0.0 && (*v365 > 0 || ((*v370 + v370[1]) * 0.5) > 0.85))
  {
    LOWORD(v248) = 0;
    v245[42].i16[3] = 0;
    goto LABEL_332;
  }

  v248 = ++v245[42].i16[3];
  if (v248 >= 2)
  {
    if (v240 < 15.0 || v244 >= 11 && (v240 - v245[48].f32[1]) > 7.0)
    {
      goto LABEL_323;
    }

    if (v240 > 30.0 && (v247 - (v246 * v246)) > 8.0)
    {
      v249 = vcvts_n_f32_u32(v248, 2uLL);
      if (v249 <= 0.0)
      {
        v358 = (0.5 - v249);
        if (v358 > 0x8000u)
        {
          v248 = -v358;
          goto LABEL_324;
        }
      }

      else
      {
        v248 = (v249 + 0.5);
        if (v248 >= 1)
        {
          goto LABEL_324;
        }
      }

LABEL_323:
      LOWORD(v248) = 1;
LABEL_324:
      v245[42].i16[3] = v248;
    }
  }

LABEL_332:
  v250 = v245[43].u16[0];
  if (v245[43].i16[0] < 0)
  {
    if (v250 != 0xFFFF || (v240 - v245[47].f32[1]) >= 5.0)
    {
      goto LABEL_340;
    }

    LOWORD(v250) = 0;
    goto LABEL_338;
  }

  if ((v240 - v245[47].f32[1]) <= 5.0)
  {
LABEL_338:
    v251 = v250 + 1;
    goto LABEL_339;
  }

  v251 = -1;
LABEL_339:
  v245[43].i16[0] = v251;
LABEL_340:
  if ((v369 + 1) > v366)
  {
    goto LABEL_609;
  }

  if (v369 + 1 < v369)
  {
    goto LABEL_609;
  }

  v252 = v369 + 2;
  if (v369 + 2 < v369 || (v369 + 3) > v366 || v252 > v369 + 3)
  {
    goto LABEL_609;
  }

  v253 = v369;
  v254 = *v369 / v369[2];
  v255 = 8.0;
  v256 = v254 > 8.0 || v254 < 0.0;
  if (v254 < 0.0 && v254 <= 8.0)
  {
    v255 = 0.0;
  }

  v257 = v256 ? v255 : *v369 / v369[2];
  v258 = v372;
  v259 = (v372[51].f32[1] * 0.85) + (v257 * 0.15);
  v372[51].f32[1] = v259;
  v260 = vabds_f32(v257, v259);
  v261 = v258[52].f32[0];
  v262 = 0.1;
  v263 = v260 >= v261 ? (v261 * 0.8) + (v260 * 0.2) : (v261 * v364) + (v260 * 0.1);
  v258[52].f32[0] = v263;
  v264 = v260 <= v263 ? v263 : v260;
  v265 = (v253 + 64);
  if (v253 + 64 < v253 || (v369 + 17) > v366 || v265 > v369 + 17)
  {
    goto LABEL_609;
  }

  v266 = *v252 / *v265;
  v267 = 8.0;
  v268 = v266 > 8.0 || v266 < 0.0;
  v269.i32[0] = 0;
  if (v266 < 0.0 && v266 <= 8.0)
  {
    v267 = 0.0;
  }

  if (v268)
  {
    v266 = v267;
  }

  v270 = v372;
  v271 = v372[52].f32[1];
  v272 = (v271 * 0.97) + (v266 * 0.03);
  if (v266 > v271)
  {
    v272 = (v271 * 0.8) + (v266 * 0.2);
  }

  v372[52].f32[1] = v272;
  v273 = (v270[53].f32[0] * 0.98) + (v266 * 0.02);
  v270[53].f32[0] = v273;
  v274 = v272 - v273;
  v275 = v270[54].f32[0];
  if (v274 >= v275)
  {
    v276 = (v275 * 0.95) + (v274 * 0.05);
  }

  else
  {
    v276 = (v275 * 0.98) + (v274 * 0.02);
  }

  v270[54].f32[0] = v276;
  if (v274 <= v276)
  {
    v277 = v276;
  }

  else
  {
    v277 = v274;
  }

  v278 = v270[42].f32[0];
  v279 = v367;
  v280 = v367 - v278;
  if ((v367 - v278) < 10.0)
  {
    v269.f32[0] = 1.0;
  }

  v281 = v371;
  v269.f32[1] = v367 - v278;
  v282 = vmla_f32(vmul_f32(v371[3093], vdup_n_s32(0x3F7851ECu)), vdup_n_s32(0x3CF5C28Fu), v269);
  v371[3093] = v282;
  v283 = v270[47].f32[1];
  v284 = (v270[50].f32[0] * 0.97) + ((v279 - v283) * 0.03);
  v270[50].f32[0] = v284;
  v285 = v270[50].f32[1];
  v286 = v285 * 0.99;
  if (v248)
  {
    v287 = v285 * 0.99;
  }

  else
  {
    v287 = (v285 * 0.97) + 0.03;
  }

  v270[50].f32[1] = v287;
  if (v282.f32[0] >= 0.05)
  {
    LOWORD(v288) = 0;
    v289 = 0;
  }

  else
  {
    v288 = (v270[51].i16[0] + 1);
    v289 = v288 > 300;
  }

  v290 = v374;
  v270[51].i16[0] = v288;
  if (v242 <= v290 && *v365 < 1)
  {
    v291 = v270[10].f32[1];
    v292 = 0.0;
  }

  else
  {
    v291 = v270[10].f32[1];
    v292 = 0.01;
  }

  v293 = v292 + (v291 * 0.99);
  v270[10].f32[1] = v293;
  if (*a25 <= 239 && (v363 > 1.0 || v242 > v374 || v362) || (v279 - a11) > 10.0 && v244 > 150 || ((*v370 + v370[1]) * 0.5) > v360 || (*v252 / *v265) > v359)
  {
    v294 = 2;
  }

  else
  {
    v294 = 2;
    if (*v365 <= 0)
    {
      if (v241 <= v374 || v293 <= 0.8)
      {
        v294 = -1;
      }

      else
      {
        v294 = 2;
      }
    }
  }

  v295 = v270[41].i16[3] + v294;
  v296 = v295;
  v270[41].i16[3] = v295;
  if (v295 <= 6)
  {
    if ((v295 & 0x80000000) == 0)
    {
      goto LABEL_400;
    }

    v296 = 0;
  }

  else
  {
    v296 = 6;
  }

  v270[41].i16[3] = v296;
LABEL_400:
  if (v293 <= v287)
  {
    v297 = v287;
  }

  else
  {
    v297 = v293;
  }

  if (v297 <= v274)
  {
    v298 = v274;
  }

  else
  {
    v298 = v297;
  }

  if (v287 <= v277)
  {
    v299 = v277;
  }

  else
  {
    v299 = v287;
  }

  if (v299 <= v264)
  {
    v300 = v264;
  }

  else
  {
    v300 = v299;
  }

  v301 = 0.0;
  if (*a25)
  {
    v302 = 0.0;
  }

  else
  {
    v302 = 1.0;
  }

  if (v287 >= v302)
  {
    v303 = v287;
  }

  else
  {
    v303 = v302;
  }

  v304 = v270[48].f32[1];
  if (v304 < 50.0)
  {
    v301 = 1.0;
  }

  v305 = (v301 * 1.5) + 1.5;
  v306 = v270[57].f32[0];
  v307 = v283 + (v305 * v306);
  v309 = v260 > 0.5 && v257 > 7.95;
  if (v307 <= v279)
  {
    v310 = 0;
    v312 = v242 < 1000.0 && v257 > 7.95 || v277 < 0.1;
    if (v312 && v242 < 100000.0 && v287 < 0.5)
    {
      v310 = !v309;
    }
  }

  else
  {
    v310 = 1;
  }

  v313 = 0;
  if (v309)
  {
    if (v303 >= 0.4 || v307 <= v279)
    {
      goto LABEL_446;
    }
  }

  else if (v303 >= 0.4)
  {
    goto LABEL_446;
  }

  if (v293 < 0.85)
  {
    v313 = v304 < 50.0;
  }

LABEL_446:
  if (v296)
  {
    if (v279 >= 55.0 || v309)
    {
      v314 = 0;
      goto LABEL_456;
    }

    v315 = fminf(v264, v277) < 0.1;
    if (v298 >= 0.85 || !v315)
    {
      v314 = v300 < 0.3 || v298 < 0.15;
      goto LABEL_456;
    }
  }

  v314 = 1;
LABEL_456:
  v316 = 0;
  result = (v279 - v283) < (v306 + v306) && v270[57].f32[1] > 15.0;
  v319 = v248;
  v320 = v248 > 20;
  if (v244 <= 149 && v248 >= 6 && (v279 - v304) < 7.0)
  {
    v322 = v286 < 0.23 && v293 < 0.59;
    v316 = 1;
    if (v293 < 0.38 || v322 || v197 < 50.0 || v286 < 0.15 || !v296)
    {
      goto LABEL_494;
    }

    if (v279 >= 42.0)
    {
      v316 = 0;
    }

    else
    {
      v323 = v248 > 0xAu;
      v325 = v293 < 0.8 && v286 < 0.35;
      v316 = v325 && v323;
    }
  }

  if (v307 <= v279 && !v316)
  {
    goto LABEL_525;
  }

LABEL_494:
  if (v296 != 0 && (!v320 || !result))
  {
    if (v282.f32[0] <= v364 && (!v314 && !v313 || !v310))
    {
      v328 = v316;
    }

    else
    {
      v328 = 1;
    }

    if (v328)
    {
      goto LABEL_508;
    }

LABEL_525:
    v331 = v287 > v364 && v289;
    if (v331 && v278 > 0.0)
    {
      v332 = &v372[21] + 1;
      v333 = 20;
      while (v332 + 1 <= &v281[3075] + 1 && v332 <= v332 + 1)
      {
        if (*v332 > 0.007)
        {
          *v332 = *v332 * 0.98;
        }

        ++v332;
        if (!--v333)
        {
          goto LABEL_597;
        }
      }

      goto LABEL_609;
    }

    goto LABEL_597;
  }

  if (v293 < 0.85 && !v296 && (v284 < 10.0 || v320 && result) && v282.f32[1] < 40.0 && v280 < 10.0)
  {
    goto LABEL_539;
  }

LABEL_508:
  v329 = v270[42].i16[2];
  if (v319 >= 81 && !(v329 | v296) && v270[54].f32[1] > 0.5 || v316 && (v319 > 80 || !v296 || v197 < 10.0))
  {
LABEL_539:
    v335 = 0;
    v270[42].i16[2] = 1;
    while (1)
    {
      v336 = (v376 + v335);
      v337 = v376 + v335 + 4;
      v338 = v376 + v335 < v376 || v337 > v377;
      v339 = v338 || v336 > v337;
      v340 = (v281 + v335 + 24524);
      v341 = &v281[3066] + v335;
      v342 = v339 || v341 > &v281[3075] + 4;
      if (v342 || v340 > v341)
      {
        goto LABEL_609;
      }

      v340->i32[0] = *v336;
      v335 += 4;
      if (v335 == 80)
      {
        goto LABEL_597;
      }
    }
  }

  if (v296)
  {
    v330 = v314;
  }

  else
  {
    v330 = 1;
  }

  if (v293 < 0.8 && v330 && v287 < 0.1 || v293 < 0.7 && (v296 ? (v344 = v197 < 17.0) : (v344 = 1), v344 ? (v345 = 0) : (v345 = 1), (v345 & 1) == 0 && v314 && v287 < 0.15))
  {
LABEL_521:
    if (v319 <= 49 && v296 && (v293 > 0.6 || (v316 & 1) == 0 && v197 > 8.0 && (a11 - v278) < 10.0))
    {
      v262 = 0.01;
    }

    goto LABEL_582;
  }

  if (v319 >= 81)
  {
    if (v278 > 5.0)
    {
      v346 = a11 + (v306 * 1.5);
      if (v346 < 1.0)
      {
        v346 = 1.0;
      }

      if (v346 > v279)
      {
        goto LABEL_582;
      }
    }

    if (v296 || v329 < 31)
    {
      goto LABEL_600;
    }

LABEL_576:
    if (v270[54].f32[1] > 0.5)
    {
      v347 = 1;
    }

    else
    {
      v347 = v316;
    }

    if ((v347 & 1) == 0)
    {
      goto LABEL_580;
    }

LABEL_582:
    v348 = 0;
    v372[42].i16[2] = 1;
    v349 = v281 + 3066;
    while (1)
    {
      v350 = (&v281[3065] + v348 + 4);
      v351 = (v349 + v348) > &v281[3075].i32[1] || v350 > (v349 + v348);
      v352 = (v376 + v348);
      v353 = v376 + v348 + 4;
      v354 = !v351 && v352 >= v376;
      v355 = !v354 || v353 > v377;
      if (v355 || v352 > v353)
      {
        goto LABEL_609;
      }

      *v350 = *v350 + (v262 * (*v352 - *v350));
      v348 += 4;
      if (v348 == 80)
      {
        goto LABEL_597;
      }
    }
  }

  if (!v296 && v319 >= 51 && v329 > 30)
  {
    goto LABEL_576;
  }

LABEL_600:
  if (v316)
  {
    goto LABEL_521;
  }

  if (v319 > 100 || !v296)
  {
LABEL_580:
    v372[42].i16[2] = v329 + 1;
  }

LABEL_597:
  v357 = 0.0;
  if (!v296)
  {
    v357 = 1.0;
  }

  v372[54].f32[1] = (v372[54].f32[1] * 0.8) + (v357 * 0.2);
  return result;
}

void vad_param_updt(uint64_t a1, __int16 *a2, float *a3, int a4, unint64_t a5, unint64_t a6, float a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a1 + 24862;
  if (*(a1 + 142))
  {
    goto LABEL_28;
  }

  v13 = a1 + 56994;
  v14 = *(a1 + 96);
  v16 = v14 == 2400 || v14 == 0;
  if (*(a1 + 144))
  {
    v17 = !v16;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || *(a1 + 18612) < 4)
  {
    v25 = 0;
    *(a1 + 57004) = 0;
    v26 = 56996;
  }

  else
  {
    v18 = (*(a1 + 56996) + 1);
    v19 = v18 < 5;
    if (v18 >= 5)
    {
      LOWORD(v18) = 5;
    }

    *(a1 + 56996) = v18;
    if (v19)
    {
      goto LABEL_23;
    }

    v37 = -1;
    *&v20 = -1;
    *(&v20 + 1) = -1;
    v36[2] = v20;
    v36[3] = v20;
    v36[0] = v20;
    v36[1] = v20;
    v21 = a5 + 4;
    if (a6 < a5 + 4 || v21 < a5 || (a6 - (a5 + 4)) <= 60)
    {
      __break(0x5519u);
      return;
    }

    a2rc(v21, v36);
    if (*v13 == 1)
    {
      *v13 = 0;
      v22 = 0.0;
      v23 = *v36;
      v24 = *v36;
    }

    else
    {
      v24 = *(v13 + 14);
      v23 = *v36;
      v22 = *(v13 + 6);
    }

    v34 = (v23 * 0.2) + (v24 * 0.8);
    v35 = v22 + (v34 - v24);
    *(v13 + 6) = v35;
    *(v13 + 14) = v34;
    if (fabsf(v35) <= 0.2)
    {
      goto LABEL_23;
    }

    v25 = 1;
    *v13 = 1;
    *(v13 + 14) = 0;
    *(v13 + 6) = 0;
    v26 = 57004;
  }

  *(a1 + v26) = v25;
LABEL_23:
  if (*(v13 + 10) != 1)
  {
    goto LABEL_28;
  }

  if (*(v11 + 714) < 8)
  {
    if (*(a1 + 96) != 2400)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v11 + 134) = 1;
    *(a1 + 96) = 2400;
  }

  *(v13 + 10) = 0;
LABEL_28:
  v27 = (((*a3 + a3[1]) + a3[2]) / 3.0) + a7;
  if (v27 <= 0.65)
  {
    goto LABEL_37;
  }

  v28 = *a2;
  v29 = v28 - a4;
  if (v28 - a4 < 0)
  {
    v29 = a4 - v28;
  }

  v30 = a2[1];
  v31 = v30 - v28;
  if (v31 < 0)
  {
    v31 = -v31;
  }

  v32 = v31 + v29;
  v33 = a2[2] - v30;
  if (v33 < 0)
  {
    LOWORD(v33) = v30 - a2[2];
  }

  if ((v32 + v33) > 41)
  {
LABEL_37:
    *v11 = 0;
  }

  else
  {
    ++*v11;
  }

  *(v11 + 6) = v27;
}

uint64_t long_enr(uint64_t result, int a2, int a3, float a4)
{
  v4 = (result + 24688);
  if (*(result + 18612) <= 3)
  {
    v5 = *v4;
    *(result + 24992) = *(result + 24688);
    v6 = v5 + 10.0;
    if (*(result + 24804) >= v6)
    {
      return result;
    }

LABEL_11:
    *(result + 24804) = v6;
    return result;
  }

  v7 = *(result + 24992);
  v8 = (*v4 * 0.02) + (v7 * 0.98);
  v9 = (*v4 * 0.05) + (v7 * 0.95);
  if (*(result + 18612) >= 0x96u)
  {
    v9 = v8;
  }

  *(result + 24992) = v9;
  if (a2 && !a3)
  {
    v10 = *(result + 24804);
    if ((v10 - a4) >= 10.0)
    {
      v6 = v10 + -0.05;
    }

    else
    {
      v6 = (a4 * 0.02) + (v10 * 0.98);
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t mdct_classifier(unint64_t a1, unint64_t a2, uint64_t a3, int a4, float *a5, unint64_t a6)
{
  v7 = 0;
  v8 = 0;
  v108 = *MEMORY[0x1E69E9840];
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v105[6] = v9;
  *v106 = v9;
  v105[4] = v9;
  v105[5] = v9;
  v105[2] = v9;
  v105[3] = v9;
  v105[0] = v9;
  v105[1] = v9;
  v104[17] = v9;
  v104[18] = v9;
  v104[15] = v9;
  v104[16] = v9;
  v104[13] = v9;
  v104[14] = v9;
  v104[12] = v9;
  *&v106[12] = v9;
  v104[11] = v9;
  v104[10] = v9;
  v104[9] = v9;
  v104[8] = v9;
  v104[7] = v9;
  v104[6] = v9;
  v104[5] = v9;
  v104[4] = v9;
  v104[3] = v9;
  v104[2] = v9;
  v104[1] = v9;
  v104[0] = v9;
  v103[3] = v9;
  v103[2] = v9;
  v103[1] = v9;
  v103[0] = v9;
  do
  {
    v10 = (a1 + v7 + 4);
    v11 = a1 + v7 + 8;
    v12 = v10 < a1 || v11 > a2;
    v13 = v12 || v10 > v11;
    v14 = (a1 + v8 + 1020);
    v15 = a1 + v8 + 1024;
    if (v13 || v14 < a1 || v15 > a2 || v14 > v15)
    {
      goto LABEL_154;
    }

    *(v103 + v7) = (*v14 * *v14) + (*v10 * *v10);
    v8 -= 4;
    v7 += 4;
  }

  while (v7 != 508);
  v19 = 0;
  v20.i32[1] = -1;
  v101 = -1;
  v21 = &v101;
  v22 = 1;
  do
  {
    v23 = v22;
    v24 = (a1 + v19);
    v25 = v24 + 1;
    if (v24 < a1 || v25 > a2 || v24 > v25)
    {
      goto LABEL_154;
    }

    v22 = 0;
    *v21 = *v24 * *v24;
    v21 = &v101 + 1;
    v19 = 512;
  }

  while ((v23 & 1) != 0);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v107 = HIDWORD(v101);
  v20.i32[0] = v101;
  v102 = v101;
  v32 = vdup_lane_s32(v20, 0);
  v33 = 0;
  v34 = 0xFFFF;
  v35 = -1.0;
  do
  {
    v6.i32[0] = *(v103 + v28);
    v32 = vbsl_s8(vcgt_f32(vdup_lane_s32(v6, 0), v32), vmla_f32(vmul_n_f32(0x3F13DF8F3D2CD9E8, *v6.i32), 0x3ED840E13F753261, v32), vmla_f32(vmul_n_f32(0x3E49E1B13EB4A234, *v6.i32), 0x3F4D87943F25AEE6, v32));
    v36 = vmuls_lane_f32(0.64, v32, 1);
    if (v29 <= 0)
    {
      v37 = v31;
    }

    else
    {
      v37 = v31 - v34 + v30;
    }

    if (v30 >= 1)
    {
      v38 = v30;
    }

    else
    {
      v38 = v34;
    }

    if (v30 >= 1)
    {
      v39 = v29 + 1;
    }

    else
    {
      v37 = v31;
      v39 = v29;
    }

    if (*v6.i32 > v35)
    {
      v30 = v28 + 2;
      v35 = *(v103 + v28);
    }

    if (*v6.i32 <= v36)
    {
      v34 = v38;
      v31 = v37;
      v30 = 0;
      v35 = -1.0;
      v29 = v39;
    }

    v33 = vmla_f32(v33, v32, v32);
    ++v28;
  }

  while (v28 != 128);
  v40 = v29 < 2 || (v31 / (v29 - 1)) <= 12.0;
  v41 = 0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  do
  {
    v45 = &a5[v41];
    v46 = &a5[v41 + 1];
    if (&a5[v41] < a5 || v46 > a6 || v45 > v46)
    {
      goto LABEL_154;
    }

    v49 = v45 + 8;
    if (v45 + 8 < a5)
    {
      goto LABEL_154;
    }

    v51 = *v45;
    v50 = v45 + 9;
    v52 = v51;
    if (v50 > a6)
    {
      goto LABEL_154;
    }

    if (v49 > v50)
    {
      goto LABEL_154;
    }

    v53 = &a5[v41 + 16];
    if (v53 < a5)
    {
      goto LABEL_154;
    }

    v54 = &a5[v41 + 17];
    if (v54 > a6 || v53 > v54)
    {
      goto LABEL_154;
    }

    v42 = v42 + (v52 * 0.125);
    v43 = v43 + (*v49 * 0.125);
    v44 = v44 + (*v53 * 0.125);
    ++v41;
  }

  while (v41 != 8);
  if ((a5 + 1) > a6 || a5 + 1 < a5)
  {
    goto LABEL_154;
  }

  v55 = 0;
  v56 = ((v42 + (*a5 * -0.125)) * 8.0) / 7.0;
  v57 = 0.0;
  do
  {
    v58 = &a5[v55 + 12];
    v59 = &a5[v55 + 13];
    if (v58 < a5 || v59 > a6 || v58 > v59)
    {
      goto LABEL_154;
    }

    v57 = v57 + (*v58 / 12.0);
    ++v55;
  }

  while (v55 != 12);
  if (a5 + 25 < a5 || (a5 + 26) > a6 || a5 + 25 > a5 + 26)
  {
    goto LABEL_154;
  }

  v62 = a5[25];
  v63 = a5 + 26;
  v64 = 4;
  v65 = v62;
  do
  {
    if (v63 < a5 || (v63 + 1) > a6 || v63 > v63 + 1)
    {
      goto LABEL_154;
    }

    v66 = *v63++;
    v67 = v66;
    if (v66 > v62)
    {
      v62 = v67;
    }

    v65 = v65 + v67;
    --v64;
  }

  while (v64);
  if ((a5 + 21) > a6)
  {
LABEL_154:
    __break(0x5519u);
  }

  v68 = a5[20];
  v69 = a5 + 22;
  v70 = 4;
  v71 = v68;
  do
  {
    if (v69 > a6)
    {
      goto LABEL_154;
    }

    v72 = *(v69 - 1);
    if (v72 > v68)
    {
      v68 = *(v69 - 1);
    }

    v71 = v71 + v72;
    ++v69;
    --v70;
  }

  while (v70);
  v73 = 0;
  v74 = 0.0;
  v75 = 1.0e-15;
  v76 = 0.0;
  v77 = 1.0e-15;
  do
  {
    v78 = *(v104 + v73 + 12);
    v75 = v75 + v78;
    v79 = *(v105 + v73 + 12);
    v77 = v77 + v79;
    if (v78 > v74)
    {
      v74 = *(v104 + v73 + 12);
    }

    if (v79 > v76)
    {
      v76 = *(v105 + v73 + 12);
    }

    v73 += 4;
  }

  while (v73 != 128);
  v81 = v44 > (v43 * 1.2) || (v44 >= (v43 * 0.8) ? (v80 = (v62 * 5.0) <= (v65 + v65)) : (v80 = 1), !v80 || (v77 * (v74 * 2.6)) < (v75 * v76)) || (v77 * v74) > (v75 * (v76 * 2.6));
  if ((v57 <= (v56 * 0.8) || (v77 * (v74 * 2.56)) <= (v75 * v76) || (v77 * v74) >= (v75 * (v76 * 5.12))) && ((v12 = v57 <= (v56 * 0.3), v82 = v77 * 1.5, !v12) ? (v83 = (v76 * 32.0) < v82) : (v83 = 0), v83 ? (v84 = (v68 * 5.0) < (v71 * 1.5)) : (v84 = 0), !v84 && ((v77 * (v74 * 2.56)) < (v75 * v76) ? (v85 = (v76 * 32.0) <= v82) : (v85 = 1), v85)))
  {
    v86 = (v76 * 32.0) < (v77 * 1.5);
    if ((v77 * v74) <= (v75 * (v76 * 2.56)))
    {
      v86 = 0;
    }
  }

  else
  {
    v86 = 1;
  }

  v87 = *(a3 + 64);
  if (v87 != 32000 || ((v88 = v33.f32[1] + (v33.f32[0] * -147.87), v89 = v88 <= 0.0, v88 > 0.0) ? (v90 = v40) : (v90 = 0), (v91 = 0.6, (v90 & 1) == 0) && (!v89 ? (v92 = 0) : (v92 = 1), ((v92 & ~v40 | v81) & 1) == 0)))
  {
    v91 = 0.2;
    if (v87 == 24400 && v86)
    {
      v91 = 0.6;
    }
  }

  v93 = *(a3 + 20);
  v94 = v91 + (v93 * 0.8);
  v95 = *(a3 + 24);
  if ((v95 | 2) != 3 || (v96 = *(a3 + 28), v96 <= (v42 * 0.5)) || v96 >= (v42 + v42) || (v97 = *(a3 + 32), v97 <= (v43 * 0.5)) || v97 >= (v43 + v43))
  {
    if (v94 <= v93 || v94 <= 1.6)
    {
      if (v94 < 1.1)
      {
        v95 = 1;
      }
    }

    else
    {
      v95 = 3;
    }
  }

  if (*(a3 + 6) == 2 && (*(a3 + 111812) == 1 || a4 == 0) && v95 == 3)
  {
    LOWORD(v95) = 1;
  }

  *(a3 + 20) = v94;
  *(a3 + 24) = v95;
  *(a3 + 28) = v42;
  *(a3 + 32) = v43;
  return v95;
}

_WORD *MDCT_selector(_WORD *result, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, float a7, float a8, float a9)
{
  v9 = result[3];
  if ((v9 - 1) <= 1)
  {
    v13 = result[65];
    if (result[65])
    {
      if (v13 == 1)
      {
        v14 = 12;
        v15 = 20;
        v16 = 96;
        v17 = 128;
      }

      else
      {
        if (v13 == 3)
        {
          v15 = 60;
        }

        else
        {
          v15 = 40;
        }

        v14 = 16;
        v17 = 128;
        v16 = 128;
      }
    }

    else
    {
      v14 = 8;
      v15 = 10;
      v16 = 64;
      v17 = 80;
    }

    if (result[26054] == 1 && result[1] == 1)
    {
      v19 = 3;
    }

    else
    {
      v19 = result[26054];
    }

    v20 = a2 + 1;
    if ((a2 + 1) > a3 || v20 < a2 || (v21 = a2 + 2, (a2 + 2) > a3) || v20 > v21)
    {
LABEL_145:
      __break(0x5519u);
      return result;
    }

    v22 = 0;
    v83 = result + 55466;
    v23 = *a2;
    v24 = a2[1];
    v25 = (*a2 + v24) * 0.5;
    v26 = (result + 1770);
    v27 = (result + 2282);
    v28 = (a8 + -36.0) * 2.30258509;
    v29 = fmaxf(v28, 3.0);
    v30 = &result[2 * v16 + 1770];
    v31 = 1;
    do
    {
      v32 = (v26 + 4 * v31);
      v33 = v32 + 1;
      if (v32 < v26 || v33 > v30 || v32 > v33)
      {
        goto LABEL_145;
      }

      v36 = v32 - 1;
      v37 = *v32;
      v38 = (v32 - 1) < v26 || v36 > v32;
      v39 = v32 + 2;
      v40 = v38 || v39 > v30;
      if (v40 || v33 > v39)
      {
        goto LABEL_145;
      }

      v42 = *v36;
      if (*v36 <= *v33)
      {
        v42 = *v33;
      }

      if (v42 <= v29)
      {
        v42 = v29;
      }

      if (v37 > v42)
      {
        ++v22;
      }

      ++v31;
    }

    while ((v16 - 1) > v31);
    v43 = (a4 + 4 * v14);
    if (v43 > a5)
    {
      goto LABEL_145;
    }

    if (v43 < a4)
    {
      goto LABEL_145;
    }

    v44 = v15 - v14;
    if (v44 < 0 || (a5 - v43) >> 2 < v44)
    {
      goto LABEL_145;
    }

    v84 = result;
    v47 = v16;
    v48 = 1.0 - (v22 / ((v16 - 2) >> 1));
    v49 = v44 & 0xFFFE;
    v50 = 0.0;
    do
    {
      v51 = *v43++;
      v50 = v50 + v51;
      --v49;
    }

    while (v49);
    v52 = log10(((v50 / v44) + 0.0001));
    if (v13 <= 1)
    {
      v53 = v47;
    }

    else
    {
      v53 = 96;
    }

    v54 = 0.0;
    v55 = v17 - v53;
    result = v84;
    if (v17 > v53)
    {
      v56 = 0;
      v57 = v17 - v53;
      v58 = &v84[2 * v53 + 1770];
      while (v58 >= v26 && (v58 + 1) <= v27 && v58 <= v58 + 1)
      {
        v59 = *v58++;
        if (v59 >= (a8 + 6.5624))
        {
          ++v56;
        }

        if (!--v57)
        {
          v54 = v56;
          goto LABEL_63;
        }
      }

      goto LABEL_145;
    }

LABEL_63:
    v60 = vcvts_n_f32_s32(v55, 2uLL);
    v61 = 0.5;
    if (v60 >= 0.0)
    {
      v62 = 0.5;
    }

    else
    {
      v62 = -0.5;
    }

    v63 = v54 <= (v62 + v60);
    v64 = v60 / 0.8;
    if (v64 < 0.0)
    {
      v61 = -0.5;
    }

    v65 = v84[8];
    if (v65 >= 1 && v54 <= (v61 + v64))
    {
      if (v21 < a2 || (a2 + 3) > a3 || v21 > a2 + 3)
      {
        goto LABEL_145;
      }

      if (v23 >= v24)
      {
        v66 = v24;
      }

      else
      {
        v66 = v23;
      }

      if (v66 >= *v21)
      {
        v66 = *v21;
      }

      if (v66 >= 0.9)
      {
        v63 = 1;
      }
    }

    v67 = v52;
    v68 = v19 & 0xFFFFFFFD;
    if ((v19 & 0xFFFFFFFD) == 1)
    {
      v69 = 1;
      if (*(v84 + 3) > 7.5 && v67 > 7.5)
      {
        if (v19 == 3)
        {
          if (v9 != 1)
          {
            v69 = v65 < 2 && v63;
          }
        }

        else
        {
          v69 = v19 == 1 && !v63;
          if (v65 <= 0)
          {
            v69 = 0;
          }
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v70 = flt_19B0B01C0[v9 == 1];
    if (v9 == 1)
    {
      v71 = 12.5;
    }

    else
    {
      v71 = 9.5;
    }

    v72 = flt_19B0B01C8[v9 == 1];
    v73 = 62.5;
    if (v9 == 1)
    {
      v73 = 80.0;
      v74 = 28.0;
    }

    else
    {
      v74 = 19.0;
    }

    v75 = 23.5;
    if (v9 == 1)
    {
      v75 = 22.5;
    }

    v76 = (a8 - a7) >= v74 && (v73 <= a9 || v25 >= v72 || v48 >= v70) && (v71 >= v67 || v63);
    if ((a8 - a7) >= v75 && ((v73 * 0.8) <= a9 || v25 >= (v72 * 0.8) || v48 >= (v70 * 0.8)))
    {
      if (!((v9 != 1) | v76 & 1))
      {
        if (*v83 != 1)
        {
          v69 = 0;
        }

        if (v69 != 1)
        {
          if (v68 == 1)
          {
            v84[44] = v19;
          }

          goto LABEL_138;
        }

        v78 = 3;
        goto LABEL_115;
      }

      v77 = 0;
    }

    else
    {
      v77 = 1;
    }

    if (v9 == 2)
    {
      if (*v83 == 1)
      {
        v77 = 1;
      }

      v76 = (*v83 != 1) & v76;
    }

    if (v69 & (v76 | v77))
    {
      if (v76)
      {
LABEL_114:
        v78 = 1;
LABEL_115:
        v84[44] = v78;
LABEL_138:
        v80 = (v65 + 1);
        if (v80 >= 2)
        {
          LOWORD(v80) = 2;
        }

        if (v63)
        {
          v81 = v80;
        }

        else
        {
          v81 = 0;
        }

        v84[8] = v81;
        *(v84 + 3) = v67;
        return result;
      }

      v84[44] = 3;
      if (v9 != 2)
      {
        goto LABEL_138;
      }
    }

    else
    {
      if (v68 == 1)
      {
        v84[44] = v19;
        if (v9 != 2)
        {
          goto LABEL_138;
        }

        v79 = v19;
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_138;
        }

        v79 = v84[44];
      }

      if (v79 != 3)
      {
        goto LABEL_138;
      }
    }

    if (a6 && v83[440] != 1)
    {
      goto LABEL_138;
    }

    goto LABEL_114;
  }

  return result;
}

float *dot_product_mat(float *result, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0.0;
  v5 = a2;
  while (2)
  {
    v6 = 0;
    v7 = v5;
    v5 += 12;
    v8 = 0.0;
    v9 = result;
    do
    {
      if (v9 < result || v9 + 1 > result + 12 || v9 > v9 + 1 || v7 < a2 || (v7 + 1) > a3 || v7 > v7 + 1)
      {
        __break(0x5519u);
        return result;
      }

      v8 = v8 + (*v9++ * *v7++);
    }

    while (v6++ < 0xB);
    v4 = v4 + (result[v3++] * v8);
    if (v3 != 12)
    {
      continue;
    }

    break;
  }

  return result;
}

float *var(float *result, int a2)
{
  if (a2 < 0 || (a2 & 0x8000) != 0 || a2 > a2)
  {
LABEL_18:
    __break(0x5519u);
    return result;
  }

  v2 = 0.0;
  if (a2)
  {
    v3 = a2 & 0x7FFF;
    v4 = result;
    do
    {
      v5 = *v4++;
      v2 = v2 + v5;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v6 = 0;
    v7 = v2 / a2;
    v8 = 0.0;
    while (1)
    {
      v9 = &result[v6];
      v10 = (v9 + 1);
      v11 = v9 < result || v10 > &result[a2];
      if (v11 || v9 > v10)
      {
        break;
      }

      v8 = v8 + ((*v9 - v7) * (*v9 - v7));
      if (a2 <= ++v6)
      {
        return result;
      }
    }

    goto LABEL_18;
  }

  return result;
}

unint64_t stab_est(unint64_t result, float *a2, __int16 *a3, __int16 *a4, float *a5, __int16 *a6, int a7, float a8)
{
  v8 = 0;
  v9 = 0.0;
  do
  {
    v10 = result + v8;
    if (result + v8 < result || v10 > result + v8 + 4)
    {
      goto LABEL_56;
    }

    v9 = v9 + (*v10 * 0.025);
    *v10 = *(v10 + 4);
    v8 += 4;
  }

  while (v8 != 156);
  v12 = (result + 156);
  if (result + 156 < result)
  {
    goto LABEL_56;
  }

  if (v12 > result + 160)
  {
    goto LABEL_56;
  }

  v13 = 0;
  v14 = v9 + (*(result + 156) * 0.025);
  v15 = 0.0;
  do
  {
    v15 = v15 + ((*(result + 100 + v13) - v14) * (*(result + 100 + v13) - v14));
    v13 += 4;
  }

  while (v13 != 60);
  *v12 = a8 - *a2;
  *a2 = a8;
  v16 = (a5 + 4);
  v17 = a5 + 3;
  if (a5 + 3 > a5 + 4 || v17 < a5)
  {
    goto LABEL_56;
  }

  v18 = sqrtf(v15 / 25.0);
  v19 = *v17;
  if (v18 < *v17 && *a6 > 2)
  {
    v20 = 4;
LABEL_19:
    ++*a3;
    *a4 = 0;
    goto LABEL_27;
  }

  if (v18 < a5[2] && *a6 > 1)
  {
    v20 = 3;
    goto LABEL_19;
  }

  if ((a5 + 2) > v16)
  {
    goto LABEL_56;
  }

  if (v18 >= a5[1] || *a6 <= 0)
  {
    if ((a5 + 1) > v16)
    {
      goto LABEL_56;
    }

    if (v18 >= *a5)
    {
      v20 = 0;
      ++*a4;
      *a3 = 0;
      goto LABEL_31;
    }

    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

LABEL_27:
  if (*a3 >= 31)
  {
    v21 = a5 + 1;
    if ((a5 + 1) > v16)
    {
      goto LABEL_56;
    }

    v22 = *a5;
    v23 = 0.15625;
    goto LABEL_34;
  }

LABEL_31:
  if (*a4 >= 31)
  {
    v21 = a5 + 1;
    if ((a5 + 1) > v16)
    {
      goto LABEL_56;
    }

    v22 = *a5;
    v23 = -0.15625;
LABEL_34:
    *a5 = v22 + v23;
    if ((a5 + 2) <= v16)
    {
      *v21 = *v21 + v23;
      a5[2] = a5[2] + v23;
      v19 = v19 + v23;
      *v17 = v19;
      goto LABEL_36;
    }

LABEL_56:
    __break(0x5519u);
    return result;
  }

LABEL_36:
  v24 = a5 + 1;
  if ((a5 + 1) > v16)
  {
    goto LABEL_56;
  }

  v25 = *a5;
  if (*a5 < 1.875)
  {
    *a5 = 1.875;
    v25 = 1.875;
  }

  v26 = a5 + 2;
  if ((a5 + 2) > v16)
  {
    goto LABEL_56;
  }

  v27 = *v24;
  if (*v24 < 1.25)
  {
    *v24 = 1.25;
    v27 = 1.25;
  }

  v28 = *v26;
  if (*v26 < 0.9375)
  {
    *v26 = 0.9375;
    v28 = 0.9375;
  }

  if (v25 > 4.6875)
  {
    *a5 = 4.6875;
  }

  if (v27 > 4.2188)
  {
    *v24 = 4.2188;
  }

  if (v28 > 3.2812)
  {
    *v26 = 3.2812;
  }

  v29 = 0.625;
  if (v19 < 0.625 || (v29 = 2.8125, v19 > 2.8125))
  {
    *v17 = v29;
  }

  *a6 = v20;
  if (a7)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

uint64_t find_ener_decrease(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 + 4 * (result + 2));
  v4 = v3 + 1;
  if (v3 < a2 || v4 > a3 || v3 >= v4)
  {
LABEL_27:
    __break(0x5519u);
    return result;
  }

  v7 = (result + 12);
  v8 = *v3;
  v9 = (result + 3);
  if (v9 < v7)
  {
    v10 = 0;
    v11 = (result + 3) + 1;
    v12 = (a2 + 4 * (result + 3));
    while (v12 >= a2 && (v12 + 1) <= a3 && v12 <= v12 + 1)
    {
      v13 = *v12++;
      v14 = v13;
      v15 = v13 > v8 && v10 == 0;
      if (v13 > v8 && v10 == 0)
      {
        v8 = v14;
      }

      else
      {
        v10 = 1;
      }

      LOWORD(v9) = v9 + v15;
      if ((result + 12) == v11++)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

LABEL_18:
  if (v7 > v9)
  {
    v17 = (result + 12) - v9;
    v18 = v8;
    v19 = (a2 + 4 * v9);
    while (v19 >= a2 && (v19 + 1) <= a3 && v19 <= v19 + 1)
    {
      v20 = *v19++;
      v21 = v20;
      if (v20 < v18)
      {
        v18 = v21;
      }

      if (!--v17)
      {
        return result;
      }
    }

    goto LABEL_27;
  }

  return result;
}

void core_coder_mode_switch(uint64_t a1, int a2, int a3)
{
  v6 = a1 + 110824;
  v7 = a1 + 67376;
  v8 = *(a1 + 52108);
  v9 = *(a1 + 67462);
  CoreSamplerateMode2 = getCoreSamplerateMode2(a3, a2, v9);
  v11 = 0;
  if (a2 >= 1 && CoreSamplerateMode2 - 16000 <= 0x18)
  {
    if (*(v6 + 992) != 640)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_9;
    }

    v12 = *(v6 + 984);
    if (a3 < 32001)
    {
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

    else if (v12)
    {
      goto LABEL_6;
    }

    v11 = 1;
  }

LABEL_9:
  if (*(a1 + 2) == 1)
  {
    v11 = 1;
  }

  if (*(a1 + 72) >= 32001 && *(a1 + 64) < 32001)
  {
    v11 = 1;
  }

  if (v11 || (*(v6 + 992) == CoreSamplerateMode2 / 0x19 ? (v13 = v8 == 4) : (v13 = 1), v13))
  {
    *(a1 + 129336) = getIgfPresent(a3, a2, v9);
    init_coder_ace_plus(a1);
  }

  else
  {
    *(a1 + 64) = a3;
    *(v6 + 996) = CoreSamplerateMode2;
    *(a1 + 140) = CoreSamplerateMode2 / 0x32;
    v14 = a3 > 32000;
    *(v6 + 984) = v14;
    *(v7 + 1332) = (((((((CoreSamplerateMode2 / 0x32) / (CoreSamplerateMode2 / 0x19)) * 512.0) * 0.0078125) * a3) / 100.0) + 0.49);
    IgfPresent = getIgfPresent(a3, a2, v9);
    *(a1 + 129336) = IgfPresent;
    if (IgfPresent)
    {
      IGFEncSetMode(a1 + 123968, a3, a2, v9);
      v16 = *(a1 + 64);
      LOWORD(v9) = *(v7 + 86);
      v14 = *(v6 + 984) != 0;
    }

    else
    {
      v16 = a3;
    }

    if (a2 >= 4)
    {
      v17 = 0;
    }

    else
    {
      v17 = (0x3C00280014000A0uLL >> (16 * a2)) & 0x3E0;
    }

    *(a1 + 86028) = v17;
    v18 = 0.5;
    if (!a2)
    {
      v18 = 0.3125;
    }

    *(a1 + 86164) = v18;
    v19 = (v16 - 9601) >> 7 < 0x1A9;
    if (v9)
    {
      v19 = 0;
    }

    *(a1 + 86168) = v19;
    *(a1 + 86170) = v16 < 64001;
    if (v9)
    {
      v20 = 1;
    }

    else
    {
      v20 = v16 < 9601;
    }

    *(a1 + 122158) = v20;
    if (v14)
    {
      v21 = 2;
    }

    else
    {
      v21 = v16 < 64001;
    }

    *(a1 + 86156) = v21;
    if (*(a1 + 129336))
    {
      v22 = 16400;
    }

    else
    {
      v22 = 32000;
    }

    *(a1 + 86040) = v22 < v16;
    if (v22 < v16)
    {
      v23 = &bwMode2fs[a2];
      if (v23 < bwMode2fs || v23 + 1 > hp16000_48000 || v23 > v23 + 1)
      {
        __break(0x5519u);
        return;
      }

      InitTnsConfigs(*v23, v17, a1 + 86048, *(a1 + 125960), v16);
    }

    v24 = 0;
    v25 = a2 == 0;
    if (a2)
    {
      v26 = 19;
    }

    else
    {
      v26 = 16;
    }

    *(v7 + 1344) = v25;
    *(a1 + 18632) = v25;
    *(a1 + 18634) = v26;
    v27 = *(v7 + 1332);
    v28 = FrameSizeConfig;
    while (v27 != *v28)
    {
      ++v24;
      v28 += 6;
      if (v24 == 13)
      {
        goto LABEL_52;
      }
    }

    *(v7 + 1328) = v24;
    *(v7 + 1336) = v27;
    *(v7 + 1340) = v28[1];
LABEL_52:
    if (*(a1 + 64) <= 32000)
    {
      v29 = 3;
    }

    else
    {
      v29 = 6;
    }

    *(v6 + 36) = v29;
    core_coder_reconfig(a1);
  }

  if (*(a1 + 129336))
  {
    v30 = *(a1 + 130);
    if (v30 == 3)
    {
      if (*(a1 + 114) == 11)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v30 != 2)
      {
        if (v30 == 1 && *(a1 + 114) != 5)
        {
          goto LABEL_65;
        }

LABEL_63:
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 54156), 1, 0xAuLL);
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 54076), 1, 0x14uLL);
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 67328), 1, 0xAuLL);
        __A = 0.0;
        vDSP_vfill(&__A, (a1 + 67380), 1, 0xAuLL);
        *v7 = 1065353216;
        goto LABEL_66;
      }

      if (*(a1 + 114) == 8)
      {
        goto LABEL_63;
      }
    }

LABEL_65:
    TBEreset_enc(a1, v30);
  }

LABEL_66:
  if (*(v6 + 4) && !*v6)
  {
    E_LPC_lsp_unweight(a1 + 5204, (a1 + 5204), a1 + 5268, 1.0 / *(v6 + 72));
    *(v6 + 4) = 0;
  }

  *(a1 + 122152) = a3 > 47999;
  if (*(a1 + 72) > 32000 || *(a1 + 2) == 1)
  {
    *(a1 + 122136) = 1;
  }
}

uint64_t lp_decim2(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v49 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  for (i = 0; i != 3; ++i)
  {
    v16 = (v5 + i * 4);
    v17 = v5 + i * 4 + 4;
    if (v5 + i * 4 < v5 || v17 > v3 || v16 > v17 || &__b[i + 1] > &v49)
    {
LABEL_58:
      __break(0x5519u);
    }

    __b[i] = *v16;
  }

  v21 = 0;
  v22 = v7;
  do
  {
    v23 = (v14 + v21 * 4);
    if (v14 + v21 * 4 < v14)
    {
      goto LABEL_58;
    }

    if ((v23 + 1) > v13)
    {
      goto LABEL_58;
    }

    if (v23 > v23 + 1)
    {
      goto LABEL_58;
    }

    if (&__b[v21 + 3] < __b)
    {
      goto LABEL_58;
    }

    v24 = &__b[v21 + 4];
    if (v24 > &v49 || &__b[v21 + 3] > v24)
    {
      goto LABEL_58;
    }

    __b[v21 + 3] = *v23;
    ++v21;
    --v22;
  }

  while (v22);
  v25 = 0;
  v26 = v14 + 4 * v7;
  do
  {
    v27 = (v26 + v25 - 12);
    v28 = v26 + v25 - 8;
    v30 = v27 < v14 || v28 > v13 || v27 > v28;
    v31 = (v5 + v25);
    v32 = v5 + v25 + 4;
    v33 = !v30 && v31 >= v5;
    if (!v33 || v32 > v3 || v31 > v32)
    {
      goto LABEL_58;
    }

    *v31 = *v27;
    v25 += 4;
  }

  while (v25 != 12);
  LOWORD(v36) = 0;
  v37 = 0;
  do
  {
    v38 = 0;
    v39 = &__b[v36];
    v40 = 0.0;
    v41 = &unk_19B37AA5C;
    do
    {
      v42 = v39 + 1;
      if (v39 < __b || v42 > &v49 || v39 >= v42 || v41 > lsf_numlevels)
      {
        goto LABEL_58;
      }

      v40 = v40 + (*v39 * *(v41 - 1));
      result = v38 + 1;
      ++v41;
      ++v39;
      v33 = v38++ >= 4;
    }

    while (!v33);
    v47 = (v11 + 4 * v37);
    if (v47 < v11 || (v47 + 1) > v9 || v47 > v47 + 1)
    {
      goto LABEL_58;
    }

    *v47 = v40;
    v36 = (v36 + 2);
    ++v37;
  }

  while (v36 < v7);
  return result;
}

float *find_mult(float *result, int a2, int a3, int a4, float *a5, __int16 *a6, float *a7, float a8)
{
  v8 = 2 * a2;
  if (a4 + 2 >= (2 * a2))
  {
    v9 = v8;
    v10 = 2.0;
    v11 = 2;
    do
    {
      v12 = v9 - a3;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      if (v12 <= v11)
      {
        if (*a7 < 0.6 || (*a6 * 0.4) < a2)
        {
          *a5 = *result * *a5;
        }

        *result = *result * 1.17;
      }

      v8 += a2;
      v10 = v10 + a8;
      v9 = v8;
      v11 = v10;
    }

    while (v10 + a4 >= v8);
  }

  return result;
}

float bandcombinepow(float *__src, int a2, uint64_t a3, int a4, uint64_t a5, float *__dst, float result)
{
  v8 = __src;
  if (a2 != a4)
  {
    goto LABEL_6;
  }

  if (a2 >= 1)
  {
    v9 = a2;
    if (v9 > a2 || (memmove(__dst, __src, v9 * 4), v8 = &__dst[v9], &__dst[v9] < __dst))
    {
      while (1)
      {
        __break(0x5519u);
LABEL_6:
        if (a4 < 1)
        {
          break;
        }

        v10 = 0;
        v11 = 0;
        while (1)
        {
          v12 = *(a3 + 4 * v10);
          result = 0.0;
          if (v11 <= v12)
          {
            break;
          }

LABEL_15:
          result = result * *(a5 + 4 * v10);
          __dst[v10++] = result;
          if (v10 == a4)
          {
            return result;
          }
        }

        v13 = v12 + 1;
        v14 = v12 - v11 + 1;
        v15 = &v8[v11];
        while (v15 >= v8 && v15 + 1 <= &v8[a2] && v15 <= v15 + 1)
        {
          v16 = *v15++;
          result = result + v16;
          if (!--v14)
          {
            v11 = v13;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

void compress_range(float *a1, float *a2, int a3)
{
  v4 = a2;
  v5 = &a2[a3];
  if (a3 >= 1)
  {
    v7 = a3;
    v8 = a1;
    v9 = a2;
    v10 = &a1[a3];
    while (v8 >= a1)
    {
      v11 = v8 + 1;
      if ((v8 + 1) > v10 || v8 > v11 || v9 < v4 || (v9 + 1) > v5 || v9 > v9 + 1)
      {
        break;
      }

      v12 = log10((*v8 + 1.0));
      *v9 = v12;
      v8 = v11;
      ++v9;
      if (!--v7)
      {
        if (v5 < v4)
        {
          goto LABEL_30;
        }

        if (a3 >= 1)
        {
          v13 = a3;
          v14 = v4;
          v15 = v13;
          do
          {
            *v14 = *v14 * 3.3219;
            ++v14;
            --v15;
          }

          while (v15);
          v16 = v4;
          do
          {
            *v16 = *v16 * 512.0;
            ++v16;
            --v13;
          }

          while (v13);
        }

        goto LABEL_18;
      }
    }

    goto LABEL_30;
  }

  if (v5 < a2)
  {
LABEL_30:
    __break(0x5519u);
    return;
  }

LABEL_18:
  if (v5 > v4)
  {
    v17 = v4;
    while (v17 >= v4)
    {
      v18 = v17 + 1;
      if ((v17 + 1) > v5 || v17 > v18)
      {
        break;
      }

      v19 = (*v17 + 0.5);
      v20 = v19;
      if (!v19)
      {
        v20 = 1.0;
      }

      *v17++ = v20;
      if (v18 >= v5)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_30;
  }

LABEL_26:
  if (a3 >= 1)
  {
    v21 = a3;
    do
    {
      *v4 = *v4 * 0.0019531;
      ++v4;
      --v21;
    }

    while (v21);
  }
}

void minimum_statistics(uint64_t a1, int a2, const float **a3, float *a4, float *a5, float *a6, float *a7, char *__dst, char *a9, float *a10, unint64_t *a11, unint64_t a12, unint64_t a13, unint64_t a14, float *a15, float *a16, unint64_t a17, unint64_t a18, void *a19, int *a20, uint64_t a21)
{
  v24 = a1;
  v25 = a21;
  v26 = a16;
  v27 = a14;
  v29 = a10;
  v28 = a11;
  v280 = (a21 + 11712);
  v281 = (a21 + 11720);
  __src = a4;
  v273 = (a21 + 11728);
  __dsta = a5;
  v285 = a3;
  if (*(a21 + 11672) < *(a21 + 11674))
  {
    v30 = 4 * a1;
    if (a1 >= 1)
    {
      v31 = 4 * a1;
      if (v30 < v31)
      {
        goto LABEL_399;
      }

      memmove(__dst, a4, 4 * a1);
      if (&__dst[v31] < __dst)
      {
        goto LABEL_399;
      }

      memmove(__dsta, __src, v31);
      if (&__dsta[v31 / 4] < __dsta)
      {
        goto LABEL_399;
      }

      memmove(a6, __src, v31);
      if (&a6[v31 / 4] < a6)
      {
        goto LABEL_399;
      }

      memmove(a9, __src, v31);
      LOWORD(v24) = a1;
      v29 = a10;
      if (&a9[v31] < a9)
      {
        goto LABEL_399;
      }
    }

    __A[0] = 0.0;
    v32 = v24;
    vDSP_vfill(__A, v29, 1, v24);
    v33 = *a3;
    v34 = a3[1];
    if (*a3 > v34)
    {
      goto LABEL_399;
    }

    if (a3[2] > v33)
    {
      goto LABEL_399;
    }

    v35 = a1;
    if (a2 > a1)
    {
      goto LABEL_399;
    }

    if ((a2 & 0x8000) != 0)
    {
      goto LABEL_399;
    }

    if (v34 - v33 < a2)
    {
      goto LABEL_399;
    }

    __A[0] = NAN;
    vDSP_dotpr(__src, 1, v33, 1, __A, a2 & 0x7FFF);
    v36 = (a21 + 11724);
    v37 = a14;
    if (a21 + 11724 > v273)
    {
      goto LABEL_399;
    }

    if (v281 > v36)
    {
      goto LABEL_399;
    }

    v38 = __A[0];
    *(a21 + 11720) = __A[0];
    v39 = (a21 + 11716);
    if (a21 + 11716 > v281 || v280 > v39)
    {
      goto LABEL_399;
    }

    v40 = __src;
    v41 = a1;
    v42 = &__src[a1];
    *v280 = v38;
    v43 = a1 - a2;
    if (a1 > a2)
    {
      v44 = v285[1];
      v45 = &(*v285)[a2];
      if (v45 > v44)
      {
        goto LABEL_399;
      }

      if (v285[2] > v45)
      {
        goto LABEL_399;
      }

      if (v43 > (v44 - v45) >> 2)
      {
        goto LABEL_399;
      }

      if (((a1 - a2) & 0x8000) != 0)
      {
        goto LABEL_399;
      }

      v46 = &__src[a2];
      if (v46 > v42 || v46 < __src || v43 > (v30 - 4 * a2) >> 2)
      {
        goto LABEL_399;
      }

      __A[0] = NAN;
      vDSP_dotpr(v46, 1, v45, 1, __A, (a1 - a2) & 0x7FFF);
      v37 = a14;
      v40 = __src;
      v41 = a1;
      v47 = __A[0];
      *v36 = __A[0];
      *v39 = v47;
    }

    if ((v40 + 1) <= v42)
    {
      v48 = v40;
      if (v40 + 1 >= v40)
      {
        v49 = v41;
        v50 = *v40;
        v51 = a21;
        if (*v40 >= *(a21 + 11676))
        {
LABEL_31:
          *(v51 + 11676) = v50;
          goto LABEL_358;
        }

        __A[0] = 3.4028e38;
        v52 = v37;
        vDSP_vfill(__A, a15, 1, v32);
        __A[0] = 3.4028e38;
        vDSP_vfill(__A, v52, 1, v32);
        v53 = *a11;
        if (*a11 >= a11[2])
        {
          __A[0] = 3.4028e38;
          vDSP_vfill(__A, v53, 1, (6 * a1));
          __A[0] = 3.4028e38;
          vDSP_vfill(__A, a16, 1, v32);
          v48 = __src;
          v49 = a1;
          ++*(a21 + 11672);
          v50 = *__src;
          v51 = a21;
          goto LABEL_31;
        }
      }
    }

    goto LABEL_399;
  }

  v54 = a18;
  if (a2 > 0)
  {
    v55 = 0;
    v288 = 0;
    v56 = *(a21 + 60) - *(a21 + 56);
    v272 = 4 * a1;
    v57 = *(a21 + 11664);
    v271 = a21 + 11684;
    v276 = a21 + 11692;
    v58 = *(a21 + 11668);
    v59 = &a5[v272 / 4];
    v60 = &__dst[v272];
    v61 = &a7[v272 / 4];
    v62 = &a4[v272 / 4];
    v63 = (1.0 - v57) * 71.0;
    v290 = a13 + v272;
    v275 = a21 + 11700;
    v64 = (1.0 - v58) * 11.0;
    v65 = -v57;
    v66 = -v58;
    v67 = a2;
    v278 = &a4[v272 / 4];
    v269 = a12 + v272;
    v270 = v61;
    while (1)
    {
      v277 = v56;
      v68 = a3[1];
      v69 = &(*a3)[v55];
      if (v69 > v68 || a3[2] > v69 || (v67 - v55) < 0)
      {
        goto LABEL_399;
      }

      v70 = &__src[v55];
      v287 = (v67 - v55);
      v71 = (v68 - v69) >> 2 < v287 || v70 > v62;
      v72 = !v71 && v70 >= __src;
      if (!v72)
      {
        goto LABEL_399;
      }

      v289 = v55;
      v73 = 4 * v55;
      if ((v67 - v55) > (v272 - v73) >> 2)
      {
        goto LABEL_399;
      }

      __A[0] = NAN;
      __N = (v67 - v55);
      vDSP_dotpr(v70, 1, v69, 1, __A, __N);
      v74 = &v281[v288];
      if (v74 < v281)
      {
        goto LABEL_399;
      }

      if (v74 + 4 > v273)
      {
        goto LABEL_399;
      }

      if (v74 > v74 + 4)
      {
        goto LABEL_399;
      }

      v75 = __A[0];
      v281[v288] = __A[0];
      v76 = &v280[v288];
      if (v76 + 1 > v281)
      {
        goto LABEL_399;
      }

      if (v76 > v76 + 1)
      {
        goto LABEL_399;
      }

      if (v76 < v280)
      {
        goto LABEL_399;
      }

      v77 = (v271 + 4 * v288);
      if (v77 < v271 || (v77 + 1) > v276 || v77 > v77 + 1)
      {
        goto LABEL_399;
      }

      v78 = ((v75 * v75) + 1.0e-20) / (((v75 * v75) + 1.0e-20) + ((*v76 - v75) * (*v76 - v75)));
      v79 = v78 * 0.3;
      v71 = v78 <= 0.3;
      v80 = 0.09;
      if (!v71)
      {
        v80 = v79;
      }

      *v77 = v80 + (*v77 * 0.7);
      v81 = v285[1];
      v82 = &(*v285)[v289];
      if (v82 > v81)
      {
        goto LABEL_399;
      }

      if (v285[2] > v82)
      {
        goto LABEL_399;
      }

      if (v287 > (v81 - v82) >> 2)
      {
        goto LABEL_399;
      }

      v83 = &__dsta[v73 / 4];
      if (&__dsta[v73 / 4] > v59 || v83 < __dsta)
      {
        goto LABEL_399;
      }

      v84 = v67;
      __A[0] = NAN;
      v85 = &v280[v288];
      vDSP_dotpr(v83, 1, v82, 1, __A, __N);
      v86 = pow(((*v85 + 1.0e-20) / (__A[0] + 1.0e-20)), -0.31249997);
      if (v86 > 0.05)
      {
        v86 = 0.05;
      }

      if (v289 < v67)
      {
        v87 = v67 - v289;
        v88 = *v77 * 0.96;
        v89 = __dsta;
        v90 = __dst;
        v91 = a7;
        v92 = __src;
        do
        {
          v93 = &v89[v73 / 4];
          v94 = &v89[v73 / 4 + 1];
          v95 = &v89[v73 / 4] < __dsta || v94 > v59;
          v96 = v95 || v93 > v94;
          v97 = &v90[v73];
          v98 = &v90[v73 + 4];
          v99 = !v96 && v97 >= __dst;
          v100 = !v99 || v98 > v60;
          if (v100 || v97 > v98)
          {
            goto LABEL_399;
          }

          v102 = (*v93 + 1.0e-20) * (*v93 + 1.0e-20);
          v103 = (v88 * v102) / (v102 + ((*v97 - *v93) * (*v97 - *v93)));
          if (v103 <= v86)
          {
            v103 = v86;
          }

          v104 = &v91[v73 / 4];
          if (&v91[v73 / 4] < a7)
          {
            goto LABEL_399;
          }

          if ((v104 + 1) > v270)
          {
            goto LABEL_399;
          }

          if (v104 > v104 + 1)
          {
            goto LABEL_399;
          }

          *v104 = v103;
          v105 = &v92[v73 / 4];
          if (&v92[v73 / 4] < __src || (v105 + 1) > v278 || v105 > v105 + 1)
          {
            goto LABEL_399;
          }

          ++v92;
          *v97 = ((1.0 - v103) * *v105) + (v103 * *v97);
          ++v91;
          v90 += 4;
          ++v89;
        }

        while (--v87);
      }

      v106 = v285[1];
      v107 = &(*v285)[v289];
      if (v107 > v106)
      {
        goto LABEL_399;
      }

      if (v285[2] > v107)
      {
        goto LABEL_399;
      }

      if (v287 > (v106 - v107) >> 2)
      {
        goto LABEL_399;
      }

      v108 = &__dst[v73];
      if (&__dst[v73] > v60 || v108 < __dst)
      {
        goto LABEL_399;
      }

      __A[0] = NAN;
      vDSP_dotpr(v108, 1, v107, 1, __A, __N);
      v62 = v278;
      v54 = a18;
      v27 = a14;
      v26 = a16;
      a5 = __dsta;
      a3 = v285;
      v24 = a1;
      *v85 = __A[0];
      v109 = 0.0;
      if (v289 < v67)
      {
        v110 = v67 - v289;
        v111 = v73;
        do
        {
          v112 = (a7 + v111);
          v113 = a7 + v111 + 4;
          v114 = (a7 + v111) < a7 || v113 > v270;
          if (v114 || v112 > v113)
          {
            goto LABEL_399;
          }

          v116 = &__dst[v111];
          if (&__dst[v111] < __dst)
          {
            goto LABEL_399;
          }

          if (v116 + 1 > v60)
          {
            goto LABEL_399;
          }

          if (v116 > v116 + 1)
          {
            goto LABEL_399;
          }

          v117 = &a9[v111];
          if (&a9[v111] < a9)
          {
            goto LABEL_399;
          }

          if (v117 + 1 > &a9[v272])
          {
            goto LABEL_399;
          }

          if (v117 > v117 + 1)
          {
            goto LABEL_399;
          }

          v118 = fminf(*v112 * *v112, 0.8);
          v119 = *v116;
          v120 = *v117;
          *v117 = ((1.0 - v118) * *v116) + (v118 * *v117);
          v121 = (a10 + v111);
          if ((a10 + v111) < a10)
          {
            goto LABEL_399;
          }

          if (v121 + 1 > &a10[v272 / 4])
          {
            goto LABEL_399;
          }

          if (v121 > v121 + 1)
          {
            goto LABEL_399;
          }

          v122 = ((v119 - v120) * ((1.0 - v118) * (v119 - v120))) + (v118 * *v121);
          *v121 = v122;
          v123 = (__dsta + v111);
          if ((__dsta + v111) < __dsta)
          {
            goto LABEL_399;
          }

          if ((v123 + 1) > v59)
          {
            goto LABEL_399;
          }

          if (v123 > v123 + 1)
          {
            goto LABEL_399;
          }

          v124 = (*v285 + v111);
          if (v124 + 1 > v285[1])
          {
            goto LABEL_399;
          }

          if (v124 > v124 + 1)
          {
            goto LABEL_399;
          }

          if (v124 < v285[2])
          {
            goto LABEL_399;
          }

          v125 = (a12 + v111);
          if (a12 + v111 < a12)
          {
            goto LABEL_399;
          }

          if ((v125 + 1) > v269)
          {
            goto LABEL_399;
          }

          if (v125 > v125 + 1)
          {
            goto LABEL_399;
          }

          v126 = fminf((v122 + 1.0e-20) / (((*v123 + *v123) * *v123) + 1.0e-20), 0.2);
          v127 = *v124;
          *v125 = ((v63 * v126) / ((v65 * v126) + 0.5)) + 1.0;
          v128 = (a13 + v111);
          if (a13 + v111 < a13 || (v128 + 1) > v290 || v128 > v128 + 1)
          {
            goto LABEL_399;
          }

          v109 = v109 + (v126 * v127);
          *v128 = ((v64 * v126) / ((v66 * v126) + 0.5)) + 1.0;
          v111 += 4;
        }

        while (--v110);
      }

      v129 = (v275 + 4 * v288);
      if (v129 < v275 || (v129 + 1) > a21 + 11708 || v129 > v129 + 1)
      {
        goto LABEL_399;
      }

      v130 = v109 / v277;
      *v129 = v130;
      if (v289 < v67)
      {
        v131 = v289 + 1;
        v132 = __dst;
        v133 = a12;
        v134 = (sqrtf(v130) * 2.12) + 1.0;
        v135 = a14;
        v136 = a18;
        v137 = a13;
        v138 = a16;
        do
        {
          v139 = &v132[v73];
          v140 = &v132[v73 + 4];
          v141 = &v132[v73] < __dst || v140 > v60;
          if (v141 || v139 > v140)
          {
            goto LABEL_399;
          }

          v143 = (v133 + v73);
          if (v133 + v73 < a12)
          {
            goto LABEL_399;
          }

          if ((v143 + 1) > v269)
          {
            goto LABEL_399;
          }

          if (v143 > v143 + 1)
          {
            goto LABEL_399;
          }

          v144 = (v135 + v73);
          if (v135 + v73 < a14 || (v144 + 1) > a14 + v272 || v144 > v144 + 1)
          {
            goto LABEL_399;
          }

          v145 = v134 * *v139;
          v146 = v145 * *v143;
          v147 = (v136 + v73);
          v148 = v136 + v73 + 4;
          v151 = v148 <= a18 + v272 && v147 <= v148 && v147 >= a18;
          if (v146 >= *v144)
          {
            if (!v151)
            {
              goto LABEL_399;
            }

            *v147 = 0;
          }

          else
          {
            if (!v151)
            {
              goto LABEL_399;
            }

            *v147 = 1;
            *v144 = v146;
            v152 = (v137 + v73);
            if (v137 + v73 < a13)
            {
              goto LABEL_399;
            }

            if ((v152 + 1) > v290)
            {
              goto LABEL_399;
            }

            if (v152 > v152 + 1)
            {
              goto LABEL_399;
            }

            v153 = &v138[v73 / 4];
            if (&v138[v73 / 4] < a16 || v153 + 1 > &a16[v272 / 4] || v153 > v153 + 1)
            {
              goto LABEL_399;
            }

            *v153 = v145 * *v152;
          }

          v154 = v67 == v131++;
          ++v138;
          v137 += 4;
          v136 += 4;
          v135 += 4;
          v133 += 4;
          v132 += 4;
        }

        while (!v154);
      }

      v25 = a21;
      v155 = *(a21 + 11680);
      if (v155 >= 12)
      {
        for (i = 0; i != 3; ++i)
        {
          if (*v129 < msQeqInvAv_thresh[i])
          {
            break;
          }
        }

        v157 = &msNoiseSlopeMax[i];
        v158 = v157 + 1;
        v160 = v157 < msNoiseSlopeMax || v158 > &scaleTable || v157 > v158;
        v161 = (v276 + 4 * v288);
        v162 = v161 + 1;
        if (v160 || v161 < v276 || v162 > v275 || v161 > v162)
        {
          goto LABEL_399;
        }

        *v161 = *v157;
        v25 = a21;
      }

      v56 = v25[13] - v25[15];
      ++v288;
      v55 = v67;
      v67 = a1;
      if (a1 <= v84)
      {
        v166 = v288;
        v28 = a11;
        a4 = __src;
        goto LABEL_191;
      }
    }
  }

  v166 = 0;
  v155 = *(a21 + 11680);
LABEL_191:
  if ((v155 - 2) > 9)
  {
    if (v155 >= 12)
    {
      v176 = *v28;
      v177 = v28[2];
      v178 = *v28 + 4 * v25[2927] * v24;
      if (v178 >= v177)
      {
        v179 = v24;
        if (v24 < 1)
        {
          if (v176 < v177)
          {
            goto LABEL_399;
          }

          v190 = &a15[v24];
          v187 = a11;
          v191 = v24;
        }

        else
        {
          v180 = a11[1];
          v181 = 4 * v24;
          v182 = 4 * v24;
          v72 = v180 >= v178;
          v183 = v180 - v178;
          if (!v72 || v182 < v181 || v183 < v181)
          {
            goto LABEL_399;
          }

          memmove((*v28 + 4 * v25[2927] * v24), v26, 4 * v24);
          if (v178 + v181 < v178)
          {
            goto LABEL_399;
          }

          v186 = *a11;
          if (*a11 < a11[2])
          {
            goto LABEL_399;
          }

          v187 = a11;
          v188 = a11[1];
          v72 = v188 >= v186;
          v189 = v188 - v186;
          if (!v72)
          {
            goto LABEL_399;
          }

          if (v189 < v181)
          {
            goto LABEL_399;
          }

          if (v182 < v181)
          {
            goto LABEL_399;
          }

          memmove(a15, v186, v181);
          if (&a15[v181 / 4] < a15)
          {
            goto LABEL_399;
          }

          v190 = &a15[v179];
          v176 = *a11;
          v177 = a11[2];
          v191 = a1;
          v26 = a16;
          v27 = a14;
          v54 = a18;
        }

        v192 = &v26[v191];
        v193 = *(v187 + 8);
        v194 = 1;
        v195 = (v176 + 4 * v179);
LABEL_240:
        v196 = v194;
        while (v191 < 1)
        {
          v72 = v196++ >= 5;
          if (v72)
          {
            __A[0] = 3.4028e38;
            vDSP_vfill(__A, v27, 1, v191);
            LODWORD(v24) = a1;
            a4 = __src;
            v25 = a21;
            a5 = __dsta;
            goto LABEL_303;
          }
        }

        v197 = 0;
        v198 = v195;
        while (1)
        {
          v195 = v198 + 1;
          v199 = (v198 + 1) > v193 || v198 > v195;
          if (v199 || v198 < v177)
          {
            break;
          }

          v201 = v191;
          v202 = &a15[v197];
          if (v202 < a15 || (v202 + 1) > v190 || v202 > v202 + 1)
          {
            break;
          }

          if (*v198 < *v202)
          {
            *v202 = *v198;
          }

          ++v197;
          v191 = v201;
          ++v198;
          if (v201 <= v197)
          {
            v72 = v194++ >= 5;
            if (!v72)
            {
              goto LABEL_240;
            }

            v203 = 0;
            v204 = 0;
            v205 = *(a21 + 11692);
            v206 = a17 + 4 * v179;
            while (1)
            {
              if (v203 == a2)
              {
                v205 = *(a21 + 11696);
              }

              v207 = (a17 + 4 * v204);
              if (v207 < a17)
              {
                goto LABEL_399;
              }

              if ((v207 + 1) > v206 || v207 > v207 + 1)
              {
                goto LABEL_399;
              }

              if (*v207)
              {
                v209 = (v54 + 4 * v204);
                if (v209 < v54 || (v209 + 1) > v54 + 4 * v179 || v209 > v209 + 1)
                {
                  goto LABEL_399;
                }

                if (!*v209)
                {
                  v210 = &v26[v204];
                  if (v210 < v26)
                  {
                    goto LABEL_399;
                  }

                  if ((v210 + 1) > v192)
                  {
                    goto LABEL_399;
                  }

                  if (v210 > v210 + 1)
                  {
                    goto LABEL_399;
                  }

                  v211 = &a15[v204];
                  if (v211 < a15 || (v211 + 1) > v190 || v211 > v211 + 1)
                  {
                    goto LABEL_399;
                  }

                  v212 = *v210;
                  if (*v210 > *v211 && v212 < (v205 * *v211))
                  {
                    v213 = 0;
                    *v211 = v212;
                    v214 = v204;
                    do
                    {
                      v215 = (*a11 + 4 * v214);
                      v216 = (v215 + 1) > a11[1] || v215 > v215 + 1;
                      if (v216 || v215 < v177)
                      {
                        goto LABEL_399;
                      }

                      *v215 = v212;
                      v214 += v201;
                      v72 = v213++ >= 5;
                    }

                    while (!v72);
                  }
                }
              }

              v203 = ++v204;
              if (v204 >= v201)
              {
                v218 = v201;
                v219 = a17;
                while (v219 >= a17 && (v219 + 1) <= v206 && v219 <= v219 + 1)
                {
                  *v219++ = 0;
                  if (!--v218)
                  {
                    __A[0] = 3.4028e38;
                    vDSP_vfill(__A, v27, 1, v201);
                    LODWORD(v24) = a1;
                    a4 = __src;
                    v25 = a21;
                    a5 = __dsta;
                    if (a1 < 1)
                    {
                      goto LABEL_303;
                    }

                    v175 = a1;
                    if (v175 <= v179)
                    {
LABEL_216:
                      memmove(a5, a15, v175 * 4);
                      a5 = __dsta;
                      LODWORD(v24) = a1;
                      a4 = __src;
                      v25 = a21;
                      if (&__dsta[v175] >= __dsta)
                      {
                        goto LABEL_303;
                      }
                    }

                    goto LABEL_399;
                  }
                }

                goto LABEL_399;
              }
            }
          }
        }
      }

LABEL_399:
      __break(0x5519u);
      return;
    }
  }

  else if (v24 >= 1)
  {
    LOWORD(v167) = 0;
    while (1)
    {
      v168 = (v54 + 4 * v167);
      v169 = v168 + 1;
      v170 = v168 < v54 || v169 > v54 + 4 * v24;
      if (v170 || v168 > v169)
      {
        goto LABEL_399;
      }

      v167 = v167;
      if (*v168 >= 1)
      {
        v172 = (a17 + 4 * v167);
        if (v172 < a17 || (v172 + 1) > a17 + 4 * v24 || v172 > v172 + 1)
        {
          goto LABEL_399;
        }

        *v172 = 1;
      }

      v173 = &v26[v167];
      if (v173 < v26)
      {
        goto LABEL_399;
      }

      if (v173 + 1 > &v26[v24])
      {
        goto LABEL_399;
      }

      if (v173 > v173 + 1)
      {
        goto LABEL_399;
      }

      v174 = &a15[v167];
      if (v174 < a15 || v174 + 1 > &a15[v24] || v174 > v174 + 1)
      {
        goto LABEL_399;
      }

      if (*v173 < *v174)
      {
        *v174 = *v173;
      }

      LOWORD(v167) = v167 + 1;
      if (v24 <= v167)
      {
        v175 = v24;
        if (v175 > v24)
        {
          goto LABEL_399;
        }

        goto LABEL_216;
      }
    }
  }

LABEL_303:
  v220 = (v25 + 2929);
  if (v25 + 2929 > v281 || v280 > v220 || a21 + 11724 > v273 || v281 > a21 + 11724)
  {
    goto LABEL_399;
  }

  if (*v280 <= (*v281 * 50.0))
  {
    v228 = 0;
    v48 = a4;
    v49 = v24;
  }

  else
  {
    v49 = v24;
    if (*v273 < 1)
    {
      v228 = 1;
      v48 = a4;
    }

    else
    {
      v221 = 4 * v24;
      v222 = a21;
      if (v24 >= 1)
      {
        v223 = 4 * v24;
        if (v221 < v223)
        {
          goto LABEL_399;
        }

        memmove(__dst, __src, 4 * v24);
        if (&__dst[v223] < __dst)
        {
          goto LABEL_399;
        }

        memmove(a15, __src, v223);
        v72 = &a15[v223 / 4] >= a15;
        v49 = a1;
        v222 = a21;
        if (!v72)
        {
          goto LABEL_399;
        }
      }

      v224 = v49;
      __A[0] = 1.0;
      vDSP_vfill(__A, (v222 + 11684), 1, v166);
      __A[0] = 0.0;
      vDSP_vfill(__A, a7, 1, v49);
      if (v49 >= 1)
      {
        v225 = 4 * a1;
        if (v221 < v225)
        {
          goto LABEL_399;
        }

        memmove(a9, __src, 4 * a1);
        if (&a9[v225] < a9)
        {
          goto LABEL_399;
        }
      }

      __A[0] = 0.0;
      vDSP_vfill(__A, a10, 1, v224);
      v226 = *v285;
      v227 = v285[1];
      if (*v285 > v227 || v285[2] > v226 || a2 > v224 || (a2 & 0x8000) != 0 || v227 - v226 < a2)
      {
        goto LABEL_399;
      }

      __A[0] = NAN;
      v228 = 1;
      vDSP_dotpr(__src, 1, v226, 1, __A, a2 & 0x7FFF);
      a5 = __dsta;
      v48 = __src;
      v49 = a1;
      *v280 = __A[0];
      v229 = a1 - a2;
      if (a1 > a2)
      {
        v230 = v285[1];
        v231 = &(*v285)[a2];
        if (v231 > v230)
        {
          goto LABEL_399;
        }

        if (v285[2] > v231)
        {
          goto LABEL_399;
        }

        if (v229 > (v230 - v231) >> 2)
        {
          goto LABEL_399;
        }

        if (((a1 - a2) & 0x8000) != 0)
        {
          goto LABEL_399;
        }

        v232 = &__src[a2];
        if (v232 > &__src[a1] || v232 < __src || v229 > (v221 - 4 * a2) >> 2)
        {
          goto LABEL_399;
        }

        __A[0] = NAN;
        v228 = 1;
        vDSP_dotpr(v232, 1, v231, 1, __A, (a1 - a2) & 0x7FFF);
        a5 = __dsta;
        v48 = __src;
        v49 = a1;
        *v220 = __A[0];
      }
    }
  }

  *v273 = v228;
  v233 = *(a21 + 11680);
  if (v233 == 12)
  {
    v234 = *(a21 + 11708);
    if (v234 == 5)
    {
      v235 = 0;
    }

    else
    {
      v235 = v234 + 1;
    }

    *(a21 + 11708) = v235;
    v236 = 1;
  }

  else
  {
    v236 = v233 + 1;
  }

  *(a21 + 11680) = v236;
  v35 = v49;
  if (v49 >= 1)
  {
    v237 = 0;
    do
    {
      v238 = v237;
      v239 = &a6[v237];
      v240 = v239 + 1;
      v241 = v239 < a6 || v240 > &a6[v49];
      v242 = v241 || v239 > v240;
      v243 = &a5[v238];
      v244 = v243 + 1;
      v245 = !v242 && v243 >= a5;
      v246 = !v245 || v244 > &a5[v49];
      if (v246 || v243 > v244)
      {
        goto LABEL_399;
      }

      *v239 = (*v243 * 0.05) + (*v239 * 0.95);
      v237 = v238 + 1;
    }

    while (v49 > (v238 + 1));
  }

LABEL_358:
  v248 = *a20;
  v249 = (*a19 + 4 * *a20 * v49);
  if (v249 < a19[2])
  {
    goto LABEL_399;
  }

  if (v49 >= 1)
  {
    v250 = a19[1];
    v72 = v250 >= v249;
    v251 = v250 - v249;
    if (v72)
    {
      v252 = 4 * v49;
      if (4 * v35 >= v252 && v251 >= v252)
      {
        memmove(v249, v48, v252);
        if (&v249[v252] >= v249)
        {
          v253 = 0;
          if (*a20 == 4)
          {
            v254 = 0;
          }

          else
          {
            v254 = *a20 + 1;
          }

          *a20 = v254;
          v255 = a19[2];
          while (1)
          {
            v256 = a19[1];
            v257 = (*a19 + 4 * v253);
            v258 = (v257 + 1) > v256 || v257 > v257 + 1;
            if (v258 || v257 < v255)
            {
              break;
            }

            v260 = *v257;
            for (j = v253 + a1; 5 * a1 > j; j += a1)
            {
              v262 = (*a19 + 4 * j);
              if ((v262 + 1) > v256 || v262 > v262 + 1 || v262 < v255)
              {
                goto LABEL_399;
              }

              v260 = v260 + *v262;
            }

            v265 = &a6[v253];
            if (v265 < a6 || v265 + 1 > &a6[v35] || v265 > v265 + 1)
            {
              break;
            }

            v266 = v260 * 0.2;
            if (*v265 > v266)
            {
              *v265 = v266;
            }

            if (a1 <= ++v253)
            {
              return;
            }
          }
        }
      }
    }

    goto LABEL_399;
  }

  if (v248 == 4)
  {
    v267 = 0;
  }

  else
  {
    v267 = v248 + 1;
  }

  *a20 = v267;
}

void expand_range(float *a1, unint64_t a2, float *a3, unint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    v10 = a1;
    v11 = a3;
    while (v10 >= a1)
    {
      v12 = v10 + 1;
      if ((v10 + 1) > a2 || v10 > v12 || v11 < a3 || (v11 + 1) > a4 || v11 > v11 + 1)
      {
        break;
      }

      v13 = exp2(*v10);
      v14 = v13 + -1.0;
      if (v14 < 0.00033851)
      {
        v14 = 0.00033851;
      }

      *v11 = v14;
      v10 = v12;
      ++v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

char *cldfbAnalysis(uint64_t a1, void *a2, void *a3, size_t __n, int *a5)
{
  v393 = a3;
  v394 = a2;
  v502[1] = *MEMORY[0x1E69E9840];
  v5 = a5[1];
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v500 = v6;
  v501 = v6;
  v498 = v6;
  v499 = v6;
  v496 = v6;
  v497 = v6;
  v494 = v6;
  v495 = v6;
  v492 = v6;
  v493 = v6;
  v490 = v6;
  v491 = v6;
  v488 = v6;
  v489 = v6;
  v486 = v6;
  v487 = v6;
  v484 = v6;
  v485 = v6;
  v482 = v6;
  v483 = v6;
  v480 = v6;
  v481 = v6;
  v478 = v6;
  v479 = v6;
  v476 = v6;
  v477 = v6;
  v474 = v6;
  v475 = v6;
  v472 = v6;
  v473 = v6;
  v470 = v6;
  v471 = v6;
  v468 = v6;
  v469 = v6;
  v466 = v6;
  v467 = v6;
  v464 = v6;
  v465 = v6;
  v462 = v6;
  v463 = v6;
  v460 = v6;
  v461 = v6;
  v458 = v6;
  v459 = v6;
  v456 = v6;
  v457 = v6;
  v454 = v6;
  v455 = v6;
  v452 = v6;
  v453 = v6;
  v450 = v6;
  v451 = v6;
  v448 = v6;
  v449 = v6;
  v446 = v6;
  v447 = v6;
  v444 = v6;
  v445 = v6;
  v442 = v6;
  v443 = v6;
  v7 = *(a5 + 15);
  v390 = a5;
  v8 = *(a5 + 17);
  __dst = v7;
  if (v7 < v8)
  {
    goto LABEL_418;
  }

  v9 = *v390;
  v10 = *v390 * v5;
  v11 = __dst + 4 * v10;
  if (v11 < v8)
  {
    goto LABEL_418;
  }

  v12 = __n;
  v14 = *(v390 + 16);
  v15 = v390[2];
  v16 = v15 - v9;
  if ((v15 - v9) >= 1)
  {
    if (v14 < __dst)
    {
      goto LABEL_418;
    }

    if (v11 > v14)
    {
      goto LABEL_418;
    }

    v17 = 4 * (v16 & 0x7FFFu);
    if (v14 - v11 < v17)
    {
      goto LABEL_418;
    }

    if (v14 - __dst < v17)
    {
      goto LABEL_418;
    }

    memmove(__dst, v11, 4 * (v16 & 0x7FFFu));
    if (__dst + v17 < __dst)
    {
      goto LABEL_418;
    }
  }

  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = __dst + 4 * v16;
  if ((v12 & 0x80000000) != 0)
  {
    if (*a1 > v19)
    {
      goto LABEL_418;
    }

    if (*(a1 + 16) > v18)
    {
      goto LABEL_418;
    }

    v27 = 4 * v10;
    if (v27 > v19 - v18)
    {
      goto LABEL_418;
    }

    if (v20 > v14)
    {
      goto LABEL_418;
    }

    if (v8 > v20)
    {
      goto LABEL_418;
    }

    if (v27 > v14 - v20)
    {
      goto LABEL_418;
    }

    v26 = v5;
    v23 = memcpy(v20, v18, 4 * v10);
    if (v20 > &v20[v27])
    {
      goto LABEL_418;
    }

    v24 = v390;
    v25 = *v390;
  }

  else
  {
    if (*a1 > v19)
    {
      goto LABEL_418;
    }

    if (*(a1 + 16) > v18)
    {
      goto LABEL_418;
    }

    v21 = 4 * v12;
    if (v21 > v19 - v18)
    {
      goto LABEL_418;
    }

    if (v20 > v14)
    {
      goto LABEL_418;
    }

    if (v8 > v20)
    {
      goto LABEL_418;
    }

    if (v21 > v14 - v20)
    {
      goto LABEL_418;
    }

    memcpy(__dst + 4 * v16, v18, 4 * v12);
    if (v20 > &v20[v21])
    {
      goto LABEL_418;
    }

    v22 = &v20[4 * v12];
    if (v22 < v8)
    {
      goto LABEL_418;
    }

    v441 = 0.0;
    vDSP_vfill(&v441, v22, 1, (v10 - v12));
    v24 = v390;
    v25 = *v390;
    v26 = v5 >= (v12 + v25 - 1) / v25 ? (v12 + v25 - 1) / v25 : v5;
  }

  v28 = v25;
  v29 = *(v24 + 4);
  v431 = *(v24 + 5);
  v422 = *(v24 + 6);
  v423 = v29;
  v30 = v24[2];
  v31 = *(v24 + 2);
  v432 = *(v24 + 3);
  v389 = v31;
  v32 = MEMORY[0x1EEE9AC00](v23);
  v34 = v355 - ((v33 + 15) & 0x7FFFFFFF0);
  if (v30)
  {
    v32 = memset(v355 - ((v33 + 15) & 0x7FFFFFFF0), 255, v33);
  }

  v35 = v25;
  MEMORY[0x1EEE9AC00](v32);
  v37 = v355 - v36;
  v436 = (v355 - v36);
  v440 = v34;
  v355[1] = v355;
  if (v25)
  {
    v38 = 4 * v25;
    v39 = memset(v37, 255, v38);
    MEMORY[0x1EEE9AC00](v39);
    v435 = (v355 - v40);
    memset(v355 - v40, 255, v38);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v37);
    v435 = (v355 - v41);
    v38 = 0;
  }

  v42 = v25;
  if (v25 > v38)
  {
    goto LABEL_418;
  }

  bzero(v436, v25);
  bzero(v435, v25);
  v388 = v26;
  result = __dst;
  v44 = v440;
  if (v388 >= 1)
  {
    v407 = 0;
    v45 = (v25 >> 1);
    v46 = ((v25 >> 1) & 1) + (v25 >> 2);
    v439 = &v440[4 * v30];
    v47 = v25 << 17;
    v48 = (2 * v25);
    v49 = (v28 << 17) >> 15;
    v50 = 3 * (2 * v28);
    v51 = (v28 << 17) >> 14;
    v52 = -3 * v45 + (2 * v28);
    v53 = ~v45 + (2 * v28);
    v54 = v48 - 5 * v45;
    v55 = v432 + 32 > v423 || v432 > v432 + 32;
    v56 = v55;
    v57 = &v431[2];
    v433 = (v435 + 4 * v35);
    v59 = &v435[4] > v433 || v435 > &v435[4];
    v358 = v59;
    v60 = v57 > v422 || v431 > v57;
    v61 = v436 + 4;
    if (v60)
    {
      v62 = 1;
    }

    else
    {
      v62 = v56;
    }

    v434 = &v436->i8[4 * v35];
    v63 = v61 > v434 || v436 > v61;
    v384 = &v440[4 * v49];
    v64 = 4 * v49;
    v383 = &v440[4 * v50];
    v65 = 4 * v50;
    v382 = &v440[4 * v51];
    v66 = 4 * v51;
    if (v63)
    {
      v62 = 1;
    }

    v359 = v62;
    v405 = 4 * v46;
    v67 = v51 + (v47 >> 16);
    v68 = v49 + (v47 >> 16);
    v69 = 8 * v46;
    v70 = v69 + 4 * v51;
    v376 = v70 + 4 * v52;
    v71 = v69 + 4 * v50;
    v375 = v71 + 4 * v52;
    v72 = v69 + 4 * v49;
    v374 = v72 + 4 * v52;
    v73 = v69 + 4 * v48;
    v372 = v71 + 4 * v54;
    v373 = v70 + 4 * v54;
    v371 = v72 + 4 * v54;
    v370 = v73 + 4 * v52;
    v368 = v69 + 4 * v54;
    v369 = v73 + 4 * v54;
    v438 = 4 * v52;
    v366 = v45 - v46;
    v367 = v69 + v438;
    v74 = v45 + v46;
    v395 = &v435->i8[4 * v74];
    v397 = &v436->i8[4 * v74];
    v387 = 5 * v48;
    v365 = v66 + 4 * v53 - v69;
    v364 = v65 + 4 * v53 - v69;
    v362 = 4 * v48 + 4 * v53 - v69;
    v363 = v64 + 4 * v53 - v69;
    v361 = 4 * v53 - v69;
    v377 = 4 * v42 - 4;
    v410 = &v472;
    v411 = v502;
    v379 = &v440[4 * v48];
    v408 = &v435->i8[4 * v45];
    v437 = -v45;
    v409 = &v436->i8[4 * v45];
    v380 = v68;
    v381 = v67;
    v399 = v67 - 1;
    v378 = 4 * v48;
    v400 = 4 * v48 - 1;
    v401 = v68 - 1;
    v385 = 2 * v48;
    v402 = 2 * v48 - 1;
    v386 = v48;
    v403 = v48 - 1;
    v396 = &v435->i8[4 * v46];
    v398 = &v436->i8[4 * v46];
    v404 = 8 * v45;
    v356 = &v442.i32[1];
    v357 = &v472.i32[1];
    v406 = v45;
    v391 = v46;
    v360 = v45 - 2 * v46;
    while (1)
    {
      __dst = result;
      MEMORY[0x19EAE5FA0]();
      if (v391 >= 1)
      {
        break;
      }

LABEL_164:
      if (v406 > v391)
      {
        v153 = 0;
        v154 = v361;
        v155 = v362;
        v156 = v363;
        v157 = v364;
        v158 = v365;
        v159 = v366;
        v160 = v368;
        v161 = v369;
        v162 = v371;
        v163 = v372;
        v165 = v373;
        v164 = v374;
        v166 = v360;
        v167 = v367;
        v168 = v370;
        v169 = v375;
        v170 = v376;
        do
        {
          v416 = v159;
          v420 = v155;
          v421 = v154;
          v171 = (v154 + v44);
          v172 = v154 + v44 + 4;
          v173 = v171 < v44 || v172 > v439;
          v428 = v171;
          v174 = v173 || v171 > v172;
          v175 = (v155 + v44);
          v176 = (v175 + 1);
          v177 = !v174 && v175 >= v44;
          v178 = !v177 || v176 > v439;
          v427 = v175;
          v179 = v178 || v175 > v176;
          v418 = v157;
          v419 = v156;
          v180 = v156 + v44;
          v181 = v156 + v44 + 4;
          v182 = !v179 && v180 >= v44;
          v183 = !v182 || v181 > v439;
          v426 = (v156 + v44);
          v184 = v183 || v180 > v181;
          v185 = v157 + v44;
          v186 = v157 + v44 + 4;
          v187 = !v184 && v185 >= v44;
          v188 = !v187 || v186 > v439;
          v425 = (v157 + v44);
          v189 = v188 || v185 > v186;
          v417 = v158;
          v190 = v158 + v44;
          v191 = v158 + v44 + 4;
          v192 = !v189 && v190 >= v44;
          v193 = !v192 || v191 > v439;
          v424 = (v158 + v44);
          if (v193 || v190 > v191)
          {
            goto LABEL_418;
          }

          v195 = &v440[v160];
          if (&v440[v160] < v440)
          {
            goto LABEL_418;
          }

          if (v195 + 4 > v439)
          {
            goto LABEL_418;
          }

          if (v195 > v195 + 4)
          {
            goto LABEL_418;
          }

          v430 = &v440[v161];
          if (&v440[v161] < v440)
          {
            goto LABEL_418;
          }

          if ((v430 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v430 > v430 + 1)
          {
            goto LABEL_418;
          }

          v429 = &v440[v162];
          if (&v440[v162] < v440)
          {
            goto LABEL_418;
          }

          if ((v429 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v429 > v429 + 1)
          {
            goto LABEL_418;
          }

          v196 = &v440[v163];
          if (&v440[v163] < v440)
          {
            goto LABEL_418;
          }

          if (v196 + 4 > v439)
          {
            goto LABEL_418;
          }

          if (v196 > v196 + 4)
          {
            goto LABEL_418;
          }

          v197 = &v440[v165];
          if (&v440[v165] < v440)
          {
            goto LABEL_418;
          }

          if (v197 + 4 > v439)
          {
            goto LABEL_418;
          }

          if (v197 > v197 + 4)
          {
            goto LABEL_418;
          }

          v198 = &v440[4 * v403 + 4 * v166];
          if (v198 < v440)
          {
            goto LABEL_418;
          }

          if (v198 + 4 > v439)
          {
            goto LABEL_418;
          }

          if (v198 > v198 + 4)
          {
            goto LABEL_418;
          }

          v199 = &v440[4 * v402 + 4 * v166];
          if (v199 < v440)
          {
            goto LABEL_418;
          }

          if ((v199 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v199 > v199 + 1)
          {
            goto LABEL_418;
          }

          v200 = &v440[4 * v401 + 4 * v166];
          if (v200 < v440)
          {
            goto LABEL_418;
          }

          if ((v200 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v200 > v200 + 1)
          {
            goto LABEL_418;
          }

          v201 = &v440[4 * v400 + 4 * v166];
          if (v201 < v440)
          {
            goto LABEL_418;
          }

          if ((v201 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v201 > v201 + 1)
          {
            goto LABEL_418;
          }

          v202 = &v440[4 * v399 + 4 * v166];
          if (v202 < v440)
          {
            goto LABEL_418;
          }

          if ((v202 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v202 > v202 + 1)
          {
            goto LABEL_418;
          }

          v203 = &v440[v167];
          if (&v440[v167] < v440)
          {
            goto LABEL_418;
          }

          if ((v203 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v203 > v203 + 1)
          {
            goto LABEL_418;
          }

          v204 = &v440[v168];
          if (&v440[v168] < v440)
          {
            goto LABEL_418;
          }

          if ((v204 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v204 > v204 + 1)
          {
            goto LABEL_418;
          }

          v205 = &v440[v164];
          if (&v440[v164] < v440)
          {
            goto LABEL_418;
          }

          if ((v205 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v205 > v205 + 1)
          {
            goto LABEL_418;
          }

          v206 = &v440[v169];
          if (&v440[v169] < v440)
          {
            goto LABEL_418;
          }

          if ((v206 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v206 > v206 + 1)
          {
            goto LABEL_418;
          }

          v207 = &v440[v170];
          if (&v440[v170] < v440)
          {
            goto LABEL_418;
          }

          if ((v207 + 1) > v439)
          {
            goto LABEL_418;
          }

          if (v207 > v207 + 1)
          {
            goto LABEL_418;
          }

          v208 = &v398[v153];
          if (&v398[v153] < v436)
          {
            goto LABEL_418;
          }

          if (v208 + 1 > v434)
          {
            goto LABEL_418;
          }

          if (v208 > v208 + 1)
          {
            goto LABEL_418;
          }

          v209 = ((((0.0 - *v428) - *v427) - *v426) - *v425) - *v424;
          v210 = ((((0.0 - *&v440[v160]) - *v430) - *v429) - *&v440[v163]) - *&v440[v165];
          v211 = *&v440[4 * v403 + 4 * v166];
          v212 = *v199;
          v213 = *v200;
          v214 = *v201;
          v215 = *v202;
          v216 = *v203;
          v217 = *v204;
          v218 = *v205;
          v219 = *v206;
          v220 = *v207;
          *v208 = v209 + v210;
          v221 = &v397[v153];
          if (&v397[v153] < v436)
          {
            goto LABEL_418;
          }

          if (v221 + 1 > v434)
          {
            goto LABEL_418;
          }

          if (v221 > v221 + 1)
          {
            goto LABEL_418;
          }

          v222 = ((((0.0 - v211) - v212) - v213) - v214) - v215;
          v223 = ((((0.0 - v216) - v217) - v218) - v219) - v220;
          *v221 = v222 - v223;
          v224 = &v396[v153];
          if (&v396[v153] < v435)
          {
            goto LABEL_418;
          }

          if (v224 + 1 > v433)
          {
            goto LABEL_418;
          }

          if (v224 > v224 + 1)
          {
            goto LABEL_418;
          }

          *v224 = v209 - v210;
          v225 = &v395[v153];
          if (&v395[v153] < v435 || v225 + 1 > v433 || v225 > v225 + 1)
          {
            goto LABEL_418;
          }

          v153 += 4;
          v170 += 8;
          v169 += 8;
          v164 += 8;
          *v225 = v222 + v223;
          v168 += 8;
          v167 += 8;
          v166 -= 2;
          v165 += 8;
          v163 += 8;
          v162 += 8;
          v161 += 8;
          v160 += 8;
          v158 = v417 - 2;
          v157 = v418 - 2;
          v156 = v419 - 2;
          v155 = v420 - 2;
          v154 = v421 - 2;
          v159 = v416 - 1;
          v44 = v440;
        }

        while (v416 != 1);
      }

      v226 = v406;
      if (v406 == 8)
      {
        if (v359)
        {
          goto LABEL_418;
        }

        v227 = v431[1];
        v228 = *(v432 + 16);
        v229 = v436[1];
        v230 = v436[2];
        v231 = v436[3];
        v505.val[0] = vmlaq_f32(vmulq_f32(v227, vnegq_f32(v231)), v228, v229);
        v503.val[0] = vmlaq_f32(vmulq_f32(*v431, vnegq_f32(v230)), *v432, *v436);
        v503.val[1] = vmlaq_f32(vmulq_f32(*v432, v230), *v431, *v436);
        v232 = &v472;
        vst2q_f32(v232, v503);
        v233 = v232 + 8;
        v505.val[1] = vmlaq_f32(vmulq_f32(v228, v231), v227, v229);
        vst2q_f32(v233, v505);
        fft_cldfb(&v472, v411, 8);
        v234 = (*v394 + 24 * v407);
        if ((v234 + 3) > v394[1])
        {
          goto LABEL_418;
        }

        if (v234 > v234 + 3)
        {
          goto LABEL_418;
        }

        if (v234 < v394[2])
        {
          goto LABEL_418;
        }

        v235 = *v234;
        v236 = v234[1];
        v95 = v236 >= *v234;
        v237 = v236 - *v234;
        if (!v95)
        {
          goto LABEL_418;
        }

        if (v234[2] > v235)
        {
          goto LABEL_418;
        }

        if (v237 < 0x40)
        {
          goto LABEL_418;
        }

        v238 = v431[1];
        v239 = *(v432 + 16);
        v240 = vuzp1q_s32(*v233, v475);
        v241 = vuzp2q_s32(*v233, v475);
        v242 = vuzp1q_s32(v472, v473);
        v243 = vuzp2q_s32(v472, v473);
        v244 = vmlaq_f32(vmulq_f32(v238, vnegq_f32(v241)), v239, v240);
        v245 = vmlaq_f32(vmulq_f32(*v431, vnegq_f32(v243)), *v432, v242);
        v246 = vmlaq_f32(vmulq_f32(v239, v241), v238, v240);
        v247 = vmlaq_f32(vmulq_f32(*v432, v243), *v431, v242);
        *v235 = vzip2q_s32(vextq_s8(v244, v247, 8uLL), vrev64q_s32(v244));
        *(v235 + 16) = vextq_s8(vzip2q_s32(vzip1q_s32(v244, v244), v247), v244, 4uLL);
        *(v235 + 32) = vzip2q_s32(vextq_s8(v245, v246, 8uLL), vrev64q_s32(v245));
        *(v235 + 48) = vextq_s8(vzip2q_s32(vzip1q_s32(v245, v245), v246), v245, 4uLL);
        if (v235 >= v235 + 64)
        {
          goto LABEL_418;
        }

        if (v358)
        {
          goto LABEL_418;
        }

        v248 = v431[1];
        v249 = *(v432 + 16);
        v250 = v435[1];
        v251 = v435[2];
        v252 = v435[3];
        v506.val[0] = vmlaq_f32(vmulq_f32(v248, vnegq_f32(v252)), v249, v250);
        v504.val[0] = vmlaq_f32(vmulq_f32(*v431, vnegq_f32(v251)), *v432, *v435);
        v504.val[1] = vmlaq_f32(vmulq_f32(*v432, v251), *v431, *v435);
        v253 = &v442;
        vst2q_f32(v253, v504);
        v254 = v253 + 8;
        v506.val[1] = vmlaq_f32(vmulq_f32(v249, v252), v248, v250);
        vst2q_f32(v254, v506);
        fft_cldfb(&v442, v410, 8);
        v255 = *v393 + 24 * v407;
        if (v255 + 24 > v393[1])
        {
          goto LABEL_418;
        }

        if (v255 > v255 + 24)
        {
          goto LABEL_418;
        }

        if (v255 < v393[2])
        {
          goto LABEL_418;
        }

        v256 = *v255;
        v257 = *(v255 + 8);
        v95 = v257 >= *v255;
        v258 = v257 - *v255;
        if (!v95)
        {
          goto LABEL_418;
        }

        if (*(v255 + 16) > v256)
        {
          goto LABEL_418;
        }

        if (v258 < 0x40)
        {
          goto LABEL_418;
        }

        v259 = v431[1];
        v260 = *(v432 + 16);
        v261 = vuzp1q_s32(*v254, v445);
        v262 = vuzp2q_s32(*v254, v445);
        v263 = vuzp1q_s32(v442, v443);
        v264 = vuzp2q_s32(v442, v443);
        v265 = vmlaq_f32(vmulq_f32(v259, vnegq_f32(v262)), v260, v261);
        v266 = vmlaq_f32(vmulq_f32(*v431, vnegq_f32(v264)), *v432, v263);
        v267 = vmlaq_f32(vmulq_f32(v260, v262), v259, v261);
        v268 = vmlaq_f32(vmulq_f32(*v432, v264), *v431, v263);
        v269 = vextq_s8(v265, v268, 0xCuLL);
        v270 = vextq_s8(v266, v267, 0xCuLL);
        v271 = vzip2q_s32(v268, vextq_s8(v265, v265, 8uLL));
        v272 = vzip2q_s32(v267, vextq_s8(v266, v266, 8uLL));
        *v256 = vextq_s8(v272, v272, 4uLL);
        v256[1] = vextq_s8(vtrn1q_s32(v266, v270), v270, 8uLL);
        v256[2] = vextq_s8(v271, v271, 4uLL);
        v256[3] = vextq_s8(vtrn1q_s32(v265, v269), v269, 8uLL);
        if (v256 >= &v256[4])
        {
          goto LABEL_418;
        }
      }

      else
      {
        if (v406 >= 1)
        {
          v273 = 0;
          v274 = 0x10000;
          v275 = v357;
          do
          {
            v276 = v275 - 1;
            if (v275 != 4 && (v276 < &v472 || v275 > v411 || v276 > v275))
            {
              goto LABEL_418;
            }

            if (v275 && (v275 < &v472 || v275 + 1 > v411 || v275 > v275 + 1))
            {
              goto LABEL_418;
            }

            v277 = v436 + v273;
            if ((v436 + v273) < v436)
            {
              goto LABEL_418;
            }

            if (v277 + 4 > v434)
            {
              goto LABEL_418;
            }

            if (v277 > v277 + 4)
            {
              goto LABEL_418;
            }

            v278 = &v409[v273];
            if (&v409[v273] < v436)
            {
              goto LABEL_418;
            }

            if (v278 + 1 > v434)
            {
              goto LABEL_418;
            }

            if (v278 > v278 + 1)
            {
              goto LABEL_418;
            }

            v279 = (v432 + v273);
            if (v432 + v273 + 4 > v423)
            {
              goto LABEL_418;
            }

            if (v279 > v432 + v273 + 4)
            {
              goto LABEL_418;
            }

            if (v279 < v432)
            {
              goto LABEL_418;
            }

            v280 = &v431->f32[v273 / 4];
            if (v431->u64 + v273 + 4 > v422 || v280 > &v431->f32[v273 / 4 + 1] || v280 < v431)
            {
              goto LABEL_418;
            }

            v281 = v436->f32[v273 / 4];
            v282 = (v281 * *v279) - (*v278 * *v280);
            v283 = (*v278 * *v279) + (v281 * *v280);
            *(v275 - 1) = v282;
            *v275 = v283;
            v275 += 2;
            v55 = v406 <= v274 >> 16;
            v274 += 0x10000;
            v273 += 4;
          }

          while (!v55);
          fft_cldfb(&v472, v411, v406);
          v284 = 0;
          v285 = 0;
          v286 = v394[2];
          v287 = v377;
          do
          {
            v288 = (*v394 + 24 * v407);
            if ((v288 + 3) > v394[1] || v288 > v288 + 3 || v288 < v286)
            {
              goto LABEL_418;
            }

            v291 = *v288;
            v292 = (*v288 + v287);
            if (v292)
            {
              v293 = v291 + v287 + 4;
              v294 = v292 > v293 || v293 > v288[1];
              if (v294 || v292 < v288[2])
              {
                goto LABEL_418;
              }
            }

            v296 = (v291 + v285);
            if (v291 + v285)
            {
              v299 = v288 + 1;
              v297 = v288[1];
              v298 = v299[1];
              v300 = v291 + v285 + 4;
              v301 = v296 > v300 || v300 > v297;
              if (v301 || v296 < v298)
              {
                goto LABEL_418;
              }
            }

            v303 = &v472.i8[v285];
            if (&v472.i8[v285] < &v472)
            {
              goto LABEL_418;
            }

            if (v303 + 4 > v411)
            {
              goto LABEL_418;
            }

            if (v303 > v303 + 4)
            {
              goto LABEL_418;
            }

            v304 = &v472.i32[v285 / 4];
            v305 = &v472.i32[v285 / 4 + 1];
            if (v305 < &v472)
            {
              goto LABEL_418;
            }

            v307 = *v304;
            v306 = (v304 + 2);
            v308 = v307;
            if (v306 > v411)
            {
              goto LABEL_418;
            }

            if (v305 > v306)
            {
              goto LABEL_418;
            }

            v309 = (v432 + v284);
            if (v432 + v284 + 4 > v423)
            {
              goto LABEL_418;
            }

            if (v309 > v432 + v284 + 4)
            {
              goto LABEL_418;
            }

            if (v309 < v432)
            {
              goto LABEL_418;
            }

            v310 = &v431->f32[v284 / 4];
            if (v431->u64 + v284 + 4 > v422 || v310 > &v431->f32[v284 / 4 + 1] || v310 < v431)
            {
              goto LABEL_418;
            }

            v311 = *v305;
            v312 = *v309;
            v313 = *v310;
            *v292 = (v308 * *v309) - (*v305 * *v310);
            *v296 = (v311 * v312) + (v308 * v313);
            v285 += 8;
            v284 += 4;
            v287 -= 8;
          }

          while (v404 != v285);
          v314 = 0;
          v315 = 0x10000;
          v316 = v356;
          do
          {
            v317 = v316 - 1;
            if (v316 != 4 && (v317 < &v442 || v316 > v410 || v317 > v316))
            {
              goto LABEL_418;
            }

            if (v316 && (v316 < &v442 || v316 + 1 > v410 || v316 > v316 + 1))
            {
              goto LABEL_418;
            }

            v318 = v435 + v314;
            if ((v435 + v314) < v435)
            {
              goto LABEL_418;
            }

            if (v318 + 4 > v433)
            {
              goto LABEL_418;
            }

            if (v318 > v318 + 4)
            {
              goto LABEL_418;
            }

            v319 = &v408[v314];
            if (&v408[v314] < v435)
            {
              goto LABEL_418;
            }

            if (v319 + 1 > v433)
            {
              goto LABEL_418;
            }

            if (v319 > v319 + 1)
            {
              goto LABEL_418;
            }

            v320 = (v432 + v314);
            if (v432 + v314 + 4 > v423)
            {
              goto LABEL_418;
            }

            if (v320 > v432 + v314 + 4)
            {
              goto LABEL_418;
            }

            if (v320 < v432)
            {
              goto LABEL_418;
            }

            v321 = &v431->f32[v314 / 4];
            if (v431->u64 + v314 + 4 > v422 || v321 > &v431->f32[v314 / 4 + 1] || v321 < v431)
            {
              goto LABEL_418;
            }

            v322 = v435->f32[v314 / 4];
            v323 = (v322 * *v320) - (*v319 * *v321);
            v324 = (*v319 * *v320) + (v322 * *v321);
            *(v316 - 1) = v323;
            *v316 = v324;
            v314 += 4;
            v316 += 2;
            v55 = v406 <= v315 >> 16;
            v315 += 0x10000;
          }

          while (!v55);
          fft_cldfb(&v442, v410, v406);
          v325 = 0;
          v326 = 0;
          v327 = v393[2];
          v328 = v377;
          while (1)
          {
            v329 = (*v393 + 24 * v407);
            v330 = (v329 + 3) > v393[1] || v329 > v329 + 3;
            if (v330 || v329 < v327)
            {
              goto LABEL_418;
            }

            v332 = *v329;
            v333 = (*v329 + v326);
            if (v333)
            {
              v334 = v332 + v326 + 4;
              v335 = v333 > v334 || v334 > v329[1];
              if (v335 || v333 < v329[2])
              {
                goto LABEL_418;
              }
            }

            v337 = (v332 + v328);
            if (v332 + v328)
            {
              v340 = v329 + 1;
              v338 = v329[1];
              v339 = v340[1];
              v341 = v332 + v328 + 4;
              v342 = v337 > v341 || v341 > v338;
              if (v342 || v337 < v339)
              {
                goto LABEL_418;
              }
            }

            v344 = &v442.i8[v326];
            if (&v442.i8[v326] < &v442)
            {
              goto LABEL_418;
            }

            if (v344 + 4 > v410)
            {
              goto LABEL_418;
            }

            if (v344 > v344 + 4)
            {
              goto LABEL_418;
            }

            v345 = &v442.i32[v326 / 4];
            v346 = &v442.i32[v326 / 4 + 1];
            if (v346 < &v442)
            {
              goto LABEL_418;
            }

            v348 = *v345;
            v347 = (v345 + 2);
            v349 = v348;
            if (v347 > v410)
            {
              goto LABEL_418;
            }

            if (v346 > v347)
            {
              goto LABEL_418;
            }

            v350 = (v432 + v325);
            if (v432 + v325 + 4 > v423)
            {
              goto LABEL_418;
            }

            if (v350 > v432 + v325 + 4)
            {
              goto LABEL_418;
            }

            if (v350 < v432)
            {
              goto LABEL_418;
            }

            v351 = &v431->f32[v325 / 4];
            if (v431->u64 + v325 + 4 > v422 || v351 > &v431->f32[v325 / 4 + 1] || v351 < v431)
            {
              goto LABEL_418;
            }

            v352 = *v346;
            v353 = *v350;
            v354 = *v351;
            *v333 = (v349 * *v350) - (*v346 * *v351);
            *v337 = (v352 * v353) + (v349 * v354);
            v326 += 8;
            v325 += 4;
            v328 -= 8;
            if (v404 == v326)
            {
              goto LABEL_416;
            }
          }
        }

        fft_cldfb(&v472, v411, v406);
        fft_cldfb(&v442, v410, v226);
      }

LABEL_416:
      result = __dst + 4 * v387 + 4 * (*v390 - v390[2]);
      ++v407;
      v44 = v440;
      if (v407 == v388)
      {
        return result;
      }
    }

    v75 = 0;
    v76 = v403;
    v77 = v402;
    v78 = v401;
    v79 = v400;
    v80 = v399;
    v81 = v44;
    v82 = v383;
    v83 = v382;
    v84 = v386;
    v85 = v385;
    LODWORD(v430) = v378;
    v86 = v380;
    LODWORD(v429) = v381;
    v428 = v44;
    v427 = v379;
    v426 = v384;
    v425 = v383;
    v87 = v379;
    v424 = v382;
    v88 = v384;
    while (1)
    {
      LODWORD(v416) = v76;
      v89 = &v44[v437 + v76];
      v90 = (v89 + 1);
      v91 = v89 < v44 || v90 > v439;
      v421 = v89;
      v92 = v91 || v89 > v90;
      v415 = v77;
      v93 = &v44[v437 + v77];
      v94 = (v93 + 1);
      v95 = !v92 && v93 >= v44;
      v96 = !v95 || v94 > v439;
      v420 = &v44[v437 + v77];
      v97 = v96 || v93 > v94;
      v414 = v78;
      v98 = &v44[v437 + v78];
      v99 = (v98 + 1);
      v100 = !v97 && v98 >= v44;
      v101 = !v100 || v99 > v439;
      v419 = &v44[v437 + v78];
      v102 = v101 || v98 > v99;
      v413 = v79;
      v103 = &v44[v437 + v79];
      v104 = (v103 + 1);
      v105 = !v102 && v103 >= v44;
      v106 = !v105 || v104 > v439;
      v107 = v106 || v103 > v104;
      v412 = v80;
      v108 = &v44[v437 + v80];
      v109 = (v108 + 1);
      v110 = !v107 && v108 >= v44;
      v111 = !v110 || v109 > v439;
      v417 = &v44[v437 + v80];
      v418 = &v44[v437 + v79];
      if (v111 || v108 > v109)
      {
        break;
      }

      v113 = &v440[4 * v437 + 4 * v84];
      if (v113 < v440)
      {
        break;
      }

      if ((v113 + 1) > v439)
      {
        break;
      }

      if (v113 > v113 + 1)
      {
        break;
      }

      v114 = &v440[4 * v437 + 4 * v85];
      if (v114 < v440)
      {
        break;
      }

      if ((v114 + 1) > v439)
      {
        break;
      }

      if (v114 > v114 + 1)
      {
        break;
      }

      v115 = &v440[4 * v437 + 4 * v86];
      if (v115 < v440)
      {
        break;
      }

      if ((v115 + 1) > v439)
      {
        break;
      }

      if (v115 > v115 + 1)
      {
        break;
      }

      v116 = &v440[4 * v437 + 4 * v430];
      if (v116 < v440)
      {
        break;
      }

      if ((v116 + 1) > v439)
      {
        break;
      }

      if (v116 > v116 + 1)
      {
        break;
      }

      v117 = &v440[4 * v437 + 4 * v429];
      if (v117 < v440)
      {
        break;
      }

      if ((v117 + 1) > v439)
      {
        break;
      }

      if (v117 > v117 + 1)
      {
        break;
      }

      v118 = &v428[v438 / 4];
      if (&v428[v438 / 4] < v440)
      {
        break;
      }

      if ((v118 + 1) > v439)
      {
        break;
      }

      if (v118 > v118 + 1)
      {
        break;
      }

      v119 = &v427[v438 / 4];
      if (&v427[v438 / 4] < v440)
      {
        break;
      }

      if ((v119 + 1) > v439)
      {
        break;
      }

      if (v119 > v119 + 1)
      {
        break;
      }

      v120 = &v426[v438 / 4];
      if (&v426[v438 / 4] < v440)
      {
        break;
      }

      if ((v120 + 1) > v439)
      {
        break;
      }

      if (v120 > v120 + 1)
      {
        break;
      }

      v121 = &v425[v438 / 4];
      if (&v425[v438 / 4] < v440)
      {
        break;
      }

      if ((v121 + 1) > v439)
      {
        break;
      }

      if (v121 > v121 + 1)
      {
        break;
      }

      v122 = &v424[v438 / 4];
      if (&v424[v438 / 4] < v440)
      {
        break;
      }

      if ((v122 + 1) > v439)
      {
        break;
      }

      if (v122 > v122 + 1)
      {
        break;
      }

      v123 = &v81[v438 / 4];
      v124 = &v81[v438 / 4 - 1];
      if (v124 < v440)
      {
        break;
      }

      if (v123 > v439)
      {
        break;
      }

      if (v124 > v123)
      {
        break;
      }

      v125 = &v87[v438 / 4];
      v126 = &v87[v438 / 4 - 1];
      if (v126 < v440)
      {
        break;
      }

      if (v125 > v439)
      {
        break;
      }

      if (v126 > v125)
      {
        break;
      }

      v127 = &v88[v438 / 4];
      v128 = &v88[v438 / 4 - 1];
      if (v128 < v440)
      {
        break;
      }

      if (v127 > v439)
      {
        break;
      }

      if (v128 > v127)
      {
        break;
      }

      v129 = &v82[v438 / 4];
      v130 = &v82[v438 / 4 - 1];
      if (v130 < v440)
      {
        break;
      }

      if (v129 > v439)
      {
        break;
      }

      if (v130 > v129)
      {
        break;
      }

      v131 = &v83[v438 / 4];
      v132 = &v83[v438 / 4 - 1];
      if (v132 < v440)
      {
        break;
      }

      if (v131 > v439)
      {
        break;
      }

      if (v132 > v131)
      {
        break;
      }

      v133 = v436 + v75;
      if ((v436 + v75) < v436)
      {
        break;
      }

      if (v133 + 4 > v434)
      {
        break;
      }

      if (v133 > v133 + 4)
      {
        break;
      }

      v134 = ((((0.0 - *v421) - *v420) - *v419) - *v418) - *v417;
      v135 = ((((0.0 - *v113) - *v114) - *v115) - *v116) - *v117;
      v136 = *v118;
      v137 = *v119;
      v138 = *v120;
      v139 = *v121;
      v140 = *v122;
      v141 = *v124;
      v142 = *v126;
      v143 = *v128;
      v144 = *v130;
      v145 = *v132;
      v146 = v436;
      v436->f32[v75 / 4] = v134 - v135;
      v147 = &v409[v75];
      if (&v409[v75] < v146)
      {
        break;
      }

      if (v147 + 1 > v434)
      {
        break;
      }

      if (v147 > v147 + 1)
      {
        break;
      }

      v148 = ((((0.0 - v136) - v137) - v138) - v139) - v140;
      v149 = ((((0.0 - v141) - v142) - v143) - v144) - v145;
      *v147 = -v148 - v149;
      v150 = v435 + v75;
      if ((v435 + v75) < v435)
      {
        break;
      }

      if (v150 + 4 > v433)
      {
        break;
      }

      if (v150 > v150 + 4)
      {
        break;
      }

      v151 = v435;
      v435->f32[v75 / 4] = v134 + v135;
      v152 = &v408[v75];
      if (&v408[v75] < v151 || v152 + 1 > v433 || v152 > v152 + 1)
      {
        break;
      }

      v75 += 4;
      v424 += 2;
      v425 += 2;
      v426 += 2;
      *v152 = v148 - v149;
      v427 += 2;
      v428 += 2;
      LODWORD(v429) = v429 + 2;
      LODWORD(v430) = v430 + 2;
      v86 += 2;
      v85 += 2;
      v84 += 2;
      v83 -= 2;
      v82 -= 2;
      v88 -= 2;
      v87 -= 2;
      v81 -= 2;
      v80 = v412 - 2;
      v79 = v413 - 2;
      v78 = v414 - 2;
      v77 = v415 - 2;
      v76 = v416 - 2;
      v44 = v440;
      if (v405 == v75)
      {
        goto LABEL_164;
      }
    }

LABEL_418:
    __break(0x5519u);
  }

  return result;
}

void isf2lsf(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v8[0] = v5;
  v8[1] = v5;
  v8[2] = v5;
  v8[3] = v5;
  v7[0] = v5;
  v7[1] = v5;
  v7[2] = v5;
  v7[3] = v5;
  isf2isp(a1, v8);
  isp2lsp(v8, v7, a3);
  for (i = 0; i != 64; i += 4)
  {
    *(a2 + i) = acosf(*(v7 + i)) * 2037.2;
  }
}

__n128 isp2lsp(float *a1, unint64_t a2, unint64_t a3)
{
  *&v12[4] = *MEMORY[0x1E69E9840];
  v11 = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v10[2] = v5;
  v10[3] = v5;
  v10[0] = v5;
  v10[1] = v5;
  isp2a(a1, v10, v12);
  v9[0] = v10;
  v9[1] = v12;
  v9[2] = v10;
  a2lsp_stab(v9, a2, a3);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v8;
  *a3 = result;
  *(a3 + 16) = v7;
  if (a3 + 64 < a3)
  {
    __break(0x5519u);
  }

  return result;
}

void lsf2isf(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  v13 = vdupq_n_s32(0x45C80000u);
  v14 = vdupq_n_s32(0x40490FDBu);
  do
  {
    v18 = vdivq_f32(vmulq_f32(*(a1 + v6 * 16), v14), v13);
    v15 = cosf(v18.f32[1]);
    *&v7 = cosf(v18.f32[0]);
    *(&v7 + 1) = v15;
    v16 = v7;
    v8 = cosf(v18.f32[2]);
    v9 = v16;
    *(&v9 + 2) = v8;
    v17 = v9;
    v10 = cosf(v18.f32[3]);
    v11 = v17;
    *(&v11 + 3) = v10;
    v20[v6++] = v11;
  }

  while (v6 != 4);
  *&v12 = -1;
  *(&v12 + 1) = -1;
  v19[2] = v12;
  v19[3] = v12;
  v19[0] = v12;
  v19[1] = v12;
  lsp2isp(v20, v19, a3);
  isp2isf(v19, a2);
}