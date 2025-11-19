uint64_t CustomSetup(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = **v2;
  if (v3 > 0xC || ((1 << v3) & 0x103A) == 0)
  {
    v5 = v3 - 11 < 0xFFFFFFFC;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    v6 = (v2 + 10);
    if (v3 - 11 >= 0xFFFFFFFC)
    {
      v7 = 11;
    }

    else
    {
      v7 = 12;
    }
  }

  else
  {
    v5 = 0;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    v6 = (v2 + 10);
    v7 = 11;
  }

  result = WebPIoInitFromOptions(v2[5], a1, v7);
  if (result)
  {
    v9 = v3 - 11 < 0xFFFFFFFC || v5;
    if ((v9 & 1) == 0)
    {
      WebPInitUpsamplers();
    }

    if (!*(a1 + 136))
    {
      if (v3 <= 0xA)
      {
        WebPInitSamplers();
        v2[11] = EmitSampledRGB;
        if (*(a1 + 88))
        {
          v39 = *(a1 + 12);
          v40 = v39 + 1;
          result = malloc_type_malloc(((v39 + 1) & 0xFFFFFFFFFFFFFFFELL) + v39, 0xF4CD80BCuLL);
          *v6 = result;
          if (!result)
          {
            return result;
          }

          v41 = result + *(a1 + 12);
          v2[1] = result;
          v2[2] = v41;
          v2[3] = (v41 + (v40 >> 1));
          v2[11] = EmitFancyRGB;
          WebPInitUpsamplers();
        }
      }

      else
      {
        v2[11] = EmitYUV;
      }

      if (v5)
      {
        return 1;
      }

      if (v3 != 10 && v3 != 5)
      {
        v43 = EmitAlphaRGB;
        if (v3 > 0xA)
        {
          v43 = EmitAlphaYUV;
        }

        v2[12] = v43;
        if (v3 > 0xA)
        {
          return 1;
        }

        goto LABEL_65;
      }

      v25 = EmitAlphaRGBA4444;
      goto LABEL_64;
    }

    v10 = *v2;
    v11 = **v2;
    v12 = v11 - 1;
    if (v3 <= 0xA)
    {
      v14 = (v12 >= 0xC || ((0x81Du >> v12) & 1) == 0) && (v11 - 11) < 0xFFFFFFFC;
      v26 = *(a1 + 144);
      v27 = *(a1 + 140);
      v47 = *(a1 + 12);
      v48 = *(a1 + 16);
      v28 = 2 * v27;
      v29 = 3;
      if (!v14)
      {
        v29 = 4;
      }

      v30 = v28 * v29;
      v31 = v29 * v27 + 4 * v28 * v29;
      result = malloc_type_malloc(v31 + 104 * v29 + 31, 0x1C1E4B9EuLL);
      *v6 = result;
      if (result)
      {
        v32 = result;
        v33 = result + 4 * v30;
        v34 = (result + v31 + 31) & 0xFFFFFFFFFFFFFFE0;
        v2[6] = v34;
        v2[7] = (v34 + 104);
        v35 = v34 + 312;
        if (v14)
        {
          v35 = 0;
        }

        v2[8] = (v34 + 208);
        v2[9] = v35;
        result = WebPRescalerInit(v34, *(a1 + 12), *(a1 + 16), v33, v27, v26, 0, 1, v32);
        if (result)
        {
          result = WebPRescalerInit(v2[7], (v47 + 1) >> 1, (v48 + 1) >> 1, v33 + v27, v27, v26, 0, 1, &v32[8 * v27]);
          if (result)
          {
            result = WebPRescalerInit(v2[8], (v47 + 1) >> 1, (v48 + 1) >> 1, v33 + 2 * v27, v27, v26, 0, 1, &v32[16 * v27]);
            if (result)
            {
              v2[11] = EmitRescaledRGB;
              WebPInitYUV444Converters();
              if (!v14)
              {
                result = WebPRescalerInit(v2[9], *(a1 + 12), *(a1 + 16), v33 + 3 * v27, v27, v26, 0, 1, &v32[24 * v27]);
                if (!result)
                {
                  return result;
                }

                v2[12] = EmitRescaledAlphaRGB;
                v36 = **v2;
                v37 = v36 == 10 || v36 == 5;
                v38 = ExportAlpha;
                if (v37)
                {
                  v38 = ExportAlphaRGBA4444;
                }

                v2[13] = v38;
                goto LABEL_65;
              }

              return 1;
            }
          }
        }
      }
    }

    else
    {
      v13 = (v12 >= 0xC || ((0x81Du >> v12) & 1) == 0) && (v11 - 11) < 0xFFFFFFFC;
      v15 = *(a1 + 144);
      v16 = *(a1 + 140);
      v17 = v16 + 1;
      v45 = *(a1 + 12);
      v46 = *(a1 + 16);
      v44 = (v16 + 1) & 0xFFFFFFFE;
      v18 = 8 * v16;
      v19 = 447;
      if (v13)
      {
        v19 = 343;
        v18 = 0;
      }

      v20 = v18 + 4 * (2 * v16 + 2 * v44);
      result = malloc_type_malloc(v20 + v19, 0x691D5AE1uLL);
      *v6 = result;
      if (result)
      {
        v21 = result;
        v22 = (result + v20 + 31) & 0xFFFFFFFFFFFFFFE0;
        v2[6] = v22;
        v2[7] = (v22 + 104);
        v23 = v22 + 312;
        if (v13)
        {
          v23 = 0;
        }

        v2[8] = (v22 + 208);
        v2[9] = v23;
        result = WebPRescalerInit(v22, *(a1 + 12), *(a1 + 16), *(v10 + 2), v16, v15, v10[12], 1, v21);
        if (result)
        {
          v24 = &v21[8 * v16];
          result = WebPRescalerInit(v2[7], (v45 + 1) >> 1, (v46 + 1) >> 1, *(v10 + 3), v17 >> 1, ((v15 + 1) >> 1), v10[13], 1, v24);
          if (result)
          {
            result = WebPRescalerInit(v2[8], (v45 + 1) >> 1, (v46 + 1) >> 1, *(v10 + 4), v17 >> 1, ((v15 + 1) >> 1), v10[14], 1, &v24[4 * v44]);
            if (result)
            {
              v2[11] = EmitRescaledYUV;
              if (!v13)
              {
                result = WebPRescalerInit(v2[9], *(a1 + 12), *(a1 + 16), *(v10 + 5), v16, v15, v10[15], 1, &v24[8 * v44]);
                if (!result)
                {
                  return result;
                }

                v25 = EmitRescaledAlphaYUV;
LABEL_64:
                v2[12] = v25;
LABEL_65:
                WebPInitAlphaProcessing();
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void CustomTeardown(uint64_t a1)
{
  v1 = *(a1 + 56);
  free(*(v1 + 80));
  *(v1 + 80) = 0;
}

uint64_t EmitFancyRGB(uint64_t a1, void **a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 12);
  v27 = *a2;
  v5 = *(*a2 + 6);
  v6 = *(a1 + 8);
  v7 = *(*a2 + 2) + v5 * v6;
  v8 = WebPUpsamplers[**a2];
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v28 = v8;
  __n = v4;
  if (v6)
  {
    v8(a2[1], v9, a2[2], a2[3], v10, v11, v7 - v5, v7, v4);
    v12 = v3 + 1;
  }

  else
  {
    v8(v9, 0, v10, v11, v10, v11, v7, 0, v4);
    v12 = v3;
  }

  v29 = v12;
  v13 = (v6 + v3);
  if (v3 < 3)
  {
    v18 = v10;
    v19 = v11;
    v15 = __n;
  }

  else
  {
    v14 = v6 + 2;
    LODWORD(v15) = __n;
    do
    {
      v17 = *(a1 + 48);
      v16 = *(a1 + 52);
      v18 = &v10[v16];
      v19 = &v11[v16];
      v20 = v27[6];
      v7 += 2 * v20;
      v9 += 2 * v17;
      v21 = v11;
      v22 = v13;
      v28(v9 - v17, v9, v10, v21, v18, v19, v7 - v20, v7, v15);
      v13 = v22;
      v15 = __n;
      v14 += 2;
      v11 = v19;
      v10 = v18;
    }

    while (v14 < v13);
  }

  v23 = *(a1 + 48);
  if (*(a1 + 128) + v13 >= *(a1 + 132))
  {
    if ((v13 & 1) == 0)
    {
      v28(v9 + v23, 0, v18, v19, v18, v19, v7 + v27[6], 0, v15);
    }

    return v29;
  }

  else
  {
    v24 = (v15 + 1) / 2;
    memcpy(a2[1], (v9 + v23), v15);
    memcpy(a2[2], v18, v24);
    memcpy(a2[3], v19, v24);
    return v29 - 1;
  }
}

uint64_t EmitYUV(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 12);
  v5 = *(a1 + 8);
  v6 = (*(*a2 + 24) + *(*a2 + 52) * (v5 >> 1));
  v7 = (*(*a2 + 32) + *(*a2 + 56) * (v5 >> 1));
  v8 = *(a1 + 16);
  v9 = (v4 + 1) / 2;
  v10 = (v8 + 1) / 2;
  WebPCopyPlane(*(a1 + 24), *(a1 + 48), (*(*a2 + 16) + *(*a2 + 48) * v5), *(*a2 + 48), v4, v8);
  WebPCopyPlane(*(a1 + 32), *(a1 + 52), v6, *(v3 + 52), v9, v10);
  WebPCopyPlane(*(a1 + 40), *(a1 + 52), v7, *(v3 + 56), v9, v10);
  return *(a1 + 16);
}

uint64_t EmitAlphaRGBA4444(int *a1, int **a2, uint64_t a3)
{
  v24 = *(a1 + 19);
  if (v24)
  {
    v5 = a1[3];
    v6 = *a2;
    v7 = **a2;
    v23 = 0;
    AlphaSourceRow = GetAlphaSourceRow(a1, &v24, &v23);
    v9 = v6[6];
    v10 = *(v6 + 2) + v9 * AlphaSourceRow;
    v11 = v23;
    if (v23 < 1)
    {
      v20 = 1;
    }

    else
    {
      v12 = 0;
      v13 = v24;
      v14 = (v10 + 1);
      v15 = 15;
      do
      {
        if (v5 >= 1)
        {
          v16 = v5;
          v17 = v14;
          v18 = v13;
          do
          {
            v19 = *v18++;
            *v17 = *v17 & 0xF0 | (v19 >> 4);
            v17 += 2;
            v15 &= v19 >> 4;
            --v16;
          }

          while (v16);
          v9 = v6[6];
        }

        v13 += *a1;
        v14 += v9;
        ++v12;
      }

      while (v12 != v11);
      v20 = v15 == 15;
    }

    if (v11 != a3)
    {
      EmitAlphaRGBA4444_cold_1();
    }

    v21 = (v7 - 11) < 0xFFFFFFFC || v20;
    if ((v21 & 1) == 0)
    {
      WebPApplyAlphaMultiply4444(v10, v5, a3);
    }
  }

  return 0;
}

uint64_t EmitAlphaRGB(unsigned int *a1, int **a2, uint64_t a3)
{
  v18 = *(a1 + 19);
  if (v18)
  {
    v5 = a1[3];
    v6 = *a2;
    v7 = **a2;
    v9 = v7 == 4 || v7 == 9;
    v17 = 0;
    v10 = *(v6 + 2) + v6[6] * GetAlphaSourceRow(a1, &v18, &v17);
    v11 = 3;
    if (v9)
    {
      v11 = 0;
    }

    v12 = *a1;
    v13 = v17;
    v14 = WebPDispatchAlpha(v18, v12, v5, v17, v10 + v11);
    if (v13 != a3)
    {
      EmitAlphaRGB_cold_1();
    }

    if ((v7 - 11) >= 0xFFFFFFFC && v14 != 0)
    {
      WebPApplyAlphaMultiply(v10, v9, v5, a3, v6[6]);
    }
  }

  return 0;
}

uint64_t EmitAlphaYUV(int *a1, uint64_t *a2, int a3)
{
  if (a1[4] != a3)
  {
    EmitAlphaYUV_cold_1();
  }

  v3 = a3;
  v5 = *a2;
  v6 = *(*a2 + 40);
  v7 = a1[3];
  v8 = *(*a2 + 60);
  v9 = (v6 + v8 * a1[2]);
  v10 = *(a1 + 19);
  if (v10)
  {
    if (a3 >= 1)
    {
      do
      {
        memcpy(v9, v10, v7);
        v10 += *a1;
        v9 += *(v5 + 60);
        --v3;
      }

      while (v3);
    }
  }

  else if (a3 >= 1 && v6)
  {
    do
    {
      memset(v9, 255, v7);
      v9 += v8;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t EmitRescaledRGB(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v20 = *(a1 + 16);
  v21 = (v2 + 1) >> 1;
  v8 = a2[6];
  do
  {
    v9 = WebPRescalerImport(v8, (v2 - v5), *(a1 + 24) + *(a1 + 48) * v5, *(a1 + 48));
    v10 = (v21 - v6);
    if (WebPRescaleNeededLines(a2[7], v21 - v6))
    {
      v11 = WebPRescalerImport(a2[7], v10, *(a1 + 32) + *(a1 + 52) * v6, *(a1 + 52));
      if (v11 != WebPRescalerImport(a2[8], v10, *(a1 + 40) + *(a1 + 52) * v6, *(a1 + 52)))
      {
        EmitRescaledRGB_cold_1();
      }

      v6 += v11;
    }

    v22 = v9;
    v8 = a2[6];
    if (v8[16] >= v8[14])
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = *(a2 + 8) + v7;
      v14 = *a2;
      v15 = WebPYUV444Converters[**a2];
      v16 = *(*a2 + 2) + (*a2)[6] * v13;
      do
      {
        if (v8[6] > 0)
        {
          break;
        }

        v17 = a2[7];
        if (v17[16] >= v17[14])
        {
          break;
        }

        v18 = v17[6];
        if (v18 > 0)
        {
          break;
        }

        if (v13 + v12 >= (*a2)[2])
        {
          EmitRescaledRGB_cold_2();
        }

        if (v18 != a2[8][6])
        {
          EmitRescaledRGB_cold_3();
        }

        WebPRescalerExportRow(v8);
        WebPRescalerExportRow(a2[7]);
        WebPRescalerExportRow(a2[8]);
        v15(*(a2[6] + 9), *(a2[7] + 9), *(a2[8] + 9), v16, a2[6][13]);
        v16 += *(v14 + 24);
        ++v12;
        v8 = a2[6];
      }

      while (v8[16] < v8[14]);
    }

    v5 += v22;
    v7 = (v12 + v7);
    v2 = v20;
  }

  while (v5 < v20);
  return v7;
}

uint64_t EmitRescaledAlphaRGB(int *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 19))
  {
    v3 = a3;
    if (a3 >= 1)
    {
      v6 = *(a2 + 72);
      v7 = *(a2 + 32) + a3;
      do
      {
        WebPRescalerImport(v6, (a1[2] - *(v6 + 60) + a1[4]), *(a1 + 19) + (*(v6 + 60) - a1[2]) * *a1, *a1);
        v8 = (*(a2 + 104))(a2, (v7 - v3), v3);
        v9 = __OFSUB__(v3, v8);
        v3 = (v3 - v8);
      }

      while (!((v3 < 0) ^ v9 | (v3 == 0)));
    }
  }

  return 0;
}

uint64_t ExportAlphaRGBA4444(int **a1, int a2, int a3)
{
  v4 = a1[9];
  if (v4[16] >= v4[14])
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(*a1 + 2) + (*a1)[6] * a2;
  v9 = **a1;
  v10 = v4[13];
  v11 = 0;
  if (v4[6] > 0 || a3 < 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = (v8 + 1);
    v15 = 15;
    do
    {
      if (v11 + a2 >= (*a1)[2])
      {
        ExportAlphaRGBA4444_cold_1();
      }

      WebPRescalerExportRow(v4);
      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v18 = *(*(a1[9] + 9) + v16);
          *v17 = *v17 & 0xF0 | (*(*(a1[9] + 9) + v16) >> 4);
          v17 += 2;
          v15 &= v18 >> 4;
          ++v16;
        }

        while (v10 != v16);
      }

      v11 = (v11 + 1);
      v4 = a1[9];
      if (v4[16] >= v4[14])
      {
        break;
      }

      v14 += v7[6];
    }

    while (v4[6] <= 0 && v11 < a3);
    v13 = v15 != 15;
  }

  if ((v9 - 7) <= 3 && v13)
  {
    WebPApplyAlphaMultiply4444(v8, v10, v11);
  }

  return v11;
}

uint64_t ExportAlpha(int **a1, int a2, int a3)
{
  v5 = *a1;
  v6 = **a1;
  v8 = v6 == 4 || v6 == 9;
  v9 = a1[9];
  if (v9[16] >= v9[14])
  {
    return 0;
  }

  v11 = v5[6];
  v12 = *(v5 + 2) + v11 * a2;
  v13 = v9[13];
  if (v9[6] > 0 || a3 < 1)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = 0;
    v25 = v8;
    v18 = 3;
    if (v8)
    {
      v18 = 0;
    }

    v24 = *(v5 + 2) + v11 * a2;
    v19 = v12 + v18;
    v20 = 1;
    do
    {
      v15 = v20;
      if (a2 >= (*a1)[2])
      {
        ExportAlpha_cold_1();
      }

      WebPRescalerExportRow(v9);
      v17 |= WebPDispatchAlpha(*(a1[9] + 9), 0, v13, 1, v19);
      v11 = v5[6];
      v9 = a1[9];
      if (v9[16] >= v9[14])
      {
        break;
      }

      v19 += v11;
      ++a2;
      v20 = (v15 + 1);
    }

    while (v9[6] <= 0 && v15 < a3);
    v16 = v17 != 0;
    v8 = v25;
    v12 = v24;
  }

  if ((v6 - 7) <= 3 && v16)
  {
    WebPApplyAlphaMultiply(v12, v8, v13, v15, v11);
  }

  return v15;
}

uint64_t EmitRescaledYUV(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 48);
  v6 = **a2;
  v7 = v6 > 0xC || ((1 << v6) & 0x103A) == 0;
  if (!v7 || v6 - 11 >= 0xFFFFFFFC)
  {
    v8 = *(a1 + 152);
    if (v8)
    {
      WebPMultRows(*(a1 + 24), *(a1 + 48), v8, *a1, *(a1 + 12), v4, 0);
    }
  }

  v9 = ((v4 + 1) >> 1);
  v10 = Rescale(*(a1 + 24), *(a1 + 48), v4, v5);
  Rescale(*(a1 + 32), *(a1 + 52), v9, *(a2 + 56));
  Rescale(*(a1 + 40), *(a1 + 52), v9, *(a2 + 64));
  return v10;
}

uint64_t EmitRescaledAlphaYUV(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = a3;
  v4 = *a2;
  v5 = *(*a2 + 40);
  v6 = *(a2 + 8);
  v7 = *(*a2 + 60);
  v8 = (v5 + v7 * v6);
  if (*(a1 + 152))
  {
    v10 = *(v4 + 16);
    v11 = *(v4 + 48);
    if (Rescale(*(a1 + 152), *a1, *(a1 + 16), a2[9]) != a3)
    {
      EmitRescaledAlphaYUV_cold_1();
    }

    if (v3 >= 1)
    {
      WebPMultRows(v10 + v11 * v6, *(v4 + 48), v8, *(v4 + 60), *(a2[9] + 52), v3, 1);
    }
  }

  else if (v5)
  {
    if (v6 + a3 > *(a1 + 144))
    {
      EmitRescaledAlphaYUV_cold_2();
    }

    if (a3 >= 1)
    {
      v12 = *(a1 + 140);
      do
      {
        memset(v8, 255, v12);
        v8 += v7;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

uint64_t Rescale(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  LODWORD(v8) = 0;
  do
  {
    v9 = WebPRescalerImport(a4, v5, a1, a2);
    a1 += v9 * a2;
    v5 = (v5 - v9);
    v8 = WebPRescalerExport(a4) + v8;
  }

  while (v5 > 0);
  return v8;
}

uint64_t GetAlphaSourceRow(unsigned int *a1, void *a2, unsigned int *a3)
{
  result = a1[2];
  v5 = a1[4];
  *a3 = v5;
  if (a1[22])
  {
    if (result)
    {
      result = (result - 1);
      *a2 -= *a1;
    }

    else
    {
      *a3 = v5 - 1;
      v5 = a1[4];
    }

    v6 = a1[32];
    v7 = a1[33];
    v8 = a1[2] + v6 + v5;
    if (v8 == v7)
    {
      *a3 = v8 - (v6 + result);
    }
  }

  return result;
}

void VP8FiltersInit()
{
  if (VP8FiltersInit_VP8FiltersInit_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPUnfilters[0] = NoneUnfilter_C;
    qword_1EA8E1420 = GradientUnfilter_C;
    WebPFilters = 0;
    VP8FiltersInitNEON();
    if (!WebPUnfilters[0])
    {
      VP8FiltersInit_cold_7();
    }

    if (!qword_1EA8E1410)
    {
      VP8FiltersInit_cold_6();
    }

    if (!qword_1EA8E1418)
    {
      VP8FiltersInit_cold_5();
    }

    if (!qword_1EA8E1420)
    {
      VP8FiltersInit_cold_4();
    }

    if (!qword_1EA8E1430)
    {
      VP8FiltersInit_cold_3();
    }

    if (!qword_1EA8E1438)
    {
      VP8FiltersInit_cold_2();
    }

    if (!qword_1EA8E1440)
    {
      VP8FiltersInit_cold_1();
    }

    VP8FiltersInit_VP8FiltersInit_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

void *NoneUnfilter_C(int a1, const void *a2, void *__dst, int a4)
{
  if (__dst != a2)
  {
    return memcpy(__dst, a2, a4);
  }

  return result;
}

unsigned __int8 *GradientUnfilter_C(unsigned __int8 *result, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  if (result)
  {
    if (a4 >= 1)
    {
      v4 = *result;
      v5 = a4;
      v6 = *result;
      do
      {
        v8 = *result++;
        v7 = v8;
        LOBYTE(v8) = *a2++;
        v9 = v8;
        v10 = (v7 - v6 + v4) & ~((v7 - v6 + v4) >> 31);
        if (v10 >= 255)
        {
          LOBYTE(v10) = -1;
        }

        v4 = v9 + v10;
        *a3++ = v4;
        v6 = v7;
        --v5;
      }

      while (v5);
    }
  }

  else if (a4 >= 1)
  {
    v11 = 0;
    v12 = a4;
    do
    {
      v13 = *a2++;
      v11 += v13;
      *a3++ = v11;
      --v12;
    }

    while (v12);
  }

  return result;
}

unsigned int *WebPMultARGBRow_C(unsigned int *result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      v4 = HIBYTE(*result);
      if (v4 != 255)
      {
        if (v4)
        {
          v6 = 65793 * v4;
          v7 = 0xFF000000 / v4;
          if (!a3)
          {
            v7 = v6;
          }

          v8 = vand_s8(vshl_u32(vmla_s32(0x80000000800000, vdup_n_s32(v7), vand_s8(vshl_u32(vdup_n_s32(*result), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0xFFFFFFF8FFFFFFF0), 0xFF00000000FF00);
          v5 = *result & 0xFF000000 | ((v7 * *result + 0x800000) >> 24) | v8.i32[0] | v8.i32[1];
        }

        else
        {
          v5 = 0;
        }

        *result = v5;
      }

      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

_BYTE *WebPMultRow_C(_BYTE *result, unsigned __int8 *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (v6 != 255)
      {
        if (v5)
        {
          v7 = 65793 * v5;
          v8 = 0xFF000000 / v5;
          if (!a4)
          {
            v8 = v7;
          }

          *result = (v8 * *result + 0x800000) >> 24;
        }

        else
        {
          *result = 0;
        }
      }

      ++result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t WebPMultARGBRows(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v6 = a4;
    v8 = result;
    v9 = a2;
    do
    {
      result = WebPMultARGBRow(v8, a3, a5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t WebPMultRows(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a6 >= 1)
  {
    v8 = a6;
    v11 = result;
    v12 = a2;
    v13 = a4;
    do
    {
      result = WebPMultRow(v11, a3, a5, a7);
      v11 += v12;
      a3 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

void WebPInitAlphaProcessing()
{
  if (WebPInitAlphaProcessing_WebPInitAlphaProcessing_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPMultARGBRow = WebPMultARGBRow_C;
    WebPMultRow = WebPMultRow_C;
    WebPApplyAlphaMultiply4444 = ApplyAlphaMultiply_16b_C;
    WebPPackRGB = PackRGB_C;
    WebPHasAlpha8b = HasAlpha8b_C;
    WebPHasAlpha32b = HasAlpha32b_C;
    WebPAlphaReplace = AlphaReplace_C;
    WebPInitAlphaProcessingNEON();
    if (!WebPMultARGBRow)
    {
      WebPInitAlphaProcessing_cold_12();
    }

    if (!WebPMultRow)
    {
      WebPInitAlphaProcessing_cold_11();
    }

    if (!WebPApplyAlphaMultiply)
    {
      WebPInitAlphaProcessing_cold_10();
    }

    if (!WebPApplyAlphaMultiply4444)
    {
      WebPInitAlphaProcessing_cold_9();
    }

    if (!WebPDispatchAlpha)
    {
      WebPInitAlphaProcessing_cold_8();
    }

    if (!WebPDispatchAlphaToGreen)
    {
      WebPInitAlphaProcessing_cold_7();
    }

    if (!WebPExtractAlpha)
    {
      WebPInitAlphaProcessing_cold_6();
    }

    if (!WebPExtractGreen)
    {
      WebPInitAlphaProcessing_cold_5();
    }

    if (!WebPPackRGB)
    {
      WebPInitAlphaProcessing_cold_4();
    }

    if (!WebPHasAlpha8b)
    {
      WebPInitAlphaProcessing_cold_3();
    }

    if (!WebPHasAlpha32b)
    {
      WebPInitAlphaProcessing_cold_2();
    }

    if (!WebPAlphaReplace)
    {
      WebPInitAlphaProcessing_cold_1();
    }

    WebPInitAlphaProcessing_WebPInitAlphaProcessing_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint64_t ApplyAlphaMultiply_16b_C(uint64_t result, int a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = (result + 1);
    do
    {
      if (a2 >= 1)
      {
        v5 = v4;
        v6 = a2;
        do
        {
          v7 = *v5;
          v8 = 4369 * (v7 & 0xF);
          result = v7 & 0xF0 | (v7 >> 4);
          *(v5 - 1) = ((v8 * (*(v5 - 1) & 0xF0 | (*(v5 - 1) >> 4))) >> 16) & 0xF0 | ((v8 * (*(v5 - 1) & 0xFu | (16 * *(v5 - 1)))) >> 20);
          *v5 = ((v8 * result) >> 16) & 0xF0 | v7 & 0xF;
          v5 += 2;
          --v6;
        }

        while (v6);
      }

      v4 += a4;
    }

    while (a3-- > 1);
  }

  return result;
}

uint64_t PackRGB_C(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int *a6)
{
  if (a4 >= 1)
  {
    v6 = 0;
    v7 = a4;
    do
    {
      *a6++ = (*(a2 + v6) << 8) | (*(result + v6) << 16) | *(a3 + v6) | 0xFF000000;
      v6 += a5;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t HasAlpha8b_C(unsigned __int8 *a1, int a2)
{
  while (1)
  {
    v2 = __OFSUB__(a2--, 1);
    if (a2 < 0 != v2)
    {
      break;
    }

    v3 = *a1++;
    if (v3 != 255)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HasAlpha32b_C(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a2 + 1;
  while (1)
  {
    v3 = *a1;
    a1 += 4;
    if (v3 != 255)
    {
      break;
    }

    if (--v2 < 2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AlphaReplace_C(uint64_t result, int a2, int a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    do
    {
      if (!*(result + 3))
      {
        *result = a3;
      }

      result += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

double Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 8) = 0;
  return result;
}

uint64_t Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  v1 = *(a1 + 8);
  if (v1 != 1)
  {
    if (v1)
    {
      Reset_cold_1();
    }

    *(a1 + 8) = 1;
  }

  return 1;
}

BOOL Sync(uint64_t a1)
{
  if (*(a1 + 8) >= 2u)
  {
    Reset_cold_1();
  }

  return *(a1 + 40) == 0;
}

void *Execute(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    result = v1(result[3], result[4]);
    *(v2 + 10) |= result == 0;
  }

  return result;
}

uint64_t End(uint64_t result)
{
  *(result + 8) = 0;
  if (*result)
  {
    End_cold_1();
  }

  return result;
}

uint64_t WebPAnimDecoderOptionsInitInternal(void *a1, int a2)
{
  result = 0;
  if (a1)
  {
    if ((a2 & 0xFFFFFF00) == 0x100)
    {
      *a1 = 1;
      return 1;
    }
  }

  return result;
}

unsigned int **WebPAnimDecoderNewInternal(uint64_t a1, int *a2, int a3)
{
  v3 = 0;
  if (a1)
  {
    if ((a3 & 0xFFFFFF00) == 0x100)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v3 = 0;
      if (!WebPGetFeaturesInternal(*a1, *(a1 + 8), v15, 521))
      {
        v6 = malloc_type_calloc(1uLL, 0x198uLL, 0x10F20402D34DE3CuLL);
        v3 = v6;
        if (v6)
        {
          if (a2)
          {
            v9 = *a2;
            if (*a2 > 8 || ((1 << v9) & 0x18A) == 0)
            {
              goto LABEL_17;
            }

            LODWORD(a2) = a2[1];
          }

          else
          {
            v9 = 1;
          }

          v10 = BlendPixelRowPremult;
          if ((v9 & 0xD) == 1)
          {
            v10 = BlendPixelRowNonPremult;
          }

          v6[31] = v10;
          if (WebPInitDecoderConfigInternal(v6 + 1, 521))
          {
            *(v3 + 12) = v9;
            *(v3 + 15) = 1;
            *(v3 + 52) = a2;
            v11 = WebPDemuxInternal(a1, 0, 0, 263);
            *v3 = v11;
            if (v11)
            {
              *(v3 + 64) = WebPDemuxGetI(v11, 1);
              *(v3 + 65) = WebPDemuxGetI(*v3, 2);
              *(v3 + 66) = WebPDemuxGetI(*v3, 3);
              *(v3 + 67) = WebPDemuxGetI(*v3, 4);
              *(v3 + 68) = WebPDemuxGetI(*v3, 5);
              v12 = malloc_type_calloc((4 * *(v3 + 64)), *(v3 + 65), 0x100004077774924uLL);
              v3[37] = v12;
              if (v12)
              {
                v13 = malloc_type_calloc((4 * *(v3 + 64)), *(v3 + 65), 0x100004077774924uLL);
                v3[38] = v13;
                if (v13)
                {
                  *(v3 + 78) = 0;
                  _cg_jpeg_mem_term(v3 + 40, v7, v8);
                  *(v3 + 23) = 0u;
                  *(v3 + 24) = 0u;
                  *(v3 + 21) = 0u;
                  *(v3 + 22) = 0u;
                  *(v3 + 20) = 0u;
                  v3[50] = 0x100000000;
                  return v3;
                }
              }
            }
          }
        }

LABEL_17:
        WebPAnimDecoderDelete(v3, v7, v8);
        return 0;
      }
    }
  }

  return v3;
}

void WebPAnimDecoderDelete(void **a1, uint64_t a2, const char *a3)
{
  if (a1)
  {
    _cg_jpeg_mem_term(a1 + 40, a2, a3);
    WebPDemuxDelete(*a1);
    free(a1[37]);
    free(a1[38]);

    free(a1);
  }
}

uint64_t WebPAnimDecoderGetInfo(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 256);
      v5 = *(a1 + 272);
      *(a2 + 32) = *(a1 + 288);
      *a2 = v4;
      *(a2 + 16) = v5;
      return 1;
    }
  }

  return result;
}

uint64_t WebPAnimDecoderGetNext(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 0;
  if (!a1 || !a2 || !a3)
  {
    return result;
  }

  v7 = *(a1 + 404);
  if (v7 > *(a1 + 272))
  {
    return 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v8 = *(a1 + 256);
  v9 = *(a1 + 260);
  v10 = *(a1 + 248);
  result = WebPDemuxGetFrame(*a1, v7, &v43);
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 312);
  v12 = DWORD2(v44);
  v13 = IsKeyFrame(&v43, (a1 + 320), *(a1 + 400), v8, v9);
  if (v13)
  {
    bzero(*(a1 + 296), 4 * v8 * v9);
  }

  else
  {
    CopyCanvas(*(a1 + 304), *(a1 + 296), v8, v9);
  }

  v14 = 4 * v8;
  v15 = SDWORD1(v44) * v14;
  v17 = SDWORD2(v43);
  v16 = SHIDWORD(v43);
  v18 = *(&v45 + 1);
  v19 = v46;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 64) = *(a1 + 296) + v16 * v14 + 4 * v17;
  if (WebPDecode(v18, v19, a1 + 8))
  {
    _cg_jpeg_mem_term(&v43, v20, v21);
    return 0;
  }

  v39 = v12;
  v40 = v11;
  v42 = v13;
  v41 = v9;
  if (v43 >= 2 && !(HIDWORD(v46) | v13))
  {
    v22 = *(a1 + 348);
    if (!v22)
    {
      if (SDWORD1(v44) >= 1)
      {
        v23 = 0;
        do
        {
          v10(*(a1 + 296) + 4 * (DWORD2(v43) + (v23 + HIDWORD(v43)) * v8), *(a1 + 304) + 4 * (DWORD2(v43) + (v23 + HIDWORD(v43)) * v8), v44);
          ++v23;
        }

        while (v23 < SDWORD1(v44));
      }

      goto LABEL_47;
    }

    if (v22 != 1)
    {
      WebPAnimDecoderGetNext_cold_1();
    }

    if (SDWORD1(v44) < 1)
    {
      goto LABEL_47;
    }

    v24 = 0;
    while (1)
    {
      v25 = v24 + HIDWORD(v43);
      v21 = v44;
      v26 = v44 + DWORD2(v43);
      v27 = *(a1 + 328);
      v28 = *(a1 + 336) + v27;
      v29 = *(a1 + 332);
      v30 = v29 > v24 + HIDWORD(v43) || v29 + *(a1 + 340) <= v25;
      v31 = !v30 && SDWORD2(v43) < v28;
      if (!v31 || v26 <= v27)
      {
        break;
      }

      v35 = __OFSUB__(v26, v28);
      v36 = v26 - v28;
      if ((v36 < 0) ^ v35 | (v36 == 0))
      {
        v34 = -1;
      }

      else
      {
        v34 = *(a1 + 336) + v27;
      }

      if ((v36 < 0) ^ v35 | (v36 == 0))
      {
        v33 = 0;
      }

      else
      {
        v33 = v36;
      }

      v21 = (v27 - DWORD2(v43));
      if (v27 > SDWORD2(v43))
      {
        goto LABEL_42;
      }

LABEL_44:
      if (v33 >= 1)
      {
        v10(*(a1 + 296) + 4 * (v34 + v25 * v8), *(a1 + 304) + 4 * (v34 + v25 * v8), v33);
      }

      if (++v24 >= SDWORD1(v44))
      {
        goto LABEL_47;
      }
    }

    v33 = 0;
    v34 = -1;
LABEL_42:
    if (v21 >= 1)
    {
      (v10)(*(a1 + 296) + 4 * (DWORD2(v43) + v25 * v8), *(a1 + 304) + 4 * (DWORD2(v43) + v25 * v8));
    }

    goto LABEL_44;
  }

LABEL_47:
  *(a1 + 312) = v39 + v40;
  _cg_jpeg_mem_term(a1 + 320, v20, v21);
  v37 = v46;
  *(a1 + 352) = v45;
  *(a1 + 368) = v37;
  *(a1 + 384) = v47;
  v38 = v44;
  *(a1 + 320) = v43;
  *(a1 + 336) = v38;
  *(a1 + 400) = v42;
  CopyCanvas(*(a1 + 296), *(a1 + 304), v8, v41);
  if (*(a1 + 348) == 1)
  {
    ZeroFillFrameRect(*(a1 + 304), 4 * v8, *(a1 + 328), *(a1 + 332), *(a1 + 336), *(a1 + 340));
  }

  ++*(a1 + 404);
  *a2 = *(a1 + 296);
  *a3 = v39 + v40;
  return 1;
}

BOOL WebPAnimDecoderHasMoreFrames(_BOOL8 result)
{
  if (result)
  {
    return *(result + 404) <= *(result + 272);
  }

  return result;
}

BOOL IsKeyFrame(_DWORD *a1, _DWORD *a2, int a3, int a4, int a5)
{
  if (*a1 == 1)
  {
    return 1;
  }

  if ((!a1[14] || a1[15] == 1) && a1[4] == a4 && a1[5] == a5)
  {
    return 1;
  }

  if (!a2 || a2[7] != 1)
  {
    return 0;
  }

  v7 = a2[4] == a4 && a2[5] == a5;
  return (v7 | a3) != 0;
}

void *CopyCanvas(void *__src, void *__dst, unsigned int a3, unsigned int a4)
{
  if (!__src || !__dst)
  {
    CopyCanvas_cold_1();
  }

  v5 = 4 * a3 * a4;

  return memcpy(__dst, __src, v5);
}

void ZeroFillFrameRect(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (4 * a5 > a2)
  {
    ZeroFillFrameRect_cold_1();
  }

  v6 = a6;
  if (a6 >= 1)
  {
    v7 = (a1 + a4 * a2 + 4 * a3);
    v8 = 4 * a5;
    v9 = a2;
    do
    {
      bzero(v7, v8);
      v7 += v9;
      --v6;
    }

    while (v6);
  }
}

uint64_t WebPAnimDecoderSkipFrame(uint64_t a1, int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 404);
    if (v5 <= *(a1 + 272))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      result = WebPDemuxGetFrame(*a1, v5, &v11);
      if (result)
      {
        v8 = DWORD2(v12) + *(a1 + 312);
        *(a1 + 312) = v8;
        _cg_jpeg_mem_term(a1 + 320, v6, v7);
        v9 = v14;
        *(a1 + 352) = v13;
        *(a1 + 368) = v9;
        *(a1 + 384) = v15;
        v10 = v12;
        *(a1 + 320) = v11;
        *(a1 + 336) = v10;
        *(a1 + 400) = 0;
        ++*(a1 + 404);
        result = 1;
        *a2 = v8;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebPAnimDecoderRestoreCanvas(uint64_t a1, void *a2, int a3, int a4)
{
  result = 0;
  if (a1 && a2)
  {
    if (a3 && *(a1 + 272) >= a3)
    {
      v9 = *(a1 + 256);
      v10 = *(a1 + 260);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      result = WebPDemuxGetFrame(*a1, a3, &v21);
      if (result)
      {
        CopyCanvas(a2, *(a1 + 296), v9, v10);
        *(a1 + 312) = a4;
        _cg_jpeg_mem_term(a1 + 320, v11, v12);
        v13 = v24;
        *(a1 + 352) = v23;
        *(a1 + 368) = v13;
        *(a1 + 384) = v25;
        v14 = v22;
        *(a1 + 320) = v21;
        *(a1 + 336) = v14;
        memset(v20, 0, sizeof(v20));
        if (a3 < 2)
        {
          v19 = v21;
          if (v21 != 1)
          {
            v19 = (!DWORD2(v24) || HIDWORD(v24) == 1) && v22 == __PAIR64__(v10, v9);
          }

          *(a1 + 400) = v19;
        }

        else
        {
          Frame = WebPDemuxGetFrame(*a1, a3 - 1, v20);
          if (Frame)
          {
            v16 = v20;
          }

          else
          {
            v16 = 0;
          }

          *(a1 + 400) = IsKeyFrame(&v21, v16, 0, v9, v10);
          if (Frame)
          {
            _cg_jpeg_mem_term(v20, v17, v18);
          }
        }

        *(a1 + 404) = a3 + 1;
        CopyCanvas(*(a1 + 296), *(a1 + 304), v9, v10);
        if (*(a1 + 348) == 1)
        {
          ZeroFillFrameRect(*(a1 + 304), 4 * v9, *(a1 + 328), *(a1 + 332), *(a1 + 336), *(a1 + 340));
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlendPixelRowNonPremult(uint64_t result, unsigned int *a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *v4;
      if (HIBYTE(*v4) != 255)
      {
        v7 = *a2;
        if (HIBYTE(*v4))
        {
          v8 = HIBYTE(v7) * (256 - HIBYTE(v6));
          v9 = (v8 >> 8) + HIBYTE(v6);
          v13 = 0x1000000u / (BYTE1(v8) + HIBYTE(*v4));
          v10 = BYTE1(v8);
          v11 = BlendChannelNonPremult(v6, HIBYTE(v6), v7, BYTE1(v8), v13, 0);
          v12 = BlendChannelNonPremult(v6, HIBYTE(v6), v7, v10, v13, 8);
          result = BlendChannelNonPremult(v6, HIBYTE(v6), v7, v10, v13, 16);
          if (v9 >= 0x100)
          {
            BlendPixelRowNonPremult_cold_1();
          }

          v7 = v11 | (v12 << 8) | (result << 16) | (v9 << 24);
        }

        *v4 = v7;
      }

      ++a2;
      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

_DWORD *BlendPixelRowPremult(_DWORD *result, _DWORD *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      if (HIBYTE(*result) != 255)
      {
        *result += ((((*a2 >> 8) & 0xFF00FF) * (256 - HIBYTE(*result))) & 0xFF00FF00) + ((((*a2 & 0xFF00FFu) * (256 - HIBYTE(*result))) >> 8) & 0xFF00FF);
      }

      ++a2;
      ++result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t BlendChannelNonPremult(unsigned int a1, int a2, unsigned int a3, int a4, unsigned int a5, char a6)
{
  v6 = (a3 >> a6) * a4 + (a1 >> a6) * a2;
  if (0x100000000uLL / a5 <= v6)
  {
    BlendChannelNonPremult_cold_1();
  }

  return (v6 * a5) >> 24;
}

uint64_t VP8InitIoInternal(_OWORD *a1, int a2)
{
  if ((a2 & 0xFFFFFF00) != 0x200)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  v2 = 1;
  *a1 = 0u;
  a1[1] = 0u;
  return v2;
}

void *VP8New()
{
  v0 = malloc_type_calloc(1uLL, 0xBD0uLL, 0x10F0040C479A369uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = "OK";
    v2 = WebPGetWorkerInterface();
    (*v2)(v1 + 19);
    *(v1 + 1) = 0;
    *(v1 + 108) = 0;
    if (InitGetCoeffs_InitGetCoeffs_body_last_cpuinfo_used != VP8GetCPUInfo)
    {
      if (!VP8GetCPUInfo || (CPUInfo = VP8GetCPUInfo(2), v4 = GetCoeffsAlt, !CPUInfo))
      {
        v4 = GetCoeffsFast;
      }

      GetCoeffs = v4;
      InitGetCoeffs_InitGetCoeffs_body_last_cpuinfo_used = VP8GetCPUInfo;
    }
  }

  return v1;
}

void VP8Delete(void *a1)
{
  if (a1)
  {
    VP8Clear(a1);

    free(a1);
  }
}

double VP8Clear(uint64_t a1)
{
  if (a1)
  {
    v2 = WebPGetWorkerInterface();
    (v2[5])(a1 + 152);
    WebPDeallocateAlphaMemory(a1);
    free(*(a1 + 2888));
    result = 0.0;
    *(a1 + 2888) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 4) = 0;
  }

  return result;
}

uint64_t VP8SetError(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 5 && !*(a1 + 64))
  {
    VP8SetError_cold_1();
  }

  if (!*a1)
  {
    *(a1 + 8) = a3;
    *a1 = a2;
    *(a1 + 4) = 0;
  }

  return 0;
}

uint64_t VP8GetInfo(unsigned __int8 *a1, unint64_t a2, unint64_t a3, int *a4, int *a5)
{
  result = 0;
  if (a1 && a2 >= 0xA)
  {
    if (a1[3] == 157 && a1[4] == 1 && a1[5] == 42)
    {
      result = 0;
      v7 = *a1;
      if ((v7 & 0x19) == 0x10 && ((a1[2] << 16) | (a1[1] << 8) | v7) >> 5 < a3)
      {
        result = 0;
        v8 = a1[6] | ((a1[7] & 0x3F) << 8);
        if (v8)
        {
          v9 = a1[8] | ((a1[9] & 0x3F) << 8);
          if (v9)
          {
            if (a4)
            {
              *a4 = v8;
            }

            if (a5)
            {
              *a5 = v9;
            }

            return 1;
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

uint64_t VP8GetHeaders(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  *a1 = 0;
  *(a1 + 8) = "OK";
  if (!a2)
  {
    v5 = 0;
    *(a1 + 8) = "null VP8Io passed to VP8GetHeaders()";
    v7 = 2;
    goto LABEL_13;
  }

  v3 = *(a2 + 96);
  v4 = v3 - 3;
  if (v3 > 3)
  {
    v8 = *(a2 + 104);
    v9 = *v8;
    v10 = v9 | (v8[1] << 8) | (v8[2] << 16);
    v11 = v9 & 1;
    *(a1 + 68) = !(v9 & 1);
    v12 = (v9 >> 1) & 7;
    *(a1 + 69) = (v9 >> 1) & 7;
    v13 = (v9 >> 4) & 1;
    *(a1 + 70) = (v9 & 0x10) != 0;
    v14 = v10 >> 5;
    *(a1 + 72) = v10 >> 5;
    if (v12 >= 4)
    {
      v5 = 0;
      v15 = "Incorrect keyframe parameters.";
LABEL_9:
      *(a1 + 8) = v15;
      v7 = 3;
      goto LABEL_13;
    }

    if (!v13)
    {
      v5 = 0;
      v16 = "Frame not displayable.";
LABEL_12:
      *(a1 + 8) = v16;
      v7 = 4;
      goto LABEL_13;
    }

    v17 = (v8 + 3);
    if (!v11)
    {
      if (v4 <= 6)
      {
        v5 = 0;
        v6 = "cannot parse picture header";
        goto LABEL_5;
      }

      if (*v17 != 157 || v8[4] != 1 || v8[5] != 42)
      {
        v5 = 0;
        v15 = "Bad code word";
        goto LABEL_9;
      }

      v18 = v8[6] | ((v8[7] & 0x3F) << 8);
      *(a1 + 76) = v8[6] | ((v8[7] & 0x3F) << 8);
      *(a1 + 80) = v8[7] >> 6;
      v19 = v8[8] | ((v8[9] & 0x3F) << 8);
      *(a1 + 78) = v8[8] | ((v8[9] & 0x3F) << 8);
      *(a1 + 81) = v8[9] >> 6;
      v17 = (v8 + 10);
      v4 = v3 - 10;
      *(a1 + 408) = (v18 + 15) >> 4;
      *(a1 + 412) = (v19 + 15) >> 4;
      *a2 = v18;
      *(a2 + 4) = v19;
      *(a2 + 116) = 0;
      *(a2 + 120) = 0;
      *(a2 + 124) = v18;
      *(a2 + 132) = v19;
      *(a2 + 140) = v18;
      *(a2 + 144) = v19;
      *(a2 + 12) = v18;
      *(a2 + 16) = v19;
      VP8ResetProba(a1 + 1192);
      *(a1 + 132) = xmmword_186205EC0;
      *(a1 + 148) = 0;
      v14 = *(a1 + 72);
    }

    if (v4 >= v14)
    {
      VP8InitBitReader(a1 + 16, v17, v14);
      v20 = *(a1 + 72);
      if (*(a1 + 68))
      {
        *(a1 + 82) = VP8GetValue(a1 + 16, 1);
        *(a1 + 83) = VP8GetValue(a1 + 16, 1);
      }

      Value = VP8GetValue(a1 + 16, 1);
      *(a1 + 132) = Value;
      if (Value)
      {
        *(a1 + 136) = VP8GetValue(a1 + 16, 1);
        if (VP8GetValue(a1 + 16, 1))
        {
          v22 = 0;
          *(a1 + 140) = VP8GetValue(a1 + 16, 1);
          do
          {
            v23 = VP8GetValue(a1 + 16, 1);
            if (v23)
            {
              LOBYTE(v23) = VP8GetSignedValue(a1 + 16, 7);
            }

            *(a1 + 144 + v22++) = v23;
          }

          while (v22 != 4);
          for (i = 0; i != 4; ++i)
          {
            v25 = VP8GetValue(a1 + 16, 1);
            if (v25)
            {
              LOBYTE(v25) = VP8GetSignedValue(a1 + 16, 6);
            }

            *(a1 + 148 + i) = v25;
          }
        }

        if (*(a1 + 136))
        {
          for (j = 0; j != 3; ++j)
          {
            if (VP8GetValue(a1 + 16, 1))
            {
              v27 = VP8GetValue(a1 + 16, 8);
            }

            else
            {
              v27 = -1;
            }

            *(a1 + 1192 + j) = v27;
          }
        }
      }

      else
      {
        *(a1 + 136) = 0;
      }

      if (*(a1 + 56))
      {
        if (!*a1)
        {
          v5 = 0;
          v15 = "cannot parse segment header";
          goto LABEL_9;
        }
      }

      else if (ParseFilterHeader(a1 + 16, a1))
      {
        v28 = ParsePartitions(a1, (v17 + v20), v4 - v20);
        if (v28)
        {
          VP8SetError(a1, v28, "cannot parse partitions");
        }

        else
        {
          VP8ParseQuant(a1);
          if (*(a1 + 68))
          {
            v5 = 1;
            VP8GetValue(a1 + 16, 1);
            VP8ParseProba(a1 + 16, a1);
            *(a1 + 4) = 1;
            return v5;
          }

          if (!*a1)
          {
            v5 = 0;
            v16 = "Not a key frame.";
            goto LABEL_12;
          }
        }
      }

      else if (!*a1)
      {
        v5 = 0;
        v15 = "cannot parse filter header";
        goto LABEL_9;
      }
    }

    else if (!*a1)
    {
      v5 = 0;
      v6 = "bad partition length";
      goto LABEL_5;
    }

    return 0;
  }

  v5 = 0;
  v6 = "Truncated header.";
LABEL_5:
  *(a1 + 8) = v6;
  v7 = 7;
LABEL_13:
  *a1 = v7;
  return v5;
}

BOOL ParseFilterHeader(uint64_t a1, _DWORD *a2)
{
  a2[21] = VP8GetValue(a1, 1);
  a2[22] = VP8GetValue(a1, 6);
  a2[23] = VP8GetValue(a1, 3);
  Value = VP8GetValue(a1, 1);
  a2[24] = Value;
  if (Value && VP8GetValue(a1, 1))
  {
    for (i = 0; i != 4; ++i)
    {
      if (VP8GetValue(a1, 1))
      {
        a2[i + 25] = VP8GetSignedValue(a1, 6);
      }
    }

    for (j = 0; j != 4; ++j)
    {
      if (VP8GetValue(a1, 1))
      {
        a2[j + 29] = VP8GetSignedValue(a1, 6);
      }
    }
  }

  v7 = a2[22];
  if (v7)
  {
    if (a2[21])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  a2[730] = v7;
  return *(a1 + 40) == 0;
}

uint64_t ParsePartitions(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  Value = VP8GetValue(a1 + 16, 2);
  v7 = ~(-1 << Value);
  *(a1 + 432) = v7;
  v8 = a3 - 3 * v7;
  if (a3 < 3 * v7)
  {
    return 7;
  }

  v10 = (a2 + a3);
  v11 = (a2 + 3 * v7);
  if (Value)
  {
    v12 = a1 + 440;
    if (v7 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = ~(-1 << Value);
    }

    do
    {
      v14 = *(a2 + 2);
      if ((*a2 | (v14 << 16)) >= v8)
      {
        v15 = v8;
      }

      else
      {
        v15 = *a2 | (v14 << 16);
      }

      VP8InitBitReader(v12, v11, v15);
      v11 = (v11 + v15);
      v8 -= v15;
      a2 = (a2 + 3);
      v12 += 48;
      --v13;
    }

    while (v13);
  }

  VP8InitBitReader(a1 + 48 * v7 + 440, v11, v8);
  if (v11 < v10)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    return 5;
  }

  return 7;
}

BOOL VP8DecodeMB(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2832);
  v5 = *(a1 + 2904);
  v6 = (v4 + 2 * v5);
  v7 = (*(a1 + 2912) + 800 * v5);
  if (*(a1 + 2800) && *(v7 + 797))
  {
    *v6 = 0;
    *(v4 - 2) = 0;
    if (!*(v7 + 768))
    {
      v6[1] = 0;
      *(v4 - 1) = 0;
    }

    v8 = 0;
    *(v7 + 796) = 0;
    *(v7 + 394) = 0;
  }

  else
  {
    v9 = a1 + 32 * *(v7 + 798) + 1060;
    bzero(v7, 0x300uLL);
    if (*(v7 + 768))
    {
      v10 = 0;
      v11 = a1 + 2664;
    }

    else
    {
      v11 = a1 + 2256;
      memset(v58, 0, sizeof(v58));
      Coeffs = GetCoeffs(a2, a1 + 2392, *(v4 - 1) + v6[1], v9 + 8, 0, v58);
      *(v4 - 1) = Coeffs > 0;
      v6[1] = Coeffs > 0;
      if (Coeffs < 2)
      {
        v13 = -16;
        v14 = (SLOWORD(v58[0]) + 3) >> 3;
        v15 = v7;
        do
        {
          *v15 = v14;
          v15 += 16;
          v13 += 16;
        }

        while (v13 < 0xF0);
      }

      else
      {
        VP8TransformWHT(v58, v7);
      }

      v10 = 1;
    }

    v53 = 0;
    v16 = 0;
    v46 = v6;
    v47 = v4;
    LOBYTE(v17) = *v6 & 0xF;
    LOBYTE(v18) = *(v4 - 2) & 0xF;
    v45 = v7;
    do
    {
      v54 = v18;
      v56 = v16;
      v19 = 0;
      v20 = v18 & 1;
      v21 = 4;
      do
      {
        v22 = v17;
        v23 = GetCoeffs(a2, v11, v20 + (v17 & 1), v9, v10, v7);
        v20 = v23 > v10;
        if (v23 <= v10)
        {
          v24 = 0;
        }

        else
        {
          v24 = -128;
        }

        v17 = (v22 >> 1) | (v20 << 7);
        v25 = *v7;
        v7 += 16;
        v26 = v25 != 0;
        if (v23 >= 2)
        {
          v26 = 2;
        }

        if (v23 > 3)
        {
          v26 = 3;
        }

        v19 = v26 | (4 * v19);
        --v21;
      }

      while (v21);
      v17 >>= 4;
      v18 = v24 | ((v54 & 0xFE) >> 1);
      v16 = v56 + 1;
      v53 = v19 | (v53 << 8);
    }

    while (v56 != 3);
    v27 = 0;
    v28 = 0;
    v29 = v18 >> 4;
    v30 = 1;
    do
    {
      v50 = v29;
      v51 = v27;
      v52 = v17;
      v31 = 0;
      v48 = v30;
      v49 = v28;
      v32 = *v46 >> (v28 | 4);
      v33 = *(v47 - 2) >> (v28 | 4);
      v34 = 1;
      do
      {
        v55 = v34;
        v57 = v33;
        v35 = v33 & 1;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = GetCoeffs(a2, a1 + 2528, (v32 & 1) + v35, v9 + 16, 0, v7);
          v36 = 0;
          v35 = v38 > 0;
          v32 = (v32 >> 1) | (8 * v35);
          v39 = *v7;
          v7 += 16;
          v40 = v39 != 0;
          if (v38 >= 2)
          {
            v40 = 2;
          }

          if (v38 > 3)
          {
            v40 = 3;
          }

          v31 = v40 | (4 * v31);
        }

        while ((v37 & 1) != 0);
        v34 = 0;
        v32 >>= 2;
        LOBYTE(v33) = (v57 >> 1) | (32 * (v38 > 0));
      }

      while ((v55 & 1) != 0);
      v30 = 0;
      v27 = (v31 << (4 * v49)) | v51;
      v17 = ((16 * v32) << v49) | v52;
      v29 = ((v33 & 0x70) << v49) | v50;
      v28 = 2;
    }

    while ((v48 & 1) != 0);
    v7 = v45;
    *v46 = v17;
    *(v47 - 2) = v29;
    *(v45 + 197) = v53;
    *(v45 + 198) = v27;
    if ((v27 & 0xAAAA) != 0)
    {
      LOBYTE(v41) = 0;
    }

    else
    {
      v41 = *(v9 + 28);
    }

    *(v45 + 796) = v41;
    v8 = (v27 | v53) != 0;
  }

  if (*(a1 + 2920) >= 1)
  {
    v42 = *(a1 + 2840) + 4 * *(a1 + 2904);
    v43 = *(a1 + 8 * *(v7 + 798) + 4 * *(v7 + 768) + 2924);
    *v42 = v43;
    *(v42 + 2) = v8 | BYTE2(v43);
  }

  return *(a2 + 40) == 0;
}

uint64_t VP8InitScanline(uint64_t result)
{
  *(*(result + 2832) - 2) = 0;
  *(result + 2816) = 0;
  *(result + 2904) = 0;
  return result;
}

uint64_t VP8Decode(uint64_t result, int *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!a2)
  {
    if (!*result)
    {
      result = 0;
      *(v3 + 8) = "NULL VP8Io parameter in VP8Decode().";
      *v3 = 2;
      return result;
    }

    return 0;
  }

  if (!*(result + 4))
  {
    result = VP8GetHeaders(result, a2);
    if (!result)
    {
      return result;
    }

    if (!*(v3 + 4))
    {
      VP8Decode_cold_1();
    }
  }

  if (VP8EnterCritical(v3, a2))
  {
    goto LABEL_7;
  }

  if (!VP8InitFrame(v3, a2))
  {
    goto LABEL_26;
  }

  *(v3 + 2908) = 0;
  if (*(v3 + 428) < 1)
  {
LABEL_21:
    if (*(v3 + 200) >= 1)
    {
      v8 = WebPGetWorkerInterface();
      if (!(v8[2])(v3 + 152))
      {
        goto LABEL_26;
      }
    }

    v9 = 1;
    goto LABEL_27;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v3 + 432);
    if (!VP8ParseIntraModeRow(v3 + 16, v3))
    {
      if (*v3)
      {
        goto LABEL_26;
      }

      v9 = 0;
      v10 = "Premature end-of-partition0 encountered.";
      goto LABEL_30;
    }

    if (*(v3 + 2904) < *(v3 + 408))
    {
      v6 = v3 + 440 + 48 * (v5 & v4);
      while (VP8DecodeMB(v3, v6))
      {
        v7 = *(v3 + 2904) + 1;
        *(v3 + 2904) = v7;
        if (v7 >= *(v3 + 408))
        {
          goto LABEL_19;
        }
      }

      if (*v3)
      {
        goto LABEL_26;
      }

      v9 = 0;
      v10 = "Premature end-of-file encountered.";
LABEL_30:
      *(v3 + 8) = v10;
      v11 = 7;
LABEL_31:
      *v3 = v11;
      goto LABEL_27;
    }

LABEL_19:
    *(*(v3 + 2832) - 2) = 0;
    *(v3 + 2816) = 0;
    *(v3 + 2904) = 0;
    if (!VP8ProcessRow(v3, a2))
    {
      break;
    }

    v4 = *(v3 + 2908) + 1;
    *(v3 + 2908) = v4;
    if (v4 >= *(v3 + 428))
    {
      goto LABEL_21;
    }
  }

  if (!*v3)
  {
    v9 = 0;
    *(v3 + 8) = "Output aborted.";
    v11 = 6;
    goto LABEL_31;
  }

LABEL_26:
  v9 = 0;
LABEL_27:
  if ((VP8ExitCritical(v3, a2) & v9) != 0)
  {
    *(v3 + 4) = 0;
    return 1;
  }

LABEL_7:
  VP8Clear(v3);
  return 0;
}

uint64_t GetCoeffsAlt(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 > 15)
  {
    return 16;
  }

  v6 = a5;
  v8 = (*(a2 + 8 * a5) + 11 * a3);
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  v11 = a2 + 8;
  while (1)
  {
    v12 = *v8;
    if (v9 < 0)
    {
      v13 = *(a1 + 16);
      if (!v13)
      {
        VP8GetValue_cold_1();
      }

      if (v13 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v9 = *(a1 + 12);
      }

      else
      {
        v14 = *v13;
        *(a1 + 16) = v13 + 7;
        *(&v15 + 1) = *a1;
        *&v15 = bswap64(v14);
        *a1 = v15 >> 8;
        v9 += 56;
        *(a1 + 12) = v9;
      }
    }

    v16 = (v10 * v12) >> 8;
    v17 = *a1;
    v18 = *a1 >> v9;
    if (v16 >= v18)
    {
      v20 = (v10 * v12) >> 8;
    }

    else
    {
      v19 = v16 + 1;
      v20 = v10 - v19;
      v17 -= v19 << v9;
      *a1 = v17;
    }

    if (v20 <= 0x7E)
    {
      v21 = kVP8Log2Range[v20];
      v20 = kVP8NewRange[v20];
      v9 -= v21;
      *(a1 + 12) = v9;
    }

    *(a1 + 8) = v20;
    if (v16 >= v18)
    {
      return v6;
    }

    v22 = v6;
    v23 = v6 << 32;
    v6 = (v6 + 1);
    while (1)
    {
      v24 = v8[1];
      if (v9 < 0)
      {
        v25 = *(a1 + 16);
        if (!v25)
        {
          VP8GetValue_cold_1();
        }

        if (v25 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v9 = *(a1 + 12);
          v17 = *a1;
        }

        else
        {
          v26 = *v25;
          *(a1 + 16) = v25 + 7;
          *(&v27 + 1) = v17;
          *&v27 = bswap64(v26);
          v17 = v27 >> 8;
          *a1 = v17;
          v9 += 56;
          *(a1 + 12) = v9;
        }
      }

      v28 = (v20 * v24) >> 8;
      v29 = v17 >> v9;
      if (v28 >= (v17 >> v9))
      {
        v20 = (v20 * v24) >> 8;
      }

      else
      {
        v30 = v28 + 1;
        v20 -= v30;
        v17 -= v30 << v9;
        *a1 = v17;
      }

      if (v20 <= 0x7E)
      {
        v31 = kVP8Log2Range[v20];
        v20 = kVP8NewRange[v20];
        v9 -= v31;
        *(a1 + 12) = v9;
      }

      *(a1 + 8) = v20;
      if (v28 < v29)
      {
        break;
      }

      v8 = *(v11 + 8 * v22);
      v23 += 0x100000000;
      v6 = (v6 + 1);
      if (++v22 == 16)
      {
        return 16;
      }
    }

    v32 = *(a2 + 8 * v6);
    v33 = v8[2];
    v34 = *(a1 + 12);
    if (v34 < 0)
    {
      v35 = *(a1 + 16);
      if (!v35)
      {
        VP8GetValue_cold_1();
      }

      if (v35 >= *(a1 + 32))
      {
        v54 = *(a2 + 8 * v6);
        VP8LoadFinalBytes(a1);
        v32 = v54;
        v34 = *(a1 + 12);
        v17 = *a1;
      }

      else
      {
        v36 = *v35;
        *(a1 + 16) = v35 + 7;
        *(&v37 + 1) = v17;
        *&v37 = bswap64(v36);
        v17 = v37 >> 8;
        *a1 = v17;
        v34 += 56;
        *(a1 + 12) = v34;
      }
    }

    v38 = (v20 * v33) >> 8;
    v39 = v17 >> v34;
    v40 = v38;
    if (v38 < (v17 >> v34))
    {
      v41 = v38 + 1;
      v40 = v20 - v41;
      *a1 = v17 - (v41 << v34);
    }

    if (v40 <= 0x7E)
    {
      v42 = kVP8Log2Range[v40];
      v40 = kVP8NewRange[v40];
      v34 -= v42;
      *(a1 + 12) = v34;
    }

    *(a1 + 8) = v40;
    if (v38 >= v39)
    {
      v8 = (v32 + 11);
      LargeValue = 1;
      if (v34 < 0)
      {
LABEL_41:
        v46 = *(a1 + 16);
        if (!v46)
        {
          VP8GetValue_cold_1();
        }

        if (v46 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v34 = *(a1 + 12);
        }

        else
        {
          v47 = *v46;
          *(a1 + 16) = v46 + 7;
          *(&v48 + 1) = *a1;
          *&v48 = bswap64(v47);
          *a1 = v48 >> 8;
          v34 += 56;
        }
      }
    }

    else
    {
      v43 = v8;
      v44 = v32;
      LargeValue = GetLargeValue(a1, v43);
      v8 = (v44 + 22);
      v34 = *(a1 + 12);
      if (v34 < 0)
      {
        goto LABEL_41;
      }
    }

    v49 = v34;
    v50 = *(a1 + 8);
    v51 = *a1;
    v52 = (v50 >> 1) - (*a1 >> v34);
    v9 = v34 - 1;
    v10 = (v50 + (v52 >> 31)) | 1;
    *(a1 + 8) = v10;
    *(a1 + 12) = v9;
    *a1 = v51 - ((((v50 >> 1) + 1) & (v52 >> 31)) << v49);
    *(a6 + 2 * kZigzag[v23 >> 32]) = ((LargeValue ^ (v52 >> 31)) - (v52 >> 31)) * *(a4 + 4 * (v22 > 0));
    result = 16;
    if (v22 >= 15)
    {
      return result;
    }
  }
}

uint64_t GetCoeffsFast(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 > 15)
  {
    return 16;
  }

  v7 = a5;
  v9 = (*(a2 + 8 * a5) + 11 * a3);
  v11 = *(a1 + 8);
  v10 = *(a1 + 12);
  v12 = a2 + 8;
  while (1)
  {
    v13 = *v9;
    if (v10 < 0)
    {
      v14 = *(a1 + 16);
      if (!v14)
      {
        VP8GetValue_cold_1();
      }

      if (v14 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v10 = *(a1 + 12);
      }

      else
      {
        v15 = *v14;
        *(a1 + 16) = v14 + 7;
        *(&v16 + 1) = *a1;
        *&v16 = bswap64(v15);
        *a1 = v16 >> 8;
        v10 += 56;
      }
    }

    v17 = (v11 * v13) >> 8;
    v18 = *a1;
    v19 = v10;
    v20 = *a1 >> v10;
    if (v17 >= v20)
    {
      v21 = v17 + 1;
    }

    else
    {
      v21 = v11 - v17;
      v18 -= (v17 + 1) << v19;
      *a1 = v18;
    }

    v22 = __clz(v21) ^ 0x18;
    v23 = v21 << v22;
    v24 = v19 - v22;
    v25 = v23 - 1;
    *(a1 + 8) = v23 - 1;
    *(a1 + 12) = v19 - v22;
    if (v17 >= v20)
    {
      return v7;
    }

    v26 = v7;
    v27 = v7 << 32;
    v7 = (v7 + 1);
    while (1)
    {
      v28 = v9[1];
      if (v24 < 0)
      {
        v29 = *(a1 + 16);
        if (!v29)
        {
          VP8GetValue_cold_1();
        }

        if (v29 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v24 = *(a1 + 12);
          v18 = *a1;
        }

        else
        {
          v30 = *v29;
          *(a1 + 16) = v29 + 7;
          *(&v31 + 1) = v18;
          *&v31 = bswap64(v30);
          v18 = v31 >> 8;
          *a1 = v18;
          v24 += 56;
        }
      }

      v32 = (v25 * v28) >> 8;
      v33 = v24;
      v34 = v18 >> v24;
      if (v32 >= (v18 >> v24))
      {
        v35 = v32 + 1;
      }

      else
      {
        v35 = v25 - v32;
        v18 -= (v32 + 1) << v33;
        *a1 = v18;
      }

      v36 = __clz(v35) ^ 0x18;
      v37 = v35 << v36;
      v24 = v33 - v36;
      v25 = v37 - 1;
      *(a1 + 8) = v37 - 1;
      *(a1 + 12) = v33 - v36;
      if (v32 < v34)
      {
        break;
      }

      v9 = *(v12 + 8 * v26);
      v27 += 0x100000000;
      v7 = (v7 + 1);
      if (++v26 == 16)
      {
        return 16;
      }
    }

    v38 = a6;
    v39 = *(a2 + 8 * v7);
    v40 = v9[2];
    if (v24 < 0)
    {
      v41 = *(a1 + 16);
      if (!v41)
      {
        VP8GetValue_cold_1();
      }

      if (v41 >= *(a1 + 32))
      {
        v61 = *(a2 + 8 * v7);
        VP8LoadFinalBytes(a1);
        v39 = v61;
        v24 = *(a1 + 12);
        v18 = *a1;
      }

      else
      {
        v42 = *v41;
        *(a1 + 16) = v41 + 7;
        *(&v43 + 1) = v18;
        *&v43 = bswap64(v42);
        v18 = v43 >> 8;
        *a1 = v18;
        v24 += 56;
      }
    }

    v44 = v24;
    v45 = (v25 * v40) >> 8;
    v46 = v44;
    v47 = v18 >> v44;
    if (v45 >= v47)
    {
      v48 = v45 + 1;
    }

    else
    {
      v48 = v25 - v45;
      *a1 = v18 - ((v45 + 1) << v46);
    }

    a6 = v38;
    v49 = __clz(v48) ^ 0x18;
    v50 = v48 << v49;
    v51 = v46 - v49;
    *(a1 + 8) = v50 - 1;
    *(a1 + 12) = v51;
    if (v45 >= v47)
    {
      v9 = (v39 + 11);
      LargeValue = 1;
      if (v51 < 0)
      {
LABEL_36:
        v54 = *(a1 + 16);
        if (!v54)
        {
          VP8GetValue_cold_1();
        }

        if (v54 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v51 = *(a1 + 12);
        }

        else
        {
          v55 = *v54;
          *(a1 + 16) = v54 + 7;
          *(&v56 + 1) = *a1;
          *&v56 = bswap64(v55);
          *a1 = v56 >> 8;
          v51 += 56;
        }
      }
    }

    else
    {
      v52 = v39;
      LargeValue = GetLargeValue(a1, v9);
      v9 = (v52 + 22);
      v51 = *(a1 + 12);
      if (v51 < 0)
      {
        goto LABEL_36;
      }
    }

    v57 = *(a1 + 8);
    v58 = *a1;
    v59 = (v57 >> 1) - (*a1 >> v51);
    v10 = v51 - 1;
    v11 = (v57 + (v59 >> 31)) | 1;
    *(a1 + 8) = v11;
    *(a1 + 12) = v51 - 1;
    *a1 = v58 - ((((v57 >> 1) + 1) & (v59 >> 31)) << v51);
    *(a6 + 2 * kZigzag[v27 >> 32]) = ((LargeValue ^ (v59 >> 31)) - (v59 >> 31)) * *(a4 + 4 * (v26 > 0));
    result = 16;
    if (v26 >= 15)
    {
      return result;
    }
  }
}

uint64_t GetLargeValue(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a2[3];
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v5 < 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      VP8GetValue_cold_1();
    }

    if (v7 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v5 = *(a1 + 12);
    }

    else
    {
      v8 = *v7;
      *(a1 + 16) = v7 + 7;
      *(&v9 + 1) = *a1;
      *&v9 = bswap64(v8);
      *a1 = v9 >> 8;
      v5 += 56;
    }
  }

  v10 = (v6 * v4) >> 8;
  v11 = *a1;
  v12 = v5;
  v13 = *a1 >> v5;
  if (v10 >= v13)
  {
    v14 = v10 + 1;
  }

  else
  {
    v14 = v6 - v10;
    v11 -= (v10 + 1) << v12;
    *a1 = v11;
  }

  v15 = __clz(v14) ^ 0x18;
  v16 = v14 << v15;
  v17 = v12 - v15;
  v18 = v16 - 1;
  *(a1 + 8) = v16 - 1;
  *(a1 + 12) = v12 - v15;
  if (v10 >= v13)
  {
    v23 = a2[4];
    if (v17 < 0)
    {
      v24 = *(a1 + 16);
      if (!v24)
      {
        VP8GetValue_cold_1();
      }

      if (v24 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v17 = *(a1 + 12);
        v11 = *a1;
      }

      else
      {
        v25 = *v24;
        *(a1 + 16) = v24 + 7;
        *(&v26 + 1) = v11;
        *&v26 = bswap64(v25);
        v11 = v26 >> 8;
        *a1 = v11;
        v17 += 56;
      }
    }

    v41 = (v18 * v23) >> 8;
    v42 = v17;
    v43 = v11 >> v17;
    if (v41 >= (v11 >> v17))
    {
      v44 = v41 + 1;
    }

    else
    {
      v44 = v18 - v41;
      v11 -= (v41 + 1) << v42;
      *a1 = v11;
    }

    v45 = __clz(v44) ^ 0x18;
    v46 = v44 << v45;
    v47 = v42 - v45;
    v48 = v46 - 1;
    *(a1 + 8) = v46 - 1;
    *(a1 + 12) = v42 - v45;
    if (v41 >= v43)
    {
      return 2;
    }

    v49 = a2[5];
    if (v47 < 0)
    {
      v50 = *(a1 + 16);
      if (!v50)
      {
        VP8GetValue_cold_1();
      }

      if (v50 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v47 = *(a1 + 12);
        v11 = *a1;
      }

      else
      {
        v51 = *v50;
        *(a1 + 16) = v50 + 7;
        *(&v52 + 1) = v11;
        *&v52 = bswap64(v51);
        v11 = v52 >> 8;
        *a1 = v11;
        v47 += 56;
      }
    }

    v79 = (v48 * v49) >> 8;
    v80 = v47;
    if (v79 >= (v11 >> v47))
    {
      v81 = v79 + 1;
      result = 3;
    }

    else
    {
      v81 = v48 - v79;
      *a1 = v11 - ((v79 + 1) << v80);
      result = 4;
    }

    goto LABEL_99;
  }

  v19 = a2[6];
  if (v17 < 0)
  {
    v20 = *(a1 + 16);
    if (!v20)
    {
      VP8GetValue_cold_1();
    }

    if (v20 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v17 = *(a1 + 12);
      v11 = *a1;
    }

    else
    {
      v21 = *v20;
      *(a1 + 16) = v20 + 7;
      *(&v22 + 1) = v11;
      *&v22 = bswap64(v21);
      v11 = v22 >> 8;
      *a1 = v11;
      v17 += 56;
    }
  }

  v27 = (v18 * v19) >> 8;
  v28 = v11 >> v17;
  if (v27 >= (v11 >> v17))
  {
    v29 = v27 + 1;
  }

  else
  {
    v29 = v18 - v27;
    v11 -= (v27 + 1) << v17;
    *a1 = v11;
  }

  v30 = __clz(v29) ^ 0x18;
  v31 = v17 - v30;
  v32 = (v29 << v30) - 1;
  *(a1 + 8) = v32;
  *(a1 + 12) = v31;
  if (v27 < v28)
  {
    v33 = a2[8];
    if (v31 < 0)
    {
      v34 = *(a1 + 16);
      if (!v34)
      {
        VP8GetValue_cold_1();
      }

      if (v34 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v31 = *(a1 + 12);
        v11 = *a1;
      }

      else
      {
        v35 = *v34;
        *(a1 + 16) = v34 + 7;
        *(&v36 + 1) = v11;
        *&v36 = bswap64(v35);
        v11 = v36 >> 8;
        *a1 = v11;
        v31 += 56;
      }
    }

    v54 = (v32 * v33) >> 8;
    v55 = v11 >> v31;
    if (v54 >= (v11 >> v31))
    {
      v56 = v54 + 1;
    }

    else
    {
      v56 = v32 - v54;
      v11 -= (v54 + 1) << v31;
      *a1 = v11;
    }

    v57 = __clz(v56) ^ 0x18;
    v58 = v31 - v57;
    v59 = (v56 << v57) - 1;
    *(a1 + 8) = v59;
    *(a1 + 12) = v58;
    if (v54 >= v55)
    {
      v60 = a2;
    }

    else
    {
      v60 = a2 + 1;
    }

    v61 = v60[9];
    if (v58 < 0)
    {
      v62 = *(a1 + 16);
      if (!v62)
      {
        VP8GetValue_cold_1();
      }

      if (v62 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v58 = *(a1 + 12);
        v11 = *a1;
      }

      else
      {
        v63 = *v62;
        *(a1 + 16) = v62 + 7;
        *(&v64 + 1) = v11;
        *&v64 = bswap64(v63);
        v11 = v64 >> 8;
        *a1 = v11;
        v58 += 56;
      }
    }

    v82 = (v59 * v61) >> 8;
    v83 = v58;
    v84 = v11 >> v58;
    if (v82 >= v84)
    {
      v85 = v82 + 1;
    }

    else
    {
      v85 = v59 - v82;
      v11 -= (v82 + 1) << v83;
      *a1 = v11;
    }

    v86 = v82 < v84;
    v87 = v54 < v55;
    v88 = __clz(v85) ^ 0x18;
    v89 = v85 << v88;
    v90 = v83 - v88;
    v91 = v89 - 1;
    *(a1 + 8) = v89 - 1;
    *(a1 + 12) = v90;
    v92 = v86 | (2 * v87);
    v93 = *(&kCat3456 + v92);
    v94 = *v93;
    if (*v93)
    {
      v95 = 0;
      v96 = v93 + 1;
      do
      {
        if (v90 < 0)
        {
          v97 = *(a1 + 16);
          if (!v97)
          {
            VP8GetValue_cold_1();
          }

          if (v97 >= *(a1 + 32))
          {
            VP8LoadFinalBytes(a1);
            v90 = *(a1 + 12);
            v11 = *a1;
          }

          else
          {
            v98 = *v97;
            *(a1 + 16) = v97 + 7;
            *(&v99 + 1) = v11;
            *&v99 = bswap64(v98);
            v11 = v99 >> 8;
            *a1 = v11;
            v90 += 56;
          }
        }

        v100 = (v91 * v94) >> 8;
        v101 = v90;
        v102 = v11 >> v90;
        if (v100 >= v102)
        {
          v103 = v100 + 1;
        }

        else
        {
          v103 = v91 - v100;
          v11 -= (v100 + 1) << v101;
          *a1 = v11;
        }

        v104 = v100 < v102;
        v105 = __clz(v103) ^ 0x18;
        v106 = v103 << v105;
        v90 = v101 - v105;
        v91 = v106 - 1;
        *(a1 + 8) = v106 - 1;
        *(a1 + 12) = v90;
        v95 = v104 | (2 * v95);
        v107 = *v96++;
        v94 = v107;
      }

      while (v107);
    }

    else
    {
      v95 = 0;
    }

    return (v95 + (8 << v92) + 3);
  }

  v37 = a2[7];
  if (v31 < 0)
  {
    v38 = *(a1 + 16);
    if (!v38)
    {
      VP8GetValue_cold_1();
    }

    if (v38 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v31 = *(a1 + 12);
      v11 = *a1;
    }

    else
    {
      v39 = *v38;
      *(a1 + 16) = v38 + 7;
      *(&v40 + 1) = v11;
      *&v40 = bswap64(v39);
      v11 = v40 >> 8;
      *a1 = v11;
      v31 += 56;
    }
  }

  v65 = (v32 * v37) >> 8;
  v66 = v31;
  v67 = v11 >> v31;
  if (v65 >= (v11 >> v31))
  {
    v68 = v65 + 1;
  }

  else
  {
    v68 = v32 - v65;
    v11 -= (v65 + 1) << v66;
    *a1 = v11;
  }

  v69 = __clz(v68) ^ 0x18;
  v70 = v68 << v69;
  v71 = v66 - v69;
  v72 = v70 - 1;
  *(a1 + 8) = v70 - 1;
  *(a1 + 12) = v66 - v69;
  if (v65 >= v67)
  {
    if (v71 < 0)
    {
      v76 = *(a1 + 16);
      if (!v76)
      {
        VP8GetValue_cold_1();
      }

      if (v76 >= *(a1 + 32))
      {
        VP8LoadFinalBytes(a1);
        v71 = *(a1 + 12);
        v11 = *a1;
      }

      else
      {
        v77 = *v76;
        *(a1 + 16) = v76 + 7;
        *(&v78 + 1) = v11;
        *&v78 = bswap64(v77);
        v11 = v78 >> 8;
        *a1 = v11;
        v71 += 56;
      }
    }

    v117 = (159 * v72) >> 8;
    v80 = v71;
    if (v117 >= (v11 >> v71))
    {
      v81 = v117 + 1;
      result = 5;
    }

    else
    {
      v81 = v72 - v117;
      *a1 = v11 - ((v117 + 1) << v80);
      result = 6;
    }

LABEL_99:
    v118 = __clz(v81) ^ 0x18;
    *(a1 + 8) = (v81 << v118) - 1;
    *(a1 + 12) = v80 - v118;
    return result;
  }

  if (v71 < 0)
  {
    v73 = *(a1 + 16);
    if (!v73)
    {
      VP8GetValue_cold_1();
    }

    if (v73 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v71 = *(a1 + 12);
      v11 = *a1;
    }

    else
    {
      v74 = *v73;
      *(a1 + 16) = v73 + 7;
      *(&v75 + 1) = v11;
      *&v75 = bswap64(v74);
      v11 = v75 >> 8;
      *a1 = v11;
      v71 += 56;
    }
  }

  v108 = (165 * v72) >> 8;
  if (v108 >= (v11 >> v71))
  {
    v109 = v108 + 1;
    v110 = 7;
  }

  else
  {
    v109 = v72 - v108;
    v11 -= (v108 + 1) << v71;
    *a1 = v11;
    v110 = 9;
  }

  v111 = __clz(v109) ^ 0x18;
  v112 = v71 - v111;
  v113 = (v109 << v111) - 1;
  *(a1 + 8) = v113;
  *(a1 + 12) = v112;
  if (v112 < 0)
  {
    v114 = *(a1 + 16);
    if (!v114)
    {
      VP8GetValue_cold_1();
    }

    if (v114 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v112 = *(a1 + 12);
      v11 = *a1;
    }

    else
    {
      v115 = *v114;
      *(a1 + 16) = v114 + 7;
      *(&v116 + 1) = v11;
      *&v116 = bswap64(v115);
      v11 = v116 >> 8;
      *a1 = v11;
      v112 += 56;
    }
  }

  v119 = (145 * v113) >> 8;
  v120 = v112;
  v121 = v11 >> v112;
  if (v119 >= v121)
  {
    v122 = v119 + 1;
  }

  else
  {
    v122 = v113 - v119;
    *a1 = v11 - ((v119 + 1) << v120);
  }

  v123 = __clz(v122) ^ 0x18;
  *(a1 + 8) = (v122 << v123) - 1;
  *(a1 + 12) = v120 - v123;
  if (v119 >= v121)
  {
    return v110;
  }

  else
  {
    return v110 + 1;
  }
}

float *compute_ideal_colors_and_weights_1plane(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 3488);
  v12 = *(a1 + 3520);
  {
    v61 = v12;
    v62 = v11;
    compute_ideal_colors_and_weights_1plane();
    v12 = v61;
    v11 = v62;
  }

  v13 = vmovn_s32(vceqq_f32(v11, v12));
  v14 = 0;
  v14.i16[3] = v13.i16[3];
  v15 = vmovl_u16(v14);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vandq_s8(v15, v16);
  v18 = *&mask(vmask4)::shift;
  v19 = vshlq_u32(v17, mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  if (v19.i32[0])
  {

    return compute_ideal_colors_and_weights_3_comp(a1, a2, a3, 3, *v19.i64, v18, a6, a7, a8);
  }

  else
  {
    v21 = *(a1 + 3456);
    if (!*(a1 + 3456))
    {
      compute_ideal_colors_and_weights_1plane();
    }

    v22 = *a2;
    if (!*a2)
    {
      compute_ideal_colors_and_weights_1plane();
    }

    v23 = vadd_f32(*&vextq_s8(*(a1 + 3536), *(a1 + 3536), 8uLL), *(a1 + 3536));
    v24 = 0.25 * vpadd_f32(v23, v23).f32[0];
    memset(v63, 0, sizeof(v63));
    v29 = compute_avgs_and_dirs_4_comp(a2, a1, v63);
    v26 = 0;
    v27 = a2 + 2;
    v28 = a2 + 112;
    v29.i64[0] = 0;
    v30 = a3 + 160;
    result = (a3 + 1024);
    v31 = 0.0;
    v32 = 1;
    do
    {
      v33 = &v63[2 * v26];
      v34 = v33[1];
      v25.f32[0] = COERCE_FLOAT(v33[1].i64[1]) + vaddv_f32(*v34.f32);
      v35 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v29, v25), 0), vsubq_f32(0, v34), v34);
      v36 = vmulq_f32(v35, v35);
      *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
      v37 = vpadd_f32(*v36.i8, *v36.i8);
      if (*v37.i32 == 0.0)
      {
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
      }

      else
      {
        v38 = vdivq_f32(v35, vsqrtq_f32(vdupq_lane_s32(v37, 0)));
      }

      v25 = *v33;
      v39 = *(v27 + v26);
      v40 = -1.0e10;
      v41 = 1.0e10;
      if (*(v27 + v26))
      {
        v42 = v28;
        v43 = *(v27 + v26);
        v41 = 1.0e10;
        v40 = -1.0e10;
        do
        {
          v44 = *v42;
          v42 = (v42 + 1);
          v45.i32[0] = *(a1 + 4 * v44);
          v45.i32[1] = *(a1 + 864 + 4 * v44);
          v45.i32[2] = *(a1 + 1728 + 4 * v44);
          v45.i32[3] = *(a1 + 2592 + 4 * v44);
          v46 = vmulq_f32(v38, vsubq_f32(v45, v25));
          *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
          v47 = vpadd_f32(*v46.i8, *v46.i8).f32[0];
          *&v30[4 * v44] = v47;
          if (v47 < v41)
          {
            v41 = v47;
          }

          if (v47 > v40)
          {
            v40 = v47;
          }

          --v43;
        }

        while (v43);
      }

      if (v40 <= v41)
      {
        v48 = 0.0000001;
      }

      else
      {
        v48 = v40;
      }

      if (v40 <= v41)
      {
        v41 = 0.0;
      }

      v49 = v48 - v41;
      if (v26)
      {
        v32 &= (v49 * v49) == v31;
      }

      else
      {
        v31 = v49 * v49;
      }

      *&a3[16 * v26 + 32] = vaddq_f32(v25, vmulq_n_f32(v38, v41));
      *&a3[16 * v26 + 96] = vaddq_f32(v25, vmulq_n_f32(v38, v48));
      if (v39)
      {
        v50 = 0;
        v51 = v24 * (v49 * v49);
        v52 = 1.0 / v49;
        do
        {
          v53 = *(v28 + v50);
          v54 = v52 * (*&v30[4 * v53] - v41);
          v55 = fmaxf(v54, 0.0);
          if (v54 <= 1.0)
          {
            v56 = v55;
          }

          else
          {
            v56 = 1.0;
          }

          *&v30[4 * v53] = v56;
          result[v53] = v51;
          ++v50;
        }

        while (v39 != v50);
      }

      ++v26;
      v28 += 108;
    }

    while (v26 != v22);
    v57 = (v21 + 3) & 0x1FC;
    if (v57 > v21)
    {
      v58 = v21 - v57;
      v59 = &a3[4 * v21];
      do
      {
        *(v59 + 40) = 0;
        *(v59 + 256) = 0;
        v59 += 4;
      }

      while (!__CFADD__(v58++, 1));
    }

    *a3 = v32 & 1;
  }

  return result;
}

void *compute_ideal_colors_and_weights_3_comp(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v69 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  *(a3 + 16) = v9;
  if (!v9)
  {
    compute_ideal_colors_and_weights_3_comp();
  }

  v11 = *(a1 + 3456);
  if (!*(a1 + 3456))
  {
    compute_ideal_colors_and_weights_3_comp();
  }

  v15.i64[0] = 0;
  v15.i32[3] = 0;
  memset(v68, 0, sizeof(v68));
  v16 = *(a1 + 3536);
  if (a4 == 2)
  {
    v15.i32[2] = HIDWORD(*(a1 + 3536));
    v19 = vadd_f32(*&v16, *&vextq_s8(v15, v15, 8uLL));
    v19.i32[0] = vpadd_f32(v19, v19).u32[0];
    v21 = 864;
    goto LABEL_9;
  }

  v17 = *(a1 + 3536);
  if (a4 == 1)
  {
    v17.i32[1] = *(a1 + 3544);
    v17.i64[1] = HIDWORD(v16);
    v19 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.i8);
    v19.i32[0] = vpadd_f32(v19, v19).u32[0];
    v21 = 1728;
LABEL_9:
    v20 = a1;
    goto LABEL_10;
  }

  v17.i32[3] = 0;
  v17.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
  v18 = vadd_f32(*&v16, *v17.i8);
  v19 = vpadd_f32(v18, v18);
  if (!a4)
  {
    v20 = a1 + 864;
    v21 = 1728;
LABEL_10:
    v22 = a1 + v21;
    v23 = v19.f32[0] * 0.33333;
    v24 = 2592;
    goto LABEL_11;
  }

  v22 = a1 + 864;
  v17.i32[0] = 1051372203;
  v23 = 0.33333 * v19.f32[0];
  if (a4 == 3)
  {
    v25 = compute_avgs_and_dirs_3_comp_rgb(a2, a1, v68, *&v19, *v17.i64, a7, a8, a9);
    v24 = 1728;
    v20 = a1;
    goto LABEL_12;
  }

  v24 = 1728;
  v20 = a1;
LABEL_11:
  v25 = compute_avgs_and_dirs_3_comp(a2, a1, a4, v68);
LABEL_12:
  v28 = 0;
  v29 = a2 + 2;
  v30 = a2 + 112;
  v31 = a3 + 160;
  v25.i64[0] = 0;
  v32 = a3 + 32;
  result = &unk_18622B000;
  v34 = 1;
  v35 = 0.0;
  do
  {
    v36 = &v68[2 * v28];
    v37 = v36[1];
    v26.f32[0] = COERCE_FLOAT(v36[1].i64[1]) + vaddv_f32(*v37.f32);
    v38 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v26), 0), vsubq_f32(0, v37), v37);
    v39 = vmulq_f32(v38, v38);
    *v39.i8 = vadd_f32(*&vextq_s8(v39, v39, 8uLL), *v39.i8);
    v40 = vpadd_f32(*v39.i8, *v39.i8);
    v41 = xmmword_18622B5B0;
    if (*v40.i32 != 0.0)
    {
      v41 = vdivq_f32(v38, vsqrtq_f32(vdupq_lane_s32(v40, 0)));
    }

    v42 = *v36;
    v43 = *(v29 + v28);
    v44 = -1.0e10;
    v45 = 1.0e10;
    if (*(v29 + v28))
    {
      v44 = -1.0e10;
      v45 = 1.0e10;
      v46 = *(v29 + v28);
      v47 = v30;
      do
      {
        v48 = *v47;
        v47 = (v47 + 1);
        v27.i32[0] = *(v20 + 4 * v48);
        v27.i32[1] = *(v22 + 4 * v48);
        v27.i32[2] = *(a1 + v24 + 4 * v48);
        v27 = vmulq_f32(v41, vsubq_f32(v27, v42));
        v49 = vaddv_f32(*v27.f32);
        *(v31 + 4 * v48) = v27.f32[2] + v49;
        if ((v27.f32[2] + v49) < v45)
        {
          v45 = v27.f32[2] + v49;
        }

        if ((v27.f32[2] + v49) > v44)
        {
          v44 = v27.f32[2] + v49;
        }

        --v46;
      }

      while (v46);
    }

    if (v44 <= v45)
    {
      v44 = 0.0000001;
      v45 = 0.0;
    }

    v50 = v44 - v45;
    if (v28)
    {
      v34 &= (v50 * v50) == v35;
    }

    else
    {
      v35 = v50 * v50;
    }

    if (v43)
    {
      v51 = 0;
      v52 = v23 * (v50 * v50);
      v53 = 1.0 / v50;
      do
      {
        v54 = *(v30 + v51);
        v55 = v53 * (*(v31 + 4 * v54) - v45);
        v56 = fmaxf(v55, 0.0);
        if (v55 <= 1.0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 1.0;
        }

        *(v31 + 4 * v54) = v57;
        *(a3 + 1024 + 4 * v54) = v52;
        ++v51;
      }

      while (v43 != v51);
    }

    v58 = vaddq_f32(v42, vmulq_n_f32(v41, v45));
    v59 = vaddq_f32(v42, vmulq_n_f32(v41, v44));
    v60 = *(a1 + 3488);
    v61 = *(a1 + 3520);
    if (a4)
    {
      if (a4 == 1)
      {
        v63 = vzip1q_s32(v60, v58);
        *(v32 + 16 * v28) = vtrn2q_s32(v63, vuzp1q_s32(v63, v58));
        v64 = vzip1q_s32(v61, v59);
        v26 = vtrn2q_s32(v64, vuzp1q_s32(v64, v59));
      }

      else if (a4 == 2)
      {
        v62 = vtrn1q_s32(v60, v58);
        v62.i64[0] = v58.i64[0];
        *(v32 + 16 * v28) = v62;
        v26 = vtrn1q_s32(v61, v59);
        v26.i64[0] = v59.i64[0];
      }

      else
      {
        v58.i32[3] = HIDWORD(*(a1 + 3488));
        *(v32 + 16 * v28) = v58;
        v59.i32[3] = v61.i32[3];
        v26 = v59;
      }
    }

    else
    {
      *(v32 + 16 * v28) = vextq_s8(vextq_s8(v60, v60, 4uLL), v58, 0xCuLL);
      v26 = vextq_s8(vextq_s8(v61, v61, 4uLL), v59, 0xCuLL);
    }

    *(a3 + 96 + 16 * v28++) = v26;
    v30 += 108;
  }

  while (v28 != v9);
  if (((v11 + 3) & 0x1FCu) > v11)
  {
    v65 = a3 + 4 * v11;
    v66 = v11 - ((v11 + 3) & 0x1FC);
    do
    {
      *(v65 + 160) = 0;
      *(v65 + 1024) = 0;
      v65 += 4;
    }

    while (!__CFADD__(v66++, 1));
  }

  *a3 = v34 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_2planes(block_size_descriptor *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  partition_info = block_size_descriptor::get_partition_info(a1, 1u, 0);
  v13 = *(a2 + 3488);
  v14 = *(a2 + 3520);
  {
    v26 = v14;
    v27 = v13;
    compute_ideal_colors_and_weights_1plane();
    v14 = v26;
    v13 = v27;
  }

  if (a3 >= 4)
  {
    compute_ideal_colors_and_weights_2planes();
  }

  v15 = vmovn_s32(vceqq_f32(v13, v14));
  v16 = 0;
  v16.i16[3] = v15.i16[3];
  v17 = vmovl_u16(v16);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vshlq_u32(vandq_s8(v17, v18), mask(vmask4)::shift);
  v19.i32[0] = vaddvq_s32(v19);
  switch(a3)
  {
    case 2u:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 0, 1u, *v19.i64, mask(vmask4)::shift, v10, v11);
        v20 = 2;
        goto LABEL_20;
      }

      v20 = 2;
      v21 = a2;
      v22 = partition_info;
      v23 = a4;
      v24 = 2;
      break;
    case 1u:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 0, 2u, *v19.i64, mask(vmask4)::shift, v10, v11);
        v20 = 1;
        goto LABEL_20;
      }

      v20 = 1;
      v21 = a2;
      v22 = partition_info;
      v23 = a4;
      v24 = 1;
      break;
    case 0u:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2_comp(a2, partition_info, a4, 1u, 2u, *v19.i64, mask(vmask4)::shift, v10, v11);
      }

      else
      {
        compute_ideal_colors_and_weights_3_comp(a2, partition_info, a4, 0, *v19.i64, *&mask(vmask4)::shift, v10, *v11.i64, v12);
      }

      v20 = 0;
      goto LABEL_20;
    default:
      if (v19.i32[0])
      {
        compute_ideal_colors_and_weights_2planes();
      }

      v20 = 3;
      v21 = a2;
      v22 = partition_info;
      v23 = a4;
      v24 = 3;
      break;
  }

  compute_ideal_colors_and_weights_3_comp(v21, v22, v23, v24, *v19.i64, *&mask(vmask4)::shift, v10, *v11.i64, v12);
LABEL_20:

  return compute_ideal_colors_and_weights_1_comp(a2, partition_info, a5, v20);
}

char *block_size_descriptor::get_partition_info(block_size_descriptor *this, unsigned int a2, unsigned int a3)
{
  if (a2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 1024 * (a2 - 2) + a3 + 7330328);
    if (v3 == 0xFFFF)
    {
LABEL_10:
      block_size_descriptor::get_partition_info();
    }
  }

  if (v3 >= *(this + a2 + 11))
  {
    goto LABEL_10;
  }

  v4 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v4 = 3072;
  }

  v5 = this + 1088 * v4;
  result = &v5[1088 * v3 + 11317232];
  if (*&v5[1088 * v3 + 11317234] != a3)
  {
    block_size_descriptor::get_partition_info();
  }

  return result;
}

unsigned __int32 *compute_ideal_colors_and_weights_2_comp(uint64_t a1, _WORD *a2, uint64_t a3, unsigned int a4, unsigned int a5, double a6, __n128 a7, double a8, int8x16_t a9)
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  *(a3 + 16) = v9;
  if (!v9)
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  v11 = *(a1 + 3456);
  if (!*(a1 + 3456))
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  memset(v63, 0, sizeof(v63));
  if (!a4 && a5 == 1)
  {
    a7.n128_u32[1] = 0;
    v16 = vadd_f32(*(a1 + 3536), 0);
    v17 = vpadd_f32(v16, v16);
    v18 = 864;
LABEL_9:
    v22 = a1;
    goto LABEL_13;
  }

  if (!a4 && a5 == 2)
  {
    v19 = (a1 + 3536);
    *(&a7 - 8) = vld2_f32(v19);
    a8 = 0.0;
    v21 = vadd_f32(v20, 0);
    v17 = vpadd_f32(v21, v21);
    v18 = 1728;
    goto LABEL_9;
  }

  if (a4 != 1 || a5 != 2)
  {
    compute_ideal_colors_and_weights_2_comp();
  }

  v23 = *(a1 + 3536);
  a7 = vextq_s8(v23, v23, 8uLL);
  *v23.i8 = vext_s8(*v23.i8, a7.n128_u64[0], 4uLL);
  a7.n128_u32[1] = 0;
  *v23.i8 = vadd_f32(*v23.i8, 0);
  v17 = vpadd_f32(*v23.i8, *v23.i8);
  v22 = a1 + 864;
  v18 = 1728;
LABEL_13:
  v24 = a1 + v18;
  a7.n128_u32[0] = 0.5;
  v25 = v17.f32[0] * 0.5;
  result = compute_avgs_and_dirs_2_comp(a2, a1, a4, a5, v63, *&v17, a7, a8, a9);
  v28 = 0;
  v29 = a2 + 2;
  v30 = (a2 + 112);
  v31 = a3 + 160;
  v32.i64[0] = 0;
  v33 = 1;
  v34 = vceqq_s32(vdupq_n_s32(a5), xmmword_186205980);
  v35 = vceqq_s32(vdupq_n_s32(a4), xmmword_186205980);
  v36 = 0.0;
  do
  {
    v37 = &v63[2 * v28];
    v38 = v37[1];
    v39 = vextq_s8(v38, v38, 8uLL);
    *v39.f32 = vadd_f32(*v39.f32, *v38.f32);
    *v39.f32 = vpadd_f32(*v39.f32, *v39.f32);
    v40 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v32, v39), 0), vsubq_f32(0, v38), v38);
    v41 = vmulq_f32(v40, v40);
    *v41.i8 = vadd_f32(*&vextq_s8(v41, v41, 8uLL), *v41.i8);
    v42 = vpadd_f32(*v41.i8, *v41.i8);
    v43 = xmmword_18622B5C0;
    if (*v42.i32 != 0.0)
    {
      v43 = vdivq_f32(v40, vsqrtq_f32(vdupq_lane_s32(v42, 0)));
    }

    v44 = *v37;
    v45 = *(v29 + v28);
    v46 = -1.0e10;
    v47 = 1.0e10;
    if (*(v29 + v28))
    {
      v48 = *(v29 + v28);
      result = v30;
      v47 = 1.0e10;
      v46 = -1.0e10;
      do
      {
        v49 = *result;
        result = (result + 1);
        v27.i32[0] = *(v22 + 4 * v49);
        v27.i32[1] = *(v24 + 4 * v49);
        v27 = vmulq_f32(v43, vsubq_f32(v27, v44));
        *v27.f32 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), *v27.f32);
        v27.f32[0] = vpadd_f32(*v27.f32, *v27.f32).f32[0];
        *(v31 + 4 * v49) = v27.i32[0];
        if (v27.f32[0] < v47)
        {
          v47 = v27.f32[0];
        }

        if (v27.f32[0] > v46)
        {
          v46 = v27.f32[0];
        }

        --v48;
      }

      while (v48);
    }

    if (v46 <= v47)
    {
      v46 = 0.0000001;
      v47 = 0.0;
    }

    v50 = v46 - v47;
    if (v28)
    {
      v33 &= (v50 * v50) == v36;
    }

    else
    {
      v36 = v50 * v50;
    }

    if (v45)
    {
      v51 = 0;
      v52 = v25 * (v50 * v50);
      v53 = 1.0 / v50;
      do
      {
        result = *(v30 + v51);
        v54 = v53 * (*(v31 + 4 * result) - v47);
        v55 = fmaxf(v54, 0.0);
        if (v54 <= 1.0)
        {
          v56 = v55;
        }

        else
        {
          v56 = 1.0;
        }

        *(v31 + 4 * result) = v56;
        *(a3 + 1024 + 4 * result) = v52;
        ++v51;
      }

      while (v45 != v51);
    }

    v57 = vaddq_f32(v44, vmulq_n_f32(v43, v47)).u64[0];
    v58 = vaddq_f32(v44, vmulq_n_f32(v43, v46)).u64[0];
    v27 = vdupq_lane_s32(v58, 0);
    v59 = vbslq_s8(v35, v27, *(a1 + 3520));
    *(a3 + 32 + 16 * v28) = vbslq_s8(v34, vdupq_lane_s32(v57, 1), vbslq_s8(v35, vdupq_lane_s32(v57, 0), *(a1 + 3488)));
    *(a3 + 96 + 16 * v28++) = vbslq_s8(v34, vdupq_lane_s32(v58, 1), v59);
    v30 += 54;
  }

  while (v28 != v9);
  if (((v11 + 3) & 0x1FCu) > v11)
  {
    v60 = a3 + 4 * v11;
    v61 = v11 - ((v11 + 3) & 0x1FC);
    do
    {
      *(v60 + 160) = 0;
      *(v60 + 1024) = 0;
      v60 += 4;
    }

    while (!__CFADD__(v61++, 1));
  }

  *a3 = v33 & 1;
  return result;
}

uint64_t compute_ideal_colors_and_weights_1_comp(uint64_t result, unsigned __int16 *a2, uint64_t a3, signed int a4)
{
  v6 = *a2;
  *(a3 + 16) = v6;
  if (!v6)
  {
    compute_ideal_colors_and_weights_1_comp();
  }

  v7 = *(result + 3456);
  if (!*(result + 3456))
  {
    compute_ideal_colors_and_weights_1_comp();
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = *(result + 3544);
      v9 = result + 1728;
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v8 = *(result + 3548);
      v9 = result + 2592;
      goto LABEL_12;
    }

LABEL_39:
    compute_ideal_colors_and_weights_1_comp();
  }

  if (!a4)
  {
    v8 = *(result + 3536);
    v9 = result;
    goto LABEL_12;
  }

  if (a4 != 1)
  {
    goto LABEL_39;
  }

  v8 = *(result + 3540);
  v9 = result + 864;
LABEL_12:
  v10 = 0;
  v11 = a2 + 2;
  v12 = a2 + 112;
  v13 = 1;
  v14 = vceqq_s32(vdupq_n_s32(a4), xmmword_186205980);
  v15 = 0.0;
  do
  {
    v16 = *(v11 + v10);
    v4.i32[0] = -803929351;
    v5.i32[0] = 1343554297;
    if (*(v11 + v10))
    {
      v17 = *(v11 + v10);
      v18 = v12;
      v5.i32[0] = 1343554297;
      v4.i32[0] = -803929351;
      do
      {
        v19 = *v18;
        v18 = (v18 + 1);
        v20 = *(v9 + 4 * v19);
        if (v20 < *v5.i32)
        {
          *v5.i32 = v20;
        }

        if (v20 > *v4.i32)
        {
          *v4.i32 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*v4.i32 <= *v5.i32)
    {
      *v4.i32 = 0.0000001;
      *v5.i32 = 0.0;
    }

    v21 = *v4.i32 - *v5.i32;
    if (v10)
    {
      v13 &= (v21 * v21) == v15;
    }

    else
    {
      v15 = v21 * v21;
    }

    if (*(v11 + v10))
    {
      v22 = 0;
      v23 = v8 * (v21 * v21);
      v24 = 1.0 / v21;
      do
      {
        v25 = *(v12 + v22);
        v26 = v24 * (*(v9 + 4 * v25) - *v5.i32);
        v27 = fmaxf(v26, 0.0);
        if (v26 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(a3 + 160 + 4 * v25) = v28;
        *(a3 + 1024 + 4 * v25) = v23;
        ++v22;
      }

      while (v16 != v22);
    }

    *(a3 + 32 + 16 * v10) = vbslq_s8(v14, vdupq_lane_s32(*v5.i8, 0), *(result + 3488));
    v5 = *(result + 3520);
    v4 = vbslq_s8(v14, vdupq_lane_s32(*v4.i8, 0), v5);
    *(a3 + 96 + 16 * v10++) = v4;
    v12 += 108;
  }

  while (v10 != v6);
  if (((v7 + 3) & 0x1FCu) > v7)
  {
    v29 = a3 + 4 * v7;
    v30 = v7 - ((v7 + 3) & 0x1FC);
    do
    {
      *(v29 + 160) = 0;
      *(v29 + 1024) = 0;
      v29 += 4;
    }

    while (!__CFADD__(v30++, 1));
  }

  *a3 = v13 & 1;
  return result;
}

float32x2_t compute_error_of_weight_set_1plane(float32x4_t *a1, unsigned __int8 *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, double a6, uint8x8_t a7)
{
  v7 = *a2;
  if (!*a2)
  {
    compute_error_of_weight_set_1plane();
  }

  v11 = a2[1];
  if (v11 < 3)
  {
    if (v11 == 2)
    {
      v16 = 0;
      v13 = 0uLL;
      do
      {
        v25 = v13;
        *v17.i64 = bilinear_infill_vla_2(a2, a3, v16, *a4.f32, *a5.f32);
        v18 = vsubq_f32(v17, a1[10]);
        a5 = a1[64];
        a4 = vmulq_f32(a5, vmulq_f32(v18, v18));
        v13 = vaddq_f32(v25, a4);
        v16 += 4;
        ++a1;
      }

      while (v16 < v7);
    }

    else
    {
      v19 = 0;
      v13 = 0uLL;
      do
      {
        v20 = *a3++;
        v21 = vsubq_f32(v20, a1[10]);
        v13 = vaddq_f32(v13, vmulq_f32(a1[64], vmulq_f32(v21, v21)));
        v19 += 4;
        ++a1;
      }

      while (v19 < v7);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    do
    {
      v24 = v13;
      *v14.i64 = bilinear_infill_vla(a2, a3, v12, *a4.f32, *a5.f32, *v13.f32, a7);
      v15 = vsubq_f32(v14, a1[10]);
      a5 = a1[64];
      a4 = vmulq_f32(a5, vmulq_f32(v15, v15));
      v13 = vaddq_f32(v24, a4);
      v12 += 4;
      ++a1;
    }

    while (v12 < v7);
  }

  v22 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
  return vpadd_f32(v22, v22);
}

double bilinear_infill_vla(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint8x8_t a7)
{
  v7 = a1 + a3;
  a4.i32[0] = *(v7 + 222);
  v8 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v7 + 438);
  v9 = vmovl_u16(*&vmovl_u8(a5));
  a6.i32[0] = *(v7 + 654);
  v10 = vmovl_u16(*&vmovl_u8(a6));
  a7.i32[0] = *(v7 + 870);
  v11 = vmovl_u16(*&vmovl_u8(a7));
  v8.i32[0] = *(a2 + 4 * v8.u32[0]);
  v8.i32[1] = *(a2 + 4 * v8.u32[1]);
  v8.i32[2] = *(a2 + 4 * v8.u32[2]);
  v8.i32[3] = *(a2 + 4 * v8.u32[3]);
  v9.i32[0] = *(a2 + 4 * v9.u32[0]);
  v9.i32[1] = *(a2 + 4 * v9.u32[1]);
  v9.i32[2] = *(a2 + 4 * v9.u32[2]);
  v9.i32[3] = *(a2 + 4 * v9.u32[3]);
  v10.i32[0] = *(a2 + 4 * v10.u32[0]);
  v10.i32[1] = *(a2 + 4 * v10.u32[1]);
  v10.i32[2] = *(a2 + 4 * v10.u32[2]);
  v10.i32[3] = *(a2 + 4 * v10.u32[3]);
  v11.i32[0] = *(a2 + 4 * v11.u32[0]);
  v11.i32[1] = *(a2 + 4 * v11.u32[1]);
  v11.i32[2] = *(a2 + 4 * v11.u32[2]);
  v11.i32[3] = *(a2 + 4 * v11.u32[3]);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(v8, *(a1 + 4 * a3 + 1952)), vmulq_f32(v9, *(a1 + 4 * a3 + 2816))), vaddq_f32(vmulq_f32(v10, *(a1 + 4 * a3 + 3680)), vmulq_f32(v11, *(a1 + 4 * a3 + 4544)))).u64[0];
  return result;
}

double bilinear_infill_vla_2(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = a1 + a3;
  a4.i32[0] = *(v5 + 222);
  v6 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v5 + 438);
  v7 = vmovl_u16(*&vmovl_u8(a5));
  v6.i32[0] = *(a2 + 4 * v6.u32[0]);
  v6.i32[1] = *(a2 + 4 * v6.u32[1]);
  v6.i32[2] = *(a2 + 4 * v6.u32[2]);
  v6.i32[3] = *(a2 + 4 * v6.u32[3]);
  v7.i32[0] = *(a2 + 4 * v7.u32[0]);
  v7.i32[1] = *(a2 + 4 * v7.u32[1]);
  v7.i32[2] = *(a2 + 4 * v7.u32[2]);
  v7.i32[3] = *(a2 + 4 * v7.u32[3]);
  *&result = vaddq_f32(vmulq_f32(v6, *(a1 + 4 * a3 + 1952)), vmulq_f32(v7, *(a1 + 4 * a3 + 2816))).u64[0];
  return result;
}

float32x2_t compute_error_of_weight_set_2planes(float32x4_t *a1, float32x4_t *a2, unsigned __int8 *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t a6, uint8x8_t a7, uint8x8_t a8)
{
  v8 = *a3;
  if (!*a3)
  {
    compute_error_of_weight_set_2planes();
  }

  v14 = a3[1];
  if (v14 < 3)
  {
    if (v14 == 2)
    {
      v24 = 0;
      v16 = 0uLL;
      do
      {
        v40 = v16;
        *v25.i64 = bilinear_infill_vla_2(a3, a4, v24, *a6.f32, a7);
        v26 = vsubq_f32(v25, a1[10]);
        v27 = a1[64];
        v38 = vmulq_f32(v27, vmulq_f32(v26, v26));
        *v28.i64 = bilinear_infill_vla_2(a3, a5, v24, *v38.f32, *v27.f32);
        v29 = vsubq_f32(v28, a2[10]);
        a7 = *v38.f32;
        a6 = vaddq_f32(v38, vmulq_f32(a2[64], vmulq_f32(v29, v29)));
        v16 = vaddq_f32(v40, a6);
        v24 += 4;
        ++a1;
        ++a2;
      }

      while (v24 < v8);
    }

    else
    {
      v30 = 0;
      v16 = 0uLL;
      do
      {
        v31 = *a4++;
        v32 = vsubq_f32(v31, a1[10]);
        v33 = *a5++;
        v34 = vsubq_f32(v33, a2[10]);
        v16 = vaddq_f32(v16, vaddq_f32(vmulq_f32(a1[64], vmulq_f32(v32, v32)), vmulq_f32(a2[64], vmulq_f32(v34, v34))));
        v30 += 4;
        ++a1;
        ++a2;
      }

      while (v30 < v8);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0uLL;
    do
    {
      v39 = v16;
      *v17.i64 = bilinear_infill_vla(a3, a4, v15, *a6.f32, a7, a8, *v16.f32);
      v18 = vsubq_f32(v17, a1[10]);
      v19 = a1[64];
      v37 = vmulq_f32(v19, vmulq_f32(v18, v18));
      *v22.i64 = bilinear_infill_vla(a3, a5, v15, *v37.f32, *v19.f32, v20, v21);
      v23 = vsubq_f32(v22, a2[10]);
      a7 = *v37.f32;
      a6 = vaddq_f32(v37, vmulq_f32(a2[64], vmulq_f32(v23, v23)));
      v16 = vaddq_f32(v39, a6);
      v15 += 4;
      ++a1;
      ++a2;
    }

    while (v15 < v8);
  }

  v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
  return vpadd_f32(v35, v35);
}

__int32 *compute_ideal_weights_for_decimation(__int32 *result, float32x4_t *a2, _OWORD *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2->u8[0];
  if (!a2->i8[0])
  {
    compute_ideal_weights_for_decimation();
  }

  v5 = a2->u8[2];
  if (!a2->i8[2])
  {
    compute_ideal_weights_for_decimation();
  }

  v6 = a3;
  v7 = result;
  v8 = (a3 + 4 * ((v5 - 1) & 0xFFFFFFFC));
  *v8 = 0;
  v8[1] = 0;
  if (v3 == v5)
  {
    v9 = 0;
    v10 = (result + 40);
    do
    {
      v11 = *v10++;
      *v6++ = v11;
      v9 += 4;
    }

    while (v9 < v3);
  }

  else
  {
    bzero(v75, 0x360uLL);
    v12 = 0;
    v13 = v7->u8[0];
    v14 = v7 + 128;
    v15 = vdupq_lane_s32(v7[128], 0);
    v16 = 5472;
    v17 = &a2[342];
    v18 = 19296;
    v19 = a2 + 1206;
    v20 = v7 + 20;
    v21 = vdupq_n_s32(0x2EDBE6FFu);
    do
    {
      v22 = &a2[338].f32[v12 / 4];
      v23 = vld1_dup_f32(v22);
      v23.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v23)));
      v24 = v23.u32[0];
      if (!v23.i32[0])
      {
        compute_ideal_weights_for_decimation();
      }

      v25 = 0uLL;
      v26 = v18;
      v27 = v16;
      v28 = v21;
      do
      {
        v29 = (a2->f32 + v27);
        v30 = vld1_dup_f32(v29);
        v31 = vmovl_u16(*&vmovl_u8(v30));
        v32 = v31.u32[0];
        v33 = v31.u32[1];
        v34 = vextq_s8(v31, v31, 8uLL).u64[0];
        if (!v13)
        {
          v15.i32[0] = v14->i32[v32];
          v15.i32[1] = v14->i32[v33];
          v15.i32[2] = v14->i32[v34];
          v15.i32[3] = v14->i32[HIDWORD(v34)];
        }

        v35 = vmulq_f32(*(a2 + v26), v15);
        v36 = v20 + v34;
        v37 = v20 + BYTE4(v34);
        v38.i32[0] = v20->i32[v32];
        v38.i32[1] = v20->i32[v33];
        v38.i32[2] = *v36;
        v38.i32[3] = *v37;
        v28 = vaddq_f32(v28, v35);
        v39 = vmulq_f32(v35, v38);
        v25 = vaddq_f32(v25, v39);
        v26 += 256;
        v27 += 64;
        --v24;
      }

      while (v24);
      v40 = vdivq_f32(v25, v28);
      v6[v12 / 4] = v40;
      v12 += 4;
      v16 += 4;
      v18 += 16;
    }

    while (v12 < v5);
    v73 = v15;
    v74 = v5;
    if (a2->u8[1] >= 3u)
    {
      v43 = 0;
      v44 = v75;
      do
      {
        *v21.i64 = bilinear_infill_vla(a2, v6, v43, *v21.i8, *v40.f32, *v28.f32, *v39.f32);
        *v44++ = v21;
        v43 += 4;
      }

      while (v43 < v3);
    }

    else
    {
      v41 = 0;
      v42 = v75;
      do
      {
        *v21.i64 = bilinear_infill_vla_2(a2, v6, v41, *v21.i8, *v40.f32);
        *v42++ = v21;
        v41 += 4;
      }

      while (v41 < v3);
    }

    v45 = 0;
    v46 = vdupq_n_s32(0x2EDBE6FFu);
    __asm
    {
      FMOV            V1.4S, #-16.0
      FMOV            V2.4S, #-0.25
      FMOV            V3.4S, #0.25
    }

    v54 = v73;
    do
    {
      v55 = &a2[338].f32[v45 / 4];
      v56 = vld1_dup_f32(v55);
      v56.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v56)));
      v57 = v56.u32[0];
      if (!v56.i32[0])
      {
        compute_ideal_weights_for_decimation();
      }

      v58 = 0uLL;
      v59 = v19;
      v60 = v17;
      v61 = v46;
      do
      {
        v62 = *v60;
        v60 += 16;
        v63 = vmovl_u16(*&vmovl_u8(vdup_n_s32(v62)));
        v64 = v63.u32[0];
        v65 = v63.u32[1];
        v66 = vextq_s8(v63, v63, 8uLL).u64[0];
        if (!v13)
        {
          v54.i32[0] = v14->i32[v64];
          v54.i32[1] = v14->i32[v65];
          v54.i32[2] = v14->i32[v66];
          v54.i32[3] = v14->i32[HIDWORD(v66)];
        }

        v67 = vmulq_f32(*v59, v54);
        v68 = v66;
        result = &v75[v66];
        v69 = BYTE4(v66);
        v70 = &v75[BYTE4(v66)];
        v71.i32[0] = v75[v64];
        v71.i32[1] = v75[v65];
        v71.i32[2] = *result;
        v71.i32[3] = *v70;
        v72.i32[0] = v20->i32[v64];
        v72.i32[1] = v20->i32[v65];
        v72.i32[2] = v20->i32[v68];
        v72.i32[3] = v20->i32[v69];
        v61 = vaddq_f32(v61, vmulq_f32(*v59, v67));
        v58 = vaddq_f32(v58, vmulq_f32(v67, vsubq_f32(v71, v72)));
        v59 += 16;
        --v57;
      }

      while (v57);
      v6[v45 / 4] = vaddq_f32(v6[v45 / 4], vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(v58, _Q1), v61), _Q2), _Q3));
      v45 += 4;
      ++v17;
      ++v19;
    }

    while (v45 < v74);
  }

  return result;
}

