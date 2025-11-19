uint64_t IGF_decode_whitening_level(uint64_t a1, uint64_t a2, int a3)
{
  result = get_next_indice(a1, 1);
  if (result == 1)
  {
    result = get_next_indice(a1, 1);
    v7 = (a2 + 4928 + 4 * a3);
    v10 = (v7 + 1) <= a2 + 4948 && v7 < v7 + 1 && v7 >= a2 + 4928;
    if (result == 1)
    {
      if (v10)
      {
        v11 = 2;
LABEL_22:
        *v7 = v11;
        return result;
      }
    }

    else if (v10)
    {
      *v7 = 0;
      return result;
    }
  }

  else
  {
    v7 = (a2 + 4928 + 4 * a3);
    v12 = (v7 + 1);
    if (v7 >= a2 + 4928 && v12 <= a2 + 4948 && v7 < v12)
    {
      v11 = 1;
      goto LABEL_22;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t ari_decode_14bits_s27_ext(uint64_t result, _DWORD *a2, int *a3, unint64_t a4, unint64_t a5)
{
  if (a4 + 26 < a4 || a4 + 28 > a5 || a4 + 26 > a4 + 28)
  {
    goto LABEL_79;
  }

  v6 = *a3;
  v7 = a3[2];
  v8 = a3[1] - v6 + 1;
  v9 = ((v7 - v6) << 14) | 0x3FFF;
  v10 = v8 * *(a4 + 26);
  v11 = 6;
  if (v10 > v9)
  {
    v11 = 20;
  }

  v12 = a4 + 2 * v11;
  v13 = v12 + 2;
  v14 = v12 < a4 || v13 > a5;
  if (v14 || v12 >= v13)
  {
    goto LABEL_79;
  }

  v16 = 27;
  if (v10 <= v9)
  {
    v16 = 13;
  }

  v17 = *(a4 + 2 * v11);
  v18 = v10 <= v9 ? 0 : 13;
  v19 = v8 * v17 <= v9 ? v11 : v16;
  v20 = v8 * v17 <= v9 ? v18 : v11;
  v21 = (v20 + v19) >> 1;
  v22 = a4 + 2 * v21;
  v23 = v22 + 2;
  v24 = v22 < a4 || v23 > a5;
  if (v24 || v22 >= v23)
  {
    goto LABEL_79;
  }

  v26 = v8 * *(a4 + 2 * v21);
  v27 = v26 > v9;
  v28 = v26 <= v9 ? (v20 + v19) >> 1 : v19;
  v29 = v27 ? (v20 + v19) >> 1 : v20;
  v30 = (a4 + 2 * ((v29 + v28) >> 1));
  v31 = v30 + 1;
  v32 = v30 < a4 || v31 > a5;
  if (v32 || v30 >= v31)
  {
    goto LABEL_79;
  }

  v35 = result;
  if (v8 * *v30 > v9)
  {
    v36 = (v29 + v28) >> 1;
  }

  else
  {
    v28 = (v29 + v28) >> 1;
    v36 = v29;
  }

  if ((v28 - v36) >= 2)
  {
    v37 = (a4 + 2 * (v36 + 1));
    v38 = v37 + 1;
    if (v37 < a4 || v38 > a5 || v37 >= v38)
    {
      goto LABEL_79;
    }

    if (v8 * *v37 > v9)
    {
      ++v36;
    }
  }

  v41 = (a4 + 2 * v36);
  v42 = v41 + 1;
  v44 = v41 < a4 || v42 > a5 || v41 >= v42;
  v45 = v41 + 2;
  if (!v44 && v45 <= a5 && v42 <= v45)
  {
    v48 = v6 + ((*v41 * v8) >> 14) - 1;
    v49 = v6 + ((v41[1] * v8) >> 14);
    while (1)
    {
      if (v48 >= 0x8000)
      {
        if (v49 < 0x8000)
        {
          if (v48 >> 14 > 2 || v49 < 0x4000)
          {
            *a3 = v49;
            a3[1] = v48;
            a3[2] = v7;
            *a2 = v36;
            return result;
          }

          v7 -= 0x4000;
          v48 -= 0x4000;
          v49 -= 0x4000;
        }

        else
        {
          v7 -= 0x8000;
          v48 -= 0x8000;
          v49 -= 0x8000;
        }
      }

      v49 *= 2;
      v48 = (2 * v48) | 1;
      result = get_next_indice_1(v35);
      v7 = result | (2 * v7);
    }
  }

LABEL_79:
  __break(0x5519u);
  return result;
}

_DWORD *arith_decode_bits(_DWORD *result, uint64_t a2, int a3)
{
  if (result + 100 <= result + 103)
  {
    v4 = result;
    v5 = 0;
    LODWORD(v6) = 0;
    LODWORD(v7) = result[100];
    LODWORD(v8) = result[101];
    v9 = result[102];
    while (1)
    {
      v10 = v8 - v7 + 1;
      v11 = ((v9 - v7) << 14) | 0x3FFF;
      v12 = v11;
      v13 = v10 << 13;
      v14 = v10 >> 1;
      v15 = v14 + v7 - 1;
      if (v13 > v11)
      {
        v14 = 0;
      }

      v7 = v14 + v7;
      if (v13 <= v11)
      {
        v8 = v8;
      }

      else
      {
        v8 = v15;
      }

      while (1)
      {
        if (v8 < 0x8000)
        {
          goto LABEL_14;
        }

        if (v7 >= 0x8000)
        {
          v9 -= 0x8000;
          v7 -= 0x8000;
          v8 -= 0x8000;
          goto LABEL_14;
        }

        if (v7 < 0x4000 || v8 >> 14 > 2)
        {
          break;
        }

        v9 -= 0x4000;
        v8 -= 0x4000;
        v7 -= 0x4000;
LABEL_14:
        v7 *= 2;
        v8 = (2 * v8) | 1;
        v9 = get_next_indice_1(a2) | (2 * v9);
      }

      v4[100] = v7;
      v4[101] = v8;
      v4[102] = v9;
      v6 = (v13 > v12) | (2 * v6);
      if (++v5 == a3)
      {
        return v6;
      }
    }
  }

  __break(0x5519u);
  return result;
}

_DWORD *arith_decode_residual(_DWORD *result, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (result + 100 > result + 103)
  {
    __break(0x5519u);
  }

  else
  {
    v7 = result;
    v13 = -1431655766;
    ari_decode_14bits_s27_ext(a2, &v13, result + 100, a3, a4);
    v8 = v13;
    if (v13)
    {
      v9 = v13 == 26;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = arith_decode_bits(v7, a2, 4);
      if (v10 == 15)
      {
        v11 = arith_decode_bits(v7, a2, 6);
        if (v11 == 63)
        {
          v11 = arith_decode_bits(v7, a2, 7) + 63;
        }

        v10 = v11 + 15;
      }

      v12 = -13 - v10;
      if (v8)
      {
        v12 = v10 + 13;
      }
    }

    else
    {
      v12 = v13 - 13;
    }

    return (v12 - a5);
  }

  return result;
}

uint64_t ReadFromBitstream(unsigned int *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = 0;
  v9 = (a1 + 2);
  v10 = a1 + 162;
  v13 = *a1;
  result = (a1 + 18);
  v12 = v13;
  v24 = result;
  while (v12 < 1)
  {
LABEL_22:
    v8 = (v8 + 1);
    if (v8 == a2)
    {
      *a5 += v12 * a2;
      return result;
    }
  }

  v14 = v24;
  v15 = v12;
  while (v9 <= v14 - 64 && v14 <= v10)
  {
    v17 = !*(v14 - 48) && *(v14 - 24) == 0;
    v18 = *(v14 - 16);
    v19 = *(v14 - 64);
    v26 = 0;
    if (v18)
    {
      v18(a3, v8, &v26);
      result = v26;
    }

    else
    {
      result = get_next_indice(a3, v19);
      v26 = result;
    }

    v20 = *a4;
    v21 = *(a4 + 8);
    v22 = *a4 + 4;
    *a4 = v22;
    if (v22 < v20 || v22 > v21)
    {
      break;
    }

    *v20 = result;
    result = *(v14 - 8);
    if (result)
    {
      if ((v26 + v17) >= 1)
      {
        result = ReadFromBitstream();
      }
    }

    v14 += 64;
    if (!--v15)
    {
      goto LABEL_22;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t unary_decode(uint64_t a1, int *a2)
{
  v4 = 0;
  v5 = *(a1 + 5160);
  while (1)
  {
    *a2 = v4;
    if (!get_next_indice_1(a1) || *(a1 + 5168))
    {
      break;
    }

    v4 = *a2 + 1;
  }

  if (*a2)
  {
    ++*a2;
  }

  return (*(a1 + 5160) - v5);
}

uint64_t pack4bits(int a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1 < 5)
  {
    v9 = 0;
LABEL_10:
    result = get_next_indice(a2, v7);
    v14 = (a3 + 4 * v9);
    if (v14 >= a3 && (v14 + 1) <= a4 && v14 <= v14 + 1)
    {
      *v14 = result;
      return result;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      result = get_next_indice(a2, 4);
      v11 = a3 + v8;
      if (a3 + v8 < a3 || v11 + 4 > a4 || v11 > v11 + 4)
      {
        break;
      }

      *(a3 + 4 * v9) = result;
      v12 = v7 - 4;
      ++v9;
      v8 += 4;
      v13 = v7 <= 8;
      v7 -= 4;
      if (v13)
      {
        v9 = v9;
        LOWORD(v7) = v12;
        goto LABEL_10;
      }
    }
  }

  __break(0x5519u);
  return result;
}

_DWORD *IGF_RefineGrid(_DWORD *result)
{
  v1 = 0;
  v35[1] = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[4] = v2;
  v34[5] = v2;
  v34[2] = v2;
  v34[3] = v2;
  v34[0] = v2;
  v34[1] = v2;
  do
  {
    v3 = v34 + v1 + 4;
    if ((v34 + v1) < v34 || v3 > v35 || v34 + v1 > v3)
    {
      goto LABEL_55;
    }

    *(v34 + v1) = 0;
    v1 += 4;
  }

  while (v1 != 96);
  v6 = result + 23;
  v7 = result[23];
  result[49] = 1;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 4 * v7;
    v10 = v34 + 1;
    while (1)
    {
      v11 = &result[v8 / 4 + 1];
      if (v11 > v6 || &result[v8 / 4] > v11)
      {
        break;
      }

      v13 = (v10 - 1);
      if (v10 - 1 < v34)
      {
        break;
      }

      if (v10 > v35)
      {
        break;
      }

      if (v13 > v10)
      {
        break;
      }

      v14 = &result[v8 / 4 + 1];
      v16 = &result[v8 / 4 + 2];
      v15 = result[v8 / 4];
      *v13 = v15;
      if (v14 < result || v16 > v6 || v14 > v16)
      {
        break;
      }

      v17 = (*v14 - v15);
      v18 = v15 + (v17 * 0.45);
      v19 = v18 <= 0.0 ? -((-v15 + (v17 * 0.45)) + 0.5) : (v18 + 0.5);
      if (v10 < v34 || v10 + 1 > v35 || v10 > v10 + 1)
      {
        break;
      }

      *v10 = v19 & 0xFFFFFFFE;
      v10 += 2;
      v8 += 4;
      if (v9 == v8)
      {
        goto LABEL_29;
      }
    }

LABEL_55:
    __break(0x5519u);
  }

LABEL_29:
  v20 = result[29];
  result[29] = 2 * v20;
  if ((v20 & 0x80000000) == 0)
  {
    v21 = -1;
    v22 = v34;
    v23 = result;
    do
    {
      v24 = v22 + 1;
      v25 = v22 < v34 || v24 > v35;
      v26 = v25 || v22 > v24;
      v27 = v23 + 1;
      v28 = !v26 && v23 >= result;
      v29 = !v28 || v27 > v6;
      if (v29 || v23 > v27)
      {
        goto LABEL_55;
      }

      v31 = *v22++;
      *v23++ = v31;
    }

    while (++v21 < result[29]);
  }

  if ((result[41] & 0x80000000) == 0)
  {
    v32 = -1;
    for (i = result + 30; i >= result + 30 && i + 1 <= result + 36 && i <= i + 1; ++i)
    {
      *i *= 2;
      if (++v32 >= result[41])
      {
        return result;
      }
    }

    goto LABEL_55;
  }

  return result;
}

void **tcx_ltp_synth_filter(void **result, const void **a2, int a3, int a4, int a5, int a6, int a7, float a8)
{
  if (a8 <= 0.0)
  {
    v59 = *a2;
    if (*a2 >= a2[2])
    {
      v60 = *result;
      if (*result >= result[2])
      {
        if (a3 < 1)
        {
          return result;
        }

        v61 = result[1];
        v38 = v61 >= v60;
        v62 = v61 - v60;
        if (v38)
        {
          v63 = a2[1];
          if (v59 <= v63)
          {
            v64 = 4 * (a3 & 0x7FFFu);
            if (v63 - v59 >= v64 && v62 >= v64)
            {
              result = memmove(*result, *a2, 4 * (a3 & 0x7FFFu));
              if (&v60[v64] >= v60)
              {
                return result;
              }
            }
          }
        }
      }
    }

LABEL_72:
    __break(0x5519u);
    return result;
  }

  v8 = (&tcxLtpFilters + 3 * a7);
  v9 = v8 + 3;
  if (v8 < &tcxLtpFilters || v9 > &xcore_config_8kHz_007200bps_short || v8 > v9)
  {
    goto LABEL_72;
  }

  if (a3 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v15 = result[1];
    v14 = result[2];
    v16 = *v8;
    v17 = v8[1];
    v18 = a5;
    v19 = *(v8 + 4);
    v20 = *result - 4 * a4;
    v22 = a2[1];
    v21 = a2[2];
    v23 = *a2;
    v65 = a3;
    v24 = a6;
    v25 = v18;
    v26 = v24 * 4 - 4 * v18;
    while (v19 < 1)
    {
      v52 = 0.0;
      v27 = 0.0;
LABEL_44:
      v53 = (*a2 + 4 * v13);
      if (v53 + 1 > a2[1] || v53 > v53 + 1 || v53 < v21)
      {
        goto LABEL_72;
      }

      v56 = (*result + 4 * v13);
      v57 = v56 + 1 > result[1] || v56 > v56 + 1;
      if (v57 || v56 < v14)
      {
        goto LABEL_72;
      }

      *v56 = (*v53 + (-a8 * v52)) + (a8 * v27);
      ++v13;
      v12 += 4;
      if (v13 == v65)
      {
        return result;
      }
    }

    v27 = 0.0;
    v28 = v20;
    v29 = v20;
    v30 = v23;
    v31 = v23;
    v32 = v19;
    v33 = 0.0;
    v34 = v16;
    while (1)
    {
      v35 = &v34[v25];
      v36 = &v34[v25 + 1];
      v37 = v36 > v17 || v35 > v36;
      v38 = !v37 && v35 >= v16;
      if (!v38)
      {
        goto LABEL_72;
      }

      v39 = (v28 + v12);
      v40 = v28 + v12 + 4;
      if (v40 > v15)
      {
        goto LABEL_72;
      }

      if (v39 > v40)
      {
        goto LABEL_72;
      }

      if (v39 < v14)
      {
        goto LABEL_72;
      }

      v41 = (v34 + v26);
      v42 = v34 + v26 + 4;
      if (v42 > v17)
      {
        goto LABEL_72;
      }

      if (v41 > v42)
      {
        goto LABEL_72;
      }

      if (v41 < v16)
      {
        goto LABEL_72;
      }

      v43 = v29 + v12;
      if (v29 + v12 > v15)
      {
        goto LABEL_72;
      }

      v44 = (v43 - 4);
      if (v43 < 4)
      {
        goto LABEL_72;
      }

      if (v44 < v14)
      {
        goto LABEL_72;
      }

      if ((v34 + 1) > v17)
      {
        goto LABEL_72;
      }

      if (v34 > v34 + 1)
      {
        goto LABEL_72;
      }

      v45 = &v31[v12];
      v46 = &v31[v12 + 4];
      if (v46 > v22)
      {
        goto LABEL_72;
      }

      if (v45 > v46)
      {
        goto LABEL_72;
      }

      if (v45 < v21)
      {
        goto LABEL_72;
      }

      v47 = &v34[v24];
      v48 = &v34[v24 + 1];
      if (v48 > v17)
      {
        goto LABEL_72;
      }

      if (v47 > v48)
      {
        goto LABEL_72;
      }

      if (v47 < v16)
      {
        goto LABEL_72;
      }

      v49 = &v30[v12];
      if (&v30[v12] > v22)
      {
        goto LABEL_72;
      }

      v50 = (v49 - 4);
      if (v49 < 4 || v50 < v21)
      {
        goto LABEL_72;
      }

      v27 = v27 + ((*v41 * *v44) + (*v35 * *v39));
      v51 = *v34;
      v34 = (v34 + v24 * 4);
      v31 += 4;
      v33 = v33 + ((*v34 * *v50) + (v51 * *v45));
      v30 -= 4;
      v29 -= 4;
      v28 += 4;
      if (!--v32)
      {
        v52 = v33 * 0.85;
        goto LABEL_44;
      }
    }
  }

  return result;
}

int64x2_t GenSHBSynth(float *a1, uint64_t a2, unint64_t *a3, float *a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  Interpolate_allpass_steep(a1, a4, (a4 + 6), 0x140u, __b, &v22);
  if (a5 == 256)
  {
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = *a3 + 52;
    v14 = v13 > v11 || v12 > v13;
    if (v14 || (v11 - v10) < 17 || v10 > v11 || (v15 = v10 + 20, (v11 - (v10 + 20)) < 29) || v15 > v11 || (v11 - v13) < 29 || v12 > v15 || v12 > v10)
    {
      __break(0x5519u);
    }

    flip_and_downmix_generic(__b);
  }

  else
  {
    v17 = 0;
    result = xmmword_19B0A5840;
    v18 = xmmword_19B0A5850;
    v19 = vdupq_n_s64(1uLL);
    v20 = vdupq_n_s64(4uLL);
    do
    {
      *(a2 + v17) = vbslq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v18, v19)), vceqzq_s64(vandq_s8(result, v19))), vnegq_f32(*&__b[v17]), *&__b[v17]);
      result = vaddq_s64(result, v20);
      v18 = vaddq_s64(v18, v20);
      v17 += 16;
    }

    while (v17 != 2560);
  }

  return result;
}

unint64_t AVQ_demuxdec(unint64_t result, int *a2, unint64_t a3, _WORD *a4, int a5, _WORD *a6, unint64_t a7)
{
  v71[0] = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[0] = v7;
  v66[1] = v7;
  v8 = *a4;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v70[0] = v9;
  v70[1] = v9;
  v70[2] = v9;
  v70[3] = v9;
  v70[4] = v9;
  v70[5] = v9;
  v70[6] = v9;
  v70[7] = v9;
  v70[8] = v9;
  v70[9] = v9;
  v70[10] = v9;
  v70[11] = v9;
  v70[12] = v9;
  v70[13] = v9;
  v70[14] = v9;
  v70[15] = v9;
  v70[16] = v9;
  if (a5 < 1)
  {
    goto LABEL_101;
  }

  v12 = result;
  v13 = 0;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v67[6] = v7;
  v67[7] = v7;
  v67[4] = v7;
  v67[5] = v7;
  v67[2] = v7;
  v67[3] = v7;
  v63 = a4;
  v62 = a5;
  v14 = a5;
  v15 = a2;
  v67[0] = v7;
  v67[1] = v7;
  while (1)
  {
    v16 = v67 + v13;
    v17 = v16 + 1;
    if (v16 < v67 || v17 > &v69 || v16 > v17)
    {
      goto LABEL_102;
    }

    *v16 = 0;
    if (v8 < 9)
    {
      goto LABEL_51;
    }

    *v16 = -1;
    while (1)
    {
      v20 = *v16;
      v21 = *v16 + 1;
      *v16 = v21;
      if (5 * v20 + 9 == v8)
      {
        break;
      }

      result = get_next_indice_1(v12);
      if (!result)
      {
        v21 = *v16;
        break;
      }
    }

    if (v21 >= 33)
    {
      break;
    }

    if (5 * v21 + 4 == v8)
    {
      v8 += ~v21 + 1;
    }

    else
    {
      v8 += ~v21;
    }

    if (v21 <= 0)
    {
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v16 = v21 + 1;
      if (v21 <= 3)
      {
        LOWORD(v21) = v21 + 1;
LABEL_23:
        result = get_next_indice(v12, (4 * v21));
        v22 = v70 + v13;
        if (v22 < v70 || v22 + 1 > v71 || v22 > v22 + 1)
        {
          goto LABEL_102;
        }

        *v22 = result;
        v8 -= 4 * *v16;
        goto LABEL_51;
      }

      v23 = v70 + v13;
      v26 = v23 + 1 <= v71 && v23 <= v23 + 1 && v23 >= v70;
      if (v21)
      {
        next_indice = get_next_indice(v12, 16);
        if (!v26)
        {
          goto LABEL_102;
        }

        *v23 = next_indice;
        v33 = v8 - 16;
        v34 = (*v16 / 2 - 2);
        v35 = v15;
        v36 = 8;
        do
        {
          result = get_next_indice(v12, v34);
          if (v35 < a2 || (v35 + 1) > a3 || v35 > v35 + 1)
          {
            goto LABEL_102;
          }

          *v35++ = result;
          --v36;
        }

        while (v36);
        v8 = v33 - 8 * v34;
      }

      else
      {
        v27 = get_next_indice(v12, 12);
        if (!v26)
        {
          goto LABEL_102;
        }

        v28 = 0;
        *v23 = v27;
        v29 = v8 - 12;
        v30 = (*v16 / 2 - 1);
        do
        {
          result = get_next_indice(v12, v30);
          v31 = &v15[v28];
          if (&v15[v28] < a2 || (v31 + 1) > a3 || v31 > v31 + 1)
          {
            goto LABEL_102;
          }

          *v31 = result;
          ++v28;
        }

        while (v28 != 8);
        v8 = v29 - 8 * v30;
      }
    }

LABEL_51:
    ++v13;
    v15 += 8;
    if (v13 == v14)
    {
      v37 = 0;
      v38 = a2;
      do
      {
        v39 = v67 + 4 * v37;
        v40 = v39 + 4;
        if (v39 < v67 || v40 > &v69 || v39 > v40)
        {
          goto LABEL_102;
        }

        v43 = v70 + v37;
        if (v43 < v70)
        {
          goto LABEL_102;
        }

        if (v43 + 1 > v71)
        {
          goto LABEL_102;
        }

        if (v43 > v43 + 1)
        {
          goto LABEL_102;
        }

        v44 = &a2[8 * v37];
        if (v44 < a2)
        {
          goto LABEL_102;
        }

        result = re8_dec(*(v67 + v37), *v43, v44, a3, v66, v67);
        v45 = v66;
        v46 = v38;
        v47 = 8;
        do
        {
          if (v46 < a2 || (v46 + 1) > a3 || v46 > v46 + 1)
          {
            goto LABEL_102;
          }

          v48 = *v45;
          v45 += 2;
          *v46++ = v48;
          --v47;
        }

        while (v47);
        ++v37;
        v38 += 8;
      }

      while (v37 != v14);
      *v63 = v8;
      v49 = v67;
      for (i = a6; ; ++i)
      {
        v51 = (v49 + 1);
        v52 = v49 < v67 || v51 > &v69;
        v53 = v52 || v49 > v51;
        v54 = i + 1;
        v55 = !v53 && i >= a6;
        v56 = !v55 || v54 > a7;
        if (v56 || i > v54)
        {
          break;
        }

        v58 = *v49++;
        *i = v58;
        if (!--v14)
        {
          return result;
        }
      }

      goto LABEL_102;
    }
  }

  *(v12 + 5168) = 1;
  if ((8 * v62) >= 1)
  {
    v59 = (8 * v62);
    v60 = a2;
    while (v60 >= a2 && (v60 + 1) <= a3 && v60 <= v60 + 1)
    {
      *v60++ = 0;
      if (!--v59)
      {
        goto LABEL_95;
      }
    }

LABEL_102:
    __break(0x5519u);
  }

LABEL_95:
  v61 = a6;
  do
  {
    if (v61 < a6 || (v61 + 1) > a7 || v61 > v61 + 1)
    {
      goto LABEL_102;
    }

    *v61++ = 0;
    --v14;
  }

  while (v14);
  LOWORD(v8) = 0;
  a4 = v63;
LABEL_101:
  *a4 = v8;
  return result;
}

unint64_t swb_hr_noise_fill(unint64_t result, int a2, int a3, _WORD *a4, unint64_t a5, int a6, __int16 *a7, float **a8, float a9, float a10)
{
  if (!result)
  {
    v23 = a3 - a2 + 7;
    if (a3 >= a2)
    {
      v23 = a3 - a2;
    }

    v24 = (a10 * 0.25) >= 100.0 && a9 <= 5.0;
    v25 = 100.0 / a10;
    if (!v24)
    {
      v25 = 0.25;
    }

    if ((a4 + 1) <= a5 && a4 + 1 >= a4)
    {
      a6 = v23 >> 3;
      if (*a4)
      {
        v26 = 0;
      }

      else
      {
        if (a3 - a2 >= 16)
        {
          v27 = 1;
          v28 = 1;
          while (1)
          {
            v29 = &a4[v28];
            v30 = v29 + 1;
            v31 = v29 < a4 || v30 > a5;
            if (v31 || v29 >= v30)
            {
              goto LABEL_177;
            }

            if (!*v29)
            {
              v27 = ++v28;
              if (a6 > v28)
              {
                continue;
              }
            }

            goto LABEL_48;
          }
        }

        v28 = 1;
        v27 = 1;
LABEL_48:
        v26 = v28;
        if (a6 > v28)
        {
          v26 = v28;
          while (1)
          {
            v33 = &a4[v26];
            v34 = v33 + 1;
            v35 = v33 < a4 || v34 > a5;
            if (v35 || v33 >= v34)
            {
              goto LABEL_177;
            }

            if (*v33)
            {
              if (a6 > ++v26)
              {
                continue;
              }
            }

            break;
          }
        }

        if ((v26 - 1) - v27 <= v27)
        {
          v37 = v26 - 1;
        }

        else
        {
          v37 = 2 * v28 - 1;
        }

        if (((v28 - 1) & 0x8000) == 0)
        {
          v38 = v28 - 1;
          v39 = a8[2];
          v40 = v37;
LABEL_64:
          v41 = 0;
          result = 32 * v40;
          while (1)
          {
            v42 = (*a8 + result + v41 * 4);
            v43 = v42 + 1 > a8[1] || v42 >= v42 + 1;
            if (v43 || v42 < v39)
            {
              goto LABEL_177;
            }

            v45 = *v42;
            v46 = 31821 * *a7 + 13849;
            *a7 = v46;
            v47 = &(*a8)[8 * v38 + v41];
            v48 = v47 + 1 > a8[1] || v47 >= v47 + 1;
            if (v48 || v47 < v39)
            {
              goto LABEL_177;
            }

            *v47 = ((v25 * v46) * 0.000030518) + (v45 * 0.25);
            if (++v41 == 8)
            {
              v50 = v40--;
              if (v50 < v28)
              {
                v40 = v37;
              }

              v51 = v38--;
              if (v51 > 0)
              {
                goto LABEL_64;
              }

              break;
            }
          }
        }
      }

      if (a6 > v26)
      {
        v52 = v26;
        do
        {
          v53 = &a4[v26];
          v54 = v53 + 1;
          v55 = v53 < a4 || v54 > a5;
          if (v55 || v53 >= v54)
          {
            goto LABEL_177;
          }

          if (*v53)
          {
            v57 = v26 + 1;
          }

          else
          {
            v57 = v26;
            if (a6 > v26)
            {
              v57 = v26;
              while (1)
              {
                v58 = &a4[v57];
                v59 = v58 + 1;
                v60 = v58 < a4 || v59 > a5;
                if (v60 || v58 >= v59)
                {
                  goto LABEL_177;
                }

                if (*v58)
                {
                  break;
                }

                if (a6 <= ++v57)
                {
                  v57 = v26;
                  break;
                }
              }
            }

            if (v26 == v57)
            {
              v57 = a6;
            }

            v62 = (v57 - 1);
            if (v62 >= v26)
            {
              v63 = v52 - 1;
              v64 = a8[2];
              LODWORD(result) = v63;
LABEL_112:
              v65 = 0;
              v66 = result << 16;
              result = 32 * result;
              while (1)
              {
                v67 = (*a8 + result + v65 * 4);
                v68 = v67 + 1 > a8[1] || v67 >= v67 + 1;
                if (v68 || v67 < v64)
                {
                  goto LABEL_177;
                }

                v70 = *v67;
                v71 = 31821 * *a7 + 13849;
                *a7 = v71;
                v72 = &(*a8)[8 * v62 + v65];
                v73 = v72 + 1 > a8[1] || v72 >= v72 + 1;
                if (v73 || v72 < v64)
                {
                  goto LABEL_177;
                }

                *v72 = ((v25 * v71) * 0.000030518) + (v70 * 0.25);
                if (++v65 == 8)
                {
                  if (v66)
                  {
                    result = ((v66 >> 16) - 1);
                  }

                  else
                  {
                    result = v63;
                  }

                  v62 = (v62 - 1);
                  if (v62 >= v26)
                  {
                    goto LABEL_112;
                  }

                  break;
                }
              }
            }
          }

          v52 = v57;
          v26 = v57;
        }

        while (a6 > v57);
      }

LABEL_135:
      if (a9 <= 5.0 || a6 < 1)
      {
        return result;
      }

      v76 = 0;
      v77 = *a8;
      v78 = a8[1];
      v79 = a8[2];
      v80 = *a8;
LABEL_140:
      v81 = &v77[8 * v76];
      v82 = 1.1755e-38;
      v83 = 3.4028e38;
      v84 = v80;
      result = 8;
      while (1)
      {
        v85 = (v84 + 1) > v78 || v84 >= v84 + 1;
        if (v85 || v84 < v79)
        {
          break;
        }

        if (*v84 != 0.0)
        {
          v87 = fabsf(*v84);
          if (v87 < v83)
          {
            v83 = v87;
          }

          if (v87 > v82)
          {
            v82 = v87;
          }
        }

        ++v84;
        if (!--result)
        {
          v88 = 0;
          v89 = v83 > 1.0 && v82 == v83;
          v90 = v83 * 0.5;
          if (!v89)
          {
            v90 = v83;
          }

          while (1)
          {
            result = (v81 + 1);
            v91 = (v81 + 1) > v78 || v81 >= result;
            if (v91 || v81 < v79)
            {
              goto LABEL_177;
            }

            if (*v81 == 0.0)
            {
              v93 = (31821 * *a7 + 13849);
              *a7 = 31821 * *a7 + 13849;
              if (v93 <= 0)
              {
                v94 = -0.5;
              }

              else
              {
                v94 = 0.5;
              }

              *v81 = v90 * v94;
            }

            ++v81;
            v15 = v88++ >= 7;
            if (v15)
            {
              ++v76;
              v80 += 8;
              if (v76 != a6)
              {
                goto LABEL_140;
              }

              return result;
            }
          }
        }
      }
    }

LABEL_177:
    __break(0x5519u);
    return result;
  }

  if (a6 >= 1)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = &a4[v11];
      v13 = v12 + 1;
      v14 = v12 < a4 || v13 > a5;
      v15 = v14 || v12 >= v13;
      if (v15)
      {
        goto LABEL_177;
      }

      if (!*v12)
      {
        v16 = a8[2];
        v17 = *a7;
        v18 = v10;
        v19 = 8;
        do
        {
          v17 = 31821 * v17 + 13849;
          *a7 = v17;
          result = a8[1];
          v20 = (*a8 + v18);
          v21 = (v20 + 1) > result || v20 >= v20 + 1;
          if (v21 || v20 < v16)
          {
            goto LABEL_177;
          }

          result = v17;
          *v20 = vcvts_n_f32_s32(result, 0x10uLL);
          v18 += 4;
        }

        while (--v19);
      }

      ++v11;
      v10 += 32;
      if (v11 == a6)
      {
        goto LABEL_135;
      }
    }
  }

  return result;
}

