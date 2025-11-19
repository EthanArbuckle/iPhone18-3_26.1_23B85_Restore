uint64_t arithmetic_encode_symbols_0(uint64_t a1, unsigned int **a2, unsigned __int8 *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  while (1)
  {
    v8 = *a2++;
    v7 = v8;
    v10 = (v8 + 1);
    v9 = *v8;
    LODWORD(v8) = *a3++;
    v11 = v8;
    if (v9 <= v8)
    {
      break;
    }

    v12 = &v10[v9];
    v13 = v12[2];
    if (v11 >= v13)
    {
      v20 = v10[v9 + ~v13];
      result = arithmetic_encode_0(a1, *(a1 + 16), v20, v20 + 1, v12[1]);
      if (result)
      {
        return result;
      }

      v26 = v4;
      v21 = -1;
      do
      {
        ++v21;
      }

      while (v21 <= 0x1F && 1 << v21 < v9);
      v22 = v11 + 1;
      result = arithmetic_encode_static(a1, *(a1 + 16), v11, v11 + 1, v21);
      if (result)
      {
        return result;
      }

      cum_to_probs(v10, v9);
      if (v11 > v13)
      {
        v23 = v11 - v13;
        v24 = &v7[v13 + 3];
        do
        {
          ++*v24++;
          ++v12[1];
          --v23;
        }

        while (v23);
      }

      if (v22 < v9)
      {
        ++v10[v11 + 2];
        ++v12[1];
      }

      ++v10[v22];
      ++v12[1];
      probs_to_cum(v10, v9);
      if (v9 == v11 + 2)
      {
        v25 = v9;
      }

      else
      {
        v25 = v11 + 1;
      }

      v12[2] = v25;
      v4 = v26;
    }

    else
    {
      v14 = v9 + ~v11;
      v15 = v10[v14];
      v16 = v7[v14 + 2];
      do
      {
        ++v7[v14++ + 2];
      }

      while (v14 < v9);
      v17 = *(a1 + 16);
      v18 = v12[1];
      v12[1] = v18 + 1;
      result = arithmetic_encode_0(a1, v17, v15, v16, v18);
      if (result)
      {
        return result;
      }

      if (v12[1] >= 0x800)
      {
        scale_cumprob(v10, v9);
      }
    }

    if (!--v4)
    {
      return 0;
    }
  }

  aj_log_error(0, "Illegal symbol to be encoded (%d). Num syms in this context is %d.", v11, v9);
  return 7;
}

int *init_cum_prob_0(int *a1, int a2, unsigned __int8 *a3, int a4)
{
  bzero(a1, 4 * a2 + 16);
  *a1 = a2;
  v8 = a1 + 1;
  if (a2 - 1 <= a4)
  {
    v9 = a2;
  }

  else
  {
    v9 = a4;
  }

  v10 = &v8[a2];
  v10[2] = v9;
  if (a3)
  {
    v11 = 0;
    if (v9 >= 1)
    {
      v12 = a1 + 2;
      v13 = v9;
      do
      {
        *v12++ = *a3;
        v14 = *a3++;
        v11 += v14;
        --v13;
      }

      while (v13);
    }

    if (v9 < a2)
    {
      v8[v9 + 1] = 1;
      ++v11;
    }
  }

  else
  {
    if (v9 >= 1)
    {
      memset_pattern16(a1 + 2, &unk_240AB6060, 4 * v9);
    }

    v11 = v9;
    if (v9 < a2)
    {
      bzero(&a1[v9 + 2], 4 * (a2 - 1 - v9) + 4);
      v11 = v9 + 1;
      v8[v9 + 1] = 1;
    }
  }

  v10[1] = v11;

  return probs_to_cum(a1 + 1, a2);
}

int *probs_to_cum(int *result, int a2)
{
  v2 = result + 1;
  if (a2 > 1)
  {
    v3 = a2 >> 1;
    v4 = result + 1;
    v5 = &result[a2];
    do
    {
      v6 = *v4;
      *v4++ = *v5;
      *v5-- = v6;
      --v3;
    }

    while (v3);
  }

  if (a2 >= 1)
  {
    v7 = a2;
    v8 = *result;
    do
    {
      v8 += *v2;
      *v2++ = v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t arithmetic_decode_0(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  v6 = (a4 - a3) * a5;
  *a1 = v6;
  v7 = a1[2] - a5 * a3;
  a1[2] = v7;
  if ((v6 - 16777217) >> 24 == 255)
  {
    v11 = 0;
    while (1)
    {
      a1[2] = v7 << 8;
      result = aj_istream_read_bytes_le(a2, &v11, 1);
      if (result)
      {
        break;
      }

      v7 = a1[2] | v11;
      a1[2] = v7;
      v10 = *a1;
      v6 = *a1 << 8;
      *a1 = v6;
      if (((v10 << 8) - 16777217) >> 24 != 255)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    if (!v6)
    {
      *a1 = -1;
    }
  }

  return result;
}

int *scale_cumprob(int *a1, int a2)
{
  cum_to_probs(a1, a2);
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = (a1 + 1);
    v6 = a2;
    do
    {
      v7 = *v5 + 1;
      *v5++ = v7 >> 1;
      v4 += v7 >> 1;
      --v6;
    }

    while (v6);
  }

  a1[a2 + 1] = v4;

  return probs_to_cum(a1, a2);
}

uint64_t cum_to_probs(uint64_t result, int a2)
{
  v2 = (a2 - 1);
  if (a2 >= 1)
  {
    v3 = (result + 4);
    v4 = ~v2;
    v5 = (result + 4 * v2 + 4);
    v6 = v5;
    do
    {
      v7 = *--v6;
      *v5 -= v7;
      v5 = v6;
    }

    while (!__CFADD__(v4++, 1));
    if (a2 != 1)
    {
      v9 = a2 >> 1;
      v10 = (result + 4 * v2 + 4);
      do
      {
        v11 = *v3;
        *v3++ = *v10;
        *v10-- = v11;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t arithmetic_encode_static(int32x2_t *a1, uint64_t a2, int a3, int a4, char a5)
{
  v7 = a1->i32[1];
  v8 = a1->i32[0] >> a5;
  v9 = v8 * (a4 - a3);
  a1->i32[0] = v9;
  v10 = v8 * a3;
  v11 = v10 + v7;
  if (__CFADD__(v10, v7))
  {
    result = byte_carry(a1, a2);
    if (result)
    {
      return result;
    }

    v9 = a1->i32[0];
  }

  a1->i32[1] = v11;
  if ((v9 - 16777217) >> 24 == 255)
  {
    while (1)
    {
      result = byte_plus_prev(a1, a2, HIBYTE(v11));
      if (result)
      {
        break;
      }

      v13 = vshl_n_s32(*a1, 8uLL);
      *a1 = v13;
      v11 = v13.u32[1];
      v9 = v13.i32[0];
      if ((v13.i32[0] - 16777217) >> 24 != 255)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = 0;
    if (!v9)
    {
      a1->i32[0] = -1;
    }
  }

  return result;
}

uint64_t byte_carry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 33) + 1;
  *(a1 + 33) = v2;
  if (!*(a1 + 12))
  {
    return 0;
  }

  v5 = v2;
  do
  {
    result = aj_ostream_write_bytes(a2, v5, 1);
    if (result)
    {
      break;
    }

    v5 = 0;
    *(a1 + 33) = 0;
    v7 = *(a1 + 12) - 1;
    *(a1 + 12) = v7;
  }

  while (v7);
  return result;
}

uint64_t arithmetic_encode_0(int32x2_t *a1, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v7 = a1->i32[1];
  v8 = a1->i32[0] / a5;
  v9 = v8 * (a4 - a3);
  a1->i32[0] = v9;
  v10 = v8 * a3;
  v11 = v7 + v10;
  if (__CFADD__(v7, v10))
  {
    result = byte_carry(a1, a2);
    if (result)
    {
      return result;
    }

    v9 = a1->i32[0];
  }

  a1->i32[1] = v11;
  if ((v9 - 16777217) >> 24 == 255)
  {
    while (1)
    {
      result = byte_plus_prev(a1, a2, HIBYTE(v11));
      if (result)
      {
        break;
      }

      v13 = vshl_n_s32(*a1, 8uLL);
      *a1 = v13;
      v11 = v13.u32[1];
      v9 = v13.i32[0];
      if ((v13.i32[0] - 16777217) >> 24 != 255)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    result = 0;
    if (!v9)
    {
      a1->i32[0] = -1;
    }
  }

  return result;
}

uint64_t aj_init_QT_as_no_op(uint64_t result, int a2)
{
  v2 = 0;
  if (a2 == 1)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 1;
  }

  v4 = vdupq_n_s32(v3);
  do
  {
    *(result + v2) = v4;
    v2 += 16;
  }

  while (v2 != 256);
  return result;
}

_DWORD *aj_init_QT_aanIDCT(_DWORD *result, _DWORD *a2, int a3, int *a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      a2[*a4] = *result;
      a2[a4[1]] = result[1];
      a2[a4[2]] = result[2];
      a2[a4[4]] = result[4];
    }

    else if (a3 == 8)
    {
      *a2 = *result;
    }
  }

  else if (a3 == 1)
  {
    for (i = 0; i != 64; ++i)
    {
      a2[a4[i]] = dword_240AB6070[aj_glob_zigzag[i]] * result[i];
    }
  }

  else if (a3 == 2)
  {
    for (j = 0; j != 25; ++j)
    {
      a2[a4[j]] = result[j];
    }
  }

  return result;
}

uint64_t aj_idct_s8(__int16 *a1, void *a2, int a3)
{
  v3 = *a1;
  v4 = (v3 + 1028) >> 3;
  if (v3 <= -1029)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 < 0x100)
  {
    v5 = v4;
  }

  *(*a2 + a3) = v5;
  return 1;
}

uint64_t aj_idct_s8_1x2_nearest(__int16 *a1, void *a2, int a3)
{
  v3 = *a1;
  v4 = (v3 + 1028) >> 3;
  if (v3 <= -1029)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4 < 0x100)
  {
    v5 = v4;
  }

  v6 = (*a2 + a3);
  *v6 = v5;
  v6[1] = v5;
  return 2;
}

uint64_t aj_idct_s4_1x2(__int16 *a1, void *a2, int a3)
{
  v3 = (*a2 + a3);
  v4 = *a1;
  v5 = a1[1];
  v6 = v4 - v5;
  v7 = a1[8];
  v8 = a1[9];
  v9 = v7 - v8;
  v10 = v5 + v4 + v7 + v8;
  v11 = (v10 + 1028) >> 3;
  if (v10 <= -1029)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v11 >= 0x100)
  {
    LOBYTE(v11) = v12;
  }

  *v3 = v11;
  v13 = v9 + v6;
  v14 = (v9 + v6 + 1028) >> 3;
  if (v13 <= -1029)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14 < 0x100)
  {
    v15 = v14;
  }

  v3[1] = v15;
  return 2;
}

uint64_t aj_idct_s4_2x1(__int16 *a1, void *a2, int a3)
{
  v3 = a2[1];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[8];
  v7 = a1[9];
  v8 = v7 + v6;
  v9 = v6 - v7;
  v10 = v8 + 2 * v4 + v9;
  v11 = ((v10 + 1) / 2 + 1028) >> 3;
  if (v10 <= -2059)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v11 >= 0x100)
  {
    LOBYTE(v11) = v12;
  }

  *(*a2 + a3) = v11;
  v13 = v4 - v8 + v4 - v9;
  v14 = ((v13 + 1) / 2 + 1028) >> 3;
  if (v13 <= -2059)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14 < 0x100)
  {
    v15 = v14;
  }

  *(v3 + a3) = v15;
  return 1;
}

uint64_t aj_idct_s2_2x4(int16x4_t *a1, void *a2, int a3)
{
  v3 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2 + a3;
  v28 = a2[1] + a3;
  v29 = v4;
  v5 = a1[2];
  v6 = vsubl_s16(*a1, v5);
  v7 = &v29;
  v8 = 1;
  v30[0] = vaddl_s16(v5, *a1);
  v30[1] = v6;
  do
  {
    v9 = v8;
    v10 = &v30[v3];
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    LODWORD(v10) = v10[3];
    v14 = v13 + v12;
    v15 = v12 - v13;
    v16 = (17734 * (v10 + v11) + 0x4000) >> 15;
    v17 = v16 + ((25080 * v11 + 0x4000) >> 15);
    v18 = v16 - (v10 + ((27779 * v10 + 0x4000) >> 15));
    if (v17 + v14 <= -1029)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if (((v17 + v14 + 1028) >> 3) < 0x100)
    {
      v19 = (v17 + v14 + 1028) >> 3;
    }

    v20 = *v7;
    **v7 = v19;
    if (v18 + v15 <= -1029)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if (((v18 + v15 + 1028) >> 3) < 0x100)
    {
      v21 = (v18 + v15 + 1028) >> 3;
    }

    v20[1] = v21;
    v22 = v15 - v18;
    v23 = (v22 + 1028) >> 3;
    if (v22 <= -1029)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    if (v23 < 0x100)
    {
      v24 = v23;
    }

    v20[2] = v24;
    if (v14 - v17 <= -1029)
    {
      v25 = 0;
    }

    else
    {
      v25 = -1;
    }

    if (((v14 - v17 + 1028) >> 3) < 0x100)
    {
      v25 = (v14 - v17 + 1028) >> 3;
    }

    v20[3] = v25;
    *v7 = v20 + 4;
    v7 = &v28;
    v3 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v26 = *MEMORY[0x277D85DE8];
  return 4;
}

uint64_t aj_idct_s2_4x2(int16x4_t *a1, void *a2, int a3)
{
  v3 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2[1] + a3;
  v34[0] = *a2 + a3;
  v34[1] = v4;
  v5 = a2[3] + a3;
  v34[2] = a2[2] + a3;
  v34[3] = v5;
  v6 = a1[4];
  v7 = vaddl_s16(v6, *a1);
  v8 = vsubl_s16(*a1, v6);
  v9 = a1[2];
  v10 = a1[6];
  v11.i64[0] = 0x400000004000;
  v11.i64[1] = 0x400000004000;
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v13 = vshrq_n_s32(vmlaq_s32(v12, vaddl_s16(v10, v9), vdupq_n_s32(0x4546u)), 0xFuLL);
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v14 = vmlal_s16(v12, v9, vdup_n_s16(0x61F8u));
  v15 = vsubq_s32(v13, vsraq_n_s32(vmovl_s16(v10), vmlal_s16(v11, v10, vdup_n_s16(0x6C83u)), 0xFuLL));
  v16 = vsraq_n_s32(v13, v14, 0xFuLL);
  v35[0] = vaddq_s32(v16, v7);
  v35[1] = vaddq_s32(v15, v8);
  v35[2] = vsubq_s32(v8, v15);
  v35[3] = vsubq_s32(v7, v16);
  v17 = v35 + 2;
  do
  {
    v18 = *(v17 - 2);
    v19 = *(v17 - 1);
    v20 = *v17;
    v21 = v17[1];
    v17 += 4;
    v22 = (17734 * (v21 + v19) + 0x4000) >> 15;
    v23 = v22 + ((25080 * v19 + 0x4000) >> 15);
    v24 = v22 - (v21 + ((27779 * v21 + 0x4000) >> 15));
    v25 = v23 + 2 * v18 + v24;
    v26 = ((v25 + 1) / 2 + 1028) >> 3;
    if (v25 <= -2059)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    if (v26 < 0x100)
    {
      v27 = v26;
    }

    v28 = v34[v3];
    *v28 = v27;
    v29 = v18 - v24 + v18 - v23;
    v30 = ((v29 + 1) / 2 + 1028) >> 3;
    if (v29 <= -2059)
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if (v30 < 0x100)
    {
      v31 = v30;
    }

    v28[1] = v31;
    v34[v3++] = v28 + 2;
  }

  while (v3 != 4);
  v32 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t aj_idct_s1_12bit(int *a1, uint64_t *a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  basic_idct_s1_12bit(a1, v9);
  for (i = 0; i != 64; i += 8)
  {
    v6 = *a2++;
    *(v6 + a3) = *&v9[i];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 16;
}

uint64_t basic_idct_s1_12bit(int *a1, _WORD *a2)
{
  v4 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v5 = v47;
  v6 = a1;
  do
  {
    v7 = &a1[v4];
    if (v7[8] || v7[24] | v7[16] || v7[40] | v7[32] || v7[56] | v7[48])
    {
      v8 = 0;
      v9 = v6;
      do
      {
        v10 = *v9;
        v9 += 8;
        v48[v8++] = v10;
      }

      while (v8 != 8);
      v11 = &v47[4 * v4];
      idct_aan(v48, v11, v11 + 8, v11 + 16, v11 + 24, v11 + 32, v11 + 40, v11 + 48, v11 + 56);
    }

    else
    {
      v12 = 0;
      v13 = a1[v4];
      do
      {
        *&v5[v12] = v13;
        v12 += 32;
      }

      while (v12 != 256);
    }

    ++v4;
    ++v6;
    v5 += 4;
  }

  while (v4 != 8);
  v14 = 0;
  v15 = a2 + 4;
  do
  {
    v16 = &v47[v14];
    result = idct_aan(&v47[v14], &v47[v14], &v47[v14 + 4], &v47[v14 + 8], &v47[v14 + 12], &v47[v14 + 16], &v47[v14 + 20], &v47[v14 + 24], &v47[v14 + 28]);
    v18 = (*&v47[v14] + 65552) >> 5;
    if (v18 >= 0x1000)
    {
      if (*&v47[v14] <= -65553)
      {
        LOWORD(v18) = 0;
      }

      else
      {
        LOWORD(v18) = 4095;
      }
    }

    *(v15 - 4) = v18;
    v19 = v16[1];
    v20 = (v19 + 65552) >> 5;
    if (v20 >= 0x1000)
    {
      if (v19 <= -65553)
      {
        LOWORD(v20) = 0;
      }

      else
      {
        LOWORD(v20) = 4095;
      }
    }

    *(v15 - 3) = v20;
    v21 = v16[2];
    v22 = (v21 + 65552) >> 5;
    if (v22 >= 0x1000)
    {
      if (v21 <= -65553)
      {
        LOWORD(v22) = 0;
      }

      else
      {
        LOWORD(v22) = 4095;
      }
    }

    *(v15 - 2) = v22;
    v23 = v16[3];
    v24 = (v23 + 65552) >> 5;
    if (v24 >= 0x1000)
    {
      if (v23 <= -65553)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        LOWORD(v24) = 4095;
      }
    }

    *(v15 - 1) = v24;
    v25 = v16[4];
    v26 = v16[5];
    v27 = (v25 + 65552) >> 5;
    if (v25 <= -65553)
    {
      v28 = 0;
    }

    else
    {
      v28 = 4095;
    }

    if (v27 < 0x1000)
    {
      v28 = v27;
    }

    *v15 = v28;
    v29 = (v26 + 65552) >> 5;
    if (v26 <= -65553)
    {
      v30 = 0;
    }

    else
    {
      v30 = 4095;
    }

    if (v29 >= 0x1000)
    {
      LOWORD(v29) = v30;
    }

    v15[1] = v29;
    v31 = v16[6];
    v32 = (v31 + 65552) >> 5;
    if (v31 <= -65553)
    {
      v33 = 0;
    }

    else
    {
      v33 = 4095;
    }

    if (v32 < 0x1000)
    {
      v33 = v32;
    }

    v15[2] = v33;
    v34 = *&v47[v14 + 28];
    v35 = (v34 + 65552) >> 5;
    if (v34 <= -65553)
    {
      v36 = 0;
    }

    else
    {
      v36 = 4095;
    }

    if (v35 < 0x1000)
    {
      v36 = v35;
    }

    v15[3] = v36;
    v14 += 32;
    v15 += 8;
  }

  while (v14 != 256);
  v37 = 0;
  v38 = a2 + 1;
  v39 = a2 + 8;
  v40 = 7;
  do
  {
    if (v37 <= 6)
    {
      v41 = v39;
      v42 = v38;
      v43 = v40;
      do
      {
        v44 = *v42 ^ *v41;
        *v42 = v44;
        v45 = *v41 ^ v44;
        *v41 = v45;
        v41 += 8;
        *v42++ ^= v45;
        --v43;
      }

      while (v43);
    }

    ++v37;
    --v40;
    v38 += 9;
    v39 += 9;
  }

  while (v37 != 8);
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_idct_s1_16x16_bilinear_12bit(int *a1, void *a2, int a3)
{
  v37[14] = *MEMORY[0x277D85DE8];
  basic_idct_s1_12bit(a1, v36);
  v5 = (*a2 + a3);
  v6 = v36[0];
  *v5 = v36[0];
  v7 = v5 + 1;
  v8 = 1;
  v9 = v6;
  do
  {
    v10 = v36[v8];
    *v7 = (3 * v9 + v10 + 2) >> 2;
    v7[1] = (v9 + 3 * v10 + 1) >> 2;
    v7 += 2;
    ++v8;
    v9 = v10;
  }

  while (v8 != 8);
  v11 = v37;
  *v7 = v10;
  v12 = 1;
  v13 = v36;
  do
  {
    v14 = 0;
    v15 = v6;
    v16 = &a2[2 * v12];
    v17 = (*(v16 - 1) + a3);
    v18 = (*v16 + a3);
    v6 = *v11;
    v19 = 3 * v15 + v6;
    v20 = 3 * v6 + v15;
    *v17 = (v19 + 1) >> 2;
    v21 = v17 + 1;
    *v18 = (v20 + 1) >> 2;
    v22 = v18 + 1;
    do
    {
      v23 = &v22[v14 * 2];
      v24 = &v21[v14 * 2];
      v25 = v13[v14 + 1];
      v26 = v13[v14 + 9];
      v27 = 3 * v25 + v26;
      v28 = 3 * v26 + v25;
      *v24 = (3 * v19 + v27 + 8) >> 4;
      v24[1] = (v19 + 3 * v27 + 7) >> 4;
      *v23 = (3 * v20 + v28 + 8) >> 4;
      v23[1] = (v20 + 3 * v28 + 7) >> 4;
      ++v14;
      v20 = v28;
      v19 = v27;
    }

    while (v14 != 7);
    v21[14] = (v27 + 2) >> 2;
    v22[14] = (v28 + 2) >> 2;
    ++v12;
    v11 = &v36[8 * v12];
    v13 += 8;
  }

  while (v12 != 8);
  v29 = a2[15];
  *(v29 + a3) = v6;
  v30 = (v29 + a3 + 2);
  v31 = 1;
  do
  {
    v32 = v30;
    v33 = v13[v31];
    *v30 = (3 * v6 + v33 + 2) >> 2;
    v30[1] = (v6 + 3 * v33 + 1) >> 2;
    ++v31;
    v30 += 2;
    v6 = v33;
  }

  while ((v31 * 2) != 16);
  v32[2] = v33;
  v34 = *MEMORY[0x277D85DE8];
  return 32;
}

uint64_t aj_idct_s1_16x8_bilinear_12bit(int *a1, void *a2, int a3)
{
  v19[14] = *MEMORY[0x277D85DE8];
  v5 = v19;
  basic_idct_s1_12bit(a1, &v18);
  *(*a2 + a3) = v18;
  v6 = 1;
  v7 = &v18;
  do
  {
    v8 = 0;
    v9 = v5;
    v10 = &a2[2 * v6];
    v11 = *v10;
    v12 = *(v10 - 1) + a3;
    v13 = v11 + a3;
    do
    {
      v14 = *(v7 + v8);
      v15 = *(v7 + v8 + 16);
      *(v12 + v8) = (v15 + 3 * v14 + 1) >> 2;
      *(v13 + v8) = (v14 + 3 * v15 + 2) >> 2;
      v8 += 2;
    }

    while (v8 != 16);
    ++v6;
    v5 = &v19[2 * v6 - 2];
    ++v7;
  }

  while (v6 != 8);
  *(a2[15] + a3) = *v9;
  v16 = *MEMORY[0x277D85DE8];
  return 16;
}

uint64_t aj_idct_s1_8x4_12bit(int *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  basic_idct_s1_12bit(a1, v9);
  for (i = 0; i != 8; ++i)
  {
    v6 = &v9[8 * i];
    v11 = vld2_s16(v6);
    *(*(a2 + 8 * i) + a3) = vrhadd_u16(v11.val[0], v11.val[1]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 8;
}

uint64_t aj_idct_s1_4x8_12bit(int *a1, uint64_t *a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  basic_idct_s1_12bit(a1, v9);
  for (i = 0; i != 64; i += 16)
  {
    v6 = *a2++;
    *(v6 + a3) = *&v9[i];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 16;
}

uint64_t aj_idct_s2_12bit(int32x4_t *a1, void *a2, int a3)
{
  v3 = 0;
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2[1] + a3;
  v38[0] = *a2 + a3;
  v38[1] = v4;
  v5 = a2[3] + a3;
  v38[2] = a2[2] + a3;
  v38[3] = v5;
  v6 = a1[4];
  v7 = vaddq_s32(v6, *a1);
  v8 = vsubq_s32(*a1, v6);
  v9 = a1[2];
  v10 = a1[6];
  v11.i64[0] = 0x400000004000;
  v11.i64[1] = 0x400000004000;
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v13 = vshrq_n_s32(vmlaq_s32(v12, vaddq_s32(v10, v9), vdupq_n_s32(0x4546u)), 0xFuLL);
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v14 = vmlaq_s32(v12, v9, vdupq_n_s32(0x61F8u));
  v15 = vsubq_s32(v13, vsraq_n_s32(v10, vmlaq_s32(v11, v10, vdupq_n_s32(0x6C83u)), 0xFuLL));
  v16 = vsraq_n_s32(v13, v14, 0xFuLL);
  v39[0] = vaddq_s32(v16, v7);
  v39[1] = vaddq_s32(v15, v8);
  v17 = v39 + 2;
  v39[2] = vsubq_s32(v8, v15);
  v39[3] = vsubq_s32(v7, v16);
  do
  {
    v18 = *(v17 - 2);
    v19 = *(v17 - 1);
    v20 = *v17;
    v21 = v17[1];
    v17 += 4;
    v22 = v20 + v18;
    v23 = v18 - v20;
    v24 = (17734 * (v21 + v19) + 0x4000) >> 15;
    v25 = v24 + ((25080 * v19 + 0x4000) >> 15);
    v26 = v24 - (v21 + ((27779 * v21 + 0x4000) >> 15));
    if (v25 + v22 <= -16389)
    {
      v27 = 0;
    }

    else
    {
      v27 = 4095;
    }

    if (((v25 + v22 + 16388) >> 3) < 0x1000)
    {
      v27 = (v25 + v22 + 16388) >> 3;
    }

    v28 = v38[v3];
    *v28 = v27;
    if (v26 + v23 <= -16389)
    {
      v29 = 0;
    }

    else
    {
      v29 = 4095;
    }

    if (((v26 + v23 + 16388) >> 3) < 0x1000)
    {
      v29 = (v26 + v23 + 16388) >> 3;
    }

    v28[1] = v29;
    v30 = v23 - v26;
    v31 = (v30 + 16388) >> 3;
    if (v30 <= -16389)
    {
      v32 = 0;
    }

    else
    {
      v32 = 4095;
    }

    if (v31 < 0x1000)
    {
      v32 = v31;
    }

    v28[2] = v32;
    v33 = v22 - v25;
    v34 = (v22 - v25 + 16388) >> 3;
    if (v33 <= -16389)
    {
      v35 = 0;
    }

    else
    {
      v35 = 4095;
    }

    if (v34 < 0x1000)
    {
      v35 = v34;
    }

    v28[3] = v35;
    v38[v3++] = v28 + 4;
  }

  while (v3 != 4);
  v36 = *MEMORY[0x277D85DE8];
  return 8;
}

uint64_t aj_idct_s2_2x4_12bit(int32x4_t *a1, void *a2, int a3)
{
  v3 = 0;
  v32 = *MEMORY[0x277D85DE8];
  v4 = *a2 + a3;
  v29 = a2[1] + a3;
  v30 = v4;
  v5 = *a1;
  v6 = a1[2];
  v7 = vaddq_s32(v6, *a1);
  v8 = &v30;
  v9 = 1;
  v31[0] = v7;
  v31[1] = vsubq_s32(v5, v6);
  do
  {
    v10 = v9;
    v11 = &v31[v3];
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    LODWORD(v11) = v11[3];
    v15 = v14 + v12;
    v16 = v12 - v14;
    v17 = (17734 * (v11 + v13) + 0x4000) >> 15;
    v18 = v17 + ((25080 * v13 + 0x4000) >> 15);
    v19 = v17 - (v11 + ((27779 * v11 + 0x4000) >> 15));
    if (v18 + v15 <= -16389)
    {
      v20 = 0;
    }

    else
    {
      v20 = 4095;
    }

    if (((v18 + v15 + 16388) >> 3) < 0x1000)
    {
      v20 = (v18 + v15 + 16388) >> 3;
    }

    v21 = *v8;
    **v8 = v20;
    if (v19 + v16 <= -16389)
    {
      v22 = 0;
    }

    else
    {
      v22 = 4095;
    }

    if (((v19 + v16 + 16388) >> 3) < 0x1000)
    {
      v22 = (v19 + v16 + 16388) >> 3;
    }

    v21[1] = v22;
    v23 = v16 - v19;
    v24 = (v23 + 16388) >> 3;
    if (v23 <= -16389)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4095;
    }

    if (v24 < 0x1000)
    {
      v25 = v24;
    }

    v21[2] = v25;
    if (v15 - v18 <= -16389)
    {
      v26 = 0;
    }

    else
    {
      v26 = 4095;
    }

    if (((v15 - v18 + 16388) >> 3) < 0x1000)
    {
      v26 = (v15 - v18 + 16388) >> 3;
    }

    v21[3] = v26;
    *v8 = v21 + 4;
    v8 = &v29;
    v3 = 1;
    v9 = 0;
  }

  while ((v10 & 1) != 0);
  v27 = *MEMORY[0x277D85DE8];
  return 8;
}

uint64_t aj_idct_s2_4x2_12bit(int32x4_t *a1, void *a2, int a3)
{
  v3 = 0;
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2[1] + a3;
  v34[0] = *a2 + a3;
  v34[1] = v4;
  v5 = a2[3] + a3;
  v34[2] = a2[2] + a3;
  v34[3] = v5;
  v6 = a1[4];
  v7 = vaddq_s32(v6, *a1);
  v8 = vsubq_s32(*a1, v6);
  v9 = a1[2];
  v10 = a1[6];
  v11.i64[0] = 0x400000004000;
  v11.i64[1] = 0x400000004000;
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v13 = vshrq_n_s32(vmlaq_s32(v12, vaddq_s32(v10, v9), vdupq_n_s32(0x4546u)), 0xFuLL);
  v12.i64[0] = 0x400000004000;
  v12.i64[1] = 0x400000004000;
  v14 = vmlaq_s32(v12, v9, vdupq_n_s32(0x61F8u));
  v15 = vsubq_s32(v13, vsraq_n_s32(v10, vmlaq_s32(v11, v10, vdupq_n_s32(0x6C83u)), 0xFuLL));
  v16 = vsraq_n_s32(v13, v14, 0xFuLL);
  v35[0] = vaddq_s32(v16, v7);
  v35[1] = vaddq_s32(v15, v8);
  v17 = v35 + 2;
  v35[2] = vsubq_s32(v8, v15);
  v35[3] = vsubq_s32(v7, v16);
  do
  {
    v18 = *(v17 - 2);
    v19 = *(v17 - 1);
    v20 = *v17;
    v21 = v17[1];
    v17 += 4;
    v22 = (17734 * (v21 + v19) + 0x4000) >> 15;
    v23 = v22 + ((25080 * v19 + 0x4000) >> 15);
    v24 = v22 - (v21 + ((27779 * v21 + 0x4000) >> 15));
    v25 = v23 + 2 * v18 + v24;
    v26 = ((v25 + 1) / 2 + 16388) >> 3;
    if (v25 <= -32779)
    {
      v27 = 0;
    }

    else
    {
      v27 = 4095;
    }

    if (v26 < 0x1000)
    {
      v27 = v26;
    }

    v28 = v34[v3];
    *v28 = v27;
    v29 = v18 - v24 + v18 - v23;
    v30 = ((v29 + 1) / 2 + 16388) >> 3;
    if (v29 <= -32779)
    {
      v31 = 0;
    }

    else
    {
      v31 = 4095;
    }

    if (v30 < 0x1000)
    {
      v31 = v30;
    }

    v28[1] = v31;
    v34[v3++] = v28 + 2;
  }

  while (v3 != 4);
  v32 = *MEMORY[0x277D85DE8];
  return 4;
}

uint64_t aj_idct_s4_12bit(_DWORD *a1, void *a2, int a3)
{
  v3 = (*a2 + a3);
  v4 = (a2[1] + a3);
  v5 = a1[1];
  v6 = v5 + *a1;
  v7 = *a1 - v5;
  v8 = a1[8];
  v9 = a1[9];
  v10 = v9 + v8;
  v11 = v8 - v9;
  v12 = (v10 + v6 + 16388) >> 3;
  if (v10 + v6 <= -16389)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4095;
  }

  if (v12 >= 0x1000)
  {
    LOWORD(v12) = v13;
  }

  *v3 = v12;
  if (v11 + v7 <= -16389)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4095;
  }

  if (((v11 + v7 + 16388) >> 3) < 0x1000)
  {
    v14 = (v11 + v7 + 16388) >> 3;
  }

  v3[1] = v14;
  v15 = v6 - v10;
  v16 = (v6 - v10 + 16388) >> 3;
  if (v15 <= -16389)
  {
    v17 = 0;
  }

  else
  {
    v17 = 4095;
  }

  if (v16 < 0x1000)
  {
    v17 = v16;
  }

  *v4 = v17;
  v18 = v7 - v11;
  v19 = (v7 - v11 + 16388) >> 3;
  if (v18 <= -16389)
  {
    v20 = 0;
  }

  else
  {
    v20 = 4095;
  }

  if (v19 < 0x1000)
  {
    v20 = v19;
  }

  v4[1] = v20;
  return 4;
}

uint64_t aj_idct_s4_1x2_12bit(_DWORD *a1, void *a2, int a3)
{
  v3 = (*a2 + a3);
  v4 = a1[1];
  v5 = *a1 - v4;
  v6 = a1[8];
  v7 = a1[9];
  v8 = v6 - v7;
  v9 = v4 + *a1 + v6 + v7;
  v10 = (v9 + 16388) >> 3;
  if (v9 <= -16389)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4095;
  }

  if (v10 >= 0x1000)
  {
    LOWORD(v10) = v11;
  }

  *v3 = v10;
  v12 = v8 + v5;
  if (v12 <= -16389)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4095;
  }

  if (((v12 + 16388) >> 3) < 0x1000)
  {
    v13 = (v12 + 16388) >> 3;
  }

  v3[1] = v13;
  return 4;
}

uint64_t aj_idct_s4_2x1_12bit(int *a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 + *a1;
  v8 = a1[8];
  v9 = a1[9];
  v10 = v9 + v8;
  v11 = v8 - v9;
  v12 = v10 + 2 * *a1 + v11;
  v13 = ((v12 + 1) / 2 + 16388) >> 3;
  if (v12 <= -32779)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4095;
  }

  if (v13 >= 0x1000)
  {
    LOWORD(v13) = v14;
  }

  *(v3 + a3) = v13;
  v15 = v7 - v10 + v5 - v6 - v11;
  v16 = ((v15 + 1) / 2 + 16388) >> 3;
  if (v15 <= -32779)
  {
    v17 = 0;
  }

  else
  {
    v17 = 4095;
  }

  if (v16 < 0x1000)
  {
    v17 = v16;
  }

  *(v4 + a3) = v17;
  return 2;
}

