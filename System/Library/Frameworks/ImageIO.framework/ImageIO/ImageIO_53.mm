uint64_t WebPDequantizeLevels(_BYTE *a1, int a2, int a3, int a4, signed int a5)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a5 > 0x64)
  {
    return 0;
  }

  result = 0;
  if (a1)
  {
    if (a2 >= 1)
    {
      v9 = a3 - 1;
      if (a3 >= 1)
      {
        v10 = (a2 - 1) >> 1;
        if (a2 > 2 * (a5 / 25))
        {
          v10 = a5 / 25;
        }

        if (a3 <= (2 * v10))
        {
          v11 = v9 >> 1;
        }

        else
        {
          v11 = v10;
        }

        if (v11 >= 1)
        {
          v13 = 2 * v11;
          v14 = 2 * a2;
          v15 = (2 * a2 * (2 * v11 + 2));
          result = malloc_type_malloc(v15 + 2 * a2 + 4094, 0x100004077774924uLL);
          if (!result)
          {
            return result;
          }

          v88 = v14;
          v92 = v11;
          v16 = -v11;
          v17 = a2;
          v18 = 2 * a2;
          v19 = v13 | 1;
          v91 = a2;
          v89 = (v13 | 1u) * a2;
          v20 = v15;
          v21 = result + 2 * v89;
          v22 = (v21 - 2 * v17);
          v93 = v18;
          v94 = result;
          bzero(v22, v18);
          v23 = v94;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = &v94[v20];
          v28 = v19 * v19;
          v29 = a4;
          v30 = 255;
          v31 = 255;
          v32 = a1;
          memset(v95, 0, sizeof(v95));
          v33 = v20;
          do
          {
            v34 = 0;
            v35 = v25;
            v36 = v31;
            do
            {
              v37 = v32[v34];
              if (v36 > v37)
              {
                v30 = v32[v34];
                v31 = v30;
              }

              if (v36 >= v37)
              {
                v36 = v32[v34];
              }

              if (v35 < v37)
              {
                v24 = v32[v34];
                v25 = v24;
              }

              if (v35 <= v37)
              {
                v35 = v32[v34];
              }

              *(v95 + v37) = 1;
              ++v34;
            }

            while (v17 != v34);
            v32 += a4;
            ++v26;
          }

          while (v26 != a3);
          v38 = 0;
          v39 = 0;
          v40 = &v27[v93];
          v41 = v25 - v31;
          v42 = -1;
          do
          {
            v43 = v39 - v42;
            if (v39 - v42 >= v41)
            {
              v43 = v41;
            }

            if (v42 < 0)
            {
              v43 = v41;
            }

            if (*(v95 + v39))
            {
              ++v38;
              v41 = v43;
              v42 = v39;
            }

            ++v39;
          }

          while (v39 != 256);
          v44 = 0;
          v45 = v40 + 2046;
          v46 = 4 * v41;
          v47 = 12 * v41;
          v48 = (12 * v41) >> 2;
          v49 = 4 * v41;
          v50 = v47 >> 2;
          v51 = v48 * (v46 - 1);
          v52 = 2044;
          v53 = v46 - (v47 >> 2);
          v54 = v92;
          do
          {
            v55 = v44 + 1;
            if (v44 + 1 > v50)
            {
              if (v55 >= v49)
              {
                LODWORD(v55) = 0;
              }

              else
              {
                LODWORD(v55) = v51 / v53;
              }
            }

            *&v40[2 * v44 + 2048] = v55 >> 2;
            *&v40[v52] = -(v55 >> 2);
            ++v44;
            v52 -= 2;
            v51 -= v50;
          }

          while (v44 != 1023);
          *v45 = 0;
          if (v38 >= 3 && v16 < a3)
          {
            v56 = v92 + 1;
            v57 = (v91 - v92);
            v58 = &v94[2 * v89 + 2 * v92];
            v90 = &v94[v33];
            v59 = v94;
            v60 = 0x40000 / v28;
            v61 = a1;
            do
            {
              v62 = 0;
              v63 = 0;
              do
              {
                v63 += v61[v62];
                v64 = *(v22 + v62) + v63;
                *(v21 + 2 * v62) = v64 - v59[v62];
                v59[v62++] = v64;
              }

              while (v17 != v62);
              if (&v59[v17] == v21)
              {
                v65 = v23;
              }

              else
              {
                v65 = &v59[v17];
              }

              if (v16 >= v9 || v16 <= -1)
              {
                v67 = 0;
              }

              else
              {
                v67 = v29;
              }

              v68 = (v21 - 2 + 2 * v92);
              v69 = v58;
              v70 = v27;
              v71 = v92 + 1;
              if (v16 >= v54)
              {
                do
                {
                  v73 = *v68++;
                  v72 = v73;
                  v74 = *v69;
                  v69 -= 2;
                  *v70 = (v60 * (v74 + v72)) >> 16;
                  v70 += 2;
                  --v71;
                }

                while (v71);
                LODWORD(v75) = v92 + 1;
                if (v56 < v57)
                {
                  v76 = 0;
                  v75 = v56;
                  do
                  {
                    *&v27[2 * v75] = (v60 * (*&v58[2 * v75] - *(v21 + 2 * v76))) >> 16;
                    ++v75;
                    ++v76;
                  }

                  while (v75 < v57);
                }

                if (v75 < v91)
                {
                  v77 = v17 - v75;
                  v78 = v88 - 2 - v92 - v75;
                  v79 = ~v92 + v75;
                  v80 = &v90[2 * v75];
                  do
                  {
                    *v80 = (v60 * (2 * *(v21 - 2 + 2 * v17) - (*(v21 + 2 * v78) + *(v21 + 2 * v79)))) >> 16;
                    v80 += 2;
                    --v78;
                    ++v79;
                    --v77;
                  }

                  while (v77);
                }

                v81 = a1;
                v82 = v17;
                v83 = v27;
                v54 = v92;
                do
                {
                  v84 = *v81;
                  if (v24 > v84 && v30 < v84)
                  {
                    v86 = v45[*v83 - 4 * v84] + v84;
                    v87 = v86 & ~(v86 >> 31);
                    if (v87 >= 255)
                    {
                      LOBYTE(v87) = -1;
                    }

                    *v81 = v87;
                  }

                  v83 += 2;
                  ++v81;
                  --v82;
                }

                while (v82);
                a1 += v29;
              }

              v61 += v67;
              ++v16;
              v22 = v59;
              v59 = v65;
              v23 = v94;
            }

            while (v16 != a3);
          }

          free(v23);
        }

        return 1;
      }
    }
  }

  return result;
}

void WebPDeallocateAlphaMemory(uint64_t a1)
{
  if (!a1)
  {
    WebPDeallocateAlphaMemory_cold_1();
  }

  free(*(a1 + 2992));
  *(a1 + 2992) = 0u;
  ALPHDelete(*(a1 + 2960));
  *(a1 + 2960) = 0;
}

void ALPHDelete(void **a1)
{
  if (a1)
  {
    VP8LDelete(a1[3]);

    free(a1);
  }
}

uint64_t VP8DecompressAlphaRows(uint64_t a1, int *a2, int a3, int a4)
{
  if (!a1)
  {
    VP8DecompressAlphaRows_cold_9();
  }

  result = 0;
  if ((a3 & 0x80000000) == 0)
  {
    v7 = a4;
    if (a4 >= 1)
    {
      v9 = a2[33];
      v10 = a4 + a3;
      if (a4 + a3 <= v9)
      {
        v11 = *a2;
        if (*(a1 + 2984))
        {
          return *(a1 + 3000) + v11 * a3;
        }

        v12 = *(a1 + 2960);
        if (!v12)
        {
          v14 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10F00408A1A9555uLL);
          *(a1 + 2960) = v14;
          if (!v14)
          {
            VP8SetError(a1, 1, "Alpha decoder initialization failed.");
            return 0;
          }

          if (*(a1 + 2992))
          {
            VP8DecompressAlphaRows_cold_1();
          }

          v15 = malloc_type_malloc(a2[33] * *a2, 0x100004077774924uLL);
          *(a1 + 2992) = v15;
          if (v15)
          {
            v16 = v15;
            *(a1 + 3000) = v15;
            *(a1 + 3008) = 0;
          }

          else
          {
            if (!VP8SetError(a1, 1, "Alpha decoder initialization failed."))
            {
              goto LABEL_45;
            }

            v16 = *(a1 + 3000);
          }

          v24 = *(a1 + 2968);
          if (!v24 || !v16)
          {
            VP8DecompressAlphaRows_cold_8();
          }

          v25 = *(a1 + 2960);
          v26 = *(a1 + 2976);
          VP8FiltersInit();
          *(v25 + 25) = v16;
          v28 = *a2;
          v27 = a2[1];
          *v25 = *a2;
          v25[1] = v27;
          if (v28 < 1 || v27 <= 0)
          {
            VP8DecompressAlphaRows_cold_7();
          }

          if (v26 < 2)
          {
            goto LABEL_41;
          }

          v29 = *v24 & 3;
          v25[2] = v29;
          v25[3] = (*v24 >> 2) & 3;
          v30 = (*v24 >> 4) & 3;
          v25[4] = v30;
          if (v29 > 1 || v30 > 1 || *v24 > 0x3Fu || !VP8InitIoInternal(v25 + 2, 521))
          {
            goto LABEL_41;
          }

          WebPInitCustomIo(0, v25 + 4);
          *(v25 + 11) = v25;
          *(v25 + 4) = *a2;
          *(v25 + 37) = *(a2 + 29);
          v25[41] = a2[33];
          v33 = v25[2];
          if (v33)
          {
            if (v33 != 1)
            {
              VP8DecompressAlphaRows_cold_6();
            }

            v34 = VP8LDecodeAlphaHeader(v25, v24 + 1, v26 - 1);
          }

          else
          {
            v34 = v26 - 1 >= v25[1] * *v25;
          }

          if (!v34)
          {
LABEL_41:
            v31 = *(*(a1 + 2960) + 24);
            if (v31)
            {
              v32 = *v31;
            }

            else
            {
              v32 = 1;
            }

            VP8SetError(a1, v32, "Alpha decoder initialization failed.");
            goto LABEL_45;
          }

          v12 = *(a1 + 2960);
          if (v12[4] == 1)
          {
            v7 = v9 - a3;
          }

          else
          {
            *(a1 + 3016) = 0;
          }

          v10 = v7 + a3;
        }

        if (v10 > v9)
        {
          VP8DecompressAlphaRows_cold_5();
        }

        v13 = v12[41];
        if (v12[2])
        {
          if (!*(v12 + 3))
          {
            VP8DecompressAlphaRows_cold_2();
          }

          if (!VP8LDecodeAlphaImageStream(v12, v10))
          {
            goto LABEL_45;
          }
        }

        else
        {
          v17 = *v12;
          v18 = *(a1 + 2968);
          v19 = v18 + v17 * a3 + 1;
          if (v19 > v18 + *(a1 + 2976))
          {
            VP8DecompressAlphaRows_cold_4();
          }

          if (!WebPUnfilters[v12[3]])
          {
            VP8DecompressAlphaRows_cold_3();
          }

          v20 = *(a1 + 3008);
          if (v7 >= 1)
          {
            v35 = v12[41];
            v21 = *(a1 + 3000) + v17 * a3;
            do
            {
              v22 = v21;
              (WebPUnfilters[v12[3]])(v20, v19, v21, v17);
              v21 = v22 + v17;
              v19 += v17;
              v20 = v22;
              --v7;
            }

            while (v7);
            v20 = v22;
            v13 = v35;
          }

          *(a1 + 3008) = v20;
        }

        if (v10 >= v13)
        {
          *(a1 + 2984) = 1;
        }

        else if (!*(a1 + 2984))
        {
          return *(a1 + 3000) + v11 * a3;
        }

        ALPHDelete(*(a1 + 2960));
        *(a1 + 2960) = 0;
        v23 = *(a1 + 3016);
        if (v23 < 1 || WebPDequantizeLevels((*(a1 + 3000) + a2[32] * v11 + a2[30]), a2[31] - a2[30], a2[33] - a2[32], v11, v23))
        {
          return *(a1 + 3000) + v11 * a3;
        }

LABEL_45:
        free(*(a1 + 2992));
        *(a1 + 2992) = 0u;
        ALPHDelete(*(a1 + 2960));
        result = 0;
        *(a1 + 2960) = 0;
      }
    }
  }

  return result;
}

char *WebPCopyPlane(char *__src, int a2, char *__dst, int a4, int a5, int a6)
{
  if (!__src || (v6 = __dst) == 0)
  {
    WebPCopyPlane_cold_2();
  }

  if (a2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = -a2;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  if (v7 < a5 || v8 < a5)
  {
    WebPCopyPlane_cold_1();
  }

  if (a6 >= 1)
  {
    v9 = __src;
    v10 = a5;
    v11 = a2;
    v12 = a6 + 1;
    v13 = a4;
    do
    {
      __src = memcpy(v6, v9, v10);
      v9 += v11;
      v6 += v13;
      --v12;
    }

    while (v12 > 1);
  }

  return __src;
}

uint64_t WebPSamplerProcessPlane(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a9 >= 1)
  {
    v15 = result;
    v16 = 0;
    v17 = a2;
    v18 = a7;
    do
    {
      result = a10(v15, a3, a4, a6, a8);
      v15 += v17;
      v19 = (v16 << 31 >> 31) & a5;
      a4 += v19;
      a3 += v19;
      a6 += v18;
      ++v16;
    }

    while (a9 != v16);
  }

  return result;
}

