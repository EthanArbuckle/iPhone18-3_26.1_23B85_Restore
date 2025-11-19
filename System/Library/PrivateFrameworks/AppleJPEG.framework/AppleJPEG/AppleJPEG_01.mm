uint64_t arithmetic_decode_symbols(uint64_t a1, unsigned __int16 **a2, _BYTE *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v30 = a1;
  while (1)
  {
    v7 = *a2;
    v8 = (*a2 + 2);
    v9 = **a2;
    v10 = *a1 >> 15;
    v31 = a2 + 1;
    if (**a2)
    {
      v11 = 0;
      v12 = *(a1 + 8) / v10;
      if (v12 >= 0x7FFF)
      {
        LOWORD(v12) = 0x7FFF;
      }

      while (*(v8 + 2 * v11) <= v12)
      {
        if (v9 == ++v11)
        {
          v13 = **a2;
          LODWORD(v11) = **a2;
          goto LABEL_11;
        }
      }

      v13 = **a2;
    }

    else
    {
      v13 = 0;
      LODWORD(v11) = 0;
    }

LABEL_11:
    v14 = &v7[v13 + 2];
    v15 = &v14[v13];
    v16 = v15[2];
    if (v11 >= v16)
    {
      break;
    }

    v17 = v7 + 1;
    v18 = (v8 + 2 * v11);
    v19 = *(v18 - 1);
    LOWORD(v18) = *v18 - v19;
    ++v14[v11];
    v20 = *(a1 + 24);
    ++*v15;
    ++v15[1];
    result = arithmetic_decode(a1, v20, v19, v19 + v18, v10);
    if (result)
    {
      return result;
    }

    *a3 = v11;
    v22 = v15[1];
    a1 = v30;
    a2 = v31;
    if (v22 >= 0x800)
    {
      v22 = 0;
      if (v9)
      {
        do
        {
          v23 = *v14 + 1;
          *v14++ = v23 >> 1;
          v22 += v23 >> 1;
          --v13;
        }

        while (v13);
      }

      v15[1] = v22;
    }

    v24 = *v15;
    if (v22 <= 0x7Fu)
    {
      v25 = v17;
      if ((v22 & 1) == 0 && v24 <= 0x80)
      {
        goto LABEL_41;
      }

LABEL_39:
      v29 = v15[2];
LABEL_40:
      renormalize_probs(v25, v9, v29);
      a1 = v30;
      goto LABEL_41;
    }

    v25 = v17;
    if (v24 >= 0x81)
    {
      goto LABEL_39;
    }

LABEL_41:
    ++a3;
    if (!--v4)
    {
      return 0;
    }
  }

  result = arithmetic_decode(a1, *(a1 + 24), *(v8 + 2 * v11 - 2), v7[v11 + 2], v10);
  if (result)
  {
    return result;
  }

  v26 = -1;
  do
  {
    ++v26;
  }

  while (v26 <= 0x1F && 1 << v26 < v9);
  v27 = *v30 >> v26;
  v28 = *(v30 + 8) / v27 >= ~(-1 << v26) ? ~(-1 << v26) : *(v30 + 8) / v27;
  result = arithmetic_decode(v30, *(v30 + 24), v28, v28 + 1, v27);
  if (result)
  {
    return result;
  }

  *a3 = v28;
  if (v28 < v9)
  {
    if (v28 > v16)
    {
      do
      {
        ++v7[v13 + 3 + v16];
        ++v15[1];
        ++v16;
      }

      while (v16 < v28);
    }

    if (v28 + 1 < v9)
    {
      ++v14[v28 + 1];
      ++v15[1];
    }

    ++v14[v28];
    ++v15[1];
    if (v28 + 2 == v9)
    {
      v29 = v9;
    }

    else
    {
      v29 = v28 + 1;
    }

    v15[2] = v29;
    a2 = v31;
    v25 = v7 + 1;
    goto LABEL_40;
  }

  aj_log_error(0, "Symbol is too large. %d > %d", v28, v9);
  return 7;
}

uint64_t arithmetic_encode_close(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  v4 = 4;
  while (1)
  {
    result = byte_plus_prev(a1, v2, HIBYTE(v3));
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 4) << 8;
    *(a1 + 4) = v3;
    if (!--v4)
    {
      result = aj_ostream_write_bytes(v2, *(a1 + 33), 1);
      if (!result)
      {
        if (*(a1 + 12))
        {
          while (1)
          {
            result = aj_ostream_write_bytes(v2, 255, 1);
            if (result)
            {
              break;
            }

            v6 = *(a1 + 12) - 1;
            *(a1 + 12) = v6;
            if (!v6)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          result = 0;
          *(a1 + 33) = 0;
        }
      }

      return result;
    }
  }
}

uint64_t arithmetic_encode_static_data(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (a3 >= 17)
  {
    v3 = a3 - 16;
    result = arithmetic_encode(a1, *(a1 + 16), a2 >> (a3 - 16), (a2 >> (a3 - 16)) + 1, 16);
    if (result)
    {
      return result;
    }

    v4 &= ~(-1 << v3);
  }

  v7 = *(a1 + 16);

  return arithmetic_encode(a1, v7, v4, v4 + 1, v3);
}

uint64_t arithmetic_encode_init(uint64_t a1)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  return 0;
}

uint64_t arithmetic_encode_symbols(uint64_t a1, unsigned __int16 **a2, unsigned __int8 *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  while (1)
  {
    v7 = *a2++;
    v6 = v7;
    v8 = v7 + 1;
    v9 = *v7;
    LODWORD(v7) = *a3;
    v10 = a3 + 1;
    v11 = v7;
    if (v7 >= v9)
    {
      break;
    }

    v31 = v10;
    v12 = &v8[v9 + 1];
    v13 = &v12[v9];
    v14 = v13[2];
    v15 = v6 + 2;
    if (v14 <= v11)
    {
      result = arithmetic_encode(a1, *(a1 + 16), v15[v14 - 1], v8[v14 + 1], 15);
      if (result)
      {
        return result;
      }

      v29 = v4;
      v24 = -1;
      do
      {
        ++v24;
      }

      while (v24 <= 0x1F && 1 << v24 < v9);
      v25 = v11 + 1;
      result = arithmetic_encode(a1, *(a1 + 16), v11, v11 + 1, v24);
      if (result)
      {
        return result;
      }

      if (v14 < v11)
      {
        v26 = v11 - v14;
        v27 = &v6[v9 + 3 + v14];
        do
        {
          ++*v27++;
          ++v13[1];
          --v26;
        }

        while (v26);
      }

      if (v25 < v9)
      {
        ++v12[v25];
        ++v13[1];
      }

      ++v12[v11];
      ++v13[1];
      if (v11 + 2 == v9)
      {
        v28 = v9;
      }

      else
      {
        v28 = v11 + 1;
      }

      v13[2] = v28;
      v4 = v29;
      goto LABEL_30;
    }

    v16 = &v15[v11];
    v17 = *(v16 - 1);
    LOWORD(v16) = *v16 - v17;
    ++v12[v11];
    v18 = *(a1 + 16);
    ++*v13;
    ++v13[1];
    result = arithmetic_encode(a1, v18, v17, v17 + v16, 15);
    if (result)
    {
      return result;
    }

    v20 = v13[1];
    if (v20 >= 0x800)
    {
      v20 = 0;
      v21 = v9;
      do
      {
        v22 = *v12 + 1;
        *v12++ = v22 >> 1;
        v20 += v22 >> 1;
        --v21;
      }

      while (v21);
      v13[1] = v20;
    }

    v23 = *v13;
    if (v20 <= 0x7Fu)
    {
      if ((v20 & 1) == 0 && v23 <= 0x80)
      {
        goto LABEL_31;
      }

LABEL_29:
      v28 = v13[2];
LABEL_30:
      renormalize_probs(v8, v9, v28);
      goto LABEL_31;
    }

    if (v23 >= 0x81)
    {
      goto LABEL_29;
    }

LABEL_31:
    --v4;
    a3 = v31;
    if (!v4)
    {
      return 0;
    }
  }

  aj_log_error(0, "Illegal symbol to be encoded (%d). Num syms in this context is %d.", v11, v9);
  return 7;
}

void init_cum_prob(unsigned __int16 *a1, int a2, unsigned __int8 *a3, int a4)
{
  LODWORD(v4) = a4;
  bzero(a1, 4 * a2 + 10);
  *a1 = a2;
  v8 = &a1[a2 + 1];
  v9 = (v8 + 2);
  if (a2 - 1 <= v4)
  {
    v4 = a2;
  }

  else
  {
    v4 = v4;
  }

  v10 = &v9[a2];
  v10[2] = v4;
  if (a3)
  {
    v11 = 0;
    if (v4 >= 1)
    {
      v12 = v4;
      v13 = v9;
      do
      {
        *v13++ = *a3;
        v14 = *a3++;
        v11 += v14;
        --v12;
      }

      while (v12);
    }

    if (v4 >= a2)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9[v4] = 1;
    ++v11;
    goto LABEL_15;
  }

  if (v4 >= 1)
  {
    memset_pattern16((v8 + 2), &unk_240AB05E0, (2 * v4));
  }

  v11 = v4;
  if (v4 < a2)
  {
    bzero(&a1[a2 + 2 + v4], 2 * (a2 - 1 - v4) + 2);
    v11 = v4;
    goto LABEL_14;
  }

LABEL_15:
  v10[1] = v11;

  renormalize_probs(a1 + 1, a2, v4);
}

void renormalize_probs(unsigned __int16 *a1, int a2, int a3)
{
  v5 = &a1[a2 + a2];
  v6 = a1 + 1;
  v7 = *(v5 + 4);
  *(v5 + 2) = 0;
  if (a3 >= a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a3 + 1);
  }

  if (v8 < 1)
  {
    v10 = 0;
    v16 = 0x8000;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = 0;
    v12 = v7 - 1;
    v13 = a1 + 1;
    v14 = 0x80000000 / v7;
    do
    {
      v15 = (v14 * (v12 + (v13[a2] << 15))) >> 31;
      *v13++ = v15;
      v11 += v15;
      if (v15 <= v6[v10])
      {
        v10 = v10;
      }

      else
      {
        v10 = v9;
      }

      ++v9;
    }

    while (v8 != v9);
    v16 = v11 ^ 0x8000;
  }

  if (v8 < a2)
  {
    v17 = a3;
    if (a3 < a2)
    {
      v17 = a3 + 1;
    }

    bzero(&a1[v17 + 1], 2 * (~a3 + a2 - (a3 < a2)) + 2);
  }

  v6[v10] -= v16;
  if (a2 >= 1)
  {
    v18 = a2;
    v19 = *a1;
    do
    {
      v19 += *v6;
      *v6++ = v19;
      --v18;
    }

    while (v18);
  }
}