uint64_t compute_quantized_weights_for_decimation(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  if (!*(result + 2))
  {
    compute_quantized_weights_for_decimation();
  }

  v12 = (&quant_and_xfer_tables + 226 * a5);
  if (a5 > 0x14)
  {
    v13 = -1;
  }

  else
  {
    v13 = dword_18622B610[a5];
  }

  v14 = vdupq_n_s32(v13);
  if (*&a7 > a6)
  {
    *&a11 = a6;
  }

  else
  {
    *&a7 = 1.0;
    *&a11 = 0.0;
  }

  v16 = *&a7 - *&a11;
  v17 = 1.0 / (*&a7 - *&a11);
  *&a7 = *&a11 * v17;
  v18 = vdupq_lane_s32(*&a7, 0);
  v15 = (&compute_quantized_weights_for_decimation(decimation_info const&,float,float,float const*,float *,unsigned char *,quant_method)::quant_levels_m1 + 4 * a5);
  v19 = vld1q_dup_f32(v15);
  v20 = v16 * 0.015625;
  v21 = vdupq_lane_s32(*&a11, 0);
  v22 = *v12;
  if (a5 - 9 >= 0xC)
  {
    v42 = 0;
    __asm { FMOV            V17.4S, #1.0 }

    v44.i64[0] = 0x100000001;
    v44.i64[1] = 0x100000001;
    v45.i64[0] = 0xFFFFFF00FFFFFF00;
    v45.i64[1] = 0xFFFFFF00FFFFFF00;
    v46.i64[0] = 0x4300000043000000;
    v46.i64[1] = 0x4300000043000000;
    do
    {
      v47 = *a2++;
      v48 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v47, v17), v18), 0), _Q17);
      v49 = vcvtq_s32_f32(vmulq_f32(v19, v48));
      v50 = vminq_s32(vaddq_s32(v49, v44), v14);
      v51 = vqtbl1q_s8(v22, vorrq_s8(v49, v45));
      v52 = vqtbl1q_s8(v22, vorrq_s8(v50, v45));
      v53 = vcvtq_f32_s32(v51);
      v54 = vcvtq_f32_s32(v52);
      v55 = vcgtq_f32(vmulq_f32(v48, v46), vaddq_f32(v53, v54));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v55, v54, v53), v20));
      *(a4 + v42) = vqtbl1q_s8(vbslq_s8(v55, v52, v51), xmmword_18622B5D0).u32[0];
      v42 += 4;
    }

    while (v42 < v11);
  }

  else
  {
    v23 = 0;
    v24 = v12[1];
    __asm { FMOV            V17.4S, #1.0 }

    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    v31.i64[0] = 0xFFFFFF00FFFFFF00;
    v31.i64[1] = 0xFFFFFF00FFFFFF00;
    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    do
    {
      v33 = *a2++;
      v34 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v33, v17), v18), 0), _Q17);
      v35 = vcvtq_s32_f32(vmulq_f32(v19, v34));
      v36 = vminq_s32(vaddq_s32(v35, v30), v14);
      v37 = vqtbl2q_s8(*v22.i8, vorrq_s8(v35, v31));
      v38 = vqtbl2q_s8(*v22.i8, vorrq_s8(v36, v31));
      v39 = vcvtq_f32_s32(v37);
      v40 = vcvtq_f32_s32(v38);
      v41 = vcgtq_f32(vmulq_f32(v34, v32), vaddq_f32(v39, v40));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v41, v40, v39), v20));
      *(a4 + v23) = vqtbl1q_s8(vbslq_s8(v41, v38, v37), xmmword_18622B5D0).u32[0];
      v23 += 4;
    }

    while (v23 < v11);
  }

  return result;
}

