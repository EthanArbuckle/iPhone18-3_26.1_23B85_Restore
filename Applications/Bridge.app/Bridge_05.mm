uint64_t sub_10016B93C(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int16 a9, uint64_t a10)
{
  if (!*(a7 + 24))
  {
    v13 = result;
    v14 = 0;
    v15 = 0;
    v22 = 16 * a6;
    v23 = a8;
    LODWORD(v16) = a4 << 20;
    HIDWORD(v16) = a3 << 20;
    v26 = vdupq_lane_s64(v16, 0);
    v24 = a7;
    do
    {
      (*(a10 + 8))(&v27, a7, v15);
      v17 = 0;
      v18 = 0;
      v25 = v14;
      do
      {
        v19.i32[0] = v28 + v27 * v17;
        v19.i32[1] = v30 + v29 * v17;
        v19.i32[2] = v28 + v27 * (v17 + 15);
        v19.i32[3] = v30 + v29 * (v17 + 15);
        v20.i32[0] = v32 + v31 * v17;
        v20.i32[1] = v34 + v33 * v17;
        v20.i32[2] = v32 + v31 * (v17 + 15);
        v20.i32[3] = v34 + v33 * (v17 + 15);
        v21 = v14 & 0xFFFFFFF0;
        if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vcgtq_s32(v26, v19), vcgtq_s32(v26, v20)), vuzp1q_s16(vcgezq_s32(v19), vcgezq_s32(v20)))))
        {
          result = (*(a10 + 24))(v13, a2, a5 + v21, a6, v18, &v27);
        }

        else
        {
          result = (*(a10 + 32))(a5 + v21, a6);
        }

        ++v18;
        LODWORD(v14) = v14 + 16;
        v17 += 16;
      }

      while (a9 != v18);
      ++v15;
      a7 = v24;
      v14 = v25 + v22;
    }

    while (v15 != v23);
  }

  return result;
}

void *sub_10016BB10(void *result, unsigned int a2)
{
  *result = 0;
  result[1] = 0;
  v2 = (result + a2);
  *v2 = 0;
  v2[1] = 0;
  v3 = (result + 2 * a2);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v3 + a2);
  *v4 = 0;
  v4[1] = 0;
  v5 = (result + 4 * a2);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v5 + a2);
  *v6 = 0;
  v6[1] = 0;
  v7 = (result + 6 * a2);
  *v7 = 0;
  v7[1] = 0;
  v8 = (result + 7 * a2);
  *v8 = 0;
  v8[1] = 0;
  v9 = &result[a2];
  *v9 = 0;
  v9[1] = 0;
  v10 = (v9 + a2);
  *v10 = 0;
  v10[1] = 0;
  v11 = (result + 10 * a2);
  *v11 = 0;
  v11[1] = 0;
  v12 = (result + 11 * a2);
  *v12 = 0;
  v12[1] = 0;
  v13 = (result + 12 * a2);
  *v13 = 0;
  v13[1] = 0;
  v14 = (result + 13 * a2);
  *v14 = 0;
  v14[1] = 0;
  v15 = (result + 14 * a2);
  *v15 = 0;
  v15[1] = 0;
  v16 = (&result[2 * a2] - a2);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_10016BBC0(uint64_t result, int *a2, int a3)
{
  v3 = (result + 8);
  v4 = 16 * a3;
  v5 = 16;
  do
  {
    if (a2[7] * v4 == -1048576)
    {
      v6 = 0;
    }

    else
    {
      v6 = vcvts_n_s32_f32(1.0 / vcvts_n_f32_s32(a2[7] * v4 + 0x100000, 0x14uLL), 0x14uLL);
    }

    *(v3 - 2) = (v6 * *a2 + 0x80000) >> 20;
    *(v3 - 1) = (v6 * (a2[2] + a2[1] * v4) + 0x80000) >> 20;
    *v3 = (v6 * a2[3] + 0x80000) >> 20;
    v3[1] = (v6 * (a2[5] + a2[4] * v4) + 0x80000) >> 20;
    v3 += 4;
    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_10016BC64(uint64_t result, int *a2, int a3)
{
  v3 = (result + 8);
  v4 = 16 * a3;
  v5 = 16;
  do
  {
    if (a2[6] * v4 == -1048576)
    {
      v6 = 0;
    }

    else
    {
      v6 = vcvts_n_s32_f32(1.0 / vcvts_n_f32_s32(a2[6] * v4 + 0x100000, 0x14uLL), 0x14uLL);
    }

    *(v3 - 2) = (v6 * a2[1] + 0x80000) >> 20;
    *(v3 - 1) = (v6 * (a2[2] + *a2 * v4) + 0x80000) >> 20;
    *v3 = (v6 * a2[4] + 0x80000) >> 20;
    v3[1] = (v6 * (a2[5] + a2[3] * v4) + 0x80000) >> 20;
    v3 += 4;
    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_10016BD10(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = 0;
  v7 = 16 * a5;
  v8 = a3 - a4 + 16 * a4;
  do
  {
    v9 = 0;
    v10 = (a6 + 16 * v6);
    v11 = *v10;
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[1] + v7 * *v10;
    v15 = v13 + v7 * v12;
    do
    {
      v16 = (v14 >> 10) & 0x3FF;
      v17 = (v15 >> 20) * a2 + (v14 >> 20);
      v18 = (*(result + v17 + 1) - *(result + v17)) * v16 + (*(result + v17) << 10);
      v19 = (((*(result + v17 + a2 + 1) - *(result + v17 + a2)) * v16 - v18 + (*(result + v17 + a2) << 10)) >> 5) * ((v15 >> 10) & 0x3FF) + 32 * v18;
      *(v8 + v9) = (v19 >> 15) & ~(v19 >> 31);
      v14 += v11;
      v15 += v12;
      ++v9;
    }

    while (v9 != 16);
    ++v6;
    v8 -= a4;
  }

  while (v6 != 16);
  return result;
}

uint64_t sub_10016BDCC(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = 0;
  v7 = 16 * a5;
  do
  {
    v8 = 0;
    v9 = (a6 + 16 * v6);
    v10 = *v9;
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[1] + v7 * *v9;
    v14 = v12 + v7 * v11;
    do
    {
      v15 = (v13 >> 10) & 0x3FF;
      v16 = (v14 >> 20) * a2 + (v13 >> 20);
      v17 = (*(result + v16 + 1) - *(result + v16)) * v15 + (*(result + v16) << 10);
      v18 = (((*(result + v16 + a2 + 1) - *(result + v16 + a2)) * v15 - v17 + (*(result + v16 + a2) << 10)) >> 5) * ((v14 >> 10) & 0x3FF) + 32 * v17;
      *(a3 + v8) = (v18 >> 15) & ~(v18 >> 31);
      v13 += v10;
      v14 += v11;
      ++v8;
    }

    while (v8 != 16);
    ++v6;
    a3 += a4;
  }

  while (v6 != 16);
  return result;
}

unint64_t sub_10016BE7C(unint64_t result, int8x8_t *a2, double a3, int8x8_t a4)
{
  if (result && a2)
  {
    if (result + 120 <= a2 || &a2[1] + 7 <= result)
    {
      v18 = *(result + 32);
      v5.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8C10).u32[0];
      v5.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8C00).i32[1];
      v6.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8C30).u32[0];
      v6.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8C20).i32[1];
      v7.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8C50).u32[0];
      v7.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8C40).i32[1];
      v8.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8C70).u32[0];
      v8.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8C60).i32[1];
      v9.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8C90).u32[0];
      v9.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8C80).i32[1];
      v10.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8CB0).u32[0];
      v10.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8CA0).i32[1];
      v11.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8CD0).u32[0];
      v11.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8CC0).i32[1];
      v12.i32[0] = vqtbl2q_s8(*result, xmmword_1001C8CF0).u32[0];
      v12.i32[1] = vqtbl2q_s8(v18, xmmword_1001C8CE0).i32[1];
      a4 = vorr_s8(vorr_s8(vorr_s8(vshl_n_s8(v5, 7uLL), vshl_n_s8(v6, 6uLL)), vorr_s8(vshl_n_s8(v7, 5uLL), vshl_n_s8(v8, 4uLL))), vorr_s8(vorr_s8(vshl_n_s8(v9, 3uLL), vshl_n_s8(v10, 2uLL)), vadd_s8(v11, v11)));
      *a2 = vorr_s8(a4, v12);
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    v13 = (result + 8 * v4 + 7);
    do
    {
      a4.i32[0] = *(v13 - 7);
      a4 = vshl_u16(*&vmovl_u8(a4), 0x4000500060007);
      v14 = *(v13 - 3);
      v15 = 4 * *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      v13 += 8;
      a2->i8[v4++] = a4.i8[0] | a4.i8[4] | ((a4.i32[0] | a4.i32[1]) >> 16) | (8 * v14) | v15 | (2 * v16) | v17;
    }

    while (v4 != 15);
  }

  return result;
}

int8x16_t *sub_10016C030(int8x16_t *result, unsigned int a2, unint64_t a3)
{
  if (result && a3 && a2)
  {
    v3 = 0;
    if (a2 < 8 || a2 - 536870913 < 0xFFFFFFFFE0000000)
    {
      goto LABEL_19;
    }

    if (a3 + 8 * a2 > result && result->u64 + a2 > a3)
    {
      v3 = 0;
      goto LABEL_19;
    }

    if (a2 >= 0x10)
    {
      v13 = 0;
      v3 = a2 & 0x3FFFFFF0;
      v14 = result;
      v15 = v3;
      do
      {
        v16 = *v14++;
        v33.val[0] = vshrq_n_u8(v16, 7uLL);
        v17.i64[0] = 0x101010101010101;
        v17.i64[1] = 0x101010101010101;
        v33.val[1] = vandq_s8(vshrq_n_u8(v16, 6uLL), v17);
        v35.val[1] = vandq_s8(vshrq_n_u8(v16, 4uLL), v17);
        v35.val[0] = vandq_s8(vshrq_n_u8(v16, 5uLL), v17);
        v39.val[1] = vandq_s8(vshrq_n_u8(v16, 2uLL), v17);
        v39.val[0] = vandq_s8(vshrq_n_u8(v16, 3uLL), v17);
        v41.val[1] = vandq_s8(v16, v17);
        v41.val[0] = vandq_s8(vshrq_n_u8(v16, 1uLL), v17);
        v37.val[1] = vqtbl2q_s8(v41, xmmword_1001C8D00);
        v37.val[0] = vqtbl2q_s8(v39, xmmword_1001C8D10);
        v40.val[1] = vqtbl2q_s8(v35, xmmword_1001C8D30);
        v40.val[0] = vqtbl2q_s8(v33, xmmword_1001C8D40);
        v25.val[0] = vqtbl2q_s8(v39, xmmword_1001C8D70);
        v25.val[1] = vqtbl2q_s8(v41, xmmword_1001C8D60);
        v24 = vqtbl2q_s8(v35, xmmword_1001C8D80);
        v29.val[1] = vqtbl2q_s8(v41, xmmword_1001C8DA0);
        v29.val[0] = vqtbl2q_s8(v39, xmmword_1001C8DB0);
        v30.val[1] = vqtbl2q_s8(v35, xmmword_1001C8DC0);
        v30.val[0] = vqtbl2q_s8(v33, xmmword_1001C8DD0);
        v31.val[1] = vqtbl2q_s8(v41, xmmword_1001C8DE0);
        v31.val[0] = vqtbl2q_s8(v39, xmmword_1001C8DF0);
        v42.val[1] = vqtbl2q_s8(v35, xmmword_1001C8E00);
        v42.val[0] = vqtbl2q_s8(v33, xmmword_1001C8E10);
        v32.val[1] = vqtbl2q_s8(v41, xmmword_1001C8E20);
        v32.val[0] = vqtbl2q_s8(v39, xmmword_1001C8E30);
        v34.val[1] = vqtbl2q_s8(v35, xmmword_1001C8E40);
        v34.val[0] = vqtbl2q_s8(v33, xmmword_1001C8E50);
        v28.val[1] = vqtbl2q_s8(v41, xmmword_1001C8E60);
        v28.val[0] = vqtbl2q_s8(v39, xmmword_1001C8E70);
        v27.val[1] = vqtbl2q_s8(v41, xmmword_1001C8EA0);
        v27.val[0] = vqtbl2q_s8(v39, xmmword_1001C8EB0);
        v41.val[1] = vqtbl2q_s8(v41, xmmword_1001C8EE0);
        v41.val[0] = vqtbl2q_s8(v39, xmmword_1001C8EF0);
        v39.val[1] = vqtbl2q_s8(v35, xmmword_1001C8E80);
        v39.val[0] = vqtbl2q_s8(v33, xmmword_1001C8E90);
        v26.val[1] = vqtbl2q_s8(v35, xmmword_1001C8EC0);
        v26.val[0] = vqtbl2q_s8(v33, xmmword_1001C8ED0);
        v35.val[1] = vqtbl2q_s8(v35, xmmword_1001C8F00);
        v35.val[0] = vqtbl2q_s8(v33, xmmword_1001C8F10);
        v18 = (a3 + (v13 & 0xFFFFFF80));
        v18[6] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v26, xmmword_1001C8D50)), vqtbl2q_s8(v27, xmmword_1001C8D20));
        v18[7] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v35, xmmword_1001C8D50)), vqtbl2q_s8(v41, xmmword_1001C8D20));
        v18[4] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v34, xmmword_1001C8D50)), vqtbl2q_s8(v32, xmmword_1001C8D20));
        v18[5] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v39, xmmword_1001C8D50)), vqtbl2q_s8(v28, xmmword_1001C8D20));
        v18[2] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v30, xmmword_1001C8D50)), vqtbl2q_s8(v29, xmmword_1001C8D20));
        v18[3] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v42, xmmword_1001C8D50)), vqtbl2q_s8(v31, xmmword_1001C8D20));
        v26.val[1] = vqtbl2q_s8(v33, xmmword_1001C8D90);
        v27.val[0] = v24;
        *v18 = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v40, xmmword_1001C8D50)), vqtbl2q_s8(v37, xmmword_1001C8D20));
        v18[1] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v27, xmmword_1001C8D50)), vqtbl2q_s8(v25, xmmword_1001C8D20));
        v13 += 128;
        v15 -= 16;
      }

      while (v15);
      if (v3 == a2)
      {
        return result;
      }

      if ((a2 & 8) == 0)
      {
LABEL_19:
        v19 = a2 - v3;
        v20 = 8 * v3;
        v21 = &result->u8[v3];
        do
        {
          v22 = *v21++;
          v23 = a3 + (v20 & 0xFFFFFFF8);
          *v23 = v22 >> 7;
          *(v23 + 1) = vuzp1_s8((*&vshl_u16(vdup_n_s16(v22), 0xFFFDFFFCFFFBFFFALL) & 0xFF01FF01FF01FF01), 0xFFFDFFFCFFFBFFFALL).u32[0];
          *(v23 + 5) = (v22 & 4) != 0;
          *(v23 + 6) = (v22 & 2) != 0;
          *(v23 + 7) = v22 & 1;
          v20 += 8;
          --v19;
        }

        while (v19);
        return result;
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    v3 = a2 & 0x3FFFFFF8;
    v5 = v4 - v3;
    v6 = 8 * v4;
    v7 = &result->i8[v4];
    v8.i64[0] = 0x101010101010101;
    v8.i64[1] = 0x101010101010101;
    do
    {
      v9 = *v7++;
      *v10.i8 = v9;
      *v36.val[0].i8 = vshr_n_u8(v9, 7uLL);
      *v11.i8 = vshr_n_u8(v9, 1uLL);
      v12 = (a3 + (v6 & 0xFFFFFFC0));
      v36.val[0].u64[1] = vand_s8(vshr_n_u8(v9, 6uLL), 0x101010101010101);
      v11.u64[1] = v9;
      v10.u64[1] = v9;
      v36.val[1] = vandq_s8(vshlq_u8(v10, xmmword_1001C8F20), v8);
      v38.val[1] = vandq_s8(v11, v8);
      v38.val[0] = vandq_s8(vshlq_u8(v10, xmmword_1001C8F30), v8);
      v12[2] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v36, xmmword_1001C8F90)), vqtbl2q_s8(v38, xmmword_1001C8F80));
      v12[3] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v36, xmmword_1001C8FB0)), vqtbl2q_s8(v38, xmmword_1001C8FA0));
      *v12 = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v36, xmmword_1001C8F50)), vqtbl2q_s8(v38, xmmword_1001C8F40));
      v12[1] = vtrn2q_s32(vrev64q_s32(vqtbl2q_s8(v36, xmmword_1001C8F70)), vqtbl2q_s8(v38, xmmword_1001C8F60));
      v6 += 64;
      v5 += 8;
    }

    while (v5);
    if (v3 != a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

__int32 *sub_10016C5A8(__int32 *result, __int32 *a2, uint8x8_t a3)
{
  *a2 = 0;
  if ((result + 5) > a2 && a2 + 1 > result)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    a3.i32[0] = *result;
    v4 = vshlq_u32(vmovl_u16((vmovl_u8(a3).u64[0] & 0xFF01FF01FF01FF01)), xmmword_1001C8FC0);
    *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
    v5 = v4.i32[0] | v4.i32[1];
    *a2 = v4.i32[0] | v4.i32[1];
    v6 = 4;
  }

  do
  {
    v5 |= (*(result + v6) & 1) << v6;
    *a2 = v5;
    ++v6;
  }

  while (v6 != 5);
  return result;
}

uint64_t sub_10016C628(unsigned int *a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!v3 || !*(a1 + 3))
  {
    return 6;
  }

  if (!a3)
  {
    return 7;
  }

  if (a1[1] + 15 > a1[2])
  {
    return 2;
  }

  for (i = 0; i != 15; ++i)
  {
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        a2 = 214013 * a2 + 2531011;
        v3[v7 + v6 * (i + a1[1])] = BYTE2(a2);
        ++v7;
        v6 = *a1;
      }

      while (v7 < *a1);
    }

    *(*(a1 + 3) + a1[1] + i) = *(a3 + i);
  }

  v8 = a1[1];
  v9 = v8 + 15;
  a1[1] = v9;
  if (v8 == -15)
  {
    return 1;
  }

  v10 = 0;
  v11 = *a1;
  v12 = v11 + 1;
  v13 = &v3[v11];
  v14 = *(a1 + 3);
  v15 = 1;
  v16 = *a1;
  do
  {
    v18 = v11 * v10;
    v19 = v11 * v10 + v10;
    v20 = v3[v19];
    if (v3[v19])
    {
LABEL_31:
      v17 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v33 = v16 + v10;
        v34 = v15;
        do
        {
          if (v3[(v10 + v11 * v34)])
          {
            v35 = v3[(v10 + v11 * v34)];
            v36 = byte_1001E35E6[(16 * byte_1001E24E6[v20]) & 0xF00 | v35] ^ byte_1001E25E6[((byte_1001E24E6[v20] & 0xF) << 8) | v35];
            if (v11 > v10)
            {
              v37 = v12 * v10;
              v38 = v33;
              v39 = v11 - v10;
              do
              {
                v3[v38++] ^= byte_1001E35E6[v36 | (v3[v37] >> 4 << 8)] ^ byte_1001E25E6[v36 | ((v3[v37] & 0xF) << 8)];
                ++v37;
                --v39;
              }

              while (v39);
            }

            if (v14)
            {
              *(v14 + v34) ^= byte_1001E35E6[(16 * *(v14 + v10)) & 0xF00 | v36] ^ byte_1001E25E6[((*(v14 + v10) & 0xF) << 8) & 0xFFFFFFFFFFFFFF00 | v36];
            }
          }

          ++v34;
          v33 += v11;
        }

        while (v9 != v34);
      }

      goto LABEL_17;
    }

    v21 = (v12 * v10);
    v22 = -1;
    v23 = v12 * v10;
    v24 = v10;
    do
    {
      if (v3[v23])
      {
        v22 = v24;
      }

      ++v24;
      v23 += v11;
    }

    while (v9 != v24);
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    v25 = v11 - v10;
    if (v11 <= v10)
    {
      goto LABEL_28;
    }

    v26 = v22 * v11;
    v27 = v10;
    if (v25 <= 7)
    {
      goto LABEL_26;
    }

    v40 = ~v10 + v11;
    v41 = __CFADD__(v21, v40);
    v42 = (v26 + v10);
    v43 = __CFADD__(v42, v40);
    v27 = v10;
    if (v41)
    {
      goto LABEL_26;
    }

    v27 = v10;
    if (v43)
    {
      goto LABEL_26;
    }

    v27 = v10;
    if (HIDWORD(v40))
    {
      goto LABEL_26;
    }

    v44 = &v3[v21] >= &v13[v42 - v10] || &v3[v42] >= &v13[v21 - v10];
    v27 = v10;
    if (!v44)
    {
      goto LABEL_26;
    }

    if (v25 >= 0x20)
    {
      v45 = v25 & 0xFFFFFFFFFFFFFFE0;
      v46 = v25 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v47 = &v3[v21];
        v48 = *v47;
        v49 = v47[1];
        v50 = &v3[v42];
        v51 = v50[1];
        *v47 = *v50;
        v47[1] = v51;
        *v50 = v48;
        v50[1] = v49;
        LODWORD(v42) = v42 + 32;
        LODWORD(v21) = v21 + 32;
        v46 -= 32;
      }

      while (v46);
      if (v25 == v45)
      {
        goto LABEL_28;
      }

      if ((v25 & 0x18) == 0)
      {
        v27 = v10 + v45;
LABEL_26:
        v28 = v11 - v27;
        v29 = v27 + v26;
        v30 = v18 + v27;
        do
        {
          v31 = v3[v30];
          v3[v30] = v3[v29];
          v3[v29++] = v31;
          ++v30;
          --v28;
        }

        while (v28);
        goto LABEL_28;
      }
    }

    else
    {
      v45 = 0;
    }

    v52 = v25 & 0xFFFFFFFFFFFFFFF8;
    v53 = v45 - (v25 & 0xFFFFFFFFFFFFFFF8);
    v54 = v45 + v10;
    v55 = v45 + v10 + v26;
    v56 = v18 + v54;
    do
    {
      v57 = *&v3[v56];
      *&v3[v56] = *&v3[v55];
      *&v3[v55] = v57;
      v55 += 8;
      v56 += 8;
      v53 += 8;
    }

    while (v53);
    if (v25 != v52)
    {
      v27 = v10 + v52;
      goto LABEL_26;
    }

LABEL_28:
    if (v14)
    {
      v32 = *(v14 + v10);
      *(v14 + v10) = *(v14 + v22);
      *(v14 + v22) = v32;
    }

    v20 = v3[v19];
    if (v3[v19])
    {
      goto LABEL_31;
    }

    v17 = v10 + 1;
LABEL_17:
    ++v15;
    v16 += v11;
    v10 = v17;
  }

  while (v17 != v9);
  v58 = *a1;
  v59 = a1[1];
  if (!v59)
  {
    goto LABEL_104;
  }

  if (v58)
  {
    if (v58 < 8)
    {
      v60 = v58 * (v59 - 1) + 6;
      v61 = v59 - 1;
      do
      {
        v62 = v3[v60 - 6];
        if (v58 != 1)
        {
          v62 |= v3[v60 - 5];
          if (v58 != 2)
          {
            v62 |= v3[v60 - 4];
            if (v58 != 3)
            {
              v62 |= v3[v60 - 3];
              if (v58 != 4)
              {
                v62 |= v3[v60 - 2];
                if (v58 != 5)
                {
                  v62 |= v3[v60 - 1];
                  if (v58 != 6)
                  {
                    v62 |= v3[v60];
                  }
                }
              }
            }
          }
        }

        if (v62)
        {
          break;
        }

        if (*(*(a1 + 3) + v61))
        {
          return 3;
        }

        v60 -= v58;
        --v61;
        a1[1] = --v59;
      }

      while (v59);
LABEL_104:
      v81 = v58 + 1;
      v82 = v59;
      if (v58 != 1)
      {
        v85 = 0;
        v86 = v59 - 1;
        v87 = v58;
        while (v85 != v58)
        {
          v88 = 1;
          if (v85 + 1 < v59)
          {
            v89 = v87;
            v90 = v86;
            do
            {
              v88 &= v3[v89] == 0;
              v89 += v58;
              --v90;
            }

            while (v90);
          }

          if (v85 == v59)
          {
            v91 = v59;
            goto LABEL_136;
          }

          v91 = v85;
          if (!v3[(v81 * v85)])
          {
            v88 = 0;
          }

          --v86;
          v87 += v81;
          ++v85;
          if ((v88 & 1) == 0)
          {
            goto LABEL_136;
          }
        }

        goto LABEL_137;
      }

      if (v59 < 2)
      {
        v84 = 1;
      }

      else if (v59 > 8)
      {
        v92 = v59 - 2;
        v93 = v92 + 1;
        if (v92 >= 0x1F)
        {
          v95 = 0;
          v94 = v93 & 0x1FFFFFFE0;
          v96.i64[0] = 0x101010101010101;
          v96.i64[1] = 0x101010101010101;
          v97.i64[0] = 0x101010101010101;
          v97.i64[1] = 0x101010101010101;
          do
          {
            v98 = &v3[v95 & 0xFFFFFFE0];
            v96 = vandq_s8(v96, vceqzq_s8(*(v98 + 1)));
            v97 = vandq_s8(v97, vceqzq_s8(*(v98 + 17)));
            v95 += 32;
          }

          while (v94 != v95);
          v84 = vminvq_u8(vcltzq_s8(vshlq_n_s8(vandq_s8(v97, v96), 7uLL)));
          if (v93 == v94)
          {
            goto LABEL_133;
          }

          if ((v93 & 0x18) == 0)
          {
            v83 = v94 | 1;
            goto LABEL_131;
          }
        }

        else
        {
          v94 = 0;
          v84 = 1;
        }

        v99 = v93 & 0x1FFFFFFF8;
        v100 = -1;
        v100.i8[0] = v84;
        do
        {
          v100 = vand_s8(v100, vceqz_s8(*&v3[(v94 & 0xFFFFFFF8) + 1]));
          v94 += 8;
        }

        while (v99 != v94);
        v84 = vminv_u8(vcltz_s8(vshl_n_s8(v100, 7uLL)));
        if (v93 != v99)
        {
          v83 = v99 | 1;
          goto LABEL_131;
        }
      }

      else
      {
        v83 = 1;
        v84 = 1;
LABEL_131:
        v101 = v59 - v83;
        do
        {
          v84 &= v3[v83++] == 0;
          --v101;
        }

        while (v101);
      }

LABEL_133:
      if (v59)
      {
        v91 = v84 & (*v3 != 0);
      }

      else
      {
        v91 = 0;
      }

LABEL_136:
      if (v91 == v58)
      {
LABEL_137:
        v102 = __OFSUB__(v59, 1);
        v103 = v59 - 1;
        if (v103 < 0 == v102)
        {
          v104 = *(a1 + 3);
          while (1)
          {
            v105 = v82--;
            v106 = byte_1001E24E6[v3[(v81 * v82)]];
            v104[v82] = byte_1001E35E6[(16 * v106) & 0xF00 | v104[v82]] ^ byte_1001E25E6[((v106 & 0xF) << 8) | v104[v82]];
            v3[(v81 * v82)] = 1;
            if (v105 < 2)
            {
              break;
            }

            v107 = v103;
            v108 = v104;
            v109 = v103;
            do
            {
              *v108++ ^= byte_1001E35E6[(16 * v104[v82]) & 0xF00 | v3[v107]] ^ byte_1001E25E6[((v104[v82] & 0xF) << 8) | v3[v107]];
              v3[v107] = 0;
              v107 += v58;
              --v109;
            }

            while (v109);
            --v103;
          }
        }

        return 0;
      }

      return 1;
    }

    v65 = 0;
    v66 = v58 * (v59 - 1);
    v67 = a1[1];
    while (2)
    {
      if (v58 * (v59 + ~v65) > -v58)
      {
        v68 = 0;
        v69 = 1;
        goto LABEL_96;
      }

      if (v58 >= 0x20)
      {
        v71.i64[0] = 0x101010101010101;
        v71.i64[1] = 0x101010101010101;
        v72 = v66;
        v73 = v58 & 0xFFFFFFE0;
        v74.i64[0] = 0x101010101010101;
        v74.i64[1] = 0x101010101010101;
        do
        {
          v75 = &v3[v72];
          v71 = vandq_s8(v71, vceqzq_s8(*v75));
          v74 = vandq_s8(v74, vceqzq_s8(v75[1]));
          v72 += 32;
          v73 -= 32;
        }

        while (v73);
        v69 = vminvq_u8(vcltzq_s8(vshlq_n_s8(vandq_s8(v74, v71), 7uLL)));
        if ((v58 & 0xFFFFFFE0) != v58)
        {
          v68 = v58 & 0xFFFFFFE0;
          v70 = v68;
          if ((v58 & 0x18) == 0)
          {
            goto LABEL_96;
          }

          goto LABEL_93;
        }
      }

      else
      {
        v70 = 0;
        v69 = 1;
LABEL_93:
        v76 = -1;
        v76.i8[0] = v69;
        v77 = v70 - (v58 & 0xFFFFFFF8);
        v78 = v66 + v70;
        do
        {
          v76 = vand_s8(v76, vceqz_s8(*&v3[v78]));
          v78 += 8;
          v77 += 8;
        }

        while (v77);
        v69 = vminv_u8(vcltz_s8(vshl_n_s8(v76, 7uLL)));
        v68 = v58 & 0xFFFFFFF8;
        if (v68 != v58)
        {
LABEL_96:
          v79 = v58 - v68;
          v80 = v66 + v68;
          do
          {
            v69 &= v3[v80++] == 0;
            --v79;
          }

          while (v79);
        }
      }

      if ((v69 & 1) == 0)
      {
        v59 = v67;
        goto LABEL_104;
      }

      if (*(*(a1 + 3) + --v67))
      {
        return 3;
      }

      a1[1] = v67;
      ++v65;
      v66 -= v58;
      if (v65 == v59)
      {
        goto LABEL_101;
      }

      continue;
    }
  }

  v63 = *(a1 + 3);
  v64 = v59 - 1;
  while (!*(v63 + v64))
  {
    a1[1] = v64--;
    if (v64 == -1)
    {
LABEL_101:
      v59 = 0;
      goto LABEL_104;
    }
  }

  return 3;
}

uint64_t sub_10016CEC0(uint64_t a1, signed int *a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 4;
  }

  v3 = *v2;
  *a2 = *v2;
  v4 = *(a1 + 8);
  if (v4 >= 2)
  {
    for (i = 1; i < v4; ++i)
    {
      v6 = v2[i];
      if (v6 > v3)
      {
        *a2 = v6;
        v4 = *(a1 + 8);
        v3 = v6;
      }
    }
  }

  if (v3 == 0x7FFFFFFF)
  {
    return 5;
  }

  if (v4)
  {
    if (v4 <= 7 || v2 < a2 + 1 && &v2[v4] > a2)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v8 = v4 & 0xFFFFFFF8;
    v12 = vdupq_n_s32(v3);
    v13 = (v2 + 4);
    v14 = v8;
    do
    {
      v15 = vqsubq_s32(*v13, v12);
      v13[-1] = vqsubq_s32(v13[-1], v12);
      *v13 = v15;
      v13 += 2;
      v14 -= 8;
    }

    while (v14);
    if (v8 != v4)
    {
LABEL_15:
      v9 = v4 - v8;
      v10 = &v2[v8];
      do
      {
        v11 = *v10 - *a2;
        if (__OFSUB__(*v10, *a2))
        {
          v11 = (v11 >> 31) ^ 0x80000000;
        }

        *v10++ = v11;
        --v9;
      }

      while (v9);
    }
  }

  return 0;
}

uint64_t sub_10016CFBC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 8);
  if (v4 >= 2)
  {
    LOWORD(v5) = 0;
    for (i = 1; i < v4; ++i)
    {
      if (*(v3 + 4 * i) > *(v3 + 4 * v5))
      {
        LOWORD(v5) = i;
      }
    }

    v7 = *(a1 + 18);
    if (*(a1 + 18))
    {
      goto LABEL_10;
    }

    return 0;
  }

  LOWORD(v5) = 0;
  v7 = *(a1 + 18);
  if (!*(a1 + 18))
  {
    return 0;
  }

LABEL_10:
  v8 = ~(-1 << (*(a1 + 4) - 1));
  v9 = 2 * v7;
  v10 = *(a1 + 52);
  v11 = v10 * (2 * v7 - 1);
  do
  {
    --v9;
    v5 = (*(v2 + 4 * (v11 + ((v5 & v8) >> 5))) >> ~(v5 & v8)) & 1 | (2 * (v5 & v8));
    v11 -= v10;
  }

  while (v9 > v7);
  v12 = v7 - 1;
  do
  {
    v5 = v5;
    *(a2 + v12) = (v5 >> (*(a1 + 4) - 1)) & 1;
    v5 = (*(*(a1 + 40) + 4 * (*(a1 + 52) * v12 + ((v5 & v8) >> 5))) >> ~(v5 & v8)) & 1 | (2 * (v5 & v8));
    v13 = v12-- + 1;
  }

  while (v13 > 1);
  return 0;
}

uint64_t sub_10016D0E4(int *a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 3;
  }

  v3 = *(a1 + 5);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    return 4;
  }

  v5 = *(a1 + 9);
  if (!v5)
  {
    return 4;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = v5;
    v5 = v4;
    if (a1[2])
    {
      v8 = 0;
      v9 = 0;
      v10 = v7 + 4;
      v11 = (v3 + 4 * (a1[13] * v6));
      while (2)
      {
        v12 = 0;
        while (1)
        {
          if (*a1 < 1)
          {
            v14 = 0;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            do
            {
              v15 = *(*(a1 + 3) + 2 * v13) & (v8 >> 1);
              v16 = v15 ^ (v15 >> 8) ^ ((v15 ^ (v15 >> 8)) >> 4);
              v17 = v16 ^ (v16 >> 2) ^ ((v16 ^ (v16 >> 2)) >> 1);
              v18 = *(a3 + 4 * v13);
              v19 = v14 + v18;
              if (__OFADD__(v14, v18))
              {
                v19 = ((v14 + v18) >> 31) ^ 0x80000000;
              }

              v20 = __OFSUB__(v14, v18);
              v14 -= v18;
              if (v20)
              {
                v14 = (v14 >> 31) ^ 0x80000000;
              }

              if ((v17 & 1) == 0)
              {
                v14 = v19;
              }

              ++v13;
            }

            while (*a1 > v13);
          }

          v21 = v8 >> 1;
          v22 = 2 * v12;
          v23 = (v5 + 4 * v8);
          v24 = *v23;
          v25 = v23[1];
          v26 = (a1[3] + v21);
          if (*v23 <= v25)
          {
            v29 = v25 + v14;
            if (__OFADD__(v25, v14))
            {
              v29 = ((v25 + v14) >> 31) ^ 0x80000000;
            }

            *(v7 + 4 * v21) = v29;
            v20 = __OFSUB__(v25, v14);
            v28 = v25 - v14;
            v30 = ((v25 - v14) >> 31) ^ 0x80000000;
            if (v20)
            {
              v28 = v30;
            }

            v22 |= 1u;
          }

          else
          {
            v27 = v24 + v14;
            if (__OFADD__(v24, v14))
            {
              v27 = ((v24 + v14) >> 31) ^ 0x80000000;
            }

            *(v7 + 4 * v21) = v27;
            v20 = __OFSUB__(v24, v14);
            v28 = v24 - v14;
            if (v20)
            {
              v28 = (v28 >> 31) ^ 0x80000000;
            }
          }

          *(v7 + 4 * v26) = v28;
          v32 = v23[2];
          v31 = v23[3];
          v12 = 2 * v22;
          v33 = v31 - v14;
          if (__OFSUB__(v31, v14))
          {
            v33 = ((v31 - v14) >> 31) ^ 0x80000000;
          }

          v34 = v31 + v14;
          if (__OFADD__(v31, v14))
          {
            v34 = ((v31 + v14) >> 31) ^ 0x80000000;
          }

          v35 = v32 - v14;
          if (__OFSUB__(v32, v14))
          {
            v35 = ((v32 - v14) >> 31) ^ 0x80000000;
          }

          v20 = __OFADD__(v32, v14);
          v36 = v32 + v14;
          if (v20)
          {
            v36 = (v36 >> 31) ^ 0x80000000;
          }

          v37 = v32 <= v31;
          v38 = v32 > v31 ? v35 : v33;
          if (v37)
          {
            v36 = v34;
            v12 |= 1u;
          }

          *(v10 + 4 * v21) = v38;
          *(v10 + 4 * v26) = v36;
          if ((v9 & 0x3F) == 0x3C)
          {
            break;
          }

          v9 = v8 + 4;
          v8 = (v8 + 4);
          if (v8 >= a1[2])
          {
            a3 += 4 * *a1;
            if (v12)
            {
              *v11 = v12 << -*(a1 + 12);
            }

            goto LABEL_8;
          }
        }

        *v11++ = v12;
        v9 = v8 + 4;
        v8 = (v8 + 4);
        if (v8 < a1[2])
        {
          continue;
        }

        break;
      }
    }

    a3 += 4 * *a1;
LABEL_8:
    ++v6;
    v4 = v7;
  }

  while (a2 > v6);
  *(a1 + 8) = v7;
  *(a1 + 9) = v5;
  return 0;
}