void WebPInitSamplers()
{
  if (WebPInitSamplers_WebPInitSamplers_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPSamplers = YuvToRgbRow;
    qword_1EA8E1520 = YuvToRgbaRow;
    qword_1EA8E1528 = YuvToBgrRow;
    qword_1EA8E1530 = YuvToBgraRow;
    qword_1EA8E1538 = YuvToArgbRow;
    qword_1EA8E1540 = YuvToRgba4444Row;
    qword_1EA8E1548 = YuvToRgb565Row;
    unk_1EA8E1550 = YuvToRgbaRow;
    qword_1EA8E1558 = YuvToBgraRow;
    unk_1EA8E1560 = YuvToArgbRow;
    qword_1EA8E1568 = YuvToRgba4444Row;
    WebPInitSamplers_WebPInitSamplers_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

uint64_t WebPConvertARGBToUV_C(uint64_t result, _BYTE *a2, unsigned __int8 *a3, int a4, int a5)
{
  v5 = a4 >> 1;
  if (a4 >> 1 < 1)
  {
    v5 = 0;
    if ((a4 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = (result + 4);
  v7 = (a4 >> 1);
  v8 = a2;
  v9 = a3;
  do
  {
    v10 = *(v6 - 1);
    v11 = ((*v6 >> 15) & 0x1FE) + ((v10 >> 15) & 0x1FE);
    v12 = ((*v6 >> 7) & 0x1FE) + ((v10 >> 7) & 0x1FE);
    v13 = 2 * *v6 + 2 * v10;
    v14 = (-19081 * v12 - 9719 * v11 + 28800 * v13 + 33685504) >> 18;
    v15 = (-24116 * v12 + 28800 * v11 - 4684 * v13 + 33685504) >> 18;
    if (a5)
    {
      *v8 = v14;
    }

    else
    {
      *v8 = (v14 + *v8 + 1) >> 1;
      v15 = (v15 + *v9 + 1) >> 1;
    }

    *v9++ = v15;
    v6 += 2;
    ++v8;
    --v7;
  }

  while (v7);
  if (a4)
  {
LABEL_10:
    v16 = *(result + 8 * v5);
    v17 = (v16 >> 14) & 0x3FC;
    v18 = (v16 >> 6) & 0x3FC;
    v19 = (-19081 * v18 - 9719 * v17 + 115200 * v16 + 33685504) >> 18;
    v20 = (-24116 * v18 + 28800 * v17 - 18736 * *(result + 8 * v5) + 33685504) >> 18;
    if (a5)
    {
      a2[v5] = v19;
      a3[v5] = v20;
    }

    else
    {
      a2[v5] = (v19 + a2[v5] + 1) >> 1;
      a3[v5] = (v20 + a3[v5] + 1) >> 1;
    }
  }

  return result;
}

unsigned __int16 *WebPConvertRGBA32ToUV_C(unsigned __int16 *result, _BYTE *a2, _BYTE *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v5 = *result;
      v6 = result[1];
      v7 = result[2];
      v8 = -19081 * v6 - 9719 * v5 + 28800 * v7 + 33685504;
      v9 = (v8 >> 18) & ~(v8 >> 31);
      if (v9 >= 255)
      {
        LOBYTE(v9) = -1;
      }

      *a2++ = v9;
      v10 = -24116 * v6 + 28800 * v5 - 4684 * v7 + 33685504;
      v11 = (v10 >> 18) & ~(v10 >> 31);
      if (v11 >= 255)
      {
        LOBYTE(v11) = -1;
      }

      *a3++ = v11;
      result += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

void WebPInitConvertARGBToYUV()
{
  if (WebPInitConvertARGBToYUV_WebPInitConvertARGBToYUV_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPConvertARGBToY = ConvertARGBToY_C;
    WebPConvertARGBToUV = WebPConvertARGBToUV_C;
    WebPConvertRGB24ToY = ConvertRGB24ToY_C;
    WebPConvertBGR24ToY = ConvertBGR24ToY_C;
    WebPConvertRGBA32ToUV = WebPConvertRGBA32ToUV_C;
    WebPInitConvertARGBToYUVNEON();
    if (!WebPConvertARGBToY)
    {
      WebPInitConvertARGBToYUV_cold_5();
    }

    if (!WebPConvertARGBToUV)
    {
      WebPInitConvertARGBToYUV_cold_4();
    }

    if (!WebPConvertRGB24ToY)
    {
      WebPInitConvertARGBToYUV_cold_3();
    }

    if (!WebPConvertBGR24ToY)
    {
      WebPInitConvertARGBToYUV_cold_2();
    }

    if (!WebPConvertRGBA32ToUV)
    {
      WebPInitConvertARGBToYUV_cold_1();
    }

    WebPInitConvertARGBToYUV_WebPInitConvertARGBToYUV_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

unsigned __int8 *YuvToRgbRow(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4, int a5)
{
  if ((a5 & 0xFFFFFFFE) != 0)
  {
    v5 = &a4[3 * (a5 & 0xFFFFFFFE)];
    do
    {
      v7 = *a2++;
      v6 = v7;
      v9 = *a3++;
      v8 = v9;
      v10 = 19077 * *result;
      v11 = 26149 * v9;
      v12 = ((26149 * v9) >> 8) + (v10 >> 8);
      v13 = v12 - 14234;
      v14 = (v12 - 14234) >> 6;
      if (v12 >= 0x379A)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      if (v13 < 0x4000)
      {
        v15 = v14;
      }

      *a4 = v15;
      v16 = ((13320 * v8) >> 8) + ((6419 * v6) >> 8);
      v17 = (v10 >> 8) - v16;
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      a4[1] = v20;
      v21 = 33050 * v6;
      v22 = (v21 >> 8) + (v10 >> 8);
      v23 = v22 - 17685;
      v24 = (v22 - 17685) >> 6;
      if (v22 >= 0x4515)
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      if (v23 < 0x4000)
      {
        v25 = v24;
      }

      a4[2] = v25;
      v26 = (19077 * result[1]) >> 8;
      v27 = v26 + (v11 >> 8);
      v28 = v27 - 14234;
      v29 = (v27 - 14234) >> 6;
      if (v27 >= 0x379A)
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

      a4[3] = v30;
      v31 = v26 - v16;
      v32 = v31 + 8708;
      v33 = (v31 + 8708) >> 6;
      if (v31 >= -8708)
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

      a4[4] = v34;
      v35 = v26 + (v21 >> 8);
      v36 = v35 - 17685;
      v37 = (v35 - 17685) >> 6;
      if (v35 >= 0x4515)
      {
        v38 = -1;
      }

      else
      {
        v38 = 0;
      }

      if (v36 < 0x4000)
      {
        v38 = v37;
      }

      a4[5] = v38;
      result += 2;
      a4 += 6;
    }

    while (a4 != v5);
    a4 = v5;
  }

  if (a5)
  {
    v39 = *a2;
    v40 = *a3;
    v41 = 19077 * *result;
    v42 = ((26149 * v40) >> 8) + (v41 >> 8);
    if (v42 >= 0x379A)
    {
      v43 = -1;
    }

    else
    {
      v43 = 0;
    }

    if (v42 - 14234 >= 0x4000)
    {
      v44 = v43;
    }

    else
    {
      v44 = (v42 - 14234) >> 6;
    }

    *a4 = v44;
    v45 = (v41 >> 8) - (((6419 * v39) >> 8) + ((13320 * v40) >> 8));
    v46 = v45 + 8708;
    v47 = (v45 + 8708) >> 6;
    if (v45 >= -8708)
    {
      v48 = -1;
    }

    else
    {
      v48 = 0;
    }

    if (v46 < 0x4000)
    {
      v48 = v47;
    }

    a4[1] = v48;
    v49 = ((33050 * v39) >> 8) + (v41 >> 8);
    v50 = v49 - 17685;
    v51 = (v49 - 17685) >> 6;
    if (v49 >= 0x4515)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }

    if (v50 < 0x4000)
    {
      v52 = v51;
    }

    a4[2] = v52;
  }

  return result;
}

unsigned __int8 *YuvToRgbaRow(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4, int a5)
{
  v5 = (4 * a5) & 0xFFFFFFF8;
  if (v5)
  {
    v6 = &a4[v5];
    do
    {
      v8 = *a2++;
      v7 = v8;
      v10 = *a3++;
      v9 = v10;
      v11 = 19077 * *result;
      v12 = 26149 * v10;
      v13 = ((26149 * v10) >> 8) + (v11 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *a4 = v16;
      v17 = ((13320 * v9) >> 8) + ((6419 * v7) >> 8);
      v18 = (v11 >> 8) - v17;
      v19 = v18 + 8708;
      v20 = (v18 + 8708) >> 6;
      if (v18 >= -8708)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      if (v19 < 0x4000)
      {
        v21 = v20;
      }

      a4[1] = v21;
      v22 = 33050 * v7;
      v23 = (v22 >> 8) + (v11 >> 8);
      v24 = v23 - 17685;
      v25 = (v23 - 17685) >> 6;
      if (v23 >= 0x4515)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      if (v24 < 0x4000)
      {
        v26 = v25;
      }

      a4[2] = v26;
      a4[3] = -1;
      v27 = (19077 * result[1]) >> 8;
      v28 = v27 + (v12 >> 8);
      v29 = v28 - 14234;
      v30 = (v28 - 14234) >> 6;
      if (v28 >= 0x379A)
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

      a4[4] = v31;
      v32 = v27 - v17;
      v33 = v32 + 8708;
      v34 = (v32 + 8708) >> 6;
      if (v32 >= -8708)
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

      a4[5] = v35;
      v36 = v27 + (v22 >> 8);
      v37 = v36 - 17685;
      v38 = (v36 - 17685) >> 6;
      if (v36 >= 0x4515)
      {
        v39 = -1;
      }

      else
      {
        v39 = 0;
      }

      if (v37 < 0x4000)
      {
        v39 = v38;
      }

      a4[6] = v39;
      a4[7] = -1;
      result += 2;
      a4 += 8;
    }

    while (a4 != v6);
    a4 = v6;
  }

  if (a5)
  {
    v40 = *a2;
    v41 = *a3;
    v42 = 19077 * *result;
    v43 = ((26149 * v41) >> 8) + (v42 >> 8);
    if (v43 >= 0x379A)
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    if (v43 - 14234 >= 0x4000)
    {
      v45 = v44;
    }

    else
    {
      v45 = (v43 - 14234) >> 6;
    }

    *a4 = v45;
    v46 = (v42 >> 8) - (((6419 * v40) >> 8) + ((13320 * v41) >> 8));
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

    a4[1] = v49;
    v50 = ((33050 * v40) >> 8) + (v42 >> 8);
    v51 = v50 - 17685;
    v52 = (v50 - 17685) >> 6;
    if (v50 >= 0x4515)
    {
      v53 = -1;
    }

    else
    {
      v53 = 0;
    }

    if (v51 < 0x4000)
    {
      v53 = v52;
    }

    a4[2] = v53;
    a4[3] = -1;
  }

  return result;
}

unsigned __int8 *YuvToBgrRow(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4, int a5)
{
  if ((a5 & 0xFFFFFFFE) != 0)
  {
    v5 = &a4[3 * (a5 & 0xFFFFFFFE)];
    do
    {
      v7 = *a2++;
      v6 = v7;
      v9 = *a3++;
      v8 = v9;
      v10 = 19077 * *result;
      v11 = 33050 * v6;
      v12 = ((33050 * v6) >> 8) + (v10 >> 8);
      v13 = v12 - 17685;
      v14 = (v12 - 17685) >> 6;
      if (v12 >= 0x4515)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      if (v13 < 0x4000)
      {
        v15 = v14;
      }

      *a4 = v15;
      v16 = ((13320 * v8) >> 8) + ((6419 * v6) >> 8);
      v17 = (v10 >> 8) - v16;
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      a4[1] = v20;
      v21 = 26149 * v8;
      v22 = (v21 >> 8) + (v10 >> 8);
      v23 = v22 - 14234;
      v24 = (v22 - 14234) >> 6;
      if (v22 >= 0x379A)
      {
        v25 = -1;
      }

      else
      {
        v25 = 0;
      }

      if (v23 < 0x4000)
      {
        v25 = v24;
      }

      a4[2] = v25;
      v26 = (19077 * result[1]) >> 8;
      v27 = v26 + (v11 >> 8);
      v28 = v27 - 17685;
      v29 = (v27 - 17685) >> 6;
      if (v27 >= 0x4515)
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

      a4[3] = v30;
      v31 = v26 - v16;
      v32 = v31 + 8708;
      v33 = (v31 + 8708) >> 6;
      if (v31 >= -8708)
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

      a4[4] = v34;
      v35 = v26 + (v21 >> 8);
      v36 = v35 - 14234;
      v37 = (v35 - 14234) >> 6;
      if (v35 >= 0x379A)
      {
        v38 = -1;
      }

      else
      {
        v38 = 0;
      }

      if (v36 < 0x4000)
      {
        v38 = v37;
      }

      a4[5] = v38;
      result += 2;
      a4 += 6;
    }

    while (a4 != v5);
    a4 = v5;
  }

  if (a5)
  {
    v39 = *a2;
    v40 = *a3;
    v41 = 19077 * *result;
    v42 = ((33050 * v39) >> 8) + (v41 >> 8);
    if (v42 >= 0x4515)
    {
      v43 = -1;
    }

    else
    {
      v43 = 0;
    }

    if (v42 - 17685 >= 0x4000)
    {
      v44 = v43;
    }

    else
    {
      v44 = (v42 - 17685) >> 6;
    }

    *a4 = v44;
    v45 = (v41 >> 8) - (((6419 * v39) >> 8) + ((13320 * v40) >> 8));
    v46 = v45 + 8708;
    v47 = (v45 + 8708) >> 6;
    if (v45 >= -8708)
    {
      v48 = -1;
    }

    else
    {
      v48 = 0;
    }

    if (v46 < 0x4000)
    {
      v48 = v47;
    }

    a4[1] = v48;
    v49 = ((26149 * v40) >> 8) + (v41 >> 8);
    v50 = v49 - 14234;
    v51 = (v49 - 14234) >> 6;
    if (v49 >= 0x379A)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }

    if (v50 < 0x4000)
    {
      v52 = v51;
    }

    a4[2] = v52;
  }

  return result;
}

unsigned __int8 *YuvToBgraRow(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4, int a5)
{
  v5 = (4 * a5) & 0xFFFFFFF8;
  if (v5)
  {
    v6 = &a4[v5];
    do
    {
      v8 = *a2++;
      v7 = v8;
      v10 = *a3++;
      v9 = v10;
      v11 = 19077 * *result;
      v12 = 33050 * v7;
      v13 = ((33050 * v7) >> 8) + (v11 >> 8);
      v14 = v13 - 17685;
      v15 = (v13 - 17685) >> 6;
      if (v13 >= 0x4515)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *a4 = v16;
      v17 = ((13320 * v9) >> 8) + ((6419 * v7) >> 8);
      v18 = (v11 >> 8) - v17;
      v19 = v18 + 8708;
      v20 = (v18 + 8708) >> 6;
      if (v18 >= -8708)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      if (v19 < 0x4000)
      {
        v21 = v20;
      }

      a4[1] = v21;
      v22 = 26149 * v9;
      v23 = (v22 >> 8) + (v11 >> 8);
      v24 = v23 - 14234;
      v25 = (v23 - 14234) >> 6;
      if (v23 >= 0x379A)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      if (v24 < 0x4000)
      {
        v26 = v25;
      }

      a4[2] = v26;
      a4[3] = -1;
      v27 = (19077 * result[1]) >> 8;
      v28 = v27 + (v12 >> 8);
      v29 = v28 - 17685;
      v30 = (v28 - 17685) >> 6;
      if (v28 >= 0x4515)
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

      a4[4] = v31;
      v32 = v27 - v17;
      v33 = v32 + 8708;
      v34 = (v32 + 8708) >> 6;
      if (v32 >= -8708)
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

      a4[5] = v35;
      v36 = v27 + (v22 >> 8);
      v37 = v36 - 14234;
      v38 = (v36 - 14234) >> 6;
      if (v36 >= 0x379A)
      {
        v39 = -1;
      }

      else
      {
        v39 = 0;
      }

      if (v37 < 0x4000)
      {
        v39 = v38;
      }

      a4[6] = v39;
      a4[7] = -1;
      result += 2;
      a4 += 8;
    }

    while (a4 != v6);
    a4 = v6;
  }

  if (a5)
  {
    v40 = *a2;
    v41 = *a3;
    v42 = 19077 * *result;
    v43 = ((33050 * v40) >> 8) + (v42 >> 8);
    if (v43 >= 0x4515)
    {
      v44 = -1;
    }

    else
    {
      v44 = 0;
    }

    if (v43 - 17685 >= 0x4000)
    {
      v45 = v44;
    }

    else
    {
      v45 = (v43 - 17685) >> 6;
    }

    *a4 = v45;
    v46 = (v42 >> 8) - (((6419 * v40) >> 8) + ((13320 * v41) >> 8));
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

    a4[1] = v49;
    v50 = ((26149 * v41) >> 8) + (v42 >> 8);
    v51 = v50 - 14234;
    v52 = (v50 - 14234) >> 6;
    if (v50 >= 0x379A)
    {
      v53 = -1;
    }

    else
    {
      v53 = 0;
    }

    if (v51 < 0x4000)
    {
      v53 = v52;
    }

    a4[2] = v53;
    a4[3] = -1;
  }

  return result;
}

unsigned __int8 *YuvToArgbRow(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4, int a5)
{
  v5 = (4 * a5) & 0xFFFFFFF8;
  if (v5)
  {
    v6 = &a4[v5];
    do
    {
      v7 = *result;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      *a4 = -1;
      v12 = 19077 * v7;
      v13 = 26149 * v11;
      v14 = ((26149 * v11) >> 8) + (v12 >> 8);
      v15 = v14 - 14234;
      v16 = (v14 - 14234) >> 6;
      if (v14 >= 0x379A)
      {
        v17 = -1;
      }

      else
      {
        v17 = 0;
      }

      if (v15 < 0x4000)
      {
        v17 = v16;
      }

      a4[1] = v17;
      v18 = ((13320 * v10) >> 8) + ((6419 * v8) >> 8);
      v19 = (v12 >> 8) - v18;
      v20 = v19 + 8708;
      v21 = (v19 + 8708) >> 6;
      if (v19 >= -8708)
      {
        v22 = -1;
      }

      else
      {
        v22 = 0;
      }

      if (v20 < 0x4000)
      {
        v22 = v21;
      }

      a4[2] = v22;
      v23 = 33050 * v8;
      v24 = (v23 >> 8) + (v12 >> 8);
      v25 = v24 - 17685;
      v26 = (v24 - 17685) >> 6;
      if (v24 >= 0x4515)
      {
        v27 = -1;
      }

      else
      {
        v27 = 0;
      }

      if (v25 < 0x4000)
      {
        v27 = v26;
      }

      a4[3] = v27;
      v28 = result[1];
      a4[4] = -1;
      v29 = (19077 * v28) >> 8;
      v30 = v29 + (v13 >> 8);
      v31 = v30 - 14234;
      v32 = (v30 - 14234) >> 6;
      if (v30 >= 0x379A)
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

      a4[5] = v33;
      v34 = v29 - v18;
      v35 = v34 + 8708;
      v36 = (v34 + 8708) >> 6;
      if (v34 >= -8708)
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

      a4[6] = v37;
      v38 = v29 + (v23 >> 8);
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

      a4[7] = v41;
      result += 2;
      a4 += 8;
    }

    while (a4 != v6);
    a4 = v6;
  }

  if (a5)
  {
    v42 = *result;
    v43 = *a2;
    v44 = *a3;
    *a4 = -1;
    v45 = 19077 * v42;
    v46 = ((26149 * v44) >> 8) + (v45 >> 8);
    v47 = v46 - 14234;
    v48 = (v46 - 14234) >> 6;
    if (v46 >= 0x379A)
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

    a4[1] = v49;
    v50 = (v45 >> 8) - (((6419 * v43) >> 8) + ((13320 * v44) >> 8));
    v51 = v50 + 8708;
    v52 = (v50 + 8708) >> 6;
    if (v50 >= -8708)
    {
      v53 = -1;
    }

    else
    {
      v53 = 0;
    }

    if (v51 < 0x4000)
    {
      v53 = v52;
    }

    a4[2] = v53;
    v54 = ((33050 * v43) >> 8) + (v45 >> 8);
    v55 = v54 - 17685;
    v56 = (v54 - 17685) >> 6;
    if (v54 >= 0x4515)
    {
      v57 = -1;
    }

    else
    {
      v57 = 0;
    }

    if (v55 < 0x4000)
    {
      v57 = v56;
    }

    a4[3] = v57;
  }

  return result;
}

unsigned __int8 *YuvToRgba4444Row(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4, int a5)
{
  v5 = (2 * a5) & 0xFFFFFFFC;
  if (v5)
  {
    v6 = &a4[v5];
    do
    {
      v8 = *a2++;
      v7 = v8;
      v10 = *a3++;
      v9 = v10;
      v11 = 19077 * *result;
      v12 = 26149 * v10;
      v13 = ((26149 * v10) >> 8) + (v11 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -16;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = ((13320 * v9) >> 8) + ((6419 * v7) >> 8);
      v18 = (v11 >> 8) - v17;
      v19 = v18 + 8708;
      v20 = (v18 + 8708) >> 10;
      if (v18 >= -8708)
      {
        v21 = 15;
      }

      else
      {
        v21 = 0;
      }

      if (v19 < 0x4000)
      {
        v21 = v20;
      }

      v22 = 33050 * v7;
      v23 = (v22 >> 8) + (v11 >> 8);
      v24 = v23 - 17685;
      v25 = (v23 - 17685) >> 6;
      if (v23 >= 0x4515)
      {
        v26 = -16;
      }

      else
      {
        v26 = 0;
      }

      *a4 = v16 & 0xF0 | v21;
      if (v24 < 0x4000)
      {
        v26 = v25;
      }

      a4[1] = v26 | 0xF;
      v27 = (19077 * result[1]) >> 8;
      v28 = v27 + (v12 >> 8);
      v29 = v28 - 14234;
      v30 = (v28 - 14234) >> 6;
      if (v28 >= 0x379A)
      {
        v31 = -16;
      }

      else
      {
        v31 = 0;
      }

      if (v29 < 0x4000)
      {
        v31 = v30;
      }

      v32 = v27 - v17;
      v33 = v32 + 8708;
      v34 = (v32 + 8708) >> 10;
      if (v32 >= -8708)
      {
        v35 = 15;
      }

      else
      {
        v35 = 0;
      }

      if (v33 < 0x4000)
      {
        v35 = v34;
      }

      v36 = v27 + (v22 >> 8);
      v37 = v36 - 17685;
      v38 = (v36 - 17685) >> 6;
      if (v36 >= 0x4515)
      {
        v39 = -16;
      }

      else
      {
        v39 = 0;
      }

      a4[2] = v31 & 0xF0 | v35;
      if (v37 < 0x4000)
      {
        v39 = v38;
      }

      a4[3] = v39 | 0xF;
      result += 2;
      a4 += 4;
    }

    while (a4 != v6);
    a4 = v6;
  }

  if (a5)
  {
    v40 = *a2;
    v41 = *a3;
    v42 = 19077 * *result;
    v43 = ((26149 * v41) >> 8) + (v42 >> 8);
    v44 = v43 - 14234;
    v45 = (v43 - 14234) >> 6;
    if (v43 >= 0x379A)
    {
      v46 = -16;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    v47 = (v42 >> 8) - (((6419 * v40) >> 8) + ((13320 * v41) >> 8));
    v48 = v47 + 8708;
    v49 = (v47 + 8708) >> 10;
    if (v47 >= -8708)
    {
      v50 = 15;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    v51 = ((33050 * v40) >> 8) + (v42 >> 8);
    v52 = v51 - 17685;
    v53 = (v51 - 17685) >> 6;
    if (v51 >= 0x4515)
    {
      v54 = -16;
    }

    else
    {
      v54 = 0;
    }

    *a4 = v46 & 0xF0 | v50;
    if (v52 < 0x4000)
    {
      v54 = v53;
    }

    a4[1] = v54 | 0xF;
  }

  return result;
}

unsigned __int8 *YuvToRgb565Row(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4, int a5)
{
  v5 = (2 * a5) & 0xFFFFFFFC;
  if (v5)
  {
    v6 = &a4[v5];
    do
    {
      v8 = *a2++;
      v7 = v8;
      v10 = *a3++;
      v9 = v10;
      v11 = 19077 * *result;
      v12 = 26149 * v10;
      v13 = ((26149 * v10) >> 8) + (v11 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -8;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = ((13320 * v9) >> 8) + ((6419 * v7) >> 8);
      v18 = (v11 >> 8) - v17;
      v19 = v18 + 8708;
      v20 = (v18 + 8708) >> 6;
      if (v18 >= -8708)
      {
        v21 = 255;
      }

      else
      {
        v21 = 0;
      }

      if (v19 < 0x4000)
      {
        v21 = v20;
      }

      v22 = 33050 * v7;
      v23 = (v22 >> 8) + (v11 >> 8);
      v24 = v23 - 17685;
      v25 = (v23 - 17685) >> 9;
      if (v23 >= 0x4515)
      {
        v26 = 31;
      }

      else
      {
        v26 = 0;
      }

      if (v24 < 0x4000)
      {
        v26 = v25;
      }

      *a4 = v16 & 0xF8 | (v21 >> 5);
      a4[1] = (8 * v21) & 0xE0 | v26;
      v27 = (19077 * result[1]) >> 8;
      v28 = v27 + (v12 >> 8);
      v29 = v28 - 14234;
      v30 = (v28 - 14234) >> 6;
      if (v28 >= 0x379A)
      {
        v31 = -8;
      }

      else
      {
        v31 = 0;
      }

      if (v29 < 0x4000)
      {
        v31 = v30;
      }

      v32 = v27 - v17;
      v33 = v32 + 8708;
      v34 = (v32 + 8708) >> 6;
      if (v32 >= -8708)
      {
        v35 = 255;
      }

      else
      {
        v35 = 0;
      }

      if (v33 < 0x4000)
      {
        v35 = v34;
      }

      v36 = v27 + (v22 >> 8);
      v37 = v36 - 17685;
      v38 = (v36 - 17685) >> 9;
      if (v36 >= 0x4515)
      {
        v39 = 31;
      }

      else
      {
        v39 = 0;
      }

      if (v37 < 0x4000)
      {
        v39 = v38;
      }

      a4[2] = v31 & 0xF8 | (v35 >> 5);
      a4[3] = (8 * v35) & 0xE0 | v39;
      result += 2;
      a4 += 4;
    }

    while (a4 != v6);
    a4 = v6;
  }

  if (a5)
  {
    v40 = *a2;
    v41 = *a3;
    v42 = 19077 * *result;
    v43 = ((26149 * v41) >> 8) + (v42 >> 8);
    v44 = v43 - 14234;
    v45 = (v43 - 14234) >> 6;
    if (v43 >= 0x379A)
    {
      v46 = -8;
    }

    else
    {
      v46 = 0;
    }

    if (v44 < 0x4000)
    {
      v46 = v45;
    }

    v47 = (v42 >> 8) - (((6419 * v40) >> 8) + ((13320 * v41) >> 8));
    v48 = v47 + 8708;
    v49 = (v47 + 8708) >> 6;
    if (v47 >= -8708)
    {
      v50 = 255;
    }

    else
    {
      v50 = 0;
    }

    if (v48 < 0x4000)
    {
      v50 = v49;
    }

    v51 = ((33050 * v40) >> 8) + (v42 >> 8);
    v52 = v51 - 17685;
    v53 = (v51 - 17685) >> 9;
    if (v51 >= 0x4515)
    {
      v54 = 31;
    }

    else
    {
      v54 = 0;
    }

    if (v52 < 0x4000)
    {
      v54 = v53;
    }

    *a4 = v46 & 0xF8 | (v50 >> 5);
    a4[1] = (8 * v50) & 0xE0 | v54;
  }

  return result;
}

int *ConvertARGBToY_C(int *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *result++;
      *a2++ = (16839 * BYTE2(v4) + 6420 * v4 + 33059 * BYTE1(v4) + 1081344) >> 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

unsigned __int8 *ConvertRGB24ToY_C(unsigned __int8 *result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      *a2++ = (33059 * result[1] + 16839 * *result + 6420 * result[2] + 1081344) >> 16;
      result += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ConvertBGR24ToY_C(uint64_t result, _BYTE *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (result + 2);
    v4 = a3;
    do
    {
      *a2++ = (33059 * *(v3 - 1) + 16839 * *v3 + 6420 * *(v3 - 2) + 1081344) >> 16;
      v3 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *WebPDemuxInternal(uint64_t a1, int a2, int *a3, int a4)
{
  if (a3)
  {
    *a3 = -1;
  }

  v5 = 0;
  if (!a1 || (a4 & 0xFFFFFF00) != 0x100)
  {
    return v5;
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    return 0;
  }

  if (v7 < 0x14)
  {
    v8 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (*v6 == 1179011410 && v6[2] == 1346520407)
  {
    v9 = v6[1];
    if ((v9 + 9) >= 0x11)
    {
      v17 = (v9 + 8);
      if (v7 <= v17)
      {
        v18 = v7 < v17;
        if (!a2 && v7 < v17)
        {
          return 0;
        }
      }

      else
      {
        v18 = 0;
        v7 = (v9 + 8);
      }

      v19 = malloc_type_calloc(1uLL, 0x68uLL, 0x10F0040F2A41E60uLL);
      v5 = v19;
      if (!v19)
      {
        return v5;
      }

      *(v19 + 10) = 0;
      *(v19 + 52) = xmmword_18622A7D0;
      *(v19 + 10) = v19 + 72;
      *(v19 + 12) = v19 + 88;
      *v19 = 12;
      *(v19 + 1) = v7;
      *(v19 + 2) = v17;
      *(v19 + 3) = v7;
      *(v19 + 4) = v6;
      if (v6[3] == 540561494)
      {
        v21 = ParseSingleImage;
        v23 = kMasterChunks;
LABEL_41:
        v24 = v21(v19);
        if (!v24)
        {
          *(v5 + 10) = 2;
        }

        v25 = v24 != 1 || v18;
        v26 = v24 == 2 || v25 == 0;
        if (!v26 && (*(v23 + 2))(v5))
        {
          v27 = 0;
LABEL_54:
          if (a3)
          {
            *a3 = *(v5 + 10);
          }

          if (!v27)
          {
            return v5;
          }

          WebPDemuxDelete(v5);
          return 0;
        }

        *(v5 + 10) = -1;
      }

      else
      {
        v20 = aVp8l;
        while (1)
        {
          v21 = *(v20 + 1);
          if (!v21)
          {
            break;
          }

          v22 = *v20;
          v20 += 24;
          if (v22 == v6[3])
          {
            v23 = v20 - 24;
            goto LABEL_41;
          }
        }
      }

      v27 = 1;
      goto LABEL_54;
    }
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v10 = WebPGetFeaturesInternal(v6, v7, v29, 521);
  if (v10)
  {
    if (v10 == 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (!a3)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v5 = malloc_type_calloc(1uLL, 0x68uLL, 0x10F0040F2A41E60uLL);
  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004052FB7095uLL);
  v12 = v11;
  if (!v5 || !v11 || (*(v5 + 10) = 0, *(v5 + 52) = xmmword_18622A7D0, *(v5 + 10) = v5 + 72, *(v5 + 12) = v5 + 88, *v5 = 0, *(v5 + 1) = v7, *(v5 + 2) = 0, *(v5 + 3) = v7, *(v5 + 4) = v6, *(v11 + 5) = 0, *(v11 + 6) = v7, v13 = v29[0], v14 = DWORD1(v29[0]), *(v11 + 2) = v29[0], *(v11 + 3) = v14, v15 = *(v11 + 4) | DWORD2(v29[0]), *(v11 + 4) = v15, *(v11 + 4) = 0x100000001, (v16 = *(v5 + 9)) != 0) && !*(v16 + 36))
  {
    free(v5);
    free(v12);
    v8 = -1;
    if (a3)
    {
LABEL_27:
      v5 = 0;
      goto LABEL_28;
    }

    return 0;
  }

  *(v5 + 9) = v11;
  *(v11 + 9) = 0;
  *(v5 + 10) = v11 + 72;
  *(v5 + 10) = 2;
  *(v5 + 13) = v13;
  *(v5 + 14) = v14;
  *(v5 + 12) |= 16 * (v15 != 0);
  *(v5 + 17) = 1;
  if (!IsValidSimpleFormat(v5))
  {
    WebPDemuxInternal_cold_1();
  }

  if (a3)
  {
    v8 = 2;
LABEL_28:
    *a3 = v8;
  }

  return v5;
}

void WebPDemuxDelete(void *a1)
{
  if (a1)
  {
    v2 = a1[9];
    if (v2)
    {
      do
      {
        v3 = v2[9];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = a1[11];
    if (v4)
    {
      do
      {
        v5 = v4[2];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    free(a1);
  }
}

unsigned int *WebPDemuxGetI(unsigned int *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          return v2[15];
        case 4:
          return v2[16];
        case 5:
          return v2[17];
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        return v2[13];
      }

      else if (a2 == 2)
      {
        return v2[14];
      }
    }

    else
    {
      return v2[12];
    }
  }

  return result;
}

uint64_t WebPDemuxGetFrame(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 72) = a1;
  return SetFrame(a2, a3);
}

uint64_t SetFrame(int a1, uint64_t a2)
{
  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = *(a2 + 72);
    if (v4)
    {
      v5 = *(v4 + 68);
      if (v5 >= a1)
      {
        if (a1)
        {
          v6 = a1;
        }

        else
        {
          v6 = *(v4 + 68);
        }

        v7 = *(a2 + 72);
        while (1)
        {
          v7 = *(v7 + 72);
          if (!v7)
          {
            break;
          }

          if (*(v7 + 32) == v6)
          {
            v8 = *(v4 + 32);
            v10 = *(v7 + 40);
            v9 = *(v7 + 48);
            v11 = *(v7 + 64);
            if (v11)
            {
              if (v10)
              {
                v12 = v10 - (v11 + *(v7 + 56));
              }

              else
              {
                v12 = 0;
              }

              v9 += v11 + v12;
              v10 = *(v7 + 56);
            }

            if (v8)
            {
              *a2 = v6;
              *(a2 + 4) = v5;
              *(a2 + 8) = *v7;
              *(a2 + 56) = *(v7 + 16);
              *(a2 + 24) = *(v7 + 20);
              *(a2 + 60) = *(v7 + 28);
              *(a2 + 32) = *(v7 + 36);
              *(a2 + 40) = v8 + v10;
              *(a2 + 48) = v9;
              return 1;
            }

            return 0;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t WebPDemuxGetChunk(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 48) = a1;
  return SetChunk(a2, a3, a4);
}

uint64_t SetChunk(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = 0;
  if ((a2 & 0x80000000) == 0)
  {
    if (a1)
    {
      v4 = *(a3 + 48);
      if (v4)
      {
        v5 = *(v4 + 88);
        if (!v5)
        {
          return 0;
        }

        LODWORD(v3) = 0;
        v6 = *(v4 + 32);
        v7 = v5;
        do
        {
          if (*(v6 + *v7) == *a1)
          {
            v3 = (v3 + 1);
          }

          else
          {
            v3 = v3;
          }

          v7 = v7[2];
        }

        while (v7);
        if (v3)
        {
          if (a2)
          {
            v8 = a2;
          }

          else
          {
            v8 = v3;
          }

          if (v8 > v3)
          {
            return 0;
          }

          v9 = *v5;
          v10 = *(v6 + *v5) == *a1;
          while (v10 != v8)
          {
            v5 = v5[2];
            v9 = *v5;
            if (*(v6 + *v5) == *a1)
            {
              ++v10;
            }
          }

          v11 = v5[1] - 8;
          *(a3 + 8) = v6 + v9 + 8;
          *(a3 + 16) = v11;
          *a3 = v8;
          *(a3 + 4) = v3;
          return 1;
        }
      }
    }
  }

  return v3;
}

BOOL IsValidSimpleFormat(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 1;
  }

  if (*(a1 + 52) < 1 || *(a1 + 56) < 1)
  {
    return 0;
  }

  v2 = *(a1 + 72);
  v3 = v1 == 2 && v2 == 0;
  if (v3 || *(v2 + 8) < 1)
  {
    return 0;
  }

  return *(v2 + 12) > 0;
}

uint64_t ParseSingleImage(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 2;
  }

  if (*(a1 + 16) - *a1 < 8uLL)
  {
    return 2;
  }

  if (*(a1 + 8) - *a1 < 8uLL)
  {
    return 1;
  }

  v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004052FB7095uLL);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  result = StoreFrame(1, 0, a1, v3);
  if (result == 2)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0 && *(v4 + 8))
  {
    v4[4] = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
  }

  if (!*(a1 + 44))
  {
    v7 = v4[2];
    if (v7 >= 1)
    {
      v8 = v4[3];
      if (v8 >= 1)
      {
        *(a1 + 40) = 1;
        *(a1 + 56) = v8;
        *(a1 + 48) = v5 | (16 * (v4[4] != 0));
        *(a1 + 52) = v7;
      }
    }
  }

  v6 = *(a1 + 80);
  if (*v6)
  {
    if (!*(*v6 + 36))
    {
LABEL_8:
      free(v4);
      return 2;
    }
  }

  *v6 = v4;
  *(v4 + 9) = 0;
  *(a1 + 80) = v4 + 18;
  *(a1 + 68) = 1;
  return result;
}

uint64_t ParseVP8X(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = 1;
  if ((v1 - *a1) < 8)
  {
    return v3;
  }

  *(a1 + 44) = 1;
  *a1 = v2 + 4;
  v4 = *(a1 + 32);
  v5 = *(v4 + v2 + 4);
  v6 = v2 + 8;
  *a1 = v2 + 8;
  if ((v5 + 9) < 0x13)
  {
    return 2;
  }

  v7 = (v5 & 1u) + v5;
  v8 = *(a1 + 16);
  if (v8 - v6 < v7)
  {
    return 2;
  }

  if (v1 - v6 < v7)
  {
    return 1;
  }

  *(a1 + 48) = *(v4 + v6);
  *a1 = v2 + 12;
  v10 = *(v4 + v2 + 12) | (*(v4 + v2 + 12 + 2) << 16);
  *a1 = v2 + 15;
  *(a1 + 52) = ++v10;
  v11 = *(v4 + v2 + 15) | (*(v4 + v2 + 15 + 2) << 16);
  v12 = v2 + 18;
  *a1 = v12;
  *(a1 + 56) = ++v11;
  if (((v10 * v11) & 0xFFFFFFFF00000000) != 0)
  {
    return 2;
  }

  v13 = v12 + (v7 - 10);
  *a1 = v13;
  *(a1 + 40) = 1;
  if ((v8 - v13) < 8)
  {
    return 2;
  }

  if ((v1 - v13) < 8)
  {
    return 1;
  }

  return ParseVP8XChunks(a1);
}

uint64_t IsValidExtendedFormat(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 52);
    if (v2 < 1)
    {
      return 0;
    }

    v3 = *(a1 + 56);
    if (v3 < 1 || (*(a1 + 60) & 0x80000000) != 0)
    {
      return 0;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 72);
    v6 = !v5 && v1 == 2;
    if (v6 || (v4 & 0xFFFFFFC1) != 0)
    {
      return 0;
    }

    if (v5)
    {
LABEL_14:
      v9 = v5[8];
      v11 = (v4 & 2) == 0 && v9 > 1;
      while (1)
      {
        if (v5[8] != v9)
        {
          goto LABEL_14;
        }

        if (v11)
        {
          return 0;
        }

        if (v5[9])
        {
          if (*(v5 + 8))
          {
            if (*(v5 + 7) > *(v5 + 5))
            {
              return 0;
            }
          }

          else if (!*(v5 + 6))
          {
            return 0;
          }

          v12 = v5[2];
          if (v12 < 1 || v5[3] < 1)
          {
            return 0;
          }
        }

        else
        {
          if (v1 == 2 || *(v5 + 8) && *(v5 + 6) && *(v5 + 7) > *(v5 + 5) || *(v5 + 9))
          {
            return 0;
          }

          v12 = v5[2];
          if (v12 < 1)
          {
            goto LABEL_47;
          }
        }

        v13 = v5[3];
        if (v13 >= 1)
        {
          v14 = *v5;
          if ((v4 & 2) != 0)
          {
            if (v14 < 0)
            {
              return 0;
            }

            result = 0;
            v15 = v5[1];
            if (v15 < 0 || v14 + v12 > v2 || v15 + v13 > v3)
            {
              return result;
            }
          }

          else
          {
            if (v14)
            {
              return 0;
            }

            result = 0;
            if (v13 != v3 || v12 != v2 || v5[1])
            {
              return result;
            }
          }
        }

LABEL_47:
        v5 = *(v5 + 9);
        result = 1;
        if (!v5)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t StoreFrame(int a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 - *a3;
  if (v6 >= 8 && v6 >= a2)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = a3[4];
      v15 = *(v14 + v5);
      *a3 = v5 + 4;
      v16 = *(v14 + v5 + 4);
      v17 = v5 + 8;
      *a3 = v5 + 8;
      if (v16 > 0xFFFFFFF6)
      {
        return 2;
      }

      v18 = (v16 & 1) + v16;
      v19 = v4 - v17;
      v20 = v4 - v17 >= v18 ? (v16 & 1) + v16 : v4 - v17;
      v21 = a3[2];
      if (v21 - v17 < v18)
      {
        return 2;
      }

      v22 = v20 + 8;
      v8 = v19 < v18;
      if (v15 != 540561494)
      {
        if (v15 != 1278758998)
        {
          if (v15 == 1213221953 && v13 == 0)
          {
            *(a4 + 56) = v5;
            *(a4 + 64) = v22;
            v24 = 1;
            *(a4 + 16) = 1;
            *(a4 + 32) = a1;
            v5 = v20 + v17;
            v13 = 1;
          }

          else
          {
LABEL_22:
            v24 = 0;
          }

          *a3 = v5;
          goto LABEL_24;
        }

        if (v13 > 0)
        {
          return 2;
        }
      }

      if (v12)
      {
        goto LABEL_22;
      }

      v29 = 0;
      memset(v28, 0, sizeof(v28));
      v25 = WebPGetFeaturesInternal(v14 + v5, v20 + 8, v28, 521);
      if (v19 < v18 && v25 == 7)
      {
        return 1;
      }

      if (v25)
      {
        return 2;
      }

      *(a4 + 40) = v5;
      *(a4 + 48) = v22;
      *(a4 + 8) = *&v28[0];
      *(a4 + 16) |= DWORD2(v28[0]);
      *(a4 + 32) = a1;
      *(a4 + 36) = v19 >= v18;
      v5 = *a3 + v20;
      *a3 = v5;
      v21 = a3[2];
      v24 = 1;
      v12 = 1;
LABEL_24:
      if (v5 != v21)
      {
        v4 = a3[1];
        v8 = (v4 - v5) < 8 || (v19 < v18);
        if (v8)
        {
          v24 = 0;
        }

        if (v24)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 1;
}

uint64_t ParseVP8XChunks(uint64_t a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 48) & 2;
  while (1)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + v3);
    *a1 = v3 + 4;
    v7 = *(v5 + v3 + 4);
    v8 = v3 + 8;
    *a1 = v3 + 8;
    if (v7 > 0xFFFFFFF6)
    {
      return 2;
    }

    v9 = (v7 & 1) + v7;
    if (*(a1 + 16) - v8 < v9)
    {
      return 2;
    }

    if (v6 > 1213221952)
    {
      if (v6 <= 1296649792)
      {
        if (v6 == 1213221953 || v6 == 1278758998)
        {
LABEL_18:
          result = 2;
          if (v2 > 0 || v4)
          {
            return result;
          }

          *a1 = v3;
          result = ParseSingleImage(a1);
          v2 = 0;
          goto LABEL_44;
        }
      }

      else
      {
        switch(v6)
        {
          case 1296649793:
            if (v9 < 6)
            {
              return 2;
            }

            if (*(a1 + 8) - v8 < v9)
            {
LABEL_40:
              result = 1;
              goto LABEL_44;
            }

            if (!v2)
            {
              result = 0;
              v15 = *(v5 + v8);
              *a1 = v3 + 12;
              *(a1 + 64) = v15;
              *(a1 + 60) = *(v5 + v3 + 12);
              *a1 = v3 + (v9 - 6) + 14;
LABEL_37:
              v2 = 1;
              goto LABEL_44;
            }

            goto LABEL_43;
          case 1346585417:
            v10 = 5;
            goto LABEL_28;
          case 1480085590:
            return 2;
        }
      }

      goto LABEL_39;
    }

    if (v6 <= 1179211844)
    {
      if (v6 == 540561494)
      {
        goto LABEL_18;
      }

      if (v6 == 542133592)
      {
        v10 = 2;
        goto LABEL_28;
      }

LABEL_39:
      if (*(a1 + 8) - v8 < v9)
      {
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    if (v6 == 1179211845)
    {
      v10 = 3;
LABEL_28:
      if (*(a1 + 8) - v8 < v9)
      {
        goto LABEL_40;
      }

      if (((*(a1 + 48) >> v10) & 1) == 0)
      {
LABEL_43:
        result = 0;
        *a1 = v8 + v9;
        goto LABEL_44;
      }

LABEL_41:
      v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
      if (!v16)
      {
        return 2;
      }

      *v16 = v3;
      v16[1] = v7 + 8;
      **(a1 + 96) = v16;
      v16[2] = 0;
      *(a1 + 96) = v16 + 2;
      v8 = *a1;
      goto LABEL_43;
    }

    if (v6 != 1179471425)
    {
      goto LABEL_39;
    }

    if (!v2)
    {
      return 2;
    }

    v13 = v9 >= 0x10;
    v14 = v9 - 16;
    if (!v13)
    {
      goto LABEL_25;
    }

    if ((*(a1 + 8) - v8) < 0x10)
    {
      result = 1;
      goto LABEL_37;
    }

    v17 = *(a1 + 48);
    v2 = 1;
    v18 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004052FB7095uLL);
    if (!v18)
    {
      goto LABEL_26;
    }

    v19 = v18;
    v20 = *(a1 + 32);
    v21 = *a1;
    v22 = (v20 + *a1);
    v23 = *v22;
    v24 = v22[1];
    LODWORD(v22) = v22[2];
    v25 = *a1 + 3;
    *a1 = v25;
    *v18 = (2 * v23) | (v24 << 9) | (v22 << 17);
    v26 = *(v20 + v25);
    v27 = *(v20 + v25 + 1);
    LODWORD(v22) = *(v20 + v25 + 2);
    *a1 = v21 + 6;
    v18[1] = (2 * v26) | (v27 << 9) | (v22 << 17);
    LODWORD(v22) = *(v20 + v21 + 6) | (*(v20 + v21 + 6 + 2) << 16);
    *a1 = v21 + 9;
    LODWORD(v22) = v22 + 1;
    v18[2] = v22;
    v28 = *(v20 + v21 + 9) | (*(v20 + v21 + 9 + 2) << 16);
    *a1 = v21 + 12;
    v18[3] = ++v28;
    v29 = *(v20 + v21 + 12) | (*(v20 + v21 + 12 + 2) << 16);
    *a1 = v21 + 15;
    v18[5] = v29;
    LODWORD(v20) = *(v20 + v21 + 15);
    v30 = v21 + 16;
    *a1 = v21 + 16;
    v18[6] = v20 & 1;
    v18[7] = (v20 >> 1) & 1;
    if (((v22 * v28) & 0xFFFFFFFF00000000) != 0)
    {
      free(v18);
LABEL_25:
      v2 = 1;
LABEL_26:
      result = 2;
      goto LABEL_44;
    }

    result = StoreFrame(*(a1 + 68) + 1, v14, a1, v18);
    if (result != 2)
    {
      if (*a1 - v30 <= v14)
      {
        v31 = result;
      }

      else
      {
        v31 = 2;
      }

      if (v31 == 2 || (v17 & 2) == 0)
      {
        goto LABEL_55;
      }

      if (v19[8] < 1)
      {
        v31 = result;
        goto LABEL_55;
      }

      v32 = *(a1 + 80);
      if (!*v32 || *(*v32 + 36))
      {
        *v32 = v19;
        *(v19 + 9) = 0;
        *(a1 + 80) = v19 + 18;
        ++*(a1 + 68);
        goto LABEL_37;
      }
    }

    v31 = 2;
LABEL_55:
    free(v19);
    v2 = 1;
    result = v31;
LABEL_44:
    v3 = *a1;
    if (*a1 != *(a1 + 16))
    {
      result = (*(a1 + 8) - v3) < 8 ? 1 : result;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t VP8ResetProba(uint64_t result)
{
  *(result + 2) = -1;
  *result = -1;
  return result;
}

BOOL VP8ParseIntraModeRow(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 408) >= 1)
  {
    v4 = 0;
    v233 = 0;
    v231 = (a2 + 2816);
    while (1)
    {
      v232 = *(v2 + 2808);
      v5 = *(v2 + 2912);
      v6 = *(v2 + 136);
      if (v6)
      {
        v7 = *(v2 + 1192);
        v9 = *(a1 + 8);
        v8 = *(a1 + 12);
        if (v8 < 0)
        {
          v10 = *(a1 + 16);
          if (!v10)
          {
            VP8GetValue_cold_1();
          }

          if (v10 >= *(a1 + 32))
          {
            VP8LoadFinalBytes(a1);
            v8 = *(a1 + 12);
          }

          else
          {
            v11 = *v10;
            *(a1 + 16) = v10 + 7;
            *(&v12 + 1) = *a1;
            *&v12 = bswap64(v11);
            *a1 = v12 >> 8;
            v8 += 56;
          }
        }

        v13 = (v9 * v7) >> 8;
        v14 = *a1;
        v15 = v8;
        v16 = *a1 >> v8;
        if (v13 >= v16)
        {
          v17 = v13 + 1;
        }

        else
        {
          v17 = v9 - v13;
          v14 -= (v13 + 1) << v15;
          *a1 = v14;
        }

        v18 = __clz(v17) ^ 0x18;
        v19 = v17 << v18;
        v20 = v15 - v18;
        v21 = v19 - 1;
        *(a1 + 8) = v19 - 1;
        *(a1 + 12) = v15 - v18;
        if (v13 >= v16)
        {
          v26 = *(v2 + 1193);
          if (v20 < 0)
          {
            v27 = *(a1 + 16);
            if (!v27)
            {
              VP8GetValue_cold_1();
            }

            if (v27 >= *(a1 + 32))
            {
              VP8LoadFinalBytes(a1);
              v20 = *(a1 + 12);
              v14 = *a1;
            }

            else
            {
              v28 = *v27;
              *(a1 + 16) = v27 + 7;
              *(&v29 + 1) = v14;
              *&v29 = bswap64(v28);
              v14 = v29 >> 8;
              *a1 = v14;
              v20 += 56;
            }
          }

          v36 = (v21 * v26) >> 8;
          v37 = v20;
          v38 = v14 >> v20;
          if (v36 >= v38)
          {
            v39 = v36 + 1;
          }

          else
          {
            v39 = v21 - v36;
            *a1 = v14 - ((v36 + 1) << v37);
          }

          LOBYTE(v6) = v36 < v38;
          v40 = __clz(v39) ^ 0x18;
          *(a1 + 8) = (v39 << v40) - 1;
          *(a1 + 12) = v37 - v40;
        }

        else
        {
          v22 = *(v2 + 1194);
          if (v20 < 0)
          {
            v23 = *(a1 + 16);
            if (!v23)
            {
              VP8GetValue_cold_1();
            }

            if (v23 >= *(a1 + 32))
            {
              VP8LoadFinalBytes(a1);
              v20 = *(a1 + 12);
              v14 = *a1;
            }

            else
            {
              v24 = *v23;
              *(a1 + 16) = v23 + 7;
              *(&v25 + 1) = v14;
              *&v25 = bswap64(v24);
              v14 = v25 >> 8;
              *a1 = v14;
              v20 += 56;
            }
          }

          v30 = v20;
          v31 = (v21 * v22) >> 8;
          v32 = v30;
          v33 = v14 >> v30;
          if (v31 >= v33)
          {
            v34 = v31 + 1;
          }

          else
          {
            v34 = v21 - v31;
            *a1 = v14 - ((v31 + 1) << v32);
          }

          v35 = __clz(v34) ^ 0x18;
          *(a1 + 8) = (v34 << v35) - 1;
          *(a1 + 12) = v32 - v35;
          if (v31 >= v33)
          {
            LOBYTE(v6) = 2;
          }

          else
          {
            LOBYTE(v6) = 3;
          }
        }
      }

      v41 = (v5 + 800 * v233);
      v41[798] = v6;
      if (!*(v2 + 2800))
      {
        break;
      }

      v42 = *(v2 + 2804);
      v44 = *(a1 + 8);
      v43 = *(a1 + 12);
      if (v43 < 0)
      {
        v45 = *(a1 + 16);
        if (!v45)
        {
          VP8GetValue_cold_1();
        }

        if (v45 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v43 = *(a1 + 12);
        }

        else
        {
          v46 = *v45;
          *(a1 + 16) = v45 + 7;
          *(&v47 + 1) = *a1;
          *&v47 = bswap64(v46);
          *a1 = v47 >> 8;
          v43 += 56;
        }
      }

      v50 = (v44 * v42) >> 8;
      v51 = v43;
      v52 = *a1 >> v43;
      if (v50 >= v52)
      {
        v53 = v50 + 1;
      }

      else
      {
        v53 = v44 - v50;
        *a1 -= (v50 + 1) << v51;
      }

      v54 = v50 < v52;
      v55 = __clz(v53) ^ 0x18;
      v56 = v53 << v55;
      v48 = v51 - v55;
      v49 = v56 - 1;
      *(a1 + 8) = v56 - 1;
      *(a1 + 12) = v48;
      v41[797] = v54;
      if (v48 < 0)
      {
        goto LABEL_45;
      }

LABEL_49:
      v60 = (145 * v49) >> 8;
      v61 = v48;
      v62 = *a1 >> v48;
      if (v60 < v62)
      {
        v63 = v49 - v60;
        *a1 -= (v60 + 1) << v61;
      }

      else
      {
        v63 = v60 + 1;
      }

      v64 = __clz(v63) ^ 0x18;
      v65 = v61 - v64;
      v66 = (v63 << v64) - 1;
      *(a1 + 8) = v66;
      *(a1 + 12) = v65;
      v41[768] = v60 >= v62;
      v229 = v41;
      v230 = v4;
      if (v60 >= v62)
      {
        v67 = 0;
        v68 = v41 + 769;
        v69 = v231;
        v70 = v232 + v4;
        while (1)
        {
          v71 = 0;
          v72 = *(v69 + v67);
          do
          {
            v73 = &kBModesProba + 90 * *(v70 + v71) + 9 * v72;
            v74 = *v73;
            v76 = *(a1 + 8);
            v75 = *(a1 + 12);
            if (v75 < 0)
            {
              v77 = *(a1 + 16);
              if (!v77)
              {
                VP8GetValue_cold_1();
              }

              if (v77 >= *(a1 + 32))
              {
                VP8LoadFinalBytes(a1);
                v75 = *(a1 + 12);
              }

              else
              {
                v78 = *v77;
                *(a1 + 16) = v77 + 7;
                *(&v79 + 1) = *a1;
                *&v79 = bswap64(v78);
                *a1 = v79 >> 8;
                v75 += 56;
              }
            }

            v80 = (v76 * v74) >> 8;
            v81 = *a1;
            v82 = v75;
            v83 = *a1 >> v75;
            if (v80 >= v83)
            {
              v84 = v80 + 1;
            }

            else
            {
              v84 = v76 - v80;
              v81 -= (v80 + 1) << v82;
              *a1 = v81;
            }

            v85 = __clz(v84) ^ 0x18;
            v86 = v84 << v85;
            v87 = v82 - v85;
            v88 = v86 - 1;
            *(a1 + 8) = v86 - 1;
            *(a1 + 12) = v82 - v85;
            if (v80 >= v83)
            {
              v72 = 0;
              goto LABEL_141;
            }

            v89 = v73[1];
            if (v87 < 0)
            {
              v90 = *(a1 + 16);
              if (!v90)
              {
                VP8GetValue_cold_1();
              }

              if (v90 >= *(a1 + 32))
              {
                VP8LoadFinalBytes(a1);
                v87 = *(a1 + 12);
                v81 = *a1;
              }

              else
              {
                v91 = *v90;
                *(a1 + 16) = v90 + 7;
                *(&v92 + 1) = v81;
                *&v92 = bswap64(v91);
                v81 = v92 >> 8;
                *a1 = v81;
                v87 += 56;
              }
            }

            v93 = (v88 * v89) >> 8;
            v94 = v87;
            v95 = v81 >> v87;
            if (v93 >= (v81 >> v87))
            {
              v96 = v93 + 1;
            }

            else
            {
              v96 = v88 - v93;
              v81 -= (v93 + 1) << v94;
              *a1 = v81;
            }

            v97 = __clz(v96) ^ 0x18;
            v98 = v96 << v97;
            v99 = v94 - v97;
            v100 = v98 - 1;
            *(a1 + 8) = v98 - 1;
            *(a1 + 12) = v94 - v97;
            if (v93 >= v95)
            {
              v72 = 1;
              goto LABEL_141;
            }

            v101 = v73[2];
            if (v99 < 0)
            {
              v102 = *(a1 + 16);
              if (!v102)
              {
                VP8GetValue_cold_1();
              }

              if (v102 >= *(a1 + 32))
              {
                VP8LoadFinalBytes(a1);
                v99 = *(a1 + 12);
                v81 = *a1;
              }

              else
              {
                v103 = *v102;
                *(a1 + 16) = v102 + 7;
                *(&v104 + 1) = v81;
                *&v104 = bswap64(v103);
                v81 = v104 >> 8;
                *a1 = v81;
                v99 += 56;
              }
            }

            v105 = (v100 * v101) >> 8;
            v106 = v99;
            v107 = v81 >> v99;
            if (v105 >= (v81 >> v99))
            {
              v108 = v105 + 1;
            }

            else
            {
              v108 = v100 - v105;
              v81 -= (v105 + 1) << v106;
              *a1 = v81;
            }

            v109 = __clz(v108) ^ 0x18;
            v110 = v108 << v109;
            v111 = v106 - v109;
            v112 = v110 - 1;
            *(a1 + 8) = v110 - 1;
            *(a1 + 12) = v106 - v109;
            if (v105 >= v107)
            {
              v72 = 2;
              goto LABEL_141;
            }

            v113 = v73[3];
            if (v111 < 0)
            {
              v114 = *(a1 + 16);
              if (!v114)
              {
                VP8GetValue_cold_1();
              }

              if (v114 >= *(a1 + 32))
              {
                VP8LoadFinalBytes(a1);
                v111 = *(a1 + 12);
                v81 = *a1;
              }

              else
              {
                v115 = *v114;
                *(a1 + 16) = v114 + 7;
                *(&v116 + 1) = v81;
                *&v116 = bswap64(v115);
                v81 = v116 >> 8;
                *a1 = v81;
                v111 += 56;
              }
            }

            v117 = (v112 * v113) >> 8;
            v118 = v111;
            v119 = v81 >> v111;
            if (v117 >= (v81 >> v111))
            {
              v120 = v117 + 1;
            }

            else
            {
              v120 = v112 - v117;
              v81 -= (v117 + 1) << v118;
              *a1 = v81;
            }

            v121 = __clz(v120) ^ 0x18;
            v122 = v120 << v121;
            v123 = v118 - v121;
            v124 = v122 - 1;
            *(a1 + 8) = v122 - 1;
            *(a1 + 12) = v118 - v121;
            if (v117 >= v119)
            {
              v129 = v73[4];
              if (v123 < 0)
              {
                v130 = *(a1 + 16);
                if (!v130)
                {
                  VP8GetValue_cold_1();
                }

                if (v130 >= *(a1 + 32))
                {
                  VP8LoadFinalBytes(a1);
                  v123 = *(a1 + 12);
                  v81 = *a1;
                }

                else
                {
                  v131 = *v130;
                  *(a1 + 16) = v130 + 7;
                  *(&v132 + 1) = v81;
                  *&v132 = bswap64(v131);
                  v81 = v132 >> 8;
                  *a1 = v81;
                  v123 += 56;
                }
              }

              v143 = (v124 * v129) >> 8;
              v144 = v123;
              v145 = v81 >> v123;
              if (v143 >= (v81 >> v123))
              {
                v146 = v143 + 1;
              }

              else
              {
                v146 = v124 - v143;
                v81 -= (v143 + 1) << v144;
                *a1 = v81;
              }

              v147 = __clz(v146) ^ 0x18;
              v148 = v146 << v147;
              v149 = v144 - v147;
              v150 = v148 - 1;
              *(a1 + 8) = v148 - 1;
              *(a1 + 12) = v144 - v147;
              if (v143 >= v145)
              {
                v72 = 3;
                goto LABEL_141;
              }

              v151 = v73[5];
              if (v149 < 0)
              {
                v152 = *(a1 + 16);
                if (!v152)
                {
                  VP8GetValue_cold_1();
                }

                if (v152 >= *(a1 + 32))
                {
                  VP8LoadFinalBytes(a1);
                  v149 = *(a1 + 12);
                  v81 = *a1;
                }

                else
                {
                  v153 = *v152;
                  *(a1 + 16) = v152 + 7;
                  *(&v154 + 1) = v81;
                  *&v154 = bswap64(v153);
                  v81 = v154 >> 8;
                  *a1 = v81;
                  v149 += 56;
                }
              }

              v166 = (v150 * v151) >> 8;
              if (v166 >= (v81 >> v149))
              {
                v167 = v166 + 1;
                v72 = 4;
              }

              else
              {
                v167 = v150 - v166;
                *a1 = v81 - ((v166 + 1) << v149);
                v72 = 5;
              }
            }

            else
            {
              v125 = v73[6];
              if (v123 < 0)
              {
                v126 = *(a1 + 16);
                if (!v126)
                {
                  VP8GetValue_cold_1();
                }

                if (v126 >= *(a1 + 32))
                {
                  VP8LoadFinalBytes(a1);
                  v123 = *(a1 + 12);
                  v81 = *a1;
                }

                else
                {
                  v127 = *v126;
                  *(a1 + 16) = v126 + 7;
                  *(&v128 + 1) = v81;
                  *&v128 = bswap64(v127);
                  v81 = v128 >> 8;
                  *a1 = v81;
                  v123 += 56;
                }
              }

              v133 = (v124 * v125) >> 8;
              v134 = v81 >> v123;
              if (v133 >= (v81 >> v123))
              {
                v135 = v133 + 1;
              }

              else
              {
                v135 = v124 - v133;
                v81 -= (v133 + 1) << v123;
                *a1 = v81;
              }

              v136 = __clz(v135) ^ 0x18;
              v137 = v123 - v136;
              v138 = (v135 << v136) - 1;
              *(a1 + 8) = v138;
              *(a1 + 12) = v137;
              if (v133 >= v134)
              {
                v72 = 6;
                goto LABEL_141;
              }

              v139 = v73[7];
              if (v137 < 0)
              {
                v140 = *(a1 + 16);
                if (!v140)
                {
                  VP8GetValue_cold_1();
                }

                if (v140 >= *(a1 + 32))
                {
                  VP8LoadFinalBytes(a1);
                  v137 = *(a1 + 12);
                  v81 = *a1;
                }

                else
                {
                  v141 = *v140;
                  *(a1 + 16) = v140 + 7;
                  *(&v142 + 1) = v81;
                  *&v142 = bswap64(v141);
                  v81 = v142 >> 8;
                  *a1 = v81;
                  v137 += 56;
                }
              }

              v155 = (v138 * v139) >> 8;
              v156 = v137;
              v157 = v81 >> v137;
              if (v155 >= (v81 >> v137))
              {
                v158 = v155 + 1;
              }

              else
              {
                v158 = v138 - v155;
                v81 -= (v155 + 1) << v156;
                *a1 = v81;
              }

              v159 = __clz(v158) ^ 0x18;
              v160 = v158 << v159;
              v149 = v156 - v159;
              v161 = v160 - 1;
              *(a1 + 8) = v160 - 1;
              *(a1 + 12) = v156 - v159;
              if (v155 >= v157)
              {
                v72 = 7;
                goto LABEL_141;
              }

              v162 = v73[8];
              if (v149 < 0)
              {
                v163 = *(a1 + 16);
                if (!v163)
                {
                  VP8GetValue_cold_1();
                }

                if (v163 >= *(a1 + 32))
                {
                  VP8LoadFinalBytes(a1);
                  v149 = *(a1 + 12);
                  v81 = *a1;
                }

                else
                {
                  v164 = *v163;
                  *(a1 + 16) = v163 + 7;
                  *(&v165 + 1) = v81;
                  *&v165 = bswap64(v164);
                  v81 = v165 >> 8;
                  *a1 = v81;
                  v149 += 56;
                }
              }

              v168 = (v161 * v162) >> 8;
              if (v168 >= (v81 >> v149))
              {
                v167 = v168 + 1;
                v72 = 8;
              }

              else
              {
                v167 = v161 - v168;
                *a1 = v81 - ((v168 + 1) << v149);
                v72 = 9;
              }
            }

            v169 = __clz(v167) ^ 0x18;
            *(a1 + 8) = (v167 << v169) - 1;
            *(a1 + 12) = v149 - v169;
LABEL_141:
            *(v70 + v71++) = v72;
          }

          while (v71 != 4);
          *v68++ = *(v232 + 4 * v233);
          *(v231 + v67) = v72;
          v69 = v231;
          if (++v67 == 4)
          {
            goto LABEL_170;
          }
        }
      }

      if (v65 < 0)
      {
        v170 = *(a1 + 16);
        if (!v170)
        {
          VP8GetValue_cold_1();
        }

        if (v170 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v65 = *(a1 + 12);
        }

        else
        {
          v171 = *v170;
          *(a1 + 16) = v170 + 7;
          *(&v172 + 1) = *a1;
          *&v172 = bswap64(v171);
          *a1 = v172 >> 8;
          v65 += 56;
        }
      }

      v173 = (156 * v66) >> 8;
      v174 = *a1;
      v175 = v65;
      v176 = *a1 >> v65;
      if (v173 >= v176)
      {
        v177 = v173 + 1;
      }

      else
      {
        v177 = v66 - v173;
        v174 -= (v173 + 1) << v175;
        *a1 = v174;
      }

      v178 = __clz(v177) ^ 0x18;
      v179 = v177 << v178;
      v180 = v175 - v178;
      v181 = v179 - 1;
      *(a1 + 8) = v179 - 1;
      *(a1 + 12) = v175 - v178;
      if (v173 >= v176)
      {
        if (v180 < 0)
        {
          v185 = *(a1 + 16);
          if (!v185)
          {
            VP8GetValue_cold_1();
          }

          if (v185 >= *(a1 + 32))
          {
            VP8LoadFinalBytes(a1);
            v180 = *(a1 + 12);
            v174 = *a1;
          }

          else
          {
            v186 = *v185;
            *(a1 + 16) = v185 + 7;
            *(&v187 + 1) = v174;
            *&v187 = bswap64(v186);
            v174 = v187 >> 8;
            *a1 = v174;
            v180 += 56;
          }
        }

        v191 = (163 * v181) >> 8;
        if (v191 >= (v174 >> v180))
        {
          v190 = 0;
          v189 = v191 + 1;
        }

        else
        {
          v189 = v181 - v191;
          *a1 = v174 - ((v191 + 1) << v180);
          v190 = 2;
        }
      }

      else
      {
        if (v180 < 0)
        {
          v182 = *(a1 + 16);
          if (!v182)
          {
            VP8GetValue_cold_1();
          }

          if (v182 >= *(a1 + 32))
          {
            VP8LoadFinalBytes(a1);
            v180 = *(a1 + 12);
            v174 = *a1;
          }

          else
          {
            v183 = *v182;
            *(a1 + 16) = v182 + 7;
            *(&v184 + 1) = v174;
            *&v184 = bswap64(v183);
            v174 = v184 >> 8;
            *a1 = v174;
            v180 += 56;
          }
        }

        v188 = (v181 >> 1) & 0xFFFFFF;
        if (v188 >= (v174 >> v180))
        {
          v189 = v188 + 1;
          v190 = 3;
        }

        else
        {
          v189 = v181 - v188;
          *a1 = v174 - ((v188 + 1) << v180);
          v190 = 1;
        }
      }

      v192 = __clz(v189) ^ 0x18;
      *(a1 + 8) = (v189 << v192) - 1;
      *(a1 + 12) = v180 - v192;
      v41[769] = v190;
      v193 = 16843009 * v190;
      *(v232 + 4 * v233) = v193;
      *v231 = v193;
LABEL_170:
      v195 = *(a1 + 8);
      v194 = *(a1 + 12);
      v2 = a2;
      if (v194 < 0)
      {
        v196 = *(a1 + 16);
        if (!v196)
        {
          VP8GetValue_cold_1();
        }

        if (v196 >= *(a1 + 32))
        {
          VP8LoadFinalBytes(a1);
          v194 = *(a1 + 12);
        }

        else
        {
          v197 = *v196;
          *(a1 + 16) = v196 + 7;
          *(&v198 + 1) = *a1;
          *&v198 = bswap64(v197);
          *a1 = v198 >> 8;
          v194 += 56;
        }
      }

      v199 = (142 * v195) >> 8;
      v200 = *a1;
      v201 = v194;
      v202 = *a1 >> v194;
      if (v199 >= v202)
      {
        v203 = v199 + 1;
      }

      else
      {
        v203 = v195 - v199;
        v200 -= (v199 + 1) << v201;
        *a1 = v200;
      }

      v204 = __clz(v203) ^ 0x18;
      v205 = v203 << v204;
      v206 = v201 - v204;
      v207 = v205 - 1;
      *(a1 + 8) = v205 - 1;
      *(a1 + 12) = v201 - v204;
      if (v199 >= v202)
      {
        v211 = 0;
      }

      else
      {
        if (v206 < 0)
        {
          v208 = *(a1 + 16);
          if (!v208)
          {
            VP8GetValue_cold_1();
          }

          if (v208 >= *(a1 + 32))
          {
            VP8LoadFinalBytes(a1);
            v206 = *(a1 + 12);
            v200 = *a1;
          }

          else
          {
            v209 = *v208;
            *(a1 + 16) = v208 + 7;
            *(&v210 + 1) = v200;
            *&v210 = bswap64(v209);
            v200 = v210 >> 8;
            *a1 = v200;
            v206 += 56;
          }
        }

        v212 = (114 * v207) >> 8;
        v213 = v206;
        v214 = v200 >> v206;
        if (v212 >= (v200 >> v206))
        {
          v215 = v212 + 1;
        }

        else
        {
          v215 = v207 - v212;
          v200 -= (v212 + 1) << v213;
          *a1 = v200;
        }

        v216 = __clz(v215) ^ 0x18;
        v217 = v215 << v216;
        v218 = v213 - v216;
        v219 = v217 - 1;
        *(a1 + 8) = v217 - 1;
        *(a1 + 12) = v213 - v216;
        if (v212 >= v214)
        {
          v211 = 2;
        }

        else
        {
          if (v218 < 0)
          {
            v220 = *(a1 + 16);
            if (!v220)
            {
              VP8GetValue_cold_1();
            }

            if (v220 >= *(a1 + 32))
            {
              VP8LoadFinalBytes(a1);
              v218 = *(a1 + 12);
              v200 = *a1;
            }

            else
            {
              v221 = *v220;
              *(a1 + 16) = v220 + 7;
              *(&v222 + 1) = v200;
              *&v222 = bswap64(v221);
              v200 = v222 >> 8;
              *a1 = v200;
              v218 += 56;
            }
          }

          v223 = (183 * v219) >> 8;
          v224 = v218;
          if (v223 >= (v200 >> v218))
          {
            v225 = v223 + 1;
            v211 = 3;
          }

          else
          {
            v225 = v219 - v223;
            *a1 = v200 - ((v223 + 1) << v224);
            v211 = 1;
          }

          v226 = __clz(v225) ^ 0x18;
          *(a1 + 8) = (v225 << v226) - 1;
          *(a1 + 12) = v224 - v226;
        }
      }

      v229[785] = v211;
      v4 = v230 + 4;
      if (++v233 >= *(a2 + 408))
      {
        return *(v2 + 56) == 0;
      }
    }

    v49 = *(a1 + 8);
    v48 = *(a1 + 12);
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_45:
    v57 = *(a1 + 16);
    if (!v57)
    {
      VP8GetValue_cold_1();
    }

    if (v57 >= *(a1 + 32))
    {
      VP8LoadFinalBytes(a1);
      v48 = *(a1 + 12);
    }

    else
    {
      v58 = *v57;
      *(a1 + 16) = v57 + 7;
      *(&v59 + 1) = *a1;
      *&v59 = bswap64(v58);
      *a1 = v59 >> 8;
      v48 += 56;
    }

    goto LABEL_49;
  }

  return *(v2 + 56) == 0;
}

uint64_t VP8ParseProba(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a2 + 1195;
  v28 = a2 + 1195;
  v5 = a2 + 2256;
  v6 = &CoeffsUpdateProba;
  v7 = &CoeffsProba0;
  do
  {
    v32 = v5;
    v33 = v3;
    v8 = 0;
    v29 = v4;
    v30 = v7;
    v31 = v6;
    do
    {
      v34 = v4;
      v35 = v8;
      v9 = 0;
      v10 = v7;
      v11 = v6;
      do
      {
        for (i = 0; i != 11; ++i)
        {
          v13 = v11[i];
          v15 = *(a1 + 8);
          v14 = *(a1 + 12);
          if (v14 < 0)
          {
            v16 = *(a1 + 16);
            if (!v16)
            {
              VP8GetValue_cold_1();
            }

            if (v16 >= *(a1 + 32))
            {
              VP8LoadFinalBytes(a1);
              v14 = *(a1 + 12);
            }

            else
            {
              v17 = *v16;
              *(a1 + 16) = v16 + 7;
              *(&v18 + 1) = *a1;
              *&v18 = bswap64(v17);
              *a1 = v18 >> 8;
              v14 += 56;
            }
          }

          v19 = (v15 * v13) >> 8;
          v20 = v14;
          v21 = *a1 >> v14;
          if (v19 >= v21)
          {
            v22 = v19 + 1;
          }

          else
          {
            v22 = v15 - v19;
            *a1 -= (v19 + 1) << v20;
          }

          v23 = __clz(v22) ^ 0x18;
          *(a1 + 8) = (v22 << v23) - 1;
          *(a1 + 12) = v20 - v23;
          if (v19 >= v21)
          {
            Value = v10[i];
          }

          else
          {
            Value = VP8GetValue(a1, 8);
          }

          *(v4 + i) = Value;
        }

        ++v9;
        v11 += 11;
        v10 += 11;
        v4 += 11;
      }

      while (v9 != 3);
      v8 = v35 + 1;
      v6 += 33;
      v7 += 33;
      v4 = v34 + 33;
    }

    while (v35 != 7);
    for (j = 0; j != 17; ++j)
    {
      *(v32 + 8 * j) = v28 + 264 * v33 + 33 * kBands[j];
    }

    v3 = v33 + 1;
    v6 = v31 + 264;
    v7 = v30 + 264;
    v4 = v29 + 264;
    v5 = v32 + 136;
  }

  while (v33 != 3);
  result = VP8GetValue(a1, 1);
  *(a2 + 2800) = result;
  if (result)
  {
    result = VP8GetValue(a1, 8);
    *(a2 + 2804) = result;
  }

  return result;
}

uint64_t WebPParseHeaders(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!a1)
  {
    WebPParseHeaders_cold_1();
  }

  v4 = ParseHeadersInternal(*a1, *(a1 + 8), 0, 0, 0, &v3, 0, a1);
  if (!v4)
  {
    if (!v3)
    {
      return v4;
    }

    return 4;
  }

  if (v4 == 7 && v3 != 0)
  {
    return 4;
  }

  return v4;
}

uint64_t ParseHeadersInternal(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned int *a4, int *a5, int *a6, int *a7, uint64_t a8)
{
  v43 = a2;
  v44 = a1;
  if (a8)
  {
    v13 = *(a8 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = 7;
  if (!a1 || a2 < 0xC)
  {
    return v14;
  }

  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *&v37 = a1;
  *(&v37 + 1) = a2;
  v15 = bswap32(*a1);
  v16 = v15 >= 0x52494646;
  v17 = v15 > 0x52494646;
  v18 = !v16;
  v19 = v17 - v18;
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    if (*(a1 + 8) != 1346520407)
    {
      return 3;
    }

    v20 = *(a1 + 4);
    if ((v20 + 9) < 0x15)
    {
      return 3;
    }

    if (v13 && a2 - 8 < v20)
    {
      return 7;
    }

    *(&v39 + 1) = *(a1 + 4);
    a1 += 12;
    v43 = a2 - 12;
    v44 = a1;
    if (a2 - 12 < 8)
    {
      return 7;
    }

    a2 -= 12;
  }

  v21 = bswap32(*a1);
  v16 = v21 >= 0x56503858;
  v22 = v21 > 0x56503858;
  v23 = !v16;
  v24 = v22 - v23;
  if (v22 != v23)
  {
    LOBYTE(v25) = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(a1 + 4) != 10)
  {
    return 3;
  }

  v16 = a2 >= 0x12;
  a2 -= 18;
  if (!v16)
  {
    return 7;
  }

  v29 = (*(a1 + 12) | (*(a1 + 14) << 16)) + 1;
  v28 = (*(a1 + 15) | (*(a1 + 17) << 16)) + 1;
  if (((v29 * v28) & 0xFFFFFFFF00000000) != 0)
  {
    return 3;
  }

  v27 = *(a1 + 8);
  a1 += 18;
  v43 = a2;
  v44 = a1;
  if (v19)
  {
    return 3;
  }

  v25 = (v27 >> 1) & 1;
  v26 = v25;
  if (a5)
  {
LABEL_16:
    *a5 = (v27 >> 4) & 1;
  }

LABEL_17:
  if (a6)
  {
    *a6 = v26;
  }

  if (a7)
  {
    *a7 = 0;
  }

  v41 = v28;
  v42 = v29;
  if (a8)
  {
    LOBYTE(v25) = 0;
  }

  if ((v25 & 1) == 0)
  {
    if (a2 < 4)
    {
      goto LABEL_25;
    }

    if (v19 | v24)
    {
      if (!v19 || !v24)
      {
        goto LABEL_47;
      }

      if (*a1 != 1213221953)
      {
        v20 = 0;
        goto LABEL_47;
      }
    }

    v30 = ParseOptionalChunks(&v44, &v43, v20, &v38, &v38 + 1);
    if (v30)
    {
      goto LABEL_48;
    }

    v20 = *(&v39 + 1);
LABEL_47:
    v30 = ParseVP8Header(&v44, &v43, v13, v20, &v39, &v40);
    if (v30)
    {
LABEL_48:
      v14 = v30;
      if (a8)
      {
        return v14;
      }

LABEL_49:
      if (v24 || v14 != 7)
      {
        return v14;
      }

      goto LABEL_51;
    }

    v31 = v39;
    if (v39 > 0xFFFFFFF6)
    {
      return 3;
    }

    v33 = v40;
    if (a7 && !v26)
    {
      if (v40)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      *a7 = v34;
    }

    if (v33)
    {
      if (v43 >= 5)
      {
        if (!VP8LGetInfo(v44, v43, &v42, &v41, a5))
        {
          return 3;
        }

        goto LABEL_72;
      }
    }

    else if (v43 >= 0xA)
    {
      if (!VP8GetInfo(v44, v43, v31, &v42, &v41))
      {
        return 3;
      }

LABEL_72:
      if (!v24)
      {
        v14 = 3;
        if (v29 != v42 || v28 != v41)
        {
          return v14;
        }
      }

      if (a8)
      {
        *a8 = v37;
        *(a8 + 16) = 0u;
        v35 = v39;
        *(a8 + 32) = v38;
        *(a8 + 48) = v35;
        *(a8 + 64) = v40;
        v36 = &v44[-*a8];
        *(a8 + 24) = v36;
        if (v36 > 0xFFFFFFF5)
        {
          ParseHeadersInternal_cold_2();
        }

        if (v36 != (*(a8 + 8) - v43))
        {
          ParseHeadersInternal_cold_1();
        }
      }

      goto LABEL_51;
    }

LABEL_25:
    v14 = 7;
    if (a8)
    {
      return v14;
    }

    goto LABEL_49;
  }

LABEL_51:
  if (a5)
  {
    *a5 |= v38 != 0;
  }

  if (a3)
  {
    *a3 = v42;
  }

  v14 = 0;
  if (a4)
  {
    *a4 = v41;
  }

  return v14;
}

uint64_t DecodeIntoRGBABuffer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (!WebPInitDecBufferInternal(&v13, 521))
  {
    return 0;
  }

  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v28 = 0;
  v21 = &v13;
  *&v14 = a4;
  DWORD2(v14) = a5;
  *&v15 = a6;
  LODWORD(v13) = a1;
  HIDWORD(v13) = 1;
  if (DecodeInto(a2, a3, &v21))
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t DecodeInto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = a1;
  v13 = a2;
  LODWORD(v14) = 1;
  v4 = WebPParseHeaders(&v12);
  if (v4)
  {
    return v4;
  }

  if (!a3)
  {
    DecodeInto_cold_1();
  }

  if (!VP8InitIoInternal(v18, 521))
  {
    return 2;
  }

  *&v19 = v13 - *(&v14 + 1);
  *(&v19 + 1) = v12 + *(&v14 + 1);
  WebPInitCustomIo(a3, v18);
  if (!v17)
  {
    v8 = VP8New();
    if (!v8)
    {
      return 1;
    }

    v9 = v8;
    v10 = *(&v15 + 1);
    *(v8 + 371) = v15;
    *(v8 + 372) = v10;
    if (!VP8GetHeaders(v8, v18))
    {
      goto LABEL_21;
    }

    v4 = WebPAllocateDecBuffer(v18[0], SDWORD1(v18[0]), *(a3 + 40), *a3);
    if (v4)
    {
      goto LABEL_22;
    }

    v9[50] = VP8GetThreadMethod(*(a3 + 40), &v12);
    VP8InitDithering(*(a3 + 40), v9);
    if (VP8Decode(v9, v18))
    {
      v4 = 0;
    }

    else
    {
LABEL_21:
      v4 = *v9;
    }

LABEL_22:
    VP8Delete(v9);
    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v6 = VP8LNew();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if (!VP8LDecodeHeader(v6, v18))
  {
    goto LABEL_18;
  }

  v4 = WebPAllocateDecBuffer(v18[0], SDWORD1(v18[0]), *(a3 + 40), *a3);
  if (v4)
  {
    goto LABEL_19;
  }

  if (VP8LDecodeImage(v7))
  {
    v4 = 0;
  }

  else
  {
LABEL_18:
    v4 = *v7;
  }

LABEL_19:
  VP8LDelete(v7);
  if (v4)
  {
LABEL_20:
    WebPFreeDecBuffer(*a3);
    return v4;
  }

LABEL_23:
  v11 = *(a3 + 40);
  if (v11 && *(v11 + 48))
  {
    return WebPFlipBuffer(*a3);
  }

  else
  {
    return 0;
  }
}

BOOL WebPInitDecoderConfigInternal(_OWORD *a1, int a2)
{
  v2 = 0;
  if (a1 && (a2 & 0xFFFFFF00) == 0x200)
  {
    a1[13] = 0u;
    a1[14] = 0u;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    *(a1 + 4) = 0;
    return WebPInitDecBufferInternal(a1 + 40, 521) != 0;
  }

  return v2;
}

uint64_t WebPGetFeaturesInternal(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (!a1 || !a3 || (a4 & 0xFFFFFF00) != 0x200)
  {
    return 2;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return ParseHeadersInternal(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 12), (a3 + 16), 0);
}

uint64_t WebPDecode(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 2;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = ParseHeadersInternal(a1, a2, a3, (a3 + 4), (a3 + 8), (a3 + 12), (a3 + 16), 0);
  if (v6)
  {
    v7 = v6;
    if (v6 == 7)
    {
      return 3;
    }

    return v7;
  }

  v14 = 0u;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12 = 0u;
  *&v14 = a3 + 160;
  v11 = (a3 + 40);
  if (!WebPAvoidSlowMemory((a3 + 40), a3))
  {
    return DecodeInto(a1, a2, &v11);
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!WebPInitDecBufferInternal(v9, 521))
  {
    return 2;
  }

  LODWORD(v9[0]) = *(a3 + 40);
  *(v9 + 4) = *a3;
  v11 = v9;
  v7 = DecodeInto(a1, a2, &v11);
  if (!v7)
  {
    v7 = WebPCopyDecBufferPixels(v9, a3 + 40);
  }

  WebPFreeDecBuffer(v9);
  return v7;
}

uint64_t WebPIoInitFromOptions(_DWORD *a1, signed int *a2, unsigned int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (a1)
  {
    v7 = a1[2];
    a2[29] = v7 != 0;
    if (v7)
    {
      v8 = 0;
      v9 = a1[5];
      v10 = a1[6];
      v11 = a1[3] & 0xFFFFFFFE;
      if (a3 > 0xA)
      {
        v12 = a1[4] & 0xFFFFFFFE;
      }

      else
      {
        v11 = a1[3];
        v12 = a1[4];
      }

      v17 = v10 > v5 || v5 <= v12 || v9 > v6 || v6 <= v11 || v10 < 1 || v9 < 1;
      if (v17 || (v12 | v11) < 0)
      {
        return v8;
      }

      if (v6 - v11 < v9 || v5 - v12 < v10)
      {
        return v8;
      }

      goto LABEL_32;
    }

    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    a2[29] = 0;
  }

  v9 = v6;
  v10 = v5;
LABEL_32:
  a2[30] = v11;
  a2[31] = v9 + v11;
  a2[32] = v12;
  a2[33] = v10 + v12;
  a2[3] = v9;
  a2[4] = v10;
  if (a1)
  {
    v19 = a1[7];
    a2[34] = v19 != 0;
    if (v19)
    {
      v20 = a1[8];
      v27 = a1[9];
      v28 = v20;
      if (!WebPRescalerGetScaledDimensions(v9, v10, &v28, &v27))
      {
        return 0;
      }

      v21 = v27;
      a2[35] = v28;
      a2[36] = v21;
      v22 = a2[34] == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = a1[1];
    v24 = *a1 != 0;
    a2[28] = v24;
    a2[22] = v23 == 0;
    if (!v22)
    {
      v25 = a2[35] < 3 * v6 / 4 && a2[36] < 3 * v5 / 4;
      a2[28] = v25 || v24;
      a2[22] = 0;
    }

    return 1;
  }

  else
  {
    a2[34] = 0;
    a2[28] = 0;
    v8 = 1;
    a2[22] = 1;
  }

  return v8;
}

uint64_t ParseOptionalChunks(_DWORD **a1, unint64_t *a2, unint64_t a3, void *a4, void *a5)
{
  if (!a1)
  {
    ParseOptionalChunks_cold_4();
  }

  if (!a2)
  {
    ParseOptionalChunks_cold_3();
  }

  if (!a4)
  {
    ParseOptionalChunks_cold_2();
  }

  if (!a5)
  {
    ParseOptionalChunks_cold_1();
  }

  v5 = *a1;
  v6 = *a2;
  *a4 = 0;
  *a5 = 0;
  *a1 = v5;
  *a2 = v6;
  if (v6 < 8)
  {
    return 7;
  }

  LODWORD(v8) = 22;
  while (1)
  {
    v9 = v5[1];
    if (v9 > 0xFFFFFFF6)
    {
      return 3;
    }

    v10 = (v9 + 9) & 0xFFFFFFFE;
    v8 = (v10 + v8);
    if (a3)
    {
      if (v8 > a3)
      {
        return 3;
      }
    }

    if (*v5 == 540561494 || *v5 == 1278758998)
    {
      break;
    }

    if (v6 >= v10)
    {
      if (*v5 == 1213221953)
      {
        *a4 = v5 + 2;
        *a5 = v9;
      }

      v5 = (v5 + v10);
      v6 -= v10;
      *a1 = v5;
      *a2 = v6;
      if (v6 > 7)
      {
        continue;
      }
    }

    return 7;
  }

  return 0;
}

uint64_t ParseVP8Header(uint64_t *a1, unint64_t *a2, int a3, unint64_t a4, unint64_t *a5, _BOOL4 *a6)
{
  v7 = *a1;
  v8 = *v7 == 1278758998;
  if (!v7)
  {
    ParseVP8Header_cold_4();
  }

  if (!a2)
  {
    ParseVP8Header_cold_3();
  }

  if (!a5)
  {
    ParseVP8Header_cold_2();
  }

  if (!a6)
  {
    ParseVP8Header_cold_1();
  }

  v12 = *a2;
  if (*a2 >= 8)
  {
    if (*v7 != 540561494 && *v7 != 1278758998)
    {
      v16 = VP8LCheckSignature(v7, v12);
      v13 = 0;
      *a6 = v16;
      *a5 = *a2;
      return v13;
    }

    v15 = *(v7 + 4);
    if (a4 >= 0xC && a4 - 12 < v15)
    {
      return 3;
    }

    if (!a3 || *a2 - 8 >= v15)
    {
      v13 = 0;
      *a5 = v15;
      *a1 = v7 + 8;
      *a2 -= 8;
      *a6 = v8;
      return v13;
    }
  }

  return 7;
}

uint64_t VP8InitRandom(uint64_t result, float a2)
{
  *(result + 168) = xmmword_18622B458;
  *(result + 184) = unk_18622B468;
  *(result + 200) = xmmword_18622B478;
  *(result + 212) = *(&xmmword_18622B478 + 12);
  *(result + 104) = xmmword_18622B418;
  *(result + 120) = unk_18622B428;
  *(result + 136) = xmmword_18622B438;
  *(result + 152) = unk_18622B448;
  *(result + 40) = xmmword_18622B3D8;
  *(result + 56) = unk_18622B3E8;
  *(result + 72) = xmmword_18622B3F8;
  *(result + 88) = unk_18622B408;
  *(result + 8) = kRandomTable;
  *(result + 24) = unk_18622B3C8;
  v2 = vcvts_n_u32_f32(a2, 8uLL);
  if (a2 > 1.0)
  {
    v2 = 256;
  }

  *result = 0x1F00000000;
  if (a2 < 0.0)
  {
    v2 = 0;
  }

  *(result + 228) = v2;
  return result;
}

void WebPInitConvertARGBToYUVNEON()
{
  WebPConvertRGB24ToY = ConvertRGB24ToY_NEON;
  WebPConvertBGR24ToY = ConvertBGR24ToY_NEON;
  WebPConvertARGBToY = ConvertARGBToY_NEON;
  WebPConvertARGBToUV = ConvertARGBToUV_NEON;
  WebPConvertRGBA32ToUV = ConvertRGBA32ToUV_NEON;
}

const char *ConvertRGB24ToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = a2;
    do
    {
      v12 = vld3_s8(result);
      result += 24;
      v10 = vmovl_u8(v12.val[0]);
      v11 = vmovl_u8(v12.val[1]);
      *v12.val[0].i8 = vmovl_u8(v12.val[2]);
      *v9++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, *v6.i8), *v10.i8, *v5.i8), v12.val[0], *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v11, v6), v10, v5), *v12.val[0].i8, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3++] = (33059 * *(result + 1) + 16839 * *result + 6420 * *(result + 2) + 1081344) >> 16;
      result += 3;
    }

    while (v3 < a3);
  }

  return result;
}

const char *ConvertBGR24ToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = a2;
    do
    {
      v13 = vld3_s8(result);
      result += 24;
      v10 = vmovl_u8(v13.val[2]);
      v11 = vmovl_u8(v13.val[1]);
      *v13.val[0].i8 = vmovl_u8(v13.val[0]);
      *v9++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, *v6.i8), *v10.i8, *v5.i8), v13.val[0], *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v11, v6), v10, v5), *v13.val[0].i8, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v12 = (result + 2);
    v3 = v3;
    do
    {
      a2->i8[v3++] = (33059 * *(v12 - 1) + 16839 * *v12 + 6420 * *(v12 - 2) + 1081344) >> 16;
      v12 += 3;
    }

    while (v3 < a3);
  }

  return result;
}

const char *ConvertARGBToY_NEON(const char *result, uint8x8_t *a2, int a3)
{
  if (a3 >= 8)
  {
    LODWORD(v3) = a3 & 0x7FFFFFF8;
    v4 = 8;
    v5 = vdupq_n_s16(0x41C7u);
    v6 = vdupq_n_s16(0x8123u);
    v7 = vdupq_n_s16(0x1914u);
    v8.i64[0] = 0x10001000100010;
    v8.i64[1] = 0x10001000100010;
    v9 = result;
    v10 = a2;
    do
    {
      v14 = vld4_s8(v9);
      v9 += 32;
      v11 = vmovl_u8(v14.val[2]);
      v12 = vmovl_u8(v14.val[1]);
      v13 = vmovl_u8(v14.val[0]);
      *v10++ = vqmovn_u16(vaddq_s16(vraddhn_high_s32(vraddhn_s32(vmlal_u16(vmlal_u16(vmull_u16(*v12.i8, *v6.i8), *v11.i8, *v5.i8), *v13.i8, *v7.i8), 0), vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v12, v6), v11, v5), v13, v7), 0), v8));
      v4 += 8;
    }

    while (v4 <= a3);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 < a3)
  {
    v3 = v3;
    do
    {
      a2->i8[v3] = (16839 * BYTE2(*&result[4 * v3]) + 6420 * *&result[4 * v3] + 33059 * BYTE1(*&result[4 * v3]) + 1081344) >> 16;
      ++v3;
    }

    while (v3 < a3);
  }

  return result;
}

uint64_t ConvertARGBToUV_NEON(uint64_t result, uint8x8_t *a2, uint8x8_t *a3, int a4, int a5)
{
  if (a4 >= 16)
  {
    v5 = a4 & 0x7FFFFFF0;
    v6 = vdupq_n_s16(0xDA09u);
    v7 = vdupq_n_s16(0xB577u);
    v8 = 16;
    v9 = vdupq_n_s16(0x7080u);
    v10.i64[0] = 0x100010001000100;
    v10.i64[1] = 0x100010001000100;
    v11 = vdupq_n_s16(0xA1CCu);
    v12 = vdupq_n_s16(0xEDB4u);
    v13 = result;
    do
    {
      v21 = vld4q_s8(v13);
      v14 = vpaddlq_u8(v21.val[2]);
      v15 = vpaddlq_u8(v21.val[1]);
      v21.val[0] = vpaddlq_u8(v21.val[0]);
      v21.val[1] = vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v15.i8, *v7.i8), *v14.i8, *v6.i8), vmull_s16(*v21.val[0].i8, *v9.i8)), vmlal_high_s16(vmull_high_s16(v15, v7), v14, v6), vmull_high_s16(v21.val[0], v9)), v10);
      v16 = vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v15.i8, *v11.i8), *v14.i8, *v9.i8), vmull_s16(*v21.val[0].i8, *v12.i8)), vmlal_high_s16(vmull_high_s16(v15, v11), v14, v9), vmull_high_s16(v21.val[0], v12)), v10);
      v17 = vqrshrun_n_s16(v21.val[1], 1uLL);
      v18 = vqrshrun_n_s16(v16, 1uLL);
      if (!a5)
      {
        v17 = vrhadd_u8(v17, *a2);
        v18 = vrhadd_u8(v18, *a3);
      }

      *a2++ = v17;
      *a3++ = v18;
      v8 += 16;
      v13 += 64;
    }

    while (v8 <= a4);
  }

  else
  {
    v5 = 0;
  }

  v19 = __OFSUB__(a4, v5);
  v20 = a4 - v5;
  if (!((v20 < 0) ^ v19 | (v20 == 0)))
  {
    return WebPConvertARGBToUV_C(result + 4 * v5, a2, a3, v20, a5);
  }

  return result;
}

