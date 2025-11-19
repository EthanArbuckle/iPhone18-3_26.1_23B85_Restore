uint64_t resample_float_v_3cpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v11 = *a5;
    v10 = a5[1];
    do
    {
      v12 = 0uLL;
      if (v8)
      {
        v13 = a6;
        v14 = v9;
        v15 = v8;
        do
        {
          v16 = *v14++;
          v17 = v16;
          v18 = *v13++;
          result = v18;
          v12 = vmlaq_n_f32(v12, *(v18 + 4 * v7), v17);
          --v15;
        }

        while (v15);
      }

      v19 = v12.f32[3];
      if (v12.f32[0] > v12.f32[3])
      {
        v19 = v12.f32[0];
      }

      if (v12.f32[1] > v19)
      {
        v19 = v12.f32[1];
      }

      if (v12.f32[2] > v19)
      {
        v19 = v12.f32[2];
      }

      *v11 = v12.i64[0];
      *(v11 + 8) = v12.i32[2];
      v11 += 12;
      if (v19 >= 0.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0.0;
      }

      if (v19 > 1.0)
      {
        v20 = 1.0;
      }

      *v10++ = v20;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

void CGSConvertABGR8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertABGR8888toARGB8888", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertABGR8888toARGB8888", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      v17 = 0;
      v18 = v13 + 3;
      do
      {
        if (a5)
        {
          v19 = a5;
          v20 = v18;
          do
          {
            v21 = *(v20 - 2);
            *(v20 - 2) = *v20;
            *v20 = v21;
            v20 += 4;
            --v19;
          }

          while (v19);
        }

        ++v17;
        v18 += v14;
      }

      while (v17 != v9);
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 16909056;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

void CGSConvertBGRA8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRA8888toARGB8888", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRA8888toARGB8888", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v19 = &v13[i * v14];
          v20 = a5;
          do
          {
            v17.i32[0] = *v19;
            v21 = vrev64_s16(*&vmovl_u8(v17));
            v17 = vuzp1_s8(v21, v21);
            *v19++ = v17.i32[0];
            --v20;
          }

          while (v20);
        }
      }
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 66051;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

void CGSConvertBGRX8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRX8888toARGB8888", 208, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertBGRX8888toARGB8888", 208, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v18 = &v13[i * v14];
          v19 = a5;
          do
          {
            v20 = *v18;
            v21 = v18[1];
            v22 = v18[2];
            *v18 = -1;
            v18[1] = v22;
            v18[2] = v21;
            v18[3] = v20;
            v18 += 4;
            --v19;
          }

          while (v19);
        }
      }
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 66051;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 8u, backgroundColor, 0);
  }
}

void CGSConvertRGBA8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBA8888toARGB8888", 274, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBA8888toARGB8888", 274, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v19 = &v13[i * v14];
          v20 = a5;
          do
          {
            v17.i32[0] = *v19;
            v21 = vmovl_u8(v17).u64[0];
            v22 = vext_s8(v21, v21, 6uLL);
            v17 = vuzp1_s8(v22, v22);
            *v19++ = v17.i32[0];
            --v20;
          }

          while (v20);
        }
      }
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 33619971;
    vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
  }
}

void CGSConvertRGBX8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBX8888toARGB8888", 305, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertRGBX8888toARGB8888", 305, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v18 = &v13[i * v14];
          v19 = a5;
          do
          {
            v20 = *v18;
            v21 = v18[2];
            *v18 = -1;
            *(v18 + 1) = v20;
            v18[3] = v21;
            v18 += 4;
            --v19;
          }

          while (v19);
        }
      }
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 33619971;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 8u, backgroundColor, 0);
  }
}

void CGSConvertXBGR8888toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXBGR8888toARGB8888", 338, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXBGR8888toARGB8888", 338, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 < 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = a3;
  }

  if (a4 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = -a4;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    CGBlt_copyBytes(4 * a5, a6, v16, v13, v15, v14);
    if (v9)
    {
      v17 = 0;
      v18 = v13 + 3;
      do
      {
        if (a5)
        {
          v19 = a5;
          v20 = v18;
          do
          {
            v21 = *(v20 - 2);
            v22 = *v20;
            *(v20 - 3) = -1;
            *(v20 - 2) = v22;
            *v20 = v21;
            v20 += 4;
            --v19;
          }

          while (v19);
        }

        ++v17;
        v18 += v14;
      }

      while (v17 != v9);
    }
  }

  else
  {
    src.data = v16;
    src.height = a6;
    src.width = a5;
    src.rowBytes = v15;
    dest.data = v13;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v14;
    *permuteMap = 16909056;
    *backgroundColor = -1;
    vImagePermuteChannelsWithMaskedInsert_ARGB8888(&src, &dest, permuteMap, 8u, backgroundColor, 0);
  }
}

vImage_Error CGSConvertXRGB8888toARGB8888(char *a1, int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXRGB8888toARGB8888", 371, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertXRGB8888toARGB8888", 371, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v8 = a6 - 1;
  v9 = &a1[v8 * a2];
  if (a4 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = -a2;
  }

  if (a4 >= 0)
  {
    v9 = a1;
  }

  src.data = v9;
  src.height = a6;
  src.width = a5;
  src.rowBytes = v10;
  v11 = &a3[v8 * a4];
  if (a4 >= 0)
  {
    v11 = a3;
  }

  dest.data = v11;
  dest.height = a6;
  if (a4 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = -a4;
  }

  dest.width = a5;
  dest.rowBytes = v12;
  return vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &src, &dest, 8u, 0);
}

void CGSConvertW8toARGB8888(char *a1, unsigned int a2, char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW8toARGB8888", 387, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW8toARGB8888", 387, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  v11 = &a1[v10 * a2];
  v12 = &a3[v10 * a4];
  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = -a4;
  }

  if (a4 < 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = a3;
  }

  if (a4 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = -a2;
  }

  if (a4 < 0)
  {
    v16 = v11;
  }

  else
  {
    v16 = a1;
  }

  if ((v15 & 0x80000000) != 0)
  {
    v17 = malloc_type_malloc(v13 * a6, 0x521BF6B2uLL);
    v18 = v17;
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (a5)
        {
          v20 = &v17[i * v13];
          v21 = a5;
          v22 = &v16[i * v15];
          do
          {
            v23 = *v22++;
            *v20 = -1;
            v20[1] = v23;
            v20[2] = v23;
            v20[3] = v23;
            v20 += 4;
            --v21;
          }

          while (v21);
        }
      }
    }

    CGBlt_copyBytes(4 * a5, v9, v17, v14, v13, v13);

    free(v18);
  }

  else
  {
    blue.data = v16;
    blue.height = a6;
    blue.width = a5;
    blue.rowBytes = v15;
    dest.data = v14;
    dest.height = a6;
    dest.width = a5;
    dest.rowBytes = v13;
    vImageConvert_Planar8ToXRGB8888(0xFFu, &blue, &blue, &blue, &dest, 0);
  }
}

void CGSConvertW16toARGB8888(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 0)
  {
    _CGHandleAssert("CGSConvertW16toARGB8888", 552, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertW16toARGB8888", 552, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  if (a4 < 0)
  {
    v12 = &a3[v10 * a4];
  }

  else
  {
    v12 = a3;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = a1 + v10 * a2;
  }

  else
  {
    v14 = a1;
  }

  v15 = v14 + ((v13 * v10) & (v13 >> 31));
  v16 = v12;
  if (v15 <= &v12[a6 * v11])
  {
    v17 = v13 >= 0 ? v13 : -v13;
    v16 = v12;
    if (v15 + (v17 * a6) >= v12)
    {
      v16 = malloc_type_malloc(a6 * v11, 0xD88A21C5uLL);
    }
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (a5)
      {
        v19 = &v16[i * v11];
        v20 = a5;
        v21 = (v14 + i * v13);
        do
        {
          v22 = *v21;
          v21 += 2;
          *v19 = -1;
          v19[1] = v22;
          v19[2] = v22;
          v19[3] = v22;
          v19 += 4;
          --v20;
        }

        while (v20);
      }
    }
  }

  if (v16 != v12)
  {
    CGBlt_copyBytes(4 * a5, v9, v16, v12, v11, v11);

    free(v16);
  }
}

void CGSConvertw16toARGB8888(uint64_t a1, int a2, char *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 0)
  {
    _CGHandleAssert("CGSConvertw16toARGB8888", 714, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "width >= 0", "width (%d) is negative", a6, a7, a8, a5);
  }

  v9 = a6;
  if ((a6 & 0x80000000) != 0)
  {
    _CGHandleAssert("CGSConvertw16toARGB8888", 714, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/convert-to-argb8.c", "height >= 0", "height (%d) is negative", a6, a7, a8, a6);
  }

  v10 = a6 - 1;
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  if (a4 < 0)
  {
    v12 = &a3[v10 * a4];
  }

  else
  {
    v12 = a3;
  }

  if (a4 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a4 < 0)
  {
    v14 = a1 + v10 * a2;
  }

  else
  {
    v14 = a1;
  }

  v15 = v14 + ((v13 * v10) & (v13 >> 31));
  v16 = v12;
  if (v15 <= &v12[a6 * v11])
  {
    v17 = v13 >= 0 ? v13 : -v13;
    v16 = v12;
    if (v15 + (v17 * a6) >= v12)
    {
      v16 = malloc_type_malloc(a6 * v11, 0x364ED6F6uLL);
    }
  }

  if (v9)
  {
    v18 = 0;
    v19 = (v14 + 1);
    do
    {
      if (a5)
      {
        v20 = &v16[v18 * v11];
        v21 = a5;
        v22 = v19;
        do
        {
          v23 = *v22;
          v22 += 2;
          *v20 = -1;
          v20[1] = v23;
          v20[2] = v23;
          v20[3] = v23;
          v20 += 4;
          --v21;
        }

        while (v21);
      }

      ++v18;
      v19 += v13;
    }

    while (v18 != v9);
  }

  if (v16 != v12)
  {
    CGBlt_copyBytes(4 * a5, v9, v16, v12, v11, v11);

    free(v16);
  }
}

char *fill_runs(char *result, _WORD *a2, _WORD *a3, unsigned int a4, int a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  if (((a3 - a2) & 2) != 0)
  {
    *a3 = 0;
    v6 = a3 + 1;
  }

  if (v6 > a2)
  {
    v9 = 0;
    if (a5)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    while (1)
    {
      v11 = *v7;
      if (v9 + v11 > a4)
      {
        v11 = a4 - v9;
        *v7 = a4 - v9;
      }

      if (!v11)
      {
        goto LABEL_38;
      }

      v12 = &v8[v9 >> 3];
      v13 = 8 - (v9 & 7);
      if (v11 <= v13)
      {
        v15 = (-1 << (8 - v11)) >> (v9 & 7);
        LOBYTE(v16) = v15;
LABEL_36:
        *v12 = *v12 & ~v15 | v16 & v10;
        goto LABEL_37;
      }

      if ((v9 & 7) != 0)
      {
        *v12 = (-1 << v13) & *v12 | v10 & ~(-1 << v13);
        ++v12;
        v11 -= v13;
      }

      if (v11 >= 8)
      {
        break;
      }

LABEL_34:
      if (v11)
      {
        v16 = -1 << (8 - v11);
        LOBYTE(v15) = v16 & 0xFE;
        goto LABEL_36;
      }

LABEL_37:
      v9 += *v7;
LABEL_38:
      v10 = ~v10;
      if (++v7 >= v6)
      {
        return result;
      }
    }

    v14 = v11 >> 3;
    if (v11 >> 3 <= 3)
    {
      if (v14 == 1)
      {
LABEL_32:
        *v12 = v10;
LABEL_33:
        v12 += v14;
        v11 &= 7u;
        goto LABEL_34;
      }

      if (v14 == 2)
      {
LABEL_31:
        v12[1] = v10;
        goto LABEL_32;
      }

      if (v14 != 3)
      {
        goto LABEL_40;
      }

LABEL_30:
      v12[2] = v10;
      goto LABEL_31;
    }

    if (v11 >> 3 > 5)
    {
      if (v14 != 6)
      {
        if (v14 != 7)
        {
LABEL_40:
          result = memset(v12, v10, v11 >> 3);
          goto LABEL_33;
        }

        v12[6] = v10;
      }

      v12[5] = v10;
    }

    else
    {
      if (v14 == 4)
      {
LABEL_29:
        v12[3] = v10;
        goto LABEL_30;
      }

      if (v14 != 5)
      {
        goto LABEL_40;
      }
    }

    v12[4] = v10;
    goto LABEL_29;
  }

  return result;
}

char *__pdf_is_verbose_block_invoke()
{
  result = getenv("CG_PDF_VERBOSE");
  pdf_is_verbose_isVerbose = result != 0;
  return result;
}

void pdf_log(char *a1, ...)
{
  va_start(va, a1);
  if (pdf_is_verbose_onceToken != -1)
  {
    dispatch_once(&pdf_is_verbose_onceToken, &__block_literal_global_5_6709);
  }

  if (pdf_is_verbose_isVerbose == 1)
  {
    v2 = MEMORY[0x1E69E9848];
    vfprintf_l(*MEMORY[0x1E69E9848], 0, a1, va);
    fprintf_l(*v2, 0, "\n");
  }
}

__n128 std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a2->n128_u64[0] < *a3)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (a2->n128_u64[0] < *a3)
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a4 < *a5)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a3 < *a4)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (a2->n128_u64[0] < *a3)
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*(a1 + 24) < v4->n128_u64[0])
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*a1 < *(a1 + 24))
      {
        v62 = *(a1 + 16);
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v63;
        v6[1].n128_u64[0] = v62;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (*a1 >= v20)
    {
      if (v20 < v22)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v24 < v6->n128_u64[0])
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v20 >= v22)
    {
      v55 = *(a1 + 16);
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v56;
      *(a1 + 40) = v55;
      if (*(a1 + 24) >= v22)
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v21->n128_u64[0] >= v23->n128_u64[0])
    {
      return 1;
    }

    v57 = *(a1 + 64);
    v58 = *v21;
    v59 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v59;
    *v23 = v58;
    *(a2 - 1) = v57;
    if (v6->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v60 = *(a1 + 40);
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v61;
    *(a1 + 64) = v60;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (*a1 >= v16)
  {
    if (v16 < v14)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v17 < v15->n128_u64[0])
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v16 >= v14)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (*(a1 + 24) < v14)
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = v13->n128_u64[0];
    v51 = *v47;
    if (v50 < *v47)
    {
      v65 = *(v47 + 8);
      v52 = v48;
      while (1)
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          break;
        }

        v52 -= 24;
        if (*(v53 + 24) >= v51)
        {
          v54 = a1 + v52 + 72;
          goto LABEL_39;
        }
      }

      v54 = a1;
LABEL_39:
      *v54 = v51;
      *(v54 + 8) = v65;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

unint64_t *ClipperLib::Int128Mul(unint64_t *this, uint64_t a2, uint64_t a3)
{
  v3 = a3 ^ a2;
  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v6 = HIDWORD(v5);
  v7 = v5;
  v8 = v5 * v4;
  v9 = v6 * v4 + v7 * HIDWORD(v4);
  v10 = HIDWORD(v9) + v6 * HIDWORD(v4);
  v11 = v8 + (v9 << 32);
  *this = v11;
  this[1] = v10;
  if (__CFADD__(v8, v9 << 32))
  {
    this[1] = ++v10;
    if ((v3 & 0x8000000000000000) == 0)
    {
      return this;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    return this;
  }

  v12 = -v10;
  if (v11)
  {
    v12 = ~v10;
  }

  *this = -v11;
  this[1] = v12;
  return this;
}

void ClipperLib::clipperException::~clipperException(std::exception *this)
{
  this->__vftable = &unk_1EF23C2B8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  ClipperLib::clipperException::~clipperException(this);

  JUMPOUT(0x1865EE610);
}

uint64_t ClipperLib::clipperException::what(ClipperLib::clipperException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

ClipperLib::clipperException *ClipperLib::clipperException::clipperException(ClipperLib::clipperException *this, const char *__s)
{
  *this = &unk_1EF23C2B8;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  return this;
}

void virtual thunk toClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1EF23C1F0;
  v1[18] = &unk_1EF23C238;
  v2 = v1[11];
  if (v2)
  {
    v1[12] = v2;
    operator delete(v2);
  }

  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));

  JUMPOUT(0x1865EE610);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1EF23C1F0;
  v1[18] = &unk_1EF23C238;
  v2 = v1[11];
  if (v2)
  {
    v1[12] = v2;
    operator delete(v2);
  }

  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));
}

