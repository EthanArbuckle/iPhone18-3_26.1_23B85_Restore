__n128 Syn_filt_235(const float *a1, unint64_t a2, unint64_t a3, float *__A, int a5)
{
  v45[1] = *MEMORY[0x1E69E9840];
  *&v8 = -1;
  *(&v8 + 1) = -1;
  __C[23] = v8;
  __C[24] = v8;
  __C[21] = v8;
  __C[22] = v8;
  __C[19] = v8;
  __C[20] = v8;
  __C[17] = v8;
  __C[18] = v8;
  __C[15] = v8;
  __C[16] = v8;
  __C[13] = v8;
  __C[14] = v8;
  __C[11] = v8;
  __C[12] = v8;
  __C[9] = v8;
  __C[10] = v8;
  __C[7] = v8;
  __C[8] = v8;
  __C[5] = v8;
  __C[6] = v8;
  __C[3] = v8;
  __C[4] = v8;
  __C[2] = v8;
  __C[0] = v8;
  __C[1] = v8;
  v41 = NAN;
  vDSP_vspdp(__A, 1, __C, 1, 0xAuLL);
  v43 = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v42[3] = v9;
  v42[4] = v9;
  v42[1] = v9;
  v42[2] = v9;
  v42[0] = v9;
  v10 = a1;
  vDSP_vspdp(a1, 1, v42, 1, 0xBuLL);
  v11 = 0;
  v12 = 0;
  v39 = a3 + 160;
  v40 = a2 + 160;
  v13 = -4;
  do
  {
    v14 = &__C[v11];
    vDSP_dotprD(v42 + 1, 1, &__C[v11 + 4] + 1, -1, &v41, 0xAuLL);
    v15 = &__C[v11 + 5] + 1;
    if (v15 > v45)
    {
      goto LABEL_26;
    }

    v16 = a2 + v12;
    v17 = a2 + v12 + 8;
    v18 = (*(a2 + v12) * *v10) - v41;
    *(v14 + 10) = v18;
    *&v18 = v18;
    *(a3 + v12) = LODWORD(v18);
    vDSP_dotprD(v42 + 1, 1, v14 + 10, -1, &v41, 0xAuLL);
    if (v17 > v40)
    {
      goto LABEL_26;
    }

    if (v16 + 4 > v17)
    {
      goto LABEL_26;
    }

    v19 = &__C[v11 + 6];
    if (v19 > v45)
    {
      goto LABEL_26;
    }

    v20 = (*(v16 + 4) * *v10) - v41;
    *v15 = v20;
    v21 = a3 + v12 + 8;
    if (v21 > v39)
    {
      goto LABEL_26;
    }

    v22 = (a3 + v12 + 4);
    if (v22 > v21)
    {
      goto LABEL_26;
    }

    v23 = v20;
    *v22 = v23;
    vDSP_dotprD(v42 + 1, 1, v15, -1, &v41, 0xAuLL);
    v24 = (a2 + v12 + 8);
    if (v24 < a2)
    {
      goto LABEL_26;
    }

    v25 = a2 + v12 + 12;
    if (v25 > v40)
    {
      goto LABEL_26;
    }

    if (v24 > v25)
    {
      goto LABEL_26;
    }

    v26 = &__C[v11 + 6] + 1;
    if (v26 > v45)
    {
      goto LABEL_26;
    }

    v27 = (*v24 * *v10) - v41;
    *v19 = v27;
    v28 = (a3 + v12 + 8);
    if (v28 < a3)
    {
      goto LABEL_26;
    }

    v29 = a3 + v12 + 12;
    if (v29 > v39)
    {
      goto LABEL_26;
    }

    if (v28 > v29)
    {
      goto LABEL_26;
    }

    v30 = v27;
    *v28 = v30;
    vDSP_dotprD(v42 + 1, 1, &__C[v11 + 6], -1, &v41, 0xAuLL);
    v32 = (a2 + v12 + 12);
    if (v32 < a2)
    {
      goto LABEL_26;
    }

    v33 = a2 + v12 + 16;
    if (v33 > v40)
    {
      goto LABEL_26;
    }

    if (v32 > v33)
    {
      goto LABEL_26;
    }

    if (&__C[v11 + 7] > v45)
    {
      goto LABEL_26;
    }

    result.n128_f64[0] = (*v32 * *v10) - v41;
    *v26 = result.n128_u64[0];
    v34 = (a3 + v12 + 12);
    if (v34 < a3)
    {
      goto LABEL_26;
    }

    v35 = a3 + v12 + 16;
    if (v35 > v39 || v34 > v35)
    {
      goto LABEL_26;
    }

    result.n128_f32[0] = result.n128_f64[0];
    *v34 = result.n128_u32[0];
    v13 += 4;
    v12 += 16;
    v11 += 2;
  }

  while (v13 < 0x24);
  if (a5)
  {
    result = *(a3 + 120);
    v36 = *(a3 + 136);
    *(__A + 4) = *(a3 + 152);
    *__A = result;
    *(__A + 1) = v36;
    if (__A + 10 < __A)
    {
LABEL_26:
      __break(0x5519u);
    }
  }

  return result;
}

