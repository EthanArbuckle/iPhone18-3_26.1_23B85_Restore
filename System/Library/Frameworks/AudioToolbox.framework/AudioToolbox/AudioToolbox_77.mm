void E_ACELP_gains_quantise(unint64_t a1, int a2, _WORD *a3, int *a4, float *a5, int a6, __int16 *a7, float a8)
{
  if (a2 == 6)
  {
    v10 = 0;
    if (a6 == 1)
    {
      v11 = 48;
    }

    else
    {
      v11 = 64;
    }

    v12 = &E_ROM_qua_gain6b;
    v13 = &E_ROM_qua_gain7b;
  }

  else
  {
    v10 = 0;
    if (a6 == 1)
    {
      v14 = 37;
    }

    else
    {
      v14 = 64;
    }

    v15 = &dword_19B316A50;
    v12 = &E_ROM_qua_gain7b;
    do
    {
      v16 = v15 + 1;
      if (v15 < &E_ROM_qua_gain7b || v16 > &E_ROM_isp || v15 > v16)
      {
        goto LABEL_109;
      }

      v19 = *v15;
      v15 += 2;
      if (v19 < a8)
      {
        ++v10;
      }

      --v14;
    }

    while (v14);
    v13 = &E_ROM_isp;
    v11 = 64;
  }

  v87 = -1431655766;
  v20 = E_UTIL_dot_product12(a1, a1, &v87);
  v21 = v87;
  v22 = ldexp(1.0, v87 - 49) * v20;
  v23 = log10f(v22 * 0.015625);
  if (v20 < 1)
  {
    LOWORD(v31) = 0;
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v20 >> (v21 & 1);
    v25 = &E_ROM_isqrt[v24 >> 25];
    v26 = v25 - 32;
    v27 = v25 - 30;
    if (v25 - 32 < E_ROM_isqrt || v27 > E_ROM_hp_gain || v26 > v27)
    {
      goto LABEL_109;
    }

    v30 = v25 - 28;
    if (v30 > E_ROM_hp_gain || v27 > v30)
    {
      goto LABEL_109;
    }

    v31 = -(((v21 - 24) - 1) >> 1);
    v32 = ((v24 >> 9) & 0xFFFE) * (*v27 - *v26) + (*v26 << 16);
  }

  v33 = (3277 * a7[1] + (*a7 << 12) + 2458 * a7[2] + 1638 * a7[3] + 251658240) >> 15;
  v34 = (5443 * v33) >> 7;
  v35 = &E_ROM_pow2[v34 >> 11];
  v36 = v35 + 1;
  v38 = v35 < E_ROM_pow2 || v36 > E_ROM_isqrt || v35 > v36;
  v39 = v35 + 2;
  if (!v38 && v39 <= E_ROM_isqrt && v36 <= v39)
  {
    v42 = vcvtd_n_f64_s32(v33, 8uLL);
    v43 = ((v35[1] - *v35) * ((32 * v34) & 0xFFC0) + (*v35 << 16) + 0x8000) >> 16;
    v44 = __exp10(((v42 - (v23 * 10.0)) * 0.05));
    v45 = 0;
    v46 = 0;
    v47 = v44;
    v52 = &v12[2 * v10 + 1];
    v53 = 3.4028e38;
    do
    {
      v55 = v52 - 1 < v12 || v52 > v13 || v52 - 1 > v52;
      v56 = v52 + 1;
      if (v55 || v56 > v13 || v52 > v56)
      {
        goto LABEL_109;
      }

      v59 = *v52 * v47;
      v48 = a5[1];
      v49 = a5[2];
      v50 = a5[3];
      v51 = a5[4];
      if ((((((v48 * *(v52 - 1)) + ((*(v52 - 1) * *(v52 - 1)) * *a5)) + ((v59 * v59) * v49)) + (v59 * v50)) + ((*(v52 - 1) * v59) * v51)) < v53)
      {
        v53 = ((((v48 * *(v52 - 1)) + ((*(v52 - 1) * *(v52 - 1)) * *a5)) + ((v59 * v59) * v49)) + (v59 * v50)) + ((*(v52 - 1) * v59) * v51);
        v46 = v45;
      }

      ++v45;
      v52 += 2;
    }

    while (v11 != v45);
    v60 = &v12[2 * v46 + 2 * v10];
    v61 = v60 + 1;
    v62 = v60 < v12 || v61 > v13;
    if (!v62 && v60 <= v61)
    {
      *a3 = vcvtms_s32_f32((*v60 * 16384.0) + 0.5);
      v64 = &v12[2 * v46 + 2 * v10];
      v65 = (v64 + 1);
      v66 = (v64 + 2);
      v67 = v65 < v12 || v66 > v13;
      if (!v67 && v65 <= v66)
      {
        v69 = 0;
        v70 = v32 >> (3 - v31);
        if (v31 > 3)
        {
          v70 = v32 << (v31 - 3);
        }

        v71 = vcvtms_s32_f32((*v65 * 2048.0) + 0.5);
        if (v71 <= -32768)
        {
          v71 = -32768;
        }

        if (v71 >= 0x7FFF)
        {
          v71 = 0x7FFF;
        }

        v72 = (v43 * v71) >> (9 - BYTE2(v34));
        if ((HIWORD(v34) - 9) >= 0)
        {
          v72 = (v43 * v71) << (BYTE2(v34) - 9);
        }

        v73 = ((v72 >> 15) & 0xFFFFFFFE) * (v70 >> 16) + 2 * (((v70 >> 16) * (v72 >> 1)) >> 15);
        if (v73 >= 0xFFFFFFF)
        {
          v74 = 0x7FFFFFFF;
        }

        else
        {
          v74 = 8 * v73;
        }

        *a4 = v74;
        if (v71)
        {
          if (v71 == -1)
          {
            v69 = 31;
          }

          else
          {
            v75 = v71 ^ (v71 >> 31);
            if (v75 > 0x3FFFFFFF)
            {
              v69 = 0;
            }

            else
            {
              v69 = 0;
              do
              {
                v76 = v75 >> 29;
                v75 *= 2;
                ++v69;
              }

              while (!v76);
            }
          }
        }

        v77 = v71 << v69;
        if (v77 < 1)
        {
          LOWORD(v84) = -2279;
          goto LABEL_108;
        }

        v78 = &E_ROM_log2[2 * (v77 >> 25)];
        v79 = v78 - 64;
        v80 = v78 - 62;
        if (v78 - 64 >= E_ROM_log2 && v80 <= &word_19B336196 && v79 <= v80)
        {
          v83 = v78 - 60;
          if (v83 <= &word_19B336196 && v80 <= v83)
          {
            v84 = (49320 * (19 - v69) + ((24660 * (*v79 + (((*v80 - *v79) * ((v77 >> 10) & 0x7FFF)) >> 15))) >> 14)) >> 3;
LABEL_108:
            a7[3] = a7[2];
            *(a7 + 1) = *a7;
            *a7 = v84;
            return;
          }
        }
      }
    }
  }

LABEL_109:
  __break(0x5519u);
}

double E_UTIL_bp_6k_7k(void *__src, unint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 80);
  v34[4] = *(a2 + 64);
  v34[5] = v4;
  v34[6] = *(a2 + 96);
  v35 = *(a2 + 112);
  v5 = *(a2 + 16);
  v34[0] = *a2;
  v34[1] = v5;
  v6 = *(a2 + 48);
  v34[2] = *(a2 + 32);
  v34[3] = v6;
  memcpy(v36, __src, sizeof(v36));
  v7 = 0;
  v8 = v34;
  do
  {
    if (v8 + 3 > &v37)
    {
      goto LABEL_31;
    }

    v9 = 0;
    v10 = *v8 * -0.001005;
    v11 = v8[1] * 0.001428;
    v12 = v8[2] * 0.000965;
    v13 = 0.0;
    v14 = -1;
    do
    {
      v15 = &v8[v9 + 3];
      v16 = &v8[v9 + 4];
      if (v15 < v34 || v16 > &v37 || v15 > v16)
      {
        goto LABEL_31;
      }

      if (v16 < v34)
      {
        goto LABEL_31;
      }

      v19 = &v8[v9 + 5];
      if (v19 > &v37)
      {
        goto LABEL_31;
      }

      if (v16 > v19)
      {
        goto LABEL_31;
      }

      v20 = &E_ROM_fir_6k_7k[v9 + 5];
      if (v20 > filter5_39s320_120)
      {
        goto LABEL_31;
      }

      v21 = &E_ROM_fir_6k_7k[v9 + 4];
      if (v21 > v20)
      {
        goto LABEL_31;
      }

      v22 = &v8[v9 + 5];
      if (v22 < v34)
      {
        goto LABEL_31;
      }

      v23 = &v8[v9 + 6];
      if (v23 > &v37)
      {
        goto LABEL_31;
      }

      if (v22 > v23)
      {
        goto LABEL_31;
      }

      v24 = &E_ROM_fir_6k_7k[v9 + 5];
      if (v24 < E_ROM_fir_6k_7k)
      {
        goto LABEL_31;
      }

      v25 = &E_ROM_fir_6k_7k[v9 + 6];
      if (v25 > filter5_39s320_120)
      {
        goto LABEL_31;
      }

      if (v24 > v25)
      {
        goto LABEL_31;
      }

      v26 = &v8[v9 + 6];
      if (v26 < v34)
      {
        goto LABEL_31;
      }

      v27 = &v8[v9 + 7];
      if (v27 > &v37)
      {
        goto LABEL_31;
      }

      if (v26 > v27)
      {
        goto LABEL_31;
      }

      v28 = &E_ROM_fir_6k_7k[v9 + 6];
      if (v28 < E_ROM_fir_6k_7k)
      {
        goto LABEL_31;
      }

      v29 = &E_ROM_fir_6k_7k[v9 + 7];
      if (v29 > filter5_39s320_120 || v28 > v29)
      {
        goto LABEL_31;
      }

      v13 = v13 + (*v15 * E_ROM_fir_6k_7k[v9 + 3]);
      v10 = v10 + (*v16 * *v21);
      v11 = v11 + (*v22 * *v24);
      v12 = v12 + (*v26 * *v28);
      v14 += 4;
      v9 += 4;
    }

    while (v14 < 0x1B);
    *(__src + v7++) = (v12 + (v11 + (v10 + v13))) * 0.25;
    ++v8;
  }

  while (v7 != 80);
  v30 = *&v36[35];
  *(a2 + 64) = *&v36[33];
  *(a2 + 80) = v30;
  *(a2 + 96) = *&v36[37];
  *(a2 + 112) = v36[39];
  v31 = *&v36[27];
  *a2 = *&v36[25];
  *(a2 + 16) = v31;
  result = *&v36[29];
  v33 = *&v36[31];
  *(a2 + 32) = *&v36[29];
  *(a2 + 48) = v33;
  if (a2 + 120 < a2)
  {
LABEL_31:
    __break(0x5519u);
  }

  return result;
}

unint64_t E_UTIL_dot_product12(unint64_t result, unint64_t a2, _DWORD *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 128;
  v9 = a2 + 128;
  v10 = -4;
  do
  {
    v11 = (result + v3);
    v12 = (result + v3 + 2);
    v14 = result + v3 < result || v12 > v8 || v11 > v12;
    v15 = (a2 + v3);
    v16 = a2 + v3 + 2;
    v19 = v14 || v15 < a2 || v16 > v9 || v15 > v16;
    if (v19 || v12 < result || (v22 = *v11, v21 = v11 + 2, v20 = v22, v21 > v8) || v12 > v21 || (v23 = (a2 + v3 + 2), v23 < a2) || (v24 = a2 + v3 + 4, v24 > v9) || v23 > v24 || (v25 = (result + v3 + 4), v25 < result) || (v26 = result + v3 + 6, v26 > v8) || v25 > v26 || (v27 = (a2 + v3 + 4), v27 < a2) || (v28 = a2 + v3 + 6, v28 > v9) || v27 > v28 || (v29 = (result + v3 + 6), v29 < result) || (v30 = result + v3 + 8, v30 > v8) || v29 > v30 || (v31 = (a2 + v3 + 6), v31 < a2) || (v32 = a2 + v3 + 8, v32 > v9) || v31 > v32)
    {
      __break(0x5519u);
      return result;
    }

    v4 += *v15 * v20;
    v5 += *v23 * *v12;
    v6 += *v27 * *v25;
    v7 += *v31 * *v29;
    v10 += 4;
    v3 += 8;
  }

  while (v10 < 0x3C);
  v33 = vmin_s32(vmax_s32(vadd_s32(vmin_s32(vmax_s32(__PAIR64__(v5, v4), 0xC0000000C0000000), 0xC0000000C0000000), vmin_s32(vmax_s32(__PAIR64__(v7, v6), 0xC0000000C0000000), 0xC0000000C0000000)), 0xC0000000C0000000), 0xC0000000C0000000);
  v34 = vadd_s32(v33, vdup_lane_s32(v33, 1)).u32[0];
  if (v34 <= -1073741824)
  {
    v35 = -1073741824;
  }

  else
  {
    v35 = v34;
  }

  if (v35 >= 0x3FFFFFFF)
  {
    v36 = 0x3FFFFFFF;
  }

  else
  {
    v36 = v35;
  }

  v37 = (2 * v36) | 1;
  if (v34 == -1)
  {
    v41 = 31;
  }

  else
  {
    v38 = v37 ^ (v36 >> 30);
    if (v38 > 0x3FFFFFFF)
    {
      v41 = 0;
    }

    else
    {
      v39 = 0;
      do
      {
        v40 = v38 >> 29;
        v38 *= 2;
        ++v39;
      }

      while (!v40);
      v41 = v39;
    }
  }

  result = (v37 << v41);
  *a3 = 30 - v41;
  return result;
}

uint64_t E_ACELP_quant_4p_4N(uint64_t a1, char a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2 - 1;
  v6 = 1 << (a2 - 1);
  memset(v21, 170, sizeof(v21));
  do
  {
    v7 = *(a1 + v2);
    if ((v7 & v6) != 0)
    {
      v8 = v21 + 4 * v4;
      v9 = v8 + 4;
      if (v8 < v21 || v9 > &v21[2] || v8 >= v9)
      {
        goto LABEL_33;
      }

      ++v4;
    }

    else
    {
      v8 = &v21[2] + 4 * v3;
      v12 = v8 + 4;
      if (v8 < &v21[2] || v12 > &v22 || v8 >= v12)
      {
LABEL_33:
        __break(0x5519u);
      }

      ++v3;
    }

    *v8 = v7;
    v2 += 4;
  }

  while (v2 != 16);
  v15 = 0;
  v16 = 4 * a2;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v15 = (v21[0] & (v6 - 1)) + (apac::ACELPEncoder::ACELP_quant_3p_3N1(LODWORD(v21[2]), HIDWORD(v21[2]), v21[3], v5) << a2) + (v6 & ((LODWORD(v21[0]) << 27) >> 31));
      }

      else if (v3 == 4)
      {
        v15 = apac::ACELPEncoder::ACELP_quant_4p_4N1(LODWORD(v21[2]), HIDWORD(v21[2]), LODWORD(v21[3]), SHIDWORD(v21[3]), v5);
      }

      return v15 + ((v3 & 3) << (v16 - 2));
    }

    v18 = apac::ACELPEncoder::ACELP_quant_2p_2N1(LODWORD(v21[2]), SHIDWORD(v21[2]), v5) << ((2 * v5) | 1);
    v19 = apac::ACELPEncoder::ACELP_quant_2p_2N1(LODWORD(v21[0]), SHIDWORD(v21[0]), v5);
LABEL_31:
    v15 = v19 + v18;
    return v15 + ((v3 & 3) << (v16 - 2));
  }

  if (!v3)
  {
    v18 = 1 << (v16 - 3);
    v19 = apac::ACELPEncoder::ACELP_quant_4p_4N1(LODWORD(v21[0]), HIDWORD(v21[0]), LODWORD(v21[1]), SHIDWORD(v21[1]), v5);
    goto LABEL_31;
  }

  if (v3 == 1)
  {
    v17 = ((v6 & ((LODWORD(v21[2]) << 27) >> 31)) + (v21[2] & (v6 - 1))) << (3 * (a2 - 1) + 1);
    v15 = v17 + apac::ACELPEncoder::ACELP_quant_3p_3N1(LODWORD(v21[0]), HIDWORD(v21[0]), v21[1], v5);
  }

  return v15 + ((v3 & 3) << (v16 - 2));
}

uint64_t E_ACELP_quant_5p_5N(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  *&v27[4] = *MEMORY[0x1E69E9840];
  memset(v26, 170, sizeof(v26));
  v6 = a2 - 1;
  v7 = 1 << (a2 - 1);
  memset(v24, 170, sizeof(v24));
  do
  {
    v8 = *(a1 + v3);
    if ((v8 & v7) != 0)
    {
      v9 = &v24[v5];
      v10 = v9 + 1;
      if (v9 < v24 || v10 > &v25 || v9 >= v10)
      {
        goto LABEL_36;
      }

      ++v5;
    }

    else
    {
      v9 = &v26[v4];
      v13 = v9 + 1;
      if (v9 < v26 || v13 > v27 || v9 >= v13)
      {
LABEL_36:
        __break(0x5519u);
      }

      ++v4;
    }

    *v9 = v8;
    v3 += 4;
  }

  while (v3 != 20);
  result = 0;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v26[0], v26[1], v26[2], v6) << ((2 * a2) | 1);
        v22 = v24[0];
        v23 = v24[1];
        break;
      case 4:
        v21 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v26[0], v26[1], v26[2], v6) << ((2 * a2) | 1);
        v22 = v26[3];
        v23 = v24[0];
        break;
      case 5:
        v21 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v26[0], v26[1], v26[2], v6) << ((2 * a2) | 1);
        v22 = v26[3];
        v23 = v26[4];
        break;
      default:
        return result;
    }

    return apac::ACELPEncoder::ACELP_quant_2p_2N1(v22, v23, a2) + v21;
  }

  else
  {
    switch(v4)
    {
      case 0:
        v17 = 1 << (5 * a2 - 1);
        v18 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v24[0], v24[1], v24[2], v6) << ((2 * a2) | 1);
        v19 = v24[3];
        v20 = v24[4];
        return v18 + v17 + apac::ACELPEncoder::ACELP_quant_2p_2N1(v19, v20, a2);
      case 1:
        v17 = 1 << (5 * a2 - 1);
        v18 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v24[0], v24[1], v24[2], v6) << ((2 * a2) | 1);
        v19 = v24[3];
        v20 = v26[0];
        return v18 + v17 + apac::ACELPEncoder::ACELP_quant_2p_2N1(v19, v20, a2);
      case 2:
        v17 = 1 << (5 * a2 - 1);
        v18 = apac::ACELPEncoder::ACELP_quant_3p_3N1(v24[0], v24[1], v24[2], v6) << ((2 * a2) | 1);
        v19 = v26[0];
        v20 = v26[1];
        return v18 + v17 + apac::ACELPEncoder::ACELP_quant_2p_2N1(v19, v20, a2);
    }
  }

  return result;
}

unint64_t E_LPC_isp_a_conversion(__int16 *a1, _WORD *a2)
{
  *&v59[12] = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v58[12] = v4;
  v57 = v4;
  *v58 = v4;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v54[0] = v4;
  v54[1] = v4;
  v5 = (a1 + 16);
  v51 = a1;
  v52 = a1 + 16;
  v53 = a1;
  v48 = &v57;
  v49 = v59;
  v50 = &v57;
  E_LPC_isp_pol_get(&v51, &v48, 8);
  v51 = a1 + 1;
  v52 = v5;
  v53 = a1;
  v48 = v54;
  v49 = &v56;
  v50 = v54;
  E_LPC_isp_pol_get(&v51, &v48, 7);
  v6 = 9;
  do
  {
    v7 = (v54 + 4 * v6 - 8);
    v8 = (v7 + 4);
    v10 = v7 < v54 || v8 > &v56 || v7 > v8;
    if (v10 || (--v6, v11 = v54 + 4 * v6, v12 = v11 - 12, v11 - 12 < v54) || (v13 = v11 - 8, v13 > &v56) || v12 > v13)
    {
LABEL_64:
      __break(0x5519u);
    }

    *v7 -= *v12;
  }

  while (v6 > 3);
  v14 = 0;
  v15 = a1 + 15;
  v17 = (a1 + 15) > v5 || v15 < a1;
  do
  {
    v18 = &v58[v14 - 16];
    v19 = &v58[v14 - 12];
    v22 = v19 > v59 || v18 > v19 || v18 < &v57;
    if (v22 || v17)
    {
      goto LABEL_64;
    }

    v23 = *v15;
    *&v58[v14 - 16] += ((*&v58[v14 - 16] >> 15) & 0xFFFFFFFE) * v23 + 2 * (((*&v58[v14 - 16] >> 1) * v23) >> 15);
    v24 = v54 + v14;
    if ((v54 + v14) < v54 || v24 + 4 > &v56 || v24 > v24 + 4)
    {
      goto LABEL_64;
    }

    *(v54 + v14) -= ((*(v54 + v14) >> 15) & 0xFFFFFFFE) * v23 + 2 * (((*(v54 + v14) >> 1) * v23) >> 15);
    v14 += 4;
  }

  while (v14 != 32);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  *a2 = 4096;
  v28 = a2 + 17;
  do
  {
    v29 = &v58[v26 - 12];
    v30 = &v58[v26 - 8];
    v32 = v29 < &v57 || v30 > v59 || v29 > v30;
    v33 = v54 + v26 + 4;
    v34 = v54 + v26 + 8;
    v37 = v32 || v33 < v54 || v34 > &v56 || v33 > v34;
    v38 = &a2[v25 + 1];
    v39 = &a2[v25 + 2];
    if (v37 || v38 < a2 || v39 > v28 || v38 > v39)
    {
      goto LABEL_64;
    }

    v43 = *v29;
    v44 = *v33;
    v45 = v43 + 2048;
    *v38 = (v43 + 2048 + v44) >> 12;
    v46 = &a2[v27 + 15];
    if (v46 < a2)
    {
      goto LABEL_64;
    }

    result = &a2[v27 + 16];
    if (result > v28 || v46 > result)
    {
      goto LABEL_64;
    }

    *v46 = (v45 - v44) >> 12;
    --v27;
    v26 += 4;
    ++v25;
  }

  while (v26 != 28);
  a2[8] = (((((*&v58[16] >> 1) * *v15) >> 14) & 0xFFFFFFE) + ((*&v58[16] >> 15) & 0xFFFFFFEu) * *v15 + *&v58[16] + 2048) >> 12;
  a2[16] = (*v15 + 4) >> 3;
  return result;
}