uint64_t aj_idct_s8_12bit(int *a1, void *a2, int a3)
{
  if (*a1 <= -16389)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4095;
  }

  if (((*a1 + 16388) >> 3) < 0x1000)
  {
    v3 = (*a1 + 16388) >> 3;
  }

  *(*a2 + a3) = v3;
  return 2;
}

uint64_t idct_aan(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[6];
  v12 = a1[7];
  v13 = v9 + v11;
  v14 = v9 - v11;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[1];
  v18 = v15 + *a1;
  v19 = *a1 - v15;
  v20 = 23170 * v14 + 0x4000;
  v21 = v16 + v10;
  v22 = v16 - v10;
  v23 = v17 + 2 * v12;
  v24 = 17734 * v22 + 0x4000;
  v25 = v17 - 2 * v12;
  v26 = v23 + v21;
  v27 = v13 + (v20 >> 15);
  v28 = v27 + v18;
  v29 = 23170 * (v23 - v21) + 0x4000;
  v30 = (12540 * (v25 + v22) + 0x4000) >> 15;
  result = (v19 - (v20 >> 15));
  v32 = v19 + (v20 >> 15);
  v33 = v25 + ((10045 * v25 + 0x4000) >> 15) - v30;
  v34 = v30 + (v24 >> 15);
  v35 = v26 + v33;
  v36 = v33 + (v29 >> 15);
  *a2 = v35 + v27 + v18;
  *a3 = v36 + v32;
  v37 = v34 + (v29 >> 15);
  *a4 = v37 + result;
  v38 = v18 - v27;
  *a5 = v34 + v38;
  *a6 = v38 - v34;
  *a7 = result - v37;
  *a8 = v32 - v36;
  *a9 = v28 - v35;
  return result;
}