uint64_t arithmetic_decode(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  v6 = (a4 - a3) * a5;
  *a1 = v6;
  a1[2] -= a5 * a3;
  if ((v6 - 16777217) >> 24 == 255)
  {
    while (1)
    {
      v10 = 0;
      result = aj_istream_read_bytes_le(a2, &v10, 1);
      if (result)
      {
        break;
      }

      a1[2] = v10 | (a1[2] << 8);
      v9 = *a1;
      v6 = *a1 << 8;
      *a1 = v6;
      if (((v9 << 8) - 16777217) >> 24 != 255)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = 0;
    if (!v6)
    {
      *a1 = -1;
    }
  }

  return result;
}

uint64_t byte_plus_prev(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (*(a1 + 32))
  {
    if (a3 == 255)
    {
      result = 0;
      ++*(a1 + 12);
    }

    else
    {
      result = aj_ostream_write_bytes(a2, *(a1 + 33), 1);
      if (!result)
      {
        if (*(a1 + 12))
        {
          while (1)
          {
            result = aj_ostream_write_bytes(a2, 255, 1);
            if (result)
            {
              break;
            }

            v7 = *(a1 + 12) - 1;
            *(a1 + 12) = v7;
            if (!v7)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
LABEL_7:
          result = 0;
          *(a1 + 33) = v3;
        }
      }
    }
  }

  else
  {
    result = 0;
    *(a1 + 32) = 1;
    *(a1 + 33) = a3;
    *(a1 + 12) = 0;
  }

  return result;
}

uint64_t arithmetic_encode(int32x2_t *a1, uint64_t a2, int a3, int a4, char a5)
{
  v7 = a1->i32[1];
  v8 = a1->i32[0] >> a5;
  v9 = v8 * (a4 - a3);
  a1->i32[0] = v9;
  v10 = v8 * a3;
  v11 = v10 + v7;
  if (__CFADD__(v10, v7) && (v12 = a1[4].i8[1] + 1, a1[4].i8[1] = v12, a1[1].i32[1]))
  {
    v13 = v12;
    while (1)
    {
      result = aj_ostream_write_bytes(a2, v13, 1);
      if (result)
      {
        break;
      }

      v13 = 0;
      a1[4].i8[1] = 0;
      v15 = a1[1].i32[1] - 1;
      a1[1].i32[1] = v15;
      if (!v15)
      {
        v9 = a1->i32[0];
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
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

        v16 = vshl_n_s32(*a1, 8uLL);
        *a1 = v16;
        v11 = v16.u32[1];
        v9 = v16.i32[0];
        if ((v16.i32[0] - 16777217) >> 24 != 255)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = 0;
      if (!v9)
      {
        a1->i32[0] = -1;
      }
    }
  }

  return result;
}

uint64_t aj_encode_buffers_baseline(int *a1, uint64_t a2)
{
  if (a1[3358] < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    result = aj_mcu_dct(a1, a2);
    if (result)
    {
      break;
    }

    if (++v4 >= a1[3358])
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_encode_buffers_progressive(int *a1, uint8x8_t **a2, int a3)
{
  v3 = a2;
  v48[2] = *MEMORY[0x277D85DE8];
  v48[0] = 0;
  v48[1] = 0;
  memset(v47, 0, sizeof(v47));
  v5 = a1[2];
  v6 = v5 + 7;
  if (v5 < -7)
  {
    v6 = v5 + 14;
  }

  v7 = v6 >> 3;
  if (a1[8] == 2)
  {
    LODWORD(v48[0]) = 8;
    aj_fill_prog_coeff_buf(a1, a2);
    if (v5 >= 1)
    {
      v8 = 0;
      v9 = *(a1 + 2478);
      if (v7 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = a1[4952];
      do
      {
        if (v11 >= 1)
        {
          v12 = 0;
          for (i = 0; i < v11; ++i)
          {
            v14 = *(a1 + 2477);
            if (*(v14 + v12) == 1 && !*(v14 + v12 + 4))
            {
              v15 = *(v14 + v12 + 192);
              result = (*(v14 + v12 + 224))();
              if (result)
              {
                goto LABEL_63;
              }

              v11 = a1[4952];
            }

            v12 += 296;
          }
        }

        ++v8;
        v9 += 128;
      }

      while (v8 != v10);
    }
  }

  if (a1[3358] < 1)
  {
    result = 0;
  }

  else
  {
    v17 = 0;
    v18 = *(a1 + 2478);
    v46 = a1 + 4;
    v19 = a1 + 3368;
    do
    {
      if (a1[8] == 2)
      {
        v20 = *v46;
        if (*v46 >= 1)
        {
          v21 = 0;
          v22 = a1[4952];
          do
          {
            if (v22 >= 1)
            {
              v23 = 0;
              for (j = 0; j < v22; ++j)
              {
                v25 = *(a1 + 2477);
                if (*(v25 + v23) >= 2 && !*(v25 + v23 + 4))
                {
                  v26 = *(v25 + v23 + 192);
                  result = (*(v25 + v23 + 224))();
                  if (result)
                  {
                    goto LABEL_63;
                  }

                  v22 = a1[4952];
                }

                v23 += 296;
              }

              v20 = *v46;
            }

            ++v21;
            v18 += 128;
          }

          while (v21 < v20);
        }
      }

      v27 = *a1;
      if (*a1 >= 1)
      {
        v28 = 0;
        v42 = v3;
        v41 = v17;
        v40 = v19;
        do
        {
          if (v46[v28] >= 1)
          {
            v29 = 0;
            v45 = &(&v3[16 * v28])[*(v48 + v28)];
            v30 = &v19[392 * v28];
            if (v28)
            {
              v31 = 0;
            }

            else
            {
              v31 = -1;
            }

            v44 = v31;
            do
            {
              aj_block_dct(v45, v47, (v30 + 135));
              if (v28)
              {
                v32 = 0;
              }

              else
              {
                v32 = v7 == 0;
                if (v7 && a3)
                {
                  v32 = *(a1 + 13440) != 0;
                }
              }

              v33 = a1[4952];
              if (v33 >= 1)
              {
                v34 = 0;
                v35 = *(a1 + 2477);
                do
                {
                  v36 = *v35;
                  if (v36 >= 1)
                  {
                    v37 = 0;
                    while (v28 != *(v35 + v37 + 1))
                    {
                      if (v36 == ++v37)
                      {
                        goto LABEL_56;
                      }
                    }

                    if (v36 != 1 || !v32)
                    {
                      result = v35[28](v35, v47, v35[v37 + 24] + 12);
                      if (result)
                      {
                        goto LABEL_63;
                      }

                      v33 = a1[4952];
                    }
                  }

LABEL_56:
                  ++v34;
                  v35 += 37;
                }

                while (v34 < v33);
              }

              v7 += v44;
              ++v29;
            }

            while (v29 < v46[v28]);
            v27 = *a1;
            v3 = v42;
            v17 = v41;
            v19 = v40;
          }

          ++v28;
        }

        while (v28 < v27);
      }

      result = 0;
      ++v17;
    }

    while (v17 < a1[3358]);
  }

LABEL_63:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_encode_row(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 13360) == 14)
  {
    a2[224] = a2[229];
    a2[225] = a2[231];
    a2[226] = a2[233];
    aj_reset_row_ptrs(a1, a2, (a2 + 224));
    v6 = *(a1 + 19752);

    return v6(a1, a2, a3);
  }

  else
  {
    aj_col_trans_row(a1, a2, a2, *(a1 + 32), *(a1 + 13284));
    v8 = *(a1 + 13284) + 1;
    *(a1 + 13284) = v8;
    if (v8 == *(a1 + 13280))
    {
      result = (*(a1 + 19752))(a1, a2, a3);
      if (result)
      {
        return result;
      }

      *(a1 + 13284) = 0;
      aj_reset_row_ptrs(a1, a2, (a2 + 224));
    }

    return 0;
  }
}

uint64_t aj_encode_row_close(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 13360) == 14)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 13276);
  v5 = *(a1 + 13284);
  if (v4)
  {
    aj_col_trans_row(a1, a2, a2, v4, v5);
    v5 = *(a1 + 13284) + 1;
    *(a1 + 13284) = v5;
    *(a1 + 13276) = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  while (v5 < *(a1 + 13280))
  {
    aj_col_trans_row(a1, a2, a2, 0, v5);
    v6 = *(a1 + 13284);
    v5 = v6 + 1;
    *(a1 + 13284) = v6 + 1;
    if (v6 == -1)
    {
      goto LABEL_9;
    }
  }

  result = (*(a1 + 19752))(a1, a2, 1);
  if (!result)
  {
LABEL_9:
    if (*(a1 + 19800))
    {
      aj_concatenate_scans(a1, a2);
    }

    result = aj_ostream_write_bytes(a2 + 1928, 65497, 2);
    if (!result)
    {
      result = aj_ostream_flush_buffer(a2 + 1928);
      if (!result)
      {
        *(a2 + 2016) = *(a2 + 1944);
      }
    }
  }

  return result;
}

uint64_t aj_concatenate_scans(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 19808) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 19816);
  v6 = a1 + 3424;
  v7 = a1 + 10664;
  while (1)
  {
    if (v4)
    {
      v8 = *v5;
      if (*v5 >= 1)
      {
        v9 = 0;
        do
        {
          v10 = *(v5 + 8 * v9 + 232);
          if (v10 && !v10[17].i8[1])
          {
            v11 = v5 + 4 * v9;
            result = aj_write_single_dht(a2 + 1928, v10, 1, *(v11 + 4) != 0);
            if (result)
            {
              return result;
            }

            v13 = (v7 + 274 * (*(v11 + 4) != 0) + 273);
            if (*(v5 + 64))
            {
              v13 = (v6 + 548 * (*(v11 + 4) != 0) + 547);
            }

            *v13 = 0;
            v8 = *v5;
          }

          ++v9;
        }

        while (v9 < v8);
      }

      result = aj_write_sos_progressive(a2 + 1928, a1, v5);
      if (result)
      {
        break;
      }
    }

    result = aj_prog_encode_close(v5);
    if (result)
    {
      break;
    }

    result = aj_ostream_flush_bitreg(v5 + 88);
    if (result)
    {
      break;
    }

    v14 = *(v5 + 160);
    if (v14)
    {
      v15 = *(v5 + 172);
      if (v15)
      {
        result = aj_ostream_write_buf(a2 + 1928, v14, v15);
        if (result)
        {
          break;
        }
      }
    }

    v16 = *(v5 + 96);
    v17 = *(v5 + 112);
    if (v16 != v17)
    {
      result = aj_ostream_write_buf(a2 + 1928, v17, (v16 - v17));
      if (result)
      {
        break;
      }
    }

    ++v4;
    v5 += 296;
    if (v4 >= *(a1 + 19808))
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_encode_all(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a1 + 0x4000);
  v6 = *(a1 + 32);
  v7 = *(a1 + 19844);
  v8 = *(a1 + 19776);
  if (v7 <= v6)
  {
    v8 *= v6 / v7;
  }

  v9 = *(a1 + 19768);
  *(a2 + 2000) = 0u;
  if (*(a1 + 13360) == 14)
  {
    v10 = *(a2 + 1832) + *(a1 + 13296) * *(a1 + 13316) + *(a1 + 13312);
    v11 = *(a1 + 13328) * *(a1 + 13348);
    v12 = *(a1 + 13344);
    v13 = *(a2 + 1848) + v12 + v11;
    v14 = *(a2 + 1864) + v12 + v11;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = *(a2 + 1824);
  if (v15 >= *(a2 + 1828))
  {
LABEL_24:
    if (!v5[854] || (result = aj_concatenate_scans(a1, a2), !result))
    {
      if (a3 == 217 && *(a2 + 2096))
      {
        result = aj_ostream_flush_buffer(a2 + 1928);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = aj_ostream_write_bytes(a2 + 1928, a3 | 0xFF00u, 2);
        if (result)
        {
          return result;
        }

        if (a3 != 217)
        {
          v23 = *(a2 + 2072);
          if (v23)
          {
            v24 = *(a2 + 2080) + *(a2 + 1944) - *(a2 + 2020) - 2;
            v25 = *(a2 + 2088);
            *(a2 + 2088) = v25 + 1;
            *(v23 + 4 * v25) = v24;
          }
        }
      }

      if (*(a2 + 2024))
      {
        (*(a2 + 2032))(*(a2 + 2040));
        result = 0;
        *(a2 + 2048) = *(a2 + 2024);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = v9 * v6;
    while (1)
    {
      if (*(a2 + 2024))
      {
        v17 = *(a2 + 2048);
        if (!v17)
        {
          (*(a2 + 2032))(*(a2 + 2040));
          v17 = *(a2 + 2024);
        }

        *(a2 + 2048) = v17 - 1;
      }

      if (*(a1 + 13360) == 14)
      {
        *(a2 + 1792) = v10 + 8 * v15 * *(a1 + 13296) * *(a1 + 32);
        v18 = 8 * v15 * *(a1 + 13328);
        *(a2 + 1800) = v13 + v18;
        *(a2 + 1808) = v14 + v18;
      }

      aj_reset_row_ptrs(a1, a2, a2 + 1792);
      if (*(a1 + 13360) != 14)
      {
        for (i = 0; i != 8; ++i)
        {
          aj_col_trans_row(a1, a2, a2, (*(a1 + 12) - *(a1 + 32) * i - *(a1 + 13428) * v15), i);
          *(a2 + 1832) += v16;
          *(a2 + 1840) += v16;
          if (v5[862])
          {
            if (v5[865] <= *(a1 + 32))
            {
              v20 = 1;
            }

            else
            {
              v20 = i & 1;
            }

            v21 = v8 * v20;
            *(a2 + 1848) += v21;
            *(a2 + 1856) += v21;
          }
        }
      }

      result = (*(a1 + 19752))(a1, a2, *(a1 + 13436) - 1 == v15);
      if (result)
      {
        break;
      }

      if (++v15 >= *(a2 + 1828))
      {
        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t aj_encode_all_mt(uint64_t a1, uint64_t a2, signed int a3)
{
  v74[295] = *MEMORY[0x277D85DE8];
  v6 = (a1 + 0x4000);
  bzero(&v70, 0x9F0uLL);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v62 = 0u;
  memset(v61, 0, sizeof(v61));
  memset(v66, 0, sizeof(v66));
  v7 = *(a1 + 13436);
  v60 = v6;
  v8 = v6[844];
  if (v7 % v8)
  {
    v9 = v7 / v8 + 1;
  }

  else
  {
    v9 = v7 / v8;
  }

  if (v9 / a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if ((v9 / a3) <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 / a3;
  }

  *(&v61[0] + 1) = mt_write_callback;
  *&v71[0] = a2;
  v67 = a1;
  v68 = 0;
  v69 = v11;
  v12 = estimate_jpeg_size(*(a1 + 8), *(a1 + 12));
  LODWORD(v13) = v10 << 10;
  if (v12 <= (v10 << 10))
  {
    v13 = v13;
  }

  else
  {
    v13 = v12;
  }

  if (v10 > 1)
  {
    v14 = v72;
    v15 = v10 - 1;
    v59 = v10;
    v16 = 2 * v11;
    v17 = (v13 / v10);
    v18 = v10 - 1;
    v19 = v11;
    while (1)
    {
      v20 = malloc_type_calloc(1uLL, 0x840uLL, 0x10D004029887189uLL);
      *(v14 + 3) = v20;
      if (!v20)
      {
LABEL_54:
        v33 = 6;
LABEL_56:
        v10 = v59;
        goto LABEL_59;
      }

      enc_buffers = aj_allocate_enc_buffers(a1, v20);
      if (enc_buffers)
      {
        v33 = enc_buffers;
        goto LABEL_56;
      }

      v64 = 0;
      v65 = v17;
      v64 = malloc_type_calloc(1uLL, v17, 0x2D36EAB7uLL);
      if (!v64)
      {
        goto LABEL_54;
      }

      *v14 = a1;
      *(v14 + 2) = v19;
      *(v14 + 3) = v16;
      v22 = *(v14 + 3);
      *(v22 + 2056) = *(a2 + 2056);
      *(v22 + 2068) = *(a2 + 2068);
      *(v22 + 2072) = *(a2 + 2072);
      *(v22 + 2080) = *(a2 + 2080);
      *(v22 + 2096) = *(a2 + 2096);
      *(v22 + 2020) = 0;
      if (*(a1 + 13360) == 14)
      {
        v33 = 3;
        goto LABEL_72;
      }

      v23 = v60[844] * v19;
      v24 = *(a1 + 19768);
      *(v22 + 1832) = *(a2 + 1832) + v24 * v23 * *(a1 + 13428);
      *(*(v14 + 3) + 1840) = *(*(v14 + 3) + 1832) + v24;
      if (v60[862])
      {
        break;
      }

LABEL_28:
      *&v62 = v14;
      aj_init_out_stream(*(v14 + 3) + 1928, v61, &v64);
      v19 += v11;
      v14 += 160;
      v16 += v11;
      if (!--v18)
      {
        v30 = v72;
        v31 = v66 + 1;
        v10 = v59;
        do
        {
          pthread_create(v31, 0, enc_job, v30);
          v30 += 160;
          ++v31;
          --v15;
        }

        while (v15);
        goto LABEL_31;
      }
    }

    v25 = v60[865];
    if (v25 == 2)
    {
      v26 = 4;
      v27 = 1;
    }

    else
    {
      if (v25 != 1)
      {
        v26 = 8;
LABEL_27:
        v28 = v26 * v23;
        v29 = *(a1 + 19776);
        *(*(v14 + 3) + 1848) = *(a2 + 1848) + v29 * v28;
        *(*(v14 + 3) + 1856) = *(*(v14 + 3) + 1848) + v29;
        goto LABEL_28;
      }

      v26 = 16;
      v27 = 2;
    }

    if (*(a1 + 32) != v27)
    {
      v26 = 8;
    }

    goto LABEL_27;
  }

LABEL_31:
  enc_job(&v67);
  if (v10 < 1)
  {
    goto LABEL_52;
  }

  v32 = 0;
  LODWORD(v33) = 0;
  v34 = &v70;
  do
  {
    if (v32)
    {
      pthread_join(*(v66 + v32), 0);
    }

    v36 = *v34;
    v34 += 40;
    v35 = v36;
    if (v36)
    {
      v33 = v35;
    }

    else
    {
      v33 = v33;
    }

    v32 += 8;
  }

  while (8 * v10 != v32);
  if (v33)
  {
    goto LABEL_59;
  }

  if (v10 < 2)
  {
    goto LABEL_52;
  }

  v37 = v74;
  v38 = 1;
  while (2)
  {
    v39 = *(a2 + 2072);
    if (v39)
    {
      v40 = *&v71[10 * v38];
      v41 = *(v40 + 2084);
      if (v41 < *(v40 + 2088))
      {
        v42 = *(a2 + 1944) - *(a2 + 2020);
        do
        {
          *(v39 + 4 * v41++) += v42;
        }

        while (v41 < *(v40 + 2088));
      }
    }

    v43 = 0;
    v44 = v37;
    do
    {
      v45 = *(v44 - 1);
      if (!v45)
      {
        break;
      }

      v46 = aj_ostream_write_buf(a2 + 1928, v45, *v44);
      if (v46)
      {
        v33 = v46;
        aj_log_error("Enc", "IO error when copying buffer %d from thread %d");
        goto LABEL_59;
      }

      ++v43;
      v44 += 4;
    }

    while (v43 != 8);
    v47 = &v67 + 20 * v38;
    v49 = v47[3];
    v48 = v47 + 3;
    v50 = aj_ostream_write_buf(a2 + 1928, *(v49 + 1952), *(v49 + 1936) - *(v49 + 1952));
    if (!v50)
    {
      *(a2 + 2016) += *(*v48 + 2016);
      ++v38;
      v37 += 40;
      if (v38 != v10)
      {
        continue;
      }

LABEL_52:
      v33 = aj_ostream_flush_buffer(a2 + 1928);
      if (v33)
      {
        aj_log_error("Enc", "IO error when flushing thread buffers");
      }

      goto LABEL_59;
    }

    break;
  }

  v33 = v50;
  aj_log_error("Enc", "IO error when copying buffer from thread %d");
LABEL_59:
  if (v10 >= 2)
  {
    v51 = &v73;
    for (i = 1; i != v10; ++i)
    {
      v53 = &v67 + 20 * i;
      if (v53[3])
      {
        for (j = 0; j != 16; j += 2)
        {
          v55 = v51[j];
          if (!v55)
          {
            break;
          }

          free(v55);
          v51[j] = 0;
        }

        v56 = v53[3];
        if (v56[244])
        {
          free(v56[244]);
          v56 = v53[3];
          v56[244] = 0;
        }

        if (!v56[224] || (free(v56[224]), *(v53[3] + 1792) = 0, (v56 = v53[3]) != 0))
        {
          free(v56);
        }

        v53[3] = 0;
      }

      v51 += 20;
    }
  }

LABEL_72:
  v57 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t mt_write_callback(const void *a1, int a2, uint64_t a3)
{
  v4 = a3 + 32;
  v5 = 8;
  while (*v4)
  {
    v4 += 16;
    if (!--v5)
    {
      aj_log_error("Enc", "Max number of allocations used in thread job.");
      return 1;
    }
  }

  v6 = a2;
  *(v4 + 8) = a2;
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  v7 = malloc_type_malloc(v6, 0x9E377E95uLL);
  *v4 = v7;
  if (v7)
  {
    memcpy(v7, a1, v6);
    return 0;
  }

  return 1;
}

uint64_t enc_job(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  for (i = *(a1 + 8); i < *(a1 + 12); ++i)
  {
    v5 = v3[4940];
    v6 = v5 * i;
    *(v2 + 1824) = v5 * i;
    v7 = v5 + v5 * i;
    *(v2 + 1828) = v7;
    *(v2 + 2060) = 0;
    v8 = v3[3358] * v6;
    v9 = *(v2 + 2056);
    v10 = v8 / v9;
    v11 = *(v2 + 2068);
    *(v2 + 2064) = (v10 + v11 - 1) & 7;
    if (i == *(a1 + 8))
    {
      *(v2 + 2084) = v10;
    }

    *(v2 + 2088) = v10;
    *(v2 + 2000) = 0;
    *(v2 + 2008) = 0;
    v12 = v3[3359];
    if (v7 >= v12)
    {
      *(v2 + 1828) = v12;
      LOBYTE(v13) = -39;
    }

    else
    {
      v13 = (v3[3358] * v7 / v9 + v11 - 1) & 7 | 0xFFFFFFD0;
    }

    v14 = aj_encode_all(v3, v2, v13);
    *(a1 + 16) = v14;
    if (v14)
    {
      aj_log_error("Enc", "IO error in MT encode job, mcu rows %d to %d", *(v2 + 1824), *(v2 + 1828));
      return 0;
    }
  }

  return 0;
}

unsigned int *plugin_iosaccelerator_create(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v7 = malloc_type_calloc(1uLL, 0xE8uLL, 0x106004020B7C528uLL);
  if (!v7)
  {
    v12 = 6;
    goto LABEL_25;
  }

  v8 = *MEMORY[0x277CD2898];
  v9 = IOServiceMatching("AppleM2ScalerCSCDriver");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
  IOObjectRelease(MatchingService);
  if (!v11)
  {
    aj_log_error("IOSAPlugin", "Unable to get scaler capabilities");
    goto LABEL_24;
  }

  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFilterVerticalTapsCount", keys))
  {
    goto LABEL_21;
  }

  v7[2] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFilterHorizontalTapsCount", keys))
  {
    goto LABEL_21;
  }

  v7[3] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFormatIn2Planes420", keys))
  {
    goto LABEL_21;
  }

  *(v7 + 16) = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFormatOut2Planes420", keys))
  {
    goto LABEL_21;
  }

  *(v7 + 17) = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFormatIn2Planes422", keys))
  {
    goto LABEL_21;
  }

  *(v7 + 18) = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFormatOut2Planes422", keys))
  {
    goto LABEL_21;
  }

  *(v7 + 19) = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinSourceWidth", keys))
  {
    goto LABEL_21;
  }

  v7[5] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinSourceHeight", keys))
  {
    goto LABEL_21;
  }

  v7[6] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxSourceWidth", keys))
  {
    goto LABEL_21;
  }

  v7[7] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxSourceHeight", keys))
  {
    goto LABEL_21;
  }

  v7[8] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinDestWidth", keys))
  {
    goto LABEL_21;
  }

  v7[9] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinDestHeight", keys))
  {
    goto LABEL_21;
  }

  v7[10] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxDestWidth", keys))
  {
    goto LABEL_21;
  }

  v7[11] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxDestHeight", keys))
  {
    goto LABEL_21;
  }

  v7[12] = keys[0];
  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxHUpscale", keys) || (v7[13] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxHDownscale", keys)) || (v7[14] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxVUpscale", keys)) || (v7[15] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxVDownscale", keys)))
  {
LABEL_21:
    aj_log_error("IOSAPlugin", "Bailing from get_scaler_setup");
    CFRelease(v11);
LABEL_24:
    v12 = 1;
    goto LABEL_25;
  }

  v7[16] = keys[0];
  if (v7[2] != 9)
  {
    aj_log_error("IOSAPlugin", "WARNING: Device is reporting v_taps != 9. This not fatal but may lead to artifacts in image. Please file a radar to CoreMedia JPEG Software|All with device and OS versions for verification.");
  }

  CFRelease(v11);
  if (v7[2] <= 0)
  {
    v45 = v7[2];
    aj_log_error("IOSAPlugin", "vTaps is negative or zero: %d");
    goto LABEL_24;
  }

  if (v7[3] <= 0)
  {
    v46 = v7[3];
    aj_log_error("IOSAPlugin", "hTaps is negative or zero: %d");
    goto LABEL_24;
  }

  v15 = a2[4];
  v12 = 3;
  if (v15 > 9)
  {
    if (v15 != 15)
    {
      if (v15 != 10)
      {
        goto LABEL_25;
      }

      if (!*(v7 + 17) || !*(v7 + 16))
      {
        aj_log_error("IOSAPlugin", "Unsupported format: 420f");
        goto LABEL_25;
      }
    }
  }

  else if ((v15 - 3) >= 2)
  {
    if (v15 != 8)
    {
      goto LABEL_25;
    }

    if (!*(v7 + 19) || !*(v7 + 18))
    {
      aj_log_error("IOSAPlugin", "Unsupported format: 422f");
      goto LABEL_25;
    }
  }

  v16 = *a2;
  if (*a2 > v7[7] || v16 < v7[5])
  {
    v47 = *a2;
    aj_log_error("IOSAPlugin", "Input width is outside the supported range: %d");
    goto LABEL_25;
  }

  v17 = a2[2];
  if (v17 > v7[11] || v17 < v7[9])
  {
    v48 = a2[2];
    aj_log_error("IOSAPlugin", "Output width is outside the supported range: %d");
    goto LABEL_25;
  }

  if (v16 > v17 && v16 > (v7[14] * v17) || v16 < v17 && (v7[13] * v16) < v17)
  {
    v49 = *a2;
    aj_log_error("IOSAPlugin", "Horizontal scaling factor is beyond the supported range: %d -> %d");
    goto LABEL_25;
  }

  v18 = a2[1];
  if (v18 < v7[6])
  {
    v50 = a2[1];
    aj_log_error("IOSAPlugin", "Input height is smaller than the supported min: %d");
    goto LABEL_25;
  }

  v19 = a2[3];
  if (v19 < v7[10])
  {
    v51 = a2[3];
    aj_log_error("IOSAPlugin", "Output height is smaller than the supported min: %d");
    goto LABEL_25;
  }

  if (a2[5] > v7[8])
  {
    v52 = a2[5];
    aj_log_error("IOSAPlugin", "max-input-rows is larger than the supported max: %d");
    goto LABEL_25;
  }

  if (v18 < v19)
  {
    aj_log_error("IOSAPlugin", "Up-scaling vertically is currently not supported");
    goto LABEL_25;
  }

  if (v18 <= v19 || v18 <= (v7[16] * v19))
  {
    v20 = 0;
    if (v15 > 9)
    {
      if (v15 == 10)
      {
        v21 = 0x234323066;
LABEL_74:
        v20 = 1;
        v22 = 2;
        goto LABEL_75;
      }
    }

    else if ((v15 - 3) >= 2)
    {
      if (v15 != 8)
      {
        goto LABEL_76;
      }

      v21 = 0x134323266;
      goto LABEL_74;
    }

    v20 = 0;
    v21 = 0x142475241;
    v22 = 1;
LABEL_75:
    *(v7 + 18) = v21;
    v7[38] = v22;
LABEL_76:
    v23 = *MEMORY[0x277CBECE8];
    if (IOSurfaceAcceleratorCreate())
    {
      aj_log_error("IOSAPlugin", "Unable to create the IOSurfaceAcceleratorRef");
    }

    else
    {
      v24 = a2[3];
      v25 = a2[1];
      v26 = (v24 << 20) / v25;
      v27 = (v25 << 20) / v24;
      *(v7 + 24) = v26;
      *(v7 + 25) = v27;
      *(v7 + 26) = 0;
      v28 = v7[6];
      if (v28 <= ((v27 * v7[10] + 0xFFFFF) >> 20))
      {
        v28 = (v27 * v7[10] + 0xFFFFF) >> 20;
      }

      v29 = ((4 * v27 + 0xFFFFF) >> 20) + ((2 * v27 + 0xFFFFF) >> 20) + v28;
      v7[40] = v29;
      if (v7[37] == 2)
      {
        v30 = v27 & 0x1FFFFF;
        if ((v27 & 0x1FFFFF) > 0x100000)
        {
          v30 = 0x200000 - (v27 & 0x1FFFFF);
        }

        if (v30)
        {
          v31 = 0x100000 / v30 + 1;
        }

        else
        {
          v31 = 1;
        }

        v33 = (((v31 * v27 + 0xFFFFF) >> 20) & 1) + ((v31 * v27 + 0xFFFFF) >> 20);
        v32 = a2[5];
        if (v33 <= v32 / 2)
        {
          *(v7 + 224) = 1;
          v29 += v33;
          v7[40] = v29;
        }

        else
        {
          *(v7 + 224) = 0;
        }
      }

      else
      {
        *(v7 + 224) = 0;
        v32 = a2[5];
      }

      v34 = (v29 + v32);
      v7[39] = (v26 * v34 + 0xFFFFF) >> 20;
      if (v20)
      {
        v35 = a2[2] & 1;
      }

      else
      {
        v35 = 0;
      }

      IOSurface = create_IOSurface(*a2, v34, v7[36]);
      *(v7 + 21) = IOSurface;
      if (IOSurface)
      {
        v37 = create_IOSurface(a2[2] + v35, v7[39], v7[36]);
        *(v7 + 22) = v37;
        if (v37)
        {
          v7[55] = 0;
          *(v7 + 16) = *a2;
          *(v7 + 17) = *(a2 + 1);
          valuePtr = 0;
          v38 = CFNumberCreate(v23, kCFNumberIntType, &valuePtr);
          v39 = *MEMORY[0x277D1AE40];
          values = v38;
          keys[0] = v39;
          *(v7 + 15) = CFDictionaryCreate(v23, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFRelease(v38);
          *&v40 = 0;
          v7[28] = a2[2] + v35;
          v7[29] = 0;
          *(v7 + 6) = v40;
          v41 = *a2 << 16;
          *(v7 + 10) = 0;
          *(v7 + 11) = v41;
          *(v7 + 9) = 0;
          set_plugin_config(v7, a3);
          v12 = 0;
          if (!a4)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        aj_log_error("IOSAPlugin", "Couldn't create destination IOSurface");
      }

      else
      {
        aj_log_error("IOSAPlugin", "Couldn't create source IOSurface");
      }

      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      v42 = *(v7 + 21);
      if (v42)
      {
        CFRelease(v42);
        *(v7 + 21) = 0;
      }

      v43 = *(v7 + 22);
      if (v43)
      {
        CFRelease(v43);
        *(v7 + 22) = 0;
      }

      v44 = *(v7 + 15);
      if (v44)
      {
        CFRelease(v44);
        *(v7 + 15) = 0;
      }
    }

    goto LABEL_24;
  }

  v53 = a2[1];
  aj_log_error("IOSAPlugin", "Vertical scaling factor is beyond the supported range: %d -> %d");
LABEL_25:
  plugin_iosaccelerator_destroy(v7);
  v7 = 0;
  if (a4)
  {
LABEL_26:
    *a4 = v12;
  }

LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

size_t set_plugin_config(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 156);
  *(a2 + 8) = 1;
  *(a2 + 80) = 1;
  IOSurfaceLock(*(a1 + 168), 0, 0);
  *(a1 + 184) = 1;
  result = IOSurfaceLock(*(a1 + 176), 1u, 0);
  *(a1 + 185) = 1;
  if (*(a1 + 152) >= 1)
  {
    v5 = 0;
    v6 = (a2 + 120);
    do
    {
      *(v6 - 13) = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v5);
      *(v6 - 9) = IOSurfaceGetBytesPerRowOfPlane(*(a1 + 168), v5);
      *(v6 - 4) = IOSurfaceGetBaseAddressOfPlane(*(a1 + 176), v5);
      result = IOSurfaceGetBytesPerRowOfPlane(*(a1 + 176), v5);
      *v6++ = result;
      ++v5;
    }

    while (v5 < *(a1 + 152));
  }

  return result;
}

void plugin_iosaccelerator_destroy(void *a1)
{
  if (a1)
  {
    if (*(a1 + 184))
    {
      v2 = a1[21];
      if (v2)
      {
        IOSurfaceUnlock(v2, 0, 0);
        *(a1 + 184) = 0;
      }
    }

    if (*(a1 + 185))
    {
      v3 = a1[22];
      if (v3)
      {
        IOSurfaceUnlock(v3, 1u, 0);
        *(a1 + 185) = 0;
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v4 = a1[21];
    if (v4)
    {
      CFRelease(v4);
      a1[21] = 0;
    }

    v5 = a1[22];
    if (v5)
    {
      CFRelease(v5);
      a1[22] = 0;
    }

    v6 = a1[15];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t plugin_iosaccelerator_resize(uint64_t *a1, int *a2, _DWORD *a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 55) + *a2;
  *(a1 + 55) = v9;
  v10 = v8 + v7;
  if (a4)
  {
    LODWORD(v11) = *(a1 + 35) - *(a1 + 54);
    v12 = a1[26];
    v13 = (v10 << 20) - v12;
  }

  else
  {
    v15 = *(a1 + 33) - v9;
    v16 = *(a1 + 6);
    v17 = __OFSUB__(v16, v15);
    v18 = v16 - v15;
    if ((v18 < 0) ^ v17 | (v18 == 0))
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = a1[24];
    v21 = *(a1 + 10);
    if (v21 > (v20 * (v19 + v15)) >> 20)
    {
      v19 = ((a1[25] * v21 + 0xFFFFF) >> 20) - v15;
    }

    LODWORD(v11) = ((v20 * (v9 - v19) + 0x80000) >> 20) - *(a1 + 54);
    if (*(a1 + 37) >= 2)
    {
      LODWORD(v11) = v11 & 0xFFFFFFFE;
      if (*(a1 + 224))
      {
        v22 = v11 + 2;
        do
        {
          v22 -= 2;
        }

        while (((a1[25] * v22) & 0x100000) != 0);
        if (v22)
        {
          LODWORD(v11) = v22;
        }
      }
    }

    v12 = a1[26];
    v13 = a1[25] * v11;
  }

  a1[12] = v13 >> 4;
  *(a1 + 29) = v11;
  a1[10] = v12 >> 4;
  if (*(a1 + 184))
  {
    IOSurfaceUnlock(a1[21], 0, 0);
    *(a1 + 184) = 0;
  }

  if (*(a1 + 185))
  {
    IOSurfaceUnlock(a1[22], 1u, 0);
    *(a1 + 185) = 0;
  }

  v23 = *a1;
  v24 = a1[21];
  v25 = a1[22];
  v26 = a1[15];
  if (IOSurfaceAcceleratorTransformSurface())
  {
    aj_log_error("IOSAPlugin", "Rescaling error: 0x%X");
    return 1;
  }

  IOSurfaceLock(a1[21], 0, 0);
  *(a1 + 184) = 1;
  IOSurfaceLock(a1[22], 1u, 0);
  *(a1 + 185) = 1;
  if (a4 || v11 < 5)
  {
    v27 = a1[26] + v13;
    a1[26] = v27;
    *(a1 + 54) += v11;
    if (a4)
    {
      v28 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v11 = (v11 - 4);
    v27 = a1[26] + a1[25] * v11;
    *(a1 + 54) += v11;
  }

  v29 = *(a1 + 37);
  if (v29 <= 1)
  {
    v30 = v27 >> 20;
  }

  else
  {
    v30 = (v27 >> 20) & 0xFFFFFFFE;
  }

  a1[26] = v27 - (v30 << 20);
  v28 = v10 - v30;
  v31 = a1[21];
  PlaneCount = IOSurfaceGetPlaneCount(v31);
  if (v30)
  {
    v33 = v10 == v30;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    if (v29 == 2 && (v28 & 1) != 0)
    {
      aj_log_error("IOSAPlugin", "nrows is not even");
      return 1;
    }

    if (PlaneCount >= 1)
    {
      v42 = a3;
      v34 = 0;
      v35 = v29 >> 1;
      v36 = PlaneCount & 0x7FFFFFFF;
      do
      {
        if (v34)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0;
        }

        v38 = v28 >> v37;
        v39 = v30 >> v37;
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v31, v34);
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v31, v34);
        memmove(BaseAddressOfPlane, &BaseAddressOfPlane[BytesPerRowOfPlane * v39], BytesPerRowOfPlane * v38);
        ++v34;
      }

      while (v36 != v34);
      a3 = v42;
    }
  }

LABEL_46:
  result = 0;
  *a3 = v11;
  a3[1] = v28;
  return result;
}

uint64_t get_Int64_value(const __CFDictionary *a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, a3);
    return 0;
  }

  else
  {
    aj_log_error("IOSAPlugin", "Unable to get value for key.");
    return 1;
  }
}

IOSurfaceRef create_IOSurface(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 1111970368)
  {
    if (a3 != 1111970369 && a3 != 1380401729)
    {
      goto LABEL_8;
    }

    v6 = 0;
    v10 = 0;
    v9 = 4;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    if (a3 != 875704422)
    {
      if (a3 == 875704934)
      {
        v6 = 0;
        v7 = 1;
        v8 = 2;
        v9 = 1;
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      aj_log_error("IOSAPlugin", "Only 420f, 422f and RGBA/BGRA are supported");
      return 0;
    }

    v6 = 1;
    v7 = 2;
    v9 = 1;
    v10 = 1;
    v8 = 2;
  }

LABEL_10:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    aj_log_error("IOSAPlugin", "Unable to create options dictionary");
    return 0;
  }

  v12 = Mutable;
  v24 = v7;
  v13 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  set_int_value(Mutable, *MEMORY[0x277CD2A70], a3);
  set_int_value(v12, *MEMORY[0x277CD2B88], a1);
  set_int_value(v12, *MEMORY[0x277CD2A28], a2);
  v15 = CFArrayCreateMutable(0, v8, MEMORY[0x277CBF128]);
  if (v15)
  {
    v16 = v15;
    v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v17)
    {
      v18 = v17;
      set_int_value(v17, *MEMORY[0x277CD2B50], a1);
      set_int_value(v18, *MEMORY[0x277CD2B18], a2);
      set_int_value(v18, *MEMORY[0x277CD2A98], v9);
      set_int_value(v18, *MEMORY[0x277CD2B38], 0);
      set_int_value(v18, *MEMORY[0x277CD2AA0], v9 * v13);
      set_int_value(v18, *MEMORY[0x277CD2B40], v9 * v14 * v13);
      CFArrayAppendValue(v16, v18);
      CFRelease(v18);
    }

    if (v10)
    {
      v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v19)
      {
        v20 = v19;
        if (v6)
        {
          LODWORD(a2) = (a2 + 1) >> 1;
        }

        set_int_value(v19, *MEMORY[0x277CD2B50], (a1 + 1) >> 1);
        set_int_value(v20, *MEMORY[0x277CD2B18], a2);
        set_int_value(v20, *MEMORY[0x277CD2A98], 2);
        set_int_value(v20, *MEMORY[0x277CD2B38], v14 * v13);
        set_int_value(v20, *MEMORY[0x277CD2AA0], (a1 + 7) & 0xFFFFFFF8);
        set_int_value(v20, *MEMORY[0x277CD2B40], v14 / v24 * v13);
        CFArrayAppendValue(v16, v20);
        CFRelease(v20);
      }
    }

    CFDictionarySetValue(v12, *MEMORY[0x277CD2B30], v16);
    CFRelease(v16);
  }

  if (v10)
  {
    v21 = (v14 / v24 + v14) * v13;
  }

  else
  {
    LODWORD(v21) = 4 * v14 * v13;
  }

  set_int_value(v12, *MEMORY[0x277CD2948], v21);
  v22 = IOSurfaceCreate(v12);
  if (!v22)
  {
    aj_log_error("IOSAPlugin", "Unable to create an output surface");
  }

  CFRelease(v12);
  return v22;
}

void set_int_value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void *aj_reset_mcustate(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x700000000;
  return result;
}

uint64_t aj_init_component(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v7 = result;
  v8 = *result;
  v9 = *(result + 8) + 8;
  v10 = a3;
  v11 = *result + 4 * a3;
  *(a2 + 32) = *(v9 + 16 * *(v11 + 3356));
  *(a2 + 40) = *(v9 + 16 * *(v11 + 3372) + 8);
  v12 = *(result + 168);
  *(a2 + 712) = v12;
  if (a3 && !a5)
  {
    if (*(result + 6884) || v12 == 8)
    {
      if (!*(result + 6612) && *(result + 6888) && v12 != 1)
      {
        v12 >>= 1;
        goto LABEL_12;
      }
    }

    else if (*(v8 + 16) == 1 && *(v8 + 32) == 1)
    {
      v12 *= 2;
LABEL_12:
      *(a2 + 712) = v12;
    }
  }

  *(a2 + 536) = 8 / v12;
  v13 = (v8 + 4 * v10);
  if (*(v8 + 86))
  {
    goto LABEL_32;
  }

  if (a4)
  {
    *(a2 + 704) = &glob_non_zigzag;
    *(a2 + 696) = &glob_non_zigzag_pm;
    result = aj_init_QT_as_no_op(a2 + 48, 1);
    goto LABEL_32;
  }

  v14 = v8 + (v13[12] << 8);
  v15 = &aj_glob_zigzag_pm;
  if (v12 == 1)
  {
    v16 = &aj_glob_zigzag_trans;
  }

  else
  {
    v16 = aj_glob_zigzag;
  }

  if (v12 == 1)
  {
    v15 = &aj_glob_zigzag_trans_pm;
  }

  *(a2 + 704) = v16;
  *(a2 + 696) = v15;
  if (*(v8 + 4) == 12)
  {
    aj_init_QT_as_no_op(a2 + 48, v12);
    result = aj_init_QT_aanIDCT((v14 + 88), (a2 + 720), *(a2 + 712), v16);
    goto LABEL_32;
  }

  if (*(v8 + 84))
  {
    v17 = v16;
  }

  else
  {
    v17 = &glob_non_zigzag;
  }

  result = aj_init_QT_aanIDCT((v14 + 88), (a2 + 48), v12, v17);
  v18 = *(v7 + 6680);
  if (v18 == 1)
  {
    if (a3)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v18 == 2 && *(v14 + 88) >= 4 && *(*v7 + 8) <= 640 && !a3 && *(*v7 + 12) < 641)
  {
LABEL_35:
    if (*(a2 + 712) == 1)
    {
      result = aj_mosquito_spray_enable(a2);
    }

    goto LABEL_37;
  }

LABEL_32:
  if (!a3)
  {
LABEL_37:
    v19 = *(*(v7 + 8) + 88);
    goto LABEL_38;
  }

LABEL_33:
  v19 = 1;
LABEL_38:
  *(a2 + 8) = v19;
  *a2 = v13[4];
  *(a2 + 4) = v13[8];
  *(a2 + 12) = 0;
  return result;
}

uint64_t aj_compute_helpers(int32x2_t *a1)
{
  v2 = *a1;
  result = aj_get_format_description(a1[822].i32[1], &a1[2] + 4);
  if (!result)
  {
    v4 = a1[867].u8[1];
    if (a1[867].i8[1])
    {
      v4 = a1[867].i32[1] == 0;
    }

    if (a1[2].i32[1] == 1 && v4 == 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = *a1->i32[0];
    }

    a1[808].i32[0] = v6;
    a1[808].i32[1] = 0;
    v7 = *(*&a1[1] + 88);
    a1[809].i32[0] = v7;
    a1[809].i32[1] = v7 + 1;
    a1[810].i32[0] = v7 + 2;
    v8 = a1[810].u32[1];
    v9 = a1[810].i32[1] & 1;
    v10 = a1[5].i32[1];
    v11 = a1[6].i32[0];
    if (v10 <= 1)
    {
      v9 = 0;
    }

    a1[811].i32[1] = v8 + v9;
    v12 = a1[811].i32[0];
    if (v11 <= 1)
    {
      a1[812].i32[0] = v12;
    }

    else
    {
      a1[812].i32[0] = (a1[811].i32[0] & 1) + a1[811].i32[0];
      v13 = a1[813].i32[0];
      if ((v13 & 1) != 0 && v13 < v12)
      {
        a1[813].i32[0] = v13 + 1;
      }
    }

    v14 = a1[812].i32[1];
    if (v10 >= 2 && (v14 & 1) != 0 && v14 < v8)
    {
      a1[812].i32[1] = ++v14;
    }

    compute_padding(v8, v14, v10, &a1[824]);
    a1[824].i32[1] = a1[811].i32[1] - (a1[812].i32[1] + a1[824].i32[0]);
    compute_padding(a1[811].u32[0], a1[813].i32[0], a1[6].i32[0], &a1[823]);
    v15 = a1[813].i32[0];
    a1[823].i32[1] = a1[812].i32[0] - (v15 + a1[823].i32[0]);
    v16 = &a1[3] + 1;
    v17 = vld1_dup_f32(v16);
    a1[825] = vmul_s32(a1[824], v17);
    v18 = a1[1];
    v19 = a1[21].i32[0];
    v21 = v18[18];
    v20 = v18[19];
    a1[21].i32[1] = v20 / v19;
    a1[22].i32[0] = v21 / v19;
    v22 = a1[826].i32[1];
    if (v22)
    {
      v23 = 1 << (v22 + 3);
    }

    else
    {
      v23 = v19;
    }

    v24 = a1[853].i32[1] / v23;
    v25 = a1[854].i32[0] / v23;
    v26 = a1[853].i32[0];
    v27 = v26 / v20;
    v28 = v26 % v20;
    v29 = (v23 - 1 + v20 - v26 % v20) / v23;
    if (v29 >= v25)
    {
      v30 = a1[854].i32[0] / v23;
    }

    else
    {
      v30 = v29;
    }

    v31 = a1[852].i32[1];
    v32 = v31 / v21;
    v33 = v31 % v21;
    v34 = (v23 - 1 + v21 - v31 % v21) / v23;
    if (v34 >= v24)
    {
      v35 = a1[853].i32[1] / v23;
    }

    else
    {
      v35 = v34;
    }

    v36 = v25 - v30;
    v37 = v24 - v35;
    v38 = (v23 + v21 - 1) / v21;
    v39 = (v21 - 1 + v37 * v23) / v21;
    v40 = v39 + v32 + v38;
    a1[854].i32[1] = v27;
    a1[855].i32[0] = (v20 - 1 + v36 * v23) / v20 + v27 + (v23 + v20 - 1) / v20;
    a1[855].i32[1] = v32;
    a1[856].i32[0] = v40;
    v41 = (v38 + v39) * v21;
    if (v40 == v18[20])
    {
      v42 = *(*a1 + 8) % v21;
      if (v42)
      {
        v41 -= v21 - v42;
      }
    }

    a1[862].i32[1] = v41 / v23;
    a1[827].i32[0] = v24;
    a1[827].i32[1] = v25;
    a1[828].i32[0] = v22;
    v43 = 1;
    if (v22 >= 1)
    {
      v43 = (1 << v22) / *(*a1 + 32);
    }

    a1[828].i32[1] = v43;
    v44 = v33 / v23;
    a1[856].i32[1] = v44;
    a1[857].i32[0] = v28 / v23;
    if (v21 <= v23)
    {
      v45 = 1;
    }

    else if (v24 <= v34)
    {
      v45 = v44 + v24;
    }

    else
    {
      v45 = v21 / v23;
      if (v37 % v45)
      {
        v45 = v37 % v45;
      }
    }

    a1[857].i32[1] = v45;
    if (v20 <= v23)
    {
      v46 = 1;
    }

    else if (v25 <= v29)
    {
      v46 = v28 / v23 + v25;
    }

    else
    {
      v46 = v20 / v23;
      if (v36 % v46)
      {
        v46 = v36 % v46;
      }
    }

    a1[858].i32[0] = v46;
    v47 = a1[812].i32[1];
    a1[822].i8[1] = v24 != v47;
    a1[822].i8[0] = v25 != v15;
    v48 = *(*a1 + 4);
    if (v48 <= 8)
    {
      v50 = v24 != v47 || v25 != v15;
      if (*(*a1 + 86) && v50)
      {
        goto LABEL_59;
      }
    }

    else if (v24 != v47 || v25 != v15)
    {
LABEL_59:
      aj_log_error("DecodeInit", "Resizing is not supported for 12-bit or lossless jpegs");
      return 3;
    }

    v51 = *v2 == 3 && v2[4] == 2 && v2[8] == 2;
    result = 0;
    a1[2].i8[2] = v51;
    if (v48 <= 8)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    a1[850].i32[0] = v52;
  }

  return result;
}

uint64_t compute_padding(uint64_t result, int a2, int a3, int *a4)
{
  v4 = ((result | 1) - a2) / 2;
  v5 = result - a2;
  if (a3 >= 2)
  {
    v4 = ((v5 / 2) & 1) + v5 / 2;
  }

  v6 = ((v5 + 1) / 2) & 0xFFFFFFFE;
  if (a3 < 2)
  {
    v6 = (result - a2) / 2;
  }

  if (result)
  {
    v4 = v6;
  }

  *a4 = v4;
  return result;
}

__n128 aj_calc_crop(int32x4_t *a1, unsigned int a2, unsigned int a3, int a4, int a5, __n128 *a6)
{
  if (a6)
  {
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a1, v6))));
    v8 = a1->i64[1];
    v9 = HIDWORD(*a1);
    if (v7)
    {
      v10 = HIDWORD(a1->i64[0]);
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }

    if ((v7 & 1) == 0)
    {
      v8 = a2;
      v9 = a3;
    }

    v12 = (v8 * a5 + (a4 + 1) / 2) / a4;
    v13 = (v9 * a4 + (a5 + 1) / 2) / a5;
    if ((v8 << 15) / a4 > (v9 << 15) / a5)
    {
      v12 = v9;
    }

    else
    {
      v13 = v8;
    }

    if (v13 <= 1)
    {
      v13 = 1;
    }

    if (v12 <= 1)
    {
      v12 = 1;
    }

    result.n128_u32[0] = v11 + (v8 - v13) / 2;
    result.n128_u32[1] = v10 + (v9 - v12) / 2;
    result.n128_u64[1] = __PAIR64__(v12, v13);
    *a6 = result;
  }

  return result;
}