__int16 **E_LPC_isp_pol_get(__int16 **result, unint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[2];
  v5 = *a2 + 4;
  if (v5 <= a2[1] && v3 <= v5 && v3 >= v4)
  {
    *v3 = 0x800000;
    v8 = *result;
    v9 = (*result + 1);
    v10 = v9 > result[1] || v8 > v9;
    if (!v10 && v8 >= result[2])
    {
      v12 = (*a2 + 4);
      v13 = *a2 + 8;
      v14 = v13 > a2[1] || v12 > v13;
      if (!v14 && v12 >= v4)
      {
        *v12 = -512 * *v8;
        *a2 += 8;
        a2[2] = v4;
        *result += 2;
        v16 = 2;
        v17 = 1;
LABEL_26:
        v18 = *a2;
        v19 = a2[1];
        v20 = a2[2];
        v21 = *a2 - 8;
        v22 = *a2 - 4;
        v23 = v22 > v19 || v21 > v22;
        v24 = !v23 && v21 >= v20;
        v25 = v18 + 1;
        v26 = !v24 || v25 > v19;
        v27 = v26 || v18 > v25;
        if (!v27 && v18 >= v20)
        {
          *v18 = *(v18 - 2);
          v29 = *a2;
          v30 = v17;
          while (1)
          {
            v31 = a2[1];
            v32 = v29 - 1;
            v33 = v29 > v31 || v32 > v29;
            if (v33 || v32 < v20)
            {
              break;
            }

            v35 = *result;
            v36 = (*result + 1);
            v37 = v36 > result[1] || v35 > v36;
            v38 = !v37 && v35 >= result[2];
            v39 = v29 + 1;
            v40 = !v38 || v39 > v31;
            v41 = v40 || v29 > v39;
            if (v41 || v29 < v20)
            {
              break;
            }

            *v29 -= 2 * (((((*v32 >> 1) * *v35) >> 14) & 0x7FFFFFFE) + ((*v32 >> 15) & 0x7FFFFFFE) * *v35);
            v43 = *a2;
            v44 = a2[1];
            v45 = *a2 + 4;
            if (v45 > v44 || v43 > v45 || v43 < v20 || (v43 - 1) > v44 || v43 - 2 > v43 - 1 || (v43 - 2) < v20)
            {
              break;
            }

            *v43 += *(v43 - 2);
            v46 = *a2;
            v29 = (*a2 - 4);
            *a2 = v29;
            a2[2] = v20;
            if (!--v30)
            {
              if (v46 > a2[1])
              {
                break;
              }

              if (v29 > v46)
              {
                break;
              }

              if (v29 < v20)
              {
                break;
              }

              v47 = *result;
              v48 = (*result + 1);
              if (v48 > result[1] || v47 > v48 || v47 < result[2])
              {
                break;
              }

              *v29 -= *v47 << 9;
              *a2 += 4 * v16;
              a2[2] = v20;
              *result += 2;
              ++v16;
              ++v17;
              if (v16 != a3 + 1)
              {
                goto LABEL_26;
              }

              return result;
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t E_LPC_stage1_isf_vq(uint64_t result, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  v4 = 0;
  v53 = *MEMORY[0x1E69E9840];
  v52[0] = -1;
  v52[1] = -1;
  do
  {
    v5 = v52 + v4 + 4;
    if ((v52 + v4) < v52 || v5 > &v53 || v52 + v4 > v5)
    {
      goto LABEL_84;
    }

    *(v52 + v4) = 1900671690;
    v4 += 4;
  }

  while (v4 != 16);
  v8 = 0;
  *a4 = xmmword_19B0A5860;
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(result + 16);
  v13 = a3;
  do
  {
    v15 = *result;
    v14 = *(result + 8);
    v16 = *result + 4;
    v18 = v16 <= v14 && v15 <= v16 && v15 >= v12;
    v19 = v9 + 1;
    if (!v18 || v19 > v10 || v9 > v19 || v9 < v11)
    {
      goto LABEL_84;
    }

    v23 = 0;
    v24 = (*v15 - *v9) * (*v15 - *v9);
    v25 = 1;
    do
    {
      v26 = &v9[v23 + 1];
      v27 = &v15[v23 + 1];
      v28 = &v15[v23 + 2];
      v30 = v28 <= v14 && v27 <= v28 && v27 >= v12;
      v31 = &v9[v23 + 2];
      if (!v30 || v31 > v10 || v26 > v31 || v26 < v11)
      {
        goto LABEL_84;
      }

      v35 = &v15[v23 + 3];
      if (v35 > v14)
      {
        goto LABEL_84;
      }

      if (v28 > v35)
      {
        goto LABEL_84;
      }

      v36 = &v9[v23 + 3];
      if (v36 > v10 || v31 > v36)
      {
        goto LABEL_84;
      }

      v24 = v24 + (((*v28 - *v31) * (*v28 - *v31)) + ((*v27 - *v26) * (*v27 - *v26)));
      v25 += 2;
      v23 += 2;
    }

    while (v25 < v13);
    v37 = 0;
    v9 = (v9 + v23 * 4 + 4);
    v38 = v52;
    while (1)
    {
      v39 = v38 + 1;
      if (v38 < v52 || v39 > &v53 || v38 > v39)
      {
        goto LABEL_84;
      }

      if (v24 < *v38)
      {
        break;
      }

      ++v37;
      ++v38;
      if (v37 == 4)
      {
        goto LABEL_82;
      }
    }

    if (v37 <= 2)
    {
      v42 = 0;
      v43 = 3;
      while (1)
      {
        v44 = (&v52[1] + v42);
        v45 = (&v52[1] + v42 + 4);
        v46 = v44 < v52 || v45 > &v53;
        v47 = v46 || v44 > v45;
        if (v47 || v45 < v52)
        {
          break;
        }

        *v45 = *v44;
        v49 = (a4 + v42 + 8);
        if (v49 < a4)
        {
          break;
        }

        v50 = a4 + v42 + 12;
        if (v50 > (a4 + 1))
        {
          break;
        }

        if (v49 > v50)
        {
          break;
        }

        v51 = (a4 + v42 + 12);
        if (v51 < a4 || v51 > (a4 + v42 + 16))
        {
          break;
        }

        *v51 = *v49;
        --v43;
        v42 -= 4;
        if (v43 <= v37)
        {
          goto LABEL_81;
        }
      }

LABEL_84:
      __break(0x5519u);
    }

LABEL_81:
    *v38 = v24;
    *(a4 + v37) = v8;
LABEL_82:
    ++v8;
  }

  while (v8 != 256);
  return result;
}

float *E_LPC_isf_sub_vq(float *result, uint64_t a2, unsigned int a3, int a4, float *a5)
{
  if (result + 1 >= result)
  {
    v5 = &result[a3];
    if ((result + 1) <= v5)
    {
      v6 = 0;
      v7 = 0;
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      v10 = *a2;
      v11 = 1.0e30;
LABEL_4:
      v12 = (v10 + 1) > v9 || v10 > v10 + 1;
      if (!v12 && v10 >= v8)
      {
        v14 = 0;
        v15 = (*result - *v10) * (*result - *v10);
        v16 = a3 - 1;
        while (1)
        {
          v17 = &v10[v14 + 1];
          v18 = &result[v14 + 1];
          v19 = &result[v14 + 2];
          v20 = v18 < result || v19 > v5;
          v21 = v20 || v18 > v19;
          v22 = &v10[v14 + 2];
          v23 = v21 || v22 > v9;
          v24 = v23 || v17 > v22;
          if (v24 || v17 < v8)
          {
            break;
          }

          v15 = v15 + ((*v18 - *v17) * (*v18 - *v17));
          ++v14;
          if (!--v16)
          {
            if (v15 < v11)
            {
              v7 = v6;
              v11 = v15;
            }

            ++v6;
            v10 += a3;
            if (v6 != a4)
            {
              goto LABEL_4;
            }

            *a5 = v11;
            v26 = *(a2 + 8);
            v27 = (*a2 + 4 * (v7 * a3));
            if (v27 <= v26)
            {
              v28 = 4 * a3;
              if (v8 <= v27 && v28 <= v26 - v27)
              {
                memcpy(result, v27, v28);
                return v7;
              }
            }

            break;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t E_LPC_f_isp_pol_get(uint64_t result, float *a2, int a3, int a4)
{
  v4 = a2 + 1;
  if (a2 + 1 >= a2)
  {
    v5 = &a2[a4];
    if (v4 <= v5)
    {
      *a2 = 1.0;
      v6 = *result;
      v7 = *(result + 16);
      v8 = *result + 4;
      v9 = v8 > *(result + 8) || v6 > v8;
      v10 = !v9 && v6 >= v7;
      v11 = a2 + 2;
      v12 = !v10 || v4 > v11;
      if (!v12 && v11 <= v5)
      {
        *v4 = *v6 * -2.0;
        v14 = 2;
        while (1)
        {
          v15 = *result;
          v16 = *(result + 8);
          v17 = (*result + 8);
          *result = v17;
          v18 = (v15 + 3);
          v19 = v18 > v16 || v17 > v18;
          if (v19 || v17 < v7)
          {
            break;
          }

          v21 = &a2[v14];
          if (v21 < a2 || v21 + 4 > v5 || v21 > v21 + 4)
          {
            break;
          }

          v22 = *v17 * -2.0;
          v23 = (v22 * a2[v14 - 1]) + *(v21 - 8) * 2.0;
          a2[v14] = v23;
          if (v14 >= 3)
          {
            v24 = v14;
            do
            {
              v25 = &a2[--v24];
              v26 = (v25 - 1);
              v27 = v25 - 1 < a2 || v25 > v5;
              if (v27 || v26 > v25)
              {
                goto LABEL_50;
              }

              v29 = v25 - 2 < a2 || (v25 - 2) > v26;
              v30 = v25 + 1;
              v31 = v29 || v30 > v5;
              if (v31 || v25 > v30)
              {
                goto LABEL_50;
              }

              *v25 = *v25 + (*(v25 - 2) + (v22 * *(v25 - 1)));
            }

            while (v24 > 2);
          }

          *v4 = v22 + *v4;
          if (++v14 == a3 + 1)
          {
            return result;
          }
        }
      }
    }
  }

LABEL_50:
  __break(0x5519u);
  return result;
}

float *E_LPC_chebyshev(float *result, unsigned int a2, int a3, float a4)
{
  v4 = (result + 1);
  if (result + 1 >= result)
  {
    v5 = &result[a3];
    if (v4 <= v5)
    {
      v6 = result + 2;
      if (v4 <= (result + 2) && v6 <= v5)
      {
        v7 = *result;
        v8 = result[1] + ((a4 + a4) * *result);
        v9 = a2 - 2;
        while (v6 >= result && (v6 + 1) <= v5 && v6 <= v6 + 1)
        {
          v10 = v8;
          v11 = *v6++;
          v8 = v11 - (v7 - ((a4 + a4) * v8));
          v7 = v10;
          if (!--v9)
          {
            v12 = &result[a2];
            if (v12 >= result && v12 + 4 <= v5 && v12 <= v12 + 4)
            {
              return result;
            }

            break;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

float E_DTX_filter5(float *a1, float *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1 + (*a3 * -0.67001);
  v6 = 0.0;
  if (fabsf(v5) <= 1.0e-10)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *a1 + (*a3 * -0.67001);
  }

  *a3 = v7;
  v8 = *a2 + (v4 * -0.19501);
  if (fabsf(v8) > 1.0e-10)
  {
    v6 = *a2 + (v4 * -0.19501);
  }

  v9 = v4 + (v8 * 0.19501);
  v10 = v3 + (v5 * 0.67001);
  a3[1] = v6;
  *a1 = (v10 + v9) * 0.5;
  result = (v10 - v9) * 0.5;
  *a2 = result;
  return result;
}

float E_DTX_level_calculation(uint64_t a1, float *a2, int a3, int a4, int a5, int a6, float a7)
{
  v15 = NAN;
  __C = NAN;
  v12 = a5;
  vDSP_svemg((a1 + 4 * (a6 + a5 * a3)), a5, &__C, a4 - a3);
  __C = __C + __C;
  v13 = __C + (*a2 / a7);
  *a2 = __C * a7;
  vDSP_svemg((a1 + 4 * a6), v12, &v15, a3);
  return (v13 + v15) * a7;
}

uint64_t EVS_Encoder_Destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 39840);
    v3 = (result + 39832);
    if (v3 <= v2)
    {
      deleteCldfb(v3);
      deleteCldfb((v1 + 39824));
      if (v2 <= v1 + 39848)
      {
        v4 = *v2;
        if (!*v2)
        {
          goto LABEL_12;
        }

        if (v4 < v4 + 376 && v4 < v4 + 1)
        {
          if (*v4)
          {
            free(*v4);
          }

          free(v4);
          *v2 = 0;
LABEL_12:
          v6 = (v1 + 110872);
          v7 = (v1 + 15752);
          v8 = 4;
          do
          {
            if ((v7 + 1) > v1 + 15784 || v7 >= v7 + 1)
            {
              goto LABEL_30;
            }

            v10 = *v7++;
            vDSP_biquad_DestroySetup(v10);
            --v8;
          }

          while (v8);
          v11 = 3;
          do
          {
            if ((v6 + 1) > v1 + 110896 || v6 >= v6 + 1)
            {
              goto LABEL_30;
            }

            v13 = *v6++;
            vDSP_biquad_DestroySetup(v13);
            --v11;
          }

          while (v11);
          vDSP_DFT_DestroySetup(*(v1 + 25584));
          vDSP_DFT_DestroySetup(*(v1 + 25592));
          vDSP_DFT_DestroySetup(*(v1 + 24880));
          vDSP_DFT_DestroySetup(*(v1 + 24888));
          vDSP_DFT_DestroySetup(*(v1 + 24896));
          vDSP_DFT_DestroySetup(*(v1 + 24904));
          vDSP_DFT_DestroySetup(*(v1 + 160));
          vDSP_DFT_DestroySetup(*(v1 + 168));
          vDSP_DFT_DestroySetup(*(v1 + 176));
          v14 = *(v1 + 40);
          if (v14)
          {
            MEMORY[0x19EAE53C0](v14, 0x1000C8052888210);
          }

LABEL_31:
          JUMPOUT(0x19EAE53E0);
        }
      }
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

  return result;
}

void deleteCldfb(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = v1[15];
    if (v3)
    {
      free(v3);
    }

    v4 = v1[11];
    if (v4)
    {
      free(v4);
    }

    free(v1);
    *a1 = 0;
  }
}

__n128 EVS_Encoder_ChangeBitrate(uint64_t a1, unsigned int a2, int a3, int *a4, int a5, int *a6)
{
  *(a1 + 152) = *(a1 + 150);
  if (a2 == 5900)
  {
    v10 = 7200;
  }

  else
  {
    v10 = a2;
  }

  if (a2 == 5900)
  {
    a3 = 1;
  }

  if (a5)
  {
    v12 = a2 == 5900;
  }

  else
  {
    v12 = 0;
  }

  *a4 = a3;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5;
  }

  *a6 = v13;
  v14 = *(a1 + 56);
  if (v10 >= 0x5F50)
  {
    v15 = 24400;
  }

  else
  {
    v15 = v10;
  }

  if (v14 == 8000 || v13 == 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v10;
  }

  v43 = 0;
  if (!VerifyBitrate(v17, &v43))
  {
    v19 = v13;
    if (v13 >= 1 && v14 == 8000)
    {
      v19 = 0;
    }

    else if (v13 > 1 && v14 == 16000)
    {
      v19 = 1;
    }

    else
    {
      if (v13 >= 2)
      {
        v19 = 2;
      }

      if (v14 != 32000)
      {
        v19 = v13;
      }
    }

    *a6 = v19;
    *(a1 + 64) = v17;
    v20 = v43;
    *(a1 + 142) = v43;
    *(a1 + 132) = v19;
    *(a1 + 144) = *a4;
    *(a1 + 150) = a2 == 5900;
    *a1 = GetMode(v20, v17);
    VerifyRFParams(a1, 0);
    if (*(a1 + 52108) == 4 && *(a1 + 88) >= 5u && !*(a1 + 142))
    {
      *(a1 + 5268) = GEWB_Ave;
      *(a1 + 5284) = unk_19B3A1590;
      *(a1 + 5300) = xmmword_19B3A15A0;
      *(a1 + 5316) = unk_19B3A15B0;
      v21 = (a1 + 5076);
      v22 = 16;
      v37 = vdupq_n_s32(0x45C80000u);
      v38 = vdupq_n_s32(0x40490FDBu);
      v23 = (a1 + 5268);
      do
      {
        v42 = vdivq_f32(vmulq_f32(*v23, v38), v37);
        v39 = cosf(v42.f32[1]);
        v24.f32[0] = cosf(v42.f32[0]);
        v24.f32[1] = v39;
        v40 = v24;
        v25 = cosf(v42.f32[2]);
        v26 = v40;
        v26.f32[2] = v25;
        v41 = v26;
        v27 = cosf(v42.f32[3]);
        v28 = v41;
        v28.f32[3] = v27;
        v23[-12] = v28;
        ++v23;
        v22 -= 4;
      }

      while (v22);
      v29 = *(a1 + 5284);
      *(a1 + 5140) = *(a1 + 5268);
      *(a1 + 5156) = v29;
      v30 = *(a1 + 5316);
      *(a1 + 5172) = *(a1 + 5300);
      *(a1 + 5188) = v30;
      v31 = *v21;
      v32 = *(a1 + 5092);
      v33 = *v21;
      v34 = v32;
      *(a1 + 5204) = *v21;
      *(a1 + 5220) = v32;
      *(a1 + 5332) = v31;
      *(a1 + 5348) = v32;
      v36 = *(a1 + 5108);
      v35 = *(a1 + 5124);
      *(a1 + 5236) = v36;
      *(a1 + 5252) = v35;
      *(a1 + 5364) = v36;
      *(a1 + 5380) = v35;
      result = *(a1 + 5124);
      *(a1 + 5428) = v36;
      *(a1 + 5444) = result;
      *(a1 + 5396) = v33;
      *(a1 + 5412) = v34;
    }
  }

  return result;
}

void *mvr2r(void *__src, unint64_t a2, char *__dst, unint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    if (a4 < __dst || a2 < __src || (v6 = 4 * a5, v6 > a2 - __src) || v6 > a4 - __dst || (__src = memmove(__dst, __src, 4 * a5), &__dst[v6] < __dst))
    {
      __break(0x5519u);
    }
  }

  return __src;
}

unint64_t init_lvq(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = result;
  v11 = 0;
  v12 = &dword_19B36475C;
  v13 = no_lead;
LABEL_2:
  v14 = &no_lead[6 * v11];
  v15 = (v14 + 6);
  v16 = -3;
  v17 = v13;
  while (v17 >= v14 && (v17 + 1) <= v15 && v17 <= v17 + 1)
  {
    if (*v17 < 1)
    {
      v19 = v16 + 3;
      goto LABEL_11;
    }

    ++v17;
    v18 = __CFADD__(v16++, 1);
    if (v18)
    {
      v19 = 3;
LABEL_11:
      v20 = (a5 + 4 * v11);
      *v20 = v19;
      v21 = -3;
      v22 = v12;
      while (1)
      {
        if (v22 < v14)
        {
          goto LABEL_62;
        }

        result = (v22 + 1);
        if ((v22 + 1) > v15 || v22 > result)
        {
          goto LABEL_62;
        }

        result = *v22;
        if (result < 1)
        {
          break;
        }

        ++v22;
        v18 = __CFADD__(v21++, 1);
        if (v18)
        {
          v23 = 3;
          goto LABEL_20;
        }
      }

      v23 = v21 + 3;
LABEL_20:
      v20[1] = v23;
      ++v11;
      v13 += 6;
      v12 += 6;
      if (v11 == 128)
      {
        v24 = 0;
        v25 = &dword_19B366A8C;
        v26 = no_lead_p;
LABEL_22:
        v27 = &no_lead_p[6 * v24];
        v28 = (v27 + 6);
        v29 = -3;
        v30 = v26;
        while (1)
        {
          if (v30 < v27 || (v30 + 1) > v28 || v30 > v30 + 1)
          {
            goto LABEL_62;
          }

          if (*v30 < 1)
          {
            break;
          }

          ++v30;
          v18 = __CFADD__(v29++, 1);
          if (v18)
          {
            v31 = 3;
LABEL_31:
            v32 = (a6 + 4 * v24);
            *v32 = v31;
            v33 = -3;
            v34 = v25;
            while (1)
            {
              if (v34 < v27)
              {
                goto LABEL_62;
              }

              result = (v34 + 1);
              if ((v34 + 1) > v28 || v34 > result)
              {
                goto LABEL_62;
              }

              result = *v34;
              if (result < 1)
              {
                break;
              }

              ++v34;
              v18 = __CFADD__(v33++, 1);
              if (v18)
              {
                v35 = 3;
LABEL_40:
                v32[1] = v35;
                ++v24;
                v26 += 6;
                v25 += 6;
                if (v24 != 145)
                {
                  goto LABEL_22;
                }

                v36 = 0;
                v37 = (a5 + 2);
                v38 = no_lead;
                while (1)
                {
                  v39 = *(v37 - 1);
                  if (v39 >= 7)
                  {
                    goto LABEL_62;
                  }

                  result = make_offset_scale(v36, table_no_cv, pl_HQ, v38, v39, v10);
                  v40 = (v38 + 3);
                  if (v38 + 3 > v38 + 6)
                  {
                    goto LABEL_62;
                  }

                  if (v38 > v40)
                  {
                    goto LABEL_62;
                  }

                  v41 = *v37;
                  if (v41 > 3)
                  {
                    goto LABEL_62;
                  }

                  result = make_offset_scale(v36++, table_no_cv, pl_HQ, v40, v41, a2);
                  v38 += 6;
                  v37 += 2;
                  if (v36 == 128)
                  {
                    v42 = 0;
                    v43 = (a6 + 2);
                    v44 = no_lead_p;
                    while (1)
                    {
                      v45 = *(v43 - 1);
                      if (v45 > 6)
                      {
                        goto LABEL_62;
                      }

                      result = make_offset_scale(v42, table_no_cv, pl_HQ, v44, v45, a3);
                      v46 = (v44 + 3);
                      if (v44 + 3 > v44 + 6)
                      {
                        goto LABEL_62;
                      }

                      if (v44 > v46)
                      {
                        goto LABEL_62;
                      }

                      v47 = *v43;
                      if (v47 > 3)
                      {
                        goto LABEL_62;
                      }

                      result = make_offset_scale(v42++, table_no_cv, pl_HQ, v46, v47, a4);
                      v44 += 6;
                      v43 += 2;
                      if (v42 == 145)
                      {
                        if (v10 + 2052 <= (v10 + 2064) && v10 + 2048 <= (v10 + 2052))
                        {
                          *(v10 + 2048) = 1;
                          if (a2 + 2052 <= (a2 + 2064) && a2 + 2048 <= (a2 + 2052))
                          {
                            *(a2 + 2048) = 1;
                            if (a3 + 2324 <= (a3 + 2336) && a3 + 2320 <= (a3 + 2324))
                            {
                              *(a3 + 2320) = 1;
                              if (a4 + 2324 <= (a4 + 2336) && a4 + 2320 <= (a4 + 2324))
                              {
                                *(a4 + 2320) = 1;
                                return result;
                              }
                            }
                          }
                        }

                        goto LABEL_62;
                      }
                    }
                  }
                }
              }
            }

            v35 = v33 + 3;
            goto LABEL_40;
          }
        }

        v31 = v29 + 3;
        goto LABEL_31;
      }

      goto LABEL_2;
    }
  }

LABEL_62:
  __break(0x5519u);
  return result;
}

void hf_cod_init(float *__C, int a2, float *a3, int a4, float *a5, int a6, float *a7, int a8, _DWORD *a9)
{
  __A = 0.0;
  vDSP_vfill(&__A, __C, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a3, 1, 0x1EuLL);
  __A = 0.0;
  vDSP_vfill(&__A, a5, 1, 0x10uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a7, 1, 0x1EuLL);
  *a9 = 1065353216;
}

void isf2isp(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = a1 + 64;
  v6 = a2 + 64;
  while (1)
  {
    v7 = (a1 + 4 * v4);
    v8 = v7 + 1;
    v9 = v7 < a1 || v8 > v5;
    v10 = v9 || v7 >= v8;
    v11 = (a2 + 4 * v4);
    v12 = v11 + 1;
    v13 = !v10 && v11 >= a2;
    v14 = !v13 || v12 > v6;
    if (v14 || v11 >= v12)
    {
      break;
    }

    *v11 = cosf((*v7 * 3.1416) / 6400.0);
    v10 = v4++ >= 0xE;
    if (v10)
    {
      v16 = ((*(a1 + 60) * 3.1416) / 6400.0);
      v17 = cos(v16 + v16);
      *(a2 + 60) = v17;
      return;
    }
  }

  __break(0x5519u);
}

_DWORD *noise_est_init(_DWORD *result, _WORD *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11, _WORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16, _WORD *a17, _DWORD *a18, _DWORD *a19)
{
  v19 = 0;
  while (1)
  {
    v20 = (a5 + v19);
    v21 = a5 + v19 + 4;
    v22 = a5 + v19 < a5 || v21 > a6;
    if (v22 || v20 > v21)
    {
      break;
    }

    *v20 = 996499522;
    v24 = (a3 + v19);
    if (a3 + v19 < a3)
    {
      break;
    }

    if ((v24 + 1) > a4)
    {
      break;
    }

    if (v24 > v24 + 1)
    {
      break;
    }

    *v24 = 996499522;
    v25 = (a7 + v19);
    if (a7 + v19 < a7 || (v25 + 1) > a8 || v25 > v25 + 1)
    {
      break;
    }

    *v25 = 996499522;
    v19 += 4;
    if (v19 == 80)
    {
      *a9 = 0;
      *result = 0;
      *a2 = 0;
      *a10 = 6;
      *a11 = 0;
      *a12 = 0;
      *a13 = 1045220557;
      *a14 = 0;
      *a15 = 0;
      *a16 = 1053609165;
      *a17 = 0;
      *a18 = 1101004800;
      *a19 = 1137180672;
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

void openCldfb(void *a1, int a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10C0040091FD700uLL);
  if (v6)
  {
    v7 = v6;
    *(v6 + 3) = a2;
    if (v6 >= v6 + 160)
    {
      __break(0x5519u);
    }

    else
    {
      configureCldfb(v6, a3);
      if (a3 == 48000)
      {
        v8 = 2400;
      }

      else
      {
        v8 = 2000;
      }

      v9 = malloc_type_malloc(v8, 0x100004052888210uLL);
      v10 = &v9[v8];
      if (!v9)
      {
        v10 = 0;
      }

      *(v7 + 11) = v9;
      *(v7 + 12) = v10;
      *(v7 + 13) = v9;
      *(v7 + 28) = 0;
      v11 = *(v7 + 2);
      v12 = *v7;
      if (!a2)
      {
        LOWORD(v11) = v11 - v12;
      }

      v13 = v11 + *(v7 + 1) * v12;
      v14 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      if (v14)
      {
        *(v7 + 15) = v14;
        *(v7 + 16) = &v14[v13];
        *(v7 + 17) = v14;
        __A = 0.0;
        vDSP_vfill(&__A, v14, 1, v13 & 0x7FFF);
        *a1 = v7;
      }

      else
      {
        *(v7 + 15) = 0;
        *(v7 + 16) = 0;
        *(v7 + 17) = 0;
      }
    }
  }
}

void InitSWBencBuffer(float *a1)
{
  v2 = a1 + 13312;
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 13131, 1, 0xDCuLL);
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 13549, 1, 0x242uLL);
  v2[815] = 3866647;
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 14129, 1, 0xCuLL);
  v2[816] = 0;
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 13509, 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 14196, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 14200, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 14204, 1, 4uLL);
  __A = 0.0;
  vDSP_vfill(&__A, a1 + 14208, 1, 4uLL);
  v2[900] = 0;
}

void ResetSHBbuffer_Enc(uint64_t a1)
{
  v2 = a1 + 67320;
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56756), 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 54068), 1, 2uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 54076), 1, 0x14uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 54156), 1, 0xAuLL);
  if (*(a1 + 112) == 11)
  {
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 57060), 1, 0xAuLL);
    *(a1 + 57100) = 0;
  }

  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56644), 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56672), 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56700), 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56728), 1, 7uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 67328), 1, 0xAuLL);
  *(v2 + 56) = 1065353216;
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 56564), 1, 0x14uLL);
  *v2 = 0;
}

uint64_t reset_rf_indices(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 0x10000;
  *(a1 + 67470) = 0;
  v52 = a1 + 67532;
  *(a1 + 67532) = 0;
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 67536), 1, 6uLL);
  *(v2 + 2024) = 0;
  __A = 0.0;
  vDSP_vfill(&__A, (v1 + 67564), 1, 0x10uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (v1 + 67628), 1, 8uLL);
  *(v2 + 2124) = 0;
  v48 = v1 + 67688;
  __A = 0.0;
  vDSP_vfill(&__A, (v1 + 67668), 1, 5uLL);
  v3 = 0;
  *(v1 + 68596) = 0;
  *(v2 + 2128) = 0;
  v50 = v1 + 67476;
  v51 = v1 + 67496;
  *(v2 + 1936) = 0;
  v49 = v1 + 67494;
  v47 = v1 + 68284;
  *(v2 + 3056) = *(v1 + 140);
  v4 = v1 + 68320;
  *(v2 + 3068) = 0;
  v5 = v1 + 68500;
  v6 = v1 + 68518;
  v7 = v1 + 68536;
  v8 = v1 + 67744;
  result = v1 + 67924;
  v10 = v1 + 68104;
  v11 = v1 + 68608;
  v12 = v1 + 68626;
  v13 = v1 + 68628;
  v14 = v1 + 68664;
  v15 = v1 + 68700;
  v16 = v1 + 68572;
  v17 = v1 + 68590;
LABEL_2:
  v18 = (v51 + 4 * v3);
  if ((v18 + 1) <= v52 && v18 < v18 + 1)
  {
    *v18 = 0;
    v20 = (v50 + 2 * v3);
    if ((v20 + 1) <= v49 && v20 < v20 + 1)
    {
      *v20 = 6;
      v22 = v48 + 6 * v3;
      if (v22 < v22 + 2)
      {
        *v22 = 0;
        *(v22 + 4) = 0;
        v23 = (v47 + 4 * v3);
        if ((v23 + 1) <= v4 && v23 <= v23 + 1)
        {
          *v23 = 0;
          v24 = (v5 + 2 * v3);
          if ((v24 + 1) <= v6 && v24 <= v24 + 1)
          {
            *v24 = 0;
            v25 = (v6 + 2 * v3);
            if ((v25 + 1) <= v7 && v25 <= v25 + 1)
            {
              *v25 = 0;
              v26 = (v7 + 4 * v3);
              if (v26 < (v26 + 2))
              {
                v27 = 0;
                *v26 = 0;
                v28 = v4 + 20 * v3;
                v29 = v8 + 20 * v3;
                v30 = result + 20 * v3;
                v31 = v10 + 20 * v3;
                v32 = v1 + 68104;
                while (1)
                {
                  v33 = v32 + v27;
                  v34 = (v32 + v27 + 216);
                  v35 = v32 + v27 + 220;
                  v36 = v34 < v28 || v35 > v28 + 20;
                  if (v36 || v34 > v35)
                  {
                    break;
                  }

                  *v34 = 0;
                  v38 = (v33 - 360);
                  if (v33 - 360 < v29)
                  {
                    break;
                  }

                  v39 = v33 - 356;
                  if (v39 > v29 + 20)
                  {
                    break;
                  }

                  if (v38 > v39)
                  {
                    break;
                  }

                  *v38 = 0;
                  v40 = (v32 + v27 - 180);
                  if (v40 < v30)
                  {
                    break;
                  }

                  v41 = v32 + v27 - 176;
                  if (v41 > v30 + 20)
                  {
                    break;
                  }

                  if (v40 > v41)
                  {
                    break;
                  }

                  *v40 = 0;
                  v42 = (v32 + v27);
                  if (v32 + v27 < v31 || (v42 + 1) > v31 + 20 || v42 > v42 + 1)
                  {
                    break;
                  }

                  *v42 = 0;
                  v27 += 4;
                  if (v27 == 20)
                  {
                    v43 = (v11 + 2 * v3);
                    if ((v43 + 1) > v12)
                    {
                      break;
                    }

                    if (v43 > v43 + 1)
                    {
                      break;
                    }

                    *v43 = 0;
                    v44 = (v13 + 4 * v3);
                    if ((v44 + 1) > v14)
                    {
                      break;
                    }

                    if (v44 > v44 + 1)
                    {
                      break;
                    }

                    *v44 = 0;
                    v45 = (v14 + 4 * v3);
                    if ((v45 + 1) > v15)
                    {
                      break;
                    }

                    if (v45 > v45 + 1)
                    {
                      break;
                    }

                    *v45 = 0;
                    v46 = (v16 + 2 * v3);
                    if ((v46 + 1) > v17 || v46 > v46 + 1)
                    {
                      break;
                    }

                    *v46 = 0;
                    ++v3;
                    v1 += 20;
                    if (v3 != 9)
                    {
                      goto LABEL_2;
                    }

                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void initFdCngEnc(uint64_t a1, int a2, float a3)
{
  v3 = *a1;
  if (*a1 <= (*a1 + 16320))
  {
    initFdCngCom(*a1, a3);
    v6 = a2 / 800;
    if (a2 > 32799)
    {
      v6 = 40;
    }

    v3[10] = 16;
    v3[11] = v6;
    v7 = v6 + 240;
    v8 = v6 == 10;
    if (v6 == 10)
    {
      v9 = 160;
    }

    else
    {
      v9 = 256;
    }

    if (v8)
    {
      v10 = 160;
    }

    else
    {
      v10 = v7;
    }

    v3[14] = 2;
    v3[15] = v9;
    if (v8)
    {
      v11 = 17;
    }

    else
    {
      v11 = 20;
    }

    v3[12] = 16;
    v3[13] = v10;
    v3[3617] = v11;
    v12 = v3 + 3618;
    v13 = v3 + 3666;
    __A[0] = v3 + 3618;
    __A[1] = v3 + 3642;
    __A[2] = v3 + 3618;
    initPartitions(sidparts_encoder_noise_est, 24, 2, v10, __A, v3 + 3592, v3 + 3593, (v3 + 3617), v3 + 3642, (v3 + 3666), v3 + 3666, (v3 + 3690), 0);
    v14 = v3[3592] - v3[3617];
    v3[3692] = v14;
    if (v14 < 1)
    {
LABEL_48:
      LODWORD(__A[0]) = 0;
      v35 = 24;
      vDSP_vfill(__A, (a1 + 8), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 392), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 104), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 200), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 296), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 1736), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 1832), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 1928), 1, 0x18uLL);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 2024), 1, 0x18uLL);
      LODWORD(__A[0]) = 2139095039;
      vDSP_vfill(__A, (a1 + 488), 1, 0x90uLL);
      LODWORD(__A[0]) = 2139095039;
      vDSP_vfill(__A, (a1 + 1160), 1, 0x18uLL);
      LODWORD(__A[0]) = 2139095039;
      vDSP_vfill(__A, (a1 + 1064), 1, 0x18uLL);
      LODWORD(__A[0]) = 2139095039;
      vDSP_vfill(__A, (a1 + 1256), 1, 0x18uLL);
      v36 = a1 + 1448;
      v37 = (a1 + 1352);
      while (v37 >= a1 + 1352 && (v37 + 1) <= v36 && v37 <= v37 + 1)
      {
        *v37++ = 0;
        if (!--v35)
        {
          v38 = (a1 + 1544);
          v39 = 24;
          for (i = (a1 + 1448); i >= v36 && i + 1 <= v38 && i <= i + 1; ++i)
          {
            *i = 0;
            if (!--v39)
            {
              LODWORD(__A[0]) = 0;
              vDSP_vfill(__A, v38, 1, 0x18uLL);
              LODWORD(__A[0]) = 0;
              vDSP_vfill(__A, (a1 + 1640), 1, 0x18uLL);
              *(a1 + 2792) = 0;
              LODWORD(__A[0]) = 0;
              vDSP_vfill(__A, (a1 + 2312), 1, 0x78uLL);
              LODWORD(__A[0]) = 0;
              vDSP_vfill(__A, (a1 + 2120), 1, 0x18uLL);
              LODWORD(__A[0]) = 0;
              vDSP_vfill(__A, (a1 + 2216), 1, 0x18uLL);
              return;
            }
          }

          break;
        }
      }
    }

    else
    {
      v15 = 0;
      v16 = v3 + 3703;
      v17 = v3;
      while (1)
      {
        v18 = v15 + v3[3617];
        v19 = &v12[v18];
        v20 = v19 + 1 > v3 + 3642 || v19 >= v19 + 1;
        v21 = !v20 && v19 >= v12;
        v22 = (v17 + 3693);
        v23 = (v17 + 3694);
        v24 = v21 && v22 >= (v3 + 3693);
        v25 = !v24 || v23 > v16;
        if (v25 || v22 > v23)
        {
          break;
        }

        v17[3693] = v3[14] + *v19 - 256;
        v27 = &v13[v18];
        v28 = v27 + 1 > v3 + 3690 || v27 >= v27 + 1;
        v29 = !v28 && v27 >= v13;
        v30 = (v17 + 3703);
        v31 = (v17 + 3704);
        v32 = v29 && v30 >= v16;
        v33 = !v32 || v31 > (v3 + 3713);
        if (v33 || v30 > v31)
        {
          break;
        }

        v17[3703] = *v27;
        ++v15;
        ++v17;
        if (v15 >= v3[3692])
        {
          goto LABEL_48;
        }
      }
    }
  }

  __break(0x5519u);
}

int *configureFdCngEnc(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (a2 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = a2;
  }

  *(v8 + 16312) = v9;
  *(v8 + 16308) = a3;
  if (a2)
  {
    if (a2 == 1)
    {
      if (a3 > 8000)
      {
        if (a3 > 0x3390)
        {
          *v8 = FdCngSetup_wb3;
          *(v8 + 16) = *&off_1E7530338;
          *(v8 + 32) = &shapingPartitions_wb3;
          v10 = 640;
          v11 = 320;
          v12 = &sidPartitions_wb3;
        }

        else
        {
          *v8 = FdCngSetup_wb2;
          *(v8 + 16) = *&off_1E7530310;
          *(v8 + 32) = &shapingPartitions_wb2;
          v10 = 512;
          v11 = 256;
          v12 = &sidPartitions_wb2;
        }
      }

      else
      {
        *v8 = FdCngSetup_wb1;
        *(v8 + 16) = *&off_1E75302E8;
        *(v8 + 32) = &shapingPartitions_wb1;
        v10 = 512;
        v11 = 256;
        v12 = &sidPartitions_wb1;
      }
    }

    else if (a3 > 13200)
    {
      *v8 = FdCngSetup_swb2;
      *(v8 + 16) = *&off_1E7530388;
      *(v8 + 32) = &shapingPartitions_swb2;
      v10 = 640;
      v11 = 320;
      v12 = &sidPartitions_swb2;
    }

    else
    {
      *v8 = FdCngSetup_swb1;
      *(v8 + 16) = *&off_1E7530360;
      *(v8 + 32) = &shapingPartitions_swb1;
      v10 = 512;
      v11 = 256;
      v12 = &sidPartitions_swb1;
    }
  }

  else
  {
    *v8 = FdCngSetup_nb;
    *(v8 + 16) = *&off_1E75302C0;
    *(v8 + 32) = &shapingPartitions_nb;
    v10 = 512;
    v11 = 160;
    v12 = &sidPartitions_nb;
  }

  *&v13 = -1;
  *(&v13 + 1) = -1;
  v30[4] = v13;
  v30[5] = v13;
  v30[2] = v13;
  v30[3] = v13;
  v30[1] = v13;
  v29[5] = v13;
  v30[0] = v13;
  v29[3] = v13;
  v29[4] = v13;
  v29[0] = v13;
  v29[1] = v13;
  v29[2] = v13;
  *(v8 + 68) = v10;
  *(a1 + 699) = v11;
  v14 = *(v8 + 56);
  *(a1 + 700) = v14;
  v15 = &v12[*(v8 + 8)];
  v16 = (v15 - 4);
  if (v15 < 4 || v16 < v12 || (v17 = *v16 + 1, *(a1 + 701) = v17, v18 = *(v8 + 8), v18 < 0) || (v28[0] = (a1 + 364), v28[1] = (a1 + 376), v28[2] = (a1 + 364), a1 + 351 > (a1 + 2812)))
  {
    __break(0x5519u);
  }

  result = initPartitions(v12, v18, v14, v17, v28, a1 + 702, a1 + 703, a1 + 2908, v30, v31, v29, v30, 0);
  v20 = *(a1 + 699);
  if (v20 == 256)
  {
    v21 = 20;
  }

  else
  {
    v21 = 21;
  }

  if (v20 == 160)
  {
    v22 = 17;
  }

  else
  {
    v22 = v21;
  }

  *(a1 + 727) = v22;
  v23 = *(v8 + 68);
  if (v23 == 640)
  {
    *(v8 + 11640) = &fftSineTab640;
    v24 = &olapWinSyn320;
    *(v8 + 11648) = &olapWinAna640;
    v25 = &preemphCompensation;
    v26 = &olapWinAna640;
    v27 = &olapWinSyn320;
    a4 = a5;
    goto LABEL_29;
  }

  if (v23 == 512)
  {
    *(v8 + 11640) = 0u;
    v24 = &olapWinSyn256;
    v25 = &fftSineTab640;
    v26 = &olapWinAna512;
    v27 = &olapWinSyn256;
LABEL_29:
    *(v8 + 11592) = v26;
    *(v8 + 11600) = v27;
    *(v8 + 11608) = v26;
    *(v8 + 11616) = v24;
    *(v8 + 11624) = v25;
    *(v8 + 11632) = v24;
    *(v8 + 11656) = a4;
  }

  *(v8 + 64) = v23 >> 1;
  return result;
}