void *recompute_ideal_colors_1plane(float32x4_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    recompute_ideal_colors_1plane();
  }

  v10 = a1[216].u8[0];
  if (!a1[216].i8[0])
  {
    recompute_ideal_colors_1plane();
  }

  v12 = *a2;
  if (!*a2)
  {
    recompute_ideal_colors_1plane();
  }

  v17 = 0;
  memset(v121, 0, sizeof(v121));
  v18 = vdupq_n_s32(0x3C800000u);
  v19 = v121;
  do
  {
    v20 = (a4 + v17);
    v21 = vld1_dup_f32(v20);
    *v19++ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v21))), v18);
    v17 += 4;
  }

  while (v17 < v8);
  bzero(v120, 0x360uLL);
  v27 = *(a3 + 1);
  if (v27 == 1)
  {
    v28 = v121;
  }

  else
  {
    if (v27 >= 3)
    {
      v31 = 0;
      v32 = v120;
      do
      {
        *&v22 = bilinear_infill_vla(a3, v121, v31, *&v22, v23, v24, v25);
        *v32++ = v22;
        v31 += 4;
      }

      while (v31 < v10);
    }

    else
    {
      v29 = 0;
      v30 = v120;
      do
      {
        *&v22 = bilinear_infill_vla_2(a3, v121, v29, *&v22, v23);
        *v30++ = v22;
        v29 += 4;
      }

      while (v29 < v10);
    }

    v28 = v120;
  }

  v33 = 0;
  v34 = vmulq_n_f32(a1[219], v10);
  v35 = (a2 + 112);
  v36 = a1 + 54;
  v37 = a1 + 108;
  v38 = a1 + 162;
  v39 = a5 + 16;
  v40 = a5 + 80;
  v41 = vdupq_n_s32(0x233877AAu);
  result = &unk_18622B000;
  __asm { FMOV            V7.4S, #1.0 }

  v47 = vdupq_n_s32(0x38D1B717u);
  do
  {
    v48 = *(a2 + v33 + 4);
    if (v12 != 1)
    {
      if (!*(a2 + v33 + 4))
      {
        recompute_ideal_colors_1plane();
      }

      v34 = 0uLL;
      v49 = *(a2 + v33 + 4);
      v50 = v35;
      do
      {
        v51 = *v50++;
        v52.i32[0] = a1->i32[v51];
        v52.i32[1] = v36->i32[v51];
        v52.i32[2] = v37->i32[v51];
        v52.i32[3] = v38->i32[v51];
        v34 = vaddq_f32(v34, v52);
        --v49;
      }

      while (v49);
    }

    v53 = a1[221];
    v34 = vmulq_f32(v34, v53);
    _Q21 = vmaxnmq_f32(vmulq_n_f32(v53, v48), v41);
    v55 = vdivq_f32(v34, _Q21);
    v55.i32[3] = 0;
    v56 = vmulq_f32(v55, v55);
    *v56.i8 = vadd_f32(*&vextq_s8(v56, v56, 8uLL), *v56.i8);
    v57 = vdivq_f32(v55, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v56.i8, *v56.i8), 0)));
    v58 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v53.f32);
    if (*(a2 + v33 + 4))
    {
      v59 = 0;
      v60 = 0uLL;
      v61 = 1.0;
      v62 = 0.0;
      v63 = 1.0e-17;
      v64 = 1.0e10;
      v65 = 0.0;
      v26.i64[0] = 0;
      v66 = 0.0;
      v67 = 0.0;
      v68 = 0uLL;
      v69 = 0uLL;
      do
      {
        v70 = v35[v59];
        v7.i32[0] = a1->i32[v70];
        v7.i32[1] = v36->i32[v70];
        v7.i32[2] = v37->i32[v70];
        v71 = vmulq_f32(v57, v7);
        v72 = *&v28[4 * v70];
        v73.i32[3] = v38->i32[v70];
        v74 = 1.0 - v72;
        if (v72 < v61)
        {
          v61 = *&v28[4 * v70];
        }

        if (v72 > v65)
        {
          v65 = *&v28[4 * v70];
        }

        v75 = v71.f32[2] + vaddv_f32(*v71.f32);
        v26.f32[0] = v26.f32[0] + (v74 * v74);
        v66 = v66 + (v74 * v72);
        if (v75 < v64)
        {
          v64 = v75;
        }

        v67 = v67 + (v72 * v72);
        v63 = v63 + v72;
        v76 = vmulq_n_f32(v73, v72);
        v68 = vaddq_f32(v68, v76);
        v7 = vsubq_f32(v73, v76);
        v76.i32[3] = 0;
        if (v75 > v62)
        {
          v62 = v75;
        }

        v60 = vaddq_f32(v60, v7);
        *(v76.i64 + 4) = *&v28[4 * v70];
        v76.f32[0] = 1.0 - v72;
        v69 = vaddq_f32(v69, vmulq_n_f32(v76, v58 * v75));
        ++v59;
      }

      while (v48 != v59);
      v77 = v65 * 0.999;
    }

    else
    {
      v61 = 1.0;
      v67 = 0.0;
      v69.i64[0] = 0;
      v68 = 0uLL;
      v60 = 0uLL;
      v63 = 1.0e-17;
      v66 = 0.0;
      v26.i64[0] = 0;
      v77 = 0.0;
      v64 = 1.0e10;
      v62 = 0.0;
    }

    v78 = vmulq_f32(v53, v60);
    v79 = vmulq_f32(v53, v68);
    v80 = v64 / fmaxf(v62, 1.0e-10);
    v81 = fmaxf(v80, 0.0);
    if (v80 <= 1.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 1.0;
    }

    v83 = vmulq_n_f32(v57, v62);
    v84 = v83;
    v84.f32[3] = v82;
    *(a6 + 16 * v33) = v84;
    if (v61 >= v77)
    {
      v101 = vdivq_f32(vaddq_f32(v79, v78), _Q21);
      v102 = vceqq_f32(v101, v101);
      *(v39 + 16 * v33) = vbslq_s8(v102, v101, *(v39 + 16 * v33));
      *(v40 + 16 * v33) = vbslq_s8(v102, v101, *(v40 + 16 * v33));
      v83.i32[3] = 1.0;
      goto LABEL_44;
    }

    v85 = v26;
    v85.f32[1] = v66;
    v85.f32[2] = v67;
    _Q19 = vmulq_n_f32(v85, v58);
    v87 = vmulq_n_f32(v53, v67);
    v88 = vmulq_n_f32(v53, v66);
    v89 = vmulq_n_f32(v53, v26.f32[0]);
    v90 = vsubq_f32(vmulq_f32(v87, v89), vmulq_f32(v88, v88));
    v91 = vdivq_f32(_Q7, v90);
    _S11 = _Q19.i32[2];
    v93 = vmuls_lane_f32(-_Q19.f32[1], *_Q19.f32, 1) + (_Q19.f32[0] * _Q19.f32[2]);
    v94 = vaddq_f32(vmulq_f32(v87, v87), vaddq_f32(vmulq_f32(v89, v89), vmulq_f32(v88, vaddq_f32(v88, v88))));
    __asm { FMLA            S20, S11, V19.S[2] }

    v7 = vmulq_f32(v79, v88);
    v96 = vmulq_f32(vsubq_f32(vmulq_f32(v78, v87), v7), v91);
    v26 = vmulq_f32(vsubq_f32(vmulq_f32(v79, v89), vmulq_f32(v78, v88)), v91);
    v97 = vornq_s8(vmvnq_s8(vcgtq_f32(vmaxq_f32(v90, vsubq_f32(0, v90)), vmulq_f32(v94, v47))), vorrq_s8(vcgtq_f32(v26, v96), vcgeq_f32(v96, v26)));
    *(v39 + 16 * v33) = vbslq_s8(v97, *(v39 + 16 * v33), v96);
    *(v40 + 16 * v33) = vbslq_s8(v97, *(v40 + 16 * v33), v26);
    v98 = (vmuls_lane_f32(-_Q19.f32[1], *v69.f32, 1) + (_Q19.f32[2] * v69.f32[0])) * (1.0 / v93);
    v99 = ((-_Q19.f32[1] * v69.f32[0]) + (_Q19.f32[0] * v69.f32[1])) * (1.0 / v93);
    if (fabsf(v93) > (_S20 * 0.0001) && v98 < v99)
    {
      v83 = vmulq_n_f32(v57, v99);
      v83.f32[3] = v98 / v99;
LABEL_44:
      *(a6 + 16 * v33) = v83;
    }

    if (a1[222].u8[1] | a1[235].u8[9])
    {
      _Q27 = vmulq_n_f32(v53, v63);
      _S23 = v58 * v67;
      v105 = vaddq_f32(v79, v78);
      v105.f32[3] = v79.f32[2] + vaddv_f32(*v79.f32);
      v106 = vmulq_f32(_Q27, _Q27).f32[0];
      __asm
      {
        FMLA            S30, S23, V21.S[2]
        FMLA            S20, S30, V21.S[1]
      }

      v109.f32[0] = vmuls_lane_f32(_Q21.f32[2], *_Q27.f32, 1) * _Q27.f32[0];
      *v110.f32 = vmul_f32(vrev64_s32(*_Q21.f32), *_Q27.f32);
      *v111.f32 = vmul_laneq_f32(*v110.f32, _Q27, 2);
      v112 = vdupq_laneq_s32(_Q21, 2);
      v112.f32[0] = -_Q21.f32[2];
      v112.f32[1] = -_Q21.f32[2];
      v112.f32[2] = -_Q27.f32[2];
      v110.i32[2] = vmuls_lane_f32(_Q21.f32[0], *_Q21.f32, 1);
      v110.i32[3] = v110.i32[2];
      v113 = vmulq_f32(v112, v110);
      v114 = vmulq_f32(_Q27, v113).f32[0];
      _Q20.i32[1] = v109.i32[0];
      _Q20.i64[1] = __PAIR64__(v113.u32[0], v111.u32[0]);
      v109.f32[1] = (-_Q21.f32[2] * v106) + (_S30 * _Q21.f32[0]);
      v109.i64[1] = __PAIR64__(v113.u32[1], v111.u32[1]);
      __asm { FMLA            S27, S23, V21.S[1] }

      v111.f32[2] = (-_Q21.f32[1] * v106) + (_Q27.f32[0] * _Q21.f32[0]);
      v111.i32[3] = v113.i32[2];
      v115 = vmulq_n_f32(v105, 1.0 / (v114 + (_Q20.f32[0] * _Q21.f32[0])));
      v116 = vmulq_f32(_Q20, v115);
      *v116.i8 = vadd_f32(*&vextq_s8(v116, v116, 8uLL), *v116.i8);
      v117 = vmulq_f32(v109, v115);
      *v117.i8 = vadd_f32(*&vextq_s8(v117, v117, 8uLL), *v117.i8);
      v118 = vmulq_f32(v111, v115);
      *v118.i8 = vadd_f32(*&vextq_s8(v118, v118, 8uLL), *v118.i8);
      v119 = vmulq_f32(v113, v115);
      *v119.i8 = vadd_f32(*&vextq_s8(v119, v119, 8uLL), *v119.i8);
      *v115.f32 = vzip1_s32(vpadd_f32(*v116.i8, *v116.i8), vpadd_f32(*v117.i8, *v117.i8));
      v115.i64[1] = __PAIR64__(vpadd_f32(*v119.i8, *v119.i8).u32[0], vpadd_f32(*v118.i8, *v118.i8).u32[0]);
      *(a7 + 16 * v33) = v115;
    }

    ++v33;
    v35 += 216;
  }

  while (v33 != v12);
  return result;
}