uint64_t ClipperLib::PointInPolygon(uint64_t a1, uint64_t a2, void *a3)
{
  result = 0;
  v5 = a3;
  while (1)
  {
    v6 = v5;
    v5 = v5[7];
    v7 = v5[2];
    if (v7 == a2)
    {
      v8 = v5[1];
      if (v8 == a1)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = v6[2];
      if (v9 == a2)
      {
        if (v8 > a1 != v6[1] >= a1)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v9 = v6[2];
    }

    if (v7 >= a2 != v9 < a2)
    {
      goto LABEL_20;
    }

    v10 = v6[1];
    v11 = v5[1];
    v13 = __OFSUB__(v10, a1);
    v12 = v10 - a1 < 0;
    v14 = v10 - a1;
    if (v12 == v13)
    {
      break;
    }

    v13 = __OFSUB__(v11, a1);
    v15 = v11 == a1;
    v12 = v11 - a1 < 0;
    v16 = v11 - a1;
    if (!(v12 ^ v13 | v15))
    {
      goto LABEL_16;
    }

LABEL_20:
    if (v5 == a3)
    {
      return result;
    }
  }

  v13 = __OFSUB__(v11, a1);
  v15 = v11 == a1;
  v12 = v11 - a1 < 0;
  v16 = v11 - a1;
  if (!(v12 ^ v13 | v15))
  {
    result = (1 - result);
    goto LABEL_20;
  }

LABEL_16:
  v17 = v14 * (v7 - a2) - v16 * (v9 - a2);
  if (v17 != 0.0)
  {
    if (v7 <= v9 != v17 > 0.0)
    {
      result = (1 - result);
    }

    else
    {
      result = result;
    }

    goto LABEL_20;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = *result;
  v21 = *(a3 + 8);
  v3 = *(*result - 24);
  v4 = *(result + v3 + 80);
  if (*(result + v3 + 88) != v4)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(v4 + 8 * v8);
      v10 = *(v9 + 24);
      if (v9 != a2 && v9 != a3 && v10 != 0)
      {
        v13 = *(v9 + 8);
        if (v13)
        {
          v14 = *(v9 + 8);
          do
          {
            if (*(v14 + 24))
            {
              break;
            }

            v14 = *(v14 + 8);
          }

          while (v14);
        }

        else
        {
          v14 = 0;
        }

        if (v14 == a3 || v14 == v21 || v14 == a2)
        {
          v15 = *(a2 + 24);
          v16 = *(v9 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon(v16[1], v16[2], v15);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v16 = v16[7];
            if (v16 == v10)
            {
              v17 = a2;
LABEL_29:
              *(v9 + 8) = v17;
              v3 = *(v20 - 24);
              goto LABEL_30;
            }
          }

          v17 = a2;
          if (result)
          {
            goto LABEL_29;
          }

          v18 = *(a3 + 24);
          v19 = v10;
          while (1)
          {
            result = ClipperLib::PointInPolygon(v19[1], v19[2], v18);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v19 = v19[7];
            if (v19 == v10)
            {
              v17 = a3;
              goto LABEL_29;
            }
          }

          v17 = a3;
          if (result)
          {
            goto LABEL_29;
          }

          v17 = v21;
          if (v13 == a2)
          {
            goto LABEL_29;
          }

          v17 = v21;
          if (v13 == a3)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_30:
      ++v8;
      v4 = *(v7 + v3 + 80);
    }

    while (v8 < (*(v7 + v3 + 88) - v4) >> 3);
  }

  return result;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts1(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result - 24);
  v5 = *(result + v4 + 80);
  if (*(result + v4 + 88) != v5)
  {
    v8 = result;
    v9 = 0;
    do
    {
      v10 = *(v5 + 8 * v9);
      for (i = *(v10 + 8); i; i = *(i + 8))
      {
        if (*(i + 24))
        {
          break;
        }
      }

      if (i == a2)
      {
        v12 = *(v10 + 24);
        if (v12)
        {
          v13 = *(a3 + 24);
          v14 = *(v10 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon(v14[1], v14[2], v13);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v14 = v14[7];
            if (v14 == v12)
            {
              goto LABEL_13;
            }
          }

          if (!result)
          {
            goto LABEL_14;
          }

LABEL_13:
          *(v10 + 8) = a3;
          v4 = *(v3 - 24);
        }
      }

LABEL_14:
      ++v9;
      v5 = *(v8 + v4 + 80);
    }

    while (v9 < (*(v8 + v4 + 88) - v5) >> 3);
  }

  return result;
}

void *std::__split_buffer<ClipperLib::OutRec *>::emplace_back<ClipperLib::OutRec *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

int *ClipperLib::Clipper::GetOutRec(int *this, int a2)
{
  v2 = *(this + *(*this - 24) + 80);
  v3 = (*(this + *(*this - 24) + 88) - v2) >> 3;
  if (v3 > a2)
  {
    v4 = *(v2 + 8 * a2);
    while (1)
    {
      this = v4;
      v5 = *v4;
      if (v3 <= v5)
      {
        break;
      }

      v4 = *(v2 + 8 * v5);
      if (this == v4)
      {
        return this;
      }
    }
  }

  __break(1u);
  return this;
}

uint64_t ClipperLib::Clipper::JoinPoints(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = (*a2 + 2);
  v9 = *v8;
  v10 = *(*a2 + 2);
  v11 = a2[3];
  if (v10 == v11)
  {
    v12 = *a2;
    if (a2[2] != v9 || (v9 == *(v7 + 1) ? (v13 = v10 == *(v7 + 2)) : (v13 = 0), v12 = *a2, !v13))
    {
      do
      {
        v14 = v12;
        v12 = *(v12 + 8);
      }

      while (v12 != v6 && *(v12 + 2) == v10 && v12 != v7);
      do
      {
        v17 = v6;
        v6 = *(v6 + 7);
      }

      while (v6 != v14 && *(v6 + 2) == v10 && v6 != v7);
      if (v6 != v14 && v6 != v7)
      {
        v21 = *(v7 + 2);
        v22 = a2[1];
        do
        {
          v23 = v22;
          v22 = *(v22 + 8);
        }

        while (v22 != v17 && *(v22 + 2) == v21 && v22 != v7);
        do
        {
          v26 = v7;
          v7 = *(v7 + 7);
        }

        while (v7 != v14 && v7 != v23 && *(v7 + 2) == v21);
        if (v7 != v23 && v7 != v14)
        {
          v30 = *(v14 + 1);
          v31 = *(v17 + 1);
          v32 = *(v23 + 1);
          v33 = *(v26 + 1);
          v148 = v32 < v33;
          if (v31 <= v33)
          {
            v34 = *(v26 + 1);
          }

          else
          {
            v34 = *(v17 + 1);
          }

          if (v32 >= v30)
          {
            v35 = *(v14 + 1);
          }

          else
          {
            v35 = *(v23 + 1);
          }

          if (v31 <= v32)
          {
            v36 = *(v23 + 1);
          }

          else
          {
            v36 = *(v17 + 1);
          }

          if (v33 >= v30)
          {
            v37 = *(v14 + 1);
          }

          else
          {
            v37 = *(v26 + 1);
          }

          if (v32 < v33)
          {
            v35 = v37;
          }

          else
          {
            v36 = v34;
          }

          if (v30 <= v33)
          {
            v38 = *(v26 + 1);
          }

          else
          {
            v38 = *(v14 + 1);
          }

          if (v32 >= v31)
          {
            v39 = *(v17 + 1);
          }

          else
          {
            v39 = *(v23 + 1);
          }

          if (v30 <= v32)
          {
            v40 = *(v23 + 1);
          }

          else
          {
            v40 = *(v14 + 1);
          }

          if (v33 >= v31)
          {
            v41 = *(v17 + 1);
          }

          else
          {
            v41 = *(v26 + 1);
          }

          if (v32 < v33)
          {
            v39 = v41;
          }

          else
          {
            v40 = v38;
          }

          if (v30 < v31)
          {
            v36 = v40;
            v35 = v39;
          }

          if (v36 < v35)
          {
            if (v30 < v36 || v30 > v35)
            {
              if (v32 < v36 || v32 > v35)
              {
                if (v31 < v36 || v31 > v35)
                {
                  v42 = *(v26 + 2);
                  v150 = *(v26 + 6);
                  v151 = *(v26 + 10);
                  v43 = *(v26 + 1);
                }

                else
                {
                  v42 = *(v17 + 2);
                  v150 = *(v17 + 6);
                  v151 = *(v17 + 10);
                  v43 = *(v17 + 1);
                  v148 = v30 < v31;
                }
              }

              else
              {
                v42 = *(v23 + 2);
                v150 = *(v23 + 6);
                v151 = *(v23 + 10);
                v148 = v32 > v33;
                v43 = *(v23 + 1);
              }
            }

            else
            {
              v42 = *(v14 + 2);
              v150 = *(v14 + 6);
              v151 = *(v14 + 10);
              v148 = v30 > v31;
              v43 = *(v14 + 1);
            }

            *a2 = v14;
            a2[1] = v23;
            v101 = v30 <= v31;
            v102 = v32 <= v33;
            if (v101 == v102)
            {
              return v101 ^ v102;
            }

            if (v30 > v31)
            {
              do
              {
                v103 = v14;
                v14 = *(v14 + 7);
                v107 = *(v14 + 1);
              }

              while (v107 >= v43 && v107 <= *(v103 + 1) && *(v14 + 2) == v42);
              if (v148)
              {
                goto LABEL_179;
              }
            }

            else
            {
              do
              {
                v103 = v14;
                v14 = *(v14 + 7);
                v104 = *(v14 + 1);
              }

              while (v104 <= v43 && v104 >= *(v103 + 1) && *(v14 + 2) == v42);
              if (!v148)
              {
LABEL_179:
                v105 = 14;
                v106 = 64;
                goto LABEL_187;
              }
            }

            if (*(v103 + 1) != v43)
            {
              v103 = v14;
            }

            v105 = 16;
            v106 = 56;
LABEL_187:
            v144 = v106;
            v108 = std::deque<ClipperLib::OutPt>::emplace_back<>((a1 + *(*a1 - 24) + 112));
            v109 = v108;
            v110 = *(v103 + 2);
            v111 = *(v103 + 6);
            *(v108 + 40) = *(v103 + 10);
            *(v108 + 24) = v111;
            *(v108 + 8) = v110;
            *v108 = *v103;
            v112 = *&v103[v105];
            *(v108 + v105 * 4) = v112;
            *(v108 + v144) = v103;
            *(v112 + v144) = v108;
            *&v103[v105] = v108;
            if (*(v108 + 8) != v43 || *(v108 + 16) != v42)
            {
              v139 = (v108 + v105 * 4);
              v141 = v105 * 4;
              v114 = (v108 + 8);
              v103 = v108;
              *(v108 + 8) = v43;
              *(v108 + 16) = v42;
              *(v108 + 24) = v150;
              *(v108 + 40) = v151;
              v109 = std::deque<ClipperLib::OutPt>::emplace_back<>((a1 + *(*a1 - 24) + 112));
              v116 = v114[1];
              v115 = v114[2];
              *(v109 + 8) = *v114;
              *(v109 + 40) = v115;
              *(v109 + 24) = v116;
              v117 = *v103;
              v118 = *v139;
              *(v109 + v141) = *v139;
              *v109 = v117;
              *(v109 + v144) = v103;
              *(v118 + v144) = v109;
              *v139 = v109;
            }

            if (v32 > v33)
            {
              v119 = a1;
              do
              {
                v120 = v23;
                v23 = *(v23 + 7);
                v124 = *(v23 + 1);
              }

              while (v124 >= v43 && v124 <= *(v120 + 1) && *(v23 + 2) == v42);
              if (v148)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v119 = a1;
              do
              {
                v120 = v23;
                v23 = *(v23 + 7);
                v121 = *(v23 + 1);
              }

              while (v121 <= v43 && v121 >= *(v120 + 1) && *(v23 + 2) == v42);
              if (!v148)
              {
LABEL_198:
                v122 = 14;
                v123 = 64;
LABEL_208:
                v125 = std::deque<ClipperLib::OutPt>::emplace_back<>((v119 + *(*v119 - 24) + 112));
                v126 = *(v120 + 2);
                v127 = *(v120 + 6);
                *(v125 + 40) = *(v120 + 10);
                *(v125 + 24) = v127;
                *(v125 + 8) = v126;
                *v125 = *v120;
                v128 = *&v120[v122];
                v129 = (v125 + v122 * 4);
                *(v125 + v122 * 4) = v128;
                *(v125 + v123) = v120;
                *(v128 + v123) = v125;
                *&v120[v122] = v125;
                if (*(v125 + 8) != v43 || *(v125 + 16) != v42)
                {
                  v145 = v123;
                  v131 = (v125 + 8);
                  v120 = v125;
                  *(v125 + 8) = v43;
                  *(v125 + 16) = v42;
                  *(v125 + 24) = v150;
                  *(v125 + 40) = v151;
                  v125 = std::deque<ClipperLib::OutPt>::emplace_back<>((a1 + *(*a1 - 24) + 112));
                  v133 = v131[1];
                  v132 = v131[2];
                  *(v125 + 8) = *v131;
                  *(v125 + 40) = v132;
                  *(v125 + 24) = v133;
                  v134 = *v120;
                  v135 = *v129;
                  *(v125 + v122 * 4) = *v129;
                  *v125 = v134;
                  *(v125 + v145) = v120;
                  *(v135 + v145) = v125;
                  *v129 = v125;
                }

                v136 = 16;
                if (v30 <= v31 != v148)
                {
                  v137 = 14;
                }

                else
                {
                  v137 = 16;
                }

                if (v30 <= v31 == v148)
                {
                  v136 = 14;
                }

                *&v103[v137] = v120;
                *&v120[v136] = v103;
                *(v109 + v136 * 4) = v125;
                *(v125 + v137 * 4) = v109;
                return 1;
              }
            }

            if (*(v120 + 1) != v43)
            {
              v120 = v23;
            }

            v122 = 16;
            v123 = 56;
            goto LABEL_208;
          }
        }
      }

      return 0;
    }

    if (a3 != a4)
    {
      return 0;
    }

    v78 = *a2;
    while (1)
    {
      v78 = *(v78 + 7);
      if (v78 == v6)
      {
        break;
      }

      v79 = *(v78 + 2);
      if (*(v78 + 1) != v9 || v79 != v10)
      {
        goto LABEL_147;
      }
    }

    v79 = *(v78 + 2);
LABEL_147:
    v81 = a2[1];
    while (1)
    {
      v81 = *(v81 + 7);
      if (v81 == v7)
      {
        break;
      }

      v82 = *(v81 + 2);
      if (*(v81 + 1) != v9 || v82 != v10)
      {
        goto LABEL_155;
      }
    }

    v82 = *(v81 + 2);
LABEL_155:
    v84 = (v79 > v10) ^ (v82 <= v10);
    if (!v84)
    {
      v85 = v79 <= v10;
      if (v79 <= v10)
      {
        v86 = 14;
      }

      else
      {
        v86 = 16;
      }

      if (v85)
      {
        v87 = 64;
      }

      else
      {
        v87 = 56;
      }

      v88 = std::deque<ClipperLib::OutPt>::emplace_back<>((a1 + *(*a1 - 24) + 112));
      v89 = *v8;
      v90 = *(v8 + 16);
      *(v88 + 40) = *(v8 + 32);
      *(v88 + 24) = v90;
      *(v88 + 8) = v89;
      *v88 = *v6;
      v91 = *&v6[v86];
      *(v88 + v86 * 4) = v91;
      *(v88 + v87) = v6;
      *(v91 + v87) = v88;
      *&v6[v86] = v88;
      v92 = std::deque<ClipperLib::OutPt>::emplace_back<>((a1 + *(*a1 - 24) + 112));
      v93 = *(v7 + 2);
      v94 = *(v7 + 6);
      *(v92 + 40) = *(v7 + 10);
      *(v92 + 24) = v94;
      *(v92 + 8) = v93;
      *v92 = *v7;
      v95 = *&v7[v87 / 4];
      *(v92 + v87) = v95;
      *(v95 + v86 * 4) = v92;
      *&v6[v86] = v7;
      *&v7[v87 / 4] = v6;
      *(v88 + v87) = v92;
      *(v92 + v86 * 4) = v88;
      *a2 = v6;
      a2[1] = v88;
    }

    return v84 ^ 1u;
  }

  else
  {
    v44 = (v6 + 14);
    do
    {
      v45 = *v44;
      v46 = *(*v44 + 8);
      v47 = *(*v44 + 16);
      v44 = *v44 + 56;
    }

    while (v45 != v6 && v46 == v9 && v47 == v10);
    if (v47 <= v10 && (v50 = a2[2], v149 = *a1, ClipperLib::SlopesEqual(v9, v10, v46, v47, v50, v11, *(a1 + *(*a1 - 24) + 40))))
    {
      v147 = a1;
      v140 = 0;
    }

    else
    {
      v45 = v6;
      do
      {
        v45 = *(v45 + 8);
        v51 = *(v45 + 1);
        v52 = *(v45 + 2);
      }

      while (v45 != v6 && v51 == v9 && v52 == v10);
      if (v52 > v10)
      {
        return 0;
      }

      v50 = a2[2];
      v149 = *a1;
      result = ClipperLib::SlopesEqual(v9, v10, v51, v52, v50, v11, *(a1 + *(*a1 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v147 = a1;
      v140 = 1;
    }

    v56 = *(v7 + 1);
    v57 = (v7 + 14);
    v138 = (v7 + 2);
    v58 = *(v7 + 2);
    do
    {
      v59 = *v57;
      v60 = *(*v57 + 8);
      v61 = *(*v57 + 16);
      v57 = *v57 + 56;
    }

    while (v60 == v56 && v61 == v58 && v59 != v7);
    if (v61 <= v58 && ClipperLib::SlopesEqual(v56, *(v7 + 2), v60, v61, v50, v11, *(v147 + *(v149 - 24) + 40)))
    {
      v64 = 0;
    }

    else
    {
      v59 = v7;
      do
      {
        v59 = *(v59 + 8);
        v65 = *(v59 + 1);
        v66 = *(v59 + 2);
      }

      while (v65 == v56 && v66 == v58 && v59 != v7);
      if (v66 > v58)
      {
        return 0;
      }

      result = ClipperLib::SlopesEqual(v56, v58, v65, v66, v50, v11, *(v147 + *(v149 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v64 = 1;
    }

    result = 0;
    if (v45 != v59 && v45 != v6 && v59 != v7)
    {
      if (a3 != a4 || v140 != v64)
      {
        v69 = std::deque<ClipperLib::OutPt>::emplace_back<>((v147 + *(v149 - 24) + 112));
        v70 = v69;
        v72 = *(v8 + 16);
        v71 = *(v8 + 32);
        *(v69 + 8) = *v8;
        *(v69 + 40) = v71;
        *(v69 + 24) = v72;
        *v69 = *v6;
        if (v140)
        {
          v73 = *(v6 + 8);
          *(v69 + 56) = v6;
          *(v69 + 64) = v73;
          *(v73 + 56) = v69;
          *(v6 + 8) = v69;
          v74 = std::deque<ClipperLib::OutPt>::emplace_back<>((v147 + *(*v147 - 24) + 112));
          v75 = *v138;
          v76 = *(v7 + 6);
          *(v74 + 40) = *(v7 + 10);
          *(v74 + 24) = v76;
          *(v74 + 8) = v75;
          *v74 = *v7;
          v77 = *(v7 + 7);
          *(v74 + 56) = v77;
          *(v77 + 64) = v74;
          *(v6 + 8) = v7;
          *(v7 + 7) = v6;
          *(v70 + 56) = v74;
          *(v74 + 64) = v70;
        }

        else
        {
          v96 = *(v6 + 7);
          *(v69 + 56) = v96;
          *(v69 + 64) = v6;
          *(v96 + 64) = v69;
          *(v6 + 7) = v69;
          v97 = std::deque<ClipperLib::OutPt>::emplace_back<>((v147 + *(*v147 - 24) + 112));
          v98 = *v138;
          v99 = *(v7 + 6);
          *(v97 + 40) = *(v7 + 10);
          *(v97 + 24) = v99;
          *(v97 + 8) = v98;
          *v97 = *v7;
          v100 = *(v7 + 8);
          *(v97 + 64) = v100;
          *(v100 + 56) = v97;
          *(v6 + 7) = v7;
          *(v7 + 8) = v6;
          *(v70 + 64) = v97;
          *(v97 + 56) = v70;
        }

        *a2 = v6;
        a2[1] = v70;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t ClipperLib::FirstIsBottomPt(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = result;
  do
  {
    v4 = v4[8];
    v5 = v4[1];
    v6 = v4[2];
  }

  while (v4 != result && v5 == v2 && v6 == v3);
  v9 = v6 - v3;
  if (v9)
  {
    v10 = (v5 - v2) / v9;
  }

  else
  {
    v10 = -1.0e40;
  }

  v11 = result;
  do
  {
    v11 = v11[7];
    v12 = v11[1];
    v13 = v11[2];
  }

  while (v11 != result && v12 == v2 && v13 == v3);
  v16 = v13 - v3;
  if (v16)
  {
    v17 = (v12 - v2) / v16;
  }

  else
  {
    v17 = -1.0e40;
  }

  v18 = fabs(v10);
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2;
  do
  {
    v21 = v21[8];
    v22 = v21[1];
    v23 = v21[2];
  }

  while (v21 != a2 && v22 == v19 && v23 == v20);
  if (v23 == v20)
  {
    v26 = -1.0e40;
  }

  else
  {
    v26 = (v22 - v19) / (v23 - v20);
  }

  v27 = fabs(v17);
  v28 = a2;
  do
  {
    v28 = v28[7];
    v29 = v28[1];
    v30 = v28[2];
  }

  while (v28 != a2 && v29 == v19 && v30 == v20);
  v33 = fabs(v26);
  v34 = v30 - v20;
  if (v34)
  {
    v35 = (v29 - v19) / v34;
  }

  else
  {
    v35 = -1.0e40;
  }

  v36 = fabs(v35);
  if (v18 >= v27)
  {
    v37 = v18;
  }

  else
  {
    v37 = v27;
  }

  if (v33 >= v36)
  {
    v38 = v33;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == v38 && (v27 >= v18 ? (v39 = v18) : (v39 = v27), v36 >= v33 ? (v40 = v33) : (v40 = v36), v39 == v40))
  {
    if (result)
    {
      v41 = 0.0;
      v42 = result;
      do
      {
        v41 = v41 + (v42[1] + *(v42[8] + 8)) * (*(v42[8] + 16) - v42[2]);
        v42 = v42[7];
      }

      while (v42 != result);
      return v41 * 0.5 > 0.0;
    }
  }

  else
  {
    v43 = v27 >= v33;
    if (v27 < v36)
    {
      v43 = 0;
    }

    return v18 >= v33 && v18 >= v36 || v43;
  }

  return result;
}

void ClipperLib::Clipper::AddJoin(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = (a1 + *(*a1 - 24));
  v9 = v8[28];
  v10 = v8[27];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 8 * (v9 - v10) - 1;
  }

  v12 = v8[30];
  v13 = v8[31] + v12;
  if (v11 == v13)
  {
    if (v12 < 0x40)
    {
      v14 = v8[29];
      v15 = v8[26];
      if (v9 - v10 < (v14 - v15))
      {
        operator new();
      }

      if (v14 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = (v14 - v15) >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v16);
    }

    v8[30] = v12 - 64;
    v40 = *v10;
    v8[27] = v10 + 8;
    std::__split_buffer<ClipperLib::OutRec *>::emplace_back<ClipperLib::OutRec *&>(v8 + 26, &v40);
    v10 = v8[27];
    v13 = v8[31] + v8[30];
  }

  v17 = (*&v10[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] + ((v13 & 0x3F) << 6));
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = ClipperLib::PointInfoZero;
  v17[3] = unk_1844DF1D8;
  v18 = v8[30];
  v19 = v8[31] + 1;
  v8[31] = v19;
  v20 = v18 + v19;
  v21 = v8[27];
  v22 = (v21 + 8 * (v20 >> 6));
  v23 = *v22 + ((v20 & 0x3F) << 6);
  if (v8[28] == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  if (v24 == *v22)
  {
    v24 = *(v22 - 1) + 4096;
  }

  *(v24 - 64) = a2;
  *(v24 - 56) = a3;
  v25 = (v24 - 64);
  v26 = *a4;
  v27 = a4[2];
  v25[2] = a4[1];
  v25[3] = v27;
  v25[1] = v26;
  v29 = a1[2];
  v28 = a1[3];
  if (v29 >= v28)
  {
    v31 = a1[1];
    v32 = (v29 - v31) >> 3;
    if ((v32 + 1) >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v33 = v28 - v31;
    v34 = v33 >> 2;
    if (v33 >> 2 <= (v32 + 1))
    {
      v34 = v32 + 1;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      v35 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v35);
    }

    *(8 * v32) = v25;
    v30 = 8 * v32 + 8;
    v36 = a1[1];
    v37 = a1[2] - v36;
    v38 = (8 * v32 - v37);
    memcpy(v38, v36, v37);
    v39 = a1[1];
    a1[1] = v38;
    a1[2] = v30;
    a1[3] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v29 = v25;
    v30 = (v29 + 1);
  }

  a1[2] = v30;
}

void sub_18411A5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  operator delete(v13);
  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

BOOL ClipperLib::SlopesEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    ClipperLib::Int128Mul(v16, a2 - a4, a5 - a7);
    ClipperLib::Int128Mul(v15, a1 - a3, a6 - a8);
    return v16[1] == v15[1] && v16[0] == v15[0];
  }

  else
  {
    return (a5 - a7) * (a2 - a4) == (a6 - a8) * (a1 - a3);
  }
}

__n128 std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[2];
      v14 = a1[3];
      v17 = *a1;
      v16 = a1[1];
      v18 = a3[3];
      v20 = *a3;
      v19 = a3[1];
      a1[2] = a3[2];
      a1[3] = v18;
      *a1 = v20;
      a1[1] = v19;
LABEL_9:
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = v14;
      goto LABEL_10;
    }

    v36 = a1[2];
    v35 = a1[3];
    v38 = *a1;
    v37 = a1[1];
    v39 = a2[3];
    v41 = *a2;
    v40 = a2[1];
    a1[2] = a2[2];
    a1[3] = v39;
    *a1 = v41;
    a1[1] = v40;
    *a2 = v38;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v42 = a3[3];
      v44 = *a3;
      v43 = a3[1];
      a2[2] = a3[2];
      a2[3] = v42;
      *a2 = v44;
      a2[1] = v43;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[2];
    v21 = a2[3];
    v24 = *a2;
    v23 = a2[1];
    v25 = a3[3];
    v27 = *a3;
    v26 = a3[1];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v27;
    a2[1] = v26;
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v22;
    a3[3] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[2];
      v28 = a1[3];
      v31 = *a1;
      v30 = a1[1];
      v32 = a2[3];
      v34 = *a2;
      v33 = a2[1];
      a1[2] = a2[2];
      a1[3] = v32;
      *a1 = v34;
      a1[1] = v33;
      *a2 = v31;
      a2[1] = v30;
      a2[2] = v29;
      a2[3] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[2];
    v45 = a3[3];
    v48 = *a3;
    v47 = a3[1];
    v49 = a4[3];
    v51 = *a4;
    v50 = a4[1];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v51;
    a3[1] = v50;
    *a4 = v48;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[2];
      v52 = a2[3];
      v55 = *a2;
      v54 = a2[1];
      v56 = a3[3];
      v58 = *a3;
      v57 = a3[1];
      a2[2] = a3[2];
      a2[3] = v56;
      *a2 = v58;
      a2[1] = v57;
      *a3 = v55;
      a3[1] = v54;
      a3[2] = v53;
      a3[3] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[2];
        v59 = a1[3];
        v62 = *a1;
        v61 = a1[1];
        v63 = a2[3];
        v65 = *a2;
        v64 = a2[1];
        a1[2] = a2[2];
        a1[3] = v63;
        *a1 = v65;
        a1[1] = v64;
        *a2 = v62;
        a2[1] = v61;
        a2[2] = v60;
        a2[3] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[2];
    v67 = a4[3];
    v70 = *a4;
    v69 = a4[1];
    v71 = a5[3];
    v73 = *a5;
    v72 = a5[1];
    a4[2] = a5[2];
    a4[3] = v71;
    *a4 = v73;
    a4[1] = v72;
    *a5 = v70;
    a5[1] = v69;
    a5[2] = v68;
    a5[3] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[2];
      v74 = a3[3];
      v77 = *a3;
      v76 = a3[1];
      v78 = a4[3];
      v80 = *a4;
      v79 = a4[1];
      a3[2] = a4[2];
      a3[3] = v78;
      *a3 = v80;
      a3[1] = v79;
      *a4 = v77;
      a4[1] = v76;
      a4[2] = v75;
      a4[3] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v81 = a2[3];
        v84 = *a2;
        v83 = a2[1];
        v85 = a3[3];
        v87 = *a3;
        v86 = a3[1];
        a2[2] = a3[2];
        a2[3] = v85;
        *a2 = v87;
        a2[1] = v86;
        *a3 = v84;
        a3[1] = v83;
        a3[2] = v82;
        a3[3] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[2];
          result = a1[3];
          v90 = *a1;
          v89 = a1[1];
          v91 = a2[3];
          v93 = *a2;
          v92 = a2[1];
          a1[2] = a2[2];
          a1[3] = v91;
          *a1 = v93;
          a1[1] = v92;
          *a2 = v90;
          a2[1] = v89;
          a2[2] = v88;
          a2[3] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 4;
      v17 = (*a3)(a1 + 4, a1);
      v18 = (*a3)(v16, a1 + 4);
      if (v17)
      {
        if (v18)
        {
          v20 = a1[2];
          v19 = a1[3];
          v22 = *a1;
          v21 = a1[1];
          v23 = v16[3];
          v25 = *v16;
          v24 = v16[1];
          a1[2] = v16[2];
          a1[3] = v23;
          *a1 = v25;
          a1[1] = v24;
        }

        else
        {
          v76 = a1[2];
          v75 = a1[3];
          v78 = *a1;
          v77 = a1[1];
          v79 = a1[5];
          *a1 = a1[4];
          a1[1] = v79;
          v80 = a1[7];
          a1[2] = a1[6];
          a1[3] = v80;
          a1[4] = v78;
          a1[5] = v77;
          a1[6] = v76;
          a1[7] = v75;
          if (!(*a3)(v16, a1 + 4))
          {
            return 1;
          }

          v20 = a1[6];
          v19 = a1[7];
          v22 = a1[4];
          v21 = a1[5];
          v81 = v16[3];
          v83 = *v16;
          v82 = v16[1];
          a1[6] = v16[2];
          a1[7] = v81;
          a1[4] = v83;
          a1[5] = v82;
        }

        *v16 = v22;
        v16[1] = v21;
        result = 1;
        v16[2] = v20;
        v16[3] = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v45 = a1[6];
      v44 = a1[7];
      v47 = a1[4];
      v46 = a1[5];
      v48 = v16[3];
      v50 = *v16;
      v49 = v16[1];
      a1[6] = v16[2];
      a1[7] = v48;
      a1[4] = v50;
      a1[5] = v49;
      *v16 = v47;
      v16[1] = v46;
      v16[2] = v45;
      v16[3] = v44;
LABEL_50:
      if ((*a3)(a1 + 4, a1))
      {
        v126 = a1[2];
        v125 = a1[3];
        v128 = *a1;
        v127 = a1[1];
        v129 = a1[5];
        *a1 = a1[4];
        a1[1] = v129;
        v130 = a1[7];
        a1[2] = a1[6];
        a1[3] = v130;
        a1[4] = v128;
        a1[5] = v127;
        a1[6] = v126;
        a1[7] = v125;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode const&,ClipperLib::IntersectNode const&),ClipperLib::IntersectNode*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4, a3);
      return 1;
    }

    v35 = a2 - 4;
    v36 = (*a3)(a1 + 4, a1);
    v37 = (*a3)(a1 + 8, a1 + 4);
    if ((v36 & 1) == 0)
    {
      if (v37)
      {
        v64 = a1[6];
        v63 = a1[7];
        v66 = a1[4];
        v65 = a1[5];
        v67 = a1[9];
        a1[4] = a1[8];
        a1[5] = v67;
        v68 = a1[11];
        a1[6] = a1[10];
        a1[7] = v68;
        a1[8] = v66;
        a1[9] = v65;
        a1[10] = v64;
        a1[11] = v63;
        if ((*a3)(a1 + 4, a1))
        {
          v70 = a1[2];
          v69 = a1[3];
          v72 = *a1;
          v71 = a1[1];
          v73 = a1[5];
          *a1 = a1[4];
          a1[1] = v73;
          v74 = a1[7];
          a1[2] = a1[6];
          a1[3] = v74;
          a1[4] = v72;
          a1[5] = v71;
          a1[6] = v70;
          a1[7] = v69;
        }
      }

      goto LABEL_47;
    }

    if (v37)
    {
      v39 = a1[2];
      v38 = a1[3];
      v41 = *a1;
      v40 = a1[1];
      v42 = a1[9];
      *a1 = a1[8];
      a1[1] = v42;
      v43 = a1[11];
      a1[2] = a1[10];
      a1[3] = v43;
    }

    else
    {
      v105 = a1[2];
      v104 = a1[3];
      v107 = *a1;
      v106 = a1[1];
      v108 = a1[5];
      *a1 = a1[4];
      a1[1] = v108;
      v109 = a1[7];
      a1[2] = a1[6];
      a1[3] = v109;
      a1[4] = v107;
      a1[5] = v106;
      a1[6] = v105;
      a1[7] = v104;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_47;
      }

      v39 = a1[6];
      v38 = a1[7];
      v41 = a1[4];
      v40 = a1[5];
      v110 = a1[9];
      a1[4] = a1[8];
      a1[5] = v110;
      v111 = a1[11];
      a1[6] = a1[10];
      a1[7] = v111;
    }

    a1[8] = v41;
    a1[9] = v40;
    a1[10] = v39;
    a1[11] = v38;
LABEL_47:
    if (!(*a3)(v35, a1 + 8))
    {
      return 1;
    }

    v113 = a1[10];
    v112 = a1[11];
    v115 = a1[8];
    v114 = a1[9];
    v116 = v35[3];
    v118 = *v35;
    v117 = v35[1];
    a1[10] = v35[2];
    a1[11] = v116;
    a1[8] = v118;
    a1[9] = v117;
    *v35 = v115;
    v35[1] = v114;
    v35[2] = v113;
    v35[3] = v112;
    if (!(*a3)(a1 + 8, a1 + 4))
    {
      return 1;
    }

    v120 = a1[6];
    v119 = a1[7];
    v122 = a1[4];
    v121 = a1[5];
    v123 = a1[9];
    a1[4] = a1[8];
    a1[5] = v123;
    v124 = a1[11];
    a1[6] = a1[10];
    a1[7] = v124;
    a1[8] = v122;
    a1[9] = v121;
    a1[10] = v120;
    a1[11] = v119;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if ((*a3)(a2 - 4, a1))
    {
      v9 = a1[2];
      v8 = a1[3];
      v11 = *a1;
      v10 = a1[1];
      v12 = a2[-1];
      v14 = *v7;
      v13 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v12;
      *a1 = v14;
      a1[1] = v13;
      *v7 = v11;
      a2[-3] = v10;
      result = 1;
      a2[-2] = v9;
      a2[-1] = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = a1 + 8;
  v27 = (*a3)(a1 + 4, a1);
  v28 = (*a3)(a1 + 8, a1 + 4);
  if (v27)
  {
    if (v28)
    {
      v30 = a1[2];
      v29 = a1[3];
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[9];
      *a1 = *v26;
      a1[1] = v33;
      v34 = a1[11];
      a1[2] = a1[10];
      a1[3] = v34;
    }

    else
    {
      v85 = a1[2];
      v84 = a1[3];
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[5];
      *a1 = a1[4];
      a1[1] = v88;
      v89 = a1[7];
      a1[2] = a1[6];
      a1[3] = v89;
      a1[4] = v87;
      a1[5] = v86;
      a1[6] = v85;
      a1[7] = v84;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_33;
      }

      v30 = a1[6];
      v29 = a1[7];
      v32 = a1[4];
      v31 = a1[5];
      v90 = a1[9];
      a1[4] = *v26;
      a1[5] = v90;
      v91 = a1[11];
      a1[6] = a1[10];
      a1[7] = v91;
    }

    *v26 = v32;
    a1[9] = v31;
    a1[10] = v30;
    a1[11] = v29;
  }

  else if (v28)
  {
    v52 = a1[6];
    v51 = a1[7];
    v54 = a1[4];
    v53 = a1[5];
    v55 = a1[9];
    a1[4] = *v26;
    a1[5] = v55;
    v56 = a1[11];
    a1[6] = a1[10];
    a1[7] = v56;
    *v26 = v54;
    a1[9] = v53;
    a1[10] = v52;
    a1[11] = v51;
    if ((*a3)(a1 + 4, a1))
    {
      v58 = a1[2];
      v57 = a1[3];
      v60 = *a1;
      v59 = a1[1];
      v61 = a1[5];
      *a1 = a1[4];
      a1[1] = v61;
      v62 = a1[7];
      a1[2] = a1[6];
      a1[3] = v62;
      a1[4] = v60;
      a1[5] = v59;
      a1[6] = v58;
      a1[7] = v57;
    }
  }

LABEL_33:
  v92 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v93 = 0;
  v94 = 0;
  while (1)
  {
    if ((*a3)(v92, v26))
    {
      v95 = v92[1];
      v131 = *v92;
      v132 = v95;
      v96 = v92[3];
      v133 = v92[2];
      v134 = v96;
      v97 = v93;
      while (1)
      {
        v98 = (a1 + v97);
        v99 = *(a1 + v97 + 144);
        v98[12] = *(a1 + v97 + 128);
        v98[13] = v99;
        v100 = *(a1 + v97 + 176);
        v98[14] = *(a1 + v97 + 160);
        v98[15] = v100;
        if (v97 == -128)
        {
          break;
        }

        v97 -= 64;
        if (((*a3)(&v131, v98 + 4) & 1) == 0)
        {
          v101 = (a1 + v97 + 192);
          goto LABEL_41;
        }
      }

      v101 = a1;
LABEL_41:
      v102 = v132;
      *v101 = v131;
      v101[1] = v102;
      v103 = v134;
      v101[2] = v133;
      v101[3] = v103;
      if (++v94 == 8)
      {
        return &v92[4] == a2;
      }
    }

    v26 = v92;
    v93 += 64;
    v92 += 4;
    if (v92 == a2)
    {
      return 1;
    }
  }
}

BOOL ClipperLib::SlopesEqual(void *a1, void *a2, int a3)
{
  if (a3)
  {
    ClipperLib::Int128Mul(v8, a1[13] - a1[1], a2[12] - *a2);
    ClipperLib::Int128Mul(v7, a1[12] - *a1, a2[13] - a2[1]);
    return v8[1] == v7[1] && v8[0] == v7[0];
  }

  else
  {
    return (a2[12] - *a2) * (a1[13] - a1[1]) == (a2[13] - a2[1]) * (a1[12] - *a1);
  }
}

void *ClipperLib::PolyTree::Clear(void *this)
{
  v1 = this;
  v2 = this[10];
  v3 = this[11];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[10];
        v3 = v1[11];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    v1[11] = v2;
  }

  v5 = v1[4];
  if (v1[5] != v5)
  {
    v1[5] = v5;
  }

  return this;
}

void ClipperLib::Clipper::Execute(uint64_t a1, int a2, char **a3, int a4, int a5)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    v6 = *a1;
    if (*(a1 + *(*a1 - 24) + 73) == 1)
    {
      goto LABEL_42;
    }

    *(a1 + 120) = 1;
    v12 = *a3;
    v11 = a3[1];
    if (v11 != *a3)
    {
      v13 = a3[1];
      do
      {
        v15 = *(v13 - 3);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 2) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v12);
      a3[1] = v12;
      v6 = *a1;
    }

    *(a1 + 124) = a5;
    *(a1 + 128) = a4;
    *(a1 + 80) = a2;
    *(a1 + 133) = 0;
    v16 = (*v6)(a1);
    v17 = *a1;
    if (v16)
    {
      v18 = *(*(v17 - 3) + a1 + 88) - *(*(v17 - 3) + a1 + 80);
      if (0xAAAAAAAAAAAAAAABLL * ((a3[2] - *a3) >> 3) < v18 >> 3)
      {
        if ((v18 >> 3) <= 0xAAAAAAAAAAAAAAALL)
        {
          v50 = a3;
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(v18 >> 3);
        }

        std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
      }

      v20 = *(*(v17 - 3) + a1 + 80);
      v19 = *(*(v17 - 3) + a1 + 88);
      if (v19 != v20)
      {
        v21 = 0;
        do
        {
          v22 = *(*(v20 + 8 * v21) + 24);
          if (v22)
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            if (v21 >= (v19 - v20) >> 3)
            {
              __break(1u);
LABEL_42:
              exception = __cxa_allocate_exception(0x20uLL);
              ClipperLib::clipperException::clipperException(exception, "Error: PolyTree struct is needed for open path clipping.");
            }

            v23 = *(v22 + 64);
            if (v23)
            {
              LODWORD(v24) = 0;
              v25 = 1;
              v26 = *(v22 + 64);
              do
              {
                v27 = v24;
                v28 = v25;
                v24 = (v24 + 1);
                v26 = *(v26 + 56);
                ++v25;
              }

              while (v26 != v23);
              if (v27)
              {
                std::vector<ClipperLib::IntPoint>::reserve(&v43, v24);
                do
                {
                  std::vector<ClipperLib::IntPoint>::push_back[abi:fe200100](&v43, (v23 + 8));
                  v23 = *(v23 + 64);
                  --v28;
                }

                while (v28);
                v30 = a3[1];
                v29 = a3[2];
                if (v30 >= v29)
                {
                  v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a3) >> 3);
                  v34 = v33 + 1;
                  if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                  }

                  v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 3);
                  if (2 * v35 > v34)
                  {
                    v34 = 2 * v35;
                  }

                  if (v35 >= 0x555555555555555)
                  {
                    v36 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v36 = v34;
                  }

                  v50 = a3;
                  if (v36)
                  {
                    std::__allocate_at_least[abi:fe200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(v36);
                  }

                  v37 = 24 * v33;
                  v46 = 0;
                  v47 = v37;
                  v48 = 24 * v33;
                  v49 = 0;
                  *v37 = 0;
                  *(v37 + 8) = 0;
                  *(v37 + 16) = 0;
                  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(24 * v33, v43, v44, 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 4));
                  v32 = (v48 + 24);
                  v38 = a3[1] - *a3;
                  v39 = &v47[-v38];
                  memcpy(&v47[-v38], *a3, v38);
                  v40 = *a3;
                  *a3 = v39;
                  a3[1] = v32;
                  v41 = a3[2];
                  a3[2] = v49;
                  v48 = v40;
                  v49 = v41;
                  v46 = v40;
                  v47 = v40;
                  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(&v46);
                  v31 = v43;
                }

                else
                {
                  *v30 = 0;
                  *(v30 + 1) = 0;
                  *(v30 + 2) = 0;
                  v31 = v43;
                  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v30, v43, v44, 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 4));
                  v32 = v30 + 24;
                  a3[1] = v32;
                }

                a3[1] = v32;
                if (v31)
                {
                  operator delete(v31);
                }
              }
            }

            v17 = *a1;
          }

          ++v21;
          v20 = *(*(v17 - 3) + a1 + 80);
          v19 = *(*(v17 - 3) + a1 + 88);
        }

        while (v21 < (v19 - v20) >> 3);
      }
    }

    ClipperLib::ClipperBase::DisposeAllOutRecs((*(v17 - 3) + a1));
    *(a1 + 120) = 0;
  }
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke_6())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyASCIIDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f_30 = v1;
  return result;
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke_5())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f_23 = v1;
  return result;
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke_4())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetMD5");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f_17 = v1;
  return result;
}

