int8x8_t HU4_C(uint64_t a1)
{
  v1 = *(a1 - 1);
  v2 = *(a1 + 31);
  v3 = *(a1 + 63);
  v4 = *(a1 + 95);
  *a1 = (v2 + v1 + 1) >> 1;
  v5 = (v2 + v3 + 1) >> 1;
  *(a1 + 32) = v5;
  *(a1 + 2) = v5;
  v6 = (v3 + v4 + 1) >> 1;
  *(a1 + 64) = v6;
  *(a1 + 34) = v6;
  *(a1 + 1) = (v3 + 2 + v1 + 2 * v2) >> 2;
  v7 = (v4 + v2 + 2 * v3 + 2) >> 2;
  *(a1 + 33) = v7;
  *(a1 + 3) = v7;
  v8 = (v3 + 2 + v4 + 2 * v4) >> 2;
  *(a1 + 65) = v8;
  *(a1 + 35) = v8;
  result = vdup_n_s8(v4);
  *(a1 + 96) = result.i32[0];
  *(a1 + 66) = v4;
  *(a1 + 67) = v4;
  return result;
}

uint64_t DitherCombine8x8_C(uint64_t result, uint8x8_t *a2, int a3)
{
  v3 = 0;
  v4.i64[0] = 0x7700000077;
  v4.i64[1] = 0x7700000077;
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  do
  {
    v6 = vmovl_u8(*(result + v3));
    v7 = vmovl_u8(*a2);
    *a2 = vmovn_s16(vuzp1q_s16(vminq_s32(vmaxq_s32(vsraq_n_s32(vmovl_u16(*v7.i8), vaddw_u16(v4, *v6.i8), 4uLL), 0), v5), vminq_s32(vmaxq_s32(vaddw_high_u16(vshrq_n_s32(vaddw_high_u16(v4, v6), 4uLL), v7), 0), v5)));
    a2 = (a2 + a3);
    v3 += 8;
  }

  while (v3 != 64);
  return result;
}

uint64_t VP8LPredictor10_C(_DWORD *a1, _DWORD *a2)
{
  v2 = (((*(a2 - 1) ^ *a1) >> 1) & 0x7F7F7F7F) + (*(a2 - 1) & *a1);
  v3 = (((a2[1] ^ *a2) >> 1) & 0x7F7F7F7F) + (a2[1] & *a2);
  return (((v3 ^ v2) >> 1) & 0x7F7F7F7F) + (v3 & v2);
}

uint64_t VP8LPredictor11_C(unsigned int *a1, unsigned int *a2)
{
  v3 = *(a2 - 1);
  v2 = *a2;
  v4 = *a1;
  v5 = HIBYTE(*a1) - HIBYTE(v3);
  v6 = HIBYTE(*a2) - HIBYTE(v3);
  if (v5 < 0)
  {
    v5 = HIBYTE(v3) - HIBYTE(*a1);
  }

  if (v6 < 0)
  {
    v6 = HIBYTE(v3) - HIBYTE(*a2);
  }

  v7 = BYTE2(v4) - BYTE2(v3);
  v8 = BYTE2(v2) - BYTE2(v3);
  if (v7 < 0)
  {
    v7 = BYTE2(v3) - BYTE2(v4);
  }

  if (v8 < 0)
  {
    v8 = BYTE2(v3) - BYTE2(v2);
  }

  v9 = BYTE1(v4) - BYTE1(v3);
  v10 = BYTE1(v2) - BYTE1(v3);
  if (v9 < 0)
  {
    v9 = BYTE1(v3) - BYTE1(v4);
  }

  if (v10 < 0)
  {
    v10 = BYTE1(v3) - BYTE1(v2);
  }

  v11 = *a1 - v3;
  v12 = *a2 - v3;
  if (v11 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = -v11;
  }

  if (v12 < 0)
  {
    v12 = -v12;
  }

  if (v13 + v5 + v9 - (v6 + v12 + v10 + v8) + v7 >= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t VP8LPredictor12_C(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 - 4);
  v3 = vshr_n_u32(v2, 0x18uLL);
  v4 = vand_s8(v2, 0xFF000000FFLL);
  v5 = vdup_n_s32(*a1);
  v6.i32[0] = *a1;
  v6.i32[1] = vshr_n_u32(v5, 0x18uLL).i32[1];
  v7 = vsub_s32(vadd_s32(vzip2_s32(v4, v3), v6), vzip1_s32(v4, v3));
  v8 = v7.u32[1];
  v9 = vcgt_u32(0x10000000100, v7);
  if ((v9.i8[4] & 1) == 0)
  {
    v8 = ~v7.i32[1] >> 24;
  }

  v10 = v7.i32[0];
  if ((v9.i8[0] & 1) == 0)
  {
    v10 = ~v7.i32[0] >> 24;
  }

  v11 = vsub_s32(vadd_s32(vand_s8(vshl_u32(vdup_lane_s32(v2, 1), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), vand_s8(vshl_u32(v5, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vand_s8(vshl_u32(vdup_lane_s32(v2, 0), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v12 = vshl_u32(vbsl_s8(vcgt_u32(0x10000000100, v11), v11, vshr_n_u32(vmvn_s8(v11), 0x18uLL)), 0x800000010);
  return v10 + (v8 << 24) + v12.i32[0] + v12.i32[1];
}

uint64_t VP8LPredictor13_C(_DWORD *a1, _DWORD *a2)
{
  v2 = *(a2 - 1);
  v3 = (((*a2 ^ *a1) >> 1) & 0x7F7F7F7F) + (*a2 & *a1);
  v4 = HIBYTE(v3) + ((HIBYTE(v3) - HIBYTE(v2) + (((HIBYTE(v3) - HIBYTE(v2)) & 0x8000) >> 15)) >> 1);
  if (v4 >= 0x100)
  {
    v4 = ~v4 >> 24;
  }

  v5 = ((v3 - v2 + (((v3 - v2) & 0x8000u) >> 15)) >> 1) + v3;
  v6 = vdup_n_s32(v3);
  if (v5 >= 0x100)
  {
    v7 = ~v5 >> 24;
  }

  else
  {
    v7 = ((v3 - v2 + (((v3 - v2) & 0x8000u) >> 15)) >> 1) + v3;
  }

  v8 = vand_s8(vshl_u32(v6, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
  v9 = vsub_s32(v8, vand_s8(vshl_u32(vdup_n_s32(v2), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL));
  v10 = vadd_s32(v8, vhadd_s32(v9, vshr_n_u32(vand_s8(v9, 0xFFFF0000FFFFLL), 0xFuLL)));
  v11 = vshl_u32(vbsl_s8(vcgt_u32(0x10000000100, v10), v10, vshr_n_u32(vmvn_s8(v10), 0x18uLL)), 0x800000010);
  return v7 + (v4 << 24) + v11.i32[0] + v11.i32[1];
}

unsigned int *VP8LAddGreenToBlueAndRed_C(unsigned int *result, int a2, unsigned int *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      v4 = *result++;
      *a3++ = ((v4 & 0xFF00FF) + BYTE1(v4) + (v4 >> 8 << 16)) & 0xFF00FF | v4 & 0xFF00FF00;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *VP8LTransformColorInverse_C(char *result, int *a2, int a3, unsigned int *a4)
{
  if (a3 >= 1)
  {
    v4 = *result;
    v5 = result[1];
    v6 = a3;
    v7 = result[2];
    do
    {
      v8 = *a2++;
      *a4++ = v8 & 0xFF00FF00 | (((((v8 >> 8) * v4) >> 5) + BYTE2(v8)) << 16) | (v8 + (((v8 >> 8) * v5) >> 5) + ((((((v8 >> 8) * v4) >> 5) + BYTE2(v8)) * v7) >> 5));
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t VP8LColorIndexInverseTransformAlpha(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5)
{
  v7 = *(result + 4);
  v6 = *(result + 8);
  v8 = *(result + 16);
  if (!v7)
  {
    return VP8LMapColor8b(a4, v8, a5, a2, a3, v6);
  }

  if (a2 < a3)
  {
    v9 = 8u >> v7;
    v10 = ~(-1 << v7);
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((v11 & v10) == 0)
          {
            v13 = *a4++;
            v12 = v13;
          }

          *a5++ = BYTE1(*(v8 + 4 * (v12 & ~(-1 << v9))));
          v12 >>= v9;
          ++v11;
        }

        while (v6 != v11);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != a3);
  }

  return result;
}

int *VP8LInverseTransform(int *result, uint64_t a2, uint64_t a3, char *a4, char *__src)
{
  v5 = a3 - a2;
  if (a3 <= a2)
  {
    VP8LInverseTransform_cold_1();
  }

  v6 = a3;
  v7 = result;
  if (result[3] < a3)
  {
    VP8LInverseTransform_cold_2();
  }

  v8 = __src;
  v9 = a4;
  v10 = a2;
  v11 = result[2];
  v12 = *result;
  if (*result > 1)
  {
    if (v12 == 3)
    {
      if (a4 == __src)
      {
        v27 = result[1];
        if (v27 >= 1)
        {
          v28 = v11 * v5;
          v29 = ((v11 + (1 << v27) - 1) >> v27) * v5;
          v9 = &__src[4 * v28 + -4 * v29];
          memmove(v9, __src, 4 * v29);
        }
      }

      return ColorIndexInverseTransform_C(v7, v10, v6, v9, v8);
    }

    else if (v12 == 2)
    {
      v25 = VP8LAddGreenToBlueAndRed;

      return v25(v9, (v11 * v5), __src);
    }
  }

  else
  {
    v54 = a3;
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = result[1];
        v14 = (1 << v13);
        v15 = v11 & -v14;
        v52 = (v14 - 1 + v11) >> v13;
        v16 = *(result + 2) + 4 * (v52 * (a2 >> v13));
        v17 = v15;
        v48 = v11 - v15;
        v50 = v15;
        v18 = 4 * v14;
        do
        {
          v55 = v10;
          v58 = 0;
          v57 = 0;
          if (v17 < 1)
          {
            v21 = v16;
            v20 = v9;
          }

          else
          {
            v19 = &v9[4 * v17];
            v20 = v9;
            v21 = v16;
            do
            {
              v22 = *v21++;
              v57 = v22;
              v58 = BYTE2(v22);
              result = VP8LTransformColorInverse(&v57, v20, v14, v8);
              v20 += v18;
              v8 = (v8 + v18);
            }

            while (v20 < v19);
          }

          if (v20 < &v9[4 * v11])
          {
            v23 = *v21;
            LOBYTE(v57) = *v21;
            HIBYTE(v57) = BYTE1(v23);
            v58 = BYTE2(v23);
            result = VP8LTransformColorInverse(&v57, v20, v48, v8);
            v20 += 4 * v48;
            v8 += v48;
          }

          v17 = v50;
          LODWORD(v10) = v55 + 1;
          v24 = v52;
          if (((v55 + 1) & (v14 - 1)) != 0)
          {
            v24 = 0;
          }

          v16 += 4 * v24;
          v9 = v20;
        }

        while (v10 != v54);
      }
    }

    else
    {
      v45 = result;
      v56 = a2;
      if (a2)
      {
        v26 = __src;
      }

      else
      {
        v30 = (a4 + 4);
        v31 = *a4 - 0x1000000;
        *__src = v31;
        v32 = (__src + 4);
        if (v11 >= 2)
        {
          v33 = (v11 - 1);
          do
          {
            v34 = *v30++;
            v31 = ((v34 & 0xFF00FF00) + (v31 & 0xFF00FF00)) & 0xFF00FF00 | ((v34 & 0xFF00FF) + (v31 & 0xFF00FF)) & 0xFF00FF;
            *v32++ = v31;
            --v33;
          }

          while (v33);
        }

        v9 = &a4[4 * v11];
        LODWORD(v10) = 1;
        v26 = &__src[4 * v11];
      }

      if (v10 < a3)
      {
        v35 = result[1];
        v49 = (1 << v35) - 1;
        v46 = 1 << v35;
        v47 = (v49 + v11) >> v35;
        v53 = *(result + 2) + 4 * (v47 * (v10 >> v35));
        v36 = -v11;
        v37 = -(1 << v35);
        do
        {
          v51 = v10;
          result = PredictorAdd2_C(v9, &v26[v36], 1, v26);
          if (v11 >= 2)
          {
            v38 = 1;
            v39 = v53;
            do
            {
              v40 = *v39++;
              v41 = VP8LPredictorsAdd[(v40 >> 8) & 0xF];
              v42 = (v38 & v37) + v46;
              if (v42 >= v11)
              {
                v43 = v11;
              }

              else
              {
                v43 = (v38 & v37) + v46;
              }

              result = v41(&v9[4 * v38], &v26[v38 - v11], (v43 - v38));
              v38 = v43;
            }

            while (v42 < v11);
          }

          v9 += 4 * v11;
          v26 += v11;
          LODWORD(v10) = v51 + 1;
          v44 = v47;
          if (((v51 + 1) & v49) != 0)
          {
            v44 = 0;
          }

          v53 += 4 * v44;
          LODWORD(v6) = v54;
          v36 = -v11;
        }

        while (v10 != v54);
      }

      if (v45[3] != v6)
      {

        return memcpy(&v8[-v11], &v8[v11 * (~v56 + v6)], 4 * v11);
      }
    }
  }

  return result;
}

uint64_t ColorIndexInverseTransform_C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = *(result + 4);
  v6 = *(result + 8);
  v8 = *(result + 16);
  if (!v7)
  {
    return VP8LMapColor32b(a4, v8, a5, a2, a3, v6);
  }

  if (a2 < a3)
  {
    v9 = 8u >> v7;
    v10 = ~(-1 << v7);
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          if ((v11 & v10) == 0)
          {
            v12 = *(a4 + 1);
            a4 += 4;
          }

          *a5++ = *(v8 + 4 * (v12 & ~(-1 << v9)));
          v12 >>= v9;
          ++v11;
        }

        while (v6 != v11);
      }

      LODWORD(a2) = a2 + 1;
    }

    while (a2 != a3);
  }

  return result;
}

int *VP8LConvertBGRAToRGB_C(int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4);
      a3[1] = BYTE1(v4);
      a3[2] = v4;
      a3 += 3;
    }

    while (result < v3);
  }

  return result;
}

int *VP8LConvertBGRAToRGBA_C(int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4);
      a3[1] = BYTE1(v4);
      a3[2] = v4;
      a3[3] = HIBYTE(v4);
      a3 += 4;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertBGRAToRGBA4444_C(unsigned int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4) & 0xF0 | (v4 >> 12);
      a3[1] = v4 & 0xF0 | (v4 >> 28);
      a3 += 2;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertBGRAToRGB565_C(unsigned int *result, int a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = BYTE2(v4) & 0xF8 | (v4 >> 13);
      a3[1] = (v4 >> 5) & 0xE0 | (v4 >> 3);
      a3 += 2;
    }

    while (result < v3);
  }

  return result;
}

int *VP8LConvertBGRAToBGR_C(int *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = &result[a2];
    do
    {
      v4 = *result++;
      *a3 = v4;
      *(a3 + 2) = BYTE2(v4);
      a3 += 3;
    }

    while (result < v3);
  }

  return result;
}

unsigned int *VP8LConvertFromBGRA(unsigned int *__src, uint64_t a2, int a3, _DWORD *__dst)
{
  v4 = __dst;
  v6 = __src;
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 == 5)
      {
        v9 = VP8LConvertBGRAToRGBA4444;
      }

      else
      {
        if (a3 != 6)
        {
          VP8LConvertBGRAToRGBA(__src, a2, __dst);
LABEL_32:
          v12 = WebPApplyAlphaMultiply;
          v13 = v4;
          v14 = 0;
LABEL_33:

          return v12(v13, v14, a2, 1, 0);
        }

        v9 = VP8LConvertBGRAToRGB565;
      }

      goto LABEL_37;
    }

    switch(a3)
    {
      case 8:
        memcpy(__dst, __src, 4 * a2);
        goto LABEL_32;
      case 9:
        if (a2 >= 1)
        {
          v10 = __dst;
          do
          {
            v11 = *v6++;
            *v10++ = bswap32(v11);
          }

          while (v6 < &__src[a2]);
        }

        v12 = WebPApplyAlphaMultiply;
        v13 = __dst;
        v14 = 1;
        goto LABEL_33;
      case 10:
        VP8LConvertBGRAToRGBA4444(__src, a2, __dst);
        v8 = WebPApplyAlphaMultiply4444;

        return (v8)(v4, a2, 1, 0);
    }

LABEL_40:
    VP8LConvertFromBGRA_cold_1();
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_40;
      }

      v9 = VP8LConvertBGRAToRGBA;
    }

    else
    {
      v9 = VP8LConvertBGRAToRGB;
    }

LABEL_37:

    return v9(__src, a2, v4);
  }

  if (a3 == 2)
  {
    v9 = VP8LConvertBGRAToBGR;
    goto LABEL_37;
  }

  if (a3 == 3)
  {

    return memcpy(__dst, __src, 4 * a2);
  }

  else if (a2 >= 1)
  {
    do
    {
      v7 = *v6++;
      *v4++ = bswap32(v7);
    }

    while (v6 < &__src[a2]);
  }

  return __src;
}