void recompute_ideal_colors_2planes(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, float32x4_t *a7, int8x16_t *a8, unsigned int a9)
{
  v148 = *MEMORY[0x1E69E9840];
  v12 = a1[216].u8[0];
  if (!a1[216].i8[0])
  {
    recompute_ideal_colors_2planes();
  }

  v14 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    recompute_ideal_colors_2planes();
  }

  memset(v147, 0, sizeof(v147));
  memset(v146, 0, sizeof(v146));
  if (v14 > 0x20)
  {
    recompute_ideal_colors_2planes();
  }

  v20 = 0;
  v21 = 0;
  v22 = vdupq_n_s32(0x3C800000u);
  do
  {
    v23 = (a4 + v21);
    v24 = vld1_dup_f32(v23);
    v147[v20] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v24))), v22);
    v25 = (a5 + v21);
    v26 = vld1_dup_f32(v25);
    v146[v20] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v26))), v22);
    v21 += 4;
    ++v20;
  }

  while (v21 < v14);
  bzero(v145, 0x360uLL);
  bzero(v144, 0x360uLL);
  v32 = *(a3 + 1);
  if (v32 == 1)
  {
    v33 = v147;
    v34 = v146;
  }

  else
  {
    v143 = a7;
    v35 = a8;
    if (v32 >= 3)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        *&v42 = bilinear_infill_vla(a3, v147, v41, *&v27, v28, v29, v30);
        v33 = v145;
        *&v145[v40] = v42;
        *&v27 = bilinear_infill_vla(a3, v146, v41, *&v42, v43, v44, v45);
        v34 = v144;
        *&v144[v40] = v27;
        v41 += 4;
        v40 += 16;
      }

      while (v41 < v12);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      do
      {
        *&v38 = bilinear_infill_vla_2(a3, v147, v37, *&v27, v28);
        v33 = v145;
        *&v145[v36] = v38;
        *&v27 = bilinear_infill_vla_2(a3, v146, v37, *&v38, v39);
        v34 = v144;
        *&v144[v36] = v27;
        v37 += 4;
        v36 += 16;
      }

      while (v37 < v12);
    }

    a8 = v35;
    a7 = v143;
  }

  v46 = *(a2 + 3);
  v47 = a1[221];
  v48 = vdupq_n_s32(0x233877AAu);
  v49 = a1[219];
  v49.i32[3] = 0;
  v50 = vmulq_f32(v49, v49);
  *v50.i8 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
  v51 = vmulq_n_f32(v47, v46);
  v52 = vdivq_f32(v49, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v50.i8, *v50.i8), 0)));
  v53 = vdupq_n_s32(a9);
  v54 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v47.f32);
  v55 = 1.0;
  if (*(a2 + 3))
  {
    v56 = vdupq_n_s32(0x233877AAu);
    v57 = 0uLL;
    v58 = 0.0;
    v59 = 1.0e10;
    v60 = vceqq_s32(v53, xmmword_186205980);
    v61 = a1;
    v62 = 1.0;
    v63 = 0.0;
    v64 = 1.0;
    v65 = 0.0;
    v31.i64[0] = 0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v9.i32[0] = *v61;
      v9.i32[1] = v61[216];
      v9.i32[2] = v61[432];
      v73 = *v33++;
      *v10.i32 = v73;
      v74 = vmulq_f32(v52, v9);
      v75 = 1.0 - v73;
      if (v73 < v62)
      {
        v62 = *v10.i32;
      }

      v9.i32[3] = v61[648];
      v76 = vaddv_f32(*v74.f32);
      v77 = *v34++;
      v11.i32[0] = v77;
      if (*v10.i32 > v63)
      {
        v63 = *v10.i32;
      }

      v68 = v68 + ((1.0 - *v11.i32) * (1.0 - *v11.i32));
      v69 = v69 + ((1.0 - *v11.i32) * *v11.i32);
      v78 = v74.f32[2] + v76;
      v79 = vbslq_s8(v60, vdupq_lane_s32(v11, 0), vdupq_lane_s32(v10, 0));
      v80 = vmulq_f32(v9, v79);
      v71 = vaddq_f32(v71, v80);
      v81 = vsubq_f32(v9, v80);
      if (v78 < v59)
      {
        v59 = v78;
      }

      v31.f32[0] = v31.f32[0] + (v75 * v75);
      v66 = v66 + (v75 * *v10.i32);
      if (v78 > v58)
      {
        v58 = v78;
      }

      v67 = v67 + (*v10.i32 * *v10.i32);
      if (*v11.i32 < v64)
      {
        v64 = *v11.i32;
      }

      v70 = v70 + (*v11.i32 * *v11.i32);
      v57 = vaddq_f32(v57, v81);
      if (*v11.i32 > v65)
      {
        v65 = *v11.i32;
      }

      v9 = vmulq_n_f32(__PAIR64__(v10.u32[0], LODWORD(v75)), v54 * v78);
      v72 = vaddq_f32(v72, v9);
      v56 = vaddq_f32(v56, v79);
      ++v61;
      --v46;
    }

    while (v46);
    v82 = v65 * 0.999;
  }

  else
  {
    v72.i64[0] = 0;
    v59 = 1.0e10;
    v71 = 0uLL;
    v56 = v48;
    v57 = 0uLL;
    v70 = 0.0;
    v69 = 0.0;
    v68 = 0.0;
    v67 = 0.0;
    v66 = 0.0;
    v31.i64[0] = 0;
    v82 = 0.0;
    v64 = 1.0;
    v58 = 0.0;
  }

  _Q16 = vmaxnmq_f32(v51, v48);
  v84 = vmulq_n_f32(v47, v67);
  v85 = vmulq_f32(v47, v57);
  v86 = vmulq_f32(v47, v71);
  v87 = v59 / fmaxf(v58, 1.0e-10);
  v88 = fmaxf(v87, 0.0);
  if (v87 <= 1.0)
  {
    v55 = v88;
  }

  v89 = vmulq_n_f32(v52, v58);
  v90 = v89;
  v90.f32[3] = v55;
  *a7 = v90;
  __asm { FMOV            V19.4S, #1.0 }

  if (_NF == _VF)
  {
    v111 = vdivq_f32(vaddq_f32(v86, v85), _Q16);
    v112 = vornq_s8(vceqq_s32(v53, xmmword_186205980), vceqq_f32(v111, v111));
    a6[1] = vbslq_s8(v112, a6[1], v111);
    a6[5] = vbslq_s8(v112, a6[5], v111);
    v89.i32[3] = 1.0;
LABEL_42:
    *a7 = v89;
    goto LABEL_43;
  }

  v95 = v31;
  v95.f32[1] = v66;
  v95.f32[2] = v67;
  _Q24 = vmulq_n_f32(v95, v54);
  v97 = vmulq_n_f32(v47, v66);
  v98 = vmulq_n_f32(v47, v31.f32[0]);
  v99 = vsubq_f32(vmulq_f32(v84, v98), vmulq_f32(v97, v97));
  v100 = vdivq_f32(_Q19, v99);
  _S28 = _Q24.i32[2];
  v102 = vmuls_lane_f32(-_Q24.f32[1], *_Q24.f32, 1) + (_Q24.f32[0] * _Q24.f32[2]);
  v103 = vaddq_f32(vmulq_f32(v84, v84), vaddq_f32(vmulq_f32(v98, v98), vmulq_f32(v97, vaddq_f32(v97, v97))));
  __asm { FMLA            S29, S28, V24.S[2] }

  v105 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v84), vmulq_f32(v86, v97)), v100);
  v106 = vmulq_f32(vsubq_f32(vmulq_f32(v86, v98), vmulq_f32(v85, v97)), v100);
  v107 = (vmuls_lane_f32(-_Q24.f32[1], *v72.f32, 1) + (_Q24.f32[2] * v72.f32[0])) * (1.0 / v102);
  v108 = ((-_Q24.f32[1] * v72.f32[0]) + (_Q24.f32[0] * v72.f32[1])) * (1.0 / v102);
  v109 = vorrq_s8(vornq_s8(vmvnq_s8(vorrq_s8(vcgtq_f32(v106, v105), vcgeq_f32(v105, v106))), vcgtq_f32(vmaxq_f32(v99, vsubq_f32(0, v99)), vmulq_f32(v103, vdupq_n_s32(0x38D1B717u)))), vceqq_s32(v53, xmmword_186205980));
  a6[1] = vbslq_s8(v109, a6[1], v105);
  a6[5] = vbslq_s8(v109, a6[5], v106);
  _NF = fabsf(v102) > (_S29 * 0.0001) && v107 < v108;
  if (_NF)
  {
    v89 = vmulq_n_f32(v52, v108);
    v89.f32[3] = v107 / v108;
    goto LABEL_42;
  }