void inverse_transform(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  *v121 = *MEMORY[0x1E69E9840];
  memset(v120, 255, sizeof(v120));
  memset(__b, 255, sizeof(__b));
  memset(__dst, 255, sizeof(__dst));
  v115 = v5;
  if (!v7)
  {
    if (v9 < v11 || v13 < v14 || v5 < 0 || (v9 - v11) >> 2 < v5 || v5 > (v13 - v14) >> 2)
    {
      goto LABEL_190;
    }

    edct(v14);
    return;
  }

  v113 = v11;
  v111 = v9;
  switch(v5)
  {
    case 320:
      v15 = &short_window_16kHz;
      v16 = &short_window_8kHz;
      break;
    case 960:
      v15 = &short_window_48kHz;
      v16 = &short_window_32kHz;
      break;
    case 640:
      v15 = &short_window_32kHz;
      v16 = &short_window_16kHz;
      break;
    default:
      v15 = &short_window_8kHz;
      v16 = msQeqInvAv_thresh;
      break;
  }

  __A = 0.0;
  vDSP_vfill(&__A, v120, 1, v5);
  if (v5 == v3)
  {
    if (v5 >= 1)
    {
      v17 = v13 - v14;
      if (v13 < v14)
      {
        goto LABEL_190;
      }

      v18 = 4 * v5;
      if (v18 > v17)
      {
        goto LABEL_190;
      }

      if (v5 >= 0x3C1)
      {
        goto LABEL_190;
      }

      memmove(__dst, v14, 4 * v5);
      if (&__dst[v18 / 4] < __dst)
      {
        goto LABEL_190;
      }

      v19 = v5 >> 3;
      goto LABEL_72;
    }
  }

  else
  {
    v20 = 0;
    if (v5 <= v3)
    {
      v31 = v14;
      v32 = __dst;
      do
      {
        if (v5 < 4)
        {
          v35 = v32;
          v34 = v31;
        }

        else
        {
          v33 = 0;
          do
          {
            if (v31 < v14)
            {
              goto LABEL_190;
            }

            v34 = v31 + 1;
            if ((v31 + 1) > v13)
            {
              goto LABEL_190;
            }

            if (v31 > v34)
            {
              goto LABEL_190;
            }

            if (v32 < __dst)
            {
              goto LABEL_190;
            }

            v35 = v32 + 1;
            if (v32 + 1 > __b || v32 > v35)
            {
              goto LABEL_190;
            }

            *v32 = *v31;
            ++v33;
            ++v31;
            ++v32;
          }

          while (((v5 + ((v5 >> 29) & 3)) << 16) >> 18 > v33);
        }

        v31 = &v34[(v3 - v5) >> 2];
        v32 = v35;
        v47 = v20++ >= 3;
      }

      while (!v47);
    }

    else
    {
      v21 = v5 - v3 + 3;
      if (v5 >= v3)
      {
        v21 = v5 - v3;
      }

      v22 = v21 >> 2;
      v23 = v14;
      v24 = __dst;
      do
      {
        if (v3 < 4)
        {
          v27 = v24;
        }

        else
        {
          v25 = 0;
          v26 = v23;
          do
          {
            if (v26 < v14)
            {
              goto LABEL_190;
            }

            v23 = v26 + 1;
            if ((v26 + 1) > v13)
            {
              goto LABEL_190;
            }

            if (v26 > v23)
            {
              goto LABEL_190;
            }

            if (v24 < __dst)
            {
              goto LABEL_190;
            }

            v27 = v24 + 1;
            if (v24 + 1 > __b || v24 > v27)
            {
              goto LABEL_190;
            }

            *v24 = *v26;
            ++v25;
            ++v26;
            ++v24;
          }

          while (((v3 + ((v3 >> 29) & 3)) << 16) >> 18 > v25);
        }

        if (v5 - v3 < 4)
        {
          v24 = v27;
        }

        else
        {
          v28 = 0;
          do
          {
            v24 = v27 + 1;
            v29 = v27 < __dst || v24 > __b;
            if (v29 || v27 > v24)
            {
              goto LABEL_190;
            }

            *v27 = 0.0;
            ++v28;
            ++v27;
          }

          while (v22 > v28);
        }

        v47 = v20++ >= 3;
      }

      while (!v47);
    }
  }

  v36 = v5 + 7;
  if (v5 >= 0)
  {
    v36 = v5;
  }

  if ((v5 + 1) > 0x3C2)
  {
    goto LABEL_190;
  }

  v19 = v36 >> 3;
LABEL_72:
  v37 = (v5 + ((v5 & 0x8000) >> 15)) << 16 >> 17;
  v38 = &v120[-v19];
  iedct_short(__dst, __b, __b, v37);
  v116 = v37;
  v39 = v37 >> 1;
  if (v39 > v19)
  {
    do
    {
      v40 = v19;
      v41 = &__b[v19];
      v42 = v41 + 1;
      v44 = v41 < __b || v42 > v120 || v41 > v42;
      v45 = &v38[v19];
      v46 = v45 + 1;
      v47 = !v44 && v45 >= v120;
      if (!v47 || v46 > v121 || v45 > v46)
      {
        goto LABEL_190;
      }

      *v45 = __b[v19];
      LOWORD(v19) = v19 + 1;
    }

    while (v39 > (v40 + 1));
  }

  v110 = (v5 + ((v5 & 0x8000) >> 15)) << 16 >> 18;
  if (v5 >= 2)
  {
    v50 = ((v5 + ((v5 & 0x8000) >> 15)) >> 2);
    v51 = ((v5 + ((v5 & 0x8000) >> 15)) >> 2) + 1;
    v52 = v38;
    v53 = v15;
    v54 = __b;
    do
    {
      v55 = &v54[v50];
      if (&v54[v50] < __b)
      {
        goto LABEL_190;
      }

      v56 = v55 + 1 > v120 || v55 > v55 + 1;
      v57 = &v53[v50];
      v58 = &v53[v50 + 1];
      v59 = !v56 && v57 >= v15;
      v60 = !v59 || v58 > v16;
      v61 = v60 || v57 > v58;
      v62 = &v52[v50];
      v63 = &v52[v50 + 1];
      v64 = !v61 && v62 >= v120;
      v65 = !v64 || v63 > v121;
      if (v65 || v62 > v63)
      {
        goto LABEL_190;
      }

      *v62 = *v55 * *v57;
      ++v54;
      ++v53;
      ++v52;
      v29 = v37 <= v51++;
    }

    while (!v29);
  }

  v67 = &__dst[v39];
  v112 = v39;
  v68 = 1;
  v69 = &v38[v112];
  v114 = v39;
  do
  {
    if (v67 < __dst)
    {
      goto LABEL_190;
    }

    iedct_short(v67, __b, __b, v116);
    if (v115 >= 2)
    {
      v70 = 0;
      v71 = v116;
      while (1)
      {
        v72 = &v69[v70];
        if (&v69[v70] < v120)
        {
          break;
        }

        if (v72 + 1 > v121 || v72 > v72 + 1)
        {
          break;
        }

        v74 = &__b[v70];
        if (&__b[v70] < __b)
        {
          break;
        }

        if (v74 + 1 > v120)
        {
          break;
        }

        if (v74 > v74 + 1)
        {
          break;
        }

        v75 = &v15[v70];
        if (&v15[v70] < v15 || v75 + 1 > v16 || v75 > v75 + 1)
        {
          break;
        }

        *v72 = *v72 + (__b[v70++] * *v75);
        if (!--v71)
        {
          goto LABEL_133;
        }
      }

LABEL_190:
      __break(0x5519u);
    }

LABEL_133:
    v67 += 4 * v114;
    v69 = (v69 + v112 * 4);
    v47 = v68++ >= 2;
  }

  while (!v47);
  if (v67 < __dst)
  {
    goto LABEL_190;
  }

  iedct_short(v67, __b, __b, v116);
  if (v116 >= 2)
  {
    v76 = 0;
    do
    {
      v77 = &v69[v76];
      v78 = v77 + 1;
      v79 = v77 < v120 || v78 > v121;
      if (v79 || v77 > v78)
      {
        goto LABEL_190;
      }

      v81 = &__b[v76];
      if (v81 < __b)
      {
        goto LABEL_190;
      }

      if (v81 + 1 > v120)
      {
        goto LABEL_190;
      }

      if (v81 > v81 + 1)
      {
        goto LABEL_190;
      }

      v82 = &v15[v76];
      if (v82 < v15 || v82 + 1 > v16 || v82 > v82 + 1)
      {
        goto LABEL_190;
      }

      *v77 = *v77 + (__b[v76++] * *v82);
    }

    while (v114 > v76);
  }

  v83 = (3 * v116) >> 2;
  v84 = v116 >> 1;
  if (v83 > v110)
  {
    do
    {
      v85 = v84;
      v86 = &__b[v84];
      v87 = v86 + 1;
      v88 = v86 < __b || v87 > v120;
      v89 = v88 || v86 > v87;
      v90 = &v69[v85];
      v91 = v90 + 1;
      v92 = !v89 && v90 >= v120;
      v93 = !v92 || v91 > v121;
      if (v93 || v90 > v91)
      {
        goto LABEL_190;
      }

      *v90 = __b[v85];
      v84 = v85 + 1;
    }

    while (v83 > (v85 + 1));
  }

  if (v115 >= 2)
  {
    v95 = 0;
    v96 = v116;
    v97 = v115;
    v98 = v113;
    v99 = v120;
    while (1)
    {
      v100 = &v120[v95];
      v101 = &v120[v95 + 1];
      v102 = &v120[v95] < v120 || v101 > v121;
      if (v102 || v100 > v101)
      {
        break;
      }

      v104 = &v99[v97];
      v105 = &v99[v97 - 1];
      if (v105 < v120)
      {
        break;
      }

      if (v104 > v121)
      {
        break;
      }

      if (v105 > v104)
      {
        break;
      }

      v106 = (v113 + v95 * 4);
      if (v113 + v95 * 4 < v113)
      {
        break;
      }

      if ((v106 + 1) > v111)
      {
        break;
      }

      if (v106 > v106 + 1)
      {
        break;
      }

      v107 = *v100;
      *v106 = *v105;
      v108 = v98 + v97 * 4;
      v109 = (v98 + v97 * 4 - 4);
      if (v109 < v113 || v108 > v111 || v109 > v108)
      {
        break;
      }

      *v109 = v107;
      --v99;
      v98 -= 4;
      ++v95;
      if (!--v96)
      {
        return;
      }
    }

    goto LABEL_190;
  }
}

float iedct_short(unint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v8 = a2 - a1;
  if (a2 < a1)
  {
    goto LABEL_40;
  }

  if ((a4 - 962) <= 0xFC3Cu)
  {
    goto LABEL_40;
  }

  v9 = (a4 + ((a4 & 0x8000) >> 15)) << 16 >> 17;
  if (v9 > v8 >> 2)
  {
    goto LABEL_40;
  }

  result = edct(a1);
  if (a4 >= 4)
  {
    v11 = 0;
    v12 = 0;
    v13 = ((a4 + ((a4 >> 29) & 3)) << 16) >> 18;
    v14 = a3 + 4 * a4;
    v15 = a3 + ((3 * a4) & 0x3FFFC);
    v16 = v13;
    v17 = v9;
    v18 = &__b[v13];
    v19 = __b;
    v20 = a3 + 4 * v13;
    while (1)
    {
      v21 = &v18[v11 / 4];
      if (&v18[v11 / 4] < __b)
      {
        break;
      }

      v22 = v21 + 1 > &v37 || v21 > v21 + 1;
      v23 = (a3 + 4 * v12);
      v24 = v23 + 1;
      v25 = !v22 && v23 >= a3;
      v26 = !v25 || v24 > v14;
      if (v26 || v23 > v24)
      {
        break;
      }

      *v23 = *v21;
      v28 = &v19[v17];
      v29 = &v19[v17 - 1];
      if (v29 < __b)
      {
        break;
      }

      if (v28 > &v37)
      {
        break;
      }

      if (v29 > v28)
      {
        break;
      }

      v30 = (v20 + v11);
      if (v20 + v11 < a3)
      {
        break;
      }

      if ((v30 + 1) > v14)
      {
        break;
      }

      if (v30 > v30 + 1)
      {
        break;
      }

      *v30 = -*v29;
      v31 = &v19[v16];
      v32 = &v19[v16 - 1];
      if (v32 < __b)
      {
        break;
      }

      if (v31 > &v37)
      {
        break;
      }

      if (v32 > v31)
      {
        break;
      }

      v33 = (a3 + 4 * v9);
      if (v33 < a3)
      {
        break;
      }

      if ((v33 + 1) > v14)
      {
        break;
      }

      if (v33 > v33 + 1)
      {
        break;
      }

      *v33 = -*v32;
      v34 = &__b[v12];
      if (v34 < __b)
      {
        break;
      }

      if (v34 + 1 > &v37)
      {
        break;
      }

      if (v34 > v34 + 1)
      {
        break;
      }

      v35 = (v15 + v11);
      if (v15 + v11 < a3 || (v35 + 1) > v14 || v35 > v35 + 1)
      {
        break;
      }

      result = -__b[v12];
      *v35 = result;
      ++v12;
      v11 += 4;
      ++v9;
      --v19;
      if (v13 <= v12)
      {
        return result;
      }
    }

LABEL_40:
    __break(0x5519u);
  }

  return result;
}

uint64_t swb_bwe_gain_deq(uint64_t a1, int a2, float *a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8)
{
  v109 = *MEMORY[0x1E69E9840];
  v108 = -1431655766;
  v107 = 0xAAAAAAAAAAAAAAAALL;
  memset(v106, 255, 28);
  memset(v105, 255, 28);
  v104 = -21846;
  if (a8 < 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
    if (get_next_indice(a1, 1))
    {
      LOWORD(next_indice) = 2;
      goto LABEL_48;
    }
  }

  next_indice = get_next_indice(a1, v16);
  if (!a2 && next_indice == 1)
  {
    for (i = 0; i != 4; ++i)
    {
      v19 = get_next_indice(a1, 4);
      v20 = &a3[i];
      if (&a3[i] < a3 || (v20 + 1) > a4 || v20 > v20 + 1)
      {
        goto LABEL_148;
      }

      *v20 = (1 << v19);
    }

    v21 = get_next_indice(a1, 7);
    v22 = get_next_indice(a1, 6);
    v23 = 0;
    v24 = &Env_TR_Cdbk1[8 * v21];
    do
    {
      v25 = v24 + 4;
      if (v24 < Env_TR_Cdbk1 || v25 > Env_TR_Cdbk2 || v24 > v25)
      {
        goto LABEL_148;
      }

      v28 = *v24;
      v24 += 4;
      *(v106 + v23) = v28;
      v23 += 8;
    }

    while (v23 != 16);
    v29 = &Env_TR_Cdbk2[2 * v22];
    if (v29 >= Env_TR_Cdbk2 && v29 + 1 <= Mean_env_tr && v29 <= v29 + 1)
    {
      *(v106 + 1) = *v29 + ((*(v106 + 2) + *v106) * 0.5);
      v30 = &Env_TR_Cdbk2[2 * v22];
      v31 = v30 + 1;
      if (v30 + 1 >= Env_TR_Cdbk2 && v30 + 2 <= Mean_env_tr && v31 <= v30 + 2)
      {
        v32 = 0;
        *(v106 + 3) = *(v106 + 2) + *v31;
        do
        {
          v33 = (a5 + v32);
          v34 = a5 + v32 + 4;
          if (a5 + v32 < a5 || v34 > a6 || v33 > v34)
          {
            goto LABEL_148;
          }

          v37 = __exp10(((*(v106 + v32) + *&Mean_env_tr[v32 / 4]) * 0.025));
          *v33 = v37;
          v32 += 4;
        }

        while (v32 != 16);
        if (*(a1 + 72398) < 1)
        {
          return 1;
        }

        v38 = *(a1 + 72398) / 20.0;
        v39 = 4;
        v40 = a3;
        do
        {
          if (v40 < a3 || (v40 + 1) > a4 || v40 > v40 + 1)
          {
            goto LABEL_148;
          }

          *v40 = v38 * *v40;
          ++v40;
          --v39;
        }

        while (v39);
        v41 = 4;
        for (j = a5; j >= a5 && (j + 1) <= a6 && j <= j + 1; ++j)
        {
          *j = v38 * *j;
          if (!--v41)
          {
            return 1;
          }
        }
      }
    }

    goto LABEL_148;
  }

LABEL_48:
  v99 = next_indice;
  v44 = 0;
  v45 = &v105[3];
  v102 = 0x5000600070005;
  if (a7 == 1)
  {
    v46 = 5;
  }

  else
  {
    v46 = 6;
  }

  v103 = v46;
  do
  {
    *(&v107 + v44) = get_next_indice(a1, *(&v102 + v44));
    v44 += 2;
  }

  while (v44 != 10);
  if (a7 == 1)
  {
    v47 = 12;
  }

  else
  {
    v47 = 14;
  }

  v100 = a8;
  if (a8 == 5)
  {
    HIWORD(v108) = get_next_indice(a1, 5);
  }

  v48 = 7 * v107;
  v49 = &EnvCdbk11[v48];
  if (&EnvCdbk11[v48] < EnvCdbk11)
  {
    goto LABEL_148;
  }

  v50 = v48 * 4 - 869;
  if (v49 > EnvCdbk1st || v50 <= 0x1B)
  {
    goto LABEL_148;
  }

  v106[0] = *v49;
  *(v106 + 12) = *(v49 + 3);
  v52 = &EnvCdbk1st[3 * SWORD1(v107)];
  if (v52 < EnvCdbk1st)
  {
    goto LABEL_148;
  }

  if (v52 > EnvCdbk2nd)
  {
    goto LABEL_148;
  }

  if ((12 * SWORD1(v107) - 1525) <= 0xB)
  {
    goto LABEL_148;
  }

  v105[0] = *v52;
  *&v105[1] = v52[2];
  v53 = &EnvCdbk2nd[4 * SWORD2(v107)];
  if (v53 < EnvCdbk2nd || v53 > EnvCdbk3rd || WORD2(v107) == 64)
  {
    goto LABEL_148;
  }

  v54 = 0;
  *(&v105[1] + 4) = *v53;
  v55 = a5;
  do
  {
    v56 = *(v105 + v54) + *(v106 + v54);
    *(v106 + v54) = v56;
    if (v55 < a5 || (v55 + 1) > a6 || v55 > v55 + 1)
    {
      goto LABEL_148;
    }

    *v55 = v56;
    v55 += 2;
    v54 += 4;
  }

  while (v54 != 24);
  v57 = *&v105[3] + *(&v106[1] + 2);
  *(&v106[1] + 2) = *&v105[3] + *(&v106[1] + 2);
  if (a7 != 1)
  {
    v65 = (a5 + 48);
    if (a5 + 48 >= a5)
    {
      v64 = (a5 + 52);
      if (a5 + 52 <= a6 && v65 <= v64)
      {
        *v65 = v57;
        v66 = &EnvCdbk3rd[3 * SHIWORD(v107)];
        if (v66 >= EnvCdbk3rd && v66 <= EnvCdbk4th && (12 * SHIWORD(v107) - 373) > 0xB)
        {
          v105[0] = *v66;
          *&v105[1] = v66[2];
          v67 = &EnvCdbk4th[4 * v108];
          if (v67 >= EnvCdbk4th && v67 <= &Mean_env && v108 != 64)
          {
            v68 = 0;
            *(&v105[1] + 4) = *v67;
            v69 = v106 + 1;
            v70 = v105;
            do
            {
              if (a5 + v68 + 8 > a6)
              {
                goto LABEL_148;
              }

              v71 = *v70++;
              *(a5 + v68 + 4) = v71 + ((*(v69 - 1) + *v69) * 0.5);
              v68 += 8;
              ++v69;
            }

            while (v68 != 48);
            if (v64 >= a5 && a5 + 56 <= a6 && v64 <= a5 + 56)
            {
              goto LABEL_105;
            }
          }
        }
      }
    }

LABEL_148:
    __break(0x5519u);
  }

  v58 = (a5 + 44);
  if (a5 + 44 < a5)
  {
    goto LABEL_148;
  }

  if (a5 + 48 > a6)
  {
    goto LABEL_148;
  }

  if (v58 > a5 + 48)
  {
    goto LABEL_148;
  }

  *v58 = v57;
  v59 = &EnvCdbk3rd[3 * SHIWORD(v107)];
  if (v59 < EnvCdbk3rd)
  {
    goto LABEL_148;
  }

  if (v59 > EnvCdbk4th)
  {
    goto LABEL_148;
  }

  if ((12 * SHIWORD(v107) - 373) <= 0xB)
  {
    goto LABEL_148;
  }

  v105[0] = *v59;
  *&v105[1] = v59[2];
  v60 = &EnvCdbk3rd[3 * v108];
  if (v60 < EnvCdbk3rd || v60 > EnvCdbk4th || (12 * v108 - 373) <= 0xB)
  {
    goto LABEL_148;
  }

  v61 = 0;
  *(&v105[1] + 4) = *v60;
  *(&v105[2] + 1) = v60[2];
  v62 = v106 + 1;
  v63 = 4;
  do
  {
    if (a5 + v61 + 8 > a6)
    {
      goto LABEL_148;
    }

    *(a5 + v61 + 4) = *(v105 + v63) + ((*(v62 - 1) + *v62) * 0.5);
    v61 += 8;
    ++v62;
    v63 += 4;
  }

  while (v61 != 40);
  if (a5 + 4 > a6)
  {
    goto LABEL_148;
  }

  v57 = *v105;
  v45 = a5;
  v64 = a5;
LABEL_105:
  *v64 = v57 + *v45;
  v72 = a5;
  v73 = &Mean_env;
  v74 = v47;
  do
  {
    if (v72 < a5 || (v72 + 1) > a6 || v72 > v72 + 1 || v73 < &Mean_env || v73 + 1 > EnvCdbkFB || v73 > v73 + 1)
    {
      goto LABEL_148;
    }

    v75.i32[0] = *v73;
    v75.i32[1] = *v72;
    v76 = vcvt_n_s32_f32(v75, 8uLL);
    v77 = v76.i16[0] + v76.i16[2];
    v78 = 1426740714;
    if (v77 < 0x8000 && ((v78 = -1426784256, v77 < -32768) || (v78 = 43542 * v77, (v77 & 0x8000) != 0)))
    {
      v79 = v78 >> 10;
    }

    else
    {
      v79 = v78 >> 10;
    }

    v80 = Pow2_11469(13, v79 >> 1, &v101);
    *v72++ = vcvts_n_f32_s32(shl(v80, (HIWORD(v79) - 12), &v101), 1uLL);
    ++v73;
    --v74;
  }

  while (v74);
  if (v100 == 5)
  {
    v81 = &EnvCdbkFB[3 * SHIWORD(v108)];
    if (v81 >= EnvCdbkFB)
    {
      v82 = a5 + 4 * v47;
      if (v82 >= a5 && a6 >= v82 && v81 <= Mean_env_fb && (12 * SHIWORD(v108) - 373) >= 0xC && a6 - v82 > 0xB)
      {
        *v82 = *v81;
        *(v82 + 8) = v81[2];
        if (v82 + 12 >= v82)
        {
          v83 = 0;
          for (k = 0; ; k += 0x10000)
          {
            v85 = (v82 + v83 * 4);
            v86 = v82 + v83 * 4 + 4;
            v87 = v82 + v83 * 4 < a5 || v86 > a6;
            if (v87 || v85 > v86)
            {
              break;
            }

            v89.i32[0] = Mean_env_fb[v83];
            v89.i32[1] = *v85;
            v90 = vcvt_n_s32_f32(v89, 7uLL);
            v91 = v90.i16[0] + v90.i16[2];
            v92 = 1426740714;
            if (v91 < 0x8000 && ((v92 = -1426784256, v91 < -32768) || (v92 = 43542 * v91, (v91 & 0x8000) != 0)))
            {
              v93 = v92 >> 9;
            }

            else
            {
              v93 = v92 >> 9;
            }

            v94 = Pow2_11469(13, v93 >> 1, &v101);
            v95 = shl(v94, (HIWORD(v93) - 12), &v101);
            v96 = v47 + (k >> 16) < 0x8000 ? (v47 + HIWORD(k)) : 0x7FFFLL;
            v97 = (a5 + 4 * v96);
            if (v97 < a5 || (v97 + 1) > a6 || v97 > v97 + 1)
            {
              break;
            }

            *v97 = vcvts_n_f32_s32(v95, 1uLL);
            if (++v83 == 3)
            {
              return v99;
            }
          }
        }
      }
    }

    goto LABEL_148;
  }

  return v99;
}