uint64_t sub_10016D338(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v79 = *(a1 + 40);
  if (!v79)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v209 = 0u;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v78 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v180 = v4;
      v181 = v3;
      v182 = v6;
      v7 = 0;
      v9 = *a3;
      v8 = a3[1];
      v10 = v8 + *a3;
      v12 = a3[2];
      v11 = a3[3];
      v14 = a3[4];
      v13 = a3[5];
      v15 = v10 + v12 + v11;
      v146 = v15;
      v148 = v15 + v14;
      v159 = v15 + v14 + v13;
      v16 = a3[6];
      v17 = a3[7];
      v178 = v159 + v16;
      v18 = a3[9];
      v19 = a3[8] + v17;
      v20 = a3[8];
      v145 = v12 - v10 + v11;
      v157 = v145 - v14 + v13;
      v179 = v157 - v16;
      v22 = a3[10];
      v21 = a3[11];
      v188 = v22 + v19;
      v183 = a3;
      v23 = a3[12];
      v170 = v23 + v21 + v18;
      v189 = v19 + v18 + v22 + v21;
      v197 = v19 + v18 + v22;
      v198[0] = v189 + v23 + v159 + v16;
      v198[1] = v170 + v157 - v16 - (v22 + v19);
      v137 = v10 + v12 - v11;
      v155 = v137 - (v13 + v14);
      v177 = v155 + v16;
      v191 = v19 + v21;
      v134 = v12 - v10 - v11;
      v154 = v134 + v14 - v13;
      v174 = v154 - v16;
      v196 = v19 + v18;
      v198[2] = v22 + v18 + v155 + v16 - (v19 + v21) + v23;
      v198[3] = v19 + v18 + v154 - v16 - (v21 + v22) + v23;
      v129 = v11 - (v10 + v12);
      v132 = v129 - v14 + v13;
      v176 = v132 - v16;
      v195 = v21 + v19 + v18;
      v24 = v10 - v12;
      v120 = v24 + v11;
      v126 = v13 + v14 + v24 + v11;
      v175 = v126 + v16;
      v187 = v22 + v18 + v21;
      v185 = v19;
      v198[4] = v23 + v22 + v132 - v16 - v195;
      v198[5] = v19 + v126 + v16 - v187 + v23;
      v124 = v14 - v13 - v15;
      v173 = v124 - v16;
      v162 = v22 + v21 + v23;
      v118 = v24 - v11;
      v122 = v24 - v11 - (v13 + v14);
      v172 = v122 + v16;
      v198[6] = v19 + v124 - v16 - v18 + v162;
      v198[7] = v23 + v21 + v122 + v16 - v197;
      v25 = v8 - v9;
      v26 = v9 - v8;
      v27 = v8 - v9 - v12;
      v28 = v27 - v11;
      v144 = v13 + v14 + v27 - v11;
      v171 = v144 + v16;
      v186 = v22 + v20;
      v160 = v23 + v22 + v20;
      v161 = v18 + v17 + v21;
      v29 = v26 - v12 - v11;
      v141 = v29 - v14 + v13;
      v169 = v141 - v16;
      v128 = v18 + v20 - v17;
      v193 = v128 + v22 + v21;
      v198[8] = v161 + v144 + v16 - v160;
      v198[9] = v193 + v141 - v16 - v23;
      v30 = v27 + v11;
      v136 = v27 + v11 - (v13 + v14);
      v168 = v136 + v16;
      v31 = v26 - v12 + v11;
      v133 = v31 + v14 - v13;
      v166 = v133 - v16;
      v32 = v20;
      v158 = v20 + v23 + v21;
      v198[10] = v18 + v20 + v136 + v16 - (v17 + v162);
      v198[11] = v22 + v18 + v17 + v133 - v16 - v158;
      v33 = v26 + v12;
      v34 = v25 + v12;
      v35 = v33 - v11;
      v113 = v33 - v11 - v14 + v13;
      v167 = v113 - v16;
      v190 = v18 + v17 + v22;
      v36 = v34 - v11;
      v112 = v13 + v14 + v34 - v11;
      v165 = v112 + v16;
      v184 = v18 + v20;
      v194 = v21 + v18 + v20;
      v198[12] = v20 + v113 - v16 - (v190 + v21 + v23);
      v198[13] = v22 + v17 + v112 + v16 - (v194 + v23);
      v37 = v33 + v11;
      v38 = v34 + v11;
      v110 = v37 + v14 - v13;
      v164 = v110 - v16;
      v140 = v23 + v184 + v22;
      v109 = v38 - (v13 + v14);
      v163 = v109 + v16;
      v192 = v21 + v22 + v32;
      v135 = v18 + v17 + v23;
      v198[14] = v21 + v17 + v110 - v16 - v140;
      v198[15] = v192 + v109 + v16 - v135;
      v117 = v28 - (v13 + v14);
      v156 = v117 - v16;
      v114 = v29 + v14 - v13;
      v153 = v114 + v16;
      v198[16] = v191 + v117 - v16 - (v23 + v22 + v18);
      v198[17] = v21 + v22 + v114 + v16 - (v196 + v23);
      v107 = v13 + v14 + v30;
      v111 = v31 - v14 + v13;
      v150 = v111 + v16;
      v115 = v21 + v18 + v23;
      v149 = v107 - v16;
      v198[18] = v107 - v16 - (v189 + v23);
      v198[19] = v185 + v22 + v111 + v16 - v115;
      v39 = v35 + v14 - v13;
      v152 = v39 + v16;
      v40 = v36 - (v13 + v14);
      v151 = v40 - v16;
      v198[20] = v18 + v39 + v16 - (v188 + v21 + v23);
      v198[21] = v197 + v40 - v16 - (v23 + v21);
      v41 = v37 - v14 + v13;
      v143 = v41 + v16;
      v42 = v13 + v14 + v38;
      v139 = v42 - v16;
      v198[22] = v196 + v21 + v41 + v16 - (v23 + v22);
      v198[23] = v187 + v42 - v16 - (v185 + v23);
      v106 = v146 - (v13 + v14);
      v147 = v106 - v16;
      v84 = v21 + v22 + v17;
      v93 = v145 + v14 - v13;
      v142 = v93 + v16;
      v105 = v23 + v21 + v32;
      v198[24] = v84 + v106 - v16 - v184 + v23;
      v198[25] = v105 + v93 + v16 - v190;
      v89 = v13 + v14 + v137;
      v131 = v89 - v16;
      v86 = v134 - v14 + v13;
      v121 = v86 + v16;
      v198[26] = v186 + v89 - v16 - v161 + v23;
      v198[27] = v23 + v17 + v86 + v16 - (v184 + v22 + v21);
      v43 = v129 + v14 - v13;
      v138 = v43 + v16;
      v44 = v120 - (v13 + v14);
      v130 = v44 - v16;
      v198[28] = v128 + v22 + v43 + v16 - v21 + v23;
      v198[29] = v18 + v17 + v44 - v16 - (v186 + v21) + v23;
      v45 = v13 + v14 + v118;
      v119 = v13 - v148 + v16;
      v46 = v22 + v18 + v17;
      v116 = v45 - v16;
      v198[30] = v46 + v119 - v32 + v21 + v23;
      v198[31] = v184 + v45 - v16 - (v22 + v17) + v21 + v23;
      v104 = v39 - v16;
      v103 = v40 + v16;
      v198[32] = v22 + v39 - v16 - (v195 + v23);
      v198[33] = v185 + v40 + v16 - (v187 + v23);
      v101 = v41 - v16;
      v98 = v42 + v16;
      v198[34] = v185 + v41 - v16 - v18 + v22 + v21 - v23;
      v198[35] = v21 + v42 + v16 - (v23 + v197);
      v102 = v117 + v16;
      v100 = v114 - v16;
      v198[36] = v189 + v117 + v16 - v23;
      v198[37] = v21 + v18 + v114 - v16 - (v23 + v188);
      v96 = v107 + v16;
      v92 = v111 - v16;
      v198[38] = v22 + v18 + v107 + v16 - (v185 + v23 + v21);
      v198[39] = v196 + v111 - v16 - v162;
      v99 = v43 - v16;
      v81 = v32;
      v85 = v23 + v32;
      v95 = v44 + v16;
      v198[40] = v23 + v32 + v43 - v16 - (v190 + v21);
      v198[41] = v23 + v22 + v17 + v44 + v16 - v194;
      v91 = v13 - v148 - v16;
      v88 = v45 + v16;
      v198[42] = v23 + v21 + v17 + v91 - (v184 + v22);
      v198[43] = v192 + v45 + v16 - (v18 + v17) + v23;
      v97 = v106 + v16;
      v108 = v23 + v21 + v17 + v18;
      v94 = v93 - v16;
      v198[44] = v108 + v106 + v16 - v186;
      v198[45] = v193 + v23 + v94;
      v90 = v89 + v16;
      v87 = v86 - v16;
      v198[46] = v184 + v90 - v84 + v23;
      v198[47] = v46 + v87 - (v32 + v21) + v23;
      v82 = v132 + v16;
      v83 = v32 + v21;
      v80 = v126 - v16;
      v198[48] = v23 + v18 + v132 + v16 - (v188 + v21);
      v198[49] = v197 + v126 - v16 - v21 + v23;
      v47 = v124 + v16;
      v48 = v122 - v16;
      v198[50] = v196 + v124 + v16 - v22 + v21 + v23;
      v198[51] = v22 + v18 + v122 - v16 - v185 + v21 + v23;
      v127 = v159 - v16;
      v125 = v157 + v16;
      v198[52] = v185 + v159 - v16 - (v22 + v18) + v21 + v23;
      v198[53] = v21 + v22 + v157 + v16 - v196 + v23;
      v49 = v155 - v16;
      v50 = v154 + v16;
      v198[54] = v155 - v16 - v189 + v23;
      v198[55] = v185 + v22 + v154 + v16 - (v21 + v18) + v23;
      v123 = v113 + v16;
      v51 = v112 - v16;
      v198[56] = v128 + v22 + v113 + v16 - (v23 + v21);
      v198[57] = v18 + v17 + v112 - v16 - (v186 + v21 + v23);
      v52 = v110 + v16;
      v53 = v109 - v16;
      v198[58] = v46 + v21 + v110 + v16 - (v23 + v81);
      v198[59] = v128 + v21 + v109 - v16 - (v23 + v22);
      v54 = v144 - v16;
      v55 = v141 + v16;
      v198[60] = v84 + v144 - v16 - (v184 + v23);
      v198[61] = v83 + v141 + v16 - (v23 + v190);
      v56 = v136 - v16;
      v57 = v133 + v16;
      v198[62] = v186 + v56 - (v161 + v23);
      v198[63] = v57 + v17 - (v184 + v22 + v21 + v23);
      v198[64] = v46 + v48 - v81 + v21 + v23;
      v198[65] = v184 + v47 - (v22 + v17) + v21 + v23;
      v198[66] = v128 + v22 + v80 - v21 + v23;
      v198[67] = v18 + v17 + v82 - (v186 + v21) + v23;
      v198[68] = v186 + v50 - v161 + v23;
      v198[69] = v23 + v17 + v49 - (v184 + v22 + v21);
      v198[70] = v84 + v125 - v184 + v23;
      v198[71] = v105 + v127 - v190;
      v198[72] = v196 + v21 + v53 - (v23 + v22);
      v198[73] = v187 + v52 - (v185 + v23);
      v198[74] = v18 + v51 - (v188 + v21 + v23);
      v198[75] = v197 + v123 - (v23 + v21);
      v198[76] = v57 - (v189 + v23);
      v198[77] = v185 + v22 + v56 - v115;
      v198[78] = v191 + v55 - (v23 + v22 + v18);
      v198[79] = v21 + v22 + v54 - (v196 + v23);
      v198[80] = v21 + v17 + v98 - v140;
      v198[81] = v192 + v101 - v135;
      v198[82] = v103 + v81 - (v190 + v21 + v23);
      v198[83] = v22 + v17 + v104 - (v194 + v23);
      LODWORD(v199) = v184 + v92 - (v17 + v162);
      DWORD1(v199) = v46 + v96 - v158;
      DWORD2(v199) = v161 + v100 - v160;
      HIDWORD(v199) = v193 + v102 - v23;
      LODWORD(v200) = v185 + v88 - v18 + v162;
      DWORD1(v200) = v23 + v21 + v91 - v197;
      DWORD2(v200) = v23 + v22 + v95 - v195;
      HIDWORD(v200) = v185 + v99 - v187 + v23;
      LODWORD(v201) = v22 + v18 + v87 - v191 + v23;
      DWORD1(v201) = v196 + v90 - (v21 + v22) + v23;
      DWORD2(v201) = v189 + v23 + v94;
      HIDWORD(v201) = v170 + v97 - v188;
      LODWORD(v202) = v186 + v150 - (v161 + v23);
      DWORD1(v202) = v149 + v17 - (v184 + v22 + v21 + v23);
      DWORD2(v202) = v84 + v153 - (v184 + v23);
      HIDWORD(v202) = v83 + v156 - (v23 + v190);
      LODWORD(v203) = v46 + v21 + v139 - v85;
      DWORD1(v203) = v128 + v21 + v143 - (v23 + v22);
      DWORD2(v203) = v128 + v22 + v151 - (v23 + v21);
      HIDWORD(v203) = v18 + v17 + v152 - (v186 + v21 + v23);
      LODWORD(v204) = v121 - v189 + v23;
      DWORD1(v204) = v185 + v22 + v131 - (v21 + v18) + v23;
      DWORD2(v204) = v185 + v142 - (v22 + v18) + v21 + v23;
      HIDWORD(v204) = v21 + v22 + v147 - v196 + v23;
      LODWORD(v205) = v196 + v116 - v22 + v21 + v23;
      DWORD1(v205) = v22 + v18 + v119 - v185 + v21 + v23;
      DWORD2(v205) = v23 + v18 + v130 - (v188 + v21);
      HIDWORD(v205) = v197 + v138 - v21 + v23;
      LODWORD(v206) = v184 + v174 - v84 + v23;
      DWORD1(v206) = v46 + v177 - v83 + v23;
      DWORD2(v206) = v108 + v179 - v186;
      HIDWORD(v206) = v193 + v23 + v178;
      LODWORD(v207) = v23 + v21 + v17 + v172 - (v184 + v22);
      DWORD1(v207) = v192 + v173 - (v18 + v17) + v23;
      DWORD2(v207) = v85 + v175 - (v190 + v21);
      HIDWORD(v207) = v23 + v22 + v17 + v176 - v194;
      LODWORD(v208) = v22 + v18 + v166 - (v185 + v23 + v21);
      DWORD1(v208) = v196 + v168 - v162;
      DWORD2(v208) = v189 + v169 - v23;
      HIDWORD(v208) = v21 + v18 + v171 - (v23 + v188);
      LODWORD(v209) = v185 + v163 - v18 + v22 + v21 - v23;
      DWORD1(v209) = v21 + v164 - (v23 + v197);
      DWORD2(v209) = v22 + v165 - (v195 + v23);
      HIDWORD(v209) = v185 + v167 - (v187 + v23);
      v4 = v181;
      v58 = (v79 + 32 * v182);
LABEL_9:
      v59 = 0;
      v60 = (v198 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v61 = (v181 + 8 + 4 * v7);
      v62 = (v180 + 4 * (v7 >> 1));
      do
      {
        v64 = *v60++;
        v63 = v64;
        v66 = *(v61 - 2);
        v65 = *(v61 - 1);
        v67 = v66 <= v65;
        if (v66 <= v65)
        {
          v66 = *(v61 - 1);
        }

        v68 = v66 + v63;
        if (__OFADD__(v66, v63))
        {
          v68 = ((v66 + v63) >> 31) ^ 0x80000000;
        }

        *v62 = v68;
        v69 = __OFSUB__(v66, v63);
        v70 = v66 - v63;
        if (v69)
        {
          v70 = (v70 >> 31) ^ 0x80000000;
        }

        v62[256] = v70;
        v59 = (4 * v59) | (2 * v67);
        v71 = *v61;
        if (*v61 <= v61[1])
        {
          v71 = v61[1];
          ++v59;
        }

        v72 = v71 - v63;
        if (__OFSUB__(v71, v63))
        {
          v72 = ((v71 - v63) >> 31) ^ 0x80000000;
        }

        v62[1] = v72;
        v69 = __OFADD__(v71, v63);
        v73 = v71 + v63;
        if (v69)
        {
          v73 = (v73 >> 31) ^ 0x80000000;
        }

        v62[257] = v73;
        if ((~v7 & 0x3C) == 0)
        {
          *v58++ = v59;
          v74 = v7 >= 0x1FC;
          v7 += 4;
          if (v74)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v61 += 4;
        v62 += 2;
        v74 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v74);
      if (v59)
      {
        *v58 = v59;
      }

LABEL_7:
      a3 = v183 + 13;
      v6 = v182 + 1;
      v3 = v180;
    }

    while (v182 + 1 != v78);
    v3 = v180;
    v76 = a1;
  }

  else
  {
    v76 = a1;
  }

  result = 0;
  *(v76 + 64) = v3;
  *(v76 + 72) = v4;
  return result;
}

uint64_t sub_10016E558(uint64_t a1, uint64_t a2, int *a3)
{
  v72 = *(a1 + 40);
  if (!v72)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v71 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v115 = v3;
      v116 = v4;
      v117 = v5;
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = v7 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11;
      v82 = v9 + v11 + v10;
      v13 = a3[4];
      v14 = a3[5];
      v111 = v82 + v13;
      v94 = v82 + v13 + v14;
      v16 = a3[10];
      v15 = a3[11];
      v17 = a3[12];
      v19 = a3[6];
      v18 = a3[7];
      v95 = v17 + v15 + v19;
      v21 = a3[8];
      v20 = a3[9];
      v96 = *a3 - v7 - v11;
      v93 = v96 + v10;
      v113 = v96 + v10 - v13;
      v118 = v17 + v15 + v14;
      v119[0] = v95 + v18 + v21 + v20 + v94 + v16;
      v119[1] = v118 + v19 + v113 - (v21 + v18) + v20 + v16;
      v101 = v9 - v11;
      v92 = v9 - v11 - v10;
      v114 = v92 - v13;
      v89 = v21 + v19 + v14 + v16 + v20;
      v22 = v8 - v7 + v11;
      v110 = v22 - v10 + v13;
      v23 = v19 + v14 + v18 + v16 + v20;
      v119[2] = v17 + v15 + v18 + v92 - v13 - v89;
      v119[3] = v17 + v15 + v21 + v110 - v23;
      v24 = v11 - v9;
      v112 = v24 - v10 + v13;
      v25 = v18 + v14 + v21 + v16 + v20;
      v26 = v7 - v8;
      v27 = v21 + v18 - v14 + v19;
      v28 = v26 - v11;
      v90 = v26 - v11 - v10;
      v109 = v27;
      v119[4] = v15 + v19 + v112 - (v25 + v17);
      v119[5] = v27 + v15 + v90 - v13 - (v16 + v20 + v17);
      v107 = v90 - v13;
      v108 = v10 - v12 - v13;
      v29 = v16 + v20 + v14;
      v30 = v26 + v11;
      v105 = v30 + v10 + v13;
      v119[6] = v29 + v108 - (v18 + v19) + v21 + v15 - v17;
      v119[7] = v29 + v18 + v15 + v105 - (v21 + v19 + v17);
      v87 = v30 - v10;
      v103 = v30 - v10 - v13;
      v104 = v13 - v82;
      v119[8] = v27 + v13 - v82 - (v16 + v20 + v15) + v17;
      v119[9] = v19 + v103 - (v15 + v25) + v17;
      v80 = v24 + v10;
      v106 = v24 + v10 - v13;
      v100 = v28 + v10 + v13;
      v119[10] = v29 + v18 + v106 - (v21 + v19 + v15) + v17;
      v119[11] = v29 + v21 + v100 - (v18 + v19 + v15) + v17;
      v31 = v101 + v10;
      v102 = v101 + v10 + v13;
      v85 = v22 + v10;
      v98 = v22 + v10 - v13;
      v119[12] = v29 + v19 + v102 - (v21 + v18 + v17 + v15);
      v119[13] = v29 + v19 + v18 + v98 + v21 - (v17 + v15);
      v77 = v12 - v10;
      v99 = v12 - v10 - v13;
      v73 = v96 - v10;
      v97 = v96 - v10 + v13;
      v119[14] = v21 + v99 - (v15 + v17 + v23);
      v119[15] = v18 + v97 - (v15 + v17 + v89);
      v84 = v22 - v10 - v13;
      v91 = v19 + v14 + v18 + v21;
      v119[16] = v17 + v15 + v84 - (v91 + v20) + v16;
      v119[17] = v17 + v15 + v92 + v13 - (v19 + v14) + v18 + v21 - v20 + v16;
      v119[18] = v118 + v19 + v93 + v13 - v18 + v21 + v20 - v16;
      v119[19] = v18 + v20 + v118 + v19 + v82 - v13 - (v16 + v21);
      v79 = v30 + v10 - v13;
      v75 = v10 - v12 + v13;
      v32 = v18 + v19 + v21;
      v119[20] = v21 + v18 + v14 + v79 - v19 + v20 + v15 - (v17 + v16);
      v119[21] = v15 + v20 + v14 + v75 - (v16 + v32 + v17);
      v83 = v90 + v13;
      v33 = v24 - v10 - v13;
      v34 = v20 + v18 + v14;
      v119[22] = v15 + v16 - v14 + v19 + v18 + v90 + v13 - (v20 + v21 + v17);
      v119[23] = v15 + v16 + v19 + v21 + v33 - (v34 + v17);
      v76 = v28 + v10 - v13;
      v35 = v80 + v13;
      v119[24] = v20 + v14 + v76 - (v15 + v16 + v32) + v17;
      v119[25] = v21 + v18 + v14 + v20 + v80 + v13 - (v19 + v15 + v16) + v17;
      v81 = v87 + v13;
      v119[26] = v16 + v21 + v19 + v87 + v13 - (v34 + v15) + v17;
      v119[27] = v18 + v19 + v16 - (v20 + v21 + v15) - v94 + v17;
      v88 = v73 - v13;
      v78 = v77 + v13;
      v119[28] = v21 + v18 + v16 + v73 - v13 - (v19 + v14 + v17 + v15 + v20);
      v119[29] = v16 + v78 - (v91 + v20 + v15 + v17);
      v86 = v85 + v13;
      v36 = v18 + v19 + v14;
      v74 = v31 - v13;
      v119[30] = v36 + v20 + v86 - (v15 + v17 + v16 + v21);
      v119[31] = v20 + v21 + v14 + v19 + v31 - v13 - (v18 + v15 + v16 + v17);
      v37 = v32 + v16 + v20;
      v119[32] = v118 + v92 + v13 - v37;
      v119[33] = v118 + v84 - v19 + v18 + v21 - (v16 + v20);
      v38 = v17 + v15 - v14 + v19 + v18;
      v119[34] = v95 + v82 - v13 - (v18 + v14) + v21 + v20 + v16;
      v119[35] = v38 + v93 + v13 - v21 + v20 + v16;
      v39 = v16 + v20 + v15;
      v119[36] = v16 + v20 + v75 - (v19 + v14) + v18 + v21 + v15 - v17;
      v119[37] = v39 + v79 - (v91 + v17);
      v40 = v20 + v21 + v16;
      v41 = v18 + v20;
      v119[38] = v36 + v15 + v33 - (v40 + v17);
      v119[39] = v19 + v14 + v21 + v15 + v83 - (v18 + v20 + v16 + v17);
      v119[40] = v16 + v20 + v35 - (v91 + v15) + v17;
      v119[41] = v16 + v20 + v76 - (v19 + v14) + v18 + v21 - v15 + v17;
      v42 = v21 + v19 + v14;
      v119[42] = v42 - (v18 + v20 + v16 + v15) - v111 + v17;
      v119[43] = v36 + v81 - (v15 + v40) + v17;
      v43 = v21 + v18 + v14;
      v119[44] = v43 + v78 - (v19 + v17 + v39);
      v119[45] = v88 + v14 - (v15 + v17 + v37);
      v44 = v18 + v14;
      v119[46] = v16 + v20 - v14 + v19 + v18 + v74 - (v21 + v17 + v15);
      v119[47] = v16 + v20 + v19 + v21 + v86 - (v18 + v14 + v17 + v15);
      v45 = v16 + v18 + v14 + v21;
      v119[48] = v38 + v113 + v21 + v20 - v16;
      v119[49] = v95 + v20 + v111 - v45;
      v46 = v21 + v19 + v20;
      v47 = v20 + v18 + v19;
      v119[50] = v118 + v18 + v110 - v46 + v16;
      v119[51] = v118 + v21 + v114 - v47 + v16;
      v48 = v21 + v18 + v20;
      v49 = v15 + v16 + v14 + v19;
      v119[52] = v49 + v107 - (v48 + v17);
      v119[53] = v49 + v18 + v112 + v21 - (v20 + v17);
      v50 = v19 + v14 + v18;
      v119[54] = v20 + v21 + v15 + v105 - (v50 + v17 + v16);
      v119[55] = v41 + v15 + v108 - (v16 + v42 + v17);
      v119[56] = v43 + v19 + v16 + v103 - (v15 + v20) + v17;
      v119[57] = v19 + v14 + v16 + v104 - (v48 + v15) + v17;
      v119[58] = v41 + v100 - (v15 + v16 + v42) + v17;
      v119[59] = v20 + v21 + v106 - (v50 + v15 + v16) + v17;
      v119[60] = v20 + v19 + v98 - (v15 + v17 + v45);
      v119[61] = v109 + v20 + v102 - (v15 + v16 + v17);
      v119[62] = v16 + v21 + v14 + v97 - (v47 + v15 + v17);
      v119[63] = v44 + v16 + v99 - (v46 + v15 + v17);
      v4 = v115;
      v51 = (v72 + 16 * v117);
LABEL_9:
      v52 = 0;
      v53 = (v119 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v54 = (v115 + 8 + 4 * v6);
      v55 = (v116 + 4 * (v6 >> 1));
      do
      {
        v57 = *v53++;
        v56 = v57;
        v59 = *(v54 - 2);
        v58 = *(v54 - 1);
        v60 = v59 <= v58;
        if (v59 <= v58)
        {
          v59 = *(v54 - 1);
        }

        v61 = v59 + v56;
        if (__OFADD__(v59, v56))
        {
          v61 = ((v59 + v56) >> 31) ^ 0x80000000;
        }

        *v55 = v61;
        v62 = __OFSUB__(v59, v56);
        v63 = v59 - v56;
        if (v62)
        {
          v63 = (v63 >> 31) ^ 0x80000000;
        }

        v55[128] = v63;
        v52 = (4 * v52) | (2 * v60);
        v64 = *v54;
        if (*v54 <= v54[1])
        {
          v64 = v54[1];
          ++v52;
        }

        v65 = v64 - v56;
        if (__OFSUB__(v64, v56))
        {
          v65 = ((v64 - v56) >> 31) ^ 0x80000000;
        }

        v55[1] = v65;
        v62 = __OFADD__(v64, v56);
        v66 = v64 + v56;
        if (v62)
        {
          v66 = (v66 >> 31) ^ 0x80000000;
        }

        v55[129] = v66;
        if ((~v6 & 0x3C) == 0)
        {
          *v51++ = v52;
          v67 = v6 >= 0xFC;
          v6 += 4;
          if (v67)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v54 += 4;
        v55 += 2;
        v67 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v67);
      if (v52)
      {
        *v51 = v52;
      }

LABEL_7:
      a3 += 13;
      v5 = v117 + 1;
      v3 = v116;
    }

    while (v117 + 1 != v71);
    v3 = v116;
    v69 = a1;
  }

  else
  {
    v69 = a1;
  }

  result = 0;
  *(v69 + 64) = v3;
  *(v69 + 72) = v4;
  return result;
}

uint64_t sub_10016F0B4(uint64_t a1, uint64_t a2, int *a3)
{
  v67 = *(a1 + 40);
  if (!v67)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v66 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v92 = v4;
      v93 = v3;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v87 = v9 + v11 + v10;
      v88 = v9 + v11;
      v13 = a3[4];
      v12 = a3[5];
      v91 = v87 + v13;
      v14 = a3[8];
      v15 = a3[9];
      v16 = a3[10];
      v17 = a3[11];
      v18 = a3[6];
      v19 = a3[7];
      v20 = a3[12];
      v89 = v11 - v9;
      v81 = v11 - v9 + v10;
      v90 = v18 + v13;
      v94[0] = v16 + v15 + v12 + v18 + v19 + v87 + v13 + v14 + v17 + v20;
      v94[1] = v18 + v13 + v16 + v81 - (v19 + v12 + v15 + v14 + v17 + v20);
      v73 = v10 - (v9 + v11);
      v79 = v9 - v11;
      v71 = v9 - v11 + v10;
      v75 = v12 + v13 + v18;
      v21 = v14 + v16 + v15;
      v94[2] = v15 + v14 + v12 + v73 - (v19 + v18 + v13 + v20 + v17 + v16);
      v94[3] = v20 + v17 + v19 + v71 - (v21 + v75);
      v22 = v8 - v7;
      v86 = v8 - v7 - v11;
      v23 = v19 + v12 + v13;
      v70 = v12 + v13;
      v24 = v7 - v8;
      v25 = v19 + v18 - v13 + v12;
      v83 = v24 - v11;
      v84 = v23;
      v26 = v24 - v11 - v10;
      v94[4] = v16 + v15 + v18 + v86 - v10 - (v23 + v14 + v17) + v20;
      v94[5] = v25 + v26 + v14 - v15 + v16 + v17 - v20;
      v77 = v24 + v11;
      v68 = v25;
      v69 = v15 + v19 + v13;
      v27 = v24 + v11 - v10;
      v28 = v18 + v12 + v16 + v14;
      v76 = v18 + v12;
      v72 = v22 + v11;
      v29 = v22 + v11 - v10;
      v80 = v19 + v18;
      v94[6] = v69 + v17 + v27 - (v28 + v20);
      v94[7] = v12 + v13 + v14 + v29 - (v19 + v18 + v15 + v16 + v17) + v20;
      v85 = v15 + v14 + v18;
      v94[8] = v85 + v17 + v27 - (v23 + v16 + v20);
      v94[9] = v25 + v29 - (v17 + v21) + v20;
      v78 = v19 + v18 + v15 + v14;
      v30 = v16 + v15 + v13;
      v94[10] = v30 + v86 - v10 - (v18 + v12) + v19 + v14 - v17 + v20;
      v94[11] = v17 + v16 + v13 + v12 + v26 - (v78 + v20);
      v31 = v19 + v18 + v13;
      v32 = v31 + v12 + v73 + v15 - (v17 + v20 + v16 + v14);
      v74 = v20 + v17 + v13;
      v33 = v74 + v18;
      v94[12] = v32;
      v94[13] = v74 + v18 + v71 + v14 - (v19 + v12 + v16 + v15);
      v34 = v31 + v14;
      v35 = v31;
      v36 = v16 + v15 + v12;
      v94[14] = v36 + v87 - v34 + v17 + v20;
      v94[15] = v16 + v14 + v19 + v81 - (v75 + v20 + v17 + v15);
      v82 = v79 - v10;
      v37 = v18 + v19;
      v94[16] = v69 + v79 - v10 - (v28 + v17) + v20;
      v94[17] = v17 + v14 + v70 - v20 - (v87 + v18 + v19 + v15 + v16);
      v38 = v89 - v10;
      v39 = v16 + v15 + v18 + v17 + v89 - v10 - (v23 + v14 + v20);
      v40 = v88 - v10;
      v94[18] = v39;
      v94[19] = v68 + v88 - v10 + v14 + v16 - (v17 + v15) + v20;
      v41 = v72 + v10;
      v42 = v77 + v10;
      v94[20] = v20 + v17 + v12 + v72 + v10 - v35 + v14 + v15 - v16;
      v94[21] = v19 + v77 + v10 - (v17 + v20 + v21 + v75);
      v43 = v83 + v10;
      v44 = v30 + v12 + v83 + v10 + v37 + v14;
      v45 = v86 + v10;
      v94[22] = v44 - (v20 + v17);
      v94[23] = v33 + v45 - (v19 + v12 + v15 + v14) + v16;
      v94[24] = v36 + v43 - (v34 + v20 + v17);
      v94[25] = v20 + v17 + v45 - v75 + v19 + v14 - v15 + v16;
      v94[26] = v74 + v12 + v41 + v37 + v15 - (v16 + v14);
      v94[27] = v90 + v14 + v42 - (v17 + v20 + v19 + v12 + v16 + v15);
      v94[28] = v30 + v38 - v76 + v19 + v14 + v17 - v20;
      v94[29] = v70 + v16 + v40 - (v78 + v17) + v20;
      v4 = v93;
      v94[30] = v85 + v82 - (v84 + v17 + v16) + v20;
      v94[31] = v80 - v91 + v12 + v17 - (v21 + v20);
      v46 = (v67 + 8 * v5);
LABEL_9:
      v47 = 0;
      v48 = (v94 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v49 = (v93 + 8 + 4 * v6);
      v50 = (v92 + 256 + 4 * (v6 >> 1));
      do
      {
        v52 = *v48++;
        v51 = v52;
        v53 = *(v49 - 2);
        v54 = *(v49 - 1);
        v55 = v53 <= v54;
        if (v53 <= v54)
        {
          v53 = *(v49 - 1);
        }

        v56 = v53 + v51;
        if (__OFADD__(v53, v51))
        {
          v56 = ((v53 + v51) >> 31) ^ 0x80000000;
        }

        *(v50 - 64) = v56;
        v57 = __OFSUB__(v53, v51);
        v58 = v53 - v51;
        if (v57)
        {
          v58 = (v58 >> 31) ^ 0x80000000;
        }

        *v50 = v58;
        v47 = (4 * v47) | (2 * v55);
        v59 = *v49;
        if (*v49 <= v49[1])
        {
          v59 = v49[1];
          ++v47;
        }

        v60 = v59 - v51;
        if (__OFSUB__(v59, v51))
        {
          v60 = ((v59 - v51) >> 31) ^ 0x80000000;
        }

        *(v50 - 63) = v60;
        v57 = __OFADD__(v59, v51);
        v61 = v59 + v51;
        if (v57)
        {
          v61 = (v61 >> 31) ^ 0x80000000;
        }

        v50[1] = v61;
        if ((~v6 & 0x3C) == 0)
        {
          *v46++ = v47;
          v62 = v6 >= 0x7C;
          v6 += 4;
          if (v62)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v49 += 4;
        v50 += 2;
        v62 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v62);
      if (v47)
      {
        *v46 = v47;
      }

LABEL_7:
      a3 += 13;
      ++v5;
      v3 = v92;
    }

    while (v5 != v66);
    v3 = v92;
    v64 = a1;
  }

  else
  {
    v64 = a1;
  }

  result = 0;
  *(v64 + 64) = v3;
  *(v64 + 72) = v4;
  return result;
}