LABEL_43:
  v113 = vmulq_n_f32(v47, v70);
  if (v64 >= v82)
  {
    v123 = vdivq_f32(vaddq_f32(v86, v85), _Q16);
    v124 = vandq_s8(vceqq_f32(v123, v123), vceqq_s32(v53, xmmword_186205980));
    a6[1] = vbslq_s8(v124, v123, a6[1]);
    v122 = vbslq_s8(v124, v123, a6[5]);
  }

  else
  {
    v114 = vmulq_n_f32(v47, v68);
    v115 = vmulq_n_f32(v47, v69);
    v116 = vsubq_f32(vmulq_f32(v113, v114), vmulq_f32(v115, v115));
    v117 = vdivq_f32(_Q19, v116);
    v118 = vaddq_f32(vmulq_f32(v113, v113), vaddq_f32(vmulq_f32(v114, v114), vmulq_f32(v115, vaddq_f32(v115, v115))));
    v119 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v113), vmulq_f32(v86, v115)), v117);
    v120 = vmulq_f32(vsubq_f32(vmulq_f32(v86, v114), vmulq_f32(v85, v115)), v117);
    v121 = vandq_s8(vandq_s8(vorrq_s8(vcgtq_f32(v120, v119), vcgeq_f32(v119, v120)), vceqq_s32(v53, xmmword_186205980)), vcgtq_f32(vmaxq_f32(v116, vsubq_f32(0, v116)), vmulq_f32(v118, vdupq_n_s32(0x38D1B717u))));
    a6[1] = vbslq_s8(v121, v119, a6[1]);
    v122 = vbslq_s8(v121, v120, a6[5]);
  }

  a6[5] = v122;
  if (a1[222].u8[1] | a1[235].u8[9])
  {
    v125 = vmulq_f32(v47, v56);
    v126 = vmulq_f32(v47, vbslq_s8(vceqq_s32(v53, xmmword_186205980), v113, v84));
    _S1 = v126.f32[2] + vaddv_f32(*v126.f32);
    v128 = vaddq_f32(v86, v85);
    v128.f32[3] = v86.f32[2] + vaddv_f32(*v86.f32);
    v129 = vmulq_f32(v125, v125).f32[0];
    __asm
    {
      FMLA            S7, S1, V16.S[2]
      FMLA            S18, S7, V16.S[1]
    }

    *v132.f32 = vmul_f32(vrev64_s32(*_Q16.f32), *v125.f32);
    *v133.f32 = vmul_laneq_f32(*v132.f32, v125, 2);
    v134 = vdupq_laneq_s32(_Q16, 2);
    v134.f32[0] = -_Q16.f32[2];
    v134.f32[1] = -_Q16.f32[2];
    v134.f32[2] = -v125.f32[2];
    v132.i32[2] = vmuls_lane_f32(_Q16.f32[0], *_Q16.f32, 1);
    v135.f32[0] = vmuls_lane_f32(_Q16.f32[2], *v125.f32, 1) * v125.f32[0];
    v132.i32[3] = v132.i32[2];
    v136 = vmulq_f32(v134, v132);
    _Q18.i32[1] = v135.i32[0];
    _Q18.i64[1] = __PAIR64__(v136.u32[0], v133.u32[0]);
    v135.f32[1] = (-_Q16.f32[2] * v129) + (_S7 * _Q16.f32[0]);
    v135.i64[1] = __PAIR64__(v136.u32[1], v133.u32[1]);
    __asm { FMLA            S6, S1, V16.S[1] }

    v133.f32[2] = (-_Q16.f32[1] * v129) + (_S6 * _Q16.f32[0]);
    v133.i32[3] = v136.i32[2];
    v138 = vmulq_n_f32(v128, 1.0 / (vmulq_f32(v125, v136).f32[0] + (_Q18.f32[0] * _Q16.f32[0])));
    v139 = vmulq_f32(_Q18, v138);
    *v139.i8 = vadd_f32(*&vextq_s8(v139, v139, 8uLL), *v139.i8);
    v140 = vmulq_f32(v135, v138);
    *v140.i8 = vadd_f32(*&vextq_s8(v140, v140, 8uLL), *v140.i8);
    v141 = vmulq_f32(v133, v138);
    *v141.i8 = vadd_f32(*&vextq_s8(v141, v141, 8uLL), *v141.i8);
    v142 = vmulq_f32(v136, v138);
    *v142.i8 = vadd_f32(*&vextq_s8(v142, v142, 8uLL), *v142.i8);
    *v139.i8 = vzip1_s32(vpadd_f32(*v139.i8, *v139.i8), vpadd_f32(*v140.i8, *v140.i8));
    v139.i64[1] = __PAIR64__(vpadd_f32(*v142.i8, *v142.i8).u32[0], vpadd_f32(*v141.i8, *v141.i8).u32[0]);
    *a8 = v139;
  }
}

void compute_ideal_colors_and_weights_1plane()
{
  {
    mask(vmask4)::shift = xmmword_186205980;
  }
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 596, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 531, "partition_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 530, "texel_count > 0");
}

void compute_ideal_colors_and_weights_3_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 471, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 365, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 362, "partition_count > 0");
}

void compute_ideal_colors_and_weights_2planes()
{
  __assert_rtn("compute_ideal_colors_and_weights_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 680, "uses_alpha");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 640, "plane2_component < BLOCK_MAX_COMPONENTS");
}

void block_size_descriptor::get_partition_info()
{
  __assert_rtn("get_partition_info", "astcenc_internal.h", 709, "index == result.partition_index");
}

{
  __assert_rtn("get_partition_info", "astcenc_internal.h", 707, "packed_index != BLOCK_BAD_PARTITIONING && packed_index < this->partitioning_count_all[partition_count - 1]");
}

void compute_ideal_colors_and_weights_2_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 253, "component1 == 1 && component2 == 2");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 322, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 229, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 226, "partition_count > 0");
}

void compute_ideal_colors_and_weights_1_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 190, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 139, "component == 3");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 118, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 115, "partition_count > 0");
}

void compute_ideal_weights_for_decimation()
{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 951, "max_texel_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 893, "max_texel_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 854, "weight_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 853, "texel_count > 0");
}

void recompute_ideal_colors_1plane()
{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1220, "texel_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1172, "partition_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1171, "total_texel_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1170, "weight_count > 0");
}

void recompute_ideal_colors_2planes()
{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1400, "weight_count <= BLOCK_MAX_WEIGHTS_2PLANE");
}

{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1395, "weight_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1394, "total_texel_count > 0");
}

unint64_t symbolic_to_physical(unint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 == 2)
  {
    v19 = 0;
    *a3 = -516;
    v20 = a3 + 9;
    do
    {
      *(v20 - 1) = *&a2[v19 + 20];
      v20 += 2;
      v19 += 4;
    }

    while (v19 != 16);
    return result;
  }

  if (v5 == 1)
  {
    v21 = 0;
    *a3 = -4;
    v22 = a3 + 9;
    do
    {
      *(v22 - 1) = *&a2[v21 + 20];
      v22 += 2;
      v21 += 4;
    }

    while (v21 != 16);
    return result;
  }

  if (!*a2)
  {
    symbolic_to_physical();
  }

  v6 = a2[1];
  v70 = 0uLL;
  v7 = *(result + 2 * *(a2 + 2) + 11300848);
  if (v7 == 0xFFFF || *(result + 28) <= v7)
  {
    symbolic_to_physical();
  }

  v9 = *(result + 129888 * *(result + 6 * *(result + 2 * *(a2 + 2) + 11300848) + 11304946) + 594);
  v10 = *(result + 6 * *(result + 2 * *(a2 + 2) + 11300848) + 11304947);
  v11 = -1.0;
  if (v10 <= 0x14)
  {
    v11 = flt_18622B664[*(result + 6 * *(result + 2 * *(a2 + 2) + 11300848) + 11304947)];
  }

  v12 = *(result + 6 * *(result + 2 * *(a2 + 2) + 11300848) + 11304949);
  v13 = &quant_and_xfer_tables + 226 * *(result + 6 * *(result + 2 * *(a2 + 2) + 11300848) + 11304947);
  v14 = v9 << (v12 & 1);
  ise_sequence_bitcount = get_ise_sequence_bitcount(v14, v10);
  memset(v69, 0, sizeof(v69));
  if (v12)
  {
    if (v9)
    {
      v23 = v13 + 32;
      v24 = a2 + 84;
      v25 = v69 + 1;
      do
      {
        v26 = ((v11 * vcvts_n_f32_u32(*(v24 - 32), 6uLL)) + 0.5);
        v27 = *v24++;
        *(v25 - 1) = v23[v26];
        *v25 = v23[((v11 * vcvts_n_f32_u32(v27, 6uLL)) + 0.5)];
        v25 += 2;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    v16 = a2 + 52;
    v17 = v69;
    do
    {
      v18 = *v16++;
      *v17++ = v13[((v11 * vcvts_n_f32_u32(v18, 6uLL)) + 0.5) + 32];
      --v9;
    }

    while (v9);
  }

  encode_ise(v10, v14, v69, &v70, 0);
  v28 = vrev64q_s8(v70);
  *a3 = vrbitq_s8(vextq_s8(v28, v28, 8uLL));
  v29 = *(a2 + 2);
  *a3 = v29;
  v30 = (v29 >> 8) & 7;
  v31 = (8 * v6 + 24) & 0x18;
  *(a3 + 1) = *(a3 + 1) & 0xE0 | v31 | BYTE1(v29) & 7;
  v32 = *(a3 + 2);
  v33 = 128 - ise_sequence_bitcount;
  if (v6 >= 2)
  {
    v34 = *(a2 + 3);
    *(a3 + 1) = v31 | (32 * v34) | v30;
    v35 = (v34 >> 3) & 7;
    v36 = v32 & 0xF8 | (v34 >> 3) & 7;
    *(a3 + 2) = v36;
    v37 = (*(a2 + 3) >> 3) & 0x78;
    *(a3 + 2) = v36 & 0x87 | (*(a2 + 3) >> 3) & 0x78;
    v38 = *(a3 + 3);
    v39 = (a2 + 8);
    if (a2[2])
    {
      v40 = *v39;
      *(a3 + 2) = v37 | v35;
      *(a3 + 3) = v38 & 0xE0 | (2 * (v40 & 0xF));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v54 = 4;
      v55 = v6;
      v56 = a2 + 8;
      do
      {
        v57 = *v56++;
        v58 = v57 >> 2;
        if ((v57 >> 2) < v54)
        {
          v54 = v58;
        }

        --v55;
      }

      while (v55);
      v59 = 2;
      if (v54 == 3)
      {
        v60 = 2;
      }

      else
      {
        v60 = v54;
      }

      v61 = v60 + 1;
      v62 = v6;
      v63 = a2 + 8;
      do
      {
        v64 = *v63++;
        v61 |= ((v64 >> 2) - v60) << v59++;
        --v62;
      }

      while (v62);
      v65 = v6 + 2;
      v66 = v6;
      do
      {
        v67 = *v39++;
        v61 |= (v67 & 3) << v65;
        v65 += 2;
        --v66;
      }

      while (v66);
      v33 -= 3 * v6 - 4;
      *(a3 + 2) = v35 | (v61 << 7) | v37;
      *(a3 + 3) = v38 & 0xE0 | (v61 >> 1) & 0x1F;
      *(a3 + (v33 >> 3)) = *(a3 + (v33 >> 3)) & ~(~(-1 << (3 * v6 - 4)) << (v33 & 7)) | (((v61 >> 6) & ~(-1 << (3 * v6 - 4))) << (v33 & 7));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v41 = a2[8];
  *(a3 + 1) = v31 | (32 * v41) | v30;
  *(a3 + 2) = v32 & 0xFE | ((v41 & 8) != 0);
  if (v12)
  {
LABEL_30:
    *(a3 + ((v33 - 2) >> 3)) = *(a3 + ((v33 - 2) >> 3)) & ~(3 << ((v33 - 2) & 7)) | ((a2[3] & 3) << ((v33 - 2) & 7));
  }

LABEL_31:
  memset(v68, 0, sizeof(v68));
  v42 = *(a2 + 3);
  v43 = a2[1];
  if (a2[1])
  {
    v44 = 0;
    v45 = 0;
    v46 = a2 + 20;
    do
    {
      v47 = (a2[v44 + 8] >> 1) & 0x7E;
      if (v47 > 6)
      {
        symbolic_to_physical();
      }

      v48 = v47 + 2;
      v49 = v68 + v45;
      v50 = v48;
      v51 = v46;
      do
      {
        v52 = *v51++;
        *v49++ = color_uquant_to_scrambled_pquant_tables[256 * v42 - 1024 + v52];
        --v50;
      }

      while (v50);
      v45 += v48;
      ++v44;
      v46 += 8;
    }

    while (v44 != v43);
  }

  else
  {
    v45 = 0;
  }

  if (v43 == 1)
  {
    v53 = 17;
  }

  else
  {
    v53 = 29;
  }

  return encode_ise(v42, v45, v68, a3, v53);
}

void symbolic_to_physical()
{
  __assert_rtn("symbolic_to_physical", "astcenc_symbolic_physical.cpp", 107, "scb.block_type != SYM_BTYPE_ERROR");
}

{
  __assert_rtn("get_block_mode", "astcenc_internal.h", 638, "packed_index != BLOCK_BAD_BLOCK_MODE && packed_index < this->block_mode_count_all");
}

{
  __assert_rtn("symbolic_to_physical", "astcenc_symbolic_physical.cpp", 276, "vals <= 8");
}

int8x16_t compute_avgs_and_dirs_4_comp(_BYTE *a1, float32x4_t *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_4_comp();
  }

  memset(v34, 0, sizeof(v34));
  compute_partition_averages_rgba(a1, a2, v34);
  v7 = 0;
  v8 = a1 + 224;
  v9 = a1 + 4;
  do
  {
    v10 = v9[v7];
    if (!v9[v7])
    {
      compute_avgs_and_dirs_4_comp();
    }

    v11 = v34[v7];
    v12 = a3 + 32 * v7;
    *v12 = v11;
    v13 = 0uLL;
    v14 = v8;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v14++;
      v19.i32[0] = a2->i32[v18];
      v19.i32[1] = a2[54].i32[v18];
      v19.i32[2] = a2[108].i32[v18];
      v19.i32[3] = a2[162].i32[v18];
      v20 = vsubq_f32(v19, v11);
      v21 = vmovn_s32(vcgtzq_f32(v20));
      v13 = vaddq_f32(v13, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 0))));
      v15 = vaddq_f32(v15, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 1))));
      v16 = vaddq_f32(v16, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 2))));
      v17 = vaddq_f32(v17, vandq_s8(v20, vmovl_s16(vdup_lane_s16(v21, 3))));
      --v10;
    }

    while (v10);
    v22 = vmulq_f32(v13, v13);
    *v22.i8 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), *v22.i8);
    v23 = vdupq_lane_s32(vpadd_f32(*v22.i8, *v22.i8), 0);
    v24 = vmulq_f32(v15, v15);
    *v24.i8 = vadd_f32(*&vextq_s8(v24, v24, 8uLL), *v24.i8);
    v25 = vdupq_lane_s32(vpadd_f32(*v24.i8, *v24.i8), 0);
    v26 = vmulq_f32(v16, v16);
    *v26.i8 = vadd_f32(*&vextq_s8(v26, v26, 8uLL), *v26.i8);
    v27 = vdupq_lane_s32(vpadd_f32(*v26.i8, *v26.i8), 0);
    v28 = vmulq_f32(v17, v17);
    *v28.i8 = vadd_f32(*&vextq_s8(v28, v28, 8uLL), *v28.i8);
    v29 = vcgtq_f32(v25, v23);
    v30 = vbslq_s8(v29, v15, v13);
    v31 = vbslq_s8(v29, v25, v23);
    v32 = vcgtq_f32(v27, v31);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v28.i8, *v28.i8), 0), vbslq_s8(v32, v27, v31)), v17, vbslq_s8(v32, v16, v30));
    *(v12 + 16) = result;
    ++v7;
    v8 += 216;
  }

  while (v7 != v3);
  return result;
}