CFTypeRef flexGTC_create_icc_profile_ascii_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  v10 = *(v9 + 24);
  if (v10 != 6 && v10 != 11)
  {
    _CGHandleAssert("flexGTC_create_icc_profile_ascii_description", 148, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_FlexGTCProxy.c", "space->state->type == kCGColorSpaceICCBased || space->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace must be ICC based. type = %d", a6, a7, a8, v10);
  }

  result = *(*(v9 + 96) + 40);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

BOOL flexGTC_md5_equal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 != 11 || (v8 = *(a2 + 24), v8 != 11))
  {
    _CGHandleAssert("flexGTC_get_icc_md5", 48, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_FlexGTCProxy.c", "state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not FlexGTC based. type = %d", a6, a7, a8, v8);
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  if (v9 == v10)
  {
    return 1;
  }

  v12 = *(v9 + 8);
  v11 = *(v9 + 16);
  v14 = *(v10 + 8);
  v13 = *(v10 + 16);
  return v12 == v14 && v11 == v13;
}

CFTypeRef flexGTC_create_icc_profile_description(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  v10 = *(v9 + 24);
  if (v10 != 11)
  {
    _CGHandleAssert("flexGTC_create_icc_profile_description", 138, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_FlexGTCProxy.c", "space->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace must be FlexGTC based. type = %d", a6, a7, a8, v10);
  }

  result = *(*(v9 + 96) + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void flexGTC_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  if (v8 != 11)
  {
    _CGHandleAssert("flexGTC_finalize", 68, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_FlexGTCProxy.c", "state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not FlexGTC based. type = %d", a6, a7, a8, v8);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CGColorSpaceRelease(*(v9 + 32));
    if (*v9)
    {
      CFRelease(*v9);
    }

    v10 = *(v9 + 24);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(v9 + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(v9 + 48);
    if (v12)
    {
      CFRelease(v12);
    }

    _Block_release(*(v9 + 56));
    if (!*(v9 + 80))
    {
      v13 = *(v9 + 64);
      if (v13)
      {
        (*(v13 + 16))(v13, *(v9 + 72), 0);
      }
    }

    v14 = *(v9 + 64);
    if (v14)
    {
      _Block_release(v14);
    }

    v15 = *(v9 + 80);
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(v9 + 88);

    free(v16);
  }
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke_3())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileIsHLGBased");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f_11 = v1;
  return result;
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileIsPQBased");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f_5 = v1;
  return result;
}

uint64_t (*__color_space_state_create_flexGTC_proxy_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileIsWideGamut");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  color_space_state_create_flexGTC_proxy_f = v1;
  return result;
}

uint64_t CGColorSpaceFlexGTCProxyGetFlexGTCProfile(uint64_t a1)
{
  pthread_mutex_lock((a1 + 32));
  v2 = *(a1 + 24);
  if (*(v2 + 24) != 11)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + 96);
  FlexGTCProfile_f = *(v3 + 80);
  if (FlexGTCProfile_f)
  {
    goto LABEL_10;
  }

  v5 = (*(*(v3 + 56) + 16))();
  if (!v5)
  {
LABEL_9:
    FlexGTCProfile_f = 0;
    goto LABEL_10;
  }

  v6 = v5;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    Value = CFDictionaryGetValue(MutableCopy, @"com.apple.ColorSync.MonoGainMapParams");
    v10 = CFDictionaryCreateMutableCopy(0, 0, Value);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v10, @"com.apple.ColorSync.GUID", *(v3 + 48));
      CFDictionarySetValue(v8, @"com.apple.ColorSync.MonoGainMapParams", v11);
      if (CGColorSpaceFlexGTCProxyGetFlexGTCProfile_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorSpaceFlexGTCProxyGetFlexGTCProfile_cglibrarypredicate, &__block_literal_global_44);
      }

      FlexGTCProfile_f = CGColorSpaceFlexGTCProxyGetFlexGTCProfile_f(*v3, v6);
      *(v3 + 80) = FlexGTCProfile_f;
      CFRelease(v11);
    }

    else
    {
      FlexGTCProfile_f = 0;
    }

    CFRelease(v8);
  }

  else
  {
    FlexGTCProfile_f = 0;
  }

  CFRelease(v6);