uint64_t sub_10016F770(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v73 = *(a1 + 40);
  if (!v73)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v142 = 0u;
  v72 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v113 = v4;
      v114 = v3;
      v115 = v6;
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 + *a3;
      v11 = a3[2];
      v12 = a3[3];
      v13 = a3[4];
      v14 = a3[5];
      v15 = v10 + v11 + v12;
      v89 = v15 + v13;
      v107 = v15 + v13 + v14;
      v17 = a3[6];
      v16 = a3[7];
      v112 = v107 + v17;
      v18 = a3[8] + v16;
      v19 = a3[8];
      v20 = v18 + a3[9];
      v21 = a3[9];
      v23 = a3[10];
      v22 = a3[11];
      v109 = a3;
      v127 = v11 - v10 + v12;
      v106 = v127 - v13 + v14;
      v129 = v23 + v18;
      v125 = v22 + v21;
      v135 = v20 + v23 + v22;
      v121 = v20 + v23;
      v141[0] = v135 + v107 + v17;
      v141[1] = v22 + v21 + v106 - v17 - (v23 + v18);
      v126 = v10 + v11 - v12;
      v104 = v126 - (v14 + v13);
      v120 = v11 - v10 - v12;
      v103 = v120 + v13 - v14;
      v134 = v20;
      v141[2] = v23 + v21 + v104 + v17 - (v18 + v22);
      v141[3] = v20 + v103 - v17 - (v22 + v23);
      v101 = v12 - (v10 + v11);
      v96 = v101 - v13 + v14;
      v111 = v96 - v17;
      v133 = v22 + v20;
      v24 = v23 + v96 - v17 - (v22 + v20);
      v25 = v10 - v11;
      v99 = v25 + v12;
      v93 = v14 + v13 + v25 + v12;
      v110 = v93 + v17;
      v26 = v23 + v21;
      v132 = v23 + v21 + v22;
      v141[4] = v24;
      v141[5] = v18 + v93 + v17 - v132;
      v92 = v13 - v14 - v15;
      v131 = v23 + v22;
      v88 = v25 - v12;
      v91 = v25 - v12 - (v14 + v13);
      v141[6] = v18 + v92 - v17 - v21 + v23 + v22;
      v141[7] = v91 + v17 - v121 + v22;
      v27 = v9 - v8;
      v28 = v8 - v9;
      v29 = v9 - v8 - v11;
      v30 = v29 - v12;
      v102 = v14 + v13 + v29 - v12;
      v122 = v23 + v19;
      v118 = v21;
      v31 = v21 + v16;
      v32 = v21 + v16 + v102 + v17 - (v23 + v19) + v22;
      v33 = v28 - v11 - v12;
      v100 = v33 - v13 + v14;
      v34 = v21 + v19;
      v35 = v16;
      v137 = v34 - v16 + v23;
      v141[8] = v32;
      v141[9] = v137 + v22 + v100 - v17;
      v36 = v29 + v12;
      v98 = v29 + v12 - (v14 + v13);
      v123 = v16 + v22 + v23;
      v37 = v28 - v11 + v12;
      v95 = v37 + v13 - v14;
      v124 = v26 + v16;
      v130 = v19 + v22;
      v141[10] = v34 + v98 + v17 - v123;
      v141[11] = v26 + v16 + v95 - v17 - (v19 + v22);
      v38 = v28 + v11;
      v39 = v27 + v11;
      v87 = v38 - v12 - v13 + v14;
      v40 = v23;
      v136 = v31 + v23;
      v140 = v31 + v23 + v22;
      v86 = v14 + v13 + v27 + v11 - v12;
      v139 = v22 + v34;
      v74 = v19;
      v75 = v23 + v35;
      v141[12] = v19 + v87 - v17 - v140;
      v141[13] = v23 + v35 + v86 + v17 - (v22 + v34);
      v85 = v38 + v12 + v13 - v14;
      v41 = v34 + v23;
      v84 = v27 + v11 + v12 - (v14 + v13);
      v119 = v22 + v23;
      v138 = v22 + v23 + v19;
      v141[14] = v22 + v35 + v85 - v17 - (v34 + v23);
      v141[15] = v138 + v84 + v17 - v31;
      v82 = v30 - (v14 + v13);
      v105 = v82 - v17;
      v116 = v26;
      v81 = v33 + v13 - v14;
      v141[16] = v18 + v82 - v17 - v26 + v22;
      v141[17] = v22 + v23 + v81 + v17 - v134;
      v79 = v14 + v13 + v36;
      v80 = v37 - v13 + v14;
      v117 = v23;
      v128 = v18 + v23;
      v141[18] = v79 - v17 - v135;
      v141[19] = v18 + v23 + v80 + v17 - v125;
      v42 = v38 - v12 + v13 - v14;
      v43 = v27 + v11 - v12 - (v14 + v13);
      v141[20] = v118 + v42 + v17 - (v129 + v22);
      v141[21] = v121 + v43 - v17 - v22;
      v44 = v38 + v12 - v13 + v14;
      v45 = v14 + v13 + v39 + v12;
      v141[22] = v134 + v44 + v17 - v40 + v22;
      v141[23] = v26 + v45 - v17 - v18 + v22;
      v78 = v15 - (v14 + v13);
      v46 = v34;
      v77 = v127 + v13 - v14;
      v141[24] = v123 + v78 - v17 - v34;
      v141[25] = v19 + v22 + v77 + v17 - v136;
      v76 = v14 + v13 + v126;
      v47 = v120 - v13 + v14;
      v141[26] = v122 + v76 - v17 - (v22 + v31);
      v141[27] = v47 + v17 + v35 - (v41 + v22);
      v48 = v101 + v13 - v14;
      v49 = v99 - (v14 + v13);
      v141[28] = v137 + v48 + v17 - v22;
      v141[29] = v31 + v49 - v17 - (v122 + v22);
      v50 = v14 - v89;
      v51 = v14 + v13 + v88;
      v90 = v14 - v89 + v17;
      v141[30] = v124 + v90 - v74 + v22;
      v141[31] = v46 + v51 - v17 - v75 + v22;
      v141[32] = v117 + v42 - v17 - v133;
      v141[33] = v18 + v43 + v17 - v132;
      v141[34] = v18 + v44 - v17 - v118 + v131;
      v141[35] = v45 + v17 - v121 + v22;
      v83 = v82 + v17;
      v141[36] = v135 + v83;
      v141[37] = v125 + v81 - v17 - v129;
      v141[38] = v116 + v79 + v17 - (v18 + v22);
      v141[39] = v134 + v80 - v17 - v119;
      v141[40] = v74 + v48 - v17 - v140;
      v141[41] = v75 + v49 + v17 - v139;
      v141[42] = v22 + v35 + v50 - v17 - v41;
      v141[43] = v138 + v51 + v17 - v31;
      v141[44] = v31 + v78 + v17 - v122 + v22;
      v141[45] = v137 + v22 + v77 - v17;
      v141[46] = v46 + v76 + v17 - v123;
      v141[47] = v124 + v47 - v17 - v130;
      v97 = v96 + v17;
      v94 = v93 - v17;
      v141[48] = v118 + v97 - (v129 + v22);
      v141[49] = v121 + v94 - v22;
      v141[50] = v134 + v92 + v17 - v117 + v22;
      v141[51] = v116 + v91 - v17 - v18 + v22;
      v108 = v107 - v17;
      v141[52] = v18 + v108 - v116 + v22;
      v141[53] = v119 + v106 + v17 - v134;
      v141[54] = v104 - v17 - v135;
      v141[55] = v128 + v103 + v17 - v125;
      v141[56] = v137 + v87 + v17 - v22;
      v141[57] = v31 + v86 - v17 - (v122 + v22);
      v141[58] = v124 + v85 + v17 - v74 + v22;
      v141[59] = v46 + v84 - v17 - v75 + v22;
      v141[60] = v123 + v102 - v17 - v46;
      v141[61] = v130 + v100 + v17 - v136;
      v141[62] = v122 + v98 - v17 - (v22 + v31);
      v141[63] = v95 + v17 + v35 - (v41 + v22);
      v141[64] = v124 + v91 - v17 - v74 + v22;
      v141[65] = v46 + v92 + v17 - v75 + v22;
      v141[66] = v137 + v94 - v22;
      v141[67] = v31 + v97 - (v122 + v22);
      v141[68] = v122 + v103 + v17 - (v22 + v31);
      v141[69] = v104 - v17 + v35 - (v41 + v22);
      v141[70] = v123 + v106 + v17 - v46;
      v141[71] = v130 + v108 - v136;
      v141[72] = v134 + v84 - v17 - v117 + v22;
      v141[73] = v116 + v85 + v17 - v18 + v22;
      v141[74] = v118 + v86 - v17 - (v129 + v22);
      v141[75] = v121 + v87 + v17 - v22;
      v141[76] = v95 + v17 - v135;
      v141[77] = v128 + v98 - v17 - v125;
      v141[78] = v18 + v100 + v17 - v116 + v22;
      v141[79] = v119 + v102 - v17 - v134;
      v141[80] = v22 + v35 + v45 + v17 - v41;
      v141[81] = v138 + v44 - v17 - v31;
      v141[82] = v43 + v17 + v74 - v140;
      v141[83] = v75 + v42 - v17 - v139;
      LODWORD(v142) = v46 + v80 - v17 - v123;
      DWORD1(v142) = v124 + v79 + v17 - v130;
      DWORD2(v142) = v31 + v81 - v17 - v122 + v22;
      HIDWORD(v142) = v137 + v22 + v83;
      LODWORD(v143) = v18 + v51 + v17 - v118 + v131;
      DWORD1(v143) = v50 - v17 - v121 + v22;
      DWORD2(v143) = v117 + v49 + v17 - v133;
      HIDWORD(v143) = v18 + v48 - v17 - v132;
      LODWORD(v144) = v116 + v47 - v17 - (v18 + v22);
      DWORD1(v144) = v134 + v76 + v17 - v119;
      DWORD2(v144) = v135 + v77 - v17;
      HIDWORD(v144) = v125 + v78 + v17 - v129;
      LODWORD(v145) = v122 + v80 + v17 - (v22 + v31);
      DWORD1(v145) = v79 - v17 + v35 - (v41 + v22);
      DWORD2(v145) = v123 + v81 + v17 - v46;
      HIDWORD(v145) = v130 + v105 - v136;
      LODWORD(v146) = v124 + v45 - v17 - v74 + v22;
      DWORD1(v146) = v46 + v44 + v17 - v75 + v22;
      DWORD2(v146) = v137 + v43 - v17 - v22;
      HIDWORD(v146) = v31 + v42 + v17 - (v122 + v22);
      LODWORD(v147) = v47 + v17 - v135;
      DWORD1(v147) = v128 + v76 - v17 - v125;
      DWORD2(v147) = v18 + v77 + v17 - v116 + v22;
      HIDWORD(v147) = v119 + v78 - v17 - v134;
      LODWORD(v148) = v134 + v51 - v17 - v117 + v22;
      DWORD1(v148) = v116 + v90 - v18 + v22;
      DWORD2(v148) = v118 + v49 - v17 - (v129 + v22);
      HIDWORD(v148) = v121 + v48 + v17 - v22;
      LODWORD(v149) = v46 + v103 - v17 - v123;
      DWORD1(v149) = v124 + v104 + v17 - v130;
      DWORD2(v149) = v31 + v106 - v17 - v122 + v22;
      HIDWORD(v149) = v137 + v22 + v112;
      LODWORD(v150) = v22 + v35 + v91 + v17 - v41;
      DWORD1(v150) = v138 + v92 - v17 - v31;
      DWORD2(v150) = v74 + v110 - v140;
      HIDWORD(v150) = v75 + v111 - v139;
      LODWORD(v151) = v116 + v95 - v17 - (v18 + v22);
      DWORD1(v151) = v134 + v98 + v17 - v119;
      DWORD2(v151) = v135 + v100 - v17;
      HIDWORD(v151) = v125 + v102 + v17 - v129;
      LODWORD(v152) = v18 + v84 + v17 - v118 + v131;
      DWORD1(v152) = v85 - v17 - v121 + v22;
      DWORD2(v152) = v117 + v86 + v17 - v133;
      HIDWORD(v152) = v18 + v87 - v17 - v132;
      v4 = v114;
      v52 = (v73 + 32 * v115);
LABEL_9:
      v53 = 0;
      v54 = (v141 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v55 = (v114 + 8 + 4 * v7);
      v56 = (v113 + 4 * (v7 >> 1));
      do
      {
        v58 = *v54++;
        v57 = v58;
        v60 = *(v55 - 2);
        v59 = *(v55 - 1);
        v61 = v60 <= v59;
        if (v60 <= v59)
        {
          v60 = *(v55 - 1);
        }

        v62 = v60 + v57;
        if (__OFADD__(v60, v57))
        {
          v62 = ((v60 + v57) >> 31) ^ 0x80000000;
        }

        *v56 = v62;
        v63 = __OFSUB__(v60, v57);
        v64 = v60 - v57;
        if (v63)
        {
          v64 = (v64 >> 31) ^ 0x80000000;
        }

        v56[256] = v64;
        v53 = (4 * v53) | (2 * v61);
        v65 = *v55;
        if (*v55 <= v55[1])
        {
          v65 = v55[1];
          ++v53;
        }

        v66 = v65 - v57;
        if (__OFSUB__(v65, v57))
        {
          v66 = ((v65 - v57) >> 31) ^ 0x80000000;
        }

        v56[1] = v66;
        v63 = __OFADD__(v65, v57);
        v67 = v65 + v57;
        if (v63)
        {
          v67 = (v67 >> 31) ^ 0x80000000;
        }

        v56[257] = v67;
        if ((~v7 & 0x3C) == 0)
        {
          *v52++ = v53;
          v68 = v7 >= 0x1FC;
          v7 += 4;
          if (v68)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v55 += 4;
        v56 += 2;
        v68 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v68);
      if (v53)
      {
        *v52 = v53;
      }

LABEL_7:
      a3 = v109 + 12;
      v6 = v115 + 1;
      v3 = v113;
    }

    while (v115 + 1 != v72);
    v3 = v113;
    v70 = a1;
  }

  else
  {
    v70 = a1;
  }

  result = 0;
  *(v70 + 64) = v3;
  *(v70 + 72) = v4;
  return result;
}

uint64_t sub_10017073C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v65 = *(a1 + 40);
  if (!v65)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v64 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v106 = v3;
      v107 = v4;
      v108 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11;
      v74 = v9 + v11 + v10;
      v13 = a3[4];
      v14 = a3[5];
      v103 = v74 + v13;
      v83 = v74 + v13 + v14;
      v15 = a3[8];
      v79 = a3[9];
      v16 = a3[10];
      v17 = a3[11];
      v18 = a3[6];
      v19 = a3[7];
      v89 = a3;
      v86 = *a3 - v8 - v11;
      v82 = v86 + v10;
      v104 = v86 + v10 - v13;
      v110[0] = v16 + v79 + v18 + v19 + v15 + v17 + v83;
      v20 = v9 - v11;
      v110[1] = v16 + v79 + v14 + v18 + v104 - (v15 + v19) + v17;
      v80 = v9 - v11 - v10;
      v105 = v80 - v13;
      v95 = v15 + v18 + v14;
      v21 = v7 - v8 + v11;
      v102 = v21 - v10 + v13;
      v109 = v18 + v14 + v19;
      v110[2] = v17 + v19 + v80 - v13 - (v95 + v16 + v79);
      v110[3] = v17 + v15 + v102 - (v109 + v16 + v79);
      v22 = v8 - v7;
      v23 = v11 - v9;
      v101 = v23 - v10 + v13;
      v98 = v19 + v14 + v15;
      v24 = v22 - v11;
      v77 = v22 - v11 - v10;
      v99 = v77 - v13;
      v85 = v15 + v19 - v14 + v18;
      v110[4] = v18 + v101 - (v98 + v16 + v79) + v17;
      v110[5] = v85 + v77 - v13 - (v16 + v79) + v17;
      v25 = v22 + v11;
      v100 = v10 - v12 - v13;
      v97 = v25 + v10 + v13;
      v26 = v16 + v79 + v14 + v19;
      v110[6] = v16 + v79 + v14 + v100 - (v19 + v18) + v15 + v17;
      v110[7] = v26 + v97 - (v15 + v18) + v17;
      v93 = v25 - v10 - v13;
      v94 = v13 - v74;
      v110[8] = v85 + v13 - v74 - (v16 + v79 + v17);
      v110[9] = v18 + v93 - (v17 + v98 + v16 + v79);
      v96 = v23 + v10 - v13;
      v91 = v24 + v10 + v13;
      v110[10] = v26 + v96 - (v15 + v18 + v17);
      v110[11] = v16 + v79 + v14 + v15 + v91 - (v19 + v18 + v17);
      v76 = v20 + v10;
      v92 = v20 + v10 + v13;
      v27 = v16 + v79 + v14 + v18;
      v88 = v21 + v10 - v13;
      v110[12] = v27 + v92 - (v15 + v19 + v17);
      v110[13] = v27 + v19 + v88 + v15 - v17;
      v71 = v12 - v10;
      v90 = v12 - v10 - v13;
      v68 = v86 - v10;
      v87 = v86 - v10 + v13;
      v110[14] = v15 + v90 - (v17 + v109 + v16 + v79);
      v110[15] = v19 + v68 + v13 - (v17 + v95 + v16 + v79);
      v73 = v21 - v10 - v13;
      v110[16] = v17 + v16 + v73 - (v109 + v15 + v79);
      v110[17] = v17 + v16 + v80 + v13 - (v18 + v14) + v19 + v15 - v79;
      v72 = v82 + v13;
      v28 = v79 + v15 + v14 + v18;
      v69 = v74 - v13;
      v75 = v19 + v18 + v14;
      v110[18] = v28 + v82 + v13 - (v19 + v16) + v17;
      v110[19] = v75 + v79 + v69 - (v16 + v15) + v17;
      v70 = v25 + v10 - v13;
      v66 = v15 + v19 + v14;
      v29 = v14;
      v67 = v10 - v12 + v13;
      v30 = v19 + v18 + v15;
      v110[20] = v66 + v79 + v70 - (v18 + v16) + v17;
      v110[21] = v17 + v79 + v14 + v67 - (v16 + v30);
      v78 = v77 + v13;
      v31 = v19 + v14;
      v32 = v23 - v10 - v13;
      v110[22] = v17 + v16 - v14 + v18 + v19 + v78 - (v79 + v15);
      v110[23] = v17 + v16 + v18 + v15 + v32 - (v79 + v19 + v14);
      v81 = v24 + v10 - v13;
      v33 = v23 + v10 + v13;
      v110[24] = v79 + v14 + v81 - (v17 + v16 + v30);
      v110[25] = v66 + v79 + v33 - (v18 + v17 + v16);
      v34 = v25 - v10 + v13;
      v110[26] = v16 + v15 + v18 + v34 - (v79 + v19 + v14 + v17);
      v110[27] = v19 + v18 + v16 - (v79 + v15 + v17) - v83;
      v84 = v68 - v13;
      v35 = v18 + v14;
      v36 = v71 + v13;
      v110[28] = v15 + v19 + v16 + v68 - v13 - (v35 + v17 + v79);
      v110[29] = v16 + v71 + v13 - (v109 + v15 + v79 + v17);
      v37 = v21 + v10 + v13;
      v38 = v76 - v13;
      v110[30] = v75 + v79 + v37 - (v17 + v16 + v15);
      v110[31] = v28 + v76 - v13 - (v19 + v17 + v16);
      v110[32] = v80 + v13 + v29 - (v30 + v16 + v79) + v17;
      v110[33] = v66 + v73 - (v16 + v79 + v18) + v17;
      v39 = v16 + v79 - v29 + v18 + v19;
      v110[34] = v16 + v79 + v18 + v69 - v31 + v15 + v17;
      v110[35] = v39 + v72 - v15 + v17;
      v110[36] = v16 + v79 + v67 - v35 + v19 + v15 + v17;
      v110[37] = v16 + v79 + v70 - (v109 + v15) + v17;
      v40 = v19 + v79 + v16;
      v110[38] = v75 + v32 - (v79 + v15 + v16) + v17;
      v110[39] = v35 + v15 + v78 - v40 + v17;
      v110[40] = v16 + v79 + v33 - (v109 + v15 + v17);
      v110[41] = v16 + v79 + v81 - v35 + v19 + v15 - v17;
      v110[42] = v95 - (v40 + v17) - v103;
      v110[43] = v75 + v34 - (v17 + v79 + v15 + v16);
      v110[44] = v66 + v36 - (v18 + v16 + v79 + v17);
      v110[45] = v84 + v29 - (v17 + v30 + v16 + v79);
      v110[46] = v39 + v38 - (v17 + v15);
      v110[47] = v16 + v79 + v18 + v15 + v37 - (v31 + v17);
      v110[48] = v85 + v79 + v104 - v16 + v17;
      v110[49] = v17 + v79 + v18 + v103 - (v16 + v98);
      v41 = v15 + v18 + v79;
      v42 = v79 + v19 + v18;
      v110[50] = v17 + v16 + v29 + v19 + v102 - v41;
      v110[51] = v17 + v16 + v29 + v15 + v105 - v42;
      v43 = v17 + v16 + v29 + v18;
      v110[52] = v43 + v99 - (v15 + v19 + v79);
      v110[53] = v43 + v19 + v101 + v15 - v79;
      v110[54] = v79 + v15 + v97 - (v109 + v16) + v17;
      v110[55] = v19 + v79 + v100 - (v16 + v95) + v17;
      v110[56] = v18 + v16 + v66 + v93 - (v17 + v79);
      v110[57] = v35 + v16 + v94 - (v15 + v19 + v79 + v17);
      v110[58] = v19 + v79 + v91 - (v17 + v16 + v95);
      v110[59] = v79 + v15 + v96 - (v109 + v17 + v16);
      v110[60] = v79 + v18 + v88 - (v17 + v16 + v98);
      v110[61] = v85 + v79 + v92 - (v17 + v16);
      v110[62] = v16 + v15 + v29 + v87 - (v42 + v17);
      v110[63] = v31 + v16 + v90 - (v41 + v17);
      v4 = v106;
      v44 = (v65 + 16 * v108);
LABEL_9:
      v45 = 0;
      v46 = (v110 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v47 = (v106 + 8 + 4 * v6);
      v48 = (v107 + 4 * (v6 >> 1));
      do
      {
        v50 = *v46++;
        v49 = v50;
        v52 = *(v47 - 2);
        v51 = *(v47 - 1);
        v53 = v52 <= v51;
        if (v52 <= v51)
        {
          v52 = *(v47 - 1);
        }

        v54 = v52 + v49;
        if (__OFADD__(v52, v49))
        {
          v54 = ((v52 + v49) >> 31) ^ 0x80000000;
        }

        *v48 = v54;
        v55 = __OFSUB__(v52, v49);
        v56 = v52 - v49;
        if (v55)
        {
          v56 = (v56 >> 31) ^ 0x80000000;
        }

        v48[128] = v56;
        v45 = (4 * v45) | (2 * v53);
        v57 = *v47;
        if (*v47 <= v47[1])
        {
          v57 = v47[1];
          ++v45;
        }

        v58 = v57 - v49;
        if (__OFSUB__(v57, v49))
        {
          v58 = ((v57 - v49) >> 31) ^ 0x80000000;
        }

        v48[1] = v58;
        v55 = __OFADD__(v57, v49);
        v59 = v57 + v49;
        if (v55)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        v48[129] = v59;
        if ((~v6 & 0x3C) == 0)
        {
          *v44++ = v45;
          v60 = v6 >= 0xFC;
          v6 += 4;
          if (v60)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v47 += 4;
        v48 += 2;
        v60 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v60);
      if (v45)
      {
        *v44 = v45;
      }

LABEL_7:
      a3 = v89 + 12;
      v5 = v108 + 1;
      v3 = v107;
    }

    while (v108 + 1 != v64);
    v3 = v107;
    v62 = a1;
  }

  else
  {
    v62 = a1;
  }

  result = 0;
  *(v62 + 64) = v3;
  *(v62 + 72) = v4;
  return result;
}

uint64_t sub_100171148(uint64_t a1, uint64_t a2, int *a3)
{
  v65 = *(a1 + 40);
  if (!v65)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v64 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v81 = v4;
      v83 = v3;
      v84 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v76 = v9 + v11 + v10;
      v77 = v9 + v11;
      v12 = a3[4];
      v13 = a3[5];
      v82 = v76 + v12;
      v15 = a3[8];
      v14 = a3[9];
      v16 = a3[10];
      v17 = a3[11];
      v18 = a3[6];
      v19 = a3[7];
      v79 = v11 - v9;
      v72 = v11 - v9 + v10;
      v80 = v19 + v13 + v14 + v15;
      v68 = v10 - (v9 + v11);
      v85[0] = v16 + v14 + v13 + v18 + v19 + v76 + v12 + v15 + v17;
      v85[1] = v18 + v12 + v16 + v72 - (v80 + v17);
      v71 = v9 - v11;
      v66 = v9 - v11 + v10;
      v20 = v13 + v12;
      v21 = v15 + v16 + v14;
      v75 = v21 + v13 + v12 + v18;
      v85[2] = v14 + v15 + v13 + v68 - (v19 + v18 + v12 + v17 + v16);
      v85[3] = v17 + v19 + v66 - v75;
      v22 = v8 - v7;
      v78 = v8 - v7 - v11;
      v23 = v7 - v8;
      v24 = v19 + v18 - v12 + v13;
      v73 = v23 - v11;
      v25 = v23 - v11 - v10;
      v85[4] = v16 + v14 + v18 + v78 - v10 - (v19 + v13 + v12 + v15 + v17);
      v85[5] = v24 + v25 + v15 - v14 + v16 + v17;
      v67 = v23 + v11;
      v69 = v22 + v11;
      v26 = v22 + v11 - v10;
      v27 = v14 + v19 + v12;
      v28 = v18 + v13 + v16 + v15;
      v85[6] = v27 + v67 - v10 - v28 + v17;
      v85[7] = v13 + v12 + v15 + v26 - (v19 + v18 + v14 + v16 + v17);
      v74 = v14 + v15 + v18;
      v85[8] = v74 + v67 - v10 - (v19 + v13 + v12 + v16) + v17;
      v85[9] = v24 + v26 - (v17 + v21);
      v29 = v17 + v16 + v12;
      v30 = v16 + v14 + v12;
      v70 = v19 + v18 + v14 + v15;
      v85[10] = v30 + v78 - v10 - (v18 + v13) + v19 + v15 - v17;
      v85[11] = v29 + v13 + v25 - v70;
      v31 = v19 + v18 + v12;
      v32 = v19 + v13 + v16 + v14;
      v33 = v18 + v12 + v15;
      v85[12] = v31 + v13 + v68 + v14 - (v17 + v16 + v15);
      v85[13] = v33 + v66 - v32 + v17;
      v34 = v16 + v15 + v19;
      v35 = v16 + v14 + v13;
      v85[14] = v35 + v76 - (v31 + v15) + v17;
      v85[15] = v34 + v72 - (v20 + v18 + v17 + v14);
      v36 = v71 - v10;
      v85[16] = v27 + v71 - v10 - (v28 + v17);
      v85[17] = v17 + v15 + v20 - (v76 + v18 + v19 + v14 + v16);
      v37 = v79 - v10;
      v38 = v77 - v10;
      v85[18] = v16 + v14 + v18 + v79 - v10 - (v19 + v20 + v15) + v17;
      v85[19] = v24 + v77 - v10 + v15 + v16 - (v17 + v14);
      v39 = v69 + v10;
      v40 = v67 + v10;
      v85[20] = v14 + v15 + v13 + v69 + v10 - (v31 + v16) + v17;
      v85[21] = v19 + v67 + v10 - (v17 + v75);
      v41 = v73 + v10;
      v42 = v30 + v13 + v73 + v10 + v18 + v19 + v15;
      v43 = v78 + v10;
      v85[22] = v42 - v17;
      v85[23] = v29 + v18 + v43 - v80;
      v85[24] = v35 + v41 - (v31 + v15 + v17);
      v85[25] = v34 + v43 - (v20 + v18 + v14) + v17;
      v85[26] = v31 + v13 + v39 + v14 - (v16 + v15) + v17;
      v85[27] = v33 + v40 - (v17 + v32);
      v85[28] = v30 + v37 - (v18 + v13) + v19 + v15 + v17;
      v85[29] = v20 + v16 + v38 - (v70 + v17);
      v85[30] = v74 + v36 - (v19 + v20 + v17 + v16);
      v85[31] = v19 + v18 + v13 - (v15 + v16 + v14) - v82 + v17;
      v4 = v83;
      v44 = (v65 + 8 * v84);
LABEL_9:
      v45 = 0;
      v46 = (v85 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v47 = (v83 + 8 + 4 * v6);
      v48 = (v81 + 256 + 4 * (v6 >> 1));
      do
      {
        v50 = *v46++;
        v49 = v50;
        v51 = *(v47 - 2);
        v52 = *(v47 - 1);
        v53 = v51 <= v52;
        if (v51 <= v52)
        {
          v51 = *(v47 - 1);
        }

        v54 = v51 + v49;
        if (__OFADD__(v51, v49))
        {
          v54 = ((v51 + v49) >> 31) ^ 0x80000000;
        }

        *(v48 - 64) = v54;
        v55 = __OFSUB__(v51, v49);
        v56 = v51 - v49;
        if (v55)
        {
          v56 = (v56 >> 31) ^ 0x80000000;
        }

        *v48 = v56;
        v45 = (4 * v45) | (2 * v53);
        v57 = *v47;
        if (*v47 <= v47[1])
        {
          v57 = v47[1];
          ++v45;
        }

        v58 = v57 - v49;
        if (__OFSUB__(v57, v49))
        {
          v58 = ((v57 - v49) >> 31) ^ 0x80000000;
        }

        *(v48 - 63) = v58;
        v55 = __OFADD__(v57, v49);
        v59 = v57 + v49;
        if (v55)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        v48[1] = v59;
        if ((~v6 & 0x3C) == 0)
        {
          *v44++ = v45;
          v60 = v6 >= 0x7C;
          v6 += 4;
          if (v60)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v47 += 4;
        v48 += 2;
        v60 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v60);
      if (v45)
      {
        *v44 = v45;
      }

LABEL_7:
      a3 += 12;
      v5 = v84 + 1;
      v3 = v81;
    }

    while (v84 + 1 != v64);
    v3 = v81;
    v62 = a1;
  }

  else
  {
    v62 = a1;
  }

  result = 0;
  *(v62 + 64) = v3;
  *(v62 + 72) = v4;
  return result;
}

uint64_t sub_10017176C(uint64_t a1, uint64_t a2, int *a3)
{
  v64 = *(a1 + 40);
  if (!v64)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v124 = 0u;
  v63 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v117 = v4;
      v122 = v3;
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 + *a3;
      v11 = a3[2];
      v12 = a3[3];
      v14 = a3[4];
      v13 = a3[5];
      v15 = v10 + v11 + v12;
      v88 = v15 + v14;
      v114 = v15 + v14 + v13;
      v17 = a3[6];
      v16 = a3[7];
      v121 = v114 + v17;
      v19 = a3[8];
      v18 = a3[9];
      v20 = v19 + v16;
      v21 = a3[10];
      v104 = v11 - v10 + v12;
      v111 = v104 - v14 + v13;
      v120 = v111 - v17;
      v100 = v10 + v11 - v12;
      v123[0] = v19 + v16 + v18 + v21 + v114 + v17;
      v22 = v13 + v14;
      v123[1] = v18 + v111 - v17 - (v21 + v19 + v16);
      v108 = v100 - (v13 + v14);
      v118 = v108 + v17;
      v99 = v11 - v10 - v12;
      v107 = v99 + v14 - v13;
      v123[2] = v21 + v18 + v108 + v17 - (v19 + v16);
      v123[3] = v19 + v16 + v18 + v107 - v17 - v21;
      v97 = v12 - (v10 + v11);
      v92 = v97 - v14 + v13;
      v119 = v92 - v17;
      v23 = v10 - v11;
      v85 = v23 + v12;
      v90 = v13 + v14 + v23 + v12;
      v116 = v90 + v17;
      v123[4] = v92 - v17 - (v19 + v16 + v18) + v21;
      v123[5] = v19 + v16 + v90 + v17 - (v21 + v18);
      v89 = v14 - v13 - v15;
      v80 = v23 - v12;
      v87 = v23 - v12 - (v13 + v14);
      v123[6] = v19 + v16 + v89 - v17 - v18 + v21;
      v123[7] = v87 + v17 - (v19 + v16 + v18 + v21);
      v24 = v9 - v8 - v11;
      v102 = v13 + v14 + v24 - v12;
      v25 = v16;
      v26 = v18 + v16;
      v27 = v8 - v9 - v11;
      v28 = v27 - v12;
      v96 = v27 - v12 - v14 + v13;
      v66 = v18 + v19 - v25 + v21;
      v123[8] = v26 + v102 + v17 - (v21 + v19);
      v123[9] = v66 + v96 - v17;
      v95 = v24 + v12 - (v13 + v14);
      v29 = v27 + v12;
      v94 = v29 + v14 - v13;
      v65 = v21 + v18 + v25;
      v123[10] = v18 + v19 + v95 + v17 - (v25 + v21);
      v123[11] = v65 + v94 - v17 - v19;
      v30 = v8 - v9 + v11;
      v31 = v9 - v8 + v11;
      v84 = v30 - v12 - v14 + v13;
      v83 = v13 + v14 + v31 - v12;
      v123[12] = v19 + v84 - v17 - (v26 + v21);
      v123[13] = v25 + v21 + v83 + v17 - (v18 + v19);
      v32 = v30 + v12;
      v82 = v30 + v12 + v14 - v13;
      v81 = v31 + v12 - (v13 + v14);
      v123[14] = v82 - v17 + v25 - (v18 + v19 + v21);
      v123[15] = v21 + v19 + v81 + v17 - v26;
      v78 = v24 - v12 - (v13 + v14);
      v113 = v78 - v17;
      v76 = v28 + v14 - v13;
      v110 = v76 + v17;
      v123[16] = v20 + v78 - v17 - (v21 + v18);
      v123[17] = v76 + v17 - (v20 + v18) + v21;
      v74 = v13 + v14 + v24 + v12;
      v75 = v29 - v14 + v13;
      v33 = v20 + v18 + v21;
      v123[18] = v74 - v17 - v33;
      v123[19] = v20 + v75 + v17 - v18 + v21;
      v34 = v30 - v12 + v14 - v13;
      v35 = v31 - v12 - (v13 + v14);
      v123[20] = v18 + v34 + v17 - (v21 + v20);
      v123[21] = v33 + v35 - v17;
      v36 = v32 - v14 + v13;
      v37 = v13 + v14 + v31 + v12;
      v103 = v37 - v17;
      v123[22] = v20 + v18 + v36 + v17 - v21;
      v123[23] = v21 + v18 + v37 - v17 - v20;
      v72 = v15 - (v13 + v14);
      v106 = v72 - v17;
      v69 = v104 + v14 - v13;
      v105 = v69 + v17;
      v123[24] = v25 + v21 + v72 - v17 - (v18 + v19);
      v123[25] = v19 + v69 + v17 - (v26 + v21);
      v67 = v13 + v14 + v100;
      v101 = v67 - v17;
      v38 = v99 - v14 + v13;
      v123[26] = v21 + v19 + v67 - v17 - v26;
      v123[27] = v38 + v17 + v25 - (v18 + v19 + v21);
      v39 = v97 + v14 - v13;
      v40 = v85 - v22;
      v98 = v85 - v22 - v17;
      v123[28] = v66 + v39 + v17;
      v123[29] = v26 + v98 - (v21 + v19);
      v41 = v13 - v88;
      v86 = v22 + v80 - v17;
      v123[30] = v65 + v41 + v17 - v19;
      v123[31] = v18 + v19 + v86 - (v25 + v21);
      v123[32] = v34 - v17 - (v20 + v18) + v21;
      v123[33] = v20 + v35 + v17 - (v21 + v18);
      v71 = v37 + v17;
      v123[34] = v20 + v36 - v17 - v18 + v21;
      v123[35] = v37 + v17 - v33;
      v77 = v76 - v17;
      v79 = v78 + v17;
      v123[36] = v33 + v79;
      v123[37] = v18 + v77 - (v21 + v20);
      v123[38] = v21 + v18 + v74 + v17 - v20;
      v123[39] = v20 + v18 + v75 - v17 - v21;
      v123[40] = v19 + v39 - v17 - (v26 + v21);
      v123[41] = v25 + v21 + v40 + v17 - (v18 + v19);
      v123[42] = v41 - v17 + v25 - (v18 + v19 + v21);
      v123[43] = v21 + v19 + v22 + v80 + v17 - v26;
      v73 = v72 + v17;
      v70 = v69 - v17;
      v123[44] = v26 + v73 - (v21 + v19);
      v123[45] = v66 + v70;
      v68 = v67 + v17;
      v123[46] = v18 + v19 + v68 - (v25 + v21);
      v123[47] = v65 + v38 - v17 - v19;
      v93 = v92 + v17;
      v91 = v90 - v17;
      v123[48] = v18 + v93 - (v21 + v20);
      v123[49] = v33 + v91;
      v123[50] = v20 + v18 + v89 + v17 - v21;
      v123[51] = v21 + v18 + v87 - v17 - v20;
      v115 = v114 - v17;
      v112 = v111 + v17;
      v123[52] = v20 + v115 - (v21 + v18);
      v123[53] = v112 - (v20 + v18) + v21;
      v109 = v108 - v17;
      v123[54] = v109 - v33;
      v123[55] = v20 + v107 + v17 - v18 + v21;
      v123[56] = v66 + v84 + v17;
      v123[57] = v26 + v83 - v17 - (v21 + v19);
      v123[58] = v65 + v82 + v17 - v19;
      v123[59] = v18 + v19 + v81 - v17 - (v25 + v21);
      v123[60] = v25 + v21 + v102 - v17 - (v18 + v19);
      v123[61] = v19 + v96 + v17 - (v26 + v21);
      v123[62] = v21 + v19 + v95 - v17 - v26;
      v123[63] = v94 + v17 + v25 - (v18 + v19 + v21);
      v123[64] = v65 + v87 - v17 - v19;
      v123[65] = v18 + v19 + v89 + v17 - (v25 + v21);
      v123[66] = v66 + v91;
      v123[67] = v26 + v93 - (v21 + v19);
      v123[68] = v21 + v19 + v107 + v17 - v26;
      v42 = v18 + v19 + v21;
      v123[69] = v109 + v25 - v42;
      v123[70] = v25 + v21 + v112 - (v18 + v19);
      v123[71] = v19 + v115 - (v26 + v21);
      v123[72] = v20 + v18 + v81 - v17 - v21;
      v123[73] = v21 + v18 + v82 + v17 - v20;
      v123[74] = v18 + v83 - v17 - (v21 + v20);
      v123[75] = v33 + v84 + v17;
      v123[76] = v94 + v17 - v33;
      v123[77] = v20 + v95 - v17 - v18 + v21;
      v123[78] = v20 + v96 + v17 - (v21 + v18);
      v123[79] = v102 - v17 - (v20 + v18) + v21;
      v123[80] = v71 + v25 - v42;
      v123[81] = v21 + v19 + v36 - v17 - v26;
      v123[82] = v35 + v17 + v19 - (v26 + v21);
      v123[83] = v25 + v21 + v34 - v17 - (v18 + v19);
      LODWORD(v124) = v18 + v19 + v75 - v17 - (v25 + v21);
      DWORD1(v124) = v65 + v74 + v17 - v19;
      DWORD2(v124) = v26 + v77 - (v21 + v19);
      HIDWORD(v124) = v66 + v79;
      LODWORD(v125) = v20 + v22 + v80 + v17 - v18 + v21;
      DWORD1(v125) = v41 - v17 - v33;
      DWORD2(v125) = v40 + v17 - (v20 + v18) + v21;
      HIDWORD(v125) = v20 + v39 - v17 - (v21 + v18);
      LODWORD(v126) = v21 + v18 + v38 - v17 - v20;
      DWORD1(v126) = v20 + v18 + v68 - v21;
      DWORD2(v126) = v33 + v70;
      HIDWORD(v126) = v18 + v73 - (v21 + v20);
      LODWORD(v127) = v21 + v19 + v75 + v17 - v26;
      DWORD1(v127) = v74 - v17 + v25 - v42;
      DWORD2(v127) = v25 + v21 + v110 - (v18 + v19);
      HIDWORD(v127) = v113 + v19 - (v26 + v21);
      LODWORD(v128) = v65 + v103 - v19;
      DWORD1(v128) = v18 + v19 + v36 + v17 - (v25 + v21);
      DWORD2(v128) = v66 + v35 - v17;
      HIDWORD(v128) = v26 + v34 + v17 - (v21 + v19);
      LODWORD(v129) = v38 + v17 - v33;
      DWORD1(v129) = v20 + v101 - v18 + v21;
      DWORD2(v129) = v20 + v105 - (v21 + v18);
      HIDWORD(v129) = v106 - (v20 + v18) + v21;
      LODWORD(v130) = v20 + v18 + v86 - v21;
      DWORD1(v130) = v21 + v18 + v41 + v17 - v20;
      DWORD2(v130) = v18 + v98 - (v21 + v20);
      HIDWORD(v130) = v33 + v39 + v17;
      LODWORD(v131) = v18 + v19 + v107 - v17 - (v25 + v21);
      DWORD1(v131) = v65 + v118 - v19;
      DWORD2(v131) = v26 + v120 - (v21 + v19);
      HIDWORD(v131) = v66 + v121;
      LODWORD(v132) = v87 + v17 + v25 - v42;
      DWORD1(v132) = v21 + v19 + v89 - v17 - v26;
      DWORD2(v132) = v19 + v116 - (v26 + v21);
      HIDWORD(v132) = v25 + v21 + v119 - (v18 + v19);
      LODWORD(v133) = v21 + v18 + v94 - v17 - v20;
      DWORD1(v133) = v20 + v18 + v95 + v17 - v21;
      DWORD2(v133) = v33 + v96 - v17;
      HIDWORD(v133) = v18 + v102 + v17 - (v21 + v20);
      LODWORD(v134) = v20 + v81 + v17 - v18 + v21;
      DWORD1(v134) = v82 - v17 - v33;
      DWORD2(v134) = v83 + v17 - (v20 + v18) + v21;
      v4 = v122;
      HIDWORD(v134) = v20 + v84 - v17 - (v21 + v18);
      v43 = (v64 + 32 * v6);
LABEL_9:
      v44 = 0;
      v45 = (v123 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v46 = (v122 + 8 + 4 * v7);
      v47 = (v117 + 4 * (v7 >> 1));
      do
      {
        v49 = *v45++;
        v48 = v49;
        v51 = *(v46 - 2);
        v50 = *(v46 - 1);
        v52 = v51 <= v50;
        if (v51 <= v50)
        {
          v51 = *(v46 - 1);
        }

        v53 = v51 + v48;
        if (__OFADD__(v51, v48))
        {
          v53 = ((v51 + v48) >> 31) ^ 0x80000000;
        }

        *v47 = v53;
        v54 = __OFSUB__(v51, v48);
        v55 = v51 - v48;
        if (v54)
        {
          v55 = (v55 >> 31) ^ 0x80000000;
        }

        v47[256] = v55;
        v44 = (4 * v44) | (2 * v52);
        v56 = *v46;
        if (*v46 <= v46[1])
        {
          v56 = v46[1];
          ++v44;
        }

        v57 = v56 - v48;
        if (__OFSUB__(v56, v48))
        {
          v57 = ((v56 - v48) >> 31) ^ 0x80000000;
        }

        v47[1] = v57;
        v54 = __OFADD__(v56, v48);
        v58 = v56 + v48;
        if (v54)
        {
          v58 = (v58 >> 31) ^ 0x80000000;
        }

        v47[257] = v58;
        if ((~v7 & 0x3C) == 0)
        {
          *v43++ = v44;
          v59 = v7 >= 0x1FC;
          v7 += 4;
          if (v59)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v46 += 4;
        v47 += 2;
        v59 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v59);
      if (v44)
      {
        *v43 = v44;
      }

LABEL_7:
      a3 += 11;
      ++v6;
      v3 = v117;
    }

    while (v6 != v63);
    v3 = v117;
    v61 = a1;
  }

  else
  {
    v61 = a1;
  }

  result = 0;
  *(v61 + 64) = v3;
  *(v61 + 72) = v4;
  return result;
}