float32x4_t compute_partition_averages_rgba(_BYTE *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = a2[216].u8[0];
  if (!a2[216].i8[0])
  {
    compute_partition_averages_rgba();
  }

  v4 = *a1;
  switch(v4)
  {
    case 1:
      result = a2[219];
      *a3 = result;
      break;
    case 2:
      v42 = 0;
      v43 = vdupq_n_s32(v3);
      v44 = xmmword_186205980;
      v45 = 0uLL;
      v46.i64[0] = 0x400000004;
      v46.i64[1] = 0x400000004;
      v47 = a2;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v51 = &a1[v42 + 8];
        v52 = vld1_dup_f32(v51);
        v53 = vcgtq_s32(v43, v44);
        v44 = vaddq_s32(v44, v46);
        v54 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v52))), v53);
        v50 = vaddq_f32(v50, vandq_s8(*v47, v54));
        v49 = vaddq_f32(v49, vandq_s8(v47[54], v54));
        v48 = vaddq_f32(v48, vandq_s8(v47[108], v54));
        v45 = vaddq_f32(v45, vandq_s8(v47[162], v54));
        v42 += 4;
        ++v47;
      }

      while (v42 < v3);
      v55 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.f32);
      v56 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.f32);
      v57 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.f32);
      v58 = vpadd_f32(v57, v57);
      v59 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.f32);
      *v60.f32 = vzip1_s32(vpadd_f32(v55, v55), vpadd_f32(v56, v56));
      v60.i64[1] = __PAIR64__(vpadd_f32(v59, v59).u32[0], v58.u32[0]);
      v61 = vsubq_f32(vmulq_n_f32(a2[219], v3), v60);
      v58.i8[0] = a1[4];
      *v58.i32 = v58.u32[0];
      v62 = vdivq_f32(v60, vdupq_lane_s32(v58, 0));
      *a3 = v62;
      v62.i8[0] = a1[5];
      v62.f32[0] = v62.u32[0];
      result = vdivq_f32(v61, vdupq_lane_s32(*v62.f32, 0));
      a3[1] = result;
      break;
    case 3:
      v5 = 0;
      v6 = vdupq_n_s32(v3);
      v7 = 0uLL;
      v8.i64[0] = 0x400000004;
      v8.i64[1] = 0x400000004;
      v9 = 0uLL;
      v10 = xmmword_186205980;
      v11 = a2;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = &a1[v5 + 8];
        v19 = vld1_dup_f32(v18);
        v20 = vmovl_u8(v19).u64[0];
        v21 = vcgtq_s32(v6, v10);
        v10 = vaddq_s32(v10, v8);
        v22 = vandq_s8(vmovl_s16(vceqz_s16(v20)), v21);
        v23 = vandq_s8(vmovl_s16(vceq_s16(v20, 0x1000100010001)), v21);
        v12 = vaddq_f32(v12, vandq_s8(*v11, v22));
        v16 = vaddq_f32(v16, vandq_s8(*v11, v23));
        v24 = v11[54];
        v13 = vaddq_f32(v13, vandq_s8(v24, v22));
        v17 = vaddq_f32(v17, vandq_s8(v24, v23));
        v25 = v11[108];
        v14 = vaddq_f32(v14, vandq_s8(v25, v22));
        v9 = vaddq_f32(v9, vandq_s8(v25, v23));
        v26 = v11[162];
        v15 = vaddq_f32(v15, vandq_s8(v26, v22));
        v7 = vaddq_f32(v7, vandq_s8(v26, v23));
        v5 += 4;
        ++v11;
      }

      while (v5 < v3);
      v27 = vadd_f32(*&vextq_s8(v12, v12, 8uLL), *v12.f32);
      v28 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.f32);
      v29 = vadd_f32(*&vextq_s8(v14, v14, 8uLL), *v14.f32);
      v30 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), *v15.f32);
      *v31.f32 = vzip1_s32(vpadd_f32(v27, v27), vpadd_f32(v28, v28));
      v31.i32[2] = vpadd_f32(v29, v29).u32[0];
      v31.i32[3] = vpadd_f32(v30, v30).u32[0];
      v32 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
      v33 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.f32);
      v34 = vadd_f32(*&vextq_s8(v9, v9, 8uLL), *v9.f32);
      v35 = vpadd_f32(v34, v34);
      v36 = vadd_f32(*&vextq_s8(v7, v7, 8uLL), *v7.f32);
      *v37.f32 = vzip1_s32(vpadd_f32(v32, v32), vpadd_f32(v33, v33));
      v37.i32[2] = v35.i32[0];
      v37.i32[3] = vpadd_f32(v36, v36).u32[0];
      v38 = vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v3), v31), v37);
      v35.i8[0] = a1[4];
      *v35.i32 = v35.u32[0];
      v39 = vdivq_f32(v31, vdupq_lane_s32(v35, 0));
      *a3 = v39;
      v39.i8[0] = a1[5];
      v39.f32[0] = v39.u32[0];
      v40 = vdivq_f32(v37, vdupq_lane_s32(*v39.f32, 0));
      a3[1] = v40;
      v40.i8[0] = a1[6];
      v40.f32[0] = v40.u32[0];
      result = vdivq_f32(v38, vdupq_lane_s32(*v40.f32, 0));
      a3[2] = result;
      break;
    default:
      v63 = 0;
      v64 = vdupq_n_s32(v3);
      v65 = 0uLL;
      v66.i64[0] = 0x400000004;
      v66.i64[1] = 0x400000004;
      v67 = xmmword_186205980;
      v68 = 0uLL;
      v69 = a2;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      do
      {
        v80 = &a1[v63 + 8];
        v81 = vld1_dup_f32(v80);
        v82 = vmovl_u8(v81).u64[0];
        v83 = vcgtq_s32(v64, v67);
        v67 = vaddq_s32(v67, v66);
        v84 = vandq_s8(vmovl_s16(vceqz_s16(v82)), v83);
        v85 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x1000100010001)), v83);
        v86 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x2000200020002)), v83);
        v65 = vaddq_f32(v65, vandq_s8(*v69, v84));
        v72 = vaddq_f32(v72, vandq_s8(*v69, v85));
        v76 = vaddq_f32(v76, vandq_s8(*v69, v86));
        v87 = v69[54];
        v68 = vaddq_f32(v68, vandq_s8(v87, v84));
        v73 = vaddq_f32(v73, vandq_s8(v87, v85));
        v77 = vaddq_f32(v77, vandq_s8(v87, v86));
        v88 = v69[108];
        v70 = vaddq_f32(v70, vandq_s8(v88, v84));
        v74 = vaddq_f32(v74, vandq_s8(v88, v85));
        v78 = vaddq_f32(v78, vandq_s8(v88, v86));
        v89 = v69[162];
        v71 = vaddq_f32(v71, vandq_s8(v89, v84));
        v75 = vaddq_f32(v75, vandq_s8(v89, v85));
        v79 = vaddq_f32(v79, vandq_s8(v89, v86));
        v63 += 4;
        ++v69;
      }

      while (v63 < v3);
      v90 = vadd_f32(*&vextq_s8(v65, v65, 8uLL), *v65.f32);
      v91 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.f32);
      v92 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.f32);
      v93 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.f32);
      *v94.f32 = vzip1_s32(vpadd_f32(v90, v90), vpadd_f32(v91, v91));
      v94.i32[2] = vpadd_f32(v92, v92).u32[0];
      v94.i32[3] = vpadd_f32(v93, v93).u32[0];
      v95 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.f32);
      v96 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.f32);
      v97 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.f32);
      v98 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.f32);
      *v99.f32 = vzip1_s32(vpadd_f32(v95, v95), vpadd_f32(v96, v96));
      v99.i32[2] = vpadd_f32(v97, v97).u32[0];
      v99.i32[3] = vpadd_f32(v98, v98).u32[0];
      v100 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.f32);
      v101 = vadd_f32(*&vextq_s8(v77, v77, 8uLL), *v77.f32);
      v102 = vadd_f32(*&vextq_s8(v78, v78, 8uLL), *v78.f32);
      v103 = vpadd_f32(v102, v102);
      v104 = vadd_f32(*&vextq_s8(v79, v79, 8uLL), *v79.f32);
      *v105.f32 = vzip1_s32(vpadd_f32(v100, v100), vpadd_f32(v101, v101));
      v105.i32[2] = v103.i32[0];
      v105.i32[3] = vpadd_f32(v104, v104).u32[0];
      v106 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v3), v94), v99), v105);
      v103.i8[0] = a1[4];
      *v103.i32 = v103.u32[0];
      v107 = vdivq_f32(v94, vdupq_lane_s32(v103, 0));
      *a3 = v107;
      v107.i8[0] = a1[5];
      v107.f32[0] = v107.u32[0];
      v108 = vdivq_f32(v99, vdupq_lane_s32(*v107.f32, 0));
      a3[1] = v108;
      v108.i8[0] = a1[6];
      v108.f32[0] = v108.u32[0];
      v109 = vdivq_f32(v105, vdupq_lane_s32(*v108.f32, 0));
      a3[2] = v109;
      v109.i8[0] = a1[7];
      v109.f32[0] = v109.u32[0];
      result = vdivq_f32(v106, vdupq_lane_s32(*v109.f32, 0));
      a3[3] = result;
      break;
  }

  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp(_BYTE *a1, float32x4_t *a2, int a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  compute_partition_averages_rgba(a1, a2, &v40);
  v9 = a2 + 54;
  if (a3 == 2)
  {
    v15.i64[0] = v40.i64[0];
    v16.i64[0] = v41.i64[0];
    v15.i64[1] = v40.u32[3];
    v16.i64[1] = v41.u32[3];
    v17.i64[0] = v42.i64[0];
    v18.i64[0] = v43.i64[0];
    v17.i64[1] = v42.u32[3];
    v18.i64[1] = v43.u32[3];
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v12 = 162;
    v10 = a2 + 54;
    goto LABEL_7;
  }

  v10 = a2 + 108;
  if (a3 == 1)
  {
    v13.i64[0] = __PAIR64__(v40.u32[2], v40.u32[0]);
    v13.i64[1] = v40.u32[3];
    v14.i64[0] = __PAIR64__(v41.u32[2], v41.u32[0]);
    v14.i64[1] = v41.u32[3];
    v40 = v13;
    v41 = v14;
    v13.i64[0] = __PAIR64__(v42.u32[2], v42.u32[0]);
    v13.i64[1] = v42.u32[3];
    v14.i64[0] = __PAIR64__(v43.u32[2], v43.u32[0]);
    v14.i64[1] = v43.u32[3];
    v42 = v13;
    v43 = v14;
    v12 = 162;
LABEL_7:
    v9 = a2;
    goto LABEL_9;
  }

  if (a3)
  {
    v40.i32[3] = 0;
    v41.i32[3] = 0;
    v12 = 108;
    v10 = a2 + 54;
    v9 = a2;
    v42.i32[3] = 0;
    v43.i32[3] = 0;
  }

  else
  {
    v11 = vextq_s8(0, 0, 0xCuLL);
    v40 = vextq_s8(v40, v11, 4uLL);
    v41 = vextq_s8(v41, v11, 4uLL);
    v42 = vextq_s8(v42, v11, 4uLL);
    v43 = vextq_s8(v43, v11, 4uLL);
    v12 = 162;
  }

LABEL_9:
  v19 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_3_comp();
  }

  v20 = 0;
  v21 = a1 + 224;
  v22 = a1 + 4;
  v23 = &a2[v12];
  do
  {
    v24 = v22[v20];
    if (!v22[v20])
    {
      compute_avgs_and_dirs_3_comp();
    }

    v25 = *(&v40 + v20);
    v26 = a4 + 32 * v20;
    *v26 = v25;
    v27 = 0uLL;
    v28 = v21;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v31 = *v28++;
      v8.i32[0] = v9->i32[v31];
      v8.i32[1] = v10->i32[v31];
      v8.i32[2] = v23->i32[v31];
      v32 = vsubq_f32(v8, v25);
      v33 = vmovn_s32(vcgtzq_f32(v32));
      v27 = vaddq_f32(v27, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 0))));
      v29 = vaddq_f32(v29, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 1))));
      v8 = vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 2)));
      v30 = vaddq_f32(v30, v8);
      --v24;
    }

    while (v24);
    v34 = vmulq_f32(v27, v27);
    *v34.i8 = vadd_f32(*&vextq_s8(v34, v34, 8uLL), *v34.i8);
    v35 = vdupq_lane_s32(vpadd_f32(*v34.i8, *v34.i8), 0);
    v36 = vmulq_f32(v29, v29);
    *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
    v8 = vdupq_lane_s32(vpadd_f32(*v36.i8, *v36.i8), 0);
    v37 = vmulq_f32(v30, v30);
    *v37.i8 = vadd_f32(*&vextq_s8(v37, v37, 8uLL), *v37.i8);
    v38 = vcgtq_f32(v8, v35);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v37.i8, *v37.i8), 0), vbslq_s8(v38, v8, v35)), v30, vbslq_s8(v38, v29, v27));
    *(v26 + 16) = result;
    ++v20;
    v21 += 216;
  }

  while (v20 != v19);
  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp_rgb(unsigned __int16 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v118 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_3_comp_rgb();
  }

  v9 = 0uLL;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = *(a2 + 3456);
  if (!*(a2 + 3456))
  {
    compute_avgs_and_dirs_3_comp_rgb();
  }

  switch(v8)
  {
    case 1:
      v58 = *(a2 + 3504);
      v58.i32[3] = 0;
      v114 = v58;
      break;
    case 2:
      v40 = 0;
      v41 = vdupq_n_s32(v10);
      v42 = xmmword_186205980;
      v43.i64[0] = 0x400000004;
      v43.i64[1] = 0x400000004;
      v44 = a2;
      v45 = 0uLL;
      v46 = 0uLL;
      do
      {
        v47 = &a1[v40 / 2 + 4];
        v48 = vld1_dup_f32(v47);
        v49 = vcgtq_s32(v41, v42);
        v42 = vaddq_s32(v42, v43);
        v50 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v48))), v49);
        v46 = vaddq_f32(v46, vandq_s8(*v44, v50));
        v45 = vaddq_f32(v45, vandq_s8(v44[54], v50));
        v9 = vaddq_f32(v9, vandq_s8(v44[108], v50));
        v40 += 4;
        ++v44;
      }

      while (v40 < v10);
      v51 = *(a2 + 3504);
      v51.i32[3] = 0;
      *v52.f32 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.f32);
      v52.i32[0] = vpadd_f32(*v52.f32, *v52.f32).u32[0];
      v53 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.f32);
      v54 = vpadd_f32(v53, v53);
      a8 = vextq_s8(v9, v9, 8uLL);
      v55 = vadd_f32(*a8.f32, *v9.f32);
      v52.i32[1] = v54.i32[0];
      v52.i64[1] = vpadd_f32(v55, v55).u32[0];
      v56 = vsubq_f32(vmulq_n_f32(v51, v10), v52);
      v54.i8[0] = *(a1 + 4);
      *v54.i32 = v54.u32[0];
      v57 = vdivq_f32(v52, vdupq_lane_s32(v54, 0));
      v52.i8[0] = *(a1 + 5);
      v52.f32[0] = v52.u32[0];
      v114 = v57;
      v115 = vdivq_f32(v56, vdupq_lane_s32(*v52.f32, 0));
      break;
    case 3:
      v11 = 0;
      v12 = vdupq_n_s32(v10);
      v13.i64[0] = 0x400000004;
      v13.i64[1] = 0x400000004;
      v14 = xmmword_186205980;
      v15 = a2;
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = &a1[v11 / 2 + 4];
        v22 = vld1_dup_f32(v21);
        v23 = vmovl_u8(v22).u64[0];
        v24 = vcgtq_s32(v12, v14);
        v14 = vaddq_s32(v14, v13);
        v25 = vandq_s8(vmovl_s16(vceqz_s16(v23)), v24);
        v26 = vandq_s8(vmovl_s16(vceq_s16(v23, 0x1000100010001)), v24);
        v19 = vaddq_f32(v19, vandq_s8(*v15, v25));
        v17 = vaddq_f32(v17, vandq_s8(*v15, v26));
        v27 = v15[54];
        v20 = vaddq_f32(v20, vandq_s8(v27, v25));
        v16 = vaddq_f32(v16, vandq_s8(v27, v26));
        v28 = v15[108];
        v18 = vaddq_f32(v18, vandq_s8(v28, v25));
        v9 = vaddq_f32(v9, vandq_s8(v28, v26));
        v11 += 4;
        ++v15;
      }

      while (v11 < v10);
      v29 = *(a2 + 3504);
      v29.i32[3] = 0;
      *v30.f32 = vadd_f32(*&vextq_s8(v19, v19, 8uLL), *v19.f32);
      v31 = vadd_f32(*&vextq_s8(v20, v20, 8uLL), *v20.f32);
      v32 = vadd_f32(*&vextq_s8(v18, v18, 8uLL), *v18.f32);
      v30.i32[0] = vpadd_f32(*v30.f32, *v30.f32).u32[0];
      v30.i32[1] = vpadd_f32(v31, v31).u32[0];
      v30.i64[1] = vpadd_f32(v32, v32).u32[0];
      v33 = vmulq_n_f32(v29, v10);
      *v34.f32 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.f32);
      v34.i32[0] = vpadd_f32(*v34.f32, *v34.f32).u32[0];
      v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
      v36 = vpadd_f32(v35, v35);
      a8 = vextq_s8(v9, v9, 8uLL);
      v37 = vadd_f32(*a8.f32, *v9.f32);
      v34.i32[1] = v36.i32[0];
      v34.i64[1] = vpadd_f32(v37, v37).u32[0];
      v38 = vsubq_f32(vsubq_f32(v33, v30), v34);
      v36.i8[0] = *(a1 + 4);
      *v36.i32 = v36.u32[0];
      v39 = vdivq_f32(v30, vdupq_lane_s32(v36, 0));
      v33.i8[0] = *(a1 + 5);
      v33.f32[0] = v33.u32[0];
      v114 = v39;
      v115 = vdivq_f32(v34, vdupq_lane_s32(*v33.f32, 0));
      v39.i8[0] = *(a1 + 6);
      v39.f32[0] = v39.u32[0];
      v116 = vdivq_f32(v38, vdupq_lane_s32(*v39.f32, 0));
      break;
    default:
      v59 = 0;
      v60 = vdupq_n_s32(v10);
      v61 = 0uLL;
      v62.i64[0] = 0x400000004;
      v62.i64[1] = 0x400000004;
      v63 = xmmword_186205980;
      v64 = 0uLL;
      v65 = a2;
      v66 = 0uLL;
      v67 = 0uLL;
      a8 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      do
      {
        v71 = &a1[v59 / 2 + 4];
        v72 = vld1_dup_f32(v71);
        v73 = vmovl_u8(v72).u64[0];
        v74 = vcgtq_s32(v60, v63);
        v63 = vaddq_s32(v63, v62);
        v75 = vandq_s8(vmovl_s16(vceqz_s16(v73)), v74);
        v76 = vandq_s8(vmovl_s16(vceq_s16(v73, 0x1000100010001)), v74);
        v77 = vandq_s8(vmovl_s16(vceq_s16(v73, 0x2000200020002)), v74);
        v61 = vaddq_f32(v61, vandq_s8(*v65, v75));
        v67 = vaddq_f32(v67, vandq_s8(*v65, v76));
        v69 = vaddq_f32(v69, vandq_s8(*v65, v77));
        v78 = v65[54];
        v64 = vaddq_f32(v64, vandq_s8(v78, v75));
        a8 = vaddq_f32(a8, vandq_s8(v78, v76));
        v70 = vaddq_f32(v70, vandq_s8(v78, v77));
        v79 = v65[108];
        v66 = vaddq_f32(v66, vandq_s8(v79, v75));
        v68 = vaddq_f32(v68, vandq_s8(v79, v76));
        v9 = vaddq_f32(v9, vandq_s8(v79, v77));
        v59 += 4;
        ++v65;
      }

      while (v59 < v10);
      v80 = *(a2 + 3504);
      v80.i32[3] = 0;
      *v81.f32 = vadd_f32(*&vextq_s8(v61, v61, 8uLL), *v61.f32);
      v82 = vadd_f32(*&vextq_s8(v64, v64, 8uLL), *v64.f32);
      v83 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), *v66.f32);
      v81.i32[0] = vpadd_f32(*v81.f32, *v81.f32).u32[0];
      v81.i32[1] = vpadd_f32(v82, v82).u32[0];
      v81.i64[1] = vpadd_f32(v83, v83).u32[0];
      *v84.f32 = vadd_f32(*&vextq_s8(v67, v67, 8uLL), *v67.f32);
      v84.i32[0] = vpadd_f32(*v84.f32, *v84.f32).u32[0];
      v85 = vadd_f32(*&vextq_s8(a8, a8, 8uLL), *a8.f32);
      v86 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.f32);
      v84.i32[1] = vpadd_f32(v85, v85).u32[0];
      v84.i64[1] = vpadd_f32(v86, v86).u32[0];
      *v87.f32 = vadd_f32(*&vextq_s8(v69, v69, 8uLL), *v69.f32);
      v87.i32[0] = vpadd_f32(*v87.f32, *v87.f32).u32[0];
      v88 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.f32);
      v89 = vpadd_f32(v88, v88);
      v90 = vextq_s8(v9, v9, 8uLL).u64[0];
      v91 = vadd_f32(v90, *v9.f32);
      v87.i32[1] = v89.i32[0];
      v87.i64[1] = vpadd_f32(v91, v91).u32[0];
      v92 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(v80, v10), v81), v84), v87);
      v89.i8[0] = *(a1 + 4);
      *v89.i32 = v89.u32[0];
      v93 = vdivq_f32(v81, vdupq_lane_s32(v89, 0));
      v90.i8[0] = *(a1 + 5);
      v90.f32[0] = v90.u32[0];
      v114 = v93;
      v115 = vdivq_f32(v84, vdupq_lane_s32(v90, 0));
      v93.i8[0] = *(a1 + 6);
      v93.f32[0] = v93.u32[0];
      v94 = vdivq_f32(v87, vdupq_lane_s32(*v93.f32, 0));
      v87.i8[0] = *(a1 + 7);
      v87.f32[0] = v87.u32[0];
      v116 = v94;
      v117 = vdivq_f32(v92, vdupq_lane_s32(*v87.f32, 0));
      break;
  }

  v95 = 0;
  v96 = a1 + 112;
  v97 = a1 + 2;
  do
  {
    v98 = *(v97 + v95);
    if (!*(v97 + v95))
    {
      compute_avgs_and_dirs_3_comp_rgb();
    }

    v99 = *(&v114 + v95);
    v100 = a3 + 32 * v95;
    *v100 = v99;
    v101 = 0uLL;
    v102 = v96;
    v103 = 0uLL;
    v104 = 0uLL;
    do
    {
      v105 = *v102;
      v102 = (v102 + 1);
      a8.i32[0] = *(a2 + 4 * v105);
      a8.i32[1] = *(a2 + 864 + 4 * v105);
      a8.i32[2] = *(a2 + 1728 + 4 * v105);
      v106 = vsubq_f32(a8, v99);
      v107 = vmovn_s32(vcgtzq_f32(v106));
      v101 = vaddq_f32(v101, vandq_s8(v106, vmovl_s16(vdup_lane_s16(v107, 0))));
      v103 = vaddq_f32(v103, vandq_s8(v106, vmovl_s16(vdup_lane_s16(v107, 1))));
      a8 = vandq_s8(v106, vmovl_s16(vdup_lane_s16(v107, 2)));
      v104 = vaddq_f32(v104, a8);
      --v98;
    }

    while (v98);
    v108 = vmulq_f32(v101, v101);
    *v108.i8 = vadd_f32(*&vextq_s8(v108, v108, 8uLL), *v108.i8);
    v109 = vdupq_lane_s32(vpadd_f32(*v108.i8, *v108.i8), 0);
    v110 = vmulq_f32(v103, v103);
    *v110.i8 = vadd_f32(*&vextq_s8(v110, v110, 8uLL), *v110.i8);
    a8 = vdupq_lane_s32(vpadd_f32(*v110.i8, *v110.i8), 0);
    v111 = vmulq_f32(v104, v104);
    *v111.i8 = vadd_f32(*&vextq_s8(v111, v111, 8uLL), *v111.i8);
    v112 = vcgtq_f32(a8, v109);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v111.i8, *v111.i8), 0), vbslq_s8(v112, a8, v109)), v104, vbslq_s8(v112, v103, v101));
    *(v100 + 16) = result;
    ++v95;
    v96 += 108;
  }

  while (v95 != v8);
  return result;
}

unsigned __int32 *compute_avgs_and_dirs_2_comp(_WORD *a1, int32x4_t *a2, int a3, int a4, uint64_t a5, double a6, __n128 a7, double a8, int8x16_t a9)
{
  if (!a3 && a4 == 1)
  {
    v9 = a2[219];
    v9.i64[1] = 0;
    v10 = 54;
LABEL_7:
    v11 = a2;
    goto LABEL_11;
  }

  if (!a3 && a4 == 2)
  {
    a7 = vzip2q_s32(0, 0);
    v9 = vuzp1q_s32(a2[219], a7);
    v10 = 108;
    goto LABEL_7;
  }

  if (a3 != 1 || a4 != 2)
  {
    compute_avgs_and_dirs_2_comp();
  }

  a7.n128_u64[1] = 0;
  v9 = vextq_s8(a2[219], 0, 4uLL).u64[0];
  v11 = a2 + 54;
  v10 = 108;
LABEL_11:
  v12 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_2_comp();
  }

  v13 = 0;
  v14 = &a2[v10];
  v15 = (a1 + 112);
  v16 = a1 + 2;
  do
  {
    v17 = *(v16 + v13);
    if (!*(v16 + v13))
    {
      compute_avgs_and_dirs_2_comp();
    }

    if (v12 != 1)
    {
      v18 = 0uLL;
      v19 = *(v16 + v13);
      v20 = v15;
      do
      {
        v21 = *v20++;
        a7.n128_u32[0] = v11->u32[v21];
        a7.n128_u32[1] = v14->u32[v21];
        v18 = vaddq_f32(v18, a7);
        --v19;
      }

      while (v19);
      a7.n128_f32[0] = v17;
      v9 = vdivq_f32(v18, vdupq_lane_s32(a7.n128_u64[0], 0));
    }

    v22 = 0;
    v23 = a5 + 32 * v13;
    *v23 = v9;
    v24 = 0uLL;
    v25 = 0uLL;
    do
    {
      v26 = v15[v22];
      result = v11 + v26;
      a9.i32[0] = *result;
      a9.i32[1] = v14->i32[v26];
      v28 = vsubq_f32(a9, v9);
      v29 = vmovn_s32(vcgtzq_f32(v28));
      v24 = vaddq_f32(v24, vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 0))));
      a9 = vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 1)));
      v25 = vaddq_f32(v25, a9);
      ++v22;
    }

    while (v17 != v22);
    v30 = vmulq_f32(v24, v24);
    *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), *v30.i8);
    v31 = vmulq_f32(v25, v25);
    *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
    a9 = vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v31.i8, *v31.i8), vpadd_f32(*v30.i8, *v30.i8)), 0));
    a7 = vbslq_s8(a9, v25, v24);
    *(v23 + 16) = a7;
    ++v13;
    v15 += 216;
  }

  while (v13 != v12);
  return result;
}

float32x2_t compute_error_squared_rgba(_WORD *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v8 = *a1;
  if (!*a1)
  {
    compute_error_squared_rgba();
  }

  v9 = 0;
  v10 = a1 + 112;
  v11 = a1 + 2;
  v12 = a2 + 54;
  v13 = a2 + 108;
  v14 = a2 + 162;
  v15 = 0uLL;
  v16 = vdupq_n_s32(0x501502F9u);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18 = vdupq_n_s32(0xD01502F9);
  v19 = &unk_1EA8DB000;
  v20 = xmmword_186205980;
  v21.i64[0] = 0x400000004;
  v21.i64[1] = 0x400000004;
  v22 = &unk_18622B000;
  v23 = 0uLL;
  do
  {
    v24 = *(v11 + v9);
    if (!*(v11 + v9))
    {
      compute_error_squared_rgba();
    }

    v25 = (a4 + 32 * v9);
    v26 = *v25;
    v27 = v25[1];
    v28 = (a3 + 32 * v9);
    v29 = *v28;
    v30 = *(v28 + 1);
    {
      v85 = a7;
      v77 = a6;
      v84 = a5;
      v76 = a4;
      v83 = a3;
      v75 = a2;
      v82 = v8;
      v74 = v9;
      v81 = v10;
      v73 = v11;
      v80 = v12;
      v72 = v13;
      v78 = v24;
      v79 = v14;
      v70 = v16;
      v71 = v15;
      v68 = v20;
      v69 = v18;
      v67 = v29;
      v66 = v26;
      compute_ideal_colors_and_weights_1plane();
      v26 = v66;
      v29 = v67;
      v20 = v68;
      v21.i64[0] = 0x400000004;
      v21.i64[1] = 0x400000004;
      v18 = v69;
      v16 = v70;
      v17.i64[0] = 0x100000001;
      v17.i64[1] = 0x100000001;
      v15 = v71;
      v24 = v78;
      v14 = v79;
      v22 = &unk_18622B000;
      v19 = &unk_1EA8DB000;
      v13 = v72;
      v11 = v73;
      v12 = v80;
      v10 = v81;
      v9 = v74;
      a2 = v75;
      v8 = v82;
      a3 = v83;
      a4 = v76;
      a6 = v77;
      a5 = v84;
      a7 = v85;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v26), v17), v19[116])) != 15)
    {
      compute_error_squared_rgba();
    }

    v31 = 0;
    v32 = vdupq_lane_s32(*v29.i8, 0);
    v33 = vdupq_lane_s32(*v29.i8, 1);
    v34 = vdupq_laneq_s32(v29, 2);
    v35 = vdupq_laneq_s32(v29, 3);
    v36 = a2[221];
    v37 = v20;
    v38 = v18;
    v39 = v16;
    v40 = vdupq_n_s32(v24);
    do
    {
      v7.i32[0] = *&v10[v31 / 2];
      v41 = vmovl_u16(*&vmovl_u8(*v7.f32));
      v42 = v41.u32[1];
      v43 = v41.u32[2];
      v44 = v41.u32[3];
      v45 = v41.i32[0];
      v41.i32[0] = a2->i32[v41.u32[0]];
      v46 = &v12->i32[v41.u32[1]];
      v41.i32[1] = a2->i32[v41.u32[1]];
      v47.i32[0] = v12->i32[v45];
      v47.i32[1] = *v46;
      v41.i32[2] = a2->i32[v41.u32[2]];
      v48 = &v12->i32[v41.u32[3]];
      v47.i32[2] = v12->i32[v43];
      v41.i32[3] = a2->i32[v41.u32[3]];
      v49.i32[0] = v13->i32[v45];
      v47.i32[3] = *v48;
      v49.i32[1] = v13->i32[v42];
      v49.i32[2] = v13->i32[v43];
      v50.i32[0] = v14->i32[v45];
      v49.i32[3] = v13->i32[v44];
      v50.i32[1] = v14->i32[v42];
      v50.i32[2] = v14->i32[v43];
      v50.i32[3] = v14->i32[v44];
      v51 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v41, v30.f32[0]), vmulq_lane_f32(v47, *v30.f32, 1)), vmulq_laneq_f32(v49, v30, 2)), vmulq_laneq_f32(v50, v30, 3));
      v39 = vminnmq_f32(v51, v39);
      v38 = vmaxnmq_f32(v51, v38);
      v52 = vaddq_f32(vsubq_f32(v32, v41), vmulq_n_f32(v51, v30.f32[0]));
      v53 = vaddq_f32(vsubq_f32(v33, v47), vmulq_lane_f32(v51, *v30.f32, 1));
      v54 = vaddq_f32(vsubq_f32(v34, v49), vmulq_laneq_f32(v51, v30, 2));
      v55 = vaddq_f32(vsubq_f32(v35, v50), vmulq_laneq_f32(v51, v30, 3));
      v56 = vcgtq_s32(v40, v37);
      v57 = vaddq_f32(vmulq_f32(v52, vmulq_n_f32(v52, v36.f32[0])), vmulq_f32(v53, vmulq_lane_f32(v53, *v36.f32, 1)));
      v58 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v41, v27.f32[0]), vmulq_lane_f32(v47, *v27.f32, 1)), vmulq_laneq_f32(v49, v27, 2)), vmulq_laneq_f32(v50, v27, 3));
      v59 = vsubq_f32(vmulq_n_f32(v58, v27.f32[0]), v41);
      v60 = vsubq_f32(vmulq_lane_f32(v58, *v27.f32, 1), v47);
      v61 = vsubq_f32(vmulq_laneq_f32(v58, v27, 2), v49);
      v62 = vsubq_f32(vmulq_laneq_f32(v58, v27, 3), v50);
      v23 = vaddq_f32(v23, vandq_s8(vaddq_f32(vmulq_f32(v55, vmulq_laneq_f32(v55, v36, 3)), vaddq_f32(vmulq_f32(v54, vmulq_laneq_f32(v54, v36, 2)), v57)), v56));
      v7 = vandq_s8(vaddq_f32(vmulq_f32(v62, vmulq_laneq_f32(v62, v36, 3)), vaddq_f32(vmulq_f32(v61, vmulq_laneq_f32(v61, v36, 2)), vaddq_f32(vmulq_f32(v59, vmulq_n_f32(v59, v36.f32[0])), vmulq_f32(v60, vmulq_lane_f32(v60, *v36.f32, 1))))), v56);
      v15 = vaddq_f32(v15, v7);
      v37 = vaddq_s32(v37, v21);
      v31 += 4;
    }

    while (v31 < v24);
    *(a5 + 4 * v9++) = fmaxf(vmaxvq_f32(v38) - vminvq_f32(v39), v22[359]);
    v10 += 108;
  }

  while (v9 != v8);
  v63 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), *v23.f32);
  *a6 = vpadd_f32(v63, v63).u32[0];
  v64 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), *v15.f32);
  result = vpadd_f32(v64, v64);
  *a7 = result.i32[0];
  return result;
}

float32x2_t compute_error_squared_rgb(_WORD *a1, float32x4_t *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v6 = *a1;
  if (!*a1)
  {
    compute_error_squared_rgb();
  }

  v7 = 0;
  v8 = a1 + 112;
  v9 = a1 + 2;
  v10 = a2 + 54;
  v11 = a2 + 108;
  v12 = 0uLL;
  v13 = vdupq_n_s32(0x501502F9u);
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  v15 = vdupq_n_s32(0xD01502F9);
  v16 = &unk_1EA8DB000;
  v17 = xmmword_186205980;
  v18.i64[0] = 0x400000004;
  v18.i64[1] = 0x400000004;
  v19 = &unk_18622B000;
  v20 = 0uLL;
  do
  {
    v21 = *(v9 + v7);
    if (!*(v9 + v7))
    {
      compute_error_squared_rgb();
    }

    v22 = a3 + 144 * v7;
    v23 = *(v22 + 64);
    v24 = *(v22 + 80);
    v25 = *(v22 + 96);
    v26 = *(v22 + 112);
    {
      v74 = a3;
      v75 = a5;
      v68 = a2;
      v69 = a4;
      v73 = v6;
      v67 = v7;
      v72 = v8;
      v66 = v9;
      v71 = v10;
      v65 = v11;
      v76 = a3 + 144 * v7;
      v70 = v21;
      v63 = v13;
      v64 = v12;
      v61 = v17;
      v62 = v15;
      v59 = v24;
      v60 = v20;
      v58 = v23;
      v57 = v25;
      compute_ideal_colors_and_weights_1plane();
      v25 = v57;
      v23 = v58;
      v24 = v59;
      v20 = v60;
      v17 = v61;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      v15 = v62;
      v13 = v63;
      v14.i64[0] = 0x100000001;
      v14.i64[1] = 0x100000001;
      v12 = v64;
      v21 = v70;
      v10 = v71;
      a5 = v75;
      v22 = v76;
      v19 = &unk_18622B000;
      v16 = &unk_1EA8DB000;
      v11 = v65;
      v9 = v66;
      v8 = v72;
      v6 = v73;
      v7 = v67;
      a2 = v68;
      a4 = v69;
      a3 = v74;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v25), v14), v16[116])) != 15)
    {
      compute_error_squared_rgb();
    }

    v27 = 0;
    v28 = vdupq_lane_s32(*v23.i8, 0);
    v29 = vdupq_lane_s32(*v23.i8, 1);
    v30 = vdupq_laneq_s32(v23, 2);
    v31 = a2[221];
    v32 = v17;
    v33 = v15;
    v34 = v13;
    v35 = vdupq_n_s32(v21);
    do
    {
      v5.i32[0] = *&v8[v27 / 2];
      v36 = vmovl_u16(*&vmovl_u8(*v5.f32));
      v37 = v36.u32[2];
      v38 = v36.u32[1];
      v39 = v36.u32[3];
      v40 = v36.i32[0];
      v36.i32[0] = a2->i32[v36.u32[0]];
      v36.i32[1] = a2->i32[v36.u32[1]];
      v41.i32[0] = v10->i32[v40];
      v36.i32[2] = a2->i32[v36.u32[2]];
      v41.i32[1] = v10->i32[v38];
      v42 = &v10->i32[v36.u32[3]];
      v36.i32[3] = a2->i32[v36.u32[3]];
      v41.i32[2] = v10->i32[v37];
      v41.i32[3] = *v42;
      v43.i32[0] = v11->i32[v40];
      v43.i32[1] = v11->i32[v38];
      v43.i32[2] = v11->i32[v37];
      v43.i32[3] = v11->i32[v39];
      v44 = vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v24.f32[0]), vmulq_lane_f32(v41, *v24.f32, 1)), vmulq_laneq_f32(v43, v24, 2));
      v34 = vminnmq_f32(v44, v34);
      v33 = vmaxnmq_f32(v44, v33);
      v45 = vaddq_f32(vsubq_f32(v28, v36), vmulq_n_f32(v44, v24.f32[0]));
      v46 = vaddq_f32(vsubq_f32(v29, v41), vmulq_lane_f32(v44, *v24.f32, 1));
      v47 = vaddq_f32(vsubq_f32(v30, v43), vmulq_laneq_f32(v44, v24, 2));
      v48 = vcgtq_s32(v35, v32);
      v49 = vaddq_f32(vmulq_f32(v45, vmulq_n_f32(v45, v31.f32[0])), vmulq_f32(v46, vmulq_lane_f32(v46, *v31.f32, 1)));
      v50 = vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v26.f32[0]), vmulq_lane_f32(v41, *v26.f32, 1)), vmulq_laneq_f32(v43, v26, 2));
      v51 = vsubq_f32(vmulq_n_f32(v50, v26.f32[0]), v36);
      v52 = vsubq_f32(vmulq_lane_f32(v50, *v26.f32, 1), v41);
      v53 = vsubq_f32(vmulq_laneq_f32(v50, v26, 2), v43);
      v20 = vaddq_f32(v20, vandq_s8(vaddq_f32(vmulq_f32(v47, vmulq_laneq_f32(v47, v31, 2)), v49), v48));
      v5 = vandq_s8(vaddq_f32(vmulq_f32(v53, vmulq_laneq_f32(v53, v31, 2)), vaddq_f32(vmulq_f32(v51, vmulq_n_f32(v51, v31.f32[0])), vmulq_f32(v52, vmulq_lane_f32(v52, *v31.f32, 1)))), v48);
      v12 = vaddq_f32(v12, v5);
      v32 = vaddq_s32(v32, v18);
      v27 += 4;
    }

    while (v27 < v21);
    *(v22 + 128) = fmaxf(vmaxvq_f32(v33) - vminvq_f32(v34), v19[359]);
    ++v7;
    v8 += 108;
  }

  while (v7 != v6);
  v54 = vadd_f32(*&vextq_s8(v20, v20, 8uLL), *v20.f32);
  *a4 = vpadd_f32(v54, v54).u32[0];
  v55 = vadd_f32(*&vextq_s8(v12, v12, 8uLL), *v12.f32);
  result = vpadd_f32(v55, v55);
  *a5 = result.i32[0];
  return result;
}

void compute_avgs_and_dirs_4_comp()
{
  __assert_rtn("compute_avgs_and_dirs_4_comp", "astcenc_averages_and_directions.cpp", 404, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_4_comp", "astcenc_averages_and_directions.cpp", 394, "partition_count > 0");
}

void compute_avgs_and_dirs_3_comp()
{
  __assert_rtn("compute_avgs_and_dirs_3_comp", "astcenc_averages_and_directions.cpp", 519, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_3_comp", "astcenc_averages_and_directions.cpp", 513, "partition_count > 0");
}

void compute_avgs_and_dirs_3_comp_rgb()
{
  __assert_rtn("compute_avgs_and_dirs_3_comp_rgb", "astcenc_averages_and_directions.cpp", 584, "texel_count > 0");
}

{
  __assert_rtn("compute_partition_averages_rgb", "astcenc_averages_and_directions.cpp", 54, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_3_comp_rgb", "astcenc_averages_and_directions.cpp", 574, "partition_count > 0");
}

void compute_avgs_and_dirs_2_comp()
{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 659, "component1 == 1 && component2 == 2");
}

{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 674, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 668, "partition_count > 0");
}

void compute_error_squared_rgba()
{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 764, "all(l_samec.amod == vfloat4(0.0f))");
}

{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 746, "texel_count > 0");
}

{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 733, "partition_count > 0");
}

void compute_error_squared_rgb()
{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 879, "all(l_samec.amod == vfloat4(0.0f))");
}

{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 861, "texel_count > 0");
}

{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 851, "partition_count > 0");
}