float *SWB_BWE_decoding(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, int a5, _WORD *a6, float *a7, unint64_t a8, float a9, __int16 *a10, __int16 *a11, unsigned __int16 a12, float *a13, __int16 a14, __int16 a15)
{
  v291[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(v289, 170, sizeof(v289));
  v21 = a12 + 224;
  v22 = 1.0e-15;
  do
  {
    v23 = (a1 + 4 * v21);
    v24 = v23 + 1;
    if (v23 < a1 || v24 > a2 || v23 > v24)
    {
      goto LABEL_482;
    }

    v22 = v22 + (*v23 * *v23);
    ++v21;
  }

  while (a12 + 240 > v21);
  v27 = 0;
  v28 = v22 * 0.0625;
  v29 = 1.0e-15;
  do
  {
    v30 = (a1 + v27 + 64);
    v31 = a1 + v27 + 68;
    if (v30 < a1 || v31 > a2 || v30 > v31)
    {
      goto LABEL_482;
    }

    v29 = v29 + (*v30 * *v30);
    v27 += 4;
  }

  while (v27 != 960);
  v34 = a3 + 56;
  v35 = *a3;
  v288 = -21846;
  v36 = sqrtf(v28);
  if (v36 <= (v35 * 8.0))
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  result = calc_normal_length(0, a1, a2, a5, a14, &v288, a10);
  if (a5 != 1)
  {
    v89 = 0;
    v90 = sqrtf(v29 / 240.0);
    v91 = 1.0e-15;
    do
    {
      v91 = v91 + *(a3 + v89);
      v89 += 4;
    }

    while (v89 != 56);
    v54 = v91 / 14.0;
    if (a15 != 9 && a15 != 12)
    {
      if (a14 == 12 && (v54 * 16.0) < v90)
      {
        for (i = 0; i != 56; i += 4)
        {
          *(a3 + i) = *(a3 + i) * 0.2;
        }

        v37 = v37 * 0.2;
      }

      if (v34 < a3)
      {
        goto LABEL_482;
      }

      v93 = *a3;
      v94 = *(a3 + 16);
      v95 = *(a3 + 32);
      *(a8 + 48) = *(a3 + 48);
      *(a8 + 16) = v94;
      *(a8 + 32) = v95;
      *a8 = v93;
      if (a8 + 56 < a8)
      {
        goto LABEL_482;
      }
    }

    if (a5 == 3)
    {
      v96 = *a4 + 4 * a12;
      v97 = v96 + 960;
      if (v96 + 960 < a4[2])
      {
        goto LABEL_482;
      }

      v98 = a4[1];
      v63 = v98 >= v97;
      v99 = v98 - v97;
      if (!v63)
      {
        goto LABEL_482;
      }

      if (a2 < a1)
      {
        goto LABEL_482;
      }

      if (a2 - a1 < 0x3C0)
      {
        goto LABEL_482;
      }

      if (v99 <= 0x3BF)
      {
        goto LABEL_482;
      }

      memmove((v96 + 960), a1, 0x3C0uLL);
      if (v96 + 1920 < v97)
      {
        goto LABEL_482;
      }

      v100 = (a1 + 512);
      if (a1 + 512 < a1)
      {
        goto LABEL_482;
      }

      v101 = *a4 + 4 * a12;
      v102 = v101 + 1920;
      if (v101 + 1920 < a4[2])
      {
        goto LABEL_482;
      }

      v103 = a4[1];
      v63 = v103 >= v102;
      v104 = v103 - v102;
      if (!v63)
      {
        goto LABEL_482;
      }

      if (a2 < v100)
      {
        goto LABEL_482;
      }

      if (a2 - v100 < 0x140)
      {
        goto LABEL_482;
      }

      if (v104 <= 0x13F)
      {
        goto LABEL_482;
      }

      memmove((v101 + 1920), v100, 0x140uLL);
      if (v101 + 2240 < v102)
      {
        goto LABEL_482;
      }

      v105 = *a4;
      v106 = a4[2];
      goto LABEL_133;
    }

    if (!a5)
    {
      goto LABEL_141;
    }

    if (v54 > v90)
    {
      goto LABEL_137;
    }

    if (a9 <= 7.0)
    {
      if (a9 > 12.0)
      {
LABEL_137:
        if (v54 > 75.0 && v37 > 25.0)
        {
LABEL_141:
          v110 = a12 + 240;
          v111 = a4[2];
          v112 = *a11;
          do
          {
            v112 = 12345 * v112 + 20101;
            *a11 = v112;
            v113 = (*a4 + 4 * v110);
            if ((v113 + 1) > a4[1] || v113 > v113 + 1 || v113 < v111)
            {
              goto LABEL_482;
            }

            *v113 = vcvts_n_f32_s32(v112, 0xFuLL);
            ++v110;
          }

          while (a12 + 560 > v110);
          v108 = a5;
          if (a5)
          {
            *a6 = 1;
            v107 = v288;
            goto LABEL_153;
          }

          v107 = v288;
          goto LABEL_224;
        }
      }
    }

    else if (a9 > 12.0 || v54 > (v90 * 0.5))
    {
      goto LABEL_137;
    }

    v224 = 0;
    v225 = a3;
    while (1)
    {
      v226 = *v225;
      v227 = v225[1];
      if ((*v225 * 0.9) > v227)
      {
        break;
      }

      v228 = v225;
      if ((v227 * 0.9) > v226)
      {
        goto LABEL_369;
      }

LABEL_370:
      ++v224;
      ++v225;
      if (v224 == 13)
      {
        v229 = a1 + 448;
        if (a1 + 448 < a1)
        {
          goto LABEL_482;
        }

        v230 = *a4 + 4 * a12;
        v231 = v230 + 960;
        if (v230 + 960 < a4[2])
        {
          goto LABEL_482;
        }

        v232 = a4[1];
        v63 = v232 >= v231;
        v233 = v232 - v231;
        if (!v63 || a2 < v229)
        {
          goto LABEL_482;
        }

        if (a2 - v229 < 0x200)
        {
          goto LABEL_482;
        }

        if (v233 <= 0x1FF)
        {
          goto LABEL_482;
        }

        memmove((v230 + 960), (a1 + 448), 0x200uLL);
        if (v230 + 1472 < v231)
        {
          goto LABEL_482;
        }

        v235 = (a12 + 368);
        v236 = *a4 + 4 * v235;
        if (v236 < a4[2])
        {
          goto LABEL_482;
        }

        v237 = a4[1];
        v63 = v237 >= v236;
        v238 = v237 - v236;
        if (!v63)
        {
          goto LABEL_482;
        }

        if (v238 <= 0x1FF)
        {
          goto LABEL_482;
        }

        memmove((*a4 + 4 * v235), (a1 + 448), 0x200uLL);
        if (v236 + 512 < v236)
        {
          goto LABEL_482;
        }

        v239 = (a1 + 704);
        if (a1 + 704 < a1)
        {
          goto LABEL_482;
        }

        v240 = (a12 + 496);
        v241 = *a4 + 4 * v240;
        if (v241 < a4[2])
        {
          goto LABEL_482;
        }

        v242 = a4[1];
        v63 = v242 >= v241;
        v243 = v242 - v241;
        if (!v63)
        {
          goto LABEL_482;
        }

        if (a2 < v239)
        {
          goto LABEL_482;
        }

        if (a2 - v239 < 0x100)
        {
          goto LABEL_482;
        }

        if (v243 <= 0xFF)
        {
          goto LABEL_482;
        }

        memmove((*a4 + 4 * v240), v239, 0x100uLL);
        if (v241 + 256 < v241)
        {
          goto LABEL_482;
        }

        v105 = *a4;
        v244 = a4[1];
        v245 = (*a4 + 4 * v235);
        if ((v245 + 1) > v244)
        {
          goto LABEL_482;
        }

        if (v245 > v245 + 1)
        {
          goto LABEL_482;
        }

        v106 = a4[2];
        if (v245 < v106)
        {
          goto LABEL_482;
        }

        v246 = (v105 + 4 * a12);
        if ((v246 + 370) > v244)
        {
          goto LABEL_482;
        }

        if (v246 + 369 > v246 + 370)
        {
          goto LABEL_482;
        }

        if ((v246 + 369) < v106)
        {
          goto LABEL_482;
        }

        v247 = v246 + 366;
        if ((v246 + 366) > v244)
        {
          goto LABEL_482;
        }

        v248 = v246 + 365;
        if (v246 + 365 > v247 || v248 < v106 || (v246 + 367) > v244 || v247 > v246 + 367)
        {
          goto LABEL_482;
        }

        v249 = (fabsf(*v245) + fabsf(v246[369])) + 1.0e-15;
        v250 = (fabsf(*v248) + fabsf(*v247)) + 1.0e-15;
        v251 = v250 / v249;
        v252 = 0.3;
        if ((v250 / v249) < 0.3)
        {
          v251 = 0.3;
        }

        if (v251 < 1.0)
        {
          do
          {
            if ((v245 + 1) > v244 || v245 > v245 + 1 || v245 < v106)
            {
              goto LABEL_482;
            }

            *v245 = v251 * *v245;
            v251 = v251 + 0.1;
            ++v245;
          }

          while (v251 < 1.0);
          v105 = *a4;
          v244 = a4[1];
        }

        v255 = v249 / v250;
        v256 = 5.0;
        if (v255 > 5.0)
        {
          v257 = (v105 + 4 * a12 + 1468);
          do
          {
            if ((v257 + 1) > v244 || v257 > v257 + 1 || v257 < v106)
            {
              goto LABEL_482;
            }

            *v257 = v256 * *v257;
            --v257;
            v256 = v256 + -0.5;
          }

          while (v256 > 1.0);
          v105 = *a4;
          v244 = a4[1];
        }

        v260 = (v105 + 4 * v240);
        v262 = (v260 + 1) <= v244 && v260 <= v260 + 1 && v260 >= v106;
        v263 = (v105 + 4 * a12);
        v264 = &v263[248] + 4;
        v265 = &v263[249];
        if (!v262 || v265 > v244 || v264 > v265 || v264 < v106)
        {
          goto LABEL_482;
        }

        v269 = &v263[246] + 4;
        if (&v263[246] + 4 > v244)
        {
          goto LABEL_482;
        }

        v270 = v263 + 246;
        if (&v263[246] > v269)
        {
          goto LABEL_482;
        }

        if (v270 < v106)
        {
          goto LABEL_482;
        }

        v271 = &v263[247];
        if (&v263[247] > v244)
        {
          goto LABEL_482;
        }

        if (v269 > v271)
        {
          goto LABEL_482;
        }

        if (&v263[247] + 4 > v244)
        {
          goto LABEL_482;
        }

        if (v271 > &v263[247] + 1)
        {
          goto LABEL_482;
        }

        v272 = (a12 + 495);
        v273 = (v105 + 4 * v272);
        if ((v273 + 1) > v244 || v273 > v273 + 1 || v273 < v106)
        {
          goto LABEL_482;
        }

        v274 = (fabsf(*v260) + fabsf(v263[248].f32[1])) + 1.0e-15;
        v275 = vaddvq_f64(vcvtq_f64_f32(vabs_f32(*v270))) + fabsf(*v271) + fabsf(*v273);
        v276 = v275 + 1.0e-15;
        if (((v275 + 1.0e-15) / v274) >= 0.3)
        {
          v252 = v276 / v274;
        }

        if (v252 < 1.0)
        {
          do
          {
            if ((v260 + 1) > v244 || v260 > v260 + 1 || v260 < v106)
            {
              goto LABEL_482;
            }

            *v260 = v252 * *v260;
            v252 = v252 + 0.1;
            ++v260;
          }

          while (v252 < 1.0);
          v105 = *a4;
          v244 = a4[1];
        }

        v279 = (v274 / v276) * 0.5;
        if (v279 > 1.0)
        {
          v280 = v279 * 0.05;
          v281 = (v105 + 4 * v272);
          do
          {
            if ((v281 + 1) > v244 || v281 > v281 + 1 || v281 < v106)
            {
              goto LABEL_482;
            }

            *v281 = v279 * *v281;
            --v281;
            v279 = v279 - v280;
          }

          while (v279 > 1.0);
          v105 = *a4;
        }

LABEL_133:
        if (v105 < v106)
        {
          goto LABEL_482;
        }

        v107 = v288;
        result = calc_norm_envelop(v105, a4[1], __b, v291, v288, 560, a12);
        v108 = a5;
LABEL_153:
        if (!*a6)
        {
          LOWORD(v116) = a12 + 240;
          v117 = 1.0 / v107;
          if (v108 == 3)
          {
            v118 = 0.2;
          }

          else
          {
            v119 = fminf(v117 * 3.0, 0.5);
            v118 = 0.2;
            if (v119 > 0.2)
            {
              v118 = v119;
            }
          }

          v120 = (*a13 * 0.6) + (v118 * 0.4);
          v121 = a12 + 560;
          v122 = a12 + 240;
          do
          {
            v123 = &v289[v122];
            v124 = v123 + 1;
            if (v123 < v289 || v124 > __b || v123 > v124)
            {
              goto LABEL_482;
            }

            v289[v122] = 1;
            v127 = *a4;
            v128 = a4[1];
            v129 = a4[2];
            v130 = (*a4 + 4 * v122);
            v131 = (v130 + 1) > v128 || v130 > v130 + 1;
            if (v131 || v130 < v129)
            {
              goto LABEL_482;
            }

            v133 = *v130;
            if (*v130 >= 0.0)
            {
              v134 = 1.0;
            }

            else
            {
              *v123 = -1;
              *v130 = -v133;
              v127 = *a4;
              v128 = a4[1];
              v134 = -1.0;
            }

            v135 = (v127 + 4 * v122);
            v136 = (v135 + 1) > v128 || v135 > v135 + 1;
            v137 = !v136 && v135 >= v129;
            v138 = &__b[v122];
            v139 = v138 + 1;
            v140 = v137 && v138 >= __b;
            v141 = !v140 || v139 > v291;
            if (v141 || v138 > v139)
            {
              goto LABEL_482;
            }

            *v135 = *v135 - (*&__b[v122] * v117);
            v143 = *a4;
            v144 = a4[1];
            v145 = (*a4 + 4 * v122);
            if ((v145 + 1) > v144 || v145 > v145 + 1 || v145 < v129)
            {
              goto LABEL_482;
            }

            if (*v145 > 0.0)
            {
              *v145 = (1.2 - v120) * *v145;
              v143 = *a4;
              v144 = a4[1];
            }

            result = (v143 + 4 * v122);
            if ((result + 1) > v144 || result > result + 1 || result < v129)
            {
              goto LABEL_482;
            }

            *result = *result * v134;
            ++v122;
          }

          while (v121 > v122);
          do
          {
            v146 = &__b[v116];
            v147 = v146 + 1;
            if (v146 < __b || v147 > v291 || v146 > v147)
            {
              goto LABEL_482;
            }

            v116 = v116;
            v150 = (*a4 + 4 * v116);
            v151 = (v150 + 1) > a4[1] || v150 > v150 + 1;
            if (v151 || v150 < v129)
            {
              goto LABEL_482;
            }

            *v150 = *v150 / *&__b[v116];
            LOWORD(v116) = v116 + 1;
          }

          while (v121 > v116);
          v108 = a5;
          goto LABEL_233;
        }

LABEL_224:
        v120 = 3.0 / v107;
        v153 = 0.5;
        v154 = v120 >= 0.5;
        v155 = v120 > 0.2 || v120 >= 0.5;
        if (v120 <= 0.2)
        {
          v154 = 1;
        }

        if (!v155)
        {
          v153 = 0.2;
        }

        if (v154)
        {
          v120 = v153;
        }

LABEL_233:
        *a13 = v120;
        if (v108 == 3)
        {
          v156 = 0;
          v157 = a4[1];
          v158 = a4[2];
          v159 = *a4 + 4 * a12 + 960;
          do
          {
            v160 = 0;
            v161 = 0.0;
            v162 = v159;
            do
            {
              if ((v162 + 1) > v157 || v162 > v162 + 1 || v162 < v158)
              {
                goto LABEL_482;
              }

              v161 = v161 + fabsf(*v162++);
              v63 = v160++ >= 0xF;
            }

            while (!v63);
            v165 = 0;
            v166 = v161 * 0.0625;
            v167 = v159;
            do
            {
              v159 = (v167 + 1);
              if ((v167 + 1) > v157 || v167 > v159 || v167 < v158)
              {
                goto LABEL_482;
              }

              if (fabsf(*v167) < v166)
              {
                *v167 = *v167 * 0.2;
              }

              ++v167;
              v63 = v165++ >= 0xF;
            }

            while (!v63);
            v63 = v156++ >= 0x12;
          }

          while (!v63);
          v170 = 2;
        }

        else
        {
          v170 = 1;
        }

        v171 = 0;
        LOWORD(v172) = 0;
        do
        {
          v173 = &swb_bwe_subband[v172];
          v174 = v173 + 1;
          if (v173 < swb_bwe_subband || v174 > fb_bwe_subband || v173 > v174)
          {
            goto LABEL_482;
          }

          v172 = v171 + v170;
          v177 = &swb_bwe_subband[v171 + v170];
          if (v177 < swb_bwe_subband || v177 + 1 > fb_bwe_subband || v177 > v177 + 1)
          {
            goto LABEL_482;
          }

          v178 = *v173;
          v179 = v178 + a12;
          v180 = *v177;
          v181 = v180 + a12;
          if (v181 > (v178 + a12))
          {
            result = a4[1];
            v182 = 1.0e-15;
            v183 = v178 + a12;
            do
            {
              v184 = (*a4 + 4 * v183);
              if (v184 + 1 > result || v184 > v184 + 1 || v184 < a4[2])
              {
                goto LABEL_482;
              }

              v182 = v182 + (*v184 * *v184);
              ++v183;
            }

            while (v181 > v183);
            if (v181 > (v178 + a12))
            {
              v187 = sqrtf((v180 - v178) / v182);
              v188 = a4[2];
              do
              {
                v189 = (*a4 + 4 * v179);
                if ((v189 + 1) > a4[1] || v189 > v189 + 1 || v189 < v188)
                {
                  goto LABEL_482;
                }

                *v189 = v187 * *v189;
                ++v179;
              }

              while (v181 > v179);
            }
          }

          v171 = v172;
        }

        while (v172 < 14);
        v192 = 0.5;
        if (v54 > 0.0 && *a7 > (v54 * 1.25))
        {
          v192 = (v54 * 0.5) / *a7;
        }

        v193 = 1.0 - v192;
        v194 = ((((1.0 - v192) * *a3) + (v192 * *a8)) - v37) * 0.125;
        v195 = a12 + 240;
        v60 = a4[2];
        do
        {
          v196 = (*a4 + 4 * v195);
          if ((v196 + 1) > a4[1] || v196 > v196 + 1 || v196 < v60)
          {
            goto LABEL_482;
          }

          *v196 = v37 * *v196;
          v37 = v194 + v37;
          ++v195;
        }

        while (a12 + 248 > v195);
        v199 = 0;
        while (1)
        {
          v200 = v199 + 1;
          v201 = *(swb_bwe_sm_subband + v199 + 1) + a12;
          if (v201 > v195)
          {
            break;
          }

LABEL_322:
          v199 = v200;
          if (v200 == 12)
          {
            v207 = (a8 + 52);
            v208 = (a3 + 52);
            if (a12 + 544 <= v195)
            {
LABEL_334:
              if (v207 >= a8 && v207 <= a8 + 56 && v208 >= a3 && v208 <= v34)
              {
                if (a12 + 560 <= v195)
                {
LABEL_349:
                  for (j = 0; j != 56; j += 4)
                  {
                    *(a8 + j) = *(a3 + j);
                  }

                  v88 = a12;
                  goto LABEL_352;
                }

                v214 = (v193 * *v208) + (v192 * *v207);
                while (1)
                {
                  v215 = (*a4 + 4 * v195);
                  v216 = (v215 + 1) > a4[1] || v215 > v215 + 1;
                  if (v216 || v215 < v60)
                  {
                    break;
                  }

                  *v215 = v214 * *v215;
                  if (a12 + 560 <= ++v195)
                  {
                    goto LABEL_349;
                  }
                }
              }
            }

            else
            {
              v209 = *(a3 + 48);
              v210 = (((v193 * *(a3 + 52)) + (v192 * *(a8 + 52))) - v209) * 0.03125;
              while (1)
              {
                v211 = (*a4 + 4 * v195);
                v212 = (v211 + 1) > a4[1] || v211 > v211 + 1;
                if (v212 || v211 < v60)
                {
                  break;
                }

                *v211 = v209 * *v211;
                v209 = v210 + v209;
                if (a12 + 544 <= ++v195)
                {
                  goto LABEL_334;
                }
              }
            }

            goto LABEL_482;
          }
        }

        v202 = *(a3 + 4 * v199);
        v203 = (((v193 * *(a3 + 4 * v200)) + (v192 * *(a8 + 4 * v200))) - v202) * smooth_factor[v199];
        while (1)
        {
          v204 = (*a4 + 4 * v195);
          v205 = (v204 + 1) > a4[1] || v204 > v204 + 1;
          if (v205 || v204 < v60)
          {
            break;
          }

          *v204 = v202 * *v204;
          v202 = v203 + v202;
          if (v201 <= ++v195)
          {
            goto LABEL_322;
          }
        }

LABEL_482:
        __break(0x5519u);
      }
    }

    v228 = (a3 + 4 * v224 + 4);
    v226 = v225[1];
LABEL_369:
    *v228 = ((v224 * 0.015) + 0.8) * v226;
    goto LABEL_370;
  }

  v39 = a1 + 448;
  if (a1 + 448 < a1)
  {
    goto LABEL_482;
  }

  v40 = *a4 + 4 * a12;
  v41 = v40 + 960;
  if (v40 + 960 < a4[2])
  {
    goto LABEL_482;
  }

  v42 = a4[1];
  v63 = v42 >= v41;
  v43 = v42 - v41;
  if (!v63)
  {
    goto LABEL_482;
  }

  if (a2 < v39)
  {
    goto LABEL_482;
  }

  if (a2 - v39 < 0x200)
  {
    goto LABEL_482;
  }

  if (v43 <= 0x1FF)
  {
    goto LABEL_482;
  }

  v285 = *a3;
  memmove((v40 + 960), (a1 + 448), 0x200uLL);
  if (v40 + 1472 < v41)
  {
    goto LABEL_482;
  }

  v44 = *a4 + 4 * a12;
  v45 = v44 + 1472;
  if (v44 + 1472 < a4[2])
  {
    goto LABEL_482;
  }

  v46 = a4[1];
  v63 = v46 >= v45;
  v47 = v46 - v45;
  if (!v63)
  {
    goto LABEL_482;
  }

  if (v47 <= 0x1FF)
  {
    goto LABEL_482;
  }

  memmove((v44 + 1472), (a1 + 448), 0x200uLL);
  if (v44 + 1984 < v45)
  {
    goto LABEL_482;
  }

  v48 = (a1 + 704);
  if (a1 + 704 < a1)
  {
    goto LABEL_482;
  }

  v49 = *a4 + 4 * a12;
  v50 = v49 + 1984;
  if (v49 + 1984 < a4[2])
  {
    goto LABEL_482;
  }

  v51 = a4[1];
  v63 = v51 >= v50;
  v52 = v51 - v50;
  if (!v63)
  {
    goto LABEL_482;
  }

  if (a2 < v48)
  {
    goto LABEL_482;
  }

  if (a2 - v48 < 0x100)
  {
    goto LABEL_482;
  }

  if (v52 <= 0xFF)
  {
    goto LABEL_482;
  }

  memmove((v49 + 1984), v48, 0x100uLL);
  if (v49 + 2240 < v50 || *a4 < a4[2])
  {
    goto LABEL_482;
  }

  v53 = vmulq_f32(v285, v285);
  v54 = ((((v53.f32[0] + 0.0) + v53.f32[1]) + v53.f32[2]) + v53.f32[3]) * 0.25;
  result = calc_norm_envelop(*a4, a4[1], __b, v291, v288, 560, a12);
  LOWORD(v55) = a12 + 240;
  do
  {
    v56 = &__b[v55];
    v57 = v56 + 1;
    if (v56 < __b || v57 > v291 || v56 > v57)
    {
      goto LABEL_482;
    }

    v55 = v55;
    v60 = a4[2];
    v61 = (*a4 + 4 * v55);
    v62 = (v61 + 1) > a4[1] || v61 > v61 + 1;
    v63 = !v62 && v61 >= v60;
    if (!v63)
    {
      goto LABEL_482;
    }

    *v61 = *v61 / *&__b[v55];
    LOWORD(v55) = v55 + 1;
  }

  while (a12 + 560 > v55);
  for (k = 0; k != 4; ++k)
  {
    v65 = (&swb_bwe_trans_subband + 2 * k);
    v66 = *v65 + a12;
    v67 = v65[1] + a12;
    v68 = 1.0e-15;
    if (v67 > v66)
    {
      v69 = v66;
      v68 = 1.0e-15;
      do
      {
        v70 = (*a4 + 4 * v69);
        result = v70 + 1;
        v71 = (v70 + 1) > a4[1] || v70 > result;
        if (v71 || v70 < v60)
        {
          goto LABEL_482;
        }

        v68 = v68 + (*v70 * *v70);
      }

      while (v67 > ++v69);
    }

    if (v67 > v66)
    {
      v73 = sqrt((swb_bwe_trans_subband_width[k] / v68)) * *(a3 + 4 * k);
      do
      {
        v74 = (*a4 + 4 * v66);
        v75 = (v74 + 1) > a4[1] || v74 > v74 + 1;
        if (v75 || v74 < v60)
        {
          goto LABEL_482;
        }

        *v74 = *v74 * v73;
      }

      while (v67 > ++v66);
    }
  }

  for (m = 0; m != 8; ++m)
  {
    v78 = (a3 + (m & 0xFFFC));
    v79 = v78 + 1;
    if (v78 < a3 || v79 > v34 || v78 > v79)
    {
      goto LABEL_482;
    }

    *(a8 + 4 * m) = *v78 * *v78;
  }

  for (n = 0; n != 6; ++n)
  {
    v83 = a3 + 4 * (n / 3u);
    v84 = (v83 + 8);
    v85 = v83 + 12;
    if (v84 < a3 || v85 > v34 || v84 > v85)
    {
      goto LABEL_482;
    }

    *(a8 + 32 + 4 * n) = *v84 * *v84;
  }

  *a13 = 0.5;
  v88 = a12;
LABEL_352:
  v219 = 0;
  v220 = a4[1];
  v221 = (*a4 + 4 * v88 + 960);
  do
  {
    if ((v221 + 1) > v220 || v221 > v221 + 1 || v221 < v60)
    {
      goto LABEL_482;
    }

    *v221 = *v221 * 0.5;
    ++v221;
    v63 = v219++ >= 3;
  }

  while (!v63);
  *a7 = v54;
  return result;
}

void dequantizeSHBparams(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, float *__C, float *a7, _WORD *a8, float *a9, float *a10, unint64_t a11, float *a12)
{
  v130 = *MEMORY[0x1E69E9840];
  *&v125 = -1;
  *(&v125 + 1) = -1;
  *&v124[16] = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v123 = v14;
  *v124 = v14;
  v15 = (a1 + 73718);
  v121 = 0;
  v120 = 0;
  if (a2 != 5)
  {
    if (*a1 == 2)
    {
      next_indice = *(a1 + 73722);
      v112 = *(a1 + 73724);
    }

    else
    {
      next_indice = get_next_indice(a1, 5);
      v112 = get_next_indice(a1, 5);
    }

    v36 = *(a1 + 5176);
    if (v36 == 32000 || v36 == 24400)
    {
      if (*a1 == 2)
      {
        v37 = v15[4];
      }

      else
      {
        v37 = get_next_indice(a1, 6);
      }

      v38 = __exp10(((v37 * 0.042) + 0.0));
      *a9 = v38;
      v111 = v15;
      v39 = v15 + 10;
      v40 = 73730;
      v41 = a10;
      for (i = 73728; i != 73738; i += 2)
      {
        if (*a1 == 2)
        {
          if (a1 + v40 > v39 || a1 + i > (a1 + v40))
          {
            goto LABEL_180;
          }

          v43 = *(a1 + i);
        }

        else
        {
          v43 = get_next_indice(a1, 3);
        }

        if (v41 < a10 || (v41 + 1) > a11 || v41 > v41 + 1)
        {
          goto LABEL_180;
        }

        *v41++ = (v43 * 0.125) + 0.125;
        v40 += 2;
      }

      if (*a1 == 2)
      {
        v44 = *v39;
      }

      else
      {
        v44 = get_next_indice(a1, 3);
      }

      v15 = v111;
      *a12 = (v44 * 0.125) + 0.125;
    }

    else
    {
      *a9 = 0.0;
      *a12 = 0.0;
      LODWORD(__A) = 0;
      vDSP_vfill(&__A, a10, 1, 5uLL);
    }

    if (*(a1 + 36086) || (v69 = *(a1 + 5176), v69 == 9600) || !v69 && ((v70 = *(a1 + 5184), v70 == 9600) || v70 == 13200 && *(a1 + 36088)))
    {
      for (j = 0; j != 10; j += 2)
      {
        v46 = &v120 + j + 2;
        if ((&v120 + j) < &v120 || v46 > v122 || &v120 + j > v46)
        {
          goto LABEL_180;
        }

        *(&v120 + j) = 0;
      }

      mvs2s((a1 + 73708), a1 + 73718, &v120, v122, 5);
      v49 = &swb_tbe_lsfvq_cbook_8b[40 * v120];
      if (v49 >= swb_tbe_lsfvq_cbook_8b && a5 >= a4 && v49 <= SHBCB_SubGain5bit && (40 * v120 - 10201) >= 0x28 && a5 - a4 > 0x27)
      {
        *a4 = *v49;
        *(a4 + 16) = *(v49 + 1);
        *(a4 + 32) = *(v49 + 4);
        if (a4 + 40 >= a4)
        {
LABEL_82:
          __A = a4;
          v118 = a5;
          v119 = a4;
          space_lsfs(&__A);
          v50 = 0;
          v51 = 4 * next_indice;
          do
          {
            v52 = &SHBCB_SubGain5bit[4 * v51];
            v53 = v52 + 1;
            if (v52 < SHBCB_SubGain5bit || v53 > mirror_point_q_cb || v52 > v53)
            {
              goto LABEL_180;
            }

            ++v51;
            v56 = __exp10(*v52);
            __C[v50++] = v56;
          }

          while (v50 != 4);
          v57 = __C + 16;
          v58 = 15;
          do
          {
            v59 = (__C + (v58 & 0xFFFC));
            v60 = v59 + 1;
            v62 = v59 < __C || v60 > v57 || v59 > v60;
            v63 = &__C[v58];
            v64 = v63 + 1;
            if (v62 || v63 < __C || v64 > v57 || v63 > v64)
            {
              goto LABEL_180;
            }

            *v63 = *v59;
            v18 = v58-- == 0;
          }

          while (!v18);
          v68 = __exp10(((v112 * 0.15) + -1.0));
          *a7 = v68;
          return;
        }
      }

      goto LABEL_180;
    }

    v71 = v15;
    v72 = 0;
    if (a3 > 2799)
    {
      if (a3 != 3000 && a3 != 2800)
      {
        goto LABEL_131;
      }
    }

    else if (a3 != 1600 && a3 != 1800)
    {
LABEL_131:
      v76 = &lsf_q_cb_4b[v72];
      v77 = v76 + 1;
      if (v76 >= lsf_q_cb_4b && v77 <= lsf_q_cb_3b && v76 <= v77)
      {
        v80 = 0;
        *&v123 = *v76;
        v81 = &v120 + 1;
        v82 = &xmmword_1E752F280 + 1;
        do
        {
          v83 = *(v82 - 1);
          v84 = *v81++;
          v85 = (v83 + 4 * v84);
          v86 = v85 + 1;
          v88 = v85 < v83 || v86 > *v82 || v85 > v86;
          v89 = &v124[v80 - 16];
          v90 = &v124[v80 - 12];
          if (v88 || v89 < &v123 || v89 > v90)
          {
            goto LABEL_180;
          }

          *v90 = *v85 + *&v124[v80 - 16];
          v80 += 4;
          v82 += 2;
        }

        while (v80 != 16);
        if (*a1 == 2)
        {
          v93 = *v71;
          v94 = v71[1];
        }

        else
        {
          v93 = get_next_indice(a1, 2);
          v94 = get_next_indice(a1, 2);
        }

        v95 = &mirror_point_q_cb[v93];
        if (v95 >= mirror_point_q_cb && v95 + 1 <= grid_smoothing && v95 <= v95 + 1)
        {
          v96 = *v124;
          v97 = *v95 + *v124;
          if (v97 > 0.5)
          {
            *(a1 + 5168) = 1;
            v97 = 0.5;
          }

          v98 = 0;
          __A = -1;
          v118 = -1;
          LODWORD(v119) = -1;
          v129 = -1;
          v128[0] = -1;
          v128[1] = -1;
          v127 = -1;
          v99 = v124;
          *&v126 = -1;
          *(&v126 + 1) = -1;
          do
          {
            if (v99 < &v123)
            {
              goto LABEL_180;
            }

            v100 = *v99--;
            *(&__A + v98) = -(v100 - (v97 * 2.0));
            v98 += 4;
          }

          while (v98 != 20);
          if (v97 > 0.25)
          {
            v101 = 0;
            v102 = *&__A;
            v103 = (0.5 - v97) / v97;
            do
            {
              *(&__A + v101) = v102 + ((*(&__A + v101) - v102) * v103);
              v101 += 4;
            }

            while (v101 != 20);
          }

          for (k = 0; k != 5; ++k)
          {
            *(v128 + k * 4) = v96 + (lsf_grid[5 * v94 + k] * (0.5 - v96));
          }

          for (m = 0; m != 5; ++m)
          {
            *(&v126 + m * 4) = (*&grid_smoothing[m] * *(v128 + m * 4)) + ((1.0 - *&grid_smoothing[m]) * *(&__A + m * 4));
          }

          *&v124[4] = v126;
          *&v124[20] = v127;
          v106 = &v124[20];
          v107 = 10;
          v108 = a4;
          while (v106 >= &v123)
          {
            v109 = *v106;
            if (*v106 > 0.5)
            {
              *(a1 + 5168) = 1;
              *v106 = 0.5;
              v109 = 0.5;
            }

            if (v108 < a4 || (v108 + 1) > a5 || v108 > v108 + 1)
            {
              break;
            }

            *v108++ = 0.5 - v109;
            --v106;
            if (!--v107)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_180;
    }

    v73 = 0;
    v74 = a1 + 73708;
    v75 = a1 + 73710;
    do
    {
      if (*a1 == 2)
      {
        if (v75 + v73 > a1 + 73718 || v74 + v73 > v75 + v73)
        {
          goto LABEL_180;
        }

        *(&v120 + v73) = *(v74 + v73);
      }

      else
      {
        *(&v120 + v73) = get_next_indice(a1, lsf_q_num_bits[v73 / 2]);
      }

      v73 += 2;
    }

    while (v73 != 10);
    v72 = v120;
    goto LABEL_131;
  }

  if (a3 == 350)
  {
    v17 = &lbr_wb_bwe_lsfvq_cbook_2bit[*(a1 + 73740)];
    if (v17 < lbr_wb_bwe_lsfvq_cbook_2bit || a5 < a4)
    {
      goto LABEL_180;
    }

    v18 = v17 > wb_bwe_lsfvq_cbook_8bit || *(a1 + 73740) == 4;
    if (v18 || a5 - a4 <= 0xF)
    {
      goto LABEL_180;
    }

    v20 = *(a1 + 73742);
    *a4 = *v17;
    if (a4 + 16 < a4)
    {
      goto LABEL_180;
    }

    LODWORD(__A) = 1052050676;
    vDSP_vfill(&__A, __C, 1, 8uLL);
    v21 = &SHBCB_FrameGain16[v20];
    if (v21 < SHBCB_FrameGain16 || v21 > window_wb || v20 == 16)
    {
      goto LABEL_180;
    }

    goto LABEL_43;
  }

  *a8 = get_next_indice(a1, 1);
  v22 = get_next_indice(a1, 5);
  v23 = get_next_indice(a1, 6);
  v24 = get_next_indice(a1, 8);
  v25 = wb_bwe_lsfvq_cbook_8bit + 24 * v24;
  if (v25 < wb_bwe_lsfvq_cbook_8bit)
  {
    goto LABEL_180;
  }

  if (a5 < a4)
  {
    goto LABEL_180;
  }

  if (v25 > HBCB_SubGain5bit)
  {
    goto LABEL_180;
  }

  if ((24 * v24 - 6121) < 0x18)
  {
    goto LABEL_180;
  }

  if (a5 - a4 <= 0x17)
  {
    goto LABEL_180;
  }

  *a4 = *v25;
  *(a4 + 16) = *(v25 + 2);
  if (a4 + 24 < a4)
  {
    goto LABEL_180;
  }

  v26 = &HBCB_SubGain5bit[v22];
  if (v26 < HBCB_SubGain5bit || v26 > SHBCB_FrameGain64 || v22 == 32)
  {
    goto LABEL_180;
  }

  v27 = 0;
  v125 = *v26;
  do
  {
    v28 = __exp10((*(&v125 + v27) / 20.0));
    *(&v125 + v27) = v28;
    v27 += 4;
  }

  while (v27 != 16);
  v29 = __C + 1;
  v30 = -2;
  v31 = &v125;
  do
  {
    v32 = (v31 + 1);
    if (v31 < &v125 || v32 > &v126 || v31 > v32)
    {
      goto LABEL_180;
    }

    v35 = *v31++;
    *(v29 - 1) = v35;
    *v29 = v35;
    v30 += 2;
    v29 += 2;
  }

  while (v30 < 6);
  v21 = SHBCB_FrameGain64 + v23;
  if (v21 < SHBCB_FrameGain64 || v21 > lsf_grid || v23 == 64)
  {
LABEL_180:
    __break(0x5519u);
  }

LABEL_43:
  *a7 = *v21;
  if (a7 + 1 < a7)
  {
    goto LABEL_180;
  }
}

unint64_t acelp_core_switch_dec_bfi(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v45 = v2;
  v43 = v3;
  v44 = v4;
  v93[0] = *MEMORY[0x1E69E9840];
  v46 = v1 + 32332;
  v47 = v1 + 138196;
  v49 = v1;
  v50 = (v1 + 27172);
  v48 = v1 + 21360;
  memset(v92, 255, sizeof(v92));
  memset(&v91[1], 255, 0x500uLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v90[3] = v5;
  v90[2] = v5;
  v90[1] = v5;
  v90[0] = v5;
  v89[3] = v5;
  v89[2] = v5;
  v89[1] = v5;
  v89[0] = v5;
  v87 = -1;
  v86[20] = v5;
  v86[19] = v5;
  v86[18] = v5;
  v86[17] = v5;
  v86[16] = v5;
  v86[15] = v5;
  v86[14] = v5;
  v86[13] = v5;
  v86[12] = v5;
  v86[11] = v5;
  v86[10] = v5;
  v86[9] = v5;
  v86[8] = v5;
  v86[7] = v5;
  v86[6] = v5;
  v86[5] = v5;
  v86[4] = v5;
  v86[3] = v5;
  v86[2] = v5;
  v86[1] = v5;
  v86[0] = v5;
  memset(v85, 255, sizeof(v85));
  v60 = -1;
  memset(v84, 255, sizeof(v84));
  memset(v83, 255, 0x488uLL);
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v81 = v6;
  v82 = v6;
  v79 = v6;
  v80 = v6;
  v78 = -1;
  v76 = v6;
  v77 = v6;
  memset(v74, 170, sizeof(v74));
  memset(v72, 170, sizeof(v72));
  v70 = -1;
  v69[1] = -1;
  v69[0] = -1;
  v67 = -1;
  v66 = -1;
  v65 = -1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64[10] = v6;
  v64[11] = v6;
  v64[8] = v6;
  v64[9] = v6;
  v64[6] = v6;
  v64[7] = v6;
  v64[4] = v6;
  v64[5] = v6;
  v64[2] = v6;
  v64[3] = v6;
  v64[0] = v6;
  v64[1] = v6;
  v63[10] = v6;
  v63[11] = v6;
  v63[8] = v6;
  v63[9] = v6;
  v63[6] = v6;
  v63[7] = v6;
  v63[4] = v6;
  v63[5] = v6;
  v63[2] = v6;
  v63[3] = v6;
  v63[0] = v6;
  v63[1] = v6;
  memset(__b, 255, sizeof(__b));
  memset(v61, 255, sizeof(v61));
  v7 = 0;
  for (i = 0; i != 1920; i += 240)
  {
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, &__b[i], 1, 0x3CuLL);
    v9 = &v61[i];
    LODWORD(__A) = 0;
    vDSP_vfill(&__A, &v61[i], 1, 0x3CuLL);
    v10 = (v64 + v7);
    *v10 = &__b[i];
    v10[1] = &__b[i + 240];
    v10[2] = &__b[i];
    v11 = (v63 + v7);
    *v11 = &v61[i];
    v11[1] = &v61[i + 240];
    v7 += 24;
    v11[2] = v9;
  }

  v12 = v49;
  v50[1974] = 1;
  v13 = *(v48 + 2960);
  *(v47 + 16) = v13;
  v60 = 0;
  memcpy(v92, (v49 + 5384), 0x780uLL);
  memcpy(v85, (v49 + 24612), 0x500uLL);
  memcpy(v84, (v49 + 68892), 0x908uLL);
  *(v48 + 226) = 0;
  *v50 = 0;
  if (*(v46 + 2388) == 1)
  {
    *(v46 + 2390) = 1;
  }

  v59 = NAN;
  v14 = *(v49 + 21432);
  v83[0] = *(v49 + 21416);
  v83[1] = v14;
  v15 = *(v49 + 21464);
  v83[2] = *(v49 + 21448);
  v83[3] = v15;
  v16 = *(v49 + 21496);
  v79 = *(v49 + 21480);
  v80 = v16;
  v17 = *(v49 + 21528);
  v81 = *(v49 + 21512);
  v82 = v17;
  HIDWORD(v18) = *(v49 + 5242);
  LODWORD(v18) = HIDWORD(v18);
  lsf_dec_bfi(1, v90, v49 + 11208, v49 + 24544, 0, 0, (v49 + 21480), (v49 + 21416), *(v48 + 184), *(v48 + 192), *(v49 + 5240), v13, *v47, 0, 0, 0, 0, 0, 0, 0, *(v48 + 1392), SHIWORD(v18), (v18 >> 16) >> 16);
  FEC_lsf2lsp_interp(v49, *(v49 + 5240), v86, v88, v90, v89);
  v20 = v83[1];
  *(v49 + 21416) = v83[0];
  *(v49 + 21432) = v20;
  v21 = v83[3];
  *(v49 + 21448) = v83[2];
  *(v49 + 21464) = v21;
  v22 = v80;
  *(v49 + 21480) = v79;
  *(v49 + 21496) = v22;
  v23 = v82;
  *(v49 + 21512) = v81;
  *(v49 + 21528) = v23;
  if (*(v46 + 2390) == 1)
  {
    v24 = *(v48 + 2948);
    *&__A = &v92[1920];
    *(&__A + 1) = v93;
    v56 = v92;
    v25 = v45;
    decod_nelp(v49, v45, &v60, &v65, &__A, &v85[320], v69, v19, &v84[578], v85, v24, &v79, v83);
    v59 = *(&v66 + 1);
  }

  else
  {
    v27 = *(v48 + 2984);
    LODWORD(v83[0]) = *(v48 + 2980);
    v26 = v83[0];
    *(v83 + 1) = v27;
    *(&v83[0] + 1) = *(v48 + 2964);
    v28 = *(&v83[0] + 1);
    v29 = *(v48 + 3036);
    v30 = *(v48 + 2954);
    *&v83[1] = v29;
    *(&v83[1] + 1) = v30;
    v31 = *(v49 + 5240);
    *&__A = &v92[1920];
    *(&__A + 1) = v93;
    v56 = v92;
    FEC_exc_estim(v49, v31, &__A, &v85[320], v86, &v91[1], &v65, v68, v69, &v71, &v59, &v84[578], v85, v90, v91, &v60, v61);
    *(v48 + 2954) = v30;
    v12 = v49;
    *(v48 + 2980) = v26;
    *(v48 + 2984) = v27;
    *(v48 + 2964) = v28;
    *(v48 + 3036) = v29;
    v25 = v45;
  }

  v32 = *(v12 + 21248);
  v83[0] = *(v12 + 21232);
  v83[1] = v32;
  v33 = *(v12 + 21280);
  v83[2] = *(v12 + 21264);
  v83[3] = v33;
  v34 = *(v12 + 5240);
  if (v34 > 0x140 || ((syn_12k8(v34, v86, v88, &v85[320], &v91[1]), LODWORD(v83[0]) = *(v48 + 2976), v35 = *(v12 + 5240), v36 = *(v48 + 2960), *&__A = &v91[1], *(&__A + 1) = v92, v56 = &v91[1], fer_energy(v35, v36, &__A, v83, v35, v59), LODWORD(v83[0]) = *v48, *(v12 + 5240) != 256) ? (v37 = 0.72, v38 = (v12 + 137824), v39 = 320) : (v37 = 0.68, v38 = (v12 + 137824), v39 = 256), deemph_opt(&v91[1], v38, v39, v83, v37), v57 = -1, v58 = -1, v50[1974] = 1, memcpy(v83, (v12 + 31124), 0x488uLL), v58 = *(v48 + 188), v40 = *(v12 + 32352), v76 = *(v12 + 32336), v77 = v40, v78 = *(v12 + 32368), mvs2s((v12 + 32292), v12 + 32312, v74, &v75, 10), mvs2s((v12 + 32312), v46, v72, &v73, 10), v57 = *v46, v41 = *(v12 + 5240), v41 > 0x140))
  {
    __break(0x5519u);
  }

  bass_psfilter(*(v12 + 5244), &v91[1], v41, &v65, v68, v83, v12 + 32284, v12 + 137824, (v12 + 32288), v50[1974], &v58, &v76, v74, v72, &v57, v25, v92, v93);
  cldfb_save_memory(*(v12 + 32376));
  *&__A = &v91[1];
  *(&__A + 1) = v92;
  v56 = &v91[1];
  v52 = v64;
  v53 = &v65;
  v54 = v64;
  v51[0] = v63;
  v51[1] = v64;
  v51[2] = v63;
  cldfbAnalysis(&__A, &v52, v51, ((*(v12 + 5240) + (*(v12 + 5240) >> 15)) >> 1), *(v12 + 32376));
  cldfb_restore_memory(*(v12 + 32376));
  cldfb_save_memory(*(v12 + 32392));
  *&__A = v64;
  *(&__A + 1) = &v65;
  v56 = v64;
  v52 = v63;
  v53 = v64;
  v54 = v63;
  cldfbSynthesis(&__A, &v52, v43, v44, (*(v12 + 5172) * 0.01), *(v12 + 32392));
  return cldfb_restore_memory(*(v12 + 32392));
}

uint64_t modify_Fs_intcub3m_sup(unint64_t *a1, int a2, int a3, float *a4, unint64_t a5, int a6, _WORD *a7)
{
  v249 = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v247 = v7;
  v248 = v7;
  v246[0] = v7;
  v246[1] = v7;
  v244 = a1;
  if (a3 != a6)
  {
    v20 = *a1;
    v21 = a1[1];
    if (*a1 > v21)
    {
      goto LABEL_424;
    }

    v22 = (v20 - 1);
    if (v20 < 4)
    {
      goto LABEL_424;
    }

    v245 = a1[2];
    if (v22 < v245)
    {
      goto LABEL_424;
    }

    *&v247 = *(v20 - 1) / 3.0;
    if ((v20 - 2) > v22)
    {
      goto LABEL_424;
    }

    if ((v20 - 2) < v245)
    {
      goto LABEL_424;
    }

    v23 = v20 + 1;
    if ((v20 + 1) > v21)
    {
      goto LABEL_424;
    }

    if (v20 > v23)
    {
      goto LABEL_424;
    }

    v24 = ((*(v20 - 2) + *v20) * 0.5) - *(v20 - 1);
    *(&v247 + 2) = v24;
    v25 = (v20 + 2);
    if ((v20 + 2) > v21)
    {
      goto LABEL_424;
    }

    if (v23 > v25)
    {
      goto LABEL_424;
    }

    *(&v247 + 3) = ((((*(v20 - 2) + v20[1]) - *(v20 - 1)) - *v20) + (v24 * -4.0)) / 6.0;
    *(&v247 + 1) = ((*v20 - *(v20 - 1)) - *(&v247 + 3)) - v24;
    *&v248 = *v20 / 3.0;
    v26 = ((*(v20 - 1) + v20[1]) * 0.5) - *v20;
    *(&v248 + 2) = v26;
    if ((v20 + 3) > v21 || v25 > (v20 + 3))
    {
      goto LABEL_424;
    }

    *(&v248 + 3) = ((((*(v20 - 1) + v20[2]) - *v20) - v20[1]) + (v26 * -4.0)) / 6.0;
    *(&v248 + 1) = ((v20[1] - *v20) - *(&v248 + 3)) - v26;
    if (a3 == 16000)
    {
      switch(a6)
      {
        case 12800:
          v27 = 4;
          goto LABEL_50;
        case 48000:
          v27 = 6;
          goto LABEL_50;
        case 32000:
          v27 = 5;
          goto LABEL_50;
      }
    }

    else if (a3 == 12800)
    {
      LOWORD(v19) = -1;
      if (a6 > 31999)
      {
        if (a6 == 32000)
        {
          v27 = 2;
        }

        else
        {
          if (a6 != 48000)
          {
            return v19;
          }

          v27 = 3;
        }
      }

      else if (a6 == 8000)
      {
        v27 = 0;
      }

      else
      {
        if (a6 != 16000)
        {
          return v19;
        }

        v27 = 1;
      }

LABEL_50:
      v28 = (&ct2 + 26 * v27);
      v243 = (v28 + 13);
      *a7 = v28[9];
      v29 = v28[12];
      v30 = &cu15;
      if (v29 == 4)
      {
        v30 = &cu4;
      }

      v31 = 2 * v29;
      v32 = (v31 - 2);
      v33 = (v31 - 2) << 16 >> 17;
      v34 = v31 - 3;
      v238 = v28[11];
      v242 = a2 - v238;
      if (a2 - v238 < 1)
      {
        v37 = 0;
        LOWORD(v36) = 0;
        v35 = 0;
LABEL_183:
        v110 = (*a1 + 4 * v35);
        v112 = (v110 + 1) <= a1[1] && v110 <= v110 + 1 && v110 >= v245;
        v113 = &a4[v36];
        v114 = v113 + 1;
        if (v112 && v113 >= a4 && v114 <= a5 && v113 <= v114)
        {
          v118 = v36 + 1;
          *v113 = *v110;
          if (v238 < 4)
          {
            v182 = 0;
LABEL_311:
            if (v37)
            {
              v183 = v37 - 1;
            }

            else
            {
              v183 = 3;
            }

            v184 = v28[10];
            if (v184 == 1)
            {
              v185 = (*v244 + 4 * v35);
              if ((v185 + 1) > v244[1])
              {
                goto LABEL_424;
              }

              if (v185 > v185 + 1)
              {
                goto LABEL_424;
              }

              if (v185 < v245)
              {
                goto LABEL_424;
              }

              v186 = &a4[v118];
              if (v186 < a4 || (v186 + 1) > a5 || v186 > v186 + 1)
              {
                goto LABEL_424;
              }

              ++v118;
              *v186 = *v185;
            }

            v187 = &v28[v182];
            if (v187 >= v28)
            {
              v188 = v187 + 1;
              if ((v187 + 1) <= v243 && v187 <= v188)
              {
                v189 = *v187;
                if (v189 >= v32)
                {
LABEL_365:
                  if (v184 <= 2)
                  {
                    v209 = *v244 + 4 * v35;
                    v210 = v209 + 8;
                    if (v209 + 8 > v244[1])
                    {
                      goto LABEL_424;
                    }

                    v211 = (v209 + 4);
                    if (v211 > v210)
                    {
                      goto LABEL_424;
                    }

                    if (v211 < v245)
                    {
                      goto LABEL_424;
                    }

                    v212 = &a4[v118];
                    if (v212 < a4 || (v212 + 1) > a5 || v212 > v212 + 1)
                    {
                      goto LABEL_424;
                    }

                    ++v118;
                    *v212 = *v211;
                  }

                  if ((v187 + 2) <= v243 && v188 <= v187 + 2)
                  {
                    v213 = *v188;
                    if (v213 >= v32)
                    {
LABEL_415:
                      v19 = a2 * a6 / a3;
                      if (v184 != 1)
                      {
                        return v19;
                      }

                      v233 = *v244 + 4 * v35;
                      v234 = v233 + 12;
                      if (v233 + 12 <= v244[1])
                      {
                        v235 = (v233 + 8);
                        if (v235 <= v234 && v235 >= v245)
                        {
                          v236 = &a4[v118];
                          if (v236 >= a4 && (v236 + 1) <= a5 && v236 <= v236 + 1)
                          {
                            *v236 = *v235;
                            return v19;
                          }
                        }
                      }
                    }

                    else
                    {
                      v214 = &v246[v183];
                      v215 = (v214 | 0xC);
                      v217 = (v214 | 0xC) <= (v214 + 4) && v215 >= v214;
                      v218 = (v214 | 8);
                      v220 = (v214 | 8) > v215 || v218 < v214;
                      v221 = v214 | 4;
                      v224 = (v214 | 4) > v218 || v221 > (v214 + 4) || v221 < v214;
                      while (1)
                      {
                        v225 = &v30[24 * v213];
                        v226 = v225 + 2;
                        v227 = v225 + 2 <= v225 + 3 && v226 >= v225;
                        if (!v227 || !v217)
                        {
                          break;
                        }

                        v228 = v225 + 1;
                        v229 = v225 + 1 <= v226 && v228 >= v225;
                        v230 = !v229;
                        if (v230 || v220)
                        {
                          break;
                        }

                        if (v224)
                        {
                          break;
                        }

                        v231 = &a4[v118];
                        if (v231 < a4 || (v231 + 1) > a5 || v231 > v231 + 1)
                        {
                          break;
                        }

                        ++v118;
                        v232 = *v228 * *v218 + *v226 * *v215 + *v225 * v214[1] + *v214;
                        *v231 = v232 * 3.0;
                        v213 = (v28[8] + v213);
                        if (v213 >= v32)
                        {
                          goto LABEL_415;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v190 = &v246[v183];
                  v191 = (v190 | 0xC);
                  v193 = (v190 | 0xC) <= (v190 + 4) && v191 >= v190;
                  v194 = (v190 | 8);
                  v196 = (v190 | 8) > v191 || v194 < v190;
                  v197 = v190 | 4;
                  v200 = (v190 | 4) > v194 || v197 > (v190 + 4) || v197 < v190;
                  while (1)
                  {
                    v201 = &v30[24 * (v189 - v33)];
                    v202 = v201 + 2;
                    v203 = v201 + 2 <= v201 + 3 && v202 >= v201;
                    if (!v203 || !v193)
                    {
                      break;
                    }

                    v204 = v201 + 1;
                    v205 = v201 + 1 <= v202 && v204 >= v201;
                    v206 = !v205;
                    if (v206 || v196)
                    {
                      break;
                    }

                    if (v200)
                    {
                      break;
                    }

                    v207 = &a4[v118];
                    if (v207 < a4 || (v207 + 1) > a5 || v207 > v207 + 1)
                    {
                      break;
                    }

                    ++v118;
                    v208 = *v204 * *v194 + *v202 * *v191 + *v201 * v190[1] + *v190;
                    *v207 = v208 * 3.0;
                    v189 = (v28[8] + v189);
                    if (v189 >= v32)
                    {
                      goto LABEL_365;
                    }
                  }
                }
              }
            }
          }

          else
          {
            v119 = 0;
            while (1)
            {
              v120 = v244[1];
              v121 = (*v244 + 4 * v35);
              v122 = v121 + 1;
              v123 = v121 + 2;
              v125 = (v121 + 2) <= v120 && v122 <= v123 && v122 >= v245;
              v126 = &v246[v37];
              v127 = (v126 + 4);
              v128 = (v126 | 4);
              if (!v125 || v128 > v127 || v126 > v128)
              {
                goto LABEL_424;
              }

              *v126 = v121[1] / 3.0;
              if (v121 > v122)
              {
                goto LABEL_424;
              }

              if (v121 < v245)
              {
                goto LABEL_424;
              }

              v131 = (v121 + 3);
              if ((v121 + 3) > v120)
              {
                goto LABEL_424;
              }

              if (v123 > v131)
              {
                goto LABEL_424;
              }

              v132 = v126 + 2;
              if (v126 + 2 < v126)
              {
                goto LABEL_424;
              }

              v133 = v126 + 3;
              if ((v126 + 3) > v127)
              {
                goto LABEL_424;
              }

              if (v132 > v133)
              {
                goto LABEL_424;
              }

              v134 = ((*v121 + v121[2]) * 0.5) - v121[1];
              *v132 = v134;
              if ((v121 + 4) > v120)
              {
                goto LABEL_424;
              }

              if (v131 > (v121 + 4))
              {
                goto LABEL_424;
              }

              v135 = ((((*v121 + v121[3]) - v121[1]) - v121[2]) + (v134 * -4.0)) / 6.0;
              *v133 = v135;
              if (v128 > v132)
              {
                goto LABEL_424;
              }

              *v128 = ((*v123 - *v122) - v135) - v134;
              v136 = &v28[v119];
              if (v136 < v28 || (v136 + 1) > v243 || v136 > v136 + 1)
              {
                goto LABEL_424;
              }

              v137 = *v136;
              if (v137 < v32)
              {
                break;
              }

LABEL_305:
              ++v35;
              if ((v37 + 1) == 4)
              {
                v37 = 0;
              }

              else
              {
                ++v37;
              }

              if (v238 - 3 <= ++v119)
              {
                v182 = v119;
                goto LABEL_311;
              }
            }

            v138 = vdup_n_s32(v37);
            v139 = vadd_s32(v138, 0xFFFF0000FFFELL);
            v140 = vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(v139, 0x10uLL), 0x10uLL)), vadd_s32(v138, 0x300000002), v139);
            v141 = &v246[v140.i16[0]];
            v142 = v141 | 0xC;
            v144 = (v141 | 0xC) <= v141 + 16 && v142 >= v141;
            v145 = v141 | 8;
            v147 = (v141 | 8) > v142 || v145 < v141;
            v148 = v141 | 4;
            v151 = (v141 | 4) > v145 || v148 > v141 + 16 || v148 < v141;
            v152 = &v246[v140.i16[2]];
            v153 = v152 | 0xC;
            v155 = (v152 | 0xC) <= v152 + 16 && v153 >= v152;
            v156 = v152 | 8;
            v158 = (v152 | 8) > v153 || v156 < v152;
            v159 = v152 | 4;
            v162 = (v152 | 4) > v156 || v159 > v152 + 16 || v159 < v152;
            v163 = v147 || v151;
            v164 = v158 || v162;
            while (1)
            {
              v165 = &v30[24 * v137];
              v166 = v165 + 2;
              v167 = v165 + 2 <= v165 + 3 && v166 >= v165;
              if (!v167 || !v144)
              {
                break;
              }

              v168 = v165 + 1 <= v166 && v165 + 1 >= v165;
              v169 = !v168;
              if ((v169 | v163))
              {
                break;
              }

              v170 = &v30[24 * (v137 - v33)];
              v171 = v170 + 2;
              v172 = v170 + 2 <= v170 + 3 && v171 >= v170;
              if (!v172 || !v155)
              {
                break;
              }

              v173 = v170 + 1 <= v171 && v170 + 1 >= v170;
              v174 = !v173;
              if ((v174 | v164))
              {
                break;
              }

              v175 = &v30[24 * (v34 - v137)];
              v176 = (v175 + 2);
              if (v175 + 2 > v175 + 3)
              {
                break;
              }

              if (v176 < v175)
              {
                break;
              }

              if ((v175 + 1) > v176)
              {
                break;
              }

              if (v175 + 1 < v175)
              {
                break;
              }

              v177 = &a4[v118];
              if (v177 < a4 || (v177 + 1) > a5 || v177 > v177 + 1)
              {
                break;
              }

              v178 = v165[1] * *(v141 + 8) + *v166 * *(v141 + 12) + *v165 * *(v141 + 4) + *v141;
              v179 = v170[1] * *(v152 + 8) + *v171 * *(v152 + 12) + *v170 * *(v152 + 4) + *v152;
              v180 = v178 + v179;
              ++v118;
              v181 = v175[1] * v126[2] - v175[2] * v126[3] - *v175 * v126[1] + *v126;
              *v177 = v180 + v181;
              v137 = (v28[8] + v137);
              if (v137 >= v32)
              {
                goto LABEL_305;
              }
            }
          }
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          v38 = (*a1 + 4 * v35);
          v40 = (v38 + 1) <= a1[1] && v38 <= v38 + 1 && v38 >= v245;
          v41 = &a4[v36];
          v42 = v41 + 1;
          if (!v40 || v41 < a4 || v42 > a5 || v41 > v42)
          {
            goto LABEL_424;
          }

          ++v36;
          *v41 = *v38;
          v46 = v28[10];
          if (v46 >= 1)
          {
            break;
          }

LABEL_180:
          if (v242 <= v35)
          {
            goto LABEL_183;
          }
        }

        v47 = 0;
        while (1)
        {
          v48 = a1[1];
          v49 = (*a1 + 4 * v35);
          v50 = v49 + 1;
          v51 = v49 + 2;
          v53 = (v49 + 2) <= v48 && v50 <= v51 && v50 >= v245;
          v54 = &v246[v37];
          v55 = (v54 + 4);
          v56 = (v54 | 4);
          if (!v53 || v56 > v55 || v54 > v56)
          {
            goto LABEL_424;
          }

          *v54 = v49[1] / 3.0;
          if (v49 > v50)
          {
            goto LABEL_424;
          }

          if (v49 < v245)
          {
            goto LABEL_424;
          }

          v59 = (v49 + 3);
          if ((v49 + 3) > v48)
          {
            goto LABEL_424;
          }

          if (v51 > v59)
          {
            goto LABEL_424;
          }

          v60 = v54 + 2;
          if (v54 + 2 < v54)
          {
            goto LABEL_424;
          }

          v61 = v54 + 3;
          if ((v54 + 3) > v55)
          {
            goto LABEL_424;
          }

          if (v60 > v61)
          {
            goto LABEL_424;
          }

          v62 = ((*v49 + v49[2]) * 0.5) - v49[1];
          *v60 = v62;
          if ((v49 + 4) > v48)
          {
            goto LABEL_424;
          }

          if (v59 > (v49 + 4))
          {
            goto LABEL_424;
          }

          v63 = ((((*v49 + v49[3]) - v49[1]) - v49[2]) + (v62 * -4.0)) / 6.0;
          *v61 = v63;
          if (v56 > v60)
          {
            goto LABEL_424;
          }

          *v56 = ((*v51 - *v50) - v63) - v62;
          v64 = &v28[v47];
          if (v64 < v28 || (v64 + 1) > v243 || v64 > v64 + 1)
          {
            goto LABEL_424;
          }

          v65 = *v64;
          if (v65 < v32)
          {
            break;
          }

LABEL_176:
          ++v35;
          if ((v37 + 1) == 4)
          {
            v37 = 0;
          }

          else
          {
            ++v37;
          }

          if (++v47 == v46)
          {
            goto LABEL_180;
          }
        }

        v66 = vdup_n_s32(v37);
        v67 = vadd_s32(v66, 0xFFFF0000FFFELL);
        v68 = vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(v67, 0x10uLL), 0x10uLL)), vadd_s32(v66, 0x300000002), v67);
        v69 = &v246[v68.i16[0]];
        v70 = v69 | 0xC;
        v72 = (v69 | 0xC) <= v69 + 16 && v70 >= v69;
        v73 = v69 | 8;
        v75 = (v69 | 8) > v70 || v73 < v69;
        v76 = v69 | 4;
        v79 = (v69 | 4) > v73 || v76 > v69 + 16 || v76 < v69;
        v80 = &v246[v68.i16[2]];
        v81 = v80 | 0xC;
        v83 = (v80 | 0xC) <= v80 + 16 && v81 >= v80;
        v84 = v80 | 8;
        v86 = (v80 | 8) > v81 || v84 < v80;
        v87 = v80 | 4;
        v90 = (v80 | 4) > v84 || v87 > v80 + 16 || v87 < v80;
        v91 = v75 || v79;
        v92 = v86 || v90;
        while (1)
        {
          v93 = &v30[24 * v65];
          v94 = v93 + 2;
          v95 = v93 + 2 <= v93 + 3 && v94 >= v93;
          if (!v95 || !v72)
          {
            break;
          }

          v96 = v93 + 1 <= v94 && v93 + 1 >= v93;
          v97 = !v96;
          if ((v97 | v91))
          {
            break;
          }

          v98 = &v30[24 * (v65 - v33)];
          v99 = v98 + 2;
          v100 = v98 + 2 <= v98 + 3 && v99 >= v98;
          if (!v100 || !v83)
          {
            break;
          }

          v101 = v98 + 1 <= v99 && v98 + 1 >= v98;
          v102 = !v101;
          if ((v102 | v92))
          {
            break;
          }

          v103 = &v30[24 * (v34 - v65)];
          v104 = (v103 + 2);
          if (v103 + 2 > v103 + 3)
          {
            break;
          }

          if (v104 < v103)
          {
            break;
          }

          if ((v103 + 1) > v104)
          {
            break;
          }

          if (v103 + 1 < v103)
          {
            break;
          }

          v105 = &a4[v36];
          if (v105 < a4 || (v105 + 1) > a5 || v105 > v105 + 1)
          {
            break;
          }

          v106 = v93[1] * *(v69 + 8) + *v94 * *(v69 + 12) + *v93 * *(v69 + 4) + *v69;
          v107 = v98[1] * *(v80 + 8) + *v99 * *(v80 + 12) + *v98 * *(v80 + 4) + *v80;
          v108 = v106 + v107;
          ++v36;
          v109 = v103[1] * v54[2] - v103[2] * v54[3] - *v103 * v54[1] + *v54;
          *v105 = v108 + v109;
          v65 = (v28[8] + v65);
          if (v65 >= v32)
          {
            goto LABEL_176;
          }
        }
      }

LABEL_424:
      __break(0x5519u);
    }

    LOWORD(v19) = -1;
    return v19;
  }

  v8 = 0;
  v9 = a1[2];
  v10 = a2;
  v11 = a4;
  do
  {
    v12 = (*a1 + v8);
    v14 = (v12 + 1) <= a1[1] && v12 <= v12 + 1 && v12 >= v9;
    v15 = v11 + 1;
    if (!v14 || v11 < a4 || v15 > a5 || v11 > v15)
    {
      goto LABEL_424;
    }

    *v11++ = *v12;
    v8 += 4;
    --v10;
    a1 = v244;
  }

  while (v10);
  *a7 = 0;
  LOWORD(v19) = a2;
  return v19;
}

uint64_t pit_decode(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, __int16 *a7, __int16 *a8, __int16 *a9, __int16 *a10, _WORD *a11, __int16 a12)
{
  v14 = a5;
  v15 = result;
  if (a5 == 128)
  {
    v16 = 0;
  }

  else
  {
    v16 = a5;
  }

  if (a3)
  {
    v17 = a2 == 8850;
    if (a5 != 128)
    {
      v17 = 0;
    }

    v18 = a5 == 0;
    if (!a5)
    {
      v17 = 1;
    }

    if (a5 == 128)
    {
      v18 = 1;
    }

    if (v17)
    {
      v19 = 8;
    }

    else
    {
      v19 = 5;
    }

    if (v18)
    {
      v20 = 9;
    }

    else
    {
      v20 = 6;
    }

    *a7 = 0;
    if (a2 <= 8850)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    result = get_next_indice(result, v21);
    if (v15 + 5168 <= (v15 + 5170))
    {
      v22 = result;
      v23 = *a7;
      v46 = a11;
      v47 = (v15 + 5168);
      v24 = v16;
      v45 = a10;
      v25 = 1;
      v26 = v21;
      return pit_Q_dec(v25, v22, v26, 8, v24, v23, a8, a9, v45, v46, v47);
    }

    goto LABEL_148;
  }

  if (a5)
  {
    if (a5 == 128 && a2 <= 13200 && a6 == 3)
    {
      if (*a8 >= 50)
      {
        *a7 = 0;
      }

      goto LABEL_50;
    }
  }

  else
  {
    if (a6 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    if (a6 == 3 && a2 == 7200)
    {
      v28 = 0;
    }

    *a7 = v28;
  }

  if (a6 == 5)
  {
    v30 = a5 != 0 && a12 == 128;
    if (a5 != 0 && a12 == 128)
    {
      v31 = 64;
    }

    else
    {
      v31 = v16;
    }

    if (v31)
    {
      v32 = 6;
    }

    else
    {
      v32 = 10;
    }

    result = get_next_indice(result, v32);
    v33 = result;
    if (v30 && result >= 32)
    {
      v33 = result >> 1;
      *(v15 + 5168) = 1;
    }

    if (v15 + 5168 <= (v15 + 5170))
    {
      return pit_Q_dec(0, v33, v32, 4, v31, *a7, a8, a9, a10, a11, (v15 + 5168));
    }

    goto LABEL_148;
  }

LABEL_50:
  if (a4 != 256)
  {
    v35 = 5;
    if (a5 < 0)
    {
      v35 = 1;
    }

    if (a2 > 28999)
    {
      if (a2 > 30399)
      {
        switch(a2)
        {
          case 30400:
            v36 = 49;
            goto LABEL_112;
          case 32000:
            v36 = 56;
            goto LABEL_112;
          case 48000:
            v36 = 63;
            goto LABEL_112;
        }
      }

      else
      {
        switch(a2)
        {
          case 29000:
            v36 = 28;
            goto LABEL_112;
          case 29200:
            v36 = 35;
            goto LABEL_112;
          case 30200:
            v36 = 42;
LABEL_112:
            v37 = a6 == 3;
            if (a6 == 4)
            {
              v37 = 2;
            }

            v38 = &ACB_bits_16kHz_tbl[2 * (v36 + v37) * v35 + 2 * (((a5 + ((a5 >> 25) & 0x3F)) << 16) >> 22)];
            v39 = v38 + 2;
            if (v38 < ACB_bits_16kHz_tbl || v39 > FCB_bits_16kHz_tbl || v38 > v39)
            {
              goto LABEL_148;
            }

            v42 = *v38;
            result = get_next_indice(result, v42);
            v22 = result;
            if (a6 != 2)
            {
              if (v15 + 5168 <= (v15 + 5170))
              {
                return pit16k_Q_dec(result, v42, *a7, a8, a9, a10, a11, (v15 + 5168));
              }

              goto LABEL_148;
            }

            goto LABEL_144;
        }
      }

      goto LABEL_110;
    }

    if (a2 <= 16399)
    {
      if (a2 == 8000)
      {
        v36 = 0;
        goto LABEL_112;
      }

      if (a2 != 14800)
      {
        goto LABEL_110;
      }
    }

    else if (a2 != 16400)
    {
      if (a2 == 22600)
      {
        v36 = 14;
        goto LABEL_112;
      }

      if (a2 == 24400)
      {
        v36 = 21;
        goto LABEL_112;
      }

LABEL_110:
      v36 = 70;
      if (a2 != 64000)
      {
        v36 = -7;
      }

      goto LABEL_112;
    }

    v36 = 7;
    goto LABEL_112;
  }

  if (a2 > 24399)
  {
    if (a2 <= 30399)
    {
      if (a2 > 29199)
      {
        if (a2 == 29200)
        {
          v34 = 110;
          goto LABEL_137;
        }

        if (a2 == 30200)
        {
          v34 = 120;
          goto LABEL_137;
        }
      }

      else
      {
        if (a2 == 24400)
        {
          v34 = 90;
          goto LABEL_137;
        }

        if (a2 == 29000)
        {
          v34 = 100;
          goto LABEL_137;
        }
      }
    }

    else if (a2 <= 47999)
    {
      if (a2 == 30400)
      {
        v34 = 130;
        goto LABEL_137;
      }

      if (a2 == 32000)
      {
        v34 = 140;
        goto LABEL_137;
      }
    }

    else
    {
      switch(a2)
      {
        case 48000:
          v34 = 150;
          goto LABEL_137;
        case 64000:
          v34 = 160;
          goto LABEL_137;
        case 96000:
          v34 = 170;
          goto LABEL_137;
      }
    }
  }

  else if (a2 <= 12849)
  {
    if (a2 > 11599)
    {
      if (a2 == 11600)
      {
        v34 = 20;
        goto LABEL_137;
      }

      if (a2 == 12150)
      {
        v34 = 30;
        goto LABEL_137;
      }
    }

    else
    {
      if (a2 == 7200)
      {
        v34 = 0;
        goto LABEL_137;
      }

      if (a2 == 8000)
      {
        v34 = 10;
        goto LABEL_137;
      }
    }
  }

  else if (a2 <= 14799)
  {
    if (a2 == 12850)
    {
      v34 = 40;
      goto LABEL_137;
    }

    if (a2 == 13200)
    {
      v34 = 50;
      goto LABEL_137;
    }
  }

  else
  {
    switch(a2)
    {
      case 14800:
        v34 = 60;
        goto LABEL_137;
      case 16400:
        v34 = 70;
        goto LABEL_137;
      case 22600:
        v34 = 80;
        goto LABEL_137;
    }
  }

  if (a2 == 128000)
  {
    v34 = 180;
  }

  else
  {
    v34 = -10;
  }

LABEL_137:
  if (a6)
  {
    v43 = a6;
  }

  else
  {
    v43 = 3;
  }

  v44 = &ACB_bits_tbl[2 * ((v43 + v34 - 1) << (2 * (a5 != -1))) + 2 * ((a5 + ((a5 >> 25) & 0x3F)) >> 6)];
  if (v44 < ACB_bits_tbl || v44 + 2 > ACB_bits_16kHz_tbl || v44 > v44 + 2)
  {
    goto LABEL_148;
  }

  v42 = *v44;
  result = get_next_indice(result, v42);
  v22 = result;
  if (a6 != 2)
  {
    if (v15 + 5168 <= (v15 + 5170))
    {
      v23 = *a7;
      v46 = a11;
      v47 = (v15 + 5168);
      v24 = v16;
      v45 = a10;
      v25 = 0;
      v26 = v42;
      return pit_Q_dec(v25, v22, v26, 8, v24, v23, a8, a9, v45, v46, v47);
    }

    goto LABEL_148;
  }

LABEL_144:
  if (v15 + 5168 <= (v15 + 5170))
  {
    return pit_Q_dec(0, v22, v42, 4, v14, *a7, a8, a9, a10, a11, (v15 + 5168));
  }

LABEL_148:
  __break(0x5519u);
  return result;
}

void inov_decode(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned __int16 a6, int a7, int a8, float a9, float a10, float *a11, unint64_t a12, float *a13, unint64_t a14)
{
  if (a3)
  {
    v19 = a14 >= a13 && (a14 - a13) > 252;
    if (a2 > 14249)
    {
      if (a2 > 18249)
      {
        if (a2 == 18250)
        {
          if (v19)
          {
            v20 = 64;
            goto LABEL_58;
          }

          goto LABEL_179;
        }

        if (a2 == 19850)
        {
          if (v19)
          {
            v20 = 72;
            goto LABEL_58;
          }

          goto LABEL_179;
        }
      }

      else
      {
        if (a2 == 14250)
        {
          if (v19)
          {
            v20 = 44;
            goto LABEL_58;
          }

          goto LABEL_179;
        }

        if (a2 == 15850)
        {
          if (v19)
          {
            v20 = 52;
LABEL_58:
            v24 = a13;
            v25 = 1;
LABEL_59:
            dec_acelp_4t64(a1, v20, v24, v25);
            goto LABEL_154;
          }

          goto LABEL_179;
        }
      }

      goto LABEL_50;
    }

    if (a2 != 6600)
    {
      if (a2 == 8850)
      {
        if (v19)
        {
          v20 = 20;
          goto LABEL_58;
        }

        goto LABEL_179;
      }

      if (a2 == 12650)
      {
        if (v19)
        {
          v20 = 36;
          goto LABEL_58;
        }

LABEL_179:
        __break(0x5519u);
        return;
      }

LABEL_50:
      if (v19)
      {
        v20 = 88;
        goto LABEL_58;
      }

      goto LABEL_179;
    }

LABEL_152:
    if (v19)
    {
      dec_acelp_2t32(a1, a13);
      goto LABEL_154;
    }

    goto LABEL_179;
  }

  if (a4 != 256)
  {
    v22 = 5;
    if (a7 < 0)
    {
      v22 = 1;
    }

    if (a2 > 28999)
    {
      if (a2 > 30399)
      {
        switch(a2)
        {
          case 30400:
            v23 = 49;
            goto LABEL_95;
          case 32000:
            v23 = 56;
            goto LABEL_95;
          case 48000:
            v23 = 63;
            goto LABEL_95;
        }
      }

      else
      {
        switch(a2)
        {
          case 29000:
            v23 = 28;
            goto LABEL_95;
          case 29200:
            v23 = 35;
            goto LABEL_95;
          case 30200:
            v23 = 42;
            goto LABEL_95;
        }
      }

LABEL_93:
      v23 = 70;
      if (a2 != 64000)
      {
        v23 = -7;
      }

LABEL_95:
      v26 = a5 == 3;
      if (a5 == 4)
      {
        v26 = 2;
      }

      v27 = v23 + v26;
      if ((a8 >> 6) & 0xFFFC | (a8 << 10))
      {
        v28 = 4 * (a8 == 256);
      }

      else
      {
        v28 = ((a8 >> 6) | (a8 << 10));
      }

      v29 = (v27 + v28) * v22;
      v30 = (a7 + ((a7 >> 25) & 0x3F)) >> 6;
      if (a7 == -1)
      {
        v30 = 0;
      }

      v31 = &FCB_bits_16kHz_tbl[v30 + v29];
      v32 = v31 + 1;
      if (v31 < FCB_bits_16kHz_tbl || v32 > frac_4sf || v31 >= v32)
      {
        goto LABEL_179;
      }

      goto LABEL_134;
    }

    if (a2 <= 16399)
    {
      if (a2 == 8000)
      {
        v23 = 0;
        goto LABEL_95;
      }

      if (a2 != 14800)
      {
        goto LABEL_93;
      }
    }

    else if (a2 != 16400)
    {
      if (a2 == 22600)
      {
        v23 = 14;
        goto LABEL_95;
      }

      if (a2 == 24400)
      {
        v23 = 21;
        goto LABEL_95;
      }

      goto LABEL_93;
    }

    v23 = 7;
    goto LABEL_95;
  }

  if (a2 > 24399)
  {
    if (a2 <= 30399)
    {
      if (a2 > 29199)
      {
        if (a2 == 29200)
        {
          v21 = 110;
        }

        else
        {
          if (a2 != 30200)
          {
            goto LABEL_121;
          }

          v21 = 120;
        }
      }

      else if (a2 == 24400)
      {
        v21 = 90;
      }

      else
      {
        if (a2 != 29000)
        {
          goto LABEL_121;
        }

        v21 = 100;
      }
    }

    else if (a2 <= 47999)
    {
      if (a2 == 30400)
      {
        v21 = 130;
      }

      else
      {
        if (a2 != 32000)
        {
          goto LABEL_121;
        }

        v21 = 140;
      }
    }

    else
    {
      switch(a2)
      {
        case 48000:
          v21 = 150;
          break;
        case 64000:
          v21 = 160;
          break;
        case 96000:
          v21 = 170;
          break;
        default:
          goto LABEL_121;
      }
    }
  }

  else if (a2 <= 12849)
  {
    if (a2 > 11599)
    {
      if (a2 == 11600)
      {
        v21 = 20;
      }

      else
      {
        if (a2 != 12150)
        {
          goto LABEL_121;
        }

        v21 = 30;
      }
    }

    else if (a2 == 7200)
    {
      v21 = 0;
    }

    else
    {
      if (a2 != 8000)
      {
        goto LABEL_121;
      }

      v21 = 10;
    }
  }

  else if (a2 <= 14799)
  {
    if (a2 == 12850)
    {
      v21 = 40;
    }

    else
    {
      if (a2 != 13200)
      {
        goto LABEL_121;
      }

      v21 = 50;
    }
  }

  else
  {
    switch(a2)
    {
      case 14800:
        v21 = 60;
        break;
      case 16400:
        v21 = 70;
        break;
      case 22600:
        v21 = 80;
        break;
      default:
LABEL_121:
        if (a2 == 128000)
        {
          v21 = 180;
        }

        else
        {
          v21 = -10;
        }

        break;
    }
  }

  if (a5)
  {
    v35 = a5;
  }

  else
  {
    v35 = 3;
  }

  if (a8 < 2)
  {
    v36 = 0;
    goto LABEL_129;
  }

  if (a8 > 63)
  {
    switch(a8)
    {
      case 64:
        v36 = 4;
        goto LABEL_129;
      case 128:
        v36 = 5;
        goto LABEL_129;
      case 192:
        v36 = 6;
        goto LABEL_129;
    }
  }

  else
  {
    switch(a8)
    {
      case 2:
        v36 = 1;
        goto LABEL_129;
      case 3:
        v36 = 2;
        goto LABEL_129;
      case 4:
        v36 = 3;
        goto LABEL_129;
    }
  }

  if (a8 == 256)
  {
    v36 = 7;
  }

  else
  {
    v36 = 0;
  }

LABEL_129:
  v37 = (v35 + v21 + v36 - 1) << (2 * (a7 != -1));
  v38 = ((a7 + ((a7 >> 25) & 0x3F)) << 16) >> 22;
  if (a7 == -1)
  {
    v38 = 0;
  }

  v31 = &FCB_bits_tbl[v38 + v37];
  if (v31 < FCB_bits_tbl || v31 + 1 > gain_bits_tbl || v31 > v31 + 1)
  {
    goto LABEL_179;
  }

LABEL_134:
  v39 = *v31;
  v19 = a14 >= a13 && (a14 - a13) > 252;
  if (v39 == 12)
  {
    goto LABEL_152;
  }

  if (v39 != 7)
  {
    if (v19)
    {
      v20 = v39;
      v24 = a13;
      v25 = 0;
      goto LABEL_59;
    }

    goto LABEL_179;
  }

  if (!v19)
  {
    goto LABEL_179;
  }

  next_indice = get_next_indice(a1, 7);
  v42 = next_indice;
  v43 = next_indice <= 63 ? next_indice : next_indice - 64;
  __A = 0.0;
  vDSP_vfill(&__A, a13, 1, 0x40uLL);
  v44 = &a13[v43];
  if (v44 < a13 || v44 + 1 > a13 + 64 || v44 > v44 + 1)
  {
    goto LABEL_179;
  }

  v45 = -1.0;
  if (v42 > 63)
  {
    v45 = 1.0;
  }

  *v44 = v45;
LABEL_154:
  if ((a12 - a11) < 65 || a12 < a11)
  {
    goto LABEL_179;
  }

  v46 = 0.8;
  v47 = flt_19B0B0068[a4 == 256];
  if (a4 == 256)
  {
    v46 = 0.75;
  }

  cb_shape(1, 1, 0, a6, 0, a11, a13, v46, v47, a9, a10);
}

void gain_dec_mless(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, const float *a7, float *a8, float a9, float *a10, float *a11, float *a12)
{
  if (a3 != 256)
  {
    v17 = 5;
    if (a5 < 0)
    {
      v17 = 1;
    }

    if (a2 <= 28999)
    {
      if (a2 <= 16399)
      {
        if (a2 == 8000)
        {
          v18 = 0;
          goto LABEL_55;
        }

        if (a2 != 14800)
        {
          goto LABEL_54;
        }
      }

      else if (a2 != 16400)
      {
        if (a2 == 22600)
        {
          v18 = 14;
          goto LABEL_55;
        }

        if (a2 == 24400)
        {
          v18 = 21;
LABEL_55:
          v19 = a4 == 3;
          if (a4 == 4)
          {
            v19 = 2;
          }

          v20 = v18 + v19;
          if ((a6 >> 6) & 0xFFFC | (a6 << 10))
          {
            v21 = 4 * (a6 == 256);
          }

          else
          {
            v21 = ((a6 >> 6) | (a6 << 10));
          }

          v22 = (v20 + v21) * v17;
          v23 = (a5 + ((a5 >> 25) & 0x3F)) >> 6;
          if (a5 == -1)
          {
            v23 = 0;
          }

          v24 = &gain_bits_16kHz_tbl[v23 + v22];
          v25 = v24 + 1;
          if (v24 < gain_bits_16kHz_tbl || v25 > &word_19B3773F2 || v24 >= v25)
          {
            goto LABEL_136;
          }

          v28 = *v24;
          if (a5 == 256 && a3 == 320 && a6 == 256)
          {
            goto LABEL_94;
          }

          goto LABEL_95;
        }

        goto LABEL_54;
      }

      v18 = 7;
      goto LABEL_55;
    }

    if (a2 <= 30199)
    {
      if (a2 == 29000)
      {
        v18 = 28;
        goto LABEL_55;
      }

      if (a2 == 29200)
      {
        v18 = 35;
        goto LABEL_55;
      }
    }

    else
    {
      switch(a2)
      {
        case 30200:
          v18 = 42;
          goto LABEL_55;
        case 30400:
          v18 = 49;
          goto LABEL_55;
        case 32000:
          v18 = 56;
          goto LABEL_55;
      }
    }

LABEL_54:
    v18 = -7;
    goto LABEL_55;
  }

  if (a2 > 16399)
  {
    if (a2 > 29199)
    {
      if (a2 > 30399)
      {
        if (a2 == 30400)
        {
          v16 = 130;
          goto LABEL_82;
        }

        if (a2 == 32000)
        {
          v16 = 140;
          goto LABEL_82;
        }
      }

      else
      {
        if (a2 == 29200)
        {
          v16 = 110;
          goto LABEL_82;
        }

        if (a2 == 30200)
        {
          v16 = 120;
          goto LABEL_82;
        }
      }
    }

    else if (a2 > 24399)
    {
      if (a2 == 24400)
      {
        v16 = 90;
        goto LABEL_82;
      }

      if (a2 == 29000)
      {
        v16 = 100;
        goto LABEL_82;
      }
    }

    else
    {
      if (a2 == 16400)
      {
        v16 = 70;
        goto LABEL_82;
      }

      if (a2 == 22600)
      {
        v16 = 80;
        goto LABEL_82;
      }
    }

    goto LABEL_80;
  }

  if (a2 > 12149)
  {
    if (a2 > 13199)
    {
      if (a2 == 13200)
      {
        v16 = 50;
        goto LABEL_82;
      }

      if (a2 == 14800)
      {
        v16 = 60;
        goto LABEL_82;
      }
    }

    else
    {
      if (a2 == 12150)
      {
        v16 = 30;
        goto LABEL_82;
      }

      if (a2 == 12850)
      {
        v16 = 40;
        goto LABEL_82;
      }
    }

LABEL_80:
    v16 = -10;
    goto LABEL_82;
  }

  if (a2 != 7200)
  {
    if (a2 == 8000)
    {
      v16 = 10;
      goto LABEL_82;
    }

    if (a2 == 11600)
    {
      v16 = 20;
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v16 = 0;
LABEL_82:
  if (a4)
  {
    v29 = a4;
  }

  else
  {
    v29 = 3;
  }

  if (a6 >= 2)
  {
    if (a6 > 63)
    {
      switch(a6)
      {
        case 64:
          v30 = 4;
          goto LABEL_87;
        case 128:
          v30 = 5;
          goto LABEL_87;
        case 192:
          v30 = 6;
          goto LABEL_87;
      }
    }

    else
    {
      switch(a6)
      {
        case 2:
          v30 = 1;
          goto LABEL_87;
        case 3:
          v30 = 2;
          goto LABEL_87;
        case 4:
          v30 = 3;
          goto LABEL_87;
      }
    }

    if (a6 == 256)
    {
      v30 = 7;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_87;
  }

  v30 = 0;
LABEL_87:
  v31 = (v29 + v16 + v30 - 1) << (2 * (a5 != -1));
  v32 = ((a5 + ((a5 >> 25) & 0x3F)) << 16) >> 22;
  if (a5 == -1)
  {
    v32 = 0;
  }

  v33 = &gain_bits_tbl[v32 + v31];
  if (v33 < gain_bits_tbl || v33 + 1 > &gaus_dico || v33 > v33 + 1)
  {
    goto LABEL_136;
  }

  v28 = *v33;
  if (a5 == 192 && a6 == 192)
  {
LABEL_94:
    v34 = v28;
    *a8 = (get_next_indice(a1, v28 >> 1) * (0.85 / ~(-1 << (v28 >> 1)))) + 0.1;
    __C = NAN;
    vDSP_dotpr(a7, 1, a7, 1, &__C, 0x40uLL);
    v35 = (__C + 0.01) * 0.015625;
    *a11 = 1.0 / sqrtf(v35);
    v36 = log10(v35);
    v37 = __exp10((a9 + (v36 * -10.0)) * 0.05);
    next_indice = get_next_indice(a1, (v34 + 1) >> 1);
    v39 = ((0x10000 << ((v34 + 1) >> 1) >> 16) - 1) / 1.83463258;
    v40 = __exp10(((next_indice / v39) + -0.22185));
    v41 = v40 * v37;
LABEL_124:
    *a10 = v41;
    *a12 = v41 / *a11;
    return;
  }

LABEL_95:
  if ((v28 - 5) > 2)
  {
    v44 = &gain_qua_mless_6b;
    v43 = &gain_qua_mless_5b;
  }

  else
  {
    v42 = (v28 - 5);
    v43 = *(&off_1E752F9E0 + v42);
    v44 = *(&off_1E752F9F8 + v42);
  }

  if (a4)
  {
    v45 = 0;
  }

  else
  {
    v45 = v28 == 6;
  }

  v46 = v45;
  v47 = get_next_indice(a1, (v28 - v46));
  v48 = &v44[2 * v47];
  v49 = v48 + 1;
  if (v48 >= v44 && v49 <= v43 && v48 < v49)
  {
    v52 = 2 * v47;
    *a8 = *v48;
    v62 = NAN;
    vDSP_dotpr(a7, 1, a7, 1, &v62, 0x40uLL);
    v53 = (v62 + 0.01) * 0.015625;
    *a11 = 1.0 / sqrtf(v53);
    v54 = &v44[v52];
    v55 = (v54 + 1);
    v56 = (v54 + 2);
    v57 = v55 < v44 || v56 > v43;
    if (!v57 && v55 <= v56)
    {
      v59 = log10(v53);
      v60 = __exp10((a9 + (v59 * -10.0)) * 0.05);
      v41 = *v55 * v60;
      goto LABEL_124;
    }
  }

LABEL_136:
  __break(0x5519u);
}

void AGC_dec(const float *a1, float *a2, int a3)
{
  v5 = a1;
  __C = NAN;
  v6 = a3;
  vDSP_maxmgv(a1, 1, &__C, a3);
  v7 = 0.0;
  if (__C > 30000.0)
  {
    v7 = ((-15000.0 / __C) + 0.5) * 0.01;
  }

  v8 = *a2;
  v9 = a2[1];
  if (a3 >= 1)
  {
    do
    {
      v8 = v7 + (v8 * 0.99);
      v10 = -(v8 * v9);
      v9 = *v5;
      v11 = v10 + ((1.0 - v8) * *v5);
      v12 = 32767.0;
      if (v11 <= 32767.0)
      {
        v12 = v11;
        if (v11 < -32768.0)
        {
          v12 = -32768.0;
        }
      }

      *v5++ = vcvtms_s32_f32(v12 + 0.5);
      --v6;
    }

    while (v6);
  }

  *a2 = v8;
  a2[1] = v9;
}

void *bass_psfilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, __int16 a10, float *a11, float *a12, _WORD *a13, _WORD *a14, float *a15, __int16 a16, unint64_t a17, unint64_t a18)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = v19;
  v278 = v21;
  v279 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v276 = v18;
  *v294 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(__X, 255, sizeof(__X));
  v289 = -21846;
  v288 = 0xAAAAAAAAAAAAAAAALL;
  v285 = NAN;
  v286 = NAN;
  memset(&__dst[290], 255, 0x988uLL);
  v275 = v24;
  memcpy(__dst, v24, 0x488uLL);
  v31 = __memcpy_chk();
  if (v31 > v31 + 4 * v30)
  {
    goto LABEL_384;
  }

  v274 = v30;
  v32 = v30 >> 6;
  if (v28)
  {
    v33 = a10 == 0;
  }

  else
  {
    v33 = 0;
  }

  v34 = !v33;
  if (v33)
  {
    v35 = a12 + 9;
    v36 = 10;
    v37 = 8;
    do
    {
      v38 = &a12[v37];
      v39 = (v38 + 1);
      if (v38 < a12 || v39 > (a12 + 10) || v38 > v39 || v35 < a12 || v35 > v35 + 1)
      {
        goto LABEL_384;
      }

      *v35-- = *v38;
      --v36;
      --v37;
    }

    while (v36 > 1);
    if (v26 < v28 || v32 > (v26 - v28) >> 2)
    {
LABEL_384:
      __break(0x5519u);
    }

    v44 = 0.0;
    if (v30 >= 0x40)
    {
      v45 = v28;
      v46 = v30 >> 6;
      do
      {
        v47 = *v45++;
        v44 = v44 + v47;
        --v46;
      }

      while (v46);
    }

    *a12 = v44 / v32;
  }

  v280 = v30;
  v48 = minimum(a12, 10, &v285);
  v49 = maximum(a12, 10, &v286);
  v50 = 0;
  v51 = 0;
  v52 = v49 - v48;
  if ((v49 - v48) < 0)
  {
    v52 = v48 - v49;
  }

  v53 = v286 - v285;
  if (v30 == 320)
  {
    v53 = (v286 - v285) * 0.8;
  }

  v55 = v53 < 10.0 && v53 >= 2.0;
  v56 = v52 > 2 && a16 != 0 && v55;
  v277 = v56;
  do
  {
    v51 += a13[v50++];
  }

  while (v50 != 10);
  v57 = 0;
  v58 = 0;
  v59 = a14;
  do
  {
    v58 += a14[v57++];
  }

  while (v57 != 10);
  v60 = 1.0;
  if (v277)
  {
    v60 = ((v58 * v58) * -0.009) + 1.0;
  }

  v61 = (1.0 - (v51 / 10.0)) * v60;
  if (v61 < 0.1)
  {
    v61 = 0.1;
  }

  if (v61 <= *a15)
  {
    v62 = (*a15 * 0.6) + (v61 * 0.4);
  }

  else
  {
    v62 = (*a15 * 0.95) + (v61 * 0.05);
  }

  *a15 = v62;
  v63 = 8;
  if (v34)
  {
    v64 = 5;
    v65 = &v288;
    do
    {
      v66 = v65 + 2;
      if (v65 < &v288 || v66 > v290 || v65 > v66)
      {
        goto LABEL_384;
      }

      *v65 = 0;
      v65 = (v65 + 2);
      --v64;
    }

    while (v64);
    v69 = 0;
    v70 = &__dst[v30];
    v71 = 80;
    while (1)
    {
      v72 = &v70[v69 + 290];
      v73 = &v70[v69 + 210];
      v74 = &v70[v69 + 211];
      v75 = v73 < __dst || v74 > v294;
      v76 = v75 || v73 > v74;
      v77 = &v70[v69 + 291];
      v78 = !v76 && v72 >= __dst;
      v79 = !v78 || v77 > v294;
      if (v79 || v72 > v77)
      {
        goto LABEL_384;
      }

      *v72 = *v73;
      if (++v69 == 290)
      {
        goto LABEL_120;
      }
    }
  }

  if (v30 > 63)
  {
    v81 = v28;
    v82 = &v288;
    for (i = v30 >> 6; i; --i)
    {
      if (v81 < v28 || (v81 + 1) > v26 || v81 > v81 + 1 || v82 < &v288 || v82 + 2 > v290 || v82 > (v82 + 2))
      {
        goto LABEL_384;
      }

      v84 = (*v81 + 0.5);
      *v82 = v84;
      if (v30 == 320)
      {
        if (v84 > 290)
        {
          v85 = 290;
LABEL_97:
          *v82 = v85;
        }
      }

      else if (v84 >= 232)
      {
        v85 = 231;
        goto LABEL_97;
      }

      v82 = (v82 + 2);
      ++v81;
    }
  }

  v86 = &v288 + v32;
  v87 = (v86 - 1);
  if (v86 - 1 < &v288 || v86 > v290 || v87 > v86)
  {
    goto LABEL_384;
  }

  v88 = 0;
  v89 = &__dst[v30];
  v90 = __dst + 4 * v30 - 4 * *v87;
  v71 = 1;
  do
  {
    v91 = &v90[v88 * 4 + 1160];
    v92 = &v90[v88 * 4 + 1164];
    v94 = v91 < __dst || v92 > v294 || v91 > v92;
    v95 = &v89[v88 + 290];
    v96 = &v89[v88 + 291];
    if (v94 || v95 < __dst || v96 > v294 || v95 > v96)
    {
      goto LABEL_384;
    }

    *v95 = *v91;
    ++v88;
  }

  while (v88 != 290);
LABEL_120:
  if (v30 >= 1)
  {
    v100 = 0;
    v281 = 0;
    v283 = 0;
    v284 = &__dst[170];
    v101 = __b;
    v102 = __dst;
    v103 = &__dst[v71];
    v104 = &__dst[-v71];
    while (1)
    {
      v105 = (&v288 + (v100 >> 5));
      v106 = (v105 + 2);
      if (v105 < &v288 || v106 > v290 || v105 > v106)
      {
        goto LABEL_384;
      }

      v109 = *v105;
      v110 = &__b[v100];
      v282 = v100;
      if (*v105)
      {
        break;
      }

      for (j = 0; j != 64; ++j)
      {
        v205 = &v104[j + 290];
        v206 = &v104[j + 291];
        v208 = v205 < __dst || v206 > v294 || v205 > v206;
        v209 = &v103[j + 290];
        v210 = &v103[j + 291];
        v213 = v208 || v209 < __dst || v210 > v294 || v209 > v210;
        v214 = &v101[j];
        v215 = &v101[j + 1];
        if (v213 || v214 < __b || v215 > __dst || v214 > v215)
        {
          goto LABEL_384;
        }

        *v214 = (*v205 + *v209) * 0.5;
      }

      v219 = 0;
      v220 = 0.0001;
      do
      {
        v221 = &v102[v219 + 290];
        v222 = &v102[v219 + 291];
        v224 = v221 < __dst || v222 > v294 || v221 > v222;
        v225 = &v101[v219];
        v226 = &v101[v219 + 1];
        if (v224 || v225 < __b || v226 > __dst || v225 > v226)
        {
          goto LABEL_384;
        }

        v220 = v220 + (*v221 * *v225);
        ++v219;
      }

      while (v219 != 64);
      v230 = 0;
      v231 = 0.0001;
      do
      {
        v232 = &v101[v230];
        if (&v101[v230] < __b)
        {
          goto LABEL_384;
        }

        if (v232 + 1 > __dst || v232 > v232 + 1)
        {
          goto LABEL_384;
        }

        v231 = v231 + (*v232 * *v232);
        ++v230;
      }

      while (v230 != 64);
      v234 = 0;
      v235 = -v220 / v231;
      do
      {
        v236 = &v102[v234 + 290];
        v237 = &v102[v234 + 291];
        v239 = v236 < __dst || v237 > v294 || v236 > v237;
        v240 = &v101[v234];
        v241 = &v101[v234 + 1];
        if (v239 || v240 < __b || v241 > __dst || v240 > v241)
        {
          goto LABEL_384;
        }

        __X[v234++] = *v236 + (v235 * *v240);
      }

      while (v234 != 64);
      *a11 = (*a11 * 0.2) + (v20 * 0.8);
      if (v110 < __b)
      {
        goto LABEL_384;
      }

      __A = 0.0;
      vDSP_vfill(&__A, v110, 1, 0x40uLL);
      v281 = a16 == 5;
LABEL_349:
      deemph_opt(__X, v279, 64, v278, 0.9);
      v245 = 0;
      v246 = 0.0001;
      do
      {
        v247 = vmulq_f32(*&__X[v245], *&__X[v245]);
        v246 = (((v246 + v247.f32[0]) + v247.f32[1]) + v247.f32[2]) + v247.f32[3];
        v245 += 4;
      }

      while (v245 != 64);
      v248 = log10(v246) * 10.0;
      v59 = a14;
      *a9 = (v248 * 0.01) + (*a9 * 0.99);
      v249 = (a17 + 4 * v282);
      v63 = 8;
      if (a18 - v249 < 0x100)
      {
        goto LABEL_384;
      }

      if (v249 < a17)
      {
        goto LABEL_384;
      }

      if (v249 > a18)
      {
        goto LABEL_384;
      }

      if (v282 == 320)
      {
        goto LABEL_384;
      }

      if (v110 > __dst)
      {
        goto LABEL_384;
      }

      if (__b > v110)
      {
        goto LABEL_384;
      }

      v250 = *v110;
      v251 = *(v110 + 1);
      v252 = *(v110 + 3);
      v249[2] = *(v110 + 2);
      v249[3] = v252;
      *v249 = v250;
      v249[1] = v251;
      v253 = *(v110 + 4);
      v254 = *(v110 + 5);
      v255 = *(v110 + 7);
      v249[6] = *(v110 + 6);
      v249[7] = v255;
      v249[4] = v253;
      v249[5] = v254;
      v256 = *(v110 + 8);
      v257 = *(v110 + 9);
      v258 = *(v110 + 11);
      v249[10] = *(v110 + 10);
      v249[11] = v258;
      v249[8] = v256;
      v249[9] = v257;
      v259 = *(v110 + 12);
      v260 = *(v110 + 13);
      v261 = *(v110 + 15);
      v249[14] = *(v110 + 14);
      v249[15] = v261;
      v249[12] = v259;
      v249[13] = v260;
      if (v249 >= v249 + 16)
      {
        goto LABEL_384;
      }

      v100 = v282 + 64;
      v283 += 256;
      v284 += 64;
      v102 += 64;
      v101 += 64;
      v103 += 64;
      v104 += 64;
      if (v282 + 64 >= v280)
      {
        goto LABEL_361;
      }
    }

    v111 = v109;
    if (v276 && v109 >= 34)
    {
      v112 = v109 >> 1;
      v113 = v284;
      v114 = 280;
      v115 = 0.01;
      do
      {
        v116 = v113 + 1;
        if (v113 < __dst || v116 > v294 || v113 > v116)
        {
          goto LABEL_384;
        }

        v119 = *v113++;
        v115 = v115 + (v119 * v119);
        --v114;
      }

      while (v114);
      v120 = v109 >> 1;
      v121 = v283;
      v122 = v283 - 4 * v120;
      v123 = 280;
      v124 = 0.01;
      do
      {
        v125 = (&__dst[170] + v121);
        v126 = (&__dst[171] + v121);
        v128 = v125 < __dst || v126 > v294 || v125 > v126;
        v129 = (&__dst[170] + v122);
        v130 = (&__dst[171] + v122);
        if (v128 || v129 < __dst || v130 > v294 || v129 > v130)
        {
          goto LABEL_384;
        }

        v124 = v124 + (*v125 * *v129);
        v122 += 4;
        v121 += 4;
        --v123;
      }

      while (v123);
      v134 = 0;
      v135 = &v102[-v120];
      v136 = 0.01;
      do
      {
        v137 = &v135[v134 + 170];
        v138 = &v135[v134 + 171];
        if (v137 < __dst || v138 > v294 || v137 > v138)
        {
          goto LABEL_384;
        }

        v136 = v136 + (*v137 * *v137);
        ++v134;
      }

      while (v134 != 280);
      if ((v124 / sqrtf(v115 * v136)) <= 0.95)
      {
        v112 = v111;
      }

      v33 = v112 == v111;
      v111 = v281;
      if (!v33)
      {
        v111 = 1;
      }

      v281 = v111;
      LOWORD(v111) = v112;
    }

    v141 = 0;
    v142 = &v102[v111];
    v143 = &v102[-v111];
    do
    {
      v144 = &v143[v141 + 290];
      v145 = &v143[v141 + 291];
      v147 = v144 < __dst || v145 > v294 || v144 > v145;
      v148 = &v142[v141 + 290];
      v149 = &v142[v141 + 291];
      v152 = v147 || v148 < __dst || v149 > v294 || v148 > v149;
      v153 = &v101[v141];
      v154 = &v101[v141 + 1];
      if (v152 || v153 < __b || v154 > __dst || v153 > v154)
      {
        goto LABEL_384;
      }

      *v153 = (*v144 + *v148) * 0.5;
      ++v141;
    }

    while (v141 != 64);
    v158 = 0;
    v159 = 0.0001;
    do
    {
      v160 = &v102[v158 + 290];
      v161 = &v102[v158 + 291];
      v163 = v160 < __dst || v161 > v294 || v160 > v161;
      v164 = &v101[v158];
      v165 = &v101[v158 + 1];
      if (v163 || v164 < __b || v165 > __dst || v164 > v165)
      {
        goto LABEL_384;
      }

      v159 = v159 + (*v160 * *v164);
      ++v158;
    }

    while (v158 != 64);
    v169 = 0;
    v170 = 0.0001;
    do
    {
      v171 = &v101[v169];
      if (&v101[v169] < __b)
      {
        goto LABEL_384;
      }

      if (v171 + 1 > __dst || v171 > v171 + 1)
      {
        goto LABEL_384;
      }

      v170 = v170 + (*v171 * *v171);
      ++v169;
    }

    while (v169 != 64);
    for (k = 0; k != 64; ++k)
    {
      v174 = &v102[k + 290];
      v175 = &v102[k + 291];
      v177 = v174 < __dst || v175 > v294 || v174 > v175;
      v178 = &v101[k];
      v179 = &v101[k + 1];
      if (v177 || v178 < __b || v179 > __dst || v178 > v179)
      {
        goto LABEL_384;
      }

      __X[k] = *v174 + ((-v159 / v170) * *v178);
    }

    v183 = v170;
    v184 = __exp10(*a9 * 0.1);
    v185 = 0;
    *&v184 = v184 + v183;
    v186 = v159 / *&v184;
    if (v186 > 0.5)
    {
      v186 = 0.5;
    }

    v187 = *a15 * v186;
    v188 = 0.4;
    if ((v277 & (v187 > 0.4)) == 0)
    {
      v188 = v187;
    }

    if (!v281 || v187 <= 0.3)
    {
      v190 = v188;
    }

    else
    {
      v190 = 0.3;
    }

    if (v190 < 0.0)
    {
      v190 = 0.0;
    }

    v191 = (*a11 * 0.2) + (v20 * 0.8);
    *a11 = v191;
    v192 = vabds_f32(v191, v20);
    v193 = fabsf(sqrtf(v20));
    if (v20 == -INFINITY)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = v193;
    }

    v194 = (((v20 * 0.15) + 1.0) + (v192 * -2.0)) * v190;
    while (1)
    {
      v195 = &v102[v185 + 290];
      v196 = &v102[v185 + 291];
      v197 = v195 < __dst || v196 > v294;
      v198 = v197 || v195 > v196;
      v199 = &v101[v185];
      v200 = &v101[v185 + 1];
      v201 = !v198 && v199 >= __b;
      v202 = !v201 || v200 > __dst;
      if (v202 || v199 > v200)
      {
        goto LABEL_384;
      }

      *v199 = v194 * (*v195 - *v199);
      if (++v185 == 64)
      {
        goto LABEL_349;
      }
    }
  }

  LOWORD(v281) = 0;
LABEL_361:
  v262 = 0;
  for (m = 10; m > 1; --m)
  {
    v264 = &a13[v63];
    v265 = (v264 + 1);
    v267 = v264 < a13 || v265 > (a13 + 10) || v264 > v265;
    v268 = &a13[v262 + 9];
    if (v267 || v268 < a13 || v268 > &a13[v262 + 10])
    {
      goto LABEL_384;
    }

    *v268 = *v264;
    v271 = &v59[v63];
    if (v271 < v59)
    {
      goto LABEL_384;
    }

    if (v271 + 1 > v59 + 10)
    {
      goto LABEL_384;
    }

    if (v271 > v271 + 1)
    {
      goto LABEL_384;
    }

    v272 = &v59[v262 + 9];
    if (v272 < v59 || v272 > &v59[v262 + 10])
    {
      goto LABEL_384;
    }

    *v272 = *v271;
    --v262;
    --v63;
  }

  *a13 = v281;
  *v59 = v277;
  if (&__dst[v274] > v294)
  {
    goto LABEL_384;
  }

  if (__dst > &__dst[v274])
  {
    goto LABEL_384;
  }

  result = memcpy(v275, &__dst[v274], 0x488uLL);
  if (v275 + 1160 < v275)
  {
    goto LABEL_384;
  }

  return result;
}

void *cldfb_save_memory(void *result)
{
  if (!*(result + 28))
  {
    v1 = *(result + 2) - *result + *(result + 1) * *result;
    if (*(result + 3))
    {
      v1 = *(result + 2);
    }

    *(result + 28) = v1;
    v2 = *(result + 15);
    if (v2 < *(result + 17) || (v3 = *(result + 11), v3 < *(result + 13)) || v1 >= 1 && ((v4 = *(result + 12), v8 = v4 >= v3, v5 = v4 - v3, !v8) || (v6 = *(result + 16), v2 > v6) || ((v7 = 4 * (v1 & 0x7FFFu), v6 - v2 >= v7) ? (v8 = v5 >= v7) : (v8 = 0), !v8 || (result = memmove(*(result + 11), v2, v7), v3 + v7 < v3))))
    {
      __break(0x5519u);
    }
  }

  return result;
}

unint64_t cldfb_restore_memory(unint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    v2 = result;
    if (*(result + 12))
    {
      v3 = *(result + 8);
    }

    else
    {
      v3 = *(result + 8) - *result + *(result + 4) * *result;
    }

    v4 = *(result + 88);
    if (v4 < *(result + 104))
    {
      goto LABEL_25;
    }

    v5 = *(result + 120);
    if (v5 < *(result + 136))
    {
      goto LABEL_25;
    }

    if (v1 >= 1)
    {
      v6 = *(result + 128);
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        goto LABEL_25;
      }

      v9 = *(result + 96);
      if (v4 > v9)
      {
        goto LABEL_25;
      }

      v10 = 4 * (v1 & 0x7FFF);
      if (v9 - v4 < v10)
      {
        goto LABEL_25;
      }

      if (v8 < v10)
      {
        goto LABEL_25;
      }

      result = memmove(*(result + 120), v4, 4 * (v1 & 0x7FFF));
      if (v5 + v10 < v5)
      {
        goto LABEL_25;
      }

      v1 = *(v2 + 112);
    }

    if (v1 == v3)
    {
LABEL_23:
      *(v2 + 112) = 0;
      return result;
    }

    result = *(v2 + 120);
    v11 = *(v2 + 128);
    if (result <= v11 && *(v2 + 136) <= result && (v3 & 0x80000000) == 0)
    {
      v12 = (v11 - result) >> 2;
      if (v12 >= v3 && (v1 & 0x80000000) == 0 && v12 >= v1)
      {
        result = lerp(result, *(v2 + 120), v3, v1);
        goto LABEL_23;
      }
    }

LABEL_25:
    __break(0x5519u);
  }

  return result;
}

void dec_acelp_2t32(uint64_t a1, float *a2)
{
  next_indice = get_next_indice(a1, 12);
  v4 = (a2 + 64);
  __A = 0.0;
  vDSP_vfill(&__A, a2, 1, 0x40uLL);
  v5 = &a2[(next_indice >> 5) & 0x3E];
  v6 = v5 + 1;
  if (v5 < a2 || v6 > v4 || v5 >= v6)
  {
    goto LABEL_16;
  }

  v9 = -1.0;
  if ((next_indice & 0x800) == 0)
  {
    v9 = 1.0;
  }

  *v5 = v9;
  v10 = &a2[(2 * (next_indice & 0x1F)) | 1];
  if (v10 < a2 || (v10 + 1) > v4 || v10 > v10 + 1)
  {
LABEL_16:
    __break(0x5519u);
  }

  else
  {
    v11 = -1.0;
    if ((next_indice & 0x20) == 0)
    {
      v11 = 1.0;
    }

    *v10 = v11;
  }
}

void dec_acelp_4t64(uint64_t a1, int a2, float *__C, int a4)
{
  *&v73[2] = *MEMORY[0x1E69E9840];
  memset(v72, 0, sizeof(v72));
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71[0] = v7;
  v71[1] = v7;
  v70[0] = v7;
  v70[1] = v7;
  memset(v69, 170, sizeof(v69));
  if (!a4)
  {
    if (a2 <= 42)
    {
      switch(a2)
      {
        case 20:
          v11 = 4;
          goto LABEL_94;
        case 28:
          v11 = 6;
          goto LABEL_94;
        case 36:
          v11 = 8;
          goto LABEL_94;
      }
    }

    else if (a2 > 61)
    {
      if (a2 == 62)
      {
        v11 = 16;
        goto LABEL_94;
      }

      if (a2 == 87)
      {
        v11 = 26;
        goto LABEL_94;
      }
    }

    else
    {
      if (a2 == 43)
      {
        v11 = 10;
        goto LABEL_94;
      }

      if (a2 == 50)
      {
        v11 = 12;
LABEL_94:
        v52 = a2 >> 4;
        v53 = a2 & 0xF;
        goto LABEL_95;
      }
    }

    v11 = 0;
    v52 = a2 >> 4;
    v53 = a2 & 0xF;
    if (a2 >> 4 < 1)
    {
      v54 = 0;
      goto LABEL_105;
    }

LABEL_95:
    v55 = 0;
    do
    {
      next_indice = get_next_indice(a1, 16);
      v57 = v69 + v55;
      v58 = v57 + 1;
      if (v57 < v69 || v58 > v70 || v57 >= v58)
      {
        goto LABEL_113;
      }

      *v57 = next_indice;
      ++v55;
    }

    while (v52 > v55);
    v54 = v55;
LABEL_105:
    if (v53)
    {
      v61 = get_next_indice(a1, v53);
      v62 = v69 + v54;
      if (v62 < v69 || v62 + 1 > v70 || v62 > v62 + 1)
      {
        goto LABEL_113;
      }

      *v62 = v61;
    }

    if (a1 + 5168 <= (a1 + 5170))
    {
      v63 = a2;
      v64 = 0;
      v65 = v11;
      v66 = 0u;
      v67 = 0u;
      memset(v68, 0, sizeof(v68));
      D_ACELP_indexing(__C, (__C + 64), &v63, v69, v70, (a1 + 5168));
      return;
    }

LABEL_113:
    __break(0x5519u);
  }

  *(__C + 14) = 0u;
  *(__C + 15) = 0u;
  *(__C + 12) = 0u;
  *(__C + 13) = 0u;
  *(__C + 10) = 0u;
  *(__C + 11) = 0u;
  *(__C + 8) = 0u;
  *(__C + 9) = 0u;
  *(__C + 6) = 0u;
  *(__C + 7) = 0u;
  *(__C + 4) = 0u;
  *(__C + 5) = 0u;
  *(__C + 2) = 0u;
  *(__C + 3) = 0u;
  *__C = 0u;
  *(__C + 1) = 0u;
  if (a2 <= 51)
  {
    switch(a2)
    {
      case 20:
        v34 = 0;
        do
        {
          LOBYTE(v72[0]) = get_next_indice(a1, 5) & 0x1F;
          v72[0] = LOBYTE(v72[0]);
          add_pulses(v72, 1, v34, __C, (__C + 64));
          v35 = v34++;
        }

        while (v35 < 3);
        break;
      case 36:
        v49 = 0;
        do
        {
          v50 = get_next_indice(a1, 9);
          dec_2p_2N1(v50, 4, 0, v72, v73);
          add_pulses(v72, 2, v49, __C, (__C + 64));
          v51 = v49++;
        }

        while (v51 < 3);
        break;
      case 44:
        v12 = __C + 64;
        v13 = get_next_indice(a1, 13);
        dec_3p_3N1(v13, 4, 0, v72, v73);
        for (i = 0; i != 3; ++i)
        {
          v15 = v72[i];
          v16 = &__C[4 * (v15 & 0xF)];
          v17 = v16 + 1;
          if (v16 < __C || v17 > v12 || v16 >= v17)
          {
            goto LABEL_113;
          }

          if ((v15 & 0x10) != 0)
          {
            v20 = -1.0;
          }

          else
          {
            v20 = 1.0;
          }

          *v16 = *v16 + v20;
        }

        v21 = get_next_indice(a1, 13);
        dec_3p_3N1(v21, 4, 0, v72, v73);
        add_pulses(v72, 3, 1, __C, (__C + 64));
        v22 = 2;
        do
        {
          v23 = get_next_indice(a1, 9);
          dec_2p_2N1(v23, 4, 0, v72, v73);
          add_pulses(v72, 2, v22, __C, (__C + 64));
          v24 = v22++;
        }

        while (v24 < 3);
        break;
    }
  }

  else if (a2 > 71)
  {
    if (a2 == 72)
    {
      *&v71[0] = get_next_indice(a1, 10);
      *(&v71[0] + 1) = get_next_indice(a1, 10);
      for (j = 16; j != 32; j += 8)
      {
        *(v71 + j) = get_next_indice(a1, 2);
      }

      *&v70[0] = get_next_indice(a1, 10);
      *(&v70[0] + 1) = get_next_indice(a1, 10);
      for (k = 16; k != 32; k += 8)
      {
        *(v70 + k) = get_next_indice(a1, 14);
      }

      dec_5p_5N(*&v70[0] + (*&v71[0] << 10), 4, 0, v72, v73);
      for (m = 0; m != 5; ++m)
      {
        v42 = v72[m];
        v43 = &__C[4 * (v42 & 0xF)];
        v44 = (v43 + 1);
        if (v43 < __C || v44 > (__C + 64) || v43 >= v44)
        {
          goto LABEL_113;
        }

        if ((v42 & 0x10) != 0)
        {
          v47 = -1.0;
        }

        else
        {
          v47 = 1.0;
        }

        *v43 = *v43 + v47;
      }

      dec_5p_5N(*(&v70[0] + 1) + (*(&v71[0] + 1) << 10), 4, 0, v72, v73);
      add_pulses(v72, 5, 1, __C, (__C + 64));
      for (n = 2; n != 4; ++n)
      {
        dec_4p_4N(*(v70 + n) + (*(v71 + n) << 14), 4, 0, v72, v73);
        add_pulses(v72, 4, n, __C, (__C + 64));
      }
    }

    else if (a2 == 88)
    {
      for (ii = 0; ii != 32; ii += 8)
      {
        *(v71 + ii) = get_next_indice(a1, 11);
      }

      for (jj = 0; jj != 32; jj += 8)
      {
        *(v70 + jj) = get_next_indice(a1, 11);
      }

      for (kk = 0; kk != 4; ++kk)
      {
        v28 = *(v70 + kk);
        v29 = v28 + (*(v71 + kk) << 11);
        v30 = ((v28 + (*(v71 + 2 * kk) << 11)) >> 16) & 8;
        v31 = (v29 >> 20) & 3;
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            dec_4p_4N(v29 >> 7, 3, ((v28 + (*(v71 + 2 * kk) << 11)) >> 16) & 8, v72, v73);
            dec_2p_2N1(v29, 3, v30 ^ 8, &v72[4], v73);
          }

          else
          {
            dec_3p_3N1(v29 >> 10, 3, 0, v72, v73);
            dec_3p_3N1(v29, 3, 8, &v72[3], v73);
          }
        }

        else
        {
          v32 = v29 >> 4;
          if (v31)
          {
            dec_5p_5N(v32, 3, ((v28 + (*(v71 + 2 * kk) << 11)) >> 16) & 8, v72, v73);
            v33 = v29 & 7 | (16 * ((v29 >> 3) & 1)) | v30 ^ 8;
          }

          else
          {
            dec_5p_5N(v32, 3, ((v28 + (*(v71 + 2 * kk) << 11)) >> 16) & 8, v72, v73);
            v33 = v29 & 7 | (16 * ((v29 >> 3) & 1)) | v30;
          }

          v72[5] = v33;
        }

        add_pulses(v72, 6, kk, __C, (__C + 64));
      }
    }
  }

  else if (a2 == 52)
  {
    v36 = 0;
    do
    {
      v37 = get_next_indice(a1, 13);
      dec_3p_3N1(v37, 4, 0, v72, v73);
      add_pulses(v72, 3, v36, __C, (__C + 64));
      v38 = v36++;
    }

    while (v38 < 3);
  }

  else if (a2 == 64)
  {
    for (mm = 0; mm != 32; mm += 8)
    {
      *(v71 + mm) = get_next_indice(a1, 2);
    }

    for (nn = 0; nn != 32; nn += 8)
    {
      *(v70 + nn) = get_next_indice(a1, 14);
    }

    for (i1 = 0; i1 != 4; ++i1)
    {
      dec_4p_4N(*(v70 + i1) + (*(v71 + i1) << 14), 4, 0, v72, v73);
      add_pulses(v72, 4, i1, __C, (__C + 64));
    }
  }
}