uint64_t sub_1001724E8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v61 = *(a1 + 40);
  if (!v61)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v60 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v91 = v4;
      v92 = v3;
      v93 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v10 = a3[2];
      v11 = a3[3];
      v69 = v9 + v10 + v11;
      v13 = a3[4];
      v12 = a3[5];
      v14 = a3[8];
      v15 = a3[9];
      v16 = a3[10];
      v18 = a3[6];
      v17 = a3[7];
      v94 = a3;
      v81 = *a3 - v8 - v10;
      v78 = v81 + v11;
      v89 = v81 + v11 - v13;
      v19 = v16 + v15 + v12 + v18;
      v96[0] = v16 + v15 + v18 + v17 + v14 + v69 + v13 + v12;
      v96[1] = v19 + v89 - (v14 + v17);
      v90 = v9 - v10 - v11 - v13;
      v85 = v14 + v18 + v12;
      v20 = v7 - v8 + v10;
      v95 = v18 + v12 + v17;
      v96[2] = v17 + v90 - (v85 + v16 + v15);
      v96[3] = v14 + v20 - v11 + v13 - (v95 + v16 + v15);
      v21 = v8 - v7;
      v77 = v10 - v9 - v11;
      v88 = v20 - v11 + v13;
      v84 = v17 + v12 + v14;
      v22 = v17 + v18 - v12 + v14;
      v74 = v21 - v10 - v11;
      v80 = v22;
      v96[4] = v18 + v77 + v13 - (v84 + v16 + v15);
      v96[5] = v22 + v74 - v13 - (v16 + v15);
      v67 = v11 - (v9 + v10);
      v87 = v67 - v13;
      v23 = v21 + v10 + v11;
      v86 = v23 + v13;
      v24 = v16 + v15 + v12 + v17;
      v96[6] = v16 + v15 + v12 + v67 - v13 - (v17 + v18) + v14;
      v96[7] = v24 + v23 + v13 - (v14 + v18);
      v72 = v21 + v10 - v11;
      v96[8] = v22 + v13 - v69 - (v16 + v15);
      v96[9] = v18 + v72 - v13 - (v84 + v16 + v15);
      v66 = v10 - v9 + v11;
      v25 = v21 - v10 + v11;
      v96[10] = v24 + v66 - v13 - (v14 + v18);
      v96[11] = v16 + v15 + v12 + v25 + v13 - (v17 + v18) + v14;
      v73 = v9 - v10 + v11;
      v70 = v20 + v11;
      v96[12] = v19 + v73 + v13 - (v14 + v17);
      v96[13] = v19 + v17 + v20 + v11 - v13 + v14;
      v64 = v9 + v10 - v11;
      v83 = v20 + v11 - v13;
      v26 = v81 - v11;
      v82 = v81 - v11 + v13;
      v96[14] = v14 + v64 - v13 - (v95 + v16 + v15);
      v96[15] = v17 + v82 - (v85 + v16 + v15);
      v71 = v20 - v11 - v13;
      v63 = v95 + v14 + v15;
      v65 = v9 - v10 - v11 + v13;
      v27 = v18 + v12 + v15;
      v96[16] = v71 - v63 + v16;
      v96[17] = v14 + v17 + v65 - v27 + v16;
      v75 = v78 + v13;
      v28 = v15 + v14 + v12;
      v29 = v28 + v18 + v78 + v13 - (v17 + v16);
      v79 = v17 + v18 + v12;
      v96[18] = v29;
      v96[19] = v79 + v15 + v69 - v13 - (v16 + v14);
      v62 = v14 + v17 + v12;
      v76 = v14 + v17;
      v68 = v67 + v13;
      v30 = v17 + v18 + v14;
      v96[20] = v62 + v15 + v23 - v13 - (v18 + v16);
      v96[21] = v15 + v12 + v68 - (v16 + v30);
      v96[22] = v17 + v18 + v74 + v13 - v28 + v16;
      v96[23] = v14 + v18 + v77 - v13 - (v15 + v17 + v12) + v16;
      v96[24] = v15 + v12 + v25 - v13 - (v16 + v30);
      v96[25] = v62 + v15 + v66 + v13 - (v18 + v16);
      v96[26] = v14 + v18 + v72 + v13 - (v15 + v17 + v12) + v16;
      v96[27] = v17 + v18 - (v15 + v14) - (v69 + v13 + v12) + v16;
      v96[28] = v14 + v17 + v26 - v13 - v27 + v16;
      v96[29] = v64 + v13 - v63 + v16;
      v96[30] = v79 + v15 + v70 + v13 - (v16 + v14);
      v96[31] = v28 + v18 + v73 - v13 - (v17 + v16);
      v31 = v30 + v16 + v15;
      v32 = v16 + v15 + v18;
      v96[32] = v65 + v12 - v31;
      v96[33] = v62 + v71 - v32;
      v33 = v16 + v15 - v12 + v18 + v17;
      v96[34] = v32 + v69 - v13 - (v17 + v12) + v14;
      v96[35] = v33 + v75 - v14;
      v96[36] = v16 + v15 + v68 - (v18 + v12) + v17 + v14;
      v96[37] = v16 + v15 + v23 - v13 - (v95 + v14);
      v34 = v15 + v14;
      v35 = v17 + v15 + v16;
      v96[38] = v79 + v77 - v13 - (v15 + v14 + v16);
      v96[39] = v85 + v74 + v13 - v35;
      v96[40] = v16 + v15 + v66 + v13 - (v95 + v14);
      v96[41] = v16 + v15 + v25 - v13 - (v18 + v12) + v17 + v14;
      v96[42] = v85 - v35 - (v69 + v13);
      v96[43] = v79 + v72 + v13 - (v15 + v14 + v16);
      v96[44] = v62 + v64 + v13 - v32;
      v96[45] = v26 - v13 + v12 - v31;
      v96[46] = v33 + v73 - v13 - v14;
      v96[47] = v32 + v70 + v13 - (v17 + v12) + v14;
      v96[48] = v80 + v15 + v89 - v16;
      v96[49] = v15 + v18 + v69 + v13 - (v16 + v84);
      v36 = v16 + v14 + v12;
      v37 = v14 + v18 + v15;
      v38 = v15 + v17 + v18;
      v96[50] = v17 + v12 + v88 - v37 + v16;
      v96[51] = v36 + v90 - v38;
      v39 = v79 + v14;
      v96[52] = v18 + v12 + v74 - v13 - (v76 + v15) + v16;
      v96[53] = v39 + v77 + v13 - v15 + v16;
      v96[54] = v34 + v86 - (v95 + v16);
      v96[55] = v17 + v15 + v87 - (v16 + v85);
      v96[56] = v39 + v72 - v13 - v15 + v16;
      v96[57] = v18 + v12 + v13 - v69 - (v76 + v15) + v16;
      v96[58] = v17 + v15 + v25 + v13 - (v16 + v85);
      v96[59] = v34 + v66 - v13 - (v95 + v16);
      v96[60] = v15 + v18 + v83 - (v16 + v84);
      v96[61] = v80 + v15 + v73 + v13 - v16;
      v96[62] = v36 + v82 - v38;
      v96[63] = v17 + v12 + v64 - v13 - v37 + v16;
      v4 = v92;
      v40 = (v61 + 16 * v93);
LABEL_9:
      v41 = 0;
      v42 = (v96 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v43 = (v92 + 8 + 4 * v6);
      v44 = (v91 + 4 * (v6 >> 1));
      do
      {
        v46 = *v42++;
        v45 = v46;
        v48 = *(v43 - 2);
        v47 = *(v43 - 1);
        v49 = v48 <= v47;
        if (v48 <= v47)
        {
          v48 = *(v43 - 1);
        }

        v50 = v48 + v45;
        if (__OFADD__(v48, v45))
        {
          v50 = ((v48 + v45) >> 31) ^ 0x80000000;
        }

        *v44 = v50;
        v51 = __OFSUB__(v48, v45);
        v52 = v48 - v45;
        if (v51)
        {
          v52 = (v52 >> 31) ^ 0x80000000;
        }

        v44[128] = v52;
        v41 = (4 * v41) | (2 * v49);
        v53 = *v43;
        if (*v43 <= v43[1])
        {
          v53 = v43[1];
          ++v41;
        }

        v54 = v53 - v45;
        if (__OFSUB__(v53, v45))
        {
          v54 = ((v53 - v45) >> 31) ^ 0x80000000;
        }

        v44[1] = v54;
        v51 = __OFADD__(v53, v45);
        v55 = v53 + v45;
        if (v51)
        {
          v55 = (v55 >> 31) ^ 0x80000000;
        }

        v44[129] = v55;
        if ((~v6 & 0x3C) == 0)
        {
          *v40++ = v41;
          v56 = v6 >= 0xFC;
          v6 += 4;
          if (v56)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v43 += 4;
        v44 += 2;
        v56 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v56);
      if (v41)
      {
        *v40 = v41;
      }

LABEL_7:
      a3 = v94 + 11;
      v5 = v93 + 1;
      v3 = v91;
    }

    while (v93 + 1 != v60);
    v3 = v91;
    v58 = a1;
  }

  else
  {
    v58 = a1;
  }

  result = 0;
  *(v58 + 64) = v3;
  *(v58 + 72) = v4;
  return result;
}

uint64_t sub_100172DAC(uint64_t a1, uint64_t a2, int *a3)
{
  v68 = *(a1 + 40);
  if (!v68)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v67 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v88 = v4;
      v90 = v3;
      v91 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v84 = v9 + v11 + v10;
      v85 = v9 + v11;
      v13 = a3[4];
      v12 = a3[5];
      v89 = v84 + v13;
      v15 = a3[8];
      v14 = a3[9];
      v16 = a3[10];
      v81 = v16 + v14 + v12;
      v18 = a3[6];
      v17 = a3[7];
      v86 = v11 - v9;
      v80 = v11 - v9 + v10;
      v87 = v17 + v12 + v14 + v15;
      v74 = v10 - (v9 + v11);
      v19 = v17 + v18;
      v20 = v17 + v18 + v13;
      v92[0] = v81 + v18 + v17 + v84 + v13 + v15;
      v92[1] = v18 + v13 + v80 - v87 + v16;
      v75 = v18 + v13;
      v76 = v9 - v11;
      v72 = v9 - v11 + v10;
      v21 = v12 + v13;
      v22 = v15 + v16 + v14;
      v92[2] = v14 + v15 + v12 + v74 - (v20 + v16);
      v92[3] = v17 + v72 - (v22 + v12 + v13 + v18);
      v23 = v8 - v7;
      v24 = v7 - v8;
      v82 = v23 - v11;
      v83 = v22 + v12 + v13 + v18;
      v25 = v23 - v11 - v10;
      v26 = v17 + v18 - v13 + v12;
      v79 = v24 - v11;
      v27 = v24 - v11 - v10;
      v92[4] = v16 + v14 + v18 + v25 - (v17 + v12 + v13 + v15);
      v92[5] = v26 + v27 + v15 - v14 + v16;
      v69 = v24 + v11;
      v70 = v23 + v11;
      v28 = v14 + v17 + v13;
      v29 = v18 + v12;
      v30 = v16 + v15;
      v92[6] = v28 + v24 + v11 - v10 - (v18 + v12 + v16 + v15);
      v92[7] = v12 + v13 + v15 + v23 + v11 - v10 - (v17 + v18 + v14 + v16);
      v78 = v14 + v15 + v18;
      v77 = v17 + v12 + v13 + v16;
      v92[8] = v78 + v24 + v11 - v10 - v77;
      v92[9] = v26 + v23 + v11 - v10 - v22;
      v31 = v16 + v14 + v13;
      v73 = v17 + v15;
      v71 = v17 + v18 + v14 + v15;
      v92[10] = v31 + v25 - (v18 + v12) + v17 + v15;
      v92[11] = v21 + v27 - v71 + v16;
      v32 = v17 + v12 + v16 + v14;
      v33 = v75 + v15;
      v92[12] = v20 + v12 + v74 + v14 - (v16 + v15);
      v92[13] = v75 + v15 + v72 - v32;
      v34 = v20 + v15;
      v35 = v15 + v17;
      v36 = v21 + v18 + v14;
      v92[14] = v81 + v84 - (v20 + v15);
      v92[15] = v15 + v17 + v80 - v36 + v16;
      v37 = v76 - v10;
      v38 = v28 + v76 - v10 - (v18 + v12 + v16 + v15);
      v39 = v18 + v17;
      v92[16] = v38;
      v92[17] = v21 + v15 - (v84 + v18 + v17 + v14 + v16);
      v40 = v86 - v10;
      v41 = v85 - v10;
      v92[18] = v16 + v14 + v18 + v86 - v10 - (v17 + v21 + v15);
      v92[19] = v26 + v85 - v10 + v15 - v14 + v16;
      v42 = v70 + v10;
      v43 = v69 + v10;
      v92[20] = v14 + v15 + v12 + v70 + v10 - (v20 + v16);
      v92[21] = v17 + v69 + v10 - v83;
      v44 = v39 + v15;
      v45 = v79 + v10;
      v46 = v82 + v10;
      v92[22] = v31 + v12 + v45 + v44;
      v92[23] = v75 + v46 - v87 + v16;
      v92[24] = v81 + v45 - v34;
      v92[25] = v35 + v46 - v36 + v16;
      v92[26] = v20 + v12 + v42 + v14 - v30;
      v92[27] = v33 + v43 - v32;
      v4 = v90;
      v92[28] = v31 + v40 - v29 + v73;
      v92[29] = v21 + v41 - v71 + v16;
      v92[30] = v78 + v37 - v77;
      v92[31] = v19 + v12 - v22 - v89;
      v47 = (v68 + 8 * v91);
LABEL_9:
      v48 = 0;
      v49 = (v92 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v50 = (v90 + 8 + 4 * v6);
      v51 = (v88 + 256 + 4 * (v6 >> 1));
      do
      {
        v53 = *v49++;
        v52 = v53;
        v54 = *(v50 - 2);
        v55 = *(v50 - 1);
        v56 = v54 <= v55;
        if (v54 <= v55)
        {
          v54 = *(v50 - 1);
        }

        v57 = v54 + v52;
        if (__OFADD__(v54, v52))
        {
          v57 = ((v54 + v52) >> 31) ^ 0x80000000;
        }

        *(v51 - 64) = v57;
        v58 = __OFSUB__(v54, v52);
        v59 = v54 - v52;
        if (v58)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        *v51 = v59;
        v48 = (4 * v48) | (2 * v56);
        v60 = *v50;
        if (*v50 <= v50[1])
        {
          v60 = v50[1];
          ++v48;
        }

        v61 = v60 - v52;
        if (__OFSUB__(v60, v52))
        {
          v61 = ((v60 - v52) >> 31) ^ 0x80000000;
        }

        *(v51 - 63) = v61;
        v58 = __OFADD__(v60, v52);
        v62 = v60 + v52;
        if (v58)
        {
          v62 = (v62 >> 31) ^ 0x80000000;
        }

        v51[1] = v62;
        if ((~v6 & 0x3C) == 0)
        {
          *v47++ = v48;
          v63 = v6 >= 0x7C;
          v6 += 4;
          if (v63)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v50 += 4;
        v51 += 2;
        v63 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v63);
      if (v48)
      {
        *v47 = v48;
      }

LABEL_7:
      a3 += 11;
      v5 = v91 + 1;
      v3 = v88;
    }

    while (v91 + 1 != v67);
    v3 = v88;
    v65 = a1;
  }

  else
  {
    v65 = a1;
  }

  result = 0;
  *(v65 + 64) = v3;
  *(v65 + 72) = v4;
  return result;
}

uint64_t sub_100173314(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v94 = *(a1 + 40);
  if (!v94)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v169 = 0u;
  v93 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v164 = v3;
      v165 = v4;
      v166 = v6;
      v167 = a3;
      v7 = 0;
      v9 = *a3;
      v8 = a3[1];
      v10 = v8 + *a3;
      v12 = a3[2];
      v11 = a3[3];
      v13 = v10 + v12 + v11;
      v14 = a3[4];
      v15 = a3[5];
      v116 = v13 + v14;
      v146 = v13 + v14 + v15;
      v16 = a3[6];
      v17 = a3[7];
      v163 = v146 + v16;
      v18 = a3[8];
      v19 = a3[9];
      v20 = v18 + v17;
      v21 = v18 + v17 + v19;
      v135 = v12 - v10 + v11;
      v145 = v135 - v14 + v15;
      v162 = v145 - v16;
      v129 = v10 + v12 - v11;
      v143 = v129 - (v15 + v14);
      v161 = v143 + v16;
      v168[0] = v21 + v146 + v16;
      v126 = v12 - v10 - v11;
      v168[1] = v145 - v16 - (v18 + v17) + v19;
      v141 = v126 + v14 - v15;
      v158 = v141 - v16;
      v168[2] = v143 + v16 - (v18 + v17) + v19;
      v168[3] = v21 + v141 - v16;
      v124 = v11 - (v10 + v12);
      v119 = v124 - v14 + v15;
      v22 = v10 - v12;
      v23 = v10 - v12 + v11;
      v122 = v15 + v14 + v23;
      v159 = v122 + v16;
      v160 = v119 - v16;
      v168[4] = v119 - v16 - v21;
      v168[5] = v18 + v17 + v122 + v16 - v19;
      v120 = v14 - v15 - v13;
      v157 = v120 - v16;
      v24 = v22 - v11;
      v118 = v22 - v11 - (v15 + v14);
      v155 = v118 + v16;
      v168[6] = v18 + v17 + v120 - v16 - v19;
      v168[7] = v118 + v16 - v21;
      v25 = v8 - v9;
      v26 = v9 - v8;
      v27 = v8 - v9 - v12;
      v28 = v27 - v11;
      v132 = v15 + v14 + v27 - v11;
      v156 = v132 + v16;
      v29 = v19 + v17;
      v30 = v26 - v12 - v11;
      v131 = v30 - v14 + v15;
      v154 = v131 - v16;
      v31 = v19 + v18 - v17;
      v168[8] = v19 + v17 + v132 + v16 - v18;
      v168[9] = v31 + v131 - v16;
      v32 = v27 + v11;
      v33 = v26 - v12 + v11;
      v128 = v33 + v14 - v15;
      v153 = v128 - v16;
      v121 = v32 - (v15 + v14);
      v152 = v121 + v16;
      v168[10] = v31 + v121 + v16;
      v168[11] = v19 + v17 + v128 - v16 - v18;
      v34 = v26 + v12;
      v35 = v25 + v12;
      v36 = v34 - v11;
      v114 = v34 - v11 - v14 + v15;
      v151 = v114 - v16;
      v37 = v35 - v11;
      v113 = v15 + v14 + v35 - v11;
      v150 = v113 + v16;
      v168[12] = v18 + v114 - v16 - (v19 + v17);
      v168[13] = v113 + v16 + v17 - (v19 + v18);
      v38 = v34 + v11;
      v39 = v35 + v11;
      v112 = v38 + v14 - v15;
      v149 = v112 - v16;
      v111 = v39 - (v15 + v14);
      v148 = v111 + v16;
      v168[14] = v112 - v16 + v17 - (v19 + v18);
      v168[15] = v111 + v16 + v18 - (v19 + v17);
      v40 = v28 - (v15 + v14);
      v147 = v40 - v16;
      v41 = v30 + v14 - v15;
      v144 = v41 + v16;
      v168[16] = v18 + v17 + v40 - v16 - v19;
      v168[17] = v41 + v16 - v21;
      v105 = v15 + v14 + v32;
      v42 = v33 - v14 + v15;
      v138 = v42 + v16;
      v139 = v105 - v16;
      v168[18] = v105 - v16 - v21;
      v168[19] = v18 + v17 + v42 + v16 - v19;
      v43 = v36 + v14 - v15;
      v142 = v43 + v16;
      v44 = v37 - (v15 + v14);
      v140 = v44 - v16;
      v168[20] = v43 + v16 - (v18 + v17) + v19;
      v168[21] = v21 + v44 - v16;
      v45 = v38 - v14 + v15;
      v46 = v15 + v14 + v39;
      v133 = v46 - v16;
      v134 = v45 + v16;
      v168[22] = v21 + v45 + v16;
      v168[23] = v46 - v16 - (v18 + v17) + v19;
      v47 = v13 - (v15 + v14);
      v137 = v47 - v16;
      v95 = v17;
      v48 = v135 + v14 - v15;
      v136 = v48 + v16;
      v168[24] = v47 - v16 + v17 - (v19 + v18);
      v168[25] = v18 + v48 + v16 - (v19 + v17);
      v49 = v15 + v14 + v129;
      v130 = v49 - v16;
      v50 = v126 - v14 + v15;
      v123 = v50 + v16;
      v168[26] = v18 + v49 - v16 - (v19 + v17);
      v168[27] = v50 + v16 + v17 - (v19 + v18);
      v51 = v124 + v14 - v15;
      v52 = v23 - (v15 + v14);
      v125 = v52 - v16;
      v127 = v51 + v16;
      v168[28] = v31 + v51 + v16;
      v168[29] = v19 + v17 + v52 - v16 - v18;
      v53 = v15 - v116;
      v54 = v15 + v14 + v24;
      v117 = v15 - v116 + v16;
      v115 = v54 - v16;
      v168[30] = v29 + v117 - v18;
      v168[31] = v31 + v54 - v16;
      v109 = v44 + v16;
      v110 = v43 - v16;
      v168[32] = v43 - v16 - v21;
      v168[33] = v20 + v44 + v16 - v19;
      v104 = v45 - v16;
      v101 = v46 + v16;
      v168[34] = v20 + v45 - v16 - v19;
      v168[35] = v46 + v16 - v21;
      v107 = v41 - v16;
      v108 = v40 + v16;
      v168[36] = v21 + v40 + v16;
      v168[37] = v41 - v16 - v20 + v19;
      v102 = v105 + v16;
      v98 = v42 - v16;
      v168[38] = v105 + v16 - v20 + v19;
      v168[39] = v21 + v42 - v16;
      v106 = v51 - v16;
      v103 = v52 + v16;
      v168[40] = v18 + v51 - v16 - v29;
      v168[41] = v52 + v16 + v95 - (v19 + v18);
      v99 = v53 - v16;
      v168[42] = v53 - v16 + v95 - (v19 + v18);
      v168[43] = v18 + v54 + v16 - v29;
      v100 = v47 + v16;
      v96 = v54 + v16;
      v97 = v48 - v16;
      v168[44] = v29 + v47 + v16 - v18;
      v168[45] = v31 + v48 - v16;
      v55 = v49 + v16;
      v56 = v50 - v16;
      v168[46] = v31 + v49 + v16;
      v168[47] = v29 + v50 - v16 - v18;
      v57 = v119 + v16;
      v58 = v122 - v16;
      v168[48] = v119 + v16 - v20 + v19;
      v168[49] = v21 + v122 - v16;
      v59 = v120 + v16;
      v60 = v118 - v16;
      v168[50] = v21 + v120 + v16;
      v168[51] = v118 - v16 - v20 + v19;
      v61 = v146 - v16;
      v62 = v145 + v16;
      v168[52] = v20 + v146 - v16 - v19;
      v168[53] = v145 + v16 - v21;
      v63 = v143 - v16;
      v64 = v141 + v16;
      v168[54] = v143 - v16 - v21;
      v168[55] = v20 + v141 + v16 - v19;
      v65 = v114 + v16;
      v66 = v113 - v16;
      v168[56] = v31 + v114 + v16;
      v168[57] = v29 + v113 - v16 - v18;
      v67 = v112 + v16;
      v68 = v111 - v16;
      v168[58] = v29 + v112 + v16 - v18;
      v168[59] = v31 + v111 - v16;
      v69 = v132 - v16;
      v70 = v131 + v16;
      v168[60] = v132 - v16 + v95 - (v19 + v18);
      v168[61] = v18 + v131 + v16 - v29;
      v71 = v121 - v16;
      v72 = v128 + v16;
      v168[62] = v71 + v18 - v29;
      v168[63] = v72 + v95 - (v19 + v18);
      v168[64] = v29 + v60 - v18;
      v168[65] = v31 + v59;
      v168[66] = v31 + v58;
      v168[67] = v29 + v57 - v18;
      v168[68] = v18 + v64 - v29;
      v168[69] = v63 + v95 - (v19 + v18);
      v168[70] = v62 + v95 - (v19 + v18);
      v168[71] = v18 + v61 - v29;
      v168[72] = v21 + v68;
      v168[73] = v67 - v20 + v19;
      v168[74] = v66 - v20 + v19;
      v168[75] = v21 + v65;
      v168[76] = v72 - v21;
      v168[77] = v20 + v71 - v19;
      v168[78] = v20 + v70 - v19;
      v168[79] = v69 - v21;
      v168[80] = v101 + v95 - (v19 + v18);
      v168[81] = v18 + v104 - v29;
      v168[82] = v109 + v18 - v29;
      v168[83] = v110 + v95 - (v19 + v18);
      LODWORD(v169) = v31 + v98;
      DWORD1(v169) = v29 + v102 - v18;
      DWORD2(v169) = v29 + v107 - v18;
      HIDWORD(v169) = v31 + v108;
      LODWORD(v170) = v20 + v96 - v19;
      DWORD1(v170) = v99 - v21;
      DWORD2(v170) = v103 - v21;
      HIDWORD(v170) = v20 + v106 - v19;
      LODWORD(v171) = v56 - v20 + v19;
      DWORD1(v171) = v21 + v55;
      DWORD2(v171) = v21 + v97;
      HIDWORD(v171) = v100 - v20 + v19;
      LODWORD(v172) = v18 + v138 - v29;
      DWORD1(v172) = v139 + v95 - (v19 + v18);
      DWORD2(v172) = v144 + v95 - (v19 + v18);
      HIDWORD(v172) = v147 + v18 - v29;
      LODWORD(v173) = v29 + v133 - v18;
      DWORD1(v173) = v31 + v134;
      DWORD2(v173) = v31 + v140;
      HIDWORD(v173) = v29 + v142 - v18;
      LODWORD(v174) = v123 - v21;
      DWORD1(v174) = v20 + v130 - v19;
      DWORD2(v174) = v20 + v136 - v19;
      HIDWORD(v174) = v137 - v21;
      LODWORD(v175) = v21 + v115;
      DWORD1(v175) = v117 - v20 + v19;
      DWORD2(v175) = v125 - v20 + v19;
      HIDWORD(v175) = v21 + v127;
      LODWORD(v176) = v31 + v158;
      DWORD1(v176) = v29 + v161 - v18;
      DWORD2(v176) = v29 + v162 - v18;
      HIDWORD(v176) = v31 + v163;
      LODWORD(v177) = v155 + v95 - (v19 + v18);
      DWORD1(v177) = v18 + v157 - v29;
      DWORD2(v177) = v18 + v159 - v29;
      HIDWORD(v177) = v160 + v95 - (v19 + v18);
      LODWORD(v178) = v153 - v20 + v19;
      DWORD1(v178) = v21 + v152;
      DWORD2(v178) = v21 + v154;
      HIDWORD(v178) = v156 - v20 + v19;
      LODWORD(v179) = v20 + v148 - v19;
      DWORD1(v179) = v149 - v21;
      DWORD2(v179) = v150 - v21;
      HIDWORD(v179) = v20 + v151 - v19;
      v4 = v164;
      v73 = (v94 + 32 * v166);
LABEL_9:
      v74 = 0;
      v75 = (v168 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v76 = (v164 + 8 + 4 * v7);
      v77 = (v165 + 4 * (v7 >> 1));
      do
      {
        v79 = *v75++;
        v78 = v79;
        v81 = *(v76 - 2);
        v80 = *(v76 - 1);
        v82 = v81 <= v80;
        if (v81 <= v80)
        {
          v81 = *(v76 - 1);
        }

        v83 = v81 + v78;
        if (__OFADD__(v81, v78))
        {
          v83 = ((v81 + v78) >> 31) ^ 0x80000000;
        }

        *v77 = v83;
        v84 = __OFSUB__(v81, v78);
        v85 = v81 - v78;
        if (v84)
        {
          v85 = (v85 >> 31) ^ 0x80000000;
        }

        v77[256] = v85;
        v74 = (4 * v74) | (2 * v82);
        v86 = *v76;
        if (*v76 <= v76[1])
        {
          v86 = v76[1];
          ++v74;
        }

        v87 = v86 - v78;
        if (__OFSUB__(v86, v78))
        {
          v87 = ((v86 - v78) >> 31) ^ 0x80000000;
        }

        v77[1] = v87;
        v84 = __OFADD__(v86, v78);
        v88 = v86 + v78;
        if (v84)
        {
          v88 = (v88 >> 31) ^ 0x80000000;
        }

        v77[257] = v88;
        if ((~v7 & 0x3C) == 0)
        {
          *v73++ = v74;
          v89 = v7 >= 0x1FC;
          v7 += 4;
          if (v89)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v76 += 4;
        v77 += 2;
        v89 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v89);
      if (v74)
      {
        *v73 = v74;
      }

LABEL_7:
      a3 = v167 + 10;
      v6 = v166 + 1;
      v3 = v165;
    }

    while (v166 + 1 != v93);
    v3 = v165;
    v91 = a1;
  }

  else
  {
    v91 = a1;
  }

  result = 0;
  *(v91 + 64) = v3;
  *(v91 + 72) = v4;
  return result;
}

uint64_t sub_100173EC8(uint64_t a1, uint64_t a2, int *a3)
{
  v64 = *(a1 + 40);
  if (!v64)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v63 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v88 = v3;
      v89 = v4;
      v90 = v5;
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = v7 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11;
      v13 = v9 + v11 + v10;
      v14 = a3[4];
      v15 = a3[5];
      v72 = v13 + v14 + v15;
      v16 = a3[6];
      v17 = a3[7];
      v19 = a3[8];
      v18 = a3[9];
      v76 = v17 + v16 + v19 + v18;
      v73 = *a3 - v7 - v11;
      v70 = v73 + v10;
      v87 = v73 + v10 - v14;
      v20 = v9 - v11;
      v68 = v9 - v11 - v10;
      v92[0] = v76 + v72;
      v92[1] = v16 + v15 + v87 - (v19 + v17) + v18;
      v84 = v19 + v16 + v15;
      v21 = v8 - v7 + v11;
      v67 = v21 - v10;
      v86 = v21 - v10 + v14;
      v91 = v16 + v15 + v17;
      v92[2] = v17 + v68 - v14 - (v84 + v18);
      v92[3] = v19 + v86 - (v18 + v91);
      v22 = v7 - v8;
      v23 = v11 - v9;
      v69 = v11 - v9 - v10;
      v83 = v17 + v15 + v19;
      v24 = v17 + v16 - v15 + v19;
      v25 = v22 - v11;
      v26 = v22 - v11 - v10;
      v85 = v26 - v14;
      v92[4] = v16 + v69 + v14 - (v83 + v18);
      v92[5] = v24 + v26 - v14 - v18;
      v27 = v22 + v11;
      v82 = v10 - v12 - v14;
      v28 = v18 + v19 + v15;
      v29 = v27 + v10;
      v81 = v27 + v10 + v14;
      v92[6] = v28 + v82 - (v17 + v16);
      v92[7] = v17 + v15 + v81 - (v19 + v16) + v18;
      v66 = v27 - v10;
      v80 = v27 - v10 - v14;
      v92[8] = v24 + v14 - v13 - v18;
      v92[9] = v16 + v80 - (v83 + v18);
      v30 = v23 + v10;
      v31 = v25 + v10;
      v78 = v25 + v10 + v14;
      v92[10] = v17 + v15 + v30 - v14 - (v19 + v16) + v18;
      v92[11] = v28 + v78 - (v17 + v16);
      v79 = v20 + v10 + v14;
      v65 = v21 + v10;
      v75 = v21 + v10 - v14;
      v32 = v17 + v16 + v15;
      v92[12] = v16 + v15 + v79 - (v19 + v17) + v18;
      v92[13] = v32 + v19 + v18 + v75;
      v33 = v12 - v10;
      v77 = v12 - v10 - v14;
      v34 = v73 - v10;
      v74 = v73 - v10 + v14;
      v92[14] = v19 + v77 - (v18 + v91);
      v92[15] = v17 + v74 - (v84 + v18);
      v35 = v16 + v15 + v18;
      v92[16] = v67 - v14 - (v91 + v19 + v18);
      v92[17] = v19 + v17 + v68 + v14 - v35;
      v71 = v70 + v14;
      v92[18] = v28 + v16 + v71 - v17;
      v92[19] = v32 + v13 - v14 - v19 + v18;
      v36 = v10 - v12 + v14;
      v37 = v17 + v16 + v19;
      v92[20] = v19 + v17 + v15 + v29 - v14 - v16 + v18;
      v92[21] = v36 + v15 - v37 + v18;
      v38 = v26 + v14;
      v39 = v17 + v16 + v26 + v14 - v28;
      v40 = v18 + v17 + v15;
      v92[22] = v39;
      v92[23] = v19 + v16 + v69 - v14 - v40;
      v92[24] = v31 - v14 + v15 - v37 + v18;
      v92[25] = v19 + v17 + v15 + v30 + v14 - v16 + v18;
      v92[26] = v19 + v16 + v66 + v14 - v40;
      v92[27] = v17 + v16 - (v18 + v19) - v72;
      v41 = v34 - v14;
      v42 = v33 + v14;
      v92[28] = v19 + v17 + v41 - v35;
      v92[29] = v42 - (v91 + v19 + v18);
      v92[30] = v32 + v65 + v14 - v19 + v18;
      v92[31] = v28 + v16 + v20 + v10 - v14 - v17;
      v92[32] = v68 + v14 + v15 - v76;
      v92[33] = v19 + v17 + v15 + v67 - v14 - (v16 + v18);
      v92[34] = v18 + v19 + v16 + v13 - v14 - (v17 + v15);
      v92[35] = v17 + v16 + v71 - (v15 + v19) + v18;
      v92[36] = v19 + v17 + v36 - (v16 + v15) + v18;
      v92[37] = v29 - v14 - (v91 + v19) + v18;
      v92[38] = v32 + v69 - v14 - (v18 + v19);
      v92[39] = v84 + v38 - (v17 + v18);
      v92[40] = v30 + v14 - (v91 + v19) + v18;
      v92[41] = v19 + v17 + v31 - v14 - (v16 + v15) + v18;
      v92[42] = v84 - (v17 + v18) - (v13 + v14);
      v92[43] = v32 + v66 + v14 - (v18 + v19);
      v92[44] = v19 + v17 + v15 + v42 - (v16 + v18);
      v92[45] = v41 + v15 - v76;
      v92[46] = v17 + v16 + v20 + v10 - v14 - (v15 + v19) + v18;
      v92[47] = v18 + v19 + v16 + v65 + v14 - (v17 + v15);
      v92[48] = v24 + v18 + v87;
      v92[49] = v16 + v18 + v13 + v14 - v83;
      v92[50] = v17 + v15 + v86 - (v19 + v16 + v18);
      v92[51] = v15 + v19 + v68 - v14 - (v18 + v17 + v16);
      v92[52] = v16 + v15 + v85 - (v19 + v17 + v18);
      v92[53] = v32 + v19 + v69 + v14 - v18;
      v92[54] = v18 + v19 + v81 - v91;
      v92[55] = v17 + v18 + v82 - v84;
      v92[56] = v32 + v19 + v80 - v18;
      v92[57] = v16 + v15 + v14 - v13 - (v19 + v17 + v18);
      v92[58] = v17 + v18 + v78 - v84;
      v92[59] = v18 + v19 + v30 - v14 - v91;
      v92[60] = v16 + v18 + v75 - v83;
      v92[61] = v24 + v18 + v79;
      v92[62] = v15 + v19 + v74 - (v18 + v17 + v16);
      v92[63] = v17 + v15 + v77 - (v19 + v16 + v18);
      v4 = v88;
      v43 = (v64 + 16 * v90);
LABEL_9:
      v44 = 0;
      v45 = (v92 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v46 = (v88 + 8 + 4 * v6);
      v47 = (v89 + 4 * (v6 >> 1));
      do
      {
        v49 = *v45++;
        v48 = v49;
        v51 = *(v46 - 2);
        v50 = *(v46 - 1);
        v52 = v51 <= v50;
        if (v51 <= v50)
        {
          v51 = *(v46 - 1);
        }

        v53 = v51 + v48;
        if (__OFADD__(v51, v48))
        {
          v53 = ((v51 + v48) >> 31) ^ 0x80000000;
        }

        *v47 = v53;
        v54 = __OFSUB__(v51, v48);
        v55 = v51 - v48;
        if (v54)
        {
          v55 = (v55 >> 31) ^ 0x80000000;
        }

        v47[128] = v55;
        v44 = (4 * v44) | (2 * v52);
        v56 = *v46;
        if (*v46 <= v46[1])
        {
          v56 = v46[1];
          ++v44;
        }

        v57 = v56 - v48;
        if (__OFSUB__(v56, v48))
        {
          v57 = ((v56 - v48) >> 31) ^ 0x80000000;
        }

        v47[1] = v57;
        v54 = __OFADD__(v56, v48);
        v58 = v56 + v48;
        if (v54)
        {
          v58 = (v58 >> 31) ^ 0x80000000;
        }

        v47[129] = v58;
        if ((~v6 & 0x3C) == 0)
        {
          *v43++ = v44;
          v59 = v6 >= 0xFC;
          v6 += 4;
          if (v59)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v46 += 4;
        v47 += 2;
        v59 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v59);
      if (v44)
      {
        *v43 = v44;
      }

LABEL_7:
      a3 += 10;
      v5 = v90 + 1;
      v3 = v89;
    }

    while (v90 + 1 != v63);
    v3 = v89;
    v61 = a1;
  }

  else
  {
    v61 = a1;
  }

  result = 0;
  *(v61 + 64) = v3;
  *(v61 + 72) = v4;
  return result;
}