void VP8LDspInit()
{
  if (VP8LDspInit_VP8LDspInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    VP8LPredictors = VP8LPredictor0_C;
    qword_1EA8E17C0 = VP8LPredictor1_C;
    qword_1EA8E17C8 = VP8LPredictor2_C;
    qword_1EA8E17D0 = VP8LPredictor3_C;
    qword_1EA8E17D8 = VP8LPredictor4_C;
    qword_1EA8E17E0 = VP8LPredictor5_C;
    qword_1EA8E17E8 = VP8LPredictor6_C;
    qword_1EA8E17F0 = VP8LPredictor7_C;
    qword_1EA8E17F8 = VP8LPredictor8_C;
    qword_1EA8E1800 = VP8LPredictor9_C;
    qword_1EA8E1808 = VP8LPredictor10_C;
    qword_1EA8E1810 = VP8LPredictor11_C;
    qword_1EA8E1818 = VP8LPredictor12_C;
    qword_1EA8E1820 = VP8LPredictor13_C;
    unk_1EA8E1828 = VP8LPredictor0_C;
    qword_1EA8E1830 = VP8LPredictor0_C;
    VP8LPredictorsAdd = PredictorAdd0_C;
    qword_1EA8E1740 = PredictorAdd1_C;
    qword_1EA8E1748 = PredictorAdd2_C;
    qword_1EA8E1750 = PredictorAdd3_C;
    qword_1EA8E1758 = PredictorAdd4_C;
    qword_1EA8E1760 = PredictorAdd5_C;
    qword_1EA8E1768 = PredictorAdd6_C;
    qword_1EA8E1770 = PredictorAdd7_C;
    qword_1EA8E1778 = PredictorAdd8_C;
    qword_1EA8E1780 = PredictorAdd9_C;
    qword_1EA8E1788 = PredictorAdd10_C;
    qword_1EA8E1790 = PredictorAdd11_C;
    qword_1EA8E1798 = PredictorAdd12_C;
    qword_1EA8E17A0 = PredictorAdd13_C;
    unk_1EA8E17A8 = PredictorAdd0_C;
    qword_1EA8E17B0 = PredictorAdd0_C;
    VP8LPredictorsAdd_C = PredictorAdd0_C;
    off_1EA8E16C0 = PredictorAdd1_C;
    off_1EA8E16C8 = PredictorAdd2_C;
    off_1EA8E16D0 = PredictorAdd3_C;
    off_1EA8E16D8 = PredictorAdd4_C;
    off_1EA8E16E0 = PredictorAdd5_C;
    off_1EA8E16E8 = PredictorAdd6_C;
    off_1EA8E16F0 = PredictorAdd7_C;
    off_1EA8E16F8 = PredictorAdd8_C;
    off_1EA8E1700 = PredictorAdd9_C;
    off_1EA8E1708 = PredictorAdd10_C;
    off_1EA8E1710 = PredictorAdd11_C;
    off_1EA8E1718 = PredictorAdd12_C;
    off_1EA8E1720 = PredictorAdd13_C;
    qword_1EA8E1728 = PredictorAdd0_C;
    unk_1EA8E1730 = PredictorAdd0_C;
    VP8LConvertBGRAToRGBA4444 = VP8LConvertBGRAToRGBA4444_C;
    VP8LConvertBGRAToRGB565 = VP8LConvertBGRAToRGB565_C;
    VP8LMapColor32b = MapARGB_C;
    VP8LMapColor8b = MapAlpha_C;
    VP8LDspInitNEON();
    if (!VP8LAddGreenToBlueAndRed)
    {
      VP8LDspInit_cold_9();
    }

    if (!VP8LTransformColorInverse)
    {
      VP8LDspInit_cold_8();
    }

    if (!VP8LConvertBGRAToRGBA)
    {
      VP8LDspInit_cold_7();
    }

    if (!VP8LConvertBGRAToRGB)
    {
      VP8LDspInit_cold_6();
    }

    if (!VP8LConvertBGRAToBGR)
    {
      VP8LDspInit_cold_5();
    }

    if (!VP8LConvertBGRAToRGBA4444)
    {
      VP8LDspInit_cold_4();
    }

    if (!VP8LConvertBGRAToRGB565)
    {
      VP8LDspInit_cold_3();
    }

    if (!VP8LMapColor32b)
    {
      VP8LDspInit_cold_2();
    }

    if (!VP8LMapColor8b)
    {
      VP8LDspInit_cold_1();
    }

    VP8LDspInit_VP8LDspInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

int *PredictorAdd0_C(int *result, uint64_t a2, int a3, _DWORD *a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v5 = *result++;
      *a4++ = v5 - 0x1000000;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd1_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = a3;
    do
    {
      v6 = *result++;
      v4 = ((v6 & 0xFF00FF00) + (v4 & 0xFF00FF00)) & 0xFF00FF00 | ((v6 & 0xFF00FF) + (v4 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd2_C(int *result, int *a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd2_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      v5 = v6;
      v7 = *result++;
      *a4++ = ((v7 & 0xFF00FF00) + (v5 & 0xFF00FF00)) & 0xFF00FF00 | ((v7 & 0xFF00FF) + (v5 & 0xFF00FF)) & 0xFF00FF;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd3_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd3_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 + 4);
    v5 = a3;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *result++;
      *a4++ = ((v8 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd4_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd4_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 - 4);
    v5 = a3;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *result++;
      *a4++ = ((v8 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd5_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd5_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = (a2 + 4);
    v6 = a3;
    do
    {
      v7 = (((*v5 ^ v4) >> 1) & 0x7F7F7F7F) + (*v5 & v4);
      v8 = (((v7 ^ *(v5 - 1)) >> 1) & 0x7F7F7F7F) + (v7 & *(v5 - 1));
      v9 = *result++;
      v4 = ((v8 & 0xFF00FF00) + (v9 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v9 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      ++v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

int *PredictorAdd6_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd6_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 - 4);
    v5 = *(a4 - 1);
    v6 = a3;
    do
    {
      v7 = *v4++;
      v8 = (((v7 ^ v5) >> 1) & 0x7F7F7F7F) + (v7 & v5);
      v9 = *result++;
      v5 = ((v8 & 0xFF00FF00) + (v9 & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (v9 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

int *PredictorAdd7_C(int *result, int *a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd7_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    v5 = *(a4 - 1);
    do
    {
      v6 = *a2++;
      v7 = (((v6 ^ v5) >> 1) & 0x7F7F7F7F) + (v6 & v5);
      v8 = *result++;
      v5 = ((v7 & 0xFF00FF00) + (v8 & 0xFF00FF00)) & 0xFF00FF00 | ((v7 & 0xFF00FF) + (v8 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd8_C(int *result, _DWORD *a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd8_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v5 = (((*a2 ^ *(a2 - 1)) >> 1) & 0x7F7F7F7F) + (*a2 & *(a2 - 1));
      v6 = *result++;
      *a4++ = ((v5 & 0xFF00FF00) + (v6 & 0xFF00FF00)) & 0xFF00FF00 | ((v5 & 0xFF00FF) + (v6 & 0xFF00FF)) & 0xFF00FF;
      ++a2;
      --v4;
    }

    while (v4);
  }

  return result;
}

int *PredictorAdd9_C(int *result, uint64_t a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd9_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = (a2 + 4);
    v5 = a3;
    do
    {
      v6 = (((*v4 ^ *(v4 - 1)) >> 1) & 0x7F7F7F7F) + (*v4 & *(v4 - 1));
      v7 = *result++;
      *a4++ = ((v6 & 0xFF00FF00) + (v7 & 0xFF00FF00)) & 0xFF00FF00 | ((v6 & 0xFF00FF) + (v7 & 0xFF00FF)) & 0xFF00FF;
      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

int *PredictorAdd10_C(int *result, unsigned int *a2, int a3, unsigned int *a4)
{
  if (!a2)
  {
    PredictorAdd10_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = *(a4 - 1);
    v5 = a3;
    do
    {
      v6 = *(a2 - 1);
      v7 = *a2;
      v8 = a2[1];
      ++a2;
      v9 = (((v6 ^ v4) >> 1) & 0x7F7F7F7F) + (v6 & v4);
      v10 = (((v8 ^ v7) >> 1) & 0x7F7F7F7F) + (v8 & v7);
      v11 = (((v10 ^ v9) >> 1) & 0x7F7F7F7F) + (v10 & v9);
      v12 = *result++;
      v4 = ((v11 & 0xFF00FF00) + (v12 & 0xFF00FF00)) & 0xFF00FF00 | ((v11 & 0xFF00FF) + (v12 & 0xFF00FF)) & 0xFF00FF;
      *a4++ = v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t PredictorAdd11_C(uint64_t result, unsigned int *a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd11_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor11_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PredictorAdd12_C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd12_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor12_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      v4 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PredictorAdd13_C(uint64_t result, _DWORD *a2, int a3, uint64_t a4)
{
  if (!a2)
  {
    PredictorAdd13_C_cold_1();
  }

  if (a3 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = (a4 - 4);
    v7 = a3;
    do
    {
      result = VP8LPredictor13_C(v6, v4);
      v8 = *v5++;
      v6[1] = ((v8 & 0xFF00FF00) + (result & 0xFF00FF00)) & 0xFF00FF00 | ((v8 & 0xFF00FF) + (result & 0xFF00FF)) & 0xFF00FF;
      ++v6;
      ++v4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t MapARGB_C(uint64_t result, uint64_t a2, _DWORD *a3, int a4, int a5, int a6)
{
  if (a4 < a5)
  {
    do
    {
      if (a6 < 1)
      {
        v7 = result;
      }

      else
      {
        v6 = a6;
        do
        {
          v7 = result + 4;
          *a3++ = *(a2 + 4 * *(result + 1));
          result += 4;
          --v6;
        }

        while (v6);
      }

      ++a4;
      result = v7;
    }

    while (a4 != a5);
  }

  return result;
}

unsigned __int8 *MapAlpha_C(unsigned __int8 *result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (a4 < a5)
  {
    do
    {
      if (a6 >= 1)
      {
        v6 = a6;
        do
        {
          v7 = *result++;
          *a3++ = BYTE1(*(a2 + 4 * v7));
          --v6;
        }

        while (v6);
      }

      ++a4;
    }

    while (a4 != a5);
  }

  return result;
}

uint64_t VP8LColorCacheInit(uint64_t a1, int a2)
{
  if (!a1)
  {
    VP8LColorCacheInit_cold_2();
  }

  if (a2 <= 0)
  {
    VP8LColorCacheInit_cold_1();
  }

  result = malloc_type_calloc(1 << a2, 4uLL, 0x100004052888210uLL);
  *a1 = result;
  if (result)
  {
    *(a1 + 8) = 32 - a2;
    *(a1 + 12) = a2;
    return 1;
  }

  return result;
}

void VP8LColorCacheClear(void **a1)
{
  if (a1)
  {
    free(*a1);
    *a1 = 0;
  }
}

void *VP8LColorCacheCopy(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    VP8LColorCacheCopy_cold_3();
  }

  if (!a2)
  {
    VP8LColorCacheCopy_cold_2();
  }

  v2 = *(a1 + 12);
  if (v2 != *(a2 + 12))
  {
    VP8LColorCacheCopy_cold_1();
  }

  v3 = *a2;
  v4 = *a1;

  return memcpy(v3, v4, 4 << v2);
}

void *VP8LHtreeGroupsNew(int a1)
{
  result = malloc_type_malloc(568 * a1, 0x102004068DAEE82uLL);
  if (a1 > 0x10000)
  {
    if (result)
    {
      VP8LHtreeGroupsNew_cold_1();
    }
  }

  return result;
}

void VP8LHtreeGroupsFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t VP8LBuildHuffmanTable(uint64_t a1, int a2, int *a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = BuildHuffmanTable(0, a2, a3, a4, 0);
  if (a4 >= 2329)
  {
    VP8LBuildHuffmanTable_cold_1();
  }

  v9 = v8;
  if (a1 && v8)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);
    if (v11 + 4 * v8 >= (*v10 + 4 * v12))
    {
      v13 = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      if (v9 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      *(v13 + 6) = v15;
      v16 = malloc_type_malloc(4 * v15, 0x10000407B5B4437uLL);
      *v14 = v16;
      if (!v16)
      {
        free(v14);
        return 0;
      }

      v11 = v16;
      v14[1] = v16;
      v14[2] = 0;
      *(*(a1 + 32) + 16) = v14;
      *(a1 + 32) = v14;
    }

    if (a4 <= 512)
    {
      bzero(v20, 0x400uLL);
      BuildHuffmanTable(v11, a2, a3, a4, v20);
      return v9;
    }

    v17 = malloc_type_malloc((2 * a4), 0x1000040BDFB0063uLL);
    if (v17)
    {
      v18 = v17;
      BuildHuffmanTable(*(*(a1 + 32) + 8), a2, a3, a4, v17);
      free(v18);
      return v9;
    }

    return 0;
  }

  return v9;
}

uint64_t BuildHuffmanTable(uint64_t a1, int a2, int *a3, int a4, unsigned __int16 *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  memset(v67, 0, sizeof(v67));
  if (!a4)
  {
    BuildHuffmanTable_cold_6();
  }

  if (!a3)
  {
    BuildHuffmanTable_cold_5();
  }

  if ((a1 != 0) != (a5 != 0))
  {
    BuildHuffmanTable_cold_4();
  }

  if (a2 < 1)
  {
    BuildHuffmanTable_cold_3();
  }

  if (a4 < 1)
  {
    v9 = 0;
  }

  else
  {
    v5 = a4;
    v6 = a3;
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 > 15)
      {
        return 0;
      }

      ++*(v67 + v7);
      --v5;
    }

    while (v5);
    v9 = v67[0];
  }

  if (v9 == a4)
  {
    return 0;
  }

  v10 = (1 << a2);
  v66 = 0u;
  memset(v65, 0, sizeof(v65));
  DWORD1(v65[0]) = 0;
  v12 = v65 + 2;
  v13 = v67 + 1;
  v14 = -14;
  do
  {
    v16 = *v13++;
    v15 = v16;
    if (v16 > 1 << (v14 + 15))
    {
      return 0;
    }

    *v12 = *(v12 - 1) + v15;
    ++v12;
  }

  while (!__CFADD__(v14++, 1));
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v19 = a3[i];
      if (v19 >= 1)
      {
        v20 = *(v65 + v19);
        if (a5)
        {
          if (v20 >= a4)
          {
            return 0;
          }

          *(v65 + v19) = v20 + 1;
          a5[v20] = i;
        }

        else
        {
          *(v65 + v19) = v20 + 1;
        }
      }
    }
  }

  v21 = HIDWORD(v66);
  if (HIDWORD(v66) != 1)
  {
    v30 = 0;
    LODWORD(v31) = 0;
    v32 = v10 - 1;
    v33 = 2;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v35;
      v38 = *(v67 + v34);
      v35 = 2 * v35 - v38;
      if (v35 < 0)
      {
        return 0;
      }

      if (a1 && v38 >= 1)
      {
        if (((v33 - 1) & v10) != 0)
        {
          BuildHuffmanTable_cold_1();
        }

        v31 = v31;
        do
        {
          v39 = v34 | (a5[v31] << 16);
          v40 = 1 << a2;
          do
          {
            *(a1 + 4 * v30 + 4 * (v40 - v33)) = v39;
            v40 -= v33;
          }

          while (v40 > 0);
          v41 = 1 << (v34 - 1);
          do
          {
            v42 = v41;
            v41 >>= 1;
          }

          while ((v42 & v30) != 0);
          ++v31;
          v30 = ((v42 - 1) & v30) + v42;
          v43 = __OFSUB__(v38--, 1);
        }

        while (!((v38 < 0) ^ v43 | (v38 == 0)));
        *(v67 + v34) = 0;
      }

      v36 += 2 * v37;
      ++v34;
      v33 *= 2;
    }

    while (v34 != a2 + 1);
    if (a2 > 14)
    {
      v47 = 1 << a2;
    }

    else
    {
      v44 = 2;
      v45 = -1;
      v46 = a1;
      v47 = 1 << a2;
      v48 = a2;
      do
      {
        v49 = v48 + 1;
        v50 = *(v67 + v48 + 1);
        if (2 * v35 - v50 < 0)
        {
          return 0;
        }

        if (v50 > 0)
        {
          do
          {
            if ((v30 & v32) == v45)
            {
              if (a1)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v51 = 1 << (v49 - a2);
              v52 = v49 - a2;
              if (v48 != 14)
              {
                v53 = v48 + 1;
                v54 = 1 << (v49 - a2);
                while (1)
                {
                  v55 = v54 - *(v67 + v53);
                  if (v55 < 1)
                  {
                    break;
                  }

                  ++v53;
                  v54 = 2 * v55;
                  if (v53 == 15)
                  {
                    LOBYTE(v53) = 15;
                    break;
                  }
                }

                v52 = v53 - a2;
                v51 = 1 << (v53 - a2);
              }

              v47 += v51;
              if (a1)
              {
                v46 += 4 * v10;
                v56 = v52 + a2;
                v57 = a1 + 4 * (v30 & v32);
                *v57 = v56;
                *(v57 + 2) = ((v46 - a1) >> 2) - (v30 & v32);
                LODWORD(v10) = v51;
                v45 = v30 & v32;
LABEL_69:
                if ((v10 & (v44 - 1)) != 0)
                {
                  BuildHuffmanTable_cold_1();
                }

                v58 = v31 + 1;
                v59 = (v49 - a2) | (a5[v31] << 16);
                v60 = v10;
                do
                {
                  *(v46 + 4 * (v30 >> a2) + 4 * (v60 - v44)) = v59;
                  v60 -= v44;
                }

                while (v60 > 0);
                LODWORD(v31) = v58;
                goto LABEL_74;
              }

              LODWORD(v10) = v51;
              v45 = v30 & v32;
            }

LABEL_74:
            v61 = 1 << v48;
            do
            {
              v62 = v61;
              v61 >>= 1;
            }

            while ((v62 & v30) != 0);
            v30 = ((v62 - 1) & v30) + v62;
            v63 = *(v67 + v49);
            v43 = __OFSUB__(v63--, 1);
            *(v67 + v49) = v63;
          }

          while (!((v63 < 0) ^ v43 | (v63 == 0)));
        }

        v36 += 2 * v35;
        v35 = 2 * v35 - v50;
        v44 *= 2;
      }

      while (v48++ < 14);
      v21 = HIDWORD(v66);
    }

    if (v36 == 2 * v21 - 1)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  if (a5)
  {
    v22 = 0;
    if (v10 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v10;
    }

    v24 = vdupq_n_s64(v23 - 1);
    v25 = *a5 << 16;
    v26 = (v23 + 3) & 0xFFFFFFFC;
    v27 = (a1 + 4 * v10 - 8);
    do
    {
      v28 = vdupq_n_s64(v22);
      v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_186205EC0)));
      if (vuzp1_s16(v29, *v24.i8).u8[0])
      {
        v27[1] = v25;
      }

      if (vuzp1_s16(v29, *&v24).i8[2])
      {
        *v27 = v25;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_186205EB0)))).i32[1])
      {
        *(v27 - 1) = v25;
        *(v27 - 2) = v25;
      }

      v22 += 4;
      v27 -= 4;
    }

    while (v26 != v22);
  }

  return v10;
}

uint64_t VP8LHuffmanTablesAllocate(int a1, uint64_t a2)
{
  *(a2 + 32) = a2;
  *(a2 + 16) = 0;
  result = malloc_type_malloc(4 * a1, 0x10000407B5B4437uLL);
  *a2 = result;
  if (result)
  {
    *(a2 + 8) = result;
    *(a2 + 24) = a1;
    return 1;
  }

  return result;
}

void VP8LHuffmanTablesDeallocate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    free(*a1);
    *a1 = 0;
    *(a1 + 16) = 0;
    if (v2)
    {
      do
      {
        v3 = *(v2 + 16);
        free(*v2);
        free(v2);
        v2 = v3;
      }

      while (v3);
    }
  }
}

uint64_t WebPFlipBuffer(int32x2_t *a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = a1[1].i32[0];
  v2 = a1[2];
  if (a1->i32[0] <= 0xAu)
  {
    v9 = 0;
    v11 = a1[3].i32[0];
    a1[2] = (*&v2 + (v1 - 1) * v11);
    a1[3].i32[0] = -v11;
  }

  else
  {
    v3 = v1 - 1;
    v4 = a1[6];
    v5 = a1[4];
    v6 = *&a1[3] + (v3 >> 1) * v4.i32[1];
    a1[2] = (*&v2 + v3 * v4.i32[0]);
    a1[3] = v6;
    a1[6] = vneg_s32(v4);
    v7 = a1[7].i32[0];
    a1[4] = (*&v5 + (v3 >> 1) * v7);
    a1[7].i32[0] = -v7;
    v8 = a1[5];
    v9 = 0;
    if (v8)
    {
      v10 = a1[7].i32[1];
      a1[5] = (*&v8 + v3 * v10);
      a1[7].i32[1] = -v10;
    }
  }

  return v9;
}

uint64_t WebPAllocateDecBuffer(int a1, int a2, _DWORD *a3, int32x2_t *a4)
{
  v6 = 2;
  if (a2 < 1)
  {
    return v6;
  }

  if (a1 < 1)
  {
    return v6;
  }

  v27 = v4;
  v28 = v5;
  if (!a4)
  {
    return v6;
  }

  if (a3)
  {
    if (a3[2])
    {
      v9 = a3[5];
      v10 = a3[6];
      if (!WebPCheckCropDimensions(a1, a2, a3[3] & 0xFFFFFFFE, a3[4] & 0xFFFFFFFE, v9, v10))
      {
        return 2;
      }

      a2 = v10;
      a1 = v9;
    }

    if (a3[7])
    {
      v11 = a3[8];
      v25 = a3[9];
      v26 = v11;
      if (!WebPRescalerGetScaledDimensions(a1, a2, &v26, &v25))
      {
        return 2;
      }

      a2 = v25;
      a1 = v26;
    }
  }

  a4->i32[1] = a1;
  a4[1].i32[0] = a2;
  v6 = 2;
  if (a1 < 1)
  {
    return v6;
  }

  if (a2 < 1)
  {
    return v6;
  }

  v12 = a4->u32[0];
  if (v12 > 0xC)
  {
    return v6;
  }

  if (a4[1].i32[1] > 0 || *&a4[14])
  {
    goto LABEL_16;
  }

  v14 = kModeBpp[v12];
  if ((kModeBpp[v12] * a1) >> 31)
  {
    return 2;
  }

  v16 = a1 * v14;
  v17 = (a1 * v14) * a2;
  v18 = a1 * a2;
  if (v12 == 12)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  if (v12 != 12)
  {
    v18 = 0;
  }

  if (v12 >= 0xB)
  {
    v20 = (a1 + 1) >> 1;
  }

  else
  {
    v20 = 0;
  }

  if (v12 >= 0xB)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if (v12 >= 0xB)
  {
    v22 = ((a1 + 1) >> 1) * ((a2 + 1) >> 1);
  }

  else
  {
    v22 = 0;
  }

  if (v12 >= 0xB)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  v24 = malloc_type_malloc(v17 + 2 * v22 + v23, 0x100004077774924uLL);
  if (!v24)
  {
    return 1;
  }

  a4[14] = v24;
  a4[2] = v24;
  if (v12 < 0xB)
  {
    a4[3].i32[0] = v16;
    a4[4] = v17;
  }

  else
  {
    a4[6].i32[0] = v16;
    a4[6].i32[1] = v20;
    a4[8] = v17;
    a4[9] = v22;
    a4[3] = &v24[v17];
    a4[4] = &v24[v17 + v22];
    a4[7].i32[0] = v20;
    a4[10] = v22;
    if (v12 == 12)
    {
      a4[5] = &v24[2 * v22 + v17];
    }

    a4[11] = v23;
    a4[7].i32[1] = v21;
  }

LABEL_16:
  v13 = CheckDecBuffer(a4);
  v6 = v13;
  if (a3)
  {
    if (!v13)
    {
      v6 = a3[12];
      if (v6)
      {
        return WebPFlipBuffer(a4);
      }
    }
  }

  return v6;
}

uint64_t WebPInitDecBufferInternal(uint64_t a1, int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0xFFFFFF00) == 0x200)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    v2 = 1;
    *a1 = 0u;
  }

  return v2;
}

void WebPFreeDecBuffer(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 12) <= 0)
    {
      free(*(a1 + 112));
    }

    *(a1 + 112) = 0;
  }
}

uint64_t WebPCopyDecBufferPixels(unsigned int *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    WebPCopyDecBufferPixels_cold_2();
  }

  v4 = *a1;
  if (v4 != *a2)
  {
    WebPCopyDecBufferPixels_cold_1();
  }

  v6 = a1[1];
  v5 = a1[2];
  *(a2 + 4) = v6;
  *(a2 + 8) = v5;
  if (CheckDecBuffer(a2))
  {
    return 2;
  }

  v8 = *(a1 + 2);
  v9 = *(a2 + 16);
  if (v4 <= 0xA)
  {
    v11 = a1[6];
    v12 = *(a2 + 24);
    v13 = v6 * kModeBpp[v4];
    v14 = v5;
  }

  else
  {
    WebPCopyPlane(v8, a1[12], v9, *(a2 + 48), v6, v5);
    WebPCopyPlane(*(a1 + 3), a1[13], *(a2 + 24), *(a2 + 52), (a1[1] + 1) / 2, (a1[2] + 1) / 2);
    WebPCopyPlane(*(a1 + 4), a1[14], *(a2 + 32), *(a2 + 56), (a1[1] + 1) / 2, (a1[2] + 1) / 2);
    v10 = *a1;
    if ((*a1 > 0xC || ((1 << v10) & 0x103A) == 0) && (v10 - 11) < 0xFFFFFFFC)
    {
      return 0;
    }

    v8 = *(a1 + 5);
    v11 = a1[15];
    v9 = *(a2 + 40);
    v12 = *(a2 + 60);
    v13 = a1[1];
    v14 = a1[2];
  }

  WebPCopyPlane(v8, v11, v9, v12, v13, v14);
  return 0;
}

uint64_t CheckDecBuffer(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0xC)
  {
    return 2;
  }

  v3 = a1[1];
  v4 = a1[2];
  if (v1 < 0xB)
  {
    LODWORD(v24) = a1[6];
    if (v24 >= 0)
    {
      v24 = v24;
    }

    else
    {
      v24 = -v24;
    }

    v25 = kModeBpp[v1];
    v26 = v24 * (v4 - 1) + v25 * v3;
    v27 = v3 * v25;
    if (v26 > *(a1 + 4) || v24 < v27 || *(a1 + 2) == 0)
    {
      return 2;
    }
  }

  else
  {
    v5 = (v3 + 1) / 2;
    v6 = (v4 + 1) / 2;
    LODWORD(v7) = a1[12];
    if (v7 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = -v7;
    }

    v8 = v4 - 1;
    v9 = v6 - 1;
    v10 = vabs_s32(*(a1 + 13));
    v11 = v10.u32[0] * v9 + v5;
    v12 = v10.u32[1] * v9 + v5;
    v16 = (v3 + v7 * v8) <= *(a1 + 8) && v11 <= *(a1 + 9) && v12 <= *(a1 + 10) && v7 >= v3;
    v17 = vcge_s32(v10, vdup_n_s32(v5));
    v18 = v17.i32[1] & v17.i32[0] & v16;
    if (!*(a1 + 2))
    {
      v18 = 0;
    }

    if (!*(a1 + 3))
    {
      v18 = 0;
    }

    if (!*(a1 + 4))
    {
      v18 = 0;
    }

    if (v1 == 12)
    {
      LODWORD(v19) = a1[15];
      if (v19 >= 0)
      {
        v19 = v19;
      }

      else
      {
        v19 = -v19;
      }

      v20 = v3 + v19 * v8;
      v23 = v19 >= v3 && v20 <= *(a1 + 11) && *(a1 + 5) != 0;
      if ((v18 & v23 & 1) == 0)
      {
        return 2;
      }
    }

    else if ((v18 & 1) == 0)
    {
      return 2;
    }
  }

  return 0;
}

BOOL WebPAvoidSlowMemory(_DWORD *a1, uint64_t a2)
{
  if (!a1)
  {
    WebPAvoidSlowMemory_cold_1();
  }

  if (a1[3] < 2)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    if ((*a1 - 7) <= 3)
    {
      return *(a2 + 8) != 0;
    }
  }

  return result;
}

uint64_t VP8ParseQuant(uint64_t a1)
{
  Value = VP8GetValue(a1 + 16, 7);
  if (VP8GetValue(a1 + 16, 1))
  {
    SignedValue = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    SignedValue = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v4 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v4 = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v5 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v5 = 0;
  }

  if (VP8GetValue(a1 + 16, 1))
  {
    v6 = VP8GetSignedValue(a1 + 16, 4);
  }

  else
  {
    v6 = 0;
  }

  result = VP8GetValue(a1 + 16, 1);
  if (result)
  {
    result = VP8GetSignedValue(a1 + 16, 4);
  }

  v8 = 144;
  v9 = *(a1 + 132);
  v10 = a1 + 1060;
  do
  {
    if (v9)
    {
      if (*(a1 + 140))
      {
        v11 = 0;
      }

      else
      {
        v11 = Value;
      }

      v12 = v11 + *(a1 + v8);
    }

    else
    {
      v12 = Value;
      if (v8 != 144)
      {
        v26 = *(a1 + 1076);
        *v10 = *(a1 + 1060);
        *(v10 + 16) = v26;
        goto LABEL_40;
      }
    }

    v13 = v12 + SignedValue;
    if (v12 + SignedValue >= 127)
    {
      v13 = 127;
    }

    v14 = kDcTable[v13 & ~(v13 >> 31)];
    if (v12 >= 127)
    {
      v15 = 127;
    }

    else
    {
      v15 = v12;
    }

    v16 = kAcTable[v15 & ~(v15 >> 31)];
    *v10 = v14;
    *(v10 + 4) = v16;
    v17 = v12 + v4;
    if (v12 + v4 >= 127)
    {
      v17 = 127;
    }

    if (v12 + v5 >= 127)
    {
      v18 = 127;
    }

    else
    {
      v18 = v12 + v5;
    }

    v19 = 2 * kDcTable[v17 & ~(v17 >> 31)];
    v20 = (101581 * kAcTable[v18 & ~(v18 >> 31)]) >> 16;
    if (v12 + v5 < 2)
    {
      v20 = 8;
    }

    *(v10 + 8) = v19;
    *(v10 + 12) = v20;
    v21 = v12 + v6;
    if (v12 + v6 >= 117)
    {
      v21 = 117;
    }

    v22 = kDcTable[v21 & ~(v21 >> 31)];
    v23 = v12 + result;
    if (v23 >= 127)
    {
      v24 = 127;
    }

    else
    {
      v24 = v23;
    }

    v25 = kAcTable[v24 & ~(v24 >> 31)];
    *(v10 + 16) = v22;
    *(v10 + 20) = v25;
    *(v10 + 24) = v23;
LABEL_40:
    v10 += 32;
    ++v8;
  }

  while (v8 != 148);
  return result;
}

void WebPInitUpsamplersNEON()
{
  qword_1EA8E14B8 = UpsampleRgbaLinePair_NEON;
  qword_1EA8E14C8 = UpsampleBgraLinePair_NEON;
  qword_1EA8E14E8 = UpsampleRgbaLinePair_NEON;
  qword_1EA8E14F0 = UpsampleBgraLinePair_NEON;
  WebPUpsamplers = UpsampleRgbLinePair_NEON;
  qword_1EA8E14C0 = UpsampleBgrLinePair_NEON;
  qword_1EA8E14D0 = UpsampleArgbLinePair_NEON;
  qword_1EA8E14F8 = UpsampleArgbLinePair_NEON;
  qword_1EA8E14E0 = UpsampleRgb565LinePair_NEON;
  qword_1EA8E14D8 = UpsampleRgba4444LinePair_NEON;
  qword_1EA8E1500 = UpsampleRgba4444LinePair_NEON;
}

uint64_t UpsampleRgbaLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v162 = *MEMORY[0x1E69E9840];
  v160 = 0u;
  memset(v161, 0, 31);
  v158 = 0u;
  v159 = 0u;
  if (!a1)
  {
    UpsampleRgbaLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = ((v15 - 1) >> 3);
  v154 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = 1;
  LODWORD(v15) = *a3;
  v17 = *a5;
  v18 = ((v17 + v15) >> 1) + 1;
  v19 = *a4;
  v20 = *a6;
  v21 = ((v20 + v19) >> 1) + 1;
  v22 = (v18 + v15) >> 1;
  v23 = (v21 + v19) >> 1;
  v24 = (19077 * *a1) >> 8;
  v25 = v24 + ((26149 * v23) >> 8);
  if (v25 >= 0x379A)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (v25 - 14234 >= 0x4000)
  {
    v27 = v26;
  }

  else
  {
    v27 = (v25 - 14234) >> 6;
  }

  *a7 = v27;
  v28 = v24 - (((13320 * v23) >> 8) + ((6419 * v22) >> 8));
  v29 = v28 + 8708;
  v30 = (v28 + 8708) >> 6;
  if (v28 >= -8708)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v29 < 0x4000)
  {
    v31 = v30;
  }

  a7[1] = v31;
  v32 = v24 + ((33050 * v22) >> 8);
  v33 = v32 - 17685;
  v34 = (v32 - 17685) >> 6;
  if (v32 >= 0x4515)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  if (v33 < 0x4000)
  {
    v35 = v34;
  }

  a7[2] = v35;
  a7[3] = -1;
  if (a2)
  {
    v36 = (v18 + v17) >> 1;
    v37 = (v21 + v20) >> 1;
    v38 = (19077 * *a2) >> 8;
    v39 = v38 + ((26149 * v37) >> 8);
    v40 = v39 - 14234;
    v41 = (v39 - 14234) >> 6;
    if (v39 >= 0x379A)
    {
      v42 = -1;
    }

    else
    {
      v42 = 0;
    }

    if (v40 < 0x4000)
    {
      v42 = v41;
    }

    *a8 = v42;
    v43 = v38 - (((13320 * v37) >> 8) + ((6419 * v36) >> 8));
    v44 = v43 + 8708;
    v45 = (v43 + 8708) >> 6;
    if (v43 >= -8708)
    {
      v46 = -1;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    a8[1] = v46;
    v47 = v38 + ((33050 * v36) >> 8);
    v48 = v47 - 17685;
    v49 = (v47 - 17685) >> 6;
    if (v47 >= 0x4515)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    a8[2] = v50;
    a8[3] = -1;
  }

  v155 = v155 & 0xF | (16 * v16);
  if (v16 >= 1)
  {
    v51 = 0;
    v53 = vdupq_n_s16(0x11Au);
    v54 = vdupq_n_s16(0xC866u);
    v55 = vdupq_n_s16(0x2204u);
    v56 = vdupq_n_s16(0xBAEBu);
    v58 = -1;
    do
    {
      v59 = 0;
      v60 = *(a3 + 1);
      v61 = *(v12 + 1);
      v62 = vaddl_u8(v61, *a3);
      v63 = vaddl_u8(*v12, v60);
      v64 = vaddq_s16(v62, v63);
      *v62.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v62, v62)), 3uLL);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vrhadd_u8(*a3, *v63.i8);
      v65 = vrhadd_u8(v60, *v62.i8);
      v165.val[0] = vrhadd_u8(*v12, *v62.i8);
      v165.val[1] = vrhadd_u8(v61, *v63.i8);
      vst2_s8(&v158, v64);
      vst2_s8(&v160, v165);
      v165.val[1] = *(v13 + 1);
      v66 = *(v11 + 1);
      v67 = vaddl_u8(v66, *v13);
      v68 = vaddl_u8(*v11, v165.val[1]);
      v69 = vaddq_s16(v67, v68);
      *v67.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v67, v67)), 3uLL);
      *v68.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v68, v68)), 3uLL);
      *v69.i8 = vrhadd_u8(*v13, *v68.i8);
      v70 = vrhadd_u8(v165.val[1], *v67.i8);
      v165.val[0] = vrhadd_u8(*v11, *v67.i8);
      v52 = &v159;
      vst2_s8(v52, v69);
      v165.val[1] = vrhadd_u8(v66, *v68.i8);
      v57 = v161;
      vst2_s8(v57, v165);
      v71 = 1;
      v72 = (16 * v51) | 1;
      do
      {
        v73 = 4 * (v59 | v72);
        v74 = *&a1[v72 + v59];
        v75 = (&v158 + v59);
        v76 = vshll_n_u8(*v75, 7uLL);
        v77 = vshll_n_u8(v75[2], 7uLL);
        v78 = vqdmulhq_lane_s16(vshll_n_u8(v74, 7uLL), 0x3408191366254A85, 0);
        v79 = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v77, 0x3408191366254A85, 1), vqaddq_s16(v78, v54)), 6uLL);
        v80 = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v78, v55), vqaddq_s16(vqdmulhq_lane_s16(v76, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v77, 0x3408191366254A85, 3))), 6uLL);
        v81 = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v76, v53), vqaddq_s16(v78, v56)), v76), 6uLL);
        v82 = &a7[v73 & 0xFFFFFFE4];
        vst4_s8(v82, *(&v58 - 3));
        LOBYTE(v73) = v71;
        v59 = 8;
        v71 = 0;
      }

      while ((v73 & 1) != 0);
      if (a2)
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = 4 * (v83 | v72);
          v86 = *&a2[v72 + v83];
          v87 = &v161[v83 - 16];
          v88 = vshll_n_u8(*v87, 7uLL);
          v89 = vshll_n_u8(v87[2], 7uLL);
          v90 = vqdmulhq_lane_s16(vshll_n_u8(v86, 7uLL), 0x3408191366254A85, 0);
          v166.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v89, 0x3408191366254A85, 1), vqaddq_s16(v90, v54)), 6uLL);
          v166.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v90, v55), vqaddq_s16(vqdmulhq_lane_s16(v88, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v89, 0x3408191366254A85, 3))), 6uLL);
          v166.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v88, v53), vqaddq_s16(v90, v56)), v88), 6uLL);
          v166.val[3] = -1;
          v91 = &a8[v85 & 0xFFFFFFE4];
          vst4_s8(v91, v166);
          LOBYTE(v85) = v84;
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v51;
    }

    while (v51 != v16);
  }

  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v92 = 9 - v154;
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v93 = *(v156 + 1);
  v94 = vaddl_u8(*(v156 + 1), v157[0]);
  v95 = vaddl_u8(v156[0], *(v157 + 1));
  v96 = vaddq_s16(v94, v95);
  *v94.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v94, v94)), 3uLL);
  *v95.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v95, v95)), 3uLL);
  *v96.i8 = vrhadd_u8(v157[0], *v95.i8);
  v97 = vrhadd_u8(*(v157 + 1), *v94.i8);
  v163.val[0] = vrhadd_u8(v156[0], *v94.i8);
  v98 = &v158;
  vst2_s8(v98, v96);
  v163.val[1] = vrhadd_u8(v93, *v95.i8);
  v100 = &v160;
  vst2_s8(v100, v163);
  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  result = memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v102 = *(v156 + 1);
  v103 = vaddl_u8(*(v156 + 1), v157[0]);
  v104 = vaddl_u8(v156[0], *(v157 + 1));
  v105 = vaddq_s16(v103, v104);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vrhadd_u8(v157[0], *v104.i8);
  v106 = vrhadd_u8(*(v157 + 1), *v103.i8);
  v164.val[0] = vrhadd_u8(v156[0], *v103.i8);
  v99 = &v159;
  vst2_s8(v99, v105);
  v164.val[1] = vrhadd_u8(v102, *v104.i8);
  v107 = v161;
  vst2_s8(v107, v164);
  v108 = (a9 - v155);
  if (v108 >= 1)
  {
    v109 = &a1[v155];
    v110 = 16 * v16;
    v111 = &v159;
    v112 = &a7[64 * v16 + 7];
    result = 255;
    v113 = (a9 - v155);
    do
    {
      v115 = *v109++;
      v114 = v115;
      v116 = *(v111 - 16);
      v118 = *v111++;
      v117 = v118;
      v119 = 19077 * v114;
      v120 = ((26149 * v118) >> 8) + (v119 >> 8);
      v121 = v120 - 14234;
      v122 = (v120 - 14234) >> 6;
      if (v120 >= 0x379A)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v112 - 3) = v123;
      v124 = (v119 >> 8) - (((6419 * v116) >> 8) + ((13320 * v117) >> 8));
      v125 = v124 + 8708;
      v126 = (v124 + 8708) >> 6;
      if (v124 >= -8708)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *(v112 - 2) = v127;
      v128 = ((33050 * v116) >> 8) + (v119 >> 8);
      v129 = v128 - 17685;
      v130 = (v128 - 17685) >> 6;
      if (v128 >= 0x4515)
      {
        v131 = -1;
      }

      else
      {
        v131 = 0;
      }

      if (v129 < 0x4000)
      {
        v131 = v130;
      }

      *(v112 - 1) = v131;
      *v112 = -1;
      v112 += 4;
      --v113;
    }

    while (v113);
    if (a2)
    {
      v132 = v161;
      v133 = &a2[v155];
      v134 = &a8[4 * v110 + 7];
      result = 13320;
      do
      {
        v136 = *v133++;
        v135 = v136;
        v137 = *(v132 - 16);
        v139 = *v132++;
        v138 = v139;
        v140 = 19077 * v135;
        v141 = ((26149 * v139) >> 8) + (v140 >> 8);
        v142 = v141 - 14234;
        v143 = (v141 - 14234) >> 6;
        if (v141 >= 0x379A)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v134 - 3) = v144;
        v145 = (v140 >> 8) - (((6419 * v137) >> 8) + ((13320 * v138) >> 8));
        v146 = v145 + 8708;
        v147 = (v145 + 8708) >> 6;
        if (v145 >= -8708)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *(v134 - 2) = v148;
        v149 = ((33050 * v137) >> 8) + (v140 >> 8);
        v150 = v149 - 17685;
        v151 = (v149 - 17685) >> 6;
        if (v149 >= 0x4515)
        {
          v152 = -1;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        *(v134 - 1) = v152;
        *v134 = -1;
        v134 += 4;
        --v108;
      }

      while (v108);
    }
  }

  return result;
}

uint64_t UpsampleBgraLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v162 = *MEMORY[0x1E69E9840];
  v160 = 0u;
  memset(v161, 0, 31);
  v158 = 0u;
  v159 = 0u;
  if (!a1)
  {
    UpsampleBgraLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = ((v15 - 1) >> 3);
  v154 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v155 = 1;
  LODWORD(v15) = *a3;
  v17 = *a5;
  v18 = ((v17 + v15) >> 1) + 1;
  v19 = *a4;
  v20 = *a6;
  v21 = ((v20 + v19) >> 1) + 1;
  v22 = (v18 + v15) >> 1;
  v23 = (v21 + v19) >> 1;
  v24 = (19077 * *a1) >> 8;
  v25 = v24 + ((33050 * v22) >> 8);
  if (v25 >= 0x4515)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (v25 - 17685 >= 0x4000)
  {
    v27 = v26;
  }

  else
  {
    v27 = (v25 - 17685) >> 6;
  }

  *a7 = v27;
  v28 = v24 - (((13320 * v23) >> 8) + ((6419 * v22) >> 8));
  v29 = v28 + 8708;
  v30 = (v28 + 8708) >> 6;
  if (v28 >= -8708)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v29 < 0x4000)
  {
    v31 = v30;
  }

  a7[1] = v31;
  v32 = v24 + ((26149 * v23) >> 8);
  v33 = v32 - 14234;
  v34 = (v32 - 14234) >> 6;
  if (v32 >= 0x379A)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  if (v33 < 0x4000)
  {
    v35 = v34;
  }

  a7[2] = v35;
  a7[3] = -1;
  if (a2)
  {
    v36 = (v18 + v17) >> 1;
    v37 = (v21 + v20) >> 1;
    v38 = (19077 * *a2) >> 8;
    v39 = v38 + ((33050 * v36) >> 8);
    v40 = v39 - 17685;
    v41 = (v39 - 17685) >> 6;
    if (v39 >= 0x4515)
    {
      v42 = -1;
    }

    else
    {
      v42 = 0;
    }

    if (v40 < 0x4000)
    {
      v42 = v41;
    }

    *a8 = v42;
    v43 = v38 - (((13320 * v37) >> 8) + ((6419 * v36) >> 8));
    v44 = v43 + 8708;
    v45 = (v43 + 8708) >> 6;
    if (v43 >= -8708)
    {
      v46 = -1;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    a8[1] = v46;
    v47 = v38 + ((26149 * v37) >> 8);
    v48 = v47 - 14234;
    v49 = (v47 - 14234) >> 6;
    if (v47 >= 0x379A)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    a8[2] = v50;
    a8[3] = -1;
  }

  v155 = v155 & 0xF | (16 * v16);
  if (v16 >= 1)
  {
    v51 = 0;
    v53 = vdupq_n_s16(0x11Au);
    v54 = vdupq_n_s16(0xC866u);
    v55 = vdupq_n_s16(0x2204u);
    v56 = vdupq_n_s16(0xBAEBu);
    v58 = -1;
    do
    {
      v59 = 0;
      v60 = *(a3 + 1);
      v61 = *(v12 + 1);
      v62 = vaddl_u8(v61, *a3);
      v63 = vaddl_u8(*v12, v60);
      v64 = vaddq_s16(v62, v63);
      *v62.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v62, v62)), 3uLL);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v64, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vrhadd_u8(*a3, *v63.i8);
      v65 = vrhadd_u8(v60, *v62.i8);
      v165.val[0] = vrhadd_u8(*v12, *v62.i8);
      v165.val[1] = vrhadd_u8(v61, *v63.i8);
      vst2_s8(&v158, v64);
      vst2_s8(&v160, v165);
      v165.val[1] = *(v13 + 1);
      v66 = *(v11 + 1);
      v67 = vaddl_u8(v66, *v13);
      v68 = vaddl_u8(*v11, v165.val[1]);
      v69 = vaddq_s16(v67, v68);
      *v67.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v67, v67)), 3uLL);
      *v68.i8 = vshrn_n_s16(vaddq_s16(v69, vaddq_s16(v68, v68)), 3uLL);
      *v69.i8 = vrhadd_u8(*v13, *v68.i8);
      v70 = vrhadd_u8(v165.val[1], *v67.i8);
      v165.val[0] = vrhadd_u8(*v11, *v67.i8);
      v52 = &v159;
      vst2_s8(v52, v69);
      v165.val[1] = vrhadd_u8(v66, *v68.i8);
      v57 = v161;
      vst2_s8(v57, v165);
      v71 = 1;
      v72 = (16 * v51) | 1;
      do
      {
        v73 = 4 * (v59 | v72);
        v74 = *&a1[v72 + v59];
        v75 = (&v158 + v59);
        v76 = vshll_n_u8(*v75, 7uLL);
        v77 = vshll_n_u8(v75[2], 7uLL);
        v78 = vqdmulhq_lane_s16(vshll_n_u8(v74, 7uLL), 0x3408191366254A85, 0);
        v79 = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v77, 0x3408191366254A85, 1), vqaddq_s16(v78, v54)), 6uLL);
        v80 = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v78, v55), vqaddq_s16(vqdmulhq_lane_s16(v76, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v77, 0x3408191366254A85, 3))), 6uLL);
        v81 = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v76, v53), vqaddq_s16(v78, v56)), v76), 6uLL);
        v82 = &a7[v73 & 0xFFFFFFE4];
        vst4_s8(v82, *(&v58 - 3));
        LOBYTE(v73) = v71;
        v59 = 8;
        v71 = 0;
      }

      while ((v73 & 1) != 0);
      if (a2)
      {
        v83 = 0;
        v84 = 1;
        do
        {
          v85 = 4 * (v83 | v72);
          v86 = *&a2[v72 + v83];
          v87 = &v161[v83 - 16];
          v88 = vshll_n_u8(*v87, 7uLL);
          v89 = vshll_n_u8(v87[2], 7uLL);
          v90 = vqdmulhq_lane_s16(vshll_n_u8(v86, 7uLL), 0x3408191366254A85, 0);
          v166.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v89, 0x3408191366254A85, 1), vqaddq_s16(v90, v54)), 6uLL);
          v166.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v90, v55), vqaddq_s16(vqdmulhq_lane_s16(v88, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v89, 0x3408191366254A85, 3))), 6uLL);
          v166.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v88, v53), vqaddq_s16(v90, v56)), v88), 6uLL);
          v166.val[3] = -1;
          v91 = &a8[v85 & 0xFFFFFFE4];
          vst4_s8(v91, v166);
          LOBYTE(v85) = v84;
          v83 = 8;
          v84 = 0;
        }

        while ((v85 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v51;
    }

    while (v51 != v16);
  }

  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v92 = 9 - v154;
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v93 = *(v156 + 1);
  v94 = vaddl_u8(*(v156 + 1), v157[0]);
  v95 = vaddl_u8(v156[0], *(v157 + 1));
  v96 = vaddq_s16(v94, v95);
  *v94.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v94, v94)), 3uLL);
  *v95.i8 = vshrn_n_s16(vaddq_s16(v96, vaddq_s16(v95, v95)), 3uLL);
  *v96.i8 = vrhadd_u8(v157[0], *v95.i8);
  v97 = vrhadd_u8(*(v157 + 1), *v94.i8);
  v163.val[0] = vrhadd_u8(v156[0], *v94.i8);
  v98 = &v158;
  vst2_s8(v98, v96);
  v163.val[1] = vrhadd_u8(v93, *v95.i8);
  v100 = &v160;
  vst2_s8(v100, v163);
  memset(v157, 0, 9);
  memset(v156, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v157 + v154, v157[0].u8[(v154 - 1)], v92);
  result = memset(v156 + v154, v156[0].u8[(v154 - 1)], v92);
  v102 = *(v156 + 1);
  v103 = vaddl_u8(*(v156 + 1), v157[0]);
  v104 = vaddl_u8(v156[0], *(v157 + 1));
  v105 = vaddq_s16(v103, v104);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vrhadd_u8(v157[0], *v104.i8);
  v106 = vrhadd_u8(*(v157 + 1), *v103.i8);
  v164.val[0] = vrhadd_u8(v156[0], *v103.i8);
  v99 = &v159;
  vst2_s8(v99, v105);
  v164.val[1] = vrhadd_u8(v102, *v104.i8);
  v107 = v161;
  vst2_s8(v107, v164);
  v108 = (a9 - v155);
  if (v108 >= 1)
  {
    v109 = &a1[v155];
    v110 = 16 * v16;
    v111 = &v159;
    v112 = &a7[64 * v16 + 7];
    result = 255;
    v113 = (a9 - v155);
    do
    {
      v115 = *v109++;
      v114 = v115;
      v116 = *(v111 - 16);
      v118 = *v111++;
      v117 = v118;
      v119 = 19077 * v114;
      v120 = ((33050 * v116) >> 8) + (v119 >> 8);
      v121 = v120 - 17685;
      v122 = (v120 - 17685) >> 6;
      if (v120 >= 0x4515)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v112 - 3) = v123;
      v124 = (v119 >> 8) - (((6419 * v116) >> 8) + ((13320 * v117) >> 8));
      v125 = v124 + 8708;
      v126 = (v124 + 8708) >> 6;
      if (v124 >= -8708)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *(v112 - 2) = v127;
      v128 = ((26149 * v117) >> 8) + (v119 >> 8);
      v129 = v128 - 14234;
      v130 = (v128 - 14234) >> 6;
      if (v128 >= 0x379A)
      {
        v131 = -1;
      }

      else
      {
        v131 = 0;
      }

      if (v129 < 0x4000)
      {
        v131 = v130;
      }

      *(v112 - 1) = v131;
      *v112 = -1;
      v112 += 4;
      --v113;
    }

    while (v113);
    if (a2)
    {
      v132 = v161;
      v133 = &a2[v155];
      v134 = &a8[4 * v110 + 7];
      result = 13320;
      do
      {
        v136 = *v133++;
        v135 = v136;
        v137 = *(v132 - 16);
        v139 = *v132++;
        v138 = v139;
        v140 = 19077 * v135;
        v141 = ((33050 * v137) >> 8) + (v140 >> 8);
        v142 = v141 - 17685;
        v143 = (v141 - 17685) >> 6;
        if (v141 >= 0x4515)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v134 - 3) = v144;
        v145 = (v140 >> 8) - (((6419 * v137) >> 8) + ((13320 * v138) >> 8));
        v146 = v145 + 8708;
        v147 = (v145 + 8708) >> 6;
        if (v145 >= -8708)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *(v134 - 2) = v148;
        v149 = ((26149 * v138) >> 8) + (v140 >> 8);
        v150 = v149 - 14234;
        v151 = (v149 - 14234) >> 6;
        if (v149 >= 0x379A)
        {
          v152 = -1;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        *(v134 - 1) = v152;
        *v134 = -1;
        v134 += 4;
        --v108;
      }

      while (v108);
    }
  }

  return result;
}