void init_coder_ace_plus(uint64_t a1)
{
  *&v230[12] = *MEMORY[0x1E69E9840];
  v2 = a1 + 110608;
  v3 = a1 + 84656;
  v4 = (a1 + 67462);
  v5 = (a1 + 38068);
  v6 = (a1 + 18612);
  v7 = *(a1 + 64);
  *(a1 + 111808) = v7 > 32000;
  v8 = *(a1 + 130) == 0;
  CoreSamplerateMode2 = getCoreSamplerateMode2(v7, *(a1 + 130), *(a1 + 67462));
  *(v2 + 1212) = CoreSamplerateMode2;
  *(v2 + 1208) = CoreSamplerateMode2 / 0x19;
  *(a1 + 68720) = v8;
  v215 = *v5;
  *(a1 + 140) = CoreSamplerateMode2 / 0x32;
  *(v2 + 1244) = -1;
  v10 = 1374389535 * *(a1 + 56);
  *(v3 + 1528) = *(a1 + 56) / 50;
  if (v7 >= 32001 || CoreSamplerateMode2 - 16000 >= 0x32)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  v212 = v12;
  *(v2 + 256) = v12;
  v210 = 1374389535 * CoreSamplerateMode2;
  *(v2 + 1180) = 87500 * (CoreSamplerateMode2 / 0x64) / 0x186A0;
  v13 = (87500 * ((v10 >> 37) + (v10 >> 63)) * 0x29F16B11C6D1E109) >> 64;
  *(v2 + 1188) = ((v13 >> 63) + (v13 >> 14));
  v218 = v6;
  if (!*v6)
  {
    *(v2 + 1156) = 0x3F80000000000000;
  }

  *(a1 + 57108) = 3;
  LODWORD(__A[0]) = 1056964608;
  vDSP_vfill(__A, (a1 + 57112), 1, 8uLL);
  *(v2 + 1168) = 0;
  *(a1 + 57144) = 0u;
  *(a1 + 57160) = 0u;
  *(a1 + 57176) = 0u;
  *(a1 + 57192) = 0u;
  *(a1 + 57208) = 0;
  v14 = *(v2 + 1212) < 16001 && !*(v2 + 1200);
  v15 = (a1 + 129336);
  *(v2 + 1176) = v14;
  *(a1 + 23324) = 0;
  if (*v5 != *(a1 + 140) || *(a1 + 52108) - 3 <= 1)
  {
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, (a1 + 18540), 1, 0x10uLL);
    *(a1 + 18476) = GEWB_Ave;
    *(a1 + 18492) = unk_19B3A1590;
    *(a1 + 18508) = xmmword_19B3A15A0;
    *(a1 + 18524) = unk_19B3A15B0;
  }

  bzero((a1 + 123968), 0x14F8uLL);
  if (a1 + 123968 > v15)
  {
    goto LABEL_329;
  }

  v214 = v5;
  *(a1 + 125960) = -1;
  if (*v15)
  {
    IGFEncSetMode(a1 + 123968, *(a1 + 64), *(a1 + 130), *v4);
  }

  v216 = (a1 + 105712);
  v217 = v4;
  *(a1 + 105760) = a1 + 105808;
  *(a1 + 105768) = v2;
  *(a1 + 105776) = a1 + 105808;
  *(a1 + 105784) = a1 + 107728;
  *(a1 + 105792) = v2;
  *(a1 + 105800) = a1 + 105808;
  v16 = *(v2 + 1212);
  *(a1 + 77420) = (((1374389535 * v16) >> 38) + ((1374389535 * v16) >> 63));
  v17 = *(a1 + 56);
  *(v3 + 1344) = (((1374389535 * v17) >> 38) + ((1374389535 * v17) >> 63));
  *(a1 + 77452) = *(a1 + 77428);
  v18 = ((*(v2 + 1208) * 112.0) * 0.0019531);
  *(a1 + 77444) = v18;
  v19 = ((v17 * v18) / v16);
  *(v3 + 1364) = v19;
  *(a1 + 77428) = v18;
  *(v3 + 1348) = v19;
  if (v18 >= 0x1A5)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 68872, v18);
  v20 = *(v3 + 1348);
  if (v20 > 0x1A4)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 77456, v20);
  v21 = *(a1 + 77428);
  if ((v21 + 1) > 0x1A6)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 76100, ((v21 + ((v21 & 0x8000) >> 15)) >> 1));
  v22 = *(v3 + 1348);
  if ((v22 + 1) > 0x1A6)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 84680, ((v22 + ((v22 & 0x8000) >> 15)) >> 1));
  mdct_window_aldo((a1 + 70552), a1 + 74392, (a1 + 74392), a1 + 76072, *(a1 + 140));
  mdct_window_aldo((a1 + 79136), a1 + 82976, (a1 + 82976), v3, (2 * (*(a1 + 56) / 100)));
  v23 = 1374389535 * *(v2 + 1212);
  v24 = (56250 * (*(v2 + 1212) / 100) * 0x29F16B11C6D1E109) >> 64;
  *(a1 + 76072) = a1 + 70552 + ((((v24 >> 63) + (v24 >> 14)) << 48) >> 46);
  *(a1 + 76080) = a1 + 74392;
  *(a1 + 76088) = a1 + 70552;
  v25 = (56250 * (*(a1 + 56) / 100) * 0x29F16B11C6D1E109) >> 64;
  *v3 = a1 + 79136 + ((((v25 >> 63) + (v25 >> 14)) << 48) >> 46);
  *(v3 + 8) = a1 + 82976;
  *(v3 + 16) = a1 + 79136;
  v26 = ((HIDWORD(v23) >> 8) + (v23 >> 63));
  *(a1 + 77440) = v26;
  if (v26 > 0x3C)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 77180, v26);
  v27 = (*(a1 + 56) / 800);
  *(v3 + 1360) = v27;
  if (v27 > 0x3C)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 85760, v27);
  v28 = (*(v2 + 1180) - ((*(v2 + 1212) * 0.005) + 0.5)) & 0xFFFFFFFE;
  *(a1 + 77432) = v28;
  *(v3 + 1352) = (*(v2 + 1188) - ((*(a1 + 56) * 0.005) + 0.5)) & 0xFFFFFFFE;
  if (v28 > 0xD2)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 76100, v28);
  v29 = *(v3 + 1352);
  if (v29 > 0xD2)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 84680, v29);
  v30 = *(v2 + 1212);
  *(a1 + 77436) = v30 / 800;
  *(v3 + 1356) = *(a1 + 56) / 800;
  if ((v30 + 799) > 0xC1BE)
  {
    goto LABEL_329;
  }

  mdct_window_sine(a1 + 76940, v30 / 800);
  v31 = *(v3 + 1356);
  if (v31 > 0x3C)
  {
    goto LABEL_329;
  }

  v32 = (a1 + 96528);
  mdct_window_sine(a1 + 85520, v31);
  v33 = *(a1 + 77444) >> 1;
  *(a1 + 77448) = v33;
  v34 = *(v3 + 1364) >> 1;
  *(v3 + 1368) = v34;
  v35 = *(a1 + 140);
  *(v3 + 1376) = v33 - ((v35 + ((v35 >> 29) & 3)) >> 2);
  *(v3 + 1380) = v34 - *(v3 + 1528) / 4;
  v36 = *v218;
  v37 = v215;
  if (!*v218)
  {
    *(a1 + 77424) = 262148;
  }

  *(a1 + 3528) = 1065353216;
  *(a1 + 122108) = 1065353216;
  *v2 = 1058013184;
  *(v3 + 1496) = 1052770304;
  v38 = 1200;
  v39 = (v2 + 1248);
  do
  {
    if (v39 < v2 + 1248 || (v39 + 1) > a1 + 116656 || v39 > v39 + 1)
    {
      goto LABEL_329;
    }

    *v39++ = 0;
    --v38;
  }

  while (v38);
  *(v3 + 1500) = 2 * (*(v2 + 1200) != 0);
  v40 = *(a1 + 130);
  v41 = 0.5;
  if (!*(a1 + 130))
  {
    v41 = 0.3125;
  }

  *(v3 + 1508) = v41;
  if (v40 >= 4)
  {
    v42 = 0;
  }

  else
  {
    v42 = (0x3C00280014000A0uLL >> (16 * v40)) & 0x3E0;
  }

  *(v3 + 1372) = v42;
  *(v3 + 1488) = 0;
  v43 = *(a1 + 64);
  if (*(a1 + 129336))
  {
    v44 = 16400;
  }

  else
  {
    v44 = 32000;
  }

  *(v3 + 1384) = v44 < v43;
  if (v44 < v43)
  {
    v45 = &bwMode2fs[v40];
    if (v45 < bwMode2fs || v45 + 1 > hp16000_48000 || v45 > v45 + 1)
    {
      goto LABEL_329;
    }

    InitTnsConfigs(*v45, v42, a1 + 86048, *(a1 + 125960), v43);
    v36 = *v218;
    v35 = *(a1 + 140);
    v37 = v215;
  }

  v46 = *(v2 + 1212);
  *(a1 + 116900) = v46 < 25601;
  if (v36)
  {
    v47 = *(a1 + 64);
    if (v35 != v37 && (v47 != 24400 && v47 != 16400 || v47 != *(a1 + 72) || *(a1 + 136) != *(a1 + 130)))
    {
      v48 = 4.0;
      if ((((-13107 * v37 + 6528) << 11) | ((-13107 * v37 + 6528) >> 5)) >= 0x199u)
      {
        v49 = 4.0;
      }

      else
      {
        v49 = 6.0;
      }

      v50 = (*(a1 + 116920) / v49) + *(a1 + 116916);
      if ((((6528 - 13107 * v35) << 11) | ((6528 - 13107 * v35) >> 5)) < 0x199u)
      {
        v48 = 6.0;
      }

      v51 = (v50 * v35) / v37;
      *(a1 + 116916) = v51;
      *(a1 + 116920) = (v48 * (v51 - v51));
    }
  }

  else
  {
    *(a1 + 116916) = v35;
    *(a1 + 116920) = 0;
    *(a1 + 116924) = 0;
    v47 = *(a1 + 64);
  }

  v52 = *v4;
  v53 = (v47 - 9601) >> 7 < 0x1A9 && v52 == 0;
  v54 = v53;
  *(v3 + 1512) = v54;
  *(v3 + 1514) = v47 < 64001;
  if (v47 > 64000 || *(v2 + 1200))
  {
    v55 = *(v3 + 1500);
  }

  else
  {
    v55 = 1;
  }

  *(v3 + 1500) = v55;
  v57 = v47 < 9601 || v52 != 0;
  *(a1 + 122158) = v57;
  v58 = *(v2 + 1208);
  if (v58 > 639)
  {
    if (v58 > 0x3BF)
    {
      *(v2 + 260) = 1063675494;
      v59 = 1063675494;
    }

    else
    {
      *(v2 + 260) = 1060655596;
      v59 = 1060655596;
    }
  }

  else
  {
    *(v2 + 260) = 1059984507;
    v59 = 1059984507;
  }

  v213 = (v210 >> 36) / v212;
  v60 = dword_19B0AFC20[v46 == 16000];
  *(v3 + 1504) = v59;
  *(v2 + 288) = v60;
  v61 = *(a1 + 68720);
  v53 = v61 == 0;
  v62 = v61 != 0;
  if (v53)
  {
    v63 = 19;
  }

  else
  {
    v63 = 16;
  }

  v218[10] = v62;
  v218[11] = v63;
  *(v2 + 1184) = 9 * v35 / 16;
  if (!v36)
  {
    bzero((a1 + 116932), 0x1400uLL);
    bzero((a1 + 96552), 0xD30uLL);
    bzero((a1 + 86288), 0x2800uLL);
    goto LABEL_136;
  }

  if (v35 != v37 && (v47 != 24400 && v47 != 16400 || v47 != *(a1 + 72) || *(a1 + 136) != *(a1 + 130)))
  {
    if (v37 > 0x500 || v35 > 0x500)
    {
      goto LABEL_329;
    }

    lerp(a1 + 86288, a1 + 86288, v35, v37);
    v71 = *(a1 + 140);
    if (*(a1 + 52108) - 1 >= 2 && v71 >= 1)
    {
      if (v71 >= 0x501)
      {
        goto LABEL_329;
      }

      memmove((a1 + 116932), (a1 + 86288), 4 * v71);
    }

    v211 = a1 + 86288;
    v72 = a1 + 96552 + 4 * v71;
    v73 = v72 - 736;
    v209 = a1 + 96552;
    if (v72 - 736 < (a1 + 96552) || a1 + 99928 < v73 || a1 + 99928 - v73 <= 0x3DF || (v74 = a1 + 16744, memmove((v72 - 736), (a1 + 16744), 0x3E0uLL), v72 + 256 < v73))
    {
LABEL_329:
      __break(0x5519u);
    }

    v75 = a1 + 91408;
    v35 = *(a1 + 140);
    if (v35 == 320)
    {
      if (*(v2 + 1200))
      {
        v35 = 320;
LABEL_128:
        v79 = v211 + 4 * v35;
        v80 = (v79 - 4);
        if (v79 - 4 < v211)
        {
          goto LABEL_329;
        }

        if (v79 > v75)
        {
          goto LABEL_329;
        }

        if (v80 > v79)
        {
          goto LABEL_329;
        }

        *(v3 + 1532) = *v80;
        v81 = v209 + 4 * v35;
        v68 = (v81 + 252);
        if (v81 + 252 < v209)
        {
          goto LABEL_329;
        }

        v69 = v81 + 256;
        v70 = a1 + 99928;
        goto LABEL_133;
      }

      lerp_proc(a1 + 97096);
      v76 = (v75 + 4 * *(a1 + 140) - 960);
      if (v76 < v75)
      {
        goto LABEL_329;
      }

      v74 = a1 + 39396;
      v77 = 38436;
    }

    else
    {
      if (v35 != 256)
      {
        goto LABEL_128;
      }

      if (*(v2 + 1200))
      {
        v35 = 256;
        goto LABEL_128;
      }

      v76 = (a1 + 91472);
      v77 = 15784;
    }

    if (a1 + 96528 < v76)
    {
      goto LABEL_329;
    }

    v78 = (a1 + v77);
    if (a1 + v77 > v74)
    {
      goto LABEL_329;
    }

    if (v74 - v78 < 0x3C0)
    {
      goto LABEL_329;
    }

    if ((a1 + 96528 - v76) <= 0x3BF)
    {
      goto LABEL_329;
    }

    memmove(v76, v78, 0x3C0uLL);
    if (v76 + 960 < v76)
    {
      goto LABEL_329;
    }

    v35 = *(a1 + 140);
    goto LABEL_128;
  }

  if (*(v2 + 1200) || *(a1 + 72) < 32001)
  {
    goto LABEL_136;
  }

  v64 = a1 + 96552;
  v65 = a1 + 96552 + 4 * v35;
  v66 = v65 - 736;
  if (v65 - 736 < (a1 + 96552))
  {
    goto LABEL_329;
  }

  if (a1 + 99928 < v66)
  {
    goto LABEL_329;
  }

  if (a1 + 99928 - v66 <= 0x3DF)
  {
    goto LABEL_329;
  }

  memmove((v65 - 736), (a1 + 16744), 0x3E0uLL);
  if (v65 + 256 < v66)
  {
    goto LABEL_329;
  }

  v35 = *(a1 + 140);
  if (v35 == 320)
  {
    lerp_proc(a1 + 97096);
    v35 = *(a1 + 140);
  }

  *(a1 + 1532) = 0;
  v67 = v64 + 4 * v35;
  v68 = (v67 + 252);
  if (v67 + 252 < v64)
  {
    goto LABEL_329;
  }

  v69 = v67 + 256;
  v70 = a1 + 99928;
LABEL_133:
  if (v69 > v70 || v68 > v69)
  {
    goto LABEL_329;
  }

  *(v2 + 240) = *v68;
LABEL_136:
  v82 = *(v2 + 1180);
  v83 = *(v2 + 1184);
  v84 = a1 + 91408;
  v85 = a1 + 86288 + 4 * v83;
  *(v3 + 1584) = v85 + 4 * v82;
  *(v3 + 1592) = a1 + 91408;
  *(v3 + 1600) = a1 + 86288;
  v86 = a1 + 91408 + 4 * v83;
  *(v3 + 1608) = v86 + 4 * v82;
  *(v3 + 1616) = v32;
  *(v3 + 1624) = a1 + 91408;
  v87 = a1 + 116932;
  v88 = a1 + 122052;
  v89 = a1 + 116932 + 4 * v83;
  v90 = v89 + 4 * v82;
  if (v90 && (v90 < v87 || v90 + 4 > v88 || v90 > v90 + 4))
  {
    goto LABEL_329;
  }

  v91 = 9375 * (*(a1 + 56) / 100);
  *(v3 + 1536) = v85;
  *(a1 + 105744) = a1 + 49476;
  *(a1 + 105752) = a1 + 41616;
  *(v3 + 1544) = v84;
  *(v3 + 1552) = a1 + 86288;
  *(v3 + 1560) = v86;
  *(v3 + 1568) = v32;
  v92 = a1 - 4 * ((((v91 * 0x29F16B11C6D1E109) >> 64) >> 63) + (((v91 * 0x29F16B11C6D1E109) >> 64) >> 14)) + 45636;
  *(v3 + 1576) = v84;
  *(a1 + 122056) = v89;
  *(a1 + 122064) = v88;
  *(a1 + 122072) = v87;
  *(a1 + 122080) = v90;
  *v216 = v92 - 4 * *(v2 + 1188);
  *(a1 + 105720) = a1 + 49476;
  *(a1 + 105728) = a1 + 41616;
  *(a1 + 105736) = v92;
  *v32 = a1 + 96552 + 4 * v35 + 4 * v213;
  *(a1 + 96536) = a1 + 99928;
  *(a1 + 96544) = a1 + 96552;
  v93 = *v218;
  if (!*v218 || v35 != v37 || *(a1 + 2) == 1)
  {
    bzero((a1 + 99952), 0x1680uLL);
  }

  *(a1 + 99928) = a1 + 99952 + 4 * v35 + 4 * v213;
  *(a1 + 99936) = v216;
  *(a1 + 99944) = a1 + 99952;
  v94 = *(v2 + 1212);
  switch(v94)
  {
    case 12800:
      v95 = 0x4000000E7;
      v96 = xmmword_19B0B3010;
      break;
    case 25600:
      v95 = 0x4000001CFLL;
      v96 = xmmword_19B0B3020;
      break;
    case 16000:
      v95 = 0x600000121;
      v96 = xmmword_19B0B3030;
      break;
    default:
      v95 = 0x600000241;
      v96 = xmmword_19B0B3040;
      break;
  }

  *(v2 + 1220) = v96;
  *(v2 + 1236) = v95;
  if (!v93)
  {
    *(a1 + 248) = 0;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    bzero((a1 + 1976), 0x600uLL);
    v99 = a1 + 1976 + 4 * (((v35 + (v35 >> 15)) << 16) >> 17);
    if (v99 < a1 + 1976)
    {
      goto LABEL_329;
    }

    *(a1 + 3512) = v99;
    *(a1 + 3520) = a1 + 3512;
    *(a1 + 1664) = 0u;
    *(a1 + 1680) = 0u;
    *(a1 + 1696) = 0u;
    *(a1 + 1712) = 0u;
    *(a1 + 1728) = 0u;
    *(a1 + 1744) = 0u;
    *(a1 + 1760) = 0u;
    *(a1 + 1776) = 0u;
    *(a1 + 1792) = 0u;
    *(a1 + 1808) = 0u;
    *(a1 + 1824) = 0u;
    *(a1 + 1840) = 0u;
    *(a1 + 1856) = 0u;
    *(a1 + 1872) = 0u;
    *(a1 + 1888) = 0u;
LABEL_178:
    v106 = a1 + 129336;
    goto LABEL_202;
  }

  if (*(a1 + 52108))
  {
    v97 = *(a1 + 77428);
    if (v97 > 0x180)
    {
      goto LABEL_329;
    }

    v98 = *(a1 + 77452);
    if (v98 > 0x180)
    {
      goto LABEL_329;
    }
  }

  else
  {
    if ((v37 + 1) > 0x302 || (v35 + 1) > 0x302u)
    {
      goto LABEL_329;
    }

    v98 = (v37 + ((v37 & 0x8000) >> 15)) << 16 >> 17;
    v97 = ((v35 + (v35 >> 15)) >> 1);
  }

  lerp(a1 + 1976, a1 + 1976, v97, v98);
  v100 = *(a1 + 140);
  v101 = a1 + 1976 + 4 * ((v100 + ((v100 & 0x8000) >> 15)) << 16 >> 17);
  if (v101 < a1 + 1976)
  {
    goto LABEL_329;
  }

  *(a1 + 3512) = v101;
  *(a1 + 3520) = a1 + 3512;
  v102 = *(a1 + 2);
  if (v102 == 1)
  {
    v103 = *(a1 + 18388);
    *(a1 + 1600) = *(a1 + 18372);
    *(a1 + 1616) = v103;
    v104 = *(a1 + 18420);
    *(a1 + 1632) = *(a1 + 18404);
    *(a1 + 1648) = v104;
    bzero((a1 + 1976), 0x600uLL);
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  v105 = *(a1 + 52108);
  if (v105 == 4)
  {
    *(a1 + 23324) = 1;
    *(a1 + 52108) = 0;
    v106 = a1 + 129336;
  }

  else
  {
    v106 = a1 + 129336;
    if (v105 == 3 && v102 == 1)
    {
      *(a1 + 23324) = 1;
      *(a1 + 122148) = 1;
      *(a1 + 1968) = 1050253722;
      bzero((a1 + 184), 0x5C8uLL);
      v119 = *(a1 + 64);
      if (v119 != 24400 && v119 != 16400 || v119 != *(a1 + 72) || *(a1 + 136) != *(a1 + 130))
      {
        v120 = *(a1 + 5092);
        *(a1 + 5396) = *(a1 + 5076);
        *(a1 + 5412) = v120;
        v121 = *(a1 + 5124);
        *(a1 + 5428) = *(a1 + 5108);
        *(a1 + 5444) = v121;
        if (v100 == 320)
        {
          lsp_convert_poly((a1 + 5396), 320, 0);
        }
      }

      v122 = (a1 + 5268);
      v123 = *(a1 + 5412);
      *(a1 + 5204) = *(a1 + 5396);
      *(a1 + 5220) = v123;
      v124 = *(a1 + 5444);
      *(a1 + 5236) = *(a1 + 5428);
      *(a1 + 5252) = v124;
      v125 = (*(v2 + 1212) * 0.5) / 3.1416;
      v126 = 16;
      do
      {
        *v122 = v125 * acosf(*(v122 - 16));
        ++v122;
        --v126;
      }

      while (v126);
      *(a1 + 52108) = 1;
      *(a1 + 76096) = 1;
      *(a1 + 77424) = 4;
      v127 = *(a1 + 140);
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 49548), 1, v127);
      goto LABEL_202;
    }
  }

  if (v100 != v215)
  {
    if (v215 <= 320 && v100 <= 320)
    {
      v229 = -1;
      *&v107 = -1;
      *(&v107 + 1) = -1;
      __A[2] = v107;
      __A[3] = v107;
      __A[0] = v107;
      __A[1] = v107;
      v226 = -1;
      v225[2] = v107;
      v225[3] = v107;
      v225[0] = v107;
      v225[1] = v107;
      v223 = v107;
      v224 = v107;
      v221 = v107;
      v222 = v107;
      *(a1 + 122148) = lsp_convert_poly((a1 + 5204), v100, 0);
      v108 = (*(v2 + 1212) * 0.5) / 3.1416;
      v109 = 16;
      v110 = (a1 + 5268);
      do
      {
        *v110 = v108 * acosf(*(v110 - 16));
        ++v110;
        --v109;
      }

      while (v109);
      v112 = *(a1 + 140);
      v113 = (a1 + 5076);
      v114 = a1 + 5140;
      if (v112 == 320)
      {
        v113 = (a1 + 5204);
        v114 = a1 + 5268;
      }

      if ((v114 - v113) <= 0x3F)
      {
        goto LABEL_329;
      }

      v115 = v113[1];
      *(a1 + 5396) = *v113;
      *(a1 + 5412) = v115;
      v116 = v113[3];
      *(a1 + 5428) = v113[2];
      *(a1 + 5444) = v116;
      synth_mem_updt2(v112, *v214, a1 + 252, a1 + 1532, (a1 + 1664), a1 + 1904, (a1 + 1600), v111, (a1 + 1536), a1 + 1600, 0);
      __C[0] = __A;
      __C[1] = v230;
      __C[2] = __A;
      lsp2a_stab(a1 + 5204, __C);
      weight_a(__A, v230, v225, &v227, 16, 0.92);
      LODWORD(__C[0]) = 0;
      v220 = 0.0;
      v221 = *(a1 + 1600);
      v222 = *(a1 + 1616);
      v223 = *(a1 + 1632);
      v224 = *(a1 + 1648);
      deemph(&v221, 16, __C, *(v2 + 260));
      vDSP_conv(&v220, 1, &v226, -1, __C, 1, 1uLL, 0x11uLL);
      v117 = *v32;
      if (*v32 > *(a1 + 96536))
      {
        goto LABEL_329;
      }

      v118 = (v117 - 4);
      if (v117 < 4 || v118 < *(a1 + 96544))
      {
        goto LABEL_329;
      }

      *(a1 + 1532) = *v118 - *__C;
      goto LABEL_178;
    }

    *(a1 + 23324) = 1;
    *(a1 + 122148) = 1;
    *(a1 + 1968) = 1050253722;
    bzero((a1 + 252), 0x500uLL);
    v128 = (v100 * 1.25 / 20.0);
    v129 = a1 + 1904;
    v130 = a1 + 1904 - 4 * v128;
    if (v130 > a1 + 1904)
    {
      goto LABEL_329;
    }

    if (a1 + 1664 > v130)
    {
      goto LABEL_329;
    }

    v131 = v128;
    if (v128 < 0)
    {
      goto LABEL_329;
    }

    if ((v129 - v130) >> 2 < v128)
    {
      goto LABEL_329;
    }

    v132 = (v215 * 1.25 / 20.0);
    v133 = v129 - 4 * v132;
    if (v133 > v129 || a1 + 1664 > v133 || v132 < 0 || (4 * v132) >> 2 < v132)
    {
      goto LABEL_329;
    }

    lerp(v133, v130, v131, v132);
    v134 = *(a1 + 1840);
    *(a1 + 1536) = v134;
    v135 = *(a1 + 1856);
    *(a1 + 1552) = v135;
    v136 = *(a1 + 1872);
    *(a1 + 1568) = v136;
    v137 = *(a1 + 1888);
    *(a1 + 1584) = v137;
    *(a1 + 1600) = v134;
    *(a1 + 1616) = v135;
    *(a1 + 1632) = v136;
    *(a1 + 1648) = v137;
    *(a1 + 1532) = 0;
    v138 = *(a1 + 5092);
    *(a1 + 5396) = *(a1 + 5076);
    *(a1 + 5412) = v138;
    v139 = *(a1 + 5124);
    *(a1 + 5428) = *(a1 + 5108);
    *(a1 + 5444) = v139;
    if (*(a1 + 140) == 320)
    {
      lsp_convert_poly((a1 + 5396), 320, 0);
    }

    v140 = (a1 + 5268);
    v141 = *(a1 + 5412);
    *(a1 + 5204) = *(a1 + 5396);
    *(a1 + 5220) = v141;
    v142 = *(a1 + 5444);
    *(a1 + 5236) = *(a1 + 5428);
    *(a1 + 5252) = v142;
    v143 = (*(v2 + 1212) * 0.5) / 3.1416;
    v144 = 16;
    v106 = a1 + 129336;
    do
    {
      *v140 = v143 * acosf(*(v140 - 16));
      ++v140;
      --v144;
    }

    while (v144);
  }

LABEL_202:
  if (!*(a1 + 136) && *(a1 + 130) && *v218)
  {
    *(a1 + 122148) = 1;
  }

  *(a1 + 37968) = 0u;
  *(a1 + 37952) = 0u;
  *(a1 + 1972) = 0;
  *(v2 + 1216) = 1;
  if ((*(a1 + 64) < 9601 || *v217 == 1) && *(v2 + 1212) == 12800)
  {
    *(v2 + 1216) = 0;
  }

  if (*a1 == 2)
  {
    *(v214 + 347) = 0;
    if (*(a1 + 2) == 1)
    {
      *(v214 + 346) = 0;
    }
  }

  if (*v218)
  {
    if (*(v106 + 2))
    {
      if (a1 + 129340 > (a1 + 129708))
      {
        goto LABEL_329;
      }

      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, (a1 + 129340), 1, 6uLL);
      goto LABEL_220;
    }
  }

  else
  {
    *(v106 + 2) = 0;
  }

  if (a1 + 129340 > (a1 + 129708))
  {
    goto LABEL_329;
  }

  resetTecEnc((a1 + 129340), 0);