uint64_t sub_1001746BC(uint64_t a1, uint64_t a2, int *a3)
{
  v68 = *(a1 + 40);
  if (!v68)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v67 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v75 = v4;
      v80 = v3;
      v81 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v74 = v9 + v11 + v10;
      v77 = v9 + v11;
      v12 = a3[4];
      v13 = a3[5];
      v79 = v74 + v12;
      v14 = a3[8];
      v15 = a3[9];
      v17 = a3[6];
      v16 = a3[7];
      v78 = v11 - v9;
      v72 = v11 - v9 + v10;
      v18 = v10 - (v9 + v11);
      v19 = v16 + v17 + v12;
      v71 = v9 - v11;
      v20 = v9 - v11 + v10;
      v82[0] = v15 + v14 + v13 + v17 + v16 + v74 + v12;
      v82[1] = v17 + v12 + v72 - (v16 + v13 + v15 + v14);
      v21 = v13 + v12;
      v76 = v13 + v12 + v17 + v15 + v14;
      v82[2] = v15 + v14 + v13 + v18 - v19;
      v82[3] = v16 + v20 - v76;
      v22 = v8 - v7;
      v23 = v7 - v8;
      v73 = v22 - v11;
      v24 = v22 - v11 - v10;
      v25 = v16 + v17 - v12 + v13;
      v70 = v23 - v11;
      v26 = v23 - v11 - v10;
      v82[4] = v15 + v17 + v24 - (v16 + v13 + v12 + v14);
      v82[5] = v25 + v26 + v14 - v15;
      v27 = v23 + v11;
      v28 = v22 + v11;
      v29 = v22 + v11 - v10;
      v30 = v23 + v11 - v10;
      v31 = v16 + v12;
      v82[6] = v16 + v12 + v30 - (v14 + v17 + v13) + v15;
      v82[7] = v13 + v12 + v14 + v29 - (v16 + v17 + v15);
      v82[8] = v15 + v14 + v17 + v30 - (v16 + v13 + v12);
      v82[9] = v25 + v29 - (v15 + v14);
      v32 = v15 + v14 + v12;
      v69 = v16 + v17 + v15 + v14;
      v82[10] = v32 + v24 - (v17 + v13) + v16;
      v82[11] = v13 + v12 + v26 - v69;
      v33 = v19 + v13;
      v34 = v17 + v12;
      v35 = v15 + v16 + v13;
      v82[12] = v19 + v13 + v18 - v14 + v15;
      v82[13] = v34 + v14 + v20 - v35;
      v36 = v19 + v14;
      v37 = v21 + v17 + v15;
      v82[14] = v15 + v13 + v74 - (v19 + v14);
      v82[15] = v14 + v16 + v72 - v37;
      v38 = v71 - v10;
      v82[16] = v31 + v71 - v10 - (v14 + v17 + v13) + v15;
      v82[17] = v21 + v14 - (v17 + v16 + v15) - v74;
      v39 = v78 - v10;
      v40 = v77 - v10;
      v82[18] = v15 + v17 + v78 - v10 - (v16 + v21 + v14);
      v82[19] = v25 + v77 - v10 + v14 - v15;
      v41 = v28 + v10;
      v42 = v15 + v14 + v13 + v28 + v10 - v19;
      v43 = v27 + v10;
      v82[20] = v42;
      v82[21] = v16 + v27 + v10 - v76;
      v44 = v70 + v10;
      v45 = v32 + v13 + v70 + v10 + v17 + v16;
      v46 = v73 + v10;
      v82[22] = v45;
      v82[23] = v34 + v46 - (v16 + v13 + v15 + v14);
      v82[24] = v13 + v44 - v36 + v15;
      v82[25] = v14 + v16 + v46 - v37;
      v82[26] = v33 + v41 - v14 + v15;
      v82[27] = v34 + v14 + v43 - v35;
      v82[28] = v32 + v39 - (v17 + v13) + v16;
      v82[29] = v21 + v40 - v69;
      v82[30] = v15 + v14 + v17 + v38 - (v16 + v21);
      v82[31] = v16 + v17 + v13 - (v15 + v14) - v79;
      v4 = v80;
      v47 = (v68 + 8 * v81);
LABEL_9:
      v48 = 0;
      v49 = (v82 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v50 = (v80 + 8 + 4 * v6);
      v51 = (v75 + 256 + 4 * (v6 >> 1));
      do
      {
        v53 = *v49++;
        v52 = v53;
        v54 = *(v50 - 2);
        v55 = *(v50 - 1);
        v56 = v54 <= v55;
        if (v54 <= v55)
        {
          v54 = *(v50 - 1);
        }

        v57 = v54 + v52;
        if (__OFADD__(v54, v52))
        {
          v57 = ((v54 + v52) >> 31) ^ 0x80000000;
        }

        *(v51 - 64) = v57;
        v58 = __OFSUB__(v54, v52);
        v59 = v54 - v52;
        if (v58)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        *v51 = v59;
        v48 = (4 * v48) | (2 * v56);
        v60 = *v50;
        if (*v50 <= v50[1])
        {
          v60 = v50[1];
          ++v48;
        }

        v61 = v60 - v52;
        if (__OFSUB__(v60, v52))
        {
          v61 = ((v60 - v52) >> 31) ^ 0x80000000;
        }

        *(v51 - 63) = v61;
        v58 = __OFADD__(v60, v52);
        v62 = v60 + v52;
        if (v58)
        {
          v62 = (v62 >> 31) ^ 0x80000000;
        }

        v51[1] = v62;
        if ((~v6 & 0x3C) == 0)
        {
          *v47++ = v48;
          v63 = v6 >= 0x7C;
          v6 += 4;
          if (v63)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v50 += 4;
        v51 += 2;
        v63 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v63);
      if (v48)
      {
        *v47 = v48;
      }

LABEL_7:
      a3 += 10;
      v5 = v81 + 1;
      v3 = v75;
    }

    while (v81 + 1 != v67);
    v3 = v75;
    v65 = a1;
  }

  else
  {
    v65 = a1;
  }

  result = 0;
  *(v65 + 64) = v3;
  *(v65 + 72) = v4;
  return result;
}

uint64_t sub_100174BC0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v78 = *(a1 + 40);
  if (!v78)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v101 = 0u;
  v77 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v96 = v4;
      v97 = v3;
      v98 = v6;
      v99 = a3;
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 + *a3;
      v12 = a3[2];
      v11 = a3[3];
      v13 = v10 + v12 + v11;
      v14 = a3[4];
      v15 = a3[5];
      v83 = v13 + v14;
      v16 = v13 + v14 + v15;
      v18 = a3[6];
      v17 = a3[7];
      v19 = a3[8];
      v20 = v12 - v10 + v11;
      v95 = v20 - v14 + v15;
      v21 = v10 + v12 - v11;
      v22 = v15 + v14;
      v94 = v21 - (v15 + v14);
      v23 = v12 - v10 - v11;
      v100[0] = v19 + v17 + v16 + v18;
      v100[1] = v95 - v18 - (v19 + v17);
      v93 = v23 + v14 - v15;
      v24 = v11 - (v10 + v12);
      v100[2] = v94 + v18 - (v19 + v17);
      v100[3] = v19 + v17 + v93 - v18;
      v87 = v24 - v14 + v15;
      v25 = v10 - v12;
      v26 = v25 + v11;
      v86 = v15 + v14 + v25 + v11;
      v100[4] = v87 - v18 - (v19 + v17);
      v100[5] = v19 + v17 + v86 + v18;
      v85 = v14 - v15 - v13;
      v27 = v25 - v11;
      v84 = v25 - v11 - (v15 + v14);
      v100[6] = v19 + v17 + v85 - v18;
      v100[7] = v84 + v18 - (v19 + v17);
      v28 = v9 - v8;
      v29 = v8 - v9;
      v30 = v9 - v8 - v12;
      v31 = v30 - v11;
      v92 = v15 + v14 + v30 - v11;
      v32 = v29 - v12 - v11;
      v91 = v32 - v14 + v15;
      v100[8] = v92 + v18 + v17 - v19;
      v100[9] = v91 - v18 - v17 + v19;
      v33 = v30 + v11;
      v90 = v33 - (v15 + v14);
      v34 = v29 - v12 + v11;
      v89 = v34 + v14 - v15;
      v100[10] = v90 + v18 - v17 + v19;
      v100[11] = v89 - v18 + v17 - v19;
      v35 = v29 + v12;
      v36 = v28 + v12;
      v37 = v35 - v11;
      v82 = v35 - v11 - v14 + v15;
      v38 = v36 - v11;
      v81 = v15 + v14 + v36 - v11;
      v100[12] = v82 - v18 - v17 + v19;
      v100[13] = v81 + v18 + v17 - v19;
      v39 = v35 + v11;
      v40 = v36 + v11;
      v80 = v39 + v14 - v15;
      v79 = v40 - (v15 + v14);
      v100[14] = v80 - v18 + v17 - v19;
      v100[15] = v79 + v18 - v17 + v19;
      v41 = v31 - (v15 + v14);
      v42 = v32 + v14 - v15;
      v100[16] = v19 + v17 + v41 - v18;
      v100[17] = v42 + v18 - (v19 + v17);
      v43 = v15 + v14 + v33;
      v44 = v34 - v14 + v15;
      v100[18] = v43 - v18 - (v19 + v17);
      v100[19] = v19 + v17 + v44 + v18;
      v45 = v37 + v14 - v15;
      v46 = v38 - (v15 + v14);
      v100[20] = v45 + v18 - (v19 + v17);
      v100[21] = v19 + v17 + v46 - v18;
      v47 = v39 - v14 + v15;
      v48 = v15 + v14 + v40;
      v100[22] = v19 + v17 + v47 + v18;
      v100[23] = v48 - v18 - (v19 + v17);
      v49 = v13 - (v15 + v14);
      v50 = v20 + v14 - v15;
      v100[24] = v49 - v18 + v17 - v19;
      v100[25] = v50 + v18 - v17 + v19;
      v51 = v15 + v14 + v21;
      v52 = v23 - v14 + v15;
      v100[26] = v51 - v18 - v17 + v19;
      v100[27] = v52 + v18 + v17 - v19;
      v53 = v24 + v14 - v15;
      v54 = v26 - v22;
      v88 = v26 - v22 - v18;
      v100[28] = v53 + v18 - v17 + v19;
      v100[29] = v88 + v17 - v19;
      v55 = v15 - v83;
      v56 = v22 + v27;
      v100[30] = v55 + v18 + v17 - v19;
      v100[31] = v56 - v18 - v17 + v19;
      v100[32] = v45 - v18 - (v19 + v17);
      v100[33] = v19 + v17 + v46 + v18;
      v100[34] = v19 + v17 + v47 - v18;
      v100[35] = v48 + v18 - (v19 + v17);
      v100[36] = v19 + v17 + v41 + v18;
      v100[37] = v42 - v18 - (v19 + v17);
      v100[38] = v43 + v18 - (v19 + v17);
      v100[39] = v19 + v17 + v44 - v18;
      v100[40] = v53 - v18 - v17 + v19;
      v100[41] = v54 + v18 + v17 - v19;
      v100[42] = v55 - v18 + v17 - v19;
      v100[43] = v56 + v18 - v17 + v19;
      v100[44] = v49 + v18 + v17 - v19;
      v100[45] = v50 - v18 - v17 + v19;
      v100[46] = v51 + v18 - v17 + v19;
      v100[47] = v52 - v18 + v17 - v19;
      v100[48] = v87 + v18 - (v19 + v17);
      v100[49] = v19 + v17 + v86 - v18;
      v100[50] = v19 + v17 + v85 + v18;
      v100[51] = v84 - v18 - (v19 + v17);
      v100[52] = v19 + v17 + v16 - v18;
      v100[53] = v95 + v18 - (v19 + v17);
      v100[54] = v94 - v18 - (v19 + v17);
      v100[55] = v19 + v17 + v93 + v18;
      v100[56] = v82 + v18 - v17 + v19;
      v100[57] = v81 - v18 + v17 - v19;
      v100[58] = v80 + v18 + v17 - v19;
      v100[59] = v79 - v18 - v17 + v19;
      v100[60] = v92 - v18 + v17 - v19;
      v100[61] = v91 + v18 - v17 + v19;
      v100[62] = v90 - v18 - v17 + v19;
      v100[63] = v89 + v18 + v17 - v19;
      v100[64] = v84 - v18 + v17 - v19;
      v100[65] = v85 + v18 - v17 + v19;
      v100[66] = v86 - v18 - v17 + v19;
      v100[67] = v87 + v18 + v17 - v19;
      v100[68] = v93 + v18 - v17 + v19;
      v100[69] = v94 - v18 + v17 - v19;
      v100[70] = v95 + v18 + v17 - v19;
      v100[71] = v16 - v18 - v17 + v19;
      v100[72] = v19 + v17 + v79 - v18;
      v100[73] = v80 + v18 - (v19 + v17);
      v100[74] = v81 - v18 - (v19 + v17);
      v100[75] = v19 + v17 + v82 + v18;
      v100[76] = v89 + v18 - (v19 + v17);
      v100[77] = v19 + v17 + v90 - v18;
      v100[78] = v19 + v17 + v91 + v18;
      v100[79] = v92 - v18 - (v19 + v17);
      v100[80] = v48 + v18 + v17 - v19;
      v100[81] = v47 - v18 - v17 + v19;
      v100[82] = v46 + v18 - v17 + v19;
      v100[83] = v45 - v18 + v17 - v19;
      LODWORD(v101) = v44 - v18 - v17 + v19;
      DWORD1(v101) = v43 + v18 + v17 - v19;
      DWORD2(v101) = v42 - v18 + v17 - v19;
      HIDWORD(v101) = v41 + v18 - v17 + v19;
      LODWORD(v102) = v19 + v17 + v56 + v18;
      DWORD1(v102) = v55 - v18 - (v19 + v17);
      DWORD2(v102) = v54 + v18 - (v19 + v17);
      HIDWORD(v102) = v19 + v17 + v53 - v18;
      LODWORD(v103) = v52 - v18 - (v19 + v17);
      DWORD1(v103) = v19 + v17 + v51 + v18;
      DWORD2(v103) = v19 + v17 + v50 - v18;
      HIDWORD(v103) = v49 + v18 - (v19 + v17);
      LODWORD(v104) = v44 + v18 - v17 + v19;
      DWORD1(v104) = v43 - v18 + v17 - v19;
      DWORD2(v104) = v42 + v18 + v17 - v19;
      HIDWORD(v104) = v41 - v18 - v17 + v19;
      LODWORD(v105) = v48 - v18 + v17 - v19;
      DWORD1(v105) = v47 + v18 - v17 + v19;
      DWORD2(v105) = v46 - v18 - v17 + v19;
      HIDWORD(v105) = v45 + v18 + v17 - v19;
      LODWORD(v106) = v52 + v18 - (v19 + v17);
      DWORD1(v106) = v19 + v17 + v51 - v18;
      DWORD2(v106) = v19 + v17 + v50 + v18;
      HIDWORD(v106) = v49 - v18 - (v19 + v17);
      LODWORD(v107) = v19 + v17 + v56 - v18;
      DWORD1(v107) = v55 + v18 - (v19 + v17);
      DWORD2(v107) = v88 - (v19 + v17);
      HIDWORD(v107) = v19 + v17 + v53 + v18;
      LODWORD(v108) = v93 - v18 - v17 + v19;
      DWORD1(v108) = v94 + v18 + v17 - v19;
      DWORD2(v108) = v95 - v18 + v17 - v19;
      HIDWORD(v108) = v16 + v18 - v17 + v19;
      LODWORD(v109) = v84 + v18 + v17 - v19;
      DWORD1(v109) = v85 - v18 - v17 + v19;
      DWORD2(v109) = v86 + v18 - v17 + v19;
      HIDWORD(v109) = v87 - v18 + v17 - v19;
      LODWORD(v110) = v89 - v18 - (v19 + v17);
      DWORD1(v110) = v19 + v17 + v90 + v18;
      DWORD2(v110) = v19 + v17 + v91 - v18;
      HIDWORD(v110) = v92 + v18 - (v19 + v17);
      LODWORD(v111) = v19 + v17 + v79 + v18;
      DWORD1(v111) = v80 - v18 - (v19 + v17);
      DWORD2(v111) = v81 + v18 - (v19 + v17);
      HIDWORD(v111) = v19 + v17 + v82 - v18;
      v4 = v97;
      v57 = (v78 + 32 * v98);
LABEL_9:
      v58 = 0;
      v59 = (v100 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v60 = (v97 + 8 + 4 * v7);
      v61 = (v96 + 4 * (v7 >> 1));
      do
      {
        v63 = *v59++;
        v62 = v63;
        v65 = *(v60 - 2);
        v64 = *(v60 - 1);
        v66 = v65 <= v64;
        if (v65 <= v64)
        {
          v65 = *(v60 - 1);
        }

        v67 = v65 + v62;
        if (__OFADD__(v65, v62))
        {
          v67 = ((v65 + v62) >> 31) ^ 0x80000000;
        }

        *v61 = v67;
        v68 = __OFSUB__(v65, v62);
        v69 = v65 - v62;
        if (v68)
        {
          v69 = (v69 >> 31) ^ 0x80000000;
        }

        v61[256] = v69;
        v58 = (4 * v58) | (2 * v66);
        v70 = *v60;
        if (*v60 <= v60[1])
        {
          v70 = v60[1];
          ++v58;
        }

        v71 = v70 - v62;
        if (__OFSUB__(v70, v62))
        {
          v71 = ((v70 - v62) >> 31) ^ 0x80000000;
        }

        v61[1] = v71;
        v68 = __OFADD__(v70, v62);
        v72 = v70 + v62;
        if (v68)
        {
          v72 = (v72 >> 31) ^ 0x80000000;
        }

        v61[257] = v72;
        if ((~v7 & 0x3C) == 0)
        {
          *v57++ = v58;
          v73 = v7 >= 0x1FC;
          v7 += 4;
          if (v73)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v60 += 4;
        v61 += 2;
        v73 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v73);
      if (v58)
      {
        *v57 = v58;
      }

LABEL_7:
      a3 = v99 + 9;
      v6 = v98 + 1;
      v3 = v96;
    }

    while (v98 + 1 != v77);
    v3 = v96;
    v75 = a1;
  }

  else
  {
    v75 = a1;
  }

  result = 0;
  *(v75 + 64) = v3;
  *(v75 + 72) = v4;
  return result;
}

