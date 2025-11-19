float sub_240ABD298(float *a1, _WORD *a2, float a3)
{
  LOWORD(a3) = *a2;
  result = LODWORD(a3) / 65535.0;
  *a1 = result;
  return result;
}

float sub_240ABD2B4(float *a1, unsigned __int16 *a2)
{
  result = (bswap32(*a2) >> 16) / 65535.0;
  *a1 = result;
  return result;
}

double sub_240ABD2D8(double *a1, _WORD *a2, float a3)
{
  LOWORD(a3) = *a2;
  result = (LODWORD(a3) / 65535.0);
  *a1 = result;
  return result;
}

double sub_240ABD2F8(double *a1, unsigned __int16 *a2)
{
  result = ((bswap32(*a2) >> 16) / 65535.0);
  *a1 = result;
  return result;
}

uint64_t **sub_240ABD320(uint64_t **result, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v77 = *MEMORY[0x277D85DE8];
  if ((*(result + 211) & 4) != 0)
  {
    v7 = a3;
    v9 = result;
    v11 = *result;
    v10 = *(result + 1);
    if (a2 != a3 || v11 != v10)
    {
      v12 = (v11 >> 7) & 7;
      v66 = v12;
      if (v12 && v12 == ((v10 >> 7) & 7))
      {
        sub_240ABD630(v11, a6[2], __dst, v75);
        sub_240ABD630(v10, a6[3], v74, v73);
        v14 = sub_240ABDAA4(v11);
        result = sub_240ABDAA4(v10);
        if (v14 > 4 || result >= 5)
        {
          result = sub_240AC15A4(v9[29], 8, "Unrecognized alpha channel width", v15, v16, v17, v18, v19, v60);
          v21 = 0;
        }

        else
        {
          v21 = *(&off_2852A10E0[6 * v14] + result);
        }

        if (v66 == 1)
        {
          if (a5)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v67 = a2 + __dst[0];
            v63 = v7 + v74[0];
            v25 = v75[0];
            v26 = v73[0];
            do
            {
              if (a4)
              {
                v27 = v63 + v22;
                v28 = a4;
                v29 = v67 + v23;
                do
                {
                  result = v21(v27, v29);
                  v29 += v25;
                  v27 += v26;
                  --v28;
                }

                while (v28);
              }

              v23 += *a6;
              v22 += a6[1];
              ++v24;
            }

            while (v24 != a5);
          }
        }

        else
        {
          memset(v72, 0, sizeof(v72));
          memset(v71, 0, sizeof(v71));
          memset(v70, 0, sizeof(v70));
          memset(v69, 0, sizeof(v69));
          if (a5)
          {
            v30 = 0;
            v61 = v7;
            v62 = a6;
            do
            {
              v64 = v30;
              v31 = v71;
              v32 = v69;
              v33 = v74;
              v34 = v72;
              v35 = v70;
              v36 = __dst;
              v37 = v66;
              do
              {
                v38 = *v36++;
                v39 = a2 + v38;
                v40 = *v35++;
                *v34++ = v39 + v40;
                v41 = *v33++;
                v42 = v7 + v41;
                v43 = *v32++;
                *v31++ = v42 + v43;
                --v37;
              }

              while (v37);
              if (a4)
              {
                v44 = 0;
                do
                {
                  v45 = v73;
                  v46 = v75;
                  v47 = v72;
                  v48 = v71;
                  v49 = v66;
                  do
                  {
                    v50 = *v48;
                    v51 = *v47;
                    result = v21(*v48, *v47);
                    v52 = *v46++;
                    *v47++ = v51 + v52;
                    v53 = *v45++;
                    *v48++ = v50 + v53;
                    --v49;
                  }

                  while (v49);
                  ++v44;
                }

                while (v44 != a4);
              }

              v54 = *v62;
              v55 = v62[1];
              v56 = v69;
              v57 = v70;
              v58 = v66;
              do
              {
                *v57++ += v54;
                *v56++ += v55;
                --v58;
              }

              while (v58);
              v30 = v64 + 1;
              v7 = v61;
            }

            while (v64 + 1 != a5);
          }
        }
      }
    }
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ABD630(uint64_t result, int a2, void *__dst, uint64_t a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = result >> 7;
  v6 = (result >> 7) & 7;
  v7 = result >> 3;
  v8 = (result >> 3) & 0xF;
  v9 = v8 + v6;
  if ((result & 7) != 0)
  {
    v10 = result & 7;
  }

  else
  {
    v10 = 8;
  }

  v11 = v9 - 16;
  if ((result & 0x1000) != 0)
  {
    if (v11 < 0xFFFFFFF1)
    {
      goto LABEL_78;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    if (v6)
    {
      v37 = (((result >> 7) & 7) + 3) & 0xC;
      v38 = vdupq_n_s64(v6 - 1);
      v39 = xmmword_240C111C0;
      v40 = xmmword_240C111D0;
      v41 = (a4 + 8);
      v42 = vdupq_n_s64(4uLL);
      do
      {
        v43 = vmovn_s64(vcgeq_u64(v38, v40));
        if (vuzp1_s16(v43, *v38.i8).u8[0])
        {
          *(v41 - 2) = v10;
        }

        if (vuzp1_s16(v43, *&v38).i8[2])
        {
          *(v41 - 1) = v10;
        }

        if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v39))).i32[1])
        {
          *v41 = v10;
          v41[1] = v10;
        }

        v39 = vaddq_s64(v39, v42);
        v40 = vaddq_s64(v40, v42);
        v41 += 4;
        v37 -= 4;
      }

      while (v37);
    }

    v44 = 0;
    v45 = (v8 + ((result >> 7) & 7) + 3) & 0x1C;
    v46 = vdupq_n_s64(v9 - 1);
    v47 = v6 + v8 - 1;
    v48 = xmmword_240C111C0;
    v49 = xmmword_240C111D0;
    v50 = &v61 + 2;
    v51 = vdupq_n_s64(4uLL);
    do
    {
      v52 = vmovn_s64(vcgeq_u64(v46, v49));
      if (vuzp1_s16(v52, *v46.i8).u8[0])
      {
        if ((result & 0x400) != 0)
        {
          v53 = v47;
        }

        else
        {
          v53 = v44;
        }

        *(v50 - 2) = v53;
      }

      if (vuzp1_s16(v52, *&v46).i8[2])
      {
        v54 = v9 + (v44 ^ 0xFFFFFFFE);
        if ((result & 0x400) == 0)
        {
          v54 = v44 + 1;
        }

        *(v50 - 1) = v54;
      }

      v55 = vmovn_s64(vcgeq_u64(v46, v48));
      if (vuzp1_s16(*&v46, v55).i32[1])
      {
        v56 = v44 + 2;
        if ((result & 0x400) != 0)
        {
          v56 = v9 + (v44 ^ 0xFFFFFFFD);
        }

        *v50 = v56;
      }

      if (vuzp1_s16(*&v46, v55).i8[6])
      {
        v57 = v44 + 3;
        if ((result & 0x400) != 0)
        {
          v57 = v9 + (v44 ^ 0xFFFFFFFC);
        }

        v50[1] = v57;
      }

      v44 += 4;
      v48 = vaddq_s64(v48, v51);
      v49 = vaddq_s64(v49, v51);
      v47 -= 4;
      v50 += 4;
    }

    while (v45 != v44);
    if ((result & 0x4000) != 0)
    {
      v58 = v61;
      if (v9 != 1)
      {
        result = memmove(&v61, &v61 + 4, 4 * (v9 - 2) + 4);
      }

      *(&v61 + (v9 - 1)) = v58;
    }

    v59 = &v61;
    do
    {
      *v59 *= a2;
      v59 = (v59 + 4);
      --v9;
    }

    while (v9);
  }

  else
  {
    if (v11 < 0xFFFFFFF1)
    {
      goto LABEL_78;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    if (v6)
    {
      v12 = v10 * v9;
      v13 = (((result >> 7) & 7) + 3) & 0xC;
      v14 = vdupq_n_s64(v6 - 1);
      v15 = xmmword_240C111C0;
      v16 = xmmword_240C111D0;
      v17 = (a4 + 8);
      v18 = vdupq_n_s64(4uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v14, v16));
        if (vuzp1_s16(v19, *v14.i8).u8[0])
        {
          *(v17 - 2) = v12;
        }

        if (vuzp1_s16(v19, *&v14).i8[2])
        {
          *(v17 - 1) = v12;
        }

        if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
        {
          *v17 = v12;
          v17[1] = v12;
        }

        v15 = vaddq_s64(v15, v18);
        v16 = vaddq_s64(v16, v18);
        v17 += 4;
        v13 -= 4;
      }

      while (v13);
    }

    v20 = 0;
    v21 = vdupq_n_s64(v9 - 1);
    v22 = (v8 + ((result >> 7) & 7) + 3) & 0x1C;
    v23 = v6 + v8 - 1;
    v24 = xmmword_240C111C0;
    v25 = xmmword_240C111D0;
    v26 = vdupq_n_s64(4uLL);
    v27 = &v61 + 2;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v21, v25));
      if (vuzp1_s16(v28, *v21.i8).u8[0])
      {
        if ((result & 0x400) != 0)
        {
          v29 = v23;
        }

        else
        {
          v29 = v20;
        }

        *(v27 - 2) = v29;
      }

      if (vuzp1_s16(v28, *&v21).i8[2])
      {
        v30 = v9 + (v20 ^ 0xFFFFFFFE);
        if ((result & 0x400) == 0)
        {
          v30 = v20 + 1;
        }

        *(v27 - 1) = v30;
      }

      v31 = vmovn_s64(vcgeq_u64(v21, v24));
      if (vuzp1_s16(*&v21, v31).i32[1])
      {
        v32 = v20 + 2;
        if ((result & 0x400) != 0)
        {
          v32 = v9 + (v20 ^ 0xFFFFFFFD);
        }

        *v27 = v32;
      }

      if (vuzp1_s16(*&v21, v31).i8[6])
      {
        v33 = v20 + 3;
        if ((result & 0x400) != 0)
        {
          v33 = v9 + (v20 ^ 0xFFFFFFFC);
        }

        v27[1] = v33;
      }

      v20 += 4;
      v24 = vaddq_s64(v24, v26);
      v25 = vaddq_s64(v25, v26);
      v23 -= 4;
      v27 += 4;
    }

    while (v22 != v20);
    if ((result & 0x4000) != 0 && v9 >= 2)
    {
      v34 = v61;
      result = memmove(&v61, &v61 + 4, 4 * (v9 - 2) + 4);
      *(&v61 + (v9 - 1)) = v34;
    }

    if (v10 >= 2)
    {
      v35 = &v61;
      do
      {
        *v35 *= v10;
        v35 = (v35 + 4);
        --v9;
      }

      while (v9);
    }
  }

  if (v6)
  {
    result = memcpy(__dst, &v61 + 4 * (v7 & 0xF), 4 * (v5 & 7));
  }