const __int16 *ConvertRGBA32ToUV_NEON(const __int16 *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 8)
  {
    v5 = 0;
    LODWORD(v4) = a4 & 0x7FFFFFF8;
    v6 = vdupq_n_s16(0xDA09u);
    v7 = vdupq_n_s16(0xB577u);
    v8 = vdupq_n_s16(0x7080u);
    v9.i64[0] = 0x200020002000200;
    v9.i64[1] = 0x200020002000200;
    v10 = vdupq_n_s16(0xA1CCu);
    v11 = vdupq_n_s16(0xEDB4u);
    do
    {
      v20 = vld4q_s16(result);
      result += 32;
      *(a2 + v5) = vqrshrun_n_s16(vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v20.val[1].i8, *v7.i8), *v20.val[0].i8, *v6.i8), vmull_s16(*v20.val[2].i8, *v8.i8)), vmlal_high_s16(vmull_high_s16(v20.val[1], v7), v20.val[0], v6), vmull_high_s16(v20.val[2], v8)), v9), 2uLL);
      *(a3 + v5) = vqrshrun_n_s16(vaddq_s16(vaddhn_high_s32(vaddhn_s32(vmlal_s16(vmull_s16(*v20.val[1].i8, *v10.i8), *v20.val[0].i8, *v8.i8), vmull_s16(*v20.val[2].i8, *v11.i8)), vmlal_high_s16(vmull_high_s16(v20.val[1], v10), v20.val[0], v8), vmull_high_s16(v20.val[2], v11)), v9), 2uLL);
      v12 = v5 + 16;
      v5 += 8;
    }

    while (v12 <= a4);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v4 = v4;
    do
    {
      v13 = *result;
      v14 = *(result + 1);
      v15 = *(result + 2);
      v16 = -19081 * v14 - 9719 * v13 + 28800 * v15 + 33685504;
      v17 = (v16 >> 18) & ~(v16 >> 31);
      if (v17 >= 255)
      {
        LOBYTE(v17) = -1;
      }

      *(a2 + v4) = v17;
      v18 = -24116 * v14 + 28800 * v13 - 4684 * v15 + 33685504;
      v19 = (v18 >> 18) & ~(v18 >> 31);
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *(a3 + v4++) = v19;
      result += 4;
    }

    while (v4 < a4);
  }

  return result;
}

