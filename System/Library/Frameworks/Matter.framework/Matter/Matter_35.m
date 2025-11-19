unint64_t *sub_23943C834(unint64_t *result, void *a2)
{
  v2 = a2[1];
  result[1] = v2;
  *(&v4 + 1) = *a2;
  *&v4 = v2;
  v3 = v4 >> 63;
  *(&v4 + 1) = v2;
  *&v4 = *a2;
  *result = (*a2 >> 63) & 0xC200000000000000 ^ v3;
  result[1] = v4 >> 63;
  return result;
}

int8x16_t sub_23943C85C(int8x16_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vrev64q_s8(*a1);
  v7 = vextq_s8(v3, v3, 8uLL);
  sub_23943D580(v7.i64, a2);
  v4 = vrev64q_s8(v7);
  result = vextq_s8(v4, v4, 8uLL);
  *a1 = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t sub_23943C8D8(int8x16_t *a1, uint64_t *a2, int8x16_t *a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = vrev64q_s8(*a1);
  v13 = vextq_s8(v5, v5, 8uLL);
  if (a4 >= 0x10)
  {
    for (i = a4; i > 0xF; i -= 16)
    {
      v9 = *a3++;
      v10 = vrev64q_s8(v9);
      v13 = veorq_s8(v13, vextq_s8(v10, v10, 8uLL));
      sub_23943D580(v13.i64, a2);
    }

    v5 = vextq_s8(v13, v13, 8uLL);
  }

  result = vrev64q_s8(v5);
  *a1 = result;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943C998(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a3;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 368) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (a4 == 12)
  {
    v7 = *a3;
    *(a1 + 8) = *(a3 + 2);
    *a1 = v7;
    *(a1 + 15) = 1;
    v8 = 2;
  }

  else
  {
    v10 = a4;
    if (a4 >= 0x10)
    {
      do
      {
        v11 = *(a1 + 8);
        *a1 ^= *v4;
        *(a1 + 8) = v4[1] ^ v11;
        sub_23943C85C(a1, (a1 + 80));
        v4 += 2;
        v10 -= 16;
      }

      while (v10 > 0xF);
    }

    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        *(a1 + i) ^= *(v4 + i);
      }

      sub_23943C85C(a1, (a1 + 80));
    }

    *(a1 + 8) ^= bswap64(8 * a4);
    sub_23943C85C(a1, (a1 + 80));
    v8 = bswap32(*(a1 + 12)) + 1;
  }

  result = (*(a1 + 352))(a1, a1 + 32, a2);
  *(a1 + 12) = bswap32(v8);
  return result;
}