uint64_t dec_3p_3N1(uint64_t a1, char a2, int a3, _WORD *a4, unint64_t a5)
{
  v10 = 2 * a2;
  v11 = 2 * a2 - 1;
  v12 = ~(-1 << v11);
  if ((a1 >> v11))
  {
    v13 = 1 << (a2 - 1);
  }

  else
  {
    v13 = 0;
  }

  result = dec_2p_2N1(v12 & a1, a2 - 1, v13 + a3, a4, a5);
  v15 = a4 + 2;
  if (a4 + 2 < a4 || (a4 + 3) > a5 || a4 + 3 < v15)
  {
    __break(0x5519u);
  }

  else
  {
    v16 = (a1 >> v10) & ((2 << a2) - 1);
    v17 = v16 >> a2;
    v18 = (v16 & ~(-1 << a2)) + a3;
    if (v17)
    {
      LOWORD(v18) = v18 + 16;
    }

    *v15 = v18;
  }

  return result;
}

uint64_t dec_4p_4N(uint64_t result, char a2, int a3, _WORD *a4, unint64_t a5)
{
  v7 = result;
  v8 = a2 - 1;
  v9 = ((1 << (a2 - 1)) + a3);
  v10 = (result >> (4 * a2 - 2)) & 3;
  if (v10 <= 1)
  {
    if (!v10)
    {
      if ((result >> ((4 * v8) | 1u)))
      {
        LOWORD(a3) = (1 << (a2 - 1)) + a3;
      }

      return dec_4p_4N1(result, v8, a3, a4, a5);
    }

    v11 = a4 + 1;
    if ((a4 + 1) <= a5 && v11 >= a4)
    {
      v12 = result >> (3 * v8 + 1);
      v13 = v12 >> v8;
      v14 = (v12 & ~(-1 << v8)) + a3;
      if (v13)
      {
        LOWORD(v14) = v14 + 16;
      }

      *a4 = v14;

      return dec_3p_3N1(result, v8, v9, v11, a5);
    }

LABEL_27:
    __break(0x5519u);
    return result;
  }

  if (v10 != 2)
  {
    result = dec_3p_3N1(result >> a2, a2 - 1, a3, a4, a5);
    v15 = a4 + 3;
    if (a4 + 3 >= a4 && (a4 + 4) <= a5 && a4 + 4 >= v15)
    {
      if ((v7 >> v8))
      {
        v16 = v9 + (v7 & ~(-1 << v8)) + 16;
      }

      else
      {
        v16 = v9 + (v7 & ~(-1 << v8));
      }

      *v15 = v16;
      return result;
    }

    goto LABEL_27;
  }

  result = dec_2p_2N1(result >> ((2 * v8) | 1u), v8, a3, a4, a5);
  if (a4 + 2 < a4)
  {
    goto LABEL_27;
  }

  return dec_2p_2N1(v7, v8, v9, a4 + 2, a5);
}