uint64_t UpsampleRgbLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v159 = *MEMORY[0x1E69E9840];
  v157 = 0u;
  memset(v158, 0, 31);
  v155 = 0u;
  v156 = 0u;
  if (!a1)
  {
    UpsampleRgbLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v152 = ((v15 - 1) >> 3);
  v150 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v15) = *a3;
  v16 = *a5;
  v17 = ((v16 + v15) >> 1) + 1;
  v18 = *a4;
  v19 = *a6;
  v20 = ((v19 + v18) >> 1) + 1;
  v21 = (v17 + v15) >> 1;
  v22 = (v20 + v18) >> 1;
  v23 = (19077 * *a1) >> 8;
  v24 = v23 + ((26149 * v22) >> 8);
  if (v24 >= 0x379A)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 - 14234 >= 0x4000)
  {
    v26 = v25;
  }

  else
  {
    v26 = (v24 - 14234) >> 6;
  }

  *a7 = v26;
  v27 = v23 - (((13320 * v22) >> 8) + ((6419 * v21) >> 8));
  v28 = v27 + 8708;
  v29 = (v27 + 8708) >> 6;
  if (v27 >= -8708)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  if (v28 < 0x4000)
  {
    v30 = v29;
  }

  a7[1] = v30;
  v31 = v23 + ((33050 * v21) >> 8);
  v32 = v31 - 17685;
  v33 = (v31 - 17685) >> 6;
  if (v31 >= 0x4515)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v32 < 0x4000)
  {
    v34 = v33;
  }

  a7[2] = v34;
  if (a2)
  {
    v35 = (v17 + v16) >> 1;
    v36 = (v20 + v19) >> 1;
    v37 = (19077 * *a2) >> 8;
    v38 = v37 + ((26149 * v36) >> 8);
    v39 = v38 - 14234;
    v40 = (v38 - 14234) >> 6;
    if (v38 >= 0x379A)
    {
      v41 = -1;
    }

    else
    {
      v41 = 0;
    }

    if (v39 < 0x4000)
    {
      v41 = v40;
    }

    *a8 = v41;
    v42 = v37 - (((13320 * v36) >> 8) + ((6419 * v35) >> 8));
    v43 = v42 + 8708;
    v44 = (v42 + 8708) >> 6;
    if (v42 >= -8708)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    a8[1] = v45;
    v46 = v37 + ((33050 * v35) >> 8);
    if (v46 >= 0x4515)
    {
      v47 = -1;
    }

    else
    {
      v47 = 0;
    }

    if (v46 - 17685 < 0x4000)
    {
      v47 = (v46 - 17685) >> 6;
    }

    a8[2] = v47;
  }

  v151 = (16 * v152) | 1;
  if (v152 >= 1)
  {
    v48 = 0;
    v51 = vdupq_n_s16(0x11Au);
    v52 = vdupq_n_s16(0xC866u);
    v53 = vdupq_n_s16(0x2204u);
    v54 = vdupq_n_s16(0xBAEBu);
    do
    {
      v55 = 0;
      v56 = *(a3 + 1);
      v57 = *(v12 + 1);
      v58 = vaddl_u8(v57, *a3);
      v59 = vaddl_u8(*v12, v56);
      v60 = vaddq_s16(v58, v59);
      *v58.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v58, v58)), 3uLL);
      *v59.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v59, v59)), 3uLL);
      *v60.i8 = vrhadd_u8(*a3, *v59.i8);
      v61 = vrhadd_u8(v56, *v58.i8);
      v162.val[0] = vrhadd_u8(*v12, *v58.i8);
      v162.val[1] = vrhadd_u8(v57, *v59.i8);
      vst2_s8(&v155, v60);
      vst2_s8(&v157, v162);
      v162.val[1] = *(v13 + 1);
      v62 = *(v11 + 1);
      v63 = vaddl_u8(v62, *v13);
      v64 = vaddl_u8(*v11, v162.val[1]);
      v65 = vaddq_s16(v63, v64);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vrhadd_u8(*v13, *v64.i8);
      v66 = vrhadd_u8(v162.val[1], *v63.i8);
      v162.val[0] = vrhadd_u8(*v11, *v63.i8);
      v162.val[1] = vrhadd_u8(v62, *v64.i8);
      v49 = &v156;
      vst2_s8(v49, v65);
      v50 = v158;
      vst2_s8(v50, v162);
      v67 = 1;
      v68 = (16 * v48) | 1;
      v69 = (16 * v48) | 1u;
      do
      {
        v70 = v67;
        v71 = *&a1[v68 + v55];
        v72 = 3 * (v55 | v69);
        v73 = (&v155 + v55);
        v74 = vshll_n_u8(*v73, 7uLL);
        v75 = vshll_n_u8(v73[2], 7uLL);
        v76 = vqdmulhq_lane_s16(vshll_n_u8(v71, 7uLL), 0x3408191366254A85, 0);
        v163.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v75, 0x3408191366254A85, 1), vqaddq_s16(v76, v52)), 6uLL);
        v163.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v76, v53), vqaddq_s16(vqdmulhq_lane_s16(v74, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v75, 0x3408191366254A85, 3))), 6uLL);
        v163.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v74, v51), vqaddq_s16(v76, v54)), v74), 6uLL);
        v77 = &a7[v72];
        vst3_s8(v77, v163);
        v55 = 8;
        v67 = 0;
      }

      while ((v70 & 1) != 0);
      if (a2)
      {
        v78 = 0;
        v79 = &a2[v68];
        v80 = 1;
        do
        {
          v81 = v80;
          v82 = *&v79[v78];
          v83 = 3 * (v78 | v69);
          v84 = &v158[v78 - 16];
          v85 = vshll_n_u8(*v84, 7uLL);
          v86 = vshll_n_u8(v84[2], 7uLL);
          v87 = vqdmulhq_lane_s16(vshll_n_u8(v82, 7uLL), 0x3408191366254A85, 0);
          v164.val[0] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v86, 0x3408191366254A85, 1), vqaddq_s16(v87, v52)), 6uLL);
          v164.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v87, v53), vqaddq_s16(vqdmulhq_lane_s16(v85, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v86, 0x3408191366254A85, 3))), 6uLL);
          v164.val[2] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v85, v51), vqaddq_s16(v87, v54)), v85), 6uLL);
          v88 = &a8[v83];
          vst3_s8(v88, v164);
          v78 = 8;
          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v48;
    }

    while (v48 != v152);
  }

  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v89 = 9 - v150;
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v90 = *(v153 + 1);
  v91 = vaddl_u8(*(v153 + 1), v154[0]);
  v92 = vaddl_u8(v153[0], *(v154 + 1));
  v93 = vaddq_s16(v91, v92);
  *v91.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v91, v91)), 3uLL);
  *v92.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v92, v92)), 3uLL);
  *v93.i8 = vrhadd_u8(v154[0], *v92.i8);
  v94 = vrhadd_u8(*(v154 + 1), *v91.i8);
  v160.val[0] = vrhadd_u8(v153[0], *v91.i8);
  v95 = &v155;
  vst2_s8(v95, v93);
  v160.val[1] = vrhadd_u8(v90, *v92.i8);
  v97 = &v157;
  vst2_s8(v97, v160);
  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  result = memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v99 = *(v153 + 1);
  v100 = vaddl_u8(*(v153 + 1), v154[0]);
  v101 = vaddl_u8(v153[0], *(v154 + 1));
  v102 = vaddq_s16(v100, v101);
  *v100.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v100, v100)), 3uLL);
  *v101.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v101, v101)), 3uLL);
  *v102.i8 = vrhadd_u8(v154[0], *v101.i8);
  v103 = vrhadd_u8(*(v154 + 1), *v100.i8);
  v161.val[0] = vrhadd_u8(v153[0], *v100.i8);
  v96 = &v156;
  vst2_s8(v96, v102);
  v161.val[1] = vrhadd_u8(v99, *v101.i8);
  v104 = v158;
  vst2_s8(v104, v161);
  v105 = (a9 - v151);
  if (v105 >= 1)
  {
    v106 = &a1[v151];
    v107 = &v156;
    v108 = &a7[48 * v152 + 5];
    result = 255;
    v109 = (a9 - v151);
    do
    {
      v111 = *v106++;
      v110 = v111;
      v112 = *(v107 - 16);
      v114 = *v107++;
      v113 = v114;
      v115 = 19077 * v110;
      v116 = ((26149 * v114) >> 8) + (v115 >> 8);
      v117 = v116 - 14234;
      v118 = (v116 - 14234) >> 6;
      if (v116 >= 0x379A)
      {
        v119 = -1;
      }

      else
      {
        v119 = 0;
      }

      if (v117 < 0x4000)
      {
        v119 = v118;
      }

      *(v108 - 2) = v119;
      v120 = (v115 >> 8) - (((6419 * v112) >> 8) + ((13320 * v113) >> 8));
      v121 = v120 + 8708;
      v122 = (v120 + 8708) >> 6;
      if (v120 >= -8708)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v108 - 1) = v123;
      v124 = ((33050 * v112) >> 8) + (v115 >> 8);
      v125 = v124 - 17685;
      v126 = (v124 - 17685) >> 6;
      if (v124 >= 0x4515)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *v108 = v127;
      v108 += 3;
      --v109;
    }

    while (v109);
    if (a2)
    {
      v128 = &a2[v151];
      v129 = v158;
      v130 = &a8[48 * v152 + 5];
      result = 13320;
      do
      {
        v132 = *v128++;
        v131 = v132;
        v133 = *(v129 - 16);
        v135 = *v129++;
        v134 = v135;
        v136 = 19077 * v131;
        v137 = ((26149 * v135) >> 8) + (v136 >> 8);
        v138 = v137 - 14234;
        v139 = (v137 - 14234) >> 6;
        if (v137 >= 0x379A)
        {
          v140 = -1;
        }

        else
        {
          v140 = 0;
        }

        if (v138 < 0x4000)
        {
          v140 = v139;
        }

        *(v130 - 2) = v140;
        v141 = (v136 >> 8) - (((6419 * v133) >> 8) + ((13320 * v134) >> 8));
        v142 = v141 + 8708;
        v143 = (v141 + 8708) >> 6;
        if (v141 >= -8708)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v130 - 1) = v144;
        v145 = ((33050 * v133) >> 8) + (v136 >> 8);
        v146 = v145 - 17685;
        v147 = (v145 - 17685) >> 6;
        if (v145 >= 0x4515)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *v130 = v148;
        v130 += 3;
        --v105;
      }

      while (v105);
    }
  }

  return result;
}

uint64_t UpsampleBgrLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, char *a8, int a9)
{
  v159 = *MEMORY[0x1E69E9840];
  v157 = 0u;
  memset(v158, 0, 31);
  v155 = 0u;
  v156 = 0u;
  if (!a1)
  {
    UpsampleBgrLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v152 = ((v15 - 1) >> 3);
  v150 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v15) = *a3;
  v16 = *a5;
  v17 = ((v16 + v15) >> 1) + 1;
  v18 = *a4;
  v19 = *a6;
  v20 = ((v19 + v18) >> 1) + 1;
  v21 = (v17 + v15) >> 1;
  v22 = (v20 + v18) >> 1;
  v23 = (19077 * *a1) >> 8;
  v24 = v23 + ((33050 * v21) >> 8);
  if (v24 >= 0x4515)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 - 17685 >= 0x4000)
  {
    v26 = v25;
  }

  else
  {
    v26 = (v24 - 17685) >> 6;
  }

  *a7 = v26;
  v27 = v23 - (((13320 * v22) >> 8) + ((6419 * v21) >> 8));
  v28 = v27 + 8708;
  v29 = (v27 + 8708) >> 6;
  if (v27 >= -8708)
  {
    v30 = -1;
  }

  else
  {
    v30 = 0;
  }

  if (v28 < 0x4000)
  {
    v30 = v29;
  }

  a7[1] = v30;
  v31 = v23 + ((26149 * v22) >> 8);
  v32 = v31 - 14234;
  v33 = (v31 - 14234) >> 6;
  if (v31 >= 0x379A)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (v32 < 0x4000)
  {
    v34 = v33;
  }

  a7[2] = v34;
  if (a2)
  {
    v35 = (v17 + v16) >> 1;
    v36 = (v20 + v19) >> 1;
    v37 = (19077 * *a2) >> 8;
    v38 = v37 + ((33050 * v35) >> 8);
    v39 = v38 - 17685;
    v40 = (v38 - 17685) >> 6;
    if (v38 >= 0x4515)
    {
      v41 = -1;
    }

    else
    {
      v41 = 0;
    }

    if (v39 < 0x4000)
    {
      v41 = v40;
    }

    *a8 = v41;
    v42 = v37 - (((13320 * v36) >> 8) + ((6419 * v35) >> 8));
    v43 = v42 + 8708;
    v44 = (v42 + 8708) >> 6;
    if (v42 >= -8708)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    a8[1] = v45;
    v46 = v37 + ((26149 * v36) >> 8);
    if (v46 >= 0x379A)
    {
      v47 = -1;
    }

    else
    {
      v47 = 0;
    }

    if (v46 - 14234 < 0x4000)
    {
      v47 = (v46 - 14234) >> 6;
    }

    a8[2] = v47;
  }

  v151 = (16 * v152) | 1;
  if (v152 >= 1)
  {
    v48 = 0;
    v51 = vdupq_n_s16(0x11Au);
    v52 = vdupq_n_s16(0xC866u);
    v53 = vdupq_n_s16(0x2204u);
    v54 = vdupq_n_s16(0xBAEBu);
    do
    {
      v55 = 0;
      v56 = *(a3 + 1);
      v57 = *(v12 + 1);
      v58 = vaddl_u8(v57, *a3);
      v59 = vaddl_u8(*v12, v56);
      v60 = vaddq_s16(v58, v59);
      *v58.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v58, v58)), 3uLL);
      *v59.i8 = vshrn_n_s16(vaddq_s16(v60, vaddq_s16(v59, v59)), 3uLL);
      *v60.i8 = vrhadd_u8(*a3, *v59.i8);
      v61 = vrhadd_u8(v56, *v58.i8);
      v162.val[0] = vrhadd_u8(*v12, *v58.i8);
      v162.val[1] = vrhadd_u8(v57, *v59.i8);
      vst2_s8(&v155, v60);
      vst2_s8(&v157, v162);
      v162.val[1] = *(v13 + 1);
      v62 = *(v11 + 1);
      v63 = vaddl_u8(v62, *v13);
      v64 = vaddl_u8(*v11, v162.val[1]);
      v65 = vaddq_s16(v63, v64);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vrhadd_u8(*v13, *v64.i8);
      v66 = vrhadd_u8(v162.val[1], *v63.i8);
      v162.val[0] = vrhadd_u8(*v11, *v63.i8);
      v162.val[1] = vrhadd_u8(v62, *v64.i8);
      v49 = &v156;
      vst2_s8(v49, v65);
      v50 = v158;
      vst2_s8(v50, v162);
      v67 = 1;
      v68 = (16 * v48) | 1;
      v69 = (16 * v48) | 1u;
      do
      {
        v70 = v67;
        v71 = *&a1[v68 + v55];
        v72 = 3 * (v55 | v69);
        v73 = (&v155 + v55);
        v74 = vshll_n_u8(*v73, 7uLL);
        v75 = vshll_n_u8(v73[2], 7uLL);
        v76 = vqdmulhq_lane_s16(vshll_n_u8(v71, 7uLL), 0x3408191366254A85, 0);
        v163.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v75, 0x3408191366254A85, 1), vqaddq_s16(v76, v52)), 6uLL);
        v163.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v76, v53), vqaddq_s16(vqdmulhq_lane_s16(v74, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v75, 0x3408191366254A85, 3))), 6uLL);
        v163.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v74, v51), vqaddq_s16(v76, v54)), v74), 6uLL);
        v77 = &a7[v72];
        vst3_s8(v77, v163);
        v55 = 8;
        v67 = 0;
      }

      while ((v70 & 1) != 0);
      if (a2)
      {
        v78 = 0;
        v79 = &a2[v68];
        v80 = 1;
        do
        {
          v81 = v80;
          v82 = *&v79[v78];
          v83 = 3 * (v78 | v69);
          v84 = &v158[v78 - 16];
          v85 = vshll_n_u8(*v84, 7uLL);
          v86 = vshll_n_u8(v84[2], 7uLL);
          v87 = vqdmulhq_lane_s16(vshll_n_u8(v82, 7uLL), 0x3408191366254A85, 0);
          v164.val[2] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v86, 0x3408191366254A85, 1), vqaddq_s16(v87, v52)), 6uLL);
          v164.val[1] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v87, v53), vqaddq_s16(vqdmulhq_lane_s16(v85, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v86, 0x3408191366254A85, 3))), 6uLL);
          v164.val[0] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v85, v51), vqaddq_s16(v87, v54)), v85), 6uLL);
          v88 = &a8[v83];
          vst3_s8(v88, v164);
          v78 = 8;
          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v48;
    }

    while (v48 != v152);
  }

  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v89 = 9 - v150;
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v90 = *(v153 + 1);
  v91 = vaddl_u8(*(v153 + 1), v154[0]);
  v92 = vaddl_u8(v153[0], *(v154 + 1));
  v93 = vaddq_s16(v91, v92);
  *v91.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v91, v91)), 3uLL);
  *v92.i8 = vshrn_n_s16(vaddq_s16(v93, vaddq_s16(v92, v92)), 3uLL);
  *v93.i8 = vrhadd_u8(v154[0], *v92.i8);
  v94 = vrhadd_u8(*(v154 + 1), *v91.i8);
  v160.val[0] = vrhadd_u8(v153[0], *v91.i8);
  v95 = &v155;
  vst2_s8(v95, v93);
  v160.val[1] = vrhadd_u8(v90, *v92.i8);
  v97 = &v157;
  vst2_s8(v97, v160);
  memset(v154, 0, 9);
  memset(v153, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v154 + v150, v154[0].u8[(v150 - 1)], v89);
  result = memset(v153 + v150, v153[0].u8[(v150 - 1)], v89);
  v99 = *(v153 + 1);
  v100 = vaddl_u8(*(v153 + 1), v154[0]);
  v101 = vaddl_u8(v153[0], *(v154 + 1));
  v102 = vaddq_s16(v100, v101);
  *v100.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v100, v100)), 3uLL);
  *v101.i8 = vshrn_n_s16(vaddq_s16(v102, vaddq_s16(v101, v101)), 3uLL);
  *v102.i8 = vrhadd_u8(v154[0], *v101.i8);
  v103 = vrhadd_u8(*(v154 + 1), *v100.i8);
  v161.val[0] = vrhadd_u8(v153[0], *v100.i8);
  v96 = &v156;
  vst2_s8(v96, v102);
  v161.val[1] = vrhadd_u8(v99, *v101.i8);
  v104 = v158;
  vst2_s8(v104, v161);
  v105 = (a9 - v151);
  if (v105 >= 1)
  {
    v106 = &a1[v151];
    v107 = &v156;
    v108 = &a7[48 * v152 + 5];
    result = 255;
    v109 = (a9 - v151);
    do
    {
      v111 = *v106++;
      v110 = v111;
      v112 = *(v107 - 16);
      v114 = *v107++;
      v113 = v114;
      v115 = 19077 * v110;
      v116 = ((33050 * v112) >> 8) + (v115 >> 8);
      v117 = v116 - 17685;
      v118 = (v116 - 17685) >> 6;
      if (v116 >= 0x4515)
      {
        v119 = -1;
      }

      else
      {
        v119 = 0;
      }

      if (v117 < 0x4000)
      {
        v119 = v118;
      }

      *(v108 - 2) = v119;
      v120 = (v115 >> 8) - (((6419 * v112) >> 8) + ((13320 * v113) >> 8));
      v121 = v120 + 8708;
      v122 = (v120 + 8708) >> 6;
      if (v120 >= -8708)
      {
        v123 = -1;
      }

      else
      {
        v123 = 0;
      }

      if (v121 < 0x4000)
      {
        v123 = v122;
      }

      *(v108 - 1) = v123;
      v124 = ((26149 * v113) >> 8) + (v115 >> 8);
      v125 = v124 - 14234;
      v126 = (v124 - 14234) >> 6;
      if (v124 >= 0x379A)
      {
        v127 = -1;
      }

      else
      {
        v127 = 0;
      }

      if (v125 < 0x4000)
      {
        v127 = v126;
      }

      *v108 = v127;
      v108 += 3;
      --v109;
    }

    while (v109);
    if (a2)
    {
      v128 = &a2[v151];
      v129 = v158;
      v130 = &a8[48 * v152 + 5];
      result = 13320;
      do
      {
        v132 = *v128++;
        v131 = v132;
        v133 = *(v129 - 16);
        v135 = *v129++;
        v134 = v135;
        v136 = 19077 * v131;
        v137 = ((33050 * v133) >> 8) + (v136 >> 8);
        v138 = v137 - 17685;
        v139 = (v137 - 17685) >> 6;
        if (v137 >= 0x4515)
        {
          v140 = -1;
        }

        else
        {
          v140 = 0;
        }

        if (v138 < 0x4000)
        {
          v140 = v139;
        }

        *(v130 - 2) = v140;
        v141 = (v136 >> 8) - (((6419 * v133) >> 8) + ((13320 * v134) >> 8));
        v142 = v141 + 8708;
        v143 = (v141 + 8708) >> 6;
        if (v141 >= -8708)
        {
          v144 = -1;
        }

        else
        {
          v144 = 0;
        }

        if (v142 < 0x4000)
        {
          v144 = v143;
        }

        *(v130 - 1) = v144;
        v145 = ((26149 * v134) >> 8) + (v136 >> 8);
        v146 = v145 - 14234;
        v147 = (v145 - 14234) >> 6;
        if (v145 >= 0x379A)
        {
          v148 = -1;
        }

        else
        {
          v148 = 0;
        }

        if (v146 < 0x4000)
        {
          v148 = v147;
        }

        *v130 = v148;
        v130 += 3;
        --v105;
      }

      while (v105);
    }
  }

  return result;
}

uint64_t UpsampleArgbLinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, _BYTE *a8, int a9)
{
  v163 = *MEMORY[0x1E69E9840];
  v161 = 0u;
  memset(v162, 0, 31);
  v159 = 0u;
  v160 = 0u;
  if (!a1)
  {
    UpsampleArgbLinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = ((v15 - 1) >> 3);
  v155 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v156 = 1;
  LODWORD(v15) = *a3;
  v17 = *a5;
  v18 = ((v17 + v15) >> 1) + 1;
  v19 = *a4;
  v20 = *a6;
  v21 = ((v20 + v19) >> 1) + 1;
  v22 = (v18 + v15) >> 1;
  v23 = (v21 + v19) >> 1;
  v24 = *a1;
  *a7 = -1;
  v25 = (19077 * v24) >> 8;
  v26 = v25 + ((26149 * v23) >> 8);
  v27 = v26 - 14234;
  v28 = (v26 - 14234) >> 6;
  if (v26 >= 0x379A)
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  if (v27 < 0x4000)
  {
    v29 = v28;
  }

  a7[1] = v29;
  v30 = v25 - (((13320 * v23) >> 8) + ((6419 * v22) >> 8));
  v31 = v30 + 8708;
  v32 = (v30 + 8708) >> 6;
  if (v30 >= -8708)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  if (v31 < 0x4000)
  {
    v33 = v32;
  }

  a7[2] = v33;
  v34 = v25 + ((33050 * v22) >> 8);
  v35 = v34 - 17685;
  v36 = (v34 - 17685) >> 6;
  if (v34 >= 0x4515)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  if (v35 < 0x4000)
  {
    v37 = v36;
  }

  a7[3] = v37;
  if (a2)
  {
    v38 = (v18 + v17) >> 1;
    v39 = (v21 + v20) >> 1;
    v40 = *a2;
    *a8 = -1;
    v41 = (19077 * v40) >> 8;
    v42 = v41 + ((26149 * v39) >> 8);
    v43 = v42 - 14234;
    v44 = (v42 - 14234) >> 6;
    if (v42 >= 0x379A)
    {
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    a8[1] = v45;
    v46 = v41 - (((13320 * v39) >> 8) + ((6419 * v38) >> 8));
    v47 = v46 + 8708;
    v48 = (v46 + 8708) >> 6;
    if (v46 >= -8708)
    {
      v49 = -1;
    }

    else
    {
      v49 = 0;
    }

    if (v47 < 0x4000)
    {
      v49 = v48;
    }

    a8[2] = v49;
    v50 = v41 + ((33050 * v38) >> 8);
    if (v50 >= 0x4515)
    {
      v51 = -1;
    }

    else
    {
      v51 = 0;
    }

    if (v50 - 17685 < 0x4000)
    {
      v51 = (v50 - 17685) >> 6;
    }

    a8[3] = v51;
  }

  v156 = v156 & 0xF | (16 * v16);
  if (v16 >= 1)
  {
    v52 = 0;
    v54 = vdupq_n_s16(0x11Au);
    v55 = vdupq_n_s16(0xC866u);
    v56 = vdupq_n_s16(0x2204u);
    v57 = vdupq_n_s16(0xBAEBu);
    v59 = -1;
    do
    {
      v60 = 0;
      v61 = *(a3 + 1);
      v62 = *(v12 + 1);
      v63 = vaddl_u8(v62, *a3);
      v64 = vaddl_u8(*v12, v61);
      v65 = vaddq_s16(v63, v64);
      *v63.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v63, v63)), 3uLL);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v65, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vrhadd_u8(*a3, *v64.i8);
      v66 = vrhadd_u8(v61, *v63.i8);
      v166.val[0] = vrhadd_u8(*v12, *v63.i8);
      v166.val[1] = vrhadd_u8(v62, *v64.i8);
      vst2_s8(&v159, v65);
      vst2_s8(&v161, v166);
      v166.val[1] = *(v13 + 1);
      v67 = *(v11 + 1);
      v68 = vaddl_u8(v67, *v13);
      v69 = vaddl_u8(*v11, v166.val[1]);
      v70 = vaddq_s16(v68, v69);
      *v68.i8 = vshrn_n_s16(vaddq_s16(v70, vaddq_s16(v68, v68)), 3uLL);
      *v69.i8 = vshrn_n_s16(vaddq_s16(v70, vaddq_s16(v69, v69)), 3uLL);
      *v70.i8 = vrhadd_u8(*v13, *v69.i8);
      v71 = vrhadd_u8(v166.val[1], *v68.i8);
      v166.val[0] = vrhadd_u8(*v11, *v68.i8);
      v53 = &v160;
      vst2_s8(v53, v70);
      v166.val[1] = vrhadd_u8(v67, *v69.i8);
      v58 = v162;
      vst2_s8(v58, v166);
      v72 = 1;
      v73 = (16 * v52) | 1;
      do
      {
        v74 = 4 * (v60 | v73);
        v75 = *&a1[v73 + v60];
        v76 = (&v159 + v60);
        v77 = vshll_n_u8(*v76, 7uLL);
        v78 = vshll_n_u8(v76[2], 7uLL);
        v79 = vqdmulhq_lane_s16(vshll_n_u8(v75, 7uLL), 0x3408191366254A85, 0);
        v80 = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v78, 0x3408191366254A85, 1), vqaddq_s16(v79, v55)), 6uLL);
        v81 = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v79, v56), vqaddq_s16(vqdmulhq_lane_s16(v77, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v78, 0x3408191366254A85, 3))), 6uLL);
        v82 = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v77, v54), vqaddq_s16(v79, v57)), v77), 6uLL);
        v83 = &a7[v74 & 0xFFFFFFE4];
        vst4_s8(v83, *&v59);
        LOBYTE(v74) = v72;
        v60 = 8;
        v72 = 0;
      }

      while ((v74 & 1) != 0);
      if (a2)
      {
        v84 = 0;
        v85 = 1;
        do
        {
          v86 = 4 * (v84 | v73);
          v87 = *&a2[v73 + v84];
          v88 = &v162[v84 - 16];
          v89 = vshll_n_u8(*v88, 7uLL);
          v90 = vshll_n_u8(v88[2], 7uLL);
          v91 = vqdmulhq_lane_s16(vshll_n_u8(v87, 7uLL), 0x3408191366254A85, 0);
          v167.val[1] = vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v90, 0x3408191366254A85, 1), vqaddq_s16(v91, v55)), 6uLL);
          v167.val[2] = vqshrun_n_s16(vqsubq_s16(vqaddq_s16(v91, v56), vqaddq_s16(vqdmulhq_lane_s16(v89, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v90, 0x3408191366254A85, 3))), 6uLL);
          v167.val[3] = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v89, v54), vqaddq_s16(v91, v57)), v89), 6uLL);
          v92 = &a8[v86 & 0xFFFFFFE4];
          v167.val[0] = -1;
          vst4_s8(v92, v167);
          LOBYTE(v86) = v85;
          v84 = 8;
          v85 = 0;
        }

        while ((v86 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v52;
    }

    while (v52 != v16);
  }

  memset(v158, 0, 9);
  memset(v157, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v93 = 9 - v155;
  memset(v158 + v155, v158[0].u8[(v155 - 1)], v93);
  memset(v157 + v155, v157[0].u8[(v155 - 1)], v93);
  v94 = *(v157 + 1);
  v95 = vaddl_u8(*(v157 + 1), v158[0]);
  v96 = vaddl_u8(v157[0], *(v158 + 1));
  v97 = vaddq_s16(v95, v96);
  *v95.i8 = vshrn_n_s16(vaddq_s16(v97, vaddq_s16(v95, v95)), 3uLL);
  *v96.i8 = vshrn_n_s16(vaddq_s16(v97, vaddq_s16(v96, v96)), 3uLL);
  *v97.i8 = vrhadd_u8(v158[0], *v96.i8);
  v98 = vrhadd_u8(*(v158 + 1), *v95.i8);
  v164.val[0] = vrhadd_u8(v157[0], *v95.i8);
  v99 = &v159;
  vst2_s8(v99, v97);
  v164.val[1] = vrhadd_u8(v94, *v96.i8);
  v101 = &v161;
  vst2_s8(v101, v164);
  memset(v158, 0, 9);
  memset(v157, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v158 + v155, v158[0].u8[(v155 - 1)], v93);
  result = memset(v157 + v155, v157[0].u8[(v155 - 1)], v93);
  v103 = *(v157 + 1);
  v104 = vaddl_u8(*(v157 + 1), v158[0]);
  v105 = vaddl_u8(v157[0], *(v158 + 1));
  v106 = vaddq_s16(v104, v105);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v106, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vshrn_n_s16(vaddq_s16(v106, vaddq_s16(v105, v105)), 3uLL);
  *v106.i8 = vrhadd_u8(v158[0], *v105.i8);
  v107 = vrhadd_u8(*(v158 + 1), *v104.i8);
  v165.val[0] = vrhadd_u8(v157[0], *v104.i8);
  v100 = &v160;
  vst2_s8(v100, v106);
  v165.val[1] = vrhadd_u8(v103, *v105.i8);
  v108 = v162;
  vst2_s8(v108, v165);
  v109 = (a9 - v156);
  if (v109 >= 1)
  {
    v110 = &a1[v156];
    v111 = 16 * v16;
    v112 = &v160;
    v113 = &a7[64 * v16 + 7];
    result = 14234;
    v114 = (a9 - v156);
    do
    {
      v116 = *v110++;
      v115 = v116;
      v117 = *(v112 - 16);
      v119 = *v112++;
      v118 = v119;
      *(v113 - 3) = -1;
      v120 = 19077 * v115;
      v121 = ((26149 * v119) >> 8) + (v120 >> 8);
      v122 = v121 - 14234;
      v123 = (v121 - 14234) >> 6;
      if (v121 >= 0x379A)
      {
        v124 = -1;
      }

      else
      {
        v124 = 0;
      }

      if (v122 < 0x4000)
      {
        v124 = v123;
      }

      *(v113 - 2) = v124;
      v125 = (v120 >> 8) - (((6419 * v117) >> 8) + ((13320 * v118) >> 8));
      v126 = v125 + 8708;
      v127 = (v125 + 8708) >> 6;
      if (v125 >= -8708)
      {
        v128 = -1;
      }

      else
      {
        v128 = 0;
      }

      if (v126 < 0x4000)
      {
        v128 = v127;
      }

      *(v113 - 1) = v128;
      v129 = ((33050 * v117) >> 8) + (v120 >> 8);
      v130 = v129 - 17685;
      v131 = (v129 - 17685) >> 6;
      if (v129 >= 0x4515)
      {
        v132 = -1;
      }

      else
      {
        v132 = 0;
      }

      if (v130 < 0x4000)
      {
        v132 = v131;
      }

      *v113 = v132;
      v113 += 4;
      --v114;
    }

    while (v114);
    if (a2)
    {
      v133 = v162;
      v134 = &a2[v156];
      v135 = &a8[4 * v111 + 7];
      result = 13320;
      do
      {
        v137 = *v134++;
        v136 = v137;
        v138 = *(v133 - 16);
        v140 = *v133++;
        v139 = v140;
        *(v135 - 3) = -1;
        v141 = 19077 * v136;
        v142 = ((26149 * v140) >> 8) + (v141 >> 8);
        v143 = v142 - 14234;
        v144 = (v142 - 14234) >> 6;
        if (v142 >= 0x379A)
        {
          v145 = -1;
        }

        else
        {
          v145 = 0;
        }

        if (v143 < 0x4000)
        {
          v145 = v144;
        }

        *(v135 - 2) = v145;
        v146 = (v141 >> 8) - (((6419 * v138) >> 8) + ((13320 * v139) >> 8));
        v147 = v146 + 8708;
        v148 = (v146 + 8708) >> 6;
        if (v146 >= -8708)
        {
          v149 = -1;
        }

        else
        {
          v149 = 0;
        }

        if (v147 < 0x4000)
        {
          v149 = v148;
        }

        *(v135 - 1) = v149;
        v150 = ((33050 * v138) >> 8) + (v141 >> 8);
        v151 = v150 - 17685;
        v152 = (v150 - 17685) >> 6;
        if (v150 >= 0x4515)
        {
          v153 = -1;
        }

        else
        {
          v153 = 0;
        }

        if (v151 < 0x4000)
        {
          v153 = v152;
        }

        *v135 = v153;
        v135 += 4;
        --v109;
      }

      while (v109);
    }
  }

  return result;
}