uint64_t aj_calculate_dimensions(_DWORD *a1, uint64_t a2, int *a3, int *a4, signed int *a5, int *a6, __n128 *a7, int *a8, int *a9)
{
  v17 = a1 + 6;
  v16 = a1[6];
  v18 = (a1 + 3);
  v19 = v17 - 1;
  v20 = *(v17 - 1);
  if (v16 == -1 && v20 == -1)
  {
    if (v18->i32[0] == -1 && a1[4] == -1)
    {
      v22 = *(a2 + 8);
      v23 = *(a2 + 12);
      v53.n128_u64[0] = 0;
      v53.n128_u64[1] = __PAIR64__(v23, v22);
      v20 = -1;
      goto LABEL_10;
    }

    v20 = -1;
  }

  v53 = *v18;
  v22 = v20;
  v23 = v16;
LABEL_10:
  v24 = a1[7];
  if (v24 && (v25 = a1[8]) != 0)
  {
    if (v22 >= v24)
    {
      v26 = 1;
      v27 = v22;
      do
      {
        if (v26 > 8 || v23 / v26 < v25)
        {
          break;
        }

        if (v27 == v24 && v23 / v26 == v25)
        {
          goto LABEL_30;
        }

        v26 *= 2;
        v27 = v22 / v26;
      }

      while (v22 / v26 >= v24);
      if (v22 >= v24)
      {
        v26 = 1;
        v28 = v22;
        while (v23 / v26 >= v25)
        {
          if (v28 == v24 && v23 / v26 == v25)
          {
            goto LABEL_30;
          }

          ++v26;
          v28 = v22 / v26;
          if (v22 / v26 < v24)
          {
            break;
          }
        }
      }
    }

    v29 = a1[9];
    if (v29 == 1)
    {
      if (v16 == -1 && v20 == -1 && v18->i32[0] == -1 && a1[4] == -1)
      {
        v49 = *(a2 + 8);
        v50 = *(a2 + 12);
        if ((v49 << 15) / v24 <= (v50 << 15) / v25)
        {
          v32 = v25;
          v52 = (v49 * v25 + (v50 + 1) / 2) / v50;
        }

        else
        {
          v51 = v50 * v24 + (v49 + 1) / 2;
          v52 = v24;
          v32 = v51 / v49;
        }

        if (v52 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v52;
        }

        if (v32 <= 1)
        {
          v32 = 1;
        }
      }

      else
      {
        if ((v20 << 15) / v24 <= (v16 << 15) / v25)
        {
          v35 = a1[8];
          v31 = (v20 * v25 + (v16 + 1) / 2) / v16;
        }

        else
        {
          v31 = a1[7];
          v35 = (v24 * v16 + (v20 + 1) / 2) / v20;
        }

        if (v31 <= 1)
        {
          v31 = 1;
        }

        if (v35 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v35;
        }
      }
    }

    else
    {
      if (v29 == 3)
      {
        if (v16 == -1 && v20 == -1 && v18->i32[0] == -1 && a1[4] == -1)
        {
          v19 = (a2 + 8);
          v17 = (a2 + 12);
        }

        v33 = *v17;
        v34 = *v19;
        if ((*v19 << 15) / v24 <= (*v17 << 15) / v25)
        {
          v24 = v34 * v25 / v33;
        }

        else
        {
          v25 = v33 * v24 / v34;
        }

        if (v24 <= 1)
        {
          v24 = 1;
        }

        if (v25 <= 1)
        {
          v25 = 1;
        }
      }

      else if (v29 == 2)
      {
        aj_calc_crop(v18, *(a2 + 8), *(a2 + 12), v24, v25, &v53);
        v22 = v53.n128_i32[2];
        v23 = v53.n128_i32[3];
      }

      v31 = v24;
      v32 = v25;
    }

    v36 = (v22 << 15) / v31;
    v37 = (v23 << 15) / v32;
    v38 = v36 <= v37;
    if (v36 <= v37)
    {
      v39 = v23;
    }

    else
    {
      v39 = v22;
    }

    if (v38)
    {
      v40 = v32;
    }

    else
    {
      v40 = v31;
    }

    if (v38)
    {
      v41 = v22;
    }

    else
    {
      v41 = v23;
    }

    v42 = -1;
    do
    {
      v43 = v39 >> (v42 + 2);
      v44 = v41 >> (v42 + 2);
      ++v42;
    }

    while (v43 >= v40 && v44 > 0);
    v26 = 1 << v42;
    if (1 << v42 >= 9)
    {
      if (v22 / v24 < 16 || v23 / v25 < 16)
      {
        v30 = 0;
LABEL_96:
        v26 = 8;
        goto LABEL_97;
      }

LABEL_86:
      if (v31 <= v22 >> 5)
      {
        v46 = 5;
        while (1)
        {
          v30 = v46 - 4;
          if ((v46 - 4) > 9 || v32 > v23 >> v46)
          {
            break;
          }

          if (v31 > v22 >> ++v46)
          {
            v30 = v46 - 4;
            goto LABEL_96;
          }
        }
      }

      else
      {
        v30 = 1;
      }

      goto LABEL_96;
    }

    v30 = 0;
  }

  else
  {
    v26 = a1[19];
    v24 = v22 / v26;
    v25 = v23 / v26;
LABEL_30:
    if (v26 >= 3)
    {
      if (v26 == 3)
      {
        v30 = 0;
        v26 = 2;
      }

      else if (v26 >= 8)
      {
        if (v26 >= 0x10)
        {
          v31 = v24;
          v32 = v25;
          goto LABEL_86;
        }

        v30 = 0;
        v26 = 8;
      }

      else
      {
        v30 = 0;
        v26 = 4;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v24;
    v32 = v25;
  }

LABEL_97:
  if (v24 < 1 || v25 < 1 || v31 < 1 || v32 < 1 || v31 > v24 || v32 > v25)
  {
    aj_log_error("DecodeInit", "Out dimensions are invalid, check options", v53.n128_u64[0]);
    return 5;
  }

  else
  {
    if (a3)
    {
      *a3 = v24;
    }

    if (a4)
    {
      *a4 = v25;
    }

    if (a5)
    {
      *a5 = v31;
    }

    if (a6)
    {
      *a6 = v32;
    }

    if (a7)
    {
      *a7 = v53;
    }

    if (a8)
    {
      *a8 = v26;
    }

    result = 0;
    if (a9)
    {
      *a9 = v30;
    }
  }

  return result;
}

uint64_t aj_init_decode_jobs(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v98 = 0;
  memset(v97, 0, sizeof(v97));
  v96 = a2;
  v9 = *(a1 + 6948);
  if (v9 < 2)
  {
    goto LABEL_8;
  }

  v11 = (v9 - 1);
  v12 = *(a4 + 24);
  if (v12)
  {
    free(v12);
  }

  v13 = malloc_type_calloc(1uLL, 1672 * v11, 0x10B00408DDC132BuLL);
  *(a4 + 24) = v13;
  *(a1 + 6952) = v13;
  if (v13)
  {
    v14 = *a2;
    v15 = v13 + 16;
    v16 = v97;
    do
    {
      *(v15 - 1) = a1;
      *v15 = v14;
      *v16++ = v15;
      v15 += 418;
      --v11;
    }

    while (v11);
    v9 = *(a1 + 6948);
LABEL_8:
    v17 = *(a1 + 6840);
    v18 = *(a1 + 6836);
    v19 = v17 - v18;
    if (*(a1 + 6960) == 1)
    {
      v20 = *(a1 + 168);
      if (v20 <= 8)
      {
        v21 = dword_240AB08A8[v20 - 1];
      }

      else
      {
        v21 = 80;
      }

      v22 = v21 * v19 / 100;
    }

    else
    {
      v22 = v19 / v9;
    }

    if (*(a1 + 6612))
    {
      v23 = 1;
    }

    else
    {
      v23 = *(a1 + 172);
    }

    a2[6] = v18;
    v24 = v9;
    if (v9 >= 2)
    {
      v25 = v9 - 1;
      v26 = v97;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v29 = *(v27 + 24) + v22;
        *(v27 + 28) = v29;
        *(v28 + 24) = v29;
        ++v26;
        --v25;
      }

      while (v25);
    }

    v30 = __OFSUB__(v9, 1);
    v31 = (v9 - 1);
    (&v96)[v31][7] = v17;
    if (v31 < 0 == v30)
    {
      v32 = 0;
      v33 = *(a1 + 6844);
      v34 = *(a1 + 6628);
      do
      {
        v35 = 0;
        v36 = (&v96)[v32];
        v37 = v36[6];
        v38 = v36[7];
        v36[20] = v37;
        v36[21] = v33;
        v39 = (v38 - v37) / v34;
        *(v36 + 15) = v39;
        if (!v32)
        {
          v35 = *(a1 + 6856);
        }

        v40 = v39 * v23;
        v36[18] = v35;
        v36[19] = v40;
        if (v32 == v31)
        {
          v36[19] = v40 - v23 + *(a1 + 6864);
          if (!v32)
          {
            v37 = 0;
          }

          v36[2] = v37;
          v38 = *(*(a1 + 8) + 84);
        }

        else
        {
          if (!v32)
          {
            v37 = 0;
          }

          v36[2] = v37;
        }

        v36[3] = v38;
        if (*v36)
        {
          v41 = *(a3 + 112);
          v42 = (v37 + v41 - 1) / v41;
          *(v36 + 13) = v42;
          v36[11] = v42 * v41;
          v36[12] = 0;
          *(v36 + 2) = 0;
          if (*(a3 + 136) == 1)
          {
            v43 = (a3 + 140);
            v44 = 9;
            while (1)
            {
              v45 = *v43;
              if (v37 <= v45 && v38 > v45)
              {
                break;
              }

              v43 += 12;
              if (!--v44)
              {
                goto LABEL_40;
              }
            }

            *(v36 + 2) = v43;
          }
        }

LABEL_40:
        v36[380] = v36[374];
        ++v32;
      }

      while (v32 != v24);
    }

    if (a5)
    {
      goto LABEL_42;
    }

    v48 = (a1 + 4096);
    v49 = *(a1 + 24) == 2 && (*(a1 + 48) > 1);
    v51 = *(a1 + 6937) && !*(a1 + 6940) && *(a1 + 6464) == 3;
    v52 = *(a1 + 6584);
    v53 = aj_highest_set_bit(*(a1 + 6892));
    v54 = aj_highest_set_bit(*(a1 + 6896));
    v55 = *(a1 + 6612) ? 1 : *(a1 + 172);
    v82 = v55;
    v56 = *(a1 + 6900);
    v95 = 0;
    LODWORD(v57) = *(a1 + 6948);
    if (v57 <= 0)
    {
      goto LABEL_42;
    }

    v58 = 0;
    v83 = v56;
    v84 = v54 - 1;
    v59 = (v56 + v53 - 1) >> (v53 - 1);
    v60 = v55;
    v81 = v51;
    while (1)
    {
      v61 = (&v96)[v58];
      v62 = *(v61 + 60) * v60;
      *&v88 = *(a1 + 6892);
      *(&v88 + 1) = __PAIR64__(v59, v56);
      v89 = v59;
      v90 = v59;
      v91 = v62;
      v92 = (v62 + v84) >> v84;
      v93 = v92;
      v94 = v92;
      *(v61 + 32) = v52;
      *(v61 + 36) = v52;
      if (v58)
      {
        if (v49)
        {
          v63 = HIDWORD(v95);
          if (v52 & 1 | HIDWORD(v95))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v63 = HIDWORD(v95);
          if (HIDWORD(v95))
          {
LABEL_63:
            v64 = v49;
            if (v63 <= 1)
            {
              v65 = 1;
            }

            else
            {
              v65 = v63;
            }

            if (*(a1 + 6464) >= 1)
            {
              v66 = 0;
              do
              {
                if (v66)
                {
                  v67 = aj_highest_set_bit(DWORD1(v88)) - 1;
                }

                else
                {
                  v67 = 0;
                }

                *(v61 + 1100 + 4 * v66++) = (v67 + v65) >> v67;
              }

              while (v66 < *(a1 + 6464));
            }

            v49 = v64;
            v48 = (a1 + 4096);
            v51 = v81;
            v60 = v82;
            if (!aj_bufferprocessor_append(a1, v61, aj_savefirst_processor, &v88))
            {
              goto LABEL_46;
            }
          }
        }
      }

      if (v48[2793] && !aj_bufferprocessor_append(a1, v61, aj_upsample422_processor, &v88))
      {
        goto LABEL_46;
      }

      if (*(v61 + 72) > 0 || *(v61 + 76) < *(v61 + 60) * v60 || *(a1 + 6868))
      {
        if (!aj_bufferprocessor_append(a1, v61, aj_crop_processor, &v88))
        {
          goto LABEL_46;
        }
      }

      else if (DWORD2(v88) != *(a1 + 6616))
      {
        DWORD2(v88) = *(a1 + 6616);
        v70 = aj_highest_set_bit(v88);
        HIDWORD(v88) = (*(a1 + 6616) + v70 - 1) >> (v70 - 1);
        v89 = HIDWORD(v88);
        v90 = HIDWORD(v88);
      }

      if (v51 && !aj_bufferprocessor_append(a1, v61, aj_rgb2yuv_processor, &v88))
      {
        goto LABEL_46;
      }

      if (v48[2481] || v48[2480])
      {
        v68 = aj_bufferprocessor_append(a1, v61, aj_resize_processor, &v88);
        if (!v68)
        {
          goto LABEL_46;
        }

        aj_bufferproc_resize_get_blendrows(v68, a1, v61, &v95 + 1, &v95);
      }

      *&v85 = *(a1 + 6928);
      *(&v85 + 1) = aj_icol_max_rows_out;
      v86 = 0;
      v87 = 0;
      if (!aj_bufferprocessor_append(a1, v61, &v85, &v88))
      {
        goto LABEL_46;
      }

      v52 += v91 + v95;
      if (v58 == v57 - 1)
      {
        v69 = 1;
        v56 = v83;
      }

      else
      {
        v56 = v83;
        v69 = !(v49 & v52) && v48[2480] == 0;
      }

      *(v61 + 1083) = v69;
      ++v58;
      v57 = *(a1 + 6948);
      if (v58 >= v57)
      {
        if (v57 >= 1)
        {
          v71 = 0;
LABEL_97:
          v72 = *(a1 + 6464);
          if (v72 >= 1)
          {
            v73 = 0;
            v74 = (&v96)[v71];
            v75 = (a1 + 6712);
            do
            {
              v76 = *(v75 - 1) + v74[v73 + 275];
              if (v76)
              {
                result = aj_rowbuffer_add_block(v74 + 38, *v75, v76, 0x10uLL);
                if (result)
                {
                  goto LABEL_47;
                }

                v72 = *(a1 + 6464);
              }

              ++v73;
              v75 += 2;
            }

            while (v73 < v72);
          }

          v77 = 0;
          v78 = 1;
          while (1)
          {
            v79 = v78;
            v80 = (a1 + 6768 + 16 * v77);
            if (*v80)
            {
              result = aj_rowbuffer_add_block((&v96)[v71] + 38, v80[1], *v80, 4uLL);
              if (result)
              {
                goto LABEL_47;
              }
            }

            v78 = 0;
            v77 = 1;
            if ((v79 & 1) == 0)
            {
              result = 0;
              if (++v71 < *(a1 + 6948))
              {
                goto LABEL_97;
              }

              goto LABEL_47;
            }
          }
        }

LABEL_42:
        result = 0;
        goto LABEL_47;
      }
    }
  }

  aj_log_error("DecodeInit", "Could not allocate thread instances");
LABEL_46:
  result = 6;
LABEL_47:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_decode_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t *a9, int a10, char a11, unsigned int a12)
{
  v121 = a1;
  v139 = *MEMORY[0x277D85DE8];
  v19 = a3 + 4096;
  v122 = 0;
  v20 = a5[8];
  v123 = a5[7];
  v124 = v20;
  v125 = *(a5 + 18);
  bzero(a5, 0x5F8uLL);
  v21 = v124;
  a5[7] = v123;
  a5[8] = v21;
  *(a5 + 18) = v125;
  bzero(a3, 0x1B40uLL);
  *(a3 + 17) = a11;
  v22 = 1;
  *(a3 + 16) = 1;
  *a3 = a6;
  *(a3 + 8) = a4;
  if (*(a8 + 20) == -1 && *(a8 + 12) == -1)
  {
    v22 = *(a8 + 16) != -1;
  }

  *(v19 + 2796) = 0x100000001;
  *(v19 + 2808) = *(a8 + 152);
  if (a6[852])
  {
    *(v19 + 2841) = 1;
    if (*(a8 + 136))
    {
      v23 = (a8 + 140);
    }

    else
    {
      v23 = a6 + 853;
    }
  }

  else
  {
    v24 = *(a8 + 136);
    *(v19 + 2841) = *(a8 + 136) != 0;
    if (!v24)
    {
      goto LABEL_11;
    }

    v23 = (a8 + 140);
  }

  *(a3 + 6940) = *v23;
LABEL_11:
  *(v19 + 2848) = *(a8 + 144);
  v25 = *(a8 + 80);
  *(a3 + 6808) = v25;
  v26 = *(a3 + 6804) & 0xFFFFFFFC | (v25 / 90);
  *(a3 + 6804) = v26;
  if (*(a8 + 84))
  {
    v26 |= 4u;
    *(a3 + 6804) = v26;
  }

  if (*(a8 + 88))
  {
    *(a3 + 6804) = v26 | 8;
  }

  *(a3 + 6608) = *(a8 + 72);
  result = aj_calculate_dimensions(a8, a6, (a3 + 6484), (a3 + 6488), (a3 + 6500), (a3 + 6504), (a3 + 6820), (a3 + 168), (a3 + 6612));
  if (!result)
  {
    *(a3 + 6812) = v22;
    if (*(a3 + 6828) == a6[2] && *(a3 + 6832) == a6[3])
    {
      *(a3 + 6816) = 0;
    }

    else
    {
      *(a3 + 6816) = 1;
      if (*(a6 + 86))
      {
        aj_log_error("DecodeInit", "Cropping is not supported for lossless JPEG");
        goto LABEL_39;
      }
    }

    v119 = a7;
    v120 = a2;
    *a5 = *(a8 + 100);
    if (*(a6 + 84) || *(a6 + 86))
    {
      *a5 = 0;
    }

    v29 = 0;
    v30 = (a3 + 128);
    do
    {
      *(a3 + v29 + 128) = *(a8 + v29 + 40);
      v29 += 8;
    }

    while (v29 != 32);
    v31 = *(a8 + 8);
    *(a3 + 6580) = v31;
    v32 = *(a8 + 96);
    if (v32 < 5)
    {
      *(a3 + 6884) = dword_240AB08C8[v32];
      *(a3 + 6680) = *(a8 + 148);
      *(a5 + 374) = *(a8 + 112);
      a5[94] = *(a8 + 120);
      if (v31 == 14)
      {
        result = aj_get_texture_size(a6, a8, a3 + 6512, *(*(a3 + 8) + 356), 0, 0, 0);
        if (result)
        {
          goto LABEL_40;
        }
      }

      result = aj_compute_helpers(a3);
      if (result)
      {
        goto LABEL_40;
      }

      if (a10 != 1)
      {
        v33 = *(a3 + 24);
        if (v33 != a10)
        {
          aj_log_error("DecodeInit", "Number of output planes (%d) must be either 1 or %d\n", a10, v33);
          result = 8;
          goto LABEL_40;
        }
      }

      v34 = *(a3 + 6808);
      v35 = *(a3 + 6580);
      if ((v35 - 25) > 1)
      {
        v44 = *(a3 + 24);
        if (v44 == 3)
        {
          v45 = *a3;
          if (*(a3 + 168) == 8 || *v45 == 1)
          {
            *(a3 + 44) = v45[4];
            v46 = v45[8];
          }

          else
          {
            v46 = 2;
            *(a3 + 44) = 2;
          }

          *(a3 + 48) = v46;
          v52 = *(a3 + 128);
          if (!v52)
          {
            v52 = *(a3 + 6512);
          }

          *(a3 + 96) = v52;
          v53 = *(a3 + 136);
          if (!v53)
          {
            v53 = *(a3 + 6544);
          }

          *(a3 + 104) = v53;
          v54 = *(a3 + 144);
          if (!v54)
          {
            v54 = *(a3 + 6544);
          }

          *(a3 + 112) = v54;
        }

        else
        {
          v47 = v34 == 90 || v34 == 270;
          v48 = 6492;
          if (v47)
          {
            v48 = 6496;
          }

          v49 = *(a3 + v48);
          v50 = *(a3 + 128);
          if (!v50)
          {
            v50 = *(a3 + 28) * v49;
          }

          *(a3 + 96) = v50;
          if (v44 == 2)
          {
            v51 = *(a3 + 136);
            if (!v51)
            {
              v51 = v49 / *(a3 + 44) * *(a3 + 32);
            }

            *(a3 + 104) = v51;
          }
        }
      }

      else
      {
        v36 = 0;
        v37 = *a3;
        v38 = *(a3 + 8);
        *(a3 + 44) = *(*a3 + 16);
        *(a3 + 48) = *(*&v37 + 32);
        v39 = *(v38 + 80);
        *&v123 = *(v38 + 72) * v39;
        *(&v123 + 1) = v39;
        *&v124 = v39;
        v40 = (a3 + 128);
        do
        {
          v42 = *v40++;
          v41 = v42;
          if (!v42)
          {
            v41 = *(&v123 + v36) * *(a3 + 28 + 4 * v36);
          }

          *(v30 - 4) = v41;
          ++v36;
          v30 = v40;
        }

        while (v36 != 3);
      }

      if (a10 >= 1)
      {
        v55 = (a3 + 64);
        v56 = a10;
        do
        {
          v57 = *a9;
          a9 += 2;
          *v55++ = v57;
          --v56;
        }

        while (v56);
      }

      v58 = *(a3 + 24);
      if (v58 > a10)
      {
        if (v58 == 2)
        {
          v59 = v34 == 90 || v34 == 270;
          v60 = 6496;
          if (v59)
          {
            v60 = 6492;
          }

          *(a3 + 72) = *(a3 + 64) + *(a3 + 96) * *(a3 + v60);
LABEL_94:
          v75 = *a3;
          v76 = *(*a3 + 16);
          v77 = *(*a3 + 32);
          v79 = v76 == 2 && v77 == 2;
          v80 = *(a3 + 44) == 2 && *(a3 + 48) == 2;
          v81 = *(a3 + 6580);
          if ((v81 - 25) < 2)
          {
            goto LABEL_125;
          }

          if (*(v19 + 2841) && *(a3 + 6940) != 1 || v81 == 15 || *v75 == 4)
          {
            *(a3 + 6884) = 2;
          }

          if (v81 == 14)
          {
            *(a3 + 6884) = 0;
          }

          if (!v79)
          {
            goto LABEL_252;
          }

          if (*(a3 + 6884) != 2)
          {
            *(a3 + 6884) = 0;
          }

          if (v80)
          {
            v82 = 0;
          }

          else
          {
LABEL_252:
            if (*(a3 + 168) != 8 || *(a3 + 6884))
            {
              goto LABEL_120;
            }

            v82 = 1;
          }

          *(a3 + 6884) = v82;
LABEL_120:
          if (*(a3 + 6612))
          {
            *(a3 + 6884) = 2;
LABEL_124:
            *(v19 + 2792) = 1;
            goto LABEL_125;
          }

          v83 = *(a3 + 6884);
          if (v83 == 2 && v77 == 2)
          {
            goto LABEL_124;
          }

          if (v83 == 2 && v76 == 2 && *(a3 + 20) != 1)
          {
            *(v19 + 2793) = 1;
            *(a3 + 6704) += 2;
          }

LABEL_125:
          v137 = 0u;
          v138 = 0u;
          if (v75[1] == 12)
          {
            v84 = aj_idct_s1_12bit;
            *&v137 = aj_idct_s1_12bit;
            *(&v137 + 1) = aj_idct_s2_12bit;
            *&v138 = aj_idct_s4_12bit;
            *(&v138 + 1) = aj_idct_s8_12bit;
            v85 = *(a3 + 6884);
            if (v85)
            {
              v86 = aj_idct_s1_12bit;
            }

            else
            {
              v86 = aj_idct_s2_12bit;
            }

            if (v85)
            {
              v87 = aj_idct_s2_12bit;
            }

            else
            {
              v87 = aj_idct_s4_12bit;
            }

            *&v123 = v86;
            if (v85)
            {
              v88 = aj_idct_s4_12bit;
            }

            else
            {
              v88 = aj_idct_s8_12bit;
            }

            v128 = v86;
            v129 = v88;
            v132 = v87;
            v133 = aj_idct_s8_12bit;
            v89 = aj_idct_s1_16x16_bilinear_12bit;
            if (!v85)
            {
              v89 = aj_idct_s1_12bit;
            }

            *(&v124 + 1) = v89;
            v125 = v87;
            v135 = aj_idct_s8_12bit;
            v136 = v88;
            if (!v85)
            {
              v84 = aj_idct_s1_4x8_12bit;
            }

            *&v124 = v84;
            if (v85)
            {
              v90 = aj_idct_s2_12bit;
            }

            else
            {
              v90 = aj_idct_s2_2x4_12bit;
            }

            v127 = v90;
            if (v85)
            {
              v91 = aj_idct_s4_12bit;
            }

            else
            {
              v91 = aj_idct_s4_1x2_12bit;
            }

            v131 = v91;
            v92 = aj_idct_s1_16x8_bilinear_12bit;
            v93 = aj_idct_s1_8x4_12bit;
            if (!v85)
            {
              v92 = aj_idct_s1_8x4_12bit;
            }

            *(&v123 + 1) = v92;
            v94 = aj_idct_s2_4x2_12bit;
            if (!v85)
            {
              v93 = aj_idct_s2_4x2_12bit;
            }

            v126 = v93;
            if (v85)
            {
              v95 = aj_idct_s4_2x1_12bit;
            }

            else
            {
              v94 = aj_idct_s4_2x1_12bit;
              v95 = aj_idct_s8_12bit;
            }

            v130 = v94;
            v134 = v95;
            if (v85)
            {
              v96 = 1;
              v97 = 1;
              if (v75[8] == 1)
              {
                if (v75[4] == 2)
                {
                  v96 = 2;
                }

                else
                {
                  v96 = 1;
                }
              }
            }

            else if (*(a3 + 168) == 8)
            {
              v97 = v75[8];
              v96 = v75[4];
            }

            else
            {
              v96 = 2;
              v97 = 2;
            }

            goto LABEL_185;
          }

          *&v137 = aj_idct_s1;
          *(&v137 + 1) = aj_idct_s2;
          *&v138 = aj_idct_s4;
          *(&v138 + 1) = aj_idct_s8;
          v98 = *(a3 + 6884);
          if (!v98)
          {
            if (*(a3 + 168) == 8)
            {
              v97 = v75[8];
              v96 = v75[4];
            }

            else
            {
              v97 = 2;
              v96 = 2;
            }

            *&v123 = aj_idct_s2;
            *(&v123 + 1) = aj_idct_s1_8x4;
            *&v124 = aj_idct_s1_4x8;
            *(&v124 + 1) = aj_idct_s1;
            v125 = aj_idct_s4;
            v126 = aj_idct_s2_4x2;
            v127 = aj_idct_s2_2x4;
            v128 = aj_idct_s2;
            v99 = aj_idct_s8;
            v129 = aj_idct_s8;
            v130 = aj_idct_s4_2x1;
            v131 = aj_idct_s4_1x2;
            v132 = aj_idct_s4;
            v133 = aj_idct_s8;
            v134 = aj_idct_s8;
            goto LABEL_184;
          }

          *&v123 = aj_idct_s1;
          v125 = aj_idct_s2;
          v129 = aj_idct_s4;
          v133 = aj_idct_s8;
          v97 = v75[8];
          if (v98 == 2)
          {
            v96 = 1;
            if (v97 == 1)
            {
              if (v75[4] == 2)
              {
                v96 = 2;
              }

              else
              {
                v96 = 1;
              }
            }

            *(&v123 + 1) = aj_idct_s1_16x8_bilinear;
            *&v124 = aj_idct_s1;
            *(&v124 + 1) = aj_idct_s1_16x16_bilinear;
            v126 = aj_idct_s1_8x4;
            v127 = aj_idct_s2;
            v128 = aj_idct_s1;
            v130 = aj_idct_s2_4x2;
            v131 = aj_idct_s4;
            v132 = aj_idct_s2;
            v134 = aj_idct_s4_2x1;
            v135 = aj_idct_s8;
            v136 = aj_idct_s4;
            v97 = 1;
            goto LABEL_185;
          }

          if (*(a3 + 168) == 8)
          {
            if (v81 == 14)
            {
              v96 = v75[4];
              v99 = aj_idct_s8;
LABEL_183:
              *(&v123 + 1) = aj_idct_s1;
              *&v124 = aj_idct_s1_8x16_nearest;
              *(&v124 + 1) = aj_idct_s1_8x16_nearest;
              v126 = aj_idct_s2;
              v127 = aj_idct_s2_4x8_nearest;
              v128 = aj_idct_s2_4x8_nearest;
              v130 = aj_idct_s4;
              v131 = aj_idct_s4_2x4_nearest;
              v132 = aj_idct_s4_2x4_nearest;
              v134 = aj_idct_s8;
LABEL_184:
              v135 = v99;
              v136 = v99;
LABEL_185:
              v100 = aj_highest_set_bit(*(a3 + 168)) - 1;
              v101 = aj_highest_set_bit(*(*a3 + 16));
              v102 = aj_highest_set_bit(*(*a3 + 32));
              *(a3 + 712) = *(&v137 + v100);
              v103 = aj_idct_s8;
              if (*(a3 + 6612))
              {
                v96 = 1;
                v97 = 1;
              }

              else
              {
                v103 = *(&v123 + 4 * v100 + 2 * v101 + v102 - 3);
              }

              *(a3 + 6892) = v96;
              *(a3 + 6896) = v97;
              v104 = *(a3 + 6464);
              v106 = v120;
              v105 = v121;
              if (v104 > 1)
              {
                v107 = 0;
                v108 = vdupq_n_s64(v104 - 2);
                v109 = (a3 + 2280);
                do
                {
                  v110 = vmovn_s64(vcgeq_u64(v108, vorrq_s8(vdupq_n_s64(v107), xmmword_240AB0610)));
                  if (v110.i8[0])
                  {
                    *v109 = v103;
                  }

                  if (v110.i8[4])
                  {
                    v109[196] = v103;
                  }

                  v107 += 2;
                  v109 += 392;
                }

                while ((v104 & 0x7FFFFFFE) != v107);
              }

              if (v104 >= 1)
              {
                v111 = (a3 + 908);
                do
                {
                  v112 = *(v111 - 49);
                  if (v112 == aj_idct_s1_16x16_bilinear_12bit)
                  {
                    v113 = 32;
                  }

                  else
                  {
                    v113 = 16;
                    if (v112 != aj_idct_s1_4x8_12bit && v112 != aj_idct_s1_16x8_bilinear_12bit && v112 != aj_idct_s1_12bit && v112 != aj_idct_s1_8x16_nearest && v112 != aj_idct_s1_16x16_bilinear)
                    {
                      v113 = 8;
                      if (v112 != aj_idct_s2_2x4_12bit && v112 != aj_idct_s2_12bit && v112 != aj_idct_s1_8x4_12bit && v112 != aj_idct_s2_4x8_nearest && v112 != aj_idct_s1_16x8_bilinear && v112 != aj_idct_s1 && v112 != aj_idct_s1_4x8)
                      {
                        v113 = 4;
                        if (v112 != aj_idct_s4_1x2_12bit && v112 != aj_idct_s4_12bit && v112 != aj_idct_s2_4x2_12bit && v112 != aj_idct_s4_2x4_nearest && v112 != aj_idct_s2_2x4 && v112 != aj_idct_s1_8x4 && v112 != aj_idct_s2)
                        {
                          v113 = 2;
                          if (v112 != aj_idct_s8_12bit && v112 != aj_idct_s4_2x1_12bit && v112 != aj_idct_s8_1x2_nearest && v112 != aj_idct_s4_1x2 && v112 != aj_idct_s2_4x2 && v112 != aj_idct_s4)
                          {
                            v113 = v112 == aj_idct_s4_2x1 || v112 == aj_idct_s8;
                          }
                        }
                      }
                    }
                  }

                  *v111 = v113;
                  v111 += 392;
                  --v104;
                }

                while (v104);
              }

              result = init_ra_table(a4, a5, *(a8 + 104), *(a8 + 108), v106);
              if (!result)
              {
                set_crop_offset(a3);
                result = init_invcol(a3);
                if (!result)
                {
                  result = aj_compute_buffer_sizes(v105, a3, a5);
                  if (!result)
                  {
                    v115 = *a8;
                    if (*a8 >= 8)
                    {
                      v115 = 8;
                    }

                    if (v115 <= 1)
                    {
                      v116 = 1;
                    }

                    else
                    {
                      v116 = v115;
                    }

                    *(a3 + 6948) = aj_get_numthreads_decode(a3, a8, *(v119 + 80) == 0, v116, (a3 + 6960));
                    result = aj_init_decode_jobs(a3, a5, a4, v105, 0);
                    if (!result)
                    {
                      result = aj_init_input_states(a3, a5, v119, a12, &v122);
                      if (!result)
                      {
                        if (*(a8 + 36) == 1 && !*(a3 + 17))
                        {
                          fill_image_edges(a3);
                        }

                        if (*a6 >= 1)
                        {
                          v117 = 0;
                          v118 = a3 + 192;
                          do
                          {
                            aj_init_component(a3, v118, v117++, 0, 0);
                            v118 += 1568;
                          }

                          while (v117 < *a6);
                        }

                        if (!*(a6 + 84) || (result = init_prog_scans(v106, a3, a5, v122), !result))
                        {
                          init_blockdec(a3, 0);
                          result = 0;
                        }
                      }
                    }
                  }
                }
              }

              goto LABEL_40;
            }

            v99 = aj_idct_s8_1x2_nearest;
          }

          else
          {
            v99 = aj_idct_s8_1x2_nearest;
            if (v81 == 14)
            {
              v99 = aj_idct_s8;
            }
          }

          v96 = 1;
          goto LABEL_183;
        }

        if (v35 == 14)
        {
          v61 = *(a3 + 64);
          v62 = *(a3 + 96);
          if (*(a3 + 17))
          {
            v63 = *(a3 + 172);
            v64 = v61 + v62 * v63;
            v65 = v63 / *(a3 + 48);
          }

          else
          {
            v64 = v61 + *(a3 + 6520) * v62;
            v65 = *(a3 + 6552);
          }

          v66 = v64 + *(a3 + 104) * v65;
          *(a3 + 72) = v64;
          *(a3 + 80) = v66;
        }

        else if (v58 == 3)
        {
          v68 = *a3;
          v67 = *(a3 + 8);
          v69 = v67[21];
          v70 = *(a3 + 64) + *(a3 + 96) * v69 * v67[19];
          v71 = v70 + *(a3 + 104) * v69;
          *(a3 + 72) = v70;
          *(a3 + 80) = v71;
          if (*v68 != 1)
          {
            goto LABEL_94;
          }

          goto LABEL_90;
        }
      }

      if (v58 != 3 || **a3 != 1)
      {
        goto LABEL_94;
      }

      v67 = *(a3 + 8);
LABEL_90:
      if (v67[89])
      {
        v73 = (*(a3 + 64) + 8 * *(a3 + 96) * *(a3 + 48));
        v74 = 8 * (*(a3 + 112) + *(a3 + 104));
      }

      else
      {
        memset(*(a3 + 72), 128, *(a3 + 6552) * *(a3 + 104));
        v73 = *(a3 + 80);
        v74 = *(a3 + 6552) * *(a3 + 112);
      }

      memset(v73, 128, v74);
      goto LABEL_94;
    }

    aj_log_error("DecodeInit", "Unsupported decoding quality.");
LABEL_39:
    result = 5;
  }

LABEL_40:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_ra_table(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!*a2)
  {
    result = 0;
    goto LABEL_11;
  }

  if ((a3 - 0x10000) < 0xFFFF0001 || (a4 - 0x10000) <= 0xFFFF0000)
  {
    aj_log_error("DecodeInit", "Unsupported RA-table sampling frequency");
    *a2 = 0;
    *(a2 + 16) = 0;
    return 8;
  }

  else
  {
    if ((*(a1 + 136) & 0xFFFFFFFE) == 2 && *(a1 + 96) && *(a1 + 104))
    {
      v8 = *(a1 + 112);
      v9 = *(a1 + 116);
      if (v9 == a4 && v8 == a3)
      {
        result = 0;
        *a2 = 0;
LABEL_11:
        *(a2 + 16) = 0;
        return result;
      }

      v11 = *(a5 + 24);
      *(a5 + 24) = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v11 = 0;
    }

    *(a1 + 112) = a3;
    *(a1 + 116) = a4;
    v12 = (a1 + 112);
    v13 = *(a1 + 80);
    v14 = (a4 + v13 - 1) / a4;
    v15 = (a3 + *(a1 + 84) - 1) / a3;
    *(a1 + 128) = v15;
    *(a1 + 132) = v14;
    v16 = 8 * v15;
    while (1)
    {
      v17 = 20 * v14;
      if (20 * v14 * v15 < 41943041)
      {
        break;
      }

      v18 = v13 + a4++;
      *(a1 + 116) = a4;
      v14 = v18 / a4;
      *(a1 + 132) = v14;
      if (v14 == 1)
      {
        v17 = 20;
        break;
      }
    }

    v19 = *(a5 + 24);
    if (v19)
    {
      free(v19);
      *(a5 + 24) = 0;
      v15 = *(a1 + 128);
    }

    v20 = malloc_type_calloc(1uLL, v16 + v15 * v17, 0xA3A4C56BuLL);
    *(a5 + 24) = v20;
    if (v20)
    {
LABEL_23:
      *(a1 + 96) = v20;
      *(a1 + 104) = v20;
      v24 = *(a1 + 128);
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = &v20[v16];
        v27 = 8 * v24;
        v28 = 20 * *(a1 + 132);
        do
        {
          *(*(a1 + 104) + v25) = v26;
          v25 += 8;
          v26 += v28;
        }

        while (v27 != v25);
      }

      if (v11)
      {
        v29 = *(a1 + 116);
        if (v9 >= v29)
        {
          v30 = *(a1 + 116);
        }

        else
        {
          v30 = v9;
        }

        if (v9 <= v29)
        {
          v31 = *(a1 + 116);
        }

        else
        {
          v31 = v9;
        }

        if (v30)
        {
          do
          {
            v32 = v30;
            v30 = v31 % v30;
            v31 = v32;
          }

          while (v30);
        }

        else
        {
          v32 = v31;
        }

        v43 = v29 * v9;
        v44 = *v12;
        if (v8 >= *v12)
        {
          v45 = *v12;
        }

        else
        {
          v45 = v8;
        }

        if (v8 <= v44)
        {
          v46 = *v12;
        }

        else
        {
          v46 = v8;
        }

        v47 = v43 / v32;
        if (v45)
        {
          do
          {
            v48 = v45;
            v45 = v46 % v45;
            v46 = v48;
          }

          while (v45);
        }

        else
        {
          v48 = v46;
        }

        v49 = v44 * v8 / v48;
        *(a1 + 120) = v49;
        *(a1 + 124) = v47;
        v50 = *(a1 + 84);
        if (v50 >= 1)
        {
          v51 = 0;
          v52 = *(a1 + 80);
          do
          {
            if (v52 >= 1)
            {
              v53 = 0;
              do
              {
                v54 = v11[v51 / v8] + 20 * (v53 / v9);
                v55 = *(*(a1 + 104) + 8 * (v51 / *(a1 + 112))) + 20 * (v53 / *(a1 + 116));
                v56 = *v54;
                *(v55 + 16) = *(v54 + 16);
                *v55 = v56;
                v53 += v47;
                v52 = *(a1 + 80);
              }

              while (v53 < v52);
              v50 = *(a1 + 84);
            }

            v51 += v49;
          }

          while (v51 < v50);
        }

        *(a1 + 136) = 2;
        *(a2 + 16) = 0;
        free(v11);
        return 0;
      }

      else
      {
        v33 = *(a1 + 80);
        v34 = *(a1 + 84);
        v35 = (a1 + 142);
        v36 = 9;
        do
        {
          *(v35 - 1) = v34;
          *v35 = v33;
          v35 += 12;
          --v36;
        }

        while (v36);
        if (v33 < 4 || v34 < 4)
        {
          *(a1 + 140) = v34 / 2;
          *(a1 + 142) = v33 / 2;
        }

        else
        {
          v37 = 0;
          v38 = (a1 + 142);
          do
          {
            *(v38 - 1) = (v34 + v34 * (v37 / 3u)) >> 2;
            *v38 = (v33 * (v37 % 3u + 1)) >> 2;
            v38 += 12;
            ++v37;
          }

          while (v37 != 9);
        }

        result = 0;
        *(a2 + 16) = a1 + 140;
        *(a1 + 136) = 1;
      }
    }

    else
    {
      while (1)
      {
        v21 = *(a1 + 80);
        v22 = *(a1 + 116);
        if (!(v21 / v22))
        {
          break;
        }

        *(a1 + 116) = v22 + 1;
        v23 = (v22 + v21) / (v22 + 1);
        *(a1 + 132) = v23;
        v20 = malloc_type_calloc(1uLL, v16 + 20 * v23 * *(a1 + 128), 0xAB50FF06uLL);
        *(a5 + 24) = v20;
        if (v20)
        {
          goto LABEL_23;
        }
      }

      aj_log_error("DecodeInit", "Failed to allocate RA-table");
      if (v11)
      {
        free(v11);
      }

      *a2 = 0;
      *v12 = 0;
      *(a1 + 120) = 0;
      *(a1 + 136) = 0;
      *(a1 + 128) = 0;
      v39 = (a1 + 142);
      v40 = 9;
      v42 = *(a1 + 80);
      v41 = *(a1 + 84);
      do
      {
        *(v39 - 1) = v41;
        *v39 = v42;
        v39 += 12;
        --v40;
      }

      while (v40);
      return 6;
    }
  }

  return result;
}

