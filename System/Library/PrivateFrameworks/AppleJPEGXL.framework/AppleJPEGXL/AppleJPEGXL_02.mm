float *sub_240AD0D04(uint64_t a1, uint64_t a2, float *__src, unsigned int a4)
{
  v6 = *(a1 + 4);
  v7 = (v6 >> 3) & 0xF;
  v8 = (v6 >> 7) & 7;
  v9 = (WORD1(v6) & 0x1F) - 5;
  v10 = 1.0;
  if (v9 <= 0x18)
  {
    v10 = dbl_240C14F58[v9];
  }

  v11 = (v6 >> 14) & 1;
  if ((v6 & 7) != 0)
  {
    v12 = *(a1 + 4) & 7;
  }

  else
  {
    v12 = 8;
  }

  if (!v7)
  {
    v23 = 0.0;
    if (v8)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = 0;
  v14 = (v6 >> 10) & 1;
  if (v14 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v6 >> 7) & 7;
  }

  v16 = &__src[v15];
  v17 = 4 * v7;
  v18 = v7 - 1;
  v19 = a4 / v12;
  do
  {
    if (v14)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v10 * *(a2 + 4 * v20);
    if ((v6 & 0x2000) != 0)
    {
      v21 = v10 - v21;
    }

    v22 = &__src[(v15 + v13) * v19];
    if ((v6 & 0x1000) == 0)
    {
      v22 = v16;
    }

    v23 = v21;
    *v22 = v23;
    ++v13;
    ++v16;
    --v18;
    v17 -= 4;
  }

  while (v17);
  if (!v8)
  {
LABEL_22:
    if (v11)
    {
      memmove(__src + 1, __src, 4 * (v7 - 1));
      *__src = v23;
      LODWORD(v6) = *(a1 + 4);
    }
  }

LABEL_24:
  if ((v6 & 0x1000) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = v7 + v8;
  }

  return &__src[v24];
}

uint64_t sub_240AD0E30(uint64_t a1, float32x2_t *a2, double *a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  if ((v4 & 0x1000) != 0)
  {
    v6 = a2->f32[1];
    *a3 = a2->f32[0] * 1.99996948;
    v7 = v4 & 7;
    if (!v7)
    {
      v7 = 8;
    }

    v8 = a4 / v7;
    a3[v8] = v6 * 1.99996948;
    a3[2 * v8] = a2[1].f32[0] * 1.99996948;
    return (a3 + 1);
  }

  else
  {
    *a3 = vmulq_f64(vcvtq_f64_f32(*a2), vdupq_n_s64(0x3FFFFFE000000000uLL));
    a3[2] = a2[1].f32[0] * 1.99996948;
    return a3 + ((v4 >> 4) & 0x38) + 24;
  }
}

uint64_t sub_240AD0EC8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  if ((v4 & 0x1000) != 0)
  {
    v6 = *(a1 + 4) & 7;
    if (!v6)
    {
      v6 = 8;
    }

    v7 = a4 / v6;
    v8 = *(a2 + 4);
    *a3 = *a2 * 100.0;
    *(a3 + 8 * v7) = v8 * 255.0 + -128.0;
    *(a3 + 16 * v7) = *(a2 + 8) * 255.0 + -128.0;
    return a3 + 8;
  }

  else
  {
    *a3 = *a2 * 100.0;
    *(a3 + 8) = vmlaq_f64(vdupq_n_s64(0xC060000000000000), vdupq_n_s64(0x406FE00000000000uLL), vcvtq_f64_f32(*(a2 + 4)));
    return a3 + ((v4 >> 4) & 0x38) + 24;
  }
}

uint64_t sub_240AD0F80(uint64_t a1, float *a2, float *a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  if ((v4 & 0x1000) != 0)
  {
    v6 = *(a1 + 4) & 7;
    if (!v6)
    {
      v6 = 8;
    }

    v7 = a4 / v6;
    *a3 = *a2 * 2.0;
    a3[v7] = a2[1] * 2.0;
    a3[2 * v7] = a2[2] * 2.0;
    return (a3 + 1);
  }

  else
  {
    *a3 = *a2 * 2.0;
    a3[1] = a2[1] * 2.0;
    a3[2] = a2[2] * 2.0;
    return a3 + ((v4 >> 5) & 0x1C) + 12;
  }
}

uint64_t sub_240AD1010(uint64_t a1, float *a2, float *a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  if ((v4 & 0x1000) != 0)
  {
    v8 = *(a1 + 4) & 7;
    if (!v8)
    {
      v8 = 8;
    }

    v9 = a4 / v8;
    *a3 = *a2 * 100.0;
    v10 = a2[1] * 255.0 + -128.0;
    a3[v9] = v10;
    v11 = a2[2] * 255.0 + -128.0;
    a3[2 * v9] = v11;
    return (a3 + 1);
  }

  else
  {
    *a3 = *a2 * 100.0;
    v5 = a2[1] * 255.0 + -128.0;
    a3[1] = v5;
    v6 = a2[2] * 255.0 + -128.0;
    a3[2] = v6;
    return a3 + ((v4 >> 5) & 0x1C) + 12;
  }
}

char *sub_240AD10E0(uint64_t a1, uint64_t a2, char *__src)
{
  v4 = *(a1 + 4);
  v5 = (v4 >> 3) & 0xF;
  v6 = (v4 >> 10) & 1;
  v7 = (v4 >> 7) & 7;
  v8 = (v4 >> 14) & 1;
  v9 = 2 * v7;
  if (v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2 * v7;
  }

  v11 = &__src[v10];
  if (v5)
  {
    v12 = 0;
    v13 = v5 - 1;
    do
    {
      if (v6)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v15 = *(a2 + 2 * v14);
      v16 = bswap32(v15) >> 16;
      if ((v4 & 0x800) != 0)
      {
        v15 = v16;
      }

      v17 = v15 ^ ((v4 << 18) >> 31);
      *v11 = v15 ^ ((4 * v4) >> 15);
      v11 += 2;
      ++v12;
      --v13;
    }

    while (v13 != -1);
  }

  else
  {
    LOWORD(v17) = 0;
  }

  if (v7)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8 == 0;
  }

  if (!v18)
  {
    memmove(__src + 2, __src, 2 * (v5 - 1));
    *__src = v17;
  }

  if (v6 == v8)
  {
    v19 = v9;
  }

  else
  {
    v19 = 0;
  }

  return &v11[v19];
}

uint64_t sub_240AD11B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  v5 = (v4 >> 3) & 0xF;
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + ((((v4 >> 7) & 7) * a4) & ((v4 << 21) >> 31)));
    v8 = v5 - 1;
    do
    {
      if ((v4 & 0x400) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      v10 = *(a2 + 2 * v9);
      v11 = bswap32(v10) >> 16;
      if ((v4 & 0x800) != 0)
      {
        LOWORD(v10) = v11;
      }

      *v7 = v10 ^ ((4 * v4) >> 15);
      v7 = (v7 + a4);
      ++v6;
      --v8;
    }

    while (v8 != -1);
  }

  return a3 + 2;
}

_WORD *sub_240AD1220(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = a2[5];
  a3[1] = a2[4];
  a3[2] = a2[3];
  a3[3] = a2[2];
  a3[4] = a2[1];
  a3[5] = *a2;
  return a3 + 6;
}

_WORD *sub_240AD1258(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
  a3[4] = a2[4];
  a3[5] = a2[5];
  return a3 + 6;
}

_WORD *sub_240AD1290(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  *a3 = bswap32(*a2) >> 16;
  a3[1] = bswap32(a2[1]) >> 16;
  a3[2] = bswap32(a2[2]) >> 16;
  a3[3] = bswap32(a2[3]) >> 16;
  return a3 + 4;
}

_WORD *sub_240AD12D8(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = a2[3];
  a3[1] = a2[2];
  a3[2] = a2[1];
  a3[3] = *a2;
  return a3 + 4;
}

_WORD *sub_240AD1300(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = ~*a2;
  a3[1] = ~a2[1];
  a3[2] = ~a2[2];
  a3[3] = ~a2[3];
  return a3 + 4;
}

_WORD *sub_240AD1338(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  a3[3] = a2[3];
  return a3 + 4;
}

_WORD *sub_240AD1360(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = a2[2];
  a3[1] = a2[1];
  a3[2] = *a2;
  return a3 + 4;
}

_WORD *sub_240AD1380(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a3[1] = *a2;
  a3[2] = a2[1];
  a3[3] = a2[2];
  return a3 + 4;
}

_WORD *sub_240AD13A0(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a3[1] = a2[2];
  a3[2] = a2[1];
  a3[3] = *a2;
  return a3 + 4;
}

_WORD *sub_240AD13C0(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  return a3 + 4;
}

_WORD *sub_240AD13E0(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  *a3 = bswap32(*a2) >> 16;
  a3[1] = bswap32(a2[1]) >> 16;
  a3[2] = bswap32(a2[2]) >> 16;
  return a3 + 3;
}

_WORD *sub_240AD1418(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = a2[2];
  a3[1] = a2[1];
  a3[2] = *a2;
  return a3 + 3;
}

_WORD *sub_240AD1438(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a3 = *a2;
  a3[1] = a2[1];
  a3[2] = a2[2];
  return a3 + 3;
}

uint64_t sub_240AD14B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 4);
  v5 = (v4 >> 3) & 0xF;
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + (((((v4 >> 10) ^ (v4 >> 14)) << 31) >> 31) & (((v4 >> 7) & 7) * a4)));
    v8 = v5 - 1;
    do
    {
      if ((v4 & 0x400) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      *v7 = ((v4 << 18) >> 31) ^ ((65281 * *(a2 + 2 * v9) + 0x800000) >> 24);
      v7 += a4;
      ++v6;
      --v8;
    }

    while (v8 != -1);
  }

  return a3 + 1;
}

char *sub_240AD1528(uint64_t a1, uint64_t a2, char *__src)
{
  v4 = *(a1 + 4);
  v5 = (v4 >> 3) & 0xF;
  v6 = (v4 >> 10) & 1;
  v7 = (v4 >> 7) & 7;
  v8 = (v4 >> 14) & 1;
  if (v6 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v4 >> 7) & 7;
  }

  v10 = &__src[v9];
  if (v5)
  {
    v11 = 0;
    v12 = (v4 << 18) >> 31;
    v13 = v5 - 1;
    do
    {
      if (v6)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = 65281 * *(a2 + 2 * v14) + 0x800000;
      v16 = v12 ^ HIBYTE(v15);
      *v10++ = v12 ^ HIBYTE(v15);
      ++v11;
      --v13;
    }

    while (v13 != -1);
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = v8 == 0;
  }

  if (!v17)
  {
    memmove(__src + 1, __src, v5 - 1);
    *__src = v16;
  }

  if (v6 == v8)
  {
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  return &v10[v18];
}

_BYTE *sub_240AD15EC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[2] + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * *a2 + 0x800000) >> 24;
  a3[3] = (65281 * a2[3] + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD163C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[3] + 0x800000) >> 24;
  a3[1] = (65281 * a2[2] + 0x800000) >> 24;
  a3[2] = (65281 * a2[1] + 0x800000) >> 24;
  a3[3] = (65281 * *a2 + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD168C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[3] + 0x800000) >> 24;
  a3[1] = (65281 * *a2 + 0x800000) >> 24;
  a3[2] = (65281 * a2[1] + 0x800000) >> 24;
  a3[3] = (65281 * a2[2] + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD16DC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (-65281 * *a2 - 8388609) >> 24;
  a3[1] = (-65281 * a2[1] - 8388609) >> 24;
  a3[2] = (-65281 * a2[2] - 8388609) >> 24;
  a3[3] = (-65281 * a2[3] - 8388609) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD172C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * *a2 + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * a2[2] + 0x800000) >> 24;
  a3[3] = (65281 * a2[3] + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD177C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[5] + 0x800000) >> 24;
  a3[1] = (65281 * a2[4] + 0x800000) >> 24;
  a3[2] = (65281 * a2[3] + 0x800000) >> 24;
  a3[3] = (65281 * a2[2] + 0x800000) >> 24;
  a3[4] = (65281 * a2[1] + 0x800000) >> 24;
  a3[5] = (65281 * *a2 + 0x800000) >> 24;
  return a3 + 6;
}

_BYTE *sub_240AD17EC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * *a2 + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * a2[2] + 0x800000) >> 24;
  a3[3] = (65281 * a2[3] + 0x800000) >> 24;
  a3[4] = (65281 * a2[4] + 0x800000) >> 24;
  a3[5] = (65281 * a2[5] + 0x800000) >> 24;
  return a3 + 6;
}

_BYTE *sub_240AD185C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[2] + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * *a2 + 0x800000) >> 24;
  return a3 + 3;
}

_BYTE *sub_240AD189C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  a3[1] = (65281 * a2[2] + 0x800000) >> 24;
  a3[2] = (65281 * a2[1] + 0x800000) >> 24;
  a3[3] = (65281 * *a2 + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD18DC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * a2[2] + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * *a2 + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD191C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  a3[1] = (65281 * *a2 + 0x800000) >> 24;
  a3[2] = (65281 * a2[1] + 0x800000) >> 24;
  a3[3] = (65281 * a2[2] + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD195C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * *a2 + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * a2[2] + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD199C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * *a2 + 0x800000) >> 24;
  a3[1] = (65281 * a2[1] + 0x800000) >> 24;
  a3[2] = (65281 * a2[2] + 0x800000) >> 24;
  return a3 + 3;
}

_BYTE *sub_240AD19DC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a3 = a2[4];
  a3[1] = a2[2];
  a3[2] = *a2;
  return a3 + 3;
}

_BYTE *sub_240AD19FC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  a3[1] = a2[4];
  a3[2] = a2[2];
  a3[3] = *a2;
  return a3 + 4;
}

_BYTE *sub_240AD1A1C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a3 = a2[4];
  a3[1] = a2[2];
  a3[2] = *a2;
  return a3 + 4;
}

_BYTE *sub_240AD1A3C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  a3[1] = *a2;
  a3[2] = a2[2];
  a3[3] = a2[4];
  return a3 + 4;
}

_BYTE *sub_240AD1A5C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a3 = *a2;
  a3[1] = a2[2];
  a3[2] = a2[4];
  return a3 + 4;
}

_BYTE *sub_240AD1A7C(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a3 = *a2;
  a3[1] = a2[2];
  a3[2] = a2[4];
  return a3 + 3;
}

_WORD *sub_240AD1A9C(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  *a3 = (16711936 * ((*a2 << 8) | 0x80u)) >> 32;
  a3[1] = (16711936 * ((a2[1] << 8) | 0x80u)) >> 32;
  a3[2] = (16711936 * ((a2[2] << 8) | 0x80u)) >> 32;
  return a3 + 3;
}