uint64_t UpsampleRgb565LinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, _BYTE *a8, int a9)
{
  v171 = *MEMORY[0x1E69E9840];
  v169 = 0u;
  memset(v170, 0, 31);
  v167 = 0u;
  v168 = 0u;
  if (!a1)
  {
    UpsampleRgb565LinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = v15 - 1;
  v161 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v17 = *a3;
  v18 = *a5;
  v19 = ((v18 + v17) >> 1) + 1;
  v20 = *a4;
  v21 = *a6;
  v22 = ((v21 + v20) >> 1) + 1;
  v23 = (v19 + v17) >> 1;
  v24 = (v22 + v20) >> 1;
  v164 = a1;
  v25 = (19077 * *a1) >> 8;
  v26 = v25 + ((26149 * v24) >> 8);
  if (v26 >= 0x379A)
  {
    v27 = -8;
  }

  else
  {
    v27 = 0;
  }

  if (v26 - 14234 >= 0x4000)
  {
    v28 = v27;
  }

  else
  {
    v28 = (v26 - 14234) >> 6;
  }

  v29 = v25 - (((13320 * v24) >> 8) + ((6419 * v23) >> 8));
  if (v29 >= -8708)
  {
    v30 = 255;
  }

  else
  {
    v30 = 0;
  }

  if ((v29 + 8708) < 0x4000)
  {
    v30 = (v29 + 8708) >> 6;
  }

  v31 = v25 + ((33050 * v23) >> 8);
  v32 = v31 - 17685;
  if (v31 >= 0x4515)
  {
    v33 = 31;
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 >= 0x4000;
  v35 = v32 >> 9;
  if (!v34)
  {
    v33 = v35;
  }

  v36 = (8 * v30) & 0xE0 | v33;
  *a7 = v28 & 0xF8 | (v30 >> 5);
  v37 = (v16 >> 3);
  a7[1] = v36;
  if (a2)
  {
    v38 = (v19 + v18) >> 1;
    v39 = (v22 + v21) >> 1;
    v40 = (19077 * *a2) >> 8;
    v41 = v40 + ((26149 * v39) >> 8);
    v42 = v41 - 14234;
    v43 = (v41 - 14234) >> 6;
    if (v41 >= 0x379A)
    {
      v44 = -8;
    }

    else
    {
      v44 = 0;
    }

    if (v42 < 0x4000)
    {
      v44 = v43;
    }

    v45 = v40 - (((13320 * v39) >> 8) + ((6419 * v38) >> 8));
    v46 = v45 + 8708;
    v47 = (v45 + 8708) >> 6;
    if (v45 >= -8708)
    {
      v48 = 255;
    }

    else
    {
      v48 = 0;
    }

    if (v46 < 0x4000)
    {
      v48 = v47;
    }

    v49 = v40 + ((33050 * v38) >> 8);
    v50 = v49 - 17685;
    v51 = (v49 - 17685) >> 9;
    if (v49 >= 0x4515)
    {
      v52 = 31;
    }

    else
    {
      v52 = 0;
    }

    if (v50 < 0x4000)
    {
      v52 = v51;
    }

    *a8 = v44 & 0xF8 | (v48 >> 5);
    a8[1] = (8 * v48) & 0xE0 | v52;
  }

  v162 = (16 * v37) | 1;
  if (v37 >= 1)
  {
    v53 = 0;
    v56 = vdupq_n_s16(0x11Au);
    v57 = vdupq_n_s16(0xC866u);
    v58 = vdupq_n_s16(0x2204u);
    v59 = vdupq_n_s16(0xBAEBu);
    v60 = v164;
    do
    {
      v61 = 0;
      v62 = *(a3 + 1);
      v63 = *(v12 + 1);
      v64 = vaddl_u8(v63, *a3);
      v65 = vaddl_u8(*v12, v62);
      v66 = vaddq_s16(v64, v65);
      *v64.i8 = vshrn_n_s16(vaddq_s16(v66, vaddq_s16(v64, v64)), 3uLL);
      *v65.i8 = vshrn_n_s16(vaddq_s16(v66, vaddq_s16(v65, v65)), 3uLL);
      *v66.i8 = vrhadd_u8(*a3, *v65.i8);
      v67 = vrhadd_u8(v62, *v64.i8);
      v174.val[0] = vrhadd_u8(*v12, *v64.i8);
      v174.val[1] = vrhadd_u8(v63, *v65.i8);
      vst2_s8(&v167, v66);
      vst2_s8(&v169, v174);
      v174.val[1] = *(v13 + 1);
      v68 = *(v11 + 1);
      v69 = vaddl_u8(v68, *v13);
      v70 = vaddl_u8(*v11, v174.val[1]);
      v71 = vaddq_s16(v69, v70);
      *v69.i8 = vshrn_n_s16(vaddq_s16(v71, vaddq_s16(v69, v69)), 3uLL);
      *v70.i8 = vshrn_n_s16(vaddq_s16(v71, vaddq_s16(v70, v70)), 3uLL);
      *v71.i8 = vrhadd_u8(*v13, *v70.i8);
      v72 = vrhadd_u8(v174.val[1], *v69.i8);
      v174.val[0] = vrhadd_u8(*v11, *v69.i8);
      v174.val[1] = vrhadd_u8(v68, *v70.i8);
      v54 = &v168;
      vst2_s8(v54, v71);
      v55 = v170;
      vst2_s8(v55, v174);
      v73 = 1;
      v74 = (16 * v53) | 1;
      v75 = (16 * v53) | 1u;
      do
      {
        v76 = v73;
        v77 = 2 * (v61 | v75);
        v78 = *&v60[v74 + v61];
        v79 = (&v167 + v61);
        v80 = vshll_n_u8(*v79, 7uLL);
        v81 = vshll_n_u8(v79[2], 7uLL);
        v82 = vqdmulhq_lane_s16(vshll_n_u8(v78, 7uLL), 0x3408191366254A85, 0);
        v83 = vqdmulhq_lane_s16(v81, 0x3408191366254A85, 1);
        v84 = vqaddq_s16(v82, v57);
        v85 = vqsubq_s16(vqaddq_s16(v82, v58), vqaddq_s16(vqdmulhq_lane_s16(v80, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v81, 0x3408191366254A85, 3)));
        v86 = vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v80, v56), vqaddq_s16(v82, v59)), v80);
        *v85.i8 = vqshrun_n_s16(v85, 6uLL);
        *v80.i8 = vsri_n_s8(vqshrun_n_s16(vqaddq_s16(v83, v84), 6uLL), *v85.i8, 5uLL);
        *v85.i8 = vsri_n_s8(vshl_n_s8(*v85.i8, 3uLL), vqshrun_n_s16(v86, 6uLL), 3uLL);
        *&a7[v77] = vzip1q_s8(v80, v85);
        v61 = 8;
        v73 = 0;
      }

      while ((v76 & 1) != 0);
      if (a2)
      {
        v87 = 0;
        v88 = &a2[v74];
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = 2 * (v87 | v75);
          v92 = *&v88[v87];
          v93 = &v170[v87 - 16];
          v94 = vshll_n_u8(*v93, 7uLL);
          v95 = vshll_n_u8(v93[2], 7uLL);
          v96 = vqdmulhq_lane_s16(vshll_n_u8(v92, 7uLL), 0x3408191366254A85, 0);
          v97 = vqdmulhq_lane_s16(v95, 0x3408191366254A85, 1);
          v98 = vqaddq_s16(v96, v57);
          v99 = vqsubq_s16(vqaddq_s16(v96, v58), vqaddq_s16(vqdmulhq_lane_s16(v94, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v95, 0x3408191366254A85, 3)));
          v100 = vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v94, v56), vqaddq_s16(v96, v59)), v94);
          *v99.i8 = vqshrun_n_s16(v99, 6uLL);
          *v94.i8 = vsri_n_s8(vqshrun_n_s16(vqaddq_s16(v97, v98), 6uLL), *v99.i8, 5uLL);
          *v99.i8 = vsri_n_s8(vshl_n_s8(*v99.i8, 3uLL), vqshrun_n_s16(v100, 6uLL), 3uLL);
          *&a8[v91] = vzip1q_s8(v94, v99);
          v87 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v53;
    }

    while (v53 != v37);
  }

  memset(v166, 0, 9);
  memset(v165, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v101 = 9 - v161;
  memset(v166 + v161, v166[0].u8[(v161 - 1)], v101);
  memset(v165 + v161, v165[0].u8[(v161 - 1)], v101);
  v102 = *(v165 + 1);
  v103 = vaddl_u8(*(v165 + 1), v166[0]);
  v104 = vaddl_u8(v165[0], *(v166 + 1));
  v105 = vaddq_s16(v103, v104);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vshrn_n_s16(vaddq_s16(v105, vaddq_s16(v104, v104)), 3uLL);
  *v105.i8 = vrhadd_u8(v166[0], *v104.i8);
  v106 = vrhadd_u8(*(v166 + 1), *v103.i8);
  v172.val[0] = vrhadd_u8(v165[0], *v103.i8);
  v107 = &v167;
  vst2_s8(v107, v105);
  v172.val[1] = vrhadd_u8(v102, *v104.i8);
  v109 = &v169;
  vst2_s8(v109, v172);
  memset(v166, 0, 9);
  memset(v165, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v166 + v161, v166[0].u8[(v161 - 1)], v101);
  result = memset(v165 + v161, v165[0].u8[(v161 - 1)], v101);
  v111 = *(v165 + 1);
  v112 = vaddl_u8(*(v165 + 1), v166[0]);
  v113 = vaddl_u8(v165[0], *(v166 + 1));
  v114 = vaddq_s16(v112, v113);
  *v112.i8 = vshrn_n_s16(vaddq_s16(v114, vaddq_s16(v112, v112)), 3uLL);
  *v113.i8 = vshrn_n_s16(vaddq_s16(v114, vaddq_s16(v113, v113)), 3uLL);
  *v114.i8 = vrhadd_u8(v166[0], *v113.i8);
  v115 = vrhadd_u8(*(v166 + 1), *v112.i8);
  v173.val[0] = vrhadd_u8(v165[0], *v112.i8);
  v108 = &v168;
  vst2_s8(v108, v114);
  v173.val[1] = vrhadd_u8(v111, *v113.i8);
  v116 = v170;
  vst2_s8(v116, v173);
  v117 = (a9 - v162);
  if (v117 >= 1)
  {
    v163 = 16 * v37;
    v118 = &v164[v162];
    v164 = v162;
    v119 = &a7[32 * v37 + 3];
    v120 = &v168;
    result = 248;
    v121 = (a9 - v162);
    do
    {
      v123 = *v118++;
      v122 = v123;
      v124 = *(v120 - 16);
      v126 = *v120++;
      v125 = v126;
      v127 = 19077 * v122;
      v128 = ((26149 * v126) >> 8) + (v127 >> 8);
      v129 = v128 - 14234;
      v130 = (v128 - 14234) >> 6;
      if (v128 >= 0x379A)
      {
        v131 = -8;
      }

      else
      {
        v131 = 0;
      }

      if (v129 >= 0x4000)
      {
        LOBYTE(v130) = v131;
      }

      v132 = (v127 >> 8) - (((6419 * v124) >> 8) + ((13320 * v125) >> 8));
      v133 = v132 + 8708;
      v134 = (v132 + 8708) >> 6;
      if (v132 >= -8708)
      {
        v135 = 255;
      }

      else
      {
        v135 = 0;
      }

      if (v133 < 0x4000)
      {
        v135 = v134;
      }

      v136 = ((33050 * v124) >> 8) + (v127 >> 8);
      v137 = v136 - 17685;
      v138 = (v136 - 17685) >> 9;
      if (v136 >= 0x4515)
      {
        v139 = 31;
      }

      else
      {
        v139 = 0;
      }

      if (v137 < 0x4000)
      {
        v139 = v138;
      }

      *(v119 - 1) = v130 & 0xF8 | (v135 >> 5);
      *v119 = (8 * v135) & 0xE0 | v139;
      v119 += 2;
      --v121;
    }

    while (v121);
    if (a2)
    {
      v140 = &a8[2 * v163 + 3];
      v141 = &v164[a2];
      v142 = v170;
      result = 13320;
      do
      {
        v144 = *v141++;
        v143 = v144;
        v145 = *(v142 - 16);
        v147 = *v142++;
        v146 = v147;
        v148 = 19077 * v143;
        v149 = ((26149 * v147) >> 8) + (v148 >> 8);
        v150 = v149 - 14234;
        v151 = (v149 - 14234) >> 6;
        if (v149 >= 0x379A)
        {
          v152 = -8;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        v153 = (v148 >> 8) - (((6419 * v145) >> 8) + ((13320 * v146) >> 8));
        v154 = v153 + 8708;
        v155 = (v153 + 8708) >> 6;
        if (v153 >= -8708)
        {
          v156 = 255;
        }

        else
        {
          v156 = 0;
        }

        if (v154 < 0x4000)
        {
          v156 = v155;
        }

        v157 = ((33050 * v145) >> 8) + (v148 >> 8);
        v158 = v157 - 17685;
        v159 = (v157 - 17685) >> 9;
        if (v157 >= 0x4515)
        {
          v160 = 31;
        }

        else
        {
          v160 = 0;
        }

        if (v158 < 0x4000)
        {
          v160 = v159;
        }

        *(v140 - 1) = v152 & 0xF8 | (v156 >> 5);
        *v140 = (8 * v156) & 0xE0 | v160;
        v140 += 2;
        --v117;
      }

      while (v117);
    }
  }

  return result;
}

uint64_t UpsampleRgba4444LinePair_NEON(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, _BYTE *a7, _BYTE *a8, int a9)
{
  v171 = *MEMORY[0x1E69E9840];
  v169 = 0u;
  memset(v170, 0, 31);
  v167 = 0u;
  v168 = 0u;
  if (!a1)
  {
    UpsampleRgba4444LinePair_NEON_cold_1();
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v15 = (a9 + 1) >> 1;
  v16 = v15 - 1;
  v161 = (v15 - ((v15 - 1) & 0xFFFFFFFFFFFFFFF8));
  v17 = *a3;
  v18 = *a5;
  v19 = ((v18 + v17) >> 1) + 1;
  v20 = *a4;
  v21 = *a6;
  v22 = ((v21 + v20) >> 1) + 1;
  v23 = (v19 + v17) >> 1;
  v24 = (v22 + v20) >> 1;
  v164 = a1;
  v25 = (19077 * *a1) >> 8;
  v26 = v25 + ((26149 * v24) >> 8);
  if (v26 >= 0x379A)
  {
    v27 = -16;
  }

  else
  {
    v27 = 0;
  }

  if (v26 - 14234 >= 0x4000)
  {
    v28 = v27;
  }

  else
  {
    v28 = (v26 - 14234) >> 6;
  }

  v29 = v25 - (((13320 * v24) >> 8) + ((6419 * v23) >> 8));
  v30 = (v29 + 8708) >> 10;
  if (v29 >= -8708)
  {
    v31 = 15;
  }

  else
  {
    v31 = 0;
  }

  if ((v29 + 8708) >= 0x4000)
  {
    LOBYTE(v30) = v31;
  }

  v32 = v25 + ((33050 * v23) >> 8);
  v33 = v32 >= 0x4515;
  v34 = v32 - 17685;
  *a7 = v28 & 0xF0 | v30;
  if (v33)
  {
    v35 = -16;
  }

  else
  {
    v35 = 0;
  }

  v33 = v34 >= 0x4000;
  v36 = v34 >> 6;
  if (v33)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = (v16 >> 3);
  a7[1] = v37 | 0xF;
  if (a2)
  {
    v39 = (v19 + v18) >> 1;
    v40 = (v22 + v21) >> 1;
    v41 = (19077 * *a2) >> 8;
    v42 = v41 + ((26149 * v40) >> 8);
    v43 = v42 - 14234;
    v44 = (v42 - 14234) >> 6;
    if (v42 >= 0x379A)
    {
      v45 = -16;
    }

    else
    {
      v45 = 0;
    }

    if (v43 < 0x4000)
    {
      v45 = v44;
    }

    v46 = v41 - (((13320 * v40) >> 8) + ((6419 * v39) >> 8));
    v47 = v46 + 8708;
    v48 = (v46 + 8708) >> 10;
    if (v46 >= -8708)
    {
      v49 = 15;
    }

    else
    {
      v49 = 0;
    }

    if (v47 < 0x4000)
    {
      v49 = v48;
    }

    v50 = v41 + ((33050 * v39) >> 8);
    v51 = v50 - 17685;
    v52 = (v50 - 17685) >> 6;
    if (v50 >= 0x4515)
    {
      v53 = -16;
    }

    else
    {
      v53 = 0;
    }

    *a8 = v45 & 0xF0 | v49;
    if (v51 < 0x4000)
    {
      v53 = v52;
    }

    a8[1] = v53 | 0xF;
  }

  v162 = (16 * v38) | 1;
  if (v38 >= 1)
  {
    v54 = 0;
    v56 = vdupq_n_s16(0x11Au);
    v57 = vdupq_n_s16(0xC866u);
    v58 = vdupq_n_s16(0x2204u);
    v59 = vdupq_n_s16(0xBAEBu);
    v61 = v164;
    do
    {
      v62 = 0;
      v63 = *(a3 + 1);
      v64 = *(v12 + 1);
      v65 = vaddl_u8(v64, *a3);
      v66 = vaddl_u8(*v12, v63);
      v67 = vaddq_s16(v65, v66);
      *v65.i8 = vshrn_n_s16(vaddq_s16(v67, vaddq_s16(v65, v65)), 3uLL);
      *v66.i8 = vshrn_n_s16(vaddq_s16(v67, vaddq_s16(v66, v66)), 3uLL);
      *v67.i8 = vrhadd_u8(*a3, *v66.i8);
      v68 = vrhadd_u8(v63, *v65.i8);
      v174.val[0] = vrhadd_u8(*v12, *v65.i8);
      v174.val[1] = vrhadd_u8(v64, *v66.i8);
      vst2_s8(&v167, v67);
      vst2_s8(&v169, v174);
      v174.val[1] = *(v13 + 1);
      v69 = *(v11 + 1);
      v70 = vaddl_u8(v69, *v13);
      v71 = vaddl_u8(*v11, v174.val[1]);
      v72 = vaddq_s16(v70, v71);
      *v70.i8 = vshrn_n_s16(vaddq_s16(v72, vaddq_s16(v70, v70)), 3uLL);
      *v71.i8 = vshrn_n_s16(vaddq_s16(v72, vaddq_s16(v71, v71)), 3uLL);
      *v72.i8 = vrhadd_u8(*v13, *v71.i8);
      v73 = vrhadd_u8(v174.val[1], *v70.i8);
      v174.val[0] = vrhadd_u8(*v11, *v70.i8);
      v174.val[1] = vrhadd_u8(v69, *v71.i8);
      v55 = &v168;
      vst2_s8(v55, v72);
      v60 = v170;
      vst2_s8(v60, v174);
      v74 = 1;
      v75 = (16 * v54) | 1;
      v76 = (16 * v54) | 1u;
      do
      {
        v77 = v74;
        v78 = *&v61[v75 + v62];
        v79 = 2 * (v62 | v76);
        v80 = (&v167 + v62);
        v81 = vshll_n_u8(*v80, 7uLL);
        v82 = vshll_n_u8(v80[2], 7uLL);
        v83 = vqdmulhq_lane_s16(vshll_n_u8(v78, 7uLL), 0x3408191366254A85, 0);
        v84 = vqaddq_s16(v83, v57);
        v85 = vqaddq_s16(v83, v58);
        v86 = vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v81, v56), vqaddq_s16(v83, v59)), v81);
        *v81.i8 = vsri_n_s8(vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v82, 0x3408191366254A85, 1), v84), 6uLL), vqshrun_n_s16(vqsubq_s16(v85, vqaddq_s16(vqdmulhq_lane_s16(v81, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v82, 0x3408191366254A85, 3))), 6uLL), 4uLL);
        *v86.i8 = vsri_n_s8(vqshrun_n_s16(v86, 6uLL), -1, 4uLL);
        *&a7[v79] = vzip1q_s8(v81, v86);
        v62 = 8;
        v74 = 0;
      }

      while ((v77 & 1) != 0);
      if (a2)
      {
        v87 = 0;
        v88 = &a2[v75];
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = *&v88[v87];
          v92 = 2 * (v87 | v76);
          v93 = &v170[v87 - 16];
          v94 = vshll_n_u8(*v93, 7uLL);
          v95 = vshll_n_u8(v93[2], 7uLL);
          v96 = vqdmulhq_lane_s16(vshll_n_u8(v91, 7uLL), 0x3408191366254A85, 0);
          v97 = vqaddq_s16(v96, v57);
          v98 = vqaddq_s16(v96, v58);
          v99 = vqaddq_s16(vqaddq_s16(vqdmulhq_s16(v94, v56), vqaddq_s16(v96, v59)), v94);
          *v94.i8 = vsri_n_s8(vqshrun_n_s16(vqaddq_s16(vqdmulhq_lane_s16(v95, 0x3408191366254A85, 1), v97), 6uLL), vqshrun_n_s16(vqsubq_s16(v98, vqaddq_s16(vqdmulhq_lane_s16(v94, 0x3408191366254A85, 2), vqdmulhq_lane_s16(v95, 0x3408191366254A85, 3))), 6uLL), 4uLL);
          *v99.i8 = vsri_n_s8(vqshrun_n_s16(v99, 6uLL), -1, 4uLL);
          *&a8[v92] = vzip1q_s8(v94, v99);
          v87 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
      }

      a3 += 8;
      v12 += 8;
      v13 += 8;
      v11 += 8;
      ++v54;
    }

    while (v54 != v38);
  }

  memset(v166, 0, 9);
  memset(v165, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  v100 = 9 - v161;
  memset(v166 + v161, v166[0].u8[(v161 - 1)], v100);
  memset(v165 + v161, v165[0].u8[(v161 - 1)], v100);
  v101 = *(v165 + 1);
  v102 = vaddl_u8(*(v165 + 1), v166[0]);
  v103 = vaddl_u8(v165[0], *(v166 + 1));
  v104 = vaddq_s16(v102, v103);
  *v102.i8 = vshrn_n_s16(vaddq_s16(v104, vaddq_s16(v102, v102)), 3uLL);
  *v103.i8 = vshrn_n_s16(vaddq_s16(v104, vaddq_s16(v103, v103)), 3uLL);
  *v104.i8 = vrhadd_u8(v166[0], *v103.i8);
  v105 = vrhadd_u8(*(v166 + 1), *v102.i8);
  v172.val[0] = vrhadd_u8(v165[0], *v102.i8);
  v106 = &v167;
  vst2_s8(v106, v104);
  v172.val[1] = vrhadd_u8(v101, *v103.i8);
  v108 = &v169;
  vst2_s8(v108, v172);
  memset(v166, 0, 9);
  memset(v165, 0, 9);
  __memcpy_chk();
  __memcpy_chk();
  memset(v166 + v161, v166[0].u8[(v161 - 1)], v100);
  result = memset(v165 + v161, v165[0].u8[(v161 - 1)], v100);
  v110 = *(v165 + 1);
  v111 = vaddl_u8(*(v165 + 1), v166[0]);
  v112 = vaddl_u8(v165[0], *(v166 + 1));
  v113 = vaddq_s16(v111, v112);
  *v111.i8 = vshrn_n_s16(vaddq_s16(v113, vaddq_s16(v111, v111)), 3uLL);
  *v112.i8 = vshrn_n_s16(vaddq_s16(v113, vaddq_s16(v112, v112)), 3uLL);
  *v113.i8 = vrhadd_u8(v166[0], *v112.i8);
  v114 = vrhadd_u8(*(v166 + 1), *v111.i8);
  v173.val[0] = vrhadd_u8(v165[0], *v111.i8);
  v107 = &v168;
  vst2_s8(v107, v113);
  v173.val[1] = vrhadd_u8(v110, *v112.i8);
  v115 = v170;
  vst2_s8(v115, v173);
  v116 = (a9 - v162);
  if (v116 >= 1)
  {
    v163 = 16 * v38;
    v117 = &v164[v162];
    v164 = v162;
    v118 = &a7[32 * v38 + 3];
    v119 = &v168;
    result = 240;
    v120 = (a9 - v162);
    do
    {
      v122 = *v117++;
      v121 = v122;
      v123 = *(v119 - 16);
      v125 = *v119++;
      v124 = v125;
      v126 = 19077 * v121;
      v127 = ((26149 * v125) >> 8) + (v126 >> 8);
      v128 = v127 - 14234;
      v129 = (v127 - 14234) >> 6;
      if (v127 >= 0x379A)
      {
        v130 = -16;
      }

      else
      {
        v130 = 0;
      }

      if (v128 >= 0x4000)
      {
        LOBYTE(v129) = v130;
      }

      v131 = (v126 >> 8) - (((6419 * v123) >> 8) + ((13320 * v124) >> 8));
      v132 = v131 + 8708;
      v133 = (v131 + 8708) >> 10;
      if (v131 >= -8708)
      {
        v134 = 15;
      }

      else
      {
        v134 = 0;
      }

      if (v132 < 0x4000)
      {
        v134 = v133;
      }

      v135 = ((33050 * v123) >> 8) + (v126 >> 8);
      v136 = v135 - 17685;
      v137 = (v135 - 17685) >> 6;
      if (v135 >= 0x4515)
      {
        v138 = -16;
      }

      else
      {
        v138 = 0;
      }

      *(v118 - 1) = v129 & 0xF0 | v134;
      if (v136 >= 0x4000)
      {
        v139 = v138;
      }

      else
      {
        v139 = v137;
      }

      *v118 = v139 | 0xF;
      v118 += 2;
      --v120;
    }

    while (v120);
    if (a2)
    {
      v140 = &a8[2 * v163 + 3];
      v141 = &v164[a2];
      v142 = v170;
      result = 13320;
      do
      {
        v144 = *v141++;
        v143 = v144;
        v145 = *(v142 - 16);
        v147 = *v142++;
        v146 = v147;
        v148 = 19077 * v143;
        v149 = ((26149 * v147) >> 8) + (v148 >> 8);
        v150 = v149 - 14234;
        v151 = (v149 - 14234) >> 6;
        if (v149 >= 0x379A)
        {
          v152 = -16;
        }

        else
        {
          v152 = 0;
        }

        if (v150 < 0x4000)
        {
          v152 = v151;
        }

        v153 = (v148 >> 8) - (((6419 * v145) >> 8) + ((13320 * v146) >> 8));
        v154 = v153 + 8708;
        v155 = (v153 + 8708) >> 10;
        if (v153 >= -8708)
        {
          v156 = 15;
        }

        else
        {
          v156 = 0;
        }

        if (v154 < 0x4000)
        {
          v156 = v155;
        }

        v157 = ((33050 * v145) >> 8) + (v148 >> 8);
        v158 = v157 - 17685;
        v159 = (v157 - 17685) >> 6;
        if (v157 >= 0x4515)
        {
          v160 = -16;
        }

        else
        {
          v160 = 0;
        }

        *(v140 - 1) = v152 & 0xF0 | v156;
        if (v158 < 0x4000)
        {
          v160 = v159;
        }

        *v140 = v160 | 0xF;
        v140 += 2;
        --v116;
      }

      while (v116);
    }
  }

  return result;
}

void VP8LDspInitNEON()
{
  qword_1EA8E17E0 = Predictor5_NEON;
  qword_1EA8E17E8 = Predictor6_NEON;
  qword_1EA8E17F0 = Predictor7_NEON;
  qword_1EA8E1820 = Predictor13_NEON;
  VP8LPredictorsAdd = PredictorAdd0_NEON;
  qword_1EA8E1740 = PredictorAdd1_NEON;
  qword_1EA8E1748 = PredictorAdd2_NEON;
  qword_1EA8E1750 = PredictorAdd3_NEON;
  qword_1EA8E1758 = PredictorAdd4_NEON;
  qword_1EA8E1760 = PredictorAdd5_NEON;
  qword_1EA8E1768 = PredictorAdd6_NEON;
  qword_1EA8E1770 = PredictorAdd7_NEON;
  qword_1EA8E1778 = PredictorAdd8_NEON;
  qword_1EA8E1780 = PredictorAdd9_NEON;
  qword_1EA8E1788 = PredictorAdd10_NEON;
  qword_1EA8E1790 = PredictorAdd11_NEON;
  qword_1EA8E1798 = PredictorAdd12_NEON;
  qword_1EA8E17A0 = PredictorAdd13_NEON;
  VP8LConvertBGRAToRGBA = ConvertBGRAToRGBA_NEON;
  VP8LConvertBGRAToBGR = ConvertBGRAToBGR_NEON;
  VP8LConvertBGRAToRGB = ConvertBGRAToRGB_NEON;
  VP8LAddGreenToBlueAndRed = AddGreenToBlueAndRed_NEON;
  VP8LTransformColorInverse = TransformColorInverse_NEON;
}

float Predictor5_NEON(const float *a1, const float *a2)
{
  v2 = vld1_dup_f32(a1);
  v4 = vld1_dup_f32(a2);
  v3 = a2 + 1;
  v5 = vld1_dup_f32(v3);
  LODWORD(result) = vhadd_u8(vhadd_u8(v2, v5), v4).u32[0];
  return result;
}

float Predictor6_NEON(const float *a1, uint64_t a2)
{
  v2 = vld1_dup_f32(a1);
  v3 = (a2 - 4);
  v4 = vld1_dup_f32(v3);
  LODWORD(result) = vhadd_u8(v2, v4).u32[0];
  return result;
}

float Predictor7_NEON(const float *a1, const float *a2)
{
  v2 = vld1_dup_f32(a1);
  v3 = vld1_dup_f32(a2);
  LODWORD(result) = vhadd_u8(v2, v3).u32[0];
  return result;
}

float Predictor13_NEON(const float *a1, const float *a2)
{
  v2 = vld1_dup_f32(a1);
  v3 = vld1_dup_f32(a2);
  v4 = a2 - 1;
  v5 = vhadd_u8(v2, v3);
  v6 = vld1_dup_f32(v4);
  LODWORD(result) = vqmovun_s16(vaddw_u8(vmovl_s8(vhsub_u8(v5, vadd_s8(vcgt_u8(v6, v5), v6))), v5)).u32[0];
  return result;
}