int32x4_t set_crop_offset(uint64_t a1)
{
  v1 = *(a1 + 6852);
  if (*(a1 + 6884) || *(a1 + 6464) != 3)
  {
    *(a1 + 6868) = v1;
    v2 = v1;
  }

  else
  {
    v2 = 0;
    *(a1 + 6868) = v1;
    v1 /= 2;
  }

  *(a1 + 6872) = v1;
  *(a1 + 6876) = v1;
  *(a1 + 6880) = v2;
  v3 = (a1 + 6800);
  v4 = vld1q_dup_f32(v3);
  result = vmulq_s32(*(a1 + 6868), v4);
  *(a1 + 6868) = result;
  return result;
}

uint64_t init_invcol(uint64_t *a1)
{
  v3 = *(a1 + 1645);
  if (v3 == 14)
  {
    return 0;
  }

  v5 = *a1;
  *(a1 + 432) = 0u;
  if (v3 == 15)
  {
    v6 = a1 + 512;
    a1[866] = aj_icol_mcurow_cmyk;
    if (*(a1[1] + 356))
    {
      result = 0;
      *(v6 + 2840) = 0;
    }

    else
    {
      v11 = *(a1 + 6937);
      if (v11)
      {
        v11 = *(a1 + 1735) == 2;
      }

      result = 0;
      *(v6 + 2840) = v11;
    }

    return result;
  }

  a1[866] = aj_icol_mcurow_default;
  switch(v3)
  {
    case 0:
      v12 = 0;
      v13 = aj_icol_row_444_to_rgb;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_rgb;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_rgb;
      goto LABEL_47;
    case 1:
      v12 = 0;
      v16 = *v5;
      v17 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgb565;
      v18 = aj_icol_row_420_to_rgb565;
      goto LABEL_33;
    case 2:
      v12 = 0;
      v16 = *v5;
      v17 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgr565;
      v18 = aj_icol_row_420_to_bgr565;
LABEL_33:
      if (v17)
      {
        v13 = v18;
      }

      v14 = v16 == 1;
      v15 = aj_icol_row_gray_to_rgb565;
      goto LABEL_47;
    case 3:
      v12 = 0;
      v19 = *v5;
      v20 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgba;
      v21 = aj_icol_row_420_to_rgba;
      goto LABEL_29;
    case 4:
      v12 = 0;
      v19 = *v5;
      v20 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgra;
      v21 = aj_icol_row_420_to_bgra;
LABEL_29:
      if (v20)
      {
        v13 = v21;
      }

      v14 = v19 == 1;
      v15 = aj_icol_row_gray_to_rgba;
      goto LABEL_47;
    case 5:
      v12 = 0;
      v22 = aj_icol_row_all_to_gray;
      goto LABEL_56;
    case 6:
      v12 = 0;
      v13 = aj_icol_row_444_to_yuv;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_yuv;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_yuv;
      goto LABEL_47;
    case 7:
      v12 = 0;
      v13 = aj_icol_row_444_to_yuyv;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_yuyv;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_yuyv;
      goto LABEL_47;
    case 8:
    case 9:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar422;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_422biplanar;
      v10 = aj_icol_row_422_to_biplanar;
      goto LABEL_51;
    case 10:
    case 11:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_420biplanar;
      v10 = aj_icol_row_420_to_biplanar;
      goto LABEL_51;
    case 12:
    case 13:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_440biplanar;
      v10 = aj_icol_row_440_to_biplanar;
      goto LABEL_51;
    case 16:
      v12 = 0;
      v23 = *v5;
      v24 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgba_12bit;
      v25 = aj_icol_row_420_to_rgba_12bit;
      goto LABEL_44;
    case 17:
      v12 = 0;
      v23 = *v5;
      v24 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgra_12bit;
      v25 = aj_icol_row_420_to_bgra_12bit;
LABEL_44:
      if (v24)
      {
        v13 = v25;
      }

      v14 = v23 == 1;
      v15 = aj_icol_row_gray_to_rgba_12bit;
      goto LABEL_47;
    case 18:
      v12 = 0;
      v22 = aj_icol_row_all_to_gray_12bit;
      goto LABEL_56;
    case 19:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_420biplanar_12bit;
      v10 = aj_icol_row_420_to_biplanar_12bit;
      goto LABEL_51;
    case 20:
      v12 = 0;
      v13 = aj_icol_row_444_to_bgr_12bit;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_bgr_12bit;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_rgb_12bit;
LABEL_47:
      if (v14)
      {
        v13 = v15;
      }

      a1[864] = v13;
      goto LABEL_57;
    case 21:
      v12 = 0;
      v22 = aj_icol_row_gray_to_rgba_12bit;
LABEL_56:
      a1[864] = v22;
LABEL_57:
      v7 = 1;
      goto LABEL_58;
    case 22:
    case 23:
      if (*(v5 + 86))
      {
        goto LABEL_16;
      }

      aj_log_error("DecodeInit", "Two component output only supported for lossless images", v1, v2);
      return 5;
    case 24:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar444;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_444biplanar;
      v10 = aj_icol_row_444_to_biplanar;
LABEL_51:
      if (v8)
      {
        v9 = v10;
      }

      a1[865] = v9;
      goto LABEL_54;
    case 25:
    case 26:
      if (*(v5 + 86))
      {
LABEL_16:
        v7 = 1;
LABEL_54:
        v12 = 1;
LABEL_58:
        if (*(v5 + 86))
        {
          return 0;
        }

        v26 = *(a1 + 6);
        if (v12)
        {
          if (v26 != 2)
          {
            aj_log_error("DecodeInit", "No pixel-row inverse color transform set", v1, v2);
            return 1;
          }

          if (v7)
          {
LABEL_69:
            aj_log_error("DecodeInit", "No pixel-row semiplanar transform set", v1, v2);
            return 1;
          }
        }

        else
        {
          if (v26 == 2)
          {
            v27 = v7;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            goto LABEL_69;
          }
        }

        return 0;
      }

      aj_log_error("DecodeInit", "Tri-planar output only supported for lossless images", v1, v2);
      return 5;
    default:
      aj_log_error("DecodeInit", "Unknown output format", v1, v2);
      return 5;
  }
}