uint64_t sub_1001756AC(uint64_t a1, uint64_t a2, int *a3)
{
  v74 = *(a1 + 40);
  if (!v74)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  v5 = a3;
  if (!a3)
  {
    return 3;
  }

  v73 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v6 = 0;
    do
    {
      v104 = v3;
      v7 = 0;
      v8 = *v5;
      v9 = v5[1];
      v10 = v9 + *v5;
      v11 = v5[2];
      v12 = v5[3];
      v13 = v10 + v11;
      v14 = v10 + v11 + v12;
      v16 = v5[4];
      v15 = v5[5];
      v101 = v14 + v16;
      v86 = v14 + v16 + v15;
      v18 = v5[6];
      v17 = v5[7];
      v19 = v5[8];
      v20 = *v5 - v9 - v11;
      v102 = v20 + v12 - v16;
      v21 = v10 - v11;
      v82 = v10 - v11 - v12;
      v103 = v82 - v16;
      v105[0] = v17 + v18 + v19 + v86;
      v105[1] = v18 + v15 + v102 - (v19 + v17);
      v22 = v19 + v18 + v15;
      v23 = v8 - v9 + v11;
      v79 = v23 - v12;
      v100 = v23 - v12 + v16;
      v105[2] = v17 + v82 - v16 - v22;
      v105[3] = v100 - (v18 + v15 + v17) + v19;
      v24 = v9 - v8;
      v25 = v11 - v10;
      v84 = v11 - v10 - v12;
      v99 = v84 + v16;
      v26 = v24 - v11;
      v81 = v24 - v11 - v12;
      v98 = v81 - v16;
      v87 = v17 + v18 - v15 + v19;
      v105[4] = v18 + v84 + v16 - (v17 + v15 + v19);
      v105[5] = v87 + v81 - v16;
      v27 = v24 + v11;
      v97 = v12 - v13 - v16;
      v28 = v27 + v12;
      v96 = v27 + v12 + v16;
      v105[6] = v19 + v15 + v97 - (v17 + v18);
      v105[7] = v17 + v15 + v96 - (v19 + v18);
      v78 = v27 - v12;
      v94 = v27 - v12 - v16;
      v93 = v16 - v14;
      v105[8] = v87 + v16 - v14;
      v105[9] = v18 + v94 - (v17 + v15 + v19);
      v29 = v25 + v12;
      v95 = v25 + v12 - v16;
      v30 = v26 + v12;
      v91 = v26 + v12 + v16;
      v105[10] = v17 + v15 + v95 - (v19 + v18);
      v105[11] = v19 + v15 + v91 - (v17 + v18);
      v77 = v21 + v12;
      v92 = v21 + v12 + v16;
      v76 = v23 + v12;
      v90 = v23 + v12 - v16;
      v31 = v17 + v18 + v15;
      v105[12] = v18 + v15 + v92 - (v19 + v17);
      v105[13] = v31 + v19 + v90;
      v32 = v13 - v12;
      v33 = v20 - v12;
      v89 = v13 - v12 - v16;
      v34 = v18 + v15 + v17;
      v88 = v20 - v12 + v16;
      v105[14] = v89 - v34 + v19;
      v105[15] = v17 + v88 - v22;
      v80 = v79 - v16;
      v83 = v82 + v16;
      v35 = v34 + v19;
      v105[16] = v80 - (v34 + v19);
      v105[17] = v19 + v17 + v83 - (v18 + v15);
      v36 = v17 + v18 + v19;
      v85 = v20 + v12 + v16;
      v37 = v14 - v16;
      v105[18] = v18 + v15 + v85 - v17 + v19;
      v105[19] = v31 + v37 - v19;
      v75 = v28 - v16;
      v38 = v19 + v17 + v15;
      v39 = v12 - v13 + v16;
      v105[20] = v38 + v75 - v18;
      v105[21] = v39 + v15 - v36;
      v40 = v81 + v16;
      v41 = v84 - v16;
      v105[22] = v17 + v18 + v81 + v16 - (v19 + v15);
      v105[23] = v19 + v18 + v84 - v16 - (v17 + v15);
      v42 = v30 - v16;
      v43 = v29 + v16;
      v105[24] = v30 - v16 + v15 - v36;
      v105[25] = v38 + v43 - v18;
      v44 = v78 + v16;
      v105[26] = v19 + v18 + v78 + v16 - (v17 + v15);
      v105[27] = v17 + v18 - v19 - v86;
      v45 = v33 - v16;
      v46 = v32 + v16;
      v105[28] = v19 + v17 + v45 - (v18 + v15);
      v105[29] = v32 + v16 - v35;
      v47 = v76 + v16;
      v48 = v77 - v16;
      v105[30] = v31 + v47 - v19;
      v105[31] = v18 + v15 + v48 - v17 + v19;
      v105[32] = v83 + v15 - v36;
      v105[33] = v38 + v80 - v18;
      v105[34] = v19 + v18 + v37 - (v17 + v15);
      v105[35] = v17 + v18 + v85 - (v19 + v15);
      v105[36] = v19 + v17 + v39 - (v18 + v15);
      v105[37] = v75 - v35;
      v105[38] = v31 + v41 - v19;
      v105[39] = v18 + v15 + v40 - v17 + v19;
      v105[40] = v43 - v35;
      v105[41] = v19 + v17 + v42 - (v18 + v15);
      v105[42] = v18 + v15 - v17 - v101 + v19;
      v105[43] = v31 + v44 - v19;
      v105[44] = v38 + v46 - v18;
      v105[45] = v45 + v15 - v36;
      v105[46] = v17 + v18 + v48 - (v19 + v15);
      v105[47] = v19 + v18 + v47 - (v17 + v15);
      v49 = v17 + v15 + v19;
      v105[48] = v87 + v102;
      v105[49] = v18 + v101 - v49;
      v105[50] = v17 + v15 + v100 - (v19 + v18);
      v105[51] = v19 + v15 + v103 - (v17 + v18);
      v50 = v19 + v18 + v15;
      v105[52] = v18 + v15 + v98 - (v19 + v17);
      v105[53] = v31 + v19 + v99;
      v51 = v18 + v15 + v17;
      v105[54] = v96 - v51 + v19;
      v105[55] = v17 + v97 - v50;
      v105[56] = v31 + v19 + v94;
      v105[57] = v18 + v15 + v93 - (v19 + v17);
      v105[58] = v17 + v91 - v50;
      v105[59] = v95 - v51 + v19;
      v105[60] = v18 + v90 - v49;
      v105[61] = v87 + v92;
      v105[62] = v19 + v15 + v88 - (v17 + v18);
      v105[63] = v17 + v15 + v89 - (v19 + v18);
      v52 = v4;
      v4 = v104;
      v53 = (v74 + 16 * v6);
LABEL_9:
      v54 = 0;
      v55 = (v105 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v56 = (v104 + 8 + 4 * v7);
      v57 = (v52 + 4 * (v7 >> 1));
      do
      {
        v59 = *v55++;
        v58 = v59;
        v61 = *(v56 - 2);
        v60 = *(v56 - 1);
        v62 = v61 <= v60;
        if (v61 <= v60)
        {
          v61 = *(v56 - 1);
        }

        v63 = v61 + v58;
        if (__OFADD__(v61, v58))
        {
          v63 = ((v61 + v58) >> 31) ^ 0x80000000;
        }

        *v57 = v63;
        v64 = __OFSUB__(v61, v58);
        v65 = v61 - v58;
        if (v64)
        {
          v65 = (v65 >> 31) ^ 0x80000000;
        }

        v57[128] = v65;
        v54 = (4 * v54) | (2 * v62);
        v66 = *v56;
        if (*v56 <= v56[1])
        {
          v66 = v56[1];
          ++v54;
        }

        v67 = v66 - v58;
        if (__OFSUB__(v66, v58))
        {
          v67 = ((v66 - v58) >> 31) ^ 0x80000000;
        }

        v57[1] = v67;
        v64 = __OFADD__(v66, v58);
        v68 = v66 + v58;
        if (v64)
        {
          v68 = (v68 >> 31) ^ 0x80000000;
        }

        v57[129] = v68;
        if ((~v7 & 0x3C) == 0)
        {
          *v53++ = v54;
          v69 = v7 >= 0xFC;
          v7 += 4;
          if (v69)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v56 += 4;
        v57 += 2;
        v69 = v7 >= 0xFC;
        v7 += 4;
      }

      while (!v69);
      if (v54)
      {
        *v53 = v54;
      }

LABEL_7:
      v5 += 9;
      ++v6;
      v3 = v52;
    }

    while (v6 != v73);
    v3 = v52;
    v71 = a1;
  }

  else
  {
    v71 = a1;
  }

  result = 0;
  *(v71 + 64) = v3;
  *(v71 + 72) = v4;
  return result;
}

uint64_t sub_100175D90(uint64_t a1, uint64_t a2, int *a3)
{
  v65 = *(a1 + 40);
  if (!v65)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v64 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v74 = v4;
      v78 = v3;
      v79 = v5;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11 + v10;
      v72 = v9 + v11;
      v14 = a3[6];
      v13 = a3[7];
      v16 = a3[4];
      v15 = a3[5];
      v17 = a3[8];
      v76 = v13 + v14 + v15;
      v77 = v12 + v16 + v17;
      v73 = v11 - v9;
      v69 = v11 - v9 + v10;
      v75 = v13 + v15 + v17;
      v18 = v14 + v16;
      v19 = v10 - (v9 + v11);
      v20 = v13 + v14 + v16;
      v68 = v9 - v11;
      v80[0] = v77 + v76;
      v80[1] = v14 + v16 + v69 - v75;
      v21 = v9 - v11 + v10;
      v22 = v15 + v16;
      v23 = v15 + v16 + v14;
      v80[2] = v17 + v15 + v19 - v20;
      v80[3] = v13 + v21 - (v17 + v23);
      v24 = v8 - v7;
      v25 = v7 - v8;
      v70 = v24 - v11;
      v71 = v17 + v23;
      v26 = v24 - v11 - v10;
      v27 = v13 + v15 + v16;
      v28 = v13 + v14 - v16 + v15;
      v66 = v23;
      v67 = v25 - v11;
      v29 = v25 - v11 - v10;
      v80[4] = v14 + v26 - (v27 + v17);
      v80[5] = v28 + v29 + v17;
      v30 = v25 + v11;
      v31 = v24 + v11;
      v32 = v25 + v11 - v10;
      v33 = v13 + v16;
      v80[6] = v13 + v16 + v32 - (v17 + v14 + v15);
      v80[7] = v15 + v16 + v24 + v11 - v10 - (v13 + v14) + v17;
      v34 = v27;
      v80[8] = v17 + v14 + v32 - v27;
      v80[9] = v28 + v24 + v11 - v10 - v17;
      v35 = v17 + v13 + v16;
      v36 = v13 + v14 + v17;
      v80[10] = v35 + v26 - (v14 + v15);
      v80[11] = v22 + v29 - v36;
      v80[12] = v20 + v15 + v19 - v17;
      v80[13] = v18 + v21 - (v13 + v15) + v17;
      v80[14] = v15 + v12 - (v20 + v17);
      v80[15] = v17 + v13 + v69 - v66;
      v37 = v68 - v10;
      v80[16] = v33 + v68 - v10 - (v17 + v14 + v15);
      v80[17] = v22 - (v14 + v13) - v12 + v17;
      v38 = v73 - v10;
      v39 = v72 - v10;
      v80[18] = v14 + v73 - v10 - (v27 + v17);
      v80[19] = v28 + v72 - v10 + v17;
      v40 = v31 + v10;
      v41 = v30 + v10;
      v80[20] = v17 + v15 + v31 + v10 - v20;
      v80[21] = v13 + v30 + v10 - v71;
      v42 = v67 + v10;
      v43 = v70 + v10;
      v80[22] = v20 + v15 + v42 + v17;
      v80[23] = v18 + v43 - v75;
      v80[24] = v15 + v42 - (v20 + v17);
      v80[25] = v17 + v13 + v43 - v66;
      v80[26] = v20 + v15 + v40 - v17;
      v80[27] = v18 + v41 - (v13 + v15) + v17;
      v4 = v78;
      v80[28] = v35 + v38 - (v14 + v15);
      v80[29] = v22 + v39 - v36;
      v80[30] = v17 + v14 + v37 - v34;
      v80[31] = v76 - v77;
      v44 = (v65 + 8 * v79);
LABEL_9:
      v45 = 0;
      v46 = (v80 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v47 = (v78 + 8 + 4 * v6);
      v48 = (v74 + 256 + 4 * (v6 >> 1));
      do
      {
        v50 = *v46++;
        v49 = v50;
        v51 = *(v47 - 2);
        v52 = *(v47 - 1);
        v53 = v51 <= v52;
        if (v51 <= v52)
        {
          v51 = *(v47 - 1);
        }

        v54 = v51 + v49;
        if (__OFADD__(v51, v49))
        {
          v54 = ((v51 + v49) >> 31) ^ 0x80000000;
        }

        *(v48 - 64) = v54;
        v55 = __OFSUB__(v51, v49);
        v56 = v51 - v49;
        if (v55)
        {
          v56 = (v56 >> 31) ^ 0x80000000;
        }

        *v48 = v56;
        v45 = (4 * v45) | (2 * v53);
        v57 = *v47;
        if (*v47 <= v47[1])
        {
          v57 = v47[1];
          ++v45;
        }

        v58 = v57 - v49;
        if (__OFSUB__(v57, v49))
        {
          v58 = ((v57 - v49) >> 31) ^ 0x80000000;
        }

        *(v48 - 63) = v58;
        v55 = __OFADD__(v57, v49);
        v59 = v57 + v49;
        if (v55)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        v48[1] = v59;
        if ((~v6 & 0x3C) == 0)
        {
          *v44++ = v45;
          v60 = v6 >= 0x7C;
          v6 += 4;
          if (v60)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v47 += 4;
        v48 += 2;
        v60 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v60);
      if (v45)
      {
        *v44 = v45;
      }

LABEL_7:
      a3 += 9;
      v5 = v79 + 1;
      v3 = v74;
    }

    while (v79 + 1 != v64);
    v3 = v74;
    v62 = a1;
  }

  else
  {
    v62 = a1;
  }

  result = 0;
  *(v62 + 64) = v3;
  *(v62 + 72) = v4;
  return result;
}

uint64_t sub_100176210(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v82 = *(a1 + 40);
  if (!v82)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v81 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v99 = v4;
      v100 = v3;
      v101 = v6;
      v102 = a3;
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 + *a3;
      v12 = a3[2];
      v11 = a3[3];
      v13 = v10 + v12 + v11;
      v15 = a3[4];
      v14 = a3[5];
      v16 = v13 + v15 + v14;
      v18 = a3[6];
      v17 = a3[7];
      v19 = v12 - v10 + v11;
      v20 = v19 - v15 + v14;
      v21 = v10 + v12 - v11;
      v22 = v14 + v15;
      v103[0] = v16 + v18 + v17;
      v103[1] = v20 - v18 - v17;
      v23 = v21 - (v14 + v15);
      v24 = v12 - v10 - v11;
      v98 = v24 + v15 - v14;
      v103[2] = v23 + v18 - v17;
      v103[3] = v98 - v18 + v17;
      v25 = v11 - (v10 + v12);
      v92 = v25 - v15 + v14;
      v26 = v10 - v12;
      v27 = v26 + v11;
      v91 = v14 + v15 + v26 + v11;
      v103[4] = v92 - v18 - v17;
      v103[5] = v91 + v18 + v17;
      v89 = v15 - v14 - v13;
      v28 = v26 - v11;
      v88 = v26 - v11 - (v14 + v15);
      v103[6] = v89 - v18 + v17;
      v103[7] = v88 + v18 - v17;
      v29 = v9 - v8;
      v30 = v8 - v9;
      v31 = v8 - v9 - v12;
      v32 = v31 - v11;
      v33 = v29 - v12 - v11;
      v96 = v14 + v15 + v33;
      v97 = v31 - v11 - v15 + v14;
      v103[8] = v96 + v18 + v17;
      v103[9] = v97 - v18 - v17;
      v34 = v29 - v12 + v11;
      v35 = v31 + v11;
      v94 = v34 - (v14 + v15);
      v95 = v35 + v15 - v14;
      v103[10] = v94 + v18 - v17;
      v103[11] = v95 - v18 + v17;
      v36 = v30 + v12;
      v37 = v29 + v12;
      v38 = v36 - v11;
      v86 = v36 - v11 - v15 + v14;
      v39 = v37 - v11;
      v85 = v14 + v15 + v37 - v11;
      v103[12] = v86 - v18 - v17;
      v103[13] = v85 + v18 + v17;
      v40 = v36 + v11;
      v41 = v37 + v11;
      v84 = v40 + v15 - v14;
      v83 = v41 - (v14 + v15);
      v103[14] = v84 - v18 + v17;
      v103[15] = v83 + v18 - v17;
      v42 = v33 - (v14 + v15);
      v43 = v32 + v15 - v14;
      v103[16] = v42 - v18 + v17;
      v103[17] = v43 + v18 - v17;
      v44 = v14 + v15 + v34;
      v45 = v35 - v15 + v14;
      v103[18] = v44 - v18 - v17;
      v103[19] = v45 + v18 + v17;
      v46 = v38 + v15 - v14;
      v47 = v39 - (v14 + v15);
      v103[20] = v46 + v18 - v17;
      v103[21] = v47 - v18 + v17;
      v48 = v40 - v15 + v14;
      v49 = v14 + v15 + v41;
      v103[22] = v48 + v18 + v17;
      v103[23] = v49 - v18 - v17;
      v50 = v13 - (v14 + v15);
      v51 = v19 + v15 - v14;
      v93 = v50 - v18;
      v90 = v51 + v18;
      v103[24] = v50 - v18 + v17;
      v103[25] = v51 + v18 - v17;
      v52 = v14 + v15 + v21;
      v53 = v24 - v15 + v14;
      v87 = v52 - v18;
      v103[26] = v52 - v18 - v17;
      v103[27] = v53 + v18 + v17;
      v54 = v25 + v15 - v14;
      v55 = v27 - (v14 + v15);
      v103[28] = v54 + v18 - v17;
      v103[29] = v55 - v18 + v17;
      v56 = v14 - (v13 + v15);
      v57 = v22 + v28;
      v103[30] = v56 + v18 + v17;
      v103[31] = v57 - v18 - v17;
      v103[32] = v46 - v18 - v17;
      v103[33] = v47 + v18 + v17;
      v103[34] = v48 - v18 + v17;
      v103[35] = v49 + v18 - v17;
      v103[36] = v42 + v18 + v17;
      v103[37] = v43 - v18 - v17;
      v103[38] = v44 + v18 - v17;
      v103[39] = v45 - v18 + v17;
      v103[40] = v54 - v18 - v17;
      v103[41] = v55 + v18 + v17;
      v103[42] = v56 - v18 + v17;
      v103[43] = v57 + v18 - v17;
      v58 = v50 + v18;
      v59 = v51 - v18;
      v103[44] = v58 + v17;
      v103[45] = v59 - v17;
      v60 = v52 + v18;
      v103[46] = v60 - v17;
      v103[47] = v53 - v18 + v17;
      v103[48] = v92 + v18 - v17;
      v103[49] = v91 - v18 + v17;
      v103[50] = v89 + v18 + v17;
      v103[51] = v88 - v18 - v17;
      v103[52] = v16 - v18 + v17;
      v103[53] = v20 + v18 - v17;
      v103[54] = v23 - v18 - v17;
      v103[55] = v98 + v18 + v17;
      v103[56] = v86 + v18 - v17;
      v103[57] = v85 - v18 + v17;
      v103[58] = v84 + v18 + v17;
      v103[59] = v83 - v18 - v17;
      v103[60] = v96 - v18 + v17;
      v103[61] = v97 + v18 - v17;
      v103[62] = v94 - v18 - v17;
      v103[63] = v95 + v18 + v17;
      v103[64] = v88 - v18 + v17;
      v103[65] = v89 + v18 - v17;
      v103[66] = v91 - v18 - v17;
      v103[67] = v92 + v18 + v17;
      v103[68] = v98 + v18 - v17;
      v103[69] = v23 - v18 + v17;
      v103[70] = v20 + v18 + v17;
      v103[71] = v16 - v18 - v17;
      v103[72] = v83 - v18 + v17;
      v103[73] = v84 + v18 - v17;
      v103[74] = v85 - v18 - v17;
      v103[75] = v86 + v18 + v17;
      v103[76] = v95 + v18 - v17;
      v103[77] = v94 - v18 + v17;
      v103[78] = v97 + v18 + v17;
      v103[79] = v96 - v18 - v17;
      v103[80] = v49 + v18 + v17;
      v103[81] = v48 - v18 - v17;
      v103[82] = v47 + v18 - v17;
      v103[83] = v46 - v18 + v17;
      LODWORD(v104) = v45 - v18 - v17;
      DWORD1(v104) = v44 + v18 + v17;
      DWORD2(v104) = v43 - v18 + v17;
      HIDWORD(v104) = v42 + v18 - v17;
      LODWORD(v105) = v57 + v18 + v17;
      DWORD1(v105) = v56 - v18 - v17;
      DWORD2(v105) = v55 + v18 - v17;
      HIDWORD(v105) = v54 - v18 + v17;
      LODWORD(v106) = v53 - v18 - v17;
      DWORD1(v106) = v60 + v17;
      DWORD2(v106) = v59 + v17;
      HIDWORD(v106) = v58 - v17;
      LODWORD(v107) = v45 + v18 - v17;
      DWORD1(v107) = v44 - v18 + v17;
      DWORD2(v107) = v43 + v18 + v17;
      HIDWORD(v107) = v42 - v18 - v17;
      LODWORD(v108) = v49 - v18 + v17;
      DWORD1(v108) = v48 + v18 - v17;
      DWORD2(v108) = v47 - v18 - v17;
      HIDWORD(v108) = v46 + v18 + v17;
      LODWORD(v109) = v53 + v18 - v17;
      DWORD1(v109) = v87 + v17;
      DWORD2(v109) = v90 + v17;
      HIDWORD(v109) = v93 - v17;
      LODWORD(v110) = v57 - v18 + v17;
      DWORD1(v110) = v56 + v18 - v17;
      DWORD2(v110) = v55 - v18 - v17;
      HIDWORD(v110) = v54 + v18 + v17;
      LODWORD(v111) = v98 - v18 - v17;
      DWORD1(v111) = v23 + v18 + v17;
      DWORD2(v111) = v20 - v18 + v17;
      HIDWORD(v111) = v16 + v18 - v17;
      LODWORD(v112) = v88 + v18 + v17;
      DWORD1(v112) = v89 - v18 - v17;
      DWORD2(v112) = v91 + v18 - v17;
      HIDWORD(v112) = v92 - v18 + v17;
      LODWORD(v113) = v95 - v18 - v17;
      DWORD1(v113) = v94 + v18 + v17;
      DWORD2(v113) = v97 - v18 + v17;
      HIDWORD(v113) = v96 + v18 - v17;
      LODWORD(v114) = v83 + v18 + v17;
      DWORD1(v114) = v84 - v18 - v17;
      v4 = v100;
      DWORD2(v114) = v85 + v18 - v17;
      HIDWORD(v114) = v86 - v18 + v17;
      v61 = (v82 + 32 * v101);
LABEL_9:
      v62 = 0;
      v63 = (v103 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v64 = (v100 + 8 + 4 * v7);
      v65 = (v99 + 4 * (v7 >> 1));
      do
      {
        v67 = *v63++;
        v66 = v67;
        v69 = *(v64 - 2);
        v68 = *(v64 - 1);
        v70 = v69 <= v68;
        if (v69 <= v68)
        {
          v69 = *(v64 - 1);
        }

        v71 = v69 + v66;
        if (__OFADD__(v69, v66))
        {
          v71 = ((v69 + v66) >> 31) ^ 0x80000000;
        }

        *v65 = v71;
        v72 = __OFSUB__(v69, v66);
        v73 = v69 - v66;
        if (v72)
        {
          v73 = (v73 >> 31) ^ 0x80000000;
        }

        v65[256] = v73;
        v62 = (4 * v62) | (2 * v70);
        v74 = *v64;
        if (*v64 <= v64[1])
        {
          v74 = v64[1];
          ++v62;
        }

        v75 = v74 - v66;
        if (__OFSUB__(v74, v66))
        {
          v75 = ((v74 - v66) >> 31) ^ 0x80000000;
        }

        v65[1] = v75;
        v72 = __OFADD__(v74, v66);
        v76 = v74 + v66;
        if (v72)
        {
          v76 = (v76 >> 31) ^ 0x80000000;
        }

        v65[257] = v76;
        if ((~v7 & 0x3C) == 0)
        {
          *v61++ = v62;
          v77 = v7 >= 0x1FC;
          v7 += 4;
          if (v77)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v64 += 4;
        v65 += 2;
        v77 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v77);
      if (v62)
      {
        *v61 = v62;
      }

LABEL_7:
      a3 = v102 + 8;
      v6 = v101 + 1;
      v3 = v99;
    }

    while (v101 + 1 != v81);
    v3 = v99;
    v79 = a1;
  }

  else
  {
    v79 = a1;
  }

  result = 0;
  *(v79 + 64) = v3;
  *(v79 + 72) = v4;
  return result;
}

uint64_t sub_100176BC4(uint64_t a1, uint64_t a2, int *a3)
{
  v77 = *(a1 + 40);
  if (!v77)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v76 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v97 = v3;
      v98 = v4;
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = v7 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11;
      v13 = v9 + v11 + v10;
      v14 = a3[4];
      v15 = a3[5];
      v93 = v13 + v14;
      v80 = v13 + v14 + v15;
      v17 = a3[6];
      v16 = a3[7];
      v18 = *a3 - v7 - v11;
      v79 = v18 + v10;
      v95 = v18 + v10 - v14;
      v19 = v9 - v11;
      v20 = v9 - v11 - v10;
      v96 = v20 - v14;
      v99[0] = v16 + v17 + v80;
      v99[1] = v17 + v15 + v95 - v16;
      v21 = v8 - v7 + v11;
      v22 = v21 - v10;
      v92 = v21 - v10 + v14;
      v99[2] = v20 - v14 - (v17 + v15) + v16;
      v99[3] = v92 - (v17 + v15 + v16);
      v23 = v11 - v9;
      v78 = v23 - v10;
      v94 = v23 - v10 + v14;
      v24 = v7 - v8;
      v25 = v24 - v11;
      v26 = v24 - v11 - v10;
      v91 = v26 - v14;
      v27 = v16 + v17 - v15;
      v99[4] = v17 + v94 - (v16 + v15);
      v99[5] = v27 + v26 - v14;
      v28 = v24 + v11;
      v29 = v10 - v12;
      v90 = v10 - v12 - v14;
      v30 = v28 + v10;
      v89 = v28 + v10 + v14;
      v99[6] = v90 + v15 - (v16 + v17);
      v99[7] = v16 + v15 + v89 - v17;
      v31 = v28 - v10;
      v87 = v28 - v10 - v14;
      v86 = v14 - v13;
      v99[8] = v27 + v14 - v13;
      v99[9] = v17 + v87 - (v16 + v15);
      v32 = v23 + v10;
      v88 = v23 + v10 - v14;
      v33 = v25 + v10;
      v34 = v25 + v10 + v14;
      v99[10] = v16 + v15 + v88 - v17;
      v99[11] = v34 + v15 - (v16 + v17);
      v35 = v19 + v10;
      v84 = v34;
      v85 = v19 + v10 + v14;
      v36 = v21 + v10;
      v83 = v36 - v14;
      v37 = v16 + v17 + v15;
      v99[12] = v17 + v15 + v85 - v16;
      v99[13] = v37 + v36 - v14;
      v38 = v12 - v10;
      v39 = v18 - v10;
      v81 = v18 - v10 + v14;
      v82 = v12 - v10 - v14;
      v99[14] = v82 - (v17 + v15 + v16);
      v99[15] = v81 - (v17 + v15) + v16;
      v40 = v22 - v14;
      v41 = v20 + v14;
      v99[16] = v22 - v14 - (v17 + v15 + v16);
      v99[17] = v41 - (v17 + v15) + v16;
      v42 = v79 + v14;
      v43 = v13 - v14;
      v99[18] = v17 + v15 + v79 + v14 - v16;
      v99[19] = v37 + v13 - v14;
      v44 = v30 - v14;
      v45 = v29 + v14;
      v99[20] = v16 + v15 + v30 - v14 - v17;
      v99[21] = v45 + v15 - (v16 + v17);
      v46 = v26 + v14;
      v47 = v78 - v14;
      v99[22] = v27 + v46;
      v99[23] = v17 + v78 - v14 - (v16 + v15);
      v48 = v33 - v14;
      v49 = v33 - v14 + v15 - (v16 + v17);
      v50 = v32 + v14;
      v99[24] = v49;
      v99[25] = v16 + v15 + v32 + v14 - v17;
      v51 = v31 + v14;
      v99[26] = v17 + v31 + v14 - (v16 + v15);
      v99[27] = v16 + v17 - v80;
      v52 = v39 - v14;
      v53 = v38 + v14;
      v99[28] = v52 - (v17 + v15) + v16;
      v99[29] = v53 - (v17 + v15 + v16);
      v54 = v36 + v14;
      v55 = v35 - v14;
      v99[30] = v37 + v54;
      v99[31] = v17 + v15 + v55 - v16;
      v99[32] = v41 + v15 - (v16 + v17);
      v99[33] = v16 + v15 + v40 - v17;
      v99[34] = v17 + v43 - (v16 + v15);
      v99[35] = v27 + v42;
      v99[36] = v45 - (v17 + v15) + v16;
      v99[37] = v44 - (v17 + v15 + v16);
      v99[38] = v37 + v47;
      v99[39] = v17 + v15 + v46 - v16;
      v99[40] = v50 - (v17 + v15 + v16);
      v99[41] = v48 - (v17 + v15) + v16;
      v99[42] = v17 + v15 - v16 - v93;
      v99[43] = v37 + v51;
      v99[44] = v16 + v15 + v53 - v17;
      v99[45] = v52 + v15 - (v16 + v17);
      v99[46] = v27 + v55;
      v99[47] = v17 + v54 - (v16 + v15);
      v99[48] = v27 + v95;
      v99[49] = v17 + v93 - (v16 + v15);
      v99[50] = v16 + v15 + v92 - v17;
      v99[51] = v96 + v15 - (v16 + v17);
      v99[52] = v17 + v15 + v91 - v16;
      v99[53] = v37 + v94;
      v99[54] = v89 - (v17 + v15 + v16);
      v99[55] = v90 - (v17 + v15) + v16;
      v99[56] = v37 + v87;
      v99[57] = v17 + v15 + v86 - v16;
      v99[58] = v84 - (v17 + v15) + v16;
      v99[59] = v88 - (v17 + v15 + v16);
      v99[60] = v17 + v83 - (v16 + v15);
      v99[61] = v27 + v85;
      v99[62] = v81 + v15 - (v16 + v17);
      v99[63] = v16 + v15 + v82 - v17;
      v4 = v97;
      v56 = (v77 + 16 * v5);
LABEL_9:
      v57 = 0;
      v58 = (v99 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v59 = (v97 + 8 + 4 * v6);
      v60 = (v98 + 4 * (v6 >> 1));
      do
      {
        v62 = *v58++;
        v61 = v62;
        v64 = *(v59 - 2);
        v63 = *(v59 - 1);
        v65 = v64 <= v63;
        if (v64 <= v63)
        {
          v64 = *(v59 - 1);
        }

        v66 = v64 + v61;
        if (__OFADD__(v64, v61))
        {
          v66 = ((v64 + v61) >> 31) ^ 0x80000000;
        }

        *v60 = v66;
        v67 = __OFSUB__(v64, v61);
        v68 = v64 - v61;
        if (v67)
        {
          v68 = (v68 >> 31) ^ 0x80000000;
        }

        v60[128] = v68;
        v57 = (4 * v57) | (2 * v65);
        v69 = *v59;
        if (*v59 <= v59[1])
        {
          v69 = v59[1];
          ++v57;
        }

        v70 = v69 - v61;
        if (__OFSUB__(v69, v61))
        {
          v70 = ((v69 - v61) >> 31) ^ 0x80000000;
        }

        v60[1] = v70;
        v67 = __OFADD__(v69, v61);
        v71 = v69 + v61;
        if (v67)
        {
          v71 = (v71 >> 31) ^ 0x80000000;
        }

        v60[129] = v71;
        if ((~v6 & 0x3C) == 0)
        {
          *v56++ = v57;
          v72 = v6 >= 0xFC;
          v6 += 4;
          if (v72)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v59 += 4;
        v60 += 2;
        v72 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v72);
      if (v57)
      {
        *v56 = v57;
      }

LABEL_7:
      a3 += 8;
      ++v5;
      v3 = v98;
    }

    while (v5 != v76);
    v3 = v98;
    v74 = a1;
  }

  else
  {
    v74 = a1;
  }

  result = 0;
  *(v74 + 64) = v3;
  *(v74 + 72) = v4;
  return result;
}

uint64_t sub_1001771A4(uint64_t a1, uint64_t a2, int *a3)
{
  v51 = *(a1 + 40);
  if (!v51)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v50 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v54 = v4;
      v56 = v3;
      v57 = v5;
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = v7 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11 + v10;
      v14 = a3[4];
      v13 = a3[5];
      v55 = v12 + v14;
      v15 = a3[6];
      v16 = a3[7];
      v52 = v11 - v9 + v10;
      v17 = v15 + v14;
      v18 = v10 - (v9 + v11);
      v19 = v14 + v16 + v15;
      v58[0] = v16 + v15 + v13 + v12 + v14;
      v58[1] = v15 + v14 + v52 - (v16 + v13);
      v20 = v13 + v14;
      v21 = v13 + v14 + v15;
      v58[2] = v13 + v18 - v19;
      v58[3] = v9 - v11 + v10 - v21 + v16;
      v22 = v7 - v8;
      v53 = v7 - v8 - v11;
      v23 = v16 + v13 + v14;
      v24 = v8 - v7;
      v25 = v24 - v11;
      v26 = v16 + v15 - v14 + v13;
      v58[4] = v15 + v53 - v10 - v23;
      v58[5] = v26 + v24 - v11 - v10;
      v27 = v24 + v11;
      v28 = v16 + v14;
      v58[6] = v28 + v24 + v11 - v10 - (v15 + v13);
      v58[7] = v20 + v22 + v11 - v10 - (v16 + v15);
      v58[8] = v15 + v24 + v11 - v10 - v23;
      v58[9] = v26 + v22 + v11 - v10;
      v58[10] = v28 + v53 - v10 - (v15 + v13);
      v58[11] = v20 + v24 - v11 - v10 - (v16 + v15);
      v58[12] = v19 + v13 + v18;
      v58[13] = v17 + v9 - v11 + v10 - (v16 + v13);
      v58[14] = v13 + v12 - v19;
      v58[15] = v52 - v21 + v16;
      v58[16] = v28 + v9 - v11 - v10 - (v15 + v13);
      v58[17] = v20 - (v15 + v16) - v12;
      v58[18] = v15 + v11 - v9 - v10 - v23;
      v58[19] = v26 + v9 + v11 - v10;
      v29 = v22 + v11 + v10;
      v58[20] = v13 + v29 - v19;
      v58[21] = v27 + v10 - v21 + v16;
      v58[22] = v19 + v13 + v25 + v10;
      v58[23] = v17 + v53 + v10 - (v16 + v13);
      v58[24] = v13 + v25 + v10 - v19;
      v58[25] = v53 + v10 - v21 + v16;
      v58[26] = v19 + v13 + v29;
      v58[27] = v17 + v27 + v10 - (v16 + v13);
      v58[28] = v28 + v11 - v9 - v10 - (v15 + v13);
      v58[29] = v20 + v9 + v11 - v10 - (v16 + v15);
      v58[30] = v15 + v9 - v11 - v10 - v23;
      v58[31] = v16 + v15 - v55 + v13;
      v4 = v56;
      v30 = (v51 + 8 * v57);
LABEL_9:
      v31 = 0;
      v32 = (v58 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v33 = (v56 + 8 + 4 * v6);
      v34 = (v54 + 256 + 4 * (v6 >> 1));
      do
      {
        v36 = *v32++;
        v35 = v36;
        v37 = *(v33 - 2);
        v38 = *(v33 - 1);
        v39 = v37 <= v38;
        if (v37 <= v38)
        {
          v37 = *(v33 - 1);
        }

        v40 = v37 + v35;
        if (__OFADD__(v37, v35))
        {
          v40 = ((v37 + v35) >> 31) ^ 0x80000000;
        }

        *(v34 - 64) = v40;
        v41 = __OFSUB__(v37, v35);
        v42 = v37 - v35;
        if (v41)
        {
          v42 = (v42 >> 31) ^ 0x80000000;
        }

        *v34 = v42;
        v43 = *v33;
        if (*v33 > v33[1])
        {
          v31 = (4 * v31) | (2 * v39);
        }

        else
        {
          v43 = v33[1];
          v31 = ((4 * v31) | (2 * v39)) + 1;
        }

        v44 = v43 - v35;
        if (__OFSUB__(v43, v35))
        {
          v44 = ((v43 - v35) >> 31) ^ 0x80000000;
        }

        *(v34 - 63) = v44;
        v41 = __OFADD__(v43, v35);
        v45 = v43 + v35;
        if (v41)
        {
          v45 = (v45 >> 31) ^ 0x80000000;
        }

        v34[1] = v45;
        if ((~v6 & 0x3C) == 0)
        {
          *v30++ = v31;
          v46 = v6 >= 0x7C;
          v6 += 4;
          if (v46)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v33 += 4;
        v34 += 2;
        v46 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v46);
      if (v31)
      {
        *v30 = v31;
      }

LABEL_7:
      a3 += 8;
      v5 = v57 + 1;
      v3 = v54;
    }

    while (v57 + 1 != v50);
    v3 = v54;
    v48 = a1;
  }

  else
  {
    v48 = a1;
  }

  result = 0;
  *(v48 + 64) = v3;
  *(v48 + 72) = v4;
  return result;
}

uint64_t sub_100177590(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v68 = *(a1 + 40);
  if (!v68)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v162 = 0u;
  v67 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v81 = v4;
      v82 = v3;
      v83 = v6;
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v11 = a3[2];
      v10 = a3[3];
      v13 = a3[4];
      v12 = a3[5];
      v84 = a3;
      v14 = a3[6];
      v15 = v9 + *a3 + v11;
      v16 = v15 + v10;
      v17 = v11 - (v9 + *a3);
      v75 = v15 - v10;
      v18 = v12 + v13;
      v19 = v10 - v15;
      v20 = v9 + *a3 - v11;
      v79 = v12 + v13 + v20 + v10;
      v80 = v10 - v15 - v13 + v12;
      v126 = v80 + v14;
      v127 = v79 - v14;
      v77 = v20 - v10 - (v12 + v13);
      v78 = v13 - v12 - (v15 + v10);
      v128 = v78 + v14;
      v129 = v77 - v14;
      v76 = v15 - v10 - (v12 + v13);
      v21 = v17 - v10;
      v71 = v17 - v10 + v13 - v12;
      v132 = v76 - v14;
      v133 = v71 + v14;
      v142 = v77 - v14;
      v22 = v15 + v10 + v13;
      v143 = v78 + v14;
      v23 = v17 + v10;
      v144 = v79 - v14;
      v24 = v17 + v10 - v13 + v12;
      v145 = v80 + v14;
      v25 = v9 - v8 - v11;
      v146 = v71 + v14;
      v26 = v8 - v9 - v11;
      v27 = v8 - v9 + v11;
      v147 = v76 - v14;
      v28 = v9 - v8 + v11;
      v29 = v28 + v10;
      v130 = v22 + v12 - v14;
      v131 = v24 + v14;
      v148 = v24 + v14;
      v74 = v28 + v10 - (v12 + v13);
      v149 = v130;
      v137 = v74 - v14;
      v150 = v74 - v14;
      v30 = v25 - v10;
      v31 = v25 + v10;
      v32 = v26 - v10;
      v33 = v26 + v10;
      v34 = v28 - v10;
      v35 = v27 - v10;
      v36 = v27 + v10;
      v73 = v36 + v13 - v12;
      v136 = v73 + v14;
      v151 = v73 + v14;
      v72 = v12 + v13 + v34;
      v135 = v72 - v14;
      v152 = v72 - v14;
      v70 = v35 - v13 + v12;
      v134 = v70 + v14;
      v153 = v70 + v14;
      v69 = v33 + v13 - v12;
      v141 = v69 + v14;
      v154 = v69 + v14;
      v37 = v31 - (v12 + v13);
      v140 = v37 - v14;
      v155 = v37 - v14;
      v38 = v32 - v13;
      v39 = v33 - v13;
      v40 = v36 - v13;
      v41 = v23 + v13;
      v42 = v21 - v13;
      v139 = v32 - v13 + v12 + v14;
      v156 = v139;
      v138 = v12 + v13 + v30 - v14;
      v157 = v138;
      v113 = v12 + v13 + v29 + v14;
      v158 = v113;
      v112 = v40 + v12 - v14;
      v159 = v112;
      v43 = v32 + v13 - v12;
      v44 = v35 + v13 - v12;
      v45 = v19 + v13 - v12;
      v111 = v34 - v18 + v14;
      v160 = v111;
      v110 = v44 - v14;
      v161 = v44 - v14;
      v46 = v18 + v31;
      v117 = v39 + v12 - v14;
      LODWORD(v162) = v117;
      v116 = v46 + v14;
      DWORD1(v162) = v46 + v14;
      v115 = v43 - v14;
      DWORD2(v162) = v43 - v14;
      v114 = v30 - v18 + v14;
      HIDWORD(v162) = v114;
      v121 = v18 + v20 - v10 + v14;
      LODWORD(v163) = v121;
      v120 = v12 - v22 - v14;
      DWORD1(v163) = v120;
      v119 = v20 + v10 - v18 + v14;
      DWORD2(v163) = v119;
      v118 = v45 - v14;
      HIDWORD(v163) = v45 - v14;
      v125 = v42 + v12 - v14;
      LODWORD(v164) = v125;
      v124 = v18 + v75 + v14;
      DWORD1(v164) = v124;
      v123 = v41 - v12 - v14;
      DWORD2(v164) = v123;
      v122 = v16 - v18 + v14;
      HIDWORD(v164) = v122;
      v96 = v46 - v14;
      v97 = v39 + v12 + v14;
      LODWORD(v165) = v97;
      DWORD1(v165) = v46 - v14;
      v94 = v30 - v18 - v14;
      v95 = v43 + v14;
      DWORD2(v165) = v43 + v14;
      HIDWORD(v165) = v94;
      v100 = v40 + v12 + v14;
      v101 = v18 + v29 - v14;
      *&v166 = __PAIR64__(v100, v101);
      v98 = v44 + v14;
      v99 = v34 - v18 - v14;
      DWORD2(v166) = v99;
      HIDWORD(v166) = v44 + v14;
      v104 = v18 + v75 - v14;
      v105 = v42 + v12 + v14;
      *&v167 = __PAIR64__(v104, v105);
      v102 = v16 - v18 - v14;
      v103 = v41 - v12 + v14;
      *(&v167 + 1) = __PAIR64__(v102, v103);
      v108 = v12 - v22 + v14;
      v109 = v18 + v20 - v10 - v14;
      *&v168 = __PAIR64__(v108, v109);
      v106 = v45 + v14;
      v107 = v20 + v10 - v18 - v14;
      DWORD2(v168) = v107;
      HIDWORD(v168) = v45 + v14;
      v85[2] = v76 + v14;
      v85[3] = v71 - v14;
      LODWORD(v169) = v71 - v14;
      DWORD1(v169) = v76 + v14;
      v85[0] = v22 + v12 + v14;
      v85[1] = v24 - v14;
      DWORD2(v169) = v24 - v14;
      HIDWORD(v169) = v85[0];
      v85[6] = v78 - v14;
      v85[7] = v77 + v14;
      LODWORD(v170) = v77 + v14;
      DWORD1(v170) = v78 - v14;
      DWORD2(v170) = v79 + v14;
      v85[4] = v80 - v14;
      v85[5] = v79 + v14;
      HIDWORD(v170) = v80 - v14;
      v88 = v37 + v14;
      v89 = v69 - v14;
      LODWORD(v171) = v69 - v14;
      DWORD1(v171) = v37 + v14;
      v87 = v38 + v12 - v14;
      DWORD2(v171) = v87;
      v86 = v18 + v30 + v14;
      HIDWORD(v171) = v86;
      v92 = v73 - v14;
      v93 = v74 + v14;
      LODWORD(v172) = v74 + v14;
      DWORD1(v172) = v73 - v14;
      v4 = v82;
      v90 = v70 - v14;
      v91 = v72 + v14;
      DWORD2(v172) = v72 + v14;
      v47 = (v68 + 32 * v83);
      HIDWORD(v172) = v70 - v14;
LABEL_9:
      v48 = 0;
      v49 = (v85 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v50 = (v82 + 8 + 4 * v7);
      v51 = (v81 + 4 * (v7 >> 1));
      do
      {
        v53 = *v49++;
        v52 = v53;
        v55 = *(v50 - 2);
        v54 = *(v50 - 1);
        v56 = v55 <= v54;
        if (v55 <= v54)
        {
          v55 = *(v50 - 1);
        }

        v57 = v55 + v52;
        if (__OFADD__(v55, v52))
        {
          v57 = ((v55 + v52) >> 31) ^ 0x80000000;
        }

        *v51 = v57;
        v58 = __OFSUB__(v55, v52);
        v59 = v55 - v52;
        if (v58)
        {
          v59 = (v59 >> 31) ^ 0x80000000;
        }

        v51[256] = v59;
        v48 = (4 * v48) | (2 * v56);
        v60 = *v50;
        if (*v50 <= v50[1])
        {
          v60 = v50[1];
          ++v48;
        }

        v61 = v60 - v52;
        if (__OFSUB__(v60, v52))
        {
          v61 = ((v60 - v52) >> 31) ^ 0x80000000;
        }

        v51[1] = v61;
        v58 = __OFADD__(v60, v52);
        v62 = v60 + v52;
        if (v58)
        {
          v62 = (v62 >> 31) ^ 0x80000000;
        }

        v51[257] = v62;
        if ((~v7 & 0x3C) == 0)
        {
          *v47++ = v48;
          v63 = v7 >= 0x1FC;
          v7 += 4;
          if (v63)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v50 += 4;
        v51 += 2;
        v63 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v63);
      if (v48)
      {
        *v47 = v48;
      }

LABEL_7:
      a3 = v84 + 7;
      v6 = v83 + 1;
      v3 = v81;
    }

    while (v83 + 1 != v67);
    v3 = v81;
    v65 = a1;
  }

  else
  {
    v65 = a1;
  }

  result = 0;
  *(v65 + 64) = v3;
  *(v65 + 72) = v4;
  return result;
}

uint64_t sub_100177C40(uint64_t a1, uint64_t a2, int *a3)
{
  v73 = *(a1 + 40);
  if (!v73)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v72 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v84 = v3;
      v85 = v4;
      v6 = 0;
      v8 = *a3;
      v7 = a3[1];
      v9 = v7 + *a3;
      v10 = a3[2];
      v11 = a3[3];
      v12 = v9 + v10;
      v13 = v9 + v10 + v11;
      v15 = a3[4];
      v14 = a3[5];
      v16 = v13 + v15 + v14;
      v17 = a3[6];
      v18 = *a3 - v7 - v10;
      v19 = v18 + v11;
      v82 = v18 + v11 - v15;
      v20 = v9 - v10;
      v21 = v9 - v10 - v11;
      v83 = v21 - v15;
      v22 = *a3 - v7 + v10;
      v86[0] = v16 + v17;
      v86[1] = v17 + v14 + v82;
      v23 = v22 - v11;
      v80 = v22 - v11 + v15;
      v24 = v10 - v9;
      v86[2] = v21 - v15 - (v17 + v14);
      v86[3] = v80 - (v17 + v14);
      v25 = v10 - v9 - v11;
      v81 = v25 + v15;
      v26 = v7 - v8;
      v27 = v26 - v10;
      v28 = v26 - v10 - v11;
      v79 = v28 - v15;
      v86[4] = v25 + v15 - v14 + v17;
      v86[5] = v28 - v15 - v14 + v17;
      v29 = v11 - v12;
      v78 = v11 - v12 - v15;
      v30 = v26 + v10;
      v31 = v30 + v11;
      v86[6] = v78 + v14 - v17;
      v86[7] = v30 + v11 + v15 + v14 - v17;
      v77 = v30 + v11 + v15;
      v32 = v30 - v11;
      v86[8] = v15 - v13 - v14 + v17;
      v86[9] = v32 - v15 - v14 + v17;
      v33 = v24 + v11;
      v75 = v32 - v15;
      v76 = v24 + v11 - v15;
      v34 = v27 + v11;
      v74 = v27 + v11 + v15;
      v86[10] = v76 + v14 - v17;
      v86[11] = v74 + v14 - v17;
      v35 = v20 + v11;
      v36 = v22 + v11;
      v37 = v35 + v15;
      v38 = v36 - v15;
      v86[12] = v17 + v14 + v35 + v15;
      v86[13] = v17 + v14 + v36 - v15;
      v39 = v12 - v11;
      v40 = v18 - v11;
      v41 = v12 - v11 - v15;
      v86[14] = v41 - (v17 + v14);
      v86[15] = v40 + v15 - (v17 + v14);
      v42 = v21 + v15;
      v86[16] = v23 - v15 - (v17 + v14);
      v86[17] = v42 - (v17 + v14);
      v43 = v19 + v15;
      v86[18] = v17 + v14 + v43;
      v86[19] = v17 + v14 + v13 - v15;
      v44 = v29 + v15;
      v86[20] = v31 - v15 + v14 - v17;
      v86[21] = v44 + v14 - v17;
      v45 = v28 + v15;
      v46 = v25 - v15;
      v86[22] = v45 - v14 + v17;
      v86[23] = v46 - v14 + v17;
      v47 = v33 + v15;
      v86[24] = v34 - v15 + v14 - v17;
      v86[25] = v47 + v14 - v17;
      v48 = v32 + v15;
      v86[26] = v48 - v14 + v17;
      v86[27] = v17 - v16;
      v49 = v39 + v15;
      v86[28] = v40 - v15 - (v17 + v14);
      v86[29] = v49 - (v17 + v14);
      v50 = v36 + v15;
      v51 = v35 - v15;
      v86[30] = v17 + v14 + v50;
      v86[31] = v17 + v14 + v51;
      v86[32] = v42 + v14 - v17;
      v86[33] = v23 - v15 + v14 - v17;
      v86[34] = v13 - v15 - v14 + v17;
      v86[35] = v43 - v14 + v17;
      v86[36] = v44 - (v17 + v14);
      v86[37] = v31 - v15 - (v17 + v14);
      v86[38] = v17 + v14 + v46;
      v86[39] = v17 + v14 + v45;
      v86[40] = v47 - (v17 + v14);
      v86[41] = v34 - v15 - (v17 + v14);
      v86[42] = v17 + v14 - (v13 + v15);
      v86[43] = v17 + v14 + v48;
      v86[44] = v49 + v14 - v17;
      v86[45] = v40 - v15 + v14 - v17;
      v86[46] = v51 - v14 + v17;
      v86[47] = v50 - v14 + v17;
      v86[48] = v82 - v14 + v17;
      v86[49] = v13 + v15 - v14 + v17;
      v86[50] = v80 + v14 - v17;
      v86[51] = v83 + v14 - v17;
      v86[52] = v17 + v14 + v79;
      v86[53] = v17 + v14 + v81;
      v86[54] = v77 - (v17 + v14);
      v86[55] = v78 - (v17 + v14);
      v86[56] = v17 + v14 + v75;
      v86[57] = v17 + v14 + v15 - v13;
      v86[58] = v74 - (v17 + v14);
      v86[59] = v76 - (v17 + v14);
      v86[60] = v38 - v14 + v17;
      v86[61] = v37 - v14 + v17;
      v86[62] = v40 + v15 + v14 - v17;
      v86[63] = v41 + v14 - v17;
      v4 = v84;
      v52 = (v73 + 16 * v5);
LABEL_9:
      v53 = 0;
      v54 = (v86 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v55 = (v84 + 8 + 4 * v6);
      v56 = (v85 + 4 * (v6 >> 1));
      do
      {
        v58 = *v54++;
        v57 = v58;
        v60 = *(v55 - 2);
        v59 = *(v55 - 1);
        v61 = v60 <= v59;
        if (v60 <= v59)
        {
          v60 = *(v55 - 1);
        }

        v62 = v60 + v57;
        if (__OFADD__(v60, v57))
        {
          v62 = ((v60 + v57) >> 31) ^ 0x80000000;
        }

        *v56 = v62;
        v63 = __OFSUB__(v60, v57);
        v64 = v60 - v57;
        if (v63)
        {
          v64 = (v64 >> 31) ^ 0x80000000;
        }

        v56[128] = v64;
        v53 = (4 * v53) | (2 * v61);
        v65 = *v55;
        if (*v55 <= v55[1])
        {
          v65 = v55[1];
          ++v53;
        }

        v66 = v65 - v57;
        if (__OFSUB__(v65, v57))
        {
          v66 = ((v65 - v57) >> 31) ^ 0x80000000;
        }

        v56[1] = v66;
        v63 = __OFADD__(v65, v57);
        v67 = v65 + v57;
        if (v63)
        {
          v67 = (v67 >> 31) ^ 0x80000000;
        }

        v56[129] = v67;
        if ((~v6 & 0x3C) == 0)
        {
          *v52++ = v53;
          v68 = v6 >= 0xFC;
          v6 += 4;
          if (v68)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v55 += 4;
        v56 += 2;
        v68 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v68);
      if (v53)
      {
        *v52 = v53;
      }

LABEL_7:
      a3 += 7;
      ++v5;
      v3 = v85;
    }

    while (v5 != v72);
    v3 = v85;
    v70 = a1;
  }

  else
  {
    v70 = a1;
  }

  result = 0;
  *(v70 + 64) = v3;
  *(v70 + 72) = v4;
  return result;
}

uint64_t sub_1001781A0(uint64_t a1, uint64_t a2, int *a3)
{
  v56 = *(a1 + 40);
  if (!v56)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v55 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v54 = a1;
    v5 = 0;
    do
    {
      v57 = v3;
      v58 = v4;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = v8 + *a3;
      v11 = a3[2];
      v10 = a3[3];
      v12 = v9 + v11 + v10;
      v13 = a3[4];
      v14 = a3[5];
      v15 = a3[6];
      v16 = v11 - v9 + v10;
      v17 = v10 - (v9 + v11);
      v59[0] = v15 + v14 + v12 + v13;
      v59[1] = v15 + v13 + v16 - v14;
      v18 = v14 + v13 + v15;
      v19 = v8 - v7;
      v20 = v8 - v7 - v11;
      v59[2] = v14 + v17 - (v15 + v13);
      v59[3] = v9 - v11 + v10 - v18;
      v21 = v7 - v8;
      v22 = v21 - v11;
      v23 = v15 + v14 - v13;
      v59[4] = v20 - v10 - (v14 + v13) + v15;
      v59[5] = v23 + v21 - v11 - v10;
      v24 = v21 + v11;
      v25 = v19 + v11;
      v59[6] = v24 - v10 + v13 - (v15 + v14);
      v59[7] = v14 + v13 + v25 - v10 - v15;
      v59[8] = v24 - v10 - (v14 + v13) + v15;
      v59[9] = v23 + v25 - v10;
      v59[10] = v20 - v10 + v13 - (v15 + v14);
      v59[11] = v14 + v13 + v22 - v10 - v15;
      v26 = v15 + v14 + v13;
      v59[12] = v26 + v17;
      v59[13] = v15 + v13 + v9 - v11 + v10 - v14;
      v59[14] = v14 + v12 - (v15 + v13);
      v59[15] = v16 - v18;
      v27 = v9 - v11 - v10;
      v59[16] = v27 + v13 - (v15 + v14);
      v59[17] = v14 + v13 - v15 - v12;
      v28 = v11 - v9 - v10;
      v29 = v9 + v11 - v10;
      v59[18] = v28 - (v14 + v13) + v15;
      v59[19] = v23 + v29;
      v30 = v25 + v10;
      v31 = v14 + v25 + v10 - (v15 + v13);
      v32 = v24 + v10;
      v59[20] = v31;
      v59[21] = v24 + v10 - v18;
      v33 = v22 + v10;
      v34 = v26 + v22 + v10;
      v35 = v20 + v10;
      v59[22] = v34;
      v59[23] = v15 + v13 + v35 - v14;
      v59[24] = v14 + v33 - (v15 + v13);
      v59[25] = v35 - v18;
      v59[26] = v26 + v30;
      v59[27] = v15 + v13 + v32 - v14;
      v59[28] = v28 + v13 - (v15 + v14);
      v59[29] = v14 + v13 + v29 - v15;
      v59[30] = v27 - (v14 + v13) + v15;
      v59[31] = v15 + v14 - (v12 + v13);
      v4 = v57;
      v36 = (v56 + 8 * v5);
LABEL_9:
      v37 = 0;
      v38 = (v59 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v39 = (v57 + 8 + 4 * v6);
      v40 = (v58 + 256 + 4 * (v6 >> 1));
      do
      {
        v42 = *v38++;
        v41 = v42;
        v43 = *(v39 - 2);
        v44 = *(v39 - 1);
        v45 = v43 <= v44;
        if (v43 <= v44)
        {
          v43 = *(v39 - 1);
        }

        v46 = v43 + v41;
        if (__OFADD__(v43, v41))
        {
          v46 = ((v43 + v41) >> 31) ^ 0x80000000;
        }

        *(v40 - 64) = v46;
        v47 = __OFSUB__(v43, v41);
        v48 = v43 - v41;
        if (v47)
        {
          v48 = (v48 >> 31) ^ 0x80000000;
        }

        *v40 = v48;
        v49 = *v39;
        if (*v39 > v39[1])
        {
          v37 = (4 * v37) | (2 * v45);
        }

        else
        {
          v49 = v39[1];
          v37 = ((4 * v37) | (2 * v45)) + 1;
        }

        v50 = v49 - v41;
        if (__OFSUB__(v49, v41))
        {
          v50 = ((v49 - v41) >> 31) ^ 0x80000000;
        }

        *(v40 - 63) = v50;
        v47 = __OFADD__(v49, v41);
        v51 = v49 + v41;
        if (v47)
        {
          v51 = (v51 >> 31) ^ 0x80000000;
        }

        v40[1] = v51;
        if ((~v6 & 0x3C) == 0)
        {
          *v36++ = v37;
          v52 = v6 >= 0x7C;
          v6 += 4;
          if (v52)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v39 += 4;
        v40 += 2;
        v52 = v6 >= 0x7C;
        v6 += 4;
      }

      while (!v52);
      if (v37)
      {
        *v36 = v37;
      }

LABEL_7:
      a3 += 7;
      ++v5;
      v3 = v58;
    }

    while (v5 != v55);
    v3 = v58;
    a1 = v54;
  }

  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  return 0;
}

uint64_t sub_10017852C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v49 = *(a1 + 40);
  if (!v49)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v5 = *(a1 + 18);
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  v48 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v50 = v4;
      v51 = v3;
      v7 = 0;
      v8 = a3[1];
      v10 = a3[2];
      v9 = a3[3];
      v11 = a3[4];
      v12 = a3[5];
      v13 = v8 + *a3;
      v14 = v13 + v10;
      v15 = v8 - *a3;
      v16 = v15 - v10;
      v17 = *a3 - v8;
      v18 = v17 - v10;
      v66 = v15 - v10 - v9 - (v12 + v11);
      v67 = v17 - v10 - v9 + v11 - v12;
      v68 = v12 + v11 + v15 - v10 + v9;
      v69 = v17 - v10 + v9 - v11 + v12;
      v19 = v10 - v13 + v9;
      v88 = v68;
      v89 = v69;
      *&v133 = __PAIR64__(v68, v69);
      v20 = v10 - v13 - v9;
      *&v136 = __PAIR64__(v68, v69);
      v21 = v13 - v10 + v9;
      v86 = v66;
      v87 = v67;
      v22 = v13 - v10 - v9;
      *(&v133 + 1) = __PAIR64__(v66, v67);
      v23 = v17 + v10;
      v24 = v15 + v10;
      v25 = v23 - v9;
      *(&v136 + 1) = __PAIR64__(v66, v67);
      v26 = v24 - v9;
      v27 = v23 + v9;
      v72 = v27 - v11 + v12;
      v73 = v12 + v11 + v24 + v9;
      v84 = v72;
      v85 = v73;
      v129 = v73;
      *&v137 = __PAIR64__(v72, v73);
      v130 = v72;
      v71 = v24 - v9 - (v12 + v11);
      v82 = v25 + v11 - v12;
      v83 = v71;
      v131 = v71;
      *(&v137 + 1) = __PAIR64__(v82, v71);
      v70 = v82;
      v132 = v82;
      v76 = v12 + v11 + v14 - v9;
      v77 = v20 - v11 + v12;
      v97 = v77;
      *&v135 = __PAIR64__(v76, v77);
      *&v138 = __PAIR64__(v76, v77);
      v96 = v76;
      v74 = v14 + v9 - (v12 + v11);
      v75 = v19 + v11 - v12;
      v95 = v75;
      *(&v135 + 1) = __PAIR64__(v74, v75);
      *(&v138 + 1) = __PAIR64__(v74, v75);
      v93 = v12 + v11 + v22;
      v94 = v74;
      v80 = v12 - (v14 + v9 + v11);
      v81 = v93;
      *&v134 = __PAIR64__(v80, v93);
      *&v139 = __PAIR64__(v80, v93);
      v91 = v21 - (v12 + v11);
      v92 = v80;
      v78 = v9 - v14 + v11 - v12;
      v79 = v91;
      *(&v134 + 1) = __PAIR64__(v78, v91);
      *(&v139 + 1) = __PAIR64__(v78, v91);
      v90 = v78;
      v53 = v14 - v9 - (v12 + v11);
      v54 = v20 + v11 - v12;
      v105 = v54;
      v117 = v54;
      *&v140 = __PAIR64__(v53, v54);
      v104 = v53;
      v118 = v53;
      v103 = v19 - v11 + v12;
      v119 = v103;
      DWORD2(v140) = v103;
      v52[0] = v14 + v9 + v11 + v12;
      v52[1] = v103;
      v102 = v52[0];
      v120 = v52[0];
      HIDWORD(v140) = v52[0];
      v57 = v11 - v12 - (v14 + v9);
      v58 = v22 - (v12 + v11);
      v101 = v58;
      v113 = v58;
      *&v141 = __PAIR64__(v57, v58);
      v100 = v57;
      v114 = v57;
      v55 = v9 - v14 - v11 + v12;
      v56 = v12 + v11 + v21;
      v99 = v56;
      v115 = v56;
      *(&v141 + 1) = __PAIR64__(v55, v56);
      v98 = v55;
      v116 = v55;
      v61 = v16 + v9 - (v12 + v11);
      v62 = v18 + v9 + v11 - v12;
      v112 = v62;
      v125 = v62;
      *&v142 = __PAIR64__(v61, v62);
      v111 = v61;
      v126 = v61;
      v59 = v12 + v11 + v16 - v9;
      v60 = v18 - v9 - v11 + v12;
      v110 = v60;
      v127 = v60;
      *(&v142 + 1) = __PAIR64__(v59, v60);
      v109 = v59;
      v128 = v59;
      v64 = v27 + v11 - v12;
      v65 = v24 + v9 - (v12 + v11);
      v108 = v65;
      v121 = v65;
      *&v143 = __PAIR64__(v64, v65);
      v4 = v51;
      v107 = v64;
      v122 = v64;
      LODWORD(v63) = v25 - v11 + v12;
      HIDWORD(v63) = v12 + v11 + v26;
      v106 = v63;
      v123 = HIDWORD(v63);
      *(&v143 + 1) = __PAIR64__(v63, HIDWORD(v63));
      v28 = (v49 + 32 * v6);
      v124 = v63;
LABEL_9:
      v29 = 0;
      v30 = (v52 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v31 = (v51 + 8 + 4 * v7);
      v32 = (v50 + 4 * (v7 >> 1));
      do
      {
        v34 = *v30++;
        v33 = v34;
        v36 = *(v31 - 2);
        v35 = *(v31 - 1);
        v37 = v36 <= v35;
        if (v36 <= v35)
        {
          v36 = *(v31 - 1);
        }

        v38 = v36 + v33;
        if (__OFADD__(v36, v33))
        {
          v38 = ((v36 + v33) >> 31) ^ 0x80000000;
        }

        *v32 = v38;
        v39 = __OFSUB__(v36, v33);
        v40 = v36 - v33;
        if (v39)
        {
          v40 = (v40 >> 31) ^ 0x80000000;
        }

        v32[256] = v40;
        v29 = (4 * v29) | (2 * v37);
        v41 = *v31;
        if (*v31 <= v31[1])
        {
          v41 = v31[1];
          ++v29;
        }

        v42 = v41 - v33;
        if (__OFSUB__(v41, v33))
        {
          v42 = ((v41 - v33) >> 31) ^ 0x80000000;
        }

        v32[1] = v42;
        v39 = __OFADD__(v41, v33);
        v43 = v41 + v33;
        if (v39)
        {
          v43 = (v43 >> 31) ^ 0x80000000;
        }

        v32[257] = v43;
        if ((~v7 & 0x3C) == 0)
        {
          *v28++ = v29;
          v44 = v7 >= 0x1FC;
          v7 += 4;
          if (v44)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v31 += 4;
        v32 += 2;
        v44 = v7 >= 0x1FC;
        v7 += 4;
      }

      while (!v44);
      if (v29)
      {
        *v28 = v29;
      }

LABEL_7:
      a3 += 6;
      ++v6;
      v3 = v50;
    }

    while (v6 != v48);
    v3 = v50;
    v46 = a1;
  }

  else
  {
    v46 = a1;
  }

  result = 0;
  *(v46 + 64) = v3;
  *(v46 + 72) = v4;
  return result;
}

uint64_t sub_100178A30(uint64_t a1, uint64_t a2, int *a3)
{
  v74 = *(a1 + 40);
  if (!v74)
  {
    return 4;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v73 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v5 = 0;
    do
    {
      v81 = v4;
      v82 = v3;
      v6 = 0;
      v7 = *a3;
      v8 = a3[1];
      v9 = a3[2];
      v10 = a3[3];
      v12 = a3[4];
      v11 = a3[5];
      v13 = v8 + *a3;
      v14 = *a3 - v8;
      v15 = v14 - v9;
      v16 = v14 - v9 + v10;
      v80 = v16 - v12;
      v83[1] = v16 - v12 + v11;
      v17 = v13 - v9;
      v18 = v13 - v9 - v10;
      v19 = v14 + v9;
      v20 = v14 + v9 - v10;
      v79 = v20 + v12;
      v83[2] = v18 - v12 - v11;
      v83[3] = v20 + v12 - v11;
      v21 = v9 - v13;
      v22 = v9 - v13 - v10;
      v23 = v8 - v7;
      v24 = v23 - v9;
      v25 = v23 - v9 - v10;
      v77 = v25 - v12;
      v83[4] = v22 + v12 - v11;
      v83[5] = v25 - v12 - v11;
      v26 = v13 + v9;
      v27 = v10 - (v13 + v9);
      v78 = v27 - v12;
      v28 = v23 + v9;
      v29 = v28 + v10;
      v76 = v28 + v10 + v12;
      v83[6] = v27 - v12 + v11;
      v83[7] = v76 + v11;
      v30 = v13 + v9 + v10;
      v31 = v28 - v10;
      v32 = v28 - v10 - v12;
      v83[8] = v12 - v30 - v11;
      v83[9] = v32 - v11;
      v33 = v21 + v10;
      v75 = v33 - v12;
      v34 = v24 + v10;
      v35 = v34 + v12;
      v83[10] = v33 - v12 + v11;
      v83[11] = v34 + v12 + v11;
      v36 = v17 + v10;
      v37 = v19 + v10;
      v38 = v17 + v10 + v12;
      v39 = v19 + v10 - v12;
      v83[12] = v38 + v11;
      v83[13] = v39 + v11;
      v40 = v26 - v10;
      v41 = v15 - v10;
      v42 = v40 - v12;
      v83[14] = v40 - v12 - v11;
      v83[15] = v41 + v12 - v11;
      v43 = v20 - v12;
      v83[16] = v43 - v11;
      v83[17] = v18 + v12 - v11;
      v44 = v16 + v12;
      v83[18] = v44 + v11;
      v83[19] = v30 - v12 + v11;
      v45 = v29 - v12;
      v46 = v27 + v12;
      v83[20] = v45 + v11;
      v83[21] = v46 + v11;
      v47 = v25 + v12;
      v83[22] = v47 - v11;
      v83[23] = v22 - v12 - v11;
      v48 = v34 - v12;
      v49 = v33 + v12;
      v83[24] = v48 + v11;
      v83[25] = v49 + v11;
      v83[0] = v30 + v12 + v11;
      v50 = v31 + v12;
      v83[26] = v50 - v11;
      v83[27] = -v83[0];
      v51 = v40 + v12;
      v83[28] = v41 - v12 - v11;
      v83[29] = v51 - v11;
      v52 = v37 + v12;
      v83[30] = v52 + v11;
      v83[31] = v36 - v12 + v11;
      v83[32] = v18 + v12 + v11;
      v83[33] = v43 + v11;
      v83[34] = v30 - v12 - v11;
      v83[35] = v44 - v11;
      v83[36] = v46 - v11;
      v83[37] = v45 - v11;
      v83[38] = v22 - v12 + v11;
      v83[39] = v47 + v11;
      v83[40] = v49 - v11;
      v83[41] = v48 - v11;
      v83[42] = v11 - (v30 + v12);
      v83[43] = v50 + v11;
      v83[44] = v51 + v11;
      v83[45] = v41 - v12 + v11;
      v83[46] = v36 - v12 - v11;
      v83[47] = v52 - v11;
      v83[48] = v80 - v11;
      v83[49] = v30 + v12 - v11;
      v83[50] = v79 + v11;
      v83[51] = v18 - v12 + v11;
      v83[52] = v77 + v11;
      v83[53] = v22 + v12 + v11;
      v83[54] = v76 - v11;
      v83[55] = v78 - v11;
      v83[56] = v32 + v11;
      v83[57] = v12 - v30 + v11;
      v83[58] = v35 - v11;
      v83[59] = v75 - v11;
      v83[60] = v39 - v11;
      v83[61] = v38 - v11;
      v4 = v82;
      v83[62] = v41 + v12 + v11;
      v53 = (v74 + 16 * v5);
      v83[63] = v42 + v11;
LABEL_9:
      v54 = 0;
      v55 = (v83 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
      v56 = (v82 + 8 + 4 * v6);
      v57 = (v81 + 4 * (v6 >> 1));
      do
      {
        v59 = *v55++;
        v58 = v59;
        v61 = *(v56 - 2);
        v60 = *(v56 - 1);
        v62 = v61 <= v60;
        if (v61 <= v60)
        {
          v61 = *(v56 - 1);
        }

        v63 = v61 + v58;
        if (__OFADD__(v61, v58))
        {
          v63 = ((v61 + v58) >> 31) ^ 0x80000000;
        }

        *v57 = v63;
        v64 = __OFSUB__(v61, v58);
        v65 = v61 - v58;
        if (v64)
        {
          v65 = (v65 >> 31) ^ 0x80000000;
        }

        v57[128] = v65;
        v66 = v56[1];
        if (*v56 <= v66)
        {
          v54 = ((4 * v54) | (2 * v62)) + 1;
        }

        else
        {
          v66 = *v56;
          v54 = (4 * v54) | (2 * v62);
        }

        v67 = v66 - v58;
        if (__OFSUB__(v66, v58))
        {
          v67 = ((v66 - v58) >> 31) ^ 0x80000000;
        }

        v57[1] = v67;
        v64 = __OFADD__(v66, v58);
        v68 = v66 + v58;
        if (v64)
        {
          v68 = (v68 >> 31) ^ 0x80000000;
        }

        v57[129] = v68;
        if ((~v6 & 0x3C) == 0)
        {
          *v53++ = v54;
          v69 = v6 >= 0xFC;
          v6 += 4;
          if (v69)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v56 += 4;
        v57 += 2;
        v69 = v6 >= 0xFC;
        v6 += 4;
      }

      while (!v69);
      if (v54)
      {
        *v53 = v54;
      }

LABEL_7:
      a3 += 6;
      ++v5;
      v3 = v81;
    }

    while (v5 != v73);
    v3 = v81;
    v71 = a1;
  }

  else
  {
    v71 = a1;
  }

  result = 0;
  *(v71 + 64) = v3;
  *(v71 + 72) = v4;
  return result;
}

uint64_t sub_100178EF4(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 4;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 4;
  }

  v5 = *(a1 + 72);
  if (!v5)
  {
    return 4;
  }

  if (!a3)
  {
    return 3;
  }

  v58 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v6 = 0;
    do
    {
      v7 = 0;
      v8 = *a3;
      v9 = a3[1];
      v10 = v9 + *a3;
      v12 = a3[2];
      v11 = a3[3];
      v13 = v10 + v12;
      v14 = v10 + v12 + v11;
      v15 = a3[4];
      v16 = a3[5];
      v17 = v14 + v15;
      v18 = v12 - v10;
      v19 = v12 - v10 + v11;
      v20 = v11 - (v10 + v12);
      v21 = v10 - v12;
      v22 = v10 - v12 + v11;
      v59[0] = v14 + v15 + v16;
      v59[1] = v19 + v15 - v16;
      v23 = v9 - v8;
      v24 = v9 - v8 - v12;
      v59[2] = v20 - v15 + v16;
      v59[3] = v22 - (v16 + v15);
      v25 = v8 - v9;
      v26 = v25 - v12;
      v27 = v25 - v12 - v11;
      v59[4] = v24 - v11 - (v16 + v15);
      v59[5] = v27 - v15 + v16;
      v28 = v25 + v12;
      v29 = v25 + v12 - v11;
      v30 = v23 + v12;
      v59[6] = v29 + v15 - v16;
      v59[7] = v16 + v15 + v30 - v11;
      v59[8] = v29 - (v16 + v15);
      v59[9] = v30 - v11 - v15 + v16;
      v59[10] = v24 - v11 + v15 - v16;
      v59[11] = v16 + v15 + v27;
      v59[12] = v16 + v15 + v20;
      v59[13] = v22 + v15 - v16;
      v59[14] = v14 - v15 + v16;
      v59[15] = v19 - (v16 + v15);
      v31 = v21 - v11;
      v59[16] = v21 - v11 + v15 - v16;
      v59[17] = v16 + v15 - v14;
      v32 = v18 - v11;
      v33 = v13 - v11;
      v59[18] = v18 - v11 - (v16 + v15);
      v59[19] = v33 - v15 + v16;
      v34 = v30 + v11;
      v35 = v28 + v11;
      v59[20] = v30 + v11 - v15 + v16;
      v59[21] = v35 - (v16 + v15);
      v36 = v26 + v11;
      v37 = v24 + v11;
      v59[22] = v16 + v15 + v36;
      v59[23] = v37 + v15 - v16;
      v38 = v5;
      v59[24] = v36 - v15 + v16;
      v59[25] = v37 - (v16 + v15);
      v59[26] = v16 + v15 + v34;
      v59[27] = v35 + v15 - v16;
      v59[28] = v32 + v15 - v16;
      v59[29] = v16 + v15 + v33;
      v59[30] = v31 - (v16 + v15);
      v59[31] = v16 - v17;
      v5 = v4;
      v39 = v4 + 8;
      v40 = (v3 + 8 * v6);
LABEL_9:
      v41 = 0;
      v42 = (v59 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
      v43 = (v39 + 4 * v7);
      v44 = (v38 + 256 + 4 * (v7 >> 1));
      do
      {
        v46 = *v42++;
        v45 = v46;
        v48 = *(v43 - 2);
        v47 = *(v43 - 1);
        v49 = v48 <= v47;
        if (v48 <= v47)
        {
          v48 = *(v43 - 1);
        }

        v50 = v48 + v45;
        if (__OFADD__(v48, v45))
        {
          v50 = ((v48 + v45) >> 31) ^ 0x80000000;
        }

        *(v44 - 64) = v50;
        v51 = __OFSUB__(v48, v45);
        v52 = v48 - v45;
        if (v51)
        {
          v52 = (v52 >> 31) ^ 0x80000000;
        }

        *v44 = v52;
        v53 = v43[1];
        if (*v43 <= v53)
        {
          v41 = ((4 * v41) | (2 * v49)) + 1;
        }

        else
        {
          v53 = *v43;
          v41 = (4 * v41) | (2 * v49);
        }

        v54 = v53 - v45;
        if (__OFSUB__(v53, v45))
        {
          v54 = ((v53 - v45) >> 31) ^ 0x80000000;
        }

        *(v44 - 63) = v54;
        v51 = __OFADD__(v53, v45);
        v55 = v53 + v45;
        if (v51)
        {
          v55 = (v55 >> 31) ^ 0x80000000;
        }

        v44[1] = v55;
        if ((~v7 & 0x3C) == 0)
        {
          *v40++ = v41;
          v56 = v7 >= 0x7C;
          v7 += 4;
          if (v56)
          {
            goto LABEL_7;
          }

          goto LABEL_9;
        }

        v43 += 4;
        v44 += 2;
        v56 = v7 >= 0x7C;
        v7 += 4;
      }

      while (!v56);
      if (v41)
      {
        *v40 = v41;
      }

LABEL_7:
      a3 += 6;
      ++v6;
      v4 = v38;
    }

    while (v6 != v58);
    v4 = v38;
  }

  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return 0;
}

uint64_t sub_100179238(int a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  while (a1 > 0x8000 || a1 < -32768 || (a2 - 32769) < 0xFFFEFFFF)
  {
    a1 >>= 1;
    a2 >>= 1;
  }

  if (a1 < 0x4000)
  {
    while (a1 >= -16383 && (a2 + 0x3FFF) <= 0x7FFE)
    {
      v2 = 2 * a1;
      a2 *= 2;
      v3 = a1 < 0x2000;
      a1 *= 2;
      if (!v3)
      {
        goto LABEL_13;
      }
    }
  }

  v2 = a1;
LABEL_13:
  v4 = (5215 * ((v2 * a2 + 0x4000) >> 15) + 0x4000) >> 15;
  v5 = ((a2 * a2) >> 5) + ((a2 * a2) >> 2) + v2 * v2 + 0x4000;
  v6 = v5 >> 15;
  v7 = v5 >> 29;
  if (v7)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    do
    {
      v6 *= 2;
      LOBYTE(v7) = v7 + 1;
    }

    while (v6 < 0x4000);
  }

  v9 = ((0x10000 - (((92521 - ((1928 * v6 + 512) >> 10)) * v6 + 0x4000) >> 15)) * (92521 - ((1928 * v6 + 512) >> 10)) + 0x4000) >> 15;
  return (2 * (((1 << (14 - v7)) + (((0x10000 - (((((0x10000 - ((v9 * v6 + 0x4000) >> 15)) * v9 + 0x4000) >> 15) * v6 + 0x4000) >> 15)) * (((0x10000 - ((v9 * v6 + 0x4000) >> 15)) * v9 + 0x4000) >> 15) + 0x4000) >> 15) * v4) >> (15 - v7)));
}

void sub_100179384(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  if (v10 > 0)
  {
    v11 = 0;
    v12.i64[0] = 0xFF000000FFLL;
    v12.i64[1] = 0xFF000000FFLL;
    v13 = *(a1 + 120);
    v14 = *(a1 + 128);
    while (1)
    {
      v16 = *(a3 + v11);
      v17 = (v16 ^ 0x7F) + 1;
      v18 = *(a4 + v11);
      v19 = (v18 ^ 0x7F) + 1;
      if (v10 < 4)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_15:
        v121 = v10 - v20;
        v122 = &a2->i8[v20];
        v123 = &v14->i8[v20];
        v124 = &v13->i8[v20];
        do
        {
          v126 = *v124++;
          v125 = v126;
          v127 = *v123++;
          v128 = v18 * v127;
          v129 = v19 * v127;
          v131 = *v122++;
          v130 = v131;
          v132 = v131 - v16 * v125;
          LOBYTE(v133) = v132 - v128;
          v134 = (v132 - v128);
          if (v134 >= (v128 - v132))
          {
            v133 = -v134;
          }

          v24 += v133;
          v135 = v130 + v17 * v125;
          LOBYTE(v136) = v135 - v128;
          if ((v135 - v128) >= (v128 - v135))
          {
            v136 = -(v130 + v17 * v125 - v128);
          }

          v23 += v136;
          LOBYTE(v136) = v132 + v129;
          v137 = (v132 + v129);
          if (v137 >= -v137)
          {
            v136 = -v137;
          }

          v22 += v136;
          LOBYTE(v138) = v135 + v129;
          if (v138 >= -v138)
          {
            v138 = -v138;
          }

          v21 += v138;
          --v121;
        }

        while (v121);
        goto LABEL_3;
      }

      if (v10 >= 0x10)
      {
        v140 = vdupq_n_s8(v17);
        v141 = vdupq_n_s8(v16);
        v26 = 0uLL;
        v139 = vdupq_n_s8(v18);
        v27 = 0uLL;
        v8 = vdupq_n_s8(v19);
        v28 = v13;
        v29 = v14;
        v30 = a2;
        v31 = v10 & 0x7FFFFFF0;
        v7 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v6 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        do
        {
          v36 = *v29++;
          v37 = vmulq_s8(v139, v36);
          v38 = vmulq_s8(v8, v36);
          v39 = *v28++;
          v40 = v39;
          v41 = *v30++;
          v42 = vmlsq_s8(v41, v141, v40);
          v43 = vsubq_s8(v42, v37);
          v44 = vqtbl1q_s8(v43, xmmword_1001C8FD0);
          v45 = vqtbl1q_s8(v43, xmmword_1001C8FE0);
          v46 = vqtbl1q_s8(v43, xmmword_1001C8FF0);
          v47 = vqtbl1q_s8(v43, xmmword_1001C9000);
          v48 = vnegq_s32(v47);
          v49 = vnegq_s32(v46);
          v50 = vnegq_s32(v45);
          v51 = vnegq_s32(v44);
          v52 = vbslq_s8(vcgtq_u32(vandq_s8(v51, v12), v44), v44, v51);
          v53 = vbslq_s8(vcgtq_u32(vandq_s8(v50, v12), v45), v45, v50);
          v54 = vbslq_s8(vcgtq_u32(vandq_s8(v49, v12), v46), v46, v49);
          v55 = vbslq_s8(vcgtq_u32(vandq_s8(v48, v12), v47), v47, v48);
          v56 = vmlaq_s8(v41, v140, v40);
          v57 = vsubq_s8(v56, v37);
          v58 = vqtbl1q_s8(v57, xmmword_1001C8FD0);
          v59 = vqtbl1q_s8(v57, xmmword_1001C8FE0);
          v60 = vqtbl1q_s8(v57, xmmword_1001C8FF0);
          v61 = vqtbl1q_s8(v57, xmmword_1001C9000);
          v62 = vnegq_s32(v61);
          v63 = vnegq_s32(v60);
          v64 = vnegq_s32(v59);
          v65 = vnegq_s32(v58);
          v66 = vbslq_s8(vcgtq_u32(vandq_s8(v65, v12), v58), v58, v65);
          v67 = vbslq_s8(vcgtq_u32(vandq_s8(v64, v12), v59), v59, v64);
          v68 = vbslq_s8(vcgtq_u32(vandq_s8(v63, v12), v60), v60, v63);
          v69 = vbslq_s8(vcgtq_u32(vandq_s8(v62, v12), v61), v61, v62);
          v70 = vaddq_s8(v42, v38);
          v71 = vqtbl1q_s8(v70, xmmword_1001C8FD0);
          v72 = vqtbl1q_s8(v70, xmmword_1001C8FE0);
          v73 = vqtbl1q_s8(v70, xmmword_1001C8FF0);
          v74 = vqtbl1q_s8(v70, xmmword_1001C9000);
          v75 = vnegq_s32(v74);
          v76 = vnegq_s32(v73);
          v77 = vnegq_s32(v71);
          v78 = vbslq_s8(vcgtq_u32(vandq_s8(v77, v12), v71), v71, v77);
          v79 = vnegq_s32(v72);
          v80 = vbslq_s8(vcgtq_u32(vandq_s8(v79, v12), v72), v72, v79);
          v81 = vbslq_s8(vcgtq_u32(vandq_s8(v76, v12), v73), v73, v76);
          v82 = vbslq_s8(vcgtq_u32(vandq_s8(v75, v12), v74), v74, v75);
          v83 = vaddq_s8(v56, v38);
          v84 = vqtbl1q_s8(v83, xmmword_1001C8FD0);
          v85 = vqtbl1q_s8(v83, xmmword_1001C8FE0);
          v86 = vqtbl1q_s8(v83, xmmword_1001C8FF0);
          v87 = vqtbl1q_s8(v83, xmmword_1001C9000);
          v88 = vnegq_s32(v84);
          v89 = vbslq_s8(vcgtq_u32(vandq_s8(v88, v12), v84), v84, v88);
          v90 = vnegq_s32(v85);
          v91 = vbslq_s8(vcgtq_u32(vandq_s8(v90, v12), v85), v85, v90);
          v92 = vnegq_s32(v86);
          v93 = vbslq_s8(vcgtq_u32(vandq_s8(v92, v12), v86), v86, v92);
          v94 = vnegq_s32(v87);
          v35 = vaddq_s16((*&vuzp1q_s16(v55, v54) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v35);
          v34 = vaddq_s16((*&vuzp1q_s16(v53, v52) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v34);
          v9 = *&vuzp1q_s16(v69, v68) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          v6 = vaddq_s16(v9, v6);
          v33 = vaddq_s16((*&vuzp1q_s16(v67, v66) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v33);
          v32 = vaddq_s16((*&vuzp1q_s16(v82, v81) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v32);
          v7 = vaddq_s16((*&vuzp1q_s16(v80, v78) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v7);
          v27 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v94, v12), v87), v87, v94), v93) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v27);
          v26 = vaddq_s16((*&vuzp1q_s16(v91, v89) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v26);
          v31 -= 16;
        }

        while (v31);
        v21 = vaddvq_s16(vaddq_s16(v26, v27));
        v22 = vaddvq_s16(vaddq_s16(v7, v32));
        v23 = vaddvq_s16(vaddq_s16(v33, v6));
        v24 = vaddvq_s16(vaddq_s16(v34, v35));
        if ((v10 & 0x7FFFFFF0) == v10)
        {
          goto LABEL_3;
        }

        v25 = v10 & 0x7FFFFFF0;
        v20 = v25;
        if ((v10 & 0xC) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      v95 = v21;
      v96 = v22;
      v97 = v23;
      v98 = v24;
      v99 = vdup_n_s16(v16);
      v100 = v25 - (v10 & 0x7FFFFFFC);
      v101 = (a2->i32 + v25);
      v102 = vdup_n_s16(v17);
      v103 = (v14->i32 + v25);
      v104 = vdup_n_s16(v18);
      v105 = vdup_n_s16(v19);
      v106 = (v13->i32 + v25);
      do
      {
        v107 = *v106++;
        v6.i32[0] = v107;
        v108 = vmovl_u8(*v6.i8).u64[0];
        *v7.i8 = vmul_s16(v102, v108);
        v109 = *v103++;
        v8.i32[0] = v109;
        v110 = vmovl_u8(*v8.i8).u64[0];
        v111 = vmul_s16(v104, v110);
        v112 = vmul_s16(v105, v110);
        v113 = *v101++;
        LODWORD(v9) = v113;
        v114 = vmls_s16(*&vmovl_u8(*&v9), v99, v108);
        v115 = vandq_s8(vmovl_u16(vsub_s16(v114, v111)), v12);
        v116 = vnegq_s32(v115);
        v98 = vadd_s16((*&vmovn_s32(vbslq_s8(vcgtq_u32(vandq_s8(v116, v12), v115), v115, v116)) & 0xFF00FF00FF00FFLL), v98);
        v115.i64[0] = vaddw_u8(v7, *&v9).u64[0];
        v117 = vandq_s8(vmovl_u16(vsub_s16(*v115.i8, v111)), v12);
        v118 = vnegq_s32(v117);
        v97 = vadd_s16((*&vmovn_s32(vbslq_s8(vcgtq_u32(vandq_s8(v118, v12), v117), v117, v118)) & 0xFF00FF00FF00FFLL), v97);
        v119 = vandq_s8(vmovl_u16(vadd_s16(v114, v112)), v12);
        v120 = vnegq_s32(v119);
        v9 = vcgtq_u32(vandq_s8(v120, v12), v119);
        v96 = vadd_s16((*&vmovn_s32(vbslq_s8(v9, v119, v120)) & 0xFF00FF00FF00FFLL), v96);
        v6 = vandq_s8(vmovl_u16(vadd_s16(*v115.i8, v112)), v12);
        v7 = vnegq_s32(v6);
        v8 = vcgtq_u32(vandq_s8(v7, v12), v6);
        *v6.i8 = vmovn_s32(vbslq_s8(v8, v6, v7));
        v6.i32[0] &= 0xFF00FFu;
        v6.i16[2] = v6.u8[4];
        v6.i16[3] = v6.u8[6];
        v95 = vadd_s16(*v6.i8, v95);
        v100 += 4;
      }

      while (v100);
      v21 = vaddv_s16(v95);
      v22 = vaddv_s16(v96);
      v23 = vaddv_s16(v97);
      v24 = vaddv_s16(v98);
      v20 = v10 & 0x7FFFFFFC;
      if (v20 != v10)
      {
        goto LABEL_15;
      }

LABEL_3:
      v15 = &a5[8 * v11];
      *v15 = v24;
      v15[1] = v23;
      v15[2] = v22;
      v15[3] = v21;
      if (++v11 == 112)
      {
        return;
      }
    }
  }

  bzero(a5, 0x380uLL);
}

uint64_t sub_10017992C(unsigned int a1, int a2, unsigned int a3)
{
  v3 = (a1 >> 1) - (a3 >> 1);
  if (a1 >> 1 == a3 >> 1)
  {
    return 0;
  }

  v5 = a3 - a2 + a1 - a2;
  if (v3 >= 0)
  {
    v6 = (a1 >> 1) - (a3 >> 1);
  }

  else
  {
    v6 = (a3 >> 1) - (a1 >> 1);
  }

  if (v5 >= 0)
  {
    v7 = a3 - a2 + a1 - a2;
  }

  else
  {
    v7 = -v5;
  }

  if (v7 < 0x8000)
  {
    v8 = 0;
    if (v7 >> 14)
    {
LABEL_18:
      v11 = v7;
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = v7;
    do
    {
      v7 = v9 >> 1;
      --v8;
      v10 = HIWORD(v9);
      v9 >>= 1;
    }

    while (v10);
    if (v7 >> 14)
    {
      goto LABEL_18;
    }
  }

  do
  {
    v11 = 2 * v7;
    ++v8;
    v12 = v7 >= 0x2000;
    v7 *= 2;
  }

  while (!v12);
LABEL_19:
  v13 = v3 ^ v5;
  v14 = ((0x10000 - (((92521 - ((1928 * v11 + 512) >> 10)) * v11 + 0x4000) >> 15)) * (92521 - ((1928 * v11 + 512) >> 10)) + 0x4000) >> 15;
  v15 = ((0x10000 - ((v14 * v11 + 0x4000) >> 15)) * v14 + 0x4000) >> 15;
  v16 = ((0x10000 - ((v15 * v11 + 0x4000) >> 15)) * v15 + 0x4000) >> 15;
  if (v6 < 0x8000)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = HIWORD(v6);
      v6 >>= 1;
      --v17;
    }

    while (v18);
  }

  v19 = ((1 << (v17 - v8 + 14)) + v6 * v16) >> (v17 - v8 + 15);
  if (v13 >= 0)
  {
    return v19;
  }

  else
  {
    return -v19;
  }
}

void sub_100179A5C(void *a1)
{
  sub_100179A94(a1);

  operator delete();
}

void *sub_100179A94(void *a1)
{
  *a1 = off_10026E260;
  if (a1[32])
  {
    operator delete[]();
  }

  if (a1[37])
  {
    operator delete[]();
  }

  if (a1[7])
  {
    operator delete[]();
  }

  if (a1[31])
  {
    operator delete[]();
  }

  if (a1[30])
  {
    operator delete[]();
  }

  if (a1[21])
  {
    operator delete[]();
  }

  if (a1[26])
  {
    operator delete[]();
  }

  if (a1[28])
  {
    operator delete[]();
  }

  v2 = a1[16];
  if (v2)
  {
    sub_10017BA30(v2);
    operator delete();
  }

  v3 = a1[17];
  if (v3)
  {
    sub_10017BA30(v3);
    operator delete();
  }

  v4 = a1[18];
  if (v4)
  {
    sub_10017BA30(v4);
    operator delete();
  }

  v5 = a1[19];
  if (v5)
  {
    sub_10017BA30(v5);
    operator delete();
  }

  if (a1[13])
  {
    operator delete();
  }

  if (a1[14])
  {
    operator delete();
  }

  a1[9] = off_10026E558;
  if (a1[10])
  {
    operator delete[]();
  }

  return a1;
}

void sub_100179C54(void *a1)
{
  *a1 = off_10026E558;
  if (a1[1])
  {
    operator delete[]();
  }

  operator delete();
}

void *sub_100179CD4(void *result)
{
  *result = off_10026E558;
  if (result[1])
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100179D3C(int32x2_t *a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 0;
  v354 = 0;
  v355 = 0;
  v356 = 0;
  v358 = &v348;
  v359 = 0;
  if ((a3 - 5) < 0xFFFFFFF7 || (a4 - 5) < 0xFFFFFFF7)
  {
    return result;
  }

  v9 = 32 * a4;
  v10 = 32 * a3;
  v347.i32[1] = 32 * a4;
  v347.i32[0] = v10;
  if (!a5)
  {
    v12 = 0;
    v9 += 16 * a1[6].i32[0];
    v10 += 16 * a1[6].i32[1];
    v347 = __PAIR64__(v9, v10);
    v11 = a1[2];
    goto LABEL_12;
  }

  if (!(a4 | a3))
  {
    v12 = a5;
    v11 = vneg_s32(vand_s8(vshl_u32(*(a2 + 40), vdup_n_s32(8 - *(a2 + 48))), 0xFF000000FFLL));
    goto LABEL_12;
  }

  v11 = a1[4];
  v348 = vrev64_s32(v11);
  v12 = a5;
  if (a4 == -1)
  {
    v11 = a1[3];
    v348.i32[1] = v11.i32[0];
    v9 = -32;
    goto LABEL_13;
  }

  if (!a4)
  {
    if (a3 == -1)
    {
      v9 = 0;
      v11 = a1[2];
      v348.i32[1] = v11.i32[0];
      v10 = -32;
      goto LABEL_13;
    }

    if (!a3)
    {
      v10 = 0;
      v9 = 0;
      v348.i32[1] = 0;
      v11 = 0;
LABEL_13:
      v13 = a4;
      v348.i32[0] = v11.i32[1];
      goto LABEL_14;
    }

    v9 = 0;
    v11 = a1[3];
LABEL_12:
    v348.i32[1] = v11.i32[0];
    goto LABEL_13;
  }

  v13 = a4;
LABEL_14:
  result = sub_10017B210(a1, v9, v10, a2, v11.u32[0], v11.u32[1], 1);
  if (!result)
  {
    return result;
  }

  v327 = v12;
  v14 = 0;
  v15 = 0;
  v16 = (a2 + 48);
  v17 = vld1_dup_f32(v16);
  v349 = vadd_s32(vrev64_s32(vshl_s32(*(a2 + 40), vneg_s32(v17))), v347);
  v18 = v349.i32[1] - 16 + ((((v349.i32[1] - 16) & ~((v349.i32[1] - 16) >> 31)) - v349.i32[1] + 143) & 0xFFFFFF80);
  v19 = v349.i8[0] + 112;
  v20 = (v18 >> 4) & 7;
  v21 = 2 * (v18 & 0xF);
  v22 = (v21 ^ 0x1Eu) >> 1;
  v23 = v22 + 1;
  if (v20 == 7)
  {
    v24 = 0;
  }

  else
  {
    v24 = v20 + 1;
  }

  if (v24 == 7)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (v25 == 7)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v22 + 17;
  do
  {
    v28 = 8 * ((v19 + v15) & 0x7F);
    v29 = dword_1001E45F4[v20 & 0xFFFFFC07 | v28];
    v30 = v23;
    v31 = v14;
    v32 = v21 ^ 0x1E;
    do
    {
      *(*&a1[32] + v31) = 16 * ((v29 >> v32) & 3) - 16;
      v32 -= 2;
      ++v31;
      --v30;
    }

    while (v30);
    v33 = dword_1001E45F4[v24 + v28];
    *(*&a1[32] + v23 + 32 * v15) = ((v33 >> 26) & 0x30) - 16;
    v34 = v23 + 32 * v15;
    *(*&a1[32] + v34 + 1) = (HIBYTE(v33) & 0x30) - 16;
    *(*&a1[32] + v34 + 2) = ((v33 >> 22) & 0x30) - 16;
    *(*&a1[32] + v34 + 3) = ((v33 >> 20) & 0x30) - 16;
    *(*&a1[32] + v34 + 4) = ((v33 >> 18) & 0x30) - 16;
    *(*&a1[32] + v34 + 5) = (BYTE2(v33) & 0x30) - 16;
    *(*&a1[32] + v34 + 6) = ((v33 >> 14) & 0x30) - 16;
    *(*&a1[32] + v34 + 7) = ((v33 >> 12) & 0x30) - 16;
    *(*&a1[32] + v34 + 8) = ((v33 >> 10) & 0x30) - 16;
    *(*&a1[32] + v34 + 9) = (BYTE1(v33) & 0x30) - 16;
    *(*&a1[32] + v34 + 10) = ((v33 >> 6) & 0x30) - 16;
    *(*&a1[32] + v34 + 11) = ((v33 >> 4) & 0x30) - 16;
    *(*&a1[32] + v34 + 12) = ((v33 >> 2) & 0x30) - 16;
    *(*&a1[32] + v34 + 13) = (v33 & 0x30) - 16;
    *(*&a1[32] + v34 + 14) = ((4 * v33) & 0x30) - 16;
    *(*&a1[32] + v34 + 15) = 16 * (v33 & 3) - 16;
    v35 = 2 * v27 - 32;
    v36 = v27;
    if (v21)
    {
      v37 = dword_1001E45F4[v25 + v28];
      v38 = 30;
      v36 = v27;
      do
      {
        *(*&a1[32] + v14 + v36++) = 16 * ((v37 >> v38) & 3) - 16;
        v38 -= 2;
      }

      while (v38 >= 2 * v27 - 32);
      v35 = (2 * v36 - 32) & ~((2 * v36 - 32) >> 31);
    }

    if (v35 <= 0x1E)
    {
      v39 = dword_1001E45F4[v26 + v28];
      v40 = v36 + v14;
      for (i = 30; i >= v35; i -= 2)
      {
        *(*&a1[32] + v40++) = 16 * ((v39 >> i) & 3) - 16;
      }
    }

    ++v15;
    v14 += 32;
  }

  while (v15 != 32);
  v325 = a2;
  v328 = v13;
  v326 = a3;
  sub_10016B51C(*&a1[30], 0x30u, 36, 0x30u, *&a1[31]);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v55 = a1[31];
  v54 = a1[32];
  v350 = 0u;
  v351 = 0u;
  v352 = 0;
  v56 = &v54[64];
  v58 = &v350 < &v54[64] && v54 < &v353;
  v60 = &v350 < *&v55 + 1667 && *&v55 + 49 < &v353 || v58;
  v61 = (*&v55 + 97);
  v62 = v54;
  do
  {
    if (v60)
    {
      v148 = v61;
      v149 = v62;
      v150 = 32;
      do
      {
        v152 = v149->i8[0];
        v149 = (v149 + 1);
        v151 = v152;
        v50 += *(v148 - 48) * v152;
        v350.i32[0] = v50;
        v49 += *(v148 - 47) * v152;
        v48 += *(v148 - 46) * v152;
        v47 += *v148 * v152;
        v350.i32[1] = v47;
        v153 = *++v148;
        v46 += v153 * v151;
        v351.i32[0] = v46;
        v45 += v148[1] * v151;
        v351.i32[3] = v45;
        v44 += v148[47] * v151;
        v350.i64[1] = __PAIR64__(v49, v44);
        v43 += v148[48] * v151;
        *(v351.i64 + 4) = __PAIR64__(v48, v43);
        v42 += v148[49] * v151;
        v352 = v42;
        v51 += v151 * v151;
        v52 += *v148 * *v148;
        --v150;
      }

      while (v150);
    }

    else
    {
      v63 = &v54[2 * v53];
      v64 = *&v55 + 48 + 48 * v53;
      v65 = v63[1];
      v66 = vmull_s8(*(v64 + 1), *v63);
      v67 = vmull_s8(*(v64 + 9), v65);
      v68 = vmull_s8(*(v64 + 2), *v63);
      v69 = vmull_s8(*(v64 + 10), v65);
      v70 = vmull_s8(*(v64 + 3), *v63);
      v71 = vmull_s8(*(v64 + 11), v65);
      v72 = *&v55 + 96 + 48 * v53;
      v73 = vmull_s8(*(v72 + 1), *v63);
      v74 = vmull_s8(*(v72 + 9), v65);
      v75 = *(v72 + 2);
      v76 = vmull_s8(v75, *v63);
      v77 = *(v72 + 10);
      v78 = vmull_s8(v77, v65);
      v79 = vmull_s8(*(v72 + 3), *v63);
      v80 = vmull_s8(*(v72 + 11), v65);
      v82 = v63[2];
      v81 = v63[3];
      v83 = vmull_s8(*(v64 + 17), v82);
      v84 = vmull_s8(*(v64 + 25), v81);
      v338 = vaddw_s16(vaddw_s16(v50, *v66.i8), *v83.i8);
      v335 = vaddl_s16(*v84.i8, *v67.i8);
      v336 = vaddl_high_s16(v83, v66);
      v332 = vaddl_high_s16(v84, v67);
      v85 = vmull_s8(*(v64 + 18), v82);
      v86 = vmull_s8(*(v64 + 26), v81);
      v343 = vaddl_high_s16(v85, v68);
      v345 = vaddw_s16(vaddw_s16(v49, *v68.i8), *v85.i8);
      v339 = vaddl_high_s16(v86, v69);
      v341 = vaddl_s16(*v86.i8, *v69.i8);
      v87 = vmull_s8(*(v64 + 19), v82);
      v88 = vmull_s8(*(v64 + 27), v81);
      v337 = vaddw_s16(vaddw_s16(v48, *v70.i8), *v87.i8);
      v333 = vaddl_s16(*v88.i8, *v71.i8);
      v334 = vaddl_high_s16(v87, v70);
      v331 = vaddl_high_s16(v88, v71);
      v89 = vmull_s8(*(v72 + 17), v82);
      v90 = vmull_s8(*(v72 + 25), v81);
      v91 = vaddw_s16(vaddw_s16(v47, *v73.i8), *v89.i8);
      v92 = vaddl_high_s16(v89, v73);
      v93 = vaddl_s16(*v90.i8, *v74.i8);
      v94 = vaddl_high_s16(v90, v74);
      v95 = *(v72 + 18);
      v96 = *(v72 + 26);
      v97 = vmull_s8(v95, v82);
      v98 = vmull_s8(v96, v81);
      v99 = vaddw_s16(vaddw_s16(v46, *v76.i8), *v97.i8);
      v100 = vaddl_high_s16(v97, v76);
      v101 = vaddl_s16(*v98.i8, *v78.i8);
      v102 = vaddl_high_s16(v98, v78);
      v103 = vmull_s8(*(v72 + 19), v82);
      v329 = v91;
      v330 = vaddw_s16(vaddw_s16(v45, *v79.i8), *v103.i8);
      v104 = vaddl_high_s16(v103, v79);
      v105 = vmull_s8(*(v72 + 27), v81);
      v106 = vaddl_s16(*v105.i8, *v80.i8);
      v107 = vaddl_high_s16(v105, v80);
      v108 = *&v55 + 144 + 48 * v53;
      v109 = vmull_s8(*(v108 + 1), *v63);
      v110 = vmull_s8(*(v108 + 17), v82);
      v111 = vaddw_s16(vaddw_s16(v44, *v109.i8), *v110.i8);
      v112 = vaddl_high_s16(v110, v109);
      v113 = vmull_s8(*(v108 + 9), v65);
      v114 = vmull_s8(*(v108 + 25), v81);
      v115 = vaddl_s16(*v114.i8, *v113.i8);
      v116 = vaddl_high_s16(v114, v113);
      v117 = vmull_s8(*(v108 + 2), *v63);
      v118 = vmull_s8(*(v108 + 18), v82);
      v119 = vaddw_s16(vaddw_s16(v43, *v117.i8), *v118.i8);
      v120 = vaddl_high_s16(v118, v117);
      v121 = vmull_s8(*(v108 + 10), v65);
      v122 = vmull_s8(*(v108 + 26), v81);
      v123 = vaddl_s16(*v122.i8, *v121.i8);
      v124 = vaddl_high_s16(v122, v121);
      v125 = vmull_s8(*(v108 + 3), *v63);
      v126 = vmull_s8(*(v108 + 19), v82);
      v127 = vaddw_s16(vaddw_s16(v42, *v125.i8), *v126.i8);
      v128 = vaddl_high_s16(v126, v125);
      v129 = vmull_s8(*(v108 + 11), v65);
      v130 = vmull_s8(*(v108 + 27), v81);
      v131 = vaddl_s16(*v130.i8, *v129.i8);
      v132 = vaddl_high_s16(v130, v129);
      v133 = vmull_s8(*v63, *v63);
      v134 = vmull_s8(v82, v82);
      v135 = vaddw_s16(vaddw_s16(v51, *v133.i8), *v134.i8);
      v136 = vaddl_high_s16(v134, v133);
      v137 = vmull_s8(v65, v65);
      v138 = vmull_s8(v81, v81);
      v139 = vaddl_s16(*v138.i8, *v137.i8);
      v140 = vaddl_high_s16(v138, v137);
      v141 = vmull_s8(v75, v75);
      v142 = vmull_s8(v95, v95);
      v143 = vaddw_s16(vaddw_s16(v52, *v141.i8), *v142.i8);
      v144 = vaddl_high_s16(v142, v141);
      v145 = vmull_s8(v77, v77);
      v146 = vmull_s8(v96, v96);
      v352 = vaddvq_s32(vaddq_s32(vaddq_s32(v131, v127), vaddq_s32(v132, v128)));
      v42 = v352;
      v147 = vaddq_s32(vaddq_s32(v115, v111), vaddq_s32(v116, v112));
      v123.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(vaddq_s32(v123, v119), vaddq_s32(v124, v120))), vaddvq_s32(vaddq_s32(vaddq_s32(v101, v99), vaddq_s32(v102, v100))));
      v46 = v123.i32[0];
      v116.i64[0] = __PAIR64__(vaddvq_s32(vaddq_s32(vaddq_s32(v93, v329), vaddq_s32(v94, v92))), vaddvq_s32(vaddq_s32(vaddq_s32(v335, v338), vaddq_s32(v332, v336))));
      v50 = v116.i32[0];
      v116.i64[1] = __PAIR64__(vaddvq_s32(vaddq_s32(vaddq_s32(v341, v345), vaddq_s32(v339, v343))), vaddvq_s32(v147));
      v43 = v123.u32[1];
      v44 = v116.u32[2];
      v131.i32[0] = vaddvq_s32(vaddq_s32(vaddq_s32(v106, v330), vaddq_s32(v107, v104)));
      v123.i64[1] = __PAIR64__(v131.u32[0], vaddvq_s32(vaddq_s32(vaddq_s32(v333, v337), vaddq_s32(v331, v334))));
      v45 = v131.i32[0];
      v351 = v123;
      v47 = v116.u32[1];
      v48 = v123.u32[2];
      v49 = v116.u32[3];
      v350 = v116;
      v51 = vaddvq_s32(vaddq_s32(vaddq_s32(v139, v135), vaddq_s32(v140, v136)));
      v52 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddl_s16(*v146.i8, *v145.i8), v143), vaddq_s32(vaddl_high_s16(v146, v145), v144)));
    }

    ++v53;
    v62 += 2;
    v61 += 48;
  }

  while (v53 != 32);
  v154 = 0;
  if (v51 && v52)
  {
    v340 = v46 / ((v51 + 512) >> 10);
    v346 = v54;
    v344 = v55;
    v342 = &v54[64];
    v155 = sub_10018499C(v52);
    v156 = v340;
    v56 = v342;
    v55 = v344;
    v54 = v346;
    v154 = ((21 * v50) / v155) >> 3;
    v350.i32[1] = ((21 * v47) / v155) >> 3;
    v350.i32[2] = ((21 * v44) / v155) >> 3;
    v350.i32[3] = ((21 * v49) / v155) >> 3;
    v351.i32[0] = ((21 * v46) / v155) >> 3;
    v351.i32[1] = ((21 * v43) / v155) >> 3;
    v351.i32[2] = ((21 * v48) / v155) >> 3;
    v42 = (21 * v42 / v155) >> 3;
    v351.i32[3] = ((21 * v45) / v155) >> 3;
    v352 = v42;
  }

  else
  {
    v156 = 0;
  }

  v350.i32[0] = v154;
  a1[1].i32[0] = v156;
  v157 = v351;
  v158 = v350;
  v159 = vmaxvq_s32(vmaxq_s32(v350, v351));
  if (v159 <= v42)
  {
    v160 = v42;
  }

  else
  {
    v160 = v159;
  }

  v161 = v160 & ~(v160 >> 31);
  v353 = v161;
  if (v160 < 78)
  {
    goto LABEL_167;
  }

  v162 = v350.i32[0];
  if (v350.i32[0] < 0)
  {
    v162 = 0;
    v350.i32[0] = 0;
  }

  v163 = v158.i32[1];
  if (v158.i32[1] < 0)
  {
    v163 = 0;
    v350.i32[1] = 0;
    v164 = v162;
    v165 = v158.i32[2];
    if ((v158.i32[2] & 0x80000000) == 0)
    {
LABEL_67:
      v164 += v165;
      v166 = v158.i32[3];
      if ((v158.i32[3] & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_78;
    }
  }

  else
  {
    v164 = v158.i32[1] + v162;
    v165 = v158.i32[2];
    if ((v158.i32[2] & 0x80000000) == 0)
    {
      goto LABEL_67;
    }
  }

  v165 = 0;
  v350.i32[2] = 0;
  v166 = v158.i32[3];
  if ((v158.i32[3] & 0x80000000) == 0)
  {
LABEL_68:
    v164 += v166;
    v167 = v351.i32[0];
    if ((v351.i32[0] & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_79;
  }

LABEL_78:
  v166 = 0;
  v350.i32[3] = 0;
  v167 = v351.i32[0];
  if ((v351.i32[0] & 0x80000000) == 0)
  {
LABEL_69:
    v164 += v167;
    v168 = v351.i32[1];
    if ((v351.i32[1] & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_79:
  v351.i32[0] = 0;
  v168 = v157.i32[1];
  if ((v157.i32[1] & 0x80000000) == 0)
  {
LABEL_70:
    v164 += v168;
    v169 = v157.i32[2];
    if ((v157.i32[2] & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_81;
  }

LABEL_80:
  v168 = 0;
  v351.i32[1] = 0;
  v169 = v157.i32[2];
  if ((v157.i32[2] & 0x80000000) == 0)
  {
LABEL_71:
    v164 += v169;
    v170 = v157.i32[3];
    if ((v157.i32[3] & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_82:
    v170 = 0;
    v351.i32[3] = 0;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_83:
    v42 = 0;
    v352 = 0;
    goto LABEL_84;
  }

LABEL_81:
  v169 = 0;
  v351.i32[2] = 0;
  v170 = v157.i32[3];
  if (v157.i32[3] < 0)
  {
    goto LABEL_82;
  }

LABEL_72:
  v164 += v170;
  if (v42 < 0)
  {
    goto LABEL_83;
  }

LABEL_73:
  v164 += v42;
LABEL_84:
  v171 = v164 >> 23;
  if (v164 >> 23)
  {
    v164 = (v164 + 128) >> 8;
  }

  if (v164)
  {
    v172 = 8 * (v171 == 0);
    v173 = ((v169 - v165 - (v163 + v162) + v170 + v42) << v172) / v164;
    v174 = ((v168 + v165 + v42 - (v162 + v166 + v169)) << v172) / v164;
  }

  else
  {
    v174 = 0;
    v173 = 0;
  }

  v354 = __PAIR64__(v173, v174);
  v175 = v174 + v348.i32[0];
  v176 = v173 + v348.i32[1];
  LODWORD(v355) = v174 + v348.i32[0];
  HIDWORD(v355) = v173 + v348.i32[1];
  if (v327)
  {
    v177 = a1[8].i32[0];
    if (v177 <= 199)
    {
      v178 = (*&a1[7] + 20 * v177);
      *v178 = v161;
      v178[3] = HIDWORD(v355);
      v178[4] = v355;
      v178[1] = v328;
      v178[2] = v326;
      a1[8].i32[0] = v177 + 1;
      v176 = HIDWORD(v355);
      v175 = v355;
    }
  }

  a1[4].i32[0] = v176;
  a1[4].i32[1] = v175;
  if (!v328)
  {
    a1[3].i32[0] = v176;
    a1[3].i32[1] = v175;
    if (!v326)
    {
      a1[2].i32[0] = v176;
      a1[2].i32[1] = v175;
    }
  }

  v179 = HIDWORD(v354);
  if (v354 < 0)
  {
    v179 = -HIDWORD(v354);
  }

  if (v179 <= 0x19)
  {
    v180 = v354;
    if (v354 < 0)
    {
      v180 = -v354;
    }

    if (v180 < 0x1A)
    {
      v198 = (v351.i32[0] + 8) >> 4;
      v359 = v198;
      v199 = v198 * v156;
      v200 = a1[33];
      v201 = *&v55 + 98;
      v202 = v200 + 2048;
      v204 = v200 < *&v55 + 1618 && v201 < v202;
      v206 = v200 < v56 && v54 < v202 || v204;
      if (v206)
      {
        v207 = 0;
        v208 = a1[33];
        do
        {
          for (j = 0; j != 32; ++j)
          {
            *(*&v208 + 2 * j) = v198 * *(v201 + j) - ((v199 * v54->i8[j] + 512) >> 10);
          }

          ++v207;
          *&v208 += 64;
          v54 += 2;
          v201 += 48;
        }

        while (v207 != 32);
      }

      else
      {
        v252 = 0;
        v253 = vdupq_n_s32(v198);
        v254 = vdupq_n_s32(v199);
        v255 = (*&v55 + 114);
        v256 = v54 + 1;
        do
        {
          v257 = v255[-1];
          v258 = *v255;
          v259 = vmovl_high_s8(v257);
          v260 = v256[-1];
          v261 = *v256;
          v262 = vmovl_high_s8(v260);
          v263 = vmovl_s8(*v260.i8);
          v264.i64[0] = 0x20000000200;
          v264.i64[1] = 0x20000000200;
          v265 = vmlaq_s32(v264, v254, vmovl_high_s16(v262));
          v266.i64[0] = 0x20000000200;
          v266.i64[1] = 0x20000000200;
          v267 = vmlaq_s32(v266, v254, vmovl_s16(*v262.i8));
          v262.i64[0] = 0x20000000200;
          v262.i64[1] = 0x20000000200;
          v268.i64[0] = 0x20000000200;
          v268.i64[1] = 0x20000000200;
          v269 = vmovl_s8(*v257.i8);
          v270 = (v200 + v252);
          *v270 = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v268, v254, vmovl_s16(*v263.i8)), 0xAuLL)), v253, vmovl_u16(*v269.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v262, v254, vmovl_high_s16(v263)), 0xAuLL)), v253, vmovl_high_u16(v269)));
          v270[1] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(v267, 0xAuLL)), v253, vmovl_u16(*v259.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(v265, 0xAuLL)), v253, vmovl_high_u16(v259)));
          v271 = vmovl_high_s8(v258);
          v272 = vmovl_s8(*v258.i8);
          v273 = vmovl_high_s8(v261);
          v274 = vmovl_s8(*v261.i8);
          v265.i64[0] = 0x20000000200;
          v265.i64[1] = 0x20000000200;
          v275 = vmlaq_s32(v265, v254, vmovl_high_s16(v273));
          v267.i64[0] = 0x20000000200;
          v267.i64[1] = 0x20000000200;
          v276 = vmlaq_s32(v267, v254, vmovl_s16(*v273.i8));
          v273.i64[0] = 0x20000000200;
          v273.i64[1] = 0x20000000200;
          v268.i64[0] = 0x20000000200;
          v268.i64[1] = 0x20000000200;
          v270[2] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v268, v254, vmovl_s16(*v274.i8)), 0xAuLL)), v253, vmovl_u16(*v272.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v273, v254, vmovl_high_s16(v274)), 0xAuLL)), v253, vmovl_high_u16(v272)));
          v270[3] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(v276, 0xAuLL)), v253, vmovl_u16(*v271.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(v275, 0xAuLL)), v253, vmovl_high_u16(v271)));
          v252 += 64;
          v255 += 3;
          v256 += 2;
        }

        while (v252 != 2048);
      }

      goto LABEL_177;
    }
  }

  if (sub_10017B210(a1, v347.i32[1], v347.i32[0], v325, v176, v175, 0))
  {
    sub_10016B51C(*&a1[30], 0x30u, 36, 0x30u, *&a1[31]);
    v356 = 0;
    v181 = a1[31];
    v182 = a1[32];
    v183 = *&v181 + 49;
    v184 = *&v181 + 1569;
    v186 = &v356 < &v182[128] && v182 < v357;
    v188 = &v356 < v184 && v183 < v357 || v186;
    if (v188)
    {
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 0;
      v193 = a1[32];
      v194 = *&v181 + 49;
      do
      {
        for (k = 0; k != 32; ++k)
        {
          v196 = *(*&v193 + k);
          v197 = *(v194 + k);
          v191 += v196 * v196;
          v190 += v197 * v197;
          v192 += v197 * v196;
          v356 = v192;
        }

        ++v189;
        v194 += 48;
        *&v193 += 32;
      }

      while (v189 != 32);
    }

    else
    {
      v190 = 0;
      v191 = 0;
      v192 = 0;
      v210 = v182 + 2;
      v211 = (*&v181 + 65);
      v212 = 32;
      do
      {
        v213 = *v210[-2].i8;
        v214 = *v210->i8;
        v215 = vmull_high_s8(v213, v213);
        v216 = vmull_s8(*v213.i8, *v213.i8);
        v217 = *v211[-2].i8;
        v218 = *v211->i8;
        v219 = vmull_high_s8(v217, v217);
        v220 = vmull_s8(*v217.i8, *v217.i8);
        v221 = vmull_high_s8(v217, v213);
        v222 = vmull_s8(*v217.i8, *v213.i8);
        v223 = vmull_s8(*v214.i8, *v214.i8);
        v224 = vmull_high_s8(v214, v214);
        v225 = vaddl_s16(*v224.i8, *v215.i8);
        v226 = vaddw_s16(vaddw_s16(v191, *v216.i8), *v223.i8);
        v227 = vaddl_high_s16(v224, v215);
        v228 = vaddl_high_s16(v223, v216);
        v229 = vmull_s8(*v218.i8, *v218.i8);
        v230 = vmull_high_s8(v218, v218);
        v231 = vaddw_s16(vaddw_s16(v190, *v220.i8), *v229.i8);
        v232 = vaddl_high_s16(v229, v220);
        v233 = vmull_s8(*v211, *v210);
        v234 = vmull_high_s8(*v211->i8, *v210->i8);
        v356 = vaddvq_s32(vaddq_s32(vaddw_s16(vaddw_s16(v192, *v222.i8), *v233.i8), vaddq_s32(vaddl_s16(*v234.i8, *v221.i8), vaddq_s32(vaddl_high_s16(v233, v222), vaddl_high_s16(v234, v221)))));
        v192 = v356;
        v190 = vaddvq_s32(vaddq_s32(v231, vaddq_s32(vaddl_s16(*v230.i8, *v219.i8), vaddq_s32(v232, vaddl_high_s16(v230, v219)))));
        v191 = vaddvq_s32(vaddq_s32(v226, vaddq_s32(v225, vaddq_s32(v228, v227))));
        v210 += 4;
        v211 += 6;
        --v212;
      }

      while (v212);
    }

    if (v191 < 1 || v190 <= 0)
    {
      a1[1].i32[0] = 0;
    }

    else
    {
      v236 = v192 / ((v191 + 512) >> 10);
      a1[1].i32[0] = v236;
      v237 = sub_10018499C(v190);
      v238 = (21 * v192 / v237) >> 3;
      v356 = v238;
      if (v238 >= 72)
      {
        v358 = &v355;
        v239 = (v238 + 8) >> 4;
        v359 = v239;
        v240 = v236 * v239;
        v200 = a1[33];
        v241 = (v200 + 2048);
        v243 = v200 < v184 && v183 < v241;
        v245 = v200 < &v182[128] && v182 < v241 || v243;
        if (v245)
        {
          v246 = 0;
          v247 = *&v181 + 49;
          v248 = a1[33];
          do
          {
            v249 = 0;
            ++v246;
            do
            {
              *(*&v248 + 2 * v249) = v239 * *(v247 + v249) - ((v240 * v182->i8[v249] + 512) >> 10);
              ++v249;
            }

            while (v249 != 32);
            *&v248 += 64;
            v182 += 4;
            v247 += 48;
          }

          while (v246 != 32);
        }

        else
        {
          v277 = 0;
          v278 = vdupq_n_s32(v239);
          v279 = vdupq_n_s32(v240);
          v280 = (*&v181 + 65);
          v281 = &v182[2];
          do
          {
            v282 = v280[-1];
            v283 = *v280;
            v284 = vmovl_high_s8(v282);
            v285 = v281[-1];
            v286 = *v281;
            v287 = vmovl_high_s8(v285);
            v288 = vmovl_s8(*v285.i8);
            v289.i64[0] = 0x20000000200;
            v289.i64[1] = 0x20000000200;
            v290 = vmlaq_s32(v289, v279, vmovl_high_s16(v287));
            v291.i64[0] = 0x20000000200;
            v291.i64[1] = 0x20000000200;
            v292 = vmlaq_s32(v291, v279, vmovl_s16(*v287.i8));
            v287.i64[0] = 0x20000000200;
            v287.i64[1] = 0x20000000200;
            v293.i64[0] = 0x20000000200;
            v293.i64[1] = 0x20000000200;
            v294 = vmovl_s8(*v282.i8);
            v295 = (v200 + v277);
            *v295 = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v293, v279, vmovl_s16(*v288.i8)), 0xAuLL)), v278, vmovl_u16(*v294.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v287, v279, vmovl_high_s16(v288)), 0xAuLL)), v278, vmovl_high_u16(v294)));
            v295[1] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(v292, 0xAuLL)), v278, vmovl_u16(*v284.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(v290, 0xAuLL)), v278, vmovl_high_u16(v284)));
            v296 = vmovl_high_s8(v283);
            v297 = vmovl_s8(*v283.i8);
            v298 = vmovl_high_s8(v286);
            v299 = vmovl_s8(*v286.i8);
            v290.i64[0] = 0x20000000200;
            v290.i64[1] = 0x20000000200;
            v300 = vmlaq_s32(v290, v279, vmovl_high_s16(v298));
            v292.i64[0] = 0x20000000200;
            v292.i64[1] = 0x20000000200;
            v301 = vmlaq_s32(v292, v279, vmovl_s16(*v298.i8));
            v298.i64[0] = 0x20000000200;
            v298.i64[1] = 0x20000000200;
            v293.i64[0] = 0x20000000200;
            v293.i64[1] = 0x20000000200;
            v295[2] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v293, v279, vmovl_s16(*v299.i8)), 0xAuLL)), v278, vmovl_u16(*v297.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(vmlaq_s32(v298, v279, vmovl_high_s16(v299)), 0xAuLL)), v278, vmovl_high_u16(v297)));
            v295[3] = vuzp1q_s16(vmlaq_s32(vnegq_s32(vshrq_n_u32(v301, 0xAuLL)), v278, vmovl_u16(*v296.i8)), vmlaq_s32(vnegq_s32(vshrq_n_u32(v300, 0xAuLL)), v278, vmovl_high_u16(v296)));
            v280 += 3;
            v277 += 64;
            v281 += 2;
          }

          while (v277 != 2048);
        }