uint64_t PredictorAdd0_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = 4;
    v6.i64[0] = 0xFF000000FF000000;
    v6.i64[1] = 0xFF000000FF000000;
    v7 = a1;
    v8 = a4;
    do
    {
      v9 = *v7++;
      *v8++ = vaddq_s8(v9, v6);
      v5 += 4;
    }

    while (v5 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return VP8LPredictorsAdd_C(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd1_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = 4;
    v6 = a4;
    v7 = a1;
    do
    {
      v8 = *v7++;
      v9 = vaddq_s8(vextq_s8(0, v8, 0xCuLL), v8);
      v10 = &v6[-1].i32[3];
      v11 = vld1q_dup_f32(v10);
      *v6++ = vaddq_s8(vextq_s8(0, v9, 8uLL), vaddq_s8(v9, v11));
      v5 += 4;
    }

    while (v5 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16C0(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd2_NEON(int8x16_t *a1, int8x16_t *a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = 4;
    v6 = a1;
    v7 = a2;
    v8 = a4;
    do
    {
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      *v8++ = vaddq_s8(v11, v10);
      v5 += 4;
    }

    while (v5 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16C8(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd3_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = (a2 + 4);
    v6 = 4;
    v7 = a1;
    v8 = a4;
    do
    {
      v9 = *v7++;
      v10 = v9;
      v11 = *v5++;
      *v8++ = vaddq_s8(v11, v10);
      v6 += 4;
    }

    while (v6 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16D0(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd4_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = (a2 - 4);
    v4 = a3 & 0x7FFFFFFC;
    v6 = 4;
    v7 = a1;
    v8 = a4;
    do
    {
      v9 = *v7++;
      v10 = v9;
      v11 = *v5++;
      *v8++ = vaddq_s8(v11, v10);
      v6 += 4;
    }

    while (v6 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16D8(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd5_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = (a2 + 4);
    v8 = 4;
    v9 = a1;
    v10 = a4;
    do
    {
      v11 = *v9++;
      v12 = v11;
      v13 = *(v7 - 4);
      v14 = *v7++;
      v15 = vaddq_s8(vhaddq_u8(vhaddq_u8(v6, v14), v13), v12);
      v16 = vaddq_s8(vhaddq_u8(vhaddq_u8(vextq_s8(v15, v15, 0xCuLL), v14), v13), v12);
      v17 = vaddq_s8(vhaddq_u8(vhaddq_u8(vextq_s8(v16, v16, 0xCuLL), v14), v13), v12);
      v18 = vaddq_s8(vhaddq_u8(vhaddq_u8(vextq_s8(v17, v17, 0xCuLL), v14), v13), v12);
      v15.i32[1] = v16.i32[1];
      v15.i64[1] = __PAIR64__(v18.u32[3], v17.u32[2]);
      *v10++ = v15;
      v6 = vextq_s8(v18, v18, 0xCuLL);
      v8 += 4;
    }

    while (v8 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16E0(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd6_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v7 = (a2 - 4);
    v4 = a3 & 0x7FFFFFFC;
    v8 = 4;
    v9 = a1;
    v10 = a4;
    do
    {
      v11 = *v9++;
      v12 = v11;
      v13 = *v7++;
      v14 = vaddq_s8(vhaddq_u8(v6, v13), v12);
      v15 = vaddq_s8(vhaddq_u8(vextq_s8(v14, v14, 0xCuLL), v13), v12);
      v16 = vaddq_s8(vhaddq_u8(vextq_s8(v15, v15, 0xCuLL), v13), v12);
      v17 = vaddq_s8(vhaddq_u8(vextq_s8(v16, v16, 0xCuLL), v13), v12);
      v14.i32[1] = v15.i32[1];
      v14.i64[1] = __PAIR64__(v17.u32[3], v16.u32[2]);
      *v10++ = v14;
      v6 = vextq_s8(v17, v17, 0xCuLL);
      v8 += 4;
    }

    while (v8 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16E8(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd7_NEON(int8x16_t *a1, uint8x16_t *a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = 4;
    v8 = a1;
    v9 = a2;
    v10 = a4;
    do
    {
      v11 = *v8++;
      v12 = v11;
      v13 = *v9++;
      v14 = vaddq_s8(vhaddq_u8(v6, v13), v12);
      v15 = vaddq_s8(vhaddq_u8(vextq_s8(v14, v14, 0xCuLL), v13), v12);
      v16 = vaddq_s8(vhaddq_u8(vextq_s8(v15, v15, 0xCuLL), v13), v12);
      v17 = vaddq_s8(vhaddq_u8(vextq_s8(v16, v16, 0xCuLL), v13), v12);
      v14.i32[1] = v15.i32[1];
      v14.i64[1] = __PAIR64__(v17.u32[3], v16.u32[2]);
      *v10++ = v14;
      v6 = vextq_s8(v17, v17, 0xCuLL);
      v7 += 4;
    }

    while (v7 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16F0(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd8_NEON(int8x16_t *a1, uint8x16_t *a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = 4;
    v6 = a2;
    v7 = a1;
    v8 = a4;
    do
    {
      v9 = *v7++;
      v10 = v9;
      v11 = *(v6 - 4);
      v12 = *v6++;
      *v8++ = vaddq_s8(vhaddq_u8(v12, v11), v10);
      v5 += 4;
    }

    while (v5 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E16F8(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd9_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v4 = a3 & 0x7FFFFFFC;
    v5 = (a2 + 4);
    v6 = 4;
    v7 = a1;
    v8 = a4;
    do
    {
      v9 = *v7++;
      *v8++ = vaddq_s8(vhaddq_u8(*(v5 - 4), *v5), v9);
      v6 += 4;
      ++v5;
    }

    while (v6 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E1700(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd10_NEON(int8x16_t *a1, uint64_t a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = 4;
    v8 = a2;
    v9 = a1;
    v10 = a4;
    do
    {
      v11 = *v9++;
      v12 = *(v8 - 4);
      v13 = vhaddq_u8(*v8, *(v8 + 4));
      v14 = vaddq_s8(vhaddq_u8(v13, vhaddq_u8(v6, v12)), v11);
      v15 = vaddq_s8(vhaddq_u8(v13, vhaddq_u8(vextq_s8(v14, v14, 0xCuLL), v12)), v11);
      v16 = vaddq_s8(vhaddq_u8(v13, vhaddq_u8(vextq_s8(v15, v15, 0xCuLL), v12)), v11);
      v17 = vaddq_s8(vhaddq_u8(v13, vhaddq_u8(vextq_s8(v16, v16, 0xCuLL), v12)), v11);
      v14.i32[1] = v15.i32[1];
      v14.i64[1] = __PAIR64__(v17.u32[3], v16.u32[2]);
      *v10++ = v14;
      v6 = vextq_s8(v17, v17, 0xCuLL);
      v7 += 4;
      v8 += 16;
    }

    while (v7 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E1708(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd11_NEON(int8x16_t *a1, uint8x16_t *a2, int a3, int8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = 4;
    v8 = a2;
    v9 = a1;
    v10 = a4;
    do
    {
      v11 = *(v8 - 4);
      v12 = vpaddlq_u16(vpaddlq_u8(vabdq_u8(*v8, v11)));
      v13 = *v9++;
      v14 = vaddq_s8(v13, *v8);
      v15 = vbslq_s8(vcgeq_u32(v12, vpaddlq_u16(vpaddlq_u8(vabdq_u8(v6, v11)))), v14, vaddq_s8(v13, v6));
      v16 = vextq_s8(v15, v15, 0xCuLL);
      v17 = vbslq_s8(vcgeq_u32(v12, vpaddlq_u16(vpaddlq_u8(vabdq_u8(v16, v11)))), v14, vaddq_s8(v16, v13));
      v18 = vextq_s8(v17, v17, 0xCuLL);
      v19 = vbslq_s8(vcgeq_u32(v12, vpaddlq_u16(vpaddlq_u8(vabdq_u8(v18, v11)))), v14, vaddq_s8(v18, v13));
      v20 = vextq_s8(v19, v19, 0xCuLL);
      v21 = vbslq_s8(vcgeq_u32(v12, vpaddlq_u16(vpaddlq_u8(vabdq_u8(v20, v11)))), v14, vaddq_s8(v20, v13));
      v15.i32[1] = v17.i32[1];
      v15.i64[1] = __PAIR64__(v21.u32[3], v19.u32[2]);
      *v10++ = v15;
      v6 = vextq_s8(v21, v21, 0xCuLL);
      v7 += 4;
      ++v8;
    }

    while (v7 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E1710(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd12_NEON(int8x16_t *a1, uint8x16_t *a2, int a3, _OWORD *a4)
{
  if (a3 >= 4)
  {
    v5 = a4 - 1;
    v6 = vld1_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = vmovl_u8(v6);
    v8 = 4;
    v9 = a2;
    v10 = a1;
    v11 = a4;
    do
    {
      v12 = *v10++;
      v13 = v12;
      v14 = *(v9 - 4);
      v15 = *v9++;
      v16 = vsubl_u8(*v15.i8, *v14.i8);
      v17 = vsubl_high_u8(v15, v14);
      *&v18 = vadd_s8(vqmovun_s16(vaddq_s16(v16, v7)), *v13.i8);
      v19 = vmovl_u8(*&v18);
      *v19.i8 = vadd_s8(vqmovun_s16(vaddq_s16(vextq_s8(v19, v19, 8uLL), v16)), *v13.i8);
      v20 = vmovl_u8(*v19.i8);
      v13.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
      *v20.i8 = vadd_s8(vqmovun_s16(vaddq_s16(vextq_s8(v20, v20, 8uLL), v17)), *v13.i8);
      v21 = vmovl_u8(*v20.i8);
      *v13.i8 = vadd_s8(vqmovun_s16(vaddq_s16(vextq_s8(v21, v21, 8uLL), v17)), *v13.i8);
      v22 = vmovl_u8(*v13.i8);
      DWORD1(v18) = v19.i32[1];
      *(&v18 + 1) = __PAIR64__(v13.u32[1], v20.u32[0]);
      *v11++ = v18;
      v7 = vextq_s8(v22, v22, 8uLL);
      v8 += 4;
    }

    while (v8 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E1718(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

uint64_t PredictorAdd13_NEON(int8x16_t *a1, uint8x16_t *a2, int a3, uint8x16_t *a4)
{
  if (a3 >= 4)
  {
    v5 = &a4[-1].i32[3];
    v6 = vld1q_dup_f32(v5);
    v4 = a3 & 0x7FFFFFFC;
    v7 = 4;
    v8 = a1;
    v9 = a2;
    v10 = a4;
    do
    {
      v11 = *v8++;
      v12 = *(&v9[-1] + 12);
      v13 = vhaddq_u8(v6, *v9);
      *v13.i8 = vadd_s8(vqmovun_s16(vaddw_u8(vmovl_s8(*&vhsubq_u8(v13, vaddq_s8(v12, vcgtq_u8(v12, v13)))), *v13.i8)), *v11.i8);
      v14.i64[0] = v13.i64[0];
      v14.i64[1] = v13.i64[0];
      v15 = vhaddq_u8(vextq_s8(v14, v14, 0xCuLL), *v9);
      *v15.i8 = vadd_s8(vqmovun_s16(vaddw_u8(vmovl_s8(*&vhsubq_u8(v15, vaddq_s8(v12, vcgtq_u8(v12, v15)))), *v15.i8)), *v11.i8);
      v13.i32[1] = v15.i32[1];
      v15.i64[1] = v15.i64[0];
      v16 = vhaddq_u8(vextq_s8(v15, v15, 0xCuLL), *v9);
      v17 = vextq_s8(v11, v11, 8uLL).u64[0];
      *v16.i8 = vadd_s8(vqmovun_s16(vaddw_high_u8(vmovl_high_s8(vhsubq_u8(v16, vaddq_s8(v12, vcgtq_u8(v12, v16)))), v16)), v17);
      v13.i32[2] = v16.i32[0];
      v16.i64[1] = v16.i64[0];
      v18 = vhaddq_u8(vextq_s8(v16, v16, 0xCuLL), *v9);
      *v12.i8 = vadd_s8(vqmovun_s16(vaddw_high_u8(vmovl_high_s8(vhsubq_u8(v18, vaddq_s8(v12, vcgtq_u8(v12, v18)))), v18)), v17);
      v13.i32[3] = v12.i32[1];
      v12.i64[1] = v12.i64[0];
      *v10++ = v13;
      v6 = vextq_s8(v12, v12, 0xCuLL);
      v7 += 4;
      ++v9;
    }

    while (v7 <= a3);
  }

  else
  {
    v4 = 0;
  }

  return off_1EA8E1720(a1 + 4 * v4, a2 + 4 * v4, a3 - v4, a4 + 4 * v4);
}

int *ConvertBGRAToRGBA_NEON(char *a1, int a2, char *a3)
{
  if ((a2 & 0xFFFFFFF0) >= 1)
  {
    v3 = &a1[4 * (a2 & 0xFFFFFFF0)];
    do
    {
      v5 = vld4q_s8(a1);
      a1 += 64;
      v6.val[0] = v5.val[2];
      v6.val[1] = v5.val[1];
      v6.val[2] = v5.val[0];
      v6.val[3] = v5.val[3];
      vst4q_s8(a3, v6);
      a3 += 64;
    }

    while (a1 < v3);
  }

  return VP8LConvertBGRAToRGBA_C(a1, a2 & 0xF, a3);
}

int *ConvertBGRAToBGR_NEON(char *a1, int a2, char *a3)
{
  if ((a2 & 0xFFFFFFF0) >= 1)
  {
    v3 = &a1[4 * (a2 & 0xFFFFFFF0)];
    do
    {
      v5 = vld4q_s8(a1);
      a1 += 64;
      vst3q_s8(a3, *v5.val[0].i8);
      a3 += 48;
    }

    while (a1 < v3);
  }

  return VP8LConvertBGRAToBGR_C(a1, a2 & 0xF, a3);
}

int *ConvertBGRAToRGB_NEON(char *a1, int a2, char *a3)
{
  if ((a2 & 0xFFFFFFF0) >= 1)
  {
    v3 = &a1[4 * (a2 & 0xFFFFFFF0)];
    do
    {
      v6 = vld4q_s8(a1);
      a1 += 64;
      v5.val[0] = v6.val[2];
      v5.val[1] = v6.val[1];
      v5.val[2] = v6.val[0];
      vst3q_s8(a3, v5);
      a3 += 48;
    }

    while (a1 < v3);
  }

  return VP8LConvertBGRAToRGB_C(a1, a2 & 0xF, a3);
}

unsigned int *AddGreenToBlueAndRed_NEON(unsigned int *a1, int a2, unsigned int *a3, double a4, double a5, int8x16_t a6)
{
  if ((a2 & 0xFFFFFFFC) >= 1)
  {
    v6 = &a1[a2 & 0xFFFFFFFC];
    do
    {
      v7 = *a1;
      a1 += 4;
      a6.i64[0] = v7.i64[0];
      *a6.i8 = vqtbl1_s8(a6, 0xFF05FF05FF01FF01);
      a6.u64[1] = vqtbl1_s8(vextq_s8(v7, v7, 8uLL), 0xFF05FF05FF01FF01);
      *a3 = vaddq_s8(a6, v7);
      a3 += 4;
    }

    while (a1 < v6);
  }

  return VP8LAddGreenToBlueAndRed_C(a1, a2 & 3, a3);
}

char *TransformColorInverse_NEON(char *a1, int8x16_t *a2, int a3, int8x16_t *a4, int32x2_t a5, int8x16_t a6, double a7, double a8, int8x16_t a9)
{
  if (a3 >= 4)
  {
    a5.i8[0] = *a1;
    a5.i8[4] = a1[1];
    v10 = vshr_n_s32(vshr_n_s32(vshl_n_s32(vshl_n_s32(a5, 8uLL), 0x10uLL), 0x10uLL), 6uLL);
    *a6.i8 = vuzp1_s16(v10, v10);
    v12.i16[0] = 0;
    v12.i16[4] = 0;
    *(v12.i32 + 2) = (4 * a1[2]);
    v12.i16[3] = 4 * a1[2];
    v11 = vqtbl1q_s8(a6, xmmword_18622A790);
    *(&v12.i32[2] + 2) = *(v12.i32 + 2);
    v12.i16[7] = v12.i16[3];
    v9 = a3 & 0x7FFFFFFC;
    v13 = 4;
    v14 = a2;
    v15 = a4;
    do
    {
      v16 = *v14++;
      a9.i64[0] = v16.i64[0];
      *v17.i8 = vqtbl1_s8(a9, 0x5FF05FF01FF01FFLL);
      v17.u64[1] = vqtbl1_s8(vextq_s8(v16, v16, 8uLL), 0x5FF05FF01FF01FFLL);
      v18 = vshlq_n_s16(vaddq_s8(v16, vqdmulhq_s16(v17, v11)), 8uLL);
      a9 = vshrq_n_u16(vaddq_s8(v18, vshrq_n_u32(vqdmulhq_s16(v18, v12), 8uLL)), 8uLL);
      *v15++ = vorrq_s8((*&v16 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), a9);
      v13 += 4;
    }

    while (v13 <= a3);
  }

  else
  {
    v9 = 0;
  }

  return VP8LTransformColorInverse_C(a1, &a2->i32[v9], a3 - v9, a4 + v9);
}

uint64_t VP8InitDithering(uint64_t result, _DWORD *a2)
{
  if (!a2)
  {
    VP8InitDithering_cold_1();
  }

  v2 = result;
  if (!result)
  {
    return result;
  }

  v4 = *(result + 44);
  if ((v4 & 0x80000000) == 0)
  {
    if (v4 > 0x64)
    {
      v5 = 255;
      goto LABEL_8;
    }

    if (v4)
    {
      v5 = (255 * v4) / 0x64u;
LABEL_8:
      v6 = 0;
      v7 = a2 + 272;
      v8 = 4;
      do
      {
        v9 = *(v7 - 1);
        if (v9 >= 12)
        {
          v10 = *v7;
        }

        else
        {
          v10 = (v5 * kQuantToDitherAmp[v9 & ~(v9 >> 31)]) >> 3;
          *v7 = v10;
        }

        v6 |= v10;
        v7 += 8;
        --v8;
      }

      while (v8);
      if (v6)
      {
        result = VP8InitRandom((a2 + 207), 1.0);
        a2[206] = 1;
      }
    }
  }

  v11 = *(v2 + 52);
  a2[754] = v11;
  if (v11 <= 100)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return result;
    }

    v12 = 0;
  }

  else
  {
    v12 = 100;
  }

  a2[754] = v12;
  return result;
}

uint64_t VP8ProcessRow(uint64_t a1, int *a2)
{
  v5 = *(a1 + 2920) >= 1 && (v4 = *(a1 + 2908), v4 >= *(a1 + 420)) && v4 <= *(a1 + 428);
  if (*(a1 + 200))
  {
    v6 = WebPGetWorkerInterface();
    v7 = (v6[2])(a1 + 152);
    if (*(a1 + 160) != 1)
    {
      VP8ProcessRow_cold_1();
    }

    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v11 = *a2;
    *(a1 + 264) = *(a2 + 1);
    *(a1 + 248) = v11;
    v12 = *(a2 + 2);
    v13 = *(a2 + 3);
    v14 = *(a2 + 5);
    *(a1 + 312) = *(a2 + 4);
    *(a1 + 328) = v14;
    *(a1 + 280) = v12;
    *(a1 + 296) = v13;
    v15 = *(a2 + 6);
    v16 = *(a2 + 7);
    v17 = *(a2 + 9);
    *(a1 + 376) = *(a2 + 8);
    *(a1 + 392) = v17;
    *(a1 + 344) = v15;
    *(a1 + 360) = v16;
    v18 = *(a1 + 2908);
    v19 = *(a1 + 200);
    *(a1 + 216) = *(a1 + 204);
    *(a1 + 220) = v18;
    *(a1 + 224) = v5;
    if (v19 == 2)
    {
      v20 = *(a1 + 240);
      *(a1 + 240) = *(a1 + 2912);
      *(a1 + 2912) = v20;
      if (!v5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      ReconstructRow(a1, (a1 + 216));
      if (!v5)
      {
LABEL_17:
        v22 = WebPGetWorkerInterface();
        (v22[3])(a1 + 152);
        v23 = *(a1 + 204);
        if (v23 + 1 == *(a1 + 208))
        {
          v24 = 0;
        }

        else
        {
          v24 = v23 + 1;
        }

        *(a1 + 204) = v24;
        return 1;
      }
    }

    v21 = *(a1 + 232);
    *(a1 + 232) = *(a1 + 2840);
    *(a1 + 2840) = v21;
    goto LABEL_17;
  }

  *(a1 + 220) = *(a1 + 2908);
  *(a1 + 224) = v5;
  ReconstructRow(a1, (a1 + 216));

  return FinishRow(a1, a2, v9, v10);
}

uint64_t ReconstructRow(uint64_t result, int *a2)
{
  v2 = result;
  v3 = 0;
  v4 = a2[1];
  v5 = *a2;
  v6 = *(result + 2848);
  do
  {
    *(v6 + 39 + v3) = -127;
    v3 += 32;
  }

  while (v3 != 512);
  v7 = (v6 + 599);
  v8 = 8;
  do
  {
    *(v7 - 16) = -127;
    *v7 = -127;
    v7 += 32;
    --v8;
  }

  while (v8);
  if (v4 < 1)
  {
    *(v6 + 20) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 15) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 7) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 551) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 559) = 127;
    *(v6 + 567) = 0x7F7F7F7F7F7F7F7FLL;
    *(v6 + 575) = 127;
  }

  else
  {
    *(v6 + 567) = -127;
    *(v6 + 551) = -127;
    *(v6 + 7) = -127;
  }

  if (*(result + 408) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = (v6 + 40);
    v12 = 5;
    if (!v4)
    {
      v12 = 6;
    }

    v60 = v12;
    v61 = 4 * (v4 == 0);
    v58 = 8 * v5;
    v59 = 16 * v5;
    v56 = (v6 + 20);
    v54 = (v6 + 520);
    v55 = (v6 + 572);
    v13 = 769;
    v57 = v4;
    v67 = v6;
    v62 = (v6 + 600);
    while (1)
    {
      v14 = *(a2 + 3);
      if (v10)
      {
        v15 = 17;
        v16 = v56;
        do
        {
          *(v16 - 4) = *v16;
          v16 += 8;
          --v15;
        }

        while (v15);
        v17 = 9;
        v18 = v55;
        do
        {
          *(v18 - 6) = *(v18 - 4);
          *(v18 - 2) = *v18;
          v18 += 8;
          --v17;
        }

        while (v17);
      }

      v19 = v14 + 800 * v10;
      v20 = *(v2 + 2824) + 32 * v10;
      v21 = *(v19 + 788);
      v66 = v9;
      v64 = v20;
      v65 = v13;
      if (v4 < 1)
      {
        if (*(v19 + 768))
        {
          goto LABEL_40;
        }
      }

      else
      {
        *(v6 + 8) = *v20;
        *(v6 + 552) = *(v20 + 16);
        *(v6 + 568) = *(v20 + 24);
        if (*(v19 + 768))
        {
          if (v10 >= *(v2 + 408) - 1)
          {
            v22 = 16843009 * *(v20 + 15);
          }

          else
          {
            v22 = *(v20 + 32);
          }

          *(v6 + 24) = v22;
LABEL_40:
          v30 = 0;
          v31 = *(v6 + 24);
          *(v6 + 408) = v31;
          *(v6 + 280) = v31;
          *(v6 + 152) = v31;
          v32 = v14 + v9;
          v33 = v14 + v13;
          while (1)
          {
            v34 = kScan[v30];
            (VP8PredLuma4[*(v33 + v30)])(v11 + v34);
            v35 = v21 >> 30;
            if (v21 >> 30 > 1)
            {
              break;
            }

            if (v35)
            {
              v36 = &VP8TransformDC;
LABEL_46:
              (*v36)(v32, v11 + v34);
            }

LABEL_48:
            ++v30;
            v21 *= 4;
            v32 += 32;
            if (v30 == 16)
            {
              if (v10)
              {
                v24 = v61;
              }

              else
              {
                v24 = v60;
              }

              v4 = v57;
              goto LABEL_53;
            }
          }

          if (v35 != 2)
          {
            VP8Transform(v32, v11 + v34, 0);
            goto LABEL_48;
          }

          v36 = &VP8TransformAC3;
          goto LABEL_46;
        }
      }

      v23 = *(v19 + 769);
      if (v10)
      {
        v24 = v61;
      }

      else
      {
        v24 = v60;
      }

      if (!*(v19 + 769))
      {
        v23 = v24;
      }

      (VP8PredLuma16[v23])(v11);
      if (v21)
      {
        break;
      }

LABEL_53:
      v37 = *(v19 + 792);
      if (*(v19 + 785))
      {
        v24 = *(v19 + 785);
      }

      (VP8PredChroma8[v24])(v67 + 584);
      v38 = VP8PredChroma8[v24];
      v39 = v62;
      result = v38(v62);
      if (v37)
      {
        v40 = &VP8TransformDCUV;
        if ((v37 & 0xAA) != 0)
        {
          v40 = &VP8TransformUV;
        }

        result = (*v40)(v19 + 512, v67 + 584);
      }

      if ((v37 & 0xFF00) != 0)
      {
        v41 = &VP8TransformDCUV;
        if ((v37 & 0xAA00) != 0)
        {
          v41 = &VP8TransformUV;
        }

        result = (*v41)(v19 + 640, v62);
      }

      v6 = v67;
      if (v4 < *(v2 + 412) - 1)
      {
        *v64 = *v54;
        *(v64 + 16) = *(v67 + 808);
        *(v64 + 24) = *(v67 + 824);
      }

      v42 = 0;
      v43 = v58 * *(v2 + 2884);
      v44 = *(v2 + 2856) + 16 * v10 + v59 * *(v2 + 2880);
      v45 = *(v2 + 2864);
      v46 = *(v2 + 2872) + 8 * v10;
      v47 = v11;
      do
      {
        v48 = *v47;
        v47 += 2;
        *(v44 + *(v2 + 2880) * v42++) = v48;
      }

      while (v42 != 16);
      v49 = 0;
      v50 = v45 + 8 * v10 + v43;
      v51 = v46 + v43;
      do
      {
        *(v50 + *(v2 + 2884) * v49) = *(v39 - 2);
        v52 = *v39;
        v39 += 4;
        *(v51 + *(v2 + 2884) * v49++) = v52;
      }

      while (v49 != 8);
      ++v10;
      v9 = v66 + 800;
      v13 = v65 + 800;
      if (v10 >= *(v2 + 408))
      {
        return result;
      }
    }

    v53 = v24;
    v25 = 0;
    v26 = v14 + v9;
    while (1)
    {
      v27 = kScan[v25];
      v28 = v21 >> 30;
      if (v21 >> 30 > 1)
      {
        break;
      }

      if (v28)
      {
        v29 = &VP8TransformDC;
LABEL_34:
        (*v29)(v26, v11 + v27);
      }

LABEL_36:
      ++v25;
      v21 *= 4;
      v26 += 32;
      if (v25 == 16)
      {
        v4 = v57;
        v24 = v53;
        goto LABEL_53;
      }
    }

    if (v28 != 2)
    {
      VP8Transform(v26, v11 + v27, 0);
      goto LABEL_36;
    }

    v29 = &VP8TransformAC3;
    goto LABEL_34;
  }

  return result;
}

uint64_t FinishRow(uint64_t a1, int *a2, double a3, __n128 a4)
{
  v64 = *(a1 + 216);
  v65 = kFilterExtraRows[*(a1 + 2920)];
  v62 = *(a1 + 2880);
  v56 = *(a1 + 2884);
  v58 = *(a1 + 2864);
  v59 = *(a1 + 2856);
  v57 = *(a1 + 2872);
  v60 = *(a1 + 428);
  v61 = *(a1 + 220);
  if (*(a1 + 200) == 2)
  {
    ReconstructRow(a1, (a1 + 216));
  }

  if (*(a1 + 224))
  {
    v5 = *(a1 + 416);
    if (v5 < *(a1 + 424))
    {
      v66 = *(a1 + 220);
      v6 = 8 * v5;
      v7 = 16 * v5;
      v8 = 4 * v5;
      do
      {
        v9 = *(a1 + 232);
        v10 = *(v9 + v8);
        if (*(v9 + v8))
        {
          if (v10 <= 2)
          {
            FinishRow_cold_1();
          }

          v11 = *(a1 + 216);
          v12 = *(a1 + 2880);
          v13 = *(a1 + 2856) + 16 * v11 * v12;
          if (*(a1 + 2920) == 1)
          {
            if (v5 >= 1)
            {
              VP8SimpleHFilter16(v13 + v7, *(a1 + 2880), (v10 + 4));
            }

            if (*(v9 + v8 + 2))
            {
              VP8SimpleHFilter16i(v13 + v7, v12, v10);
            }

            if (v66 >= 1)
            {
              VP8SimpleVFilter16(v13 + v7, v12, (v10 + 4));
            }

            if (*(v9 + v8 + 2))
            {
              VP8SimpleVFilter16i(v13 + v7, v12, v10);
            }
          }

          else
          {
            v67 = *(a1 + 2856) + 16 * v11 * v12;
            v14 = *(v9 + v8 + 1);
            v15 = *(a1 + 2884);
            v16 = 8 * v11 * v15;
            v17 = *(a1 + 2864) + v16;
            v71 = v9 + v8;
            v73 = *(a1 + 2872) + v16;
            v18 = *(v9 + v8 + 3);
            if (v5 >= 1)
            {
              v19 = v18;
              v69 = *(a1 + 2880);
              v20 = v18;
              v21 = *(a1 + 2864) + v16;
              VP8HFilter16(v67 + v7, v69, (v10 + 4), v14, v19);
              VP8HFilter8(v21 + v6, v73 + v6, v15, (v10 + 4), v14, v20);
              v17 = v21;
              v18 = v20;
              v12 = v69;
            }

            v68 = v17;
            if (*(v71 + 2))
            {
              VP8HFilter16i(v67 + v7, v12, v10, v14, v18);
              VP8HFilter8i(v68 + v6, v73 + v6, v15, v10, v14, v18);
            }

            if (v66 >= 1)
            {
              VP8VFilter16(v67 + v7, v12, (v10 + 4), v14, v18);
              VP8VFilter8(v68 + v6, v73 + v6, v15, (v10 + 4), v14, v18);
            }

            if (*(v71 + 2))
            {
              VP8VFilter16i(v67 + v7, v12, v10, v14, v18);
              VP8VFilter8i(v68 + v6, v73 + v6, v15, v10, v14, v18);
            }
          }
        }

        ++v5;
        v6 += 8;
        v7 += 16;
        v8 += 4;
      }

      while (v5 < *(a1 + 424));
    }
  }

  v22 = (v65 >> 1) * v56;
  v74 = v64 * v62;
  v23 = 8 * v64 * v56;
  v24 = v58 - v22;
  v70 = v22;
  v72 = v57 - v22;
  if (*(a1 + 824))
  {
    v25 = *(a1 + 416);
    v26 = *(a1 + 424);
    if (v25 < v26)
    {
      v27 = 8 * v25;
      v28 = 800 * v25 + 796;
      do
      {
        v29 = *(a1 + 240);
        v30 = *(v29 + v28);
        if (v30 >= 4)
        {
          v31 = *(a1 + 2884);
          v32 = 8 * v31 * *(a1 + 216);
          v33 = *(a1 + 2872) + v32;
          Dither8x8((a1 + 828), a3, a4, *(a1 + 2864) + v32 + v27, v31, v30);
          Dither8x8((a1 + 828), v34, v35, v33 + v27, v31, *(v29 + v28));
          v26 = *(a1 + 424);
        }

        ++v25;
        v27 += 8;
        v28 += 800;
      }

      while (v25 < v26);
    }
  }

  v36 = v24 + v23;
  v37 = v60 - 1;
  if (!*(a2 + 8))
  {
    v44 = 1;
    v39 = v65;
    v38 = v61;
LABEL_56:
    if (v64 + 1 == *(a1 + 208) && v38 < v37)
    {
      memcpy((*(a1 + 2856) - v62 * v39), (v59 - v62 * v65 + 16 * v74 + 16 * *(a1 + 2880)), v62 * v39);
      memcpy((*(a1 + 2864) - v70), (v36 + 8 * *(a1 + 2884)), v70);
      memcpy((*(a1 + 2872) - v70), (v72 + v23 + 8 * *(a1 + 2884)), v70);
    }

    return v44;
  }

  v38 = v61;
  if (v61)
  {
    v39 = v65;
    v40 = 16 * v61 - v65;
    v41 = v59 - v62 * v65 + 16 * v74;
    v42 = v36;
    v43 = v72 + v23;
  }

  else
  {
    v40 = 0;
    v41 = *(a1 + 2856) + 16 * v74;
    v42 = *(a1 + 2864) + v23;
    v43 = *(a1 + 2872) + v23;
    v39 = v65;
  }

  v45 = 0;
  *(a2 + 3) = v41;
  *(a2 + 4) = v42;
  *(a2 + 5) = v43;
  if (v61 < v37)
  {
    v46 = v39;
  }

  else
  {
    v46 = 0;
  }

  if ((16 * v61 + 16 - v46) >= a2[33])
  {
    v47 = a2[33];
  }

  else
  {
    v47 = 16 * v61 + 16 - v46;
  }

  *(a2 + 19) = 0;
  if (!*(a1 + 2968) || v47 <= v40 || (v45 = VP8DecompressAlphaRows(a1, a2, v40, v47 - v40), (*(a2 + 19) = v45) != 0))
  {
    v48 = a2[32];
    v49 = v48 - v40;
    if (v48 > v40)
    {
      if (v49)
      {
        FinishRow_cold_2();
      }

      v50 = *(a1 + 2884);
      v51 = *(a2 + 4) + v50 * (v49 >> 1);
      *(a2 + 3) += *(a1 + 2880) * v49;
      *(a2 + 4) = v51;
      *(a2 + 5) += v50 * (v49 >> 1);
      if (v45)
      {
        v45 += *a2 * v49;
        *(a2 + 19) = v45;
      }

      v40 = v48;
    }

    if (v47 <= v40)
    {
      v44 = 1;
    }

    else
    {
      v52 = a2[30];
      v53 = *(a2 + 4) + (v52 >> 1);
      *(a2 + 3) += v52;
      *(a2 + 4) = v53;
      *(a2 + 5) += v52 >> 1;
      if (v45)
      {
        *(a2 + 19) = v45 + v52;
      }

      v54 = a2[31] - v52;
      a2[2] = v40 - v48;
      a2[3] = v54;
      a2[4] = v47 - v40;
      v44 = (*(a2 + 8))(a2);
    }

    goto LABEL_56;
  }

  return VP8SetError(a1, 3, "Could not decode alpha data.");
}

uint64_t VP8EnterCritical(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4 && !v4(a2))
  {
    VP8SetError(a1, 6, "Frame setup failed");
    return *a1;
  }

  if (*(a2 + 112))
  {
    v5 = 0;
    LODWORD(v6) = 0;
    a1[730] = 0;
  }

  else
  {
    v6 = a1[730];
    v5 = kFilterExtraRows[v6];
    if (v6 == 2)
    {
      a1[104] = 0;
      v7 = a1 + 105;
      LODWORD(v6) = 2;
LABEL_13:
      *v7 = 0;
      goto LABEL_14;
    }
  }

  v8 = (*(a2 + 120) - v5) >> 4;
  a1[104] = v8;
  v9 = (*(a2 + 128) - v5) >> 4;
  a1[105] = v9;
  if (v8 < 0)
  {
    a1[104] = 0;
    if (v9 < 0)
    {
LABEL_12:
      v7 = a1 + 105;
      goto LABEL_13;
    }
  }

  else if (v9 < 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  v11 = v5 + 15;
  v12 = (v11 + *(a2 + 132)) >> 4;
  a1[107] = v12;
  v13 = (v11 + *(a2 + 124)) >> 4;
  if (v13 >= a1[102])
  {
    v13 = a1[102];
  }

  a1[106] = v13;
  v14 = a1[103];
  if (v12 > v14)
  {
    a1[107] = v14;
  }

  if (v6 >= 1)
  {
    v15 = 0;
    v16 = a1[33];
    v17 = a1[24];
    do
    {
      if (v16)
      {
        v18 = *(a1 + v15 + 148);
        if (!a1[35])
        {
          v18 += a1[22];
        }
      }

      else
      {
        v18 = a1[22];
      }

      v19 = 0;
      v20 = 1;
      do
      {
        v21 = v20;
        v22 = v18;
        if (v17)
        {
          v22 = a1[25] + v18;
          if ((v21 & 1) == 0)
          {
            v22 += a1[29];
          }
        }

        v23 = &a1[2 * v15 + 731 + v19];
        if (v22 >= 63)
        {
          v24 = 63;
        }

        else
        {
          v24 = v22;
        }

        if (v22 < 1)
        {
          *v23 = 0;
        }

        else
        {
          v25 = v24 & ~(v24 >> 31);
          v26 = a1[23];
          if (v26 <= 4)
          {
            v27 = 1;
          }

          else
          {
            v27 = 2;
          }

          v28 = v25 >> v27;
          if (v28 >= 9 - v26)
          {
            v28 = 9 - v26;
          }

          if (v26 >= 1)
          {
            v29 = v28;
          }

          else
          {
            v29 = v25;
          }

          if (v29 <= 1)
          {
            LOBYTE(v29) = 1;
          }

          *(v23 + 1) = v29;
          *v23 = v29 + 2 * v25;
          if (v22 <= 0x27)
          {
            v30 = v22 > 0xE;
          }

          else
          {
            v30 = 2;
          }

          *(v23 + 3) = v30;
        }

        v20 = 0;
        *(v23 + 2) = v19;
        v19 = 1;
      }

      while ((v21 & 1) != 0);
      ++v15;
    }

    while (v15 != 4);
  }

  return 0;
}

uint64_t VP8ExitCritical(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 200) < 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = WebPGetWorkerInterface();
    v5 = (v4[2])(a1 + 152);
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    v6(a2);
  }

  return v5;
}

uint64_t VP8GetThreadMethod(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 40) && *(a2 + 64))
  {
    VP8GetThreadMethod_cold_1();
  }

  return 0;
}

uint64_t VP8InitFrame(uint64_t a1, uint64_t a2)
{
  *(a1 + 204) = 0;
  if (*(a1 + 200) < 1)
  {
    v5 = 1;
LABEL_7:
    *(a1 + 208) = v5;
    goto LABEL_8;
  }

  v4 = WebPGetWorkerInterface();
  if ((v4[1])(a1 + 152))
  {
    *(a1 + 176) = a1;
    *(a1 + 184) = a1 + 248;
    *(a1 + 168) = FinishRow;
    if (*(a1 + 2920) <= 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    goto LABEL_7;
  }

  result = VP8SetError(a1, 1, "thread initialization failed.");
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 208);
LABEL_8:
  v6 = *(a1 + 408);
  v7 = 4 * v6;
  v8 = 32 * v6;
  v9 = 2 * v6 + 2;
  v10 = *(a1 + 2920);
  v11 = *(a1 + 200);
  if (v10 <= 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4 * (v6 << (v11 > 0));
  }

  v13 = 800 * (v6 << (v11 == 2));
  v14 = 16 * v5;
  v15 = 3 * (v14 + kFilterExtraRows[v10]);
  v16 = v8 * ((v15 + (v15 >> 31)) >> 1);
  if (*(a1 + 2968))
  {
    v17 = *(a1 + 78) * *(a1 + 76);
  }

  else
  {
    v17 = 0;
  }

  v18 = v7 + v8 + v9 + v12 + v13 + v17 + v16 + 863;
  v19 = *(a1 + 2888);
  if (v18 <= *(a1 + 2896))
  {
    v18 = *(a1 + 2896);
LABEL_18:
    *(a1 + 2808) = v19;
    *(a1 + 2824) = &v19[v7];
    v20 = &v19[v7 + v8];
    *(a1 + 2832) = v20 + 2;
    if (v12)
    {
      v21 = &v20[v9];
    }

    else
    {
      v21 = 0;
    }

    *(a1 + 2840) = v21;
    v22 = &v20[v9 + v12];
    *(a1 + 216) = 0;
    *(a1 + 232) = v21;
    if (v10 >= 1)
    {
      if (v11 <= 0)
      {
        v23 = (v22 + 31) & 0xFFFFFFFFFFFFFFE0;
        *(a1 + 2848) = v23;
        v25 = v23 + 832;
        *(a1 + 2912) = v23 + 832;
LABEL_31:
        *(a1 + 240) = v25;
        v27 = v23 + v13 + 832;
        *(a1 + 2880) = 16 * v6;
        *(a1 + 2884) = 8 * v6;
        v28 = kFilterExtraRows[v10];
        v29 = v28 >> 1;
        v30 = v27 + 16 * v6 * v28;
        *(a1 + 2856) = v30;
        v31 = v30 + 16 * v6 * v14 + v29 * (8 * v6);
        *(a1 + 2864) = v31;
        *(a1 + 2872) = v31 + 8 * v5 * 8 * v6 + v29 * (8 * v6);
        *(a1 + 204) = 0;
        v32 = v27 + v16;
        if (v17)
        {
          v33 = v27 + v16;
        }

        else
        {
          v33 = 0;
        }

        *(a1 + 3000) = v33;
        if (v32 + v17 > &v19[v18])
        {
          VP8InitFrame_cold_1();
        }

        v34 = v7;
        bzero(&v19[v7 + v8], 2 * v6 + 2);
        VP8InitScanline(a1);
        bzero(*(a1 + 2808), v34);
        goto LABEL_36;
      }

      *(a1 + 232) = &v21[4 * v6];
    }

    v23 = (v22 + 31) & 0xFFFFFFFFFFFFFFE0;
    *(a1 + 2848) = v23;
    *(a1 + 2912) = v23 + 832;
    if (v11 == 2)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0;
    }

    v25 = v23 + 832 + 800 * v24;
    goto LABEL_31;
  }

  v37 = v8 * ((v15 + (v15 >> 31)) >> 1);
  free(v19);
  *(a1 + 2896) = 0;
  v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
  *(a1 + 2888) = v19;
  if (v19)
  {
    *(a1 + 2896) = v18;
    LODWORD(v10) = *(a1 + 2920);
    v11 = *(a1 + 200);
    v16 = v37;
    v7 = 4 * v6;
    v14 = 16 * v5;
    goto LABEL_18;
  }

  result = VP8SetError(a1, 1, "no memory during frame initialization.");
  if (result)
  {
LABEL_36:
    *(a2 + 8) = 0;
    *(a2 + 24) = *(a1 + 2856);
    *(a2 + 40) = *(a1 + 2872);
    *(a2 + 48) = *(a1 + 2880);
    *(a2 + 152) = 0;
    VP8DspInit(result, v35, v36);
    return 1;
  }

  return result;
}

uint64_t Dither8x8(int32x2_t *a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v6 = 0;
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v7 = a1 + 1;
  v8 = *a1;
  a3.n128_u64[0] = 0x3700000037;
  do
  {
    v9 = v7->i32[v8.i32[0]] - v7->i32[v8.i32[1]];
    v7->i32[v8.i32[0]] = v9 & 0x7FFFFFFF;
    v10 = vadd_s32(*a1, 0x100000001);
    v8 = vbic_s8(v10, vceq_s32(v10, 0x3700000037));
    *a1 = v8;
    *(v12 + v6++) = ((((v9 >> 15) >> 8) * a6) >> 8) ^ 0x80;
  }

  while (v6 != 64);
  return VP8DitherCombine8x8(v12, 0x100000001uLL, a3);
}

void VP8DspInitNEON()
{
  VP8Transform = TransformTwo_NEON;
  VP8TransformAC3 = TransformAC3_NEON;
  VP8TransformDC = TransformDC_NEON;
  VP8TransformWHT = TransformWHT_NEON;
  VP8VFilter16 = VFilter16_NEON;
  VP8VFilter16i = VFilter16i_NEON;
  VP8HFilter16 = HFilter16_NEON;
  VP8HFilter16i = HFilter16i_NEON;
  VP8VFilter8 = VFilter8_NEON;
  VP8VFilter8i = VFilter8i_NEON;
  VP8HFilter8 = HFilter8_NEON;
  VP8HFilter8i = HFilter8i_NEON;
  VP8SimpleVFilter16 = SimpleVFilter16_NEON;
  VP8SimpleHFilter16 = SimpleHFilter16_NEON;
  VP8SimpleVFilter16i = SimpleVFilter16i_NEON;
  VP8SimpleHFilter16i = SimpleHFilter16i_NEON;
  VP8PredLuma4[0] = DC4_NEON;
  qword_1EA8E15F8 = TM4_NEON;
  qword_1EA8E1600 = VE4_NEON;
  qword_1EA8E1610 = RD4_NEON;
  qword_1EA8E1620 = LD4_NEON;
  VP8PredLuma16[0] = DC16TopLeft_NEON;
  qword_1EA8E1648 = TM16_NEON;
  qword_1EA8E1650 = VE16_NEON;
  qword_1EA8E1658 = HE16_NEON;
  qword_1EA8E1660 = DC16NoTop_NEON;
  qword_1EA8E1668 = DC16NoLeft_NEON;
  qword_1EA8E1670 = DC16NoTopLeft_NEON;
  VP8PredChroma8[0] = DC8uv_NEON;
  qword_1EA8E1680 = TM8uv_NEON;
  qword_1EA8E1688 = VE8uv_NEON;
  qword_1EA8E1690 = HE8uv_NEON;
  qword_1EA8E1698 = DC8uvNoTop_NEON;
  qword_1EA8E16A0 = DC8uvNoLeft_NEON;
  qword_1EA8E16A8 = DC8uvNoTopLeft_NEON;
}

int8x8_t TransformTwo_NEON(int8x16_t *a1, __int32 *a2, int a3)
{
  result = TransformOne_NEON(a1, a2);
  if (a3)
  {

    return TransformOne_NEON(a1 + 2, a2 + 1);
  }

  return result;
}

int8x8_t TransformAC3_NEON(uint64_t a1, __int32 *a2)
{
  v2 = a1;
  v3 = vld1_dup_s16(v2++);
  v4 = *(a1 + 8);
  v5 = vdup_n_s16((35468 * v4) >> 16);
  v6 = vdup_n_s16(v4 + ((20091 * v4) >> 16));
  LODWORD(v2) = *v2;
  v7 = vqadd_s16(v3, ((35468 * v2) & 0xFFFF0000 | ((85627 * v2) >> 16) | (-((35468 * v2) >> 16) << 32) | (-(v2 + ((20091 * v2) >> 16)) << 48)));
  *v8.i8 = vqadd_s16(v7, v6);
  v8.u64[1] = vqadd_s16(v7, v5);
  *v9.i8 = vqsub_s16(v7, v5);
  v9.u64[1] = vqsub_s16(v7, v6);
  v7.i32[0] = *a2;
  v7.i32[1] = a2[8];
  v6.i32[0] = a2[16];
  v6.i32[1] = a2[24];
  v10 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v7), v8, 3uLL));
  *a2 = v10.i32[0];
  a2[8] = v10.i32[1];
  result = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v6), v9, 3uLL));
  a2[16] = result.i32[0];
  a2[24] = result.i32[1];
  return result;
}

int8x8_t TransformDC_NEON(const __int16 *a1, __int32 *a2)
{
  v2 = vld1q_dup_s16(a1);
  v3.i32[0] = *a2;
  v3.i32[1] = a2[8];
  v4.i32[0] = a2[16];
  v4.i32[1] = a2[24];
  v5 = vrsraq_n_s16(vmovl_u8(v4), v2, 3uLL);
  *v2.i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(v3), v2, 3uLL));
  *a2 = v2.i32[0];
  a2[8] = v2.i32[1];
  result = vqmovun_s16(v5);
  a2[16] = result.i32[0];
  a2[24] = result.i32[1];
  return result;
}

uint32x4_t TransformWHT_NEON(int16x4_t *a1, _WORD *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = vaddl_s16(v4, *a1);
  v6 = vaddl_s16(v3, v2);
  v7 = vsubl_s16(v2, v3);
  v8 = vsubl_s16(*a1, v4);
  v9 = vaddq_s32(v5, v6);
  v10 = vaddq_s32(v8, v7);
  v11 = vsubq_s32(v5, v6);
  v12 = vsubq_s32(v8, v7);
  v13 = vzip2q_s64(v9, v11);
  v9.i64[1] = v11.i64[0];
  v14 = vzip2q_s64(v10, v12);
  v10.i64[1] = v12.i64[0];
  v15 = vtrn1q_s32(v9, v10);
  v16 = vtrn2q_s32(v9, v10);
  v17 = vtrn1q_s32(v13, v14);
  v18 = vtrn2q_s32(v13, v14);
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v19 = vaddq_s32(v15, v14);
  v20 = vaddq_s32(v19, v18);
  v21 = vaddq_s32(v16, v17);
  v22 = vsubq_s32(v16, v17);
  v23 = vsubq_s32(v19, v18);
  v24 = vshrq_n_u32(vaddq_s32(v20, v21), 3uLL);
  v25 = vshrq_n_u32(vaddq_s32(v23, v22), 3uLL);
  *a2 = v24.i16[0];
  a2[16] = v25.i16[0];
  v26 = vsubq_s32(v23, v22);
  v27 = vshrq_n_u32(vsubq_s32(v20, v21), 3uLL);
  result = vshrq_n_u32(v26, 3uLL);
  a2[32] = v27.i16[0];
  a2[48] = result.i16[0];
  a2[64] = v24.i16[2];
  a2[80] = v25.i16[2];
  a2[96] = v27.i16[2];
  a2[112] = result.i16[2];
  a2[128] = v24.i16[4];
  a2[144] = v25.i16[4];
  a2[160] = v27.i16[4];
  a2[176] = result.i16[4];
  a2[192] = v24.i16[6];
  a2[208] = v25.i16[6];
  a2[224] = v27.i16[6];
  a2[240] = result.i16[6];
  return result;
}

double VFilter16_NEON(uint8x16_t *a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = (a1 - 2 * a2);
  v8 = (v7 - a2);
  v9 = *v8;
  v10 = *(v7 + a2);
  v11 = *v7;
  v12 = (a1 + 2 * a2);
  v13 = *a1;
  v14 = (v12 - a2);
  v15 = *v14;
  v16 = *v12;
  v17 = vabdq_u8(*v7, v10);
  v18 = vabdq_u8(*v14, *a1);
  v19 = vabdq_u8(v10, *a1);
  v20 = vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v19, v19), vshrq_n_u8(vabdq_u8(*v7, *v14), 1uLL))), vcgeq_u8(vdupq_n_s8(a4), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(*(v7 - 2 * a2), *v8), vabdq_u8(*v8, *v7)), vmaxq_u8(v17, vabdq_u8(*(v12 + a2), *v12))), vmaxq_u8(vabdq_u8(*v12, *v14), v18))));
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  DoFilter6_NEON(&v30, &v29, &v28, &v27, &v26, &v25, v9, v11, v10, v13, v15, v16, v20, vcgtq_u8(vmaxq_u8(v17, v18), vdupq_n_s8(a5)));
  v21 = v29;
  *v8 = v30;
  *v7 = v21;
  v22 = v27;
  *(a1 - a2) = v28;
  *a1 = v22;
  v24 = v25;
  result = *v26.i64;
  *v14 = v26;
  *v12 = v24;
  return result;
}

uint8x16_t *VFilter16i_NEON(uint8x16_t *result, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = (result + 2 * a2);
  v6 = *result;
  v7 = *(v5 - a2);
  v8 = *v5;
  v9 = *(v5 + a2);
  v10 = vdupq_n_s8(a4);
  v11 = vdupq_n_s8(a3);
  v12 = vdupq_n_s8(a5);
  v13 = (result + 4 * a2);
  v14 = -3;
  v15.i64[0] = 0x8080808080808080;
  v15.i64[1] = 0x8080808080808080;
  v16.i64[0] = 0x303030303030303;
  v16.i64[1] = 0x303030303030303;
  v17.i64[0] = 0x404040404040404;
  v17.i64[1] = 0x404040404040404;
  do
  {
    v18 = *(v13 + a2);
    v19 = vabdq_u8(v7, v8);
    v20 = vabdq_u8(v8, v9);
    v21 = vabdq_u8(v8, v18);
    v22 = veorq_s8(v8, v15);
    v8 = *(v13 + 2 * a2);
    v23 = vabdq_u8(v9, *v13);
    v24 = veorq_s8(v9, v15);
    v25 = *(v13 + 3 * a2);
    v26 = vabdq_u8(v6, v7);
    v27 = vabdq_u8(v18, *v13);
    v28 = vandq_s8(vcgeq_u8(v11, vqaddq_u8(vqaddq_u8(v23, v23), vshrq_n_u8(v21, 1uLL))), vcgeq_u8(v10, vmaxq_u8(vmaxq_u8(vmaxq_u8(v26, v19), vmaxq_u8(v20, vabdq_u8(v25, v8))), vmaxq_u8(vabdq_u8(v8, v18), v27))));
    v29 = veorq_s8(*v13, v15);
    v30 = veorq_s8(v18, v15);
    v31 = vandq_s8(vcgtq_u8(vmaxq_u8(v20, v27), v12), v28);
    v32 = vqsubq_s8(v29, v24);
    v33 = vandq_s8(vqaddq_s8(v32, vqaddq_s8(v32, vqaddq_s8(vqsubq_s8(v22, v30), v32))), v31);
    v34 = vqaddq_s8(v24, vshrq_n_s8(vqaddq_s8(v33, v16), 3uLL));
    v35 = vqsubq_s8(v29, vshrq_n_s8(vqaddq_s8(v33, v17), 3uLL));
    v36 = vqsubq_s8(v35, v34);
    v37 = vandq_s8(vqaddq_s8(v36, vqaddq_s8(v36, v36)), veorq_s8(v31, v28));
    v38 = vshrq_n_s8(vqaddq_s8(v37, v17), 3uLL);
    v39 = vrshrq_n_s8(v38, 1uLL);
    v40 = veorq_s8(vqaddq_s8(v34, vshrq_n_s8(vqaddq_s8(v37, v16), 3uLL)), v15);
    v6 = veorq_s8(vqsubq_s8(v35, v38), v15);
    v7 = veorq_s8(vqsubq_s8(v30, v39), v15);
    *(v13 - 2 * a2) = veorq_s8(vqaddq_s8(v22, v39), v15);
    *(v13 - a2) = v40;
    *v13 = v6;
    *(v13 + a2) = v7;
    v13 = (v13 + 4 * a2);
    v9 = v25;
  }

  while (!__CFADD__(v14++, 1));
  return result;
}

int8x16_t HFilter16_NEON(__int8 *a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = 8 * a2;
  v8 = &a1[a2 - 4];
  v9 = &a1[2 * a2 - 4];
  v14.i8[0] = *(a1 - 4);
  v11.i8[0] = *(a1 - 3);
  v12.i8[0] = *(a1 - 2);
  v13.i8[0] = *(a1 - 1);
  v10 = &a1[v7 - 4];
  v14.i8[1] = *v8;
  v11.i8[1] = v8[1];
  v12.i8[1] = v8[2];
  v13.i8[1] = v8[3];
  v14.i8[2] = *v9;
  v11.i8[2] = v9[1];
  v12.i8[2] = v9[2];
  v13.i8[2] = v9[3];
  v15 = 3 * a2;
  v16 = &a1[v15 - 4];
  v14.i8[3] = *v16;
  v11.i8[3] = v16[1];
  v12.i8[3] = v16[2];
  v13.i8[3] = v16[3];
  v17 = &a1[4 * a2 - 4];
  v18 = 5 * a2;
  v19 = &a1[v18 - 4];
  v14.i8[4] = *v17;
  v11.i8[4] = v17[1];
  v12.i8[4] = v17[2];
  v13.i8[4] = v17[3];
  v20 = &a1[6 * a2 - 4];
  v14.i8[5] = *v19;
  v11.i8[5] = v19[1];
  v12.i8[5] = v19[2];
  v13.i8[5] = v19[3];
  v14.i8[6] = *v20;
  v11.i8[6] = v20[1];
  v12.i8[6] = v20[2];
  v13.i8[6] = v20[3];
  v21 = 7 * a2;
  v22 = &a1[v21 - 4];
  v14.i8[7] = *v22;
  v11.i8[7] = v22[1];
  v12.i8[7] = v22[2];
  v13.i8[7] = v22[3];
  LOBYTE(v24) = *v10;
  LOBYTE(v25) = v10[1];
  LOBYTE(v26) = v10[2];
  LOBYTE(v27) = v10[3];
  v23 = &v10[v21];
  v28 = &v10[a2];
  BYTE1(v24) = *v28;
  BYTE1(v25) = v28[1];
  BYTE1(v26) = v28[2];
  BYTE1(v27) = v28[3];
  v29 = &v10[2 * a2];
  BYTE2(v24) = *v29;
  BYTE2(v25) = v29[1];
  BYTE2(v26) = v29[2];
  BYTE2(v27) = v29[3];
  BYTE3(v24) = v10[v15];
  BYTE3(v25) = v10[v15 + 1];
  BYTE3(v26) = v10[v15 + 2];
  BYTE3(v27) = v10[v15 + 3];
  v30 = &v10[4 * a2];
  BYTE4(v24) = *v30;
  BYTE4(v25) = v30[1];
  BYTE4(v26) = v30[2];
  BYTE4(v27) = v30[3];
  BYTE5(v24) = v10[v18];
  BYTE5(v25) = v10[v18 + 1];
  BYTE5(v26) = v10[v18 + 2];
  BYTE5(v27) = v10[v18 + 3];
  v31 = &v10[6 * a2];
  BYTE6(v24) = *v31;
  BYTE6(v25) = v31[1];
  BYTE6(v26) = v31[2];
  BYTE6(v27) = v31[3];
  HIBYTE(v24) = *v23;
  HIBYTE(v25) = v23[1];
  HIBYTE(v26) = v23[2];
  HIBYTE(v27) = v23[3];
  v14.i64[1] = v24;
  v11.i64[1] = v25;
  v32.i8[0] = *a1;
  v33.i8[0] = a1[1];
  v34.i8[0] = a1[2];
  v35.i8[0] = a1[3];
  v36 = &a1[a2];
  v32.i8[1] = *v36;
  v33.i8[1] = v36[1];
  v34.i8[1] = v36[2];
  v35.i8[1] = v36[3];
  v37 = &a1[2 * a2];
  v32.i8[2] = *v37;
  v33.i8[2] = v37[1];
  v34.i8[2] = v37[2];
  v35.i8[2] = v37[3];
  v32.i8[3] = a1[v15];
  v33.i8[3] = a1[v15 + 1];
  v34.i8[3] = a1[v15 + 2];
  v35.i8[3] = a1[v15 + 3];
  v38 = &a1[4 * a2];
  v32.i8[4] = *v38;
  v33.i8[4] = v38[1];
  v34.i8[4] = v38[2];
  v35.i8[4] = v38[3];
  v32.i8[5] = a1[v18];
  v33.i8[5] = a1[v18 + 1];
  v34.i8[5] = a1[v18 + 2];
  v35.i8[5] = a1[v18 + 3];
  v39 = &a1[6 * a2];
  v32.i8[6] = *v39;
  v33.i8[6] = v39[1];
  v34.i8[6] = v39[2];
  v35.i8[6] = v39[3];
  v32.i8[7] = a1[v21];
  v33.i8[7] = a1[v21 + 1];
  v34.i8[7] = a1[v21 + 2];
  v35.i8[7] = a1[v21 + 3];
  v12.i64[1] = v26;
  v13.i64[1] = v27;
  LOBYTE(v24) = a1[v7];
  LOBYTE(v25) = a1[v7 + 1];
  LOBYTE(v26) = a1[v7 + 2];
  LOBYTE(v27) = a1[v7 + 3];
  v40 = &a1[v7 + v21];
  v41 = &a1[v7 + a2];
  BYTE1(v24) = *v41;
  BYTE1(v25) = v41[1];
  BYTE1(v26) = v41[2];
  BYTE1(v27) = v41[3];
  v42 = &a1[2 * a2 + v7];
  BYTE2(v24) = *v42;
  BYTE2(v25) = v42[1];
  BYTE2(v26) = v42[2];
  BYTE2(v27) = v42[3];
  v43 = &a1[v7 + v15];
  BYTE3(v24) = *v43;
  BYTE3(v25) = v43[1];
  BYTE3(v26) = v43[2];
  BYTE3(v27) = v43[3];
  v44 = &a1[4 * a2 + v7];
  BYTE4(v24) = *v44;
  BYTE4(v25) = v44[1];
  BYTE4(v26) = v44[2];
  BYTE4(v27) = v44[3];
  v45 = &a1[v7 + v18];
  BYTE5(v24) = *v45;
  BYTE5(v25) = v45[1];
  BYTE5(v26) = v45[2];
  BYTE5(v27) = v45[3];
  v46 = &a1[6 * a2 + v7];
  BYTE6(v24) = *v46;
  BYTE6(v25) = v46[1];
  BYTE6(v26) = v46[2];
  BYTE6(v27) = v46[3];
  HIBYTE(v24) = *v40;
  HIBYTE(v25) = v40[1];
  HIBYTE(v26) = v40[2];
  HIBYTE(v27) = v40[3];
  v32.i64[1] = v24;
  v33.i64[1] = v25;
  v34.i64[1] = v26;
  v35.i64[1] = v27;
  v47 = vabdq_u8(v12, v13);
  v48 = vabdq_u8(v33, v32);
  v49 = vabdq_u8(v13, v32);
  v113 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  DoFilter6_NEON(&v113, &v112, &v111, &v110, &v109, &v108, v11, v12, v13, v32, v33, v34, vandq_s8(vcgeq_u8(vdupq_n_s8(a3), vqaddq_u8(vqaddq_u8(v49, v49), vshrq_n_u8(vabdq_u8(v12, v33), 1uLL))), vcgeq_u8(vdupq_n_s8(a4), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v14, v11), vabdq_u8(v11, v12)), vmaxq_u8(v47, vabdq_u8(v35, v34))), vmaxq_u8(vabdq_u8(v34, v33), v48)))), vcgtq_u8(vmaxq_u8(v47, v48), vdupq_n_s8(a5)));
  v50 = v113;
  v51 = v112;
  v52 = &a1[a2 - 3];
  v53 = &a1[2 * a2 - 3];
  v54 = &a1[v15 - 3];
  v55 = &a1[4 * a2 - 3];
  v56 = &a1[v18 - 3];
  v57 = a1 - 3;
  *v57 = v113.i8[0];
  v57[1] = v51.i8[0];
  v58 = &a1[v7 - 3];
  v59 = &a1[2 * v15 - 3];
  v60 = &a1[v21 - 3];
  *v52 = v50.i8[1];
  v52[1] = v51.i8[1];
  *v53 = v50.i8[2];
  v53[1] = v51.i8[2];
  *v54 = v50.i8[3];
  v54[1] = v51.i8[3];
  *v55 = v50.i8[4];
  v55[1] = v51.i8[4];
  *v56 = v50.i8[5];
  v56[1] = v51.i8[5];
  v61 = vextq_s8(v50, v50, 8uLL).u64[0];
  v62 = vextq_s8(v51, v51, 8uLL).u64[0];
  *v59 = v50.i8[6];
  v59[1] = v51.i8[6];
  *v60 = v50.i8[7];
  v60[1] = v51.i8[7];
  v63 = &v58[a2];
  v64 = &v58[2 * a2];
  v65 = &v58[v15];
  v66 = &v58[4 * a2];
  v67 = &v58[v18];
  v68 = &v58[2 * v15];
  *v58 = v61;
  v58[1] = v62;
  v69 = &v58[v21];
  *v63 = BYTE1(v61);
  v63[1] = BYTE1(v62);
  *v64 = BYTE2(v61);
  v64[1] = BYTE2(v62);
  *v65 = BYTE3(v61);
  v65[1] = BYTE3(v62);
  *v66 = BYTE4(v61);
  v66[1] = BYTE4(v62);
  *v67 = BYTE5(v61);
  v67[1] = BYTE5(v62);
  *v68 = BYTE6(v61);
  v68[1] = BYTE6(v62);
  *v69 = HIBYTE(v61);
  v69[1] = HIBYTE(v62);
  v71 = v110;
  v70 = v111;
  v72 = &a1[a2 - 1];
  v73 = &a1[2 * a2 - 1];
  v74 = &a1[v15 - 1];
  v75 = &a1[v18 - 1];
  v76 = &a1[4 * a2 - 1];
  *(a1 - 1) = v111.i8[0];
  *a1 = v71.i8[0];
  v77 = &a1[v7 - 1];
  v78 = &a1[v21 - 1];
  v79 = &a1[2 * v15 - 1];
  *v72 = v70.i8[1];
  v72[1] = v71.i8[1];
  *v73 = v70.i8[2];
  v73[1] = v71.i8[2];
  *v74 = v70.i8[3];
  v74[1] = v71.i8[3];
  *v76 = v70.i8[4];
  v76[1] = v71.i8[4];
  *v75 = v70.i8[5];
  v75[1] = v71.i8[5];
  v80 = vextq_s8(v70, v70, 8uLL).u64[0];
  v81 = vextq_s8(v71, v71, 8uLL).u64[0];
  *v79 = v70.i8[6];
  v79[1] = v71.i8[6];
  *v78 = v70.i8[7];
  v78[1] = v71.i8[7];
  v82 = &v77[a2];
  v83 = &v77[2 * a2];
  v84 = &v77[v15];
  v85 = &v77[v18];
  v86 = &v77[4 * a2];
  v87 = &v77[2 * v15];
  *v77 = v80;
  v77[1] = v81;
  v88 = &v77[v21];
  *v82 = BYTE1(v80);
  v82[1] = BYTE1(v81);
  *v83 = BYTE2(v80);
  v83[1] = BYTE2(v81);
  *v84 = BYTE3(v80);
  v84[1] = BYTE3(v81);
  *v86 = BYTE4(v80);
  v86[1] = BYTE4(v81);
  *v85 = BYTE5(v80);
  v85[1] = BYTE5(v81);
  *v87 = BYTE6(v80);
  v87[1] = BYTE6(v81);
  *v88 = HIBYTE(v80);
  v88[1] = HIBYTE(v81);
  v90 = v108;
  result = v109;
  v91 = &a1[a2 + 1];
  v92 = &a1[2 * a2 + 1];
  v93 = &a1[v15 + 1];
  v94 = &a1[4 * a2 + 1];
  v95 = &a1[v18 + 1];
  a1[1] = v109.n128_u8[0];
  a1[2] = v90.i8[0];
  v96 = &a1[v7 + 1];
  v97 = &a1[2 * v15 + 1];
  v98 = &a1[v21 + 1];
  *v91 = result.i8[1];
  v91[1] = v90.i8[1];
  *v92 = result.i8[2];
  v92[1] = v90.i8[2];
  *v93 = result.i8[3];
  v93[1] = v90.i8[3];
  *v94 = result.i8[4];
  v94[1] = v90.i8[4];
  *v95 = result.i8[5];
  v95[1] = v90.i8[5];
  v99 = vextq_s8(result, result, 8uLL).u64[0];
  v100 = vextq_s8(v90, v90, 8uLL).u64[0];
  *v97 = result.i8[6];
  v97[1] = v90.i8[6];
  *v98 = result.i8[7];
  v98[1] = v90.i8[7];
  v101 = &v96[a2];
  v102 = &v96[2 * a2];
  v103 = &v96[v15];
  v104 = &v96[4 * a2];
  v105 = &v96[v18];
  v106 = &v96[2 * v15];
  *v96 = v99;
  v96[1] = v100;
  v107 = &v96[v21];
  *v101 = BYTE1(v99);
  v101[1] = BYTE1(v100);
  *v102 = BYTE2(v99);
  v102[1] = BYTE2(v100);
  *v103 = BYTE3(v99);
  v103[1] = BYTE3(v100);
  *v104 = BYTE4(v99);
  v104[1] = BYTE4(v100);
  *v105 = BYTE5(v99);
  v105[1] = BYTE5(v100);
  *v106 = BYTE6(v99);
  v106[1] = BYTE6(v100);
  *v107 = HIBYTE(v99);
  v107[1] = HIBYTE(v100);
  return result;
}

__int8 *HFilter16i_NEON(__int8 *result, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v6.i8[0] = *result;
  v7.i8[0] = result[1];
  v28.i8[0] = result[2];
  v29.i8[0] = result[3];
  v93 = &result[a2];
  v94 = &result[a2 + (8 * a2)];
  v6.i8[1] = *v93;
  v7.i8[1] = v93[1];
  v28.i8[1] = v93[2];
  v29.i8[1] = v93[3];
  v8 = 2 * a2;
  v92 = &result[2 * a2];
  v6.i8[2] = *v92;
  v7.i8[2] = v92[1];
  v28.i8[2] = v92[2];
  v29.i8[2] = v92[3];
  v9 = 3 * a2;
  v91 = &result[3 * a2];
  v6.i8[3] = *v91;
  v7.i8[3] = v91[1];
  v28.i8[3] = v91[2];
  v29.i8[3] = v91[3];
  v10 = 4 * a2;
  v90 = &result[4 * a2];
  v6.i8[4] = *v90;
  v7.i8[4] = v90[1];
  v28.i8[4] = v90[2];
  v29.i8[4] = v90[3];
  v11 = 5 * a2;
  v12 = &result[5 * a2];
  v6.i8[5] = *v12;
  v7.i8[5] = v12[1];
  v28.i8[5] = v12[2];
  v29.i8[5] = v12[3];
  v13 = 6 * a2;
  v14 = &result[6 * a2];
  v6.i8[6] = *v14;
  v7.i8[6] = v14[1];
  v28.i8[6] = v14[2];
  v29.i8[6] = v14[3];
  v15 = &result[7 * a2];
  v6.i8[7] = *v15;
  v7.i8[7] = v15[1];
  v28.i8[7] = v15[2];
  v29.i8[7] = v15[3];
  v16 = &result[8 * a2];
  LOBYTE(v18) = *v16;
  LOBYTE(v19) = v16[1];
  LOBYTE(v20) = v16[2];
  LOBYTE(v21) = v16[3];
  v17 = &v16[7 * a2];
  v22 = &v16[a2];
  BYTE1(v18) = *v22;
  BYTE1(v19) = v22[1];
  BYTE1(v20) = v22[2];
  BYTE1(v21) = v22[3];
  v23 = &v16[2 * a2];
  BYTE2(v18) = *v23;
  BYTE2(v19) = v23[1];
  BYTE2(v20) = v23[2];
  BYTE2(v21) = v23[3];
  v24 = &v16[3 * a2];
  BYTE3(v18) = *v24;
  BYTE3(v19) = v24[1];
  BYTE3(v20) = v24[2];
  BYTE3(v21) = v24[3];
  v25 = &v16[4 * a2];
  BYTE4(v18) = *v25;
  BYTE4(v19) = v25[1];
  BYTE4(v20) = v25[2];
  BYTE4(v21) = v25[3];
  v26 = &v16[5 * a2];
  BYTE5(v18) = *v26;
  BYTE5(v19) = v26[1];
  BYTE5(v20) = v26[2];
  BYTE5(v21) = v26[3];
  v27 = &v16[6 * a2];
  BYTE6(v18) = *v27;
  BYTE6(v19) = v27[1];
  BYTE6(v20) = v27[2];
  BYTE6(v21) = v27[3];
  HIBYTE(v18) = *v17;
  HIBYTE(v19) = v17[1];
  HIBYTE(v20) = v17[2];
  HIBYTE(v21) = v17[3];
  v6.i64[1] = v18;
  v7.i64[1] = v19;
  v28.i64[1] = v20;
  v29.i64[1] = v21;
  v30 = 8 * a2;
  v31 = vdupq_n_s8(a4);
  v32 = vdupq_n_s8(a3);
  v33 = &result[7 * a2 + v30];
  v34 = vdupq_n_s8(a5);
  v35 = &result[v30 + v13];
  v36 = &result[v30 + v11];
  v37 = &result[v30 + v10];
  v38 = &result[v30 + v9];
  v39 = &result[v30 + v8];
  v40.i64[0] = 0x8080808080808080;
  v40.i64[1] = 0x8080808080808080;
  v41.i64[0] = 0x303030303030303;
  v41.i64[1] = 0x303030303030303;
  v42.i64[0] = 0x404040404040404;
  v42.i64[1] = 0x404040404040404;
  v43 = v6;
  v44 = v7;
  do
  {
    v45.i8[0] = result[v5 + 4];
    v46.i8[0] = result[v5 + 5];
    v47.i8[0] = result[v5 + 6];
    v48.i8[0] = result[v5 + 7];
    v49 = &v93[v5];
    v50 = &v92[v5];
    v45.i8[1] = v93[v5 + 4];
    v46.i8[1] = v93[v5 + 5];
    v47.i8[1] = v93[v5 + 6];
    v48.i8[1] = v93[v5 + 7];
    v45.i8[2] = v92[v5 + 4];
    v46.i8[2] = v92[v5 + 5];
    v47.i8[2] = v92[v5 + 6];
    v48.i8[2] = v92[v5 + 7];
    v51 = &v91[v5];
    v52 = &v90[v5];
    v45.i8[3] = v91[v5 + 4];
    v46.i8[3] = v91[v5 + 5];
    v47.i8[3] = v91[v5 + 6];
    v48.i8[3] = v91[v5 + 7];
    v45.i8[4] = v90[v5 + 4];
    v46.i8[4] = v90[v5 + 5];
    v47.i8[4] = v90[v5 + 6];
    v48.i8[4] = v90[v5 + 7];
    v45.i8[5] = v12[v5 + 4];
    v46.i8[5] = v12[v5 + 5];
    v47.i8[5] = v12[v5 + 6];
    v48.i8[5] = v12[v5 + 7];
    v45.i8[6] = v14[v5 + 4];
    v46.i8[6] = v14[v5 + 5];
    v47.i8[6] = v14[v5 + 6];
    v48.i8[6] = v14[v5 + 7];
    v45.i8[7] = v15[v5 + 4];
    v46.i8[7] = v15[v5 + 5];
    v47.i8[7] = v15[v5 + 6];
    v48.i8[7] = v15[v5 + 7];
    v53 = &v94[v5];
    LOBYTE(v54) = v16[v5 + 4];
    LOBYTE(v55) = v16[v5 + 5];
    LOBYTE(v56) = v16[v5 + 6];
    LOBYTE(v57) = v16[v5 + 7];
    BYTE1(v54) = v94[v5 + 4];
    BYTE1(v55) = v94[v5 + 5];
    BYTE1(v56) = v94[v5 + 6];
    BYTE1(v57) = v94[v5 + 7];
    BYTE2(v54) = v39[v5 + 4];
    BYTE2(v55) = v39[v5 + 5];
    BYTE2(v56) = v39[v5 + 6];
    BYTE2(v57) = v39[v5 + 7];
    BYTE3(v54) = v38[v5 + 4];
    BYTE3(v55) = v38[v5 + 5];
    BYTE3(v56) = v38[v5 + 6];
    BYTE3(v57) = v38[v5 + 7];
    BYTE4(v54) = v37[v5 + 4];
    BYTE4(v55) = v37[v5 + 5];
    BYTE4(v56) = v37[v5 + 6];
    BYTE4(v57) = v37[v5 + 7];
    BYTE5(v54) = v36[v5 + 4];
    BYTE5(v55) = v36[v5 + 5];
    BYTE5(v56) = v36[v5 + 6];
    BYTE5(v57) = v36[v5 + 7];
    BYTE6(v54) = v35[v5 + 4];
    BYTE6(v55) = v35[v5 + 5];
    BYTE6(v56) = v35[v5 + 6];
    BYTE6(v57) = v35[v5 + 7];
    HIBYTE(v54) = v33[v5 + 4];
    HIBYTE(v55) = v33[v5 + 5];
    HIBYTE(v56) = v33[v5 + 6];
    HIBYTE(v57) = v33[v5 + 7];
    v45.i64[1] = v54;
    v46.i64[1] = v55;
    v47.i64[1] = v56;
    v48.i64[1] = v57;
    v58 = vabdq_u8(v43, v44);
    v59 = vabdq_u8(v28, v29);
    v60 = vabdq_u8(v46, v45);
    v61 = vabdq_u8(v29, v45);
    v62 = vcgeq_u8(v31, vmaxq_u8(vmaxq_u8(vmaxq_u8(v58, vabdq_u8(v44, v28)), vmaxq_u8(v59, vabdq_u8(v48, v47))), vmaxq_u8(vabdq_u8(v47, v46), v60)));
    v63 = veorq_s8(v28, v40);
    v64 = veorq_s8(v29, v40);
    v65 = veorq_s8(v45, v40);
    v66 = vandq_s8(vcgeq_u8(v32, vqaddq_u8(vqaddq_u8(v61, v61), vshrq_n_u8(vabdq_u8(v28, v46), 1uLL))), v62);
    v67 = veorq_s8(v46, v40);
    v68 = vqsubq_s8(v65, v64);
    v69 = vandq_s8(vcgtq_u8(vmaxq_u8(v59, v60), v34), v66);
    v70 = vandq_s8(vqaddq_s8(v68, vqaddq_s8(v68, vqaddq_s8(vqsubq_s8(v63, v67), v68))), v69);
    v71 = vqaddq_s8(v64, vshrq_n_s8(vqaddq_s8(v70, v41), 3uLL));
    v72 = vqsubq_s8(v65, vshrq_n_s8(vqaddq_s8(v70, v42), 3uLL));
    v73 = vqsubq_s8(v72, v71);
    v74 = vandq_s8(vqaddq_s8(v73, vqaddq_s8(v73, v73)), veorq_s8(v69, v66));
    v75 = vshrq_n_s8(vqaddq_s8(v74, v42), 3uLL);
    v76 = vrshrq_n_s8(v75, 1uLL);
    v77 = veorq_s8(vqaddq_s8(v71, vshrq_n_s8(vqaddq_s8(v74, v41), 3uLL)), v40);
    v43 = veorq_s8(vqsubq_s8(v72, v75), v40);
    v78 = veorq_s8(vqaddq_s8(v63, v76), v40);
    v44 = veorq_s8(vqsubq_s8(v67, v76), v40);
    v79 = &result[v5 + 2];
    *v79 = v78.i8[0];
    v79[1] = v77.i8[0];
    v79[2] = v43.i8[0];
    v79[3] = v44.i8[0];
    v49[2] = v78.i8[1];
    v49[3] = v77.i8[1];
    v49[4] = v43.i8[1];
    v49[5] = v44.i8[1];
    v50[2] = v78.i8[2];
    v50[3] = v77.i8[2];
    v50[4] = v43.i8[2];
    v50[5] = v44.i8[2];
    v51[2] = v78.i8[3];
    v51[3] = v77.i8[3];
    v51[4] = v43.i8[3];
    v51[5] = v44.i8[3];
    v52[2] = v78.i8[4];
    v52[3] = v77.i8[4];
    v52[4] = v43.i8[4];
    v52[5] = v44.i8[4];
    v80 = &v12[v5 + 2];
    *v80 = v78.i8[5];
    v80[1] = v77.i8[5];
    v80[2] = v43.i8[5];
    v80[3] = v44.i8[5];
    v81 = &v14[v5 + 2];
    *v81 = v78.i8[6];
    v81[1] = v77.i8[6];
    v81[2] = v43.i8[6];
    v81[3] = v44.i8[6];
    v82 = &v15[v5 + 2];
    *v82 = v78.i8[7];
    v82[1] = v77.i8[7];
    v82[2] = v43.i8[7];
    v82[3] = v44.i8[7];
    v71.i64[0] = vextq_s8(v78, v78, 8uLL).u64[0];
    v72.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
    v74.i64[0] = vextq_s8(v43, v43, 8uLL).u64[0];
    v67.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
    v83 = &v16[v5 + 2];
    *v83 = v71.i8[0];
    v83[1] = v72.i8[0];
    v83[2] = v74.i8[0];
    v83[3] = v67.i8[0];
    v53[2] = v71.i8[1];
    v53[3] = v72.i8[1];
    v53[4] = v74.i8[1];
    v53[5] = v67.i8[1];
    v84 = &v39[v5 + 2];
    *v84 = v71.i8[2];
    v84[1] = v72.i8[2];
    v84[2] = v74.i8[2];
    v84[3] = v67.i8[2];
    v85 = &v38[v5 + 2];
    *v85 = v71.i8[3];
    v85[1] = v72.i8[3];
    v85[2] = v74.i8[3];
    v85[3] = v67.i8[3];
    v86 = &v37[v5 + 2];
    *v86 = v71.i8[4];
    v86[1] = v72.i8[4];
    v86[2] = v74.i8[4];
    v86[3] = v67.i8[4];
    v87 = &v36[v5 + 2];
    *v87 = v71.i8[5];
    v87[1] = v72.i8[5];
    v87[2] = v74.i8[5];
    v87[3] = v67.i8[5];
    v88 = &v35[v5 + 2];
    *v88 = v71.i8[6];
    v88[1] = v72.i8[6];
    v88[2] = v74.i8[6];
    v88[3] = v67.i8[6];
    v89 = &v33[v5 + 2];
    *v89 = v71.i8[7];
    v89[1] = v72.i8[7];
    v89[2] = v74.i8[7];
    v89[3] = v67.i8[7];
    v5 += 4;
    v28 = v47;
    v29 = v48;
  }

  while (v5 != 12);
  return result;
}

double VFilter8_NEON(uint8x16_t *a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v9.i64[0] = *(a1->i64 - 4 * a3);
  v9.i64[1] = *(a2 - 4 * a3);
  v10 = 3 * a3;
  v11.i64[0] = *(a1->i64 - v10);
  v11.i64[1] = *(a2 - v10);
  v12 = (a1->i64 - 2 * a3);
  v13.i64[0] = *v12;
  v14 = (a2 - 2 * a3);
  v13.i64[1] = *v14;
  v15 = (a1->i64 - a3);
  v16.i64[0] = *v15;
  v17 = (a2 - a3);
  v16.i64[1] = *v17;
  v18 = *a1;
  v19.i64[0] = *(a1->i64 + a3);
  v19.i64[1] = *(a2 + a3);
  v20 = (a1->i64 + 2 * a3);
  v21.i64[0] = *v20;
  v22 = (a2 + 2 * a3);
  v21.i64[1] = *v22;
  v23.i64[0] = *(a1->i64 + v10);
  v23.i64[1] = *(a2 + v10);
  v24 = vabdq_u8(v13, v16);
  v25 = vabdq_u8(v19, *a1);
  v26 = vabdq_u8(v16, *a1);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  DoFilter6_NEON(&v39, &v38, &v37, &v36, &v35, &v34, v11, v13, v16, v18, v19, v21, vandq_s8(vcgeq_u8(vdupq_n_s8(a4), vqaddq_u8(vqaddq_u8(v26, v26), vshrq_n_u8(vabdq_u8(v13, v19), 1uLL))), vcgeq_u8(vdupq_n_s8(a5), vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v9, v11), vabdq_u8(v11, v13)), vmaxq_u8(v24, vabdq_u8(v23, v21))), vmaxq_u8(vabdq_u8(v21, v19), v25)))), vcgtq_u8(vmaxq_u8(v24, v25), vdupq_n_s8(a6)));
  v28 = v38;
  v27 = v39;
  *(v12 - a3) = v39.i64[0];
  *v12 = v28.i64[0];
  *(v14 - a3) = vextq_s8(v27, v27, 8uLL).u64[0];
  *v14 = vextq_s8(v28, v28, 8uLL).u64[0];
  v30 = v36;
  v29 = v37;
  *v15 = v37.i64[0];
  a1->i64[0] = v30.i64[0];
  *v17 = vextq_s8(v29, v29, 8uLL).u64[0];
  *a2 = vextq_s8(v30, v30, 8uLL).u64[0];
  v32 = v34;
  v31 = v35;
  *(v20 - a3) = v35.i64[0];
  *v20 = v32.i64[0];
  *(v22 - a3) = vextq_s8(v31, v31, 8uLL).u64[0];
  *&result = vextq_s8(v32, v32, 8uLL).u64[0];
  *v22 = result;
  return result;
}