void WebPInitUpsamplers()
{
  if (WebPInitUpsamplers_WebPInitUpsamplers_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    WebPInitUpsamplersNEON();
    if (!qword_1EA8E14B8)
    {
      WebPInitUpsamplers_cold_11();
    }

    if (!qword_1EA8E14C8)
    {
      WebPInitUpsamplers_cold_10();
    }

    if (!qword_1EA8E14E8)
    {
      WebPInitUpsamplers_cold_9();
    }

    if (!qword_1EA8E14F0)
    {
      WebPInitUpsamplers_cold_8();
    }

    if (!WebPUpsamplers)
    {
      WebPInitUpsamplers_cold_7();
    }

    if (!qword_1EA8E14C0)
    {
      WebPInitUpsamplers_cold_6();
    }

    if (!qword_1EA8E14D0)
    {
      WebPInitUpsamplers_cold_5();
    }

    if (!qword_1EA8E14D8)
    {
      WebPInitUpsamplers_cold_4();
    }

    if (!qword_1EA8E14E0)
    {
      WebPInitUpsamplers_cold_3();
    }

    if (!qword_1EA8E14F8)
    {
      WebPInitUpsamplers_cold_2();
    }

    if (!qword_1EA8E1500)
    {
      WebPInitUpsamplers_cold_1();
    }

    WebPInitUpsamplers_WebPInitUpsamplers_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

unsigned __int8 *WebPYuv444ToRgba_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 3) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 2) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v24;
      *v5 = -1;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToBgra_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((33050 * v8) >> 8) + (v12 >> 8);
      v14 = v13 - 17685;
      v15 = (v13 - 17685) >> 6;
      if (v13 >= 0x4515)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 3) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 2) = v20;
      v21 = ((26149 * v10) >> 8) + (v12 >> 8);
      v22 = v21 - 14234;
      v23 = (v21 - 14234) >> 6;
      if (v21 >= 0x379A)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v24;
      *v5 = -1;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgb_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 2);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 3;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToBgr_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 2);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((33050 * v8) >> 8) + (v12 >> 8);
      v14 = v13 - 17685;
      v15 = (v13 - 17685) >> 6;
      if (v13 >= 0x4515)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((26149 * v10) >> 8) + (v12 >> 8);
      v22 = v21 - 14234;
      v23 = (v21 - 14234) >> 6;
      if (v21 >= 0x379A)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 3;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToArgb_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 3);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      *(v5 - 3) = -1;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -1;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      *(v5 - 2) = v16;
      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      *(v5 - 1) = v20;
      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24;
      v5 += 4;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgba4444_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 1);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -16;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 10;
      if (v17 >= -8708)
      {
        v20 = 15;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 6;
      if (v21 >= 0x4515)
      {
        v24 = -16;
      }

      else
      {
        v24 = 0;
      }

      *(v5 - 1) = v16 & 0xF0 | v20;
      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *v5 = v24 | 0xF;
      v5 += 2;
      --a5;
    }

    while (a5);
  }

  return result;
}