LABEL_78:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ABDAA4(int a1)
{
  v1 = a1 & 0x400007;
  if ((a1 & 0x400007u) < 0x400000)
  {
    if (v1 == 1)
    {
      return 0;
    }

    if (v1 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(v1)
    {
      case 4194304:
        return 5;
      case 4194306:
        return 3;
      case 4194308:
        return 4;
    }
  }

  if ((a1 & 0x807) == 0x802)
  {
    return 3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

float sub_240ABDB34(float *a1, double *a2)
{
  result = *a2;
  *a1 = result;
  return result;
}

float sub_240ABDB44(_WORD *a1, double *a2)
{
  result = *a2;
  *a1 = word_240C145C0[LODWORD(result) >> 23] + ((LODWORD(result) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(result) >> 23]);
  return result;
}

_WORD *sub_240ABDB80(_WORD *result, double *a2)
{
  v2 = *a2 * 65535.0 + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = bswap32(v3) >> 16;
  return result;
}

__int16 *sub_240ABDBF0(__int16 *result, double *a2)
{
  v2 = *a2 * 65535.0 + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = v3;
  return result;
}

char *sub_240ABDC58(char *result, double *a2)
{
  v2 = *a2 * 255.0 + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 255.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) - 1;
  }

  *result = v3;
  return result;
}

double sub_240ABDCBC(double *a1, float *a2)
{
  result = *a2;
  *a1 = result;
  return result;
}

_WORD *sub_240ABDD0C(_WORD *result, float *a2)
{
  v2 = (*a2 * 65535.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = bswap32(v3) >> 16;
  return result;
}

__int16 *sub_240ABDD88(__int16 *result, float *a2)
{
  v2 = (*a2 * 65535.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = v3;
  return result;
}

char *sub_240ABDDFC(char *result, float *a2)
{
  v2 = (*a2 * 255.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 255.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) - 1;
  }

  *result = v3;
  return result;
}

double sub_240ABDE6C(double *a1, _WORD *a2)
{
  result = COERCE_FLOAT(dword_240C144C0[*a2 >> 10] + dword_240C12440[(*a2 & 0x3FF) + word_240C14440[*a2 >> 10]]);
  *a1 = result;
  return result;
}

_WORD *sub_240ABDEF4(_WORD *result, _WORD *a2)
{
  v2 = (COERCE_FLOAT(dword_240C144C0[*a2 >> 10] + dword_240C12440[(*a2 & 0x3FF) + word_240C14440[*a2 >> 10]]) * 65535.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = 0xFFFF;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = bswap32(v3) >> 16;
  return result;
}

__int16 *sub_240ABDFA8(__int16 *result, _WORD *a2)
{
  v2 = (COERCE_FLOAT(dword_240C144C0[*a2 >> 10] + dword_240C12440[(*a2 & 0x3FF) + word_240C14440[*a2 >> 10]]) * 65535.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 65535.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = v3;
  return result;
}

char *sub_240ABE054(char *result, _WORD *a2)
{
  v2 = (COERCE_FLOAT(dword_240C144C0[*a2 >> 10] + dword_240C12440[(*a2 & 0x3FF) + word_240C14440[*a2 >> 10]]) * 255.0) + 0.5;
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else if (v2 >= 255.0)
  {
    v3 = -1;
  }

  else
  {
    v3 = (COERCE_UNSIGNED_INT64(v2 + -32767.0 + 1.03079215e11) >> 16) - 1;
  }

  *result = v3;
  return result;
}

float sub_240ABE0FC(_WORD *a1, unsigned __int16 *a2)
{
  result = (bswap32(*a2) >> 16) / 65535.0;
  *a1 = word_240C145C0[LODWORD(result) >> 23] + ((LODWORD(result) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(result) >> 23]);
  return result;
}

float sub_240ABE170(_WORD *a1, _WORD *a2, float a3)
{
  LOWORD(a3) = *a2;
  result = LODWORD(a3) / 65535.0;
  *a1 = word_240C145C0[LODWORD(result) >> 23] + ((LODWORD(result) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(result) >> 23]);
  return result;
}

double sub_240ABE1F4(double *a1, _BYTE *a2, double a3)
{
  LOBYTE(a3) = *a2;
  result = *&a3 / 255.0;
  *a1 = result;
  return result;
}

float sub_240ABE210(float *a1, _BYTE *a2, float a3)
{
  LOBYTE(a3) = *a2;
  result = LODWORD(a3) / 255.0;
  *a1 = result;
  return result;
}

float sub_240ABE22C(_WORD *a1, _BYTE *a2, float a3)
{
  LOBYTE(a3) = *a2;
  result = LODWORD(a3) / 255.0;
  *a1 = word_240C145C0[LODWORD(result) >> 23] + ((LODWORD(result) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(result) >> 23]);
  return result;
}

uint64_t *sub_240ABE2A0(uint64_t *a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  v193[3] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_243;
  }

  v19 = sub_240ACADFC(a1, 0, 0);
  if (v19)
  {
    v172 = a1;
    v174 = a5;
    v175 = a6;
    v173 = a7;
    v20 = 0;
    v189 = 0;
    v187 = 0u;
    v188 = 0u;
    v176 = a2;
    v177 = a2;
    v185 = 0u;
    v186 = 0u;
    v183 = 0;
    v184 = 0;
    v182 = 0;
    v21 = *(*a4 + 80);
    v178 = a4;
    v179 = a3;
    while (1)
    {
      v22 = *(a4 + 8 * v20);
      v23 = *(v22 + 76);
      if (v20 || (v23 != 1633842036 ? (v24 = v23 == 1818848875) : (v24 = 1), v24))
      {
        v25 = v23 == 1633842036 || v23 == 1818848875;
        if (v25)
        {
          v26 = 80;
        }

        else
        {
          v26 = 84;
        }

        if (v25)
        {
          v58 = 84;
        }

        else
        {
          v58 = 80;
        }

        v27 = v21 == 1281450528 || v21 == 1482250784;
        v55 = a3[v20];
        if (v27)
        {
          v57 = v26;
        }

        else
        {
          v57 = 80;
        }

        if (v27)
        {
          v56 = 0;
        }

        else
        {
          v58 = 84;
          v56 = 1;
        }
      }

      else
      {
        v55 = *a3;
        v56 = 1;
        v57 = 80;
        v58 = 84;
      }

      v28 = *(v22 + v57);
      if (v28 != v21 && (v21 != 1129142603 || v28 != 876825682) && (v21 != 876825682 || v28 != 1129142603) && (v21 != 1281450528 || v28 != 1482250784) && (v21 != 1482250784 || v28 != 1281450528))
      {
        sub_240AC15A4(v172, 9, "ColorSpace mismatch", v14, v15, v16, v17, v18, v170);
        goto LABEL_242;
      }

      v181 = v20;
      v29 = v23 == 1633842036 || v23 == 1818848875;
      v180 = *(v22 + v58);
      if (!v29 && (v176 != 1 || v23 != 1852662636))
      {
        break;
      }

      if (v55 > 3)
      {
        goto LABEL_242;
      }

      v30 = *(v22 + 8);
      if (v23 == 1852662636)
      {
        v31 = sub_240AC7924(v22, 0x6E636C32u);
        if (!v31)
        {
          goto LABEL_242;
        }

        v32 = v31;
        v33 = sub_240ACADFC(v30, 0, 0);
        if (v33)
        {
          sub_240ACC658(v32, 0);
          if (v34)
          {
            *(v34 + 56) = *v33;
            *v33 = v34;
            if (sub_240ACAF44(v33))
            {
              if (*(v22 + 80) != 1281450528)
              {
LABEL_141:
                v186 = 0uLL;
                v184 = 0;
                v185 = 0x3FF0000000000000uLL;
                v187 = 0x3FF0000000000000uLL;
                v188 = 0uLL;
                v189 = 0x3FF0000000000000;
                v182 = 0;
                v183 = 0;
                goto LABEL_142;
              }

              v35 = sub_240AC977C(v30, 3, 3u, qword_240C14C48, 0);
              if (v35)
              {
                v35[1].i32[1] = 840971296;
                v36 = *v33;
                if (*v33)
                {
                  do
                  {
                    v37 = v36;
                    v36 = *(v36 + 56);
                  }

                  while (v36);
                  *(v37 + 56) = v35;
                  v35[7] = 0;
                }

                else
                {
                  *v33 = v35;
                }

                if (sub_240ACAF44(v33))
                {
                  goto LABEL_136;
                }
              }
            }
          }
        }

        sub_240ACB1C0(v33);
        sub_240ACC2E0(v32);
        goto LABEL_242;
      }

      v38 = *(v22 + 132);
      if (v38 < 1)
      {
        goto LABEL_242;
      }

      v39 = dword_240C14BC0[v55];
      v40 = dword_240C14BD0[v55];
      v41 = 136;
      v42 = *(v22 + 132);
      do
      {
        if (*(v22 + v41) == v40)
        {
          v49 = sub_240AC7924(v22, v40);
          v50 = sub_240ACB2E4(v49);
          if (!v50)
          {
            goto LABEL_242;
          }

          v33 = v50;
          v51 = *(v22 + 80);
          v52 = *(v22 + 84);
          if (v51 == 1482250784)
          {
            v53 = sub_240AC977C(v30, 3, 3u, qword_240C14DE0, 0);
            if (!v53)
            {
              goto LABEL_241;
            }

            v54 = 2016568352;
            goto LABEL_123;
          }

          if (v51 == 1281450528)
          {
            v53 = sub_240AC977C(v30, 3, 3u, qword_240C14D80, qword_240C14DC8);
            if (!v53)
            {
              goto LABEL_241;
            }

            v54 = 1815241760;
LABEL_123:
            v53[1].i32[1] = v54;
            v53[7] = *v33;
            *v33 = v53;
            if (!sub_240ACAF44(v33))
            {
              goto LABEL_241;
            }
          }

          if (v52 == 1482250784)
          {
            v90 = sub_240AC977C(v30, 3, 3u, qword_240C14D38, 0);
            if (!v90)
            {
              goto LABEL_241;
            }

            v90[1].i32[1] = 1681029152;
            v93 = *v33;
            if (!*v33)
            {
              goto LABEL_134;
            }

            do
            {
              v92 = v93;
              v93 = *(v93 + 56);
            }

            while (v93);
LABEL_133:
            *(v92 + 56) = v90;
            v90[7] = 0;
          }

          else
          {
            if (v52 != 1281450528)
            {
              goto LABEL_137;
            }

            v90 = sub_240AC977C(v30, 3, 3u, qword_240C14CD8, qword_240C14D20);
            if (!v90)
            {
              goto LABEL_241;
            }

            v90[1].i32[1] = 1681026080;
            v91 = *v33;
            if (*v33)
            {
              do
              {
                v92 = v91;
                v91 = *(v91 + 56);
              }

              while (v91);
              goto LABEL_133;
            }

LABEL_134:
            *v33 = v90;
          }

          if (!sub_240ACAF44(v33))
          {
            goto LABEL_241;
          }

          goto LABEL_136;
        }

        v41 += 4;
        --v42;
      }

      while (v42);
      v43 = 136;
      v44 = *(v22 + 132);
      do
      {
        if (*(v22 + v43) == 1144144432)
        {
          v59 = sub_240AC7924(v22, 0x44324230u);
          v33 = sub_240ACB2E4(v59);
          goto LABEL_136;
        }

        v43 += 4;
        --v44;
      }

      while (v44);
      v45 = 136;
      v46 = *(v22 + 132);
      do
      {
        if (*(v22 + v45) == v39)
        {
          goto LABEL_99;
        }

        v45 += 4;
        --v46;
      }

      while (v46);
      v39 = 1093812784;
      v47 = (v22 + 136);
      while (1)
      {
        v48 = *v47++;
        if (v48 == 1093812784)
        {
          break;
        }

        if (!--v38)
        {
          goto LABEL_242;
        }
      }

LABEL_99:
      v84 = sub_240AC7924(v22, v39);
      if (!v84)
      {
        goto LABEL_242;
      }

      v85 = sub_240ACB2E4(v84);
      if (!v85)
      {
        goto LABEL_242;
      }

      v33 = v85;
      if (*(v22 + 84) == 1281450528)
      {
        sub_240AC8B98(v85);
      }

      v86 = *(v22 + 132);
      if (v86 >= 1)
      {
        do
        {
          v87 = 0;
          while (*(v22 + 136 + 4 * v87) != v39)
          {
            if (v86 == ++v87)
            {
              goto LABEL_136;
            }
          }

          v39 = *(v22 + 536 + 4 * v87);
        }

        while (v39);
        if (**(v22 + 8 * v87 + 2936) == 1835430962)
        {
          if (*(v22 + 80) == 1281450528)
          {
            v88 = sub_240AC977C(v30, 3, 3u, qword_240C14C90, 0);
            if (!v88)
            {
              goto LABEL_241;
            }

            v88[1].i32[1] = 874525216;
            v88[7] = *v33;
            *v33 = v88;
            if (!sub_240ACAF44(v33))
            {
              goto LABEL_241;
            }
          }

          if (*(v22 + 84) == 1281450528)
          {
            v89 = sub_240AC977C(v30, 3, 3u, qword_240C14C48, 0);
            if (v89)
            {
              v89[1].i32[1] = 840971296;
            }

            if (!sub_240ACB414(v33, 1, v89))
            {
              goto LABEL_241;
            }
          }
        }

LABEL_136:
        if (!v33)
        {
          goto LABEL_242;
        }
      }

LABEL_137:
      if (!v181 || v23 != 1633842036)
      {
        goto LABEL_141;
      }

      v94 = *(v174 + 4 * v181);
      v95 = *(v175 + 8 * v181);
      if (!sub_240ABF2E0())
      {
        goto LABEL_241;
      }

LABEL_142:
      v96 = v19;
      v97 = v21;
LABEL_143:
      if (!sub_240ABFCF4(v96, v97, v28, &v185, &v182))
      {
        goto LABEL_241;
      }

LABEL_144:
      v98 = *v33;
      if (*v19)
      {
        a3 = v179;
        if (v98)
        {
LABEL_148:
          do
          {
            v99 = sub_240ACAC80(v98);
            if (!v99)
            {
              goto LABEL_241;
            }

            v100 = *v19;
            if (*v19)
            {
              do
              {
                v101 = v100;
                v100 = *(v100 + 56);
              }

              while (v100);
              *(v101 + 56) = v99;
              v99[7] = 0;
            }

            else
            {
              *v19 = v99;
            }

            if (!sub_240ACAF44(v19))
            {
              goto LABEL_241;
            }

            v98 = *(v98 + 56);
          }

          while (v98);
        }
      }

      else
      {
        a3 = v179;
        if (v98)
        {
          goto LABEL_148;
        }

        v19[1] = v33[1];
      }

      a4 = v178;
      if (!sub_240ACAF44(v19))
      {
        goto LABEL_241;
      }

      sub_240ACB1C0(v33);
      v20 = v181 + 1;
      v21 = v180;
      if (v181 + 1 == v177)
      {
        if (v173 < 0 && (v180 == 1129142603 || v180 == 1380401696 || v180 == 1196573017))
        {
          v163 = v19[7];
          v164 = sub_240AD3DAC(v180);
          if (v163)
          {
            v165 = &qword_27E516570;
            while (1)
            {
              v165 = *v165;
              if (!v165)
              {
                break;
              }

              if (v165 == v163)
              {
                goto LABEL_258;
              }
            }

            v165 = &unk_278CB2F00;
          }

          else
          {
            v165 = &unk_278CB2F00;
          }

LABEL_258:
          v166 = v165[6];
          if (!v166)
          {
            v166 = &xmmword_281500C10;
          }

          v167 = (*(v166 + 1))(v163, 64, 0x10A00405BC1CEE9);
          if (!v167)
          {
            goto LABEL_242;
          }

          *v167 = v163;
          v167[1] = vdup_n_s32(0x636C7020u);
          v167[2].i32[0] = v164;
          v167[2].i32[1] = v164;
          v167[3] = sub_240ACAAF4;
          v167[4] = 0;
          v167[5] = 0;
          v167[6] = 0;
          v168 = *v19;
          if (*v19)
          {
            do
            {
              v169 = v168;
              v168 = *(v168 + 56);
            }

            while (v168);
            *(v169 + 56) = v167;
            v167[7] = 0;
          }

          else
          {
            *v19 = v167;
          }

          if (!sub_240ACAF44(v19))
          {
            goto LABEL_242;
          }
        }

        goto LABEL_244;
      }
    }

    if (v56)
    {
      v33 = sub_240AC8344(v22, v55);
      if (!v33)
      {
        goto LABEL_242;
      }

      goto LABEL_144;
    }

    v171 = v21;
    v60 = *(v22 + 8);
    v61 = v55;
    if (v55 <= 3)
    {
      v62 = *(v22 + 132);
      if (v62 >= 1)
      {
        v63 = dword_240C14BF0[v55];
        v64 = 136;
        v65 = *(v22 + 132);
        while (*(v22 + v64) != v63)
        {
          v64 += 4;
          if (!--v65)
          {
            v66 = dword_240C14BE0[v61];
            v67 = 136;
            v68 = *(v22 + 132);
            while (*(v22 + v67) != v66)
            {
              v67 += 4;
              if (!--v68)
              {
                v66 = 1110589744;
                break;
              }
            }

            v69 = 136;
            while (*(v22 + v69) != v66)
            {
              v69 += 4;
              if (!--v62)
              {
                goto LABEL_90;
              }
            }

            v148 = sub_240AC7924(v22, v66);
            if (!v148)
            {
              goto LABEL_242;
            }

            v149 = *(v22 + 132);
            if (v149 < 1)
            {
LABEL_211:
              v151 = 0;
            }

            else
            {
              do
              {
                v150 = 0;
                while (*(v22 + 136 + 4 * v150) != v66)
                {
                  if (v149 == ++v150)
                  {
                    goto LABEL_211;
                  }
                }

                v66 = *(v22 + 536 + 4 * v150);
              }

              while (v66);
              v151 = **(v22 + 8 * v150 + 2936) == 1835430962;
            }

            v152 = sub_240ACB2E4(v148);
            if (!v152)
            {
              goto LABEL_242;
            }

            v33 = v152;
            if (*(v22 + 84) == 1281450528)
            {
              sub_240AC8B98(v152);
            }

            if (!v151 || *(v22 + 84) != 1281450528)
            {
              goto LABEL_239;
            }

            v153 = sub_240AC977C(v60, 3, 3u, qword_240C14C90, 0);
            if (v153)
            {
              v153[1].i32[1] = 874525216;
              v153[7] = *v33;
              *v33 = v153;
              if (sub_240ACAF44(v33))
              {
                if (*(v22 + 80) != 1281450528)
                {
                  goto LABEL_239;
                }

                v154 = sub_240AC977C(v60, 3, 3u, qword_240C14C48, 0);
                if (v154)
                {
                  v154[1].i32[1] = 840971296;
                }

                if (sub_240ACB414(v33, 1, v154))
                {
                  goto LABEL_239;
                }
              }
            }

LABEL_241:
            sub_240ACB1C0(v33);
LABEL_242:
            sub_240ACB1C0(v19);
LABEL_243:
            v19 = 0;
            goto LABEL_244;
          }
        }

        v137 = sub_240AC7924(v22, v63);
        v138 = sub_240ACB2E4(v137);
        if (!v138)
        {
          goto LABEL_242;
        }

        v33 = v138;
        v140 = *(v22 + 80);
        v139 = *(v22 + 84);
        if (v139 == 1482250784)
        {
          v141 = sub_240AC977C(v60, 3, 3u, qword_240C14DE0, 0);
          if (!v141)
          {
            goto LABEL_241;
          }

          v142 = 2016568352;
        }

        else
        {
          if (v139 != 1281450528)
          {
            goto LABEL_186;
          }

          v141 = sub_240AC977C(v60, 3, 3u, qword_240C14D80, qword_240C14DC8);
          if (!v141)
          {
            goto LABEL_241;
          }

          v142 = 1815241760;
        }

        v141[1].i32[1] = v142;
        v141[7] = *v33;
        *v33 = v141;
        if (!sub_240ACAF44(v33))
        {
          goto LABEL_241;
        }

LABEL_186:
        if (v140 == 1482250784)
        {
          v143 = sub_240AC977C(v60, 3, 3u, qword_240C14D38, 0);
          if (!v143)
          {
            goto LABEL_241;
          }

          v143[1].i32[1] = 1681029152;
          v147 = *v33;
          if (*v33)
          {
            do
            {
              v145 = v147;
              v147 = *(v147 + 56);
            }

            while (v147);
            goto LABEL_199;
          }
        }

        else
        {
          if (v140 != 1281450528)
          {
            goto LABEL_239;
          }

          v143 = sub_240AC977C(v60, 3, 3u, qword_240C14CD8, qword_240C14D20);
          if (!v143)
          {
            goto LABEL_241;
          }

          v143[1].i32[1] = 1681026080;
          v144 = *v33;
          if (*v33)
          {
            do
            {
              v145 = v144;
              v144 = *(v144 + 56);
            }

            while (v144);
LABEL_199:
            *(v145 + 56) = v143;
            v143[7] = 0;
            goto LABEL_201;
          }
        }

        *v33 = v143;
LABEL_201:
        if (sub_240ACAF44(v33))
        {
          goto LABEL_238;
        }

        goto LABEL_241;
      }
    }

LABEL_90:
    if (*(v22 + 80) != 1196573017)
    {
      memset(v192, 0, 72);
      v191 = 0;
      memset(v190, 0, sizeof(v190));
      if (!sub_240AC8AE0(v192, v22) || !sub_240ACB590(v192, v190))
      {
        goto LABEL_237;
      }

      v102 = 0;
      v103 = v190;
      do
      {
        for (i = 0; i != 24; i += 8)
        {
          *(v103 + i) = *(v103 + i) * 1.99996948;
        }

        ++v102;
        v103 = (v103 + 24);
      }

      while (v102 != 3);
      v105 = v60;
      v106 = sub_240AC7924(v22, 0x72545243u);
      v107 = sub_240AC7924(v22, 0x67545243u);
      v108 = sub_240AC7924(v22, 0x62545243u);
      v33 = 0;
      if (!v106)
      {
        goto LABEL_238;
      }

      if (!v107)
      {
        goto LABEL_238;
      }

      v116 = v108;
      if (!v108)
      {
        goto LABEL_238;
      }

      v117 = sub_240AC2A68(v106, v109, v110, v111, v112, v113, v114, v115);
      v193[0] = v117;
      v125 = sub_240AC2A68(v107, v118, v119, v120, v121, v122, v123, v124);
      v193[1] = v125;
      v133 = sub_240AC2A68(v116, v126, v127, v128, v129, v130, v131, v132);
      v33 = 0;
      v193[2] = v133;
      if (!v117 || !v125 || !v133)
      {
        goto LABEL_238;
      }

      v33 = sub_240ACADFC(v105, 3u, 3);
      if (!v33 || (*(v22 + 84) != 1281450528 || (sub_240ACA918(v105), sub_240ACB414(v33, 1, v134))) && (v135 = sub_240AC977C(v105, 3, 3u, v190, 0), sub_240ACB414(v33, 1, v135)) && (v136 = sub_240AC904C(v105, 3, v193), sub_240ACB414(v33, 1, v136)))
      {
        sub_240AC29F4(v193);
LABEL_238:
        if (!v33)
        {
          goto LABEL_242;
        }

LABEL_239:
        v159 = *(v174 + 4 * v181);
        v160 = *(v175 + 8 * v181);
        if (!sub_240ABF2E0())
        {
          goto LABEL_241;
        }

        v96 = v19;
        v97 = v171;
        goto LABEL_143;
      }

      sub_240AC29F4(v193);
      goto LABEL_236;
    }

    v70 = sub_240AC7924(v22, 0x6B545243u);
    if (!v70)
    {
      goto LABEL_237;
    }

    v78 = v60;
    v79 = sub_240AC2A68(v70, v71, v72, v73, v74, v75, v76, v77);
    *&v192[0] = v79;
    if (!v79)
    {
      goto LABEL_237;
    }

    v80 = v79;
    v33 = sub_240ACADFC(v78, 3u, 1);
    if (!v33)
    {
LABEL_234:
      sub_240AC26D0(v80);
      goto LABEL_238;
    }

    if (*(v22 + 84) == 1281450528)
    {
      v81 = sub_240AC977C(v78, 1, 3u, qword_240C14C18, 0);
      if (v81)
      {
        v82 = *v33;
        if (*v33)
        {
          do
          {
            v83 = v82;
            v82 = *(v82 + 56);
          }

          while (v82);
LABEL_195:
          *(v83 + 56) = v81;
          v81[7] = 0;
          goto LABEL_225;
        }

        goto LABEL_224;
      }
    }

    else
    {
      v81 = sub_240AC977C(v78, 1, 3u, qword_240C14C30, 0);
      if (v81)
      {
        v146 = *v33;
        if (*v33)
        {
          do
          {
            v83 = v146;
            v146 = *(v146 + 56);
          }

          while (v146);
          goto LABEL_195;
        }

LABEL_224:
        *v33 = v81;
LABEL_225:
        if (sub_240ACAF44(v33))
        {
          v155 = sub_240AC904C(v78, 1, v192);
          if (v155)
          {
            v156 = *v33;
            if (*v33)
            {
              do
              {
                v157 = v156;
                v156 = *(v156 + 56);
              }

              while (v156);
              *(v157 + 56) = v155;
              v155[7] = 0;
            }

            else
            {
              *v33 = v155;
            }

            v158 = sub_240ACAF44(v33);
            v80 = *&v192[0];
            if (v158)
            {
              goto LABEL_234;
            }
          }

          else
          {
            v80 = *&v192[0];
          }
        }
      }
    }

    sub_240AC26D0(v80);
LABEL_236:
    sub_240ACB1C0(v33);
LABEL_237:
    v33 = 0;
    goto LABEL_238;
  }

LABEL_244:
  v161 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_240ABF2E0()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = v5;
  v8 = v7;
  v9 = v1;
  v10 = v0;
  v122 = *MEMORY[0x277D85DE8];
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v11 = v7 + 1;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = 0x3FF0000000000000;
  v7[5] = 0;
  v12 = v7 + 5;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0x3FF0000000000000;
  v5->f64[0] = 0.0;
  v5->f64[1] = 0.0;
  v5[1].f64[0] = 0.0;
  if (v2 != 3)
  {
    if (!v3)
    {
      goto LABEL_25;
    }

    v25 = v2;
    v99 = 0uLL;
    v100 = 0.0;
    v97 = 0uLL;
    v98 = 0.0;
    sub_240AD4764(&v99, *(v1 + 8 * (v0 - 1)), v2);
    v26 = *(v9 + 8 * v10);
    v27 = v26[19];
    if (v27 == 1633842036 || v27 == 1852662636 || v27 == 1818848875 || v25 >= 3)
    {
      goto LABEL_17;
    }

    if ((v25 & 1) == 0 && v26[18] >> 26)
    {
      if (sub_240AC8C00(v26))
      {
        sub_240AD4890(v26, 1, v97.f64);
      }

      else
      {
        v97 = xmmword_240C111F0;
        v98 = 0.00287;
      }

LABEL_18:
      v28 = vmovn_s64(vmvnq_s8(vceqq_f64(v99, v97)));
      if (((v28.i32[0] | v28.i32[1]) & 1) != 0 || v100 != v98)
      {
        v29 = (v98 - *&qword_27E516520) / (v100 - *&qword_27E516520);
        v30 = vsubq_f64(v97, v99);
        v31 = -(*&qword_27E516520 * (v98 - v100)) / (v100 - *&qword_27E516520);
        v32 = vsubq_f64(v99, xmmword_27E516510);
        v33 = vdivq_f64(vsubq_f64(v97, xmmword_27E516510), v32);
        v34 = vnegq_f64(xmmword_27E516510);
        *v8 = v33.f64[0];
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
        *(v8 + 32) = v33.f64[1];
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
        *(v8 + 64) = v29;
        *v6 = vdivq_f64(vmulq_f64(v30, v34), v32);
        v6[1].f64[0] = v31;
      }

      goto LABEL_25;
    }

    v69 = v26[33];
    if (v69 < 1)
    {
      goto LABEL_73;
    }

    v70 = v26 + 34;
    while (1)
    {
      v71 = *v70++;
      if (v71 == dword_240C14BE0[v25])
      {
        break;
      }

      if (!--v69)
      {
        goto LABEL_73;
      }
    }

    v51 = v26[20];
    v52 = v51 == 1129142603 || v51 == 1196573017;
    if (!v52 && v51 != 1380401696)
    {
LABEL_73:
      sub_240AD4764(&v97, v26, v25);
      goto LABEL_18;
    }

    memset(v95, 0, 24);
    *&v91 = 0;
    v54 = v25;
    v90 = 0uLL;
    if (v25 == 1)
    {
      v116 = 0uLL;
      v117 = 0;
      if (!sub_240AD4764(&v116, v26, 1u))
      {
        goto LABEL_18;
      }

      sub_240AD37AC(v95[0].i64, v116.f64);
      v54 = 1;
    }

    v55 = sub_240AD4ED4(v26, v54);
    if (!v55)
    {
      goto LABEL_18;
    }

    v56 = v55;
    v57 = 0;
    v58 = 0;
    v59 = vdupq_n_s64(0xC049000000000000);
    v84 = *(v95 + 8);
    v60 = vbslq_s8(vcgtq_f64(v59, *(v95 + 8)), v59, *(v95 + 8));
    v61 = vdupq_n_s64(0x4049000000000000uLL);
    v85 = vbslq_s8(vcgtq_f64(v60, v61), v61, v60);
    do
    {
      *v86 = v57 / 255.0;
      *(v86 + 8) = v85;
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0x100000001;
      (*(v56 + 8))(v56, v86, &v90, 1, 1, v107);
      v116.f64[v58] = *v86;
      v110.f64[v58++] = v90.f64[0];
      v57 += 100;
    }

    while (v58 != 256);
    v62 = v115;
    v63 = 254;
    do
    {
      if (v110.f64[v63] < v62)
      {
        v62 = v110.f64[v63];
      }

      v110.f64[v63] = v62;
    }

    while (v63-- > 1);
    if (v110.f64[0] < v115)
    {
      v65 = v115 - v110.f64[0];
      if (v25 != 1)
      {
        goto LABEL_76;
      }

      v66 = 0;
      v67 = 0;
      do
      {
        while (1)
        {
          v68 = v116.f64[v66];
          if (v68 <= v110.f64[0] + v65 * 0.2 || vabdd_f64(v68, v110.f64[v66]) < 4.0)
          {
            break;
          }

          ++v66;
          v67 = 1;
          if (v66 == 256)
          {
            goto LABEL_76;
          }
        }

        ++v66;
      }

      while (v66 != 256);
      if ((v67 & 1) == 0)
      {
        v82 = v95;
      }

      else
      {
LABEL_76:
        v72 = 0;
        v73 = vdupq_lane_s64(*&v110.f64[0], 0);
        v74 = vdupq_lane_s64(*&v65, 0);
        do
        {
          v107[v72] = vdivq_f64(vsubq_f64(*(&v110 + v72 * 16), v73), v74);
          ++v72;
        }

        while (v72 != 128);
        v75 = 0;
        v76 = 0;
        v77 = dbl_240C111E0[v25 == 1];
        v78 = 0.25;
        if (v25 == 1)
        {
          v78 = 0.5;
        }

        do
        {
          v79 = *(v107 + v75 * 8);
          if (v79 >= v77 && v79 < v78)
          {
            v103.f64[v76] = v116.f64[v75];
            *(v101 + v76++) = v79;
          }

          ++v75;
        }

        while (v75 != 256);
        if (v76 <= 2)
        {
          goto LABEL_88;
        }

        v81 = sub_240AD4FC0(v76, v103.f64, v101);
        if (v81 < 0.0)
        {
          v81 = 0.0;
        }

        *v86 = v81;
        *(v86 + 8) = v84;
        v82 = v86;
      }

      sub_240AD38D4(&v97, v82);
      sub_240AE2944(v56);
      goto LABEL_18;
    }

LABEL_88:
    sub_240AE2944(v56);
LABEL_17:
    v97 = 0uLL;
    v98 = 0.0;
    goto LABEL_18;
  }

  v13 = v4;
  v94 = 0.0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = 0.0;
  v87 = 0u;
  v88 = 0u;
  v14 = v0 - 1;
  memset(v86, 0, sizeof(v86));
  v15 = *(v1 + 8 * (v0 - 1));
  v16 = sub_240AC7924(v15, 0x77747074u);
  if (!v16 || !(*(v15 + 72) >> 26) && *(v15 + 76) == 1835955314)
  {
    v16 = &xmmword_27E516510;
  }

  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  sub_240AC8234(&v90, *(v9 + 8 * v14));
  v20 = *(v9 + 8 * v10);
  v21 = sub_240AC7924(v20, 0x77747074u);
  if (!v21 || !(*(v20 + 72) >> 26) && *(v20 + 76) == 1835955314)
  {
    v21 = &xmmword_27E516510;
  }

  v23 = *v21;
  v22 = v21[1];
  v24 = v21[2];
  sub_240AC8234(v86, *(v9 + 8 * v10));
  if (v13 == 1.0)
  {
    *v8 = v18 / v23;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    *(v8 + 32) = v17 / v22;
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    *(v8 + 64) = v19 / v24;
    goto LABEL_25;
  }

  v109 = 0.0;
  v108 = 0u;
  memset(v107, 0, sizeof(v107));
  memset(v101, 0, sizeof(v101));
  v102 = 0;
  v116.f64[0] = v18 / v23;
  v118.f64[0] = 0.0;
  v116.f64[1] = 0.0;
  v117 = 0;
  v118.f64[1] = v17 / v22;
  v119 = 0;
  v120 = 0uLL;
  v35 = v19 / v24;
  v121 = v35;
  if (v13 == 0.0)
  {
    v110 = v86[0];
    v111 = v86[1];
    v112 = v87;
    v113 = v88;
    v114 = v89;
    v107[0] = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, *(v86 + 1)), v116, *v86), v120, *&v86[1]);
    *&v107[1] = *(v86 + 1) * 0.0 + *v86 * 0.0 + *&v86[1] * v35;
    *(&v107[1] + 8) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, *&v87), v116, *(&v86[1] + 1)), v120, *(&v87 + 1));
    *(&v107[2] + 1) = *&v87 * 0.0 + *(&v86[1] + 1) * 0.0 + *(&v87 + 1) * v35;
    v108 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, v88.f64[1]), v116, v88.f64[0]), v120, v89);
    v109 = v88.f64[1] * 0.0 + v88.f64[0] * 0.0 + v89 * v35;
    sub_240ACB4CC(v8, v107, v86);
    *&v104[16] = v92;
    v105 = v93;
    v106 = v94;
    *v104 = v91;
    v103 = v90;
    result = sub_240ACB590(v103.f64, v101);
    if (!result)
    {
      goto LABEL_28;
    }

    v37 = v107;
    v38 = v101;
    goto LABEL_24;
  }

  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v112 = v92;
  v113 = v93;
  v114 = v94;
  v111 = v91;
  v110 = v90;
  if (!sub_240ACB590(v110.f64, v107))
  {
    goto LABEL_35;
  }

  v103 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, *(v107 + 1)), v116, *v107), v120, *&v107[1]);
  *v104 = *(v107 + 1) * 0.0 + *v107 * 0.0 + *&v107[1] * v35;
  *&v104[8] = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, *&v107[2]), v116, *(&v107[1] + 1)), v120, *(&v107[2] + 1));
  *&v104[24] = *&v107[2] * 0.0 + *(&v107[1] + 1) * 0.0 + *(&v107[2] + 1) * v35;
  v105 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v118, v108.f64[1]), v116, v108.f64[0]), v120, v109);
  v106 = v108.f64[1] * 0.0 + v108.f64[0] * 0.0 + v109 * v35;
  v41 = sub_240ABFFBC(&v90);
  v42 = sub_240ABFFBC(v86);
  if (v41 < 0.0 || (v43 = v42, v42 < 0.0))
  {
LABEL_35:
    result = 0;
    goto LABEL_28;
  }

  if (!sub_240ACB454(&v116) || vabdd_f64(v41, v43) >= 0.01)
  {
    v97 = 0uLL;
    v98 = 0.0;
    sub_240AE2614(&v97, v41 * v13 + (1.0 - v13) * v43, v44, v45, v46, v47, v48, v49, v50, v83);
    v99.f64[0] = v97.f64[0] / v97.f64[1] * v98;
    v99.f64[1] = v98;
    v100 = v98 * ((1.0 - v97.f64[0] - v97.f64[1]) / v97.f64[1]);
    sub_240AE2748(v95, v99.f64, &xmmword_27E516510);
    v37 = &v103;
    v38 = v95;
LABEL_24:
    sub_240ACB4CC(v8, v37->f64, v38);
    goto LABEL_25;
  }

  *v8 = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  *(v8 + 32) = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *(v8 + 64) = 0x3FF0000000000000;
LABEL_25:
  for (i = 0; i != 3; ++i)
  {
    v6->f64[i] = v6->f64[i] / 1.99996948;
  }

  result = 1;
