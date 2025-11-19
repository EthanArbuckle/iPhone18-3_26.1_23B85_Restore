uint64_t ddp_udc_int_hmac_obf_sha256_init(_OWORD *a1)
{
  v1 = 0;
  v11 = *MEMORY[0x1E69E9840];
  qmemcpy(v10, "2c16951c38232060d8975aa6cbdc54813142dc269dcc5d437697206c93871de4", sizeof(v10));
  v2 = v9;
  memset(v9, 0, sizeof(v9));
  do
  {
    if (v2 >= v10 || v2 < v9)
    {
      __break(0x5519u);
    }

    v3 = *(v10 + v1);
    if (v3 <= 0x57)
    {
      v4 = 0;
    }

    else
    {
      v4 = 9;
    }

    v5 = v4 + v3;
    v6 = *(v10 + v1 + 1);
    if (v6 <= 0x57)
    {
      v7 = -48;
    }

    else
    {
      v7 = -87;
    }

    *v2++ = (v6 + 16 * v5 + v7) ^ 0x7A;
    v1 += 2;
  }

  while (v1 != 64);
  return ddp_udc_int_hmac_sha256_init(a1, v9, 0x20uLL);
}

unsigned __int16 *ddp_udc_int_dil_brw_read(unsigned __int16 *result, unsigned int a2, uint64_t *a3)
{
  if (result)
  {
    if (a3)
    {
      v3 = *(result + 4);
      if (v3 >= a2)
      {
        *(result + 4) = v3 - a2;
        *a3 = 0;
        v4 = *result;
        if (v4 <= a2)
        {
          v5 = *(result + 3);
          do
          {
            v6 = *a3 << v4;
            *a3 = v6;
            v7 = *(result + 1);
            if (v7 >= *(result + 2) || v7 < v5)
            {
              goto LABEL_17;
            }

            *a3 = v6 | *v7 & ~(-1 << v4);
            LOWORD(a2) = a2 - v4;
            LOWORD(v4) = 8;
            *result = 8;
            ++*(result + 1);
            *(result + 3) = v5;
          }

          while (a2 > 7u);
        }

        if (a2)
        {
          v9 = *a3 << a2;
          *a3 = v9;
          v10 = *(result + 1);
          if (v10 >= *(result + 2) || v10 < *(result + 3))
          {
LABEL_17:
            __break(0x5519u);
            return result;
          }

          v11 = v4 - a2;
          *a3 = v9 | (*v10 >> v11) & ~(-1 << a2);
          *result = v11;
        }
      }
    }
  }

  return result;
}

__int16 *ddp_udc_int_unpgaqgains(__int16 *result, void *a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(a3 + 24);
  v5 = 4 * (*(a3 + 26) << *(a3 + 24));
  if (v4 < 15)
  {
    v11 = v4 + 2;
  }

  else
  {
    v6 = (*a3 + 2);
    v7 = *a3 + 4;
    if (v7 > *(a3 + 8) || v6 > v7 || v6 < *(a3 + 16))
    {
LABEL_126:
      __break(0x5519u);
      return result;
    }

    v10 = *v6;
    v11 = v4 - 14;
    *(a3 + 26) = v10;
    *a3 = v6;
    v5 |= v10 << v11;
  }

  v12 = HIWORD(v5);
  *(a3 + 24) = v11;
  if (HIWORD(v5))
  {
    if (v5 >> 16 > 2)
    {
      if (v12 == 3)
      {
        v58 = result[1];
        v59 = *result;
        *a4 += 2 * v59;
        v60 = a2[1];
        v61 = (*a2 + 2 * *result);
        result = a2[2];
        *a2 = v61;
        if (v58 != v59)
        {
          v62 = 0;
          LOWORD(v63) = 0;
          v64 = v58 + ~v59;
          while (1)
          {
            v65 = v61 >= v61 + 1 || (v61 + 1) > v60;
            if (v65 || v61 < result)
            {
              goto LABEL_126;
            }

            if (*v61 - 8 > 8)
            {
              v67 = *a4;
              v68 = a4[1];
              result = a4[2];
              v69 = *a4 + 2;
              *a4 = v69;
              if (v69 > v68 || v67 > v69 || v67 < result)
              {
                goto LABEL_126;
              }

              *v67 = -1;
            }

            else
            {
              if (v62 <= 0)
              {
                v72 = *(a3 + 24);
                v73 = 32 * (*(a3 + 26) << *(a3 + 24));
                if (v72 < 12)
                {
                  v77 = v72 + 5;
                }

                else
                {
                  result = *(a3 + 8);
                  v74 = *a3 + 4;
                  if (v74 > result)
                  {
                    goto LABEL_126;
                  }

                  v75 = (*a3 + 2);
                  if (v75 > v74 || v75 < *(a3 + 16))
                  {
                    goto LABEL_126;
                  }

                  v76 = *v75;
                  v77 = v72 - 11;
                  *(a3 + 26) = v76;
                  *a3 = v75;
                  v73 |= v76 << v77;
                }

                *(a3 + 24) = v77;
                v63 = ddp_udc_int_gbl_ungrp3 + ((HIWORD(v73) << 48) >> 47);
                v78 = v63 + 2;
                if (v63 < ddp_udc_int_gbl_ungrp3 || v78 > &ddp_udc_int_mantcodemasktab || v63 > v78)
                {
                  goto LABEL_126;
                }

                LOWORD(v63) = *v63;
                v62 = 2;
              }

              else
              {
                --v62;
              }

              v81 = &word_19B3032E6[v63 & 0xF];
              if (v81 < word_19B3032E6)
              {
                goto LABEL_126;
              }

              if (v81 + 1 > ddp_udc_int_gbl_ungrp3)
              {
                goto LABEL_126;
              }

              if (v81 > v81 + 1)
              {
                goto LABEL_126;
              }

              v82 = *v81;
              v84 = *a4;
              v83 = a4[1];
              result = a4[2];
              v85 = *a4 + 2;
              *a4 = v85;
              if (v85 > v83 || v84 > v85 || v84 < result)
              {
                goto LABEL_126;
              }

              *v84 = v82;
              LODWORD(v63) = v63 >> 4;
            }

            v60 = a2[1];
            v61 = (*a2 + 2);
            result = a2[2];
            *a2 = v61;
            v22 = v64-- == 0;
            if (v22)
            {
              return result;
            }
          }
        }
      }
    }

    else
    {
      if (v12 == 1)
      {
        v23 = 11;
      }

      else
      {
        v23 = 16;
      }

      v24 = result[1];
      v25 = *result;
      *a4 += 2 * v25;
      v26 = a2[1];
      v27 = (*a2 + 2 * *result);
      v28 = a2[2];
      *a2 = v27;
      if (v24 != v25)
      {
        v29 = v24 + ~v25;
        v30 = &ddp_udc_int_gaq_codetogaintab + 6 * v12;
        while (1)
        {
          v31 = v27 >= v27 + 1 || (v27 + 1) > v26;
          if (v31 || v27 < v28)
          {
            goto LABEL_126;
          }

          v33 = *v27;
          if (v33 < 8 || v23 < v33)
          {
            v35 = *a4;
            v36 = a4[1];
            v37 = a4[2];
            v38 = *a4 + 2;
            *a4 = v38;
            if (v38 > v36 || v35 > v38 || v35 < v37)
            {
              goto LABEL_126;
            }

            *v35 = -1;
          }

          else
          {
            v41 = *(a3 + 24);
            v42 = 2 * (*(a3 + 26) << *(a3 + 24));
            if (v41 < 16)
            {
              v48 = v41 + 1;
            }

            else
            {
              result = *(a3 + 16);
              v43 = (*a3 + 2);
              v44 = *a3 + 4;
              if (v44 > *(a3 + 8) || v43 > v44 || v43 < result)
              {
                goto LABEL_126;
              }

              v47 = *v43;
              v48 = v41 - 15;
              *(a3 + 26) = v47;
              *a3 = v43;
              v42 |= v47 << v48;
            }

            *(a3 + 24) = v48;
            v49 = &v30[(HIWORD(v42) << 48) >> 47];
            v50 = (v49 + 2);
            if (v49 < v30 || v50 > (v30 + 6) || v49 > v50)
            {
              goto LABEL_126;
            }

            v53 = *v49;
            v54 = *a4;
            v55 = a4[1];
            v56 = a4[2];
            v57 = *a4 + 2;
            *a4 = v57;
            if (v57 > v55 || v54 > v57 || v54 < v56)
            {
              goto LABEL_126;
            }

            *v54 = v53;
          }

          v26 = a2[1];
          v27 = (*a2 + 2);
          v28 = a2[2];
          *a2 = v27;
          v22 = v29-- == 0;
          if (v22)
          {
            return result;
          }
        }
      }
    }
  }

  else
  {
    v13 = result[1];
    v14 = *result;
    *a4 += 2 * v14;
    if (v13 != v14)
    {
      v15 = v13 + ~v14;
      v16 = a4[2];
      while (1)
      {
        v17 = *a4;
        v18 = a4[1];
        v19 = *a4 + 2;
        *a4 = v19;
        v20 = v19 > v18 || v17 > v19;
        if (v20 || v17 < v16)
        {
          break;
        }

        *v17 = -1;
        v22 = v15-- == 0;
        if (v22)
        {
          return result;
        }
      }

      goto LABEL_126;
    }
  }

  return result;
}

__int16 *ddp_udc_int_ahtd_getdither(__int16 *result, _WORD *a2, _WORD *a3)
{
  if (*result <= 0)
  {
    goto LABEL_5;
  }

  v3 = 0;
  do
  {
    v4 = *(result + 1);
    v5 = 3 - 17547 * *v4;
    *v4 = 3 - 17547 * v5;
    *a3 = (28378 * (((3 - 17547 * v5) + v5) >> 1)) >> 15;
    --*a2;
    ++v3;
    v6 = *result;
  }

  while (v3 < v6);
  if (v6 < 1)
  {
LABEL_5:
    v7 = 1;
    do
    {
      *a3 = 0;
      *a2 = 24;
      --v7;
    }

    while (v7 > *result);
  }

  return result;
}

uint64_t ddp_udc_int_inversedct(uint64_t result, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = (a3 + 8);
  v6 = (a4 + 16);
  v7 = 6;
  v8 = &word_19B303346;
  while (1)
  {
    v9 = v5[1];
    v10 = (*(v5 - 1) + 2 * v4);
    v11 = (v10 + 1) > *v5 || v10 >= v10 + 1;
    if (v11 || v10 < v9)
    {
      break;
    }

    v13 = *a2;
    v14 = *(v8 - 3);
    v15 = a2[1];
    result = *(v8 - 2);
    v16 = a2[2];
    v17 = *(v8 - 1);
    v18 = a2[3];
    v19 = *v8;
    v20 = v8[1];
    v21 = a2[4];
    v22 = a2[5];
    v23 = v8[2];
    *v10 -= 3;
    v24 = (*(v5 - 1) + 2 * v4);
    if (v24)
    {
      if (v24 >= v24 + 1 || (v24 + 1) > *v5 || v24 < v9)
      {
        break;
      }
    }

    v25 = (*(v6 - 2) + 4 * v4);
    if (v25 >= v25 + 1 || (v25 + 2) > *(v6 - 1) || v25 > v25 + 2 || v25 < *v6)
    {
      break;
    }

    v26 = v14 * v13 + result * v15 + v17 * v16 + v19 * v18 + v21 * v20 + v23 * v22;
    if (v26 >= 2)
    {
      v29 = v26 >> 1;
      v30 = __clz((v26 >> 1) ^ (v26 >> 31)) - 2;
      v31 = v29 << v30;
      v28 = *v24 + v30;
      v27 = v31 >> 15;
    }

    else
    {
      LOWORD(v27) = 0;
      v28 = 24;
    }

    v8 += 6;
    *v24 = v28;
    *v25 = v27;
    v5 += 3;
    v6 += 3;
    if (!--v7)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_remapmant(uint64_t result, int a2, int a3, int a4, _WORD *a5)
{
  v5 = &ddp_udc_int_positive_remaptab + 12 * result + 4 * a2;
  v6 = v5 - 96;
  if (v5 - 96 > v5 - 94)
  {
    goto LABEL_22;
  }

  v7 = *v6;
  v8 = *(v6 + 1);
  LOWORD(v9) = a4;
  if (a4 < 0)
  {
    if (!a2)
    {
      LODWORD(v9) = -a4;
      goto LABEL_9;
    }

    v10 = &ddp_udc_int_mantcodemasktab[2 * a3];
    v9 = v10 - 4;
    if (v10 - 4 >= ddp_udc_int_mantcodemasktab)
    {
      v11 = v10 - 2;
      if (v11 <= ddp_udc_int_idct_kerneltab && v9 <= v11)
      {
        LOWORD(v9) = *v9 ^ a4;
        goto LABEL_9;
      }
    }

LABEL_22:
    __break(0x5519u);
    return result;
  }

LABEL_9:
  v12 = v9 * v7;
  if (v12 >= 0x3FFFFFFF)
  {
    v12 = 0x3FFFFFFF;
  }

  v13 = v9 + (v12 >> 15);
  if (v13 >= 0x7FFF)
  {
    v13 = 0x7FFF;
  }

  if (v13 <= -32768)
  {
    v13 = -32768;
  }

  v14 = v13 + v8;
  if (v14 >= 0x7FFF)
  {
    v14 = 0x7FFF;
  }

  if (v14 <= -32768)
  {
    v14 = -32768;
  }

  if (a4 < 0)
  {
    v14 = -v14;
  }

  *a5 = v14;
  return result;
}

uint64_t ddp_udc_int_jocdec_query_mem(uint64_t result, int *a2)
{
  v2 = *a2;
  if (0x18u % *a2)
  {
    return 6;
  }

  v4 = result;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 4 * (v2 << 11);
  if (*(a2 + 4) != 48000)
  {
    return 6;
  }

  v5 = a2[10];
  v6 = a2[11];
  if (!*(a2 + 5))
  {
    return 6;
  }

  v7 = a2[1];
  v17[0] = v2;
  v17[1] = v7;
  v19 = v5;
  v20 = v6;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v8 > v9 || (v9 - v8) < 29 || *(a2 + 3) > v8)
  {
    __break(0x5519u);
  }

  else
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = v10;
    v18[0] = v10;
    init_channel_mapping(v18, v8);
    v22 = 20424;
    v21 = 528;
    v11 = *v4;
    v12 = v4[1];
    ddp_udc_int_converter_query_mem(&v22, &v21, v17);
    v13 = *a2;
    v14 = a2[1];
    v15 = v22 + v11 + 168 * v13 + 24 * (8 * v14) + 384 * v13;
    v16 = v21 + v12 + 4 * (896 * *a2) + 4 * (v14 << 10) + 683;
    v4[1] = v16;
    if (!a2[10])
    {
      v4[1] = v16 + 4 * (v13 << 11);
    }

    result = 0;
    *v4 = 168 * v13 + 48 * v13 + 360 * v13 + v15 + 32118;
  }

  return result;
}

unint64_t init_channel_mapping(unint64_t result, uint64_t a2)
{
  for (i = 0; i != 7; ++i)
  {
    for (j = 0; j != 8; ++j)
    {
      if (*(a2 + 4 * j) == init_channel_mapping_dmx_config_channels[i])
      {
        break;
      }
    }

    *(result + 4 * i) = j;
  }

  for (k = 0; k != 8; ++k)
  {
    if (*(a2 + 4 * k) == 3)
    {
      break;
    }
  }

  v5 = (result + 28);
  if (result + 28 > result + 32 || v5 < result)
  {
    __break(0x5519u);
  }

  else
  {
    *v5 = k;
  }

  return result;
}

uint64_t set_operating_state(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (result == 8 && *(a4 + 8))
  {
    v4 = 3;
LABEL_48:
    *(a4 + 8) = v4;
    return result;
  }

  if (!a2 && (result == 9 || !result) && *(a4 + 8))
  {
    *(a4 + 8) = 4;
    *a4 = 0;
    return result;
  }

  v5 = *(a4 + 8);
  if (v5 > 2)
  {
    if ((v5 - 4) >= 2)
    {
      if (v5 != 3)
      {
        goto LABEL_43;
      }

      if (result != 9 && result)
      {
        ++*(a4 + 4);
        v5 = 3;
        goto LABEL_39;
      }

      goto LABEL_24;
    }

    if (result == 9 || !result)
    {
      *a4 = a2;
      *(a4 + 4) = 0x100000000;
      goto LABEL_44;
    }

    if (*a4 == 1023)
    {
      v8 = 1;
    }

    else
    {
      v8 = *a4 + 1;
    }

    ++*(a4 + 4);
    *(a4 + 8) = 2;
    *a4 = v8;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (result && result != 9)
        {
          v5 = 2;
          v7 = *(a4 + 4) + 1;
          *(a4 + 8) = 2;
LABEL_38:
          *(a4 + 4) = v7;
        }

LABEL_39:
        if (*a4 == 1023)
        {
          v9 = 1;
        }

        else
        {
          v9 = *a4 + 1;
        }

        *a4 = v9;
LABEL_43:
        if (v5 != 1)
        {
          return result;
        }

LABEL_44:
        if (result == 9)
        {
          *a4 = 0;
          v4 = 4;
        }

        else
        {
          if (*a4 == a2)
          {
            return result;
          }

          *a4 = 0;
          v4 = 5;
        }

        goto LABEL_48;
      }

      if (v5 != 2)
      {
        goto LABEL_43;
      }

      if (result != 9 && result)
      {
        v6 = *(a4 + 4);
        if (v6 == a3)
        {
          v5 = 3;
          *(a4 + 8) = 3;
        }

        else
        {
          v5 = 2;
        }

        v7 = v6 + 1;
        goto LABEL_38;
      }

LABEL_24:
      *(a4 + 4) = 0x100000000;
      v5 = 1;
      goto LABEL_39;
    }

    if (result == 9 || !result)
    {
      *(a4 + 8) = 1;
      *a4 = a2;
      goto LABEL_44;
    }
  }

  return result;
}

_DWORD *ddp_udc_int_dvlim_init(unsigned int a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a2 + a3;
  result = ((a2 + 31) & 0xFFFFFFFFFFFFFFE0);
  v8 = result + 44;
  if (result >= a2 && v8 <= v6)
  {
    v10 = 0;
    *result = 0;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 4) = 0x3B8000003F800000;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0xC) = 0;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x10) = 0;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x18) = 0x20FFFFFFFFLL;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x14) = a1;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x28) = 0;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x74) = 1065353216;
    __asm { FMOV            V1.2S, #1.0 }

    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x6C) = _D1;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x5C) = 0x3F80000000000000;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0xAC) = 998244352;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x58) = 32;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x30) = 0u;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x40) = ddp_udc_int_p_dvlim_win_32;
    v15 = a1;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x50) = &ddp_udc_int_a_dvlim_win_32;
    v16 = a4 + a5;
    v17 = 3 * a1;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x64) = 0x300000000;
    v18 = a2 + 24 * a1;
    v19 = v18 + 47 * a1;
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = a2;
    }

    if (!a4)
    {
      v16 = a2 + a3;
    }

    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x78) = (a2 + 238) & 0xFFFFFFFFFFFFFFE0;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x80) = v6;
    v21 = 8 * v17;
    v22 = v19 + 238;
    if (a4)
    {
      v22 = a4;
    }

    v23 = (v22 + 31) & 0xFFFFFFFFFFFFFFE0;
    v24 = -238 - v18;
    v25 = v18 + 269;
    v26 = v21 + 238;
    *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x88) = a2;
    while (1)
    {
      v27 = (*(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x78) + v10);
      _CF = (v27 + 3) > *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x80) || v27 >= v27 + 3;
      if (_CF || v27 < *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x88))
      {
        break;
      }

      *v27 = a2 + v26 + v24 + (v25 & 0xFFFFFFFFFFFFFFE0);
      v27[1] = v6;
      v27[2] = a2;
      v30 = *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x58);
      v31 = *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x78);
      v32 = v31 + v10;
      v33 = v31 + v10 + 24;
      v36 = v33 <= *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x80) && v32 <= v33 && v32 >= *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x88);
      if (v30 == 40)
      {
        if (!v36 || v16 < v23 || v20 > v23 || (v16 - v23) < 157)
        {
          break;
        }

        v37 = v31 + v10;
        v38 = *v37;
        if (*v37)
        {
          v40 = *(v37 + 8);
          v39 = *(v37 + 16);
          v41 = (v38 + 2) > v40 || v38 >= v38 + 2;
          if (v41 || v38 < v39)
          {
            break;
          }
        }

        *v38 = 0x2800000000;
        v38[1] = v23;
        v30 = 40;
        v43 = 40;
      }

      else
      {
        if (!v36)
        {
          break;
        }

        if (v23 > v16)
        {
          break;
        }

        if (v20 > v23)
        {
          break;
        }

        v44 = (v30 + 31) & 0xFFFFFFE0;
        v45 = v44 + 32;
        if (v45 > (v16 - v23) >> 2)
        {
          break;
        }

        v46 = v31 + v10;
        v47 = *(v31 + v10);
        if (v47)
        {
          if (v47 + 16 > *(v46 + 8) || v47 > v47 + 16 || v47 < *(v46 + 16))
          {
            break;
          }
        }

        *(v47 + 8) = v23;
        v43 = v44 + 64;
        *v47 = 0;
        *(v47 + 4) = v45;
      }

      v23 += 4 * v43;
      v10 += 24;
      v25 += 47;
      v26 += 47;
      v24 -= 47;
      if (!--v15)
      {
        if (result <= v8 && result + 37 <= result + 39)
        {
          v48 = *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x40);
          if (!v48 || v48 < v48 + 4 && v48 + 4 <= *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x48) && v48 >= *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x50))
          {
            *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x94) = 0;
            *(((a2 + 31) & 0xFFFFFFFFFFFFFFE0) + 0x98) = v30;
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