unsigned __int8 *WebPYuv444ToRgb565_C(unsigned __int8 *result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = (a4 + 1);
    a5 = a5;
    do
    {
      v7 = *result++;
      v6 = v7;
      v9 = *a2++;
      v8 = v9;
      v11 = *a3++;
      v10 = v11;
      v12 = 19077 * v6;
      v13 = ((26149 * v11) >> 8) + (v12 >> 8);
      v14 = v13 - 14234;
      v15 = (v13 - 14234) >> 6;
      if (v13 >= 0x379A)
      {
        v16 = -8;
      }

      else
      {
        v16 = 0;
      }

      if (v14 < 0x4000)
      {
        v16 = v15;
      }

      v17 = (v12 >> 8) - (((6419 * v8) >> 8) + ((13320 * v10) >> 8));
      v18 = v17 + 8708;
      v19 = (v17 + 8708) >> 6;
      if (v17 >= -8708)
      {
        v20 = 255;
      }

      else
      {
        v20 = 0;
      }

      if (v18 < 0x4000)
      {
        v20 = v19;
      }

      v21 = ((33050 * v8) >> 8) + (v12 >> 8);
      v22 = v21 - 17685;
      v23 = (v21 - 17685) >> 9;
      if (v21 >= 0x4515)
      {
        v24 = 31;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x4000)
      {
        v24 = v23;
      }

      *(v5 - 1) = v16 & 0xF8 | (v20 >> 5);
      *v5 = (8 * v20) & 0xE0 | v24;
      v5 += 2;
      --a5;
    }

    while (a5);
  }

  return result;
}

void WebPInitYUV444Converters()
{
  if (WebPInitYUV444Converters_WebPInitYUV444Converters_body_last_cpuinfo_used != VP8GetCPUInfo)
  {
    qword_1EA8E25D8 = WebPYuv444ToRgba_C;
    qword_1EA8E25E8 = WebPYuv444ToBgra_C;
    WebPYUV444Converters = WebPYuv444ToRgb_C;
    qword_1EA8E25E0 = WebPYuv444ToBgr_C;
    qword_1EA8E25F0 = WebPYuv444ToArgb_C;
    qword_1EA8E25F8 = WebPYuv444ToRgba4444_C;
    qword_1EA8E2600 = WebPYuv444ToRgb565_C;
    unk_1EA8E2608 = WebPYuv444ToRgba_C;
    qword_1EA8E2610 = WebPYuv444ToBgra_C;
    unk_1EA8E2618 = WebPYuv444ToArgb_C;
    qword_1EA8E2620 = WebPYuv444ToRgba4444_C;
    WebPInitYUV444Converters_WebPInitYUV444Converters_body_last_cpuinfo_used = VP8GetCPUInfo;
  }
}