LABEL_220:
  if (*(a1 + 130) == 2)
  {
    v145 = *(a1 + 64);
    v147 = v145 == 16400 || v145 == 24400;
  }

  else
  {
    v147 = 0;
  }

  *(v106 + 2) = v147;
  *(v106 + 372) = 0;
  if (!*v218)
  {
    *&__A[0] = 0x3F6B851F3F6147AELL;
    DWORD2(__A[0]) = 1064011039;
    *(a1 + 123924) = 0;
    *(a1 + 123864) = xmmword_19B0B3050;
    *(a1 + 123880) = 0x100000001;
    *(a1 + 123888) = 0x31FFFFD23A000074;
    *(a1 + 123896) = 0x1000000010;
    *(a1 + 123928) = xmmword_19B0B3060;
    *(a1 + 123944) = 0x400000003FE66666;
    *(a1 + 123952) = 0x40000000;
    *(a1 + 123428) = vdup_n_s32(0x3C23D70Au);
    *(a1 + 123436) = 1;
    *(a1 + 123444) = 1065353216;
    *(a1 + 123956) = 0;
    *(a1 + 123904) = 0u;
    *(a1 + 123920) = 0;
    v148 = 32;
    v149 = (a1 + 123736);
    *(a1 + 123964) = 0;
    do
    {
      if ((v149 + 1) > a1 + 123864 || v149 > v149 + 1)
      {
        goto LABEL_329;
      }

      *v149++ = 0;
      --v148;
    }

    while (v148);
    v151 = (a1 + 123204);
    v152 = 56;
    v153 = (a1 + 122980);
    do
    {
      if (v153 + 1 > v151 || v153 > v153 + 1)
      {
        goto LABEL_329;
      }

      *v153++ = 0;
      --v152;
    }

    while (v152);
    v155 = (a1 + 123448);
    v156 = 60;
    do
    {
      if ((v155 + 1) > a1 + 123688 || v155 > v155 + 1)
      {
        goto LABEL_329;
      }

      *v155++ = 0;
      --v156;
    }

    while (v156);
    v158 = (a1 + 122920);
    v159 = __A;
    v160 = 3;
    v161 = (a1 + 122908);
    do
    {
      if (v161 + 1 > v158 || v161 > v161 + 1)
      {
        goto LABEL_329;
      }

      v163 = *v159++;
      *v161++ = v163;
      --v160;
    }

    while (v160);
    v164 = (a1 + 122876);
    v165 = (a1 + 122892);
    v166 = 4;
    do
    {
      if (v164 + 1 > v165 || v164 > v164 + 1)
      {
        goto LABEL_329;
      }

      *v164++ = 1067030938;
      --v166;
    }

    while (v166);
    v168 = 4;
    do
    {
      if ((v165 + 1) > a1 + 122908 || v165 > v165 + 1)
      {
        goto LABEL_329;
      }

      *v165++ = 1032805417;
      --v168;
    }

    while (v168);
    v170 = 12;
    v171 = (a1 + 122932);
    do
    {
      if ((v171 + 190) > a1 + 123736 || v171 + 189 > v171 + 190)
      {
        goto LABEL_329;
      }

      v171[189] = 1008981770;
      if ((v171 + 1) > a1 + 122980 || v171 > v171 + 1)
      {
        goto LABEL_329;
      }

      *v171++ = 981668463;
      --v170;
    }

    while (v170);
    v173 = 3;
    do
    {
      if ((v158 + 1) > a1 + 122932 || v158 > v158 + 1)
      {
        goto LABEL_329;
      }

      *v158++ = 1056293519;
      --v173;
    }

    while (v173);
    v175 = 56;
    while ((v151 + 1) <= a1 + 123428 && v151 <= v151 + 1)
    {
      *v151++ = 1065353216;
      if (!--v175)
      {
        goto LABEL_285;
      }
    }

    goto LABEL_329;
  }

LABEL_285:
  v177 = *(a1 + 64);
  v180 = v177 == 9600 || v177 == 16400 || v177 == 24400;
  *(a1 + 122116) = v180;
  *(a1 + 122136) = 0;
  v181 = *(a1 + 142);
  if (v177 <= 32000)
  {
    v182 = 3;
  }

  else
  {
    v182 = 6;
  }

  if (*(a1 + 142))
  {
    v182 = 1;
  }

  *(v2 + 252) = v182;
  *(v2 + 224) = v182 & 1;
  *(v2 + 228) = vbic_s8(0x100000001, vceqz_s32(vand_s8(vdup_n_s32(v182), 0x200000004)));
  v183 = ((*(a1 + 140) / *(v2 + 1208)) * 512.0) * 0.0078125;
  *(v2 + 236) = 0;
  v184 = (((v183 * v177) / 100.0) + 0.49);
  *(v217 + 623) = v184;
  if (v181)
  {
    *(v217 + 625) = v184;
    *(v217 + 627) = v184;
    *(v217 + 621) = 0;
  }

  else
  {
    v185 = 0;
    v186 = FrameSizeConfig;
    while (v184 != *v186)
    {
      ++v185;
      v186 += 6;
      if (v185 == 13)
      {
        goto LABEL_306;
      }
    }

    *(v217 + 621) = v185;
    *(v217 + 625) = v184;
    *(v217 + 627) = v186[1];
  }

LABEL_306:
  core_coder_reconfig(a1);
  *(a1 + 116868) = 0u;
  *(a1 + 116884) = 0u;
  *(a1 + 116836) = 0u;
  *(a1 + 116852) = 0u;
  *(a1 + 116804) = 0u;
  *(a1 + 116820) = 0u;
  *(a1 + 116772) = 0u;
  *(a1 + 116788) = 0u;
  *(a1 + 116740) = 0u;
  *(a1 + 116756) = 0u;
  *(a1 + 116708) = 0u;
  *(a1 + 116724) = 0u;
  *(a1 + 116676) = 0u;
  *(a1 + 116692) = 0u;
  *(a1 + 116660) = 0u;
  *(a1 + 122152) = *(a1 + 64) > 47999;
  v187 = *(v2 + 1212);
  *(a1 + 122176) = 1;
  *(a1 + 122160) = 5;
  *(a1 + 122636) = 0;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122444), 1, 0x10uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122508), 1, 0x10uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122572), 1, 0x10uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122648), 1, 8uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122188), 1, 0x10uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122316), 1, 0x10uLL);
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, (a1 + 122380), 1, 0x10uLL);
  *(a1 + 122168) = 0x4000000040;
  v188 = a1 + 122744;
  v189 = a1 + 122808;
  v190 = a1 + 122872;
  if (v187 == 12800)
  {
    v191 = 0;
    v192 = a1 + 122748;
    while (1)
    {
      v193 = v192 + v191;
      v194 = (v192 + v191 - 68);
      v195 = v192 + v191 - 64;
      if (v195 > v188 || v194 > v195)
      {
        goto LABEL_329;
      }

      v197 = lsf_init[v191 / 4];
      *v194 = v197;
      if (v193 > v189)
      {
        goto LABEL_329;
      }

      if (v193 < 4)
      {
        goto LABEL_329;
      }

      *(v193 - 4) = v197;
      v198 = v192 + v191 + 64;
      if (v198 > v190)
      {
        goto LABEL_329;
      }

      v199 = (v192 + v191 + 60);
      if (v199 > v198)
      {
        goto LABEL_329;
      }

      *v199 = v197;
      v191 += 4;
      if (v191 == 64)
      {
        goto LABEL_328;
      }
    }
  }

  v200 = 0;
  v201 = a1 + 122748;
  do
  {
    v202 = v201 + v200;
    v203 = (v201 + v200 - 68);
    v204 = v201 + v200 - 64;
    if (v204 > v188 || v203 > v204)
    {
      goto LABEL_329;
    }

    v206 = *&lsf_init[v200 / 4] * 1.25;
    *v203 = v206;
    if (v202 > v189)
    {
      goto LABEL_329;
    }

    if (v202 < 4)
    {
      goto LABEL_329;
    }

    *(v202 - 4) = v206;
    v207 = v201 + v200 + 64;
    if (v207 > v190)
    {
      goto LABEL_329;
    }

    v208 = (v201 + v200 + 60);
    if (v208 > v207)
    {
      goto LABEL_329;
    }

    *v208 = v206;
    v200 += 4;
  }

  while (v200 != 64);
LABEL_328:
  *(a1 + 122118) = 0;
  *(a1 + 122128) = 0;
  *(a1 + 122124) = 0;
  *(a1 + 122144) = 0;
}

void InitTransientDetection(int a1, int a2, unint64_t a3)
{
  v3 = a3 + 40;
  v4 = a3 + 528;
  if (a3 + 40 > a3 + 528)
  {
    goto LABEL_7;
  }

  *(a3 + 40) = a1 / 8;
  __A = 0.0;
  vDSP_vfill(&__A, (a3 + 44), 1, 0x78uLL);
  *(a3 + 524) = a2 % *(a3 + 40);
  if (v4 > a3 + 848)
  {
    goto LABEL_7;
  }

  __A = 107.37;
  vDSP_vfill(&__A, (a3 + 536), 1, 0x18uLL);
  __A = 107.37;
  vDSP_vfill(&__A, (a3 + 632), 1, 0x19uLL);
  __A = 1.0;
  vDSP_vfill(&__A, (a3 + 732), 1, 0x18uLL);
  v7 = *(a3 + 40);
  v8 = a2 / v7;
  *(a3 + 828) = a2 / v7;
  v9 = a2 % v7;
  *(a3 + 832) = v9;
  *(a3 + 836) = 1062207488;
  *(a3 + 840) = 0;
  *(a3 + 528) = v3;
  if (*(a3 + 524) > v9)
  {
    v9 = *(a3 + 524);
  }

  *(a3 + 524) = v9;
  if (v3 < a3)
  {
LABEL_7:
    __break(0x5519u);
  }

  else
  {
    *a3 = v4;
    *(a3 + 8) = v8;
    *(a3 + 12) = 8;
    *(a3 + 16) = GetAttackForTCXDecision;
    *(a3 + 24) = 1091043328;
    *(a3 + 28) = 0xFFFFFFFF00000000;
    *(a3 + 828) = v8 + 9;
  }
}

int64x2_t reset_indices_enc(uint64_t a1)
{
  *(a1 + 36) = 0;
  *(a1 + 50) = -65536;
  result = xmmword_19B0B2390;
  v2 = xmmword_19B0B23A0;
  v3 = xmmword_19B0A5840;
  v4 = xmmword_19B0A5850;
  v5 = (*(a1 + 40) + 18);
  v6 = 1960;
  v7 = vdupq_n_s64(0x7A1uLL);
  v8 = vdupq_n_s64(8uLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v4)), *result.i8), *result.i8).u8[0])
    {
      *(v5 - 8) = -1;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7A1uLL), *&v4)), *&result), *&result).i8[1])
    {
      *(v5 - 6) = -1;
    }

    if (vuzp1_s8(vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7A1uLL), *&v3))), *&result).i8[2])
    {
      *(v5 - 4) = -1;
      *(v5 - 2) = -1;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7A1uLL), *&v2)), *&result)).i32[1])
    {
      *v5 = -1;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7A1uLL), *&v2)), *&result)).i8[5])
    {
      v5[2] = -1;
    }

    if (vuzp1_s8(*&result, vuzp1_s16(*&result, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7A1uLL), *&result)))).i8[6])
    {
      v5[4] = -1;
      v5[6] = -1;
    }

    v2 = vaddq_s64(v2, v8);
    v3 = vaddq_s64(v3, v8);
    v4 = vaddq_s64(v4, v8);
    v5 += 16;
    result = vaddq_s64(result, v8);
    v6 -= 8;
  }

  while (v6);
  return result;
}

unint64_t GetAttackForTCXDecision(unint64_t result, unint64_t *a2, float a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  v7 = *result;
  v8 = *(result + 8);
  v9 = *(result + 16);
  v10 = (*result - 4);
  if (*result > v8 || v10 > v7 || v10 < v9)
  {
    goto LABEL_73;
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = (*a2 - 4);
  v17 = *a2 > v14 || v16 > v13;
  if (v17 || v16 < v15)
  {
    goto LABEL_73;
  }

  if (*v10 > (*v16 * a3))
  {
    goto LABEL_26;
  }

  v19 = (v7 - 8);
  if (v7 - 8 <= v10 && v19 >= v9)
  {
    v21 = (v13 - 8);
    if (v13 - 8 <= v16 && v21 >= v15)
    {
      if (*v19 <= (*v21 * a3))
      {
        v23 = 0;
        v22 = -1;
        goto LABEL_28;
      }

LABEL_26:
      v22 = 0;
      v23 = 1;
LABEL_28:
      v24 = 0;
      for (i = 0; ; ++i)
      {
        result = v7 + v24;
        v26 = v7 + v24 + 4;
        if (v26 > v8 || result > v26 || result < v9)
        {
          break;
        }

        v29 = (v13 + v24);
        v30 = v13 + v24 + 4;
        if (v30 > v14 || v29 > v30 || v29 < v15)
        {
          break;
        }

        v31 = *result;
        if (*result > (*v29 * a3))
        {
          if (i < 6)
          {
            v23 = 1;
          }

          result = v22 & 0xFFFFFFFB;
          if (result != 2)
          {
            if (v31 < ((*v29 * 1.125) * a3) && (i & 3) == 2)
            {
              v22 = i + 1;
            }

            else
            {
              v22 = i;
            }
          }

          goto LABEL_66;
        }

        v33 = (v7 + v24 - 4);
        if (v33 > result || v33 < v9)
        {
          break;
        }

        if (v31 <= ((*v33 * 1.5) * a3))
        {
          goto LABEL_66;
        }

        result = v7 + v24 - 8;
        if (result > v33 || result < v9)
        {
          break;
        }

        v34 = *result;
        v35 = (*result * 1.5) * a3;
        result = v22 & 0xFFFFFFFB;
        if (v31 <= v35 || result == 2)
        {
          goto LABEL_66;
        }

        v37 = i & 3;
        if (v31 >= ((*v33 + *v33) * a3))
        {
          if (v37 != 2 || v31 >= ((v34 + v34) * a3))
          {
LABEL_65:
            v22 = i;
            goto LABEL_66;
          }
        }

        else if (v37 != 2)
        {
          goto LABEL_65;
        }

        v22 = i | 1;
LABEL_66:
        v24 += 4;
        if (v24 == 32)
        {
          if (v22 == 5)
          {
            v38 = 6;
          }

          else
          {
            v38 = v22;
          }

          if (v22 == 4)
          {
            v38 = 7;
          }

          *a7 = v38;
          *a6 = v23;
          return result;
        }
      }
    }
  }

LABEL_73:
  __break(0x5519u);
  return result;
}

uint64_t getCoreSamplerateMode2(int a1, int a2, int a3)
{
  if (!a2)
  {
    return 12800;
  }

  result = 12800;
  if (a1 > 13199 || a2 != 1)
  {
    v5 = a1 < 13201 && a2 == 2;
    v6 = v5 || a3 == 1;
    v7 = v6;
    result = v6 ? 12800 : 16000;
    if (a2 != 1 && !v7)
    {
      v8 = a2 & 0xFFFFFFFE;
      if (a1 <= 32000 && v8 == 2)
      {
        return 16000;
      }

      else
      {
        if (a1 >= 64001)
        {
          v9 = 32000;
        }

        else
        {
          v9 = 25600;
        }

        if (v8 == 2)
        {
          return v9;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void IGFEncSetMode(unint64_t a1, int a2, int a3, int a4)
{
  v8 = 0;
  *(a1 + 1980) = 0;
  while (1)
  {
    v9 = (a1 + v8 + 800);
    v10 = a1 + v8 + 804;
    v11 = v9 < a1 + 800 || v10 > a1 + 892;
    if (v11 || v9 > v10)
    {
      break;
    }

    *v9 = 0;
    v8 += 4;
    if (v8 == 92)
    {
      v13 = 0;
      v14 = a1 + 1596;
      while (1)
      {
        v15 = (a1 + v13 + 1576);
        v16 = a1 + v13 + 1580;
        v17 = v15 < a1 + 1576 || v16 > v14;
        if (v17 || v15 > v16)
        {
          goto LABEL_43;
        }

        *v15 = 0;
        v13 += 4;
        if (v13 == 20)
        {
          v19 = 0;
          v20 = (a1 + 1616);
          while (1)
          {
            v21 = (a1 + v19 + 1596);
            v22 = a1 + v19 + 1600;
            v23 = v21 < v14 || v22 > v20;
            if (v23 || v21 > v22)
            {
              goto LABEL_43;
            }

            *v21 = 0;
            v19 += 4;
            if (v19 == 20)
            {
              v25 = a1 + 1984;
              *(a1 + 1976) = 0;
              *(a1 + 1944) = 0u;
              *(a1 + 1960) = 0u;
              *(a1 + 1912) = 0u;
              *(a1 + 1928) = 0u;
              *(a1 + 1880) = 0u;
              *(a1 + 1896) = 0u;
              *(a1 + 1848) = 0u;
              *(a1 + 1864) = 0u;
              *(a1 + 1816) = 0u;
              *(a1 + 1832) = 0u;
              *(a1 + 1784) = 0u;
              *(a1 + 1800) = 0u;
              *(a1 + 1752) = 0u;
              *(a1 + 1768) = 0u;
              *(a1 + 1720) = 0u;
              *(a1 + 1736) = 0u;
              *(a1 + 1688) = 0u;
              *(a1 + 1704) = 0u;
              *(a1 + 1656) = 0u;
              *(a1 + 1672) = 0u;
              __A = 0.0;
              vDSP_vfill(&__A, v20, 1, 5uLL);
              v33 = 0.0;
              vDSP_vfill(&v33, (a1 + 1636), 1, 5uLL);
              if (v25 < a1)
              {
                goto LABEL_43;
              }

              if (!IGFCommonFuncsIGFConfiguration(a2, a3, a1, a4))
              {
                *(a1 + 1984) = 0;
                *(a1 + 1988) = -1;
                *(a1 + 1996) = -1;
LABEL_42:
                *(a1 + 2004) = 0;
                *(a1 + 2016) = 0;
                *(a1 + 5364) = 0;
                v34 = 0.0;
                vDSP_vfill(&v34, (a1 + 2020), 1, 0x344uLL);
                return;
              }

              v26 = *(a1 + 132) - *(a1 + 128);
              *(a1 + 896) = 0;
              *(a1 + 1424) = 0;
              *(a1 + 1560) = 0;
              *(a1 + 1568) = 0;
              v27 = a1 + 1160;
              v28 = 64;
              v29 = (a1 + 904);
              while (v29 >= a1 + 904 && (v29 + 1) <= v27 && v29 <= v29 + 1)
              {
                *v29++ = 0;
                if (!--v28)
                {
                  v30 = 64;
                  v31 = (a1 + 1160);
                  while (v31 >= v27 && (v31 + 1) <= a1 + 1416 && v31 <= v31 + 1)
                  {
                    *v31++ = 0;
                    if (!--v30)
                    {
                      *(a1 + 1416) = v26;
                      *(a1 + 1420) = 0;
                      IGFCommonFuncsIGFGetCFTables(a2, a3, a4, (a1 + 1432), a1 + 1448, (a1 + 1448), a1 + 1464, (a1 + 1464), (a1 + 1472), a1 + 1488, (a1 + 1488), a1 + 1504, (a1 + 1504), a1 + 1520, (a1 + 1520), (a1 + 1528), a1 + 1544, (a1 + 1544), a1 + 1560);
                      *(a1 + 1984) = *(a1 + 4);
                      *(a1 + 1988) = *(a1 + 112);
                      goto LABEL_42;
                    }
                  }

                  goto LABEL_43;
                }
              }

              goto LABEL_43;
            }
          }
        }
      }
    }
  }

LABEL_43:
  __break(0x5519u);
}

void mdct_window_sine(uint64_t a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_19B0A5840;
    v5 = xmmword_19B0A5850;
    v19 = 3.1416 / (a2 + a2);
    v20 = vdupq_n_s64(4uLL);
    v6 = (a2 + 3) & 0xFFFFFFFC;
    v7 = (a1 + 8);
    v21 = v3;
    do
    {
      v27 = v5;
      v28 = v4;
      v8 = vorr_s8(vdup_n_s32(v2), 0x300000002);
      v9 = vmovn_s64(vcgeq_u64(v3, v5));
      v24 = vuzp1_s16(v9, v8).u8[0];
      v10.i32[0] = v2;
      v10.i32[1] = v2 + 1;
      v10.u64[1] = v8;
      v11 = vcvtq_f32_u32(v10);
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v12 = vmulq_n_f32(vaddq_f32(v11, v10), v19);
      v29 = vcvtq_f64_f32(*v12.f32);
      __xa = vcvt_hight_f64_f32(v12);
      v23 = sin(__xa.f64[1]);
      __x = sin(__xa.f64[0]);
      v22 = sin(v29.f64[1]);
      v13 = sin(v29.f64[0]);
      if (v24)
      {
        v14 = v13;
        *(v7 - 2) = v14;
      }

      if (vuzp1_s16(v9, *&v13).i8[2])
      {
        v15 = v22;
        *(v7 - 1) = v15;
      }

      v3 = v21;
      v16 = vmovn_s64(vcgeq_u64(v21, v28));
      if (vuzp1_s16(v16, v16).i32[1])
      {
        v17 = __x;
        *v7 = v17;
        v18 = v23;
        v7[1] = v18;
      }

      v2 += 4;
      v4 = vaddq_s64(v28, v20);
      v5 = vaddq_s64(v27, v20);
      v7 += 4;
    }

    while (v6 != v2);
  }
}

int *mdct_window_aldo(int *result, unint64_t a2, int *a3, unint64_t a4, int a5)
{
  v5 = &window_48kHz;
  if (a5 > 511)
  {
    switch(a5)
    {
      case 512:
        v5 = &window_256kHz;
        v6 = &window_8_16_32kHz;
        v7 = &dword_19B383C28;
        break;
      case 960:
        v6 = &window_48kHz + 1110;
        v7 = &window_48kHz + 1109;
        break;
      case 640:
        v10 = &dword_19B382198;
        v11 = -2;
        v12 = &window_8_16_32kHz;
        while (1)
        {
          v13 = result + 1;
          v14 = v10 + 1 > &window_256kHz || v13 > a2;
          v15 = v14 || result >= v13;
          if (v15)
          {
            goto LABEL_117;
          }

          v16 = *v10;
          v10 += 3;
          *result = v16;
          v17 = v12 + 1;
          if (v12 + 1 > huffsizn_tran)
          {
            goto LABEL_117;
          }

          result += 2;
          if (result > a2 || v13 > result)
          {
            goto LABEL_117;
          }

          *v13 = *v12;
          v11 += 2;
          ++v12;
          if (v11 >= 0x13E)
          {
            v18 = v10 + 1;
            v19 = v17 + 1;
            v20 = 318;
            while (1)
            {
              v21 = v17 < &window_8_16_32kHz || v19 > huffsizn_tran;
              v22 = result + 1;
              v23 = v21 || v22 > a2;
              if (v23 || result >= v22)
              {
                goto LABEL_117;
              }

              *result = *(v19 - 1);
              if (v10 < &window_48kHz)
              {
                goto LABEL_117;
              }

              if (v18 > &window_256kHz)
              {
                goto LABEL_117;
              }

              result += 2;
              if (result > a2 || v22 > result)
              {
                goto LABEL_117;
              }

              *v22 = *(v18 - 1);
              ++v19;
              v20 += 2;
              v18 += 3;
              if (v20 >= 0x1CA)
              {
                v25 = &window_48kHz + 1110;
                v26 = &window_48kHz + 1108;
                v35 = &dword_19B3841F0;
                v36 = -2;
                while (v26 >= &window_48kHz)
                {
                  result = v26 + 1;
                  if (v26 + 1 > v25)
                  {
                    break;
                  }

                  if (v26 > result)
                  {
                    break;
                  }

                  result = a3 + 1;
                  if ((a3 + 1) > a4)
                  {
                    break;
                  }

                  if (a3 > result)
                  {
                    break;
                  }

                  *a3 = *v26;
                  if (v35 < &window_8_16_32kHz)
                  {
                    break;
                  }

                  if (v35 + 1 > huffsizn_tran)
                  {
                    break;
                  }

                  if (v35 > v35 + 1)
                  {
                    break;
                  }

                  a3 += 2;
                  if (a3 > a4 || result > a3)
                  {
                    break;
                  }

                  v37 = *v35--;
                  *result = v37;
                  v26 -= 3;
                  v36 += 2;
                  if (v36 >= 0x8A)
                  {
                    v38 = 140;
                    while (1)
                    {
                      v39 = v35 + 1;
                      v40 = v35 < &window_8_16_32kHz || v39 > huffsizn_tran;
                      v41 = v40 || v35 >= v39;
                      v42 = a3 + 1;
                      v43 = v41 || v42 > a4;
                      if (v43 || a3 >= v42)
                      {
                        break;
                      }

                      v45 = *v35--;
                      *a3 = v45;
                      if (v26 < &window_48kHz)
                      {
                        break;
                      }

                      result = v26 + 1;
                      if (v26 + 1 > v25)
                      {
                        break;
                      }

                      if (v26 > result)
                      {
                        break;
                      }

                      a3 += 2;
                      if (a3 > a4 || v42 > a3)
                      {
                        break;
                      }

                      *v42 = *v26;
                      v38 += 2;
                      v26 -= 3;
                      if (v38 >= 0x118)
                      {
                        return result;
                      }
                    }

                    goto LABEL_117;
                  }
                }

                goto LABEL_117;
              }
            }
          }
        }

      default:
        return result;
    }

    v9 = 1;
    goto LABEL_43;
  }

  switch(a5)
  {
    case 160:
      v6 = &window_48kHz + 1110;
      v7 = &window_48kHz + 1107;
      v8 = &dword_19B38219C;
      v9 = 6;
      goto LABEL_44;
    case 256:
      v5 = &window_256kHz;
      v6 = &window_8_16_32kHz;
      v7 = &dword_19B383C28;
      v9 = 2;
LABEL_43:
      v8 = v5;
LABEL_44:
      v27 = (23 * a5) >> 5;
      v28 = 14 * a5;
      v29 = (14 * a5) >> 5;
      v30 = a5 >> 1;
      v31 = 4 * v9;
      v32 = v30;
      while (v8 >= v5)
      {
        if (v8 + 1 > v6)
        {
          break;
        }

        if (v8 > v8 + 1)
        {
          break;
        }

        v33 = result + 1;
        if ((result + 1) > a2 || result > v33)
        {
          break;
        }

        *result = *v8;
        v8 = (v8 + v31);
        ++result;
        if (!--v32)
        {
          if (a5 == 256 || a5 == 160)
          {
            ++v8;
          }

          v15 = v27 >= v30;
          v34 = v27 - v30;
          if (v34 != 0 && v15)
          {
            while (v8 >= v5)
            {
              result = v8 + 1;
              if (v8 + 1 > v6)
              {
                break;
              }

              if (v8 > result)
              {
                break;
              }

              result = v33 + 1;
              if ((v33 + 1) > a2 || v33 > result)
              {
                break;
              }

              *v33 = *v8;
              v8 = (v8 + v31);
              ++v33;
              if (!--v34)
              {
                goto LABEL_95;
              }
            }
          }

          else
          {
LABEL_95:
            v46 = v28 >> 6;
            if (v28 >> 6 <= 1)
            {
              v46 = 1;
            }

            v47 = v46;
            v48 = a3;
            while (v7 >= v5)
            {
              if (v7 + 1 > v6)
              {
                break;
              }

              if (v7 > v7 + 1)
              {
                break;
              }

              v49 = v48 + 1;
              if ((v48 + 1) > a4 || v48 > v49)
              {
                break;
              }

              *v48 = *v7;
              v7 -= v9;
              ++v48;
              if (!--v47)
              {
                if (a5 == 256 || a5 == 160)
                {
                  --v7;
                }

                v15 = v29 >= v46;
                v50 = v29 - v46;
                if (v50 == 0 || !v15)
                {
                  return result;
                }

                v51 = -4 * v9;
                while (v7 >= v5 && v7 + 1 <= v6 && v7 <= v7 + 1 && (v49 + 1) <= a4 && v49 <= v49 + 1)
                {
                  *v49 = *v7;
                  v7 = (v7 + v51);
                  ++v49;
                  if (!--v50)
                  {
                    return result;
                  }
                }

                goto LABEL_117;
              }
            }
          }

          break;
        }
      }

LABEL_117:
      __break(0x5519u);
      return result;
    case 320:
      v6 = &window_48kHz + 1110;
      v7 = &window_48kHz + 1108;
      v8 = &dword_19B382198;
      v9 = 3;
      goto LABEL_44;
  }

  return result;
}

uint64_t InitTnsConfigs(uint64_t result, signed int a2, uint64_t a3, int a4, int a5)
{
  v9 = result;
  if (a5 > 32000)
  {
    result = InitTnsConfiguration(result, a2 / 2, a3, a4, a5);
  }

  v10 = a3 + 48;
  if (a3 != -48)
  {
    if (a3 + 72 > (a3 + 96) || v10 > a3 + 72)
    {
      goto LABEL_13;
    }

    result = InitTnsConfiguration(v9, a2, a3 + 48, a4, a5);
  }

  v11 = a3 + 72;
  if (a3 != -72 && (v11 > a3 + 96 || v11 < v10))
  {
LABEL_13:
    __break(0x5519u);
    return result;
  }

  return InitTnsConfiguration(v9, a2 + a2 / 4, v11, a4, a5);
}

uint64_t lerp(uint64_t result, uint64_t a2, int a3, int a4)
{
  v6 = a3;
  if ((a3 / a4) <= 3.9609)
  {
    if ((a4 / v6) <= 3.9609)
    {
      if ((a4 | a3) < 0)
      {
LABEL_26:
        __break(0x5519u);
        return result;
      }

      return lerp_proc(result);
    }

    else if (a4 > a3)
    {
      if ((a3 & 0x80000000) == 0)
      {
        v8 = a4 / 2;
        while (1)
        {
          v9 = (a4 / v6) <= 3.9609 ? a3 : v8;
          if (v9 > a3 || (v9 | a4) < 0)
          {
            break;
          }

          lerp_proc(result);
          v8 = v9 >> 1;
          result = a2;
          a4 = v9;
          if (v9 <= a3)
          {
            return result;
          }
        }
      }

      goto LABEL_26;
    }
  }

  else if (a4 < a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      while (1)
      {
        v7 = (v6 / a4) <= 3.9609 ? a3 : 2 * a4;
        if (v7 > a3 || (v7 | a4) < 0)
        {
          break;
        }

        lerp_proc(result);
        result = a2;
        a4 = v7;
        if (v7 >= a3)
        {
          return result;
        }
      }
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t lsp_convert_poly(float *a1, int a2, int a3)
{
  *&v91[4] = *MEMORY[0x1E69E9840];
  memset(v90, 0, sizeof(v90));
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&v88[12] = v5;
  v87 = v5;
  *v88 = v5;
  v86[8] = v5;
  v86[9] = v5;
  v86[6] = v5;
  v86[7] = v5;
  v86[4] = v5;
  v86[5] = v5;
  v86[2] = v5;
  v86[3] = v5;
  v86[0] = v5;
  v86[1] = v5;
  v84 = -1;
  v83[2] = v5;
  v83[3] = v5;
  v83[0] = v5;
  v83[1] = v5;
  v81 = -1;
  v80[2] = v5;
  v80[3] = v5;
  v80[0] = v5;
  v80[1] = v5;
  v78 = -1;
  v77[2] = v5;
  v77[3] = v5;
  v77[1] = v5;
  v77[0] = v5;
  v75 = NAN;
  v73 = v5;
  v74 = v5;
  v71 = NAN;
  v69 = v5;
  v70 = v5;
  if (!a3)
  {
    LODWORD(v73) = 1065353216;
    if (a1 + 1 >= a1)
    {
      v24 = a1 + 16;
      if (a1 + 1 <= a1 + 16)
      {
        v25 = a1[1];
        *(&v73 + 1) = -*a1;
        LODWORD(v69) = 1065353216;
        v26 = a1 + 2;
        *(&v69 + 1) = -v25;
        v27 = 2;
        while (1)
        {
          v28 = v26 + 1;
          if (v26 + 1 < v26 || v28 > v24)
          {
            goto LABEL_71;
          }

          v30 = *v26;
          v26 += 2;
          v31 = v30;
          if (v26 < v28)
          {
            goto LABEL_71;
          }

          if (v26 > v24)
          {
            goto LABEL_71;
          }

          v32 = v27 - 1;
          if ((&v73 + 4 * v27 - 4) < &v73)
          {
            goto LABEL_71;
          }

          v33 = &v73 + v27;
          if (v33 < &v73)
          {
            goto LABEL_71;
          }

          if (v33 + 1 > v76)
          {
            goto LABEL_71;
          }

          if (v33 > v33 + 1)
          {
            goto LABEL_71;
          }

          v34 = -v31;
          v35 = *v28;
          *v33 = *(&v73 + v32) * v34;
          if ((&v69 + 4 * v32) < &v69)
          {
            goto LABEL_71;
          }

          v36 = &v69 + v27;
          if (v36 < &v69 || v36 + 1 > v72 || v36 > v36 + 1)
          {
            goto LABEL_71;
          }

          v37 = -v35;
          *v36 = *(&v69 + v32) * v37;
          v38 = v27 - 1;
          if (v32 >= 1)
          {
            break;
          }

LABEL_55:
          if (++v27 == 9)
          {
            for (i = 0; i != 36; i += 4)
            {
              *(&v73 + i) = *(&v73 + i) * 128.0;
              *(&v69 + i) = *(&v69 + i) * 128.0;
            }

            v66 = v77;
            v67 = v79;
            v68 = v77;
            lsp2a_stab(a1, &v66);
            goto LABEL_59;
          }
        }

        while (1)
        {
          v39 = v38;
          v40 = v38 - 1;
          v41 = &v73 + 4 * v40;
          v42 = v41 + 4;
          v43 = v41 < &v73 || v42 > v76;
          v44 = v43 || v41 > v42;
          v45 = &v73 + v39;
          v46 = v45 + 1;
          v47 = !v44 && v45 >= &v73;
          v48 = !v47 || v46 > v76;
          if (v48 || v45 > v46)
          {
            break;
          }

          *v45 = *v45 + (v34 * *(&v73 + v40));
          v50 = &v69 + v40;
          if (v50 < &v69)
          {
            break;
          }

          if (v50 + 1 > v72)
          {
            break;
          }

          if (v50 > v50 + 1)
          {
            break;
          }

          v51 = &v69 + 4 * v39;
          if (v51 < &v69 || v51 + 4 > v72 || v51 > v51 + 4)
          {
            break;
          }

          *(&v69 + v39) = *(&v69 + v39) + (v37 * *v50);
          v38 = v39 - 1;
          if (v39 <= 1)
          {
            goto LABEL_55;
          }
        }
      }
    }

LABEL_71:
    __break(0x5519u);
  }

  isp2a(a1, v77, v79);
  v6 = 0;
  v7 = *v77;
  LODWORD(v73) = v77[0];
  LODWORD(v69) = v77[0];
  v8 = &v78;
  v9 = *v77;
  do
  {
    if (v8 < v77)
    {
      goto LABEL_71;
    }

    if (v8 + 1 > v79)
    {
      goto LABEL_71;
    }

    if (v8 > v8 + 1)
    {
      goto LABEL_71;
    }

    v10 = (&v73 + v6 + 4);
    if (v10 < &v73)
    {
      goto LABEL_71;
    }

    v11 = (&v73 + v6 + 8);
    if (v11 > v76)
    {
      goto LABEL_71;
    }

    if (v10 > v11)
    {
      goto LABEL_71;
    }

    v12 = *(v77 + v6 + 4);
    v13 = *v8;
    v9 = (v12 + *v8) - v9;
    *v10 = v9;
    v14 = (&v69 + v6 + 4);
    if (v14 < &v69)
    {
      goto LABEL_71;
    }

    v15 = (&v69 + v6 + 8);
    if (v15 > v72 || v14 > v15)
    {
      goto LABEL_71;
    }

    v7 = (v12 - v13) + v7;
    *v14 = v7;
    --v8;
    v6 += 4;
  }

  while (v6 != 32);
  v16 = *(&v73 + 4);
  v17 = *(&v73 + 3);
  v19 = v74;
  v18 = *(&v74 + 2);
  LODWORD(v73) = 1124073472;
  *(&v73 + 1) = *(&v73 + 1) * 64.0;
  *(&v73 + 2) = (*(&v73 + 2) * 32.0) + -256.0;
  *(&v73 + 3) = (*&v16 * -112.0) + (*(&v73 + 3) * 16.0);
  *&v74 = ((*(&v16 + 1) * -48.0) + 160.0) + (*&v74 * 8.0);
  *(&v74 + 1) = ((v17 * -20.0) + (*&v16 * 56.0)) + (*(&v74 + 1) * 4.0);
  *(&v74 + 2) = (((*(&v16 + 1) * 18.0) + -32.0) + (*&v19 * -8.0)) + (*(&v74 + 2) * 2.0);
  *(&v74 + 3) = (((*&v16 * -7.0) + (v17 * 5.0)) + (*(&v19 + 1) * -3.0)) + *(&v74 + 3);
  v75 = (((1.0 - *(&v16 + 1)) + *&v19) - v18) + (v75 * 0.5);
  v20 = *(&v69 + 4);
  v21 = *(&v69 + 3);
  v22 = v70;
  v23 = *(&v70 + 2);
  LODWORD(v69) = 1124073472;
  *(&v69 + 1) = *(&v69 + 1) * 64.0;
  *(&v69 + 2) = (*(&v69 + 2) * 32.0) + -256.0;
  *(&v69 + 3) = (*&v20 * -112.0) + (*(&v69 + 3) * 16.0);
  *&v70 = ((*(&v20 + 1) * -48.0) + 160.0) + (*&v70 * 8.0);
  *(&v70 + 1) = ((v21 * -20.0) + (*&v20 * 56.0)) + (*(&v70 + 1) * 4.0);
  *(&v70 + 2) = (((*(&v20 + 1) * 18.0) + -32.0) + (*&v22 * -8.0)) + (*(&v70 + 2) * 2.0);
  *(&v70 + 3) = (((*&v20 * -7.0) + (v21 * 5.0)) + (*(&v22 + 1) * -3.0)) + *(&v70 + 3);
  v71 = (((1.0 - *(&v20 + 1)) + *&v22) - v23) + (v71 * 0.5);
LABEL_59:
  if (a2 == 256)
  {
    powerspect(&grid50, &grid40, 0x33u, &v73, &v69, v86, v89, 0);
    v56 = &grid40;
    v57 = &sigma_MSLVQ;
    v58 = 41;
  }

  else
  {
    powerspect(&grid40, &sigma_MSLVQ, 0x29u, &v73, &v69, v86, v89, 1);
    v59 = 0;
    LODWORD(v53) = v87;
    v60 = v88;
    v54 = 2;
    v55 = 0.0;
    v61 = vdupq_n_s64(0xAuLL);
    do
    {
      v62 = vdupq_n_s64(v59);
      v63 = vorrq_s8(v62, xmmword_19B0A5850);
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v61, v63)), *&v53).u8[0])
      {
        *(v60 - 3) = LODWORD(v53);
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v63)), *&v53).i8[2])
      {
        *(v60 - 2) = LODWORD(v53);
      }

      if (vuzp1_s16(*&v53, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), vorrq_s8(v62, xmmword_19B0A5840)))).i32[1])
      {
        *(v60 - 1) = LODWORD(v53);
        *v60 = LODWORD(v53);
      }

      v59 += 4;
      v60 += 4;
    }

    while (v59 != 12);
    v56 = &grid50;
    v57 = &grid40;
    v58 = 51;
  }

  spectautocorr(v56, v57, v58, v86, v83, v53, *&v54, v55);
  v64 = lev_dur(v80, v82, v83, &v85, 16, v90, v91);
  v66 = v80;
  v67 = v82;
  v68 = v80;
  a2lsp_stab(&v66, a1, &stable_LSP);
  return v64;
}