LABEL_10:
  pthread_mutex_unlock((a1 + 32));
  return FlexGTCProfile_f;
}

uint64_t CGColorSpaceCreateFlexGTCProxy(CGColorSpace *a1, uint64_t a2, const void *a3, const void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  IsPQBased = CGColorSpaceIsPQBased(a1);
  v9 = 0;
  if (!a1 || !IsPQBased)
  {
    return v9;
  }

  if (!*(*(a1 + 3) + 80))
  {
    return 0;
  }

  v10 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v11 = v10;
  v12 = *(a1 + 3);
  v13 = *(v12 + 24);
  if (v13 == 11)
  {
    v14 = *(v12 + 96);
  }

  else
  {
    if (v13 != 6)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v14 = (*(v12 + 96) + 8);
  }

  v15 = *v14;
LABEL_11:
  *keys = xmmword_1E6E19798;
  v63 = *&off_1E6E197A8;
  v64 = xmmword_1E6E197B8;
  v65 = *off_1E6E197C8;
  values = v10;
  valuePtr = 1069547520;
  cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1075838976;
  v56 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1080033280;
  v57 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1083179008;
  v58 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1085276160;
  v59 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1087373312;
  v60 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  valuePtr = 1089470464;
  v61 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v16 = 8;
  v17 = CFDictionaryCreate(0, keys, &values, 8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    CFRelease(*(&values + v16));
    v16 += 8;
  }

  while (v16 != 64);
  if (create_node_table_predicate != -1)
  {
    dispatch_once(&create_node_table_predicate, &__block_literal_global_91);
  }

  v18 = create_node_table_node_table;
  if (create_node_table_node_table)
  {
    v18 = CFRetain(create_node_table_node_table);
  }

  *keys = xmmword_1E6E19788;
  values = v17;
  cf = v18;
  v19 = CFDictionaryCreate(0, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(values);
  CFRelease(cf);
  if (create_flexGTX_profile_stub_cglibrarypredicate != -1)
  {
    dispatch_once(&create_flexGTX_profile_stub_cglibrarypredicate, &__block_literal_global_64_6810);
  }

  flexGTX_profile_stub_f = create_flexGTX_profile_stub_f(v15, v19);
  if (v19)
  {
    CFRelease(v19);
  }

  AlternateColorSpace = CGColorSpaceGetAlternateColorSpace(a1);
  if (!flexGTX_profile_stub_f)
  {
LABEL_60:
    v24 = 0;
    goto LABEL_61;
  }

  v22 = AlternateColorSpace;
  v23 = malloc_type_calloc(0x78uLL, 1uLL, 0xECD8BA0FuLL);
  v24 = v23;
  if (v23)
  {
    *v23 = 1;
    v23[12] = 1;
    *(v23 + 2) = 0x10000;
    if (color_space_state_create_flexGTC_proxy_cglibrarypredicate != -1)
    {
      dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate, &__block_literal_global_6762);
    }

    *(v24 + 14) = color_space_state_create_flexGTC_proxy_f(flexGTX_profile_stub_f);
    *(v24 + 15) = 1;
    if (color_space_state_create_flexGTC_proxy_cglibrarypredicate_6 != -1)
    {
      dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate_6, &__block_literal_global_9_6763);
    }

    *(v24 + 16) = color_space_state_create_flexGTC_proxy_f_5(flexGTX_profile_stub_f);
    if (color_space_state_create_flexGTC_proxy_cglibrarypredicate_12 != -1)
    {
      dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate_12, &__block_literal_global_15_6764);
    }

    flexGTC_proxy_f_11 = color_space_state_create_flexGTC_proxy_f_11(flexGTX_profile_stub_f);
    *(v24 + 24) = 11;
    *(v24 + 17) = flexGTC_proxy_f_11;
    *(v24 + 13) = 0;
    *(v24 + 112) = flexGTC_vtable;
    *(v24 + 28) = 0x100000001;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
    *(v24 + 40) = &icc_get_default_color_components_components03;
    *(v24 + 48) = 3;
    v26 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F2040408F26EBuLL);
    *(v24 + 96) = v26;
    if (v26)
    {
      v27 = v26;
      *v26 = flexGTX_profile_stub_f;
      if (color_space_state_create_flexGTC_proxy_cglibrarypredicate_18 != -1)
      {
        dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate_18, &__block_literal_global_21_6765);
      }

      v27[1] = color_space_state_create_flexGTC_proxy_f_17(flexGTX_profile_stub_f);
      v27[2] = v28;
      if (color_space_state_create_flexGTC_proxy_cglibrarypredicate_24 != -1)
      {
        dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate_24, &__block_literal_global_27);
      }

      flexGTC_proxy_f_23 = color_space_state_create_flexGTC_proxy_f_23(flexGTX_profile_stub_f);
      if (flexGTC_proxy_f_23)
      {
        v30 = flexGTC_proxy_f_23;
      }

      else
      {
        v30 = @"<no description>";
      }

      v27[3] = v30;
      if (v22)
      {
        CFRetain(v22);
      }

      v27[4] = v22;
      if (color_space_state_create_flexGTC_proxy_cglibrarypredicate_31 != -1)
      {
        dispatch_once(&color_space_state_create_flexGTC_proxy_cglibrarypredicate_31, &__block_literal_global_34);
      }

      flexGTC_proxy_f_30 = color_space_state_create_flexGTC_proxy_f_30(flexGTX_profile_stub_f);
      if (flexGTC_proxy_f_30)
      {
        v32 = flexGTC_proxy_f_30;
      }

      else
      {
        v32 = @"<no description>";
      }

      v27[5] = v32;
      if (v11)
      {
        v33 = CFRetain(v11);
      }

      else
      {
        v33 = 0;
      }

      v27[6] = v33;
      v34 = malloc_type_malloc(0x30uLL, 0x100004000313F17uLL);
      v27[11] = v34;
      if (v34)
      {
        *v34 = xmmword_18439C780;
        v34[1] = xmmword_18439C780;
        v34[2] = xmmword_18439C780;
        keys[0] = 0;
        keys[1] = 0;
        if (*(v24 + 24) != 11)
        {
          _CGHandleAssert("flexGTC_get_md5", 26, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_FlexGTCProxy.c", "state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not FlexGTC based. type = %d", v35, v36, v37, *(v24 + 24));
        }

        v38 = *(v24 + 96);
        v39 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
        CC_MD5_Init(v39);
        if (v39)
        {
          CC_MD5_Update(v39, (v24 + 24), 4u);
          CC_MD5_Update(v39, (v38 + 8), 0x10u);
        }

        v40 = 2 * *(v24 + 48);
        if (v40)
        {
          for (i = 0; i != v40; ++i)
          {
            v42 = *(*(v38 + 88) + 8 * i);
            *&values = v42;
            if (v39)
            {
              CC_MD5_Update(v39, &values, 4u);
            }
          }
        }

        if (v39)
        {
          CC_MD5_Final(keys, v39);
          v43 = *keys;
        }

        else
        {
          v43 = 0uLL;
        }

        v52 = v43;
        free(v39);
        *(v24 + 64) = v52;
        goto LABEL_61;
      }

      free(*(v24 + 96));
    }

    free(v24);
    goto LABEL_60;
  }

LABEL_61:
  *(*(v24 + 96) + 56) = _Block_copy(a3);
  *(*(v24 + 96) + 64) = _Block_copy(a4);
  *(*(v24 + 96) + 72) = a2;
  v9 = CGColorSpaceCreateWithState(v24, v44, v45, v46, v47, v48, v49, v50);
  if (atomic_fetch_add_explicit(v24, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v24);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t (*__create_flexGTX_profile_stub_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateCopyWithFlexGTC");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  create_flexGTX_profile_stub_f = v1;
  return result;
}

void __create_node_table_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  create_node_table_node_table = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  v0 = 0.0;
  v1 = 1;
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  do
  {
    v4 = v1;
    *keys = xmmword_1E6E197F8;
    v5 = (v0 * 0.3) + 0.4;
    v13 = @"com.apple.ColorSync.FlexGTCNodeSlope";
    values = 0;
    v10 = 0;
    v11 = 0;
    valuePtr = v5;
    values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    valuePtr = v5 + 0.5;
    v10 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    valuePtr = v5 + 0.7;
    v11 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v6 = CFDictionaryCreate(0, keys, &values, 3, v2, v3);
    for (i = 0; i != 24; i += 8)
    {
      CFRelease(*(&values + i));
    }

    CFArrayAppendValue(create_node_table_node_table, v6);
    CFRelease(v6);
    v1 = 0;
    v0 = 1.0;
  }

  while ((v4 & 1) != 0);
}

CFStringRef data_provider_copy_debug_description(uint64_t a1)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  return data_provider_copy_debug_string(a1, 0);
}

CFStringRef data_provider_copy_debug_string(uint64_t a1, __CFString *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v14 = 0;
  v4 = *(a1 + 56);
  v17[0] = *(a1 + 40);
  v17[1] = v4;
  v5 = *(a1 + 88);
  v17[2] = *(a1 + 72);
  v17[3] = v5;
  v18 = *(a1 + 112);
  bzero(v16, 0x489uLL);
  for (i = 0; i != 72; i += 8)
  {
    v7 = *(v17 + i);
    if (v7)
    {
      memset(&v13, 0, sizeof(v13));
      if (dladdr(v7, &v13))
      {
        snprintf(__str, 0x80uLL, "%s %s:%s");
      }

      else
      {
        snprintf(__str, 0x80uLL, "%s %p");
      }

      __strcat_chk();
      __strcat_chk();
    }
  }

  v8 = *(a1 + 20);
  if (v8 > 3)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1E6E198C0[v8];
  }

  asprintf(&v14, "CGDataProvider: %p type: %s size: %lld retain count: %d retained pointer: %p\n%s", a1, v9, *(a1 + 32), *(a1 + 252), *(a1 + 264), v16);
  v11 = &stru_1EF244DC0;
  if (a2)
  {
    v11 = a2;
  }

  v10 = CFStringCreateWithFormat(0, 0, @"%s\n%@", v14, v11);
  free(v14);
  return v10;
}

CFStringRef data_provider_copy_format_description(uint64_t a1)
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  return data_provider_copy_debug_string(a1, 0);
}

CFTypeID CGDataProviderGetTypeID(void)
{
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  return CGDataProviderGetTypeID_id;
}

CGDataProviderRef CGDataProviderCreateSequential(void *info, const CGDataProviderSequentialCallbacks *callbacks)
{
  if (!callbacks || !callbacks->getBytes || callbacks->version)
  {
    return 0;
  }

  provider = create_provider(info, 1, v2, v3, v4, v5, v6, v7);
  v9 = provider;
  if (provider)
  {
    *(provider + 40) = *&callbacks->getBytes;
    *(provider + 64) = *&callbacks->rewind;
    if (!CGDataProviderIsRewindable(provider))
    {
      v12 = CGDataProviderCopyData(v9);
      v13 = CGDataProviderCreateWithCFData(v12);
      if (v12)
      {
        CFRelease(v12);
      }

      CFRelease(v9);
      return v13;
    }
  }

  return v9;
}

BOOL CGDataProviderIsRewindable(uint64_t a1)
{
  v2 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  return v2 == CGDataProviderGetTypeID_id && (*(a1 + 20) & 0xFFFFFFFD) == 1 && *(a1 + 64) != 0;
}

uint64_t CGDataProviderCreateSequentialWithInternalCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 != 1 || !*(a2 + 24) || !*(a2 + 16))
  {
    return 0;
  }

  result = create_provider(a1, 1, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    *(result + 40) = *(a2 + 8);
    *(result + 64) = *(a2 + 24);
    *(result + 120) = *(a2 + 40);
    *(result + 144) = *(a2 + 48);
    *(result + 160) = *(a2 + 64);
    *(result + 176) = *(a2 + 80);
  }

  return result;
}

uint64_t CGDataProviderCreateMultiRangeDirectAccess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    CGPostError("%s: Invalid size = %lld", a2, a3, a4, a5, a6, a7, a8, "CGDataProviderCreateMultiRangeDirectAccess");
    if (!a3)
    {
      return 0;
    }
  }

  else if (!a3)
  {
    return 0;
  }

  result = 0;
  if (a2 >= 1 && !*a3)
  {
    if (!*(a3 + 8) && !*(a3 + 16))
    {
      return 0;
    }

    result = create_provider(a1, 0, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      *(result + 32) = a2;
      *(result + 96) = *(a3 + 8);
      *(result + 72) = *(a3 + 24);
    }
  }

  return result;
}

uint64_t CGDataProviderGetType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v8);
  }

  return *(a1 + 20);
}

uint64_t CGDataProviderGetSizeOfData(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return -1;
  }
}

void *CGDataProviderHasDataPtr(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v2 == CGDataProviderGetTypeID_id)
    {
      return (v1[10] != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGDataProviderGetBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v13 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v13 != CGDataProviderGetTypeID_id)
  {
    CGPostError("%s - bad argument", v6, v7, v8, v9, v10, v11, v12, "CGDataProviderGetBytes");
    return 0;
  }

  if ((*(a1 + 20) & 0xFFFFFFFD) != 1)
  {
    _CGHandleAssert("CGDataProviderGetBytes", 557, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "is_sequential(provider)", "provider is not sequential", v10, v11, v12, v18);
  }

  if (a3 < 1 || (*(a1 + 261) & 1) != 0)
  {
    return 0;
  }

  v14 = 0;
  while (1)
  {
    v15 = (*(a1 + 40))(*(a1 + 24), a2, a3);
    if (!v15)
    {
      break;
    }

    if (v15 >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = v15;
    }

    v14 += v16;
    a2 += v16;
    a3 -= v16;
    if (!a3)
    {
      return v14;
    }
  }

  *(a1 + 261) = 1;
  return v14;
}