void VP8FiltersInitNEON()
{
  qword_1EA8E1410 = HorizontalUnfilter_NEON;
  qword_1EA8E1418 = VerticalUnfilter_NEON;
  qword_1EA8E1430 = HorizontalFilter_NEON;
  qword_1EA8E1438 = VerticalFilter_NEON;
  qword_1EA8E1440 = GradientFilter_NEON;
}

char *HorizontalUnfilter_NEON(char *result, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  if (result)
  {
    v4 = *result;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + *a2;
  *a3 = v5;
  if (a4 >= 2)
  {
    if (a4 >= 0x11)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        v9 = vaddq_s8(*&a2[v7 + 1], v8);
        v10 = vaddq_s8(vextq_s8(0, v9, 0xFuLL), v9);
        v11 = vaddq_s8(vextq_s8(0, v10, 0xEuLL), v10);
        v12 = vaddq_s8(vextq_s8(0, v11, 0xCuLL), v11);
        v13 = vaddq_s8(vextq_s8(0, v12, 8uLL), v12);
        v8 = vextq_s8(v13, 0, 0xFuLL);
        *&a3[v7 + 1] = v13;
        v14 = v7 + 33;
        v7 += 16;
      }

      while (v14 <= a4);
      v6 = ((a4 - 17) & 0xFFFFFFF0) + 17;
    }

    else
    {
      v6 = 1;
    }

    if (v6 < a4)
    {
      v15 = &a3[v6];
      v16 = *(v15 - 1);
      v17 = &a2[v6];
      do
      {
        v18 = *v17++;
        v16 += v18;
        *v15++ = v16;
        ++v6;
      }

      while (v6 < a4);
    }
  }

  return result;
}

char *VerticalUnfilter_NEON(char *result, _BYTE *a2, unsigned __int8 *a3, int a4)
{
  if (result)
  {
    if (a4 < 0)
    {
      VerticalUnfilter_NEON_cold_1();
    }

    if (a4 >= 0x10)
    {
      v6 = 0;
      LODWORD(v5) = a4 & 0x7FFFFFF0;
      do
      {
        *&a3[v6] = vaddq_s8(*&result[v6], *&a2[v6]);
        v7 = v6 + 32;
        v6 += 16;
      }

      while (v7 <= a4);
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 < a4)
    {
      v5 = v5;
      do
      {
        a3[v5] = result[v5] + a2[v5];
        ++v5;
      }

      while (v5 < a4);
    }
  }

  else
  {

    return HorizontalUnfilter_NEON(0, a2, a3, a4);
  }

  return result;
}

