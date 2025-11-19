uint64_t WCDProtoUserInfoTransferReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t LZ4_compressBound(unsigned int a1)
{
  if (a1 <= 0x7E000000)
  {
    return a1 + a1 / 0xFF + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t LZ4_compress_fast_extState(void *a1, char *a2, _BYTE *a3, int a4, signed int a5, int a6)
{
  bzero(a1, 0x4020uLL);
  if (a6 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = a6;
  }

  v13 = a4 + a4 / 0xFFu + 16;
  if (a4 > 0x7E000000)
  {
    v13 = 0;
  }

  if (v13 <= a5)
  {
    if (a4 <= 65546)
    {
      LODWORD(v22) = 0;
      HIDWORD(v22) = v12;
      v14 = a1;
      v15 = a2;
      v16 = a3;
      v17 = a4;
      v18 = 0;
      v19 = 0;
      goto LABEL_11;
    }

    LODWORD(v22) = 0;
    HIDWORD(v22) = v12;
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = 0;
    v19 = 0;
LABEL_14:
    v20 = 1;
    return LZ4_compress_generic(v14, v15, v16, v17, v18, v19, v20, 0, v22, SHIDWORD(v22));
  }

  if (a4 > 65546)
  {
    LODWORD(v22) = 0;
    HIDWORD(v22) = v12;
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = 1;
    goto LABEL_14;
  }

  LODWORD(v22) = 0;
  HIDWORD(v22) = v12;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = 1;
LABEL_11:
  v20 = 2;
  return LZ4_compress_generic(v14, v15, v16, v17, v18, v19, v20, 0, v22, SHIDWORD(v22));
}

uint64_t LZ4_compress_fast()
{
  v0 = MEMORY[0x28223BE20]();
  memset(v6, 0, 512);
  return LZ4_compress_fast_extState(v6, v0, v1, v2, v3, v4);
}

uint64_t LZ4_compress_default(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  memset(v8, 0, 512);
  return LZ4_compress_fast_extState(v8, v3, v4, v5, v6, 1);
}

uint64_t LZ4_compress_destSize()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(v14, 0x4020uLL);
  v8 = *v4;
  v9 = v8 + v8 / 0xFFu + 16;
  if (*v4 > 0x7E000000)
  {
    v9 = 0;
  }

  if (v9 <= v2)
  {
    return LZ4_compress_fast_extState(v14, v7, v6, v8, v2, 1);
  }

  if (v8 > 65546)
  {
    v10 = v4;
    v11 = v2;
    v12 = 1;
  }

  else
  {
    v10 = v4;
    v11 = v2;
    v12 = 2;
  }

  return LZ4_compress_destSize_generic(v14, v7, v6, v10, v11, v12);
}

void *LZ4_createStream()
{
  v0 = malloc_type_calloc(8uLL, 0x804uLL, 0x100004096A2D182uLL);
  bzero(v0, 0x4020uLL);
  return v0;
}

uint64_t LZ4_loadDict(char *a1, char *a2, int a3)
{
  v6 = a1 + 0x4000;
  if (*(a1 + 2048) >= 0x40000001uLL)
  {
    bzero(a1, 0x4020uLL);
  }

  if (a3 > 7)
  {
    v8 = &a2[a3];
    v9 = v8 - 0x10000;
    if (a3 <= 0x10000)
    {
      v9 = a2;
    }

    v10 = *v6 + 0x10000;
    *(a1 + 2049) = v9;
    result = (v8 - v9);
    v6[6] = result;
    *v6 = v10 + result;
    for (i = (v8 - 8); v9 <= i; v10 += 3)
    {
      v12 = *v9;
      v9 += 3;
      *&a1[4 * (((0xCF1BBCDCBBLL * v12) >> 28) & 0xFFF)] = v10;
    }
  }

  else
  {
    result = 0;
    *(a1 + 2049) = 0;
    v6[6] = 0;
  }

  return result;
}

uint64_t LZ4_compress_fast_continue(uint64_t a1, char *__src, _BYTE *a3, signed int a4, unsigned int a5, int a6)
{
  v6 = (a1 + 0x4000);
  if (*(a1 + 16388))
  {
    return 0;
  }

  v11 = *(a1 + 16392);
  v12 = *(a1 + 16408);
  v13 = &v11[v12];
  if (&v11[v12] >= __src || v12 == 0)
  {
    v15 = __src;
  }

  else
  {
    v15 = &v11[v12];
  }

  v16 = *v6;
  if (v16 > 0x80000000 || v16 > v15)
  {
    v18 = 0;
    v19 = vdupq_n_s32(v16 - 0x10000);
    do
    {
      *(a1 + v18) = vqsubq_u32(*(a1 + v18), v19);
      v18 += 16;
    }

    while (v18 != 0x4000);
    *v6 = 0x10000;
    LODWORD(v12) = *(a1 + 16408);
    if (v12 > 0x10000)
    {
      *(a1 + 16408) = 0x10000;
      LODWORD(v12) = 0x10000;
    }

    v11 = &v13[-v12];
    *(a1 + 16392) = v11;
    LODWORD(v16) = 0x10000;
  }

  if (a6 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = a6;
  }

  v21 = &__src[a4];
  if (v21 > v11 && v21 < v13)
  {
    if ((v13 - v21) >= 0x10000)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = v13 - v21;
    }

    if ((v13 - v21) >= 4)
    {
      v12 = v22;
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 16408) = v12;
    *(a1 + 16392) = &v13[-v12];
  }

  v24 = v12 < 0x10000 && v12 < v16;
  if (v13 == __src)
  {
    result = LZ4_compress_generic(a1, __src, a3, a4, a5, 1, 1, 1, v24, v20);
    v25 = v6[6] + a4;
  }

  else
  {
    result = LZ4_compress_generic(a1, __src, a3, a4, a5, 1, 1, 2, v24, v20);
    *(a1 + 16392) = __src;
    v25 = a4;
  }

  v6[6] = v25;
  *v6 += a4;
  return result;
}

size_t LZ4_saveDict(uint64_t a1, void *__dst, unsigned int a3)
{
  v5 = *(a1 + 16408);
  if (a3 >= v5)
  {
    v6 = *(a1 + 16408);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0x10000)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = v6;
  }

  memmove(__dst, (*(a1 + 16392) + v5 - v7), v7);
  *(a1 + 16392) = __dst;
  *(a1 + 16408) = v7;
  return v7;
}