double VFilter8i_NEON(uint8x16_t *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = (a1->i64 + 4 * a3);
  v7 = (a2 + 4 * a3);
  v8 = 2 * a3;
  v9 = 3 * a3;
  v10.i64[0] = *(v6 - v9);
  v10.i64[1] = *(v7 - v9);
  v11.i64[0] = *(v6 - v8);
  v11.i64[1] = *(v7 - v8);
  v12 = (v6 - a3);
  v13.i64[0] = *v12;
  v14 = (v7 - a3);
  v13.i64[1] = *v14;
  v15.i64[0] = *v6;
  v15.i64[1] = *v7;
  v16.i64[0] = *(v6 + a3);
  v16.i64[1] = *(v7 + a3);
  v17.i64[0] = *(v6 + v8);
  v17.i64[1] = *(v7 + v8);
  v18.i64[0] = *(v6 + v9);
  v18.i64[1] = *(v7 + v9);
  v19 = vabdq_u8(v11, v13);
  v20 = vabdq_u8(v16, v15);
  v21 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(*a1, v10), vabdq_u8(v10, v11)), vmaxq_u8(v19, vabdq_u8(v18, v17))), vmaxq_u8(vabdq_u8(v17, v16), v20));
  v22 = vabdq_u8(v13, v15);
  v23 = vandq_s8(vcgeq_u8(vdupq_n_s8(a4), vqaddq_u8(vqaddq_u8(v22, v22), vshrq_n_u8(vabdq_u8(v11, v16), 1uLL))), vcgeq_u8(vdupq_n_s8(a5), v21));
  v22.i64[0] = 0x8080808080808080;
  v22.i64[1] = 0x8080808080808080;
  v24 = veorq_s8(v11, v22);
  v25 = veorq_s8(v13, v22);
  v26 = veorq_s8(v15, v22);
  v27 = veorq_s8(v16, v22);
  v28 = vandq_s8(vcgtq_u8(vmaxq_u8(v19, v20), vdupq_n_s8(a6)), v23);
  v29 = vqsubq_s8(v26, v25);
  v30 = vandq_s8(vqaddq_s8(v29, vqaddq_s8(v29, vqaddq_s8(vqsubq_s8(v24, v27), v29))), v28);
  v31.i64[0] = 0x303030303030303;
  v31.i64[1] = 0x303030303030303;
  v20.i64[0] = 0x404040404040404;
  v20.i64[1] = 0x404040404040404;
  v32 = vqaddq_s8(v25, vshrq_n_s8(vqaddq_s8(v30, v31), 3uLL));
  v33 = vqsubq_s8(v26, vshrq_n_s8(vqaddq_s8(v30, v20), 3uLL));
  v34 = vqsubq_s8(v33, v32);
  v35 = vandq_s8(vqaddq_s8(v34, vqaddq_s8(v34, v34)), veorq_s8(v28, v23));
  v36 = vshrq_n_s8(vqaddq_s8(v35, v20), 3uLL);
  v37 = vrshrq_n_s8(v36, 1uLL);
  v38 = veorq_s8(vqaddq_s8(v32, vshrq_n_s8(vqaddq_s8(v35, v31), 3uLL)), v22);
  v39 = veorq_s8(vqsubq_s8(v33, v36), v22);
  v40 = veorq_s8(vqaddq_s8(v24, v37), v22);
  *(v12 - a3) = v40.i64[0];
  *v12 = v38.i64[0];
  v41 = veorq_s8(vqsubq_s8(v27, v37), v22);
  *(v14 - a3) = vextq_s8(v40, v40, 8uLL).u64[0];
  *v6 = v39.i64[0];
  *(v6 + a3) = v41.i64[0];
  *v14 = vextq_s8(v38, v38, 8uLL).u64[0];
  *v7 = vextq_s8(v39, v39, 8uLL).u64[0];
  *&result = vextq_s8(v41, v41, 8uLL).u64[0];
  *(v7 + a3) = result;
  return result;
}