uint64_t aj_check_options(uint64_t a1, int *a2, int a3)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 20) != -1 || *(a1 + 12) != -1 || *(a1 + 16) != -1;
  v7 = *(a1 + 80);
  if (v7 > 179)
  {
    if (v7 != 180 && v7 != 270)
    {
      goto LABEL_21;
    }
  }

  else if (v7 && v7 != 90)
  {
LABEL_21:
    v32 = *(a1 + 80);
    aj_log_error("Parse", "Unsupported rotation. Rotation: %d.");
    return 5;
  }

  v8 = *(a1 + 28);
  if (v8 && (v9 = *(a1 + 32)) != 0)
  {
    if (v8 >= 0x10000 || v9 >= 0x10000)
    {
      aj_log_error("Parse", "Output width/height cannot exceed 65535.", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }

    v10 = *(a1 + 8);
    if (v10 == 14)
    {
      aj_log_error("Parse", "The texture format is only allowed with fixed scales", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }

    if (v8 < 1 || v9 <= 0)
    {
      aj_log_error("Parse", "Output size is not set properly.", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }

    if (!a3 && (v9 > a2[3] << 9 || v8 > a2[2] << 9))
    {
      aj_log_error("Parse", "Selected output width or height is too large.", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }
  }

  else
  {
    if ((*(a1 + 76) - 65) < 0xFFFFFFC0)
    {
      v31 = *(a1 + 76);
      aj_log_error("Parse", "Unsupported scale. Scale: %d.");
      return 5;
    }

    v10 = *(a1 + 8);
  }

  if (v10 >= 0x1B)
  {
    aj_log_error("Parse", "Unsupported output format", v30, v33, v34, v35, v36, v38, v3, v4);
    return 5;
  }

  v13 = *a2;
  if (*a2 != 4)
  {
    if (((1 << v10) & 0x4BF0000) != 0)
    {
      goto LABEL_47;
    }

    if (v10 == 15)
    {
      aj_log_error("Parse", "Can only decode to CMYK if image has 4 components");
      return 3;
    }

LABEL_56:
    v16 = a2[1];
    if (v16 >= 9)
    {
      aj_log_error("Parse", ">8 bit JPEGs require 16-bit output formats");
      return 3;
    }

    v19 = 0;
    v17 = 1;
    if (*(a2 + 86))
    {
      goto LABEL_60;
    }

LABEL_68:
    if (v10 - 25 <= 1)
    {
      aj_log_error("Parse", "Tri-planar formats only supported for lossless JPEG");
      return 3;
    }

    goto LABEL_90;
  }

  v15 = v10 == 21 && *(a2 + 86) != 0;
  if (v10 != 15 && !v15)
  {
    aj_log_error("Parse", "Image with 4 components can only be decoded CMYK or lossless RGGB");
    return 3;
  }

  if (v10 - 16 >= 6)
  {
    goto LABEL_56;
  }

LABEL_47:
  v16 = a2[1];
  v17 = v16 < 9;
  if (v16 == 8)
  {
    aj_log_error("Parse", "16-bit output is only supported for >8 bit JPEGs");
    return 3;
  }

  if (v16 < 9)
  {
    v19 = 0;
    if (*(a2 + 86))
    {
      goto LABEL_60;
    }

    goto LABEL_68;
  }

  v18 = *(a1 + 76);
  if (v18 > 8 || ((1 << v18) & 0x117) == 0)
  {
    aj_log_error("Parse", "Rescaling beyond DCT scales is not supported for 12-bit JPEGs");
    return 3;
  }

  if (v7 || *(a1 + 84) || *(a1 + 88))
  {
    aj_log_error("Parse", "Output transforms are not supported for 12-bit JPEGs");
    return 3;
  }

  v19 = 1;
  if (!*(a2 + 86))
  {
    goto LABEL_68;
  }

LABEL_60:
  if (v5 != -1 || *(a1 + 20) != -1 || *(a1 + 12) != -1 || *(a1 + 16) != -1 || v7 || *(a1 + 76) != 1 || *(a1 + 88) || *(a1 + 84))
  {
    aj_log_error("Parse", "Cropping, scaling or rotating not supported for lossless JPEG");
    return 3;
  }

  if (v13 == 2)
  {
    goto LABEL_90;
  }

  if (v13 == 1)
  {
    if (v19)
    {
      if (v10 != 18)
      {
        aj_log_error("Parse", ">8 bit grayscale lossless JPEG can only be decode to 16-bit grayscale");
        return 3;
      }

      if (!v17)
      {
        goto LABEL_103;
      }

LABEL_85:
      aj_log_error("Parse", "8-bit grayscale lossless JPEG can only be decode to 8-bit grayscale");
      return 3;
    }

    if (v17)
    {
      if (v10 == 5)
      {
        goto LABEL_103;
      }

      goto LABEL_85;
    }
  }

  else
  {
    if (v10 >= 0x19 && v13 != 3)
    {
      aj_log_error("Parse", "Only three-component JPEGs can be decoded to tri-planar formats");
      return 3;
    }

    if (((v17 | (0x4330000u >> v10)) & 1) == 0)
    {
      aj_log_error("Parse", ">8 bit RGB lossless JPEG can only be decode to 16-bit RGB format");
      return 3;
    }

    if (v16 == 8 && ((v10 != 26) & (0x2000019u >> v10)) == 0)
    {
      aj_log_error("Parse", "8-bit RGB lossless JPEG can only be decode to 8-bit RGB format");
      return 3;
    }
  }

LABEL_90:
  if (v10 == 14)
  {
    v20 = *(a1 + 76);
    if (v20 > 8 || ((1 << v20) & 0x116) == 0)
    {
      aj_log_error("Parse", "The texture format is only allowed with fixed scales");
      return 3;
    }

    if (v7)
    {
      aj_log_error("Parse", "The texture format is not compatible with rotation");
      return 3;
    }

    if (*(a1 + 84) || *(a1 + 88))
    {
      aj_log_error("Parse", "The texture format is not compatible with flipping");
      return 3;
    }
  }

  else if (v10 == 7 && (v7 || *(a1 + 84) || *(a1 + 88)))
  {
    aj_log_error("Parse", "Rotation/Flipping and YUV422_YUYV is not yet supported");
    return 3;
  }

LABEL_103:
  if (v6)
  {
    v21 = *(a1 + 12);
    if (v21 < 0 || (v22 = a2[2], v21 >= v22))
    {
      aj_log_error("Parse", "Cropping-regions x-position is invalid", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }

    v23 = *(a1 + 16);
    if (v23 < 0 || (v24 = a2[3], v23 >= v24))
    {
      aj_log_error("Parse", "Cropping-regions y-position is invalid", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }

    v25 = *(a1 + 20);
    if (v25 + v21 > v22 || v23 + v5 > v24)
    {
      v37 = a2[2];
      aj_log_error("Parse", "Cropping-region exceeds image dimensions [%d,%d+%d,%d] > [%d,%d]");
      return 5;
    }

    if (v5 < 1 || v25 <= 0)
    {
      aj_log_error("Parse", "Cropping-region is empty", v30, v33, v34, v35, v36, v38, v3, v4);
      return 5;
    }
  }

  if ((*a1 & 0x80000000) != 0)
  {
    aj_log_error("Parse", "Number of threads can't be negative", v30, v33, v34, v35, v36, v38, v3, v4);
    return 5;
  }

  v11 = *(a1 + 136);
  if (*(a1 + 136))
  {
    v11 = 0;
    if (!*(a1 + 140) && v13 >= 1)
    {
      v26 = 0;
      v27 = a2 + 8;
      v28 = *a2;
      do
      {
        v29 = *v27 > 1 || *(v27 - 4) > 1;
        v26 |= v29;
        ++v27;
        --v28;
      }

      while (v28);
      v11 = 0;
      if (v13 != 1)
      {
        if (v26)
        {
          aj_log_error("Parse", "Unsupported decimation with APP14 transform");
          return 3;
        }
      }
    }
  }

  return v11;
}

uint64_t handle_suspension(void *a1, int a2, uint64_t a3, uint64_t a4, int *a5, int a6, int a7, int a8, unsigned int a9)
{
  if (!a2)
  {
    return 7;
  }

  v9 = *(a3 + 104);
  v10 = v9 - *(a4 + 104);
  v11 = *(a4 + 48);
  v12 = *(a3 + 48);
  if (v9 != *(a4 + 104) || v11 != v12)
  {
    v14 = v11 - v12;
    *(a3 + 104) = v9 - v10;
    v15 = *(a3 + 16);
    *(a3 + 8) -= v10;
    if (v15)
    {
      *(a3 + 16) = v15 - v10;
    }

    *(a3 + 48) = v11;
    *(a3 + 32) += v14;
    return 4294967294;
  }

  if (*(a3 + 32) + *(a3 + 8) - *(a3 + 40) != *(a3 + 36))
  {
    return 4294967294;
  }

  *(a3 + 104) = 0;
  result = aj_istream_move_to_position(a3, a9);
  if (!result)
  {
    result = add_segment_info(a1, a5, a6, a7, a8);
    if (!result)
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t aj_rowbuffer_add_block(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 && a2 && a3)
  {
    if (*a1 < 10)
    {
      v8 = &a1[10 * *a1];
      v9 = (8 * a3 + 15) & 0xFFFFFFFFFFFFFFF0;
      v10 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v10 + 16;
      v12 = a4 >= v10 - a2;
      v13 = a4 - (v10 - a2);
      if (!v12)
      {
        v13 = 0;
      }

      v14 = v9 + v11 * a3 + v13;
      *(v8 + 5) = v14;
      v15 = *(v8 + 4);
      if (v15)
      {
        free(v15);
        *(v8 + 4) = 0;
        v14 = *(v8 + 5);
      }

      v16 = malloc_type_calloc(1uLL, v14, 0x27942538uLL);
      *(v8 + 4) = v16;
      if (v16)
      {
        v17 = 0;
        *(v8 + 3) = v16;
        v18 = &v16[v9];
        do
        {
          *(*(v8 + 3) + 8 * v17++) = v18;
          v18 += v11;
        }

        while (a3 != v17);
        result = 0;
        *(v8 + 1) = a3;
        *(v8 + 2) = a2;
        ++*a1;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      aj_log_error(0, "Rowbuffermanager is full (%d blocks)", *a1);
      return 1;
    }
  }

  else
  {
    aj_log_error(0, "Illegal input to add_block: mgr=%p, len=%zu, rows=%zu\n", a1, a2, a3);
    return 8;
  }

  return result;
}

uint64_t aj_rowbuffer_destroy(int *a1)
{
  if (!a1)
  {
    return 8;
  }

  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = a1 + 2;
    do
    {
      v4 = v2 - 1;
      v5 = *&v3[10 * (v2 - 1) + 6];
      if (v5)
      {
        free(v5);
        v2 = *a1;
        v4 = *a1 - 1;
        *&v3[10 * v4 + 6] = 0;
      }

      *a1 = v4;
      v6 = v2 <= 1;
      v2 = v4;
    }

    while (!v6);
  }

  return 0;
}

_BYTE *aj_rowbuffer_get_buffer(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
LABEL_9:
    aj_log_error(0, "No buffers available of length: %d", a2);
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = a1 + 2;
    while (1)
    {
      if (*&v4[10 * v3 + 2] == a2)
      {
        v5 = &v4[10 * v3];
        v6 = *v5;
        if (*v5)
        {
          break;
        }
      }

LABEL_8:
      if (++v3 == v2)
      {
        goto LABEL_9;
      }
    }

    v7 = *(v5 + 2);
    while (1)
    {
      v8 = *v7;
      if (!**v7)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_8;
      }
    }

    *v8 = 1;
    return v8 + 16;
  }
}

uint64_t aj_rowbuffer_retain_count(unsigned int *a1, unint64_t a2)
{
  rowbuffer_for_pointer = find_rowbuffer_for_pointer(a1, a2);
  if (rowbuffer_for_pointer)
  {
    return *rowbuffer_for_pointer;
  }

  aj_log_error(0, "Requesting retain count for a pointer that is not in the list\n");
  return 0xFFFFFFFFLL;
}

uint64_t find_rowbuffer_for_pointer(unsigned int *a1, unint64_t a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 2;
  do
  {
    v5 = &v4[10 * v3];
    v6 = v5[3];
    if (v6 > a2 || v6 + v5[4] <= a2)
    {
      result = 0;
    }

    else
    {
      v7 = *v5;
      v8 = v5[2];
      v9 = 1;
      if (v7 >= 2)
      {
        while (*(v8 + 8 * v9) <= a2)
        {
          if (v7 == ++v9)
          {
            v9 = v7;
            break;
          }
        }
      }

      result = *(v8 + 8 * v9 - 8);
    }

    ++v3;
  }

  while (v3 < v2 && !result);
  return result;
}

unint64_t aj_rowbuffer_lock_buffer(unsigned int *a1, unint64_t a2)
{
  rowbuffer_for_pointer = find_rowbuffer_for_pointer(a1, a2);
  if (rowbuffer_for_pointer)
  {
    ++*rowbuffer_for_pointer;
  }

  return a2;
}

void aj_rowbuffer_return_buffer(unsigned int *a1, unint64_t a2)
{
  rowbuffer_for_pointer = find_rowbuffer_for_pointer(a1, a2);
  if (rowbuffer_for_pointer)
  {
    if (*rowbuffer_for_pointer)
    {
      --*rowbuffer_for_pointer;
      return;
    }

    v3 = "Releasing a rowbuffer without lock";
  }

  else
  {
    v3 = "Releasing a rowbuffer that is not in the list";
  }

  aj_log_error(0, v3);
}

char *applejpeg_reduce_open_file(uint64_t a1, unint64_t a2, uint64_t a3, int *a4)
{
  if (a1)
  {
    aj_log_error("Reduce", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
  }

  return reduce_open(a2, 0, a3, a4);
}

char *reduce_open(unint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  __dst = 0;
  if (a1 && a2)
  {
    aj_log_error("Reduce", "Cannot have both file input AND memory input");
LABEL_36:
    v12 = 0;
    goto LABEL_37;
  }

  if (!(a1 | a2))
  {
    aj_log_error("Reduce", "Input cannot be NULL");
    goto LABEL_36;
  }

  if (!a1)
  {
    if (!*a2 || (v9 = a2[1]) == 0)
    {
      aj_log_error("Reduce", "NULL fields in the memory input struct not allowed");
      goto LABEL_36;
    }

    if (v9 >> 31)
    {
      aj_log_error("Reduce", "The input buffer size can't be larger than %d");
      goto LABEL_36;
    }

    v11 = malloc_type_calloc(1uLL, 0x27320uLL, 0x10F00407774F82DuLL);
    if (v11)
    {
      v12 = v11;
      v13 = a2[1];
      inited = aj_istream_init_mem((v11 + 152136), a2, 0, 0);
      goto LABEL_28;
    }

LABEL_30:
    aj_log_error("Reduce", "Unable to allocate memory");
    v12 = 0;
    v17 = 0;
    goto LABEL_31;
  }

  if (!*a1 || !*(a1 + 16))
  {
    aj_log_error("Reduce", "Read/Skip callback is missing");
    goto LABEL_36;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    if (v8 <= 0xFFF)
    {
      aj_log_error("Reduce", "The read buffer size must be larger than %d");
      goto LABEL_36;
    }

    if (v8 >> 31)
    {
      aj_log_error("Reduce", "The read buffer size can't be larger than %d");
      goto LABEL_36;
    }
  }

  v10 = *(a1 + 48);
  if (v10 >> 31)
  {
    aj_log_error("Reduce", "The file size can't be larger than %d");
    goto LABEL_36;
  }

  if (!v10)
  {
    aj_log_error("Reduce", "The file size may not be zero");
    goto LABEL_36;
  }

  v15 = malloc_type_calloc(1uLL, 0x27320uLL, 0x10F00407774F82DuLL);
  if (!v15)
  {
    goto LABEL_30;
  }

  v12 = v15;
  if (!*(a1 + 24))
  {
    aj_log_error("Reduce", "No rewind callback specified", v16);
    goto LABEL_37;
  }

  v13 = *(a1 + 48);
  inited = aj_istream_init_file((v15 + 152136), a1, (v15 + 156352), 4096, 0, 0);
LABEL_28:
  if (v13 <= 0x2E)
  {
    aj_log_error("Reduce", "File/buffer size is too small to fit image", inited);
LABEL_37:
    v17 = 0;
    v18 = 8;
    goto LABEL_38;
  }

  v19 = aj_istream_peek_bytes((v12 + 152136), &__dst, 4);
  if (v19)
  {
    goto LABEL_33;
  }

  v21 = __dst == 1196444242;
  if (__dst == 1196444242)
  {
    v19 = aj_istream_move_to_position((v12 + 152136), 4);
    if (v19)
    {
LABEL_33:
      v18 = v19;
LABEL_34:
      v17 = 0;
      goto LABEL_38;
    }

    v22 = parse_reduced_file((v12 + 152136), v12);
    if (v22)
    {
      v18 = v22;
      aj_log_error("Reduce", "Error %d while parsing RJPEG headers", v22);
      goto LABEL_34;
    }

    *v12 = v21;
    if (a3)
    {
      *a3 = v21;
      v26 = v12[10];
      v27 = *(v12 + 11);
      v28 = *(v12 + 7);
      v29 = *(v12 + 6);
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (a1)
  {
    (*(v12 + 19028))(*(v12 + 19025));
    v23 = applejpeg_decode_create(0);
    v17 = v23;
    if (v23)
    {
      v24 = applejpeg_decode_open_file(v23, a1, 0);
      goto LABEL_52;
    }

LABEL_31:
    v18 = 6;
LABEL_38:
    if (a4)
    {
      *a4 = v18;
    }

    applejpeg_decode_destroy(v17);
    applejpeg_reduce_close(v12);
    return 0;
  }

  v25 = applejpeg_decode_create(0);
  v17 = v25;
  if (!v25)
  {
    goto LABEL_31;
  }

  v24 = applejpeg_decode_open_mem(v25, a2);
LABEL_52:
  v18 = v24;
  if (v24)
  {
    aj_log_error("Reduce", "Decode open failed");
    goto LABEL_38;
  }

  if (!can_jpeg_be_reduced(v17))
  {
    v18 = 3;
    goto LABEL_38;
  }

  *(v12 + 17732) = v17;
  *v12 = v21;
  if (a3)
  {
    v26 = 0;
    v27 = 0;
    *a3 = v21;
    v28 = *(v17 + 128);
    v29 = *(v17 + 132);
LABEL_59:
    *(a3 + 4) = v26;
    *(a3 + 8) = v27;
    *(a3 + 16) = v28;
    *(a3 + 20) = v29;
    *(a3 + 24) = 0;
  }

LABEL_60:
  if (a4)
  {
    *a4 = 0;
  }

  return v12;
}

char *applejpeg_reduce_open_mem(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  if (a1)
  {
    aj_log_error("Reduce", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
  }

  return reduce_open(0, a2, a3, a4);
}

uint64_t applejpeg_reduce_options_init(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

uint64_t applejpeg_reduce_set_options(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    return 0;
  }

  if (*a2)
  {
    if (*a2 != 1)
    {
      aj_log_error("Reduce", "Unsupported compression option", v2, v3);
      return 3;
    }

    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  *(a1 + 4) = v5;
  if (!*(a2 + 4))
  {
    return 0;
  }

  return 3;
}

uint64_t applejpeg_reduce_pack_file(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 && *(a2 + 40) >> 31)
  {
    aj_log_error("Reduce", "File write buffer size may not be larger than %d", 0x7FFFFFFF);
    return 8;
  }

  else
  {

    return reduce_pack(a1, a2, 0, a3);
  }
}

uint64_t reduce_pack(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v42 = 0;
  if (!a1 || !(a2 | a3) || !a4)
  {
    aj_log_error("Reduce", "Input arguments may not be null");
    return 8;
  }

  if (*a1)
  {
    aj_log_error("Reduce", "Input is already packed");
    return 8;
  }

  v10 = *(a1 + 141856);
  if (!v10)
  {
    aj_log_error("Reduce", "Reducer session object is corrupt");
    return 8;
  }

  v11 = (a1 + 160464);
  if (a2 && (v12 = *(a2 + 40)) != 0)
  {
    v13 = *(a1 + 160520);
    if (v13)
    {
      free(v13);
      *(a1 + 160520) = 0;
      v12 = *(a2 + 40);
    }

    v14 = malloc_type_calloc(1uLL, v12, 0x28B3BD05uLL);
    *(a1 + 160520) = v14;
    if (!v14)
    {
      aj_log_error("Reduce", "Could not allocate memory for write buffer");
      return 6;
    }

    v15 = *(a2 + 40);
  }

  else
  {
    v14 = (a1 + 152256);
    v15 = 4096;
  }

  if (a3)
  {
    v16 = a1 + 160448;
    *(a1 + 160448) = *a3;
    v17 = *a3;
    *(a1 + 160472) = *(a3 + 8);
    *v11 = v17;
    v18 = red_mem_skip_callback;
    v19 = red_mem_rewind_callback;
    v20 = red_mem_write_callback;
  }

  else
  {
    v20 = *(a2 + 8);
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v16 = *(a2 + 32);
  }

  v39 = v20;
  v40 = v19;
  v41 = v18;
  LODWORD(v42) = v15;
  v37 = v14;
  v38 = v16;
  v34[0] = 0;
  v34[1] = v14;
  v35 = 0;
  v36 = v15;
  if (!v19 || !v18)
  {
    aj_log_error("Reduce", "Cannot use pack without rewind and skip callbacks");
    return 8;
  }

  *(a1 + 134984) = v34;
  v21 = v10[13];
  *(a1 + 8) = 47;
  v22 = v10[32];
  *(a1 + 12) = v10[33];
  *(a1 + 10) = 1;
  *(a1 + 14) = v22;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = v21;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v23 = *(a1 + 4);
  *(a1 + 64) = 9;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  *(a1 + 74) = v23;
  if (v23 == 3)
  {
    aj_select_semistatic_coder((a1 + 141864));
  }

  else
  {
    if (v23 != 2)
    {
      return 5;
    }

    aj_select_adaptive_coder((a1 + 141864));
  }

  *(v10 + 521) = v10 + 930;
  inited = aj_reduce_init_pack(a1 + 160488, a1 + 104, (v10 + 1040), v10 + 465, (v10 + 2784), v10 + 30, v10, a1 + 141864);
  if (inited)
  {
    v8 = inited;
    aj_log_error("Reduce", "Failed to initialize reducer for packing");
    return v8;
  }

  v25 = write_pre_rimg_headers(a1, v10, v34);
  if (v25)
  {
    v8 = v25;
    aj_log_error("Reduce", "Failed to write pre RIMG headers");
    return v8;
  }

  *(a1 + 88) = v35;
  v26 = write_rimg_segment_and_data(a1, v10, (v10 + 1040), v34);
  if (v26)
  {
    v8 = v26;
    aj_log_error("Reduce", "Failed to write RIMG segment and data");
    return v8;
  }

  v27 = *(v10 + 2);
  if (!v27 || *v27 != 217)
  {
    aj_log_error("Reduce", "No EOI marker in image");
    return 7;
  }

  v28 = v10[6];
  if (v28 != -9 && *v10 != ~(-1 << (v28 + 9)) << (23 - v28))
  {
    v33 = *v10;
    aj_log_error("Reduce", "Padding before EOI not all ones, dbits is 0x%08X, expected 0x%08X");
    return 7;
  }

  v29 = aj_ostream_write_bytes(v34, 65497, 2);
  if (!v29)
  {
    *(v10 + 2) = 0;
    v30 = applejpeg_decode_get_bytes_read(v10);
    v31 = v10[13];
    if (v30 == v31 || (v32 = applejpeg_decode_get_bytes_read(v10), *(a1 + 96) = v35, v29 = write_rblob_segment_and_data((a1 + 76), v10, v34, v31 - v32), !v29))
    {
      v29 = aj_ostream_write_bytes(v34, 65455, 2);
      if (!v29)
      {
        v29 = aj_ostream_flush_buffer(v34);
        if (!v29)
        {
          *a4 = v35;
          return finalize_rjpeg_header(a1, v34);
        }
      }
    }
  }

  return v29;
}

uint64_t applejpeg_reduce_pack_mem(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 && *(a2 + 8) >> 31)
  {
    aj_log_error("Reduce", "Destination buffer size may not be larger than %d", 0x7FFFFFFF);
    return 8;
  }

  else
  {

    return reduce_pack(a1, 0, a2, a3);
  }
}

uint64_t applejpeg_reduce_unpack_file(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 && *(a2 + 40) >> 31)
  {
    aj_log_error("Reduce", "File write buffer size may not be larger than %d", 0x7FFFFFFF);
    return 8;
  }

  else
  {

    return reduce_unpack(a1, a2, 0, a3);
  }
}

uint64_t reduce_unpack(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v42 = 0;
  if (!a1 || !(a2 | a3) || !a4)
  {
    aj_log_error("Reduce", "Input arguments may not be null");
    return 8;
  }

  if (!*a1)
  {
    aj_log_error("Reduce", "Input is not packed");
    return 8;
  }

  if (a2)
  {
    v8 = *(a2 + 40);
    if (v8)
    {
      v9 = *(a1 + 160520);
      if (v9)
      {
        free(v9);
        *(a1 + 160520) = 0;
        v8 = *(a2 + 40);
      }

      v10 = malloc_type_calloc(1uLL, v8, 0x231A72AFuLL);
      *(a1 + 160520) = v10;
      if (!v10)
      {
        aj_log_error("Reduce", "Could not allocate memory for write buffer");
        return 6;
      }

      v11 = *(a2 + 40);
      if (!a3)
      {
        goto LABEL_11;
      }

LABEL_16:
      v15 = a1 + 160448;
      *(a1 + 160448) = *a3;
      v18 = *a3;
      *(a1 + 160472) = *(a3 + 8);
      *(a1 + 160464) = v18;
      v12 = red_mem_skip_callback;
      v14 = red_mem_rewind_callback;
      v13 = red_mem_write_callback;
      goto LABEL_17;
    }
  }

  v10 = (a1 + 152256);
  v11 = 4096;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_11:
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
LABEL_17:
  v39 = v13;
  v40 = v14;
  v41 = v12;
  LODWORD(v42) = v11;
  v37 = v10;
  v38 = v15;
  v34[0] = 0;
  v34[1] = v10;
  v35 = 0;
  v36 = v11;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v46 = -40;
  v16 = aj_ostream_write_bytes(v34, 65496, 2);
  if (v16)
  {
    goto LABEL_26;
  }

  v19 = *(a1 + 160512);
  if (v19)
  {
    free(v19);
  }

  v20 = malloc_type_calloc(1uLL, 0x10001uLL, 0x770C696AuLL);
  *(a1 + 160512) = v20;
  if (!v20)
  {
    v16 = 6;
    goto LABEL_26;
  }

  v21 = v20;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v45 = 0;
  v43 = 0;
  v44 = 0;
  rimg_segment = aj_istream_peek_short(a1 + 152136, &v46);
  if (rimg_segment)
  {
LABEL_22:
    v16 = rimg_segment;
    goto LABEL_26;
  }

  v33 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (v46 != 255)
    {
      aj_log_error("Reduce", "Expected 0xFF while parsing, got 0x%02X");
      goto LABEL_94;
    }

    LODWORD(v44) = HIBYTE(v46);
    if (v44 == 217 || HIBYTE(v46) == 175)
    {
      v45 = 0;
      HIDWORD(v43) = aj_istream_get_pos(a1 + 152136) + 2;
      rimg_segment = aj_istream_move_to_position(a1 + 152136, HIDWORD(v43));
      if (rimg_segment)
      {
        goto LABEL_22;
      }
    }

    else if (aj_get_segment_id_and_length(a1 + 152136, &v45, &v44 + 1, &v44, &v43 + 1, 1))
    {
      goto LABEL_97;
    }

    v26 = v44;
    if (v44 <= 193)
    {
      break;
    }

    if (v44 > 217)
    {
      if (v44 == 219)
      {
        v24 = 1;
        goto LABEL_57;
      }

      if (v44 == 221)
      {
LABEL_57:
        *v21 = -1;
        v21[1] = v26;
        v27 = aj_istream_memcpy(a1 + 152136, v21 + 2, v45, &v43);
        if (v27)
        {
          goto LABEL_95;
        }

        if (v45 != v43)
        {
LABEL_92:
          v16 = 9;
          goto LABEL_96;
        }

        v51 = v21 + 2;
        v52 = 0xFFFFLL;
        inited = aj_istream_init_mem(v47, &v51, 0, 0);
        if (v44 > 217)
        {
          switch(v44)
          {
            case 0xDA:
              sos = aj_read_sos(v47, (a1 + 148264));
              break;
            case 0xDB:
              sos = aj_read_dqt(v47, a1 + 148264);
              break;
            case 0xDD:
              sos = aj_read_dri(v47, a1 + 148264);
              break;
            default:
LABEL_100:
              aj_log_error("Reduce", "Asked to parse unknown marker", inited);
              v16 = 4;
              goto LABEL_26;
          }
        }

        else if (v44 == 192 || v44 == 194)
        {
          sos = aj_read_sof(v47, (a1 + 148264), v44);
        }

        else
        {
          if (v44 != 196)
          {
            goto LABEL_100;
          }

          sos = aj_read_dht(v47, a1 + 148264);
        }

        v16 = sos;
        if (sos)
        {
          goto LABEL_26;
        }

        rimg_segment = aj_check_huffman_tables(a1 + 148264);
        if (rimg_segment)
        {
          goto LABEL_22;
        }

        v32 = v45;
        goto LABEL_84;
      }

      if (v44 != 218)
      {
        goto LABEL_90;
      }

      aj_log_error("Reduce", "Unexpected marker in reduced file");
LABEL_94:
      v16 = 7;
      goto LABEL_26;
    }

    if (v44 == 196)
    {
      v23 = 1;
      goto LABEL_57;
    }

    if (v44 != 217)
    {
      if (v44 == 194)
      {
        aj_log_error("Reduce", "Unreduce of progressive images not supported");
        v16 = 3;
        goto LABEL_26;
      }

      goto LABEL_90;
    }

    rimg_segment = aj_ostream_write_bytes(v34, 65497, 2);
    if (rimg_segment)
    {
      goto LABEL_22;
    }

    rimg_segment = aj_ostream_flush_buffer(v34);
    if (rimg_segment)
    {
      goto LABEL_22;
    }

LABEL_85:
    v45 = 0;
    v43 = 0;
    v44 = 0;
    rimg_segment = aj_istream_peek_short(a1 + 152136, &v46);
    if (rimg_segment)
    {
      goto LABEL_22;
    }
  }

  if (v44 <= 162)
  {
    if (v44 == 161)
    {
      if (!v23 || !v24 || !v25 || !v33)
      {
        aj_log_error("Reduce", "File is missing SOF, DQT, DHT or RSOS. Cannot unpack.");
        goto LABEL_94;
      }

      rimg_segment = aj_check_components_and_decimation((a1 + 148264));
      if (rimg_segment)
      {
        goto LABEL_22;
      }

      *(a1 + 88) = (aj_istream_get_pos(a1 + 152136) - 2);
      rimg_segment = read_rimg_segment(a1 + 152136, (a1 + 64));
      if (rimg_segment)
      {
        goto LABEL_22;
      }

      rimg_segment = initialize_unreduce(a1, a1 + 152136);
      if (rimg_segment)
      {
        goto LABEL_22;
      }

      pos = aj_istream_get_pos(a1 + 152136);
      v31 = *(a1 + 68);
      rimg_segment = unpack_rimg_data(a1, a1 + 148224, a1 + 152136, v34);
      if (rimg_segment)
      {
        goto LABEL_22;
      }

      if (v31 + pos != aj_istream_get_pos(a1 + 152136))
      {
        aj_istream_get_pos(a1 + 152136);
        aj_log_error("Reduce", "RIMG size does not match amount of data read. Image is corrupt. (%d != %d)");
        goto LABEL_94;
      }

      v33 = 1;
      v23 = 1;
      v24 = 1;
      v25 = 1;
    }

    else
    {
      if (v44 != 162)
      {
        goto LABEL_90;
      }

      rimg_segment = read_rblob_segment(a1 + 152136, &v49);
      if (rimg_segment)
      {
        goto LABEL_22;
      }

      rimg_segment = copy_input_to_output(a1 + 152136, v34, SHIDWORD(v49));
      if (rimg_segment)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_85;
  }

  switch(v44)
  {
    case 0xA3:
      v26 = -38;
      LODWORD(v44) = 218;
      v25 = 1;
      goto LABEL_57;
    case 0xC0:
      v33 = 1;
      v26 = -64;
      goto LABEL_57;
    case 0xAF:
LABEL_97:
      v16 = 0;
      *a4 = v35;
      return v16;
  }

LABEL_90:
  *v21 = -1;
  v21[1] = v26;
  v27 = aj_istream_memcpy(a1 + 152136, v21 + 2, v45, &v43);
  if (!v27)
  {
    v32 = v45;
    if (v45 != v43)
    {
      goto LABEL_92;
    }

LABEL_84:
    rimg_segment = aj_ostream_write_buf(v34, v21, (v32 + 2));
    if (rimg_segment)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_95:
  v16 = v27;
LABEL_96:
  aj_log_error("Reduce", "Error %d while copying headers to memory", v27);
LABEL_26:
  aj_log_error("Reduce", "Unpacking of headers failed.");
  return v16;
}

uint64_t applejpeg_reduce_unpack_mem(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 && *(a2 + 8) >> 31)
  {
    aj_log_error("Reduce", "Destination buffer size may not be larger than %d", 0x7FFFFFFF);
    return 8;
  }

  else
  {

    return reduce_unpack(a1, 0, a2, a3);
  }
}

void applejpeg_reduce_close(void *a1)
{
  if (a1)
  {
    v2 = a1[17732];
    if (v2)
    {
      applejpeg_decode_destroy(v2);
      a1[17732] = 0;
    }

    else
    {
      v3 = 0;
      v4 = 1;
      do
      {
        v5 = 0;
        v6 = v4;
        v7 = &a1[v3 + 18962];
        do
        {
          if (!aj_huffman_decode_is_static_table(*(v7 + v5)))
          {
            v8 = *(v7 + v5);
            if (v8)
            {
              free(v8);
              *(v7 + v5) = 0;
            }
          }

          v5 += 16;
        }

        while (v5 != 64);
        v4 = 0;
        v3 = 1;
      }

      while ((v6 & 1) != 0);
    }

    v9 = 0;
    v10 = a1 + 20062;
    do
    {
      v11 = v10[v9];
      if (v11)
      {
        free(v11);
        v10[v9] = 0;
      }

      ++v9;
    }

    while (v9 < 4);

    free(a1);
  }
}

uint64_t parse_reduced_file(uint64_t a1, char *a2)
{
  __dst = 0;
  v14 = 0;
  result = aj_istream_memcpy(a1, &__dst, 2, &v14);
  if (result)
  {
    return result;
  }

  v5 = HIBYTE(__dst);
  HIBYTE(__dst) = __dst;
  LOBYTE(__dst) = v5;
  if (__dst != -96)
  {
    return 4;
  }

  pos = aj_istream_get_pos(a1);
  v14 = 0;
  result = aj_istream_memcpy(a1, a2 + 8, 2, &v14);
  if (result)
  {
    return result;
  }

  v7 = a2[9];
  a2[9] = a2[8];
  a2[8] = v7;
  if (*(a2 + 4) != 47)
  {
    return 11;
  }

  v14 = 0;
  result = aj_istream_memcpy(a1, a2 + 10, 1, &v14);
  if (!result)
  {
    if (a2[10] > 1u)
    {
      return 3;
    }

    v14 = 0;
    result = aj_istream_memcpy(a1, a2 + 12, 2, &v14);
    if (!result)
    {
      v8 = a2[13];
      a2[13] = a2[12];
      a2[12] = v8;
      result = read_variable_number_of_bytes_big_endian(a1, a2 + 14, 2u);
      if (!result)
      {
        if (*(a2 + 7) && *(a2 + 6))
        {
          result = read_variable_number_of_bytes_big_endian(a1, a2 + 16, 2u);
          if (result)
          {
            return result;
          }

          result = read_variable_number_of_bytes_big_endian(a1, a2 + 24, 8u);
          if (result)
          {
            return result;
          }

          result = read_variable_number_of_bytes_big_endian(a1, a2 + 32, 8u);
          if (result)
          {
            return result;
          }

          result = read_variable_number_of_bytes_big_endian(a1, a2 + 40, 2u);
          if (result)
          {
            return result;
          }

          result = read_variable_number_of_bytes_big_endian(a1, a2 + 44, 4u);
          if (result)
          {
            return result;
          }

          if (*(a2 + 11))
          {
            v9 = 0;
            for (i = a2 + 48; ; ++i)
            {
              v14 = 0;
              result = aj_istream_memcpy(a1, i, 1, &v14);
              if (result)
              {
                break;
              }

              if (*i)
              {
                aj_log_error("Reduce", "Unsupported capability flag: capability[%i] = 0x%02X", -v9, *i);
                return 3;
              }

              if (--v9 == -16)
              {
                v11 = pos + *(a2 + 4);
                if (v11 == aj_istream_get_pos(a1))
                {
                  return 0;
                }

                aj_log_error("Reduce", "Segment length did not match number of bytes read");
                return 11;
              }
            }

            return result;
          }

          aj_log_error("Reduce", "Illegal original size: %u");
        }

        else
        {
          v12 = *(a2 + 7);
          aj_log_error("Reduce", "Illegal image dimensions: %dx%d");
        }

        return 11;
      }
    }
  }

  return result;
}

uint64_t can_jpeg_be_reduced(uint64_t a1)
{
  if ((*(a1 + 120) | 2) != 3)
  {
    goto LABEL_8;
  }

  v1 = *(a1 + 136);
  if (*(a1 + 152) > 2 || v1 >= 3)
  {
    aj_log_error("Reduce", "Unsupported decimation (VF|HF): %d|%d", *(a1 + 152), v1);
    return 3;
  }

  if (!*(a1 + 204))
  {
    if (!*(a1 + 206))
    {
      return 1;
    }

    aj_log_error("Reduce", "Lossless not yet supported.");
  }

  else
  {
LABEL_8:
    aj_log_error("Reduce", "Image not yet supported.");
  }

  return 0;
}

uint64_t read_variable_number_of_bytes_big_endian(uint64_t a1, char *a2, unsigned int a3)
{
  v11 = 0;
  result = aj_istream_memcpy(a1, a2, a3, &v11);
  if (!result)
  {
    if (a3 >= 2)
    {
      v6 = a3 >> 1;
      v7 = a3 - 1;
      v8 = a2;
      do
      {
        v9 = *v8 ^ a2[v7];
        *v8 = v9;
        v10 = a2[v7] ^ v9;
        a2[v7] = v10;
        *v8++ ^= v10;
        --v7;
        --v6;
      }

      while (v6);
    }

    return 0;
  }

  return result;
}

uint64_t write_pre_rimg_headers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = aj_ostream_write_bytes(a3, 1380601927, 4);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, 65440, 2);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 8), 2);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 10), 1);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 12), 2);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 14), 2);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 16), 2);
  if (result)
  {
    return result;
  }

  result = write_variable_size_data(a3, *(a1 + 24), 8);
  if (result)
  {
    return result;
  }

  result = write_variable_size_data(a3, *(a1 + 32), 8);
  if (result)
  {
    return result;
  }

  result = aj_ostream_write_bytes(a3, *(a1 + 40), 2);
  if (result)
  {
    return result;
  }

  v7 = aj_ostream_write_bytes(a3, *(a1 + 44), 4);
  if (v7)
  {
    return v7;
  }

  for (i = 0; i != 16; ++i)
  {
    result = aj_ostream_write_bytes(a3, *(a1 + 48 + i), 1);
    if (result)
    {
      return result;
    }
  }

  v7 = aj_istream_move_to_position(a2, 2);
  if (v7)
  {
    return v7;
  }

  v10 = *(a1 + 160512);
  if (v10)
  {
    free(v10);
  }

  v11 = malloc_type_calloc(1uLL, 0x10001uLL, 0xAAB1A742uLL);
  *(a1 + 160512) = v11;
  if (!v11)
  {
    return 6;
  }

  v12 = v11;
  while (1)
  {
    v24 = 0;
    v7 = aj_istream_peek_short(a2, &v24);
    if (v7)
    {
      return v7;
    }

    if (v24 != 255)
    {
      break;
    }

    v13 = 0;
    v23 = 0;
    v22 = 0;
    v14 = HIBYTE(v24);
    v20 = v14;
    v21 = 0;
    if (v14 > 0xD8)
    {
      if (v14 == 218)
      {
        v13 = 1;
      }

      else if (v14 == 217)
      {
LABEL_43:
        aj_log_error("Reduce", "EOI or RST marker encountered while parsing headers (marker = 0x%02X", v14);
        return 11;
      }
    }

    else
    {
      if (v14 == 216)
      {
        pos = aj_istream_get_pos(a2);
        v16 = aj_istream_move_to_position(a2, (pos + 2));
        if (v16)
        {
          return v16;
        }

        v13 = 0;
        goto LABEL_40;
      }

      if (v14 - 208 < 8)
      {
        goto LABEL_43;
      }
    }

    if (!aj_get_segment_id_and_length(a2, &v23, &v22 + 1, &v20, &v22, 1))
    {
      v17 = v20;
      if (v20 == 218)
      {
        v17 = -93;
        v20 = 163;
      }

      *v12 = -1;
      v12[1] = v17;
      v18 = aj_istream_memcpy(a2, v12 + 2, v23, &v21);
      if (v18)
      {
        v19 = v18;
        goto LABEL_49;
      }

      if (v23 != v21)
      {
        v19 = 9;
LABEL_49:
        aj_log_error("Reduce", "Error %d while copying headers to memory", v18);
        return v19;
      }

      v16 = aj_ostream_write_buf(a3, v12, v23 + 2);
      if (v16)
      {
        return v16;
      }
    }

LABEL_40:
    result = 0;
    if (v13)
    {
      return result;
    }
  }

  aj_log_error("Reduce", "Expected 0xFF while parsing, got 0x%02X", v24);
  return 11;
}