LABEL_177:
        v302 = a1[37];
        v303 = v349.i8[4];
        v304 = v349.i8[0];
        v305 = a1[10];
        if ((a1[11].i8[0] & 1) == 0)
        {
          if (!*&v305)
          {
            operator new[]();
          }

          v360 = 0x124095809200FFFLL;
          **&v305 = 0;
          v306 = 1;
          v307 = 8190;
          do
          {
            v308 = (v306 >> 6) & 1;
            v309 = *(&v360 & 0xFFFFFFFFFFFFFFFDLL | (2 * v308));
            *(*&v305 + 2 * v306) = v309 >> 1;
            v310 = 2 * v309;
            if ((v309 & 0x800) != 0)
            {
              v310 ^= word_1001C8B78[v308];
            }

            *(&v360 | (2 * v308)) = v310;
            ++v306;
            --v307;
          }

          while (v307);
          *(*&v305 + 16382) = 0;
          v311 = 8193;
          v312 = 8190;
          do
          {
            v313 = (v311 >> 6) & 1 | 2;
            v314 = (&v360 | (2 * v313));
            v315 = *v314;
            *(*&v305 + 2 * v311) = *v314 >> 1;
            v316 = 2 * v315;
            if ((v315 & 0x800) != 0)
            {
              v316 ^= word_1001C8B78[v313];
            }

            *v314 = v316;
            ++v311;
            --v312;
          }

          while (v312);
          *(*&v305 + 32766) = 0;
          a1[11].i8[0] = 1;
        }

        v317 = 0;
        v318 = a1[11].i32[1];
        v319 = a1[12].i32[0];
        do
        {
          v320 = 0;
          v321 = v303 + 112;
          do
          {
            v322 = *(*&v305 + 2 * (v321 & 0x7F | (((v304 + 112 + v317) & 0x7F) << 7)));
            v323 = v319 & v322;
            if (v318 <= v322)
            {
              LOWORD(v324) = *(v200 + v320);
            }

            else
            {
              v324 = -*(v200 + v320);
            }

            *(*&v302 + 2 * v323) += v324;
            v320 += 2;
            ++v321;
          }

          while (v320 != 64);
          ++v317;
          v200 += 64;
        }

        while (v317 != 32);
        a1[5] = vadd_s32(a1[5], (v353 | 0x100000000));
        return 1;
      }
    }