uint64_t aj_compute_buffer_sizes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 6612))
  {
    v6 = *(*a2 + 16) * *(*(a2 + 8) + 80);
    if (*(a2 + 6464) == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*(a2 + 8) + 80);
    }

    v8 = v6 + v7 * (*(a2 + 6464) - 1);
    *(a2 + 6640) = v8;
    v9 = *(a1 + 16);
    if (v9)
    {
      free(v9);
      v8 = *(a2 + 6640);
    }

    v10 = malloc_type_calloc(1uLL, 4 * v8, 0x100004052888210uLL);
    *(a1 + 16) = v10;
    *(a2 + 6632) = v10;
    if (!v10)
    {
      return 6;
    }

    *(a2 + 6648) = v10;
    v11 = &v10[4 * v6];
    *(a2 + 6656) = v11;
    v12 = &v11[4 * v7];
    *(a2 + 6664) = v12;
    *(a2 + 6672) = &v12[4 * v7];
  }

  v13 = *(a2 + 6580);
  if ((v13 - 25) < 2)
  {
    return 0;
  }

  if (v13 == 14)
  {
    aj_reset_texture_buffer_ptrs(a2, a3 + 568, a2 + 64);
    result = 0;
    *(a2 + 6945) = 0;
  }

  else
  {
    *(a2 + 6945) = 1;
    v16 = *(a2 + 172);
    v15 = *(a2 + 176);
    *(a2 + 6684) = v16;
    v17 = *(a2 + 6848) - *(a2 + 6844);
    v18 = *(a2 + 6704) + v16;
    *(a2 + 6704) = v18;
    v19 = v17 * v15 * *(a2 + 6800);
    *(a2 + 6712) = v19;
    v20 = *(a2 + 6464);
    if (v20 >= 2)
    {
      v21 = (a2 + 6720);
      v22 = (a2 + 6688);
      v23 = v20 - 1;
      do
      {
        v24 = v16 / *(a2 + 6896);
        *v22++ = v24;
        v25 = v19 / *(a2 + 6892);
        *v21 += v24;
        v21[1] = v25;
        v21 += 2;
        --v23;
      }

      while (v23);
    }

    if (*(a2 + 24) == 2)
    {
      v26 = *(a2 + 48);
      if (v26 >= 2)
      {
        *(a2 + 6704) = v18 + 1;
        if (v20 == 3)
        {
          if (*(a2 + 6889))
          {
            *(a2 + 6704) = v18 + 3;
          }

          else
          {
            ++*(a2 + 6720);
            ++*(a2 + 6736);
          }
        }
      }

      if (!*(a2 + 6804))
      {
        return 0;
      }

      result = 0;
      *(a2 + 6768) = v26;
      v28 = *(a2 + 6492);
      *(a2 + 6776) = v28;
      *(a2 + 6784) = 1;
      *(a2 + 6792) = 2 * (v28 / *(a2 + 44));
    }

    else
    {
      if (!*(a2 + 6804))
      {
        return 0;
      }

      *(a2 + 6768) = 1;
      if (v20 == 3 && !*(a2 + 6884))
      {
        *(a2 + 6768) = 2;
      }

      result = 0;
      if (*(a2 + 44) == 2)
      {
        v27 = *(a2 + 6500) & 1;
      }

      else
      {
        v27 = 0;
      }

      *(a2 + 6776) = *(a2 + 28) * (*(a2 + 6500) + v27);
    }
  }

  return result;
}

uint64_t aj_init_input_states(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(a1 + 8) + 400) == 0;
  }

  result = init_mcustate(a2, a3, a4, v8, a5);
  if (!result)
  {
    if (*(a1 + 6948) < 2)
    {
      return 0;
    }

    else
    {
      v10 = 0;
      for (i = *(a1 + 6952); ; i += 1672)
      {
        v12 = *(a2 + 112);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        *(i + 1600) = v12[3];
        *(i + 1584) = v15;
        *(i + 1568) = v14;
        *(i + 1552) = v13;
        v16 = v12[4];
        v17 = v12[5];
        v18 = v12[6];
        *(i + 1664) = *(v12 + 14);
        *(i + 1648) = v18;
        *(i + 1632) = v17;
        *(i + 1616) = v16;
        *(i + 128) = i + 1552;
        *(i + 136) = 0;
        *(i + 144) = 0;
        *(i + 152) = 0;
        *(i + 160) = 0x700000000;
        result = aj_istream_move_to_position(i + 1552, a4);
        if (result)
        {
          break;
        }

        if (++v10 >= *(a1 + 6948) - 1)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

char *fill_image_edges(char *result)
{
  v1 = result;
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(result + 1652);
  v46 = 0;
  if (*(result + 1648) || *(result + 1649) || *(result + 1646) || *(result + 1647))
  {
    v3 = BYTE2(v2);
    v4 = BYTE1(v2);
    v5 = v2;
    v6 = (BYTE2(v2) << 6) - (((340992 * v2 + 0x4000) >> 15) + ((1756160 * BYTE1(v2) + 0x4000) >> 15)) + 16448;
    v7 = v6 >> 7;
    v8 = (v2 << 6) - (((1389568 * BYTE1(v2) + 0x4000) >> 15) + ((707584 * BYTE2(v2) + 0x4000) >> 15)) + 16448;
    if (v8 >= 0x8000)
    {
      LOBYTE(v9) = -1;
    }

    else
    {
      v9 = v8 >> 7;
    }

    if (v6 >= 0x8000)
    {
      LOBYTE(v7) = -1;
    }

    result = (((478208 * v2 + 0x4000) >> 15) + ((2462080 * BYTE1(v2) + 0x4000) >> 15) + ((1254144 * BYTE2(v2) + 0x4000) >> 15) + 64);
    v10 = *(v1 + 1645);
    if (v10 == 7)
    {
      LOBYTE(v46) = result >> 7;
      BYTE1(v46) = v9;
      BYTE2(v46) = v46;
      HIBYTE(v46) = v7;
      v11 = 4;
      v12 = 2;
      v13 = *(v1 + 6);
    }

    else
    {
      v14 = &v46 + 3;
      v13 = *(v1 + 6);
      if (v13 == 2)
      {
        LOBYTE(v46) = result >> 7;
        BYTE1(v46) = v46;
        BYTE2(v46) = v9;
      }

      else if ((v10 - 1) < 2)
      {
        v15 = (BYTE1(v2) + 2) >> 2;
        if (v3 >= 0xFC)
        {
          v16 = 31;
        }

        else
        {
          v16 = (v3 + 4) >> 3;
        }

        v17 = (v5 + 4) >> 3;
        if (v4 >= 0xFE)
        {
          v15 = 63;
        }

        if (v5 >= 0xFC)
        {
          v17 = 31;
        }

        v14 = &v46 + 1;
        v18 = 32 * v15;
        if (v10 == 1)
        {
          v19 = v18 | (v17 << 11) | v16;
        }

        else
        {
          v19 = v18 | (v16 << 11) | v17;
        }

        LOBYTE(v46) = v19;
        v7 = v19 >> 8;
      }

      else if (v10 == 15)
      {
        v20 = (BYTE2(v2) | BYTE1(v2) | v2) == 0;
        if (v1[6937])
        {
          if (*(v1 + 1735) && *(*(v1 + 1) + 356))
          {
            LOBYTE(v46) = ~(result >> 7);
            BYTE1(v46) = ~v9;
            LOBYTE(v2) = ~v7;
          }

          else
          {
            LOBYTE(v46) = BYTE2(v2);
            BYTE1(v46) = BYTE1(v2);
          }

          BYTE2(v46) = v2;
          LOBYTE(v7) = v20 - 1;
        }

        else
        {
          LOBYTE(v46) = ~HIWORD(v2);
          BYTE1(v46) = ~BYTE1(v2);
          BYTE2(v46) = ~v2;
          v7 = v20 << 31 >> 31;
        }
      }

      else if (v10 == 6)
      {
        v14 = &v46 + 2;
        LOBYTE(v46) = result >> 7;
        BYTE1(v46) = v9;
      }

      else
      {
        LOBYTE(v46) = BYTE2(v2);
        v7 = HIBYTE(v2);
        BYTE1(v46) = BYTE1(v2);
        BYTE2(v46) = v2;
      }

      *v14 = v7;
      v11 = *(v1 + 7);
      v12 = 1;
    }

    v21 = *(v1 + 8);
    v50[0] = v11;
    v50[1] = v21;
    v22 = *(v1 + 11);
    v23 = *(v1 + 12);
    v49[0] = v12;
    v49[1] = v22;
    v48[0] = 1;
    v48[1] = v23;
    v47[0] = &v46;
    v47[1] = &v46 + 2;
    if (v13 >= 1)
    {
      v24 = 0;
      v25 = (v1 + 96);
      do
      {
        v26 = v49[v24];
        v27 = *(v1 + 1623) / v26;
        v28 = *(v1 + 1624);
        v29 = v48[v24];
        v30 = *(v1 + 1646);
        v31 = *(v1 + 1647);
        v32 = v28 / v29;
        if (*(v1 + 823))
        {
          *&v43[8] = 0;
          v44 = v27;
          v45 = v30 / v29;
          v40 = 0;
          v41 = (v28 - v31) / v29;
          v42 = v27;
          *v43 = (v31 / v29);
          v33 = v47[v24];
          v34 = v50[v24];
          aj_paint_region(*(v25 - 4), *(v1 + 1702), v33, v34, v27, *v25, v32, &v43[4]);
          result = aj_paint_region(*(v25 - 4), *(v1 + 1702), v33, v34, v27, *v25, v32, &v40);
        }

        v35 = *(v1 + 1648);
        v36 = *(v1 + 1649);
        if (*(v1 + 824))
        {
          *&v43[4] = 0;
          v44 = v35 / v26;
          v45 = v32;
          v40 = (*(v1 + 1623) - v36) / v26;
          v41 = 0;
          v42 = v36 / v26;
          *v43 = v32;
          v37 = v47[v24];
          v38 = v50[v24];
          aj_paint_region(*(v25 - 4), *(v1 + 1702), v37, v38, v27, *v25, v32, &v43[4]);
          result = aj_paint_region(*(v25 - 4), *(v1 + 1702), v37, v38, v27, *v25, v32, &v40);
        }

        ++v24;
        ++v25;
      }

      while (v24 < *(v1 + 6));
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t init_prog_scans(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 112);
  memset(v91, 0, sizeof(v91));
  v7 = *a2;
  v6 = a2[1];
  if (!*(v6 + 401))
  {
    v13 = *(v5 + 8);
    v89 = 0;
    v90 = v13;
    v14 = &v13[*(v5 + 32)];
    v15 = *(v7 + 3332) + *(v7 + 3328);
    v16 = 1;
    *(v6 + 404) = 1;
    if (v13 >= v14 - 3)
    {
      goto LABEL_44;
    }

    v16 = 1;
    while (1)
    {
      if (*v13 != 255 || (v17 = v13[1]) == 0)
      {
        ++v13;
        goto LABEL_11;
      }

      if ((v17 - 208) < 9)
      {
        goto LABEL_16;
      }

      v18 = v13 + 2;
      v19 = __rev16(*(v13 + 1));
      if (v13[1] > 0xD9u)
      {
        if (v17 == 255)
        {
LABEL_16:
          v90 = ++v13;
          goto LABEL_12;
        }

        if (v17 == 218)
        {
          if (&v18[v19] > v14)
          {
            goto LABEL_42;
          }

          *(v6 + 404) = ++v16;
          v20 = &v13[v19];
LABEL_34:
          v13 = v20 + 2;
LABEL_11:
          v90 = v13;
          goto LABEL_12;
        }

LABEL_33:
        v20 = &v13[v19];
        goto LABEL_34;
      }

      if (v17 != 196)
      {
        break;
      }

      v21 = &v18[v19];
      if (v21 > v14)
      {
        goto LABEL_42;
      }

      v90 = v13 + 2;
      v22 = __rev16(*(v13 + 1));
      if (v22 < 0x13)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v24 = v22 - 2;
        v25 = v13 + 4;
        do
        {
          v26 = *(v25 + 1);
          v27 = vmovl_high_u8(v26);
          v28 = vmovl_u8(*v26.i8);
          v28.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v28.i8, *v27.i8), vaddl_high_u16(v28, v27)));
          ++v23;
          v29 = v24 - 17;
          v25 += v28.u32[0] + 17;
          v30 = __OFSUB__(v29, v28.i32[0]);
          v24 = v29 - v28.i32[0];
        }

        while (v24 < 0 == v30 && v24 > 16);
      }

      v15 += v23;
      v90 = v21;
      v13 = v21;
LABEL_12:
      if (v13 >= v14 - 3)
      {
        goto LABEL_42;
      }
    }

    if (v17 != 217)
    {
      goto LABEL_33;
    }

LABEL_42:
    if (v16 >= 1025)
    {
      aj_log_error("DecodeInit", "The number of scans exceed the allowed limit, %d > %d", v16, 1024);
      v34 = 7;
      goto LABEL_98;
    }

LABEL_44:
    v35 = *(a1 + 32);
    if (v35)
    {
      free(v35);
      v16 = *(v6 + 404);
    }

    v36 = malloc_type_calloc(1uLL, 288 * v16, 0x10B004046694345uLL);
    *(a1 + 32) = v36;
    *(v6 + 408) = v36;
    if (v36)
    {
      v37 = *(a1 + 40);
      if (v37)
      {
        free(v37);
      }

      v38 = malloc_type_calloc(1uLL, 792 * v15, 0x10000404CEF3289uLL);
      *(a1 + 40) = v38;
      *(v6 + 416) = v38;
      if (v38)
      {
        v39 = v38;
        v88 = (v14 - 3);
        v83 = v14;
        v84 = a1;
        v85 = v6;
        v86 = v5;
        v40 = *(v6 + 408);
        v41 = *(v7 + 3336);
        *v40 = v41;
        if (v41 >= 1)
        {
          v42 = 0;
          do
          {
            v43 = *(v7 + 3340 + 4 * v42);
            v40[v42 + 1] = v43;
            v40[v43 + 5] = *(v7 + 3356 + 4 * v43);
            v40[v43 + 9] = *(v7 + 3372 + 4 * v43);
            ++v42;
          }

          while (v42 < *v40);
        }

        v44 = 0;
        *(v40 + 13) = *(v7 + 3388);
        v45 = v7 + 3320;
        v46 = v7 + 1144;
        v87 = v7;
        v47 = v7 + 1272;
        do
        {
          v48 = 0;
          v49 = v45 + 2 * v44;
          v50 = 1;
          v51 = v46 + 32 * v44;
          v52 = v47 + (v44 << 9);
          do
          {
            v53 = v50;
            if (*(v49 + v48))
            {
              *(&v91[v44] + v48) = v39;
              *v39 = *(v51 + 16 * v48);
              v54 = (v52 + (v48 << 8));
              v55 = v54[7];
              v57 = v54[4];
              v56 = v54[5];
              v39[7] = v54[6];
              v39[8] = v55;
              v39[5] = v57;
              v39[6] = v56;
              v58 = v54[11];
              v60 = v54[8];
              v59 = v54[9];
              v39[11] = v54[10];
              v39[12] = v58;
              v39[9] = v60;
              v39[10] = v59;
              v61 = v54[15];
              v63 = v54[12];
              v62 = v54[13];
              v39[15] = v54[14];
              v39[16] = v61;
              v39[13] = v63;
              v39[14] = v62;
              v64 = *v54;
              v65 = v54[1];
              v66 = v54[3];
              v39[3] = v54[2];
              v39[4] = v66;
              v39[1] = v64;
              v39[2] = v65;
              inited = aj_init_lookup(v39);
              if (inited)
              {
                v34 = inited;
                aj_log_error("DecodeInit", "Corrupt huffman table before scan. Error code: %d", inited);
                goto LABEL_98;
              }

              v39 = (v39 + 792);
            }

            v50 = 0;
            v48 = 1;
          }

          while ((v53 & 1) != 0);
          ++v44;
          v46 = v7 + 1144;
          v45 = v7 + 3320;
          v47 = v7 + 1272;
        }

        while (v44 != 4);
        v68 = init_scan(a2, a3, v40, v91, *(v86 + 8), *(v86 + 40), *(v86 + 36), *(v7 + 3404));
        if (v68)
        {
          v34 = v68;
          aj_log_error("DecodeInit", "First scan corrupt, cannot decode image. Error code: %d", v68);
          goto LABEL_98;
        }

        v69 = *(v85 + 408);
        v89 = *(v85 + 416) + 792 * *(v7 + 3328) + 792 * *(v7 + 3332);
        v70 = *(v86 + 8);
        v90 = v70;
        if (v70 < v88)
        {
          v71 = *(v7 + 3404);
          v72 = (v69 + 288);
          v73 = 1;
          while (*v70 == 255)
          {
            v75 = v70[1];
            if (!v70[1])
            {
              break;
            }

            v76 = v70 + 2;
            v77 = __rev16(*(v70 + 1));
            if (v70[1] > 0xD9u)
            {
              switch(v75)
              {
                case 255:
LABEL_74:
                  v90 = v70 + 1;
                  break;
                case 221:
                  if ((v70 + 6) > v83)
                  {
                    goto LABEL_91;
                  }

                  if (v77 != 4)
                  {
                    aj_log_error("DecodeInit", "Illegal DRI segment length.");
                    v34 = 4;
                    goto LABEL_98;
                  }

                  v71 = __rev16(*(v70 + 2));
                  v90 = v70 + 6;
                  break;
                case 218:
                  if (&v76[v77] > v83)
                  {
                    goto LABEL_91;
                  }

                  v90 = v70 + 2;
                  if (aj_read_sos_prog(&v90, v72, v87) || init_scan(a2, a3, v72, v91, v90, *(v86 + 40), *(v86 + 36), v71))
                  {
                    goto LABEL_99;
                  }

                  v72 += 72;
                  ++v73;
                  break;
                default:
                  goto LABEL_90;
              }
            }

            else
            {
              if ((v75 - 208) < 9)
              {
                goto LABEL_74;
              }

              if (v75 != 196)
              {
                if (v75 == 217)
                {
                  goto LABEL_91;
                }

LABEL_90:
                v74 = &v70[v77 + 2];
LABEL_68:
                v90 = v74;
                goto LABEL_69;
              }

              if (&v76[v77] > v83)
              {
                goto LABEL_91;
              }

              v90 = v70 + 2;
              if (aj_read_dht_prog(&v90, &v89, v91))
              {
LABEL_99:
                *(v85 + 400) = 1;
                *(v85 + 404) = v73;
                goto LABEL_92;
              }
            }

LABEL_69:
            v70 = v90;
            if (v90 >= v88)
            {
              goto LABEL_91;
            }
          }

          v74 = v70 + 1;
          goto LABEL_68;
        }

LABEL_91:
        *(v85 + 400) = 0;
LABEL_92:
        if (v87[8] != 2)
        {
          goto LABEL_96;
        }

        v78 = (*(a2[1] + 80) * *(a2[1] + 92)) << 7;
        *(v85 + 432) = v78;
        v79 = *(v84 + 48);
        if (v79)
        {
          free(v79);
          v78 = *(v85 + 432);
        }

        v80 = malloc_type_calloc(1uLL, v78, 0xEEA3131BuLL);
        *(v84 + 48) = v80;
        *(v85 + 424) = v80;
        if (v80)
        {
LABEL_96:
          v34 = 0;
          *(v85 + 401) = 1;
          goto LABEL_98;
        }
      }
    }

    v34 = 6;
    goto LABEL_98;
  }

  if (a4)
  {
    v8 = *(v6 + 404);
    if (v8 >= 1)
    {
      v9 = *(v6 + 408);
      v10 = &v9[72 * v8];
      do
      {
        v9[70] = scan_is_needed(a2, v9);
        v9 += 72;
      }

      while (v9 < v10);
    }

    goto LABEL_41;
  }

  if (*(v6 + 404) < 1)
  {
LABEL_41:
    v34 = 0;
    goto LABEL_98;
  }

  v32 = *(v6 + 408);
  while (1)
  {
    *(v32 + 72) = 7;
    *(v32 + 80) = 0;
    *(v32 + 280) = scan_is_needed(a2, v32);
    v33 = aj_istream_move_to_position(v32 + 96, 0);
    if (v33)
    {
      break;
    }

    v32 += 288;
    if (v32 >= *(v6 + 408) + 288 * *(v6 + 404))
    {
      goto LABEL_41;
    }
  }

  v34 = v33;
LABEL_98:
  v81 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t init_blockdec(uint64_t result, int a2)
{
  v2 = result;
  v24[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(result + 160) = aj_mcu_decode_index;
    v3 = **result;
    if (v3 >= 1)
    {
      v4 = (v3 + 1) & 0xFFFFFFFE;
      v5 = xmmword_240AB0610;
      v6 = vdupq_n_s64(v3 - 1);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, v5));
        if (v8.i8[0])
        {
          v2[90] = aj_block_decode_skip;
        }

        if (v8.i8[4])
        {
          v2[286] = aj_block_decode_skip;
        }

        v5 = vaddq_s64(v5, v7);
        v2 += 392;
        v4 -= 2;
      }

      while (v4);
    }
  }

  else
  {
    v9 = *result;
    v10 = aj_mcu_decode_progressive;
    if (!*(*result + 84))
    {
      v10 = aj_mcu_decode;
    }

    *(result + 160) = v10;
    v11 = aj_block_decode_12bit;
    if (*(v9 + 4) == 12)
    {
      v12 = aj_block_decode_12bit;
      v13 = aj_block_decode_12bit;
      v14 = aj_block_decode_12bit;
    }

    else
    {
      v14 = aj_block_decode_S8;
      v13 = aj_block_decode_S4;
      v12 = aj_block_decode_S2;
      v11 = aj_block_decode;
    }

    v24[0] = v11;
    v24[1] = v12;
    v24[2] = v13;
    v24[3] = v14;
    v24[4] = aj_block_decode_skip;
    result = aj_highest_set_bit(*(result + 168));
    v15 = result - 1;
    v2[90] = v24[v15];
    if (*(v2 + 1616) == 1)
    {
      result = 4;
    }

    else if (*(v2 + 1721) || (*v2)[4] != 1 || (*v2)[8] != 1 || *(v2 + 42) == 8)
    {
      if (*(v2 + 1653) || !*(v2 + 6888))
      {
        result = result - 1;
      }

      else if (*(v2 + 42) <= 1)
      {
        result = v15;
      }

      else
      {
        result = (result - 2);
      }
    }

    v16 = **v2;
    if (v16 >= 2)
    {
      v17 = 0;
      v18 = v24[result];
      v19 = v16 & 0x7FFFFFFE;
      v20 = vdupq_n_s64(v16 - 2);
      v21 = v2 + 286;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v17), xmmword_240AB0610)));
        if (v22.i8[0])
        {
          *v21 = v18;
        }

        if (v22.i8[4])
        {
          v21[196] = v18;
        }

        v17 += 2;
        v21 += 392;
      }

      while (v19 != v17);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_decode_init_index(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, int *a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v31 = a5[7];
  v32 = a5[8];
  v33 = *(a5 + 18);
  bzero(a5, 0x5F8uLL);
  a5[7] = v31;
  a5[8] = v32;
  *(a5 + 18) = v33;
  bzero(a3, 0x1B40uLL);
  *(a3 + 16) = 1;
  *a3 = a6;
  a3[1] = a4;
  *a5 = *(a6 + 84) == 0;
  *(a3 + 6804) = 0;
  *(a3 + 42) = 8;
  *(a3 + 1653) = 0;
  *(a3 + 1657) = 1;
  *(a3 + 6484) = *(a6 + 1);
  *(a3 + 1704) = 0;
  *(a3 + 1645) = 0;
  *(a3 + 1721) = 1;
  *(a3 + 6892) = 0x100000001;
  if (a8)
  {
    v17 = *(a8 + 112);
    v18 = *(a8 + 120);
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
  }

  *(a5 + 374) = v17;
  a5[94] = v18;
  if (!*a5)
  {
    return 0;
  }

  result = init_ra_table(a4, a5, *(a8 + 104), *(a8 + 108), a2);
  if (!result)
  {
    if (*a6 >= 1)
    {
      v20 = 0;
      v21 = (a3 + 24);
      do
      {
        aj_init_component(a3, v21, v20++, 0, 1);
        v21 += 1568;
      }

      while (v20 < *a6);
    }

    a3[20] = aj_mcu_decode_index;
    v22 = **a3;
    if (v22 >= 1)
    {
      v23 = (v22 + 1) & 0xFFFFFFFE;
      v24 = xmmword_240AB0610;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = vdupq_n_s64(2uLL);
      v27 = a3;
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v25, v24));
        if (v28.i8[0])
        {
          v27[90] = aj_block_decode_skip;
        }

        if (v28.i8[4])
        {
          v27[286] = aj_block_decode_skip;
        }

        v24 = vaddq_s64(v24, v26);
        v27 += 392;
        v23 -= 2;
      }

      while (v23);
    }

    v29 = *a8;
    if (*a8 >= 8)
    {
      v29 = 8;
    }

    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    *(a3 + 1737) = aj_get_numthreads_ratbl(a3, *(a7 + 80) == 0, v30);
    result = aj_init_decode_jobs(a3, a5, a4, a1, 1);
    if (!result)
    {

      return aj_init_input_states(a3, a5, a7, a9, 0);
    }
  }

  return result;
}