uint64_t HorizontalFilter_NEON(_BYTE *a1, int a2, int a3, int a4, _BYTE *a5)
{
  if (!a1)
  {
    HorizontalFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    HorizontalFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    HorizontalFilter_NEON_cold_4();
  }

  if (a2 <= 0)
  {
    HorizontalFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    HorizontalFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    HorizontalFilter_NEON_cold_1();
  }

  *a5 = *a1;
  v9 = a2 - 1;
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  v11 = a3 - 1;
  if (v11)
  {
    v12 = a4;
    v13 = &v6[-a4];
    do
    {
      v5 += v12;
      v6 += v12;
      v13 += v12;
      *v5 = *v6 - *v13;
      result = PredictLine_NEON((v6 + 1), v6, (v5 + 1), v9);
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t VerticalFilter_NEON(_BYTE *a1, int a2, int a3, unsigned int a4, _BYTE *a5)
{
  if (!a1)
  {
    VerticalFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    VerticalFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    VerticalFilter_NEON_cold_4();
  }

  if (a2 <= 0)
  {
    VerticalFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    VerticalFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    VerticalFilter_NEON_cold_1();
  }

  *a5 = *a1;
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  for (i = a3 - 1; i; --i)
  {
    v5 += a4;
    result = PredictLine_NEON(v6 + a4, v6, v5, a2);
    v6 += a4;
  }

  return result;
}

uint64_t GradientFilter_NEON(_BYTE *a1, int a2, int a3, unsigned int a4, _BYTE *a5)
{
  if (!a1)
  {
    GradientFilter_NEON_cold_6();
  }

  v5 = a5;
  if (!a5)
  {
    GradientFilter_NEON_cold_5();
  }

  v6 = a1;
  if (a1 == a5)
  {
    GradientFilter_NEON_cold_4();
  }

  if (a2 <= 0)
  {
    GradientFilter_NEON_cold_3();
  }

  if (a3 <= 0)
  {
    GradientFilter_NEON_cold_2();
  }

  if (a4 < a2)
  {
    GradientFilter_NEON_cold_1();
  }

  *a5 = *a1;
  v10 = (a2 - 1);
  result = PredictLine_NEON((a1 + 1), a1, (a5 + 1), a2 - 1);
  if (a3 != 1)
  {
    v12 = 1;
    do
    {
      v5[a4] = v6[a4] - v6[a4 - a4];
      if (a2 >= 9)
      {
        v14 = 0;
        do
        {
          *&v5[a4 + 1 + v14] = vsub_s8(*&v6[a4 + 1 + v14], vqmovun_s16(vsubw_u8(vaddl_u8(*&v6[v14 + 1], *&v6[a4 + v14]), *&v6[v14])));
          v15 = v14 + 16;
          v14 += 8;
        }

        while (v15 <= v10);
        v13 = v10 & 0x7FFFFFF8;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v10)
      {
        v16 = v13;
        v17 = v10 - v13;
        v18 = a4 + v13;
        v19 = v16 + 1;
        do
        {
          v20 = v6[v19] + v6[v18] - v6[v19 - 1];
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            v21 = 255;
          }

          result = v6[v18 + 1] - v21;
          v5[++v18] = result;
          ++v19;
          --v17;
        }

        while (v17);
      }

      ++v12;
      v5 += a4;
      v6 += a4;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t PredictLine_NEON(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 < 0)
  {
    PredictLine_NEON_cold_1();
  }

  if (a4 >= 0x10)
  {
    v5 = 0;
    LODWORD(v4) = a4 & 0x7FFFFFF0;
    do
    {
      *(a3 + v5) = vsubq_s8(*(result + v5), *(a2 + v5));
      v6 = v5 + 32;
      v5 += 16;
    }

    while (v6 <= a4);
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v4 = v4;
    do
    {
      *(a3 + v4) = *(result + v4) - *(a2 + v4);
      ++v4;
    }

    while (v4 < a4);
  }

  return result;
}

BOOL VP8LGetInfo(unsigned __int8 *a1, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = 0;
  if (a1 && a2 >= 5)
  {
    if (*a1 == 47 && a1[4] <= 0x1Fu)
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      VP8LInitBitReader(v11, a1, a2);
      result = ReadImageInfo(v11, &v14 + 1, &v14, &v13);
      if (result)
      {
        if (a3)
        {
          *a3 = HIDWORD(v14);
        }

        if (a4)
        {
          *a4 = v14;
        }

        if (a5)
        {
          *a5 = v13;
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

BOOL ReadImageInfo(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (VP8LReadBits(a1, 8u) == 47 && (*a2 = VP8LReadBits(a1, 0xEu) + 1, *a3 = VP8LReadBits(a1, 0xEu) + 1, *a4 = VP8LReadBits(a1, 1u), !VP8LReadBits(a1, 3u)))
  {
    return *(a1 + 36) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t ReadHuffmanCodesHelper(int a1, int a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, void **a7)
{
  v8 = 0;
  v9 = a2 != a3;
  if (a4)
  {
    v9 = 0;
  }

  if (a2 > a3 || v9)
  {
    goto LABEL_61;
  }

  v10 = a4;
  v13 = kTableSize[a1];
  v55 = 1 << a1;
  v14 = (1 << a1) + 280;
  if (a1 <= 0)
  {
    v14 = 280;
  }

  v8 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  v15 = VP8LHtreeGroupsNew(a2);
  *a7 = v15;
  if (!v15 || !v8 || !VP8LHuffmanTablesAllocate(v13 * a2, a6))
  {
    if (*a5 == 5 || !*a5)
    {
      *a5 = 1;
    }

    goto LABEL_61;
  }

  if (a3 < 1)
  {
LABEL_56:
    free(v8);
    return 1;
  }

  v16 = 0;
  v50 = a3;
  v51 = v10;
  v52 = a7;
LABEL_12:
  v53 = v16;
  if (!v10)
  {
    v17 = v16;
LABEL_25:
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = 0;
    v24 = *a7 + 568 * v17;
    v25 = 1;
    while (1)
    {
      v26 = v21 || a1 <= 0;
      v27 = kAlphabetSize[v21];
      v28 = v26 ? 0 : v55;
      v29 = (v28 + v27);
      HuffmanCode = ReadHuffmanCode(v28 + v27, a5, v8, a6);
      v31 = *(*(a6 + 32) + 8);
      *(v24 + 8 * v21) = v31;
      if (!HuffmanCode)
      {
        goto LABEL_60;
      }

      if (v25)
      {
        v32 = *v31;
        v25 = (v21 & 3) == 0 || v32 == 0;
      }

      else
      {
        v32 = *v31;
      }

      v23 = (v23 + v32);
      *(*(a6 + 32) + 8) += 4 * HuffmanCode;
      if (v21 != 4)
      {
        v33 = *v8;
        if (v29 >= 2)
        {
          v34 = v27 + v28 - 1;
          v35 = v8 + 1;
          do
          {
            v37 = *v35++;
            v36 = v37;
            if (v37 > v33)
            {
              v33 = v36;
            }

            --v34;
          }

          while (v34);
        }

        v22 += v33;
        if (++v21 != 5)
        {
          continue;
        }
      }

      *(v24 + 40) = v25;
      *(v24 + 48) = 0;
      if (!v25 || (v38 = *(*(v24 + 16) + 2) | (*(*(v24 + 8) + 2) << 16) | (*(*(v24 + 24) + 2) << 24), *(v24 + 44) = v38, v23) || (v39 = *(*v24 + 2), v39 > 0xFF))
      {
        *(v24 + 52) = v22 < 6;
        if (v22 <= 5)
        {
          v40 = 0;
          v41 = (v24 + 56);
          for (i = 2; i != 258; i += 4)
          {
            v43 = (*v24 + i);
            v44 = *(v43 - 2);
            v45 = *v43;
            if (v45 < 0x100)
            {
              v46 = *(v43 - 1);
              *v41 = 0;
              v29 = v29 & 0xFFFFFFFF00000000 | v44 | (v45 << 16) | (v46 << 8);
              v47 = v40 >> AccumulateHCode(v29, 8, v41);
              v28 = v28 & 0xFFFFFFFF00000000 | *(*(v24 + 8) + 4 * v47);
              v48 = v47 >> AccumulateHCode(v28, 16, v41);
              v21 = v21 & 0xFFFFFFFF00000000 | *(*(v24 + 16) + 4 * v48);
              v23 = v23 & 0xFFFFFFFF00000000 | *(*(v24 + 24) + 4 * (v48 >> AccumulateHCode(v21, 0, v41)));
              AccumulateHCode(v23, 24, v41);
            }

            else
            {
              *v41 = v44 | 0x100;
              v41[1] = v45;
            }

            ++v40;
            v41 += 2;
          }
        }
      }

      else
      {
        *(v24 + 44) = v38 | (v39 << 8);
        *(v24 + 48) = 1;
      }

LABEL_55:
      a7 = v52;
      v16 = v53 + 1;
      v10 = v51;
      if (v53 + 1 != v50)
      {
        goto LABEL_12;
      }

      goto LABEL_56;
    }
  }

  v17 = *(v10 + 4 * v16);
  if (v17 != -1)
  {
    goto LABEL_25;
  }

  v18 = 0;
  while (1)
  {
    v19 = v55;
    if (v18 * 2 || a1 <= 0)
    {
      v19 = 0;
    }

    if (!ReadHuffmanCode(v19 + kAlphabetSize[v18], a5, v8, 0))
    {
      break;
    }

    if (++v18 == 5)
    {
      goto LABEL_55;
    }
  }

LABEL_60:
  a7 = v52;
LABEL_61:
  free(v8);
  VP8LHuffmanTablesDeallocate(a6);
  VP8LHtreeGroupsFree(*a7);
  result = 0;
  *a7 = 0;
  return result;
}

uint64_t ReadHuffmanCode(int a1, uint64_t a2, char *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = VP8LReadBits(a2 + 40, 1u);
  bzero(a3, 4 * a1);
  if (v8)
  {
    v9 = VP8LReadBits(a2 + 40, 1u);
    if (VP8LReadBits(a2 + 40, 1u))
    {
      v10 = 8;
    }

    else
    {
      v10 = 1;
    }

    *&a3[4 * VP8LReadBits(a2 + 40, v10)] = 1;
    if (v9 == 1)
    {
      *&a3[4 * VP8LReadBits(a2 + 40, 8u)] = 1;
    }

    goto LABEL_36;
  }

  memset(v31, 0, 76);
  v11 = VP8LReadBits(a2 + 40, 4u) + 4;
  if (v11 > 19)
  {
    ReadHuffmanCode_cold_1();
  }

  if (v11 >= 1)
  {
    v12 = &kCodeLengthCodeOrder;
    do
    {
      v13 = VP8LReadBits(a2 + 40, 3u);
      v14 = *v12++;
      *(v31 + v14) = v13;
      --v11;
    }

    while (v11);
  }

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  if (VP8LHuffmanTablesAllocate(128, v29))
  {
    if (VP8LBuildHuffmanTable(v29, 7, v31, 19))
    {
      v15 = a1;
      if (!VP8LReadBits(a2 + 40, 1u) || (v16 = VP8LReadBits(a2 + 40, 3u), v15 = VP8LReadBits(a2 + 40, 2 * v16 + 2) + 2, v15 <= a1))
      {
        if (a1 >= 1)
        {
          v17 = 0;
          v18 = 8;
          do
          {
            if (!v15)
            {
              break;
            }

            v19 = *(a2 + 72);
            if (v19 >= 32)
            {
              VP8LDoFillBitWindow(a2 + 40);
              v19 = *(a2 + 72);
            }

            v20 = (*v30 + 4 * ((*(a2 + 40) >> v19) & 0x7FLL));
            *(a2 + 72) = v19 + *v20;
            v21 = *(v20 + 1);
            if (v21 > 0xF)
            {
              v22 = kCodeLengthRepeatOffsets[v21 - 16];
              v23 = VP8LReadBits(a2 + 40, kCodeLengthExtraBits[v21 - 16]);
              if (v23 + v22 + v17 > a1)
              {
                goto LABEL_15;
              }

              if (v21 == 16)
              {
                v24 = v18;
              }

              else
              {
                v24 = 0;
              }

              if (v23 + v22 >= 1)
              {
                v25 = &a3[4 * v17];
                v26 = v23 + v22 + 1;
                do
                {
                  *v25++ = v24;
                  --v26;
                }

                while (v26 > 1);
                v17 += v23 + v22;
              }
            }

            else
            {
              *&a3[4 * v17++] = v21;
              if (v21)
              {
                v18 = v21;
              }
            }

            --v15;
          }

          while (v17 < a1);
        }

        VP8LHuffmanTablesDeallocate(v29);
LABEL_36:
        if (!*(a2 + 76))
        {
          result = VP8LBuildHuffmanTable(a4, 8, a3, a1);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_37;
      }
    }
  }

LABEL_15:
  VP8LHuffmanTablesDeallocate(v29);
  if (*a2 == 5 || !*a2)
  {
    *a2 = 3;
  }

LABEL_37:
  result = 0;
  if (*a2 == 5 || *a2 == 0)
  {
    *a2 = 3;
  }

  return result;
}

void *VP8LNew()
{
  v0 = malloc_type_calloc(1uLL, 0x190uLL, 0x10700402F08B545uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0x200000000;
    VP8LDspInit();
  }

  return v1;
}

void VP8LDelete(void *a1)
{
  if (a1)
  {
    VP8LClear(a1);

    free(a1);
  }
}

void VP8LClear(uint64_t a1)
{
  ClearMetadata(a1 + 152);
  free(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 272) >= 1)
  {
    v2 = 0;
    v3 = (a1 + 296);
    do
    {
      free(*v3);
      *v3 = 0;
      v3 += 3;
      ++v2;
    }

    while (v2 < *(a1 + 272));
  }

  *(a1 + 272) = 0;
  *(a1 + 376) = 0;
  free(*(a1 + 384));
  *(a1 + 384) = 0;
  *(a1 + 16) = 0;
}

uint64_t VP8LDecodeAlphaHeader(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  result = VP8LNew();
  if (result)
  {
    if (!a1)
    {
      VP8LDecodeAlphaHeader_cold_1();
    }

    v7 = result;
    v8 = *a1;
    v9 = *(a1 + 4);
    *(result + 132) = *a1;
    *(result + 136) = v9;
    *(a1 + 32) = v8;
    *(result + 8) = a1 + 32;
    *(a1 + 88) = a1;
    *(a1 + 36) = v9;
    *result = 0;
    VP8LInitBitReader((result + 40), a2, a3);
    if (!DecodeImageStream(*a1, *(a1 + 4), 1, v7, 0))
    {
      goto LABEL_13;
    }

    if (v7[68] == 1 && v7[70] == 3 && Is8bOptimizable((v7 + 38)))
    {
      *(a1 + 192) = 1;
      v10 = v7[34] * v7[33];
      *(v7 + 4) = 0;
      v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
      *(v7 + 3) = v11;
      if (!v11)
      {
        if (*v7 == 5 || !*v7)
        {
          *v7 = 1;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 192) = 0;
      if (!AllocateInternalBuffers32b(v7, *a1))
      {
LABEL_13:
        VP8LClear(v7);
        free(v7);
        return 0;
      }
    }

    *(a1 + 24) = v7;
    return 1;
  }

  return result;
}

uint64_t DecodeImageStream(signed int a1, int a2, int a3, uint64_t a4, void *a5)
{
  v7 = a3;
  if (a3 && VP8LReadBits(a4 + 40, 1u))
  {
    v65 = a5;
    while (1)
    {
      v10 = *(a4 + 272);
      v11 = VP8LReadBits(a4 + 40, 2u);
      v12 = *(a4 + 376);
      if ((v12 & (1 << v11)) != 0)
      {
        goto LABEL_93;
      }

      v13 = a4 + 280 + 24 * v10;
      *(a4 + 376) = v12 | (1 << v11);
      *v13 = v11;
      *(v13 + 8) = a1;
      *(v13 + 12) = a2;
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      v15 = *(a4 + 272);
      *(a4 + 272) = v15 + 1;
      if (v15 >= 4)
      {
        DecodeImageStream_cold_2();
      }

      if (v11 < 2)
      {
        break;
      }

      if (v11 == 2)
      {
LABEL_10:
        if (!VP8LReadBits(a4 + 40, 1u))
        {
          a5 = v65;
          v7 = a3;
          goto LABEL_34;
        }
      }

      else
      {
        if (v11 != 3)
        {
          DecodeImageStream_cold_1();
        }

        v17 = VP8LReadBits(a4 + 40, 8u);
        v18 = v17 + 1;
        if (v17 + 1 > 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = 3;
        }

        if (v18 > 4)
        {
          v19 = 1;
        }

        if (v18 <= 16)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v63 = *(v13 + 8);
        *(v13 + 4) = v20;
        if (!DecodeImageStream((v17 + 1), 1, 0, a4, v14))
        {
          goto LABEL_93;
        }

        v62 = v20;
        v21 = 4 << (8uLL >> *(v13 + 4));
        v22 = malloc_type_malloc(v21, 0x100004052888210uLL);
        if (!v22)
        {
          v60 = *a4;
          v32 = 1;
          if (!*a4 || v60 == 5)
          {
            goto LABEL_100;
          }

          goto LABEL_94;
        }

        v23 = *v14;
        *v22 = **v14;
        v64 = v22;
        if (v18 < 2)
        {
          LODWORD(v24) = 4;
          v7 = a3;
          v28 = v63;
        }

        else
        {
          LODWORD(v24) = 4 * v18;
          if (4 * v18 <= 5)
          {
            v24 = 5;
          }

          else
          {
            v24 = v24;
          }

          v25 = v24 - 4;
          v26 = v22 + 1;
          v27 = (v23 + 1);
          v28 = v63;
          do
          {
            v29 = *v27++;
            *v26 = *(v26 - 4) + v29;
            ++v26;
            --v25;
          }

          while (v25);
          v7 = a3;
        }

        if (v24 < v21)
        {
          bzero(v22 + v24, (v21 + ~v24) + 1);
        }

        a1 = (v28 + (1 << v62) - 1) >> v62;
        free(*v14);
        *v14 = v64;
        a5 = v65;
        if (!VP8LReadBits(a4 + 40, 1u))
        {
          goto LABEL_34;
        }
      }
    }

    v16 = VP8LReadBits(a4 + 40, 3u);
    *(v13 + 4) = v16 + 2;
    if (!DecodeImageStream((*(v13 + 8) + ~(-1 << (v16 + 2))) >> (v16 + 2), (*(v13 + 12) + ~(-1 << (v16 + 2))) >> (v16 + 2), 0, a4, v14))
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

LABEL_34:
  if (VP8LReadBits(a4 + 40, 1u))
  {
    v30 = VP8LReadBits(a4 + 40, 4u);
    if ((v30 - 1) >= 0xB)
    {
      v31 = *a4;
      v32 = 3;
      if (!*a4)
      {
        goto LABEL_100;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v30 = 0;
  }

  v67 = 0;
  v68 = 0;
  if (*(a4 + 232))
  {
    DecodeImageStream_cold_3();
  }

  if (*(a4 + 264))
  {
    DecodeImageStream_cold_4();
  }

  if (!v7)
  {
    v44 = 0;
    v33 = 1;
LABEL_53:
    v45 = 1;
    goto LABEL_54;
  }

  v33 = 1;
  if (!VP8LReadBits(a4 + 40, 1u))
  {
    v44 = 0;
    goto LABEL_53;
  }

  v34 = a5;
  v35 = VP8LReadBits(a4 + 40, 3u);
  v36 = v35 + 2;
  v37 = 1 << (v35 + 2);
  v38 = (a1 + v37 - 1) >> (v35 + 2);
  v39 = (a2 + v37 - 1) >> (v35 + 2);
  if (!DecodeImageStream(v38, v39, 0, a4, &v68))
  {
LABEL_91:
    v44 = 0;
    goto LABEL_92;
  }

  v40 = v38 * v39;
  *(a4 + 196) = v36;
  if (v40 < 1)
  {
    v33 = 1;
    a5 = v34;
  }

  else
  {
    v41 = v68;
    v33 = 1;
    v42 = v40;
    a5 = v34;
    do
    {
      v43 = *(v41 + 1);
      *v41 = v43;
      v41 += 4;
      if (v43 >= v33)
      {
        v33 = v43 + 1;
      }

      --v42;
    }

    while (v42);
  }

  if (v33 <= 1000 && v33 <= a1 * a2)
  {
    v44 = 0;
    v45 = v33;
    goto LABEL_54;
  }

  v50 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
  if (!v50)
  {
    if (*a4 == 5 || !*a4)
    {
      v44 = 0;
      *a4 = 1;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v44 = v50;
  memset(v50, 255, 4 * v33);
  if (v40 < 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = 0;
    v51 = v68;
    do
    {
      v52 = *v51;
      v53 = v44[v52];
      if (v53 == -1)
      {
        v44[v52] = v45;
        v53 = v45++;
      }

      *v51++ = v53;
      --v40;
    }

    while (v40);
  }

LABEL_54:
  if (*(a4 + 76) || !ReadHuffmanCodesHelper(v30, v45, v33, v44, a4, a4 + 232, &v67))
  {
LABEL_92:
    free(v44);
    free(v68);
    VP8LHuffmanTablesDeallocate(a4 + 232);
    VP8LHtreeGroupsFree(v67);
LABEL_93:
    v60 = *a4;
LABEL_94:
    if (v60)
    {
      v61 = v60 == 5;
    }

    else
    {
      v61 = 1;
    }

    if (!v61)
    {
      goto LABEL_101;
    }

    v32 = 3;
    goto LABEL_100;
  }

  v46 = v67;
  *(a4 + 208) = v68;
  *(a4 + 216) = v45;
  *(a4 + 224) = v46;
  free(v44);
  if (v30 < 1)
  {
    *(a4 + 152) = 0;
    v48 = a3;
LABEL_73:
    v54 = *(a4 + 196);
    *(a4 + 132) = a1;
    *(a4 + 136) = a2;
    *(a4 + 200) = (a1 + (1 << v54) - 1) >> v54;
    if (v54)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    *(a4 + 192) = v55;
    if (v48)
    {
      *(a4 + 4) = 1;
      if (a5)
      {
        *a5 = 0;
      }

      *(a4 + 144) = 0;
    }

    else
    {
      v57 = a5;
      v58 = malloc_type_malloc(4 * a2 * a1, 0x100004052888210uLL);
      if (!v58)
      {
        goto LABEL_86;
      }

      v59 = v58;
      if (!DecodeImageData(a4, v58, a1, a2, a2, 0) || *(a4 + 76))
      {
        goto LABEL_102;
      }

      if (!v57)
      {
        DecodeImageStream_cold_5();
      }

      *v57 = v59;
      *(a4 + 144) = 0;
      ClearMetadata(a4 + 152);
    }

    return 1;
  }

  *(a4 + 152) = 1 << v30;
  v47 = VP8LColorCacheInit(a4 + 160, v30);
  v48 = a3;
  if (v47)
  {
    goto LABEL_73;
  }

LABEL_86:
  v31 = *a4;
  v32 = 1;
  if (!*a4)
  {
    goto LABEL_100;
  }

LABEL_37:
  if (v31 != 5)
  {
LABEL_101:
    v59 = 0;
    goto LABEL_102;
  }

LABEL_100:
  v59 = 0;
  *a4 = v32;
LABEL_102:
  free(v59);
  ClearMetadata(a4 + 152);
  return 0;
}

uint64_t Is8bOptimizable(uint64_t a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (v2 >= 1)
  {
    for (i = (*(a1 + 72) + 24); !**(i - 2) && !**(i - 1) && !**i; i += 71)
    {
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t AllocateInternalBuffers32b(uint64_t a1, int a2)
{
  v2 = *(a1 + 132);
  if (v2 > a2)
  {
    AllocateInternalBuffers32b_cold_1();
  }

  v4 = *(a1 + 136) * v2;
  v5 = a2;
  v6 = malloc_type_malloc((a2 << 6) + 4 * (v4 + a2), 0x100004052888210uLL);
  *(a1 + 24) = v6;
  if (v6)
  {
    *(a1 + 32) = &v6[4 * v4 + 4 * v5];
    return 1;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0;
    if (*a1 == 5 || *a1 == 0)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t VP8LDecodeAlphaImageStream(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    VP8LDecodeAlphaImageStream_cold_11();
  }

  v4 = *(v2 + 136);
  if (v4 < a2)
  {
    VP8LDecodeAlphaImageStream_cold_10();
  }

  if (*(v2 + 140) >= a2)
  {
    return 1;
  }

  if (*(a1 + 192) || (WebPInitAlphaProcessing(), v4 = *(v2 + 136), *(a1 + 192)))
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 132);
    v8 = *(v2 + 144);
    LODWORD(v9) = v8 / v7;
    v10 = v8 % v7;
    v11 = v7 * a2;
    v12 = *(v2 + 192);
    if (v8 >= v7 * a2)
    {
      v14 = 0;
    }

    else
    {
      v13 = *(v2 + 196);
      if (v13)
      {
        v13 = *(*(v2 + 208) + 4 * ((v10 >> v13) + *(v2 + 200) * (v9 >> v13)));
      }

      if (v13 >= *(v2 + 216))
      {
        VP8LDecodeAlphaImageStream_cold_1();
      }

      v14 = (*(v2 + 224) + 568 * v13);
    }

    v65 = v4 * v7;
    if (v8 > v4 * v7)
    {
      VP8LDecodeAlphaImageStream_cold_9();
    }

    if (v4 < a2)
    {
      VP8LDecodeAlphaImageStream_cold_8();
    }

    if (!Is8bOptimizable(v2 + 152))
    {
      VP8LDecodeAlphaImageStream_cold_7();
    }

    v16 = v8 < v11 && *(v2 + 76) == 0;
    if (!v16)
    {
      goto LABEL_109;
    }

    v63 = v6 + 1;
    v67 = vdupq_n_s64(4uLL);
    v64 = v6;
    v66 = v12;
    while (1)
    {
      if ((v10 & v12) == 0)
      {
        v17 = *(v2 + 196);
        if (v17)
        {
          v17 = *(*(v2 + 208) + 4 * ((v10 >> v17) + *(v2 + 200) * (v9 >> v17)));
        }

        if (v17 >= *(v2 + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        v14 = (*(v2 + 224) + 568 * v17);
      }

      if (!v14)
      {
        VP8LDecodeAlphaImageStream_cold_6();
      }

      v18 = *(v2 + 72);
      if (v18 >= 32)
      {
        VP8LDoFillBitWindow(v2 + 40);
        v18 = *(v2 + 72);
      }

      v19 = *(v2 + 40);
      v20 = (*v14 + 4 * (v19 >> v18));
      v21 = *v20;
      if (v21 >= 9)
      {
        v18 += 8;
        v20 += 4 * *(v20 + 1) + 4 * ((v19 >> v18) & ~(-1 << (v21 - 8)));
        v21 = *v20;
      }

      v22 = v18 + v21;
      *(v2 + 72) = v22;
      v23 = *(v20 + 1);
      if (v23 <= 0xFF)
      {
        *(v6 + v8++) = v23;
        if (++v10 < v7)
        {
          goto LABEL_99;
        }

        v10 = 0;
        if (v9 < a2 && ((v9 + 1) & 0xF) == 0)
        {
          ExtractPalettedAlphaRows(v2, (v9 + 1));
          v10 = 0;
        }

        LODWORD(v9) = v9 + 1;
LABEL_98:
        v12 = v66;
        goto LABEL_99;
      }

      if (v23 > 0x117)
      {
        goto LABEL_107;
      }

      v24 = v23 - 256;
      if (v23 - 256 >= 4)
      {
        v24 = VP8LReadBits(v2 + 40, (v23 - 258) >> 1) + ((v23 & 1 | 2) << v15);
        v19 = *(v2 + 40);
        v22 = *(v2 + 72);
      }

      v25 = (v14[4] + 4 * (v19 >> v22));
      v26 = *v25;
      if (v26 >= 9)
      {
        v22 += 8;
        v25 += 4 * *(v25 + 1) + 4 * ((v19 >> v22) & ~(-1 << (v26 - 8)));
        v26 = *v25;
      }

      *(v2 + 72) = v22 + v26;
      v27 = *(v25 + 1);
      if ((v22 + v26) >= 32)
      {
        VP8LDoFillBitWindow(v2 + 40);
      }

      if (v27 >= 4)
      {
        v27 = VP8LReadBits(v2 + 40, (v27 - 2) >> 1) + ((v27 & 1 | 2) << v15);
      }

      if ((v27 + 1) < 121)
      {
        v28 = (kCodeToPlane[v27] >> 4) * v7 - (kCodeToPlane[v27] & 0xF) + 8;
        if (v28 <= 1)
        {
          v28 = 1;
        }
      }

      else
      {
        v28 = v27 - 119;
      }

      v29 = v24 + 1;
      v30 = v8 < v28 || v65 - v8 < v29;
      v6 = v64;
      if (v30)
      {
LABEL_107:
        v54 = 1;
        goto LABEL_113;
      }

      v31 = (v64 + v8);
      v32 = -v28;
      v15 = (v31 - v28);
      if (v29 < 8)
      {
        break;
      }

      switch(v28)
      {
        case 4:
          v33 = *v15;
          break;
        case 2:
          v33 = *v15 | (*v15 << 16);
          break;
        case 1:
          v33 = 16843009 * *v15;
          break;
        default:
          goto LABEL_59;
      }

      if ((v31 & 3) != 0)
      {
        v35 = v63 + v8;
        v36 = v29;
        do
        {
          *v31 = *(v31 + v32);
          v31 = (v31 + 1);
          HIDWORD(v37) = v33;
          LODWORD(v37) = v33;
          v33 = v37 >> 8;
          --v36;
          v16 = (v35++ & 3) == 0;
        }

        while (!v16);
        v15 = (v31 + v32);
      }

      else
      {
        v36 = v29;
      }

      v38 = (v36 >> 2);
      if (v38 < 1)
      {
        LODWORD(v38) = 0;
      }

      else
      {
        v39 = (v38 + 3) & 0xFFFFFFFC;
        v40 = vdupq_n_s64(v38 - 1);
        v41 = v31 + 2;
        v42 = xmmword_186205EC0;
        v43 = xmmword_186205EB0;
        do
        {
          v44 = vmovn_s64(vcgeq_u64(v40, v42));
          if (vuzp1_s16(v44, *v40.i8).u8[0])
          {
            *(v41 - 2) = v33;
          }

          if (vuzp1_s16(v44, *&v40).i8[2])
          {
            *(v41 - 1) = v33;
          }

          if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, *&v43))).i32[1])
          {
            *v41 = v33;
            v41[1] = v33;
          }

          v43 = vaddq_s64(v43, v67);
          v42 = vaddq_s64(v42, v67);
          v41 += 4;
          v39 -= 4;
        }

        while (v39);
      }

      if (v36 > 4 * v38)
      {
        v45 = v36 - 4 * v38;
        v46 = &v31[v38];
        v47 = &v15[2 * v38];
        do
        {
          v48 = *v47;
          v47 = (v47 + 1);
          *v46 = v48;
          v46 = (v46 + 1);
          --v45;
        }

        while (v45);
      }

LABEL_86:
      for (v10 += v29; v10 >= v7; v10 -= v7)
      {
        v49 = v9;
        v9 = (v9 + 1);
        if (v49 < a2 && (v9 & 0xF) == 0)
        {
          ExtractPalettedAlphaRows(v2, v9);
        }
      }

      v8 += v29;
      if (v8 >= v11)
      {
        goto LABEL_98;
      }

      v12 = v66;
      if ((v10 & v66) != 0)
      {
        v50 = *(v2 + 196);
        if (v50)
        {
          v50 = *(*(v2 + 208) + 4 * ((v10 >> v50) + *(v2 + 200) * (v9 >> v50)));
        }

        if (v50 >= *(v2 + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        v14 = (*(v2 + 224) + 568 * v50);
      }

LABEL_99:
      v52 = *(v2 + 56);
      v51 = *(v2 + 64);
      if (v51 > v52)
      {
        ShiftBytes_cold_1();
      }

      if (*(v2 + 76))
      {
        *(v2 + 76) = 1;
LABEL_109:
        if (v9 >= a2)
        {
          v55 = a2;
        }

        else
        {
          v55 = v9;
        }

        ExtractPalettedAlphaRows(v2, v55);
        v54 = 0;
LABEL_113:
        v57 = *(v2 + 56);
        v56 = *(v2 + 64);
        if (v56 > v57)
        {
          ShiftBytes_cold_1();
        }

        if (*(v2 + 76))
        {
          v58 = 1;
        }

        else
        {
          v58 = v56 == v57 && *(v2 + 72) > 64;
        }

        *(v2 + 76) = v58;
        if ((v54 & 1) != 0 || v58 && v8 < v65)
        {
          if (*v2 != 5 && *v2)
          {
            return 0;
          }

          result = 0;
          if (v58)
          {
            v60 = 5;
          }

          else
          {
            v60 = 3;
          }

          *v2 = v60;
          return result;
        }

        *(v2 + 144) = v8;
        return 1;
      }

      v53 = v51 == v52 && *(v2 + 72) > 64;
      *(v2 + 76) = v53;
      if (v53 || v8 >= v11)
      {
        goto LABEL_109;
      }
    }

LABEL_59:
    if (v28 >= v29)
    {
      memcpy(v31, v15, v29);
    }

    else
    {
      v34 = v29;
      do
      {
        *v31 = *(v31 + v32);
        v31 = (v31 + 1);
        --v34;
      }

      while (v34);
    }

    goto LABEL_86;
  }

  v61 = *(v2 + 24);
  v62 = *(v2 + 132);

  return DecodeImageData(v2, v61, v62, v4, a2, ExtractAlphaRows);
}

uint64_t DecodeImageData(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void (*a6)(uint64_t, uint64_t))
{
  HtreeGroupForPos = 0;
  v8 = *(a1 + 152);
  v9 = *(a1 + 144);
  v10 = (v9 / a3);
  v11 = v9 % a3;
  v12 = a5 * a3;
  if (*(a1 + 80))
  {
    v13 = v9 / a3;
  }

  else
  {
    v13 = 0x1000000;
  }

  v86 = v13;
  v78 = *(a1 + 152);
  v80 = (a1 + 160);
  if (v8 <= 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = a1 + 160;
  }

  v83 = *(a1 + 192);
  if (v9 < v12)
  {
    v15 = *(a1 + 196);
    if (v15)
    {
      v15 = *(*(a1 + 208) + 4 * ((v11 >> v15) + *(a1 + 200) * (v10 >> v15)));
    }

    if (v15 >= *(a1 + 216))
    {
      VP8LDecodeAlphaImageStream_cold_1();
    }

    HtreeGroupForPos = *(a1 + 224) + 568 * v15;
  }

  if (*(a1 + 140) >= a5)
  {
    DecodeImageData_cold_2();
  }

  if (v12 > a4 * a3)
  {
    DecodeImageData_cold_15();
  }

  v82 = a1 + 40;
  v16 = (a2 + 4 * v9);
  v84 = a2 + 4 * v12;
  if (v9 < v12)
  {
    v75 = a1 + 152;
    v77 = a2 + 4 * a4 * a3;
    v76 = v8 + 280;
    v17 = (a2 + 4 * v9);
    while (1)
    {
      if (v10 >= v86)
      {
        if (!*(a1 + 80))
        {
          DecodeImageData_cold_3();
        }

        v18 = *(v82 + 16);
        *(a1 + 88) = *v82;
        *(a1 + 104) = v18;
        *(a1 + 120) = *(v82 + 32);
        *(a1 + 128) = (v16 - a2) >> 2;
        if (*(a1 + 152) >= 1)
        {
          VP8LColorCacheCopy(v80, a1 + 176);
        }

        v86 = v10 + 8;
      }

      if ((v11 & v83) == 0)
      {
        v19 = *(a1 + 196);
        if (v19)
        {
          v19 = *(*(a1 + 208) + 4 * ((v11 >> v19) + *(a1 + 200) * (v10 >> v19)));
        }

        if (v19 >= *(a1 + 216))
        {
          VP8LDecodeAlphaImageStream_cold_1();
        }

        HtreeGroupForPos = *(a1 + 224) + 568 * v19;
      }

      if (!HtreeGroupForPos)
      {
        DecodeImageData_cold_14();
      }

      if (*(HtreeGroupForPos + 48))
      {
        break;
      }

      if (*(a1 + 72) >= 32)
      {
        VP8LDoFillBitWindow(v82);
      }

      if (!*(HtreeGroupForPos + 52))
      {
        v26 = *(a1 + 40);
        v31 = *(a1 + 72);
        v32 = (*HtreeGroupForPos + 4 * (v26 >> v31));
        v33 = *v32;
        if (v33 >= 9)
        {
          v31 += 8;
          v32 += 4 * *(v32 + 1) + 4 * ((v26 >> v31) & ~(-1 << (v33 - 8)));
          v33 = *v32;
        }

        *(a1 + 72) = v31 + v33;
        v29 = *(v32 + 1);
        v35 = *(a1 + 56);
        v34 = *(a1 + 64);
LABEL_57:
        if (v34 > v35)
        {
          ShiftBytes_cold_1();
        }

        if (*(a1 + 76) || v34 == v35 && *(a1 + 72) > 64)
        {
          goto LABEL_117;
        }

        if (v29 > 255)
        {
          if (v29 <= 0x117)
          {
            v36 = v29 - 256;
            if ((v29 - 256) >= 4)
            {
              v37 = (v29 - 258) >> 1;
              v38 = (v29 & 1 | 2) << v37;
              v39 = VP8LReadBits(v82, v37);
              v26 = *v82;
              v36 = v39 + v38;
            }

            v40 = *(a1 + 72);
            v41 = (*(HtreeGroupForPos + 32) + 4 * (v26 >> v40));
            v42 = *v41;
            if (v42 >= 9)
            {
              v40 += 8;
              v41 += 4 * *(v41 + 1) + 4 * ((v26 >> v40) & ~(-1 << (v42 - 8)));
              v42 = *v41;
            }

            *(a1 + 72) = v40 + v42;
            v43 = *(v41 + 1);
            if ((v40 + v42) >= 32)
            {
              VP8LDoFillBitWindow(v82);
            }

            if (v43 >= 4)
            {
              v43 = VP8LReadBits(v82, (v43 - 2) >> 1) + ((v43 & 1 | 2) << a2);
            }

            if (v43 + 1 < 121)
            {
              if ((kCodeToPlane[v43] >> 4) * a3 - (kCodeToPlane[v43] & 0xF) + 8 <= 1)
              {
                v44 = 1;
              }

              else
              {
                v44 = (kCodeToPlane[v43] >> 4) * a3 - (kCodeToPlane[v43] & 0xF) + 8;
              }
            }

            else
            {
              v44 = v43 - 119;
            }

            v63 = *(a1 + 56);
            v62 = *(a1 + 64);
            if (v62 > v63)
            {
              ShiftBytes_cold_1();
            }

            if (*(a1 + 76) || v62 == v63 && *(a1 + 72) > 64)
            {
              goto LABEL_117;
            }

            if (v44 > (v16 - a2) >> 2)
            {
              goto LABEL_137;
            }

            v64 = v36 + 1;
            if (v36 + 1 > (v77 - v16) >> 2)
            {
              goto LABEL_137;
            }

            CopyBlock32b(v16, v44, v64);
            for (v11 += v64; v11 >= a3; v11 -= a3)
            {
              v65 = v10;
              v10 = (v10 + 1);
              if (a6 && v65 < a5 && (v10 & 0xF) == 0)
              {
                a6(a1, v10);
              }
            }

            v21 = (v16 + 4 * v64);
            if (v21 > v77)
            {
              DecodeImageData_cold_8();
            }

            if ((v11 & v83) != 0)
            {
              HtreeGroupForPos = GetHtreeGroupForPos(v75, v11, v10);
            }

            if (v78 >= 1 && v17 < v21)
            {
              v66 = *v80;
              do
              {
                v67 = *v17;
                v17 = (v17 + 4);
                *(v66 + 4 * ((506832829 * v67) >> *(v14 + 8))) = v67;
              }

              while (v17 < v21);
            }

            goto LABEL_31;
          }

          if (v29 >= v76)
          {
            goto LABEL_137;
          }

          if (v17 < v16)
          {
            v45 = *v80;
            do
            {
              v46 = *v17;
              v17 = (v17 + 4);
              *(v45 + 4 * ((506832829 * v46) >> *(v14 + 8))) = v46;
            }

            while (v17 < v16);
          }

          if ((v29 - 280) >> *(v14 + 12))
          {
            DecodeImageData_cold_7();
          }

          v20 = *(*v14 + 4 * (v29 - 280));
        }

        else if (*(HtreeGroupForPos + 40))
        {
          v20 = *(HtreeGroupForPos + 44) | (v29 << 8);
        }

        else
        {
          v47 = *(a1 + 72);
          v48 = (*(HtreeGroupForPos + 8) + 4 * (v26 >> v47));
          v49 = *v48;
          if (v49 >= 9)
          {
            v47 += 8;
            v48 += 4 * *(v48 + 1) + 4 * ((v26 >> v47) & ~(-1 << (v49 - 8)));
            v49 = *v48;
          }

          v50 = v47 + v49;
          *(a1 + 72) = v50;
          v51 = *(v48 + 1);
          if (v50 >= 32)
          {
            VP8LDoFillBitWindow(v82);
            v26 = *(a1 + 40);
            v50 = *(a1 + 72);
          }

          v52 = (*(HtreeGroupForPos + 16) + 4 * (v26 >> v50));
          v53 = *v52;
          if (v53 >= 9)
          {
            v50 += 8;
            v52 += 4 * *(v52 + 1) + 4 * ((v26 >> v50) & ~(-1 << (v53 - 8)));
            v53 = *v52;
          }

          v54 = v50 + v53;
          v55 = *(v52 + 1);
          v56 = (*(HtreeGroupForPos + 24) + 4 * (v26 >> v54));
          v57 = *v56;
          if (v57 >= 9)
          {
            v54 += 8;
            v56 += 4 * *(v56 + 1) + 4 * ((v26 >> v54) & ~(-1 << (v57 - 8)));
            v57 = *v56;
          }

          v58 = v54 + v57;
          *(a1 + 72) = v54 + v57;
          v60 = *(a1 + 56);
          v59 = *(a1 + 64);
          if (v59 > v60)
          {
            ShiftBytes_cold_1();
          }

          if (*(a1 + 76))
          {
            goto LABEL_117;
          }

          v61 = *(v56 + 1);
          if (v59 == v60 && v58 > 64)
          {
            goto LABEL_117;
          }

          v20 = (v51 << 16) | (v29 << 8) | v55 | (v61 << 24);
        }

LABEL_29:
        *v16 = v20;
        goto LABEL_30;
      }

      v26 = *(a1 + 40);
      v27 = *(a1 + 72);
      v28 = *(HtreeGroupForPos + 8 * ((v26 >> v27) & 0x3F) + 56);
      v29 = *(HtreeGroupForPos + 8 * ((v26 >> v27) & 0x3F) + 60);
      v30 = v28 + v27;
      if (v28 > 255)
      {
        *(a1 + 72) = v30 - 256;
        if (v29 <= 0xFF)
        {
          DecodeImageData_cold_5();
        }
      }

      else
      {
        *(a1 + 72) = v30;
        *v16 = v29;
        v29 = 0;
      }

      v35 = *(a1 + 56);
      v34 = *(a1 + 64);
      if (v34 > v35)
      {
        ShiftBytes_cold_1();
      }

      if (*(a1 + 76) || v34 == v35 && *(a1 + 72) > 64)
      {
        goto LABEL_117;
      }

      if (v29)
      {
        goto LABEL_57;
      }

LABEL_30:
      v21 = (v16 + 4);
      if (++v11 >= a3)
      {
        v22 = (v10 + 1);
        if (a6 && v10 < a5 && ((v10 + 1) & 0xF) == 0)
        {
          a6(a1, (v10 + 1));
        }

        v11 = 0;
        if (v78 >= 1 && v17 < v21)
        {
          v23 = *v80;
          do
          {
            v24 = v17;
            v25 = *v17;
            v17 = (v17 + 4);
            *(v23 + 4 * ((506832829 * v25) >> *(v14 + 8))) = v25;
          }

          while (v24 < v16);
          v11 = 0;
        }

        goto LABEL_41;
      }

LABEL_31:
      v22 = v10;
LABEL_41:
      v10 = v22;
      v16 = v21;
      if (v21 >= v84)
      {
        goto LABEL_118;
      }
    }

    v20 = *(HtreeGroupForPos + 44);
    goto LABEL_29;
  }

LABEL_117:
  v21 = v16;
  LODWORD(v22) = v10;
LABEL_118:
  v69 = *(a1 + 56);
  v68 = *(a1 + 64);
  if (v68 > v69)
  {
    ShiftBytes_cold_1();
  }

  if (*(a1 + 76))
  {
    v70 = 1;
    *(a1 + 76) = 1;
    if (!*(a1 + 80))
    {
      goto LABEL_137;
    }
  }

  else
  {
    v70 = v68 == v69 && *(a1 + 72) > 64;
    *(a1 + 76) = v70;
    if (!*(a1 + 80))
    {
      goto LABEL_136;
    }
  }

  v71 = v21 < v84 && v70;
  if (!v71 && v21 < v84)
  {
    DecodeImageData_cold_10();
  }

  if (v71)
  {
    *a1 = 5;
    v72 = *(a1 + 104);
    *v82 = *(a1 + 88);
    *(v82 + 16) = v72;
    *(v82 + 32) = *(a1 + 120);
    *(a1 + 144) = *(a1 + 128);
    if (*(a1 + 152) >= 1)
    {
      VP8LColorCacheCopy(a1 + 176, v80);
    }

    return 1;
  }

  if (v21 >= v84)
  {
LABEL_140:
    if (a6)
    {
      if (v22 >= a5)
      {
        v74 = a5;
      }

      else
      {
        v74 = v22;
      }

      a6(a1, v74);
    }

    *a1 = 0;
    *(a1 + 144) = (v21 - a2) >> 2;
    return 1;
  }

LABEL_136:
  if (!v70)
  {
    goto LABEL_140;
  }

LABEL_137:
  if (*a1 != 5 && *a1)
  {
    return 0;
  }

  result = 0;
  *a1 = 3;
  return result;
}

uint64_t ExtractAlphaRows(uint64_t result, int a2)
{
  if (*(*(result + 8) + 132) < a2)
  {
    ExtractAlphaRows_cold_2();
  }

  v2 = result;
  v3 = *(result + 140);
  v4 = a2 - v3;
  if (a2 - v3 < 1)
  {
    v12 = *(result + 140);
  }

  else
  {
    v5 = (*(result + 24) + 4 * *(result + 132) * v3);
    do
    {
      if (v4 >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = v4;
      }

      v7 = *(v2 + 8);
      v8 = *(v7 + 7);
      v9 = *v7;
      v10 = *(v8 + 200) + v9 * v3;
      v11 = *(v2 + 32);
      ApplyInverseTransforms(v2, v3, v6, v5);
      WebPExtractGreen(v11, v10, (v9 * v6));
      v12 = v3 + v6;
      result = AlphaApplyFilter(v8, v3, v3 + v6, v10, v9);
      v5 += 4 * *(v2 + 132) * v6;
      v3 = (v3 + v6);
      v13 = __OFSUB__(v4, v6);
      v4 -= v6;
    }

    while (!((v4 < 0) ^ v13 | (v4 == 0)));
  }

  if (v12 != a2)
  {
    ExtractAlphaRows_cold_1();
  }

  *(v2 + 148) = a2;
  *(v2 + 140) = a2;
  return result;
}

uint64_t VP8LDecodeHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    v10 = 0;
    *(a1 + 8) = a2;
    *a1 = 0;
    VP8LInitBitReader((a1 + 40), *(a2 + 104), *(a2 + 96));
    if (!ReadImageInfo(a1 + 40, &v10 + 1, &v10, &v9))
    {
      if (*a1 == 5 || !*a1)
      {
        *a1 = 3;
      }

      goto LABEL_15;
    }

    *(a1 + 4) = 2;
    v5 = v10;
    v4 = HIDWORD(v10);
    *a2 = HIDWORD(v10);
    *(a2 + 4) = v5;
    v6 = 1;
    if (!DecodeImageStream(v4, v5, 1, a1, 0))
    {
LABEL_15:
      VP8LClear(a1);
      if (!*a1)
      {
        VP8LDecodeHeader_cold_1();
      }

      return 0;
    }
  }

  else
  {
    if (*a1 != 5 && *a1 != 0)
    {
      return 0;
    }

    v6 = 0;
    *a1 = 2;
  }

  return v6;
}

uint64_t VP8LDecodeImage(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*(result + 232))
  {
    VP8LDecodeImage_cold_8();
  }

  if (!*(result + 224))
  {
    VP8LDecodeImage_cold_7();
  }

  if (*(result + 216) <= 0)
  {
    VP8LDecodeImage_cold_6();
  }

  v2 = *(result + 8);
  if (!v2)
  {
    VP8LDecodeImage_cold_5();
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    VP8LDecodeImage_cold_4();
  }

  if (!*(result + 4))
  {
    goto LABEL_26;
  }

  v4 = *v3;
  *(result + 16) = *v3;
  if (!v4)
  {
    VP8LDecodeImage_cold_2();
  }

  if (WebPIoInitFromOptions(v3[5], v2, 3u))
  {
    if (!AllocateInternalBuffers32b(v1, *v2))
    {
      goto LABEL_33;
    }

    if (*(v2 + 136))
    {
      v5 = *(v2 + 12);
      v6 = *(v2 + 16);
      v7 = *(v2 + 144);
      v8 = *(v2 + 140);
      v9 = malloc_type_malloc(36 * v8 + 104, 0x100004077774924uLL);
      if (!v9)
      {
        goto LABEL_30;
      }

      if (*(v1 + 384))
      {
        VP8LDecodeImage_cold_1();
      }

      *(v1 + 384) = v9;
      *(v1 + 392) = v9;
      if (!WebPRescalerInit(v9, v5, v6, &v9[32 * v8 + 104], v8, v7, 0, 4, v9 + 104))
      {
        goto LABEL_33;
      }

      if (*(v2 + 136))
      {
        goto LABEL_17;
      }
    }

    v10 = **(v1 + 16);
    if (v10 - 11 >= 0xFFFFFFFC)
    {
LABEL_17:
      WebPInitAlphaProcessing();
      v10 = **(v1 + 16);
    }

    if (v10 >= 0xB)
    {
      WebPInitConvertARGBToYUV();
      if (*(*(v1 + 16) + 40))
      {
        WebPInitAlphaProcessing();
      }
    }

    if (!*(v1 + 80) || *(v1 + 152) < 1 || *(v1 + 176) || VP8LColorCacheInit(v1 + 176, *(v1 + 172)))
    {
      *(v1 + 4) = 0;
LABEL_26:
      if (DecodeImageData(v1, *(v1 + 24), *(v1 + 132), *(v1 + 136), *(v2 + 132), ProcessRows))
      {
        *(v3 + 8) = *(v1 + 148);
        return 1;
      }

      goto LABEL_33;
    }

LABEL_30:
    v11 = *v1;
    v12 = 1;
    if (!*v1)
    {
LABEL_32:
      *v1 = v12;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v11 = *v1;
  v12 = 2;
  if (!*v1)
  {
    goto LABEL_32;
  }

LABEL_31:
  if (v11 == 5)
  {
    goto LABEL_32;
  }

LABEL_33:
  VP8LClear(v1);
  if (!*v1)
  {
    VP8LDecodeImage_cold_3();
  }

  return 0;
}

uint64_t ProcessRows(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2[33] < a2)
  {
    ProcessRows_cold_9();
  }

  v3 = a2;
  v4 = result;
  v5 = *(result + 140);
  v6 = v3 - v5;
  if (v3 - v5 >= 17)
  {
    ProcessRows_cold_8();
  }

  if (v6 >= 1)
  {
    v7 = *(result + 32);
    v8 = *v2;
    result = ApplyInverseTransforms(result, v5, v6, (*(result + 24) + 4 * v5 * *(result + 132)));
    v9 = *(v4 + 140);
    if (v9 >= v3)
    {
      ProcessRows_cold_1();
    }

    v10 = v2[31];
    v11 = v2[30];
    if (v10 <= v11)
    {
      ProcessRows_cold_2();
    }

    v12 = v2[32];
    if (v2[33] >= v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = v2[33];
    }

    if (v12 <= v9)
    {
      v14 = *(v4 + 140);
    }

    else
    {
      v14 = v2[32];
    }

    v15 = v13 - v14;
    if (v13 > v14)
    {
      v16 = __OFSUB__(v12, v9);
      v17 = v12 - v9;
      v37 = (v17 < 0) ^ v16 | (v17 == 0);
      v51 = 4 * v8;
      v18 = v17 * 4 * v8;
      if (v37)
      {
        v18 = 0;
      }

      v19 = (v7 + v18 + 4 * v11);
      v20 = (v10 - v11);
      v2[2] = v14 - v12;
      v2[3] = v20;
      v2[4] = v15;
      v21 = *(v4 + 16);
      v52 = *v21;
      v50 = v13 - v14;
      v47 = v3;
      v46 = v21;
      if (*v21 <= 0xAu)
      {
        v30 = *(v4 + 148);
        v31 = *(v21 + 24);
        v32 = (*(v21 + 16) + v31 * v30);
        if (v2[34])
        {
          if (v15 < 1)
          {
            v34 = 0;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v48 = *(v21 + 16) + v31 * v30;
            do
            {
              v35 = v15 - v33;
              v36 = WebPRescaleNeededLines(*(v4 + 392), v15 - v33);
              v37 = v36 >= 1 && v36 <= v35;
              if (!v37)
              {
                ProcessRows_cold_4();
              }

              v38 = v36;
              WebPMultARGBRows(v19 + v33 * v51, v51, *(*(v4 + 392) + 44), v36, 0);
              result = WebPRescalerImport(*(v4 + 392), v35, v19 + v33 * v51, v51);
              if (result != v38)
              {
                ProcessRows_cold_3();
              }

              v39 = *(v4 + 392);
              v49 = v34;
              v40 = 0;
              if (*(v39 + 64) < *(v39 + 56))
              {
                v41 = (v32 + v31 * v34);
                v42 = *(v39 + 72);
                v43 = *(v39 + 52);
                do
                {
                  if (*(v39 + 24) > 0)
                  {
                    break;
                  }

                  WebPRescalerExportRow(v39);
                  WebPMultARGBRow(v42, v43, 1);
                  result = VP8LConvertFromBGRA(v42, v43, v52, v41);
                  v41 = (v41 + v31);
                  ++v40;
                }

                while (*(v39 + 64) < *(v39 + 56));
              }

              v33 += v38;
              v15 = v50;
              v34 = v40 + v49;
              v32 = v48;
            }

            while (v33 < v50);
          }
        }

        else
        {
          if (v15 >= 1)
          {
            v45 = v15 + 1;
            do
            {
              result = VP8LConvertFromBGRA(v19, v20, v52, v32);
              v19 = (v19 + v51);
              v32 = (v32 + v31);
              --v45;
            }

            while (v45 > 1);
          }

          v34 = v15;
        }

        v22 = *(v4 + 148) + v34;
      }

      else
      {
        v22 = *(v4 + 148);
        if (v2[34])
        {
          if (v15 >= 1)
          {
            v23 = 0;
            v24 = v51;
            do
            {
              v25 = WebPRescaleNeededLines(*(v4 + 392), v15 - v23);
              WebPMultARGBRows(v19, v24, *(*(v4 + 392) + 44), v25, 0);
              result = WebPRescalerImport(*(v4 + 392), (v15 - v23), v19, v24);
              if (result != v25)
              {
                ProcessRows_cold_5();
              }

              v26 = *(v4 + 392);
              if (*(v26 + 64) >= *(v26 + 56))
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v28 = *(v26 + 72);
                v29 = *(v26 + 52);
                do
                {
                  if (*(v26 + 24) > 0)
                  {
                    break;
                  }

                  WebPRescalerExportRow(v26);
                  WebPMultARGBRow(v28, v29, 1);
                  result = ConvertToYUVA(v28, v29, v22 + v27++, *(v4 + 16));
                }

                while (*(v26 + 64) < *(v26 + 56));
              }

              v23 += v25;
              v24 = v51;
              v19 = (v19 + v25 * v51);
              v22 += v27;
              v15 = v50;
            }

            while (v23 < v50);
          }
        }

        else if (v15 >= 1)
        {
          v44 = v15 + 1;
          do
          {
            result = ConvertToYUVA(v19, v20, v22, *(v4 + 16));
            v19 = (v19 + v51);
            ++v22;
            --v44;
          }

          while (v44 > 1);
        }
      }

      *(v4 + 148) = v22;
      v3 = v47;
      if (v22 > *(v46 + 8))
      {
        ProcessRows_cold_7();
      }
    }
  }

  *(v4 + 140) = v3;
  if (*(v4 + 136) < v3)
  {
    ProcessRows_cold_6();
  }

  return result;
}

uint64_t AccumulateHCode(uint64_t result, char a2, int *a3)
{
  v3 = *a3 + result;
  v4 = a3[1] | (WORD1(result) << a2);
  *a3 = v3;
  a3[1] = v4;
  if (v3 >= 9)
  {
    AccumulateHCode_cold_1();
  }

  return result;
}

double ClearMetadata(uint64_t a1)
{
  if (!a1)
  {
    ClearMetadata_cold_1();
  }

  free(*(a1 + 56));
  VP8LHuffmanTablesDeallocate(a1 + 80);
  VP8LHtreeGroupsFree(*(a1 + 72));
  VP8LColorCacheClear((a1 + 8));
  VP8LColorCacheClear((a1 + 24));
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t GetHtreeGroupForPos(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 44);
  if (v3)
  {
    v3 = *(*(a1 + 56) + 4 * ((a2 >> v3) + *(a1 + 48) * (a3 >> v3)));
  }

  if (v3 >= *(a1 + 64))
  {
    VP8LDecodeAlphaImageStream_cold_1();
  }

  return *(a1 + 72) + 568 * v3;
}

uint64_t ExtractPalettedAlphaRows(uint64_t result, uint64_t a2)
{
  v2 = (result + 140);
  v3 = *(result + 140);
  v4 = *(result + 8);
  v5 = *(v4 + 7);
  if (*(v5 + 12) < 2u)
  {
    v2 = v4 + 32;
  }

  v6 = *v2;
  if (v3 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v4[33] < a2)
  {
    ExtractPalettedAlphaRows_cold_3();
  }

  v8 = a2;
  v9 = result;
  if (v7 < a2)
  {
    if (*(result + 272) != 1)
    {
      ExtractPalettedAlphaRows_cold_1();
    }

    v10 = result + 280;
    if (*(v9 + 280) != 3)
    {
      ExtractPalettedAlphaRows_cold_2();
    }

    v11 = *v4;
    v12 = (*(v5 + 200) + v11 * v7);
    VP8LColorIndexInverseTransformAlpha(v10, v7, a2, (*(v9 + 24) + *(v9 + 132) * v7), v12);
    result = AlphaApplyFilter(v5, v7, v8, v12, v11);
  }

  *(v9 + 148) = v8;
  *(v9 + 140) = v8;
  return result;
}

uint64_t AlphaApplyFilter(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 12);
  if (v5)
  {
    if (!WebPUnfilters[v5])
    {
      AlphaApplyFilter_cold_1();
    }

    v6 = result;
    result = *(result + 208);
    v7 = a3 - a2;
    if (a3 > a2)
    {
      v10 = a5;
      do
      {
        (WebPUnfilters[*(v6 + 12)])(result, a4, a4, a5);
        v11 = a4 + v10;
        result = a4;
        a4 += v10;
        --v7;
      }

      while (v7);
      result = v11 - v10;
    }

    *(v6 + 208) = result;
  }

  return result;
}

uint64_t *CopyBlock32b(uint64_t *result, int a2, int a3)
{
  v4 = result - a2;
  if ((result & 3) == 0 && a2 <= 2 && a3 >= 4)
  {
    if (a2 == 1)
    {
      v5 = *v4;
      v6 = v5 | (v5 << 32);
      if ((result & 4) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = *v4;
      v5 = *v4;
      if ((result & 4) == 0)
      {
LABEL_14:
        if ((result & 7) != 0)
        {
          CopyBlock32b_cold_1();
        }

        v10 = a3 >> 1;
        v11 = (v10 + 1) & 0xFFFFFFFE;
        v12 = vdupq_n_s64(v10 - 1);
        v13 = xmmword_186205EC0;
        v14 = result + 1;
        v15 = vdupq_n_s64(2uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v12, v13));
          if (v16.i8[0])
          {
            *(v14 - 1) = v6;
          }

          if (v16.i8[4])
          {
            *v14 = v6;
          }

          v13 = vaddq_s64(v13, v15);
          v14 += 2;
          v11 -= 2;
        }

        while (v11);
        if (a3)
        {
          *(result + (a3 & 0xFFFFFFFE)) = v4[a3 & 0xFFFFFFFE];
        }

        return result;
      }
    }

    ++v4;
    *result = v5;
    result = (result + 4);
    --a3;
    v6 = __ROR8__(v6, 32);
    goto LABEL_14;
  }

  if (a2 >= a3)
  {
    v17 = 4 * a3;

    return memcpy(result, v4, v17);
  }

  else if (a3 >= 1)
  {
    v7 = a2;
    v8 = a3;
    v9 = -4 * v7;
    do
    {
      *result = *(result + v9);
      result = (result + 4);
      --v8;
    }

    while (v8);
  }

  return result;
}

int *ApplyInverseTransforms(int *result, uint64_t a2, int a3, char *__src)
{
  v5 = result[68];
  v6 = *(result + 4);
  if (v5 < 1)
  {
    if (v6 != __src)
    {
      v10 = 4 * result[33] * a3;
      v11 = *(result + 4);

      return memcpy(v11, __src, v10);
    }
  }

  else
  {
    v8 = v5 + 1;
    v9 = &result[6 * v5 + 64];
    do
    {
      result = VP8LInverseTransform(v9, a2, (a3 + a2), __src, v6);
      --v8;
      v9 -= 6;
      __src = v6;
    }

    while (v8 > 1);
  }

  return result;
}

uint64_t ConvertToYUVA(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  WebPConvertARGBToY(a1, *(a4 + 16) + *(a4 + 48) * a3, a2);
  result = WebPConvertARGBToUV(a1, *(a4 + 24) + *(a4 + 52) * (a3 >> 1), *(a4 + 32) + *(a4 + 56) * (a3 >> 1), a2, (a3 & 1) == 0);
  v9 = *(a4 + 40);
  if (v9)
  {
    v10 = v9 + *(a4 + 60) * a3;
    v11 = WebPExtractAlpha;

    return (v11)(a1 + 3, 0, a2, 1, v10, 0);
  }

  return result;
}

uint64_t WebPRescalerInit(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, char *a9)
{
  *(a1 + 44) = a2;
  *(a1 + 48) = a3;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a4;
  *(a1 + 80) = a7;
  *(a1 + 4) = a3 < a6;
  *(a1 + 8) = a8;
  *a1 = a2 < a5;
  if (a2 >= a5)
  {
    v9 = a2;
  }

  else
  {
    v9 = a5 - 1;
  }

  if (a2 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a2 - 1;
  }

  *(a1 + 36) = v9;
  *(a1 + 40) = v10;
  if (a2 >= a5)
  {
    *(a1 + 12) = 0x100000000uLL / a5;
  }

  v11 = a3 < a6;
  v12 = a3 - v11;
  v13 = a6 - v11;
  *(a1 + 28) = v12;
  *(a1 + 32) = v13;
  if (a3 >= a6)
  {
    v14 = (a6 << 32) / (v12 * v9);
    if (v14 >= 0x100000000)
    {
      LODWORD(v14) = 0;
    }

    *(a1 + 20) = v14;
    *(a1 + 24) = v12;
  }

  else
  {
    *(a1 + 24) = v13;
    v13 = v9;
  }

  *(a1 + 16) = 0x100000000uLL / v13;
  *(a1 + 88) = a9;
  *(a1 + 96) = &a9[4 * a8 * a5];
  bzero(a9, 8 * a5 * a8);
  WebPRescalerDspInit();
  return 1;
}

uint64_t WebPRescalerGetScaledDimensions(int a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if (!a3)
  {
    WebPRescalerGetScaledDimensions_cold_2();
  }

  if (!a4)
  {
    WebPRescalerGetScaledDimensions_cold_1();
  }

  LODWORD(v4) = *a3;
  LODWORD(v5) = *a4;
  if (a2 >= 1 && !v4)
  {
    v4 = (a2 + v5 * a1 - 1) / a2;
  }

  if (a1 >= 1 && !v5)
  {
    v5 = (a1 + v4 * a2 - 1) / a1;
  }

  if ((v4 - 0x40000000) < 0xC0000001 || (v5 - 0x40000000) < 0xC0000001)
  {
    return 0;
  }

  *a3 = v4;
  *a4 = v5;
  return 1;
}

uint64_t WebPRescaleNeededLines(uint64_t a1, int a2)
{
  v2 = (*(a1 + 24) + *(a1 + 32) - 1) / *(a1 + 32);
  if (v2 >= a2)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t WebPRescalerImport(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = a4;
  while (*(a1 + 64) >= *(a1 + 56) || *(a1 + 24) >= 1)
  {
    if (*(a1 + 4))
    {
      *(a1 + 88) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    }

    WebPRescalerImportRow(a1);
    if (!*(a1 + 4) && *(a1 + 52) * *(a1 + 8) >= 1)
    {
      v9 = 0;
      v11 = *(a1 + 88);
      v10 = *(a1 + 96);
      do
      {
        *(v11 + 4 * v9) += *(v10 + 4 * v9);
        ++v9;
      }

      while (v9 < *(a1 + 52) * *(a1 + 8));
    }

    ++*(a1 + 60);
    a3 += v8;
    v7 = (v7 + 1);
    *(a1 + 24) -= *(a1 + 32);
    if (v7 == a2)
    {
      return a2;
    }
  }

  return v7;
}

uint64_t WebPRescalerExport(int *a1)
{
  if (a1[16] >= a1[14])
  {
    return 0;
  }

  v2 = 0;
  do
  {
    if (a1[6] > 0)
    {
      break;
    }

    WebPRescalerExportRow(a1);
    v2 = (v2 + 1);
  }

  while (a1[16] < a1[14]);
  return v2;
}

uint64_t WebPInitCustomIo(uint64_t result, void *a2)
{
  a2[7] = result;
  a2[8] = CustomPut;
  a2[9] = CustomSetup;
  a2[10] = CustomTeardown;
  return result;
}

uint64_t CustomPut(uint64_t a1)
{
  if (*(a1 + 8))
  {
    CustomPut_cold_1();
  }

  if (*(a1 + 12) < 1 || *(a1 + 16) < 1)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = (*(v4 + 88))(a1, *(a1 + 56));
  v6 = v5;
  v7 = *(v4 + 96);
  if (v7)
  {
    v7(a1, v4, v5);
  }

  *(v4 + 32) += v6;
  return 1;
}