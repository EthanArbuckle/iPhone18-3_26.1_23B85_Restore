uint64_t aj_get_numthreads_decode(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  v5 = *(a1 + 6504);
  if (v5 / 32 < a4)
  {
    a4 = (v5 / 32);
    if (v5 < 64)
    {
      return 1;
    }
  }

  if (*(a1 + 6580) == 14 || *(*a1 + 84))
  {
    return 1;
  }

  v6 = 1;
  if (a3 && !*(a1 + 17) && a4 >= 2 && !*(a1 + 6612))
  {
    v8 = *(a1 + 8);
    v9 = *(v8 + 136);
    if ((v9 & 0xFFFFFFFE) == 2 && *(v8 + 96) && *(v8 + 104))
    {
      v10 = v9 == 2;
      v11 = *(v8 + 128);
      v13 = v10 || v11 < 3;
      v14 = *(a1 + 6812);
      if (v14)
      {
        v14 = *(v8 + 112) > 1;
      }

      if (!(v14 | v13))
      {
        if (v11 <= a4)
        {
          a4 = (v11 - 1);
        }

        else
        {
          a4 = a4;
        }

        LODWORD(v6) = 3;
        goto LABEL_41;
      }
    }

    v15 = *(*a1 + 3404);
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = *(v8 + 80);
    if (*(a1 + 6812))
    {
      if (v16 < v15)
      {
LABEL_26:
        if (!*(a2 + 4))
        {
          return 1;
        }

        v6 = 1;
        if (*(a1 + 6812) | (*(a1 + 168) > 8))
        {
          return v6;
        }

        a4 = 2;
LABEL_41:
        *a5 = v6;
        return a4;
      }
    }

    else
    {
      v17 = *(v8 + 84) * v16 / v15;
      v18 = v17 < a4;
      if (v17 >= a4)
      {
        a4 = a4;
      }

      else
      {
        a4 = v17;
      }

      if (v18 && v17 <= 1)
      {
        goto LABEL_26;
      }
    }

    LODWORD(v6) = 2;
    goto LABEL_41;
  }

  return v6;
}

uint64_t aj_get_numthreads_ratbl(void *a1, int a2, int a3)
{
  v3 = a1[1];
  if ((*(v3 + 136) & 0xFFFFFFFE) != 2)
  {
    return 1;
  }

  if (!*(v3 + 96))
  {
    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  if (!*(v3 + 104))
  {
    return 1;
  }

  if (*(*a1 + 84))
  {
    return 1;
  }

  v5 = *(v3 + 120);
  if (!v5 || !*(v3 + 124))
  {
    return 1;
  }

  v6 = (v5 + *(v3 + 84) - 1) / v5;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 1)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t aj_decode_all_mt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 6948);
  if (v4 <= 1)
  {
    return aj_decode_all(a1, a2);
  }

  v5 = *(a1 + 6952);
  v37 = *(a1 + 6948);
  v6 = (v4 - 1);
  v38 = v5;
  v39 = v6;
  do
  {
    pthread_create(v5 + 193, 0, job, v5);
    v5 += 209;
    --v6;
  }

  while (v6);
  LODWORD(v7) = aj_decode_all(a1, a2);
  v9 = v38;
  v8 = v39;
  v36 = v7;
  do
  {
    pthread_join(v9[193], 0);
    v10 = *v9;
    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (v11)
    {
      v7 = v7;
    }

    else
    {
      v7 = v10;
    }

    v9 += 209;
    --v8;
  }

  while (v8);
  v12 = 0;
  v13 = v38 + 144;
  do
  {
    if (v12)
    {
      v14 = &v38[209 * v12 - 207];
    }

    else
    {
      v14 = a2;
    }

    v15 = &v38[209 * v12];
    v16 = v15 + 2;
    if (*(v15 + 283))
    {
      v17 = v15 + 283;
      v18 = *(a1 + 6464);
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = (v14 + 568);
        v21 = v13;
        do
        {
          v22 = v17[v19];
          v23 = v20;
          v24 = v21;
          if (v22 >= 1)
          {
            do
            {
              v25 = *v24++;
              *v23++ = v25;
              --v22;
            }

            while (v22);
          }

          ++v19;
          v21 += 10;
          v20 += 16;
        }

        while (v19 != v18);
      }

      *(v14 + 1082) = 1;
      v26 = *(v14 + 104);
      (**(v14 + 1488))();
      *(v14 + 104) += *v17;
      *(v14 + 1082) = 0;
      v27 = *(a1 + 6464);
      if (v27 >= 1)
      {
        v28 = 0;
        v29 = v13;
        do
        {
          if (v17[v28] >= 1)
          {
            v30 = 0;
            do
            {
              aj_rowbuffer_return_buffer(v16 + 38, v29[v30++]);
            }

            while (v30 < v17[v28]);
            v27 = *(a1 + 6464);
          }

          ++v28;
          v29 += 10;
        }

        while (v28 < v27);
      }
    }

    v31 = *(a2 + 40);
    if (v31 <= *(v16 + 10))
    {
      v31 = *(v16 + 10);
    }

    *(a2 + 40) = v31;
    ++v12;
    v13 += 209;
  }

  while (v12 != v39);
  if (v7 && !v36)
  {
    v32 = v38;
    while (!*v32)
    {
      v32 += 209;
      if (!--v39)
      {
        goto LABEL_40;
      }
    }

    *(a2 + 36) = *(v32 + 13);
  }

LABEL_40:
  v33 = *(a2 + 112);
  pos = aj_istream_get_pos(v38[209 * v37 - 402]);
  result = aj_istream_move_to_position(v33, pos);
  if (!result)
  {
    return v7;
  }

  return result;
}

uint64_t aj_create_ra_table_mt(uint64_t a1, _DWORD *a2)
{
  v2 = (a2 + 28);
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = v5[34];
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      aj_log_error("Dec", "Illegal ra-state");
      return 5;
    }

    v7 = build_ra_table(a1, a2);
    if (!v7)
    {
      goto LABEL_27;
    }

    return v7;
  }

  v9 = *(a1 + 6952);
  v10 = *(a1 + 6948);
  numthreads_ratbl = aj_get_numthreads_ratbl(a1, *(*v2 + 80) == 0, v10);
  v12 = v5[21];
  if (numthreads_ratbl == 1)
  {
    v7 = extend_ra_table(a1, a2, v2, 0, v12);
    if (!v7)
    {
LABEL_27:
      v8 = 0;
      *(*(a1 + 8) + 136) = 3;
      return v8;
    }

    return v7;
  }

  v13 = v5[30];
  v14 = (v12 + v13 - 1) / v13 / v10;
  v15 = v14 * v13;
  v16 = v5[28];
  if (v10 < 2)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = v10 - 1;
    v19 = v13 * v14;
    v20 = v9 + 10;
    v21 = (v10 - 1);
    do
    {
      *v20 = v17;
      v22 = v16 + v17;
      v17 += v19;
      v20[1] = v17;
      v23 = (v22 - 1) / v16;
      v20[7] = v23;
      v20[5] = v23 * v16;
      v20 += 418;
      --v21;
    }

    while (v21);
  }

  v24 = (v18 * v15);
  a2[6] = v24;
  a2[7] = v12;
  v25 = (v24 + v16 - 1) / v16;
  a2[13] = v25;
  a2[11] = v25 * v16;
  if (v10 >= 2)
  {
    v26 = 0;
    v27 = v9;
    do
    {
      pthread_create(v27 + 193, 0, ra_job, v27);
      ++v26;
      v27 += 209;
    }

    while (v26 < *(a1 + 6948) - 1);
    v24 = a2[6];
    v12 = a2[7];
  }

  v8 = extend_ra_table(a1, a2, v2, v24, v12);
  if (*(a1 + 6948) >= 2)
  {
    v28 = 0;
    do
    {
      pthread_join(*(v9 + 193), 0);
      if (*v9)
      {
        v8 = *v9;
      }

      else
      {
        v8 = v8;
      }

      ++v28;
      v9 += 418;
    }

    while (v28 < *(a1 + 6948) - 1);
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  return v8;
}