unint64_t compress_block(int *a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v7 = a1;
  v254 = *MEMORY[0x1E69E9840];
  v8 = 30720.0;
  if (!*(a2 + 3769))
  {
    v8 = 65535.0;
  }

  if (*(a2 + 3500) == v8)
  {
    v9 = *(a2 + 3532);
    v180 = (a2 + 3552);
    if (v9 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 3552);
    }

    if ((*(a2 + 3552) & (v9 == v8)) != 0)
    {
      v11 = 0.66667;
    }

    else
    {
      v11 = 1.0;
    }
  }

  else
  {
    v180 = (a2 + 3552);
    v10 = *(a2 + 3552);
    v11 = 1.0;
  }

  v12 = *(a1 + 14);
  v13 = *a1;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  memset(v227, 0, sizeof(v227));
  v178 = a1[11];
  v225 = *(a1 + 6);
  v226 = a1[14];
  v223 = *(a1 + 9);
  v224 = a1[20];
  v14 = *(a2 + 3488);
  v15 = *(a2 + 3520);
  {
    v204 = v15;
    v205 = v14;
    compute_ideal_colors_and_weights_1plane();
    v15 = v204;
    v14 = v205;
  }

  v16 = vceqq_f32(v14, v15);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)) == 15)
  {
    BYTE1(v227[0]) = 0;
    v18 = *(a2 + 3472);
    if ((v13 & 0xFFFFFFFE) == 2)
    {
      v19 = vmovl_u16(vcvt_f16_f32(v18));
      v20 = 1;
    }

    else
    {
      __asm { FMOV            V1.4S, #1.0 }

      v30 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18, 0), _Q1), vdupq_n_s32(0x477FFF00u));
      _Q1.i64[0] = 0x3F0000003F000000;
      _Q1.i64[1] = 0x3F0000003F000000;
      v19 = vcvtq_s32_f32(vaddq_f32(v30, _Q1));
      v20 = 2;
    }

    LOBYTE(v227[0]) = v20;
    *(&v227[1] + 4) = v19;
    v31 = v12;
    v32 = a3;
    return symbolic_to_physical(v31, v227, v32);
  }

  if (v10)
  {
    v21 = 0.95238;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(a2 + 3536);
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  *v22.i8 = vadd_f32(v23, *v22.i8);
  v23.i8[0] = *(v12 + 3);
  v24 = *(v7 + 21) * (v23.u32[0] * vpadd_f32(*v22.i8, *v22.i8).f32[0]);
  LODWORD(v227[1]) = 1900671690;
  LOBYTE(v227[0]) = 0;
  v222 = xmmword_18622EEE0;
  v220 = *(v7 + 23);
  v219 = 0;
  v221 = 0;
  v218[0] = 1.0 / *(v7 + 22);
  v218[1] = 1.0;
  if ((atomic_load_explicit(&qword_1ED56A258, memory_order_acquire) & 1) == 0)
  {
    compress_block(v7 + 22);
  }

  v191 = a2;
  v177 = a3;
  v25 = *(v7 + 26) < 0.85 || *(v12 + 2) != 1;
  v33 = v21 * (v11 * v24);
  v183 = v12 + 11304944;
  v184 = v12;
  v34 = *&v222;
  *v206 = v7;
  do
  {
    v35 = v25;
    v36 = v33 * v218[v25];
    v37 = compress_symbolic_block_for_partition_1plane(v7, v12, v191, !v25, 1u, 0, v227, a4, v36 * *&_MergedGlobals_11, 11);
    v40 = *(v12 + 11300848 + 2 * WORD2(v227[0]));
    if (v40 == 0xFFFF || *(v12 + 28) <= v40)
    {
      symbolic_to_physical();
    }

    if (v37 < v36)
    {
      goto LABEL_132;
    }

    if (v34 >= v37)
    {
      v34 = v37;
    }

    v25 = 1;
    v7 = *v206;
  }

  while (!v35);
  v179 = *(v183 + 6 * *(v12 + 11300848 + 2 * WORD2(v227[0])) + 3);
  *&v222 = v34;
  v41 = *(v12 + 3);
  if (!*(v12 + 3))
  {
    compress_block();
  }

  v42 = v191;
  v43 = vadd_f32(*&vextq_s8(*(v191 + 3536), *(v191 + 3536), 8uLL), *(v191 + 3536));
  v44 = 0.25 * vpadd_f32(v43, v43).f32[0];
  if (v44 < 0.0)
  {
    compress_block();
  }

  v45 = 0uLL;
  _D4 = 0;
  v47 = 0.0;
  _D6 = 0;
  v49.i64[0] = 0;
  v38.i64[0] = 0;
  do
  {
    v47 = v44 + v47;
    v50 = v42[432];
    _Q19.i32[0] = v42[648];
    _D20.i32[0] = v42[216];
    _D20.i32[1] = *v42++;
    *_Q21.f32 = vmul_n_f32(_D20, v44);
    __asm { FMLA            S2, S17, V21.S[1] }

    _D6 = vadd_f32(_D6, *_Q21.f32);
    *v49.f32 = vmla_f32(*v49.f32, *_Q21.f32, _D20);
    v54 = _Q19;
    v54.i32[1] = v50;
    _D20 = vmul_n_f32(*v54.i8, v44);
    __asm { FMLA            S1, S19, V20.S[1] }

    _Q19.i32[1] = v50;
    _Q21.i64[1] = _Q21.i64[0];
    v45 = vmlaq_f32(v45, _Q21, vzip1q_s32(_Q19, _Q19));
    _D4 = vadd_f32(_D4, _D20);
    *v38.i8 = vmla_f32(*v38.i8, _D20, *v54.i8);
    --v41;
  }

  while (v41);
  v57 = 1.0 / fmaxf(v47, 0.0000001);
  *v58.f32 = vneg_f32(_D6);
  *v54.i8 = vneg_f32(_D4);
  *v59.f32 = vmul_n_f32(_D6, v57);
  _S19 = v59.i32[1];
  v59.i64[1] = v59.i64[0];
  __asm { FMLS            S2, S19, V6.S[0] }

  v58.i64[1] = v58.i64[0];
  v49.i64[1] = v49.i64[0];
  v62 = vmlaq_f32(v49, v59, v58);
  v63 = vmul_n_f32(_D4, v57);
  _S7 = v63.i32[1];
  __asm { FMLS            S1, S7, V4.S[0] }

  *v38.i8 = vmls_f32(*v38.i8, v63, _D4);
  v66 = _S2 * (1.0 / sqrtf(vmuls_lane_f32(v62.f32[0], *v62.f32, 1)));
  v67 = vsqrtq_f32(vmulq_f32(v62, vzip1q_s32(v38, v38)));
  __asm { FMOV            V5.4S, #1.0 }

  v174 = _Q5;
  v69 = vmulq_f32(vmlaq_f32(v45, v59, vzip1q_s32(v54, v54)), vdivq_f32(_Q5, v67));
  v70 = _S1 * (1.0 / sqrtf(vmuls_lane_f32(*v38.i32, *v38.i8, 1)));
  v71 = vmovn_s32(vmvnq_s8(vceqq_f32(v69, v69)));
  v72 = fabsf(v66);
  v73 = fabsf(v69.f32[3]);
  if (v71.i8[6])
  {
    v73 = 1.0;
  }

  if (v72 >= v73)
  {
    v72 = v73;
  }

  v74 = fabsf(v69.f32[1]);
  if (v71.i8[2])
  {
    v74 = 1.0;
  }

  if (v72 >= v74)
  {
    v72 = v74;
  }

  v75 = fabsf(v69.f32[2]);
  if (v71.i8[4])
  {
    v75 = 1.0;
  }

  if (v72 >= v75)
  {
    v72 = v75;
  }

  v76 = fabsf(v69.f32[0]);
  if (v71.i8[0])
  {
    v76 = 1.0;
  }

  if (v72 < v76)
  {
    v76 = v72;
  }

  v77 = fabsf(v70);
  if (v76 >= v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = v76;
  }

  v79 = v179;
  if (v179 >= 11)
  {
    v79 = 11;
  }

  i64 = a4[236].i64;
  v192 = a4 + 1628;
  v181 = v79;
  v182 = ~(-2 << v79);
  v193 = a4;
  v194 = (v12 + 592);
  v175 = (v12 + 68);
  v173 = v12 + 11304949;
  v80 = 3;
  v81 = &off_186205000;
  v82 = *(*v206 + 100);
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  while (1)
  {
    v84 = v80;
    if (v78 <= v82 && (v80 == 3 || (*v180 & 1) == 0))
    {
      v85 = *(v191 + 3488);
      v86 = *(v191 + 3520);
      {
        v199 = v86;
        v203 = v85;
        compress_block();
        v86 = v199;
        v85 = v203;
        v83.i64[0] = 0x100000001;
        v83.i64[1] = 0x100000001;
      }

      v87 = vceqq_s32(vdupq_n_s32(v84), v81[152]);
      if (!vaddvq_s32(vshlq_u32(vandq_s8(vandq_s8(vceqq_f32(v85, v86), v83), v87), mask(vmask4)::shift)))
      {
        break;
      }
    }

LABEL_130:
    v80 = v84 - 1;
    if (!v84)
    {
      goto LABEL_131;
    }
  }

  if (!*(*v206 + 68))
  {
    compress_block();
  }

  if (!*(*v206 + 64))
  {
    compress_block();
  }

  if (!*(v184 + 2))
  {
    compress_block();
  }

  v185 = v87;
  v88 = *&_MergedGlobals_11;
  v195 = v84;
  compute_ideal_colors_and_weights_2planes(v184, v191, v84, a4, a4[118].i64);
  v89 = *(v184 + 2);
  if (v89)
  {
    v90 = 0;
    v91 = 0;
    v92 = v175;
    v93 = v194;
    do
    {
      v94 = *v92;
      v92 += 3;
      if ((v94 & v182) != 0)
      {
        compute_ideal_weights_for_decimation(a4->i32, v93, (i64 + 4 * (v90 & 0xFFFFFFC0)));
        compute_ideal_weights_for_decimation(a4[118].i32, v93, (i64 + 4 * (v90 & 0xFFFFFFC0) + 128));
        v89 = *(v184 + 2);
      }

      ++v91;
      v90 += 64;
      v93 += 8118;
    }

    while (v91 < v89);
  }

  v196 = a4[6];
  v200 = a4[2];
  v188 = a4[120];
  v176 = a4[124];
  compute_angular_endpoints_2planes(v184, i64, v181, a4);
  v95 = *(v184 + 5);
  v96 = *(v184 + 6);
  if (v96 > v95)
  {
    v97 = vdivq_f32(vsubq_f32(v174, v188), vsubq_f32(v176, v188));
    v98.i64[0] = 0x3F0000003F000000;
    v98.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V2.4S, #10.0 }

    v100 = vdupq_n_s32(0x7149F2CAu);
    v97.f32[0] = vminvq_f32(vbslq_s8(v185, vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v97, v98)), vcgtq_f32(_Q2, v97)), _Q2, v97), v100));
    v101 = vdivq_f32(vsubq_f32(v174, v200), vsubq_f32(v196, v200));
    v102 = vmvnq_s8(vcgtq_f32(v101, v98));
    v103 = vcgtq_f32(_Q2, v101);
    v104 = vornq_s8(v102, v103);
    v106 = vbslq_s8(v104, _Q2, v101);
    v105 = vbslq_s8(v185, v100, v106);
    v106.i32[0] = 1065520988;
    v107 = vminvq_f32(v105) * 1.02;
    v108 = v97.f32[0] * 1.02;
    v109 = 4 * v95 + 179648;
    v110 = v96 - v95;
    v111 = 4 * v95 + 209792;
    v112 = v95 << 6;
    v113 = 4 * v95 + 217984;
    v114 = 4 * v95 + 196032;
    v115 = v95 + 177600;
    v116 = (v173 + 6 * v95);
    v117 = v116;
    do
    {
      v118 = *v117;
      v117 += 6;
      if ((v118 & 1) == 0)
      {
        compress_block();
      }

      if (v181 >= *(v116 - 2))
      {
        a4->i8[v115] = 109 - *(v116 - 1);
        v105.i32[0] = *(a4->i32 + v114);
        if (v105.f32[0] > v107)
        {
          *(a4->i32 + v114) = 1065353216;
          v105.i32[0] = 1.0;
        }

        if (*(a4->i32 + v113) > v108)
        {
          *(a4->i32 + v113) = 1065353216;
        }

        v119 = *(v116 - 3);
        v197 = &v194[8118 * v119];
        memset(v253, 0, sizeof(v253));
        v252 = 0u;
        v251 = 0u;
        v250 = 0u;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v201 = (a4->i32 + v109);
        v245 = 0u;
        v189 = (i64 + (v119 << 8));
        compute_quantized_weights_for_decimation(v197, v189, &v245, v192->i64 + (v112 & 0xFFFFFFC0), *(v116 - 2), *(a4[512].i32 + v109), *v105.i64, *v106.i64, *v101.i64, *v104.i64, *v103.i64);
        LODWORD(v120) = *(v193->i32 + v113);
        a4 = v193;
        compute_quantized_weights_for_decimation(v197, v189 + 8, v253, v192[2].i64 + (v112 & 0xFFFFFFC0), *(v116 - 2), *(v193->f32 + v111), v120, v121, v122, v123, v124);
        *v201 = compute_error_of_weight_set_2planes(v193, v193 + 118, v197, &v245, v253, v125, v126, v127).u32[0];
      }

      else
      {
        *(a4->i32 + v109) = 2123789977;
      }

      v109 += 4;
      v111 += 4;
      v112 += 64;
      v113 += 4;
      v114 += 4;
      ++v115;
      v116 = v117;
      --v110;
    }

    while (v110);
  }

  memset(v244, 0, sizeof(v244));
  memset(v243, 0, sizeof(v243));
  memset(v242, 0, sizeof(v242));
  memset(v241, 0, sizeof(v241));
  v253[0] = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v245 = 0u;
  if (a4[1].i32[0] != 1)
  {
    compress_block();
  }

  v245.i32[0] = 1;
  v128 = vbslq_s8(v185, a4[124], a4[6]);
  v246 = vbslq_s8(v185, a4[120], a4[2]);
  v250 = v128;
  partition_info = block_size_descriptor::get_partition_info(v184, 1u, 0);
  v130 = *v206;
  v190 = compute_ideal_endpoint_formats(partition_info, v191, &v245, a4[11100].i64, a4[11228].i64, *(*v206 + 68), *(v184 + 5), *(v184 + 6), v244, v243, v242, v241, a4);
  if (v190)
  {
    v131 = 0;
    v132 = v33 * v88;
    v133 = *&v227[1];
    v134 = 1.0e30;
    do
    {
      v135 = *(v243 + v131);
      if (v135 < *(v184 + 5) || v135 >= *(v184 + 6))
      {
        compress_block();
      }

      v137 = *(v243 + v131);
      v202 = v183 + 6 * v135;
      v138 = &v194[8118 * *(v202 + 2)];
      v139 = *(v138 + 2);
      if (!*(v138 + 2))
      {
        compress_block();
      }

      v217 = 0uLL;
      v140 = v131;
      v216 = 0uLL;
      v240 = 0;
      v238 = 0u;
      v239 = 0u;
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v233 = 0u;
      v213 = v251;
      v214 = v252;
      v215 = v253[0];
      v209 = v247;
      v210 = v248;
      v211 = v249;
      v212 = v250;
      v141 = &v192[2].i8[v137 << 6];
      v142 = &v238 + 4;
      v207 = v245;
      v208 = v246;
      do
      {
        *(v142 - 32) = *(v141 - 32);
        v143 = *v141++;
        *v142++ = v143;
        --v139;
      }

      while (v139);
      if (v130[16])
      {
        v186 = v131;
        v198 = v244 + 4 * v131;
        v144 = 1;
        v145 = -1;
        while (1)
        {
          recompute_ideal_colors_2planes(v191, v184, v138, &v236 + 4, &v238 + 4, &v207, &v217, &v216, v195);
          BYTE8(v233) = pack_color_endpoints(*v198, &v234 + 4, *(v242 + v140), v208, v212, v217, v216, v146, v147, v148);
          WORD3(v233) = 0;
          HIDWORD(v233) = *(v242 + v140);
          BYTE2(v233) = 0;
          WORD2(v233) = *v202;
          BYTE3(v233) = v195;
          LOWORD(v233) = 259;
          if (v144 != 1)
          {
            goto LABEL_106;
          }

          v149 = compute_symbolic_block_difference_2plane(v130, v184, &v233, v191);
          if (v149 == -1.0e30)
          {
            LOBYTE(v233) = 0;
            v149 = 1.0e30;
          }

          if (v149 < v134)
          {
            v134 = v149;
          }

          if (v149 > (v133 * ((v130[16] * 0.045) + 1.08)))
          {
            goto LABEL_123;
          }

          if (v149 < v133)
          {
            *&v234 = v149;
            v229 = v237;
            v230 = v238;
            v231 = v239;
            v232 = v240;
            v227[2] = v235;
            v228 = v236;
            v227[0] = v233;
            v227[1] = v234;
            if (v149 < v132)
            {
              v133 = v149;
              v131 = v190;
              goto LABEL_125;
            }
          }

          else
          {
LABEL_106:
            v149 = v133;
          }

          v150 = *v130;
          if (*(v138 + 2) == *(v184 + 3))
          {
            v151 = realign_weights_undecimated(v150, v184, v191, &v233);
          }

          else
          {
            v151 = realign_weights_decimated(v150, v184, v191, &v233);
          }

          v152 = v151;
          v153 = compute_symbolic_block_difference_2plane(*v206, v184, &v233, v191);
          if (v153 == -1.0e30)
          {
            LOBYTE(v233) = 0;
            v153 = 1.0e30;
          }

          if (v153 < v134)
          {
            v134 = v153;
          }

          v154 = *(*v206 + 64);
          if (v153 > (v149 * (((v145 + v154) * 0.045) + 1.0)))
          {
            v133 = v149;
            v130 = *v206;
LABEL_123:
            v131 = v186;
            goto LABEL_125;
          }

          v133 = v149;
          if (v153 < v149)
          {
            *&v234 = v153;
            v229 = v237;
            v230 = v238;
            v231 = v239;
            v227[2] = v235;
            v228 = v236;
            v227[0] = v233;
            v227[1] = v234;
            v133 = v153;
            v232 = v240;
            if (v153 < v132)
            {
              break;
            }
          }

          if (v144 < v154)
          {
            v155 = v152;
          }

          else
          {
            v155 = 0;
          }

          ++v144;
          --v145;
          v130 = *v206;
          if ((v155 & 1) == 0)
          {
            goto LABEL_123;
          }
        }

        v133 = v153;
        v131 = v190;
        v130 = *v206;
      }

LABEL_125:
      ++v131;
    }

    while (v131 < v190);
  }

  else
  {
    v134 = 1.0e30;
  }

  a4 = v193;
  v81 = &off_186205000;
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  if (v134 <= (*&v222 * 1.85))
  {
    v84 = v195;
    if (v134 < v33)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

LABEL_131:
  if (v178 >= 2)
  {
    v159 = 2;
    v160 = 0uLL;
    while (1)
    {
      v245 = v160;
      v246 = v160;
      v161 = 4 * v159 - 8;
      v162 = *(&v225 + v161);
      v163 = *(&v223 + v161) >= v162 ? *(&v225 + v161) : *(&v223 + v161);
      best_partition_candidates = find_best_partition_candidates(v184, v191, v159, v162, &v245, v163);
      v165 = *(&v222 + v161);
      v166 = v159 - 1;
      if (best_partition_candidates)
      {
        break;
      }

      v171 = *(&v219 + v166);
      v170 = *(&v222 + v166);
LABEL_149:
      _ZF = v170 > (v165 * v171) || ++v159 == v178 + 1;
      v160 = 0uLL;
      if (_ZF)
      {
        goto LABEL_132;
      }
    }

    v167 = 0;
    v168 = 4 * best_partition_candidates;
    while (1)
    {
      v169 = compress_symbolic_block_for_partition_1plane(*v206, v184, v191, 0, v159, v245.i32[v167 / 4], v227, v193, v33 * *&_MergedGlobals_11, v179);
      v170 = *(&v222 + v166);
      if (v170 >= v169)
      {
        v170 = v169;
      }

      *(&v222 + v166) = v170;
      v171 = *(&v219 + v166);
      if (v170 > (v165 * (v171 * 1.85)) || v169 < v33)
      {
        break;
      }

      v167 += 4;
      if (v168 == v167)
      {
        goto LABEL_149;
      }
    }
  }

LABEL_132:
  if (!LOBYTE(v227[0]))
  {
    LOBYTE(v227[0]) = 2;
    __asm { FMOV            V1.4S, #1.0 }

    v157 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*(v191 + 3472), 0), _Q1), vdupq_n_s32(0x477FFF00u));
    _Q1.i64[0] = 0x3F0000003F000000;
    _Q1.i64[1] = 0x3F0000003F000000;
    *(&v227[1] + 4) = vcvtq_s32_f32(vaddq_f32(v157, _Q1));
  }

  v31 = v184;
  v32 = v177;
  return symbolic_to_physical(v31, v227, v32);
}

float compress_symbolic_block_for_partition_1plane(unsigned int *a1, block_size_descriptor *this, uint64_t a3, int a4, unsigned int a5, __int16 a6, uint64_t a7, _BYTE *a8, float a9, int a10)
{
  v170 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (!a1[17])
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (!a1[16])
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (a10 >= 11)
  {
    v16 = 11;
  }

  else
  {
    v16 = a10;
  }

  _ZF = (a1[1] & 0x40) == 0 && a5 == 1;
  v18 = compute_symbolic_block_difference_1plane;
  if (_ZF)
  {
    v18 = compute_symbolic_block_difference_1plane_1partition;
  }

  v131 = v18;
  partition_info = block_size_descriptor::get_partition_info(this, a5, a6);
  compute_ideal_colors_and_weights_1plane(a3, partition_info, a8, v19, v20, v21, v22, v23);
  v24 = 8;
  if (a4)
  {
    v24 = 4;
  }

  v25 = *(this + v24);
  if (!v25)
  {
    compress_symbolic_block_for_partition_1plane();
  }

  v124 = a6;
  v26 = 0;
  v27 = (a8 + 3776);
  v122 = a8;
  v120 = a8 + 26048;
  v135 = v16;
  v28 = ~(-1 << (v16 + 1));
  v29 = (this + 592);
  v30 = v25 << 6;
  v31 = 66;
  v121 = this + 592;
  do
  {
    if ((*(this + v31) & v28) != 0)
    {
      compute_ideal_weights_for_decimation(v122, v29, (v27 + 4 * (v26 & 0xFFFFFFC0)));
    }

    v26 += 64;
    v29 += 8118;
    v31 += 6;
  }

  while (v30 != v26);
  v32 = v122;
  v33 = (v122 + 96);
  __asm
  {
    FMOV            V5.4S, #10.0
    FMOV            V0.4S, #1.0
  }

  v39.i64[0] = 0x3F0000003F000000;
  v39.i64[1] = 0x3F0000003F000000;
  v40 = a5;
  do
  {
    v41 = v33[-4];
    v42 = *v33++;
    v43 = vdivq_f32(vsubq_f32(_Q0, v41), vsubq_f32(v42, v41));
    _Q5 = vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v43, v39)), vcgtq_f32(_Q5, v43)), _Q5, v43);
    --v40;
  }

  while (v40);
  v136 = _Q5;
  v44 = v135;
  compute_angular_endpoints_1plane(a4, this, v27, v135, v122);
  v50 = 20;
  if (a4)
  {
    v50 = 16;
  }

  if (!*(this + v50))
  {
    compress_symbolic_block_for_partition_1plane();
  }

  v125 = a3;
  v51 = 0;
  v52 = 177600;
  v130 = this;
  v117 = this + 11304944;
  v53 = vminvq_f32(v136) * 1.02;
  v132 = *(this + v50);
  v54 = 179648;
  v55 = 11304949;
  v56 = 196032;
  do
  {
    if (v44 < v130[v55 - 2])
    {
      goto LABEL_31;
    }

    if (v130[v55])
    {
      compress_symbolic_block_for_partition_1plane();
    }

    v57 = compress_symbolic_block_for_partition_1plane(astcenc_config const&,block_size_descriptor const&,image_block const&,BOOL,float,unsigned int,unsigned int,symbolic_compressed_block &,compression_working_buffers &,int)::free_bits_for_partition_count[a5 - 1];
    v58 = v130[v55 - 1];
    _VF = __OFSUB__(v57, v58);
    v59 = v57 - v58;
    if ((v59 < 0) ^ _VF | (v59 == 0))
    {
LABEL_31:
      *(v32 + v54) = 2123789977;
    }

    else
    {
      if (*(v32 + v56) > v53)
      {
        *(v32 + v56) = 1065353216;
      }

      v60 = v130[v55 - 3];
      *(v32 + v52) = v59;
      v61 = &v121[129888 * v60];
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      LODWORD(v45) = *(v122 + v56);
      compute_quantized_weights_for_decimation(v61, (v27 + (v60 << 8)), &v154, &v120[v51 & 0xFFFFFFC0], v130[v55 - 2], *(v122 + v54 + 0x2000), v45, v46, v47, v48, v49);
      *(v122 + v54) = compute_error_of_weight_set_1plane(v122, v61, &v154, v62, v63, v64, v65).u32[0];
      v32 = v122;
      v44 = v135;
    }

    v51 += 64;
    v55 += 6;
    v54 += 4;
    v56 += 4;
    ++v52;
  }

  while (v132 << 6 != v51);
  memset(v153, 0, sizeof(v153));
  memset(v152, 0, sizeof(v152));
  memset(v151, 0, sizeof(v151));
  memset(v150, 0, sizeof(v150));
  v66 = a1;
  v67 = v125;
  v119 = compute_ideal_endpoint_formats(partition_info, v125, v32 + 16, v32 + 177600, v32 + 179648, a1[17], 0, v132, v153, v152, v151, v150, v32);
  if (!v119)
  {
    return 1.0e30;
  }

  v68 = 0;
  v69 = *(a7 + 16);
  v70 = 1.0e30;
  v71 = v130;
  do
  {
    v72 = v152[v68];
    if (v72 < 0 || v72 >= *(v71 + 5))
    {
      compress_symbolic_block_for_partition_1plane();
    }

    v129 = &v117[6 * v72];
    v73 = &v121[129888 * v129[2]];
    v74 = *(v73 + 2);
    if (!*(v73 + 2))
    {
      compress_symbolic_block_for_partition_1plane();
    }

    memset(v149, 0, sizeof(v149));
    memset(v148, 0, sizeof(v148));
    v147 = 0;
    v146 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v75 = *(v122 + 128);
    v160 = *(v122 + 112);
    v161 = v75;
    v162 = *(v122 + 144);
    v76 = *(v122 + 64);
    v156 = *(v122 + 48);
    v157 = v76;
    v77 = *(v122 + 96);
    v158 = *(v122 + 80);
    v159 = v77;
    v78 = *(v122 + 32);
    v154 = *(v122 + 16);
    v155 = v78;
    memcpy(&v143 + 4, &v120[v72 << 6], v74);
    if (v66[16])
    {
      v79 = 0;
      v118 = v68;
      v80 = &v151[v68];
      v137 = &v150[v68];
      v81 = &v153[4 * v68];
      v128 = v73;
      while (1)
      {
        v133 = v79;
        recompute_ideal_colors_1plane(v67, partition_info, v73, &v143 + 4, &v154, v149, v148);
        v85 = 0;
        LOBYTE(v86) = *v80 != *v137;
        v87 = 20;
        v88 = &v159;
        do
        {
          v89 = v88[-4];
          v90 = *v88++;
          v91 = pack_color_endpoints(v81[v85], &v140 + v87, *v80, v89, v90, v149[v85], v148[v85], v82, v83, v84);
          *(&v140 + v85 + 8) = v91;
          v86 = v86 & (v91 == BYTE8(v140));
          ++v85;
          v87 += 8;
        }

        while (a5 != v85);
        BYTE2(v140) = 0;
        v92 = v80;
        if (a5 != 1)
        {
          v92 = v80;
          if (((v86 ^ 1) & 1) == 0)
          {
            v93 = 0;
            v94 = v149;
            memset(v139, 0, sizeof(v139));
            v95 = v148;
            v96 = &v138;
            v97 = v81;
            v138 = 0;
            v98 = &v159;
            while (1)
            {
              v99 = *v97++;
              v100 = pack_color_endpoints(v99, v139 + v93, *v137, v98[-4], *v98, *v94, *v95, v82, v83, v84);
              *v96 = v100;
              if (v100 != v138)
              {
                break;
              }

              ++v98;
              ++v94;
              ++v95;
              v93 += 8;
              v96 = (v96 + 1);
              if (8 * a5 == v93)
              {
                v101 = 0;
                BYTE2(v140) = 1;
                do
                {
                  *(&v141 + 8 * v101 + 4) = *(v139 + v101);
                  *(&v140 + v101 + 8) = *(&v138 + v101);
                  ++v101;
                }

                while (v101 != 4);
                v92 = v137;
                goto LABEL_52;
              }
            }

            v92 = v137;
            if (!BYTE2(v140))
            {
              v92 = v80;
            }
          }
        }

LABEL_52:
        BYTE1(v140) = a5;
        WORD3(v140) = v124;
        BYTE3(v140) = -1;
        HIDWORD(v140) = *v92;
        v71 = v130;
        WORD2(v140) = *v129;
        LOBYTE(v140) = 3;
        v66 = a1;
        v73 = v128;
        if (v133)
        {
          v102 = v69;
          v67 = v125;
        }

        else
        {
          v67 = v125;
          v103 = v131(a1, v130, &v140, v125);
          if (v103 == -1.0e30)
          {
            LOBYTE(v140) = 0;
            v102 = 1.0e30;
          }

          else
          {
            v102 = v103;
          }

          if (v102 < v70)
          {
            v70 = v102;
          }

          if (v102 > (v69 * ((a1[16] * 0.045) + 1.08)))
          {
LABEL_79:
            v68 = v118;
            break;
          }

          if (v102 >= v69)
          {
            v102 = v69;
          }

          else
          {
            *&v141 = v102;
            v104 = v145;
            *(a7 + 64) = v144;
            *(a7 + 80) = v104;
            *(a7 + 96) = v146;
            *(a7 + 112) = v147;
            v105 = v143;
            *(a7 + 32) = v142;
            *(a7 + 48) = v105;
            v106 = v141;
            *a7 = v140;
            *(a7 + 16) = v106;
            if (v102 < a9)
            {
              v68 = v119;
              v69 = v102;
              break;
            }
          }
        }

        v107 = *a1;
        if (*(v128 + 2) == v130[3])
        {
          v108 = realign_weights_undecimated(v107, v130, v67, &v140);
        }

        else
        {
          v108 = realign_weights_decimated(v107, v130, v67, &v140);
        }

        v109 = v108;
        v110 = v131(a1, v130, &v140, v67);
        if (v110 == -1.0e30)
        {
          LOBYTE(v140) = 0;
          v110 = 1.0e30;
        }

        if (v110 < v70)
        {
          v70 = v110;
        }

        v111 = a1[16];
        if (v110 > (v102 * (((v111 + ~v133) * 0.045) + 1.0)))
        {
          v69 = v102;
          v68 = v118;
          break;
        }

        v69 = v102;
        if (v110 < v102)
        {
          *&v141 = v110;
          v112 = v145;
          *(a7 + 64) = v144;
          *(a7 + 80) = v112;
          *(a7 + 96) = v146;
          *(a7 + 112) = v147;
          v113 = v143;
          *(a7 + 32) = v142;
          *(a7 + 48) = v113;
          v114 = v141;
          *a7 = v140;
          *(a7 + 16) = v114;
          if (v110 < a9)
          {
            v68 = v119;
            v69 = v110;
            break;
          }

          v111 = a1[16];
          v69 = v110;
        }

        v79 = v133 + 1;
        if (v133 + 1 < v111)
        {
          v115 = v109;
        }

        else
        {
          v115 = 0;
        }

        if ((v115 & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    ++v68;
  }

  while (v68 < v119);
  return v70;
}

uint64_t realign_weights_decimated(unsigned int a1, block_size_descriptor *this, float32x4_t *a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 1);
  partition_info = block_size_descriptor::get_partition_info(this, *(a4 + 1), *(a4 + 6));
  v12 = *(this + *(a4 + 4) + 5650424);
  if (v12 == 0xFFFF || *(this + 7) <= v12)
  {
    symbolic_to_physical();
  }

  v14 = this + 129888 * *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304946);
  v15 = v14[594];
  if (v15 == *(this + 3))
  {
    realign_weights_decimated();
  }

  v16 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304947);
  v17 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304949);
  v18 = *(a4 + 3);
  v82 = 0;
  memset(v87, 0, 64);
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  memset(v84, 0, sizeof(v84));
  if (!v8)
  {
    realign_weights_decimated();
  }

  if (!v15)
  {
    realign_weights_decimated();
  }

  v73 = v16;
  v77 = partition_info;
  v19 = 0;
  v20 = v14 + 592;
  v71 = v17 & 1;
  v21 = xmmword_186205980;
  v22 = (a4 + 8);
  v23 = vceqq_s32(vdupq_n_s32(v18), xmmword_186205980);
  v80 = v23;
  v24 = (a4 + 20);
  v75 = 16 * v8;
  do
  {
    v25 = *v22++;
    v23 = unpack_color_endpoints(a1, v25, v24, &v82 + 1, &v82, &v87[v19], &v86[v19], v23, v21, v10, v11);
    v26 = 16 * v8;
    v24 += 8;
    v19 += 16;
  }

  while (v75 != v19);
  v76 = 0;
  v27 = 0;
  v28 = a4 + 52;
  v79 = v20 + 5408;
  v29 = v77 + 8;
  v72 = v71 + 1;
  v30 = vdupq_n_s32(0x3C800000u);
  v78 = &quant_and_xfer_tables + 226 * v73;
  v31 = v80;
  do
  {
    v32 = 0;
    v31 = vmvnq_s8(v31);
    do
    {
      v33 = *&v87[v32];
      v34 = vandq_s8(vsubq_s32(*&v86[v32], v33), v31);
      v85[v32 / 0x10] = vcvtq_f32_s32(v33);
      v84[v32 / 0x10] = vmulq_f32(vcvtq_f32_s32(v34), v30);
      v32 += 16;
    }

    while (v26 != v32);
    v74 = v27;
    v35 = 0;
    v36 = v83;
    memset(v83, 0, sizeof(v83));
    do
    {
      v37 = (v28 + v35);
      v38 = vld1_dup_f32(v37);
      *v36++ = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v38)));
      v35 += 4;
    }

    while (v35 < v15);
    v39 = 0;
    v40 = (v20 + 74592);
    v41 = (v20 + 5472);
    v81 = v28;
    do
    {
      v42 = v79[v39];
      if (!v79[v39])
      {
        realign_weights_decimated();
      }

      v43 = *(v28 + v39);
      v44 = *&v78[2 * *(v28 + v39) + 96];
      v45 = *(v83 + v39);
      v46 = *&v78[2 * *(v28 + v39) + 96];
      v47 = v44 >> 8;
      v48 = v46 - v45;
      v49 = (v44 >> 8) - v45;
      v50 = 0uLL;
      v51 = v40;
      v52 = v41;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = *v52;
        v52 += 64;
        v56 = ((*(v83 + v20[v55 + 438]) * *&v20[4 * v55 + 2816]) + (*(v83 + v20[v55 + 222]) * *&v20[4 * v55 + 1952])) + ((*(v83 + v20[v55 + 870]) * *&v20[4 * v55 + 4544]) + (*(v83 + v20[v55 + 654]) * *&v20[4 * v55 + 3680]));
        v57 = v29[v55];
        v58 = v84[v57];
        v59.i32[0] = a3->i32[v55];
        v59.i32[1] = a3[54].i32[v55];
        v59.i32[2] = a3[108].i32[v55];
        v59.i32[3] = a3[162].i32[v55];
        v60 = vsubq_f32(vaddq_f32(v85[v57], vmulq_n_f32(v58, v56)), v59);
        v61 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v48 * *v51)) - v56), v60);
        v62 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v49 * *v51)) - v56), v60);
        v50 = vaddq_f32(v50, vmulq_f32(v60, v60));
        v53 = vaddq_f32(v53, vmulq_f32(v61, v61));
        v54 = vaddq_f32(v54, vmulq_f32(v62, v62));
        v51 += 64;
        --v42;
      }

      while (v42);
      v63 = a3[221];
      v64 = vmulq_f32(v50, v63);
      *v64.i8 = vadd_f32(*&vextq_s8(v64, v64, 8uLL), *v64.i8);
      v65 = vpadd_f32(*v64.i8, *v64.i8);
      v66 = vmulq_f32(v53, v63);
      *v66.i8 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), *v66.i8);
      v67 = vpadd_f32(*v66.i8, *v66.i8);
      v68 = vmulq_f32(v54, v63);
      *v68.i8 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.i8);
      v69 = vpadd_f32(*v68.i8, *v68.i8);
      if (vcgt_f32(v65, v69).u8[0] & 1) != 0 && v43 <= 0x3F && (vcgt_f32(v67, v69).u8[0])
      {
        *(v83 + v39) = (v44 >> 8);
        v28 = v81;
LABEL_27:
        *(v28 + v39) = v47;
        v76 = 1;
        goto LABEL_29;
      }

      if (v43)
      {
        v28 = v81;
        if ((vcgt_f32(v65, v67).u8[0] & 1) == 0)
        {
          goto LABEL_29;
        }

        *(v83 + v39) = v46;
        LOBYTE(v47) = v44;
        goto LABEL_27;
      }

      v28 = v81;