uint64_t dec_5p_5N(uint64_t a1, char a2, __int16 a3, _WORD *a4, unint64_t a5)
{
  v7 = a3;
  v10 = a2 - 1;
  v11 = a1 >> ((2 * a2) | 1u);
  if ((a1 >> (v10 + 4 * a2)))
  {
    a3 += 1 << v10;
  }

  result = dec_3p_3N1(v11, v10, a3, a4, a5);
  if (a4 + 3 < a4)
  {
    __break(0x5519u);
  }

  else
  {

    return dec_2p_2N1(a1, a2, v7, a4 + 3, a5);
  }

  return result;
}

uint64_t dec_4p_4N1(uint64_t a1, char a2, __int16 a3, _WORD *a4, unint64_t a5)
{
  v10 = 2 * a2;
  v11 = 2 * a2 - 1;
  v12 = ~(-1 << v11);
  if ((a1 >> v11))
  {
    v13 = 1 << (a2 - 1);
  }

  else
  {
    v13 = 0;
  }

  result = dec_2p_2N1(v12 & a1, a2 - 1, v13 + a3, a4, a5);
  if (a4 + 2 < a4)
  {
    __break(0x5519u);
  }

  else
  {

    return dec_2p_2N1((a1 >> v10) & ((2 << v10) - 1), a2, a3, a4 + 2, a5);
  }

  return result;
}