LABEL_28:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ABFCF4(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 1281450528)
  {
    if (a3 != 1281450528)
    {
      if (a3 != 1482250784)
      {
        return 0;
      }

      sub_240ACA918(*(a1 + 56));
      result = sub_240ACB414(a1, 1, v9);
      if (result)
      {
        if (sub_240ABFF24(a4, a5))
        {
          return 1;
        }

        v11 = sub_240AC977C(*(a1 + 56), 3, 3u, a4, a5);
        result = 0;
        if (a1)
        {
          if (v11)
          {
            v12 = *a1;
            if (*a1)
            {
              do
              {
                v13 = v12;
                v12 = *(v12 + 56);
              }

              while (v12);
              *(v13 + 56) = v11;
              v11[7] = 0;
            }

            else
            {
              *a1 = v11;
            }

            result = sub_240ACAF44(a1);
            if (result)
            {
              return 1;
            }
          }
        }
      }

      return result;
    }

    if (sub_240ABFF24(a4, a5))
    {
      return 1;
    }

    sub_240ACA918(*(a1 + 56));
    result = sub_240ACB414(a1, 1, v15);
    if (!result)
    {
      return result;
    }

    v16 = sub_240AC977C(*(a1 + 56), 3, 3u, a4, a5);
    result = 0;
    if (!a1 || !v16)
    {
      return result;
    }

    v17 = *a1;
    if (*a1)
    {
      do
      {
        v18 = v17;
        v17 = *(v17 + 56);
      }

      while (v17);
      *(v18 + 56) = v16;
      v16[7] = 0;
    }

    else
    {
      *a1 = v16;
    }

    result = sub_240ACAF44(a1);
    if (!result)
    {
      return result;
    }

LABEL_33:
    sub_240ACAB1C(*(a1 + 56));
LABEL_34:
    result = sub_240ACB414(a1, 1, v8);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  if (a2 != 1482250784)
  {
    return a2 == a3;
  }

  if (a3 != 1281450528)
  {
    if (a3 == 1482250784)
    {
      if (!sub_240ABFF24(a4, a5))
      {
        v8 = sub_240AC977C(*(a1 + 56), 3, 3u, a4, a5);
        goto LABEL_34;
      }

      return 1;
    }

    return 0;
  }

  if (sub_240ABFF24(a4, a5))
  {
    goto LABEL_33;
  }

  v14 = sub_240AC977C(*(a1 + 56), 3, 3u, a4, a5);
  result = sub_240ACB414(a1, 1, v14);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL sub_240ABFF24(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if (!a1 && a2)
  {
    return 0;
  }

  v3 = 0;
  v6[0] = 0x3FF0000000000000;
  memset(&v6[1], 0, 24);
  v6[4] = 0x3FF0000000000000;
  memset(&v6[5], 0, 24);
  v4 = 0.0;
  v6[8] = 0x3FF0000000000000;
  do
  {
    v4 = v4 + vabdd_f64(*(a1 + v3 * 8), *&v6[v3]);
    ++v3;
  }

  while (v3 != 9);
  for (i = 0; i != 24; i += 8)
  {
    v4 = v4 + fabs(*(a2 + i));
  }

  return v4 < 0.002;
}

double sub_240ABFFBC(uint64_t a1)
{
  v23 = 0.0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v1;
  v25 = *(a1 + 64);
  v2 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v2;
  if (!sub_240ACB590(v24, &v19))
  {
    return 0.0;
  }

  _Q3.f64[0] = *(&v19 + 1) * *(&xmmword_27E516510 + 1) + *&v19 * *&xmmword_27E516510 + *&v20 * *&qword_27E516520;
  _Q3.f64[1] = *&v21 * *(&xmmword_27E516510 + 1) + *(&v20 + 1) * *&xmmword_27E516510 + *(&v21 + 1) * *&qword_27E516520;
  _Q2 = vmulq_n_f64(_Q3, 1.0 / (_Q3.f64[0] + _Q3.f64[1] + *(&v22 + 1) * *(&xmmword_27E516510 + 1) + *&v22 * *&xmmword_27E516510 + v23 * *&qword_27E516520));
  _D4 = 6.0;
  __asm { FMLA            D3, D4, V2.D[1] }

  _Q3.f64[0] = _Q3.f64[0] + 1.5;
  v10 = (_Q2.f64[0] + _Q2.f64[0]) / _Q3.f64[0];
  v11 = vmuld_lane_f64(3.0, _Q2, 1) / _Q3.f64[0];
  v12 = 0.0;
  v13 = &qword_240C152B8;
  v14 = 31;
  v15 = 0.0;
  while (1)
  {
    v16 = v15;
    v17 = v12;
    v12 = *(v13 - 2);
    v15 = (v11 - *v13 - v13[1] * (v10 - *(v13 - 1))) / sqrt(v13[1] * v13[1] + 1.0);
    if (v14 != 31 && v16 / v15 < 0.0)
    {
      break;
    }

    v13 += 4;
    if (!--v14)
    {
      return -1.0;
    }
  }

  return 1000000.0 / (v17 + v16 / (v16 - v15) * (v12 - v17));
}

uint64_t *sub_240AC0120(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v64 = *MEMORY[0x277D85DE8];
  if (a2 - 256 >= 0xFFFFFF01)
  {
    v14 = 0;
    do
    {
      v15 = *(a3 + v14 * 4);
      if (v15 - 10 <= 5)
      {
        v15 = dword_240C12428[v15 - 10];
      }

      v54[v14++] = v15;
    }

    while (a2 != v14);
    if (*(*a4 + 80) == 1129142603 && ((v16 = a4 + 8 * a2, v17 = *(v16 - 8), *(v17 + 80) == 1129142603) || *(v17 + 76) == 1886549106))
    {
      v7 = sub_240ACADFC(a1, 4u, 4);
      if (v7)
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *&v52 = sub_240AC8344(*(v16 - 8), 1u);
        if (v52)
        {
          v18 = *(v16 - 8);
          if (v18)
          {
            v19 = *(v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          v22 = 0.0;
          if (*(v18 + 76) == 1886549106)
          {
            v49 = v16;
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v57 = 0u;
            v23 = v19;
            v47 = *(v18 + 80);
            v57.i32[0] = sub_240AD3DAC(v47);
            v24 = sub_240AE23B4(v23);
            if (v24)
            {
              v25 = v24;
              sub_240AD40A4(v47);
              v26 = sub_240AE3E94();
              v57.i64[1] = v26;
              sub_240AC6C8C(v25);
              v16 = v49;
              if (v26)
              {
                v55 = 0x4A00000006;
                v56 = 74;
                v27 = 1;
                v28 = 8;
                while (1)
                {
                  v29 = *(&v55 + v28);
                  if (!v29)
                  {
                    break;
                  }

                  v27 *= v29;
                  if (((v29 * v27) & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v28 -= 4;
                  if (v28 == -4)
                  {
                    if (v27 > 0)
                    {
                      v30 = 0;
                      while (1)
                      {
                        v31 = 2;
                        v48 = v30;
                        do
                        {
                          v32 = *(&v55 + v31);
                          v33 = v30;
                          v30 /= v32;
                          v34 = (v33 - v30 * v32) * 65535.0 / (v32 - 1) + 0.5;
                          if (v34 <= 0.0)
                          {
                            v35 = 0;
                          }

                          else if (v34 >= 65535.0)
                          {
                            v35 = -1;
                          }

                          else
                          {
                            v35 = (COERCE_UNSIGNED_INT64(v34 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
                          }

                          v63[v31] = v35;
                          v36 = v31-- + 1;
                        }

                        while (v36 > 1);
                        if (!sub_240AC35CC(v63, &v57))
                        {
                          break;
                        }

                        v30 = v48 + 1;
                        if (v48 + 1 == v27)
                        {
                          v22 = *v58.i32;
                          goto LABEL_38;
                        }
                      }
                    }

                    break;
                  }
                }

                v22 = 0.0;
LABEL_38:
                v16 = v49;
                sub_240AE2944(v57.i64[1]);
              }
            }

            else
            {
              v16 = v49;
            }
          }

          *(&v53 + 1) = v22 / 100.0;
          if (v22 / 100.0 > 0.0)
          {
            v37 = sub_240ABE2A0(a1, a2, v54, a4, a5, a6, a7);
            *&v50 = v37;
            if (v37)
            {
              v38 = v37;
              *(&v51 + 1) = sub_240AC2FF0(a1, a2, v54, a4);
              if (!*(&v51 + 1))
              {
                goto LABEL_47;
              }

              v39 = sub_240AE23B4(a1);
              v40 = *(v16 - 8);
              *(&v50 + 1) = sub_240AE3E94();
              if (!*(&v50 + 1))
              {
                goto LABEL_47;
              }

              v41 = *(v16 - 8);
              *&v51 = sub_240AE3E94();
              if (!v51)
              {
                goto LABEL_47;
              }

              sub_240AC6C8C(v39);
              *(&v52 + 1) = 0;
              v57 = vdupq_n_s32(sub_240AD3D24(1129142603, a7));
              v58 = v57;
              v45 = sub_240AC9DB8(a1, v57.i32, 4u, 4, 0, v42, v43, v44);
              if (!v45 || (v46 = v45, v45[7] = *v7, *v7 = v45, !sub_240ACAF44(v7)) || (sub_240ACA678(v46, sub_240AC063C, &v50), (v38 = v50) != 0))
              {
LABEL_47:
                sub_240ACB1C0(v38);
              }
            }
          }
        }

        if (v51)
        {
          sub_240AE2944(v51);
        }

        if (*(&v50 + 1))
        {
          sub_240AE2944(*(&v50 + 1));
        }

        if (*(&v51 + 1))
        {
          sub_240AC26D0(*(&v51 + 1));
        }

        if (v52)
        {
          sub_240ACB1C0(v52);
        }
      }
    }

    else
    {
      v7 = sub_240ABE2A0(a1, a2, v54, a4, a5, a6, a7);
    }
  }

  else
  {
    v7 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_240AC063C(uint16x4_t *a1, int8x8_t *a2, uint64_t a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = vmovl_u16(*a1);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = vcvtq_f64_u64(v7);
  v7.i64[0] = v6.u32[2];
  v7.i64[1] = v6.u32[3];
  v9 = vdupq_n_s64(0x40EFFFE000000000uLL);
  v10 = vdivq_f64(vcvtq_f64_u64(v7), v9);
  v67 = v9;
  v78 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v8, v9)), v10);
  v11 = sub_240AC2CFC(*(a3 + 24), COERCE_FLOAT(vcvt_f32_f64(v10).i32[1]));
  v12 = v11;
  v76 = v11;
  if (a1->i16[0] || a1->i16[1] || (v13 = a1->i16[2]) != 0)
  {
    (*(*a3 + 32))(&v78, &__dst);
    v14 = __dst.f32[3];
    __asm { FMOV            V3.2D, #0.5 }

    v20 = vaddq_f64(vmulq_f64(vcvtq_f64_f32(*__dst.f32), v67), _Q3);
    v21 = vaddq_f64(vmulq_f64(vcvt_hight_f64_f32(__dst), v67), _Q3);
    *&_Q3.f64[0] = vmovn_s32(vmvnq_s8(vuzp1q_s32(vclezq_f64(v20), vclezq_f64(v21))));
    v22 = vdupq_n_s64(0xC0DFFFC000000000);
    v23 = vmovn_s32(vuzp1q_s32(vcgeq_f64(v20, v67), vcgeq_f64(v21, v67)));
    v24 = vaddq_f64(v21, v22);
    v25 = vaddq_f64(v20, v22);
    v26 = vdupq_n_s64(0x4238000000000000uLL);
    *a2 = vand_s8(vorr_s8(vadd_s16(vuzp1_s16(vshr_n_u32(vmovn_s64(vaddq_f64(v25, v26)), 0x10uLL), vshr_n_u32(vmovn_s64(vaddq_f64(v24, v26)), 0x10uLL)), 0x8000800080008000), v23), *&_Q3.f64[0]);
    if (vabds_f32(v14, v12) >= 0.0000457770657)
    {
      v27 = *(a3 + 8);
      *&v68[0] = 0;
      *(&v68[0] + 1) = 0x100000001;
      v66 = a2;
      (*(v27 + 8))();
      v28 = *(a3 + 16);
      *&v68[0] = 0;
      *(&v68[0] + 1) = 0x100000001;
      (*(v28 + 8))();
      v29 = *(a3 + 32);
      v30 = *(v29 + 8);
      if ((v30 - 3) <= 1 && *(v29 + 12) == 3)
      {
        v31 = 0;
        *&__src = __dst.i64[0];
        DWORD2(__src) = __dst.i32[2];
        v32 = v76;
        if (v30 != 4)
        {
          v32 = 0.0;
        }

        v73 = 0.0;
        v72 = 0uLL;
        memset(v68, 0, sizeof(v68));
        *(&__src + 3) = v32;
        v33 = 1.0e20;
        v69 = 0;
        do
        {
          (*(v29 + 32))(&__src, &v82, v29);
          v34 = 0;
          v35 = 0.0;
          do
          {
            v35 = v35 + ((v74.f32[v34] - v82.f32[v34]) * (v74.f32[v34] - v82.f32[v34]));
            ++v34;
          }

          while (v34 != 3);
          v36 = sqrtf(v35);
          if (v33 <= v36)
          {
            break;
          }

          v37 = *(v29 + 8);
          if (v37)
          {
            memcpy(&__dst, &__src, 4 * v37);
          }

          if (v36 <= 0.0)
          {
            break;
          }

          v38 = 0;
          v39 = &v68[1] + 1;
          do
          {
            v80 = __src;
            *(&v80 + v38) = *(&v80 + v38) + flt_240C11BC8[*(&v80 + v38) < 0.999];
            (*(v29 + 32))(&v80, v79, v29);
            v40 = v79[1];
            v41 = v82;
            *(v39 - 3) = ((v79[0] - v82.f32[0]) / 0.001);
            *v39 = ((v40 - v41.f32[1]) / 0.001);
            v42 = v83;
            v39[3] = ((v79[2] - v83) / 0.001);
            v38 += 4;
            ++v39;
          }

          while (v38 != 12);
          v70 = vcvtq_f64_f32(vsub_f32(v41, v74));
          v71 = (v42 - v75);
          if (!sub_240ACB698(v72.f64, v68, v70.f64))
          {
            goto LABEL_55;
          }

          v43 = 0;
          *&__src = vsub_f32(*&__src, vcvt_f32_f64(v72));
          v44 = v73;
          *(&__src + 2) = *(&__src + 2) - v44;
          do
          {
            v45 = *(&__src + v43);
            v46 = 0.0;
            if (v45 < 0.0 || (v46 = 1.0, v45 > 1.0))
            {
              *(&__src + v43) = v46;
            }

            v43 += 4;
          }

          while (v43 != 12);
          ++v31;
          v33 = v36;
        }

        while (v31 != 30);
        __dst.f32[3] = v76;
        v47 = *(__dst.i64 + 4);
        v48 = ((__dst.f32[0] + __dst.f32[1]) + __dst.f32[2]);
        v49 = v76;
        v50 = *(a3 + 56);
        v51 = 1.0;
        if (v76 + v48 > v50)
        {
          v51 = 1.0 - (v49 + v48 - v50) / v48;
          if (v51 < 0.0)
          {
            v51 = 0.0;
          }
        }

        v52 = v51 * __dst.f32[0] * 65535.0 + 0.5;
        if (v52 <= 0.0)
        {
          v53 = 0;
        }

        else if (v52 >= 65535.0)
        {
          v53 = -1;
        }

        else
        {
          v53 = (COERCE_UNSIGNED_INT64(v52 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        v66->i16[0] = v53;
        v55 = v51 * *&v47 * 65535.0 + 0.5;
        if (v55 <= 0.0)
        {
          v56 = 0;
        }

        else if (v55 >= 65535.0)
        {
          v56 = -1;
        }

        else
        {
          v56 = (COERCE_UNSIGNED_INT64(v55 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        v66->i16[1] = v56;
        v57 = v51 * *(&v47 + 1) * 65535.0 + 0.5;
        if (v57 <= 0.0)
        {
          v58 = 0;
        }

        else if (v57 >= 65535.0)
        {
          v58 = -1;
        }

        else
        {
          v58 = (COERCE_UNSIGNED_INT64(v57 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        v66->i16[2] = v58;
        v59 = v49 * 65535.0 + 0.5;
        if (v59 <= 0.0)
        {
          v60 = 0;
        }

        else if (v59 >= 65535.0)
        {
          v60 = -1;
        }

        else
        {
          v60 = (COERCE_UNSIGNED_INT64(v59 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        v66->i16[3] = v60;
        v61 = *(a3 + 8);
        *&v68[0] = 0;
        *(&v68[0] + 1) = 0x100000001;
        (*(v61 + 8))();
        v62 = vsubq_f64(0, 0);
        v63 = fabs(sqrt(vaddvq_f64(vmulq_f64(v62, v62)) + (0.0 - 0.0) * (0.0 - 0.0)));
        if (v63 > *(a3 + 40))
        {
          *(a3 + 40) = v63;
        }
      }
    }
  }

  else
  {
    a2->i16[2] = 0;
    a2->i32[0] = 0;
    v54 = v11 * 65535.0 + 0.5;
    if (v54 > 0.0)
    {
      if (v54 >= 65535.0)
      {
        v13 = -1;
      }

      else
      {
        v13 = (COERCE_UNSIGNED_INT64(v54 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }
    }

    a2->i16[3] = v13;
  }

LABEL_55:
  v64 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t *sub_240AC0D3C(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a2 - 256 < 0xFFFFFF01)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_17;
  }

  v14 = 0;
  do
  {
    v15 = *(a3 + v14 * 4);
    if (v15 - 10 <= 5)
    {
      v15 = dword_240C12428[v15 - 10];
    }

    v28[v14++] = v15;
  }

  while (a2 != v14);
  if (*(*a4 + 80) != 1129142603 || *(*(a4 + 8 * a2 - 8) + 80) != 1129142603)
  {
    v7 = sub_240ABE2A0(a1, a2, v28, a4, a5, a6, a7);
    goto LABEL_17;
  }

  v27 = 0;
  v7 = sub_240ACADFC(a1, 4u, 4);
  if (v7)
  {
    v16 = sub_240ABE2A0(a1, a2, v28, a4, a5, a6, a7);
    v26 = v16;
    if (v16)
    {
      v17 = v16;
      v27 = sub_240AC2FF0(a1, a2, v28, a4);
      if (!v27)
      {
        goto LABEL_19;
      }

      v29[0] = vdupq_n_s32(sub_240AD3D24(1129142603, a7));
      v29[1] = v29[0];
      v21 = sub_240AC9DB8(a1, v29, 4u, 4, 0, v18, v19, v20);
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = v21;
      v21[7] = *v7;
      *v7 = v21;
      if (!sub_240ACAF44(v7))
      {
        goto LABEL_19;
      }

      v23 = sub_240ACA678(v22, sub_240AC0F84, &v26);
      v17 = v26;
      if (v23)
      {
        sub_240ACB1C0(v26);
        sub_240AC26D0(v27);
        goto LABEL_17;
      }

      if (v26)
      {
LABEL_19:
        sub_240ACB1C0(v17);
      }
    }

    if (v27)
    {
      sub_240AC26D0(v27);
    }

    sub_240ACB1C0(v7);
    goto LABEL_2;
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_240AC0F84(_WORD *a1, uint64_t a2, void *a3)
{
  if (*a1 || a1[1] || a1[2])
  {
    v4 = *a3;
    v5 = *(*a3 + 16);
    (*(v4 + 24))();
  }

  else
  {
    *(a2 + 4) = 0;
    *a2 = 0;
    v7 = a3[1];
    v9 = a1[3];
    v8 = 0;
    (*(*v7 + 128))(&v9, &v8);
    *(a2 + 6) = v8;
  }

  return 1;
}

void *sub_240AC1010(uint64_t *a1, const void *a2, unsigned int a3)
{
  if (a3 > 0x20000000)
  {
    return 0;
  }

  if (a1)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {
        goto LABEL_11;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_11:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  result = (*v7)();
  if (a2 && result)
  {

    return memmove(result, a2, a3);
  }

  return result;
}

uint64_t sub_240AC10CC(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v4 = a3 * a2;
  if (!v4)
  {
    return 0;
  }

  v5 = 0xFFFFFFFF / a3 <= a2 || v4 > 0x20000000;
  v6 = !v5 && v4 >= a2;
  if (!v6 || v4 < a3)
  {
    return 0;
  }

  if (a1)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == a1)
      {
        goto LABEL_20;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_20:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  return (*(v10 + 1))();
}

void *sub_240AC1158(int a1, void *ptr, size_t size, malloc_type_id_t type_id)
{
  if (size <= 0x20000000)
  {
    return malloc_type_realloc(ptr, size, type_id);
  }

  else
  {
    return 0;
  }
}

void sub_240AC1180(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void *sub_240AC1190(uint64_t *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == a1)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = v3[6];
  if (!v4)
  {
    v4 = &xmmword_281500C10;
  }

  v5 = (*v4)();
  v6 = v5;
  if (v5)
  {
    bzero(v5, a2);
  }

  return v6;
}

void *sub_240AC1220(int a1, size_t size, malloc_type_id_t type_id)
{
  if (size <= 0x20000000)
  {
    return malloc_type_malloc(size, type_id);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240AC1270(uint64_t *a1, pthread_mutex_t *a2)
{
  result = pthread_mutex_destroy(a2);
  if (a2)
  {
    if (a1)
    {
      v5 = &qword_27E516570;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        if (v5 == a1)
        {
          goto LABEL_10;
        }
      }

      v5 = &unk_278CB2F00;
    }

    else
    {
      v5 = &unk_278CB2F00;
    }

LABEL_10:
    v6 = v5[6];
    if (!v6)
    {
      v6 = &xmmword_281500C10;
    }

    v7 = *(v6 + 2);

    return v7(a1, a2);
  }

  return result;
}

pthread_mutex_t *sub_240AC1314(uint64_t *a1)
{
  if (a1)
  {
    v1 = &qword_27E516570;
    while (1)
    {
      v1 = *v1;
      if (!v1)
      {
        break;
      }

      if (v1 == a1)
      {
        goto LABEL_8;
      }
    }

    v1 = &unk_278CB2F00;
  }

  else
  {
    v1 = &unk_278CB2F00;
  }

LABEL_8:
  v2 = v1[6];
  if (!v2)
  {
    v2 = &xmmword_281500C10;
  }

  v3 = (*v2)();
  pthread_mutex_init(v3, 0);
  return v3;
}

uint64_t sub_240AC13A8(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 12);
  v6 = (a2 + 7) & 0xFFFFFFF8;
  if (v6 > v4 - v5)
  {
    v7 = 2 * v4;
    if (v7 <= v6)
    {
      v8 = (a2 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v8 = v7;
    }

    v3 = sub_240AC1428(*a1, v8);
    if (!v3)
    {
      return 0;
    }

    *(v3 + 16) = *(a1 + 8);
    *(a1 + 8) = v3;
    v5 = *(v3 + 12);
  }

  v9 = *v3 + v5;
  *(v3 + 12) = v5 + v6;
  return v9;
}

uint64_t sub_240AC1428(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 20480;
  }

  if (a1)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        goto LABEL_11;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_11:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))(a1, 24, 0x1030040D5FA72FALL);
  if (v6)
  {
    if (a1)
    {
      v7 = &qword_27E516570;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (v7 == a1)
        {
          goto LABEL_21;
        }
      }

      v7 = &unk_278CB2F00;
    }

    else
    {
      v7 = &unk_278CB2F00;
    }

LABEL_21:
    v8 = v7[6];
    if (!v8)
    {
      v8 = &xmmword_281500C10;
    }

    v9 = (*v8)(a1, v3, 0x100004077774924);
    *v6 = v9;
    if (v9)
    {
      *(v6 + 8) = v3;
      *(v6 + 12) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      if (a1)
      {
        v10 = &qword_27E516570;
        while (1)
        {
          v10 = *v10;
          if (!v10)
          {
            break;
          }

          if (v10 == a1)
          {
            goto LABEL_32;
          }
        }

        v10 = &unk_278CB2F00;
      }

      else
      {
        v10 = &unk_278CB2F00;
      }

LABEL_32:
      v11 = v10[6];
      if (!v11)
      {
        v11 = &xmmword_281500C10;
      }

      (*(v11 + 2))(a1, v6);
      return 0;
    }
  }

  return v6;
}

uint64_t sub_240AC15A4(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = *MEMORY[0x277D85DE8];
  result = vsnprintf(__str, 0x3FFuLL, a3, &a9);
  if (a1)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == a1)
      {
        goto LABEL_8;
      }
    }

    v12 = &unk_278CB2F00;
  }

  else
  {
    v12 = &unk_278CB2F00;
  }

LABEL_8:
  v13 = v12[3];
  if (!v13)
  {
    v13 = &off_281500C48;
  }

  v14 = *v13;
  if (v14)
  {
    result = (v14)(a1, a2, __str);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AC1684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x277D85DE8];
  if (a2 >= 0xFFFB)
  {
    v9 = "Couldn't create tone curve of more than 65530 entries";
LABEL_10:
    sub_240AC15A4(a1, 2, v9, a4, a5, a6, a7, a8, v54.i8[0]);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v11 = a2;
  if (!(a3 | a2))
  {
    v9 = "Couldn't create tone curve with zero segments and no table";
    goto LABEL_10;
  }

  if (a1)
  {
    v14 = &qword_27E516570;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (v14 == a1)
      {
        goto LABEL_15;
      }
    }

    v14 = &unk_278CB2F00;
  }

  else
  {
    v14 = &unk_278CB2F00;
  }

LABEL_15:
  v18 = v14[6];
  if (!v18)
  {
    v18 = &xmmword_281500C10;
  }

  v19 = (*(v18 + 1))(a1, 56, 0x10B00403445A3AELL);
  v15 = v19;
  if (v19)
  {
    if (a3)
    {
      if (a1)
      {
        v22 = &qword_27E516570;
        while (1)
        {
          v22 = *v22;
          if (!v22)
          {
            break;
          }

          if (v22 == a1)
          {
            goto LABEL_27;
          }
        }

        v22 = &unk_278CB2F00;
      }

      else
      {
        v22 = &unk_278CB2F00;
      }

LABEL_27:
      v23 = v22[6];
      if (!v23)
      {
        v23 = &xmmword_281500C10;
      }

      v24 = (*(v23 + 4))(a1, a3, 112, 0x1080040281415DBLL);
      *(v15 + 16) = v24;
      if (!v24)
      {
        goto LABEL_87;
      }

      if (a1)
      {
        v25 = &qword_27E516570;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          if (v25 == a1)
          {
            goto LABEL_37;
          }
        }

        v25 = &unk_278CB2F00;
      }

      else
      {
        v25 = &unk_278CB2F00;
      }

LABEL_37:
      v26 = v25[6];
      if (!v26)
      {
        v26 = &xmmword_281500C10;
      }

      v27 = (*(v26 + 4))(a1, a3, 8, 0x80040B8603338);
      *(v15 + 32) = v27;
      if (!v27)
      {
        goto LABEL_87;
      }
    }

    else
    {
      *(v19 + 16) = 0;
      *(v19 + 32) = 0;
    }

    *(v15 + 8) = a3;
    if (v11)
    {
      if (a1)
      {
        v28 = &qword_27E516570;
        while (1)
        {
          v28 = *v28;
          if (!v28)
          {
            break;
          }

          if (v28 == a1)
          {
            goto LABEL_49;
          }
        }

        v28 = &unk_278CB2F00;
      }

      else
      {
        v28 = &unk_278CB2F00;
      }

LABEL_49:
      v30 = v28[6];
      if (!v30)
      {
        v30 = &xmmword_281500C10;
      }

      v31 = (*(v30 + 4))(a1, v11, 2, 0x1000040BDFB0063);
      *(v15 + 48) = v31;
      if (!v31)
      {
        goto LABEL_87;
      }

      v29 = v31;
      *(v15 + 40) = v11;
      if (a5)
      {
        v32 = 0;
        do
        {
          *(v31 + 2 * v32) = *(a5 + 2 * v32);
          ++v32;
        }

        while (v11 != v32);
      }
    }

    else
    {
      v29 = 0;
      *(v15 + 48) = 0;
      *(v15 + 40) = 0;
    }

    if (!a3 || !a4)
    {
      goto LABEL_86;
    }

    if (a1)
    {
      v33 = &qword_27E516570;
      while (1)
      {
        v33 = *v33;
        if (!v33)
        {
          break;
        }

        if (v33 == a1)
        {
          goto LABEL_64;
        }
      }

      v33 = &unk_278CB2F00;
    }

    else
    {
      v33 = &unk_278CB2F00;
    }

LABEL_64:
    v34 = v33[6];
    if (!v34)
    {
      v34 = &xmmword_281500C10;
    }

    v35 = (*(v34 + 4))(a1, a3, 8, 0x2004093837F09, v29);
    *(v15 + 24) = v35;
    if (v35)
    {
      v36 = 0;
      do
      {
        v37 = a4 + 112 * v36;
        if (!*(v37 + 8))
        {
          v38 = (v37 + 96);
          v39 = vld1q_dup_f32(v38);
          v54 = v39;
          v55 = v39;
          *(*(v15 + 24) + 8 * v36) = sub_240AC59A8(a1, v54.i32, 1u, 1, 0, 1, v20, v21);
        }

        memmove((*(v15 + 16) + 112 * v36), (a4 + 112 * v36), 0x70uLL);
        v40 = *(v37 + 8);
        if (v40 || !*(v37 + 104))
        {
          *(*(v15 + 16) + 112 * v36 + 104) = 0;
        }

        else
        {
          if (a1)
          {
            v41 = &qword_27E516570;
            while (1)
            {
              v41 = *v41;
              if (!v41)
              {
                break;
              }

              if (v41 == a1)
              {
                goto LABEL_79;
              }
            }
          }

          v41 = &unk_278CB2F00;
LABEL_79:
          v42 = (4 * *(v37 + 96));
          v43 = v41[6];
          if (!v43)
          {
            v43 = &xmmword_281500C10;
          }

          *(*(v15 + 16) + 112 * v36 + 104) = (*(v43 + 5))(a1);
          v40 = *(v37 + 8);
        }

        v44 = sub_240AC1C78(a1, v40, 0);
        if (v44)
        {
          *(*(v15 + 32) + 8 * v36) = *(v44 + 21);
        }

        ++v36;
      }

      while (v36 != a3);
      LODWORD(v11) = *(v15 + 40);
      v29 = *(v15 + 48);
LABEL_86:
      v54 = vdupq_n_s32(v11);
      v55 = v54;
      v45 = sub_240AC59A8(a1, v54.i32, 1u, 1, v29, 0, v20, v21);
      *v15 = v45;
      if (v45)
      {
        goto LABEL_12;
      }
    }

LABEL_87:
    if (*(v15 + 16))
    {
      if (a1)
      {
        v46 = &qword_27E516570;
        while (1)
        {
          v46 = *v46;
          if (!v46)
          {
            break;
          }

          if (v46 == a1)
          {
            goto LABEL_95;
          }
        }

        v46 = &unk_278CB2F00;
      }

      else
      {
        v46 = &unk_278CB2F00;
      }

LABEL_95:
      v47 = v46[6];
      if (!v47)
      {
        v47 = &xmmword_281500C10;
      }

      (*(v47 + 2))(a1);
    }

    if (*(v15 + 32))
    {
      if (a1)
      {
        v48 = &qword_27E516570;
        while (1)
        {
          v48 = *v48;
          if (!v48)
          {
            break;
          }

          if (v48 == a1)
          {
            goto LABEL_106;
          }
        }

        v48 = &unk_278CB2F00;
      }

      else
      {
        v48 = &unk_278CB2F00;
      }

LABEL_106:
      v49 = v48[6];
      if (!v49)
      {
        v49 = &xmmword_281500C10;
      }

      (*(v49 + 2))(a1);
    }

    if (*(v15 + 48))
    {
      if (a1)
      {
        v50 = &qword_27E516570;
        while (1)
        {
          v50 = *v50;
          if (!v50)
          {
            break;
          }

          if (v50 == a1)
          {
            goto LABEL_117;
          }
        }

        v50 = &unk_278CB2F00;
      }

      else
      {
        v50 = &unk_278CB2F00;
      }

LABEL_117:
      v51 = v50[6];
      if (!v51)
      {
        v51 = &xmmword_281500C10;
      }

      (*(v51 + 2))(a1);
    }

    if (a1)
    {
      v52 = &qword_27E516570;
      while (1)
      {
        v52 = *v52;
        if (!v52)
        {
          break;
        }

        if (v52 == a1)
        {
          goto LABEL_127;
        }
      }

      v52 = &unk_278CB2F00;
    }

    else
    {
      v52 = &unk_278CB2F00;
    }

LABEL_127:
    v53 = v52[6];
    if (!v53)
    {
      v53 = &xmmword_281500C10;
    }

    (*(v53 + 2))(a1, v15);
    goto LABEL_11;
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

int *sub_240AC1C78(uint64_t *a1, int a2, _DWORD *a3)
{
  if (a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == a1)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = v3[8];
  if (!v4)
  {
    v4 = &unk_27E516580;
  }

  result = *v4;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  if (result)
  {
    while (1)
    {
      v7 = *result;
      if (v7 >= 1)
      {
        break;
      }

LABEL_18:
      result = *(result + 22);
      if (!result)
      {
        goto LABEL_19;
      }
    }

    v8 = 0;
    while (v6 != result[v8 + 1])
    {
      if (v7 == ++v8)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_19:
    result = &dword_2815034D0;
    while (1)
    {
      v9 = *result;
      if (v9 >= 1)
      {
        break;
      }

LABEL_24:
      result = *(result + 22);
      if (!result)
      {
        return result;
      }
    }

    v8 = 0;
    while (v6 != result[v8 + 1])
    {
      if (v9 == ++v8)
      {
        goto LABEL_24;
      }
    }
  }

  if (a3)
  {
    *a3 = v8;
  }

  return result;
}

double sub_240AC1D54(int a1, uint64_t a2, long double a3)
{
  result = 0.0;
  switch(a1)
  {
    case -8:
      v6 = a3 - *(a2 + 32);
      if (v6 < 0.0 || fabs(*a2) < 0.0001)
      {
        return 0.0;
      }

      v7 = *(a2 + 16);
      result = 0.0;
      if (fabs(v7) >= 0.0001)
      {
        v8 = log(v6 / *a2);
        v9 = v8 / log(*(a2 + 8));
        v10 = *(a2 + 24);
        goto LABEL_79;
      }

      return result;
    case -7:
      v38 = *a2;
      if (fabs(*a2) < 0.0001)
      {
        return 0.0;
      }

      v39 = *(a2 + 8);
      if (fabs(v39) < 0.0001)
      {
        return 0.0;
      }

      v40 = *(a2 + 16);
      result = 0.0;
      if (fabs(v40) >= 0.0001)
      {
        v14 = (__exp10((a3 - *(a2 + 32)) / v39) - *(a2 + 24)) / v40;
        v15 = 1.0 / v38;
        goto LABEL_87;
      }

      return result;
    case -6:
      v7 = *(a2 + 8);
      if (fabs(v7) < 0.0001)
      {
        return 0.0;
      }

      v26 = *(a2 + 24);
      goto LABEL_27;
    case -5:
      v7 = *(a2 + 8);
      if (fabs(v7) < 0.0001)
      {
        return 0.0;
      }

      v21 = *(a2 + 24);
      if (fabs(v21) < 0.0001)
      {
        return 0.0;
      }

      v22 = *(a2 + 48);
      if (v22 + v21 * *(a2 + 32) > a3)
      {
        return (a3 - v22) / v21;
      }

      v26 = *(a2 + 40);
LABEL_27:
      v27 = a3 - v26;
      v28 = a3 - v26 < 0.0;
      result = 0.0;
      if (!v28)
      {
        goto LABEL_78;
      }

      return result;
    case -4:
      v31 = *a2;
      if (fabs(*a2) < 0.0001)
      {
        return 0.0;
      }

      v32 = *(a2 + 8);
      if (fabs(v32) < 0.0001)
      {
        return 0.0;
      }

      v33 = *(a2 + 24);
      result = 0.0;
      if (fabs(v33) >= 0.0001)
      {
        v34 = *(a2 + 16);
        v35 = v34 + v32 * *(a2 + 32);
        v36 = pow(v35, *a2);
        if (v35 < 0.0)
        {
          v36 = 0.0;
        }

        if (v36 <= a3)
        {
          return (pow(a3, 1.0 / v31) - v34) / v32;
        }

        else
        {
          return a3 / v33;
        }
      }

      return result;
    case -3:
      v7 = *(a2 + 8);
      if (fabs(v7) < 0.0001)
      {
        return 0.0;
      }

      v29 = *(a2 + 24);
      if (v29 <= a3)
      {
        v27 = a3 - v29;
        v54 = a3 - v29 <= 0.0;
        result = 0.0;
        if (v54)
        {
          return result;
        }

LABEL_78:
        v9 = pow(v27, 1.0 / *a2);
        v10 = *(a2 + 16);
LABEL_79:
        v30 = v9 - v10;
      }

      else
      {
        v30 = -*(a2 + 16);
      }

      return v30 / v7;
    case -2:
      if (fabs(*a2) >= 0.0001 && a3 >= 0.0)
      {
        v37 = *(a2 + 8);
        if (fabs(v37) >= 0.0001)
        {
          result = (pow(a3, 1.0 / *a2) - *(a2 + 16)) / v37;
          if (result >= 0.0)
          {
            return result;
          }
        }
      }

      return 0.0;
    case -1:
      v44 = *a2;
      if (*a2 == 1.0)
      {
        return a3;
      }

      if (a3 < 0.0)
      {
        v41 = v44 + -1.0;
        goto LABEL_72;
      }

      if (fabs(v44) < 0.0001)
      {
        return 9.99999978e21;
      }

      v15 = 1.0 / v44;
      goto LABEL_86;
    case 0:
      return result;
    case 1:
      v15 = *a2;
      if (*a2 == 1.0)
      {
        return a3;
      }

      if (a3 >= 0.0)
      {
LABEL_86:
        v14 = a3;
        goto LABEL_87;
      }

      v41 = v15 + -1.0;
LABEL_72:
      v28 = fabs(v41) < 0.0001;
      result = 0.0;
      if (v28)
      {
        return a3;
      }

      return result;
    case 2:
      v42 = *(a2 + 8);
      if (fabs(v42) < 0.0001)
      {
        return 0.0;
      }

      v43 = *(a2 + 16);
      if (-v43 / v42 > a3)
      {
        return 0.0;
      }

      goto LABEL_64;
    case 3:
      v23 = *(a2 + 8);
      result = 0.0;
      if (fabs(v23) < 0.0001)
      {
        return result;
      }

      v24 = *(a2 + 16);
      v25 = -v24 / v23;
      result = 0.0;
      if (v25 < 0.0)
      {
        v25 = 0.0;
      }

      if (v25 > a3)
      {
        return *(a2 + 24);
      }

      v53 = v24 + v23 * a3;
      if (v53 <= 0.0)
      {
        return result;
      }

      v17 = *a2;
      v16 = v53;
LABEL_12:
      v18 = pow(v16, v17);
      v19 = *(a2 + 24);
      goto LABEL_68;
    case 4:
      if (*(a2 + 32) > a3)
      {
        return *(a2 + 24) * a3;
      }

      v42 = *(a2 + 8);
      v43 = *(a2 + 16);
LABEL_64:
      v51 = v43 + v42 * a3;
      result = 0.0;
      if (v51 <= 0.0)
      {
        return result;
      }

      v15 = *a2;
      v14 = v51;
      goto LABEL_87;
    case 5:
      if (*(a2 + 32) > a3)
      {
        v45 = *(a2 + 24);
        v46 = *(a2 + 48);
        goto LABEL_61;
      }

      v52 = *(a2 + 16) + *(a2 + 8) * a3;
      if (v52 <= 0.0)
      {
        result = *(a2 + 40);
      }

      else
      {
        v18 = pow(v52, *a2);
        v19 = *(a2 + 40);
LABEL_68:
        result = v18 + v19;
      }

      break;
    case 6:
      v16 = *(a2 + 16) + *(a2 + 8) * a3;
      if (v16 < 0.0)
      {
        return *(a2 + 24);
      }

      v17 = *a2;
      goto LABEL_12;
    case 7:
      v47 = *(a2 + 16);
      v48 = *(a2 + 24) + v47 * pow(a3, *a2);
      if (v48 <= 0.0)
      {
        result = *(a2 + 32);
      }

      else
      {
        a3 = *(a2 + 8);
        v45 = log10(v48);
        v46 = *(a2 + 32);
LABEL_61:
        result = v46 + a3 * v45;
      }

      break;
    case 8:
      v20 = *a2;
      return *(a2 + 32) + v20 * pow(*(a2 + 8), *(a2 + 24) + *(a2 + 16) * a3);
    default:
      if (a1 == -108)
      {
        v49 = *a2;
        v50 = pow(a3, *a2);
        return 1.0 - pow(1.0 - v50, v49);
      }

      else if (a1 == 108)
      {
        v11 = *a2;
        result = 0.0;
        if (fabs(*a2) >= 0.0001)
        {
          v12 = 1.0 - a3;
          v13 = 1.0 / v11;
          v14 = 1.0 - pow(v12, 1.0 / v11);
          v15 = v13;
LABEL_87:

          return pow(v14, v15);
        }
      }

      else
      {
        return 0.0;
      }

      return result;
  }

  return result;
}

uint64_t sub_240AC22F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 1)
  {
    v8 = 4096;
    if (*(a3 + 8) == 1)
    {
      if (fabs(*(a3 + 16) + -1.0) >= 0.001)
      {
        v8 = 4096;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 4096;
  }

  v9 = sub_240AC1684(a1, v8, a2, a3, 0, a6, a7, a8);
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = sub_240AC2428(v9, v10 / (v8 - 1)) * 65535.0 + 0.5;
      if (v11 <= 0.0)
      {
        v12 = 0;
      }

      else if (v11 >= 65535.0)
      {
        v12 = -1;
      }

      else
      {
        v12 = (COERCE_UNSIGNED_INT64(v11 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      *(*(v9 + 48) + 2 * v10++) = v12;
    }

    while (v8 != v10);
  }

  return v9;
}

double sub_240AC2428(uint64_t a1, double a2)
{
  v3 = *(a1 + 8);
  result = -9.99999978e21;
  if (v3 >= 1)
  {
    v15 = 0.0;
    v5 = *(a1 + 16);
    v6 = v3 + 1;
    for (i = v5 + 112 * v3 - 112; ; i -= 112)
    {
      v8 = *i;
      if (v8 < a2)
      {
        v9 = *(i + 4);
        if (v9 >= a2)
        {
          break;
        }
      }

      if (--v6 <= 1)
      {
        return result;
      }
    }

    v10 = v6 - 2;
    if (*(i + 8))
    {
      (*(*(a1 + 32) + 8 * v10))(*(i + 8), i + 16, a2);
    }

    else
    {
      v11 = a2 - v8;
      v14 = v11 / (v9 - *i);
      v12 = *(v5 + 112 * v10 + 104);
      v13 = *(a1 + 24);
      *(*(v13 + 8 * v10) + 120) = v12;
      (*(*(v13 + 8 * v10) + 128))(&v14, &v15);
      result = v15;
    }

    if (fabs(result) == INFINITY)
    {
      return 9.99999978e21;
    }
  }

  return result;
}

uint64_t sub_240AC2534(uint64_t *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = 3825698424;
  v11 = 6;
  v13 = 0;
  v14 = 0;
  v12 = 0x3FF0000000000000;
  v15 = *a2;
  v16 = 0;
  v17 = 0x3F80000000000000;
  v18 = 0;
  v19 = 4096;
  v20 = a2;
  v21 = 0x640786783F800000;
  v22 = 6;
  v24 = 0;
  v25 = 0;
  v23 = 0x3FF0000000000000;
  v26 = a2[4095];
  v27 = 0;
  result = sub_240AC22F8(a1, 3, &v10, a4, a5, a6, a7, a8);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AC2604(uint64_t *a1, int a2)
{
  v17 = 0;
  v4 = sub_240AC1C78(a1, a2, &v17);
  if (v4)
  {
    v19 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v18 = 0x64078678E4078678;
    LODWORD(v19) = a2;
    v10 = (8 * v4[v17 + 21]);
    __memmove_chk();
    return sub_240AC22F8(a1, 1, &v18, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_240AC15A4(a1, 8, "Invalid parametric curve type %d", v5, v6, v7, v8, v9, a2);
    return 0;
  }
}

uint64_t ***sub_240AC26D0(uint64_t ***result)
{
  if (result)
  {
    v1 = result;
    v2 = **result;
    if (v2)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v2)
        {
          goto LABEL_10;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_10:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    (*(v4 + 2))(**result);
    if (v1[6])
    {
      if (v2)
      {
        v5 = &qword_27E516570;
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (v5 == v2)
          {
            goto LABEL_20;
          }
        }

        v5 = &unk_278CB2F00;
      }

      else
      {
        v5 = &unk_278CB2F00;
      }

LABEL_20:
      v6 = v5[6];
      if (!v6)
      {
        v6 = &xmmword_281500C10;
      }

      (*(v6 + 2))(v2);
    }

    if (v1[2])
    {
      if (!*(v1 + 2))
      {
        goto LABEL_48;
      }

      v7 = 0;
      do
      {
        if (v1[2][14 * v7 + 13])
        {
          if (v2)
          {
            v8 = &qword_27E516570;
            while (1)
            {
              v8 = *v8;
              if (!v8)
              {
                break;
              }

              if (v8 == v2)
              {
                goto LABEL_33;
              }
            }
          }

          v8 = &unk_278CB2F00;
LABEL_33:
          v9 = v8[6];
          if (!v9)
          {
            v9 = &xmmword_281500C10;
          }

          (*(v9 + 2))(v2);
        }

        v10 = v1[3][v7];
        if (v10)
        {
          if (*v10)
          {
            v11 = &qword_27E516570;
            while (1)
            {
              v11 = *v11;
              if (!v11)
              {
                break;
              }

              if (v11 == *v10)
              {
                goto LABEL_43;
              }
            }
          }

          v11 = &unk_278CB2F00;
LABEL_43:
          v12 = v11[6];
          if (!v12)
          {
            v12 = &xmmword_281500C10;
          }

          (*(v12 + 2))();
        }

        ++v7;
      }

      while (v7 < *(v1 + 2));
      if (v1[2])
      {
LABEL_48:
        if (v2)
        {
          v13 = &qword_27E516570;
          while (1)
          {
            v13 = *v13;
            if (!v13)
            {
              break;
            }

            if (v13 == v2)
            {
              goto LABEL_55;
            }
          }

          v13 = &unk_278CB2F00;
        }

        else
        {
          v13 = &unk_278CB2F00;
        }

LABEL_55:
        v14 = v13[6];
        if (!v14)
        {
          v14 = &xmmword_281500C10;
        }

        (*(v14 + 2))(v2);
      }

      if (v1[3])
      {
        if (v2)
        {
          v15 = &qword_27E516570;
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            if (v15 == v2)
            {
              goto LABEL_66;
            }
          }

          v15 = &unk_278CB2F00;
        }

        else
        {
          v15 = &unk_278CB2F00;
        }

LABEL_66:
        v16 = v15[6];
        if (!v16)
        {
          v16 = &xmmword_281500C10;
        }

        (*(v16 + 2))(v2);
      }
    }

    if (v1[4])
    {
      if (v2)
      {
        v17 = &qword_27E516570;
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            break;
          }

          if (v17 == v2)
          {
            goto LABEL_77;
          }
        }

        v17 = &unk_278CB2F00;
      }

      else
      {
        v17 = &unk_278CB2F00;
      }

LABEL_77:
      v18 = v17[6];
      if (!v18)
      {
        v18 = &xmmword_281500C10;
      }

      (*(v18 + 2))(v2);
    }

    if (v2)
    {
      v19 = &qword_27E516570;
      while (1)
      {
        v19 = *v19;
        if (!v19)
        {
          break;
        }

        if (v19 == v2)
        {
          goto LABEL_87;
        }
      }

      v19 = &unk_278CB2F00;
    }

    else
    {
      v19 = &unk_278CB2F00;
    }

LABEL_87:
    v20 = v19[6];
    if (!v20)
    {
      v20 = &xmmword_281500C10;
    }

    v21 = *(v20 + 2);

    return v21(v2, v1);
  }

  return result;
}

uint64_t ***sub_240AC29F4(uint64_t ****a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_240AC26D0(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_240AC26D0(v3);
  }

  result = a1[2];
  if (result)
  {
    result = sub_240AC26D0(result);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_240AC2A40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    return sub_240AC1684(**result, *(result + 40), *(result + 8), *(result + 16), *(result + 48), a6, a7, a8);
  }

  return result;
}

uint64_t sub_240AC2A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8) == 1)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 8);
    v11 = *a1;
    if (v10 >= 1)
    {
      v12 = *v11;
      if (sub_240AC1C78(*v11, *(v9 + 8), 0))
      {

        return sub_240AC2604(v12, -v10);
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  result = sub_240AC1684(*v11, 4096, 0, 0, 0, a6, a7, a8);
  if (result)
  {
    v14 = 0;
    v15 = *(a1 + 48);
    v16 = *v15;
    v17 = *(a1 + 40) - 1;
    v18 = v15[v17];
    v19 = *(*a1 + 52);
    v20 = v17;
    v21 = *(result + 48);
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      v24 = v14 * 65535.0 / 4095.0;
      if (v19)
      {
        v25 = *v15;
        v26 = v15[v19];
        if (v25 < v26)
        {
          if (v19 >= 1)
          {
            i = v19 - 1;
            while (1)
            {
              v28 = v15[i];
              v29 = v28;
              v30 = v26;
              if (v28 <= v26)
              {
                if (v24 <= v30 && v24 >= v29)
                {
                  goto LABEL_42;
                }
              }

              else if (v24 >= v30 && v24 <= v29)
              {
                goto LABEL_42;
              }

              v33 = i-- + 1;
              LOWORD(v26) = v28;
              if (v33 <= 1)
              {
                goto LABEL_48;
              }
            }
          }

          goto LABEL_48;
        }

        if (v19 >= 1)
        {
          for (i = 0; v19 != i; ++i)
          {
            v34 = v15[i + 1];
            if (v34 >= v25)
            {
              v29 = v25;
              v30 = v34;
              if (v24 >= v29 && v24 <= v30)
              {
LABEL_42:
                if ((i & 0x80000000) == 0)
                {
                  LOWORD(v29) = v15[i & 0x7FFFFFFF];
                  v37 = *&v29;
                  LOWORD(v30) = v15[(i + 1)];
                  v38 = *&v30;
                  v39 = (i + 1) * 65535.0 / v20;
                  if (v37 == v38)
                  {
                    if (v16 <= v18)
                    {
                      v40 = (i + 1) * 65535.0 / v20;
                    }

                    else
                    {
                      v40 = i * 65535.0 / v20;
                    }

                    goto LABEL_49;
                  }

                  v23 = (v39 - i * 65535.0 / v20) / (v38 - v37);
                  v22 = v39 - v23 * v38;
                }

                break;
              }
            }

            else
            {
              v29 = v34;
              v30 = v25;
              if (v24 <= v30 && v24 >= v29)
              {
                goto LABEL_42;
              }
            }

            LOWORD(v25) = v34;
          }
        }
      }

LABEL_48:
      v40 = v22 + v23 * v24;
LABEL_49:
      v41 = v40 + 0.5;
      if (v41 <= 0.0)
      {
        v42 = 0;
      }

      else if (v41 >= 65535.0)
      {
        v42 = -1;
      }

      else
      {
        v42 = (COERCE_UNSIGNED_INT64(v41 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      *(v21 + 2 * v14++) = v42;
    }

    while (v14 != 4096);
  }

  return result;
}

float sub_240AC2CFC(_DWORD *a1, float a2)
{
  v2 = a2;
  if (a1[2])
  {
    return sub_240AC2428(a1, v2);
  }

  else
  {
    v4 = v2 * 65535.0 + 0.5;
    if (v4 <= 0.0)
    {
      v5 = 0;
    }

    else if (v4 >= 65535.0)
    {
      v5 = -1;
    }

    else
    {
      v5 = (COERCE_UNSIGNED_INT64(v4 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
    }

    v9 = v5;
    v8 = 0;
    v6 = (*(*a1 + 128))(&v9, &v8);
    v6.n128_u16[0] = v8;
    return v6.n128_u64[0] / 65535.0;
  }
}

uint64_t sub_240AC2DBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = 0;
  while (1)
  {
    v3 = v2 * 65535.0 / (v1 - 1) + 0.5;
    if (v3 <= 0.0)
    {
      v5 = 0;
    }

    else if (v3 >= 65535.0)
    {
      v5 = 0xFFFF;
    }

    else
    {
      v4 = v3 + -32767.0 + 1.03079215e11;
      v5 = (WORD1(v4) + 0x7FFF);
    }

    v6 = *(*(a1 + 48) + 2 * v2) - v5;
    if (v6 < 0)
    {
      v6 = -v6;
    }

    if (v6 >= 0x10)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AC2E6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < 2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v4 = *v3;
  v5 = v3[(v1 - 1)];
  if (v4 <= v5)
  {
    if (v1 >= 2)
    {
      v10 = v1 - 2;
      while ((v3[v10] - v5) < 3)
      {
        v5 = v3[v10];
        v11 = __OFSUB__(v10--, 1);
        if (v10 < 0 != v11)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (v1 < 2)
  {
    return 1;
  }

  v6 = v3 + 1;
  v7 = v1 - 1;
  while (1)
  {
    v9 = *v6++;
    v8 = v9;
    if ((v9 - v4) > 2)
    {
      break;
    }

    v4 = v8;
    if (!--v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_240AC2EFC(_DWORD *a1)
{
  v2 = 0.0;
  v3 = 1.0;
  v4 = 4095;
  v5 = 1.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = v5 * 0.000244140625;
    v9 = sub_240AC2CFC(a1, v8);
    if (v5 * 0.000244140625 > 0.07 && v9 > 0.0 && v9 < 1.0)
    {
      v11 = log(v9);
      v12 = v11 / log(v5 * 0.000244140625);
      v3 = 1.0;
      v7 = v7 + v12;
      v6 = v6 + v12 * v12;
      v2 = v2 + 1.0;
    }

    v5 = v5 + v3;
    --v4;
  }

  while (v4);
}

uint64_t ***sub_240AC2FF0(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(*a4 + 80) != 1129142603)
  {
    return 0;
  }

  v4 = a4 + 8 * (a2 - 1);
  if (*(*v4 + 80) != 1129142603)
  {
    return 0;
  }

  if (*(*v4 + 76) != 1886549106)
  {
    return 0;
  }

  v6 = sub_240AC3228();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_240AC3228();
  if (!v8)
  {
    v20 = v7;
LABEL_35:
    sub_240AC26D0(v20);
    return 0;
  }

  v16 = v8;
  v17 = sub_240AC2A68(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v17)
  {
    v18 = v17;
    if (a1)
    {
      v19 = &qword_27E516570;
      while (1)
      {
        v19 = *v19;
        if (!v19)
        {
          break;
        }

        if (v19 == a1)
        {
          goto LABEL_16;
        }
      }

      v19 = &unk_278CB2F00;
    }

    else
    {
      v19 = &unk_278CB2F00;
    }

LABEL_16:
    v21 = v19[6];
    if (!v21)
    {
      v21 = &xmmword_281500C10;
    }

    v22 = (*(v21 + 4))(a1, 4096, 4, 0x100004052888210);
    if (v22)
    {
      v23 = v22;
      for (i = 0; i != 4096; ++i)
      {
        v25 = sub_240AC2CFC(v7, i / 4095.0);
        v23[i] = sub_240AC2CFC(v18, v25);
      }

      v20 = sub_240AC2534(a1, v23, v26, v27, v28, v29, v30, v31);
      if (a1)
      {
        v32 = &qword_27E516570;
        while (1)
        {
          v32 = *v32;
          if (!v32)
          {
            break;
          }

          if (v32 == a1)
          {
            goto LABEL_29;
          }
        }

        v32 = &unk_278CB2F00;
      }

      else
      {
        v32 = &unk_278CB2F00;
      }

LABEL_29:
      v33 = v32[6];
      if (!v33)
      {
        v33 = &xmmword_281500C10;
      }

      (*(v33 + 2))(a1, v23);
    }

    else
    {
      v20 = 0;
    }

    sub_240AC26D0(v18);
  }

  else
  {
    v20 = 0;
  }

  sub_240AC26D0(v7);
  sub_240AC26D0(v16);
  if (v20 && !sub_240AC2E6C(v20))
  {
    goto LABEL_35;
  }

  return v20;
}

uint64_t sub_240AC3228()
{
  v0 = MEMORY[0x28223BE20]();
  v73 = *MEMORY[0x277D85DE8];
  if (v1 > 0xFE)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v1;
  v13 = v0;
  v14 = sub_240AE23B4(v0);
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  if (v12)
  {
    v16 = v12;
    memcpy(&v41, v10, 8 * v12);
    memcpy(&__dst, v9, 4 * v12);
    memcpy(v37, v8, 8 * v12);
    memcpy(v36, v11, 4 * v12);
  }

  else
  {
    v16 = 0;
  }

  *(&v41 + v16) = v15;
  *(&__dst + v16) = 0;
  v37[v16] = 0x3FF0000000000000;
  v36[v16] = 1;
  v17 = sub_240AE2A1C(v13, v12 + 1, &v41, &__dst, v36, v37, 4587556, 4849688, v7);
  sub_240AC6C8C(v15);
  if (!v17)
  {
    goto LABEL_25;
  }

  if (v13)
  {
    v18 = &qword_27E516570;
    while (1)
    {
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      if (v18 == v13)
      {
        goto LABEL_14;
      }
    }

    v18 = &unk_278CB2F00;
  }

  else
  {
    v18 = &unk_278CB2F00;
  }

LABEL_14:
  v19 = v18[6];
  if (!v19)
  {
    v19 = &xmmword_281500C10;
  }

  v20 = (*(v19 + 4))(v13, 4096, 4, 0x100004052888210);
  if (!v20)
  {
    sub_240AE2944(v17);
LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v21 = v20;
  v22 = 0;
  v41 = 0uLL;
  *&v42 = 0;
  do
  {
    __dst = 0;
    v39 = 0;
    v23 = v22 * 100.0 / 4095.0;
    v40 = v23;
    v37[0] = 0;
    v37[1] = 0x100000001;
    (*(v17 + 8))(v17, &__dst, &v41, 1, 1, v37);
    v30 = 1.0 - *&v41 / 100.0;
    v21[v22++] = v30;
  }

  while (v22 != 4096);
  v31 = sub_240AC2534(v13, v21, v24, v25, v26, v27, v28, v29);
  sub_240AE2944(v17);
  if (v13)
  {
    v32 = &qword_27E516570;
    while (1)
    {
      v32 = *v32;
      if (!v32)
      {
        break;
      }

      if (v32 == v13)
      {
        goto LABEL_29;
      }
    }

    v32 = &unk_278CB2F00;
  }

  else
  {
    v32 = &unk_278CB2F00;
  }

LABEL_29:
  v35 = v32[6];
  if (!v35)
  {
    v35 = &xmmword_281500C10;
  }

  (*(v35 + 2))(v13, v21);
LABEL_26:
  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_240AC35CC(unsigned __int16 *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*(a2 + 1) + 8))();
  v4 = *a2;
  if (v4)
  {
    v5 = 0.0;
    v6 = &v13;
    v7 = *a2;
    do
    {
      v8 = *v6++;
      v5 = v5 + v8;
      --v7;
    }

    while (v7);
    if (v5 > *(a2 + 4))
    {
      *(a2 + 4) = v5;
      v9 = (a2 + 5);
      do
      {
        v10 = *a1++;
        *v9++ = v10;
        --v4;
      }

      while (v4);
    }
  }

  else if (*(a2 + 4) < 0.0)
  {
    a2[4] = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL sub_240AC36B4(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == a1)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = v3[7];
  if (!v4)
  {
    v4 = &unk_27E516578;
  }

  *(a2 + 128) = 0;
  v5 = *v4;
  if (!v5 || (v6 = v5(*(a2 + 12), *(a2 + 16), *(a2 + 8)), (*(a2 + 128) = v6) == 0))
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 16);
    if (v7 >= 4 && v8 > 0x7F)
    {
      v6 = 0;
LABEL_39:
      *(a2 + 128) = v6;
      return v6 != 0;
    }

    v6 = 0;
    if (v7 > 4)
    {
      if (v7 > 6)
      {
        if (v7 == 7)
        {
          v9 = (*(a2 + 8) & 1) == 0;
          v10 = sub_240AC3AB4;
          v11 = sub_240AC44A4;
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_39;
          }

          v9 = (*(a2 + 8) & 1) == 0;
          v10 = sub_240AC3938;
          v11 = sub_240AC433C;
        }
      }

      else
      {
        v9 = (*(a2 + 8) & 1) == 0;
        if (v7 == 5)
        {
          v10 = sub_240AC3DA4;
          v11 = sub_240AC476C;
        }

        else
        {
          v10 = sub_240AC3C2C;
          v11 = sub_240AC4608;
        }
      }
    }

    else if (v7 > 2)
    {
      if (v7 == 3)
      {
        v9 = (*(a2 + 8) & 1) == 0;
        if ((*(a2 + 8) & 0x100) != 0)
        {
          v10 = sub_240AC5134;
          v11 = sub_240AC5300;
        }

        else
        {
          v10 = sub_240AC4084;
          v11 = sub_240AC4E40;
        }
      }

      else
      {
        v9 = (*(a2 + 8) & 1) == 0;
        v10 = sub_240AC3F10;
        v11 = sub_240AC48C4;
      }
    }

    else if (v7 == 1)
    {
      v9 = (*(a2 + 8) & 1) == 0;
      if (v8 == 1)
      {
        v10 = sub_240AC58B8;
        v11 = sub_240AC592C;
      }

      else
      {
        v10 = sub_240AC56F8;
        v11 = sub_240AC5828;
      }
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_39;
      }

      v9 = (*(a2 + 8) & 1) == 0;
      v10 = sub_240AC54EC;
      v11 = sub_240AC55EC;
    }

    if (v9)
    {
      v6 = v11;
    }

    else
    {
      v6 = v10;
    }

    goto LABEL_39;
  }

  return v6 != 0;
}

float32x2_t *sub_240AC3938(float *a1, float *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1 + 1;
  if (*a1 <= 1.0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (*a1 >= 0.000000001)
  {
    v7 = v6;
  }

  v8 = v7 * *(a3 + 52);
  v34 = *(a3 + 112);
  v9 = *(a3 + 112);
  v10 = v8 + 1.03079215e11;
  v11 = LODWORD(v10);
  v12 = *(a3 + 80);
  v13 = *(a3 + 96);
  v14 = v11 >> 16;
  v16 = *(a3 + 120);
  v15 = *(a3 + 128);
  v17 = v14 * v9;
  if (v7 >= 1.0)
  {
    v9 = 0;
  }

  v18 = v17 + v9;
  v19 = *(a3 + 48);
  v30[2] = *(a3 + 32);
  *v31 = v19;
  *&v31[16] = *(a3 + 64);
  v32 = v12;
  v20 = *(a3 + 16);
  v30[0] = *a3;
  v30[1] = v20;
  *&v31[4] = *(a3 + 56);
  v21 = *(a3 + 68);
  v33 = v13;
  *&v31[16] = v21;
  *(&v34 + 1) = v16 + 4 * v17;
  v35 = v15;
  sub_240AC3AB4(a1 + 1, v37, v30);
  *(&v34 + 1) = v16 + 4 * v18;
  result = sub_240AC3AB4(v5, v36, v30);
  v23 = *(a3 + 16);
  if (v23)
  {
    v24 = v36;
    v25 = v37;
    do
    {
      v26 = *v25++;
      v27 = v26;
      v28 = *v24++;
      *a2++ = v27 + ((v28 - v27) * (v8 - v14));
      --v23;
    }

    while (v23);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *sub_240AC3AB4(float *a1, float *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1 + 1;
  if (*a1 <= 1.0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (*a1 >= 0.000000001)
  {
    v7 = v6;
  }

  v8 = v7 * *(a3 + 52);
  v9 = *(a3 + 80);
  v10 = v8 + 1.03079215e11;
  v11 = *(a3 + 112);
  v32 = *(a3 + 96);
  v33 = v11;
  v12 = *(a3 + 108);
  v13 = SLODWORD(v10) >> 16;
  v14 = *(a3 + 64);
  v15 = v13 * v12;
  if (v7 >= 1.0)
  {
    v12 = 0;
  }

  v16 = v15 + v12;
  *&v30[16] = *(a3 + 64);
  v31 = v9;
  *&v30[20] = *(a3 + 72);
  v18 = *(a3 + 120);
  v17 = *(a3 + 128);
  v19 = *(a3 + 48);
  v29[2] = *(a3 + 32);
  *v30 = v19;
  v20 = *(a3 + 16);
  v29[0] = *a3;
  v29[1] = v20;
  *&v30[4] = *(a3 + 56);
  *(&v33 + 1) = v18 + 4 * v15;
  v34 = v17;
  sub_240AC3C2C(a1 + 1, v36, v29);
  *(&v33 + 1) = v18 + 4 * v16;
  result = sub_240AC3C2C(v5, v35, v29);
  v22 = *(a3 + 16);
  if (v22)
  {
    v23 = v35;
    v24 = v36;
    do
    {
      v25 = *v24++;
      v26 = v25;
      v27 = *v23++;
      *a2++ = v26 + ((v27 - v26) * (v8 - v13));
      --v22;
    }

    while (v22);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *sub_240AC3C2C(float *a1, float *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1 + 1;
  if (*a1 <= 1.0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (*a1 >= 0.000000001)
  {
    v7 = v6;
  }

  v8 = v7 * *(a3 + 52);
  v9 = *(a3 + 80);
  v10 = v8 + 1.03079215e11;
  v11 = *(a3 + 112);
  v32 = *(a3 + 96);
  v33 = v11;
  v12 = *(a3 + 104);
  v13 = SLODWORD(v10) >> 16;
  v14 = *(a3 + 64);
  v15 = v13 * v12;
  if (v7 >= 1.0)
  {
    v12 = 0;
  }

  v16 = v15 + v12;
  *&v30[16] = *(a3 + 64);
  v31 = v9;
  *&v30[20] = *(a3 + 72);
  v18 = *(a3 + 120);
  v17 = *(a3 + 128);
  v19 = *(a3 + 48);
  v29[2] = *(a3 + 32);
  *v30 = v19;
  v20 = *(a3 + 16);
  v29[0] = *a3;
  v29[1] = v20;
  *&v30[4] = *(a3 + 56);
  *(&v33 + 1) = v18 + 4 * v15;
  v34 = v17;
  sub_240AC3DA4(a1 + 1, v36, v29);
  *(&v33 + 1) = v18 + 4 * v16;
  result = sub_240AC3DA4(v5, v35, v29);
  v22 = *(a3 + 16);
  if (v22)
  {
    v23 = v35;
    v24 = v36;
    do
    {
      v25 = *v24++;
      v26 = v25;
      v27 = *v23++;
      *a2++ = v26 + ((v27 - v26) * (v8 - v13));
      --v22;
    }

    while (v22);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *sub_240AC3DA4(float *a1, float *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 1);
  if (*a1 <= 1.0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (*a1 >= 0.000000001)
  {
    v7 = v6;
  }

  v8 = v7 * *(a3 + 52);
  v9 = *(a3 + 112);
  v31 = *(a3 + 96);
  v32 = v9;
  v10 = *(a3 + 100);
  v11 = v8 + 1.03079215e11;
  v12 = SLODWORD(v11) >> 16;
  v14 = *(a3 + 120);
  v13 = *(a3 + 128);
  v15 = (SLODWORD(v11) >> 16) * v10;
  if (v7 >= 1.0)
  {
    v10 = 0;
  }

  v16 = v15 + v10;
  v17 = *(a3 + 48);
  v28[2] = *(a3 + 32);
  *v29 = v17;
  v18 = *(a3 + 80);
  *&v29[16] = *(a3 + 64);
  v30 = v18;
  v19 = *(a3 + 16);
  v28[0] = *a3;
  v28[1] = v19;
  *&v29[4] = *(a3 + 56);
  *(&v32 + 1) = v14 + 4 * v15;
  v33 = v13;
  sub_240AC3F10((a1 + 1), v35, v28);
  *(&v32 + 1) = v14 + 4 * v16;
  result = sub_240AC3F10(v5, v34, v28);
  v21 = *(a3 + 16);
  if (v21)
  {
    v22 = v34;
    v23 = v35;
    do
    {
      v24 = *v23++;
      v25 = v24;
      v26 = *v22++;
      *a2++ = v25 + ((v26 - v25) * (v8 - v12));
      --v21;
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *sub_240AC3F10(uint64_t a1, float *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 4);
  if (*a1 <= 1.0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 0.0;
  if (*a1 >= 0.000000001)
  {
    v7 = v6;
  }

  v8 = v7 * *(a3 + 52);
  v9 = *(a3 + 112);
  v32 = *(a3 + 96);
  v33 = v9;
  v10 = *(a3 + 96);
  v11 = v8 + 1.03079215e11;
  v12 = SLODWORD(v11) >> 16;
  v13 = (SLODWORD(v11) >> 16) * v10;
  v14 = *(a3 + 48);
  if (v7 >= 1.0)
  {
    v10 = 0;
  }

  v15 = v13 + v10;
  v28[2] = *(a3 + 32);
  v29 = v14;
  *(&v29 + 4) = *(a3 + 56);
  HIDWORD(v29) = *(a3 + 64);
  v17 = *(a3 + 120);
  v16 = *(a3 + 128);
  v18 = *(a3 + 80);
  v30 = *(a3 + 64);
  v31 = v18;
  v19 = *(a3 + 16);
  v28[0] = *a3;
  v28[1] = v19;
  *(&v33 + 1) = v17 + 4 * v13;
  v34 = v16;
  sub_240AC4084((a1 + 4), v36, v28);
  *(&v33 + 1) = v17 + 4 * v15;
  result = sub_240AC4084(v5, v35, v28);
  v21 = *(a3 + 16);
  if (v21)
  {
    v22 = v35;
    v23 = v36;
    do
    {
      v24 = *v23++;
      v25 = v24;
      v26 = *v22++;
      *a2++ = v25 + ((v26 - v25) * (v8 - v12));
      --v21;
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t *sub_240AC4084(float32x2_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = result[1].f32[0];
  if (v4 <= 1.0)
  {
    v5 = result[1].f32[0];
  }

  else
  {
    v5 = 1.0;
  }

  if (v4 < 0.000000001)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  if (v3 >= 1)
  {
    v7 = 0;
    __asm { FMOV            V6.2S, #1.0 }

    v13 = vand_s8(vbsl_s8(vcgt_f32(*result, _D6), _D6, *result), vbic_s8(vceq_f32(*result, *result), vcgt_f32(vdup_n_s32(0x3089705Fu), *result)));
    v14 = *(a3 + 52) * v13.f32[0];
    v15 = vmuls_lane_f32(*(a3 + 56), v13, 1);
    v16 = v6 * *(a3 + 60);
    v17 = vcvtms_s32_f32(v14);
    v18 = v14 - floorf(v14);
    v19 = vcvtms_s32_f32(v15);
    v20 = v15 - floorf(v15);
    v21 = vcvtms_s32_f32(v16);
    v22 = v16 - floorf(v16);
    v23 = *(a3 + 120);
    v24 = *(a3 + 84) * v21;
    if (v6 >= 1.0)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(a3 + 84);
    }

    v26 = v24 + v25;
    v27 = *(a3 + 88) * v19;
    v28 = vmvn_s8(vcge_f32(v13, _D6));
    if (v28.i8[4])
    {
      v29 = *(a3 + 88);
    }

    else
    {
      v29 = 0;
    }

    v30 = v27 + v29;
    v31 = *(a3 + 92);
    v32 = v31 * v17;
    if ((v28.i8[0] & 1) == 0)
    {
      v31 = 0;
    }

    v33 = v32 + v31;
    v34 = v27 + v32;
    v35 = v20 < v22 || v18 < v20;
    v36 = v30 + v24 + v33;
    v37 = v30 + v32;
    v38 = v18 < v22 || v20 < v18;
    v39 = v29 + v31 + v25;
    v40 = v23 + 4 * (v24 + v27 + v32);
    v41 = v23 + 4 * (v27 + v33 + v24);
    v42 = v23 + 4 * (v26 + v34);
    v43 = v23 + 4 * (v37 + v24);
    v44 = 4 * v3;
    v45 = v22 < v18 || v18 < v20;
    v46 = v22 < v18 || v20 < v22;
    result = (v23 + 4 * (v26 + v37));
    v47 = v22 < v20 || v18 < v22;
    v48 = v26 + v27 + v33;
    v49 = v23 + 4 * (v34 + v39 + v24);
    v50 = v26 + v27;
    v51 = v23 + 4 * v36;
    v52 = v50 + v33;
    v53 = v22 < v20 || v20 < v18;
    v54 = v23 + 4 * v52;
    v55 = v23 + 4 * v48;
    while (1)
    {
      v56 = *(v40 + v7);
      if (!v35)
      {
        v62 = *(v41 + v7);
        v57 = v62 - v56;
        v63 = *(v51 + v7);
        v58 = v63 - v62;
        goto LABEL_43;
      }

      if (!v47)
      {
        break;
      }

      if (!v45)
      {
        v65 = *(v54 + v7);
        v61 = *(v42 + v7);
        v57 = v65 - v61;
        v58 = *(v49 + v7) - v65;
        goto LABEL_49;
      }

      if (!v38)
      {
        v63 = *(v51 + v7);
        v66 = *(v43 + v7);
        v57 = v63 - v66;
        v58 = v66 - v56;
LABEL_43:
        v64 = *(v49 + v7);
LABEL_45:
        v59 = v64 - v63;
        goto LABEL_46;
      }

      if (!v46)
      {
        v67 = result->f32[v7 / 4];
        v57 = *(v49 + v7) - v67;
        v68 = *(v43 + v7);
        v58 = v68 - v56;
        v59 = v67 - v68;
        goto LABEL_46;
      }

      v57 = 0.0;
      v58 = 0.0;
      v59 = 0.0;
      if (!v53)
      {
        v60 = result->f32[v7 / 4];
        v57 = *(v49 + v7) - v60;
        v61 = *(v42 + v7);
        v58 = v60 - v61;
LABEL_49:
        v59 = v61 - v56;
      }

LABEL_46:
      *(a2 + v7) = ((v56 + (v57 * v18)) + (v58 * v20)) + (v59 * v22);
      v7 += 4;
      if (v44 == v7)
      {
        return result;
      }
    }

    v63 = *(v41 + v7);
    v57 = v63 - v56;
    v64 = *(v55 + v7);
    v58 = *(v49 + v7) - v64;
    goto LABEL_45;
  }

  return result;
}

unint64_t sub_240AC433C(unsigned __int16 *a1, _WORD *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a1 + 1;
  v5 = *a1;
  v7 = v5 == 0xFFFF;
  v8 = *(a3 + 52) * v5;
  v9 = *(a3 + 80);
  v10 = *(a3 + 96);
  v31 = *(a3 + 112);
  v11 = (v8 + 0x7FFF) / 0xFFFF + v8;
  v12 = v11 >> 16;
  if (!v7)
  {
    ++v12;
  }

  v13 = v12 * v31;
  v15 = *(a3 + 120);
  v14 = *(a3 + 128);
  v16 = *(a3 + 48);
  v27[2] = *(a3 + 32);
  *v28 = v16;
  *&v28[16] = *(a3 + 64);
  v29 = v9;
  v17 = *(a3 + 16);
  v27[0] = *a3;
  v27[1] = v17;
  *&v28[4] = *(a3 + 56);
  v18 = *(a3 + 68);
  v30 = v10;
  *&v28[16] = v18;
  *(&v31 + 1) = v15 + 2 * (v11 >> 16) * v31;
  v32 = v14;
  sub_240AC44A4(a1 + 1, v34, v27);
  *(&v31 + 1) = v15 + 2 * v13;
  result = sub_240AC44A4(v6, v33, v27);
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = v33;
    v22 = v34;
    do
    {
      v24 = *v22++;
      v23 = v24;
      v25 = *v21++;
      *a2++ = v23 + (((v25 - v23) * v11 + 0x8000) >> 16);
      --v20;
    }

    while (v20);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AC44A4(unsigned __int16 *a1, _WORD *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a1 + 1;
  v5 = *a1;
  v7 = v5 == 0xFFFF;
  v8 = *(a3 + 108);
  v9 = *(a3 + 80);
  v10 = *(a3 + 112);
  v11 = (*(a3 + 52) * v5 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v5;
  v29 = *(a3 + 96);
  v30 = v10;
  v12 = v11 >> 16;
  v13 = *(a3 + 48);
  if (!v7)
  {
    ++v12;
  }

  v14 = v12 * v8;
  *&v27[16] = *(a3 + 64);
  v28 = v9;
  *&v27[20] = *(a3 + 72);
  v16 = *(a3 + 120);
  v15 = *(a3 + 128);
  v17 = *(a3 + 16);
  v26[2] = *(a3 + 32);
  *v27 = v13;
  v26[0] = *a3;
  v26[1] = v17;
  *&v27[4] = *(a3 + 56);
  *(&v30 + 1) = v16 + 2 * (v11 >> 16) * v8;
  v31 = v15;
  sub_240AC4608(a1 + 1, v33, v26);
  *(&v30 + 1) = v16 + 2 * v14;
  result = sub_240AC4608(v6, v32, v26);
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = v32;
    v21 = v33;
    do
    {
      v23 = *v21++;
      v22 = v23;
      v24 = *v20++;
      *a2++ = v22 + (((v24 - v22) * v11 + 0x8000) >> 16);
      --v19;
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AC4608(unsigned __int16 *a1, _WORD *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a1 + 1;
  v5 = *a1;
  v7 = v5 == 0xFFFF;
  v8 = *(a3 + 104);
  v9 = *(a3 + 80);
  v10 = *(a3 + 112);
  v11 = (*(a3 + 52) * v5 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v5;
  v29 = *(a3 + 96);
  v30 = v10;
  v12 = v11 >> 16;
  v13 = *(a3 + 48);
  if (!v7)
  {
    ++v12;
  }

  v14 = v12 * v8;
  *&v27[16] = *(a3 + 64);
  v28 = v9;
  *&v27[20] = *(a3 + 72);
  v16 = *(a3 + 120);
  v15 = *(a3 + 128);
  v17 = *(a3 + 16);
  v26[2] = *(a3 + 32);
  *v27 = v13;
  v26[0] = *a3;
  v26[1] = v17;
  *&v27[4] = *(a3 + 56);
  *(&v30 + 1) = v16 + 2 * (v11 >> 16) * v8;
  v31 = v15;
  sub_240AC476C(a1 + 1, v33, v26);
  *(&v30 + 1) = v16 + 2 * v14;
  result = sub_240AC476C(v6, v32, v26);
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = v32;
    v21 = v33;
    do
    {
      v23 = *v21++;
      v22 = v23;
      v24 = *v20++;
      *a2++ = v22 + (((v24 - v22) * v11 + 0x8000) >> 16);
      --v19;
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AC476C(unsigned __int16 *a1, _WORD *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 1);
  v5 = *a1;
  v7 = v5 == 0xFFFF;
  v8 = *(a3 + 52) * v5;
  v9 = *(a3 + 100);
  v10 = *(a3 + 112);
  v30 = *(a3 + 96);
  v31 = v10;
  v11 = (v8 + 0x7FFF) / 0xFFFF + v8;
  v12 = v11 >> 16;
  if (!v7)
  {
    ++v12;
  }

  v13 = v12 * v9;
  v15 = *(a3 + 120);
  v14 = *(a3 + 128);
  v16 = *(a3 + 48);
  v27[2] = *(a3 + 32);
  *v28 = v16;
  v17 = *(a3 + 80);
  *&v28[16] = *(a3 + 64);
  v29 = v17;
  v18 = *(a3 + 16);
  v27[0] = *a3;
  v27[1] = v18;
  *&v28[4] = *(a3 + 56);
  *(&v31 + 1) = v15 + 2 * (v11 >> 16) * v9;
  v32 = v14;
  sub_240AC48C4((a1 + 1), v34, v27);
  *(&v31 + 1) = v15 + 2 * v13;
  result = sub_240AC48C4(v6, v33, v27);
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = v33;
    v22 = v34;
    do
    {
      v24 = *v22++;
      v23 = v24;
      v25 = *v21++;
      *a2++ = v23 + (((v25 - v23) * v11 + 0x8000) >> 16);
      --v20;
    }

    while (v20);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_240AC48C4(unint64_t result, _WORD *a2, uint64_t a3)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = *result;
  if (v3 == 0xFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a3 + 96);
  }

  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (*(a3 + 52) * v3 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v3;
    v8 = *(result + 2);
    v9 = *(result + 4);
    v10 = *(result + 6);
    v11 = ((*(a3 + 56) * v8 + 0x7FFF) / 0xFFFF + *(a3 + 56) * v8);
    v12 = ((*(a3 + 60) * v9 + 0x7FFF) / 0xFFFF + *(a3 + 60) * v9);
    v13 = ((*(a3 + 64) * v10 + 0x7FFF) / 0xFFFF + *(a3 + 64) * v10);
    v14 = *(a3 + 96) * (v7 >> 16);
    v80 = v14 + v4;
    v79 = *(a3 + 120);
    v15 = v79 + 2 * v14;
    v16 = (((*(a3 + 64) * v10 + 0x7FFF) / 0xFFFF + *(a3 + 64) * v10) >> 16) * *(a3 + 84);
    if (v10 == 0xFFFF)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a3 + 84);
    }

    v18 = *(a3 + 88) * (((*(a3 + 60) * v9 + 0x7FFF) / 0xFFFF + *(a3 + 60) * v9) >> 16);
    if (v9 == 0xFFFF)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(a3 + 88);
    }

    v20 = *(a3 + 92);
    v21 = v20 * (((*(a3 + 56) * v8 + 0x7FFF) / 0xFFFF + *(a3 + 56) * v8) >> 16);
    if (v8 == 0xFFFF)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    v23 = v11 < v12;
    v24 = v11 < v13 || v12 < v11;
    v85 = v24;
    if (v13 >= v11)
    {
      v25 = v12 < v13;
    }

    else
    {
      v23 = 1;
      v25 = 1;
    }

    v84 = v25;
    v26 = v13 < v12 || v12 < v11;
    v83 = v26;
    v27 = v17 + v21 + v18 + v16;
    v28 = v19 + v21 + v18 + v16;
    v77 = v19;
    v78 = v17;
    v82 = v28 + v17;
    v29 = v27 + v22;
    v30 = v27 + v22 + v19;
    v31 = v28 + v22;
    v81 = v16;
    v32 = v21 + v16 + v22 + v18;
    v33 = v18 + v21 + v16;
    while (1)
    {
      v34 = *(v15 + 2 * (v33 + v6));
      if (v11 < v12 || v12 < v13)
      {
        if (v11 < v13 || v13 < v12)
        {
          if (!v23)
          {
            v42 = *(v15 + 2 * (v29 + v6));
            v43 = *(v15 + 2 * (v27 + v6));
            v35 = v42 - v43;
            v36 = *(v15 + 2 * (v30 + v6)) - v42;
            v37 = v43 - v34;
            goto LABEL_35;
          }

          if (v85)
          {
            if (v84)
            {
              if (v83)
              {
                v35 = 0;
                v36 = 0;
                v37 = 0;
              }

              else
              {
                v46 = *(v15 + 2 * (v82 + v6));
                v35 = *(v15 + 2 * (v30 + v6)) - v46;
                v47 = *(v15 + 2 * (v27 + v6));
                v36 = v46 - v47;
                v37 = v47 - v34;
              }

              goto LABEL_35;
            }

            v41 = *(v15 + 2 * (v82 + v6));
            v35 = *(v15 + 2 * (v30 + v6)) - v41;
            v40 = *(v15 + 2 * (v28 + v6));
            v36 = v40 - v34;
          }

          else
          {
            v40 = *(v15 + 2 * (v31 + v6));
            v45 = *(v15 + 2 * (v28 + v6));
            v35 = v40 - v45;
            v36 = v45 - v34;
            v41 = *(v15 + 2 * (v30 + v6));
          }
        }

        else
        {
          v40 = *(v15 + 2 * (v32 + v6));
          v35 = v40 - v34;
          v41 = *(v15 + 2 * (v29 + v6));
          v36 = *(v15 + 2 * (v30 + v6)) - v41;
        }

        v37 = v41 - v40;
      }

      else
      {
        v38 = *(v15 + 2 * (v32 + v6));
        v39 = *(v15 + 2 * (v31 + v6));
        v35 = v38 - v34;
        v36 = v39 - v38;
        v37 = *(v15 + 2 * (v30 + v6)) - v39;
      }

LABEL_35:
      v44 = v35 * v11 + v36 * v12 + v37 * v13;
      v87[v6++] = v34 + ((v44 + (v44 + 0x7FFF) / 0xFFFF + 0x8000) >> 16);
      if (v5 == v6)
      {
        v48 = 0;
        v49 = v79 + 2 * v80;
        v50 = v78 + v21 + v18 + v81;
        v51 = v77 + v21 + v18 + v81;
        v52 = v51 + v78;
        v53 = v50 + v22;
        v54 = v50 + v22 + v77;
        v55 = v51 + v22;
        result = (v21 + v81 + v22 + v18);
        v56 = v21 + v81 + v18;
        while (1)
        {
          v57 = *(v49 + 2 * (v56 + v48));
          if (v11 < v12 || v12 < v13)
          {
            if (v11 < v13 || v13 < v12)
            {
              if (!v23)
              {
                v65 = *(v49 + 2 * (v53 + v48));
                v66 = *(v49 + 2 * (v50 + v48));
                v58 = v65 - v66;
                v59 = *(v49 + 2 * (v54 + v48)) - v65;
                v60 = v66 - v57;
                goto LABEL_51;
              }

              if (v85)
              {
                if (v84)
                {
                  if (v83)
                  {
                    v58 = 0;
                    v59 = 0;
                    v60 = 0;
                  }

                  else
                  {
                    v69 = *(v49 + 2 * (v52 + v48));
                    v58 = *(v49 + 2 * (v54 + v48)) - v69;
                    v70 = *(v49 + 2 * (v50 + v48));
                    v59 = v69 - v70;
                    v60 = v70 - v57;
                  }

                  goto LABEL_51;
                }

                v64 = *(v49 + 2 * (v52 + v48));
                v58 = *(v49 + 2 * (v54 + v48)) - v64;
                v63 = *(v49 + 2 * (v51 + v48));
                v59 = v63 - v57;
              }

              else
              {
                v63 = *(v49 + 2 * (v55 + v48));
                v68 = *(v49 + 2 * (v51 + v48));
                v58 = v63 - v68;
                v59 = v68 - v57;
                v64 = *(v49 + 2 * (v54 + v48));
              }
            }

            else
            {
              v63 = *(v49 + 2 * (result + v48));
              v58 = v63 - v57;
              v64 = *(v49 + 2 * (v53 + v48));
              v59 = *(v49 + 2 * (v54 + v48)) - v64;
            }

            v60 = v64 - v63;
          }

          else
          {
            v61 = *(v49 + 2 * (result + v48));
            v62 = *(v49 + 2 * (v55 + v48));
            v58 = v61 - v57;
            v59 = v62 - v61;
            v60 = *(v49 + 2 * (v54 + v48)) - v62;
          }

LABEL_51:
          v67 = v58 * v11 + v59 * v12 + v60 * v13;
          v86[v48++] = v57 + ((v67 + (v67 + 0x7FFF) / 0xFFFF + 0x8000) >> 16);
          if (v5 == v48)
          {
            v71 = v86;
            v72 = v87;
            do
            {
              v74 = *v72++;
              v73 = v74;
              v75 = *v71++;
              *a2++ = v73 + (((v75 - v73) * v7 + 0x8000) >> 16);
              --v5;
            }

            while (v5);
            goto LABEL_57;
          }
        }
      }
    }
  }

LABEL_57:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AC4E40(unsigned __int16 *a1, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 120);
  v4 = *(a3 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(a3 + 56) * v6 + 0x7FFF) / 0xFFFF + *(a3 + 56) * v6;
  v8 = a1[2];
  result = (v7 >> 16);
  v10 = ((*(a3 + 60) * v8 + 0x7FFF) / 0xFFFF + *(a3 + 60) * v8) >> 16;
  v11 = ((*(a3 + 52) * v5 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v5);
  v12 = ((*(a3 + 56) * v6 + 0x7FFF) / 0xFFFF + *(a3 + 56) * v6);
  v13 = ((*(a3 + 60) * v8 + 0x7FFF) / 0xFFFF + *(a3 + 60) * v8);
  v14 = *(a3 + 88);
  v15 = *(a3 + 92) * (((*(a3 + 52) * v5 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v5) >> 16);
  if (v5 == 0xFFFF)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a3 + 92);
  }

  v17 = *(a3 + 84);
  if (v6 == 0xFFFF)
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  if (v8 == 0xFFFF)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = (v3 + 2 * (v15 + result * v14 + v10 * v17));
  if (v11 >= v7)
  {
    if (v12 >= v13)
    {
      if (v4)
      {
        v44 = v18 + v16;
        v45 = v19 + v44;
        do
        {
          v46 = v20[v16];
          v47 = v20[v44];
          v48 = v20[v45];
          v49 = *v20++;
          result = (v48 - v47) * v13 + (v47 - v46) * v12;
          *a2++ = v49 + ((result + (v46 - v49) * v11 + 32769 + ((result + (v46 - v49) * v11 + 32769) >> 16)) >> 16);
          --v4;
        }

        while (v4);
      }
    }

    else if (v13 >= v11)
    {
      if (v4)
      {
        v59 = v19 + v16;
        v60 = v59 + v18;
        do
        {
          v61 = v20[v59];
          v62 = v20[v60];
          v63 = v20[v19];
          v64 = *v20++;
          result = (v62 - v61);
          v65 = (v61 - v63) * v11 + result * v12 + (v63 - v64) * v13 + 32769;
          *a2++ = v64 + ((v65 + (v65 >> 16)) >> 16);
          --v4;
        }

        while (v4);
      }
    }

    else if (v4)
    {
      v29 = v19 + v16;
      v30 = v29 + v18;
      do
      {
        v31 = v20[v16];
        v32 = v20[v30];
        v33 = v20[v29];
        v34 = *v20++;
        result = (v33 - v31) * v13 + (v32 - v33) * v12;
        *a2++ = v34 + ((result + (v31 - v34) * v11 + 32769 + ((result + (v31 - v34) * v11 + 32769) >> 16)) >> 16);
        --v4;
      }

      while (v4);
    }
  }

  else if (v11 >= v13)
  {
    if (v4)
    {
      v35 = v18 + v16;
      v36 = v19 + v35;
      do
      {
        v37 = v20[v35];
        v38 = v20[v18];
        v39 = v20[v36];
        v40 = *v20++;
        v41 = v39 - v37;
        v42 = v37 - v38;
        result = (v38 - v40);
        v43 = v41 * v13 + v42 * v11 + result * v12 + 32769;
        *a2++ = v40 + ((v43 + (v43 >> 16)) >> 16);
        --v4;
      }

      while (v4);
    }
  }

  else if (v12 >= v13)
  {
    if (v4)
    {
      v50 = v19 + v18;
      v51 = v50 + v16;
      do
      {
        v52 = v20[v51];
        v53 = v20[v18];
        v54 = v20[v50];
        v55 = *v20++;
        v56 = v52 - v54;
        v57 = v54 - v53;
        result = (v53 - v55);
        v58 = v57 * v13 + v56 * v11 + result * v12 + 32769;
        *a2++ = v55 + ((v58 + (v58 >> 16)) >> 16);
        --v4;
      }

      while (v4);
    }
  }

  else if (v4)
  {
    v21 = v19 + v18;
    v22 = v21 + v16;
    do
    {
      v23 = v20[v22];
      v24 = v20[v21];
      v25 = v20[v19];
      v26 = *v20++;
      v27 = v23 - v24;
      result = (v24 - v25) * v12;
      v28 = result + v27 * v11 + (v25 - v26) * v13 + 32769;
      *a2++ = v26 + ((v28 + (v28 >> 16)) >> 16);
      --v4;
    }

    while (v4);
  }

  return result;
}

float sub_240AC5134(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = a1[1].f32[0];
  if (v4 <= 1.0)
  {
    v5 = a1[1].f32[0];
  }

  else
  {
    v5 = 1.0;
  }

  _NF = v4 < 0.000000001;
  result = 0.0;
  if (_NF)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  if (v3 >= 1)
  {
    v9 = 0;
    __asm { FMOV            V6.2S, #1.0 }

    v14 = vand_s8(vbsl_s8(vcgt_f32(*a1, _D6), _D6, *a1), vbic_s8(vceq_f32(*a1, *a1), vcgt_f32(vdup_n_s32(0x3089705Fu), *a1)));
    v15 = *(a3 + 52) * v14.f32[0];
    v16 = vmuls_lane_f32(*(a3 + 56), v14, 1);
    v17 = v8 * *(a3 + 60);
    v18 = vcvtms_s32_f32(v15);
    result = v15 - floorf(v15);
    v19 = vcvtms_s32_f32(v16);
    v20 = v16 - floorf(v16);
    v21 = floorf(v17);
    v22 = *(a3 + 120);
    v23 = *(a3 + 84) * vcvtms_s32_f32(v17);
    if (v8 >= 1.0)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(a3 + 84);
    }

    v25 = v23 + v24;
    v26 = *(a3 + 88) * v19;
    v27 = vmvn_s8(vcge_f32(v14, _D6));
    if (v27.i8[4])
    {
      v28 = *(a3 + 88);
    }

    else
    {
      v28 = 0;
    }

    v29 = v26 + v28;
    v30 = *(a3 + 92);
    v31 = v30 * v18;
    v32 = v22 + 4 * (v23 + v26 + v30 * v18);
    v33 = v22 + 4 * (v25 + v26 + v31);
    if ((v27.i8[0] & 1) == 0)
    {
      v30 = 0;
    }

    v34 = v31 + v30;
    v35 = v22 + 4 * (v29 + v31 + v23);
    v36 = v22 + 4 * (v25 + v29 + v31);
    v37 = v26 + v34;
    v38 = v29 + v34;
    v39 = v22 + 4 * (v23 + v37);
    v40 = v17 - v21;
    v41 = v38 + v23;
    v42 = v22 + 4 * (v25 + v37);
    v43 = v25 + v38;
    v44 = v22 + 4 * v41;
    v45 = v22 + 4 * v43;
    v46 = 4 * v3;
    do
    {
      v47 = *(v32 + v9) + ((*(v39 + v9) - *(v32 + v9)) * result);
      v48 = *(v33 + v9) + ((*(v42 + v9) - *(v33 + v9)) * result);
      v49 = v47 + (((*(v35 + v9) + ((*(v44 + v9) - *(v35 + v9)) * result)) - v47) * v20);
      *(a2 + v9) = v49 + (((v48 + (((*(v36 + v9) + ((*(v45 + v9) - *(v36 + v9)) * result)) - v48) * v20)) - v49) * v40);
      v9 += 4;
    }

    while (v46 != v9);
  }

  return result;
}

unsigned __int16 *sub_240AC5300(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *result;
    v6 = (*(a3 + 52) * v5 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v5;
    v7 = result[1];
    v8 = (*(a3 + 56) * v7 + 0x7FFF) / 0xFFFF + *(a3 + 56) * v7;
    v9 = result[2];
    v10 = (*(a3 + 60) * v9 + 0x7FFF) / 0xFFFF + *(a3 + 60) * v9;
    v11 = *(a3 + 120);
    v12 = (v10 >> 16) * *(a3 + 84);
    if (v9 == 0xFFFF)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a3 + 84);
    }

    v14 = v12 + v13;
    v15 = (v8 >> 16) * *(a3 + 88);
    if (v7 == 0xFFFF)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a3 + 88);
    }

    v17 = *(a3 + 92);
    v18 = v17 * (v6 >> 16);
    v19 = v5 == 0xFFFF;
    v20 = v11 + 2 * (v12 + v15 + v18);
    v21 = v15 + v16;
    v22 = v11 + 2 * (v14 + v15 + v18);
    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = v17;
    }

    v24 = v18 + v23;
    v25 = v11 + 2 * (v21 + v18 + v12);
    v26 = v11 + 2 * (v14 + v21 + v18);
    v27 = v15 + v24;
    v28 = v21 + v24;
    result = (v11 + 2 * (v12 + v15 + v24));
    v29 = v11 + 2 * (v14 + v27);
    v30 = v14 + v28;
    v31 = v11 + 2 * (v28 + v12);
    v32 = v11 + 2 * v30;
    v33 = 2 * v3;
    do
    {
      v34 = *(v20 + v4) + (((result[v4 / 2] - *(v20 + v4)) * v6 + 0x8000) >> 16);
      v35 = *(v22 + v4) + (((*(v29 + v4) - *(v22 + v4)) * v6 + 0x8000) >> 16);
      v36 = v34 + ((((*(v25 + v4) + (((*(v31 + v4) - *(v25 + v4)) * v6 + 0x8000) >> 16)) - v34) * v8 + 0x8000) >> 16);
      *(a2 + v4) = v36 + ((((v35 + ((((*(v26 + v4) + (((*(v32 + v4) - *(v26 + v4)) * v6 + 0x8000) >> 16)) - v35) * v8 + 0x8000) >> 16)) - v36) * v10 + 0x8000) >> 16);
      v4 += 2;
    }

    while (v33 != v4);
  }

  return result;
}

float32x2_t *sub_240AC54EC(float32x2_t *result, float *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= 1)
  {
    __asm { FMOV            V2.2S, #1.0 }

    v9 = vand_s8(vbsl_s8(vcgt_f32(*result, _D2), _D2, *result), vbic_s8(vceq_f32(*result, *result), vcgt_f32(vdup_n_s32(0x3089705Fu), *result)));
    v10 = vmul_f32(v9, vcvt_f32_u32(*(a3 + 52)));
    v11 = vshr_n_s32(vmovn_s64(vaddq_f64(vcvtq_f64_f32(v10), vdupq_n_s64(0x4238000000000000uLL))), 0x10uLL);
    v12 = v10.f32[0] - v11.i32[0];
    v13 = v10.f32[1] - v11.i32[1];
    v14 = *(a3 + 120);
    v15 = vcge_f32(v9, _D2);
    v16 = vrev64_s32(*(a3 + 84));
    v17 = vmul_s32(v11, v16);
    v18 = vadd_s32(v17, vbic_s8(v16, v15));
    v19 = vadd_s32(v18, vrev64_s32(v17));
    v20 = (v14 + 4 * vadd_s32(vdup_lane_s32(v17, 1), v17).i32[0]);
    v21 = (v14 + 4 * v19.i32[1]);
    v22 = (v14 + 4 * v19.i32[0]);
    v23 = (v14 + 4 * vadd_s32(vdup_lane_s32(v18, 1), v18).i32[0]);
    do
    {
      v24 = *v20++;
      v25 = v24;
      v26 = *v21++;
      v27 = v26;
      v28 = *v22++;
      v29 = v28;
      v30 = *v23++;
      *a2++ = (v25 + ((v29 - v25) * v12)) + (((v27 + ((v30 - v27) * v12)) - (v25 + ((v29 - v25) * v12))) * v13);
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_240AC55EC(unint64_t result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= 1)
  {
    v4 = *result;
    v5 = *(a3 + 52) * v4;
    v6 = (v5 + 0x7FFF) / 0xFFFF + v5;
    v7 = ((v5 + 0x7FFF) / 0xFFFF + v5);
    v8 = *(result + 2);
    v9 = *(a3 + 56) * v8;
    v10 = (v9 + 0x7FFF) / 0xFFFF + v9;
    v11 = ((v9 + 0x7FFF) / 0xFFFF + v9);
    v12 = *(a3 + 120);
    v13 = (v10 >> 16) * *(a3 + 84);
    if (v8 == 0xFFFF)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a3 + 84);
    }

    v15 = v13 + v14;
    v16 = (v6 >> 16) * *(a3 + 88);
    if (v4 == 0xFFFF)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a3 + 88);
    }

    v18 = (v12 + 2 * (v13 + v16));
    v19 = v16 + v17;
    v20 = v13 + v19;
    v21 = (v12 + 2 * (v15 + v16));
    v22 = (v12 + 2 * v20);
    v23 = (v12 + 2 * (v15 + v19));
    do
    {
      v25 = *v18++;
      v24 = v25;
      v27 = *v21++;
      v26 = v27;
      v29 = *v22++;
      v28 = v29;
      v30 = *v23++;
      result = v30;
      v31 = v24 + (((v28 - v24) * v7 + 0x8000) >> 16);
      *a2++ = v31 + ((((v26 + (((v30 - v26) * v7 + 0x8000) >> 16)) - v31) * v11 + 0x8000) >> 16);
      --v3;
    }

    while (v3);
  }

  return result;
}

float *sub_240AC56F8(float *result, float *a2, uint64_t a3)
{
  v3 = *(a3 + 120);
  if (*result <= 1.0)
  {
    v4 = *result;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = 0;
  if (*result >= 0.000000001)
  {
    *v5.i32 = v4;
  }

  v6 = *(a3 + 52);
  if (*v5.i32 == 1.0)
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      v5.i32[0] = *(v3 + 4 * v6);
      v8 = (v7 + 3) & 0x1FFFFFFFCLL;
      v9 = vdupq_n_s64(v7 - 1);
      v10 = xmmword_240C111C0;
      v11 = xmmword_240C111D0;
      v12 = a2 + 2;
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, v5).u8[0])
        {
          *(v12 - 2) = v5.i32[0];
        }

        if (vuzp1_s16(v14, v5).i8[2])
        {
          *(v12 - 1) = v5.i32[0];
        }

        if (vuzp1_s16(v5, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *v12 = v5.i32[0];
          v12[1] = v5.i32[0];
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v12 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }

  else
  {
    v15 = *(a3 + 16);
    if (v15)
    {
      v16 = *v5.i32 * v6;
      v17 = vcvtmd_s64_f64(v16);
      v18 = vcvtpd_s64_f64(v16);
      v19 = v16 - v17;
      v20 = *(a3 + 84);
      v21 = v20 * v17;
      v22 = v20 * v18;
      do
      {
        *a2++ = *(v3 + 4 * v21) + ((*(v3 + 4 * v22++) - *(v3 + 4 * v21)) * v19);
        ++v21;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

unsigned __int16 *sub_240AC5828(unsigned __int16 *result, _WORD *a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*(a3 + 52) * v3 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v3;
  v5 = v4 >> 16;
  if (v3 == 0xFFFF)
  {
    v6 = v4 >> 16;
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *(a3 + 120);
    v9 = *(a3 + 84);
    v10 = v5 * v9;
    v11 = v6 * v9;
    do
    {
      v12 = *(v8 + 2 * v10);
      *a2++ = v12 + (((*(v8 + 2 * v11++) - v12) * v4 + 0x8000) >> 16);
      ++v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

float *sub_240AC58B8(float *result, float *a2, uint64_t a3)
{
  v3 = *(a3 + 120);
  if (*result <= 1.0)
  {
    v4 = *result;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = 0.0;
  if (*result >= 0.000000001)
  {
    v5 = v4;
  }

  v6 = *(a3 + 52);
  if (v5 == 1.0)
  {
    v7 = *(v3 + 4 * v6);
  }

  else
  {
    v8 = v5 * v6;
    v9 = vcvtmd_s64_f64(v8);
    v7 = *(v3 + 4 * v9) + ((*(v3 + 4 * vcvtpd_s64_f64(v8)) - *(v3 + 4 * v9)) * (v8 - v9));
  }

  *a2 = v7;
  return result;
}

unsigned __int16 *sub_240AC592C(unsigned __int16 *result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 120);
  v4 = *result;
  if (v4 == 0xFFFF)
  {
    LOWORD(v3) = *(v3 + 2 * *(a3 + 52));
  }

  else
  {
    v5 = (*(a3 + 52) * v4 + 0x7FFF) / 0xFFFF + *(a3 + 52) * v4;
    LODWORD(v3) = *(v3 + 2 * (v5 >> 16)) + ((v5 * (*(v3 + 2 * (v5 >> 16) + 2) - *(v3 + 2 * (v5 >> 16))) + 0x8000) >> 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_240AC59A8(uint64_t *a1, int *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 9)
  {
    sub_240AC15A4(a1, 2, "Too many input channels (%d channels, max=%d)", a4, a5, a6, a7, a8, a3);
    return 0;
  }

  v11 = a6;
  v13 = a4;
  if (a1)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == a1)
      {
        goto LABEL_11;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_11:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = (*(v16 + 1))(a1, 136, 0x10E0040D08943E9);
  v10 = v17;
  if (v17)
  {
    *(v17 + 8) = v11;
    *(v17 + 12) = a3;
    *(v17 + 16) = v13;
    *(v17 + 120) = a5;
    *v17 = a1;
    if (a3)
    {
      v18 = (v17 + 52);
      v19 = a2;
      v20 = a3;
      do
      {
        v21 = *v19++;
        *(v18 - 8) = v21;
        *v18++ = v21 - 1;
        --v20;
      }

      while (v20);
      *(v17 + 84) = v13;
      v22 = a3 - 1;
      if (a3 != 1)
      {
        v23 = 1 - a3;
        v24 = (v17 + 88);
        v25 = v13;
        do
        {
          v25 *= a2[v22];
          *v24++ = v25;
          --v22;
        }

        while (!__CFADD__(v23++, 1));
      }
    }

    else
    {
      *(v17 + 84) = v13;
    }

    if (!sub_240AC36B4(a1, v17))
    {
      sub_240AC15A4(a1, 8, "Unsupported interpolation (%d->%d channels)", v27, v28, v29, v30, v31, a3);
      if (a1)
      {
        v33 = &qword_27E516570;
        while (1)
        {
          v33 = *v33;
          if (!v33)
          {
            break;
          }

          if (v33 == a1)
          {
            goto LABEL_32;
          }
        }

        v33 = &unk_278CB2F00;
      }

      else
      {
        v33 = &unk_278CB2F00;
      }

LABEL_32:
      v34 = v33[6];
      if (!v34)
      {
        v34 = &xmmword_281500C10;
      }

      (*(v34 + 2))(a1, v10);
      return 0;
    }
  }

  return v10;
}

uint64_t sub_240AC5B98(uint64_t *a1)
{
  if (a1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == a1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  v4 = (*(v3 + 1))(a1, 320, 0x10A004053E37DE3);
  if (v4)
  {
    if (a1)
    {
      v5 = &qword_27E516570;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        if (v5 == a1)
        {
          goto LABEL_18;
        }
      }

      v5 = &unk_278CB2F00;
    }

    else
    {
      v5 = &unk_278CB2F00;
    }

LABEL_18:
    v6 = v5[6];
    if (!v6)
    {
      v6 = &xmmword_281500C10;
    }

    v7 = (*(v6 + 1))(a1, 4, 0x100004052888210);
    if (v7)
    {
      *v7 = 0;
      *v4 = v7;
      *(v4 + 8) = a1;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 280) = sub_240AC5E74;
      *(v4 + 288) = sub_240AC5E64;
      *(v4 + 296) = sub_240AC5D90;
      *(v4 + 304) = sub_240AC5D84;
      *(v4 + 312) = sub_240AC5D5C;
    }

    else
    {
      if (a1)
      {
        v8 = &qword_27E516570;
        while (1)
        {
          v8 = *v8;
          if (!v8)
          {
            break;
          }

          if (v8 == a1)
          {
            goto LABEL_29;
          }
        }

        v8 = &unk_278CB2F00;
      }

      else
      {
        v8 = &unk_278CB2F00;
      }

LABEL_29:
      v9 = v8[6];
      if (!v9)
      {
        v9 = &xmmword_281500C10;
      }

      (*(v9 + 2))(a1, v4);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_240AC5D5C(uint64_t a1, int a2)
{
  v2 = **a1 + a2;
  **a1 = v2;
  if (v2 > *(a1 + 16))
  {
    *(a1 + 16) = v2;
  }

  return 1;
}

uint64_t sub_240AC5D90(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v3)
  {
    if (v2)
    {
      v4 = &qword_27E516570;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (v4 == v2)
        {
          goto LABEL_9;
        }
      }

      v4 = &unk_278CB2F00;
    }

    else
    {
      v4 = &unk_278CB2F00;
    }

LABEL_9:
    v5 = v4[6];
    if (!v5)
    {
      v5 = &xmmword_281500C10;
    }

    (*(v5 + 2))();
    v2 = a1[1];
  }

  if (v2)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == v2)
      {
        goto LABEL_19;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_19:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  (*(v7 + 2))();
  return 1;
}

uint64_t sub_240AC5E8C(uint64_t *a1, const void *a2, uint64_t a3, unsigned __int8 *a4)
{
  if (a1)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == a1)
      {
        goto LABEL_8;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_8:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  v15 = (*(v9 + 1))(a1, 320, 0x10A004053E37DE3);
  if (v15)
  {
    v16 = *a4;
    if (v16 == 119)
    {
      if (a1)
      {
        v18 = &qword_27E516570;
        while (1)
        {
          v18 = *v18;
          if (!v18)
          {
            break;
          }

          if (v18 == a1)
          {
            goto LABEL_38;
          }
        }

        v18 = &unk_278CB2F00;
      }

      else
      {
        v18 = &unk_278CB2F00;
      }

LABEL_38:
      v28 = v18[6];
      if (!v28)
      {
        v28 = &xmmword_281500C10;
      }

      v29 = (*(v28 + 1))(a1, 24, 0x1010040E2407E0ALL);
      if (v29)
      {
        v26 = v29;
        v30 = 0;
        v31 = 0;
        *v29 = a2;
LABEL_53:
        v26[3] = 0;
        v26[4] = v30;
        v26[2] = a3;
        *v15 = v26;
        *(v15 + 8) = a1;
        *(v15 + 16) = 0;
        *(v15 + 20) = v31;
        *(v15 + 24) = 0;
        *(v15 + 280) = sub_240AC6510;
        *(v15 + 288) = sub_240AC64C4;
        *(v15 + 296) = sub_240AC6378;
        *(v15 + 304) = sub_240AC6360;
        *(v15 + 312) = sub_240AC62DC;
        return v15;
      }
    }

    else
    {
      if (v16 != 114)
      {
        sub_240AC15A4(a1, 8, "Unknown access mode '%c'", v10, v11, v12, v13, v14, v16);
        return 0;
      }

      if (a1)
      {
        v17 = &qword_27E516570;
        while (1)
        {
          v17 = *v17;
          if (!v17)
          {
            break;
          }

          if (v17 == a1)
          {
            goto LABEL_28;
          }
        }

        v17 = &unk_278CB2F00;
      }

      else
      {
        v17 = &unk_278CB2F00;
      }

LABEL_28:
      v19 = v17[6];
      if (!v19)
      {
        v19 = &xmmword_281500C10;
      }

      v20 = (*(v19 + 1))(a1, 24, 0x1010040E2407E0ALL);
      if (v20)
      {
        v26 = v20;
        if (a2)
        {
          if (a1)
          {
            v27 = &qword_27E516570;
            while (1)
            {
              v27 = *v27;
              if (!v27)
              {
                break;
              }

              if (v27 == a1)
              {
                goto LABEL_49;
              }
            }

            v27 = &unk_278CB2F00;
          }

          else
          {
            v27 = &unk_278CB2F00;
          }

LABEL_49:
          v33 = v27[6];
          if (!v33)
          {
            v33 = &xmmword_281500C10;
          }

          v34 = (*v33)(a1, a3, 0x100004077774924);
          *v26 = v34;
          if (v34)
          {
            memmove(v34, a2, a3);
            v30 = 1;
            v31 = a3;
            goto LABEL_53;
          }

          if (a1)
          {
            v35 = &qword_27E516570;
            while (1)
            {
              v35 = *v35;
              if (!v35)
              {
                break;
              }

              if (v35 == a1)
              {
                goto LABEL_78;
              }
            }

            v35 = &unk_278CB2F00;
LABEL_78:
            v40 = v35[6];
            if (!v40)
            {
              v40 = &xmmword_281500C10;
            }

            (*(v40 + 2))(a1, v26);
            v41 = &qword_27E516570;
            while (1)
            {
              v41 = *v41;
              if (!v41)
              {
                break;
              }

              if (v41 == a1)
              {
                goto LABEL_87;
              }
            }

            v41 = &unk_278CB2F00;
          }

          else
          {
            off_281500C20(0, v26);
            v41 = &unk_278CB2F00;
          }

LABEL_87:
          v42 = v41[6];
          if (!v42)
          {
            v42 = &xmmword_281500C10;
          }

          (*(v42 + 2))(a1, v15);
          sub_240AC15A4(a1, 5, "Couldn't allocate %ld bytes for profile", v43, v44, v45, v46, v47, a3);
          return 0;
        }

        sub_240AC15A4(a1, 5, "Couldn't read profile from NULL pointer", v21, v22, v23, v24, v25, v48);
        if (a1)
        {
          v32 = &qword_27E516570;
          while (1)
          {
            v32 = *v32;
            if (!v32)
            {
              break;
            }

            if (v32 == a1)
            {
              goto LABEL_61;
            }
          }

          v32 = &unk_278CB2F00;
        }

        else
        {
          v32 = &unk_278CB2F00;
        }

LABEL_61:
        v36 = v32[6];
        if (!v36)
        {
          v36 = &xmmword_281500C10;
        }

        (*(v36 + 2))(a1, v26);
      }
    }

    if (a1)
    {
      v37 = &qword_27E516570;
      while (1)
      {
        v37 = *v37;
        if (!v37)
        {
          break;
        }

        if (v37 == a1)
        {
          goto LABEL_71;
        }
      }

      v37 = &unk_278CB2F00;
    }

    else
    {
      v37 = &unk_278CB2F00;
    }

LABEL_71:
    v38 = v37[6];
    if (!v38)
    {
      v38 = &xmmword_281500C10;
    }

    (*(v38 + 2))(a1, v15);
    return 0;
  }

  return v15;
}

uint64_t sub_240AC62DC(uint64_t *a1, unsigned int a2, void *__src)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 12);
  if (v4 + a2 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5 - v4;
  }

  if (v6)
  {
    memmove((*v3 + v4), __src, v6);
    v8 = *(v3 + 12) + v6;
    *(v3 + 12) = v8;
    if (v8 > *(a1 + 4))
    {
      *(a1 + 4) = v8;
    }
  }

  return 1;
}

uint64_t sub_240AC6360(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240AC6378(uint64_t **a1)
{
  if (*(*a1 + 4) && **a1)
  {
    v2 = a1 + 1;
    v1 = a1[1];
    if (v1)
    {
      v3 = &qword_27E516570;
      while (1)
      {
        v3 = *v3;
        if (!v3)
        {
          break;
        }

        if (v3 == v1)
        {
          goto LABEL_11;
        }
      }

      v3 = &unk_278CB2F00;
    }

    else
    {
      v3 = &unk_278CB2F00;
    }

LABEL_11:
    v4 = v3[6];
    if (!v4)
    {
      v4 = &xmmword_281500C10;
    }

    (*(v4 + 2))();
  }

  else
  {
    v2 = a1 + 1;
  }

  if (*v2)
  {
    v5 = &qword_27E516570;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5 == *v2)
      {
        goto LABEL_21;
      }
    }

    v5 = &unk_278CB2F00;
  }

  else
  {
    v5 = &unk_278CB2F00;
  }

LABEL_21:
  v6 = v5[6];
  if (!v6)
  {
    v6 = &xmmword_281500C10;
  }

  (*(v6 + 2))();
  if (*v2)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == *v2)
      {
        goto LABEL_30;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_30:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  (*(v8 + 2))();
  return 1;
}

uint64_t sub_240AC64C4(uint64_t **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*a1 + 2) >= a2)
  {
    *(*a1 + 3) = a2;
    return 1;
  }

  else
  {
    sub_240AC15A4(a1[1], 6, "Too few data; probably corrupted profile", a4, a5, a6, a7, a8, v8);
    return 0;
  }
}

uint64_t sub_240AC6510(uint64_t **a1, void *__dst, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = a4 * a3;
  v11 = *(*a1 + 2);
  v10 = *(*a1 + 3);
  if (v10 + a4 * a3 <= v11)
  {
    v12 = a4;
    memmove(__dst, (*v8 + v10), (a4 * a3));
    *(v8 + 3) += v9;
  }

  else
  {
    sub_240AC15A4(a1[1], 5, "Read from memory error. Got %d bytes, block should be of %d bytes", a4, a5, a6, a7, a8, v11 - v10);
    return 0;
  }

  return v12;
}

BOOL sub_240AC65A4(uint64_t a1, size_t __size, void *__ptr)
{
  if (!__size)
  {
    return 1;
  }

  *(a1 + 16) += __size;
  return fwrite(__ptr, __size, 1uLL, *a1) == 1;
}

uint64_t sub_240AC65F0(uint64_t a1)
{
  result = MEMORY[0x245CCE7A0](*a1);
  if (result == -1)
  {
    sub_240AC15A4(*(a1 + 8), 1, "Tell error; probably corrupted file", v3, v4, v5, v6, v7, v8);
    return 0;
  }

  return result;
}

uint64_t sub_240AC6638(uint64_t a1)
{
  if (fclose(*a1))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_10:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  (*(v5 + 2))();
  return 1;
}

uint64_t sub_240AC66CC(uint64_t a1, unsigned int a2)
{
  if (!fseek(*a1, a2, 0))
  {
    return 1;
  }

  sub_240AC15A4(*(a1 + 8), 1, "Seek error; probably corrupted file", v3, v4, v5, v6, v7, v9);
  return 0;
}

size_t sub_240AC6720(uint64_t a1, void *__ptr, size_t __size, size_t __nitems)
{
  v4 = __nitems;
  v5 = __size;
  v7 = fread(__ptr, __size, __nitems, *a1);
  if (v7 != v4)
  {
    sub_240AC15A4(*(a1 + 8), 1, "Read error. Got %d bytes, block should be of %d bytes", v8, v9, v10, v11, v12, v7 * v5);
    return 0;
  }

  return v4;
}

uint64_t sub_240AC67A4(uint64_t *a1)
{
  v15 = time(0);
  if (a1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == a1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  v4 = (*(v3 + 1))(a1, 3752, 0x10B004050293FFELL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = a1;
    *(v4 + 132) = 0;
    *(v4 + 72) = 34603008;
    v6 = gmtime(&v15);
    v8 = *&v6->tm_mon;
    v7 = *&v6->tm_isdst;
    v9 = *&v6->tm_sec;
    *(v5 + 64) = v6->tm_zone;
    *(v5 + 32) = v8;
    *(v5 + 48) = v7;
    *(v5 + 16) = v9;
    if (a1)
    {
      v10 = &qword_27E516570;
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        if (v10 == a1)
        {
          goto LABEL_18;
        }
      }

      v10 = &unk_278CB2F00;
    }

    else
    {
      v10 = &unk_278CB2F00;
    }

LABEL_18:
    v11 = v10[16];
    if (!v11)
    {
      v11 = &off_281500BF0;
    }

    v12 = *v11;
    if (v12)
    {
      v13 = (v12)(a1);
    }

    else
    {
      v13 = 0;
    }

    *(v5 + 3744) = v13;
  }

  return v5;
}

uint64_t sub_240AC68E8(uint64_t *a1, unsigned int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  __asm { FMOV            V2.2D, #0.5 }

  v20 = 0;
  v19 = 0;
  v22 = bswap32(a2);
  v23 = 1936548716;
  v24 = vrev32q_s8(*(a1 + 9));
  v27 = vrev64_s16(vrev16_s8(vmovn_s32(*(a1 + 1))));
  v26 = bswap32(*(a1 + 16) + 1) >> 16;
  v25 = bswap32(*(a1 + 18) + 1900) >> 16;
  v28 = 0x4C50504170736361;
  v29 = vrev32_s8(*(a1 + 92));
  v30 = bswap32(*(a1 + 25));
  v31 = vrev64_s8(a1[13]);
  v32 = bswap32(*(a1 + 22));
  v33 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x40F0000000000000uLL), xmmword_27E516510)))));
  v34 = bswap32(vcvtmd_s64_f64(*&qword_27E516520 * 65536.0 + 0.5));
  v35 = 1936548716;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = *(a1 + 116);
  result = (*(*a1 + 312))();
  if (result)
  {
    v9 = *(a1 + 33);
    if (v9)
    {
      v10 = 0;
      v11 = a1 + 17;
      do
      {
        if (*v11++)
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = *a1;
    v21 = bswap32(v10);
    if ((*(v13 + 312))() == 1)
    {
      v14 = *(a1 + 33);
      if (v14)
      {
        for (i = 0; i < v14; ++i)
        {
          v16 = a1 + i;
          v17 = v16[34];
          if (v17)
          {
            v19 = __PAIR64__(bswap32(v16[334]), bswap32(v17));
            v20 = bswap32(v16[234]);
            result = (*(*a1 + 312))();
            if (!result)
            {
              goto LABEL_18;
            }

            v14 = *(a1 + 33);
          }
        }
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AC6B0C(uint64_t result, double a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = vcvtmd_u64_f64(a2 * 100.0 + 0.5);
  if (v2)
  {
    v3 = 0;
    do
    {
      v10[v3] = v2 % 0xA;
      v4 = v3 + 1;
      if (v3 > 0x62)
      {
        break;
      }

      ++v3;
      v5 = v2 > 9;
      v2 /= 0xAu;
    }

    while (v5);
    v6 = 0;
    v7 = v4 - 1;
    do
    {
      v6 = v10[v7] + 16 * v6;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
    v2 = v6 << 16;
  }

  *(result + 72) = v2;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_240AC6BD8(unsigned int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = 0.0;
  if (a1 >= 0x10000)
  {
    v2 = 0;
    v3 = HIWORD(a1);
    do
    {
      v11[v2++] = v3 & 0xF;
      v4 = v3 >= 0xF;
      v5 = v3 == 15;
      v3 >>= 4;
    }

    while (!v5 && v4);
    v6 = 0;
    v7 = v2 - 1;
    do
    {
      v6 = v11[v7] + 10 * v6;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
    v1 = v6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v1 / 100.0;
}

uint64_t sub_240AC6C8C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 3736))
  {
    *(result + 3736) = 0;
    v2 = *result;
    v3 = *(result + 8);
    if (v3)
    {
      v4 = &qword_27E516570;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (v4 == v3)
        {
          goto LABEL_10;
        }
      }

      v4 = &unk_278CB2F00;
    }

    else
    {
      v4 = &unk_278CB2F00;
    }

LABEL_10:
    v5 = v4[6];
    if (!v5)
    {
      v5 = &xmmword_281500C10;
    }

    v6 = (*(v5 + 1))(*(result + 8), 320, 0x10A004053E37DE3);
    if (v6)
    {
      v7 = v6;
      v8 = v2 + 1;
      v9 = fopen(v8, "wb");
      if (!v9)
      {
        if (v3)
        {
          v12 = &qword_27E516570;
          while (1)
          {
            v12 = *v12;
            if (!v12)
            {
              break;
            }

            if (v12 == v3)
            {
              goto LABEL_73;
            }
          }

          v12 = &unk_278CB2F00;
        }

        else
        {
          v12 = &unk_278CB2F00;
        }

LABEL_73:
        v35 = v12[6];
        if (!v35)
        {
          v35 = &xmmword_281500C10;
        }

        (*(v35 + 2))(v3, v7);
        sub_240AC15A4(v3, 1, "Couldn't create '%s'", v36, v37, v38, v39, v40, v8);
        goto LABEL_76;
      }

      *v7 = v9;
      *(v7 + 8) = v3;
      *(v7 + 16) = 0;
      strncpy((v7 + 24), v8, 0xFFuLL);
      *(v7 + 279) = 0;
      *(v7 + 280) = sub_240AC6720;
      *(v7 + 288) = sub_240AC66CC;
      *(v7 + 296) = sub_240AC6638;
      *(v7 + 304) = sub_240AC65F0;
      *(v7 + 312) = sub_240AC65A4;
      v10 = *(v1 + 8);
      if (v10)
      {
        v11 = &qword_27E516570;
        while (1)
        {
          v11 = *v11;
          if (!v11)
          {
            break;
          }

          if (v11 == v10)
          {
            goto LABEL_26;
          }
        }

        v11 = &unk_278CB2F00;
      }

      else
      {
        v11 = &unk_278CB2F00;
      }

LABEL_26:
      v13 = v11[16];
      if (!v13)
      {
        v13 = &off_281500BF0;
      }

      v14 = v13[2];
      if (v14)
      {
        if (!(v14)(*(v1 + 8), *(v1 + 3744)))
        {
LABEL_68:
          v32 = 1;
LABEL_69:
          v33 = (*(v7 + 296))(v7);
          if ((v32 & 1) != 0 || (v33 & 1) == 0)
          {
            remove(v8, v34);
          }

          goto LABEL_76;
        }

        v10 = *(v1 + 8);
      }

      memcpy(__dst, v1, 0xEA8uLL);
      v15 = sub_240AC5B98(v10);
      *v1 = v15;
      if (v15)
      {
        v16 = v15;
        if (sub_240AC68E8(v1, 0) && sub_240AC7258(v1, __dst))
        {
          v17 = *(v16 + 16);
          *v1 = v7;
          v18 = *(v1 + 132);
          if (v18)
          {
            for (i = 0; i != v18; ++i)
            {
              if (v18 >= 1)
              {
                v20 = *(v1 + 536 + 4 * i);
                if (v20)
                {
                  v21 = 0;
                  while (*(v1 + 136 + 4 * v21) != v20)
                  {
                    if (v18 == ++v21)
                    {
                      goto LABEL_43;
                    }
                  }

                  v22 = 4 * v21;
                  *(v1 + 1336 + 4 * i) = *(v1 + 1336 + v22);
                  *(v1 + 936 + 4 * i) = *(v1 + 936 + v22);
                }
              }

LABEL_43:
              ;
            }
          }

          if (sub_240AC68E8(v1, v17) && sub_240AC7258(v1, __dst))
          {
            memcpy(v1, __dst, 0xEA8uLL);
            v23 = (*(v16 + 296))(v16);
            v24 = *(v1 + 8);
            if (v24)
            {
              v25 = &qword_27E516570;
              while (1)
              {
                v25 = *v25;
                if (!v25)
                {
                  break;
                }

                if (v25 == v24)
                {
                  goto LABEL_117;
                }
              }

              v25 = &unk_278CB2F00;
            }

            else
            {
              v25 = &unk_278CB2F00;
            }

LABEL_117:
            v56 = v25[16];
            if (!v56)
            {
              v56 = &off_281500BF0;
            }

            v57 = v56[3];
            if (v57)
            {
              v58 = *(v1 + 3744);
              v57();
            }

            if (v23)
            {
              v59 = v17 == 0;
            }

            else
            {
              v59 = 1;
            }

            v32 = v59;
            goto LABEL_69;
          }
        }

        (*(v16 + 296))(v16);
        memcpy(v1, __dst, 0xEA8uLL);
        v26 = *(v1 + 8);
        if (v26)
        {
          v27 = &qword_27E516570;
          while (1)
          {
            v27 = *v27;
            if (!v27)
            {
              break;
            }

            if (v27 == v26)
            {
              goto LABEL_64;
            }
          }

LABEL_63:
          v27 = &unk_278CB2F00;
          goto LABEL_64;
        }
      }

      else
      {
        v28 = *(v1 + 8);
        if (v28)
        {
          v27 = &qword_27E516570;
          while (1)
          {
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_63;
            }

            if (v27 == v28)
            {
              goto LABEL_64;
            }
          }
        }
      }

      v27 = &unk_278CB2F00;
LABEL_64:
      v29 = v27[16];
      if (!v29)
      {
        v29 = &off_281500BF0;
      }

      v30 = v29[3];
      if (v30)
      {
        v31 = *(v1 + 3744);
        v30();
      }

      goto LABEL_68;
    }
  }

LABEL_76:
  if (*(v1 + 132))
  {
    v41 = 0;
    do
    {
      if (*(v1 + 2136 + 8 * v41))
      {
        v42 = *(v1 + 2936 + 8 * v41);
        if (v42)
        {
          *&__dst[3] = 0;
          memset(&__dst[1], 0, 32);
          __dst[0] = 0u;
          v43 = *v42;
          v44 = *(v42 + 6);
          v45 = v42[2];
          __dst[1] = v42[1];
          __dst[2] = v45;
          __dst[0] = v43;
          *(&__dst[2] + 1) = *(v1 + 8);
          *&__dst[3] = v44;
          LODWORD(__dst[3]) = *(v1 + 72);
          (v45)(__dst);
        }

        else
        {
          v46 = *(v1 + 8);
          if (v46)
          {
            v47 = &qword_27E516570;
            while (1)
            {
              v47 = *v47;
              if (!v47)
              {
                break;
              }

              if (v47 == v46)
              {
                goto LABEL_87;
              }
            }
          }

          v47 = &unk_278CB2F00;
LABEL_87:
          v48 = v47[6];
          if (!v48)
          {
            v48 = &xmmword_281500C10;
          }

          (*(v48 + 2))(v46);
        }
      }

      ++v41;
    }

    while (v41 < *(v1 + 132));
  }

  if (*v1)
  {
    (*(*v1 + 296))();
  }

  v49 = *(v1 + 8);
  if (v49)
  {
    v50 = &qword_27E516570;
    while (1)
    {
      v50 = *v50;
      if (!v50)
      {
        break;
      }

      if (v50 == v49)
      {
        goto LABEL_100;
      }
    }

    v50 = &unk_278CB2F00;
  }

  else
  {
    v50 = &unk_278CB2F00;
  }

LABEL_100:
  v51 = v50[16];
  if (!v51)
  {
    v51 = &off_281500BF0;
  }

  v52 = v51[1];
  if (v52)
  {
    v53 = *(v1 + 3744);
    v52();
    v49 = *(v1 + 8);
  }

  if (v49)
  {
    v54 = &qword_27E516570;
    while (1)
    {
      v54 = *v54;
      if (!v54)
      {
        break;
      }

      if (v54 == v49)
      {
        goto LABEL_111;
      }
    }

    v54 = &unk_278CB2F00;
  }

  else
  {
    v54 = &unk_278CB2F00;
  }

LABEL_111:
  v55 = v54[6];
  if (!v55)
  {
    v55 = &xmmword_281500C10;
  }

  return (*(v55 + 2))();
}

uint64_t sub_240AC7258(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_240AC6BD8(*(a1 + 72));
  if (!*(a1 + 132))
  {
    return 1;
  }

  v6 = v5;
  v7 = 0;
  v52 = 0;
  v8 = a1 + 136;
  v50 = 0u;
  v51 = 0u;
  v48 = a1 + 936;
  v46 = a2 + 1336;
  v47 = a2 + 936;
  v49 = 0u;
  while (1)
  {
    v9 = *(v8 + 4 * v7);
    if (!v9 || *(a1 + 536 + 4 * v7))
    {
      goto LABEL_36;
    }

    v10 = *(v4 + 16);
    *(a1 + 1336 + 4 * v7) = v10;
    v11 = *(a1 + 2136 + 8 * v7);
    if (!v11)
    {
      if (a2 && v10)
      {
        v13 = *(v47 + 4 * v7);
        v14 = *(v46 + 4 * v7);
        result = (*(*a2 + 288))();
        if (!result)
        {
          return result;
        }

        v16 = *(a1 + 8);
        if (v16)
        {
          v17 = &qword_27E516570;
          while (1)
          {
            v17 = *v17;
            if (!v17)
            {
              break;
            }

            if (v17 == v16)
            {
              goto LABEL_21;
            }
          }
        }

        v17 = &unk_278CB2F00;
LABEL_21:
        v23 = v17[6];
        if (!v23)
        {
          v23 = &xmmword_281500C10;
        }

        result = (*v23)();
        if (!result)
        {
          return result;
        }

        v24 = result;
        if ((*(*a2 + 280))() != 1)
        {
          return 0;
        }

        result = (*(v4 + 312))(v4, v13, v24);
        if (!result)
        {
          return result;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v26 = &qword_27E516570;
          while (1)
          {
            v26 = *v26;
            if (!v26)
            {
              break;
            }

            if (v26 == v25)
            {
              goto LABEL_32;
            }
          }
        }

        v26 = &unk_278CB2F00;
LABEL_32:
        v27 = v26[6];
        if (!v27)
        {
          v27 = &xmmword_281500C10;
        }

        (*(v27 + 2))();
        *(v48 + 4 * v7) = *(v4 + 16) - v10;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (*(a1 + 1736 + 4 * v7))
    {
      v12 = a1 + 936;
      if ((*(v4 + 312))(v4, *(v48 + 4 * v7), v11) != 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v18 = *(a1 + 8);
    v19 = sub_240AE2040(v18, v9);
    if (v19)
    {
      break;
    }

LABEL_36:
    if (++v7 >= *(a1 + 132))
    {
      return 1;
    }
  }

  v20 = v19;
  v21 = *(v19 + 11);
  v45 = a2;
  if (v21)
  {
    v22 = v21(v11, v6);
    v18 = *(a1 + 8);
  }

  else
  {
    v22 = *(v19 + 2);
  }

  v28 = sub_240AD5100(v18, v22);
  if (!v28)
  {
    sub_240AC15A4(v18, 3, "(Internal) no handler for tag %x", v29, v30, v31, v32, v33, *(v8 + 4 * v7));
    goto LABEL_36;
  }

  v34 = v28;
  v35 = bswap32(*v28);
  v53 = v35;
  result = (*(v4 + 312))(v4, 8, &v53);
  if (!result)
  {
    return result;
  }

  v36 = *v34;
  v37 = *(v34 + 6);
  v38 = *(v34 + 2);
  v50 = *(v34 + 1);
  v51 = v38;
  v49 = v36;
  *(&v51 + 1) = *(a1 + 8);
  v52 = v37;
  LODWORD(v52) = *(a1 + 72);
  v39 = (v50)(&v49, v4, v11, *v20);
  a2 = v45;
  v12 = a1 + 936;
  if (v39)
  {
LABEL_8:
    *(v12 + 4 * v7) = *(v4 + 16) - v10;
LABEL_35:
    result = sub_240AD46E4(v4);
    if (!result)
    {
      return result;
    }

    goto LABEL_36;
  }

  LODWORD(v53) = v35;
  BYTE4(v53) = 0;
  sub_240AC15A4(*(a1 + 8), 7, "Couldn't write type '%s'", v40, v41, v42, v43, v44, &v53);
  return 0;
}

uint64_t sub_240AC75A8(uint64_t *a1, const void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = sub_240AC67A4(a1);
  if (v6)
  {
    v7 = sub_240AC5E8C(a1, a2, a3, "r");
    *v6 = v7;
    if (v7)
    {
      v8 = v7;
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      v47 = 0u;
      memset(v46, 0, sizeof(v46));
      if ((*(v7 + 280))(v7, v46, 128, 1) == 1)
      {
        if (DWORD1(v46[2]) == 1886610273)
        {
          v14 = *&v46[1];
          v15.i64[0] = __PAIR64__(HIDWORD(v46[2]), v48);
          v15.i64[1] = v47;
          *(v6 + 88) = vrev32q_s8(v15);
          *(v6 + 112) = bswap32(v49[0]);
          *(v6 + 104) = vrev64_s8(*(&v47 + 8));
          v16 = v46[0];
          v17 = (DWORD2(v46[0]) >> 8) & 0xF0;
          if ((WORD4(v46[0]) & 0xF000u) > 0x9000)
          {
            v17 = 144;
          }

          v18 = (DWORD2(v46[0]) >> 8) & 0xF;
          if ((WORD4(v46[0]) & 0xE00u) > 0x900)
          {
            v18 = 9;
          }

          v19 = v17 | v18;
          if ((BYTE8(v46[0]) & 0xFEu) <= 9)
          {
            v20 = BYTE8(v46[0]);
          }

          else
          {
            v20 = 9;
          }

          v21.i32[0] = v20 | (v19 << 8);
          v21.i32[1] = *(v46 | 0xC);
          v21.i64[1] = v14;
          *(v6 + 72) = vrev32q_s8(v21);
          v22 = bswap32(v16);
          if (v22 >= *(*v6 + 20))
          {
            v23 = *(*v6 + 20);
          }

          else
          {
            v23 = v22;
          }

          v24 = vrev64q_s32(vmovl_u16(vrev16_s8(*(&v46[1] + 12))));
          *(v6 + 16) = vextq_s8(v24, v24, 8uLL);
          v25 = bswap32(WORD4(v46[1]));
          *(v6 + 32) = (bswap32(WORD5(v46[1])) >> 16) - 1;
          *(v6 + 36) = HIWORD(v25) - 1900;
          *(v6 + 40) = -1;
          *(v6 + 48) = 0;
          *(v6 + 116) = *(v49 + 4);
          v45 = 0;
          if ((*(v8 + 280))(v8, &v45, 4, 1) == 1)
          {
            v31 = v45;
            v32 = bswap32(v45);
            if (v32 < 0x65)
            {
              *(v6 + 132) = 0;
              if (!v31)
              {
                goto LABEL_20;
              }

              v35 = 0;
              while (1)
              {
                v45 = 0;
                if ((*(v8 + 280))(v8, &v45, 4, 1) != 1)
                {
                  break;
                }

                v36 = v45;
                v45 = 0;
                if ((*(v8 + 280))(v8, &v45, 4, 1) != 1)
                {
                  break;
                }

                v37 = v45;
                v45 = 0;
                if ((*(v8 + 280))(v8, &v45, 4, 1) != 1)
                {
                  break;
                }

                v38 = bswap32(v37);
                v39 = bswap32(v45);
                v40 = __CFADD__(v39, v38);
                if (v39 + v38 <= v23 && !v40)
                {
                  v41 = *(v6 + 132);
                  *(v6 + 136 + 4 * v41) = bswap32(v36);
                  *(v6 + 1336 + 4 * v41) = v38;
                  *(v6 + 936 + 4 * v41) = v39;
                  if (v41)
                  {
                    v42 = v41;
                    v43 = v6;
                    do
                    {
                      if (v43[334] == v38 && v43[234] == v39)
                      {
                        *(v6 + 536 + 4 * v41) = v43[34];
                      }

                      ++v43;
                      --v42;
                    }

                    while (v42);
                  }

                  *(v6 + 132) = v41 + 1;
                }

                if (++v35 == v32)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              sub_240AC15A4(*(v6 + 8), 2, "Too many tags (%d)", v26, v27, v28, v29, v30, v32);
            }
          }
        }

        else
        {
          sub_240AC15A4(*(v6 + 8), 11, "not an ICC profile, invalid signature", v9, v10, v11, v12, v13, v44);
        }
      }
    }

    sub_240AC6C8C(v6);
    v6 = 0;
  }

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_240AC7924(uint64_t *a1, unsigned int a2)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = &qword_27E516570;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5 == v4)
      {
        goto LABEL_8;
      }
    }

    v5 = &unk_278CB2F00;
  }

  else
  {
    v5 = &unk_278CB2F00;
  }

LABEL_8:
  v6 = *a1;
  v7 = v5[16];
  if (!v7)
  {
    v7 = &off_281500BF0;
  }

  v8 = v7[2];
  if (v8)
  {
    v9 = a1[468];
    if (!v8())
    {
      return 0;
    }
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0;
  v10 = *(a1 + 33);
  if (v10 < 1)
  {
    goto LABEL_51;
  }

  v11 = a2;
  do
  {
    v12 = 0;
    while (*(a1 + v12 + 34) != v11)
    {
      if (v10 == ++v12)
      {
        goto LABEL_51;
      }
    }

    v11 = *(a1 + v12 + 134);
  }

  while (v11);
  v13 = v12;
  v14 = a1 + 267;
  v15 = a1[v12 + 267];
  if (v15)
  {
    v16 = a1[v12 + 367];
    if (v16)
    {
      v17 = *v16;
      if (*v16)
      {
        v18 = a1[1];
        v19 = sub_240AE2040(v18, a2);
        if (!v19)
        {
LABEL_52:
          if (v18)
          {
            v42 = &qword_27E516570;
            while (1)
            {
              v42 = *v42;
              if (!v42)
              {
                break;
              }

              if (v42 == v18)
              {
                goto LABEL_59;
              }
            }

            v42 = &unk_278CB2F00;
          }

          else
          {
            v42 = &unk_278CB2F00;
          }

LABEL_59:
          v43 = v42[16];
          if (!v43)
          {
            v43 = &off_281500BF0;
          }

          v44 = v43[3];
          if (v44)
          {
            (v44)(v18, a1[468]);
          }

          return 0;
        }

        LODWORD(v20) = *(v19 + 1);
        if (v20)
        {
          v21 = (v19 + 8);
          v20 = v20 >= 0x14 ? 20 : v20;
          while (1)
          {
            v22 = *v21++;
            if (v22 == v17)
            {
              break;
            }

            if (!--v20)
            {
              goto LABEL_51;
            }
          }

          if (!*(a1 + v13 + 434))
          {
            if (v18)
            {
              v38 = &qword_27E516570;
              while (1)
              {
                v38 = *v38;
                if (!v38)
                {
                  break;
                }

                if (v38 == v18)
                {
                  goto LABEL_71;
                }
              }

              v38 = &unk_278CB2F00;
            }

            else
            {
              v38 = &unk_278CB2F00;
            }

LABEL_71:
            v52 = v38[16];
            if (!v52)
            {
              v52 = &off_281500BF0;
            }

            v53 = v52[3];
            if (v53)
            {
              v54 = a1[468];
              v55 = v18;
LABEL_75:
              (v53)(v55, v54);
              return v14[v13];
            }

            return v15;
          }
        }
      }
    }

LABEL_51:
    v18 = a1[1];
    goto LABEL_52;
  }

  v23 = a1 + 4 * v12;
  v24 = *(v23 + 936);
  v25 = v24 - 8;
  if (v24 < 8 || !(*(v6 + 288))(v6, *(v23 + 1336)))
  {
    goto LABEL_51;
  }

  v26 = a1[1];
  v27 = sub_240AE2040(v26, a2);
  if (!v27)
  {
    LODWORD(v63) = bswap32(a2);
    BYTE4(v63) = 0;
    v39 = "Unknown tag type '%s' found.";
    v40 = v26;
    v41 = 8;
LABEL_50:
    sub_240AC15A4(v40, v41, v39, v28, v29, v30, v31, v32, &v63);
    goto LABEL_51;
  }

  v33 = v27;
  v63 = 0;
  if ((*(v6 + 280))(v6, &v63, 8, 1) != 1)
  {
    goto LABEL_51;
  }

  if (!v63)
  {
    goto LABEL_51;
  }

  v34 = *(v33 + 1);
  if (!v34)
  {
    goto LABEL_51;
  }

  v35 = bswap32(v63);
  if (v34 >= 0x14)
  {
    v36 = 20;
  }

  else
  {
    v36 = v34;
  }

  v37 = 8;
  while (*&v33[v37] != v35)
  {
    v37 += 4;
    if (!--v36)
    {
      goto LABEL_51;
    }
  }

  v46 = v33;
  v18 = a1[1];
  v47 = sub_240AD5100(v18, v35);
  if (!v47)
  {
    goto LABEL_52;
  }

  v48 = *v47;
  v49 = *(v47 + 6);
  v50 = *(v47 + 2);
  v60 = *(v47 + 1);
  *&v61 = v50;
  v59 = v48;
  a1[v13 + 367] = v47;
  *(&v61 + 1) = v18;
  v62 = v49;
  LODWORD(v62) = *(a1 + 18);
  v51 = (*(&v59 + 1))(&v59, v6, &v58, v25);
  v14[v13] = v51;
  if (!v51)
  {
    LODWORD(v63) = bswap32(a2);
    BYTE4(v63) = 0;
    v40 = a1[1];
    v39 = "Corrupted tag '%s'";
    goto LABEL_77;
  }

  if (v58 < *v46)
  {
    LODWORD(v63) = bswap32(a2);
    BYTE4(v63) = 0;
    v40 = a1[1];
    v39 = "'%s' Inconsistent number of items: expected %d, got %d";
LABEL_77:
    v41 = 12;
    goto LABEL_50;
  }

  v15 = v51;
  v55 = a1[1];
  if (v55)
  {
    v56 = &qword_27E516570;
    while (1)
    {
      v56 = *v56;
      if (!v56)
      {
        break;
      }

      if (v56 == v55)
      {
        goto LABEL_85;
      }
    }

    v56 = &unk_278CB2F00;
  }

  else
  {
    v56 = &unk_278CB2F00;
  }

LABEL_85:
  v57 = v56[16];
  if (!v57)
  {
    v57 = &off_281500BF0;
  }

  v53 = v57[3];
  if (v53)
  {
    v54 = a1[468];
    goto LABEL_75;
  }

  return v15;
}