_BYTE *sub_240AD1AEC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  a3[1] = (65281 * ((16711936 * ((*a2 << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  a3[2] = (65281 * ((16711936 * ((a2[1] << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  a3[3] = (65281 * ((16711936 * ((a2[2] << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  return a3 + 4;
}

_BYTE *sub_240AD1B5C(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  *a3 = (65281 * ((16711936 * ((*a2 << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  a3[1] = (65281 * ((16711936 * ((a2[1] << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  a3[2] = (65281 * ((16711936 * ((a2[2] << 8) | 0x80u)) >> 32) + 0x800000) >> 24;
  return a3 + 3;
}

char *sub_240AD1C50(uint64_t a1, uint64_t a2, char *__src, unsigned int a4, double a5, float a6)
{
  v8 = *(a1 + 4);
  v9 = (v8 >> 3) & 0xF;
  v10 = (v8 >> 7) & 7;
  v11 = (WORD1(v8) & 0x1F) - 5;
  if (v11 > 0x18)
  {
    v12 = 65535.0;
  }

  else
  {
    v12 = flt_240C14EF0[v11];
  }

  v13 = (v8 >> 14) & 1;
  if ((v8 & 7) != 0)
  {
    v14 = *(a1 + 4) & 7;
  }

  else
  {
    v14 = 8;
  }

  if (!v9)
  {
    v23 = 0.0;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v15 = 0;
  v16 = (v8 >> 10) & 1;
  if (v16 == v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v8 >> 7) & 7;
  }

  v18 = &__src[2 * v17];
  v19 = 2 * v9;
  v20 = v9 - 1;
  v21 = a4 / v14;
  do
  {
    if (v16)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    LOWORD(a6) = *(a2 + 2 * v22);
    a6 = LODWORD(a6) / v12;
    if ((v8 & 0x2000) != 0)
    {
      a6 = v12 - a6;
    }

    v23 = a6;
    if ((v8 & 0x1000) != 0)
    {
      v24 = &__src[2 * (v17 + v15) * v21];
    }

    else
    {
      v24 = v18;
    }

    *v24 = word_240C145C0[LODWORD(a6) >> 23] + ((LODWORD(a6) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(a6) >> 23]);
    ++v15;
    v18 += 2;
    --v20;
    v19 -= 2;
  }

  while (v19);
  if (!v10)
  {
LABEL_24:
    if (v13)
    {
      memmove(__src + 2, __src, 2 * (v9 - 1));
      *__src = word_240C145C0[LODWORD(v23) >> 23] + ((LODWORD(v23) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(v23) >> 23]);
      LODWORD(v8) = *(a1 + 4);
    }
  }

LABEL_26:
  if ((v8 & 0x1000) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 2 * (v9 + v10);
  }

  return &__src[v25];
}

float *sub_240AD1DD0(uint64_t a1, uint64_t a2, float *__src, unsigned int a4, double a5, double a6)
{
  v8 = *(a1 + 4);
  v9 = (v8 >> 3) & 0xF;
  v10 = (v8 >> 7) & 7;
  v11 = (WORD1(v8) & 0x1F) - 5;
  if (v11 > 0x18)
  {
    v12 = 65535.0;
  }

  else
  {
    v12 = dbl_240C14E28[v11];
  }

  v13 = (v8 >> 14) & 1;
  if ((v8 & 7) != 0)
  {
    v14 = *(a1 + 4) & 7;
  }

  else
  {
    v14 = 8;
  }

  if (!v9)
  {
    v24 = 0.0;
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v15 = 0;
  v16 = (v8 >> 10) & 1;
  if (v16 == v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v8 >> 7) & 7;
  }

  v18 = &__src[v17];
  v19 = 4 * v9;
  v20 = v9 - 1;
  v21 = a4 / v14;
  do
  {
    if (v16)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    LOWORD(a6) = *(a2 + 2 * v22);
    a6 = *&a6 / v12;
    if ((v8 & 0x2000) != 0)
    {
      a6 = v12 - a6;
    }

    v23 = &__src[(v17 + v15) * v21];
    if ((v8 & 0x1000) == 0)
    {
      v23 = v18;
    }

    v24 = a6;
    *v23 = v24;
    ++v15;
    ++v18;
    --v20;
    v19 -= 4;
  }

  while (v19);
  if (!v10)
  {
LABEL_23:
    if (v13)
    {
      memmove(__src + 1, __src, 4 * (v9 - 1));
      *__src = v24;
      LODWORD(v8) = *(a1 + 4);
    }
  }

LABEL_25:
  if ((v8 & 0x1000) != 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v9 + v10;
  }

  return &__src[v25];
}

double *sub_240AD1F04(uint64_t a1, uint64_t a2, double *__src, unsigned int a4, double a5, double a6)
{
  v8 = *(a1 + 4);
  v9 = (v8 >> 3) & 0xF;
  v10 = (v8 >> 7) & 7;
  v11 = (WORD1(v8) & 0x1F) - 5;
  if (v11 > 0x18)
  {
    v12 = 65535.0;
  }

  else
  {
    v12 = dbl_240C14E28[v11];
  }

  v13 = (v8 >> 14) & 1;
  if ((v8 & 7) != 0)
  {
    v14 = *(a1 + 4) & 7;
  }

  else
  {
    v14 = 8;
  }

  if (!v9)
  {
    v23 = 0.0;
    if (v10)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v15 = 0;
  v16 = (v8 >> 10) & 1;
  if (v16 == v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v8 >> 7) & 7;
  }

  v18 = &__src[v17];
  v19 = 8 * v9;
  v20 = v9 - 1;
  v21 = a4 / v14;
  do
  {
    if (v16)
    {
      v22 = v20;
    }

    else
    {
      v22 = v15;
    }

    LOWORD(a6) = *(a2 + 2 * v22);
    a6 = *&a6 / v12;
    if ((v8 & 0x2000) != 0)
    {
      v23 = v12 - a6;
    }

    else
    {
      v23 = a6;
    }

    v24 = &__src[(v17 + v15) * v21];
    if ((v8 & 0x1000) == 0)
    {
      v24 = v18;
    }

    *v24 = v23;
    ++v15;
    ++v18;
    --v20;
    v19 -= 8;
  }

  while (v19);
  if (!v10)
  {
LABEL_24:
    if (v13)
    {
      memmove(__src + 1, __src, 8 * (v9 - 1));
      *__src = v23;
      LODWORD(v8) = *(a1 + 4);
    }
  }

LABEL_26:
  if ((v8 & 0x1000) != 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v9 + v10;
  }

  return &__src[v25];
}

uint64_t sub_240AD2034(uint64_t a1, unsigned __int16 *a2, float *a3, unsigned int a4)
{
  v5 = *(a1 + 4);
  if ((v5 & 0x1000) != 0)
  {
    v15 = 0uLL;
    v16 = 0.0;
    sub_240AD3CC4(&v15, a2);
    v9 = v15.f64[1];
    v10 = v15.f64[0];
    *a3 = v10;
    v11 = v5 & 7;
    if ((v5 & 7) == 0)
    {
      v11 = 8;
    }

    v12 = a4 / v11;
    v13 = v9;
    a3[v12] = v13;
    v14 = v16;
    a3[2 * v12] = v14;
    return (a3 + 1);
  }

  else
  {
    v15 = 0uLL;
    v16 = 0.0;
    sub_240AD3CC4(&v15, a2);
    *a3 = vcvt_f32_f64(v15);
    v6 = v16;
    a3[2] = v6;
    return a3 + ((v5 >> 5) & 0x1C) + 12;
  }
}

uint64_t sub_240AD20F4(uint64_t a1, _WORD *a2, float *a3, unsigned int a4, double a5, double a6, double a7, double a8, double a9)
{
  LOWORD(a5) = *a2;
  v9 = *&a5;
  LOWORD(a5) = a2[1];
  LOWORD(a9) = a2[2];
  v10 = *&a5 / 257.0 + -128.0;
  v11 = *&a9 / 257.0 + -128.0;
  v12 = *(a1 + 4);
  v13.f64[0] = v9 / 655.35;
  if ((v12 & 0x1000) != 0)
  {
    v16 = *(a1 + 4) & 7;
    if (!v16)
    {
      v16 = 8;
    }

    v17 = a4 / v16;
    v18 = v13.f64[0];
    *a3 = v18;
    v19 = v10;
    a3[v17] = v19;
    v20 = v11;
    a3[2 * v17] = v20;
    return (a3 + 1);
  }

  else
  {
    v13.f64[1] = v10;
    *a3 = vcvt_f32_f64(v13);
    v14 = v11;
    a3[2] = v14;
    return a3 + ((v12 >> 5) & 0x1C) + 12;
  }
}

unint64_t sub_240AD219C(uint64_t a1, unsigned __int16 *a2, float64x2_t *a3, unsigned int a4)
{
  v5 = *(a1 + 4);
  if ((v5 & 0x1000) != 0)
  {
    v12 = 0uLL;
    v13 = 0.0;
    sub_240AD3CC4(&v12, a2);
    v9 = v5 & 7;
    if ((v5 & 7) == 0)
    {
      v9 = 8;
    }

    v10 = a4 / v9;
    v11 = v12.f64[1];
    a3->f64[0] = v12.f64[0];
    a3->f64[v10] = v11;
    a3[v10].f64[0] = v13;
    return &a3->f64[1];
  }

  else
  {
    sub_240AD3CC4(a3, a2);
    return &a3[1].f64[1] + ((*(a1 + 4) >> 4) & 0x38);
  }
}

uint64_t sub_240AD2238(uint64_t a1, _WORD *a2, double *a3, int a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a1 + 4);
  LOWORD(a5) = *a2;
  v11 = 0x40847ACCCCCCCCCDLL;
  v10 = *&a5 / 655.35;
  LOWORD(v11) = a2[1];
  if ((v9 & 0x1000) != 0)
  {
    LOWORD(a9) = a2[2];
    *a3 = v10;
    a3[a4] = v11 / 257.0 + -128.0;
    a3[2 * a4] = *&a9 / 257.0 + -128.0;
    return (a3 + 1);
  }

  else
  {
    *a3 = v10;
    a3[1] = v11 / 257.0 + -128.0;
    LOWORD(v10) = a2[2];
    a3[2] = *&v10 / 257.0 + -128.0;
    return a3 + ((v9 >> 4) & 0x38) + 24;
  }
}

uint64_t sub_240AD22E8(unsigned int *a1, float *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  v11 = 1.0;
  if (v10 <= 0x18)
  {
    v11 = flt_240C15020[v10];
  }

  v12 = (v7 >> 14) & 1;
  if ((a1[1] & 7) != 0)
  {
    v13 = a1[1] & 7;
  }

  else
  {
    v13 = 8;
  }

  if (v8)
  {
    v14 = 0;
    v15 = (v7 >> 10) & 1;
    if (v15 == v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v7 >> 7) & 7;
    }

    v17 = (a3 + 2 * v16);
    v18 = 2 * v8;
    v19 = v8 - 1;
    v20 = a4 / v13;
    do
    {
      v21 = (a3 + 2 * (v16 + v14) * v20);
      if (v15)
      {
        v22 = v19;
      }

      else
      {
        v22 = v14;
      }

      if ((v7 & 0x1000) == 0)
      {
        v21 = v17;
      }

      v23 = COERCE_FLOAT(dword_240C144C0[*v21 >> 10] + dword_240C12440[(*v21 & 0x3FF) + word_240C14440[*v21 >> 10]]) / v11;
      if ((v7 & 0x2000) != 0)
      {
        v23 = 1.0 - v23;
      }

      __dst[v22] = v23;
      ++v14;
      ++v17;
      --v19;
      v18 -= 2;
    }

    while (v18);
  }

  if (!v9 && v12)
  {
    v24 = *__dst;
    memmove(__dst, __dst + 1, 4 * (v8 - 1));
    __dst[(v8 - 1)] = v24;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 2 * (v8 + v9);
  }

  return a3 + v25;
}

uint64_t sub_240AD2450(_DWORD *a1, float *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  v11 = 1.0;
  if (v10 <= 0x18)
  {
    v11 = dbl_240C14F58[v10];
  }

  v12 = (v7 >> 14) & 1;
  if (v8)
  {
    v13 = 0;
    v14 = (v7 >> 10) & 1;
    if (v14 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v7 >> 7) & 7;
    }

    v16 = *a1 & 7;
    if ((v7 & 7) == 0)
    {
      v16 = 8;
    }

    v17 = a4 / v16;
    if ((v7 & 0x1000) == 0)
    {
      v17 = 1;
    }

    v18 = -v8;
    v19 = v15 * v17;
    v20 = v8 - 1;
    do
    {
      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = v13;
      }

      v22 = *(a3 + 8 * v19) / v11;
      if ((v7 & 0x2000) != 0)
      {
        v22 = 1.0 - v22;
      }

      v23 = v22;
      __dst[v21] = v23;
      --v20;
      v19 += v17;
      ++v13;
    }

    while (!__CFADD__(v18++, 1));
  }

  if (!v9 && v12)
  {
    v25 = *__dst;
    memmove(__dst, __dst + 1, 4 * (v8 - 1));
    __dst[(v8 - 1)] = v25;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v26 = 8;
  }

  else
  {
    v26 = 8 * (v8 + v9);
  }

  return a3 + v26;
}

uint64_t sub_240AD2574(_DWORD *a1, float *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  v11 = 1.0;
  if (v10 <= 0x18)
  {
    v11 = flt_240C15020[v10];
  }

  v12 = (v7 >> 14) & 1;
  if (v8)
  {
    v13 = 0;
    v14 = (v7 >> 10) & 1;
    if (v14 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v7 >> 7) & 7;
    }

    v16 = *a1 & 7;
    if ((v7 & 7) == 0)
    {
      v16 = 8;
    }

    v17 = a4 / v16;
    if ((v7 & 0x1000) == 0)
    {
      v17 = 1;
    }

    v18 = -v8;
    v19 = v15 * v17;
    v20 = v8 - 1;
    do
    {
      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = v13;
      }

      v22 = *(a3 + 4 * v19) / v11;
      if ((v7 & 0x2000) != 0)
      {
        v22 = 1.0 - v22;
      }

      __dst[v21] = v22;
      --v20;
      v19 += v17;
      ++v13;
    }

    while (!__CFADD__(v18++, 1));
  }

  if (!v9 && v12)
  {
    v24 = *__dst;
    memmove(__dst, __dst + 1, 4 * (v8 - 1));
    __dst[(v8 - 1)] = v24;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v25 = 4;
  }

  else
  {
    v25 = 4 * (v8 + v9);
  }

  return a3 + v25;
}

float sub_240AD2694(_DWORD *a1, float *a2, float *a3, unsigned int a4)
{
  if ((*a1 & 0x1000) != 0)
  {
    v6 = *a1 & 7;
    if ((*a1 & 7) == 0)
    {
      v6 = 8;
    }

    v7 = a4 / v6;
    *a2 = *a3 / 2.0;
    v5 = &a3[v7];
    v4 = &a3[2 * v7];
  }

  else
  {
    v4 = a3 + 2;
    *a2 = *a3 / 2.0;
    v5 = a3 + 1;
  }

  a2[1] = *v5 / 2.0;
  result = *v4 / 2.0;
  a2[2] = result;
  return result;
}

float32x2_t sub_240AD2724(_DWORD *a1, float32x2_t *a2, float64_t *a3, unsigned int a4)
{
  v4 = a3 + 2;
  v5 = *a1 & 7;
  if (!v5)
  {
    v5 = 8;
  }

  v6 = a4 / v5;
  v7 = &a3[v6];
  v8 = &a3[2 * v6];
  if ((*a1 & 0x1000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3 + 1;
  }

  if ((*a1 & 0x1000) != 0)
  {
    v4 = v8;
  }

  v10.f64[0] = *a3;
  v10.f64[1] = *v9;
  v11 = *v4 / 1.99996948;
  result = vcvt_f32_f64(vdivq_f64(v10, vdupq_n_s64(0x3FFFFFE000000000uLL)));
  *a2 = result;
  a2[1].f32[0] = v11;
  return result;
}

float sub_240AD27A0(_DWORD *a1, float *a2, float *a3, unsigned int a4)
{
  if ((*a1 & 0x1000) != 0)
  {
    v6 = *a1 & 7;
    if ((*a1 & 7) == 0)
    {
      v6 = 8;
    }

    v7 = a4 / v6;
    *a2 = *a3 / 100.0;
    v5 = &a3[v7];
    v4 = &a3[2 * v7];
  }

  else
  {
    v4 = a3 + 2;
    *a2 = *a3 / 100.0;
    v5 = a3 + 1;
  }

  a2[1] = (*v5 + 128.0) / 255.0;
  result = (*v4 + 128.0) / 255.0;
  a2[2] = result;
  return result;
}

float32_t sub_240AD283C(_DWORD *a1, float32x2_t *a2, float64_t *a3, unsigned int a4)
{
  v4 = a3 + 2;
  v5 = *a1 & 7;
  if (!v5)
  {
    v5 = 8;
  }

  v6 = a4 / v5;
  v7 = &a3[v6];
  v8 = &a3[2 * v6];
  if ((*a1 & 0x1000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3 + 1;
  }

  if ((*a1 & 0x1000) != 0)
  {
    v4 = v8;
  }

  result = (*v4 + 128.0) / 255.0;
  v11.f64[0] = *a3;
  v11.f64[1] = *v9 + 128.0;
  *a2 = vcvt_f32_f64(vdivq_f64(v11, xmmword_240C11220));
  a2[1].f32[0] = result;
  return result;
}

uint64_t sub_240AD28D0(unsigned int *a1, __int16 *__dst, uint64_t a3)
{
  v4 = *a1;
  v5 = (v4 >> 3) & 0xF;
  v6 = (v4 >> 10) & 1;
  v7 = (v4 >> 14) & 1;
  v8 = (v4 >> 7) & 7;
  v9 = 2 * v8;
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2 * v8;
  }

  v11 = (a3 + v10);
  if (v5)
  {
    v12 = 0;
    v13 = v5 - 1;
    do
    {
      if (v6)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      v16 = *v11++;
      v15 = v16;
      v17 = bswap32(v16) >> 16;
      if ((v4 & 0x800) != 0)
      {
        v15 = v17;
      }

      __dst[v14] = v15 ^ ((4 * v4) >> 15);
      ++v12;
      --v13;
    }

    while (v13 != -1);
  }

  if (v8)
  {
    v18 = 1;
  }

  else
  {
    v18 = v7 == 0;
  }

  if (!v18)
  {
    v19 = *__dst;
    v20 = v5 - 1;
    memmove(__dst, __dst + 1, 2 * (v5 - 1));
    __dst[v20] = v19;
  }

  if (v6 == v7)
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  return v11 + v21;
}

uint64_t sub_240AD29A4(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  v5 = (*a1 >> 3) & 0xF;
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + ((((v4 >> 7) & 7) * a4) & ((v4 << 21) >> 31)));
    v8 = v5 - 1;
    do
    {
      if ((v4 & 0x400) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      v10 = *v7;
      v11 = bswap32(v10) >> 16;
      if ((v4 & 0x800) != 0)
      {
        LOWORD(v10) = v11;
      }

      *(a2 + 2 * v9) = v10 ^ ((4 * v4) >> 15);
      v7 = (v7 + a4);
      ++v6;
      --v8;
    }

    while (v8 != -1);
  }

  return a3 + 2;
}

_WORD *sub_240AD2A14(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a2[2] = *a3;
  a2[1] = a3[1];
  *a2 = a3[2];
  a2[3] = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2A3C(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a2[3] = *a3;
  a2[2] = a3[1];
  a2[1] = a3[2];
  *a2 = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2A64(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a2[3] = *a3;
  *a2 = a3[1];
  a2[1] = a3[2];
  a2[2] = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2A8C(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = ~*a3;
  a2[1] = ~a3[1];
  a2[2] = ~a3[2];
  a2[3] = ~a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2AC4(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a2[2] = a3[1];
  a2[1] = a3[2];
  *a2 = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2AE4(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = a3[1];
  a2[1] = a3[2];
  a2[2] = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2B04(uint64_t a1, _WORD *a2, _WORD *a3)
{
  a2[2] = *a3;
  a2[1] = a3[1];
  *a2 = a3[2];
  return a3 + 3;
}

_WORD *sub_240AD2B24(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  a2[3] = a3[3];
  return a3 + 4;
}

_WORD *sub_240AD2B4C(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = *a3;
  a2[1] = a3[1];
  a2[2] = a3[2];
  return a3 + 3;
}

_WORD *sub_240AD2B6C(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = *a3;
  a2[1] = a3[1];
  return a3 + 2;
}

_WORD *sub_240AD2B84(uint64_t a1, _WORD *a2, __int16 *a3)
{
  result = a3 + 4;
  v4 = *a3;
  a2[2] = *a3;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

_WORD *sub_240AD2B9C(uint64_t a1, _WORD *a2, _WORD *a3)
{
  result = a3 + 1;
  v4 = ~*a3;
  a2[2] = v4;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

_WORD *sub_240AD2BB8(uint64_t a1, _WORD *a2, __int16 *a3)
{
  result = a3 + 1;
  v4 = *a3;
  a2[2] = *a3;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_240AD2BD0(unsigned int *a1, __int16 *__dst, uint64_t a3)
{
  v4 = *a1;
  v5 = (v4 >> 3) & 0xF;
  v6 = (v4 >> 10) & 1;
  v7 = (v4 >> 14) & 1;
  v8 = (v4 >> 7) & 7;
  if (v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v4 >> 7) & 7;
  }

  v10 = (a3 + v9);
  if (v5)
  {
    v11 = 0;
    v12 = (v4 << 18) >> 31;
    v13 = v5 - 1;
    do
    {
      if (v6)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = *v10++;
      __dst[v14] = (v15 | (v15 << 8)) ^ v12;
      ++v11;
      --v13;
    }

    while (v13 != -1);
  }

  if (v8)
  {
    v16 = 1;
  }

  else
  {
    v16 = v7 == 0;
  }

  if (!v16)
  {
    v17 = *__dst;
    v18 = v5 - 1;
    memmove(__dst, __dst + 1, 2 * (v5 - 1));
    __dst[v18] = v17;
  }

  if (v6 == v7)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  return &v10[v19];
}

uint64_t sub_240AD2C94(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *a1;
  v5 = (*a1 >> 3) & 0xF;
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + (((((v4 >> 10) ^ (v4 >> 14)) << 31) >> 31) & (((v4 >> 7) & 7) * a4)));
    v8 = v5 - 1;
    do
    {
      if ((v4 & 0x400) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v6;
      }

      *(a2 + 2 * v9) = (*v7 | (*v7 << 8)) ^ ((4 * v4) >> 15);
      v7 += a4;
      ++v6;
      --v8;
    }

    while (v8 != -1);
  }

  return a3 + 1;
}

unsigned __int8 *sub_240AD2D00(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[2] = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  *a2 = a3[2] | (a3[2] << 8);
  a2[3] = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2D38(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[3] = *a3 | (*a3 << 8);
  a2[2] = a3[1] | (a3[1] << 8);
  a2[1] = a3[2] | (a3[2] << 8);
  *a2 = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2D70(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[3] = *a3 | (*a3 << 8);
  *a2 = a3[1] | (a3[1] << 8);
  a2[1] = a3[2] | (a3[2] << 8);
  a2[2] = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2DA8(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = *a3 ^ 0xFF | ((*a3 ^ 0xFF) << 8);
  a2[1] = a3[1] ^ 0xFF | ((a3[1] ^ 0xFF) << 8);
  a2[2] = a3[2] ^ 0xFF | ((a3[2] ^ 0xFF) << 8);
  a2[3] = a3[3] ^ 0xFF | ((a3[3] ^ 0xFF) << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2DF0(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  a2[2] = a3[2] | (a3[2] << 8);
  a2[3] = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2E28(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[2] = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  *a2 = a3[2] | (a3[2] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2E54(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = a3[1] | (a3[1] << 8);
  a2[1] = a3[2] | (a3[2] << 8);
  a2[2] = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2E80(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[2] = a3[1] | (a3[1] << 8);
  a2[1] = a3[2] | (a3[2] << 8);
  *a2 = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2EAC(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  a2[2] = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  *a2 = a3[2] | (a3[2] << 8);
  return a3 + 3;
}

unsigned __int8 *sub_240AD2ED8(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  a2[2] = a3[2] | (a3[2] << 8);
  return a3 + 3;
}

_WORD *sub_240AD2F04(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = *a3 | HIBYTE(*a3);
  a2[1] = a3[1] | HIBYTE(a3[1]);
  a2[2] = a3[2] | HIBYTE(a3[2]);
  return a3 + 3;
}

unsigned __int8 *sub_240AD2F30(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = a3[1] | (a3[1] << 8);
  a2[1] = a3[2] | (a3[2] << 8);
  a2[2] = a3[3] | (a3[3] << 8);
  return a3 + 4;
}

unsigned __int8 *sub_240AD2F5C(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  a2[2] = a3[2] | (a3[2] << 8);
  return a3 + 3;
}

unsigned __int8 *sub_240AD2F88(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  *a2 = *a3 | (*a3 << 8);
  a2[1] = a3[1] | (a3[1] << 8);
  return a3 + 2;
}

unsigned __int8 *sub_240AD2FA8(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  result = a3 + 1;
  v4 = ~(*a3 | (*a3 << 8));
  a2[2] = v4;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_240AD2FC8(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  result = a3 + 3;
  v4 = *a3 | (*a3 << 8);
  a2[2] = v4;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_240AD2FE4(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  result = a3 + 2;
  v4 = *a3 | (*a3 << 8);
  a2[2] = v4;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

unsigned __int8 *sub_240AD3000(uint64_t a1, _WORD *a2, unsigned __int8 *a3)
{
  result = a3 + 1;
  v4 = *a3 | (*a3 << 8);
  a2[2] = v4;
  a2[1] = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_240AD301C(unsigned int *a1, __int16 *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  if (v10 > 0x18)
  {
    v11 = 65535.0;
  }

  else
  {
    v11 = flt_240C14EF0[v10];
  }

  v12 = (v7 >> 14) & 1;
  if ((a1[1] & 7) != 0)
  {
    v13 = a1[1] & 7;
  }

  else
  {
    v13 = 8;
  }

  if (v8)
  {
    v14 = 0;
    v15 = (v7 >> 10) & 1;
    if (v15 == v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v7 >> 7) & 7;
    }

    v17 = (a3 + 2 * v16);
    v18 = 2 * v8;
    v19 = v8 - 1;
    v20 = a4 / v13;
    do
    {
      if (v15)
      {
        v21 = v19;
      }

      else
      {
        v21 = v14;
      }

      v22 = (a3 + 2 * (v16 + v14) * v20);
      if ((v7 & 0x1000) == 0)
      {
        v22 = v17;
      }

      LODWORD(v23) = dword_240C144C0[*v22 >> 10] + dword_240C12440[(*v22 & 0x3FF) + word_240C14440[*v22 >> 10]];
      if ((v7 & 0x2000) != 0)
      {
        v23 = v11 - v23;
      }

      v24 = (v11 * v23) + 0.5;
      if (v24 <= 0.0)
      {
        v25 = 0;
      }

      else if (v24 >= 65535.0)
      {
        v25 = -1;
      }

      else
      {
        v25 = (COERCE_UNSIGNED_INT64(v24 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      __dst[v21] = v25;
      ++v14;
      ++v17;
      --v19;
      v18 -= 2;
    }

    while (v18);
  }

  if (!v9 && v12)
  {
    v26 = *__dst;
    memmove(__dst, __dst + 1, 2 * (v8 - 1));
    __dst[(v8 - 1)] = v26;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = 2 * (v8 + v9);
  }

  return a3 + v27;
}

uint64_t sub_240AD31E4(_DWORD *a1, __int16 *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  if (v10 > 0x18)
  {
    v11 = 65535.0;
  }

  else
  {
    v11 = dbl_240C14E28[v10];
  }

  v12 = (v7 >> 14) & 1;
  if (v8)
  {
    v13 = 0;
    v14 = (v7 >> 10) & 1;
    if (v14 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v7 >> 7) & 7;
    }

    v16 = *a1 & 7;
    if ((v7 & 7) == 0)
    {
      v16 = 8;
    }

    v17 = a4 / v16;
    if ((v7 & 0x1000) == 0)
    {
      v17 = 1;
    }

    v18 = -v8;
    v19 = v15 * v17;
    v20 = v8 - 1;
    do
    {
      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = v13;
      }

      v22 = v11 * *(a3 + 4 * v19) + 0.5;
      if (v22 <= 0.0)
      {
        v23 = 0;
      }

      else if (v22 >= 65535.0)
      {
        v23 = -1;
      }

      else
      {
        v23 = (COERCE_UNSIGNED_INT64(v22 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      __dst[v21] = v23 ^ ((4 * v7) >> 15);
      --v20;
      v19 += v17;
      ++v13;
    }

    while (!__CFADD__(v18++, 1));
  }

  if (!v9 && v12)
  {
    v25 = *__dst;
    memmove(__dst, __dst + 1, 2 * (v8 - 1));
    __dst[(v8 - 1)] = v25;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v26 = 4;
  }

  else
  {
    v26 = 4 * (v8 + v9);
  }

  return a3 + v26;
}

uint64_t sub_240AD335C(_DWORD *a1, __int16 *__dst, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = (v7 >> 3) & 0xF;
  v9 = (v7 >> 7) & 7;
  v10 = (WORD1(v7) & 0x1F) - 5;
  if (v10 > 0x18)
  {
    v11 = 65535.0;
  }

  else
  {
    v11 = dbl_240C14E28[v10];
  }

  v12 = (v7 >> 14) & 1;
  if (v8)
  {
    v13 = 0;
    v14 = (v7 >> 10) & 1;
    if (v14 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v7 >> 7) & 7;
    }

    v16 = *a1 & 7;
    if ((v7 & 7) == 0)
    {
      v16 = 8;
    }

    v17 = a4 / v16;
    if ((v7 & 0x1000) == 0)
    {
      v17 = 1;
    }

    v18 = -v8;
    v19 = v15 * v17;
    v20 = v8 - 1;
    do
    {
      if (v14)
      {
        v21 = v20;
      }

      else
      {
        v21 = v13;
      }

      v22 = *(a3 + 8 * v19);
      v23 = v11 * v22 + 0.5;
      if (v23 <= 0.0)
      {
        v24 = 0;
      }

      else if (v23 >= 65535.0)
      {
        v24 = -1;
      }

      else
      {
        v24 = (COERCE_UNSIGNED_INT64(v23 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      __dst[v21] = v24 ^ ((4 * v7) >> 15);
      --v20;
      v19 += v17;
      ++v13;
    }

    while (!__CFADD__(v18++, 1));
  }

  if (!v9 && v12)
  {
    v26 = *__dst;
    memmove(__dst, __dst + 1, 2 * (v8 - 1));
    __dst[(v8 - 1)] = v26;
    LODWORD(v7) = *a1;
  }

  if ((v7 & 0x1000) != 0)
  {
    v27 = 8;
  }

  else
  {
    v27 = 8 * (v8 + v9);
  }

  return a3 + v27;
}

double *sub_240AD34D8(uint64_t a1, __int16 *a2, double *a3)
{
  v3 = *a3 * 65535.0 + 0.5;
  if (v3 <= 0.0)
  {
    v4 = 0;
  }

  else if (v3 >= 65535.0)
  {
    v4 = -1;
  }

  else
  {
    v4 = (COERCE_UNSIGNED_INT64(v3 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  a2[2] = v4;
  a2[1] = v4;
  result = a3 + 1;
  *a2 = v4;
  return result;
}

unint64_t sub_240AD354C(unsigned int *a1, __int16 *a2, float32x2_t *a3, unsigned int a4)
{
  if ((*(a1 + 1) & 0x10) != 0)
  {
    v7 = *(a3->f32 + a4);
    v8.f64[0] = a3->f32[0];
    v8.f64[1] = v7;
    v9 = *(a3->f32 + 2 * a4);
    sub_240AD3B48(a2, v8.f64);
    return a3 + 4;
  }

  else
  {
    v8 = vcvtq_f64_f32(*a3);
    v9 = a3[1].f32[0];
    sub_240AD3B48(a2, v8.f64);
    return &a3[1] + ((*a1 >> 5) & 0x1C) + 4;
  }
}

unint64_t sub_240AD35F4(unsigned int *a1, __int16 *a2, float32x2_t *a3, unsigned int a4)
{
  v8 = 0uLL;
  v9 = 0.0;
  if ((*(a1 + 1) & 0x10) != 0)
  {
    v7 = *(a3->f32 + a4);
    v8.f64[0] = a3->f32[0];
    v8.f64[1] = v7;
    v9 = *(a3->f32 + 2 * a4);
    sub_240AD39B4(a2, v8.f64);
    return a3 + 4;
  }

  else
  {
    v8 = vcvtq_f64_f32(*a3);
    v9 = a3[1].f32[0];
    sub_240AD39B4(a2, v8.f64);
    return &a3[1] + ((*a1 >> 5) & 0x1C) + 4;
  }
}

unint64_t sub_240AD36A4(unsigned int *a1, __int16 *a2, double *a3, unsigned int a4)
{
  if ((*(a1 + 1) & 0x10) != 0)
  {
    v7 = *(a3 + a4);
    v8[0] = *a3;
    v8[1] = v7;
    v8[2] = *(a3 + 2 * a4);
    sub_240AD3B48(a2, v8);
    return (a3 + 1);
  }

  else
  {
    sub_240AD3B48(a2, a3);
    return a3 + ((*a1 >> 4) & 0x38) + 24;
  }
}

unint64_t sub_240AD3728(unsigned int *a1, __int16 *a2, double *a3, unsigned int a4)
{
  if ((*(a1 + 1) & 0x10) != 0)
  {
    v7 = *(a3 + a4);
    v8[0] = *a3;
    v8[1] = v7;
    v8[2] = *(a3 + 2 * a4);
    sub_240AD39B4(a2, v8);
    return (a3 + 1);
  }

  else
  {
    sub_240AD39B4(a2, a3);
    return a3 + ((*a1 >> 4) & 0x38) + 24;
  }
}

double sub_240AD37AC(double *a1, double *a2)
{
  v4 = *a2 / *&xmmword_27E516510;
  if (v4 <= 0.00885645168)
  {
    v5 = v4 * 7.78703704 + 0.137931034;
  }

  else
  {
    v5 = pow(v4, 0.333333333);
  }

  v6 = a2[1] / *(&xmmword_27E516510 + 1);
  if (v6 <= 0.00885645168)
  {
    v7 = v6 * 7.78703704 + 0.137931034;
  }

  else
  {
    v7 = pow(v6, 0.333333333);
  }

  v8 = a2[2] / *&qword_27E516520;
  if (v8 <= 0.00885645168)
  {
    v9 = v8 * 7.78703704 + 0.137931034;
  }

  else
  {
    v9 = pow(v8, 0.333333333);
  }

  *a1 = v7 * 116.0 + -16.0;
  a1[1] = (v5 - v7) * 500.0;
  result = (v7 - v9) * 200.0;
  a1[2] = result;
  return result;
}

double sub_240AD38D4(float64x2_t *a1, double *a2)
{
  v2 = (*a2 + 16.0) / 116.0;
  v3.f64[0] = v2 + a2[1] * 0.002;
  v3.f64[1] = v2;
  v4 = v2 + a2[2] * -0.005;
  *a1 = vmulq_f64(xmmword_27E516510, vbslq_s8(vcgeq_f64(vdupq_n_s64(0x3FCA7B9611A7B961uLL), v3), vmulq_f64(vaddq_f64(v3, vdupq_n_s64(0xBFC1A7B9611A7B96)), vdupq_n_s64(0x3FC07004DED20922uLL)), vmulq_f64(v3, vmulq_f64(v3, v3))));
  if (v4 <= 0.206896552)
  {
    v5 = (v4 + -0.137931034) * 0.128418549;
  }

  else
  {
    v5 = v4 * (v4 * v4);
  }

  result = v5 * *&qword_27E516520;
  a1[1].f64[0] = result;
  return result;
}

__int16 *sub_240AD39B4(__int16 *result, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 < 0.0)
  {
    v2 = 0.0;
  }

  v4 = 100.0;
  if (v2 <= 100.0)
  {
    v4 = v2;
  }

  v5 = -128.0;
  if (v3 < -128.0)
  {
    v3 = -128.0;
  }

  if (v3 > 127.0)
  {
    v3 = 127.0;
  }

  if (a2[2] >= -128.0)
  {
    v5 = a2[2];
  }

  if (v5 > 127.0)
  {
    v5 = 127.0;
  }

  v6 = v4 * 655.35 + 0.5;
  if (v6 <= 0.0)
  {
    v7 = 0;
  }

  else if (v6 >= 65535.0)
  {
    v7 = -1;
  }

  else
  {
    v7 = (COERCE_UNSIGNED_INT64(v6 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = v7;
  v8 = (v3 + 128.0) * 257.0 + 0.5;
  if (v8 <= 0.0)
  {
    v9 = 0;
  }

  else if (v8 >= 65535.0)
  {
    v9 = -1;
  }

  else
  {
    v9 = (COERCE_UNSIGNED_INT64(v8 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  result[1] = v9;
  v10 = (v5 + 128.0) * 257.0 + 0.5;
  if (v10 <= 0.0)
  {
    v11 = 0;
  }

  else if (v10 >= 65535.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = (COERCE_UNSIGNED_INT64(v10 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  result[2] = v11;
  return result;
}

__int16 *sub_240AD3B48(__int16 *result, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  if (v3 <= 0.0)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
  }

  if (v2 > 1.99996948)
  {
    v2 = 1.99996948;
  }

  if (v2 >= 0.0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0.0;
  }

  if (v3 > 1.99996948)
  {
    v3 = 1.99996948;
  }

  if (v4 <= 1.99996948)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1.99996948;
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = v5 * 32768.0 + 0.5;
  if (v7 <= 0.0)
  {
    v8 = 0;
  }

  else if (v7 >= 65535.0)
  {
    v8 = -1;
  }

  else
  {
    v8 = (COERCE_UNSIGNED_INT64(v7 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  *result = v8;
  v9 = v3 * 32768.0 + 0.5;
  if (v9 <= 0.0)
  {
    v10 = 0;
  }

  else if (v9 >= 65535.0)
  {
    v10 = -1;
  }

  else
  {
    v10 = (COERCE_UNSIGNED_INT64(v9 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  result[1] = v10;
  v11 = v6 * 32768.0 + 0.5;
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

  result[2] = v12;
  return result;
}

double sub_240AD3CC4(float64x2_t *a1, unsigned __int16 *a2)
{
  v2.i32[0] = *a2;
  v2.i32[1] = a2[1];
  v3 = vadd_s32(v2, v2);
  v4 = vshr_n_u32(v2, 0xFuLL);
  v5.i64[0] = v3.i32[0] & 0xFFFEFFFF;
  v5.i64[1] = v3.i32[1] & 0xFFFEFFFF;
  v6 = vmulq_f64(vcvtq_f64_u64(v5), vdupq_n_s64(0x3EF0000000000000uLL));
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  *a1 = vaddq_f64(v6, vcvtq_f64_u64(v5));
  result = vcvtd_n_f64_u32(2 * (a2[2] & 0x7FFFu), 0x10uLL) + (a2[2] >> 15);
  a1[1].f64[0] = result;
  return result;
}

uint64_t sub_240AD3D24(int a1, int a2)
{
  v2 = a2;
  if ((a2 & 0xFF0000) != 0)
  {
    return BYTE2(a2);
  }

  v4 = sub_240AD3DAC(a1);
  if (v4 == 4)
  {
    v5 = 17;
  }

  else
  {
    v5 = 33;
  }

  if (v4 <= 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  if (v4 == 1)
  {
    v7 = 33;
  }

  else
  {
    v7 = 17;
  }

  if (v4 > 4)
  {
    v7 = 6;
  }

  if ((v2 & 0x800) != 0)
  {
    v6 = v7;
  }

  if (v4 == 4)
  {
    v8 = 23;
  }

  else
  {
    v8 = 49;
  }

  if (v4 <= 4)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7;
  }

  if ((v2 & 0x400) != 0)
  {
    return v9;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_240AD3DAC(int a1)
{
  v1 = 1;
  if (a1 > 1282766367)
  {
    if (a1 <= 1380401695)
    {
      switch(a1)
      {
        case 1296255025:
          return v1;
        case 1296255026:
          return 2;
        case 1296255027:
        case 1296255034:
        case 1296255035:
        case 1296255036:
        case 1296255037:
        case 1296255038:
        case 1296255039:
        case 1296255040:
          return 3;
        case 1296255028:
          return 4;
        case 1296255029:
          return 5;
        case 1296255030:
          return 6;
        case 1296255031:
          return 7;
        case 1296255032:
          return 8;
        case 1296255033:
          return 9;
        case 1296255041:
          return 10;
        case 1296255042:
          return 11;
        case 1296255043:
          return 12;
        case 1296255044:
          return 13;
        case 1296255045:
          return 14;
        case 1296255046:
          return 15;
        default:
          if (a1 == 1282766411)
          {
            return 4;
          }

          return 3;
      }

      return v1;
    }

    return 3;
  }

  if (a1 <= 1111706705)
  {
    if (a1 > 910380113)
    {
      if (a1 <= 943934545)
      {
        if (a1 == 910380114)
        {
          return 6;
        }

        if (a1 == 927157330)
        {
          return 7;
        }
      }

      else
      {
        switch(a1)
        {
          case 943934546:
            return 8;
          case 960711762:
            return 9;
          case 1094929490:
            return 10;
        }
      }
    }

    else
    {
      if (a1 <= 860048465)
      {
        if (a1 == 826494034)
        {
          return v1;
        }

        if (a1 == 843271250)
        {
          return 2;
        }

        return 3;
      }

      switch(a1)
      {
        case 860048466:
          return 3;
        case 876825682:
          return 4;
        case 893602898:
          return 5;
      }
    }

    return 3;
  }

  if (a1 <= 1162038353)
  {
    if (a1 <= 1129142559)
    {
      if (a1 == 1111706706)
      {
        return 11;
      }

      if (a1 == 1128483922)
      {
        return 12;
      }

      return 3;
    }

    if (a1 == 1129142560)
    {
      return 3;
    }

    if (a1 != 1129142603)
    {
      if (a1 == 1145261138)
      {
        return 13;
      }

      return 3;
    }

    return 4;
  }

  if (a1 > 1212961567)
  {
    return 3;
  }

  if (a1 == 1162038354)
  {
    return 14;
  }

  if (a1 == 1178815570)
  {
    return 15;
  }

  if (a1 != 1196573017)
  {
    return 3;
  }

  return v1;
}

uint64_t sub_240AD40A4(int a1)
{
  if (a1 > 1282766367)
  {
    if (a1 <= 1380401695)
    {
      switch(a1)
      {
        case 1296255025:
          return 15;
        case 1296255026:
          return 16;
        case 1296255027:
          return 17;
        case 1296255028:
          return 18;
        case 1296255029:
          return 19;
        case 1296255030:
          return 20;
        case 1296255031:
          return 21;
        case 1296255032:
          return 22;
        case 1296255033:
          return 23;
        case 1296255034:
        case 1296255035:
        case 1296255036:
        case 1296255037:
        case 1296255038:
        case 1296255039:
        case 1296255040:
          return 0;
        case 1296255041:
          return 24;
        case 1296255042:
          return 25;
        case 1296255043:
          return 26;
        case 1296255044:
          return 27;
        case 1296255045:
          return 28;
        case 1296255046:
          return 29;
        default:
          if (a1 == 1282766368)
          {
            result = 8;
          }

          else
          {
            if (a1 != 1282766411)
            {
              return 0;
            }

            result = 11;
          }

          break;
      }

      return result;
    }

    if (a1 > 1497588337)
    {
      if (a1 != 1497588338)
      {
        if (a1 == 1501067552)
        {
          return 14;
        }

        return 0;
      }

      return 7;
    }

    if (a1 == 1380401696)
    {
      return 4;
    }

    if (a1 == 1482250784)
    {
      return 9;
    }

    return 0;
  }

  if (a1 <= 1111706705)
  {
    if (a1 > 910380113)
    {
      if (a1 <= 943934545)
      {
        if (a1 == 910380114)
        {
          return 20;
        }

        if (a1 == 927157330)
        {
          return 21;
        }
      }

      else
      {
        switch(a1)
        {
          case 943934546:
            return 22;
          case 960711762:
            return 23;
          case 1094929490:
            return 24;
        }
      }
    }

    else if (a1 <= 860048465)
    {
      if (a1 == 826494034)
      {
        return 15;
      }

      if (a1 == 843271250)
      {
        return 16;
      }
    }

    else
    {
      switch(a1)
      {
        case 860048466:
          return 17;
        case 876825682:
          return 18;
        case 893602898:
          return 19;
      }
    }

    return 0;
  }

  if (a1 <= 1162038353)
  {
    if (a1 <= 1129142559)
    {
      if (a1 == 1111706706)
      {
        return 25;
      }

      if (a1 == 1128483922)
      {
        return 26;
      }

      return 0;
    }

    switch(a1)
    {
      case 1129142560:
        return 5;
      case 1129142603:
        return 6;
      case 1145261138:
        return 27;
    }

    return 0;
  }

  if (a1 <= 1212961567)
  {
    switch(a1)
    {
      case 1162038354:
        return 28;
      case 1178815570:
        return 29;
      case 1196573017:
        return 3;
    }

    return 0;
  }

  if (a1 == 1212961568)
  {
    return 13;
  }

  if (a1 != 1213421088)
  {
    if (a1 == 1281450528)
    {
      return 10;
    }

    return 0;
  }

  return 12;
}

uint64_t sub_240AD4408(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a2;
  v6 = a3;
  while (a3)
  {
    v8 = 0;
    if ((*(a1 + 280))(a1, &v8, 2, 1) != 1)
    {
      return 0;
    }

    *v6 = bswap32(v8) >> 16;
LABEL_7:
    ++v6;
    if (!--v5)
    {
      return 1;
    }
  }

  v9 = 0;
  if ((*(a1 + 280))(a1, &v9, 2, 1) == 1)
  {
    goto LABEL_7;
  }

  return 0;
}

BOOL sub_240AD44CC(uint64_t a1, float *a2)
{
  v5 = 0;
  if ((*(a1 + 280))(a1, &v5, 4, 1) != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = bswap32(v5);
  v5 = v3;
  *a2 = v3;
  if (fabsf(*&v3) > 1.0e20)
  {
    return 0;
  }

  return __fpclassifyf(*&v3) == 3 || __fpclassifyf(*a2) == 4;
}

uint64_t sub_240AD4570(uint64_t a1, double *a2)
{
  v7 = 0;
  v3 = (*(a1 + 280))(a1, &v7, 4, 1);
  result = 0;
  if (v3 == 1)
  {
    if (a2)
    {
      v5 = bswap32(v7);
      v6 = ((v5 >> 31) | 1);
      if (v5 < 0)
      {
        v5 = -v5;
      }

      *a2 = (vcvtd_n_f64_u32(v5, 0x10uLL) + HIWORD(v5)) * v6;
    }

    return 1;
  }

  return result;
}

uint64_t sub_240AD4600(uint64_t a1, float64x2_t *a2)
{
  v16 = 0;
  v15 = 0;
  v3 = (*(a1 + 280))(a1, &v15, 12, 1);
  result = 0;
  if (v3 == 1)
  {
    if (a2)
    {
      v5 = vrev32_s8(v15);
      v6 = vcltz_s32(v5);
      v7.i64[0] = v6.i32[0] | 1;
      v7.i64[1] = v6.i32[1] | 1;
      v8 = vcvtq_f64_s64(v7);
      v9 = vabs_s32(v5);
      v10 = vshr_n_u32(v9, 0x10uLL);
      v11 = vand_s8(v9, 0xFFFF0000FFFFLL);
      v7.i64[0] = v11.u32[0];
      v7.i64[1] = v11.u32[1];
      v12 = vmulq_f64(vcvtq_f64_u64(v7), vdupq_n_s64(0x3EF0000000000000uLL));
      v7.i64[0] = v10.u32[0];
      v7.i64[1] = v10.u32[1];
      *a2 = vmulq_f64(vaddq_f64(v12, vcvtq_f64_u64(v7)), v8);
      v13 = bswap32(v16);
      v14 = ((v13 >> 31) | 1);
      if (v13 < 0)
      {
        v13 = -v13;
      }

      a2[1].f64[0] = (vcvtd_n_f64_u32(v13, 0x10uLL) + HIWORD(v13)) * v14;
    }

    return 1;
  }

  return result;
}

uint64_t sub_240AD46E4(uint64_t a1)
{
  v2 = (*(a1 + 304))();
  v3 = (v2 + 3) & 0xFFFFFFFC;
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 1;
  }

  if (v4 > 4)
  {
    return 0;
  }

  __memset_chk();
  return (*(a1 + 312))(a1, v4, v6);
}

uint64_t sub_240AD4764(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v4 = *(a2 + 19);
  v6 = v4 == 1633842036 || v4 == 1852662636 || v4 == 1818848875;
  if (v6 || a3 >= 3)
  {
    result = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return result;
  }

  if ((a3 & 1) == 0 && *(a2 + 18) >> 26)
  {
    if (!sub_240AC8C00(a2))
    {
      *a1 = xmmword_240C111F0;
      *(a1 + 16) = 0x3F6782D38476F2A6;
      return 1;
    }

    v9 = a2;
    v10 = 1;
    goto LABEL_22;
  }

  if (a3 != 1 || v4 != 1886549106 || *(a2 + 20) != 1129142603)
  {
    v9 = a2;
    v10 = a3;
LABEL_22:

    return sub_240AD4890(v9, v10, a1);
  }

  return sub_240AD4D30(a1, a2);
}

uint64_t sub_240AD4890(uint64_t a1, int a2, double *a3)
{
  __b[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  result = sub_240AC8D68(a1, a2);
  if (!result)
  {
    goto LABEL_48;
  }

  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v7 = *(a1 + 80);
  sub_240AD40A4(v7);
  v8 = sub_240AD3DAC(v7);
  if (v7 <= 1196573016)
  {
    if (v7 == 1129142560)
    {
      v9 = 3;
      v10 = &unk_27E5164B8;
    }

    else
    {
      if (v7 != 1129142603)
      {
        goto LABEL_47;
      }

      v9 = 4;
      v10 = &unk_27E5164A0;
    }
  }

  else
  {
    switch(v7)
    {
      case 1196573017:
        v9 = 1;
        v10 = &unk_27E516568;
        break;
      case 1281450528:
        v9 = 3;
        v10 = &unk_27E5164A8;
        break;
      case 1380401696:
        v9 = 3;
        v10 = &unk_27E516550;
        break;
      default:
LABEL_47:
        result = 0;
LABEL_48:
        *a3 = 0.0;
        a3[1] = 0.0;
        a3[2] = 0.0;
        goto LABEL_49;
    }
  }

  if (v9 != v8)
  {
    goto LABEL_47;
  }

  xmmword_27E5165C0 = vmulq_n_f64(xmmword_27E516510, 1.0 / (vaddvq_f64(xmmword_27E516510) + *&qword_27E516520));
  qword_27E5165D0 = *(&xmmword_27E516510 + 1);
  v11 = sub_240AE21C4(v5);
  if (!v11)
  {
    goto LABEL_47;
  }

  v12 = v11;
  sub_240AC6B0C(v11, 2.1);
  qmemcpy((v12 + 76), "tsba baL baL", 12);
  if (!sub_240AE22C0(v12, "L"))
  {
    goto LABEL_47;
  }

  v13 = sub_240ACADFC(v5, 3u, 3);
  if (!v13)
  {
    goto LABEL_46;
  }

  v14 = v13;
  v38 = 3;
  memset_pattern16(__b, &unk_240C11A40, 0x20uLL);
  v18 = sub_240AC9DB8(v5, __b, 3u, 3, 0, v15, v16, v17);
  if (!v18)
  {
    goto LABEL_45;
  }

  v19 = v18;
  if (!sub_240ACA678(v18, sub_240ACA8F4, &v38))
  {
    v31 = v19[5];
    if (v31)
    {
      v31(v19);
    }

    if (*v19)
    {
      v32 = &qword_27E516570;
      while (1)
      {
        v32 = *v32;
        if (!v32)
        {
          break;
        }

        if (v32 == *v19)
        {
          goto LABEL_42;
        }
      }

      v32 = &unk_278CB2F00;
    }

    else
    {
      v32 = &unk_278CB2F00;
    }

LABEL_42:
    v33 = v32[6];
    if (!v33)
    {
      v33 = &xmmword_281500C10;
    }

    (*(v33 + 2))();
    goto LABEL_45;
  }

  v19[1].i32[1] = 1768189472;
  v19[7] = *v14;
  *v14 = v19;
  if (!sub_240ACAF44(v14) || !sub_240AC7D44(v12, 1093812784, v14, v20, v21, v22, v23, v24))
  {
LABEL_45:
    sub_240ACB1C0(v14);
LABEL_46:
    sub_240AC6C8C(v12);
    goto LABEL_47;
  }

  sub_240ACB1C0(v14);
  v25 = sub_240AE3E94();
  sub_240AC6C8C(v12);
  if (!v25)
  {
    goto LABEL_47;
  }

  __b[0] = 0;
  __b[1] = 0x100000001;
  (*(v25 + 8))(v25, v10, &v35, 1, 1, __b);
  v36 = 0.0;
  v37 = 0.0;
  if (v35 > 50.0)
  {
    v35 = 50.0;
  }

  sub_240AE2944(v25);
  if (a3)
  {
    v26 = (v35 + 16.0) / 116.0;
    v27 = v26 + v37 * -0.005;
    if (v27 <= 0.206896552)
    {
      v28 = (v27 + -0.137931034) * 0.128418549;
    }

    else
    {
      v28 = v27 * (v27 * v27);
    }

    v29 = v28 * *&qword_27E516520;
    v30.f64[0] = v26 + v36 * 0.002;
    v30.f64[1] = (v35 + 16.0) / 116.0;
    *a3 = vmulq_f64(xmmword_27E516510, vbslq_s8(vcgeq_f64(vdupq_n_s64(0x3FCA7B9611A7B961uLL), v30), vmulq_f64(vaddq_f64(v30, vdupq_n_s64(0xBFC1A7B9611A7B96)), vdupq_n_s64(0x3FC07004DED20922uLL)), vmulq_f64(v30, vmulq_f64(v30, v30))));
    a3[2] = v29;
  }

  result = 1;
LABEL_49:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240AD4D30(double *a1, uint64_t *a2)
{
  if (!sub_240AC8D68(a2, 0))
  {
    *a1 = 0.0;
    a1[1] = 0.0;
    result = 1;
LABEL_13:
    a1[2] = 0.0;
    return result;
  }

  result = sub_240AD4ED4(a2, 0);
  if (!result)
  {
    *a1 = 0.0;
    a1[1] = 0.0;
    goto LABEL_13;
  }

  v5 = result;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  memset(v14, 0, sizeof(v14));
  v15[0] = 0;
  v15[1] = 0x100000001;
  (*(result + 8))(result, v14, &v11, 1, 1, v15);
  if (v11 > 50.0)
  {
    v11 = 50.0;
  }

  v12 = 0.0;
  v13 = 0.0;
  sub_240AE2944(v5);
  if (a1)
  {
    v6 = (v11 + 16.0) / 116.0;
    v7 = v6 + v13 * -0.005;
    if (v7 <= 0.206896552)
    {
      v8 = (v7 + -0.137931034) * 0.128418549;
    }

    else
    {
      v8 = v7 * (v7 * v7);
    }

    v9 = v8 * *&qword_27E516520;
    v10.f64[0] = v6 + v12 * 0.002;
    v10.f64[1] = (v11 + 16.0) / 116.0;
    *a1 = vmulq_f64(xmmword_27E516510, vbslq_s8(vcgeq_f64(vdupq_n_s64(0x3FCA7B9611A7B961uLL), v10), vmulq_f64(vaddq_f64(v10, vdupq_n_s64(0xBFC1A7B9611A7B96)), vdupq_n_s64(0x3FC07004DED20922uLL)), vmulq_f64(v10, vmulq_f64(v10, v10))));
    a1[2] = v9;
  }

  return 1;
}

uint64_t sub_240AD4ED4(uint64_t *a1, int a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_240AE23B4(v4);
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = xmmword_240C15100;
  v12[1] = unk_240C15110;
  v11[0] = v5;
  v11[1] = a1;
  v11[2] = a1;
  v11[3] = v5;
  v9[0] = 1;
  v9[1] = a2;
  v10 = 0x100000001;
  v6 = sub_240AE2A1C(v4, 4, v11, v13, v9, v12, 4849688, 4849688, 320);
  sub_240AC6C8C(v5);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

double sub_240AD4FC0(int a1, double *a2, double *a3)
{
  result = 0.0;
  if (a1 >= 4)
  {
    v24[9] = v3;
    v24[10] = v4;
    v6 = 0.0;
    v7 = a1;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *a2++;
      v15 = v14;
      v16 = *a3++;
      v6 = v6 + v15;
      v8 = v8 + v15 * v15;
      v13 = v13 + v15 * v15 * v15;
      v12 = v12 + v15 * (v15 * v15) * v15;
      v11 = v11 + v16;
      v10 = v10 + v16 * v15;
      v9 = v9 + v15 * v16 * v15;
      --v7;
    }

    while (v7);
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v24[0] = a1;
    v24[1] = v6;
    v24[2] = v8;
    v24[3] = v6;
    v24[4] = v8;
    v24[5] = v13;
    v24[6] = v8;
    v24[7] = v13;
    v24[8] = v12;
    v23[0] = v11;
    v23[1] = v10;
    v23[2] = v9;
    v17 = sub_240ACB698(&v20, v24, v23);
    result = 0.0;
    if (v17)
    {
      if (fabs(v22) >= 1.0e-10)
      {
        v19 = v22 * -4.0 * v20 + v21 * v21;
        if (v19 <= 0.0)
        {
          return result;
        }

        result = (sqrt(v19) - v21) / (v22 + v22);
        if (result > 50.0)
        {
          result = 50.0;
        }

        v18 = result < 0.0;
      }

      else
      {
        result = -v20 / v21;
        v18 = result > 0.0 || result < 50.0;
      }

      if (v18)
      {
        return 0.0;
      }
    }
  }

  return result;
}

char *sub_240AD5100(uint64_t *a1, int a2)
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
  v3 = v2[10];
  if (!v3)
  {
    v3 = &unk_27E5165A8;
  }

  result = *v3;
  if (*v3)
  {
    while (*result != a2)
    {
      result = *(result + 7);
      if (!result)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    result = aMrhc;
    do
    {
      if (*result == a2)
      {
        break;
      }

      result = *(result + 7);
    }

    while (result);
  }

  return result;
}

uint64_t ***sub_240AD5188(uint64_t a1, uint64_t ****a2)
{
  result = sub_240AC29F4(a2);
  if (a2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = &qword_27E516570;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6 == v5)
        {
          goto LABEL_10;
        }
      }

      v6 = &unk_278CB2F00;
    }

    else
    {
      v6 = &unk_278CB2F00;
    }

LABEL_10:
    v7 = v6[6];
    if (!v7)
    {
      v7 = &xmmword_281500C10;
    }

    v8 = *(v7 + 2);

    return v8();
  }

  return result;
}

uint64_t *sub_240AD522C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
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
        goto LABEL_8;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_8:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v13 = (*(v5 + 4))();
  if (v13)
  {
    *v13 = sub_240AC2A40(*a2, v6, v7, v8, v9, v10, v11, v12);
    v13[1] = sub_240AC2A40(a2[1], v14, v15, v16, v17, v18, v19, v20);
    v13[2] = sub_240AC2A40(a2[2], v21, v22, v23, v24, v25, v26, v27);
  }

  return v13;
}

uint64_t sub_240AD52EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*a3 + 8) == 1 && *(*(*a3 + 16) + 8) == 5 && (v5 = a3[1], *(v5 + 8) == 1) && *(*(v5 + 16) + 8) == 5 && (v6 = a3[2], *(v6 + 8) == 1) && *(*(v6 + 16) + 8) == 5)
  {
    v18 = 0x1000000;
    if ((*(a2 + 312))(a2, 4, &v18) == 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(a3[v7] + 16);
        v9 = *(v8 + 56);
        v10 = *(v8 + 16);
        v11 = pow(*(v8 + 24), v10);
        v18 = bswap32(vcvtmd_s64_f64(v10 * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v18) != 1)
        {
          break;
        }

        v18 = bswap32(vcvtmd_s64_f64(v9 * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v18) != 1)
        {
          break;
        }

        v18 = bswap32(vcvtmd_s64_f64((v9 + v11) * 65536.0 + 0.5));
        result = (*(a2 + 312))(a2, 4, &v18);
        if (result != 1)
        {
          break;
        }

        if (++v7 == 3)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v18 = 0;
    if ((*(a2 + 312))(a2, 4, &v18) == 1)
    {
      LOWORD(v18) = 768;
      if ((*(a2 + 312))(a2, 2, &v18) == 1)
      {
        LOWORD(v18) = 1;
        if ((*(a2 + 312))(a2, 2, &v18) == 1)
        {
          LOWORD(v18) = 512;
          if ((*(a2 + 312))(a2, 2, &v18) == 1)
          {
            v13 = 0;
LABEL_19:
            v14 = 0;
            while (1)
            {
              v15 = v14 / 255.0;
              v16 = sub_240AC2CFC(a3[v13], v15) * 65535.0 + 0.5;
              if (v16 <= 0.0)
              {
                v17 = 0;
              }

              else
              {
                v17 = v16 >= 65535.0 ? 0xFFFF : (COERCE_UNSIGNED_INT64(v16 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
              }

              LOWORD(v18) = bswap32(v17) >> 16;
              if ((*(a2 + 312))(a2, 2, &v18) != 1)
              {
                break;
              }

              if (++v14 == 256)
              {
                ++v13;
                result = 1;
                if (v13 != 3)
                {
                  goto LABEL_19;
                }

                return result;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ****sub_240AD55E4(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v50[19] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  LODWORD(v50[0]) = 0;
  if ((*(a2 + 280))(a2, v50, 4, 1) != 1)
  {
LABEL_58:
    v18 = 0;
    goto LABEL_59;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_9:
  v10 = LODWORD(v50[0]);
  v11 = v9[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*(v11 + 4))();
  v18 = v12;
  if (v12)
  {
    v19 = bswap32(v10);
    if (v19 == 1)
    {
      v39 = 0;
      v40 = v12;
      while (1)
      {
        v41 = &v50[v39 + 10];
        if (!sub_240AD4570(a2, &v50[v39 + 10]))
        {
          break;
        }

        if (!sub_240AD4570(a2, v41 + 1))
        {
          break;
        }

        if (!sub_240AD4570(a2, &v50[v39 + 12]))
        {
          break;
        }

        v42 = v41[1];
        v50[0] = *v41;
        v43 = pow(v50[v39 + 12] - v42, 1.0 / v50[0]);
        memset(&v50[2], 0, 24);
        v50[1] = v43;
        v50[5] = v42;
        v50[6] = 0.0;
        v44 = sub_240AC2604(*(a1 + 40), 5);
        *v40 = v44;
        if (!v44)
        {
          break;
        }

        ++v40;
        v39 += 3;
        if (v39 == 9)
        {
LABEL_44:
          *a3 = 1;
          goto LABEL_59;
        }
      }
    }

    else if (v19)
    {
      sub_240AC15A4(*(a1 + 40), 8, "Unsupported tag type for VCGT '%d'", v13, v14, v15, v16, v17, v19);
    }

    else
    {
      LOWORD(v50[0]) = 0;
      if ((*(a2 + 280))(a2, v50, 2, 1) == 1)
      {
        if (LOWORD(v50[0]) == 768)
        {
          LOWORD(v50[0]) = 0;
          if ((*(a2 + 280))(a2, v50, 2, 1) == 1)
          {
            v25 = LOWORD(v50[0]);
            LOWORD(v50[0]) = 0;
            if ((*(a2 + 280))(a2, v50, 2, 1) == 1)
            {
              v29 = 0;
              v30 = __rev16(v25);
              v31 = bswap32(LOWORD(v50[0])) >> 16;
              if (LOWORD(v50[0]) == 256 && v25 == 1 && a4 == 1576)
              {
                v34 = 2;
              }

              else
              {
                v34 = v31;
              }

              while (1)
              {
                v35 = sub_240AC1684(*(a1 + 40), v30, 0, 0, 0, v26, v27, v28);
                v18[v29] = v35;
                if (!v35)
                {
                  break;
                }

                if (v34 == 2)
                {
                  if (!sub_240AD4408(a2, v30, *(v35 + 48)))
                  {
                    break;
                  }
                }

                else
                {
                  if (v34 != 1)
                  {
                    sub_240AC15A4(*(a1 + 40), 8, "Unsupported bit depth for VCGT '%d'", v36, v37, v26, v27, v28, 8 * v34);
                    break;
                  }

                  if (v25)
                  {
                    v38 = 0;
                    do
                    {
                      LOBYTE(v50[0]) = 0;
                      if ((*(a2 + 280))(a2, v50, 1, 1) != 1)
                      {
                        goto LABEL_48;
                      }

                      *(v18[v29][6] + v38++) = LOBYTE(v50[0]) | (LOBYTE(v50[0]) << 8);
                    }

                    while (v30 != v38);
                  }
                }

                if (++v29 == 3)
                {
                  goto LABEL_44;
                }
              }
            }
          }
        }

        else
        {
          sub_240AC15A4(*(a1 + 40), 8, "Unsupported number of channels for VCGT '%d'", v20, v21, v22, v23, v24, __rev16(LOWORD(v50[0])));
        }
      }
    }

LABEL_48:
    sub_240AC29F4(v18);
    v45 = *(a1 + 40);
    if (v45)
    {
      v46 = &qword_27E516570;
      while (1)
      {
        v46 = *v46;
        if (!v46)
        {
          break;
        }

        if (v46 == v45)
        {
          goto LABEL_55;
        }
      }

      v46 = &unk_278CB2F00;
    }

    else
    {
      v46 = &unk_278CB2F00;
    }

LABEL_55:
    v47 = v46[6];
    if (!v47)
    {
      v47 = &xmmword_281500C10;
    }

    (*(v47 + 2))();
    goto LABEL_58;
  }

LABEL_59:
  v48 = *MEMORY[0x277D85DE8];
  return v18;
}

void **sub_240AD59DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a2[1];
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
        goto LABEL_8;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_8:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))(a2[1], 16, 0x20040A4A59CD2);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = v3;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (!sub_240ACD00C(v7, v2[3], v2[4], v2[1], v2[2]))
      {
        sub_240ACCE7C(v7);
        return 0;
      }
    }
  }

  return v7;
}

uint64_t sub_240AD5AAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    memset(v21, 0, sizeof(v21));
    memset(v20, 0, sizeof(v20));
    v6 = (*(a2 + 304))(a2);
    v7 = *v3;
    if (*v3)
    {
      LODWORD(v8) = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        if (v7[1])
        {
          v10 = 1;
        }

        if (v7[2])
        {
          v9 = 1;
        }

        v8 = (v8 + 1);
        v7 = *v7;
      }

      while (v7);
      if (v10)
      {
        v11 = 24;
      }

      else
      {
        v11 = 16;
      }

      if (v9)
      {
        v11 += 8;
      }
    }

    else
    {
      v8 = 0;
      v11 = 16;
    }

    v22 = bswap32(v8);
    if ((*(a2 + 312))(a2, 4, &v22) == 1)
    {
      v22 = bswap32(v11);
      if ((*(a2 + 312))(a2, 4, &v22) == 1)
      {
        v12 = (*(a2 + 304))(a2);
        if (sub_240AD5D00(*(a1 + 40), v20, v8, v11) && sub_240AD5DAC(a2, v20, v8, v11))
        {
          if (v8)
          {
            v13 = 0;
            v14 = v6 - 8;
            while (1)
            {
              v3 = *v3;
              if (!sub_240AD5E6C(a2, v20, v13, v3[3], v14))
              {
                break;
              }

              if (!sub_240AD5E6C(a2, &v20[1] + 8, v13, v3[4], v14))
              {
                break;
              }

              v15 = v3[1];
              if (v15)
              {
                if (!sub_240AD5F58(a2, v21, v13, v15, v14))
                {
                  break;
                }
              }

              v16 = v3[2];
              if (v16)
              {
                if (!sub_240AD5F58(a2, &v21[1] + 8, v13, v16, v14))
                {
                  break;
                }
              }

              if (v8 == ++v13)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
LABEL_28:
            v17 = (*(a2 + 304))(a2);
            if ((*(a2 + 288))(a2, v12) && sub_240AD5DAC(a2, v20, v8, v11) && (*(a2 + 288))(a2, v17))
            {
              v18 = 1;
LABEL_35:
              sub_240AD5FDC(v20);
              return v18;
            }
          }
        }

        v18 = 0;
        goto LABEL_35;
      }
    }
  }

  return 0;
}

uint64_t sub_240AD5D00(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (sub_240AD63F0(a1, a2, a3) && sub_240AD63F0(a1, (a2 + 24), a3) && (a4 < 0x11 || sub_240AD63F0(a1, (a2 + 48), a3) && (a4 < 0x19 || sub_240AD63F0(a1, (a2 + 72), a3))))
  {
    return 1;
  }

  sub_240AD5FDC(a2);
  return 0;
}

BOOL sub_240AD5DAC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (!a3)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    result = sub_240AD635C(a1, a2, v8);
    if (!result)
    {
      break;
    }

    result = sub_240AD635C(a1, a2 + 24, v8);
    if (!result)
    {
      break;
    }

    if (a4 >= 0x11)
    {
      result = sub_240AD635C(a1, a2 + 48, v8);
      if (!result)
      {
        break;
      }

      if (a4 >= 0x19)
      {
        result = sub_240AD635C(a1, a2 + 72, v8);
        if (!result)
        {
          break;
        }
      }
    }

    if (a3 == ++v8)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_240AD5E6C(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, int a5)
{
  v10 = (*(a1 + 304))();
  v11 = *(a2 + 8);
  *(v11 + 4 * a3) = v10 - a5;
  if (!a4)
  {
    *(*(a2 + 16) + 4 * a3) = 0;
    *(v11 + 4 * a3) = 0;
    return 1;
  }

  v12 = v10;
  v13 = (a4 - 4);
  LODWORD(v14) = -1;
  do
  {
    v15 = *(v13 + 1);
    v13 += 2;
    v14 = (v14 + 1);
  }

  while (v15);
  if (((v13 - a4) & 0x3FFFFFFFCLL) == 0)
  {
LABEL_7:
    *(*(a2 + 16) + 4 * a3) = (*(a1 + 304))(a1) - v12;
    return 1;
  }

  while (1)
  {
    v16 = *a4;
    a4 += 4;
    v18 = bswap32(v16) >> 16;
    if ((*(a1 + 312))(a1, 2, &v18) != 1)
    {
      return 0;
    }

    if (!--v14)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_240AD5F58(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v10 = (*(a1 + 304))();
  v11 = v10;
  *(*(a2 + 8) + 4 * a3) = v10 - a5;
  result = sub_240AD613C(v10, a1, a4);
  if (result)
  {
    *(*(a2 + 16) + 4 * a3) = (*(a1 + 304))(a1) - v11;
    return 1;
  }

  return result;
}

void *sub_240AD5FDC(void *result)
{
  v1 = result;
  if (result[1])
  {
    result = sub_240AD6054(result);
  }

  if (v1[4])
  {
    result = sub_240AD6054(v1 + 3);
  }

  if (v1[7])
  {
    result = sub_240AD6054(v1 + 6);
  }

  if (v1[10])
  {

    return sub_240AD6054(v1 + 9);
  }

  return result;
}

void *sub_240AD6054(void *result)
{
  v1 = result;
  v2 = result + 1;
  if (result[1])
  {
    v3 = *result;
    if (*v1)
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

    result = (*(v5 + 2))();
  }

  if (v1[2])
  {
    if (*v1)
    {
      v6 = &qword_27E516570;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6 == *v1)
        {
          goto LABEL_20;
        }
      }

      v6 = &unk_278CB2F00;
    }

    else
    {
      v6 = &unk_278CB2F00;
    }

LABEL_20:
    v7 = v6[6];
    if (!v7)
    {
      v7 = &xmmword_281500C10;
    }

    result = (*(v7 + 2))();
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_240AD613C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v17 = bswap32(*(a3 + 12));
    if ((*(a2 + 312))(a2, 4, &v17) == 1)
    {
      v17 = 201326592;
      if ((*(a2 + 312))(a2, 4, &v17) == 1)
      {
        v5 = *(a3 + 12);
        if (v5)
        {
          v6 = 0;
          v7 = 0;
          v8 = 12 * v5 + 16;
          while (1)
          {
            v9 = (*(a3 + 16) + v6);
            v10 = *(v9 + 1);
            v11 = *(v9 + 2);
            LOWORD(v17) = bswap32(*v9) >> 16;
            if ((*(a2 + 312))(a2, 2, &v17) != 1)
            {
              break;
            }

            LOWORD(v17) = bswap32(*(*(a3 + 16) + v6 + 2)) >> 16;
            if ((*(a2 + 312))(a2, 2, &v17) != 1)
            {
              break;
            }

            v17 = bswap32(v11 >> 1);
            if ((*(a2 + 312))(a2, 4, &v17) != 1)
            {
              break;
            }

            v17 = bswap32(v8 + (v10 >> 1));
            if ((*(a2 + 312))(a2, 4, &v17) != 1)
            {
              break;
            }

            ++v7;
            v6 += 12;
            if (v7 >= *(a3 + 12))
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v12 = *(a3 + 28);
          if (v12 < 4)
          {
            return 1;
          }

          v14 = *(a3 + 32);
          v15 = v12 >> 2;
          while (1)
          {
            v16 = *v14;
            v14 += 2;
            LOWORD(v17) = bswap32(v16) >> 16;
            result = (*(a2 + 312))(a2, 2, &v17);
            if (result != 1)
            {
              break;
            }

            if (!--v15)
            {
              return result;
            }
          }
        }
      }
    }
  }

  else
  {
    v17 = 0;
    if ((*(a2 + 312))(a2, 4, &v17) == 1)
    {
      v17 = 201326592;
      return (*(a2 + 312))(a2, 4, &v17) == 1;
    }
  }

  return 0;
}

BOOL sub_240AD635C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = bswap32(*(*(a2 + 8) + 4 * a3));
  if ((*(a1 + 312))(a1, 4, &v7) != 1)
  {
    return 0;
  }

  v8 = bswap32(*(*(a2 + 16) + 4 * a3));
  return (*(a1 + 312))(a1, 4, &v8) == 1;
}

uint64_t sub_240AD63F0(uint64_t *a1, uint64_t **a2, uint64_t a3)
{
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
        goto LABEL_8;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_8:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  result = (*(v7 + 4))(a1, a3, 4, 0x100004052888210);
  a2[1] = result;
  if (result)
  {
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
          goto LABEL_18;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_18:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    v11 = (*(v10 + 4))(a1, a3, 4, 0x100004052888210);
    a2[2] = v11;
    if (v11)
    {
      *a2 = a1;
      return 1;
    }

    else
    {
      if (a2[1])
      {
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
              goto LABEL_30;
            }
          }

          v12 = &unk_278CB2F00;
        }

        else
        {
          v12 = &unk_278CB2F00;
        }

LABEL_30:
        v13 = v12[6];
        if (!v13)
        {
          v13 = &xmmword_281500C10;
        }

        (*(v13 + 2))(a1);
      }

      return 0;
    }
  }

  return result;
}

void **sub_240AD6570(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  *a3 = 0;
  v6 = (*(a2 + 304))(a2);
  LODWORD(v45[0]) = 0;
  if ((*(a2 + 280))(a2, v45, 4, 1) != 1)
  {
    return 0;
  }

  v7 = v45[0];
  LODWORD(v45[0]) = 0;
  if ((*(a2 + 280))(a2, v45, 4, 1) != 1)
  {
    return 0;
  }

  v13 = bswap32(v45[0]);
  if (v13 > 0x20 || ((1 << v13) & 0x101010000) == 0)
  {
    sub_240AC15A4(*(a1 + 40), 8, "Unknown record length in dictionary '%d'", v8, v9, v10, v11, v12, v13);
    return 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_13;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_13:
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  v16 = v15[6];
  v17 = &xmmword_281500C10;
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v18 = (*(v16 + 1))(v14, 16, 0x20040A4A59CD2);
  v19 = v18;
  if (!v18)
  {
    return v19;
  }

  v20 = bswap32(v7);
  *(v18 + 8) = v14;
  if (!sub_240AD5D00(*(a1 + 40), v45, v20, v13))
  {
LABEL_63:
    sub_240AD5FDC(v45);
    sub_240ACCE7C(v19);
    return 0;
  }

  if (v7)
  {
    v21 = 0;
    v22 = v6 - 8;
    do
    {
      if (!sub_240AD696C(a2, v45, v21, v22) || !sub_240AD696C(a2, &v45[1] + 8, v21, v22) || v13 >= 0x11 && (!sub_240AD696C(a2, v46, v21, v22) || v13 >= 0x19 && !sub_240AD696C(a2, &v46[1] + 8, v21, v22)))
      {
        goto LABEL_63;
      }

      ++v21;
    }

    while (v20 != v21);
    for (i = 0; i != v20; ++i)
    {
      if (!sub_240AD6A3C(a2, v45, i, &v44) || !sub_240AD6A3C(a2, &v45[1] + 1, i, &v43) || v13 >= 0x11 && (!sub_240AD6B9C(a1, a2, v46, i, &v42) || v13 >= 0x19 && !sub_240AD6B9C(a1, a2, &v46[1] + 8, i, &v41)))
      {
        goto LABEL_63;
      }

      v29 = v17;
      v30 = v43;
      v31 = v44;
      if (v44 && v43)
      {
        v40 = sub_240ACD00C(v19, v44, v43, v42, v41) == 0;
      }

      else
      {
        sub_240AC15A4(*(a1 + 40), 12, "Bad dictionary Name/Value", v24, v25, v26, v27, v28, v39);
        v40 = 1;
        if (!v31)
        {
          goto LABEL_46;
        }
      }

      v32 = *(a1 + 40);
      if (v32)
      {
        v33 = &qword_27E516570;
        while (1)
        {
          v33 = *v33;
          if (!v33)
          {
            break;
          }

          if (v33 == v32)
          {
            goto LABEL_43;
          }
        }
      }

      v33 = &unk_278CB2F00;
LABEL_43:
      v34 = v33[6];
      if (!v34)
      {
        v34 = v29;
      }

      (*(v34 + 16))();
LABEL_46:
      v17 = v29;
      if (v30)
      {
        v35 = *(a1 + 40);
        if (v35)
        {
          v36 = &qword_27E516570;
          while (1)
          {
            v36 = *v36;
            if (!v36)
            {
              break;
            }

            if (v36 == v35)
            {
              goto LABEL_53;
            }
          }
        }

        v36 = &unk_278CB2F00;
LABEL_53:
        v37 = v36[6];
        if (!v37)
        {
          v37 = v29;
        }

        (*(v37 + 16))();
      }

      if (v42)
      {
        sub_240ACBDDC(v42);
      }

      if (v41)
      {
        sub_240ACBDDC(v41);
      }

      if (v40)
      {
        goto LABEL_63;
      }
    }
  }

  sub_240AD5FDC(v45);
  *a3 = 1;
  return v19;
}

uint64_t sub_240AD696C(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = *(a2 + 8);
  v13 = 0;
  if ((*(a1 + 280))(a1, &v13, 4, 1) != 1)
  {
    return 0;
  }

  if (v8)
  {
    *(v8 + 4 * a3) = bswap32(v13);
  }

  v9 = *(a2 + 16);
  v14 = 0;
  if ((*(a1 + 280))(a1, &v14, 4, 1) != 1)
  {
    return 0;
  }

  if (v9)
  {
    *(v9 + 4 * a3) = bswap32(v14);
  }

  v10 = *(a2 + 8);
  v11 = *(v10 + 4 * a3);
  if (v11)
  {
    *(v10 + 4 * a3) = v11 + a4;
  }

  return 1;
}

uint64_t sub_240AD6A3C(uint64_t a1, uint64_t **a2, unsigned int a3, uint64_t *a4)
{
  if (!*(a2[1] + a3))
  {
    *a4 = 0;
    return 1;
  }

  result = (*(a1 + 288))();
  if (result)
  {
    v9 = *(a2[2] + a3) >> 1;
    if (*a2)
    {
      v10 = &qword_27E516570;
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        if (v10 == *a2)
        {
          goto LABEL_11;
        }
      }

      v10 = &unk_278CB2F00;
    }

    else
    {
      v10 = &unk_278CB2F00;
    }

LABEL_11:
    v11 = v10[6];
    if (!v11)
    {
      v11 = &xmmword_281500C10;
    }

    result = (*(v11 + 1))();
    *a4 = result;
    if (result)
    {
      if (sub_240AD6F1C(a1, v9, result))
      {
        *(*a4 + 4 * v9) = 0;
        return 1;
      }

      if (*a4)
      {
        if (*a2)
        {
          v12 = &qword_27E516570;
          while (1)
          {
            v12 = *v12;
            if (!v12)
            {
              break;
            }

            if (v12 == *a2)
            {
              goto LABEL_26;
            }
          }

          v12 = &unk_278CB2F00;
        }

        else
        {
          v12 = &unk_278CB2F00;
        }

LABEL_26:
        v13 = v12[6];
        if (!v13)
        {
          v13 = &xmmword_281500C10;
        }

        (*(v13 + 2))();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_240AD6B9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t ***a5)
{
  if (*(*(a3 + 8) + 4 * a4) && *(*(a3 + 16) + 4 * a4))
  {
    result = (*(a2 + 288))(a2);
    if (result)
    {
      v11 = sub_240AD6C3C(a1, a2, &v12, *(*(a3 + 16) + 4 * a4));
      *a5 = v11;
      return v11 != 0;
    }
  }

  else
  {
    *a5 = 0;
    return 1;
  }

  return result;
}

uint64_t **sub_240AD6C3C(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  *a3 = 0;
  v39 = 0;
  if ((*(a2 + 280))(a2, &v39, 4, 1) != 1)
  {
    return 0;
  }

  v8 = v39;
  v39 = 0;
  if ((*(a2 + 280))(a2, &v39, 4, 1) != 1)
  {
    return 0;
  }

  v14 = *(a1 + 40);
  if (v39 != 201326592)
  {
    sub_240AC15A4(v14, 8, "multiLocalizedUnicodeType of len != 12 is not supported.", v9, v10, v11, v12, v13, v37);
    return 0;
  }

  v15 = bswap32(v8);
  v16 = sub_240ACB75C(v14, v15);
  v17 = v16;
  if (v16)
  {
    *(v16 + 3) = v15;
    if (v8)
    {
      v18 = 0;
      v19 = 0;
      v20 = 12 * v15;
      v21 = 12 * v15 + 16;
      v38 = a4 + 8;
      v22 = v16[2];
      do
      {
        LOWORD(v39) = 0;
        if ((*(a2 + 280))(a2, &v39, 2, 1) != 1)
        {
          goto LABEL_35;
        }

        if (v22)
        {
          *(v22 + v18) = bswap32(v39) >> 16;
        }

        v23 = v17[2];
        LOWORD(v39) = 0;
        if ((*(a2 + 280))(a2, &v39, 2, 1) != 1)
        {
          goto LABEL_35;
        }

        *(v23 + v18 + 2) = bswap32(v39) >> 16;
        v39 = 0;
        if ((*(a2 + 280))(a2, &v39, 4, 1) != 1)
        {
          goto LABEL_35;
        }

        v24 = v39;
        v39 = 0;
        if ((*(a2 + 280))(a2, &v39, 4, 1) != 1)
        {
          goto LABEL_35;
        }

        v25 = bswap32(v39);
        if (v25 < v21)
        {
          goto LABEL_35;
        }

        v26 = bswap32(v24);
        if (__CFADD__(v26, v25) || v26 + v25 > v38)
        {
          goto LABEL_35;
        }

        v27 = v25 - v20 - 16;
        v22 = v17[2];
        v28 = v22 + v18;
        *(v28 + 1) = 2 * v27;
        *(v28 + 2) = 2 * v26;
        v29 = v26 + v27;
        if (v29 > v19)
        {
          v19 = v29;
        }

        v18 += 12;
        --v15;
      }

      while (v15);
      v30 = 2 * v19;
      if (!(2 * v19))
      {
        goto LABEL_27;
      }

      v31 = *(a1 + 40);
      if (v31)
      {
        v32 = &qword_27E516570;
        while (1)
        {
          v32 = *v32;
          if (!v32)
          {
            break;
          }

          if (v32 == v31)
          {
            goto LABEL_31;
          }
        }

        v32 = &unk_278CB2F00;
      }

      else
      {
        v32 = &unk_278CB2F00;
      }

LABEL_31:
      v34 = v32[6];
      if (!v34)
      {
        v34 = &xmmword_281500C10;
      }

      v35 = (*v34)();
      if (!v35 || (v33 = v35, !sub_240AD6F1C(a2, v30 >> 2, v35)))
      {
LABEL_35:
        sub_240ACBDDC(v17);
        return 0;
      }
    }

    else
    {
      v30 = 0;
LABEL_27:
      v33 = 0;
    }

    v17[4] = v33;
    *(v17 + 6) = v30;
    *(v17 + 7) = v30;
    *a3 = 1;
  }

  return v17;
}

uint64_t sub_240AD6F1C(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a2;
  while (1)
  {
    v7 = 0;
    if ((*(a1 + 280))(a1, &v7, 2, 1) != 1)
    {
      break;
    }

    *a3++ = bswap32(v7) >> 16;
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_240AD6FBC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = (*(a2 + 304))(a2);
  v9 = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v9) != 1)
  {
    return 0;
  }

  v7 = *a3;

  return sub_240AD7078(a1, a2, v7, v6 - 8, a3, sub_240AD73EC);
}

uint64_t sub_240AD7078(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  LODWORD(v8) = a3;
  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == v11)
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
  v13 = v12[6];
  if (!v13)
  {
    v13 = &xmmword_281500C10;
  }

  v14 = (*(v13 + 4))();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = *(a2 + 8);
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
        goto LABEL_19;
      }
    }

    v17 = &unk_278CB2F00;
  }

  else
  {
    v17 = &unk_278CB2F00;
  }

LABEL_19:
  v19 = v17[6];
  if (!v19)
  {
    v19 = &xmmword_281500C10;
  }

  v20 = (*(v19 + 4))();
  if (v20)
  {
    v21 = v20;
    v36 = (*(a2 + 304))(a2);
    if (v8)
    {
      v22 = v8;
      while (1)
      {
        v38 = 0;
        if ((*(a2 + 312))(a2, 4, &v38) != 1)
        {
          break;
        }

        v38 = 0;
        if ((*(a2 + 312))(a2, 4, &v38) != 1)
        {
          break;
        }

        if (!--v22)
        {
          v23 = 0;
          while (1)
          {
            v24 = (*(a2 + 304))(a2);
            v15[v23] = v24 - a4;
            if (!a6(a1, a2, a5, v23, 0))
            {
              goto LABEL_38;
            }

            v21[v23++] = (*(a2 + 304))(a2) - v24;
            if (v8 == v23)
            {
              goto LABEL_30;
            }
          }
        }
      }
    }

    else
    {
LABEL_30:
      v25 = (*(a2 + 304))(a2);
      if ((*(a2 + 288))(a2, v36))
      {
        if (v8)
        {
          v8 = v8;
          v26 = v15;
          v27 = v21;
          while (1)
          {
            v28 = *v26++;
            v38 = bswap32(v28);
            if ((*(a2 + 312))(a2, 4, &v38) != 1)
            {
              break;
            }

            v38 = bswap32(*v27);
            if ((*(a2 + 312))(a2, 4, &v38) != 1)
            {
              break;
            }

            ++v27;
            if (!--v8)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
LABEL_36:
          if ((*(a2 + 288))(a2, v25))
          {
            v18 = 1;
LABEL_39:
            v29 = *(a2 + 8);
            if (v29)
            {
              v30 = &qword_27E516570;
              while (1)
              {
                v30 = *v30;
                if (!v30)
                {
                  break;
                }

                if (v30 == v29)
                {
                  goto LABEL_47;
                }
              }

              v30 = &unk_278CB2F00;
            }

            else
            {
              v30 = &unk_278CB2F00;
            }

LABEL_47:
            v31 = v30[6];
            if (!v31)
            {
              v31 = &xmmword_281500C10;
            }

            (*(v31 + 2))();
            goto LABEL_50;
          }
        }
      }
    }

LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

  v18 = 0;
LABEL_50:
  v32 = *(a2 + 8);
  if (v32)
  {
    v33 = &qword_27E516570;
    while (1)
    {
      v33 = *v33;
      if (!v33)
      {
        break;
      }

      if (v33 == v32)
      {
        goto LABEL_57;
      }
    }

    v33 = &unk_278CB2F00;
  }

  else
  {
    v33 = &unk_278CB2F00;
  }

LABEL_57:
  v34 = v33[6];
  if (!v34)
  {
    v34 = &xmmword_281500C10;
  }

  (*(v34 + 2))();
  return v18;
}

uint64_t sub_240AD73EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a4;
  result = (*(a2 + 312))(a2, 16, *(a3 + 16) + (a4 << 6) + 20);
  if (result)
  {
    v9 = *(*(a3 + 16) + (v7 << 6) + 56);

    return sub_240AD7474(a1, a2, v9);
  }

  return result;
}

uint64_t sub_240AD7474(uint64_t a1, uint64_t a2, int *a3)
{
  if (!(*(a1 + 48) >> 26))
  {
    v8 = 1668506980;
    if ((*(a2 + 312))(a2, 8, &v8))
    {

      return sub_240AD7560(a1, a2, a3);
    }

    return 0;
  }

  v8 = 1668639853;
  v7 = (*(a2 + 312))(a2, 8, &v8);
  if (!v7)
  {
    return 0;
  }

  return sub_240AD613C(v7, a2, a3);
}

uint64_t sub_240AD7560(uint64_t a1, uint64_t a2, int *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v6 = sub_240ACBF1C(a3, 0, 0, word_240C15120, 0, 0);
  v7 = *(a1 + 40);
  if (v6)
  {
    if (v7)
    {
      v8 = &qword_27E516570;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 == v7)
        {
          goto LABEL_14;
        }
      }

      v8 = &unk_278CB2F00;
    }

    else
    {
      v8 = &unk_278CB2F00;
    }

LABEL_14:
    v10 = v8[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    v11 = (*(v10 + 4))();
    if (!v11)
    {
      v15 = 0;
      goto LABEL_86;
    }

    v12 = v11;
    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = &qword_27E516570;
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v14 == v13)
        {
          goto LABEL_26;
        }
      }

      v14 = &unk_278CB2F00;
    }

    else
    {
      v14 = &unk_278CB2F00;
    }

LABEL_26:
    v16 = v14[6];
    if (!v16)
    {
      v16 = &xmmword_281500C10;
    }

    v17 = (*(v16 + 4))();
    if (!v17)
    {
      v15 = 0;
LABEL_65:
      v34 = *(a1 + 40);
      if (v34)
      {
        v35 = &qword_27E516570;
        while (1)
        {
          v35 = *v35;
          if (!v35)
          {
            break;
          }

          if (v35 == v34)
          {
            goto LABEL_72;
          }
        }

        v35 = &unk_278CB2F00;
      }

      else
      {
        v35 = &unk_278CB2F00;
      }

LABEL_72:
      v36 = v35[6];
      if (!v36)
      {
        v36 = &xmmword_281500C10;
      }

      (*(v36 + 2))();
      goto LABEL_75;
    }

    sub_240ACBF1C(a3, 0, 0, word_240C15120, v12, v6);
    v42 = 0;
    if (a3)
    {
      v18 = sub_240ACBFCC(a3, &v42, 0, 0);
      if (v18)
      {
        v19 = 4 * v6;
        if (4 * v6)
        {
          v20 = v42;
          if (v42 + 4 > v19)
          {
            v20 = v19 - 4;
            v42 = v19 - 4;
          }

          memmove(v17, v18, v20);
          *&v17[v42 & 0xFFFFFFFC] = 0;
        }
      }
    }
  }

  else
  {
    if (v7)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == v7)
        {
          goto LABEL_37;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_37:
    v21 = v9[6];
    if (!v21)
    {
      v21 = &xmmword_281500C10;
    }

    v12 = (*(v21 + 5))();
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = &qword_27E516570;
      while (1)
      {
        v23 = *v23;
        if (!v23)
        {
          break;
        }

        if (v23 == v22)
        {
          goto LABEL_46;
        }
      }

      v23 = &unk_278CB2F00;
    }

    else
    {
      v23 = &unk_278CB2F00;
    }

LABEL_46:
    v24 = v23[6];
    if (!v24)
    {
      v24 = &xmmword_281500C10;
    }

    v17 = (*(v24 + 5))();
  }

  v25 = strlen(v12);
  v26 = (v25 + 1);
  v27 = bswap32(v26);
  v42 = v27;
  if ((*(a2 + 312))(a2, 4, &v42) == 1)
  {
    if ((*(a2 + 312))(a2, v26, v12))
    {
      v42 = 0;
      if ((*(a2 + 312))(a2, 4, &v42) == 1)
      {
        v42 = v27;
        if ((*(a2 + 312))(a2, 4, &v42) == 1)
        {
          if (v25 == -1)
          {
LABEL_57:
            LOWORD(v42) = 0;
            if ((*(a2 + 312))(a2, 2, &v42) == 1)
            {
              LOBYTE(v42) = 0;
              if ((*(a2 + 312))(a2, 1, &v42) == 1)
              {
                if ((*(a2 + 312))(a2, 67, v43))
                {
                  v31 = v25 + 2 * v26;
                  v32 = v31 + 91;
                  v33 = (v31 + 94) & 0xFFFFFFFC;
                  if (v33 == v32 || (*(a2 + 312))(a2, v33 - v32, v43))
                  {
                    v15 = 1;
                    goto LABEL_64;
                  }
                }
              }
            }
          }

          else
          {
            v28 = (v25 + 1);
            v29 = v17;
            while (1)
            {
              v30 = *v29;
              v29 += 2;
              LOWORD(v42) = bswap32(v30) >> 16;
              if ((*(a2 + 312))(a2, 2, &v42) != 1)
              {
                break;
              }

              if (!--v28)
              {
                goto LABEL_57;
              }
            }
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_64:
  if (v12)
  {
    goto LABEL_65;
  }

LABEL_75:
  if (v17)
  {
    v37 = *(a1 + 40);
    if (v37)
    {
      v38 = &qword_27E516570;
      while (1)
      {
        v38 = *v38;
        if (!v38)
        {
          break;
        }

        if (v38 == v37)
        {
          goto LABEL_83;
        }
      }

      v38 = &unk_278CB2F00;
    }

    else
    {
      v38 = &unk_278CB2F00;
    }

LABEL_83:
    v39 = v38[6];
    if (!v39)
    {
      v39 = &xmmword_281500C10;
    }

    (*(v39 + 2))();
  }

LABEL_86:
  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

unsigned int *sub_240AD7A74(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = (*(a2 + 304))(a2);
  v10 = 0;
  if ((*(a2 + 280))(a2, &v10, 4, 1) != 1)
  {
    return 0;
  }

  v7 = bswap32(v10);
  v8 = sub_240ACC9A8(*(a1 + 40), v7);
  if (v8)
  {
    if (sub_240AD7B50(a1, a2, v7, v6 - 8, v8, sub_240AD7E58))
    {
      *a3 = 1;
      return v8;
    }

    sub_240ACCB4C(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_240AD7B50(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  LODWORD(v9) = a3;
  if (a3 > (*(a2 + 20) - (*(a2 + 304))(a2)) >> 3)
  {
    return 0;
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    v13 = &qword_27E516570;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (v13 == v12)
      {
        goto LABEL_9;
      }
    }

    v13 = &unk_278CB2F00;
  }

  else
  {
    v13 = &unk_278CB2F00;
  }

LABEL_9:
  v14 = v13[6];
  if (!v14)
  {
    v14 = &xmmword_281500C10;
  }

  v15 = (*(v14 + 4))();
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = *(a2 + 8);
  if (v17)
  {
    v18 = &qword_27E516570;
    while (1)
    {
      v18 = *v18;
      if (!v18)
      {
        break;
      }

      if (v18 == v17)
      {
        goto LABEL_20;
      }
    }

    v18 = &unk_278CB2F00;
  }

  else
  {
    v18 = &unk_278CB2F00;
  }

LABEL_20:
  v20 = v18[6];
  if (!v20)
  {
    v20 = &xmmword_281500C10;
  }

  v21 = (*(v20 + 4))();
  if (v21)
  {
    v22 = v21;
    if (v9)
    {
      v9 = v9;
      v23 = v16;
      v24 = v21;
      v33 = v9;
      do
      {
        v34 = 0;
        if ((*(a2 + 280))(a2, &v34, 4, 1) != 1 || (*v23 = bswap32(v34), v35 = 0, (*(a2 + 280))(a2, &v35, 4, 1) != 1))
        {
          v19 = 0;
          goto LABEL_36;
        }

        *v24++ = bswap32(v35);
        *v23++ += a4;
        --v9;
      }

      while (v9);
      v25 = 0;
      while ((*(a2 + 288))(a2, v16[v25]) && a6(a1, a2, a5, v25, *(v22 + 4 * v25)))
      {
        if (v33 == ++v25)
        {
          goto LABEL_32;
        }
      }

      v19 = 0;
    }

    else
    {
LABEL_32:
      v19 = 1;
    }

LABEL_36:
    v26 = *(a2 + 8);
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
          goto LABEL_43;
        }
      }

      v27 = &unk_278CB2F00;
    }

    else
    {
      v27 = &unk_278CB2F00;
    }

LABEL_43:
    v28 = v27[6];
    if (!v28)
    {
      v28 = &xmmword_281500C10;
    }

    (*(v28 + 2))();
  }

  else
  {
    v19 = 0;
  }

  v29 = *(a2 + 8);
  if (v29)
  {
    v30 = &qword_27E516570;
    while (1)
    {
      v30 = *v30;
      if (!v30)
      {
        break;
      }

      if (v30 == v29)
      {
        goto LABEL_53;
      }
    }

    v30 = &unk_278CB2F00;
  }

  else
  {
    v30 = &unk_278CB2F00;
  }

LABEL_53:
  v31 = v30[6];
  if (!v31)
  {
    v31 = &xmmword_281500C10;
  }

  (*(v31 + 2))();
  return v19;
}

BOOL sub_240AD7E58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8 = *(a3 + 16) + (a4 << 6);
  if ((*(a2 + 280))(a2, v8 + 20, 16, 1) != 1)
  {
    return 0;
  }

  return sub_240AD7EE8(a1, a2, (v8 + 56), a5);
}

BOOL sub_240AD7EE8(uint64_t a1, uint64_t a2, uint64_t ***a3, uint64_t a4)
{
  v13 = 0;
  v8 = (*(a2 + 280))(a2, &v13, 8, 1);
  v9 = bswap32(v13);
  if (v8 != 1)
  {
    v9 = 0;
  }

  if (v9 == 1684370275)
  {
    if (*a3)
    {
      sub_240ACBDDC(*a3);
    }

    v11 = sub_240AD81E4(a1, a2, &v12, a4);
  }

  else if (v9 == 1835824483)
  {
    if (*a3)
    {
      sub_240ACBDDC(*a3);
    }

    v11 = sub_240AD6C3C(a1, a2, &v12, a4);
  }

  else
  {
    result = 0;
    if (v9 != 1952807028)
    {
      return result;
    }

    if (*a3)
    {
      sub_240ACBDDC(*a3);
    }

    v11 = sub_240AD7FF8(a1, a2, &v12, a4);
  }

  *a3 = v11;
  return v11 != 0;
}

uint64_t **sub_240AD7FF8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v8 = sub_240ACB75C(*(a1 + 40), 1u);
  if (!v8)
  {
    return v8;
  }

  *a3 = 0;
  if (a4 == -1)
  {
    goto LABEL_20;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_10:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*v11)();
  if (!v12)
  {
LABEL_20:
    sub_240ACBDDC(v8);
    return 0;
  }

  v13 = v12;
  if ((*(a2 + 280))(a2, v12, 1, a4) != a4 || (v13[a4] = 0, *a3 = 1, !sub_240ACB8DC(v8, 0, 0, 0, 0, v13)))
  {
    sub_240ACBDDC(v8);
    v16 = *(a1 + 40);
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
    v18 = v17[6];
    if (!v18)
    {
      v18 = &xmmword_281500C10;
    }

    (*(v18 + 2))();
    return 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_35;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_35:
  v20 = v15[6];
  if (!v20)
  {
    v20 = &xmmword_281500C10;
  }

  (*(v20 + 2))();
  return v8;
}

uint64_t **sub_240AD81E4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  *a3 = 0;
  v4 = a4 - 4;
  if (a4 < 4)
  {
    return 0;
  }

  v28 = 0;
  v29 = 0;
  if ((*(a2 + 280))(a2, &v29, 4, 1) != 1)
  {
    return 0;
  }

  v8 = bswap32(v29);
  v9 = v4 - v8;
  if (v4 < v8)
  {
    return 0;
  }

  v10 = sub_240ACB75C(*(a1 + 40), 1u);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = &qword_27E516570;
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if (v12 == v11)
        {
          goto LABEL_12;
        }
      }

      v12 = &unk_278CB2F00;
    }

    else
    {
      v12 = &unk_278CB2F00;
    }

LABEL_12:
    v13 = v12[6];
    if (!v13)
    {
      v13 = &xmmword_281500C10;
    }

    v14 = (*v13)();
    if (v14)
    {
      v15 = v14;
      if ((*(a2 + 280))(a2, v14, 1, v8) == v8 && (v15[v8] = 0, sub_240ACB8DC(v10, 0, 0, 0, 0, v15)))
      {
        v16 = *(a1 + 40);
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
              goto LABEL_37;
            }
          }

          v17 = &unk_278CB2F00;
        }

        else
        {
          v17 = &unk_278CB2F00;
        }

LABEL_37:
        v22 = v17[6];
        if (!v22)
        {
          v22 = &xmmword_281500C10;
        }

        (*(v22 + 2))();
        v23 = v9 - 8;
        if (v9 < 8)
        {
          goto LABEL_54;
        }

        v29 = 0;
        if ((*(a2 + 280))(a2, &v29, 4, 1) != 1)
        {
          goto LABEL_54;
        }

        v29 = 0;
        if ((*(a2 + 280))(a2, &v29, 4, 1) != 1)
        {
          goto LABEL_54;
        }

        v24 = v29;
        v25 = bswap32(v29);
        if (v23 < 2 * v25)
        {
          goto LABEL_54;
        }

        if (v29)
        {
          v26 = v25;
          while ((*(a2 + 280))(a2, &v28, 2, 1))
          {
            if (!--v26)
            {
              v24 = 2 * v25;
              goto LABEL_48;
            }
          }

          goto LABEL_54;
        }

LABEL_48:
        if ((v23 - v24) < 0x46 || (LOWORD(v29) = 0, (*(a2 + 280))(a2, &v29, 2, 1) != 1) || (LOBYTE(v29) = 0, (*(a2 + 280))(a2, &v29, 1, 1) != 1))
        {
LABEL_54:
          *a3 = 1;
          return v10;
        }

        v27 = 67;
        while ((*(a2 + 280))(a2, &v28, 1, 1))
        {
          if (!--v27)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = &qword_27E516570;
          while (1)
          {
            v19 = *v19;
            if (!v19)
            {
              break;
            }

            if (v19 == v18)
            {
              goto LABEL_29;
            }
          }

          v19 = &unk_278CB2F00;
        }

        else
        {
          v19 = &unk_278CB2F00;
        }

LABEL_29:
        v20 = v19[6];
        if (!v20)
        {
          v20 = &xmmword_281500C10;
        }

        (*(v20 + 2))();
      }
    }

    sub_240ACBDDC(v10);
    return 0;
  }

  return v10;
}

uint64_t sub_240AD850C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AD856C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240AD85D8(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  __asm { FMOV            V2.2D, #0.5 }

  v9 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x40F0000000000000uLL), *a3)))));
  v10 = bswap32(vcvtmd_s64_f64(a3[1].f64[0] * 65536.0 + 0.5));
  return (*(a2 + 312))(a2, 12, &v9);
}

float64x2_t *sub_240AD864C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_8:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  v9 = (*(v8 + 1))();
  if (v9)
  {
    if (sub_240AD4600(a2, v9))
    {
      *a3 = 1;
    }

    else
    {
      v10 = *(a1 + 40);
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
            goto LABEL_20;
          }
        }

        v11 = &unk_278CB2F00;
      }

      else
      {
        v11 = &unk_278CB2F00;
      }

LABEL_20:
      v12 = v11[6];
      if (!v12)
      {
        v12 = &xmmword_281500C10;
      }

      (*(v12 + 2))();
      return 0;
    }
  }

  return v9;
}

uint64_t sub_240AD8774(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AD87D4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240AD8840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V1.2D, #0.5 }

  v11 = _Q1;
  v12 = vdupq_n_s64(0x40F0000000000000uLL);
  v13 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q1, v12, *a3)))));
  v14 = bswap32(vcvtmd_s64_f64(*(a3 + 16) * 65536.0 + 0.5));
  result = (*(a2 + 312))(a2, 12, &v13);
  if (result)
  {
    v13 = vrev32_s8(vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(v11, v12, *(a3 + 24))))));
    v14 = bswap32(vcvtmd_s64_f64(*(a3 + 40) * 65536.0 + 0.5));
    result = (*(a2 + 312))(a2, 12, &v13);
    if (result)
    {
      v13.i32[0] = bswap32(*(a3 + 48));
      return (*(a2 + 312))(a2, 4, &v13) == 1;
    }
  }

  return result;
}

uint64_t sub_240AD8954(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_8:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  v9 = (*(v8 + 1))();
  if (v9)
  {
    *a3 = 0;
    if (sub_240AD4600(a2, v9) && sub_240AD4600(a2, (v9 + 24)) && (v14 = 0, (*(a2 + 280))(a2, &v14, 4, 1) == 1))
    {
      *(v9 + 48) = bswap32(v14);
      *a3 = 1;
    }

    else
    {
      v10 = *(a1 + 40);
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
            goto LABEL_22;
          }
        }

        v11 = &unk_278CB2F00;
      }

      else
      {
        v11 = &unk_278CB2F00;
      }

LABEL_22:
      v12 = v11[6];
      if (!v12)
      {
        v12 = &xmmword_281500C10;
      }

      (*(v12 + 2))();
      return 0;
    }
  }

  return v9;
}

uint64_t sub_240AD8AC4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
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

    return (*(v4 + 2))();
  }

  return result;
}

uint64_t sub_240AD8B24(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == v1)
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

  return (*(v3 + 5))();
}

uint64_t sub_240AD8B90(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v8 = bswap32(*a3);
  if ((*(a2 + 312))(a2, 4, &v8) == 1)
  {
    v8 = bswap32(a3[1]);
    if ((*(a2 + 312))(a2, 4, &v8) == 1)
    {
      if (!a3[1])
      {
        return 1;
      }

      v5 = 0;
      for (i = a3 + 6; ; i += 6)
      {
        v8 = bswap32(vcvtmd_s64_f64(*(i - 2) * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v8) != 1)
        {
          break;
        }

        v8 = bswap32(vcvtmd_s64_f64(*(i - 1) * 65536.0 + 0.5));
        if ((*(a2 + 312))(a2, 4, &v8) != 1)
        {
          break;
        }

        v8 = bswap32(*i);
        if ((*(a2 + 312))(a2, 4, &v8) != 1)
        {
          break;
        }

        if (++v5 >= a3[1])
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

_DWORD *sub_240AD8CE0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == v6)
      {
        goto LABEL_8;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_8:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  v9 = (*(v8 + 1))();
  if (v9)
  {
    *a3 = 0;
    v18 = 0;
    if ((*(a2 + 280))(a2, &v18, 4, 1) == 1)
    {
      *v9 = bswap32(v18);
      v19 = 0;
      if ((*(a2 + 280))(a2, &v19, 4, 1) == 1)
      {
        v10 = v19;
        v11 = bswap32(v19);
        v9[1] = v11;
        if (v11 < 0x10)
        {
          if (!v10)
          {
LABEL_21:
            *a3 = 1;
            return v9;
          }
        }

        else
        {
          v9[1] = 15;
        }

        v12 = 0;
        v13 = (v9 + 4);
        while (sub_240AD4570(a2, v13 - 1))
        {
          if (!sub_240AD4570(a2, v13))
          {
            break;
          }

          v20 = 0;
          if ((*(a2 + 280))(a2, &v20, 4, 1) != 1)
          {
            break;
          }

          *(v13 + 2) = bswap32(v20);
          ++v12;
          v13 += 3;
          if (v12 >= v9[1])
          {
            goto LABEL_21;
          }
        }
      }
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = &qword_27E516570;
      while (1)
      {
        v15 = *v15;
        if (!v15)
        {
          break;
        }

        if (v15 == v14)
        {
          goto LABEL_29;
        }
      }

      v15 = &unk_278CB2F00;
    }

    else
    {
      v15 = &unk_278CB2F00;
    }

LABEL_29:
    v16 = v15[6];
    if (!v16)
    {
      v16 = &xmmword_281500C10;
    }

    (*(v16 + 2))();
    return 0;
  }

  return v9;
}

uint64_t sub_240AD8EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == v7)
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
  v9 = v8[13];
  if (!v9)
  {
    v9 = &unk_27E5165A0;
  }

  v56 = v9;
  v10 = (*(a2 + 304))(a2);
  v11 = *a3;
  if (*a3)
  {
    LODWORD(v12) = 0;
    do
    {
      LODWORD(v12) = v12 + 1;
      v11 = *(v11 + 56);
    }

    while (v11);
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = &qword_27E516570;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (v14 == v13)
      {
        goto LABEL_22;
      }
    }

    v14 = &unk_278CB2F00;
  }

  else
  {
    v14 = &unk_278CB2F00;
  }

LABEL_22:
  v15 = *(a3 + 2);
  v16 = *(a3 + 3);
  v17 = v14[6];
  if (!v17)
  {
    v17 = &xmmword_281500C10;
  }

  result = (*(v17 + 4))();
  if (result)
  {
    v19 = result;
    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = &qword_27E516570;
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        if (v21 == v20)
        {
          goto LABEL_32;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_32:
    v22 = v21[6];
    if (!v22)
    {
      v22 = &xmmword_281500C10;
    }

    v23 = (*(v22 + 4))();
    if (!v23)
    {
      v40 = *(a1 + 40);
      if (v40)
      {
        v41 = &qword_27E516570;
        while (1)
        {
          v41 = *v41;
          if (!v41)
          {
            break;
          }

          if (v41 == v40)
          {
            goto LABEL_75;
          }
        }

        v41 = &unk_278CB2F00;
      }

      else
      {
        v41 = &unk_278CB2F00;
      }

LABEL_75:
      v42 = v41[6];
      if (!v42)
      {
        v42 = &xmmword_281500C10;
      }

      v43 = *(v42 + 2);
      goto LABEL_97;
    }

    v24 = v23;
    LOWORD(v57) = bswap32(v15) >> 16;
    if ((*(a2 + 312))(a2, 2, &v57) != 1)
    {
      goto LABEL_78;
    }

    LOWORD(v57) = bswap32(v16) >> 16;
    if ((*(a2 + 312))(a2, 2, &v57) != 1)
    {
      goto LABEL_78;
    }

    v57 = bswap32(v12);
    if ((*(a2 + 312))(a2, 4, &v57) != 1)
    {
      goto LABEL_78;
    }

    v55 = (*(a2 + 304))(a2);
    if (v12)
    {
      v25 = v12;
      while (1)
      {
        v57 = 0;
        if ((*(a2 + 312))(a2, 4, &v57) != 1)
        {
          goto LABEL_78;
        }

        v57 = 0;
        if ((*(a2 + 312))(a2, 4, &v57) != 1)
        {
          goto LABEL_78;
        }

        if (!--v25)
        {
          v26 = 0;
          while (1)
          {
            v19[v26] = (*(a2 + 304))(a2) - v10 + 8;
            v32 = *(v6 + 8);
            v33 = *v56;
            if (*v56)
            {
              while (*v33 != v32)
              {
                v33 = *(v33 + 7);
                if (!v33)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
LABEL_47:
              v33 = aScab;
              while (*v33 != v32)
              {
                v33 = *(v33 + 7);
                if (!v33)
                {
                  v57 = bswap32(v32);
                  v58 = 0;
                  sub_240AC15A4(*(a1 + 40), 8, "Found unknown MPE type '%s'", v27, v28, v29, v30, v31, &v57);
                  goto LABEL_78;
                }
              }
            }

            v57 = bswap32(v32);
            if ((*(a2 + 312))(a2, 4, &v57) != 1)
            {
              goto LABEL_78;
            }

            v57 = 0;
            if ((*(a2 + 312))(a2, 4, &v57) != 1)
            {
              goto LABEL_78;
            }

            v54 = (*(a2 + 304))(a2);
            if (!(*(v33 + 2))(a1, a2, v6, 1) || !sub_240AD46E4(a2))
            {
              goto LABEL_78;
            }

            v24[v26] = (*(a2 + 304))(a2) - v54;
            v6 = *(v6 + 56);
            if (++v26 == v12)
            {
              goto LABEL_56;
            }
          }
        }
      }
    }

LABEL_56:
    v34 = (*(a2 + 304))(a2);
    if (!(*(a2 + 288))(a2, v55))
    {
      goto LABEL_78;
    }

    if (v12)
    {
      v12 = v12;
      v35 = v19;
      v36 = v24;
      do
      {
        v37 = *v35++;
        v57 = bswap32(v37);
        if ((*(a2 + 312))(a2, 4, &v57) != 1)
        {
          goto LABEL_78;
        }

        v57 = bswap32(*v36);
        if ((*(a2 + 312))(a2, 4, &v57) != 1)
        {
          goto LABEL_78;
        }

        ++v36;
      }

      while (--v12);
    }

    if (!(*(a2 + 288))(a2, v34))
    {
LABEL_78:
      v44 = *(a1 + 40);
      if (v44)
      {
        v45 = &qword_27E516570;
        while (1)
        {
          v45 = *v45;
          if (!v45)
          {
            break;
          }

          if (v45 == v44)
          {
            goto LABEL_85;
          }
        }

        v45 = &unk_278CB2F00;
      }

      else
      {
        v45 = &unk_278CB2F00;
      }

LABEL_85:
      v46 = v45[6];
      if (!v46)
      {
        v46 = &xmmword_281500C10;
      }

      (*(v46 + 2))();
      v47 = *(a1 + 40);
      if (v47)
      {
        v48 = &qword_27E516570;
        while (1)
        {
          v48 = *v48;
          if (!v48)
          {
            break;
          }

          if (v48 == v47)
          {
            goto LABEL_94;
          }
        }

        v48 = &unk_278CB2F00;
      }

      else
      {
        v48 = &unk_278CB2F00;
      }

LABEL_94:
      v49 = v48[6];
      if (!v49)
      {
        v49 = &xmmword_281500C10;
      }

      v43 = *(v49 + 2);
LABEL_97:
      v43();
      return 0;
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      v39 = &qword_27E516570;
      while (1)
      {
        v39 = *v39;
        if (!v39)
        {
          break;
        }

        if (v39 == v38)
        {
          goto LABEL_101;
        }
      }

      v39 = &unk_278CB2F00;
    }

    else
    {
      v39 = &unk_278CB2F00;
    }

LABEL_101:
    v50 = v39[6];
    if (!v50)
    {
      v50 = &xmmword_281500C10;
    }

    (*(v50 + 2))();
    v51 = *(a1 + 40);
    if (v51)
    {
      v52 = &qword_27E516570;
      while (1)
      {
        v52 = *v52;
        if (!v52)
        {
          break;
        }

        if (v52 == v51)
        {
          goto LABEL_110;
        }
      }

      v52 = &unk_278CB2F00;
    }

    else
    {
      v52 = &unk_278CB2F00;
    }

LABEL_110:
    v53 = v52[6];
    if (!v53)
    {
      v53 = &xmmword_281500C10;
    }

    (*(v53 + 2))();
    return 1;
  }

  return result;
}

uint64_t sub_240AD951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 16);
  if (v3 > 8 || (v5 = *(a3 + 48), !*(v5 + 20)) || (LOWORD(v15[0]) = v3 << 8, (*(a2 + 312))(a2, 2, v15) != 1) || (LOWORD(v15[0]) = bswap32(*(a3 + 20)) >> 16, (*(a2 + 312))(a2, 2, v15) != 1))
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v15[0] = 0;
  v15[1] = 0;
  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = (*(v5 + 8) + 20);
    v9 = v15;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  result = (*(a2 + 312))(a2, 16, v15);
  if (result)
  {
    if (!*(v5 + 16))
    {
      result = 1;
      goto LABEL_15;
    }

    v12 = 0;
    do
    {
      v14 = bswap32(*(*v5 + 4 * v12));
      result = (*(a2 + 312))(a2, 4, &v14);
      if (result != 1)
      {
        goto LABEL_14;
      }
    }

    while (++v12 < *(v5 + 16));
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

int32x2_t *sub_240AD967C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  LOWORD(v47[0]) = 0;
  if ((*(a2 + 280))(a2, v47, 2, 1) != 1 || (v6 = LOWORD(v47[0]), LOWORD(v47[0]) = 0, (*(a2 + 280))(a2, v47, 2, 1) != 1))
  {
LABEL_91:
    v22 = 0;
    goto LABEL_92;
  }

  if (v6)
  {
    v7 = LOWORD(v47[0]);
    if (LOWORD(v47[0]))
    {
      if ((*(a2 + 280))(a2, v48, 1, 16) == 16)
      {
        v13 = 0;
        v14 = __rev16(v6);
        v15 = __rev16(v7);
        v16 = v14 >= 8 ? 8 : v14;
        do
        {
          v17 = v48[v13];
          if (v17 == 1)
          {
            goto LABEL_89;
          }

          v47[v13++] = v17;
        }

        while (v16 != v13);
        v18 = *(a1 + 40);
        if (v14 >= 9)
        {
          sub_240AC15A4(v18, 2, "Too many input channels (%d channels, max=%d)", v8, v9, v10, v11, v12, v14);
          goto LABEL_89;
        }

        if (v18)
        {
          v19 = &qword_27E516570;
          while (1)
          {
            v19 = *v19;
            if (!v19)
            {
              break;
            }

            if (v19 == v18)
            {
              goto LABEL_20;
            }
          }

          v19 = &unk_278CB2F00;
        }

        else
        {
          v19 = &unk_278CB2F00;
        }

LABEL_20:
        v20 = v19[6];
        if (!v20)
        {
          v20 = &xmmword_281500C10;
        }

        v21 = (*(v20 + 1))(*(a1 + 40), 64, 0x10A00405BC1CEE9);
        if (v21)
        {
          v22 = v21;
          *v21 = v18;
          v21[1] = vdup_n_s32(0x636C7574u);
          v21[2].i32[0] = v14;
          v21[2].i32[1] = v15;
          v21[3] = sub_240ACA668;
          v21[4] = sub_240ACA2EC;
          v21[5] = sub_240ACA190;
          v21[6] = 0;
          if (v18)
          {
            v23 = &qword_27E516570;
            while (1)
            {
              v23 = *v23;
              if (!v23)
              {
                break;
              }

              if (v23 == v18)
              {
                goto LABEL_30;
              }
            }

            v23 = &unk_278CB2F00;
          }

          else
          {
            v23 = &unk_278CB2F00;
          }

LABEL_30:
          v24 = v23[6];
          if (!v24)
          {
            v24 = &xmmword_281500C10;
          }

          v25 = (*(v24 + 1))(v18, 24, 0x10B2040FFF1735BLL);
          if (v25)
          {
            v26 = v25;
            v22[6] = v25;
            v27 = v14 - 1;
            v28 = 1;
            while (1)
            {
              v29 = v47[v27];
              if (!v29)
              {
                break;
              }

              v28 *= v29;
              if (((v29 * v28) & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              if (--v27 == -1)
              {
                goto LABEL_39;
              }
            }

            v28 = 0;
LABEL_39:
            *(v25 + 16) = v28 * v15;
            *(v25 + 20) = 1;
            if (v28 * v15)
            {
              if (v18)
              {
                v30 = &qword_27E516570;
                while (1)
                {
                  v30 = *v30;
                  if (!v30)
                  {
                    break;
                  }

                  if (v30 == v18)
                  {
                    goto LABEL_61;
                  }
                }

                v30 = &unk_278CB2F00;
              }

              else
              {
                v30 = &unk_278CB2F00;
              }

LABEL_61:
              v34 = v30[6];
              if (!v34)
              {
                v34 = &xmmword_281500C10;
              }

              v35 = (*(v34 + 4))(v18);
              *v26 = v35;
              if (v35)
              {
                v38 = sub_240AC59A8(v18, v47, v14, v15, v35, 1, v36, v37);
                v26[1] = v38;
                if (v38)
                {
                  v39 = v22[6];
                  if (!*(*&v39 + 16))
                  {
LABEL_69:
                    *a3 = 1;
                    goto LABEL_92;
                  }

                  v40 = 0;
                  v41 = 0;
                  while (sub_240AD44CC(a2, (**&v39 + v40)))
                  {
                    ++v41;
                    v40 += 4;
                    if (v41 >= *(*&v39 + 16))
                    {
                      goto LABEL_69;
                    }
                  }

                  *a3 = 0;
                  sub_240AC96E4(v22);
                  goto LABEL_91;
                }

                v43 = v22[5];
                if (v43)
                {
                  v43(v22);
                }

                if (*v22)
                {
                  v32 = &qword_27E516570;
                  while (1)
                  {
                    v32 = *v32;
                    if (!v32)
                    {
                      break;
                    }

                    if (v32 == *v22)
                    {
                      goto LABEL_86;
                    }
                  }

LABEL_85:
                  v32 = &unk_278CB2F00;
                  goto LABEL_86;
                }
              }

              else
              {
                v42 = v22[5];
                if (v42)
                {
                  v42(v22);
                }

                if (*v22)
                {
                  v32 = &qword_27E516570;
                  while (1)
                  {
                    v32 = *v32;
                    if (!v32)
                    {
                      goto LABEL_85;
                    }

                    if (v32 == *v22)
                    {
                      goto LABEL_86;
                    }
                  }
                }
              }
            }

            else
            {
              v33 = v22[5];
              if (v33)
              {
                v33(v22);
              }

              if (*v22)
              {
                v32 = &qword_27E516570;
                while (1)
                {
                  v32 = *v32;
                  if (!v32)
                  {
                    goto LABEL_85;
                  }

                  if (v32 == *v22)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }
          }

          else
          {
            v31 = v22[5];
            if (v31)
            {
              v31(v22);
            }

            if (*v22)
            {
              v32 = &qword_27E516570;
              while (1)
              {
                v32 = *v32;
                if (!v32)
                {
                  goto LABEL_85;
                }

                if (v32 == *v22)
                {
                  goto LABEL_86;
                }
              }
            }
          }

          v32 = &unk_278CB2F00;
LABEL_86:
          v44 = v32[6];
          if (!v44)
          {
            v44 = &xmmword_281500C10;
          }

          (*(v44 + 2))();
        }
      }
    }
  }

LABEL_89:
  v22 = 0;
  *a3 = 0;
LABEL_92:
  v45 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_240AD9B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  LOWORD(v14) = bswap32(*(a3 + 16)) >> 16;
  if ((*(a2 + 312))(a2, 2, &v14) == 1)
  {
    LOWORD(v14) = bswap32(*(a3 + 20)) >> 16;
    if ((*(a2 + 312))(a2, 2, &v14) == 1)
    {
      v6 = *(a3 + 20);
      if (v6 * *(a3 + 16))
      {
        v7 = 0;
        v8 = 8 * (v6 * *(a3 + 16));
        while (1)
        {
          *&v9 = *(*v5 + v7);
          v14 = bswap32(v9);
          if ((*(a2 + 312))(a2, 4, &v14) != 1)
          {
            break;
          }

          v7 += 8;
          if (v8 == v7)
          {
            v6 = *(a3 + 20);
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        if (!v6)
        {
          return 1;
        }

        v10 = 0;
        while (1)
        {
          v11 = v5[1];
          if (v11)
          {
            *&v12 = *(v11 + 8 * v10);
            v14 = bswap32(v12);
          }

          else
          {
            v14 = 0;
          }

          if ((*(a2 + 312))(a2, 4, &v14) != 1)
          {
            break;
          }

          if (++v10 >= *(a3 + 20))
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

int32x2_t *sub_240AD9CA8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v47 = 0;
  if ((*(a2 + 280))(a2, &v47, 2, 1) != 1)
  {
    return 0;
  }

  v6 = v47;
  v48 = 0;
  if ((*(a2 + 280))(a2, &v48, 2, 1) != 1)
  {
    return 0;
  }

  v7 = bswap32(v6) >> 16;
  v8 = v48;
  if ((v7 | (bswap32(v48) >> 16)) > 0xF)
  {
    return 0;
  }

  v9 = __rev16(v48);
  v10 = *(a1 + 40);
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
        goto LABEL_11;
      }
    }

    v11 = &unk_278CB2F00;
  }

  else
  {
    v11 = &unk_278CB2F00;
  }

LABEL_11:
  v12 = v11[6];
  if (!v12)
  {
    v12 = &xmmword_281500C10;
  }

  v13 = (*(v12 + 4))();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = &qword_27E516570;
    while (1)
    {
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16 == v15)
      {
        goto LABEL_21;
      }
    }

    v16 = &unk_278CB2F00;
  }

  else
  {
    v16 = &unk_278CB2F00;
  }

LABEL_21:
  v17 = v16[6];
  if (!v17)
  {
    v17 = &xmmword_281500C10;
  }

  v18 = (*(v17 + 4))();
  if (!v18)
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = &qword_27E516570;
      while (1)
      {
        v23 = *v23;
        if (!v23)
        {
          break;
        }

        if (v23 == v22)
        {
          goto LABEL_56;
        }
      }

      v23 = &unk_278CB2F00;
    }

    else
    {
      v23 = &unk_278CB2F00;
    }

LABEL_56:
    v31 = v23[6];
    if (!v31)
    {
      v31 = &xmmword_281500C10;
    }

    v32 = *(v31 + 2);
    goto LABEL_101;
  }

  v19 = v18;
  if (v9 * v7)
  {
    v20 = 0;
    while (1)
    {
      v46 = 0.0;
      if (!sub_240AD44CC(a2, &v46))
      {
        break;
      }

      *&v14[v20++] = v46;
      if ((v9 * v7) == v20)
      {
        goto LABEL_28;
      }
    }

    v24 = *(a1 + 40);
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
          goto LABEL_75;
        }
      }

      v25 = &unk_278CB2F00;
    }

    else
    {
      v25 = &unk_278CB2F00;
    }

LABEL_75:
    v37 = v25[6];
    if (!v37)
    {
      v37 = &xmmword_281500C10;
    }

    (*(v37 + 2))();
    v38 = *(a1 + 40);
    if (v38)
    {
      v39 = &qword_27E516570;
      while (1)
      {
        v39 = *v39;
        if (!v39)
        {
          break;
        }

        if (v39 == v38)
        {
          goto LABEL_84;
        }
      }

      v39 = &unk_278CB2F00;
    }

    else
    {
      v39 = &unk_278CB2F00;
    }

LABEL_84:
    v40 = v39[6];
    if (!v40)
    {
      v40 = &xmmword_281500C10;
    }

    goto LABEL_100;
  }

LABEL_28:
  if (v8)
  {
    v21 = 0;
    while (1)
    {
      v45 = 0.0;
      if (!sub_240AD44CC(a2, &v45))
      {
        break;
      }

      *&v19[v21++] = v45;
      if (v9 == v21)
      {
        goto LABEL_44;
      }
    }

    v29 = *(a1 + 40);
    if (v29)
    {
      v30 = &qword_27E516570;
      while (1)
      {
        v30 = *v30;
        if (!v30)
        {
          break;
        }

        if (v30 == v29)
        {
          goto LABEL_89;
        }
      }

      v30 = &unk_278CB2F00;
    }

    else
    {
      v30 = &unk_278CB2F00;
    }

LABEL_89:
    v41 = v30[6];
    if (!v41)
    {
      v41 = &xmmword_281500C10;
    }

    (*(v41 + 2))();
    v42 = *(a1 + 40);
    if (v42)
    {
      v43 = &qword_27E516570;
      while (1)
      {
        v43 = *v43;
        if (!v43)
        {
          break;
        }

        if (v43 == v42)
        {
          goto LABEL_98;
        }
      }

      v43 = &unk_278CB2F00;
    }

    else
    {
      v43 = &unk_278CB2F00;
    }

LABEL_98:
    v40 = v43[6];
    if (!v40)
    {
      v40 = &xmmword_281500C10;
    }

LABEL_100:
    v32 = *(v40 + 2);
LABEL_101:
    v32();
    return 0;
  }

  v9 = 0;
LABEL_44:
  v26 = sub_240AC977C(*(a1 + 40), v9, v7, v14, v19);
  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = &qword_27E516570;
    while (1)
    {
      v28 = *v28;
      if (!v28)
      {
        break;
      }

      if (v28 == v27)
      {
        goto LABEL_61;
      }
    }

    v28 = &unk_278CB2F00;
  }

  else
  {
    v28 = &unk_278CB2F00;
  }

LABEL_61:
  v33 = v28[6];
  if (!v33)
  {
    v33 = &xmmword_281500C10;
  }

  (*(v33 + 2))();
  v34 = *(a1 + 40);
  if (v34)
  {
    v35 = &qword_27E516570;
    while (1)
    {
      v35 = *v35;
      if (!v35)
      {
        break;
      }

      if (v35 == v34)
      {
        goto LABEL_70;
      }
    }

    v35 = &unk_278CB2F00;
  }

  else
  {
    v35 = &unk_278CB2F00;
  }

LABEL_70:
  v36 = v35[6];
  if (!v36)
  {
    v36 = &xmmword_281500C10;
  }

  (*(v36 + 2))();
  *a3 = 1;
  return v26;
}

uint64_t sub_240ADA15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = (*(a2 + 304))(a2);
  v10 = bswap32(*(a3 + 16)) >> 16;
  if ((*(a2 + 312))(a2, 2, &v10) != 1)
  {
    return 0;
  }

  v11 = bswap32(*(a3 + 16)) >> 16;
  if ((*(a2 + 312))(a2, 2, &v11) != 1)
  {
    return 0;
  }

  v8 = *(a3 + 16);

  return sub_240AD7078(a1, a2, v8, v7 - 8, v6, sub_240ADA258);
}

uint64_t sub_240ADA258(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = *(*(a3 + 8) + 8 * a4);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v22 = 1718777187;
  if ((*(a2 + 312))(a2, 4, &v22) != 1)
  {
    return 0;
  }

  v22 = 0;
  if ((*(a2 + 312))(a2, 4, &v22) != 1)
  {
    return 0;
  }

  LOWORD(v22) = bswap32(v7) >> 16;
  if ((*(a2 + 312))(a2, 2, &v22) != 1)
  {
    return 0;
  }

  LOWORD(v22) = 0;
  if ((*(a2 + 312))(a2, 2, &v22) != 1)
  {
    return 0;
  }

  v8 = v7 - 1;
  if (v8)
  {
    v9 = (v6 + 4);
    do
    {
      v10 = *v9;
      v9 += 28;
      v22 = bswap32(v10);
      if ((*(a2 + 312))(a2, 4, &v22) != 1)
      {
        return 0;
      }
    }

    while (--v8);
  }

  if (*(v5 + 8))
  {
    v11 = 0;
    for (i = (v6 + 16); ; i += 14)
    {
      v13 = v6 + 112 * v11;
      if (*(v13 + 8))
      {
        v22 = 1718772080;
        if ((*(a2 + 312))(a2, 4, &v22) == 1)
        {
          v22 = 0;
          if ((*(a2 + 312))(a2, 4, &v22) == 1)
          {
            v14 = *(v13 + 8);
            if ((v14 - 9) >= 0xFFFFFFFD)
            {
              v15 = v14 - 6;
              LOWORD(v22) = bswap32(v14 - 6) >> 16;
              if ((*(a2 + 312))(a2, 2, &v22) == 1)
              {
                LOWORD(v22) = 0;
                if ((*(a2 + 312))(a2, 2, &v22) == 1)
                {
                  v16 = dword_240C15154[v15];
                  if (v16 <= 1)
                  {
                    v17 = 1;
                  }

                  else
                  {
                    v17 = v16;
                  }

                  v18 = i;
                  while (1)
                  {
                    *&v19 = *v18;
                    v22 = bswap32(v19);
                    if ((*(a2 + 312))(a2, 4, &v22) != 1)
                    {
                      break;
                    }

                    ++v18;
                    if (!--v17)
                    {
                      goto LABEL_31;
                    }
                  }
                }
              }
            }
          }
        }

        return 0;
      }

      v22 = 1718444403;
      if ((*(a2 + 312))(a2, 4, &v22) != 1)
      {
        return 0;
      }

      v22 = 0;
      if ((*(a2 + 312))(a2, 4, &v22) != 1)
      {
        return 0;
      }

      v22 = bswap32(*(v13 + 96));
      if ((*(a2 + 312))(a2, 4, &v22) != 1)
      {
        return 0;
      }

      if (*(*(v5 + 16) + 112 * v11 + 96))
      {
        break;
      }

LABEL_31:
      ++v11;
      result = 1;
      if (v11 >= *(v5 + 8))
      {
        return result;
      }
    }

    v20 = 0;
    while (1)
    {
      v22 = bswap32(*(*(v13 + 104) + 4 * v20));
      if ((*(a2 + 312))(a2, 4, &v22) != 1)
      {
        return 0;
      }

      if (++v20 >= *(*(v5 + 16) + 112 * v11 + 96))
      {
        goto LABEL_31;
      }
    }
  }

  return 1;
}

int32x2_t *sub_240ADA588(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v6 = (*(a2 + 304))(a2);
  v21 = 0;
  if ((*(a2 + 280))(a2, &v21, 2, 1) != 1)
  {
    return 0;
  }

  v7 = v21;
  v22 = 0;
  if ((*(a2 + 280))(a2, &v22, 2, 1) != 1 || v7 != v22)
  {
    return 0;
  }

  v8 = __rev16(v7);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_11;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_11:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*(v11 + 4))();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  if (sub_240AD7B50(a1, a2, v8, v6 - 8, v12, sub_240ADA790))
  {
    v14 = sub_240AC904C(*(a1 + 40), v8, v13);
    if (!v7)
    {
      goto LABEL_24;
    }

LABEL_20:
    v16 = 0;
    do
    {
      v17 = *(v13 + 8 * v16);
      if (v17)
      {
        sub_240AC26D0(v17);
      }

      ++v16;
    }

    while (v16 < v8);
    goto LABEL_24;
  }

  v14 = 0;
  if (v7)
  {
    goto LABEL_20;
  }

LABEL_24:
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = &qword_27E516570;
    while (1)
    {
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      if (v19 == v18)
      {
        goto LABEL_31;
      }
    }

    v19 = &unk_278CB2F00;
  }

  else
  {
    v19 = &unk_278CB2F00;
  }

LABEL_31:
  v20 = v19[6];
  if (!v20)
  {
    v20 = &xmmword_281500C10;
  }

  (*(v20 + 2))();
  *a3 = v14 != 0;
  return v14;
}

BOOL sub_240ADA790(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v60 = 0.0;
  if ((*(a2 + 280))(a2, &v60, 4, 1) != 1)
  {
    goto LABEL_19;
  }

  if (v60 != 2.8624e23)
  {
    goto LABEL_19;
  }

  v60 = 0.0;
  if ((*(a2 + 280))(a2, &v60, 4, 1) != 1)
  {
    goto LABEL_19;
  }

  LOWORD(v60) = 0;
  if ((*(a2 + 280))(a2, &v60, 2, 1) != 1)
  {
    goto LABEL_19;
  }

  v8 = LOWORD(v60);
  LOWORD(v60) = 0;
  v9 = 0;
  if ((*(a2 + 280))(a2, &v60, 2, 1) != 1 || !v8)
  {
    goto LABEL_20;
  }

  v10 = __rev16(v8);
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == v11)
      {
        goto LABEL_14;
      }
    }

    v12 = &unk_278CB2F00;
  }

  else
  {
    v12 = &unk_278CB2F00;
  }

LABEL_14:
  v13 = v12[6];
  if (!v13)
  {
    v13 = &xmmword_281500C10;
  }

  v14 = (*(v13 + 4))();
  if (!v14)
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v15 = v14;
  if (v8 == 256)
  {
    *v14 = 0x64078678E4078678;
    v16 = 1;
LABEL_28:
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v58 = v16;
    v59 = 0;
    v23 = v15 + 16;
    while (1)
    {
      v60 = 0.0;
      if ((*(a2 + 280))(a2, &v60, 4, 1) != 1)
      {
        break;
      }

      *&v24 = v60;
      v60 = 0.0;
      if ((*(a2 + 280))(a2, &v60, 4, 1) != 1)
      {
        break;
      }

      v30 = bswap32(v24);
      if (v30 != 1935764838)
      {
        if (v30 == 1885434470)
        {
          LOWORD(v60) = 0;
          if ((*(a2 + 280))(a2, &v60, 2, 1) == 1)
          {
            v31 = LOWORD(v60);
            LOWORD(v60) = 0;
            if ((*(a2 + 280))(a2, &v60, 2, 1) == 1)
            {
              v32 = bswap32(v31) >> 16;
              *(v15 + 112 * v59 + 8) = v32 + 6;
              if (v32 <= 2)
              {
                v33 = 0;
                while (1)
                {
                  v60 = 0.0;
                  if (!sub_240AD44CC(a2, &v60))
                  {
                    break;
                  }

                  *(v23 + 8 * v33++) = v60;
                  if (v33 >= dword_240C15154[v32])
                  {
                    goto LABEL_57;
                  }
                }
              }
            }
          }
        }

        else
        {
          v60 = *&v24;
          v61 = 0;
          sub_240AC15A4(*(a1 + 40), 8, "Unknown curve element type '%s' found.", v25, v26, v27, v28, v29, &v60);
        }

        break;
      }

      v60 = 0.0;
      if ((*(a2 + 280))(a2, &v60, 4, 1) != 1)
      {
        break;
      }

      v39 = v60;
      v40 = bswap32(LODWORD(v60));
      v41 = v15 + 112 * v59;
      *(v41 + 96) = v40;
      v42 = *(a1 + 40);
      if (v42)
      {
        v43 = &qword_27E516570;
        while (1)
        {
          v43 = *v43;
          if (!v43)
          {
            break;
          }

          if (v43 == v42)
          {
            goto LABEL_50;
          }
        }

        v43 = &unk_278CB2F00;
      }

      else
      {
        v43 = &unk_278CB2F00;
      }

LABEL_50:
      v44 = v43[6];
      if (!v44)
      {
        v44 = &xmmword_281500C10;
      }

      v45 = (*(v44 + 4))();
      *(v41 + 104) = v45;
      if (!v45)
      {
        break;
      }

      if (v39 != 0.0)
      {
        v46 = 0;
        while (sub_240AD44CC(a2, (*(v41 + 104) + v46)))
        {
          v46 += 4;
          if (!--v40)
          {
            goto LABEL_57;
          }
        }

        break;
      }

LABEL_57:
      v23 += 112;
      if (++v59 == v58)
      {
        v9 = sub_240AC22F8(*(a1 + 40), v10, v15, v34, v35, v36, v37, v38);
        v47 = 0;
        do
        {
          if (*(v15 + 112 * v47 + 104))
          {
            v48 = *(a1 + 40);
            if (v48)
            {
              v49 = &qword_27E516570;
              while (1)
              {
                v49 = *v49;
                if (!v49)
                {
                  break;
                }

                if (v49 == v48)
                {
                  goto LABEL_66;
                }
              }
            }

            v49 = &unk_278CB2F00;
LABEL_66:
            v50 = v49[6];
            if (!v50)
            {
              v50 = &xmmword_281500C10;
            }

            (*(v50 + 2))();
          }

          ++v47;
        }

        while (v47 < v10);
        goto LABEL_85;
      }
    }
  }

  else
  {
    v18 = v10 - 1;
    if ((v10 - 1) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = v14 + 1;
    v21 = -469268872;
    while (1)
    {
      *(v20 - 1) = v21;
      if (!sub_240AD44CC(a2, v20))
      {
        break;
      }

      v22 = *v20;
      v20 += 28;
      v21 = LODWORD(v22);
      if (!--v19)
      {
        *(v15 + 112 * v18) = v21;
        *(v15 + 112 * v10 - 108) = 1678214776;
        v16 = v10;
        goto LABEL_28;
      }
    }
  }

  v51 = 0;
  do
  {
    if (*(v15 + 112 * v51 + 104))
    {
      v52 = *(a1 + 40);
      if (v52)
      {
        v53 = &qword_27E516570;
        while (1)
        {
          v53 = *v53;
          if (!v53)
          {
            break;
          }

          if (v53 == v52)
          {
            goto LABEL_80;
          }
        }
      }

      v53 = &unk_278CB2F00;
LABEL_80:
      v54 = v53[6];
      if (!v54)
      {
        v54 = &xmmword_281500C10;
      }

      (*(v54 + 2))();
    }

    ++v51;
  }

  while (v51 < v10);
  v9 = 0;
LABEL_85:
  v55 = *(a1 + 40);
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
        goto LABEL_92;
      }
    }

    v56 = &unk_278CB2F00;
  }

  else
  {
    v56 = &unk_278CB2F00;
  }

LABEL_92:
  v57 = v56[6];
  if (!v57)
  {
    v57 = &xmmword_281500C10;
  }

  (*(v57 + 2))();
LABEL_20:
  *(a3 + 8 * a4) = v9;
  return v9 != 0;
}

uint64_t sub_240ADAD3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (*(a2 + 304))(a2);
  v13 = 0;
  if ((*(a2 + 280))(a2, &v13, 2, 1) != 1)
  {
    return 0;
  }

  v7 = v13;
  v14 = 0;
  if ((*(a2 + 280))(a2, &v14, 2, 1) != 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = __rev16(v7);
  if ((v9 - 16) >= 0xFFF1u)
  {
    v10 = bswap32(v14) >> 16;
    if ((v10 - 16) >= 0xFFF1u)
    {
      v8 = sub_240ACADFC(*(a1 + 40), v9, v10);
      if (v8)
      {
        v15 = 0;
        if ((*(a2 + 280))(a2, &v15, 4, 1) == 1 && sub_240AD7B50(a1, a2, bswap32(v15), v6 - 8, v8, sub_240ADAEBC) && *(v8 + 8) == v9 && *(v8 + 12) == v10)
        {
          v11 = 1;
        }

        else
        {
          sub_240ACB1C0(v8);
          v11 = 0;
          v8 = 0;
        }

        *a3 = v11;
      }
    }
  }

  return v8;
}

uint64_t sub_240ADAEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[13];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_27E5165A0;
  }

  v26 = 0;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v13 = v24;
  v24 = 0;
  if ((*(a2 + 280))(a2, &v24, 4, 1) != 1)
  {
    return 0;
  }

  v19 = bswap32(v13);
  v20 = *v12;
  if (*v12)
  {
    while (*v20 != v19)
    {
      v20 = *(v20 + 7);
      if (!v20)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v20 = aScab;
    while (*v20 != v19)
    {
      v20 = *(v20 + 7);
      if (!v20)
      {
        v24 = v13;
        v25 = 0;
        sub_240AC15A4(*(a1 + 40), 8, "Unknown MPE type '%s' found.", v14, v15, v16, v17, v18, &v24);
        return 0;
      }
    }
  }

  v22 = *(v20 + 1);
  if (!v22)
  {
    return 1;
  }

  v23 = v22(a1, a2, &v26, a5);
  result = sub_240ACB414(a3, 1, v23);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_240ADB108(uint64_t a1, uint64_t a2, int *a3, unsigned __int16 *a4)
{
  v8 = sub_240ACBF1C(a3, 80, 0x53u, a4, 0, 0);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == v9)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*v11)();
  v17 = bswap32(v8);
  if ((*(a2 + 312))(a2, 4, &v17) != 1)
  {
    return 0;
  }

  result = sub_240ACBF1C(a3, 80, 0x53u, a4, v12, v8);
  if (result)
  {
    result = (*(a2 + 312))(a2, v8, v12);
    if (result)
    {
      if (v12)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = &qword_27E516570;
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            if (v15 == v14)
            {
              goto LABEL_22;
            }
          }

          v15 = &unk_278CB2F00;
        }

        else
        {
          v15 = &unk_278CB2F00;
        }

LABEL_22:
        v16 = v15[6];
        if (!v16)
        {
          v16 = &xmmword_281500C10;
        }

        (*(v16 + 2))();
      }

      return 1;
    }
  }

  return result;
}

uint64_t **sub_240ADB2A0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v9 = a4;
  v7 = sub_240ACB75C(*(a1 + 40), 5u);
  *a3 = 0;
  if (sub_240ADB3AC(a1, a2, v7, &v9, "nm") && sub_240ADB3AC(a1, a2, v7, &v9, "#0") && sub_240ADB3AC(a1, a2, v7, &v9, "#1") && sub_240ADB3AC(a1, a2, v7, &v9, "#2") && sub_240ADB3AC(a1, a2, v7, &v9, "#3"))
  {
    *a3 = 1;
  }

  else
  {
    sub_240ACBDDC(v7);
    return 0;
  }

  return v7;
}