uint64_t pit_Q_dec(uint64_t result, unsigned int a2, int a3, int a4, unsigned __int16 a5, int a6, __int16 *a7, __int16 *a8, __int16 *a9, _WORD *a10, _WORD *a11)
{
  v14 = a4;
  v15 = a5;
  v16 = result;
  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v20 = *a9;
      if (a4 == 8)
      {
LABEL_22:
        v24 = a2 + ((a2 & 0x8000) >> 15);
        *a7 = v20 + (v24 >> 1);
        v18 = 2 * a2 - 4 * (v24 >> 1);
        goto LABEL_26;
      }
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_20;
      }

      v20 = *a9;
    }

    *a7 = v20 + ((a2 + ((a2 >> 29) & 3)) >> 2);
    v18 = a2 - ((a2 + ((a2 >> 29) & 3)) & 0xFFFC);
LABEL_26:
    *a8 = v18;
    goto LABEL_27;
  }

  switch(a3)
  {
    case 8:
      v21 = 2;
      break;
    case 9:
      v21 = 4;
      break;
    case 10:
      v18 = a2 + ((a2 >> 29) & 3);
      v17 = v18 >> 2;
      LOWORD(v18) = a2 - (v18 & 0xFFFC);
      if (a6 == 1)
      {
        v19 = v17 + 20;
      }

      else if (a6)
      {
        v19 = v17 + 17;
      }

      else
      {
        v19 = v17 + 34;
      }

      *a7 = v19;
      goto LABEL_26;
    default:
LABEL_20:
      v20 = *a9;
      if (a4 == 8)
      {
        *a7 = v20 + a2;
        *a8 = 0;
        goto LABEL_27;
      }

      goto LABEL_22;
  }

  result = abs_pit_dec(v21, a2, a6, a7, a8);
  if (v16)
  {
    v22 = (*a7 - v14);
    if (v22 <= 34)
    {
      LOWORD(v22) = 34;
    }

    *a9 = v22;
    v23 = v22 + 2 * v14 - 1;
    *a10 = v23;
    if (v23 >= 232)
    {
      *a10 = 231;
      *a9 = 232 - 2 * v14;
    }
  }