uint64_t init_mcustate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *a5)
{
  if (!a4 || *(a1 + 112) != a2 || (v8 = *(a1 + 136), v9 = *(a1 + 80), v8 >= v9) && (v8 == v9 ? (v10 = *(a1 + 140) <= *(a1 + 84)) : (v10 = 0), !v10))
  {
    *(a1 + 112) = a2;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0x700000000;
    result = aj_istream_move_to_position(a2, a3);
    if (result)
    {
      return result;
    }

    v7 = 0;
    if (!a5)
    {
      return 0;
    }

LABEL_14:
    result = 0;
    *a5 = v7;
    return result;
  }

  if (a5)
  {
    v7 = 1;
    goto LABEL_14;
  }

  return 0;
}

uint64_t scan_is_needed(uint64_t a1, int *a2)
{
  if (*a2 > 1)
  {
    return 1;
  }

  v3 = a2[1];
  v4 = *(a1 + 1568 * v3 + 904);
  if (a2[16])
  {
    v5 = a2[13];
    if (v5 >= 1)
    {
      v6 = v4 == 2 && v5 > 0x19;
      if (!v6 && v4 != 8 && (v4 != 4 || v5 <= 4))
      {
        return *a2 != 1 || *(a1 + 6464) != 1 || v3 == 0;
      }

      return 0;
    }
  }

  if (v4 == 8 && a2[13] > 0)
  {
    return 0;
  }

  return *a2 != 1 || *(a1 + 6464) != 1 || v3 == 0;
}

uint64_t init_scan(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v38 = 0;
  v39 = 0;
  if (*(*a1 + 84))
  {
    v11 = *(*a1 + 85) != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3[13];
  LODWORD(v13) = *a3;
  if (*a3 >= 1)
  {
    v33 = a8;
    v34 = a6;
    v35 = a7;
    v36 = a5;
    v37 = a2;
    v14 = a3 + 9;
    v15 = a3 + 5;
    v16 = 1;
    while (1)
    {
      v17 = a3[v16];
      if (v11)
      {
        v18 = *(a4 + 16 * v15[v17]);
        if (!v18)
        {
          v32 = v15[v17];
          aj_log_error("DecodeInit", "Trying to use DC huffman table #%d that is uninitialized");
          return 4;
        }

        v19 = *(a4 + 16 * v14[v17] + 8);
        if (!v19)
        {
          aj_log_error("DecodeInit", "Trying to use AC huffman table #%d that is uninitialized");
          return 4;
        }

        result = aj_check_single_huffman_table(v18, v18[1].i8, 0, *a1);
        if (result)
        {
          return result;
        }

        v21 = *a1;
        i8 = v19[1].i8;
        v23 = v19;
        v24 = 1;
      }

      else
      {
        if (v12)
        {
          v25 = a3 + 9;
        }

        else
        {
          v25 = a3 + 5;
        }

        v23 = *(a4 + 16 * v25[v17] + 8 * (v12 != 0));
        if (!v23)
        {
          aj_log_error("DecodeInit", "Trying to use huffman table #%d that is uninitialized");
          return 4;
        }

        v21 = *a1;
        i8 = v23[1].i8;
        v24 = v12 != 0;
      }

      result = aj_check_single_huffman_table(v23, i8, v24, v21);
      if (result)
      {
        return result;
      }

      ++v16;
      v13 = *a3;
      if (v16 - 1 >= v13)
      {
        a5 = v36;
        a2 = v37;
        a7 = v35;
        a6 = v34;
        a8 = v33;
        break;
      }
    }
  }

  for (i = 0; i != 16; i += 4)
  {
    v27 = &a3[i];
    *(v27 + 27) = *(a4 + i * 4);
    *(v27 + 28) = *(a4 + i * 4 + 8);
  }

  a3[17] = a8;
  v28 = a3[16];
  if (!v28 || v28 == a3[15] + 1)
  {
    if (v13 < 1 || v13 > **a1)
    {
      aj_log_error("DecodeInit", "Illegal number of components in scan: %d");
      return 4;
    }

    if (v11)
    {
      v29 = aj_baseline_multiscan_decode_scan;
LABEL_28:
      *(a3 + 11) = v29;
      v38 = a5;
      v39 = a6 - a5 + a7;
      aj_istream_init_mem((a3 + 24), &v38, *(*(a2 + 112) + 112), *(*(a2 + 112) + 56));
      *(a3 + 9) = 7;
      a3[20] = 0;
      a3[70] = scan_is_needed(a1, a3);
      return aj_istream_move_to_position((a3 + 24), 0);
    }

    v30 = a3[13];
    if (v30)
    {
      if (v13 == 1 && (v30 - 64) >= 0xFFFFFFC1)
      {
        v31 = a3[14];
        if (v31 >= v30 && v31 < 64)
        {
          if (v28)
          {
            v29 = aj_prog_decode_AC_refine;
          }

          else
          {
            v29 = aj_prog_decode_AC_first;
          }

          goto LABEL_28;
        }
      }
    }

    else if (!a3[14])
    {
      if (v28)
      {
        v29 = aj_prog_decode_DC_refine;
      }

      else
      {
        v29 = aj_prog_decode_DC_first;
      }

      goto LABEL_28;
    }
  }

  aj_log_error("DecodeInit", "Faulty scan format");
  return 4;
}

uint64_t (***aj_bufferproc_crop(uint64_t (***result)(void), uint64_t a2, uint64_t a3, int a4, int a5))(void)
{
  v5 = a4;
  v8 = result;
  v49 = *MEMORY[0x277D85DE8];
  v47[0] = 0;
  v47[1] = 0;
  v9 = *(a3 + 72);
  v10 = v9 - a5;
  if (v9 <= a5)
  {
    goto LABEL_22;
  }

  if (a5 + a4 <= v9)
  {
    goto LABEL_55;
  }

  v5 = a4 - v10;
  v11 = *(a2 + 6464);
  if (v11 >= 2)
  {
    if (*(result + 11) == 2 && (v10 & 1) != 0)
    {
      *(a3 + 1080) = 1;
    }

    goto LABEL_10;
  }

  if (v11 == 1)
  {
LABEL_10:
    v13 = 0;
    v14 = (a3 + 568);
    v15 = __src;
    do
    {
      if (v13)
      {
        v16 = aj_highest_set_bit(*(v8 + 11)) - 1;
      }

      else
      {
        v16 = 0;
      }

      LODWORD(v17) = (v16 + v5) >> v16;
      if (v13)
      {
        v17 = v17;
      }

      else
      {
        v17 = v5;
      }

      *(v47 + v13) = v17;
      if (v17 >= 1)
      {
        v18 = v10 >> v16;
        v19 = v15;
        v20 = v14;
        do
        {
          *v19++ = *v20;
          *v20 = v20[v18];
          ++v20;
          --v17;
        }

        while (v17);
      }

      ++v13;
      v14 += 16;
      v15 += 128;
    }

    while (v13 < *(a2 + 6464));
  }

  a5 = v9;
LABEL_22:
  v21 = *(a3 + 76);
  if (v5 + a5 > v21)
  {
    v22 = v21 - a5;
    if (!*(a3 + 1082))
    {
      v5 = v22;
    }
  }

  v23 = *(a2 + 6464);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = (a2 + 6868);
    v26 = (a3 + 568);
    do
    {
      v27 = *&v25[4 * v24];
      if (v27)
      {
        v28 = v5 < 1;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        v29 = v5;
        v30 = v26;
        do
        {
          *v30++ += v27;
          --v29;
        }

        while (v29);
      }

      ++v24;
      v26 += 16;
    }

    while (v24 != v23);
    if (v23 != 1 && *(v8 + 10) == 2 && (*v25 & 1) != 0)
    {
      *(a3 + 1081) = 1;
    }
  }

  v31 = *(v8 + 8);
  result = (*v8[10])();
  v8[4] = (v8[4] + v5);
  v32 = *(a2 + 6464);
  if (v32 < 1)
  {
    if (LODWORD(v47[0]))
    {
      *(a3 + 1080) = 0;
    }
  }

  else
  {
    v33 = 0;
    v34 = a2 + 6868;
    v35 = (a3 + 568);
    v36 = (a3 + 568);
    do
    {
      v37 = *(v34 + 4 * v33);
      if (v37)
      {
        v38 = v5 < 1;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v39 = -v37;
        v40 = v5;
        v41 = v36;
        do
        {
          *v41++ += v39;
          --v40;
        }

        while (v40);
      }

      ++v33;
      v36 += 16;
    }

    while (v33 != v32);
    if (LODWORD(v47[0]))
    {
      *(a3 + 1080) = 0;
      v42 = v47;
      v43 = __src;
      do
      {
        v45 = *v42++;
        v44 = v45;
        if (v45 >= 1)
        {
          result = memcpy(v35, v43, 8 * v44);
        }

        v35 += 128;
        v43 += 128;
        --v32;
      }

      while (v32);
    }
  }

LABEL_55:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_bufferproc_crop_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a4 + 32) = *(a1 + 72);
  *a4 = v6;
  *(a4 + 16) = v7;
  v9 = *(a3 + 72);
  v8 = *(a3 + 76);
  v10 = *(a2 + 6616);
  v11 = aj_highest_set_bit(*(a1 + 44));
  LODWORD(v12) = v8 - v9;
  DWORD1(v12) = (v11 - 1 + v8 - v9) >> (v11 - 1);
  DWORD2(v12) = DWORD1(v12);
  HIDWORD(v12) = DWORD1(v12);
  *(a4 + 24) = v12;
  v13 = aj_highest_set_bit(*(a1 + 40));
  LODWORD(v14) = v10;
  DWORD1(v14) = (v13 - 1 + v10) >> (v13 - 1);
  DWORD2(v14) = DWORD1(v14);
  HIDWORD(v14) = DWORD1(v14);
  *(a4 + 8) = v14;
  *(a1 + 32) = 0;
  return 0;
}

void aj_bufferprocessor_free_chain(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v2)
  {
    do
    {
      v5 = v2[10];
      v6 = v2[3];
      if (v6)
      {
        v6(v2, a1, a2);
      }

      free(v2);
      v2 = v5;
    }

    while (v5);
  }
}

char *aj_bufferprocessor_append(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040D2F6A0E0uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 10) = 0;
    v10 = a3[1];
    *v8 = *a3;
    *(v8 + 1) = v10;
    if (!*(v8 + 1))
    {
      *(v8 + 1) = aj_bufferprocessor_maxoutrows_default;
    }

    v11 = *a4;
    v12 = a4[1];
    *(v8 + 9) = *(a4 + 4);
    *(v8 + 56) = v12;
    *(v8 + 40) = v11;
    v13 = (a2 + 1488);
    do
    {
      v14 = v13;
      v15 = *v13;
      v13 = (*v13 + 80);
    }

    while (v15);
    *v14 = v8;
    v16 = *(v8 + 2);
    if (v16 && v16(v8, a1, a2, a4))
    {
      return 0;
    }
  }

  return v9;
}

uint64_t aj_bufferprocessor_maxoutrows_default(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    return (*(v4 + 8))();
  }

  else
  {
    return a4;
  }
}

void *aj_huffman_encode_init_baseline(uint64_t a1, int a2, int a3)
{
  *(a1 + 272) = a3;
  *(a1 + 273) = 0;
  v3 = &std_huffman_luma;
  if (!a2)
  {
    v3 = &std_huffman_chroma;
  }

  v4 = &v3[4500 * (a3 == 0)];
  *a1 = *v4;
  v5 = (a1 + 16);
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 256;
  }

  return memcpy(v5, v4 + 16, v6);
}

void *aj_huffman_fill_standard_counts_values(_OWORD *a1, void *__dst, int a3, int a4)
{
  v4 = &std_huffman_luma;
  if (!a3)
  {
    v4 = &std_huffman_chroma;
  }

  v5 = &v4[4500 * (a4 == 0)];
  *a1 = *v5;
  if (a4)
  {
    v6 = 16;
  }

  else
  {
    v6 = 256;
  }

  return memcpy(__dst, v5 + 16, v6);
}

void aj_huffman_encode_init_progressive(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 272) = a3;
  *(a1 + 273) = 0;
  v4 = a3 == 0;
  *a1 = **(&aj_huffman_encode_init_progressive_countvecs + 4 * v4 + 2 * (a2 == 0) + (a4 == 0));
  v5 = a1 + 16;
  v6 = aj_huffman_encode_init_progressive_nsyms[2 * v4 + (a4 == 0)];
  memcpy((a1 + 16), *(&aj_huffman_encode_init_progressive_valuevecs + 4 * v4 + 2 * (a2 == 0) + (a4 == 0)), v6);

  bzero((v5 + v6), 256 - v6);
}