LABEL_167:
    v250 = v348.i32[1];
    v251 = v348.i32[0];
    a1[4].i32[0] = v348.i32[1];
    a1[4].i32[1] = v251;
    if (!v328)
    {
      a1[3].i32[0] = v250;
      a1[3].i32[1] = v251;
      if (!v326)
      {
        a1[2].i32[0] = v250;
        a1[2].i32[1] = v251;
      }
    }

    return 1;
  }

  result = 0;
  if (v327)
  {
    --a1[8].i32[0];
  }

  return result;
}

uint64_t sub_10017B210(int32x2_t *a1, int a2, int a3, int32x2_t *a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a7)
  {
    v7 = 18;
  }

  else
  {
    v7 = 17;
  }

  v8 = *a4;
  v9 = a4[1];
  v10 = vmla_s32(vmla_s32(vrev64_s32(vshl_n_s32(a1[35], 0x14uLL)), *a4, vdup_n_s32(a3 - v7)), v9, vdup_n_s32(a2 - v7));
  v11 = vzip2_s32(v9, *a4);
  v12 = vcltz_s32(v11);
  v13 = v12.i8[4];
  v14 = vsra_n_s32(v10, vmla_s32(vmul_s32(*a4, vdup_n_s32(a6)), v9, vdup_n_s32(a5)), 8uLL);
  v15 = v12.i8[0];
  v16 = vadd_s32(v9, *a4);
  v17 = COERCE_DOUBLE(vmla_s32(vdup_lane_s32(v14, 1), v11, 0x2400000024));
  v18 = COERCE_DOUBLE(vmla_s32(vdup_lane_s32(v14, 1), vzip2_s32(*a4, v9), 0x2400000024));
  LODWORD(v19) = vdup_lane_s32(v14, 1).u32[0];
  HIDWORD(v19) = v14.i32[1] + 36 * v16.i32[1];
  v20 = COERCE_DOUBLE(__PAIR64__(v14.u32[1], HIDWORD(v19)));
  if (v15)
  {
    v19 = v17;
  }

  else
  {
    v20 = v18;
  }

  if (v13)
  {
    v19 = v20;
  }

  if ((LODWORD(v19) & 0x80000000) != 0)
  {
    return 0;
  }

  if (SHIDWORD(v19) < SLODWORD(v19) || SHIDWORD(v19) >> 20 >= a1[34].i32[0] - 1)
  {
    return 0;
  }

  v22 = vzip1_s32(v9, v8);
  v25 = COERCE_DOUBLE(vcltz_s32(v22));
  v23 = BYTE4(v25);
  v24 = LOBYTE(v25);
  LODWORD(v25) = v14.i32[0];
  v26 = COERCE_DOUBLE(vmla_s32(vdup_lane_s32(v14, 0), v22, 0x2400000024));
  if (v24)
  {
    v27 = v26;
  }

  else
  {
    HIDWORD(v25) = v14.i32[0] + 36 * v16.i32[0];
    v27 = v25;
  }

  v28 = v14.i32[0] + 36 * v16.i32[0];
  v29 = COERCE_DOUBLE(vdup_lane_s32(v14, 0));
  LODWORD(v29) = v28;
  v30 = COERCE_DOUBLE(vmla_s32(vdup_lane_s32(v14, 0), vzip1_s32(v8, v9), 0x2400000024));
  if ((v24 & 1) == 0)
  {
    v29 = v30;
  }

  if ((v23 & 1) == 0)
  {
    v29 = v27;
  }

  if ((LODWORD(v29) & 0x80000000) != 0)
  {
    return 0;
  }

  if (SHIDWORD(v29) < SLODWORD(v29) || SHIDWORD(v29) >> 20 >= a1[34].i32[1] - 1)
  {
    return 0;
  }

  v33 = a1[36];
  if (a1[1].i32[1] == 1)
  {
    v34 = 0;
    v35 = a1[30];
    v36 = vadd_s32(v14, 0x20000000200);
    v37 = a1[34].i32[0];
    do
    {
      v38 = 0;
      v39 = v36;
      do
      {
        v40 = (v39.i32[1] >> 10) & 0x3FF;
        v41 = (v39.i32[0] >> 20) * v37 + (v39.i32[1] >> 20);
        v42 = (*(*&v33 + v41 + 1) - *(*&v33 + v41)) * v40 + (*(*&v33 + v41) << 10);
        *(*&v35 + v38) = ((((*(*&v33 + v41 + v37 + 1) - *(*&v33 + v41 + v37)) * v40 - v42 + (*(*&v33 + v41 + v37) << 10)) >> 5) * ((v39.i32[0] >> 10) & 0x3FF) + 32 * v42) >> 15;
        v39 = vadd_s32(v39, v9);
        ++v38;
      }

      while (v38 != 36);
      v36 = vadd_s32(v36, v8);
      ++v34;
      *&v35 += 48;
    }

    while (v34 != 36);
    return 1;
  }

  else
  {
    v43 = 0;
    v44 = a1[30];
    v45 = vadd_s32(v14, 0x20000000200);
    v46 = 2 * (a1[34].i32[0] & 0x7FFF);
    do
    {
      v47 = 0;
      v48 = v45;
      do
      {
        v49 = (v48.i32[1] >> 10) & 0x3FF;
        v50 = (v48.i32[0] >> 20) * v46 + 2 * (v48.i32[1] >> 20);
        v51 = (*(*&v33 + v50 + 3) - *(*&v33 + v50 + 1)) * v49 + (*(*&v33 + v50 + 1) << 10);
        *(*&v44 + v47) = ((((*(*&v33 + v50 + v46 + 3) - *(*&v33 + v50 + v46 + 1)) * v49 - v51 + (*(*&v33 + v50 + v46 + 1) << 10)) >> 5) * ((v48.i32[0] >> 10) & 0x3FF) + 32 * v51) >> 15;
        v48 = vadd_s32(v48, v9);
        ++v47;
      }

      while (v47 != 36);
      v45 = vadd_s32(v45, v8);
      ++v43;
      *&v44 += 48;
    }

    while (v43 != 36);
    return 1;
  }
}