void CGDataProviderRewind(uint64_t a1)
{
  if (a1)
  {
    v9 = CFGetTypeID(a1);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v9 == CGDataProviderGetTypeID_id)
    {
      if ((*(a1 + 20) & 0xFFFFFFFD) != 1)
      {
        _CGHandleAssert("CGDataProviderRewind", 583, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "is_sequential(provider)", "provider is not sequential", v6, v7, v8, v11);
      }

      v10 = *(a1 + 64);
      if (v10)
      {
        v10(*(a1 + 24));
      }

      *(a1 + 261) = 0;
    }

    else
    {
      CGPostError("%s - bad argument", v2, v3, v4, v5, v6, v7, v8, "CGDataProviderRewind");
    }
  }
}

size_t CGDataProviderSkipForwardInternal(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v2 = v4(*(a1 + 24), a2);
    if (!v2)
    {
      *(a1 + 261) = 1;
    }
  }

  else
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      v5(*(a1 + 24), a2);
    }

    else
    {
      MEMORY[0x1EEE9AC00]();
      v7 = v14 - v6;
      v8 = v14 - v6;
      if (v2 >= 0x401)
      {
        v8 = malloc_type_malloc(v2, 0x7A1A014uLL);
      }

      if (*(a1 + 261))
      {
        v2 = 0;
      }

      else
      {
        v9 = v2;
        v10 = v8;
        v2 = 0;
        while (1)
        {
          v11 = (*(a1 + 40))(*(a1 + 24), v10, v9);
          if (!v11)
          {
            break;
          }

          if (v11 >= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = v11;
          }

          v2 += v12;
          v10 += v12;
          v9 -= v12;
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        *(a1 + 261) = 1;
      }

LABEL_20:
      if (v8 != v7)
      {
        free(v8);
      }
    }
  }

  return v2;
}

void CGDataProviderSkipForward(_DWORD *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v7 == CGDataProviderGetTypeID_id)
    {
      if ((a1[5] & 0xFFFFFFFD) != 1)
      {
        _CGHandleAssert("CGDataProviderSkipForward", 631, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "is_sequential(provider)", "provider is not sequential", v4, v5, v6, v8);
      }

      CGDataProviderSkipForwardInternal(a1, a2);
    }
  }
}

void CGDataProviderGetBytesInRanges(void *a1, __CFArray *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v8 == CGDataProviderGetTypeID_id)
    {
      v9 = a1[13];
      if (v9)
      {
        v10 = a1[3];

        v9(v10, a2, a3, a4);
      }

      else if (a4)
      {
        v11 = 0;
        v12 = *MEMORY[0x1E695E480];
        v13 = *MEMORY[0x1E695E488];
        v14 = (a3 + 8);
        do
        {
          v15 = malloc_type_malloc(*v14, 0xE6CFC9CFuLL);
          if (v15)
          {
            v16 = v15;
            CGDataProviderGetBytesAtPosition(a1, v15, *(v14 - 1), *v14);
            v17 = CFDataCreateWithBytesNoCopy(v12, v16, *v14, v13);
            if (v17)
            {
              v18 = v17;
              CFArraySetValueAtIndex(a2, v11, v17);
              CFRelease(v18);
            }
          }

          ++v11;
          v14 += 2;
        }

        while (a4 != v11);
      }
    }
  }
}

const void *CGDataProviderGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 272)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

void CGDataProviderUngetBytePtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((CGDataProviderUngetBytePtr_warned & 1) == 0)
  {
    CGDataProviderUngetBytePtr_warned = 1;
  }

  CGDataProviderReleaseBytePtr(a1);
}

uint64_t CGDataProviderGetBytePtr(uint64_t a1)
{
  if (CGDataProviderGetBytePtr_predicate != -1)
  {
    dispatch_once(&CGDataProviderGetBytePtr_predicate, &__block_literal_global_34_6964);
  }

  return CGDataProviderRetainBytePtr(a1);
}

void *__cdecl CGDataProviderGetInfo(void *provider)
{
  if (provider)
  {
    return *(provider + 3);
  }

  return provider;
}

void *pdf_object_scanner_set_source(void *result, const void *a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    pdf_lexer_release(result[2]);
    if (*(v3 + 24))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    result = pdf_lexer_create(*v3, a2, v4);
    v3[1] = a2;
    v3[2] = result;
  }

  return result;
}

void handle_choke(uint64_t a1)
{
  if (!a1 || *(a1 + 8) != 6 || (v1 = *(a1 + 32)) == 0)
  {
LABEL_10:
    return;
  }

  if (*(v1 + 24))
  {
    decrypt_string(*(a1 + 32));
  }

  if (*(v1 + 72) < 0x33uLL)
  {
    if (*(v1 + 24))
    {
      decrypt_string(v1);
    }

    goto LABEL_10;
  }

  if (*(v1 + 24))
  {
    decrypt_string(v1);
  }
}

_BYTE *Type1Subset::emit_font_file(Type1Subset *this, uint64_t a2)
{
  embedded_font_data = Type1Subset::create_embedded_font_data(this);
  v5 = **(*(this + 1) + 8);
  v6 = PDFStreamCreateWithObjectNumber(v5, a2);
  PDFDocumentBeginObject(*v6, v6[1], v7, v8, v9, v10, v11, v12);
  PDFDocumentPrintf(*v6, "<<", v13, v14, v15, v16, v17, v18, v185);
  v19 = PDFXRefTableAddObject(*(v5 + 504));
  PDFDocumentPrintReference(v5, "/Length1 %R", v19, v20, v21, v22, v23, v24);
  v25 = PDFXRefTableAddObject(*(v5 + 504));
  PDFDocumentPrintReference(v5, "/Length2 %R", v25, v26, v27, v28, v29, v30);
  v31 = PDFXRefTableAddObject(*(v5 + 504));
  PDFDocumentPrintReference(v5, "/Length3 %R", v31, v32, v33, v34, v35, v36);
  PDFStreamBeginData(v6);
  if (!embedded_font_data)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_141;
  }

  Length = CFDataGetLength(embedded_font_data);
  BytePtr = CFDataGetBytePtr(embedded_font_data);
  v39 = v6[3];
  if (v39)
  {
    v40 = (v39 + 40);
  }

  else
  {
    v40 = v6 + 2;
  }

  v41 = *v40;
  std::string::basic_string[abi:fe200100]<0>(&__p, "eexec");
  v42 = &BytePtr[Length];
  v43 = v194;
  p_p = __p;
  if ((v194 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  if ((v194 & 0x80u) != 0)
  {
    v43 = v193;
  }

  v187 = v41;
  if (v43)
  {
    if (Length < v43)
    {
      goto LABEL_30;
    }

    v45 = v42 - v43 + 1;
    if (v45 == BytePtr)
    {
      goto LABEL_30;
    }

    v48 = *p_p;
    v46 = p_p + 1;
    v47 = v48;
    v49 = v43 - 1;
    v50 = BytePtr;
    while (*v50 != v47)
    {
LABEL_17:
      if (++v50 == v45)
      {
        goto LABEL_30;
      }
    }

    v51 = (v50 + 1);
    v52 = v49;
    v53 = v46;
    while (v52)
    {
      v55 = *v51++;
      v54 = v55;
      v56 = *v53++;
      --v52;
      if (v54 != v56)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v50 = BytePtr;
  }

  if (v42 == v50)
  {
LABEL_30:
    v60 = 0;
    v64 = 1;
    goto LABEL_34;
  }

  v60 = v50 + 5;
  if ((v50 + 5) >= v42)
  {
    v64 = 0;
    goto LABEL_34;
  }

  v188 = v31;
  v61 = &BytePtr[Length] - v50 - 5;
  v62 = MEMORY[0x1E69E9830];
  while (1)
  {
    v63 = *v60;
    if (v63 < 0)
    {
      break;
    }

    if ((*(v62 + 4 * v63 + 60) & 0x4000) == 0)
    {
      goto LABEL_32;
    }

LABEL_28:
    ++v60;
    if (!--v61)
    {
      v64 = 0;
      v60 = &BytePtr[Length];
      goto LABEL_33;
    }
  }

  if (__maskrune_l(*v60, 0x4000uLL, 0))
  {
    goto LABEL_28;
  }

LABEL_32:
  v64 = 0;
LABEL_33:
  v31 = v188;
LABEL_34:
  if (v194 < 0)
  {
    operator delete(__p);
    if (v64)
    {
      goto LABEL_92;
    }
  }

  else if (v64)
  {
    goto LABEL_92;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, "/Encoding StandardEncoding def");
  v65 = v194;
  if ((v194 & 0x80u) == 0)
  {
    v66 = &__p;
  }

  else
  {
    v66 = __p;
  }

  if ((v194 & 0x80u) != 0)
  {
    v65 = v193;
  }

  v189 = v31;
  if (BytePtr == v60 || !v65)
  {
    goto LABEL_59;
  }

  v69 = *v66;
  v67 = v66 + 1;
  v68 = v69;
  v70 = v65 - 1;
  v71 = BytePtr;
  v72 = v60;
  do
  {
    v73 = v71 + 1;
    while (*v71 != v68)
    {
      ++v71;
      ++v73;
      if (v71 == v60)
      {
        goto LABEL_57;
      }
    }

    v74 = v70;
    v75 = v67;
    while (v74)
    {
      if (v73 == v60)
      {
        goto LABEL_57;
      }

      v77 = *v73++;
      v76 = v77;
      v78 = *v75++;
      --v74;
      if (v76 != v78)
      {
        goto LABEL_56;
      }
    }

    v72 = v71;
LABEL_56:
    ++v71;
  }

  while (v71 != v60);
LABEL_57:
  if (v72 == v60)
  {
LABEL_59:
    std::string::basic_string[abi:fe200100]<0>(v190, "currentdict end");
    if ((v191 & 0x80u) == 0)
    {
      v79 = v190;
    }

    else
    {
      v79 = v190[0];
    }

    if ((v191 & 0x80u) == 0)
    {
      v80 = v191;
    }

    else
    {
      v80 = v190[1];
    }

    if (BytePtr == v60 || !v80)
    {
      goto LABEL_87;
    }

    v83 = *v79;
    v81 = v79 + 1;
    v82 = v83;
    v84 = (v80 - 1);
    v85 = BytePtr;
    v86 = v60;
    do
    {
      v87 = v85 + 1;
      while (*v85 != v82)
      {
        ++v85;
        ++v87;
        if (v85 == v60)
        {
          goto LABEL_79;
        }
      }

      v88 = v84;
      v89 = v81;
      while (v88)
      {
        if (v87 == v60)
        {
          goto LABEL_79;
        }

        v91 = *v87++;
        v90 = v91;
        v92 = *v89++;
        --v88;
        if (v90 != v92)
        {
          goto LABEL_78;
        }
      }

      v86 = v85;
LABEL_78:
      ++v85;
    }

    while (v85 != v60);
LABEL_79:
    if (v86 == v60)
    {
LABEL_87:
      v95 = 1;
    }

    else
    {
      CGDataConsumerPutBytes(v6[3], BytePtr, v86 - BytePtr);
      if ((v194 & 0x80u) == 0)
      {
        v93 = &__p;
      }

      else
      {
        v93 = __p;
      }

      if ((v194 & 0x80u) == 0)
      {
        v94 = v194;
      }

      else
      {
        v94 = v193;
      }

      CGDataConsumerPutBytes(v6[3], v93, v94);
      CGDataConsumerPutBytes(v6[3], "\n", 1);
      CGDataConsumerPutBytes(v6[3], v86, &v60[-v86]);
      v95 = 0;
    }

    v31 = v189;
    if (v191 < 0)
    {
      operator delete(v190[0]);
      if ((v95 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if ((v95 & 1) == 0)
    {
      goto LABEL_94;
    }

    if (v194 < 0)
    {
      operator delete(__p);
    }

LABEL_92:
    v59 = 0;
    v58 = 0;
    v57 = 0;
  }

  else
  {
    CGDataConsumerPutBytes(v6[3], BytePtr, v60 - BytePtr);
LABEL_94:
    v186 = v25;
    if (v194 < 0)
    {
      operator delete(__p);
    }

    v96 = BytePtr - v60 + Length;
    v97 = v6[3];
    v98 = (v97 + 40);
    v99 = v97 == 0;
    v100 = v6 + 2;
    if (!v99)
    {
      v100 = v98;
    }

    v101 = *v100;
    std::string::basic_string[abi:fe200100]<0>(&__p, "cleartomark");
    if ((v194 & 0x80u) == 0)
    {
      v102 = &__p;
    }

    else
    {
      v102 = __p;
    }

    if ((v194 & 0x80u) == 0)
    {
      v103 = v194;
    }

    else
    {
      v103 = v193;
    }

    if (!v96 || !v103)
    {
      goto LABEL_130;
    }

    v104 = &BytePtr[Length];
    v107 = *v102;
    v105 = v102 + 1;
    v106 = v107;
    v108 = v103 - 1;
    v109 = v60;
    v110 = &BytePtr[Length];
    do
    {
      v111 = v109 + 1;
      while (*v109 != v106)
      {
        ++v109;
        ++v111;
        if (v109 == v104)
        {
          goto LABEL_118;
        }
      }

      v112 = v108;
      v113 = v105;
      while (v112)
      {
        if (v111 == v104)
        {
          goto LABEL_118;
        }

        v115 = *v111++;
        v114 = v115;
        v116 = *v113++;
        --v112;
        if (v114 != v116)
        {
          goto LABEL_117;
        }
      }

      v110 = v109;
LABEL_117:
      ++v109;
    }

    while (v109 != v104);
LABEL_118:
    if (v110 != v104)
    {
      if (v110 > v60)
      {
        v117 = 0;
        v118 = (v110 - 1);
        v119 = MEMORY[0x1E69E9830];
        do
        {
          v120 = v118;
          v121 = *v118;
          if (v121 == 48)
          {
            if (++v117 == 512)
            {
              CGDataConsumerPutBytes(v6[3], v60, v118 - v60);
              v96 -= v120 - v60;
              v60 = v120;
              goto LABEL_132;
            }
          }

          else if ((v121 & 0x80) != 0)
          {
            if (!__maskrune_l(v121, 0x4000uLL, 0))
            {
              break;
            }
          }

          else if ((*(v119 + 4 * v121 + 60) & 0x4000) == 0)
          {
            break;
          }

          v118 = (v120 - 1);
        }

        while (v120 > v60);
      }

      pdf_error("invalid Type1 font stream: missing 512 zeroes.");
    }

    else
    {
LABEL_130:
    }

LABEL_132:
    v59 = v101 - v187;
    if (v194 < 0)
    {
      operator delete(__p);
    }

    v122 = v6[3];
    v123 = (v122 + 40);
    if (!v122)
    {
      v123 = v6 + 2;
    }

    v124 = *v123;
    v58 = *v123 - v101;
    CGDataConsumerPutBytes(v122, v60, v96);
    v125 = v6[3];
    if (v125)
    {
      v126 = (v125 + 40);
    }

    else
    {
      v126 = v6 + 2;
    }

    v57 = *v126 - v124;
    v31 = v189;
    v25 = v186;
  }

  CFRelease(embedded_font_data);
LABEL_141:
  PDFStreamEndData(v6);
  PDFStreamEnd(v6);
  PDFStreamRelease(v6);
  PDFDocumentBeginObject(v5, v19, v127, v128, v129, v130, v131, v132);
  PDFDocumentPrintf(v5, "%O", v133, v134, v135, v136, v137, v138, v59);
  PDFDocumentEndObject(v5, v139, v140, v141, v142, v143, v144, v145);
  PDFDocumentBeginObject(v5, v25, v146, v147, v148, v149, v150, v151);
  PDFDocumentPrintf(v5, "%O", v152, v153, v154, v155, v156, v157, v58);
  PDFDocumentEndObject(v5, v158, v159, v160, v161, v162, v163, v164);
  PDFDocumentBeginObject(v5, v31, v165, v166, v167, v168, v169, v170);
  PDFDocumentPrintf(v5, "%O", v171, v172, v173, v174, v175, v176, v57);

  return PDFDocumentEndObject(v5, v177, v178, v179, v180, v181, v182, v183);
}

void sub_18411D8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef Type1Subset::create_embedded_font_data(Type1Subset *this)
{
  v2 = *(this + 1);
  glyph_index_set = FontSubset::create_glyph_index_set(this);
  embedded_font = PDFFont::create_embedded_font(v2, this + 8, glyph_index_set, 0, 0);
  CGFontIndexSetRelease(glyph_index_set);
  if (embedded_font && (CFDataGetLength(embedded_font) - 0x80000000) <= 0xFFFFFFFF80000000)
  {
    CFRelease(embedded_font);
    return 0;
  }

  return embedded_font;
}

uint64_t Type1Subset::emit_definition(uint64_t this)
{
  if (*(this + 104))
  {
    v1 = this;
    v2 = *(this + 8);
    FontDescriptor::FontDescriptor(v81, v2, *(this + 40) == 1);
    v3 = **(v2 + 1);
    PDFDocumentBeginObject(v3, *(v1 + 48), v4, v5, v6, v7, v8, v9);
    PDFDocumentPrintf(v3, "<<", v10, v11, v12, v13, v14, v15, v75);
    PDFDocumentPrintf(v3, "/Type /Font", v16, v17, v18, v19, v20, v21, v76);
    PDFDocumentPrintf(v3, "/Subtype /Type1", v22, v23, v24, v25, v26, v27, v77);
    v34 = *(v1 + 64);
    if (*(v1 + 87) >= 0)
    {
      v34 = v1 + 64;
    }

    PDFDocumentPrintf(v3, "/BaseFont /%N", v28, v29, v30, v31, v32, v33, v34);
    PDFDocumentPrintReference(v3, "/FontDescriptor %R", v82, v35, v36, v37, v38, v39);
    v46 = *(v1 + 8);
    v47 = **(v46 + 8);
    if (*(v1 + 40) == 1)
    {
      PDFDocumentPrintf(**(v46 + 8), "/Encoding /MacRomanEncoding", v40, v41, v42, v43, v44, v45, v78);
    }

    else
    {
      v48 = *(v46 + 16);
      if (v48)
      {
        v49 = (*(*(v48 + 16) + 296))(*(v48 + 112));
        if (v49)
        {
          v56 = v49;
          PDFDocumentPrintf(v47, "/Encoding <<", v50, v51, v52, v53, v54, v55, v78);
          PDFDocumentPrintf(v47, "/Type /Encoding", v57, v58, v59, v60, v61, v62, v79);
          PDFDocumentPrintf(v47, "/Differences [", v63, v64, v65, v66, v67, v68, v80);
          std::vector<char>::vector[abi:fe200100](&__p, v56);
          FontSubset::get_encoding_vector(&v83);
        }
      }
    }

    if (*(v1 + 40) != 1)
    {
      v69 = PDFXRefTableAddObject(*(v3 + 504));
      PDFDocumentPrintReference(v3, "/ToUnicode %R", v69, v70, v71, v72, v73, v74);
    }

    FontSubset::emit_widths(v1);
  }

  return this;
}

void sub_18411DCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char>::vector[abi:fe200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

void sub_18411DD5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Type1Subset::~Type1Subset(Type1Subset *this)
{
  FontSubset::~FontSubset(this);

  JUMPOUT(0x1865EE610);
}

uint64_t vec::composite_pixelshape<(CGCompositeOperation)6,_rgbaf_t>(uint64_t result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = *(result + 16);
        v27 = vorrq_s8(vandq_s8(*a3, v16), v17);
        v28 = vorrq_s8(vandq_s8(a3[1], v16), v17);
        v29 = vdupq_laneq_s32(v26, 3);
        v30 = vdupq_laneq_s32(*result, 3);
        *result = vbslq_s8(vcgtzq_f32(v30), vaddq_f32(*result, vmlsq_f32(v27, vmaxnmq_f32(vminnmq_f32(v30, _Q3), 0), v27)), v27);
        *(result + 16) = vbslq_s8(vcgtzq_f32(v29), vaddq_f32(v26, vmlsq_f32(v28, vmaxnmq_f32(vminnmq_f32(v29, _Q3), 0), v28)), v28);
        v25 -= 2;
        a3 = (a3 + v18);
        result += v18;
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      v32 = vorrq_s8(vandq_s8(*a3, v16), v17);
      v33 = vdupq_laneq_s32(*result, 3);
      *result = vbslq_s8(vcgtzq_f32(v33), vaddq_f32(*result, vmlsq_f32(v32, vmaxnmq_f32(vminnmq_f32(v33, _Q3), 0), v32)), v32);
      v34 = &a3[a12];
      if (v34 >= a8)
      {
        v35 = -a7;
      }

      else
      {
        v35 = 0;
      }

      a3 = &v34[v35];
      result += 16 * a12;
    }

    result += 16 * a2;
    v36 = &a5[a4];
    if (v36 >= a9)
    {
      v37 = -(a6 * a4);
    }

    else
    {
      v37 = 0;
    }

    v38 = &v36[v37];
    v39 = a8 + 16 * v37 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v38;
      a8 = v39;
      a5 = v38;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int32x4_t *vec::composite_pixelshape<(CGCompositeOperation)3,_rgbaf_t>(int32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(result[1], 3), _Q3), 0), vorrq_s8(vandq_s8(a3[1], v16), v17));
        *result = vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*result, 3), _Q3), 0), vorrq_s8(vandq_s8(*a3, v16), v17));
        result[1] = v26;
        v25 -= 2;
        a3 = (a3 + v18);
        result = (result + v18);
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      *result = vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*result, 3), _Q3), 0), vorrq_s8(vandq_s8(*a3, v16), v17));
      v28 = &a3[a12];
      if (v28 >= a8)
      {
        v29 = -a7;
      }

      else
      {
        v29 = 0;
      }

      a3 = &v28[v29];
      result += a12;
    }

    result += a2;
    v30 = &a5[a4];
    if (v30 >= a9)
    {
      v31 = -(a6 * a4);
    }

    else
    {
      v31 = 0;
    }

    v32 = &v30[v31];
    v33 = a8 + 16 * v31 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v32;
      a8 = v33;
      a5 = v32;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int32x4_t *vec::composite_pixelshape<(CGCompositeOperation)4,_rgbaf_t>(int32x4_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = vorrq_s8(vandq_s8(*a3, v16), v17);
        v27 = vorrq_s8(vandq_s8(a3[1], v16), v17);
        v28 = vmlsq_f32(v27, v27, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(result[1], 3), _Q3), 0));
        *result = vmlsq_f32(v26, v26, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*result, 3), _Q3), 0));
        result[1] = v28;
        v25 -= 2;
        a3 = (a3 + v18);
        result = (result + v18);
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      v30 = vorrq_s8(vandq_s8(*a3, v16), v17);
      *result = vmlsq_f32(v30, v30, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(*result, 3), _Q3), 0));
      v31 = &a3[a12];
      if (v31 >= a8)
      {
        v32 = -a7;
      }

      else
      {
        v32 = 0;
      }

      a3 = &v31[v32];
      result += a12;
    }

    result += a2;
    v33 = &a5[a4];
    if (v33 >= a9)
    {
      v34 = -(a6 * a4);
    }

    else
    {
      v34 = 0;
    }

    v35 = &v33[v34];
    v36 = a8 + 16 * v34 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v35;
      a8 = v36;
      a5 = v35;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int8x16_t *vec::composite_pixelshape<(CGCompositeOperation)11,_rgbaf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14)
{
  if (a14)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16.i64[0] = 0;
  v16.i32[2] = 0;
  v16.i32[3] = v15;
  v17 = vdupq_n_s32(v15);
  v18.i64[0] = 0;
  v18.i32[2] = 0;
  v19 = vmvnq_s8(v16);
  if (a13)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v18.i32[3] = v20;
  v21 = vandq_s8(v17, xmmword_18439CB00);
  v22 = vmvnq_s8(v18);
  v23 = vandq_s8(vdupq_n_s32(v20), xmmword_18439CB00);
  v24 = 32 * a12;
  __asm { FMOV            V4.4S, #1.0 }

  do
  {
    v30 = (a8 - a3) >> 4;
    if (v30 >= a10)
    {
      v30 = a10;
    }

    v31 = v30;
    if (v30 >= 2)
    {
      do
      {
        v32 = vorrq_s8(vandq_s8(a3[1], v19), v21);
        v33 = vorrq_s8(vandq_s8(*a3, v19), v21);
        v34 = vorrq_s8(vandq_s8(result[1], v22), v23);
        v35 = vorrq_s8(vandq_s8(*result, v22), v23);
        v36 = vdupq_laneq_s32(v33, 3);
        v37 = vdupq_laneq_s32(v32, 3);
        v38 = vdupq_laneq_s32(v35, 3);
        v39 = vdupq_laneq_s32(v34, 3);
        *result = vsubq_f32(vminnmq_f32(vaddq_f32(v36, v38), _Q4), vaddq_f32(vsubq_f32(v36, v33), vsubq_f32(v38, v35)));
        result[1] = vsubq_f32(vminnmq_f32(vaddq_f32(v37, v39), _Q4), vaddq_f32(vsubq_f32(v37, v32), vsubq_f32(v39, v34)));
        v31 -= 2;
        a3 = (a3 + v24);
        result = (result + v24);
      }

      while (v31 > 1);
    }

    for (i = v31 + a10 - v30; i; --i)
    {
      v41 = vorrq_s8(vandq_s8(*a3, v19), v21);
      v42 = vorrq_s8(vandq_s8(*result, v22), v23);
      v43 = vdupq_laneq_s32(v41, 3);
      v44 = vdupq_laneq_s32(v42, 3);
      *result = vsubq_f32(vminnmq_f32(vaddq_f32(v43, v44), _Q4), vaddq_f32(vsubq_f32(v43, v41), vsubq_f32(v44, v42)));
      v45 = &a3[a12];
      if (v45 >= a8)
      {
        v46 = -a7;
      }

      else
      {
        v46 = 0;
      }

      a3 = &v45[v46];
      result += a12;
    }

    result += a2;
    v47 = &a5[a4];
    if (v47 >= a9)
    {
      v48 = -(a6 * a4);
    }

    else
    {
      v48 = 0;
    }

    v49 = &v47[v48];
    v50 = a8 + 16 * v48 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v49;
      a8 = v50;
      a5 = v49;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int8x16_t *vec::composite_pixelshape<(CGCompositeOperation)6,_RGBAf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = vrev32q_s8(result[1]);
        v27 = vrev32q_s8(*result);
        v28 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v16), v17);
        v29 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17);
        v30 = vdupq_laneq_s32(v27, 3);
        v31 = vdupq_laneq_s32(v26, 3);
        *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v30), vaddq_f32(vmlsq_f32(v29, vmaxnmq_f32(vminnmq_f32(v30, _Q3), 0), v29), v27), v29));
        result[1] = vrev32q_s8(vbslq_s8(vcgtzq_f32(v31), vaddq_f32(vmlsq_f32(v28, vmaxnmq_f32(vminnmq_f32(v31, _Q3), 0), v28), v26), v28));
        v25 -= 2;
        a3 = (a3 + v18);
        result = (result + v18);
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      v33 = vrev32q_s8(*result);
      v34 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17);
      v35 = vdupq_laneq_s32(v33, 3);
      *result = vrev32q_s8(vbslq_s8(vcgtzq_f32(v35), vaddq_f32(vmlsq_f32(v34, vmaxnmq_f32(vminnmq_f32(v35, _Q3), 0), v34), v33), v34));
      v36 = &a3[a12];
      if (v36 >= a8)
      {
        v37 = -a7;
      }

      else
      {
        v37 = 0;
      }

      a3 = &v36[v37];
      result += a12;
    }

    result += a2;
    v38 = &a5[a4];
    if (v38 >= a9)
    {
      v39 = -(a6 * a4);
    }

    else
    {
      v39 = 0;
    }

    v40 = &v38[v39];
    v41 = a8 + 16 * v39 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v40;
      a8 = v41;
      a5 = v40;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int8x16_t *vec::composite_pixelshape<(CGCompositeOperation)3,_RGBAf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(result[1]), 3), _Q3), 0), vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v16), v17)));
        *result = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*result), 3), _Q3), 0), vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17)));
        result[1] = v26;
        v25 -= 2;
        a3 = (a3 + v18);
        result = (result + v18);
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      *result = vrev32q_s8(vmulq_f32(vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*result), 3), _Q3), 0), vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17)));
      v28 = &a3[a12];
      if (v28 >= a8)
      {
        v29 = -a7;
      }

      else
      {
        v29 = 0;
      }

      a3 = &v28[v29];
      result += a12;
    }

    result += a2;
    v30 = &a5[a4];
    if (v30 >= a9)
    {
      v31 = -(a6 * a4);
    }

    else
    {
      v31 = 0;
    }

    v32 = &v30[v31];
    v33 = a8 + 16 * v31 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v32;
      a8 = v33;
      a5 = v32;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int8x16_t *vec::composite_pixelshape<(CGCompositeOperation)4,_RGBAf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13)
{
  if (a13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  v15.i64[0] = 0;
  v15.i32[2] = 0;
  v15.i32[3] = v14;
  v16 = vmvnq_s8(v15);
  v17 = vandq_s8(vdupq_n_s32(v14), xmmword_18439CB00);
  v18 = 32 * a12;
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v24 = (a8 - a3) >> 4;
    if (v24 >= a10)
    {
      v24 = a10;
    }

    v25 = v24;
    if (v24 >= 2)
    {
      do
      {
        v26 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v16), v17);
        v27 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17);
        v28 = vrev32q_s8(vmlsq_f32(v26, v26, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(result[1]), 3), _Q3), 0)));
        *result = vrev32q_s8(vmlsq_f32(v27, v27, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*result), 3), _Q3), 0)));
        result[1] = v28;
        v25 -= 2;
        a3 = (a3 + v18);
        result = (result + v18);
      }

      while (v25 > 1);
    }

    for (i = v25 + a10 - v24; i; --i)
    {
      v30 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v16), v17);
      *result = vrev32q_s8(vmlsq_f32(v30, v30, vmaxnmq_f32(vminnmq_f32(vdupq_laneq_s32(vrev32q_s8(*result), 3), _Q3), 0)));
      v31 = &a3[a12];
      if (v31 >= a8)
      {
        v32 = -a7;
      }

      else
      {
        v32 = 0;
      }

      a3 = &v31[v32];
      result += a12;
    }

    result += a2;
    v33 = &a5[a4];
    if (v33 >= a9)
    {
      v34 = -(a6 * a4);
    }

    else
    {
      v34 = 0;
    }

    v35 = &v33[v34];
    v36 = a8 + 16 * v34 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v35;
      a8 = v36;
      a5 = v35;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