LABEL_27:
  if (!(v15 | v16) && *a8 + 4 * *a7 >= 927)
  {
    *a7 = 64;
    *a8 = 0;
    *a11 = 1;
  }

  if (!v16)
  {
    v25 = *a7;
    v26 = *a8;

    return limit_T0(256, v14, 64, a6, v25, v26, a9, a10);
  }

  return result;
}

uint64_t pit16k_Q_dec(int a1, int a2, int a3, __int16 *a4, __int16 *a5, _WORD *a6, _WORD *a7, _WORD *a8)
{
  if (a2 == 9)
  {
    if (a1 > 267)
    {
      if (a1 > 0x15F)
      {
        v10 = 0;
        *a4 = a1 - 222;
        goto LABEL_13;
      }

      v8 = ((a1 - 268) >> 1) + 88;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 != 10)
    {
      *a4 = *a6 + ((a1 + ((a1 >> 29) & 3)) >> 2);
      v9 = (a1 + ((a1 >> 29) & 3)) & 0xFFFFFFFC;
      goto LABEL_8;
    }

    if (a1 > 971)
    {
      v8 = ((a1 - 972) >> 1) + 264;
LABEL_11:
      *a4 = v8;
      v10 = 2 * (a1 & 1);
      goto LABEL_13;
    }
  }

  v9 = a1 + ((a1 >> 29) & 3);
  *a4 = (v9 >> 2) + 21;
  LOWORD(v9) = v9 & 0xFFFC;
LABEL_8:
  v10 = a1 - v9;
LABEL_13:
  *a5 = v10;
  v11 = *a4;
  if (a2 >= 9 && 4 * *a4 + v10 >= 1157)
  {
    *a4 = 64;
    *a5 = 0;
    *a8 = 1;
    v11 = *a4;
    v10 = *a5;
  }

  return limit_T0(320, 8, 64, a3, v11, v10, a6, a7);
}