uint64_t sub_23943CAC8(int8x16_t *a1, int8x16_t *a2, uint64_t a3)
{
  if (a1[3].i64[1])
  {
    return 0;
  }

  result = 0;
  v5 = a1[3].i64[0];
  v6 = __CFADD__(v5, a3);
  v7 = v5 + a3;
  v8 = v6;
  if (v7 <= 0x2000000000000000 && (v8 & 1) == 0)
  {
    a1[3].i64[0] = v7;
    v10 = a1[23].u32[1];
    if (v10)
    {
      if (!a3)
      {
        goto LABEL_23;
      }

      v11 = a1 + 4;
      do
      {
        v12 = a2->i8[0];
        a2 = (a2 + 1);
        v11->i8[v10] ^= v12;
        v13 = a3 - 1;
        v10 = (v10 + 1) & 0xF;
        if (!v10)
        {
          break;
        }

        --a3;
      }

      while (a3);
      if (v10)
      {
LABEL_23:
        a1[23].i32[1] = v10;
        return 1;
      }

      sub_23943C85C(v11, a1[5].i64);
    }

    else
    {
      v13 = a3;
    }

    if ((v13 & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      sub_23943C8D8(a1 + 4, a1[5].i64, a2, v13 & 0xFFFFFFFFFFFFFFF0);
      a2 = (a2 + (v13 & 0xFFFFFFFFFFFFFFF0));
      v13 &= 0xFu;
    }

    if (v13)
    {
      v14 = a1 + 4;
      v15 = v13;
      do
      {
        v16 = a2->i8[0];
        a2 = (a2 + 1);
        v14->i8[0] ^= v16;
        v14 = (v14 + 1);
        --v15;
      }

      while (v15);
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_23943CBD8(int8x16_t *a1, uint64_t a2, char *a3, int8x16_t *a4, unint64_t a5, int8x16_t a6)
{
  result = 0;
  v8 = a1[3].i64[1];
  v9 = __CFADD__(v8, a5);
  v10 = v8 + a5;
  v11 = v9;
  if (v10 <= 0xFFFFFFFE0 && (v11 & 1) == 0)
  {
    v12 = a5;
    v16 = a1[22].i64[0];
    a1[3].i64[1] = v10;
    if (a1[23].i32[1])
    {
      a6 = sub_23943C85C(a1 + 4, a1[5].i64);
      a1[23].i32[1] = 0;
    }

    LODWORD(v17) = a1[23].i32[0];
    if (v17)
    {
      if (!v12)
      {
        goto LABEL_28;
      }

      v18 = a1 + 4;
      do
      {
        v19 = *a3++;
        v20 = a1[1].i8[v17] ^ v19;
        a4->i8[0] = v20;
        a4 = (a4 + 1);
        v18->i8[v17] ^= v20;
        v21 = v12 - 1;
        LODWORD(v17) = (v17 + 1) & 0xF;
        if (!v17)
        {
          break;
        }

        --v12;
      }

      while (v12);
      if (v17)
      {
LABEL_28:
        a1[23].i32[0] = v17;
        return 1;
      }

      a6 = sub_23943C85C(v18, a1[5].i64);
    }

    else
    {
      v21 = v12;
    }

    v22 = bswap32(a1->u32[3]);
    if (v21 >= 0xC00)
    {
      do
      {
        v23 = -3072;
        do
        {
          v24 = &a4[v23 / 0x10];
          v16(a1, a1 + 1, a2, a6);
          a1->i32[3] = bswap32(++v22);
          v24[192].i64[0] = a1[1].i64[0] ^ *&a3[v23 + 3072];
          v24[192].i64[1] = a1[1].i64[1] ^ *&a3[v23 + 3080];
          v23 += 16;
        }

        while (v23);
        a6 = sub_23943C8D8(a1 + 4, a1[5].i64, a4, 0xC00uLL);
        v21 -= 3072;
        a3 += 3072;
        a4 += 192;
      }

      while (v21 > 0xBFF);
    }

    v25 = v21 & 0xFF0;
    if ((v21 & 0xFF0) != 0)
    {
      do
      {
        v16(a1, a1 + 1, a2, a6);
        a1->i32[3] = bswap32(++v22);
        a4->i64[0] = a1[1].i64[0] ^ *a3;
        a4->i64[1] = a1[1].i64[1] ^ *(a3 + 1);
        ++a4;
        a3 += 16;
        v21 -= 16;
      }

      while (v21 > 0xF);
      a6 = sub_23943C8D8(a1 + 4, a1[5].i64, (a4 - v25), v25);
    }

    if (v21)
    {
      v16(a1, a1 + 1, a2, a6);
      v17 = 0;
      a1->i32[3] = bswap32(v22 + 1);
      do
      {
        v26 = a1[1].i8[v17] ^ a3[v17];
        a4->i8[v17] = v26;
        a1[4].i8[v17++] ^= v26;
      }

      while (v21 != v17);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_23943CE28(int8x16_t *a1, uint64_t a2, int8x16_t *a3, uint64_t *a4, unint64_t a5, int8x16_t a6)
{
  result = 0;
  v8 = a1[3].i64[1];
  v9 = __CFADD__(v8, a5);
  v10 = v8 + a5;
  v11 = v9;
  if (v10 <= 0xFFFFFFFE0 && (v11 & 1) == 0)
  {
    v12 = a5;
    v16 = a1[22].i64[0];
    a1[3].i64[1] = v10;
    if (a1[23].i32[1])
    {
      a6 = sub_23943C85C(a1 + 4, a1[5].i64);
      a1[23].i32[1] = 0;
    }

    LODWORD(v17) = a1[23].i32[0];
    if (v17)
    {
      if (!v12)
      {
        goto LABEL_28;
      }

      v18 = a1 + 4;
      do
      {
        v19 = a3->i8[0];
        a3 = (a3 + 1);
        *a4 = a1[1].i8[v17] ^ v19;
        a4 = (a4 + 1);
        v18->i8[v17] ^= v19;
        v20 = v12 - 1;
        LODWORD(v17) = (v17 + 1) & 0xF;
        if (!v17)
        {
          break;
        }

        --v12;
      }

      while (v12);
      if (v17)
      {
LABEL_28:
        a1[23].i32[0] = v17;
        return 1;
      }

      a6 = sub_23943C85C(v18, a1[5].i64);
    }

    else
    {
      v20 = v12;
    }

    v21 = bswap32(a1->u32[3]);
    if (v20 >= 0xC00)
    {
      do
      {
        a6 = sub_23943C8D8(a1 + 4, a1[5].i64, a3, 0xC00uLL);
        v22 = 3072;
        do
        {
          v16(a1, a1 + 1, a2, a6);
          a1->i32[3] = bswap32(++v21);
          *a4 = a1[1].i64[0] ^ a3->i64[0];
          a4[1] = a1[1].i64[1] ^ a3->i64[1];
          a4 += 2;
          ++a3;
          v22 -= 16;
        }

        while (v22);
        v20 -= 3072;
      }

      while (v20 > 0xBFF);
    }

    v23 = v20 & 0xFF0;
    if ((v20 & 0xFF0) != 0)
    {
      a6 = sub_23943C8D8(a1 + 4, a1[5].i64, a3, v23);
      do
      {
        v16(a1, a1 + 1, a2, a6);
        a1->i32[3] = bswap32(++v21);
        *a4 = a1[1].i64[0] ^ a3->i64[0];
        a4[1] = a1[1].i64[1] ^ a3->i64[1];
        a4 += 2;
        ++a3;
        v20 -= 16;
      }

      while (v20 > 0xF);
    }

    if (v20)
    {
      (v16)(a1, &a1[1], a2, v23, a6);
      v17 = 0;
      a1->i32[3] = bswap32(v21 + 1);
      do
      {
        v24 = a3->i8[v17];
        a1[4].i8[v17] ^= v24;
        *(a4 + v17) = a1[1].i8[v17] ^ v24;
        ++v17;
      }

      while (v20 != v17);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_23943D05C(uint64_t a1, uint64_t a2, char *a3, int8x16_t *a4, unint64_t a5, void (*a6)(char *, int8x16_t *, uint64_t, uint64_t, uint64_t, __n128), int8x16_t a7)
{
  result = 0;
  v9 = *(a1 + 56);
  v10 = __CFADD__(v9, a5);
  v11 = v9 + a5;
  v12 = v10;
  if (v11 <= 0xFFFFFFFE0 && (v12 & 1) == 0)
  {
    v14 = a5;
    *(a1 + 56) = v11;
    if (*(a1 + 372))
    {
      a7 = sub_23943C85C((a1 + 64), (a1 + 80));
      *(a1 + 372) = 0;
    }

    LODWORD(v18) = *(a1 + 368);
    if (v18)
    {
      if (!v14)
      {
        goto LABEL_25;
      }

      v19 = (a1 + 64);
      do
      {
        v20 = *a3++;
        v21 = *(a1 + 16 + v18) ^ v20;
        a4->i8[0] = v21;
        a4 = (a4 + 1);
        v19->i8[v18] ^= v21;
        v22 = v14 - 1;
        LODWORD(v18) = (v18 + 1) & 0xF;
        if (!v18)
        {
          break;
        }

        --v14;
      }

      while (v14);
      if (v18)
      {
LABEL_25:
        *(a1 + 368) = v18;
        return 1;
      }

      a7 = sub_23943C85C(v19, (a1 + 80));
    }

    else
    {
      v22 = v14;
    }

    v23 = bswap32(*(a1 + 12));
    if (v22 >= 0xC00)
    {
      do
      {
        a6(a3, a4, 192, a2, a1, a7);
        v23 += 192;
        *(a1 + 12) = bswap32(v23);
        a7 = sub_23943C8D8((a1 + 64), (a1 + 80), a4, 0xC00uLL);
        a4 += 192;
        a3 += 3072;
        v22 -= 3072;
      }

      while (v22 > 0xBFF);
    }

    v24 = v22 & 0xFF0;
    if ((v22 & 0xFF0) != 0)
    {
      a6(a3, a4, v22 >> 4, a2, a1, a7);
      v23 += v22 >> 4;
      *(a1 + 12) = bswap32(v23);
      a3 += v24;
      v22 &= 0xFu;
      a7 = sub_23943C8D8((a1 + 64), (a1 + 80), a4, v24);
      a4 = (a4 + v24);
    }

    if (v22)
    {
      (*(a1 + 352))(a1, a1 + 16, a2, a7);
      v18 = 0;
      *(a1 + 12) = bswap32(v23 + 1);
      do
      {
        v25 = *(a1 + 16 + v18) ^ a3[v18];
        a4->i8[v18] = v25;
        *(a1 + 64 + v18++) ^= v25;
      }

      while (v22 != v18);
    }

    else
    {
      LODWORD(v18) = 0;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_23943D260(uint64_t a1, uint64_t a2, int8x16_t *a3, _BYTE *a4, unint64_t a5, void (*a6)(int8x16_t *, _BYTE *, uint64_t, uint64_t, uint64_t, __n128))
{
  result = 0;
  v8 = *(a1 + 56);
  v9 = __CFADD__(v8, a5);
  v10 = v8 + a5;
  v11 = v9;
  if (v10 <= 0xFFFFFFFE0 && (v11 & 1) == 0)
  {
    v13 = a5;
    *(a1 + 56) = v10;
    if (*(a1 + 372))
    {
      sub_23943C85C((a1 + 64), (a1 + 80));
      *(a1 + 372) = 0;
    }

    LODWORD(v17) = *(a1 + 368);
    if (v17)
    {
      if (!v13)
      {
        goto LABEL_25;
      }

      v18 = (a1 + 64);
      do
      {
        v19 = a3->i8[0];
        a3 = (a3 + 1);
        *a4++ = *(a1 + 16 + v17) ^ v19;
        v18->i8[v17] ^= v19;
        v20 = v13 - 1;
        LODWORD(v17) = (v17 + 1) & 0xF;
        if (!v17)
        {
          break;
        }

        --v13;
      }

      while (v13);
      if (v17)
      {
LABEL_25:
        *(a1 + 368) = v17;
        return 1;
      }

      sub_23943C85C(v18, (a1 + 80));
    }

    else
    {
      v20 = v13;
    }

    v21 = bswap32(*(a1 + 12));
    if (v20 >= 0xC00)
    {
      do
      {
        v22 = sub_23943C8D8((a1 + 64), (a1 + 80), a3, 0xC00uLL);
        a6(a3, a4, 192, a2, a1, v22);
        v21 += 192;
        *(a1 + 12) = bswap32(v21);
        a4 += 3072;
        a3 += 192;
        v20 -= 3072;
      }

      while (v20 > 0xBFF);
    }

    v23 = v20 & 0xFF0;
    if ((v20 & 0xFF0) != 0)
    {
      v24 = sub_23943C8D8((a1 + 64), (a1 + 80), a3, v20 & 0xFF0);
      a6(a3, a4, v20 >> 4, a2, a1, v24);
      v21 += v20 >> 4;
      *(a1 + 12) = bswap32(v21);
      a4 += v23;
      a3 = (a3 + v23);
      v20 &= 0xFu;
    }

    if (v20)
    {
      (*(a1 + 352))(a1, a1 + 16, a2);
      v17 = 0;
      *(a1 + 12) = bswap32(v21 + 1);
      do
      {
        v25 = a3->i8[v17];
        *(a1 + 64 + v17) ^= v25;
        a4[v17] = *(a1 + 16 + v17) ^ v25;
        ++v17;
      }

      while (v20 != v17);
    }

    else
    {
      LODWORD(v17) = 0;
    }

    goto LABEL_25;
  }

  return result;
}

BOOL sub_23943D464(int8x16_t *a1, char *a2, unint64_t a3)
{
  if (a1[23].i32[0] || a1[23].i32[1])
  {
    sub_23943C85C(a1 + 4, a1[5].i64);
  }

  v7 = a1[4];
  v6 = a1 + 4;
  *v6 = veorq_s8(vrev64q_s8(vshlq_n_s64(v6[-1], 3uLL)), v7);
  sub_23943C85C(v6, v6[1].i64);
  result = 0;
  *v6 = veorq_s8(v6[-2], *v6);
  if (a2)
  {
    if (a3 <= 0x10)
    {
      return sub_23945022C(v6->i8, a2, a3) == 0;
    }
  }

  return result;
}

void *sub_23943D50C(int8x16_t *a1, void *a2, unint64_t a3)
{
  result = sub_23943D464(a1, 0, 0);
  if (a3)
  {
    if (a3 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = a3;
    }

    return memcpy(a2, &a1[4], v7);
  }

  return result;
}

unint64_t *sub_23943D580(uint64_t *a1, uint64_t *a2)
{
  v18 = 0;
  v19 = 0;
  v4 = *a1;
  v5 = a2[1];
  sub_23944F514(&v19, &v18, *a1, v5);
  v16 = 0;
  v17 = 0;
  v6 = a1[1];
  v7 = *a2;
  sub_23944F514(&v17, &v16, v6, v7);
  v14 = 0;
  v15 = 0;
  result = sub_23944F514(&v15, &v14, v6 ^ v4, v7 ^ v5);
  v9 = (v19 << 63) ^ (v19 << 62) ^ (v19 << 57) ^ v19 ^ v15 ^ v17 ^ v18;
  *(&v10 + 1) = v9;
  *&v10 = v19;
  v11 = v14 ^ (v10 >> 1);
  *(&v10 + 1) = v9;
  *&v10 = v19;
  v12 = v10 >> 2;
  *(&v10 + 1) = v9;
  *&v10 = v19;
  v13 = (v9 >> 1) ^ (v9 >> 2) ^ (v9 >> 7) ^ v16 ^ v9;
  *a1 = v11 ^ v12 ^ (v10 >> 7) ^ v18 ^ v16 ^ v17 ^ v19;
  a1[1] = v13;
  return result;
}

void *sub_23943D67C(void *result, __int128 *a2)
{
  v2 = 0xFF00000000000000 * (*a2 & 1);
  *(&v4 + 1) = v2 & 0xE1FFFFFFFFFFFFFFLL ^ (*(a2 + 1) >> 1);
  *&v4 = *a2 >> 1;
  v3 = v4 >> 63;
  *(&v4 + 1) = v4;
  *&v4 = v2;
  result[2] = v3 ^ (v2 >> 63) & 0xC200000000000000;
  result[3] = v4 >> 63;
  result[34] = sub_23943C85C;
  result[35] = sub_23943C8D8;
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_23943D6D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      if (v3 >= 0x200)
      {
        v6 = 512;
      }

      else
      {
        v6 = v3;
      }

      __memcpy_chk();
      if (v3 >= 0x10)
      {
        v7 = v6 >> 4;
        v8 = v11;
        do
        {
          v9 = vrev64q_s8(*v8);
          *v8++ = vextq_s8(v9, v9, 8uLL);
          --v7;
        }

        while (v7);
      }

      a2 += v6;
      v3 -= v6;
      result = (*(v5 + 280))(v5, v5 + 16, v11, v6);
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t sub_23943D7B4(int8x16_t *a1, int8x16_t *a2)
{
  *a2 = *a1;
  v2 = vrev64q_s8(*a2);
  result = vextq_s8(v2, v2, 8uLL);
  *a2 = result;
  return result;
}

void *sub_23943D7D0(_OWORD *a1, char *a2, unint64_t a3)
{
  v6 = sub_23945004C(0x120uLL);
  v7 = v6;
  if (!v6 || !sub_23943D838(v6, a1, a2, a3))
  {
    sub_239450144(v7);
    return 0;
  }

  return v7;
}

uint64_t sub_23943D838(uint64_t a1, _OWORD *a2, char *a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4 <= 0x30)
  {
    v6 = a2[1];
    v11[0] = *a2;
    v11[1] = v6;
    v12 = a2[2];
    if (a4)
    {
      v7 = v11;
      do
      {
        v8 = *a3++;
        *v7++ ^= v8;
        --a4;
      }

      while (a4);
    }

    for (i = 0; i != 3; ++i)
    {
      v11[i] = veorq_s8(v11[i], xmmword_2395CADB8[i]);
    }

    sub_23941F384(v11, 256, a1);
    *(a1 + 248) = sub_23941F1D4;
    *(a1 + 256) = sub_23941FF90;
    *(a1 + 264) = v12;
    result = 1;
    *(a1 + 280) = 1;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943D93C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 > 0x30)
    {
      result = 0;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = *(a2 + 1);
    v9[0] = *a2;
    v9[1] = v7;
    v9[2] = *(a2 + 2);
    do
    {
      a2 = v9;
      *(v9 + v6) ^= *(a3 + v6);
      ++v6;
    }

    while (a4 != v6);
  }

  result = sub_23943D9F0(a1, a2, 0x30uLL);
  if (result)
  {
    result = 1;
    *(a1 + 280) = 1;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943D9F0(uint64_t a1, char *a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x30)
  {
    v4 = a3;
    v7 = (a1 + 264);
    v8 = 0xFFFFFFFFFFFFFFFLL;
    do
    {
      *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
      (*(a1 + 248))(v7, &v12[++v8], a1);
    }

    while (v8 < 2);
    if (v4)
    {
      v9 = v12;
      do
      {
        v10 = *a2++;
        *v9++ ^= v10;
        --v4;
      }

      while (v4);
    }

    sub_23941F384(v12, 256, a1);
    *(a1 + 248) = sub_23941F1D4;
    *(a1 + 256) = sub_23941FF90;
    *v7 = v12[2];
    result = 1;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943DB08(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x10000 && *(a1 + 280) <= 0x1000000000000uLL)
  {
    v10 = a3;
    if (!a5 || (result = sub_23943D9F0(a1, a4, a5), result))
    {
      if (v10 >= 0x10)
      {
        do
        {
          if (v10 >= 0x2000)
          {
            v12 = 0x2000;
          }

          else
          {
            v12 = v10 & 0x1FF0;
          }

          if (*(a1 + 256))
          {
            if (v12)
            {
              bzero(a2, v12);
            }

            *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
            (*(a1 + 256))(a2, a2, v12 >> 4, a1, a1 + 264);
            *(a1 + 276) = bswap32((v12 >> 4) + bswap32(*(a1 + 276)) - 1);
          }

          else if (v12)
          {
            for (i = 0; i < v12; i += 16)
            {
              *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
              (*(a1 + 248))(a1 + 264, &a2[i], a1);
            }
          }

          a2 += v12;
          v10 -= v12;
        }

        while (v10 > 0xF);
      }

      if (v10)
      {
        *(a1 + 276) = bswap32(bswap32(*(a1 + 276)) + 1);
        (*(a1 + 248))(a1 + 264, __src, a1);
        memcpy(a2, __src, v10);
      }

      result = sub_23943D9F0(a1, a4, a5);
      if (result)
      {
        ++*(a1 + 280);
        result = 1;
      }
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943DD28()
{
  result = pthread_atfork(0, 0, sub_23944F6C0);
  if (result)
  {
    abort();
  }

  qword_27DF78B30 = 1;
  return result;
}

void sub_23943DD6C(void *a1)
{
  if (a1)
  {
    sub_239450144(a1);
  }
}

uint64_t sub_23943DD78(void *a1, size_t a2)
{
  if (a2 >= 0x101)
  {
    abort();
  }

  return sub_239455904(a1, a2);
}

void *sub_23943DDA0()
{
  v0 = sub_2394500B0(0x18uLL);
  if (v0)
  {
    v1 = sub_23945004C(0x18uLL);
    v2 = v0;
    if (v1)
    {
      v1[1] = 0;
      v1[2] = 0;
      *v1 = 0;
      *(v1 + 5) = 1;
      *v0 = v1;
      v3 = sub_23945004C(0x18uLL);
      if (v3)
      {
        v3[1] = 0;
        v3[2] = 0;
        *v3 = 0;
        *(v3 + 5) = 1;
        v0[1] = v3;
        *(v0 + 4) = 31;
        return v0;
      }

      v2 = v0 + 1;
    }

    *v2 = 0;
    sub_2394136CC(v0);
    return 0;
  }

  return v0;
}

uint64_t sub_23943DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16) + 1;
  *(a2 + 16) = v9;
  if (v9 == 32)
  {
    if (sub_239427A14(*a2, 1uLL, a4 + 24) && sub_239425A2C(*(a2 + 8), *a2, a4, a5) && sub_239427900(*(a2 + 8), &v13, *(a2 + 8), a4, a5) && sub_2394253C4(*a2, *a2, a3, a4 + 24, a5, a4) && sub_239425948(*a2, *a2, a4, a4, a5))
    {
      *(a2 + 16) = 0;
      goto LABEL_10;
    }

    sub_2394170F4(4, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/blinding.c", 236);
LABEL_14:
    *(a2 + 16) = 31;
    return 0;
  }

  if (!sub_239425948(*a2, *a2, *a2, a4, a5) || !sub_239425948(*(a2 + 8), *(a2 + 8), *(a2 + 8), a4, a5))
  {
    goto LABEL_14;
  }

LABEL_10:
  v11 = *a2;

  return sub_239425948(a1, a1, v11, a4, a5);
}

uint64_t sub_23943DFD0(_WORD *a1, unint64_t a2, const void *a3, size_t a4)
{
  if (a2 <= 0xA)
  {
    v4 = 126;
    v5 = 78;
LABEL_5:
    sub_2394170F4(4, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v5);
    return 0;
  }

  if (a2 - 11 < a4)
  {
    v4 = 118;
    v5 = 83;
    goto LABEL_5;
  }

  *a1 = 256;
  memset(a1 + 1, 255, a2 - a4 - 3);
  *(a1 + ~a4 + a2) = 0;
  if (a4)
  {
    memcpy(a1 + a2 - a4, a3, a4);
  }

  return 1;
}

uint64_t sub_23943E098(void *a1, size_t *a2, size_t a3, _BYTE *a4, unint64_t a5)
{
  if (a5 <= 1)
  {
    v5 = 116;
    v6 = 101;
LABEL_11:
    sub_2394170F4(4, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v6);
    return 0;
  }

  if (*a4 || a4[1] != 1)
  {
    v5 = 107;
    v6 = 107;
    goto LABEL_11;
  }

  v7 = a5 - 2;
  if (a5 == 2)
  {
    goto LABEL_14;
  }

  v9 = 0;
  while (a4[v9 + 2] == 255)
  {
    if (v7 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if (a4[v9 + 2])
  {
    v5 = 102;
    v6 = 119;
    goto LABEL_11;
  }

  if (v7 == v9)
  {
LABEL_14:
    v5 = 131;
    v6 = 125;
    goto LABEL_11;
  }

  if ((v9 + 2) <= 9)
  {
    v5 = 103;
    v6 = 130;
    goto LABEL_11;
  }

  v11 = a5 - v9 - 3;
  if (v11 > a3)
  {
    v5 = 113;
    v6 = 138;
    goto LABEL_11;
  }

  if (a5 - 3 != v9)
  {
    memcpy(a1, &a4[v9 + 3], v11);
  }

  *a2 = v11;
  return 1;
}

uint64_t sub_23943E1FC(void *a1, size_t a2, void *__src, size_t __n)
{
  if (__n > a2)
  {
    v4 = 114;
    v5 = 150;
LABEL_5:
    sub_2394170F4(4, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v5);
    return 0;
  }

  if (__n < a2)
  {
    v4 = 116;
    v5 = 155;
    goto LABEL_5;
  }

  if (__n)
  {
    memcpy(a1, __src, __n);
  }

  return 1;
}

uint64_t sub_23943E270(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  *v16 = 0u;
  v17 = 0u;
  if (a2)
  {
    v8 = a2;
    v10 = 0;
    v11 = *(a5 + 4);
    while (1)
    {
      v15 = bswap32(v10);
      if (!sub_23943134C(v16, a5))
      {
        v12 = 0;
        goto LABEL_10;
      }

      (*(v16[0] + 3))(v16, a3, a4);
      (*(v16[0] + 3))(v16, &v15, 4);
      if (v8 < v11)
      {
        break;
      }

      (*(v16[0] + 4))(v16, a1);
      sub_239450194(v16[1], *(v16[0] + 11));
      a1 += v11;
      ++v10;
      v8 -= v11;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    (*(v16[0] + 4))(v16, __src);
    sub_239450194(v16[1], *(v16[0] + 11));
    memcpy(a1, __src, v8);
  }

LABEL_9:
  v12 = 1;
LABEL_10:
  sub_239450144(v16[1]);
  if (*(&v17 + 1))
  {
    (**(&v17 + 1))(v17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_23943E3E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  *v40 = 0u;
  v41 = 0u;
  v11 = *(a3 + 4);
  if (a6 == -2)
  {
    v12 = -2;
  }

  else
  {
    v12 = *(a3 + 4);
    if (a6 != -1)
    {
      v12 = a6;
      if (a6 <= -3)
      {
        v13 = 138;
        v14 = 233;
LABEL_24:
        sub_2394170F4(4, 0, v13, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v14);
        v23 = 0;
LABEL_25:
        v24 = 0;
        goto LABEL_26;
      }
    }
  }

  v15 = a1[1];
  v16 = (sub_239422114(v15) - 1) & 7;
  v17 = *(*a1 + 32);
  if (v17)
  {
    v18 = v17(a1);
  }

  else
  {
    v18 = (sub_239422114(v15) + 7) >> 3;
  }

  if (*a5 >> v16)
  {
    v13 = 122;
    v14 = 240;
    goto LABEL_24;
  }

  v19 = v18;
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  if (v16)
  {
    v21 = a5;
  }

  else
  {
    v21 = a5 + 1;
  }

  v22 = v18 - (v16 == 0);
  if (v22 < v11 + 2 || (v12 & 0x80000000) == 0 && v22 < v11 + 2 + v12)
  {
    v13 = 113;
    v14 = 250;
    goto LABEL_24;
  }

  if (v21[v22 - 1] != 188)
  {
    v13 = 127;
    v14 = 254;
    goto LABEL_24;
  }

  v39 = v21;
  v27 = v22 + ~v11;
  v28 = sub_23945004C(v27);
  v23 = v28;
  if (!v28 || !sub_23943E270(v28, v27, &v39[v27], v11, v10))
  {
    goto LABEL_25;
  }

  if (v27)
  {
    v29 = v39;
    v30 = v23;
    v31 = v27;
    do
    {
      v32 = *v29++;
      *v30++ ^= v32;
      --v31;
    }

    while (v31);
  }

  if (v16)
  {
    *v23 &= 0xFFu >> (8 - v16);
  }

  v33 = 0;
  do
  {
    v34 = v23[v33];
    v35 = v33 + 1;
    if (v23[v33])
    {
      v36 = 1;
    }

    else
    {
      v36 = v33 >= v27 - 1;
    }

    ++v33;
  }

  while (!v36);
  if (v34 != 1)
  {
    v37 = 139;
    v38 = 281;
    goto LABEL_49;
  }

  if ((v12 & 0x80000000) == 0 && ~v12 + v20 + v19 - v11 != v35)
  {
    v37 = 138;
    v38 = 287;
LABEL_49:
    sub_2394170F4(4, 0, v37, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v38);
    goto LABEL_25;
  }

  if (!sub_23943134C(v40, a3))
  {
    goto LABEL_25;
  }

  (*(v40[0] + 3))(v40, &unk_2395CAE08, 8);
  (*(v40[0] + 3))(v40, a2, v11);
  (*(v40[0] + 3))(v40, &v23[v35], v27 - v35);
  (*(v40[0] + 4))(v40, __s1);
  sub_239450194(v40[1], *(v40[0] + 11));
  if (v11 && memcmp(__s1, &v39[v27], v11))
  {
    v37 = 105;
    v38 = 299;
    goto LABEL_49;
  }

  v24 = 1;
LABEL_26:
  sub_239450144(v23);
  sub_239450144(v40[1]);
  if (*(&v41 + 1))
  {
    (**(&v41 + 1))(v41);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_23943E78C(uint64_t **a1)
{
  v1 = (*a1)[4];
  if (v1)
  {
    return v1();
  }

  else
  {
    return (sub_239422114(a1[1]) + 7) >> 3;
  }
}

uint64_t sub_23943E7C4(uint64_t **a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a4;
  }

  v7 = a1[1];
  v8 = *(v7 + 2);
  if (!v8)
  {
    goto LABEL_10;
  }

  v14 = 0;
  v15 = *(a4 + 4);
  v16 = *v7;
  do
  {
    v17 = *v16++;
    v14 |= v17;
    --v8;
  }

  while (v8);
  if (!v14)
  {
LABEL_10:
    v21 = 120;
    v22 = 329;
LABEL_42:
    sub_2394170F4(4, 0, v21, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/padding.c", v22);
    v31 = 0;
    v26 = 0;
    goto LABEL_43;
  }

  v18 = (sub_239422114(a1[1]) - 1) & 7;
  v19 = (*a1)[4];
  if (v19)
  {
    v20 = v19(a1);
  }

  else
  {
    v20 = (sub_239422114(v7) + 7) >> 3;
  }

  v23 = v20;
  if (!v18)
  {
    *a2++ = 0;
    v23 = v20 - 1;
  }

  if (v23 < v15 + 2)
  {
    v21 = 114;
    v22 = 342;
    goto LABEL_42;
  }

  v24 = v15;
  if (a6 != -1)
  {
    if (a6 == -2)
    {
      v24 = v23 - v15 - 2;
    }

    else
    {
      if ((a6 & 0x80000000) != 0)
      {
        v21 = 138;
        v22 = 356;
        goto LABEL_42;
      }

      v24 = a6;
    }
  }

  if (v23 - v15 - 2 < v24)
  {
    v21 = 114;
    v22 = 363;
    goto LABEL_42;
  }

  if (v24)
  {
    v25 = sub_23945004C(v24);
    v26 = v25;
    if (!v25)
    {
      goto LABEL_37;
    }

    sub_23942C3F4(v25, v24, &unk_2395CADE8);
  }

  else
  {
    v26 = 0;
  }

  *v33 = 0u;
  v34 = 0u;
  if (sub_23943134C(v33, a4))
  {
    v27 = v23 - v15 - 1;
    (*(v33[0] + 3))(v33, &unk_2395CAE08, 8);
    (*(v33[0] + 3))(v33, a3, v15);
    (*(v33[0] + 3))(v33, v26, v24);
    (*(v33[0] + 4))(v33, &a2[v27]);
    sub_239450194(v33[1], *(v33[0] + 11));
    sub_239450144(v33[1]);
    if (*(&v34 + 1))
    {
      (**(&v34 + 1))(v34);
    }

    *v33 = 0u;
    v34 = 0u;
    if (sub_23943E270(a2, v23 - v15 - 1, &a2[v27], v15, v6))
    {
      a2[v23 - (v24 + v15) - 2] ^= 1u;
      if (v24)
      {
        v28 = &a2[~(v24 + v15) + v23];
        v29 = v26;
        do
        {
          v30 = *v29++;
          *v28++ ^= v30;
          --v24;
        }

        while (v24);
      }

      if (v18)
      {
        *a2 &= 0xFFu >> (8 - v18);
      }

      a2[v23 - 1] = -68;
      v31 = 1;
      goto LABEL_43;
    }

LABEL_37:
    v31 = 0;
    goto LABEL_43;
  }

  sub_239450144(v33[1]);
  if (*(&v34 + 1))
  {
    (**(&v34 + 1))(v34);
  }

  v31 = 0;
  *v33 = 0u;
  v34 = 0u;
LABEL_43:
  sub_239450144(v26);
  return v31;
}

uint64_t sub_23943EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23943F580(0);
  v5 = v4;
  if (!v4 || !sub_23943EB84(v4 + 1, a1) || !sub_23943EB84((v5 + 16), a2) || !sub_23943EBE8(v5))
  {
    sub_23943F100(v5);
    return 0;
  }

  return v5;
}

BOOL sub_23943EB84(void ***a1, uint64_t a2)
{
  if (a2)
  {
    sub_239421EC8(*a1);
    v4 = sub_239421F2C(a2);
    *a1 = v4;
    return v4 != 0;
  }

  else
  {
    sub_2394170F4(4, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 88);
    return 0;
  }
}

uint64_t sub_23943EBE8(uint64_t *a1)
{
  if (*a1 && (*(*a1 + 72) & 1) != 0)
  {
    return 1;
  }

  if (sub_239440548(a1))
  {
    v2 = a1[4];
    if ((v2 != 0) == (a1[5] == 0))
    {
      v4 = 134;
      v5 = 799;
      goto LABEL_10;
    }

    v3 = a1[3];
    if (v3)
    {
      if (*(v3 + 16) || (sub_2394229D8(v3, a1[1]) & 0x80000000) == 0)
      {
        v4 = 147;
        v5 = 807;
LABEL_10:
        sub_2394170F4(4, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v5);
        return 0;
      }

      if (v2)
      {
        v7 = sub_23945004C(0x30uLL);
        if (!v7)
        {
          return 0;
        }

        v8 = v7;
        *(v7 + 26) = 0u;
        *v7 = 0u;
        v7[1] = 0u;
        v40 = 0;
        v41 = 0;
        v39 = 0;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        memset(v35, 0, sizeof(v35));
        memset(v34, 0, sizeof(v34));
        memset(v33, 0, sizeof(v33));
        memset(v32, 0, sizeof(v32));
        v9 = a1[4];
        if (*(v9 + 16) || (v10 = a1[1], sub_2394229D8(a1[4], v10) >= 0) || (v11 = a1[5], *(v11 + 16)) || sub_2394229D8(a1[5], v10) >= 0)
        {
          v12 = 132;
          v13 = 839;
        }

        else if (sub_2394280E8(&v39, v9, v11, v8))
        {
          if (sub_2394229D8(&v39, a1[1]))
          {
            v12 = 132;
            v13 = 847;
          }

          else
          {
            v15 = a1[4];
            sub_239457D80(&stru_27DF76A28, sub_239422078);
            if (sub_239421BFC(v35, v15, &qword_27DF777F0) && (v16 = a1[5], sub_239457D80(&stru_27DF76A28, sub_239422078), sub_239421BFC(v34, v16, &qword_27DF777F0)))
            {
              v17 = sub_239422114(v35);
              v18 = sub_239422114(v34);
              if (sub_2394280E8(&v36, a1[3], a1[2], v8) && sub_239423A68(0, &v39, &v36, v35, v17, v8) && sub_239423A68(0, &v36, &v36, v34, v18, v8))
              {
                if (v41)
                {
                  v19 = 1;
                }

                else
                {
                  if (v40)
                  {
                    v20 = *v39 ^ 1;
                    if (v40 >= 2)
                    {
                      v21 = v40 - 1;
                      v22 = (v39 + 8);
                      do
                      {
                        v23 = *v22++;
                        v20 |= v23;
                        --v21;
                      }

                      while (v21);
                    }
                  }

                  else
                  {
                    v20 = 1;
                  }

                  v19 = v20 != 0;
                }

                if (v19)
                {
                  goto LABEL_54;
                }

                if (v38)
                {
                  v24 = 1;
                }

                else
                {
                  if (v37)
                  {
                    v25 = *v36 ^ 1;
                    if (v37 >= 2)
                    {
                      v26 = v37 - 1;
                      v27 = (v36 + 8);
                      do
                      {
                        v28 = *v27++;
                        v25 |= v28;
                        --v26;
                      }

                      while (v26);
                    }
                  }

                  else
                  {
                    v25 = 1;
                  }

                  v24 = v25 != 0;
                }

                if (v24)
                {
LABEL_54:
                  v12 = 119;
                  v13 = 871;
                }

                else
                {
                  v29 = a1[6];
                  if ((v29 != 0) != (a1[7] == 0) && (v29 != 0) != (a1[8] == 0))
                  {
                    if (v29)
                    {
                      v31 = 0;
                      v30 = 0;
                      if (!sub_239440700(&v31 + 1, a1[2], v29, v35, v17, v8) || !sub_239440700(&v31, a1[2], a1[7], v34, v18, v8) || !sub_239440700(&v30, a1[5], a1[8], a1[4], v17, v8))
                      {
                        v12 = 3;
                        v13 = 890;
                        goto LABEL_19;
                      }

                      if (!HIDWORD(v31) || !v31 || !v30)
                      {
                        v12 = 111;
                        v13 = 895;
                        goto LABEL_19;
                      }
                    }

                    v6 = 1;
                    goto LABEL_20;
                  }

                  v12 = 123;
                  v13 = 878;
                }
              }

              else
              {
                v12 = 3;
                v13 = 865;
              }
            }

            else
            {
              v12 = 3;
              v13 = 857;
            }
          }
        }

        else
        {
          v12 = 3;
          v13 = 843;
        }

LABEL_19:
        sub_2394170F4(4, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v13);
        v6 = 0;
LABEL_20:
        sub_239421EC8(&v39);
        sub_239421EC8(&v36);
        sub_239421EC8(v35);
        sub_239421EC8(v34);
        sub_239421EC8(v33);
        sub_239421EC8(v32);
        sub_239422D38(v8);
        return v6;
      }
    }

    return 1;
  }

  return 0;
}

void sub_23943F100(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 80)))
  {
    v3 = *a1;
    v4 = *(*a1 + 24);
    if (v4)
    {
      v4(a1);
      v3 = *a1;
    }

    nullsub_56(v3, v2);
    sub_23941F114(&unk_27DF76DE8, a1, (a1 + 72));
    sub_239421EC8(*(a1 + 8));
    sub_239421EC8(*(a1 + 16));
    sub_239421EC8(*(a1 + 24));
    sub_239421EC8(*(a1 + 32));
    sub_239421EC8(*(a1 + 40));
    sub_239421EC8(*(a1 + 48));
    sub_239421EC8(*(a1 + 56));
    sub_239421EC8(*(a1 + 64));
    sub_23943F700(a1);
    j__pthread_rwlock_destroy((a1 + 88));

    sub_239450144(a1);
  }
}

uint64_t sub_23943F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_23943F580(0);
  v17 = v16;
  if (!v16 || !sub_23943EB84(v16 + 1, a1) || !sub_23943EB84((v17 + 16), a2) || !sub_23943EB84((v17 + 24), a3) || !sub_23943EB84((v17 + 32), a4) || !sub_23943EB84((v17 + 40), a5) || !sub_23943EB84((v17 + 48), a6) || !sub_23943EB84((v17 + 56), a7) || !sub_23943EB84((v17 + 64), a8) || !sub_23943EBE8(v17))
  {
    sub_23943F100(v17);
    return 0;
  }

  return v17;
}

uint64_t sub_23943F2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23943F580(0);
  v7 = v6;
  if (!v6 || !sub_23943EB84(v6 + 1, a1) || !sub_23943EB84((v7 + 16), a2) || !sub_23943EB84((v7 + 24), a3) || !sub_23943EBE8(v7))
  {
    sub_23943F100(v7);
    return 0;
  }

  return v7;
}

uint64_t sub_23943F364(uint64_t a1, uint64_t a2)
{
  v4 = sub_23943F580(0);
  v5 = v4;
  if (v4)
  {
    *(v4 + 21) |= 0x40u;
    if (!sub_23943EB84(v4 + 1, a1) || !sub_23943EB84((v5 + 24), a2) || !sub_23943EBE8(v5))
    {
      sub_23943F100(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_23943F3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23943F580(0);
  v5 = v4;
  if (v4)
  {
    *(v4 + 21) |= 0x80u;
    if (!sub_23943EB84(v4 + 1, a1) || !sub_23943EB84((v5 + 16), a2) || !sub_23943EBE8(v5))
    {
      sub_23943F100(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_23943F46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_23943F580(0);
  v17 = v16;
  if (v16)
  {
    *(v16 + 21) |= 0x80u;
    if (!sub_23943EB84(v16 + 1, a1) || !sub_23943EB84((v17 + 16), a2) || !sub_23943EB84((v17 + 24), a3) || !sub_23943EB84((v17 + 32), a4) || !sub_23943EB84((v17 + 40), a5) || !sub_23943EB84((v17 + 48), a6) || !sub_23943EB84((v17 + 56), a7) || !sub_23943EB84((v17 + 64), a8) || !sub_23943EBE8(v17))
    {
      sub_23943F100(v17);
      return 0;
    }
  }

  return v17;
}

__int128 **sub_23943F580(uint64_t a1)
{
  v2 = sub_2394500B0(0x180uLL);
  v4 = v2;
  if (!v2)
  {
    return v4;
  }

  if (!a1)
  {
    v5 = *v2;
    if (*v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = sub_2392CCA14(a1);
  *v4 = v5;
  if (!v5)
  {
LABEL_4:
    sub_239457D80(&stru_27DF76ED8, sub_239441F18);
    v5 = &xmmword_27DF78B50;
    *v4 = &xmmword_27DF78B50;
  }

LABEL_5:
  nullsub_56(v5, v3);
  *(v4 + 20) = 1;
  *(v4 + 21) = *(*v4 + 18);
  sub_239457CF8((v4 + 11));
  sub_2393F7EB0(v4 + 9);
  v6 = *(*v4 + 2);
  if (v6 && !v6(v4))
  {
    sub_23941F114(&unk_27DF76DE8, v4, v4 + 9);
    j__pthread_rwlock_destroy((v4 + 11));
    nullsub_56(*v4, v7);
    sub_239450144(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_23943F6A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_23943F580(a1);
  v4 = v3;
  if (v3 && sub_23943EB84(v3 + 1, a2))
  {
    *(v4 + 84) |= 0x40u;
  }

  else
  {
    sub_23943F100(v4);
    return 0;
  }

  return v4;
}

void sub_23943F700(uint64_t a1)
{
  *(a1 + 376) &= ~1u;
  sub_239425AB8(*(a1 + 288));
  *(a1 + 288) = 0;
  sub_239425AB8(*(a1 + 296));
  *(a1 + 296) = 0;
  sub_239425AB8(*(a1 + 304));
  *(a1 + 304) = 0;
  sub_239421EC8(*(a1 + 312));
  *(a1 + 312) = 0;
  sub_239421EC8(*(a1 + 320));
  *(a1 + 320) = 0;
  sub_239421EC8(*(a1 + 328));
  *(a1 + 328) = 0;
  sub_239421EC8(*(a1 + 336));
  *(a1 + 336) = 0;
  if (*(a1 + 344))
  {
    v2 = 0;
    do
    {
      sub_2394136CC(*(*(a1 + 352) + 8 * v2++));
    }

    while (v2 < *(a1 + 344));
  }

  sub_239450144(*(a1 + 352));
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  sub_239450144(*(a1 + 360));
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
}

void *sub_23943F7F0(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[1];
  }

  if (a3)
  {
    *a3 = result[2];
  }

  if (a4)
  {
    *a4 = result[3];
  }

  return result;
}

uint64_t sub_23943F818(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 32);
  }

  if (a3)
  {
    *a3 = *(result + 40);
  }

  return result;
}

void *sub_23943F834(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[6];
  }

  if (a3)
  {
    *a3 = result[7];
  }

  if (a4)
  {
    *a4 = result[8];
  }

  return result;
}

uint64_t sub_23943F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!(a2 | v5) || !(a3 | *(a1 + 16)))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v5);
    *(a1 + 8) = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 16));
    *(a1 + 16) = a3;
  }

  if (a4)
  {
    sub_239421EC8(*(a1 + 24));
    *(a1 + 24) = a4;
  }

  sub_23943F700(a1);
  return 1;
}

uint64_t sub_23943F8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!(a2 | v4) || !(a3 | *(a1 + 40)))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v4);
    *(a1 + 32) = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 40));
    *(a1 + 40) = a3;
  }

  sub_23943F700(a1);
  return 1;
}

uint64_t sub_23943F960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!(a2 | v5) || !(a3 | a1[7]) || !(a4 | a1[8]))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v5);
    a1[6] = a2;
  }

  if (a3)
  {
    sub_239421EC8(a1[7]);
    a1[7] = a3;
  }

  if (a4)
  {
    sub_239421EC8(a1[8]);
    a1[8] = a4;
  }

  sub_23943F700(a1);
  return 1;
}

uint64_t sub_23943F9FC(uint64_t **a1, size_t *a2, char *a3, unint64_t a4, void *a5, size_t a6, int a7)
{
  v7 = (*a1)[6];
  if (v7)
  {
    return v7();
  }

  else
  {
    return sub_239440EC8(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_23943FA34(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 72) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23943FA78(uint64_t *a1, size_t *a2, _DWORD *a3, int a4, const void *a5, size_t a6)
{
  result = sub_23943FBC8(a4, a6);
  if (result)
  {
    if (a4 != 4)
    {
      if (a4 == 114)
      {
        *a1 = a5;
        *a2 = a6;
        result = 1;
        *a3 = 0;
        return result;
      }

      v14 = &unk_2395CAE10;
      v15 = 6;
      while (--v15)
      {
        v13 = (v14 + 7);
        v16 = v14[7];
        v14 += 7;
        if (v16 == a4)
        {
          goto LABEL_9;
        }
      }

      v18 = 142;
      v19 = 593;
      goto LABEL_19;
    }

    v13 = &unk_2395CAE10;
LABEL_9:
    v17 = v13[5];
    if (__CFADD__(v17, a6))
    {
      v18 = 140;
      v19 = 574;
LABEL_19:
      sub_2394170F4(4, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v19);
      return 0;
    }

    result = sub_23945004C(v17 + a6);
    if (result)
    {
      v20 = result;
      if (v17)
      {
        memcpy(result, v13 + 6, v17);
      }

      if (a6)
      {
        memcpy((v20 + v17), a5, a6);
      }

      *a1 = v20;
      *a2 = v17 + a6;
      result = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_23943FBC8(int a1, uint64_t a2)
{
  if (a1 == 4)
  {
    v4 = &unk_2395CAE10;
LABEL_9:
    if (v4[4] != a2)
    {
      v2 = 125;
      v3 = 534;
      goto LABEL_13;
    }

    return 1;
  }

  if (a1 != 114)
  {
    v5 = &unk_2395CAE10;
    v6 = 6;
    while (--v6)
    {
      v4 = (v5 + 7);
      v7 = v5[7];
      v5 += 7;
      if (v7 == a1)
      {
        goto LABEL_9;
      }
    }

    v2 = 142;
    v3 = 541;
    goto LABEL_13;
  }

  if (a2 == 36)
  {
    return 1;
  }

  v2 = 125;
  v3 = 524;
LABEL_13:
  sub_2394170F4(4, 0, v2, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v3);
  return 0;
}

uint64_t sub_23943FC94(uint64_t a1, const void *a2, size_t a3, char *a4, _DWORD *a5, uint64_t **a6)
{
  if (!(*a6)[5])
  {
    v14 = (*a6)[4];
    if (v14)
    {
      v15 = v14(a6);
    }

    else
    {
      v15 = (sub_239422114(a6[1]) + 7) >> 3;
    }

    v19 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
    if (sub_23943FA78(&v20, &v19, &v18, a1, a2, a3) && sub_23943F9FC(a6, &v17, a4, v15, v20, v19, 1))
    {
      if (!HIDWORD(v17))
      {
        *a5 = v17;
        v16 = 1;
LABEL_15:
        if (v18)
        {
          sub_239450144(v20);
        }

        return v16;
      }

      sub_2394170F4(4, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 627);
    }

    v16 = 0;
    goto LABEL_15;
  }

  if (!sub_23943FBC8(a1, a3))
  {
    return 0;
  }

  v12 = (*a6)[5];

  return v12(a1, a2, a3, a4, a5, a6);
}

BOOL sub_23943FE1C(uint64_t **a1, size_t *a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (*(a7 + 4) != a6)
  {
    sub_2394170F4(4, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 652);
    return 0;
  }

  v16 = (*a1)[4];
  if (v16)
  {
    v17 = v16(a1);
  }

  else
  {
    v17 = (sub_239422114(a1[1]) + 7) >> 3;
  }

  v18 = v17;
  v19 = sub_23945004C(v17);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  if (sub_23943E7C4(a1, v19, a5, a7, a8, a9))
  {
    v21 = sub_23943F9FC(a1, a2, a3, a4, v20, v18, 3) != 0;
  }

  else
  {
    v21 = 0;
  }

  sub_239450144(v20);
  return v21;
}

uint64_t sub_23943FF40(int a1, const void *a2, size_t a3, unsigned __int8 *a4, unint64_t a5, void *a6)
{
  v7 = a6[1];
  if (!v7 || !a6[2])
  {
    v15 = 144;
    v16 = 674;
LABEL_10:
    sub_2394170F4(4, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v16);
    return 0;
  }

  v13 = *(*a6 + 32);
  if (v13)
  {
    v14 = v13(a6);
  }

  else
  {
    v14 = (sub_239422114(v7) + 7) >> 3;
  }

  v24 = 0;
  __s2 = 0;
  v23 = 0;
  v22 = 0;
  if (a1 == 114 && a3 != 36)
  {
    v15 = 125;
    v16 = 686;
    goto LABEL_10;
  }

  v19 = v14;
  v20 = sub_23945004C(v14);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  if (!sub_2394400E0(a6, &v23, v20, v19, a4, a5, 1) || !sub_23943FA78(&__s2, &v24, &v22, a1, a2, a3))
  {
    goto LABEL_20;
  }

  if (v23 != v24 || v23 && memcmp(v21, __s2, v23))
  {
    sub_2394170F4(4, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 706);
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  v17 = 1;
LABEL_21:
  sub_239450144(v21);
  if (v22)
  {
    sub_239450144(__s2);
  }

  return v17;
}

uint64_t sub_2394400E0(uint64_t a1, size_t *a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, int a7)
{
  if (!*(a1 + 8) || !*(a1 + 16))
  {
    v16 = 144;
    v17 = 492;
LABEL_7:
    sub_2394170F4(4, 0, v16, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v17);
    return 0;
  }

  if (!sub_239440548(a1))
  {
    return 0;
  }

  v14 = *(*a1 + 32);
  if (v14)
  {
    v15 = v14(a1);
  }

  else
  {
    v15 = (sub_239422114(*(a1 + 8)) + 7) >> 3;
  }

  if (v15 > a4)
  {
    v16 = 135;
    v17 = 504;
    goto LABEL_7;
  }

  if (v15 != a6)
  {
    v16 = 112;
    v17 = 509;
    goto LABEL_7;
  }

  v20 = sub_23945004C(0x30uLL);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  *(v20 + 26) = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_239422DA4(v20);
  v22 = sub_239422E50(v21);
  v23 = sub_239422E50(v21);
  v31 = 0;
  v18 = 0;
  if (v22)
  {
    v24 = v23;
    if (v23)
    {
      v25 = a3;
      if (a7 != 3)
      {
        v25 = sub_23945004C(a6);
        if (!v25)
        {
          v18 = 0;
          v31 = 0;
          goto LABEL_24;
        }
      }

      v31 = v25;
      if (!sub_23942253C(a5, a6, v22))
      {
        goto LABEL_23;
      }

      v26 = *(a1 + 8);
      if ((sub_2394228F8(*v22, *(v22 + 2), *v26, *(v26 + 8)) & 0x80000000) == 0)
      {
        v27 = 115;
        v28 = 543;
LABEL_22:
        sub_2394170F4(4, 0, v27, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v28);
LABEL_23:
        v18 = 0;
        goto LABEL_24;
      }

      if (!sub_239429C8C((a1 + 288), (a1 + 88), v26, v21) || !sub_2394253C4(v24, v22, *(a1 + 16), *(a1 + 288) + 24, v21, *(a1 + 288)))
      {
        goto LABEL_23;
      }

      if (!sub_2394227EC(v31, a6, v24))
      {
        v27 = 68;
        v28 = 553;
        goto LABEL_22;
      }

      if (a7 == 3)
      {
        *a2 = a6;
      }

      else
      {
        if (a7 != 1)
        {
          v27 = 143;
          v28 = 567;
          goto LABEL_22;
        }

        if (!sub_23943E098(a3, a2, a6, v31, a6))
        {
          v27 = 136;
          v28 = 572;
          goto LABEL_22;
        }
      }

      v18 = 1;
    }
  }

LABEL_24:
  if (!*(v21 + 40))
  {
    v29 = *(v21 + 8);
    v30 = *(v21 + 16) - 1;
    *(v21 + 16) = v30;
    *(v21 + 32) = *(v29 + 8 * v30);
  }

  sub_239422D38(v21);
  if (v31 != a3)
  {
    sub_239450144(v31);
  }

  return v18;
}

uint64_t sub_2394403C8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, unint64_t a8)
{
  if (*(a4 + 4) == a3)
  {
    v15 = (*a1)[4];
    if (v15)
    {
      v16 = v15(a1);
    }

    else
    {
      v16 = (sub_239422114(a1[1]) + 7) >> 3;
    }

    v17 = v16;
    v25 = v16;
    v18 = sub_23945004C(v16);
    if (v18)
    {
      v19 = v18;
      if (sub_2394400E0(a1, &v25, v18, v17, a7, a8, 3))
      {
        v20 = v25;
        v21 = (*a1)[4];
        if (v21)
        {
          v22 = v21(a1);
        }

        else
        {
          v22 = (sub_239422114(a1[1]) + 7) >> 3;
        }

        if (v20 == v22)
        {
          v23 = sub_23943E3E0(a1, a2, a4, a5, v19, a6);
LABEL_16:
          sub_239450144(v19);
          return v23;
        }

        sub_2394170F4(4, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 747);
      }

      v23 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    sub_2394170F4(4, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 731);
  }

  return 0;
}

uint64_t sub_239440548(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    v4 = 144;
    v5 = 78;
    goto LABEL_11;
  }

  v3 = sub_239422114(*(a1 + 8));
  if (v3 > 0x4000)
  {
    v4 = 128;
    v5 = 86;
LABEL_11:
    sub_2394170F4(4, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v5);
    return 0;
  }

  if (v3 <= 0x1FF)
  {
    v4 = 126;
    v5 = 93;
    goto LABEL_11;
  }

  v6 = *(v1 + 8);
  if (v6 < 1 || (v7 = *v1, (**v1 & 1) == 0) || *(v1 + 16))
  {
    v4 = 104;
    v5 = 100;
    goto LABEL_11;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_239422114(*(a1 + 16));
    if (v10 < 2 || *(v9 + 16) || (v11 = *(v9 + 8), v11 < 1) || (**v9 & 1) == 0)
    {
      v4 = 101;
      v5 = 110;
      goto LABEL_11;
    }

    if ((*(a1 + 84) & 0x80) != 0)
    {
      if (sub_2394228F8(v7, v6, *v9, v11) <= 0)
      {
        v4 = 101;
        v5 = 117;
        goto LABEL_11;
      }
    }

    else if (v10 >= 0x22)
    {
      v4 = 101;
      v5 = 131;
      goto LABEL_11;
    }
  }

  else if ((*(a1 + 84) & 0x40) == 0)
  {
    v4 = 144;
    v5 = 140;
    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_239440700(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (*(a3 + 16) || sub_2394229D8(a3, a4) >= 0)
  {
    *a1 = 0;
    return 1;
  }

  else
  {
    sub_239422DA4(a6);
    result = sub_239422E50(a6);
    if (result)
    {
      v13 = result;
      result = sub_2394280E8(result, a2, a3, a6);
      if (result)
      {
        result = sub_239423A68(0, v13, v13, a4, a5, a6);
        if (result)
        {
          *a1 = sub_239422B0C(v13);
          result = 1;
        }
      }
    }

    if (!*(a6 + 40))
    {
      v14 = *(a6 + 8);
      v15 = *(a6 + 16) - 1;
      *(a6 + 16) = v15;
      *(a6 + 32) = *(v14 + 8 * v15);
    }
  }

  return result;
}

uint64_t sub_2394407F0(uint64_t *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*a1 && (*(*a1 + 72) & 1) != 0)
  {
    sub_2394170F4(4, 0, 146, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 939);
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (!sub_23943EBE8(a1))
  {
    goto LABEL_17;
  }

  v2 = sub_23945004C(0x30uLL);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  *(v2 + 26) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v4 = a1[2];
  if (sub_239422114(v4) - 257 < 0xFFFFFF10)
  {
    goto LABEL_10;
  }

  v5 = a1[1];
  if (*(v5 + 8) < 1)
  {
    goto LABEL_10;
  }

  if ((**v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v4 + 8) < 1)
  {
    goto LABEL_10;
  }

  if ((**v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_239457D80(&stru_27DF76EC8, sub_23944F6E0);
  if (!sub_239427BE0(&v22, v5, &qword_27DF78B38, v3) || v24 || !v23)
  {
    goto LABEL_10;
  }

  v14 = *v22 ^ 1;
  if (v23 >= 2)
  {
    v15 = v23 - 1;
    v16 = v22 + 1;
    do
    {
      v17 = *v16++;
      v14 |= v17;
      --v15;
    }

    while (v15);
  }

  if (!v14 && (sub_23942BB10(&v21, a1[1], 0, v3, 0) ? (v18 = v21 == 2) : (v18 = 0), v18))
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
LABEL_10:
    sub_2394170F4(4, 0, 146, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", 974);
    v6 = 0;
    v7 = 1;
  }

  sub_239421EC8(&v22);
  sub_239422D38(v3);
  if ((v7 & 1) == 0 && a1[3] && a1[4])
  {
    memset(v25, 0, sizeof(v25));
    v8 = *(*a1 + 32);
    if (v8)
    {
      v9 = v8(a1);
    }

    else
    {
      v9 = (sub_239422114(a1[1]) + 7) >> 3;
    }

    v20 = v9;
    v12 = sub_23945004C(v9);
    if (v12)
    {
      v13 = v12;
      if (sub_23943FC94(672, v25, 0x20uLL, v12, &v20, a1))
      {
        if (sub_23943FF40(672, v25, 0x20uLL, v13, v20, a1))
        {
          v6 = 1;
LABEL_40:
          sub_239450144(v13);
          goto LABEL_18;
        }

        v19 = 1007;
      }

      else
      {
        v19 = 999;
      }

      sub_2394170F4(4, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa.c", v19);
      v6 = 0;
      goto LABEL_40;
    }

    goto LABEL_17;
  }

LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_239440AB4(uint64_t a1, char *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = *(*a1 + 64);
  if (v4)
  {
    return v4();
  }

  else
  {
    return sub_239440AC8(a1, a2, a3, a4);
  }
}

uint64_t sub_239440AC8(uint64_t a1, char *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (!*(a1 + 8) || !*(a1 + 24))
  {
    sub_2394170F4(4, 0, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 596);
    return 0;
  }

  v41 = 0;
  v8 = sub_23945004C(0x30uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  *(v8 + 26) = 0u;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_239422DA4(v8);
  v10 = sub_239422E50(v9);
  v11 = sub_239422E50(v9);
  v12 = 0;
  v13 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

  v14 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  if (!sub_23942253C(a3, a4, v10))
  {
    goto LABEL_10;
  }

  if (sub_2394228F8(*v10, *(v10 + 2), **(a1 + 8), *(*(a1 + 8) + 8)) < 0)
  {
    if (!sub_23944103C(a1, v9))
    {
      v15 = 68;
      v16 = 633;
      goto LABEL_9;
    }

    v21 = *(a1 + 84) & 0x48;
    if (!*(a1 + 16) && !v21)
    {
      v15 = 130;
      v16 = 649;
      goto LABEL_9;
    }

    if (v21)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_239441234(a1, &v41);
      if (!v12)
      {
        v33 = 656;
        goto LABEL_54;
      }

      if (!sub_23943DE3C(v10, v12, *(a1 + 16), *(a1 + 288), v9))
      {
        goto LABEL_55;
      }
    }

    v22 = *(a1 + 32);
    if (!v22)
    {
      goto LABEL_39;
    }

    v23 = *(a1 + 40);
    if (!v23)
    {
      goto LABEL_39;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_39;
    }

    if (!*(a1 + 48))
    {
      goto LABEL_39;
    }

    if (!*(a1 + 56))
    {
      goto LABEL_39;
    }

    if (!*(a1 + 64))
    {
      goto LABEL_39;
    }

    if (*(v23 + 4))
    {
      goto LABEL_39;
    }

    v24 = *(*(a1 + 296) + 32);
    v25 = *(v23 + 2);
    if (v25 > v24)
    {
      v26 = 0;
      v27 = *v23;
      v28 = v25 - v24;
      v29 = (v27 + 8 * v24);
      do
      {
        v30 = *v29++;
        v26 |= v30;
        --v28;
      }

      while (v28);
      if (v26)
      {
        goto LABEL_39;
      }
    }

    if (*(v22 + 4))
    {
      goto LABEL_39;
    }

    v34 = *(*(a1 + 304) + 32);
    v35 = *(v22 + 2);
    if (v35 <= v34)
    {
      goto LABEL_64;
    }

    v36 = 0;
    v37 = *v22;
    v38 = v35 - v34;
    v39 = (v37 + 8 * v34);
    do
    {
      v40 = *v39++;
      v36 |= v40;
      --v38;
    }

    while (v38);
    if (!v36)
    {
LABEL_64:
      if (!sub_239441444(v14, v10, a1, v9))
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_39:
      if (!sub_239426160(v14, v10, *(a1 + 312), *(a1 + 8), v9, *(a1 + 288)))
      {
LABEL_55:
        v13 = 0;
        goto LABEL_11;
      }
    }

    if (!*(a1 + 16) || (v31 = sub_239422E50(v9)) != 0 && (v32 = v31, sub_2394253C4(v31, v14, *(a1 + 16), *(a1 + 8), v9, *(a1 + 288))) && sub_239422C60(v32, v10))
    {
      if (!v21 && !sub_239425948(v14, v14, v12[1], *(a1 + 288), v9))
      {
        goto LABEL_55;
      }

      if (sub_2394227EC(a2, a4, v14))
      {
        v13 = 1;
        goto LABEL_11;
      }

      v33 = 713;
    }

    else
    {
      v33 = 695;
    }

LABEL_54:
    sub_2394170F4(4, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v33);
    goto LABEL_55;
  }

  v15 = 115;
  v16 = 628;
LABEL_9:
  sub_2394170F4(4, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v16);
LABEL_10:
  v13 = 0;
  v12 = 0;
LABEL_11:
  if (!*(v9 + 40))
  {
    v17 = *(v9 + 8);
    v18 = *(v9 + 16) - 1;
    *(v9 + 16) = v18;
    *(v9 + 32) = *(v17 + 8 * v18);
  }

  sub_239422D38(v9);
  if (v12)
  {
    v19 = v41;
    if (v41 == 1024)
    {
      sub_2394136CC(v12);
    }

    else
    {
      sub_239457D3C((a1 + 88));
      *(*(a1 + 360) + v19) = 0;
      sub_239457D5C((a1 + 88));
    }
  }

  return v13;
}

uint64_t sub_239440EC8(uint64_t **a1, size_t *a2, char *a3, unint64_t a4, void *a5, size_t a6, int a7)
{
  v14 = (*a1)[4];
  if (v14)
  {
    v15 = v14(a1);
  }

  else
  {
    v15 = (sub_239422114(a1[1]) + 7) >> 3;
  }

  v16 = v15;
  if (v15 <= a4)
  {
    v18 = sub_23945004C(v15);
    v19 = v18;
    if (v18)
    {
      if (a7 == 3)
      {
        if (!sub_23943E1FC(v18, v16, a5, a6))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a7 != 1)
        {
          sub_2394170F4(4, 0, 143, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 463);
          goto LABEL_16;
        }

        if (!sub_23943DFD0(v18, v16, a5, a6))
        {
          goto LABEL_16;
        }
      }

      v20 = (*a1)[8];
      if (v20)
      {
        if (!v20(a1, a3, v19, v16))
        {
          goto LABEL_16;
        }

LABEL_20:
        *a2 = v16;
        v17 = 1;
        goto LABEL_17;
      }

      if (sub_239440AC8(a1, a3, v19, v16))
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v17 = 0;
LABEL_17:
    sub_239450144(v19);
    return v17;
  }

  sub_2394170F4(4, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 446);
  return 0;
}

uint64_t sub_23944103C(uint64_t a1, uint64_t a2)
{
  sub_239457D1C((a1 + 88));
  v4 = *(a1 + 376);
  sub_239457D5C((a1 + 88));
  if ((v4 & 1) == 0)
  {
    sub_239457D3C((a1 + 88));
    if (*(a1 + 376))
    {
LABEL_22:
      v11 = 1;
LABEL_34:
      sub_239457D5C((a1 + 88));
      return v11;
    }

    if (!sub_239440548(a1))
    {
      goto LABEL_33;
    }

    v5 = *(a1 + 288);
    if (!v5)
    {
      v5 = sub_239426A1C(*(a1 + 8), a2);
      *(a1 + 288) = v5;
      if (!v5)
      {
        goto LABEL_33;
      }
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      if (!sub_23944F704((a1 + 312), v6, *(v5 + 8)))
      {
        goto LABEL_33;
      }
    }

    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 32);
    if (!v7 || !*(a1 + 40))
    {
      goto LABEL_21;
    }

    if ((v8 = *(a1 + 296)) == 0 && (v8 = sub_2394258B8(v7, a2), (*(a1 + 296) = v8) == 0) || (v9 = *(a1 + 304)) == 0 && (v9 = sub_2394258B8(*(a1 + 40), a2), (*(a1 + 304) = v9) == 0))
    {
LABEL_33:
      v11 = 0;
      goto LABEL_34;
    }

    v10 = *(a1 + 48);
    if (!v10 || !*(a1 + 56))
    {
      goto LABEL_21;
    }

    if (!*(a1 + 64))
    {
      v12 = sub_23945004C(0x18uLL);
      v13 = v12;
      if (!v12 || (v12[1] = 0, v12[2] = 0, *v12 = 0, *(v12 + 5) = 1, !sub_239427B34(v12, *(a1 + 40), *(a1 + 32), a2, *(a1 + 296))))
      {
        v14 = v13;
LABEL_32:
        sub_239421EC8(v14);
        goto LABEL_33;
      }

      *(a1 + 64) = v13;
      v10 = *(a1 + 48);
    }

    if (!sub_23944F704((a1 + 320), v10, *(v8 + 8)) || !sub_23944F704((a1 + 328), *(a1 + 56), *(v9 + 8)))
    {
      goto LABEL_33;
    }

    if (*(a1 + 336))
    {
LABEL_21:
      *(a1 + 376) |= 1u;
      goto LABEL_22;
    }

    v15 = sub_23945004C(0x18uLL);
    v16 = v15;
    if (v15)
    {
      v15[1] = 0;
      v15[2] = 0;
      *v15 = 0;
      *(v15 + 5) = 1;
      if (sub_239425948(v15, *(a1 + 64), *(a1 + 296), *(a1 + 296), a2))
      {
        *(a1 + 336) = v16;
        goto LABEL_21;
      }
    }

    v14 = v16;
    goto LABEL_32;
  }

  return 1;
}

void *sub_239441234(uint64_t a1, void *a2)
{
  sub_239457D80(&stru_27DF76DD8, sub_23943DD28);
  v4 = qword_27DF78B30;
  sub_239457D3C((a1 + 88));
  v5 = *(a1 + 344);
  if (*(a1 + 368) != v4)
  {
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        *(*(*(a1 + 352) + 8 * i) + 16) = 31;
        v5 = *(a1 + 344);
      }
    }

    *(a1 + 368) = v4;
  }

  if (v5)
  {
    v7 = memchr(*(a1 + 360), 0, v5);
    if (v7)
    {
      *v7 = 1;
      v8 = &v7[-*(a1 + 360)];
      *a2 = v8;
      v9 = *(*(a1 + 352) + 8 * v8);
      goto LABEL_32;
    }

    if (v5 >= 0x400)
    {
      *a2 = 1024;
      v9 = sub_23943DDA0();
      goto LABEL_32;
    }
  }

  v10 = 2 * v5;
  if (2 * v5 >= 0x400)
  {
    v10 = 1024;
  }

  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_2394500F0(v11, 8uLL);
  v13 = sub_23945004C(v11);
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = *(a1 + 344);
    if (8 * v16)
    {
      memcpy(v12, *(a1 + 352), 8 * v16);
      v16 = *(a1 + 344);
    }

    if (v16)
    {
      memcpy(v14, *(a1 + 360), v16);
      v17 = *(a1 + 344);
    }

    else
    {
      v17 = 0;
    }

    if (v17 >= v11)
    {
LABEL_31:
      bzero(&v14[v17], v11 - v17);
      v14[*(a1 + 344)] = 1;
      v19 = *(a1 + 344);
      *a2 = v19;
      v9 = v12[v19];
      sub_239450144(*(a1 + 352));
      *(a1 + 352) = v12;
      sub_239450144(*(a1 + 360));
      *(a1 + 360) = v14;
      *(a1 + 344) = v11;
      goto LABEL_32;
    }

    while (1)
    {
      v18 = sub_23943DDA0();
      v12[v17] = v18;
      if (!v18)
      {
        break;
      }

      if (v11 == ++v17)
      {
        v17 = *(a1 + 344);
        goto LABEL_31;
      }
    }

    for (j = *(a1 + 344); j < v17; ++j)
    {
      sub_2394136CC(v12[j]);
    }
  }

  sub_239450144(v14);
  sub_239450144(v12);
  v9 = 0;
LABEL_32:
  sub_239457D5C((a1 + 88));
  return v9;
}

uint64_t sub_239441444(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_239422DA4(a4);
  v8 = sub_239422E50(a4);
  v9 = sub_239422E50(a4);
  result = 0;
  if (v8)
  {
    if (v9)
    {
      result = sub_23944103C(a3, a4);
      if (result)
      {
        v11 = a3[36];
        v12 = a3[37];
        v13 = a3[38];
        result = sub_23944F77C(v8, a2, v13, v12 + 24, a4);
        if (result)
        {
          result = sub_239426160(v9, v8, a3[41], v13 + 24, a4, a3[38]);
          if (result)
          {
            result = sub_23944F77C(v8, a2, a3[37], v13 + 24, a4);
            if (result)
            {
              result = sub_239426160(a1, v8, a3[40], v12 + 24, a4, a3[37]);
              if (result)
              {
                result = sub_23944F77C(v8, v9, a3[37], v13 + 24, a4);
                if (result)
                {
                  result = sub_239424068(a1, a1, v8, v12 + 24, a4);
                  if (result)
                  {
                    result = sub_239425948(a1, a1, a3[42], a3[37], a4);
                    if (result)
                    {
                      result = sub_2394280E8(a1, a1, v13 + 24, a4);
                      if (result)
                      {
                        result = sub_239421554(a1, a1, v9);
                        if (result)
                        {
                          sub_239422114((v11 + 24));
                          result = sub_2394223D0(a1, *(v11 + 32));
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

  if (!*(a4 + 40))
  {
    v14 = *(a4 + 8);
    v15 = *(a4 + 16) - 1;
    *(a4 + 16) = v15;
    *(a4 + 32) = *(v14 + 8 * v15);
  }

  return result;
}

uint64_t sub_239441604(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (!a1)
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 1254);
    return 0;
  }

  v6 = 0;
  v7 = a2 & 0xFFFFFF80;
  v44 = ((a2 & 0xFFFFFF80) >> 1) - 100;
  v43 = (a2 & 0xFFFFFF80) >> 1;
  while (1)
  {
    sub_239416A38();
    v8 = sub_23943F580(0);
    if (!v8)
    {
      break;
    }

    if (v7 <= 255)
    {
      v9 = 126;
      v10 = 1073;
LABEL_8:
      sub_2394170F4(4, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v10);
      goto LABEL_83;
    }

    if (sub_239422114(a3) >= 0x21)
    {
      v9 = 101;
      v10 = 1084;
      goto LABEL_8;
    }

    v11 = sub_23945004C(0x30uLL);
    v12 = v11;
    if (v11)
    {
      *(v11 + 26) = 0u;
      *v11 = 0u;
      *(v11 + 1) = 0u;
      sub_239422DA4(v11);
      v13 = sub_239422E50(v12);
      v47 = sub_239422E50(v12);
      v14 = sub_239422E50(v12);
      v15 = sub_239422E50(v12);
      v16 = sub_239422E50(v12);
      v48 = sub_239422E50(v12);
      v46 = v13;
      if (v13)
      {
        if (v47 && v14 && v15 && v16 && v48 && sub_239429B0C(v16, v44) && sub_239429B0C(v48, v43))
        {
          if (!v8[1])
          {
            v17 = sub_23945004C(0x18uLL);
            if (!v17)
            {
              v8[1] = 0;
              goto LABEL_76;
            }

            v17[1] = 0;
            v17[2] = 0;
            *v17 = 0;
            *(v17 + 5) = 1;
            v8[1] = v17;
          }

          if (!v8[3])
          {
            v18 = sub_23945004C(0x18uLL);
            if (!v18)
            {
              v8[3] = 0;
              goto LABEL_76;
            }

            v18[1] = 0;
            v18[2] = 0;
            *v18 = 0;
            *(v18 + 5) = 1;
            v8[3] = v18;
          }

          if (!v8[2])
          {
            v19 = sub_23945004C(0x18uLL);
            if (!v19)
            {
              v8[2] = 0;
              goto LABEL_76;
            }

            v19[1] = 0;
            v19[2] = 0;
            *v19 = 0;
            *(v19 + 5) = 1;
            v8[2] = v19;
          }

          if (!v8[4])
          {
            v20 = sub_23945004C(0x18uLL);
            if (!v20)
            {
              v8[4] = 0;
              goto LABEL_76;
            }

            v20[1] = 0;
            v20[2] = 0;
            *v20 = 0;
            *(v20 + 5) = 1;
            v8[4] = v20;
          }

          if (!v8[5])
          {
            v21 = sub_23945004C(0x18uLL);
            if (!v21)
            {
              v8[5] = 0;
              goto LABEL_76;
            }

            v21[1] = 0;
            v21[2] = 0;
            *v21 = 0;
            *(v21 + 5) = 1;
            v8[5] = v21;
          }

          if (!v8[6])
          {
            v22 = sub_23945004C(0x18uLL);
            if (!v22)
            {
              v8[6] = 0;
              goto LABEL_76;
            }

            v22[1] = 0;
            v22[2] = 0;
            *v22 = 0;
            *(v22 + 5) = 1;
            v8[6] = v22;
          }

          if (!v8[7])
          {
            v23 = sub_23945004C(0x18uLL);
            if (!v23)
            {
              v8[7] = 0;
              goto LABEL_76;
            }

            v23[1] = 0;
            v23[2] = 0;
            *v23 = 0;
            *(v23 + 5) = 1;
            v8[7] = v23;
          }

          if (!sub_239421F90(v8[2], a3) || !sub_239421600(v15, 0x20uLL))
          {
            goto LABEL_76;
          }

          v24 = *v15;
          v24[12] = xmmword_2395CAF98;
          v24[13] = unk_2395CAFA8;
          v24[14] = xmmword_2395CAFB8;
          v24[15] = unk_2395CAFC8;
          v24[8] = xmmword_2395CAF58;
          v24[9] = unk_2395CAF68;
          v24[10] = xmmword_2395CAF78;
          v24[11] = unk_2395CAF88;
          v24[4] = xmmword_2395CAF18;
          v24[5] = unk_2395CAF28;
          v24[6] = xmmword_2395CAF38;
          v24[7] = unk_2395CAF48;
          *v24 = xmmword_2395CAED8;
          v24[1] = unk_2395CAEE8;
          v24[2] = xmmword_2395CAEF8;
          v24[3] = unk_2395CAF08;
          *(v15 + 2) = 32;
          *(v15 + 4) = 0;
          if (a2 > 0xFFF)
          {
            if (v7 > 0x1000 && (!sub_2394217D4(v15, 1uLL) || !sub_23942350C(v15, v15, v43 - 2048)))
            {
              goto LABEL_76;
            }
          }

          else if (!sub_23942373C(v15, v15, 2048 - v43))
          {
            goto LABEL_76;
          }

          v39 = v14;
          while (sub_23944F850(v8[4], v43, v8[2], 0, v15, v16, v12, a4) && (!a4 || (*(a4 + 8))(3, 0)) && sub_23944F850(v8[5], v43, v8[2], v8[4], v15, v16, v12, a4) && (!a4 || (*(a4 + 8))(3, 1)))
          {
            v26 = v8[4];
            v25 = v8[5];
            if ((sub_2394229D8(v26, v25) & 0x80000000) != 0)
            {
              v8[4] = v25;
              v8[5] = v26;
              v26 = v25;
            }

            sub_239457D80(&stru_27DF76A28, sub_239422078);
            if (!sub_239421BFC(v47, v26, &qword_27DF777F0))
            {
              break;
            }

            v27 = v8[5];
            sub_239457D80(&stru_27DF76A28, sub_239422078);
            if (!sub_239421BFC(v39, v27, &qword_27DF777F0) || !sub_239428004(v46, v47, v39, v12) || !sub_239427050(v8[3], &v49, v8[2], v46, v12))
            {
              break;
            }

            if (sub_2394229D8(v8[3], v48) >= 1)
            {
              if (!sub_2394280E8(v8[1], v8[4], v8[5], v12) || !sub_239423A68(0, v8[6], v8[3], v47, v43, v12) || !sub_239423A68(0, v8[7], v8[3], v39, v43, v12))
              {
                break;
              }

              v28 = v8[1];
              v29 = *(v28 + 2);
              if (v29 < 1)
              {
                if (!v29)
                {
LABEL_87:
                  *(v28 + 4) = 0;
                }
              }

              else
              {
                while (!*(*v28 - 8 + 8 * v29))
                {
                  v30 = __OFSUB__(v29--, 1);
                  if ((v29 < 0) ^ v30 | (v29 == 0))
                  {
                    *(v28 + 2) = 0;
                    goto LABEL_87;
                  }
                }

                *(v28 + 2) = v29;
              }

              if (sub_239422114(v8[1]) == v7)
              {
                if (!sub_23944103C(v8, v12))
                {
                  break;
                }

                if (sub_23943EBE8(v8))
                {
                  v33 = 0;
                  goto LABEL_78;
                }

                v31 = 124;
                v32 = 1218;
              }

              else
              {
                v31 = 68;
                v32 = 1204;
              }

              goto LABEL_77;
            }
          }
        }
      }
    }

LABEL_76:
    v31 = 3;
    v32 = 1226;
LABEL_77:
    sub_2394170F4(4, 0, v31, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v32);
    v33 = 1;
LABEL_78:
    if (v12)
    {
      if (!*(v12 + 40))
      {
        v34 = *(v12 + 8);
        v35 = *(v12 + 16) - 1;
        *(v12 + 16) = v35;
        *(v12 + 32) = *(v34 + 8 * v35);
      }

      sub_239422D38(v12);
    }

    if (!v33)
    {
      if (!a5 || sub_2394407F0(v8))
      {
        sub_23943F700(a1);
        sub_239421EC8(*(a1 + 8));
        *(a1 + 8) = v8[1];
        v8[1] = 0;
        sub_239421EC8(*(a1 + 16));
        *(a1 + 16) = v8[2];
        v8[2] = 0;
        sub_239421EC8(*(a1 + 24));
        *(a1 + 24) = v8[3];
        v8[3] = 0;
        sub_239421EC8(*(a1 + 32));
        *(a1 + 32) = v8[4];
        v8[4] = 0;
        sub_239421EC8(*(a1 + 40));
        *(a1 + 40) = v8[5];
        v8[5] = 0;
        sub_239421EC8(*(a1 + 48));
        *(a1 + 48) = v8[6];
        v8[6] = 0;
        sub_239421EC8(*(a1 + 56));
        *(a1 + 56) = v8[7];
        v8[7] = 0;
        sub_239421EC8(*(a1 + 64));
        *(a1 + 64) = v8[8];
        v8[8] = 0;
        sub_239425AB8(*(a1 + 288));
        *(a1 + 288) = v8[36];
        v8[36] = 0;
        sub_239425AB8(*(a1 + 296));
        *(a1 + 296) = v8[37];
        v8[37] = 0;
        sub_239425AB8(*(a1 + 304));
        *(a1 + 304) = v8[38];
        v8[38] = 0;
        sub_239421EC8(*(a1 + 312));
        *(a1 + 312) = v8[39];
        v8[39] = 0;
        sub_239421EC8(*(a1 + 320));
        *(a1 + 320) = v8[40];
        v8[40] = 0;
        sub_239421EC8(*(a1 + 328));
        *(a1 + 328) = v8[41];
        v8[41] = 0;
        sub_239421EC8(*(a1 + 336));
        *(a1 + 336) = v8[42];
        v8[42] = 0;
        *(a1 + 376) = *(a1 + 376) & 0xFE | v8[47] & 1;
        v37 = 1;
        goto LABEL_100;
      }

      break;
    }

LABEL_83:
    v36 = sub_239416940();
    sub_23943F100(v8);
    v37 = 0;
    v8 = 0;
    if (v6 <= 2)
    {
      ++v6;
      if ((v36 & 0xFF000FFF) == 0x400008D)
      {
        continue;
      }
    }

    goto LABEL_100;
  }

  v37 = 0;
LABEL_100:
  sub_23943F100(v8);
  return v37;
}

uint64_t sub_239441E2C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2048 || a2 == 3072 || a2 == 4096)
  {
    v6 = sub_23945004C(0x18uLL);
    v7 = v6;
    if (v6)
    {
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      *(v6 + 5) = 1;
      if (sub_239421600(v6, 1uLL))
      {
        *(v7 + 4) = 0;
        **v7 = 65537;
        *(v7 + 2) = 1;
        v8 = sub_239441604(a1, a2, v7, a3, 1);
        sub_239421EC8(v7);
        return v8;
      }
    }

    sub_239421EC8(v7);
  }

  else
  {
    sub_2394170F4(4, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 1329);
  }

  return 0;
}

double sub_239441F18()
{
  result = 0.0;
  xmmword_27DF78B80 = 0u;
  unk_27DF78B90 = 0u;
  xmmword_27DF78B60 = 0u;
  unk_27DF78B70 = 0u;
  xmmword_27DF78B50 = 0u;
  BYTE4(xmmword_27DF78B50) = 1;
  return result;
}

uint64_t sub_239441F48()
{
  v3 = *MEMORY[0x277D85DE8];
  sub_2394324A0(&xmmword_2395CAFE0, 0x10uLL, __s1);
  result = sub_239441FC0(byte_2395CAFF0, __s1, 0x20uLL, "SHA-256 KAT");
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239441FC0(unsigned __int8 *__s2, unsigned __int8 *__s1, size_t a3, const char *a4)
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  v6 = __s1;
  v7 = __s2;
  if (!memcmp(__s1, __s2, a3))
  {
    return 1;
  }

  v8 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "%s failed.\nExpected:   ", a4);
  v9 = v5;
  do
  {
    v10 = *v7++;
    fprintf(*v8, "%02x", v10);
    --v9;
  }

  while (v9);
  fwrite("\nCalculated: ", 0xDuLL, 1uLL, *v8);
  do
  {
    v11 = *v6++;
    fprintf(*v8, "%02x", v11);
    --v5;
  }

  while (v5);
  fputc(10, *v8);
  fflush(*v8);
  return 0;
}

uint64_t sub_2394420C4()
{
  __s1[8] = *MEMORY[0x277D85DE8];
  sub_239432620(&unk_2395CB010, 0x10uLL, __s1);
  result = sub_239441FC0(byte_2395CB020, __s1, 0x40uLL, "SHA-512 KAT");
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23944213C()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 0;
  sub_239457D80(&stru_27DF76C28, sub_239431714);
  sub_23943AAC0(&qword_27DF77FD0, &unk_2395CB060, 0x10uLL, &unk_2395CB060, 16, __s1, &v2);
  result = 0;
  if (v2 == 32)
  {
    result = sub_239441FC0(byte_2395CB070, __s1, 0x20uLL, "HMAC-SHA-256 KAT");
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394421F8()
{
  __s1[73] = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x248uLL);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v73 = 0uLL;
  v0 = sub_23941F384(&xmmword_2395CD270, 128, v44);
  v1 = MEMORY[0x277D85DF8];
  if (v0)
  {
    v2 = *MEMORY[0x277D85DF8];
    v3 = "AES_set_encrypt_key failed.\n";
LABEL_3:
    v4 = 1;
    v5 = 28;
LABEL_4:
    fwrite(v3, v5, 1uLL, v2);
    goto LABEL_5;
  }

  v4 = 1;
  sub_239420158(qword_2395CD280, v72, 0x20uLL, v44, &v73, 1);
  if (sub_239441FC0(byte_2395CD2A0, v72, 0x20uLL, "AES-CBC-encrypt KAT"))
  {
    v73 = 0uLL;
    if (sub_23941F384(&xmmword_2395CD270, 128, v44))
    {
      v2 = *v1;
      v3 = "AES_set_decrypt_key failed.\n";
      goto LABEL_3;
    }

    sub_239420158(qword_2395CD2C0, v72, 0x20uLL, v44, &v73, 0);
    if (!sub_239441FC0(byte_2395CD2E0, v72, 0x20uLL, "AES-CBC-decrypt KAT"))
    {
      goto LABEL_89;
    }

    v43 = 0;
    memset(v71, 0, sizeof(v71));
    sub_239457D80(&stru_27DF76B28, sub_23942F1F8);
    if (sub_23942D478(__s1, &dword_27DF77BB0, &xmmword_2395CD270, 16, 0))
    {
      sub_239457D80(&stru_27DF76B28, sub_23942F1F8);
      if (sub_23942D610(__s1, v72[0].i8, &v43, 0x100uLL, v71, BYTE1(dword_27DF77BB0), byte_2395CD300, 0x20uLL) && sub_239441FC0(byte_2395CD320, v72, 0x30uLL, "AES-GCM-encrypt KAT"))
      {
        sub_239457D80(&stru_27DF76B28, sub_23942F1F8);
        if (!sub_23942D86C(__s1, v72[0].i8, &v43, 0x100uLL, v71, BYTE1(dword_27DF77BB0), a5, 0x30uLL) || !sub_239441FC0(byte_2395CD380, v72, 0x20uLL, "AES-GCM-decrypt KAT"))
        {
          v2 = *v1;
          v3 = "AES-GCM-decrypt KAT failed because EVP_AEAD_CTX_open failed.\n";
          v4 = 1;
          v5 = 61;
          goto LABEL_4;
        }

        sub_239443030(dword_2395CD3A0, 0x10uLL, v72);
        if (sub_239441FC0(byte_2395CD3B0, v72, 0x14uLL, "SHA-1 KAT") && sub_239441F48() && sub_2394420C4() && sub_23944213C())
        {
          memset(v70, 0, sizeof(v70));
          memset(v69, 0, sizeof(v69));
          if (!sub_23943D838(v69, xmmword_2395CD3C4, aBcmpersonaliza, 0x12uLL) || !sub_23943DB08(v69, v72[0].i8, 0x40uLL, &aBcmpersonaliza[18], 0x10uLL) || !sub_239441FC0(byte_2395CD416, v72, 0x40uLL, "DRBG Generate KAT") || !sub_23943D93C(v69, byte_2395CD456, &aBcmpersonaliza[18], 0x10uLL) || !sub_23943DB08(v69, v72[0].i8, 0x40uLL, &aBcmpersonaliza[18], 0x10uLL) || !sub_239441FC0(byte_2395CD486, v72, 0x40uLL, "DRBG-reseed KAT"))
          {
            v4 = 1;
            fwrite("CTR-DRBG failed.\n", 0x11uLL, 1uLL, *v1);
            goto LABEL_5;
          }

          sub_239450194(v69, 0x120uLL);
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          __s2 = 0u;
          v52 = 0u;
          if (sub_239441FC0(&__s2, v69, 0x120uLL, "DRBG Clear KAT"))
          {
            sub_239457D80(&stru_27DF76C68, sub_239431954);
            if (!sub_23944673C(&qword_27DF78090, v50, 0x20uLL, &unk_2395CD4F5, 0x20uLL, "FIPS self test", 15, &unk_2395CD4D5, 16, &unk_2395CD4E5, 16) || !sub_239441FC0(byte_2395CD515, v50, 0x20uLL, "TLS10-KDF KAT") || (sub_239457D80(&stru_27DF76C28, sub_239431714), !sub_23944673C(&qword_27DF77FD0, v49, 0x20uLL, &unk_2395CD535, 0x20uLL, "FIPS self test", 15, &unk_2395CD4D5, 16, &unk_2395CD4E5, 16)) || !sub_239441FC0(byte_2395CD555, v49, 0x20uLL, "TLS12-KDF KAT"))
            {
              v2 = *v1;
              v3 = "TLS KDF failed.\n";
              v4 = 1;
              v5 = 16;
              goto LABEL_4;
            }

            v42 = 0;
            sub_239457D80(&stru_27DF76C28, sub_239431714);
            if (!sub_23943A854(v48, &v42, &qword_27DF77FD0, &unk_2395CD575, 32, &unk_2395CD595, 0x10uLL) || v42 != 32 || (sub_239457D80(&stru_27DF76C28, sub_239431714), !sub_239446B54(v47, 32, &qword_27DF77FD0, v48, 0x20uLL, "c e traffic", 0xBuLL, &unk_2395CD5B1, 0x20uLL)) || !sub_239441FC0(byte_2395CD5D1, v47, 0x20uLL, "CRYPTO_tls13_hkdf_expand_label"))
            {
              v2 = *v1;
              v3 = "TLS13-KDF failed.\n";
              v4 = 1;
              v5 = 18;
              goto LABEL_4;
            }

            sub_239457D80(&stru_27DF76C28, sub_239431714);
            if (!sub_23943A7B0(v46, 32, &qword_27DF77FD0, &unk_2395CD5F1, 32, &unk_2395CD611, 0x20uLL, &unk_2395CD631, 32) || !sub_239441FC0(byte_2395CD651, v46, 0x20uLL, "HKDF"))
            {
              v2 = *v1;
              v3 = "HKDF failed.\n";
              v4 = 1;
              v5 = 13;
              goto LABEL_4;
            }

            v4 = 0;
            goto LABEL_5;
          }
        }

LABEL_89:
        v4 = 1;
        goto LABEL_5;
      }

      v2 = *v1;
      v3 = "EVP_AEAD_CTX_seal for AES-128-GCM failed.\n";
    }

    else
    {
      v2 = *v1;
      v3 = "EVP_AEAD_CTX_init for AES-128-GCM failed.\n";
    }

    v4 = 1;
    v5 = 42;
    goto LABEL_4;
  }

LABEL_5:
  if (__s1[0])
  {
    (*(__s1[0] + 24))(__s1);
  }

  if (v4)
  {
    goto LABEL_56;
  }

  v6 = sub_23943F580(0);
  if (!v6)
  {
    goto LABEL_54;
  }

  v7 = sub_23942253C(byte_2395CD8B1, 0x100uLL, 0);
  v6[1] = v7;
  if (!v7)
  {
    goto LABEL_54;
  }

  v8 = sub_23942253C(byte_2395CD9B1, 3uLL, 0);
  v6[2] = v8;
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = sub_23942253C(byte_2395CD9B4, 0x100uLL, 0);
  v6[3] = v9;
  if (!v9)
  {
    goto LABEL_54;
  }

  v10 = sub_23942253C(byte_2395CDAB4, 0x80uLL, 0);
  v6[4] = v10;
  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = sub_23942253C(byte_2395CDB34, 0x80uLL, 0);
  v6[5] = v11;
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = sub_23942253C(byte_2395CDBB4, 0x80uLL, 0);
  v6[6] = v12;
  if (v12 && (v13 = sub_23942253C(byte_2395CDC34, 0x80uLL, 0), (v6[7] = v13) != 0) && (v14 = sub_23942253C(byte_2395CDCB4, 0x80uLL, 0), (v6[8] = v14) != 0))
  {
    *(v6 + 21) |= 8u;
    LODWORD(v69[0]) = 0;
    if (sub_23943FC94(672, &unk_2395CD671, 0x20uLL, __s1, v69, v6) && sub_239441FC0(byte_2395CD691, __s1, 0x100uLL, "RSA-sign KAT"))
    {
      if (sub_23943FF40(672, &unk_2395CD791, 0x20uLL, byte_2395CD7B1, 0x100uLL, v6))
      {
        sub_23943F100(v6);
        v15 = sub_239435F38(0);
        v16 = sub_23942253C(byte_2395CDE96, 0x20uLL, 0);
        v17 = sub_23942253C(byte_2395CDEB6, 0x20uLL, 0);
        v18 = sub_23942253C(byte_2395CDED6, 0x20uLL, 0);
        v19 = v18;
        if (!v15 || !v16 || !v17 || !v18 || (sub_239457D80(&stru_27DF76C98, sub_239433520), !sub_23943618C(v15, &qword_27DF782F0)) || !sub_23943666C(v15, v16, v17) || !sub_2394362AC(v15, v19))
        {
          sub_23943603C(v15);
          v15 = 0;
        }

        sub_239421EC8(v16);
        sub_239421EC8(v17);
        sub_239421EC8(v19);
        if (v15)
        {
          __s2 = 0uLL;
          *(&v52 + 7) = 0;
          *&v52 = 0;
          HIBYTE(v52) = 42;
          v20 = sub_239432C18(byte_2395CDD34, 0x20uLL, v15, &__s2, 0x20uLL);
          v21 = v20;
          if (v20 && sub_2394227EC(v69, 0x20uLL, *v20) && sub_2394227EC(v70, 0x20uLL, v21[1]) && sub_239441FC0(byte_2395CDD54, v69, 0x40uLL, "ECDSA-sign signature"))
          {
            sub_2394136CC(v21);
            v22 = sub_2394326F0();
            v21 = v22;
            if (v22 && sub_23942253C(byte_2395CDDB4, 0x20uLL, *v22) && sub_23942253C(byte_2395CDDD4, 0x20uLL, v21[1]))
            {
              if (sub_23943277C(byte_2395CDD94, 0x20uLL, v21, v15))
              {
                sub_239457D80(&stru_27DF76C98, sub_239433520);
                v23 = sub_2394345C0(&qword_27DF782F0);
                v24 = sub_2394345C0(&qword_27DF782F0);
                v25 = sub_23945004C(0x18uLL);
                v26 = v25;
                if (v25)
                {
                  v25[1] = 0;
                  v25[2] = 0;
                  *v25 = 0;
                  *(v25 + 5) = 1;
                  if (v23)
                  {
                    if (v24 && sub_2394367DC(&qword_27DF782F0, v23, byte_2395CDDF4, 65, 0) && sub_23942253C(byte_2395CDE35, 0x20uLL, v26) && sub_23943574C(&qword_27DF782F0, v24, 0, v23, v26, 0) && sub_239438578(&qword_27DF782F0, v24, 4, __s1, 0x41uLL) && sub_239441FC0(byte_2395CDE55, __s1, 0x41uLL, "Z Computation Result"))
                    {
                      sub_23943603C(v15);
                      sub_23943469C(v23);
                      sub_23943469C(v24);
                      sub_239421EC8(v26);
                      sub_2394136CC(v21);
                      v27 = sub_23945004C(0x18uLL);
                      v28 = v27;
                      if (v27)
                      {
                        v27[1] = 0;
                        v27[2] = 0;
                        *v27 = 0;
                        *(v27 + 5) = 1;
                        sub_23942224C(v27, &unk_2395CDEF8, 32);
                      }

                      v29 = sub_239430F28();
                      if (v29)
                      {
                        v30 = v29;
                        v31 = sub_23945004C(0x18uLL);
                        if (v31)
                        {
                          v32 = v31;
                          v31[1] = 0;
                          v31[2] = 0;
                          *v31 = 0;
                          *(v31 + 5) = 1;
                          sub_23942224C(v31, &unk_2395CE0F8, 4);
                          sub_239421EC8(*(v30 + 32));
                          *(v30 + 32) = v32;
                          if (v28 && ((sub_239422114(*v30) + 7) & 0xFFFFFFF8) == 0x800 && sub_2394309C0(__s1, v28, v30) == 256 && sub_239441FC0(byte_2395CDFF8, __s1, 0x100uLL, "FFC DH"))
                          {
                            v33 = 1;
LABEL_111:
                            sub_23943061C(v30);
                            sub_239421EC8(v28);
                            goto LABEL_57;
                          }

LABEL_110:
                          fwrite("FFDH failed.\n", 0xDuLL, 1uLL, *MEMORY[0x277D85DF8]);
                          v33 = 0;
                          goto LABEL_111;
                        }

                        sub_23943061C(v30);
                      }

                      v30 = 0;
                      goto LABEL_110;
                    }
                  }
                }

                fwrite("Z-computation KAT failed.\n", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
                goto LABEL_101;
              }
            }

            else
            {
              sub_2394136CC(v21);
              v21 = 0;
            }

            v39 = *v1;
            v40 = "ECDSA-verify KAT failed.\n";
            v41 = 25;
          }

          else
          {
            v39 = *v1;
            v40 = "ECDSA-sign KAT failed.\n";
            v41 = 23;
          }

          fwrite(v40, v41, 1uLL, v39);
          v23 = 0;
          v24 = 0;
          v26 = 0;
        }

        else
        {
          fwrite("ECDSA KeyGen failed\n", 0x14uLL, 1uLL, *v1);
          v23 = 0;
          v24 = 0;
          v26 = 0;
          v21 = 0;
        }

LABEL_101:
        sub_23943603C(v15);
        sub_23943469C(v23);
        sub_23943469C(v24);
        sub_239421EC8(v26);
        sub_2394136CC(v21);
        goto LABEL_56;
      }

      v36 = *v1;
      v37 = "RSA-verify KAT failed.\n";
      v38 = 23;
    }

    else
    {
      v36 = *v1;
      v37 = "RSA signing test failed.\n";
      v38 = 25;
    }

    fwrite(v37, v38, 1uLL, v36);
  }

  else
  {
LABEL_54:
    sub_23943F100(v6);
    fwrite("RSA key construction failed\n", 0x1CuLL, 1uLL, *v1);
    v6 = 0;
  }

  sub_23943F100(v6);
LABEL_56:
  v33 = 0;
LABEL_57:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_239443004(_OWORD *a1)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = xmmword_2395CAA30;
  a1[1] = 0u;
  *(a1 + 4) = -1009589776;
  return 1;
}

_DWORD *sub_239443030(unsigned int *__src, size_t __n, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v6 = xmmword_2395CAA30;
  v7 = -1009589776;
  sub_2394430E0(&v6, __src, __n);
  sub_2394431FC(a3, &v6);
  sub_239450194(&v6, 0x60uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_2394430E0(uint64_t a1, unsigned int *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = a1 + 28;
    v7 = *(a1 + 20) + 8 * __n;
    *(a1 + 20) = v7;
    v8 = *(a1 + 92);
    if (v8)
    {
      if (__n <= 0x3F && v8 + __n < 0x40)
      {
        memcpy((v6 + v8), __src, __n);
        *(a1 + 92) += v3;
        return 1;
      }

      v9 = 64 - v8;
      if (v8 != 64)
      {
        memcpy((v6 + v8), __src, 64 - v8);
      }

      sub_2394432DC(a1, v6, 1);
      v4 = (v4 + v9);
      v3 -= v9;
      *(a1 + 92) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
    }

    if (v3 >= 0x40)
    {
      sub_2394432DC(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 92) = v3;
      memcpy(v6, v4, v3);
    }
  }

  return 1;
}

uint64_t sub_2394431FC(_DWORD *a1, uint64_t a2)
{
  v4 = a2 + 28;
  v5 = *(a2 + 20);
  v6 = *(a2 + 92);
  *(a2 + 28 + v6) = 0x80;
  v7 = v6 + 1;
  if (v6 >= 0x38)
  {
    if (v6 != 63)
    {
      bzero((v4 + v7), 63 - v6);
    }

    sub_2394432DC(a2, v4, 1);
    v7 = 0;
    goto LABEL_6;
  }

  if (v6 != 55)
  {
LABEL_6:
    bzero((v4 + v7), 56 - v7);
  }

  *(a2 + 84) = vrev64_s32(vrev32_s8(v5));
  sub_2394432DC(a2, v4, 1);
  *(a2 + 92) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  sub_239444544(a1, a2);
  return 1;
}

uint64_t sub_2394432DC(int *a1, unsigned int *a2, uint64_t a3)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  do
  {
    v531 = v6;
    v532 = v5;
    v530 = v3;
    v527 = v7;
    v528 = v4;
    v533 = a2;
    v529 = a3;
    v8 = v7;
    HIDWORD(v10) = v7;
    LODWORD(v10) = v7;
    v9 = v10 >> 27;
    v11 = v3 & ~v5;
    v12 = bswap32(*a2);
    HIDWORD(v10) = v5;
    LODWORD(v10) = v5;
    v13 = v10 >> 2;
    v14 = v8 & __ROR4__(v5, 2);
    v15 = bswap32(a2[1]);
    v16 = v9 + v4 + 1518500249 + (v6 & v5 | v11) + v12;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v17 = v10 >> 27;
    HIDWORD(v10) = v8;
    LODWORD(v10) = v8;
    v18 = v10 >> 2;
    v19 = v16 & __ROR4__(v8, 2);
    v20 = v530 + 1518500249 + (v14 | v531 & ~v8) + v15 + v17;
    HIDWORD(v10) = v20;
    LODWORD(v10) = v20;
    v21 = v10 >> 27;
    HIDWORD(v10) = v16;
    LODWORD(v10) = v16;
    v22 = v10 >> 2;
    v23 = bswap32(a2[2]);
    v24 = bswap32(a2[3]);
    v26 = __PAIR64__(v20, __ROR4__(v16, 2));
    v25 = v20 & v26;
    LODWORD(v26) = v20;
    v27 = v26 >> 2;
    v28 = v531 + 1518500249 + v23 + (v19 | v13 & ~v16) + v21;
    v29 = a2[4];
    v30 = a2[5];
    HIDWORD(v26) = v28;
    LODWORD(v26) = v28;
    v31 = v26 >> 27;
    v33 = __PAIR64__(v28, __ROR4__(v20, 2));
    v32 = v28 & v33;
    v34 = bswap32(v29);
    LODWORD(v33) = v28;
    v35 = v33 >> 2;
    v36 = v24;
    v37 = v13 + 1518500249 + v24 + (v25 | v18 & ~v20) + v31;
    HIDWORD(v33) = v37;
    LODWORD(v33) = v37;
    v38 = v34;
    v39 = v18 + 1518500249 + v34 + (v32 | v22 & ~v28) + (v33 >> 27);
    HIDWORD(v33) = v39;
    LODWORD(v33) = v39;
    v40 = v33 >> 27;
    v42 = __PAIR64__(v37, __ROR4__(v28, 2));
    v41 = v37 & v42;
    LODWORD(v42) = v37;
    v43 = v42 >> 2;
    v45 = __PAIR64__(v39, __ROR4__(v37, 2));
    v44 = v39 & v45;
    v46 = bswap32(v30);
    v47 = v41 | v27 & ~v37;
    LODWORD(v45) = v39;
    v48 = v45 >> 2;
    v49 = v22 + v46 + 1518500249 + v47 + v40;
    HIDWORD(v45) = v49;
    LODWORD(v45) = v49;
    v50 = v45 >> 27;
    v519 = bswap32(v533[6]);
    HIDWORD(v45) = v49;
    LODWORD(v45) = v49;
    v51 = v45 >> 2;
    v52 = v27 + v519 + 1518500249 + (v44 | v35 & ~v39) + v50;
    HIDWORD(v45) = v52;
    LODWORD(v45) = v52;
    v53 = v45 >> 27;
    v54 = __PAIR64__(v52, __ROR4__(v39, 2));
    v523 = bswap32(v533[7]);
    v55 = v49 & v54 | v43 & ~v49;
    LODWORD(v54) = v52;
    v56 = v54 >> 2;
    v57 = v523 + 1518500249 + v35 + v55 + v53;
    HIDWORD(v54) = v57;
    LODWORD(v54) = v57;
    v58 = v54 >> 27;
    v60 = __PAIR64__(v57, __ROR4__(v52, 2));
    v59 = v57 & v60;
    LODWORD(v60) = v57;
    v61 = v60 >> 2;
    v515 = bswap32(v533[8]);
    v62 = v515 + 1518500249 + v43 + (v52 & __ROR4__(v49, 2) | v48 & ~v52) + v58;
    v63 = bswap32(v533[13]);
    HIDWORD(v60) = v62;
    LODWORD(v60) = v62;
    v64 = v60 >> 27;
    v65 = v23 ^ v12 ^ v515 ^ v63;
    HIDWORD(v60) = v65;
    LODWORD(v60) = v65;
    v66 = v60 >> 31;
    v68 = __PAIR64__(v62, __ROR4__(v57, 2));
    v67 = v62 & v68;
    v69 = bswap32(v533[9]);
    LODWORD(v68) = v62;
    v70 = v68 >> 2;
    v71 = v69 + 1518500249 + v48 + (v59 | v51 & ~v57) + v64;
    HIDWORD(v68) = v71;
    LODWORD(v68) = v71;
    v72 = v68 >> 27;
    v73 = bswap32(v533[10]);
    HIDWORD(v68) = v71;
    LODWORD(v68) = v71;
    v74 = v68 >> 2;
    v75 = v73 + 1518500249 + v51 + (v67 | v56 & ~v62) + v72;
    HIDWORD(v68) = v75;
    LODWORD(v68) = v75;
    v76 = v68 >> 27;
    v77 = __PAIR64__(v75, __ROR4__(v62, 2));
    v78 = bswap32(v533[11]);
    v79 = v71 & v77 | v61 & ~v71;
    LODWORD(v77) = v75;
    v80 = v77 >> 2;
    v81 = v78 + 1518500249 + v56 + v79 + v76;
    HIDWORD(v77) = v81;
    LODWORD(v77) = v81;
    v82 = v77 >> 27;
    v83 = __PAIR64__(v81, __ROR4__(v71, 2));
    v84 = bswap32(v533[12]);
    v85 = v75 & v83 | v70 & ~v75;
    LODWORD(v83) = v81;
    v86 = v83 >> 2;
    v87 = v84 + 1518500249 + v61 + v85 + v82;
    HIDWORD(v83) = v87;
    LODWORD(v83) = v87;
    v88 = v83 >> 27;
    v89 = bswap32(v533[14]);
    v91 = __PAIR64__(v87, __ROR4__(v81, 2));
    v90 = v87 & v91;
    v489 = v63;
    v92 = v63 + 1518500249 + v70 + (v81 & __ROR4__(v75, 2) | v74 & ~v81);
    LODWORD(v91) = v87;
    v93 = v91 >> 2;
    v94 = v92 + v88;
    HIDWORD(v91) = v92 + v88;
    LODWORD(v91) = v92 + v88;
    v95 = v91 >> 27;
    HIDWORD(v91) = v36 ^ v15 ^ v69 ^ v89;
    LODWORD(v91) = HIDWORD(v91);
    v96 = v91 >> 31;
    v97 = HIDWORD(v91);
    HIDWORD(v91) = v94;
    LODWORD(v91) = v94;
    v98 = v91 >> 2;
    v99 = v89 + 1518500249 + v74 + (v90 | v80 & ~v87) + v95;
    HIDWORD(v91) = v99;
    LODWORD(v91) = v99;
    v100 = v91 >> 27;
    v101 = bswap32(v533[15]);
    v102 = v38;
    v103 = v38 ^ v23 ^ v73 ^ v101;
    v105 = __PAIR64__(v103, __ROR4__(v94, 2));
    v104 = v99 & v105;
    LODWORD(v105) = v103;
    v505 = v105 >> 31;
    v486 = v103;
    v106 = v94 & __ROR4__(v87, 2) | v86 & ~v94;
    HIDWORD(v105) = v99;
    LODWORD(v105) = v99;
    v107 = v105 >> 2;
    v108 = v101 + 1518500249 + v80 + v106 + v100;
    HIDWORD(v105) = v108;
    LODWORD(v105) = v108;
    v109 = v105 >> 27;
    v111 = __PAIR64__(v108, __ROR4__(v99, 2));
    v110 = v108 & v111;
    v112 = v66 + 1518500249;
    LODWORD(v111) = v108;
    v113 = v111 >> 2;
    v114 = v112 + v86 + (v104 | v93 & ~v99) + v109;
    HIDWORD(v111) = v114;
    LODWORD(v111) = v114;
    v115 = v111 >> 27;
    LODWORD(v111) = v46 ^ v36 ^ v78 ^ __ROR4__(v65, 31);
    HIDWORD(v111) = v111;
    v492 = v111 >> 31;
    v116 = v111;
    v117 = v114 & __ROR4__(v108, 2);
    v119 = __PAIR64__(v114, __ROR4__(v97, 31));
    v118 = v519 ^ v102 ^ v84 ^ v119;
    LODWORD(v119) = v114;
    v120 = v119 >> 2;
    v121 = v96 + 1518500249 + v93 + (v110 | v98 & ~v108) + v115;
    HIDWORD(v119) = v121;
    LODWORD(v119) = v121;
    v122 = v119 >> 27;
    HIDWORD(v119) = v118;
    LODWORD(v119) = v118;
    v509 = v119 >> 31;
    v123 = v523 ^ v46 ^ v63 ^ __ROR4__(v103, 31);
    v125 = __PAIR64__(v121, __ROR4__(v114, 2));
    v124 = v121 & v125;
    LODWORD(v125) = v121;
    v126 = v125 >> 2;
    HIDWORD(v125) = v123;
    LODWORD(v125) = v123;
    v502 = v125 >> 31;
    v127 = v505 + 1518500249 + v98 + (v117 | v107 & ~v114) + v122;
    HIDWORD(v125) = v127;
    LODWORD(v125) = v127;
    v128 = v125 >> 27;
    HIDWORD(v125) = v127;
    LODWORD(v125) = v127;
    v129 = v125 >> 2;
    v130 = v492 + 1518500249 + v107 + (v124 | v113 & ~v121) + v128;
    HIDWORD(v125) = v130;
    LODWORD(v125) = v130;
    v131 = v125 >> 27;
    HIDWORD(v125) = v130;
    LODWORD(v125) = v130;
    v132 = v125 >> 2;
    LODWORD(v125) = v515 ^ v519 ^ v89 ^ __ROR4__(v116, 31);
    v133 = v125;
    HIDWORD(v125) = v125;
    v483 = v125 >> 31;
    v134 = v509 + 1859775393 + v113 + (v126 ^ __ROR4__(v114, 2) ^ v127) + v131;
    HIDWORD(v125) = v134;
    LODWORD(v125) = v134;
    v135 = v125 >> 27;
    v137 = __PAIR64__(v134, __ROR4__(v118, 31));
    v136 = v69 ^ v523 ^ v101 ^ v137;
    LODWORD(v137) = v134;
    v138 = v137 >> 2;
    v139 = v502 + 1859775393 + v120 + (v129 ^ __ROR4__(v121, 2) ^ v130) + v135;
    HIDWORD(v137) = v139;
    LODWORD(v137) = v139;
    v140 = v137 >> 27;
    HIDWORD(v137) = v136;
    LODWORD(v137) = v136;
    v479 = v137 >> 31;
    v141 = v73;
    v142 = v65;
    v143 = v73 ^ v515 ^ __ROR4__(v65, 31) ^ __ROR4__(v123, 31);
    v144 = v483 + 1859775393 + v126 + (v132 ^ __ROR4__(v127, 2) ^ v134) + v140;
    HIDWORD(v137) = v144;
    LODWORD(v137) = v144;
    v145 = v137 >> 27;
    HIDWORD(v137) = v143;
    LODWORD(v137) = v143;
    v146 = v137 >> 31;
    v147 = v479 + 1859775393 + v129 + (v138 ^ __ROR4__(v130, 2) ^ v139) + v145;
    HIDWORD(v137) = v139;
    LODWORD(v137) = v139;
    v148 = v137 >> 2;
    v149 = __PAIR64__(v147, __ROR4__(v134, 2));
    v150 = v146 + 1859775393 + v132 + (v148 ^ v149 ^ v144);
    LODWORD(v149) = v147;
    v151 = v78 ^ v69 ^ __ROR4__(v97, 31);
    v152 = v97;
    v154 = v150 + (v149 >> 27);
    LODWORD(v149) = v151 ^ __ROR4__(v133, 31);
    v153 = v149;
    HIDWORD(v149) = v149;
    v520 = v149 >> 31;
    v155 = v520 + 1859775393 + v138;
    HIDWORD(v149) = v144;
    LODWORD(v149) = v144;
    v156 = v149 >> 2;
    v157 = __PAIR64__(v154, __ROR4__(v139, 2));
    v158 = v155 + (v156 ^ v157 ^ v147);
    LODWORD(v157) = v154;
    v159 = v158 + (v157 >> 27);
    LODWORD(v157) = v84 ^ v141 ^ __ROR4__(v486, 31) ^ __ROR4__(v136, 31);
    v160 = v157;
    HIDWORD(v157) = v157;
    v161 = v157 >> 31;
    HIDWORD(v157) = v147;
    LODWORD(v157) = v147;
    v162 = v157 >> 2;
    v163 = __PAIR64__(v159, __ROR4__(v144, 2));
    v164 = v161 + 1859775393 + v148 + (v162 ^ v163 ^ v154);
    LODWORD(v163) = v159;
    v165 = v164 + (v163 >> 27);
    v166 = v116;
    LODWORD(v163) = v489 ^ v78 ^ __ROR4__(v116, 31) ^ __ROR4__(v143, 31);
    v167 = v163;
    HIDWORD(v163) = v163;
    v499 = v163 >> 31;
    HIDWORD(v163) = v154;
    LODWORD(v163) = v154;
    v168 = v163 >> 2;
    v169 = __PAIR64__(v165, __ROR4__(v147, 2));
    v170 = v499 + 1859775393 + v156 + (v168 ^ v169 ^ v159);
    LODWORD(v169) = v165;
    v171 = v170 + (v169 >> 27);
    LODWORD(v169) = v89 ^ v84 ^ __ROR4__(v118, 31) ^ __ROR4__(v153, 31);
    v172 = v169;
    HIDWORD(v169) = v169;
    v516 = v169 >> 31;
    v173 = v516 + 1859775393 + v162;
    HIDWORD(v169) = v159;
    LODWORD(v169) = v159;
    v174 = v169 >> 2;
    v175 = __PAIR64__(v171, __ROR4__(v154, 2));
    v176 = v173 + (v174 ^ v175 ^ v165);
    LODWORD(v175) = v171;
    v177 = v176 + (v175 >> 27);
    LODWORD(v175) = v101 ^ v489 ^ __ROR4__(v123, 31) ^ __ROR4__(v160, 31);
    v178 = v175;
    HIDWORD(v175) = v175;
    v524 = v175 >> 31;
    HIDWORD(v175) = v165;
    LODWORD(v175) = v165;
    v179 = v175 >> 2;
    v180 = __PAIR64__(v177, __ROR4__(v159, 2));
    v181 = v524 + 1859775393 + v168 + (v179 ^ v180 ^ v171);
    LODWORD(v180) = v177;
    v182 = v181 + (v180 >> 27);
    LODWORD(v180) = v89 ^ __ROR4__(v142, 31) ^ __ROR4__(v133, 31) ^ __ROR4__(v167, 31);
    v183 = v180;
    HIDWORD(v180) = v180;
    v512 = v180 >> 31;
    HIDWORD(v180) = v171;
    LODWORD(v180) = v171;
    v184 = v180 >> 2;
    v185 = __PAIR64__(v182, __ROR4__(v165, 2));
    v186 = v512 + 1859775393 + v174 + (v184 ^ v185 ^ v177);
    LODWORD(v185) = v182;
    v187 = v186 + (v185 >> 27);
    LODWORD(v185) = v101 ^ __ROR4__(v152, 31) ^ __ROR4__(v136, 31) ^ __ROR4__(v172, 31);
    v188 = v185;
    HIDWORD(v185) = v185;
    v496 = v185 >> 31;
    v189 = v496 + 1859775393 + v179;
    HIDWORD(v185) = v177;
    LODWORD(v185) = v177;
    v190 = v185 >> 2;
    v191 = __PAIR64__(v187, __ROR4__(v171, 2));
    v192 = v189 + (v190 ^ v191 ^ v182);
    LODWORD(v191) = v187;
    v193 = v192 + (v191 >> 27);
    LODWORD(v191) = v505 ^ __ROR4__(v142, 31) ^ __ROR4__(v143, 31) ^ __ROR4__(v178, 31);
    v194 = v191;
    HIDWORD(v191) = v191;
    v506 = v191 >> 31;
    HIDWORD(v191) = v182;
    LODWORD(v191) = v182;
    v195 = v191 >> 2;
    v196 = __PAIR64__(v193, __ROR4__(v177, 2));
    v197 = v506 + 1859775393 + v184 + (v195 ^ v196 ^ v187);
    LODWORD(v196) = v193;
    v198 = v197 + (v196 >> 27);
    LODWORD(v196) = v492 ^ __ROR4__(v152, 31) ^ __ROR4__(v153, 31) ^ __ROR4__(v183, 31);
    v199 = v196;
    HIDWORD(v196) = v196;
    v493 = v196 >> 31;
    v200 = v493 + 1859775393 + v190;
    HIDWORD(v196) = v187;
    LODWORD(v196) = v187;
    v201 = v196 >> 2;
    v202 = __PAIR64__(v198, __ROR4__(v182, 2));
    v203 = v200 + (v201 ^ v202 ^ v193);
    LODWORD(v202) = v198;
    v204 = v203 + (v202 >> 27);
    LODWORD(v202) = v509 ^ __ROR4__(v486, 31) ^ __ROR4__(v160, 31) ^ __ROR4__(v188, 31);
    v205 = v202;
    HIDWORD(v202) = v202;
    v490 = v202 >> 31;
    HIDWORD(v202) = v193;
    LODWORD(v202) = v193;
    v206 = v202 >> 2;
    v207 = __PAIR64__(v204, __ROR4__(v187, 2));
    v208 = v490 + 1859775393 + v195 + (v206 ^ v207 ^ v198);
    LODWORD(v207) = v204;
    v209 = v208 + (v207 >> 27);
    LODWORD(v207) = v502 ^ __ROR4__(v166, 31) ^ __ROR4__(v167, 31) ^ __ROR4__(v194, 31);
    v210 = v207;
    HIDWORD(v207) = v207;
    v487 = v207 >> 31;
    v211 = v487 + 1859775393 + v201;
    HIDWORD(v207) = v198;
    LODWORD(v207) = v198;
    v212 = v207 >> 2;
    v213 = __PAIR64__(v209, __ROR4__(v193, 2));
    v214 = v211 + (v212 ^ v213 ^ v204);
    LODWORD(v213) = v209;
    v215 = v214 + (v213 >> 27);
    LODWORD(v213) = v483 ^ __ROR4__(v118, 31) ^ __ROR4__(v172, 31) ^ __ROR4__(v199, 31);
    v216 = v213;
    HIDWORD(v213) = v213;
    v481 = v213 >> 31;
    v217 = v481 + 1859775393 + v206;
    HIDWORD(v213) = v204;
    LODWORD(v213) = v204;
    v218 = v213 >> 2;
    v219 = __PAIR64__(v215, __ROR4__(v198, 2));
    v220 = v217 + (v218 ^ v219 ^ v209);
    LODWORD(v219) = v215;
    v221 = v220 + (v219 >> 27);
    LODWORD(v219) = v479 ^ __ROR4__(v123, 31) ^ __ROR4__(v178, 31) ^ __ROR4__(v205, 31);
    HIDWORD(v219) = v219;
    v484 = v219 >> 31;
    v222 = v219;
    HIDWORD(v219) = v209;
    LODWORD(v219) = v209;
    v223 = v219 >> 2;
    v224 = __PAIR64__(v221, __ROR4__(v204, 2));
    v225 = v484 + 1859775393 + v212 + (v223 ^ v224 ^ v215);
    LODWORD(v224) = v221;
    v226 = v225 + (v224 >> 27);
    LODWORD(v224) = v146 ^ __ROR4__(v133, 31) ^ __ROR4__(v183, 31) ^ __ROR4__(v210, 31);
    v227 = v224;
    HIDWORD(v224) = v224;
    v510 = v224 >> 31;
    v228 = v510 + 1859775393 + v218;
    HIDWORD(v224) = v215;
    LODWORD(v224) = v215;
    v229 = v224 >> 2;
    v230 = __PAIR64__(v226, __ROR4__(v209, 2));
    v231 = v228 + (v229 ^ v230 ^ v221);
    LODWORD(v230) = v226;
    v232 = v231 + (v230 >> 27);
    LODWORD(v230) = v520 ^ __ROR4__(v136, 31) ^ __ROR4__(v188, 31) ^ __ROR4__(v216, 31);
    HIDWORD(v230) = v230;
    v521 = v230 >> 31;
    v233 = v230;
    v234 = v521 + 1859775393 + v223;
    HIDWORD(v230) = v221;
    LODWORD(v230) = v221;
    v235 = v230 >> 2;
    v236 = __PAIR64__(v232, __ROR4__(v215, 2));
    v237 = v234 + (v235 ^ v236 ^ v226);
    LODWORD(v236) = v232;
    v238 = v237 + (v236 >> 27);
    LODWORD(v236) = v161 ^ __ROR4__(v143, 31) ^ __ROR4__(v194, 31) ^ __ROR4__(v222, 31);
    v239 = v236;
    HIDWORD(v236) = v236;
    v503 = v236 >> 31;
    HIDWORD(v236) = v238;
    LODWORD(v236) = v238;
    v240 = v503 - 1894007588 + v229 + ((v232 | __ROR4__(v226, 2)) & __ROR4__(v221, 2) | v232 & __ROR4__(v226, 2)) + (v236 >> 27);
    v241 = v499 ^ __ROR4__(v153, 31) ^ __ROR4__(v199, 31);
    v242 = v227;
    LODWORD(v236) = v241 ^ __ROR4__(v227, 31);
    HIDWORD(v236) = v236;
    v500 = v236 >> 31;
    v243 = v236;
    HIDWORD(v236) = v240;
    LODWORD(v236) = v240;
    v244 = v500 - 1894007588 + v235 + ((v238 | __ROR4__(v232, 2)) & __ROR4__(v226, 2) | v238 & __ROR4__(v232, 2)) + (v236 >> 27);
    v246 = __PAIR64__(v226, __ROR4__(v160, 31));
    v245 = v516 ^ v246;
    LODWORD(v246) = v226;
    v247 = v246 >> 2;
    v249 = v233;
    LODWORD(v246) = v245 ^ __ROR4__(v205, 31) ^ __ROR4__(v233, 31);
    v248 = v246;
    HIDWORD(v246) = v246;
    v517 = v246 >> 31;
    v251 = __PAIR64__(v244, __ROR4__(v167, 31));
    v250 = v524 ^ v251;
    LODWORD(v251) = v244;
    v252 = v517 - 1894007588 + v247 + ((v240 | __ROR4__(v238, 2)) & __ROR4__(v232, 2) | v240 & __ROR4__(v238, 2)) + (v251 >> 27);
    HIDWORD(v251) = v232;
    LODWORD(v251) = v232;
    v253 = v251 >> 2;
    LODWORD(v251) = v250 ^ __ROR4__(v210, 31) ^ __ROR4__(v239, 31);
    v254 = v251;
    HIDWORD(v251) = v251;
    v525 = v251 >> 31;
    v255 = __PAIR64__(v252, __ROR4__(v240, 2));
    v256 = v525 - 1894007588 + v253 + ((v244 | __ROR4__(v240, 2)) & __ROR4__(v238, 2) | v244 & v255);
    LODWORD(v255) = v252;
    v257 = v256 + (v255 >> 27);
    v259 = __PAIR64__(v238, __ROR4__(v216, 31));
    v258 = v512 ^ __ROR4__(v172, 31) ^ v259;
    LODWORD(v259) = v238;
    v260 = v259 >> 2;
    LODWORD(v259) = v258 ^ __ROR4__(v243, 31);
    v261 = v259;
    HIDWORD(v259) = v259;
    v513 = v259 >> 31;
    HIDWORD(v259) = v257;
    LODWORD(v259) = v257;
    v262 = v513 - 1894007588 + v260 + ((v252 | __ROR4__(v244, 2)) & __ROR4__(v240, 2) | v252 & __ROR4__(v244, 2)) + (v259 >> 27);
    v264 = __PAIR64__(v240, __ROR4__(v248, 31));
    v263 = v496 ^ __ROR4__(v178, 31) ^ __ROR4__(v222, 31) ^ v264;
    LODWORD(v264) = v240;
    v265 = v264 >> 2;
    HIDWORD(v264) = v263;
    LODWORD(v264) = v263;
    v497 = v264 >> 31;
    HIDWORD(v264) = v262;
    LODWORD(v264) = v262;
    v266 = v497 - 1894007588 + v265 + ((v257 | __ROR4__(v252, 2)) & __ROR4__(v244, 2) | v257 & __ROR4__(v252, 2)) + (v264 >> 27);
    v268 = __PAIR64__(v244, __ROR4__(v242, 31));
    v267 = v506 ^ __ROR4__(v183, 31) ^ v268;
    LODWORD(v268) = v244;
    v269 = v268 >> 2;
    v270 = v267 ^ __ROR4__(v254, 31);
    v272 = __PAIR64__(v270, __ROR4__(v252, 2));
    v271 = (v262 | __ROR4__(v257, 2)) & v272;
    LODWORD(v272) = v270;
    v507 = v272 >> 31;
    v273 = __PAIR64__(v266, __ROR4__(v257, 2));
    v274 = v507 - 1894007588 + v269 + (v271 | v262 & v273);
    LODWORD(v273) = v266;
    v275 = v274 + (v273 >> 27);
    v276 = __PAIR64__(v252, __ROR4__(v262, 2));
    v277 = (v266 | __ROR4__(v262, 2)) & __ROR4__(v257, 2) | v266 & v276;
    LODWORD(v276) = v252;
    v278 = v276 >> 2;
    LODWORD(v276) = v493 ^ __ROR4__(v188, 31) ^ __ROR4__(v233, 31) ^ __ROR4__(v261, 31);
    v279 = v276;
    HIDWORD(v276) = v276;
    v494 = v276 >> 31;
    HIDWORD(v276) = v275;
    LODWORD(v276) = v275;
    v280 = v494 - 1894007588 + v278 + v277 + (v276 >> 27);
    v282 = __PAIR64__(v257, __ROR4__(v194, 31));
    v281 = v490 ^ v282;
    LODWORD(v282) = v257;
    v283 = v282 >> 2;
    LODWORD(v282) = v281 ^ __ROR4__(v239, 31) ^ __ROR4__(v263, 31);
    v284 = v282;
    HIDWORD(v282) = v282;
    v491 = v282 >> 31;
    v285 = v491 - 1894007588 + v283 + ((v275 | __ROR4__(v266, 2)) & __ROR4__(v262, 2) | v275 & __ROR4__(v266, 2));
    v287 = __PAIR64__(v280, __ROR4__(v199, 31));
    v286 = v487 ^ v287;
    LODWORD(v287) = v280;
    v288 = v285 + (v287 >> 27);
    HIDWORD(v287) = v262;
    LODWORD(v287) = v262;
    v289 = v287 >> 2;
    v290 = v243;
    LODWORD(v287) = v286 ^ __ROR4__(v243, 31) ^ __ROR4__(v270, 31);
    v291 = v287;
    HIDWORD(v287) = v287;
    v488 = v287 >> 31;
    v292 = __PAIR64__(v288, __ROR4__(v275, 2));
    v293 = v488 - 1894007588 + v289 + ((v280 | __ROR4__(v275, 2)) & __ROR4__(v266, 2) | v280 & v292);
    LODWORD(v292) = v288;
    v294 = v293 + (v292 >> 27);
    v296 = __PAIR64__(v266, __ROR4__(v248, 31));
    v295 = v481 ^ __ROR4__(v205, 31) ^ v296;
    LODWORD(v296) = v266;
    v297 = v296 >> 2;
    LODWORD(v296) = v295 ^ __ROR4__(v279, 31);
    v298 = v296;
    HIDWORD(v296) = v296;
    v482 = v296 >> 31;
    HIDWORD(v296) = v294;
    LODWORD(v296) = v294;
    v299 = v482 - 1894007588 + v297 + ((v288 | __ROR4__(v280, 2)) & __ROR4__(v275, 2) | v288 & __ROR4__(v280, 2)) + (v296 >> 27);
    v301 = __PAIR64__(v275, __ROR4__(v284, 31));
    v300 = v484 ^ __ROR4__(v210, 31) ^ __ROR4__(v254, 31) ^ v301;
    LODWORD(v301) = v275;
    v302 = v301 >> 2;
    HIDWORD(v301) = v300;
    LODWORD(v301) = v300;
    v485 = v301 >> 31;
    HIDWORD(v301) = v299;
    LODWORD(v301) = v299;
    v303 = v485 - 1894007588 + v302 + ((v294 | __ROR4__(v288, 2)) & __ROR4__(v280, 2) | v294 & __ROR4__(v288, 2)) + (v301 >> 27);
    v305 = __PAIR64__(v280, __ROR4__(v261, 31));
    v304 = v510 ^ __ROR4__(v216, 31) ^ v305;
    LODWORD(v305) = v280;
    v306 = v305 >> 2;
    v307 = v304 ^ __ROR4__(v291, 31);
    v309 = __PAIR64__(v307, __ROR4__(v288, 2));
    v308 = (v299 | __ROR4__(v294, 2)) & v309;
    LODWORD(v309) = v307;
    v511 = v309 >> 31;
    v310 = __PAIR64__(v303, __ROR4__(v294, 2));
    v311 = v511 - 1894007588 + v306 + (v308 | v299 & v310);
    LODWORD(v310) = v303;
    v312 = v311 + (v310 >> 27);
    v313 = __PAIR64__(v288, __ROR4__(v299, 2));
    v314 = (v303 | __ROR4__(v299, 2)) & __ROR4__(v294, 2) | v303 & v313;
    LODWORD(v313) = v288;
    v315 = v313 >> 2;
    LODWORD(v313) = v521 ^ __ROR4__(v222, 31) ^ __ROR4__(v263, 31) ^ __ROR4__(v298, 31);
    v316 = v313;
    HIDWORD(v313) = v313;
    v522 = v313 >> 31;
    HIDWORD(v313) = v312;
    LODWORD(v313) = v312;
    v317 = v522 - 1894007588 + v315 + v314 + (v313 >> 27);
    v319 = __PAIR64__(v294, __ROR4__(v242, 31));
    v318 = v503 ^ v319;
    LODWORD(v319) = v294;
    v320 = v319 >> 2;
    LODWORD(v319) = v318 ^ __ROR4__(v270, 31) ^ __ROR4__(v300, 31);
    v321 = v319;
    HIDWORD(v319) = v319;
    v504 = v319 >> 31;
    v322 = v504 - 1894007588 + v320 + ((v312 | __ROR4__(v303, 2)) & __ROR4__(v299, 2) | v312 & __ROR4__(v303, 2));
    v324 = __PAIR64__(v317, __ROR4__(v249, 31));
    v323 = v500 ^ v324;
    LODWORD(v324) = v317;
    v325 = v322 + (v324 >> 27);
    HIDWORD(v324) = v299;
    LODWORD(v324) = v299;
    v326 = v324 >> 2;
    LODWORD(v324) = v323 ^ __ROR4__(v279, 31) ^ __ROR4__(v307, 31);
    v327 = v324;
    HIDWORD(v324) = v324;
    v501 = v324 >> 31;
    v328 = __PAIR64__(v325, __ROR4__(v312, 2));
    v329 = v501 - 1894007588 + v326 + ((v317 | __ROR4__(v312, 2)) & __ROR4__(v303, 2) | v317 & v328);
    LODWORD(v328) = v325;
    v330 = v329 + (v328 >> 27);
    v332 = __PAIR64__(v303, __ROR4__(v284, 31));
    v331 = v517 ^ __ROR4__(v239, 31) ^ v332;
    LODWORD(v332) = v303;
    v333 = v332 >> 2;
    LODWORD(v332) = v331 ^ __ROR4__(v316, 31);
    v334 = v332;
    HIDWORD(v332) = v332;
    v518 = v332 >> 31;
    HIDWORD(v332) = v330;
    LODWORD(v332) = v330;
    v335 = v518 - 1894007588 + v333 + ((v325 | __ROR4__(v317, 2)) & __ROR4__(v312, 2) | v325 & __ROR4__(v317, 2)) + (v332 >> 27);
    v337 = __PAIR64__(v312, __ROR4__(v321, 31));
    v336 = v525 ^ __ROR4__(v290, 31) ^ __ROR4__(v291, 31) ^ v337;
    LODWORD(v337) = v312;
    v338 = v337 >> 2;
    HIDWORD(v337) = v336;
    LODWORD(v337) = v336;
    v526 = v337 >> 31;
    HIDWORD(v337) = v335;
    LODWORD(v337) = v335;
    v339 = v526 - 1894007588 + v338 + ((v330 | __ROR4__(v325, 2)) & __ROR4__(v317, 2) | v330 & __ROR4__(v325, 2)) + (v337 >> 27);
    v341 = __PAIR64__(v317, __ROR4__(v298, 31));
    v340 = v513 ^ __ROR4__(v248, 31) ^ v341;
    LODWORD(v341) = v317;
    v342 = v341 >> 2;
    v343 = v340 ^ __ROR4__(v327, 31);
    v345 = __PAIR64__(v343, __ROR4__(v325, 2));
    v344 = (v335 | __ROR4__(v330, 2)) & v345;
    LODWORD(v345) = v343;
    v480 = v345 >> 31;
    v346 = __PAIR64__(v339, __ROR4__(v330, 2));
    v347 = v480 - 1894007588 + v342 + (v344 | v335 & v346);
    LODWORD(v346) = v339;
    v348 = v347 + (v346 >> 27);
    v349 = __PAIR64__(v325, __ROR4__(v335, 2));
    v350 = (v339 | __ROR4__(v335, 2)) & __ROR4__(v330, 2) | v339 & v349;
    LODWORD(v349) = v325;
    v351 = v349 >> 2;
    LODWORD(v349) = v497 ^ __ROR4__(v254, 31) ^ __ROR4__(v300, 31) ^ __ROR4__(v334, 31);
    v352 = v349;
    HIDWORD(v349) = v349;
    v353 = v349 >> 31;
    v354 = v353 - 1894007588 + v351 + v350;
    v356 = __PAIR64__(v330, __ROR4__(v261, 31));
    v355 = v507 ^ v356;
    LODWORD(v356) = v330;
    v357 = v356 >> 2;
    LODWORD(v356) = v355 ^ __ROR4__(v307, 31) ^ __ROR4__(v336, 31);
    v358 = v356;
    HIDWORD(v356) = v356;
    v498 = v356 >> 31;
    HIDWORD(v356) = v348;
    LODWORD(v356) = v348;
    v359 = v354 + (v356 >> 27);
    result = 3395469782;
    HIDWORD(v356) = v339;
    LODWORD(v356) = v339;
    v361 = v356 >> 2;
    v362 = v498 - 899497514 + v357 + (v361 ^ __ROR4__(v335, 2) ^ v348);
    v364 = __PAIR64__(v359, __ROR4__(v263, 31));
    v363 = v494 ^ v364;
    LODWORD(v364) = v359;
    v365 = v362 + (v364 >> 27);
    HIDWORD(v364) = v335;
    LODWORD(v364) = v335;
    v366 = v364 >> 2;
    LODWORD(v364) = v363 ^ __ROR4__(v316, 31) ^ __ROR4__(v343, 31);
    v367 = v364;
    HIDWORD(v364) = v364;
    v495 = v364 >> 31;
    HIDWORD(v364) = v348;
    LODWORD(v364) = v348;
    v368 = v364 >> 2;
    v369 = __PAIR64__(v365, __ROR4__(v339, 2));
    v370 = v495 - 899497514 + v366 + (v368 ^ v369 ^ v359);
    LODWORD(v369) = v365;
    v371 = v370 + (v369 >> 27);
    LODWORD(v369) = v491 ^ __ROR4__(v270, 31) ^ __ROR4__(v321, 31) ^ __ROR4__(v352, 31);
    v372 = v369;
    HIDWORD(v369) = v369;
    v373 = v369 >> 31;
    HIDWORD(v369) = v359;
    LODWORD(v369) = v359;
    v374 = v369 >> 2;
    v375 = __PAIR64__(v371, __ROR4__(v348, 2));
    v376 = v373 - 899497514 + v361 + (v374 ^ v375 ^ v365);
    LODWORD(v375) = v371;
    v377 = v376 + (v375 >> 27);
    LODWORD(v375) = v488 ^ __ROR4__(v279, 31) ^ __ROR4__(v327, 31) ^ __ROR4__(v358, 31);
    v378 = v375;
    HIDWORD(v375) = v375;
    v508 = v375 >> 31;
    v379 = v508 - 899497514 + v368;
    HIDWORD(v375) = v365;
    LODWORD(v375) = v365;
    v380 = v375 >> 2;
    v381 = __PAIR64__(v377, __ROR4__(v359, 2));
    v382 = v379 + (v380 ^ v381 ^ v371);
    LODWORD(v381) = v377;
    v383 = v382 + (v381 >> 27);
    LODWORD(v381) = v482 ^ __ROR4__(v284, 31) ^ __ROR4__(v334, 31) ^ __ROR4__(v367, 31);
    v384 = v381;
    HIDWORD(v381) = v381;
    v385 = v381 >> 31;
    HIDWORD(v381) = v371;
    LODWORD(v381) = v371;
    v386 = v381 >> 2;
    v387 = __PAIR64__(v383, __ROR4__(v365, 2));
    v388 = v385 - 899497514 + v374 + (v386 ^ v387 ^ v377);
    LODWORD(v387) = v383;
    v389 = v388 + (v387 >> 27);
    LODWORD(v387) = v485 ^ __ROR4__(v291, 31) ^ __ROR4__(v336, 31) ^ __ROR4__(v372, 31);
    v390 = v387;
    HIDWORD(v387) = v387;
    v514 = v387 >> 31;
    HIDWORD(v387) = v377;
    LODWORD(v387) = v377;
    v391 = v387 >> 2;
    v392 = __PAIR64__(v389, __ROR4__(v371, 2));
    v393 = v514 - 899497514 + v380 + (v391 ^ v392 ^ v383);
    LODWORD(v392) = v389;
    v394 = v393 + (v392 >> 27);
    LODWORD(v392) = v511 ^ __ROR4__(v298, 31) ^ __ROR4__(v343, 31) ^ __ROR4__(v378, 31);
    v395 = v392;
    HIDWORD(v392) = v392;
    v396 = (v392 >> 31) - 899497514;
    HIDWORD(v392) = v383;
    LODWORD(v392) = v383;
    v397 = v392 >> 2;
    v398 = __PAIR64__(v394, __ROR4__(v377, 2));
    v399 = v396 + v386 + (v397 ^ v398 ^ v389);
    LODWORD(v398) = v394;
    v400 = v399 + (v398 >> 27);
    LODWORD(v398) = v522 ^ __ROR4__(v300, 31) ^ __ROR4__(v352, 31) ^ __ROR4__(v384, 31);
    v401 = v398;
    HIDWORD(v398) = v398;
    v402 = (v398 >> 31) - 899497514 + v391;
    HIDWORD(v398) = v389;
    LODWORD(v398) = v389;
    v403 = v398 >> 2;
    v404 = __PAIR64__(v400, __ROR4__(v383, 2));
    v405 = v402 + (v403 ^ v404 ^ v394);
    LODWORD(v404) = v400;
    v406 = v405 + (v404 >> 27);
    LODWORD(v404) = v504 ^ __ROR4__(v307, 31) ^ __ROR4__(v358, 31) ^ __ROR4__(v390, 31);
    v407 = v404;
    HIDWORD(v404) = v404;
    v408 = (v404 >> 31) - 899497514;
    HIDWORD(v404) = v394;
    LODWORD(v404) = v394;
    v409 = v404 >> 2;
    v410 = __PAIR64__(v406, __ROR4__(v389, 2));
    v411 = v408 + v397 + (v409 ^ v410 ^ v400);
    LODWORD(v410) = v406;
    v412 = v411 + (v410 >> 27);
    LODWORD(v410) = v501 ^ __ROR4__(v316, 31) ^ __ROR4__(v367, 31) ^ __ROR4__(v395, 31);
    v413 = v410;
    HIDWORD(v410) = v410;
    v414 = (v410 >> 31) - 899497514 + v403;
    HIDWORD(v410) = v400;
    LODWORD(v410) = v400;
    v415 = v410 >> 2;
    v416 = __PAIR64__(v412, __ROR4__(v394, 2));
    v417 = v414 + (v415 ^ v416 ^ v406);
    LODWORD(v416) = v412;
    v418 = v417 + (v416 >> 27);
    LODWORD(v416) = v518 ^ __ROR4__(v321, 31) ^ __ROR4__(v372, 31) ^ __ROR4__(v401, 31);
    v419 = v416;
    HIDWORD(v416) = v416;
    v420 = (v416 >> 31) - 899497514;
    HIDWORD(v416) = v406;
    LODWORD(v416) = v406;
    v421 = v416 >> 2;
    v422 = __PAIR64__(v418, __ROR4__(v400, 2));
    v423 = v420 + v409 + (v421 ^ v422 ^ v412);
    LODWORD(v422) = v418;
    v424 = v423 + (v422 >> 27);
    LODWORD(v422) = v526 ^ __ROR4__(v327, 31) ^ __ROR4__(v378, 31) ^ __ROR4__(v407, 31);
    v425 = v422;
    HIDWORD(v422) = v422;
    v426 = (v422 >> 31) - 899497514 + v415;
    HIDWORD(v422) = v412;
    LODWORD(v422) = v412;
    v427 = v422 >> 2;
    v428 = v426 + (v427 ^ __ROR4__(v406, 2) ^ v418);
    v430 = __PAIR64__(v424, __ROR4__(v334, 31));
    v429 = v480 ^ v430;
    LODWORD(v430) = v424;
    v431 = v428 + (v430 >> 27);
    v432 = v429 ^ __ROR4__(v384, 31) ^ __ROR4__(v413, 31);
    HIDWORD(v430) = v432;
    LODWORD(v430) = v432;
    v433 = (v430 >> 31) - 899497514;
    HIDWORD(v430) = v418;
    LODWORD(v430) = v418;
    v434 = v430 >> 2;
    v435 = __PAIR64__(v431, __ROR4__(v412, 2));
    v436 = v433 + v421 + (v434 ^ v435 ^ v424);
    LODWORD(v435) = v431;
    v437 = v436 + (v435 >> 27);
    v438 = v353 ^ __ROR4__(v336, 31) ^ __ROR4__(v390, 31) ^ __ROR4__(v419, 31);
    HIDWORD(v435) = v438;
    LODWORD(v435) = v438;
    v439 = (v435 >> 31) - 899497514 + v427;
    HIDWORD(v435) = v424;
    LODWORD(v435) = v424;
    v440 = v435 >> 2;
    v442 = __PAIR64__(v437, __ROR4__(v343, 31));
    v441 = v498 ^ v442;
    LODWORD(v442) = v437;
    v443 = v439 + (v440 ^ __ROR4__(v418, 2) ^ v431) + (v442 >> 27);
    v444 = v441 ^ __ROR4__(v395, 31) ^ __ROR4__(v425, 31);
    HIDWORD(v442) = v444;
    LODWORD(v442) = v444;
    v445 = (v442 >> 31) - 899497514;
    HIDWORD(v442) = v431;
    LODWORD(v442) = v431;
    v446 = v442 >> 2;
    v447 = __PAIR64__(v443, __ROR4__(v424, 2));
    v448 = v445 + v434 + (v446 ^ v447 ^ v437);
    LODWORD(v447) = v443;
    v449 = v448 + (v447 >> 27);
    v450 = v495 ^ __ROR4__(v352, 31) ^ __ROR4__(v401, 31) ^ __ROR4__(v432, 31);
    HIDWORD(v447) = v450;
    LODWORD(v447) = v450;
    v451 = (v447 >> 31) - 899497514 + v440;
    HIDWORD(v447) = v437;
    LODWORD(v447) = v437;
    v452 = v447 >> 2;
    v453 = v451 + (v452 ^ __ROR4__(v431, 2) ^ v443);
    v455 = __PAIR64__(v449, __ROR4__(v407, 31));
    v454 = v373 ^ __ROR4__(v358, 31) ^ v455;
    LODWORD(v455) = v449;
    v456 = v453 + (v455 >> 27);
    LODWORD(v455) = v454 ^ __ROR4__(v438, 31);
    v457 = v455;
    HIDWORD(v455) = v455;
    v458 = (v455 >> 31) - 899497514;
    HIDWORD(v455) = v443;
    LODWORD(v455) = v443;
    v459 = v455 >> 2;
    v460 = __PAIR64__(v456, __ROR4__(v437, 2));
    v461 = v458 + v446 + (v459 ^ v460 ^ v449);
    LODWORD(v460) = v456;
    v462 = v461 + (v460 >> 27);
    LODWORD(v460) = v508 ^ __ROR4__(v367, 31) ^ __ROR4__(v413, 31) ^ __ROR4__(v444, 31);
    HIDWORD(v460) = v460;
    v463 = (v460 >> 31) - 899497514 + v452;
    HIDWORD(v460) = v449;
    LODWORD(v460) = v449;
    v464 = v460 >> 2;
    v465 = v463 + (v464 ^ __ROR4__(v443, 2) ^ v456);
    v467 = __PAIR64__(v462, __ROR4__(v419, 31));
    v466 = v385 ^ __ROR4__(v372, 31) ^ v467;
    LODWORD(v467) = v462;
    v468 = v465 + (v467 >> 27);
    LODWORD(v467) = v466 ^ __ROR4__(v450, 31);
    HIDWORD(v467) = v467;
    v469 = (v467 >> 31) - 899497514;
    HIDWORD(v467) = v456;
    LODWORD(v467) = v456;
    v470 = v467 >> 2;
    v471 = __PAIR64__(v468, __ROR4__(v449, 2));
    v472 = v469 + v459 + (v470 ^ v471 ^ v462);
    LODWORD(v471) = v468;
    v473 = v472 + (v471 >> 27);
    LODWORD(v471) = v514 ^ __ROR4__(v378, 31) ^ __ROR4__(v425, 31) ^ __ROR4__(v457, 31);
    HIDWORD(v471) = v471;
    v474 = v527 - 899497514 + (v471 >> 31) + v464;
    HIDWORD(v471) = v462;
    LODWORD(v471) = v462;
    v475 = v471 >> 2;
    v476 = __PAIR64__(v473, __ROR4__(v456, 2));
    v477 = v474 + (v475 ^ v476 ^ v468);
    LODWORD(v476) = v473;
    v7 = v477 + (v476 >> 27);
    HIDWORD(v476) = v468;
    LODWORD(v476) = v468;
    v5 = v473 + v532;
    v6 = (v476 >> 2) + v531;
    v3 = v475 + v530;
    v4 = v470 + v528;
    *a1 = v7;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v475 + v530;
    a1[4] = v470 + v528;
    a2 = v533 + 16;
    a3 = v529 - 1;
  }

  while (v529 != 1);
  return result;
}

_DWORD *sub_239444544(_DWORD *result, unsigned int *a2)
{
  *result = bswap32(*a2);
  result[1] = bswap32(a2[1]);
  result[2] = bswap32(a2[2]);
  result[3] = bswap32(a2[3]);
  result[4] = bswap32(a2[4]);
  return result;
}

uint64_t sub_239444584(uint64_t result, size_t a2, __int128 *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v22 = *a3;
  v23 = *(a3 + 4);
  if (a2)
  {
    v3 = a2;
    v4 = result;
    while (1)
    {
      memset(v21, 0, sizeof(v21));
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v16 = xmmword_2395CAA30;
      v17 = -1009589776;
      v5 = 1;
      result = sub_2394432DC(v16.i32, &v22, 1);
      for (i = 4; i != -1; --i)
      {
        v7 = bswap32(*(&v22 + i * 4));
        v8 = v16.i32[i];
        v9 = __CFADD__(v7, v8);
        v10 = v7 + v8;
        v11 = v9;
        v9 = __CFADD__(v10, v5);
        v12 = v10 + v5;
        if (v9)
        {
          v5 = 1;
        }

        else
        {
          v5 = v11;
        }

        *(&v22 + i * 4) = bswap32(v12);
      }

      if (v3 < 0x14)
      {
        break;
      }

      *v4 = vrev32q_s8(v16);
      v4[1].i32[0] = bswap32(v17);
      v4 = (v4 + 20);
      v3 -= 20;
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    __src = vrev32q_s8(v16);
    v15 = bswap32(v17);
    result = memcpy(v4, &__src, v3);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394446F8(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = xmmword_2395CA970;
  *(a1 + 16) = xmmword_2395CA980;
  *(a1 + 32) = 0u;
  *(a1 + 108) = 28;
  return 1;
}

uint64_t sub_23944472C(uint64_t a1)
{
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = xmmword_2395CA990;
  *(a1 + 16) = xmmword_2395CA9A0;
  *(a1 + 32) = 0u;
  *(a1 + 108) = 32;
  return 1;
}

uint64_t sub_239444788(uint64_t a1, int8x16_t *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = a1 + 40;
    v7 = *(a1 + 32) + 8 * __n;
    *(a1 + 32) = v7;
    v8 = *(a1 + 104);
    if (v8)
    {
      if (__n <= 0x3F && v8 + __n < 0x40)
      {
        memcpy((v6 + v8), __src, __n);
        *(a1 + 104) += v3;
        return 1;
      }

      v9 = 64 - v8;
      if (v8 != 64)
      {
        memcpy((v6 + v8), __src, 64 - v8);
      }

      sub_2394448B8(a1, v6, 1);
      v4 = (v4 + v9);
      v3 -= v9;
      *(a1 + 104) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
    }

    if (v3 >= 0x40)
    {
      sub_2394448B8(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 104) = v3;
      memcpy(v6, v4, v3);
    }
  }

  return 1;
}

_DWORD *sub_2394448B8(_DWORD *result, int8x16_t *a2, uint64_t a3)
{
  v212 = result;
  v224 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *result;
    v4 = result[1];
    v6 = result[2];
    v5 = result[3];
    v8 = result[4];
    v7 = result[5];
    v9 = result[6];
    v10 = result[7];
    do
    {
      v222 = a3;
      HIDWORD(v11) = v8;
      LODWORD(v11) = v8;
      v12 = (v11 >> 6) ^ __ROR4__(v8, 11);
      v13 = __PAIR64__(v3, __ROR4__(v8, 25));
      v213 = v10;
      v214 = v9;
      v14 = vrev32q_s8(*a2);
      v15 = v10 + (v9 & ~v8 | v8 & v7) + (v12 ^ v13) + v14.i32[0];
      LODWORD(v13) = v3;
      v15 += 1116352408;
      v217 = v5;
      v16 = v15 + v5;
      v17 = ((v13 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + ((v4 ^ v6) & v3 ^ v4 & v6) + v15;
      HIDWORD(v13) = v15 + v5;
      LODWORD(v13) = v15 + v5;
      v18 = (v13 >> 6) ^ __ROR4__(v15 + v5, 11);
      v19 = __PAIR64__(v17, __ROR4__(v16, 25));
      v215 = v7;
      v20 = v9 + v14.i32[1] + (v16 & v8 | v7 & ~v16) + 1899447441 + (v18 ^ v19);
      LODWORD(v19) = v17;
      v218 = v6;
      v21 = v20 + v6;
      v22 = ((v19 >> 2) ^ __ROR4__(v17, 13) ^ __ROR4__(v17, 22)) + (v17 & (v3 ^ v4) ^ v3 & v4) + v20;
      HIDWORD(v19) = v20 + v6;
      LODWORD(v19) = v20 + v6;
      v23 = (v19 >> 6) ^ __ROR4__(v20 + v6, 11);
      v24 = __PAIR64__(v22, __ROR4__(v21, 25));
      v25 = v7 + v14.i32[2] + (v21 & v16 | v8 & ~v21) - 1245643825 + (v23 ^ v24);
      LODWORD(v24) = v22;
      v219 = v4;
      v26 = v25 + v4;
      v27 = ((v24 >> 2) ^ __ROR4__(v22, 13) ^ __ROR4__(v22, 22)) + (v22 & (v17 ^ v3) ^ v17 & v3) + v25;
      HIDWORD(v24) = v26;
      LODWORD(v24) = v26;
      v28 = (v24 >> 6) ^ __ROR4__(v26, 11);
      v29 = __PAIR64__(v27, __ROR4__(v26, 25));
      v216 = v8;
      v30 = v8 + v14.i32[3] + (v26 & v21 | v16 & ~v26) - 373957723 + (v28 ^ v29);
      LODWORD(v29) = v27;
      v220 = v3;
      v31 = v30 + v3;
      v32 = ((v29 >> 2) ^ __ROR4__(v27, 13) ^ __ROR4__(v27, 22)) + (v27 & (v22 ^ v17) ^ v22 & v17) + v30;
      v33 = vrev32q_s8(a2[1]);
      HIDWORD(v29) = v32;
      LODWORD(v29) = v32;
      v34 = (v29 >> 2) ^ __ROR4__(v32, 13);
      v35 = __PAIR64__(v31, __ROR4__(v32, 22));
      v36 = (v34 ^ v35) + (v32 & (v27 ^ v22) ^ v27 & v22);
      v37 = v21 + v33.i32[1];
      LODWORD(v35) = v31;
      v38 = v16 + v33.i32[0] + (v31 & v26 | v21 & ~v31) + 961987163 + ((v35 >> 6) ^ __ROR4__(v31, 11) ^ __ROR4__(v31, 25));
      v39 = v38 + v17;
      v40 = v36 + v38;
      HIDWORD(v35) = v39;
      LODWORD(v35) = v39;
      v41 = (v35 >> 6) ^ __ROR4__(v39, 11);
      v42 = __PAIR64__(v40, __ROR4__(v39, 25));
      v43 = v37 + (v39 & v31 | v26 & ~v39) + 1508970993 + (v41 ^ v42);
      LODWORD(v42) = v40;
      v44 = v43 + v22;
      v45 = ((v42 >> 2) ^ __ROR4__(v40, 13) ^ __ROR4__(v40, 22)) + (v40 & (v32 ^ v27) ^ v32 & v27) + v43;
      HIDWORD(v42) = v44;
      LODWORD(v42) = v44;
      v46 = (v42 >> 6) ^ __ROR4__(v44, 11);
      v47 = __PAIR64__(v45, __ROR4__(v44, 25));
      v48 = v33.i32[2] + v26 + (v44 & v39 | v31 & ~v44) - 1841331548 + (v46 ^ v47);
      LODWORD(v47) = v45;
      v49 = v48 + v27;
      v50 = ((v47 >> 2) ^ __ROR4__(v45, 13) ^ __ROR4__(v45, 22)) + (v45 & (v40 ^ v32) ^ v40 & v32) + v48;
      HIDWORD(v47) = v49;
      LODWORD(v47) = v49;
      v51 = (v47 >> 6) ^ __ROR4__(v49, 11);
      v52 = __PAIR64__(v50, __ROR4__(v49, 25));
      v53 = v33.i32[3] + v31 + (v49 & v44 | v39 & ~v49) - 1424204075 + (v51 ^ v52);
      LODWORD(v52) = v50;
      v54 = v53 + v32;
      v55 = ((v52 >> 2) ^ __ROR4__(v50, 13) ^ __ROR4__(v50, 22)) + (v50 & (v45 ^ v40) ^ v45 & v40) + v53;
      HIDWORD(v52) = v55;
      LODWORD(v52) = v55;
      v56 = (v52 >> 2) ^ __ROR4__(v55, 13);
      v57 = __PAIR64__(v54, __ROR4__(v55, 22));
      v58 = (v56 ^ v57) + (v55 & (v50 ^ v45) ^ v50 & v45);
      v59 = a2[3];
      v221 = a2;
      v60 = vrev32q_s8(a2[2]);
      LODWORD(v57) = v54;
      v61 = v60.i32[0] + v39 + (v54 & v49 | v44 & ~v54) - 670586216 + ((v57 >> 6) ^ __ROR4__(v54, 11) ^ __ROR4__(v54, 25));
      v62 = v61 + v40;
      v63 = v58 + v61;
      v64 = v60.i32[1] + v44 + ((v61 + v40) & v54 | v49 & ~(v61 + v40));
      HIDWORD(v57) = v62;
      LODWORD(v57) = v62;
      v65 = (v57 >> 6) ^ __ROR4__(v62, 11);
      v66 = __PAIR64__(v63, __ROR4__(v62, 25));
      v67 = v64 + 310598401 + (v65 ^ v66);
      LODWORD(v66) = v63;
      v68 = v67 + v45;
      v69 = ((v66 >> 2) ^ __ROR4__(v63, 13) ^ __ROR4__(v63, 22)) + (v63 & (v55 ^ v50) ^ v55 & v50) + v67;
      HIDWORD(v66) = v68;
      LODWORD(v66) = v68;
      v70 = (v66 >> 6) ^ __ROR4__(v68, 11);
      v71 = __PAIR64__(v69, __ROR4__(v68, 25));
      v72 = v60.i32[2] + v49 + (v68 & v62 | v54 & ~v68) + 607225278 + (v70 ^ v71);
      LODWORD(v71) = v69;
      v73 = v72 + v50;
      v74 = ((v71 >> 2) ^ __ROR4__(v69, 13) ^ __ROR4__(v69, 22)) + (v69 & (v63 ^ v55) ^ v63 & v55) + v72;
      HIDWORD(v71) = v73;
      LODWORD(v71) = v73;
      v75 = (v71 >> 6) ^ __ROR4__(v73, 11);
      v76 = __PAIR64__(v74, __ROR4__(v73, 25));
      v77 = v60.i32[3] + v54 + (v73 & v68 | v62 & ~v73) + 1426881987 + (v75 ^ v76);
      LODWORD(v76) = v74;
      v78 = ((v76 >> 2) ^ __ROR4__(v74, 13) ^ __ROR4__(v74, 22)) + (v74 & (v69 ^ v63) ^ v69 & v63);
      v79 = v77 + v55;
      v80 = v78 + v77;
      HIDWORD(v76) = v78 + v77;
      LODWORD(v76) = v78 + v77;
      v81 = (v76 >> 2) ^ __ROR4__(v78 + v77, 13);
      v82 = __PAIR64__(v79, __ROR4__(v78 + v77, 22));
      v83 = (v81 ^ v82) + ((v78 + v77) & (v74 ^ v69) ^ v74 & v69);
      v84 = vrev32q_s8(v59);
      LODWORD(v82) = v79;
      v85 = v84.i32[0] + v62 + (v79 & v73 | v68 & ~v79) + 1925078388 + ((v82 >> 6) ^ __ROR4__(v79, 11) ^ __ROR4__(v79, 25));
      v86 = v85 + v63;
      v87 = v83 + v85;
      v88 = v84.i32[1] + v68 + (v86 & v79 | v73 & ~v86);
      HIDWORD(v82) = v86;
      LODWORD(v82) = v86;
      v89 = (v82 >> 6) ^ __ROR4__(v86, 11);
      v90 = __PAIR64__(v87, __ROR4__(v86, 25));
      v91 = v88 - 2132889090 + (v89 ^ v90);
      LODWORD(v90) = v87;
      v92 = v91 + v69;
      v93 = ((v90 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v80 ^ v74) ^ v80 & v74) + v91;
      v223[0] = v14;
      v223[1] = v33;
      v223[2] = v60;
      v223[3] = v84;
      HIDWORD(v90) = v92;
      LODWORD(v90) = v92;
      v94 = (v90 >> 6) ^ __ROR4__(v92, 11);
      v95 = __PAIR64__(v93, __ROR4__(v92, 25));
      v96 = v84.i32[2] + v73 + (v92 & v86 | v79 & ~v92) - 1680079193 + (v94 ^ v95);
      LODWORD(v95) = v93;
      v97 = v96 + v74;
      v98 = ((v95 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v80) ^ v87 & v80) + v96;
      HIDWORD(v95) = v97;
      LODWORD(v95) = v96 + v74;
      v99 = v84.i32[3] + v79 + (v97 & v92 | v86 & ~v97) - 1046744716 + ((v95 >> 6) ^ __ROR4__(v97, 11) ^ __ROR4__(v97, 25));
      HIDWORD(v95) = v98;
      LODWORD(v95) = v98;
      v100 = v99 + v80;
      v101 = ((v95 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v99;
      v102 = &dword_2395CE174;
      v103 = 31;
      do
      {
        v104 = v103 - 15;
        v105 = (v103 - 14) & 9;
        v106 = *(v223 + v105);
        v107 = *(v223 + ((v103 - 1) & 0xE));
        HIDWORD(v109) = v106;
        LODWORD(v109) = v106;
        v108 = v109 >> 7;
        v111 = __PAIR64__(v107, __ROR4__(v106, 18));
        v110 = v108 ^ v111;
        LODWORD(v111) = v107;
        v112 = v111 >> 17;
        v114 = __PAIR64__(v100, __ROR4__(v107, 19));
        v113 = v112 ^ v114;
        v115 = (v103 - 15) & 8;
        LODWORD(v114) = v100;
        v116 = (v103 - 15) & 8;
        v117 = (v110 ^ (v106 >> 3)) + *(v223 + ((v103 - 6) & 9)) + *(v223 + v115) + (v113 ^ (v107 >> 10));
        v118 = (v114 >> 6) ^ __ROR4__(v100, 11);
        v120 = __PAIR64__(v101, __ROR4__(v100, 25));
        v119 = v118 ^ v120;
        LODWORD(v120) = v101;
        v121 = *(v102 - 6);
        v122 = (v92 & ~v100 | v100 & v97) + v86 + *(v102 - 7) + v119;
        *(v223 + v115) = v117;
        v123 = ((v120 >> 2) ^ __ROR4__(v101, 13) ^ __ROR4__(v101, 22)) + ((v98 ^ v93) & v101 ^ v98 & v93);
        v124 = v122 + v117;
        v125 = v124 + v87;
        HIDWORD(v120) = *(v223 + (v116 | 2u));
        LODWORD(v120) = HIDWORD(v120);
        v126 = v123 + v124;
        v127 = *(v223 + (v103 & 0xF));
        v128 = (v120 >> 7) ^ __ROR4__(HIDWORD(v120), 18) ^ (HIDWORD(v120) >> 3);
        HIDWORD(v120) = v127;
        LODWORD(v120) = v127;
        v129 = v120 >> 17;
        v130 = __PAIR64__(v125, __ROR4__(v127, 19));
        v131 = *(v223 + ((v103 - 5) & 0xALL)) + v106 + (v129 ^ v130 ^ (v127 >> 10));
        LODWORD(v130) = v125;
        v132 = v131 + v128;
        v133 = (v130 >> 6) ^ __ROR4__(v125, 11);
        v135 = __PAIR64__(v126, __ROR4__(v125, 25));
        v134 = v133 ^ v135;
        LODWORD(v135) = v126;
        *(v223 + v105) = v132;
        v136 = v121 + v92 + (v125 & v100 | v97 & ~v125) + v132;
        v137 = (v135 >> 2) ^ __ROR4__(v126, 13);
        v138 = __PAIR64__(v117, __ROR4__(v126, 22));
        v139 = v136 + v134;
        v140 = (v137 ^ v138) + (v126 & (v101 ^ v98) ^ v101 & v98);
        v141 = v139 + v93;
        v142 = *(v223 + (v116 | 3u));
        LODWORD(v138) = v117;
        v143 = v138 >> 17;
        HIDWORD(v138) = v142;
        LODWORD(v138) = v142;
        v144 = (v138 >> 7) ^ __ROR4__(v142, 18);
        v145 = __PAIR64__(v141, __ROR4__(v117, 19));
        v146 = v144 ^ (v142 >> 3);
        v147 = (v103 - 13) & 0xALL;
        v148 = v140 + v139;
        v149 = *(v223 + ((v103 - 4) & 0xBLL)) + *(v223 + v147) + v146 + (v143 ^ v145 ^ (v117 >> 10));
        LODWORD(v145) = v141;
        v150 = (v145 >> 6) ^ __ROR4__(v141, 11);
        v152 = __PAIR64__(v148, __ROR4__(v141, 25));
        v151 = v150 ^ v152;
        *(v223 + v147) = v149;
        v153 = *(v102 - 4);
        LODWORD(v152) = v148;
        v154 = ((v152 >> 2) ^ __ROR4__(v148, 13) ^ __ROR4__(v148, 22)) + (v148 & (v126 ^ v101) ^ v126 & v101);
        v155 = *(v223 + (v116 | 4u));
        v156 = *(v102 - 5) + v97 + v149 + (v141 & v125 | v100 & ~v141) + v151;
        HIDWORD(v152) = v155;
        LODWORD(v152) = v155;
        v157 = v152 >> 7;
        v158 = *(v223 + (v116 | 1u));
        v160 = __PAIR64__(v158, __ROR4__(v155, 18));
        v159 = v157 ^ v160;
        LODWORD(v160) = v158;
        v161 = (v103 - 12) & 0xBLL;
        LODWORD(v147) = (v160 >> 17) ^ __ROR4__(v158, 19) ^ (v158 >> 10);
        v162 = v156 + v98;
        v163 = (v159 ^ (v155 >> 3)) + *(v223 + ((v103 - 3) & 0xC)) + *(v223 + v161) + v147;
        v164 = v154 + v156;
        HIDWORD(v160) = v162;
        LODWORD(v160) = v162;
        v165 = (v160 >> 6) ^ __ROR4__(v162, 11);
        v167 = __PAIR64__(v164, __ROR4__(v162, 25));
        v166 = v165 ^ v167;
        *(v223 + v161) = v163;
        LODWORD(v167) = v164;
        v168 = v153 + v100 + v163 + (v162 & v141 | v125 & ~v162) + v166;
        v169 = ((v167 >> 2) ^ __ROR4__(v164, 13) ^ __ROR4__(v164, 22)) + (v164 & (v148 ^ v126) ^ v148 & v126);
        v170 = v168 + v101;
        v171 = *(v223 + (v116 | 5u));
        HIDWORD(v167) = v171;
        LODWORD(v167) = v171;
        LODWORD(v161) = (v167 >> 7) ^ __ROR4__(v171, 18);
        LODWORD(v115) = *(v223 + (v116 | 2u));
        HIDWORD(v167) = v115;
        LODWORD(v167) = v115;
        v172 = v167 >> 17;
        v173 = __PAIR64__(v170, __ROR4__(v115, 19));
        v174 = (v103 - 11) & 0xC;
        v175 = (v161 ^ (v171 >> 3)) + *(v223 + ((v103 - 2) & 0xDLL)) + *(v223 + v174) + (v172 ^ v173 ^ (v115 >> 10));
        v176 = v169 + v168;
        LODWORD(v173) = v170;
        v177 = (v173 >> 6) ^ __ROR4__(v170, 11);
        v179 = __PAIR64__(v176, __ROR4__(v170, 25));
        v178 = v177 ^ v179;
        *(v223 + v174) = v175;
        LODWORD(v161) = *(v102 - 2);
        LODWORD(v174) = *(v102 - 3) + v175 + v125;
        LODWORD(v179) = v176;
        v180 = ((v179 >> 2) ^ __ROR4__(v176, 13) ^ __ROR4__(v176, 22)) + (v176 & (v164 ^ v148) ^ v164 & v148);
        v181 = v174 + (v170 & v162 | v141 & ~v170) + v178;
        v86 = v181 + v126;
        v182 = *(v223 + (v116 | 6u));
        HIDWORD(v179) = v182;
        LODWORD(v179) = v182;
        LODWORD(v115) = v179 >> 7;
        v183 = *(v223 + (v116 | 3u));
        HIDWORD(v179) = v183;
        LODWORD(v179) = v183;
        v184 = v179 >> 17;
        v185 = v115 ^ __ROR4__(v182, 18) ^ (v182 >> 3);
        v186 = __PAIR64__(v181 + v126, __ROR4__(v183, 19));
        LODWORD(v115) = v184 ^ v186;
        v187 = (v103 - 10) & 0xDLL;
        v87 = v180 + v181;
        v188 = *(v223 + v187) + v107 + v185 + (v115 ^ (v183 >> 10));
        LODWORD(v186) = v86;
        v189 = (v186 >> 6) ^ __ROR4__(v86, 11);
        v191 = __PAIR64__(v87, __ROR4__(v86, 25));
        v190 = v189 ^ v191;
        *(v223 + v187) = v188;
        LODWORD(v191) = v87;
        v192 = v161 + v188 + v141 + (v86 & v170 | v162 & ~v86) + v190;
        v193 = ((v191 >> 2) ^ __ROR4__(v87, 13) ^ __ROR4__(v87, 22)) + (v87 & (v176 ^ v164) ^ v176 & v164);
        LODWORD(v174) = *(v223 + (v116 | 7u));
        v92 = v192 + v148;
        HIDWORD(v191) = v174;
        LODWORD(v191) = v174;
        v194 = v191 >> 7;
        LODWORD(v105) = *(v223 + (v116 | 4u));
        v195 = __PAIR64__(v105, __ROR4__(v174, 18));
        LODWORD(v174) = v194 ^ v195 ^ (v174 >> 3);
        LODWORD(v195) = v105;
        v196 = v195 >> 17;
        v197 = __PAIR64__(v92, __ROR4__(v105, 19));
        v198 = (v103 - 9) & 0xE;
        LODWORD(v174) = *(v223 + v198) + v127 + v174 + (v196 ^ v197 ^ (v105 >> 10));
        v93 = v193 + v192;
        LODWORD(v197) = v92;
        v199 = (v197 >> 6) ^ __ROR4__(v92, 11);
        v201 = __PAIR64__(v93, __ROR4__(v92, 25));
        v200 = v199 ^ v201;
        *(v223 + v198) = v174;
        LODWORD(v201) = v93;
        v202 = *(v102 - 1) + v174 + v162 + (v92 & v86 | v170 & ~v92) + v200;
        v97 = v202 + v164;
        v98 = ((v201 >> 2) ^ __ROR4__(v93, 13) ^ __ROR4__(v93, 22)) + (v93 & (v87 ^ v176) ^ v87 & v176) + v202;
        v203 = *(v223 + (v116 ^ 8u));
        HIDWORD(v201) = v203;
        LODWORD(v201) = v203;
        LODWORD(v174) = v201 >> 7;
        LODWORD(v161) = *(v223 + (v116 | 5u));
        HIDWORD(v201) = v161;
        LODWORD(v201) = v161;
        LODWORD(v105) = v201 >> 17;
        v204 = v174 ^ __ROR4__(v203, 18) ^ (v203 >> 3);
        v205 = __PAIR64__(v97, __ROR4__(v161, 19));
        v206 = (v103 - 8) & 0xF;
        LODWORD(v174) = v105 ^ v205 ^ (v161 >> 10);
        LODWORD(v205) = v97;
        LODWORD(v161) = (v205 >> 6) ^ __ROR4__(v97, 11);
        v207 = *(v223 + v206) + v204 + v117 + v174;
        v208 = __PAIR64__(v98, __ROR4__(v97, 25));
        LODWORD(v174) = v161 ^ v208;
        result = (v86 & ~v97);
        *(v223 + v206) = v207;
        v209 = *v102;
        v102 += 8;
        LODWORD(v208) = v98;
        v210 = v209 + v207 + v170 + (v97 & v92 | result) + v174;
        v100 = v210 + v176;
        v101 = ((v208 >> 2) ^ __ROR4__(v98, 13) ^ __ROR4__(v98, 22)) + (v98 & (v93 ^ v87) ^ v93 & v87) + v210;
        v103 += 8;
      }

      while (v104 < 0x38);
      a2 = v221 + 4;
      v3 = v101 + v220;
      v4 = v98 + v219;
      *v212 = v101 + v220;
      v212[1] = v98 + v219;
      v6 = v93 + v218;
      v5 = v87 + v217;
      v212[2] = v93 + v218;
      v212[3] = v87 + v217;
      v8 = v100 + v216;
      v7 = v97 + v215;
      v212[4] = v100 + v216;
      v212[5] = v97 + v215;
      v9 = v92 + v214;
      v10 = v86 + v213;
      v212[6] = v92 + v214;
      v212[7] = v86 + v213;
      a3 = v222 - 1;
    }

    while (v222 != 1);
  }

  v211 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394454B4(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = a3 + 40;
  v7 = *(a3 + 32);
  v8 = *(a3 + 104);
  *(a3 + 40 + v8) = 0x80;
  v9 = v8 + 1;
  if (v8 < 0x38)
  {
    if (v8 == 55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 != 63)
    {
      bzero((v6 + v9), 63 - v8);
    }

    sub_2394448B8(v3, v6, 1);
    v9 = 0;
  }

  bzero((v6 + v9), 56 - v9);
LABEL_7:
  v3[12] = vrev64_s32(vrev32_s8(v7));
  sub_2394448B8(v3, v6, 1);
  result = 0;
  v3[13].i32[0] = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  if (a2 <= 0x20)
  {
    if (a2 >= 4)
    {
      v11 = a2 >> 2;
      do
      {
        v12 = v3->i32[0];
        v3 = (v3 + 4);
        *a1++ = bswap32(v12);
        --v11;
      }

      while (v11);
    }

    return 1;
  }

  return result;
}

uint64_t sub_2394455B4(uint64_t a1)
{
  *a1 = xmmword_2395CA9B0;
  *(a1 + 16) = xmmword_2395CA9C0;
  *(a1 + 32) = xmmword_2395CA9D0;
  *(a1 + 48) = xmmword_2395CA9E0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 208) = 0x3000000000;
  return 1;
}

uint64_t sub_2394455F4(uint64_t a1)
{
  *a1 = xmmword_2395CAA40;
  *(a1 + 16) = xmmword_2395CAA50;
  *(a1 + 32) = xmmword_2395CAA60;
  *(a1 + 48) = xmmword_2395CAA70;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 208) = 0x2000000000;
  return 1;
}

void *sub_23944565C(unint64_t *__src, size_t __n, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6[0] = xmmword_2395CAA40;
  v6[1] = xmmword_2395CAA50;
  v6[2] = xmmword_2395CAA60;
  v6[3] = xmmword_2395CAA70;
  v7 = 0;
  v8 = 0;
  v17 = 0x2000000000;
  sub_23943325C(v6, __src, __n);
  sub_239445738(a3, 0x20uLL, v6);
  sub_239450194(v6, 0xD8uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_239445738(void *a1, unint64_t a2, int8x16_t *a3)
{
  v3 = a3;
  v6 = &a3[5];
  v7 = a3[13].u32[0];
  a3[5].i8[v7] = 0x80;
  v8 = v7 + 1;
  if (v7 < 0x70)
  {
    if (v7 == 111)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7 != 127)
    {
      bzero(v6 + v8, 127 - v7);
    }

    sub_239445824(v3, v6, 1);
    v8 = 0;
  }

  bzero(v6 + v8, 112 - v8);
LABEL_7:
  v9 = vrev64q_s8(v3[4]);
  v3[12] = vextq_s8(v9, v9, 8uLL);
  sub_239445824(v3, v6, 1);
  if (!a1)
  {
    return 0;
  }

  if (a2 >= 8)
  {
    v10 = a2 >> 3;
    do
    {
      v11 = v3->i64[0];
      v3 = (v3 + 8);
      *a1++ = bswap64(v11);
      --v10;
    }

    while (v10);
  }

  return 1;
}

unint64_t sub_239445824(unint64_t result, unint64_t *a2, uint64_t a3)
{
  v122 = result;
  if (a3)
  {
    v4 = *result;
    v3 = *(result + 8);
    v6 = *(result + 16);
    v5 = *(result + 24);
    v8 = *(result + 32);
    v7 = *(result + 40);
    v10 = *(result + 48);
    v9 = *(result + 56);
    do
    {
      v132 = a3;
      v11 = 0;
      v123 = v9;
      v138 = bswap64(*a2);
      v12 = v9 + (v10 & ~v8 | v8 & v7) + v138 + (__ROR8__(v8, 14) ^ __ROR8__(v8, 18) ^ __ROR8__(v8, 41)) + 0x428A2F98D728AE22;
      v127 = v5;
      v13 = v12 + v5;
      v14 = (__ROR8__(v4, 28) ^ __ROR8__(v4, 34) ^ __ROR8__(v4, 39)) + ((v3 ^ v6) & v4 ^ v3 & v6) + v12;
      v15 = bswap64(a2[1]);
      v124 = v10;
      v16 = v10 + v15 + (v13 & v8 | v7 & ~v13) + 0x7137449123EF65CDLL + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v128 = v6;
      v17 = v16 + v6;
      v18 = (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + (v14 & (v4 ^ v3) ^ v4 & v3) + v16;
      v19 = bswap64(a2[2]);
      v125 = v7;
      v20 = v7 + v19 + (v17 & v13 | v8 & ~v17) - 0x4A3F043013B2C4D1 + (__ROR8__(v17, 14) ^ __ROR8__(v17, 18) ^ __ROR8__(v17, 41));
      v129 = v3;
      v21 = v20 + v3;
      v22 = (__ROR8__(v18, 28) ^ __ROR8__(v18, 34) ^ __ROR8__(v18, 39)) + (v18 & (v14 ^ v4) ^ v14 & v4) + v20;
      v23 = bswap64(a2[3]);
      v126 = v8;
      v24 = v8 + v23 + (v21 & v17 | v13 & ~v21) - 0x164A245A7E762444 + (__ROR8__(v21, 14) ^ __ROR8__(v21, 18) ^ __ROR8__(v21, 41));
      v130 = v4;
      v25 = v24 + v4;
      v26 = (__ROR8__(v22, 28) ^ __ROR8__(v22, 34) ^ __ROR8__(v22, 39)) + (v22 & (v18 ^ v14) ^ v18 & v14) + v24;
      v27 = bswap64(a2[4]);
      v28 = v13 + v27 + (v25 & v21 | v17 & ~v25) + 0x3956C25BF348B538 + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v29 = v28 + v14;
      v30 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + (v26 & (v22 ^ v18) ^ v22 & v18) + v28;
      v31 = bswap64(a2[5]);
      v32 = v31 + v17 + (v29 & v25 | v21 & ~v29) + 0x59F111F1B605D019 + (__ROR8__(v29, 14) ^ __ROR8__(v29, 18) ^ __ROR8__(v29, 41));
      v33 = v32 + v18;
      v34 = (__ROR8__(v30, 28) ^ __ROR8__(v30, 34) ^ __ROR8__(v30, 39)) + (v30 & (v26 ^ v22) ^ v26 & v22) + v32;
      v35 = bswap64(a2[6]);
      v36 = v35 + v21 + (v33 & v29 | v25 & ~v33) - 0x6DC07D5B50E6B065 + (__ROR8__(v33, 14) ^ __ROR8__(v33, 18) ^ __ROR8__(v33, 41));
      v37 = v36 + v22;
      v38 = (__ROR8__(v34, 28) ^ __ROR8__(v34, 34) ^ __ROR8__(v34, 39)) + (v34 & (v30 ^ v26) ^ v30 & v26) + v36;
      v137 = bswap64(a2[7]);
      v39 = v137 + v25 + (v37 & v33 | v29 & ~v37) - 0x54E3A12A25927EE8 + (__ROR8__(v37, 14) ^ __ROR8__(v37, 18) ^ __ROR8__(v37, 41));
      v40 = v39 + v26;
      v41 = (__ROR8__(v38, 28) ^ __ROR8__(v38, 34) ^ __ROR8__(v38, 39)) + (v38 & (v34 ^ v30) ^ v34 & v30) + v39;
      v136 = bswap64(a2[8]);
      v42 = v136 + v29 + (v40 & v37 | v33 & ~v40) - 0x27F855675CFCFDBELL + (__ROR8__(v40, 14) ^ __ROR8__(v40, 18) ^ __ROR8__(v40, 41));
      v43 = v42 + v30;
      v44 = (__ROR8__(v41, 28) ^ __ROR8__(v41, 34) ^ __ROR8__(v41, 39)) + (v41 & (v38 ^ v34) ^ v38 & v34) + v42;
      v135 = bswap64(a2[9]);
      v45 = v135 + v33 + (v43 & v40 | v37 & ~v43) + 0x12835B0145706FBELL + (__ROR8__(v43, 14) ^ __ROR8__(v43, 18) ^ __ROR8__(v43, 41));
      v46 = v45 + v34;
      v47 = (__ROR8__(v44, 28) ^ __ROR8__(v44, 34) ^ __ROR8__(v44, 39)) + (v44 & (v41 ^ v38) ^ v41 & v38) + v45;
      v48 = bswap64(a2[10]);
      v49 = v48 + v37 + (v46 & v43 | v40 & ~v46) + 0x243185BE4EE4B28CLL + (__ROR8__(v45 + v34, 14) ^ __ROR8__(v45 + v34, 18) ^ __ROR8__(v46, 41));
      v50 = v49 + v38;
      v51 = (__ROR8__(v47, 28) ^ __ROR8__(v47, 34) ^ __ROR8__(v47, 39)) + (v47 & (v44 ^ v41) ^ v44 & v41) + v49;
      v52 = bswap64(a2[11]);
      v53 = v52 + v40 + (v50 & v46 | v43 & ~v50) + 0x550C7DC3D5FFB4E2 + (__ROR8__(v49 + v38, 14) ^ __ROR8__(v49 + v38, 18) ^ __ROR8__(v50, 41));
      v54 = v53 + v41;
      v55 = (__ROR8__(v51, 28) ^ __ROR8__(v51, 34) ^ __ROR8__(v51, 39)) + (v51 & (v47 ^ v44) ^ v47 & v44) + v53;
      v56 = bswap64(a2[12]);
      v57 = v56 + v43 + (v54 & v50 | v46 & ~v54) + 0x72BE5D74F27B896FLL + (__ROR8__(v54, 14) ^ __ROR8__(v54, 18) ^ __ROR8__(v54, 41));
      v58 = v57 + v44;
      v59 = (__ROR8__(v55, 28) ^ __ROR8__(v55, 34) ^ __ROR8__(v55, 39)) + (v55 & (v51 ^ v47) ^ v51 & v47) + v57;
      v60 = bswap64(a2[13]);
      v61 = v60 + v46 + (v58 & v54 | v50 & ~v58) - 0x7F214E01C4E9694FLL + (__ROR8__(v57 + v44, 14) ^ __ROR8__(v57 + v44, 18) ^ __ROR8__(v58, 41));
      v62 = v61 + v47;
      v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v55 ^ v51) ^ v55 & v51) + v61;
      v131 = a2;
      v64 = bswap64(a2[14]);
      v65 = v64 + v50 + (v62 & v58 | v54 & ~v62) - 0x6423F958DA38EDCBLL + (__ROR8__(v61 + v47, 14) ^ __ROR8__(v61 + v47, 18) ^ __ROR8__(v62, 41));
      result = v65 + v51;
      v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v55) ^ v59 & v55) + v65;
      v67 = bswap64(a2[15]);
      v68 = v67 + v54 + (result & v62 | v58 & ~result) - 0x3E640E8B3096D96CLL + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
      v69 = v68 + v55;
      v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v68;
      v71 = &unk_2395CE310;
      do
      {
        v134 = v11;
        v72 = (__ROR8__(v15, 1) ^ __ROR8__(v15, 8) ^ (v15 >> 7)) + v138 + v135 + (__ROR8__(v64, 19) ^ __ROR8__(v64, 61) ^ (v64 >> 6));
        v73 = v72 + v58 + (v62 & ~v69 | v69 & result) + (__ROR8__(v69, 14) ^ __ROR8__(v69, 18) ^ __ROR8__(v69, 41)) + *(v71 - 15);
        v74 = v73 + v59;
        v75 = (__ROR8__(v70, 28) ^ __ROR8__(v70, 34) ^ __ROR8__(v70, 39)) + ((v66 ^ v63) & v70 ^ v66 & v63) + v73;
        v76 = (__ROR8__(v19, 1) ^ __ROR8__(v19, 8) ^ (v19 >> 7)) + v15 + v48 + (__ROR8__(v67, 19) ^ __ROR8__(v67, 61) ^ (v67 >> 6));
        v77 = v76 + v62 + *(v71 - 14) + (v74 & v69 | result & ~v74) + (__ROR8__(v74, 14) ^ __ROR8__(v74, 18) ^ __ROR8__(v74, 41));
        v78 = v77 + v63;
        v79 = (__ROR8__(v75, 28) ^ __ROR8__(v75, 34) ^ __ROR8__(v75, 39)) + (v75 & (v70 ^ v66) ^ v70 & v66) + v77;
        v80 = (__ROR8__(v23, 1) ^ __ROR8__(v23, 8) ^ (v23 >> 7)) + v19 + v52 + (__ROR8__(v72, 19) ^ __ROR8__(v72, 61) ^ (v72 >> 6));
        v81 = (v80 + result + *(v71 - 13) + (v78 & v74 | v69 & ~v78) + (__ROR8__(v77 + v63, 14) ^ __ROR8__(v77 + v63, 18) ^ __ROR8__(v78, 41)));
        v82 = &v81[v66];
        v83 = &v81[(__ROR8__(v79, 28) ^ __ROR8__(v79, 34) ^ __ROR8__(v79, 39)) + (v79 & (v75 ^ v70) ^ v75 & v70)];
        v84 = v76;
        v133 = v76;
        v85 = (__ROR8__(v27, 1) ^ __ROR8__(v27, 8) ^ (v27 >> 7)) + v23 + v56 + (__ROR8__(v76, 19) ^ __ROR8__(v76, 61) ^ (v76 >> 6));
        v86 = v85 + v69 + *(v71 - 12) + (v82 & (v77 + v63) | v74 & ~v82) + (__ROR8__(v82, 14) ^ __ROR8__(v82, 18) ^ __ROR8__(v82, 41));
        v87 = v86 + v70;
        v88 = (__ROR8__(v83, 28) ^ __ROR8__(v83, 34) ^ __ROR8__(v83, 39)) + (v83 & (v79 ^ v75) ^ v79 & v75) + v86;
        v27 += (__ROR8__(v31, 1) ^ __ROR8__(v31, 8) ^ (v31 >> 7)) + v60 + (__ROR8__(v80, 19) ^ __ROR8__(v80, 61) ^ (v80 >> 6));
        v89 = v27 + v74 + *(v71 - 11) + (v87 & v82 | (v77 + v63) & ~v87) + (__ROR8__(v86 + v70, 14) ^ __ROR8__(v86 + v70, 18) ^ __ROR8__(v86 + v70, 41));
        v90 = v89 + v75;
        v91 = (__ROR8__(v88, 28) ^ __ROR8__(v88, 34) ^ __ROR8__(v88, 39)) + (v88 & (v83 ^ v79) ^ v83 & v79) + v89;
        v139 = v85;
        v31 += (__ROR8__(v35, 1) ^ __ROR8__(v35, 8) ^ (v35 >> 7)) + v64 + (__ROR8__(v85, 19) ^ __ROR8__(v85, 61) ^ (v85 >> 6));
        v92 = *(v71 - 10) + v78 + v31 + (v90 & v87 | v82 & ~v90) + (__ROR8__(v89 + v75, 14) ^ __ROR8__(v89 + v75, 18) ^ __ROR8__(v90, 41));
        v93 = v92 + v79;
        v94 = (__ROR8__(v91, 28) ^ __ROR8__(v91, 34) ^ __ROR8__(v91, 39)) + (v91 & (v88 ^ v83) ^ v88 & v83) + v92;
        v35 += (__ROR8__(v137, 1) ^ __ROR8__(v137, 8) ^ (v137 >> 7)) + v67 + (__ROR8__(v27, 19) ^ __ROR8__(v27, 61) ^ (v27 >> 6));
        v95 = &v82[*(v71 - 9) + v35 + (v93 & v90 | v87 & ~v93) + (__ROR8__(v93, 14) ^ __ROR8__(v93, 18) ^ __ROR8__(v93, 41))];
        v96 = &v83[v95];
        v97 = (__ROR8__(v94, 28) ^ __ROR8__(v94, 34) ^ __ROR8__(v94, 39)) + (v94 & (v91 ^ v88) ^ v91 & v88) + v95;
        v98 = (__ROR8__(v136, 1) ^ __ROR8__(v136, 8) ^ (v136 >> 7)) + v137 + v72 + (__ROR8__(v31, 19) ^ __ROR8__(v31, 61) ^ (v31 >> 6));
        v99 = v98 + *(v71 - 8) + v87 + (v96 & v93 | v90 & ~v96) + (__ROR8__(v96, 14) ^ __ROR8__(v96, 18) ^ __ROR8__(v96, 41));
        v100 = v99 + v88;
        v101 = (__ROR8__(v97, 28) ^ __ROR8__(v97, 34) ^ __ROR8__(v97, 39)) + (v97 & (v94 ^ v91) ^ v94 & v91) + v99;
        v102 = (__ROR8__(v135, 1) ^ __ROR8__(v135, 8) ^ (v135 >> 7)) + v136 + v84 + (__ROR8__(v35, 19) ^ __ROR8__(v35, 61) ^ (v35 >> 6));
        v103 = v102 + *(v71 - 7) + v90 + (v100 & v96 | v93 & ~v100) + (__ROR8__(v100, 14) ^ __ROR8__(v100, 18) ^ __ROR8__(v100, 41));
        v104 = v103 + v91;
        v105 = (__ROR8__(v101, 28) ^ __ROR8__(v101, 34) ^ __ROR8__(v101, 39)) + (v101 & (v97 ^ v94) ^ v97 & v94) + v103;
        v106 = (__ROR8__(v48, 1) ^ __ROR8__(v48, 8) ^ (v48 >> 7)) + v135 + v80 + (__ROR8__(v98, 19) ^ __ROR8__(v98, 61) ^ (v98 >> 6));
        v107 = v106 + *(v71 - 6) + v93 + (v104 & v100 | v96 & ~v104) + (__ROR8__(v103 + v91, 14) ^ __ROR8__(v103 + v91, 18) ^ __ROR8__(v103 + v91, 41));
        v108 = v107 + v94;
        v109 = (__ROR8__(v105, 28) ^ __ROR8__(v105, 34) ^ __ROR8__(v105, 39)) + (v105 & (v101 ^ v97) ^ v101 & v97) + v107;
        v48 += (__ROR8__(v52, 1) ^ __ROR8__(v52, 8) ^ (v52 >> 7)) + v139 + (__ROR8__(v102, 19) ^ __ROR8__(v102, 61) ^ (v102 >> 6));
        v110 = &v96[v48 + *(v71 - 5) + (v108 & v104 | v100 & ~v108) + (__ROR8__(v108, 14) ^ __ROR8__(v108, 18) ^ __ROR8__(v108, 41))];
        v111 = v110 + v97;
        v112 = (__ROR8__(v109, 28) ^ __ROR8__(v109, 34) ^ __ROR8__(v109, 39)) + (v109 & (v105 ^ v101) ^ v105 & v101) + v110;
        v135 = v106;
        v52 += (__ROR8__(v56, 1) ^ __ROR8__(v56, 8) ^ (v56 >> 7)) + v27 + (__ROR8__(v106, 19) ^ __ROR8__(v106, 61) ^ (v106 >> 6));
        v113 = v52 + *(v71 - 4) + v100 + (v111 & v108 | v104 & ~v111) + (__ROR8__(v111, 14) ^ __ROR8__(v111, 18) ^ __ROR8__(v111, 41));
        v114 = v113 + v101;
        v115 = (__ROR8__(v112, 28) ^ __ROR8__(v112, 34) ^ __ROR8__(v112, 39)) + (v112 & (v109 ^ v105) ^ v109 & v105) + v113;
        v56 += (__ROR8__(v60, 1) ^ __ROR8__(v60, 8) ^ (v60 >> 7)) + v31 + (__ROR8__(v48, 19) ^ __ROR8__(v48, 61) ^ (v48 >> 6));
        v116 = v56 + *(v71 - 3) + v104 + (v114 & v111 | v108 & ~v114) + (__ROR8__(v113 + v101, 14) ^ __ROR8__(v113 + v101, 18) ^ __ROR8__(v114, 41));
        v58 = v116 + v105;
        v59 = (__ROR8__(v115, 28) ^ __ROR8__(v115, 34) ^ __ROR8__(v115, 39)) + (v115 & (v112 ^ v109) ^ v112 & v109) + v116;
        v60 += (__ROR8__(v64, 1) ^ __ROR8__(v64, 8) ^ (v64 >> 7)) + v35 + (__ROR8__(v52, 19) ^ __ROR8__(v52, 61) ^ (v52 >> 6));
        v117 = v60 + *(v71 - 2) + v108 + (v58 & v114 | v111 & ~v58) + (__ROR8__(v116 + v105, 14) ^ __ROR8__(v116 + v105, 18) ^ __ROR8__(v116 + v105, 41));
        v62 = v117 + v109;
        v63 = (__ROR8__(v59, 28) ^ __ROR8__(v59, 34) ^ __ROR8__(v59, 39)) + (v59 & (v115 ^ v112) ^ v115 & v112) + v117;
        v137 = v98;
        v118 = (__ROR8__(v67, 1) ^ __ROR8__(v67, 8) ^ (v67 >> 7)) + v64 + v98;
        v19 = v80;
        v64 = v118 + (__ROR8__(v56, 19) ^ __ROR8__(v56, 61) ^ (v56 >> 6));
        v119 = v64 + *(v71 - 1) + v111 + (v62 & v58 | v114 & ~v62) + (__ROR8__(v62, 14) ^ __ROR8__(v62, 18) ^ __ROR8__(v62, 41));
        result = v119 + v112;
        v66 = (__ROR8__(v63, 28) ^ __ROR8__(v63, 34) ^ __ROR8__(v63, 39)) + (v63 & (v59 ^ v115) ^ v59 & v115) + v119;
        v138 = v72;
        v136 = v102;
        v120 = (__ROR8__(v72, 1) ^ __ROR8__(v72, 8) ^ (v72 >> 7)) + v67 + v102;
        v23 = v139;
        v67 = v120 + (__ROR8__(v60, 19) ^ __ROR8__(v60, 61) ^ (v60 >> 6));
        v121 = v67 + *v71 + v114 + (result & v62 | v58 & ~result) + (__ROR8__(result, 14) ^ __ROR8__(result, 18) ^ __ROR8__(result, 41));
        v69 = v121 + v115;
        v70 = (__ROR8__(v66, 28) ^ __ROR8__(v66, 34) ^ __ROR8__(v66, 39)) + (v66 & (v63 ^ v59) ^ v63 & v59) + v121;
        v15 = v133;
        v11 = v134 + 16;
        v71 += 16;
      }

      while ((v134 + 16) < 0x40);
      v4 = v70 + v130;
      v3 = v66 + v129;
      *v122 = v70 + v130;
      v122[1] = v66 + v129;
      v6 = v63 + v128;
      v5 = v59 + v127;
      v122[2] = v63 + v128;
      v122[3] = v59 + v127;
      v8 = v69 + v126;
      v7 = result + v125;
      v122[4] = v69 + v126;
      v122[5] = result + v125;
      v10 = v62 + v124;
      v9 = v58 + v123;
      a2 = v131 + 16;
      v122[6] = v62 + v124;
      v122[7] = v58 + v123;
      a3 = v132 - 1;
    }

    while (v132 != 1);
  }

  return result;
}

uint64_t sub_23944673C(uint64_t *a1, _BYTE *a2, size_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a3)
  {
    return 1;
  }

  bzero(a2, a3);
  sub_239457D80(&stru_27DF76C68, sub_239431954);
  if (a1 == &qword_27DF78090)
  {
    sub_239457D80(&stru_27DF76BF8, sub_239431564);
    result = sub_2394468C4(a2, a3, &qword_27DF77F40, a4, a5 - (a5 >> 1), a6, a7, a8, a9, a10, a11);
    if (!result)
    {
      return result;
    }

    a4 += a5 >> 1;
    sub_239457D80(&stru_27DF76C08, sub_2394315F4);
    a5 -= a5 >> 1;
    a1 = &qword_27DF77F70;
  }

  return sub_2394468C4(a2, a3, a1, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_2394468C4(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v24 = *(a3 + 4);
  memset(v31, 0, sizeof(v31));
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  if (sub_23943AB9C(v27, a4, a5, a3))
  {
    if (sub_23943AFD4(v31, v27))
    {
      (*(v31[1] + 24))(&v31[1], a6, a7);
      (*(v31[1] + 24))(&v31[1], a8, a9);
      (*(v31[1] + 24))(&v31[1], a10, a11);
      if (sub_23943AD88(v31, v33, &v26))
      {
        while (1)
        {
          v25 = 0;
          if (!sub_23943AFD4(v31, v27))
          {
            break;
          }

          (*(v31[1] + 24))(&v31[1], v33, v26);
          if (a2 > v24 && !sub_23943AFD4(v29, v31))
          {
            break;
          }

          (*(v31[1] + 24))(&v31[1], a6, a7);
          (*(v31[1] + 24))(&v31[1], a8, a9);
          (*(v31[1] + 24))(&v31[1], a10, a11);
          if (!sub_23943AD88(v31, v32, &v25))
          {
            break;
          }

          if (a2 >= v25)
          {
            v16 = v25;
          }

          else
          {
            v16 = a2;
          }

          if (v16)
          {
            v17 = v32;
            v18 = a1;
            v19 = v16;
            do
            {
              v20 = *v17++;
              *v18++ ^= v20;
              --v19;
            }

            while (v19);
          }

          a2 -= v16;
          if (!a2)
          {
            v21 = 1;
            goto LABEL_18;
          }

          if (!sub_23943AD88(v29, v33, &v26))
          {
            break;
          }

          a1 += v16;
        }
      }
    }
  }

  v21 = 0;
LABEL_18:
  sub_239450194(v33, 0x40uLL);
  sub_23943AE54(v31);
  sub_23943AE54(v29);
  sub_23943AE54(v27);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_239446B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v19 = 0;
  v20 = 0;
  sub_2394065E4(v22);
  if (sub_2394065F4(v22, a7 + a9 + 10) && sub_239406F68(v22, a2) && sub_239406990(v22, v21) && sub_239406C48(v21, "tls13 ", 6uLL) && sub_239406C48(v21, a6, a7) && sub_239406990(v22, v21) && sub_239406C48(v21, a8, a9) && sub_2394066A4(v22, &v20, &v19))
  {
    v17 = sub_23943A8D4(a1, a2, a3, a4, a5, v20, v19);
    sub_239450144(v20);
  }

  else
  {
    sub_239406688(v22);
    return 0;
  }

  return v17;
}

uint64_t *sub_239446CAC(void *a1, uint64_t *a2)
{
  v8 = 0u;
  v10 = 0;
  v9 = 0u;
  v7 = 0u;
  v3 = a2[1];
  v6 = *a2;
  *(&v8 + 1) = v3;
  sub_239446D18(&v6);
  sub_239446DBC(&v6);
  result = sub_239446D18(&v6);
  v5 = *(&v8 + 1);
  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t *sub_239446D18(uint64_t *result)
{
  v1 = result[1];
  v2 = (v1 ^ (*result >> 1)) & 0x5555555555555555;
  v3 = *result ^ (2 * v2);
  v4 = v2 ^ v1;
  v5 = result[2];
  v6 = result[3];
  v7 = (v6 ^ (v5 >> 1)) & 0x5555555555555555;
  v8 = v5 ^ (2 * v7);
  v9 = v7 ^ v6;
  v10 = result[4];
  v11 = result[5];
  v12 = (v11 ^ (v10 >> 1)) & 0x5555555555555555;
  v13 = v10 ^ (2 * v12);
  v14 = v12 ^ v11;
  v15 = result[6];
  v16 = result[7];
  v17 = (v16 ^ (v15 >> 1)) & 0x5555555555555555;
  v18 = v15 ^ (2 * v17);
  v19 = v17 ^ v16;
  v20 = (v8 ^ (v3 >> 2)) & 0x3333333333333333;
  v21 = v3 ^ (4 * v20);
  v22 = v20 ^ v8;
  v23 = (v9 ^ (v4 >> 2)) & 0x3333333333333333;
  *result = v21;
  result[1] = v4 ^ (4 * v23);
  result[2] = v22;
  result[3] = v23 ^ v9;
  v24 = (v18 ^ (v13 >> 2)) & 0x3333333333333333;
  v25 = (v19 ^ (v14 >> 2)) & 0x3333333333333333;
  result[4] = v13 ^ (4 * v24);
  result[5] = v14 ^ (4 * v25);
  result[6] = v24 ^ v18;
  result[7] = v25 ^ v19;
  return result;
}

uint64_t *sub_239446DBC(uint64_t *result)
{
  v1 = result[6];
  v2 = result[7];
  v3 = result[4];
  v4 = result[2];
  v5 = v4 ^ v3;
  v6 = result[1];
  v7 = v6 ^ v2;
  v8 = v3 ^ v2;
  v9 = v4 ^ v2;
  v10 = result[5] ^ v1;
  v11 = *result ^ v10;
  v12 = v11 ^ v3;
  v13 = v6 ^ v2 ^ v5;
  v63 = v11 ^ v2;
  v14 = v11 ^ v6;
  v15 = v14 ^ v4 ^ v2;
  v16 = v13 ^ result[3];
  v17 = v16 ^ v4;
  v18 = v16 ^ v1;
  v19 = v17 ^ v10;
  v20 = v18 ^ v8;
  v21 = v18 ^ v8 ^ *result;
  v22 = v18 ^ v8 ^ v17 ^ v10;
  v23 = v18 ^ v8 ^ v10;
  v24 = (v18 ^ v8) & v8;
  v25 = v22 & v5 ^ v24;
  v26 = v24 ^ v19 & v9;
  v27 = v18 ^ v17 & v13 ^ (v17 ^ *result) & v15 ^ v25;
  v28 = v12 & *result ^ v9 ^ v17 & v13 ^ v19 ^ v26;
  v29 = v14 & v11 ^ v7 ^ v23 & v7 ^ v25;
  v30 = v21 & (v11 ^ v2) ^ v2 ^ v23 & v7 ^ v26;
  v31 = v30 ^ v23;
  v32 = v28 ^ v27;
  v33 = (v29 ^ v23) & v27;
  v34 = v33 ^ v30 ^ v23;
  v35 = v34 & v32 ^ v28;
  v36 = (v33 ^ v28) & (v30 ^ v29);
  v37 = v36 ^ v31;
  v38 = (v36 ^ v33) & v31;
  v39 = v38 ^ v29 ^ v23;
  v40 = (v38 ^ v34) & v35 ^ v32;
  v41 = v40 ^ v39 ^ v37;
  v42 = v41 ^ v37 ^ v35;
  v43 = (v39 ^ v37) & (v17 ^ *result);
  v44 = v37 & *result;
  v45 = (v40 ^ v35) & v23;
  v46 = v40 & v11;
  v47 = v35 & v21;
  v48 = v42 & v22;
  v49 = (v39 ^ v37) & v15;
  v50 = (v40 ^ v35) & v7;
  v51 = v42 & v5;
  v52 = v51 ^ (v37 ^ v35) & v8;
  v53 = v49 ^ v37 & v12;
  v54 = v40 & v14 ^ v47;
  v55 = v49 ^ v39 & v13;
  v56 = v45 ^ v39 & v17;
  v57 = v50 ^ v44 ^ v56;
  v58 = v45 ^ (v37 ^ v35) & v20 ^ v48;
  v59 = v48 ^ v41 & v19 ^ v52 ^ v46;
  v60 = v55 ^ v52 ^ v46;
  v61 = v58 ^ v46;
  v62 = v57 ^ v35 & v63 ^ v59;
  *result = v54 ^ v52 ^ ~v57;
  result[1] = v54 ^ v50 ^ ~v59;
  result[2] = v53 ^ v62;
  result[3] = v47 ^ v44 ^ v60 ^ v43;
  result[4] = v60 ^ v43 ^ v56;
  result[5] = v61 ^ v41 & v9 ^ v51 ^ ~v62;
  result[6] = v61 ^ ~(v60 ^ v43 ^ v56);
  result[7] = v60 ^ v58;
  return result;
}

int8x16_t sub_239446FEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*a1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (*a1 << 12) & 0xF000F000F000F000;
  v5 = v4 ^ *a1;
  v6 = (v1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v1 << 12) & 0xF000F000F000F000;
  v7 = v6 ^ v1;
  v8 = (v2 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v2 << 12) & 0xF000F000F000F000;
  v9 = v8 ^ v2;
  v10 = (v3 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v3 << 12) & 0xF000F000F000F000;
  v11 = v10 ^ v3;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = vbslq_s8(v14, vshrq_n_u64(v12, 4uLL), vshlq_n_s64(v12, 0xCuLL));
  v16 = veorq_s8(v15, v12);
  v17 = vdupq_laneq_s64(v16, 1);
  v18 = vbslq_s8(v14, vshrq_n_u64(v13, 4uLL), vshlq_n_s64(v13, 0xCuLL));
  *a1 = __rev16(v5) ^ v4 ^ v11;
  *(a1 + 8) = v5 ^ v6 ^ __rev16(v7) ^ v11;
  v19 = veorq_s8(veorq_s8(vzip1q_s64(vdupq_laneq_s64(v15, 1), v18), vdupq_n_s64(v11)), v16);
  *(a1 + 16) = __rev16(v16.u64[0]) ^ v15.i64[0] ^ v7;
  v20 = veorq_s8(v18, v13);
  v21 = vzip1q_s64(v17, v20);
  v17.i64[0] = 0xFF00FF00FF00FFLL;
  v17.i64[1] = 0xFF00FF00FF00FFLL;
  *(a1 + 24) = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), v19);
  v21.i64[0] = vdupq_laneq_s64(v20, 1).u64[0];
  v21.i64[1] = v9;
  v15.i64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v15.i64[1] = v8;
  result = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), veorq_s8(v15, v20));
  *(a1 + 40) = result;
  *(a1 + 56) = v9 ^ v10 ^ __rev16(v11);
  return result;
}

uint64_t *sub_239447124(uint64_t *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = result[6];
  v7 = result[7];
  v8 = v3 ^ *result;
  v9 = v5 ^ v2 ^ *result;
  v10 = v6 ^ v1 ^ v3;
  v11 = v4 ^ v1;
  *result = v5 ^ v2 ^ ~v7;
  result[1] = v8 ^ v6;
  result[2] = v11 ^ ~v7;
  result[3] = v9;
  result[4] = v10;
  result[5] = v7 ^ v2 ^ v4;
  result[6] = v8 ^ v5;
  result[7] = v11 ^ v6;
  return result;
}

void **sub_239447188(uint64_t a1, uint64_t *a2)
{
  result = sub_239421F90(a1, a2);
  if (result)
  {
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
    *(a1 + 48) = sub_239422114(a2);
    *(a1 + 52) = 0;
    return 1;
  }

  return result;
}

uint64_t sub_2394471CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a5);
  result = sub_239422E50(a5);
  if (!result)
  {
    goto LABEL_53;
  }

  if (!a3)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v11 = result;
  if (a2 == a3)
  {
    result = sub_23942429C(result, a2, a5);
    if (!result)
    {
      goto LABEL_53;
    }

LABEL_8:
    sub_239422DA4(a5);
    v12 = sub_239422E50(a5);
    v13 = sub_239422E50(a5);
    v14 = sub_239422E50(a5);
    if (!a1)
    {
      a1 = sub_239422E50(a5);
    }

    result = 0;
    if (v12 && v13 && v14 && a1)
    {
      if ((sub_2394228F8(*v11, *(v11 + 8), *a4, *(a4 + 8)) & 0x80000000) != 0)
      {
        *(v14 + 4) = 0;
        *(v14 + 2) = 0;
        result = sub_239421F90(a1, v11);
        if (result)
        {
          result = 1;
          if (*(a5 + 40))
          {
            goto LABEL_53;
          }

LABEL_52:
          v28 = *(a5 + 8);
          v29 = *(a5 + 16) - 1;
          *(a5 + 16) = v29;
          *(a5 + 32) = *(v28 + 8 * v29);
          goto LABEL_53;
        }
      }

      else
      {
        v15 = sub_239422114(v11);
        if (2 * *(a4 + 48) <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = 2 * *(a4 + 48);
        }

        if (v16 == *(a4 + 52))
        {
          v17 = v16;
        }

        else
        {
          sub_239422DA4(a5);
          v18 = sub_239422E50(a5);
          if (v18 && (v19 = v18, sub_239429B0C(v18, v16)))
          {
            if (sub_239422F7C((a4 + 24), 0, v19, a4, a5))
            {
              v17 = v16;
            }

            else
            {
              v17 = -1;
            }
          }

          else
          {
            v17 = -1;
          }

          if (!*(a5 + 40))
          {
            v20 = *(a5 + 8);
            v21 = *(a5 + 16) - 1;
            *(a5 + 16) = v21;
            *(a5 + 32) = *(v20 + 8 * v21);
          }

          *(a4 + 52) = v17;
        }

        if (v17 == -1)
        {
LABEL_50:
          result = 0;
        }

        else
        {
          result = sub_23942373C(v12, v11, *(a4 + 48));
          if (result)
          {
            result = sub_239424304(v13, v12, a4 + 24, a5);
            if (result)
            {
              result = sub_23942373C(v14, v13, v16 - *(a4 + 48));
              if (result)
              {
                *(v14 + 4) = 0;
                result = sub_239424304(v13, a4, v14, a5);
                if (result)
                {
                  result = sub_239421484(a1, v11, v13);
                  if (result)
                  {
                    *(a1 + 4) = 0;
                    v22 = 4;
                    while (1)
                    {
                      v23 = *a1;
                      v24 = *(a1 + 2);
                      if ((sub_2394228F8(*a1, v24, *a4, *(a4 + 8)) & 0x80000000) != 0)
                      {
                        break;
                      }

                      if (!--v22)
                      {
                        sub_2394170F4(3, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/exponentiation.c", 367);
                        goto LABEL_50;
                      }

                      result = sub_239421484(a1, a1, a4);
                      if (result)
                      {
                        v25 = sub_2394217D4(v14, 1uLL);
                        result = 0;
                        if (v25)
                        {
                          continue;
                        }
                      }

                      goto LABEL_51;
                    }

                    if (v24)
                    {
                      v26 = 0;
                      do
                      {
                        v27 = *v23++;
                        v26 |= v27;
                        --v24;
                      }

                      while (v24);
                      if (v26)
                      {
                        LODWORD(v26) = *(v11 + 16);
                      }
                    }

                    else
                    {
                      LODWORD(v26) = 0;
                    }

                    *(a1 + 4) = v26;
                    *(v14 + 4) = *(a4 + 16) ^ *(v11 + 16);
                    result = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_51:
    if (*(a5 + 40))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  result = sub_239424304(result, a2, a3, a5);
  if (result)
  {
    goto LABEL_8;
  }

LABEL_53:
  if (!*(a5 + 40))
  {
    v30 = *(a5 + 8);
    v31 = *(a5 + 16) - 1;
    *(a5 + 16) = v31;
    *(a5 + 32) = *(v30 + 8 * v31);
  }

  return result;
}

unint64_t sub_239447508(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, unsigned int a5)
{
  v9 = a4;
  result = sub_239421D64(a1, a2, a3, a4);
  if (a5)
  {
    v11 = &a1[v9];
    if ((a5 & 0x80000000) != 0)
    {
      v16 = &a3[v9];
      if (-a5 > 1)
      {
        v17 = -a5;
      }

      else
      {
        v17 = 1;
      }

      do
      {
        v18 = *v16++;
        v19 = v18 != 0;
        v20 = -v18 - result;
        result = -v18 < result || v19;
        *v11++ = v20;
        --v17;
      }

      while (v17);
    }

    else
    {
      v12 = &a2[v9];
      v13 = a5;
      do
      {
        v14 = *v12++;
        v15 = v14 - result;
        result = v14 < result;
        *v11++ = v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void sub_2394475B4(uint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned int a4, int a5, int a6, unint64_t *a7)
{
  v13 = 2 * a4;
  if (a4 > 7)
  {
    v44 = a4;
    v15 = &a7[v13];
    v43 = &a2[a4];
    v45 = sub_23942A1D8(a7, a2, v43, a5, a4 - a5, v15);
    v39 = &a7[a4];
    v16 = sub_23942A1D8(v39, &a3[a4], a3, a6, a6 - a4, v15) ^ v45;
    v42 = v13;
    v41 = &a1[v13];
    v17 = 4 * a4;
    if (a4 == 8)
    {
      sub_2394284B4(v15, a7, v39);
      sub_2394284B4(a1, a2, a3);
      v18 = v41;
      sub_23942A4EC(v41, v43, a5, a3 + 8, a6);
      v19 = v42;
      if (a6 + a5 != 16)
      {
        bzero(&a1[a6 + a5 + v42], 8 * (16 - (a6 + a5)));
      }
    }

    else
    {
      v38 = &a3[a4];
      sub_23944793C(v15, a7, v39, a4, 0, 0, &a7[v17]);
      v40 = &a7[v17];
      sub_23944793C(a1, a2, a3, a4, 0, 0, v40);
      v19 = v42;
      v18 = v41;
      bzero(v41, 8 * v42);
      if (a5 > 15 || a6 >= 16)
      {
        if (a5 <= a6)
        {
          v20 = a6;
        }

        else
        {
          v20 = a5;
        }

        LODWORD(v21) = a4;
        while (1)
        {
          v21 = (v21 / 2);
          if (v21 < v20)
          {
            break;
          }

          if (a5 == v21 || a6 == v21)
          {
            sub_23944793C(v41, v43, v38, v21, (a5 - v21), (a6 - v21), v40);
            goto LABEL_24;
          }
        }

        sub_2394475B4(v41, v43, v38, v21, (a5 - v21), (a6 - v21), v40);
      }

      else
      {
        sub_23942A4EC(v41, v43, a5, v38, a6);
      }
    }

LABEL_24:
    v23 = sub_2394216D4(a7, a1, v18, v19);
    v24 = &a7[v17];
    v25 = sub_239421D64(v24, a7, v15, v19);
    v26 = sub_2394216D4(v15, a7, v15, v19);
    v27 = v19;
    v28 = v26;
    v29 = ~v16;
    v30 = v15;
    v31 = v27;
    do
    {
      v32 = *v24++;
      *v30 = *v30 & v29 | v32 & v16;
      ++v30;
      --v31;
    }

    while (v31);
    v33 = sub_2394216D4(&a1[v44], &a1[v44], v15, v27);
    v34 = 3 * a4;
    v35 = (v16 & (v23 - v25) | (v28 + v23) & v29) + v33;
    v36 = &a1[3 * a4];
    do
    {
      v37 = *v36 + v35;
      v35 = __CFADD__(*v36, v35);
      *v36++ = v37;
      ++v34;
    }

    while (v17 > v34);
  }

  else
  {
    sub_23942A4EC(a1, a2, (a5 + a4), a3, (a6 + a4));
    if (v13 != a6 + a5)
    {

      bzero(&a1[v13 + a5 + a6], v13 - (a6 + a5));
    }
  }
}

void sub_23944793C(uint64_t *a1, unint64_t *a2, unint64_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v14 = a6 | a5;
  if (a4 != 8 || v14)
  {
    if (a4 > 15)
    {
      v15 = a4 >> 1;
      v39 = a6 + (a4 >> 1);
      v35 = &a2[a4 >> 1];
      v36 = sub_23942A1D8(a7, a2, v35, a5 + (a4 >> 1), -a5, &a7[a4]);
      v38 = &a7[a4];
      v32 = &a7[v15];
      v33 = &a3[v15];
      v16 = sub_23942A1D8(v32, v33, a3, v39, a6, v38) ^ v36;
      v40 = a1;
      v34 = &a1[a4];
      v37 = a4 >> 1;
      if (v15 != 8 || v14)
      {
        v19 = 2 * a4;
        v17 = &a7[a4];
        sub_23944793C(v38, a7, v32, v37, 0, 0);
        sub_23944793C(a1, a2, a3, v37, 0, 0);
        v18 = &a1[a4];
        sub_23944793C(v34, v35, v33, v37, a5, a6);
      }

      else
      {
        v17 = &a7[a4];
        sub_2394284B4(v38, a7, v32);
        sub_2394284B4(a1, a2, a3);
        v18 = &a1[a4];
        sub_2394284B4(v34, v35, v33);
        v19 = 2 * a4;
      }

      v20 = sub_2394216D4(a7, a1, v18, a4);
      v21 = &a7[v19];
      v22 = sub_239421D64(v21, a7, v17, a4);
      v23 = sub_2394216D4(v17, a7, v17, a4);
      v24 = ~v16;
      v25 = a4;
      do
      {
        v26 = *v21++;
        *v17 = *v17 & v24 | v26 & v16;
        ++v17;
        --v25;
      }

      while (v25);
      v27 = sub_2394216D4(&v40[v37], &v40[v37], v38, a4);
      v28 = v37 + a4;
      if ((v37 + a4) < v19)
      {
        v29 = (v16 & (v20 - v22) | (v23 + v20) & v24) + v27;
        v30 = &v40[v28];
        do
        {
          v31 = *v30 + v29;
          v29 = __CFADD__(*v30, v29);
          *v30++ = v31;
          ++v28;
        }

        while (v19 > v28);
      }
    }

    else
    {
      sub_23942A4EC(a1, a2, (a5 + a4), a3, (a6 + a4));
      if (a6 + a5 < 0)
      {

        bzero(&a1[(a5 + 2 * a4 + a6)], 8 * -(a6 + a5));
      }
    }
  }

  else
  {

    sub_2394284B4(a1, a2, a3);
  }
}

uint64_t sub_239447C68(uint64_t a1, _OWORD *a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  v5 = *(*a1 + 20) & 0x3F;
  if (v5 == 5)
  {
    v6 = 0;
LABEL_3:
    sub_23941F384(a2, 8 * *(a1 + 24), v4);
    v7 = sub_23941F1D4;
    goto LABEL_7;
  }

  v6 = v5 == 2;
  if (a4 || (v5 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_3;
  }

  sub_23941F384(a2, 8 * *(a1 + 24), v4);
  v7 = sub_23941F29C;
LABEL_7:
  *(v4 + 248) = v7;
  if (v6)
  {
    v8 = sub_239420158;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 256) = v8;
  return 1;
}

uint64_t sub_239447D20(uint64_t a1, __n128 *a2, unint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 256);
  if (v6)
  {
    v7 = *(a1 + 28);
    v6(a3, a2, a4);
  }

  else
  {
    v8 = *(v5 + 248);
    v9 = (a1 + 52);
    if (*(a1 + 28))
    {
      sub_239420CB8(a3, a2, a4, v5, v9, v8);
    }

    else
    {
      sub_239420DF8(a3, a2, a4, v5, v9, v8);
    }
  }

  return 1;
}

uint64_t sub_239447D84(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 256);
  if (v6)
  {
    sub_23942098C(a3, a2, a4, v5, a1 + 52, (a1 + 68), (a1 + 104), v6);
  }

  else
  {
    sub_239420B3C(a3, a2, a4, v5, a1 + 52, (a1 + 68), (a1 + 104), *(v5 + 248));
  }

  return 1;
}

uint64_t sub_239447E1C(uint64_t a1, unint64_t a2, void *__src)
{
  if (a2 | __src)
  {
    v3 = __src;
    v4 = *(a1 + 16) + (*(a1 + 16) & 8);
    if (a2)
    {
      *(v4 + 352) = 0u;
      *(v4 + 368) = 0u;
      *(v4 + 320) = 0u;
      *(v4 + 336) = 0u;
      *(v4 + 288) = 0u;
      *(v4 + 304) = 0u;
      *(v4 + 256) = 0u;
      *(v4 + 272) = 0u;
      *(v4 + 224) = 0u;
      *(v4 + 240) = 0u;
      *(v4 + 192) = 0u;
      *(v4 + 208) = 0u;
      *(v4 + 160) = 0u;
      *(v4 + 176) = 0u;
      *(v4 + 128) = 0u;
      *(v4 + 144) = 0u;
      *(v4 + 96) = 0u;
      *(v4 + 112) = 0u;
      *(v4 + 48) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *v4 = 0u;
      *(v4 + 80) = 0u;
      sub_23942E85C(v4 + 384, v4 + 80, 0, a2, *(a1 + 24));
      *(v4 + 664) = sub_23941FF90;
      if (v3 || *(v4 + 636) && (v3 = *(v4 + 640)) != 0)
      {
        sub_23943C998(v4, v4 + 384, v3, *(v4 + 648));
        *(v4 + 636) = 1;
      }

      *(v4 + 632) = 1;
    }

    else
    {
      if (*(v4 + 632))
      {
        sub_23943C998(v4, v4 + 384, __src, *(v4 + 648));
      }

      else
      {
        v5 = *(v4 + 648);
        if (v5)
        {
          memcpy(*(v4 + 640), v3, v5);
        }
      }

      *(v4 + 636) = 1;
      *(v4 + 656) = 0;
    }
  }

  return 1;
}

uint64_t sub_239447F3C(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4, int8x16_t a5)
{
  v5 = *(a1 + 16) + (*(a1 + 16) & 8);
  if (!*(v5 + 632))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (!(a4 >> 31) && *(v5 + 636))
  {
    if (!a3)
    {
      if (*(a1 + 28))
      {
        sub_23943D464(v5, 0, 0);
        result = 0;
        *(a1 + 68) = *(v5 + 64);
        *(v5 + 652) = 16;
      }

      else
      {
        v12 = *(v5 + 652);
        if ((v12 & 0x80000000) != 0)
        {
          return result;
        }

        if (!sub_23943D464(v5, (a1 + 68), v12))
        {
          return 0xFFFFFFFFLL;
        }

        result = 0;
      }

      *(v5 + 636) = 0;
      return result;
    }

    if (a2)
    {
      v10 = *(v5 + 664);
      v11 = v5 + 384;
      if (*(a1 + 28))
      {
        if (v10)
        {
          if (!sub_23943D05C(v5, v11, a3->i8, a2, a4, v10, a5))
          {
            return 0xFFFFFFFFLL;
          }

          return a4;
        }

        if (sub_23943CBD8(v5, v11, a3->i8, a2, a4, a5))
        {
          return a4;
        }
      }

      else
      {
        if (v10)
        {
          if (!sub_23943D260(v5, v11, a3, a2, a4, v10))
          {
            return 0xFFFFFFFFLL;
          }

          return a4;
        }

        if (sub_23943CE28(v5, v11, a3, a2->i64, a4, a5))
        {
          return a4;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (!sub_23943CAC8(v5, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    return a4;
  }

  return result;
}

void sub_23944805C(uint64_t a1)
{
  v2 = (*(a1 + 16) + (*(a1 + 16) & 8));
  sub_239450194(v2, 0x180uLL);
  v3 = v2[80];
  if (v3 != (a1 + 52))
  {

    sub_239450144(v3);
  }
}

uint64_t sub_2394480C0(uint64_t a1, int a2, size_t __n, char *__src)
{
  v5 = __n;
  v7 = *(a1 + 16) + (*(a1 + 16) & 8);
  result = 0xFFFFFFFFLL;
  if (a2 > 16)
  {
    if (a2 > 18)
    {
      switch(a2)
      {
        case 19:
          if (!*(v7 + 656) || !*(v7 + 632))
          {
            return 0;
          }

          sub_23943C998(v7, v7 + 384, *(v7 + 640), *(v7 + 648));
          v12 = *(v7 + 648);
          if (v5 >= 1 && v12 >= v5 || (v5 = *(v7 + 648), v12))
          {
            memcpy(__src, (*(v7 + 640) + v12 - v5), v5);
            v13 = *(v7 + 648);
          }

          else
          {
            v13 = 0;
          }

          *(*(v7 + 640) + v13 - 8) = bswap64(bswap64(*(*(v7 + 640) + v13 - 8)) + 1);
          break;
        case 24:
          if (!*(v7 + 656) || !*(v7 + 632) || *(a1 + 28))
          {
            return 0;
          }

          if (__n)
          {
            memcpy((*(v7 + 640) + *(v7 + 648) - __n), __src, __n);
          }

          sub_23943C998(v7, v7 + 384, *(v7 + 640), *(v7 + 648));
          break;
        case 25:
          *__src = *(v7 + 648);
          return 1;
        default:
          return result;
      }

      result = 1;
      *(v7 + 636) = 1;
      return result;
    }

    if (a2 != 17)
    {
      if (__n == -1)
      {
        v14 = *(v7 + 648);
        if (v14)
        {
          memcpy(*(v7 + 640), __src, v14);
        }
      }

      else
      {
        if (__n < 4 || *(v7 + 648) - __n < 8)
        {
          return 0;
        }

        memcpy(*(v7 + 640), __src, __n);
        if (*(a1 + 28))
        {
          sub_23942C3F4((*(v7 + 640) + v5), *(v7 + 648) - v5, &unk_2395CADE8);
        }
      }

      result = 1;
      *(v7 + 656) = 1;
      return result;
    }

    if ((__n - 17) < 0xFFFFFFF0 || *(a1 + 28))
    {
      return 0;
    }

    memcpy((a1 + 68), __src, __n);
    *(v7 + 652) = v5;
    return 1;
  }

  if (a2 <= 8)
  {
    if (a2)
    {
      if (a2 != 8)
      {
        return result;
      }

      v9 = (*(__src + 2) + (*(__src + 2) & 8));
      memcpy(v9, v7, 0x2A0uLL);
      v10 = *(v7 + 640);
      if (v10 == (a1 + 52))
      {
        v9[80] = __src + 52;
      }

      else
      {
        result = sub_239450350(v10, *(v7 + 648));
        v9[80] = result;
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      *(v7 + 632) = 0;
      *(v7 + 648) = *(*a1 + 12);
      *(v7 + 640) = a1 + 52;
      *(v7 + 652) = 0xFFFFFFFFLL;
    }

    return 1;
  }

  if (a2 != 9)
  {
    if (a2 != 16)
    {
      return result;
    }

    if ((__n - 17) < 0xFFFFFFF0 || !*(a1 + 28) || (*(v7 + 652) & 0x80000000) != 0)
    {
      return 0;
    }

    memcpy(__src, (a1 + 68), __n);
    return 1;
  }

  if (__n < 1)
  {
    return 0;
  }

  if (__n < 0x11 || *(v7 + 648) >= __n)
  {
    goto LABEL_32;
  }

  v11 = *(v7 + 640);
  if (v11 != (a1 + 52))
  {
    sub_239450144(v11);
  }

  result = sub_23945004C(v5);
  *(v7 + 640) = result;
  if (result)
  {
LABEL_32:
    *(v7 + 648) = v5;
    return 1;
  }

  return result;
}

double sub_2394483F0()
{
  *&dword_27DF77B10 = 0u;
  *algn_27DF77B30 = 0u;
  qword_27DF77B08 = 0x10000001A2;
  dword_27DF77B10 = 16;
  *&result = 0x100000108;
  qword_27DF77B18 = 0x100000108;
  qword_27DF77B20 = sub_239447C68;
  qword_27DF77B28 = sub_23944844C;
  return result;
}

uint64_t sub_23944844C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v8 = 0;
    v9 = a1[2];
    do
    {
      (*(v9 + 248))(a3 + v8, a2 + v8, v9);
      v8 += v4;
    }

    while (v8 <= v5);
  }

  return 1;
}

double sub_2394484BC()
{
  *&dword_27DF77B48 = 0u;
  unk_27DF77B68 = 0u;
  qword_27DF77B40 = 0x10000001A6;
  dword_27DF77B48 = 24;
  *&result = 0x100000108;
  qword_27DF77B50 = 0x100000108;
  qword_27DF77B58 = sub_239447C68;
  qword_27DF77B60 = sub_23944844C;
  return result;
}

double sub_239448518()
{
  *&dword_27DF77B80 = 0u;
  unk_27DF77BA0 = 0u;
  qword_27DF77B78 = 0x10000001AALL;
  dword_27DF77B80 = 32;
  *&result = 0x100000108;
  qword_27DF77B88 = 0x100000108;
  qword_27DF77B90 = sub_239447C68;
  qword_27DF77B98 = sub_23944844C;
  return result;
}

uint64_t sub_239448574(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  v6 = 0;
  result = sub_239448638(a1 + 8, &v6, a2, a3, a4);
  if (result)
  {
    *(a1 + 576) = v6;
    return 1;
  }

  return result;
}

uint64_t sub_239448638(uint64_t a1, unint64_t *a2, _OWORD *a3, uint64_t a4, unint64_t a5)
{
  if ((a4 & 0x1FFFFFFFFFFFFFF7) != 0x10 && (a4 & 0x1FFFFFFFFFFFFFFFLL) != 0x20)
  {
    v7 = 102;
    v8 = 902;
LABEL_9:
    sub_2394170F4(30, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v8);
    return 0;
  }

  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = 16;
  }

  if (v9 >= 0x11)
  {
    v7 = 116;
    v8 = 911;
    goto LABEL_9;
  }

  sub_23942E85C(a1, a1 + 248, 0, a3, a4);
  *(a1 + 536) = sub_23941FF90;
  *a2 = v9;
  return 1;
}

uint64_t sub_239448708(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t *a6, unint64_t a7, char *a8, unint64_t a9, char *a10, unint64_t a11, int8x16_t *a12, uint64_t a13, unint64_t a14)
{
  v32 = *MEMORY[0x277D85DE8];
  v14 = a14 + a11;
  if (__CFADD__(a14, a11))
  {
    v15 = 117;
    v16 = 953;
LABEL_13:
    sub_2394170F4(30, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v16);
    result = 0;
    goto LABEL_14;
  }

  if (v14 > a5)
  {
    v15 = 103;
    v16 = 957;
    goto LABEL_13;
  }

  if (!a7)
  {
    v15 = 111;
    v16 = 961;
    goto LABEL_13;
  }

  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  memcpy(v31, (a1 + 248), 0x120uLL);
  sub_23943C998(v30, a1, a6, a7);
  if (!a13 || (result = sub_23943CAC8(v30, a12, a13), result))
  {
    v26 = *(a1 + 536);
    if (v26)
    {
      result = sub_23943D05C(v30, a1, a8, a2, a9, v26, v24);
      if (!result)
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = sub_23943CBD8(v30, a1, a8, a2, a9, v24);
      if (!result)
      {
        goto LABEL_14;
      }
    }

    if (a11)
    {
      v29 = *(a1 + 536);
      if (v29)
      {
        result = sub_23943D05C(v30, a1, a10, a3, a11, v29, v27);
        if (!result)
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_23943CBD8(v30, a1, a10, a3, a11, v27);
        if (!result)
        {
          goto LABEL_14;
        }
      }
    }

    sub_23943D50C(v30, &a3->i8[a11], a14);
    *a4 = v14;
    result = 1;
  }

LABEL_14:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239448924(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4, int8x16_t *a5, unint64_t a6, char *a7, unint64_t a8, int8x16_t *a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v22 = 111;
    v23 = 1032;
LABEL_9:
    sub_2394170F4(30, 0, v22, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v23);
    result = 0;
    goto LABEL_10;
  }

  if (a8 != a11)
  {
    v22 = 101;
    v23 = 1037;
    goto LABEL_9;
  }

  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memcpy(v26, (a1 + 248), 0x120uLL);
  sub_23943C998(v25, a1, a3, a4);
  result = sub_23943CAC8(v25, a9, a10);
  if (result)
  {
    v21 = *(a1 + 536);
    if (v21)
    {
      result = sub_23943D260(v25, a1, a5, a2, a6, v21);
      if (!result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = sub_23943CE28(v25, a1, a5, a2, a6, v20);
      if (!result)
      {
        goto LABEL_10;
      }
    }

    sub_23943D50C(v25, v27, a8);
    if (!sub_23945022C(v27, a7, a8))
    {
      result = 1;
      goto LABEL_10;
    }

    v22 = 101;
    v23 = 1065;
    goto LABEL_9;
  }

LABEL_10:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239448B00(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 <= 0xB)
    {
      sub_2394170F4(30, 0, 103, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", 1138);
      return 0;
    }

    v6 = a4 - 12;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  result = sub_239448638(a1 + 8, &v7, a2, a3, v6);
  if (result)
  {
    *(a1 + 576) = v7 + 12;
    return 1;
  }

  return result;
}

uint64_t sub_239448B94(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, char *a8, unint64_t a9, char *a10, unint64_t a11, int8x16_t *a12, uint64_t a13)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = 111;
    v14 = 1160;
LABEL_5:
    sub_2394170F4(30, 0, v13, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v14);
    result = 0;
    goto LABEL_6;
  }

  if (a5 <= 0xB)
  {
    v13 = 103;
    v14 = 1166;
    goto LABEL_5;
  }

  sub_23942C3F4(&v24, 0xCuLL, &unk_2395CADE8);
  result = sub_239448708(a1 + 8, a2, a3, a4, a5 - 12, &v24, 0xCuLL, a8, a9, a10, a11, a12, a13, *(a1 + 576) - 12);
  if (result)
  {
    v23 = &a3->i8[*a4];
    *v23 = v24;
    *(v23 + 2) = v25;
    *a4 += 12;
    result = 1;
  }

LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239448CF4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, unint64_t a6, char *a7, unint64_t a8, int8x16_t *a9, uint64_t a10)
{
  if (a4)
  {
    v10 = 111;
    v11 = 1201;
  }

  else
  {
    if (a8 > 0xB)
    {
      return sub_239448924(a1 + 8, a2, &a7[a8 - 12], 0xCuLL, a5, a6, a7, a8 - 12, a9, a10, *(a1 + 576) - 12);
    }

    v10 = 101;
    v11 = 1206;
  }

  sub_2394170F4(30, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v11);
  return 0;
}

uint64_t sub_239448D84(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  *(a1 + 552) = 0;
  v6 = 0;
  result = sub_239448638(a1 + 8, &v6, a2, a3, a4);
  if (result)
  {
    *(a1 + 576) = v6;
    return 1;
  }

  return result;
}

uint64_t sub_239448DDC(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t *a6, uint64_t a7, char *a8, unint64_t a9, char *a10, unint64_t a11, int8x16_t *a12, uint64_t a13)
{
  if (a7 == 12)
  {
    v13 = *(a6 + 4);
    if (v13 != -1)
    {
      v14 = bswap64(v13);
      if (v14 >= *(a1 + 552))
      {
        *(a1 + 552) = v14 + 1;
        return sub_239448708(a1 + 8, a2, a3, a4, a5, a6, 0xCuLL, a8, a9, a10, a11, a12, a13, *(a1 + 576));
      }
    }

    v15 = 125;
    v16 = 1300;
  }

  else
  {
    v15 = 121;
    v16 = 1292;
  }

  sub_2394170F4(30, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v16);
  return 0;
}

uint64_t sub_239448E8C(uint64_t a1, _OWORD *a2, uint64_t a3, unint64_t a4)
{
  *(a1 + 552) = 0;
  *(a1 + 568) = 1;
  v6 = 0;
  result = sub_239448638(a1 + 8, &v6, a2, a3, a4);
  if (result)
  {
    *(a1 + 576) = v6;
    return 1;
  }

  return result;
}

uint64_t sub_239448EEC(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, char *a8, unint64_t a9, char *a10, unint64_t a11, int8x16_t *a12, uint64_t a13)
{
  if (a7 == 12)
  {
    v13 = bswap64(*(a6 + 4));
    if (*(a1 + 568))
    {
      *(a1 + 560) = v13;
      *(a1 + 568) = 0;
      v14 = v13;
    }

    else
    {
      v14 = *(a1 + 560);
    }

    v17 = v14 ^ v13;
    if (v17 != -1 && v17 >= *(a1 + 552))
    {
      *(a1 + 552) = v17 + 1;
      return sub_239448708(a1 + 8, a2, a3, a4, a5, a6, 0xCuLL, a8, a9, a10, a11, a12, a13, *(a1 + 576));
    }

    v15 = 125;
    v16 = 1407;
  }

  else
  {
    v15 = 121;
    v16 = 1387;
  }

  sub_2394170F4(30, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aes.c", v16);
  return 0;
}

uint64_t sub_239448FC8(uint64_t a1, _BYTE *a2, void *a3, void *a4, size_t a5, void *__src, size_t __n, char *a8, unint64_t a9, uint64_t a10, uint64_t a11, char *a12, unint64_t a13)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 276);
  if (v13 > 7 || a9 >> (8 * v13) == 0)
  {
    v16 = *(a1 + 576);
    if (v16 <= a5)
    {
      if (*(*a1 + 1) == __n)
      {
        memset(v25, 0, sizeof(v25));
        if (sub_239449424(a1 + 256, v25, a1 + 8, __src, __n, a12, a13, a9) && sub_2394496B0(a1 + 256, v25, a1 + 8, a3, v16, a8, a9))
        {
          sub_239449820(a1 + 256, v25, a1 + 8, a2, a8, a9);
          *a4 = *(a1 + 576);
          result = 1;
          goto LABEL_9;
        }

        v17 = 117;
        v18 = 341;
      }

      else
      {
        v17 = 111;
        v18 = 334;
      }
    }

    else
    {
      v17 = 103;
      v18 = 329;
    }
  }

  else
  {
    v17 = 117;
    v18 = 324;
  }

  sub_2394170F4(30, 0, v17, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aesccm.c", v18);
  result = 0;
LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239449174(uint64_t a1, char *a2, void *__src, size_t __n, uint64_t a5, unint64_t a6, char *a7, size_t a8, char *a9, unint64_t a10)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 276);
  if (v10 > 7 || a6 >> (8 * v10) == 0)
  {
    if (*(*a1 + 1) == __n)
    {
      if (*(a1 + 576) == a8)
      {
        memset(v23, 0, sizeof(v23));
        if (sub_239449424(a1 + 256, v23, a1 + 8, __src, __n, a9, a10, a6) && (sub_239449820(a1 + 256, v23, a1 + 8, a2, a5, a6), sub_2394496B0(a1 + 256, v23, a1 + 8, v22, a8, a2, a6)))
        {
          if (!sub_23945022C(v22, a7, *(a1 + 576)))
          {
            result = 1;
            goto LABEL_16;
          }

          v18 = 101;
          v19 = 383;
        }

        else
        {
          v18 = 117;
          v19 = 378;
        }
      }

      else
      {
        v18 = 101;
        v19 = 369;
      }
    }

    else
    {
      v18 = 111;
      v19 = 364;
    }
  }

  else
  {
    v18 = 117;
    v19 = 359;
  }

  sub_2394170F4(30, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aesccm.c", v19);
  result = 0;
LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239449338(unsigned __int8 **a1, _OWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (**a1 != a3)
  {
    v7 = 102;
    v8 = 287;
    goto LABEL_6;
  }

  if (a4 && a5 != a4)
  {
    v7 = 116;
    v8 = 296;
LABEL_6:
    sub_2394170F4(30, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/e_aesccm.c", v8);
    return 0;
  }

  sub_23941F384(a2, 8 * a3, (a1 + 1));
  *(a1 + 576) = a5;
  if (a5)
  {
    v7 = 68;
    v8 = 306;
    goto LABEL_6;
  }

  a1[32] = sub_23941F1D4;
  a1[33] = sub_23941FF90;
  *(a1 + 68) = a5;
  *(a1 + 69) = 2;
  return 1;
}

uint64_t sub_239449424(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, size_t __n, char *a6, unint64_t a7, unint64_t a8)
{
  v8 = *(a1 + 20);
  v10 = v8 > 7 || a8 >> (8 * v8) == 0;
  if (15 - v8 != __n || !v10)
  {
    return 0;
  }

  v13 = a7;
  v17 = *a1;
  v18 = *(a1 + 16);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v19 = (((4 * v18) & 0xF8) - 8) | (v8 - 1);
  if (a7)
  {
    v19 |= 0x40u;
  }

  *a2 = v19;
  if (__n)
  {
    memcpy((a2 + 1), __src, __n);
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      *(a2 + (15 - i)) = a8 >> (8 * i);
    }
  }

  v21 = (a2 + 16);
  v17(a2, a2 + 16, a3, __src);
  if (v13)
  {
    if (v13 >> 8 > 0xFE)
    {
      *(a2 + 16) = ~*(a2 + 16);
      v25 = *(a2 + 17);
      if (HIDWORD(v13))
      {
        *(a2 + 17) = ~v25;
        v26 = vdupq_n_s64(v13);
        v27 = vshlq_u64(v26, xmmword_2395CAA80);
        v28 = vuzp1q_s32(vshlq_u64(v26, xmmword_2395CAA90), v27);
        v27.i32[0] = *(a2 + 18);
        *v28.i8 = veor_s8(*&vmovl_u8(*v27.i8), vmovn_s32(v28));
        *(a2 + 18) = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
        *(a2 + 22) ^= BYTE3(v13);
        *(a2 + 23) ^= BYTE2(v13);
        *(a2 + 24) ^= BYTE1(v13);
        v22 = 10;
        v23 = 25;
      }

      else
      {
        *(a2 + 17) = v25 ^ 0xFE;
        *(a2 + 18) ^= BYTE3(v13);
        *(a2 + 19) ^= BYTE2(v13);
        *(a2 + 20) ^= BYTE1(v13);
        v22 = 6;
        v23 = 21;
      }
    }

    else
    {
      *v21 ^= BYTE1(v13);
      v22 = 2;
      v23 = 17;
    }

    *(a2 + v23) ^= v13;
    v24 = 1;
    do
    {
      do
      {
        v29 = *a6++;
        v30 = v13;
        v21[v22] ^= v29;
        --v13;
        if (v22 > 0xE)
        {
          break;
        }

        ++v22;
      }

      while (v30 != 1);
      (v17)(a2 + 16, a2 + 16, a3);
      v22 = 0;
      ++v24;
    }

    while (v30 != 1);
  }

  else
  {
    v24 = 1;
  }

  if (a8 > 0xFFFFFFFFFFFFFFF0)
  {
    return 0;
  }

  result = 0;
  v32 = ((a8 + 15) >> 3) | 1;
  v33 = __CFADD__(v24, v32);
  v34 = v24 + v32;
  if (!v33 && v34 <= 0x2000000000000000)
  {
    *a2 &= 7u;
    return 1;
  }

  return result;
}

uint64_t sub_2394496B0(uint64_t a1, int8x16_t *a2, uint64_t a3, void *a4, size_t a5, char *a6, unint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == a5)
  {
    v7 = a7;
    v14 = *a1;
    if (a7 >= 0x10)
    {
      do
      {
        v15 = a2[1].i64[1];
        a2[1].i64[0] ^= *a6;
        a2[1].i64[1] = *(a6 + 1) ^ v15;
        v14(a2 + 1, a2 + 1, a3);
        a6 += 16;
        v7 -= 16;
      }

      while (v7 > 0xF);
    }

    if (v7)
    {
      v16 = a2 + 1;
      do
      {
        v17 = *a6++;
        v16->i8[0] ^= v17;
        v16 = (v16 + 1);
        --v7;
      }

      while (v7);
      v14(a2 + 1, a2 + 1, a3);
    }

    if (*(a1 + 20))
    {
      v18 = 0;
      v19 = 15;
      do
      {
        a2->i8[v19] = 0;
        ++v18;
        --v19;
      }

      while (v18 < *(a1 + 20));
    }

    v14(a2, &v24, a3);
    v21 = a2[1];
    v20 = a2 + 1;
    *v20 = veorq_s8(v24, v21);
    if (a5)
    {
      memcpy(a4, v20, a5);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239449820(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, unint64_t a6)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 20))
  {
    v6 = 0;
    v7 = 15;
    do
    {
      *(a2 + v7) = 0;
      ++v6;
      --v7;
    }

    while (v6 < *(a1 + 20));
  }

  *(a2 + 15) = 1;
  v11 = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    result = sub_23942098C(a5, a4, a6, a3, a2, v12, &v11, v8);
  }

  else
  {
    result = sub_239420B3C(a5, a4, a6, a3, a2, v12, &v11, *a1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_239449900(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0.0;
  *(v1 + 76) = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = xmmword_2395CAA30;
  return result;
}

double sub_23944993C(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0.0;
  *(v1 + 76) = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = xmmword_2395CAA30;
  return result;
}

double sub_239449978(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0.0;
  v1[4] = 0u;
  v1[5] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *v1 = xmmword_2395CAA30;
  v1[1] = 0u;
  *(v1 + 4) = -1009589776;
  return result;
}

double sub_2394499BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  result = 3.15644116e-46;
  *v1 = xmmword_2395CA970;
  *(v1 + 16) = xmmword_2395CA980;
  *(v1 + 32) = 0u;
  *(v1 + 108) = 28;
  return result;
}

double sub_239449A08(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  result = -1.56712499e-22;
  *v1 = xmmword_2395CA990;
  *(v1 + 16) = xmmword_2395CA9A0;
  *(v1 + 32) = 0u;
  *(v1 + 108) = 32;
  return result;
}

double sub_239449A58(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = xmmword_2395CA9B0;
  *(v1 + 16) = xmmword_2395CA9C0;
  *(v1 + 32) = xmmword_2395CA9D0;
  *(v1 + 48) = xmmword_2395CA9E0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *&result = 0x3000000000;
  *(v1 + 208) = 0x3000000000;
  return result;
}

double sub_239449AB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = xmmword_2395CA9F0;
  *(v1 + 16) = xmmword_2395CAA00;
  *(v1 + 32) = xmmword_2395CAA10;
  *(v1 + 48) = xmmword_2395CAA20;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *&result = 0x4000000000;
  *(v1 + 208) = 0x4000000000;
  return result;
}

double sub_239449B0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *v1 = xmmword_2395CAA40;
  *(v1 + 16) = xmmword_2395CAA50;
  *(v1 + 32) = xmmword_2395CAA60;
  *(v1 + 48) = xmmword_2395CAA70;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *&result = 0x2000000000;
  *(v1 + 208) = 0x2000000000;
  return result;
}

double sub_239449B64(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = 0.0;
  *(v1 + 76) = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = xmmword_2395CAA30;
  *(v1 + 108) = 0u;
  *(v1 + 124) = 0u;
  *(v1 + 140) = 0u;
  *(v1 + 156) = 0u;
  *(v1 + 172) = 0u;
  *(v1 + 92) = xmmword_2395CAA30;
  *(v1 + 27) = -1009589776;
  return result;
}

uint64_t sub_239449BAC(uint64_t a1, unsigned int *a2, size_t a3)
{
  v5 = *(a1 + 8);
  sub_23943B9C0(v5, a2, a3);

  return sub_2394430E0(v5 + 92, a2, a3);
}

uint64_t sub_239449C00(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  sub_23943BADC(a2, v3);

  return sub_2394431FC(a2 + 4, v3 + 92);
}

uint64_t sub_239449C74(uint64_t a1)
{
  *(a1 + 528) = 1;
  sub_239438220(a1, (a1 + 360), (a1 + 160));
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  sub_239423980((a1 + 360), (a1 + 360), (a1 + 160), *(a1 + 320), &v3, *(a1 + 328));
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  return sub_239423980((a1 + 360), (a1 + 360), (a1 + 160), *(a1 + 320), &v3, *(a1 + 328));
}

uint64_t sub_239449D08(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = (a2 + 18);
  v9 = *(a1 + 328);
  if (v9 < 1)
  {
    v14 = 1;
  }

  else
  {
    v10 = 0;
    v11 = v8;
    v12 = *(a1 + 328);
    do
    {
      v13 = *v11++;
      v10 |= v13;
      --v12;
    }

    while (v12);
    v14 = v10 == 0;
  }

  if (v14)
  {
    sub_2394170F4(15, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_montgomery.c", 150);
    return 0;
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_239426054(v16, v8, v9, a1 + 296);
    sub_239425F5C(v18, v16, v16, *(a1 + 328), a1 + 296);
    if (a3)
    {
      sub_239425F5C(a3, a2, v18, *(a1 + 328), a1 + 296);
    }

    if (a4)
    {
      sub_239425F5C(v18, v18, v16, *(a1 + 328), a1 + 296);
      sub_239425F5C(a4, a2 + 9, v18, *(a1 + 328), a1 + 296);
    }

    return 1;
  }
}

uint64_t sub_239449E40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v6 = a2;
  *a2 = *(a3 + 144);
  v8 = *(a3 + 160);
  v9 = *(a3 + 176);
  v10 = *(a3 + 192);
  *(a2 + 64) = *(a3 + 208);
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 16) = v8;
  v11 = a4 - 1;
  if (a4 != 1)
  {
    v12 = (a3 + 360);
    v13 = a4 - 1;
    do
    {
      v14 = a2 + 144;
      sub_239425F5C((a2 + 144), a2, v12, *(a1 + 328), a1 + 296);
      v12 += 27;
      a2 = v14;
      --v13;
    }

    while (v13);
  }

  v15 = *(a1 + 328);
  if (v15 < 1)
  {
    goto LABEL_15;
  }

  v16 = 0;
  v17 = (v6 + 144 * v11);
  v18 = *(a1 + 328);
  do
  {
    v19 = *v17++;
    v16 |= v19;
    --v18;
  }

  while (v18);
  if (v16)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    sub_239426054(&v30, v6 + 144 * v11, v15, a1 + 296);
    v20 = (a3 + 216 * a4 - 216);
    v21 = (v6 + 144 * a4 - 144);
    do
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      if (v11)
      {
        sub_239425F5C(&v25, &v30, v21 - 18, *(a1 + 328), a1 + 296);
        sub_239425F5C(&v30, &v30, v20 + 18, *(a1 + 328), a1 + 296);
      }

      else
      {
        v27 = v32;
        v28 = v33;
        v29 = v34;
        v25 = v30;
        v26 = v31;
      }

      sub_239425F5C(v23, &v25, &v25, *(a1 + 328), a1 + 296);
      sub_239425F5C(v21, v20, v23, *(a1 + 328), a1 + 296);
      sub_239425F5C(v21 + 9, v20 + 9, v23, *(a1 + 328), a1 + 296);
      sub_239425F5C(v21 + 9, v21 + 9, &v25, *(a1 + 328), a1 + 296);
      --v11;
      v20 -= 27;
      v21 -= 18;
    }

    while (v11 < a4);
    return 1;
  }

  else
  {
LABEL_15:
    sub_2394170F4(15, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_montgomery.c", 189);
    return 0;
  }
}

uint64_t sub_23944A070(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a1 + 536) && (v6 = *(a1 + 328), v6 == *(a1 + 264)))
  {
    if (v6 < 1)
    {
      return 0;
    }

    v7 = 0;
    v8 = 144;
    v9 = *(a1 + 328);
    do
    {
      v7 |= *(a2 + v8);
      v8 += 8;
      --v9;
    }

    while (v9);
    if (!v7)
    {
      return 0;
    }

    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_239425F5C(v15, (a2 + 144), (a2 + 144), v6, a1 + 296);
    v10 = *(a1 + 328);
    if (v10)
    {
      __memcpy_chk();
    }

    sub_239425F5C(v17, v17, v15, v10, a1 + 296);
    sub_239425E7C(v13, *(a1 + 328), a2, *(a1 + 328), a1 + 296);
    if (sub_23945022C(v17, v13, 8 * *(a1 + 328)) && (sub_2394216D4(v17, a3, *(a1 + 256), *(a1 + 328)) || (v11 = *(a1 + 328), (sub_2394228F8(v17, v11, *(a1 + 320), v11) & 0x80000000) == 0) || (sub_239425F5C(v17, v17, v15, v11, a1 + 296), sub_23945022C(v17, v13, 8 * *(a1 + 328)))))
    {
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return sub_2394391A4(a1, a2, a3);
  }
}

uint64_t sub_23944A238(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 328);
  if (v7 < 1)
  {
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = a2 + 18;
    do
    {
      v10 = *v9++;
      v8 |= v10;
      --v7;
    }

    while (v7);
    v11 = v8 == 0;
  }

  if (v11)
  {
    sub_2394170F4(15, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/p224-64.c", 868);
    result = 0;
  }

  else
  {
    v13 = a2[19];
    *(&v14 + 1) = v13;
    *&v14 = a2[18];
    v35[0] = v14 & 0xFFFFFFFFFFFFFFLL;
    v35[1] = (v14 >> 56) & 0xFFFFFFFFFFFFFFLL;
    *(&v14 + 1) = a2[20];
    *&v14 = v13;
    v15 = v14 >> 48;
    v16 = *(a2 + 10);
    memset(v34, 0, sizeof(v34));
    memset(v33, 0, sizeof(v33));
    v35[2] = v15 & 0xFFFFFFFFFFFFFFLL;
    v35[3] = (v16 >> 40) & 0xFFFFFFFFFFFFFFLL;
    v46 = 0u;
    v47 = 0u;
    memset(v45, 0, sizeof(v45));
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    sub_23944B4DC(&v36, v35);
    sub_23944B594(&v46, &v36);
    sub_23944B6C0(&v36, v35, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B4DC(&v36, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B6C0(&v36, v35, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B4DC(&v36, &v46);
    sub_23944B594(v45, &v36);
    sub_23944B4DC(&v36, v45);
    sub_23944B594(v45, &v36);
    sub_23944B4DC(&v36, v45);
    sub_23944B594(v45, &v36);
    sub_23944B6C0(&v36, v45, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B4DC(&v36, &v46);
    sub_23944B594(v45, &v36);
    v17 = 5;
    do
    {
      sub_23944B4DC(&v36, v45);
      sub_23944B594(v45, &v36);
      --v17;
    }

    while (v17);
    memset(v44, 0, sizeof(v44));
    sub_23944B6C0(&v36, v45, &v46);
    sub_23944B594(v45, &v36);
    sub_23944B4DC(&v36, v45);
    sub_23944B594(v44, &v36);
    v18 = 11;
    do
    {
      sub_23944B4DC(&v36, v44);
      sub_23944B594(v44, &v36);
      --v18;
    }

    while (v18);
    sub_23944B6C0(&v36, v44, v45);
    sub_23944B594(v45, &v36);
    sub_23944B4DC(&v36, v45);
    sub_23944B594(v44, &v36);
    v19 = 23;
    do
    {
      sub_23944B4DC(&v36, v44);
      sub_23944B594(v44, &v36);
      --v19;
    }

    while (v19);
    memset(v43, 0, sizeof(v43));
    sub_23944B6C0(&v36, v44, v45);
    sub_23944B594(v44, &v36);
    sub_23944B4DC(&v36, v44);
    sub_23944B594(v43, &v36);
    v20 = 47;
    do
    {
      sub_23944B4DC(&v36, v43);
      sub_23944B594(v43, &v36);
      --v20;
    }

    while (v20);
    sub_23944B6C0(&v36, v44, v43);
    sub_23944B594(v44, &v36);
    sub_23944B4DC(&v36, v44);
    sub_23944B594(v43, &v36);
    v21 = 23;
    do
    {
      sub_23944B4DC(&v36, v43);
      sub_23944B594(v43, &v36);
      --v21;
    }

    while (v21);
    sub_23944B6C0(&v36, v45, v43);
    sub_23944B594(v45, &v36);
    v22 = 6;
    do
    {
      sub_23944B4DC(&v36, v45);
      sub_23944B594(v45, &v36);
      --v22;
    }

    while (v22);
    sub_23944B6C0(&v36, v45, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B4DC(&v36, &v46);
    sub_23944B594(&v46, &v36);
    sub_23944B6C0(&v36, &v46, v35);
    sub_23944B594(&v46, &v36);
    v23 = 97;
    do
    {
      sub_23944B4DC(&v36, &v46);
      sub_23944B594(&v46, &v36);
      --v23;
    }

    while (v23);
    sub_23944B6C0(&v36, &v46, v44);
    sub_23944B594(v34, &v36);
    sub_23944B4DC(v33, v34);
    sub_23944B594(v35, v33);
    if (a3)
    {
      v24 = a2[1];
      *(&v25 + 1) = v24;
      *&v25 = *a2;
      *&v36 = *a2 & 0xFFFFFFFFFFFFFFLL;
      *(&v36 + 1) = (v25 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v25 + 1) = a2[2];
      *&v25 = v24;
      v26 = v25 >> 48;
      v27 = *(a2 + 1);
      v46 = 0u;
      v47 = 0u;
      *&v37 = v26 & 0xFFFFFFFFFFFFFFLL;
      *(&v37 + 1) = (v27 >> 40) & 0xFFFFFFFFFFFFFFLL;
      sub_23944B6C0(v33, &v36, v35);
      sub_23944B594(&v46, v33);
      sub_23944B7F8(a3, &v46);
    }

    if (a4)
    {
      v46 = 0u;
      v47 = 0u;
      v28 = a2[10];
      *(&v29 + 1) = v28;
      *&v29 = a2[9];
      *&v36 = v29 & 0xFFFFFFFFFFFFFFLL;
      *(&v36 + 1) = (v29 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v29 + 1) = a2[11];
      *&v29 = v28;
      v30 = (v29 >> 48) & 0xFFFFFFFFFFFFFFLL;
      v31 = *(a2 + 11);
      *&v37 = v30;
      *(&v37 + 1) = (v31 >> 40) & 0xFFFFFFFFFFFFFFLL;
      sub_23944B6C0(v33, v35, v34);
      sub_23944B594(v35, v33);
      sub_23944B6C0(v33, &v36, v35);
      sub_23944B594(&v46, v33);
      sub_23944B7F8(a4, &v46);
    }

    result = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944A79C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  *(&v6 + 1) = v5;
  *&v6 = *a3;
  v35.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v35.i64[1] = (v6 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v6 + 1) = a3[2];
  *&v6 = v5;
  v7 = (v6 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a3 + 1);
  v36 = v7;
  v37 = (v8 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v9 = a3[10];
  *(&v8 + 1) = v9;
  *&v8 = a3[9];
  v32.i64[0] = v8 & 0xFFFFFFFFFFFFFFLL;
  v32.i64[1] = (v8 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v8 + 1) = a3[11];
  *&v8 = v9;
  v10 = (v8 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a3 + 11);
  v33 = v10;
  v34 = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v12 = a3[19];
  *(&v11 + 1) = v12;
  *&v11 = a3[18];
  v31[0] = v11 & 0xFFFFFFFFFFFFFFLL;
  v31[1] = (v11 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v11 + 1) = a3[20];
  *&v11 = v12;
  v13 = (v11 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v14 = *(a3 + 10);
  v31[2] = v13;
  v31[3] = (v14 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v15 = a4[1];
  *(&v14 + 1) = v15;
  *&v14 = *a4;
  v30[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v30[1] = (v14 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v14 + 1) = a4[2];
  *&v14 = v15;
  v16 = (v14 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v17 = *(a4 + 1);
  v30[2] = v16;
  v30[3] = (v17 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v18 = a4[10];
  *(&v17 + 1) = v18;
  *&v17 = a4[9];
  v29[0] = v17 & 0xFFFFFFFFFFFFFFLL;
  v29[1] = (v17 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v17 + 1) = a4[11];
  *&v17 = v18;
  v19 = (v17 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v20 = *(a4 + 11);
  v29[2] = v19;
  v29[3] = (v20 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v21 = a4[19];
  *(&v20 + 1) = v21;
  *&v20 = a4[18];
  v26.i64[0] = v20 & 0xFFFFFFFFFFFFFFLL;
  v26.i64[1] = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v20 + 1) = a4[20];
  *&v20 = v21;
  v22 = (v20 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v23 = *(a4 + 10);
  v27 = v22;
  v28 = (v23 >> 40) & 0xFFFFFFFFFFFFFFLL;
  sub_23944B888(&v35, &v32, v31, &v35, &v32, v31, 0, v30, v29, &v26);
  sub_23944B7F8(a2, &v35);
  sub_23944B7F8(a2 + 9, &v32);
  result = sub_23944B7F8(a2 + 18, v31);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944A94C(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v22.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v22.i64[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = (v5 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v7 = *(a3 + 1);
  v23 = v6;
  v24 = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = a3[10];
  *(&v7 + 1) = v8;
  *&v7 = a3[9];
  v19.i64[0] = v7 & 0xFFFFFFFFFFFFFFLL;
  v19.i64[1] = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[11];
  *&v7 = v8;
  v9 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v10 = *(a3 + 11);
  v20 = v9;
  v21 = (v10 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v11 = a3[19];
  *(&v10 + 1) = v11;
  *&v10 = a3[18];
  v16.i64[0] = v10 & 0xFFFFFFFFFFFFFFLL;
  v16.i64[1] = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v10 + 1) = a3[20];
  *&v10 = v11;
  v12 = (v10 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v13 = *(a3 + 10);
  v17 = v12;
  v18 = (v13 >> 40) & 0xFFFFFFFFFFFFFFLL;
  sub_23944C01C(&v22, &v19, &v16, &v22, &v19, &v16);
  sub_23944B7F8(a2, &v22);
  sub_23944B7F8(a2 + 9, &v19);
  result = sub_23944B7F8(a2 + 18, &v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944AA64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_23944C42C(v30, a3);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = 1;
  v6 = 220;
  do
  {
    if (!v5)
    {
      sub_23944C01C(&v24, &v26, &v28, &v24, &v26, &v28);
    }

    if (-858993459 * v6 < 0x33333334)
    {
      if (v6 == 220)
      {
        v8 = 0;
      }

      else
      {
        v8 = 32 * ((*(a4 + (((v6 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 + 4)) & 1);
      }

      v7 = v6 - 1;
      if (v6 - 1 <= 0xDF)
      {
        v9 = (*(a4 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
      }

      else
      {
        v9 = 0;
      }

      v10 = (16 * ((*(a4 + (((v6 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 + 3)) & 1)) | (8 * ((*(a4 + (((v6 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 + 2)) & 1)) | (4 * ((*(a4 + (((v6 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 + 1)) & 1)) | (2 * ((*(a4 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1)) | v9 | v8;
      v11 = -(v8 >> 5);
      v12 = (v10 ^ 0x3F) & v11 | v10 & ((v8 >> 5) + 63);
      sub_23944C5B4(v12 - (v12 >> 1), 17, v30, v18);
      sub_23944C618(v22, &v19);
      v13 = v22;
      if ((v11 & 1) == 0)
      {
        v13 = &v19;
      }

      v19 = *v13;
      v14 = &v23;
      if ((v11 & 1) == 0)
      {
        v14 = &v20;
      }

      v20 = *v14;
      if (v5)
      {
        v5 = 0;
        v26 = v19;
        v27 = v20;
        v28 = v21[0];
        v29 = v21[1];
        v24 = v18[0];
        v25 = v18[1];
      }

      else
      {
        sub_23944B888(&v24, &v26, &v28, &v24, &v26, &v28, 0, v18, &v19, v21);
      }
    }

    else
    {
      v7 = v6 - 1;
    }

    v6 = v7;
  }

  while (v7 < 0xDD);
  sub_23944B7F8(a2, &v24);
  sub_23944B7F8(a2 + 9, &v26);
  result = sub_23944B7F8(a2 + 18, &v28);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944AD00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = a3[3];
  v13 = *(a3 + 1);
  v6 = 195;
  v7 = *a3;
  do
  {
    if (v4)
    {
      sub_23944C01C(&v17, &v19, &v21, &v17, &v19, &v21);
    }

    v8 = vandq_s8(vshlq_u64(vshlq_u64(v13, vsubq_s64(xmmword_2395CAAA0, vdupq_n_s64(v6 - 168))), xmmword_2395CAAB0), xmmword_2395CAAC0);
    sub_23944C5B4(v8.i64[1] | (8 * ((v5 >> (v6 + 92)) & 1)) | v8.i64[0] | (v7 >> (v6 + 116)) & 1, 16, &unk_2395CC468, v14);
    if (v4)
    {
      sub_23944B888(&v17, &v19, &v21, &v17, &v19, &v21, 1, v14, v15, v16);
    }

    else
    {
      v19 = v15[0];
      v20 = v15[1];
      v21 = v16[0];
      v22 = v16[1];
      v17 = v14[0];
      v18 = v14[1];
    }

    sub_23944C5B4((8 * ((*(a3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1)) | (4 * ((*(a3 + (((v6 - 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 - 56)) & 1)) | (2 * ((*(a3 + (((v6 - 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v6 - 112)) & 1)) | (v7 >> (v6 + 88)) & 1, 16, &unk_2395CBE68, v14);
    v4 = 1;
    sub_23944B888(&v17, &v19, &v21, &v17, &v19, &v21, 1, v14, v15, v16);
    v9 = v6 - 169;
    --v6;
  }

  while (v9 < 0x1C);
  sub_23944B7F8(a2, &v17);
  sub_23944B7F8(a2 + 9, &v19);
  result = sub_23944B7F8(a2 + 18, &v21);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944AF64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_23944C42C(v38, a4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = 1;
  v8 = 220;
  do
  {
    if (!v7)
    {
      sub_23944C01C(&v32, &v34, &v36, &v32, &v34, &v36);
    }

    if (v8 <= 0x1B)
    {
      v9 = vandq_s8(vshlq_u64(vshlq_u64(*(a3 + 1), vsubq_s64(xmmword_2395CAAA0, vdupq_n_s64(v8))), xmmword_2395CAAB0), xmmword_2395CAAC0);
      v10 = *a3;
      v11 = (&unk_2395CBE68 + 96 * (v9.i64[1] | (8 * ((a3[3] >> (v8 + 4)) & 1)) | v9.i64[0] | (*a3 >> (v8 + 28)) & 1));
      sub_23944B888(&v32, &v34, &v36, &v32, &v34, &v36, 1, &v11[96], &v11[98], v11 + 100);
      v12 = (&unk_2395CBE68 + 96 * ((8 * ((*(a3 + (((v8 + 168) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 - 88)) & 1)) | (4 * ((*(a3 + (((v8 + 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 112)) & 1)) | (2 * ((*(a3 + (((v8 + 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 56)) & 1)) | (v10 >> v8) & 1));
      sub_23944B888(&v32, &v34, &v36, &v32, &v34, &v36, 1, v12, &v12[2], v12 + 4);
    }

    if (-858993459 * v8 < 0x33333334)
    {
      if (v8 == 220)
      {
        v14 = 0;
      }

      else
      {
        v14 = 32 * ((*(a5 + (((v8 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 4)) & 1);
      }

      v13 = v8 - 1;
      if (v8 - 1 <= 0xDF)
      {
        v15 = (*(a5 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = (16 * ((*(a5 + (((v8 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 3)) & 1)) | (8 * ((*(a5 + (((v8 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 2)) & 1)) | (4 * ((*(a5 + (((v8 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 1)) & 1)) | (2 * ((*(a5 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1)) | v15 | v14;
      v17 = (v14 >> 5) + 63;
      v18 = -(v14 >> 5);
      v19 = &v38[6 * (((v16 ^ 0x3F) & v18 | v16 & v17) - (((v16 ^ 0x3F) & v18 | v16 & v17) >> 1))];
      v20 = v19[3];
      v28 = v19[2];
      v29 = v20;
      v21 = v19[5];
      v30 = v19[4];
      v31 = v21;
      v22 = v19[1];
      v26 = *v19;
      v27 = v22;
      if (v18)
      {
        sub_23944C618(&v28, &v28);
      }

      if (v7)
      {
        v7 = 0;
        v34 = v28;
        v35 = v29;
        v36 = v30;
        v37 = v31;
        v32 = v26;
        v33 = v27;
      }

      else
      {
        sub_23944B888(&v32, &v34, &v36, &v32, &v34, &v36, 0, &v26, &v28, &v30);
      }
    }

    else
    {
      v13 = v8 - 1;
    }

    v8 = v13;
  }

  while (v13 < 0xDD);
  sub_23944B7F8(a2, &v32);
  sub_23944B7F8(a2 + 9, &v34);
  result = sub_23944B7F8(a2 + 18, &v36);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944B33C(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v5 = a3[1];
  *(&v6 + 1) = v5;
  *&v6 = *a3;
  v16[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v16[1] = (v6 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v6 + 1) = a3[2];
  *&v6 = v5;
  v7 = (v6 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a3 + 1);
  v16[2] = v7;
  v16[3] = (v8 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v9 = a4[1];
  *(&v8 + 1) = v9;
  *&v8 = *a4;
  v15[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v15[1] = (v8 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v8 + 1) = a4[2];
  *&v8 = v9;
  v10 = (v8 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a4 + 1);
  v15[2] = v10;
  v15[3] = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  sub_23944B6C0(v14, v16, v15);
  sub_23944B594(v16, v14);
  result = sub_23944B7F8(a2, v16);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944B424(uint64_t a1, uint64_t *a2, void *a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v11[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v11[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = v5 >> 48;
  v7 = *(a3 + 1);
  v11[2] = v6 & 0xFFFFFFFFFFFFFFLL;
  v11[3] = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  memset(v10, 0, sizeof(v10));
  sub_23944B4DC(v10, v11);
  sub_23944B594(v11, v10);
  result = sub_23944B7F8(a2, v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23944B4DC(uint64_t result, unint64_t *a2)
{
  v2 = 2 * *a2;
  v3 = 2 * a2[1];
  v4 = 2 * a2[2];
  *result = *a2 * *a2;
  v5 = (*a2 * v3) >> 64;
  *(result + 16) = *a2 * v3;
  *(result + 24) = v5;
  *(result + 32) = a2[1] * a2[1] + *a2 * v4;
  *(result + 48) = a2[1] * v4 + a2[3] * v2;
  *(result + 64) = a2[2] * a2[2] + a2[3] * v3;
  *(result + 80) = a2[3] * v4;
  *(result + 96) = a2[3] * a2[3];
  return result;
}

void *sub_23944B594(void *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[6];
  v6 = a2[7];
  v8 = *(a2 + 6);
  v9 = (v8 >> 16) + *(a2 + 4);
  v10 = v8 << 40;
  v11 = __CFADD__(v10, v7);
  v12 = v10 + v7;
  if (v11)
  {
    ++v6;
  }

  v13 = (*(a2 + 2) - *(a2 + 6)) >> 64;
  v14 = a2[4] - a2[12];
  v15 = a2[10];
  v16 = a2[11];
  v17 = v15 << 40;
  v11 = __CFADD__(v14, v17);
  v18 = v14 + v17;
  if (v11)
  {
    ++v13;
  }

  *(&v19 + 1) = v16;
  *&v19 = v15;
  v20 = __PAIR128__(v6, v12) + (v19 >> 16);
  v21 = __PAIR128__(v13, v18) + (v9 >> 16);
  v23 = v5 - v15;
  v22 = (__PAIR128__(v4, v5) - __PAIR128__(v16, v15)) >> 64;
  v24 = v9 << 40;
  v25 = v23 + v24;
  if (__CFADD__(v23, v24))
  {
    ++v22;
  }

  *(&v26 + 1) = *(&v21 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v26 = v21;
  v27 = v20 + (v26 >> 56);
  v28 = (v27 >> 16) & 0xFFFF0000000000;
  v11 = __CFADD__(v25, v28);
  v29 = v25 + v28;
  if (v11)
  {
    ++v22;
  }

  v30 = (v21 & 0xFFFFFFFFFFFFFFLL) + (*(&v27 + 1) >> 8);
  v31 = __PAIR128__(v2, v3) - (v9 + (v27 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v34 = __PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v32 = (__PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v33 = v29 + (v31 >> 56) - 0x80000000000000;
  v35 = __PAIR128__(v32, v34) >> 56;
  v36 = HIBYTE(v32);
  v11 = __CFADD__(v30, v35);
  v37 = v30 + v35;
  if (v11)
  {
    ++v36;
  }

  *result = v31 & 0xFFFFFFFFFFFFFFLL;
  result[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  *(&v38 + 1) = v36;
  *&v38 = v37;
  result[2] = v37 & 0xFFFFFFFFFFFFFFLL;
  result[3] = (v38 >> 56) + (v27 & 0xFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t sub_23944B6C0(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = (*a3 * *a2) >> 64;
  *result = *a3 * *a2;
  *(result + 8) = v3;
  *(result + 16) = *a3 * a2[1] + a3[1] * *a2;
  *(result + 32) = a3[1] * a2[1] + a3[2] * *a2 + *a3 * a2[2];
  *(result + 48) = a3[2] * a2[1] + a3[3] * *a2 + a3[1] * a2[2] + *a3 * a2[3];
  *(result + 64) = a3[2] * a2[2] + a3[3] * a2[1] + a3[1] * a2[3];
  *(result + 80) = a3[2] * a2[3] + a3[3] * a2[2];
  *(result + 96) = a3[3] * a2[3];
  return result;
}

uint64_t *sub_23944B7F8(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  v4 = v2 + (HIBYTE(v3) << 40);
  v5 = v3 & 0xFFFFFFFFFFFFFFLL;
  v7 = (((a2[2] & v3 & (v2 | 0xFFFFFFFFFFLL)) + 1) | ((*a2 + (v2 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  v6 = v7 == 0;
  if (v7)
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xFFFFFFFFFFLL;
  if (v7)
  {
    v9 = -1;
  }

  v10 = *a2 - HIBYTE(v3) + ((v7 - 1) >> 63);
  v11 = v10 + (v10 >> 63 << 56);
  v12 = (v9 & v4) + (v10 >> 63);
  v13 = v8 + (v12 >> 56);
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14 + (v13 >> 56);
  *result = v11 | (v12 << 56);
  result[1] = (v12 >> 8) & 0xFFFFFFFFFFFFLL | (v13 << 48);
  result[2] = (v13 >> 16) & 0xFFFFFFFFFFLL | (v15 << 40);
  result[3] = v15 >> 24;
  return result;
}

double sub_23944B888(int64x2_t *a1, uint64_t a2, uint64_t a3, int64x2_t *a4, int64x2_t *a5, uint64_t a6, int a7, unint64_t *a8, unint64_t *a9, int8x16_t *a10)
{
  v99 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v92 = 0u;
  v93 = 0u;
  v86 = 0u;
  v87 = 0u;
  v82 = 0u;
  v83 = 0u;
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
  if (a7)
  {
    v14 = a5->i64[0];
    v15 = a5->i64[1];
    *&v92 = a5->i64[0];
    *(&v92 + 1) = v15;
    v17 = a5[1].i64[0];
    v16 = a5[1].i64[1];
    *&v93 = v17;
    *(&v93 + 1) = v16;
    v18 = a4->i64[1];
    v64 = a4->i64[0];
    v95.i64[0] = a4->i64[0];
    v95.i64[1] = v18;
    v65 = v18;
    v19 = a4[1].i64[1];
    v67 = a4[1].i64[0];
    v96.i64[0] = v67;
    v96.i64[1] = v19;
  }

  else
  {
    sub_23944B4DC(&v77, a10);
    sub_23944B594(&v95, &v77);
    sub_23944B6C0(&v77, &v95, a10);
    sub_23944B594(&v92, &v77);
    sub_23944B6C0(&v70, &v92, a5);
    sub_23944B594(&v92, &v70);
    sub_23944B6C0(&v70, &v95, a4);
    sub_23944B594(&v95, &v70);
    v15 = *(&v92 + 1);
    v14 = v92;
    v16 = *(&v93 + 1);
    v17 = v93;
    v65 = v95.i64[1];
    v64 = v95.i64[0];
    v19 = v96.i64[1];
    v67 = v96.i64[0];
  }

  v68 = v19;
  v97 = 0u;
  v98 = 0u;
  memset(v94, 0, sizeof(v94));
  sub_23944B4DC(&v77, a6);
  sub_23944B594(&v97, &v77);
  sub_23944B6C0(&v77, &v97, a6);
  sub_23944B594(v94, &v77);
  sub_23944B6C0(&v77, v94, a9);
  v77 = v77 - v14 + __PAIR128__(1, 256);
  v20 = (v78 - v15) >> 64;
  if ((v78 - v15) >= 0x1000000000100)
  {
    ++v20;
  }

  *&v78 = v78 - v15 - 0x1000000000100;
  *(&v78 + 1) = v20;
  v21 = (v79 - v17) >> 64;
  if ((v79 - v17) >= 0x100)
  {
    ++v21;
  }

  *&v79 = v79 - v17 - 256;
  *(&v79 + 1) = v21;
  v22 = (v80 - v16) >> 64;
  if ((v80 - v16) >= 0x100)
  {
    ++v22;
  }

  *&v80 = v80 - v16 - 256;
  *(&v80 + 1) = v22;
  sub_23944B594(v94, &v77);
  sub_23944B6C0(&v77, &v97, a8);
  v77 = v77 - v64 + __PAIR128__(1, 256);
  v23 = (v78 - v65) >> 64;
  if ((v78 - v65) >= 0x1000000000100)
  {
    ++v23;
  }

  *&v78 = v78 - v65 - 0x1000000000100;
  *(&v78 + 1) = v23;
  v24 = (v79 - v67) >> 64;
  if ((v79 - v67) >= 0x100)
  {
    ++v24;
  }

  *&v79 = v79 - v67 - 256;
  *(&v79 + 1) = v24;
  v25 = (v80 - v68) >> 64;
  if ((v80 - v68) >= 0x100)
  {
    ++v25;
  }

  *&v80 = v80 - v68 - 256;
  *(&v80 + 1) = v25;
  sub_23944B594(&v97, &v77);
  v26 = sub_23944BF9C(&v97);
  v27 = sub_23944BF9C(v94);
  v28 = sub_23944BF9C(a6);
  v29 = sub_23944BF9C(a10);
  if ((v27 & v26 & ~v28 & (v29 ^ 1)) != 0)
  {
    v30 = *MEMORY[0x277D85DE8];

    sub_23944C01C(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v32 = v29;
    v90 = 0u;
    v91 = 0u;
    if (a7)
    {
      v33 = *(a6 + 16);
      v90 = *a6;
      v91 = v33;
    }

    else
    {
      sub_23944B6C0(&v77, a6, a10);
      sub_23944B594(&v90, &v77);
    }

    v88 = 0u;
    v89 = 0u;
    v84 = 0u;
    v85 = 0u;
    sub_23944B6C0(&v77, &v97, &v90);
    sub_23944B594(&v84, &v77);
    v90 = v97;
    v91 = v98;
    sub_23944B4DC(&v77, &v97);
    sub_23944B594(&v97, &v77);
    sub_23944B6C0(&v77, &v97, &v90);
    sub_23944B594(&v90, &v77);
    sub_23944B6C0(&v77, &v95, &v97);
    sub_23944B594(&v95, &v77);
    sub_23944B6C0(&v77, &v92, &v90);
    sub_23944B4DC(&v70, v94);
    v69 = v95;
    v34 = __CFADD__(v90.i64[0], 2 * v95.i64[0]);
    v70 = v70 - __PAIR128__(v34, v90.i64[0] + 2 * v95.i64[0]) + __PAIR128__(2, 512);
    v35 = __CFADD__(v90.i64[1], 2 * v95.i64[1]);
    v71 = v71 - __PAIR128__(v35, v90.i64[1] + 2 * v95.i64[1]) + __PAIR128__(1, 0xFFFDFFFFFFFFFE00);
    v66 = v96;
    v36 = __CFADD__(v91, 2 * v96.i64[0]);
    v37 = v72 - __PAIR128__(v36, v91 + 2 * v96.i64[0]);
    *&v72 = v72 - (v91 + 2 * v96.i64[0]) - 512;
    *(&v72 + 1) = (v37 >= 0x200) + *(&v37 + 1) + 1;
    v38 = __CFADD__(*(&v91 + 1), 2 * v96.i64[1]);
    v39 = (v73 - __PAIR128__(v38, *(&v91 + 1) + 2 * v96.i64[1])) >> 64;
    v40 = (v73 - (*(&v91 + 1) + 2 * v96.i64[1])) >= 0x200;
    *&v73 = v73 - (*(&v91 + 1) + 2 * v96.i64[1]) - 512;
    *(&v73 + 1) = v40 + v39 + 1;
    sub_23944B594(&v88, &v70);
    v95 = vaddq_s64(vsubq_s64(v69, v88), xmmword_2395CAAD0);
    v96 = vaddq_s64(vsubq_s64(v66, v89), vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL));
    sub_23944B6C0(&v70, v94, &v95);
    v41 = ((v70 - v77) >> 64) + 0x100000000000000;
    *&v70 = v70 - v77;
    *(&v70 + 1) = v41;
    v42 = ((v71 - v78) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v71 = v71 - v78;
    *(&v71 + 1) = v42;
    v43 = ((v72 - v79) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v72 = v72 - v79;
    *(&v72 + 1) = v43;
    v44 = ((v73 - v80) >> 64) + 0x100000000000000;
    *&v73 = v73 - v80;
    *(&v73 + 1) = v44;
    v45 = ((v74 - v81) >> 64) + 0xFFFEFFFFFFFFFFLL;
    *&v74 = v74 - v81;
    *(&v74 + 1) = v45;
    v46 = ((v75 - v82) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v75 = v75 - v82;
    *(&v75 + 1) = v46;
    v47 = ((v76 - v83) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v76 = v76 - v83;
    *(&v76 + 1) = v47;
    sub_23944B594(&v86, &v70);
    v48 = 0;
    v49 = vdupq_n_s64(-v28);
    do
    {
      *(&v88 + v48 * 8) = vbslq_s8(v49, *&a8[v48], *(&v88 + v48 * 8));
      v48 += 2;
    }

    while (v48 != 4);
    v50 = 0;
    v51 = vdupq_n_s64(-v32);
    do
    {
      *(&v88 + v50 * 16) = vbslq_s8(v51, a4[v50], *(&v88 + v50 * 16));
      ++v50;
    }

    while (v50 != 2);
    for (i = 0; i != 4; i += 2)
    {
      *(&v86 + i * 8) = vbslq_s8(v49, *&a9[i], *(&v86 + i * 8));
    }

    for (j = 0; j != 2; ++j)
    {
      *(&v86 + j * 16) = vbslq_s8(v51, a5[j], *(&v86 + j * 16));
    }

    for (k = 0; k != 2; ++k)
    {
      *(&v84 + k * 16) = vbslq_s8(v49, a10[k], *(&v84 + k * 16));
    }

    for (m = 0; m != 32; m += 16)
    {
      *(&v84 + m) = vbslq_s8(v51, *(a6 + m), *(&v84 + m));
    }

    v56 = v89;
    *a1 = v88;
    a1[1] = v56;
    v57 = v87;
    *a2 = v86;
    *(a2 + 16) = v57;
    result = *&v84;
    v58 = v85;
    *a3 = v84;
    *(a3 + 16) = v58;
    v59 = *MEMORY[0x277D85DE8];
  }

  return result;
}