int8x16_t *vec::composite_pixelshape<(CGCompositeOperation)11,_RGBAf_t>(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t *a5, int a6, int a7, unint64_t a8, unint64_t a9, int a10, int a11, int a12, int a13, int a14)
{
  if (a14)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v16.i64[0] = 0;
  v16.i32[2] = 0;
  v16.i32[3] = v15;
  v17 = vdupq_n_s32(v15);
  v18.i64[0] = 0;
  v18.i32[2] = 0;
  v19 = vmvnq_s8(v16);
  if (a13)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

  v18.i32[3] = v20;
  v21 = vandq_s8(v17, xmmword_18439CB00);
  v22 = vmvnq_s8(v18);
  v23 = vandq_s8(vdupq_n_s32(v20), xmmword_18439CB00);
  v24 = 32 * a12;
  __asm { FMOV            V4.4S, #1.0 }

  do
  {
    v30 = (a8 - a3) >> 4;
    if (v30 >= a10)
    {
      v30 = a10;
    }

    v31 = v30;
    if (v30 >= 2)
    {
      do
      {
        v32 = vorrq_s8(vandq_s8(vrev32q_s8(a3[1]), v19), v21);
        v33 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v21);
        v34 = vorrq_s8(vandq_s8(vrev32q_s8(result[1]), v22), v23);
        v35 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v22), v23);
        v36 = vdupq_laneq_s32(v33, 3);
        v37 = vdupq_laneq_s32(v32, 3);
        v38 = vdupq_laneq_s32(v35, 3);
        v39 = vdupq_laneq_s32(v34, 3);
        *result = vrev32q_s8(vsubq_f32(vminnmq_f32(vaddq_f32(v36, v38), _Q4), vaddq_f32(vsubq_f32(v36, v33), vsubq_f32(v38, v35))));
        result[1] = vrev32q_s8(vsubq_f32(vminnmq_f32(vaddq_f32(v37, v39), _Q4), vaddq_f32(vsubq_f32(v37, v32), vsubq_f32(v39, v34))));
        v31 -= 2;
        a3 = (a3 + v24);
        result = (result + v24);
      }

      while (v31 > 1);
    }

    for (i = v31 + a10 - v30; i; --i)
    {
      v41 = vorrq_s8(vandq_s8(vrev32q_s8(*a3), v19), v21);
      v42 = vorrq_s8(vandq_s8(vrev32q_s8(*result), v22), v23);
      v43 = vdupq_laneq_s32(v41, 3);
      v44 = vdupq_laneq_s32(v42, 3);
      *result = vrev32q_s8(vsubq_f32(vminnmq_f32(vaddq_f32(v43, v44), _Q4), vaddq_f32(vsubq_f32(v43, v41), vsubq_f32(v44, v42))));
      v45 = &a3[a12];
      if (v45 >= a8)
      {
        v46 = -a7;
      }

      else
      {
        v46 = 0;
      }

      a3 = &v45[v46];
      result += a12;
    }

    result += a2;
    v47 = &a5[a4];
    if (v47 >= a9)
    {
      v48 = -(a6 * a4);
    }

    else
    {
      v48 = 0;
    }

    v49 = &v47[v48];
    v50 = a8 + 16 * v48 + 16 * a4;
    a3 += a4;
    if (a9)
    {
      a3 = v49;
      a8 = v50;
      a5 = v49;
    }

    _VF = __OFSUB__(a11--, 1);
  }

  while (!((a11 < 0) ^ _VF | (a11 == 0)));
  return result;
}

uint64_t RGBAf_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 64);
  v8 = *(result + 72);
  v9 = *(result + 88);
  v73 = *(result + 80);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v12 = *(result + 152) - 16;
  v13 = *(result + 144) - 1;
  v14 = v4 + (3 * *(result + 256) - 3) + ((*(result + 260) - 1) * v5) - 3;
  v72 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v8)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v22 | v72;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v8 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v18 | v72;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v7)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v7 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v72;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 16;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v73)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v73;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v72;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v4 + SHIDWORD(v25) * v5;
  v35 = 3 * (v29 >> 32);
  v36 = v34 + v35;
  v37 = *(result + 32);
  if (v14 >= v34 + v35)
  {
    v38 = (v34 + v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = (v38[1] << 16) | (*v38 << 24) | (v38[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v40 = *(v6 + (v30 | v23));
LABEL_50:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
  {
    case 1:
      v69 = (v36 + SBYTE1(v40) * v5);
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v37)
      {
        v69 = v37;
      }

      v70 = interpolate_8888_21865[v50];
      v71 = v50 + 1;
      v65 = v39 - ((v70 & v39) >> v71);
      v68 = (((v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF) & v70) >> v71;
LABEL_78:
      v39 = v65 + v68;
      break;
    case 2:
      v66 = (v36 + 3 * SBYTE2(v40));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v61 = (v66[1] << 16) | (*v66 << 24) | (v66[2] << 8) | 0xFF;
      v67 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v67];
      v64 = v67 + 1;
      v65 = v39 - ((v63 & v39) >> v64);
LABEL_72:
      v68 = (v61 & v63) >> v64;
      goto LABEL_78;
    case 3:
      v51 = 3 * SBYTE2(v40);
      v52 = (v36 + v51);
      if (v14 < v36 + v51)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v54 = v36 + SBYTE1(v40) * v5;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v5);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = (v55[1] << 16) | (*v55 << 24) | (v55[2] << 8) | 0xFF;
      v57 = (v54 + v51);
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v39 - ((v58 & v39) >> v59) + ((v56 & v58) >> v59);
      v53 = (v52[1] << 16) | (*v52 << 24) | (v52[2] << 8) | 0xFF;
      v61 = v53 - ((v58 & v53) >> v59) + ((((v57[1] << 16) | (*v57 << 24) | (v57[2] << 8) | 0xFF) & v58) >> v59);
      v62 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      goto LABEL_72;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  a2 += v10;
  v43 = v73 - a2;
  v44 = (v12 + 28);
  a3 += v11;
  v45 = v9 - a3;
  while (1)
  {
    *(v44 - 3) = _blt_float[HIBYTE(v39)];
    *(v44 - 2) = _blt_float[BYTE2(v39)];
    *(v44 - 1) = _blt_float[BYTE1(v39)];
    *v44 = _blt_float[v39];
    *(v13 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v45 | v43 | (a3 - v8) | (a2 - v7)) & 0x8000000000000000) != 0)
    {
      v13 += v41 + 1;
      v12 = (v44 - 3);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v46 = v4 + SHIDWORD(a3) * v5;
    v47 = 3 * (a2 >> 32);
    v36 = v46 + v47;
    v37 = *(result + 32);
    if (v14 >= v46 + v47)
    {
      v48 = (v46 + v47);
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = (v48[1] << 16) | (*v48 << 24) | (v48[2] << 8) | 0xFF;
    if (v6)
    {
      v40 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v13 += v41 + 1;
        v12 = (v44 - 3);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_50;
      }
    }

    ++v41;
    v43 -= v10;
    a2 += v10;
    v44 += 4;
    a3 += v11;
    v45 -= v11;
    LOBYTE(v42) = -1;
  }
}

uint64_t RGBAf_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v73 = *(result + 64);
  v74 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v13 = *(result + 32);
  v12 = *(result + 40);
  v14 = v13 + ((*(result + 260) - 1) * v4) + 4 * (*(result + 256) - 1) - 4;
  v72 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v22 | v72;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v18 | v72;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v73)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v73 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v72;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v74)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v74;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v72;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v13 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = bswap32(*v38);
  if (!v5)
  {
    goto LABEL_36;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_52:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
  {
    case 1:
      v69 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v37)
      {
        v69 = v37;
      }

      v70 = interpolate_8888_21865[v50];
      v71 = v50 + 1;
      v65 = v39 - ((v70 & v39) >> v71);
      v68 = (bswap32(*v69) & v70) >> v71;
LABEL_80:
      v39 = v65 + v68;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v61 = bswap32(*v66);
      v67 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v67];
      v64 = v67 + 1;
      v65 = v39 - ((v63 & v39) >> v64);