uint64_t LZ4_decompress_safe(unsigned __int8 *a1, char *__dst, int a3, int a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = xmmword_23B326D60;
  v42 = 3;
  if (a4)
  {
    v5 = &a1[a3];
    v6 = &__dst[a4];
    v7 = v6 - 12;
    v8 = v6 - 8;
    v9 = __dst;
    v10 = a1;
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v12 >> 4;
      if (v13 == 15)
      {
        v13 = 15;
        do
        {
          v15 = *v10++;
          v14 = v15;
          v13 += v15;
        }

        while (v10 < v5 - 15 && v14 == 255);
        if ((v13 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      v16 = &v9[v13];
      v17 = &v10[v13];
      if (&v9[v13] > v7 || v17 > v5 - 4)
      {
        if (v17 == v5 && v16 <= v6)
        {
          memcpy(v9, v10, v13);
          result = (v16 - __dst);
          goto LABEL_39;
        }

        break;
      }

      do
      {
        v19 = *v10;
        v10 += 8;
        *v9 = v19;
        v9 += 8;
      }

      while (v9 < v16);
      v20 = &v16[-*v17];
      v10 = (v17 + 1);
      if (v20 < __dst)
      {
        break;
      }

      v21 = v11 & 0xF;
      if ((v11 & 0xF) == 0xF)
      {
        v21 = 15;
        while (v10 <= v5 - 5)
        {
          v22 = *v10++;
          v21 += v22;
          if (v22 != 255)
          {
            if (v21 < 0)
            {
              goto LABEL_38;
            }

            goto LABEL_19;
          }
        }

        break;
      }

LABEL_19:
      v23 = *v17;
      if (v23 <= 7)
      {
        v28 = *(&v37 + v23);
        *v16 = *v20;
        v16[1] = v20[1];
        v16[2] = v20[2];
        v16[3] = v20[3];
        v29 = &v20[qword_23B326D70[v23]];
        *(v16 + 1) = *v29;
        v24 = &v29[-v28];
      }

      else
      {
        v25 = *v20;
        v24 = v20 + 8;
        *v16 = v25;
      }

      v9 = &v16[v21 + 4];
      v26 = v16 + 8;
      if (v9 > v7)
      {
        if (v9 > v6 - 5)
        {
          break;
        }

        if (v26 < v8)
        {
          v30 = v24;
          v31 = v16 + 8;
          do
          {
            v32 = *v30++;
            *v31 = v32;
            v31 += 8;
          }

          while (v31 < v8);
          v24 += v8 - v26;
          v26 = v6 - 8;
        }

        while (v26 < v9)
        {
          v33 = *v24++;
          *v26++ = v33;
        }
      }

      else
      {
        do
        {
          v27 = *v24;
          v24 += 8;
          *v26 = v27;
          v26 += 8;
        }

        while (v26 < v9);
      }
    }

LABEL_38:
    result = (~v10 + a1);
  }

  else if (a3 == 1)
  {
    if (*a1)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_39:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_decompress_safe_partial(unsigned __int8 *a1, char *__dst, int a3, int a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = &__dst[a5];
  v38 = 0u;
  v39 = 0;
  v40 = -1;
  v41 = 0;
  v42 = xmmword_23B326D60;
  v43 = 3;
  if (&__dst[a4] <= v5 - 12)
  {
    v6 = &__dst[a4];
  }

  else
  {
    v6 = v5 - 12;
  }

  if (a5)
  {
    v8 = &a1[a3];
    v9 = v5 - 8;
    v10 = __dst;
    v11 = a1;
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v13 >> 4;
      if (v14 == 15)
      {
        v14 = 15;
        do
        {
          v16 = *v11++;
          v15 = v16;
          v14 += v16;
        }

        while (v11 < v8 - 15 && v15 == 255);
        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      v17 = &v10[v14];
      v18 = &v11[v14];
      if (&v10[v14] > v6 || v18 > v8 - 8)
      {
        if (v17 <= v5 && v18 <= v8)
        {
          memcpy(v10, v11, v14);
          result = (v17 - __dst);
          goto LABEL_42;
        }

        break;
      }

      do
      {
        v20 = *v11;
        v11 += 8;
        *v10 = v20;
        v10 += 8;
      }

      while (v10 < v17);
      v21 = &v17[-*v18];
      v11 = v18 + 2;
      if (v21 < __dst)
      {
        break;
      }

      v22 = v12 & 0xF;
      if ((v12 & 0xF) == 0xF)
      {
        v22 = 15;
        while (v11 <= v8 - 5)
        {
          v23 = *v11++;
          v22 += v23;
          if (v23 != 255)
          {
            if (v22 < 0)
            {
              goto LABEL_41;
            }

            goto LABEL_22;
          }
        }

        break;
      }

LABEL_22:
      v24 = *v18;
      if (v24 <= 7)
      {
        v29 = *(&v38 + v24);
        *v17 = *v21;
        v17[1] = v21[1];
        v17[2] = v21[2];
        v17[3] = v21[3];
        v30 = &v21[qword_23B326D70[v24]];
        *(v17 + 1) = *v30;
        v25 = &v30[-v29];
      }

      else
      {
        v26 = *v21;
        v25 = v21 + 8;
        *v17 = v26;
      }

      v10 = &v17[v22 + 4];
      v27 = v17 + 8;
      if (v10 > v5 - 12)
      {
        if (v10 > v5 - 5)
        {
          break;
        }

        if (v27 < v9)
        {
          v31 = v25;
          v32 = v17 + 8;
          do
          {
            v33 = *v31++;
            *v32 = v33;
            v32 += 8;
          }

          while (v32 < v9);
          v25 += v9 - v27;
          v27 = v5 - 8;
        }

        while (v27 < v10)
        {
          v34 = *v25++;
          *v27++ = v34;
        }
      }

      else
      {
        do
        {
          v28 = *v25;
          v25 += 8;
          *v27 = v28;
          v27 += 8;
        }

        while (v27 < v10);
      }
    }

LABEL_41:
    result = (~v11 + a1);
  }

  else if (a3 == 1)
  {
    if (*a1)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_42:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_decompress_fast(unsigned __int8 *__src, char *__dst, int a3)
{
  v3 = __src;
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0;
  v34 = -1;
  v35 = 0;
  v36 = xmmword_23B326D60;
  v37 = 3;
  if (a3)
  {
    v4 = &__dst[a3];
    v5 = v4 - 8;
    v6 = __src;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 >> 4;
      if (v9 == 15)
      {
        v9 = 15;
        do
        {
          v10 = *v6++;
          v9 += v10;
        }

        while (v10 == 255);
      }

      v11 = &__dst[v9];
      if (&__dst[v9] > v5)
      {
        break;
      }

      v12 = v6;
      do
      {
        v13 = *v12++;
        *__dst = v13;
        __dst += 8;
      }

      while (__dst < v11);
      v14 = &v6[v9];
      v16 = *v14;
      v6 = v14 + 2;
      v15 = v16;
      v17 = v7 & 0xF;
      if ((v7 & 0xF) == 0xF)
      {
        v17 = 15;
        do
        {
          v18 = *v6++;
          v17 += v18;
        }

        while (v18 == 255);
      }

      v19 = &v11[-v15];
      if (v15 <= 7)
      {
        v24 = *(&v32 + v15);
        *v11 = *v19;
        v11[1] = v19[1];
        v11[2] = v19[2];
        v11[3] = v19[3];
        v25 = &v19[qword_23B326D70[v15]];
        *(v11 + 1) = *v25;
        v20 = &v25[-v24];
      }

      else
      {
        v21 = *v19;
        v20 = v19 + 8;
        *v11 = v21;
      }

      __dst = &v11[v17 + 4];
      v22 = v11 + 8;
      if (__dst > v4 - 12)
      {
        if (__dst > v4 - 5)
        {
          goto LABEL_27;
        }

        if (v22 < v5)
        {
          v26 = v20;
          v27 = v22;
          do
          {
            v28 = *v26++;
            *v27 = v28;
            v27 += 8;
          }

          while (v27 < v5);
          v20 += v5 - v22;
          v22 = v4 - 8;
        }

        while (v22 < __dst)
        {
          v29 = *v20++;
          *v22++ = v29;
        }
      }

      else
      {
        do
        {
          v23 = *v20;
          v20 += 8;
          *v22 = v23;
          v22 += 8;
        }

        while (v22 < __dst);
      }
    }

    if (v11 != v4)
    {
LABEL_27:
      result = (~v6 + v3);
      goto LABEL_29;
    }

    memcpy(__dst, v6, v9);
    result = (v6 + v9 - v3);
  }

  else if (*__src)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

LABEL_29:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_setStreamDecode(void *a1, uint64_t a2, int a3)
{
  a1[2] = a2 + a3;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t LZ4_decompress_safe_continue(void *a1, char *__src, char *__dst, int a4, int a5)
{
  v5 = __dst;
  v121 = *MEMORY[0x277D85DE8];
  v6 = a1[2];
  v7 = a1[3];
  v8 = &__src[a4];
  v9 = &__dst[a5];
  v113 = __src;
  v99 = v8;
  v100 = v9;
  if (v6 != __dst)
  {
    *a1 = &v6[-v7];
    a1[1] = v7;
    v115 = 0u;
    v116 = 0;
    v117 = -1;
    v118 = 0;
    v119 = xmmword_23B326D60;
    v120 = 3;
    if (a5)
    {
      v10 = &__dst[-v7];
      v11 = v9 - 12;
      v12 = v8 - 15;
      v13 = v8 - 8;
      v14 = v9 - 8;
      v15 = v8 - 5;
      v109 = v7;
      v111 = v9 - 5;
      v16 = __dst;
      v17 = __src;
      v105 = v9 - 12;
      v107 = &__dst[-v7];
      v101 = v9 - 8;
      v103 = v8 - 8;
      while (1)
      {
        while (1)
        {
          v19 = *v17++;
          v18 = v19;
          v20 = v19 >> 4;
          if (v20 == 15)
          {
            v20 = 15;
            do
            {
              v22 = *v17++;
              v21 = v22;
              v20 += v22;
            }

            while (v17 < v12 && v21 == 255);
            if ((v20 & 0x8000000000000000) != 0)
            {
LABEL_95:
              result = (~v17 + v113);
LABEL_96:
              v92 = a1;
              if (result >= 1)
              {
                a1[3] = result;
                v93 = &v5[result];
                goto LABEL_106;
              }

              goto LABEL_107;
            }
          }

          v23 = &v16[v20];
          v24 = &v17[v20];
          if (&v16[v20] > v11 || v24 > v13)
          {
            if (v24 == v99 && v23 <= v100)
            {
              memcpy(v16, v17, v20);
              result = (v23 - v5);
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          do
          {
            v26 = *v17;
            v17 += 8;
            *v16 = v26;
            v16 += 8;
          }

          while (v16 < v23);
          v27 = &v23[-*v24];
          v17 = (v24 + 1);
          if (!(v7 >> 16) && v27 < v10)
          {
            goto LABEL_95;
          }

          v28 = v18 & 0xF;
          if (v28 == 15)
          {
            v28 = 15;
            while (v17 <= v15)
            {
              v29 = *v17++;
              v28 += v29;
              if (v29 != 255)
              {
                if (v28 < 0)
                {
                  goto LABEL_95;
                }

                goto LABEL_21;
              }
            }

            goto LABEL_95;
          }

LABEL_21:
          v30 = v28 + 4;
          v31 = &v23[v28 + 4];
          if (v27 >= v5)
          {
            break;
          }

          if (v31 > v111)
          {
            goto LABEL_95;
          }

          v32 = v5 - v27;
          v33 = v6;
          v34 = &v6[-(v5 - v27)];
          v35 = v30 - (v5 - v27);
          if (v30 <= v5 - v27)
          {
            memmove(v23, v34, v30);
            goto LABEL_36;
          }

          memcpy(v23, v34, v5 - v27);
          v16 = &v23[v32];
          if (v35 <= &v23[v32] - v5)
          {
            memcpy(v16, v5, v35);
LABEL_36:
            v16 = v31;
            v6 = v33;
            v10 = v107;
            v7 = v109;
            v13 = v103;
            v11 = v105;
            v14 = v101;
          }

          else
          {
            v6 = v33;
            v10 = v107;
            v7 = v109;
            v13 = v103;
            v11 = v105;
            v14 = v101;
            if (v30 > v32)
            {
              v36 = v5;
              do
              {
                v37 = *v36++;
                *v16++ = v37;
              }

              while (v16 < v31);
            }
          }
        }

        v38 = *v24;
        if (v38 <= 7)
        {
          v43 = *(&v115 + v38);
          *v23 = *v27;
          v23[1] = v27[1];
          v23[2] = v27[2];
          v23[3] = v27[3];
          v44 = &v27[qword_23B326D70[v38]];
          *(v23 + 1) = *v44;
          v39 = &v44[-v43];
        }

        else
        {
          v40 = *v27;
          v39 = v27 + 8;
          *v23 = v40;
        }

        v41 = v23 + 8;
        if (v31 <= v11)
        {
          break;
        }

        if (v31 > v111)
        {
          goto LABEL_95;
        }

        if (v41 < v14)
        {
          v45 = v39;
          v46 = v23 + 8;
          do
          {
            v47 = *v45++;
            *v46 = v47;
            v46 += 8;
          }

          while (v46 < v14);
          v39 += v14 - v41;
          v41 = v14;
        }

        v16 = v31;
        if (v41 < v31)
        {
          do
          {
            v48 = *v39++;
            *v41 = v48;
            v41 = (v41 + 1);
          }

          while (v41 < v31);
LABEL_33:
          v16 = v31;
        }
      }

      do
      {
        v42 = *v39;
        v39 += 8;
        *v41++ = v42;
      }

      while (v41 < v31);
      goto LABEL_33;
    }

LABEL_108:
    if (a4 == 1)
    {
      if (*__src)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    goto LABEL_107;
  }

  v50 = *a1;
  v49 = a1[1];
  v115 = 0u;
  v116 = 0;
  v117 = -1;
  v118 = 0;
  v119 = xmmword_23B326D60;
  v120 = 3;
  if (!a5)
  {
    goto LABEL_108;
  }

  v51 = &v6[-v7];
  v52 = &v51[-v49];
  v110 = v50 + v49;
  v53 = v9 - 12;
  v54 = v8 - 15;
  v55 = v8 - 8;
  v56 = v9 - 8;
  v57 = v8 - 5;
  v112 = v9 - 5;
  v58 = v49 >> 16;
  v59 = __dst;
  v60 = __src;
  v98 = __dst;
  v106 = v8 - 8;
  v108 = v9 - 12;
  v102 = v49 >> 16;
  v104 = v9 - 8;
  while (1)
  {
    v62 = *v60++;
    v61 = v62;
    v63 = v62 >> 4;
    if (v63 == 15)
    {
      v63 = 15;
      do
      {
        v65 = *v60++;
        v64 = v65;
        v63 += v65;
      }

      while (v60 < v54 && v64 == 255);
      if ((v63 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    v66 = &v59[v63];
    v67 = &v60[v63];
    if (&v59[v63] > v53 || v67 > v55)
    {
      if (v67 == v99 && v66 <= v100)
      {
        memcpy(v59, v60, v63);
        result = (v66 - v5);
        goto LABEL_104;
      }

      break;
    }

    do
    {
      v69 = *v60;
      v60 += 8;
      *v59 = v69;
      v59 += 8;
    }

    while (v59 < v66);
    v70 = &v66[-*v67];
    v60 = (v67 + 1);
    if (!v58 && v70 < v52)
    {
      break;
    }

    v71 = v61 & 0xF;
    if (v71 == 15)
    {
      v71 = 15;
      while (v60 <= v57)
      {
        v72 = *v60++;
        v71 += v72;
        if (v72 != 255)
        {
          if (v71 < 0)
          {
            goto LABEL_103;
          }

          goto LABEL_65;
        }
      }

      break;
    }

LABEL_65:
    v73 = v71 + 4;
    v74 = &v66[v71 + 4];
    if (v70 >= v51)
    {
      v80 = *v67;
      if (v80 <= 7)
      {
        v85 = *(&v115 + v80);
        *v66 = *v70;
        v66[1] = v70[1];
        v66[2] = v70[2];
        v66[3] = v70[3];
        v86 = &v70[qword_23B326D70[v80]];
        *(v66 + 1) = *v86;
        v81 = &v86[-v85];
      }

      else
      {
        v82 = *v70;
        v81 = v70 + 8;
        *v66 = v82;
      }

      v83 = v66 + 8;
      if (v74 <= v53)
      {
        do
        {
          v84 = *v81;
          v81 += 8;
          *v83++ = v84;
        }

        while (v83 < v74);
        goto LABEL_77;
      }

      if (v74 > v112)
      {
        break;
      }

      if (v83 < v56)
      {
        v87 = v81;
        v88 = v66 + 8;
        do
        {
          v89 = *v87++;
          *v88 = v89;
          v88 += 8;
        }

        while (v88 < v56);
        v81 += v56 - v83;
        v83 = v56;
      }

      v59 = v74;
      if (v83 < v74)
      {
        do
        {
          v90 = *v81++;
          *v83 = v90;
          v83 = (v83 + 1);
        }

        while (v83 < v74);
LABEL_77:
        v59 = v74;
      }
    }

    else
    {
      if (v74 > v112)
      {
        break;
      }

      v75 = v51 - v70;
      v76 = (v110 - (v51 - v70));
      v77 = v51;
      if (v73 <= v51 - v70)
      {
        memmove(v66, v76, v73);
        v59 = v74;
        v51 = v77;
        goto LABEL_80;
      }

      memcpy(v66, v76, v75);
      v59 = &v66[v75];
      v51 = v77;
      if (v73 - v75 <= &v66[v75] - v77)
      {
        memcpy(v59, v77, v73 - v75);
        v51 = v77;
        v59 = v74;
LABEL_80:
        LODWORD(v5) = v98;
        v55 = v106;
        v53 = v108;
        v58 = v102;
        v56 = v104;
      }

      else
      {
        LODWORD(v5) = v98;
        v55 = v106;
        v53 = v108;
        v58 = v102;
        v56 = v104;
        if (v73 > v75)
        {
          v78 = v51;
          do
          {
            v79 = *v78++;
            *v59++ = v79;
          }

          while (v59 < v74);
        }
      }
    }
  }

LABEL_103:
  result = (~v60 + v113);
LABEL_104:
  v92 = a1;
  if (result >= 1)
  {
    v95 = a1[2];
    a1[3] += result;
    v93 = (v95 + result);
LABEL_106:
    v92[2] = v93;
  }

LABEL_107:
  v96 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_decompress_fast_continue(void *a1, unsigned __int8 *__src, char *__dst, int a4)
{
  v4 = __dst;
  v5 = a1;
  v94 = *MEMORY[0x277D85DE8];
  v7 = a1[2];
  v6 = a1[3];
  v8 = &__dst[a4];
  v84 = __src;
  v82 = a4;
  v83 = v8;
  if (v7 != __dst)
  {
    *a1 = &__dst[-v6];
    a1[1] = v6;
    v88 = 0u;
    v89 = 0;
    v90 = -1;
    v91 = 0;
    v92 = xmmword_23B326D60;
    v93 = 3;
    if (a4)
    {
      v9 = v8 - 12;
      v10 = v8 - 8;
      v11 = &__dst[a4 - 5];
      v12 = __dst;
      v13 = __src;
      while (1)
      {
        while (1)
        {
          v15 = *v13++;
          v14 = v15;
          v16 = v15 >> 4;
          if (v16 == 15)
          {
            v16 = 15;
            do
            {
              v17 = *v13++;
              v16 += v17;
            }

            while (v17 == 255);
          }

          v18 = &v12[v16];
          if (&v12[v16] > v10)
          {
            v8 = v83;
            if (v18 != v83)
            {
              v5 = a1;
LABEL_40:
              result = (~v13 + v84);
              goto LABEL_80;
            }

            memcpy(v12, v13, v16);
            v5 = a1;
            result = (v13 + v16 - v84);
LABEL_80:
            if (result >= 1)
            {
LABEL_81:
              v5[3] = v82;
              goto LABEL_86;
            }

            goto LABEL_87;
          }

          v19 = v13;
          do
          {
            v20 = *v19++;
            *v12 = v20;
            v12 += 8;
          }

          while (v12 < v18);
          v21 = &v13[v16];
          v23 = *v21;
          v13 = v21 + 2;
          v22 = v23;
          v24 = v14 & 0xF;
          if (v24 == 15)
          {
            v24 = 15;
            do
            {
              v25 = *v13++;
              v24 += v25;
            }

            while (v25 == 255);
          }

          v26 = &v18[-v22];
          v27 = v24 + 4;
          v28 = &v18[v24 + 4];
          if (&v18[-v22] >= v4)
          {
            break;
          }

          if (v28 > v11)
          {
            goto LABEL_88;
          }

          v29 = v4 - v26;
          v30 = v27 - (v4 - v26);
          if (v27 <= (v4 - v26))
          {
            memmove(v18, v26, v24 + 4);
            goto LABEL_28;
          }

          memcpy(v18, v26, v4 - v26);
          v12 = &v18[v29];
          if (v30 <= &v18[v29] - v4)
          {
            memcpy(v12, v4, v30);
            goto LABEL_28;
          }

          if (v27 > v29)
          {
            v31 = v4;
            do
            {
              v32 = *v31++;
              *v12++ = v32;
            }

            while (v12 < v28);
          }
        }

        v33 = v22;
        if (v22 <= 7)
        {
          v38 = *(&v88 + v22);
          *v18 = *v26;
          v18[1] = v26[1];
          v18[2] = v26[2];
          v18[3] = v26[3];
          v39 = &v26[qword_23B326D70[v33]];
          *(v18 + 1) = *v39;
          v34 = &v39[-v38];
        }

        else
        {
          v35 = *v26;
          v34 = v26 + 8;
          *v18 = v35;
        }

        v36 = v18 + 8;
        if (v28 <= v9)
        {
          break;
        }

        if (v28 > v11)
        {
LABEL_88:
          v5 = a1;
          v8 = v83;
          goto LABEL_40;
        }

        if (v36 < v10)
        {
          v40 = v34;
          v41 = v18 + 8;
          do
          {
            v42 = *v40++;
            *v41 = v42;
            v41 += 8;
          }

          while (v41 < v10);
          v34 += v10 - v36;
          v36 = v10;
        }

        v12 = v28;
        if (v36 < v28)
        {
          do
          {
            v43 = *v34++;
            *v36 = v43;
            v36 = (v36 + 1);
          }

          while (v36 < v28);
LABEL_28:
          v12 = v28;
        }
      }

      do
      {
        v37 = *v34;
        v34 += 8;
        *v36++ = v37;
      }

      while (v36 < v28);
      goto LABEL_28;
    }

    if (!*__src)
    {
      result = 1;
      goto LABEL_81;
    }

LABEL_92:
    result = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  v45 = *a1;
  v46 = a1[1];
  v88 = 0u;
  v89 = 0;
  v90 = -1;
  v91 = 0;
  v92 = xmmword_23B326D60;
  v93 = 3;
  if (!a4)
  {
    if (!*__src)
    {
      result = 1;
      goto LABEL_85;
    }

    goto LABEL_92;
  }

  v47 = &v7[-v6];
  v86 = v45 + v46;
  v87 = v8 - 12;
  v48 = v8 - 8;
  v49 = v8 - 5;
  v50 = __src;
  while (1)
  {
    v52 = *v50++;
    v51 = v52;
    v53 = v52 >> 4;
    if (v53 == 15)
    {
      v53 = 15;
      do
      {
        v54 = *v50++;
        v53 += v54;
      }

      while (v54 == 255);
    }

    v55 = &v4[v53];
    if (&v4[v53] > v48)
    {
      break;
    }

    v56 = v50;
    do
    {
      v57 = *v56++;
      *v4 = v57;
      v4 += 8;
    }

    while (v4 < v55);
    v58 = &v50[v53];
    v60 = *v58;
    v50 = v58 + 2;
    v59 = v60;
    v61 = v51 & 0xF;
    if ((v51 & 0xF) == 0xF)
    {
      v61 = 15;
      do
      {
        v62 = *v50++;
        v61 += v62;
      }

      while (v62 == 255);
    }

    v63 = &v55[-v59];
    v64 = v61 + 4;
    v65 = &v55[v61 + 4];
    if (&v55[-v59] >= v47)
    {
      if (v59 <= 7)
      {
        v75 = *(&v88 + v59);
        *v55 = *v63;
        v55[1] = v63[1];
        v55[2] = v63[2];
        v55[3] = v63[3];
        v76 = &v63[qword_23B326D70[v59]];
        *(v55 + 1) = *v76;
        v71 = &v76[-v75];
      }

      else
      {
        v72 = *v63;
        v71 = v63 + 8;
        *v55 = v72;
      }

      v73 = v55 + 8;
      if (v65 <= v87)
      {
        do
        {
          v74 = *v71;
          v71 += 8;
          *v73++ = v74;
        }

        while (v73 < v65);
        goto LABEL_67;
      }

      if (v65 > v49)
      {
        goto LABEL_78;
      }

      if (v73 < v48)
      {
        v77 = v71;
        v78 = v55 + 8;
        do
        {
          v79 = *v77++;
          *v78 = v79;
          v78 += 8;
        }

        while (v78 < v48);
        v71 += v48 - v73;
        v73 = v48;
      }

      v4 = v65;
      if (v73 < v65)
      {
        do
        {
          v80 = *v71++;
          *v73 = v80;
          v73 = (v73 + 1);
        }

        while (v73 < v65);
LABEL_67:
        v4 = v65;
      }
    }

    else
    {
      if (v65 > v49)
      {
        goto LABEL_78;
      }

      v66 = v47 - v63;
      v67 = (v86 - (v47 - v63));
      v68 = v64 - (v47 - v63);
      if (v64 <= (v47 - v63))
      {
        memmove(v55, v67, v61 + 4);
        goto LABEL_67;
      }

      memcpy(v55, v67, v66);
      v4 = &v55[v66];
      if (v68 <= &v55[v66] - v47)
      {
        memcpy(&v55[v66], v47, v64 - v66);
        goto LABEL_67;
      }

      if (v64 > v66)
      {
        v69 = v47;
        do
        {
          v70 = *v69++;
          *v4++ = v70;
        }

        while (v4 < v65);
      }
    }
  }

  if (v55 != v83)
  {
LABEL_78:
    v5 = a1;
    result = (~v50 + v84);
    goto LABEL_83;
  }

  memcpy(v4, v50, v53);
  v5 = a1;
  result = (v50 + v53 - v84);
LABEL_83:
  if (result < 1)
  {
    goto LABEL_87;
  }

  v7 = v5[2];
  v6 = v5[3];
LABEL_85:
  v5[3] = v6 + v82;
  v8 = &v7[v82];
LABEL_86:
  v5[2] = v8;
LABEL_87:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_decompress_safe_usingDict(unsigned __int8 *__src, char *__dst, int a3, int a4, uint64_t a5, int a6)
{
  v7 = __src;
  v157 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v151 = 0u;
    v152 = 0;
    v153 = -1;
    v154 = 0;
    v155 = xmmword_23B326D60;
    v156 = 3;
    if (!a4)
    {
      goto LABEL_165;
    }

    v49 = &__src[a3];
    v50 = &__dst[a4];
    v51 = v50 - 12;
    v52 = v50 - 8;
    v53 = __dst;
    v54 = v7;
    while (1)
    {
      v56 = *v54++;
      v55 = v56;
      v57 = v56 >> 4;
      if (v57 == 15)
      {
        v57 = 15;
        do
        {
          v59 = *v54++;
          v58 = v59;
          v57 += v59;
        }

        while (v54 < v49 - 15 && v58 == 255);
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }
      }

      v60 = &v53[v57];
      v61 = &v54[v57];
      if (&v53[v57] > v51 || v61 > v49 - 4)
      {
        break;
      }

      do
      {
        v63 = *v54;
        v54 += 8;
        *v53 = v63;
        v53 += 8;
      }

      while (v53 < v60);
      v64 = &v60[-*v61];
      v54 = (v61 + 1);
      if (v64 < __dst)
      {
        goto LABEL_163;
      }

      v65 = v55 & 0xF;
      if ((v55 & 0xF) == 0xF)
      {
        v65 = 15;
        do
        {
          if (v54 > v49 - 5)
          {
            goto LABEL_163;
          }

          v66 = *v54++;
          v65 += v66;
        }

        while (v66 == 255);
        if (v65 < 0)
        {
          goto LABEL_163;
        }
      }

      v67 = *v61;
      if (v67 <= 7)
      {
        v72 = *(&v151 + v67);
        *v60 = *v64;
        v60[1] = v64[1];
        v60[2] = v64[2];
        v60[3] = v64[3];
        v73 = &v64[qword_23B326D70[v67]];
        *(v60 + 1) = *v73;
        v68 = &v73[-v72];
      }

      else
      {
        v69 = *v64;
        v68 = v64 + 8;
        *v60 = v69;
      }

      v53 = &v60[v65 + 4];
      v70 = v60 + 8;
      if (v53 > v51)
      {
        if (v53 > v50 - 5)
        {
          goto LABEL_163;
        }

        if (v70 < v52)
        {
          v74 = v68;
          v75 = v60 + 8;
          do
          {
            v76 = *v74++;
            *v75 = v76;
            v75 += 8;
          }

          while (v75 < v52);
          v68 += v52 - v70;
          v70 = v50 - 8;
        }

        while (v70 < v53)
        {
          v77 = *v68++;
          *v70++ = v77;
        }
      }

      else
      {
        do
        {
          v71 = *v68;
          v68 += 8;
          *v70 = v71;
          v70 += 8;
        }

        while (v70 < v53);
      }
    }

    v137 = v61 == v49;
    goto LABEL_158;
  }

  v8 = (a5 + a6);
  if (v8 == __dst)
  {
    if (a6 >= 0xFFFF)
    {
      v151 = 0uLL;
      v152 = 0;
      v153 = -1;
      v154 = 0;
      v155 = xmmword_23B326D60;
      v156 = 3;
      if (!a4)
      {
        goto LABEL_165;
      }

      v78 = 0;
      v79 = &__src[a3];
      v80 = &__dst[a4];
      v81 = a4;
      v82 = v80 - 12;
      v83 = v80 - 8;
      v84 = v80 - 5;
      v54 = __src;
      while (1)
      {
        v86 = *v54++;
        v85 = v86;
        v87 = v86 >> 4;
        if (v87 == 15)
        {
          v87 = 15;
          do
          {
            v89 = *v54++;
            v88 = v89;
            v87 += v89;
          }

          while (v54 < v79 - 15 && v88 == 255);
          if ((v87 & 0x8000000000000000) != 0)
          {
            goto LABEL_163;
          }
        }

        v90 = &__dst[v78];
        v91 = v87 + v78;
        v92 = &__dst[v87 + v78];
        v93 = &v54[v87];
        if (v92 > v82 || v93 > v79 - 4)
        {
          break;
        }

        do
        {
          v95 = *v54;
          v54 += 8;
          *v90 = v95;
          v90 += 8;
        }

        while (v90 < v92);
        v96 = *v93;
        v54 = (v93 + 1);
        if (v91 - v96 < -65536)
        {
          goto LABEL_163;
        }

        v97 = v85 & 0xF;
        if ((v85 & 0xF) == 0xF)
        {
          v97 = 15;
          do
          {
            if (v54 > v79 - 5)
            {
              goto LABEL_163;
            }

            v98 = *v54++;
            v97 += v98;
          }

          while (v98 == 255);
          if (v97 < 0)
          {
            goto LABEL_163;
          }
        }

        v99 = &__dst[v91 - v96];
        if (v96 <= 7)
        {
          v105 = *(&v151 + v96);
          *v92 = *v99;
          v92[1] = v99[1];
          v92[2] = v99[2];
          v92[3] = v99[3];
          v106 = &v99[qword_23B326D70[v96]];
          *(v92 + 1) = *v106;
          v100 = &v106[-v105];
        }

        else
        {
          v101 = *v99;
          v100 = v99 + 8;
          *v92 = v101;
        }

        v78 = v91 + v97 + 4;
        v102 = &__dst[v78];
        v103 = v92 + 8;
        if (&__dst[v78] > v82)
        {
          if (v102 > v84)
          {
            goto LABEL_163;
          }

          if (v103 < v83)
          {
            v107 = v100;
            v108 = v103;
            do
            {
              v109 = *v107;
              v107 += 8;
              *v108 = v109;
              v108 += 8;
            }

            while (v108 < v83);
            v100 += v83 - v103;
            v103 = v83;
          }

          while (v103 < v102)
          {
            v110 = *v100++;
            *v103 = v110;
            v103 = (v103 + 1);
          }
        }

        else
        {
          do
          {
            v104 = *v100;
            v100 += 8;
            *v103++ = v104;
          }

          while (v103 < v102);
        }
      }

      if (v91 <= v81 && v93 == v79)
      {
        memcpy(v90, v54, v87);
        goto LABEL_164;
      }

LABEL_163:
      v91 = (~v54 + v7);
      goto LABEL_164;
    }

    v151 = 0uLL;
    v152 = 0;
    v153 = -1;
    v154 = 0;
    v155 = xmmword_23B326D60;
    v156 = 3;
    if (!a4)
    {
      goto LABEL_165;
    }

    v111 = &__src[a3];
    v50 = &__dst[a4];
    v112 = &__dst[-a6];
    v113 = v50 - 12;
    v114 = v50 - 8;
    v53 = __dst;
    v54 = v7;
    while (1)
    {
      v116 = *v54++;
      v115 = v116;
      v57 = v116 >> 4;
      if (v57 == 15)
      {
        v57 = 15;
        do
        {
          v118 = *v54++;
          v117 = v118;
          v57 += v118;
        }

        while (v54 < v111 - 15 && v117 == 255);
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }
      }

      v60 = &v53[v57];
      v119 = &v54[v57];
      if (&v53[v57] > v113 || v119 > v111 - 4)
      {
        break;
      }

      do
      {
        v121 = *v54;
        v54 += 8;
        *v53 = v121;
        v53 += 8;
      }

      while (v53 < v60);
      v122 = &v60[-*v119];
      v54 = (v119 + 1);
      if (v122 < v112)
      {
        goto LABEL_163;
      }

      v123 = v115 & 0xF;
      if ((v115 & 0xF) == 0xF)
      {
        v123 = 15;
        do
        {
          if (v54 > v111 - 5)
          {
            goto LABEL_163;
          }

          v124 = *v54++;
          v123 += v124;
        }

        while (v124 == 255);
        if (v123 < 0)
        {
          goto LABEL_163;
        }
      }

      v125 = *v119;
      if (v125 <= 7)
      {
        v130 = *(&v151 + v125);
        *v60 = *v122;
        v60[1] = v122[1];
        v60[2] = v122[2];
        v60[3] = v122[3];
        v131 = &v122[qword_23B326D70[v125]];
        *(v60 + 1) = *v131;
        v126 = &v131[-v130];
      }

      else
      {
        v127 = *v122;
        v126 = v122 + 8;
        *v60 = v127;
      }

      v53 = &v60[v123 + 4];
      v128 = v60 + 8;
      if (v53 > v113)
      {
        if (v53 > v50 - 5)
        {
          goto LABEL_163;
        }

        if (v128 < v114)
        {
          v132 = v126;
          v133 = v60 + 8;
          do
          {
            v134 = *v132++;
            *v133 = v134;
            v133 += 8;
          }

          while (v133 < v114);
          v126 += v114 - v128;
          v128 = v50 - 8;
        }

        while (v128 < v53)
        {
          v135 = *v126++;
          *v128++ = v135;
        }
      }

      else
      {
        do
        {
          v129 = *v126;
          v126 += 8;
          *v128 = v129;
          v128 += 8;
        }

        while (v128 < v53);
      }
    }

    v137 = v119 == v111;
LABEL_158:
    if (v137 && v60 <= v50)
    {
      memcpy(v53, v54, v57);
      v91 = (v60 - __dst);
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  v151 = 0u;
  v152 = 0;
  v153 = -1;
  v154 = 0;
  v155 = xmmword_23B326D60;
  v156 = 3;
  if (a4)
  {
    v9 = &__src[a3];
    v10 = &__dst[a4];
    v11 = &__dst[-a6];
    v12 = v10 - 12;
    v13 = v9 - 15;
    v14 = v9 - 8;
    v15 = v10 - 8;
    v142 = v10;
    v143 = v9;
    v16 = v9 - 5;
    v149 = a6;
    v150 = v10 - 5;
    v17 = __dst;
    v144 = v7;
    v145 = v10 - 8;
    v147 = v10 - 12;
    v148 = v11;
    v146 = v9 - 8;
    while (1)
    {
      while (1)
      {
        v19 = *v7++;
        v18 = v19;
        v20 = v19 >> 4;
        if (v20 == 15)
        {
          v20 = 15;
          do
          {
            v22 = *v7++;
            v21 = v22;
            v20 += v22;
          }

          while (v7 < v13 && v21 == 255);
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_149:
            v91 = (~v7 + v144);
            goto LABEL_164;
          }
        }

        v23 = &v17[v20];
        v24 = &v7[v20];
        if (&v17[v20] > v12 || v24 > v14)
        {
          if (v24 == v143 && v23 <= v142)
          {
            memcpy(v17, v7, v20);
            v91 = (v23 - __dst);
            goto LABEL_164;
          }

          goto LABEL_149;
        }

        do
        {
          v26 = *v7;
          v7 += 8;
          *v17 = v26;
          v17 += 8;
        }

        while (v17 < v23);
        v27 = (v23 - *v24);
        v7 = (v24 + 1);
        if (!HIWORD(a6) && v27 < v11)
        {
          goto LABEL_149;
        }

        v28 = v18 & 0xF;
        if (v28 == 15)
        {
          v28 = 15;
          while (v7 <= v16)
          {
            v29 = *v7++;
            v28 += v29;
            if (v29 != 255)
            {
              if (v28 < 0)
              {
                goto LABEL_149;
              }

              goto LABEL_22;
            }
          }

          goto LABEL_149;
        }

LABEL_22:
        v30 = (v28 + 4);
        v31 = (v23 + v28 + 4);
        if (v27 >= __dst)
        {
          break;
        }

        if (v31 > v150)
        {
          goto LABEL_149;
        }

        v32 = (__dst - v27);
        v33 = v8;
        v34 = &v8[-(__dst - v27)];
        v35 = &v30[-(__dst - v27)];
        if (v30 <= __dst - v27)
        {
          memmove(v23, v34, v30);
          v17 = v31;
          v8 = v33;
          goto LABEL_37;
        }

        memcpy(v23, v34, __dst - v27);
        v17 = &v32[v23];
        if (v35 <= &v32[v23] - __dst)
        {
          memcpy(v17, __dst, v35);
          v17 = v31;
          v8 = v33;
LABEL_37:
          v11 = v148;
          a6 = v149;
          v14 = v146;
          v12 = v147;
          v15 = v145;
        }

        else
        {
          v8 = v33;
          v11 = v148;
          a6 = v149;
          v14 = v146;
          v12 = v147;
          v15 = v145;
          if (v30 > v32)
          {
            v36 = __dst;
            do
            {
              v37 = *v36++;
              *v17++ = v37;
            }

            while (v17 < v31);
          }
        }
      }

      v38 = *v24;
      if (v38 <= 7)
      {
        v43 = *(&v151 + v38);
        *v23 = *v27;
        *(v23 + 1) = v27[1];
        *(v23 + 2) = v27[2];
        *(v23 + 3) = v27[3];
        v44 = &v27[qword_23B326D70[v38]];
        *(v23 + 4) = *v44;
        v39 = &v44[-v43];
      }

      else
      {
        v40 = *v27;
        v39 = v27 + 8;
        *v23 = v40;
      }

      v41 = (v23 + 8);
      if (v31 <= v12)
      {
        break;
      }

      if (v31 > v150)
      {
        goto LABEL_149;
      }

      if (v41 < v15)
      {
        v45 = v39;
        v46 = (v23 + 8);
        do
        {
          v47 = *v45++;
          *v46 = v47;
          v46 += 8;
        }

        while (v46 < v15);
        v39 += v15 - v41;
        v41 = v15;
      }

      v17 = v31;
      if (v41 < v31)
      {
        do
        {
          v48 = *v39++;
          *v41 = v48;
          v41 = (v41 + 1);
        }

        while (v41 < v31);
LABEL_34:
        v17 = v31;
      }
    }

    do
    {
      v42 = *v39;
      v39 += 8;
      *v41++ = v42;
    }

    while (v41 < v31);
    goto LABEL_34;
  }

LABEL_165:
  if (a3 == 1)
  {
    if (*__src)
    {
      v91 = 0xFFFFFFFFLL;
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = 0xFFFFFFFFLL;
  }

LABEL_164:
  v140 = *MEMORY[0x277D85DE8];
  return v91;
}

uint64_t LZ4_decompress_fast_usingDict(unsigned __int8 *__src, char *__dst, int a3, uint64_t a4, int a5)
{
  v5 = __dst;
  v125 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    v119 = 0u;
    v120 = 0;
    v121 = -1;
    v122 = 0;
    v123 = xmmword_23B326D60;
    v124 = 3;
    if (a3)
    {
      v44 = &__dst[a3];
      v45 = v44 - 8;
      v46 = __src;
      while (1)
      {
        v48 = *v46++;
        v47 = v48;
        v49 = v48 >> 4;
        if (v49 == 15)
        {
          v49 = 15;
          do
          {
            v50 = *v46++;
            v49 += v50;
          }

          while (v50 == 255);
        }

        v51 = &v5[v49];
        if (&v5[v49] > v45)
        {
          break;
        }

        v52 = v46;
        do
        {
          v53 = *v52++;
          *v5 = v53;
          v5 += 8;
        }

        while (v5 < v51);
        v54 = &v46[v49];
        v56 = *v54;
        v46 = v54 + 2;
        v55 = v56;
        v57 = v47 & 0xF;
        if ((v47 & 0xF) == 0xF)
        {
          v57 = 15;
          do
          {
            v58 = *v46++;
            v57 += v58;
          }

          while (v58 == 255);
        }

        v59 = &v51[-v55];
        if (v55 <= 7)
        {
          v64 = *(&v119 + v55);
          *v51 = *v59;
          v51[1] = v59[1];
          v51[2] = v59[2];
          v51[3] = v59[3];
          v65 = &v59[qword_23B326D70[v55]];
          *(v51 + 1) = *v65;
          v60 = &v65[-v64];
        }

        else
        {
          v61 = *v59;
          v60 = v59 + 8;
          *v51 = v61;
        }

        v5 = &v51[v57 + 4];
        v62 = v51 + 8;
        if (v5 > v44 - 12)
        {
          if (v5 > v44 - 5)
          {
            goto LABEL_119;
          }

          if (v62 < v45)
          {
            v66 = v60;
            v67 = v62;
            do
            {
              v68 = *v66++;
              *v67 = v68;
              v67 += 8;
            }

            while (v67 < v45);
            v60 += v45 - v62;
            v62 = v44 - 8;
          }

          while (v62 < v5)
          {
            v69 = *v60++;
            *v62++ = v69;
          }
        }

        else
        {
          do
          {
            v63 = *v60;
            v60 += 8;
            *v62 = v63;
            v62 += 8;
          }

          while (v62 < v5);
        }
      }

LABEL_118:
      if (v51 == v44)
      {
        memcpy(v5, v46, v49);
        result = (v46 + v49 - __src);
        goto LABEL_121;
      }

LABEL_119:
      result = (~v46 + __src);
      goto LABEL_121;
    }

LABEL_122:
    if (*__src)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    goto LABEL_121;
  }

  v7 = (a4 + a5);
  if (v7 == __dst)
  {
    v44 = &__dst[a3];
    v70 = v44 - 12;
    if (a5 < 0xFFFF)
    {
      v119 = 0uLL;
      v120 = 0;
      v121 = -1;
      v122 = 0;
      v123 = xmmword_23B326D60;
      v124 = 3;
      if (a3)
      {
        v93 = v44 - 8;
        v46 = __src;
        while (1)
        {
          v95 = *v46++;
          v94 = v95;
          v49 = v95 >> 4;
          if (v49 == 15)
          {
            v49 = 15;
            do
            {
              v96 = *v46++;
              v49 += v96;
            }

            while (v96 == 255);
          }

          v51 = &v5[v49];
          if (&v5[v49] > v93)
          {
            goto LABEL_118;
          }

          v97 = v46;
          do
          {
            v98 = *v97++;
            *v5 = v98;
            v5 += 8;
          }

          while (v5 < v51);
          v99 = &v46[v49];
          v101 = *v99;
          v46 = v99 + 2;
          v100 = v101;
          v102 = v94 & 0xF;
          if ((v94 & 0xF) == 0xF)
          {
            v102 = 15;
            do
            {
              v103 = *v46++;
              v102 += v103;
            }

            while (v103 == 255);
          }

          v104 = &v51[-v100];
          if (v100 <= 7)
          {
            v109 = *(&v119 + v100);
            *v51 = *v104;
            v51[1] = v104[1];
            v51[2] = v104[2];
            v51[3] = v104[3];
            v110 = &v104[qword_23B326D70[v100]];
            *(v51 + 1) = *v110;
            v105 = &v110[-v109];
          }

          else
          {
            v106 = *v104;
            v105 = v104 + 8;
            *v51 = v106;
          }

          v5 = &v51[v102 + 4];
          v107 = v51 + 8;
          if (v5 > v70)
          {
            if (v5 > v44 - 5)
            {
              goto LABEL_119;
            }

            if (v107 < v93)
            {
              v111 = v105;
              v112 = v107;
              do
              {
                v113 = *v111++;
                *v112 = v113;
                v112 += 8;
              }

              while (v112 < v93);
              v105 += v93 - v107;
              v107 = v44 - 8;
            }

            while (v107 < v5)
            {
              v114 = *v105++;
              *v107++ = v114;
            }
          }

          else
          {
            do
            {
              v108 = *v105;
              v105 += 8;
              *v107 = v108;
              v107 += 8;
            }

            while (v107 < v5);
          }
        }
      }
    }

    else
    {
      v119 = 0uLL;
      v120 = 0;
      v121 = -1;
      v122 = 0;
      v123 = xmmword_23B326D60;
      v124 = 3;
      if (a3)
      {
        v71 = v44 - 8;
        v46 = __src;
        while (1)
        {
          v73 = *v46++;
          v72 = v73;
          v49 = v73 >> 4;
          if (v49 == 15)
          {
            v49 = 15;
            do
            {
              v74 = *v46++;
              v49 += v74;
            }

            while (v74 == 255);
          }

          v51 = &v5[v49];
          if (&v5[v49] > v71)
          {
            goto LABEL_118;
          }

          v75 = v46;
          do
          {
            v76 = *v75++;
            *v5 = v76;
            v5 += 8;
          }

          while (v5 < v51);
          v77 = &v46[v49];
          v79 = *v77;
          v46 = v77 + 2;
          v78 = v79;
          v80 = v72 & 0xF;
          if ((v72 & 0xF) == 0xF)
          {
            v80 = 15;
            do
            {
              v81 = *v46++;
              v80 += v81;
            }

            while (v81 == 255);
          }

          v82 = &v51[-v78];
          if (v78 <= 7)
          {
            v87 = *(&v119 + v78);
            *v51 = *v82;
            v51[1] = v82[1];
            v51[2] = v82[2];
            v51[3] = v82[3];
            v88 = &v82[qword_23B326D70[v78]];
            *(v51 + 1) = *v88;
            v83 = &v88[-v87];
          }

          else
          {
            v84 = *v82;
            v83 = v82 + 8;
            *v51 = v84;
          }

          v5 = &v51[v80 + 4];
          v85 = v51 + 8;
          if (v5 > v70)
          {
            if (v5 > v44 - 5)
            {
              goto LABEL_119;
            }

            if (v85 < v71)
            {
              v89 = v83;
              v90 = v85;
              do
              {
                v91 = *v89++;
                *v90 = v91;
                v90 += 8;
              }

              while (v90 < v71);
              v83 += v71 - v85;
              v85 = v44 - 8;
            }

            while (v85 < v5)
            {
              v92 = *v83++;
              *v85++ = v92;
            }
          }

          else
          {
            do
            {
              v86 = *v83;
              v83 += 8;
              *v85 = v86;
              v85 += 8;
            }

            while (v85 < v5);
          }
        }
      }
    }

    goto LABEL_122;
  }

  v119 = 0u;
  v120 = 0;
  v121 = -1;
  v122 = 0;
  v123 = xmmword_23B326D60;
  v124 = 3;
  if (!a3)
  {
    goto LABEL_122;
  }

  v8 = &__dst[a3];
  v117 = __src;
  v118 = v8 - 12;
  v9 = v8 - 8;
  v116 = v8;
  v10 = v8 - 5;
  v11 = __dst;
  v12 = __src;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    v15 = v14 >> 4;
    if (v15 == 15)
    {
      v15 = 15;
      do
      {
        v16 = *v12++;
        v15 += v16;
      }

      while (v16 == 255);
    }

    v17 = &v11[v15];
    if (&v11[v15] > v9)
    {
      break;
    }

    v18 = v12;
    do
    {
      v19 = *v18++;
      *v11 = v19;
      v11 += 8;
    }

    while (v11 < v17);
    v20 = &v12[v15];
    v22 = *v20;
    v12 = v20 + 2;
    v21 = v22;
    v23 = v13 & 0xF;
    if ((v13 & 0xF) == 0xF)
    {
      v23 = 15;
      do
      {
        v24 = *v12++;
        v23 += v24;
      }

      while (v24 == 255);
    }

    v25 = &v17[-v21];
    v26 = v23 + 4;
    v27 = &v17[v23 + 4];
    if (&v17[-v21] >= v5)
    {
      if (v21 <= 7)
      {
        v37 = *(&v119 + v21);
        *v17 = *v25;
        v17[1] = v25[1];
        v17[2] = v25[2];
        v17[3] = v25[3];
        v38 = &v25[qword_23B326D70[v21]];
        *(v17 + 1) = *v38;
        v33 = &v38[-v37];
      }

      else
      {
        v34 = *v25;
        v33 = v25 + 8;
        *v17 = v34;
      }

      v35 = v17 + 8;
      if (v27 <= v118)
      {
        do
        {
          v36 = *v33;
          v33 += 8;
          *v35++ = v36;
        }

        while (v35 < v27);
        goto LABEL_29;
      }

      if (v27 > v10)
      {
        goto LABEL_40;
      }

      if (v35 < v9)
      {
        v39 = v33;
        v40 = v17 + 8;
        do
        {
          v41 = *v39++;
          *v40 = v41;
          v40 += 8;
        }

        while (v40 < v9);
        v33 += v9 - v35;
        v35 = v9;
      }

      v11 = v27;
      if (v35 < v27)
      {
        do
        {
          v42 = *v33++;
          *v35 = v42;
          v35 = (v35 + 1);
        }

        while (v35 < v27);
LABEL_29:
        v11 = v27;
      }
    }

    else
    {
      if (v27 > v10)
      {
        goto LABEL_40;
      }

      v28 = v5 - v25;
      v29 = &v7[-(v5 - v25)];
      v30 = v26 - (v5 - v25);
      if (v26 <= (v5 - v25))
      {
        memmove(v17, v29, v23 + 4);
        goto LABEL_29;
      }

      memcpy(v17, v29, v5 - v25);
      v11 = &v17[v28];
      if (v30 <= &v17[v28] - v5)
      {
        memcpy(v11, v5, v30);
        goto LABEL_29;
      }

      if (v26 > v28)
      {
        v31 = v5;
        do
        {
          v32 = *v31++;
          *v11++ = v32;
        }

        while (v11 < v27);
      }
    }
  }

  if (v17 != v116)
  {
LABEL_40:
    result = (~v12 + v117);
    goto LABEL_121;
  }

  memcpy(v11, v12, v15);
  result = (v12 + v15 - v117);
LABEL_121:
  v115 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_compress(uint64_t a1, uint64_t a2)
{
  v18 = v6;
  v19 = v7;
  v16 = v2;
  v17 = v3;
  v14 = v4;
  v15 = v5;
  MEMORY[0x28223BE20](a1, a1, a2);
  memset(v13, 0, 512);
  return LZ4_compress_fast_extState(v13, v8, v9, v10, v11, 1);
}

uint64_t LZ4_compress_withState(void *a1, char *a2, _BYTE *a3, unsigned int a4)
{
  if (a4 <= 0x7E000000)
  {
    v4 = a4 + a4 / 0xFF + 16;
  }

  else
  {
    v4 = 0;
  }

  return LZ4_compress_fast_extState(a1, a2, a3, a4, v4, 1);
}

uint64_t LZ4_compress_continue(uint64_t a1, char *a2, _BYTE *a3, unsigned int a4)
{
  if (a4 <= 0x7E000000)
  {
    v4 = a4 + a4 / 0xFF + 16;
  }

  else
  {
    v4 = 0;
  }

  return LZ4_compress_fast_continue(a1, a2, a3, a4, v4, 1);
}

uint64_t LZ4_resetStreamState(void *a1, uint64_t a2)
{
  if ((a1 & 3) != 0)
  {
    return 1;
  }

  bzero(a1, 0x4020uLL);
  result = 0;
  a1[2050] = a2;
  return result;
}

void *LZ4_create(uint64_t a1)
{
  v2 = malloc_type_calloc(8uLL, 0x804uLL, 0xE13B16FEuLL);
  bzero(v2, 0x4020uLL);
  v2[2050] = a1;
  return v2;
}

size_t LZ4_slideInputBuffer(uint64_t a1)
{
  v2 = *(a1 + 16400);
  v3 = *(a1 + 16408);
  if (v3 >= 0x10000)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = v3;
  }

  memmove(*(a1 + 16400), (*(a1 + 16392) + v3 - v4), v4);
  *(a1 + 16392) = v2;
  *(a1 + 16408) = v4;
  return *(a1 + 16400) + v4;
}

uint64_t LZ4_decompress_safe_withPrefix64k(unsigned __int8 *a1, char *__dst, int a3, int a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0;
  v39 = -1;
  v40 = 0;
  v41 = xmmword_23B326D60;
  v42 = 3;
  if (a4)
  {
    v4 = __dst;
    v5 = &a1[a3];
    v6 = &__dst[a4];
    v7 = v6 - 12;
    v8 = v6 - 8;
    v9 = __dst;
    v10 = a1;
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      v13 = v12 >> 4;
      if (v13 == 15)
      {
        v13 = 15;
        do
        {
          v15 = *v10++;
          v14 = v15;
          v13 += v15;
        }

        while (v10 < v5 - 15 && v14 == 255);
        if ((v13 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      v16 = &v9[v13];
      v17 = &v10[v13];
      if (&v9[v13] > v7 || v17 > v5 - 4)
      {
        if (v17 == v5 && v16 <= v6)
        {
          memcpy(v9, v10, v13);
          result = (v16 - v4);
          goto LABEL_38;
        }

        break;
      }

      do
      {
        v19 = *v10;
        v10 += 8;
        *v9 = v19;
        v9 += 8;
      }

      while (v9 < v16);
      v10 = (v17 + 1);
      v20 = v11 & 0xF;
      if ((v11 & 0xF) == 0xF)
      {
        v20 = 15;
        while (v10 <= v5 - 5)
        {
          v21 = *v10++;
          v20 += v21;
          if (v21 != 255)
          {
            if (v20 < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_18;
          }
        }

        break;
      }

LABEL_18:
      v22 = &v16[-*v17];
      v23 = *v17;
      if (v23 <= 7)
      {
        v28 = *(&v37 + v23);
        *v16 = *v22;
        v16[1] = v22[1];
        v16[2] = v22[2];
        v16[3] = v22[3];
        v29 = &v22[qword_23B326D70[v23]];
        *(v16 + 1) = *v29;
        v24 = &v29[-v28];
      }

      else
      {
        v25 = *v22;
        v24 = v22 + 8;
        *v16 = v25;
      }

      v9 = &v16[v20 + 4];
      v26 = v16 + 8;
      if (v9 > v7)
      {
        if (v9 > v6 - 5)
        {
          break;
        }

        if (v26 < v8)
        {
          v30 = v24;
          v31 = v16 + 8;
          do
          {
            v32 = *v30++;
            *v31 = v32;
            v31 += 8;
          }

          while (v31 < v8);
          v24 += v8 - v26;
          v26 = v6 - 8;
        }

        while (v26 < v9)
        {
          v33 = *v24++;
          *v26++ = v33;
        }
      }

      else
      {
        do
        {
          v27 = *v24;
          v24 += 8;
          *v26 = v27;
          v26 += 8;
        }

        while (v26 < v9);
      }
    }

LABEL_37:
    result = (~v10 + a1);
  }

  else if (a3 == 1)
  {
    if (*a1)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_38:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t LZ4_count(unint64_t a1, _DWORD *a2, unint64_t a3)
{
  v3 = a1;
  if (a3 - 7 <= a1)
  {
LABEL_4:
    if (v3 < a3 - 3 && *a2 == *v3)
    {
      ++a2;
      ++v3;
    }

    if (v3 < a3 - 1 && *a2 == *v3)
    {
      a2 = (a2 + 2);
      v3 = (v3 + 2);
    }

    if (v3 < a3 && *a2 == *v3)
    {
      LODWORD(v3) = v3 + 1;
    }
  }

  else
  {
    while (*a2 == *v3)
    {
      v3 += 2;
      a2 += 2;
      if (v3 >= a3 - 7)
      {
        goto LABEL_4;
      }
    }

    v3 = (v3 + (__clz(__rbit64(*v3 ^ *a2)) >> 3));
  }

  return (v3 - a1);
}

uint64_t LZ4_compress_destSize_generic(uint64_t a1, char *__src, unint64_t a3, int *a4, int a5, int a6)
{
  result = 0;
  if (a5 < 1)
  {
    return result;
  }

  v8 = *a4;
  if (v8 > 0x7E000000)
  {
    return result;
  }

  if (a6 == 2 && v8 > 0x1000A)
  {
    return 0;
  }

  v63 = &__src[v8];
  v11 = a3 + a5;
  v65 = a3;
  v12 = a3;
  v13 = __src;
  if (v8 < 0xD)
  {
    goto LABEL_64;
  }

  v14 = a6 == 2 ? 13 : 12;
  v15 = 40 - v14;
  *a4 = 0;
  v16 = -1 << v14;
  v17 = ((0xCF1BBCDCBBLL * *__src) >> v15) & ~v16;
  if (a6 == 2)
  {
    *(a1 + 2 * v17) = 0;
  }

  else
  {
    *(a1 + 4 * v17) = 0;
  }

  v12 = a3;
  v13 = __src;
  if (v8 == 13)
  {
    goto LABEL_64;
  }

  v18 = (v63 - 12);
  v61 = v11 - 11;
  v62 = a3 + a5;
  v68 = v11 - 12;
  v69 = v11 - 6;
  v19 = ~v16;
  v20 = __src + 2;
  v13 = __src;
  v12 = a3;
  v66 = v15;
  v67 = ~v16;
LABEL_15:
  v21 = v13 + 1;
  v22 = *(v13 + 1);
  v23 = 65;
  v24 = 1;
  while (1)
  {
    v25 = v20;
    v26 = ((0xCF1BBCDCBBLL * v22) >> v15) & v19;
    v22 = *v20;
    v27 = v21 - __src;
    if (a6 == 1)
    {
      v28 = &__src[*(a1 + 4 * v26)];
      goto LABEL_20;
    }

    v28 = &__src[*(a1 + 2 * v26)];
    if (a6 == 2)
    {
      break;
    }

LABEL_20:
    *(a1 + 4 * v26) = v27;
    if (v28 + 0xFFFF >= v21)
    {
      goto LABEL_21;
    }

LABEL_22:
    v20 = &v25[v24];
    v24 = v23++ >> 6;
    v21 = v25;
    if (v20 > v18)
    {
      goto LABEL_64;
    }
  }

  *(a1 + 2 * v26) = v27;
LABEL_21:
  if (*v28 != *v21)
  {
    goto LABEL_22;
  }

  v29 = 0;
  v30 = v21 - v13;
  v31 = v21 - v13 - 270;
  v32 = v31;
  do
  {
    v33 = v32;
    v34 = v29;
    v35 = &v28[v29];
    v36 = &v21[v29];
    if (&v28[v29] <= __src || v36 <= v13)
    {
      break;
    }

    --v32;
    --v29;
  }

  while (*(v36 - 1) == *(v35 - 1));
  v38 = v36 - v13;
  v39 = (v12 + 1);
  if (v12 + 1 + (v30 + v34 + 240) / 0xFFuLL + (v36 - v13) <= v61)
  {
    if ((v30 + v34) < 0xF)
    {
      *v12 = 16 * v38;
    }

    else
    {
      v40 = v30 - 15 + v34;
      *v12 = -16;
      if (v40 > 0xFE)
      {
        v59 = v34 + v31;
        v60 = v31 + v34;
        memset(v39, 255, (v31 + v34) / 0xFFu + 1);
        v39 = (v12 + v59 / 0xFFuLL + 2);
        v40 = v60 - 255 * (v33 / 0xFF);
      }

      *v39 = v40;
      v39 = (v39 + 1);
    }

    v41 = (v39 + v38);
    do
    {
      v42 = *v13;
      v13 += 8;
      *v39++ = v42;
    }

    while (v39 < v41);
    v43 = v12;
    v13 = v36;
    while (1)
    {
      *v41 = v13 - v35;
      v12 = (v41 + 1);
      v44 = (v13 + 4);
      v45 = LZ4_count(v44, v35 + 1, (v63 - 5));
      v46 = (v41 + (((v45 + 240) * 0x101010101010102uLL) >> 64) + 2) <= v69 ? v45 : 255 * (v69 - v12) + 14;
      v47 = v46 - 15;
      if (v46 < 0xF)
      {
        *v43 += v46;
        v18 = (v63 - 12);
        v19 = v67;
      }

      else
      {
        *v43 += 15;
        if (v47 >= 0xFF)
        {
          memset(v41 + 1, 255, (v46 - 270) / 0xFF + 1);
          v15 = v66;
          LOBYTE(v47) = (v46 - 270) / 0xFF + v46 - 14;
          v12 = v41 + (v46 - 270) / 0xFF + 3;
        }

        v18 = (v63 - 12);
        v19 = v67;
        *v12++ = v47;
      }

      v13 = (v44 + v46);
      if (v13 > v18 || v12 > v68)
      {
        break;
      }

      v49 = ((0xCF1BBCDCBBLL * *(v13 - 2)) >> v15) & v19;
      v50 = v13 - 2 - __src;
      if (a6 == 2)
      {
        *(a1 + 2 * v49) = v50;
        v51 = ((0xCF1BBCDCBBLL * *v13) >> v15) & v19;
        v52 = *(a1 + 2 * v51);
        *(a1 + 2 * v51) = v13 - __src;
      }

      else
      {
        *(a1 + 4 * v49) = v50;
        v53 = ((0xCF1BBCDCBBLL * *v13) >> v15) & v19;
        if (a6 == 1)
        {
          v52 = *(a1 + 4 * v53);
        }

        else
        {
          v52 = *(a1 + 2 * v53);
        }

        *(a1 + 4 * v53) = v13 - __src;
      }

      v35 = &__src[v52];
      if (&__src[v52 + 0xFFFF] < v13 || *v35 != *v13)
      {
        v20 = v13 + 2;
        v11 = v62;
        if ((v13 + 2) <= v18)
        {
          goto LABEL_15;
        }

        goto LABEL_64;
      }

      *v12 = 0;
      v41 = (v12 + 1);
      v43 = v12;
    }
  }

  v11 = v62;
LABEL_64:
  v54 = v63 - v13;
  v55 = (v12 + 1);
  if (v12 + 1 + (v63 - v13 + 240) / 0xFFuLL + v63 - v13 > v11)
  {
    v54 = ~v12 + v11 - (~v12 + v11 + 240) / 0xFF;
  }

  v56 = v54 - 15;
  if (v54 < 0xF)
  {
    *v12 = 16 * v54;
    v58 = a4;
    v57 = v65;
  }

  else
  {
    *v12 = -16;
    if (v56 >= 0xFF)
    {
      memset((v12 + 1), 255, (v54 - 270) / 0xFF + 1);
      v55 = (v12 + (v54 - 270) / 0xFF + 2);
      v56 = (v54 - 270) % 0xFF;
    }

    v58 = a4;
    v57 = v65;
    *v55++ = v56;
  }

  memcpy(v55, v13, v54);
  *v58 = v13 + v54 - __src;
  return (v55 + v54 - v57);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23B303370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B304EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B305D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B308504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_23B308C4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_23B3094E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_23B30A100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B30A3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B30A97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_23B30AE3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B30B5C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B30C32C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B30CAA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B30D720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_23B30DCC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B30E86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_23B30F1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B30F4F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23B30F9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2114;
  *(a3 + 14) = result;
  *(a3 + 22) = 2114;
  *(a3 + 24) = a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_19@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_23B312164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23B312954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id PizBufGenerateRaw(void *a1, uint64_t a2)
{
  v3 = a1;
  initialize();
  v4 = generate(v3, a2, 0);
  if (v5)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 length:v4 freeWhenDone:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void initialize()
{
  if (initialized == 1)
  {
    __dmb(0xFu);
  }

  else
  {
    stringType = CFStringGetTypeID();
    dataType = CFDataGetTypeID();
    numberType = CFNumberGetTypeID();
    BOOLType = CFBooleanGetTypeID();
    dateType = CFDateGetTypeID();
    dictType = CFDictionaryGetTypeID();
    arrayType = CFArrayGetTypeID();
    CFSetGetTypeID();
    CFNullGetTypeID();
    CFUUIDGetTypeID();
    CFURLGetTypeID();
    valuePtr = -1;
    do
    {
      v0 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v1 = valuePtr;
      v2 = valuePtr + 1;
      numbers[v2] = v0;
      valuePtr = v2;
    }

    while (v1 < 8);
    __dmb(0xFu);
    initialized = 1;
  }
}

uint64_t generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  memset(v48, 0, 432);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 256;
  v43 = v48;
  v44 = xmmword_23B326E20;
  memset(v49, 0, 512);
  v46 = 0;
  v47 = 0;
  v45 = v49;
  collectValuesRecursively(&v39, v8);
  if (v39)
  {
    v9 = v41;
    if (v41)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((*(v43 + v10) - 38) <= 0x11)
        {
          free(*(v43 + v10 + 24));
          v9 = v41;
        }

        ++v11;
        v10 += 32;
      }

      while (v11 < v9);
    }

    if (v43 != v48)
    {
      free(v43);
    }

    if (v45 != v49)
    {
      free(v45);
    }

    if (v7)
    {
      *v7 = v39;
    }

    else
    {
      CFLog();
    }

    CFRelease(v39);
    v36 = 0;
  }

  else
  {
    v12 = v40 + v5;
    v13 = malloc_type_malloc(v12, 0x30AD5EEDuLL);
    if (v12 && !v13)
    {
      generate_cold_1();
    }

    v14 = v5;
    v38 = &v13[v5];
    if (v41)
    {
      v15 = 0;
      for (i = 0; i < v41; ++i)
      {
        v17 = v43;
        v18 = v38;
        v19 = v38;
        *v38 = *(v43 + v15);
        v20 = v19 + 1;
        v38 = v20;
        switch(*&v17[v15])
        {
          case 0xC:
          case 0x23:
          case 0x4C:
          case 0x5E:
            v18[1] = *&v17[v15 + 16];
            v23 = v18 + 2;
            goto LABEL_38;
          case 0xD:
          case 0x24:
            *(v18 + 1) = *&v17[v15 + 16];
            v23 = v18 + 3;
            goto LABEL_38;
          case 0xE:
            *(v18 + 1) = *&v17[v15 + 16];
            goto LABEL_31;
          case 0xF:
          case 0x12:
            *(v18 + 1) = *&v17[v15 + 16];
            goto LABEL_28;
          case 0x10:
            v28 = &v17[v15];
            *(v18 + 1) = *(v28 + 2);
            *(v18 + 9) = *(v28 + 3);
            v23 = v18 + 17;
            goto LABEL_38;
          case 0x11:
            v31 = *&v17[v15 + 16];
            *(v18 + 1) = v31;
LABEL_31:
            v23 = v18 + 5;
            goto LABEL_38;
          case 0x25:
          case 0x4D:
          case 0x5F:
            v24 = *&v17[v15 + 16];
            *(v18 + 1) = v24;
            v18[3] = BYTE2(v24);
            v18[4] = BYTE3(v24);
            v18[5] = BYTE4(v24);
            v18[6] = BYTE5(v24);
            v23 = v18 + 7;
            goto LABEL_38;
          case 0x26:
          case 0x27:
          case 0x28:
          case 0x29:
          case 0x2A:
          case 0x2B:
          case 0x2C:
          case 0x2D:
          case 0x2E:
          case 0x2F:
          case 0x30:
          case 0x31:
          case 0x32:
          case 0x33:
          case 0x34:
          case 0x35:
            v21 = &v17[v15];
            goto LABEL_19;
          case 0x36:
            v21 = &v17[v15];
            v18[1] = *&v17[v15 + 16];
            v20 = v18 + 2;
            goto LABEL_19;
          case 0x37:
            v21 = &v17[v15];
            v33 = *&v17[v15 + 16];
            *(v18 + 1) = v33;
            v18[3] = BYTE2(v33);
            v18[4] = BYTE3(v33);
            v18[5] = BYTE4(v33);
            v18[6] = BYTE5(v33);
            v20 = v18 + 7;
LABEL_19:
            v22 = *(v21 + 2);
            memcpy(v20, *(v21 + 3), v22);
            v38 = &v20[v22];
            free(*(v21 + 3));
            break;
          case 0x38:
            v29 = &v17[v15];
            v18[1] = *(v29 + 2);
            v30 = v18 + 2;
            goto LABEL_33;
          case 0x39:
            v29 = &v17[v15];
            v32 = *(v29 + 2);
            *(v18 + 1) = v32;
            v18[3] = BYTE2(v32);
            v18[4] = BYTE3(v32);
            v18[5] = BYTE4(v32);
            v18[6] = BYTE5(v32);
            v30 = v18 + 7;
LABEL_33:
            v38 = v30;
            writeUnicode16StringContents(&v38, *(v29 + 1), *(v29 + 2));
            break;
          case 0x3A:
            v25 = &v17[v15];
            v18[1] = *&v17[v15 + 16];
            v27 = v18 + 2;
            goto LABEL_37;
          case 0x3B:
            v25 = &v17[v15];
            v26 = *&v17[v15 + 16];
            *(v18 + 1) = v26;
            v18[3] = BYTE2(v26);
            v18[4] = BYTE3(v26);
            v18[5] = BYTE4(v26);
            v18[6] = BYTE5(v26);
            v27 = v18 + 7;
LABEL_37:
            BytePtr = CFDataGetBytePtr(*(v25 + 1));
            v35 = *(v25 + 2);
            memcpy(v27, BytePtr, v35);
            v23 = &v27[v35];
            goto LABEL_38;
          case 0x60:
            *(v18 + 1) = MEMORY[0x23EE99AD0](*&v17[v15 + 8]);
LABEL_28:
            v23 = v18 + 9;
LABEL_38:
            v38 = v23;
            break;
          default:
            break;
        }

        v15 += 32;
      }
    }

    if (v43 != v48)
    {
      free(v43);
    }

    if (v45 != v49)
    {
      free(v45);
    }

    v36 = v40 + v14;
  }

  return v36;
}

id PizBufGenerate(void *a1, uint64_t a2)
{
  v3 = a1;
  initialize();
  v4 = generate(v3, a2, 1);
  if (v5)
  {
    *v5 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v5 length:v4 freeWhenDone:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id PizBufGenerateCompressed(void *a1, uint64_t a2)
{
  v3 = a1;
  initialize();
  v4 = generate(v3, a2, 0);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    if (v4 >= 0x7E000001)
    {
      PizBufGenerateCompressed_cold_1();
    }

    v8 = LZ4_compressBound(v4);
    v9 = v8 == -1;
    v10 = v8 + 1;
    v11 = malloc_type_malloc(v10, 0x30AD5EEDuLL);
    v12 = v11;
    if (!v9 && !v11)
    {
      generate_cold_1();
    }

    v13 = LZ4_compress_default(v6, (v11 + 1), v7);
    if (v13 <= 0)
    {
      PizBufGenerateCompressed_cold_3();
    }

    v14 = v13;
    if (v7 <= v13)
    {
      *v12 = 0;
      memcpy(v12 + 1, v6, v7);
      v16 = v7 + 1;
    }

    else
    {
      v15 = v7 / v13;
      if (v15 >= 0x100)
      {
        PizBufGenerateCompressed_cold_4();
      }

      if (v15 < 0xF)
      {
        *v12 = v15;
        v16 = v13 + 1;
      }

      else
      {
        if (v13 + 2 >= v10)
        {
          PizBufGenerateCompressed_cold_5();
        }

        memmove(v12 + 2, v12 + 1, v13);
        *v12 = 15;
        v12[1] = v15;
        v16 = v14 + 2;
      }
    }

    free(v6);
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v12 length:v16 freeWhenDone:1];
  }

  return v6;
}

CFArrayRef PizBufParseRaw(void *a1, void *a2)
{
  v3 = a1;
  initialize();
  v4 = [v3 length];
  v5 = [v3 bytes];

  return parse(v4, v5, a2);
}

CFArrayRef parse(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = a2;
  v8[1] = a2;
  v8[2] = a2 + a1;
  v9 = v11;
  memset(v11, 0, 464);
  v10 = xmmword_23B326E30;
  v12 = 0;
  Recursively = parseAndCreateRecursively(v8);
  if (v10)
  {
    v5 = v10 - 1;
    do
    {
      CFRelease(*(v9 + v5--));
    }

    while (v5 != -1);
  }

  if (v9 != v11)
  {
    free(v9);
  }

  if (Recursively)
  {
    if (v12)
    {
      parse_cold_1();
    }

    v6 = Recursively;
  }

  else
  {
    if (!v12)
    {
      parse_cold_2();
    }

    setError(a3, v12);
  }

  return Recursively;
}

id PizBufParse(void *a1, void *a2)
{
  v3 = a1;
  initialize();
  v4 = [v3 length];
  v5 = [v3 bytes];
  if (!v4)
  {
    v9 = @"Empty input frame";
LABEL_10:
    v10 = CFRetain(v9);
    v11 = a2;
LABEL_11:
    setError(v11, v10);
    v12 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  if (frameHeader(v4, v5) >= 0x10)
  {
    v9 = @"Unrecognized format version";
    goto LABEL_10;
  }

  if ((frameHeader(v4, v6) & 0xF) != 0)
  {
    if ((frameHeader(v4, v6) & 0xF) != 0)
    {
      v7 = frameHeader(v4, v6) & 0xF;
      if (v7 == 15)
      {
        if (v4 == 1)
        {
          v8 = CFRetain(@"Frame header implies second compression ratio byte but the frame size is smaller than 2");
LABEL_28:
          v19 = v8;
          goto LABEL_29;
        }

        v7 = v6[1];
        v17 = -2;
        v18 = 2;
      }

      else
      {
        v17 = -1;
        v18 = 1;
      }

      v20 = v17 + v4;
      if ((v17 + v4) >= 0x7E000001)
      {
        v8 = CFStringCreateWithFormat(0, 0, @"Decompression failed because input is too big (max size is %lu, input size is %lu)", 2113929216, v20);
        goto LABEL_28;
      }

      v14 = v20 + v20 * v7;
      if (v14 >= 0x7E000001)
      {
        v8 = CFStringCreateWithFormat(0, 0, @"Decompression failed because projected decompressed frame size is too big (max size is %lu, projected size is %lu)", 2113929216, v14);
        goto LABEL_28;
      }

      v21 = malloc_type_malloc(v14, 0x30AD5EEDuLL);
      v16 = v21;
      if (v20 && !v21)
      {
        generate_cold_1();
      }

      if (v21)
      {
        bzero(v21, v14);
      }

      v22 = LZ4_decompress_safe(&v6[v18], v16, v20, v14);
      if ((v22 & 0x80000000) != 0)
      {
        v19 = CFStringCreateWithFormat(0, 0, @"LZ4 decompression failed with result: %d", v22);
        if (v16)
        {
          free(v16);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v14 = v4 - 1;
      v15 = malloc_type_malloc(v14, 0x30AD5EEDuLL);
      v16 = v15;
      if (v14 && !v15)
      {
        generate_cold_1();
      }

      memcpy(v15, v6 + 1, v14);
    }

    if (!v16)
    {
      v19 = 0;
LABEL_29:
      v11 = a2;
      v10 = v19;
      goto LABEL_11;
    }

    v12 = parse(v14, v16, a2);
    free(v16);
  }

  else
  {
    v12 = parse(v4 - 1, (v6 + 1), a2);
  }

LABEL_12:

  return v12;
}

void setError(void *a1, id a2)
{
  if (a1)
  {
    v4 = a2;
    *a1 = a2;
  }

  else
  {
    CFLog();
  }

  CFRelease(a2);
}

void collectValuesRecursively(void *a1, const __CFString *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  v4 = CFGetTypeID(a2);
  if (v4 == numberType)
  {
    keys[0] = 0;
    keys[1] = 0;
    if (CFNumberIsFloatType(a2))
    {
      valuePtr = 0.0;
      CFNumberGetValue(a2, kCFNumberFloat64Type, &valuePtr);
      *&v5 = valuePtr;
      v6 = valuePtr;
      if (*&valuePtr == COERCE__INT64(valuePtr))
      {
        v5 = v6;
        v7 = 4;
        if (v6 == v6)
        {
          v7 = 2;
          v8 = 13;
        }

        else
        {
          v8 = 14;
        }

        v9 = v6 + 3;
        if ((v6 - 9) < 0xFFFFFFF6)
        {
          v9 = 12;
        }

        if (v6 == v6)
        {
          v10 = (v6 - 9) < 0xFFFFFFF6;
        }

        else
        {
          v10 = v7;
        }

        if (v6 == v6)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }
      }

      else
      {
        v22 = valuePtr;
        v23 = v22;
        if (*&valuePtr == *&v23)
        {
          v10 = 4;
        }

        else
        {
          v10 = 8;
        }

        if (*&valuePtr == *&v23)
        {
          v11 = 17;
        }

        else
        {
          v11 = 18;
        }
      }

      v21 = 0;
      goto LABEL_164;
    }

    CFNumberGetValue(a2, kCFNumberMaxType|kCFNumberSInt8Type, keys);
    v21 = keys[0];
    v5 = keys[1];
    if (keys[0] == (keys[1] >> 63))
    {
      if (keys[1] == SLOBYTE(keys[1]))
      {
        v21 = 0;
        v10 = (LODWORD(keys[1]) - 9) < 0xFFFFFFF6;
        v11 = LODWORD(keys[1]) + 3;
        if ((LODWORD(keys[1]) - 9) < 0xFFFFFFF6)
        {
          v11 = 12;
        }

        goto LABEL_164;
      }

      if (keys[1] == SLODWORD(keys[1]))
      {
        v21 = 0;
        v11 = 14;
LABEL_172:
        v10 = 4;
        goto LABEL_164;
      }

      if (keys[1] == keys[1])
      {
        v21 = 0;
        *&v5 = keys[1];
        v11 = 17;
        goto LABEL_172;
      }

      v21 = 0;
      v11 = 15;
LABEL_186:
      v10 = 8;
      goto LABEL_164;
    }

    v10 = 16;
    v11 = 16;
LABEL_164:
    keys[0] = v11;
    keys[1] = a2;
    *&v94 = v5;
    *(&v94 + 1) = v21;
    appendValueGenerationData(a1, keys, v10);
LABEL_165:
    v81 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v4 == stringType)
  {
    keys[0] = 0;
    v12 = (a2 >> 8) + (a2 >> 21) - (((a2 >> 8) + (a2 >> 21)) >> 32) + 8 * (((a2 >> 8) + (a2 >> 21)) >> 32);
    v14 = a1[6];
    v13 = a1[7];
    v15 = (v14 - 1) & v12;
    v16 = v15 + 1;
    v17 = 16 * v15;
    while (v16)
    {
      --v16;
      v18 = *&v13[v17];
      v17 -= 16;
      if (v18)
      {
        v19 = v18 == a2;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        goto LABEL_45;
      }
    }

    v24 = &v13[16 * v14 - 16];
    v16 = a1[6];
    do
    {
      if (v16 <= v15)
      {
        collectValuesRecursively_cold_1();
      }

      --v16;
      v25 = *v24;
      v24 -= 2;
      v18 = v25;
      if (v25)
      {
        v26 = v18 == a2;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
LABEL_45:
    v27 = &v13[16 * v16];
    if (v18)
    {
      v28 = *(v27 + 1);
      if (v28 != -1)
      {
        v29 = 1;
        v30 = 6;
        if (v28 >= 0xFFFF)
        {
          v31 = 37;
        }

        else
        {
          v30 = 2;
          v31 = 36;
        }

        if (v28 < 0xFF)
        {
          v32 = 35;
        }

        else
        {
          v29 = v30;
          v32 = v31;
        }

        if (v28 <= 0xE)
        {
          v10 = 0;
        }

        else
        {
          v10 = v29;
        }

        v21 = 0;
        if (v28 <= 0xE)
        {
          *&v5 = 0.0;
        }

        else
        {
          v5 = v28;
        }

        if (v28 <= 0xE)
        {
          v11 = v28 + 19;
        }

        else
        {
          v11 = v32;
        }

        goto LABEL_164;
      }
    }

    else
    {
      v34 = a1[5];
      if (v34 >= v14 >> 1)
      {
        a1[6] = 2 * v14;
        a1[7] = malloc_type_calloc(0x10uLL, 2 * v14, 0x88C85132uLL);
        while (v14)
        {
          --v14;
          v35 = &v13[16 * v14];
          v36 = *v35;
          if (*v35)
          {
            v38 = a1[6];
            v37 = a1[7];
            v39 = (v38 - 1) & ((v36 >> 8) + (v36 >> 21) - (((v36 >> 8) + (v36 >> 21)) >> 32) + 8 * (((v36 >> 8) + (v36 >> 21)) >> 32));
            v40 = v39 + 1;
            v41 = (v37 + 16 * v39);
            while (v40)
            {
              --v40;
              v43 = *v41;
              v41 -= 2;
              v42 = v43;
              if (v43)
              {
                v44 = v42 == v36;
              }

              else
              {
                v44 = 1;
              }

              if (v44)
              {
                goto LABEL_89;
              }
            }

            v45 = (v37 + 16 * v38 - 16);
            do
            {
              if (v38 <= v39)
              {
                collectValuesRecursively_cold_1();
              }

              --v38;
              v46 = *v45;
              v45 -= 2;
              v42 = v46;
              if (v46)
              {
                v47 = v42 == v36;
              }

              else
              {
                v47 = 1;
              }
            }

            while (!v47);
            v40 = v38;
LABEL_89:
            if (v42)
            {
              collectValuesRecursively_cold_3();
            }

            *(v37 + 16 * v40) = *v35;
          }
        }

        if (v13 != (a1 + 1034))
        {
          free(v13);
        }

        v49 = a1[6];
        v48 = a1[7];
        v50 = (v49 + 0x3FFFFFFFFFFFFFFLL) & v12;
        v51 = v50 + 1;
        v52 = (v48 + 16 * v50);
        while (v51)
        {
          --v51;
          v54 = *v52;
          v52 -= 2;
          v53 = v54;
          if (v54)
          {
            v55 = v53 == a2;
          }

          else
          {
            v55 = 1;
          }

          if (v55)
          {
            goto LABEL_143;
          }
        }

        v75 = (v48 + 16 * v49 - 16);
        do
        {
          if (v49 <= v50)
          {
            collectValuesRecursively_cold_1();
          }

          --v49;
          v76 = *v75;
          v75 -= 2;
          v53 = v76;
          if (v76)
          {
            v77 = v53 == a2;
          }

          else
          {
            v77 = 1;
          }
        }

        while (!v77);
        v51 = v49;
LABEL_143:
        if (v53)
        {
          collectValuesRecursively_cold_5();
        }

        v27 = (v48 + 16 * v51);
        v34 = a1[5];
      }

      *v27 = a2;
      a1[5] = v34 + 1;
      *(v27 + 1) = v34;
    }

    *&v5 = COERCE_DOUBLE(CFStringGetLength(a2));
    v78 = malloc_type_malloc(v5, 0x30AD5EEDuLL);
    v21 = v78;
    if (*&v5 != 0.0 && !v78)
    {
      generate_cold_1();
    }

    v112.location = 0;
    v112.length = v5;
    if (CFStringGetBytes(a2, v112, 0x600u, 0, 0, v78, v5, keys) == v5)
    {
      v5 = keys[0];
      v79 = keys[0] + 6;
      if (keys[0] > 0xFF)
      {
        v80 = 55;
      }

      else
      {
        v79 = keys[0] + 1;
        v80 = 54;
      }

      if (keys[0] <= 15)
      {
        v10 = keys[0];
      }

      else
      {
        v10 = v79;
      }

      if (keys[0] <= 15)
      {
        v11 = LODWORD(keys[0]) + 38;
      }

      else
      {
        v11 = v80;
      }
    }

    else
    {
      free(v21);
      if (v5 <= 255)
      {
        v10 = (2 * v5) | 1;
      }

      else
      {
        v10 = 2 * v5 + 6;
      }

      v21 = 0;
      if (v5 <= 255)
      {
        v11 = 56;
      }

      else
      {
        v11 = 57;
      }
    }

    goto LABEL_164;
  }

  if (v4 == BOOLType)
  {
    Value = CFBooleanGetValue(a2);
    v10 = 0;
    v21 = 0;
    *&v5 = 0.0;
    v11 = Value != 0;
    goto LABEL_164;
  }

  if (v4 == dataType)
  {
    Length = CFDataGetLength(a2);
    v5 = Length;
    v21 = 0;
    if (Length < 0x100)
    {
      v10 = Length + 1;
    }

    else
    {
      v10 = Length + 6;
    }

    if (Length < 0x100)
    {
      v11 = 58;
    }

    else
    {
      v11 = 59;
    }

    goto LABEL_164;
  }

  if (v4 == dictType)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    *keys = 0u;
    v94 = 0u;
    v56 = a1[8];
    if (v56)
    {
      v57 = a1[8];
      while (*v57 != a2)
      {
        v57 = v57[1];
        if (!v57)
        {
          goto LABEL_107;
        }
      }

      if (*a1)
      {
        goto LABEL_165;
      }

      v83 = @"Payloads cannot contain recursive dictionaries";
      goto LABEL_195;
    }

LABEL_107:
    v91 = a2;
    v92 = v56;
    a1[8] = &v91;
    Count = CFDictionaryGetCount(a2);
    v59 = Count;
    v60 = Count + 78;
    v61 = 6;
    if (Count >= 0x100)
    {
      v62 = 95;
    }

    else
    {
      v61 = 1;
      v62 = 94;
    }

    if (Count >= 0x10)
    {
      v60 = v62;
    }

    *&valuePtr = v60;
    if (Count >= 0x10)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0;
    }

    v88 = a2;
    v89 = Count;
    v90 = 0;
    appendValueGenerationData(a1, &valuePtr, v63);
    v64 = 2 * v59;
    if (2 * v59 >= 0x21)
    {
      v65 = mallocOrAbort(16 * v59);
      CFDictionaryGetKeysAndValues(a2, v65, &v65[v59]);
    }

    else
    {
      v65 = keys;
      CFDictionaryGetKeysAndValues(a2, keys, &keys[v59]);
      if (!v64)
      {
LABEL_178:
        a1[8] = v92;
        goto LABEL_165;
      }
    }

    v82 = 0;
    do
    {
      collectValuesRecursively(a1, v65[v82++]);
    }

    while (v64 != v82);
    if (v65 != keys)
    {
      free(v65);
    }

    goto LABEL_178;
  }

  if (v4 == arrayType)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    *keys = 0u;
    v94 = 0u;
    v66 = a1[9];
    if (v66)
    {
      v67 = a1[9];
      while (*v67 != a2)
      {
        v67 = v67[1];
        if (!v67)
        {
          goto LABEL_124;
        }
      }

      if (*a1)
      {
        goto LABEL_165;
      }

      v83 = @"Payloads cannot contain recursive arrays";
LABEL_195:
      *a1 = CFRetain(v83);
      goto LABEL_165;
    }

LABEL_124:
    v91 = a2;
    v92 = v66;
    a1[9] = &v91;
    v68 = CFArrayGetCount(a2);
    v69 = v68;
    v70 = v68 + 60;
    v71 = 6;
    if (v68 >= 0x100)
    {
      v72 = 77;
    }

    else
    {
      v71 = 1;
      v72 = 76;
    }

    if (v68 >= 0x10)
    {
      v70 = v72;
    }

    *&valuePtr = v70;
    if (v68 >= 0x10)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0;
    }

    v88 = a2;
    v89 = v68;
    v90 = 0;
    appendValueGenerationData(a1, &valuePtr, v73);
    if (v69 >= 0x21)
    {
      v74 = mallocOrAbort(8 * v69);
      v113.location = 0;
      v113.length = v69;
      CFArrayGetValues(a2, v113, v74);
    }

    else
    {
      v74 = keys;
      v111.location = 0;
      v111.length = v69;
      CFArrayGetValues(a2, v111, keys);
      if (!v69)
      {
LABEL_192:
        a1[9] = v92;
        goto LABEL_165;
      }
    }

    for (i = 0; i != v69; ++i)
    {
      collectValuesRecursively(a1, v74[i]);
    }

    if (v74 != keys)
    {
      free(v74);
    }

    goto LABEL_192;
  }

  if (v4 == dateType)
  {
    v21 = 0;
    *&v5 = 0.0;
    v11 = 96;
    goto LABEL_186;
  }

  if (*a1)
  {
    goto LABEL_165;
  }

  v84 = CFCopyTypeIDDescription(v4);
  *a1 = CFStringCreateWithFormat(0, 0, @"Payloads cannot contain objects of type '%@'", v84);
  v85 = *MEMORY[0x277D85DE8];

  CFRelease(v84);
}

void *mallocOrAbort(size_t a1)
{
  result = malloc_type_malloc(a1, 0x30AD5EEDuLL);
  if (a1)
  {
    if (!result)
    {
      generate_cold_1();
    }
  }

  return result;
}

void writeUnicode16StringContents(void **a1, const __CFString *a2, CFIndex a3)
{
  v6 = 2 * a3;
  v7 = malloc_type_malloc(2 * a3, 0x30AD5EEDuLL);
  v8 = v7;
  if (v6 && !v7)
  {
    generate_cold_1();
  }

  v10.location = 0;
  v10.length = a3;
  CFStringGetCharacters(a2, v10, v7);
  memcpy(*a1, v8, v6);
  *a1 = *a1 + v6;

  free(v8);
}

__n128 appendValueGenerationData(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  a1[1] += a3 + 1;
  if (v5 == a1[3])
  {
    v6 = a1[4];
    v7 = v5 << 6;
    if (v6 == a1 + 10)
    {
      v10 = malloc_type_malloc(v5 << 6, 0x30AD5EEDuLL);
      if (v7)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        generate_cold_1();
      }

      a1[4] = v10;
      memcpy(v10, a1 + 10, 32 * a1[2]);
    }

    else
    {
      v8 = malloc_type_realloc(v6, v5 << 6, 0x97E6413uLL);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        appendValueGenerationData_cold_1();
      }

      a1[4] = v8;
    }

    a1[3] = 2 * v5;
    v5 = a1[2];
  }

  v12 = a1[4];
  a1[2] = v5 + 1;
  v13 = (v12 + 32 * v5);
  result = *a2;
  v15 = *(a2 + 16);
  *v13 = *a2;
  v13[1] = v15;
  return result;
}

CFArrayRef parseAndCreateRecursively(void *a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
LABEL_79:
    v45 = &v3[-*a1];
    v46 = 1;
LABEL_80:
    v14 = CFStringCreateWithFormat(0, 0, @"Out of bounds: at offset %lu, trying to read %lu bytes", v45, v46);
LABEL_81:
    v7 = 0;
    a1[262] = v14;
LABEL_82:
    v62 = *MEMORY[0x277D85DE8];
    return v7;
  }

  else
  {
    v4 = v2 + 1;
    a1[1] = v2 + 1;
    v5 = *v2;
    switch(*v2)
    {
      case 0u:
        v48 = *MEMORY[0x277D85DE8];
        v49 = MEMORY[0x277CBED10];
        goto LABEL_50;
      case 1u:
        v50 = *MEMORY[0x277D85DE8];
        v49 = MEMORY[0x277CBED28];
LABEL_50:
        v12 = *v49;
        goto LABEL_13;
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
        v12 = numbers[v5 - 2];
        v13 = *MEMORY[0x277D85DE8];
LABEL_13:

        return CFRetain(v12);
      case 0xCu:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        LOBYTE(valuePtr) = v2[1];
        v32 = kCFNumberSInt8Type;
        goto LABEL_46;
      case 0xDu:
        if ((v3 - v4) <= 1)
        {
          goto LABEL_66;
        }

        v40 = v2 + 3;
        v41 = *(v2 + 1);
        a1[1] = v40;
        LOWORD(valuePtr) = v41;
        v32 = kCFNumberSInt16Type;
        goto LABEL_46;
      case 0xEu:
        if ((v3 - v4) <= 3)
        {
          goto LABEL_43;
        }

        v42 = *(v2 + 1);
        a1[1] = v2 + 5;
        LODWORD(valuePtr) = v42;
        v32 = kCFNumberSInt32Type;
        goto LABEL_46;
      case 0xFu:
        if ((v3 - v4) <= 7)
        {
          goto LABEL_47;
        }

        v47 = *(v2 + 1);
        a1[1] = v2 + 9;
        *&valuePtr = v47;
        v32 = kCFNumberSInt64Type;
        goto LABEL_46;
      case 0x10u:
        if ((v3 - v4) > 0xF)
        {
          v30 = *(v2 + 1);
          a1[1] = v2 + 9;
          *(&valuePtr + 1) = v30;
          v31 = *(v2 + 9);
          a1[1] = v2 + 17;
          *&valuePtr = v31;
          v32 = kCFNumberMaxType|kCFNumberSInt8Type;
          goto LABEL_46;
        }

        v45 = &v4[-*a1];
        v46 = 16;
        goto LABEL_80;
      case 0x11u:
        if ((v3 - v4) <= 3)
        {
LABEL_43:
          v45 = &v4[-*a1];
          v46 = 4;
          goto LABEL_80;
        }

        v44 = *(v2 + 1);
        a1[1] = v2 + 5;
        LODWORD(valuePtr) = v44;
        v32 = kCFNumberFloat32Type;
LABEL_46:
        ArrayWithBuffer = CFNumberCreate(0, v32, &valuePtr);
LABEL_11:
        v7 = ArrayWithBuffer;
        goto LABEL_82;
      case 0x12u:
        if ((v3 - v4) <= 7)
        {
          goto LABEL_47;
        }

        v43 = *(v2 + 1);
        a1[1] = v2 + 9;
        *&valuePtr = v43;
        v32 = kCFNumberDoubleType;
        goto LABEL_46;
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
        v6 = (v5 - 19);
        if (a1[4] > v6)
        {
          v7 = *(a1[3] + 8 * v6);
          CFRetain(v7);
          goto LABEL_82;
        }

        v14 = CFStringCreateWithFormat(0, 0, @"Invalid string index: %lu", v6);
        goto LABEL_81;
      case 0x23u:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v55 = v2[1];
        goto LABEL_62;
      case 0x24u:
        if ((v3 - v4) <= 1)
        {
LABEL_66:
          v45 = &v4[-*a1];
          v46 = 2;
          goto LABEL_80;
        }

        v55 = *(v2 + 1);
        a1[1] = v2 + 3;
LABEL_62:
        v57 = *MEMORY[0x277D85DE8];
LABEL_63:

        return getParsedString(a1, v55);
      case 0x25u:
        if ((v3 - v4) <= 5)
        {
          goto LABEL_88;
        }

        v51 = *(v2 + 1);
        a1[1] = v2 + 5;
        v52 = v2[5];
        v53 = v2[6];
        a1[1] = v2 + 7;
        v54 = *MEMORY[0x277D85DE8];
        v55 = v51 | (v52 << 32) | (v53 << 40);
        goto LABEL_63;
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
        v9 = *MEMORY[0x277D85DE8];
        v10 = (v5 - 38);
        goto LABEL_7;
      case 0x36u:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v10 = v2[1];
        v25 = *MEMORY[0x277D85DE8];
        goto LABEL_7;
      case 0x37u:
        if ((v3 - v4) <= 5)
        {
          goto LABEL_88;
        }

        v26 = *(v2 + 1);
        a1[1] = v2 + 5;
        v27 = v2[5];
        v28 = v2[6];
        a1[1] = v2 + 7;
        v29 = *MEMORY[0x277D85DE8];
        v10 = v26 | (v27 << 32) | (v28 << 40);
LABEL_7:

        return readASCIIString(a1, v10);
      case 0x38u:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v24 = v2[1];
        v56 = *MEMORY[0x277D85DE8];
        goto LABEL_57;
      case 0x39u:
        if ((v3 - v4) <= 5)
        {
          goto LABEL_88;
        }

        v20 = *(v2 + 1);
        a1[1] = v2 + 5;
        v21 = v2[5];
        v22 = v2[6];
        a1[1] = v2 + 7;
        v23 = *MEMORY[0x277D85DE8];
        v24 = v20 | (v21 << 32) | (v22 << 40);
LABEL_57:

        return readUnicode16String(a1, v24);
      case 0x3Au:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v58 = v2[1];
        v59 = *MEMORY[0x277D85DE8];
        goto LABEL_85;
      case 0x3Bu:
        if ((v3 - v4) <= 5)
        {
          goto LABEL_88;
        }

        v63 = *(v2 + 1);
        a1[1] = v2 + 5;
        v64 = v2[5];
        v65 = v2[6];
        a1[1] = v2 + 7;
        v66 = *MEMORY[0x277D85DE8];
        v58 = v63 | (v64 << 32) | (v65 << 40);
LABEL_85:

        return readData(a1, v58);
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
        *&v74 = 0;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        valuePtr = 0u;
        ArrayWithBuffer = parseAndCreateArrayWithBuffer(a1, &valuePtr, (v5 - 60));
        goto LABEL_11;
      case 0x4Cu:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v39 = v2[1];
        v60 = *MEMORY[0x277D85DE8];
        goto LABEL_71;
      case 0x4Du:
        if ((v3 - v4) <= 5)
        {
          goto LABEL_88;
        }

        v35 = *(v2 + 1);
        a1[1] = v2 + 5;
        v36 = v2[5];
        v37 = v2[6];
        a1[1] = v2 + 7;
        v38 = *MEMORY[0x277D85DE8];
        v39 = v35 | (v36 << 32) | (v37 << 40);
LABEL_71:

        return parseAndCreateArray(a1, v39);
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        valuePtr = 0u;
        ArrayWithBuffer = parseAndCreateDictionaryWithBuffer(a1, &valuePtr, (v5 - 78));
        goto LABEL_11;
      case 0x5Eu:
        if (v3 == v4)
        {
          goto LABEL_79;
        }

        a1[1] = v2 + 2;
        v19 = v2[1];
        v61 = *MEMORY[0x277D85DE8];
        goto LABEL_76;
      case 0x5Fu:
        if ((v3 - v4) <= 5)
        {
LABEL_88:
          v45 = &v4[-*a1];
          v46 = 6;
          goto LABEL_80;
        }

        v15 = *(v2 + 1);
        a1[1] = v2 + 5;
        v16 = v2[5];
        v17 = v2[6];
        a1[1] = v2 + 7;
        v18 = *MEMORY[0x277D85DE8];
        v19 = v15 | (v16 << 32) | (v17 << 40);
LABEL_76:

        return parseDictionary(a1, v19);
      case 0x60u:
        if ((v3 - v4) <= 7)
        {
LABEL_47:
          v45 = &v4[-*a1];
          v46 = 8;
          goto LABEL_80;
        }

        v33 = *(v2 + 1);
        a1[1] = v2 + 9;
        v34 = *MEMORY[0x277D85DE8];

        result = CFDateCreate(0, v33);
        break;
      default:
        v14 = CFStringCreateWithFormat(0, 0, @"Wrong value kind: %u", *v2);
        goto LABEL_81;
    }
  }

  return result;
}

const void *getParsedString(void *a1, unint64_t a2)
{
  if (a1[4] <= a2)
  {
    v2 = 0;
    a1[262] = CFStringCreateWithFormat(0, 0, @"Invalid string index: %lu", a2);
  }

  else
  {
    v2 = *(a1[3] + 8 * a2);
    CFRetain(v2);
  }

  return v2;
}

CFStringRef readASCIIString(void *a1, unint64_t numBytes)
{
  v4 = a1[1];
  if (a1[2] - v4 >= numBytes)
  {
    v5 = CFStringCreateWithBytes(0, v4, numBytes, 0x600u, 0);
    a1[1] += numBytes;
    addParsedString(a1, v5);
  }

  else
  {
    v5 = 0;
    a1[262] = CFStringCreateWithFormat(0, 0, @"Out of bounds: at offset %lu, trying to read %lu bytes", &v4[-*a1], numBytes);
  }

  return v5;
}

CFStringRef readUnicode16String(void *a1, CFIndex numChars)
{
  v4 = 2 * numChars;
  v5 = a1[1];
  if (a1[2] - v5 >= (2 * numChars))
  {
    v6 = CFStringCreateWithCharacters(0, v5, numChars);
    a1[1] += v4;
    addParsedString(a1, v6);
  }

  else
  {
    v6 = 0;
    a1[262] = CFStringCreateWithFormat(0, 0, @"Out of bounds: at offset %lu, trying to read %lu bytes", v5 - *a1, v4);
  }

  return v6;
}

CFDataRef readData(void *a1, unint64_t length)
{
  v4 = a1[1];
  if (a1[2] - v4 >= length)
  {
    result = CFDataCreate(0, v4, length);
    a1[1] += length;
  }

  else
  {
    a1[262] = CFStringCreateWithFormat(0, 0, @"Out of bounds: at offset %lu, trying to read %lu bytes", &v4[-*a1], length);
    return 0;
  }

  return result;
}

CFArrayRef parseAndCreateArrayWithBuffer(int a1, const void **values, CFIndex numValues)
{
  v3 = numValues;
  v4 = values;
  if (numValues)
  {
    v6 = 0;
    while (1)
    {
      Recursively = parseAndCreateRecursively(a1);
      if (!Recursively)
      {
        break;
      }

      v4[v6++] = Recursively;
      if (v3 == v6)
      {
        v8 = CFArrayCreate(0, v4, v3, MEMORY[0x277CBF128]);
        do
        {
          v9 = *v4++;
          CFRelease(v9);
          --v3;
        }

        while (v3);
        return v8;
      }
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        CFRelease(v4[i]);
      }
    }

    return 0;
  }

  else
  {
    v10 = MEMORY[0x277CBF128];

    return CFArrayCreate(0, values, 0, v10);
  }
}

CFArrayRef parseAndCreateArray(void *a1, CFIndex a2)
{
  v4 = 8 * a2;
  v5 = malloc_type_malloc(8 * a2, 0x6E881D31uLL);
  if (v5)
  {
    v6 = v5;
    ArrayWithBuffer = parseAndCreateArrayWithBuffer(a1, v5, a2);
    free(v6);
    return ArrayWithBuffer;
  }

  else
  {
    a1[262] = CFStringCreateWithFormat(0, 0, @"Out of memory: at offset %lu, failed to allocate %llu bytes", a1[1] - *a1, v4);
    return 0;
  }
}

CFDictionaryRef parseAndCreateDictionaryWithBuffer(int a1, const void **keys, CFIndex numValues)
{
  v4 = keys;
  v5 = 2 * numValues;
  if (2 * numValues)
  {
    v7 = 0;
    while (1)
    {
      Recursively = parseAndCreateRecursively(a1);
      if (!Recursively)
      {
        break;
      }

      v4[v7++] = Recursively;
      if (v5 == v7)
      {
        v9 = CFDictionaryCreate(0, v4, &v4[numValues], numValues, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        do
        {
          v10 = *v4++;
          CFRelease(v10);
          --v5;
        }

        while (v5);
        return v9;
      }
    }

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        CFRelease(v4[i]);
      }
    }

    return 0;
  }

  else
  {
    v11 = &keys[numValues];
    v12 = MEMORY[0x277CBF138];
    v13 = MEMORY[0x277CBF150];

    return CFDictionaryCreate(0, keys, v11, numValues, v12, v13);
  }
}

CFDictionaryRef parseDictionary(void *a1, CFIndex a2)
{
  v4 = 16 * a2;
  v5 = malloc_type_malloc(16 * a2, 0x6E881D31uLL);
  if (v5)
  {
    v6 = v5;
    DictionaryWithBuffer = parseAndCreateDictionaryWithBuffer(a1, v5, a2);
    free(v6);
    return DictionaryWithBuffer;
  }

  else
  {
    a1[262] = CFStringCreateWithFormat(0, 0, @"Out of memory: at offset %lu, failed to allocate %llu bytes", a1[1] - *a1, v4);
    return 0;
  }
}

CFTypeRef addParsedString(void *a1, CFTypeRef cf)
{
  v4 = a1[4];
  if (v4 == a1[5])
  {
    v5 = a1[3];
    v6 = 16 * v4;
    if (v5 == a1 + 6)
    {
      v9 = malloc_type_malloc(16 * v4, 0x30AD5EEDuLL);
      if (v6)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        generate_cold_1();
      }

      a1[3] = v9;
      memcpy(v9, a1 + 6, 8 * a1[4]);
    }

    else
    {
      v7 = malloc_type_realloc(v5, 16 * v4, 0x97E6413uLL);
      if (v6)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        appendValueGenerationData_cold_1();
      }

      a1[3] = v7;
    }

    a1[5] = 2 * v4;
  }

  result = CFRetain(cf);
  v12 = a1[3];
  v13 = a1[4];
  a1[4] = v13 + 1;
  *(v12 + 8 * v13) = result;
  return result;
}

uint64_t frameHeader(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    frameHeader_cold_1();
  }

  return *a2;
}

void sub_23B3159DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B315DDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_23B3170C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id wc_log()
{
  if (wc_log_onceToken != -1)
  {
    wc_log_cold_1();
  }

  v1 = wc_log___logger;

  return v1;
}

uint64_t __wc_log_block_invoke()
{
  wc_log___logger = os_log_create("com.apple.wcd", "WC");

  return MEMORY[0x2821F96F8]();
}

id wc_pushkit_log()
{
  if (wc_pushkit_log_onceToken != -1)
  {
    wc_pushkit_log_cold_1();
  }

  v1 = wc_pushkit_log___logger;

  return v1;
}

uint64_t __wc_pushkit_log_block_invoke()
{
  wc_pushkit_log___logger = os_log_create("com.apple.wcd", "PushKit");

  return MEMORY[0x2821F96F8]();
}

void WCDashboardLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = WCDashboardClient();
  [v10 logv:a1 args:&a9];
}

id WCDashboardClient()
{
  if (WCDashboardClient_onceToken != -1)
  {
    WCDashboardClient_cold_1();
  }

  v1 = WCDashboardClient_client;

  return v1;
}

void WCDashboardLogJSON(void *a1)
{
  v1 = a1;
  v2 = WCDashboardClient();
  [v2 logJSON:v1];
}

uint64_t __WCDashboardClient_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D02858]);
  v1 = WCDashboardClient_client;
  WCDashboardClient_client = v0;

  v2 = WCDashboardClient_client;

  return [v2 activate];
}

id WCTransferIdentifierFromComplicationIdentifier(void *a1)
{
  v1 = [a1 stringByAppendingString:@"current-complication"];
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [v1 dataUsingEncoding:4];
  v4 = [v2 initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
  v5 = [v4 UUIDString];

  return v5;
}

id WCSerializePayloadDictionary(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = PizBufGenerateCompressed(a1, &v14);
  v4 = v14;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v19 = @"NSDebugDescription";
    v20[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v8 = [v6 wcErrorWithCode:7010 userInfo:v7];

    if (v8)
    {
      if (a2)
      {
        v9 = v8;
        *a2 = v8;
      }

      v3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "YES";
    if (!v3)
    {
      v11 = "NO";
    }

    *buf = 136446466;
    v16 = "NSData *WCSerializePayloadDictionary(NSDictionary<NSString *,id> *__strong, NSError *__autoreleasing *)";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s success: %{public}s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

id WCDeserializePayloadData(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = PizBufParse(a1, &v15);
  v4 = v15;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = MEMORY[0x277CCA9B8];
  v20 = @"NSDebugDescription";
  v21[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v8 = [v6 wcErrorWithCode:7010 userInfo:v7];

  if (v8)
  {
    if (a2)
    {
      v9 = v8;
      v10 = 0;
      *a2 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_5:
    v11 = wc_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "YES";
      if (!v3)
      {
        v12 = "NO";
      }

      *buf = 136446466;
      v17 = "NSDictionary<NSString *,id> *WCDeserializePayloadData(NSData *__strong, NSError *__autoreleasing *)";
      v18 = 2082;
      v19 = v12;
      _os_log_impl(&dword_23B2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s success: %{public}s", buf, 0x16u);
    }

    v10 = v3;
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t WCIsDataAcceptableSizeForType(uint64_t a1, void *a2)
{
  v3 = [a2 length];

  return WCIsSizeAcceptableForType(a1, v3);
}

uint64_t WCIsSizeAcceptableForType(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2 < 262145;
  v5 = a2 <= 0x10000;
  if (a1)
  {
    v5 = 0;
  }

  if (a1 != 1)
  {
    v4 = v5;
  }

  if (a1 == 2)
  {
    v6 = a2 <= 0x10000;
  }

  else
  {
    v6 = v4;
  }

  v7 = wc_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    v12 = "BOOL WCIsSizeAcceptableForType(WCPayloadType, NSInteger)";
    v13 = 2082;
    v11 = 136446978;
    if (v6)
    {
      v8 = "YES";
    }

    v14 = v8;
    v15 = 2048;
    v16 = a1;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_23B2FA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s acceptable: %{public}s, type: %lu, size: %lu", &v11, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t WCIsFileDirectory(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v1 = *MEMORY[0x277CBE868];
  v12 = 0;
  v2 = [a1 getResourceValue:&v13 forKey:v1 error:&v12];
  v3 = v13;
  v4 = v12;
  if (v2)
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 BOOLValue];
      v7 = "NO";
      if (v6)
      {
        v7 = "YES";
      }

      *buf = 136446466;
      v15 = "BOOL WCIsFileDirectory(NSURL *__strong)";
      v16 = 2082;
      v17 = v7;
      _os_log_impl(&dword_23B2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s setting isDir %{public}s", buf, 0x16u);
    }

    v2 = [v3 BOOLValue];
  }

  v8 = wc_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "NO";
    if (v2)
    {
      v9 = "YES";
    }

    *buf = 136446466;
    v15 = "BOOL WCIsFileDirectory(NSURL *__strong)";
    v16 = 2082;
    v17 = v9;
    _os_log_impl(&dword_23B2FA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s returning isDir %{public}s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

id WCCheckFileAndCreateExtensionForProcess(void *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (isAllowedFileForProcess(v3, a2))
  {
    [v3 fileSystemRepresentation];
    v4 = sandbox_extension_issue_file();
    if (v4)
    {
      v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v4 length:strlen(v4) + 1];
      goto LABEL_9;
    }

    v6 = wc_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 path];
      v11 = *__error();
      v8 = NSPrintF();
      *buf = 136446722;
      v13 = "NSData *WCCheckFileAndCreateExtensionForProcess(NSURL *__strong, pid_t)";
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to issue sandbox extension for file %{public}@ due to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v6 = wc_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = "NSData *WCCheckFileAndCreateExtensionForProcess(NSURL *__strong, pid_t)";
      _os_log_impl(&dword_23B2FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s File is not allowed", buf, 0xCu);
    }
  }

  v5 = 0;
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL isAllowedFileForProcess(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isFileURL];
    v6 = 0;
    if ((a2 & 0x80000000) == 0 && v5)
    {
      v7 = [v4 path];
      [v7 fileSystemRepresentation];

      v8 = *MEMORY[0x277D861D8];
      v6 = sandbox_check() == 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t WCConsumeSandboxToken(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && (v6 = malloc_type_malloc([v4 length], 0x100004077774924uLL)) != 0)
  {
    v7 = v6;
    [v5 getBytes:v6 length:{objc_msgSend(v5, "length")}];
    v8 = sandbox_extension_consume();
    if (v8 <= 0)
    {
      v9 = wc_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v3 path];
        v13 = 136446466;
        v14 = v7;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_23B2FA000, v9, OS_LOG_TYPE_DEFAULT, "Failed to consume sandbox extension %{public}s for fileURL %{public}@", &v13, 0x16u);
      }
    }

    free(v7);
  }

  else
  {
    v8 = -1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t WCCheckFileAndConsumeSandboxTokenForAuditToken(void *a1, void *a2, _OWORD *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 path];
  [v7 fileSystemRepresentation];

  v8 = *MEMORY[0x277D861D8];
  v9 = a3[1];
  *buf = *a3;
  v14 = v9;
  if (sandbox_check_by_audit_token())
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23B2FA000, v10, OS_LOG_TYPE_DEFAULT, "Failed audit token check", buf, 2u);
    }

    v11 = -1;
  }

  else
  {
    v11 = WCConsumeSandboxToken(v5, v6);
  }

  return v11;
}

uint64_t WCCheckFileAndConsumeSandboxTokenForProcessID(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (isAllowedFileForProcess(v5, a3))
  {
    v7 = WCConsumeSandboxToken(v5, v6);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id WCInboxURLInContainer(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a2;
  v5 = [v3 fileURLWithPath:@"Documents" isDirectory:1 relativeToURL:a1];
  v6 = [v5 URLByAppendingPathComponent:@"Inbox" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"com.apple.watchconnectivity" isDirectory:1];

  v8 = [v7 URLByAppendingPathComponent:v4 isDirectory:1];

  return v8;
}

id WCApplicationSupportURLInContainer(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a2;
  v5 = [v3 fileURLWithPath:@"Library" isDirectory:1 relativeToURL:a1];
  v6 = [v5 URLByAppendingPathComponent:@"Application Support" isDirectory:1];

  v7 = [v6 URLByAppendingPathComponent:@"com.apple.watchconnectivity" isDirectory:1];

  v8 = [v7 URLByAppendingPathComponent:v4 isDirectory:1];

  return v8;
}

id WCSessionFilesURLInContainer(uint64_t a1, void *a2)
{
  v2 = WCInboxURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"FileMetadata" isDirectory:1];

  return v3;
}

id WCTransferredFilesURLInContainer(uint64_t a1, void *a2)
{
  v2 = WCInboxURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"Files" isDirectory:1];

  return v3;
}

id WCTransferredUserInfoInboxURLInContainer(uint64_t a1, void *a2)
{
  v2 = WCInboxURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"UserInfo" isDirectory:1];

  return v3;
}

id WCWatchDirectoryLocationInContainer(uint64_t a1, void *a2)
{
  v2 = WCApplicationSupportURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"WatchContent" isDirectory:1];

  return v3;
}

id WCInboxAppContextFolderURLInContainer(uint64_t a1, void *a2)
{
  v2 = WCInboxURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"ApplicationContext" isDirectory:1];

  return v3;
}

id WCFileTransfersURLInContainer(uint64_t a1, void *a2)
{
  v2 = WCApplicationSupportURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"FileTransfers" isDirectory:1];

  return v3;
}

id WCUserInfoTransfersInContainer(uint64_t a1, void *a2)
{
  v2 = WCApplicationSupportURLInContainer(a1, a2);
  v3 = [v2 URLByAppendingPathComponent:@"UserInfoTransfers" isDirectory:1];

  return v3;
}

void WCDeleteItemAtURL(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [v1 path];
    *buf = 136446466;
    v11 = "void WCDeleteItemAtURL(NSURL *__strong)";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtURL:v1 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0 && v6 && [v6 code] != -1100)
  {
    v7 = wc_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      WCDeleteItemAtURL_cold_1(v1, v6, v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id WCCompactStringFromCollection(void *a1)
{
  v1 = a1;
  v2 = [v1 description];
  v3 = [v1 conformsToProtocol:&unk_284E04380];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"((){4})|\\\\+n|\n" options:0 error:0];
    v5 = [v4 stringByReplacingMatchesInString:v2 options:0 range:0 withTemplate:{objc_msgSend(v2, "length"), &stru_284DF9400}];

    v2 = [v5 stringByReplacingOccurrencesOfString:@"\\" withString:@"""];
  }

  return v2;
}

void sub_23B31E3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B31E5C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23B31EA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23B31EE28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

uint64_t LZ4_compress_generic(uint64_t a1, char *__src, _BYTE *a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a4 > 0x7E000000)
  {
    return 0;
  }

  v13 = *(a1 + 16408);
  v14 = &__src[-v13];
  if (a8 == 1)
  {
    v15 = &__src[-v13];
    goto LABEL_6;
  }

  v15 = __src;
  v16 = __src;
  if (a8 == 2)
  {
    v15 = __src;
LABEL_6:
    v16 = &__src[-*(a1 + 0x4000)];
  }

  if (a4 >= 0x1000B && a7 == 2)
  {
    return 0;
  }

  v86 = &__src[a4];
  v18 = a3;
  v19 = __src;
  if (a4 >= 0xD)
  {
    v26 = *(a1 + 16392);
    v27 = a7 == 2 ? 13 : 12;
    v28 = 40 - v27;
    v29 = __src - v16;
    v30 = -1 << v27;
    v31 = ((0xCF1BBCDCBBLL * *__src) >> v28) & ~v30;
    if (a7 == 2)
    {
      *(a1 + 2 * v31) = v29;
    }

    else
    {
      *(a1 + 4 * v31) = v29;
    }

    v18 = a3;
    v19 = __src;
    if (a4 != 13)
    {
      v33 = 0;
      v18 = a3;
      v88 = &v26[v13];
      v34 = &v26[v13] - __src;
      v35 = a9;
      v36 = (v86 - 12);
      v89 = &a3[a5];
      v37 = ~v30;
      v38 = (a10 << 6) | 1;
      v39 = a10 & 0x3FFFFFF;
      v40 = __src + 2;
      v19 = __src;
      v91 = v28;
      v92 = v14;
      v90 = v34;
      v95 = v37;
      v94 = a8;
      v93 = v26;
LABEL_29:
      v41 = (v19 + 1);
      v42 = *(v19 + 1);
      v43 = v38;
      while (1)
      {
        v44 = v41;
        v41 = v40;
        v45 = ((0xCF1BBCDCBBLL * v42) >> v28) & v37;
        if (a7 == 1)
        {
          v46 = *(a1 + 4 * v45);
        }

        else
        {
          v46 = *(a1 + 2 * v45);
        }

        v47 = &v16[v46];
        v48 = &v16[v46] >= __src;
        if (&v16[v46] >= __src)
        {
          v49 = 0;
        }

        else
        {
          v49 = v34;
        }

        if (v48)
        {
          v50 = __src;
        }

        else
        {
          v50 = v26;
        }

        if (a8 == 2)
        {
          v33 = v49;
          v15 = v50;
        }

        v42 = *v41;
        v51 = v44 - v16;
        if (a7 == 2)
        {
          *(a1 + 2 * v45) = v51;
        }

        else
        {
          *(a1 + 4 * v45) = v51;
        }

        if (v35 != 1 || v47 >= v14)
        {
          v53 = a7 == 2 || v47 + 0xFFFF >= v44;
          if (v53 && *(v47 + v33) == *v44)
          {
            break;
          }
        }

        v40 = v41 + v39;
        v39 = v43++ >> 6;
        if (v40 > v36)
        {
          goto LABEL_12;
        }
      }

      if (v44 > v19 && v47 + v33 > v15)
      {
        v55 = v33 - 1;
        v56 = v44 - 1;
        while (*v56 == *(v47 + v55))
        {
          v57 = v47 - 1;
          v58 = v56 - 1;
          v59 = v56-- > v19 && v47 + v55 > v15;
          --v47;
          if (!v59)
          {
            v44 = v58 + 1;
            v47 = v57;
            goto LABEL_70;
          }
        }

        v44 = v56 + 1;
      }

LABEL_70:
      v60 = v44 - v19;
      v61 = v18 + 1;
      if (!a6 || v61 + v60 + v60 / 0xFF + 8 <= v89)
      {
        v62 = v60 - 15;
        if (v60 < 0xF)
        {
          *v18 = 16 * v60;
        }

        else
        {
          *v18 = -16;
          if (v62 >= 255)
          {
            if (v62 >= 0x1FD)
            {
              v62 = 509;
            }

            v97 = (v44 - v19 - v62 + 239) / 0xFFu;
            v100 = v18;
            memset(v61, 255, v97 + 1);
            v18 = v100;
            v26 = v93;
            a8 = v94;
            v61 = &v100[v97 + 2];
            LOBYTE(v62) = v44 - v19 + v97 - 14;
          }

          *v61 = v62;
          v61 = (v61 + 1);
        }

        v63 = (v61 + v60);
        do
        {
          v64 = *v19;
          v19 += 8;
          *v61++ = v64;
        }

        while (v61 < v63);
        v19 = v44;
        v65 = (v86 - 5);
        while (1)
        {
          *v63 = v19 - v47;
          v98 = v18;
          if (a8 == 2 && v15 == v26)
          {
            if (&v88[-v47 - v33 + v19] <= v65)
            {
              v65 = &v88[-v47 - v33 + v19];
            }

            v67 = LZ4_count(v19 + 4, (v47 + v33 + 4), v65);
            v19 += v67 + 4;
            if (v19 == v65)
            {
              v65 = (v86 - 5);
              v68 = LZ4_count(v19, __src, (v86 - 5));
              v67 += v68;
              v19 += v68;
            }

            else
            {
              v65 = (v86 - 5);
            }
          }

          else
          {
            v67 = LZ4_count(v19 + 4, (v47 + 4), v65);
            v19 += v67 + 4;
          }

          if (a6 && v63 + (v67 >> 8) + 8 > v89)
          {
            return 0;
          }

          v69 = *v98;
          v70 = v67 - 15;
          if (v67 < 0xF)
          {
            *v98 = v69 + v67;
            a8 = v94;
            v73 = v95;
            v14 = v92;
            v26 = v93;
            v34 = v90;
            v28 = v91;
            v18 = v63 + 1;
            v35 = a9;
            v36 = (v86 - 12);
          }

          else
          {
            *v98 = v69 + 15;
            v71 = v63 + 1;
            if (v70 >= 0x1FE)
            {
              v72 = v67 - 525;
              v99 = v72 / 0x1FE;
              memset(v63 + 1, 255, v99 * 2 + 2);
              v70 = v72 % 0x1FE;
              v65 = (v86 - 5);
              v71 = &v63[v99 + 2];
            }

            a8 = v94;
            v73 = v95;
            v14 = v92;
            v26 = v93;
            v34 = v90;
            v28 = v91;
            v35 = a9;
            v36 = (v86 - 12);
            if (v70 >= 0xFF)
            {
              *v71++ = -1;
              LOBYTE(v70) = v70 + 1;
            }

            *v71 = v70;
            v18 = v71 + 1;
          }

          if (v19 > v36)
          {
            goto LABEL_12;
          }

          v74 = ((0xCF1BBCDCBBLL * *(v19 - 2)) >> v28) & v73;
          v75 = v19 - 2 - v16;
          if (a7 == 2)
          {
            *(a1 + 2 * v74) = v75;
            v76 = ((0xCF1BBCDCBBLL * *v19) >> v28) & v73;
          }

          else
          {
            *(a1 + 4 * v74) = v75;
            v76 = ((0xCF1BBCDCBBLL * *v19) >> v28) & v73;
            if (a7 == 1)
            {
              v47 = &v16[*(a1 + 4 * v76)];
              if (v47 >= __src)
              {
                v77 = 0;
              }

              else
              {
                v77 = v34;
              }

              if (v47 >= __src)
              {
                v78 = __src;
              }

              else
              {
                v78 = v26;
              }

              if (a8 == 2)
              {
                v33 = v77;
                v15 = v78;
              }

              v79 = v19 - v16;
              goto LABEL_124;
            }
          }

          v47 = &v16[*(a1 + 2 * v76)];
          if (v47 >= __src)
          {
            v80 = 0;
          }

          else
          {
            v80 = v34;
          }

          if (v47 >= __src)
          {
            v81 = __src;
          }

          else
          {
            v81 = v26;
          }

          if (a8 == 2)
          {
            v33 = v80;
            v15 = v81;
          }

          v79 = v19 - v16;
          if (a7 == 2)
          {
            *(a1 + 2 * v76) = v79;
            goto LABEL_125;
          }

LABEL_124:
          *(a1 + 4 * v76) = v79;
LABEL_125:
          v83 = (v47 >= v14 || v35 != 1) && v47 + 0xFFFF >= v19;
          if (!v83 || *(v47 + v33) != *v19)
          {
            v40 = (v19 + 2);
            v37 = v95;
            v39 = a10 & 0x3FFFFFF;
            v38 = (a10 << 6) | 1;
            if (v19 + 2 <= v36)
            {
              goto LABEL_29;
            }

            goto LABEL_12;
          }

          *v18 = 0;
          v63 = v18 + 1;
        }
      }

      return 0;
    }
  }

LABEL_12:
  v20 = &v86[-v19];
  if (a6)
  {
    if (v18 - a3 + v20 + (v20 + 240) / 0xFF + 1 > a5)
    {
      return 0;
    }
  }

  v22 = v20 - 15;
  if (v20 < 0xF)
  {
    *v18 = 16 * v20;
  }

  else
  {
    *v18 = -16;
    v23 = v18 + 1;
    if (v22 >= 0xFF)
    {
      v24 = &__src[a4 - v19 - 270];
      v25 = v18;
      memset(v23, 255, v24 / 0xFF + 1);
      v22 = v24 % 0xFF;
      v23 = &v25[v24 / 0xFF + 2];
    }

    *v23 = v22;
    v18 = v23;
  }

  v32 = v18 + 1;
  memcpy(v18 + 1, v19, v20);
  return (v32 + v20 - a3);
}

void WCDeleteItemAtURL_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 path];
  v5 = NSPrintF();
  *buf = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_fault_impl(&dword_23B2FA000, a3, OS_LOG_TYPE_FAULT, "error removing item %{public}@ due to %{public}@", buf, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}