double HFilter8_NEON(_BYTE *a1, _BYTE *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v8.i64[0] = *(a1 - 4);
  v8.i64[1] = *(a2 - 4);
  v9.i64[0] = *&a1[a3 - 4];
  v9.i64[1] = *&a2[a3 - 4];
  v10 = 2 * a3;
  v11.i64[0] = *&a1[v10 - 4];
  v11.i64[1] = *&a2[v10 - 4];
  v12 = 3 * a3;
  v13.i64[0] = *&a1[v12 - 4];
  v13.i64[1] = *&a2[v12 - 4];
  v14 = 4 * a3;
  v15.i64[0] = *&a1[v14 - 4];
  v15.i64[1] = *&a2[v14 - 4];
  v16 = 5 * a3;
  v17.i64[0] = *&a1[v16 - 4];
  v18 = a3;
  v17.i64[1] = *&a2[v16 - 4];
  v19 = 6 * a3;
  v20.i64[0] = *&a1[v19 - 4];
  v20.i64[1] = *&a2[v19 - 4];
  v21 = 7 * a3;
  v22.i64[0] = *&a1[v21 - 4];
  v22.i64[1] = *&a2[v21 - 4];
  v23 = vtrn1q_s8(v8, v9);
  v24 = vtrn2q_s8(v8, v9);
  v25 = vtrn1q_s8(v11, v13);
  v26 = vtrn2q_s8(v11, v13);
  v27 = vtrn1q_s8(v15, v17);
  v28 = vtrn2q_s8(v15, v17);
  v29 = vtrn1q_s8(v20, v22);
  v30 = vtrn2q_s8(v20, v22);
  v31 = vtrn1q_s16(v23, v25);
  v32 = vtrn2q_s16(v23, v25);
  v33 = vtrn1q_s16(v24, v26);
  v34 = vtrn2q_s16(v24, v26);
  v35 = vtrn1q_s16(v27, v29);
  v36 = vtrn2q_s16(v27, v29);
  v37 = vtrn1q_s16(v28, v30);
  v38 = vtrn2q_s16(v28, v30);
  v39 = vtrn1q_s32(v31, v35);
  v40 = vtrn2q_s32(v31, v35);
  v41 = vtrn1q_s32(v32, v36);
  v42 = vtrn2q_s32(v32, v36);
  v43 = vtrn1q_s32(v33, v37);
  v44 = vtrn2q_s32(v33, v37);
  v45 = vtrn1q_s32(v34, v38);
  v46 = vtrn2q_s32(v34, v38);
  v47 = vabdq_u8(v39, v43);
  v48 = vabdq_u8(v41, v45);
  v49 = vabdq_u8(v44, v40);
  v50 = vcgeq_u8(vdupq_n_s8(a5), vmaxq_u8(vmaxq_u8(vmaxq_u8(v47, vabdq_u8(v43, v41)), vmaxq_u8(v48, vabdq_u8(v46, v42))), vmaxq_u8(vabdq_u8(v42, v44), v49)));
  v51 = vabdq_u8(v45, v40);
  v99 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  DoFilter6_NEON(&v99, &v98, &v97, &v96, &v95, &v94, v43, v41, v45, v40, v44, v42, vandq_s8(vcgeq_u8(vdupq_n_s8(a4), vqaddq_u8(vqaddq_u8(v51, v51), vshrq_n_u8(vabdq_u8(v41, v44), 1uLL))), v50), vcgtq_u8(vmaxq_u8(v48, v49), vdupq_n_s8(a6)));
  v52 = v99;
  v54 = v97;
  v53 = v98;
  v56 = v95;
  v55 = v96;
  v57 = v94;
  *&result = vextq_s8(v52, v52, 8uLL).u64[0];
  v59 = vextq_s8(v53, v53, 8uLL).u64[0];
  v60 = vextq_s8(v54, v54, 8uLL).u64[0];
  v61 = vextq_s8(v55, v55, 8uLL).u64[0];
  v62 = vextq_s8(v56, v56, 8uLL).u64[0];
  v63 = a1 - 3;
  *v63 = v99.i8[0];
  v63[1] = v53.i8[0];
  v63[2] = v54.i8[0];
  *a1 = v55.i8[0];
  a1[1] = v56.i8[0];
  a1[2] = v57.i8[0];
  v64 = &a1[v18];
  v65 = v64 - 3;
  *v65 = v52.i8[1];
  v65[1] = v53.i8[1];
  v65[2] = v54.i8[1];
  *v64 = v55.i8[1];
  v64[1] = v56.i8[1];
  v64[2] = v57.i8[1];
  v66 = &v64[v18];
  v67 = v66 - 3;
  *v67 = v52.i8[2];
  v67[1] = v53.i8[2];
  v67[2] = v54.i8[2];
  *v66 = v55.i8[2];
  v66[1] = v56.i8[2];
  v66[2] = v57.i8[2];
  v68 = &v66[v18];
  v69 = v68 - 3;
  *v69 = v52.i8[3];
  v69[1] = v53.i8[3];
  v69[2] = v54.i8[3];
  *v68 = v55.i8[3];
  v68[1] = v56.i8[3];
  v68[2] = v57.i8[3];
  v70 = &v68[v18];
  v71 = v70 - 3;
  *v71 = v52.i8[4];
  v71[1] = v53.i8[4];
  v71[2] = v54.i8[4];
  *v70 = v55.i8[4];
  v70[1] = v56.i8[4];
  v70[2] = v57.i8[4];
  v72 = &v70[v18];
  v73 = v72 - 3;
  *v73 = v52.i8[5];
  v73[1] = v53.i8[5];
  v73[2] = v54.i8[5];
  *v72 = v55.i8[5];
  v72[1] = v56.i8[5];
  v72[2] = v57.i8[5];
  v74 = &v72[v18];
  v75 = v74 - 3;
  *v75 = v52.i8[6];
  v75[1] = v53.i8[6];
  v75[2] = v54.i8[6];
  *v74 = v55.i8[6];
  v74[1] = v56.i8[6];
  v74[2] = v57.i8[6];
  v76 = &v74[v18];
  v77 = vextq_s8(v57, v57, 8uLL).u64[0];
  v78 = v76 - 3;
  *v78 = v52.i8[7];
  v78[1] = v53.i8[7];
  v78[2] = v54.i8[7];
  *v76 = v55.i8[7];
  v76[1] = v56.i8[7];
  v76[2] = v57.i8[7];
  v79 = a2 - 3;
  *v79 = LOBYTE(result);
  v79[1] = v59;
  v79[2] = v60;
  *a2 = v61;
  a2[1] = v62;
  a2[2] = v77;
  v80 = &a2[v18];
  v81 = v80 - 3;
  *v81 = BYTE1(result);
  v81[1] = BYTE1(v59);
  v81[2] = BYTE1(v60);
  *v80 = BYTE1(v61);
  v80[1] = BYTE1(v62);
  v80[2] = BYTE1(v77);
  v82 = &v80[v18];
  v83 = v82 - 3;
  *v83 = BYTE2(result);
  v83[1] = BYTE2(v59);
  v83[2] = BYTE2(v60);
  *v82 = BYTE2(v61);
  v82[1] = BYTE2(v62);
  v82[2] = BYTE2(v77);
  v84 = &v82[v18];
  v85 = v84 - 3;
  *v85 = BYTE3(result);
  v85[1] = BYTE3(v59);
  v85[2] = BYTE3(v60);
  *v84 = BYTE3(v61);
  v84[1] = BYTE3(v62);
  v84[2] = BYTE3(v77);
  v86 = &v84[v18];
  v87 = v86 - 3;
  *v87 = BYTE4(result);
  v87[1] = BYTE4(v59);
  v87[2] = BYTE4(v60);
  *v86 = BYTE4(v61);
  v86[1] = BYTE4(v62);
  v86[2] = BYTE4(v77);
  v88 = &v86[v18];
  v89 = v88 - 3;
  *v89 = BYTE5(result);
  v89[1] = BYTE5(v59);
  v89[2] = BYTE5(v60);
  *v88 = BYTE5(v61);
  v88[1] = BYTE5(v62);
  v88[2] = BYTE5(v77);
  v90 = &v88[v18];
  v91 = v90 - 3;
  *v91 = BYTE6(result);
  v91[1] = BYTE6(v59);
  v91[2] = BYTE6(v60);
  *v90 = BYTE6(v61);
  v90[1] = BYTE6(v62);
  v90[2] = BYTE6(v77);
  v92 = &v90[v18];
  v93 = v92 - 3;
  *v93 = HIBYTE(result);
  v93[1] = HIBYTE(v59);
  v93[2] = HIBYTE(v60);
  *v92 = HIBYTE(v61);
  v92[1] = HIBYTE(v62);
  v92[2] = HIBYTE(v77);
  return result;
}

int8x16_t HFilter8i_NEON(int8x16_t *a1, _BYTE *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6.i64[0] = *(a1->i64 + a3);
  v6.i64[1] = *&a2[a3];
  v7 = 2 * a3;
  v8.i64[0] = *(a1->i64 + v7);
  v8.i64[1] = *&a2[v7];
  v9 = 3 * a3;
  v10.i64[0] = *(a1->i64 + v9);
  v10.i64[1] = *&a2[v9];
  v11 = 4 * a3;
  v12.i64[0] = *(a1->i64 + v11);
  v12.i64[1] = *&a2[v11];
  v13 = 5 * a3;
  v14.i64[0] = *(a1->i64 + v13);
  v14.i64[1] = *&a2[v13];
  v15 = 6 * a3;
  v16.i64[0] = *(a1->i64 + v15);
  v16.i64[1] = *&a2[v15];
  v17 = 7 * a3;
  v18.i64[0] = *(a1->i64 + v17);
  v18.i64[1] = *&a2[v17];
  v19 = vtrn1q_s8(*a1, v6);
  v20 = vtrn2q_s8(*a1, v6);
  v21 = vtrn1q_s8(v8, v10);
  v22 = vtrn2q_s8(v8, v10);
  v23 = vtrn1q_s8(v12, v14);
  v24 = vtrn2q_s8(v12, v14);
  v25 = vtrn1q_s8(v16, v18);
  v26 = vtrn2q_s8(v16, v18);
  v27 = vtrn1q_s16(v19, v21);
  v28 = vtrn2q_s16(v19, v21);
  v29 = vtrn1q_s16(v20, v22);
  v30 = vtrn2q_s16(v20, v22);
  v31 = vtrn1q_s16(v23, v25);
  v32 = vtrn2q_s16(v23, v25);
  v33 = vtrn1q_s16(v24, v26);
  v34 = vtrn2q_s16(v24, v26);
  v35 = vtrn1q_s32(v27, v31);
  v36 = vtrn2q_s32(v27, v31);
  v37 = vtrn1q_s32(v28, v32);
  v38 = vtrn2q_s32(v28, v32);
  v39 = vtrn1q_s32(v29, v33);
  v40 = vtrn2q_s32(v29, v33);
  v41 = vtrn1q_s32(v30, v34);
  v42 = vabdq_u8(v37, v41);
  v43 = vabdq_u8(v40, v36);
  v44 = vmaxq_u8(vmaxq_u8(vmaxq_u8(vabdq_u8(v35, v39), vabdq_u8(v39, v37)), vmaxq_u8(v42, vabdq_u8(vtrn2q_s32(v30, v34), v38))), vmaxq_u8(vabdq_u8(v38, v40), v43));
  v45 = vabdq_u8(v41, v36);
  v46 = vandq_s8(vcgeq_u8(vdupq_n_s8(a4), vqaddq_u8(vqaddq_u8(v45, v45), vshrq_n_u8(vabdq_u8(v37, v40), 1uLL))), vcgeq_u8(vdupq_n_s8(a5), v44));
  v34.i64[0] = 0x8080808080808080;
  v34.i64[1] = 0x8080808080808080;
  v47 = veorq_s8(v37, v34);
  v48 = veorq_s8(v41, v34);
  v49 = veorq_s8(v36, v34);
  v50 = veorq_s8(v40, v34);
  v51 = vandq_s8(vcgtq_u8(vmaxq_u8(v42, v43), vdupq_n_s8(a6)), v46);
  v52 = vqsubq_s8(v49, v48);
  v53 = vandq_s8(vqaddq_s8(v52, vqaddq_s8(v52, vqaddq_s8(vqsubq_s8(v47, v50), v52))), v51);
  v41.i64[0] = 0x303030303030303;
  v41.i64[1] = 0x303030303030303;
  v43.i64[0] = 0x404040404040404;
  v43.i64[1] = 0x404040404040404;
  v54 = vqaddq_s8(v48, vshrq_n_s8(vqaddq_s8(v53, v41), 3uLL));
  v55 = vqsubq_s8(v49, vshrq_n_s8(vqaddq_s8(v53, v43), 3uLL));
  v56 = vqsubq_s8(v55, v54);
  v57 = vandq_s8(vqaddq_s8(v56, vqaddq_s8(v56, v56)), veorq_s8(v51, v46));
  v58 = vqaddq_s8(v57, v43);
  v59 = vqaddq_s8(v57, v41);
  v60 = vshrq_n_s8(v58, 3uLL);
  v61 = vrshrq_n_s8(v60, 1uLL);
  v62 = veorq_s8(vqaddq_s8(v54, vshrq_n_s8(v59, 3uLL)), v34);
  v63 = veorq_s8(vqsubq_s8(v55, v60), v34);
  result = veorq_s8(vqaddq_s8(v47, v61), v34);
  v65 = veorq_s8(vqsubq_s8(v50, v61), v34);
  v66 = &a1->i8[a3 + 2];
  v67 = &a1->i8[2 * a3 + 2];
  v68 = &a1->i8[v9 + 2];
  v69 = &a1->i8[4 * a3 + 2];
  a1->i8[2] = result.i8[0];
  a1->i8[3] = v62.i8[0];
  a1->i8[4] = v63.i8[0];
  a1->i8[5] = v65.i8[0];
  v70 = &a1->i8[v17 + 2];
  *v66 = result.i8[1];
  v66[1] = v62.i8[1];
  v66[2] = v63.i8[1];
  v66[3] = v65.i8[1];
  *v67 = result.i8[2];
  v67[1] = v62.i8[2];
  v67[2] = v63.i8[2];
  v67[3] = v65.i8[2];
  v71 = &a1->i8[v13 + 2];
  v72 = &a1->i8[6 * a3 + 2];
  *v68 = result.i8[3];
  v68[1] = v62.i8[3];
  v68[2] = v63.i8[3];
  v68[3] = v65.i8[3];
  v34.i64[0] = vextq_s8(result, result, 8uLL).u64[0];
  v50.i64[0] = vextq_s8(v62, v62, 8uLL).u64[0];
  v47.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
  v55.i64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
  *v69 = result.i8[4];
  v69[1] = v62.i8[4];
  v69[2] = v63.i8[4];
  v69[3] = v65.i8[4];
  *v71 = result.i8[5];
  v71[1] = v62.i8[5];
  v71[2] = v63.i8[5];
  v71[3] = v65.i8[5];
  *v72 = result.i8[6];
  v72[1] = v62.i8[6];
  v72[2] = v63.i8[6];
  v72[3] = v65.i8[6];
  v73 = &a2[a3 + 2];
  v74 = &a2[2 * a3 + 2];
  v75 = &a2[v9 + 2];
  v76 = &a2[4 * a3 + 2];
  v77 = &a2[v13 + 2];
  v78 = &a2[6 * a3 + 2];
  a2[2] = v34.i8[0];
  a2[3] = v50.i8[0];
  a2[4] = v47.i8[0];
  a2[5] = v55.i8[0];
  v79 = &a2[v17 + 2];
  *v70 = result.i8[7];
  v70[1] = v62.i8[7];
  v70[2] = v63.i8[7];
  v70[3] = v65.i8[7];
  *v73 = v34.i8[1];
  v73[1] = v50.i8[1];
  v73[2] = v47.i8[1];
  v73[3] = v55.i8[1];
  *v74 = v34.i8[2];
  v74[1] = v50.i8[2];
  v74[2] = v47.i8[2];
  v74[3] = v55.i8[2];
  *v75 = v34.i8[3];
  v75[1] = v50.i8[3];
  v75[2] = v47.i8[3];
  v75[3] = v55.i8[3];
  *v76 = v34.i8[4];
  v76[1] = v50.i8[4];
  v76[2] = v47.i8[4];
  v76[3] = v55.i8[4];
  *v77 = v34.i8[5];
  v77[1] = v50.i8[5];
  v77[2] = v47.i8[5];
  v77[3] = v55.i8[5];
  *v78 = v34.i8[6];
  v78[1] = v50.i8[6];
  v78[2] = v47.i8[6];
  v78[3] = v55.i8[6];
  *v79 = v34.i8[7];
  v79[1] = v50.i8[7];
  v79[2] = v47.i8[7];
  v79[3] = v55.i8[7];
  return result;
}

uint8x16_t SimpleVFilter16_NEON(uint8x16_t *a1, int a2, unsigned int a3)
{
  v3 = *(a1 - 2 * a2);
  v4 = (a1 - a2);
  v5 = *(a1 + a2);
  v6 = vabdq_u8(*v4, *a1);
  v7 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v6, v6), vshrq_n_u8(vabdq_u8(v3, v5), 1uLL)), vdupq_n_s8(a3));
  v6.i64[0] = 0x8080808080808080;
  v6.i64[1] = 0x8080808080808080;
  v8 = veorq_s8(*v4, v6);
  v9 = veorq_s8(*a1, v6);
  v10 = vqsubq_s8(v9, v8);
  v11 = vbicq_s8(vqaddq_s8(v10, vqaddq_s8(v10, vqaddq_s8(vqsubq_s8(veorq_s8(v3, v6), veorq_s8(v5, v6)), v10))), v7);
  v5.i64[0] = 0x303030303030303;
  v5.i64[1] = 0x303030303030303;
  v12 = vqaddq_s8(v11, v5);
  v7.i64[0] = 0x404040404040404;
  v7.i64[1] = 0x404040404040404;
  result = veorq_s8(vqsubq_s8(v9, vshrq_n_s8(vqaddq_s8(v11, v7), 3uLL)), v6);
  *v4 = veorq_s8(vqaddq_s8(v8, vshrq_n_s8(v12, 3uLL)), v6);
  *a1 = result;
  return result;
}