void *plugin_vimage_create(uint64_t a1, uint64_t *a2, _DWORD *a3, int *a4)
{
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x1010040139C5EC2uLL);
  v8 = v7;
  if (!v7)
  {
    aj_log_error(0, "Unable to allocate session");
    goto LABEL_10;
  }

  v9 = *(a2 + 4);
  if (v9 > 0xF || ((1 << v9) & 0x8018) == 0)
  {
    aj_log_error(0, "Unsupported dataformat: %d", *(a2 + 4));
    v11 = 3;
    if (!a4)
    {
LABEL_12:
      if (v8)
      {
        plugin_vimage_destroy(v8);
        return 0;
      }

      return v8;
    }

LABEL_11:
    *a4 = v11;
    goto LABEL_12;
  }

  if (*(a2 + 5) > *(a2 + 1))
  {
    aj_log_error(0, "Max_input_rows is larger than input height");
    v11 = 1;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = a2[1];
  v7[1] = v13;
  v14 = *a2;
  *v7 = *a2;
  LODWORD(v13) = 4 * v13;
  v7[4] = v13;
  v15 = malloc_type_malloc(SHIDWORD(v14) * v13, 0x760F68EDuLL);
  v8[3] = v15;
  if (!v15)
  {
    aj_log_error(0, "Unable to allocate temp buffer");
LABEL_10:
    v11 = 6;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = *(a2 + 3);
  a3[20] = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v16;
  if (a4)
  {
    *a4 = 0;
  }

  return v8;
}

void plugin_vimage_destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

vImage_Error plugin_vimage_resize(int *a1, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *a2;
  v5 = a1[4];
  v6 = v5 + v4;
  if (v5 + v4 <= a1[1])
  {
    if (v4 >= 1)
    {
      v11 = *(a2 + 1);
      v12 = (*(a2 + 5) + v11 * a2[1]);
      v13 = *(a1 + 4);
      v14 = (*(a1 + 3) + v13 * v5);
      src.width = *a1;
      src.rowBytes = v11;
      src.data = v12;
      src.height = v4;
      dest.width = a1[2];
      dest.rowBytes = v13;
      dest.data = v14;
      dest.height = v4;
      if (vImageScale_ARGB8888(&src, &dest, 0, 8u))
      {
LABEL_8:
        aj_log_error(0, "Error from vImage: %d");
        return 1;
      }

      v6 = a1[4] + v4;
    }

    a1[4] = v6;
    if (!a4)
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    v15 = *(a1 + 3);
    v16 = *(a1 + 4);
    v17 = a1[1];
    src.width = a1[2];
    src.rowBytes = v16;
    src.data = v15;
    src.height = v17;
    v18 = *(a2 + 13);
    v19 = *(a2 + 9);
    dest.width = src.width;
    dest.rowBytes = v19;
    v20 = a1[3];
    dest.data = v18;
    dest.height = v20;
    result = vImageScale_ARGB8888(&src, &dest, 0, 8u);
    if (!result)
    {
      *(a3 + 4) = 0;
      *a3 = a1[3];
      return result;
    }

    goto LABEL_8;
  }

  aj_log_error(0, "Got too many rows from the recoder");
  return 1;
}

uint64_t aj_find_and_handle_markers(int **a1, uint64_t *a2, int *a3)
{
  if (a3)
  {
    v4 = a3 + 1;
    v5 = a3 + 18;
    v6 = a3 + 19;
    v7 = a3[17];
    v8 = *a3;
    v9 = (a3 + 24);
    v10 = !a3[13] && !a3[16];
  }

  else
  {
    v5 = a2 + 9;
    v6 = a2 + 4;
    v9 = *a2;
    v7 = (*a1)[851];
    v8 = **a1;
    v10 = 1;
    v4 = &comp_ind_table;
  }

  if (*(v9 + 16) || *(v9 + 24) > 6 || (result = aj_istream_fill_buf(v9, -9), !result))
  {
    if (v7 < 1 || *v6 != v7)
    {
      return 0;
    }

    v12 = *v5 + 1;
    v13 = -v12 < 0;
    v14 = -v12 & 7;
    v15 = v12 & 7;
    if (!v13)
    {
      v15 = -v14;
    }

    v16 = *(v9 + 16);
    if (v16)
    {
      v17 = *v16;
      if ((v15 | 0xD0) == v17)
      {
        if (v8 > 0 && v10)
        {
          v19 = v8;
          do
          {
            v20 = *v4++;
            *(a2 + v20 + 2) = 0;
            --v19;
          }

          while (v19);
        }

        *v9 = 0;
        *(v9 + 24) = -9;
        *v6 = 0;
        *v5 = v15 & 0xF;
        *(v9 + 16) = 0;
        if (*(v9 + 24) <= 6)
        {

          return aj_istream_fill_buf(v9, -9);
        }

        return 0;
      }

      aj_log_error(0, "Bitstream corrupt: Wrong marker (%02X) found.", v17);
      return 7;
    }

    if (*(v9 + 32) > 1)
    {
      return 7;
    }

    result = 7;
    if (*(v9 + 112))
    {
      if (*(v9 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_mcu_decode(int **a1, uint64_t a2, __int128 *a3, int a4, int a5, uint64_t a6, unsigned int *a7)
{
  v12 = a1;
  v104 = *MEMORY[0x277D85DE8];
  v13 = a1[1];
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  if (v13[91])
  {
    v14 = *a3;
    v15 = a3[1];
    v16 = *(a3 + 4);
    *(&v92 + 1) = *(a3 + 1);
    v93 = v15;
    v17 = &v95;
    v94 = v16;
    *&v92 = &v95;
    v18 = *a3;
    v19 = *(*a3 + 16);
    if (v19 >= *(*a3 + 8) || v19 == 0)
    {
      v19 = *(*a3 + 8);
    }

    *(v18 + 13) = v19;
    v22 = v18[2];
    v21 = v18[3];
    v23 = v18[1];
    v95 = *v18;
    v96 = v23;
    v97 = v22;
    v98 = v21;
    v24 = v18[4];
    v25 = *(v18 + 14);
    v26 = v18[6];
    v100 = v18[5];
    v101 = v26;
    v102 = v25;
    v99 = v24;
    v27 = &v92;
  }

  else
  {
    v17 = *a3;
    v27 = a3;
  }

  v91 = (a1 + 24);
  v28 = aj_find_and_handle_markers(a1, v27, 0);
  if (v28)
  {
    goto LABEL_11;
  }

  v89 = v13;
  v51 = v27 + 1;
  if (!*a2)
  {
    goto LABEL_57;
  }

  v52 = a4;
  if (*(a2 + 48) == a5 && *(a2 + 44) == a4)
  {
    v53 = *(a2 + 52);
    v54 = *(a2 + 56);
    v55 = *(*(v89 + 13) + 8 * v53) + 20 * v54;
    *(a2 + 56) = v54 + 1;
    v56 = v89[29] + a5;
    *(a2 + 48) = v56;
    if (v56 >= v89[20])
    {
      *(a2 + 52) = v53 + 1;
      *(a2 + 56) = 0;
      *(a2 + 44) = (v89[28] + v52);
    }

    v28 = aj_istream_state_save(v17, v55);
    if (v28)
    {
      v29 = 0;
      v30 = v91;
LABEL_72:
      v13 = v89;
      goto LABEL_13;
    }

    if (**v12 >= 1)
    {
      v57 = 0;
      do
      {
        *(v55 + 8 + 2 * v57) = *(v51 + v57);
        ++v57;
      }

      while (v57 < **v12);
    }
  }

  v58 = *(a2 + 16);
  if (!v58 || *v58 != v52 || v58[1] != a5)
  {
LABEL_57:
    v87 = v27;
    if (*(v12 + 18))
    {
      v30 = v91;
      v28 = (v12[90])(v91, v17, v51, a6, *a7);
      v13 = v89;
      if (v28)
      {
        v29 = 1;
        goto LABEL_13;
      }

      v28 = (v12[90])(v91, v17, v51, a6, *(v12 + 227) + *a7);
      if (v28)
      {
        v29 = 2;
        goto LABEL_13;
      }

      v28 = (v12[90])(v91, v17, v51, a6 + 8 * *(v12 + 182), *a7);
      if (v28)
      {
        v29 = 3;
        goto LABEL_13;
      }

      v28 = (v12[90])(v91, v17, v51, a6 + 8 * *(v12 + 182), *(v12 + 227) + *a7);
      if (v28)
      {
        v29 = 4;
        goto LABEL_13;
      }

      v28 = (v12[286])(v12 + 220, v17, v87 + 12, a6 + 128, a7[1]);
      if (v28)
      {
        v29 = 5;
        goto LABEL_13;
      }

      v28 = (v12[482])(v12 + 416, v17, v87 + 2, a6 + 256, a7[2]);
      if (v28)
      {
        v29 = 6;
        goto LABEL_13;
      }

      v86 = a7[1];
      *a7 += 2 * *(v12 + 227);
      a7[1] = v86 + *(v12 + 619);
      a7[2] += *(v12 + 1011);
    }

    else
    {
      v63 = *(v12 + 49);
      v30 = v91;
      v13 = v89;
      if (v63 >= 1)
      {
        v64 = 0;
        v65 = 0;
        v66 = *(v12 + 48);
        while (v66 < 1)
        {
LABEL_67:
          if (++v64 >= v63)
          {
            goto LABEL_74;
          }
        }

        v67 = 0;
        while (1)
        {
          v28 = (v12[90])(v91, v17, v51, a6 + 8 * *(v12 + 182) * v64, *a7 + *(v12 + 227) * v67);
          if (v28)
          {
            break;
          }

          ++v67;
          v66 = *v91;
          if (v67 >= *v91)
          {
            v63 = *(v12 + 49);
            v65 += v67;
            v13 = v89;
            goto LABEL_67;
          }
        }

        v29 = v65 + v67 + 1;
        goto LABEL_72;
      }

      v65 = 0;
LABEL_74:
      v68 = *v12;
      if (**v12 > 1)
      {
        v69 = v65;
        v70 = a6 + 128;
        v71 = v87 + 12;
        v72 = v12 + 220;
        v73 = 1;
        while (1)
        {
          v28 = (v72[66])(v72, v17, v71, v70, a7[v73]);
          if (v28)
          {
            break;
          }

          ++v73;
          v68 = *v12;
          v70 += 128;
          v71 += 4;
          v72 += 196;
          if (v73 >= **v12)
          {
            goto LABEL_78;
          }
        }

        v29 = v69 + v73;
        goto LABEL_12;
      }

LABEL_78:
      *a7 += *(v12 + 48) * *(v12 + 227);
      if (*v68 >= 2)
      {
        v74 = v12 + 619;
        v75 = 1;
        do
        {
          a7[v75++] += *v74;
          v74 += 392;
        }

        while (v75 < *v68);
      }
    }

    if (v13[91])
    {
      v76 = *a3;
      v77 = v93;
      *a3 = v92;
      a3[1] = v77;
      *(a3 + 4) = v94;
      *a3 = v76;
      v78 = v92;
      v80 = *v92;
      v79 = *(v92 + 16);
      v81 = *(v92 + 48);
      *(v76 + 32) = *(v92 + 32);
      *(v76 + 48) = v81;
      *v76 = v80;
      v83 = *(v78 + 80);
      v82 = *(v78 + 96);
      v84 = *(v78 + 64);
      *(v76 + 112) = *(v78 + 112);
      *(v76 + 80) = v83;
      *(v76 + 96) = v82;
      *(v76 + 64) = v84;
      *(v76 + 16) = v79;
      *(*a3 + 104) = 0;
    }

    v85 = vadd_s32(*(a3 + 28), 0x100000001);
    *(a3 + 28) = v85;
    result = 0;
    if (v85.i32[0] >= v13[20])
    {
      *(a3 + 3) = (*(a3 + 6) + 1);
    }

    goto LABEL_33;
  }

  v28 = aj_istream_state_save(v17, (v58 + 2));
  v13 = v89;
  if (!v28)
  {
    for (i = 0; i != 4; ++i)
    {
      if (i >= *(v17 + 8))
      {
        break;
      }

      *(v58 + i + 12) = *(*(v17 + 1) + i);
    }

    *(v58 + 16) = i;
    v60 = *(a2 + 16);
    if (v60 >= (v12[1] + 83))
    {
      v61 = 0;
    }

    else
    {
      v62 = *(v60 + 24);
      v61 = v60 + 24;
      if (*(a2 + 12) <= v62)
      {
        v61 = 0;
      }
    }

    *(a2 + 16) = v61;
    goto LABEL_57;
  }

LABEL_11:
  v29 = 0;
LABEL_12:
  v30 = v91;
LABEL_13:
  v31 = v13[91];
  if (v28 == -2)
  {
    if (v31)
    {
      restore_mcustate(a3, &v92);
      result = 4294967294;
      goto LABEL_33;
    }
  }

  else if (v31)
  {
    v33 = *a3;
    v34 = v93;
    *a3 = v92;
    a3[1] = v34;
    *(a3 + 4) = v94;
    *a3 = v33;
    v35 = v92;
    v37 = *v92;
    v36 = *(v92 + 16);
    v38 = *(v92 + 48);
    *(v33 + 32) = *(v92 + 32);
    *(v33 + 48) = v38;
    *v33 = v37;
    v40 = *(v35 + 80);
    v39 = *(v35 + 96);
    v41 = *(v35 + 64);
    *(v33 + 112) = *(v35 + 112);
    *(v33 + 80) = v40;
    *(v33 + 96) = v39;
    *(v33 + 64) = v41;
    *(v33 + 16) = v36;
    *(*a3 + 104) = 0;
  }

  v88 = v28;
  v42 = *(v12 + 1616);
  memset(v103, 0, sizeof(v103));
  if (v29 && v42 >= 1)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = &v30[392 * v43];
      v46 = v45[1];
      if (v46 >= 1)
      {
        v47 = 0;
        v48 = *v45;
        do
        {
          if (v48 >= 1)
          {
            for (j = 0; j < v48; ++j)
            {
              if (v44 + j >= v29)
              {
                (*(v45 + 65))(v103, a6 + (v43 << 7) + 8 * v45[134] * v47, a7[v43] + v45[179] * j);
                v48 = *v45;
              }
            }

            v46 = v45[1];
            v44 += j;
          }

          ++v47;
        }

        while (v47 < v46);
      }

      ++v43;
      v30 = v91;
    }

    while (v43 != v42);
    do
    {
      *a7++ += *(v12 + 48) * *(v12 + 227);
      v12 += 196;
      --v42;
    }

    while (v42);
  }

  result = v88;
LABEL_33:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *restore_mcustate(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 104);
  v4 = v3 - *(*a2 + 104);
  v5 = *(*a2 + 48);
  *(v2 + 104) = v3 - v4;
  v6 = *(v2 + 16);
  *(v2 + 8) -= v4;
  v7 = *(v2 + 48);
  if (v6)
  {
    *(v2 + 16) = v6 - v4;
  }

  *(v2 + 48) = v5;
  *(v2 + 32) += v5 - v7;
  return result;
}

uint64_t aj_mcu_decode_index(int **a1, uint64_t a2, __int128 *a3, int a4, int a5)
{
  v10 = a1[1];
  v11 = **a1;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  if (v10[91])
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = *(a3 + 4);
    *(&v56 + 1) = *(a3 + 1);
    v57 = v13;
    v15 = &v59;
    v58 = v14;
    *&v56 = &v59;
    v16 = *a3;
    v17 = *(*a3 + 16);
    if (v17 >= *(*a3 + 8) || v17 == 0)
    {
      v17 = *(*a3 + 8);
    }

    *(v16 + 13) = v17;
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[1];
    v59 = *v16;
    v60 = v21;
    v61 = v20;
    v62 = v19;
    v22 = v16[4];
    v23 = *(v16 + 14);
    v24 = v16[6];
    v64 = v16[5];
    v65 = v24;
    v66 = v23;
    v63 = v22;
    v25 = &v56;
  }

  else
  {
    v15 = *a3;
    v25 = a3;
  }

  v26 = aj_find_and_handle_markers(a1, v25, 0);
  if (v26)
  {
    goto LABEL_11;
  }

  if (*a2 && *(a2 + 48) == a5 && *(a2 + 44) == a4)
  {
    v30 = *(a2 + 52);
    v29 = *(a2 + 56);
    v31 = *(*(v10 + 13) + 8 * v30);
    *(a2 + 56) = v29 + 1;
    v32 = v10[29] + a5;
    *(a2 + 48) = v32;
    if (v32 >= v10[20])
    {
      *(a2 + 52) = v30 + 1;
      *(a2 + 56) = 0;
      *(a2 + 44) = v10[28] + a4;
    }

    if (v31)
    {
      v55 = v31 + 20 * v29;
      v26 = aj_istream_state_save(v15, v55);
      if (v26)
      {
        goto LABEL_11;
      }

      if (v11 >= 1)
      {
        v33 = (v55 + 8);
        v34 = v25 + 2;
        do
        {
          v35 = *v34++;
          *v33++ = v35;
          --v11;
        }

        while (v11);
      }
    }
  }

  v36 = *(a2 + 16);
  if (!v36 || *v36 != a4 || v36[1] != a5)
  {
    goto LABEL_37;
  }

  v26 = aj_istream_state_save(v15, (v36 + 2));
  if (v26)
  {
LABEL_11:
    v27 = v26;
    if (v10[91])
    {
      restore_mcustate(a3, &v56);
    }

    return v27;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i >= *(v15 + 8))
    {
      break;
    }

    *(v36 + i + 12) = *(*(v15 + 1) + i);
  }

  *(v36 + 16) = i;
  v38 = *(a2 + 16);
  if (v38 >= (a1[1] + 83))
  {
    v39 = 0;
  }

  else
  {
    v40 = *(v38 + 24);
    v39 = v38 + 24;
    if (*(a2 + 12) <= v40)
    {
      v39 = 0;
    }
  }

  *(a2 + 16) = v39;
LABEL_37:
  if (v10[22] >= 1)
  {
    v41 = 0;
    do
    {
      v26 = aj_block_decode_skip((a1 + 24), v15, v25 + 2);
      if (v26)
      {
        goto LABEL_11;
      }
    }

    while (++v41 < v10[22]);
  }

  if (**a1 > 1)
  {
    v42 = v25 + 3;
    v43 = (a1 + 220);
    v44 = 1;
    do
    {
      v26 = aj_block_decode_skip(v43, v15, v42);
      if (v26)
      {
        goto LABEL_11;
      }

      ++v44;
      ++v42;
      v43 += 1568;
    }

    while (v44 < **a1);
  }

  if (v10[91])
  {
    v45 = *a3;
    v46 = v57;
    *a3 = v56;
    a3[1] = v46;
    *(a3 + 4) = v58;
    *a3 = v45;
    v47 = v56;
    v49 = *v56;
    v48 = *(v56 + 16);
    v50 = *(v56 + 48);
    *(v45 + 32) = *(v56 + 32);
    *(v45 + 48) = v50;
    *v45 = v49;
    v52 = *(v47 + 80);
    v51 = *(v47 + 96);
    v53 = *(v47 + 64);
    *(v45 + 112) = *(v47 + 112);
    *(v45 + 80) = v52;
    *(v45 + 96) = v51;
    *(v45 + 64) = v53;
    *(v45 + 16) = v48;
    *(*a3 + 104) = 0;
  }

  v54 = vadd_s32(*(a3 + 28), 0x100000001);
  *(a3 + 28) = v54;
  v27 = 0;
  if (v54.i32[0] >= v10[20])
  {
    *(a3 + 3) = (*(a3 + 6) + 1);
  }

  return v27;
}

uint64_t aj_mcu_decode_progressive(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, _DWORD *a7)
{
  v133 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = a1[1];
  v12 = *(*a1 + 8);
  v13 = v12 + 7;
  v47 = v12 < -7;
  v14 = v12 + 14;
  if (!v47)
  {
    v14 = v13;
  }

  if (*(v10 + 16) + *(v10 + 16) * a5 > v14 >> 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v10 + 16);
  }

  v16 = *(v11 + 404);
  v129 = v16;
  if (*(v10 + 32) == 2)
  {
    if (!a5)
    {
      bzero(*(v11 + 424), *(v11 + 432));
      if (v16 >= 1)
      {
        v73 = 0;
        v123 = a4 + 1;
        v125 = 3;
        v127 = 0;
        do
        {
          v74 = *(v11 + 408) + 288 * v73;
          if (*(v74 + 280))
          {
            v75 = a1[1];
            if (*v74 != 1)
            {
              v77 = *a1;
LABEL_123:
              if (v77[20] == 194 && *(v74 + 52) >= 1)
              {
                v100 = *(v75 + 424) + (*(a1 + *(v74 + 4) + 1617) << 7);
              }

              else
              {
                v100 = *(v75 + 424);
              }

              if (*(v75 + 80) >= 1)
              {
                v101 = 0;
                do
                {
                  if (!*(v74 + 280))
                  {
                    break;
                  }

                  result = aj_find_and_handle_markers(a1, a3, v74);
                  if (result)
                  {
                    goto LABEL_154;
                  }

                  v102 = (*(v74 + 88))(a1, a3, v74, v100);
                  v103 = a1[1];
                  if (v102)
                  {
                    if (!v73)
                    {
                      goto LABEL_145;
                    }

                    *(v103 + 400) = 1;
                    v104 = *(v103 + 404);
                    if (v104 > v73)
                    {
                      v105 = 0;
                      v106 = vdupq_n_s64(~v73 + v104);
                      v107 = (v125 + v104) & 0xFFFFFFFFFFFFFFFCLL;
                      v108 = (*(v103 + 408) + v127);
                      do
                      {
                        v109 = vdupq_n_s64(v105);
                        v110 = vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_240AB0610)));
                        if (vuzp1_s16(v110, *v106.i8).u8[0])
                        {
                          v108[70] = 0;
                        }

                        if (vuzp1_s16(v110, *&v106).i8[2])
                        {
                          v108[142] = 0;
                        }

                        if (vuzp1_s16(*&v106, vmovn_s64(vcgeq_u64(v106, vorrq_s8(v109, xmmword_240AB08E0)))).i32[1])
                        {
                          v108[214] = 0;
                          v108[286] = 0;
                        }

                        v105 += 4;
                        v108 += 288;
                      }

                      while (v107 != v105);
                    }
                  }

                  ++v101;
                  v100 += *(v103 + 92) << 7;
                }

                while (v101 < *(v103 + 80));
              }

              goto LABEL_143;
            }

            v76 = *(v74 + 4);
            v77 = *a1;
            if (v76)
            {
              goto LABEL_123;
            }

            v78 = v77[3];
            v79 = v78 + 7;
            v47 = v78 < -7;
            v80 = v78 + 14;
            if (!v47)
            {
              v80 = v79;
            }

            v117 = v77[8] * v123;
            v118 = v80 >> 3;
            v81 = 1;
            v82 = a1[1];
            v119 = v82;
            do
            {
              if (!*(v74 + 280))
              {
                break;
              }

              v120 = v81;
              if (*(v82 + 80) >= 1)
              {
                v83 = 0;
                v84 = *(*a1 + 8);
                v85 = v84 + 7;
                v47 = v84 < -7;
                v86 = v84 + 14;
                if (!v47)
                {
                  v86 = v85;
                }

                v87 = v86 >> 3;
                v88 = *(v75 + 424) + ((*(*a1 + 16) * v76) << 7);
                do
                {
                  v89 = *(*a1 + 16);
                  if (v89 >= v87)
                  {
                    v90 = v87;
                  }

                  else
                  {
                    v90 = v89;
                  }

                  if (v90 >= 1)
                  {
                    v91 = 0;
                    v121 = v87 - v90;
                    v122 = v83;
                    while (*(v74 + 280))
                    {
                      result = aj_find_and_handle_markers(a1, a3, v74);
                      if (result)
                      {
                        goto LABEL_154;
                      }

                      if ((*(v74 + 88))(a1, a3, v74, v88 + (v91 << 7)))
                      {
                        if (!v73)
                        {
                          goto LABEL_145;
                        }

                        v92 = a1[1];
                        *(v92 + 400) = 1;
                        v93 = *(v92 + 404);
                        if (v93 > v73)
                        {
                          v94 = 0;
                          v95 = vdupq_n_s64(~v73 + v93);
                          v96 = (v125 + v93) & 0xFFFFFFFFFFFFFFFCLL;
                          v97 = (*(v92 + 408) + v127);
                          do
                          {
                            v98 = vdupq_n_s64(v94);
                            v99 = vmovn_s64(vcgeq_u64(v95, vorrq_s8(v98, xmmword_240AB0610)));
                            if (vuzp1_s16(v99, *v95.i8).u8[0])
                            {
                              v97[70] = 0;
                            }

                            if (vuzp1_s16(v99, *&v95).i8[2])
                            {
                              v97[142] = 0;
                            }

                            if (vuzp1_s16(*&v95, vmovn_s64(vcgeq_u64(v95, vorrq_s8(v98, xmmword_240AB08E0)))).i32[1])
                            {
                              v97[214] = 0;
                              v97[286] = 0;
                            }

                            v94 += 4;
                            v97 += 288;
                          }

                          while (v96 != v94);
                        }
                      }

                      ++v91;
                      --v87;
                      if (v91 == v90)
                      {
                        v87 = v121;
                        break;
                      }
                    }

                    v82 = a1[1];
                    v83 = v122;
                  }

                  if (++v83 >= *(v82 + 80))
                  {
                    break;
                  }

                  v88 += *(v82 + 92) << 7;
                }

                while (*(v74 + 280));
              }

              v76 = 1;
              v81 = 0;
              v75 = v119;
            }

            while (((v117 <= v118) & v120) != 0);
          }

LABEL_143:
          ++v73;
          --v125;
          v127 += 288;
        }

        while (v73 != v129);
      }
    }

    v17 = *(v11 + 424);
    v18 = *(a1[1] + 92);
    __memcpy_chk();
    goto LABEL_35;
  }

  v126 = v15;
  aj_clear_blocks(v132, *(v11 + 92));
  if (v16 < 1)
  {
LABEL_35:
    v37 = *(a3 + 28) + 1;
    *(a3 + 28) = v37;
    if (v37 >= *(a1[1] + 80))
    {
      *(a3 + 24) = (*(a3 + 24) + 1);
    }

    result = 0;
    v38 = a7;
    if (a6 && a7)
    {
      v39 = (a1 + 24);
      if (*(*a1 + 4) == 8)
      {
        v40 = *(a1 + 1616);
        if (v40 >= 1)
        {
          v41 = 0;
          v42 = (a1 + 30);
          v43 = v132;
          do
          {
            if (v41)
            {
              v44 = 1;
            }

            else
            {
              v44 = *(a1[1] + 88);
            }

            v45 = &v39[392 * v41];
            v46 = v45[44].i32[2];
            if (v46 > 3)
            {
              if (v46 == 4)
              {
                if (v44 >= 1)
                {
                  v56 = v45[3].i32[0];
                  v57 = v45[3].i32[1];
                  v58 = v45[5].i32[0];
                  v59 = v45[5].i32[1];
                  do
                  {
                    v60 = v43 + 16;
                    v43->i16[0] *= v56;
                    v43->i16[1] *= v57;
                    v43[2].i16[0] *= v58;
                    v43[2].i16[1] *= v59;
                    v43 += 16;
                    --v44;
                  }

                  while (v44);
                  v43 = v60;
                }
              }

              else if (v46 == 8 && v44 >= 1)
              {
                v54 = v45[3].i32[0];
                do
                {
                  v43->i16[0] *= v54;
                  v43 += 16;
                  --v44;
                }

                while (v44);
              }
            }

            else if (v46 == 1)
            {
              if (v44 >= 1)
              {
                do
                {
                  v55 = v43;
                  v43 += 16;
                  aj_block_dequantize_s1(v55, v45 + 3);
                  --v44;
                }

                while (v44);
                v40 = *(a1 + 1616);
              }
            }

            else
            {
              v47 = v46 != 2 || v44 < 1;
              if (!v47)
              {
                v48 = 0;
                do
                {
                  v49 = -8;
                  v50 = v43;
                  v51 = v42;
                  do
                  {
                    v52 = *v51;
                    v51 += 2;
                    *v50 = vmul_s16(*v50, vmovn_s32(v52));
                    v50 += 2;
                    v49 += 8;
                  }

                  while (v49 < 0x11);
                  v43 += 16;
                  ++v48;
                }

                while (v48 != v44);
              }
            }

            ++v41;
            v42 += 98;
          }

          while (v41 < v40);
        }
      }

      v61 = *a7;
      v131[0] = v61;
      v131[1] = v61;
      v62 = *(a1 + 49);
      if (v62 < 1)
      {
        v71 = 0;
      }

      else
      {
        v63 = 0;
        v64 = 0;
        v65 = *(a1 + 48);
        do
        {
          if (v65 >= 1)
          {
            v66 = 0;
            v67 = &v132[128 * v64];
            do
            {
              if (*(*a1 + 4) == 12)
              {
                aj_block_dequantize_12bit(a1 + 48, v67, v130);
                v68 = v131[v63];
                v131[v63] = (a1[89])(v130, a6 + 8 * *(a1 + 182) * v63, v68) + v68;
              }

              else
              {
                v69 = v131[v63];
                v70 = (a6 + 8 * *(a1 + 182) * v63);
                v131[v63] = (a1[89])(v67, v70, v69) + v69;
                if (*(a1 + 1232))
                {
                  aj_mosquito_spray((a1 + 24), v67, v70, v69);
                }
              }

              ++v66;
              v65 = *v39;
              v67 += 64;
              ++v64;
            }

            while (v66 < *v39);
            v62 = *(a1 + 49);
          }

          ++v63;
        }

        while (v63 < v62);
        v61 = v131[0];
        v71 = v64;
        v38 = a7;
      }

      *v38 = v61;
      if (*(a1 + 1616) > 1)
      {
        v111 = &v132[128 * v71];
        v112 = a6 + 128;
        v113 = a1 + 220;
        v114 = 1;
        do
        {
          if (*(*a1 + 4) == 12)
          {
            aj_block_dequantize_12bit(v113, v111, v130);
            v115 = (v113[65])(v130, v112, v38[v114]);
          }

          else
          {
            v115 = (v113[65])(v111, v112, v38[v114]);
          }

          v38[v114++] += v115;
          v111 += 64;
          v112 += 128;
          v113 += 196;
        }

        while (v114 < *(a1 + 1616));
      }

      result = 0;
    }

    goto LABEL_154;
  }

  v19 = 0;
  v20 = 0;
  v21 = 3;
  v124 = v11;
  while (1)
  {
    v22 = *(v11 + 408) + 288 * v20;
    if (*(v22 + 280))
    {
      if (*v22 == 1)
      {
        v23 = v126;
        if (*(v22 + 4))
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 1;
      }

      v24 = *(v22 + 52) ? *(a1 + *(v22 + 4) + 1617) : 0;
      if (v23 >= 1)
      {
        break;
      }
    }

LABEL_34:
    ++v20;
    --v21;
    v19 += 288;
    v11 = v124;
    if (v20 == v129)
    {
      goto LABEL_35;
    }
  }

  v25 = 0;
  v26 = &v132[128 * v24];
  v27 = v23;
  while (1)
  {
    result = aj_find_and_handle_markers(a1, a3, v22);
    if (result)
    {
      break;
    }

    if ((*(v22 + 88))(a1, a3, v22, &v26[128 * v25]))
    {
      if (!v20)
      {
LABEL_145:
        aj_log_error(0, "First scan failed, abort decode");
        result = 7;
        break;
      }

      v29 = a1[1];
      *(v29 + 400) = 1;
      v30 = *(v29 + 404);
      if (v30 > v20)
      {
        v31 = 0;
        v32 = vdupq_n_s64(~v20 + v30);
        v33 = (v21 + v30) & 0xFFFFFFFFFFFFFFFCLL;
        v34 = (*(v29 + 408) + v19);
        do
        {
          v35 = vdupq_n_s64(v31);
          v36 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_240AB0610)));
          if (vuzp1_s16(v36, *v32.i8).u8[0])
          {
            v34[70] = 0;
          }

          if (vuzp1_s16(v36, *&v32).i8[2])
          {
            v34[142] = 0;
          }

          if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v35, xmmword_240AB08E0)))).i32[1])
          {
            v34[214] = 0;
            v34[286] = 0;
          }

          v31 += 4;
          v34 += 288;
        }

        while (v33 != v31);
      }
    }

    if (++v25 == v27)
    {
      goto LABEL_34;
    }
  }