uint64_t abs_pit_dec(uint64_t result, int a2, int a3, _WORD *a4, _WORD *a5)
{
  if (a3 == 1)
  {
    if (result != 4)
    {
      if (result != 2)
      {
        return result;
      }

      if (a2 <= 87)
      {
        v5 = (a2 + ((a2 & 0x8000) >> 15)) << 16 >> 17;
        v6 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1) + 20;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 <= 383)
    {
      v9 = a2 + ((a2 >> 29) & 3);
      v10 = ((a2 + ((a2 >> 29) & 3)) >> 2) + 20;
      goto LABEL_23;
    }

    if (a2 <= 0x197)
    {
      v11 = ((a2 - 384) >> 1) + 116;
      goto LABEL_30;
    }

LABEL_31:
    v7 = 0;
    v8 = a2 - 280;
    goto LABEL_32;
  }

  if (a3)
  {
    if (result != 4)
    {
      if (result != 2)
      {
        return result;
      }

      if (a2 <= 81)
      {
        v5 = (a2 + ((a2 & 0x8000) >> 15)) << 16 >> 17;
        v6 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1) + 17;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 <= 379)
    {
      v9 = a2 + ((a2 >> 29) & 3);
      v10 = ((a2 + ((a2 >> 29) & 3)) >> 2) + 17;
      goto LABEL_23;
    }

    if (a2 <= 0x193)
    {
      v11 = ((a2 - 380) >> 1) + 112;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (result == 4)
  {
    if (a2 <= 375)
    {
      v9 = a2 + ((a2 >> 29) & 3);
      v10 = ((a2 + ((a2 >> 29) & 3)) >> 2) + 34;
LABEL_23:
      *a4 = v10;
      v7 = a2 - (v9 & 0xFFFC);
      goto LABEL_33;
    }

    if (a2 <= 0x1B7)
    {
      v11 = ((a2 - 376) >> 1) + 128;
LABEL_30:
      *a4 = v11;
      v7 = 2 * (a2 & 1);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (result != 2)
  {
    return result;
  }

  if (a2 > 115)
  {
LABEL_16:
    v7 = 0;
    v8 = a2 - 24;
LABEL_32:
    *a4 = v8;
    goto LABEL_33;
  }

  v5 = (a2 + ((a2 & 0x8000) >> 15)) << 16 >> 17;
  v6 = ((a2 + ((a2 & 0x8000) >> 15)) >> 1) + 34;
LABEL_15:
  *a4 = v6;
  v7 = 2 * a2 - 4 * v5;
LABEL_33:
  *a5 = v7;
  return result;
}

void FEC_lsf2lsp_interp(uint64_t a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (*(a1 + 5244))
  {
    isf2isp(a5, a6);
    v12 = a1 + 11144;
    if (*(a1 + 5244))
    {
      v13 = interpol_isp_amr_wb;
      v14 = interpol_frac_12k8;
      v15 = a2;
      v16 = a6;
      v17 = a3;
      v18 = a4;
      v19 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 == 256)
    {
      for (i = 0; i != 64; i += 4)
      {
        *(a6 + i) = cosf((*(a5 + i) * 3.1416) / 6400.0);
      }
    }

    else
    {
      for (j = 0; j != 64; j += 4)
      {
        *(a6 + j) = cosf((*(a5 + j) * 3.1416) / 8000.0);
      }
    }

    v12 = a1 + 11144;
  }

  v13 = interpol_frac_12k8;
  v14 = scaleTcxTable;
  v15 = a2;
  v16 = a6;
  v17 = a3;
  v18 = a4;
  v19 = 0;
LABEL_12:

  int_lsp(v15, v12, v16, v17, v18, v13, v14, v19);
}

void FEC_exc_estim(uint64_t a1, unsigned int a2, __int128 *a3, float *a4, unint64_t a5, float *__C, unint64_t a7, unint64_t a8, float *a9, uint64_t a10, float *a11, float *a12, unint64_t a13, unint64_t a14, unint64_t a15, float *a16, unint64_t a17)
{
  v229[0] = *MEMORY[0x1E69E9840];
  v227 = -1;
  __B[0] = -1;
  __B[1] = -1;
  v224 = 1;
  if ((a2 & 0x80000000) != 0)
  {
    return;
  }

  v20 = a1 + 21164;
  v21 = sqrtf(*(a1 + 24332));
  if (v21 <= (*(a1 + 24328) + *(a1 + 24328)))
  {
    v22 = v21;
  }

  else
  {
    v22 = *(a1 + 24328) + *(a1 + 24328);
  }

  __A[0].i32[0] = 0;
  vDSP_vfill(__A, __C, 1, 0x140uLL);
  v208 = *(a1 + 138196);
  v23 = *(v20 + 3156);
  v24 = (v20 + 3232);
  v25 = 24384;
  __Ca = (a1 + 24348);
  *&v222 = v20 + 3232;
  *(&v222 + 1) = a1 + 24348;
  if (a2 == 256)
  {
    v25 = 24376;
    v26 = 231;
  }

  else
  {
    v26 = 289;
  }

  if (a2 == 256)
  {
    v27 = 17;
  }

  else
  {
    v27 = 21;
  }

  v28 = a1 + v25;
  memset(__A, 255, sizeof(__A));
  v225 = -21846;
  v223 = NAN;
  *&v219 = v28;
  *(&v219 + 1) = v20 + 3232;
  v220 = a1 + 24348;
  v218[0] = &v223;
  v218[1] = &v224;
  v218[2] = &v223;
  v210 = a1;
  v217[0] = a1 + 138216;
  v217[1] = a1 + 138264;
  v217[2] = a1 + 138216;
  v214 = a2 >> 6;
  v29 = v20;
  pitch_pred_linear_fit(v208, v23, &__Ca, &v219, v218, v27, v26, v217, 0, 0, &v224, a2 >> 6);
  v30 = (v223 + 0.5);
  v31 = v29[794];
  *a11 = v31;
  v32 = v31 * 1.8;
  v33 = v31 * 0.6;
  if (a2 == 256)
  {
    v34 = v29[803];
    if ((v34 >= v32 || v34 <= v33) && *v24 <= 4)
    {
      goto LABEL_19;
    }

LABEL_18:
    *a11 = v34;
    v31 = v34;
    goto LABEL_19;
  }

  v34 = v29[805];
  if (v34 < v32 && v34 > v33 || *v24 >= 5)
  {
    goto LABEL_18;
  }

LABEL_19:
  v35 = (v31 + 0.5);
  LOWORD(v218[0]) = -21846;
  LOWORD(v217[0]) = -21846;
  v36 = BASOP_Util_Divide1616_Scale(v30, v35, v218, &__Ca);
  v37 = (a2 << 6) + 4096;
  if ((a2 << 6) >= 28672)
  {
    v37 = 0x7FFF;
  }

  v38 = BASOP_Util_Divide1616_Scale(4096, v37, v217, &__Ca);
  v211 = v29;
  if (LOWORD(v217[0]) == 0x7FFF)
  {
    LODWORD(__Ca) = 1;
    v39 = 0x7FFF;
  }

  else
  {
    v39 = LOWORD(v217[0]) + 1;
  }

  v40 = shl(v38, v39, &__Ca);
  if ((v40 & 0x8000u) == 0)
  {
    v41 = v40 ^ 0x7FFF;
  }

  else
  {
    v41 = 0x7FFF;
  }

  if (v36 == -32768)
  {
    LOWORD(v42) = 0x7FFF;
  }

  else
  {
    v42 = -v36;
  }

  v43 = shl(v42, SLOWORD(v218[0]), &__Ca);
  LOWORD(v219) = v43;
  if (v41 == 0x8000)
  {
    LOWORD(v44) = 0x7FFF;
  }

  else
  {
    v44 = -v41;
  }

  v45 = v43 - v44;
  v47 = v45 < 0x8000 && v45 < 0;
  v49 = v35 - v30 != (v35 - v30) || v35 != v30;
  if (v35 == 0x8000)
  {
    LOWORD(v50) = 0x7FFF;
  }

  else
  {
    v50 = -v35;
  }

  v51 = BASOP_Util_Add_MantExp(v30, 15, v50, 15, &v219, &__Ca);
  v52 = v219;
  if ((v219 & 0x8000u) != 0)
  {
    v52 = -v219;
  }

  if (v219 == 0x8000)
  {
    v53 = 0x7FFF;
  }

  else
  {
    v53 = v52;
  }

  v54 = v30;
  v55 = L_shl(-9830 * v35, ~v51);
  v56 = -v53 - v55;
  v57 = v56 ^ -v53;
  v58 = v56 > 0;
  if (((v55 ^ -v53) & v57) < 0)
  {
    v58 = v53 == 0;
  }

  v59 = v224;
  if (v47 && v30 >= 1 && v49 && v58 && !v224)
  {
    v60 = __C;
    if (a2 >= 0x40)
    {
      v61 = 0;
      v62 = (v30 - v31) / v214;
      do
      {
        v63 = (a7 + 4 * v61);
        v64 = v63 + 1;
        v65 = v63 < a7 || v64 > a8;
        if (v65 || v63 > v64)
        {
          goto LABEL_394;
        }

        v31 = v62 + v31;
        *v63 = (v31 + 0.5);
      }

      while (v214 > ++v61);
    }
  }

  else
  {
    v60 = __C;
    if (a2 >= 0x40)
    {
      v67 = 0;
      while (1)
      {
        v68 = (a7 + 4 * v67);
        v69 = v68 + 1;
        v70 = v68 < a7 || v69 > a8;
        if (v70 || v68 > v69)
        {
          break;
        }

        *v68 = v31;
        if (v214 <= ++v67)
        {
          goto LABEL_81;
        }
      }

LABEL_394:
      __break(0x5519u);
    }
  }

LABEL_81:
  v72 = v60 + 320;
  v73 = v210;
  v74 = v211;
  v75 = *(v211 + 194);
  if (v75 == 5)
  {
    goto LABEL_94;
  }

  if (v75 != 1 || (v76 = *(v210 + 138196), v76 >= 4))
  {
    v80 = *(v211 + 1578);
    v79 = 0.8;
    if (v80 <= 3)
    {
      if (!*(v211 + 1578))
      {
        v85 = *(v210 + 138196);
        if (v85 > 1)
        {
          v86 = v85 == 2;
          goto LABEL_109;
        }

        v79 = (v211[95] * 0.2) + 0.8;
        goto LABEL_114;
      }

      if (v80 == 1)
      {
        goto LABEL_114;
      }

      goto LABEL_98;
    }

    if (v80 == 4)
    {
      v84 = *(v210 + 138196);
      if ((v75 - 3) <= 1u && v84 < 4)
      {
        goto LABEL_114;
      }

LABEL_104:
      v79 = 1.0;
      if (v84 >= 4)
      {
        goto LABEL_105;
      }

LABEL_114:
      v77 = *(v211 + 1578);
      v78 = *(v211 + 1578) < 6;
      if (v77 - 3 >= 3)
      {
        goto LABEL_122;
      }

      if (v75 == 5)
      {
        goto LABEL_127;
      }

      v76 = *(v210 + 138196);
LABEL_117:
      if (v76 != 1)
      {
        v79 = v211[790];
        if (!v78)
        {
          goto LABEL_124;
        }

        goto LABEL_123;
      }

      v87 = sqrtf(v211[790]);
      v88 = 0.98;
      if (v87 <= 0.98)
      {
        v88 = v87;
        if (v87 < 0.85)
        {
          v88 = 0.85;
        }
      }

      v79 = v79 * v88;
LABEL_122:
      if (!v78)
      {
        goto LABEL_124;
      }

LABEL_123:
      if (v77 > 0)
      {
        goto LABEL_127;
      }

LABEL_124:
      if (v75 == 5)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

    if (v80 != 6)
    {
LABEL_98:
      if (v80 - 3 > 1)
      {
LABEL_105:
        v86 = v80 == 5;
LABEL_109:
        v82 = v86;
        v83 = flt_19B0AF930;
        goto LABEL_113;
      }

      v84 = *(v210 + 138196);
      goto LABEL_104;
    }

LABEL_94:
    v81 = *(v210 + 138196);
    if (*(v211 + 794) < 1 || v81 <= 1)
    {
      v82 = v81 < 6;
      v83 = &unk_19B0B02C8;
LABEL_113:
      v79 = v83[v82];
      goto LABEL_114;
    }

    v79 = 0.8;
    goto LABEL_114;
  }

  v77 = *(v211 + 1578);
  v78 = v77 < 6;
  if (v77 - 3 < 3)
  {
    v79 = 1.0;
    goto LABEL_117;
  }

  v79 = 1.0;
  if (v77 - 1 < 5)
  {
    goto LABEL_127;
  }

LABEL_125:
  if (v77 != 6)
  {
    goto LABEL_261;
  }

LABEL_126:
  if (*(v211 + 794) < 1)
  {
LABEL_242:
    v143 = 0;
    goto LABEL_257;
  }

LABEL_127:
  v89 = *a3;
  v90 = *(a3 + 1);
  v91 = *(a3 + 2);
  v92 = (*a3 - 4 * v35);
  if (*(v210 + 138196) == 1 && v35 >= 1)
  {
    LOWORD(v93) = 0;
    do
    {
      v94 = &v89[-v35];
      v95 = v94 - 1;
      v97 = v94 <= v90 && v95 <= v94 && v95 >= v91;
      v98 = v94 + 1;
      v100 = !v97 || v98 > v90 || v94 > v98;
      v101 = (v94 + 2);
      v103 = v100 || v101 > v90 || v98 > v101;
      v104 = v89 + 1;
      if (v103 || v104 > v90 || v89 > v104 || v89 < v91)
      {
        goto LABEL_394;
      }

      *v89 = ((v89[-v35] * 0.64) + (*v95 * 0.18)) + (*v98 * 0.18);
      v93 = (v93 + 1);
      ++v89;
    }

    while (v93 < v35);
    v92 = &v104[-v35];
    v89 = *a3;
  }

  else
  {
    v104 = *a3;
  }

  if (v104 < &v89[a2 + 64])
  {
    do
    {
      v108 = (v92 + 1) > v90 || v92 > v92 + 1;
      v109 = !v108 && v92 >= v91;
      v110 = (v104 + 1);
      v111 = !v109 || v110 > v90;
      v112 = v111 || v104 > v110;
      if (v112 || v104 < v91)
      {
        goto LABEL_394;
      }

      *v104 = *v92;
      v89 = *a3;
      ++v104;
      ++v92;
    }

    while (v110 < *a3 + 4 * a2 + 256);
  }

  if (v54 >= 1 && v47 && v49 && v58 && !v59)
  {
    if (v89 < v91)
    {
      goto LABEL_394;
    }

    v114 = &v89[-a2 - 64];
    if (v114 < v91)
    {
      goto LABEL_394;
    }

    if ((a2 + 64) >= 1)
    {
      v115 = *(a3 + 1);
      if (v115 < v114)
      {
        goto LABEL_394;
      }

      if (v89 > v115)
      {
        goto LABEL_394;
      }

      v116 = 4 * (a2 + 64);
      if (v116 > v115 - v89)
      {
        goto LABEL_394;
      }

      if (v116 > v115 - v114)
      {
        goto LABEL_394;
      }

      memmove(&v89[-a2 - 64], v89, v116);
      if (v114 + v116 < v114)
      {
        goto LABEL_394;
      }

      v89 = *a3;
    }

    v222 = *(a3 + 8);
    v219 = *a3;
    v220 = *(a3 + 2);
    __Ca = &v89[-a2 - 64];
    PulseResynchronization(&__Ca, &v219, a2, v214, v35, v54);
    v77 = *(v211 + 1578);
  }

  if (v77 == 1 && *(v211 + 194) - 3 <= 1)
  {
    v211[790] = 0.0;
    v117 = 0.0;
    v118 = 0.0;
    if (!a2)
    {
      goto LABEL_209;
    }

LABEL_199:
    v119 = 0;
    v120 = *(a3 + 2);
    while (1)
    {
      v121 = (*a3 + v119);
      v122 = (v121 + 1) > *(a3 + 1) || v121 > v121 + 1;
      if (v122 || v121 < v120)
      {
        goto LABEL_394;
      }

      *v121 = v117 * *v121;
      v117 = v117 - v118;
      v119 += 4;
      if (4 * a2 == v119)
      {
        goto LABEL_209;
      }
    }
  }

  v211[790] = v79;
  v117 = 1.0;
  v118 = (1.0 / a2) * (1.0 - v79);
  if (a2)
  {
    goto LABEL_199;
  }

LABEL_209:
  v74 = v211;
  v75 = *(v211 + 194);
  if (v77 != 6 && v75 != 5)
  {
    goto LABEL_261;
  }

  v73 = v210;
  if (*(v211 + 794) < 1)
  {
    goto LABEL_242;
  }

  v124 = *(v210 + 5240);
  if (v124 > 0x140)
  {
    goto LABEL_394;
  }

  v125 = *a3;
  v126 = *(a3 + 1);
  if (*a3 > v126)
  {
    goto LABEL_394;
  }

  if (*(a3 + 2) > v125)
  {
    goto LABEL_394;
  }

  if (v124 > (v126 - v125) >> 2)
  {
    goto LABEL_394;
  }

  edct(v125);
  v127 = &mfreq_loc[*(v211 + 794)];
  if (v127 < mfreq_loc || v127 + 1 > Es_pred_bits_tbl || v127 > v127 + 1)
  {
    goto LABEL_394;
  }

  v128 = (*v127 / 25.0);
  v129 = (*(v210 + 5240) - v128);
  v130 = &v60[v128];
  if (v129 >= 1)
  {
    if (v129 >= 0x50)
    {
      v131 = 80;
    }

    else
    {
      v131 = v129;
    }

    v132 = &sm_table;
    v133 = &v60[v128];
    v134 = v131;
    while (1)
    {
      v135 = v132 + 1;
      v136 = v132 < &sm_table || v135 > gsc_sfm_start;
      v137 = v136 || v132 > v135;
      v138 = v133 + 1;
      v139 = !v137 && v133 >= v60;
      v140 = !v139 || v138 > v72;
      if (v140 || v133 > v138)
      {
        goto LABEL_394;
      }

      v142 = *v132++;
      *v133 = v142 * *v133;
      ++v133;
      if (!--v134)
      {
        goto LABEL_246;
      }
    }
  }

  LOWORD(v131) = 0;
LABEL_246:
  if (v129 > v131)
  {
    v131 = v131;
    v144 = v131;
    do
    {
      v145 = &v130[v144 + 1];
      v146 = &v130[v144] < v60 || v145 > v72;
      if (v146 || &v130[v144] > v145)
      {
        goto LABEL_394;
      }

      v130[v131++] = 0.0;
      ++v144;
    }

    while (v131 < v129);
  }

  v143 = v128 + 1;
  v73 = v210;
  v74 = v211;
  v75 = *(v211 + 194);
LABEL_257:
  if (v75 != 5 && *(v74 + 1578) != 6 || *(v73 + 5176) > 24400 || *(v73 + 5244))
  {
LABEL_261:
    v148 = 0;
    v149 = *(v74 + 1575);
    do
    {
      v149 = 31821 * v149 + 13849;
      v150 = __A + v148;
      v151 = v150 + 1;
      if (v150 < __A || v151 > v229 || v150 > v151)
      {
        *(v74 + 1575) = v149;
        goto LABEL_394;
      }

      *v150 = v149;
      ++v148;
    }

    while ((a2 + 4) > v148);
    *(v74 + 1575) = v149;
    v154 = v74[791];
    v155 = (v22 * (1.0 - v79)) + (v79 * v154);
    v74[791] = v155;
    if (*(v74 + 1578) == 1)
    {
      if (v75 == 3)
      {
        if (v22 <= 0.0)
        {
          goto LABEL_277;
        }
      }

      else if (v22 <= 0.0 || v75 != 4)
      {
        goto LABEL_277;
      }

      v74[791] = v22;
      v155 = v22;
    }

LABEL_277:
    if (a2 <= 0x142)
    {
      v156 = &__A[1];
      LODWORD(__Ca) = -1;
      vDSP_dotpr(&__A[1], 1, &__A[1], 1, &__Ca, a2);
      v157 = 1.0 / sqrtf((*&__Ca / a2) + 0.01);
      if ((*(v211 + 1578) == 6 || !*(v211 + 1578)) && *(v211 + 194) != 1)
      {
        v157 = v157 * 0.8;
      }

      v158 = v154 * v157;
      __A[0] = vmul_n_f32(__A[0], v154 * v157);
      if (a2)
      {
        LOWORD(v159) = 0;
        v160 = (1.0 / a2) * (v154 - v155);
        do
        {
          v161 = (v156 + 4);
          if (&v156->i32[1] > v229)
          {
            goto LABEL_394;
          }

          v156->f32[0] = (v157 * v154) * v156->f32[0];
          v154 = v154 - v160;
          v159 = (v159 + 1);
          v156 = (v156 + 4);
        }

        while (v159 < a2);
        v158 = v157 * v154;
      }

      else
      {
        v161 = &__A[1];
      }

      v162 = 1;
      while (1)
      {
        v163 = v161 + 4;
        v164 = v161 < __A || v163 > v229;
        if (v164 || v161 > v163)
        {
          break;
        }

        v166 = v162;
        v162 = 0;
        v161->f32[0] = v158 * v161->f32[0];
        v161 = (v161 + 4);
        if ((v166 & 1) == 0)
        {
          goto LABEL_297;
        }
      }
    }

    goto LABEL_394;
  }

  *(v74 + 211) = *(v74 + 212);
  if (a15 < a14)
  {
    goto LABEL_394;
  }

  if ((a15 - a14) < 57)
  {
    goto LABEL_394;
  }

  v203 = *(v211 + 794);
  v204 = *(v210 + 5240);
  __Ca = v60;
  *&v222 = v60 + 320;
  *(&v222 + 1) = v60;
  if (a16)
  {
    if ((a16 + 1) > a17 || a16 + 1 < a16)
    {
      goto LABEL_394;
    }
  }

  gsc_dec(v210, &__Ca, v203, v143, 0, (v204 + ((v204 >> 25) & 0x3F)) >> 6, v75, &v225, a14, 0, 0, a16);
  v205 = *a3;
  v206 = *(a3 + 1);
  if (*a3 > v206)
  {
    goto LABEL_394;
  }

  if (*(a3 + 2) > v205)
  {
    goto LABEL_394;
  }

  v207 = *(v210 + 5240);
  if (v207 > 0x140 || (v206 - v205) >> 2 < v207)
  {
    goto LABEL_394;
  }

  edct(v60);
LABEL_297:
  if ((*(v211 + 194) == 5 || *(v211 + 1578) == 6) && *(v210 + 5176) <= 24400 && !*(v210 + 5244))
  {
    v181 = *a3;
    if (*a3 < *(a3 + 2))
    {
      goto LABEL_394;
    }

    v182 = *(v210 + 5240);
    if (v182 >= 1)
    {
      if (a5 < a4)
      {
        goto LABEL_394;
      }

      v183 = *(a3 + 1);
      if (v181 > v183)
      {
        goto LABEL_394;
      }

      v184 = 4 * v182;
      if (4 * v182 > v183 - v181)
      {
        goto LABEL_394;
      }

      if (v184 > a5 - a4)
      {
        goto LABEL_394;
      }

      memmove(a4, v181, v184);
      if (&a4[v184 / 4] < a4)
      {
        goto LABEL_394;
      }
    }

LABEL_341:
    v177 = *a3;
    if (a2 == 256)
    {
      if (v177 < *(a3 + 2))
      {
        goto LABEL_394;
      }

      interp_code_5over2(*a3, *(a3 + 1), a12, a13, 256);
      goto LABEL_346;
    }

    goto LABEL_344;
  }

  if (*(v211 + 1578) - 1 <= 4)
  {
    v167 = 0;
    v168 = 1.0 - *v211;
    do
    {
      *(__B + v167 * 4) = v168 * *&h_high[v167];
      ++v167;
    }

    while (v167 != 5);
    if (a2)
    {
      v169 = 0;
      v170 = 0;
      v171 = __A;
      v172 = a4;
      while (1)
      {
        v173 = *a3 + v169;
        v174 = v173 + 4 > *(a3 + 1) || v173 > v173 + 4;
        if (v174 || v173 < *(a3 + 2))
        {
          goto LABEL_394;
        }

        if (v170 > 0x13F)
        {
          goto LABEL_394;
        }

        if (v171 > v229)
        {
          goto LABEL_394;
        }

        if (__A > v171)
        {
          goto LABEL_394;
        }

        v176 = *(*a3 + 4 * v170);
        LODWORD(__Ca) = -1;
        vDSP_dotpr(v171, 1, __B, 1, &__Ca, 5uLL);
        if (v172 < a4 || (v172 + 1) > a5 || v172 > v172 + 1)
        {
          goto LABEL_394;
        }

        *v172++ = v176 + *&__Ca;
        ++v170;
        v171 = (v171 + 4);
        v169 += 4;
        if (a2 == v170)
        {
          goto LABEL_341;
        }
      }
    }

    v177 = *a3;
    goto LABEL_344;
  }

  v177 = *a3;
  if (*a3 < *(a3 + 2))
  {
    goto LABEL_394;
  }

  if (a2)
  {
    v178 = *(a3 + 1);
    v97 = v178 >= v177;
    v179 = v178 - v177;
    if (!v97)
    {
      goto LABEL_394;
    }

    if (a2 > 0x142)
    {
      goto LABEL_394;
    }

    v180 = 4 * a2;
    if (v180 > v179)
    {
      goto LABEL_394;
    }

    memmove(*a3, &__A[1], 4 * a2);
    if (&v177[v180 / 4] < v177)
    {
      goto LABEL_394;
    }

    if (a5 < a4)
    {
      goto LABEL_394;
    }

    if (v180 > a5 - a4)
    {
      goto LABEL_394;
    }

    memmove(a4, &__A[1], 4 * a2);
    if (&a4[v180 / 4] < a4)
    {
      goto LABEL_394;
    }

    goto LABEL_341;
  }

LABEL_344:
  if (v177 < *(a3 + 2))
  {
    goto LABEL_394;
  }

  interp_code_4over2(v177, *(a3 + 1), a12, a13, a2);
LABEL_346:
  if (*(v211 + 194) != 5 && *(v211 + 1578) != 6)
  {
    if (*(v210 + 5240) == 256)
    {
      LODWORD(__Ca) = *(v210 + 71260);
      goto LABEL_353;
    }

    LODWORD(__Ca) = *(v210 + 71260);
LABEL_355:
    v185 = 5;
    goto LABEL_356;
  }

  if (*(v210 + 5240) != 256)
  {
    LODWORD(__Ca) = 1065353216;
    goto LABEL_355;
  }

  LODWORD(__Ca) = 1065353216;
LABEL_353:
  v185 = 4;
LABEL_356:
  vDSP_vfill(&__Ca, a9, 1, v185);
  if (*(v210 + 5244))
  {
    v186 = v211 + 100;
    v187 = (((COERCE_FLOAT(*(v211 + 25)) + 0.0) + COERCE_FLOAT(HIDWORD(*(v211 + 50)))) + COERCE_FLOAT(*(v211 + 51))) + COERCE_FLOAT(HIDWORD(*(v211 + 25)));
    v188 = v210 + 21580;
    v189 = 3;
    do
    {
      v190 = v189;
      v191 = &v186[v189 - 1];
      v192 = v191 + 1;
      v194 = v191 < v186 || v192 > v188 || v191 > v192;
      v195 = &v186[v190];
      v196 = v195 + 1;
      if (v194 || v195 < v186 || v196 > v188 || v195 > v196)
      {
        goto LABEL_394;
      }

      *v195 = *v191;
      v189 = v190 - 1;
    }

    while (v190 > 1);
    v200 = (v187 * 0.25) + -3.0;
    if (v200 < -14.0)
    {
      v200 = -14.0;
    }

    *v186 = v200;
  }

  v201 = a7 + 4 * v214;
  v202 = (v201 - 4);
  if (v201 - 4 < a7 || v201 > a8 || v202 > v201)
  {
    goto LABEL_394;
  }

  v211[794] = *v202;
  *(v211 + 1590) = *(v210 + 5240);
}

__int16 *gsc_dec(uint64_t a1, __int128 *a2, int a3, int a4, int a5, __int16 a6, int a7, __int16 *a8, unint64_t a9, char *a10, unint64_t a11, float *a12)
{
  *v159 = *MEMORY[0x1E69E9840];
  v142 = -21846;
  v141 = -21846;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v158[0] = v16;
  v158[1] = v16;
  v140 = -1431655766;
  v17 = a1 + 20480;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v156 = v18;
  v157 = v18;
  v154 = v18;
  v155 = v18;
  v153[1] = v16;
  v153[0] = v16;
  memset(__b, 255, sizeof(__b));
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v151[1] = v19;
  v151[0] = v19;
  memset(v150, 255, sizeof(v150));
  v148 = 0xAAAAAAAAAAAAAAAALL;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v147[3] = v20;
  v147[4] = v20;
  v147[1] = v20;
  v147[2] = v20;
  v147[0] = v20;
  v145 = 0xAAAAAAAAAAAAAAAALL;
  v144[3] = v20;
  v144[4] = v20;
  v144[1] = v20;
  v144[2] = v20;
  v144[0] = v20;
  v143 = a5;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, __b, 1, 0x100uLL);
  if (*(v17 + 3828) || *(a1 + 5168))
  {
    v22 = 0;
    v23 = *(a1 + 21608);
    v154 = *(a1 + 21592);
    v155 = v23;
    v24 = *(a1 + 21640);
    v156 = *(a1 + 21624);
    v157 = v24;
    v25 = *(v17 + 3848);
    *&v24 = v25 / 10.0;
    v26 = vdupq_lane_s32(*&v24, 0);
    do
    {
      *(&v154 + v22) = vaddq_f32(v26, *(&v154 + v22));
      v22 += 16;
    }

    while (v22 != 64);
    v27 = v25 * 0.98;
    *(v17 + 3848) = v27;
    goto LABEL_6;
  }

  v132 = a5;
  v50 = *(a1 + 5208);
  v51 = (v17 + 1112);
  v52 = *(a1 + 5242);
  next_indice = get_next_indice(a1, 6);
  if (a7)
  {
    v54 = a7 == 5;
  }

  else
  {
    v54 = 1;
  }

  if (!v54 || v52)
  {
    v96 = &mean_gain_dic[next_indice];
    if (v96 < mean_gain_dic || v96 + 1 > YGain_mean_LR || v96 > v96 + 1)
    {
      goto LABEL_178;
    }

    v65 = *v96 + 2.8717;
    if (v50 > 9599)
    {
      v110 = get_next_indice(a1, 6);
      VDQ_vec(&v154, YG_mean16, &YG_dicMR_1, &YG_dicMR_2, v110, 4u);
      v111 = get_next_indice(a1, 5);
      VDQ_vec(&v155, &YG_mean16[4], &YG_dicMR_2, &YG_dicMR_3, v111, 4u);
      v112 = get_next_indice(a1, 5);
      VDQ_vec(&v156, &YG_mean16[8], &YG_dicMR_3, &YG_dicMR_4, v112, 4u);
      v113 = get_next_indice(a1, 4);
      VDQ_vec(&v157, &YG_mean16[12], &YG_dicMR_4, &hvq_thr_adj, v113, 4u);
    }

    else
    {
      v97 = get_next_indice(a1, 5);
      VDQ_vec(&v154, YGain_mean_LR, &YGain_dic1_LR, &YGain_dic2_LR, v97, 3u);
      v98 = get_next_indice(a1, 5);
      VDQ_vec((&v154 | 0xC), &YGain_mean_LR[3], &YGain_dic2_LR, &YGain_dic3_LR, v98, 4u);
      v99 = get_next_indice(a1, 5);
      VDQ_vec(&v155 + 3, &YGain_mean_LR[7], &YGain_dic3_LR, YG_mean16, v99, 5u);
      v100 = &v156;
      v101 = v156;
      LODWORD(__A[0]) = 0;
      vDSP_vfill(__A, &v157, 1, 4uLL);
      fft_rel(&v156, 4, 2);
      HIDWORD(v157) = HIDWORD(v156);
      HIDWORD(v156) = 0;
      v102 = 8;
      ifft_rel(&v156, 8, 3);
      do
      {
        if (v100 + 1 > v158 || v100 > v100 + 1)
        {
          goto LABEL_178;
        }

        *v100 = *v100 * 1.41;
        ++v100;
        --v102;
      }

      while (v102);
      DWORD2(v156) = DWORD1(v101);
      LODWORD(v156) = v101;
      DWORD2(v157) = HIDWORD(*(&v101 + 1));
      LODWORD(v157) = *(&v101 + 1);
    }
  }

  else
  {
    v130 = a4;
    v55 = &Gain_mean_dicNB[next_indice];
    if (v55 < Gain_mean_dicNB || v55 + 1 > Mean_dic_NB || v55 > v55 + 1)
    {
      goto LABEL_178;
    }

    v56 = get_next_indice(a1, 6);
    VDQ_vec(&v154, Mean_dic_NB, &Gain_dic1_NB, &Gain_dic2_NB, v56, 3u);
    v57 = &Gain_dic3_NBHR;
    if (v50 < 9600)
    {
      v57 = &Gain_dic3_NB;
    }

    v128 = v57;
    if (v50 >= 9600)
    {
      v58 = &Gain_dic2_NBHR;
    }

    else
    {
      v58 = &Gain_dic2_NB;
    }

    if (v50 >= 9600)
    {
      v59 = &Gain_dic3_NBHR;
    }

    else
    {
      v59 = &Gain_dic3_NB;
    }

    v131 = v59;
    v60 = &mean_m;
    if (v50 < 9600)
    {
      v60 = &Gain_dic2_NBHR;
    }

    v129 = v60;
    if (v50 < 9600)
    {
      v61 = 5;
    }

    else
    {
      v61 = 6;
    }

    if (v50 >= 9600)
    {
      v62 = 7;
    }

    else
    {
      v62 = 4;
    }

    v63 = get_next_indice(a1, v61);
    VDQ_vec((&v154 | 0xC), flt_19B39939C, v58, v128, v63, 3u);
    v64 = get_next_indice(a1, v62);
    VDQ_vec(&v155 + 2, &flt_19B39939C[3], v131, v129, v64, 4u);
    v65 = *v55 + 2.4052;
    if (v50 <= 9600 && !a7)
    {
      v66 = 0;
      v67 = 0.0;
      do
      {
        v67 = v67 + *(&v155 + v66 + 8);
        v66 += 4;
      }

      while (v66 != 12);
      v68 = 0;
      *(&v156 + 2) = v67 / 3.0;
      v69 = 0.0;
      a4 = v130;
      do
      {
        v69 = v69 + *(&v155 + v68 + 12);
        v68 += 4;
      }

      while (v68 != 12);
      v70 = 0;
      *(&v156 + 3) = v69 / 3.0;
      v71 = 0.0;
      do
      {
        v71 = v71 + *(&v156 + v70);
        v70 += 4;
      }

      while (v70 != 12);
      v72 = 0;
      *&v157 = v71 / 3.0;
      v73 = 0.0;
      do
      {
        v73 = v73 + *(&v156 + v72 + 4);
        v72 += 4;
      }

      while (v72 != 12);
      v74 = 0;
      *(&v157 + 1) = v73 / 3.0;
      v75 = 0.0;
      do
      {
        v75 = v75 + *(&v156 + v74 + 8);
        v74 += 4;
      }

      while (v74 != 12);
      v76 = 0;
      *(&v157 + 2) = v75 / 3.0;
      v77 = 0.0;
      do
      {
        v77 = v77 + *(&v156 + v76 + 12);
        v76 += 4;
      }

      while (v76 != 12);
      *(&v157 + 3) = v77 / 3.0;
LABEL_161:
      v120 = 8.0;
      if (v50 >= 7201)
      {
        if (v50 >= 0x1F41)
        {
          v120 = 4.8;
          v121 = 3.5;
          v122 = 0.0;
          if (v50 < 0x3391)
          {
            v122 = 3.0;
          }

          if (v50 >= 0x2D51)
          {
            v121 = v122;
          }

          if (v50 >= 0x2581)
          {
            v120 = v121;
          }
        }

        else
        {
          v120 = 6.6;
        }
      }

      v123 = -16;
      v124 = &v154;
      v125 = v120 / 20.0;
      while (v124 >= &v154 && v124 + 1 <= v158 && v124 <= v124 + 1)
      {
        v126 = *v124;
        *v51++ = *v124;
        *v124++ = v126 + (v65 + ((v125 * (v123 + 16)) * -0.0625));
        if (__CFADD__(v123++, 1))
        {
          goto LABEL_176;
        }
      }

LABEL_178:
      __break(0x5519u);
    }

    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, &v156 + 2, 1, 6uLL);
    a4 = v130;
  }

  if (!a7)
  {
    goto LABEL_161;
  }

  v114 = 16;
  v115 = &v154;
  do
  {
    v116 = v115 + 1;
    if (v115 < &v154 || v116 > v158 || v115 > v116)
    {
      goto LABEL_178;
    }

    v119 = *v115;
    *v51++ = *v115;
    *v115++ = v65 + v119;
    --v114;
  }

  while (v114);
LABEL_176:
  v27 = v65 * 10.0;
  *(v17 + 3848) = v65 * 10.0;
  a5 = v132;
LABEL_6:
  *a12 = v27;
  *a8 = 0;
  v28 = *(a1 + 5208);
  if (v28 == 8000 && *(a1 + 5242))
  {
    v140 = 0;
  }

  for (i = 0; i != 32; i += 2)
  {
    v30 = v158 + i + 2;
    if ((v158 + i) < v158 || v30 > v159 || v158 + i > v30)
    {
      goto LABEL_178;
    }

    *(v158 + i) = 0;
  }

  v33 = *(v17 + 3828);
  if (v33 || *(a1 + 5168))
  {
    if (*(v17 + 3840) != 6 && *(v17 + 1108) != 1)
    {
      goto LABEL_27;
    }

    v34 = (v17 + 1248);
    v35 = *(v17 + 1104);
    v36 = 256;
    do
    {
      v35 = 31821 * v35 + 13849;
      if ((v34 + 1) > a1 + 22752 || v34 > v34 + 1)
      {
        *(v17 + 1104) = v35;
        goto LABEL_178;
      }

      *v34 = ((v35 * 0.8) * 0.000030518) + (*v34 * 0.2);
      ++v34;
      --v36;
    }

    while (v36);
    *(v17 + 1104) = v35;
LABEL_27:
    v37 = a4;
    v38 = (v17 + 1248);
    memcpy(__b, (v17 + 1248), sizeof(__b));
    v40 = 256;
    while ((v38 + 1) <= a1 + 22752 && v38 <= v38 + 1)
    {
      *v38 = *v38 * 0.75;
      ++v38;
      if (!--v40)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_178;
  }

  bands_and_bit_alloc(*(v17 + 1110), *(v17 + 1176), v28, a4, a5, &v143, &v154, v21, v153, &v154, v151, __b, &v142, 0, 0, 0, 0, &v141, a7, *(a1 + 5242), *(v17 + 1106));
  for (j = 0; j != 88; j += 2)
  {
    v80 = v147 + j + 2;
    if ((v147 + j) < v147 || v80 > &v149 || v147 + j > v80)
    {
      goto LABEL_178;
    }

    *(v147 + j) = 0;
  }

  v83 = v142;
  if (v142 > 0x10uLL)
  {
    goto LABEL_178;
  }

  pvq_core_dec(a1, gsc_sfm_start, &gsc_sfm_end, &gsc_sfm_end, gsc_sfm_size, gsc_sfm_size, mfreq_bindiv_loc, v78, v150, v151, v143, v142, v151, 0, 0, v147, &v149, v144, &v146, 0);
  if (v83)
  {
    v84 = 0;
    v85 = 0;
    v86 = v150;
    while (v86 >= v150)
    {
      v87 = (v153 + v84);
      if ((v153 + v84) < v153)
      {
        break;
      }

      if (v87 + 1 > &v154 || v87 > v87 + 1)
      {
        break;
      }

      v89 = *v87;
      v90 = &__b[16 * v89];
      if (v90 < __b)
      {
        break;
      }

      if (v90 > v153 || v86 > v151)
      {
        break;
      }

      if (v84 == 32)
      {
        break;
      }

      if (v89 == 16)
      {
        break;
      }

      v92 = *(v86 + 1);
      *v90 = *v86;
      *(v90 + 1) = v92;
      v93 = *(v86 + 3);
      *(v90 + 2) = *(v86 + 2);
      *(v90 + 3) = v93;
      if (v90 + 16 < v90)
      {
        break;
      }

      if (v89 > *a8)
      {
        *a8 = v89;
      }

      v94 = v158 + v89;
      if (v94 < v158)
      {
        break;
      }

      if (v94 + 1 > v159)
      {
        break;
      }

      if (v94 > v94 + 1)
      {
        break;
      }

      *v94 = 1;
      v95 = v147 + v84;
      if ((v147 + v84) < v147 || v95 + 2 > &v149 || v95 > v95 + 2)
      {
        break;
      }

      v85 += *(v147 + v84);
      v84 += 2;
      v86 += 16;
      if (2 * v83 == v84)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_178;
  }

  v85 = 0;
LABEL_125:
  if ((*(v17 + 1072) | 4) != 5)
  {
    if (v83)
    {
      LOWORD(v104) = 0;
      do
      {
        v105 = &v150[v104];
        v106 = v105 + 1;
        v107 = v105 < v150 || v106 > v151;
        if (v107 || v105 > v106)
        {
          goto LABEL_178;
        }

        if (*v105 > 0.0)
        {
          v85 *= 8;
        }

        if (*v105 < 0.0)
        {
          v85 += 3;
        }

        v104 = (v104 + 1);
      }

      while (v104 < (16 * (v83 & 0xFFF)));
    }

    *(v17 + 1104) = v85;
  }

  v109 = *(a1 + 5208);
  v37 = a4;
  if (v109 == 8000 && *(a1 + 5242))
  {
    if (__b[158] != 0.0)
    {
      LOWORD(v140) = 1;
    }

    if (__b[159] != 0.0)
    {
      HIWORD(v140) = 1;
    }
  }

  memcpy((a1 + 21728), __b, 0x400uLL);
  freq_dnw_scaling(*(v17 + 1110), a7, *(v17 + 1176), v109, __b);
  v28 = *(a1 + 5208);
  v33 = *(v17 + 3828);
LABEL_33:
  v42 = *a8;
  v43 = *(v17 + 1176);
  v137 = *a2;
  v138 = *(a2 + 2);
  v44 = *(v17 + 1072);
  v45 = *(a1 + 5242);
  v46 = *(v17 + 1106);
  __A[0] = __b;
  __A[1] = v153;
  __A[2] = __b;
  result = highband_exc_dct_in(v28, v42, v37, v43, a3, __A, (a1 + 21584), v39, &v154, v158, a6, &v137, v44, v158, a9, a1 + 22756, a1 + 23780, (a1 + 23780), (a1 + 23784), &v140, v33, a7, v45, a10, a11, v46, a1 + 21660, a1 + 21724);
  v48 = *a2;
  v49 = *a2 + 4;
  if (v49 > *(a2 + 1) || v48 > v49 || v48 < *(a2 + 2))
  {
    goto LABEL_178;
  }

  *v48 = 0;
  return result;
}