uint64_t write_rimg_segment_and_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = aj_ostream_write_bytes(a4, 65441, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a4, *(a1 + 64), 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a4, *(a1 + 68), 4);
      if (!result)
      {
        result = aj_ostream_write_bytes(a4, *(a1 + 72), 1);
        if (!result)
        {
          result = aj_ostream_write_bytes(a4, *(a1 + 73), 1);
          if (!result)
          {
            result = aj_ostream_write_bytes(a4, *(a1 + 74), 1);
            if (!result)
            {
              v9 = *(a4 + 16);
              result = aj_istream_move_to_position(*(a2 + 11248), *(*a3 + 3420));
              if (!result)
              {
                result = (*(a1 + 141872))(a1 + 134936);
                if (!result)
                {
                  result = aj_pack_all(a3, (a1 + 104), a2 + 11248);
                  if (!result)
                  {
                    result = (*(a1 + 141936))(a1 + 134936);
                    if (!result)
                    {
                      *(a1 + 68) = *(a4 + 16) - v9;
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

  return result;
}

uint64_t write_variable_size_data(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (a3 >= 5)
  {
    result = aj_ostream_write_bytes(a1, SHIDWORD(a2), 4);
    if (result)
    {
      return result;
    }

    v3 -= 4;
  }

  return aj_ostream_write_bytes(a1, v4, v3);
}

uint64_t write_rblob_segment_and_data(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 7;
  *(a1 + 1) = 0;
  *(a1 + 8) = 0;
  result = aj_ostream_write_bytes(a3, 65442, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a3, *a1, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a3, *(a1 + 1), 4);
      if (!result)
      {
        result = aj_ostream_write_bytes(a3, *(a1 + 8), 1);
        if (!result)
        {
          v9 = *(a3 + 16);
          result = copy_input_to_output(a2, a3, a4);
          if (!result)
          {
            *(a1 + 1) = *(a3 + 16) - v9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t finalize_rjpeg_header(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v7 = v4;
  result = overwrite_uint32(a2, &v7, 0x21u, a1[11]);
  if (!result)
  {
    result = overwrite_uint32(a2, &v7, a1[22] + 4, a1[17]);
    if (!result)
    {
      v6 = a1[20];
      if (!v6 || (result = overwrite_uint32(a2, &v7, a1[24] + 4, v6), !result))
      {
        (*(a2 + 56))(v4 - v7, *(a2 + 32));
        return 0;
      }
    }
  }

  return result;
}

uint64_t red_mem_write_callback(void *__src, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    return 1;
  }

  v5 = a2;
  memcpy(*a3, __src, a2);
  result = 0;
  v6 = *(a3 + 8) - v5;
  *a3 += v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t red_mem_rewind_callback(uint64_t a1)
{
  v1 = *(a1 + 24);
  *a1 = *(a1 + 16);
  *(a1 + 8) = v1;
  return 0;
}

uint64_t red_mem_skip_callback(int a1, void *a2)
{
  v2 = a2[1] - a1;
  *a2 += a1;
  a2[1] = v2;
  return 0;
}

uint64_t copy_input_to_output(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v9 = 0;
      v6 = v3 >= 1024 ? 1024 : v3;
      result = aj_istream_memcpy(a1, __src, v6, &v9);
      if (result)
      {
        break;
      }

      result = aj_ostream_write_buf(a2, __src, v9);
      if (result)
      {
        break;
      }

      v3 -= v9;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t overwrite_uint32(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  v10 = bswap32(a4);
  v7 = *a2;
  if (*a2 > a3)
  {
    (*(a1 + 48))(*(a1 + 32));
    v7 = 0;
    *a2 = 0;
  }

  v8 = a3 - v7;
  (*(a1 + 56))(v8, *(a1 + 32));
  *a2 += v8;
  result = (*(a1 + 40))(&v10, 4, *(a1 + 32));
  if (!result)
  {
    *a2 += 4;
  }

  return result;
}

uint64_t read_rimg_segment(uint64_t a1, char *a2)
{
  pos = aj_istream_get_pos(a1);
  v16 = 0;
  result = aj_istream_memcpy(a1, a2, 2, &v16);
  if (result)
  {
    return result;
  }

  v6 = a2[1];
  a2[1] = *a2;
  *a2 = v6;
  if (*a2 != 9)
  {
    v13 = *a2;
    aj_log_error("Reduce", "Bad/unsupported RIMG segment length: %u");
    return 3;
  }

  v7 = a2 + 4;
  v16 = 0;
  result = aj_istream_memcpy(a1, a2 + 4, 4, &v16);
  if (result)
  {
    return result;
  }

  v8 = 0x300000000;
  for (i = 4; i != 6; ++i)
  {
    v10 = a2[i] ^ *(v7 + HIDWORD(v8));
    a2[i] = v10;
    v11 = *(v7 + HIDWORD(v8)) ^ v10;
    *(v7 + HIDWORD(v8)) = v11;
    a2[i] ^= v11;
    v8 -= 0x100000000;
  }

  if (!*v7)
  {
    aj_log_error("Reduce", "Bad RIMG data size: %u");
    return 11;
  }

  v16 = 0;
  result = aj_istream_memcpy(a1, a2 + 8, 1, &v16);
  if (result)
  {
    return result;
  }

  if (a2[8] != 1)
  {
    v14 = a2[8];
    aj_log_error("Reduce", "Unsupported number of scans: %d");
    return 3;
  }

  v16 = 0;
  result = aj_istream_memcpy(a1, a2 + 9, 1, &v16);
  if (!result)
  {
    v16 = 0;
    result = aj_istream_memcpy(a1, a2 + 10, 1, &v16);
    if (!result)
    {
      if ((a2[10] & 0xFE) == 2)
      {
        v12 = pos + *a2;
        if (v12 == aj_istream_get_pos(a1))
        {
          return 0;
        }

        aj_log_error("Reduce", "Segment length did not match number of bytes read");
        return 11;
      }

      v15 = a2[10];
      aj_log_error("Reduce", "RIMG compression scheme not supported: %u");
      return 3;
    }
  }

  return result;
}

uint64_t initialize_unreduce(uint64_t a1, uint64_t a2)
{
  *(a1 + 134976) = a1 + 152136;
  v4 = *(a1 + 74);
  if (v4 == 3)
  {
    aj_select_semistatic_coder((a1 + 141864));
  }

  else
  {
    if (v4 != 2)
    {
      return 5;
    }

    aj_select_adaptive_coder((a1 + 141864));
  }

  return aj_reduce_init_unpack(a1 + 160488, a1 + 104, (a1 + 141952), (a1 + 151688), (a1 + 148224), (a1 + 148264), a2, a1 + 141864);
}

uint64_t unpack_rimg_data(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  result = aj_istream_move_to_position(a3, (*(a1 + 88) + 11));
  if (!result)
  {
    result = (*(a1 + 141880))(a1 + 134936);
    if (!result)
    {
      result = aj_unpack_all((a1 + 104), a2, a4);
      if (!result)
      {
        v8 = *(a1 + 141944);

        return v8(a1 + 134936);
      }
    }
  }

  return result;
}

uint64_t read_rblob_segment(uint64_t a1, char *a2)
{
  v12 = 0;
  result = aj_istream_memcpy(a1, a2, 2, &v12);
  if (result)
  {
    return result;
  }

  v5 = a2[1];
  a2[1] = *a2;
  *a2 = v5;
  if (*a2 != 7)
  {
    v11 = *a2;
    aj_log_error("Reduce", "Bad RBLOB segment length: %u");
    return 11;
  }

  v6 = a2 + 4;
  v13 = 0;
  result = aj_istream_memcpy(a1, a2 + 4, 4, &v13);
  if (result)
  {
    return result;
  }

  v7 = 0;
  v8 = 0x300000000;
  do
  {
    v9 = *(v6 + v7) ^ *(v6 + HIDWORD(v8));
    *(v6 + v7) = v9;
    v10 = *(v6 + HIDWORD(v8)) ^ v9;
    *(v6 + HIDWORD(v8)) = v10;
    *(v6 + v7++) ^= v10;
    v8 -= 0x100000000;
  }

  while (v7 != 2);
  if (!*v6)
  {
    aj_log_error("Reduce", "Bad RBLOB data size: %u");
    return 11;
  }

  v14 = 0;
  result = aj_istream_memcpy(a1, a2 + 8, 1, &v14);
  if (!result)
  {
    if (a2[8])
    {
      aj_log_error("Reduce", "RBLOB compression method unsupported: %u", a2[8]);
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_RGB888_YUV440(uint64_t result, uint64_t *a2, void *a3, signed int a4, int a5, double a6, int64x2_t a7, int64x2_t a8, int64x2_t a9)
{
  v11 = *a3;
  v10 = a3[1];
  if (result == 1)
  {
    aj_RGB888_YUV444(a6, a7, a8, a9, result, a2, a3, a4, a5);

    return memcpy(v10, v11, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    if (a4 >= 1)
    {
      v14 = *a2;
      v15 = a2[1];
      LODWORD(result) = a4;
      do
      {
        v16 = *v14;
        v17 = v14[1];
        v18 = v14[2];
        *v11++ = (((1254144 * v16 + 0x4000) >> 15) + ((2462080 * v17 + 0x4000) >> 15) + ((478208 * v18 + 0x4000) >> 15) + 64) >> 7;
        v19 = *v15;
        v20 = v15[1];
        v21 = v15[2];
        v22 = (v18 << 6) - (((707584 * v16 + 0x4000) >> 15) + ((1389568 * v17 + 0x4000) >> 15)) + 16448;
        v23 = (v21 << 6) - (((707584 * v19 + 0x4000) >> 15) + ((1389568 * v20 + 0x4000) >> 15)) + 16448;
        *v10++ = (((1254144 * v19 + 0x4000) >> 15) + ((2462080 * v20 + 0x4000) >> 15) + ((478208 * v21 + 0x4000) >> 15) + 64) >> 7;
        if ((v23 >> 7) + (v22 >> 7) >= 0x1FF)
        {
          LOBYTE(v24) = -1;
        }

        else
        {
          v24 = ((v23 >> 7) + (v22 >> 7) + 1) >> 1;
        }

        v25 = (v16 << 6) - (((1756160 * v17 + 0x4000) >> 15) + ((340992 * v18 + 0x4000) >> 15)) + 16448;
        v26 = (v19 << 6) - (((1756160 * v20 + 0x4000) >> 15) + ((340992 * v21 + 0x4000) >> 15)) + 16448;
        if ((v26 >> 7) + (v25 >> 7) >= 0x1FF)
        {
          LOBYTE(v27) = -1;
        }

        else
        {
          v27 = ((v26 >> 7) + (v25 >> 7) + 1) >> 1;
        }

        *v13++ = v24;
        *v12++ = v27;
        v14 += 3;
        v15 += 3;
        result = (result - 1);
      }

      while (result);
    }

    v28 = (a5 - a4);
    if (v28 >= 1)
    {
      memset(v11, *(v11 - 1), v28);
      memset(v10, *(v10 - 1), v28);
      memset(v13, *(v13 - 1), v28);
      v29 = *(v12 - 1);

      return memset(v12, v29, v28);
    }
  }

  return result;
}

_BYTE *aj_RGB888_to_gray(uint64_t a1, unsigned __int8 **a2, _BYTE **a3, int a4, int a5)
{
  result = *a3;
  if (a4 >= 1)
  {
    v6 = *a2;
    v7 = a4;
    do
    {
      *result++ = (((1254144 * *v6 + 0x4000) >> 15) + ((2462080 * v6[1] + 0x4000) >> 15) + ((478208 * v6[2] + 0x4000) >> 15) + 64) >> 7;
      v6 += 3;
      --v7;
    }

    while (v7);
  }

  if (a5 > a4)
  {
    return memset(result, *(result - 1), a5 - a4);
  }

  return result;
}

_BYTE *aj_RGBA8888_YUV440(uint64_t a1, uint64_t *a2, const void **a3, unsigned int a4, int a5, double a6, int64x2_t a7, int64x2_t a8, int64x2_t a9)
{
  if (a1 == 1)
  {
    aj_RGBA8888_YUV444(a6, a7, a8, a9, a1, a2, a3, a4, a5);
    v12 = *a3;
    v11 = a3[1];

    return memcpy(v11, v12, a5);
  }

  else
  {

    return XXXA8888_YUV440(a2, a3, a4, a5, 0);
  }
}

_BYTE *XXXA8888_YUV440(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  result = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  if (a3 >= 1)
  {
    v12 = a1;
    v10 = *a1;
    v11 = v12[1];
    v13 = a3;
    do
    {
      v14 = v10 + 2;
      if (a5)
      {
        v15 = v10 + 2;
      }

      else
      {
        v15 = v10;
      }

      if (a5)
      {
        v14 = v10;
      }

      v16 = *v14;
      v17 = v10[1];
      v18 = *v15;
      if (a5)
      {
        v19 = v11 + 2;
      }

      else
      {
        v19 = v11;
      }

      if (a5)
      {
        v20 = v11;
      }

      else
      {
        v20 = v11 + 2;
      }

      *result++ = (((478208 * v16 + 0x4000) >> 15) + ((2462080 * v17 + 0x4000) >> 15) + ((1254144 * v18 + 0x4000) >> 15) + 64) >> 7;
      v21 = (v16 << 6) - (((1389568 * v17 + 0x4000) >> 15) + ((707584 * v18 + 0x4000) >> 15)) + 16448;
      v22 = *v19;
      v23 = v11[1];
      v24 = *v20;
      v25 = (v24 << 6) - (((707584 * v22 + 0x4000) >> 15) + ((1389568 * v23 + 0x4000) >> 15)) + 16448;
      *v7++ = (((1254144 * v22 + 0x4000) >> 15) + ((2462080 * v23 + 0x4000) >> 15) + ((478208 * v24 + 0x4000) >> 15) + 64) >> 7;
      if ((v25 >> 7) + (v21 >> 7) >= 0x1FF)
      {
        LOBYTE(v26) = -1;
      }

      else
      {
        v26 = ((v25 >> 7) + (v21 >> 7) + 1) >> 1;
      }

      v27 = (v18 << 6) - (((340992 * v16 + 0x4000) >> 15) + ((1756160 * v17 + 0x4000) >> 15)) + 16448;
      v28 = (v22 << 6) - (((1756160 * v23 + 0x4000) >> 15) + ((340992 * v24 + 0x4000) >> 15)) + 16448;
      if ((v28 >> 7) + (v27 >> 7) >= 0x1FF)
      {
        LOBYTE(v29) = -1;
      }

      else
      {
        v29 = ((v28 >> 7) + (v27 >> 7) + 1) >> 1;
      }

      *v8++ = v26;
      *v9++ = v29;
      v10 += 4;
      v11 += 4;
      --v13;
    }

    while (v13);
  }

  v30 = (a4 - a3);
  if (v30 >= 1)
  {
    memset(result, *(result - 1), (a4 - a3));
    memset(v7, *(v7 - 1), v30);
    memset(v8, *(v8 - 1), v30);
    v31 = *(v9 - 1);

    return memset(v9, v31, v30);
  }

  return result;
}

_BYTE *XXXA8888_to_gray(unsigned __int8 **a1, _BYTE **a2, int a3, int a4, int a5)
{
  result = *a2;
  if (a3 >= 1)
  {
    v7 = *a1;
    v8 = a3;
    do
    {
      v9 = v7 + 2;
      if (a5)
      {
        v10 = v7 + 2;
      }

      else
      {
        v10 = v7;
      }

      if (a5)
      {
        v9 = v7;
      }

      *result++ = (((1254144 * *v10 + 0x4000) >> 15) + ((2462080 * v7[1] + 0x4000) >> 15) + ((478208 * *v9 + 0x4000) >> 15) + 64) >> 7;
      v7 += 4;
      --v8;
    }

    while (v8);
  }

  if (a4 > a3)
  {
    return memset(result, *(result - 1), a4 - a3);
  }

  return result;
}

_BYTE *aj_BGRA8888_YUV440(uint64_t a1, uint64_t *a2, const void **a3, unsigned int a4, int a5, double a6, int64x2_t a7, int64x2_t a8, int64x2_t a9)
{
  if (a1 == 1)
  {
    aj_BGRA8888_YUV444(a6, a7, a8, a9, a1, a2, a3, a4, a5);
    v12 = *a3;
    v11 = a3[1];

    return memcpy(v11, v12, a5);
  }

  else
  {

    return XXXA8888_YUV440(a2, a3, a4, a5, 1);
  }
}

_BYTE *aj_RGB565_YUV444(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4, int a5)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  if (a4 >= 1)
  {
    v8 = *a2;
    v9 = a4;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = (v10 >> 5) & 0xFFFFFFC7 | (8 * (v11 & 7));
      v13 = (v11 << 7) & 0x7C00;
      *result++ = (((10033152 * (v10 & 0x1F) + 0x4000) >> 15) + ((3736 * v13 + 0x4000) >> 15) + ((9848320 * v12 + 0x4000) >> 15) + 64) >> 7;
      *v6++ = (((v13 >> 1) | 0x40404040) - (((5660672 * (v10 & 0x1F) + 0x4000) >> 15) + ((5558272 * v12 + 0x4000) >> 15))) >> 7;
      *v7++ = (((v10 << 9) | 0x40404040) - (((2664 * v13 + 0x4000) >> 15) + ((7024640 * v12 + 0x4000) >> 15))) >> 7;
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  v14 = a5 - a4;
  if (a5 > a4)
  {
    v15 = v14;
    memset(result, *(result - 1), v14);
    memset(v6, *(v6 - 1), v15);
    v16 = *(v7 - 1);

    return memset(v7, v16, v15);
  }

  return result;
}

_BYTE *aj_RGB565_YUV422(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4, int a5)
{
  v5 = *a2;
  result = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = a4 - 1;
  if (a4 < 2)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a4 & 0x7FFFFFFE;
    do
    {
      v12 = *v5;
      v13 = (v12 & 0x1F) << 10;
      v14 = v5[1];
      v15 = (v12 >> 5) & 0xFFFFFFC7 | (8 * (v14 & 7));
      v16 = (v14 << 7) & 0x7C00;
      v17 = (((v13 >> 1) | 0x40404040) - (((2664 * v16 + 0x4000) >> 15) + ((7024640 * v15 + 0x4000) >> 15))) >> 7;
      v18 = (((v16 >> 1) | 0x40404040) - (((5528 * v13 + 0x4000) >> 15) + ((5558272 * v15 + 0x4000) >> 15))) >> 7;
      *result = (((9798 * v13 + 0x4000) >> 15) + ((3736 * v16 + 0x4000) >> 15) + ((9848320 * v15 + 0x4000) >> 15) + 64) >> 7;
      v19 = v5[2];
      v20 = (v19 & 0x1F) << 10;
      v21 = v5[3];
      v22 = (v19 >> 5) & 0xFFFFFFC7 | (8 * (v21 & 7));
      v5 += 4;
      v23 = (v21 << 7) & 0x7C00;
      v24 = (v17 + ((((v20 >> 1) | 0x40404040) - (((2664 * v23 + 0x4000) >> 15) + ((7024640 * v22 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      result[1] = (((9798 * v20 + 0x4000) >> 15) + ((3736 * v23 + 0x4000) >> 15) + ((9848320 * v22 + 0x4000) >> 15) + 64) >> 7;
      *v7++ = (v18 + ((((v23 >> 1) | 0x40404040) - (((5528 * v20 + 0x4000) >> 15) + ((5558272 * v22 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      v25 = result + 2;
      *v8++ = v24;
      v10 += 2;
      result += 2;
    }

    while (v10 < v9);
    result = v25;
  }

  if (v11 == v9)
  {
    v26 = *v5;
    v27 = v5[1];
    v28 = (v26 >> 5) & 0xFFFFFFC7 | (8 * (v27 & 7));
    v29 = (v27 << 7) & 0x7C00;
    v30 = (((10033152 * (v26 & 0x1F) + 0x4000) >> 15) + ((3736 * v29 + 0x4000) >> 15) + ((9848320 * v28 + 0x4000) >> 15) + 64) >> 7;
    *result = v30;
    result[1] = v30;
    result += 2;
    *v7++ = (((v29 >> 1) | 0x40404040) - (((5660672 * (v26 & 0x1F) + 0x4000) >> 15) + ((5558272 * v28 + 0x4000) >> 15))) >> 7;
    *v8++ = (((v26 << 9) | 0x40404040) - (((2664 * v29 + 0x4000) >> 15) + ((7024640 * v28 + 0x4000) >> 15))) >> 7;
    v11 = a4 + 1;
  }

  v31 = a5 - v11;
  if (a5 > v11)
  {
    memset(result, *(result - 1), v31);
    v32 = v31 >> 1;
    memset(v7, *(v7 - 1), v32);
    v33 = *(v8 - 1);

    return memset(v8, v33, v32);
  }

  return result;
}

uint64_t aj_RGB565_YUV440(uint64_t result, uint64_t a2, void *a3, int a4, int a5)
{
  v7 = *a3;
  v6 = a3[1];
  if (result == 1)
  {
    aj_RGB565_YUV444(result, a2, a3, a4, a5);

    return memcpy(v6, v7, a5);
  }

  else
  {
    v8 = a3[4];
    v9 = a3[2];
    if (a4 >= 1)
    {
      v10 = *a2;
      v11 = *(a2 + 8);
      v12 = a4;
      do
      {
        v13 = *v10;
        v14 = (v13 & 0x1F) << 10;
        v15 = v10[1];
        v16 = (v13 >> 5) & 0xFFFFFFC7 | (8 * (v15 & 7));
        v17 = (v15 << 7) & 0x7C00;
        *v7++ = (((9798 * v14 + 0x4000) >> 15) + ((3736 * v17 + 0x4000) >> 15) + ((9848320 * v16 + 0x4000) >> 15) + 64) >> 7;
        v18 = *v11;
        v19 = (v18 & 0x1F) << 10;
        v20 = v11[1];
        v21 = (v18 >> 5) & 0xFFFFFFC7 | (8 * (v20 & 7));
        v22 = (v20 << 7) & 0x7C00;
        *v6++ = (((9798 * v19 + 0x4000) >> 15) + ((3736 * v22 + 0x4000) >> 15) + ((9848320 * v21 + 0x4000) >> 15) + 64) >> 7;
        *v9++ = (((((v17 >> 1) | 0x40404040) - (((5528 * v14 + 0x4000) >> 15) + ((5558272 * v16 + 0x4000) >> 15))) >> 7) + ((((v22 >> 1) | 0x40404040) - (((5528 * v19 + 0x4000) >> 15) + ((5558272 * v21 + 0x4000) >> 15))) >> 7) + 1) >> 1;
        result = (((((v14 >> 1) | 0x40404040) - (((2664 * v17 + 0x4000) >> 15) + ((7024640 * v16 + 0x4000) >> 15))) >> 7) + ((((v19 >> 1) | 0x40404040) - (((2664 * v22 + 0x4000) >> 15) + ((7024640 * v21 + 0x4000) >> 15))) >> 7) + 1) >> 1;
        *v8++ = result;
        v10 += 2;
        v11 += 2;
        --v12;
      }

      while (v12);
    }

    v23 = (a5 - a4);
    if (v23 >= 1)
    {
      memset(v7, *(v7 - 1), v23);
      memset(v6, *(v6 - 1), v23);
      memset(v9, *(v9 - 1), v23);
      v24 = *(v8 - 1);

      return memset(v8, v24, v23);
    }
  }

  return result;
}

unsigned __int8 *aj_RGB565_YUV420(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, int a5)
{
  v7 = *a3;
  v6 = a3[1];
  if (a1 == 1)
  {
    aj_RGB565_YUV422(a1, a2, a3, a4, a5);

    return memcpy(v6, v7, a5);
  }

  else
  {
    v9 = a3[4];
    v10 = a3[2];
    v11 = a4 - 1;
    result = *a2;
    v12 = a2[1];
    if (a4 < 2)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = a4 & 0x7FFFFFFE;
      v15 = vdupq_n_s32(0x6B3000u);
      v16 = vdup_n_s16(0xA68u);
      v17 = vdupq_n_s32(0x4040u);
      v18 = vdup_n_s16(0x1598u);
      v19 = vdupq_n_s32(0x54D000u);
      do
      {
        v20 = *result;
        v21 = result[1];
        v22 = (v20 & 0x1F) << 10;
        v23 = (v20 >> 5) & 0xFFFFFFC7 | (8 * (v21 & 7));
        v24 = (v21 << 7) & 0x7C00;
        v25 = result + 4;
        *v7 = (((9798 * v22 + 0x4000) >> 15) + ((3736 * v24 + 0x4000) >> 15) + ((9848320 * v23 + 0x4000) >> 15) + 64) >> 7;
        v26 = result[2];
        v27 = (v26 & 0x1F) << 10;
        v28 = result[3];
        v29 = (v26 >> 5) & 0xFFFFFFC7 | (8 * (v28 & 7));
        v30 = (v28 << 7) & 0x7C00;
        v31 = v7 + 2;
        v7[1] = (((9798 * v27 + 0x4000) >> 15) + ((3736 * v30 + 0x4000) >> 15) + ((9848320 * v29 + 0x4000) >> 15) + 64) >> 7;
        v32 = *v12;
        v33 = (v32 & 0x1F) << 10;
        v34 = v12[1];
        v35 = (v32 >> 5) & 0xFFFFFFC7 | (8 * (v34 & 7));
        v36 = (v34 << 7) & 0x7C00;
        *v6 = (((9798 * v33 + 0x4000) >> 15) + ((3736 * v36 + 0x4000) >> 15) + ((9848320 * v35 + 0x4000) >> 15) + 64) >> 7;
        v37 = v12[2];
        v38.i64[0] = __PAIR64__(v27, v22);
        v38.i32[2] = v33;
        v38.i32[3] = (v37 & 0x1F) << 10;
        v39 = v12[3];
        v40.i64[0] = __PAIR64__(v29, v23);
        v40.i32[2] = v35;
        v40.i32[3] = (v37 >> 5) & 0xFFFFFFC7 | (8 * (v39 & 7));
        v41.i64[0] = 0x400000004000;
        v41.i64[1] = 0x400000004000;
        v42.i64[0] = __PAIR64__(v30, v24);
        v43 = vmovn_s32(v38);
        v42.i32[2] = v36;
        v42.i32[3] = (v39 << 7) & 0x7C00;
        v44.i64[0] = 0x400000004000;
        v44.i64[1] = 0x400000004000;
        v45 = vsraq_n_u32(v17, v38, 1uLL);
        v46 = vsraq_n_u32(vshrq_n_u32(vmlal_u16(v44, vmovn_s32(v42), v16), 0xFuLL), vmlaq_s32(v41, v40, v15), 0xFuLL);
        v41.i64[0] = 0x400000004000;
        v41.i64[1] = 0x400000004000;
        v47 = vshrq_n_u32(vmlal_u16(v41, v43, v18), 0xFuLL);
        v48.i64[0] = 0x400000004000;
        v48.i64[1] = 0x400000004000;
        v49 = v12 + 4;
        v6[1] = (((10033152 * (v37 & 0x1F) + 0x4000) >> 15) + ((3736 * v42.i32[3] + 0x4000) >> 15) + ((9848320 * v40.i32[3] + 0x4000) >> 15) + 64) >> 7;
        *v10++ = (vaddvq_s32(vshrq_n_u32(vsubq_s32(vsraq_n_u32(v17, v42, 1uLL), vsraq_n_u32(v47, vmlaq_s32(v48, v40, v19), 0xFuLL)), 7uLL)) + 2) >> 2;
        *v9++ = (vaddvq_s32(vshrq_n_u32(vsubq_s32(v45, v46), 7uLL)) + 2) >> 2;
        v50 = v6 + 2;
        v13 += 2;
        result = v25;
        v12 += 4;
        v7 = v31;
        v6 += 2;
      }

      while (v13 < v11);
      v6 = v50;
      v7 = v31;
      v12 = v49;
      result = v25;
    }

    if (v14 == v11)
    {
      v51 = *result;
      v52 = (v51 & 0x1F) << 10;
      v53 = result[1];
      v54 = (v51 >> 5) & 0xFFFFFFC7 | (8 * (v53 & 7));
      v55 = (v53 << 7) & 0x7C00;
      v56 = (((9798 * v52 + 0x4000) >> 15) + ((3736 * v55 + 0x4000) >> 15) + ((9848320 * v54 + 0x4000) >> 15) + 64) >> 7;
      *v7 = v56;
      v7[1] = v56;
      v7 += 2;
      v57 = *v12;
      v58 = (v57 & 0x1F) << 10;
      v59 = v12[1];
      v60 = (v57 >> 5) & 0xFFFFFFC7 | (8 * (v59 & 7));
      v61 = (v59 << 7) & 0x7C00;
      result = (((v58 >> 1) | 0x40404040) - (((2664 * v61 + 0x4000) >> 15) + ((7024640 * v60 + 0x4000) >> 15)));
      v62 = (((9798 * v58 + 0x4000) >> 15) + ((3736 * v61 + 0x4000) >> 15) + ((9848320 * v60 + 0x4000) >> 15) + 64) >> 7;
      *v6 = v62;
      v6[1] = v62;
      v6 += 2;
      *v10++ = (((((v55 >> 1) | 0x40404040) - (((5528 * v52 + 0x4000) >> 15) + ((5558272 * v54 + 0x4000) >> 15))) >> 7) + ((((v61 >> 1) | 0x40404040) - (((5528 * v58 + 0x4000) >> 15) + ((5558272 * v60 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      *v9++ = (((((v52 >> 1) | 0x40404040) - (((2664 * v55 + 0x4000) >> 15) + ((7024640 * v54 + 0x4000) >> 15))) >> 7) + (result >> 7) + 1) >> 1;
      v14 = a4 + 1;
    }

    v63 = a5 - v14;
    if (a5 > v14)
    {
      memset(v7, *(v7 - 1), v63);
      memset(v6, *(v6 - 1), v63);
      memset(v10, *(v10 - 1), v63 >> 1);
      v64 = *(v9 - 1);

      return memset(v9, v64, v63 >> 1);
    }
  }

  return result;
}

_BYTE *aj_RGB565_to_gray(uint64_t a1, unsigned __int8 **a2, _BYTE **a3, int a4, int a5)
{
  result = *a3;
  if (a4 >= 1)
  {
    v6 = *a2;
    v7 = a4;
    do
    {
      *result++ = (((10033152 * (*v6 & 0x1Fu) + 0x4000) >> 15) + ((3736 * ((v6[1] << 7) & 0x7C00u) + 0x4000) >> 15) + ((9848320 * ((*v6 >> 5) & 0xFFFFFFC7 | (8 * (v6[1] & 7))) + 0x4000) >> 15) + 64) >> 7;
      v6 += 2;
      --v7;
    }

    while (v7);
  }

  if (a5 > a4)
  {
    return memset(result, *(result - 1), a5 - a4);
  }

  return result;
}

_BYTE *aj_BGR565_YUV444(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4, int a5)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  if (a4 >= 1)
  {
    v8 = *a2;
    v9 = a4;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = (v10 >> 5) & 0xFFFFFFC7 | (8 * (v11 & 7));
      v13 = (v11 << 7) & 0x7C00;
      *result++ = (((3825664 * (v10 & 0x1F) + 0x4000) >> 15) + ((9798 * v13 + 0x4000) >> 15) + ((9848320 * v12 + 0x4000) >> 15) + 64) >> 7;
      *v6++ = (((v10 << 9) | 0x40404040) - (((5528 * v13 + 0x4000) >> 15) + ((5558272 * v12 + 0x4000) >> 15))) >> 7;
      *v7++ = (((v13 >> 1) | 0x40404040) - (((2727936 * (v10 & 0x1F) + 0x4000) >> 15) + ((7024640 * v12 + 0x4000) >> 15))) >> 7;
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  v14 = a5 - a4;
  if (a5 > a4)
  {
    v15 = v14;
    memset(result, *(result - 1), v14);
    memset(v6, *(v6 - 1), v15);
    v16 = *(v7 - 1);

    return memset(v7, v16, v15);
  }

  return result;
}

_BYTE *aj_BGR565_YUV422(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4, int a5)
{
  v5 = *a2;
  result = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = a4 - 1;
  if (a4 < 2)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a4 & 0x7FFFFFFE;
    do
    {
      v12 = v5[1];
      v13 = (v12 << 7) & 0x7C00;
      v14 = *v5;
      v15 = (v14 >> 5) & 0xFFFFFFC7 | (8 * (v12 & 7));
      v16 = (v14 & 0x1F) << 10;
      v17 = (((v13 >> 1) | 0x40404040) - (((2664 * v16 + 0x4000) >> 15) + ((7024640 * v15 + 0x4000) >> 15))) >> 7;
      v18 = (((v16 >> 1) | 0x40404040) - (((5528 * v13 + 0x4000) >> 15) + ((5558272 * v15 + 0x4000) >> 15))) >> 7;
      *result = (((9798 * v13 + 0x4000) >> 15) + ((9848320 * v15 + 0x4000) >> 15) + ((3736 * v16 + 0x4000) >> 15) + 64) >> 7;
      v19 = v5[2];
      v20 = (v19 & 0x1F) << 10;
      v21 = v5[3];
      v22 = (v19 >> 5) & 0xFFFFFFC7 | (8 * (v21 & 7));
      v5 += 4;
      v23 = (v21 << 7) & 0x7C00;
      result[1] = (((3736 * v20 + 0x4000) >> 15) + ((9798 * v23 + 0x4000) >> 15) + ((9848320 * v22 + 0x4000) >> 15) + 64) >> 7;
      *v7++ = (v18 + ((((v20 >> 1) | 0x40404040) - (((5528 * v23 + 0x4000) >> 15) + ((5558272 * v22 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      v24 = result + 2;
      *v8++ = (v17 + ((((v23 >> 1) | 0x40404040) - (((2664 * v20 + 0x4000) >> 15) + ((7024640 * v22 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      v10 += 2;
      result += 2;
    }

    while (v10 < v9);
    result = v24;
  }

  if (v11 == v9)
  {
    v25 = *v5;
    v26 = v5[1];
    v27 = (v25 >> 5) & 0xFFFFFFC7 | (8 * (v26 & 7));
    v28 = (v26 << 7) & 0x7C00;
    v29 = (((3825664 * (v25 & 0x1F) + 0x4000) >> 15) + ((9798 * v28 + 0x4000) >> 15) + ((9848320 * v27 + 0x4000) >> 15) + 64) >> 7;
    *result = v29;
    result[1] = v29;
    result += 2;
    *v7++ = (((v25 << 9) | 0x40404040) - (((5528 * v28 + 0x4000) >> 15) + ((5558272 * v27 + 0x4000) >> 15))) >> 7;
    *v8++ = (((v28 >> 1) | 0x40404040) - (((2727936 * (v25 & 0x1F) + 0x4000) >> 15) + ((7024640 * v27 + 0x4000) >> 15))) >> 7;
    v11 = a4 + 1;
  }

  v30 = a5 - v11;
  if (a5 > v11)
  {
    memset(result, *(result - 1), v30);
    v31 = v30 >> 1;
    memset(v7, *(v7 - 1), v31);
    v32 = *(v8 - 1);

    return memset(v8, v32, v31);
  }

  return result;
}

uint64_t aj_BGR565_YUV440(uint64_t result, uint64_t a2, void *a3, int a4, int a5)
{
  v7 = *a3;
  v6 = a3[1];
  if (result == 1)
  {
    aj_BGR565_YUV444(result, a2, a3, a4, a5);

    return memcpy(v6, v7, a5);
  }

  else
  {
    v8 = a3[4];
    v9 = a3[2];
    if (a4 >= 1)
    {
      v10 = (*a2 + 1);
      v11 = (*(a2 + 8) + 1);
      v12 = a4;
      do
      {
        v13 = *v10;
        v14 = (v13 << 7) & 0x7C00;
        v15 = *(v10 - 1);
        v16 = (v15 >> 5) & 0xFFFFFFC7 | (8 * (v13 & 7));
        *v7++ = (((9798 * v14 + 0x4000) >> 15) + ((9848320 * v16 + 0x4000) >> 15) + ((3825664 * (v15 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
        v17 = *v11;
        v18 = (v17 << 7) & 0x7C00;
        v19 = *(v11 - 1);
        v20 = (v19 >> 5) & 0xFFFFFFC7 | (8 * (v17 & 7));
        *v6++ = (((9798 * v18 + 0x4000) >> 15) + ((9848320 * v20 + 0x4000) >> 15) + ((3825664 * (v19 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
        *v9++ = ((((((v15 & 0x1F) << 10 >> 1) | 0x40404040) - (((5528 * v14 + 0x4000) >> 15) + ((5558272 * v16 + 0x4000) >> 15))) >> 7) + (((((v19 & 0x1F) << 10 >> 1) | 0x40404040) - (((5528 * v18 + 0x4000) >> 15) + ((5558272 * v20 + 0x4000) >> 15))) >> 7) + 1) >> 1;
        result = (((((v14 >> 1) | 0x40404040) - (((2727936 * (v15 & 0x1F) + 0x4000) >> 15) + ((7024640 * v16 + 0x4000) >> 15))) >> 7) + ((((v18 >> 1) | 0x40404040) - (((2727936 * (v19 & 0x1F) + 0x4000) >> 15) + ((7024640 * v20 + 0x4000) >> 15))) >> 7) + 1) >> 1;
        *v8++ = result;
        v10 += 2;
        v11 += 2;
        --v12;
      }

      while (v12);
    }

    v21 = (a5 - a4);
    if (v21 >= 1)
    {
      memset(v7, *(v7 - 1), v21);
      memset(v6, *(v6 - 1), v21);
      memset(v9, *(v9 - 1), v21);
      v22 = *(v8 - 1);

      return memset(v8, v22, v21);
    }
  }

  return result;
}

_BYTE *aj_BGR565_YUV420(uint64_t a1, unsigned __int8 **a2, void *a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_BGR565_YUV422(a1, a2, a3, a4, a5);
    v8 = *a3;
    v7 = a3[1];

    return memcpy(v7, v8, a5);
  }

  else
  {
    v10 = a3[4];
    v12 = a3[1];
    v11 = a3[2];
    result = *a3;
    v13 = a4 - 1;
    v15 = *a2;
    v14 = a2[1];
    if (a4 < 2)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = a4 & 0x7FFFFFFE;
      v18 = vdupq_n_s32(0x6B3000u);
      v19 = vdup_n_s16(0xA68u);
      v20 = vdupq_n_s32(0x4040u);
      v21 = vdup_n_s16(0x1598u);
      v22 = vdupq_n_s32(0x54D000u);
      do
      {
        v23 = v15[1];
        v24 = *v15;
        v25 = (v23 << 7) & 0x7C00;
        v26 = (v24 >> 5) & 0xFFFFFFC7 | (8 * (v23 & 7));
        v27 = (v24 & 0x1F) << 10;
        v28 = &result[v16];
        *v28 = (((9798 * v25 + 0x4000) >> 15) + ((9848320 * v26 + 0x4000) >> 15) + ((3825664 * (v24 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
        v29 = v15[3];
        v30 = (v29 << 7) & 0x7C00;
        v31 = v15[2];
        v32 = (v31 >> 5) & 0xFFFFFFC7 | (8 * (v29 & 7));
        v33 = (v31 & 0x1F) << 10;
        v34 = &v12[v16];
        v28[1] = (((9798 * v30 + 0x4000) >> 15) + ((9848320 * v32 + 0x4000) >> 15) + ((3736 * v33 + 0x4000) >> 15) + 64) >> 7;
        v15 += 4;
        LODWORD(v28) = v14[1];
        v35 = (v28 << 7) & 0x7C00;
        v36 = *v14;
        v37 = (v36 >> 5) & 0xFFFFFFC7 | (8 * (v28 & 7));
        LODWORD(v28) = (v36 & 0x1F) << 10;
        *v34 = (((9798 * v35 + 0x4000) >> 15) + ((9848320 * v37 + 0x4000) >> 15) + ((3825664 * (v36 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
        LOWORD(v36) = v14[3];
        v38.i64[0] = __PAIR64__(v30, v25);
        v38.i32[2] = v35;
        v39 = v14[2];
        v40.i64[0] = __PAIR64__(v32, v26);
        v38.i32[3] = (v36 << 7) & 0x7C00;
        v40.i32[2] = v37;
        v40.i32[3] = (v39 >> 5) & 0xFFFFFFC7 | (8 * (v36 & 7));
        v14 += 4;
        v41.i64[0] = 0x400000004000;
        v41.i64[1] = 0x400000004000;
        v42.i64[0] = __PAIR64__(v33, v27);
        v43 = vmovn_s32(v38);
        v42.i32[2] = v28;
        v42.i32[3] = (v39 & 0x1F) << 10;
        v44.i64[0] = 0x400000004000;
        v44.i64[1] = 0x400000004000;
        v45 = vsraq_n_u32(v20, v38, 1uLL);
        v46 = vsraq_n_u32(vshrq_n_u32(vmlal_u16(v44, vmovn_s32(v42), v19), 0xFuLL), vmlaq_s32(v41, v40, v18), 0xFuLL);
        v41.i64[0] = 0x400000004000;
        v41.i64[1] = 0x400000004000;
        v47 = vshrq_n_u32(vmlal_u16(v41, v43, v21), 0xFuLL);
        v48.i64[0] = 0x400000004000;
        v48.i64[1] = 0x400000004000;
        v34[1] = (((9798 * ((v36 << 7) & 0x7C00u) + 0x4000) >> 15) + ((9848320 * v40.i32[3] + 0x4000) >> 15) + ((3825664 * (v39 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
        *v11++ = (vaddvq_s32(vshrq_n_u32(vsubq_s32(vsraq_n_u32(v20, v42, 1uLL), vsraq_n_u32(v47, vmlaq_s32(v48, v40, v22), 0xFuLL)), 7uLL)) + 2) >> 2;
        *v10++ = (vaddvq_s32(vshrq_n_u32(vsubq_s32(v45, v46), 7uLL)) + 2) >> 2;
        v16 += 2;
      }

      while (v16 < v13);
      v12 += v16;
      result += v16;
    }

    if (v17 == v13)
    {
      v49 = v15[1];
      v50 = (v49 << 7) & 0x7C00;
      v51 = *v15;
      v52 = (v51 >> 5) & 0xFFFFFFC7 | (8 * (v49 & 7));
      v53 = (((9798 * v50 + 0x4000) >> 15) + ((9848320 * v52 + 0x4000) >> 15) + ((3825664 * (v51 & 0x1F) + 0x4000) >> 15) + 64) >> 7;
      *result = v53;
      result[1] = v53;
      result += 2;
      v54 = v14[1];
      v55 = (v54 << 7) & 0x7C00;
      v56 = *v14;
      v57 = (v56 >> 5) & 0xFFFFFFC7 | (8 * (v54 & 7));
      v58 = (v56 & 0x1F) << 10;
      v59 = (((9798 * v55 + 0x4000) >> 15) + ((9848320 * v57 + 0x4000) >> 15) + ((3736 * v58 + 0x4000) >> 15) + 64) >> 7;
      *v12 = v59;
      v12[1] = v59;
      v12 += 2;
      *v11++ = ((((((v51 & 0x1F) << 10 >> 1) | 0x40404040) - (((5528 * v50 + 0x4000) >> 15) + ((5558272 * v52 + 0x4000) >> 15))) >> 7) + ((((v58 >> 1) | 0x40404040) - (((5528 * v55 + 0x4000) >> 15) + ((5558272 * v57 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      *v10++ = (((((v50 >> 1) | 0x40404040) - (((2727936 * (v51 & 0x1F) + 0x4000) >> 15) + ((7024640 * v52 + 0x4000) >> 15))) >> 7) + ((((v55 >> 1) | 0x40404040) - (((2664 * v58 + 0x4000) >> 15) + ((7024640 * v57 + 0x4000) >> 15))) >> 7) + 1) >> 1;
      v17 = a4 + 1;
    }

    v60 = a5 - v17;
    if (a5 > v17)
    {
      memset(result, *(result - 1), v60);
      memset(v12, *(v12 - 1), v60);
      memset(v11, *(v11 - 1), v60 >> 1);
      v61 = *(v10 - 1);

      return memset(v10, v61, v60 >> 1);
    }
  }

  return result;
}

_BYTE *aj_BGR565_to_gray(uint64_t a1, void *a2, _BYTE **a3, int a4, int a5)
{
  result = *a3;
  if (a4 >= 1)
  {
    v6 = (*a2 + 1);
    v7 = a4;
    do
    {
      *result++ = (((9798 * ((*v6 << 7) & 0x7C00u) + 0x4000) >> 15) + ((9848320 * ((*(v6 - 1) >> 5) & 0xFFFFFFC7 | (8 * (*v6 & 7))) + 0x4000) >> 15) + ((3825664 * (*(v6 - 1) & 0x1Fu) + 0x4000) >> 15) + 64) >> 7;
      v6 += 2;
      --v7;
    }

    while (v7);
  }

  if (a5 > a4)
  {
    return memset(result, *(result - 1), a5 - a4);
  }

  return result;
}

void *aj_gray_YUV444(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = a4;
  memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    memset(&v9[v10], v8[v10 - 1], a5 - a4);
  }

  memset(a3[2], 128, a5);
  v11 = a3[4];

  return memset(v11, 128, a5);
}

void *aj_gray_YUV422(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = a4;
  memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    memset(&v9[v10], v8[v10 - 1], a5 - a4);
  }

  v11 = ((a5 / 2) & 1) + a5 / 2;
  memset(a3[2], 128, v11);
  v12 = a3[4];

  return memset(v12, 128, v11);
}

void *aj_gray_YUV440(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_gray_YUV444(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = *a2;
    v13 = *a3;
    v14 = a4;
    memcpy(*a3, *a2, a4);
    v15 = a5 - a4;
    if (a5 <= a4)
    {
      memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v16 = v15;
      memset(&v13[v14], v12[v14 - 1], v15);
      v17 = a2[1];
      v18 = a3[1];
      memcpy(v18, v17, v14);
      memset(&v18[v14], v17[v14 - 1], v16);
    }

    memset(a3[2], 128, a5);
    v19 = a3[4];

    return memset(v19, 128, a5);
  }
}

void *aj_gray_YUV420(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_gray_YUV422(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = *a2;
    v13 = *a3;
    v14 = a4;
    memcpy(*a3, *a2, a4);
    v15 = a5 - a4;
    if (a5 <= a4)
    {
      memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v16 = v15;
      memset(&v13[v14], v12[v14 - 1], v15);
      v17 = a2[1];
      v18 = a3[1];
      memcpy(v18, v17, v14);
      memset(&v18[v14], v17[v14 - 1], v16);
    }

    v19 = ((a5 / 2) & 1) + a5 / 2;
    memset(a3[2], 128, v19);
    v20 = a3[4];

    return memset(v20, 128, v19);
  }
}

void *aj_gray_to_gray(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a4;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    v11 = v7[v9 - 1];

    return memset(&v8[v9], v11, a5 - a4);
  }

  return result;
}

_BYTE *aj_YUV_YUV444(uint64_t a1, _BYTE **a2, uint64_t a3, int a4, int a5)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  if (a4 >= 1)
  {
    v8 = *a2;
    v9 = a4;
    do
    {
      *result++ = *v8;
      *v6++ = v8[1];
      *v7++ = v8[2];
      v8 += 3;
      --v9;
    }

    while (v9);
  }

  v10 = a5 - a4;
  if (a5 > a4)
  {
    v11 = v10;
    memset(result, *(result - 1), v10);
    memset(v6, *(v6 - 1), v11);
    v12 = *(v7 - 1);

    return memset(v7, v12, v11);
  }

  return result;
}

_BYTE *aj_YUV_YUV422(uint64_t a1, _BYTE **a2, uint64_t a3, int a4, int a5)
{
  v5 = *a2;
  result = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = a4 - 1;
  if (a4 < 2)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a4 & 0x7FFFFFFE;
    do
    {
      *result = *v5;
      v12 = v5[1];
      v13 = v5[2];
      v14 = result + 2;
      result[1] = v5[3];
      *v7++ = (v5[4] + v12) >> 1;
      v15 = v5 + 6;
      *v8++ = (v5[5] + v13) >> 1;
      v10 += 2;
      result += 2;
      v5 += 6;
    }

    while (v10 < v9);
    v5 = v15;
    result = v14;
  }

  if (v11 == v9)
  {
    v16 = *v5;
    *result = *v5;
    v17 = v5[1];
    v18 = v5[2];
    result[1] = v16;
    result += 2;
    *v7++ = v17;
    *v8++ = v18;
    v11 = a4 + 1;
  }

  v19 = a5 - v11;
  if (a5 > v11)
  {
    memset(result, *(result - 1), v19);
    v20 = v19 >> 1;
    memset(v7, *(v7 - 1), v20);
    v21 = *(v8 - 1);

    return memset(v8, v21, v20);
  }

  return result;
}

_BYTE *aj_YUV_YUV440(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV_YUV444(a1, a2, a3, a4, a5);
    v8 = *a3;
    v7 = a3[1];

    return memcpy(v7, v8, a5);
  }

  else
  {
    v10 = a3[4];
    v12 = a3[1];
    v11 = a3[2];
    result = *a3;
    if (a4 >= 1)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = a4;
      do
      {
        *result++ = *v13;
        *v12++ = *v14;
        *v11++ = (v14[1] + v13[1]) >> 1;
        *v10++ = (v14[2] + v13[2]) >> 1;
        v13 += 3;
        v14 += 3;
        --v15;
      }

      while (v15);
    }

    v16 = (a5 - a4);
    if (v16 >= 1)
    {
      memset(result, *(result - 1), v16);
      memset(v12, *(v12 - 1), v16);
      memset(v11, *(v11 - 1), v16);
      v17 = *(v10 - 1);

      return memset(v10, v17, v16);
    }
  }

  return result;
}

_BYTE *aj_YUV_YUV420(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV_YUV422(a1, a2, a3, a4, a5);
    v8 = *a3;
    v7 = a3[1];

    return memcpy(v7, v8, a5);
  }

  else
  {
    v10 = a3[4];
    v12 = a3[1];
    v11 = a3[2];
    result = *a3;
    v13 = a4 - 1;
    v15 = *a2;
    v14 = *(a2 + 8);
    if (a4 < 2)
    {
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = a4 & 0x7FFFFFFE;
      do
      {
        *result = *v15;
        *v12 = *v14;
        v18 = v15[1];
        v19 = v14[1];
        v20 = v15[2];
        v21 = v14[2];
        v22 = result + 2;
        result[1] = v15[3];
        v23 = v12 + 2;
        v12[1] = v14[3];
        v24 = v15[4];
        v25 = v14[4];
        v26 = v15 + 6;
        v27 = v15[5];
        v28 = v14 + 6;
        v29 = v14[5];
        *v11++ = (v18 + v19 + v24 + v25 + 2) >> 2;
        *v10++ = (v20 + v21 + v27 + v29 + 2) >> 2;
        v16 += 2;
        v12 += 2;
        result = v22;
        v14 = v28;
        v15 = v26;
      }

      while (v16 < v13);
      v15 = v26;
      v14 = v28;
      result = v22;
      v12 = v23;
    }

    if (v17 == v13)
    {
      *result = *v15;
      *v12 = *v14;
      v30 = v15[1];
      v31 = v14[1];
      v32 = v15[2];
      v33 = v14[2];
      result[1] = *result;
      result += 2;
      v12[1] = *v12;
      *v11++ = (v31 + v30) >> 1;
      v12 += 2;
      *v10++ = (v33 + v32) >> 1;
      v17 = a4 + 1;
    }

    v34 = a5 - v17;
    if (a5 > v17)
    {
      memset(result, *(result - 1), v34);
      memset(v12, *(v12 - 1), v34);
      memset(v11, *(v11 - 1), v34 >> 1);
      v35 = *(v10 - 1);

      return memset(v10, v35, v34 >> 1);
    }
  }

  return result;
}

_BYTE *aj_YUV_to_gray(uint64_t a1, char **a2, _BYTE **a3, int a4, int a5)
{
  result = *a3;
  if (a4 >= 1)
  {
    v6 = *a2;
    v7 = a4;
    do
    {
      v8 = *v6;
      v6 += 3;
      *result++ = v8;
      --v7;
    }

    while (v7);
  }

  if (a5 > a4)
  {
    return memset(result, *(result - 1), a5 - a4);
  }

  return result;
}

void *aj_YUV422SEMIP_YUV444(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  if (a4 >= 1)
  {
    v14 = (a4 + 1) >> 1;
    do
    {
      v15 = *v7;
      *v8 = *v7;
      v16 = v8 + 2;
      v8[1] = v15;
      v17 = v7[1];
      *v9 = v17;
      v7 += 2;
      v9[1] = v17;
      v9 += 2;
      v8 += 2;
      --v14;
    }

    while (v14);
    v8 = v16;
  }

  if (a5 > a4)
  {
    v18 = a5 - a4 - (a4 & 1);
    memset(v8, *(v7 - 2), v18);
    v19 = *(v7 - 1);

    return memset(v9, v19, v18);
  }

  return result;
}

void *aj_YUV422SEMIP_YUV422(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  v14 = (a4 + 1) / 2;
  if (a4 >= 1)
  {
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a4 + 1) / 2;
    }

    do
    {
      *v8++ = *v7;
      v16 = v7 + 2;
      *v9++ = v7[1];
      v7 += 2;
      --v15;
    }

    while (v15);
    v7 = v16;
  }

  if (a5 > a4)
  {
    v17 = (a5 + 1) / 2 - v14;
    memset(v8, *(v7 - 2), v17);
    v18 = *(v7 - 1);

    return memset(v9, v18, v17);
  }

  return result;
}

void *aj_YUV422SEMIP_YUV420(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV422SEMIP_YUV422(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = a2[3];
    v16 = *a2;
    v28 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v16[a4];
      v19 = v17;
      memset(&v28[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    v22 = (a4 + 1) / 2;
    if (a4 >= 1)
    {
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = (a4 + 1) / 2;
      }

      do
      {
        *v13++ = (*v15 + *v14) >> 1;
        v24 = v14 + 2;
        v25 = v15 + 2;
        *v12++ = (v15[1] + v14[1]) >> 1;
        v15 += 2;
        v14 += 2;
        --v23;
      }

      while (v23);
      v14 = v24;
      v15 = v25;
    }

    if (a5 > a4)
    {
      v26 = (a5 + 1) / 2 - v22;
      memset(v13, (*(v15 - 2) + *(v14 - 2)) >> 1, v26);
      v27 = (*(v15 - 1) + *(v14 - 1)) >> 1;

      return memset(v12, v27, v26);
    }
  }

  return result;
}

void *aj_YUV422SEMIP_YUV440(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV422SEMIP_YUV444(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = a2[3];
    v16 = *a2;
    v30 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v16[a4];
      v19 = v17;
      memset(&v30[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    if (a4 >= 1)
    {
      v22 = (a4 + 1) >> 1;
      do
      {
        v23 = (*v15 + *v14) >> 1;
        *v13 = v23;
        v24 = v13 + 2;
        v13[1] = v23;
        v25 = v14 + 2;
        v26 = v15 + 2;
        v27 = (v15[1] + v14[1]) >> 1;
        *v12 = v27;
        v28 = v12 + 2;
        v12[1] = v27;
        v12 += 2;
        v13 += 2;
        v15 += 2;
        v14 += 2;
        --v22;
      }

      while (v22);
      v14 = v25;
      v15 = v26;
      v13 = v24;
      v12 = v28;
    }

    if (a5 > a4)
    {
      memset(v13, (*(v15 - 2) + *(v14 - 2)) >> 1, a5 - a4 - (a4 & 1));
      v29 = (*(v15 - 1) + *(v14 - 1)) >> 1;

      return memset(v12, v29, a5 - a4 - (a4 & 1));
    }
  }

  return result;
}

void *aj_YUV420SEMIP_YUV444(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  if (a4 >= 1)
  {
    v14 = (a4 + 1) >> 1;
    do
    {
      v15 = *v7;
      *v8 = *v7;
      v16 = v8 + 2;
      v8[1] = v15;
      v17 = v7[1];
      *v9 = v17;
      v7 += 2;
      v9[1] = v17;
      v9 += 2;
      v8 += 2;
      --v14;
    }

    while (v14);
    v8 = v16;
  }

  if (a5 > a4)
  {
    v18 = a5 - a4 - (a4 & 1);
    memset(v8, *(v7 - 2), v18);
    v19 = *(v7 - 1);

    return memset(v9, v19, v18);
  }

  return result;
}

void *aj_YUV420SEMIP_YUV422(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  v14 = (a4 + 1) / 2;
  if (a4 >= 1)
  {
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a4 + 1) / 2;
    }

    do
    {
      *v8++ = *v7;
      v16 = v7 + 2;
      *v9++ = v7[1];
      v7 += 2;
      --v15;
    }

    while (v15);
    v7 = v16;
  }

  if (a5 > a4)
  {
    v17 = (a5 + 1) / 2 - v14;
    memset(v8, *(v7 - 2), v17);
    v18 = *(v7 - 1);

    return memset(v9, v18, v17);
  }

  return result;
}

void *aj_YUV420SEMIP_YUV420(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV420SEMIP_YUV422(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = *a2;
    v16 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v15[a4];
      v19 = v17;
      memset(&v16[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    v22 = (a4 + 1) / 2;
    if (a4 >= 1)
    {
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = (a4 + 1) / 2;
      }

      do
      {
        *v13++ = *v14;
        v24 = v14 + 2;
        *v12++ = v14[1];
        v14 += 2;
        --v23;
      }

      while (v23);
      v14 = v24;
    }

    if (a5 > a4)
    {
      v25 = (a5 + 1) / 2 - v22;
      memset(v13, *(v14 - 2), v25);
      v26 = *(v14 - 1);

      return memset(v12, v26, v25);
    }
  }

  return result;
}

void *aj_YUV420SEMIP_YUV440(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV420SEMIP_YUV444(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = *a2;
    v16 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v15[a4];
      v19 = v17;
      memset(&v16[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    if (a4 >= 1)
    {
      v22 = (a4 + 1) >> 1;
      do
      {
        v23 = *v14;
        *v13 = *v14;
        v24 = v13 + 2;
        v13[1] = v23;
        v25 = v14 + 2;
        v26 = v14[1];
        v27 = v12 + 2;
        *v12 = v26;
        v12[1] = v26;
        v12 += 2;
        v13 += 2;
        v14 += 2;
        --v22;
      }

      while (v22);
      v14 = v25;
      v13 = v24;
      v12 = v27;
    }

    if (a5 > a4)
    {
      v28 = a5 - a4 - (a4 & 1);
      memset(v13, *(v14 - 2), v28);
      v29 = *(v14 - 1);

      return memset(v12, v29, v28);
    }
  }

  return result;
}

void *aj_YUV440SEMIP_YUV444(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  if (a4 >= 1)
  {
    v14 = a4;
    do
    {
      *v8++ = *v7;
      v15 = v7 + 2;
      *v9++ = v7[1];
      v7 += 2;
      --v14;
    }

    while (v14);
    v7 = v15;
  }

  v16 = a5 - a4;
  if (a5 > a4)
  {
    v17 = v16;
    memset(v8, *(v7 - 2), v16);
    v18 = *(v7 - 1);

    return memset(v9, v18, v17);
  }

  return result;
}

void *aj_YUV440SEMIP_YUV422(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = a2[2];
  v8 = a3[2];
  v9 = a3[4];
  v10 = *a2;
  v11 = a4;
  v12 = *a3;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    result = memset(&v12[v11], v10[v11 - 1], a5 - a4);
  }

  if (a4 >= 2)
  {
    v14 = a4 / 2;
    do
    {
      *v8++ = (v7[2] + *v7) >> 1;
      *v9++ = (v7[3] + v7[1]) >> 1;
      v7 += 4;
      --v14;
    }

    while (v14);
  }

  if (a4)
  {
    *v8++ = *v7;
    *v9++ = v7[1];
    v7 += 2;
  }

  if (a5 > a4)
  {
    v15 = (a5 - a4 + ((a5 - a4) >> 31)) >> 1;
    memset(v8, *(v7 - 2), v15);
    v16 = *(v7 - 1);

    return memset(v9, v16, v15);
  }

  return result;
}

void *aj_YUV440SEMIP_YUV420(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV440SEMIP_YUV422(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = *a2;
    v16 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v15[a4];
      v19 = v17;
      memset(&v16[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    if (a4 >= 2)
    {
      v22 = a4 / 2;
      do
      {
        *v13++ = (v14[2] + *v14) >> 1;
        *v12++ = (v14[3] + v14[1]) >> 1;
        v14 += 4;
        --v22;
      }

      while (v22);
    }

    if (a4)
    {
      *v13++ = *v14;
      *v12++ = v14[1];
      v14 += 2;
    }

    if (a5 > a4)
    {
      v23 = (a5 - a4 + ((a5 - a4) >> 31)) >> 1;
      memset(v13, *(v14 - 2), v23);
      v24 = *(v14 - 1);

      return memset(v12, v24, v23);
    }
  }

  return result;
}

void *aj_YUV440SEMIP_YUV440(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  if (a1 == 1)
  {
    aj_YUV440SEMIP_YUV444(a1, a2, a3, a4, a5);
    v10 = *a3;
    v9 = a3[1];

    return memcpy(v9, v10, a5);
  }

  else
  {
    v12 = a3[4];
    v13 = a3[2];
    v14 = a2[2];
    v15 = *a2;
    v16 = *a3;
    memcpy(*a3, *a2, a4);
    v17 = a5 - a4;
    if (a5 <= a4)
    {
      result = memcpy(a3[1], a2[1], a4);
    }

    else
    {
      v18 = &v15[a4];
      v19 = v17;
      memset(&v16[a4], *(v18 - 1), v17);
      v20 = a2[1];
      v21 = a3[1];
      memcpy(v21, v20, a4);
      result = memset(&v21[a4], v20[a4 - 1], v19);
    }

    if (a4 >= 1)
    {
      v22 = a4;
      do
      {
        *v13++ = *v14;
        v23 = v14 + 2;
        *v12++ = v14[1];
        v14 += 2;
        --v22;
      }

      while (v22);
      v14 = v23;
    }

    v24 = a5 - a4;
    if (a5 > a4)
    {
      v25 = v24;
      memset(v13, *(v14 - 2), v24);
      v26 = *(v14 - 1);

      return memset(v12, v26, v25);
    }
  }

  return result;
}

void *aj_SEMIP_to_gray(uint64_t a1, const void **a2, void **a3, int a4, int a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a4;
  result = memcpy(*a3, *a2, a4);
  if (a5 > a4)
  {
    v11 = v7[v9 - 1];

    return memset(&v8[v9], v11, a5 - a4);
  }

  return result;
}

_BYTE *aj_deinterleave_8888(uint64_t a1, _BYTE **a2, uint64_t a3, int a4, int a5)
{
  result = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  if (a4 >= 1)
  {
    v9 = *a2;
    v10 = a4;
    do
    {
      *result++ = *v9;
      *v6++ = v9[1];
      *v7++ = v9[2];
      *v8++ = v9[3];
      v9 += 4;
      --v10;
    }

    while (v10);
  }

  v11 = a5 - a4;
  if (a5 > a4)
  {
    v12 = v11;
    memset(result, *(result - 1), v11);
    memset(v6, *(v6 - 1), v12);
    memset(v7, *(v7 - 1), v12);
    v13 = *(v8 - 1);

    return memset(v8, v13, v12);
  }

  return result;
}

int *aj_col_trans_row(int *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = result;
  v19[7] = *MEMORY[0x277D85DE8];
  v6 = result[8];
  v18 = *(a3 + 8 * v6 * a5);
  v7 = a3 + 8 * a5;
  v19[0] = *(v7 + (result[4959] << 7));
  v19[1] = 0;
  v19[2] = *(v7 + (result[4960] << 7));
  v19[3] = 0;
  v19[4] = *(v7 + 384);
  v19[5] = 0;
  if (a4 <= 0)
  {
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = v6 * a5 - 1;
      do
      {
        result = memcpy(v19[v10 - 2], *(a3 + 8 * (v11 + v10)), v5[3354]);
        ++v10;
      }

      while (v10 < v5[8]);
    }

    if (*v5 > 1)
    {
      v12 = v19;
      v13 = (v7 + 120);
      v14 = 1;
      do
      {
        v16 = *v12;
        v12 += 2;
        v15 = v16;
        v17 = *v13;
        v13 += 16;
        result = memcpy(v15, v17, v5[3354] / v5[4]);
        ++v14;
      }

      while (v14 < *v5);
    }
  }

  else
  {
    result = (*(result + 2468))(a4, a2 + 1832, &v18, result[2], result[3354]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_init_lookup(uint64_t a1)
{
  v1 = 0;
  LODWORD(v2) = 0;
  v3 = 1;
  while (!*(a1 + v3 - 1))
  {
LABEL_10:
    v1 *= 2;
    if (++v3 == 9)
    {
      v11 = 0;
      *(a1 + 784) = v1;
      *(a1 + 788) = v2;
      return v11;
    }
  }

  v4 = 0;
  v5 = ~(-1 << v3);
  v2 = v2;
  v6 = v5 - v1;
  if (v5 < v1)
  {
    v6 = 0;
  }

  v7 = 8 - v3;
  while (v4 != v6)
  {
    v8 = (v3 << 8) | *(a1 + 16 + v2);
    v9 = 1;
    do
    {
      *(a1 + 272 + 2 * ((v9 - 1) | (v1 << v7))) = v8;
    }

    while (!(v9++ >> v7));
    ++v1;
    ++v2;
    if (++v4 >= *(a1 + v3 - 1))
    {
      goto LABEL_10;
    }
  }

  aj_log_error("Read", "Code larger than bitlength: %d >= %d", v1, ~(-1 << v3));
  return 7;
}

uint64_t aj_read_dht_prog(unsigned __int8 **a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1 + 2;
  v8 = __rev16(**a1) - 2;
  while (1)
  {
    if (v8 < 1)
    {
      result = 0;
      *a1 = v7;
      *a2 = v6;
      return result;
    }

    if (v8 <= 0x10)
    {
      aj_log_error("Read", "Not enough bytes in header for Huffman table. %d bytes remaining, requires >= 17.");
      return 4;
    }

    v9 = *v7;
    v10 = v9 >> 4;
    if (v9 >= 0x20)
    {
      aj_log_error("Read", "Huffman table class is %d, only values 0 and 1 are allowed.");
      return 4;
    }

    v11 = v9 & 0xF;
    if (v11 >= 4)
    {
      aj_log_error("Read", "Huffman table index is %d, only values 0 to 3 are allowed.", v11);
      return 3;
    }

    v12 = 0;
    LODWORD(v13) = 0;
    *(a3 + 16 * v11 + 8 * v10) = v6;
    v14 = v7 + 1;
    do
    {
      v15 = v14[v12];
      *(v6 + v12) = v15;
      v13 = (v13 + v15);
      ++v12;
    }

    while (v12 != 16);
    v16 = v8 - 17;
    v8 = v8 - 17 - v13;
    if (v16 < v13)
    {
      aj_log_error("Read", "Too few bytes in Huffman header. %d bytes left, requires %d bytes.");
      return 4;
    }

    if (v13 >= 0x101)
    {
      break;
    }

    memcpy((v6 + 16), v7 + 17, v13);
    bzero((v6 + 16 + v13), (256 - v13));
    v7 = &v14[v13 + 16];
    result = aj_init_lookup(v6);
    v6 += 792;
    if (result)
    {
      return result;
    }
  }

  aj_log_error("Read", "Too many codes in Huffman table: %d codes.");
  return 4;
}

uint64_t aj_read_sos_prog(unsigned __int16 **a1, unsigned int *a2, int *a3)
{
  v3 = *a1;
  v4 = __rev16(**a1);
  if (v4 <= 7)
  {
    aj_log_error("Read", "Illegal length of SOS segment: %d");
    return 4;
  }

  v8 = *(v3 + 2);
  *a2 = v8;
  v9 = *a3;
  if (v8)
  {
    v10 = v9 < v8;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    aj_log_error("Read", "Component count is %d, only values between 1 and %d supported.", v8, v9);
    return 3;
  }

  else
  {
    if (v4 != 2 * v8 + 6)
    {
      aj_log_error("Read", "Illegal length of SOS segment.");
      return 4;
    }

    v12 = 0;
    v13 = v3 + 3;
    v14 = a2 + 1;
    v15 = 1;
    v16 = (v3 + 3);
    while (1)
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *a3;
      if (v19 < 1)
      {
LABEL_24:
        aj_log_error("Read", "Component ID not found among declared components");
        goto LABEL_25;
      }

      v20 = 0;
      v21 = -v19;
      v22 = a3 + 16;
      v23 = a2 + 9;
      while (1)
      {
        v24 = *v22++;
        if (v24 == v17)
        {
          break;
        }

        --v20;
        ++v23;
        if (v21 == v20)
        {
          goto LABEL_24;
        }
      }

      v14[v12] = -v20;
      v16 = (v13 + 2);
      v25 = *(v13 + 1);
      *(v23 - 4) = v25 >> 4;
      *v23 = v25 & 0xF;
      if (v25 > 0x3F || (v25 & 0xF) >= 4)
      {
        break;
      }

      ++v12;
      v13 += 2;
      v15 = v12 < v8;
      if (v12 == v8)
      {
        goto LABEL_26;
      }
    }

    aj_log_error("Read", "Corrupt scan, invalid huffman table indices. DC: %d, AC: %d");
LABEL_25:
    if (v15)
    {
      return 4;
    }

LABEL_26:
    v27 = *a2;
    if (v27 >= 2)
    {
      v28 = 0;
      v29 = a2 + 2;
      v30 = 1;
      while (2)
      {
        v31 = v28++;
        v32 = v29;
        v33 = v30;
        do
        {
          v34 = *v32++;
          if (v14[v31] == v34)
          {
            aj_log_error("Read", "SOS components IDs are not unique. id[%d] == id[%d] == %d");
            return 4;
          }

          ++v33;
        }

        while (v27 != v33);
        ++v30;
        ++v29;
        if (v28 != v27 - 1)
        {
          continue;
        }

        break;
      }
    }

    v35 = *v16;
    a2[13] = v35;
    v36 = v16[1];
    a2[14] = v36;
    v37 = v16[2];
    v38 = v37 >> 4;
    v39 = v37 & 0xF;
    a2[15] = v39;
    a2[16] = v37 >> 4;
    if (a3[20] == 194)
    {
      if (v35 > v36 || v36 >= 0x40)
      {
        aj_log_error("Read", "Bad spectral selection. Ss = %d, Se = %d.");
        return 4;
      }

      if (v39 > 0xD || v37 >= 0x10 && v38 != v39 + 1)
      {
        aj_log_error("Read", "Bad successive approximation. Ah = %d, Al = %d.");
        return 4;
      }
    }

    else
    {
      if (v35 || v36 != 63)
      {
        aj_log_error("Read", "Bad spectral selection for baseline multiscan image. Ss = %d, Se = %d. Assuming Ss = 0, Se = 63.", v35, v36);
        *(a2 + 13) = 0x3F00000000;
        v39 = a2[15];
        v38 = a2[16];
      }

      if (v39 | v38)
      {
        aj_log_error("Read", "Bad successive approximation for baseline multiscan image. Al = %d, Ah = %d. Assuming Al = 0, Ah = 0.", v39, v38);
      }
    }

    result = 0;
    *a1 = (v16 + 3);
  }

  return result;
}

uint64_t aj_read_com(uint64_t a1)
{
  v4 = 0;
  result = aj_istream_read_bytes_be(a1, &v4, 2);
  if (!result)
  {
    if (v4 < 3)
    {
      return 0;
    }

    else
    {
      v3 = v4 - 2;
      while (1)
      {
        result = aj_istream_read_bytes_be(a1, &v4, 1);
        if (result)
        {
          break;
        }

        if (!--v3)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t aj_read_app14(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  result = aj_istream_read_bytes_be(a1, &v8 + 1, 2);
  if (!result)
  {
    v5 = HIDWORD(v8);
    v6 = v5 + aj_istream_get_pos(a1) - 2;
    if (v5 <= 13)
    {
      goto LABEL_3;
    }

    result = aj_istream_read_bytes_be(a1, &v8 + 1, 4);
    if (!result)
    {
      result = aj_istream_read_bytes_be(a1, &v8, 1);
      if (!result)
      {
        if (v8 != 0x41646F6200000065)
        {
LABEL_3:
          aj_log_error("Read", "Unknown APP14 marker");
          LODWORD(result) = aj_istream_move_to_position(a1, v6);
          if (result)
          {
            return result;
          }

          else
          {
            return 11;
          }
        }

        result = aj_istream_read_bytes_be(a1, &v8 + 1, 2);
        if (!result)
        {
          result = aj_istream_read_bytes_be(a1, &v8 + 1, 2);
          if (!result)
          {
            result = aj_istream_read_bytes_be(a1, &v8 + 1, 2);
            if (!result)
            {
              result = aj_istream_read_bytes_be(a1, &v8 + 1, 1);
              if (!result)
              {
                v7 = HIDWORD(v8);
                if (HIDWORD(v8) < 3)
                {
                  *(a2 + 3408) = 1;
                  *(a2 + 3412) = v7;
                  return aj_istream_move_to_position(a1, v6);
                }

                else
                {
                  aj_log_error("Read", "Illegal APP14 transform");
                  return 11;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getw_little(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = aj_istream_read_bytes_le(a1, &v4, 4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t geth_little(uint64_t a1, _WORD *a2)
{
  v4 = 0;
  result = aj_istream_read_bytes_le(a1, &v4, 2);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t applejpeg_decode_get_headersize(uint64_t result)
{
  if (result)
  {
    return *(result + 3540);
  }

  return result;
}

double applejpeg_decode_clear_options(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 3560) = 0x100000001;
    *(a1 + 3568) = 0;
    *(a1 + 3572) = -1;
    *(a1 + 3580) = -1;
    *(a1 + 3588) = 0;
    result = 0.0;
    *(a1 + 3592) = 0;
    *(a1 + 3640) = 0u;
    *(a1 + 3632) = 0x1FF000000;
    *(a1 + 3656) = xmmword_240AB61B0;
    *(a1 + 3600) = 0u;
    *(a1 + 3616) = 0u;
    *(a1 + 3672) = 0;
    *(a1 + 3700) = 0;
    *(a1 + 3680) = 0u;
    *(a1 + 3696) = 0;
    *(a1 + 3704) = 1;
    *(a1 + 12665) = 0;
  }

  return result;
}

uint64_t applejpeg_decode_set_parse_option_use_first_sof(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 8;
  }

  if (*(a1 + 12896))
  {
    aj_log_error("Decode", "applejpeg_decode_set_parse_option_use_first_sof must be called before any file is opened");
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 12664) = a2;
  }

  return result;
}

uint64_t applejpeg_decode_clone_session(__int128 *a1)
{
  if (*(a1 + 3224) == 2 && !*(a1 + 3240) && !*(a1 + 1627) && !*(a1 + 10))
  {
    v4 = applejpeg_decode_create(0);
    v2 = v4;
    if (!v4)
    {
      return v2;
    }

    v5 = *a1;
    v6 = a1[1];
    v7 = a1[3];
    *(v4 + 32) = a1[2];
    *(v4 + 48) = v7;
    *v4 = v5;
    *(v4 + 16) = v6;
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    *(v4 + 112) = *(a1 + 14);
    *(v4 + 80) = v9;
    *(v4 + 96) = v10;
    *(v4 + 64) = v8;
    memcpy((v4 + 120), a1 + 120, 0xD60uLL);
    if (!copy_imagesession(v2 + 3720, a1 + 465, v2 + 13008))
    {
      *(v2 + 12896) = *(a1 + 3224);
      return v2;
    }

    applejpeg_decode_destroy(v2);
  }

  return 0;
}

uint64_t copy_imagesession(uint64_t a1, const void **a2, uint64_t a3)
{
  memcpy(a1, a2, 0x1B8uLL);
  if (a2[12])
  {
    *(a1 + 96) = 0;
    v6 = *(a1 + 128);
    v7 = 8 * v6;
    v8 = 20 * *(a1 + 132);
    v9 = *(a3 + 24);
    if (v9)
    {
      free(v9);
      v6 = *(a1 + 128);
    }

    v10 = malloc_type_calloc(1uLL, v7 + v6 * v8, 0x330F7096uLL);
    *(a3 + 24) = v10;
    *(a1 + 96) = v10;
    if (!v10)
    {
      return 6;
    }

    memcpy(v10, a2[12], v7 + *(a1 + 128) * v8);
    v11 = *(a1 + 96);
    *(a1 + 104) = v11;
    v12 = *(a1 + 128);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = v11 + v7;
      v15 = 8 * v12;
      v16 = 20 * *(a1 + 132);
      do
      {
        *(*(a1 + 104) + v13) = v14;
        v13 += 8;
        v14 += v16;
      }

      while (v15 != v13);
    }
  }

  v17 = 0;
  *(a1 + 8) = 0u;
  v18 = (a1 + 8);
  v18[2] = 0u;
  v18[3] = 0u;
  v18[1] = 0u;
  v19 = 1;
  while (2)
  {
    v20 = 0;
    v21 = v19;
    v22 = &a2[v17 + 1];
    v23 = v18 + 8 * v17;
    do
    {
      v24 = *(v22 + v20);
      if (v24)
      {
        if (aj_huffman_decode_is_static_table(v24))
        {
          *&v23[v20] = *(v22 + v20);
        }

        else
        {
          v25 = *&v23[v20];
          if (v25)
          {
            free(v25);
            *&v23[v20] = 0;
          }

          v26 = malloc_type_calloc(1uLL, 0x1194uLL, 0x100004043704DA4uLL);
          *&v23[v20] = v26;
          if (!v26)
          {
            aj_log_error("Decode", "Could not allocate memory for huffman table");
            return 6;
          }

          memcpy(v26, *(v22 + v20), 0x1194uLL);
        }
      }

      v20 += 16;
    }

    while (v20 != 64);
    v19 = 0;
    v17 = 1;
    if (v21)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t applejpeg_decode_build_index(uint64_t a1)
{
  if (!a1)
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a1 + 12896) != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 1;
  }

  if (*(a1 + 206))
  {
    aj_log_error("Decode", "Random access table is not supported for lossless JPEGs");
    return 3;
  }

  if ((*(a1 + 3664) - 0x10000) < 0xFFFF0001 || (*(a1 + 3668) - 0x10000) <= 0xFFFF0000)
  {
    aj_log_error("Decode", "Unsupported sampling interval");
    return 8;
  }

  if (*(a1 + 204))
  {
    return 0;
  }

  if (*(a1 + 80) && (!*(a1 + 88) || !*(a1 + 72)))
  {
    aj_log_error("Decode", "rewind or skip callback not provided");
    return 8;
  }

  log_basic_decode_info(OS_LOG_TYPE_DEBUG, a1, 0, (a1 + 3720), a1 + 120, a1 + 3560);
  *(a1 + 4084) = 0;
  inited = aj_decode_init_index(a1 + 12968, a1 + 13008, (a1 + 4160), a1 + 3720, (a1 + 11136), (a1 + 120), a1, a1 + 3560, *(a1 + 3540));
  if (inited)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 11136))
  {
    dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
    return 0;
  }

  inited = aj_create_ra_table_mt(a1 + 4160, (a1 + 11136));
  os_log_object = aj_get_os_log_object();
  if (os_log_type_enabled(os_log_object, OS_LOG_TYPE_DEBUG))
  {
    applejpeg_decode_build_index_cold_1();
    if (!inited)
    {
LABEL_28:
      inited = aj_istream_move_to_position(a1, *(a1 + 3540));
      dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
      if (!inited)
      {
        return inited;
      }

      goto LABEL_19;
    }
  }

  else if (!inited)
  {
    goto LABEL_28;
  }

LABEL_18:
  dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
LABEL_19:
  v4 = *(a1 + 3816);
  if (v4 && *(a1 + 13032))
  {
    free(v4);
    *(a1 + 3816) = 0;
    *(a1 + 13032) = 0;
  }

  *(a1 + 3856) = 0;
  if (inited == -2)
  {
    aj_log_error("Decode", "IO suspension is not supported for building an index table separately");
    return 9;
  }

  return inited;
}

void log_basic_decode_info(os_log_type_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = *(a5 + 28) | (16 * *(a5 + 44)) | (*(a5 + 24) << 8) | (*(a5 + 40) << 12) | (*(a5 + 20) << 16) | (*(a5 + 36) << 20) | (*(a5 + 16) << 24) | (*(a5 + 32) << 28);
  v12 = (a4[32] << 14) | (a4[34] << 28) | a4[33];
  v13 = *(a5 + 3328);
  if (v13 <= 3)
  {
    v14 = 32 * v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a5 + 3332);
  if (v15 <= 3)
  {
    v16 = 4 * v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*a5 << 12) | (*(a5 + 3404) << 16) | (*(a5 + 84) << 11) | (*(a5 + 3408) << 10) | (*(a5 + 3412) << 8) | v14 | v16 | (2 * (*(a2 + 80) != 0));
  os_log_object = aj_get_os_log_object();
  v19 = os_log_type_enabled(os_log_object, a1);
  if (a3)
  {
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = *(a5 + 80);
    v21 = *(a5 + 12) | (*(a5 + 8) << 16);
    v22 = *(a2 + 52);
    *buf = 134219520;
    v51 = a2;
    v52 = 1024;
    v53 = v20;
    v54 = 1024;
    v55 = v21;
    v56 = 1024;
    v57 = v17;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = v12;
    v62 = 1024;
    v63 = v22;
    v23 = "[%p] Decoding: %2X 0x%08X 0x%08X 0x%08X 0x%08X %d";
    v24 = os_log_object;
    v25 = a1;
    v26 = 48;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_13;
    }

    v27 = *(a5 + 80);
    v28 = *(a5 + 12) | (*(a5 + 8) << 16);
    *buf = 134219264;
    v51 = a2;
    v52 = 1024;
    v53 = v27;
    v54 = 1024;
    v55 = v28;
    v56 = 1024;
    v57 = v17;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = v12;
    v23 = "[%p] Building: %2X 0x%08X 0x%08X 0x%08X 0x%08X";
    v24 = os_log_object;
    v25 = a1;
    v26 = 42;
  }

  _os_log_impl(&dword_240A75000, v24, v25, v23, buf, v26);
LABEL_13:
  v30 = *(a6 + 28);
  v29 = *(a6 + 32);
  v49 = a2;
  if (v30)
  {
LABEL_14:
    v48 = v29;
    goto LABEL_17;
  }

  if (!v29)
  {
    v30 = *(a6 + 76);
    v29 = -1;
    goto LABEL_14;
  }

  v48 = *(a6 + 32);
  v30 = 0;
LABEL_17:
  v32 = *a6;
  v31 = *(a6 + 4);
  v33 = *(a6 + 80);
  v34 = *(a6 + 100);
  v35 = *(a6 + 104);
  v36 = *(a6 + 108);
  v37 = *(a6 + 8);
  v46 = *(a6 + 16);
  v47 = *(a6 + 12);
  v44 = *(a6 + 24);
  v45 = *(a6 + 20);
  v38 = aj_get_os_log_object();
  if (os_log_type_enabled(v38, a1))
  {
    if (v36 <= 63)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v40 = (v32 << 19) - 0x80000;
    if (v32 >= 8)
    {
      v40 = 3670016;
    }

    *buf = 134219264;
    v51 = v49;
    v41 = v40 | (v37 << 15) | ((v31 != 0) << 14) | ((v33 != 0) << 13) | ((v34 != 0) << 12);
    v42 = v35 << 6;
    v52 = 1024;
    v53 = v30;
    v54 = 1024;
    v55 = v48;
    if (v35 > 63)
    {
      v42 = 0;
    }

    v56 = 1024;
    v57 = v46 | (v47 << 16);
    v58 = 1024;
    v59 = v44 | (v45 << 16);
    v60 = 1024;
    v61 = v41 | v42 | v39;
    _os_log_impl(&dword_240A75000, v38, a1, "[%p] Options: %dx%d [%08X,%08X] %08X", buf, 0x2Au);
  }

  v43 = *MEMORY[0x277D85DE8];
}

__n128 applejpeg_decode_build_index_table(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 206))
    {
      aj_log_error("Decode", "Random access table is not supported for lossless JPEGs");
    }

    else
    {
      v4 = (a1 + 3560);
      v19 = *(a1 + 3688);
      v17 = *(a1 + 3656);
      v18 = *(a1 + 3672);
      v13 = *(a1 + 3592);
      v14 = *(a1 + 3608);
      v15 = *(a1 + 3624);
      v16 = *(a1 + 3640);
      v11 = *(a1 + 3560);
      v12 = *(a1 + 3576);
      *(a1 + 3560) = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(a1 + 3608) = *(a2 + 48);
      *(a1 + 3624) = v7;
      *(a1 + 3576) = v5;
      *(a1 + 3592) = v6;
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      v10 = *(a2 + 112);
      *(a1 + 3688) = *(a2 + 128);
      *(a1 + 3656) = v9;
      *(a1 + 3672) = v10;
      *(a1 + 3640) = v8;
      applejpeg_decode_build_index(a1);
      *(a1 + 3656) = v17;
      *(a1 + 3672) = v18;
      *(a1 + 3688) = v19;
      *(a1 + 3592) = v13;
      *(a1 + 3608) = v14;
      *(a1 + 3624) = v15;
      *(a1 + 3640) = v16;
      result = v12;
      *v4 = v11;
      *(a1 + 3576) = v12;
    }
  }

  else
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
  }

  return result;
}

uint64_t applejpeg_decode_set_ra_table(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  if (!a1)
  {
    return 8;
  }

  if (*(a1 + 12896) != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 1;
  }

  if (*(a1 + 206))
  {
    aj_log_error("Decode", "Random access table is not supported for lossless JPEGs");
    return 3;
  }

  if (!a2 || !a3)
  {
    aj_log_error("Decode", "Table or table size may not be NULL");
    return 8;
  }

  if (a3 >= 0x2800001)
  {
    aj_log_error("Decode", "Table size may not be larger than %d");
    return 8;
  }

  if ((2 * aj_istream_state_serialized_size()) + 52 > a3)
  {
    aj_log_error("Decode", "Illegal or corrupt RA-table: Table too small to be a RA-table");
    return 8;
  }

  v8 = *(a1 + 52);
  if (!v8)
  {
    aj_log_error("Decode", "File size must be known in order to set a RA-table");
    return 8;
  }

  if (*a2 != 0x47504A454C505041 || *(a2 + 8) != 0x454843414355434DLL)
  {
    aj_log_error("Decode", "Illegal or corrupt RA-table: Wrong magic string");
    return 12;
  }

  if (*(a2 + 16) != 4)
  {
    aj_log_error("Decode", "Cache file version is not supported");
    return 12;
  }

  if (*(a2 + 20) + 24 > a3)
  {
    aj_log_error("Decode", "Size is smaller than indicated in table header.");
    return 12;
  }

  if (*(a2 + 24))
  {
    aj_log_error("Decode", "Table checksums do not match.");
    return 12;
  }

  if (*(a1 + 96) + v8 != *(a2 + 28))
  {
    aj_log_error("Decode", "RA-table image size does not match image");
    return 12;
  }

  v10 = *(a2 + 32);
  LODWORD(v47[0]) = v10;
  if (v10 >= 0xA)
  {
    aj_log_error("Decode", "Illegal number of check states: %u");
    return 12;
  }

  v11 = aj_istream_state_serialized_size();
  if ((v11 + v11 * v10) + 52 > a3)
  {
    aj_log_error("Decode", "Table size too small to contain expected data");
    return 12;
  }

  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  v12 = *(a1 + 16);
  if (v12 && *v12 == 217 && *(a1 + 24) == -9)
  {
    v13 = 1;
  }

  else
  {
    v14 = aj_istream_state_save(a1, v49);
    if (v14)
    {
      v4 = v14;
      v15 = "Could not save state when setting RA-table";
      goto LABEL_41;
    }

    v13 = 0;
  }

  v16 = (a2 + 36);
  v17 = aj_istream_state_serialized_size();
  if (v10)
  {
    v18 = 0;
    LODWORD(v4) = 0;
    v19 = v47 + 4;
    v20 = v17;
    do
    {
      aj_istream_state_deserialize(v19, v16);
      v16 = (v16 + v20);
      if (check_mcu_table(v19, a1))
      {
        v4 = 12;
      }

      else
      {
        v4 = v4;
      }

      ++v18;
      v19 += 20;
    }

    while (v18 < LODWORD(v47[0]));
  }

  else
  {
    v4 = 0;
  }

  if (v13)
  {
    aj_reset_mcustate((a1 + 11248), a1);
    v21 = *(a1 + 3540);
    if (*(a1 + 204))
    {
      if (*(a1 + 80))
      {
        v21 = 0;
      }

      else
      {
        v21 = v21;
      }
    }

    v22 = aj_istream_move_to_position(a1, v21);
    if (v22)
    {
      return v22;
    }
  }

  else
  {
    v22 = aj_istream_state_restore(a1, v49);
    if (v22)
    {
      return v22;
    }
  }

  if (v4)
  {
    return v4;
  }

  v23 = *v16;
  v24 = v16[1];
  v43 = *v16;
  v44 = v24;
  v25 = v16[2];
  v26 = v16[3];
  v45 = v25;
  v46 = v26;
  v4 = 12;
  v15 = "Table data is corrupt";
  if ((*v16 - 0x10000) < 0xFFFF0001 || (v24 - 0x10000) < 0xFFFF0001 || (v25 - 0x10000) < 0xFFFF0001 || (v26 - 0x10000) < 0xFFFF0001 || v23 != (v25 + *(a1 + 3800) - 1) / v25 || v24 != (v26 + *(a1 + 3804) - 1) / v26)
  {
LABEL_41:
    aj_log_error("Decode", v15);
    return v4;
  }

  if (((LODWORD(v47[0]) + v24 * v23) * aj_istream_state_serialized_size()) + 52 <= a3)
  {
    *(&v48 + 1) = v16 + 4;
    v27 = aj_istream_state_serialized_size();
    *(a1 + 3840) = 0;
    *(a1 + 3836) = v45;
    *(a1 + 3832) = v46;
    v28 = v44;
    *(a1 + 3852) = v43;
    *(a1 + 3848) = v44;
    v29 = 8 * v44;
    v30 = *(a1 + 13032);
    if (v30)
    {
      free(v30);
      v28 = *(a1 + 3848);
    }

    v31 = malloc_type_calloc(1uLL, v29 + 20 * v43 * v28, 0xAF89E731uLL);
    *(a1 + 13032) = v31;
    *(a1 + 3816) = v31;
    if (v31)
    {
      *(a1 + 3824) = v31;
      v32 = *(a1 + 3848);
      if (v32 >= 1)
      {
        v33 = 0;
        v34 = &v31[v29];
        v35 = *(a1 + 3852);
        do
        {
          *(*(a1 + 3824) + v33) = v34;
          v33 += 8;
          v34 += 20 * v35;
        }

        while (8 * v32 != v33);
        v36 = 0;
        v37 = *(&v48 + 1);
        do
        {
          if (v35 >= 1)
          {
            v38 = 0;
            for (i = 0; i < v35; ++i)
            {
              aj_istream_state_deserialize(*(*(a1 + 3824) + 8 * v36) + v38, v37);
              v37 += v27;
              v35 = *(a1 + 3852);
              v38 += 20;
            }

            LODWORD(v32) = *(a1 + 3848);
          }

          ++v36;
        }

        while (v36 < v32);
      }

      v40 = LODWORD(v47[0]);
      if (LODWORD(v47[0]))
      {
        v41 = v47 + 4;
        v42 = a1 + 3864;
        do
        {
          *v42 = *v41;
          *(v42 + 16) = *(v41 + 4);
          v41 += 20;
          v42 += 24;
          --v40;
        }

        while (v40);
      }

      v4 = 0;
      *(a1 + 3856) = 3;
      *(a1 + 11136) = 0;
      *(a1 + 11152) = 0;
    }

    else
    {
      aj_log_error("Decode", "Could not allocate memory for RA-table");
      return 6;
    }
  }

  else
  {
    v4 = 12;
    aj_log_error("Decode", "Table size too small to contain expected data");
  }

  return v4;
}

uint64_t applejpeg_decode_get_ra_table_sz(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if ((*(a1 + 3856) & 0xFFFFFFFE) != 2 || !*(a1 + 3816) || !*(a1 + 3824))
  {
    return 0;
  }

  v3 = *(a1 + 3836);
  if (v3 < *a3)
  {
    v3 *= (v3 + *a3 - 1) / v3;
  }

  *a3 = v3;
  v4 = *(a1 + 3832);
  if (v4 < *a2)
  {
    v4 *= (v4 + *a2 - 1) / v4;
  }

  *a2 = v4;
  v5 = *(a1 + 3800);
  v6 = *(a1 + 3804);
  v7 = (v4 + v6 - 1) / v4;
  v8 = v5 < 4 || v6 < 4;
  v9 = v7 * ((v5 + *a3 - 1) / *a3);
  if (v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9 + 9;
  }

  return v10 * aj_istream_state_serialized_size() + 52;
}

uint64_t applejpeg_decode_dump_ra_table(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (!a2 || !a3)
  {
    aj_log_error("Decode", "Cannot take null input");
    return 8;
  }

  if (a3 >> 31)
  {
    aj_log_error("Decode", "Table size may not be larger than %d");
    return 5;
  }

  if ((a4 - 0x10000) < 0xFFFF0001 || (a5 - 0x10000) <= 0xFFFF0000)
  {
    aj_log_error("Decode", "Unsupported sampling interval");
    return 8;
  }

  v9 = *(a1 + 3832);
  if (v9 > a4 || (v10 = *(a1 + 3836), v10 > a5))
  {
    aj_log_error("Decode", "Illegal sampling interval. Use recommended intervals.");
    return 5;
  }

  if ((*(a1 + 3856) & 0xFFFFFFFE) != 2 || !*(a1 + 3816) || !*(a1 + 3824))
  {
    aj_log_error("Decode", "RA-table not created, cannot dump it");
    return 5;
  }

  v12 = *(a1 + 3800);
  v13 = ((a5 + v12 - 1) / a5);
  v14 = *(a1 + 3804);
  if (v12 < 4 || v14 < 4)
  {
    v16 = 1;
  }

  else
  {
    v16 = 9;
  }

  v27 = ((a4 + v14 - 1) / a4);
  v17 = v16 + v27 * v13;
  if ((v17 * aj_istream_state_serialized_size()) + 52 > a3)
  {
    aj_log_error("Decode", "Supplied table is not large enough");
    return 8;
  }

  v25 = a5 / v10;
  *a2 = *"APPLEJPGMCUCACHE";
  *(a2 + 16) = 4;
  v26 = a4 / v9;
  *(a2 + 20) = aj_istream_state_serialized_size() * v17 + 26;
  *(a2 + 28) = *(a1 + 96) + *(a1 + 52);
  *(a2 + 32) = v16;
  v18 = (a2 + 36);
  v19 = aj_istream_state_serialized_size();
  v20 = a1 + 3864;
  do
  {
    aj_istream_state_serialize(v18, v20);
    v18 = (v18 + v19);
    v20 += 24;
    --v16;
  }

  while (v16);
  *v18 = v13;
  v18[1] = v27;
  v18[2] = a5;
  v18[3] = a4;
  if (v27 >= 1)
  {
    v21 = 0;
    v22 = (v18 + 4);
    v23 = v13;
    do
    {
      if (v13 >= 1)
      {
        v24 = 0;
        do
        {
          aj_istream_state_serialize(v22, *(*(a1 + 3824) + 8 * v21 * v26) + v24);
          v22 += v19;
          v24 += 20 * v25;
          --v13;
        }

        while (v13);
      }

      ++v21;
      v13 = v23;
    }

    while (v21 != v27);
  }

  result = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t applejpeg_decode_get_bytes_read(uint64_t a1)
{
  result = *(a1 + 11248);
  if (result)
  {
    return aj_istream_get_pos(result);
  }

  return result;
}

uint64_t _get_qtables_helper(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (!a1 || !a4 || !a5)
  {
    aj_log_error("Decode", "Function cannot take NULL arguments");
    goto LABEL_10;
  }

  if (!(a2 | a3))
  {
    aj_log_error("Decode", "qtable argument may not be NULL");
    goto LABEL_10;
  }

  if (*(a1 + 12896) != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    result = 1;
    goto LABEL_11;
  }

  if (*(a1 + 206))
  {
    result = 0;
    *a4 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 120) < 1)
  {
    v8 = 0;
LABEL_34:
    result = 0;
    *a4 = v8;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *(a1 + 168 + 4 * v7);
    if (v10 > 3 || !*(a1 + 1232 + 4 * v10))
    {
      aj_log_error("Decode", "The file is referencing an undefined Q table");
      result = 4;
      goto LABEL_11;
    }

    if (!*(v17 + v10))
    {
      break;
    }

    *(a5 + 4 * v7) = *(v16 + v10);
LABEL_29:
    if (v7 <= 2 && ++v7 < *(a1 + 120))
    {
      continue;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    v11 = 0;
    v12 = *(a2 + 8 * v9);
  }

  else
  {
    v12 = 0;
    v11 = *(a3 + 8 * v9);
  }

  if (v12 | v11)
  {
    for (i = 0; i != 64; ++i)
    {
      v14 = *(a1 + 208 + (v10 << 8) + i * 4);
      v15 = aj_glob_zigzag[i];
      if (a2)
      {
        *(v12 + v15) = v14;
      }

      else
      {
        *(v11 + 2 * v15) = v14;
      }
    }

    *(a5 + 4 * v7) = v9;
    *(v16 + v10) = v9++;
    ++v8;
    *(v17 + v10) = 1;
    goto LABEL_29;
  }

  aj_log_error("Decode", "Null pointer passed as quantization table");
LABEL_10:
  result = 8;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t applejpeg_decode_get_segment_info(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  if (a1 && a3)
  {
    if (*(a1 + 12896) == 2)
    {
      if ((a2 & 0x80000000) != 0 || *(a1 + 3548) <= a2)
      {
        aj_log_error("Decode", "Index out of bounds");
        return 5;
      }

      else
      {
        v3 = 0;
        *a3 = *(*(a1 + 3552) + 16 * a2);
      }
    }

    else
    {
      aj_log_error("Decode", "Image session not opened");
      return 1;
    }
  }

  else
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  return v3;
}

uint64_t applejpeg_decode_get_precision(uint64_t a1)
{
  if (a1 && *(a1 + 12896) == 2)
  {
    return *(a1 + 124);
  }

  aj_log_error("Decode", "Invalid session", v1, v2);
  return 0;
}

uint64_t applejpeg_decode_set_option_outsize(uint64_t a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return 8;
  }

  if (a4 | a3 | a2)
  {
    if (a2 && a4 | a3)
    {
      aj_log_error("Decode", "Can not set both output scale and width/height");
    }

    else
    {
      if ((a3 == 0) == (a4 == 0))
      {
        v4 = 0;
        *(a1 + 3636) = a2;
        *(a1 + 3588) = a3;
        *(a1 + 3592) = a4;
        *(a1 + 12665) = 0;
        return v4;
      }

      aj_log_error("Decode", "Can not set only one output dimension");
    }
  }

  else
  {
    aj_log_error("Decode", "Must set either output scale or width/height");
  }

  return 5;
}

uint64_t applejpeg_decode_set_option_aspect(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 8;
  }

  if (a2 >= 4)
  {
    aj_log_error("Decode", "Unknown aspect ratio option: %d", a2);
    return 5;
  }

  else
  {
    result = 0;
    *(a1 + 3596) = a2;
    *(a1 + 3632) = a3;
    *(a1 + 12665) = 0;
  }

  return result;
}

uint64_t applejpeg_decode_set_option_outformat(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3568) = a2;
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_orientation(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  result = aj_transforms_from_orientation(a2, (a1 + 3640), (a1 + 3644), (a1 + 3648));
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_multithread(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3560) = a2;
  *(a1 + 3564) = a3;
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_crop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 8;
  }

  if ((a2 & 0x8000000080000000) != 0 || a3 < 1 || a3 <= 0)
  {
    aj_log_error("Decode", "Invalid cropregion: (%d,%d) %dx%d", a2, HIDWORD(a2), a3, HIDWORD(a3));
    return 5;
  }

  else
  {
    v3 = 0;
    *(a1 + 3572) = a2;
    *(a1 + 3580) = a3;
    *(a1 + 12665) = 0;
  }

  return v3;
}

uint64_t applejpeg_decode_set_option_upsampling(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  if (*(a1 + 124) > 8)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      aj_log_error("Decode", "Unknown upsampling method: %d", a2);
      return 5;
    }

    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  v2 = 0;
  *(a1 + 3656) = v3;
  *(a1 + 12665) = 0;
  return v2;
}

uint64_t applejpeg_decode_set_option_stride(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 8;
  }

  for (i = 0; i != 32; i += 8)
  {
    *(a1 + 3600 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 12665) = 0;
  return v3;
}

uint64_t applejpeg_decode_set_option_buildindex(uint64_t a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return 8;
  }

  *(a1 + 3660) = a2;
  if (a4 >= 1)
  {
    *(a1 + 3668) = a4;
  }

  if (a3 >= 1)
  {
    *(a1 + 3664) = a3;
  }

  v4 = 0;
  *(a1 + 12665) = 0;
  return v4;
}

uint64_t applejpeg_decode_set_option_callback(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3680) = a3;
  *(a1 + 3688) = a4;
  *(a1 + 3672) = a2;
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_force_app14(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 8;
  }

  if (a2 < 3)
  {
    result = 0;
    *(a1 + 3696) = 1;
    *(a1 + 3700) = a2;
    *(a1 + 12665) = 0;
  }

  else
  {
    aj_log_error("Decode", "Unknown App14 transform: %d", a2);
    return 5;
  }

  return result;
}

uint64_t applejpeg_decode_set_option_error_fill(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3704) = a2;
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_mosquito_spray(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3708) = a2;
  *(a1 + 12665) = 0;
  return result;
}

uint64_t applejpeg_decode_set_option_alternate_420_prediction(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 8;
  }

  result = 0;
  *(a1 + 3712) = a2;
  *(a1 + 12665) = 0;
  return result;
}

double applejpeg_decode_options_init(uint64_t a1)
{
  *a1 = 0x100000001;
  *(a1 + 8) = 0;
  *(a1 + 12) = -1;
  *(a1 + 20) = -1;
  *(a1 + 32) = 0;
  *(a1 + 28) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0x1FF000000;
  *(a1 + 96) = xmmword_240AB61B0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t applejpeg_decode_get_output_dimensions(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 && a1[3224] == 2)
  {
    result = commit_decode_options_if_needed(a1);
    if (!result)
    {
      if (a2)
      {
        *a2 = a1[3168];
      }

      result = 0;
      if (a3)
      {
        *a3 = a1[3169];
      }
    }
  }

  else
  {
    aj_log_error("Decode", "Image session not opened");
    return 8;
  }

  return result;
}

uint64_t commit_decode_options_if_needed(uint64_t a1)
{
  v58[5] = *MEMORY[0x277D85DE8];
  v1 = a1 + 12288;
  if (*(a1 + 12665))
  {
    result = 0;
    goto LABEL_63;
  }

  v4 = *(a1 + 4076);
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  result = aj_check_options(a1 + 3560, (a1 + 120), 0);
  if (!result)
  {
    aj_init_bitmapinfo(a1 + 12672, (a1 + 120), a1 + 3560, v4);
    v52 = 0;
    result = aj_calculate_dimensions((a1 + 3560), a1 + 120, &v52 + 1, &v52, 0, 0, 0, 0, 0);
    if (!result)
    {
      result = aj_get_format_description(*(a1 + 3568), &v53);
      if (!result)
      {
        v6 = *(a1 + 3640);
        if (v6 == 270 || v6 == 90)
        {
          v52 = __PAIR64__(v52, HIDWORD(v52));
          *(&v54 + 1) = vrev64_s32(*(&v54 + 8));
        }

        v7 = *(a1 + 3568);
        if (v7 == 14)
        {
          result = aj_get_texture_size((a1 + 120), a1 + 3560, v56, v4, (a1 + 12784), a1 + 12800, (a1 + 12792));
          goto LABEL_61;
        }

        memset(v58, 0, 32);
        memset(v57, 0, sizeof(v57));
        if ((v7 - 25) < 2)
        {
          v8 = 0;
          v9 = 0;
          v10 = v7 != 25;
          v11 = *(a1 + 3800);
          v12 = *(a1 + 3792);
          v13 = *(a1 + 3804);
          v14 = *(a1 + 3796);
          do
          {
            if (v8 * 8)
            {
              v15 = 1;
            }

            else
            {
              v15 = v12;
            }

            v16 = (v11 * v15) << v10;
            if (v8 * 8)
            {
              v17 = 1;
            }

            else
            {
              v17 = v14;
            }

            v18 = *(a1 + 3600 + v8 * 8);
            if (v18)
            {
              v19 = v18 >= v16;
              v20 = v18 - v16;
              if (!v19)
              {
                goto LABEL_48;
              }

              v57[v8] = v20;
            }

            v21 = v16 * v13 * v17;
            v58[v8] = v21;
            v9 += v21;
            ++v8;
          }

          while (v8 != 3);
LABEL_24:
          v22 = 0;
          goto LABEL_57;
        }

        if (v7 == 7)
        {
          v23 = 2 * ((BYTE4(v52) & 1) + HIDWORD(v52));
          v24 = *(a1 + 3600);
          if (v24)
          {
            if ((v24 & 3) != 0 || (v19 = v24 >= v23, v25 = v24 - v23, !v19))
            {
              aj_log_error("Decode", "The set stride is smaller than the output size or unaligned", v5);
              goto LABEL_53;
            }

            v57[0] = v25;
            v23 = v24;
          }

          v22 = 0;
          v9 = v23 * v52;
        }

        else
        {
          if (DWORD1(v53) == 2)
          {
            v26 = 0;
            v9 = 0;
            v27 = v52;
            v28 = v52 & 1;
            if (HIDWORD(v54) == 2)
            {
              v27 = (v52 + 1) >> 1;
            }

            else
            {
              v28 = 0;
            }

            v50 = v27;
            v51 = v28 + v52;
            v29 = BYTE4(v52) & 1;
            if (DWORD2(v54) != 2)
            {
              v29 = 0;
            }

            v30 = v29 + HIDWORD(v52);
            if (DWORD2(v54) == 2)
            {
              v31 = (HIDWORD(v52) + 1) >> 1;
            }

            else
            {
              v31 = HIDWORD(v52);
            }

            v32 = v58;
            v33 = v57;
            v34 = &v51;
            v35 = 1;
            while (1)
            {
              v20 = v35;
              v36 = *(&v53 + v26 + 2) * v30;
              v37 = *(a1 + 3600 + 8 * v26);
              if (v37)
              {
                v19 = v37 >= v36;
                v38 = v37 - v36;
                if (!v19)
                {
LABEL_48:
                  aj_log_error("Decode", "Set stride is smaller than required row size", v20);
                  goto LABEL_53;
                }

                *v33 = v38;
                v36 = v37;
              }

              v35 = 0;
              v39 = *v34 * v36;
              v9 += v39;
              v34 = &v50;
              *v32 = v39;
              v30 = v31;
              v33 = &v57[1];
              v32 = &v58[1];
              v26 = 1;
              if ((v20 & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }

          v40 = *(a1 + 3600);
          v22 = SDWORD2(v53) * SHIDWORD(v52);
          if (v40)
          {
            v19 = v40 >= v22;
            v41 = v40 - v22;
            if (!v19)
            {
              aj_log_error("Decode", "Set stride is smaller than output size", v5);
LABEL_53:
              result = 5;
LABEL_61:
              if (!result)
              {
                *(v1 + 584) = 0;
                *(v1 + 377) = 1;
              }

              goto LABEL_63;
            }

            v57[0] = v41;
            v22 = v40;
          }

          v9 = v22 * v52;
        }

        v58[0] = v9;
LABEL_57:
        v42 = DWORD1(v53);
        if (SDWORD1(v53) >= 1)
        {
          v43 = (a1 + 12840);
          v44 = v57;
          v45 = v58;
          v46 = DWORD1(v53);
          do
          {
            v47 = *v45++;
            *(v43 - 5) = v47;
            v48 = *v44++;
            *v43++ = v48;
            --v46;
          }

          while (v46);
        }

        result = 0;
        *(a1 + 12832) = v42;
        *(a1 + 12784) = v9;
        *(a1 + 12792) = v22;
        goto LABEL_61;
      }
    }
  }

LABEL_63:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t applejpeg_decode_get_output_buffer_size(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 && *(a1 + 12896) == 2)
  {
    result = commit_decode_options_if_needed(a1);
    if (!result)
    {
      if (a2)
      {
        *a2 = *(a1 + 12784);
      }

      if (a4)
      {
        v9 = *(a1 + 12800);
        v10 = *(a1 + 12816);
        *(a4 + 32) = *(a1 + 12832);
        *a4 = v9;
        *(a4 + 16) = v10;
      }

      result = 0;
      if (a3)
      {
        *a3 = *(a1 + 12792);
      }
    }
  }

  else
  {
    aj_log_error("Decode", "Image session not opened");
    return 8;
  }

  return result;
}

uint64_t applejpeg_decode_get_planar_output_buffer_size(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (!a1 || *(a1 + 12896) != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 8;
  }

  result = commit_decode_options_if_needed(a1);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 10740) - 25) >= 2)
  {
    aj_log_error("Decode", "Function can only be called for tri-planar output");
    return 8;
  }

  if (a2)
  {
    *a2 = *(a1 + 12784);
  }

  if (a3)
  {
    *a3 = *(a1 + 4188);
  }

  if (a4)
  {
    v13 = *(a1 + 12800);
    v14 = *(a1 + 12816);
    *(a4 + 32) = *(a1 + 12832);
    *a4 = v13;
    *(a4 + 16) = v14;
  }

  if (a5)
  {
    v15 = *(a1 + 3800);
    *a5 = *(a1 + 3792) * v15;
    a5[1] = v15;
    a5[2] = v15;
    a5[3] = 0;
  }

  result = 0;
  if (a6)
  {
    v16 = *(a1 + 3804);
    *a6 = *(a1 + 3796) * v16;
    a6[1] = v16;
    a6[2] = v16;
    a6[3] = 0;
  }

  return result;
}

uint64_t applejpeg_decode_set_options(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, _DWORD *a6, _DWORD *a7)
{
  if (a1 && a2 && a3)
  {
    if (*(a1 + 12896) == 2)
    {
      *(a1 + 3560) = *a2;
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v13 = *(a2 + 64);
      *(a1 + 3608) = *(a2 + 48);
      *(a1 + 3624) = v13;
      *(a1 + 3576) = v11;
      *(a1 + 3592) = v12;
      v14 = *(a2 + 80);
      v15 = *(a2 + 96);
      v16 = *(a2 + 112);
      *(a1 + 3688) = *(a2 + 128);
      *(a1 + 3656) = v15;
      *(a1 + 3672) = v16;
      *(a1 + 3640) = v14;
      *(a1 + 3696) = 0;
      *(a1 + 3700) = 0;
      *(a1 + 3704) = 1;
      *(a1 + 3708) = 2;
      *(a1 + 3712) = 0;
      if (*(a1 + 124) >= 9)
      {
        *(a1 + 3656) = 4;
      }

      *(a1 + 12665) = 0;
      if (a4)
      {
        *(a4 + 32) = 0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      if (a6)
      {
        *a6 = 0;
      }

      if (a7)
      {
        *a7 = 0;
      }

      result = applejpeg_decode_get_output_dimensions(a1, a6, a7);
      if (!result)
      {

        return applejpeg_decode_get_output_buffer_size(a1, a3, a5, a4);
      }
    }

    else
    {
      aj_log_error("Decode", "Image session not opened");
      return 1;
    }
  }

  else
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  return result;
}

uint64_t applejpeg_decode_image_all(_DWORD *a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  if (!a1 || !a2 || !a4)
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  if (a3 - 5 <= 0xFFFFFFFB)
  {
    aj_log_error("Decode", "nplanes clearly incorrect: %d");
    return 8;
  }

  if (a1[3224] != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 1;
  }

  v10 = a1[50];
  v11 = a1[32];
  v12 = a1[33];
  kdebug_trace();
  v7 = commit_decode_options_if_needed(a1);
  if (!v7)
  {
    v13 = a1[3208];
    if (a3 != 1 && v13 != a3)
    {
      aj_log_error("Decode", "The number of allocated planes needs to match the output format or be one: %d");
      return 8;
    }

    v14 = 0;
    v15 = (a1 + 3200);
    v16 = a2 + 1;
    do
    {
      if (!*(v16 - 1) || !*v16)
      {
        aj_log_error("Decode", "Destination pointer or size is NULL/zero for plane ind: %d");
        return 8;
      }

      ++v14;
      v16 += 2;
    }

    while (a3 != v14);
    if (v13 <= a3)
    {
      v20 = 0;
      v21 = a1 + 3210;
      v22 = (a2 + 1);
      while (1)
      {
        v23 = *v22;
        v22 += 2;
        if (v23 < *(v21 - 5) - *v21)
        {
          break;
        }

        ++v21;
        if (-a3 == --v20)
        {
          goto LABEL_33;
        }
      }

      aj_log_error("Decode", "Destination plane %d is too small for decoded data: %zu vs %zu");
      return 8;
    }

    if (v13 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = a1[3208];
      do
      {
        v19 = *v15++;
        v17 += v19;
        --v18;
      }

      while (v18);
    }

    if (a2[1] < (v17 - *&a1[2 * v13 + 3208]))
    {
      *v42 = a2[1];
      aj_log_error("Decode", "Destination buffer is too small for decoded data: %zu vs %zu");
      return 8;
    }

LABEL_33:
    v24 = a1[1019];
    *(a4 + 32) = a3;
    v25 = a2;
    v26 = a4;
    v27 = a3;
    do
    {
      v28 = *v25;
      v25 += 2;
      *v26++ = v28;
      --v27;
    }

    while (v27);
    aj_init_bitmapinfo(a4 + 40, a1 + 30, (a1 + 890), v24);
    v29 = a1[3241];
    if (!v29)
    {
      log_basic_decode_info(OS_LOG_TYPE_DEBUG, a1, 1, a1 + 930, (a1 + 30), (a1 + 890));
      v29 = a1[3241];
    }

    a1[1021] = v29;
    v30 = perform_decode((a1 + 3242), (a1 + 3252), (a1 + 1040), (a1 + 930), a1 + 2784, a2, a3, (a1 + 30), (a1 + 890), a1);
    v7 = v30;
    if (v30 != -2)
    {
      if (v30)
      {
        if (v30 == -1)
        {
          os_log_object = aj_get_os_log_object();
          if (os_log_type_enabled(os_log_object, OS_LOG_TYPE_ERROR))
          {
            applejpeg_decode_image_all_cold_1();
          }
        }

        else
        {
          v39 = aj_get_os_log_object();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            applejpeg_decode_image_all_cold_3();
          }
        }

        log_basic_decode_info(OS_LOG_TYPE_ERROR, a1, 1, a1 + 930, (a1 + 30), (a1 + 890));
      }

      else
      {
        v32 = aj_get_os_log_object();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          applejpeg_decode_image_all_cold_2(a1, v32, v33, v34, v35, v36, v37, v38);
        }
      }
    }

    v40 = a1[895];
    v41 = a1[896];
    kdebug_trace();
  }

  return v7;
}

uint64_t perform_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  if ((*(a4 + 360) | 2) == 2)
  {
    v18 = a10;
    LODWORD(v19) = *(a8 + 3420);
    if (*(a8 + 84) && *(a10 + 80))
    {
      *(a4 + 360) = 0;
      v20 = mmap_multiscan(a2, a4 + 368, v30, a10, a8);
      v19 = v20;
      if (v20)
      {
        if (v20 != -2)
        {
LABEL_26:
          dec_free_allocations(a3, a1, a5);
          return v19;
        }

        LODWORD(v19) = 0;
        *(a4 + 360) = 2;
      }

      v18 = v30;
    }

    v21 = aj_decode_init(a1, a2, a3, a4, a5, a8, v18, a9, a6, a7, 0, v19);
    if (v21)
    {
      goto LABEL_22;
    }
  }

  v22 = aj_decode_all_mt(a3, a5);
  v19 = v22;
  if (*(a4 + 360) == 2)
  {
    v23 = *(a4 + 408) + 288 * *(a4 + 404);
    v24 = *(v23 - 176);
    if (!v24 || *v24 != 217)
    {
      v25 = *(v23 - 160);
      if (v25 < 2)
      {
        goto LABEL_25;
      }

      v26 = (*(v23 - 184) + 1);
      v27 = v25 - 1;
      while (1)
      {
        if (*(v26 - 1) == 255)
        {
          v28 = *v26;
          if (v28 != 255)
          {
            break;
          }
        }

        ++v26;
        if (!--v27)
        {
          goto LABEL_25;
        }
      }

      if (v28 != 217)
      {
LABEL_25:
        *(a4 + 401) = 0;
        v19 = 4294967294;
        handle_error_from_decode(0xFFFFFFFE, a2, a4, a5);
        goto LABEL_26;
      }
    }
  }

  if (!v22)
  {
    goto LABEL_23;
  }

  if (v22 != -2)
  {
    v21 = handle_error_from_decode(v22, a2, a4, a5);
LABEL_22:
    v19 = v21;
LABEL_23:
    *(a4 + 360) = 0;
    goto LABEL_26;
  }

  *(a4 + 360) = 1;
  return v19;
}

uint64_t applejpeg_decode_get_rows_written(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 11176);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t applejpeg_decode_image_row_texture(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v50[4] = *MEMORY[0x277D85DE8];
  if (!a1 || (v4 = a2) == 0 || !*a2 || !a4 || !a3 || !a2[1])
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    result = 8;
    goto LABEL_11;
  }

  if (!*(a1 + 4076))
  {
    aj_log_error("Decode", "decode_row_texture is only allowed when recoding.");
    goto LABEL_15;
  }

  if (*(a1 + 124) >= 9)
  {
    aj_log_error("Decode", "Row decoding does not support 12-bit jpeg");
LABEL_15:
    result = 3;
    goto LABEL_11;
  }

  if (*(a1 + 206))
  {
    aj_log_error("Decode", "Row-wise decompression for LOSSLESS is not implemented.");
    goto LABEL_15;
  }

  result = commit_decode_options_if_needed(a1);
  if (result)
  {
    goto LABEL_11;
  }

  if (check_decode_row_options(a1 + 3560))
  {
    aj_log_error("Decode", "Illegal options for row decoding.");
    result = 5;
    goto LABEL_11;
  }

  if (!*(a1 + 12872))
  {
    LODWORD(result) = aj_decode_row_init(a1, a3, v4);
    if (result)
    {
LABEL_52:
      if (result == -2)
      {
        result = 9;
      }

      else
      {
        result = result;
      }

      goto LABEL_11;
    }
  }

  v10 = 0;
  v11 = *(a1 + 10696) + *(a1 + 10688);
  v12 = *(a1 + 10728) + *(a1 + 10720);
  v13 = *v4;
  LODWORD(v4) = 0;
  v14 = *(a1 + 4208);
  v15 = *(a1 + 12892);
  LODWORD(v16) = *(a1 + 4332);
  v49 = v13;
  while (1)
  {
    v17 = *(a1 + 10672);
    v18 = v17 * v10;
    v19 = *(a1 + 10704);
    v20 = v13 + 8 * v17 * v14 + v19 * v4;
    v21 = v20 + 8 * v19;
    v22 = *(a1 + 10648);
    v23 = v16 * v15;
    if (v15 >= *(a1 + 11000) - *(a1 + 10996) || v23 >= v22)
    {
      break;
    }

    v25 = v13 + v18;
    v50[0] = v13 + v18;
    v50[1] = v20;
    v26 = v21;
    v50[2] = v21;
    v50[3] = 0;
    if (*(a1 + 10740) == 14)
    {
      aj_reset_texture_buffer_ptrs((a1 + 4160), a1 + 11704, v50);
    }

    LODWORD(result) = aj_decode_row(a1 + 4160, a1 + 11136);
    if (result)
    {
      goto LABEL_52;
    }

    LODWORD(v16) = *(a1 + 4332);
    if (*(a1 + 10672) <= v11)
    {
      goto LABEL_34;
    }

    v13 = v49;
    v27 = v26;
    if (v16 >= 1)
    {
      v47 = v4;
      v28 = 0;
      v29 = v25 + v11;
      do
      {
        memset((v29 + *(a1 + 10672) * v28), *(v29 - 1 + *(a1 + 10672) * v28), *(a1 + 10672) - v11);
        ++v28;
        v16 = *(a1 + 4332);
      }

      while (v28 < v16);
      LODWORD(v4) = v47;
LABEL_34:
      v13 = v49;
      v27 = v26;
    }

    v14 = *(a1 + 4208);
    if (*(a1 + 10704) <= v12)
    {
      v30 = v16 / v14;
    }

    else
    {
      v30 = v16 / v14;
      if (v16 / v14 >= 1)
      {
        v46 = v10;
        v31 = 0;
        v32 = v20 + v12;
        v33 = v27 + v12;
        v34 = v27 + v12 - 1;
        do
        {
          memset((v32 + *(a1 + 10704) * v31), *(v32 - 1 + *(a1 + 10704) * v31), *(a1 + 10704) - v12);
          memset((v33 + *(a1 + 10704) * v31), *(v34 + *(a1 + 10704) * v31), *(a1 + 10704) - v12);
          ++v31;
          LODWORD(v16) = *(a1 + 4332);
          v14 = *(a1 + 4208);
          v30 = v16 / v14;
        }

        while (v31 < v16 / v14);
        v10 = v46;
        v13 = v49;
      }
    }

    v10 += v16;
    v4 = (v30 + v4);
    v15 = *(a1 + 12892) + 1;
    *(a1 + 12892) = v15;
    if (v4 >= 8)
    {
      v23 = v15 * v16;
      v22 = *(a1 + 10648);
      if (v23 < v22)
      {
        goto LABEL_56;
      }

      v17 = *(a1 + 10672);
      v18 = v17 * v10;
      v19 = *(a1 + 10704);
      v20 = v13 + 8 * v14 * v17 + v19 * v4;
      v21 = v20 + 8 * v19;
      break;
    }
  }

  v35 = v21;
  v36 = v23 - v22;
  v10 -= v36;
  v37 = v36 / v14;
  v48 = v4;
  v38 = v4 - v36 / v14;
  if (v10 < 8 * v14)
  {
    v39 = (v13 + v18 - v17 * v36);
    do
    {
      memcpy(v39, &v39[-v17], v17);
      ++v10;
      v17 = *(a1 + 10672);
      v39 += v17;
    }

    while (v10 < 8 * *(a1 + 4208));
  }

  if (v38 > 7)
  {
    LODWORD(v4) = v38;
  }

  else
  {
    v40 = v19 * v37;
    v41 = (v20 - v40);
    v42 = (v35 - v40);
    v43 = *(a1 + 10704);
    v44 = v37 - v48 + 8;
    do
    {
      memcpy(v41, &v41[-v43], v43);
      memcpy(v42, &v42[-*(a1 + 10704)], *(a1 + 10704));
      v43 = *(a1 + 10704);
      v41 += v43;
      v42 += v43;
      --v44;
    }

    while (v44);
    LODWORD(v4) = 8;
  }

LABEL_56:
  result = 0;
  *(a3 + 44) = v10;
  *(a3 + 24) = v10;
  *(a3 + 76) = v4;
  *(a3 + 56) = v4;
  v45 = *(a1 + 11000) - (*(a1 + 10996) + *(a1 + 12892));
  *a4 = v45;
  if (*(a1 + 4332) * *(a1 + 12892) >= *(a1 + 10648))
  {
    v45 = 0;
  }

  *a4 = v45;
  if (!v45)
  {
    dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
    result = 0;
    *(a1 + 12872) = 0;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t check_decode_row_options(uint64_t a1)
{
  if (!*(a1 + 80) && !*(a1 + 88) && !*(a1 + 120))
  {
    v2 = *(a1 + 8);
    if (v2 < 7 || v2 - 14 <= 1)
    {
      v3 = 0;
      while (!*(a1 + 40 + 8 * v3))
      {
        if (v2 == 14 && v3++ <= 1)
        {
          continue;
        }

        if (*(a1 + 100))
        {
          return 5;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return 5;
}

uint64_t aj_decode_row_init(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 4084) = *(a1 + 12964);
  *(a1 + 12872) = 0;
  *(a1 + 12888) = 0;
  *(a1 + 12880) = 0;
  v6 = *(a1 + 3540);
  if (*(a1 + 204) && *(a1 + 80))
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = mmap_multiscan(a1 + 13008, a1 + 4088, &v22, a1, a1 + 120);
    if (v7)
    {
      return v7;
    }

    v6 = 0;
    *(a1 + 112) = v29;
    v9 = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v9;
    *(a1 + 96) = v28;
    v10 = v23;
    *a1 = v22;
    *(a1 + 16) = v10;
    v11 = v25;
    *(a1 + 32) = v24;
    *(a1 + 48) = v11;
  }

  v12 = aj_decode_init(a1 + 12968, a1 + 13008, a1 + 4160, a1 + 3720, (a1 + 11136), (a1 + 120), a1, a1 + 3560, a3, 1, 1, v6);
  if (v12)
  {
    v8 = v12;
    dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
  }

  else
  {
    if (*(a1 + 10740) == 14)
    {
      v13 = *(a1 + 10672);
      v14 = *(a1 + 10688);
      v15 = *(a1 + 10720);
      *(a2 + 48) = *(a1 + 10704);
      *(a2 + 64) = v15;
      *(a2 + 16) = v13;
      *(a2 + 32) = v14;
      v16 = *(a1 + 4332);
      *(a2 + 24) = v16;
      v17 = v16 / *(a1 + 4208);
      *(a2 + 56) = v17;
      *(a2 + 44) = v16;
      *(a2 + 76) = v17;
    }

    else
    {
      v18 = *(a1 + 4332);
      v19 = (*(*(a1 + 12624) + 8))();
      *(a1 + 12888) = v19;
      if (*(a1 + 12976))
      {
        free(*(a1 + 12976));
        *(a1 + 12976) = 0;
        v19 = *(a1 + 12888);
      }

      v20 = malloc_type_calloc(1uLL, *(a1 + 12792) * v19, 0x22A7164CuLL);
      *(a1 + 12976) = v20;
      if (!v20)
      {
        aj_log_error("Decode", "Could not allocate memory for row buffer");
        return 6;
      }

      *(a1 + 4224) = v20;
      paint_row_buffer(a1, a1 + 4160, *(a1 + 12888));
    }

    v8 = 0;
    *(a2 + 8) = *(a1 + 3568);
    *a2 = *(a1 + 10644);
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a1 + 12872) = 1;
  }

  return v8;
}

uint64_t applejpeg_decode_image_row(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (!a1 || !a2 || !*a2 || !a4 || !a3 || !*(a2 + 8))
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a1 + 12896) != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 1;
  }

  result = commit_decode_options_if_needed(a1);
  if (result)
  {
    return result;
  }

  if (*(a2 + 8) < *(a1 + 12792))
  {
    aj_log_error("Decode", "Destination buffer size too small (or destination buffer NULL)");
    return 8;
  }

  if (*(a1 + 3568) == 14 && !*(a1 + 4076))
  {
    aj_log_error("Decode", "Illegal options for texture format");
    return 3;
  }

  if (*(a1 + 206))
  {
    aj_log_error("Decode", "Row-wise decompression for LOSSLESS is not implemented.");
    return 3;
  }

  if (*(a1 + 124) >= 9)
  {
    aj_log_error("Decode", "Row decoding does not support 12-bit jpeg");
    return 3;
  }

  if (check_decode_row_options(a1 + 3560))
  {
    aj_log_error("Decode", "Illegal options for row decoding.");
    return 5;
  }

  if (*(a1 + 12872) || (LODWORD(result) = aj_decode_row_init(a1, a3, a2), !result))
  {
    v9 = *(a1 + 12876);
    if (v9 < *(a1 + 10648))
    {
      v10 = *(a1 + 10744);
      v11 = *(a1 + 10664) + v10;
      if (v9 < v10 || v9 >= v11)
      {
        if (!v9 || v9 == v11)
        {
          paint_row_buffer(a1, a1 + 4160, 1);
        }

        v12 = 0;
        *(a1 + 12880) = 1;
      }

      else
      {
        if (!*(a1 + 12880))
        {
          *(a1 + 11172) = 0;
          while (1)
          {
            v16 = aj_decode_row(a1 + 4160, a1 + 11136);
            if (v16)
            {
              break;
            }

            v17 = *(a1 + 11172);
            if (v17)
            {
              v12 = 0;
              *(a1 + 12880) = v17;
              *(a1 + 12884) = 0;
              goto LABEL_41;
            }
          }

          v13 = v16;
          goto LABEL_42;
        }

        v12 = *(a1 + 12884);
      }

LABEL_41:
      memcpy(*a2, (*(a1 + 12976) + *(a1 + 12792) * v12), *(a1 + 12792));
      v13 = 0;
      result = 0;
      v14 = vadd_s32(*(a1 + 12876), 0xFFFFFFFF00000001);
      *(a1 + 12876) = v14;
      ++*(a1 + 12884);
      if (v14.i32[0] < *(a1 + 10648))
      {
LABEL_50:
        *a4 = *(a1 + 10648) - *(a1 + 12876);
        return result;
      }

LABEL_42:
      if (*(a1 + 4120))
      {
        v13 = aj_handle_partial_progressive_decode(a1 + 4160);
      }

      dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
      *(a1 + 12872) = 0;
      if (v13 == -2)
      {
        v15 = 9;
      }

      else
      {
        v15 = v13;
      }

      if (v13)
      {
        result = v15;
      }

      else
      {
        result = 0;
      }

      goto LABEL_50;
    }

    aj_log_error("Decode", "No more rows to write");
    return 1;
  }

  if (result == -2)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

char *paint_row_buffer(char *result, uint64_t a2, int a3)
{
  v19 = 0;
  v5 = *(result + 1622);
  v6 = *(a2 + 6580);
  if (v6 == 15)
  {
    v7 = *(result + 1019);
    result = aj_get_internal_format(*(result + 30), *(a2 + 6937), *(a2 + 6940));
    if (result == 5 && v7 == 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = result;
    }

    if (v9 == 5)
    {
      v19 = 8421631;
    }

    else if (v9 == 3)
    {
      v19 = -1;
    }
  }

  else if (v6 == 6)
  {
    *(&v19 + 1) = -32640;
  }

  v10 = *(a2 + 28);
  v11 = *(a2 + 6492);
  v12 = (v11 * v10);
  v13 = *(a2 + 6592);
  v14 = *(a2 + 6596);
  if (*(a2 + 6592))
  {
    v16 = 0;
    v17 = v13;
    v18 = a3;
    v15[0] = v11 - v14;
    v15[1] = 0;
    v15[2] = v14;
    v15[3] = a3;
    aj_paint_region(v5, *(a2 + 6808), &v19, v10, v11, (v11 * v10), a3, &v16);
    result = aj_paint_region(v5, *(a2 + 6808), &v19, v10, *(a2 + 6492), v12, a3, v15);
  }

  if (*(a2 + 6584) || *(a2 + 6588))
  {
    v16 = 0;
    v17 = *(a2 + 6492);
    v18 = a3;
    return aj_paint_region(v5, *(a2 + 6808), &v19, v10, v17, v12, a3, &v16);
  }

  return result;
}

uint64_t check_mcu_table(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) >= 5u)
  {
    v6 = *(a1 + 12);
    aj_log_error("Decode", "Too many check state stream bytes (%d > %d)");
    return 12;
  }

  result = aj_istream_state_restore(a2, a1);
  if (!result)
  {
    if (*(a1 + 12))
    {
      v5 = 0;
      while (*(a1 + 8 + v5) == *(*(a2 + 8) + v5))
      {
        if (*(a1 + 12) == ++v5)
        {
          return 0;
        }
      }

      v7 = *(a1 + 8 + v5);
      aj_log_error("Decode", "Image data does not match data in supplied RA-table: Stream byte %d differs, 0x%X != 0x%X");
      return 12;
    }

    return 0;
  }

  return result;
}

uint64_t mmap_multiscan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 + 16);
  v9 = *(a2 + 16);
  if (v9)
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v12 = *(a4 + 32);
    v13 = *(a4 + 52);
    v14 = *(a4 + 48) - v12;
    *a2 = v14;
    if (v13)
    {
      v15 = v13 - v14;
    }

    else
    {
      v16 = estimate_jpeg_size(*(a5 + 8), *(a5 + 12));
      if (v16 >= 5242880)
      {
        v15 = 5242880;
      }

      else
      {
        v15 = v16;
      }

      v12 = *(a4 + 32);
    }

    if (v15 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v15;
    }

    v18 = *(a1 + 16);
    if (v18)
    {
      free(v18);
    }

    v19 = malloc_type_calloc(1uLL, v17, 0xDF03590AuLL);
    *(a1 + 16) = v19;
    *v10 = v19;
    if (!v19)
    {
      aj_log_error("Decode", "Could not allocate memory for input mapping");
      return 6;
    }

    *(a2 + 8) = v17;
    memcpy(v19, *(a4 + 8), *(a4 + 32));
    v11 = *(a4 + 32);
    *(a2 + 4) = v11;
    v9 = *(a2 + 16);
  }

  v20 = *(a2 + 8);
  v21 = *(a4 + 36);
  v22 = *(a4 + 40);
  *(a4 + 40) = v9;
  *(a4 + 8) = v9 + v11;
  *(a4 + 32) = 0;
  *(a4 + 36) = v20;
  *(a4 + 104) = v9;
  if (*(a4 + 56) != 2)
  {
    v36 = v21;
    v25 = 0;
    v26 = v20 - v11;
    while (1)
    {
      if (!v26)
      {
        v27 = *(a2 + 8) + (*(a2 + 8) >> 1);
        if (v27 >> 31)
        {
          return 1;
        }

        v28 = *(a2 + 16);
        v29 = malloc_type_malloc(*(a2 + 8) + (*(a2 + 8) >> 1), 0x20D67D9CuLL);
        if (!v29)
        {
          return 6;
        }

        v30 = v29;
        memcpy(v29, v28, *(a2 + 4));
        *(a1 + 16) = v30;
        *(a2 + 16) = v30;
        *(a2 + 8) = v27;
        if (v28)
        {
          free(v28);
          LODWORD(v27) = *(a2 + 8);
          v30 = *(a2 + 16);
        }

        v25 = 0;
        v31 = *(a2 + 4);
        v26 = v27 - v31;
        *(a4 + 40) = v30;
        *(a4 + 8) = &v30[v31];
        *(a4 + 32) = 0;
        *(a4 + 36) = v27;
        *(a4 + 104) = v30;
      }

      v32 = aj_istream_move_forward(a4);
      if (v32)
      {
        v23 = v32;
        aj_log_error("Decode", "Could not read file into memory");
        v11 = *(a2 + 4);
        v24 = *(a4 + 56);
        goto LABEL_36;
      }

      v33 = *(a4 + 32);
      v11 = *(a2 + 4) + v33 - v25;
      *(a2 + 4) = v11;
      v34 = *(a4 + 52);
      if (v34 && v34 == *a2 + v11)
      {
        v23 = 0;
        v24 = 2;
        *(a4 + 56) = 2;
        goto LABEL_36;
      }

      v24 = *(a4 + 56);
      if (v24 == 1)
      {
        v23 = 4294967294;
        goto LABEL_36;
      }

      v26 -= v33 - v25;
      v25 = v33;
      if (v24 == 2)
      {
        v23 = 0;
LABEL_36:
        v21 = v36;
        goto LABEL_37;
      }
    }
  }

  v23 = 0;
  v24 = 2;
LABEL_37:
  *(a4 + 40) = v22;
  *(a4 + 8) = v22;
  *(a4 + 32) = 0;
  *(a4 + 36) = v21;
  *(a4 + 104) = 0;
  *(a2 + 24) = v11;
  aj_istream_init_mem(a3, v10, *(a4 + 112), v24);
  *(a3 + 96) = *a2;
  return v23;
}