LABEL_154:
  v116 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t loop_through_image(int a1, int a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, int32x2_t *a7)
{
  if (a2 < 1)
  {
    return 0;
  }

  for (i = 0; i != a2; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v16 = &a4[j];
      v17 = a4[j];
      *v16 = a4[j + 3];
      v16[3] = v17;
    }

    if (a1 >= 1)
    {
      v18 = a1;
      do
      {
        if (a3)
        {
          result = aj_mcu_unpack(a4, a5, a7);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = aj_mcu_pack(a4, a6, a5);
          if (result)
          {
            return result;
          }
        }

        --v18;
      }

      while (v18);
    }
  }

  return 0;
}

uint64_t aj_handle_partial_progressive_decode(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v2 = *(a1 + 8);
  if (*(v2 + 404) >= 1)
  {
    v3 = 0;
    v4 = 280;
    do
    {
      v5 = (*(v2 + 408) + v4);
      if (*v5)
      {
        if (aj_fill_coeffblock_from_scan_info(v5 - 70, v18, *(a1 + 6464)))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_20;
        }

        v2 = *(a1 + 8);
      }

      ++v3;
      v4 += 288;
    }

    while (v3 < *(v2 + 404));
  }

  v6 = *(a1 + 6464);
  if (v6 < 1)
  {
    result = 0;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = v18;
    do
    {
      v10 = *(a1 + 192 + 1568 * v7 + 536);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = v9;
        while (2)
        {
          v13 = *(a1 + 192 + 1568 * v7 + 536);
          v14 = v12;
          do
          {
            v15 = *v14++;
            if (v15 != -1)
            {
              result = (v8 << 31 >> 31);
              goto LABEL_20;
            }

            --v13;
          }

          while (v13);
          ++v11;
          v12 += 8;
          if (v11 != v10)
          {
            continue;
          }

          break;
        }
      }

      result = 0;
      ++v7;
      v9 += 64;
      v8 = v7 < v6;
    }

    while (v7 != v6);
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_decode_all(uint64_t a1, uint64_t a2)
{
  if (!*(*a1 + 86))
  {
    v5 = *(a2 + 1488);
    if (*(a1 + 6612))
    {
      v6 = get_row_lpf;
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 172);
      v6 = fill_coeff_buffer;
    }

    v8 = *(a2 + 80);
    v9 = *(a2 + 84);
    v10 = *(a1 + 6848);
    if (v9 + *(*(a1 + 8) + 80) * v8 >= v10 + (*(a2 + 28) - 1) * *(*(a1 + 8) + 80))
    {
LABEL_21:
      if (*a2 && (v13 = move_to_mcu(a1, a2, a2 + 112, *(a2 + 12), 0), v13))
      {
LABEL_23:
        v16 = v13;
      }

      else
      {
        v17 = *(a1 + 8);
        if ((*(v17 + 136) - 1) <= 1)
        {
          *(v17 + 136) = 3;
          *a2 = 0;
        }

        if (*(a2 + 1496))
        {
          v18 = (*(a2 + 1504))(*(a2 + 1512));
          *(a2 + 1520) = *(a2 + 1496);
          if (v18)
          {
            v16 = 10;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

LABEL_43:
      if (*(a2 + 560))
      {
        v22 = v16 == -2;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        aj_return_rowptrs(a1, a2, (a2 + 568));
      }

      if (*(*(a1 + 8) + 400))
      {
        v23 = v16 == 0;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        return aj_handle_partial_progressive_decode(a1);
      }

      return v16;
    }

    if (*(a2 + 1088))
    {
LABEL_10:
      v24 = v8;
      if (*(a2 + 64) < *(a2 + 60))
      {
        do
        {
          if (*(a2 + 1496))
          {
            v11 = *(a2 + 1520);
            if (!v11)
            {
              v12 = (*(a2 + 1504))(*(a2 + 1512));
              v11 = *(a2 + 1496);
              if (v12)
              {
                *(a2 + 1520) = v11 - 1;
                v16 = 10;
                goto LABEL_43;
              }
            }

            *(a2 + 1520) = v11 - 1;
          }

          v13 = v6(a1, a2, &v24);
          if (v13)
          {
            goto LABEL_23;
          }

          if (*(a1 + 6945))
          {
            (*v5)(v5, a1, a2, v7, *(a2 + 104));
            *(a2 + 104) += v7;
            aj_return_rowptrs(a1, a2, (a2 + 568));
            if (!*(a2 + 1088))
            {
              *(a2 + 40) = *(a2 + 36);
            }
          }

          v14 = *(a2 + 60);
          v15 = *(a2 + 64) + 1;
          *(a2 + 64) = v15;
        }

        while (v15 < v14);
      }

      v16 = *(a2 + 1084);
      if (v16)
      {
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    v19 = *(a2 + 24);
    if (v8 >= v19)
    {
      v20 = *(a1 + 6844);
      if (v9 >= v20)
      {
        if (v9 < v10)
        {
          goto LABEL_37;
        }

        v8 = (v8 + 1);
        *(a2 + 80) = v8;
      }
    }

    else
    {
      *(a2 + 80) = v19;
      v20 = *(a1 + 6844);
      v8 = v19;
    }

    *(a2 + 84) = v20;
    v9 = v20;
LABEL_37:
    v21 = move_to_mcu(a1, a2, a2 + 112, v8, v9);
    v16 = v21;
    if (v21 != -2)
    {
      if (v21)
      {
        if (!*(a2 + 1084))
        {
          *(a2 + 1084) = v21;
          v16 = do_error_recovery(a1, a2, *(a2 + 84), v21);
          if (v16 == -2)
          {
            *(a2 + 1084) = 0;
            return v16;
          }
        }
      }
    }

    if (v16)
    {
      goto LABEL_43;
    }

    LODWORD(v8) = *(a2 + 80);
    goto LABEL_10;
  }

  return aj_lossless_decode_all(a1, a2);
}

uint64_t get_row_lpf(void **a1, uint64_t a2, _DWORD *a3)
{
  v6 = (1 << *(a1 + 1656)) / *(*a1 + 8);
  v7 = *(a1 + 1712) - *(a1 + 1711);
  v8 = *(*a1 + 4);
  v9 = *(a2 + 68);
  if (!v9)
  {
    bzero(a1[829], 4 * *(a1 + 1660));
    v9 = *(a2 + 68);
  }

  v10 = v7 * v8;
  if (v9 < v6)
  {
    v11 = a2 + 568;
    v12 = a1 + 831;
    do
    {
      if (*(a2 + 1496))
      {
        v13 = *(a2 + 1520);
        if (!v13)
        {
          v14 = (*(a2 + 1504))(*(a2 + 1512));
          v13 = *(a2 + 1496);
          if (v14)
          {
            *(a2 + 1520) = v13 - 1;
            return 10;
          }
        }

        *(a2 + 1520) = v13 - 1;
      }

      result = fill_coeff_buffer(a1, a2, a3);
      if (result)
      {
        return result;
      }

      v16 = *a1;
      v17 = *(*a1 + 8);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *v12;
        do
        {
          if (v10 >= 1)
          {
            v20 = *(v11 + 8 * v18);
            v21 = v10 + 1;
            v22 = v19;
            do
            {
              v23 = *v20++;
              *v22++ += v23;
              --v21;
            }

            while (v21 > 1);
            v17 = v16[8];
          }

          ++v18;
        }

        while (v18 < v17);
      }

      v24 = *(a1 + 1616);
      if (v24 > 1)
      {
        for (i = 1; i < v24; ++i)
        {
          if (v7 >= 1)
          {
            v26 = v12[i];
            v27 = *(v11 + (i << 7));
            v28 = v7 + 1;
            do
            {
              v29 = *v27++;
              *v26++ += v29;
              --v28;
            }

            while (v28 > 1);
            v24 = *(a1 + 1616);
          }
        }
      }

      aj_return_rowptrs(a1, a2, (a2 + 568));
      v30 = *(a2 + 68) + 1;
      *(a2 + 68) = v30;
    }

    while (v30 < v6);
  }

  *(a2 + 68) = 0;
  aj_get_rowptrs(a1, a2, (a2 + 568));
  lpf_row(*(a2 + 568), a1[831], v10, *(a1 + 1656), *(a1 + 1656));
  if (*(a1 + 1616) >= 2)
  {
    v31 = *(a1 + 1656);
    v32 = v31 - (*(*a1 + 4) == 2);
    v33 = v31 - (*(*a1 + 8) == 2);
    v34 = (a1 + 832);
    v35 = (a2 + 696);
    v36 = 1;
    do
    {
      v38 = *v35;
      v35 += 16;
      v37 = v38;
      v39 = *v34++;
      lpf_row(v37, v39, v7, v32, v33);
      ++v36;
    }

    while (v36 < *(a1 + 1616));
  }

  return 0;
}

uint64_t fill_coeff_buffer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 6580) == 14)
  {
    v6 = *(a2 + 24);
    v7 = *a3 - v6;
    if (*a3 > v6)
    {
      if (*(a1 + 17))
      {
        *(a2 + 96) = 0;
        *(a2 + 88) = 0;
      }

      else
      {
        *(a2 + 88) = v7 * *(a1 + 96) * *(a1 + 172);
        *(a2 + 92) = v7 * *(a1 + 104) * (*(a1 + 172) / *(a1 + 48));
        *(a2 + 96) = v7 * *(a1 + 112) * (*(a1 + 172) / *(a1 + 48));
      }
    }
  }

  else if (!*(a2 + 560))
  {
    if (*(a1 + 6464) >= 1)
    {
      v8 = 0;
      do
      {
        *(a2 + 88 + 4 * v8++) = 0;
      }

      while (v8 < *(a1 + 6464));
    }

    result = aj_get_rowptrs(a1, a2, (a2 + 568));
    if (result)
    {
      return result;
    }
  }

  v10 = *(a2 + 84);
  v11 = *(a2 + 1088);
  if (!v11)
  {
    goto LABEL_30;
  }

  if (v11 != 1 || (result = do_error_recovery(a1, a2, *(a2 + 84), *(a2 + 1084)), !result))
  {
    if (*a3 == *(a2 + 1092))
    {
      if (*(a2 + 1096) >= *(a1 + 6848))
      {
        v12 = *(a1 + 6848);
      }

      else
      {
        v12 = *(a2 + 1096);
      }

      fill_mcu_row_with_gray(a1, a2, v12);
      *(a2 + 1088) = 0;
      v10 = *(a2 + 1096);
LABEL_30:
      while (v10 < *(a1 + 6848))
      {
        *(a2 + 84) = *(a1 + 6844);
        v13 = move_to_mcu(a1, a2, a2 + 112, *a3, v10);
        if (v13 || (v13 = (*(a1 + 160))(a1, a2, a2 + 112, *a3, v10, a2 + 568, a2 + 88), v13))
        {
          if (v13 == -2)
          {
            *(a2 + 80) = *a3;
            *(a2 + 84) = v10;
            return 4294967294;
          }

          *(a2 + 1084) = v13;
          result = do_error_recovery(a1, a2, v10, v13);
          if (result)
          {
            if (result == -2)
            {
              *(a2 + 80) = *a3;
              *(a2 + 84) = v10;
            }

            return result;
          }

          if (*a3 != *(a2 + 1092))
          {
            goto LABEL_32;
          }

          if (*(a2 + 1096) >= *(a1 + 6848))
          {
            v14 = *(a1 + 6848);
          }

          else
          {
            v14 = *(a2 + 1096);
          }

          fill_mcu_row_with_gray(a1, a2, v14);
          LODWORD(v10) = *(a2 + 1096) - 1;
          *(a2 + 1088) = 0;
        }

        v10 = (v10 + 1);
      }
    }

    else
    {
LABEL_32:
      fill_mcu_row_with_gray(a1, a2, *(a1 + 6848));
    }

    result = 0;
    ++*a3;
  }

  return result;
}

uint64_t move_to_mcu(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  v6 = *(a3 + 28);
  if (v5 == a4 && v6 == a5)
  {
    return 0;
  }

  v8 = a5;
  v10 = v5 == a4;
  if (v6 <= a5)
  {
    v10 = 0;
  }

  if (v5 > a4 || v10)
  {
    aj_log_error("Dec", "Trying to move backwards in the stream");
    return 3;
  }

  v16 = a1[20];
  v17 = v5 == a4 && v6 == a5;
  v18 = a5;
  v19 = a4;
  if (v17)
  {
    goto LABEL_65;
  }

  v20 = a4;
  v21 = a5;
  if (!*a2)
  {
    goto LABEL_40;
  }

  if (v5 < *(a2 + 8))
  {
    v20 = a4;
    v21 = a5;
    if (*(a2 + 12) <= a4)
    {
      goto LABEL_40;
    }
  }

  v22 = *(a2 + 44);
  v21 = a5;
  v20 = a4;
  if (v5 <= v22)
  {
    v21 = a5;
    v20 = a4;
    if (v22 <= a4)
    {
      v23 = *(a2 + 48);
      if (v22 < a4)
      {
        if (v5 < v22)
        {
LABEL_30:
          if (v5 == v22)
          {
            v21 = *(a2 + 48);
            v20 = *(a2 + 44);
            if (v6 == v23)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v21 = *(a2 + 48);
            v20 = *(a2 + 44);
          }

          goto LABEL_34;
        }

        v24 = 1;
      }

      else
      {
        v24 = v23 <= a5;
        if (v5 < v22)
        {
          v21 = a5;
          v20 = a4;
          if (v23 > a5)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      v21 = a5;
      v20 = a4;
      if (v6 > v23)
      {
        goto LABEL_34;
      }

      v21 = a5;
      v20 = a4;
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }
  }

LABEL_34:
  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_40;
  }

  v26 = *v25;
  if (v5 > v26 || v20 < v26)
  {
    goto LABEL_40;
  }

  v58 = v25[1];
  if (v20 <= v26)
  {
    v59 = v21 >= v58;
    if (v5 < v26)
    {
      if (v21 < v58)
      {
        goto LABEL_40;
      }

      goto LABEL_97;
    }

    goto LABEL_95;
  }

  if (v5 >= v26)
  {
    v59 = 1;
LABEL_95:
    if (v6 > v58 || !v59)
    {
      goto LABEL_40;
    }
  }

LABEL_97:
  v20 = v26;
  if (v5 == v26)
  {
    v21 = v58;
    if (v6 == v58)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v21 = v58;
  }

LABEL_40:
  v28 = a1[1];
  v29 = v28[34];
  if ((v29 & 0xFFFFFFFE) == 2)
  {
    if (*(v28 + 12))
    {
      v30 = *(v28 + 13);
      if (v30)
      {
        if ((v29 != 2 || !*(a1 + 1703)) && (v21 || v28[21] != v20))
        {
          v31 = v28[28];
          v32 = v20 / v31;
          v19 = (v20 / v31 * v31);
          if (v19 >= v5)
          {
            v33 = v28[29];
            v34 = v21 / v33;
            v18 = (v21 / v33 * v33);
            if (v19 != v5 || v18 > v6)
            {
              v36 = *(v30 + 8 * v32);
              if (*(v36 + 20 * v34 + 17))
              {
                v37 = v36 + 20 * v34;
                v12 = aj_istream_state_restore(*a3, v37);
                if (!v12)
                {
                  v38 = *a1;
                  if (**a1 >= 1)
                  {
                    v39 = 0;
                    do
                    {
                      *(a3 + 8 + 4 * v39) = *(v37 + 8 + 2 * v39);
                      ++v39;
                    }

                    while (v39 < *v38);
                  }

                  v40 = v38[851];
                  if (v40)
                  {
                    v41 = v18 + a1[1][20] * v19;
                    v42 = v41 % v40;
                    v43 = v41 % (8 * v40) / v40;
                    v44 = __OFSUB__(v43, 1);
                    v45 = v43 - 1;
                    if (v45 < 0 != v44)
                    {
                      v45 = 7;
                    }

                    *(a3 + 32) = v42;
                    *(a3 + 36) = v45;
                  }

                  *(a3 + 24) = v19;
                  *(a3 + 28) = v18;
                  goto LABEL_65;
                }

                goto LABEL_127;
              }
            }
          }
        }
      }
    }
  }

  v46 = (*a1)[851];
  if (!v46 || *(*a1 + 84) || (v49 = v28[20], v50 = (v21 + v49 * v20) / v46, v51 = v50 - 1, v50 < 1) || (v52 = (v50 * v46 / v49), v52 < v5))
  {
LABEL_64:
    v18 = *(a3 + 28);
    v19 = *(a3 + 24);
    goto LABEL_65;
  }

  v53 = v52 == v5 && v50 * v46 % v49 <= v6;
  v18 = *(a3 + 28);
  v19 = *(a3 + 24);
  if (v53)
  {
    goto LABEL_65;
  }

  v54 = *a3;
  v55 = (v6 + v49 * v5) / v46;
  v56 = v55 - 1;
  v57 = *(*a3 + 16);
  if (v57 && *(a3 + 32) == v46)
  {
    if ((v56 & 7 | 0xD0) == *v57)
    {
      v56 = v55 - 2;
      goto LABEL_107;
    }

    aj_log_error("Dec", "Current restart marker does not have expected value (0x%02X != 0x%02X)");
LABEL_126:
    v12 = 7;
LABEL_127:
    aj_log_error("Dec", "Jump to MCU failed with error: %d", v12);
    return v12;
  }

  if (*(a3 + 36) != (v56 & 7))
  {
    v68 = *(a3 + 36);
    aj_log_error("Dec", "Previous restart marker does not have expected value (0x%02X != 0x%02X)");
    goto LABEL_126;
  }

LABEL_107:
  if (v56 == v51)
  {
    aj_log_error("Dec", "Already at requested restart marker");
    v19 = *(a3 + 24);
    v18 = *(a3 + 28);
    goto LABEL_65;
  }

  v18 = (v50 * v46 % v49);
  if (v56 >= v51)
  {
LABEL_121:
    if (v56 == v51 && *(v54 + 16))
    {
      goto LABEL_123;
    }

    aj_log_error("Dec", "Unable to go to the correct RST position");
    goto LABEL_126;
  }

  v61 = 0;
  v72 = (v50 * v46 / v49);
  v71 = (v21 + v49 * v20) / v46;
  v70 = v50 - 1;
  v69 = *a3;
  while (1)
  {
    v62 = *(v54 + 16);
    if (v62)
    {
      break;
    }

    v64 = v61;
    next_marker = find_next_marker(a3);
    v61 = v64;
    v12 = next_marker;
    if (next_marker == -2 && v61)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v66 = v46 + v46 * v56;
      *(a3 + 32) = 0;
      *(a3 + 36) = v56 & 7;
      v67 = a1[1][20];
      *(a3 + 24) = v66 / v67;
      *(a3 + 28) = v66 % v67;
      v12 = 4294967294;
      goto LABEL_127;
    }

    v52 = v72;
    LOBYTE(v50) = v71;
    v51 = v70;
    v54 = v69;
    if (next_marker)
    {
      goto LABEL_127;
    }

LABEL_120:
    if (v56 >= v51)
    {
      goto LABEL_121;
    }
  }

  *v54 = 0;
  *(v54 + 24) = -9;
  ++v56;
  v63 = *v62;
  if ((v56 & 7 | 0xD0) == v63)
  {
    if (v56 == v51)
    {
      goto LABEL_123;
    }

    *(v54 + 16) = 0;
    v61 = 1;
    goto LABEL_120;
  }

  if (v63 != 217)
  {
    aj_log_error("Dec", "Incorrect restart marker found (0x%02X != 0x%02X). Skipping jump.");
    goto LABEL_126;
  }

  if (v56 != v51 || v18 || a1[1][21] != v52)
  {
    aj_log_error("Dec", "Encountered EOI while trying to jump to [%d,%d]. Skipping jump.");
    goto LABEL_126;
  }

LABEL_123:
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 32) = v46;
  *(a3 + 36) = (v50 + 6) & 7;
  *(a3 + 24) = v52;
  *(a3 + 28) = v18;
  v19 = v52;
LABEL_65:
  if (v19 == a4 && v18 == v8)
  {
    return 0;
  }

  if (v16 == aj_mcu_decode_progressive)
  {
    v47 = aj_mcu_decode_progressive;
  }

  else
  {
    v47 = aj_mcu_decode_index;
  }

  if (v19 >= a4)
  {
LABEL_100:
    if (v18 < v8)
    {
      while (1)
      {
        v12 = (v47)(a1, a2, a3, v19, v18, 0, 0);
        if (v12)
        {
          break;
        }

        v18 = (v18 + 1);
        if (v8 == v18)
        {
          return v12;
        }
      }

      goto LABEL_77;
    }

    return 0;
  }

  while (1)
  {
    while (v18 >= a1[1][20])
    {
      v18 = 0;
      v19 = (v19 + 1);
      if (v19 == a4)
      {
        v19 = a4;
        goto LABEL_100;
      }
    }

    v48 = (v47)(a1, a2, a3, v19, v18, 0, 0);
    if (v48)
    {
      break;
    }

    v18 = (v18 + 1);
  }

  v12 = v48;
LABEL_77:
  if (v12 == -2)
  {
    *(a2 + 80) = v19;
    *(a2 + 84) = v18;
    return 4294967294;
  }

  return v12;
}

uint64_t aj_decode_row(uint64_t a1, uint64_t a2)
{
  *(a2 + 60) = 1;
  if (*(a2 + 80) == *(a2 + 24) || (*(a2 + 88) = 0, *(a2 + 96) = 0, result = aj_get_rowptrs(a1, a2, (a2 + 568)), !result))
  {
    result = aj_decode_all(a1, a2);
    *(a2 + 80) = (*(a2 + 80) + *(a1 + 6628));
  }

  return result;
}

uint64_t aj_create_ra_table(uint64_t a1, _DWORD *a2)
{
  v2 = (a2 + 28);
  if (!*a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 136);
  if (v5 == 2)
  {
    result = extend_ra_table(a1, a2, v2, 0, *(v4 + 84));
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v5 == 1)
  {
    result = build_ra_table(a1, a2);
    if (result)
    {
      return result;
    }

LABEL_8:
    result = 0;
    *(*(a1 + 8) + 136) = 3;
    return result;
  }

  aj_log_error("Dec", "Illegal ra-state", v2);
  return 5;
}

uint64_t build_ra_table(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = ((v4[21] - 1) / v4[28] * v4[28]);
  v6 = (v4[20] - 1) / v4[29] * v4[29];
  result = move_to_mcu(a1, a2, a2 + 112, v5, v6);
  if (!result)
  {

    return aj_mcu_decode_index(a1, a2, (a2 + 112), v5, v6);
  }

  return result;
}

uint64_t extend_ra_table(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 1496))
  {
    v10 = *(a2 + 1520);
    if (!v10)
    {
      v21 = (*(a2 + 1504))(*(a2 + 1512));
      v10 = *(a2 + 1496);
      if (v21)
      {
        *(a2 + 1520) = v10 - 1;
        return 10;
      }
    }

    *(a2 + 1520) = v10 - 1;
  }

  if (a4 >= a5)
  {
LABEL_18:

    return move_to_mcu(a1, a2, a2 + 112, a5, 0);
  }

  else
  {
    v11 = *(a1 + 8);
    v13 = v11[28];
    v12 = v11[29];
    v14 = v11[20];
    while (v14 < 1)
    {
LABEL_17:
      a4 = (a4 + v13);
      if (a4 >= a5)
      {
        goto LABEL_18;
      }
    }

    v15 = 0;
    while (1)
    {
      result = move_to_mcu(a1, a2, a3, a4, v15);
      if (result)
      {
        break;
      }

      if (*a2 && a4 == *(a2 + 44) && v15 == *(a2 + 48))
      {
        v17 = *(a1 + 8);
        v18 = *(a2 + 52);
        v19 = *(a2 + 56);
        if (*(*(*(v17 + 104) + 8 * v18) + 20 * v19 + 17))
        {
          *(a2 + 56) = v19 + 1;
          v20 = v15 + *(v17 + 116);
          *(a2 + 48) = v20;
          if (v20 >= *(v17 + 80))
          {
            *(a2 + 52) = (v18 + 1);
            *(a2 + 44) = (*(v17 + 112) + a4);
          }
        }

        else
        {
          result = aj_mcu_decode_index(a1, a2, a3, a4, v15);
          if (result)
          {
            return result;
          }
        }
      }

      v15 = (v15 + v12);
      if (v15 >= v14)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}