float *ol_ltp(unsigned int a1, uint64_t a2, uint64_t a3, int *a4, float **a5, int *a6, __int16 *a7, float *a8, uint64_t a9, int a10, __int16 a11)
{
  v11 = a4;
  v114 = *MEMORY[0x1E69E9840];
  if (a1 == 6)
  {
    v14 = *a5;
    v13 = a5[1];
    if (*a5 > v13 || (v13 - v14) < 5 || a5[2] > v14)
    {
      goto LABEL_148;
    }

    v15 = *a9;
    v16 = *(a9 + 8);
    v17 = *a9 > v16 || *(a9 + 16) > v15;
    if (v17 || (v16 - *a9) < 17)
    {
      goto LABEL_148;
    }

    v21 = *a3;
    v22 = *(a3 + 8);
    v23 = *(a3 + 16);
    memset(__b, 255, sizeof(__b));
    vDSP_conv(v21 - 143, 1, v21, 1, __b, 1, 0x7CuLL, 0x50uLL);
    v24 = *a6;
    v25 = a7;
    v26 = (v14 + 2);
    v27 = &v14[a11];
    if (v27)
    {
      if (v27 < v14 || (v27 + 1) > v26 || v27 > v27 + 1)
      {
        goto LABEL_148;
      }
    }

    if (*a7 > 0)
    {
      v28 = 143;
      if (v24 >= 143)
      {
        v24 = 143;
      }

      v29 = (266 - v24);
      v30 = -3.4028e38;
      v31 = 144;
      v32 = corrweight;
      v33 = __b;
      while (v33 >= __b)
      {
        if (v33 + 1 > &v108)
        {
          break;
        }

        if (v33 > v33 + 1)
        {
          break;
        }

        if (v32 + 250 < corrweight)
        {
          break;
        }

        if (v32 + 251 > mode_dep_parm)
        {
          break;
        }

        if (v32 + 250 > v32 + 251)
        {
          break;
        }

        v34 = &v32[v29];
        if (&v32[v29] < corrweight)
        {
          break;
        }

        v35 = &v32[v29 + 1];
        if (v35 > mode_dep_parm || v34 > v35)
        {
          break;
        }

        v36 = *v33++;
        v37 = (v36 * v32[250]) * *v34;
        --v31;
        if (v37 >= v30)
        {
          v28 = v31;
          v30 = v37;
        }

        --v32;
        if (v31 <= 0x14)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_148;
    }

    v28 = 143;
    v49 = &dword_19B332258;
    v50 = -3.4028e38;
    v51 = 144;
    v52 = __b;
    do
    {
      v53 = v52 + 1;
      v55 = v52 < __b || v53 > &v108 || v52 > v53;
      v56 = v49 + 1;
      if (v55 || v49 < corrweight || v56 > mode_dep_parm || v49 > v56)
      {
        goto LABEL_148;
      }

      v60 = *v49--;
      v61 = v60;
      v62 = *v52++;
      v63 = v62 * v61;
      --v51;
      if (v63 >= v50)
      {
        v28 = v51;
        v50 = v63;
      }
    }

    while (v51 > 0x14);
LABEL_73:
    v64 = 0;
    v65 = 0x3FFFFFFFFFFFFFFFLL * v28;
    v66 = 0.0;
    v67 = 0.0;
    do
    {
      v68 = &v21[v64];
      v69 = &v21[v65];
      v70 = &v21[v64 + 1];
      v72 = v70 <= v22 && v68 <= v70 && v68 >= v23;
      result = v69 + 1;
      if (!v72 || result > v22 || v69 > result || v69 < v23)
      {
        goto LABEL_148;
      }

      v66 = v66 + (*v68 * *v69);
      v67 = v67 + (*v69 * *v69);
      ++v64;
      ++v65;
    }

    while ((v64 * 4) != 320);
    if (a10)
    {
      v77 = *(a2 + 224) >> 1;
      *(a2 + 224) = v77;
      if (v67 > 0.0 && (v67 * 0.65) < v66)
      {
        *(a2 + 224) = v77 | 0x4000;
      }
    }

    v79 = v66 + (v67 * -0.4);
    *v27 = v79;
    v80 = v27 + 1;
    if (v27 < v14 || (v80 <= v26 ? (v81 = v27 > v80) : (v81 = 1), v81))
    {
LABEL_148:
      __break(0x5519u);
    }

    if (v79 <= 0.0)
    {
      *a6 = v28;
      v103 = a8;
      v102 = *a8 * 0.9;
    }

    else
    {
      v82 = (v15 + 5);
      v83 = 5;
      do
      {
        v84 = &v15[--v83];
        v86 = v84 - 1 < v15 || v84 > v82 || v84 - 1 > v84;
        v87 = v84 + 1;
        if (v86 || v87 > v82 || v84 > v87)
        {
          goto LABEL_148;
        }

        *v84 = *(v84 - 1);
      }

      while (v83 > 1);
      v90 = 0;
      v91 = 0;
      *v15 = v28;
      v113 = -1431655766;
      *&v92 = 0xAAAAAAAAAAAAAAAALL;
      *(&v92 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v111 = v92;
      v112 = v92;
      *&v109[3] = 0xAAAAAAAAAAAAAAAALL;
      *&v109[1] = 0xAAAAAAAAAAAAAAAALL;
      v93 = *v15;
      v109[0] = v15[4];
      v108 = v93;
      do
      {
        v94 = 0;
        v95 = -32767;
        do
        {
          v96 = v109[v94 - 4];
          v97 = v96 < v95;
          if (v96 > v95)
          {
            v95 = v109[v94 - 4];
          }

          if (!v97)
          {
            v91 = v94;
          }

          ++v94;
        }

        while (v94 != 5);
        result = &v109[v91 - 4];
        v98 = result + 1;
        if (result < &v108 || v98 > &v110 || result > v98)
        {
          goto LABEL_148;
        }

        *result = NAN;
        *(&v111 + v90++) = v91;
      }

      while (v90 != 5);
      v101 = &v15[SDWORD2(v111)];
      if (v101 < v15 || (v101 + 1) > v82 || v101 > v101 + 1)
      {
        goto LABEL_148;
      }

      *a6 = *v101;
      v102 = 1.0;
      v103 = a8;
    }

    *v103 = v102;
    *v25 = v102 >= 0.3;
    if (a10 && a11 == 1)
    {
      v106 = NAN;
      *&v111 = &__b[35] + 12;
      *(&v111 + 1) = &v108;
      *&v112 = __b;
      *&v108 = v21;
      *(&v108 + 1) = v22;
      *v109 = v23;
      result = hp_max(&v111, &v108, 80, 0x14u, &v106);
      *(a2 + 188) = v106 * 0.5;
    }

    v11 = a4;
  }

  else
  {
    v38 = *a5;
    v39 = a5[2];
    v40 = (*a5 + 1);
    if (v40 > a5[1] || v38 > v40 || v38 < v39)
    {
      goto LABEL_148;
    }

    *v38 = 0.0;
    v43 = *a5 + 1;
    v44 = (*a5 + 2);
    v45 = v44 > a5[1] || v43 > v44;
    if (v45 || v43 < v39)
    {
      goto LABEL_148;
    }

    *v43 = 0;
    if (a1 > 1)
    {
      __b[0] = *a3;
      *&__b[1] = *(a3 + 16);
      if (a1 > 5)
      {
        v47 = 18;
      }

      else
      {
        v47 = 20;
      }

      v48 = 80;
    }

    else
    {
      __b[0] = *a3;
      *&__b[1] = *(a3 + 16);
      v47 = 20;
      v48 = 160;
    }

    result = Pitch_ol(a1, a2, __b, v47, v48, a10, a11);
    v28 = result;
  }

  *v11 = v28;
  return result;
}

double subframePreProc(int a1, unint64_t *a2, __int128 *a3, __int128 *a4, uint64_t a5, float *a6, float *__A, unint64_t *a8, unint64_t *a9, unint64_t a10, unint64_t a11, _OWORD *a12, unint64_t *a13)
{
  v71 = *MEMORY[0x1E69E9840];
  *&v70[36] = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *&v70[20] = v13;
  *&v70[4] = v13;
  *&v69[12] = v13;
  v68 = v13;
  *v69 = v13;
  v14 = &gamma1;
  if ((a1 & 0xFFFFFFFE) == 6)
  {
    v15 = &gamma2;
  }

  else
  {
    v15 = &gamma1_12k2;
  }

  if ((a1 & 0xFFFFFFFE) == 6)
  {
    v14 = &gamma1_12k2;
  }

  v30 = v15 >= v14;
  v16 = v15 - v14;
  if (!v30)
  {
    goto LABEL_52;
  }

  if (v16 < 37)
  {
    goto LABEL_52;
  }

  v17 = *a2;
  v18 = a2[1];
  if (*a2 > v18 || a2[2] > v17 || (v18 - v17) <= 40)
  {
    goto LABEL_52;
  }

  v24 = *v17;
  *v70 = *v17;
  v25 = 1;
  v26 = v14;
  do
  {
    if (v26 < v14 || v26 >= v26 + 1)
    {
      goto LABEL_52;
    }

    v27 = *v26++;
    *&v70[4 * v25] = *&v17[v25] * v27;
    ++v25;
  }

  while (v25 != 11);
  LODWORD(v68) = v24;
  v28 = 1;
  v29 = &gamma2;
  do
  {
    v30 = v29 < &gamma2 || v29 >= v29 + 1;
    if (v30)
    {
      goto LABEL_52;
    }

    v31 = *v29++;
    *&v69[4 * v28 - 16] = *&v17[v28] * v31;
    ++v28;
  }

  while (v28 != 11);
  v32 = *a8;
  v33 = a8[1];
  v30 = v33 >= *a8;
  v34 = v33 - *a8;
  if (!v30 || a8[2] > v32 || v34 < 0x2C || (v35 = *v70, v36 = *&v70[16], *(v32 + 28) = *&v70[28], *v32 = v35, v32[1] = v36, v32 >= (v32 + 44)) || (v37 = *a8, v38 = a8[1], v30 = v38 >= *a8, v39 = v38 - *a8, !v30) || a8[2] > v37 || v39 < 157 || (v40 = *a3, v41 = *(a3 + 1), *a3 > v41) || *(a3 + 2) > v40 || (v41 - v40) < 41 || (Syn_filt_235(v40, v37, a10, __A, 0), Syn_filt_235(&v68, a10, a10, __A, 0), v65 = a12, v66 = (a12 + 10), v67 = a12, v63 = *a3, v64 = *(a3 + 2), v61 = *a4, v62 = *(a4 + 2), Residu(&v63, &v61, &v65), v42 = *a9, v43 = a9[1], v30 = v43 >= *a9, v44 = v43 - *a9, !v30) || a9[2] > v42 || v44 < 0xA0 || (v45 = a12[1], *v42 = *a12, v42[1] = v45, v46 = a12[2], v47 = a12[3], v48 = a12[5], v42[4] = a12[4], v42[5] = v48, v42[2] = v46, v42[3] = v47, v49 = a12[6], v50 = a12[7], v51 = a12[9], v42[8] = a12[8], v42[9] = v51, v42[6] = v49, v42[7] = v50, v42 >= v42 + 10) || (v52 = *a5, v53 = *(a5 + 8), *a5 > v53) || (v53 - v52) < 37 || *(a5 + 16) > v52 || (v54 = *a13, v55 = a13[1], *a13 > v55) || a13[2] > v54 || (v55 - v54) < 157 || (v56 = *a9, v57 = a9[1], *a9 > v57) || a9[2] > v56 || (v57 - v56) < 157 || (v58 = *a3, v59 = *(a3 + 1), *a3 > v59) || *(a3 + 2) > v58 || (v59 - v58) < 41)
  {
LABEL_52:
    __break(0x5519u);
  }

  Syn_filt_235(v58, v56, v54, v52, 0);
  v65 = v70;
  v66 = &v71;
  v67 = v70;
  *&v63 = a11;
  *(&v63 + 1) = a11 + 160;
  v64 = a11;
  v61 = *a13;
  v62 = a13[2];
  Residu(&v65, &v61, &v63);
  *&result = Syn_filt_235(&v68, a11, a11, a6, 0).n128_u64[0];
  return result;
}

float *searchFrac(int *a1, int *a2, int a3, uint64_t a4, int a5)
{
  v19 = (*a4 + 4 * *a1);
  v20 = *(a4 + 8);
  result = Interpol_3or6(&v19, *a2, a5);
  v12 = *a2;
  v13 = a3 - *a2;
  if (a3 > *a2)
  {
    v14 = v11;
    v15 = v12 + 1;
    do
    {
      v19 = (*a4 + 4 * *a1);
      v20 = *(a4 + 8);
      result = Interpol_3or6(&v19, v15, a5);
      if (v16 > v14)
      {
        *a2 = v15;
        v14 = v16;
      }

      ++v15;
      --v13;
    }

    while (v13);
    v12 = *a2;
  }

  if (!a5)
  {
    if (v12 != -3)
    {
      return result;
    }

    v17 = -1;
    v18 = 3;
    goto LABEL_14;
  }

  if (v12 == -2)
  {
    *a2 = 1;
    --*a1;
    v12 = *a2;
  }

  if (v12 == 2)
  {
    v17 = 1;
    v18 = -1;
LABEL_14:
    *a2 = v18;
    *a1 += v17;
  }

  return result;
}

unint64_t q_gain_pitch(unint64_t result, float *a2, void *a3, void *a4, float a5)
{
  v5 = 0;
  v6 = fabsf(*a2);
  for (i = 1; i != 16; ++i)
  {
    v8 = *(&qua_gain_pitch_246 + i);
    v22 = v8 > a5;
    v9 = vabds_f32(*a2, v8);
    if (!v22 && v9 < v6)
    {
      v5 = i;
      v6 = v9;
    }
  }

  if (result == 5)
  {
    v11 = qua_gain_pitch_MR122;
    if (!v5)
    {
      v15 = 0;
      goto LABEL_21;
    }

    if (v5 == 15)
    {
LABEL_16:
      v15 = v5 - 2;
      goto LABEL_21;
    }

    v12 = &qua_gain_pitch_246 + 4 * v5;
    v13 = (v12 + 4);
    if (v12 + 4 >= &qua_gain_pitch_246)
    {
      v14 = v12 + 8;
      if (v14 <= qua_gain_pitch_MR122 && v13 <= v14)
      {
        if (*v13 > a5)
        {
          goto LABEL_16;
        }

        v15 = v5 - 1;
LABEL_21:
        v18 = 0;
        v19 = a4[2];
        v20 = &qua_gain_pitch_246 + 4 * v15;
        while (1)
        {
          v21 = (*a4 + v18);
          v22 = (v21 + 1) > a4[1] || v21 > v21 + 1;
          if (v22 || v21 < v19)
          {
            break;
          }

          *v21 = v15;
          v24 = &v20[v18];
          if (&v20[v18] < &qua_gain_pitch_246)
          {
            break;
          }

          if (v24 + 4 > qua_gain_pitch_MR122)
          {
            break;
          }

          if (v24 > v24 + 4)
          {
            break;
          }

          result = a3[1];
          v25 = (*a3 + v18);
          if ((v25 + 1) > result || v25 > v25 + 1 || v25 < a3[2])
          {
            break;
          }

          *v25 = *v24;
          v18 += 4;
          ++v15;
          if (v18 == 12)
          {
            v16 = &qua_gain_pitch_246 + 4 * v5;
            if (v16 < &qua_gain_pitch_246)
            {
              break;
            }

            v17 = v16 + 4;
            goto LABEL_39;
          }
        }
      }
    }
  }

  else
  {
    v16 = &qua_gain_pitch_MR122[4 * v5];
    if (v16 >= qua_gain_pitch_MR122)
    {
      v17 = v16 + 4;
      v11 = &startPos_244;
LABEL_39:
      if (v17 <= v11 && v16 <= v17)
      {
        *a2 = *v16;
        return v5;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t cbsearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int16x4_t **a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v1466 = v15;
  v1467 = v14;
  v17 = v16;
  v19 = v18;
  v1448 = v20;
  v22 = v21;
  *&v1579 = *MEMORY[0x1E69E9840];
  if (v9 <= 2)
  {
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
LABEL_1411:
        v823 = *a9;
        v822 = a9[1];
        if (*a9 > v822)
        {
          goto LABEL_2658;
        }

        if (v822 - v823 < 19 || a9[2] > v823)
        {
          goto LABEL_2658;
        }

        v826 = *v11;
        v825 = *(v11 + 8);
        v827 = *(v11 + 16);
        memset(__b, 255, sizeof(__b));
        *&v828 = -1;
        *(&v828 + 1) = -1;
        v1566 = v828;
        v1567 = v828;
        v1564 = v828;
        v1565 = v828;
        v1562 = v828;
        v1563 = v828;
        v1560 = v828;
        v1561 = v828;
        v1558 = v828;
        v1559 = v828;
        v1556 = v828;
        v1557 = v828;
        v1554 = v828;
        v1555 = v828;
        v1552 = v828;
        v1553 = v828;
        v1550 = v828;
        v1551 = v828;
        v1548 = v828;
        v1549 = v828;
        v1546 = 0xAAAAAAAAAAAAAAAALL;
        *&v828 = 0xAAAAAAAAAAAAAAAALL;
        *(&v828 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v1544 = v828;
        v1545 = v828;
        memset(v1541, 170, 20);
        if (v17 <= 1.0)
        {
          v829 = v17;
        }

        else
        {
          v829 = 1.0;
        }

        v831 = v829 != 0.0 && v1448 < 40;
        v1438 = v831;
        if (v831)
        {
          v832 = v1448 - 40;
          v833 = &v826[v1448];
          v834 = v826;
          do
          {
            v836 = (v834 + 1) <= v825 && v834 <= v834 + 1 && v834 >= v827;
            v837 = v833 + 1;
            if (!v836 || v837 > v825 || v833 > v837 || v833 < v827)
            {
              goto LABEL_2658;
            }

            v841 = *v834++;
            *v833 = *v833 + (v841 * v829);
            ++v833;
            _CF = __CFADD__(v832++, 1);
          }

          while (!_CF);
        }

        if (v825 < v826)
        {
          goto LABEL_2658;
        }

        if (v827 > v826)
        {
          goto LABEL_2658;
        }

        if ((v825 - v826) < 157)
        {
          goto LABEL_2658;
        }

        v1441 = v827;
        v1443 = v825;
        v1445 = v823;
        cor_h_x(v826, v22, &v1558);
        set_sign12k2(&v1558, v13, &v1548, v1541, 5, &v1544, 5, 10);
        v1440 = v826;
        cor_h(v826, &v1548, __b);
        *&v842 = -1;
        *(&v842 + 1) = -1;
        v1578 = v842;
        v1577 = v842;
        v1576 = v842;
        v1575 = v842;
        v1574 = v842;
        v1573 = v842;
        v1572 = v842;
        v1571 = v842;
        v1570 = v842;
        v1569 = v842;
        v843 = &v1541[4 * v1544];
        if (v843 < v1541 || v843 + 1 > &v1541[20] || v843 > v843 + 1)
        {
          goto LABEL_2658;
        }

        v844 = 0;
        *&v1543[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v845 = 0xAAAAAAAAAAAAAAAALL;
        *(&v845 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v1543 = v845;
        *&v1543[16] = v845;
        v846 = *v843;
        v847 = xmmword_19B0A5850;
        v848 = vdupq_n_s64(2uLL);
        v849 = vdupq_n_s64(0xAuLL);
        do
        {
          if (vmovn_s64(vcgtq_u64(v849, v847)).u8[0])
          {
            *&v1543[4 * v844] = v844;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v847)).i32[1])
          {
            *&v1543[4 * v844 + 4] = v844 + 1;
          }

          v844 += 2;
          v847 = vaddq_s64(v847, v848);
        }

        while (v844 != 10);
        v1501 = 40 * v846;
        v850 = &__b[41 * v846];
        v851 = &v1558 + 4 * v846;
        v852 = v851 + 4 > __b || v851 > v851 + 4;
        v1451 = &v1558 + v846;
        v1454 = &__b[41 * v846];
        v854 = !v852 && v851 >= &v1558;
        v1465 = v854;
        v857 = v850 + 1 <= &v1569 && v850 <= v850 + 1 && v850 >= __b;
        v1462 = v857;
        v1459 = &__b[40 * v846];
        v1447 = v846;
        v858 = 1;
        v859 = 1.0;
        v860 = -1.0;
        do
        {
          v1479 = v858;
          v1476 = DWORD1(v1544);
          v861 = &v1541[4 * SDWORD1(v1544)];
          v862 = v861 + 1;
          v864 = v861 < v1541 || v862 > &v1541[20] || v861 > v862;
          if (v864 || !v1465)
          {
            goto LABEL_2658;
          }

          v1490 = *v861;
          v865 = &v1558 + v1490;
          v866 = v865 + 1;
          v867 = v865 < &v1558 || v866 > __b;
          v868 = v867 || v865 > v866;
          if (v868 || !v1462)
          {
            goto LABEL_2658;
          }

          v869 = &__b[40 * v1490];
          v870 = &v869[v1490];
          v871 = (v870 + 1);
          v872 = v870 < v869 || v871 > (v869 + 40);
          v873 = v872 || v870 > v871;
          v874 = &v1459[v1490];
          v875 = (v874 + 1);
          v876 = !v873 && v874 >= v1459;
          v877 = !v876 || v875 > (v1459 + 40);
          if (v877 || v874 > v875)
          {
            goto LABEL_2658;
          }

          v1535 = HIDWORD(v1544);
          v879 = &__b[41 * HIDWORD(v1544)];
          if (v879 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v879 > v879 + 1)
          {
            goto LABEL_2658;
          }

          v880 = &__b[HIDWORD(v1544) + v1501];
          if (v880 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v880 > v880 + 1)
          {
            goto LABEL_2658;
          }

          v881 = &__b[40 * v1490 + HIDWORD(v1544)];
          if (v881 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v881 > v881 + 1)
          {
            goto LABEL_2658;
          }

          v882 = &v1569 + SHIDWORD(v1544);
          if (v882 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 1 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v882 > v882 + 1)
          {
            goto LABEL_2658;
          }

          v1529 = DWORD2(v1544);
          v1524 = v1545;
          v883 = DWORD1(v1545);
          v1518 = DWORD2(v1545);
          v884 = HIDWORD(v1545);
          v1512 = v1546;
          v1539 = HIDWORD(v1546);
          v885 = *v1451;
          v886 = *v865;
          v887 = *v1454;
          v888 = *v870;
          v889 = *v874;
          *v882 = *v879 + ((*v880 + *v881) * 2.0);
          v890 = v879 + 205;
          if (v879 + 205 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 206 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v890 > v879 + 206)
          {
            goto LABEL_2658;
          }

          v891 = v880 + 5;
          if (v880 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v891 > v880 + 6)
          {
            goto LABEL_2658;
          }

          v892 = v881 + 5;
          if (v881 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v892 > v881 + 6)
          {
            goto LABEL_2658;
          }

          v893 = v882 + 5;
          if (v882 + 5 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 6 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v893 > v882 + 6)
          {
            goto LABEL_2658;
          }

          *v893 = *v890 + ((*v891 + *v892) * 2.0);
          v894 = v879 + 410;
          if (v879 + 410 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 411 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v894 > v879 + 411)
          {
            goto LABEL_2658;
          }

          v895 = v880 + 10;
          if (v880 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v895 > v880 + 11)
          {
            goto LABEL_2658;
          }

          v896 = v881 + 10;
          if (v881 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v896 > v881 + 11)
          {
            goto LABEL_2658;
          }

          v897 = v882 + 10;
          if (v882 + 10 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 11 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v897 > v882 + 11)
          {
            goto LABEL_2658;
          }

          *v897 = *v894 + ((*v895 + *v896) * 2.0);
          v898 = v879 + 615;
          if (v879 + 615 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 616 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v898 > v879 + 616)
          {
            goto LABEL_2658;
          }

          v899 = v880 + 15;
          if (v880 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v899 > v880 + 16)
          {
            goto LABEL_2658;
          }

          v900 = v881 + 15;
          if (v881 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v900 > v881 + 16)
          {
            goto LABEL_2658;
          }

          v901 = v882 + 15;
          if (v882 + 15 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 16 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v901 > v882 + 16)
          {
            goto LABEL_2658;
          }

          *v901 = *v898 + ((*v899 + *v900) * 2.0);
          v902 = v879 + 820;
          if (v879 + 820 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 821 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v902 > v879 + 821)
          {
            goto LABEL_2658;
          }

          v903 = v880 + 20;
          if (v880 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v903 > v880 + 21)
          {
            goto LABEL_2658;
          }

          v904 = v881 + 20;
          if (v881 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v904 > v881 + 21)
          {
            goto LABEL_2658;
          }

          v905 = v882 + 20;
          if (v882 + 20 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 21 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v905 > v882 + 21)
          {
            goto LABEL_2658;
          }

          *v905 = *v902 + ((*v903 + *v904) * 2.0);
          v906 = v879 + 1025;
          if (v879 + 1025 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 1026 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v906 > v879 + 1026)
          {
            goto LABEL_2658;
          }

          v907 = v880 + 25;
          if (v880 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v907 > v880 + 26)
          {
            goto LABEL_2658;
          }

          v908 = v881 + 25;
          if (v881 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v908 > v881 + 26)
          {
            goto LABEL_2658;
          }

          v909 = v882 + 25;
          if (v882 + 25 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 26 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v909 > v882 + 26)
          {
            goto LABEL_2658;
          }

          *v909 = *v906 + ((*v907 + *v908) * 2.0);
          v910 = v879 + 1230;
          if (v879 + 1230 < __b)
          {
            goto LABEL_2658;
          }

          if (v879 + 1231 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v910 > v879 + 1231)
          {
            goto LABEL_2658;
          }

          v911 = v880 + 30;
          if (v880 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v911 > v880 + 31)
          {
            goto LABEL_2658;
          }

          v912 = v881 + 30;
          if (v881 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v912 > v881 + 31)
          {
            goto LABEL_2658;
          }

          v913 = v882 + 30;
          if (v882 + 30 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v882 + 31 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v913 > v882 + 31)
          {
            goto LABEL_2658;
          }

          *v913 = *v910 + ((*v911 + *v912) * 2.0);
          v914 = v879 + 1435;
          if (v879 + 1435 < __b)
          {
            goto LABEL_2658;
          }

          v915 = v879 + 1436;
          if (v915 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v914 > v915)
          {
            goto LABEL_2658;
          }

          v916 = v880 + 35;
          if (v880 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v880 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v916 > v880 + 36)
          {
            goto LABEL_2658;
          }

          v917 = v881 + 35;
          if (v881 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v881 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v917 > v881 + 36)
          {
            goto LABEL_2658;
          }

          v918 = v882 + 35;
          if (v882 + 35 < &v1569 || v882 + 36 > &v1579 || v918 > v882 + 36)
          {
            goto LABEL_2658;
          }

          v919 = v885 + v886;
          v920 = (v887 + v888) + (v889 * 2.0);
          *v918 = *v914 + ((*v916 + *v917) * 2.0);
          v921 = &__b[v1529 + v1501];
          v1498 = 40 * v1490;
          v922 = &__b[(v1529 + 40 * v1490)];
          v923 = &__b[41 * v1529];
          v924 = &__b[v1535 + 40 * v1529];
          v925 = &v1558 + v1529;
          v926 = &v1558 + 4 * v1535;
          v927 = v1535 << 16;
          v928 = 0.0;
          v929 = -1.0;
          v930 = 1.0;
          do
          {
            v931 = v925 + 1;
            v933 = v925 < &v1558 || v931 > __b || v925 > v931;
            if (v933 || v923 < __b || v923 + 1 > &v1569 || v923 > v923 + 1 || v921 < __b || v921 + 1 > &v1569 || v921 > v921 + 1 || v922 < __b || v922 + 1 > &v1569 || v922 > v922 + 1)
            {
              goto LABEL_2658;
            }

            v934 = 0;
            v936 = (v920 + *v923) + ((*v921 + *v922) * 2.0);
            v937 = v927;
            do
            {
              v938 = &v926[v934 * 4];
              if (&v926[v934 * 4] < &v1558)
              {
                goto LABEL_2658;
              }

              if (v938 + 1 > __b)
              {
                goto LABEL_2658;
              }

              if (v938 > v938 + 1)
              {
                goto LABEL_2658;
              }

              v939 = &v882[v934];
              if (&v882[v934] < &v1569)
              {
                goto LABEL_2658;
              }

              v940 = &v882[v934 + 1];
              if (v940 > &v1579)
              {
                goto LABEL_2658;
              }

              if (v939 > v940)
              {
                goto LABEL_2658;
              }

              v941 = &v924[v934];
              if (&v924[v934] < __b)
              {
                goto LABEL_2658;
              }

              v942 = &v924[v934 + 1];
              if (v942 > &v1569 || v941 > v942)
              {
                goto LABEL_2658;
              }

              v935 = v919 + *v925;
              v943 = v935 + *v938;
              if ((v930 * (v943 * v943)) > (v929 * ((v936 + *v939) + (*v941 * 2.0))))
              {
                v1535 = v937 >> 16;
                v1529 = ((v925 - &v1558) >> 2);
                v930 = (v936 + *v939) + (*v941 * 2.0);
                v929 = v943 * v943;
                v928 = v935 + *v938;
              }

              v934 += 5;
              v937 += 327680;
            }

            while (&v926[v934 * 4] < &v1567 + 12);
            v925 += 5;
            v921 += 5;
            v922 += 5;
            v923 += 205;
            v924 += 200;
          }

          while (v925 <= &v1567 + 3);
          v944 = &__b[41 * v883];
          if (v944 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v944 > v944 + 1)
          {
            goto LABEL_2658;
          }

          v945 = &__b[v883 + v1501];
          if (v945 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v945 > v945 + 1)
          {
            goto LABEL_2658;
          }

          v946 = &__b[v883 + v1498];
          if (v946 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v946 > v946 + 1)
          {
            goto LABEL_2658;
          }

          v947 = &__b[v883 + 40 * v1529];
          if (v947 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v947 > v947 + 1)
          {
            goto LABEL_2658;
          }

          v948 = &__b[40 * v1535 + v883];
          if (v948 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v948 > v948 + 1)
          {
            goto LABEL_2658;
          }

          v949 = &v1569 + v883;
          if (v949 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 1 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v949 > v949 + 1)
          {
            goto LABEL_2658;
          }

          *v949 = *v944 + ((((*v945 + *v946) + *v947) + *v948) * 2.0);
          v950 = v944 + 205;
          if (v944 + 205 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 206 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v950 > v944 + 206)
          {
            goto LABEL_2658;
          }

          v951 = v945 + 5;
          if (v945 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v951 > v945 + 6)
          {
            goto LABEL_2658;
          }

          v952 = v946 + 5;
          if (v946 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v952 > v946 + 6)
          {
            goto LABEL_2658;
          }

          v953 = v947 + 5;
          if (v947 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v953 > v947 + 6)
          {
            goto LABEL_2658;
          }

          v954 = v948 + 5;
          if (v948 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v954 > v948 + 6)
          {
            goto LABEL_2658;
          }

          v955 = v949 + 5;
          if (v949 + 5 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 6 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v955 > v949 + 6)
          {
            goto LABEL_2658;
          }

          *v955 = *v950 + ((((*v951 + *v952) + *v953) + *v954) * 2.0);
          v956 = v944 + 410;
          if (v944 + 410 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 411 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v956 > v944 + 411)
          {
            goto LABEL_2658;
          }

          v957 = v945 + 10;
          if (v945 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v957 > v945 + 11)
          {
            goto LABEL_2658;
          }

          v958 = v946 + 10;
          if (v946 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v958 > v946 + 11)
          {
            goto LABEL_2658;
          }

          v959 = v947 + 10;
          if (v947 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v959 > v947 + 11)
          {
            goto LABEL_2658;
          }

          v960 = v948 + 10;
          if (v948 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v960 > v948 + 11)
          {
            goto LABEL_2658;
          }

          v961 = v949 + 10;
          if (v949 + 10 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 11 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v961 > v949 + 11)
          {
            goto LABEL_2658;
          }

          *v961 = *v956 + ((((*v957 + *v958) + *v959) + *v960) * 2.0);
          v962 = v944 + 615;
          if (v944 + 615 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 616 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v962 > v944 + 616)
          {
            goto LABEL_2658;
          }

          v963 = v945 + 15;
          if (v945 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v963 > v945 + 16)
          {
            goto LABEL_2658;
          }

          v964 = v946 + 15;
          if (v946 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v964 > v946 + 16)
          {
            goto LABEL_2658;
          }

          v965 = v947 + 15;
          if (v947 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v965 > v947 + 16)
          {
            goto LABEL_2658;
          }

          v966 = v948 + 15;
          if (v948 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v966 > v948 + 16)
          {
            goto LABEL_2658;
          }

          v967 = v949 + 15;
          if (v949 + 15 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 16 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v967 > v949 + 16)
          {
            goto LABEL_2658;
          }

          *v967 = *v962 + ((((*v963 + *v964) + *v965) + *v966) * 2.0);
          v968 = v944 + 820;
          if (v944 + 820 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 821 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v968 > v944 + 821)
          {
            goto LABEL_2658;
          }

          v969 = v945 + 20;
          if (v945 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v969 > v945 + 21)
          {
            goto LABEL_2658;
          }

          v970 = v946 + 20;
          if (v946 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v970 > v946 + 21)
          {
            goto LABEL_2658;
          }

          v971 = v947 + 20;
          if (v947 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v971 > v947 + 21)
          {
            goto LABEL_2658;
          }

          v972 = v948 + 20;
          if (v948 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v972 > v948 + 21)
          {
            goto LABEL_2658;
          }

          v973 = v949 + 20;
          if (v949 + 20 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 21 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v973 > v949 + 21)
          {
            goto LABEL_2658;
          }

          *v973 = *v968 + ((((*v969 + *v970) + *v971) + *v972) * 2.0);
          v974 = v944 + 1025;
          if (v944 + 1025 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 1026 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v974 > v944 + 1026)
          {
            goto LABEL_2658;
          }

          v975 = v945 + 25;
          if (v945 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v975 > v945 + 26)
          {
            goto LABEL_2658;
          }

          v976 = v946 + 25;
          if (v946 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v976 > v946 + 26)
          {
            goto LABEL_2658;
          }

          v977 = v947 + 25;
          if (v947 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v977 > v947 + 26)
          {
            goto LABEL_2658;
          }

          v978 = v948 + 25;
          if (v948 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v978 > v948 + 26)
          {
            goto LABEL_2658;
          }

          v979 = v949 + 25;
          if (v949 + 25 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 26 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v979 > v949 + 26)
          {
            goto LABEL_2658;
          }

          *v979 = *v974 + ((((*v975 + *v976) + *v977) + *v978) * 2.0);
          v980 = v944 + 1230;
          if (v944 + 1230 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 1231 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v980 > v944 + 1231)
          {
            goto LABEL_2658;
          }

          v981 = v945 + 30;
          if (v945 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v981 > v945 + 31)
          {
            goto LABEL_2658;
          }

          v982 = v946 + 30;
          if (v946 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v982 > v946 + 31)
          {
            goto LABEL_2658;
          }

          v983 = v947 + 30;
          if (v947 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v983 > v947 + 31)
          {
            goto LABEL_2658;
          }

          v984 = v948 + 30;
          if (v948 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v984 > v948 + 31)
          {
            goto LABEL_2658;
          }

          v985 = v949 + 30;
          if (v949 + 30 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v949 + 31 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v985 > v949 + 31)
          {
            goto LABEL_2658;
          }

          *v985 = *v980 + ((((*v981 + *v982) + *v983) + *v984) * 2.0);
          v986 = v944 + 1435;
          if (v944 + 1435 < __b)
          {
            goto LABEL_2658;
          }

          if (v944 + 1436 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v986 > v944 + 1436)
          {
            goto LABEL_2658;
          }

          v987 = v945 + 35;
          if (v945 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v945 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v987 > v945 + 36)
          {
            goto LABEL_2658;
          }

          v988 = v946 + 35;
          if (v946 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v946 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v988 > v946 + 36)
          {
            goto LABEL_2658;
          }

          v989 = v947 + 35;
          if (v947 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v947 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v989 > v947 + 36)
          {
            goto LABEL_2658;
          }

          v990 = v948 + 35;
          if (v948 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v948 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v990 > v948 + 36)
          {
            goto LABEL_2658;
          }

          v991 = v949 + 35;
          if (v949 + 35 < &v1569 || v949 + 36 > &v1579 || v991 > v949 + 36)
          {
            goto LABEL_2658;
          }

          v992 = *v986;
          v993 = &v1558 + v1524;
          *v991 = v992 + ((((*v987 + *v988) + *v989) + *v990) * 2.0);
          v994 = &v1558 + 4 * v883;
          v995 = &__b[v1524 + v1501];
          v996 = &__b[v1524 + v1498];
          v1496 = 40 * v1529;
          v997 = &__b[40 * v1529 + v1524];
          v1493 = 40 * v1535;
          v998 = &__b[40 * v1535 + v1524];
          v999 = &__b[41 * v1524];
          v1000 = &__b[v883 + 40 * v1524];
          v1001 = v883 << 16;
          v1002 = 0.0;
          v1003 = -1.0;
          v1004 = 1.0;
          do
          {
            v1005 = v993 + 1;
            v1007 = v993 < &v1558 || v1005 > __b || v993 > v1005;
            if (v1007 || v999 < __b || v999 + 1 > &v1569 || v999 > v999 + 1 || v995 < __b || v995 + 1 > &v1569 || v995 > v995 + 1 || v996 < __b || v996 + 1 > &v1569 || v996 > v996 + 1 || v997 < __b || v997 + 1 > &v1569 || v997 > v997 + 1 || v998 < __b || v998 + 1 > &v1569 || v998 > v998 + 1)
            {
              goto LABEL_2658;
            }

            v1008 = 0;
            v1010 = (v930 + *v999) + ((((*v995 + *v996) + *v997) + *v998) * 2.0);
            v1011 = v1001;
            do
            {
              v1012 = &v994[v1008 * 4];
              if (&v994[v1008 * 4] < &v1558)
              {
                goto LABEL_2658;
              }

              if (v1012 + 1 > __b)
              {
                goto LABEL_2658;
              }

              if (v1012 > v1012 + 1)
              {
                goto LABEL_2658;
              }

              v1013 = &v949[v1008];
              if (&v949[v1008] < &v1569)
              {
                goto LABEL_2658;
              }

              v1014 = &v949[v1008 + 1];
              if (v1014 > &v1579)
              {
                goto LABEL_2658;
              }

              if (v1013 > v1014)
              {
                goto LABEL_2658;
              }

              v1015 = &v1000[v1008];
              if (&v1000[v1008] < __b)
              {
                goto LABEL_2658;
              }

              v1016 = &v1000[v1008 + 1];
              if (v1016 > &v1569 || v1015 > v1016)
              {
                goto LABEL_2658;
              }

              v1009 = v928 + *v993;
              v1017 = v1009 + *v1012;
              if ((v1004 * (v1017 * v1017)) > (v1003 * ((v1010 + *v1013) + (*v1015 * 2.0))))
              {
                v883 = v1011 >> 16;
                v1524 = ((v993 - &v1558) >> 2);
                v1004 = (v1010 + *v1013) + (*v1015 * 2.0);
                v1003 = v1017 * v1017;
                v1002 = v1009 + *v1012;
              }

              v1008 += 5;
              v1011 += 327680;
            }

            while (&v994[v1008 * 4] <= &v1567 + 12);
            v995 += 5;
            v996 += 5;
            v997 += 5;
            v998 += 5;
            v999 += 205;
            v1000 += 200;
            v993 += 5;
          }

          while (v993 < &v1567 + 3);
          v1018 = &__b[41 * v884];
          if (v1018 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1018 > v1018 + 1)
          {
            goto LABEL_2658;
          }

          v1019 = &__b[v884 + v1501];
          if (v1019 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1019 > v1019 + 1)
          {
            goto LABEL_2658;
          }

          v1020 = &__b[v884 + v1498];
          if (v1020 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1020 > v1020 + 1)
          {
            goto LABEL_2658;
          }

          v1021 = &__b[v1496 + v884];
          if (v1021 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1021 > v1021 + 1)
          {
            goto LABEL_2658;
          }

          v1022 = &__b[v1493 + v884];
          if (v1022 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1022 > v1022 + 1)
          {
            goto LABEL_2658;
          }

          v1023 = &__b[v884 + 40 * v1524];
          if (v1023 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1023 > v1023 + 1)
          {
            goto LABEL_2658;
          }

          v1024 = &__b[40 * v883 + v884];
          if (v1024 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1024 > v1024 + 1)
          {
            goto LABEL_2658;
          }

          v1025 = &v1569 + v884;
          if (v1025 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 1 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1025 > v1025 + 1)
          {
            goto LABEL_2658;
          }

          *v1025 = *v1018 + ((((((*v1019 + *v1020) + *v1021) + *v1022) + *v1023) + *v1024) * 2.0);
          v1026 = v1018 + 205;
          if (v1018 + 205 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 206 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1026 > v1018 + 206)
          {
            goto LABEL_2658;
          }

          v1027 = v1019 + 5;
          if (v1019 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1027 > v1019 + 6)
          {
            goto LABEL_2658;
          }

          v1028 = v1020 + 5;
          if (v1020 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1028 > v1020 + 6)
          {
            goto LABEL_2658;
          }

          v1029 = v1021 + 5;
          if (v1021 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1029 > v1021 + 6)
          {
            goto LABEL_2658;
          }

          v1030 = v1022 + 5;
          if (v1022 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1030 > v1022 + 6)
          {
            goto LABEL_2658;
          }

          v1031 = v1023 + 5;
          if (v1023 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1031 > v1023 + 6)
          {
            goto LABEL_2658;
          }

          v1032 = v1024 + 5;
          if (v1024 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1032 > v1024 + 6)
          {
            goto LABEL_2658;
          }

          v1033 = v1025 + 5;
          if (v1025 + 5 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 6 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1033 > v1025 + 6)
          {
            goto LABEL_2658;
          }

          *v1033 = *v1026 + ((((((*v1027 + *v1028) + *v1029) + *v1030) + *v1031) + *v1032) * 2.0);
          v1034 = v1018 + 410;
          if (v1018 + 410 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 411 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1034 > v1018 + 411)
          {
            goto LABEL_2658;
          }

          v1035 = v1019 + 10;
          if (v1019 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1035 > v1019 + 11)
          {
            goto LABEL_2658;
          }

          v1036 = v1020 + 10;
          if (v1020 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1036 > v1020 + 11)
          {
            goto LABEL_2658;
          }

          v1037 = v1021 + 10;
          if (v1021 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1037 > v1021 + 11)
          {
            goto LABEL_2658;
          }

          v1038 = v1022 + 10;
          if (v1022 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1038 > v1022 + 11)
          {
            goto LABEL_2658;
          }

          v1039 = v1023 + 10;
          if (v1023 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1039 > v1023 + 11)
          {
            goto LABEL_2658;
          }

          v1040 = v1024 + 10;
          if (v1024 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1040 > v1024 + 11)
          {
            goto LABEL_2658;
          }

          v1041 = v1025 + 10;
          if (v1025 + 10 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 11 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1041 > v1025 + 11)
          {
            goto LABEL_2658;
          }

          *v1041 = *v1034 + ((((((*v1035 + *v1036) + *v1037) + *v1038) + *v1039) + *v1040) * 2.0);
          v1042 = v1018 + 615;
          if (v1018 + 615 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 616 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1042 > v1018 + 616)
          {
            goto LABEL_2658;
          }

          v1043 = v1019 + 15;
          if (v1019 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1043 > v1019 + 16)
          {
            goto LABEL_2658;
          }

          v1044 = v1020 + 15;
          if (v1020 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1044 > v1020 + 16)
          {
            goto LABEL_2658;
          }

          v1045 = v1021 + 15;
          if (v1021 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1045 > v1021 + 16)
          {
            goto LABEL_2658;
          }

          v1046 = v1022 + 15;
          if (v1022 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1046 > v1022 + 16)
          {
            goto LABEL_2658;
          }

          v1047 = v1023 + 15;
          if (v1023 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1047 > v1023 + 16)
          {
            goto LABEL_2658;
          }

          v1048 = v1024 + 15;
          if (v1024 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1048 > v1024 + 16)
          {
            goto LABEL_2658;
          }

          v1049 = v1025 + 15;
          if (v1025 + 15 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 16 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1049 > v1025 + 16)
          {
            goto LABEL_2658;
          }

          *v1049 = *v1042 + ((((((*v1043 + *v1044) + *v1045) + *v1046) + *v1047) + *v1048) * 2.0);
          v1050 = v1018 + 820;
          if (v1018 + 820 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 821 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1050 > v1018 + 821)
          {
            goto LABEL_2658;
          }

          v1051 = v1019 + 20;
          if (v1019 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1051 > v1019 + 21)
          {
            goto LABEL_2658;
          }

          v1052 = v1020 + 20;
          if (v1020 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1052 > v1020 + 21)
          {
            goto LABEL_2658;
          }

          v1053 = v1021 + 20;
          if (v1021 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1053 > v1021 + 21)
          {
            goto LABEL_2658;
          }

          v1054 = v1022 + 20;
          if (v1022 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1054 > v1022 + 21)
          {
            goto LABEL_2658;
          }

          v1055 = v1023 + 20;
          if (v1023 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1055 > v1023 + 21)
          {
            goto LABEL_2658;
          }

          v1056 = v1024 + 20;
          if (v1024 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1056 > v1024 + 21)
          {
            goto LABEL_2658;
          }

          v1057 = v1025 + 20;
          if (v1025 + 20 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 21 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1057 > v1025 + 21)
          {
            goto LABEL_2658;
          }

          *v1057 = *v1050 + ((((((*v1051 + *v1052) + *v1053) + *v1054) + *v1055) + *v1056) * 2.0);
          v1058 = v1018 + 1025;
          if (v1018 + 1025 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 1026 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1058 > v1018 + 1026)
          {
            goto LABEL_2658;
          }

          v1059 = v1019 + 25;
          if (v1019 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1059 > v1019 + 26)
          {
            goto LABEL_2658;
          }

          v1060 = v1020 + 25;
          if (v1020 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1060 > v1020 + 26)
          {
            goto LABEL_2658;
          }

          v1061 = v1021 + 25;
          if (v1021 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1061 > v1021 + 26)
          {
            goto LABEL_2658;
          }

          v1062 = v1022 + 25;
          if (v1022 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1062 > v1022 + 26)
          {
            goto LABEL_2658;
          }

          v1063 = v1023 + 25;
          if (v1023 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1063 > v1023 + 26)
          {
            goto LABEL_2658;
          }

          v1064 = v1024 + 25;
          if (v1024 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1064 > v1024 + 26)
          {
            goto LABEL_2658;
          }

          v1065 = v1025 + 25;
          if (v1025 + 25 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 26 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1065 > v1025 + 26)
          {
            goto LABEL_2658;
          }

          *v1065 = *v1058 + ((((((*v1059 + *v1060) + *v1061) + *v1062) + *v1063) + *v1064) * 2.0);
          v1066 = v1018 + 1230;
          if (v1018 + 1230 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 1231 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1066 > v1018 + 1231)
          {
            goto LABEL_2658;
          }

          v1067 = v1019 + 30;
          if (v1019 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1067 > v1019 + 31)
          {
            goto LABEL_2658;
          }

          v1068 = v1020 + 30;
          if (v1020 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1068 > v1020 + 31)
          {
            goto LABEL_2658;
          }

          v1069 = v1021 + 30;
          if (v1021 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1069 > v1021 + 31)
          {
            goto LABEL_2658;
          }

          v1070 = v1022 + 30;
          if (v1022 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1070 > v1022 + 31)
          {
            goto LABEL_2658;
          }

          v1071 = v1023 + 30;
          if (v1023 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1071 > v1023 + 31)
          {
            goto LABEL_2658;
          }

          v1072 = v1024 + 30;
          if (v1024 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1072 > v1024 + 31)
          {
            goto LABEL_2658;
          }

          v1073 = v1025 + 30;
          if (v1025 + 30 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1025 + 31 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1073 > v1025 + 31)
          {
            goto LABEL_2658;
          }

          *v1073 = *v1066 + ((((((*v1067 + *v1068) + *v1069) + *v1070) + *v1071) + *v1072) * 2.0);
          v1074 = v1018 + 1435;
          if (v1018 + 1435 < __b)
          {
            goto LABEL_2658;
          }

          if (v1018 + 1436 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1074 > v1018 + 1436)
          {
            goto LABEL_2658;
          }

          v1075 = v1019 + 35;
          if (v1019 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1019 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1075 > v1019 + 36)
          {
            goto LABEL_2658;
          }

          v1076 = v1020 + 35;
          if (v1020 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1020 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1076 > v1020 + 36)
          {
            goto LABEL_2658;
          }

          v1077 = v1021 + 35;
          if (v1021 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1021 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1077 > v1021 + 36)
          {
            goto LABEL_2658;
          }

          v1078 = v1022 + 35;
          if (v1022 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1022 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1078 > v1022 + 36)
          {
            goto LABEL_2658;
          }

          v1079 = v1023 + 35;
          if (v1023 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1023 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1079 > v1023 + 36)
          {
            goto LABEL_2658;
          }

          v1080 = v1024 + 35;
          if (v1024 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1024 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1080 > v1024 + 36)
          {
            goto LABEL_2658;
          }

          v1081 = v1025 + 35;
          if (v1025 + 35 < &v1569 || v1025 + 36 > &v1579 || v1081 > v1025 + 36)
          {
            goto LABEL_2658;
          }

          v1082 = *v1074;
          v1083 = &v1558 + v1518;
          v1084 = &v1558 + 4 * v884;
          *v1081 = v1082 + ((((((*v1075 + *v1076) + *v1077) + *v1078) + *v1079) + *v1080) * 2.0);
          v1085 = &__b[v1518 + v1501];
          v1086 = &__b[v1518 + v1498];
          v1087 = &__b[v1496 + v1518];
          v1088 = &__b[v1493 + v1518];
          v1486 = 40 * v1524;
          v1089 = &__b[40 * v1524 + v1518];
          v1483 = 40 * v883;
          v1090 = &__b[40 * v883 + v1518];
          v1091 = &__b[41 * v1518];
          v1092 = &__b[v884 + 40 * v1518];
          v1093 = v884 << 16;
          v1094 = 0.0;
          v1095 = -1.0;
          v1096 = 1.0;
          do
          {
            v1097 = v1083 + 1;
            v1099 = v1083 < &v1558 || v1097 > __b || v1083 > v1097;
            if (v1099 || v1091 < __b || v1091 + 1 > &v1569 || v1091 > v1091 + 1 || v1085 < __b || v1085 + 1 > &v1569 || v1085 > v1085 + 1 || v1086 < __b || v1086 + 1 > &v1569 || v1086 > v1086 + 1 || v1087 < __b || v1087 + 1 > &v1569 || v1087 > v1087 + 1 || v1088 < __b || v1088 + 1 > &v1569 || v1088 > v1088 + 1 || v1089 < __b || v1089 + 1 > &v1569 || v1089 > v1089 + 1 || v1090 < __b || v1090 + 1 > &v1569 || v1090 > v1090 + 1)
            {
              goto LABEL_2658;
            }

            v1100 = 0;
            v1102 = (v1004 + *v1091) + ((((((*v1085 + *v1086) + *v1087) + *v1088) + *v1089) + *v1090) * 2.0);
            v1103 = v1093;
            do
            {
              v1104 = &v1084[v1100 * 4];
              if (&v1084[v1100 * 4] < &v1558)
              {
                goto LABEL_2658;
              }

              if (v1104 + 1 > __b)
              {
                goto LABEL_2658;
              }

              if (v1104 > v1104 + 1)
              {
                goto LABEL_2658;
              }

              v1105 = &v1025[v1100];
              if (&v1025[v1100] < &v1569)
              {
                goto LABEL_2658;
              }

              v1106 = &v1025[v1100 + 1];
              if (v1106 > &v1579)
              {
                goto LABEL_2658;
              }

              if (v1105 > v1106)
              {
                goto LABEL_2658;
              }

              v1107 = &v1092[v1100];
              if (&v1092[v1100] < __b)
              {
                goto LABEL_2658;
              }

              v1108 = &v1092[v1100 + 1];
              if (v1108 > &v1569 || v1107 > v1108)
              {
                goto LABEL_2658;
              }

              v1101 = v1002 + *v1083;
              v1109 = v1101 + *v1104;
              if ((v1096 * (v1109 * v1109)) > (v1095 * ((v1102 + *v1105) + (*v1107 * 2.0))))
              {
                v884 = v1103 >> 16;
                v1518 = ((v1083 - &v1558) >> 2);
                v1096 = (v1102 + *v1105) + (*v1107 * 2.0);
                v1095 = v1109 * v1109;
                v1094 = v1101 + *v1104;
              }

              v1100 += 5;
              v1103 += 327680;
            }

            while (&v1084[v1100 * 4] <= &v1567 + 12);
            v1085 += 5;
            v1086 += 5;
            v1087 += 5;
            v1088 += 5;
            v1089 += 5;
            v1090 += 5;
            v1091 += 205;
            v1092 += 200;
            v1083 += 5;
          }

          while (v1083 < &v1567 + 3);
          v1507 = &__b[41 * v1539];
          if (v1507 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1507 > v1507 + 1)
          {
            goto LABEL_2658;
          }

          v1110 = &__b[v1539 + v1501];
          if (v1110 < __b)
          {
            goto LABEL_2658;
          }

          v1111 = &__b[v1539 + v1501];
          v1112 = v1110 + 1;
          if (v1112 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1111 > v1112)
          {
            goto LABEL_2658;
          }

          v1113 = &__b[v1539 + v1498];
          if (v1113 < __b)
          {
            goto LABEL_2658;
          }

          v1114 = &__b[v1539 + v1498];
          v1115 = v1113 + 1;
          if (v1115 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1114 > v1115)
          {
            goto LABEL_2658;
          }

          v1116 = &__b[v1496 + v1539];
          if (v1116 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1116 > v1116 + 1)
          {
            goto LABEL_2658;
          }

          v1117 = &__b[v1493 + v1539];
          if (v1117 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1117 > v1117 + 1)
          {
            goto LABEL_2658;
          }

          v1118 = &__b[v1486 + v1539];
          if (v1118 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1118 > v1118 + 1)
          {
            goto LABEL_2658;
          }

          v1119 = &__b[v1483 + v1539];
          if (v1119 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1119 > v1119 + 1)
          {
            goto LABEL_2658;
          }

          v1120 = &__b[v1539 + 40 * v1518];
          if (v1120 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1120 > v1120 + 1)
          {
            goto LABEL_2658;
          }

          v1121 = &__b[40 * v884 + v1539];
          if (v1121 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 1 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1121 > v1121 + 1)
          {
            goto LABEL_2658;
          }

          v1122 = &v1569 + v1539;
          if (v1122 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 1 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1122 > v1122 + 1)
          {
            goto LABEL_2658;
          }

          *v1122 = *v1507 + ((((((((*v1111 + *v1114) + *v1116) + *v1117) + *v1118) + *v1119) + *v1120) + *v1121) * 2.0);
          v1123 = v1507 + 205;
          if (v1507 + 205 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 206 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1123 > v1507 + 206)
          {
            goto LABEL_2658;
          }

          v1124 = v1111 + 5;
          if (v1111 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1124 > v1111 + 6)
          {
            goto LABEL_2658;
          }

          v1125 = v1114 + 5;
          if (v1114 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1125 > v1114 + 6)
          {
            goto LABEL_2658;
          }

          v1126 = v1116 + 5;
          if (v1116 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1126 > v1116 + 6)
          {
            goto LABEL_2658;
          }

          v1127 = v1117 + 5;
          if (v1117 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1127 > v1117 + 6)
          {
            goto LABEL_2658;
          }

          v1128 = v1118 + 5;
          if (v1118 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1128 > v1118 + 6)
          {
            goto LABEL_2658;
          }

          v1129 = v1119 + 5;
          if (v1119 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1129 > v1119 + 6)
          {
            goto LABEL_2658;
          }

          v1130 = v1120 + 5;
          if (v1120 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1130 > v1120 + 6)
          {
            goto LABEL_2658;
          }

          v1131 = v1121 + 5;
          if (v1121 + 5 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 6 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1131 > v1121 + 6)
          {
            goto LABEL_2658;
          }

          v1132 = v1122 + 5;
          if (v1122 + 5 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 6 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1132 > v1122 + 6)
          {
            goto LABEL_2658;
          }

          *v1132 = *v1123 + ((((((((*v1124 + *v1125) + *v1126) + *v1127) + *v1128) + *v1129) + *v1130) + *v1131) * 2.0);
          v1133 = v1507 + 410;
          if (v1507 + 410 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 411 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1133 > v1507 + 411)
          {
            goto LABEL_2658;
          }

          v1134 = v1111 + 10;
          if (v1111 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1134 > v1111 + 11)
          {
            goto LABEL_2658;
          }

          v1135 = v1114 + 10;
          if (v1114 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1135 > v1114 + 11)
          {
            goto LABEL_2658;
          }

          v1136 = v1116 + 10;
          if (v1116 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1136 > v1116 + 11)
          {
            goto LABEL_2658;
          }

          v1137 = v1117 + 10;
          if (v1117 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1137 > v1117 + 11)
          {
            goto LABEL_2658;
          }

          v1138 = v1118 + 10;
          if (v1118 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1138 > v1118 + 11)
          {
            goto LABEL_2658;
          }

          v1139 = v1119 + 10;
          if (v1119 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1139 > v1119 + 11)
          {
            goto LABEL_2658;
          }

          v1140 = v1120 + 10;
          if (v1120 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1140 > v1120 + 11)
          {
            goto LABEL_2658;
          }

          v1141 = v1121 + 10;
          if (v1121 + 10 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 11 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1141 > v1121 + 11)
          {
            goto LABEL_2658;
          }

          v1142 = v1122 + 10;
          if (v1122 + 10 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 11 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1142 > v1122 + 11)
          {
            goto LABEL_2658;
          }

          *v1142 = *v1133 + ((((((((*v1134 + *v1135) + *v1136) + *v1137) + *v1138) + *v1139) + *v1140) + *v1141) * 2.0);
          v1143 = v1507 + 615;
          if (v1507 + 615 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 616 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1143 > v1507 + 616)
          {
            goto LABEL_2658;
          }

          v1144 = v1111 + 15;
          if (v1111 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1144 > v1111 + 16)
          {
            goto LABEL_2658;
          }

          v1145 = v1114 + 15;
          if (v1114 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1145 > v1114 + 16)
          {
            goto LABEL_2658;
          }

          v1146 = v1116 + 15;
          if (v1116 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1146 > v1116 + 16)
          {
            goto LABEL_2658;
          }

          v1147 = v1117 + 15;
          if (v1117 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1147 > v1117 + 16)
          {
            goto LABEL_2658;
          }

          v1148 = v1118 + 15;
          if (v1118 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1148 > v1118 + 16)
          {
            goto LABEL_2658;
          }

          v1149 = v1119 + 15;
          if (v1119 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1149 > v1119 + 16)
          {
            goto LABEL_2658;
          }

          v1150 = v1120 + 15;
          if (v1120 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1150 > v1120 + 16)
          {
            goto LABEL_2658;
          }

          v1151 = v1121 + 15;
          if (v1121 + 15 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 16 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1151 > v1121 + 16)
          {
            goto LABEL_2658;
          }

          v1152 = v1122 + 15;
          if (v1122 + 15 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 16 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1152 > v1122 + 16)
          {
            goto LABEL_2658;
          }

          *v1152 = *v1143 + ((((((((*v1144 + *v1145) + *v1146) + *v1147) + *v1148) + *v1149) + *v1150) + *v1151) * 2.0);
          v1153 = v1507 + 820;
          if (v1507 + 820 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 821 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1153 > v1507 + 821)
          {
            goto LABEL_2658;
          }

          v1154 = v1111 + 20;
          if (v1111 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1154 > v1111 + 21)
          {
            goto LABEL_2658;
          }

          v1155 = v1114 + 20;
          if (v1114 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1155 > v1114 + 21)
          {
            goto LABEL_2658;
          }

          v1156 = v1116 + 20;
          if (v1116 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1156 > v1116 + 21)
          {
            goto LABEL_2658;
          }

          v1157 = v1117 + 20;
          if (v1117 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1157 > v1117 + 21)
          {
            goto LABEL_2658;
          }

          v1158 = v1118 + 20;
          if (v1118 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1158 > v1118 + 21)
          {
            goto LABEL_2658;
          }

          v1159 = v1119 + 20;
          if (v1119 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1159 > v1119 + 21)
          {
            goto LABEL_2658;
          }

          v1160 = v1120 + 20;
          if (v1120 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1160 > v1120 + 21)
          {
            goto LABEL_2658;
          }

          v1161 = v1121 + 20;
          if (v1121 + 20 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 21 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1161 > v1121 + 21)
          {
            goto LABEL_2658;
          }

          v1162 = v1122 + 20;
          if (v1122 + 20 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 21 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1162 > v1122 + 21)
          {
            goto LABEL_2658;
          }

          *v1162 = *v1153 + ((((((((*v1154 + *v1155) + *v1156) + *v1157) + *v1158) + *v1159) + *v1160) + *v1161) * 2.0);
          v1163 = v1507 + 1025;
          if (v1507 + 1025 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 1026 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1163 > v1507 + 1026)
          {
            goto LABEL_2658;
          }

          v1164 = v1111 + 25;
          if (v1111 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1164 > v1111 + 26)
          {
            goto LABEL_2658;
          }

          v1165 = v1114 + 25;
          if (v1114 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1165 > v1114 + 26)
          {
            goto LABEL_2658;
          }

          v1166 = v1116 + 25;
          if (v1116 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1166 > v1116 + 26)
          {
            goto LABEL_2658;
          }

          v1167 = v1117 + 25;
          if (v1117 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1167 > v1117 + 26)
          {
            goto LABEL_2658;
          }

          v1168 = v1118 + 25;
          if (v1118 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1168 > v1118 + 26)
          {
            goto LABEL_2658;
          }

          v1169 = v1119 + 25;
          if (v1119 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1169 > v1119 + 26)
          {
            goto LABEL_2658;
          }

          v1170 = v1120 + 25;
          if (v1120 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1170 > v1120 + 26)
          {
            goto LABEL_2658;
          }

          v1171 = v1121 + 25;
          if (v1121 + 25 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 26 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1171 > v1121 + 26)
          {
            goto LABEL_2658;
          }

          v1172 = v1122 + 25;
          if (v1122 + 25 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 26 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1172 > v1122 + 26)
          {
            goto LABEL_2658;
          }

          *v1172 = *v1163 + ((((((((*v1164 + *v1165) + *v1166) + *v1167) + *v1168) + *v1169) + *v1170) + *v1171) * 2.0);
          v1173 = v1507 + 1230;
          if (v1507 + 1230 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 1231 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1173 > v1507 + 1231)
          {
            goto LABEL_2658;
          }

          v1174 = v1111 + 30;
          if (v1111 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1174 > v1111 + 31)
          {
            goto LABEL_2658;
          }

          v1175 = v1114 + 30;
          if (v1114 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1175 > v1114 + 31)
          {
            goto LABEL_2658;
          }

          v1176 = v1116 + 30;
          if (v1116 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1176 > v1116 + 31)
          {
            goto LABEL_2658;
          }

          v1177 = v1117 + 30;
          if (v1117 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1177 > v1117 + 31)
          {
            goto LABEL_2658;
          }

          v1178 = v1118 + 30;
          if (v1118 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1178 > v1118 + 31)
          {
            goto LABEL_2658;
          }

          v1179 = v1119 + 30;
          if (v1119 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1179 > v1119 + 31)
          {
            goto LABEL_2658;
          }

          v1180 = v1120 + 30;
          if (v1120 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1180 > v1120 + 31)
          {
            goto LABEL_2658;
          }

          v1181 = v1121 + 30;
          if (v1121 + 30 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 31 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1181 > v1121 + 31)
          {
            goto LABEL_2658;
          }

          v1182 = v1122 + 30;
          if (v1122 + 30 < &v1569)
          {
            goto LABEL_2658;
          }

          if (v1122 + 31 > &v1579)
          {
            goto LABEL_2658;
          }

          if (v1182 > v1122 + 31)
          {
            goto LABEL_2658;
          }

          *v1182 = *v1173 + ((((((((*v1174 + *v1175) + *v1176) + *v1177) + *v1178) + *v1179) + *v1180) + *v1181) * 2.0);
          v1183 = v1507 + 1435;
          if (v1507 + 1435 < __b)
          {
            goto LABEL_2658;
          }

          if (v1507 + 1436 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1183 > v1507 + 1436)
          {
            goto LABEL_2658;
          }

          v1184 = v1111 + 35;
          if (v1111 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1111 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1184 > v1111 + 36)
          {
            goto LABEL_2658;
          }

          v1185 = v1114 + 35;
          if (v1114 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1114 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1185 > v1114 + 36)
          {
            goto LABEL_2658;
          }

          v1186 = v1116 + 35;
          if (v1116 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1116 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1186 > v1116 + 36)
          {
            goto LABEL_2658;
          }

          v1187 = v1117 + 35;
          if (v1117 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1117 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1187 > v1117 + 36)
          {
            goto LABEL_2658;
          }

          v1188 = v1118 + 35;
          if (v1118 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1118 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1188 > v1118 + 36)
          {
            goto LABEL_2658;
          }

          v1189 = v1119 + 35;
          if (v1119 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1119 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1189 > v1119 + 36)
          {
            goto LABEL_2658;
          }

          v1190 = v1120 + 35;
          if (v1120 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1120 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1190 > v1120 + 36)
          {
            goto LABEL_2658;
          }

          v1191 = v1121 + 35;
          if (v1121 + 35 < __b)
          {
            goto LABEL_2658;
          }

          if (v1121 + 36 > &v1569)
          {
            goto LABEL_2658;
          }

          if (v1191 > v1121 + 36)
          {
            goto LABEL_2658;
          }

          v1192 = v1122 + 35;
          if (v1122 + 35 < &v1569 || v1122 + 36 > &v1579 || v1192 > v1122 + 36)
          {
            goto LABEL_2658;
          }

          v1193 = (((((*v1184 + *v1185) + *v1186) + *v1187) + *v1188) + *v1189) + *v1190;
          v1194 = &v1558 + v1512;
          v1195 = &v1558 + 4 * v1539;
          v1196 = &__b[v1512 + v1501];
          *v1192 = *v1183 + ((v1193 + *v1191) * 2.0);
          v1197 = &__b[v1512 + v1498];
          v1198 = &__b[v1496 + v1512];
          v1199 = &__b[v1493 + v1512];
          v1200 = &__b[v1486 + v1512];
          v1201 = &__b[v1483 + v1512];
          v1202 = &__b[40 * v1518 + v1512];
          v1203 = &__b[40 * v884 + v1512];
          v1204 = &__b[41 * v1512];
          v1205 = &__b[v1539 + 40 * v1512];
          v1508 = v1539 << 16;
          v1206 = -1.0;
          v1207 = 1.0;
          do
          {
            v1208 = v1194 + 1;
            v1210 = v1194 < &v1558 || v1208 > __b || v1194 > v1208;
            if (v1210 || v1204 < __b || v1204 + 1 > &v1569 || v1204 > v1204 + 1 || v1196 < __b || v1196 + 1 > &v1569 || v1196 > v1196 + 1 || v1197 < __b || v1197 + 1 > &v1569 || v1197 > v1197 + 1 || v1198 < __b || v1198 + 1 > &v1569 || v1198 > v1198 + 1 || v1199 < __b || v1199 + 1 > &v1569 || v1199 > v1199 + 1 || v1200 < __b || v1200 + 1 > &v1569 || v1200 > v1200 + 1 || v1201 < __b || v1201 + 1 > &v1569 || v1201 > v1201 + 1 || v1202 < __b || v1202 + 1 > &v1569 || v1202 > v1202 + 1 || v1203 < __b || v1203 + 1 > &v1569 || v1203 > v1203 + 1)
            {
              goto LABEL_2658;
            }

            v1211 = 0;
            v1213 = (v1096 + *v1204) + ((((((((*v1196 + *v1197) + *v1198) + *v1199) + *v1200) + *v1201) + *v1202) + *v1203) * 2.0);
            v1214 = v1508;
            do
            {
              v1215 = &v1195[v1211 * 4];
              if (&v1195[v1211 * 4] < &v1558)
              {
                goto LABEL_2658;
              }

              if (v1215 + 1 > __b)
              {
                goto LABEL_2658;
              }

              if (v1215 > v1215 + 1)
              {
                goto LABEL_2658;
              }

              v1216 = &v1122[v1211];
              if (&v1122[v1211] < &v1569)
              {
                goto LABEL_2658;
              }

              v1217 = &v1122[v1211 + 1];
              if (v1217 > &v1579)
              {
                goto LABEL_2658;
              }

              if (v1216 > v1217)
              {
                goto LABEL_2658;
              }

              v1218 = &v1205[v1211];
              if (&v1205[v1211] < __b)
              {
                goto LABEL_2658;
              }

              v1219 = &v1205[v1211 + 1];
              if (v1219 > &v1569 || v1218 > v1219)
              {
                goto LABEL_2658;
              }

              v1212 = v1094 + *v1194;
              if ((v1207 * ((v1212 + *v1215) * (v1212 + *v1215))) > (v1206 * ((v1213 + *v1216) + (*v1218 * 2.0))))
              {
                v1539 = v1214 >> 16;
                v1512 = ((v1194 - &v1558) >> 2);
                v1207 = (v1213 + *v1216) + (*v1218 * 2.0);
                v1206 = (v1212 + *v1215) * (v1212 + *v1215);
              }

              v1211 += 5;
              v1214 += 327680;
            }

            while (&v1195[v1211 * 4] <= &v1567 + 12);
            v1196 += 5;
            v1197 += 5;
            v1198 += 5;
            v1199 += 5;
            v1200 += 5;
            v1201 += 5;
            v1202 += 5;
            v1203 += 5;
            v1204 += 205;
            v1205 += 200;
            v1194 += 5;
          }

          while (v1194 < &v1567 + 3);
          if ((v859 * v1206) > (v860 * v1207))
          {
            v1220.i64[0] = __PAIR64__(v1529, v1490);
            v1220.i64[1] = __PAIR64__(v1524, v1535);
            *&v1543[4] = vshrq_n_s32(vshlq_n_s32(v1220, 0x10uLL), 0x10uLL);
            v1220.i64[0] = __PAIR64__(v1518, v883);
            *v1543 = v1447;
            v1220.i64[1] = __PAIR64__(v1512, v884);
            *&v1543[20] = vshrq_n_s32(vshlq_n_s32(v1220, 0x10uLL), 0x10uLL);
            *&v1543[36] = v1539;
            v859 = v1207;
            v860 = v1206;
          }

          for (i = 0; i != 32; i += 4)
          {
            v1222 = &v1544 + i + 8;
            v1223 = &v1544 + i + 12;
            v1225 = v1222 < &v1544 || v1223 > &v1547 || v1222 > v1223;
            v1226 = (&v1544 + i + 4);
            if (v1225 || v1226 < &v1544)
            {
              goto LABEL_2658;
            }

            *v1226 = *v1222;
          }

          HIDWORD(v1546) = v1476;
          v858 = v1479 + 1;
        }

        while (v1479 != 4);
        v1228 = (v1467 + 40);
        *(v1467 + 8) = 0u;
        *(v1467 + 9) = 0u;
        *(v1467 + 6) = 0u;
        *(v1467 + 7) = 0u;
        *(v1467 + 4) = 0u;
        *(v1467 + 5) = 0u;
        *(v1467 + 2) = 0u;
        *(v1467 + 3) = 0u;
        *v1467 = 0u;
        *(v1467 + 1) = 0u;
        if (v1467 + 40 < v1467)
        {
          goto LABEL_2658;
        }

        v1466[8] = 0uLL;
        v1466[9] = 0uLL;
        v1466[6] = 0uLL;
        v1466[7] = 0uLL;
        v1466[4] = 0uLL;
        v1466[5] = 0uLL;
        v1466[2] = 0uLL;
        v1466[3] = 0uLL;
        *v1466 = 0uLL;
        v1466[1] = 0uLL;
        if (v1466 + 10 < v1466)
        {
          goto LABEL_2658;
        }

        v1229 = 0;
        v1230 = (v1445 + 10);
        *&v1571 = 0xAAAAAAAAAAAAAAAALL;
        *&v1231 = 0xAAAAAAAAAAAAAAAALL;
        *(&v1231 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v1570 = v1231;
        v1569 = v1231;
        *v1445 = -1;
        v1445[4] = -1;
        while (1)
        {
          v1232 = *&v1543[v1229];
          v1233 = &v1548 + 4 * v1232;
          v1234 = v1233 + 4;
          if (v1233 < &v1548 || v1234 > &v1558 || v1233 > v1234)
          {
            goto LABEL_2658;
          }

          v1237 = v1232;
          v1238 = *(&v1548 + v1232);
          v1239 = v1232 / 5;
          v1240 = v1232 / 5;
          v1241 = &v1467[v1237];
          v1242 = (v1241 + 1) > v1228 || v1241 > v1241 + 1;
          v1243 = !v1242 && v1241 >= v1467;
          v1244 = v1243;
          if (v1238 < 1)
          {
            if (!v1244)
            {
              goto LABEL_2658;
            }

            *v1241 = *v1241 + -1.0;
            *(&v1569 + v1229) = -1;
            v1240 += 8;
          }

          else
          {
            if (!v1244)
            {
              goto LABEL_2658;
            }

            *v1241 = *v1241 + 1.0;
            *(&v1569 + v1229) = 1;
          }

          v1245 = &v1445[v1237 - 5 * v1239];
          v1246 = v1245 + 1;
          v1247 = v1245 < v1445 || v1246 > v1230;
          if (v1247 || v1245 > v1246)
          {
LABEL_2658:
            __break(0x5519u);
          }

          v1249 = *v1245;
          if ((v1249 & 0x80000000) == 0)
          {
            if (((v1240 ^ v1249) & 8) != 0)
            {
              v1250 = v1245 + 5;
              v1253 = (v1245 + 6) <= v1230 && v1250 <= v1245 + 6 && v1250 >= v1445;
              if ((v1249 & 7u) > (v1240 & 7u))
              {
LABEL_2413:
                if (!v1253)
                {
                  goto LABEL_2658;
                }

                goto LABEL_2414;
              }
            }

            else
            {
              v1250 = v1245 + 5;
              v1253 = (v1245 + 6) <= v1230 && v1250 <= v1245 + 6 && v1250 >= v1445;
              if (v1240 >= v1249)
              {
                goto LABEL_2413;
              }
            }

            if (!v1253)
            {
              goto LABEL_2658;
            }

            *v1250 = v1249;
          }

          v1250 = v1245;
LABEL_2414:
          *v1250 = v1240;
          v1229 += 4;
          if (v1229 == 40)
          {
            v1256 = 0;
            v1257.i64[0] = *v1543;
            v1257.i64[1] = *&v1543[4];
            v1258 = vsubw_high_s32(0, *v1543);
            v1259 = vnegq_s64(v1257);
            v1260 = &v1440[v1259.i64[0]];
            v1261 = &v1440[v1259.i64[1]];
            v1262 = &v1440[v1258.i64[0]];
            v1263 = &v1440[v1258.i64[1]];
            v1257.i64[0] = *&v1543[16];
            v1257.i64[1] = *&v1543[20];
            v1264 = vsubw_high_s32(0, *&v1543[16]);
            v1265 = vnegq_s64(v1257);
            v1266 = &v1440[v1265.i64[0]];
            v1267 = &v1440[v1265.i64[1]];
            v1268 = &v1440[v1264.i64[0]];
            result = &v1440[v1264.i64[1]];
            v1269 = &v1440[-*&v1543[32]];
            v1270 = &v1440[-*&v1543[36]];
            v1271 = vcvt_f32_s32(*&v1569);
            v1272 = SDWORD2(v1569);
            v1273 = SHIDWORD(v1569);
            v1274 = v1570;
            v1275 = SDWORD1(v1570);
            v1276 = SDWORD2(v1570);
            v1277 = SHIDWORD(v1570);
            v1278 = v1571;
            v1279 = SDWORD1(v1571);
            do
            {
              v1280 = &v1260[v1256];
              v1281 = &v1260[v1256 + 1];
              if (v1281 > v1443)
              {
                goto LABEL_2658;
              }

              if (v1280 > v1281)
              {
                goto LABEL_2658;
              }

              if (v1280 < v1441)
              {
                goto LABEL_2658;
              }

              v1282 = &v1261[v1256 + 1];
              if (v1282 > v1443)
              {
                goto LABEL_2658;
              }

              v1283 = &v1261[v1256];
              if (&v1261[v1256] > v1282)
              {
                goto LABEL_2658;
              }

              if (v1283 < v1441)
              {
                goto LABEL_2658;
              }

              v1284 = &v1262[v1256 + 1];
              if (v1284 > v1443)
              {
                goto LABEL_2658;
              }

              v1285 = &v1262[v1256];
              if (&v1262[v1256] > v1284)
              {
                goto LABEL_2658;
              }

              if (v1285 < v1441)
              {
                goto LABEL_2658;
              }

              v1286 = &v1263[v1256 + 1];
              if (v1286 > v1443)
              {
                goto LABEL_2658;
              }

              v1287 = &v1263[v1256];
              if (&v1263[v1256] > v1286)
              {
                goto LABEL_2658;
              }

              if (v1287 < v1441)
              {
                goto LABEL_2658;
              }

              v1288 = &v1266[v1256 + 1];
              if (v1288 > v1443)
              {
                goto LABEL_2658;
              }

              v1289 = &v1266[v1256];
              if (&v1266[v1256] > v1288)
              {
                goto LABEL_2658;
              }

              if (v1289 < v1441)
              {
                goto LABEL_2658;
              }

              v1290 = &v1267[v1256 + 1];
              if (v1290 > v1443)
              {
                goto LABEL_2658;
              }

              v1291 = &v1267[v1256];
              if (&v1267[v1256] > v1290)
              {
                goto LABEL_2658;
              }

              if (v1291 < v1441)
              {
                goto LABEL_2658;
              }

              v1292 = &v1268[v1256 + 1];
              if (v1292 > v1443)
              {
                goto LABEL_2658;
              }

              v1293 = &v1268[v1256];
              if (&v1268[v1256] > v1292)
              {
                goto LABEL_2658;
              }

              if (v1293 < v1441)
              {
                goto LABEL_2658;
              }

              v1294 = result + v1256 * 4 + 4;
              if (v1294 > v1443)
              {
                goto LABEL_2658;
              }

              v1295 = (result + v1256 * 4);
              if (result + v1256 * 4 > v1294)
              {
                goto LABEL_2658;
              }

              if (v1295 < v1441)
              {
                goto LABEL_2658;
              }

              v1296 = &v1269[v1256 + 1];
              if (v1296 > v1443)
              {
                goto LABEL_2658;
              }

              v1297 = &v1269[v1256];
              if (&v1269[v1256] > v1296)
              {
                goto LABEL_2658;
              }

              if (v1297 < v1441)
              {
                goto LABEL_2658;
              }

              v1298 = &v1270[v1256 + 1];
              if (v1298 > v1443)
              {
                goto LABEL_2658;
              }

              v1299 = &v1270[v1256];
              if (&v1270[v1256] > v1298 || v1299 < v1441)
              {
                goto LABEL_2658;
              }

              v1300.i32[0] = *v1280;
              v1300.i32[1] = *v1283;
              v1300.f32[0] = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v1300, v1271))) + (*v1285 * v1272) + (*v1287 * v1273) + (*v1289 * v1274) + (*v1291 * v1275) + (*v1293 * v1276) + (*v1295 * v1277) + (*v1297 * v1278) + (*v1299 * v1279);
              *(v1466 + v1256 * 4) = v1300.i32[0];
              ++v1256;
            }

            while (v1256 != 40);
            v1301 = 0;
            v1302 = v1445;
            do
            {
              if (v1302 && (v1302 < v1445 || (v1302 + 1) > v1230 || v1302 > v1302 + 1))
              {
                goto LABEL_2658;
              }

              v1303 = gray_245 + (*v1302 & 7);
              v1305 = v1303 < qua_gain_code_MR122 && v1303 >= gray_245;
              if (v1301 > 4)
              {
                if (!v1305)
                {
                  goto LABEL_2658;
                }

                v1306 = *v1303;
              }

              else
              {
                if (!v1305)
                {
                  goto LABEL_2658;
                }

                v1306 = *v1302 & 8 | *v1303;
              }

              *v1302++ = v1306;
              ++v1301;
            }

            while (v1301 != 10);
            if (v1438)
            {
              v1307 = v1448 - 40;
              v1308 = v1467;
              v1309 = &v1467[v1448];
              do
              {
                if (v1308 < v1467 || (v1308 + 1) > v1228 || v1308 > v1308 + 1 || v1309 < v1467 || (v1309 + 1) > v1228 || v1309 > v1309 + 1)
                {
                  goto LABEL_2658;
                }

                v1310 = *v1308++;
                *v1309 = *v1309 + (v1310 * v829);
                ++v1309;
                _CF = __CFADD__(v1307++, 1);
              }

              while (!_CF);
            }

            v414 = 20;
            goto LABEL_2475;
          }
        }
      }

      v703 = *a9;
      v702 = a9[1];
      if (*a9 > v702)
      {
        goto LABEL_2658;
      }

      if (v702 - v703 < 3 || a9[2] > v703)
      {
        goto LABEL_2658;
      }

      v706 = *v11;
      v705 = *(v11 + 8);
      v1538 = *(v11 + 16);
      memset(__b, 255, sizeof(__b));
      *&v707 = -1;
      *(&v707 + 1) = -1;
      v1578 = v707;
      v1577 = v707;
      v1576 = v707;
      v1575 = v707;
      v1574 = v707;
      v1573 = v707;
      v1572 = v707;
      v1571 = v707;
      v1570 = v707;
      v1569 = v707;
      v1566 = v707;
      v1567 = v707;
      v1564 = v707;
      v1565 = v707;
      v1562 = v707;
      v1563 = v707;
      v1560 = v707;
      v1561 = v707;
      v709 = v19 != 0.0 && v1448 < 40;
      v1558 = v707;
      v1559 = v707;
      if (v709)
      {
        v710 = v1448 - 40;
        v711 = v1448;
        v712 = v706;
        do
        {
          v713 = &v712[v711];
          v714 = &v712[v711 + 1];
          v716 = v714 <= v705 && v713 <= v714 && v713 >= v1538;
          v717 = v712 + 1;
          if (!v716 || v717 > v705 || v712 > v717 || v712 < v1538)
          {
            goto LABEL_2658;
          }

          v721 = *v712++;
          *v713 = *v713 + (v721 * v19);
          _CF = __CFADD__(v710++, 1);
        }

        while (!_CF);
      }

      if (v705 < v706 || v1538 > v706 || (v705 - v706) < 157)
      {
        goto LABEL_2658;
      }

      v1517 = v709;
      v1534 = v705;
      v1523 = v703;
      cor_h_x(v706, v22, &v1569);
      v722 = 0;
      __asm
      {
        FMOV            V0.4S, #-1.0
        FMOV            V1.4S, #1.0
      }

      do
      {
        v725 = *(&v1569 + v722);
        v726 = vcgezq_f32(v725);
        *(&v1558 + v722) = vbslq_s8(v726, _Q1, _Q0);
        *(&v1569 + v722) = vbslq_s8(v726, v725, vnegq_f32(v725));
        v722 += 16;
      }

      while (v722 != 160);
      v1528 = v706;
      cor_h(v706, &v1558, __b);
      v727 = 0;
      v728 = 0;
      v729 = 0;
      v730 = -1.0;
      v731 = 1.0;
      v732 = 1;
      do
      {
        v733 = 0;
        v734 = v728;
        v735 = *(&startPos1 + v729);
        do
        {
          if (v735 <= 39)
          {
            v736 = startPos2[v733];
            v737 = 160 * v735 + 4 * v736;
            v738 = *(&startPos1 + v729);
            do
            {
              v739 = &v1569 + 4 * v738;
              v740 = v739 + 4;
              if (v739 < &v1569 || v740 > &v1579 || v739 > v740)
              {
                goto LABEL_2658;
              }

              v743 = &__b[40 * v738];
              v744 = (v743 + 40);
              v745 = &v743[v738];
              v746 = v745 + 1;
              v747 = v745 < v743 || v746 > v744;
              if (v747 || v745 > v746)
              {
                goto LABEL_2658;
              }

              if (v736 > 39)
              {
                v753 = 1.0;
                v750 = -1.0;
                v757 = startPos2[v733];
              }

              else
              {
                v749 = (*v745 * 0.25);
                v750 = -1.0;
                v751 = &v1569 + v736;
                v752 = 40 * v736;
                v753 = 1.0;
                v754 = 41 * startPos2[v733];
                v755 = v737;
                v756 = startPos2[v733];
                v757 = startPos2[v733];
                do
                {
                  v758 = v751 + 1;
                  if (v751 < &v1569 || v758 > &v1579 || v751 > v758)
                  {
                    goto LABEL_2658;
                  }

                  v761 = &__b[v754];
                  if (&__b[v754] < &__b[v752])
                  {
                    goto LABEL_2658;
                  }

                  if (v761 + 1 > &__b[v752 + 40])
                  {
                    goto LABEL_2658;
                  }

                  if (v761 > v761 + 1)
                  {
                    goto LABEL_2658;
                  }

                  v762 = __b + v755;
                  if ((__b + v755) < v743 || (v762 + 4) > v744 || v762 > v762 + 4)
                  {
                    goto LABEL_2658;
                  }

                  v763 = *v751;
                  v751 += 5;
                  v764 = (*(&v1569 + v738) + v763) * (*(&v1569 + v738) + v763);
                  if (v753 * v764 > (v749 + (__b[v754] * 0.25) + (*(__b + v755) * 0.5)) * v750)
                  {
                    v757 = v756;
                    v750 = v764;
                    v753 = v749 + (__b[v754] * 0.25) + (*(__b + v755) * 0.5);
                  }

                  v755 += 20;
                  v754 += 205;
                  v752 += 200;
                  v25 = v756 < 35;
                  v756 += 5;
                }

                while (v25);
              }

              if (v731 * v750 > v753 * v730)
              {
                v732 = v757;
                v727 = v738;
                v730 = v750;
                v731 = v753;
              }

              v737 += 800;
              v25 = v738 < 35;
              v738 += 5;
            }

            while (v25);
          }

          ++v733;
        }

        while (v733 != 4);
        v728 = 1;
        v729 = 1;
      }

      while ((v734 & 1) == 0);
      LODWORD(v1548) = -1431655766;
      v765 = (v1467 + 40);
      LODWORD(v1544) = -1431655766;
      *v1467 = 0u;
      *(v1467 + 1) = 0u;
      *(v1467 + 2) = 0u;
      *(v1467 + 3) = 0u;
      *(v1467 + 4) = 0u;
      *(v1467 + 5) = 0u;
      *(v1467 + 6) = 0u;
      *(v1467 + 7) = 0u;
      *(v1467 + 8) = 0u;
      *(v1467 + 9) = 0u;
      if (v1467 + 40 < v1467)
      {
        goto LABEL_2658;
      }

      v766 = 0;
      v767 = 0;
      v768 = &v1548;
      result = 48;
      v769 = 1;
      v770 = v727;
      do
      {
        v771 = v769;
        v772 = &v1558 + 4 * v770;
        v773 = v772 + 4;
        if (v772 < &v1558 || v773 > __b || v772 > v773)
        {
          goto LABEL_2658;
        }

        v776 = v770;
        v777 = *(&v1558 + v770);
        v778 = v770 / 5;
        v779 = v776 - 5 * v778;
        v780 = (v778 << 6) | 0x20;
        v781 = (2 * v778) | 1;
        v782 = (v778 << 6) | 0x30;
        if (v779 == 4)
        {
          v783 = 1;
        }

        else
        {
          v782 = v778;
          v783 = v776 - 5 * v778;
        }

        if (v779 == 3)
        {
          v784 = 0;
        }

        else
        {
          v781 = v782;
          v784 = v783;
        }

        if (v779 == 2)
        {
          v785 = 1;
        }

        else
        {
          v780 = v781;
          v785 = v784;
        }

        v786 = v778 << 6;
        v787 = (v778 << 6) | 0x10;
        if (v771)
        {
          v787 = 2 * v778;
          v788 = 0;
        }

        else
        {
          v788 = 1;
        }

        if (v779 == 1)
        {
          LOWORD(v778) = v787;
          v789 = v788;
        }

        else
        {
          v789 = v776 - 5 * v778;
        }

        if (v779)
        {
          v790 = v789;
        }

        else
        {
          LOWORD(v778) = v786;
          v790 = 1;
        }

        if (v779 <= 1)
        {
          v791 = v790;
        }

        else
        {
          LOWORD(v778) = v780;
          v791 = v785;
        }

        v792 = &v1467[v776];
        v795 = (v792 + 1) <= v765 && v792 <= v792 + 1 && v792 >= v1467;
        if (v777 < 1)
        {
          if (!v795)
          {
            goto LABEL_2658;
          }

          *v792 = -1.0;
          *v768 = -1;
        }

        else
        {
          if (!v795)
          {
            goto LABEL_2658;
          }

          *v792 = 0.99988;
          *v768 = 1;
          v767 += 1 << v791;
        }

        v769 = 0;
        v766 += v778;
        v768 = &v1544;
        v770 = v732;
      }

      while ((v771 & 1) != 0);
      v796 = 0;
      v797 = &v1528[-v727];
      v798 = &v1528[-v732];
      v799 = v1548;
      v800 = v1544;
      do
      {
        v801 = &v797[v796];
        v802 = &v798[v796];
        v803 = &v797[v796 + 1];
        v805 = v803 <= v1534 && v801 <= v803 && v801 >= v1538;
        v806 = v802 + 1;
        if (!v805 || v806 > v1534 || v802 > v806 || v802 < v1538)
        {
          goto LABEL_2658;
        }

        *(v1466 + v796 * 4) = (*v801 * v799) + (*v802 * v800);
        ++v796;
      }

      while (v796 != 40);
      v1523->i16[0] = v766;
      v1523->i16[1] = v767;
      if (v1517)
      {
        v810 = v1448 - 40;
        v811 = v1448;
        v812 = v1467;
        do
        {
          v813 = &v812[v811];
          v814 = &v812[v811 + 1];
          v816 = &v812[v811] < v1467 || v814 > v765 || v813 > v814;
          v817 = v812 + 1;
          if (v816 || v812 < v1467 || v817 > v765 || v812 > v817)
          {
            goto LABEL_2658;
          }

          v821 = *v812++;
          *v813 = *v813 + (v821 * v19);
          _CF = __CFADD__(v810++, 1);
        }

        while (!_CF);
      }
    }

    else
    {
      v416 = *a9;
      v415 = a9[1];
      if (*a9 > v415)
      {
        goto LABEL_2658;
      }

      if (v415 - v416 < 3 || a9[2] > v416)
      {
        goto LABEL_2658;
      }

      v418 = v10;
      v420 = *v11;
      v419 = *(v11 + 8);
      v421 = *(v11 + 16);
      memset(__b, 255, sizeof(__b));
      *&v422 = -1;
      *(&v422 + 1) = -1;
      v1578 = v422;
      v1577 = v422;
      v1576 = v422;
      v1575 = v422;
      v1574 = v422;
      v1573 = v422;
      v1572 = v422;
      v1571 = v422;
      v1570 = v422;
      v1569 = v422;
      v1566 = v422;
      v1567 = v422;
      v1564 = v422;
      v1565 = v422;
      v1562 = v422;
      v1563 = v422;
      v1560 = v422;
      v1561 = v422;
      v424 = v19 != 0.0 && v1448 < 40;
      v1558 = v422;
      v1559 = v422;
      if (v424)
      {
        v425 = v1448 - 40;
        v426 = &v420[v1448];
        v427 = v420;
        do
        {
          v429 = (v427 + 1) <= v419 && v427 <= v427 + 1 && v427 >= v421;
          v430 = v426 + 1;
          if (!v429 || v430 > v419 || v426 > v430 || v426 < v421)
          {
            goto LABEL_2658;
          }

          v434 = *v427++;
          *v426 = *v426 + (v434 * v19);
          ++v426;
          _CF = __CFADD__(v425++, 1);
        }

        while (!_CF);
      }

      if (v419 < v420 || v421 > v420 || (v419 - v420) < 157)
      {
        goto LABEL_2658;
      }

      v1515 = v424;
      v1521 = v416;
      cor_h_x(v420, v22, &v1569);
      v435 = 0;
      __asm
      {
        FMOV            V0.4S, #-1.0
        FMOV            V1.4S, #1.0
      }

      do
      {
        v441 = *(&v1569 + v435);
        v442 = vcgezq_f32(v441);
        *(&v1558 + v435) = vbslq_s8(v442, _Q1, _Q0);
        *(&v1569 + v435) = vbslq_s8(v442, v441, vnegq_f32(v441));
        v435 += 16;
      }

      while (v435 != 160);
      v1526 = v420;
      cor_h(v420, &v1558, __b);
      v443 = 0;
      v444 = 0;
      v1537 = 2 * v418;
      v445 = 1;
      v1532 = v418;
      v446 = (2 * v418) | 1;
      v447 = 1.0;
      v448 = -1.0;
      v449 = 1;
      do
      {
        v450 = v449;
        v451 = &startPos_244[v444 + v1537];
        v452 = v451 + 1;
        v454 = v451 < startPos_244 || v452 > trackTable || v451 > v452;
        v455 = &startPos_244[v446 + v444];
        v456 = v455 + 1;
        if (v454 || v455 < startPos_244 || v456 > trackTable || v455 > v456)
        {
          goto LABEL_2658;
        }

        v460 = *v451;
        if (v460 <= 39)
        {
          v461 = *v455;
          v462 = 160 * *v451 + 4 * v461;
          do
          {
            v463 = &v1569 + 4 * v460;
            v464 = v463 + 4;
            if (v463 < &v1569 || v464 > &v1579 || v463 > v464)
            {
              goto LABEL_2658;
            }

            v467 = &__b[40 * v460];
            v468 = (v467 + 40);
            v469 = &v467[v460];
            v470 = v469 + 1;
            v471 = v469 < v467 || v470 > v468;
            if (v471 || v469 > v470)
            {
              goto LABEL_2658;
            }

            if (v461 > 39)
            {
              v477 = 1.0;
              v474 = -1.0;
              v481 = v461;
            }

            else
            {
              v473 = *v469;
              v474 = -1.0;
              v475 = &v1569 + v461;
              v476 = 40 * v461;
              v477 = 1.0;
              v478 = 41 * v461;
              v479 = v462;
              v480 = v461;
              v481 = v461;
              do
              {
                v482 = v475 + 1;
                if (v475 < &v1569 || v482 > &v1579 || v475 > v482)
                {
                  goto LABEL_2658;
                }

                v485 = &__b[v478];
                if (&__b[v478] < &__b[v476])
                {
                  goto LABEL_2658;
                }

                if (v485 + 1 > &__b[v476 + 40])
                {
                  goto LABEL_2658;
                }

                if (v485 > v485 + 1)
                {
                  goto LABEL_2658;
                }

                v486 = __b + v479;
                if ((__b + v479) < v467 || (v486 + 4) > v468 || v486 > v486 + 4)
                {
                  goto LABEL_2658;
                }

                v487 = *v475;
                v475 += 5;
                v488 = (*(&v1569 + v460) + v487) * (*(&v1569 + v460) + v487);
                if ((v477 * v488) > (v474 * ((v473 + __b[v478]) + (*(__b + v479) * 2.0))))
                {
                  v481 = v480;
                  v474 = v488;
                  v477 = (v473 + __b[v478]) + (*(__b + v479) * 2.0);
                }

                v479 += 20;
                v478 += 205;
                v476 += 200;
                v25 = v480 < 35;
                v480 += 5;
              }

              while (v25);
            }

            if ((v447 * v474) > (v448 * v477))
            {
              v445 = v481;
              v443 = v460;
              v447 = v477;
              v448 = v474;
            }

            v462 += 800;
            v25 = v460 < 35;
            v460 += 5;
          }

          while (v25);
        }

        v449 = 0;
        v444 = 8;
      }

      while ((v450 & 1) != 0);
      LODWORD(v1548) = -1431655766;
      v489 = (v1467 + 40);
      LODWORD(v1544) = -1431655766;
      *v1467 = 0u;
      *(v1467 + 1) = 0u;
      *(v1467 + 2) = 0u;
      *(v1467 + 3) = 0u;
      *(v1467 + 4) = 0u;
      *(v1467 + 5) = 0u;
      *(v1467 + 6) = 0u;
      *(v1467 + 7) = 0u;
      *(v1467 + 8) = 0u;
      *(v1467 + 9) = 0u;
      if (v1467 + 40 < v1467)
      {
        goto LABEL_2658;
      }

      v490 = 0;
      v491 = 0;
      v492 = 0;
      v493 = &v1548;
      result = 1717986919;
      v494 = 1;
      v495 = v443;
      do
      {
        v496 = v494;
        v497 = &v1558 + 4 * v495;
        v498 = v497 + 4;
        if (v497 < &v1558 || v498 > __b || v497 > v498)
        {
          goto LABEL_2658;
        }

        v501 = v495;
        v502 = v495 / 5;
        v503 = trackTable + 5 * v1532 + v501 - 5 * v502;
        if (v503 >= &startPos1 || v503 < trackTable)
        {
          goto LABEL_2658;
        }

        v505 = *(&v1558 + v501);
        v506 = *v503;
        v507 = v502 + 64;
        if (v496)
        {
          v508 = 0;
        }

        else
        {
          v507 = 8 * v502;
          v508 = 1;
        }

        if ((v496 & 1) == 0)
        {
          LOWORD(v502) = 8 * v502;
        }

        if (v506)
        {
          LOWORD(v502) = v507;
          v509 = v508;
        }

        else
        {
          v509 = v490;
        }

        v510 = &v1467[v501];
        v513 = (v510 + 1) <= v489 && v510 <= v510 + 1 && v510 >= v1467;
        if (v505 < 1)
        {
          if (!v513)
          {
            goto LABEL_2658;
          }

          *v510 = -1.0;
          *v493 = -1;
        }

        else
        {
          if (!v513)
          {
            goto LABEL_2658;
          }

          *v510 = 0.99988;
          *v493 = 1;
          v492 += 1 << v509;
        }

        v494 = 0;
        v491 += v502;
        v490 = 1;
        v493 = &v1544;
        v495 = v445;
      }

      while ((v496 & 1) != 0);
      v514 = 0;
      v515 = &v1526[-v443];
      v516 = &v1526[-v445];
      v517 = v1548;
      v518 = v1544;
      do
      {
        v519 = &v515[v514];
        v520 = &v516[v514];
        v521 = &v515[v514 + 1];
        v523 = v521 <= v419 && v519 <= v521 && v519 >= v421;
        v524 = v520 + 1;
        if (!v523 || v524 > v419 || v520 > v524 || v520 < v421)
        {
          goto LABEL_2658;
        }

        *(v1466 + v514 * 4) = (*v519 * v517) + (*v520 * v518);
        ++v514;
      }

      while (v514 != 40);
      v1521->i16[0] = v491;
      v1521->i16[1] = v492;
      if (v1515)
      {
        v528 = v1448 - 40;
        v529 = v1467;
        v530 = &v1467[v1448];
        do
        {
          if (v529 < v1467 || (v529 + 1) > v489 || v529 > v529 + 1 || v530 < v1467 || (v530 + 1) > v489 || v530 > v530 + 1)
          {
            goto LABEL_2658;
          }

          v531 = *v529++;
          *v530 = *v530 + (v531 * v19);
          ++v530;
          _CF = __CFADD__(v528++, 1);
        }

        while (!_CF);
      }
    }

LABEL_1410:
    v414 = 4;
    goto LABEL_2475;
  }

  if ((v9 - 4) < 2)
  {
    v533 = *a9;
    v532 = a9[1];
    if (*a9 > v532)
    {
      goto LABEL_2658;
    }

    if (v532 - v533 < 3 || a9[2] > v533)
    {
      goto LABEL_2658;
    }

    v536 = *v11;
    v535 = *(v11 + 8);
    v537 = *(v11 + 16);
    memset(__b, 255, sizeof(__b));
    *&v538 = -1;
    *(&v538 + 1) = -1;
    v1578 = v538;
    v1577 = v538;
    v1576 = v538;
    v1575 = v538;
    v1574 = v538;
    v1573 = v538;
    v1572 = v538;
    v1571 = v538;
    v1570 = v538;
    v1569 = v538;
    v1566 = v538;
    v1567 = v538;
    v1564 = v538;
    v1565 = v538;
    v1562 = v538;
    v1563 = v538;
    v1560 = v538;
    v1561 = v538;
    v1558 = v538;
    v1559 = v538;
    v1556 = v538;
    v1557 = v538;
    v1554 = v538;
    v1555 = v538;
    v1552 = v538;
    v1553 = v538;
    v1550 = v538;
    v1551 = v538;
    v540 = v19 != 0.0 && v1448 < 40;
    v1548 = v538;
    v1549 = v538;
    if (v540)
    {
      v541 = v1448 - 40;
      v542 = v1448;
      v543 = v536;
      do
      {
        v544 = &v543[v542];
        v545 = &v543[v542 + 1];
        v547 = v545 <= v535 && v544 <= v545 && v544 >= v537;
        v548 = v543 + 1;
        if (!v547 || v548 > v535 || v543 > v548 || v543 < v537)
        {
          goto LABEL_2658;
        }

        v552 = *v543++;
        *v544 = *v544 + (v552 * v19);
        _CF = __CFADD__(v541++, 1);
      }

      while (!_CF);
    }

    if (v535 < v536 || v537 > v536 || (v535 - v536) < 157)
    {
      goto LABEL_2658;
    }

    v1450 = v540;
    v1458 = v537;
    v1461 = v535;
    v1453 = v533;
    cor_h_x(v536, v22, &v1569);
    set_sign(&v1569, &v1548, &v1558, 4);
    v1456 = v536;
    cor_h(v536, &v1548, __b);
    v1481 = 0;
    v553 = 0;
    v554 = -1.0;
    v555 = 1.0;
    v1475 = 1;
    v1478 = 2;
    v1473 = 3;
    v556 = 3;
    do
    {
      v557 = 0;
      v558 = 0;
      v1464 = v553;
      v1533 = 2;
      v559 = 1;
      do
      {
        v1471 = v557;
        v560 = v559;
        v561 = v559;
        v562 = v558;
        v563 = v1533;
        v1489 = v556;
        v564 = v562;
        v1516 = v561 - 5;
        v1469 = v562;
        v565 = 160 * v562;
        v566 = v565 + 4 * v560;
        v1506 = 164 * v560;
        v1511 = 4 * v560;
        v1527 = v1533;
        v1533 = v560;
        v1500 = v563 - 5;
        v1504 = 160 * v560;
        v567 = v565 + 4 * v1527;
        v568 = 4 * v556;
        v569 = v565 + v568;
        v1485 = 160 * v556;
        v1487 = 164 * v556;
        v1522 = v556;
        do
        {
          v570 = &v1558 + v564;
          v571 = v570 + 1;
          if (v570 < &v1558 || v571 > __b || v570 > v571)
          {
            goto LABEL_2658;
          }

          if (*v570 >= 0.0)
          {
            v574 = &v1569 + 4 * v564;
            if (v574 < &v1569 || v574 + 4 > &v1579 || v574 > v574 + 4)
            {
              goto LABEL_2658;
            }

            v575 = &__b[40 * v564];
            v576 = (v575 + 40);
            v577 = &v575[v564];
            v578 = v577 + 1;
            v579 = v577 < v575 || v578 > v576;
            if (v579 || v577 > v578)
            {
              goto LABEL_2658;
            }

            v582 = (*v577 * 0.25);
            v583 = -1.0;
            v584 = 0.0;
            v586 = v1506;
            v585 = v1511;
            v587 = v1504;
            v588 = 1.0;
            v589 = v566;
            v590 = v1516;
            v591 = v1533;
            do
            {
              v592 = (&v1569 + v585);
              v593 = (&v1569 + v585 + 4);
              if ((&v1569 + v585) < &v1569 || v593 > &v1579 || v592 > v593)
              {
                goto LABEL_2658;
              }

              v596 = (__b + v586);
              if (__b + v586 < __b + v587)
              {
                goto LABEL_2658;
              }

              if (v596 + 1 > (&__b[40] + v587))
              {
                goto LABEL_2658;
              }

              if (v596 > v596 + 1)
              {
                goto LABEL_2658;
              }

              v597 = (__b + v589);
              if ((__b + v589) < v575 || (v597 + 1) > v576 || v597 > v597 + 1)
              {
                goto LABEL_2658;
              }

              v581 = *(&v1569 + v564);
              v598 = v581 + *v592;
              if (v588 * (v598 * v598) > (v582 + (*v596 * 0.25) + (*v597 * 0.5)) * v583)
              {
                v591 = v590 + 5;
                v583 = v598 * v598;
                v584 = v581 + *v592;
                v588 = v582 + (*v596 * 0.25) + (*v597 * 0.5);
              }

              v590 += 5;
              v589 += 20;
              v586 += 820;
              v587 += 800;
              v585 += 20;
            }

            while (v590 < 0x23);
            v599 = v588 * 0.25;
            v600 = &__b[40 * v591];
            v601 = (v600 + 40);
            v602 = 41 * v1527;
            v603 = 4 * v1527;
            v604 = v603 + 160 * v591;
            v605 = -1.0;
            v606 = 0.0;
            v607 = 40 * v1527;
            v608 = 1.0;
            v609 = v567;
            v610 = v1500;
            v611 = v1527;
            do
            {
              v612 = (&v1569 + v603);
              v613 = (&v1569 + v603 + 4);
              if ((&v1569 + v603) < &v1569 || v613 > &v1579 || v612 > v613)
              {
                goto LABEL_2658;
              }

              v616 = &__b[v602];
              if (&__b[v602] < &__b[v607])
              {
                goto LABEL_2658;
              }

              if (v616 + 1 > &__b[v607 + 40])
              {
                goto LABEL_2658;
              }

              if (v616 > v616 + 1)
              {
                goto LABEL_2658;
              }

              v617 = (__b + v604);
              if ((__b + v604) < v600)
              {
                goto LABEL_2658;
              }

              if ((v617 + 1) > v601)
              {
                goto LABEL_2658;
              }

              if (v617 > v617 + 1)
              {
                goto LABEL_2658;
              }

              v618 = (__b + v609);
              if ((__b + v609) < v575 || (v618 + 1) > v576 || v618 > v618 + 1)
              {
                goto LABEL_2658;
              }

              v619 = v584 + *v612;
              if (v608 * (v619 * v619) > (v599 + (*v616 * 0.0625) + (*v617 * 0.125) + (*v618 * 0.125)) * v605)
              {
                v611 = v610 + 5;
                v605 = v619 * v619;
                v606 = v584 + *v612;
                v608 = v599 + (*v616 * 0.0625) + (*v617 * 0.125) + (*v618 * 0.125);
              }

              v610 += 5;
              v609 += 20;
              v604 += 20;
              v602 += 205;
              v607 += 200;
              v603 += 20;
            }

            while (v610 < 0x23);
            v620 = &__b[40 * v611];
            v621 = v568 + 160 * v591;
            v622 = v568 + 160 * v611;
            v623 = -1.0;
            v624 = (&v1569 + v568);
            v625 = v1485;
            v626 = 1.0;
            v627 = v1487;
            v628 = v1489;
            v629 = v569;
            v630 = v1522;
            do
            {
              v631 = v624 + 1;
              if (v624 < &v1569 || v631 > &v1579 || v624 > v631)
              {
                goto LABEL_2658;
              }

              v634 = __b + v627;
              if (__b + v627 < __b + v625)
              {
                goto LABEL_2658;
              }

              if (v634 + 4 > &__b[40] + v625)
              {
                goto LABEL_2658;
              }

              if (v634 > v634 + 4)
              {
                goto LABEL_2658;
              }

              v635 = __b + v622;
              if ((__b + v622) < v620)
              {
                goto LABEL_2658;
              }

              if (v635 + 4 > v620 + 160)
              {
                goto LABEL_2658;
              }

              if (v635 > v635 + 4)
              {
                goto LABEL_2658;
              }

              v636 = __b + v621;
              if ((__b + v621) < v600)
              {
                goto LABEL_2658;
              }

              if ((v636 + 4) > v601)
              {
                goto LABEL_2658;
              }

              if (v636 > v636 + 4)
              {
                goto LABEL_2658;
              }

              v637 = __b + v629;
              if ((__b + v629) < v575 || (v637 + 4) > v576 || v637 > v637 + 4)
              {
                goto LABEL_2658;
              }

              v638 = *v624;
              v624 += 5;
              v639 = (v606 + v638) * (v606 + v638);
              if (v626 * v639 > (v608 + (*(__b + v627) * 0.0625) + (*(__b + v622) * 0.125) + (*(__b + v621) * 0.125) + (*(__b + v629) * 0.125)) * v623)
              {
                v630 = v628;
                v623 = v639;
                v626 = v608 + (*(__b + v627) * 0.0625) + (*(__b + v622) * 0.125) + (*(__b + v621) * 0.125) + (*(__b + v629) * 0.125);
              }

              v629 += 20;
              v621 += 20;
              v622 += 20;
              v627 += 820;
              v625 += 800;
              _CF = v628 >= 0x23;
              v628 += 5;
            }

            while (!_CF);
            if (v555 * v623 > v626 * v554)
            {
              v1473 = v630;
              v1478 = v611;
              v1475 = v591;
              v1481 = v564;
              v554 = v623;
              v555 = v626;
            }
          }

          v566 += 800;
          v567 += 800;
          v569 += 800;
          _CF = v564 >= 0x23;
          v564 += 5;
        }

        while (!_CF);
        v557 = v1471 + 1;
        v556 = v1527;
        v558 = v1522;
        v559 = v1469;
      }

      while (v1471 != 3);
      v556 = 4;
      v553 = 1;
    }

    while ((v1464 & 1) == 0);
    *v1543 = v1481;
    *&v1543[4] = v1475;
    *&v1543[8] = v1478;
    *&v1543[12] = v1473;
    v640 = (v1467 + 40);
    *&v1544 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1544 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v1467 = 0u;
    *(v1467 + 1) = 0u;
    *(v1467 + 2) = 0u;
    *(v1467 + 3) = 0u;
    *(v1467 + 4) = 0u;
    *(v1467 + 5) = 0u;
    *(v1467 + 6) = 0u;
    *(v1467 + 7) = 0u;
    *(v1467 + 8) = 0u;
    *(v1467 + 9) = 0u;
    if (v1467 + 40 < v1467)
    {
      goto LABEL_2658;
    }

    v641 = 0;
    v642 = 0;
    v643 = 0;
    do
    {
      v644 = *&v1543[v641];
      v645 = &v1548 + 4 * v644;
      v646 = v645 + 4;
      if (v645 < &v1548 || v646 > &v1558 || v645 > v646)
      {
        goto LABEL_2658;
      }

      v649 = gray_245 + v644 / 5;
      if (v649 >= qua_gain_code_MR122 || v649 < gray_245)
      {
        goto LABEL_2658;
      }

      v651 = *(&v1548 + v644);
      v652 = v644 % 5;
      v653 = *v649;
      v654 = v653 << 10;
      v655 = (v653 << 10) | 0x200;
      if (v644 % 5 == 4)
      {
        LOBYTE(v656) = 3;
      }

      else
      {
        v655 = v653;
        v656 = v644 % 5;
      }

      if (v652 == 3)
      {
        v657 = 3;
      }

      else
      {
        v654 = v655;
        v657 = v656;
      }

      v658 = 8 * v653;
      if (v652 == 2)
      {
        v653 <<= 6;
        LOBYTE(v659) = 2;
      }

      else
      {
        v659 = v644 % 5;
      }

      if (v652 == 1)
      {
        v653 = v658;
        v660 = 1;
      }

      else
      {
        v660 = v659;
      }

      if (v652 <= 2)
      {
        v661 = v660;
      }

      else
      {
        v653 = v654;
        v661 = v657;
      }

      v662 = &v1467[v644];
      v665 = (v662 + 1) <= v640 && v662 <= v662 + 1 && v662 >= v1467;
      if (v651 < 1)
      {
        if (!v665)
        {
          goto LABEL_2658;
        }

        *v662 = -1.0;
        *(&v1544 + v641) = -1;
      }

      else
      {
        if (!v665)
        {
          goto LABEL_2658;
        }

        *v662 = 0.99988;
        *(&v1544 + v641) = 1;
        v643 += 1 << v661;
      }

      v642 += v653;
      v641 += 4;
    }

    while (v641 != 16);
    v666 = 0;
    v667 = &v1456[-v1481];
    v668 = vcvt_f32_s32(*&v1544);
    v669 = SDWORD2(v1544);
    v670 = SHIDWORD(v1544);
    do
    {
      v671 = &v667[v666];
      result = &v1456[v666 - v1475];
      v672 = &v1456[v666 - v1478];
      v673 = &v1456[v666 - v1473];
      v674 = &v667[v666 + 1];
      v676 = v674 <= v1461 && v671 <= v674 && v671 >= v1458;
      v677 = result + 4;
      v680 = v676 && v677 <= v1461 && result <= v677 && result >= v1458;
      v681 = v672 + 1;
      v684 = v680 && v681 <= v1461 && v672 <= v681 && v672 >= v1458;
      v685 = v673 + 1;
      if (!v684 || v685 > v1461 || v673 > v685 || v673 < v1458)
      {
        goto LABEL_2658;
      }

      v689.i32[0] = *v671;
      v689.i32[1] = *result;
      v689.f32[0] = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v689, v668))) + (*v672 * v669) + (*v673 * v670);
      *(v1466 + v666 * 4) = v689.i32[0];
      ++v666;
    }

    while (v666 != 40);
    v1453->i16[0] = v642;
    v1453->i16[1] = v643;
    if (v1450)
    {
      v690 = v1448 - 40;
      v691 = v1448;
      v692 = v1467;
      do
      {
        v693 = &v692[v691];
        v694 = &v692[v691 + 1];
        v696 = &v692[v691] < v1467 || v694 > v640 || v693 > v694;
        v697 = v692 + 1;
        if (v696 || v692 < v1467 || v697 > v640 || v692 > v697)
        {
          goto LABEL_2658;
        }

        v701 = *v692++;
        *v693 = *v693 + (v701 * v19);
        _CF = __CFADD__(v690++, 1);
      }

      while (!_CF);
    }

    goto LABEL_1410;
  }

  if (v9 == 3)
  {
    v1312 = *a9;
    v1311 = a9[1];
    if (*a9 > v1311)
    {
      goto LABEL_2658;
    }

    if (v1311 - v1312 < 3 || a9[2] > v1312)
    {
      goto LABEL_2658;
    }

    v1315 = *v11;
    v1314 = *(v11 + 8);
    v1316 = *(v11 + 16);
    memset(__b, 255, sizeof(__b));
    *&v1317 = -1;
    *(&v1317 + 1) = -1;
    v1578 = v1317;
    v1577 = v1317;
    v1576 = v1317;
    v1575 = v1317;
    v1574 = v1317;
    v1573 = v1317;
    v1572 = v1317;
    v1571 = v1317;
    v1570 = v1317;
    v1569 = v1317;
    v1566 = v1317;
    v1567 = v1317;
    v1564 = v1317;
    v1565 = v1317;
    v1562 = v1317;
    v1563 = v1317;
    v1560 = v1317;
    v1561 = v1317;
    v1558 = v1317;
    v1559 = v1317;
    v1556 = v1317;
    v1557 = v1317;
    v1554 = v1317;
    v1555 = v1317;
    v1552 = v1317;
    v1553 = v1317;
    v1550 = v1317;
    v1551 = v1317;
    v1319 = v19 != 0.0 && v1448 < 40;
    v1548 = v1317;
    v1549 = v1317;
    if (v1319)
    {
      v1320 = v1448 - 40;
      v1321 = v1448;
      v1322 = v1315;
      do
      {
        v1323 = &v1322[v1321];
        v1324 = &v1322[v1321 + 1];
        v1326 = v1324 <= v1314 && v1323 <= v1324 && v1323 >= v1316;
        v1327 = v1322 + 1;
        if (!v1326 || v1327 > v1314 || v1322 > v1327 || v1322 < v1316)
        {
          goto LABEL_2658;
        }

        v1331 = *v1322++;
        *v1323 = *v1323 + (v1331 * v19);
        _CF = __CFADD__(v1320++, 1);
      }

      while (!_CF);
    }

    if (v1314 < v1315 || v1316 > v1315 || (v1314 - v1315) < 157)
    {
      goto LABEL_2658;
    }

    v1488 = v1319;
    v1497 = v1316;
    v1499 = v1314;
    v1491 = v1312;
    v1530 = -1431655766;
    cor_h_x(v1315, v22, &v1569);
    set_sign(&v1569, &v1548, &v1558, 6);
    v1494 = v1315;
    cor_h(v1315, &v1548, __b);
    v1502 = 1;
    v1332 = 1.0;
    v1333 = -1.0;
    v1525 = -1431655766;
    v1519 = -1431655766;
    do
    {
      v1334 = 2;
      do
      {
        v1335 = 0;
        v1336 = 0;
        v1337 = v1502;
        v1505 = v1334;
        v1338 = v1334;
        do
        {
          v1513 = v1335;
          v1339 = v1337;
          v1509 = v1336;
          if (v1336 <= 39)
          {
            v1540 = &v1569 + v1337;
            v1340 = v1336;
            v1341 = 160 * v1336 + 4 * v1337;
            v1342 = v1338;
            v1343 = &__b[40 * v1336];
            do
            {
              v1344 = &v1558 + v1340;
              v1345 = v1344 + 1;
              if (v1344 < &v1558 || v1345 > __b || v1344 > v1345)
              {
                goto LABEL_2658;
              }

              if (*v1344 >= 0.0)
              {
                v1348 = &v1569 + 4 * v1340;
                if (v1348 < &v1569 || v1348 + 4 > &v1579 || v1348 > v1348 + 4)
                {
                  goto LABEL_2658;
                }

                v1349 = &__b[40 * v1340];
                v1350 = v1349 + 40;
                v1351 = &v1349[v1340];
                v1352 = v1351 + 1;
                v1353 = v1351 < v1349 || v1352 > v1350;
                if (v1353 || v1351 > v1352)
                {
                  goto LABEL_2658;
                }

                v1355 = *(&v1569 + v1340);
                v1356 = *v1351;
                v1357 = -1.0;
                v1358 = 1.0;
                v1359 = 41 * v1339;
                v1360 = 0.0;
                v1361 = v1341;
                v1362 = v1339 << 16;
                v1363 = v1339;
                v1364 = v1540;
                do
                {
                  if (v1364 < &v1569)
                  {
                    goto LABEL_2658;
                  }

                  if (v1364 + 1 > &v1579)
                  {
                    goto LABEL_2658;
                  }

                  if (v1364 > v1364 + 1)
                  {
                    goto LABEL_2658;
                  }

                  v1365 = &__b[v1359];
                  if (&__b[v1359] < __b)
                  {
                    goto LABEL_2658;
                  }

                  v1366 = &__b[v1359 + 1];
                  if (v1366 > &v1569)
                  {
                    goto LABEL_2658;
                  }

                  if (v1365 > v1366)
                  {
                    goto LABEL_2658;
                  }

                  v1367 = (__b + v1361);
                  if ((__b + v1361) < v1349)
                  {
                    goto LABEL_2658;
                  }

                  v1368 = (&__b[1] + v1361);
                  if (v1368 > v1350 || v1367 > v1368)
                  {
                    goto LABEL_2658;
                  }

                  v1369 = v1355 + *v1364;
                  if ((v1358 * (v1369 * v1369)) > (v1357 * ((v1356 + *v1365) + (*v1367 * 2.0))))
                  {
                    v1363 = v1362 >> 16;
                    v1360 = v1355 + *v1364;
                    v1358 = (v1356 + *v1365) + (*v1367 * 2.0);
                    v1357 = v1369 * v1369;
                  }

                  v1364 += 5;
                  v1362 += 327680;
                  v1361 += 20;
                  v1359 += 205;
                }

                while (v1364 < &v1579);
                v1370 = &__b[40 * v1363];
                v1371 = -1.0;
                v1372 = &v1569;
                v1373 = v1370;
                v1374 = 1.0;
                v1375 = v1343;
                v1376 = v1338 << 16;
                v1377 = v1338;
                v1378 = &__b[41 * v1338];
                do
                {
                  v1379 = (v1372 + v1342 * 4);
                  if ((v1372 + v1342 * 4) < &v1569)
                  {
                    goto LABEL_2658;
                  }

                  if (v1379 + 1 > &v1579)
                  {
                    goto LABEL_2658;
                  }

                  if (v1379 > v1379 + 1)
                  {
                    goto LABEL_2658;
                  }

                  if (v1378 < __b)
                  {
                    goto LABEL_2658;
                  }

                  if (v1378 + 1 > &v1569)
                  {
                    goto LABEL_2658;
                  }

                  if (v1378 > v1378 + 1)
                  {
                    goto LABEL_2658;
                  }

                  v1380 = &v1373[v1342 + 1];
                  if (v1380 > (v1370 + 40))
                  {
                    goto LABEL_2658;
                  }

                  if (&v1373[v1342] > v1380)
                  {
                    goto LABEL_2658;
                  }

                  if (&v1373[v1342] < v1370)
                  {
                    goto LABEL_2658;
                  }

                  if (&v1375[v1342] < v1349)
                  {
                    goto LABEL_2658;
                  }

                  v1381 = &v1375[v1342 + 1];
                  if (v1381 > v1350 || &v1375[v1342] > v1381)
                  {
                    goto LABEL_2658;
                  }

                  if ((v1374 * ((v1360 + *v1379) * (v1360 + *v1379))) > (v1371 * ((v1358 + *v1378) + ((v1373[v1338] + v1375[v1338]) * 2.0))))
                  {
                    v1377 = v1376 >> 16;
                    v1374 = (v1358 + *v1378) + ((v1373[v1338] + v1375[v1338]) * 2.0);
                    v1371 = (v1360 + *v1379) * (v1360 + *v1379);
                  }

                  v1378 += 205;
                  v1372 = (v1372 + 20);
                  v1376 += 327680;
                  v1375 += 5;
                  v1373 += 5;
                }

                while ((v1372 + v1342 * 4) < &v1579);
                if ((v1332 * v1371) > (v1333 * v1374))
                {
                  v1530 = v1377;
                  v1525 = v1363;
                  v1519 = v1340;
                  v1332 = v1374;
                  v1333 = v1371;
                }
              }

              v1341 += 800;
              v1343 += 200;
              v25 = v1340 < 35;
              v1340 += 5;
            }

            while (v25);
          }

          v1335 = v1513 + 1;
          v1336 = v1338;
          v1338 = v1339;
          v1337 = v1509;
        }

        while (v1513 != 2);
        v1334 = v1505 + 2;
      }

      while (v1505 < 3);
      _CF = v1502 >= 2;
      v1502 += 2;
    }

    while (!_CF);
    *v1543 = v1519;
    *&v1543[4] = v1525;
    *&v1543[8] = v1530;
    v1382 = (v1467 + 40);
    *&v1544 = -1;
    DWORD2(v1544) = -1;
    *v1467 = 0u;
    *(v1467 + 1) = 0u;
    *(v1467 + 2) = 0u;
    *(v1467 + 3) = 0u;
    *(v1467 + 4) = 0u;
    *(v1467 + 5) = 0u;
    *(v1467 + 6) = 0u;
    *(v1467 + 7) = 0u;
    *(v1467 + 8) = 0u;
    *(v1467 + 9) = 0u;
    if (v1467 + 40 < v1467)
    {
      goto LABEL_2658;
    }

    v1383 = 0;
    v1384 = 0;
    v1385 = 0;
    do
    {
      v1386 = *&v1543[v1383];
      v1387 = &v1548 + 4 * v1386;
      v1388 = v1387 + 4;
      if (v1387 < &v1548 || v1388 > &v1558 || v1387 > v1388)
      {
        goto LABEL_2658;
      }

      v1391 = v1386;
      v1392 = *(&v1548 + v1386);
      v1393 = v1386 / 5;
      v1394 = v1391 - 5 * v1393;
      v1395 = (16 * v1393) | 8;
      v1396 = (v1393 << 8) | 0x80;
      if (v1394 == 4)
      {
        v1397 = 2;
      }

      else
      {
        v1396 = v1393;
        v1397 = v1391 - 5 * v1393;
      }

      if (v1394 == 3)
      {
        v1398 = 1;
      }

      else
      {
        v1395 = v1396;
        v1398 = v1397;
      }

      v1399 = 16 * v1393;
      if (v1394 == 2)
      {
        LOWORD(v1393) = v1393 << 8;
        v1400 = 2;
      }

      else
      {
        v1400 = v1391 - 5 * v1393;
      }

      if (v1394 == 1)
      {
        LOWORD(v1393) = v1399;
        v1401 = 1;
      }

      else
      {
        v1401 = v1400;
      }

      if (v1394 <= 2)
      {
        v1402 = v1401;
      }

      else
      {
        LOWORD(v1393) = v1395;
        v1402 = v1398;
      }

      v1403 = &v1467[v1391];
      v1406 = (v1403 + 1) <= v1382 && v1403 <= v1403 + 1 && v1403 >= v1467;
      if (v1392 < 1)
      {
        if (!v1406)
        {
          goto LABEL_2658;
        }

        *v1403 = -1.0;
        *(&v1544 + v1383) = -1082130432;
      }

      else
      {
        if (!v1406)
        {
          goto LABEL_2658;
        }

        *v1403 = 0.99988;
        *(&v1544 + v1383) = 1065353216;
        v1385 += 1 << v1402;
      }

      v1384 += v1393;
      v1383 += 4;
    }

    while (v1383 != 12);
    v1407 = 0;
    v1408 = &v1494[-v1519];
    v1409 = v1544;
    v1410 = *(&v1544 + 2);
    do
    {
      v1411 = &v1408[v1407];
      v1412 = &v1494[v1407 - v1525];
      v1413 = &v1494[v1407 - v1530];
      v1414 = &v1408[v1407 + 1];
      v1416 = v1414 <= v1499 && v1411 <= v1414 && v1411 >= v1497;
      v1417 = v1412 + 1;
      v1420 = v1416 && v1417 <= v1499 && v1412 <= v1417 && v1412 >= v1497;
      result = (v1413 + 1);
      if (!v1420 || result > v1499 || v1413 > result || v1413 < v1497)
      {
        goto LABEL_2658;
      }

      v1424 = (*&v1409 * *v1411) + (*(&v1409 + 1) * *v1412) + (v1410 * *v1413);
      *(v1466 + v1407 * 4) = v1424;
      ++v1407;
    }

    while (v1407 != 40);
    v1491->i16[0] = v1384;
    v1491->i16[1] = v1385;
    if (v1488)
    {
      v1425 = v1448 - 40;
      v1426 = v1448;
      v1427 = v1467;
      do
      {
        v1428 = &v1427[v1426];
        v1429 = &v1427[v1426 + 1];
        v1431 = &v1427[v1426] < v1467 || v1429 > v1382 || v1428 > v1429;
        v1432 = v1427 + 1;
        if (v1431 || v1427 < v1467 || v1432 > v1382 || v1427 > v1432)
        {
          goto LABEL_2658;
        }

        v1436 = *v1427++;
        *v1428 = *v1428 + (v1436 * v19);
        _CF = __CFADD__(v1425++, 1);
      }

      while (!_CF);
    }

    goto LABEL_1410;
  }

  if (v9 != 6)
  {
    goto LABEL_1411;
  }

  v24 = *a9;
  v23 = a9[1];
  if (*a9 > v23)
  {
    goto LABEL_2658;
  }

  v25 = v23 - v24 < 15 || a9[2] > v24;
  if (v25)
  {
    goto LABEL_2658;
  }

  v27 = *v11;
  v26 = *(v11 + 8);
  v28 = *(v11 + 16);
  memset(__b, 255, sizeof(__b));
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v1566 = v29;
  v1567 = v29;
  v1564 = v29;
  v1565 = v29;
  v1562 = v29;
  v1563 = v29;
  v1560 = v29;
  v1561 = v29;
  v1558 = v29;
  v1559 = v29;
  v1556 = v29;
  v1557 = v29;
  v1554 = v29;
  v1555 = v29;
  v1552 = v29;
  v1553 = v29;
  v1550 = v29;
  v1551 = v29;
  v1548 = v29;
  v1549 = v29;
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1544 = v30;
  v1545 = v30;
  memset(v1542, 170, sizeof(v1542));
  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  v32 = v19 != 0.0 && v1448 < 40;
  *v1541 = v30;
  *&v1541[16] = v30;
  if (v32)
  {
    v33 = v1448 - 40;
    v34 = &v27[v1448];
    v35 = v27;
    do
    {
      _CF = (v35 + 1) <= v26 && v35 <= v35 + 1 && v35 >= v28;
      v38 = v34 + 1;
      if (!_CF || v38 > v26 || v34 > v38 || v34 < v28)
      {
        goto LABEL_2658;
      }

      v42 = *v35++;
      *v34 = *v34 + (v42 * v19);
      ++v34;
      _CF = __CFADD__(v33++, 1);
    }

    while (!_CF);
  }

  if (v26 < v27)
  {
    goto LABEL_2658;
  }

  if (v28 > v27)
  {
    goto LABEL_2658;
  }

  if ((v26 - v27) < 157)
  {
    goto LABEL_2658;
  }

  v1442 = v28;
  v1444 = v26;
  v1437 = v32;
  v1439 = v24;
  cor_h_x(v27, v22, &v1558);
  set_sign12k2(&v1558, v13, &v1548, v1542[1].i64, 4, &v1544, 4, 8);
  cor_h(v27, &v1548, __b);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  v1578 = v43;
  v1577 = v43;
  v1576 = v43;
  v1575 = v43;
  v1574 = v43;
  v1573 = v43;
  v1572 = v43;
  v1571 = v43;
  v1570 = v43;
  v1569 = v43;
  v44 = (&v1542[1] + 4 * v1544);
  if (v44 < &v1542[1] || v44->i64 + 4 > v1543 || v44 > (v44->i64 + 4))
  {
    goto LABEL_2658;
  }

  v1468 = 0;
  v45 = v44->i32[0];
  *v1543 = xmmword_19B0A5860;
  *&v1543[16] = xmmword_19B0B20C0;
  v46 = &__b[40 * v45];
  v47 = &v46[v45];
  v48 = &v1558 + 4 * v45;
  v49 = v48 + 4 > __b || v48 > v48 + 4;
  v1472 = &v1558 + v45;
  v1474 = &v46[v45];
  v51 = !v49 && v48 >= &v1558;
  v1484 = v51;
  v1477 = v46 + 40;
  v1480 = &__b[40 * v45];
  v54 = v47 + 4 <= (v46 + 40) && v47 <= v47 + 4 && v47 >= v46;
  v1482 = v54;
  v1520 = 40 * v45;
  v1446 = v45;
  v55 = 1.0;
  v56 = -1.0;
  v1463 = 1;
  v1460 = 2;
  v1457 = 3;
  v1455 = 4;
  v1452 = 5;
  v1449 = 6;
  v1470 = 7;
  v57 = 1;
  do
  {
    v1495 = v57;
    v1492 = DWORD1(v1544);
    v58 = (&v1542[1] + 4 * SDWORD1(v1544));
    v59 = &v58->i32[1];
    v61 = v58 < &v1542[1] || v59 > v1543 || v58 > v59;
    if (v61 || !v1484)
    {
      goto LABEL_2658;
    }

    v1510 = v58->i32[0];
    v62 = &v1558 + v1510;
    v63 = v62 + 1;
    v64 = v62 < &v1558 || v63 > __b;
    v65 = v64 || v62 > v63;
    if (v65 || !v1482)
    {
      goto LABEL_2658;
    }

    v66 = &__b[40 * v1510];
    v67 = &v66[v1510];
    v68 = (v67 + 1);
    v69 = v67 < v66 || v68 > (v66 + 40);
    v70 = v69 || v67 > v68;
    v71 = &v1480[v1510];
    v72 = v71 + 1;
    v73 = !v70 && v71 >= v1480;
    v74 = !v73 || v72 > v1477;
    if (v74 || v71 > v72)
    {
      goto LABEL_2658;
    }

    LODWORD(v76) = HIDWORD(v1544);
    v77 = &__b[41 * HIDWORD(v1544)];
    if (v77 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v77 > v77 + 1)
    {
      goto LABEL_2658;
    }

    v78 = &__b[HIDWORD(v1544) + v1520];
    if (v78 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v78 > v78 + 1)
    {
      goto LABEL_2658;
    }

    v79 = &__b[40 * v1510 + HIDWORD(v1544)];
    if (v79 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v79 > v79 + 1)
    {
      goto LABEL_2658;
    }

    v80 = &v1569 + SHIDWORD(v1544);
    if (v80 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 1 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v80 > v80 + 1)
    {
      goto LABEL_2658;
    }

    LODWORD(v81) = DWORD2(v1544);
    LODWORD(v1536) = v1545;
    LODWORD(v82) = DWORD1(v1545);
    LODWORD(v1531) = DWORD2(v1545);
    v83 = HIDWORD(v1545);
    v84 = *v1472;
    v85 = *v62;
    v86 = *v1474;
    v87 = *v67;
    v88 = *v71;
    *v80 = *v77 + ((*v78 + *v79) * 2.0);
    v89 = v77 + 164;
    if (v77 + 164 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 165 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v89 > v77 + 165)
    {
      goto LABEL_2658;
    }

    v90 = v78 + 4;
    if (v78 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v90 > v78 + 5)
    {
      goto LABEL_2658;
    }

    v91 = v79 + 4;
    if (v79 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v91 > v79 + 5)
    {
      goto LABEL_2658;
    }

    v92 = v80 + 4;
    if (v80 + 4 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 5 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v92 > v80 + 5)
    {
      goto LABEL_2658;
    }

    *v92 = *v89 + ((*v90 + *v91) * 2.0);
    v93 = v77 + 328;
    if (v77 + 328 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 329 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v93 > v77 + 329)
    {
      goto LABEL_2658;
    }

    v94 = v78 + 8;
    if (v78 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v94 > v78 + 9)
    {
      goto LABEL_2658;
    }

    v95 = v79 + 8;
    if (v79 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v95 > v79 + 9)
    {
      goto LABEL_2658;
    }

    v96 = v80 + 8;
    if (v80 + 8 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 9 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v96 > v80 + 9)
    {
      goto LABEL_2658;
    }

    *v96 = *v93 + ((*v94 + *v95) * 2.0);
    v97 = v77 + 492;
    if (v77 + 492 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 493 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v97 > v77 + 493)
    {
      goto LABEL_2658;
    }

    v98 = v78 + 12;
    if (v78 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v98 > v78 + 13)
    {
      goto LABEL_2658;
    }

    v99 = v79 + 12;
    if (v79 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v99 > v79 + 13)
    {
      goto LABEL_2658;
    }

    v100 = v80 + 12;
    if (v80 + 12 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 13 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v100 > v80 + 13)
    {
      goto LABEL_2658;
    }

    *v100 = *v97 + ((*v98 + *v99) * 2.0);
    v101 = v77 + 656;
    if (v77 + 656 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 657 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v101 > v77 + 657)
    {
      goto LABEL_2658;
    }

    v102 = v78 + 16;
    if (v78 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v102 > v78 + 17)
    {
      goto LABEL_2658;
    }

    v103 = v79 + 16;
    if (v79 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v103 > v79 + 17)
    {
      goto LABEL_2658;
    }

    v104 = v80 + 16;
    if (v80 + 16 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 17 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v104 > v80 + 17)
    {
      goto LABEL_2658;
    }

    *v104 = *v101 + ((*v102 + *v103) * 2.0);
    v105 = v77 + 820;
    if (v77 + 820 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 821 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v105 > v77 + 821)
    {
      goto LABEL_2658;
    }

    v106 = v78 + 20;
    if (v78 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v106 > v78 + 21)
    {
      goto LABEL_2658;
    }

    v107 = v79 + 20;
    if (v79 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v107 > v79 + 21)
    {
      goto LABEL_2658;
    }

    v108 = v80 + 20;
    if (v80 + 20 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 21 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v108 > v80 + 21)
    {
      goto LABEL_2658;
    }

    *v108 = *v105 + ((*v106 + *v107) * 2.0);
    v109 = v77 + 984;
    if (v77 + 984 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 985 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v109 > v77 + 985)
    {
      goto LABEL_2658;
    }

    v110 = v78 + 24;
    if (v78 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v110 > v78 + 25)
    {
      goto LABEL_2658;
    }

    v111 = v79 + 24;
    if (v79 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v111 > v79 + 25)
    {
      goto LABEL_2658;
    }

    v112 = v80 + 24;
    if (v80 + 24 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 25 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v112 > v80 + 25)
    {
      goto LABEL_2658;
    }

    *v112 = *v109 + ((*v110 + *v111) * 2.0);
    v113 = v77 + 1148;
    if (v77 + 1148 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 1149 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v113 > v77 + 1149)
    {
      goto LABEL_2658;
    }

    v114 = v78 + 28;
    if (v78 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v114 > v78 + 29)
    {
      goto LABEL_2658;
    }

    v115 = v79 + 28;
    if (v79 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v115 > v79 + 29)
    {
      goto LABEL_2658;
    }

    v116 = v80 + 28;
    if (v80 + 28 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 29 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v116 > v80 + 29)
    {
      goto LABEL_2658;
    }

    *v116 = *v113 + ((*v114 + *v115) * 2.0);
    v117 = v77 + 1312;
    if (v77 + 1312 < __b)
    {
      goto LABEL_2658;
    }

    if (v77 + 1313 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v117 > v77 + 1313)
    {
      goto LABEL_2658;
    }

    v118 = v78 + 32;
    if (v78 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v118 > v78 + 33)
    {
      goto LABEL_2658;
    }

    v119 = v79 + 32;
    if (v79 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v119 > v79 + 33)
    {
      goto LABEL_2658;
    }

    v120 = v80 + 32;
    if (v80 + 32 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v80 + 33 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v120 > v80 + 33)
    {
      goto LABEL_2658;
    }

    *v120 = *v117 + ((*v118 + *v119) * 2.0);
    v121 = v77 + 1476;
    if (v77 + 1476 < __b)
    {
      goto LABEL_2658;
    }

    v122 = v77 + 1477;
    if (v122 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v121 > v122)
    {
      goto LABEL_2658;
    }

    v123 = v78 + 36;
    if (v78 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v78 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v123 > v78 + 37)
    {
      goto LABEL_2658;
    }

    v124 = v79 + 36;
    if (v79 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v79 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v124 > v79 + 37)
    {
      goto LABEL_2658;
    }

    v125 = v80 + 36;
    if (v80 + 36 < &v1569 || v80 + 37 > &v1579 || v125 > v80 + 37)
    {
      goto LABEL_2658;
    }

    v126 = v84 + v85;
    v127 = (v86 + v87) + (v88 * 2.0);
    *v125 = *v121 + ((*v123 + *v124) * 2.0);
    v128 = &__b[v81 + v1520];
    v1514 = 40 * v1510;
    v129 = &__b[40 * v1510 + v81];
    v130 = &__b[41 * v81];
    v131 = &__b[40 * v81 + v76];
    v132 = &v1558 + v81;
    v133 = &v1558 + 4 * v76;
    v134 = 4 * v76;
    v135 = 0.0;
    v136 = -1.0;
    v137 = 1.0;
    do
    {
      v138 = v132 + 1;
      v140 = v132 < &v1558 || v138 > __b || v132 > v138;
      if (v140 || v130 < __b || v130 + 1 > &v1569 || v130 > v130 + 1 || v128 < __b || v128 + 1 > &v1569 || v128 > v128 + 1 || v129 < __b || v129 + 1 > &v1569 || v129 > v129 + 1)
      {
        goto LABEL_2658;
      }

      v141 = 0;
      v142 = (v127 + *v130) + ((*v128 + *v129) * 2.0);
      do
      {
        v143 = &v133[v141 * 4];
        if (&v133[v141 * 4] < &v1558)
        {
          goto LABEL_2658;
        }

        if (v143 + 1 > __b)
        {
          goto LABEL_2658;
        }

        if (v143 > v143 + 1)
        {
          goto LABEL_2658;
        }

        v144 = &v80[v141];
        if (&v80[v141] < &v1569)
        {
          goto LABEL_2658;
        }

        v145 = &v80[v141 + 1];
        if (v145 > &v1579)
        {
          goto LABEL_2658;
        }

        if (v144 > v145)
        {
          goto LABEL_2658;
        }

        v146 = &v131[v141];
        if (&v131[v141] < __b)
        {
          goto LABEL_2658;
        }

        v147 = &v131[v141 + 1];
        if (v147 > &v1569 || v146 > v147)
        {
          goto LABEL_2658;
        }

        v148 = (v126 + *v132) + *v143;
        if ((v137 * (v148 * v148)) > (v136 * ((v142 + *v144) + (*v146 * 2.0))))
        {
          v76 = (v134 + v141 * 4) >> 2;
          v81 = (v132 - &v1558) >> 2;
          v137 = (v142 + *v144) + (*v146 * 2.0);
          v136 = v148 * v148;
          v135 = (v126 + *v132) + *v143;
        }

        v141 += 4;
      }

      while (&v133[v141 * 4] < &v1567 + 12);
      v132 += 4;
      v128 += 4;
      v129 += 4;
      v130 += 164;
      v131 += 160;
    }

    while (v132 <= &v1567 + 3);
    v149 = &__b[41 * v82];
    if (v149 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v149 > v149 + 1)
    {
      goto LABEL_2658;
    }

    v150 = &__b[v82 + v1520];
    if (v150 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v150 > v150 + 1)
    {
      goto LABEL_2658;
    }

    v151 = &__b[v82 + v1514];
    if (v151 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v151 > v151 + 1)
    {
      goto LABEL_2658;
    }

    v152 = &__b[40 * v81 + v82];
    if (v152 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v152 > v152 + 1)
    {
      goto LABEL_2658;
    }

    v153 = &__b[40 * v76 + v82];
    if (v153 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v153 > v153 + 1)
    {
      goto LABEL_2658;
    }

    v154 = &v1569 + v82;
    if (v154 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 1 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v154 > v154 + 1)
    {
      goto LABEL_2658;
    }

    *v154 = *v149 + ((((*v150 + *v151) + *v152) + *v153) * 2.0);
    v155 = v149 + 164;
    if (v149 + 164 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 165 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v155 > v149 + 165)
    {
      goto LABEL_2658;
    }

    v156 = v150 + 4;
    if (v150 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v156 > v150 + 5)
    {
      goto LABEL_2658;
    }

    v157 = v151 + 4;
    if (v151 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v157 > v151 + 5)
    {
      goto LABEL_2658;
    }

    v158 = v152 + 4;
    if (v152 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v158 > v152 + 5)
    {
      goto LABEL_2658;
    }

    v159 = v153 + 4;
    if (v153 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v159 > v153 + 5)
    {
      goto LABEL_2658;
    }

    v160 = v154 + 4;
    if (v154 + 4 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 5 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v160 > v154 + 5)
    {
      goto LABEL_2658;
    }

    *v160 = *v155 + ((((*v156 + *v157) + *v158) + *v159) * 2.0);
    v161 = v149 + 328;
    if (v149 + 328 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 329 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v161 > v149 + 329)
    {
      goto LABEL_2658;
    }

    v162 = v150 + 8;
    if (v150 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v162 > v150 + 9)
    {
      goto LABEL_2658;
    }

    v163 = v151 + 8;
    if (v151 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v163 > v151 + 9)
    {
      goto LABEL_2658;
    }

    v164 = v152 + 8;
    if (v152 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v164 > v152 + 9)
    {
      goto LABEL_2658;
    }

    v165 = v153 + 8;
    if (v153 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v165 > v153 + 9)
    {
      goto LABEL_2658;
    }

    v166 = v154 + 8;
    if (v154 + 8 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 9 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v166 > v154 + 9)
    {
      goto LABEL_2658;
    }

    *v166 = *v161 + ((((*v162 + *v163) + *v164) + *v165) * 2.0);
    v167 = v149 + 492;
    if (v149 + 492 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 493 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v167 > v149 + 493)
    {
      goto LABEL_2658;
    }

    v168 = v150 + 12;
    if (v150 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v168 > v150 + 13)
    {
      goto LABEL_2658;
    }

    v169 = v151 + 12;
    if (v151 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v169 > v151 + 13)
    {
      goto LABEL_2658;
    }

    v170 = v152 + 12;
    if (v152 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v170 > v152 + 13)
    {
      goto LABEL_2658;
    }

    v171 = v153 + 12;
    if (v153 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v171 > v153 + 13)
    {
      goto LABEL_2658;
    }

    v172 = v154 + 12;
    if (v154 + 12 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 13 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v172 > v154 + 13)
    {
      goto LABEL_2658;
    }

    *v172 = *v167 + ((((*v168 + *v169) + *v170) + *v171) * 2.0);
    v173 = v149 + 656;
    if (v149 + 656 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 657 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v173 > v149 + 657)
    {
      goto LABEL_2658;
    }

    v174 = v150 + 16;
    if (v150 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v174 > v150 + 17)
    {
      goto LABEL_2658;
    }

    v175 = v151 + 16;
    if (v151 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v175 > v151 + 17)
    {
      goto LABEL_2658;
    }

    v176 = v152 + 16;
    if (v152 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v176 > v152 + 17)
    {
      goto LABEL_2658;
    }

    v177 = v153 + 16;
    if (v153 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v177 > v153 + 17)
    {
      goto LABEL_2658;
    }

    v178 = v154 + 16;
    if (v154 + 16 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 17 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v178 > v154 + 17)
    {
      goto LABEL_2658;
    }

    *v178 = *v173 + ((((*v174 + *v175) + *v176) + *v177) * 2.0);
    v179 = v149 + 820;
    if (v149 + 820 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 821 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v179 > v149 + 821)
    {
      goto LABEL_2658;
    }

    v180 = v150 + 20;
    if (v150 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v180 > v150 + 21)
    {
      goto LABEL_2658;
    }

    v181 = v151 + 20;
    if (v151 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v181 > v151 + 21)
    {
      goto LABEL_2658;
    }

    v182 = v152 + 20;
    if (v152 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v182 > v152 + 21)
    {
      goto LABEL_2658;
    }

    v183 = v153 + 20;
    if (v153 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v183 > v153 + 21)
    {
      goto LABEL_2658;
    }

    v184 = v154 + 20;
    if (v154 + 20 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 21 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v184 > v154 + 21)
    {
      goto LABEL_2658;
    }

    *v184 = *v179 + ((((*v180 + *v181) + *v182) + *v183) * 2.0);
    v185 = v149 + 984;
    if (v149 + 984 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 985 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v185 > v149 + 985)
    {
      goto LABEL_2658;
    }

    v186 = v150 + 24;
    if (v150 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v186 > v150 + 25)
    {
      goto LABEL_2658;
    }

    v187 = v151 + 24;
    if (v151 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v187 > v151 + 25)
    {
      goto LABEL_2658;
    }

    v188 = v152 + 24;
    if (v152 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v188 > v152 + 25)
    {
      goto LABEL_2658;
    }

    v189 = v153 + 24;
    if (v153 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v189 > v153 + 25)
    {
      goto LABEL_2658;
    }

    v190 = v154 + 24;
    if (v154 + 24 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 25 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v190 > v154 + 25)
    {
      goto LABEL_2658;
    }

    *v190 = *v185 + ((((*v186 + *v187) + *v188) + *v189) * 2.0);
    v191 = v149 + 1148;
    if (v149 + 1148 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 1149 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v191 > v149 + 1149)
    {
      goto LABEL_2658;
    }

    v192 = v150 + 28;
    if (v150 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v192 > v150 + 29)
    {
      goto LABEL_2658;
    }

    v193 = v151 + 28;
    if (v151 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v193 > v151 + 29)
    {
      goto LABEL_2658;
    }

    v194 = v152 + 28;
    if (v152 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v194 > v152 + 29)
    {
      goto LABEL_2658;
    }

    v195 = v153 + 28;
    if (v153 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v195 > v153 + 29)
    {
      goto LABEL_2658;
    }

    v196 = v154 + 28;
    if (v154 + 28 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 29 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v196 > v154 + 29)
    {
      goto LABEL_2658;
    }

    *v196 = *v191 + ((((*v192 + *v193) + *v194) + *v195) * 2.0);
    v197 = v149 + 1312;
    if (v149 + 1312 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 1313 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v197 > v149 + 1313)
    {
      goto LABEL_2658;
    }

    v198 = v150 + 32;
    if (v150 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v198 > v150 + 33)
    {
      goto LABEL_2658;
    }

    v199 = v151 + 32;
    if (v151 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v199 > v151 + 33)
    {
      goto LABEL_2658;
    }

    v200 = v152 + 32;
    if (v152 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v200 > v152 + 33)
    {
      goto LABEL_2658;
    }

    v201 = v153 + 32;
    if (v153 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v201 > v153 + 33)
    {
      goto LABEL_2658;
    }

    v202 = v154 + 32;
    if (v154 + 32 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v154 + 33 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v202 > v154 + 33)
    {
      goto LABEL_2658;
    }

    *v202 = *v197 + ((((*v198 + *v199) + *v200) + *v201) * 2.0);
    v203 = v149 + 1476;
    if (v149 + 1476 < __b)
    {
      goto LABEL_2658;
    }

    if (v149 + 1477 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v203 > v149 + 1477)
    {
      goto LABEL_2658;
    }

    v204 = v150 + 36;
    if (v150 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v150 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v204 > v150 + 37)
    {
      goto LABEL_2658;
    }

    v205 = v151 + 36;
    if (v151 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v151 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v205 > v151 + 37)
    {
      goto LABEL_2658;
    }

    v206 = v152 + 36;
    if (v152 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v152 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v206 > v152 + 37)
    {
      goto LABEL_2658;
    }

    v207 = v153 + 36;
    if (v153 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v153 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v207 > v153 + 37)
    {
      goto LABEL_2658;
    }

    v208 = v154 + 36;
    if (v154 + 36 < &v1569 || v154 + 37 > &v1579 || v208 > v154 + 37)
    {
      goto LABEL_2658;
    }

    v209 = &v1558 + v1536;
    *v208 = *v203 + ((((*v204 + *v205) + *v206) + *v207) * 2.0);
    v210 = &v1558 + 4 * v82;
    v211 = 4 * v82;
    v212 = &__b[v1536 + v1520];
    v213 = &__b[v1536 + v1514];
    v1503 = 40 * v81;
    v214 = &__b[40 * v81 + v1536];
    v215 = &__b[40 * v76 + v1536];
    v216 = &__b[41 * v1536];
    v217 = &__b[40 * v1536 + v82];
    v218 = 0.0;
    v219 = -1.0;
    v220 = 1.0;
    do
    {
      v221 = v209 + 1;
      v223 = v209 < &v1558 || v221 > __b || v209 > v221;
      if (v223 || v216 < __b || v216 + 1 > &v1569 || v216 > v216 + 1 || v212 < __b || v212 + 1 > &v1569 || v212 > v212 + 1 || v213 < __b || v213 + 1 > &v1569 || v213 > v213 + 1 || v214 < __b || v214 + 1 > &v1569 || v214 > v214 + 1 || v215 < __b || v215 + 1 > &v1569 || v215 > v215 + 1)
      {
        goto LABEL_2658;
      }

      v224 = 0;
      v226 = (v137 + *v216) + ((((*v212 + *v213) + *v214) + *v215) * 2.0);
      do
      {
        v227 = &v210[v224 * 4];
        if (&v210[v224 * 4] < &v1558)
        {
          goto LABEL_2658;
        }

        if (v227 + 1 > __b)
        {
          goto LABEL_2658;
        }

        if (v227 > v227 + 1)
        {
          goto LABEL_2658;
        }

        v228 = &v154[v224];
        if (&v154[v224] < &v1569)
        {
          goto LABEL_2658;
        }

        v229 = &v154[v224 + 1];
        if (v229 > &v1579)
        {
          goto LABEL_2658;
        }

        if (v228 > v229)
        {
          goto LABEL_2658;
        }

        v230 = &v217[v224];
        if (&v217[v224] < __b)
        {
          goto LABEL_2658;
        }

        v231 = &v217[v224 + 1];
        if (v231 > &v1569 || v230 > v231)
        {
          goto LABEL_2658;
        }

        v225 = v135 + *v209;
        v232 = v225 + *v227;
        if ((v220 * (v232 * v232)) > (v219 * ((v226 + *v228) + (*v230 * 2.0))))
        {
          v82 = (v211 + v224 * 4) >> 2;
          v1536 = (v209 - &v1558) >> 2;
          v220 = (v226 + *v228) + (*v230 * 2.0);
          v219 = v232 * v232;
          v218 = v225 + *v227;
        }

        v224 += 4;
      }

      while (&v210[v224 * 4] <= &v1567 + 12);
      v212 += 4;
      v213 += 4;
      v214 += 4;
      v215 += 4;
      v216 += 164;
      v217 += 160;
      v209 += 4;
    }

    while (v209 < &v1567 + 3);
    v233 = &__b[41 * v83];
    if (v233 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v233 > v233 + 1)
    {
      goto LABEL_2658;
    }

    v234 = &__b[v83 + v1520];
    if (v234 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v234 > v234 + 1)
    {
      goto LABEL_2658;
    }

    v235 = &__b[v83 + v1514];
    if (v235 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v235 > v235 + 1)
    {
      goto LABEL_2658;
    }

    v236 = &__b[v1503 + v83];
    if (v236 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v236 > v236 + 1)
    {
      goto LABEL_2658;
    }

    v237 = &__b[40 * v76 + v83];
    if (v237 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v237 > v237 + 1)
    {
      goto LABEL_2658;
    }

    v238 = &__b[40 * v1536 + v83];
    if (v238 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v238 > v238 + 1)
    {
      goto LABEL_2658;
    }

    v239 = &__b[40 * v82 + v83];
    if (v239 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 1 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v239 > v239 + 1)
    {
      goto LABEL_2658;
    }

    v240 = &v1569 + v83;
    if (v240 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 1 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v240 > v240 + 1)
    {
      goto LABEL_2658;
    }

    *v240 = *v233 + ((((((*v234 + *v235) + *v236) + *v237) + *v238) + *v239) * 2.0);
    v241 = v233 + 164;
    if (v233 + 164 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 165 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v241 > v233 + 165)
    {
      goto LABEL_2658;
    }

    v242 = v234 + 4;
    if (v234 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v242 > v234 + 5)
    {
      goto LABEL_2658;
    }

    v243 = v235 + 4;
    if (v235 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v243 > v235 + 5)
    {
      goto LABEL_2658;
    }

    v244 = v236 + 4;
    if (v236 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v244 > v236 + 5)
    {
      goto LABEL_2658;
    }

    v245 = v237 + 4;
    if (v237 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v245 > v237 + 5)
    {
      goto LABEL_2658;
    }

    v246 = v238 + 4;
    if (v238 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v246 > v238 + 5)
    {
      goto LABEL_2658;
    }

    v247 = v239 + 4;
    if (v239 + 4 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 5 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v247 > v239 + 5)
    {
      goto LABEL_2658;
    }

    v248 = v240 + 4;
    if (v240 + 4 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 5 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v248 > v240 + 5)
    {
      goto LABEL_2658;
    }

    *v248 = *v241 + ((((((*v242 + *v243) + *v244) + *v245) + *v246) + *v247) * 2.0);
    v249 = v233 + 328;
    if (v233 + 328 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 329 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v249 > v233 + 329)
    {
      goto LABEL_2658;
    }

    v250 = v234 + 8;
    if (v234 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v250 > v234 + 9)
    {
      goto LABEL_2658;
    }

    v251 = v235 + 8;
    if (v235 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v251 > v235 + 9)
    {
      goto LABEL_2658;
    }

    v252 = v236 + 8;
    if (v236 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v252 > v236 + 9)
    {
      goto LABEL_2658;
    }

    v253 = v237 + 8;
    if (v237 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v253 > v237 + 9)
    {
      goto LABEL_2658;
    }

    v254 = v238 + 8;
    if (v238 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v254 > v238 + 9)
    {
      goto LABEL_2658;
    }

    v255 = v239 + 8;
    if (v239 + 8 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 9 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v255 > v239 + 9)
    {
      goto LABEL_2658;
    }

    v256 = v240 + 8;
    if (v240 + 8 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 9 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v256 > v240 + 9)
    {
      goto LABEL_2658;
    }

    *v256 = *v249 + ((((((*v250 + *v251) + *v252) + *v253) + *v254) + *v255) * 2.0);
    v257 = v233 + 492;
    if (v233 + 492 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 493 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v257 > v233 + 493)
    {
      goto LABEL_2658;
    }

    v258 = v234 + 12;
    if (v234 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v258 > v234 + 13)
    {
      goto LABEL_2658;
    }

    v259 = v235 + 12;
    if (v235 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v259 > v235 + 13)
    {
      goto LABEL_2658;
    }

    v260 = v236 + 12;
    if (v236 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v260 > v236 + 13)
    {
      goto LABEL_2658;
    }

    v261 = v237 + 12;
    if (v237 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v261 > v237 + 13)
    {
      goto LABEL_2658;
    }

    v262 = v238 + 12;
    if (v238 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v262 > v238 + 13)
    {
      goto LABEL_2658;
    }

    v263 = v239 + 12;
    if (v239 + 12 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 13 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v263 > v239 + 13)
    {
      goto LABEL_2658;
    }

    v264 = v240 + 12;
    if (v240 + 12 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 13 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v264 > v240 + 13)
    {
      goto LABEL_2658;
    }

    *v264 = *v257 + ((((((*v258 + *v259) + *v260) + *v261) + *v262) + *v263) * 2.0);
    v265 = v233 + 656;
    if (v233 + 656 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 657 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v265 > v233 + 657)
    {
      goto LABEL_2658;
    }

    v266 = v234 + 16;
    if (v234 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v266 > v234 + 17)
    {
      goto LABEL_2658;
    }

    v267 = v235 + 16;
    if (v235 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v267 > v235 + 17)
    {
      goto LABEL_2658;
    }

    v268 = v236 + 16;
    if (v236 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v268 > v236 + 17)
    {
      goto LABEL_2658;
    }

    v269 = v237 + 16;
    if (v237 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v269 > v237 + 17)
    {
      goto LABEL_2658;
    }

    v270 = v238 + 16;
    if (v238 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v270 > v238 + 17)
    {
      goto LABEL_2658;
    }

    v271 = v239 + 16;
    if (v239 + 16 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 17 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v271 > v239 + 17)
    {
      goto LABEL_2658;
    }

    v272 = v240 + 16;
    if (v240 + 16 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 17 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v272 > v240 + 17)
    {
      goto LABEL_2658;
    }

    *v272 = *v265 + ((((((*v266 + *v267) + *v268) + *v269) + *v270) + *v271) * 2.0);
    v273 = v233 + 820;
    if (v233 + 820 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 821 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v273 > v233 + 821)
    {
      goto LABEL_2658;
    }

    v274 = v234 + 20;
    if (v234 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v274 > v234 + 21)
    {
      goto LABEL_2658;
    }

    v275 = v235 + 20;
    if (v235 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v275 > v235 + 21)
    {
      goto LABEL_2658;
    }

    v276 = v236 + 20;
    if (v236 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v276 > v236 + 21)
    {
      goto LABEL_2658;
    }

    v277 = v237 + 20;
    if (v237 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v277 > v237 + 21)
    {
      goto LABEL_2658;
    }

    v278 = v238 + 20;
    if (v238 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v278 > v238 + 21)
    {
      goto LABEL_2658;
    }

    v279 = v239 + 20;
    if (v239 + 20 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 21 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v279 > v239 + 21)
    {
      goto LABEL_2658;
    }

    v280 = v240 + 20;
    if (v240 + 20 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 21 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v280 > v240 + 21)
    {
      goto LABEL_2658;
    }

    *v280 = *v273 + ((((((*v274 + *v275) + *v276) + *v277) + *v278) + *v279) * 2.0);
    v281 = v233 + 984;
    if (v233 + 984 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 985 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v281 > v233 + 985)
    {
      goto LABEL_2658;
    }

    v282 = v234 + 24;
    if (v234 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v282 > v234 + 25)
    {
      goto LABEL_2658;
    }

    v283 = v235 + 24;
    if (v235 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v283 > v235 + 25)
    {
      goto LABEL_2658;
    }

    v284 = v236 + 24;
    if (v236 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v284 > v236 + 25)
    {
      goto LABEL_2658;
    }

    v285 = v237 + 24;
    if (v237 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v285 > v237 + 25)
    {
      goto LABEL_2658;
    }

    v286 = v238 + 24;
    if (v238 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v286 > v238 + 25)
    {
      goto LABEL_2658;
    }

    v287 = v239 + 24;
    if (v239 + 24 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 25 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v287 > v239 + 25)
    {
      goto LABEL_2658;
    }

    v288 = v240 + 24;
    if (v240 + 24 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 25 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v288 > v240 + 25)
    {
      goto LABEL_2658;
    }

    *v288 = *v281 + ((((((*v282 + *v283) + *v284) + *v285) + *v286) + *v287) * 2.0);
    v289 = v233 + 1148;
    if (v233 + 1148 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 1149 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v289 > v233 + 1149)
    {
      goto LABEL_2658;
    }

    v290 = v234 + 28;
    if (v234 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v290 > v234 + 29)
    {
      goto LABEL_2658;
    }

    v291 = v235 + 28;
    if (v235 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v291 > v235 + 29)
    {
      goto LABEL_2658;
    }

    v292 = v236 + 28;
    if (v236 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v292 > v236 + 29)
    {
      goto LABEL_2658;
    }

    v293 = v237 + 28;
    if (v237 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v293 > v237 + 29)
    {
      goto LABEL_2658;
    }

    v294 = v238 + 28;
    if (v238 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v294 > v238 + 29)
    {
      goto LABEL_2658;
    }

    v295 = v239 + 28;
    if (v239 + 28 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 29 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v295 > v239 + 29)
    {
      goto LABEL_2658;
    }

    v296 = v240 + 28;
    if (v240 + 28 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 29 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v296 > v240 + 29)
    {
      goto LABEL_2658;
    }

    *v296 = *v289 + ((((((*v290 + *v291) + *v292) + *v293) + *v294) + *v295) * 2.0);
    v297 = v233 + 1312;
    if (v233 + 1312 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 1313 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v297 > v233 + 1313)
    {
      goto LABEL_2658;
    }

    v298 = v234 + 32;
    if (v234 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v298 > v234 + 33)
    {
      goto LABEL_2658;
    }

    v299 = v235 + 32;
    if (v235 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v299 > v235 + 33)
    {
      goto LABEL_2658;
    }

    v300 = v236 + 32;
    if (v236 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v300 > v236 + 33)
    {
      goto LABEL_2658;
    }

    v301 = v237 + 32;
    if (v237 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v301 > v237 + 33)
    {
      goto LABEL_2658;
    }

    v302 = v238 + 32;
    if (v238 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v302 > v238 + 33)
    {
      goto LABEL_2658;
    }

    v303 = v239 + 32;
    if (v239 + 32 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 33 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v303 > v239 + 33)
    {
      goto LABEL_2658;
    }

    v304 = v240 + 32;
    if (v240 + 32 < &v1569)
    {
      goto LABEL_2658;
    }

    if (v240 + 33 > &v1579)
    {
      goto LABEL_2658;
    }

    if (v304 > v240 + 33)
    {
      goto LABEL_2658;
    }

    *v304 = *v297 + ((((((*v298 + *v299) + *v300) + *v301) + *v302) + *v303) * 2.0);
    v305 = v233 + 1476;
    if (v233 + 1476 < __b)
    {
      goto LABEL_2658;
    }

    if (v233 + 1477 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v305 > v233 + 1477)
    {
      goto LABEL_2658;
    }

    v306 = v234 + 36;
    if (v234 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v234 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v306 > v234 + 37)
    {
      goto LABEL_2658;
    }

    v307 = v235 + 36;
    if (v235 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v235 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v307 > v235 + 37)
    {
      goto LABEL_2658;
    }

    v308 = v236 + 36;
    if (v236 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v236 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v308 > v236 + 37)
    {
      goto LABEL_2658;
    }

    v309 = v237 + 36;
    if (v237 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v237 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v309 > v237 + 37)
    {
      goto LABEL_2658;
    }

    v310 = v238 + 36;
    if (v238 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v238 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v310 > v238 + 37)
    {
      goto LABEL_2658;
    }

    v311 = v239 + 36;
    if (v239 + 36 < __b)
    {
      goto LABEL_2658;
    }

    if (v239 + 37 > &v1569)
    {
      goto LABEL_2658;
    }

    if (v311 > v239 + 37)
    {
      goto LABEL_2658;
    }

    v312 = v240 + 36;
    if (v240 + 36 < &v1569 || v240 + 37 > &v1579 || v312 > v240 + 37)
    {
      goto LABEL_2658;
    }

    v313 = (((*v306 + *v307) + *v308) + *v309) + *v310;
    v314 = &v1558 + v1531;
    v315 = &v1558 + 4 * v83;
    v316 = 4 * v83;
    *v312 = *v305 + ((v313 + *v311) * 2.0);
    v317 = &__b[v1531 + v1520];
    v318 = &__b[v1531 + v1514];
    v319 = &__b[v1503 + v1531];
    v320 = &__b[40 * v76 + v1531];
    v321 = &__b[40 * v1536 + v1531];
    v322 = &__b[40 * v82 + v1531];
    v323 = &__b[41 * v1531];
    v324 = &__b[40 * v1531 + v83];
    v325 = -1.0;
    v326 = 1.0;
    LOWORD(v311) = v83;
    do
    {
      v327 = v314 + 1;
      v329 = v314 < &v1558 || v327 > __b || v314 > v327;
      if (v329 || v323 < __b || v323 + 1 > &v1569 || v323 > v323 + 1 || v317 < __b || v317 + 1 > &v1569 || v317 > v317 + 1 || v318 < __b || v318 + 1 > &v1569 || v318 > v318 + 1 || v319 < __b || v319 + 1 > &v1569 || v319 > v319 + 1 || v320 < __b || v320 + 1 > &v1569 || v320 > v320 + 1 || v321 < __b || v321 + 1 > &v1569 || v321 > v321 + 1 || v322 < __b || v322 + 1 > &v1569 || v322 > v322 + 1)
      {
        goto LABEL_2658;
      }

      v330 = 0;
      v332 = (v220 + *v323) + ((((((*v317 + *v318) + *v319) + *v320) + *v321) + *v322) * 2.0);
      do
      {
        v333 = &v315[v330 * 4];
        if (&v315[v330 * 4] < &v1558)
        {
          goto LABEL_2658;
        }

        if (v333 + 1 > __b)
        {
          goto LABEL_2658;
        }

        if (v333 > v333 + 1)
        {
          goto LABEL_2658;
        }

        v334 = &v240[v330];
        if (&v240[v330] < &v1569)
        {
          goto LABEL_2658;
        }

        v335 = &v240[v330 + 1];
        if (v335 > &v1579)
        {
          goto LABEL_2658;
        }

        if (v334 > v335)
        {
          goto LABEL_2658;
        }

        v336 = &v324[v330];
        if (&v324[v330] < __b)
        {
          goto LABEL_2658;
        }

        v337 = &v324[v330 + 1];
        if (v337 > &v1569 || v336 > v337)
        {
          goto LABEL_2658;
        }

        v331 = v218 + *v314;
        if ((v326 * ((v331 + *v333) * (v331 + *v333))) > (v325 * ((v332 + *v334) + (*v336 * 2.0))))
        {
          v311 = ((v316 + v330 * 4) >> 2);
          v1531 = (v314 - &v1558) >> 2;
          v326 = (v332 + *v334) + (*v336 * 2.0);
          v325 = (v331 + *v333) * (v331 + *v333);
        }

        v330 += 4;
      }

      while (&v315[v330 * 4] <= &v1567 + 12);
      v317 += 4;
      v318 += 4;
      v319 += 4;
      v320 += 4;
      v321 += 4;
      v322 += 4;
      v323 += 164;
      v324 += 160;
      v314 += 4;
    }

    while (v314 < &v1567 + 3);
    if ((v55 * v325) > (v56 * v326))
    {
      v1463 = v1510;
      v1460 = v81;
      v1457 = v76;
      v1455 = v1536;
      v1468 = v1446;
      v1452 = v82;
      v1449 = v1531;
      v55 = v326;
      v56 = v325;
      v1470 = v311;
    }

    for (j = 0; j != 24; j += 4)
    {
      v339 = &v1544 + j + 8;
      v340 = &v1544 + j + 12;
      v342 = v339 < &v1544 || v340 > &v1546 || v339 > v340;
      v343 = (&v1544 + j + 4);
      if (v342 || v343 < &v1544)
      {
        goto LABEL_2658;
      }

      *v343 = *v339;
    }

    HIDWORD(v1545) = v1492;
    v57 = v1495 + 1;
  }

  while (v1495 != 4);
  *v1543 = v1468;
  *&v1543[4] = v1463;
  *&v1543[8] = v1460;
  *&v1543[12] = v1457;
  *&v1543[16] = v1455;
  *&v1543[20] = v1452;
  *&v1543[24] = v1449;
  *&v1543[28] = v1470;
  v345 = (v1467 + 40);
  *&v346 = 0xAAAAAAAAAAAAAAAALL;
  *(&v346 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v1570 = v346;
  v1569 = v346;
  *v1467 = 0u;
  *(v1467 + 1) = 0u;
  *(v1467 + 2) = 0u;
  *(v1467 + 3) = 0u;
  *(v1467 + 4) = 0u;
  *(v1467 + 5) = 0u;
  *(v1467 + 6) = 0u;
  *(v1467 + 7) = 0u;
  *(v1467 + 8) = 0u;
  *(v1467 + 9) = 0u;
  if (v1467 + 40 < v1467)
  {
    goto LABEL_2658;
  }

  for (k = 0; k != 16; k += 4)
  {
    v348 = &v1541[k + 4];
    if (&v1541[k] < v1541 || v348 > v1542 || &v1541[k] > v348)
    {
      goto LABEL_2658;
    }

    *&v1541[k] = -1;
    v1542[0].i32[k / 4] = -1;
  }

  for (m = 0; m != 32; m += 4)
  {
    v352 = *&v1543[m];
    v353 = &v1548 + 4 * v352;
    v354 = v353 + 4;
    if (v353 < &v1548 || v354 > &v1558 || v353 > v354)
    {
      goto LABEL_2658;
    }

    v357 = *(&v1548 + v352);
    v358 = v357 < 1;
    v359 = &v1467[v352];
    v360 = v359 + 1;
    v361 = v359 < v1467 || v360 > v345;
    if (v361 || v359 > v360)
    {
      goto LABEL_2658;
    }

    v363 = v352 & 3;
    v364 = v357 < 1 ? -1 : 1;
    *v359 = flt_19B0AFB88[v357 < 1] + *v359;
    *(&v1569 + m) = v364;
    v365 = (v1541 | (4 * v363));
    if (v365 < v1541 || v365 + 1 > v1542 || v365 > v365 + 1)
    {
      goto LABEL_2658;
    }

    v366 = v352 >> 2;
    v367 = *v365;
    if (*v365 < 0)
    {
      *v365 = v366;
      v374 = (v1542 & 0xFFFFFFFFFFFFFFF3 | (4 * (v363 & 3)));
      if (v374 < v1542 || (v374->i64 + 4) > &v1542[1] || v374 > (v374->i64 + 4))
      {
        goto LABEL_2658;
      }

      v374->i32[0] = v358;
    }

    else
    {
      v368 = (v1542 | (4 * v363));
      if (v368 < v1542 || (v368->i64 + 4) > &v1542[1] || v368 > (v368->i64 + 4))
      {
        goto LABEL_2658;
      }

      v369 = (v357 < 1) ^ v368->i32[0];
      v370 = &v1541[4 * (v363 | 4)];
      v373 = v370 + 1 <= v1542 && v370 <= v370 + 1 && v370 >= v1541;
      if (v369)
      {
        if (v367 <= v366)
        {
          goto LABEL_809;
        }
      }

      else if (v367 > v366)
      {
LABEL_809:
        if (!v373)
        {
          goto LABEL_2658;
        }

        *v370 = v367;
        *v365 = v366;
        v368->i32[0] = v358;
        continue;
      }

      if (!v373)
      {
        goto LABEL_2658;
      }

      *v370 = v366;
    }
  }

  v375 = 0;
  v376 = &v27[-v1468];
  v377 = &v27[-v1463];
  v378 = &v27[-v1460];
  v379 = &v27[-v1457];
  v380 = &v27[-v1455];
  v381 = &v27[-v1452];
  v382 = &v27[-v1449];
  v383 = &v27[-v1470];
  v384 = vcvt_f32_s32(*&v1569);
  v385 = SDWORD2(v1569);
  v386 = SHIDWORD(v1569);
  v387 = v1570;
  v388 = SDWORD1(v1570);
  v389 = SDWORD2(v1570);
  v390 = SHIDWORD(v1570);
  do
  {
    v391 = &v376[v375];
    v392 = &v376[v375 + 1];
    if (v392 > v1444)
    {
      goto LABEL_2658;
    }

    if (v391 > v392)
    {
      goto LABEL_2658;
    }

    if (v391 < v1442)
    {
      goto LABEL_2658;
    }

    v393 = &v377[v375 + 1];
    if (v393 > v1444)
    {
      goto LABEL_2658;
    }

    v394 = &v377[v375];
    if (&v377[v375] > v393)
    {
      goto LABEL_2658;
    }

    if (v394 < v1442)
    {
      goto LABEL_2658;
    }

    v395 = &v378[v375 + 1];
    if (v395 > v1444)
    {
      goto LABEL_2658;
    }

    v396 = &v378[v375];
    if (&v378[v375] > v395)
    {
      goto LABEL_2658;
    }

    if (v396 < v1442)
    {
      goto LABEL_2658;
    }

    v397 = &v379[v375 + 1];
    if (v397 > v1444)
    {
      goto LABEL_2658;
    }

    v398 = &v379[v375];
    if (&v379[v375] > v397)
    {
      goto LABEL_2658;
    }

    if (v398 < v1442)
    {
      goto LABEL_2658;
    }

    v399 = &v380[v375 + 1];
    if (v399 > v1444)
    {
      goto LABEL_2658;
    }

    v400 = &v380[v375];
    if (&v380[v375] > v399)
    {
      goto LABEL_2658;
    }

    if (v400 < v1442)
    {
      goto LABEL_2658;
    }

    v401 = &v381[v375 + 1];
    if (v401 > v1444)
    {
      goto LABEL_2658;
    }

    v402 = &v381[v375];
    if (&v381[v375] > v401)
    {
      goto LABEL_2658;
    }

    if (v402 < v1442)
    {
      goto LABEL_2658;
    }

    v403 = &v382[v375 + 1];
    if (v403 > v1444)
    {
      goto LABEL_2658;
    }

    v404 = &v382[v375];
    if (&v382[v375] > v403)
    {
      goto LABEL_2658;
    }

    if (v404 < v1442)
    {
      goto LABEL_2658;
    }

    v405 = &v383[v375 + 1];
    if (v405 > v1444)
    {
      goto LABEL_2658;
    }

    v406 = &v383[v375];
    if (&v383[v375] > v405 || v406 < v1442)
    {
      goto LABEL_2658;
    }

    v407.i32[0] = *v391;
    v407.i32[1] = *v394;
    v407.f32[0] = vaddvq_f64(vcvtq_f64_f32(vmul_f32(v407, v384))) + (*v396 * v385) + (*v398 * v386) + (*v400 * v387) + (*v402 * v388) + (*v404 * v389) + (*v406 * v390);
    result = v1466;
    *(v1466 + v375 * 4) = v407.i32[0];
    ++v375;
  }

  while (v375 != 40);
  *v1439 = vmovn_s32(v1542[0]);
  v1439[1].i16[0] = v1541[0] & 1 | (2 * (v1541[16] & 1)) & 0xFB | (4 * (v1541[4] & 1)) | (8 * (5 * (*&v1541[16] >> 1) + (*v1541 >> 1) + 25 * (*&v1541[4] >> 1)));
  v1439[1].i16[1] = v1541[8] & 1 | (2 * (v1541[24] & 1)) & 0xFB | (4 * (v1541[20] & 1)) | (8 * (5 * (*&v1541[24] >> 1) + (*&v1541[8] >> 1) + 25 * (*&v1541[20] >> 1)));
  v409 = *&v1541[12] >> 1;
  if ((v1541[28] & 2) != 0)
  {
    v409 = 4 - (*&v1541[12] >> 1);
  }

  v1439[1].i16[2] = v1541[12] & 1 | (2 * (v1541[28] & 1)) | ((41952 * (v409 + 5 * (*&v1541[28] >> 1)) + 15732) >> 13) & 0xFFFC;
  if (v1437)
  {
    v410 = v1448 - 40;
    v411 = v1467;
    v412 = &v1467[v1448];
    while (v411 >= v1467 && (v411 + 1) <= v345 && v411 <= v411 + 1 && v412 >= v1467 && (v412 + 1) <= v345 && v412 <= v412 + 1)
    {
      v413 = *v411++;
      *v412 = *v412 + (v413 * v19);
      ++v412;
      _CF = __CFADD__(v410++, 1);
      if (_CF)
      {
        goto LABEL_857;
      }
    }

    goto LABEL_2658;
  }

LABEL_857:
  v414 = 14;
LABEL_2475:
  *a9 = (*a9 + v414);
  return result;
}