LABEL_74:
      v68 = (v61 & v63) >> v64;
      goto LABEL_80;
    case 3:
      v51 = HIWORD(v40) << 56;
      v52 = (v36 + (v51 >> 54));
      if (v14 < v52)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = bswap32(*v52);
      v54 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v39 - ((v58 & v39) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v62 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      goto LABEL_74;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  a2 += v8;
  v43 = v74 - a2;
  v44 = (v10 + 28);
  a3 += v9;
  v45 = v7 - a3;
  while (1)
  {
    *(v44 - 3) = _blt_float[HIBYTE(v39)];
    *(v44 - 2) = _blt_float[BYTE2(v39)];
    *(v44 - 1) = _blt_float[BYTE1(v39)];
    v46 = v39;
    if (!v12)
    {
      v46 = 255;
    }

    *v44 = _blt_float[v46];
    *(v11 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v45 | v43 | (a3 - v6) | (a2 - v73)) & 0x8000000000000000) != 0)
    {
      v11 += v41 + 1;
      v10 = (v44 - 3);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v36 = v47 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = bswap32(*v48);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v41 + 1;
        v10 = (v44 - 3);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_52;
      }
    }

    ++v41;
    v43 -= v8;
    a2 += v8;
    v44 += 4;
    a3 += v9;
    v45 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t RGBAf_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 64);
  v76 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v10 = *(result + 152) - 16;
  v11 = *(result + 144) - 1;
  v13 = *(result + 32);
  v12 = *(result + 40);
  v14 = v13 + ((*(result + 260) - 1) * v4) + 4 * (*(result + 256) - 1) - 4;
  v74 = *(result + 188);
  while (1)
  {
LABEL_2:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v22 | v74;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v18 | v74;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v75)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v75 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v74;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 16;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v76)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_26;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v76;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_34;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v74;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v34 = v13 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_36;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_52:
  v49 = v40 & 0xF;
  v50 = HIBYTE(v40) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v71)
      {
        v71 = v14;
      }

      if (v71 < v37)
      {
        v71 = v37;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v39 - ((v72 & v39) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_80:
      v39 = v65 + v70;
      break;
    case 2:
      v67 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v67)
      {
        v67 = v14;
      }

      if (v67 < v37)
      {
        v67 = v37;
      }

      v68 = (v40 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v39 - ((v69 & v39) >> v64);
      v66 = v69 & *v67;
LABEL_74:
      v70 = v66 >> v64;
      goto LABEL_80;
    case 3:
      v51 = HIWORD(v40) << 56;
      v52 = (v36 + (v51 >> 54));
      if (v14 < v52)
      {
        v52 = v14;
      }

      if (v52 < v37)
      {
        v52 = v37;
      }

      v53 = *v52;
      v54 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v54)
      {
        v55 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v55 = v14;
      }

      if (v55 < v37)
      {
        v55 = v37;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v14 < v57)
      {
        v57 = v14;
      }

      if (v57 < v37)
      {
        v57 = v37;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v39 - ((v58 & v39) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v40 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_74;
  }

LABEL_36:
  v41 = 0;
  v42 = v24 >> 22;
  a2 += v8;
  v43 = v76 - a2;
  v44 = (v10 + 28);
  a3 += v9;
  v45 = v7 - a3;
  while (1)
  {
    *(v44 - 3) = _blt_float[HIBYTE(v39)];
    *(v44 - 2) = _blt_float[BYTE2(v39)];
    *(v44 - 1) = _blt_float[BYTE1(v39)];
    v46 = v39;
    if (!v12)
    {
      v46 = 255;
    }

    *v44 = _blt_float[v46];
    *(v11 + 1 + v41) = v42;
    if (a4 - 1 == v41)
    {
      return result;
    }

    if (((v45 | v43 | (a3 - v6) | (a2 - v75)) & 0x8000000000000000) != 0)
    {
      v11 += v41 + 1;
      v10 = (v44 - 3);
      a4 += ~v41;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v36 = v47 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v14;
    }

    if (v48 < v37)
    {
      v48 = *(result + 32);
    }

    v39 = *v48;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v41 + 1;
        v10 = (v44 - 3);
        a4 += ~v41;
        v24 = -1;
        goto LABEL_52;
      }
    }

    ++v41;
    v43 -= v8;
    a2 += v8;
    v44 += 4;
    a3 += v9;
    v45 -= v9;
    LOBYTE(v42) = -1;
  }
}

uint64_t RGBAf_sample_ARGB32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * (*(result + 256) - 1) - 4;
  v71 = *(result + 188);
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v23 | v71;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v19 | v71;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v72;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v40 - ((v69 & v40) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_81:
      v40 = v66 + v67;
      break;
    case 2:
      v64 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v64)
      {
        v64 = v15;
      }

      if (v64 < v38)
      {
        v64 = v38;
      }

      v60 = bswap32(*v64);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v40;
LABEL_75:
      v65 = v61 + 1;
      v66 = v40 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = bswap32(*v52);
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v40 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v40 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v72 - a2;
  v45 = (v11 + 28);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 3) = _blt_float[BYTE2(v40)];
    *(v45 - 2) = _blt_float[BYTE1(v40)];
    *(v45 - 1) = _blt_float[v40];
    *v45 = _blt_float[(v40 | v14) >> 24];
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v46 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 3);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = bswap32(*v48);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 3);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    a2 += v9;
    v45 += 4;
    a3 += v10;
    v46 -= v10;
    LOBYTE(v43) = -1;
  }
}

uint64_t RGBAf_sample_argb32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v11 = *(result + 152) - 16;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * (*(result + 256) - 1) - 4;
  v74 = *(result + 188);
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v23 | v74;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v19 | v74;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 16;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = v25 >> 22;
  a2 += v9;
  v44 = v75 - a2;
  v45 = (v11 + 28);
  a3 += v10;
  v46 = v8 - a3;
  while (1)
  {
    *(v45 - 3) = _blt_float[BYTE2(v40)];
    *(v45 - 2) = _blt_float[BYTE1(v40)];
    *(v45 - 1) = _blt_float[v40];
    *v45 = _blt_float[(v40 | v14) >> 24];
    *(v12 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v46 | v44 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v42 + 1;
      v11 = (v45 - 3);
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v42 + 1;
        v11 = (v45 - 3);
        a4 += ~v42;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v44 -= v9;
    a2 += v9;
    v45 += 4;
    a3 += v10;
    v46 -= v10;
    LOBYTE(v43) = -1;
  }
}

void RGBAf_sample_RGB48(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 176);
  v62 = *(a1 + 80);
  v65 = *(a1 + 88);
  v71 = *(a1 + 112);
  v70 = *(a1 + 120);
  v7 = (*(a1 + 152) - 16);
  v66 = *(a1 + 144) - 1;
  v67 = *(a1 + 32);
  v68 = *(a1 + 24);
  v61 = *(a1 + 188);
  v69 = v67 + ((*(a1 + 260) - 1) * v68) + 2 * (3 * *(a1 + 256) - 3) - 6;
  v63 = *(a1 + 72);
  v64 = *(a1 + 64);
  while (1)
  {
    if (a3 >= v63)
    {
      if (a3 <= v65)
      {
        v18 = (a3 >> 22) & 0x3C0;
        v19 = 0x3FFFFFFF;
        HIDWORD(v20) = HIDWORD(a3);
        v11 = a4;
        v12 = v64;
      }

      else
      {
        v14 = *(a1 + 216);
        v15 = *(a1 + 224) + v65;
        v16 = v15 - a3 + (v14 >> 1);
        v11 = a4;
        v12 = v64;
        if (v16 < 1)
        {
          goto LABEL_33;
        }

        if (v16 >= v14)
        {
          LODWORD(v17) = 0x3FFFFFFF;
        }

        else
        {
          v17 = (*(a1 + 232) * v16) >> 32;
        }

        v19 = v17 | v61;
        v20 = v15 - 0x1000000;
        v18 = 448;
      }
    }

    else
    {
      v8 = *(a1 + 216);
      v9 = v63 - *(a1 + 224);
      v10 = a3 - v9 + (v8 >> 1);
      v11 = a4;
      v12 = v64;
      if (v10 < 1)
      {
        goto LABEL_33;
      }

      if (v10 >= v8)
      {
        LODWORD(v13) = 0x3FFFFFFF;
      }

      else
      {
        v13 = (*(a1 + 232) * v10) >> 32;
      }

      v19 = v13 | v61;
      v20 = v9 + 0x1000000;
      v18 = 512;
    }

    if (a2 >= v12)
    {
      if (a2 <= v62)
      {
        v25 = (a2 >> 26) & 0x3C;
        HIDWORD(v24) = HIDWORD(a2);
      }

      else
      {
        v26 = *(a1 + 192);
        v27 = *(a1 + 200) + v62;
        v28 = v27 - a2 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_33;
        }

        if (v28 < v26)
        {
          v19 = ((v19 >> 15) * (((*(a1 + 208) * v28) >> 32) >> 15)) | v61;
        }

        v24 = v27 - 0x1000000;
        v25 = 28;
      }
    }

    else
    {
      v21 = *(a1 + 192);
      v22 = v12 - *(a1 + 200);
      v23 = a2 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_33;
      }

      if (v23 < v21)
      {
        v19 = ((v19 >> 15) * (((*(a1 + 208) * v23) >> 32) >> 15)) | v61;
      }

      v24 = v22 + 0x1000000;
      v25 = 32;
    }

    if (v19 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v34 = v11 - 1;
    a2 += v71;
    a3 += v70;
    v7 += 4;
    *++v66 = 0;
LABEL_34:
    a4 = v34;
    if (!v34)
    {
      return;
    }
  }

  v29 = v67 + SHIDWORD(v20) * v68 + 6 * SHIDWORD(v24);
  v30 = *(a1 + 32);
  v31 = v69;
  if (v69 >= v29)
  {
    v31 = v29;
  }

  if (v31 < v30)
  {
    v31 = *(a1 + 32);
  }

  v32 = (bswap32(*v31) >> 16) | ((bswap32(v31[1]) >> 16) << 16) | ((bswap32(v31[2]) >> 16) << 32) | 0xFFFF000000000000;
  if (v6)
  {
    v33 = *(v6 + (v25 | v18));
LABEL_48:
    v41 = v33 & 0xF;
    v42 = HIBYTE(v33) & 3;
    switch(v41)
    {
      case 1:
        v59 = (v29 + SBYTE1(v33) * v68);
        if (v69 < v59)
        {
          v59 = v69;
        }

        if (v59 >= v30)
        {
          v30 = v59;
        }

        v32 = v32 - ((interpolate_16161616_21862[v42] & v32) >> (v42 + 1)) + ((((bswap32(*v30) >> 16) | ((bswap32(v30[1]) >> 16) << 16) | ((bswap32(v30[2]) >> 16) << 32) | 0xFFFF000000000000) & interpolate_16161616_21862[v42]) >> (v42 + 1));
        break;
      case 2:
        v57 = (v29 + 6 * SBYTE2(v33));
        if (v69 < v57)
        {
          v57 = v69;
        }

        if (v57 >= v30)
        {
          v30 = v57;
        }

        v52 = (bswap32(*v30) >> 16) | ((bswap32(v30[1]) >> 16) << 16) | ((bswap32(v30[2]) >> 16) << 32) | 0xFFFF000000000000;
        v58 = (v33 >> 28) & 3;
        v54 = interpolate_16161616_21862[v58];
        v55 = v58 + 1;
        v56 = v32 - ((v54 & v32) >> v55);
LABEL_70:
        v32 = v56 + ((v52 & v54) >> v55);
        break;
      case 3:
        v43 = (v29 + 6 * SBYTE2(v33));
        if (v69 < v43)
        {
          v43 = v69;
        }

        if (v43 < v30)
        {
          v43 = v30;
        }

        v44 = (bswap32(*v43) >> 16) | ((bswap32(v43[1]) >> 16) << 16) | ((bswap32(v43[2]) >> 16) << 32) | 0xFFFF000000000000;
        v45 = (v29 + SBYTE1(v33) * v68);
        if (v69 >= v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v69;
        }

        if (v46 < v30)
        {
          v46 = v30;
        }

        v47 = (bswap32(*v46) >> 16) | ((bswap32(v46[1]) >> 16) << 16) | ((bswap32(v46[2]) >> 16) << 32) | 0xFFFF000000000000;
        v48 = &v45[3 * SBYTE2(v33)];
        if (v69 < v48)
        {
          v48 = v69;
        }

        if (v48 >= v30)
        {
          v30 = v48;
        }

        v49 = interpolate_16161616_21862[v42];
        v50 = v42 + 1;
        v51 = v32 - ((v49 & v32) >> v50) + ((v47 & v49) >> v50);
        v52 = v44 - ((v49 & v44) >> v50) + ((((bswap32(*v30) >> 16) | ((bswap32(v30[1]) >> 16) << 16) | ((bswap32(v30[2]) >> 16) << 32) | 0xFFFF000000000000) & v49) >> v50);
        v53 = (v33 >> 28) & 3;
        v54 = interpolate_16161616_21862[v53];
        v55 = v53 + 1;
        v56 = v51 - ((v51 & v54) >> v55);
        goto LABEL_70;
    }
  }

  v35 = 0;
  v36 = v19 >> 22;
  v7 += 4;
  v60 = v11;
  v37 = v11 - 1;
  a3 += v70;
  v38 = v65 - a3;
  a2 += v71;
  v39 = v62 - a2;
  while (1)
  {
    RGBA64(v7, v32);
    *(v66 + 1 + v35) = v36;
    if (v37 == v35)
    {
      break;
    }

    if (((v38 | v39 | (a3 - v63) | (a2 - v64)) & 0x8000000000000000) != 0)
    {
      v66 += v35 + 1;
      v34 = ~v35 + v60;
      goto LABEL_34;
    }

    v29 = v67 + SHIDWORD(a3) * v68 + 6 * SHIDWORD(a2);
    v30 = *(a1 + 32);
    v40 = v69;
    if (v69 >= v29)
    {
      v40 = (v67 + SHIDWORD(a3) * v68 + 6 * SHIDWORD(a2));
    }

    if (v40 < v30)
    {
      v40 = *(a1 + 32);
    }

    v32 = (bswap32(*v40) >> 16) | ((bswap32(v40[1]) >> 16) << 16) | ((bswap32(v40[2]) >> 16) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v33 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v33 & 0xF) != 0)
      {
        v66 += v35 + 1;
        v11 = ~v35 + v60;
        v19 = -1;
        goto LABEL_48;
      }
    }

    ++v35;
    v7 += 4;
    a3 += v70;
    v38 -= v70;
    a2 += v71;
    v39 -= v71;
    LOBYTE(v36) = -1;
  }
}

float RGBA64(float *a1, unint64_t a2)
{
  *a1 = *&_blt_float[a2 + 256] + *&_blt_float[BYTE1(a2) + 512];
  a1[1] = *&_blt_float[BYTE2(a2) + 256] + *&_blt_float[BYTE3(a2) | 0x200];
  a1[2] = *&_blt_float[BYTE4(a2) + 256] + *&_blt_float[BYTE5(a2) + 512];
  result = *&_blt_float[BYTE6(a2) + 256] + *&_blt_float[HIBYTE(a2) + 512];
  a1[3] = result;
  return result;
}

void RGBAf_sample_rgb48(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 176);
  v62 = *(a1 + 80);
  v65 = *(a1 + 88);
  v71 = *(a1 + 112);
  v70 = *(a1 + 120);
  v7 = (*(a1 + 152) - 16);
  v66 = *(a1 + 144) - 1;
  v67 = *(a1 + 32);
  v68 = *(a1 + 24);
  v61 = *(a1 + 188);
  v69 = v67 + ((*(a1 + 260) - 1) * v68) + 2 * (3 * *(a1 + 256) - 3) - 6;
  v63 = *(a1 + 72);
  v64 = *(a1 + 64);
  while (1)
  {
    if (a3 >= v63)
    {
      if (a3 <= v65)
      {
        v18 = (a3 >> 22) & 0x3C0;
        v19 = 0x3FFFFFFF;
        HIDWORD(v20) = HIDWORD(a3);
        v11 = a4;
        v12 = v64;
      }

      else
      {
        v14 = *(a1 + 216);
        v15 = *(a1 + 224) + v65;
        v16 = v15 - a3 + (v14 >> 1);
        v11 = a4;
        v12 = v64;
        if (v16 < 1)
        {
          goto LABEL_33;
        }

        if (v16 >= v14)
        {
          LODWORD(v17) = 0x3FFFFFFF;
        }

        else
        {
          v17 = (*(a1 + 232) * v16) >> 32;
        }

        v19 = v17 | v61;
        v20 = v15 - 0x1000000;
        v18 = 448;
      }
    }

    else
    {
      v8 = *(a1 + 216);
      v9 = v63 - *(a1 + 224);
      v10 = a3 - v9 + (v8 >> 1);
      v11 = a4;
      v12 = v64;
      if (v10 < 1)
      {
        goto LABEL_33;
      }

      if (v10 >= v8)
      {
        LODWORD(v13) = 0x3FFFFFFF;
      }

      else
      {
        v13 = (*(a1 + 232) * v10) >> 32;
      }

      v19 = v13 | v61;
      v20 = v9 + 0x1000000;
      v18 = 512;
    }

    if (a2 >= v12)
    {
      if (a2 <= v62)
      {
        v25 = (a2 >> 26) & 0x3C;
        HIDWORD(v24) = HIDWORD(a2);
      }

      else
      {
        v26 = *(a1 + 192);
        v27 = *(a1 + 200) + v62;
        v28 = v27 - a2 + (v26 >> 1);
        if (v28 < 1)
        {
          goto LABEL_33;
        }

        if (v28 < v26)
        {
          v19 = ((v19 >> 15) * (((*(a1 + 208) * v28) >> 32) >> 15)) | v61;
        }

        v24 = v27 - 0x1000000;
        v25 = 28;
      }
    }

    else
    {
      v21 = *(a1 + 192);
      v22 = v12 - *(a1 + 200);
      v23 = a2 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_33;
      }

      if (v23 < v21)
      {
        v19 = ((v19 >> 15) * (((*(a1 + 208) * v23) >> 32) >> 15)) | v61;
      }

      v24 = v22 + 0x1000000;
      v25 = 32;
    }

    if (v19 >= 0x400000)
    {
      break;
    }

LABEL_33:
    v34 = v11 - 1;
    a2 += v71;
    a3 += v70;
    v7 += 4;
    *++v66 = 0;