LABEL_29:
      ++v39;
      ++v41;
      ++v40;
    }

    while (v39 != v15);
    v28 += 32;
    ++v27;
    v26 = v75;
  }

  while (v74 + 1 != v72);
  return v76 & 1;
}

uint64_t realign_weights_undecimated(unsigned int a1, block_size_descriptor *this, float32x4_t *a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 1);
  partition_info = block_size_descriptor::get_partition_info(this, *(a4 + 1), *(a4 + 6));
  v12 = *(this + *(a4 + 4) + 5650424);
  if (v12 == 0xFFFF || *(this + 7) <= v12)
  {
    symbolic_to_physical();
  }

  v14 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304947);
  v15 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304949);
  v16 = *(a4 + 3);
  v55 = 0;
  memset(v59, 0, 64);
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  if (!v8)
  {
    realign_weights_undecimated();
  }

  v52 = v14;
  v53 = partition_info;
  v17 = 0;
  v51 = v15 & 1;
  v18 = xmmword_186205980;
  v19 = (a4 + 8);
  v20 = vceqq_s32(vdupq_n_s32(v16), xmmword_186205980);
  v54 = v20;
  v21 = (a4 + 20);
  v22 = 16 * v8;
  do
  {
    v23 = *v19++;
    v20 = unpack_color_endpoints(a1, v23, v21, &v55 + 1, &v55, &v59[v17], &v58[v17], v20, v18, v10, v11);
    v21 += 8;
    v17 += 16;
  }

  while (v22 != v17);
  v24 = 0;
  v25 = 0;
  v26 = a4 + 52;
  v27 = vdupq_n_s32(0x3C800000u);
  v28 = &quant_and_xfer_tables + 226 * v52;
  v29 = v54;
  do
  {
    v30 = 0;
    v29 = vmvnq_s8(v29);
    do
    {
      v31 = *&v59[v30];
      v32 = vandq_s8(vsubq_s32(*&v58[v30], v31), v29);
      v57[v30 / 0x10] = vcvtq_f32_s32(v31);
      v56[v30 / 0x10] = vmulq_f32(vcvtq_f32_s32(v32), v27);
      v30 += 16;
    }

    while (v22 != v30);
    if (!*(this + 3))
    {
      realign_weights_undecimated();
    }

    v33 = 0;
    v34 = a3;
    do
    {
      v35 = *(v26 + v33);
      v36 = HIBYTE(*&v28[2 * v35 + 96]);
      v37 = v53[v33 + 8];
      v38 = v56[v37];
      v39.i32[0] = *v34;
      v39.i32[1] = v34[216];
      v39.i32[2] = v34[432];
      v39.i32[3] = v34[648];
      v40 = a3[221];
      v41 = vsubq_f32(vaddq_f32(v57[v37], vmulq_n_f32(v38, v35)), v39);
      v42 = vaddq_f32(vmulq_n_f32(v38, (*&v28[2 * v35 + 96] - v35)), v41);
      v43 = vaddq_f32(vmulq_n_f32(v38, (v36 - v35)), v41);
      v44 = vmulq_f32(v40, vmulq_f32(v41, v41));
      *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
      v45 = vpadd_f32(*v44.i8, *v44.i8);
      v46 = vmulq_f32(v40, vmulq_f32(v42, v42));
      *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
      v47 = vpadd_f32(*v46.i8, *v46.i8);
      v48 = vmulq_f32(v40, vmulq_f32(v43, v43));
      *v48.i8 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
      v49 = vpadd_f32(*v48.i8, *v48.i8);
      if (vcgt_f32(v45, v49).u8[0] & 1) != 0 && v35 <= 0x3F && (vcgt_f32(v47, v49).u8[0])
      {
        goto LABEL_20;
      }

      if (*(v26 + v33) && (vcgt_f32(v45, v47).u8[0] & 1) != 0)
      {
        LOBYTE(v36) = *&v28[2 * v35 + 96];
LABEL_20:
        *(v26 + v33) = v36;
        v24 = 1;
      }

      ++v33;
      ++v34;
    }

    while (v33 < *(this + 3));
    v26 += 32;
    ++v25;
  }

  while (v25 != v51 + 1);
  return v24 & 1;
}

void compress_block(float *a1)
{
  if (__cxa_guard_acquire(&qword_1ED56A258))
  {
    *&_MergedGlobals_11 = 1.0 / *a1;

    __cxa_guard_release(&qword_1ED56A258);
  }
}

void compress_block()
{
  {
    mask(vmask4)::shift = xmmword_186205980;
  }
}

{
  __assert_rtn("merge_endpoints", "astcenc_compress_symbolic.cpp", 44, "partition_count == 1");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 896, "di.weight_count > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 891, "bm_packed_index >= static_cast<int>(bsd.block_mode_count_1plane_selected) && bm_packed_index < static_cast<int>(bsd.block_mode_count_1plane_2plane_selected)");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 810, "bm.is_dual_plane");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 728, "bsd.decimation_mode_count_selected > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 727, "config.tune_refinement_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 726, "config.tune_candidate_limit > 0");
}

{
  __assert_rtn("prepare_block_statistics", "astcenc_compress_symbolic.cpp", 1075, "weight >= 0.0f");
}

{
  __assert_rtn("prepare_block_statistics", "astcenc_compress_symbolic.cpp", 1071, "texels_per_block > 0");
}

void compress_symbolic_block_for_partition_1plane()
{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 452, "!bm.is_dual_plane");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 515, "di.weight_count > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 510, "bm_packed_index >= 0 && bm_packed_index < static_cast<int>(bsd.block_mode_count_1plane_selected)");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 441, "max_block_modes > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 390, "max_decimation_modes > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 367, "config.tune_refinement_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 366, "config.tune_candidate_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 365, "partition_count > 0");
}

void realign_weights_decimated()
{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 277, "texels_to_evaluate > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 221, "weight_count > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 220, "partition_count > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 206, "weight_count != bsd.texel_count");
}

void realign_weights_undecimated()
{
  __assert_rtn("realign_weights_undecimated", "astcenc_compress_symbolic.cpp", 125, "bsd.texel_count > 0");
}

{
  __assert_rtn("realign_weights_undecimated", "astcenc_compress_symbolic.cpp", 96, "partition_count > 0");
}

uint64_t find_best_partition_candidates(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v338 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  if (v7 >= 0x15)
  {
    if (v7 >= 0x20)
    {
      v8 = flt_18622EF00[v7 < 0x2A];
    }

    else
    {
      v8 = 0.04;
    }
  }

  else
  {
    v8 = 0.03;
  }

  if (!a3)
  {
    find_best_partition_candidates();
  }

  if (!a4)
  {
    find_best_partition_candidates();
  }

  v267 = a1 + 14707848;
  v265 = a1 + 14666872;
  v266 = a1 + 14683264;
  v9 = v8 * v8;
  v10 = a3;
  bzero(v306, 0x800uLL);
  v11 = a2;
  v12 = 0;
  v296 = 0u;
  v297 = 0u;
  v294[0] = 0u;
  v295 = 0u;
  v329 = 0;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v13 = a2 + 864;
  v14 = a2 + 1728;
  v15 = a2 + 2592;
  v279 = a3;
  if (a3 <= 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = a3;
  }

  v17 = *(a2 + 3536);
  v274 = (v16 - 1);
  v271 = v17;
  do
  {
    if (v12)
    {
      v310 = 0u;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v18 = &v316;
      v19 = v11;
      v20 = v7;
      LODWORD(v330) = 0;
      do
      {
        v21 = *v18++;
        v22.i32[0] = *v19;
        v22.i32[1] = v19[216];
        v22.i32[2] = v19[432];
        v22.i32[3] = v19[648];
        v23 = vaddq_f32(*(&v307 + v21), v22);
        *(&v307 + v21) = v23;
        ++*(&v330 + v21);
        ++v19;
        --v20;
      }

      while (v20);
      for (i = 0; i != v10; ++i)
      {
        v23.i8[0] = *(&v330 + i);
        v23 = vmulq_n_f32(*(&v307 + i), 1.0 / v23.u32[0]);
        v294[i] = v23;
      }
    }

    else
    {
      bzero(&v307, 0x360uLL);
      v17 = v271;
      v11 = a2;
      v38 = 0;
      v39.i32[0] = *(a2 + 4 * (0x239E9 % v7));
      v39.i32[1] = *(v13 + 4 * (0x239E9 % v7));
      v39.i32[2] = *(v14 + 4 * (0x239E9 % v7));
      v39.i32[3] = *(v15 + 4 * (0x239E9 % v7));
      v294[0] = v39;
      v40 = 0.0;
      v41 = a2;
      do
      {
        v42.i32[0] = *v41;
        v42.i32[1] = v41[216];
        v42.i32[2] = v41[432];
        v42.i32[3] = v41[648];
        v43 = vsubq_f32(v42, v39);
        v44 = vmulq_f32(v271, vmulq_f32(v43, v43));
        *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
        *v44.i32 = vpadd_f32(*v44.i8, *v44.i8).f32[0];
        v40 = v40 + *v44.i32;
        *(&v307 + v38++) = v44.i32[0];
        ++v41;
      }

      while (v7 != v38);
      v45 = 1;
      v46 = 3 * a3 - 6;
      v12 = 0;
      while (1)
      {
        v47 = 0;
        v48 = flt_18622EF08[v46++];
        v49 = v40 * v48;
        v50 = 0.0;
        while (1)
        {
          v50 = v50 + *(&v307 + v47);
          if (v50 >= v49)
          {
            break;
          }

          if (v7 == ++v47)
          {
            LODWORD(v47) = v7;
            break;
          }
        }

        if (v47 >= v7 - 1)
        {
          LODWORD(v47) = v7 - 1;
        }

        v51.i32[0] = *(a2 + 4 * v47);
        v51.i32[1] = *(v13 + 4 * v47);
        v51.i32[2] = *(v14 + 4 * v47);
        v51.i32[3] = *(v15 + 4 * v47);
        v294[v45] = v51;
        if (v45 == v274)
        {
          break;
        }

        ++v45;
        v40 = 0.0;
        v52 = &v307;
        v53 = a2;
        v54 = v7;
        do
        {
          v55.i32[0] = *v53;
          v55.i32[1] = v53[216];
          v55.i32[2] = v53[432];
          v55.i32[3] = v53[648];
          v56 = vsubq_f32(v55, v51);
          v57 = vmulq_f32(v271, vmulq_f32(v56, v56));
          *v57.i8 = vadd_f32(*&vextq_s8(v57, v57, 8uLL), *v57.i8);
          v58 = vpadd_f32(*v57.i8, *v57.i8).f32[0];
          if (v58 >= *v52)
          {
            v58 = *v52;
          }

          v40 = v40 + v58;
          *v52++ = v58;
          ++v53;
          --v54;
        }

        while (v54);
      }
    }

    v25 = 0;
    LODWORD(v307) = 0;
    do
    {
      v26 = 0;
      v27 = 0;
      v29 = 3.4028e38;
      do
      {
        v28.i32[3] = *(v15 + 4 * v25);
        v28.i32[2] = *(v14 + 4 * v25);
        v28.i32[1] = *(v13 + 4 * v25);
        v28.i32[0] = v11[v25];
        v30 = vsubq_f32(v28, v294[v26]);
        v31 = vmulq_f32(v17, vmulq_f32(v30, v30));
        *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
        v32 = vpadd_f32(*v31.i8, *v31.i8).f32[0];
        if (v32 < v29)
        {
          v27 = v26;
          v29 = v32;
        }

        ++v26;
      }

      while (v10 != v26);
      *(&v316 + v25) = v27;
      ++*(&v307 + v27);
      ++v25;
    }

    while (v25 != v7);
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = v34;
      if (!*(&v307 + v33))
      {
        --*(&v307 + *(&v316 + v33));
        ++*(&v307 + v33);
        *(&v316 + v33) = v33;
        v35 = 1;
      }

      v36 = v33 + 1 == v10;
      v37 = v33 + 1 != v10;
      if (v33 + 1 == v10)
      {
        v33 = 0;
      }

      else
      {
        ++v33;
      }

      v34 = v37 & v35;
    }

    while (!v36 || (v35 & 1) != 0);
    ++v12;
  }

  while (v12 != 3);
  v59 = 0;
  if (v7 >= 0x40)
  {
    v60 = 64;
  }

  else
  {
    v60 = v7;
  }

  v286 = 0uLL;
  v287 = 0uLL;
  do
  {
    v61 = *(&v316 + a1[v59 + 14666800]);
    *(&v286 + v61) |= 1 << v59++;
  }

  while (v60 != v59);
  *v281 = v60;
  bzero(&v307, 0x400uLL);
  v62 = &a1[4 * a3 - 4];
  v63 = *(v62 + 8);
  if (!v63)
  {
    find_best_partition_candidates();
  }

  v277 = *(v62 + 8);
  if (v10 == 2)
  {
    v96 = &v307;
    v97 = v286;
    v98 = v265;
    do
    {
      v99 = *(v98 - 1);
      v100 = vcnt_s8((v99 ^ v97));
      v100.i16[0] = vaddlv_u8(v100);
      v101 = v100.i32[0];
      v102 = vcnt_s8((*v98 ^ *(&v97 + 1)));
      v102.i16[0] = vaddlv_u8(v102);
      v103 = v102.i32[0] + v101;
      v104 = vcnt_s8((*v98 ^ v97));
      v104.i16[0] = vaddlv_u8(v104);
      v105 = v104.i32[0];
      v106 = vcnt_s8((v99 ^ *(&v97 + 1)));
      v106.i16[0] = vaddlv_u8(v106);
      if (v103 >= v106.i32[0] + v105)
      {
        v107 = v106.i32[0] + v105;
      }

      else
      {
        v107 = v103;
      }

      *v96 = v107 >> 1;
      if ((v107 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v7 <= (v107 >> 1))
      {
        find_best_partition_candidates();
      }

      v98 += 16;
      v96 = (v96 + 1);
      --v63;
    }

    while (v63);
  }

  else if (v10 == 3)
  {
    v64 = v286;
    v65 = &v307;
    v66 = v287;
    v67 = v266;
    do
    {
      v68 = *(v67 - 2);
      v69 = *(v67 - 1);
      v70 = vcnt_s8((v68 ^ v64));
      v70.i16[0] = vaddlv_u8(v70);
      v71 = v70.i32[0];
      v72 = vcnt_s8((v69 ^ v64));
      v72.i16[0] = vaddlv_u8(v72);
      v73 = v72.i32[0];
      v74 = vcnt_s8((*v67 ^ v64));
      v74.i16[0] = vaddlv_u8(v74);
      v75 = v74.i32[0];
      v76 = vcnt_s8((v68 ^ *(&v64 + 1)));
      v76.i16[0] = vaddlv_u8(v76);
      v77 = v76.i32[0];
      v78 = vcnt_s8((v69 ^ *(&v64 + 1)));
      v78.i16[0] = vaddlv_u8(v78);
      v79 = v78.i32[0];
      v80 = vcnt_s8((*v67 ^ *(&v64 + 1)));
      v80.i16[0] = vaddlv_u8(v80);
      v81 = v80.i32[0];
      v82 = vcnt_s8((v68 ^ v66));
      v82.i16[0] = vaddlv_u8(v82);
      v83 = v82.i32[0];
      v84 = vcnt_s8((v69 ^ v66));
      v84.i16[0] = vaddlv_u8(v84);
      v85 = v84.i32[0];
      v86 = vcnt_s8((*v67 ^ v66));
      v86.i16[0] = vaddlv_u8(v86);
      v87 = v86.i32[0] + v79;
      if (v86.i32[0] + v79 >= (v85 + v81))
      {
        v87 = v85 + v81;
      }

      v88 = v87 + v71;
      v89 = v86.i32[0] + v77;
      v90 = v83 + v81;
      if (v86.i32[0] + v77 >= v90)
      {
        v89 = v90;
      }

      v91 = v89 + v73;
      v92 = v85 + v77;
      v93 = v83 + v79;
      if (v92 < v93)
      {
        v93 = v92;
      }

      v94 = v93 + v75;
      if (v88 >= v91)
      {
        v95 = v91;
      }

      else
      {
        v95 = v88;
      }

      if (v95 >= v94)
      {
        v95 = v94;
      }

      *v65 = v95 >> 1;
      if ((v95 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v7 <= (v95 >> 1))
      {
        find_best_partition_candidates();
      }

      v67 += 24;
      v65 = (v65 + 1);
      --v63;
    }

    while (v63);
  }

  else
  {
    v108 = v286;
    v109 = &v307;
    v110 = v287;
    v111 = v267;
    do
    {
      v112 = *(v111 - 3);
      v113 = *(v111 - 2);
      v114 = vcnt_s8((v112 ^ v108));
      v114.i16[0] = vaddlv_u8(v114);
      v115 = v114.i32[0];
      v116 = vcnt_s8((v113 ^ v108));
      v116.i16[0] = vaddlv_u8(v116);
      v117 = v116.i32[0];
      v118 = *(v111 - 1);
      v119 = *v111;
      v120 = v111;
      v121 = vcnt_s8((v118 ^ v108));
      v121.i16[0] = vaddlv_u8(v121);
      v122 = v121.i32[0];
      v123 = vcnt_s8((*v111 ^ v108));
      v123.i16[0] = vaddlv_u8(v123);
      v124 = v123.i32[0];
      v125 = vcnt_s8((v112 ^ *(&v108 + 1)));
      v125.i16[0] = vaddlv_u8(v125);
      v126 = v125.i32[0];
      v127 = vcnt_s8((v113 ^ *(&v108 + 1)));
      v127.i16[0] = vaddlv_u8(v127);
      v128 = v127.i32[0];
      v129 = vcnt_s8((v118 ^ *(&v108 + 1)));
      v129.i16[0] = vaddlv_u8(v129);
      v130 = v129.i32[0];
      v131 = vcnt_s8((v119 ^ *(&v108 + 1)));
      v131.i16[0] = vaddlv_u8(v131);
      v132 = v131.i32[0];
      v133 = vcnt_s8((v112 ^ v110));
      v133.i16[0] = vaddlv_u8(v133);
      v134 = v133.i32[0];
      v135 = vcnt_s8((v113 ^ v110));
      v135.i16[0] = vaddlv_u8(v135);
      v136 = v135.i32[0];
      v137 = vcnt_s8((v118 ^ v110));
      v137.i16[0] = vaddlv_u8(v137);
      v138 = v137.i32[0];
      v139 = vcnt_s8((v119 ^ v110));
      v139.i16[0] = vaddlv_u8(v139);
      v140 = v139.i32[0];
      v141 = vcnt_s8((v112 ^ *(&v110 + 1)));
      v141.i16[0] = vaddlv_u8(v141);
      v142 = v141.i32[0];
      v143 = vcnt_s8((v113 ^ *(&v110 + 1)));
      v143.i16[0] = vaddlv_u8(v143);
      v144 = v143.i32[0];
      v145 = vcnt_s8((v118 ^ *(&v110 + 1)));
      v145.i16[0] = vaddlv_u8(v145);
      v146 = v145.i32[0];
      v147 = vcnt_s8((v119 ^ *(&v110 + 1)));
      v147.i16[0] = vaddlv_u8(v147);
      v148 = v147.i32[0] + v138;
      if (v147.i32[0] + v138 >= (v146 + v140))
      {
        v148 = v146 + v140;
      }

      v149 = v147.i32[0] + v136;
      if (v147.i32[0] + v136 >= (v144 + v140))
      {
        v149 = v144 + v140;
      }

      v150 = v144 + v138;
      if (v146 + v136 < (v144 + v138))
      {
        v150 = v146 + v136;
      }

      v151 = v147.i32[0] + v134;
      v152 = v142 + v140;
      if (v147.i32[0] + v134 >= v152)
      {
        v151 = v152;
      }

      v153 = v146 + v134;
      v154 = v142 + v138;
      if (v153 >= v154)
      {
        v153 = v154;
      }

      v155 = v142 + v136;
      v156 = v144 + v134;
      if (v155 >= v156)
      {
        v155 = v156;
      }

      v157 = v148 + v128;
      if (v148 + v128 >= (v149 + v130))
      {
        v157 = v149 + v130;
      }

      if (v157 >= v150 + v132)
      {
        v157 = v150 + v132;
      }

      v158 = v157 + v115;
      v159 = v148 + v126;
      if (v148 + v126 >= v151 + v130)
      {
        v159 = v151 + v130;
      }

      if (v159 >= v153 + v132)
      {
        v159 = v153 + v132;
      }

      v160 = v159 + v117;
      v161 = v151 + v128;
      v162 = v155 + v132;
      if (v151 + v128 >= v149 + v126)
      {
        v161 = v149 + v126;
      }

      if (v161 < v162)
      {
        v162 = v161;
      }

      v163 = v162 + v122;
      v164 = v153 + v128;
      v165 = v155 + v130;
      v166 = v150 + v126;
      if (v164 >= v165)
      {
        v164 = v165;
      }

      if (v164 < v166)
      {
        v166 = v164;
      }

      v167 = v166 + v124;
      if (v158 < v160)
      {
        v160 = v158;
      }

      if (v163 >= v167)
      {
        v168 = v167;
      }

      else
      {
        v168 = v163;
      }

      if (v160 < v168)
      {
        v168 = v160;
      }

      *v109 = v168 >> 1;
      if ((v168 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v7 <= (v168 >> 1))
      {
        find_best_partition_candidates();
      }

      v111 = v120 + 32;
      v109 = (v109 + 1);
      --v63;
    }

    while (v63);
  }

  v169 = 0;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v170 = v277;
  do
  {
    ++*(&v330 + *(&v307 + v169++));
  }

  while (v277 != v169);
  v171 = 0;
  v172 = 0;
  v173 = a4;
  do
  {
    v174 = *(&v330 + v171);
    *(&v330 + v171) = v172;
    v172 += v174;
    ++v171;
  }

  while (*v281 != v171);
  v175 = 0;
  do
  {
    v176 = *(&v307 + v175);
    v177 = *(&v330 + v176);
    *(&v330 + v176) = v177 + 1;
    v306[v177] = v175++;
  }

  while (v277 != v175);
  if (a4 >= v277)
  {
    v178 = v277;
  }

  else
  {
    v178 = a4;
  }

  if (v178 >= a6)
  {
    v179 = a6;
  }

  else
  {
    v179 = v178;
  }

  v282 = v179;
  v180 = *(a2 + 3488);
  v181 = *(a2 + 3520);
  {
    *v273 = v181;
    v276 = v180;
    compute_ideal_colors_and_weights_1plane();
    v181 = *v273;
    v180 = v276;
    v170 = v277;
    v173 = a4;
  }

  v182 = 0;
  v182.i16[3] = vmovn_s32(vceqq_f32(v180, v181)).i16[3];
  v183 = vmovl_u16(v182);
  v184.i64[0] = 0x100000001;
  v184.i64[1] = 0x100000001;
  memset(__b, 0, sizeof(__b));
  memset(v304, 0, sizeof(v304));
  v185 = vaddvq_s32(vshlq_u32(vandq_s8(v183, v184), mask(vmask4)::shift));
  memset(v303, 0, sizeof(v303));
  memset(v302, 0, sizeof(v302));
  if (a6)
  {
    if (v170 >= a6)
    {
      v186 = a6;
    }

    else
    {
      v186 = v170;
    }

    if (v186 >= v173)
    {
      v186 = v173;
    }

    if (v186 <= 1)
    {
      v186 = 1;
    }

    v187 = 4 * v186;
    memset_pattern16(__b, &xmmword_18622EEE0, v187);
    memset_pattern16(v303, &xmmword_18622EEE0, v187);
  }

  if (v178 <= 1)
  {
    v188 = 1;
  }

  else
  {
    v188 = v178;
  }

  v278 = v188;
  if (v185)
  {
    for (j = 0; j != v278; ++j)
    {
      v190 = v306[j];
      raw_partition_info = block_size_descriptor::get_raw_partition_info(a1, v279, v190);
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      v318 = 0u;
      v317 = 0u;
      v316 = 0u;
      v192 = &v316;
      compute_avgs_and_dirs_3_comp_rgb(raw_partition_info, a2, &v316, 0.0, v193, v194, v195, v196);
      bzero(&v307, 0x240uLL);
      v197 = v10;
      v198 = &v311;
      do
      {
        v199 = v192[1];
        v198[-4] = *v192;
        v200 = vmulq_f32(v199, v199);
        *v200.i8 = vadd_f32(*&vextq_s8(v200, v200, 8uLL), *v200.i8);
        v201 = vpadd_f32(*v200.i8, *v200.i8);
        v202 = xmmword_18622B5B0;
        if (*v201.i32 != 0.0)
        {
          v202 = vdivq_f32(v199, vsqrtq_f32(vdupq_lane_s32(v201, 0)));
        }

        v198[-3] = v202;
        f32 = v198[-3].f32;
        *(f32 + 2) = 0;
        *(f32 + 3) = 0;
        v204 = *v192;
        v205 = vmulq_f32(v204, v204);
        *v205.i8 = vadd_f32(*&vextq_s8(v205, v205, 8uLL), *v205.i8);
        v206 = vpadd_f32(*v205.i8, *v205.i8);
        v207 = xmmword_18622B5B0;
        if (*v206.i32 != 0.0)
        {
          v207 = vdivq_f32(v204, vsqrtq_f32(vdupq_lane_s32(v206, 0)));
        }

        v208 = v198[-4];
        v209 = vmulq_f32(v202, v208);
        v209.f32[0] = v209.f32[2] + vaddv_f32(*v209.f32);
        v210 = vdupq_lane_s32(*v209.f32, 0);
        v210.i32[3] = 0;
        v198[-1] = v207;
        *v198 = vsubq_f32(v208, vmulq_f32(v202, v210));
        v198[1] = *f32;
        v198[2].i64[0] = 0;
        v198[2].i64[1] = 0;
        v198[3] = v198[-1];
        v192 += 2;
        v198 += 9;
        --v197;
      }

      while (v197);
      LODWORD(v330) = 0;
      v294[0].i32[0] = 0;
      compute_error_squared_rgb(raw_partition_info, a2, &v307, &v330, v294);
      v211 = (raw_partition_info + 2);
      v212 = __PAIR64__(v294[0].u32[0], v330);
      v213 = v10;
      v214 = &v315;
      do
      {
        v215 = *v211++;
        v216 = v9 * v215;
        v217 = vmulq_n_f32(*(v214 - 28), *v214);
        v218 = vmulq_n_f32(*(v214 - 20), *v214);
        v219 = vmulq_n_f32(vmulq_f32(v217, v217), v216);
        v220 = vmulq_n_f32(vmulq_f32(v218, v218), v216);
        v212 = vadd_f32(v212, vadd_f32(vzip1_s32(*&vextq_s8(v219, v219, 8uLL), *&vextq_s8(v220, v220, 8uLL)), vadd_f32(vzip1_s32(*v219.i8, *v220.i8), vzip2_s32(*v219.i8, *v220.i8))));
        v214 += 36;
        --v213;
      }

      while (v213);
      v294[0].i32[0] = v212.i32[1];
      LODWORD(v330) = v212.i32[0];
      insert_result(v282, v212.f32[0], v190, __b, v304);
      insert_result(v282, v294[0].f32[0], v190, v303, v302);
    }
  }

  else
  {
    v221 = 0;
    do
    {
      v275 = v221;
      v272 = v306[v221];
      v222 = block_size_descriptor::get_raw_partition_info(a1, v279, v272);
      v314 = 0u;
      v313 = 0u;
      v312 = 0u;
      v311 = 0u;
      v310 = 0u;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v223 = v222;
      compute_avgs_and_dirs_4_comp(v222, a2, &v307);
      v224 = 0;
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      v318 = 0u;
      v317 = 0u;
      v316 = 0u;
      v337 = 0u;
      v336 = 0u;
      v335 = 0u;
      v334 = 0u;
      v333 = 0u;
      v332 = 0u;
      v331 = 0u;
      v330 = 0u;
      v300 = 0u;
      v301 = 0u;
      v298 = 0u;
      v299 = 0u;
      v296 = 0u;
      v297 = 0u;
      v294[0] = 0u;
      v295 = 0u;
      v293 = 0u;
      v291 = 0u;
      v292 = 0u;
      v289 = 0u;
      v290 = 0u;
      v287 = 0u;
      v288 = 0u;
      v286 = 0u;
      v285[0] = 0;
      v285[1] = 0;
      do
      {
        v225 = *(&v307 + v224 + 16);
        *(&v316 + v224) = *(&v307 + v224);
        v226 = vmulq_f32(v225, v225);
        *v226.i8 = vadd_f32(*&vextq_s8(v226, v226, 8uLL), *v226.i8);
        v227 = vpadd_f32(*v226.i8, *v226.i8);
        v228.i64[0] = 0x3F0000003F000000;
        v228.i64[1] = 0x3F0000003F000000;
        v229.i64[0] = 0x3F0000003F000000;
        v229.i64[1] = 0x3F0000003F000000;
        if (*v227.i32 != 0.0)
        {
          v229 = vdivq_f32(v225, vsqrtq_f32(vdupq_lane_s32(v227, 0)));
        }

        *(&v316 + v224 + 16) = v229;
        v230 = *(&v316 + v224);
        v231 = *(&v316 + v224 + 16);
        v232 = vmulq_f32(v229, v230);
        *v232.i8 = vadd_f32(*&vextq_s8(v232, v232, 8uLL), *v232.i8);
        v233 = &v294[v224 / 0x10];
        *v233 = vsubq_f32(v230, vmulq_n_f32(v229, vpadd_f32(*v232.i8, *v232.i8).f32[0]));
        v233[1] = v231;
        v234 = (&v330 + v224);
        v234->i64[0] = 0;
        v234->i64[1] = 0;
        v235 = *(&v307 + v224);
        v236 = vmulq_f32(v235, v235);
        *v236.i8 = vadd_f32(*&vextq_s8(v236, v236, 8uLL), *v236.i8);
        v237 = vpadd_f32(*v236.i8, *v236.i8);
        if (*v237.i32 != 0.0)
        {
          v228 = vdivq_f32(v235, vsqrtq_f32(vdupq_lane_s32(v237, 0)));
        }

        v234[1] = v228;
        v238 = (&v286 + v224);
        v238->i64[0] = 0;
        v238->i64[1] = 0;
        v238[1] = v234[1];
        v224 += 32;
      }

      while (32 * v10 != v224);
      v284 = 0;
      compute_error_squared_rgba(v223, a2, v294, &v286, v285, &v284 + 1, &v284);
      v240 = 0;
      v241 = *(&v284 + 1);
      LODWORD(v242) = v284;
      v243 = 16;
      do
      {
        LOBYTE(v239) = *(v223 + v240 + 4);
        v244 = v9 * LODWORD(v239);
        v245 = *(v285 + v240);
        v246 = vmulq_n_f32(*(&v316 + v243), v245);
        v247 = vmulq_n_f32(*(&v330 + v243), v245);
        v248 = vmulq_n_f32(vmulq_f32(v246, v246), v244);
        *v248.i8 = vadd_f32(*&vextq_s8(v248, v248, 8uLL), *v248.i8);
        v241 = v241 + vpadd_f32(*v248.i8, *v248.i8).f32[0];
        v249 = vmulq_n_f32(vmulq_f32(v247, v247), v244);
        *v249.i8 = vadd_f32(*&vextq_s8(v249, v249, 8uLL), *v249.i8);
        v239 = vpadd_f32(*v249.i8, *v249.i8).f32[0];
        v242 = v242 + v239;
        ++v240;
        v243 += 32;
      }

      while (v10 != v240);
      v284 = __PAIR64__(LODWORD(v241), LODWORD(v242));
      insert_result(v282, v241, v272, __b, v304);
      insert_result(v282, *&v284, v272, v303, v302);
      v221 = v275 + 1;
    }

    while (v275 + 1 != v278);
  }

  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  if (a6)
  {
    v250 = 0;
    v251 = v282;
    if (v282 <= 1)
    {
      v251 = 1;
    }

    v252 = 2 * v251;
    v253 = v304;
    v254 = v302;
    do
    {
      v255 = *v253++;
      *(&v316 + v250) = *(block_size_descriptor::get_raw_partition_info(a1, v279, v255) + 2);
      v256 = *v254++;
      *(&v316 + (v250 + 1)) = *(block_size_descriptor::get_raw_partition_info(a1, v279, v256) + 2);
      v250 += 2;
    }

    while (v252 != v250);
  }

  v314 = 0u;
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  v309 = 0u;
  v308 = 0u;
  v257 = 2 * v282;
  v307 = 0u;
  result = 0;
  if (v257)
  {
    v259 = &v316;
    while (1)
    {
      v261 = *v259++;
      v260 = v261;
      v262 = v261 >> 6;
      v263 = *(&v307 + v262);
      v264 = 1 << v261;
      if (((1 << v261) & v263) == 0)
      {
        *(a5 + 4 * result) = v260;
        *(&v307 + v262) = v264 | v263;
        result = (result + 1);
        if (result == v282)
        {
          break;
        }
      }

      if (!--v257)
      {
        return result;
      }
    }

    return v282;
  }

  return result;
}