uint64_t dvlim_clear_delay_lines_0(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = 0;
    v3 = *(result + 136);
    while (1)
    {
      v4 = (*(result + 120) + 24 * v2);
      v5 = (v4 + 3) > *(result + 128) || v4 >= v4 + 3;
      if (v5 || v4 < v3)
      {
        break;
      }

      v7 = *v4;
      if (*v4)
      {
        v10 = v4 + 1;
        v8 = v4[1];
        v9 = v10[1];
        v11 = v7 >= v7 + 16 || v7 + 16 > v8;
        if (v11 || v7 < v9)
        {
          break;
        }
      }

      v13 = ((*(result + 88) + 31) & 0xFFFFFFE0) + 64;
      v14 = *(v7 + 4);
      v15 = *(v7 + 8);
      v16 = &v15[v14];
      v17 = v16 + 128;
      v18 = (v16 + 128 - 4 * v13);
      if (v18 >= v15)
      {
        if (((*(result + 88) + 31) & 0xFFFFFFE0) != 0xFFFFFFC0)
        {
          do
          {
            v21 = (v18 + 1) > v16 || v18 >= v18 + 1;
            if (v21 || v18 < v15)
            {
              goto LABEL_40;
            }

            *v18++ = 0;
          }

          while (--v13);
        }
      }

      else if ((v17 - v15) >= 1)
      {
        v19 = (v17 - v15) >> 2;
        v20 = v15;
        while (v20 >= v15 && v20 < v20 + 1 && (v20 + 1) <= v16)
        {
          *v20++ = 0;
          if (!--v19)
          {
            goto LABEL_38;
          }
        }

        break;
      }

LABEL_38:
      if (++v2 == v1)
      {
        return result;
      }
    }

LABEL_40:
    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_dvlim_set_sample_rate(uint64_t result, int a2)
{
  if (*(result + 24) != a2)
  {
    v2 = *(result + 88);
    if ((v2 - 32) <= 0x20 && ((1 << (v2 - 32)) & 0x100000101) != 0)
    {
      if (a2 <= 63999)
      {
        if (a2 > 44099)
        {
          if (a2 == 44100)
          {
            switch(v2)
            {
              case ' ':
                v4 = &off_1E752EAD8;
                break;
              case '@':
                v4 = &off_1E752EB68;
                break;
              case '(':
                v4 = &off_1E752EB20;
                break;
              default:
                return result;
            }
          }

          else
          {
            if (a2 != 48000)
            {
              return result;
            }

            switch(v2)
            {
              case ' ':
                v4 = &off_1E752EAD0;
                break;
              case '@':
                v4 = &off_1E752EB60;
                break;
              case '(':
                v4 = &off_1E752EB18;
                break;
              default:
                return result;
            }
          }
        }

        else if (a2 == 24000)
        {
          switch(v2)
          {
            case ' ':
              v4 = &off_1E752EAE8;
              break;
            case '@':
              v4 = &off_1E752EB78;
              break;
            case '(':
              v4 = &off_1E752EB30;
              break;
            default:
              return result;
          }
        }

        else
        {
          if (a2 != 32000)
          {
            return result;
          }

          switch(v2)
          {
            case ' ':
              v4 = &off_1E752EAE0;
              break;
            case '@':
              v4 = &off_1E752EB70;
              break;
            case '(':
              v4 = &off_1E752EB28;
              break;
            default:
              return result;
          }
        }
      }

      else if (a2 <= 95999)
      {
        if (a2 == 64000)
        {
          switch(v2)
          {
            case ' ':
              v4 = &off_1E752EAC8;
              break;
            case '@':
              v4 = &off_1E752EB58;
              break;
            case '(':
              v4 = &off_1E752EB10;
              break;
            default:
              return result;
          }
        }

        else
        {
          if (a2 != 88200)
          {
            return result;
          }

          switch(v2)
          {
            case ' ':
              v4 = &off_1E752EAC0;
              break;
            case '@':
              v4 = &off_1E752EB50;
              break;
            case '(':
              v4 = &off_1E752EB08;
              break;
            default:
              return result;
          }
        }
      }

      else
      {
        switch(a2)
        {
          case 96000:
            switch(v2)
            {
              case ' ':
                v4 = &off_1E752EAB8;
                break;
              case '@':
                v4 = &off_1E752EB48;
                break;
              case '(':
                v4 = &off_1E752EB00;
                break;
              default:
                return result;
            }

            break;
          case 176400:
            switch(v2)
            {
              case ' ':
                v4 = &off_1E752EAB0;
                break;
              case '@':
                v4 = &off_1E752EB40;
                break;
              case '(':
                v4 = &off_1E752EAF8;
                break;
              default:
                return result;
            }

            break;
          case 192000:
            switch(v2)
            {
              case ' ':
                v4 = &ddp_udc_int_ap_dvlim_coefs_32;
                break;
              case '@':
                v4 = &ddp_udc_int_ap_dvlim_coefs_64;
                break;
              case '(':
                v4 = &ddp_udc_int_ap_dvlim_coefs_40;
                break;
              default:
                return result;
            }

            break;
          default:
            return result;
        }
      }

      v5 = *v4;
      if (v5)
      {
        *(result + 24) = a2;
        *(result + 40) = v5;
        *(result + 48) = v5 + 4;
        *(result + 56) = v5;
        *(result + 108) = 1065353216;
        *(result + 116) = 1065353216;
      }
    }
  }

  return result;
}

unint64_t pacgrp3(unint64_t result, int a2, unsigned __int16 *a3, __int128 *a4)
{
  v7 = *a3;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      a3[1] += 3 * result;
      goto LABEL_48;
    }

    if (*a3)
    {
      goto LABEL_48;
    }

    a3[1] = 9 * result;
    v8 = *a4;
    *(a3 + 3) = *(a4 + 2);
    *(a3 + 4) = v8;
    v9 = *(a4 + 12);
    a3[16] = v9;
    v10 = v9 + a2;
    *(a4 + 12) = v10;
    if (v10 < 16)
    {
      goto LABEL_48;
    }

    v11 = *a4;
    v12 = *(a4 + 2);
    while (1)
    {
      v13 = (v11 + 1) > *(a4 + 1) || v11 > v11 + 1;
      if (v13 || v11 < v12)
      {
        goto LABEL_45;
      }

      *v11 = *(a4 + 13);
      v11 = (*a4 + 2);
      *a4 = v11;
      *(a4 + 2) = v12;
      v15 = (*(a4 + 12) - 16);
      *(a4 + 12) -= 16;
      *(a4 + 13) = 0;
      if (v15 <= 15)
      {
        goto LABEL_48;
      }
    }
  }

  v6 = a3[1] + result;
  a3[1] += result;
  v5 = a3[16];
  v4 = ddp_udc_int_gbl_msktab;
  v16 = &ddp_udc_int_gbl_msktab[v5];
  v17 = v16 + 1;
  if (v16 >= ddp_udc_int_gbl_msktab && v17 <= ddp_udc_int_gbl_chanary && v16 <= v17)
  {
    v20 = *(a3 + 1);
    v21 = *(a3 + 2);
    v22 = *(a3 + 3);
    v23 = *v16;
    v24 = v5 + a2;
    if (v5 + a2 <= 15)
    {
      v25 = &ddp_udc_int_gbl_msktab[v24];
      if (v25 < ddp_udc_int_gbl_msktab)
      {
        goto LABEL_45;
      }

      result = (v25 + 1);
      if (v25 + 1 > ddp_udc_int_gbl_chanary || v25 > result)
      {
        goto LABEL_45;
      }

      v23 |= ~*v25;
    }

    if (a4 && v20 == *a4)
    {
      v26 = a4 + 13;
    }

    else
    {
      if (v20 + 2 > v21)
      {
        goto LABEL_45;
      }

      if (v20 > v20 + 2)
      {
        goto LABEL_45;
      }

      v26 = *(a3 + 1);
      if (v20 < v22)
      {
        goto LABEL_45;
      }
    }

    v6 = v6 << (16 - a2);
    result = *v26;
    *v26 = result & v23 | (v6 >> v5);
    if (v24 < 16)
    {
      goto LABEL_48;
    }

    LOBYTE(v5) = v24 - 16;
    v27 = &ddp_udc_int_gbl_msktab[(v24 - 16)];
    if (v27 >= ddp_udc_int_gbl_msktab)
    {
      v4 = v27 + 1;
      if (v27 + 1 <= ddp_udc_int_gbl_chanary && v27 <= v4)
      {
        v28 = (v20 + 2);
        LOWORD(v4) = *v27;
        if (a4 && v28 == *a4)
        {
          goto LABEL_46;
        }

        v29 = v20 + 4;
        if (v29 <= v21 && v28 <= v29 && v28 >= v22)
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_45:
  __break(0x5519u);
LABEL_46:
  v28 = a4 + 13;
LABEL_47:
  *v28 = *v28 & ~v4 | (v6 << (a2 - v5));
LABEL_48:
  v30 = *a3;
  if (v30 == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30 + 1;
  }

  *a3 = v31;
  return result;
}

__int16 *pacgrp5(__int16 *result, int a2, unsigned __int16 *a3, __int128 *a4)
{
  v7 = *a3;
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      a3[1] += 5 * result;
      goto LABEL_48;
    }

    if (*a3)
    {
      goto LABEL_48;
    }

    a3[1] = 25 * result;
    v8 = *a4;
    *(a3 + 3) = *(a4 + 2);
    *(a3 + 4) = v8;
    v9 = *(a4 + 12);
    a3[16] = v9;
    v10 = v9 + a2;
    *(a4 + 12) = v10;
    if (v10 < 16)
    {
      goto LABEL_48;
    }

    v11 = *a4;
    v12 = *(a4 + 2);
    while (1)
    {
      v13 = (v11 + 1) > *(a4 + 1) || v11 > v11 + 1;
      if (v13 || v11 < v12)
      {
        goto LABEL_45;
      }

      *v11 = *(a4 + 13);
      v11 = (*a4 + 2);
      *a4 = v11;
      *(a4 + 2) = v12;
      v15 = (*(a4 + 12) - 16);
      *(a4 + 12) -= 16;
      *(a4 + 13) = 0;
      if (v15 <= 15)
      {
        goto LABEL_48;
      }
    }
  }

  v6 = a3[1] + result;
  a3[1] += result;
  v5 = a3[16];
  v4 = ddp_udc_int_gbl_msktab;
  v16 = &ddp_udc_int_gbl_msktab[v5];
  v17 = v16 + 1;
  if (v16 >= ddp_udc_int_gbl_msktab && v17 <= ddp_udc_int_gbl_chanary && v16 <= v17)
  {
    v20 = *(a3 + 1);
    v21 = *(a3 + 2);
    v22 = *(a3 + 3);
    v23 = *v16;
    v24 = v5 + a2;
    if (v5 + a2 <= 15)
    {
      v25 = &ddp_udc_int_gbl_msktab[v24];
      if (v25 < ddp_udc_int_gbl_msktab)
      {
        goto LABEL_45;
      }

      result = v25 + 1;
      if (v25 + 1 > ddp_udc_int_gbl_chanary || v25 > result)
      {
        goto LABEL_45;
      }

      v23 |= ~*v25;
    }

    if (a4 && v20 == *a4)
    {
      v26 = a4 + 13;
    }

    else
    {
      if (v20 + 2 > v21)
      {
        goto LABEL_45;
      }

      if (v20 > v20 + 2)
      {
        goto LABEL_45;
      }

      v26 = *(a3 + 1);
      if (v20 < v22)
      {
        goto LABEL_45;
      }
    }

    v6 = v6 << (16 - a2);
    result = *v26;
    *v26 = result & v23 | (v6 >> v5);
    if (v24 < 16)
    {
      goto LABEL_48;
    }

    LOBYTE(v5) = v24 - 16;
    v27 = &ddp_udc_int_gbl_msktab[(v24 - 16)];
    if (v27 >= ddp_udc_int_gbl_msktab)
    {
      v4 = v27 + 1;
      if (v27 + 1 <= ddp_udc_int_gbl_chanary && v27 <= v4)
      {
        v28 = (v20 + 2);
        LOWORD(v4) = *v27;
        if (a4 && v28 == *a4)
        {
          goto LABEL_46;
        }

        v29 = v20 + 4;
        if (v29 <= v21 && v28 <= v29 && v28 >= v22)
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_45:
  __break(0x5519u);
LABEL_46:
  v28 = a4 + 13;
LABEL_47:
  *v28 = *v28 & ~v4 | (v6 << (a2 - v5));
LABEL_48:
  v30 = *a3;
  if (v30 == 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30 + 1;
  }

  *a3 = v31;
  return result;
}

__int16 *pacgrp11(__int16 *result, int a2, unsigned __int16 *a3, __int128 *a4)
{
  if (*a3 != 1)
  {
    if (*a3)
    {
      goto LABEL_46;
    }

    a3[1] = 11 * result;
    v7 = *a4;
    *(a3 + 3) = *(a4 + 2);
    *(a3 + 4) = v7;
    v8 = *(a4 + 12);
    a3[16] = v8;
    v9 = v8 + a2;
    *(a4 + 12) = v9;
    if (v9 < 16)
    {
      goto LABEL_46;
    }

    v10 = *a4;
    v11 = *(a4 + 2);
    while (1)
    {
      v12 = (v10 + 1) > *(a4 + 1) || v10 > v10 + 1;
      if (v12 || v10 < v11)
      {
        goto LABEL_43;
      }

      *v10 = *(a4 + 13);
      v10 = (*a4 + 2);
      *a4 = v10;
      *(a4 + 2) = v11;
      v14 = (*(a4 + 12) - 16);
      *(a4 + 12) -= 16;
      *(a4 + 13) = 0;
      if (v14 <= 15)
      {
        goto LABEL_46;
      }
    }
  }

  v6 = a3[1] + result;
  a3[1] += result;
  v5 = a3[16];
  v4 = ddp_udc_int_gbl_msktab;
  v15 = &ddp_udc_int_gbl_msktab[v5];
  v16 = v15 + 1;
  if (v15 >= ddp_udc_int_gbl_msktab && v16 <= ddp_udc_int_gbl_chanary && v15 <= v16)
  {
    v19 = *(a3 + 1);
    v20 = *(a3 + 2);
    v21 = *(a3 + 3);
    v22 = *v15;
    v23 = v5 + a2;
    if (v5 + a2 <= 15)
    {
      v24 = &ddp_udc_int_gbl_msktab[v23];
      if (v24 < ddp_udc_int_gbl_msktab)
      {
        goto LABEL_43;
      }

      result = v24 + 1;
      if (v24 + 1 > ddp_udc_int_gbl_chanary || v24 > result)
      {
        goto LABEL_43;
      }

      v22 |= ~*v24;
    }

    if (a4 && v19 == *a4)
    {
      v25 = a4 + 13;
    }

    else
    {
      if (v19 + 2 > v20)
      {
        goto LABEL_43;
      }

      if (v19 > v19 + 2)
      {
        goto LABEL_43;
      }

      v25 = *(a3 + 1);
      if (v19 < v21)
      {
        goto LABEL_43;
      }
    }

    v6 = v6 << (16 - a2);
    result = *v25;
    *v25 = result & v22 | (v6 >> v5);
    if (v23 < 16)
    {
      goto LABEL_46;
    }

    LOBYTE(v5) = v23 - 16;
    v26 = &ddp_udc_int_gbl_msktab[(v23 - 16)];
    if (v26 >= ddp_udc_int_gbl_msktab)
    {
      v4 = v26 + 1;
      if (v26 + 1 <= ddp_udc_int_gbl_chanary && v26 <= v4)
      {
        v27 = (v19 + 2);
        LOWORD(v4) = *v26;
        if (a4 && v27 == *a4)
        {
          goto LABEL_44;
        }

        v28 = v19 + 4;
        if (v28 <= v20 && v27 <= v28 && v27 >= v21)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_43:
  __break(0x5519u);
LABEL_44:
  v27 = a4 + 13;
LABEL_45:
  *v27 = *v27 & ~v4 | (v6 << (a2 - v5));
LABEL_46:
  v29 = *a3;
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29 + 1;
  }

  *a3 = v30;
  return result;
}

uint64_t ddp_udc_int_expd_saveptrs(uint64_t result, __int16 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = &startPos2[result];
  v6 = v5 + 1;
  if (v5 < startPos2 || v6 > gray_245 || v5 >= v6)
  {
    __break(0x5519u);
  }

  else
  {
    v9 = *(a4 + 16);
    *(a5 + 8) = *a4;
    v10 = *v5;
    v11 = a2[1] - *a2;
    v12 = v11 / (3 * v10);
    if (3 * v10 * v12 >= v11 - 1)
    {
      v13 = v11 / (3 * v10);
    }

    else
    {
      v13 = v12 + 1;
    }

    *a5 = v10;
    *(a5 + 2) = v13;
    *(a5 + 4) = a3;
    *(a5 + 24) = v9;
    *(a5 + 40) = *(a4 + 32);
    return ddp_udc_int_bsod_skip(a4, 7 * v13 + 4);
  }

  return result;
}

unint64_t ddp_udc_int_expd_unp(__int16 a1, unsigned __int16 *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = a2[16];
  v9 = a2[17];
  v10 = a3[1];
  v11 = a3[2];
  v12 = (*a3 + 2 * a1);
  *a3 = v12;
  result = 1794;
  if (v3 <= 4 && ((1 << v3) & 0x16) != 0)
  {
    result = 16 * (v9 << v8);
    if (v8 < 13)
    {
      v15 = v8 + 4;
    }

    else
    {
      v14 = v5 + 2;
      if ((v5 + 2) > v6)
      {
        goto LABEL_75;
      }

      if (++v5 > v14 || v5 < v7)
      {
        goto LABEL_75;
      }

      v9 = *v5;
      v15 = v8 - 12;
      LODWORD(result) = (v9 << v15) | result;
    }

    v16 = WORD1(result);
    if (*(a2 + 1))
    {
      v16 = 2 * (WORD1(result) & 0x7FFF);
      if (v4)
      {
        goto LABEL_11;
      }

      return 0;
    }

    result = (v12 + 1);
    *a3 = (v12 + 1);
    if ((v12 + 1) <= v10 && v12 <= result && v12 >= v11)
    {
      *v12 = v16;
      if (v4)
      {
LABEL_11:
        v17 = 0;
        result = &coeffs_real;
        while (1)
        {
          v18 = (v9 << v15) << 7;
          if (v15 < 10)
          {
            v15 += 7;
          }

          else
          {
            v19 = v5 + 2;
            if ((v5 + 2) > v6)
            {
              goto LABEL_75;
            }

            if (++v5 > v19 || v5 < v7)
            {
              goto LABEL_75;
            }

            v9 = *v5;
            v15 -= 9;
            v18 |= v9 << v15;
          }

          if (v18 >> 16 > 124)
          {
            v17 = 1;
          }

          v20 = &ddp_udc_int_gbl_ungrp5[SHIWORD(v18)];
          v21 = v20 + 1;
          v22 = v20 < ddp_udc_int_gbl_ungrp5 || v21 > &coeffs_real;
          if (v22 || v20 > v21)
          {
            goto LABEL_75;
          }

          v24 = *v20;
          v26 = *a3;
          v25 = a3[1];
          v27 = *a3 + 2;
          *a3 = v27;
          if (v27 > v25)
          {
            goto LABEL_75;
          }

          if (v26 > v27)
          {
            goto LABEL_75;
          }

          if (v26 < v11)
          {
            goto LABEL_75;
          }

          v28 = v16 + (v24 & 0xF);
          v29 = v28 - 2;
          v30 = &v26[v3];
          *v26 = v28 - 2;
          v31 = v30 + 1;
          if ((v30 + 1) > v25)
          {
            goto LABEL_75;
          }

          if (v30 > v31)
          {
            goto LABEL_75;
          }

          if (v30 < v11)
          {
            goto LABEL_75;
          }

          v32 = (v24 >> 4) + v29 - 2;
          v33 = &v30[v3];
          *v30 = (v24 >> 4) + v29 - 2;
          v34 = v33 + 1;
          if ((v33 + 1) > v25 || v33 > v34 || v33 < v11)
          {
            goto LABEL_75;
          }

          v16 = ((v24 >> 8) & 0xF) + v32 - 2;
          *v33 = ((v24 >> 8) & 0xF) + v32 - 2;
          if (v3 >= 2)
          {
            v35 = *a3;
            v36 = a3[1];
            v37 = *a3 + 2;
            *a3 = v37;
            a3[2] = v11;
            if (v37 > v36)
            {
              goto LABEL_75;
            }

            if (v35 > v37)
            {
              goto LABEL_75;
            }

            if (v35 < v11)
            {
              goto LABEL_75;
            }

            *v35 = v29;
            v38 = v30 + 2;
            if ((v30 + 2) > v25)
            {
              goto LABEL_75;
            }

            if (v31 > v38)
            {
              goto LABEL_75;
            }

            *v31 = v32;
            v39 = v33 + 2;
            if ((v33 + 2) > v25 || v34 > v39)
            {
              goto LABEL_75;
            }

            *v34 = v16;
            v34 = v33 + 2;
            if (v3 != 2)
            {
              v40 = *a3;
              v41 = a3[1];
              v42 = *a3 + 2;
              *a3 = v42;
              if (v42 > v41)
              {
                goto LABEL_75;
              }

              if (v40 > v42)
              {
                goto LABEL_75;
              }

              if (v40 < v11)
              {
                goto LABEL_75;
              }

              *v40 = v29;
              v43 = *a3;
              v44 = a3[1];
              v45 = *a3 + 2;
              *a3 = v45;
              a3[2] = v11;
              if (v45 > v44)
              {
                goto LABEL_75;
              }

              if (v43 > v45)
              {
                goto LABEL_75;
              }

              if (v43 < v11)
              {
                goto LABEL_75;
              }

              *v43 = v29;
              v46 = v30 + 3;
              if ((v30 + 3) > v25)
              {
                goto LABEL_75;
              }

              if (v38 > v46)
              {
                goto LABEL_75;
              }

              v30[2] = v32;
              v47 = v30 + 4;
              if (v47 > v25)
              {
                goto LABEL_75;
              }

              if (v46 > v47)
              {
                goto LABEL_75;
              }

              *v46 = v32;
              v48 = v33 + 3;
              if ((v33 + 3) > v25)
              {
                goto LABEL_75;
              }

              if (v39 > v48)
              {
                goto LABEL_75;
              }

              v33[2] = v16;
              v34 = v33 + 4;
              if ((v33 + 4) > v25 || v48 > v34)
              {
                goto LABEL_75;
              }

              *v48 = v16;
            }
          }

          --v4;
          *a3 = v34;
          a3[1] = v25;
          a3[2] = v11;
          if (!v4)
          {
            if (v17)
            {
              return 1793;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return 0;
    }

LABEL_75:
    __break(0x5519u);
  }

  return result;
}

float ddp_udc_int_ph90_qmf_process(uint64_t a1, unint64_t a2, unsigned int a3, int a4)
{
  v108[0] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = (a2 + 8);
    v7 = 41;
    v8 = a3;
    do
    {
      v9 = *(v6 - 1);
      v10 = v6[1];
      v12 = (v9 + 1) <= *v6 && v9 <= v9 + 1 && v9 >= v10;
      if (!v12)
      {
        goto LABEL_148;
      }

      v13 = *a1;
      v14 = *(a1 + 16);
      if ((*a1 + 264) > *(a1 + 8) || v14 > v13)
      {
        goto LABEL_148;
      }

      *(*v13 + 4 * (v7 - 1)) = *v9;
      v16 = *(v6 - 1);
      v17 = (v16 + 4);
      v18 = v16 + 8;
      v19 = v18 > *v6 || v17 > v18;
      if (v19 || v17 < v10)
      {
        goto LABEL_148;
      }

      v21 = *a1;
      if ((*a1 + 264) > *(a1 + 8) || v14 > v21)
      {
        goto LABEL_148;
      }

      *(*v21 + 4 * v7) = *v17;
      v7 += 2;
      v6 += 3;
      --v8;
    }

    while (v8);
    v22 = *a1;
    v23 = *a1 + 264;
    if (v23 > *(a1 + 8) || v14 > v22)
    {
      goto LABEL_148;
    }

    v97 = a3;
    v98 = a1;
    v24 = 0;
    v101 = 0;
    *&v25 = -1;
    *(&v25 + 1) = -1;
    __dst[30] = v25;
    __dst[31] = v25;
    v102 = a2 + 24 * a3;
    v26 = (v22 + 3);
    __dst[28] = v25;
    __dst[29] = v25;
    __dst[26] = v25;
    __dst[27] = v25;
    __dst[24] = v25;
    __dst[25] = v25;
    __dst[22] = v25;
    __dst[23] = v25;
    __dst[20] = v25;
    __dst[21] = v25;
    __dst[18] = v25;
    __dst[19] = v25;
    __dst[16] = v25;
    __dst[17] = v25;
    __dst[14] = v25;
    __dst[15] = v25;
    __dst[12] = v25;
    __dst[13] = v25;
    __dst[10] = v25;
    __dst[11] = v25;
    __dst[8] = v25;
    __dst[9] = v25;
    __dst[6] = v25;
    __dst[7] = v25;
    __dst[4] = v25;
    __dst[5] = v25;
    __dst[2] = v25;
    __dst[3] = v25;
    v99 = a2 - 240;
    __dst[0] = v25;
    __dst[1] = v25;
    do
    {
      v100 = v24;
      v27 = a2 + 24 * v24;
      v28 = v27 + 24;
      if (v27 < a2 || v28 > v102 || v27 > v28)
      {
        goto LABEL_148;
      }

      v31 = a2;
      v32 = *v27;
      v33 = *(v27 + 8);
      if (*v27 > v33)
      {
        goto LABEL_148;
      }

      v34 = *(v27 + 16);
      if (v33 - v32 < 0x200 || v34 > v32)
      {
        goto LABEL_148;
      }

      memcpy(__dst, v32, sizeof(__dst));
      v36 = v100;
      do
      {
        v37 = (v31 + 24 * v36);
        v38 = (v26 + 24 * v36);
        v105 = *v37;
        v106 = *(v37 + 2);
        v103 = *v38;
        v104 = *(v38 + 2);
        ph90_rot_slot(&v105, &v103, a4);
        v39 = v36 + a3;
        if (v36 + a3 <= 9)
        {
          while (1)
          {
            v40 = v26 + 24 * v36;
            v41 = v40 + 24 > v23 || v40 > v40 + 24;
            if (v41 || v40 < v26)
            {
              break;
            }

            v43 = a3 + v36;
            v105 = *v40;
            v106 = *(v40 + 16);
            v44 = v26 + 24 * (a3 + v36);
            v45 = v44 + 24 > v23 || v44 > v44 + 24;
            if (v45 || v44 < v26)
            {
              break;
            }

            *v40 = *v44;
            *(v40 + 16) = *(v44 + 16);
            *v44 = v105;
            *(v44 + 16) = v106;
            v36 += a3;
            v39 = a3 + v36;
            if (a3 + v36 >= 0xA)
            {
              goto LABEL_63;
            }
          }

LABEL_148:
          __break(0x5519u);
        }

        if (v36 >= 0xA)
        {
          LODWORD(v50) = 10;
LABEL_88:
          v59 = v99 + 24 * v50;
          v50 = v50;
          v101 += (v50 - 10) / 0xAu + 2;
          while (1)
          {
            if (v100 + 10 == v50)
            {
              v60 = __dst;
              *&v105 = __dst;
              *(&v105 + 1) = v108;
            }

            else
            {
              if (v59 < v31 || v59 >= v59 + 24 || v59 + 24 > v102)
              {
                goto LABEL_148;
              }

              v105 = *v59;
              v60 = *(v59 + 16);
            }

            v106 = v60;
            v50 -= 10;
            v103 = *(v59 + 240);
            v104 = *(v59 + 256);
            ph90_rot_slot(&v103, &v105, a4);
            v59 -= 240;
            if (v50 <= 9)
            {
              goto LABEL_96;
            }
          }
        }

        v43 = v36;
LABEL_63:
        v47 = v26 + 24 * v43;
        if (v47 + 24 > v23 || v47 > v47 + 24 || v47 < v26)
        {
          goto LABEL_148;
        }

        v50 = v39 - 10;
        v52 = *v47;
        v51 = *(v47 + 8);
        v53 = *(v47 + 16);
        if (v100 == v50)
        {
          v54 = __dst;
          v55 = v108;
          v56 = __dst;
        }

        else
        {
          v57 = v31 + 24 * v50;
          if (v57 < v31 || v57 + 24 > v102 || v57 > v57 + 24)
          {
            goto LABEL_148;
          }

          v54 = *v57;
          v55 = *(v57 + 8);
          v56 = *(v57 + 16);
        }

        v12 = v55 >= v54;
        v58 = v55 - v54;
        if (!v12)
        {
          goto LABEL_148;
        }

        if (v56 > v54)
        {
          goto LABEL_148;
        }

        if (v58 < 0x200)
        {
          goto LABEL_148;
        }

        if (v52 > v51)
        {
          goto LABEL_148;
        }

        if (v53 > v52)
        {
          goto LABEL_148;
        }

        if (v51 - v52 < 0x200)
        {
          goto LABEL_148;
        }

        memcpy(v52, v54, 0x200uLL);
        if (v52 >= v52 + 512)
        {
          goto LABEL_148;
        }

        if (v50 >= 0xA)
        {
          goto LABEL_88;
        }

        ++v101;
LABEL_96:
        v36 = v50;
      }

      while (v50 != v100);
      v24 = v100 + 1;
      a2 = v31;
    }

    while (v101 < a3);
    a1 = v98;
    v61 = *(v98 + 16);
    if (a4)
    {
      for (i = 0; i != v97; *(*(v31 + 24 * i++) + 4) = v71 + v71)
      {
        v63 = *v98;
        if ((*v98 + 264) > *(v98 + 8) || v61 > v63)
        {
          goto LABEL_148;
        }

        v65 = 0;
        v66 = *v63;
        v67 = v63[1];
        v68 = v63[2];
        v69 = (v66 + 8 * (i & 0x7FFFFFFF) + 4);
        v70 = 0.0;
        v71 = 0.0;
        do
        {
          if (v69 > v67)
          {
            goto LABEL_148;
          }

          if (v69 < 4)
          {
            goto LABEL_148;
          }

          if ((v69 - 1) < v68)
          {
            goto LABEL_148;
          }

          if ((v69 + 1) > v67)
          {
            goto LABEL_148;
          }

          if (v69 > v69 + 1)
          {
            goto LABEL_148;
          }

          if (v69 < v68)
          {
            goto LABEL_148;
          }

          v72 = &coeffs_reverse_imag[v65];
          if (&coeffs_reverse_imag[v65] < coeffs_reverse_imag || v72 + 1 > ddp_udc_int_dialexp || v72 > v72 + 1)
          {
            goto LABEL_148;
          }

          v73 = *(v69 - 1);
          v74 = *&coeffs_real[v65];
          v75 = *v69;
          v69 += 2;
          v76 = *&coeffs_reverse_imag[v65];
          v70 = (v70 + (v73 * v74)) - (v75 * v76);
          v71 = (v71 + (v75 * v74)) + (v73 * v76);
          ++v65;
        }

        while (v65 != 21);
        **(v31 + 24 * i) = v70 + v70;
      }
    }
  }

  else
  {
    v61 = *(a1 + 16);
    if ((*a1 + 264) > *(a1 + 8) || v61 > *a1)
    {
      goto LABEL_148;
    }
  }

  v78 = 0;
  v79 = 2 * a3;
  do
  {
    v80 = *a1;
    if ((*a1 + 264) > *(a1 + 8) || v61 > v80)
    {
      goto LABEL_148;
    }

    v82 = *v80;
    v83 = v80[1];
    v84 = v80[2];
    v85 = (*v80 + 4 * v79);
    v86 = (v85 + 1) > v83 || v85 > v85 + 1;
    if (v86 || v85 < v84)
    {
      goto LABEL_148;
    }

    *(v82 + v78) = *v85;
    v88 = *a1;
    if ((*a1 + 264) > *(a1 + 8) || v61 > v88)
    {
      goto LABEL_148;
    }

    v90 = *v88;
    v91 = v88[1];
    v92 = v88[2];
    v93 = (*v88 + 4 * (v79 + 1));
    v94 = (v93 + 1) > v91 || v93 > v93 + 1;
    if (v94 || v93 < v92)
    {
      goto LABEL_148;
    }

    result = *v93;
    *(v90 + v78 + 4) = *v93;
    v78 += 8;
    v79 += 2;
  }

  while (v78 != 160);
  return result;
}

unint64_t *ph90_rot_slot(unint64_t *result, unint64_t *a2, int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = a2[2];
    while (1)
    {
      v5 = *a2 + v3;
      v6 = (v5 + 4);
      v7 = v5 + 8;
      v8 = v7 > a2[1] || v6 > v7;
      if (v8 || v6 < v4)
      {
        break;
      }

      *(*result + v3) = *v6;
      v10 = (*a2 + v3);
      v11 = (v10 + 1) > a2[1] || v10 > v10 + 1;
      if (v11 || v10 < v4)
      {
        break;
      }

      *(*result + v3 + 4) = -*v10;
      v3 += 8;
      if (v3 == 512)
      {
        return result;
      }
    }

    goto LABEL_34;
  }

  v13 = *a2;
  v14 = a2[1];
  if (*a2 > v14 || ((v15 = result[1], v16 = *result, v14 - v13 >= 0x200) ? (v17 = a2[2] > v13) : (v17 = 1), !v17 ? (v18 = v16 > v15) : (v18 = 1), !v18 ? (v19 = result[2] > v16) : (v19 = 1), v19 || v15 - v16 <= 0x1FF || (result = memcpy(*result, *a2, 0x200uLL), v16 >= v16 + 512)))
  {
LABEL_34:
    __break(0x5519u);
  }

  return result;
}

__int16 *ddp_udc_int_translatesmpls(__int16 *result, __int16 *a2, void *a3)
{
  v3 = *a2;
  v4 = 12;
  while (1)
  {
    v5 = a3[1];
    v6 = a3[2];
    v7 = (*a3 + 2 * v3);
    v8 = (v7 + 1) > v5 || v7 > v7 + 1;
    if (v8 || v7 < v6)
    {
      break;
    }

    v10 = (*a3 + 2 * *result);
    v11 = (v10 + 1) > v5 || v10 > v10 + 1;
    if (v11 || v10 < v6)
    {
      break;
    }

    *v10 = *v7;
    v13 = a3[3];
    v14 = a3[4];
    v15 = a3[5];
    v16 = (v13 + 4 * *result);
    v17 = (v16 + 1) > v14 || v16 > v16 + 1;
    if (v17 || v16 < v15)
    {
      break;
    }

    v19 = (v13 + 4 * *a2);
    if ((v19 + 1) > v14 || v19 > v19 + 1 || v19 < v15)
    {
      break;
    }

    *v16 = *v19;
    ++*result;
    v3 = *a2 + 1;
    *a2 = v3;
    if (!--v4)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

__int16 *ddp_udc_int_notchbndend(__int16 *result, int a2, void *a3)
{
  v3 = 0;
  v4 = result - 2;
  v5 = (&ddp_udc_int_bndnotchexptab + 6 * a2);
  v6 = (&ddp_udc_int_bndnotchmanttab + 6 * a2);
  v7 = a3[2];
  LOBYTE(result) = 1;
  while (1)
  {
    v8 = result;
    v9 = (*a3 + 2 * v4);
    result = v9 + 1;
    v10 = (v9 + 1) > a3[1] || v9 >= result;
    if (v10 || v9 < v7)
    {
      break;
    }

    result = a3[4];
    v12 = (a3[3] + 4 * v4);
    v13 = v12 + 2 > result || v12 >= v12 + 2;
    if (v13 || v12 < a3[5])
    {
      break;
    }

    result = &v5[v3];
    if (result < v5)
    {
      break;
    }

    if (result + 1 > v5 + 3)
    {
      break;
    }

    if (result > result + 1)
    {
      break;
    }

    v15 = &v6[v3];
    if (v15 < v6 || v15 + 1 > v6 + 3 || v15 > v15 + 1 || v12 >= v12 + 1)
    {
      break;
    }

    v16 = *result;
    v17 = *v15 * *v12;
    v18 = 0x3FFFFFFF;
    if (v17 > 0x3FFFFFFF || (v18 = v17) != 0)
    {
      v19 = __clz(v18 ^ (v18 >> 31)) - 2;
      v20 = v18 << v19;
      v21 = v16 + *v9 + v19;
      v18 = v20 >> 15;
    }

    else
    {
      v21 = 24;
    }

    result = 0;
    *v9 = v21;
    *v12 = v18;
    ++v4;
    v3 = 1;
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_chnd_copy(uint64_t result, uint64_t a2)
{
  *(a2 + 32) = *(result + 32);
  *a2 = *result;
  *(a2 + 296) = *(result + 296);
  *(a2 + 4) = *(result + 4);
  *(a2 + 12) = *(result + 12);
  if (!*(a2 + 272) || !*(result + 272))
  {
    return ddp_udc_int_exmd_copy(result + 40, a2 + 40);
  }

  v2 = 0;
  while (1)
  {
    v3 = *(result + 288);
    v4 = (*(result + 272) + v2);
    v5 = (v4 + 4) > *(result + 280) || v4 >= v4 + 4;
    if (v5 || v4 < v3)
    {
      break;
    }

    v7 = *(a2 + 288);
    v8 = (*(a2 + 272) + v2);
    v9 = (v8 + 4) > *(a2 + 280) || v8 >= v8 + 4;
    if (v9 || v8 < v7)
    {
      break;
    }

    *v8 = *v4;
    v11 = *(a2 + 272);
    v12 = v11 + v2;
    v13 = v11 + v2 + 8;
    v14 = v13 > *(a2 + 280) || v12 > v13;
    if (v14 || v12 < v7)
    {
      break;
    }

    v16 = *(result + 272);
    v17 = v16 + v2;
    v18 = v16 + v2 + 8;
    if (v18 > *(result + 280) || v17 > v18 || v17 < v3)
    {
      break;
    }

    *(v11 + v2 + 4) = *(v16 + v2 + 4);
    v2 += 8;
    if (v2 == 144)
    {
      return ddp_udc_int_exmd_copy(result + 40, a2 + 40);
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_chnd_unpblk(unint64_t a1, int a2, uint64_t a3, uint64_t a4, __int16 *a5, uint64_t a6, __int128 *a7, unint64_t *a8, __int128 **a9, __int128 *a10)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v71 = *(a6 + 304);
  v72[0] = 0;
  v72[1] = *(a6 + 296);
  v10 = (a4 + 180 + 2 * a1);
  v11 = (v10 + 1);
  if (v10 < a4 + 180 || v11 > a4 + 192 || v10 > v11)
  {
    goto LABEL_109;
  }

  v22 = (a3 + 4);
  if (*v10)
  {
    if (a3 + 4 > (a3 + 6))
    {
      goto LABEL_109;
    }

    v83 = *a8;
    *&v84 = a8[2];
    v74 = *a10;
    *&v75 = *(a10 + 2);
    result = ddp_udc_int_exmd_unpblkaht(a2, v22, v72, &v83, (a6 + 40), a7, &v74);
    if (result > 0)
    {
      return result;
    }
  }

  else
  {
    if (a3 + 4 > (a3 + 6))
    {
      goto LABEL_109;
    }

    v24 = (*a10 + 48 * a2);
    if (v24)
    {
      v25 = v24 >= v24 + 3 || (v24 + 3) > *(a10 + 1);
      if (v25 || v24 < *(a10 + 2))
      {
        goto LABEL_109;
      }
    }

    result = ddp_udc_int_exmd_unp(a3 + 4, v72, a7, a6 + 40, v24);
    if (result)
    {
      return result;
    }
  }

  if (*(a6 + 8))
  {
    if (*(a4 + 178))
    {
      *v71 = a2 == 0;
      v27 = *a8;
      v28 = a8[1];
      v29 = a8[2];
      v30 = *a9;
      v31 = a9[1];
      v32 = a9[2];
      v33 = (a5 + 60);
      *(*(a5 + 17) + 18) = *(a5 + 16);
      a5[128] = *(a6 + 176);
      *(a5 + 33) = *(a6 + 192);
      v34 = a5 + 176;
      if (a5[25] == a1)
      {
        if (v33 <= v34)
        {
          *&v83 = v27;
          *(&v83 + 1) = v28;
          *&v84 = v29;
          *&v74 = v30;
          *(&v74 + 1) = v31;
          *&v75 = v32;
          result = ddp_udc_int_exmd_unpblkaht(a2, v22, a5, &v83, v33, a7, &v74);
          if (result > 0)
          {
            return result;
          }

          goto LABEL_106;
        }
      }

      else if (v30 <= v31 && (v31 - v30) >= 241 && v32 <= v30 && v33 <= v34)
      {
        v38 = 0;
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v90 = v39;
        v91 = v39;
        v88 = v39;
        v89 = v39;
        v86 = v39;
        v87 = v39;
        v84 = v39;
        v85 = v39;
        v82 = v39;
        v83 = v39;
        v81 = v39;
        v79 = v39;
        v80 = v39;
        v77 = v39;
        v78 = v39;
        v75 = v39;
        v76 = v39;
        v74 = v39;
        do
        {
          v40 = &v83 + v38;
          v41 = *v30;
          *(v40 + 2) = *(v30 + 2);
          *v40 = v41;
          v42 = &v74 + v38;
          v43 = *(v30 + 24);
          *(v42 + 2) = *(v30 + 5);
          *v42 = v43;
          v38 += 24;
          v30 += 3;
        }

        while (v38 != 144);
        if (a5 + 140 <= a5 + 164)
        {
          v73[0] = v27;
          v73[1] = v28;
          v73[2] = v29;
          result = ddp_udc_int_expd_unp(*a5, a5 + 140, v73);
          if (result)
          {
            return result;
          }

          v44 = a5[1];
          if (*a5 >= v44)
          {
            goto LABEL_106;
          }

          v45 = *a5;
          v46 = (&v83 + 24 * a2);
          v49 = v46 + 24 <= v92 && v46 <= (v46 + 24) && v46 >= &v83;
          v70 = v49;
          v50 = (&v74 + 24 * a2);
          v53 = (v50 + 24) > &v83 || v50 > (v50 + 24) || v50 < &v74;
          v54 = 4 * v45;
          v55 = 2 * v45;
          while (1)
          {
            v56 = (*(a5 + 29) + v55);
            v57 = (v56 + 1) > *(a5 + 30) || v56 > v56 + 1;
            if (v57 || v56 < *(a5 + 31))
            {
              break;
            }

            if (!*v56)
            {
              v59 = (v27 + v55);
              v60 = v27 + v55 + 2;
              if (v60 > v28)
              {
                break;
              }

              if (v59 > v60)
              {
                break;
              }

              if (v59 < v29)
              {
                break;
              }

              if (!v70)
              {
                break;
              }

              v61 = (*v46 + v55);
              if ((v61 + 1) > *(v46 + 1))
              {
                break;
              }

              if (v61 > v61 + 1)
              {
                break;
              }

              v62 = *(v46 + 2);
              if (v61 < v62)
              {
                break;
              }

              *v61 = *v59;
              v63 = (*v46 + v55);
              if (v63)
              {
                v64 = *v46 + v55 + 2;
                v67 = v63 > v64 || v64 > *(v46 + 1) || v63 < v62;
                if (v67 || v53)
                {
                  break;
                }
              }

              else if (v53)
              {
                break;
              }

              v68 = (*v50 + v54);
              if (v68)
              {
                v69 = *v50 + v54 + 4;
                if (v68 > v69 || v69 > *(v50 + 1) || v68 < *(v50 + 2))
                {
                  break;
                }
              }

              ddp_udc_int_ahtd_getdither(a5 + 128, v63, v68);
              LOWORD(v44) = a5[1];
            }

            ++v45;
            v54 += 4;
            v55 += 2;
            if (v45 >= v44)
            {
              goto LABEL_106;
            }
          }
        }
      }
    }

    else
    {
      v71[1] = 0;
      v35 = &(*a9)[3 * a2];
      if (!v35 || (v35 < v35 + 3 ? (v36 = v35 + 3 > a9[1]) : (v36 = 1), !v36 ? (v37 = v35 >= a9[2]) : (v37 = 0), v37))
      {
        result = ddp_udc_int_cpld_unpexms(a1, v22, a6 + 176, *(a6 + 248), a5, a7, v35);
        if (result)
        {
          return result;
        }

        return 0;
      }
    }

LABEL_109:
    __break(0x5519u);
  }

  if (*(a3 + 16) <= a1 || *(a4 + 178))
  {
    return 0;
  }

  ++v71;
LABEL_106:
  *v71 = 0;
  return 0;
}

char *ddp_udc_int_chnd_decblk(char *result, int a2, _WORD *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (*(a4 + 8))
  {
    if (!*a3)
    {
      v57 = *(a4 + 280);
      v58 = *(a4 + 288);
      v59 = (*(a4 + 272) + 8 * *(result + 26));
      v60 = *a5;
      v61 = a5[1];
      v63 = a5[2];
      v62 = a5[3];
      v64 = a5[4];
      v65 = a5[5];
      v66 = *a6;
      v67 = a6[1];
      v69 = a6[2];
      v68 = a6[3];
      v70 = a6[4];
      v71 = a6[5];
      v72 = *(result + 1);
      v73 = *result;
      if (v72 - 12 <= v73)
      {
        result = v59;
        v77 = v73;
LABEL_88:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        v102 = v68 + 4 * v77;
        v103 = v77;
        v104 = v66 + 2 * v77;
        v105 = v62 + 4 * v77;
        v106 = v60 + 2 * v77;
        while (1)
        {
          v107 = (v106 + v100);
          v108 = v106 + v100 + 2;
          v109 = v108 > v61 || v107 > v108;
          if (v109 || v107 < v63)
          {
            break;
          }

          v111 = v105 + v99;
          v112 = v105 + v99 + 4;
          if (v112 > v64)
          {
            break;
          }

          if (v111 > v112)
          {
            break;
          }

          if (v111 < v65)
          {
            break;
          }

          if ((result + 8) > v57)
          {
            break;
          }

          if (v58 > result)
          {
            break;
          }

          v113 = *v107;
          v114 = (v104 + v100);
          if (v104 + v100)
          {
            v115 = v104 + v100 + 2;
            if (v115 > v67 || v114 > v115 || v114 < v69)
            {
              break;
            }
          }

          v116 = v102 + v99;
          if (v102 + v99 > (v102 + v99 + 2) || v116 + 4 > v70 || v116 > v116 + 4 || v116 < v71)
          {
            break;
          }

          v117 = *(result + 2) * *(v105 + 2 * v100);
          v118 = 0x3FFFFFFF;
          if (v117 > 0x3FFFFFFF || (v118 = *(result + 2) * *(v105 + 2 * v100), v117))
          {
            v119 = __clz(v118 ^ (v118 >> 31)) - 2;
            v120 = v113 + *result + v119 - 3;
            v121 = (v118 << v119) >> 15;
          }

          else
          {
            LOWORD(v121) = 0;
            v120 = 24;
          }

          *v114 = v120;
          *(v102 + 2 * v100) = v121;
          ++v103;
          if (v101 == 11)
          {
            result += 8;
            v101 = 0;
          }

          else
          {
            ++v101;
          }

          v100 += 2;
          v99 += 4;
          if (v103 >= v72)
          {
            return result;
          }
        }
      }

      else
      {
        v74.i64[0] = -1;
        v74.i64[1] = -1;
        v75.i64[0] = 0x1800000018;
        v75.i64[1] = 0x1800000018;
LABEL_64:
        v76 = 0;
        v77 = v73;
        v78 = 2 * v73;
        result = (v59 + 4);
        v79 = v60;
        v80 = v66;
        v81 = v68 + 4 * v73;
        v82 = v62 + 4 * v73;
        while (1)
        {
          v83 = (v79 + v78);
          v84 = v79 + v78 + 8;
          v85 = v84 > v61 || v83 > v84;
          if (v85 || v83 < v63)
          {
            break;
          }

          v87 = (v82 + v76);
          v88 = v82 + v76 + 16;
          if (v88 > v64)
          {
            break;
          }

          if (v87 > v88)
          {
            break;
          }

          if (v87 < v65)
          {
            break;
          }

          if (result > v57)
          {
            break;
          }

          if (v58 > v59)
          {
            break;
          }

          v89 = (v80 + v78);
          v90 = v80 + v78 + 8;
          if (v90 > v67)
          {
            break;
          }

          if (v89 > v90)
          {
            break;
          }

          if (v89 < v69)
          {
            break;
          }

          v91 = *v83;
          v92 = (v59 + 2);
          v93 = vld1_dup_s16(v92);
          v94 = vmull_s16(vmovn_s32(*v87), v93);
          v95 = vaddq_s32(vclsq_s32(v94), v74);
          *v89 = vmovn_s32(vbslq_s8(vceqzq_s32(v94), v75, vaddw_u16(v95, vadd_s16(vdup_n_s16(*v59 - 3), v91))));
          v96 = (v81 + v76);
          v97 = v81 + v76 + 16;
          if (v97 > v70 || v96 > v97 || v96 < v71)
          {
            break;
          }

          v98 = vshlq_u32(v94, v95);
          *v96 = vshrq_n_s32(vaddq_s32(v98, v98), 0x10uLL);
          v77 += 4;
          v76 += 16;
          v80 += 8;
          v79 += 8;
          if (v76 == 48)
          {
            v73 = v77;
            v59 += 4;
            if (v72 - 12 > v77)
            {
              goto LABEL_64;
            }

            goto LABEL_88;
          }
        }
      }

      goto LABEL_119;
    }

    v6 = a3[374];
    if (v6 >= 1)
    {
      v7 = &a3[69 * a2 + 27];
      if (v7 + 138 <= (a3 + 372) && (a3 + 27) <= v7)
      {
        v8 = 0;
        v9 = a5[1];
        v125 = *a5;
        v10 = a5[2];
        v124 = a5[3];
        v11 = a5[4];
        v12 = a5[5];
        v13 = v7 + 4;
        v127 = (v7 + 48);
        v14 = a3 + 375;
        v15 = a6[1];
        v16 = (a3 + 398);
        v17 = a6[2];
        v122 = a6[3];
        v123 = *a6;
        v19 = a6[4];
        v18 = a6[5];
        while (1)
        {
          v20 = (v13 + 2 * v8);
          v21 = v20 + 1;
          result = v127;
          v22 = v20 < v13 || v21 > v127;
          if (v22 || v20 > v21)
          {
            break;
          }

          v24 = *v20;
          v25 = &ddp_udc_int_ecplampmanttab + 2 * v24;
          result = v25 + 2;
          v26 = v25 < &ddp_udc_int_ecplampmanttab || result > ddp_udc_int_ecplampexptab;
          if (v26 || v25 > result)
          {
            break;
          }

          result = &ddp_udc_int_ecplampexptab[v24];
          v28 = (result + 2);
          v29 = result < ddp_udc_int_ecplampexptab || v28 > ddp_udc_int_gbl_chantab;
          if (v29 || result > v28)
          {
            break;
          }

          v31 = &v14[v8];
          if ((v31 + 1) > v16)
          {
            break;
          }

          if (v31 > v31 + 1)
          {
            break;
          }

          v32 = &v14[++v8];
          if (v32 < v14 || (v32 + 1) > v16 || v32 > v32 + 1)
          {
            break;
          }

          if (*v31 < *v32)
          {
            v33 = 0;
            v34 = 0;
            v35 = *(&ddp_udc_int_ecplampmanttab + v24);
            v36 = *v31;
            v37 = *result;
            v38 = v122 + 4 * v36;
            v39 = v123 + 2 * v36;
            v40 = v124 + 4 * v36;
            result = (v125 + 2 * v36);
            while (1)
            {
              v41 = &result[v34];
              v42 = &result[v34 + 2];
              v43 = v42 > v9 || v41 > v42;
              if (v43 || v41 < v10)
              {
                goto LABEL_119;
              }

              v45 = v40 + v33;
              v46 = v40 + v33 + 4;
              if (v46 > v11)
              {
                goto LABEL_119;
              }

              if (v45 > v46)
              {
                goto LABEL_119;
              }

              if (v45 < v12)
              {
                goto LABEL_119;
              }

              v47 = *v41;
              v48 = (v39 + v34);
              if (v39 + v34)
              {
                v49 = v39 + v34 + 2;
                if (v49 > v15 || v48 > v49 || v48 < v17)
                {
                  goto LABEL_119;
                }
              }

              v50 = v38 + v33;
              if (v38 + v33 > (v38 + v33 + 2) || v50 + 4 > v19 || v50 > v50 + 4 || v50 < v18)
              {
                goto LABEL_119;
              }

              v51 = *(v40 + 2 * v34) * v35;
              v52 = 0x3FFFFFFF;
              if (v51 > 0x3FFFFFFF || (v52 = *(v40 + 2 * v34) * v35, v51))
              {
                v53 = v47 + v37;
                v54 = __clz(v52 ^ (v52 >> 31)) - 2;
                v55 = v52 << v54;
                v56 = v53 + v54;
                v51 = v55 >> 15;
              }

              else
              {
                v56 = 24;
              }

              *v48 = v56;
              *(v38 + 2 * v34) = v51;
              ++v36;
              v34 += 2;
              v33 += 4;
              if (v36 >= *v32)
              {
                LOWORD(v6) = a3[374];
                break;
              }
            }
          }

          if (v8 >= v6)
          {
            return result;
          }
        }
      }

LABEL_119:
      __break(0x5519u);
    }
  }

  return result;
}

void ddp_udc_int_chnd_decspx(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v302[1] = *MEMORY[0x1E69E9840];
  if (a1 < a2)
  {
    v7 = (a4 + 88 + 56 * a1);
    v8 = (v7 + 28);
    if (v7 < a4 + 88 || v8 > a4 + 368 || v7 > v8)
    {
      goto LABEL_398;
    }

    if (*v7)
    {
      v11 = (a3 + 226 + 2 * a1);
      if (v11 < a3 + 226)
      {
        goto LABEL_398;
      }

      v12 = a3 + 236;
      if ((v11 + 1) > a3 + 236)
      {
        goto LABEL_398;
      }

      if (v11 > v11 + 1)
      {
        goto LABEL_398;
      }

      v13 = (v12 + 2 * a1);
      if (v13 < v12 || (v13 + 1) > a3 + 246 || v13 > v13 + 1)
      {
        goto LABEL_398;
      }

      v282 = *v11;
      v276 = a5;
      v277 = *v13;
      memset(__b, 170, sizeof(__b));
      *&v14 = -1;
      *(&v14 + 1) = -1;
      *&v298[12] = v14;
      v297 = v14;
      *v298 = v14;
      v15 = *(a4 + 48);
      v16 = *(a4 + 46);
      v293 = v15 - v16;
      v17 = (v15 - v16);
      v278 = v17;
      v18 = v17 >= (*(a4 + 50) - v15) ? *(a4 + 50) - v15 : v17;
      v19 = &ddp_udc_int_spxd_bndtab[v15];
      if (v19 < ddp_udc_int_spxd_bndtab || v19 + 1 > ddp_udc_int_spxd_begftobegsbndtab || v19 > v19 + 1)
      {
        goto LABEL_398;
      }

      v294 = (a4 + 368);
      v20 = *v19;
      memset_pattern16(__b, &unk_19B0B38F0, 0x16uLL);
      v21 = 0;
      v22 = xmmword_19B0A5840;
      v23 = xmmword_19B0A5850;
      v24 = vdupq_n_s64(0xBuLL);
      v25 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v24, v23)), *v22.i8).u8[0])
        {
          *&v298[v21 - 16] = 0;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v23)), *&v22).i8[2])
        {
          *&v298[v21 - 12] = 0;
        }

        if (vuzp1_s16(*&v22, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v22))).i32[1])
        {
          *&v298[v21 - 8] = 0;
          *&v298[v21 - 4] = 0;
        }

        v22 = vaddq_s64(v22, v25);
        v23 = vaddq_s64(v23, v25);
        v21 += 16;
      }

      while (v21 != 48);
      v286 = v7;
      v26 = &ddp_udc_int_spxd_bndtab[v16];
      if (v26 < ddp_udc_int_spxd_bndtab || v26 + 1 > ddp_udc_int_spxd_begftobegsbndtab || v26 > v26 + 1)
      {
        goto LABEL_398;
      }

      if (v18 >= 1)
      {
        v27 = 0;
        v28 = *a6;
        v29 = a6[1];
        v30 = a6[2];
        v31 = a6[3];
        v33 = a6[4];
        v32 = a6[5];
        v34 = v18;
        v35 = *v26;
        do
        {
          v36 = v35 + 12;
          if (v35 > 32755)
          {
            v49 = 0;
            v58 = 48;
          }

          else
          {
            v37 = v35;
            v38 = v31 + 4 * v35;
            v39 = 2 * v35;
            v40 = 24;
            v41 = v35;
            v42 = v28 + v39;
            do
            {
              v43 = v28 + v39;
              v44 = v28 + v39 + 2;
              v46 = v44 <= v29 && v43 <= v44 && v43 >= v30;
              if (!v46)
              {
                goto LABEL_398;
              }

              if (v40 >= *(v28 + 2 * v41))
              {
                v40 = *(v28 + 2 * v41);
              }

              ++v41;
              v39 += 2;
            }

            while (v41 < v36);
            v47 = 0;
            v48 = 0;
            v49 = 0;
            do
            {
              v50 = (v42 + v48);
              v51 = v42 + v48 + 2;
              if (v51 > v29 || v50 > v51 || v50 < v30)
              {
                goto LABEL_398;
              }

              v54 = (*v50 - v40);
              if (v54 <= 15)
              {
                v55 = v38 + v47;
                v56 = v38 + v47 + 4;
                if (v56 > v33 || v55 > v56 || v55 < v32)
                {
                  goto LABEL_398;
                }

                v57 = *(v38 + 2 * v48) >> v54;
                v49 += v57 * v57;
                if (v49 >= 0x40000000)
                {
                  v49 = v49 >> 2;
                  --v40;
                }
              }

              ++v37;
              v48 += 2;
              v47 += 4;
            }

            while (v37 < v36);
            v58 = 2 * v40;
          }

          v59 = &__b[2 * v27];
          if (v59 < __b)
          {
            goto LABEL_398;
          }

          if (v59 + 2 > v301)
          {
            goto LABEL_398;
          }

          if (v59 > v59 + 2)
          {
            goto LABEL_398;
          }

          *&__b[2 * v27] = v58;
          v60 = &v298[4 * v27 - 16];
          if (v60 > (v60 | 2) || v60 < &v297 || v60 + 4 > v299 || v60 > v60 + 4)
          {
            goto LABEL_398;
          }

          if (v49)
          {
            v61 = __clz(v49 ^ (v49 >> 31)) - 2;
            v62 = v58 + v61;
            v49 = (v49 << v61) >> 15;
          }

          else
          {
            v62 = 24;
          }

          *&__b[2 * v27] = v62;
          *v60 = v49;
          ++v27;
          v35 = v36;
        }

        while (v27 != v34);
      }

      v287 = *v294;
      if (v286[1])
      {
        v63 = *(v286 + 4);
        v64 = *(v286 + 5);
        if (v63 > v64)
        {
          goto LABEL_398;
        }

        if ((v64 - v63) < 113)
        {
          goto LABEL_398;
        }

        if (*(v286 + 6) > v63)
        {
          goto LABEL_398;
        }

        v65 = &ddp_udc_int_oneoverspxendbintab[*(a4 + 8)];
        if (v65 < ddp_udc_int_oneoverspxendbintab || v65 + 1 > ddp_udc_int_bndnotchmanttab || v65 > v65 + 1)
        {
          goto LABEL_398;
        }

        v66 = *(a4 + 52);
        if (v66 >= 1)
        {
          v67 = 0;
          v68 = a4 + 54;
          v69 = v287 + 32;
          v70 = *v65;
          v71 = v287 + 92;
          v72 = v287 + 30;
          v73 = v63 + 120;
          v74 = v287 + 124;
          v75 = v287 + 184;
          v76 = v287 + 122;
          v77 = -v286[2];
          do
          {
            v78 = (v68 + 2 * v67);
            v79 = (v78 + 1);
            if (v78 < v68 || v79 > a4 + 84 || v78 > v79)
            {
              goto LABEL_398;
            }

            v82 = 3 * *v78;
            v83 = v20 + 6 * *v78;
            v84 = (v77 + v83 * v70);
            if (v84 < 1)
            {
              v99 = (v69 + 4 * v67);
              if (v99 < v69)
              {
                goto LABEL_398;
              }

              if ((v99 + 2) > v71)
              {
                goto LABEL_398;
              }

              if (v99 > v99 + 2)
              {
                goto LABEL_398;
              }

              *v99 = 0;
              v100 = (v287 + 2 * v67);
              if (v100 < v287)
              {
                goto LABEL_398;
              }

              if ((v100 + 1) > v72)
              {
                goto LABEL_398;
              }

              if (v100 > v100 + 1)
              {
                goto LABEL_398;
              }

              *v100 = 24;
              v101 = (v63 + 8 * v67);
              if (v101 < v63)
              {
                goto LABEL_398;
              }

              if ((v101 + 4) > v73)
              {
                goto LABEL_398;
              }

              if (v101 > v101 + 4)
              {
                goto LABEL_398;
              }

              v102 = (v74 + 4 * v67);
              if (v102 < v74)
              {
                goto LABEL_398;
              }

              if ((v102 + 2) > v75)
              {
                goto LABEL_398;
              }

              if (v102 > v102 + 2)
              {
                goto LABEL_398;
              }

              *v102 = v101[2];
              v103 = (v71 + 2 * v67);
              if (v103 < v71 || (v103 + 1) > v76 || v103 > v103 + 1)
              {
                goto LABEL_398;
              }

              *v103 = *v101 - 5;
            }

            else
            {
              v85 = __clz(v84 << 16);
              v86 = v85 - 1;
              v87 = v84 << (v85 - 1);
              v88 = v84 ^ 0x7FFF;
              v89 = __clz(v88 << 16);
              v90 = v89 - 1;
              v91 = v88 << (v89 - 1);
              if (v84 == 0x7FFF)
              {
                v91 = v84 ^ 0x7FFF;
                v92 = 24;
              }

              else
              {
                v92 = v90;
              }

              if (v86)
              {
                v104 = 0;
                v96 = 0;
                v105 = v85 + 131070;
                v106 = -(v87 >> 1);
                v107 = 0x4000;
                do
                {
                  v108 = -(v96 + v107) * (v96 + v107);
                  if (v108 >= 0x3FFFFFFF)
                  {
                    v108 = 0x3FFFFFFF;
                  }

                  if (v106 <= v108 >> 15)
                  {
                    v96 += v107;
                  }

                  v107 >>= 1;
                  v46 = v104++ >= 0xE;
                }

                while (!v46);
                v98 = v105 >> 1;
              }

              else
              {
                v93 = 0;
                v94 = -v87;
                v95 = 0x4000;
                v96 = 0;
                do
                {
                  v97 = -(v96 + v95) * (v96 + v95);
                  if (v97 >= 0x3FFFFFFF)
                  {
                    v97 = 0x3FFFFFFF;
                  }

                  if (v94 <= v97 >> 15)
                  {
                    v96 += v95;
                  }

                  v95 >>= 1;
                  v46 = v93++ >= 0xE;
                }

                while (!v46);
                LOWORD(v98) = v86 >> 1;
              }

              v109 = 0;
              if (v92)
              {
                v112 = 0;
                v115 = v92 + 0x1FFFF;
                v116 = -(v91 >> 1);
                v117 = 0x4000;
                do
                {
                  v118 = -(v112 + v117) * (v112 + v117);
                  if (v118 >= 0x3FFFFFFF)
                  {
                    v118 = 0x3FFFFFFF;
                  }

                  if (v116 <= v118 >> 15)
                  {
                    v112 += v117;
                  }

                  v117 >>= 1;
                  v46 = v109++ >= 0xE;
                }

                while (!v46);
                v114 = v115 >> 1;
              }

              else
              {
                v110 = -v91;
                v111 = 0x4000;
                v112 = 0;
                do
                {
                  v113 = -(v112 + v111) * (v112 + v111);
                  if (v113 >= 0x3FFFFFFF)
                  {
                    v113 = 0x3FFFFFFF;
                  }

                  if (v110 <= v113 >> 15)
                  {
                    v112 += v111;
                  }

                  v111 >>= 1;
                  v46 = v109++ >= 0xE;
                }

                while (!v46);
                LOWORD(v114) = v92 >> 1;
              }

              v119 = (v63 + 8 * v67);
              if (v119 < v63)
              {
                goto LABEL_398;
              }

              if ((v119 + 4) > v73)
              {
                goto LABEL_398;
              }

              if (v119 > v119 + 4)
              {
                goto LABEL_398;
              }

              v120 = (v287 + 2 * v67);
              if (v120)
              {
                if (v120 < v287 || (v120 + 1) > v72 || v120 > v120 + 1)
                {
                  goto LABEL_398;
                }
              }

              v121 = (v69 + 4 * v67);
              if (v121 >= v121 + 1 || v121 < v69 || (v121 + 2) > v71 || v121 > v121 + 2)
              {
                goto LABEL_398;
              }

              v122 = v96 * v119[2];
              v123 = 0x3FFFFFFF;
              if (v122 > 0x3FFFFFFF || (v123 = v122) != 0)
              {
                v124 = __clz(v123 ^ (v123 >> 31)) - 2;
                v125 = v98 + *v119 + v124 - 5;
                v123 = (v123 << v124) >> 15;
              }

              else
              {
                v125 = 24;
              }

              *v120 = v125;
              v126 = v120 + 1;
              *v121 = v123;
              if (v120 < v287 || v126 > v72 || v120 > v126)
              {
                goto LABEL_398;
              }

              if (v123)
              {
                v127 = 28378 * v123;
                v128 = __clz(v127 ^ (v127 >> 31)) - 2;
                v129 = v125 + v128 - 1;
                v130 = (v127 << v128) >> 15;
              }

              else
              {
                LOWORD(v130) = 0;
                v129 = 24;
              }

              *v120 = v129;
              *v121 = v130;
              v131 = *v119;
              v132 = v119[2];
              v133 = (v71 + 2 * v67);
              if (v133)
              {
                if (v133 < v71 || (v133 + 1) > v76 || v133 > v133 + 1)
                {
                  goto LABEL_398;
                }
              }

              v134 = (v74 + 4 * v67);
              if (v134 >= v134 + 1 || v134 < v74 || (v134 + 2) > v75 || v134 > v134 + 2)
              {
                goto LABEL_398;
              }

              v135 = v112 * v132;
              v136 = 0x3FFFFFFF;
              if (v135 > 0x3FFFFFFF || (v136 = v135) != 0)
              {
                v137 = __clz(v136 ^ (v136 >> 31)) - 2;
                v138 = v114 + v131 + v137 - 5;
                v136 = (v136 << v137) >> 15;
              }

              else
              {
                v138 = 24;
              }

              *v133 = v138;
              *v134 = v136;
            }

            v20 = v83 + 2 * v82;
            ++v67;
          }

          while (v67 != v66);
          v287 = *(a4 + 368);
          v16 = *(a4 + 46);
        }
      }

      v139 = &ddp_udc_int_spxd_bndtab[v16];
      if (v139 < ddp_udc_int_spxd_bndtab)
      {
        goto LABEL_398;
      }

      if (v139 + 1 > ddp_udc_int_spxd_begftobegsbndtab)
      {
        goto LABEL_398;
      }

      if (v139 > v139 + 1)
      {
        goto LABEL_398;
      }

      v140 = &ddp_udc_int_spxd_bndtab[*(a4 + 48)];
      if (v140 < ddp_udc_int_spxd_bndtab || v140 + 1 > ddp_udc_int_spxd_begftobegsbndtab || v140 > v140 + 1)
      {
        goto LABEL_398;
      }

      v292 = *v139;
      v275 = *v140;
      v295 = *v140;
      if (*(a4 + 52) >= 1)
      {
        v141 = 0;
        LOWORD(v142) = 0;
        v296 = -21846;
        v281 = a4 + 54;
        v283 = a4 + 84;
        v279 = v287 + 32;
        v285 = v287 + 92;
        v280 = &ddp_udc_int_bndnotchexptab + 6 * v277;
        v143 = &ddp_udc_int_bndnotchmanttab[3 * v277];
        v290 = 1;
        while (1)
        {
          v291 = v141;
          v144 = v281 + 2 * v141;
          v145 = v144 + 2;
          v146 = v144 < v281 || v145 > v283;
          v284 = (v144 + 2);
          v288 = (v281 + 2 * v141);
          if (v146 || v144 > v145)
          {
            goto LABEL_398;
          }

          if (v290)
          {
            LOWORD(v142) = 0;
            v296 = v292;
          }

          v148 = &__b[2 * v142];
          if (v148 < __b)
          {
            goto LABEL_398;
          }

          if (v148 + 2 > v301)
          {
            goto LABEL_398;
          }

          if (v148 > v148 + 2)
          {
            goto LABEL_398;
          }

          v142 = v142;
          v149 = &v298[4 * v142 - 16];
          if (v149 < &v297 || v149 + 4 > v299 || v149 > (v149 + 4))
          {
            goto LABEL_398;
          }

          v150 = *v288;
          v151 = *&__b[2 * v142];
          LOWORD(v152) = *v149;
          ddp_udc_int_translatesmpls(&v295, &v296, a6);
          if (v282)
          {
            if (v290)
            {
              break;
            }
          }

LABEL_238:
          LOWORD(v142) = v142 + 1;
          if (v150 >= 2)
          {
            LOWORD(v173) = 1;
            do
            {
              if (v142 == v293)
              {
                LOWORD(v142) = 0;
                v296 = v292;
              }

              v174 = &__b[2 * v142];
              v175 = v174 + 2;
              v176 = v174 < __b || v175 > v301;
              if (v176 || v174 > v175)
              {
                goto LABEL_398;
              }

              v142 = v142;
              v178 = &v298[4 * v142 - 16];
              if (v178 < &v297 || v178 + 2 > v299 || v178 > v178 + 2)
              {
                goto LABEL_398;
              }

              v179 = *&__b[2 * v142];
              v180 = *v178;
              if (v179 <= v151)
              {
                if ((v151 - v179) < 16)
                {
                  v182 = (v152 >> (v151 - v179)) + v180;
                  v151 = *&__b[2 * v142];
                }

                else
                {
                  v151 = *&__b[2 * v142];
                  v182 = *v178;
                }
              }

              else
              {
                v181 = (v179 - v151);
                v182 = v152;
                if (v181 <= 15)
                {
                  v182 = (v180 >> v181) + v152;
                }
              }

              if (v182 == v182)
              {
                if (v182)
                {
                  v183 = __clz((v182 ^ (v182 >> 15)) << 16) - 1;
                  v152 = v182 << v183;
                  v151 += v183;
                }

                else
                {
                  LOWORD(v152) = 0;
                  v151 = 24;
                }
              }

              else
              {
                v152 = v182 >> 1;
                --v151;
              }

              ddp_udc_int_translatesmpls(&v295, &v296, a6);
              v173 = (v173 + 1);
              LOWORD(v142) = v142 + 1;
            }

            while (v173 < v150);
          }

          v184 = 0;
          v185 = 0;
          v186 = v152 >> (v151 & 1);
          v187 = (12 * v150);
          v188 = -v186;
          v189 = 0x4000;
          do
          {
            v190 = -(v185 + v189) * (v185 + v189);
            if (v190 >= 0x3FFFFFFF)
            {
              v190 = 0x3FFFFFFF;
            }

            if ((v190 >> 15) * v187 >= v188)
            {
              v185 += v189;
            }

            v189 >>= 1;
            v46 = v184++ >= 0xE;
          }

          while (!v46);
          v191 = (v287 + 2 * v291);
          if (v191 < v287)
          {
            goto LABEL_398;
          }

          if ((v191 + 1) > v287 + 30)
          {
            goto LABEL_398;
          }

          if (v191 > v191 + 1)
          {
            goto LABEL_398;
          }

          v192 = (v279 + 4 * v291);
          if (v192 < v279 || (v192 + 2) > v285 || v192 > v192 + 2)
          {
            goto LABEL_398;
          }

          v193 = *v191;
          v194 = *v192 * v185;
          v195 = 0x3FFFFFFF;
          if (v194 > 0x3FFFFFFF || (v195 = v194) != 0)
          {
            v196 = __clz(v195 ^ (v195 >> 31)) - 2;
            v197 = v193 + (v151 >> 1) + v196;
            v198 = (v195 << v196) >> 15;
          }

          else
          {
            v198 = 0;
            v197 = 24;
          }

          v199 = v291;
          if (v291 >= *(a4 + 52) - 1)
          {
            v201 = v295;
          }

          else
          {
            if ((v288 + 2) > v283 || v284 > v288 + 2)
            {
              goto LABEL_398;
            }

            v200 = *v284 + v142;
            v201 = v295;
            v290 = v200 > v278;
            if (v200 > v278 && v282)
            {
              ddp_udc_int_notchbndend(v295, v277, a6);
              v290 = 1;
            }

            v199 = v291;
          }

          v202 = (v285 + 2 * v199);
          if (v202 < v285)
          {
            goto LABEL_398;
          }

          if ((v202 + 1) > v287 + 122)
          {
            goto LABEL_398;
          }

          if (v202 > v202 + 1)
          {
            goto LABEL_398;
          }

          v203 = *v202;
          v204 = *(v286 + 1);
          if (v204)
          {
            if (v204 >= v204 + 1 || (v204 + 1) > *(v286 + 2) || v204 < *(v286 + 3))
            {
              goto LABEL_398;
            }
          }

          v205 = *(v287 + 124 + 4 * v291);
          v206 = v201 - v187;
          v207 = *a6;
          v208 = a6[1];
          v210 = a6[2];
          v209 = a6[3];
          v211 = a6[4];
          v212 = a6[5];
          v302[0] = 0xAAAAAAAAAAAAAAAALL;
          if (v201 - (v201 - v187) >= 4)
          {
            v213 = vdup_n_s16(v203);
            v153.i32[0] = v198;
            v154.i32[0] = v205;
            v214 = vmovl_u16(vdup_n_s16(v197));
            do
            {
              v215 = 0;
              v216 = *v204;
              do
              {
                v216 = -17547 * v216 + 3;
                v302[0].i16[v215++] = v216;
              }

              while (v215 != 4);
              *v204 = v216;
              v217 = (v207 + 2 * v206);
              if (&v217[1] > v208)
              {
                goto LABEL_398;
              }

              if (v217 > &v217[1])
              {
                goto LABEL_398;
              }

              if (v217 < v210)
              {
                goto LABEL_398;
              }

              v218 = (v209 + 4 * v206);
              if (&v218[1] > v211 || v218 > &v218[1] || v218 < v212)
              {
                goto LABEL_398;
              }

              v219 = vmull_lane_s16(v302[0], v153, 0);
              v220.i64[0] = -1;
              v220.i64[1] = -1;
              v221 = vaddq_s32(vclsq_s32(v219), v220);
              v222.i64[0] = 0x1800000018;
              v222.i64[1] = 0x1800000018;
              v223 = vmovn_s32(vbslq_s8(vceqzq_s32(v219), v222, vaddq_s32(v221, v214)));
              *v219.i8 = vshrn_n_s32(vshlq_u32(v219, v221), 0xFuLL);
              v224 = vmull_lane_s16(vmovn_s32(*v218), v154, 0);
              v225 = vceqzq_s32(v224);
              v226 = vaddq_s32(vclsq_s32(v224), v220);
              v227 = vshlq_u32(v224, v226);
              *v221.i8 = vmovn_s32(vbslq_s8(v225, v222, vaddw_u16(v226, vadd_s16(*v217, v213))));
              *v226.i8 = vabs_s16(vsub_s16(v223, *v221.i8));
              *v222.i8 = vcgt_s16(*v226.i8, 0xF000F000F000FLL);
              *v226.i8 = vneg_s16(*v226.i8);
              v228 = vbslq_s8(vmovl_s16(vcgt_s16(v223, *v221.i8)), vsraq_n_s32(vmovl_s16(vbic_s8(vshl_s16(*v219.i8, *v226.i8), *v222.i8)), vshlq_n_s32(vshrq_n_u32(v227, 0xFuLL), 0x10uLL), 0x10uLL), vaddl_s16(vbic_s8(vshl_s16(vshrn_n_s32(v227, 0xFuLL), *v226.i8), *v222.i8), *v219.i8));
              v227.i64[0] = 0x7F0000007FLL;
              v227.i64[1] = 0x7F0000007FLL;
              v225.i64[0] = 0xFFFF0000FFFF0000;
              v225.i64[1] = 0xFFFF0000FFFF0000;
              v229 = vcgtq_u32(v225, vaddq_s32(v228, v227));
              *v225.i8 = vmovn_s32(v229);
              v230 = vshrq_n_u32(v228, 1uLL);
              v231 = vmin_s16(*v221.i8, v223);
              *v228.i8 = vmovn_s32(v228);
              v232 = vmin_s16(vmax_s16(vadd_s16(vmovn_s32(vclzq_s32(vshll_n_s16(veor_s8(vcltz_s16(*v228.i8), *v228.i8), 0x10uLL))), -1), 0), 0xF000F000F000FLL);
              *v217 = vbsl_s8(*v225.i8, vadd_s16(v231, -1), vbsl_s8(vceqz_s16(*v228.i8), 0x18001800180018, vadd_s16(v232, v231)));
              *v218 = vmovl_s16(vorr_s8(vmovn_s32(vandq_s8(v230, v229)), vbic_s8(vshl_u16(*v228.i8, v232), *v225.i8)));
              v206 += 4;
            }

            while (v201 - 3 > v206);
          }

          if (v206 < v201)
          {
            v233 = v201 - v206;
            v234 = (v209 + 4 * v206);
            v235 = (v207 + 2 * v206);
            do
            {
              v236 = -17547 * *v204 + 3;
              *v204 = v236;
              v237 = v236 * v198;
              v238 = 0x3FFFFFFF;
              if (v237 > 0x3FFFFFFF || (v238 = v237) != 0)
              {
                v239 = __clz(v238 ^ (v238 >> 31)) - 2;
                v240 = v238 << v239;
                v241 = v197 + v239;
                v238 = (v240 >> 15);
              }

              else
              {
                v241 = 24;
              }

              if ((v235 + 1) > v208 || v235 > v235 + 1 || v235 < v210 || (v234 + 2) > v211 || v234 > v234 + 2 || v234 < v212)
              {
                goto LABEL_398;
              }

              v242 = v205 * *v234;
              v243 = 0x3FFFFFFF;
              if (v242 > 0x3FFFFFFF || (v243 = v205 * *v234, v242))
              {
                v244 = __clz(v243 ^ (v243 >> 31)) - 2;
                v245 = *v235 + v203 + v244;
                v243 = (v243 << v244 >> 15);
              }

              else
              {
                v245 = 24;
              }

              if (v234 >= v234 + 1)
              {
                goto LABEL_398;
              }

              if (v245 >= v241)
              {
                *v235 = v241;
                v247 = (v245 - v241);
                if (v247 <= 15)
                {
                  v238 += v243 >> v247;
                }

                v245 = v241;
              }

              else
              {
                *v235 = v245;
                v246 = (v241 - v245);
                if (v246 <= 15)
                {
                  v238 = (v238 >> v246) + v243;
                }

                else
                {
                  v238 = v243;
                }
              }

              if (v238 == v238)
              {
                *v234 = v238;
                if (v238)
                {
                  v248 = __clz((v238 ^ (v238 >> 15)) << 16) - 1;
                  *v234 = v238 << v248;
                  v249 = *v235 + v248;
                }

                else
                {
                  v249 = 24;
                }

                *v235 = v249;
              }

              else
              {
                *v235 = v245 - 1;
                *v234 = v238 >> 1;
              }

              v234 += 2;
              ++v235;
            }

            while (--v233);
          }

          v141 = v291 + 1;
          if (v291 + 1 >= *(a4 + 52))
          {
            goto LABEL_340;
          }
        }

        v155 = v295 - 12;
        v156 = a6[2];
        v157 = 2;
        while (1)
        {
          v158 = (*a6 + 2 * v155);
          v159 = (v158 + 1) > a6[1] || v158 > v158 + 1;
          if (v159 || v158 < v156)
          {
            break;
          }

          v161 = (a6[3] + 4 * v155);
          v162 = (v161 + 2) > a6[4] || v161 > v161 + 2;
          if (v162 || v161 < a6[5])
          {
            break;
          }

          v164 = &v280[2 * v157];
          if (v164 < v280)
          {
            break;
          }

          if (v164 + 2 > v280 + 6)
          {
            break;
          }

          if (v164 > v164 + 2)
          {
            break;
          }

          v165 = &v143[v157];
          if (v165 < v143 || v165 + 1 > v143 + 3 || v165 > v165 + 1 || v161 >= v161 + 1)
          {
            break;
          }

          v166 = *v164;
          v167 = *v165 * *v161;
          v168 = 0x3FFFFFFF;
          if (v167 > 0x3FFFFFFF || (v168 = v167) != 0)
          {
            v169 = __clz(v168 ^ (v168 >> 31)) - 2;
            v170 = v168 << v169;
            v171 = v166 + *v158 + v169;
            v172 = v170 >> 15;
          }

          else
          {
            LOWORD(v172) = 0;
            v171 = 24;
          }

          *v158 = v171;
          *v161 = v172;
          ++v155;
          if (--v157 == -1)
          {
            goto LABEL_238;
          }
        }

LABEL_398:
        __break(0x5519u);
      }

LABEL_340:
      if (v282)
      {
        ddp_udc_int_notchbndend(v275, v277, a6);
      }

      a5 = v276;
    }
  }

  v250 = *(a5 + 2);
  v252 = a6[3];
  v251 = a6[4];
  v253 = a6[5];
  if (v250 >= 4)
  {
    v254 = 0;
    v255 = *(a5 + 2) - 3;
    v256 = a6[3];
    do
    {
      if ((v256 + 1) > v251 || v256 > v256 + 1 || v256 < v253)
      {
        goto LABEL_398;
      }

      *v256 = vcvts_n_f32_s32(*v256, 0xFuLL);
      v256 += 4;
      v254 += 4;
    }

    while (v254 < v255);
    v259 = 0;
    v260 = v252 + 1;
    do
    {
      if ((v260 + 1) > v251 || v260 > v260 + 1 || v260 < v253)
      {
        goto LABEL_398;
      }

      *v260 = vcvts_n_f32_s32(*v260, 0xFuLL);
      v260 += 4;
      v259 += 4;
    }

    while (v259 < v255);
    v263 = 0;
    v264 = v252 + 2;
    do
    {
      if ((v264 + 1) > v251 || v264 > v264 + 1 || v264 < v253)
      {
        goto LABEL_398;
      }

      *v264 = vcvts_n_f32_s32(*v264, 0xFuLL);
      v264 += 4;
      v263 += 4;
    }

    while (v263 < v255);
    v267 = 0;
    v268 = v252 + 3;
    while (1)
    {
      v269 = (v268 + 1) > v251 || v268 > v268 + 1;
      if (v269 || v268 < v253)
      {
        goto LABEL_398;
      }

      *v268 = vcvts_n_f32_s32(*v268, 0xFuLL);
      v268 += 4;
      v267 += 4;
      if (v267 >= v255)
      {
        goto LABEL_386;
      }
    }
  }

  LODWORD(v267) = 0;
LABEL_386:
  if (v267 < v250)
  {
    v271 = v250 - v267;
    for (i = &v252[v267]; ; ++i)
    {
      v273 = (i + 1) > v251 || i > i + 1;
      if (v273 || i < v253)
      {
        break;
      }

      *i = vcvts_n_f32_s32(*i, 0xFuLL);
      if (!--v271)
      {
        return;
      }
    }

    goto LABEL_398;
  }
}

unint64_t ddp_udc_int_dvlim_process(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, __int128 a11, __int128 __b, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, uint64_t a28)
{
  STACK[0x11F8] = *MEMORY[0x1E69E9840];
  if (!*result)
  {
    return result;
  }

  v28 = *(result + 16);
  v245 = result;
  v246 = v28;
  if (!*(result + 12))
  {
    if (!*(result + 144))
    {
      return result;
    }

    v93 = 0;
    v95 = a4 != 1 || a5 != 1;
    v235 = v95;
    v96 = 4 * a4;
    v242 = 24 * v28;
    v238 = 4 * a5;
    while (1)
    {
      v97 = *(result + 88);
      v98 = *a3;
      v99 = *(a3 + 8);
      v100 = *(a3 + 16);
      if (a4 == 1)
      {
        if (v28)
        {
          v101 = 0.0;
          v102 = v28;
          do
          {
            if ((v98 + 3) > v99 || v98 >= v98 + 3 || v98 < v100)
            {
              goto LABEL_354;
            }

            if (*v98)
            {
              v105 = v98[1];
              v106 = (*v98 + 4 * (v97 * v93));
              if (v106 > v105 || v98[2] > v106 || v97 > (v105 - v106) >> 2)
              {
                goto LABEL_354;
              }

              LODWORD(__b) = 0;
              vDSP_maxmgv(v106, 1, &__b, v97);
              result = v245;
              v28 = v246;
              if (v101 < *&__b)
              {
                v101 = *&__b;
              }
            }

            v98 += 3;
            --v102;
          }

          while (v102);
          goto LABEL_157;
        }
      }

      else if (v28)
      {
        v107 = 0;
        v101 = 0.0;
        do
        {
          v108 = &v98[3 * v107];
          if ((v108 + 3) > v99 || v108 >= v108 + 3 || v108 < v100)
          {
            goto LABEL_354;
          }

          v111 = *v108;
          if (*v108 && v97)
          {
            v112 = v108[1];
            v113 = v108[2];
            v114 = (v111 + v96 * (v97 * v93));
            v115 = *(result + 88);
            do
            {
              if ((v114 + 1) > v112 || v114 >= v114 + 1 || v114 < v113)
              {
                goto LABEL_354;
              }

              v118 = *v114;
              if (*v114 < 0.0)
              {
                v118 = -*v114;
              }

              if (v118 >= v101)
              {
                v101 = v118;
              }

              v114 = (v114 + v96);
              --v115;
            }

            while (v115);
          }

          ++v107;
        }

        while (v107 != v28);
        goto LABEL_157;
      }

      v101 = 0.0;
LABEL_157:
      if (*(result + 92) >= v101)
      {
        v119 = *(result + 92);
      }

      else
      {
        v119 = v101;
      }

      v120 = *(result + 108);
      v121 = *(result + 112);
      v122 = v120 * v119;
      *(result + 92) = v101;
      *(result + 96) = v121;
      v123 = *(result + 4);
      v124 = 1.0;
      if (v123 < v122)
      {
        v125 = 0;
        if (v122 < 0.5)
        {
          do
          {
            v122 = v122 + v122;
            ++v125;
          }

          while (v122 < 0.5);
        }

        else
        {
          while (v122 >= 1.0)
          {
            v122 = v122 * 0.5;
            --v125;
          }
        }

        v126 = (v122 * -0.5) + 1.0;
        if (v122 <= 0.70712)
        {
          v126 = (1.0 - v122) + (1.0 - v122);
        }

        v127 = 4;
        do
        {
          v126 = v126 + ((v126 * (0.5 - (v122 * v126))) + (v126 * (0.5 - (v122 * v126))));
          --v127;
        }

        while (v127);
        v124 = (v123 * v126) * COERCE_FLOAT((v125 << 23) + 0x40000000);
      }

      v128 = v120 * v124;
      if ((v120 * v124) < v121)
      {
        *(result + 112) = v128;
        *(result + 116) = v124;
        *(result + 100) = 0;
      }

      else
      {
        v129 = *(result + 100);
        if (v129 >= *(result + 104))
        {
          v205 = *(result + 40);
          v206 = (v205 + 16);
          v207 = v205 + 20;
          if (v207 > *(result + 48) || v206 > v207 || v206 < *(result + 56))
          {
            goto LABEL_354;
          }

          v124 = (*(result + 116) * *v206) + (v124 - (v124 * *v206));
          *(result + 116) = v124;
          if (v121 >= (v120 * v124))
          {
            v210 = v128 < v121;
          }

          else
          {
            v121 = v120 * v124;
            v210 = 1;
          }

          if (v210)
          {
            if (v128 < v121)
            {
              v121 = v128;
            }

            *(result + 112) = v121;
          }
        }

        else
        {
          *(result + 100) = v129 + 1;
          v124 = *(result + 116);
        }
      }

      if (v124 < 0.8414)
      {
        v141 = *(result + 40);
        v142 = *(result + 48);
        v143 = v141 + 1;
        v145 = (v141 + 1) <= v142 && v141 < v143 && v141 >= *(result + 56);
        v146 = v141 + 2;
        if (!v145 || v146 > v142 || v143 > v146)
        {
          goto LABEL_354;
        }

        v149 = ((v120 * v124) * 0.59424) + ((v120 * v124) * 0.59424);
        v139 = v120 * *v141;
        v140 = v149 * v141[1];
      }

      else
      {
        v130 = *(result + 40);
        v131 = *(result + 48);
        v132 = (v130 + 8);
        v133 = (v130 + 12);
        v135 = v130 + 12 <= v131 && v132 <= v133 && v132 >= *(result + 56);
        v136 = v130 + 16;
        if (!v135 || v136 > v131 || v133 > v136)
        {
          goto LABEL_354;
        }

        v139 = v120 * *v132;
        v140 = *v133;
      }

      *(result + 108) = v139 + v140;
      v243 = a2[2];
      v244 = a2[1];
      v150 = *a3;
      v151 = *(a3 + 8);
      v247 = *(a3 + 16);
      v249 = *a2;
      if (v235)
      {
        if (v28)
        {
          v152 = 0;
          v239 = v93;
          do
          {
            v153 = &v150[3 * v152];
            if ((v153 + 3) > v151 || v153 >= v153 + 3 || v153 < v247)
            {
              goto LABEL_354;
            }

            v156 = (v249 + 24 * v152);
            v157 = (v156 + 3) > v244 || v156 >= v156 + 3;
            if (v157 || v156 < v243)
            {
              goto LABEL_354;
            }

            v159 = v150;
            v160 = v151;
            v161 = *(result + 88);
            v163 = *v153;
            v162 = v153[1];
            v164 = v153[2];
            v165 = *v156;
            v166 = v156[1];
            v167 = v156[2];
            *&v168 = -1;
            *(&v168 + 1) = -1;
            a26 = v168;
            a27 = v168;
            a24 = v168;
            a25 = v168;
            a22 = v168;
            a23 = v168;
            a20 = v168;
            a21 = v168;
            a18 = v168;
            a19 = v168;
            a16 = v168;
            a17 = v168;
            a14 = v168;
            a15 = v168;
            __b = v168;
            a13 = v168;
            if (*v153)
            {
              v169 = (v161 * v93);
              if (a4 == 1)
              {
                p_b = (v163 + 4 * v169);
              }

              else
              {
                if (v161)
                {
                  v171 = 0;
                  v172 = (v163 + v96 * (v93 * v161));
                  do
                  {
                    v174 = v172 + 1 <= v162 && v172 < v172 + 1 && v172 >= v164;
                    v175 = &__b + v171;
                    v176 = &__b + v171 + 4;
                    if (!v174 || v175 < &__b || v176 > &a28 || v175 > v176)
                    {
                      goto LABEL_354;
                    }

                    p_b = &__b;
                    *(&__b + v171) = *v172;
                    v171 += 4;
                    v172 = (v172 + v96);
                  }

                  while (4 * v161 != v171);
                }

                else
                {
                  p_b = &__b;
                }

                v162 = &a28;
              }

              v180 = (v165 + 4 * v169 * a5);
              if (a5 == 1)
              {
                v181 = v166;
              }

              else
              {
                v180 = &__b;
                v181 = &a28;
              }

              a10 = v180;
              *&a11 = v181;
              if (a5 == 1)
              {
                v182 = v167;
              }

              else
              {
                v182 = &__b;
              }

              *(&a11 + 1) = v182;
              vars0[0] = p_b;
              vars0[1] = v162;
              v183 = v165;
              dvlim_blk_ch_limit_and_boost_0(result, &a10, vars0, v152);
              result = v245;
              v28 = v246;
              v93 = v239;
              if (a5 != 1)
              {
                v184 = *(v245 + 88);
                if (v184)
                {
                  v185 = (v183 + v238 * (v239 * v161));
                  v186 = &__b;
                  do
                  {
                    v187 = (v186 + 1);
                    v189 = v186 < &__b || v187 > &a28 || v186 >= v187;
                    v190 = (v185 + 1);
                    if (v189 || v190 > v166 || v185 >= v190 || v185 < v167)
                    {
                      goto LABEL_354;
                    }

                    v194 = *v186++;
                    *v185 = v194;
                    v185 = (v185 + v238);
                    --v184;
                  }

                  while (v184);
                }
              }
            }

            ++v152;
            v150 = v159;
            v151 = v160;
          }

          while (v152 != v28);
        }
      }

      else if (v28)
      {
        v195 = 0;
        v196 = 0;
        do
        {
          v197 = &v150[v196 / 8];
          v198 = &v150[v196 / 8 + 3];
          if (v198 > v151 || v197 > v198 || v197 < v247)
          {
            goto LABEL_354;
          }

          v201 = *v197;
          if (v201)
          {
            v202 = v249 + v196;
            v203 = v249 + v196 + 24;
            if (v203 > v244 || v202 > v203 || v202 < v243)
            {
              goto LABEL_354;
            }

            v204 = *(result + 88) * v93;
            *&__b = *(v249 + v196) + 4 * v204;
            *(&__b + 8) = *(v249 + v196 + 8);
            a10 = (v201 + 4 * v204);
            a11 = *&v150[v196 / 8 + 1];
            dvlim_blk_ch_limit_and_boost_0(result, &__b, &a10, v195);
            result = v245;
            v28 = v246;
          }

          v196 += 24;
          ++v195;
        }

        while (v242 != v196);
      }

      if (++v93 >= *(result + 144))
      {
        return result;
      }
    }
  }

  if (a4 == 1 && a5 == 1)
  {
    v29 = (&a13 + 15) & 0xFFFFFFFFFFFFFFE0;
    v30 = ((&a13 + 15) & 0xFFFFFFFFFFFFFFE0) + 1024;
    v33 = &STACK[0x11E0] >= v30 && &__b <= v30 && (&STACK[0x11E0] - v30) > 124;
    v35 = &__b > v29 || &STACK[0x11E0] < v29;
    v248 = v35;
    if (*(result + 16))
    {
      v36 = 0;
      v37 = &STACK[0x11E0] - v29;
      v38 = (v29 + 1055) & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = *a3 + 24 * v36;
        if (v39 + 24 > *(a3 + 8) || v39 >= v39 + 24 || v39 < *(a3 + 16))
        {
          goto LABEL_354;
        }

        v42 = *a2 + 24 * v36;
        v43 = v42 + 24 > a2[1] || v42 >= v42 + 24;
        if (v43 || v42 < a2[2])
        {
          goto LABEL_354;
        }

        if (*(result + 88) == 40)
        {
          v45 = *(result + 28);
          if (v45)
          {
            v46 = *v39;
            v47 = *(v39 + 8);
            v48 = *(v39 + 16);
            v49 = *v42;
            v50 = *(v42 + 8);
            v51 = *(v42 + 16);
            do
            {
              v52 = (v46 + 1) > v47 || v46 >= v46 + 1;
              v53 = !v52 && v46 >= v48;
              v54 = v49 + 1;
              v55 = !v53 || v54 > v50;
              v56 = v55 || v49 >= v54;
              if (v56 || v49 < v51)
              {
                goto LABEL_354;
              }

              v58 = *v46++;
              v59 = v58;
              v60 = *(result + 4);
              if (v58 >= v60)
              {
                v59 = *(result + 4);
              }

              v61 = -v60;
              if (v59 < v61)
              {
                v59 = v61;
              }

              *v49++ = (*(result + 8) * v59) * 256.0;
            }

            while (--v45);
          }
        }

        else
        {
          v62 = v36;
          v63 = v37;
          memset(&__b, 255, 0x820uLL);
          result = v245;
          v28 = v246;
          v37 = v63;
          v36 = v62;
          v65 = *(v245 + 28);
          if (v65)
          {
            if (!v248)
            {
              v66 = 0;
              v68 = *(v39 + 8);
              v67 = *(v39 + 16);
              v70 = *(v42 + 8);
              v69 = *(v42 + 16);
              v71 = *v39;
              v72 = *v42;
              while (1)
              {
                if (v68 < v71)
                {
                  goto LABEL_354;
                }

                if (v67 > v71)
                {
                  goto LABEL_354;
                }

                if ((v68 - v71) < 125)
                {
                  goto LABEL_354;
                }

                if (v63 < 125)
                {
                  goto LABEL_354;
                }

                v73 = 0;
                v64.i32[0] = *(v245 + 4);
                v74 = vdupq_lane_s32(*v64.f32, 0);
                do
                {
                  *(v29 + v73 * 4) = vbslq_s8(vcgtq_f32(v74, *&v71[v73]), *&v71[v73], v74);
                  v73 += 4;
                }

                while (v73 != 32);
                if (!v33)
                {
                  goto LABEL_354;
                }

                v64.f32[0] = -v64.f32[0];
                v64 = vdupq_lane_s32(*v64.f32, 0);
                if (v38 == v30)
                {
                  v77 = -4;
                  v78 = ((&a13 + 15) & 0xFFFFFFFFFFFFFFE0);
                  do
                  {
                    v78[64] = vmaxq_f32(*v78, v64);
                    v77 += 4;
                    ++v78;
                  }

                  while (v77 < 0x1C);
                }

                else
                {
                  v75 = (&a13 + 15) & 0xFFFFFFFFFFFFFFE0;
                  v76 = 32;
                  do
                  {
                    *(v75 + 1024) = vbslq_s8(vcgtq_f32(v64, *v75), v64, *v75);
                    v75 += 16;
                    v76 -= 4;
                  }

                  while (v76);
                }

                if (v70 < v72 || v69 > v72 || (v70 - v72) < 125)
                {
                  goto LABEL_354;
                }

                v79 = *(v245 + 8) * 256.0;
                if (v38 != v30 || ((&v72[1].u64[1] + 7) & 0xFFFFFFFFFFFFFFE0) != v72)
                {
                  break;
                }

                v80 = -4;
                v81 = v72;
                v82 = (((&a13 + 15) & 0xFFFFFFFFFFFFFFE0) + 1024);
                do
                {
                  v83 = *v82++;
                  *v81++ = vmulq_n_f32(v83, v79);
                  v80 += 4;
                }

                while (v80 < 0x1C);
                v65 = *(v245 + 28);
LABEL_98:
                v66 += 32;
                v71 += 32;
                v72 += 8;
                if (v66 >= v65)
                {
                  goto LABEL_99;
                }
              }

              v84 = 0;
              v85 = -2;
              while (1)
              {
                v86 = (v29 + v84 + 1028);
                v87 = v29 + v84 + 1032;
                if (v87 > v29 + 1152 || v86 > v87)
                {
                  break;
                }

                v89 = *v86;
                v90 = &v72->f32[v84 / 4 + 1];
                v72->f32[v84 / 4] = v79 * *(v29 + v84 + 1024);
                v91 = &v72->u64[v84 / 8 + 1];
                if (v91 > &v72[8] || v90 > v91)
                {
                  break;
                }

                *v90 = v79 * v89;
                v85 += 2;
                v84 += 8;
                if (v85 >= 0x1E)
                {
                  goto LABEL_98;
                }
              }
            }

LABEL_354:
            __break(0x5519u);
          }
        }

LABEL_99:
        ++v36;
      }

      while (v36 != v28);
    }
  }

  else if (*(result + 16))
  {
    v211 = 0;
    v212 = *(a3 + 16);
    do
    {
      v213 = *a3 + 24 * v211;
      if (v213 + 24 > *(a3 + 8) || v213 >= v213 + 24 || v213 < v212)
      {
        goto LABEL_354;
      }

      v216 = *a2 + 24 * v211;
      v217 = v216 + 24 > a2[1] || v216 >= v216 + 24;
      if (v217 || v216 < a2[2])
      {
        goto LABEL_354;
      }

      v219 = *(result + 28);
      if (v219)
      {
        v220 = *v213;
        v221 = *(v213 + 8);
        v222 = *(v213 + 16);
        v224 = *v216;
        v223 = *(v216 + 8);
        v225 = *(v216 + 16);
        do
        {
          v227 = (v220 + 1) <= v221 && v220 < v220 + 1 && v220 >= v222;
          v228 = v224 + 1;
          if (!v227 || v228 > v223 || v224 >= v228 || v224 < v225)
          {
            goto LABEL_354;
          }

          v232 = *v220;
          v233 = *(result + 4);
          if (*v220 >= v233)
          {
            v232 = *(result + 4);
          }

          v234 = -v233;
          if (v232 < v234)
          {
            v232 = v234;
          }

          *v224 = (*(result + 8) * v232) * 256.0;
          v224 += a5;
          v220 += a4;
          --v219;
        }

        while (v219);
      }

      ++v211;
    }

    while (v211 != v28);
  }

  return result;
}

unint64_t dvlim_blk_ch_limit_and_boost_0(unint64_t result, void *a2, void *a3, unsigned int a4)
{
  v4 = (*(result + 120) + 24 * a4);
  if ((v4 + 3) <= *(result + 128) && v4 <= v4 + 3 && v4 >= *(result + 136))
  {
    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    if (v7 + 16 <= v8 && v9 <= v7)
    {
      v11 = *(v7 + 4);
      v12 = *(v7 + 8);
      v13 = v12 + 4 * v11;
      v14 = *(result + 64);
      v15 = *(result + 72);
      v16 = *(result + 80);
      v17 = (*(result + 96) * *(result + 172)) * 256.0;
      v18 = (*(result + 112) * *(result + 8)) * 256.0;
      v19 = *(result + 148);
      v20 = *(result + 88);
      if (v20 == 40)
      {
        v33 = 0;
        for (i = 39 - v19; ; --i)
        {
          v35 = (v12 + v33);
          v36 = v12 + v33 + 4;
          v37 = v36 > v13 || v35 > v36;
          if (v37 || v35 < v12)
          {
            break;
          }

          result = a3[1];
          v39 = (*a3 + v33);
          v40 = (v39 + 1) > result || v39 > v39 + 1;
          if (v40 || v39 < a3[2])
          {
            break;
          }

          v42 = *v35;
          *v35 = *v39;
          v43 = (v14 + 4 * i);
          if ((v43 + 1) > v15)
          {
            break;
          }

          if (v43 > v43 + 1)
          {
            break;
          }

          if (v43 < v16)
          {
            break;
          }

          v44 = (v14 + 4 * v19);
          result = (v44 + 1);
          if ((v44 + 1) > v15)
          {
            break;
          }

          if (v44 > result)
          {
            break;
          }

          if (v44 < v16)
          {
            break;
          }

          result = *a2 + v33;
          if (result + 4 > a2[1] || result > result + 4 || result < a2[2])
          {
            break;
          }

          *result = v42 * ((v17 * *v43) + (v18 * *v44));
          v33 += 4;
          ++v19;
          if (v33 == 160)
          {
            return result;
          }
        }
      }

      else if (v20 == 64)
      {
        v21 = 0;
        for (j = 63 - v19; ; --j)
        {
          v23 = (v12 + v21);
          v24 = v12 + v21 + 4;
          v25 = v24 > v13 || v23 > v24;
          if (v25 || v23 < v12)
          {
            break;
          }

          result = a3[1];
          v27 = (*a3 + v21);
          v28 = (v27 + 1) > result || v27 > v27 + 1;
          if (v28 || v27 < a3[2])
          {
            break;
          }

          v30 = *v23;
          *v23 = *v27;
          v31 = (v14 + 4 * j);
          if ((v31 + 1) > v15)
          {
            break;
          }

          if (v31 > v31 + 1)
          {
            break;
          }

          if (v31 < v16)
          {
            break;
          }

          v32 = (v14 + 4 * v19);
          result = (v32 + 1);
          if ((v32 + 1) > v15)
          {
            break;
          }

          if (v32 > result)
          {
            break;
          }

          if (v32 < v16)
          {
            break;
          }

          result = *a2 + v21;
          if (result + 4 > a2[1] || result > result + 4 || result < a2[2])
          {
            break;
          }

          *result = v30 * ((v17 * *v31) + (v18 * *v32));
          v21 += 4;
          ++v19;
          if (v21 == 256)
          {
            return result;
          }
        }
      }

      else
      {
        v45 = 0;
        for (k = 31 - v19; ; --k)
        {
          v47 = (v12 + v45);
          v48 = v12 + v45 + 4;
          v49 = v48 > v13 || v47 > v48;
          if (v49 || v47 < v12)
          {
            break;
          }

          result = a3[1];
          v51 = (*a3 + v45);
          v52 = (v51 + 1) > result || v51 > v51 + 1;
          if (v52 || v51 < a3[2])
          {
            break;
          }

          v54 = *v47;
          *v47 = *v51;
          v55 = (v14 + 4 * k);
          if ((v55 + 1) > v15)
          {
            break;
          }

          if (v55 > v55 + 1)
          {
            break;
          }

          if (v55 < v16)
          {
            break;
          }

          v56 = (v14 + 4 * v19);
          result = (v56 + 1);
          if ((v56 + 1) > v15)
          {
            break;
          }

          if (v56 > result)
          {
            break;
          }

          if (v56 < v16)
          {
            break;
          }

          result = *a2 + v45;
          if (result + 4 > a2[1] || result > result + 4 || result < a2[2])
          {
            break;
          }

          *result = v54 * ((v17 * *v55) + (v18 * *v56));
          v45 += 4;
          ++v19;
          if (v45 == 128)
          {
            return result;
          }
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_drcd_setup(uint64_t result, unsigned __int16 *a2, __int16 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = 0.0;
  if (a2[1])
  {
    goto LABEL_21;
  }

  if (v4 - 3 >= 5)
  {
    if (v4 >= 2)
    {
      if (v4 != 2)
      {
        goto LABEL_21;
      }

      v12 = *(a4 + 2);
      if (v12 < 1)
      {
        v5 = vcvts_n_f32_s32(v12, 0xFuLL) * 0.5;
        if (result)
        {
          goto LABEL_20;
        }

        v13 = a2[3];
      }

      else
      {
        v5 = vcvts_n_f32_u32(*(a4 + 2), 0xFuLL) * 0.5;
        v13 = a2[4];
      }

      v14 = vcvts_n_f32_s32(((41943 * v13 + 128) >> 8), 0xFuLL);
      v5 = (v5 * v14) + (v5 * v14);
      goto LABEL_20;
    }

    v7 = *(a4 + 2);
    v8 = v7;
    v9 = v7;
    v23 = v7 <= 0;
    v10 = 3;
    if (!v23)
    {
      v10 = 4;
      v8 = v9;
    }

    v11 = vcvts_n_f32_s32(((41943 * a2[v10] + 128) >> 8), 0xFuLL);
    v5 = (((v8 * 0.000030518) * 0.5) * v11) + (((v8 * 0.000030518) * 0.5) * v11);
  }

  else
  {
    if (a3[1])
    {
      LOWORD(v6) = a3[2];
      if (v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = *(a4 + 2);
      }

      v5 = (vcvts_n_f32_s32(v6, 0xFuLL) * 0.5) + 0.11458;
      goto LABEL_20;
    }

    v5 = vcvts_n_f32_s32(*(a4 + 2), 0xFuLL) * 0.5;
  }

  if (result)
  {
    v5 = v5 + -0.11458;
  }

LABEL_20:
  if (v5 >= 1.0)
  {
    LODWORD(v16) = 0x7FFFFFFF;
    goto LABEL_24;
  }

LABEL_21:
  v15 = v5 * 2147500000.0;
  if (v15 < -2147500000.0)
  {
    v15 = -2147500000.0;
  }

  v16 = rintf(v15);
LABEL_24:
  v17 = v16 >> 7;
  v18 = (v16 >> 27) + 1;
  *(a4 + 4) = v18;
  v19 = vcvts_n_f32_u32(((v17 & 0xFFFFF) << 10) | 0x40000000, 0x1FuLL);
  *(a4 + 8) = v19;
  if (v4)
  {
    v20 = *a3;
    v21 = &ddp_udc_int_dialexp + 2 * v20;
    v22 = v21 + 2;
    v23 = v21 < &ddp_udc_int_dialexp || v22 > ddp_udc_int_dialmant;
    v24 = v23 || v21 >= v22;
    if (v24 || (LOWORD(v18) = *(&ddp_udc_int_dialexp + v20) + v18, *(a4 + 4) = v18, v25 = &ddp_udc_int_dialmant[v20], v25 < ddp_udc_int_dialmant) || v25 + 1 > flt_19B303704 || v25 > v25 + 1)
    {
      __break(0x5519u);
      return result;
    }

    v19 = v19 * *v25;
  }

  v26 = vcvts_n_f32_s32(((41943 * a2[2] + 128) >> 8), 0xFuLL);
  v27 = (v19 * v26) + (v19 * v26);
  v28 = (LODWORD(v27) >> 23) - 126;
  if (!(2 * LODWORD(v27)))
  {
    v28 = -127;
  }

  if (-v28 < 0x3C)
  {
    v29 = -v28;
  }

  else
  {
    v29 = 60;
  }

  if (v28 <= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  *(a4 + 8) = v27 * COERCE_FLOAT((v30 << 23) + 1065353216);
  *(a4 + 4) = v18 - v30;
  return result;
}

uint64_t ddp_udc_int_frmd_release(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  *(a1 + 24) = -1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    if (v4 < 1)
    {
      return 2;
    }

    v5 = 0;
    for (i = *(a2 + 1); *i != v3; i += 4)
    {
      if (v4 == ++v5)
      {
        return 2;
      }
    }

    v7 = *(a2 + 1) + 32 * v5;
    v9 = *(v7 + 24);
    v8 = (v7 + 24);
    v10 = v9 - 1;
    if (v9 >= 1)
    {
      *v8 = v10;
    }

    *(a1 + 16) = 0;
  }

  v11 = *(a1 + 8);
  if (!v11)
  {
    return v11;
  }

  v12 = *a3;
  if (v12 < 1)
  {
    return 2;
  }

  v13 = 0;
  for (j = *(a3 + 1); *j != v11; j += 4)
  {
    if (v12 == ++v13)
    {
      return 2;
    }
  }

  v16 = *(a3 + 1) + 32 * v13;
  v18 = *(v16 + 24);
  v17 = (v16 + 24);
  v19 = v18 - 1;
  if (v18 >= 1)
  {
    *v17 = v19;
  }

  v11 = 0;
  *(a1 + 8) = 0;
  return v11;
}

uint64_t ddp_udc_int_frmd_retain(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  if (v4)
  {
    if (v5 < 1)
    {
      return 2;
    }

    v6 = 0;
    for (i = *(a3 + 1); *i != v4; i += 4)
    {
      if (v5 == ++v6)
      {
        return 2;
      }
    }

    v8 = *(a3 + 1) + 32 * v6;
    v10 = *(v8 + 24);
    v9 = (v8 + 24);
    v11 = v10 - 1;
    if (v10 >= 1)
    {
      *v9 = v11;
    }
  }

  v12 = *(a2 + 16);
  *(a1 + 16) = v12;
  if (v5 < 1)
  {
    return 2;
  }

  v13 = 0;
  for (j = *(a3 + 1); *j != v12; j += 4)
  {
    if (v5 == ++v13)
    {
      return 2;
    }
  }

  ++*(*(a3 + 1) + 32 * v13 + 24);
  v16 = *(a1 + 8);
  v17 = *a4;
  if (v16)
  {
    if (v17 >= 1)
    {
      v18 = 0;
      for (k = *(a4 + 1); *k != v16; k += 4)
      {
        if (v17 == ++v18)
        {
          return 2;
        }
      }

      v20 = *(a4 + 1) + 32 * v18;
      v22 = *(v20 + 24);
      v21 = (v20 + 24);
      v23 = v22 - 1;
      if (v22 >= 1)
      {
        *v21 = v23;
      }

      goto LABEL_22;
    }

    return 2;
  }

LABEL_22:
  v24 = *(a2 + 8);
  *(a1 + 8) = v24;
  if (v17 < 1)
  {
    return 2;
  }

  v25 = 0;
  for (m = *(a4 + 1); *m != v24; m += 4)
  {
    if (v17 == ++v25)
    {
      return 2;
    }
  }

  result = 0;
  ++*(*(a4 + 1) + 32 * v25 + 24);
  return result;
}

uint64_t ddp_udc_int_frmd_checkcoherence(uint64_t result, uint64_t a2)
{
  *(a2 + 60) = 1;
  if (*(result + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a2 + 24) == 0;
  }

  if (v2 && *(result + 64) != 0 && *(a2 + 64) != 0)
  {
    v6 = *(result + 36) == *(a2 + 36) && *(result + 30) == *(a2 + 30);
    *(a2 + 60) = v6;
  }

  return result;
}

uint64_t read_variable_bits_int_11123(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = 0;
  result = read_variable_bits_11124(a1, a2, &v5);
  if (!result)
  {
    if (HIDWORD(v5))
    {
      return 8;
    }

    else
    {
      result = 0;
      *a3 += v5;
    }
  }

  return result;
}

uint64_t read_variable_bits_11124(uint64_t a1, unsigned int a2, void *a3)
{
  result = 1;
  if (a3)
  {
    v7 = 0;
    v8 = a2;
    v9 = (1 << a2);
    for (i = 64 - a2; ; i -= a2)
    {
      v13 = 0xAAAAAAAAAAAAAAAALL;
      if (ddp_udc_int_evo_brw_read(a1, a2, &v13))
      {
        return 10;
      }

      v11 = v13;
      v13 = 0xAAAAAAAAAAAAAAAALL;
      if (ddp_udc_int_evo_brw_read(a1, 1u, &v13))
      {
        return 10;
      }

      v12 = v11 + v7;
      if (!v13)
      {
        break;
      }

      if (i < 1)
      {
        return 10;
      }

      v7 = (v12 << v8) + v9;
    }

    result = 0;
    *a3 += v12;
  }

  return result;
}

uint64_t ddp_udc_int_evo_parse_payload_id(uint64_t a1, void *a2)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(a1, 5u, &v6))
  {
    return 10;
  }

  v5 = v6;
  *a2 = v6;
  if (v5 == 31)
  {
    return read_variable_bits_11124(a1, 5u, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ddp_udc_int_evo_parse_payload(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a5 + 8) = 0u;
  v6 = (a5 + 8);
  *a5 = a2;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  v7 = (a5 + 72);
  if (a5 + 8 > (a5 + 72))
  {
    goto LABEL_59;
  }

  v12 = result;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  result = ddp_udc_int_evo_brw_read(result, 1u, &v27);
  if (result)
  {
    return 10;
  }

  v13 = v27;
  *(a5 + 20) = v27;
  if (v13)
  {
    *(a5 + 24) = 0;
    if (a5 + 24 > (a5 + 32))
    {
      goto LABEL_59;
    }

    result = read_variable_bits_11124(v12, 0xBu, (a5 + 24));
    if (result)
    {
      return result;
    }
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = ddp_udc_int_evo_brw_read(v12, 1u, &v27);
  if (result)
  {
    return 10;
  }

  v14 = v27;
  *(a5 + 32) = v27;
  if (v14)
  {
    *(a5 + 40) = 0;
    if (a5 + 40 > (a5 + 48))
    {
      goto LABEL_59;
    }

    result = read_variable_bits_11124(v12, 0xBu, (a5 + 40));
    if (result)
    {
      return result;
    }
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = ddp_udc_int_evo_brw_read(v12, 1u, &v27);
  if (result)
  {
    return 10;
  }

  v15 = v27;
  *(a5 + 48) = v27;
  if (v15)
  {
    *(a5 + 56) = 0;
    if (a5 + 56 <= (a5 + 64))
    {
      result = read_variable_bits_11124(v12, 2u, (a5 + 56));
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_59:
    __break(0x5519u);
    return result;
  }

LABEL_16:
  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(v12, 1u, &v27))
  {
    return 10;
  }

  v16 = v27;
  *(a5 + 64) = v27;
  if (v16)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (ddp_udc_int_evo_brw_read(v12, 8u, &v27))
    {
      return 10;
    }

    *(a5 + 65) = v27;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(v12, 1u, &v27))
  {
    return 10;
  }

  if (v27)
  {
    *v6 |= 1u;
    goto LABEL_23;
  }

  if (*(a5 + 20))
  {
    goto LABEL_37;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(v12, 1u, &v27))
  {
    return 10;
  }

  if (v27)
  {
    *v6 |= 8u;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (ddp_udc_int_evo_brw_read(v12, 1u, &v27))
    {
      return 10;
    }

    if (v27)
    {
      *v6 |= 2u;
    }

    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (ddp_udc_int_evo_brw_read(v12, 1u, &v27))
    {
      return 10;
    }

    if (v27)
    {
      *v6 |= 4u;
    }

    goto LABEL_37;
  }

  if (*(a5 + 20))
  {
LABEL_37:
    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (ddp_udc_int_evo_brw_read(v12, 5u, &v27))
    {
      return 10;
    }

    *(a5 + 12) = v27;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    if (ddp_udc_int_evo_brw_read(v12, 2u, &v27))
    {
      return 10;
    }

    *(a5 + 16) = v27;
  }

LABEL_23:
  v28 = 0;
  result = read_variable_bits_11124(v12, 8u, &v28);
  if (!result)
  {
    if (a6)
    {
      v17 = *(a4 + 24);
      v18 = v17 + v28;
      v19 = _ddp_udc_int_evo_malloc(a3, v28, v17, v17 + v28);
      *(a5 + 88) = v19 + v18;
      *(a5 + 96) = v19;
      v20 = v28;
      *(a5 + 72) = v28;
      *(a5 + 80) = v19;
      if (!v19)
      {
        return 2;
      }

      if (v20)
      {
        v21 = 0;
        do
        {
          v27 = 0xAAAAAAAAAAAAAAAALL;
          result = ddp_udc_int_evo_brw_read(v12, 8u, &v27);
          if (result)
          {
            return 10;
          }

          v22 = (*(a5 + 80) + v21);
          if (v22 >= *(a5 + 88) || v22 < *(a5 + 96))
          {
            goto LABEL_59;
          }

          *v22 = v27;
          ++v21;
          v20 = v28;
        }

        while (v21 < v28);
      }
    }

    else
    {
      v20 = v28;
      if (v28)
      {
        v24 = *(v12 + 32);
        v25 = v28;
        do
        {
          v26 = v25 & 0xFFFFFFFFFFFFFFF8;
          if (!(v25 >> 61))
          {
            v26 = 8 * v25;
          }

          if (v24 >= v26)
          {
            *(v12 + 32) = v24 - v26;
            *(v12 + 8) += v26 >> 3;
            v24 -= v26;
          }

          v25 -= v26 >> 3;
        }

        while (v25);
      }
    }

    result = 0;
    *v7 = v20;
  }

  return result;
}

uint64_t *_ddp_udc_int_evo_malloc(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (__CFADD__(a3, a2) || (v4 = (a3 + a2 + 7) & 0xFFFFFFFFFFFFFFF8, v5 = result[1], v5 < v4))
  {
    if (!a4)
    {
      return 0;
    }
  }

  else
  {
    v6 = *result;
    *result += v4;
    result[1] = v5 - v4;
    if (v5 >= a4)
    {
      return v6;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_evo_parse_bitstream(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int *a4, unint64_t a5)
{
  v56 = 0;
  result = 1;
  if (!a1 || !a2)
  {
    return result;
  }

  if (a5 + 16 < a5)
  {
    goto LABEL_94;
  }

  *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
  result = ddp_udc_int_evo_brw_read(a1, 2u, v54);
  if (result)
  {
    return 10;
  }

  v11 = v54[0];
  *a5 = v54[0];
  if (v11 == 3)
  {
    if (a5 + 4 < a5)
    {
      goto LABEL_94;
    }

    result = read_variable_bits_int_11123(a1, 2u, a5);
    if (result)
    {
      return result;
    }

    v11 = *a5;
  }

  if (v11)
  {
    return 8;
  }

  *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
  result = ddp_udc_int_evo_brw_read(a1, 3u, v54);
  if (result)
  {
    return 10;
  }

  v12 = v54[0];
  *(a5 + 4) = v54[0];
  v13 = (a5 + 4);
  if (v12 != 7)
  {
    goto LABEL_17;
  }

  if (v13 > a5 + 8)
  {
LABEL_94:
    __break(0x5519u);
    return result;
  }

  result = read_variable_bits_int_11123(a1, 3u, v13);
  if (result)
  {
    return result;
  }

LABEL_17:
  *(a5 + 24) = 0;
  v14 = *(a1 + 16);
  v57 = *a1;
  v58 = v14;
  v59 = *(a1 + 32);
  do
  {
    result = ddp_udc_int_evo_parse_payload_id(a1, &v56);
    if (result)
    {
      return result;
    }

    v15 = v56;
    if (!v56)
    {
      break;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54[4] = v16;
    v54[5] = v16;
    v54[2] = v16;
    v54[3] = v16;
    v54[0] = v16;
    v54[1] = v16;
    ++*(a5 + 24);
    result = ddp_udc_int_evo_parse_payload(a1, v15, 0, 0, v54, 0);
    if (result)
    {
      return result;
    }
  }

  while (v56);
  v17 = *(a5 + 24);
  v18 = 24 * (*(a3 + 16) + v17);
  if (v18 < 24 * v17)
  {
    if (v18)
    {
      goto LABEL_94;
    }

    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    result = 2;
    *(a5 + 48) = 0;
    return result;
  }

  v19 = a2[1];
  v30 = v19 >= v18;
  v20 = v19 - v18;
  if (!v30)
  {
    goto LABEL_94;
  }

  v21 = *a2;
  v22 = *a2 + v18;
  *a2 = v22;
  a2[1] = v20;
  *(a5 + 32) = v21;
  *(a5 + 40) = v22;
  *(a5 + 48) = v21;
  if (!v21)
  {
    return 2;
  }

  if (v17)
  {
    v23 = 0;
    v24 = a2[1];
    v25 = 1;
    while (v24 > 0x67)
    {
      v26 = *a2;
      v27 = *a2 + 104;
      v24 -= 104;
      *a2 = v27;
      a2[1] = v24;
      if (v26 > v27)
      {
        break;
      }

      v28 = (*(a5 + 32) + 8 * v23);
      v29 = (v28 + 1) > *(a5 + 40) || v28 > v28 + 1;
      v30 = !v29 && v28 >= *(a5 + 48);
      if (!v30)
      {
        break;
      }

      *v28 = v26;
      v31 = (*(a5 + 32) + 8 * v23);
      v32 = (v31 + 1) > *(a5 + 40) || v31 > v31 + 1;
      if (v32 || v31 < *(a5 + 48))
      {
        break;
      }

      if (!*v31)
      {
        return 2;
      }

      v23 = v25;
      v29 = v17 > v25++;
      if (!v29)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_94;
  }

LABEL_50:
  v34 = v58;
  *a1 = v57;
  *(a1 + 16) = v34;
  *(a1 + 32) = v59;
  *(a5 + 24) = 0;
  do
  {
    result = ddp_udc_int_evo_parse_payload_id(a1, &v56);
    v35 = v56;
    if (!v56)
    {
      break;
    }

    v36 = *(a5 + 40);
    v37 = *(a5 + 48);
    v39 = *(a5 + 24);
    v38 = *(a5 + 32);
    *(a5 + 24) = v39 + 1;
    v40 = (v38 + 8 * v39);
    if ((v40 + 1) > v36 || v40 > v40 + 1 || v40 < v37)
    {
      goto LABEL_94;
    }

    result = ddp_udc_int_evo_parse_payload(a1, v35, a2, a3, *v40, 1);
    if (result)
    {
      return result;
    }
  }

  while (v56);
  if (!a4)
  {
    return 0;
  }

  *a4 = 0;
  a4[8] = 0;
  *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(a1, 2u, v54))
  {
    return 10;
  }

  if ((v54[0] & 0xFFFFFFFC) != 0)
  {
    return 8;
  }

  v43 = dword_19B0B3910[v54[0] & 3];
  *a4 = v43;
  *(a5 + 8) = v43;
  *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
  if (ddp_udc_int_evo_brw_read(a1, 2u, v54))
  {
    return 10;
  }

  if ((v54[0] & 0xFFFFFFFC) != 0)
  {
    return 8;
  }

  v44 = dword_19B0B3910[v54[0] & 3];
  a4[8] = v44;
  *(a5 + 12) = v44;
  v45 = *(a1 + 16);
  v57 = *a1;
  v58 = v45;
  v59 = *(a1 + 32);
  if (!*(a4 + 1))
  {
    return 12;
  }

  if (*a4)
  {
    v46 = 0;
    do
    {
      *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
      result = ddp_udc_int_evo_brw_read(a1, 8u, v54);
      if (result)
      {
        return 10;
      }

      v47 = (*(a4 + 1) + v46);
      if (v47 >= *(a4 + 2) || v47 < *(a4 + 3))
      {
        goto LABEL_94;
      }

      *v47 = v54[0];
    }

    while (++v46 < *a4);
  }

  if (!*(a4 + 5))
  {
    return 12;
  }

  if (a4[8])
  {
    v49 = 0;
    do
    {
      *&v54[0] = 0xAAAAAAAAAAAAAAAALL;
      result = ddp_udc_int_evo_brw_read(a1, 8u, v54);
      if (result)
      {
        return 10;
      }

      v50 = (*(a4 + 5) + v49);
      if (v50 >= *(a4 + 6) || v50 < *(a4 + 7))
      {
        goto LABEL_94;
      }

      *v50 = v54[0];
    }

    while (++v49 < a4[8]);
  }

  v52 = v58;
  *a1 = v57;
  *(a1 + 16) = v52;
  *(a1 + 32) = v59;
  if (!(a4[8] + *a4))
  {
    return 0;
  }

  v53 = 0;
  do
  {
    ddp_udc_int_evo_brw_write(&v57, 0, 8u);
    result = 0;
    ++v53;
  }

  while (v53 < a4[8] + *a4);
  return result;
}

uint64_t ddp_udc_int_evo_calculate_pcm_protection(uint64_t *a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v36, 0, sizeof(v36));
  v35 = v36;
  if (!a4)
  {
    return 1;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[18] = v7;
  v37[19] = v7;
  v37[16] = v7;
  v37[17] = v7;
  v37[14] = v7;
  v37[15] = v7;
  v37[12] = v7;
  v37[13] = v7;
  v37[10] = v7;
  v37[11] = v7;
  v37[8] = v7;
  v37[9] = v7;
  v37[6] = v7;
  v37[7] = v7;
  v37[4] = v7;
  v37[5] = v7;
  v37[2] = v7;
  v37[3] = v7;
  v37[0] = v7;
  v37[1] = v7;
  if (*a2)
  {
    if (ddp_udc_int_hmac_sha256_init(v37, *(a2 + 8), *(a2 + 4)))
    {
      return 12;
    }
  }

  else if (ddp_udc_int_hmac_obf_sha256_init(v37))
  {
    return 12;
  }

  v8 = *a1;
  if (*a1)
  {
    if (*(a1 + 10) == 1)
    {
      v9 = 0;
      goto LABEL_11;
    }

    v10 = *(a1 + 11);
    if (v10 <= 2)
    {
      v9 = LODWORD(flt_19B303F20[v10]);
LABEL_11:
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = a1[1];
        v14 = (v13 + v11);
        v15 = v13 + v11 + 24;
        v16 = v15 > a1[2] || v14 > v15;
        v17 = !v16 && v14 >= a1[3];
        if (!v17)
        {
          break;
        }

        v18 = *(a1 + 10);
        if (!v18)
        {
          return 1;
        }

        v19 = *v14;
        if (v19 + 32 > *(v13 + v11 + 8) || *(v13 + v11 + 16) > v19)
        {
          break;
        }

        v21 = *v19;
        if (*v19 < v18)
        {
          return 1;
        }

        v22 = a1[4];
        if (HIDWORD(v22))
        {
          return 12;
        }

        v23 = *(v19 + 8);
        v24 = *(v19 + 16);
        v25 = *(v19 + 24);
        v17 = v24 >= v23;
        v26 = v24 - v23;
        if (!v17 || v25 > v23 || v22 > v26)
        {
          break;
        }

        if (v23)
        {
          v29 = v22 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          ddp_udc_int_sha256_do_hash_stride(v37, v23, v22, v21, v18, v9);
          v8 = *a1;
        }

        ++v12;
        v11 += 24;
        if (v12 >= v8)
        {
          goto LABEL_40;
        }
      }

LABEL_51:
      __break(0x5519u);
    }

    return 1;
  }

LABEL_40:
  if (HIDWORD(*a3))
  {
    return 12;
  }

  v30 = a3[1];
  v31 = a3[2];
  if (v30 > v31)
  {
    goto LABEL_51;
  }

  if (a3[3] > v30)
  {
    goto LABEL_51;
  }

  v32 = *a3 - 32;
  if (v31 - v30 < v32)
  {
    goto LABEL_51;
  }

  if (*a3 != 32)
  {
    ddp_udc_int_hmac_sha256_calculate_digest(v37, v30, v32);
  }

  if (ddp_udc_int_hmac_sha256_get_digest(v37, &v35))
  {
    return 12;
  }

  v34 = v35[1];
  *a4 = *v35;
  a4[1] = v34;
  if (a4 + 2 < a4)
  {
    goto LABEL_51;
  }

  return 0;
}

uint64_t evo_calculate_unalignedbytes_hmac_11136(uint64_t result, unsigned int a2, unsigned int *a3, unsigned int a4, unint64_t a5)
{
  if (a2)
  {
    v8 = result;
    if (a4)
    {
      v10 = *a3;
      if (v10 > a2)
      {
        goto LABEL_26;
      }

      v11 = result + a2;
      result = ddp_udc_int_hmac_sha256_calculate_digest(a5, result, v10);
      v12 = *(a3 + 1);
      v13 = v8 + v12;
      v14 = a4 - 1;
      if (a4 != 1)
      {
        v15 = a4;
        v16 = &a3[4 * a4];
        v17 = v15 - 1;
        v18 = a3 + 4;
        do
        {
          v19 = v18 - 4 < a3 || v18 > v16;
          if (v19 || v18 - 4 >= v18)
          {
            goto LABEL_26;
          }

          if (v13 > v11)
          {
            goto LABEL_26;
          }

          if (v13 < v8)
          {
            goto LABEL_26;
          }

          v21 = *v18 - v12;
          if (a2 - v12 < v21)
          {
            goto LABEL_26;
          }

          result = ddp_udc_int_hmac_sha256_calculate_digest(a5, v13, v21);
          v12 = *(v18 + 1);
          v13 = v8 + v12;
          v18 += 4;
        }

        while (--v17);
      }

      if (v13 > v11 || v13 < v8 || (v22 = a2 - a3[4 * v14 + 2], a2 - v12 < v22))
      {
LABEL_26:
        __break(0x5519u);
        return result;
      }

      v23 = a5;
    }

    else
    {
      v23 = a5;
      v13 = v8;
      LODWORD(v22) = a2;
    }

    return ddp_udc_int_hmac_sha256_calculate_digest(v23, v13, v22);
  }

  return result;
}

unint64_t ddp_udc_int_evo_check_bitstream_protection(unint64_t result, uint64_t *a2, unsigned int *a3, int a4, void *a5, int *a6)
{
  v52 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49[1] = v7;
  v48[1] = v7;
  v49[0] = v7;
  v48[0] = v7;
  v37 = v48;
  __s2 = v49;
  if (!(*a3 + a3[8]))
  {
    *a6 = 0;
    return 11;
  }

  v51[18] = v7;
  v51[19] = v7;
  v51[16] = v7;
  v51[17] = v7;
  v51[14] = v7;
  v51[15] = v7;
  v51[12] = v7;
  v51[13] = v7;
  v51[10] = v7;
  v51[11] = v7;
  v51[8] = v7;
  v51[9] = v7;
  v51[6] = v7;
  v51[7] = v7;
  v51[4] = v7;
  v51[5] = v7;
  v51[2] = v7;
  v51[3] = v7;
  v51[0] = v7;
  v51[1] = v7;
  v50[18] = v7;
  v50[19] = v7;
  v50[16] = v7;
  v50[17] = v7;
  v50[14] = v7;
  v50[15] = v7;
  v50[12] = v7;
  v50[13] = v7;
  v50[10] = v7;
  v50[11] = v7;
  v50[8] = v7;
  v50[9] = v7;
  v50[6] = v7;
  v50[7] = v7;
  v50[4] = v7;
  v50[5] = v7;
  v50[2] = v7;
  v50[3] = v7;
  v50[0] = v7;
  v50[1] = v7;
  v9 = a5[1];
  if (!v9)
  {
    return 12;
  }

  v10 = *v9;
  if (!v10)
  {
    return 9;
  }

  v13 = result;
  v14 = 0;
  v15 = *(v9 + 1);
  while (1)
  {
    v16 = *(v15 + 8 * v14);
    if (*v16 == a4)
    {
      break;
    }

    if (v10 == ++v14)
    {
      return 9;
    }
  }

  v17 = a5[2];
  if (!v17)
  {
    if (v16 >= v16 + 16)
    {
      goto LABEL_79;
    }

    v18 = 0;
LABEL_23:
    v21 = 1;
    goto LABEL_24;
  }

  if (v16 >= v16 + 16)
  {
    goto LABEL_79;
  }

  v18 = (v17 + 112 * v14);
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = v18 >= v18 + 14 || (v18 + 14) > a5[3];
  if (v19 || v18 < a5[4])
  {
    goto LABEL_79;
  }

  v21 = 0;
LABEL_24:
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (!a2[1])
  {
    return 1;
  }

  v22 = *(v16 + 4);
  if (a4 | v22)
  {
    if (ddp_udc_int_hmac_sha256_init(v51, *(v16 + 8), v22))
    {
      return 12;
    }

    result = ddp_udc_int_hmac_sha256_init(v50, *(v16 + 8), *(v16 + 4));
    if (result)
    {
      return 12;
    }
  }

  else
  {
    if (ddp_udc_int_hmac_obf_sha256_init(v51))
    {
      return 12;
    }

    result = ddp_udc_int_hmac_obf_sha256_init(v50);
    if (result)
    {
      return 12;
    }
  }

  if (HIDWORD(*v13))
  {
    return 12;
  }

  v23 = *(v13 + 16);
  if (v23 > 6)
  {
    goto LABEL_79;
  }

  result = evo_calculate_unalignedbytes_hmac_11136(*(v13 + 8), *v13, (v13 + 24), v23, v51);
  v24 = *a2;
  if (HIDWORD(*a2))
  {
    return 12;
  }

  v25 = a2[1];
  v26 = a2[2];
  if (v25 > v26 || v24 > v26 - v25 || a2[3] > v25)
  {
    goto LABEL_79;
  }

  ddp_udc_int_hmac_sha256_calculate_digest(v51, v25, v24);
  result = ddp_udc_int_hmac_sha256_get_digest(v51, &__s2);
  if (result)
  {
    return 12;
  }

  if ((v21 & 1) == 0)
  {
    v39 = &v45;
    v40 = v48;
    v41 = &v45;
    result = ddp_udc_int_evo_cb_get_wr_ptr(v18, &v39);
    v33 = v45;
    if (!v45)
    {
      return 12;
    }

    if (v46 < v45)
    {
      goto LABEL_79;
    }

    if (v47 > v45)
    {
      goto LABEL_79;
    }

    if (v46 - v45 < 0x20)
    {
      goto LABEL_79;
    }

    v34 = *(__s2 + 1);
    *v45 = *__s2;
    *(v33 + 16) = v34;
    if (v33 >= v33 + 32)
    {
      goto LABEL_79;
    }

    if (v18[13])
    {
      v35 = 1;
      do
      {
        v39 = &v42;
        v40 = &v45;
        v41 = &v42;
        result = ddp_udc_int_evo_cb_get_rd_ptr(v18, &v39);
        if (!v42)
        {
          return 12;
        }

        v36 = v43 < v42 || v44 > v42;
        if (v36 || v43 - v42 < 0x20)
        {
          goto LABEL_79;
        }

        ddp_udc_int_sha256_do_hash_stride(v50, v42, 0x20u, 1, 1, 0);
        v19 = v18[13] > v35++;
      }

      while (v19);
    }

    result = ddp_udc_int_hmac_sha256_get_digest(v50, &v37);
    if (result)
    {
      return 12;
    }
  }

  v27 = *a3;
  if (!v27)
  {
    goto LABEL_47;
  }

  if (v27 > 0x20)
  {
    goto LABEL_79;
  }

  result = *(a3 + 1);
  v28 = *(a3 + 2);
  if (result > v28 || *(a3 + 3) > result || v28 - result < v27)
  {
    goto LABEL_79;
  }

  result = memcmp(result, __s2, v27);
  if (!result)
  {
LABEL_47:
    *a6 = 1;
  }

  if (!a5[2] || (v29 = a3[8], !v29))
  {
    v32 = *a6;
    goto LABEL_74;
  }

  if (v29 <= 0x20)
  {
    result = *(a3 + 5);
    v30 = *(a3 + 6);
    if (result <= v30 && *(a3 + 7) <= result && v30 - result >= v29)
    {
      v31 = memcmp(result, v37, v29);
      v32 = *a6;
      if (v31)
      {
        if (v32 != 3)
        {
          return 7;
        }

        return 0;
      }

LABEL_74:
      if (v32 != 1)
      {
        *a6 = 2;
        return 7;
      }

      *a6 = 3;
      return 0;
    }
  }

LABEL_79:
  __break(0x5519u);
  return result;
}

const float *ddp_udc_int_interpol_mult_UM(const float *result, float32x4_t **a2, float32x4_t **a3, float32x2_t ***a4, uint64_t a5, double a6)
{
  *&v162[4] = *MEMORY[0x1E69E9840];
  if (result == 7)
  {
    v78 = *a4;
    v77 = a4[1];
    v79 = v77 - *a4;
    if (v77 >= *a4 && a4[2] <= v78)
    {
      v82 = *a3;
      v81 = a3[1];
      v83 = v79 < 97 || v82 > v81;
      if (!v83 && a3[2] <= v82)
      {
        v86 = *a2;
        v85 = a2[1];
        v87 = (v81 - v82) < 641 || v86 > v85;
        v88 = v87 || a2[2] > v86;
        if (!v88 && (v85 - v86) >= 641)
        {
          v89 = *&a6 + -1.0;
          v159 = -(*&a6 + -1.0);
          memset(__b, 255, sizeof(__b));
          for (i = 0; i != 14; i += 2)
          {
            v92 = v78[i];
            v91 = v78[i + 1];
            _CF = v91 >= v92;
            v93 = v91 - v92;
            if (!_CF || v93 <= 0x1FF)
            {
              goto LABEL_77;
            }
          }

          v94 = 0;
          v95 = vdupq_lane_s32(*&a6, 0);
          v97 = *v86;
          f32 = v86[1].f32;
          v98 = v97;
          v99 = -4;
          v101 = *v82;
          v100 = v82[1].f32;
          v102 = v101;
          do
          {
            v103 = vmulq_n_f32(v98, v159);
            v98 = f32[v94];
            v104 = vmlaq_f32(v103, v95, v102);
            v102 = v100[v94];
            *&__b[v94 * 16] = v104;
            ++v94;
            v99 += 4;
          }

          while (v99 < 0x9A);
          v105 = 0;
          *&__b[640] = (*&a6 * v102.f32[0]) - (v89 * v98.f32[0]);
          v106 = v78[2];
          v107 = v78[4];
          v108 = v78[6];
          v109 = v78[8];
          v110 = v78[10];
          v111 = v78[12];
          v112 = &(*v78)[1];
          v113 = **v78;
          v115 = *v106;
          v114 = v106 + 1;
          v116 = v115;
          v118 = *v107;
          v117 = v107 + 1;
          v119 = v118;
          v121 = *v108;
          v120 = v108 + 1;
          v122 = v121;
          v124 = *v109;
          v123 = v109 + 1;
          v125 = v124;
          v127 = *v110;
          v126 = v110 + 1;
          v128 = v127;
          v130 = *v111;
          v129 = v111 + 1;
          v131 = v130;
          v132 = vdup_lane_s32(*__b, 0);
          v133 = vdup_lane_s32(*&__b[4], 0);
          v134 = vdup_lane_s32(*&__b[8], 0);
          v135 = vdup_lane_s32(*&__b[12], 0);
          v136 = vdup_lane_s32(*&__b[16], 0);
          v137 = vdup_lane_s32(*&__b[20], 0);
          __asm { FMOV            V7.2S, #16.0 }

          result = a_map_qmfband_to_coeffindex7;
          v139 = vdup_lane_s32(*&__b[24], 0);
          while (1)
          {
            v140 = vmul_f32(v113, v132);
            v113 = *(v112 + 8 * v105);
            v141 = vmla_f32(v140, v133, v116);
            v116 = v114[v105];
            v142 = vmla_f32(v141, v134, v119);
            v119 = v117[v105];
            v143 = vmla_f32(v142, v135, v122);
            v122 = v120[v105];
            v144 = vmla_f32(v143, v136, v125);
            v125 = v123[v105];
            v145 = vmla_f32(v144, v137, v128);
            v128 = v126[v105];
            v146 = vmla_f32(v145, v139, v131);
            v131 = v129[v105];
            *(a5 + 8 * v105) = vmul_f32(v146, _D7);
            v147 = 4 * a_map_qmfband_to_coeffindex7[v105 + 1];
            v148 = &__b[v147];
            v149 = __b <= &__b[v147];
            v150 = v147 - 645;
            v151 = v148 > v162 || !v149;
            if (v151 || v150 > 0xFFFFFFFFFFFFFFE3)
            {
              break;
            }

            ++v105;
            v153 = v148;
            v132 = vld1_dup_f32(v153++);
            v133 = vld1_dup_f32(v153);
            v154 = v148 + 2;
            v134 = vld1_dup_f32(v154);
            v155 = v148 + 3;
            v135 = vld1_dup_f32(v155);
            v156 = v148 + 4;
            v136 = vld1_dup_f32(v156);
            v157 = v148 + 5;
            v137 = vld1_dup_f32(v157);
            v158 = v148 + 6;
            v139 = vld1_dup_f32(v158);
            if (v105 == 64)
            {
              return result;
            }
          }
        }
      }
    }

LABEL_77:
    __break(0x5519u);
  }

  if (result == 5)
  {
    v7 = *a4;
    v8 = a4[1];
    v9 = v8 - *a4;
    if (v8 >= *a4 && a4[2] <= v7)
    {
      v11 = *a3;
      v12 = a3[1];
      v13 = v9 < 65 || v11 > v12;
      if (!v13 && a3[2] <= v11)
      {
        v15 = *a2;
        v16 = a2[1];
        v17 = (v12 - v11) < 457 || v15 > v16;
        v18 = v17 || a2[2] > v15;
        if (!v18 && (v16 - v15) > 456)
        {
          v19 = 0;
          *&v20 = -1;
          *(&v20 + 1) = -1;
          *&__b[444] = v20;
          *&__b[416] = v20;
          *&__b[432] = v20;
          *&__b[384] = v20;
          *&__b[400] = v20;
          *&__b[352] = v20;
          *&__b[368] = v20;
          *&__b[320] = v20;
          *&__b[336] = v20;
          *&__b[288] = v20;
          *&__b[304] = v20;
          *&__b[256] = v20;
          *&__b[272] = v20;
          *&__b[224] = v20;
          *&__b[240] = v20;
          *&__b[192] = v20;
          *&__b[208] = v20;
          *&__b[160] = v20;
          *&__b[176] = v20;
          *&__b[128] = v20;
          *&__b[144] = v20;
          *&__b[96] = v20;
          *&__b[112] = v20;
          *&__b[64] = v20;
          *&__b[80] = v20;
          *&__b[32] = v20;
          *&__b[48] = v20;
          *__b = v20;
          *&__b[16] = v20;
          do
          {
            v22 = v7[v19];
            v21 = v7[v19 + 1];
            _CF = v21 >= v22;
            v24 = v21 - v22;
            if (!_CF || v24 <= 0x1FF)
            {
              goto LABEL_77;
            }

            v19 += 2;
          }

          while (v19 != 10);
          v25 = vdupq_lane_s32(*&a6, 0);
          v26 = *v15;
          v27 = __b;
          v28 = -4;
          v29 = *v11;
          do
          {
            v30 = vmlaq_f32(vmulq_n_f32(v26, -(*&a6 + -1.0)), v25, v29);
            v31 = v11[1];
            ++v11;
            v29 = v31;
            v32 = v15[1];
            ++v15;
            *v27++ = v30;
            v28 += 4;
            v26 = v32;
          }

          while (v28 < 0x6C);
          for (j = 0; j != 3; ++j)
          {
            *&__b[j * 4 + 448] = (v11->f32[j] * *&a6) - ((*&a6 + -1.0) * v15->f32[j]);
          }

          v34 = 0;
          v35 = *v7;
          v36 = v7[2];
          v37 = v7[4];
          v38 = v7[6];
          v39 = v7[8];
          v41 = *v35;
          v40 = v35 + 1;
          v42 = v41;
          v44 = *v36;
          v43 = v36 + 1;
          v45 = v44;
          v47 = *v37;
          v46 = v37 + 1;
          v48 = v47;
          v50 = *v38;
          v49 = v38 + 1;
          v51 = v50;
          v53 = *v39;
          v52 = v39 + 1;
          v54 = v53;
          v55 = vdup_lane_s32(*__b, 0);
          v56 = vdup_lane_s32(*&__b[4], 0);
          v57 = vdup_lane_s32(*&__b[8], 0);
          v58 = vdup_lane_s32(*&__b[12], 0);
          __asm { FMOV            V5.2S, #16.0 }

          v62 = vdup_lane_s32(*&__b[16], 0);
          while (1)
          {
            v63 = vmul_f32(v42, v55);
            v42 = v40[v34];
            v64 = vmla_f32(v63, v56, v45);
            v45 = v43[v34];
            v65 = vmla_f32(v64, v57, v48);
            v48 = v46[v34];
            v66 = vmla_f32(v65, v58, v51);
            v51 = v49[v34];
            v67 = vmla_f32(v66, v62, v54);
            v54 = v52[v34];
            *(a5 + 8 * v34) = vmul_f32(v67, _D5);
            v68 = 4 * a_map_qmfband_to_coeffindex5[v34 + 1];
            v69 = &__b[v68];
            v70 = __b <= &__b[v68];
            v71 = v68 - 461;
            _ZF = v69 > &__b[460] || !v70;
            if (_ZF || v71 > 0xFFFFFFFFFFFFFFEBLL)
            {
              break;
            }

            ++v34;
            v74 = v69;
            v55 = vld1_dup_f32(v74++);
            v56 = vld1_dup_f32(v74);
            v75 = v69 + 2;
            v57 = vld1_dup_f32(v75);
            result = v69 + 3;
            v58 = vld1_dup_f32(result);
            v76 = v69 + 4;
            v62 = vld1_dup_f32(v76);
            if (v34 == 64)
            {
              return result;
            }
          }
        }
      }
    }

    goto LABEL_77;
  }

  return result;
}

const float *ddp_udc_int_mult_UM(const float *result, const float **a2, unint64_t *a3, uint64_t a4)
{
  if (result == 7)
  {
    v55 = *a3;
    v54 = a3[1];
    v56 = *a3 + 16;
    if (v56 <= v54 && v55 <= v56 && v55 >= a3[2])
    {
      v59 = v55 + 32;
      v60 = *v55;
      if (v55 + 32 <= v54 && v56 <= v59)
      {
        v62 = v55 + 48;
        if (v55 + 48 <= v54 && v59 <= v62)
        {
          v64 = v55 + 64;
          if (v55 + 64 <= v54 && v62 <= v64)
          {
            v65 = (v55 + 80);
            if (v55 + 80 <= v54 && v64 <= v65)
            {
              v66 = (v55 + 96);
              if (v55 + 96 <= v54 && v65 <= v66 && v55 + 112 <= v54 && v66 <= v55 + 112)
              {
                v67 = *a2;
                v68 = a2[1];
                if (*a2 <= v68)
                {
                  v69 = a2[2];
                  if (v69 <= v67 && (v68 - v67) >= 0x1C)
                  {
                    v70 = 0;
                    v71 = *(v55 + 16);
                    v72 = *(v55 + 32);
                    v73 = *(v55 + 48);
                    v74 = *(v55 + 64);
                    v75 = *v65;
                    v76 = *v66;
                    v78 = *v60;
                    v77 = v60 + 1;
                    v79 = v78;
                    v80 = *v71;
                    v81 = *v72;
                    v82 = *v73;
                    v83 = *v74;
                    v84 = **v65;
                    v85 = **v66;
                    v86 = v67;
                    v87 = vld1_dup_f32(v86++);
                    v88 = vld1_dup_f32(v86);
                    v89 = v67 + 2;
                    v90 = vld1_dup_f32(v89);
                    v91 = v67 + 3;
                    v92 = vld1_dup_f32(v91);
                    v93 = v67 + 4;
                    v94 = vld1_dup_f32(v93);
                    v95 = v67 + 5;
                    v96 = vld1_dup_f32(v95);
                    v97 = v67 + 6;
                    v98 = vld1_dup_f32(v97);
                    v99 = v72 + 1;
                    v100 = v73 + 1;
                    v101 = v75 + 1;
                    result = &v76[1];
                    __asm { FMOV            V7.2S, #16.0 }

                    while (1)
                    {
                      v103 = vmul_f32(v79, v87);
                      v79 = v77[v70];
                      v104 = vmla_f32(v103, v88, v80);
                      v80 = v71[v70 + 1];
                      v105 = vmla_f32(v104, v90, v81);
                      v81 = v99[v70];
                      v106 = vmla_f32(v105, v92, v82);
                      v82 = v100[v70];
                      v107 = vmla_f32(v106, v94, v83);
                      v83 = v74[v70 + 1];
                      v108 = vmla_f32(v107, v96, v84);
                      v84 = v101[v70];
                      v109 = vmla_f32(v108, v98, v85);
                      v85 = *&result[2 * v70];
                      *(a4 + 8 * v70) = vmul_f32(v109, _D7);
                      v110 = &v67[a_map_qmfband_to_coeffindex7[v70 + 1]];
                      if (v110 > v68)
                      {
                        break;
                      }

                      if (v69 > v110 || (v68 - v110) < 0x1C)
                      {
                        break;
                      }

                      ++v70;
                      v112 = v110;
                      v87 = vld1_dup_f32(v112++);
                      v88 = vld1_dup_f32(v112);
                      v113 = v110 + 2;
                      v90 = vld1_dup_f32(v113);
                      v114 = v110 + 3;
                      v92 = vld1_dup_f32(v114);
                      v115 = v110 + 4;
                      v94 = vld1_dup_f32(v115);
                      v116 = v110 + 5;
                      v96 = vld1_dup_f32(v116);
                      v117 = v110 + 6;
                      v98 = vld1_dup_f32(v117);
                      if (v70 == 64)
                      {
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
    }

    goto LABEL_71;
  }

  if (result == 5)
  {
    v5 = *a3;
    v4 = a3[1];
    v6 = *a3 + 16;
    if (v6 <= v4 && v5 <= v6 && v5 >= a3[2])
    {
      v9 = v5 + 32;
      v10 = *v5;
      if (v5 + 32 <= v4 && v6 <= v9)
      {
        v12 = (v5 + 48);
        if (v5 + 48 <= v4 && v9 <= v12)
        {
          v14 = (v5 + 64);
          if (v5 + 64 <= v4 && v12 <= v14 && v5 + 80 <= v4 && v14 <= v5 + 80)
          {
            v15 = *a2;
            v16 = a2[1];
            if (*a2 <= v16)
            {
              v17 = a2[2];
              if (v17 <= v15 && v16 - v15 >= 0x14)
              {
                v18 = 0;
                v19 = *(v5 + 16);
                v20 = *(v5 + 32);
                v21 = *v14;
                v23 = *v10;
                v22 = v10 + 1;
                v24 = v23;
                v25 = *v19;
                v26 = *v20;
                v27 = **v12;
                v28 = **v14;
                v29 = v15;
                v30 = vld1_dup_f32(v29++);
                v31 = vld1_dup_f32(v29);
                v32 = v15 + 2;
                v33 = vld1_dup_f32(v32);
                v34 = v15 + 3;
                v35 = vld1_dup_f32(v34);
                v36 = v15 + 4;
                v37 = vld1_dup_f32(v36);
                v38 = v19 + 1;
                v39 = &(*v12)[1];
                v40 = v21 + 1;
                __asm { FMOV            V5.2S, #16.0 }

                while (1)
                {
                  v45 = vmul_f32(v24, v30);
                  v24 = v22[v18];
                  v46 = vmla_f32(v45, v31, v25);
                  v25 = v38[v18];
                  v47 = vmla_f32(v46, v33, v26);
                  v26 = v20[v18 + 1];
                  v48 = vmla_f32(v47, v35, v27);
                  v27 = *(v39 + 8 * v18);
                  v49 = vmla_f32(v48, v37, v28);
                  v28 = v40[v18];
                  *(a4 + 8 * v18) = vmul_f32(v49, _D5);
                  result = &v15[a_map_qmfband_to_coeffindex5[v18 + 1]];
                  if (result > v16)
                  {
                    break;
                  }

                  if (v17 > result || v16 - result < 0x14)
                  {
                    break;
                  }

                  ++v18;
                  v51 = result;
                  v30 = vld1_dup_f32(v51++);
                  v31 = vld1_dup_f32(v51);
                  v52 = result + 2;
                  v33 = vld1_dup_f32(v52);
                  v53 = result + 3;
                  v35 = vld1_dup_f32(v53);
                  result += 4;
                  v37 = vld1_dup_f32(result);
                  if (v18 == 64)
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_71:
    __break(0x5519u);
  }

  return result;
}

uint64_t ddp_udc_int_evo_brw_write(uint64_t result, unint64_t a2, unsigned int a3)
{
  if (!result || a3 > 0x40)
  {
    return 1;
  }

  v4 = *(result + 32);
  if (v4 < a3)
  {
    return 2;
  }

  *(result + 32) = v4 - a3;
  LODWORD(v5) = *result;
  if (v5 <= a3)
  {
    v7 = *(result + 8);
    v6 = a3;
    while (v7 < *(result + 16) && v7 >= *(result + 24))
    {
      *v7 &= -1 << v5;
      v5 = *(result + 8);
      if (v5 >= *(result + 16) || v5 < *(result + 24))
      {
        break;
      }

      *v5 |= (a2 >> (a3 - *result)) & ~(-1 << *result);
      v6 -= *result;
      LOBYTE(v5) = 8;
      *result = 8;
      v7 = (*(result + 8) + 1);
      *(result + 8) = v7;
      LOBYTE(a3) = v6;
      if (v6 <= 7u)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v6 = a3;
LABEL_21:
    if (!v6)
    {
      return 0;
    }

    v10 = *(result + 8);
    if (v10 < *(result + 16) && v10 >= *(result + 24))
    {
      *v10 &= -1 << v5;
      v11 = *(result + 8);
      if (v11 < *(result + 16) && v11 >= *(result + 24))
      {
        v3 = 0;
        *v11 |= (a2 & ~(-1 << a3)) << (*result - a3);
        *result -= v6;
        return v3;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ddp_udc_int_evo_brw_read(uint64_t result, unsigned int a2, uint64_t *a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(result + 32);
  if (v3 < a2)
  {
    return 2;
  }

  *(result + 32) = v3 - a2;
  *a3 = 0;
  v5 = *result;
  if (v5 > a2)
  {
LABEL_13:
    if (!a2)
    {
      return 0;
    }

    v10 = *a3 << a2;
    *a3 = v10;
    v11 = *(result + 8);
    if (v11 < *(result + 16) && v11 >= *(result + 24))
    {
      v4 = 0;
      v12 = v5 - a2;
      *a3 = v10 | (*v11 >> v12) & ~(-1 << a2);
      *result = v12;
      return v4;
    }
  }

  else
  {
    v6 = *(result + 24);
    while (1)
    {
      v7 = *a3 << v5;
      *a3 = v7;
      v8 = *(result + 8);
      if (v8 >= *(result + 16) || v8 < v6)
      {
        break;
      }

      *a3 = v7 | *v8 & ~(-1 << v5);
      LOWORD(a2) = a2 - v5;
      LOWORD(v5) = 8;
      *result = 8;
      ++*(result + 8);
      *(result + 24) = v6;
      if (a2 <= 7u)
      {
        goto LABEL_13;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t ddp_udc_int_abkd_unpddpfixed(unint64_t result, _WORD *a2, _WORD *a3, unint64_t *a4, uint64_t a5, unsigned __int16 *a6)
{
  if (a3[4] && a2[8] >= 1)
  {
    v9 = 0;
    v10 = *(a5 + 24);
    v11 = *(a5 + 26);
    v12 = (a6 + 204);
    do
    {
      v13 = 2 * (v11 << v10);
      if (v10 < 16)
      {
        ++v10;
      }

      else
      {
        v14 = (*a5 + 2);
        v15 = *a5 + 4;
        if (v15 > *(a5 + 8) || v14 > v15 || v14 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v11 = *v14;
        v10 -= 15;
        *(a5 + 26) = v11;
        *a5 = v14;
        v13 |= v11 << v10;
      }

      *(a5 + 24) = v10;
      if (v12 < (a6 + 204) || v12 + 312 > (a6 + 1140) || v12 > v12 + 312)
      {
        goto LABEL_806;
      }

      *(v12 + 4) = HIWORD(v13);
      ++v9;
      v12 += 312;
    }

    while (v9 < a2[8]);
  }

  if (a3[5] && a2[8] >= 1)
  {
    v18 = 0;
    v19 = *(a5 + 24);
    v20 = *(a5 + 26);
    v21 = (a6 + 360);
    do
    {
      v22 = 2 * (v20 << v19);
      if (v19 < 16)
      {
        ++v19;
      }

      else
      {
        v23 = (*a5 + 2);
        v24 = *a5 + 4;
        if (v24 > *(a5 + 8) || v23 > v24 || v23 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v20 = *v23;
        v19 -= 15;
        *(a5 + 26) = v20;
        *a5 = v23;
        v22 |= v20 << v19;
      }

      *(a5 + 24) = v19;
      if (v21 - 312 < (a6 + 204) || v21 > (a6 + 1140) || v21 - 312 > v21)
      {
        goto LABEL_806;
      }

      *(v21 - 136) = HIWORD(v22);
      ++v18;
      v21 += 312;
    }

    while (v18 < a2[8]);
  }

  if (a2[10] >= 1)
  {
    v27 = 0;
    LOWORD(v28) = *(a5 + 24);
    v29 = *(a5 + 26);
    v30 = a6 + 1140;
    do
    {
      v31 = 2 * (v29 << v28);
      if (v28 < 16)
      {
        v28 = v28 + 1;
      }

      else
      {
        v32 = (*a5 + 2);
        v33 = *a5 + 4;
        if (v33 > *(a5 + 8) || v32 > v33 || v32 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v29 = *v32;
        v28 = v28 - 15;
        *(a5 + 26) = v29;
        *a5 = v32;
        v31 |= v29 << v28;
      }

      *(a5 + 24) = v28;
      if (v30 < a6 + 1140 || v30 + 6 > a6 + 1152 || v30 > v30 + 6)
      {
        goto LABEL_806;
      }

      *v30 = HIWORD(v31);
      if (v31 >= 0x10000)
      {
        v36 = v29 << v28;
        v37 = v28 + 8;
        *(a5 + 24) = v28 + 8;
        v38 = __OFSUB__(v28, 8);
        v28 -= 8;
        if (v28 < 0 != v38)
        {
          LOWORD(v28) = v37;
        }

        else
        {
          v39 = *a5;
          v40 = *a5 + 4;
          if (v40 > *(a5 + 8))
          {
            goto LABEL_806;
          }

          v41 = (v39 + 2);
          if (v39 + 2 > v40 || v41 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v29 = *v41;
          *(a5 + 26) = v29;
          *a5 = v41;
          *(a5 + 24) = v28;
          v36 |= v29 >> (8 - v28);
        }

        v30[1] = (v36 >> 1) & 0xFF80;
      }

      ++v27;
      v30 += 6;
    }

    while (v27 < a2[10]);
  }

  v42 = *a4;
  v43 = a4[1];
  if (*a4 > v43)
  {
    goto LABEL_806;
  }

  if ((v43 - v42) < 9 || a4[2] > v42)
  {
    goto LABEL_806;
  }

  v45 = a2[6];
  v46 = a2[8];
  v47 = *(a6 + 648);
  v495 = result;
  if (result)
  {
    v48 = *(a5 + 24);
    v49 = *(a5 + 26);
    v50 = 2 * (v49 << *(a5 + 24));
    if (v48 < 16)
    {
      v54 = v48 + 1;
    }

    else
    {
      v51 = *a5;
      v52 = *a5 + 4;
      if (v52 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v53 = (v51 + 2);
      if (v51 + 2 > v52 || v53 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v49 = *v53;
      v54 = v48 - 15;
      *(a5 + 26) = v49;
      *a5 = v53;
      v50 |= v49 << v54;
    }

    *(a5 + 24) = v54;
    a6[2000] = HIWORD(v50);
    if (v50 < 0x10000)
    {
LABEL_92:
      if (!a6[2001] || v46 < 1)
      {
        goto LABEL_196;
      }

      v65 = 0;
      v66 = a6 + 2044;
      v67 = a6 + 2184;
      v68 = a6 + 2006;
      v69 = a6 + 2023;
      result = v47 + 4046;
      while (1)
      {
        v70 = &v66[28 * v65];
        v71 = (v70 + 28);
        if (v70 < v66 || v71 > v67 || v70 > v71)
        {
          goto LABEL_806;
        }

        v74 = &v42[v65];
        v77 = v74 + 1 <= v42 + 5 && v74 <= v74 + 1 && v74 >= v42;
        if (!*v70)
        {
          if (!v77)
          {
            goto LABEL_806;
          }

          *v74 = 1;
          goto LABEL_195;
        }

        if (!v77)
        {
          goto LABEL_806;
        }

        if (*v74)
        {
          v70[1] = 1;
          *v74 = 0;
          if (v70[1])
          {
            goto LABEL_115;
          }
        }

        else
        {
          v91 = *(a5 + 24);
          v92 = 2 * (*(a5 + 26) << *(a5 + 24));
          if (v91 < 16)
          {
            v96 = v91 + 1;
          }

          else
          {
            v93 = *a5 + 4;
            if (v93 > *(a5 + 8))
            {
              goto LABEL_806;
            }

            v94 = (*a5 + 2);
            if (v94 > v93 || v94 < *(a5 + 16))
            {
              goto LABEL_806;
            }

            v95 = *v94;
            v96 = v91 - 15;
            *(a5 + 26) = v95;
            *a5 = v94;
            v92 |= v95 << v96;
          }

          v123 = HIWORD(v92);
          *(a5 + 24) = v96;
          v70[1] = v123;
          if (v123)
          {
LABEL_115:
            v78 = *(a5 + 24);
            v79 = *(a5 + 26);
            v80 = v79 << v78;
            LODWORD(v81) = (v78 + 5);
            *(a5 + 24) = v78 + 5;
            if (v81 > 15)
            {
              v82 = *a5;
              v83 = *a5 + 4;
              if (v83 > *(a5 + 8))
              {
                goto LABEL_806;
              }

              v81 = (v82 + 2);
              if (v82 + 2 > v83 || v81 < *(a5 + 16))
              {
                goto LABEL_806;
              }

              v79 = *v81;
              *(a5 + 26) = v79;
              *a5 = v81;
              LOWORD(v81) = v78 - 11;
              *(a5 + 24) = v78 - 11;
              v80 |= v79 >> (16 - v78);
            }

            v70[2] = (v80 >> 1) & 0x7C00;
            v84 = v81;
            v85 = 4 * (v79 << v81);
            if (v81 < 15)
            {
              v90 = v81 + 2;
            }

            else
            {
              v86 = *a5;
              v87 = *a5 + 4;
              if (v87 > *(a5 + 8))
              {
                goto LABEL_806;
              }

              v88 = (v86 + 2);
              if (v86 + 2 > v87 || v88 < *(a5 + 16))
              {
                goto LABEL_806;
              }

              v89 = *v88;
              v90 = v84 - 14;
              *(a5 + 26) = v89;
              *a5 = v88;
              v85 |= v89 << (v84 - 14);
            }

            *(a5 + 24) = v90;
            v70[3] = 3 * HIWORD(v85);
            if (a6[2026] >= 1)
            {
              v97 = 0;
              v98 = 0;
              while (1)
              {
                v99 = *(a5 + 24);
                v100 = *(a5 + 26);
                v101 = 16 * (v100 << *(a5 + 24));
                if (v99 < 13)
                {
                  v106 = v99 + 4;
                }

                else
                {
                  v102 = (*a5 + 2);
                  v103 = *a5 + 4;
                  if (v103 > *(a5 + 8) || v102 > v103 || v102 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v100 = *v102;
                  v106 = v99 - 12;
                  *(a5 + 26) = v100;
                  *a5 = v102;
                  v101 |= v100 << v106;
                }

                v107 = v100 << v106;
                *(a5 + 24) = v106 + 2;
                if (v106 > 13)
                {
                  v108 = (*a5 + 2);
                  v109 = *a5 + 4;
                  if (v109 > *(a5 + 8) || v108 > v109 || v108 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v112 = *v108;
                  *(a5 + 26) = v112;
                  *a5 = v108;
                  v113 = v106 - 14;
                  *(a5 + 24) = v113;
                  v107 |= v112 >> (2 - v113);
                }

                v114 = (v107 >> 2) & 0x3000 | 0x4000;
                v115 = (v107 >> 1) & 0x6000;
                if (HIWORD(v101) == 15)
                {
                  LOWORD(v114) = v115;
                }

                v116 = *(v70 + 6);
                v117 = (*(v70 + 4) + v97);
                v118 = (v117 + 4) > *(v70 + 5) || v117 > v117 + 4;
                if (v118 || v117 < v116)
                {
                  goto LABEL_806;
                }

                *v117 = v70[3] + HIWORD(v101);
                v120 = *(v70 + 4);
                v121 = v120 + v97;
                v122 = v120 + v97 + 8;
                if (v122 > *(v70 + 5) || v121 > v122 || v121 < v116)
                {
                  goto LABEL_806;
                }

                *(v120 + v97 + 4) = v114;
                ++v98;
                v97 += 8;
                if (v98 >= a6[2026])
                {
                  goto LABEL_195;
                }
              }
            }

            goto LABEL_195;
          }
        }

        v124 = a6[2024];
        if (v124 != *(v47 + 4048))
        {
          return 4111;
        }

        v125 = a6[2025];
        if (v125 != *(v47 + 4050))
        {
          return 4111;
        }

        v126 = v124;
        if (v124 < v125)
        {
          v127 = v125 - v124;
          v128 = v126;
          v129 = a6;
          v130 = v47;
          do
          {
            v131 = &v129[v128 + 2006];
            v132 = &v129[v128 + 2007];
            v133 = v131 < v68 || v132 > v69;
            v134 = v133 || v131 > v132;
            v135 = (v130 + v128 * 2 + 4012);
            v136 = v130 + v128 * 2 + 4014;
            v137 = !v134 && v135 >= v47 + 4012;
            v138 = !v137 || v136 > result;
            if (v138 || v135 > v136)
            {
              goto LABEL_806;
            }

            if (*v131 != *v135)
            {
              return 4111;
            }

            v130 += 2;
            ++v129;
          }

          while (--v127);
        }

LABEL_195:
        if (++v65 == v46)
        {
          goto LABEL_196;
        }
      }
    }
  }

  else
  {
    a6[2000] = 1;
    v54 = *(a5 + 24);
    v49 = *(a5 + 26);
  }

  v55 = v54;
  v56 = 2 * (v49 << v54);
  if (v55 < 16)
  {
    v60 = v55 + 1;
  }

  else
  {
    v57 = *a5;
    v58 = *a5 + 4;
    if (v58 > *(a5 + 8))
    {
      goto LABEL_806;
    }

    v59 = (v57 + 2);
    if (v57 + 2 > v58 || v59 < *(a5 + 16))
    {
      goto LABEL_806;
    }

    v49 = *v59;
    v60 = v55 - 15;
    *(a5 + 26) = v49;
    *a5 = v59;
    v56 |= v49 << v60;
  }

  v61 = HIWORD(v56);
  *(a5 + 24) = v60;
  a6[2001] = v61;
  if (v61)
  {
    if (v45 == 1)
    {
      a6[2044] = 1;
    }

    else if (v46 >= 1)
    {
      v156 = a6 + 2044;
      for (i = v46; i; --i)
      {
        v158 = 2 * (v49 << v60);
        if (v60 < 16)
        {
          ++v60;
        }

        else
        {
          result = *a5 + 2;
          v159 = *a5 + 4;
          if (v159 > *(a5 + 8) || result > v159 || result < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v49 = *result;
          v60 -= 15;
          *(a5 + 26) = v49;
          *a5 = result;
          result = (v49 << v60);
          HIWORD(v158) |= WORD1(result);
        }

        *(a5 + 24) = v60;
        if (v156 < a6 + 2044)
        {
          goto LABEL_806;
        }

        result = (v156 + 28);
        if (v156 + 28 > a6 + 2184 || v156 > result)
        {
          goto LABEL_806;
        }

        *v156 = HIWORD(v158);
        v156 += 28;
      }
    }

    v162 = v60;
    v163 = 4 * (v49 << v60);
    v164 = v162 - 14;
    if (v162 <= 14)
    {
      v164 = v162 + 2;
    }

    else
    {
      v165 = *a5;
      v166 = *a5 + 4;
      if (v166 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v167 = (v165 + 2);
      if (v165 + 2 > v166 || v167 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v49 = *v167;
      *(a5 + 26) = v49;
      *a5 = v167;
      v163 |= v49 << v164;
    }

    v168 = HIWORD(v163);
    *(a5 + 24) = v164;
    a6[2002] = v168;
    a6[2023] = v168;
    v169 = 8 * (v49 << v164);
    if (v164 < 14)
    {
      v173 = v164 + 3;
    }

    else
    {
      v170 = *a5;
      v171 = *a5 + 4;
      if (v171 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v172 = (v170 + 2);
      if (v170 + 2 > v171 || v172 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v49 = *v172;
      v173 = v164 - 13;
      *(a5 + 26) = v49;
      *a5 = v172;
      v169 |= v49 << v173;
    }

    v174 = HIWORD(v169);
    *(a5 + 24) = v173;
    a6[2003] = v174;
    v175 = &ddp_udc_int_spxd_begftobegsbndtab[v174];
    if (v175 < ddp_udc_int_spxd_begftobegsbndtab || v175 + 1 > ddp_udc_int_spxd_endftoendsbndtab || v175 > v175 + 1)
    {
      goto LABEL_806;
    }

    a6[2024] = *v175;
    v176 = 8 * (v49 << v173);
    if (v173 < 14)
    {
      v180 = v173 + 3;
    }

    else
    {
      v177 = *a5;
      v178 = *a5 + 4;
      if (v178 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v179 = (v177 + 2);
      if (v177 + 2 > v178 || v179 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v49 = *v179;
      v180 = v173 - 13;
      *(a5 + 26) = v49;
      *a5 = v179;
      v176 |= v49 << (v173 - 13);
    }

    *(a5 + 24) = v180;
    a6[2004] = HIWORD(v176);
    v181 = &ddp_udc_int_spxd_endftoendsbndtab[SHIWORD(v176)];
    if (v181 < ddp_udc_int_spxd_endftoendsbndtab || v181 + 1 > &ddp_udc_int_defbndstrc || v181 > v181 + 1)
    {
      goto LABEL_806;
    }

    LODWORD(v182) = *v181;
    a6[2025] = *v181;
    v183 = a6[2024];
    if (v183 >= v182)
    {
      return 6401;
    }

    v184 = (a6 + 2023);
    if (a6[2023] >= v183)
    {
      return 6401;
    }

    v185 = 2 * (v49 << v180);
    if (v180 < 16)
    {
      v187 = v180 + 1;
    }

    else
    {
      v186 = *a5 + 4;
      if (v186 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v182 = (*a5 + 2);
      if (v182 > v186 || v182 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v183 = *v182;
      v187 = v180 - 15;
      *(a5 + 26) = v183;
      *a5 = v182;
      v185 |= v183 << v187;
      LOWORD(v183) = a6[2024];
      LOWORD(v182) = a6[2025];
    }

    *(a5 + 24) = v187;
    a6[2005] = HIWORD(v185);
    if (v185 >= 0x10000 && (v183 + 1) < v182)
    {
      v371 = (v183 + 1);
      v372 = &a6[v371 + 2006];
      do
      {
        v373 = *(a5 + 24);
        v374 = 2 * (*(a5 + 26) << *(a5 + 24));
        if (v373 < 16)
        {
          v378 = v373 + 1;
        }

        else
        {
          v375 = (*a5 + 2);
          result = *a5 + 4;
          if (result > *(a5 + 8) || v375 > result || v375 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          result = *v375;
          v378 = v373 - 15;
          *(a5 + 26) = result;
          *a5 = v375;
          v374 |= result << v378;
        }

        *(a5 + 24) = v378;
        if (v372 < a6 + 2006 || (v372 + 1) > v184 || v372 > v372 + 1)
        {
          goto LABEL_806;
        }

        *v372++ = HIWORD(v374);
        ++v371;
      }

      while (v371 < a6[2025]);
      LOWORD(v182) = a6[2025];
      LOWORD(v183) = a6[2024];
    }

    *(a6 + 1013) = 65537;
    v379 = (v183 + 1);
    if (v379 < v182)
    {
      v380 = (a6 + 2027);
      v381 = a6 + 2042;
      v382 = (v183 + 1);
      v383 = &a6[v379 + 2006];
      while (v383 >= a6 + 2006)
      {
        result = (v383 + 1);
        if ((v383 + 1) > v184 || v383 > result)
        {
          break;
        }

        result = v380 + 2 * a6[2026];
        if (*v383)
        {
          v384 = (result - 2);
          if (result - 2 < v380 || result > v381 || v384 > result)
          {
            goto LABEL_806;
          }

          ++*v384;
        }

        else
        {
          v387 = result + 2;
          if (result < v380 || v387 > v381 || result > v387)
          {
            goto LABEL_806;
          }

          *result = 1;
          ++a6[2026];
        }

        ++v382;
        result = a6[2025];
        ++v383;
        if (v382 >= result)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_806;
    }

    goto LABEL_92;
  }

  if (v46 >= 1)
  {
    v62 = a6 + 2044;
    v63 = v42;
    v64 = v46;
    while (v62 >= a6 + 2044)
    {
      result = (v62 + 28);
      if (v62 + 28 > a6 + 2184)
      {
        break;
      }

      if (v62 > result)
      {
        break;
      }

      *v62 = 0;
      if (v63 < v42)
      {
        break;
      }

      result = (v63 + 1);
      if (v63 + 1 > v42 + 5 || v63 > result)
      {
        break;
      }

      *v63++ = 1;
      v62 += 28;
      if (!--v64)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_806;
  }

LABEL_196:
  v140 = &a3[v495 + 23];
  if (v140 < a3 + 23)
  {
    goto LABEL_806;
  }

  v141 = a3 + 29;
  if (v140 + 1 > a3 + 29)
  {
    goto LABEL_806;
  }

  if (v140 > v140 + 1)
  {
    goto LABEL_806;
  }

  v142 = *(a6 + 648);
  v143 = *v140;
  a6[2] = v143;
  v493 = v142;
  v144 = &v141[v495];
  if (v144 < v141)
  {
    goto LABEL_806;
  }

  v492 = a3 + 35;
  if (v144 + 1 > a3 + 35 || v144 > v144 + 1)
  {
    goto LABEL_806;
  }

  v145 = a6 + 204;
  v146 = (a6 + 1140);
  v147 = *v144;
  a6[3] = v147;
  if (!v143)
  {
    goto LABEL_278;
  }

  if (v147)
  {
    v148 = *(a5 + 24);
    v149 = *(a5 + 26);
    v150 = 2 * (v149 << *(a5 + 24));
    if (v148 < 16)
    {
      v154 = v148 + 1;
    }

    else
    {
      v151 = *a5;
      v152 = *a5 + 4;
      if (v152 > *(a5 + 8))
      {
        goto LABEL_806;
      }

      v153 = (v151 + 2);
      if (v151 + 2 > v152 || v153 < *(a5 + 16))
      {
        goto LABEL_806;
      }

      v149 = *v153;
      v154 = v148 - 15;
      *(a5 + 26) = v149;
      *a5 = v153;
      v150 |= v149 << v154;
    }

    *(a5 + 24) = v154;
    a6[2188] = HIWORD(v150);
    if (!a2[6])
    {
      return 4098;
    }

    if (a2[6] < 3)
    {
      a6[208] = 1;
      a6[364] = 1;
      v332 = a2[8];
    }

    else
    {
      if (a2[8] < 1)
      {
        return 4110;
      }

      v204 = 0;
      v205 = 0;
      v206 = (a6 + 204);
      do
      {
        v207 = 2 * (v149 << v154);
        if (v154 < 16)
        {
          ++v154;
        }

        else
        {
          v208 = (*a5 + 2);
          v209 = *a5 + 4;
          if (v209 > *(a5 + 8) || v208 > v209 || v208 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v149 = *v208;
          v154 -= 15;
          *(a5 + 26) = v149;
          *a5 = v208;
          v207 |= v149 << v154;
        }

        *(a5 + 24) = v154;
        if (v206 + 312 > v146 || v206 > v206 + 312 || v206 < v145)
        {
          goto LABEL_806;
        }

        v212 = HIWORD(v207);
        *(v206 + 8) = v212;
        if (v212)
        {
          ++v205;
        }

        ++v204;
        v206 += 312;
        v146 = (a6 + 1140);
      }

      while (v204 < a2[8]);
      if (v205 < 2)
      {
        return 4110;
      }

      v332 = a2[8];
    }

    if (v332 >= 1)
    {
      v390 = 0;
      v391 = (a6 + 204);
      while (1)
      {
        if (v391 + 312 > v146 || v391 > v391 + 312 || v391 < v145)
        {
          goto LABEL_806;
        }

        if (*(v391 + 8))
        {
          break;
        }

        ++v390;
        v391 += 312;
        v146 = (a6 + 1140);
        if (v332 == v390)
        {
          goto LABEL_644;
        }
      }

      a6[25] = v390;
    }

LABEL_644:
    if (a6[2188])
    {
      v394 = v154;
      v395 = 16 * (v149 << v154);
      if (v394 < 13)
      {
        v399 = v394 + 4;
      }

      else
      {
        v396 = *a5;
        v397 = *a5 + 4;
        if (v397 > *(a5 + 8))
        {
          goto LABEL_806;
        }

        v398 = (v396 + 2);
        if (v396 + 2 > v397 || v398 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v149 = *v398;
        v399 = v394 - 12;
        *(a5 + 26) = v149;
        *a5 = v398;
        v395 |= v149 << v399;
      }

      v404 = HIWORD(v395);
      *(a5 + 24) = v399;
      a6[2191] = v404;
      v405 = &ddp_udc_int_ecpd_startsbndtab[v404];
      if (v405 < ddp_udc_int_ecpd_startsbndtab || v405 + 1 > spxendf2chbwcod_tab || v405 > v405 + 1)
      {
        goto LABEL_806;
      }

      a6[2560] = *v405;
      if (a6[2001])
      {
        v406 = a6[2003];
        if (v406 > 5)
        {
          v407 = 2 * v406;
        }

        else
        {
          v407 = v406 + 5;
        }
      }

      else
      {
        v408 = 16 * (v149 << v399);
        if (v399 < 13)
        {
          v399 += 4;
        }

        else
        {
          v409 = *a5;
          v410 = *a5 + 4;
          if (v410 > *(a5 + 8))
          {
            goto LABEL_806;
          }

          v411 = (v409 + 2);
          if (v409 + 2 > v410 || v411 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v149 = *v411;
          v399 -= 12;
          *(a5 + 26) = v149;
          *a5 = v411;
          v408 |= v149 << v399;
        }

        v415 = HIWORD(v408);
        *(a5 + 24) = v399;
        a6[2192] = v415;
        v407 = v415 + 7;
      }

      a6[2561] = v407;
      v416 = v399;
      v417 = 2 * (v149 << v399);
      if (v416 < 16)
      {
        v422 = v416 + 1;
      }

      else
      {
        v418 = *a5;
        v419 = *a5 + 4;
        if (v419 > *(a5 + 8))
        {
          goto LABEL_806;
        }

        v420 = (v418 + 2);
        if (v418 + 2 > v419 || v420 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v421 = *v420;
        v422 = v416 - 15;
        *(a5 + 26) = v421;
        *a5 = v420;
        v417 |= v421 << (v416 - 15);
      }

      *(a5 + 24) = v422;
      a6[2189] = HIWORD(v417);
      v423 = a6 + 2193;
      v424 = &a6[a6[2560] + 2193];
      if (v424 < (a6 + 2193))
      {
        goto LABEL_806;
      }

      v425 = a6 + 2215;
      if (v424 + 2 > (a6 + 2215) || v424 > v424 + 2)
      {
        goto LABEL_806;
      }

      *v424 = 0;
      LODWORD(v424) = a6[2560];
      if (a6[2189])
      {
        v426 = v424 >= 9 ? v424 + 1 : 9;
        if (v426 < a6[2561])
        {
          v427 = v426;
          v428 = v426;
          v429 = a6 + 2194;
          do
          {
            v430 = *(a5 + 24);
            v431 = 2 * (*(a5 + 26) << *(a5 + 24));
            if (v430 < 16)
            {
              v437 = v430 + 1;
            }

            else
            {
              result = *(a5 + 16);
              v432 = (*a5 + 2);
              v433 = *a5 + 4;
              if (v433 > *(a5 + 8) || v432 > v433 || v432 < result)
              {
                goto LABEL_806;
              }

              v436 = *v432;
              v437 = v430 - 15;
              *(a5 + 26) = v436;
              *a5 = v432;
              v431 |= v436 << v437;
            }

            *(a5 + 24) = v437;
            if (&v423[v428] < v423 || &v429[v428] > v425 || &v423[v428] > &v429[v428])
            {
              goto LABEL_806;
            }

            v423[v427++] = HIWORD(v431);
            ++v428;
          }

          while (v427 < a6[2561]);
          LOWORD(v424) = a6[2560];
        }
      }

      v438 = &ddp_udc_int_ecpd_subbndtab[v424];
      if (v438 < ddp_udc_int_ecpd_subbndtab)
      {
        goto LABEL_806;
      }

      if (v438 + 1 > ddp_udc_int_ecplampmanttab)
      {
        goto LABEL_806;
      }

      if (v438 > v438 + 1)
      {
        goto LABEL_806;
      }

      v439 = *v438;
      *a6 = v439;
      v440 = a6[2561];
      v441 = &ddp_udc_int_ecpd_subbndtab[v440];
      if (v441 < ddp_udc_int_ecpd_subbndtab || v441 + 1 > ddp_udc_int_ecplampmanttab || v441 > v441 + 1)
      {
        goto LABEL_806;
      }

      v442 = *v441;
      a6[1] = v442;
      if (v439 <= v442)
      {
        v443 = ddp_udc_int_ecpd_begfbabndtab + a6[2191];
        if (v443 < ddp_udc_int_ecpd_begfbabndtab || v443 + 1 > ddp_udc_int_ecpd_startsbndtab || v443 > v443 + 1)
        {
          goto LABEL_806;
        }

        v424 = v424;
        a6[64] = *v443;
        if (v424 < v440)
        {
          v196 = 0;
          v444 = a6 + 2563;
          v445 = 2 * v424;
          v446 = a6 + 2194;
          result = (a6 + 2193);
          v447 = ddp_udc_int_ecpd_subbndtab;
          v146 = (a6 + 1140);
          while (1)
          {
            v448 = (result + v445);
            v449 = &v446[v445 / 2];
            v450 = result + v445 < v423 || v449 > v425;
            if (v450 || v448 > v449)
            {
              goto LABEL_806;
            }

            if (!*v448)
            {
              v440 = &v447[v445];
              if (&v447[v445] < ddp_udc_int_ecpd_subbndtab)
              {
                goto LABEL_806;
              }

              if (v440 + 2 > ddp_udc_int_ecplampmanttab)
              {
                goto LABEL_806;
              }

              if (v440 > v440 + 2)
              {
                goto LABEL_806;
              }

              v452 = &v444[v196];
              if (v452 < v444 || v452 + 1 > a6 + 2586 || v452 > v452 + 1)
              {
                goto LABEL_806;
              }

              *v452 = *v440;
              ++v196;
              LOWORD(v440) = a6[2561];
            }

            ++v424;
            v447 += 2;
            result += 2;
            ++v446;
            if (v424 >= v440)
            {
              goto LABEL_739;
            }
          }
        }

        v196 = 0;
        v146 = (a6 + 1140);
LABEL_739:
        v453 = &ddp_udc_int_ecpd_subbndtab[v424];
        if (v453 < ddp_udc_int_ecpd_subbndtab)
        {
          goto LABEL_806;
        }

        if (v453 + 1 > ddp_udc_int_ecplampmanttab)
        {
          goto LABEL_806;
        }

        if (v453 > v453 + 1)
        {
          goto LABEL_806;
        }

        v454 = &a6[v196 + 2563];
        if (v454 < a6 + 2563 || v454 + 1 > a6 + 2586 || v454 > v454 + 1)
        {
          goto LABEL_806;
        }

        *v454 = *v453;
        v197 = 2562;
        goto LABEL_276;
      }
    }

    else
    {
      if (a2[6] == 2)
      {
        v400 = 2 * (v149 << v154);
        if (v154 < 16)
        {
          ++v154;
        }

        else
        {
          v401 = *a5;
          v402 = *a5 + 4;
          if (v402 > *(a5 + 8))
          {
            goto LABEL_806;
          }

          v403 = (v401 + 2);
          if (v401 + 2 > v402 || v403 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v149 = *v403;
          v154 -= 15;
          *(a5 + 26) = v149;
          *a5 = v403;
          v400 |= v149 << v154;
        }

        v412 = HIWORD(v400);
        *(a5 + 24) = v154;
      }

      else
      {
        LOWORD(v412) = 0;
      }

      a6[29] = v412;
      v455 = v154;
      v456 = 16 * (v149 << v154);
      if (v455 < 13)
      {
        v460 = v455 + 4;
      }

      else
      {
        v457 = *a5;
        v458 = *a5 + 4;
        if (v458 > *(a5 + 8))
        {
          goto LABEL_806;
        }

        v459 = (v457 + 2);
        if (v457 + 2 > v458 || v459 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v149 = *v459;
        v460 = v455 - 12;
        *(a5 + 26) = v149;
        *a5 = v459;
        v456 |= v149 << v460;
      }

      LODWORD(v461) = HIWORD(v456);
      *(a5 + 24) = v460;
      a6[4] = v461;
      a6[26] = v461;
      if (a6[2001])
      {
        v462 = a6[2024] - 1;
      }

      else
      {
        v463 = 16 * (v149 << v460);
        if (v460 < 13)
        {
          v460 += 4;
        }

        else
        {
          v464 = *a5;
          v465 = *a5 + 4;
          if (v465 > *(a5 + 8))
          {
            goto LABEL_806;
          }

          v461 = v464 + 2;
          if (v464 + 2 > v465 || v461 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v149 = *v461;
          v460 -= 12;
          *(a5 + 26) = v149;
          *a5 = v461;
          v463 |= v149 << v460;
          LOWORD(v461) = a6[26];
        }

        v466 = HIWORD(v463);
        *(a5 + 24) = v460;
        a6[5] = v466;
        v462 = v466 + 3;
      }

      a6[27] = v462;
      if (v461 <= v462)
      {
        *a6 = 12 * v461 + 37;
        a6[1] = 12 * v462 + 37;
        v467 = &ddp_udc_int_cpl_bndtab[v461];
        if (v467 < ddp_udc_int_cpl_bndtab || v467 + 1 > ddp_udc_int_mtx_rematbnds || v467 > v467 + 1)
        {
          goto LABEL_806;
        }

        a6[64] = *v467;
        v468 = v460;
        v469 = 2 * (v149 << v460);
        if (v468 < 16)
        {
          v461 = v461;
          v474 = v468 + 1;
        }

        else
        {
          v470 = *a5;
          v471 = *a5 + 4;
          if (v471 > *(a5 + 8))
          {
            goto LABEL_806;
          }

          v472 = (v470 + 2);
          if (v470 + 2 > v471 || v472 < *(a5 + 16))
          {
            goto LABEL_806;
          }

          v473 = *v472;
          v474 = v468 - 15;
          *(a5 + 26) = v473;
          *a5 = v472;
          v469 |= v473 << (v468 - 15);
          v461 = a6[26];
        }

        *(a5 + 24) = v474;
        a6[6] = HIWORD(v469);
        v475 = &a6[v461 + 7];
        if (v475 < a6 + 7 || v475 + 1 > a6 + 25 || v475 > v475 + 1)
        {
          goto LABEL_806;
        }

        *v475 = 0;
        v146 = (a6 + 1140);
        if (a6[6] && (a6[26] + 1) < a6[27])
        {
          v476 = (a6[26] + 1);
          v477 = &a6[v476 + 7];
          v146 = (a6 + 1140);
          while (1)
          {
            v478 = *(a5 + 24);
            v479 = 2 * (*(a5 + 26) << *(a5 + 24));
            if (v478 < 16)
            {
              v485 = v478 + 1;
            }

            else
            {
              v480 = (*a5 + 2);
              v481 = *a5 + 4;
              if (v481 > *(a5 + 8) || v480 > v481 || v480 < *(a5 + 16))
              {
                goto LABEL_806;
              }

              v484 = *v480;
              v485 = v478 - 15;
              *(a5 + 26) = v484;
              *a5 = v480;
              v479 |= v484 << v485;
            }

            *(a5 + 24) = v485;
            if (v477 < a6 + 7 || v477 + 1 > a6 + 25 || v477 > v477 + 1)
            {
              goto LABEL_806;
            }

            *v477++ = HIWORD(v479);
            if (++v476 >= a6[27])
            {
              goto LABEL_277;
            }
          }
        }

        goto LABEL_277;
      }
    }

    return 4109;
  }

  v188 = a3;
  if (a2[8] >= 1)
  {
    v189 = 0;
    v190 = 0;
    v191 = (a6 + 204);
    do
    {
      v192 = v191 + 312 > v146 || v191 > v191 + 312;
      if (v192 || v191 < v145)
      {
        goto LABEL_806;
      }

      *(v191 + 8) = 0;
      v194 = &a3[v189 + 135];
      if (v194 < (a3 + 135))
      {
        goto LABEL_806;
      }

      v195 = &a3[v189 + 136];
      if (v195 > (a3 + 140) || v194 > v195)
      {
        goto LABEL_806;
      }

      v188 = a3;
      v146 = (a6 + 1140);
      a3[v190++ + 135] = 1;
      ++v189;
      v191 += 312;
    }

    while (v190 < a2[8]);
  }

  v196 = 0;
  v188[140] = 1;
  a6[29] = 0;
  v197 = 25;
LABEL_276:
  a6[v197] = v196;
LABEL_277:
  v147 = a6[3];
LABEL_278:
  if (v147)
  {
    if (a6[2188])
    {
      a6[25] = -1;
      v198 = *(a5 + 24);
      v199 = 2 * (*(a5 + 26) << *(a5 + 24));
      if (v198 < 16)
      {
        v203 = v198 + 1;
      }

      else
      {
        v200 = *a5 + 4;
        if (v200 > *(a5 + 8))
        {
          goto LABEL_806;
        }

        v201 = (*a5 + 2);
        if (v201 > v200 || v201 < *(a5 + 16))
        {
          goto LABEL_806;
        }

        v202 = *v201;
        v203 = v198 - 15;
        *(a5 + 26) = v202;
        *a5 = v201;
        v199 |= v202 << v203;
      }

      *(a5 + 24) = v203;
      a6[2190] = HIWORD(v199);
      if (a2[8] >= 1)
      {
        v233 = 0;
        v234 = 0;
        v235 = a6 + 2215;
        v494 = a6 + 2560;
        v236 = a3 + 135;
        v237 = (a3 + 140);
        v238 = a6 + 2217;
        result = (a6 + 2218);
        v239 = a6 + 2262;
        while (1)
        {
          v240 = &v145[156 * v233];
          v241 = v240 + 312 > v146 || v240 > v240 + 312;
          if (v241 || v240 < v145)
          {
            goto LABEL_806;
          }

          v243 = *(v240 + 8);
          v244 = &v236[v233];
          if (v243)
          {
            v245 = a6[25];
            if (v245 == 0xFFFF)
            {
              a6[25] = v233;
              LOWORD(v245) = v233;
            }

            if (v244 < v236 || (v244 + 1) > v237 || v244 > v244 + 1)
            {
              goto LABEL_806;
            }

            v246 = &v235[69 * v233];
            if (*v244)
            {
              if (v246 + 69 > v494 || v235 > v246)
              {
                goto LABEL_806;
              }

              *v246 = 1;
              v246[1] = v233 > v245;
              *v244 = 0;
            }

            else
            {
              v247 = *(a5 + 24);
              v248 = *(a5 + 26);
              v249 = 2 * (v248 << *(a5 + 24));
              if (v247 < 16)
              {
                v253 = v247 + 1;
              }

              else
              {
                v250 = *a5;
                v251 = *a5 + 4;
                if (v251 > *(a5 + 8))
                {
                  goto LABEL_806;
                }

                v252 = (v250 + 2);
                if (v250 + 2 > v251 || v252 < *(a5 + 16))
                {
                  goto LABEL_806;
                }

                v248 = *v252;
                v253 = v247 - 15;
                *(a5 + 26) = v248;
                *a5 = v252;
                v249 |= v248 << v253;
              }

              *(a5 + 24) = v253;
              if (v246 + 69 > v494 || v235 > v246)
              {
                goto LABEL_806;
              }

              *v246 = HIWORD(v249);
              if (v233 <= a6[25])
              {
                v246[1] = 0;
              }

              else
              {
                v254 = 2 * (v248 << v253);
                if (v253 < 16)
                {
                  v259 = v253 + 1;
                }

                else
                {
                  v255 = *a5;
                  v256 = *a5 + 4;
                  if (v256 > *(a5 + 8))
                  {
                    goto LABEL_806;
                  }

                  v257 = (v255 + 2);
                  if (v255 + 2 > v256 || v257 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v258 = *v257;
                  v259 = v253 - 15;
                  *(a5 + 26) = v258;
                  *a5 = v257;
                  v254 |= v258 << (v253 - 15);
                }

                *(a5 + 24) = v259;
                v246[1] = HIWORD(v254);
              }
            }

            if (*v246 && a6[2562] >= 1)
            {
              v260 = 0;
              v261 = 0;
              do
              {
                v262 = *(a5 + 24);
                v263 = 32 * (*(a5 + 26) << *(a5 + 24));
                if (v262 < 12)
                {
                  v269 = v262 + 5;
                }

                else
                {
                  v264 = (*a5 + 2);
                  v265 = *a5 + 4;
                  if (v265 > *(a5 + 8) || v264 > v265 || v264 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v268 = *v264;
                  v269 = v262 - 11;
                  *(a5 + 26) = v268;
                  *a5 = v264;
                  v263 |= v268 << v269;
                }

                *(a5 + 24) = v269;
                if (&v238[v260] < v246 + 2 || result + v260 * 2 > (v246 + 24) || &v238[v260] > result + v260 * 2)
                {
                  goto LABEL_806;
                }

                v238[v261++] = HIWORD(v263);
                ++v260;
              }

              while (v261 < a6[2562]);
            }

            if (v246[1] && a6[2562] >= 1)
            {
              v270 = 0;
              v271 = (v246 + 46);
              v272 = v239;
              do
              {
                v273 = *(a5 + 24);
                v274 = (*(a5 + 26) << *(a5 + 24)) << 6;
                if (v273 < 11)
                {
                  v280 = v273 + 6;
                }

                else
                {
                  v275 = (*a5 + 2);
                  v276 = *a5 + 4;
                  if (v276 > *(a5 + 8) || v275 > v276 || v275 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v279 = *v275;
                  v280 = v273 - 10;
                  *(a5 + 26) = v279;
                  *a5 = v275;
                  v274 |= v279 << v280;
                }

                *(a5 + 24) = v280;
                v281 = (v272 - 46);
                if (v272 - 46 < (v246 + 24) || v272 - 44 > v271 || v281 > v272 - 44)
                {
                  goto LABEL_806;
                }

                *v281 = HIWORD(v274);
                v282 = *(a5 + 24);
                v283 = 8 * (*(a5 + 26) << *(a5 + 24));
                if (v282 < 14)
                {
                  v287 = v282 + 3;
                }

                else
                {
                  v284 = *a5 + 4;
                  if (v284 > *(a5 + 8))
                  {
                    goto LABEL_806;
                  }

                  v285 = (*a5 + 2);
                  if (v285 > v284 || v285 < *(a5 + 16))
                  {
                    goto LABEL_806;
                  }

                  v286 = *v285;
                  v287 = v282 - 13;
                  *(a5 + 26) = v286;
                  *a5 = v285;
                  v283 |= v286 << v287;
                }

                *(a5 + 24) = v287;
                if (v272 - 2 < v271 || v272 > (v246 + 68) || v272 - 2 > v272)
                {
                  goto LABEL_806;
                }

                *(v272 - 2) = HIWORD(v283);
                ++v270;
                v272 += 2;
              }

              while (v270 < a6[2562]);
            }

            if (v246 > v246 + 69)
            {
              goto LABEL_806;
            }

            if (!*v246 || !v246[1] && v233 > a6[25])
            {
              v288 = *v494;
              if (v288 != *(v493 + 5120))
              {
                return 4112;
              }

              v289 = a6[2561];
              if (v289 != *(v493 + 5122))
              {
                return 4112;
              }

              v290 = v288;
              if (v288 < v289)
              {
                v291 = v289 - v288;
                v292 = v290;
                v293 = a6 + 2194;
                v294 = v493 + 4388;
                v295 = a6 + 2193;
                v296 = v493 + 4386;
                do
                {
                  v297 = &v295[v292];
                  v298 = &v293[v292];
                  v299 = &v295[v292] < a6 + 2193 || v298 > v235;
                  v300 = v299 || v297 > v298;
                  v301 = (v296 + v292 * 2);
                  v302 = v294 + v292 * 2;
                  v303 = !v300 && v301 >= v493 + 4386;
                  v304 = !v303 || v302 > v493 + 4430;
                  if (v304 || v301 > v302)
                  {
                    goto LABEL_806;
                  }

                  if (*v297 != *v301)
                  {
                    v234 = -4098;
                  }

                  v296 += 2;
                  v294 += 2;
                  ++v295;
                  ++v293;
                }

                while (--v291);
              }
            }

            v306 = a6[25];
            if (v233 > v306)
            {
              v307 = *(a5 + 24);
              v308 = 2 * (*(a5 + 26) << *(a5 + 24));
              if (v307 < 16)
              {
                v311 = v307 + 1;
              }

              else
              {
                v309 = *a5 + 4;
                if (v309 > *(a5 + 8))
                {
                  goto LABEL_806;
                }

                v306 = *a5 + 2;
                if (v306 > v309 || v306 < *(a5 + 16))
                {
                  goto LABEL_806;
                }

                v310 = *v306;
                v311 = v307 - 15;
                *(a5 + 26) = v310;
                *a5 = v306;
                v308 |= v310 << v311;
                LODWORD(v306) = a6[25];
              }

              *(a5 + 24) = v311;
              v246[68] = HIWORD(v308);
            }

            if (v233 == v306)
            {
              if (a6[2562] >= 1)
              {
                v312 = 0;
                v313 = (v246 + 46);
                v314 = v239;
                do
                {
                  v315 = v314 - 44;
                  v316 = v314 - 46 < (v246 + 24) || v315 > v313;
                  if (v316 || v314 - 46 > v315)
                  {
                    goto LABEL_806;
                  }

                  *(v314 - 46) = 0;
                  if (v314 - 2 < v313 || v314 > (v246 + 68) || v314 - 2 > v314)
                  {
                    goto LABEL_806;
                  }

                  *(v314 - 2) = 0;
                  ++v312;
                  v314 += 2;
                }

                while (v312 < a6[2562]);
              }

              v246[68] = 0;
            }
          }

          else
          {
            if (v244 < v236 || (v244 + 1) > v237 || v244 > v244 + 1)
            {
              goto LABEL_806;
            }

            *v244 = 1;
          }

          v146 = (a6 + 1140);
          ++v233;
          v238 += 69;
          result += 138;
          v239 += 69;
          if (v233 >= a2[8])
          {
            goto LABEL_485;
          }
        }
      }
    }

    else
    {
      if (a2[8] >= 1)
      {
        v213 = 0;
        v214 = 0;
        v215 = 0;
        do
        {
          v216 = &a6[v213 + 204];
          v217 = &a6[v213 + 360];
          v218 = v217 > (a6 + 1140) || v216 > v217;
          if (v218 || v216 < v145)
          {
            goto LABEL_806;
          }

          v220 = &a3[v215];
          v221 = &a3[v214 + 135];
          v222 = &a3[v214 + 136];
          v225 = v222 <= (a3 + 140) && v221 <= v222 && v221 >= (a3 + 135);
          if (a6[v213 + 208])
          {
            if (!v225)
            {
              goto LABEL_806;
            }

            if (v220[135])
            {
              a6[v213 + 209] = 1;
              v220[135] = 0;
              v226 = v495;
            }

            else
            {
              v227 = *(a5 + 24);
              v228 = 2 * (*(a5 + 26) << *(a5 + 24));
              if (v227 < 16)
              {
                v232 = v227 + 1;
              }

              else
              {
                v229 = *a5 + 4;
                if (v229 > *(a5 + 8))
                {
                  goto LABEL_806;
                }

                v230 = (*a5 + 2);
                if (v230 > v229 || v230 < *(a5 + 16))
                {
                  goto LABEL_806;
                }

                v231 = *v230;
                v232 = v227 - 15;
                *(a5 + 26) = v231;
                *a5 = v230;
                v228 |= v231 << v232;
              }

              v226 = v495;
              *(a5 + 24) = v232;
              a6[v213 + 209] = HIWORD(v228);
            }

            result = ddp_udc_int_unpcplco(v226, v215, a5, a6);
            if (result > 0)
            {
              return result;
            }
          }

          else
          {
            if (!v225)
            {
              goto LABEL_806;
            }

            v220[135] = 1;
          }

          ++v215;
          ++v214;
          v213 += 156;
        }

        while (v215 < a2[8]);
      }

      v146 = (a6 + 1140);
      v497 = (a6 + 204);
      v498 = a6 + 1140;
      v499 = a6 + 204;
      ddp_udc_int_unpphsflgs(a5, &v497, a6);
    }
  }

  v234 = 0;
LABEL_485:
  result = ddp_udc_int_unprematstr(v495, a2, a5, a6);
  v155 = result;
  if (result > 0)
  {
    return v155;
  }

  if (result)
  {
    v155 = result;
  }

  else
  {
    v155 = v234;
  }

  v318 = a6[1169];
  v319 = a2[8];
  v320 = v319;
  if (*a3)
  {
    v321 = v495;
    if (a6[3])
    {
      v322 = &v492[v495];
      if (v322 < v492 || v322 + 1 > a3 + 41 || v322 > v322 + 1)
      {
        goto LABEL_806;
      }

      a6[60] = *v322;
    }

    if (v319 >= 1)
    {
      v323 = 0;
      v324 = &a3[5 * v495];
      v325 = v324 + 41;
      v326 = (v324 + 46);
      v327 = 312 * v319;
      v328 = v325;
      while (v328 >= v325)
      {
        if ((v328 + 1) > v326)
        {
          break;
        }

        if (v328 > v328 + 1)
        {
          break;
        }

        v329 = &a6[v323 / 2 + 204];
        if (v329 < v145)
        {
          break;
        }

        v330 = &a6[v323 / 2 + 360];
        if (v330 > v146 || v329 > v330)
        {
          break;
        }

        v331 = *v328++;
        a6[v323 / 2 + 224] = v331;
        v323 += 312;
        if (v327 == v323)
        {
          goto LABEL_533;
        }
      }

      goto LABEL_806;
    }
  }

  else
  {
    v321 = v495;
    if (a6[3])
    {
      v333 = (&ddp_udc_int_afm_expstrtab + 12 * a3[71]);
      v334 = &v333[v495];
      if (v334 < v333 || v334 + 1 > v333 + 6 || v334 > v334 + 1)
      {
        goto LABEL_806;
      }

      a6[60] = *v334;
    }

    if (v319 >= 1)
    {
      v335 = 0;
      v336 = 312 * v319;
      v337 = a3 + 72;
      while (v337 >= a3 + 72 && v337 + 1 <= a3 + 77 && v337 <= v337 + 1)
      {
        v338 = (&ddp_udc_int_afm_expstrtab + 12 * *v337);
        v339 = &v338[v495];
        v340 = (v339 + 1);
        v341 = v339 < v338 || v340 > (v338 + 6);
        v342 = v341 || v339 > v340;
        result = &a6[v335 / 2 + 204];
        v343 = &a6[v335 / 2 + 360];
        v344 = !v342 && result >= v145;
        v345 = !v344 || v343 > v146;
        if (v345 || result > v343)
        {
          break;
        }

        a6[v335 / 2 + 224] = *v339;
        v335 += 312;
        ++v337;
        if (v336 == v335)
        {
          goto LABEL_533;
        }
      }

      goto LABEL_806;
    }
  }

LABEL_533:
  if (!a2[7])
  {
LABEL_541:
    if (v320 < 1)
    {
LABEL_581:
      result = ddp_udc_int_checkexpstr(v321, a2, a6);
      if (result)
      {
        return result;
      }

      v497 = (a6 + 204);
      v498 = v146;
      v499 = a6 + 204;
      ddp_udc_int_savepkexps(v318, a2, a5, a6, &v497);
      v497 = (a6 + 204);
      v498 = v146;
      v499 = a6 + 204;
      v369 = v321;
      v370 = a3;
      result = ddp_udc_int_unpddpbai(v369, a2, a3, a5, (a6 + 1172), a6, &v497);
      if (result)
      {
        return result;
      }

      ddp_udc_int_abk_calcminsnrflg(a2[9], a6, a6 + 592);
      if (a3[8])
      {
        v497 = (a6 + 204);
        v498 = v146;
        v499 = a6 + 204;
        result = ddp_udc_int_unpdeltbai(v495, a2, a5, (a6 + 1172), a6, &v497);
        v370 = a3;
        if (result)
        {
          return result;
        }
      }

      if (v370[9])
      {
        v413 = *a5;
        if (*a5)
        {
          v414 = *(a5 + 32);
          if (v414)
          {
            LODWORD(v413) = *(a5 + 24) + 16 * ((v413 - v414) >> 1);
          }

          else
          {
            LODWORD(v413) = 0;
          }
        }

        *(a6 + 608) = v413;
        v486 = bsod_unprj_11184(a5, 1);
        a6[1192] = v486;
        if (v486)
        {
          v487 = bsod_unprj_11184(a5, 9);
          a6[1193] = v487;
          v488 = *(a5 + 32);
          v489 = *(a5 + 16);
          *(a6 + 1196) = *a5;
          *(a6 + 1204) = v489;
          *(a6 + 303) = v488;
          ddp_udc_int_bsod_skip(a5, 8 * v487);
        }

        if (*a5 && (v490 = *(a5 + 32)) != 0)
        {
          v491 = *(a5 + 24) + 16 * ((*a5 - v490) >> 1) - 1;
        }

        else
        {
          v491 = -1;
        }

        *(a6 + 609) = v491;
      }

      return v155;
    }

    v349 = 0;
    v350 = 0;
    v351 = a6 + 2044;
    v352 = a6 + 2184;
    v353 = 2044;
    v354 = 2072;
    while (1)
    {
      v355 = &a6[v349];
      result = &a6[v349 + 204];
      v356 = &a6[v349 + 360];
      if (result < v145 || v356 > v146 || result > v356)
      {
        goto LABEL_806;
      }

      if (v355[208])
      {
        result = *a6;
      }

      else
      {
        result = &a6[v353];
        if (&a6[v353] < v351 || &a6[v354] > v352 || result > &a6[v354])
        {
          goto LABEL_806;
        }

        if (*result)
        {
          result = &ddp_udc_int_spxd_bndtab[a6[2024]];
          if (result < ddp_udc_int_spxd_bndtab || result + 2 > ddp_udc_int_spxd_begftobegsbndtab || result > result + 2)
          {
            goto LABEL_806;
          }

          result = *result;
        }

        else
        {
          if (a6[v349 + 224])
          {
            v359 = *(a5 + 24);
            result = (*(a5 + 26) << *(a5 + 24)) << 6;
            if (v359 < 11)
            {
              v363 = v359 + 6;
            }

            else
            {
              v360 = *a5 + 4;
              if (v360 > *(a5 + 8))
              {
                goto LABEL_806;
              }

              v361 = (*a5 + 2);
              if (v361 > v360 || v361 < *(a5 + 16))
              {
                goto LABEL_806;
              }

              v362 = *v361;
              v363 = v359 - 10;
              *(a5 + 26) = v362;
              *a5 = v361;
              LODWORD(result) = (v362 << v363) | result;
            }

            v365 = WORD1(result);
            v364 = result >> 16;
            *(a5 + 24) = v363;
            a6[v349 + 207] = v365;
            if (v364 > 60)
            {
              return 4103;
            }
          }

          else
          {
            v364 = a6[v349 + 207];
          }

          result = (3 * v364 + 73);
        }
      }

      a6[v349 + 352] = result;
      v366 = &a6[v353];
      if (&a6[v353] < v351 || &a6[v354] > v352 || v366 > &a6[v354])
      {
        goto LABEL_806;
      }

      if (*v366)
      {
        break;
      }

      v368 = v355[208];
      v367 = (a6 + 1);
      if (v368)
      {
        goto LABEL_579;
      }

LABEL_580:
      a6[v349 + 205] = result;
      ++v350;
      v353 += 28;
      v354 += 28;
      v349 += 156;
      if (v350 >= a2[8])
      {
        goto LABEL_581;
      }
    }

    v367 = &ddp_udc_int_spxd_bndtab[a6[2025]];
    if (v367 < ddp_udc_int_spxd_bndtab)
    {
      goto LABEL_806;
    }

    result = (v367 + 1);
    if (v367 + 1 > ddp_udc_int_spxd_begftobegsbndtab || v367 > result)
    {
      goto LABEL_806;
    }

LABEL_579:
    LOWORD(result) = *v367;
    goto LABEL_580;
  }

  v347 = &a3[v495 + 77];
  if (v347 >= a3 + 77 && v347 + 1 <= a3 + 83 && v347 <= v347 + 1)
  {
    v348 = &v145[156 * v320];
    if (v348 >= v145 && v348 + 312 <= v146 && v348 <= v348 + 312)
    {
      *(v348 + 40) = *v347;
      goto LABEL_541;
    }
  }

LABEL_806:
  __break(0x5519u);
  return result;
}