LABEL_34:
    a4 = v34;
    if (!v34)
    {
      return;
    }
  }

  v29 = v67 + SHIDWORD(v20) * v68 + 6 * SHIDWORD(v24);
  v30 = *(a1 + 32);
  v31 = v69;
  if (v69 >= v29)
  {
    v31 = v29;
  }

  if (v31 < v30)
  {
    v31 = *(a1 + 32);
  }

  v32 = *v31 | (*(v31 + 2) << 32) | 0xFFFF000000000000;
  if (v6)
  {
    v33 = *(v6 + (v25 | v18));
LABEL_48:
    v41 = v33 & 0xF;
    v42 = HIBYTE(v33) & 3;
    switch(v41)
    {
      case 1:
        v59 = (v29 + SBYTE1(v33) * v68);
        if (v69 < v59)
        {
          v59 = v69;
        }

        if (v59 >= v30)
        {
          v30 = v59;
        }

        v32 = v32 - ((interpolate_16161616_21862[v42] & v32) >> (v42 + 1)) + (((*v30 | (*(v30 + 2) << 32) | 0xFFFF000000000000) & interpolate_16161616_21862[v42]) >> (v42 + 1));
        break;
      case 2:
        v57 = (v29 + 6 * SBYTE2(v33));
        if (v69 < v57)
        {
          v57 = v69;
        }

        if (v57 >= v30)
        {
          v30 = v57;
        }

        v52 = *v30 | (*(v30 + 2) << 32) | 0xFFFF000000000000;
        v58 = (v33 >> 28) & 3;
        v54 = interpolate_16161616_21862[v58];
        v55 = v58 + 1;
        v56 = v32 - ((v54 & v32) >> v55);
LABEL_70:
        v32 = v56 + ((v52 & v54) >> v55);
        break;
      case 3:
        v43 = (v29 + 6 * SBYTE2(v33));
        if (v69 < v43)
        {
          v43 = v69;
        }

        if (v43 < v30)
        {
          v43 = v30;
        }

        v44 = *v43 | (*(v43 + 2) << 32) | 0xFFFF000000000000;
        v45 = (v29 + SBYTE1(v33) * v68);
        if (v69 >= v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v69;
        }

        if (v46 < v30)
        {
          v46 = v30;
        }

        v47 = *v46 | (*(v46 + 2) << 32) | 0xFFFF000000000000;
        v48 = (v45 + 6 * SBYTE2(v33));
        if (v69 < v48)
        {
          v48 = v69;
        }

        if (v48 >= v30)
        {
          v30 = v48;
        }

        v49 = interpolate_16161616_21862[v42];
        v50 = v42 + 1;
        v51 = v32 - ((v49 & v32) >> v50) + ((v47 & v49) >> v50);
        v52 = v44 - ((v49 & v44) >> v50) + (((*v30 | (*(v30 + 2) << 32) | 0xFFFF000000000000) & v49) >> v50);
        v53 = (v33 >> 28) & 3;
        v54 = interpolate_16161616_21862[v53];
        v55 = v53 + 1;
        v56 = v51 - ((v51 & v54) >> v55);
        goto LABEL_70;
    }
  }

  v35 = 0;
  v36 = v19 >> 22;
  v7 += 4;
  v60 = v11;
  v37 = v11 - 1;
  a3 += v70;
  v38 = v65 - a3;
  a2 += v71;
  v39 = v62 - a2;
  while (1)
  {
    RGBA64(v7, v32);
    *(v66 + 1 + v35) = v36;
    if (v37 == v35)
    {
      break;
    }

    if (((v38 | v39 | (a3 - v63) | (a2 - v64)) & 0x8000000000000000) != 0)
    {
      v66 += v35 + 1;
      v34 = ~v35 + v60;
      goto LABEL_34;
    }

    v29 = v67 + SHIDWORD(a3) * v68 + 6 * SHIDWORD(a2);
    v30 = *(a1 + 32);
    v40 = v69;
    if (v69 >= v29)
    {
      v40 = (v67 + SHIDWORD(a3) * v68 + 6 * SHIDWORD(a2));
    }

    if (v40 < v30)
    {
      v40 = *(a1 + 32);
    }

    v32 = *v40 | (*(v40 + 2) << 32) | 0xFFFF000000000000;
    if (v6)
    {
      v33 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v33 & 0xF) != 0)
      {
        v66 += v35 + 1;
        v11 = ~v35 + v60;
        v19 = -1;
        goto LABEL_48;
      }
    }

    ++v35;
    v7 += 4;
    a3 += v70;
    v38 -= v70;
    a2 += v71;
    v39 -= v71;
    LOBYTE(v36) = -1;
  }
}

void RGBAf_sample_RGBA64(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 176);
  v66 = *(a1 + 80);
  v67 = *(a1 + 88);
  v76 = *(a1 + 112);
  v75 = *(a1 + 120);
  v65 = *(a1 + 188);
  v7 = (*(a1 + 152) - 16);
  v70 = *(a1 + 144) - 1;
  v8 = 0xFFFF000000000000;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  v71 = v8;
  v72 = *(a1 + 32);
  v73 = *(a1 + 24);
  v74 = v72 + ((*(a1 + 260) - 1) * v73) + 8 * (*(a1 + 256) - 1) - 8;
  v68 = *(a1 + 72);
  v69 = *(a1 + 64);
  while (1)
  {
    if (a3 >= v68)
    {
      if (a3 <= v67)
      {
        v19 = (a3 >> 22) & 0x3C0;
        v20 = 0x3FFFFFFF;
        HIDWORD(v21) = HIDWORD(a3);
        v12 = a4;
        v13 = v69;
      }

      else
      {
        v15 = *(a1 + 216);
        v16 = *(a1 + 224) + v67;
        v17 = v16 - a3 + (v15 >> 1);
        v12 = a4;
        v13 = v69;
        if (v17 < 1)
        {
          goto LABEL_35;
        }

        if (v17 >= v15)
        {
          LODWORD(v18) = 0x3FFFFFFF;
        }

        else
        {
          v18 = (*(a1 + 232) * v17) >> 32;
        }

        v20 = v18 | v65;
        v21 = v16 - 0x1000000;
        v19 = 448;
      }
    }

    else
    {
      v9 = *(a1 + 216);
      v10 = v68 - *(a1 + 224);
      v11 = a3 - v10 + (v9 >> 1);
      v12 = a4;
      v13 = v69;
      if (v11 < 1)
      {
        goto LABEL_35;
      }

      if (v11 >= v9)
      {
        LODWORD(v14) = 0x3FFFFFFF;
      }

      else
      {
        v14 = (*(a1 + 232) * v11) >> 32;
      }

      v20 = v14 | v65;
      v21 = v10 + 0x1000000;
      v19 = 512;
    }

    if (a2 >= v13)
    {
      if (a2 <= v66)
      {
        v26 = (a2 >> 26) & 0x3C;
        v25 = a2;
      }

      else
      {
        v27 = *(a1 + 192);
        v28 = *(a1 + 200) + v66;
        v29 = v28 - a2 + (v27 >> 1);
        if (v29 < 1)
        {
          goto LABEL_35;
        }

        if (v29 < v27)
        {
          v20 = ((v20 >> 15) * (((*(a1 + 208) * v29) >> 32) >> 15)) | v65;
        }

        v25 = v28 - 0x1000000;
        v26 = 28;
      }
    }

    else
    {
      v22 = *(a1 + 192);
      v23 = v13 - *(a1 + 200);
      v24 = a2 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_35;
      }

      if (v24 < v22)
      {
        v20 = ((v20 >> 15) * (((*(a1 + 208) * v24) >> 32) >> 15)) | v65;
      }

      v25 = v23 + 0x1000000;
      v26 = 32;
    }

    if (v20 >= 0x400000)
    {
      break;
    }

LABEL_35:
    v35 = v12 - 1;
    a2 += v76;
    a3 += v75;
    v7 += 4;
    *++v70 = 0;
LABEL_36:
    a4 = v35;
    if (!v35)
    {
      return;
    }
  }

  v30 = v72 + SHIDWORD(v21) * v73 + 8 * (v25 >> 32);
  v31 = *(a1 + 32);
  v32 = v74;
  if (v74 >= v30)
  {
    v32 = v30;
  }

  if (v32 < v31)
  {
    v32 = *(a1 + 32);
  }

  v33 = ((bswap32(v32[2]) >> 16) << 32) | ((bswap32(v32[3]) >> 16) << 48) | bswap32(v32[1]) & 0xFFFF0000 | (bswap32(*v32) >> 16);
  if (!v6)
  {
    goto LABEL_38;
  }

  v34 = *(v6 + (v26 | v19));
LABEL_50:
  v42 = v34 & 0xF;
  v43 = HIBYTE(v34) & 3;
  switch(v42)
  {
    case 1:
      v61 = (v30 + SBYTE1(v34) * v73);
      if (v74 < v61)
      {
        v61 = v74;
      }

      if (v61 >= v31)
      {
        v31 = v61;
      }

      v62 = interpolate_16161616_21862[v43];
      v63 = v43 + 1;
      v59 = v33 - ((v62 & v33) >> v63);
      v60 = ((((bswap32(v31[2]) >> 16) << 32) | ((bswap32(v31[3]) >> 16) << 48) | bswap32(v31[1]) & 0xFFFF0000 | (bswap32(*v31) >> 16)) & v62) >> v63;
LABEL_78:
      v33 = v59 + v60;
      break;
    case 2:
      v57 = (v30 + ((HIWORD(v34) << 56) >> 53));
      if (v74 < v57)
      {
        v57 = v74;
      }

      if (v57 >= v31)
      {
        v31 = v57;
      }

      v53 = ((bswap32(v31[2]) >> 16) << 32) | ((bswap32(v31[3]) >> 16) << 48) | bswap32(v31[1]) & 0xFFFF0000 | (bswap32(*v31) >> 16);
      v54 = (v34 >> 28) & 3;
      v55 = interpolate_16161616_21862[v54];
      v56 = v55 & v33;
LABEL_72:
      v58 = v54 + 1;
      v59 = v33 - (v56 >> v58);
      v60 = (v53 & v55) >> v58;
      goto LABEL_78;
    case 3:
      v44 = HIWORD(v34) << 56;
      v45 = (v30 + (v44 >> 53));
      if (v74 < v45)
      {
        v45 = v74;
      }

      if (v45 < v31)
      {
        v45 = v31;
      }

      v46 = ((bswap32(v45[2]) >> 16) << 32) | ((bswap32(v45[3]) >> 16) << 48) | bswap32(v45[1]) & 0xFFFF0000 | (bswap32(*v45) >> 16);
      v47 = (v30 + SBYTE1(v34) * v73);
      if (v74 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v74;
      }

      if (v48 < v31)
      {
        v48 = v31;
      }

      v49 = ((bswap32(v48[2]) >> 16) << 32) | ((bswap32(v48[3]) >> 16) << 48) | bswap32(v48[1]) & 0xFFFF0000 | (bswap32(*v48) >> 16);
      v50 = (v47 + (v44 >> 53));
      if (v74 < v50)
      {
        v50 = v74;
      }

      if (v50 >= v31)
      {
        v31 = v50;
      }

      v51 = interpolate_16161616_21862[v43];
      v52 = v43 + 1;
      v33 = v33 - ((v51 & v33) >> v52) + ((v49 & v51) >> v52);
      v53 = v46 - ((v51 & v46) >> v52) + (((((bswap32(v31[2]) >> 16) << 32) | ((bswap32(v31[3]) >> 16) << 48) | bswap32(v31[1]) & 0xFFFF0000 | (bswap32(*v31) >> 16)) & v51) >> v52);
      v54 = (v34 >> 28) & 3;
      v55 = interpolate_16161616_21862[v54];
      v56 = v33 & v55;
      goto LABEL_72;
  }

LABEL_38:
  v36 = 0;
  v37 = v20 >> 22;
  v7 += 4;
  v64 = v12;
  v38 = v12 - 1;
  a3 += v75;
  v39 = v67 - a3;
  a2 += v76;
  v40 = v66 - a2;
  while (1)
  {
    RGBA64(v7, v33 | v71);
    *(v70 + 1 + v36) = v37;
    if (v38 == v36)
    {
      break;
    }

    if (((v39 | v40 | (a3 - v68) | (a2 - v69)) & 0x8000000000000000) != 0)
    {
      v70 += v36 + 1;
      v35 = ~v36 + v64;
      goto LABEL_36;
    }

    v30 = v72 + SHIDWORD(a3) * v73 + 8 * (a2 >> 32);
    v31 = *(a1 + 32);
    v41 = v74;
    if (v74 >= v30)
    {
      v41 = (v72 + SHIDWORD(a3) * v73 + 8 * (a2 >> 32));
    }

    if (v41 < v31)
    {
      v41 = *(a1 + 32);
    }

    v33 = ((bswap32(v41[2]) >> 16) << 32) | ((bswap32(v41[3]) >> 16) << 48) | bswap32(v41[1]) & 0xFFFF0000 | (bswap32(*v41) >> 16);
    if (v6)
    {
      v34 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v34 & 0xF) != 0)
      {
        v70 += v36 + 1;
        v12 = ~v36 + v64;
        v20 = -1;
        goto LABEL_50;
      }
    }

    ++v36;
    v7 += 4;
    a3 += v75;
    v39 -= v75;
    a2 += v76;
    v40 -= v76;
    LOBYTE(v37) = -1;
  }
}

void RGBAf_sample_rgba64(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v6 = *(a1 + 176);
  v69 = *(a1 + 80);
  v70 = *(a1 + 88);
  v79 = *(a1 + 112);
  v78 = *(a1 + 120);
  v68 = *(a1 + 188);
  v7 = (*(a1 + 152) - 16);
  v73 = *(a1 + 144) - 1;
  v8 = 0xFFFF000000000000;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  v74 = v8;
  v75 = *(a1 + 32);
  v76 = *(a1 + 24);
  v77 = v75 + ((*(a1 + 260) - 1) * v76) + 8 * (*(a1 + 256) - 1) - 8;
  v71 = *(a1 + 72);
  v72 = *(a1 + 64);
  while (1)
  {
    if (a3 >= v71)
    {
      if (a3 <= v70)
      {
        v19 = (a3 >> 22) & 0x3C0;
        v20 = 0x3FFFFFFF;
        HIDWORD(v21) = HIDWORD(a3);
        v12 = a4;
        v13 = v72;
      }

      else
      {
        v15 = *(a1 + 216);
        v16 = *(a1 + 224) + v70;
        v17 = v16 - a3 + (v15 >> 1);
        v12 = a4;
        v13 = v72;
        if (v17 < 1)
        {
          goto LABEL_35;
        }

        if (v17 >= v15)
        {
          LODWORD(v18) = 0x3FFFFFFF;
        }

        else
        {
          v18 = (*(a1 + 232) * v17) >> 32;
        }

        v20 = v18 | v68;
        v21 = v16 - 0x1000000;
        v19 = 448;
      }
    }

    else
    {
      v9 = *(a1 + 216);
      v10 = v71 - *(a1 + 224);
      v11 = a3 - v10 + (v9 >> 1);
      v12 = a4;
      v13 = v72;
      if (v11 < 1)
      {
        goto LABEL_35;
      }

      if (v11 >= v9)
      {
        LODWORD(v14) = 0x3FFFFFFF;
      }

      else
      {
        v14 = (*(a1 + 232) * v11) >> 32;
      }

      v20 = v14 | v68;
      v21 = v10 + 0x1000000;
      v19 = 512;
    }

    if (a2 >= v13)
    {
      if (a2 <= v69)
      {
        v26 = (a2 >> 26) & 0x3C;
        v25 = a2;
      }

      else
      {
        v27 = *(a1 + 192);
        v28 = *(a1 + 200) + v69;
        v29 = v28 - a2 + (v27 >> 1);
        if (v29 < 1)
        {
          goto LABEL_35;
        }

        if (v29 < v27)
        {
          v20 = ((v20 >> 15) * (((*(a1 + 208) * v29) >> 32) >> 15)) | v68;
        }

        v25 = v28 - 0x1000000;
        v26 = 28;
      }
    }

    else
    {
      v22 = *(a1 + 192);
      v23 = v13 - *(a1 + 200);
      v24 = a2 - v23 + (v22 >> 1);
      if (v24 < 1)
      {
        goto LABEL_35;
      }

      if (v24 < v22)
      {
        v20 = ((v20 >> 15) * (((*(a1 + 208) * v24) >> 32) >> 15)) | v68;
      }

      v25 = v23 + 0x1000000;
      v26 = 32;
    }

    if (v20 >= 0x400000)
    {
      break;
    }

LABEL_35:
    v35 = v12 - 1;
    a2 += v79;
    a3 += v78;
    v7 += 4;
    *++v73 = 0;
LABEL_36:
    a4 = v35;
    if (!v35)
    {
      return;
    }
  }

  v30 = v75 + SHIDWORD(v21) * v76 + 8 * (v25 >> 32);
  v31 = *(a1 + 32);
  v32 = v77;
  if (v77 >= v30)
  {
    v32 = v30;
  }

  if (v32 < v31)
  {
    v32 = *(a1 + 32);
  }

  v33 = *v32;
  if (!v6)
  {
    goto LABEL_38;
  }

  v34 = *(v6 + (v26 | v19));
LABEL_50:
  v42 = v34 & 0xF;
  v43 = HIBYTE(v34) & 3;
  switch(v42)
  {
    case 1:
      v64 = (v30 + SBYTE1(v34) * v76);
      if (v77 < v64)
      {
        v64 = v77;
      }

      if (v64 >= v31)
      {
        v31 = v64;
      }

      v65 = interpolate_16161616_21862[v43];
      v66 = v43 + 1;
      v58 = v33 - ((v65 & v33) >> v66);
      v63 = (v65 & *v31) >> v66;
LABEL_78:
      v33 = v58 + v63;
      break;
    case 2:
      v60 = (v30 + ((HIWORD(v34) << 56) >> 53));
      if (v77 < v60)
      {
        v60 = v77;
      }

      if (v60 >= v31)
      {
        v31 = v60;
      }

      v61 = (v34 >> 28) & 3;
      v62 = interpolate_16161616_21862[v61];
      v57 = v61 + 1;
      v58 = v33 - ((v62 & v33) >> v57);
      v59 = v62 & *v31;
LABEL_72:
      v63 = v59 >> v57;
      goto LABEL_78;
    case 3:
      v44 = HIWORD(v34) << 56;
      v45 = (v30 + (v44 >> 53));
      if (v77 < v45)
      {
        v45 = v77;
      }

      if (v45 < v31)
      {
        v45 = v31;
      }

      v46 = *v45;
      v47 = (v30 + SBYTE1(v34) * v76);
      if (v77 >= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v77;
      }

      if (v48 < v31)
      {
        v48 = v31;
      }

      v49 = *v48;
      v50 = (v47 + (v44 >> 53));
      if (v77 < v50)
      {
        v50 = v77;
      }

      if (v50 >= v31)
      {
        v31 = v50;
      }

      v51 = interpolate_16161616_21862[v43];
      v52 = v43 + 1;
      v53 = v33 - ((v51 & v33) >> v52) + ((v51 & v49) >> v52);
      v54 = v46 - ((v51 & v46) >> v52) + ((v51 & *v31) >> v52);
      v55 = (v34 >> 28) & 3;
      v56 = interpolate_16161616_21862[v55];
      v57 = v55 + 1;
      v58 = v53 - ((v53 & v56) >> v57);
      v59 = v54 & v56;
      goto LABEL_72;
  }

LABEL_38:
  v36 = 0;
  v37 = v20 >> 22;
  v7 += 4;
  v67 = v12;
  v38 = v12 - 1;
  a3 += v78;
  v39 = v70 - a3;
  a2 += v79;
  v40 = v69 - a2;
  while (1)
  {
    RGBA64(v7, v33 | v74);
    *(v73 + 1 + v36) = v37;
    if (v38 == v36)
    {
      break;
    }

    if (((v39 | v40 | (a3 - v71) | (a2 - v72)) & 0x8000000000000000) != 0)
    {
      v73 += v36 + 1;
      v35 = ~v36 + v67;
      goto LABEL_36;
    }

    v30 = v75 + SHIDWORD(a3) * v76 + 8 * (a2 >> 32);
    v31 = *(a1 + 32);
    v41 = v77;
    if (v77 >= v30)
    {
      v41 = (v75 + SHIDWORD(a3) * v76 + 8 * (a2 >> 32));
    }

    if (v41 < v31)
    {
      v41 = *(a1 + 32);
    }

    v33 = *v41;
    if (v6)
    {
      v34 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v34 & 0xF) != 0)
      {
        v73 += v36 + 1;
        v12 = ~v36 + v67;
        v20 = -1;
        goto LABEL_50;
      }
    }

    ++v36;
    v7 += 4;
    a3 += v78;
    v39 -= v78;
    a2 += v79;
    v40 -= v79;
    LOBYTE(v37) = -1;
  }
}