unint64_t synth_mem_updt2(unint64_t result, int a2, unint64_t a3, unint64_t a4, _OWORD *a5, unint64_t a6, __int128 *a7, uint64_t a8, _OWORD *a9, unint64_t a10, __int16 a11)
{
  v15 = result;
  if (a11 == 1)
  {
    v16 = result + ((result + ((result & 0x8000) >> 15)) >> 1);
    v17 = a3 + 1920 - 4 * v16;
    v18 = v17 <= a4 && v17 >= a3;
    if (!v18 || v16 < 0)
    {
      goto LABEL_61;
    }

    v19 = a2 + ((a2 + ((a2 & 0x8000) >> 15)) >> 1);
    result = a3 + 1920 - 4 * v19;
    v20 = (a4 - v17) >> 2 < v16 || result > a4;
    v21 = !v20 && result >= a3;
    if (!v21 || v19 < 0 || (a4 - result) >> 2 < v19)
    {
      goto LABEL_61;
    }

    v22 = v16;
    v23 = a2 + ((a2 + ((a2 & 0x8000) >> 15)) >> 1);
  }

  else
  {
    v17 = a3 + 1280 - 4 * result;
    v24 = v17 <= a4 && v17 >= a3;
    if (!v24 || (result & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    result = a3 + 1280 - 4 * a2;
    v25 = (a4 - v17) >> 2 < v15 || result > a4;
    v26 = !v25 && result >= a3;
    if (!v26 || a2 < 0 || (a4 - result) >> 2 < a2)
    {
      goto LABEL_61;
    }

    v22 = v15;
    v23 = a2;
  }

  result = lerp(result, v17, v22, v23);
  v27 = (v15 * 1.25 / 20.0);
  v28 = a5 - 4 * v27 + 240;
  v29 = v28 <= a6 && v28 >= a5;
  if (!v29 || v27 < 0 || ((v30 = (a2 * 1.25 / 20.0), result = a5 - 4 * v30 + 240, (a6 - v28) >> 2 >= v27) ? (v31 = result > a6) : (v31 = 1), !v31 ? (v32 = result >= a5) : (v32 = 0), !v32 || v30 < 0 || (a6 - result) >> 2 < v30 || (result = lerp(result, v28, v27, v30), v33 = a5 + 11, a5 + 11 < a5) || a6 < v33 || a6 - v33 <= 0x3F || (v34 = *v33, v35 = a5[12], v36 = a5[14], a7[2] = a5[13], a7[3] = v36, *a7 = v34, a7[1] = v35, a7 + 4 < a7) || a9 && (a10 < a9 || a10 - a9 <= 0x3F || (v37 = *a7, v38 = a7[1], v39 = a7[3], a9[2] = a7[2], a9[3] = v39, *a9 = v37, a9[1] = v38, a9 + 4 < a9))))
  {
LABEL_61:
    __break(0x5519u);
  }

  return result;
}

float *lsp2a_stab(uint64_t a1, unint64_t *a2)
{
  *&v37[4] = *MEMORY[0x1E69E9840];
  v36 = -1;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v35[0] = v4;
  v35[1] = v4;
  v33 = -1;
  v32[0] = v4;
  v32[1] = v4;
  v5 = a1 + 64;
  v29 = a1;
  v30 = a1 + 64;
  v31 = a1;
  get_lsppol(&v29, v35, 1);
  v29 = a1;
  v30 = v5;
  v31 = a1;
  get_lsppol(&v29, v32, 2);
  v6 = 0;
  v7 = 32;
  do
  {
    v8 = v35 + v7;
    if (&v34[v7 + 8] < v35 || v8 > v37 || &v34[v7 + 8] > v8)
    {
      goto LABEL_38;
    }

    v11 = (v32 + v7);
    *(v35 + v7) = *&v34[v7 + 8] + *(v35 + v7);
    v12 = (&v31 + v7 + 4);
    if (&v31 + v7 + 4 < v32 || v11 > v34 || v12 > v11)
    {
      goto LABEL_38;
    }

    *(v32 + v7) = *(v32 + v7) - *v12;
    v7 -= 4;
    v28 = v6++ >= 7;
  }

  while (!v28);
  v13 = *a2;
  v14 = a2[1];
  v15 = *a2 + 4;
  if (v15 > v14 || v13 > v15 || (v16 = a2[2], v13 < v16))
  {
LABEL_38:
    __break(0x5519u);
  }

  v17 = 0;
  v18 = 0;
  *v13 = 1065353216;
  v19 = a2[1];
  v20 = (*a2 + 64);
  do
  {
    v21 = (v35 + v17);
    result = (v32 + v17);
    v23 = &v13[v17 / 4 + 1];
    v24 = v35 + v17 + 8 > v37 || v32 + v17 + 8 > v34;
    v25 = &v13[v17 / 4 + 2];
    v28 = !v24 && v25 <= v14 && v23 <= v25 && v23 >= v16;
    if (!v28)
    {
      goto LABEL_38;
    }

    *v23 = (v21[1] + result[1]) * 0.5;
    if ((v20 + 1) > v19 || v20 > v20 + 1 || v20 < v16)
    {
      goto LABEL_38;
    }

    *v20-- = (v21[1] - result[1]) * 0.5;
    v17 += 4;
    v28 = v18++ >= 7;
  }

  while (!v28);
  return result;
}

float *weight_a(float *result, unint64_t a2, float *a3, unint64_t a4, int a5, float a6)
{
  v6 = (result + 1) <= a2 && result + 1 >= result;
  v7 = a3 + 1;
  if (v6 && v7 <= a4 && v7 >= a3)
  {
    *a3 = *result;
    LOWORD(v10) = 1;
    v11 = a6;
    while (1)
    {
      v12 = v10;
      v13 = &result[v10];
      v14 = v13 + 1;
      v15 = v13 < result || v14 > a2;
      v16 = v15 || v13 > v14;
      v17 = &a3[v12];
      v18 = v17 + 1;
      v19 = !v16 && v17 >= a3;
      v20 = !v19 || v18 > a4;
      if (v20 || v17 > v18)
      {
        break;
      }

      *v17 = v11 * *v13;
      v11 = v11 * a6;
      v10 = (v12 + 1);
      if (v10 > a5)
      {
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *deemph(float *result, int a2, float *a3, float a4)
{
  v4 = result + 1;
  if (result + 1 < result)
  {
    goto LABEL_14;
  }

  v5 = &result[a2];
  if (v4 > v5)
  {
    goto LABEL_14;
  }

  *result = *result + (a4 * *a3);
  if (a2 >= 2)
  {
    v6 = a2 - 1;
    while (v4 >= result && (v4 + 1) <= v5 && v4 <= v4 + 1)
    {
      *v4 = *v4 + (a4 * *(v4 - 1));
      ++v4;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_14;
  }

LABEL_9:
  v7 = (v5 - 4);
  if (v5 < 4 || v7 < result)
  {
LABEL_14:
    __break(0x5519u);
    return result;
  }

  v8 = *v7;
  if (fabsf(*v7) < 1.0e-10)
  {
    v8 = 0.0;
  }

  *a3 = v8;
  return result;
}

void resetTecEnc(float *__C, int a2)
{
  __A = 0.0;
  if (a2)
  {
    v3 = __C;
    v4 = 6;
  }

  else
  {
    vDSP_vfill(&__A, __C, 1, 0x1FuLL);
    __A = 0.0;
    vDSP_vfill(&__A, __C + 63, 1, 0x1BuLL);
    __A = 0.0;
    vDSP_vfill(&__A, __C + 31, 1, 0x10uLL);
    __A = 0.0;
    v3 = __C + 47;
    v4 = 16;
  }

  vDSP_vfill(&__A, v3, 1, v4);
}

void core_coder_reconfig(uint64_t a1)
{
  v1 = (a1 + 68796);
  if (a1 + 68724 > (a1 + 68796))
  {
    goto LABEL_90;
  }

  v3 = a1 + 110824;
  v4 = (a1 + 86032);
  v5 = a1 + 67462;
  BITS_ALLOC_init_config_acelp(*(a1 + 64), *(a1 + 68720), *(a1 + 110864), a1 + 68724);
  *v1 = 1;
  *(v5 + 1346) = 65537;
  *(v5 + 1350) = 1;
  *(v5 + 1354) = 0x3F6666663F400000;
  v6 = *(v3 + 984);
  if (v6)
  {
    *(v3 + 32) = 4;
  }

  else
  {
    *(v3 + 28) = 0x400000004;
    if (*v4 <= 0)
    {
      *(v3 + 28) = 3;
    }
  }

  v7 = *(v3 + 996);
  if (v7 == 12800)
  {
    v8 = *(v3 + 36);
    *(v3 + 8) = v8 & 1;
    *(v3 + 16) = (v8 >> 1) & 1;
    v9 = 1;
  }

  else
  {
    v9 = v7 < 25601;
  }

  *(v3 + 948) = vdup_n_s32(0x477FFF00u);
  *(a1 + 116900) = v9;
  v10 = *(a1 + 64);
  v12 = v7 != 12800 || v10 > 9600;
  *(v3 + 1000) = v12;
  if (*(a1 + 68720))
  {
    v13 = 0;
    v4[36] = 1065353216;
    v14 = v4 + 36;
    if (v6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v4[36] = 1065353216;
    v14 = v4 + 36;
    if (v7 > 16000)
    {
      goto LABEL_34;
    }

    v13 = 1;
    if (v6)
    {
      goto LABEL_34;
    }
  }

  v15 = 0;
  v16 = &dword_19B3A1698;
  while (v13 != *(v16 - 2) || v10 < *(v16 - 1) || v10 >= *v16)
  {
    ++v15;
    v16 += 4;
    if (v15 == 13)
    {
      goto LABEL_34;
    }
  }

  v17 = &scaleTcxTable[((v15 - (*v5 != 0)) << 48) >> 44];
  v18 = v17 + 16;
  if (v17 < scaleTcxTable || v18 > startLineWB || v17 > v18)
  {
    goto LABEL_90;
  }

  *v14 = *(v17 + 3);
LABEL_34:
  v21 = *(v3 + 960);
  v22 = v21 == 1;
  if (v10 >= 9601 && v21 == 1)
  {
    v22 = *v5 != 0;
  }

  *v3 = v22;
  if (!*(a1 + 18612) || *(a1 + 2) == 1)
  {
    *(v3 + 4) = 0;
  }

  v23 = *(a1 + 130);
  if (v23 == 2 && (v10 == 24400 || v10 == 16400))
  {
    if (!*(a1 + 129338))
    {
      *(a1 + 129356) = 0;
      *(a1 + 129340) = 0u;
    }

    *(a1 + 129338) = 1;
  }

  else
  {
    *(a1 + 129338) = 0;
  }

  *(a1 + 122152) = v10 > 47999;
  *(a1 + 122116) = 0;
  if (v10 == 9600 || v10 == 24400 || v10 == 16400)
  {
    *(a1 + 122116) = 1;
    ++*(v3 + 28);
  }

  v24 = *(v5 + 1242);
  if (v23 > 1)
  {
    if (*v5)
    {
      if (v24 >= 4)
      {
        if ((v24 - 13) >= 0xFFFFFFF7)
        {
          --v24;
LABEL_65:
          v26 = (v24 - 3);
LABEL_72:
          v27 = &startLineSWB[v26];
          if (v27 < startLineSWB)
          {
            goto LABEL_90;
          }

          v28 = v27 + 4;
          v29 = &E_ROM_qua_gain5b_const;
          goto LABEL_74;
        }

LABEL_71:
        v26 = 8;
        goto LABEL_72;
      }
    }

    else if (v24 >= 3)
    {
      if ((v24 - 12) >= 0xFFFFFFF7)
      {
        goto LABEL_65;
      }

      goto LABEL_71;
    }

    v24 = 3;
    goto LABEL_65;
  }

  if (!*v5)
  {
    if ((v24 & 0x80000000) == 0)
    {
      if (v24 <= 0xA)
      {
        goto LABEL_67;
      }

      goto LABEL_62;
    }

LABEL_66:
    v24 = 0;
    goto LABEL_67;
  }

  if (v24 < 1)
  {
    goto LABEL_66;
  }

  if ((v24 - 12) >= 0xFFFFFFF5)
  {
    --v24;
LABEL_67:
    v25 = v24;
    goto LABEL_68;
  }

LABEL_62:
  v25 = 10;
LABEL_68:
  v27 = &startLineWB[v25];
  if (v27 < startLineWB)
  {
    goto LABEL_90;
  }

  v28 = v27 + 4;
  v29 = startLineSWB;
LABEL_74:
  if (v28 > v29 || v27 > v28)
  {
    goto LABEL_90;
  }

  LODWORD(v27) = *v27;
  *(a1 + 122112) = v27;
  if (v10 <= 24399)
  {
    if (v10 <= *(a1 + 72) && *(a1 + 2) != 1)
    {
      return;
    }

    goto LABEL_83;
  }

  if (v10 <= 0x7D00 && (*(a1 + 72) - 13200) >> 6 <= 0xAE)
  {
    LOWORD(v27) = *(a1 + 140);
LABEL_83:
    if (v27 < 1)
    {
      return;
    }

    v27 = v27;
    for (i = (v3 + 1032); i >= v3 + 1032 && (i + 1) <= a1 + 116656 && i <= i + 1; ++i)
    {
      *i = 0;
      if (!--v27)
      {
        return;
      }
    }

LABEL_90:
    __break(0x5519u);
  }
}

double BITS_ALLOC_init_config_acelp(int a1, int a2, int a3, uint64_t a4)
{
  *a4 = a1 > 9600;
  *(a4 + 4) = 1;
  v5 = a1 < 9601 || a2 == 1;
  *(a4 + 6) = v5;
  *(a4 + 12) = 1;
  result = 0.00273437472;
  *(a4 + 20) = 0x3F6666663F400000;
  v7 = v5 ^ 1;
  *(a4 + 14) = v7;
  *(a4 + 16) = v7;
  if (a3 == 5)
  {
    *(a4 + 6) = 1;
    result = 0.00335937598;
    *(a4 + 20) = 0x3F6B851F3F4CCCCDLL;
    *(a4 + 14) = 0x20000;
  }

  return result;
}

void *get_lsppol(void *result, unint64_t a2, int a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result + 4 * a3;
  v6 = (v5 - 4);
  *a2 = 1065353216;
  v7 = a2 + 36;
  if (v5 <= v3 && v6 <= v5 && v6 >= v4)
  {
    *(a2 + 4) = *v6 * -2.0;
    v10 = 2;
    while (1)
    {
      v11 = v6 + 3;
      v6 += 2;
      v12 = v11 > v3 || v6 > v11;
      if (v12 || v6 < v4)
      {
        break;
      }

      v14 = a2 + 4 * v10;
      if (v14 < a2 || v14 + 4 > v7 || v14 > v14 + 4)
      {
        break;
      }

      v15 = *v6 * -2.0;
      *(a2 + 4 * v10) = (*(v14 - 8) + *(v14 - 8)) + (v15 * *(a2 + 4 * (v10 - 1)));
      if (v10 >= 3)
      {
        v16 = v10;
        do
        {
          v17 = (a2 + 4 * --v16);
          v18 = (v17 - 1);
          v19 = (v17 - 1) < a2 || v17 > v7;
          if (v19 || v18 > v17)
          {
            goto LABEL_43;
          }

          v21 = (v17 - 2) < a2 || (v17 - 2) > v18;
          v22 = v17 + 1;
          v23 = v21 || v22 > v7;
          if (v23 || v17 > v22)
          {
            goto LABEL_43;
          }

          *v17 = *v17 + (*(v17 - 2) + (v15 * *(v17 - 1)));
        }

        while (v16 > 2);
      }

      *(a2 + 4) = v15 + *(a2 + 4);
      if (++v10 == 9)
      {
        return result;
      }
    }
  }

LABEL_43:
  __break(0x5519u);
  return result;
}

float isp2a(float *a1, unint64_t a2, unint64_t a3)
{
  *&v52[12] = *MEMORY[0x1E69E9840];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *&v51[12] = v6;
  v50 = v6;
  *v51 = v6;
  v48 = -1;
  v47[0] = v6;
  v47[1] = v6;
  v7 = (a1 + 16);
  get_isppol(a1, (a1 + 16), &v50, v52, 8);
  if (a1 + 1 < a1)
  {
    goto LABEL_73;
  }

  v8 = 7;
  get_isppol(a1 + 1, v7, v47, &v49, 7);
  do
  {
    v9 = v8;
    v10 = v47 + v8 - 2;
    v11 = v10 + 1;
    v13 = v10 < v47 || v11 > &v49 || v10 > v11;
    v14 = v47 + 4 * v8;
    v15 = v14 + 4;
    if (v13 || v14 < v47 || v15 > &v49 || v14 > v15)
    {
      goto LABEL_73;
    }

    *(v47 + v8) = *(v47 + v8) - *v10;
    --v8;
  }

  while (v9 > 2);
  v19 = a1 + 15;
  if ((a1 + 15) > v7 || v19 < a1)
  {
    goto LABEL_73;
  }

  for (i = 0; i != 32; i += 4)
  {
    v21 = &v51[i - 12];
    if (&v51[i - 16] < &v50 || v21 > v52 || &v51[i - 16] > v21)
    {
      goto LABEL_73;
    }

    v24 = *v19;
    *&v51[i - 16] = *&v51[i - 16] * (*v19 + 1.0);
    v25 = v47 + i;
    if ((v47 + i) < v47 || v25 + 4 > &v49 || v25 > v25 + 4)
    {
      goto LABEL_73;
    }

    *(v47 + i) = (1.0 - v24) * *(v47 + i);
  }

  if (a2 + 4 > a3 || a2 + 4 < a2)
  {
    goto LABEL_73;
  }

  v26 = 0;
  *a2 = 1065353216;
  v27 = 15;
  do
  {
    v28 = &v51[v26 - 12];
    v29 = &v51[v26 - 8];
    v31 = v28 < &v50 || v29 > v52 || v28 > v29;
    v32 = (v47 + v26 + 4);
    v33 = (v47 + v26 + 8);
    v36 = v31 || v32 < v47 || v33 > &v49 || v32 > v33;
    v37 = (a2 + v26 + 4);
    v38 = a2 + v26 + 8;
    if (v36 || v37 < a2 || v38 > a3 || v37 > v38)
    {
      goto LABEL_73;
    }

    v42 = *v28;
    v43 = *v32;
    *v37 = (*v28 + *v32) * 0.5;
    v44 = (a2 + 4 * v27);
    if (v44 < a2 || (v44 + 1) > a3 || v44 > v44 + 1)
    {
      goto LABEL_73;
    }

    *v44 = (v42 - v43) * 0.5;
    --v27;
    v26 += 4;
  }

  while (v26 != 28);
  if (a2 + 32 < a2 || a2 + 36 > a3 || a2 + 32 > a2 + 36 || (*(a2 + 32) = (*&v51[16] * 0.5) * (*v19 + 1.0), v45 = (a2 + 64), a2 + 64 < a2) || a2 + 68 > a3 || v45 > a2 + 68)
  {
LABEL_73:
    __break(0x5519u);
  }

  result = *v19;
  *v45 = *v19;
  return result;
}

unint64_t powerspect(unint64_t result, unint64_t a2, unsigned __int16 a3, float *a4, float *a5, float *a6, unint64_t a7, int a8)
{
  v8 = a3;
  v9 = a6;
  v10 = a3;
  while (v9 >= a6 && (v9 + 1) <= a7 && v9 <= v9 + 1)
  {
    *v9++ = 0.0;
    if (!--v10)
    {
      if (a8)
      {
        v11 = 0;
        v12 = *a5;
        do
        {
          v12 = a5[++v11] - v12;
        }

        while (v11 != 8);
        v13 = &a6[a3];
        v14 = v13 - 1;
        if (v13 - 1 < a6 || v13 > a7 || v14 >= v13)
        {
          break;
        }

        v17 = 0;
        *v14 = v12 * (v12 * 4.0);
        v18 = 20;
      }

      else
      {
        v17 = 9;
        v18 = 25;
      }

      v19 = *a4;
      for (i = 1; i != 9; i += 4)
      {
        v19 = (((v19 + COERCE_FLOAT(*&a4[i])) + COERCE_FLOAT(HIDWORD(*&a4[i]))) + COERCE_FLOAT(*&a4[i + 2])) + COERCE_FLOAT(HIDWORD(*&a4[i]));
      }

      if ((a6 + 1) <= a7 && a6 + 1 >= a6)
      {
        v21 = fmaxf(v19, 0.00000095367);
        *a6 = v21 * (v21 * 4.0);
        v22 = (a5 + 9);
        v23 = a5 + 8;
        if (a5 + 8 <= a5 + 9 && v23 >= a5)
        {
          v24 = &a6[v18];
          if (v24 >= a6 && (v24 + 1) <= a7 && v24 <= v24 + 1)
          {
            v25 = a4 + 8;
            v26 = (a4[8] * a4[8]) + (*v23 * *v23);
            *v24 = v26 + v26;
            if (a8)
            {
              LODWORD(v27) = 1;
LABEL_49:
              v44 = v25 < a4 || v25 > a4 + 9;
              v46 = (a5 + 1) > v22 || (a5 + 2) > v22;
              v47 = v27;
LABEL_62:
              v48 = result + 4 * v47;
              v49 = (v48 - 4);
              v51 = v48 - 4 < result || v48 > a2 || v49 >= v48;
              if (!v51 && !v46)
              {
                v52 = 0;
                v53 = *v49;
                v54 = v53 * v53;
                v55 = *a4;
                v56 = a4[1];
                v57 = *a5;
                v58 = a5[1];
                v59 = a4 + 3;
                v60 = (a5 + 4);
                while (v60 - 4 <= v22 && v60 <= v22 && v60 - 4 <= v60)
                {
                  v55 = *(v59 - 1) + (v54 * v55);
                  v56 = *v59 + (v54 * v56);
                  v57 = *(v60 - 8) + (v54 * v57);
                  v58 = *(v60 - 4) + (v54 * v58);
                  v52 += 2;
                  v60 += 8;
                  v59 += 2;
                  if (v52 >= 6)
                  {
                    if (v44)
                    {
                      goto LABEL_91;
                    }

                    v61 = &a6[v47];
                    if (v61 < a6)
                    {
                      goto LABEL_91;
                    }

                    if (v61 + 4 > a7)
                    {
                      goto LABEL_91;
                    }

                    if (v61 > v61 + 4)
                    {
                      goto LABEL_91;
                    }

                    v62 = v53 + 1.0;
                    v63 = *v25 + (v54 * v55);
                    v64 = v53 * v56;
                    v65 = (v64 + v63) * ((v53 + 1.0) * (v64 + v63));
                    v66 = 1.0 - v53;
                    v67 = *v23 + (v54 * v57);
                    v68 = v53 * v58;
                    a6[v47] = (v65 + ((v68 + v67) * (v66 * (v68 + v67)))) + (v65 + ((v68 + v67) * (v66 * (v68 + v67))));
                    v69 = &a6[(v8 + ~v47)];
                    if (v69 < a6 || (v69 + 1) > a7 || v69 > v69 + 1)
                    {
                      goto LABEL_91;
                    }

                    *v69 = (((v63 - v64) * (v66 * (v63 - v64))) + ((v67 - v68) * (v62 * (v67 - v68)))) + (((v63 - v64) * (v66 * (v63 - v64))) + ((v67 - v68) * (v62 * (v67 - v68))));
                    if (++v47 < v18)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_83;
                  }
                }
              }
            }

            else
            {
              LOWORD(v27) = 1;
LABEL_30:
              v28 = result + 4 * v27;
              v29 = (v28 - 4);
              v31 = v28 - 4 < result || v28 > a2 || v29 >= v28;
              if (!v31 && (a5 + 1) <= v22)
              {
                v27 = v27;
                v32 = *v29;
                v33 = *a4;
                v34 = a5 + 1;
                v35 = a4 + 1;
                v36 = 8;
                v37 = *a5;
                while ((v34 + 1) <= v22 && v34 < v34 + 1)
                {
                  v39 = *v35++;
                  v33 = v39 + (v32 * v33);
                  v40 = *v34++;
                  v37 = v40 + (v32 * v37);
                  if (!--v36)
                  {
                    v41 = &a6[v27];
                    if (v41 < a6 || (v41 + 1) > a7 || v41 > v41 + 1)
                    {
                      goto LABEL_91;
                    }

                    *v41 = ((v33 * ((v32 + 1.0) * v33)) + (v37 * ((1.0 - v32) * v37))) + ((v33 * ((v32 + 1.0) * v33)) + (v37 * ((1.0 - v32) * v37)));
                    v42 = v27 + 1;
                    LODWORD(v27) = (v27 + 1);
                    if (v17 >= v42)
                    {
                      goto LABEL_30;
                    }

                    if (v27 >= v18)
                    {
LABEL_83:
                      for (j = a6; j >= a6 && (j + 1) <= a7 && j <= j + 1; ++j)
                      {
                        v71 = *j;
                        if (*j < 0.00001)
                        {
                          v71 = 0.00001;
                        }

                        *j = 1.0 / v71;
                        if (!--v8)
                        {
                          return result;
                        }
                      }

                      goto LABEL_91;
                    }

                    goto LABEL_49;
                  }
                }
              }
            }
          }
        }
      }

      break;
    }
  }

LABEL_91:
  __break(0x5519u);
  return result;
}

float spectautocorr(unint64_t a1, unint64_t a2, int a3, float *a4, unint64_t a5, double a6, double a7, double a8)
{
  *&v57[4] = *MEMORY[0x1E69E9840];
  v56 = NAN;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v54[2] = v8;
  v55 = v8;
  v54[0] = v8;
  v54[1] = v8;
  v9 = a4 + 1;
  if (a4 + 1 < a4)
  {
    goto LABEL_57;
  }

  v10 = &a4[a3];
  if ((a4 + 2) > v10 || v9 > a4 + 2)
  {
    goto LABEL_57;
  }

  v11 = a3 - 1;
  v12 = *v9;
  *a5 = *v9;
  v13 = 2;
  do
  {
    v14 = &a4[v13];
    v15 = v14 + 1;
    if (v14 < a4 || v15 > v10 || v14 > v15)
    {
      goto LABEL_57;
    }

    v12 = *v14 + v12;
    *a5 = v12;
    ++v13;
  }

  while (v11 > v13);
  *(a5 + 4) = 0;
  v18 = &a4[(v11 >> 1)];
  if (v18 < a4 || (v18 + 1) > v10 || v18 > v18 + 1)
  {
    goto LABEL_57;
  }

  *(a5 + 8) = -*v18;
  v19 = a5 + 8;
  for (i = 1; i < 0xE; i += 2)
  {
    *(v19 + 4) = 0;
    if (v19 < a5 || v19 > v19 + 4)
    {
      goto LABEL_57;
    }

    *(v19 + 8) = -*v19;
    v19 += 8;
  }

  LODWORD(v54[0]) = 1065353216;
  v21 = 1;
  v22 = 1;
  do
  {
    v23 = &a4[v22];
    v24 = v23 + 1;
    v26 = v23 < a4 || v24 > v10 || v23 > v24;
    v27 = &a4[~v21 + a3];
    v28 = v27 + 1;
    if (v26 || v27 < a4 || v28 > v10 || v27 > v28)
    {
      goto LABEL_57;
    }

    v32 = a1 + 4 * v22;
    v33 = (v32 - 4);
    if (v32 - 4 < a1 || v32 > a2 || v33 > v32)
    {
      goto LABEL_57;
    }

    v34 = 0;
    v35 = *v23 + *v27;
    v36 = *v23 - *v27;
    DWORD1(v54[0]) = *v33;
    v37 = *(v54 + 1) + *(v54 + 1);
    *(a5 + 4) = *(a5 + 4) + (v36 * *(v54 + 1));
    v38 = (a5 + 12);
    v39 = v54 + 2;
    do
    {
      v40 = v39 - 1;
      v41 = v39 - 1 < v54 || v40 > v39;
      if (v41 || v39 - 2 < v54 || v40 > v57 || v39 - 2 > v40)
      {
        goto LABEL_57;
      }

      v42 = *(v39 - 1);
      v43 = -(*(v39 - 2) - (v37 * v42));
      v44 = *v38;
      v45 = *(v38 - 1) + (v35 * v43);
      v46 = -(v42 - (v37 * v43));
      *v39 = v43;
      v39[1] = v46;
      v39 += 2;
      *(v38 - 1) = v45;
      *v38 = v44 + (v36 * v46);
      v34 += 2;
      v38 += 2;
    }

    while (v34 < 0xE);
    v56 = -(*(&v55 + 2) - (v37 * *(&v55 + 3)));
    *(a5 + 64) = *(a5 + 64) + (v35 * v56);
    v21 = ++v22;
  }

  while ((v11 >> 1) > v22);
  if (v9 > v10 || (v47 = &a4[v11], v47 < a4) || (v47 + 1) > v10 || v47 > v47 + 1)
  {
LABEL_57:
    __break(0x5519u);
  }

  v48 = 0;
  *&v8 = *a4 + *v47;
  *&a8 = *a4 - *v47;
  v49 = vdupq_lane_s32(*&v8, 0);
  v50 = vdupq_lane_s32(*&a8, 0);
  v51.i64[0] = 0x4000000040000000;
  v51.i64[1] = 0x4000000040000000;
  do
  {
    v52 = (a5 + v48);
    v58 = vld2q_f32(v52);
    v59.val[0] = vmlaq_f32(v49, v51, v58.val[0]);
    v59.val[1] = vmlaq_f32(v50, v51, v58.val[1]);
    vst2q_f32(v52, v59);
    v48 += 32;
  }

  while (v48 != 64);
  result = *&v8 + (*(a5 + 64) * 2.0);
  *(a5 + 64) = result;
  return result;
}

uint64_t lev_dur(float *a1, unint64_t a2, float *a3, unint64_t a4, int a5, float *a6, unint64_t a7)
{
  v47[1] = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v46[4] = v7;
  v46[5] = v7;
  v46[2] = v7;
  v46[3] = v7;
  v46[0] = v7;
  v46[1] = v7;
  v8 = (a3 + 1);
  if ((a3 + 1) > a4)
  {
    goto LABEL_69;
  }

  if (v8 < a3)
  {
    goto LABEL_69;
  }

  if ((a3 + 2) > a4)
  {
    goto LABEL_69;
  }

  if (v8 > (a3 + 2))
  {
    goto LABEL_69;
  }

  v9 = -a3[1] / *a3;
  *v46 = v9;
  v10 = a1 + 1;
  if ((a1 + 1) > a2)
  {
    goto LABEL_69;
  }

  if (v10 < a1)
  {
    goto LABEL_69;
  }

  *a1 = 1.0;
  if ((a1 + 2) > a2 || v10 > a1 + 2)
  {
    goto LABEL_69;
  }

  *v10 = v9;
  v11 = *a3 + (a3[1] * v9);
  if (a6)
  {
    v12 = a6 + 1;
    if ((a6 + 1) > a7)
    {
      goto LABEL_69;
    }

    if (v12 < a6)
    {
      goto LABEL_69;
    }

    *a6 = *a3;
    if ((a6 + 2) > a7 || v12 > a6 + 2)
    {
      goto LABEL_69;
    }

    *v12 = v11;
  }

  v13 = 0;
  v14 = 2;
  do
  {
    v15 = v14;
    v16 = v14;
    v17 = 0.0;
    if (v14 >= 1)
    {
      v18 = v14;
      v19 = a1;
      v20 = v14;
      while (1)
      {
        v21 = &a3[v18];
        v22 = v21 + 1;
        v23 = v21 < a3 || v22 > a4;
        v24 = v23 || v21 > v22;
        v25 = v19 + 1;
        v26 = !v24 && v19 >= a1;
        v27 = !v26 || v25 > a2;
        if (v27 || v19 > v25)
        {
          break;
        }

        v29 = *v19++;
        v17 = v17 + (*v21 * v29);
        --v18;
        if (!--v20)
        {
          goto LABEL_35;
        }
      }

LABEL_69:
      __break(0x5519u);
    }

LABEL_35:
    v30 = v46 + v14;
    v31 = v30 - 1;
    if (v30 - 1 < v46 || v30 > v47 || v31 > v30)
    {
      goto LABEL_69;
    }

    v34 = -v17 / v11;
    *v31 = v34;
    if (fabsf(v34) > 0.99945)
    {
      v13 = 1;
    }

    if (v14 >= 2)
    {
      v35 = v14 / 2;
      v36 = 1;
      do
      {
        v37 = &a1[v36];
        v38 = v37 + 1;
        v39 = v37 < a1 || v38 > a2;
        if (v39 || v37 > v38)
        {
          goto LABEL_69;
        }

        v41 = &a1[(v16 - v36)];
        if (v41 < a1 || (v41 + 1) > a2 || v41 > v41 + 1)
        {
          goto LABEL_69;
        }

        v42 = *v37 + (v34 * *v41);
        *v41 = *v41 + (v34 * *v37);
        *v37 = v42;
      }

      while (v35 >= ++v36);
    }

    v43 = &a1[v15];
    if (v43 < a1 || (v43 + 1) > a2 || v43 > v43 + 1)
    {
      goto LABEL_69;
    }

    *v43 = v34;
    v11 = v11 + (v34 * v17);
    if (v11 <= 0.0)
    {
      v11 = 0.01;
    }

    if (a6)
    {
      v44 = &a6[v15];
      if (v44 < a6 || (v44 + 1) > a7 || v44 > v44 + 1)
      {
        goto LABEL_69;
      }

      *v44 = v11;
    }

    v14 = (v15 + 1);
  }

  while (v14 <= a5);
  return v13;
}

void *a2lsp_stab(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  *&v73 = *MEMORY[0x1E69E9840];
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v72[0] = v6;
  v72[1] = v6;
  v70[1] = v6;
  v70[0] = v6;
  v7 = &v73;
  v71 = 1065353216;
  v69 = 1065353216;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  do
  {
    v11 = v8 + v4 + 8;
    if (v11 > v9 || (v12 = (v8 + v4 + 4), v12 > v11) || v12 < v10 || (v13 = v8 + v3 + 68, v13 > v9) || (v14 = (v8 + v3 + 64), v14 > v13) || v14 < v10 || (&v71 + v4) < &v71 || (v72 + v4 + 4) > &v73 || (v15 = *v12, v16 = *v14, *(v72 + v4) = (*v12 + *v14) - *(&v71 + v4), (&v69 + v4) < &v69) || (v70 + v4 + 4) > &v71)
    {
LABEL_76:
      __break(0x5519u);
    }

    *(v70 + v4) = (v15 - v16) + *(&v69 + v4);
    v4 += 4;
    v3 -= 4;
    v17 = v5++ >= 7;
  }

  while (!v17);
  v65 = &v71;
  v66 = &v73;
  v67 = &v71;
  result = chebps2_opt4(&v65, xmmword_19B0B2DD0);
  v21 = v20;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v61 = 0;
  v68 = v20;
  v25 = 3;
  v26 = 1.0;
  v27 = &v71;
  v28 = &v71;
  do
  {
    v29 = v23 + 1;
    v30 = &grid100[v29];
    v31 = v30 + 1;
    if (v30 < grid100 || v31 > STEPS || v30 > v31)
    {
      goto LABEL_76;
    }

    v34 = *v30;
    if (v29 <= v25)
    {
      v40 = &v68 + 4 * (v29 - v25);
      v41 = v40 + 12;
      v42 = v40 + 16;
      v43 = v40 <= &v68;
      if (v41 < &v68 || !v43 || v41 > v42)
      {
        goto LABEL_76;
      }

      LODWORD(v19) = *v41;
    }

    else
    {
      v63 = v21;
      if (v25 > 96)
      {
        if (v27 < v28)
        {
          goto LABEL_76;
        }

        result = chebps2(v27, v7, 8u, v34);
        v21 = v63;
        LODWORD(v19) = v46;
      }

      else
      {
        v35 = &grid100[v25];
        v36 = (v35 + 1);
        if (v35 + 1 < grid100)
        {
          goto LABEL_76;
        }

        v37 = (v35 + 5);
        if (v37 > STEPS || v36 > v37)
        {
          goto LABEL_76;
        }

        v38 = *v36;
        v65 = v27;
        v66 = v7;
        v67 = v28;
        result = chebps2_opt4(&v65, v38);
        v21 = v63;
        v19 = v39;
        v68 = v39;
        v25 += 4;
      }
    }

    if ((*&v21 * *&v19) <= 0.0)
    {
      if (v27 < v28)
      {
        goto LABEL_76;
      }

      v47 = 0;
      do
      {
        v62 = v19;
        v64 = v21;
        v48 = (v26 + v34) * 0.5;
        chebps2(v27, v7, 8u, v48);
        v19 = v62;
        v21 = v64;
        if ((*&v62 * v49) > 0.0)
        {
          *&v19 = v49;
        }

        else
        {
          *&v21 = v49;
          v26 = (v26 + v34) * 0.5;
        }

        if ((*&v62 * v49) > 0.0)
        {
          v34 = v48;
        }

        v17 = v47++ >= 3;
      }

      while (!v17);
      if (*&v19 == 0.0)
      {
        v26 = v34;
        v50 = a2;
      }

      else
      {
        v50 = a2;
        v26 = (*&v21 - *&v19) == 0.0 ? v34 : v34 - ((*&v19 * (v26 - v34)) / (*&v21 - *&v19));
      }

      v51 = (v50 + 4 * v24);
      if (v51 < v50 || (v51 + 1) > a2 + 64 || v51 > v51 + 1)
      {
        goto LABEL_76;
      }

      *v51 = v26;
      if (v61 == 1)
      {
        v7 = &v73;
      }

      else
      {
        v7 = &v71;
      }

      if (v61 == 1)
      {
        v28 = &v71;
      }

      else
      {
        v28 = &v69;
      }

      if (v23 > 96)
      {
        v25 = 97;
      }

      else
      {
        v52 = &grid100[v23];
        v53 = (v52 + 1);
        if (v52 + 1 < grid100)
        {
          goto LABEL_76;
        }

        v54 = (v52 + 5);
        if (v54 > STEPS || v53 > v54)
        {
          goto LABEL_76;
        }

        v55 = *v53;
        v65 = v28;
        v66 = v7;
        v67 = v28;
        chebps2_opt4(&v65, v55);
        v68 = v56;
        v25 = v22 + 4;
      }

      ++v24;
      v61 = 1 - v61;
      result = chebps2(v28, v7, 8u, v26);
      LODWORD(v21) = v57;
      v22 = v23;
      v27 = v28;
    }

    else
    {
      v22 = v29;
      LODWORD(v21) = v19;
      v26 = v34;
      ++v23;
    }
  }

  while (v24 <= 15 && v23 < 100);
  if (v24 <= 15)
  {
    for (i = 0; i != 64; i += 4)
    {
      *(a2 + i) = *(a3 + i);
    }
  }

  return result;
}

const float **chebps2_opt4(const float **result, float32x4_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = (*result + 1);
  v7 = v5 <= v3 && v2 <= v5 && v2 >= v4;
  v8 = v2 + 2;
  if (v7 && v8 <= v3 && v5 <= v8)
  {
    v11 = *result;
    v12 = vld1q_dup_f32(v11++);
    v13 = vaddq_f32(a2, a2);
    v14 = vld1q_dup_f32(v11);
    v15 = vmlaq_f32(v14, v12, v13);
    v16 = 6;
    while (1)
    {
      v17 = (v8 + 1) > v3 || v8 >= v8 + 1;
      if (v17 || v8 < v4)
      {
        break;
      }

      v19 = v15;
      v20 = vmlaq_f32(vnegq_f32(v12), v15, v13);
      v21 = vld1q_dup_f32(v8++);
      v15 = vaddq_f32(v20, v21);
      v12 = v19;
      if (!--v16)
      {
        v22 = v2 + 9;
        if ((v2 + 9) <= v3)
        {
          v23 = v2 + 8;
          if (v23 <= v22 && v23 >= v4)
          {
            return result;
          }
        }

        break;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *chebps2(float *result, unint64_t a2, unsigned __int16 a3, float a4)
{
  v4 = result + 1;
  v5 = (result + 1) <= a2 && v4 >= result;
  v6 = result + 2;
  if (v5 && v6 <= a2 && v4 <= v6)
  {
    v9 = *result;
    v10 = result[1] + ((a4 + a4) * *result);
    v11 = a3 - 2;
    while (v6 >= result && (v6 + 1) <= a2 && v6 <= v6 + 1)
    {
      v12 = v10;
      v13 = *v6++;
      v10 = v13 - (v9 - ((a4 + a4) * v10));
      v9 = v12;
      if (!--v11)
      {
        v14 = &result[a3];
        if (v14 >= result && v14 + 4 <= a2 && v14 <= v14 + 4)
        {
          return result;
        }

        break;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *get_isppol(float *result, unint64_t a2, float *a3, unint64_t a4, int a5)
{
  v5 = a3 + 1;
  v6 = (a3 + 1) <= a4 && v5 >= a3;
  if (v6)
  {
    *a3 = 1.0;
    if ((result + 1) <= a2 && result + 1 >= result && (a3 + 2) <= a4 && v5 <= a3 + 2)
    {
      *v5 = *result * -2.0;
      v7 = 2;
      while (1)
      {
        v8 = result;
        result += 2;
        v6 = result >= v8;
        v9 = (v8 + 3);
        v10 = !v6 || v9 > a2;
        if (v10 || result > v9)
        {
          break;
        }

        v12 = v7 - 1;
        v13 = &a3[v7 - 1];
        if (v13 < a3)
        {
          break;
        }

        if ((v13 + 1) > a4 || v13 > v13 + 1)
        {
          break;
        }

        v15 = &a3[v7];
        if (v15 - 2 < a3 || (v15 - 1) > a4 || v15 - 2 > v15 - 1 || v15 < a3 || (v15 + 1) > a4 || v15 > v15 + 1)
        {
          break;
        }

        v16 = *result * -2.0;
        *v15 = (*(v15 - 2) + *(v15 - 2)) + (v16 * *v13);
        if (v12 >= 2)
        {
          do
          {
            v17 = &a3[v12];
            v18 = (v17 - 1);
            v19 = v17 - 1 < a3 || v17 > a4;
            if (v19 || v18 > v17)
            {
              goto LABEL_50;
            }

            v21 = v17 - 2 < a3 || (v17 - 2) > v18;
            v22 = v17 + 1;
            v23 = v21 || v22 > a4;
            if (v23 || v17 > v22)
            {
              goto LABEL_50;
            }

            *v17 = *v17 + (*(v17 - 2) + (v16 * *(v17 - 1)));
            v25 = v12--;
          }

          while (v25 > 2);
        }

        *v5 = v16 + *v5;
        v7 = (v7 + 1);
        if (v7 > a5)
        {
          return result;
        }
      }
    }
  }

LABEL_50:
  __break(0x5519u);
  return result;
}

uint64_t lerp_proc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v61 = *MEMORY[0x1E69E9840];
  result = memset(__b, 255, sizeof(__b));
  if (v5 == v3)
  {
    if (v5 < 1)
    {
      return result;
    }

    v10 = 4 * (v5 & 0x7FFFu);
    if (v10 <= 4 * v5 && v10 < 0x1E01)
    {
      memcpy(__b, v8, v10);
      if (&__b[v10 / 4] >= __b)
      {
        result = memmove(v7, v8, v10);
        v11 = &v7[v10];
        goto LABEL_83;
      }
    }

    goto LABEL_85;
  }

  v12 = 16 * v5;
  if (v5 > 0)
  {
    v13 = 0x7FFF;
  }

  else
  {
    v13 = 0x8000;
  }

  if (v12 != v12)
  {
    LOWORD(v12) = v13;
  }

  result = div_s(v3, v12);
  v14 = vcvts_n_f32_s32(32 * result, 0x10uLL);
  v15 = (v14 * 0.5) + -0.5;
  if (v14 < 0.3)
  {
    v15 = v15 + -0.13;
  }

  if (v15 >= 0.0)
  {
    v21 = &v8[v3];
    v19 = &v8[v15];
    v22 = v19 + 1;
    v24 = v19 < v8 || v22 > v21 || v19 > v22;
    v25 = v19 + 2;
    if (v24 || v25 > v21 || v22 > v25)
    {
      goto LABEL_85;
    }

    v18 = v3;
    v20 = v15 - v15;
  }

  else
  {
    v16 = (v8 + 1);
    if (v8 + 1 < v8)
    {
      goto LABEL_85;
    }

    v17 = &v8[v3];
    if (v16 > v17 || v16 > (v8 + 2) || (v8 + 2) > v17)
    {
      goto LABEL_85;
    }

    v18 = v3;
    v19 = v8;
    v20 = v15;
  }

  __b[0] = *v19 + (v20 * (v19[1] - *v19));
  v28 = (v5 - 1);
  v29 = v14 + v15;
  v30 = &v8[v18];
  if (v5 >= 3)
  {
    v31 = v28 - 1;
    v32 = &__b[1];
    do
    {
      v33 = &v8[v29];
      v34 = v33 + 1;
      v35 = v33 < v8 || v34 > v30;
      if (v35 || v33 > v34)
      {
        goto LABEL_85;
      }

      v38 = *v33;
      v37 = v33 + 2;
      v39 = v38;
      v40 = v37 > v30 || v34 > v37;
      v41 = v32 + 1;
      v42 = !v40 && v32 >= __b;
      v43 = !v42 || v41 > &v61;
      if (v43 || v32 > v41)
      {
        goto LABEL_85;
      }

      *v32++ = v39 + ((v29 - v29) * (*v34 - v39));
      v29 = v14 + v29;
    }

    while (--v31);
  }

  v45 = v3 - 2;
  if (v29 <= (v3 - 1))
  {
    v45 = v29;
  }

  v46 = &v8[v45];
  v47 = v46 + 1;
  if (v46 < v8 || v47 > v30 || v46 > v47)
  {
    goto LABEL_85;
  }

  v51 = *v46;
  v50 = v46 + 2;
  v52 = v51;
  v53 = v50 > v30 || v47 > v50;
  v54 = &__b[v28];
  v55 = v54 + 1;
  v56 = !v53 && v54 >= __b;
  v57 = !v56 || v55 > &v61;
  if (v57 || v54 > v55)
  {
    goto LABEL_85;
  }

  *v54 = v52 + ((v29 - v45) * (*v47 - v52));
  if (v5 < 1)
  {
    return result;
  }

  v59 = 4 * (v5 & 0x7FFFu);
  if (v59 > 0x1E00 || 4 * v5 < v59)
  {
LABEL_85:
    __break(0x5519u);
  }

  result = memcpy(v7, __b, 4 * (v5 & 0x7FFFu));
  v11 = &v7[v59];
LABEL_83:
  if (v11 < v7)
  {
    goto LABEL_85;
  }

  return result;
}

uint64_t shl(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFFFFFFF0)
    {
      v6 = -16;
    }

    else
    {
      v6 = a2;
    }

    return shr(a1, -v6);
  }

  else
  {
    v3 = a2 <= 0xF || a1 == 0;
    if (!v3 || (v4 = a1 << a2, ((a1 << a2) + 0x8000) >= 0x10000))
    {
      *a3 = 1;
      if (a1 > 0)
      {
        LOWORD(v4) = 0x7FFF;
      }

      else
      {
        LOWORD(v4) = 0x8000;
      }
    }

    return v4;
  }
}

uint64_t div_s(int a1, int a2)
{
  v2 = 0;
  if (a1 && a2 && a1 <= a2 && ((a2 | a1) & 0x80000000) == 0)
  {
    if (a1 == a2)
    {
      return 0x7FFF;
    }

    else
    {
      v3 = 0;
      v2 = 0;
      do
      {
        v2 = (2 * a1 >= a2) | (2 * v2);
        if (2 * a1 < a2)
        {
          v4 = 0;
        }

        else
        {
          v4 = a2;
        }

        a1 = 2 * a1 - v4;
      }

      while (v3++ < 0xE);
    }
  }

  return v2;
}

uint64_t L_shl(int a1, int a2)
{
  v2 = -a2;
  if (v2 >= 32)
  {
    v3 = 32;
  }

  else
  {
    v3 = -a2;
  }

  v4 = a1 >> v3;
  v5 = a1 >> v3;
  if (a1 >= 0)
  {
    v5 = v4;
  }

  if (v2 >= 31)
  {
    v6 = a1 >> 31;
  }

  else
  {
    v6 = v5;
  }

  if (a2 >= 0)
  {
    v6 = a1;
  }

  v7 = 0x80000000 >> a2 > a1 || (0x7FFFFFFFu >> a2) < a1;
  v8 = a1 << a2;
  if (v7)
  {
    v8 = (a1 >> 31) ^ 0x7FFFFFFF;
  }

  if (a2 >= 0x1F)
  {
    v8 = (a1 >> 31) ^ 0x7FFFFFFF;
  }

  if (a2 >= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t shr(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (a2 <= 0xFFFFFFF0)
    {
      v5 = -16;
    }

    else
    {
      v5 = a2;
    }

    return shl(a1, -v5, a3);
  }

  else
  {
    v3 = a1 >> a2;
    if (a1 < 0)
    {
      v3 = a1 >> a2;
    }

    if (a2 >= 0xF)
    {
      LOWORD(v3) = a1 >> 15;
    }

    return v3;
  }
}

uint64_t InitTnsConfiguration(uint64_t result, signed int a2, uint64_t a3, int a4, int a5)
{
  if (result < 1 || a2 < 1 || !a3)
  {
    return result;
  }

  v5 = (a3 + 16);
  v6 = (a3 + 18);
  *a3 = 8;
  if (a5 < 32001)
  {
    v7 = 1;
    *(a3 + 1) = 1;
    v8 = &tnsParametersIGF32kHz_LowBR;
LABEL_9:
    *(a3 + 8) = v8;
    goto LABEL_10;
  }

  v9 = 100 * a2;
  if (result >= 0x7D01 && v9 == result)
  {
    v7 = 2;
    *(a3 + 1) = 2;
    v8 = &tnsParameters48kHz_grouped;
    goto LABEL_9;
  }

  if (result < 0x3E81)
  {
    if (v9 == result)
    {
      v7 = 2;
      *(a3 + 1) = 2;
      v8 = &tnsParameters16kHz_grouped;
    }

    else
    {
      v7 = 1;
      *(a3 + 1) = 1;
      v8 = &tnsParameters16kHz;
    }

    goto LABEL_9;
  }

  *(a3 + 1) = 2;
  if (v9 == result)
  {
    v8 = &tnsParameters32kHz_grouped;
  }

  else
  {
    v8 = &tnsParameters32kHz;
  }

  *(a3 + 8) = v8;
  v7 = 2;
LABEL_10:
  v10 = 2 * a2;
  do
  {
    if ((v6 + 1) > a3 + 22 || v6 >= v6 + 1 || v6 < v5)
    {
      __break(0x5519u);
      return result;
    }

    v13 = *v8;
    v8 += 4;
    *v6++ = v10 * v13 / result;
    --v7;
  }

  while (v7);
  if (a4 >= 1)
  {
    a2 = v10 * a4 / result;
  }

  *v5 = a2;
  return result;
}

uint64_t IGFCommonFuncsIGFConfiguration(int a1, int a2, uint64_t a3, int a4)
{
  result = IGF_MapBitRateToIndex(a1, a2, a4);
  *(a3 + 796) = result;
  if (result == 15)
  {
    return 0;
  }

  v6 = &igfMode[6 * result];
  v7 = v6 + 6;
  if (v6 < igfMode || v7 > cf_se00_tab || v6 >= v7)
  {
    __break(0x5519u);
  }

  else
  {
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v13 = v6[5];
    *(a3 + 4) = v10;
    *(a3 + 8) = v11;
    *(a3 + 12) = v13;
    *a3 = 0;
    IGF_gridSetUp(a3 + 16, result, v10, v11, v12, 1.0);
    IGF_gridSetUp(a3 + 276, *(a3 + 796), v10, v11, v12, 1.25);
    IGF_gridSetUp(a3 + 536, *(a3 + 796), v10, v11, v12, 0.5);
    return 1;
  }

  return result;
}

uint64_t IGFCommonFuncsIGFGetCFTables(int a1, int a2, int a3, void *a4, unint64_t a5, void *a6, unint64_t a7, _WORD *a8, char **a9, unint64_t a10, char **a11, unint64_t a12, void *a13, unint64_t a14, _WORD *a15, void *a16, unint64_t a17, void *a18, unint64_t a19)
{
  result = IGF_MapBitRateToIndex(a1, a2, a3);
  if (result > 8u)
  {
    if (result > 0xCu)
    {
      if (result - 13 >= 2)
      {
        return result;
      }
    }

    else if (result - 9 < 3)
    {
      if ((a4 + 2) > a5)
      {
        goto LABEL_50;
      }

      if (a4 + 2 < a4)
      {
        goto LABEL_50;
      }

      *a4 = cf_se00_tab;
      a4[1] = &cf_se01_tab;
      if ((a6 + 2) > a7)
      {
        goto LABEL_50;
      }

      if (a6 + 2 < a6)
      {
        goto LABEL_50;
      }

      v28 = &cf_se01_tab + 56 * (result - 4);
      *a6 = v28;
      a6[1] = v28 + 56;
      v29 = &cf_off_se01_tab[(result - 4)];
      if (v29 < cf_off_se01_tab)
      {
        goto LABEL_50;
      }

      if (v29 + 1 > cf_se02_tab)
      {
        goto LABEL_50;
      }

      if (v29 > v29 + 1)
      {
        goto LABEL_50;
      }

      *a8 = *v29;
      if ((a9 + 2) > a10)
      {
        goto LABEL_50;
      }

      if (a9 + 2 < a9)
      {
        goto LABEL_50;
      }

      v30 = &cf_se02_tab[392 * (result - 4)];
      if (v30 < cf_se02_tab)
      {
        goto LABEL_50;
      }

      *a9 = v30;
      a9[1] = cf_off_se02_tab;
      if ((a11 + 2) > a12 || a11 + 2 < a11)
      {
        goto LABEL_50;
      }

      v27 = &cf_off_se02_tab[14 * (result - 4)];
      goto LABEL_30;
    }

    if ((a4 + 2) > a5)
    {
      goto LABEL_50;
    }

    if (a4 + 2 < a4)
    {
      goto LABEL_50;
    }

    *a4 = cf_se00_tab;
    a4[1] = &cf_se01_tab;
    if ((a6 + 2) > a7)
    {
      goto LABEL_50;
    }

    if (a6 + 2 < a6)
    {
      goto LABEL_50;
    }

    *a6 = &unk_19B36D068;
    a6[1] = cf_off_se01_tab;
    *a8 = -1;
    if ((a9 + 2) > a10)
    {
      goto LABEL_50;
    }

    if (a9 + 2 < a9)
    {
      goto LABEL_50;
    }

    *a9 = &unk_19B36DCF2;
    a9[1] = cf_off_se02_tab;
    if ((a11 + 2) > a12 || a11 + 2 < a11)
    {
      goto LABEL_50;
    }

    v27 = &unk_19B36DEEA;
    goto LABEL_42;
  }

  if ((a4 + 2) > a5)
  {
    goto LABEL_50;
  }

  if (a4 + 2 < a4)
  {
    goto LABEL_50;
  }

  *a4 = cf_se00_tab;
  a4[1] = &cf_se01_tab;
  if ((a6 + 2) > a7)
  {
    goto LABEL_50;
  }

  if (a6 + 2 < a6)
  {
    goto LABEL_50;
  }

  v24 = &cf_se01_tab + 56 * result;
  *a6 = v24;
  a6[1] = v24 + 56;
  v25 = &cf_off_se01_tab[result];
  if (v25 < cf_off_se01_tab)
  {
    goto LABEL_50;
  }

  if (v25 + 1 > cf_se02_tab)
  {
    goto LABEL_50;
  }

  if (v25 > v25 + 1)
  {
    goto LABEL_50;
  }

  *a8 = *v25;
  if ((a9 + 2) > a10)
  {
    goto LABEL_50;
  }

  if (a9 + 2 < a9)
  {
    goto LABEL_50;
  }

  v26 = &cf_se02_tab[392 * result];
  if (v26 < cf_se02_tab)
  {
    goto LABEL_50;
  }

  *a9 = v26;
  a9[1] = cf_off_se02_tab;
  if ((a11 + 2) > a12 || a11 + 2 < a11)
  {
    goto LABEL_50;
  }

  v27 = &cf_off_se02_tab[14 * result];
LABEL_30:
  if (v27 < cf_off_se02_tab)
  {
LABEL_50:
    __break(0x5519u);
    return result;
  }

LABEL_42:
  *a11 = v27;
  a11[1] = &cf_se10_tab;
  if ((a13 + 2) > a14)
  {
    goto LABEL_50;
  }

  if (a13 + 2 < a13)
  {
    goto LABEL_50;
  }

  *a13 = &cf_se10_tab;
  a13[1] = &cf_se11_tab;
  *a15 = -7;
  if ((a16 + 2) > a17)
  {
    goto LABEL_50;
  }

  if (a16 + 2 < a16)
  {
    goto LABEL_50;
  }

  *a16 = &cf_se11_tab;
  a16[1] = &cf_off_se11_tab;
  if ((a18 + 2) > a19 || a18 + 2 < a18)
  {
    goto LABEL_50;
  }

  *a18 = &cf_off_se11_tab;
  a18[1] = &unk_19B36EA4A;
  return result;
}

uint64_t IGF_MapBitRateToIndex(int a1, int a2, int a3)
{
  if (a2 == 3)
  {
    v6 = 47999;
    if (a1 == 128000)
    {
      v16 = 14;
    }

    else
    {
      v16 = 15;
    }

    if (a1 == 96000)
    {
      v17 = 13;
    }

    else
    {
      v17 = v16;
    }

    if (a1 == 48000)
    {
      v9 = 12;
    }

    else
    {
      v9 = v17;
    }

    v10 = 16400;
    v11 = 9;
    v12 = 24400;
    v13 = 10;
    v14 = a1 == 32000;
    v15 = 11;
  }

  else
  {
    if (a2 != 2)
    {
      if (a3 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 15;
      }

      if (a1 == 13200)
      {
        v4 = v3;
      }

      else
      {
        v4 = 15;
      }

      if (a1 == 9600)
      {
        v4 = 0;
      }

      if (a2 == 1)
      {
        return v4;
      }

      else
      {
        return 15;
      }
    }

    v6 = 24399;
    if (a1 == 48000)
    {
      v7 = 8;
    }

    else
    {
      v7 = 15;
    }

    if (a1 == 32000)
    {
      v8 = 7;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 24400)
    {
      v9 = 6;
    }

    else
    {
      v9 = v8;
    }

    v10 = 9600;
    v11 = 2;
    v12 = 13200;
    if (a3 == 1)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }

    v14 = a1 == 16400;
    v15 = 5;
  }

  if (v14)
  {
    v5 = v15;
  }

  else
  {
    v5 = 15;
  }

  if (a1 == v12)
  {
    v5 = v13;
  }

  if (a1 == v10)
  {
    v5 = v11;
  }

  if (a1 > v6)
  {
    return v9;
  }

  return v5;
}

unint64_t IGF_gridSetUp(unint64_t result, int a2, signed int a3, int a4, int a5, float a6)
{
  if (a2 >= 0xF)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    if ((a2 - 12) < 3 || (qword_19B36F208[a2] - 208) <= 0x27 || (v6 = (&swb_offset_LB_new + 92 * a2), v7 = *v6, v8 = &igf_whitening_TH + 40 * a2, *(result + 208) = *v8, *(result + 224) = *(v8 + 1), *(result + 240) = *(v8 + 4), result + 248 < result + 208))
    {
LABEL_136:
      __break(0x5519u);
      return result;
    }

    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = &v6[i + 1];
        v11 = &v6[i + 2];
        v12 = v10 < v6 || v11 > (v6 + 23);
        if (v12 || v10 > v11)
        {
          goto LABEL_136;
        }

        v14 = *v10;
        if (a6 != 1.0)
        {
          v15 = v14 * a6;
          v16 = ((-v14 * a6) + 0.5);
          if (v15 <= 0.0)
          {
            v17 = -v16;
          }

          else
          {
            v17 = (v15 + 0.5);
          }

          v14 = (v17 & 1) + v17;
        }

        v18 = (result + i * 4);
        if (result + i * 4 < result || (v18 + 1) > result + 92 || v18 > v18 + 1)
        {
          goto LABEL_136;
        }

        *v18 = v14;
      }
    }
  }

  *(result + 196) = 0;
  if (a6 != 1.0)
  {
    v19 = a4 * a6;
    if (v19 <= 0.0)
    {
      v20 = -((-a4 * a6) + 0.5);
    }

    else
    {
      v20 = (v19 + 0.5);
    }

    a4 = (v20 & 1) + v20;
  }

  *(result + 92) = v7;
  v21 = v7 - 1;
  *(result + 112) = 0;
  *(result + 116) = v7 - 1;
  v22 = *result;
  *(result + 104) = *result;
  v23 = (result + 4 * (v7 - 1));
  if (v23 < result || (v23 + 1) > result + 92 || v23 > v23 + 1)
  {
    goto LABEL_136;
  }

  v24 = vcvts_n_f32_s32(a3, 1uLL) / a4;
  v25 = *v23;
  v26 = v24 * v22;
  if (v26 <= 0.0)
  {
    v27 = -(0.5 - v26);
  }

  else
  {
    v27 = (v26 + 0.5);
  }

  if ((v24 * v25) <= 0.0)
  {
    v28 = -(0.5 - (v24 * v25));
  }

  else
  {
    v28 = ((v24 * v25) + 0.5);
  }

  *(result + 108) = v25;
  *(result + 96) = v27;
  *(result + 100) = v28;
  v29 = a4 * a5 / (a3 >> 1);
  if (v29 < 1)
  {
    v30 = -(-v29 + 0.5);
  }

  else
  {
    v30 = (v29 + 0.5);
  }

  v31 = v30 & 1;
  if (v30 < 0)
  {
    v31 = -v31;
  }

  v32 = v31 + v30;
  *(result + 168) = v31 + v30;
  v33 = (0.5 - (v24 * (v31 + v30)));
  v34 = ((v24 * v32) + 0.5);
  if ((v24 * v32) <= 0.0)
  {
    v34 = -v33;
  }

  *(result + 120) = 0;
  *(result + 172) = v34;
  *(result + 200) = a4;
  *(result + 204) = a6;
  *(result + 176) = v22;
  if (a2 <= 7)
  {
    if (a2 <= 3)
    {
      if (a2 < 2)
      {
        v37 = 2;
        *(result + 164) = 2;
        v35 = (result + 184);
        *(result + 180) = *(result + 8);
        *(result + 124) = 2;
        *(result + 128) = v21;
        *(result + 144) = v32;
        *(result + 148) = v32;
        v40 = 0x3F3333333F4CCCCDLL;
        v53 = 1058642330;
LABEL_118:
        *v35 = *v23;
        *(result + 248) = v40;
        *(result + 256) = v53;
LABEL_119:
        v62 = result + 144;
        v63 = (result + 4 * v37 + 124);
        v64 = v37 - 4;
        while (1)
        {
          v65 = (v63 + 15);
          v66 = (v63 + 14) < result + 176 || v65 > result + 196;
          if (v66 || (v63 + 14) > v65)
          {
            break;
          }

          v63[14] = 0;
          if ((v63 + 5) < v62)
          {
            break;
          }

          if ((v63 + 6) > result + 164)
          {
            break;
          }

          if (v63 + 5 > v63 + 6)
          {
            break;
          }

          v63[5] = 0;
          if (v63 < result + 120 || (v63 + 1) > v62 || v63 > v63 + 1)
          {
            break;
          }

          *v63++ = 0;
          if (__CFADD__(v64++, 1))
          {
            return result;
          }
        }

        goto LABEL_136;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
          *(result + 164) = 2;
          *(result + 144) = v32;
          v35 = (result + 184);
          *(result + 180) = *(result + 16);
          *(result + 124) = 4;
          *(result + 128) = v21;
          if (a6 == 1.0)
          {
            v59 = 32;
          }

          else
          {
            if ((a6 * 32.0) <= 0.0)
            {
              v36 = -((a6 * -32.0) + 0.5);
            }

            else
            {
              v36 = ((a6 * 32.0) + 0.5);
            }

            v59 = (v36 & 1) + v36;
          }

          *(result + 148) = v59 + v32;
          v40 = 0x3E4CCCCD3F6E147BLL;
          v37 = 2;
          goto LABEL_117;
        }

        goto LABEL_91;
      }

LABEL_67:
      *(result + 164) = 3;
      *(result + 144) = v32;
      *(result + 180) = *(result + 4);
      *(result + 124) = 0x200000001;
      if (a6 == 1.0)
      {
        *(result + 148) = v32 + 32;
        *(result + 184) = *(result + 8);
        *(result + 132) = v21;
        v45 = 46;
      }

      else
      {
        if ((a6 * 32.0) <= 0.0)
        {
          v43 = -((a6 * -32.0) + 0.5);
        }

        else
        {
          v43 = ((a6 * 32.0) + 0.5);
        }

        *(result + 148) = (v43 & 1) + v43 + v32;
        *(result + 184) = *(result + 8);
        *(result + 132) = v21;
        if ((a6 * 46.0) <= 0.0)
        {
          v44 = -((a6 * -46.0) + 0.5);
        }

        else
        {
          v44 = ((a6 * 46.0) + 0.5);
        }

        v45 = (v44 & 1) + v44;
      }

      *(result + 152) = v45 + v32;
      *(result + 188) = *v23;
      v37 = 3;
      goto LABEL_102;
    }

    if ((a2 - 6) >= 2)
    {
      if (a2 == 4)
      {
        goto LABEL_67;
      }

      if (a2 == 5)
      {
        *(result + 164) = 3;
        *(result + 144) = v32;
        *(result + 180) = *(result + 16);
        *(result + 124) = 0x600000004;
        if (a6 == 1.0)
        {
          *(result + 148) = v32 + 48;
          *(result + 184) = *(result + 24);
          *(result + 132) = v21;
          v60 = 64;
        }

        else
        {
          if ((a6 * 48.0) <= 0.0)
          {
            v41 = -((a6 * -48.0) + 0.5);
          }

          else
          {
            v41 = ((a6 * 48.0) + 0.5);
          }

          *(result + 148) = (v41 & 1) + v41 + v32;
          *(result + 184) = *(result + 24);
          *(result + 132) = v21;
          if ((a6 * 64.0) <= 0.0)
          {
            v61 = -((a6 * -64.0) + 0.5);
          }

          else
          {
            v61 = ((a6 * 64.0) + 0.5);
          }

          v60 = (v61 & 1) + v61;
        }

        v35 = (result + 188);
        *(result + 152) = v60 + v32;
        v40 = 0x3E4CCCCD3F6E147BLL;
        v37 = 3;
        goto LABEL_117;
      }

LABEL_91:
      v37 = *(result + 164);
LABEL_102:
      v57 = 1065353216;
      goto LABEL_103;
    }

    *(result + 164) = 3;
    *(result + 144) = v32;
    *(result + 180) = *(result + 16);
    *(result + 124) = 0x700000004;
    if (a6 == 1.0)
    {
      *(result + 148) = v32 + 32;
      *(result + 184) = *(result + 28);
      *(result + 132) = v21;
      v56 = 64;
    }

    else
    {
      if ((a6 * 32.0) <= 0.0)
      {
        v54 = -((a6 * -32.0) + 0.5);
      }

      else
      {
        v54 = ((a6 * 32.0) + 0.5);
      }

      *(result + 148) = (v54 & 1) + v54 + v32;
      *(result + 184) = *(result + 28);
      *(result + 132) = v21;
      if ((a6 * 64.0) <= 0.0)
      {
        v55 = -((a6 * -64.0) + 0.5);
      }

      else
      {
        v55 = ((a6 * 64.0) + 0.5);
      }

      v56 = (v55 & 1) + v55;
    }

    v42 = (result + 188);
    *(result + 152) = v56 + v32;
    v37 = 3;
    goto LABEL_97;
  }

  if (a2 > 11)
  {
    if ((a2 - 12) >= 3)
    {
      goto LABEL_91;
    }

    v42 = (result + 180);
    v37 = 1;
    *(result + 164) = 1;
    *(result + 124) = v21;
    *(result + 144) = 2 * v22 - v25;
    goto LABEL_97;
  }

  if ((a2 - 10) < 2)
  {
    *(result + 164) = 4;
    v46 = *(result + 16);
    *(result + 124) = 0x600000004;
    if ((a6 * 32.0) <= 0.0)
    {
      v47 = -((a6 * -32.0) + 0.5);
    }

    else
    {
      v47 = ((a6 * 32.0) + 0.5);
    }

    v48 = (v47 & 1) + v47;
    if (a6 == 1.0)
    {
      v49 = 32;
    }

    else
    {
      v49 = v48;
    }

    *(result + 144) = v32;
    *(result + 148) = v49 + v32;
    v50 = *(result + 24);
    *(result + 180) = v46;
    *(result + 184) = v50;
    v42 = (result + 192);
    v52 = *(result + 32);
    v51 = *(result + 36);
    *(result + 188) = v51;
    *(result + 132) = 9;
    *(result + 136) = v21;
    *(result + 152) = v32;
    *(result + 156) = v51 + v32 - v52;
    v37 = 4;
LABEL_97:
    *v42 = *v23;
    if (a2 > 0xC)
    {
      goto LABEL_102;
    }

    if (((1 << a2) & 0xCC0) != 0)
    {
      v57 = 0x3E4CCCCD3F770A3DLL;
      v58 = 0.85;
      goto LABEL_104;
    }

    if (a2 != 12)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  if (a2 != 8)
  {
    if (a2 == 9)
    {
      v37 = 3;
      *(result + 164) = 3;
      v38 = *(result + 16);
      *(result + 124) = 0x700000004;
      *(result + 144) = v32;
      *(result + 148) = v32;
      v35 = (result + 188);
      v39 = *(result + 28);
      *(result + 180) = v38;
      *(result + 184) = v39;
      *(result + 132) = v21;
      *(result + 152) = v32;
      v40 = 0x3E4CCCCD3F6E147BLL;
LABEL_117:
      v53 = 1062836634;
      goto LABEL_118;
    }

    goto LABEL_91;
  }

  v37 = 1;
  *(result + 164) = 1;
  *(result + 124) = v21;
  *(result + 144) = 2 * v22 - v25;
  *(result + 180) = *v23;
LABEL_101:
  v57 = 0x3E4CCCCD3F800000;
LABEL_103:
  v58 = 1.0;
LABEL_104:
  *(result + 248) = v57;
  *(result + 256) = v58;
  if (v37 < 4)
  {
    goto LABEL_119;
  }

  return result;
}

int *initPartitions(int *result, int a2, int a3, int a4, int **a5, int *a6, int *a7, unint64_t a8, float *a9, unint64_t a10, _DWORD *a11, unint64_t a12, int a13)
{
  if (result)
  {
    v13 = a13;
    v14 = a13 - a3;
    if (a13 <= a3)
    {
      v14 = 0;
    }

    else if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = a5[2];
      do
      {
        v18 = &(*a5)[v16];
        v19 = v18 + 1 > a5[1] || v18 > v18 + 1;
        if (v19 || v18 < v17)
        {
          goto LABEL_78;
        }

        *v18 = v15;
        ++v16;
        ++v15;
      }

      while (a13 - a3 != v16);
    }

    if (a13 <= a3)
    {
      v13 = a3;
    }

    if (a2 >= 1)
    {
      for (i = a2; i; --i)
      {
        v29 = *result++;
        v28 = v29;
        if (v29 >= a4)
        {
          break;
        }

        if (v28 >= v13)
        {
          v30 = &(*a5)[v14];
          if (v30 + 1 > a5[1] || v30 > v30 + 1 || v30 < a5[2])
          {
            goto LABEL_78;
          }

          ++v14;
          *v30 = v28 - a3;
        }
      }
    }
  }

  else
  {
    v14 = a4 - a3;
    if (a4 - a3 >= 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = a5[2];
      do
      {
        v24 = &(*a5)[v22];
        v25 = v24 + 1 > a5[1] || v24 > v24 + 1;
        if (v25 || v24 < v23)
        {
          goto LABEL_78;
        }

        *v24 = v21;
        ++v22;
        ++v21;
      }

      while (a4 - a3 != v22);
    }
  }

  *a6 = v14;
  if (a12 < a11 || a10 < a9 || v14 < 0 || (a12 - a11) >> 2 < v14 || a8 < a7 || (a10 - a9) >> 2 < v14 || v14 > (a8 - a7) >> 2 || (v33 = *a5, v34 = a5[1], *a5 > v34) || a5[2] > v33 || v14 > v34 - v33 || v33 + 1 < v33 || (v35 = &v33[v14], (v33 + 1) > v35) || (v36 = *v33, *a7 = v36, *a9 = v36 + 1.0, v37 = &normReciprocal[4 * v36], v38 = v37 + 4, v37 + 4 < normReciprocal) || v37 + 8 > &inv_tbl || v38 > v37 + 2)
  {
LABEL_78:
    __break(0x5519u);
    return result;
  }

  *a11 = *v38;
  if (v14 >= 2)
  {
    v39 = 0;
    v40 = v14;
    v41 = &a7[v14];
    v42 = &a9[v40];
    v43 = 4 * v40 - 4;
    result = &a11[v40];
    while (1)
    {
      v44 = &v33[v39 / 4];
      if (&v33[v39 / 4] < v33)
      {
        break;
      }

      if ((v44 + 2) > v35)
      {
        break;
      }

      v45 = v44 + 1;
      if (v44 + 1 > v44 + 2)
      {
        break;
      }

      v46 = &a7[v39 / 4 + 1];
      if (v46 < a7)
      {
        break;
      }

      v47 = &a7[v39 / 4 + 2];
      if (v47 > v41)
      {
        break;
      }

      if (v46 > v47)
      {
        break;
      }

      *v46 = (*v44 + *v45 + 1) >> 1;
      v48 = &a9[v39 / 4 + 1];
      if (v48 < a9)
      {
        break;
      }

      v49 = &a9[v39 / 4 + 2];
      if (v49 > v42)
      {
        break;
      }

      if (v48 > v49)
      {
        break;
      }

      v50 = *v45 - *v44;
      *v48 = v50;
      v51 = &normReciprocal[4 * v50];
      if (v51 < normReciprocal)
      {
        break;
      }

      if (v51 + 4 > &inv_tbl)
      {
        break;
      }

      if (v51 > v51 + 4)
      {
        break;
      }

      v52 = &a11[v39 / 4 + 1];
      if (v52 < a11)
      {
        break;
      }

      v53 = &a11[v39 / 4 + 2];
      if (v53 > result || v52 > v53)
      {
        break;
      }

      *v52 = *v51;
      v39 += 4;
      if (v43 == v39)
      {
        return result;
      }
    }

    goto LABEL_78;
  }

  return result;
}

void initFdCngCom(uint64_t a1, float a2)
{
  *(a1 + 14764) = 1.0 / ((a2 * a2) * 8.0);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 72), 1, 0x140uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 3912), 1, 0x280uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 6472), 1, 0x280uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 9032), 1, 0x280uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 1352), 1, 0x280uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 13004), 1, 0x154uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 14860), 1, 0x18uLL);
  __A = 0.0;
  vDSP_vfill(&__A, (a1 + 14960), 1, 0x11uLL);
  if (a1 + 14964 > (a1 + 15028) || a1 + 14960 > (a1 + 14964))
  {
    __break(0x5519u);
  }

  else
  {
    *(a1 + 14852) = 0;
    *(a1 + 14856) = 0;
    *(a1 + 14956) = 0x3F800000000000FFLL;
    *(a1 + 16314) = 0;
    *(a1 + 16316) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 11732), 1, 0x13EuLL);
    mhvals(72, (a1 + 11664));
    mhvals(12, (a1 + 11668));
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 11720), 1, 2uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 11712), 1, 2uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 11692), 1, 2uLL);
    __A = 0.0;
    vDSP_vfill(&__A, (a1 + 11700), 1, 2uLL);
    *(a1 + 11676) = 0xC00000000;
    *(a1 + 11672) = 0x10000;
    *(a1 + 11728) = 0;
    *(a1 + 11708) = 0;
    __A = 0.3;
    vDSP_vfill(&__A, (a1 + 11684), 1, 2uLL);
  }
}