_BYTE *lpf_row(_BYTE *result, int *a2, int a3, int a4, int a5)
{
  for (i = a5 + a4; a4; --a4)
  {
    if (a3 >= 2)
    {
      v6 = a3 + 2;
      v7 = a2;
      v8 = a2;
      do
      {
        v9 = *v8;
        v10 = v8[1];
        v8 += 2;
        *v7++ = v10 + v9;
        v6 -= 2;
      }

      while (v6 > 3);
    }

    a3 >>= 1;
  }

  if (i)
  {
    if (a3 >= 1)
    {
      v11 = a3 + 1;
      do
      {
        v12 = *a2++;
        *result++ = (v12 + (1 << (i - 1))) >> i;
        --v11;
      }

      while (v11 > 1);
    }
  }

  else if (a3 >= 1)
  {
    v13 = a3 + 1;
    do
    {
      v14 = *a2++;
      *result++ = v14;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

uint64_t do_error_recovery(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (a2 + 112);
  v9 = *(a2 + 112);
  *(a2 + 1088) = 2;
  v10 = *(*a1 + 3404);
  if (!v10 || *(*a1 + 84))
  {
    v11 = "No RST markers or image is multiscan, can't do recovery";
LABEL_4:
    aj_log_error("Dec", v11);
LABEL_5:
    if (a4)
    {
      if (a4 == -2)
      {
        *(a2 + 1088) = 1;
      }

      else
      {
LABEL_29:
        if (*(a2 + 36) == *(a2 + 32) && *(a1 + 6844) == a3 && *(a1 + 6836) == *(a2 + 24))
        {
          *(a2 + 1084) = 0;
        }

        else if (*(a1 + 6944))
        {
          a4 = 0;
          *(a2 + 1096) = *(a1 + 6844);
          *(a2 + 1092) = *(a1 + 6840) + 1;
        }
      }
    }

    return a4;
  }

  *(v9 + 104) = 0;
  v12 = *(a2 + 140) + *(*(a1 + 8) + 80) * *(a2 + 136);
  v13 = v12 / v10 - 1;
  if (v12 && !(v12 % v10) && *(a2 + 144) == v10)
  {
    v13 = v12 / v10 - 2;
  }

  v14 = *(a2 + 148);
  next_marker = find_next_marker((a2 + 112));
  if (next_marker)
  {
    a4 = next_marker;
    aj_log_error("Dec", "Could not find next marker");
    goto LABEL_5;
  }

  v33 = v13;
  v34 = a3;
  v35 = (v14 + 2) & 7;
  v16 = (v14 + 3) & 7;
  v17 = v14 & 7;
  v18 = (v14 - 1) & 7;
  v11 = "Could not find next marker";
  while (1)
  {
    v19 = *(v9 + 16);
    if (!v19)
    {
      aj_log_error("Dec", "No marker found");
      a4 = 7;
      a3 = v34;
      goto LABEL_29;
    }

    v20 = *v19;
    if ((v20 & 0xF8) != 0xD0)
    {
      goto LABEL_26;
    }

    v21 = v20 & 7;
    if (v35 == v21 || v16 == v21)
    {
      break;
    }

    if (v17 != v21 && v18 != v21)
    {
      v26 = 1;
      goto LABEL_37;
    }

LABEL_26:
    *(v9 + 16) = 0;
    v24 = find_next_marker(v8);
    if (v24)
    {
      a4 = v24;
      a3 = v34;
      goto LABEL_4;
    }
  }

  v26 = (v21 - *(a2 + 148)) & 7;
LABEL_37:
  a4 = 0;
  v27 = v26 + v33;
  v28 = v10 + v10 * v27;
  v29 = *(*(a1 + 8) + 80);
  v30 = v28 / v29;
  v31 = v28 % v29;
  *(a2 + 1092) = v30;
  v32 = *(a1 + 6844);
  if (v31 > v32)
  {
    v32 = v31;
  }

  *(a2 + 1096) = v32;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(v9 + 16) = 0;
  *(a2 + 144) = 0;
  *(a2 + 148) = v27 & 7;
  *(a2 + 136) = v30;
  *(a2 + 140) = v31;
  return a4;
}

int *fill_mcu_row_with_gray(int *result, uint64_t a2, int a3)
{
  if (result[1616] >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = (result + 48);
    v7 = a2 + 88;
    v8 = (result + 1671);
    v9 = a2 + 568;
    do
    {
      v10 = *(v7 + 4 * v5);
      v11 = (a3 - v4[1711]) * *&v6[1568 * v5 + 716] * *&v6[1568 * v5] - v10;
      if (*&v8[4 * v5] >= 1)
      {
        v12 = 0;
        do
        {
          result = memset((*(v9 + 8 * v12++) + *(v7 + 4 * v5)), 128, v11);
        }

        while (v12 < *&v8[4 * v5]);
        v10 = *(v7 + 4 * v5);
      }

      *(v7 + 4 * v5++) = v10 + v11;
      v9 += 128;
    }

    while (v5 < v4[1616]);
  }

  return result;
}

uint64_t find_next_marker(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 16))
  {
    next_val = aj_istream_find_next_val(*a1, 255);
    v4 = *(v1 + 32);
    if (v4 <= 1 && next_val == 0)
    {
LABEL_15:
      if (*(v1 + 112) && *(v1 + 56) == 1)
      {
        return 4294967294;
      }

      v2 = 7;
    }

    else
    {
      v2 = next_val;
      while (!v2)
      {
        v6 = *(v1 + 8);
        v8 = *(v6 + 1);
        v7 = v6 + 1;
        if (v8)
        {
          if (**(v1 + 8) == 255)
          {
            v12 = aj_istream_fill_buf(v1, -9);
            v2 = v12;
            if (v12)
            {
              aj_log_error("Dec", "Error when reading from inputstream: %d", v12);
            }
          }

          else
          {
            aj_log_error("Dec", "Could not find next marker");
            return 7;
          }

          return v2;
        }

        *(v1 + 8) = v7;
        *(v1 + 32) = v4 - 1;
        v9 = aj_istream_find_next_val(v1, 255);
        v2 = v9;
        v4 = *(v1 + 32);
        if (v4 <= 1 && v9 == 0)
        {
          goto LABEL_15;
        }
      }

      if (v2 == -2)
      {
        return v2;
      }
    }

    aj_log_error("Dec", "Encountered error %d while searching for next marker", v2);
    return v2;
  }

  v2 = 0;
  *v1 = 0;
  *(v1 + 24) = -9;
  return v2;
}

uint64_t aj_write_app0(uint64_t a1)
{
  result = aj_ostream_write_bytes(a1, 65504, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 16, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, 4867657, 3);
      if (!result)
      {
        result = aj_ostream_write_bytes(a1, 17920, 2);
        if (!result)
        {
          result = aj_ostream_write_bytes(a1, 258, 2);
          if (!result)
          {
            result = aj_ostream_write_bytes(a1, 1, 1);
            if (!result)
            {
              result = aj_ostream_write_bytes(a1, 72, 2);
              if (!result)
              {
                result = aj_ostream_write_bytes(a1, 72, 2);
                if (!result)
                {

                  return aj_ostream_write_bytes(a1, 0, 2);
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

uint64_t aj_write_sof(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = a2[3];
  }

  v6 = *a2;
  result = aj_ostream_write_bytes(a1, a2[20] + 65280, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 3 * v6 + 8, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, a2[1], 1);
      if (!result)
      {
        result = aj_ostream_write_bytes(a1, v3, 2);
        if (!result)
        {
          result = aj_ostream_write_bytes(a1, a2[2], 2);
          if (!result)
          {
            result = aj_ostream_write_bytes(a1, *a2, 1);
            if (!result)
            {
              if (*a2 < 1)
              {
                return 0;
              }

              else
              {
                v8 = 0;
                do
                {
                  v9 = &a2[v8];
                  v10 = v9[4];
                  v11 = v9[8];
                  result = aj_ostream_write_bytes(a1, v9[16], 1);
                  if (result)
                  {
                    break;
                  }

                  result = aj_ostream_write_bytes(a1, v11 + 16 * v10, 1);
                  if (result)
                  {
                    break;
                  }

                  result = aj_ostream_write_bytes(a1, v9[12], 1);
                  if (result)
                  {
                    break;
                  }

                  ++v8;
                }

                while (v8 < *a2);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_dht(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = aj_ostream_write_bytes(a1, 65476, 2);
  if (!result)
  {
    v7 = a3 + 274;
    v8 = *(a3 + 274);
    v9 = vaddl_high_u8(*a3, v8);
    v10 = vaddl_u8(*a3, *v8.i8);
    v11 = vaddvq_s32(vaddq_s32(vaddl_u16(*v10.i8, *v9.i8), vaddl_high_u16(v10, v9)));
    if (*a2 == 3)
    {
      v12 = *(a3 + 548);
      v13 = *(a3 + 822);
      v14 = vaddl_high_u8(v12, v13);
      v15 = vaddl_u8(*v12.i8, *v13.i8);
      v16 = v11 + vaddvq_s32(vaddq_s32(vaddl_u16(*v15.i8, *v14.i8), vaddl_high_u16(v15, v14))) + 70;
    }

    else
    {
      v16 = v11 + 36;
    }

    result = aj_ostream_write_bytes(a1, v16, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, 0, 1);
      if (!result)
      {
        v17 = 0;
        LODWORD(v18) = 0;
        while (1)
        {
          result = aj_ostream_write_bytes(a1, *(a3 + v17), 1);
          if (result)
          {
            break;
          }

          v18 = v18 + *(a3 + v17++);
          if (v17 == 16)
          {
            if (v18)
            {
              v19 = (a3 + 16);
              while (1)
              {
                v20 = *v19++;
                result = aj_ostream_write_bytes(a1, v20, 1);
                if (result)
                {
                  break;
                }

                if (!--v18)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
LABEL_15:
              *(a3 + 273) = 1;
              result = aj_ostream_write_bytes(a1, 16, 1);
              if (!result)
              {
                v21 = 0;
                LODWORD(v22) = 0;
                while (1)
                {
                  result = aj_ostream_write_bytes(a1, *(v7 + v21), 1);
                  if (result)
                  {
                    break;
                  }

                  v22 = v22 + *(v7 + v21++);
                  if (v21 == 16)
                  {
                    if (v22)
                    {
                      v23 = (a3 + 290);
                      while (1)
                      {
                        v24 = *v23++;
                        result = aj_ostream_write_bytes(a1, v24, 1);
                        if (result)
                        {
                          break;
                        }

                        if (!--v22)
                        {
                          goto LABEL_23;
                        }
                      }
                    }

                    else
                    {
LABEL_23:
                      *(a3 + 547) = 1;
                      if (*a2 == 3)
                      {
                        result = aj_ostream_write_bytes(a1, 1, 1);
                        if (!result)
                        {
                          v25 = 0;
                          LODWORD(v26) = 0;
                          v27 = a3 + 548;
                          while (1)
                          {
                            result = aj_ostream_write_bytes(a1, *(v27 + v25), 1);
                            if (result)
                            {
                              break;
                            }

                            v26 = v26 + *(v27 + v25++);
                            if (v25 == 16)
                            {
                              if (v26)
                              {
                                v28 = (a3 + 564);
                                while (1)
                                {
                                  v29 = *v28++;
                                  result = aj_ostream_write_bytes(a1, v29, 1);
                                  if (result)
                                  {
                                    break;
                                  }

                                  if (!--v26)
                                  {
                                    goto LABEL_32;
                                  }
                                }
                              }

                              else
                              {
LABEL_32:
                                *(a3 + 821) = 1;
                                result = aj_ostream_write_bytes(a1, 17, 1);
                                if (!result)
                                {
                                  v30 = 0;
                                  LODWORD(v31) = 0;
                                  v32 = a3 + 822;
                                  while (1)
                                  {
                                    result = aj_ostream_write_bytes(a1, *(v32 + v30), 1);
                                    if (result)
                                    {
                                      break;
                                    }

                                    v31 = v31 + *(v32 + v30++);
                                    if (v30 == 16)
                                    {
                                      if (v31)
                                      {
                                        v33 = (a3 + 838);
                                        while (1)
                                        {
                                          v34 = *v33++;
                                          result = aj_ostream_write_bytes(a1, v34, 1);
                                          if (result)
                                          {
                                            break;
                                          }

                                          if (!--v31)
                                          {
                                            goto LABEL_40;
                                          }
                                        }
                                      }

                                      else
                                      {
LABEL_40:
                                        result = 0;
                                        *(a3 + 1095) = 1;
                                      }

                                      return result;
                                    }
                                  }
                                }
                              }

                              return result;
                            }
                          }
                        }
                      }

                      else
                      {
                        return 0;
                      }
                    }

                    return result;
                  }
                }
              }
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_single_dht(uint64_t a1, uint8x16_t *a2, int a3, int a4)
{
  result = aj_ostream_write_bytes(a1, 65476, 2);
  if (!result)
  {
    v9 = vmovl_high_u8(*a2);
    v10 = vmovl_u8(*a2->i8);
    result = aj_ostream_write_bytes(a1, vaddvq_s32(vaddq_s32(vaddl_u16(*v10.i8, *v9.i8), vaddl_high_u16(v10, v9))) + 19, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, a4 + 16 * a3, 1);
      if (!result)
      {
        v11 = 0;
        LODWORD(v12) = 0;
        while (1)
        {
          result = aj_ostream_write_bytes(a1, a2->u8[v11], 1);
          if (result)
          {
            break;
          }

          v12 = v12 + a2->u8[v11++];
          if (v11 == 16)
          {
            if (v12)
            {
              v13 = a2 + 1;
              while (1)
              {
                v14 = v13->u8[0];
                v13 = (v13 + 1);
                result = aj_ostream_write_bytes(a1, v14, 1);
                if (result)
                {
                  break;
                }

                if (!--v12)
                {
                  goto LABEL_12;
                }
              }
            }

            else
            {
LABEL_12:
              result = 0;
              a2[17].i8[1] = 1;
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_dqt(uint64_t a1, int *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v11[1] = 0;
  v2 = *a2;
  if (*a2 < 1)
  {
LABEL_12:
    result = 0;
  }

  else
  {
    v5 = 0;
    v6 = a2 + 12;
    v7 = a2 + 22;
    while (*(v11 + v6[v5]))
    {
LABEL_11:
      if (++v5 >= v2)
      {
        goto LABEL_12;
      }
    }

    result = aj_ostream_write_bytes(a1, 65499, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, 67, 2);
      if (!result)
      {
        result = aj_ostream_write_bytes(a1, v6[v5], 1);
        if (!result)
        {
          v9 = 0;
          while (1)
          {
            result = aj_ostream_write_bytes(a1, LOBYTE(v7[64 * v6[v5] + aj_glob_zigzag[v9]]), 1);
            if (result)
            {
              break;
            }

            if (++v9 == 64)
            {
              *(v11 + v6[v5]) = 1;
              v2 = *a2;
              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_write_sos_baseline(uint64_t a1, int *a2)
{
  v4 = *a2;
  result = aj_ostream_write_bytes(a1, 65498, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 2 * v4 + 6, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, *a2, 1);
      if (!result)
      {
        if (*a2 < 1)
        {
LABEL_10:

          return aj_ostream_write_bytes(a1, 16128, 3);
        }

        else
        {
          v6 = 0;
          while (1)
          {
            v7 = &a2[v6];
            v8 = v7[839];
            v9 = v7[843];
            result = aj_ostream_write_bytes(a1, v7[16], 1);
            if (result)
            {
              break;
            }

            result = aj_ostream_write_bytes(a1, v9 + 16 * v8, 1);
            if (result)
            {
              break;
            }

            if (++v6 >= *a2)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_sos_progressive(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a3;
  result = aj_ostream_write_bytes(a1, 65498, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 2 * v6 + 6, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, *a3, 1);
      if (!result)
      {
        if (*a3 < 1)
        {
LABEL_10:
          result = aj_ostream_write_bytes(a1, a3[13], 1);
          if (!result)
          {
            result = aj_ostream_write_bytes(a1, a3[14], 1);
            if (!result)
            {
              v11 = a3[15] + 16 * a3[16];

              return aj_ostream_write_bytes(a1, v11, 1);
            }
          }
        }

        else
        {
          v8 = 0;
          v9 = a2 + 64;
          while (1)
          {
            v10 = &a3[v8];
            result = aj_ostream_write_bytes(a1, *(v9 + 4 * v10[1]), 1);
            if (result)
            {
              break;
            }

            result = aj_ostream_write_bytes(a1, v10[9] + 16 * v10[5], 1);
            if (result)
            {
              break;
            }

            if (++v8 >= *a3)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_exif (uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 3416);
  result = aj_ostream_write_bytes(a1, 65505, 2);
  if (!result)
  {
    v6 = v4 ? 34 : 22;
    result = aj_ostream_write_bytes(a1, v6, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, 1165519206, 4);
      if (!result)
      {
        result = aj_ostream_write_bytes(a1, 0, 2);
        if (!result)
        {
          result = aj_ostream_write_bytes(a1, 19789, 2);
          if (!result)
          {
            result = aj_ostream_write_bytes(a1, 42, 2);
            if (!result)
            {
              result = aj_ostream_write_bytes(a1, 8, 4);
              if (!result)
              {
                result = aj_ostream_write_bytes(a1, v4 != 0, 2);
                if (!result)
                {
                  v7 = *(a2 + 3416);
                  if (v7)
                  {
                    write_ifd_field(a1, v7);
                  }

                  return aj_ostream_write_bytes(a1, 0, 4);
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

uint64_t write_ifd_field(uint64_t a1, int a2)
{
  result = aj_ostream_write_bytes(a1, 274, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 3, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(a1, 1, 4);
      if (!result)
      {
        result = aj_ostream_write_bytes(a1, a2, 2);
        if (!result)
        {

          return aj_ostream_write_bytes(a1, 0, 2);
        }
      }
    }
  }

  return result;
}

uint64_t aj_write_jpeg_headers(int *a1, uint64_t a2, uint64_t a3, int *a4, int a5, int a6, uint64_t a7, char *__src, int a9)
{
  if (a6 || (result = aj_ostream_write_bytes(a2, 65496, 2), !result) && (result = aj_write_app0(a2), !result))
  {
    if (!a7 || (result = aj_ostream_write_buf(a2, __src, a7), !result))
    {
      result = aj_write_sof(a2, a1, a9);
      if (!result)
      {
        if (*a1 < 1)
        {
LABEL_12:
          result = aj_write_dqt(a2, a1);
          if (!result)
          {
            if (!a5 || (result = write_dri(a2, a5), !result))
            {
              if (a1[20] == 192)
              {

                return aj_write_sos_baseline(a2, a1);
              }

              else
              {

                return aj_write_sos_progressive(a2, a1, a4);
              }
            }
          }
        }

        else
        {
          v17 = 0;
          while (1)
          {
            v18 = &a1[v17];
            v19 = v18[839];
            v20 = (a3 + 548 * v19);
            v21 = v18[843];
            if (!v20[17].i8[1])
            {
              result = aj_write_single_dht(a2, v20, 0, v19);
              if (result)
              {
                break;
              }
            }

            v22 = a3 + 548 * v21;
            if (!*(v22 + 547))
            {
              result = aj_write_single_dht(a2, (v22 + 274), 1, v18[843]);
              if (result)
              {
                break;
              }
            }

            if (++v17 >= *a1)
            {
              goto LABEL_12;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t write_dri(uint64_t a1, int a2)
{
  result = aj_ostream_write_bytes(a1, 65501, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(a1, 4, 2);
    if (!result)
    {

      return aj_ostream_write_bytes(a1, a2, 2);
    }
  }

  return result;
}

uint64_t aj_huffman_decode_val_slow(uint64_t a1, unsigned int *a2, int a3, unsigned int a4, int *a5)
{
  if (a2[6] <= 6)
  {
    v10 = aj_istream_fill_buf(a2, -8);
    if (v10)
    {
      return v10;
    }
  }

  v12 = *a2;
  v13 = *a2 >> 1;
  v14 = a1 + 272;
  do
  {
    v15 = a4;
    v16 = *(v14 + 4 * a4++);
  }

  while (v13 >= v16);
  if (a4 != 1)
  {
    v13 -= *(v14 + 4 * (a4 - 2));
  }

  v17 = (v13 >> ~a4) + *(a1 + 4 * v15 + 336);
  if (v17 >= *(a1 + 4496))
  {
    aj_log_error("HuffDec", "Bad huffman code in bitstream");
    return 7;
  }

  v18 = *(a1 + v17 + 16);
  v19 = a2[6] - a4;
  a2[6] = v19;
  if (v19 <= -10)
  {
    goto LABEL_10;
  }

  v20 = v12 << a4;
  *a2 = v20;
  v21 = a3 + (v18 >> 4);
  if (v18 == 16)
  {
    if (*(a1 + 4498))
    {
      v21 = 0;
      v22 = 0x8000;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v23 = v18 & 0xF;
  if ((v18 & 0xF) == 0)
  {
LABEL_23:
    v22 = 0;
    if (!v18)
    {
      v21 = 63;
    }

    goto LABEL_25;
  }

  if (v19 < v23 - 9)
  {
    v10 = aj_istream_fill_buf(a2, v23 - 9);
    if (v10)
    {
      return v10;
    }

    v20 = *a2;
    v19 = a2[6];
  }

  *a2 = v20 << v23;
  v19 -= v23;
  a2[6] = v19;
  if (v19 > -10)
  {
    v22 = v20 >> -v23;
    if ((v20 & 0x80000000) == 0)
    {
      v22 += (-1 << v23) + 1;
    }

LABEL_25:
    if ((v19 & 0x80000000) == 0 || (v10 = aj_istream_fill_buf(a2, -9), !v10))
    {
      error_code_eod = 0;
      *a5 = v21 | (v22 << 16);
      return error_code_eod;
    }

    return v10;
  }

LABEL_10:
  error_code_eod = aj_istream_get_error_code_eod(a2);
  if (error_code_eod != -2)
  {
    aj_log_error("HuffDec", "Not enough data in bitstream");
  }

  return error_code_eod;
}

uint64_t aj_huffman_decode_skip_val_slow(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int *a5)
{
  v10 = *(a2 + 24);
  if (v10 > 6)
  {
    goto LABEL_6;
  }

  v11 = aj_istream_fill_buf(a2, -9);
  if (v11)
  {
    return v11;
  }

  v10 = *(a2 + 24);
  if (v10 > 6 || *(a2 + 16))
  {
LABEL_6:
    v13 = *a2;
    v14 = *a2 >> 1;
    v15 = (a4 << 32) - 0x200000000;
    v16 = a4 - 1;
    v17 = (a1 + 272 + 4 * a4);
    do
    {
      v18 = *v17++;
      v15 += 0x100000000;
      ++v16;
      ++a4;
    }

    while (v14 >= v18);
    if (v16)
    {
      v14 -= *(a1 + 272 + (v15 >> 30));
    }

    v19 = (v14 >> ~a4) + v17[15];
    if (v19 >= *(a1 + 4496))
    {
      aj_log_error("HuffDec", "Bad huffman code in bitstream");
      return 7;
    }

    v20 = *(a1 + v19 + 16);
    v21 = v10 - a4;
    *(a2 + 24) = v21;
    if (v21 <= -10)
    {
LABEL_12:
      error_code_eod = aj_istream_get_error_code_eod(a2);
      if (error_code_eod != -2)
      {
        aj_log_error("HuffDec", "Not enough data in bitstream");
      }

      return error_code_eod;
    }

    *a2 = v13 << a4;
    if (v20)
    {
      v23 = v20 & 0xF;
      if (v21 < v23 - 9)
      {
        v11 = aj_istream_fill_buf(a2, v23 - 9);
        if (v11)
        {
          return v11;
        }

        v21 = *(a2 + 24);
      }

      v24 = v21 - v23;
      *(a2 + 24) = v24;
      if (v24 <= -10)
      {
        goto LABEL_12;
      }

      *a2 <<= v23;
      *a3 += (v20 >> 4) + 1;
      if ((*(a2 + 24) & 0x80000000) != 0)
      {
        v11 = aj_istream_fill_buf(a2, -9);
        if (v11)
        {
          return v11;
        }
      }

      v25 = 0;
    }

    else
    {
      if (v21 < 0)
      {
        v11 = aj_istream_fill_buf(a2, -9);
        if (v11)
        {
          return v11;
        }
      }

      v25 = 1;
    }

    error_code_eod = 0;
    *a5 = v25;
    return error_code_eod;
  }

  error_code_eod = 7;
  if (*(a2 + 112))
  {
    if (*(a2 + 56) == 1)
    {
      return 4294967294;
    }

    else
    {
      return 7;
    }
  }

  return error_code_eod;
}

uint64_t aj_block_encode(uint64_t a1, __int16 *a2, int32x2_t *a3, _DWORD *a4)
{
  v7 = *a2;
  v8 = v7 - *a4;
  *a4 = v7;
  result = aj_huffman_encode_val_lkup(*(a1 + 672), 0, v8, a3);
  if (!result)
  {

    return aj_block_encode_ac(a1, a2, a3);
  }

  return result;
}

uint64_t aj_prog_encode_DC_first(int32x2_t *a1, __int16 *a2, int *a3, int a4)
{
  v4 = *a2 >> a1[7].i32[1];
  v5 = v4 - *a3;
  *a3 = v4;
  return aj_huffman_encode_val_lkup(*&a1[a4 + 33], 0, v5, a1 + 11);
}

uint64_t aj_prog_encode_DC_refine(int32x2_t *a1, __int16 *a2)
{
  v2 = (*a2 >> a1[7].i32[1]) & 1;
  if (a1[13].i32[1] >= 9 && (v3 = a1[11].i32[1], v3 < 32))
  {
    v5 = a1[11].i32[0] | (v2 << ~v3);
    a1[11].i32[0] = v5;
    a1[11].i32[1] = v3 + 1;
    if (v3 >= 7)
    {
      do
      {
        v6 = HIBYTE(v5);
        v7 = a1[12];
        a1[12] = (v7 + 1);
        *v7 = v6;
        a1[13] = vadd_s32(a1[13], 0xFFFFFFFF00000001);
        if (v6 == 255)
        {
          v8 = a1[12];
          a1[12] = (v8 + 1);
          *v8 = 0;
          a1[13] = vadd_s32(a1[13], 0xFFFFFFFF00000001);
        }

        v9 = a1[11].i32[1];
        v5 = a1[11].i32[0] << 8;
        a1[11].i32[0] = v5;
        a1[11].i32[1] = v9 - 8;
      }

      while (v9 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(&a1[11], v2, 1);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t aj_prog_encode_AC_first(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  if (v2 > *(a1 + 56))
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(a2 + 2 * v2);
    if (!*(a2 + 2 * v2))
    {
LABEL_15:
      ++v6;
      continue;
    }

    if ((v7 & 0x80000000) != 0)
    {
      v9 = -v7 >> *(a1 + 60);
      v8 = ~v9;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = v7 >> *(a1 + 60);
      v9 = v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    if (*(a1 + 80))
    {
      result = write_eobn(a1);
      if (result)
      {
        return result;
      }
    }

    v10 = 16 * v6;
    v11 = v6 + 16;
    while (1)
    {
      v11 -= 16;
      if (v11 < 16)
      {
        break;
      }

      v10 -= 256;
      result = aj_huffman_encode_sym_lkup(*(a1 + 264), 240, (a1 + 88));
      if (result)
      {
        return result;
      }
    }

    v12 = aj_highest_set_bit(v9);
    result = aj_huffman_encode_sym_lkup(*(a1 + 264), v12 + v10, (a1 + 88));
    if (result)
    {
      return result;
    }

    v13 = (0xFFFFFFFF >> -v12) & v8;
    if (*(a1 + 108) < 9 || (v14 = *(a1 + 92), v15 = v14 + v12, v14 + v12 >= 33))
    {
      result = aj_ostream_write(a1 + 88, v13, v12);
      if (result)
      {
        return result;
      }

LABEL_20:
      v6 = 0;
      continue;
    }

    v17 = *(a1 + 88) | (v13 << (32 - v12 - v14));
    *(a1 + 88) = v17;
    *(a1 + 92) = v15;
    if (v15 < 8)
    {
      goto LABEL_20;
    }

    do
    {
      v18 = HIBYTE(v17);
      v19 = *(a1 + 96);
      *(a1 + 96) = v19 + 1;
      *v19 = v18;
      *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
      if (v18 == 255)
      {
        v20 = *(a1 + 96);
        *(a1 + 96) = v20 + 1;
        *v20 = 0;
        *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
      }

      v6 = 0;
      v21 = *(a1 + 92);
      v17 = *(a1 + 88) << 8;
      *(a1 + 88) = v17;
      *(a1 + 92) = v21 - 8;
    }

    while (v21 > 15);
  }

  while (v2++ < *(a1 + 56));
  if (v6 < 1)
  {
    return 0;
  }

  v22 = *(a1 + 80) + 1;
  *(a1 + 80) = v22;
  if (v22 < 0x7FFF)
  {
    return 0;
  }

  result = write_eobn(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t write_eobn(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    return 0;
  }

  v3 = aj_highest_set_bit(*(a1 + 80));
  v4 = v3 - 1;
  *(a1 + 80) = 0;
  result = aj_huffman_encode_sym_lkup(*(a1 + 264), 16 * (v3 - 1), (a1 + 88));
  if (result)
  {
    return result;
  }

  if (v3 != 1)
  {
    v6 = (0xFFFFFFFF >> (33 - v3)) & v1;
    if (*(a1 + 108) >= 9 && (v7 = *(a1 + 92), v8 = v7 + v4, v7 + v4 < 33))
    {
      v9 = *(a1 + 88) | (v6 << (33 - v3 - v7));
      *(a1 + 88) = v9;
      *(a1 + 92) = v8;
      if (v8 >= 8)
      {
        do
        {
          v10 = HIBYTE(v9);
          v11 = *(a1 + 96);
          *(a1 + 96) = v11 + 1;
          *v11 = v10;
          *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
          if (v10 == 255)
          {
            v12 = *(a1 + 96);
            *(a1 + 96) = v12 + 1;
            *v12 = 0;
            *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
          }

          v13 = *(a1 + 92);
          v9 = *(a1 + 88) << 8;
          *(a1 + 88) = v9;
          *(a1 + 92) = v13 - 8;
        }

        while (v13 > 15);
      }
    }

    else
    {
      result = aj_ostream_write(a1 + 88, v6, v4);
      if (result)
      {
        return result;
      }
    }
  }

  v14 = *(a1 + 188);
  if (!v14)
  {
    return 0;
  }

  v15 = *(a1 + 176);
  while (1)
  {
    v16 = __OFSUB__(v14--, 1);
    if (v14 < 0 != v16)
    {
      break;
    }

    v17 = *v15++;
    result = aj_ostream_write(a1 + 88, v17, 1);
    if (result)
    {
      return result;
    }
  }

  result = 0;
  *(a1 + 188) = 0;
  return result;
}

uint64_t aj_prog_encode_AC_refine(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 52);
  v4 = *(a1 + 56);
  if (v3 <= v4)
  {
    v11 = 0;
    v12 = v3;
    v13 = *(a1 + 60);
    v14 = v4 + 1;
    v15 = (a2 + 2 * v3);
    v16 = &v37[v3];
    do
    {
      v18 = *v15++;
      v17 = v18;
      if (v18 < 0)
      {
        v17 = -v17;
      }

      v19 = v17 >> v13;
      *v16++ = v19;
      if (v19 == 1)
      {
        v11 = v3;
      }

      ++v3;
    }

    while (v14 != v3);
    v20 = 0;
    v5 = 0;
    v36 = v11;
    v21 = (*(a1 + 176) + *(a1 + 188));
    do
    {
      v22 = v37[v12];
      if (v22)
      {
        if (v20 < 16)
        {
          v23 = v5;
          v24 = v20;
        }

        else
        {
          v23 = v5;
          v24 = v20;
          if (v12 <= v36)
          {
            do
            {
              if (*(a1 + 80))
              {
                result = write_eobn(a1);
                if (result)
                {
                  goto LABEL_8;
                }
              }

              result = aj_huffman_encode_sym_lkup(*(a1 + 264), 240, (a1 + 88));
              if (result)
              {
                goto LABEL_8;
              }

              v24 = (v20 - 16);
              while (1)
              {
                v25 = __OFSUB__(v5--, 1);
                if (v5 < 0 != v25)
                {
                  break;
                }

                v26 = *v21++;
                result = aj_ostream_write(a1 + 88, v26, 1);
                if (result)
                {
                  goto LABEL_8;
                }
              }

              v5 = 0;
              v23 = 0;
              v21 = *(a1 + 176);
              v27 = v20 <= 31;
              LODWORD(v20) = v20 - 16;
            }

            while (!v27);
          }
        }

        if (v22 < 2)
        {
          if (!*(a1 + 80) || (result = write_eobn(a1), !result))
          {
            result = aj_huffman_encode_sym_lkup(*(a1 + 264), (16 * v24) | 1, (a1 + 88));
            if (!result)
            {
              v28 = (*(a2 + 2 * v12) >> 15) ^ 1;
              if (*(a1 + 108) >= 9)
              {
                v29 = *(a1 + 92);
                if (v29 < 32)
                {
                  v30 = *(a1 + 88) | (v28 << ~v29);
                  *(a1 + 88) = v30;
                  *(a1 + 92) = v29 + 1;
                  if (v29 >= 7)
                  {
                    do
                    {
                      v31 = HIBYTE(v30);
                      v32 = *(a1 + 96);
                      *(a1 + 96) = v32 + 1;
                      *v32 = v31;
                      *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
                      if (v31 == 255)
                      {
                        v33 = *(a1 + 96);
                        *(a1 + 96) = v33 + 1;
                        *v33 = 0;
                        *(a1 + 104) = vadd_s32(*(a1 + 104), 0xFFFFFFFF00000001);
                      }

                      v34 = *(a1 + 92);
                      v30 = *(a1 + 88) << 8;
                      *(a1 + 88) = v30;
                      *(a1 + 92) = v34 - 8;
                    }

                    while (v34 > 15);
                  }

                  goto LABEL_44;
                }
              }

              while (1)
              {
                result = aj_ostream_write(a1 + 88, v28, 1);
                if (result)
                {
                  break;
                }

LABEL_44:
                v25 = __OFSUB__(v23--, 1);
                if (v23 < 0 != v25)
                {
                  v5 = 0;
                  v20 = 0;
                  v21 = *(a1 + 176);
                  goto LABEL_47;
                }

                v35 = *v21++;
                v28 = v35;
              }
            }
          }

          goto LABEL_8;
        }

        v5 = v23 + 1;
        v21[v23] = v22 & 1;
        v20 = v24;
      }

      else
      {
        v20 = (v20 + 1);
      }

LABEL_47:
      ++v12;
    }

    while (v14 != v12);
    if (!v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
LABEL_3:
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 80) + 1;
  *(a1 + 80) = v6;
  v7 = *(a1 + 188) + v5;
  *(a1 + 188) = v7;
  if (v6 <= 0x7FFE && v7 < 961 || (result = write_eobn(a1), !result))
  {
LABEL_7:
    result = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_prog_encode_close(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return write_eobn(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t aj_ostream_write(uint64_t a1, unsigned int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = (a1 + 64);
  if (*(a1 + 64) && *(a1 + 20) <= 8 && (aj_ostream_write_cold_1(a1) & 1) == 0)
  {
    return 9;
  }

  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = v8 + v3;
  if (v8 + v3 >= 33)
  {
    v3 = v9 - 32;
    v17 = v7 | (a2 >> v9);
    *a1 = v17;
    a2 &= 0xFFFFFFFF >> -v9;
    v18 = HIBYTE(v17);
    v19 = *(a1 + 8);
    *(a1 + 8) = v19 + 1;
    *v19 = v18;
    v20 = *(a1 + 16);
    *(a1 + 16) = v20 + 1;
    if (v18 == 255)
    {
      *(a1 + 16) = v20 + 2;
      v21 = *(a1 + 8);
      *(a1 + 8) = v21 + 1;
      *v21 = 0;
    }

    v7 = *a1 << 8;
    v8 = 24;
  }

  v10 = v8 + v3;
  v11 = (a2 << -v10) | v7;
  *a1 = v11;
  *(a1 + 4) = v10;
  if (v10 >= 8)
  {
    do
    {
      v12 = HIBYTE(v11);
      v13 = *(a1 + 8);
      *(a1 + 8) = v13 + 1;
      *v13 = v12;
      ++*(a1 + 16);
      if (v12 == 255)
      {
        v14 = *(a1 + 8);
        *(a1 + 8) = v14 + 1;
        *v14 = 0;
        ++*(a1 + 16);
      }

      v15 = *(a1 + 4);
      v11 = *a1 << 8;
      *a1 = v11;
      *(a1 + 4) = v15 - 8;
    }

    while (v15 > 15);
  }

  result = 0;
  if (*v6)
  {
    *(a1 + 20) = *v6 + *(a1 + 24) - *(a1 + 8);
  }

  return result;
}

uint64_t aj_ostream_write_bytes(uint64_t a1, int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 4);
  if (!v6 || (result = aj_ostream_write(a1, 0xFFu >> v6, 8 - v6), !result))
  {
    v8 = (a1 + 64);
    if (!*(a1 + 64) || *(a1 + 20) > 8 || (v12 = aj_ostream_write_bytes_cold_1(a1), v8 = (a1 + 64), (v12 & 1) != 0))
    {
      v9 = a2 << (-8 * v3);
      do
      {
        v10 = *(a1 + 8);
        *(a1 + 8) = v10 + 1;
        *v10 = HIBYTE(v9);
        v9 <<= 8;
        ++*(a1 + 16);
        --v3;
      }

      while (v3);
      v11 = *v8;
      if (v11)
      {
        result = 0;
        *(a1 + 20) = v11 + *(a1 + 24) - *(a1 + 8);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t aj_ostream_write_buf(uint64_t a1, char *__src, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 4);
  if (v6)
  {
    result = aj_ostream_write(a1, 0xFFu >> v6, 8 - v6);
    if (result)
    {
      return result;
    }
  }

  v8 = *(a1 + 20);
  if (v8 <= v3)
  {
    v10 = *(a1 + 64);
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (v8 != v10)
    {
      LODWORD(result) = (*(a1 + 40))(*(a1 + 24), *(a1 + 8) - *(a1 + 24), *(a1 + 32));
      if (result)
      {
LABEL_14:
        aj_log_error(0, "Output callback returned error code %d.", result);
        return 9;
      }

      *(a1 + 8) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 64);
    }

    goto LABEL_12;
  }

  memcpy(*(a1 + 8), __src, v3);
  v9 = *(a1 + 8) + v3;
  *(a1 + 8) = v9;
  __src += v3;
  v10 = *(a1 + 64);
  v8 = v10 + *(a1 + 24) - v9;
  *(a1 + 16) += v3;
  *(a1 + 20) = v8;
  v3 = 0;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (!v3)
  {
    return 0;
  }

  result = (*(a1 + 40))(__src, v3, *(a1 + 32));
  if (result)
  {
    goto LABEL_14;
  }

  *(a1 + 16) += v3;
  return result;
}

uint64_t aj_ostream_flush_bitreg(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    return aj_ostream_write(a1, 0xFFu >> v1, 8 - v1);
  }

  else
  {
    return 0;
  }
}

uint64_t aj_ostream_flush_buffer(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  v2 = *(a1 + 4);
  if (!v2 || (result = aj_ostream_write(a1, 0xFFu >> v2, 8 - v2), !result))
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    if (v4 <= v5)
    {
      return 0;
    }

    else
    {
      result = (*(a1 + 40))(v5, (v4 - v5), *(a1 + 32));
      if (result)
      {
        aj_log_error(0, "Output callback returned error code %d.", result);
        return 9;
      }

      else
      {
        *(a1 + 8) = *(a1 + 24);
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  result = *(a1 + 24);
  v5 = *(a1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1()
{
  *(v2 + 8) = *(v2 + 24);
  *v0 = *v1;
  return 1;
}

uint64_t huffman_gen(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = 0;
      *(&v29[2] + 4) = 0xFFFFFFFF00000000;
      v3 = (a1 + 148 + 68 * v1);
      v4 = &v30;
      v29[0] = 0;
      v29[1] = 0;
      do
      {
        v5 = *v3;
        *(v4 + 6) = v2;
        *(v4 + 7) = v5;
        *(v4 + 2) = v5;
        *(v4 + 1) = 0;
        v6 = v29;
        while (1)
        {
          v7 = v6;
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (v5 <= *(v6 + 7))
          {
            *v4 = v6;
            *v7 = v4;
            goto LABEL_9;
          }
        }

        *v7 = v4;
        *v4 = 0;
LABEL_9:
        ++v2;
        v4 += 32;
        ++v3;
      }

      while (v2 != 17);
      v8 = 0;
      *(v29[0] + 20) = 1;
      do
      {
        v9 = v29[0];
        v10 = *v29[0];
        v11 = *(*v29[0] + 8);
        v29[0] = **v29[0];
        v12 = *(v10 + 28) + *(v9 + 28);
        *(v10 + 28) = v12;
        ++*(v10 + 20);
        for (i = v10; v11; v11 = *(v11 + 8))
        {
          i = v11;
          ++*(v11 + 20);
        }

        *(i + 8) = v9;
        *v9 = 0;
        do
        {
          ++*(v9 + 20);
          v9 = *(v9 + 8);
        }

        while (v9);
        v14 = v29;
        while (1)
        {
          v15 = v14;
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (v12 <= *(v14 + 7))
          {
            *v10 = v14;
            *v15 = v10;
            goto LABEL_20;
          }
        }

        *v15 = v10;
        *v10 = 0;
LABEL_20:
        ++v8;
      }

      while (v8 != 16);
      v16 = a1 + 48 + 16 * v1;
      for (j = v29[0]; j; j = *(j + 8))
      {
        if (*(j + 16))
        {
          v18 = *(j + 20);
          if (v18 <= 16)
          {
            ++*(v16 - 1 + v18);
          }
        }
      }

      v19 = 0;
      v20 = (a1 + 96 + 17 * v1);
      do
      {
        v21 = v29[0];
        v22 = v19 + 1;
        if (*(v16 + v19))
        {
          v23 = v29[0] == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v24 = 0;
          v25 = v29;
          do
          {
            if (v22 == *(v21 + 20))
            {
              *v20++ = *(v21 + 24);
              v26 = *(v21 + 8);
              v25[1] = v26;
              if (*(v16 + v19) == ++v24)
              {
                break;
              }
            }

            else
            {
              v26 = *(v21 + 8);
            }

            v25 = v21;
            v21 = v26;
          }

          while (v26);
        }

        ++v19;
      }

      while (v22 != 16);
      ++v1;
    }

    while (v1 < *(a1 + 20));
  }

  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t do_encode_lossless(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = a1 + 20152;
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 13376);
  size = *(a1 + 19784);
  v6 = *(a1 + 13460);
  v7 = *(a1 + 20152);
  v8 = *(a1 + 20156);
  v9 = a1 + 22328;
  v72 = 0;
  v73 = 0;
  bzero(&v63, 0x228uLL);
  v62 = v9;
  *&v66[8] = 4;
  v67 = v3;
  v10 = 1;
  if (v5 <= 15)
  {
    if (v5 <= 3)
    {
      if (!v5)
      {
        v63 = xmmword_240AB51D0;
        v65 = 0;
        if (v6 != 3)
        {
          goto LABEL_108;
        }

LABEL_26:
        v59 = v4;
        v11 = 0;
        v14 = 0;
        v13 = 8;
        goto LABEL_29;
      }

      if (v5 != 3)
      {
        goto LABEL_108;
      }

      v63 = xmmword_240AB51C0;
      v65 = 0;
      *&v66[4] = 0x7FFFFFFF;
LABEL_25:
      if (v6 != 4)
      {
        goto LABEL_108;
      }

      goto LABEL_26;
    }

    if (v5 == 4)
    {
      v63 = xmmword_240AB51C0;
      v64 = 2;
      *v66 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_25;
    }

    if (v5 != 5)
    {
      goto LABEL_108;
    }

    v63 = xmmword_240AB51F0;
    *&v66[8] = 7;
    if (v6 != 1)
    {
      goto LABEL_108;
    }

    v59 = v4;
    v11 = 0;
    v12 = 0;
    LODWORD(v10) = 0;
    v13 = 8;
LABEL_22:
    v14 = 1;
    if (!v7)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v5 > 17)
  {
    if (v5 == 18)
    {
      v63 = xmmword_240AB51E0;
      if (v6 != 2)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v5 != 20)
      {
        goto LABEL_108;
      }

      v63 = xmmword_240AB51B0;
      v65 = 0;
      if (v6 != 6)
      {
        goto LABEL_108;
      }
    }
  }

  else
  {
    if (v5 == 16)
    {
      v63 = xmmword_240AB51A0;
      v65 = 0;
      v11 = (v3 & 7) == 0;
      *&v66[4] = 0x77FFFFFFFLL;
      if (v6 != 8)
      {
        goto LABEL_108;
      }

      v59 = v4;
      v12 = 0;
      LODWORD(v10) = 0;
      v13 = 16;
      goto LABEL_22;
    }

    v63 = xmmword_240AB51A0;
    v64 = 2;
    *v66 = 0x7FFFFFFFFFFFFFFELL;
    if (v6 != 8)
    {
      goto LABEL_108;
    }
  }

  v59 = v4;
  v11 = 0;
  v14 = 0;
  v13 = 16;
LABEL_29:
  v12 = 1;
  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v7 > v13)
  {
    v10 = 1;
    goto LABEL_108;
  }

  DWORD1(v63) = v7;
LABEL_33:
  v15 = 0;
  if (v6 != 1 || v8 == 0)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  if (v11)
  {
    v18 = v12;
  }

  else
  {
    v18 = 1;
  }

  v58 = v17;
  if (v17 && v18)
  {
    v15 = malloc_type_calloc(2uLL, size, 0xDA903F87uLL);
    v72 = v15;
    if (!v15)
    {
      aj_log_error(0, "Could not allocate memory for LLJPEG buffer");
      v10 = 6;
      goto LABEL_108;
    }

    v73 = &v15[size];
  }

  v60 = v15;
  if ((v12 & 1) == 0)
  {
    v19 = v10;
    v20 = *(a1 + 22232);
    if (v11)
    {
      v21 = do_compress_lossless_neon(v20, &v62, v59, size, v58, 1);
    }

    else
    {
      v21 = do_compress_lossless(v20, &v62, &v72, v59, v3, size, v58, 0, 1);
    }

    v10 = v21;
    v15 = v60;
    if (v10)
    {
      goto LABEL_106;
    }

    huffman_gen(&v62);
    v15 = v60;
    LODWORD(v10) = v19;
  }

  if ((v14 & 1) == 0)
  {
    if (v63 == 2)
    {
      if (SDWORD1(v63) > 11)
      {
        if (DWORD1(v63) == 12)
        {
          v68[0] = g_huff16_n_12;
          v70 = 16;
          v69 = g_huff16_v_12;
LABEL_65:
          v23 = 0;
          v24 = 0;
          v25 = DWORD1(v63) + 2;
          do
          {
            v26 = v68[0].u8[v23];
            v24 += v26;
            if (v24 - v25 >= 1)
            {
              v68[0].i8[v23] = v26 - (v24 - v25);
              v24 = v25;
            }

            ++v23;
          }

          while (v23 != 16);
          goto LABEL_69;
        }

        v68[0] = g_huff16_n;
        v22 = &g_huff16_v;
      }

      else
      {
        v68[0].i64[0] = 0x101010101010101;
        v68[0].i64[1] = 0x101010101010101;
        v22 = &g_huff8_v;
      }

      v69 = *v22;
      v70 = *(v22 + 16);
      if (DWORD1(v63) && SDWORD1(v63) < 16)
      {
        if (SDWORD1(v63) < 9)
        {
          v10 = 1;
          goto LABEL_106;
        }

        goto LABEL_65;
      }
    }

    else
    {
      v68[0] = g_huff8_n;
      v70 = 16;
      v69 = g_huff8_v;
    }
  }

LABEL_69:
  v27 = HIDWORD(v63);
  if (SHIDWORD(v63) < 1)
  {
    goto LABEL_87;
  }

  v28 = 0;
  v29 = 1;
  v30 = v68;
  while (1)
  {
    v31 = v68[v28];
    v32 = vmovl_high_u8(v31);
    v33 = vmovl_u8(*v31.i8);
    v34 = vaddvq_s32(vaddq_s32(vaddl_u16(*v33.i8, *v32.i8), vaddl_high_u16(v33, v32)));
    if (v34)
    {
      break;
    }

LABEL_83:
    ++v28;
    ++v30;
    v29 = v28 < v27;
    if (v28 == v27)
    {
      goto LABEL_87;
    }
  }

  v35 = 0;
  LODWORD(v36) = 0;
  v37 = 0;
  v38 = 0;
  while (v35 < v36)
  {
LABEL_80:
    if (v37 >= ~(-1 << v38))
    {
      goto LABEL_85;
    }

    v43 = &v71[17 * v28 + *(&v69 + 17 * v28 + v35)];
    if (*v43)
    {
      goto LABEL_85;
    }

    *v43 = v38;
    v43[1] = v37;
    ++v35;
    ++v37;
    if (v35 == v34)
    {
      goto LABEL_83;
    }
  }

  v39 = v38 <= 17 ? 17 : v38;
  v40 = v30 + v38;
  v41 = v39 - v38;
  while (v41)
  {
    v42 = *v40++;
    v36 = v42 + v36;
    v37 *= 2;
    ++v38;
    --v41;
    if (v35 < v36)
    {
      goto LABEL_80;
    }
  }

LABEL_85:
  if (v29)
  {
    v10 = 1;
  }

  else
  {
LABEL_87:
    v44 = v10;
    v45 = aj_ostream_write_bytes(v9, 65496, 2);
    if (!v45)
    {
      v45 = aj_ostream_write_bytes(v9, 65504, 2);
      if (!v45)
      {
        v45 = aj_ostream_write_bytes(v9, 16, 2);
        if (!v45)
        {
          v45 = aj_ostream_write_bytes(v9, 19014, 2);
          if (!v45)
          {
            v45 = aj_ostream_write_bytes(v9, 18758, 2);
            if (!v45)
            {
              v45 = aj_ostream_write_bytes(v9, 0, 1);
              if (!v45)
              {
                v45 = aj_ostream_write_bytes(v9, 258, 2);
                if (!v45)
                {
                  v46 = v18;
                  v45 = aj_ostream_write_bytes(v9, 1, 1);
                  if (!v45)
                  {
                    v45 = aj_ostream_write_bytes(v9, 72, 2);
                    if (!v45)
                    {
                      v45 = aj_ostream_write_bytes(v9, 72, 2);
                      if (!v45)
                      {
                        v45 = aj_ostream_write_bytes(v9, 0, 2);
                        if (!v45)
                        {
                          v45 = aj_ostream_write_bytes(v9, 65475, 2);
                          if (!v45)
                          {
                            v45 = aj_ostream_write_bytes(v9, 3 * HIDWORD(v63) + 8, 2);
                            if (!v45)
                            {
                              v45 = aj_ostream_write_bytes(v9, SDWORD1(v63), 1);
                              if (!v45)
                              {
                                v45 = aj_ostream_write_bytes(v9, v59, 2);
                                if (!v45)
                                {
                                  v45 = aj_ostream_write_bytes(v9, v3, 2);
                                  if (!v45)
                                  {
                                    v45 = aj_ostream_write_bytes(v9, SHIDWORD(v63), 1);
                                    if (!v45)
                                    {
                                      if (SHIDWORD(v63) < 1)
                                      {
LABEL_115:
                                        v50 = encodeWriteHuffTable(&v62, 0);
                                        if (SHIDWORD(v63) < 2)
                                        {
                                          v51 = 1;
                                        }

                                        else
                                        {
                                          v51 = v12;
                                        }

                                        if ((v51 & 1) == 0)
                                        {
                                          v52 = 1;
                                          do
                                          {
                                            v50 = encodeWriteHuffTable(&v62, v52++);
                                          }

                                          while (v52 < SHIDWORD(v63));
                                        }

                                        v10 = v50;
                                        v15 = v60;
                                        if (v10)
                                        {
                                          goto LABEL_106;
                                        }

                                        v45 = aj_ostream_write_bytes(v9, 65498, 2);
                                        if (!v45)
                                        {
                                          v45 = aj_ostream_write_bytes(v9, 2 * HIDWORD(v63) + 6, 2);
                                          if (!v45)
                                          {
                                            v45 = aj_ostream_write_bytes(v9, SHIDWORD(v63), 1);
                                            if (!v45)
                                            {
                                              if (SHIDWORD(v63) < 1)
                                              {
LABEL_133:
                                                v45 = aj_ostream_write_bytes(v9, *&v66[8], 1);
                                                if (!v45)
                                                {
                                                  v45 = aj_ostream_write_bytes(v9, 0, 1);
                                                  if (!v45)
                                                  {
                                                    v45 = aj_ostream_write_bytes(v9, 0, 1);
                                                    if (!v45)
                                                    {
                                                      v56 = *(a1 + 22232);
                                                      if (v46)
                                                      {
                                                        v57 = do_compress_lossless(v56, &v62, &v72, v59, v3, size, v58, v44, 0);
                                                      }

                                                      else
                                                      {
                                                        v57 = do_compress_lossless_neon(v56, &v62, v59, size, v58, 0);
                                                      }

                                                      v10 = v57;
                                                      v15 = v60;
                                                      if (v10)
                                                      {
                                                        goto LABEL_106;
                                                      }

                                                      v45 = aj_ostream_write_bytes(v9, 65497, 2);
                                                      if (!v45)
                                                      {
                                                        v10 = aj_ostream_flush_buffer(v9);
                                                        if (!v10)
                                                        {
                                                          *(v2 + 2264) = *(v2 + 2192);
                                                        }

                                                        goto LABEL_105;
                                                      }
                                                    }
                                                  }
                                                }
                                              }

                                              else
                                              {
                                                v53 = 0;
                                                v54 = 0;
                                                while (1)
                                                {
                                                  v45 = aj_ostream_write_bytes(v9, v54, 1);
                                                  if (v45)
                                                  {
                                                    break;
                                                  }

                                                  v55 = v12 ? 0 : v53;
                                                  v45 = aj_ostream_write_bytes(v9, v55, 1);
                                                  if (v45)
                                                  {
                                                    break;
                                                  }

                                                  ++v54;
                                                  v53 += 16;
                                                  if (v54 >= SHIDWORD(v63))
                                                  {
                                                    goto LABEL_133;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      else
                                      {
                                        v49 = 0;
                                        while (1)
                                        {
                                          v45 = aj_ostream_write_bytes(v9, v49, 1);
                                          if (v45)
                                          {
                                            break;
                                          }

                                          v45 = aj_ostream_write_bytes(v9, 17, 1);
                                          if (v45)
                                          {
                                            break;
                                          }

                                          v45 = aj_ostream_write_bytes(v9, 0, 1);
                                          if (v45)
                                          {
                                            break;
                                          }

                                          if (++v49 >= SHIDWORD(v63))
                                          {
                                            goto LABEL_115;
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
                }
              }
            }
          }
        }
      }
    }

    v10 = v45;
  }

LABEL_105:
  v15 = v60;
LABEL_106:
  if (v15)
  {
    free(v15);
  }

LABEL_108:
  v47 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t do_compress_lossless_neon(uint16x8_t *a1, _DWORD *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = -a5;
    v11 = a2 + 37;
    v12 = a2 + 54;
    v13 = a2 + 71;
    v14 = a2 + 88;
    v15 = a2 + 105;
    v16 = vdupq_n_s16(v10);
    v17 = a2 + 122;
    v18.i64[0] = 0x10001000100010;
    v18.i64[1] = 0x10001000100010;
    v19.i64[0] = 0x1000100010001;
    v19.i64[1] = 0x1000100010001;
    v20.i64[0] = -1;
    v20.i64[1] = -1;
    v21 = &unk_240AB5000;
    v22 = &unk_240AB5000;
    v209 = a4;
    v208 = a3;
    v215 = a2 + 105;
    v214 = v16;
    v212 = a2 + 88;
    v213 = a2 + 122;
    while (1)
    {
      if (v9)
      {
        v23 = v9 + 5;
        v24 = vshlq_u16(*v9, v16);
        v25 = vshlq_u16(v9[1], v16);
        v26 = vshlq_u16(v9[2], v16);
        v27 = vshlq_u16(v9[3], v16);
        v28 = vshlq_u16(v9[4], v16);
        v6.i64[0] = v24.i64[0];
      }

      else
      {
        v23 = 0;
        *v6.i8 = vdup_n_s16(1 << (a2[3] - 1));
        v27 = 0uLL;
        v26 = 0uLL;
        v25 = 0uLL;
        v24 = 0uLL;
        v28 = 0uLL;
      }

      v29 = *a2;
      v30 = **a2;
      v31 = *(*a2 + 4);
      v32 = *(*a2 + 8);
      v34 = *(*a2 + 16);
      v33 = *(*a2 + 20);
      if (a2[11] >= 8)
      {
        break;
      }

LABEL_309:
      *v29 = v30;
      *(v29 + 4) = v31;
      *(v29 + 8) = v32;
      v9 = a1;
      a1 = (a1 + a4);
      ++v8;
      *(v29 + 16) = v34;
      *(v29 + 20) = v33;
      if (v8 == a3)
      {
        return 0;
      }
    }

    v210 = v8;
    v35 = 0;
    v36 = a2[10];
    v37 = v30 << 32;
    v38 = *a1;
    v39 = a1[1];
    v40 = a1[2];
    v41 = a1[3];
    v211 = a1;
    v42 = a1 + 4;
    v43 = vshlq_u16(v38, v16);
    v44 = vshlq_u16(v39, v16);
    v45 = vshlq_u16(v40, v16);
    v46 = vshlq_u16(v41, v16);
    v217 = v9;
    v216 = v36;
    while (1)
    {
      if (v9)
      {
        if (v36 == 3)
        {
          v6.i64[1] = v24.i64[0];
          v47 = vextq_s8(v24, v25, 8uLL);
          v48 = vextq_s8(v25, v26, 8uLL);
          v49 = vextq_s8(v26, v27, 8uLL);
          v50 = v6;
          v51 = vextq_s8(v27, v27, 8uLL).u64[0];
          goto LABEL_24;
        }

        if (v36 == 2)
        {
          v50 = v24;
          v47 = v25;
          v48 = v26;
          v49 = v27;
          goto LABEL_25;
        }

        if (v36 != 1)
        {
          v52 = vextq_s8(v24, v25, 8uLL);
          v53 = vextq_s8(v25, v26, 8uLL);
          v54 = vextq_s8(v26, v27, 8uLL);
          v55 = vextq_s8(v27, v28, 8uLL);
          switch(v36)
          {
            case 6u:
              v56 = vaddq_s16(vhsubq_u16(v43, v24), v52);
              v57 = vaddq_s16(vhsubq_u16(v44, v25), v53);
              v58 = vaddq_s16(vhsubq_u16(v45, v26), v54);
              v60 = vaddq_s16(vhsubq_u16(v46, v27), v55);
              break;
            case 5u:
              v59 = vhsubq_u16(v55, v27);
              v56 = vaddq_s16(vhsubq_u16(v52, v24), v43);
              v57 = vaddq_s16(vhsubq_u16(v53, v25), v44);
              v58 = vaddq_s16(vhsubq_u16(v54, v26), v45);
LABEL_20:
              v60 = vaddq_s16(v59, v46);
              break;
            case 4u:
              v56 = vaddq_s16(vsubq_s16(v52, v24), v43);
              v57 = vaddq_s16(vsubq_s16(v53, v25), v44);
              v58 = vaddq_s16(vsubq_s16(v54, v26), v45);
              v59 = vsubq_s16(v55, v27);
              goto LABEL_20;
            default:
              v56 = vhaddq_u16(v43, v52);
              v57 = vhaddq_u16(v44, v53);
              v58 = vhaddq_u16(v45, v54);
              v60 = vhaddq_u16(v46, v55);
              break;
          }

          v6.i64[1] = v56.i64[0];
          v47 = vextq_s8(v56, v57, 8uLL);
          v48 = vextq_s8(v57, v58, 8uLL);
          v49 = vextq_s8(v58, v60, 8uLL);
          v50 = v6;
          v51 = vextq_s8(v60, v60, 8uLL).u64[0];
          goto LABEL_24;
        }
      }

      v6.i64[1] = v43.i64[0];
      v47 = vextq_s8(v43, v44, 8uLL);
      v48 = vextq_s8(v44, v45, 8uLL);
      v49 = vextq_s8(v45, v46, 8uLL);
      v50 = v6;
      v51 = vextq_s8(v46, v46, 8uLL).u64[0];
LABEL_24:
      v6.i64[0] = v51;
LABEL_25:
      v61 = vsubq_s16(v43, v50);
      v62 = vsubq_s16(v44, v47);
      v63 = vsubq_s16(v45, v48);
      v64 = vsubq_s16(v46, v49);
      v65 = vsubq_s16(v18, vclzq_s16(vabsq_s16(v61)));
      v66 = vsubq_s16(v18, vclzq_s16(vabsq_s16(v62)));
      v67 = vsubq_s16(v18, vclzq_s16(vabsq_s16(v63)));
      v68 = vsubq_s16(v18, vclzq_s16(vabsq_s16(v64)));
      if (a6)
      {
        ++v11[v65.u16[0]];
        ++v12[v65.u16[1]];
        ++v13[v65.u16[2]];
        ++v11[v65.u16[4]];
        ++v12[v65.u16[5]];
        ++v13[v65.u16[6]];
        ++v11[v66.u16[0]];
        ++v12[v66.u16[1]];
        ++v13[v66.u16[2]];
        ++v11[v66.u16[4]];
        ++v12[v66.u16[5]];
        ++v13[v66.u16[6]];
        ++v11[v67.u16[0]];
        ++v12[v67.u16[1]];
        ++v13[v67.u16[2]];
        ++v11[v67.u16[4]];
        ++v12[v67.u16[5]];
        ++v13[v67.u16[6]];
        ++v11[v68.u16[0]];
        ++v12[v68.u16[1]];
        ++v13[v68.u16[2]];
        ++v11[v68.u16[4]];
        ++v12[v68.u16[5]];
        ++v13[v68.u16[6]];
      }

      else
      {
        if (v33 <= 95)
        {
          v218 = v65;
          v219 = v62;
          v220 = v66;
          v221 = v63;
          v222 = v67;
          v223 = v64;
          v224 = v68;
          v225 = v46;
          v226 = v45;
          v227 = v44;
          v228 = v43;
          v229 = v42;
          v230 = v35;
          v231 = v24;
          v232 = v6;
          v233 = v27;
          v234 = v26;
          v235 = v25;
          v236 = v28;
          v69 = v13;
          v70 = a6;
          v33 = *(v29 + 64);
          v71 = (*(v29 + 40))(*(v29 + 24), v32 - *(v29 + 24), *(v29 + 32));
          if (v71)
          {
            aj_log_error(0, "Output callback returned error code %d.", v71);
            return 9;
          }

          v32 = *(v29 + 24);
          a6 = v70;
          v13 = v69;
          v14 = v212;
          v17 = v213;
          v15 = v215;
          v16 = v214;
          v18.i64[0] = 0x10001000100010;
          v18.i64[1] = 0x10001000100010;
          v19.i64[0] = 0x1000100010001;
          v19.i64[1] = 0x1000100010001;
          v20.i64[0] = -1;
          v20.i64[1] = -1;
          v21 = &unk_240AB5000;
          v22 = &unk_240AB5000;
          v9 = v217;
          v25 = v235;
          v28 = v236;
          v27 = v233;
          v26 = v234;
          v24 = v231;
          v6 = v232;
          v35 = v230;
          LOBYTE(v36) = v216;
          v42 = v229;
          v44 = v227;
          v43 = v228;
          v46 = v225;
          v45 = v226;
          v64 = v223;
          v68 = v224;
          v63 = v221;
          v67 = v222;
          v62 = v219;
          v66 = v220;
          v65 = v218;
        }

        v72 = vandq_s8(vaddq_s16(vshlq_u16(v19, v65), v20), vsraq_n_s16(v61, v61, 0xFuLL));
        v73 = &v14[v65.u16[0]];
        v74 = v31 + *v73;
        v75 = (v73[1] << -(v31 + *v73)) | v37;
        LODWORD(v73) = (v65.i16[0] - 1);
        v76 = v73 > 0xE;
        if (v73 <= 0xE)
        {
          v77 = v74 + v65.u16[0];
        }

        else
        {
          v77 = v74;
        }

        if (v76)
        {
          v78 = v75;
        }

        else
        {
          v78 = v75 | (v72.u16[0] << -(v74 + v65.i8[0]));
        }

        v79 = __PAIR64__(v33, v34);
        if (v77 < 8)
        {
          v80 = v77;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v78);
            if (HIBYTE(v78) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v78 <<= 8;
            v80 = v77 - 8;
            v76 = v77 <= 15;
            v77 -= 8;
          }

          while (!v76);
        }

        v81 = &v15[v65.u16[1]];
        v82 = v80 + *v81;
        v83 = (v81[1] << -v82) | v78;
        v84 = v82 + v65.u16[1];
        if ((v65.i16[1] - 1) <= 0xEu)
        {
          v83 |= v72.u16[1] << -(v82 + v65.i8[2]);
        }

        else
        {
          v84 = v82;
        }

        if (v84 < 8)
        {
          v85 = v84;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v83);
            if (HIBYTE(v83) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v83 <<= 8;
            v85 = v84 - 8;
            v76 = v84 <= 15;
            v84 -= 8;
          }

          while (!v76);
        }

        v86 = &v17[v65.u16[2]];
        v87 = v85 + *v86;
        v88 = (v86[1] << -v87) | v83;
        v89 = v87 + v65.u16[2];
        if ((v65.i16[2] - 1) <= 0xEu)
        {
          v88 |= v72.u16[2] << -(v87 + v65.i8[4]);
        }

        else
        {
          v89 = v87;
        }

        if (v89 < 8)
        {
          v90 = v89;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v88);
            if (HIBYTE(v88) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v88 <<= 8;
            v90 = v89 - 8;
            v76 = v89 <= 15;
            v89 -= 8;
          }

          while (!v76);
        }

        v91 = &v14[v65.u16[4]];
        v92 = v90 + *v91;
        v93 = (v91[1] << -v92) | v88;
        v94 = v92 + v65.u16[4];
        if ((v65.i16[4] - 1) <= 0xEu)
        {
          v93 |= v72.u16[4] << -(v92 + v65.i8[8]);
        }

        else
        {
          v94 = v92;
        }

        if (v94 < 8)
        {
          v95 = v94;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v93);
            if (HIBYTE(v93) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v93 <<= 8;
            v95 = v94 - 8;
            v76 = v94 <= 15;
            v94 -= 8;
          }

          while (!v76);
        }

        v96 = &v15[v65.u16[5]];
        v97 = v95 + *v96;
        v98 = (v96[1] << -v97) | v93;
        v99 = v97 + v65.u16[5];
        if ((v65.i16[5] - 1) <= 0xEu)
        {
          v98 |= v72.u16[5] << -(v97 + v65.i8[10]);
        }

        else
        {
          v99 = v97;
        }

        if (v99 < 8)
        {
          v100 = v99;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v98);
            if (HIBYTE(v98) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v98 <<= 8;
            v100 = v99 - 8;
            v76 = v99 <= 15;
            v99 -= 8;
          }

          while (!v76);
        }

        v101 = &v17[v65.u16[6]];
        v102 = v100 + *v101;
        v103 = (v101[1] << -v102) | v98;
        v104 = v102 + v65.u16[6];
        if ((v65.i16[6] - 1) <= 0xEu)
        {
          v103 |= v72.u16[6] << -(v102 + v65.i8[12]);
        }

        else
        {
          v104 = v102;
        }

        if (v104 < 8)
        {
          v105 = v104;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v103);
            if (HIBYTE(v103) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v103 <<= 8;
            v105 = v104 - 8;
            v76 = v104 <= 15;
            v104 -= 8;
          }

          while (!v76);
        }

        v106 = vandq_s8(vaddq_s16(vshlq_u16(v19, v66), v20), vsraq_n_s16(v62, v62, 0xFuLL));
        v107 = &v14[v66.u16[0]];
        v108 = v105 + *v107;
        v109 = (v107[1] << -v108) | v103;
        v110 = v108 + v66.u16[0];
        if ((v66.i16[0] - 1) <= 0xEu)
        {
          v109 |= v106.u16[0] << -(v108 + v66.i8[0]);
        }

        else
        {
          v110 = v108;
        }

        if (v110 < 8)
        {
          v111 = v110;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v109);
            if (HIBYTE(v109) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v109 <<= 8;
            v111 = v110 - 8;
            v76 = v110 <= 15;
            v110 -= 8;
          }

          while (!v76);
        }

        v112 = &v15[v66.u16[1]];
        v113 = v111 + *v112;
        v114 = (v112[1] << -v113) | v109;
        v115 = v113 + v66.u16[1];
        if ((v66.i16[1] - 1) <= 0xEu)
        {
          v114 |= v106.u16[1] << -(v113 + v66.i8[2]);
        }

        else
        {
          v115 = v113;
        }

        if (v115 < 8)
        {
          v116 = v115;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v114);
            if (HIBYTE(v114) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v114 <<= 8;
            v116 = v115 - 8;
            v76 = v115 <= 15;
            v115 -= 8;
          }

          while (!v76);
        }

        v117 = &v17[v66.u16[2]];
        v118 = v116 + *v117;
        v119 = (v117[1] << -v118) | v114;
        v120 = v118 + v66.u16[2];
        if ((v66.i16[2] - 1) <= 0xEu)
        {
          v119 |= v106.u16[2] << -(v118 + v66.i8[4]);
        }

        else
        {
          v120 = v118;
        }

        if (v120 < 8)
        {
          v121 = v120;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v119);
            if (HIBYTE(v119) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v119 <<= 8;
            v121 = v120 - 8;
            v76 = v120 <= 15;
            v120 -= 8;
          }

          while (!v76);
        }

        v122 = &v14[v66.u16[4]];
        v123 = v121 + *v122;
        v124 = (v122[1] << -v123) | v119;
        v125 = v123 + v66.u16[4];
        if ((v66.i16[4] - 1) <= 0xEu)
        {
          v124 |= v106.u16[4] << -(v123 + v66.i8[8]);
        }

        else
        {
          v125 = v123;
        }

        if (v125 < 8)
        {
          v126 = v125;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v124);
            if (HIBYTE(v124) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v79 = vadd_s32(v79, v22[66]);
            }

            else
            {
              v79 = vadd_s32(v79, v21[50]);
              ++v32;
            }

            v124 <<= 8;
            v126 = v125 - 8;
            v76 = v125 <= 15;
            v125 -= 8;
          }

          while (!v76);
        }

        v127 = &v15[v66.u16[5]];
        v128 = v126 + *v127;
        v129 = (v127[1] << -v128) | v124;
        v130 = v128 + v66.u16[5];
        if ((v66.i16[5] - 1) <= 0xEu)
        {
          v129 |= v106.u16[5] << -(v128 + v66.i8[10]);
        }

        else
        {
          v130 = v128;
        }

        v34 = v79.i32[0];
        v33 = v79.i32[1];
        if (v130 < 8)
        {
          v131 = v130;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v129);
            if (HIBYTE(v129) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v129 <<= 8;
            v131 = v130 - 8;
            v76 = v130 <= 15;
            v130 -= 8;
          }

          while (!v76);
        }

        v132 = &v17[v66.u16[6]];
        v133 = v131 + *v132;
        v134 = (v132[1] << -v133) | v129;
        v135 = v133 + v66.u16[6];
        if ((v66.i16[6] - 1) <= 0xEu)
        {
          v134 |= v106.u16[6] << -(v133 + v66.i8[12]);
        }

        else
        {
          v135 = v133;
        }

        if (v135 < 8)
        {
          v136 = v135;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v134);
            if (HIBYTE(v134) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v134 <<= 8;
            v136 = v135 - 8;
            v76 = v135 <= 15;
            v135 -= 8;
          }

          while (!v76);
        }

        v137 = vandq_s8(vaddq_s16(vshlq_u16(v19, v67), v20), vsraq_n_s16(v63, v63, 0xFuLL));
        v138 = &v14[v67.u16[0]];
        v139 = v136 + *v138;
        v140 = (v138[1] << -v139) | v134;
        v141 = v139 + v67.u16[0];
        if ((v67.i16[0] - 1) <= 0xEu)
        {
          v140 |= v137.u16[0] << -(v139 + v67.i8[0]);
        }

        else
        {
          v141 = v139;
        }

        if (v141 < 8)
        {
          v142 = v141;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v140);
            if (HIBYTE(v140) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v140 <<= 8;
            v142 = v141 - 8;
            v76 = v141 <= 15;
            v141 -= 8;
          }

          while (!v76);
        }

        v143 = &v15[v67.u16[1]];
        v144 = v142 + *v143;
        v145 = (v143[1] << -v144) | v140;
        v146 = v144 + v67.u16[1];
        if ((v67.i16[1] - 1) <= 0xEu)
        {
          v145 |= v137.u16[1] << -(v144 + v67.i8[2]);
        }

        else
        {
          v146 = v144;
        }

        if (v146 < 8)
        {
          v147 = v146;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v145);
            if (HIBYTE(v145) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v145 <<= 8;
            v147 = v146 - 8;
            v76 = v146 <= 15;
            v146 -= 8;
          }

          while (!v76);
        }

        v148 = &v17[v67.u16[2]];
        v149 = v147 + *v148;
        v150 = (v148[1] << -v149) | v145;
        v151 = v149 + v67.u16[2];
        if ((v67.i16[2] - 1) <= 0xEu)
        {
          v150 |= v137.u16[2] << -(v149 + v67.i8[4]);
        }

        else
        {
          v151 = v149;
        }

        if (v151 < 8)
        {
          v152 = v151;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v150);
            if (HIBYTE(v150) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v150 <<= 8;
            v152 = v151 - 8;
            v76 = v151 <= 15;
            v151 -= 8;
          }

          while (!v76);
        }

        v153 = &v14[v67.u16[4]];
        v154 = v152 + *v153;
        v155 = (v153[1] << -v154) | v150;
        v156 = v154 + v67.u16[4];
        if ((v67.i16[4] - 1) <= 0xEu)
        {
          v155 |= v137.u16[4] << -(v154 + v67.i8[8]);
        }

        else
        {
          v156 = v154;
        }

        if (v156 < 8)
        {
          v157 = v156;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v155);
            if (HIBYTE(v155) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v155 <<= 8;
            v157 = v156 - 8;
            v76 = v156 <= 15;
            v156 -= 8;
          }

          while (!v76);
        }

        v158 = &v15[v67.u16[5]];
        v159 = v157 + *v158;
        v160 = (v158[1] << -v159) | v155;
        v161 = v159 + v67.u16[5];
        if ((v67.i16[5] - 1) <= 0xEu)
        {
          v160 |= v137.u16[5] << -(v159 + v67.i8[10]);
        }

        else
        {
          v161 = v159;
        }

        if (v161 < 8)
        {
          v162 = v161;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v160);
            if (HIBYTE(v160) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v160 <<= 8;
            v162 = v161 - 8;
            v76 = v161 <= 15;
            v161 -= 8;
          }

          while (!v76);
        }

        v163 = &v17[v67.u16[6]];
        v164 = v162 + *v163;
        v165 = (v163[1] << -v164) | v160;
        v166 = v164 + v67.u16[6];
        if ((v67.i16[6] - 1) <= 0xEu)
        {
          v165 |= v137.u16[6] << -(v164 + v67.i8[12]);
        }

        else
        {
          v166 = v164;
        }

        if (v166 < 8)
        {
          v167 = v166;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v165);
            if (HIBYTE(v165) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v165 <<= 8;
            v167 = v166 - 8;
            v76 = v166 <= 15;
            v166 -= 8;
          }

          while (!v76);
        }

        v168 = vandq_s8(vaddq_s16(vshlq_u16(v19, v68), v20), vsraq_n_s16(v64, v64, 0xFuLL));
        v169 = &v14[v68.u16[0]];
        v170 = v167 + *v169;
        v171 = (v169[1] << -v170) | v165;
        v172 = v170 + v68.u16[0];
        if ((v68.i16[0] - 1) <= 0xEu)
        {
          v171 |= v168.u16[0] << -(v170 + v68.i8[0]);
        }

        else
        {
          v172 = v170;
        }

        if (v172 < 8)
        {
          v173 = v172;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v171);
            if (HIBYTE(v171) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v171 <<= 8;
            v173 = v172 - 8;
            v76 = v172 <= 15;
            v172 -= 8;
          }

          while (!v76);
        }

        v174 = &v15[v68.u16[1]];
        v175 = v173 + *v174;
        v176 = (v174[1] << -v175) | v171;
        v177 = v175 + v68.u16[1];
        if ((v68.i16[1] - 1) <= 0xEu)
        {
          v176 |= v168.u16[1] << -(v175 + v68.i8[2]);
        }

        else
        {
          v177 = v175;
        }

        if (v177 < 8)
        {
          v178 = v177;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v176);
            if (HIBYTE(v176) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v176 <<= 8;
            v178 = v177 - 8;
            v76 = v177 <= 15;
            v177 -= 8;
          }

          while (!v76);
        }

        v179 = &v17[v68.u16[2]];
        v180 = v178 + *v179;
        v181 = (v179[1] << -v180) | v176;
        v182 = v180 + v68.u16[2];
        if ((v68.i16[2] - 1) <= 0xEu)
        {
          v181 |= v168.u16[2] << -(v180 + v68.i8[4]);
        }

        else
        {
          v182 = v180;
        }

        if (v182 < 8)
        {
          v183 = v182;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v181);
            if (HIBYTE(v181) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v181 <<= 8;
            v183 = v182 - 8;
            v76 = v182 <= 15;
            v182 -= 8;
          }

          while (!v76);
        }

        v184 = &v14[v68.u16[4]];
        v185 = v183 + *v184;
        v186 = (v184[1] << -v185) | v181;
        v187 = v185 + v68.u16[4];
        if ((v68.i16[4] - 1) <= 0xEu)
        {
          v186 |= v168.u16[4] << -(v185 + v68.i8[8]);
        }

        else
        {
          v187 = v185;
        }

        if (v187 < 8)
        {
          v188 = v187;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v186);
            if (HIBYTE(v186) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v186 <<= 8;
            v188 = v187 - 8;
            v76 = v187 <= 15;
            v187 -= 8;
          }

          while (!v76);
        }

        v189 = &v15[v68.u16[5]];
        v190 = v188 + *v189;
        v191 = (v189[1] << -v190) | v186;
        v192 = v190 + v68.u16[5];
        if ((v68.i16[5] - 1) <= 0xEu)
        {
          v191 |= v168.u16[5] << -(v190 + v68.i8[10]);
        }

        else
        {
          v192 = v190;
        }

        if (v192 < 8)
        {
          v193 = v192;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v191);
            if (HIBYTE(v191) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v191 <<= 8;
            v193 = v192 - 8;
            v76 = v192 <= 15;
            v192 -= 8;
          }

          while (!v76);
        }

        v194 = &v17[v68.u16[6]];
        v195 = v193 + *v194;
        v196 = (v194[1] << -v195) | v191;
        v197 = (v68.i16[6] - 1);
        v198 = v197 > 0xE;
        if (v197 <= 0xE)
        {
          v199 = v195 + v68.u16[6];
        }

        else
        {
          v199 = v195;
        }

        if (v198)
        {
          v37 = v196;
        }

        else
        {
          v37 = v196 | (v168.u16[6] << -(v195 + v68.i8[12]));
        }

        if (v199 < 8)
        {
          v31 = v199;
        }

        else
        {
          do
          {
            *v32 = HIBYTE(v37);
            if (HIBYTE(v37) == 255)
            {
              v32[1] = 0;
              v32 += 2;
              v34 += 2;
              v33 -= 2;
            }

            else
            {
              ++v34;
              --v33;
              ++v32;
            }

            v37 <<= 8;
            v31 = v199 - 8;
            v76 = v199 <= 15;
            v199 -= 8;
          }

          while (!v76);
        }
      }

      v200 = a2[11] / 8;
      if (v35 < v200 - 1)
      {
        if (v9)
        {
          if (v35 >= v200 - 2)
          {
            v202 = v23 + 3;
            v201 = v28;
          }

          else
          {
            v201 = v23[3];
            v202 = v23 + 4;
          }

          v25 = vshlq_u16(*v23, v16);
          v26 = vshlq_u16(v23[1], v16);
          v27 = vshlq_u16(v23[2], v16);
          v24 = v28;
          v28 = vshlq_u16(v201, v16);
          v23 = v202;
        }

        v203 = *v42;
        v204 = v42[1];
        v205 = v42[2];
        v206 = v42[3];
        v42 += 4;
        v43 = vshlq_u16(v203, v16);
        v44 = vshlq_u16(v204, v16);
        v45 = vshlq_u16(v205, v16);
        v46 = vshlq_u16(v206, v16);
      }

      if (++v35 >= v200)
      {
        v30 = HIDWORD(v37);
        a4 = v209;
        a3 = v208;
        a1 = v211;
        v8 = v210;
        goto LABEL_309;
      }
    }
  }

  return 0;
}

uint64_t do_compress_lossless(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8, char a9)
{
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = a2 + 24;
    v79 = a2 + 148;
    v13 = a1;
    v73 = a4;
    v74 = a7;
    while (1)
    {
      v76 = v10;
      v77 = a1;
      if (*(a2 + 8) != 2)
      {
        break;
      }

      if (a7)
      {
        v13 = *(a3 + 8 * (v10 & 1));
        if (*(a2 + 16) * a5 >= 1)
        {
          v14 = 0;
          v15 = 2 * (*(a2 + 16) * a5);
          do
          {
            *(v13 + v14) = *(a1 + v14) >> a7;
            v14 += 2;
          }

          while (v15 != v14);
        }
      }

      if (!*(a2 + 40))
      {
        return 3;
      }

      if (v11)
      {
        v16 = *(a2 + 40);
      }

      else
      {
        v16 = 1;
      }

      v17 = *(a2 + 44);
      v18 = *(a2 + 16);
      if (v18 < 1)
      {
        LODWORD(v19) = 0;
        LOWORD(v20) = 0;
      }

      else
      {
        v69 = *(a2 + 44);
        v19 = 0;
        LOWORD(v20) = 0;
        do
        {
          v21 = *(a2 + 4 * v19 + 24);
          if (v21 != 0x7FFFFFFF)
          {
            v22 = v19 + v21;
            v23 = v19 + v21;
            if (v11)
            {
              LOWORD(v20) = *(v11 + 2 * v22);
            }

            else
            {
              v24 = (*(a2 + 12) - 1);
              v20 = 1 << (*(a2 + 12) - 1);
            }

            v25 = *(v13 + 2 * v23);
            v26 = (v25 - v20);
            if (a9)
            {
              if (v26 >= 0)
              {
                v27 = (v25 - v20);
              }

              else
              {
                v27 = -v26;
              }

              v28 = 32 - __clz(v27);
              if (v25 == v20)
              {
                v29 = 0;
              }

              else
              {
                v29 = v28;
              }

              ++*(v79 + 68 * v23 + 4 * v29);
            }

            else
            {
              result = encode_symbol(a2, v26, v22, a8);
              if (result)
              {
                return result;
              }
            }
          }

          ++v19;
        }

        while (v19 < *(a2 + 16));
        v17 = v69;
      }

      v45 = v18 * v17;
      if (v19 < v45)
      {
        while (1)
        {
          v46 = *(a2 + 16);
          v47 = *(v12 + 4 * (v19 % v46));
          if (v47 != 0x7FFFFFFF)
          {
            break;
          }

LABEL_77:
          LODWORD(v19) = v19 + 1;
          if (v45 == v19)
          {
            goto LABEL_107;
          }
        }

        v48 = v19 + v47;
        v49 = v48 - v46;
        if (v16 <= 3)
        {
          switch(v16)
          {
            case 1:
              LOWORD(v20) = *(v13 + 2 * v49);
              break;
            case 2:
              LOWORD(v20) = *(v11 + 2 * v48);
              break;
            case 3:
              LOWORD(v20) = *(v11 + 2 * v49);
              break;
          }
        }

        else
        {
          if (v16 <= 5)
          {
            if (v16 == 4)
            {
              LOWORD(v20) = *(v11 + 2 * v48) + *(v13 + 2 * v49) - *(v11 + 2 * v49);
              goto LABEL_69;
            }

            v50 = *(v13 + 2 * v49);
            v51 = *(v11 + 2 * v48);
            goto LABEL_67;
          }

          if (v16 == 6)
          {
            v50 = *(v11 + 2 * v48);
            v51 = *(v13 + 2 * v49);
LABEL_67:
            v20 = v50 + ((v51 - *(v11 + 2 * v49)) >> 1);
            goto LABEL_69;
          }

          if (v16 == 7)
          {
            v20 = (*(v11 + 2 * v48) + *(v13 + 2 * v49)) >> 1;
          }
        }

LABEL_69:
        v52 = *(v13 + 2 * v48);
        v53 = (v52 - v20);
        v54 = v48 % v46;
        if (a9)
        {
          if (v53 >= 0)
          {
            v55 = (v52 - v20);
          }

          else
          {
            v55 = -v53;
          }

          v56 = 32 - __clz(v55);
          if (v52 == v20)
          {
            v56 = 0;
          }

          ++*(v79 + 68 * v54 + 4 * v56);
        }

        else
        {
          result = encode_symbol(a2, v53, v54, a8);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_77;
      }

LABEL_107:
      v11 = v13;
      v13 += a6;
      v10 = v76 + 1;
      a1 = v77 + a6;
      a7 = v74;
      if (v76 + 1 == v73)
      {
        return 0;
      }
    }

    if (!*(a2 + 40))
    {
      return 3;
    }

    if (v11)
    {
      v31 = *(a2 + 40);
    }

    else
    {
      v31 = 1;
    }

    v32 = *(a2 + 44);
    v33 = *(a2 + 16);
    if (v33 < 1)
    {
      LODWORD(v34) = 0;
      LOWORD(v35) = 0;
    }

    else
    {
      v70 = *(a2 + 44);
      v34 = 0;
      LOWORD(v35) = 0;
      do
      {
        v36 = *(a2 + 4 * v34 + 24);
        if (v36 != 0x7FFFFFFF)
        {
          v37 = v34 + v36;
          v38 = v34 + v36;
          if (v11)
          {
            LOWORD(v35) = *(v11 + v37);
          }

          else
          {
            v39 = (*(a2 + 12) - 1);
            v35 = 1 << (*(a2 + 12) - 1);
          }

          v40 = *(v13 + v38);
          v41 = (v40 - v35);
          if (a9)
          {
            if (v41 >= 0)
            {
              v42 = (v40 - v35);
            }

            else
            {
              v42 = -v41;
            }

            v43 = 32 - __clz(v42);
            if (v40 == v35)
            {
              v44 = 0;
            }

            else
            {
              v44 = v43;
            }

            ++*(v79 + 68 * v38 + 4 * v44);
          }

          else
          {
            result = encode_symbol(a2, v41, v37, a8);
            if (result)
            {
              return result;
            }
          }
        }

        ++v34;
      }

      while (v34 < *(a2 + 16));
      v32 = v70;
    }

    v57 = v33 * v32;
    if (v34 >= v57)
    {
      goto LABEL_107;
    }

    while (1)
    {
      v58 = *(a2 + 16);
      v59 = *(v12 + 4 * (v34 % v58));
      if (v59 != 0x7FFFFFFF)
      {
        break;
      }

LABEL_106:
      LODWORD(v34) = v34 + 1;
      if (v57 == v34)
      {
        goto LABEL_107;
      }
    }

    v60 = v34 + v59;
    v61 = v60 - v58;
    if (v31 <= 3)
    {
      switch(v31)
      {
        case 1:
          LOWORD(v35) = *(v13 + v61);
          break;
        case 2:
          LOWORD(v35) = *(v11 + v60);
          break;
        case 3:
          LOWORD(v35) = *(v11 + v61);
          break;
      }
    }

    else
    {
      if (v31 <= 5)
      {
        if (v31 == 4)
        {
          LOWORD(v35) = *(v11 + v60) + *(v13 + v61) - *(v11 + v61);
          goto LABEL_98;
        }

        v62 = *(v13 + v61);
        v63 = *(v11 + v60);
        goto LABEL_96;
      }

      if (v31 == 6)
      {
        v62 = *(v11 + v60);
        v63 = *(v13 + v61);
LABEL_96:
        v35 = v62 + ((v63 - *(v11 + v61)) >> 1);
        goto LABEL_98;
      }

      if (v31 == 7)
      {
        v35 = (*(v11 + v60) + *(v13 + v61)) >> 1;
      }
    }

LABEL_98:
    v64 = *(v13 + v60);
    v65 = (v64 - v35);
    v66 = v60 % v58;
    if (a9)
    {
      if (v65 >= 0)
      {
        v67 = (v64 - v35);
      }

      else
      {
        v67 = -v65;
      }

      v68 = 32 - __clz(v67);
      if (v64 == v35)
      {
        v68 = 0;
      }

      ++*(v79 + 68 * v66 + 4 * v68);
    }

    else
    {
      result = encode_symbol(a2, v65, v66, a8);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_106;
  }

  return 0;
}

uint64_t encodeWriteHuffTable(uint64_t *a1, int a2)
{
  v2 = *&a1[2 * a2 + 6];
  v3 = vmovl_high_u8(v2);
  v4 = vmovl_u8(*v2.i8);
  v4.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v4.i8, *v3.i8), vaddl_high_u16(v4, v3)));
  v5 = v4.u32[0];
  if (v4.i32[0] > 0x11u)
  {
    return 1;
  }

  v9 = *a1;
  result = aj_ostream_write_bytes(*a1, 65476, 2);
  if (!result)
  {
    result = aj_ostream_write_bytes(v9, v5 + 19, 2);
    if (!result)
    {
      result = aj_ostream_write_bytes(v9, a2, 1);
      if (!result)
      {
        v10 = 0;
        while (1)
        {
          result = aj_ostream_write_bytes(v9, *(&a1[2 * a2 + 6] + v10), 1);
          if (result)
          {
            break;
          }

          if (++v10 == 16)
          {
            if (!v5)
            {
              return 0;
            }

            v11 = a1 + 17 * a2 + 96;
            do
            {
              v12 = *v11++;
              result = aj_ostream_write_bytes(v9, v12, 1);
              if (result)
              {
                break;
              }

              --v5;
            }

            while (v5);
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t encode_symbol(uint64_t *a1, int a2, int a3, int a4)
{
  v5 = *a1;
  v6 = a3;
  if (a2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = -a2;
  }

  v8 = __clz(v7);
  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 32;
  }

  v10 = 32 - v9;
  if (a4)
  {
    v6 = 0;
  }

  v11 = a1 + 68 * v6 + 4 * v10;
  v12 = *(v11 + 352);
  v13 = *(v11 + 354);
  if (v5[2].i32[1] >= 9 && (v14 = v5->i32[1] + v12, v14 < 33))
  {
    v16 = v5->i32[0] | (v13 << -v14);
    v5->i32[0] = v16;
    v5->i32[1] = v14;
    if (v14 >= 8)
    {
      do
      {
        v17 = HIBYTE(v16);
        v18 = v5[1];
        v5[1] = (v18 + 1);
        *v18 = v17;
        v5[2] = vadd_s32(v5[2], 0xFFFFFFFF00000001);
        if (v17 == 255)
        {
          v19 = v5[1];
          v5[1] = (v19 + 1);
          *v19 = 0;
          v5[2] = vadd_s32(v5[2], 0xFFFFFFFF00000001);
        }

        v20 = v5->i32[1];
        v16 = v5->i32[0] << 8;
        v5->i32[0] = v16;
        v5->i32[1] = v20 - 8;
      }

      while (v20 > 15);
    }
  }

  else
  {
    result = aj_ostream_write(*a1, v13, v12);
    if (result)
    {
      return result;
    }
  }

  if (a2 && v9 >= 0x11)
  {
    v21 = (a2 + (a2 >> 15)) & ~(-1 << v10);
    if (v5[2].i32[1] >= 9 && (v22 = v5->i32[1], v23 = v22 + v10, (v22 + v10) < 33))
    {
      v24 = v5->i32[0] | (v21 << (v8 - v22));
      v5->i32[0] = v24;
      v5->i32[1] = v23;
      if (v23 >= 8)
      {
        do
        {
          v25 = HIBYTE(v24);
          v26 = v5[1];
          v5[1] = (v26 + 1);
          *v26 = v25;
          v5[2] = vadd_s32(v5[2], 0xFFFFFFFF00000001);
          if (v25 == 255)
          {
            v27 = v5[1];
            v5[1] = (v27 + 1);
            *v27 = 0;
            v5[2] = vadd_s32(v5[2], 0xFFFFFFFF00000001);
          }

          v28 = v5->i32[1];
          v24 = v5->i32[0] << 8;
          v5->i32[0] = v24;
          v5->i32[1] = v28 - 8;
        }

        while (v28 > 15);
      }
    }

    else
    {
      result = aj_ostream_write(v5, v21, v10);
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t aj_block_decode(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v19);
  if (v10)
  {
    v13 = v10;
    LOWORD(v14) = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    v18 = 0;
    v19 = SHIWORD(v19);
    v15 = *a3 + v19;
    v14 = (v15 * *(a1 + 48) + 2048) >> 12;
    *a3 = v15;
    v13 = aj_huffman_decode_ac_s1(a1, a2, &v20, &v18, v11, v12);
  }

  LOWORD(v20) = v14;
  (*(a1 + 520))(&v20, a4, a5);
  if (*(a1 + 1040))
  {
    aj_mosquito_spray(a1, &v20, a4, a5);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t aj_mosquito_spray(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = *MEMORY[0x277D85DE8];
  if (*(result + 520) == aj_idct_s1)
  {
    v6 = vorrq_s8(*(a2 + 88), *(a2 + 104));
    if (*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *(a2 + 72) | *(a2 + 120) | (*(a2 + 24) >> 16) | *(a2 + 12) | *(a2 + 54) | *(a2 + 68) | (*(a2 + 80) >> 16))
    {
      v9 = *(*a3 + a4);
      v10 = *(a3[1] + a4);
      *&v78 = v9;
      *(&v78 + 1) = v10;
      v11 = *(a3[2] + a4);
      v12 = *(a3[3] + a4);
      *&v79 = v11;
      *(&v79 + 1) = v12;
      v13 = *(a3[4] + a4);
      v14 = *(a3[5] + a4);
      *&v80 = v13;
      *(&v80 + 1) = v14;
      v15 = *(a3[6] + a4);
      v16 = *(a3[7] + a4);
      *&v81 = v15;
      *(&v81 + 1) = v16;
      v17 = vmin_u8(vmin_u8(vmin_u8(v9, v10), vmin_u8(v11, v12)), vmin_u8(vmin_u8(v13, v14), vmin_u8(v15, v16)));
      v18 = vpmin_u8(v17, v17);
      v19 = vpmin_u8(v18, v18);
      v20 = vpmin_u8(v19, v19).u8[0];
      v21 = vmax_u8(vmax_u8(vmax_u8(v9, v10), vmax_u8(v11, v12)), vmax_u8(vmax_u8(v13, v14), vmax_u8(v15, v16)));
      v22 = vpmax_u8(v21, v21);
      v23 = vpmax_u8(v22, v22);
      v24 = vpmax_u8(v23, v23).u8[0];
      if (v24 - v20 >= 32)
      {
        v25 = vdup_n_s8((v24 + v20) >> 1);
        v26 = vcgt_u8(v9, v25);
        v27 = vcgt_u8(v10, v25);
        v28 = vcgt_u8(v11, v25);
        v29 = vcgt_u8(v12, v25);
        v30 = vcgt_u8(v13, v25);
        v31 = vcgt_u8(v14, v25);
        v32 = vcgt_u8(v15, v25);
        v33 = vcgt_u8(v16, v25);
        v34 = vadd_s8(vadd_s8(vadd_s8(veor_s8(v28, v27), veor_s8(v26, v27)), vadd_s8(veor_s8(v28, v29), veor_s8(v30, v29))), vadd_s8(vadd_s8(veor_s8(v30, v31), veor_s8(v32, v31)), veor_s8(v32, v33)));
        v35 = vpadd_s8(v34, v34);
        v36 = vpadd_s8(v35, v35);
        if (vpadd_s8(v36, v36).i8[0] >= -12)
        {
          v37 = result;
          v38 = 0;
          v84 = vsub_s8(vbic_s8(0x202020202020202, v26), v26);
          v85 = vsub_s8(vbic_s8(0x202020202020202, v27), v27);
          v86 = vsub_s8(vbic_s8(0x202020202020202, v28), v28);
          v87 = vsub_s8(vbic_s8(0x202020202020202, v29), v29);
          v88 = vsub_s8(vbic_s8(0x202020202020202, v30), v30);
          v89 = vsub_s8(vbic_s8(0x202020202020202, v31), v31);
          v90 = vsub_s8(vbic_s8(0x202020202020202, v32), v32);
          v91 = vsub_s8(vbic_s8(0x202020202020202, v33), v33);
          v92 = v78;
          v93 = v79;
          v66 = v84.i8[1];
          v71 = v84.i8[7];
          v72 = v84.i8[6];
          v70 = v85.i8[7];
          v39 = v84;
          v40 = v85;
          v41 = &v78 + 8;
          v42 = 1;
          v43 = 9;
          v94 = v80;
          v95 = v81;
          v69 = v91.i8[0];
          v68 = v91.i8[1];
          v67 = v90.i8[0];
          v44 = v84.i8[0];
          v75 = v91.i8[7];
          v74 = v91.i8[6];
          v64 = v85.i8[0];
          v65 = v84.i8[0];
          v73 = v90.i8[7];
          do
          {
            v45 = v39;
            v39 = v40;
            v46 = v42 + 1;
            v47 = 8 * (v42 + 1);
            v40 = *(&v84 + v47);
            v48 = *&v45 | (*&v39 >> 8) | (*&v39 << 8) | *&v39 | *&v40;
            if ((v45.i8[0] | v39.i8[1] | v39.i8[0] | v40.i8[0]) != 3)
            {
              *(&v92 + 8 * v42) = (*(&v78 + 8 * v42 - 8) + *(&v78 + 8 * v42) + *(&v78 + v47) + *(&v78 + 8 * v42 + 1) + 2) >> 2;
              ++v38;
            }

            v49 = v41;
            v50 = v43;
            v51 = 6;
            do
            {
              v52 = v48;
              if ((v48 & 0xFF00) != 0x300)
              {
                *(&v92 + v50) = (13108 * (*(v49 - 7) + *v49 + v49[1] + v49[2] + v49[9]) + 26216) >> 16;
                ++v38;
              }

              v48 >>= 8;
              ++v50;
              ++v49;
              --v51;
            }

            while (v51);
            if ((*&v52 & 0xFF0000) != 0x30000)
            {
              *(&v92 + ((8 * v42) | 7)) = (*(&v77 + 8 * v42 + 7) + *(&v78 + ((8 * v42) | 7)) + *(&v78 + v47 + 7) + *(&v78 + 8 * v42 + 6) + 2) >> 2;
              ++v38;
            }

            v53 = v84.i8[v42];
            if ((v44 | v84.i8[v46] | v84.i8[v42 | 8] | v53) != 3)
            {
              *(&v92 + v42) = (*(&v77 + v42 + 7) + *(&v78 + v42) + *(&v78 + v46) + *(&v78 + (v42 | 8)) + 2) >> 2;
              ++v38;
            }

            v54 = v42 | 0x38;
            v55 = v42 + 55;
            v56 = v84.u8[v42 | 0x38] | *(&v84 + v42 + 55);
            v57 = v42 + 57;
            v58 = *(&v84 + v42 + 57);
            v59 = v42 | 0x30;
            result = v58 | v84.u8[v59];
            if ((v56 | result) != 3)
            {
              result = *(&v78 + v57);
              *(&v92 + v54) = (*(&v78 + v55) + *(&v78 + v54) + result + *(&v78 + v59) + 2) >> 2;
              ++v38;
            }

            v43 += 8;
            v41 += 8;
            v44 = v53;
            v42 = v46;
          }

          while (v46 != 7);
          if ((v66 | v64 | v65) != 3)
          {
            LOBYTE(v92) = (21846 * (v9.u8[0] + v9.u8[1] + v10.u8[0]) + 21846) >> 16;
            ++v38;
          }

          if ((v71 | v72 | v70) != 3)
          {
            BYTE7(v92) = (21846 * (v9.u8[6] + v9.u8[7] + v10.u8[7]) + 21846) >> 16;
            ++v38;
          }

          if ((v68 | v69 | v67) != 3)
          {
            BYTE8(v95) = (21846 * (v16.u8[0] + v16.u8[1] + v15.u8[0]) + 21846) >> 16;
            ++v38;
          }

          if ((v74 | v75 | v73) != 3)
          {
            HIBYTE(v95) = (21846 * (v16.u8[7] + v16.u8[6] + v15.u8[7]) + 21846) >> 16;
            ++v38;
          }

          if (v38 >= 33)
          {
            v76[0] = &v92;
            v76[1] = &v92 + 1;
            v76[2] = &v93;
            v76[3] = &v93 + 1;
            v76[4] = &v94;
            v76[5] = &v94 + 1;
            v76[6] = &v95;
            v77 = &v95 + 8;
            aj_block_dct(v76, &v82, (v37 + 1300));
            v60 = 0;
            v61 = *(v37 + 704);
            do
            {
              v83[0].i16[*(v61 + 4 * v60)] = (*(v37 + 1044 + 4 * *(v61 + 4 * v60)) * v82.i16[v60] + 2048) >> 12;
              ++v60;
            }

            while (v60 != 64);
            v62 = 0;
            v63 = -8;
            do
            {
              v83[v62 / 0x10] = vaddq_s16(vmaxq_s16(vminq_s16(vsubq_s16(v83[v62 / 0x10], *(a2 + v62)), *(v37 + 1440 + v62)), vnegq_s16(*(v37 + 1440 + v62))), *(a2 + v62));
              v63 += 8;
              v62 += 16;
            }

            while (v63 < 0x38);
            v83[0].i16[0] = *a2;
            result = aj_idct_s1(v83, a3, a4);
          }
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_block_decode_S2(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v10 = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v20 + 1);
  if (v10)
  {
    v13 = v10;
    LOWORD(v14) = 0;
    memset(v28, 0, sizeof(v28));
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
  }

  else
  {
    v15 = HIDWORD(v20);
    LODWORD(v20) = WORD2(v20);
    SHIDWORD(v20) >>= 16;
    v16 = *a3 + (v15 >> 16);
    v14 = v16 * *(a1 + 48);
    *a3 = v16;
    v17 = aj_huffman_decode_ac_s2(a1, a2, &v21, &v20, v11, v12);
    if (!v17)
    {
      v17 = aj_huffman_decode_skip_block(*(a1 + 40), a2, v20);
    }

    v13 = v17;
  }

  v21 = v14;
  (*(a1 + 520))(&v21, a4, a5);
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t aj_block_decode_S4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v10 = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v20 + 1);
  if (v10)
  {
    v13 = v10;
    LOWORD(v14) = 0;
    memset(v28, 0, sizeof(v28));
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
  }

  else
  {
    v15 = HIDWORD(v20);
    LODWORD(v20) = WORD2(v20);
    SHIDWORD(v20) >>= 16;
    v16 = *a3 + (v15 >> 16);
    v14 = v16 * *(a1 + 48);
    *a3 = v16;
    v17 = aj_huffman_decode_ac_s4(a1, a2, &v21, &v20, v11, v12);
    if (!v17)
    {
      v17 = aj_huffman_decode_skip_block(*(a1 + 40), a2, v20);
    }

    v13 = v17;
  }

  v21 = v14;
  (*(a1 + 520))(&v21, a4, a5);
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t aj_block_decode_S8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v14 = 0;
  v10 = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v15);
  if (!v10)
  {
    v15 = SHIWORD(v15);
    v11 = *a3 + v15;
    v12 = (v11 * *(a1 + 48));
    v14 = (*a3 + v15) * *(a1 + 48);
    *a3 = v11;
    v10 = aj_huffman_decode_skip_block(*(a1 + 40), a2, 1);
  }

  (*(a1 + 520))(&v14, a4, a5);
  return v10;
}

_DWORD *aj_block_dequantize_12bit(_DWORD *result, __int16 *a2, _DWORD *a3)
{
  v3 = result[178];
  switch(v3)
  {
    case 1:
      for (i = 0; i != 64; ++i)
      {
        a3[i] = (result[i + 180] * a2[i] + 2048) >> 12;
      }

      break;
    case 2:
      v8 = a3 + 2;
      v9 = result + 183;
      v10 = a2 + 2;
      v11 = -8;
      do
      {
        *(v8 - 2) = *(v9 - 3) * *(v10 - 2);
        *(v8 - 1) = *(v9 - 2) * *(v10 - 1);
        *v8 = *(v9 - 1) * *v10;
        v12 = *v9;
        v9 += 8;
        v11 += 8;
        v8[1] = v12 * v10[1];
        v8 += 8;
        v10 += 8;
      }

      while (v11 < 0x11);
      break;
    case 4:
      v4 = 0;
      v5 = result + 180;
      v6 = 1;
      do
      {
        a3[v4] = v5[v4] * a2[v4];
        v7 = v6;
        a3[v4 | 1] = v5[v4 | 1] * a2[v4 | 1];
        v4 = 8;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      break;
    default:
      *a3 = result[180] * *a2;
      break;
  }

  return result;
}

uint64_t aj_block_decode_12bit(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v10 = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v20);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    goto LABEL_14;
  }

  v14 = *a3 + HIWORD(v20);
  *a3 = v14;
  v19 = 0;
  v15 = *(a1 + 712);
  switch(v15)
  {
    case 4:
      v16 = aj_huffman_decode_ac_s4(a1, a2, &v22, &v19, v11, v12);
      goto LABEL_9;
    case 2:
      v16 = aj_huffman_decode_ac_s2(a1, a2, &v22, &v19, v11, v12);
      goto LABEL_9;
    case 1:
      v16 = aj_huffman_decode_ac_s1(a1, a2, &v22, &v19, v11, v12);
LABEL_9:
      v13 = v16;
      if (v16)
      {
        goto LABEL_14;
      }

      v15 = *(a1 + 712);
      break;
  }

  if (v15 < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = aj_huffman_decode_skip_block(*(a1 + 40), a2, v19);
  }

LABEL_14:
  v22 = v14;
  aj_block_dequantize_12bit(a1, &v22, v21);
  (*(a1 + 520))(v21, a4, a5);
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t aj_block_decode_skip(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  result = aj_huffman_decode_val(*(a1 + 32), a2, 0, &v7);
  if (!result)
  {
    v7 = SHIWORD(v7);
    *a3 += v7;
    return aj_huffman_decode_skip_block(*(a1 + 40), a2, 1);
  }

  return result;
}

uint64_t aj_prog_decode_DC_first(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = a3 + 24;
  v5 = *a3;
  v40 = 0;
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = a3 + 1;
    v9 = a2 + 8;
    v10 = a3 + 54;
    v11 = a3 + 5;
    v39 = a1 + 6468;
    v34 = a3 + 1;
    v35 = a1;
    v32 = a3 + 5;
    v33 = a3 + 54;
    do
    {
      v12 = v8[v7];
      v37 = *&v10[4 * v11[v12]];
      if (v5 == 1)
      {
        v13 = 1;
LABEL_6:
        v36 = v7;
        v14 = 0;
        v15 = *&v10[4 * v11[v12]];
        v16 = v37 + 272;
        while (1)
        {
          v17 = *&v39[4 * v12];
          v18 = a3[30];
          if (v18 <= -2)
          {
            v19 = aj_istream_fill_buf(v6, -9);
            if (v19)
            {
              v30 = v19;
LABEL_34:
              aj_log_error(0, "Unable to read more data");
              return v30;
            }

            v18 = a3[30];
            if (v18 <= -9)
            {
              v30 = 7;
              goto LABEL_34;
            }
          }

          v20 = *v6;
          v21 = *(v16 + ((v20 >> 23) & 0x1FE));
          if (*(v16 + ((v20 >> 23) & 0x1FE)))
          {
            v22 = v18 + 9;
            if (v18 >= 0)
            {
              v22 = 8;
            }

            if (v22 < v21 >> 8)
            {
              return 7;
            }

            a3[24] = v20 << SBYTE1(v21);
            a3[30] = v18 - (v21 >> 8);
            v40 = v21;
          }

          else
          {
            v23 = prog_huff_decode_loop(v37, v6, &v40);
            if (v23)
            {
              return v23;
            }

            LOBYTE(v21) = v40;
          }

          if (v21)
          {
            v24 = a3[30];
            v25 = v21;
            v26 = v21 - 9;
            if (v24 < v26)
            {
              if (aj_istream_fill_buf(v6, -9))
              {
                return 9;
              }

              v24 = a3[30];
              if (v24 < v26)
              {
                return 9;
              }
            }

            v27 = a3[24];
            a3[24] = v27 << v25;
            a3[30] = v24 - v25;
            if (v27 >= 0)
            {
              v28 = (-1 << v25) + 1;
            }

            else
            {
              v28 = 0;
            }

            v29 = ((v28 + (v27 >> -v25)) << a3[15]) + *(v9 + 4 * v12);
          }

          else
          {
            v29 = *(v9 + 4 * v12);
          }

          *(a4 + ((v14 + v17) << 7)) = v29;
          *(v9 + 4 * v12) = v29;
          if (v13 == ++v14)
          {
            v5 = *a3;
            a1 = v35;
            v7 = v36;
            v10 = v33;
            v8 = v34;
            v11 = v32;
            goto LABEL_28;
          }
        }
      }

      v13 = *(*a1 + 4 * v12 + 32) * *(*a1 + 4 * v12 + 16);
      if (v13 >= 1)
      {
        goto LABEL_6;
      }

LABEL_28:
      ++v7;
    }

    while (v7 < v5);
  }

  v30 = 0;
  ++a3[19];
  return v30;
}

uint64_t prog_huff_decode_loop(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v6 = *(a1 + 784);
  v7 = *(a1 + 788);
  v8 = a2[6];
  if (v8 > 6)
  {
    goto LABEL_4;
  }

  result = aj_istream_fill_buf(a2, -9);
  if (result)
  {
    return result;
  }

  v8 = a2[6];
  if (v8 < 0)
  {
LABEL_16:
    aj_log_error(0, "No huffman code found.");
    return 7;
  }

  else
  {
LABEL_4:
    v10 = *a2;
    if (v8 >= 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = v8;
    }

    v12 = (v11 + 10);
    v13 = 9;
    while (!*(v13 + a1 - 1) || v7 > 255)
    {
LABEL_15:
      v6 *= 2;
      if (++v13 == v12)
      {
        goto LABEL_16;
      }
    }

    v14 = 0;
    v15 = v7;
    while ((v10 >> -v13) - v6 != v14)
    {
      ++v14;
      v7 = v15 + 1;
      if (v14 < *(v13 + a1 - 1) && v15++ <= 254)
      {
        continue;
      }

      v6 += v14;
      goto LABEL_15;
    }

    result = 0;
    *a2 = v10 << v13;
    a2[6] = v8 - v13;
    *a3 = *(a1 + v15 + 16);
  }

  return result;
}

uint64_t aj_prog_decode_DC_refine(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = (a3 + 24);
  LODWORD(v5) = *a3;
  if (*a3 < 1)
  {
LABEL_15:
    result = 0;
    ++a3[19];
  }

  else
  {
    v8 = 0;
    v9 = 1 << a3[15];
    v10 = a1 + 6468;
    while (1)
    {
      v11 = a3[v8 + 1];
      v12 = v5 == 1 ? 1 : *(*a1 + 4 * v11 + 32) * *(*a1 + 4 * v11 + 16);
      v13 = a3[30];
      if (v13 < v12 - 9)
      {
        if (aj_istream_fill_buf(v6, -9))
        {
          return 9;
        }

        v13 = a3[30];
        if (v13 < v12 - 9)
        {
          return 9;
        }
      }

      v14 = a3[24];
      a3[24] = v14 << v12;
      a3[30] = v13 - v12;
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v14 & (-1 << -v12);
        do
        {
          if (v16 < 0)
          {
            v17 = (v15 + *&v10[4 * v11]) << 7;
            *(a4 + v17) |= v9;
          }

          v16 *= 2;
          ++v15;
        }

        while (v12 != v15);
      }

      ++v8;
      v5 = *a3;
      if (v8 >= v5)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t aj_prog_decode_AC_first(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a3[1];
  v6 = *&a3[4 * a3[v5 + 9] + 56];
  v28 = 0;
  v7 = a3[20];
  if (v7)
  {
    goto LABEL_2;
  }

  v8 = a3[13];
  if (v8 <= a3[14])
  {
    v12 = *(a1 + 1568 * v5 + 896);
    v13 = v6 + 272;
    do
    {
      v14 = a3[30];
      if (v14 <= -2)
      {
        v15 = aj_istream_fill_buf((a3 + 24), -9);
        if (v15)
        {
          v9 = v15;
LABEL_32:
          aj_log_error(0, "Unable to read more data");
          return v9;
        }

        v14 = a3[30];
        if (v14 <= -9)
        {
          v9 = 7;
          goto LABEL_32;
        }
      }

      v16 = a3[24];
      v17 = *(v13 + ((v16 >> 23) & 0x1FE));
      if (*(v13 + ((v16 >> 23) & 0x1FE)))
      {
        v18 = v14 + 9;
        if (v14 >= 0)
        {
          v18 = 8;
        }

        if (v18 < v17 >> 8)
        {
          return 7;
        }

        a3[24] = v16 << SBYTE1(v17);
        a3[30] = v14 - (v17 >> 8);
        v28 = v17;
      }

      else
      {
        v19 = prog_huff_decode_loop(v6, a3 + 24, &v28);
        if (v19)
        {
          return v19;
        }

        LOBYTE(v17) = v28;
      }

      v20 = v17 >> 4;
      v21 = v17 & 0xF;
      if ((v17 & 0xF) != 0)
      {
        v22 = a3[30];
        if (v22 < v21 - 9)
        {
          if (aj_istream_fill_buf((a3 + 24), -9))
          {
            return 9;
          }

          v22 = a3[30];
          if (v22 < v21 - 9)
          {
            return 9;
          }
        }

        v23 = v20 + v8;
        v24 = a3[24];
        a3[24] = v24 << v21;
        a3[30] = v22 - v21;
        if (v24 >= 0)
        {
          v25 = (-1 << v21) + 1;
        }

        else
        {
          v25 = 0;
        }

        *(a4 + 2 * *(v12 + 4 * v23)) = (v25 + (v24 >> -v21)) << a3[15];
      }

      else
      {
        if (v20 != 15)
        {
          v7 = 1 << v20;
          a3[20] = 1 << v20;
          if (v17 >= 0x10u)
          {
            v26 = a3[30];
            if (v26 < v20 - 9)
            {
              if (aj_istream_fill_buf((a3 + 24), -9))
              {
                return 9;
              }

              v26 = a3[30];
              if (v26 < v20 - 9)
              {
                return 9;
              }

              v7 = a3[20];
            }

            v27 = a3[24];
            a3[24] = v27 << v20;
            a3[30] = v26 - v20;
            v7 += v27 >> -v20;
          }

LABEL_2:
          a3[20] = v7 - 1;
          break;
        }

        v23 = v8 + 15;
      }

      v8 = v23 + 1;
    }

    while (v23 < a3[14]);
  }

  v9 = 0;
  ++a3[19];
  return v9;
}

uint64_t aj_prog_decode_AC_refine(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = a3[1];
  v7 = *&a3[4 * a3[v6 + 9] + 56];
  v53 = 0;
  v8 = *(a1 + 1568 * v6 + 896);
  v10 = a3[13];
  v9 = a3[14];
  v11 = v8 + 4 * v9;
  v12 = (v8 + 4 * v10);
  if (a3[20])
  {
    goto LABEL_2;
  }

  if (v10 > v9)
  {
    goto LABEL_28;
  }

  v25 = v7 + 272;
  do
  {
    v26 = a3[30];
    if (v26 > -2)
    {
      goto LABEL_33;
    }

    v27 = aj_istream_fill_buf((a3 + 24), -9);
    if (v27)
    {
      v24 = v27;
LABEL_82:
      aj_log_error(0, "Unable to read more data");
      return v24;
    }

    v26 = a3[30];
    if (v26 <= -9)
    {
      v24 = 7;
      goto LABEL_82;
    }

LABEL_33:
    v28 = a3[24];
    v29 = *(v25 + ((v28 >> 23) & 0x1FE));
    if (*(v25 + ((v28 >> 23) & 0x1FE)))
    {
      v30 = v26 + 9;
      if (v26 >= 0)
      {
        v30 = 8;
      }

      if (v30 < v29 >> 8)
      {
        return 7;
      }

      a3[24] = v28 << SBYTE1(v29);
      a3[30] = v26 - (v29 >> 8);
      v53 = v29;
    }

    else
    {
      v31 = prog_huff_decode_loop(v7, a3 + 24, &v53);
      if (v31)
      {
        return v31;
      }

      LOBYTE(v29) = v53;
    }

    v32 = v29 >> 4;
    if ((v29 & 0xF) == 0)
    {
      if (v32 == 15)
      {
        v36 = 0;
        goto LABEL_50;
      }

      v48 = 1 << v32;
      a3[20] = 1 << v32;
      if (v29 >= 0x10u)
      {
        v49 = a3[30];
        if (v49 < v32 - 9)
        {
          if (aj_istream_fill_buf((a3 + 24), -9))
          {
            return 9;
          }

          v49 = a3[30];
          if (v49 < v32 - 9)
          {
            return 9;
          }

          v48 = a3[20];
        }

        v51 = a3[24];
        a3[24] = v51 << v32;
        a3[30] = v49 - v32;
        v52 = v48 | (v51 >> -v32);
        a3[20] = v52;
        if (!v52)
        {
          goto LABEL_28;
        }
      }

LABEL_2:
      if (v12 < v11)
      {
        do
        {
          v13 = v12;
          v15 = *v12;
          v14 = v12[1];
          if (*(a4 + 2 * v15))
          {
            v16 = a3[30];
            if (v16 <= -9)
            {
              if (aj_istream_fill_buf((a3 + 24), -9))
              {
                return 9;
              }

              v16 = a3[30];
              if (v16 < -8)
              {
                return 9;
              }
            }

            v17 = a3[24];
            if (v17 < 0)
            {
              v18 = *(a4 + 2 * v15);
              if (v18 > 0)
              {
                v19 = 1;
              }

              else
              {
                v19 = -1;
              }

              *(a4 + 2 * v15) = v18 + (v19 << a3[15]);
            }

            a3[24] = 2 * v17;
            a3[30] = v16 - 1;
          }

          if (*(a4 + 2 * v14))
          {
            v20 = a3[30];
            if (v20 <= -9)
            {
              if (aj_istream_fill_buf((a3 + 24), -9))
              {
                return 9;
              }

              v20 = a3[30];
              if (v20 < -8)
              {
                return 9;
              }
            }

            v21 = a3[24];
            if (v21 < 0)
            {
              v22 = *(a4 + 2 * v14);
              if (v22 > 0)
              {
                v23 = 1;
              }

              else
              {
                v23 = -1;
              }

              *(a4 + 2 * v14) = v22 + (v23 << a3[15]);
            }

            a3[24] = 2 * v21;
            a3[30] = v20 - 1;
          }

          v12 = v13 + 2;
        }

        while ((v13 + 2) < v11);
        v12 = v13 + 2;
      }

      if (v12 == v11 && *(a4 + 2 * *v12))
      {
        v43 = a3[30];
        if (v43 <= -9)
        {
          if (aj_istream_fill_buf((a3 + 24), -9))
          {
            return 9;
          }

          v43 = a3[30];
          if (v43 < -8)
          {
            return 9;
          }
        }

        v44 = a3[24];
        if (v44 < 0)
        {
          v45 = *v12;
          v46 = *(a4 + 2 * v45);
          if (v46 > 0)
          {
            v47 = 1;
          }

          else
          {
            v47 = -1;
          }

          *(a4 + 2 * v45) = v46 + (v47 << a3[15]);
        }

        a3[24] = 2 * v44;
        a3[30] = v43 - 1;
      }

      --a3[20];
      goto LABEL_28;
    }

    v33 = a3[30];
    if (v33 <= -9)
    {
      if (aj_istream_fill_buf((a3 + 24), -9))
      {
        return 9;
      }

      v33 = a3[30];
      if (v33 < -8)
      {
        return 9;
      }
    }

    v34 = a3[24];
    if (v34 >= 0)
    {
      v35 = -1;
    }

    else
    {
      v35 = 1;
    }

    v36 = v35 << a3[15];
    a3[24] = 2 * v34;
    a3[30] = v33 - 1;
    do
    {
LABEL_50:
      if (*(a4 + 2 * *v12))
      {
        v37 = a3[30];
        if (v37 <= -9)
        {
          if (aj_istream_fill_buf((a3 + 24), -9))
          {
            return 9;
          }

          v37 = a3[30];
          if (v37 < -8)
          {
            return 9;
          }
        }

        v38 = a3[24];
        if (v38 < 0)
        {
          v39 = *v12;
          v40 = *(a4 + 2 * v39);
          if (v40 > 0)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          *(a4 + 2 * v39) = v40 + (v41 << a3[15]);
        }

        a3[24] = 2 * v38;
        a3[30] = v37 - 1;
      }

      else
      {
        v42 = __OFSUB__(v32--, 1);
        if (v32 < 0 != v42)
        {
          break;
        }
      }

      ++v12;
    }

    while (v12 <= v11);
    if (v36)
    {
      if (v12 > v11)
      {
        v12 = v11;
      }

      *(a4 + 2 * *v12) = v36;
    }

    ++v12;
  }

  while (v12 <= v11);
  if (a3[20])
  {
    goto LABEL_2;
  }

LABEL_28:
  v24 = 0;
  ++a3[19];
  return v24;
}

uint64_t aj_baseline_multiscan_decode_scan(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v6 = a3 + 24;
  v5 = *a3;
  if (*a3 < 1)
  {
LABEL_51:
    v45 = 0;
    ++a3[19];
  }

  else
  {
    v7 = a4;
    v8 = 0;
    v9 = a3 + 1;
    v10 = a1 + 24;
    v11 = a2 + 8;
    v12 = a1 + 6468;
    v13 = a3 + 54;
    v14 = a3 + 5;
    v15 = a3 + 9;
    v55 = a2 + 8;
    v48 = a3 + 1;
    v49 = a1;
    v47 = a1 + 24;
    v53 = a3 + 54;
    v54 = a1 + 6468;
    v51 = a3 + 9;
    v52 = a3 + 5;
    while (1)
    {
      v16 = v9[v8];
      v17 = v10[196 * v16 + 88];
      if (v5 == 1)
      {
        break;
      }

      v57 = *(*a1 + 4 * v16 + 32) * *(*a1 + 4 * v16 + 16);
      if (v57 >= 1)
      {
        goto LABEL_6;
      }

LABEL_50:
      if (++v8 >= v5)
      {
        goto LABEL_51;
      }
    }

    v57 = 1;
LABEL_6:
    v50 = v8;
    v18 = 0;
LABEL_7:
    v58 = v18;
    v19 = (v7 + ((*&v12[4 * v16] + v18) << 7));
    v20 = *&v13[4 * v14[v16]];
    v21 = *&v13[4 * v15[v16] + 2];
    *v19 = *(v11 + 4 * v16);
    v22 = a3[30];
    if (v22 <= -2)
    {
      v23 = aj_istream_fill_buf(v6, -9);
      if (v23)
      {
LABEL_54:
        v45 = v23;
LABEL_56:
        aj_log_error(0, "Unable to read more data", v47, v48, v49);
        return v45;
      }

      v22 = a3[30];
      if (v22 < -8)
      {
LABEL_55:
        v45 = 7;
        goto LABEL_56;
      }
    }

    v59 = 0;
    v24 = *v6;
    v25 = *(v20 + ((v24 >> 23) & 0x1FE) + 272);
    if (*(v20 + ((v24 >> 23) & 0x1FE) + 272))
    {
      v26 = v22 + 9;
      if (v22 >= 0)
      {
        v26 = 8;
      }

      if (v26 < v25 >> 8)
      {
        return 7;
      }

      a3[24] = v24 << SBYTE1(v25);
      a3[30] = v22 - (v25 >> 8);
      v59 = v25;
    }

    else
    {
      v27 = prog_huff_decode_loop(v20, v6, &v59);
      if (v27)
      {
        return v27;
      }

      LOBYTE(v25) = v59;
    }

    if (!v25)
    {
      v33 = *v19;
      goto LABEL_26;
    }

    v28 = a3[30];
    v29 = v25;
    v30 = v25 - 9;
    if (v28 >= v30 || !aj_istream_fill_buf(v6, -9) && (v28 = a3[30], v28 >= v30))
    {
      v31 = a3[24];
      a3[24] = v31 << v29;
      a3[30] = v28 - v29;
      if (v31 >= 0)
      {
        v32 = (-1 << v29) + 1;
      }

      else
      {
        LOWORD(v32) = 0;
      }

      v33 = *v19 + v32 + (v31 >> -v29);
      *v19 = v33;
LABEL_26:
      *(v11 + 4 * v16) = v33;
      v34 = v21 + 272;
      v35 = 1;
      while (1)
      {
        v36 = a3[30];
        if (v36 <= -2)
        {
          v23 = aj_istream_fill_buf(v6, -9);
          if (v23)
          {
            goto LABEL_54;
          }

          v36 = a3[30];
          if (v36 < -8)
          {
            goto LABEL_55;
          }
        }

        v37 = *v6;
        v38 = *(v34 + ((v37 >> 23) & 0x1FE));
        if (*(v34 + ((v37 >> 23) & 0x1FE)))
        {
          v39 = v36 + 9;
          if (v36 >= 0)
          {
            v39 = 8;
          }

          if (v39 < v38 >> 8)
          {
            return 7;
          }

          a3[24] = v37 << SBYTE1(v38);
          a3[30] = v36 - (v38 >> 8);
          v59 = v38;
        }

        else
        {
          v27 = prog_huff_decode_loop(v21, v6, &v59);
          if (v27)
          {
            return v27;
          }

          LOBYTE(v38) = v59;
        }

        v40 = v35 + ((v38 & 0xF0) >> 4);
        v41 = v38 & 0xF;
        if ((v38 & 0xF) != 0)
        {
          v42 = a3[30];
          if (v42 < v41 - 9)
          {
            if (aj_istream_fill_buf(v6, -9))
            {
              return 9;
            }

            v42 = a3[30];
            if (v42 < v41 - 9)
            {
              return 9;
            }
          }

          v43 = a3[24];
          a3[24] = v43 << v41;
          a3[30] = v42 - v41;
          if (v43 >= 0)
          {
            v44 = (-1 << v41) + 1;
          }

          else
          {
            v44 = 0;
          }

          v19[*(v17 + 4 * v40)] = v44 + (v43 >> -v41);
        }

        else
        {
          if (v38 < 0x10u)
          {
            goto LABEL_48;
          }

          if (v38 >> 4 != 15)
          {
            v45 = 7;
            aj_log_error(0, "Illegal huffman symbol.", v47, v48, v49);
            return v45;
          }
        }

        v35 = v40 + 1;
        if (v40 >= 63)
        {
LABEL_48:
          v18 = v58 + 1;
          v11 = v55;
          v7 = a4;
          v13 = v53;
          v12 = v54;
          v15 = v51;
          v14 = v52;
          if (v58 + 1 != v57)
          {
            goto LABEL_7;
          }

          v5 = *a3;
          a1 = v49;
          v8 = v50;
          v10 = v47;
          v9 = v48;
          goto LABEL_50;
        }
      }
    }

    return 9;
  }

  return v45;
}

uint64_t aj_mosquito_spray_enable(uint64_t a1)
{
  aj_init_QT_aanIDCT(aj_mosquito_spray_enable_qt_100, (a1 + 1044), 1, *(a1 + 704));
  result = aj_dct_prescale_qtable(aj_mosquito_spray_enable_qt_100, a1 + 1300);
  v3 = 0;
  v4 = *(a1 + 704);
  do
  {
    *(a1 + 1440 + 2 * *(v4 + v3)) = (((*(a1 + 48 + v3) + 2048) >> 12) + ((*(a1 + 48 + v3) + 2048) >> 31)) >> 1;
    v3 += 4;
  }

  while (v3 != 256);
  *(a1 + 1040) = 1;
  return result;
}

void aj_rotate_ip(char *a1, void *a2, int a3, int a4, int a5, int a6)
{
  if (a5 == 180)
  {
    if (a6 > 2)
    {
      if (a6 == 3)
      {

        rotate180_3bpp(a1, a3, a4);
      }

      else if (a6 == 4)
      {

        rotate180_4bpp(a1, a3, a4);
      }
    }

    else if (a6 == 1)
    {

      rotate180_1bpp(a1, a3, a4);
    }

    else if (a6 == 2)
    {

      rotate180_2bpp(a1, a3, a4);
    }
  }

  else
  {
    bzero(a2, a4 * a3 / 8 + 1);
    if (a6 > 2)
    {
      if (a6 == 3)
      {
        transpose_3bpp(a1, a2, a3, a4);
      }

      else if (a6 == 4)
      {
        transpose_4bpp(a1, a2, a3, a4, v12, v13);
      }
    }

    else if (a6 == 1)
    {
      transpose_1bpp(a1, a2, a3, a4);
    }

    else if (a6 == 2)
    {
      transpose_2bpp(a1, a2, a3, a4);
    }

    if (a5 == 90)
    {
      if (a6 > 2)
      {
        if (a6 == 3)
        {

          mirror_horizontal_3bpp(a1, a4, a3);
        }

        else if (a6 == 4)
        {

          mirror_horizontal_4bpp(a1, a4, a3);
        }
      }

      else if (a6 == 1)
      {
        if (a4 >= 1)
        {
          v14 = 0;
          v15 = &a1[a3 - 1];
          do
          {
            if (a3 >= 2)
            {
              v16 = &a1[v14 * a3];
              v17 = v15;
              v18 = a3 / 2;
              do
              {
                v19 = *v16;
                *v16++ = *v17;
                *v17-- = v19;
                --v18;
              }

              while (v18);
            }

            ++v14;
            v15 += a3;
          }

          while (v14 != a4);
        }
      }

      else if (a6 == 2)
      {

        mirror_horizontal_2bpp(a1, a4, a3);
      }
    }

    else if (a6 > 2)
    {
      if (a6 == 3)
      {

        mirror_vertical_3bpp(a1, a4, a3);
      }

      else if (a6 == 4)
      {

        mirror_vertical_4bpp(a1, a4, a3);
      }
    }

    else if (a6 == 1)
    {

      mirror_vertical_1bpp(a1, a4, a3);
    }

    else if (a6 == 2)
    {

      mirror_vertical_2bpp(a1, a4, a3);
    }
  }
}

char *rotate180_1bpp(char *result, int a2, int a3)
{
  v3 = &result[a3 * a2 - 1];
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      if (a3 >= 1)
      {
        v5 = a3;
        do
        {
          v6 = *result;
          *result++ = *v3;
          *v3-- = v6;
          --v5;
        }

        while (v5);
      }

      ++v4;
    }

    while (v4 != a2 / 2);
  }

  if ((a2 & 1) != 0 && a3 >= 2)
  {
    v7 = a3 / 2;
    do
    {
      v8 = *result;
      *result++ = *v3;
      *v3-- = v8;
      --v7;
    }

    while (v7);
  }

  return result;
}

char *rotate180_2bpp(char *result, int a2, int a3)
{
  v3 = &result[2 * a2 * a3 - 2];
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      if (a3 >= 1)
      {
        v5 = a3;
        do
        {
          v6 = *result;
          *result = *v3;
          *v3 = v6;
          v7 = result[1];
          result[1] = v3[1];
          v3[1] = v7;
          result += 2;
          v3 -= 2;
          --v5;
        }

        while (v5);
      }

      ++v4;
    }

    while (v4 != a2 / 2);
  }

  if ((a2 & 1) != 0 && a3 >= 2)
  {
    v8 = a3 / 2;
    do
    {
      v9 = *result;
      *result = *v3;
      *v3 = v9;
      v10 = result[1];
      result[1] = v3[1];
      v3[1] = v10;
      result += 2;
      v3 -= 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

char *rotate180_3bpp(char *result, int a2, int a3)
{
  v3 = &result[3 * a2 * a3 - 3];
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      if (a3 >= 1)
      {
        v5 = a3;
        do
        {
          v6 = *result;
          *result = *v3;
          *v3 = v6;
          v7 = result[1];
          result[1] = v3[1];
          v3[1] = v7;
          v8 = result[2];
          result[2] = v3[2];
          v3[2] = v8;
          result += 3;
          v3 -= 3;
          --v5;
        }

        while (v5);
      }

      ++v4;
    }

    while (v4 != a2 / 2);
  }

  if ((a2 & 1) != 0 && a3 >= 2)
  {
    v9 = a3 / 2;
    do
    {
      v10 = *result;
      *result = *v3;
      *v3 = v10;
      v11 = result[1];
      result[1] = v3[1];
      v3[1] = v11;
      v12 = result[2];
      result[2] = v3[2];
      v3[2] = v12;
      result += 3;
      v3 -= 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

char *rotate180_4bpp(char *result, int a2, int a3)
{
  v3 = &result[4 * a2 * a3 - 4];
  if (a2 >= 2)
  {
    v4 = 0;
    do
    {
      if (a3 >= 1)
      {
        v5 = a3;
        do
        {
          v6 = *result;
          *result = *v3;
          *v3 = v6;
          v7 = result[1];
          result[1] = v3[1];
          v3[1] = v7;
          v8 = result[2];
          result[2] = v3[2];
          v3[2] = v8;
          v9 = result[3];
          result[3] = v3[3];
          v3[3] = v9;
          result += 4;
          v3 -= 4;
          --v5;
        }

        while (v5);
      }

      ++v4;
    }

    while (v4 != a2 / 2);
  }

  if ((a2 & 1) != 0 && a3 >= 2)
  {
    v10 = a3 / 2;
    do
    {
      v11 = *result;
      *result = *v3;
      *v3 = v11;
      v12 = result[1];
      result[1] = v3[1];
      v3[1] = v12;
      v13 = result[2];
      result[2] = v3[2];
      v3[2] = v13;
      v14 = result[3];
      result[3] = v3[3];
      v3[3] = v14;
      result += 4;
      v3 -= 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t transpose_1bpp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = a4 * a3 - 1;
    do
    {
      if (a4 >= 1)
      {
        v6 = 0;
        v7 = v4 * a4;
        do
        {
          v8 = v6 + v7;
          if (((*(a2 + ((v6 + v7) >> 3)) >> ((v6 + v7) & 7)) & 1) == 0)
          {
            v9 = *(result + v8);
            v10 = v6 + v7;
            do
            {
              v11 = a4 * a3 - 1;
              if (v10 != v5)
              {
                v11 = v10 * a3 % v5;
              }

              v12 = *(result + v11);
              *(result + v11) = v9;
              *(a2 + v11 / 8) |= 1 << (v11 % 8);
              v10 = v11;
              v9 = v12;
            }

            while (v11 != v8);
          }

          ++v6;
        }

        while (v6 != a4);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t transpose_2bpp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = a4 * a3 - 1;
    do
    {
      if (a4 >= 1)
      {
        v6 = 0;
        v7 = v4 * a4;
        do
        {
          v8 = v6 + v7;
          if (((*(a2 + ((v6 + v7) >> 3)) >> ((v6 + v7) & 7)) & 1) == 0)
          {
            v9 = (result + 2 * v8);
            v10 = *v9;
            v11 = v9[1];
            v12 = v6 + v7;
            do
            {
              v13 = a4 * a3 - 1;
              if (v12 != v5)
              {
                v13 = v12 * a3 % v5;
              }

              v14 = (result + 2 * v13);
              v15 = *v14;
              v16 = v14[1];
              *v14 = v10;
              v14[1] = v11;
              *(a2 + v13 / 8) |= 1 << (v13 % 8);
              v12 = v13;
              v10 = v15;
              v11 = v16;
            }

            while (v13 != v8);
          }

          ++v6;
        }

        while (v6 != a4);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t transpose_3bpp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = a4 * a3 - 1;
    do
    {
      if (a4 >= 1)
      {
        v6 = 0;
        v7 = v4 * a4;
        do
        {
          v8 = v6 + v7;
          if (((*(a2 + ((v6 + v7) >> 3)) >> ((v6 + v7) & 7)) & 1) == 0)
          {
            v9 = (result + 3 * v8);
            v10 = *v9;
            v11 = v9[1];
            v12 = v9[2];
            v13 = v6 + v7;
            do
            {
              v14 = a4 * a3 - 1;
              if (v13 != v5)
              {
                v14 = v13 * a3 % v5;
              }

              v15 = (result + 3 * v14);
              v16 = *v15;
              v17 = v15[1];
              v18 = v15[2];
              *v15 = v10;
              v15[1] = v11;
              v15[2] = v12;
              *(a2 + v14 / 8) |= 1 << (v14 % 8);
              v13 = v14;
              v10 = v16;
              v11 = v17;
              v12 = v18;
            }

            while (v14 != v8);
          }

          ++v6;
        }

        while (v6 != a4);
      }

      ++v4;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t transpose_4bpp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint8x8_t a5, uint8x8_t a6)
{
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = a4 * a3 - 1;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = v6 * a4;
        do
        {
          v10 = v8 + v9;
          if (((*(a2 + ((v8 + v9) >> 3)) >> ((v8 + v9) & 7)) & 1) == 0)
          {
            a5.i32[0] = *(result + 4 * v10);
            a5 = vmovl_u8(a5).u64[0];
            v11 = v8 + v9;
            do
            {
              v12 = a4 * a3 - 1;
              if (v11 != v7)
              {
                v12 = v11 * a3 % v7;
              }

              a6.i32[0] = *(result + 4 * v12);
              *(result + 4 * v12) = vuzp1_s8(a5, a5).u32[0];
              a5 = vmovl_u8(a6).u64[0];
              *(a2 + v12 / 8) |= 1 << (v12 % 8);
              v11 = v12;
            }

            while (v12 != v10);
          }

          ++v8;
        }

        while (v8 != a4);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t mirror_horizontal_1bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = result + a3 - 1;
    do
    {
      if (a3 >= 2)
      {
        v5 = (result + v3 * a3);
        v6 = v4;
        v7 = a3 / 2;
        do
        {
          v8 = *v5;
          *v5++ = *v6;
          *v6-- = v8;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v4 += a3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t mirror_horizontal_2bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 2 * a3;
    do
    {
      v5 = v3++;
      if (a3 >= 2)
      {
        v6 = (result + v4 * v3 - 2);
        v7 = (result + v4 * v5);
        v8 = a3 / 2;
        do
        {
          v9 = *v7;
          *v7 = *v6;
          *v6 = v9;
          v10 = v7[1];
          v7[1] = v6[1];
          v6[1] = v10;
          v7 += 2;
          v6 -= 2;
          --v8;
        }

        while (v8);
      }
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t mirror_horizontal_3bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 3 * a3;
    do
    {
      v5 = v3++;
      if (a3 >= 2)
      {
        v6 = (result + v4 * v3 - 3);
        v7 = (result + v4 * v5);
        v8 = a3 / 2;
        do
        {
          v9 = *v7;
          *v7 = *v6;
          *v6 = v9;
          v10 = v7[1];
          v7[1] = v6[1];
          v6[1] = v10;
          v11 = v7[2];
          v7[2] = v6[2];
          v6[2] = v11;
          v7 += 3;
          v6 -= 3;
          --v8;
        }

        while (v8);
      }
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t mirror_horizontal_4bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 4 * a3;
    do
    {
      v5 = v3++;
      if (a3 >= 2)
      {
        v6 = (result + v4 * v3 - 4);
        v7 = (result + v4 * v5);
        v8 = a3 / 2;
        do
        {
          v9 = *v7;
          *v7 = *v6;
          *v6 = v9;
          v10 = v7[1];
          v7[1] = v6[1];
          v6[1] = v10;
          v11 = v7[2];
          v7[2] = v6[2];
          v6[2] = v11;
          v12 = v7[3];
          v7[3] = v6[3];
          v6[3] = v12;
          v7 += 4;
          v6 -= 4;
          --v8;
        }

        while (v8);
      }
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t mirror_vertical_1bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    do
    {
      if (a3 >= 1)
      {
        v4 = (result + (~v3 + a2) * a3);
        v5 = (result + v3 * a3);
        v6 = a3;
        do
        {
          v7 = *v5;
          *v5++ = *v4;
          *v4++ = v7;
          --v6;
        }

        while (v6);
      }

      ++v3;
    }

    while (v3 != a2 >> 1);
  }

  return result;
}

uint64_t mirror_vertical_2bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = 2 * a3;
    do
    {
      if (a3 >= 1)
      {
        v5 = (result + v4 * (~v3 + a2));
        v6 = (result + v4 * v3);
        v7 = a3;
        do
        {
          v8 = *v6;
          *v6 = *v5;
          *v5 = v8;
          v9 = v6[1];
          v6[1] = v5[1];
          v5[1] = v9;
          v6 += 2;
          v5 += 2;
          --v7;
        }

        while (v7);
      }

      ++v3;
    }

    while (v3 != a2 >> 1);
  }

  return result;
}

uint64_t mirror_vertical_3bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = 3 * a3;
    do
    {
      if (a3 >= 1)
      {
        v5 = (result + v4 * (~v3 + a2));
        v6 = (result + v4 * v3);
        v7 = a3;
        do
        {
          v8 = *v6;
          *v6 = *v5;
          *v5 = v8;
          v9 = v6[1];
          v6[1] = v5[1];
          v5[1] = v9;
          v10 = v6[2];
          v6[2] = v5[2];
          v5[2] = v10;
          v6 += 3;
          v5 += 3;
          --v7;
        }

        while (v7);
      }

      ++v3;
    }

    while (v3 != a2 >> 1);
  }

  return result;
}

uint64_t mirror_vertical_4bpp(uint64_t result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = 0;
    v4 = 4 * a3;
    do
    {
      if (a3 >= 1)
      {
        v5 = (result + v4 * (~v3 + a2));
        v6 = (result + v4 * v3);
        v7 = a3;
        do
        {
          v8 = *v6;
          *v6 = *v5;
          *v5 = v8;
          v9 = v6[1];
          v6[1] = v5[1];
          v5[1] = v9;
          v10 = v6[2];
          v6[2] = v5[2];
          v5[2] = v10;
          v11 = v6[3];
          v6[3] = v5[3];
          v5[3] = v11;
          v6 += 4;
          v5 += 4;
          --v7;
        }

        while (v7);
      }

      ++v3;
    }

    while (v3 != a2 >> 1);
  }

  return result;
}

uint64_t applejpeg_bitmap_rotate_inplace(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  if (a1)
  {
    aj_log_error(0, "applejpeg_memory argument provided. This is deprecated and will be ignored.");
  }

  v5 = check_rotinput(a2, a3);
  if (!v5)
  {
    if (a3 == 180)
    {
      if (!a2)
      {
        aj_log_error(0, "bitmap struct pointer is NULL");
        return 8;
      }
    }

    else
    {
      v6 = 4 * ((a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1) * ((a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1);
      if (((((a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1) * ((a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1)) & 0x20000000) != 0)
      {
        v6 += 7;
      }

      v7 = v6 >> 3;
      v8 = __CFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v11 = malloc_type_calloc(1uLL, v9, 0x878E83E8uLL);
        v10 = v11;
        if (!v11)
        {
          aj_log_error(0, "Could not allocate rotation workmemory");
          return 6;
        }

LABEL_13:
        v12 = 0;
        v13 = *a2;
        v14 = a2[5].i32[0];
        v15 = a2[5].i32[1];
        v16 = (v14 + 1) / 2;
        v17 = 2 * v16;
        v18 = 2 * ((v15 + 1) / 2);
        v19 = a2[6].i32[0];
        if (v19 <= 0xD)
        {
          if (((1 << v19) & 0x300) != 0)
          {
            v12 = &v13[v17 * v15];
          }

          else if (((1 << v19) & 0xC00) != 0)
          {
            v12 = &v13[v18 * v17];
          }

          else if (((1 << v19) & 0x3000) != 0)
          {
            v12 = &v13[v18 * v14];
          }
        }

        if (a3 <= 179)
        {
          if (!a3)
          {
            v5 = a3;
            goto LABEL_112;
          }

          if (a3 == 90)
          {
            if (v19 <= 5)
            {
              if (v19 <= 2)
              {
                if ((v19 - 1) < 2)
                {
                  bzero(v10, v15 * v14 / 8 + 1);
                  transpose_2bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
                  v20 = a2[5].i32[0];
                  v21 = a2[5].i32[1];
                  v22 = v13;
LABEL_80:
                  mirror_horizontal_2bpp(v22, v20, v21);
                  goto LABEL_101;
                }

                if (!v19)
                {
LABEL_90:
                  bzero(v10, v15 * v14 / 8 + 1);
                  transpose_3bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
                  mirror_horizontal_3bpp(v13, a2[5].i32[0], a2[5].i32[1]);
                  goto LABEL_101;
                }

                goto LABEL_102;
              }

              if ((v19 - 3) < 2)
              {
                bzero(v10, v15 * v14 / 8 + 1);
                transpose_4bpp(v13, v10, a2[5].i32[1], a2[5].i32[0], v30, v31);
                mirror_horizontal_4bpp(v13, a2[5].i32[0], a2[5].i32[1]);
LABEL_101:
                v5 = 0;
                a2[5] = vrev64_s32(a2[5]);
                goto LABEL_112;
              }

              if (v19 == 5)
              {
                bzero(v10, v15 * v14 / 8 + 1);
                transpose_1bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
                mirror_horizontal_1bpp(v13, a2[5].i32[0], a2[5].i32[1]);
                goto LABEL_101;
              }

              goto LABEL_102;
            }

            if (v19 > 0xD)
            {
LABEL_63:
              if (v19 != 7)
              {
                if (v19 == 6)
                {
                  goto LABEL_90;
                }

                goto LABEL_102;
              }

LABEL_78:
              aj_log_error(0, "Format not yet supported.");
              v5 = 3;
              goto LABEL_112;
            }

            if (((1 << v19) & 0x300) == 0)
            {
              if (((1 << v19) & 0xC00) != 0)
              {
                v37 = v18 * v17 / 8 + 1;
                bzero(v10, v37);
                transpose_1bpp(v13, v10, v18, v17);
                mirror_horizontal_1bpp(v13, v17, v18);
                bzero(v10, v37);
                transpose_2bpp(v12, v10, (a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1, (a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1);
                v20 = (a2[5].i32[0] + 1) / 2;
                v21 = (a2[5].i32[1] + 1) / 2;
                v22 = v12;
                goto LABEL_80;
              }

              if (((1 << v19) & 0x3000) != 0)
              {
                v27 = v18 * v17 / 8 + 1;
                bzero(v10, v27);
                transpose_1bpp(v13, v10, v18, a2[5].i32[0]);
                mirror_horizontal_1bpp(v13, a2[5].i32[0], v18);
                bzero(v10, v27);
                transpose_2bpp(v12, v10, (a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1, a2[5].i32[0]);
                mirror_horizontal_2bpp(v12, a2[5].i32[0], (a2[5].i32[1] + 1) / 2);
                goto LABEL_55;
              }

              goto LABEL_63;
            }

            v34 = v18 * v17 / 8 + 1;
            bzero(v10, v34);
            transpose_1bpp(v13, v10, a2[5].i32[1], v17);
            mirror_horizontal_1bpp(v13, v17, a2[5].i32[1]);
            bzero(v10, v34);
            transpose_2bpp(v12, v10, a2[5].i32[1], (a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1);
            mirror_horizontal_2bpp(v12, (a2[5].i32[0] + 1) / 2, a2[5].i32[1]);
LABEL_75:
            if (a2[6].i32[0] == 8)
            {
              v29 = 12;
            }

            else
            {
              v29 = 13;
            }

            goto LABEL_88;
          }

LABEL_33:
          aj_log_error(0, "Rotation must be 0, 90, 180 or 270 degrees.");
          v5 = 5;
          goto LABEL_112;
        }

        if (a3 != 270)
        {
          if (a3 != 180)
          {
            goto LABEL_33;
          }

          if (v19 <= 5)
          {
            if (v19 > 2)
            {
              if ((v19 - 3) >= 2)
              {
                if (v19 != 5)
                {
                  goto LABEL_102;
                }

                rotate180_1bpp(*a2, v15, v14);
              }

              else
              {
                rotate180_4bpp(*a2, v15, v14);
              }

LABEL_111:
              v5 = 0;
LABEL_112:
              if (v10)
              {
                free(v10);
              }

              return v5;
            }

            if ((v19 - 1) < 2)
            {
              v23 = *a2;
LABEL_84:
              rotate180_2bpp(v23, v15, v14);
              goto LABEL_111;
            }

            if (v19)
            {
              goto LABEL_102;
            }

LABEL_92:
            rotate180_3bpp(*a2, v15, v14);
            goto LABEL_111;
          }

          if (v19 > 0xD)
          {
            goto LABEL_66;
          }

          if (((1 << v19) & 0x300) != 0)
          {
            rotate180_1bpp(*a2, v15, 2 * v16);
            v15 = a2[5].i32[1];
            v35 = a2[5].i32[0] + 1;
          }

          else
          {
            if (((1 << v19) & 0xC00) == 0)
            {
              if (((1 << v19) & 0x3000) != 0)
              {
                rotate180_1bpp(*a2, 2 * ((v15 + 1) / 2), v14);
                v14 = a2[5].i32[0];
                v15 = (a2[5].i32[1] + 1) / 2;
LABEL_83:
                v23 = v12;
                goto LABEL_84;
              }

LABEL_66:
              if (v19 == 7)
              {
                rotate180_4bpp(*a2, v15, (v14 + 1) / 2);
                v39 = a2[5].i32[1];
                if (v39 >= 1)
                {
                  v40 = 0;
                  v41 = a2[5].i32[0];
                  v42 = (v41 + 1) / 2;
                  if (v42 <= 1)
                  {
                    v42 = 1;
                  }

                  do
                  {
                    if (v41 >= 1)
                    {
                      v43 = v42;
                      do
                      {
                        v44 = *v13;
                        *v13 = v13[2];
                        v13[2] = v44;
                        v13 += 4;
                        --v43;
                      }

                      while (v43);
                    }

                    v5 = 0;
                    ++v40;
                  }

                  while (v40 != v39);
                  goto LABEL_112;
                }

                goto LABEL_111;
              }

              if (v19 != 6)
              {
                goto LABEL_102;
              }

              goto LABEL_92;
            }

            rotate180_1bpp(*a2, 2 * ((v15 + 1) / 2), 2 * v16);
            v15 = (a2[5].i32[1] + 1) / 2;
            v35 = a2[5].i32[0] + 1;
          }

          v14 = v35 / 2;
          goto LABEL_83;
        }

        if (v19 > 5)
        {
          if (v19 <= 0xD)
          {
            if (((1 << v19) & 0x300) != 0)
            {
              v36 = v18 * v17 / 8 + 1;
              bzero(v10, v36);
              transpose_1bpp(v13, v10, a2[5].i32[1], v17);
              mirror_vertical_1bpp(v13, v17, a2[5].i32[1]);
              bzero(v10, v36);
              transpose_2bpp(v12, v10, a2[5].i32[1], (a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1);
              mirror_vertical_2bpp(v12, (a2[5].i32[0] + 1) / 2, a2[5].i32[1]);
              goto LABEL_75;
            }

            if (((1 << v19) & 0xC00) != 0)
            {
              v38 = v18 * v17 / 8 + 1;
              bzero(v10, v38);
              transpose_1bpp(v13, v10, v18, v17);
              mirror_vertical_1bpp(v13, v17, v18);
              bzero(v10, v38);
              transpose_2bpp(v12, v10, (a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1, (a2[5].i32[0] + 1 + ((a2[5].i32[0] + 1) >> 31)) >> 1);
              v24 = (a2[5].i32[0] + 1) / 2;
              v25 = (a2[5].i32[1] + 1) / 2;
              v26 = v12;
              goto LABEL_86;
            }

            if (((1 << v19) & 0x3000) != 0)
            {
              v28 = v18 * v17 / 8 + 1;
              bzero(v10, v28);
              transpose_1bpp(v13, v10, v18, a2[5].i32[0]);
              mirror_vertical_1bpp(v13, a2[5].i32[0], v18);
              bzero(v10, v28);
              transpose_2bpp(v12, v10, (a2[5].i32[1] + 1 + ((a2[5].i32[1] + 1) >> 31)) >> 1, a2[5].i32[0]);
              mirror_vertical_2bpp(v12, a2[5].i32[0], (a2[5].i32[1] + 1) / 2);
LABEL_55:
              if (a2[6].i32[0] == 12)
              {
                v29 = 8;
              }

              else
              {
                v29 = 9;
              }

LABEL_88:
              a2[6].i32[0] = v29;
              goto LABEL_101;
            }
          }

          if (v19 == 7)
          {
            goto LABEL_78;
          }

          if (v19 != 6)
          {
            goto LABEL_102;
          }
        }

        else
        {
          if (v19 > 2)
          {
            if ((v19 - 3) < 2)
            {
              bzero(v10, v15 * v14 / 8 + 1);
              transpose_4bpp(v13, v10, a2[5].i32[1], a2[5].i32[0], v32, v33);
              mirror_vertical_4bpp(v13, a2[5].i32[0], a2[5].i32[1]);
              goto LABEL_101;
            }

            if (v19 == 5)
            {
              bzero(v10, v15 * v14 / 8 + 1);
              transpose_1bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
              mirror_vertical_1bpp(v13, a2[5].i32[0], a2[5].i32[1]);
              goto LABEL_101;
            }

LABEL_102:
            aj_log_error(0, "Unrecognized or unimplemented format.");
            v5 = 4;
            goto LABEL_112;
          }

          if ((v19 - 1) < 2)
          {
            bzero(v10, v15 * v14 / 8 + 1);
            transpose_2bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
            v24 = a2[5].i32[0];
            v25 = a2[5].i32[1];
            v26 = v13;
LABEL_86:
            mirror_vertical_2bpp(v26, v24, v25);
            goto LABEL_101;
          }

          if (v19)
          {
            goto LABEL_102;
          }
        }

        bzero(v10, v15 * v14 / 8 + 1);
        transpose_3bpp(v13, v10, a2[5].i32[1], a2[5].i32[0]);
        mirror_vertical_3bpp(v13, a2[5].i32[0], a2[5].i32[1]);
        goto LABEL_101;
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  return v5;
}

uint64_t check_rotinput(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    v3 = 8;
    v4 = "Cannot accept NULL arguments";
LABEL_8:
    aj_log_error(0, v4);
    return v3;
  }

  v3 = 5;
  v4 = "Unsupported rotation";
  if (a2 > 179)
  {
    if (a2 != 270 && a2 != 180)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    if (a2 != 90)
    {
      goto LABEL_8;
    }

LABEL_13:
    if (*(a1 + 48) != 7)
    {
      return 0;
    }

    v3 = 3;
    aj_log_error(0, "Unsupported format for rotation");
    return v3;
  }

  return a2;
}

uint64_t applejpeg_bitmap_rotate_to_dst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = check_rotinput(a1, a3);
  if (result)
  {
    return result;
  }

  if (!a2 || !*a2)
  {
    aj_log_error(0, "Output cannot be NULL");
    return 8;
  }

  v7 = *(a1 + 48);
  if (v7 <= 4)
  {
    if ((v7 - 1) < 2)
    {
      v8 = 2;
      goto LABEL_32;
    }

    if ((v7 - 3) < 2)
    {
      v8 = 4;
LABEL_32:
      v10 = *(a1 + 40);
LABEL_33:
      v23 = *(a1 + 44);
      if (v23 >= 1)
      {
        v24 = 0;
        v25 = *a1;
        do
        {
          aj_row_translate(v3, v8, v10, 0, 0, v10, v23, v24, v25, *a2);
          v25 += v10 * v8;
          ++v24;
        }

        while (v23 != v24);
      }

      goto LABEL_36;
    }

    if (!v7)
    {
      v8 = 3;
      goto LABEL_32;
    }

LABEL_30:
    aj_log_error(0, "Unsupported output format");
    return 5;
  }

  if (v7 > 0xD)
  {
    goto LABEL_17;
  }

  if (((1 << v7) & 0x300) == 0)
  {
    if (((1 << v7) & 0xC00) != 0)
    {
      v9 = (*(a1 + 40) & 1) + *(a1 + 40);
      v33 = 1;
      goto LABEL_22;
    }

    if (((1 << v7) & 0x3000) != 0)
    {
      v33 = 0;
      v9 = *(a1 + 40);
LABEL_22:
      v12 = (*(a1 + 44) & 1) + *(a1 + 44);
      v11 = 1;
      goto LABEL_23;
    }

LABEL_17:
    if (v7 == 5)
    {
      v8 = 1;
      goto LABEL_32;
    }

    if (v7 == 7)
    {
      v10 = (*(a1 + 40) & 1) + *(a1 + 40);
      v8 = 2;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v11 = 0;
  v12 = *(a1 + 44);
  v9 = (*(a1 + 40) & 1) + *(a1 + 40);
  v33 = 1;
LABEL_23:
  v13 = *a1;
  v14 = v9;
  if (v12 >= 1)
  {
    v15 = 0;
    v16 = *a1;
    do
    {
      aj_row_translate(v3, 0, v9, 0, 0, v9, v12, v15, v16, *a2);
      v16 += v9;
      ++v15;
    }

    while (v12 != v15);
  }

  v17 = v12 >> v11;
  if (v12 >> v11 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = &v13[v9 * v12];
    v21 = v14 >> v33;
    v22 = 2 * (v14 >> v33);
    do
    {
      aj_row_translate(v3, 2, v21, 0, 0, v21, v17, v19, v18, v20);
      v18 += v22;
      ++v19;
    }

    while (v17 != v19);
  }

LABEL_36:
  v26 = *(a1 + 40);
  v27 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v27;
  *(a2 + 40) = v26;
  v28 = *(a1 + 88);
  v29 = *(a1 + 104);
  v30 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v30;
  *(a2 + 104) = v29;
  *(a2 + 88) = v28;
  if (v3 != 180 && v3 != 90)
  {
    return 0;
  }

  result = 0;
  v31 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 44);
  *(a2 + 44) = *(a1 + 40);
  if (v31 > 11)
  {
    if (v31 == 12)
    {
      result = 0;
      v32 = 8;
    }

    else
    {
      if (v31 != 13)
      {
        return result;
      }

      result = 0;
      v32 = 9;
    }
  }

  else if (v31 == 8)
  {
    result = 0;
    v32 = 12;
  }

  else
  {
    if (v31 != 9)
    {
      return result;
    }

    result = 0;
    v32 = 13;
  }

  *(a2 + 48) = v32;
  return result;
}

uint64_t aj_fill_coeffblock_from_scan_properties(unsigned int *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  if (v3 >= 1 && v3 <= a3)
  {
    v6 = 0;
    v7 = (a1 + 1);
    while (1)
    {
      v8 = v7[v6];
      if (v8 > 3 || v6 && (v8 <= *v7 || v6 != 1 && (v8 <= a1[2] || v6 >= 3 && v8 <= a1[3])))
      {
        break;
      }

      if (v3 == ++v6)
      {
        v9 = a1[5];
        if (v9 <= 0x3F)
        {
          v10 = a1[6];
          if (v10 <= 0x3F)
          {
            v11 = v9 == 0;
            if (!v10)
            {
              v11 = 0;
            }

            if ((!v9 || v3 == 1) && v9 <= v10 && !v11)
            {
              v13 = a1[8];
              if (v13 <= 0xD)
              {
                v14 = a1[7];
                if (v14 <= 0xD && (!v14 || v14 == v13 + 1))
                {
                  v15 = 0;
                  if (v14)
                  {
                    v16 = 1;
                  }

                  else
                  {
                    v16 = 0xFFFF;
                  }

                  v17 = v16 << v13;
                  v18 = v9 - 1;
                  v19 = a2 + 2 * v9;
LABEL_34:
                  v20 = (v19 + (v7[v15] << 7));
                  v21 = v18;
                  while (1)
                  {
                    v22 = *v20;
                    if ((v17 & v22) != 0)
                    {
                      break;
                    }

                    *v20++ = v22 | v17;
                    if (v10 <= ++v21)
                    {
                      result = 0;
                      if (++v15 != v3)
                      {
                        goto LABEL_34;
                      }

                      return result;
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
  }

  aj_log_error("Utils", "The progressive scan set-up is illegal or contains errors");
  return 4;
}

uint64_t aj_fill_coeffblock_from_scan_info(unsigned int *a1, uint64_t a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v5 = *a1;
  v8 = v5;
  v6 = vrev64q_s32(*(a1 + 13));
  v6.i64[0] = *(a1 + 13);
  v10 = v6;
  if (v5 >= 1)
  {
    memcpy(v9, a1 + 1, 4 * v5);
  }

  return aj_fill_coeffblock_from_scan_properties(&v8, a2, a3);
}

uint64_t estimate_jpeg_size(int a1, int a2)
{
  v2 = a2 * a1;
  if (v2 <= 1)
  {
    return 1;
  }

  else
  {
    return v2 >> 1;
  }
}

uint64_t aj_highest_set_bit(unsigned int a1)
{
  v1 = 32 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t aj_row_translate(unsigned int a1, int a2, int a3, uint64_t a4, signed int a5, int a6, int a7, int a8, char *a9, unint64_t a10)
{
  v10 = (a1 & 3) > 1;
  if ((a1 & 3) <= 1)
  {
    v11 = 90 * (a1 & 3);
  }

  else
  {
    v11 = 90 * (a1 & 3) - 180;
  }

  if (v11 == 90)
  {
    v12 = a7;
  }

  else
  {
    v12 = a3;
  }

  v13 = v12 * a2;
  if (a4)
  {
    v13 = a4;
  }

  if (v11 == 90)
  {
    v14 = a3;
  }

  else
  {
    v14 = a7;
  }

  if (a5 < 0 || (LODWORD(v15) = a3 - a6, a3 < a6))
  {
    aj_log_error("Utils", "%d %d %d", a5, a6, a3);
    return 8;
  }

  v17 = a9;
  v18 = (a1 >> 2) & 1;
  v19 = (a1 >> 3) & 1;
  if (!v11)
  {
    if (v18 == v10 || v19 == v10)
    {
      if (v18 == v10)
      {
        if (v19 == v10)
        {
          v27 = a8;
        }

        else
        {
          v27 = ~a8 + a7;
        }

        memcpy((a10 + v13 * v27 + a5 * a2), a9, (a6 - a5) * a2);
        return 0;
      }
    }

    else
    {
      a8 = ~a8 + a7;
    }

    v22 = v13 * a8 + a3 * a2;
    v13 = -a2;
    goto LABEL_29;
  }

  v20 = a10 + v13 * v14;
  if (&a9[a3 * a2] >= a10 && v20 >= a9)
  {
    return 8;
  }

  if (v11 != 90)
  {
    return 3;
  }

  if (v18 != v10 && v19 != v10)
  {
    v28 = v13 * (a3 - 1) + a8 * a2;
    goto LABEL_63;
  }

  if (v18 != v10)
  {
    v28 = a8 * a2;
    goto LABEL_63;
  }

  v35 = (~a8 + a7) * a2;
  if (v19 != v10)
  {
    v28 = v35 + v13 * (a3 - 1);
LABEL_63:
    if (v19 != v10)
    {
      v13 = -v13;
    }

    v22 = v28 - v13;
    if (v19 == v10)
    {
      goto LABEL_68;
    }

LABEL_29:
    v15 = v15;
    goto LABEL_30;
  }

  v22 = v35 - v13;
LABEL_68:
  v15 = a5;
LABEL_30:
  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v33 = a6 - a5;
      if (a6 <= a5)
      {
        return 0;
      }

      v34 = (v22 + v13 + v13 * v15 + a10 + 2);
      result = 0;
      do
      {
        *(v34 - 2) = *v17;
        *(v34 - 1) = v17[1];
        *v34 = v17[2];
        v34 += v13;
        v17 += 3;
        --v33;
      }

      while (v33);
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v25 = a6 - a5;
      if (a6 <= a5)
      {
        return 0;
      }

      v26 = (v22 + v13 + v13 * v15 + a10 + 1);
      result = 0;
      do
      {
        *(v26 - 1) = *v17;
        *v26 = v17[1];
        v26[1] = v17[2];
        v26[2] = v17[3];
        v26 += v13;
        v17 += 4;
        --v25;
      }

      while (v25);
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      v23 = a6 - a5;
      if (a6 > a5)
      {
        v24 = (v22 + v13 + v13 * v15 + a10 + 1);
        result = 0;
        do
        {
          *(v24 - 1) = *v17;
          *v24 = v17[1];
          v24 += v13;
          v17 += 2;
          --v23;
        }

        while (v23);
        return result;
      }

      return 0;
    }

    v30 = a6 - a5;
    if (a6 <= a5)
    {
      return 0;
    }

    v31 = (a10 + v13 + v13 * v15 + v22);
    result = 0;
    do
    {
      v32 = *v17++;
      *v31 = v32;
      v31 += v13;
      --v30;
    }

    while (v30);
  }

  return result;
}

char *aj_paint_region(char *result, int a2, unsigned __int8 *a3, unsigned int a4, int a5, uint64_t a6, int a7, int *a8)
{
  v10 = a8[1];
  v11 = a8[2] + *a8;
  v12 = a8[3] + v10;
  v13 = a7 - v12;
  v14 = a7 - v10;
  v15 = a5 - v11;
  v16 = a5 - *a8;
  if (a2 == 270)
  {
    v17 = a8[3] + v10;
  }

  else
  {
    v17 = 0;
  }

  if (a2 == 270)
  {
    v18 = a8[1];
  }

  else
  {
    v18 = 0;
  }

  if (a2 == 270)
  {
    v19 = a5 - *a8;
  }

  else
  {
    v19 = 0;
  }

  if (a2 == 270)
  {
    v20 = a5 - v11;
  }

  else
  {
    v20 = 0;
  }

  if (a2 == 180)
  {
    v21 = a7 - v10;
  }

  else
  {
    v16 = v17;
    v15 = v18;
    v21 = v19;
  }

  if (a2 == 180)
  {
    v22 = a7 - v12;
  }

  else
  {
    v22 = v20;
  }

  if (a2 == 90)
  {
    v23 = a8[2] + *a8;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v23 = 0;
  }

  if (a2 == 90)
  {
    v24 = *a8;
  }

  else
  {
    v24 = 0;
  }

  if (a2)
  {
    v11 = v14;
  }

  else
  {
    v13 = *a8;
  }

  if (a2)
  {
    v12 = v23;
    v25 = v24;
  }

  else
  {
    v25 = a8[1];
  }

  if (a2 <= 179)
  {
    v26 = v11;
  }

  else
  {
    v26 = v16;
  }

  if (a2 <= 179)
  {
    v27 = v13;
  }

  else
  {
    v27 = v15;
  }

  if (a2 <= 179)
  {
    v28 = v12;
  }

  else
  {
    v28 = v21;
  }

  if (a2 <= 179)
  {
    LODWORD(v29) = v25;
  }

  else
  {
    LODWORD(v29) = v22;
  }

  if (a4 < 2)
  {
    goto LABEL_48;
  }

  v31 = a3 + 1;
  v30 = *a3;
  v32 = 2;
  do
  {
    v34 = *v31++;
    v33 = v34;
    if (v32 >= a4)
    {
      break;
    }

    ++v32;
  }

  while (v33 == v30);
  if (v33 == v30)
  {
LABEL_48:
    v35 = v28 - v29;
    if (v28 > v29)
    {
      v36 = ((v26 - v27) * a4);
      v37 = &result[a6 * v29 + (v27 * a4)];
      do
      {
        result = memset(v37, *a3, v36);
        v37 += a6;
        --v35;
      }

      while (v35);
    }
  }

  else if (v28 > v29)
  {
    v29 = v29;
    v38 = &result[v27 * a4 + a6 * v29];
    do
    {
      v39 = v38;
      v40 = v27;
      if (v26 > v27)
      {
        do
        {
          result = a4;
          v41 = v39;
          v42 = a3;
          do
          {
            v43 = *v42++;
            *v41++ = v43;
            --result;
          }

          while (result);
          ++v40;
          v39 += a4;
        }

        while (v40 != v26);
      }

      ++v29;
      v38 += a6;
    }

    while (v29 != v28);
  }

  return result;
}

uint64_t aj_get_texture_size(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7)
{
  v7 = *(a2 + 76);
  v9 = a1[2];
  v8 = a1[3];
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
    v12 = *(a2 + 20);
    v11 = *(a2 + 12);
    if (v12 == -1)
    {
      if (v11 == -1)
      {
        v12 = -1;
        if (*(a2 + 16) == -1)
        {
          v16 = 0;
          v11 = 0;
          v13 = -1;
          v14 = a1[2];
          v15 = a1[3];
          goto LABEL_9;
        }

        v11 = -1;
      }

      else
      {
        v12 = -1;
      }
    }
  }

  else
  {
    v11 = *(a2 + 12);
    v12 = *(a2 + 20);
  }

  v13 = v12;
  v12 = *(a2 + 16);
  v14 = v13;
  v15 = *(a2 + 24);
  v16 = v12;
LABEL_9:
  v17 = a1[4];
  v18 = 8 * v17;
  v19 = a1[8];
  v20 = 8 * v19;
  v21 = v11 / (8 * v17);
  v22 = (v14 + v11 - 1) / (8 * v17);
  v23 = v16 / (8 * v19);
  v24 = v22 - v21 + 1;
  v25 = (v15 + v16 - 1) / (8 * v19) - v23 + 1;
  if (v7 != 8 && *a1 != 1)
  {
    v17 = 2;
    v19 = 2;
  }

  v26 = v24 * v18 / v7;
  v27 = v25 * v20 / v7;
  *a3 = v26;
  *(a3 + 8) = v27;
  if (a4)
  {
    v26 = (v26 + 8 * v17 - 1) & (-8 * v17);
    v27 = (v27 + 8 * v19 - 1) & (-8 * v19);
    *a3 = v26;
    *(a3 + 8) = v27;
  }

  v28 = v26 / v17;
  v29 = v27 / v19;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  if (v10 != -1)
  {
    v30 = *(a2 + 12);
LABEL_16:
    v31 = (v30 - v21 * v18) / v7;
    v32 = (v12 - v23 * v20) / v7;
    *(a3 + 16) = v31;
    *(a3 + 20) = v32;
    *(a3 + 48) = v31 / v17;
    *(a3 + 52) = v32 / v19;
    v33 = v13 / v7;
    *(a3 + 56) = v13 / v7 / v17;
    v34 = v10 / v7;
    *(a3 + 24) = v33;
    *(a3 + 28) = v34;
    v35 = v34 / v19;
    goto LABEL_17;
  }

  v30 = *(a2 + 12);
  if (v13 != -1 || v30 != -1)
  {
    goto LABEL_16;
  }

  if (v12 != -1)
  {
    v30 = -1;
    goto LABEL_16;
  }

  *(a3 + 16) = 0;
  v45 = v9 / v7;
  v35 = v8 / v7;
  *(a3 + 24) = v45;
  *(a3 + 28) = v35;
  *(a3 + 48) = 0;
  if (v17 == 2)
  {
    v45 = (v45 + 1) / 2;
  }

  *(a3 + 56) = v45;
  if (v19 == 2)
  {
    v35 = (v35 + 1) / 2;
  }

LABEL_17:
  *(a3 + 60) = v35;
  v36 = *(a2 + 40);
  if (v36)
  {
    v37 = v36 >= v26;
    v26 = *(a2 + 40);
    if (!v37)
    {
      return 5;
    }
  }

  v38 = *(a2 + 48);
  v39 = v28;
  if (v38)
  {
    v39 = *(a2 + 48);
    if (v38 < v28)
    {
      return 5;
    }
  }

  v40 = *(a2 + 56);
  if (v40)
  {
    v37 = v40 >= v28;
    v28 = *(a2 + 56);
    if (!v37)
    {
      return 5;
    }
  }

  v42 = v26 * v27;
  v43 = v39 * v29;
  v44 = v28 * v29;
  if (a6)
  {
    *a6 = v42;
    *(a6 + 8) = v43;
    *(a6 + 16) = v44;
    *(a6 + 32) = 3;
  }

  if (a5)
  {
    *a5 = v43 + v42 + v44;
  }

  result = 0;
  if (a7)
  {
    *a7 = 8 * (v39 + v26 * v19 + v28);
  }

  return result;
}

uint64_t aj_init_bitmapinfo(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  v14 = 0;
  result = aj_calculate_dimensions(a3, a2, &v14 + 1, &v14, 0, 0, 0, 0, 0);
  if (result)
  {
    goto LABEL_2;
  }

  v9 = *(a3 + 80);
  if (v9 == 270 || v9 == 90)
  {
    v10 = HIDWORD(v14);
    *a1 = v14;
    *(a1 + 4) = v10;
    v11 = *(a3 + 8);
    v12 = v11 - 8;
    if (v11 - 8) < 6 && ((0x33u >> v12))
    {
      *(a1 + 8) = dword_240AB57D0[v12];
      goto LABEL_12;
    }

    *(a1 + 8) = v11;
  }

  else
  {
    v11 = *(a3 + 8);
    v13 = v14;
    *a1 = HIDWORD(v14);
    *(a1 + 4) = v13;
    *(a1 + 8) = v11;
  }

  if (v11 == 14)
  {
    result = aj_get_texture_size(a2, a3, a1 + 16, a4, 0, 0, 0);
    if (result)
    {
LABEL_2:
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }
  }

LABEL_12:
  *(a1 + 80) = *(a3 + 40);
  *(a1 + 88) = *(a3 + 48);
  *(a1 + 96) = *(a3 + 56);
  return result;
}

unsigned int **aj_reset_texture_buffer_ptrs(unsigned int **result, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v4 = *(result + 43);
  v16[0] = v4;
  if (*(result + 1721))
  {
    v5 = 8 / *(result + 42);
  }

  else
  {
    v5 = v4 / 2;
  }

  v16[1] = v5;
  v16[2] = v5;
  v6 = *v3;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (a2 + 8);
    do
    {
      v9 = *(a3 + 8 * v7);
      *(a2 + (v7 << 7)) = v9;
      v10 = v16[v7];
      if (v10 >= 2)
      {
        v11 = result[v7 + 12];
        v12 = v11 + v9;
        v13 = v10 - 1;
        v14 = v8;
        do
        {
          *v14++ = v12;
          v12 += v11;
          --v13;
        }

        while (v13);
      }

      ++v7;
      v8 += 16;
    }

    while (v7 != v6);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_get_rowptrs(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 6464);
  if (v4 < 1)
  {
LABEL_9:
    result = 0;
    *(a2 + 560) = 1;
  }

  else
  {
    v7 = 0;
    v8 = a1 + 6704;
    v9 = a1 + 6684;
    while (1)
    {
      v10 = *(v9 + 4 * v7);
      if (v10)
      {
        break;
      }

LABEL_8:
      ++v7;
      a3 += 16;
      if (v7 >= v4)
      {
        goto LABEL_9;
      }
    }

    v11 = *(v8 + 16 * v7 + 8);
    v12 = a3;
    while (1)
    {
      buffer = aj_rowbuffer_get_buffer((a2 + 152), v11);
      *v12 = buffer;
      if (!buffer)
      {
        return 1;
      }

      ++v12;
      if (!--v10)
      {
        v4 = *(a1 + 6464);
        goto LABEL_8;
      }
    }
  }

  return result;
}

void aj_return_rowptrs(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = *(a1 + 6464);
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = a1 + 6684;
    do
    {
      v9 = *(v8 + 4 * v7);
      v10 = a3;
      if (v9)
      {
        do
        {
          v11 = *v10++;
          aj_rowbuffer_return_buffer((a2 + 152), v11);
          --v9;
        }

        while (v9);
        v4 = *(a1 + 6464);
      }

      ++v7;
      a3 += 16;
    }

    while (v7 < v4);
  }

  *(a2 + 560) = 0;
}

uint64_t aj_get_jpeg_format_from_subsampling(unint64_t a1, int a2)
{
  if (a2 == 1)
  {
    return 4;
  }

  v3 = HIDWORD(a1);
  if (a1 == 1 && v3 == 1)
  {
    return 0;
  }

  if (a1 == 2 && v3 == 1)
  {
    return 1;
  }

  if (a1 == 1 && v3 == 2)
  {
    return 2;
  }

  if (v3 == 2 && a1 == 2)
  {
    return 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aj_get_subsampling_from_jpeg_format(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_240AB5810[a1] | qword_240AB57E8[a1];
  }
}

uint64_t aj_get_format_description(int a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0x100000003;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_240AB57A0;
  switch(a1)
  {
    case 0:
    case 6:
      result = 0;
      v5 = 3;
      goto LABEL_19;
    case 1:
    case 2:
      goto LABEL_13;
    case 3:
    case 4:
    case 15:
      result = 0;
      v4 = 4;
      goto LABEL_16;
    case 5:
      result = 0;
      v4 = 1;
LABEL_16:
      *a2 = v4;
      goto LABEL_17;
    case 7:
      result = 0;
      v4 = 2;
      *(a2 + 24) = 2;
      goto LABEL_17;
    case 8:
      goto LABEL_11;
    case 9:
      *(a2 + 32) = 0x100000002;
LABEL_11:
      result = 0;
      *(a2 + 24) = 0x100000002;
      goto LABEL_26;
    case 10:
      goto LABEL_24;
    case 11:
      *(a2 + 32) = 0x100000002;
LABEL_24:
      result = 0;
      v8 = 0x200000002;
      goto LABEL_25;
    case 12:
      goto LABEL_22;
    case 13:
      *(a2 + 32) = 0x100000002;
LABEL_22:
      result = 0;
      v8 = 0x200000001;
LABEL_25:
      *(a2 + 24) = v8;
      goto LABEL_26;
    case 14:
    case 25:
      result = 0;
      v6 = xmmword_240AB57B0;
      goto LABEL_29;
    case 16:
    case 17:
    case 21:
      result = 0;
      *a2 = 4;
      v4 = 8;
      goto LABEL_17;
    case 18:
      *a2 = 1;
LABEL_13:
      result = 0;
      v5 = 2;
      goto LABEL_19;
    case 19:
      result = 0;
      *(a2 + 24) = 0x200000002;
      *(a2 + 4) = 0x200000002;
      v7 = 4;
      goto LABEL_27;
    case 20:
      result = 0;
      v5 = 6;
LABEL_19:
      *(a2 + 8) = v5;
      break;
    case 22:
    case 23:
      result = 0;
      *a2 = 2;
      if (a1 == 22)
      {
        v4 = 2;
      }

      else
      {
        v4 = 4;
      }

LABEL_17:
      *(a2 + 8) = v4;
      break;
    case 24:
      result = 0;
      *(a2 + 28) = 1;
LABEL_26:
      *(a2 + 4) = 0x100000002;
      v7 = 2;
LABEL_27:
      *(a2 + 12) = v7;
      break;
    case 26:
      result = 0;
      v6 = xmmword_240AB57C0;
LABEL_29:
      *(a2 + 4) = v6;
      break;
    default:
      result = 1;
      break;
  }

  return result;
}