__int8 *SimpleHFilter16_NEON(__int8 *a1, int a2, unsigned int a3)
{
  v3 = 8 * a2;
  v5.i8[0] = *(a1 - 2);
  v6.i8[0] = *(a1 - 1);
  v7.i8[0] = *a1;
  v8.i8[0] = a1[1];
  v4 = &a1[v3 - 2];
  v9 = &a1[a2 - 2];
  v5.i8[1] = *v9;
  v6.i8[1] = v9[1];
  v7.i8[1] = a1[a2];
  v8.i8[1] = v9[3];
  v10 = &a1[2 * a2 - 2];
  v5.i8[2] = *v10;
  v6.i8[2] = v10[1];
  v7.i8[2] = a1[2 * a2];
  v8.i8[2] = v10[3];
  v11 = 3 * a2;
  v12 = &a1[v11 - 2];
  v13 = &a1[4 * a2 - 2];
  v14 = 5 * a2;
  v15 = &a1[v14 - 2];
  v5.i8[3] = *v12;
  v6.i8[3] = v12[1];
  v7.i8[3] = a1[v11];
  v8.i8[3] = v12[3];
  v16 = &a1[6 * a2 - 2];
  v5.i8[4] = *v13;
  v6.i8[4] = v13[1];
  v7.i8[4] = a1[4 * a2];
  v8.i8[4] = v13[3];
  v5.i8[5] = *v15;
  v6.i8[5] = v15[1];
  v7.i8[5] = a1[v14];
  v8.i8[5] = v15[3];
  v17 = 7 * a2;
  v18 = &a1[v17 - 2];
  v5.i8[6] = *v16;
  v6.i8[6] = v16[1];
  v7.i8[6] = a1[6 * a2];
  v8.i8[6] = v16[3];
  v5.i8[7] = *v18;
  v6.i8[7] = v18[1];
  v7.i8[7] = a1[v17];
  v8.i8[7] = v18[3];
  LOBYTE(v20) = *v4;
  LOBYTE(v21) = v4[1];
  LOBYTE(v22) = a1[v3];
  LOBYTE(v23) = v4[3];
  v19 = &v4[v17];
  v24 = &v4[a2];
  BYTE1(v20) = *v24;
  BYTE1(v21) = v24[1];
  BYTE1(v22) = v24[2];
  BYTE1(v23) = v24[3];
  v25 = &v4[2 * a2];
  BYTE2(v20) = *v25;
  BYTE2(v21) = v25[1];
  BYTE2(v22) = v25[2];
  BYTE2(v23) = v25[3];
  BYTE3(v20) = v4[v11];
  BYTE3(v21) = v4[v11 + 1];
  BYTE3(v22) = a1[v3 + v11];
  BYTE3(v23) = v4[v11 + 3];
  v26 = &v4[4 * a2];
  BYTE4(v20) = *v26;
  BYTE4(v21) = v26[1];
  BYTE4(v22) = v26[2];
  BYTE4(v23) = v26[3];
  BYTE5(v20) = v4[v14];
  BYTE5(v21) = v4[v14 + 1];
  BYTE5(v22) = a1[v3 + v14];
  BYTE5(v23) = v4[v14 + 3];
  v27 = &v4[6 * a2];
  BYTE6(v20) = *v27;
  BYTE6(v21) = v27[1];
  BYTE6(v22) = v27[2];
  BYTE6(v23) = v27[3];
  HIBYTE(v20) = *v19;
  HIBYTE(v21) = v19[1];
  HIBYTE(v22) = v19[2];
  HIBYTE(v23) = v19[3];
  v5.i64[1] = v20;
  v6.i64[1] = v21;
  v7.i64[1] = v22;
  v8.i64[1] = v23;
  v28 = vabdq_u8(v6, v7);
  v29 = vcgtq_u8(vqaddq_u8(vqaddq_u8(v28, v28), vshrq_n_u8(vabdq_u8(v5, v8), 1uLL)), vdupq_n_s8(a3));
  v28.i64[0] = 0x8080808080808080;
  v28.i64[1] = 0x8080808080808080;
  v30 = veorq_s8(v6, v28);
  v31 = veorq_s8(v7, v28);
  v32 = vqsubq_s8(v31, v30);
  v33 = vbicq_s8(vqaddq_s8(v32, vqaddq_s8(v32, vqaddq_s8(vqsubq_s8(veorq_s8(v5, v28), veorq_s8(v8, v28)), v32))), v29);
  v32.i64[0] = 0x303030303030303;
  v32.i64[1] = 0x303030303030303;
  v7.i64[0] = 0x404040404040404;
  v7.i64[1] = 0x404040404040404;
  v34 = veorq_s8(vqaddq_s8(v30, vshrq_n_s8(vqaddq_s8(v33, v32), 3uLL)), v28);
  v35 = veorq_s8(vqsubq_s8(v31, vshrq_n_s8(vqaddq_s8(v33, v7), 3uLL)), v28);
  v37 = &a1[a2 - 1];
  v38 = &a1[2 * a2 - 1];
  v39 = &a1[v11 - 1];
  v40 = &a1[4 * a2 - 1];
  v41 = &a1[v14 - 1];
  v36 = a1 - 1;
  *v36 = v34.i8[0];
  *a1 = v35.i8[0];
  v42 = &a1[v3 - 1];
  v43 = &v36[6 * a2];
  v44 = &v36[v17];
  *v37 = v34.i8[1];
  v37[1] = v35.i8[1];
  *v38 = v34.i8[2];
  v38[1] = v35.i8[2];
  *v39 = v34.i8[3];
  v39[1] = v35.i8[3];
  *v40 = v34.i8[4];
  v40[1] = v35.i8[4];
  *v41 = v34.i8[5];
  v41[1] = v35.i8[5];
  v8.i64[0] = vextq_s8(v34, v34, 8uLL).u64[0];
  v29.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  *v43 = v34.i8[6];
  v43[1] = v35.i8[6];
  *v44 = v34.i8[7];
  v44[1] = v35.i8[7];
  v45 = &v42[a2];
  v46 = &v42[2 * a2];
  v47 = &v42[v11];
  v48 = &v42[4 * a2];
  v49 = &v42[v14];
  v50 = &v42[6 * a2];
  *v42 = v8.i8[0];
  v42[1] = v29.i8[0];
  result = &v42[v17];
  *v45 = v8.i8[1];
  v45[1] = v29.i8[1];
  *v46 = v8.i8[2];
  v46[1] = v29.i8[2];
  *v47 = v8.i8[3];
  v47[1] = v29.i8[3];
  *v48 = v8.i8[4];
  v48[1] = v29.i8[4];
  *v49 = v8.i8[5];
  v49[1] = v29.i8[5];
  *v50 = v8.i8[6];
  v50[1] = v29.i8[6];
  *result = v8.i8[7];
  result[1] = v29.i8[7];
  return result;
}

uint64_t SimpleVFilter16i_NEON(uint64_t result, int a2, unsigned int a3)
{
  v3 = vdupq_n_s8(a3);
  v4 = -3;
  v5.i64[0] = 0x8080808080808080;
  v5.i64[1] = 0x8080808080808080;
  v6.i64[0] = 0x303030303030303;
  v6.i64[1] = 0x303030303030303;
  v7.i64[0] = 0x404040404040404;
  v7.i64[1] = 0x404040404040404;
  v8 = (result + 4 * a2);
  do
  {
    v9 = *(v8 - a2);
    v10 = vabdq_u8(v9, *v8);
    v11 = veorq_s8(v9, v5);
    v12 = veorq_s8(*v8, v5);
    v13 = vqsubq_s8(v12, v11);
    v14 = vbicq_s8(vqaddq_s8(v13, vqaddq_s8(v13, vqaddq_s8(vqsubq_s8(veorq_s8(*(v8 - 2 * a2), v5), veorq_s8(*(v8 + a2), v5)), v13))), vcgtq_u8(vqaddq_u8(vqaddq_u8(v10, v10), vshrq_n_u8(vabdq_u8(*(v8 - 2 * a2), *(v8 + a2)), 1uLL)), v3));
    *(v8 - a2) = veorq_s8(vqaddq_s8(v11, vshrq_n_s8(vqaddq_s8(v14, v6), 3uLL)), v5);
    *v8 = veorq_s8(vqsubq_s8(v12, vshrq_n_s8(vqaddq_s8(v14, v7), 3uLL)), v5);
    v8 = (v8 + 4 * a2);
  }

  while (!__CFADD__(v4++, 1));
  return result;
}

__int8 *SimpleHFilter16i_NEON(uint64_t a1, int a2, unsigned int a3)
{
  v5 = (a1 + 4);
  v6 = -3;
  do
  {
    result = SimpleHFilter16_NEON(v5, a2, a3);
    v5 += 4;
  }

  while (!__CFADD__(v6++, 1));
  return result;
}

double DC4_NEON(uint64_t a1, uint16x8_t a2)
{
  *a2.i8 = vpaddl_u8(*(a1 - 32));
  *a2.i8 = vpadd_s16(*a2.i8, *a2.i8);
  *a2.i8 = vdup_lane_s8(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(a2, *(a1 - 1)), *(a1 + 31)), *(a1 + 63)), *(a1 + 95)), 3uLL), 0);
  *a1 = a2.i32[0];
  *(a1 + 32) = a2.i32[0];
  *(a1 + 64) = a2.i32[0];
  *(a1 + 96) = a2.i32[0];
  return *a2.i64;
}

int8x8_t TM4_NEON(char *a1)
{
  v1 = a1 - 33;
  v2 = vld1_dup_s8(v1);
  v3 = vsubl_u8(*(a1 - 32), v2);
  v4 = a1 - 1;
  v5 = vld1_dup_s8(v4);
  v6 = a1 + 31;
  v7 = vld1_dup_s8(v6);
  v8 = a1 + 63;
  v9 = vld1_dup_s8(v8);
  v10 = a1 + 95;
  v11 = vld1_dup_s8(v10);
  v12 = vaddw_u8(v3, v9);
  *a1 = vqmovun_s16(vaddw_u8(v3, v5)).u32[0];
  *(a1 + 8) = vqmovun_s16(vaddw_u8(v3, v7)).u32[0];
  result = vqmovun_s16(vaddw_u8(v3, v11));
  *(a1 + 16) = vqmovun_s16(v12).u32[0];
  *(a1 + 24) = result.i32[0];
  return result;
}

uint8x8_t VE4_NEON(_DWORD *a1)
{
  result = vrhadd_u8(vhadd_u8(*(a1 - 33), vshrd_n_u64(*(a1 - 33), 0x10uLL)), vshrd_n_u64(*(a1 - 33), 8uLL));
  *a1 = result.i32[0];
  a1[8] = result.i32[0];
  a1[16] = result.i32[0];
  a1[24] = result.i32[0];
  return result;
}

uint8x8_t RD4_NEON(uint64_t a1)
{
  v1 = vorr_s8(((*(a1 - 1) << 24) | (*(a1 + 31) << 16) | *(a1 + 95) | (*(a1 + 63) << 8)), vshld_n_s64(*(a1 - 33), 0x20uLL));
  v2 = vshrd_n_u64(v1, 0x10uLL);
  v2.i8[6] = BYTE4(*(a1 - 33));
  result = vrhadd_u8(vhadd_u8(v2, v1), vshrd_n_u64(v1, 8uLL));
  *a1 = vshrd_n_u64(*&result, 0x18uLL);
  *(a1 + 32) = vshrd_n_u64(*&result, 0x10uLL);
  *(a1 + 64) = vshrd_n_u64(*&result, 8uLL);
  *(a1 + 96) = result.i32[0];
  return result;
}

uint8x8_t LD4_NEON(_DWORD *a1)
{
  v1 = *(a1 - 30);
  v1.i8[6] = v1.i8[5];
  result = vrhadd_u8(vhadd_u8(*(a1 - 8), v1), *(a1 - 31));
  *a1 = result.i32[0];
  a1[8] = vshrd_n_u64(*&result, 8uLL);
  a1[16] = vshrd_n_u64(*&result, 0x10uLL);
  a1[24] = vshrd_n_u64(*&result, 0x18uLL);
  return result;
}

uint64_t DC16TopLeft_NEON(uint64_t result)
{
  v1 = 0;
  v2 = *(result - 32);
  v2.i16[0] = vaddlvq_u8(v2);
  v3 = 0uLL;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = (result - 1 + v1);
    v3 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v3, *v6), v6[4]), v6[8]), v6[12]), v6[16]), v6[20]), v6[24]), v6[28]);
    v1 = 256;
    v4 = 0;
  }

  while ((v5 & 1) != 0);
  v7 = 0;
  v8 = vdupq_lane_s8(vrshrn_n_s16(vaddq_s16(v3, v2), 5uLL), 0);
  do
  {
    *(result + v7) = v8;
    v7 += 32;
  }

  while (v7 != 512);
  return result;
}

uint64_t TM16_NEON(uint64_t result)
{
  v1 = *(result - 33);
  v2 = *(result - 32);
  v3 = vsubl_u8(*v2.i8, vdup_n_s8(v1));
  v4 = vsubl_high_u8(v2, vdupq_n_s8(v1));
  v5 = result + 63;
  v6 = -4;
  do
  {
    v7 = (v5 - 64);
    v8 = vld1_dup_s8(v7);
    v9 = (v5 - 32);
    v10 = vld1_dup_s8(v9);
    v11 = v5;
    v12 = vld1_dup_s8(v11->i8);
    v11 = (v11 + 1);
    v13 = (v5 + 32);
    v14 = vld1_dup_s8(v13);
    *(v5 - 63) = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v3, v8)), vaddw_u8(v4, v8));
    *(v5 - 31) = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v3, v10)), vaddw_u8(v4, v10));
    *v11 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v3, v12)), vaddw_u8(v4, v12));
    *(v5 + 33) = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v3, v14)), vaddw_u8(v4, v14));
    v6 += 4;
    v5 += 128;
  }

  while (v6 < 0xC);
  return result;
}

uint64_t VE16_NEON(uint64_t result)
{
  v1 = 0;
  v2 = *(result - 32);
  do
  {
    *(result + v1) = v2;
    v1 += 32;
  }

  while (v1 != 512);
  return result;
}

int8x16_t *HE16_NEON(int8x16_t *result)
{
  v1 = 16;
  do
  {
    v2 = &result[-1].i8[15];
    v3 = vld1q_dup_s8(v2);
    *result = v3;
    result += 2;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t DC16NoTop_NEON(uint64_t result)
{
  v1 = 0;
  v2 = 0uLL;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = (result - 1 + v1);
    v2 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(v2, *v5), v5[4]), v5[8]), v5[12]), v5[16]), v5[20]), v5[24]), v5[28]);
    v1 = 256;
    v3 = 0;
  }

  while ((v4 & 1) != 0);
  v6 = 0;
  v7 = vdupq_lane_s8(vrshrn_n_s16(v2, 4uLL), 0);
  do
  {
    *(result + v6) = v7;
    v6 += 32;
  }

  while (v6 != 512);
  return result;
}

uint64_t DC16NoLeft_NEON(uint64_t result)
{
  v1 = 0;
  v2 = *(result - 32);
  v2.i16[0] = vaddlvq_u8(v2);
  v3 = vdupq_lane_s8(vrshrn_n_s16(v2, 4uLL), 0);
  do
  {
    *(result + v1) = v3;
    v1 += 32;
  }

  while (v1 != 512);
  return result;
}

uint64_t DC16NoTopLeft_NEON(uint64_t result)
{
  v1 = 0;
  *&v2 = 0x8080808080808080;
  *(&v2 + 1) = 0x8080808080808080;
  do
  {
    *(result + v1) = v2;
    v1 += 32;
  }

  while (v1 != 512);
  return result;
}

uint64_t DC8uv_NEON(uint64_t result, uint16x8_t a2)
{
  v2 = 0;
  a2.i64[0] = *(result - 32);
  a2.i16[0] = vaddlv_u8(*a2.i8);
  *a2.i8 = vdup_lane_s8(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(a2, *(result - 1)), *(result + 31)), *(result + 63)), *(result + 95)), *(result + 127)), *(result + 159)), *(result + 191)), *(result + 223)), 4uLL), 0);
  do
  {
    *(result + v2) = a2.i64[0];
    v2 += 32;
  }

  while (v2 != 256);
  return result;
}

uint64_t TM8uv_NEON(uint64_t result)
{
  v1 = (result - 33);
  v2 = vld1_dup_s8(v1);
  v3 = vsubl_u8(*(result - 32), v2);
  v4 = result + 63;
  v5 = 1;
  do
  {
    v6 = (v4 - 64);
    v7 = vld1_dup_s8(v6);
    v8 = (v4 - 32);
    v9 = vld1_dup_s8(v8);
    v10 = v4;
    v11 = vld1_dup_s8(v10);
    v10 = (v10 + 1);
    v12 = v5;
    v13 = (v4 + 32);
    v14 = vld1_dup_s8(v13);
    *(v4 - 63) = vqmovun_s16(vaddw_u8(v3, v7));
    *(v4 - 31) = vqmovun_s16(vaddw_u8(v3, v9));
    *v10 = vqmovun_s16(vaddw_u8(v3, v11));
    *(v4 + 33) = vqmovun_s16(vaddw_u8(v3, v14));
    v4 += 128;
    v5 = 0;
  }

  while ((v12 & 1) != 0);
  return result;
}

uint64_t VE8uv_NEON(uint64_t result)
{
  v1 = 0;
  v2 = *(result - 32);
  do
  {
    *(result + v1) = v2;
    v1 += 32;
  }

  while (v1 != 256);
  return result;
}

int8x8_t *HE8uv_NEON(int8x8_t *result)
{
  v1 = 8;
  do
  {
    v2 = &result[-1] + 7;
    v3 = vld1_dup_s8(v2);
    *result = v3;
    result += 4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t DC8uvNoTop_NEON(uint64_t result)
{
  v1 = 0;
  v2 = vdup_lane_s8(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*(result + 31), *(result - 1)), *(result + 63)), *(result + 95)), *(result + 127)), *(result + 159)), *(result + 191)), *(result + 223)), 3uLL), 0);
  do
  {
    *(result + v1) = v2;
    v1 += 32;
  }

  while (v1 != 256);
  return result;
}

uint64_t DC8uvNoLeft_NEON(uint64_t result, int16x8_t a2)
{
  v2 = 0;
  a2.i64[0] = *(result - 32);
  a2.i16[0] = vaddlv_u8(*a2.i8);
  *a2.i8 = vdup_lane_s8(vrshrn_n_s16(a2, 3uLL), 0);
  do
  {
    *(result + v2) = a2.i64[0];
    v2 += 32;
  }

  while (v2 != 256);
  return result;
}

uint64_t DC8uvNoTopLeft_NEON(uint64_t result)
{
  for (i = 0; i != 256; i += 32)
  {
    *(result + i) = 0x8080808080808080;
  }

  return result;
}

int8x8_t TransformOne_NEON(int8x16_t *a1, __int32 *a2)
{
  v2 = a1[1];
  v3.i64[0] = vextq_s8(*a1, *a1, 8uLL).u64[0];
  v3.i64[1] = vextq_s8(v2, v2, 8uLL).u64[0];
  v4 = vdupq_n_s16(0x4E7Bu);
  v5 = vdupq_n_s16(0x4546u);
  v6 = vqdmulhq_s16(v3, v5);
  v7 = vsraq_n_s16(v3, vqdmulhq_s16(v3, v4), 1uLL);
  *v8.i8 = vqadd_s16(*a1->i8, *v2.i8);
  v9 = vqsub_s16(*a1->i8, *v2.i8);
  *v2.i8 = vqsub_s16(*v6.i8, *&vextq_s8(v7, v7, 8uLL));
  *v7.i8 = vqadd_s16(*v7.i8, *&vextq_s8(v6, v6, 8uLL));
  v8.u64[1] = v9;
  v7.i64[1] = v2.i64[0];
  v10 = vqaddq_s16(v8, v7);
  v11 = vqsubq_s16(v8, v7);
  v7.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
  v7.i64[1] = v11.i64[0];
  v12 = vzip1q_s16(v10, v7);
  v13 = vzip2q_s16(v10, v7);
  v14 = vzip1q_s16(v12, v13);
  v15 = vzip2q_s16(v12, v13);
  v12.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
  v12.i64[1] = vextq_s8(v15, v15, 8uLL).u64[0];
  v16 = vqdmulhq_s16(v12, v5);
  v17 = vsraq_n_s16(v12, vqdmulhq_s16(v12, v4), 1uLL);
  *v4.i8 = vqadd_s16(*v14.i8, *v15.i8);
  *v15.i8 = vqsub_s16(*v14.i8, *v15.i8);
  *v14.i8 = vqsub_s16(*v16.i8, *&vextq_s8(v17, v17, 8uLL));
  *v17.i8 = vqadd_s16(*v17.i8, *&vextq_s8(v16, v16, 8uLL));
  v4.i64[1] = v15.i64[0];
  v17.i64[1] = v14.i64[0];
  v18 = vqaddq_s16(v4, v17);
  v19 = vqsubq_s16(v4, v17);
  v14.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
  v14.i64[1] = v19.i64[0];
  v20 = vzip1q_s16(v18, v14);
  v21 = vzip2q_s16(v18, v14);
  v22 = vzip1q_s16(v20, v21);
  v23 = vzip2q_s16(v20, v21);
  v20.i32[0] = *a2;
  v20.i32[1] = a2[8];
  v4.i32[0] = a2[16];
  v4.i32[1] = a2[24];
  v24 = vrsraq_n_s16(vmovl_u8(*v4.i8), v23, 3uLL);
  *v23.i8 = vqmovun_s16(vrsraq_n_s16(vmovl_u8(*v20.i8), v22, 3uLL));
  *a2 = v23.i32[0];
  a2[8] = v23.i32[1];
  result = vqmovun_s16(v24);
  a2[16] = result.i32[0];
  a2[24] = result.i32[1];
  return result;
}

int8x16_t DoFilter6_NEON(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, int8x16_t *a5, int8x16_t *a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14)
{
  v14.i64[0] = 0x8080808080808080;
  v14.i64[1] = 0x8080808080808080;
  v15 = veorq_s8(a8, v14);
  v16 = veorq_s8(a9, v14);
  v17 = veorq_s8(a10, v14);
  v18 = veorq_s8(a11, v14);
  v19 = vandq_s8(a14, a13);
  v20 = vqsubq_s8(v17, v16);
  v21 = vqaddq_s8(v20, vqaddq_s8(v20, vqaddq_s8(vqsubq_s8(v15, v18), v20)));
  v22 = vandq_s8(v21, v19);
  v23.i64[0] = 0x303030303030303;
  v23.i64[1] = 0x303030303030303;
  v24.i64[0] = 0x404040404040404;
  v24.i64[1] = 0x404040404040404;
  v25 = vqaddq_s8(v16, vshrq_n_s8(vqaddq_s8(v22, v23), 3uLL));
  v26 = vqsubq_s8(v17, vshrq_n_s8(vqaddq_s8(v22, v24), 3uLL));
  v27 = vandq_s8(v21, veorq_s8(v19, a13));
  v19.i64[0] = 0x909090909090909;
  v19.i64[1] = 0x909090909090909;
  v22.i64[0] = -1;
  v22.i64[1] = -1;
  v23.i64[0] = -1;
  v23.i64[1] = -1;
  v28 = vmlal_s8(v23, 0x909090909090909, *v27.i8);
  v29 = vmlal_high_s8(v22, v19, v27);
  v19.i64[0] = 0x1212121212121212;
  v19.i64[1] = 0x1212121212121212;
  v30 = vqrshrn_high_n_s16(vqrshrn_n_s16(v28, 6uLL), v29, 6uLL);
  v31 = vqrshrn_high_n_s16(vqrshrn_n_s16(v28, 7uLL), v29, 7uLL);
  v32 = vqrshrn_high_n_s16(vqrshrn_n_s16(vmlal_s8(v28, 0x1212121212121212, *v27.i8), 7uLL), vmlal_high_s8(v29, v19, v27), 7uLL);
  *a3 = veorq_s8(vqaddq_s8(v25, v32), v14);
  *a4 = veorq_s8(vqsubq_s8(v26, v32), v14);
  *a5 = veorq_s8(vqsubq_s8(v18, v30), v14);
  *a2 = veorq_s8(vqaddq_s8(v15, v30), v14);
  *a6 = veorq_s8(vqsubq_s8(veorq_s8(a12, v14), v31), v14);
  result = veorq_s8(vqaddq_s8(veorq_s8(a7, v14), v31), v14);
  *a1 = result;
  return result;
}

uint64_t WebPRescalerImportRowExpand_C(uint64_t result, uint64_t a2)
{
  if (*(result + 60) >= *(result + 48))
  {
    WebPRescalerImportRowExpand_C_cold_1();
  }

  if (!*result)
  {
    WebPRescalerImportRowExpand_C_cold_4();
  }

  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 52) * v2;
    v6 = *(result + 40);
    v5 = *(result + 44);
    v7 = *(result + 96);
    v8 = *(result + 36);
    v9 = *(result + 8);
    do
    {
      v10 = *(a2 + v3);
      v11 = v3 + v2;
      result = *(a2 + v3);
      if (v5 >= 2)
      {
        result = *(a2 + v11);
      }

      *(v7 + 4 * v3) = v8 * v10;
      v12 = v8;
      if (v11 < v4)
      {
        v13 = v9;
        v12 = v8;
        do
        {
          v12 -= v6;
          if (v12 < 0)
          {
            LODWORD(v11) = v11 + v2;
            if (v11 >= v5 * v2)
            {
              WebPRescalerImportRowExpand_C_cold_2();
            }

            v10 = result;
            result = *(a2 + v11);
            v12 += v8;
          }

          *(v7 + 4 * v13) = result * v8 + (v10 - result) * v12;
          v13 += v2;
        }

        while (v13 < v4);
      }

      if (v6)
      {
        if (v12)
        {
          WebPRescalerImportRowExpand_C_cold_3();
        }
      }

      ++v3;
      ++v9;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t WebPRescalerImportRowShrink_C(uint64_t result, uint64_t a2)
{
  if (*(result + 60) >= *(result + 48))
  {
    WebPRescalerImportRowShrink_C_cold_1();
  }

  if (*result)
  {
    WebPRescalerImportRowShrink_C_cold_2();
  }

  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 52) * v2;
    do
    {
      if (v4 > v3)
      {
        v5 = 0;
        LODWORD(v6) = 0;
        v7 = *(result + 36);
        v8 = v3;
        LODWORD(v9) = v3;
        do
        {
          v10 = __OFADD__(v7, v5);
          v5 += v7;
          if ((v5 < 0) ^ v10 | (v5 == 0))
          {
            v12 = 0;
            v11 = *(result + 40);
          }

          else
          {
            v9 = v9;
            do
            {
              if (v9 >= *(result + 44) * v2)
              {
                WebPRescalerImportRowShrink_C_cold_3();
              }

              v11 = *(result + 40);
              v12 = *(a2 + v9);
              LODWORD(v6) = v6 + v12;
              v9 += v2;
              v10 = __OFSUB__(v5, v11);
              v5 -= v11;
            }

            while (!((v5 < 0) ^ v10 | (v5 == 0)));
          }

          *(*(result + 96) + 4 * v8) = v12 * v5 + v11 * v6;
          v6 = (*(result + 12) * -(v12 * v5) + 0x80000000) >> 32;
          v8 += v2;
        }

        while (v8 < v4);
        if (v5)
        {
          WebPRescalerImportRowShrink_C_cold_4();
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t WebPRescalerImportRow(_DWORD *a1)
{
  if (a1[15] >= a1[12])
  {
    WebPRescalerImportRow_cold_1();
  }

  v2 = &WebPRescalerImportRowShrink;
  if (*a1)
  {
    v2 = &WebPRescalerImportRowExpand;
  }

  v3 = *v2;

  return v3();
}

uint64_t WebPRescalerExportRow(uint64_t result)
{
  if (*(result + 24) <= 0)
  {
    v1 = result;
    v2 = *(result + 56);
    if (*(result + 64) >= v2)
    {
      WebPRescalerExportRow_cold_1();
    }

    if (*(result + 4))
    {
      v3 = &WebPRescalerExportRowExpand;
    }

    else
    {
      if (!*(result + 20))
      {
        if (*(result + 48) != v2 || *(result + 36) != 1)
        {
          WebPRescalerExportRow_cold_2();
        }

        if (*(result + 44) != 1 || (v4 = *(result + 52), v4 > 2))
        {
          WebPRescalerExportRow_cold_3();
        }

        if (v4 * *(result + 8) >= 1)
        {
          v5 = 0;
          v6 = *(result + 88);
          do
          {
            *(*(result + 72) + v5) = *(v6 + 4 * v5);
            v6 = *(result + 88);
            *(v6 + 4 * v5++) = 0;
          }

          while (v5 < *(result + 52) * *(result + 8));
        }

        goto LABEL_8;
      }

      v3 = &WebPRescalerExportRowShrink;
    }

    result = (*v3)(result);
LABEL_8:
    *(v1 + 24) += *(v1 + 28);
    *(v1 + 72) += *(v1 + 80);
    ++*(v1 + 64);
  }

  return result;
}

void WebPRescalerDspInit()
{
  if (WebPRescalerDspInit_WebPRescalerDspInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPRescalerImportRowExpand = WebPRescalerImportRowExpand_C;
    WebPRescalerImportRowShrink = WebPRescalerImportRowShrink_C;
    WebPRescalerDspInitNEON();
    if (!WebPRescalerExportRowExpand)
    {
      WebPRescalerDspInit_cold_4();
    }

    if (!WebPRescalerExportRowShrink)
    {
      WebPRescalerDspInit_cold_3();
    }

    if (!WebPRescalerImportRowExpand)
    {
      WebPRescalerDspInit_cold_2();
    }

    if (!WebPRescalerImportRowShrink)
    {
      WebPRescalerDspInit_cold_1();
    }

    WebPRescalerDspInit_WebPRescalerDspInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint32x2_t *RescalerExportRowExpand_NEON(uint32x2_t *result, int32x2_t a2, uint32x2_t a3, uint32x2_t a4)
{
  if (result[8].i32[0] >= result[7].i32[0])
  {
    RescalerExportRowExpand_NEON_cold_1();
  }

  v4 = result[3].i32[0];
  if (v4 >= 1)
  {
    RescalerExportRowExpand_NEON_cold_4();
  }

  if (!result->i32[1])
  {
    RescalerExportRowExpand_NEON_cold_3();
  }

  v5 = result[4].i32[0];
  if (!v5)
  {
    RescalerExportRowExpand_NEON_cold_2();
  }

  v6 = result[9];
  v7 = (result[1].i32[0] * result[6].i32[1]);
  v8 = v7 & 0xFFFFFFF8;
  v9 = result[12];
  v10 = result[2].u32[0];
  a2.i32[0] = v10 >> 1;
  if (v4)
  {
    v11 = result[11];
    v12 = (-v4 << 32) / v5;
    if (v8 < 1)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      v13 = 0;
      a4.i32[0] = v12;
      v14 = v11 + 2;
      result = v9 + 2;
      do
      {
        a3.i32[0] = -v12;
        *(*&v6 + v13) = vqmovn_u16(vuzp1q_s16(vqrdmulhq_lane_s32(vraddhn_high_s64(vraddhn_s64(vmlal_lane_u32(vmull_lane_u32(v14[-2], a4, 0), result[-2], a3, 0), 0), vmlal_high_lane_u32(vmull_high_lane_u32(*v14[-2].i8, a4, 0), *result[-2].i8, a3, 0), 0), a2, 0), vqrdmulhq_lane_s32(vraddhn_high_s64(vraddhn_s64(vmlal_lane_u32(vmull_lane_u32(*v14, a4, 0), *result, a3, 0), 0), vmlal_high_lane_u32(vmull_high_lane_u32(*v14->i8, a4, 0), *result->i8, a3, 0), 0), a2, 0)));
        v13 += 8;
        v14 += 4;
        result += 4;
      }

      while (v13 < v8);
    }

    if (v13 < v7)
    {
      v17 = (*&v6 + v13);
      v18 = v11 + v13;
      v19 = v9 + v13;
      v20 = v7 - v13;
      do
      {
        v22 = *v19++;
        v21 = v22;
        v23 = *v18++;
        v24 = (((v12 * v23 + v21 * -v12 + 0x80000000) >> 32) * v10 + 0x80000000) >> 32;
        if (v24 > 255)
        {
          LOBYTE(v24) = -1;
        }

        *v17++ = v24;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    if (v8 < 1)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = 0;
      v16 = &v9[2];
      do
      {
        *(*&v6 + v15) = vqmovn_u16(vuzp1q_s16(vqrdmulhq_lane_s32(v16[-1], a2, 0), vqrdmulhq_lane_s32(*v16, a2, 0)));
        v15 += 8;
        v16 += 2;
      }

      while (v15 < v8);
    }

    if (v15 < v7)
    {
      v25 = (*&v6 + v15);
      v26 = v9 + v15;
      v27 = v7 - v15;
      do
      {
        v28 = *v26++;
        v29 = (v28 * v10 + 0x80000000) >> 32;
        if (v29 > 255)
        {
          LOBYTE(v29) = -1;
        }

        *v25++ = v29;
        --v27;
      }

      while (v27);
    }
  }

  return result;
}

uint64_t RescalerExportRowShrink_NEON(uint64_t result, int32x2_t a2, int32x2_t a3)
{
  if (*(result + 64) >= *(result + 56))
  {
    RescalerExportRowShrink_NEON_cold_1();
  }

  v3 = *(result + 24);
  if (v3 >= 1)
  {
    RescalerExportRowShrink_NEON_cold_3();
  }

  if (*(result + 4))
  {
    RescalerExportRowShrink_NEON_cold_2();
  }

  v4 = *(result + 72);
  v5 = *(result + 88);
  v6 = (*(result + 8) * *(result + 52));
  v7 = v6 & 0xFFFFFFF8;
  v9 = *(result + 16);
  v8 = *(result + 20);
  a2.i32[0] = v8 >> 1;
  if (v3 * v9)
  {
    v10 = *(result + 96);
    v11 = -(v3 * v9);
    if (v7 < 1)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      v12 = 0;
      a3.i32[0] = v11 >> 1;
      v13 = v5 + 1;
      v14 = v10 + 1;
      do
      {
        v15 = vqdmulhq_lane_s32(v14[-1], a3, 0);
        v16 = vqdmulhq_lane_s32(*v14, a3, 0);
        *(v4 + v12) = vqmovn_u16(vuzp1q_s16(vqrdmulhq_lane_s32(vqsubq_u32(v13[-1], v15), a2, 0), vqrdmulhq_lane_s32(vqsubq_u32(*v13, v16), a2, 0)));
        v13[-1] = v15;
        *v13 = v16;
        v12 += 8;
        v13 += 2;
        v14 += 2;
      }

      while (v12 < v7);
    }

    if (v12 < v6)
    {
      v19 = (v4 + v12);
      v20 = &v5->i32[v12];
      v21 = &v10->i32[v12];
      v22 = v6 - v12;
      do
      {
        v23 = *v21++;
        v24 = (v23 * v11) >> 32;
        v25 = (v8 * (*v20 - v24) + 0x80000000) >> 32;
        if (v25 > 255)
        {
          LOBYTE(v25) = -1;
        }

        *v19++ = v25;
        *v20++ = v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    if (v7 < 1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v17 = 0;
      v18 = *(result + 88);
      do
      {
        *(v4 + v17) = vqmovn_u16(vuzp1q_s16(vqrdmulhq_lane_s32(*v18, a2, 0), vqrdmulhq_lane_s32(v18[1], a2, 0)));
        v17 += 8;
        *v18 = 0uLL;
        v18[1] = 0uLL;
        v18 += 2;
      }

      while (v17 < v7);
    }

    if (v17 < v6)
    {
      v26 = (v4 + v17);
      v27 = &v5->i32[v17];
      v28 = v6 - v17;
      do
      {
        v29 = (*v27 * v8 + 0x80000000) >> 32;
        if (v29 > 255)
        {
          LOBYTE(v29) = -1;
        }

        *v26++ = v29;
        *v27++ = 0;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}