uint64_t mhvals(uint64_t result, float *a2)
{
  v2 = 0;
  v3 = 17;
  while (d_array[v2] < result)
  {
    if (++v2 == 18)
    {
      goto LABEL_6;
    }
  }

  v3 = v2;
LABEL_6:
  v4 = &d_array[v3];
  v5 = v4 + 1;
  if (v4 >= d_array && v5 <= m_array && v4 <= v5)
  {
    if (*v4 == result)
    {
      v8 = &m_array[v3];
      if (v8 >= m_array && v8 + 1 <= smooth_factor && v8 <= v8 + 1)
      {
        v9 = *v8;
LABEL_27:
        *a2 = v9;
        return result;
      }
    }

    else
    {
      v10 = v4 - 1;
      if (v4 - 1 >= d_array && v4 <= m_array && v10 <= v4)
      {
        v11 = &m_array[v3];
        if (v11 + 1 <= smooth_factor && v11 <= v11 + 1)
        {
          v12 = &m_array[v2];
          v13 = v12 - 1;
          if (v12 - 1 >= m_array && v12 <= smooth_factor && v13 <= v12)
          {
            v14 = sqrtf(*v10);
            v15 = sqrtf(*v4);
            v9 = *v11 + (((((v15 * v14) / sqrtf(result)) - v14) * (*v13 - *v11)) / (v15 - v14));
            goto LABEL_27;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t configureCldfb(uint64_t result, int a2)
{
  *(result + 144) = 0;
  v2 = ((a2 * 0.00125) + 0.5);
  *result = v2;
  *(result + 4) = 16;
  if (v2 <= 29)
  {
    switch(v2)
    {
      case 10:
        v3 = &rot_vec_syn_im_L10;
        v4 = &CLDFB80_10;
        v5 = &rot_vec_syn_re_L10;
        v6 = &rot_vec_syn_im_L10;
        v7 = &rot_vec_ana_im_L10;
        v8 = &rot_vec_syn_re_L10;
        v9 = &rot_vec_ana_re_L10;
        v10 = &rot_vec_ana_im_L10;
        v11 = 100;
        v12 = &CLDFB80_10;
        goto LABEL_19;
      case 16:
        v3 = &rot_vec_syn_im_L16;
        v4 = &CLDFB80_16;
        v5 = &rot_vec_syn_re_L16;
        v6 = &rot_vec_syn_im_L16;
        v7 = &rot_vec_ana_im_L16;
        v8 = &rot_vec_syn_re_L16;
        v9 = &rot_vec_ana_re_L16;
        v10 = &rot_vec_ana_im_L16;
        v11 = 160;
        v12 = &CLDFB80_16;
        goto LABEL_19;
      case 20:
        v3 = &rot_vec_syn_im_L20;
        v4 = &CLDFB80_20;
        v5 = &rot_vec_syn_re_L20;
        v6 = &rot_vec_syn_im_L20;
        v7 = &rot_vec_ana_im_L20;
        v8 = &rot_vec_syn_re_L20;
        v9 = &rot_vec_ana_re_L20;
        v10 = &rot_vec_ana_im_L20;
        v11 = 200;
        v12 = &CLDFB80_20;
        goto LABEL_19;
    }
  }

  else if (v2 > 39)
  {
    if (v2 == 40)
    {
      v3 = &rot_vec_syn_im_L40;
      v4 = &CLDFB80_40;
      v5 = &rot_vec_syn_re_L40;
      v6 = &rot_vec_syn_im_L40;
      v7 = &rot_vec_ana_im_L40;
      v8 = &rot_vec_syn_re_L40;
      v9 = &rot_vec_ana_re_L40;
      v10 = &rot_vec_ana_im_L40;
      v11 = 400;
      v12 = &CLDFB80_40;
      goto LABEL_19;
    }

    if (v2 == 60)
    {
      v3 = &rot_vec_syn_im_L60;
      v4 = &CLDFB80_60;
      v5 = &rot_vec_syn_re_L60;
      v6 = &rot_vec_syn_im_L60;
      v7 = &rot_vec_ana_im_L60;
      v8 = &rot_vec_syn_re_L60;
      v9 = &rot_vec_ana_re_L60;
      v10 = &rot_vec_ana_im_L60;
      v11 = 600;
      v12 = &CLDFB80_60;
      goto LABEL_19;
    }
  }

  else
  {
    if (v2 == 30)
    {
      v3 = &rot_vec_syn_im_L30;
      v4 = &CLDFB80_30;
      v5 = &rot_vec_syn_re_L30;
      v6 = &rot_vec_syn_im_L30;
      v7 = &rot_vec_ana_im_L30;
      v8 = &rot_vec_syn_re_L30;
      v9 = &rot_vec_ana_re_L30;
      v10 = &rot_vec_ana_im_L30;
      v11 = 300;
      v12 = &CLDFB80_30;
      goto LABEL_19;
    }

    if (v2 == 32)
    {
      v3 = &rot_vec_syn_im_L32;
      v4 = &CLDFB80_32;
      v5 = &rot_vec_syn_re_L32;
      v6 = &rot_vec_syn_im_L32;
      v7 = &rot_vec_ana_im_L32;
      v8 = &rot_vec_syn_re_L32;
      v9 = &rot_vec_ana_re_L32;
      v10 = &rot_vec_ana_im_L32;
      v11 = 320;
      v12 = &CLDFB80_32;
LABEL_19:
      *(result + 152) = 0;
      result += 152;
      *(result - 120) = v10;
      *(result - 112) = v7;
      *(result - 104) = v8;
      *(result - 96) = v5;
      *(result - 88) = v6;
      *(result - 80) = v3;
      *(result - 72) = v4;
      *(result - 136) = v12;
      *(result - 128) = v9;
      v13 = result;
      *(result - 144) = v11;
LABEL_20:
      v14 = 0;
      v15 = 0.0;
      while (1)
      {
        v16 = &v12[v14];
        v17 = v16 + 1;
        v18 = v16 < v12 || v17 > &v12[v11];
        if (v18 || v16 > v17)
        {
          break;
        }

        v15 = v15 + (*v16 * *v16);
        *v13 = v15;
        if (v11 <= ++v14)
        {
          goto LABEL_29;
        }
      }

      __break(0x5519u);
      return result;
    }
  }

  *(result + 152) = 0;
  v13 = (result + 152);
  v11 = *(result + 8);
  if (v11 >= 1)
  {
    v12 = *(result + 16);
    goto LABEL_20;
  }

  v15 = 0.0;
LABEL_29:
  *v13 = sqrtf(v15 * (6400 / v2));
  return result;
}

uint64_t make_offset_scale(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v6 = (a6 + 16 * result);
  if (v6 + 1 > v6 + 4 || v6 > v6 + 1)
  {
LABEL_32:
    __break(0x5519u);
    return result;
  }

  *v6 = 1;
  if (a5 >= 1)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = (a4 + v8);
      v11 = a4 + v8 + 4;
      v12 = a4 + v8 < a4 || v11 > a4 + 4 * a5;
      if (v12 || v10 > v11)
      {
        break;
      }

      v14 = (a2 + 4 * *v10);
      v15 = v14 + 1;
      v16 = v14 < a2 || v15 > a3;
      v17 = v16 || v14 > v15;
      v18 = &v6[v8 / 4 + 1];
      v19 = &v6[v8 / 4 + 2];
      v20 = !v17 && v18 >= v6;
      v21 = !v20 || v19 > (v6 + 4);
      if (v21 || v18 > v19)
      {
        break;
      }

      v9 += *v14;
      *v18 = v9;
      v8 += 4;
      if (4 * (a5 + 1) - 4 == v8)
      {
        return result;
      }
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t VerifyBitrate(uint64_t a1, __int16 *a2)
{
  for (i = 0; i != 11; ++i)
  {
    if (brate_tbl[i] == a1)
    {
      v4 = 0;
      goto LABEL_18;
    }
  }

  v4 = 1;
  result = 0xFFFFFFFFLL;
  if (a1 <= 15849)
  {
    if (a1 > 12649)
    {
      if (a1 == 12650)
      {
        goto LABEL_18;
      }

      v6 = 14250;
    }

    else
    {
      if (a1 == 6600)
      {
        goto LABEL_18;
      }

      v6 = 8850;
    }

LABEL_17:
    if (a1 != v6)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (a1 <= 19849)
  {
    if (a1 == 15850)
    {
      goto LABEL_18;
    }

    v6 = 18250;
    goto LABEL_17;
  }

  if (a1 != 19850 && a1 != 23850)
  {
    v6 = 23050;
    goto LABEL_17;
  }

LABEL_18:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t GetMode(int a1, uint64_t a2)
{
  if (a1)
  {
    return 1;
  }

  result = 1;
  if (a2 > 47999)
  {
    if (a2 != 48000 && a2 != 128000)
    {
      v3 = 96000;
LABEL_10:
      if (a2 != v3)
      {
        return result;
      }
    }
  }

  else if (a2 != 9600 && a2 != 16400)
  {
    v3 = 24400;
    goto LABEL_10;
  }

  return 2;
}

uint64_t VerifyRFParams(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 0x10000);
  v5 = *(result + 67468);
  if (*(result + 67468))
  {
    if (*(result + 64) != 13200)
    {
      goto LABEL_12;
    }

    if (*(result + 56) == 8000 || !*(result + 132))
    {
LABEL_11:
      *result = 1;
      result = reset_rf_indices(result);
LABEL_12:
      v5 = 0;
      v4[966] = 0;
      v4[969] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (*(result + 67474))
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (*(result + 64) != 13200)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (*(v3 + 64) == 13200 && *(v3 + 56) != 8000 && *(v3 + 132))
  {
    *v3 = 2;
    if (!v5)
    {
      result = reset_rf_indices(v3);
    }

    v4[966] = 1;
    v4[969] = a2;
    v4[1582] = WORD2(a2);
  }

  return result;
}

void EVS_Encoder_Reset(unint64_t a1)
{
  if (a1)
  {
    *(a1 + 36) = 0;
    v2 = 4;
    if (*(a1 + 142))
    {
      v3 = 4;
    }

    else
    {
      v3 = -1;
    }

    *(a1 + 52108) = v3;
    *(a1 + 140) = 256;
    *(a1 + 129778) = 3;
    *(a1 + 18610) = 3;
    v4 = *(a1 + 64);
    v105 = (a1 + 67462);
    *(a1 + 72) = v4;
    *(a1 + 80) = -1;
    *(a1 + 104) = v4;
    *(a1 + 112) = -1;
    *(a1 + 38068) = 256;
    *(a1 + 122148) = 0;
    *(a1 + 18476) = GEWB_Ave;
    *(a1 + 18492) = unk_19B3A1590;
    *(a1 + 23132) = GEWB_Ave;
    *(a1 + 23148) = unk_19B3A1590;
    *(a1 + 23164) = xmmword_19B3A15A0;
    *(a1 + 23180) = unk_19B3A15B0;
    *(a1 + 23196) = GEWB_Ave;
    *(a1 + 23212) = unk_19B3A1590;
    v5 = (a1 + 5268);
    *(a1 + 23228) = xmmword_19B3A15A0;
    *(a1 + 23244) = unk_19B3A15B0;
    *(a1 + 23260) = GEWB_Ave;
    *(a1 + 23276) = unk_19B3A1590;
    *(a1 + 23292) = xmmword_19B3A15A0;
    *(a1 + 23308) = unk_19B3A15B0;
    *(a1 + 18508) = xmmword_19B3A15A0;
    *(a1 + 18524) = unk_19B3A15B0;
    init_lvq(a1 + 5468, a1 + 7532, a1 + 9596, a1 + 11932, a1 + 14268, a1 + 14780);
    *(a1 + 23324) = 0;
    *(a1 + 5460) = 0;
    *(a1 + 5464) = 1065353216;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 18540), 1, 0x10uLL);
    *(a1 + 18436) = xmmword_19B0B1500;
    *(a1 + 18452) = 0x3F4CCCCD00000000;
    *(a1 + 18616) = 0;
    *(a1 + 18624) = 0;
    hf_cod_init((a1 + 39616), a1 + 39632, (a1 + 39632), a1 + 39752, (a1 + 39752), a1 + 39816, (a1 + 39496), a1 + 39616, (a1 + 39492));
    *(a1 + 1968) = 0;
    *(a1 + 3536) = 0;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 15784), 1, 0xF0uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 16744), 1, 0xF8uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 252), 1, 0x140uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 17736), 1, 0x73uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 38436), 1, 0xF0uLL);
    *(a1 + 15724) = 0;
    *(a1 + 86188) = 0;
    *(a1 + 38432) = 0;
    *(a1 + 110848) = 0;
    *(a1 + 39396) = 0;
    *(a1 + 39404) = 0;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 38072), 1, 0x5AuLL);
    *(a1 + 18356) = 0;
    *(a1 + 1532) = 0;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 1536), 1, 0x10uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 18372), 1, 0x10uLL);
    *(a1 + 63456) = 0;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 1600), 1, 0x10uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 15364), 1, 0x5AuLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 18360), 1, 3uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 3540), 1, 0x100uLL);
    v6 = (a1 + 5076);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 4564), 1, 0x80uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 1904), 1, 0x10uLL);
    *(a1 + 18612) = 0;
    *(a1 + 18628) = 1092616192;
    *(a1 + 52116) = 0;
    *(a1 + 18638) = 200;
    *(a1 + 111800) = 0;
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 15732), 1, 4uLL);
    __A[0] = 0.0;
    vDSP_vfill(__A, (a1 + 37952), 1, 8uLL);
    *(a1 + 39816) = 21845;
    v7 = (a1 + 18460);
    while ((v7 + 1) <= a1 + 18476 && v7 <= v7 + 1)
    {
      *v7++ = -1050673152;
      if (!--v2)
      {
        if (*(a1 + 56) == 8000)
        {
          v9 = 16;
        }

        else
        {
          v9 = 19;
        }

        *(a1 + 18632) = *(a1 + 56) == 8000;
        *(a1 + 18634) = v9;
        v10 = 18276;
        v11 = (a1 + 24436);
        v12 = 20;
        v13 = 24356;
        v14 = 24360;
        v15 = 18200;
        v16 = 18280;
        v17 = 18196;
        while (1)
        {
          v18 = (a1 + v17);
          if (a1 + v15 > a1 + 18276 || v18 > a1 + v15)
          {
            goto LABEL_143;
          }

          *v18 = 925353388;
          if (a1 + v16 > a1 + 18356)
          {
            goto LABEL_143;
          }

          if (a1 + v10 > a1 + v16)
          {
            goto LABEL_143;
          }

          v18[20] = 925353388;
          if (a1 + v14 > v11 || a1 + v13 > a1 + v14)
          {
            goto LABEL_143;
          }

          *(a1 + v17 + 6160) = 996499522;
          v13 += 4;
          v14 += 4;
          v15 += 4;
          v10 += 4;
          v16 += 4;
          v17 += 4;
          if (!--v12)
          {
            if (*(a1 + 142))
            {
              *v5 = E_ROM_f_mean_isf;
              *(a1 + 5284) = unk_19B316E20;
              *(a1 + 5300) = xmmword_19B316E30;
              *(a1 + 5316) = unk_19B316E40;
              isf2isp(a1 + 5268, a1 + 5076);
            }

            else
            {
              *v5 = GEWB_Ave;
              *(a1 + 5284) = unk_19B3A1590;
              *(a1 + 5300) = xmmword_19B3A15A0;
              *(a1 + 5316) = unk_19B3A15B0;
              v20 = 16;
              v107 = vdupq_n_s32(0x40490FDBu);
              v21 = (a1 + 5268);
              v106 = vdupq_n_s32(0x45C80000u);
              do
              {
                v112 = vdivq_f32(vmulq_f32(*v21, v107), v106);
                v108 = cosf(v112.f32[1]);
                v22.f32[0] = cosf(v112.f32[0]);
                v22.f32[1] = v108;
                v109 = v22;
                v23 = cosf(v112.f32[2]);
                v24 = v109;
                v24.f32[2] = v23;
                v110 = v24;
                v25 = cosf(v112.f32[3]);
                v26 = v110;
                v26.f32[3] = v25;
                v21[-12] = v26;
                ++v21;
                v20 -= 4;
              }

              while (v20);
            }

            v27 = *(a1 + 5284);
            *(a1 + 5140) = *v5;
            *(a1 + 5156) = v27;
            v28 = *(a1 + 5316);
            *(a1 + 5172) = *(a1 + 5300);
            *(a1 + 5188) = v28;
            v29 = *v6;
            v30 = *(a1 + 5092);
            *(a1 + 5204) = *v6;
            *(a1 + 5220) = v30;
            *(a1 + 5332) = v29;
            *(a1 + 5348) = v30;
            v31 = *(a1 + 5108);
            v32 = *(a1 + 5124);
            v34 = *v6;
            v33 = *(a1 + 5092);
            *(a1 + 5236) = v31;
            *(a1 + 5252) = v32;
            *(a1 + 5364) = v31;
            *(a1 + 5380) = v32;
            *(a1 + 5396) = v34;
            *(a1 + 5412) = v33;
            v35 = *(a1 + 5124);
            *(a1 + 5428) = *(a1 + 5108);
            *(a1 + 5444) = v35;
            *(a1 + 15360) = 0;
            *(a1 + 12) = 0;
            *(a1 + 16) = -1;
            *(a1 + 39408) = 0;
            *(a1 + 39452) = 0;
            *(a1 + 18636) = 0;
            *(a1 + 18604) = 0;
            *(a1 + 18794) = 81223;
            __A[0] = 0.0;
            vDSP_vfill(__A, (a1 + 18928), 1, 0x100uLL);
            *(a1 + 19952) = 0;
            v36 = 6;
            v37 = (a1 + 19956);
            while (v37 >= a1 + 19956 && (v37 + 1) <= a1 + 19968 && v37 <= v37 + 1)
            {
              *v37++ = 0;
              if (!--v36)
              {
                *(a1 + 18800) = 4;
                *(a1 + 18640) = 0;
                *(a1 + 18644) = 0;
                __A[0] = 0.0;
                vDSP_vfill(__A, (a1 + 18648), 1, 0x10uLL);
                *(a1 + 18712) = 0xFFFF;
                *(a1 + 18716) = 0;
                *(a1 + 18798) = 0;
                *(a1 + 20248) = 0;
                v38 = (a1 + 20276);
                v39 = 7;
                v40 = (a1 + 20262);
                while (v40 >= a1 + 20262 && v40 + 1 <= v38 && v40 <= v40 + 1)
                {
                  *v40++ = 0;
                  if (!--v39)
                  {
                    __A[0] = 0.0;
                    vDSP_vfill(__A, v38, 1, 7uLL);
                    v41 = (a1 + 20336);
                    v42 = (a1 + 20396);
                    v43 = 15;
                    while (v41 + 1 <= v42 && v41 <= v41 + 1)
                    {
                      *v41++ = -1061882446;
                      if (!--v43)
                      {
                        *(a1 + 20260) = -8;
                        *(a1 + 20252) = 0;
                        __A[0] = 0.0;
                        vDSP_vfill(__A, (a1 + 20304), 1, 6uLL);
                        *(a1 + 20328) = 0;
                        __A[0] = 0.0;
                        vDSP_vfill(__A, (a1 + 19972), 1, 0x43uLL);
                        *(a1 + 20240) = 0x3F80000000000000;
                        *v42 = xmmword_19B0B1510;
                        __A[0] = 0.0;
                        vDSP_vfill(__A, (a1 + 20412), 1, 0x28uLL);
                        v45 = 0;
                        *(a1 + 20580) = 0;
                        *(a1 + 20572) = 0;
                        *(a1 + 20584) = xmmword_19B0B1520;
                        *(a1 + 18924) = 0;
                        *(a1 + 23130) = 0;
                        v46 = a1 + 22312;
                        v47 = a1 + 22552;
                        v48 = a1 + 21836;
                        while (1)
                        {
                          v49 = v48 + v45;
                          v50 = (v48 + v45 - 724);
                          v51 = v48 + v45 - 720;
                          if (v51 > a1 + 21352 || v50 > v51)
                          {
                            goto LABEL_143;
                          }

                          *v50 = -1027080192;
                          v53 = v49 - 480;
                          if (v49 - 480 > a1 + 21592)
                          {
                            goto LABEL_143;
                          }

                          v54 = (v49 - 484);
                          if (v54 > v53)
                          {
                            goto LABEL_143;
                          }

                          *v54 = 0;
                          v55 = v48 + v45 - 240;
                          if (v55 > a1 + 21832)
                          {
                            goto LABEL_143;
                          }

                          v56 = (v48 + v45 - 244);
                          if (v56 > v55)
                          {
                            goto LABEL_143;
                          }

                          *v56 = 0;
                          v57 = v48 + v45;
                          if (v48 + v45 > a1 + 22072)
                          {
                            goto LABEL_143;
                          }

                          if (v57 < 4)
                          {
                            goto LABEL_143;
                          }

                          *(v57 - 4) = 0;
                          v58 = v48 + v45 + 240;
                          if (v58 > v46)
                          {
                            goto LABEL_143;
                          }

                          v59 = (v48 + v45 + 236);
                          if (v59 > v58)
                          {
                            goto LABEL_143;
                          }

                          *v59 = 0;
                          v60 = (v48 + v45 + 476);
                          if (v60 < v46)
                          {
                            goto LABEL_143;
                          }

                          v61 = v48 + v45 + 480;
                          if (v61 > v47)
                          {
                            goto LABEL_143;
                          }

                          if (v60 > v61)
                          {
                            goto LABEL_143;
                          }

                          *v60 = 0;
                          v62 = (v48 + v45 + 716);
                          if (v62 < v47)
                          {
                            goto LABEL_143;
                          }

                          v63 = v48 + v45 + 720;
                          if (v63 > a1 + 22792 || v62 > v63)
                          {
                            goto LABEL_143;
                          }

                          *v62 = 0;
                          v45 += 4;
                          if (v45 == 240)
                          {
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 22992), 1, 8uLL);
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 23024), 1, 8uLL);
                            *(a1 + 23056) = 0;
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 23060), 1, 8uLL);
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 23092), 1, 8uLL);
                            *(a1 + 23124) = 0;
                            *(a1 + 23128) = 0;
                            *(a1 + 52180) = 0;
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 20608), 1, 0x7EuLL);
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 22836), 1, 4uLL);
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 22792), 1, 0xAuLL);
                            *(a1 + 22876) = 300;
                            *(a1 + 22880) = 1132068864;
                            *(a1 + 22832) = 0;
                            *(a1 + 22852) = 0;
                            *(a1 + 22856) = xmmword_19B0B1530;
                            *(a1 + 22872) = 0;
                            *(a1 + 24808) = 0;
                            *(a1 + 18804) = 0;
                            *(a1 + 24724) = 0u;
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 18808), 1, 0x10uLL);
                            *(a1 + 18792) = 0;
                            __A[0] = 0.0;
                            vDSP_vfill(__A, (a1 + 18872), 1, 0xAuLL);
                            *(a1 + 39460) = 0;
                            *(a1 + 18920) = 1325400064;
                            *(a1 + 20600) = 1092616192;
                            *(a1 + 18912) = 0x842200000;
                            *(a1 + 24800) = 0x4234000000000003;
                            *(a1 + 111812) = 1310720;
                            *(a1 + 24824) = 0;
                            *(a1 + 24840) = 0;
                            *(a1 + 24832) = 0;
                            *(a1 + 24848) = 0;
                            *(a1 + 24852) = 1310730;
                            *(a1 + 24816) = 3;
                            *(a1 + 24856) = 1116471296;
                            *(a1 + 24864) = 50;
                            *(a1 + 24872) = 3;
                            *(a1 + 24820) = 0;
                            noise_est_init((a1 + 24688), (a1 + 24692), a1 + 24524, a1 + 24604, a1 + 24444, a1 + 24524, a1 + 24604, a1 + 24684, (a1 + 24684), (a1 + 24686), (a1 + 24694), (a1 + 24696), (a1 + 24744), (a1 + 24748), (a1 + 24752), (a1 + 24756), (a1 + 24760), (a1 + 24792), (a1 + 24796));
                            *(a1 + 24764) = xmmword_19B0B1540;
                            *(a1 + 24780) = 0;
                            *(a1 + 24788) = 0;
                            *(a1 + 67420) = 0;
                            *(a1 + 67428) = 0x64006400000000;
                            *(a1 + 24708) = 0;
                            *(a1 + 24716) = 0;
                            *(a1 + 24700) = 0;
                            *(a1 + 67436) = 100;
                            v64 = *(a1 + 132);
                            *(a1 + 130) = v64;
                            *(a1 + 134) = v64;
                            *(a1 + 136) = v64;
                            v65 = (a1 + 23328);
                            *(a1 + 138) = v64;
                            v66 = (a1 + 23840);
                            v67 = 128;
                            *(a1 + 24876) = 0;
                            while (v65 + 1 <= v66 && v65 <= v65 + 1)
                            {
                              *v65++ = 1065353216;
                              if (!--v67)
                              {
                                __A[0] = 0.0;
                                vDSP_vfill(__A, v66, 1, 0x80uLL);
                                *(a1 + 24352) = 0;
                                *v11 = 0x426000003F800000;
                                *(a1 + 18606) = 131074;
                                *(a1 + 37984) = 0x4120000000030000;
                                v69 = *(a1 + 5220);
                                *(a1 + 37992) = *(a1 + 5204);
                                *(a1 + 38008) = v69;
                                v70 = *(a1 + 5252);
                                *(a1 + 38024) = *(a1 + 5236);
                                *(a1 + 38040) = v70;
                                *(a1 + 38056) = 21845;
                                *(a1 + 38060) = 1065353216;
                                *(a1 + 24992) = 0;
                                v71 = *v6;
                                v72 = *(a1 + 5092);
                                v73 = *(a1 + 5124);
                                *(a1 + 24956) = *(a1 + 5108);
                                *(a1 + 24972) = v73;
                                *(a1 + 24924) = v71;
                                *(a1 + 24940) = v72;
                                *(a1 + 24920) = 21845;
                                *(a1 + 25578) = 1431655765;
                                *(a1 + 24916) = 0;
                                *(a1 + 24988) = 0;
                                *(a1 + 24996) = 0x20000;
                                *(a1 + 25002) = -1;
                                *(a1 + 25004) = 0;
                                *(a1 + 25008) = 0;
                                *(a1 + 25012) = 0;
                                *(a1 + 25016) = 0;
                                *(a1 + 25020) = 0;
                                if (*(a1 + 24912))
                                {
                                  *(a1 + 25000) = 12;
                                }

                                *(a1 + 25604) = 0;
                                *(a1 + 25608) = 0;
                                *(a1 + 39848) = 0;
                                *(a1 + 25030) = -1;
                                __A[0] = 0.0;
                                vDSP_vfill(__A, (a1 + 25032), 1, 0x80uLL);
                                __A[0] = 0.0;
                                v74 = 8;
                                vDSP_vfill(__A, (a1 + 25544), 1, 8uLL);
                                *(a1 + 25576) = 0;
                                *(a1 + 25612) = -1;
                                *(a1 + 25616) = 0;
                                __A[0] = 0.0;
                                vDSP_vfill(__A, (a1 + 25624), 1, 0x80uLL);
                                __A[0] = 0.0;
                                vDSP_vfill(__A, (a1 + 26136), 1, 8uLL);
                                __A[0] = 0.0;
                                vDSP_vfill(__A, (a1 + 26168), 1, 0xA0uLL);
                                *(a1 + 25610) = 0;
                                *(a1 + 26808) = 0;
                                *(a1 + 146) = 0xFFFF;
                                *(a1 + 36264) = -1;
                                *(a1 + 36272) = 7200;
                                v75 = (a1 + 36280);
                                *(a1 + 36296) = 256;
                                while (v75 >= a1 + 36280 && (v75 + 1) <= a1 + 36296 && v75 <= v75 + 1)
                                {
                                  *v75++ = 0;
                                  if (!--v74)
                                  {
                                    *(a1 + 36298) = 0;
                                    *(a1 + 36812) = 0;
                                    *(a1 + 26812) = -1;
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 26816), 1, 0x80uLL);
                                    __A[0] = 0.0;
                                    v76 = 8;
                                    vDSP_vfill(__A, (a1 + 27328), 1, 8uLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 27360), 1, 0xA0uLL);
                                    *(a1 + 26810) = 0;
                                    *(a1 + 28000) = 0;
                                    if (!*(a1 + 24912))
                                    {
                                      if (*(a1 + 25000) >= 8)
                                      {
                                        v76 = 8;
                                      }

                                      else
                                      {
                                        v76 = *(a1 + 25000);
                                      }
                                    }

                                    *(a1 + 25028) = v76;
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 36896), 1, 0x14uLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 36976), 1, 0xA0uLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 37616), 1, 0x18uLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 37712), 1, 0x1EuLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 37832), 1, 0x1EuLL);
                                    __A[0] = 0.0;
                                    vDSP_vfill(__A, (a1 + 36816), 1, 0x14uLL);
                                    *(a1 + 67440) = vdupq_n_s32(0xC0C0A3D7);
                                    *(a1 + 67456) = 1;
                                    *(a1 + 67460) = 0;
                                    v77 = *(a1 + 132);
                                    if (v77 >= 2)
                                    {
                                      LOWORD(v77) = 2;
                                    }

                                    *(a1 + 67458) = v77;
                                    *(a1 + 67438) = 0;
                                    *(a1 + 3538) = 0;
                                    v78 = (a1 + 39412);
                                    v79 = 10;
                                    while ((v78 + 1) <= a1 + 39452 && v78 <= v78 + 1)
                                    {
                                      *v78++ = 1115684864;
                                      if (!--v79)
                                      {
                                        *(a1 + 18788) = 0;
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 18724), 1, 0x10uLL);
                                        *(a1 + 18720) = 1065353216;
                                        resetCldfb((a1 + 39824), 0, *(a1 + 56));
                                        *(a1 + 111780) = 947903040;
                                        *(a1 + 40596) = 0;
                                        *(a1 + 40604) = 0;
                                        *(a1 + 40608) = 0;
                                        *(a1 + 40612) = 0;
                                        *(a1 + 40628) = 1;
                                        *(a1 + 40620) = 0;
                                        *(a1 + 40616) = 0;
                                        *(a1 + 39468) = 0;
                                        *(a1 + 39476) = 1065353216;
                                        *(a1 + 39480) = 0;
                                        *(a1 + 39484) = 0;
                                        *(a1 + 41594) = 0;
                                        *(a1 + 41588) = 0;
                                        *(a1 + 41582) = 0;
                                        *(a1 + 41600) = 0;
                                        *(a1 + 41606) = 0;
                                        *(a1 + 41584) = 1116078080;
                                        *(a1 + 41580) = 1;
                                        *(a1 + 152) = 0;
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 39884), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 39964), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 40044), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 40124), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 40204), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 40284), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 40364), 1, 0x14uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 57328), 1, 0xABuLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 58012), 1, 0x99uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 58624), 1, 0x24uLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 58768), 1, 0xAEuLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 59472), 1, 0x24uLL);
                                        *(a1 + 63460) = 2;
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 63464), 1, 0x3C0uLL);
                                        *(a1 + 67304) = 8;
                                        *(a1 + 67308) = 0;
                                        *(a1 + 67312) = 0;
                                        *(a1 + 67316) = 0;
                                        InitSWBencBuffer(a1);
                                        ResetSHBbuffer_Enc(a1);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 52524), 1, 0xDCuLL);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 53404), 1, 0x37uLL);
                                        v81 = (a1 + 53996);
                                        __A[0] = 0.0;
                                        vDSP_vfill(__A, (a1 + 53624), 1, 0x5DuLL);
                                        v82 = -10;
                                        while ((v81 + 1) <= a1 + 54036 && v81 <= v81 + 1)
                                        {
                                          *v81++ = (v82 + 10) / 20.0;
                                          v84 = __CFADD__(v82++, 1);
                                          if (v84)
                                          {
                                            *(a1 + 54064) = 1065353216;
                                            *(a1 + 56852) = 0;
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 56856), 1, 0xAuLL);
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 56896), 1, 0xAuLL);
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 56936), 1, 0xAuLL);
                                            __A[0] = 0.1;
                                            vDSP_vfill(__A, (a1 + 56976), 1, 3uLL);
                                            *(a1 + 56988) = 0;
                                            *(a1 + 56992) = 0;
                                            *(a1 + 57016) = 0;
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 57060), 1, 0xAuLL);
                                            *(a1 + 57100) = 0;
                                            resetCldfb((a1 + 39832), 1, 16000);
                                            *(a1 + 57108) = 3;
                                            __A[0] = 0.5;
                                            vDSP_vfill(__A, (a1 + 57112), 1, 8uLL);
                                            *(a1 + 57144) = 0;
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 57148), 1, 0x11uLL);
                                            *(a1 + 67368) = a1 + 67364;
                                            __A[0] = 0.0;
                                            vDSP_vfill(__A, (a1 + 67380), 1, 0xAuLL);
                                            v85 = (a1 + 57020);
                                            v86 = -10;
                                            while ((v85 + 1) <= a1 + 57060 && v85 <= v85 + 1)
                                            {
                                              v88 = cos((((v86 + 10) * 3.1416) / 10.0));
                                              *v85++ = v88;
                                              v84 = __CFADD__(v86++, 1);
                                              if (v84)
                                              {
                                                __A[0] = 0.0;
                                                vDSP_vfill(__A, (a1 + 57256), 1, 0xCuLL);
                                                __A[0] = 0.0;
                                                vDSP_vfill(__A, (a1 + 57304), 1, 6uLL);
                                                __A[0] = 0.0;
                                                vDSP_vfill(__A, (a1 + 59616), 1, 0x3C0uLL);
                                                v111 = vaddq_s64(vdupq_n_s64(a1), xmmword_19B0B1550);
                                                *(a1 + 49480) = a1 + 45636;
                                                *(a1 + 49488) = v111;
                                                bzero((a1 + 45456), 0xFB4uLL);
                                                v89 = (9375 * (*(a1 + 56) / 100) * 0x29F16B11C6D1E109) >> 64;
                                                *(a1 + 49504) = a1 + 45636 - 4 * ((v89 >> 63) + (v89 >> 14)) + 4 * -(((1374389535 * *(a1 + 56)) >> 36) + ((1374389535 * *(a1 + 56)) >> 63));
                                                *(a1 + 49512) = v111;
                                                *(a1 + 49528) = 0u;
                                                *(a1 + 49544) = 0;
                                                __A[0] = 0.0;
                                                vDSP_vfill(__A, (a1 + 49548), 1, 0x280uLL);
                                                *(a1 + 52114) = 0;
                                                *(a1 + 52110) = 0;
                                                *(a1 + 52118) = 0;
                                                v90 = 24;
                                                v91 = (a1 + 52120);
                                                while (v91 >= a1 + 52120 && (v91 + 1) <= a1 + 52168 && v91 <= v91 + 1)
                                                {
                                                  *v91++ = 0;
                                                  if (!--v90)
                                                  {
                                                    *(a1 + 52168) = 0;
                                                    v92 = 4;
                                                    v93 = (a1 + 52172);
                                                    while (v93 >= a1 + 52172 && (v93 + 1) <= a1 + 52180 && v93 <= v93 + 1)
                                                    {
                                                      *v93++ = 0;
                                                      if (!--v92)
                                                      {
                                                        *(a1 + 20) = 1065353216;
                                                        *(a1 + 24) = 1;
                                                        *(a1 + 28) = 0;
                                                        *(a1 + 32) = 0;
                                                        v94 = (a1 + 52188);
                                                        v95 = 3;
                                                        v96 = (a1 + 52182);
                                                        while (v96 >= a1 + 52182 && v96 + 1 <= v94 && v96 <= v96 + 1)
                                                        {
                                                          *v96++ = 1;
                                                          if (!--v95)
                                                          {
                                                            *v94 = 0x3F0000003F000000;
                                                            *(a1 + 52196) = 0;
                                                            v97 = 3;
                                                            v98 = (a1 + 52200);
                                                            while (v98 >= a1 + 52200 && (v98 + 1) <= a1 + 52206 && v98 <= v98 + 1)
                                                            {
                                                              *v98++ = 0;
                                                              if (!--v97)
                                                              {
                                                                *(a1 + 52206) = 0;
                                                                *(a1 + 52208) = 0;
                                                                *(a1 + 22884) = 0;
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 22888), 1, 8uLL);
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 22920), 1, 8uLL);
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 22952), 1, 8uLL);
                                                                *(a1 + 22984) = 0;
                                                                *(a1 + 22988) = 0;
                                                                *(a1 + 56994) = 1;
                                                                *(a1 + 57000) = 0;
                                                                *(a1 + 57004) = 0;
                                                                *(a1 + 57008) = 0;
                                                                if (a1 + 52214 > a1 + 52216)
                                                                {
                                                                  goto LABEL_143;
                                                                }

                                                                if (a1 + 52212 > a1 + 52214)
                                                                {
                                                                  goto LABEL_143;
                                                                }

                                                                *(a1 + 52212) = 0xFFFFFFFFLL;
                                                                *(a1 + 52220) = 1056964608;
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 52224), 1, 4uLL);
                                                                if (a1 + 52242 > a1 + 52244 || a1 + 52240 > a1 + 52242)
                                                                {
                                                                  goto LABEL_143;
                                                                }

                                                                *(a1 + 52240) = 0;
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 52244), 1, 0x20uLL);
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 52372), 1, 0x20uLL);
                                                                *(a1 + 52500) = 0;
                                                                v99 = *(a1 + 67468);
                                                                if (v99)
                                                                {
                                                                  v100 = a1 + 129336;
                                                                  if (*(a1 + 130) - 1 > 1 || *(a1 + 64) != 13200)
                                                                  {
                                                                    v99 = 0;
                                                                    *(a1 + 67468) = 0;
                                                                    *(a1 + 67474) = 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v100 = a1 + 129336;
                                                                }

                                                                *v105 = v99;
                                                                *(a1 + 67464) = v99;
                                                                reset_rf_indices(a1);
                                                                *(a1 + 122140) = 50 * *(a1 + 38068);
                                                                if (*a1 == 2)
                                                                {
                                                                  IgfPresent = getIgfPresent(*(a1 + 64), *(a1 + 130), *v105);
                                                                }

                                                                else
                                                                {
                                                                  IgfPresent = 0;
                                                                }

                                                                *v100 = IgfPresent;
                                                                initFdCngEnc(*(a1 + 39840), *(a1 + 56), *(*(a1 + 39824) + 152));
                                                                if (*(a1 + 64) != 13200 || *v105 == 0)
                                                                {
                                                                  v103 = *(a1 + 64);
                                                                }

                                                                else
                                                                {
                                                                  v103 = 9600;
                                                                }

                                                                configureFdCngEnc(*(a1 + 39840), *(a1 + 130), v103, a1 + 24880, a1 + 24896);
                                                                *(a1 + 39852) = 0;
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 39856), 1, 4uLL);
                                                                *(a1 + 39872) = 0;
                                                                init_coder_ace_plus(a1);
                                                                v104 = (9375 * (*(a1 + 56) / 100) * 0x29F16B11C6D1E109) >> 64;
                                                                InitTransientDetection(*(a1 + 56) / 50, ((v104 >> 63) + (v104 >> 14)), a1 + 110904);
                                                                reset_indices_enc(a1);
                                                                *(v100 + 440) = 0;
                                                                *(v100 + 444) = 0;
                                                                __A[0] = 0.0;
                                                                vDSP_vfill(__A, (a1 + 40476), 1, 0x10uLL);
                                                                return;
                                                              }
                                                            }

                                                            goto LABEL_143;
                                                          }
                                                        }

                                                        goto LABEL_143;
                                                      }
                                                    }

                                                    goto LABEL_143;
                                                  }
                                                }

                                                goto LABEL_143;
                                              }
                                            }

                                            goto LABEL_143;
                                          }
                                        }

                                        goto LABEL_143;
                                      }
                                    }

                                    goto LABEL_143;
                                  }
                                }

                                goto LABEL_143;
                              }
                            }

                            goto LABEL_143;
                          }
                        }
                      }
                    }

                    goto LABEL_143;
                  }
                }

                goto LABEL_143;
              }
            }

            goto LABEL_143;
          }
        }
      }
    }

LABEL_143:
    __break(0x5519u);
  }
}