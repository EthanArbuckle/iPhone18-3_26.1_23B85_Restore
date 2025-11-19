BOOL __GetColorspaceTransformsWithTransformWithCGColorConversionInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(a2 + 52);
  v8 = malloc_type_calloc(1uLL, 60 * a4 + 120, 0x1060040998D011BuLL);
  v9 = v8;
  if (!v8)
  {
    return v9 != 0;
  }

  v8[32] = v5;
  v8[33] = v5;
  *v8 = &CreateTRCStep_trcs_vtbl;
  *(v8 + 1) = 0;
  v8[35] = 0;
  *(v8 + 38) = 0;
  *(v8 + 12) = v5;
  *(v8 + 13) = 0;
  v10 = (v8 + 52);
  *(v8 + 29) = 1;
  if (v5 >= 1)
  {
    v41 = v6;
    v11 = 0;
    for (i = 0; i != v5; ++i)
    {
      v14 = *(a5 + 8 * i);
      v15 = &v9[v11];
      if (v14 == -1)
      {
        v22 = 0;
        v21 = 0;
        *(v15 + 30) = 0;
        *(v15 + 31) = 1065353216;
        *(v15 + 17) = 0;
        *(v15 + 18) = 0;
        *(v15 + 16) = 0;
        *(v15 + 38) = 0;
        v19 = 7;
        *(v15 + 44) = 0;
      }

      else
      {
        v16 = *(v7 + 8 * v14);
        CGColorTRCGetFunction();
        *(v15 + 38) = v45;
        *(v15 + 136) = v44;
        *(v15 + 120) = v43;
        v17 = *(v7 + 8 * v14);
        *(v15 + 44) = CGColorFunctionGetProperties();
        v18 = *(v7 + 8 * v14);
        v19 = CGColorTRCGetGammaID();
        v20 = *(v15 + 30);
        v21 = (v20 - 1) < 4;
        v22 = (v20 - 6) < 4;
      }

      v23 = &v9[v11];
      *&v9[v11 + 156] = v19;
      *&v9[4 * i + 52] = v21;
      *(v9 + 11) = v22;
      v24 = *(v7 + 8 * v14);
      CGColorFunctionGetInputRange();
      *(v23 + 40) = v25;
      *(v23 + 41) = v26;
      v27 = *(v7 + 8 * v14);
      CGColorFunctionGetOutputRange();
      *(v23 + 42) = v28;
      *(v23 + 43) = v29;
      if (*(v15 + 30) == 5)
      {
        v30 = *(v23 + 132);
        v31 = 4 * *(v23 + 124);
        v32 = vImage_malloc(v31);
        *(v23 + 132) = v32;
        if (v32)
        {
          memcpy(v32, v30, v31);
        }
      }

      v13 = *(v9 + 19) | (1 << i);
      *(v9 + 19) = v13;
      *(v9 + 20) = v13;
      if (*(v15 + 30) || *(v23 + 39) != 7)
      {
        *(v9 + 29) = 0;
      }

      v11 += 60;
    }

    v33 = v9 + 52;
    v34 = v5;
    v6 = v41;
    while (*v33++)
    {
      if (!--v34)
      {
        v36 = 1;
        goto LABEL_20;
      }
    }

    v36 = 0;
    do
    {
LABEL_20:
      *v10++ = v36;
      --v5;
    }

    while (v5);
  }

  v37 = *(v6 + 16);
  if (v37)
  {
    *(v9 + 1) = v37;
    *(v6 + 16) = v9;
    v38 = *v9;
    if (!*v9)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (*(v38 + 144) == DoConvert_MatrixStep)
    {
      return v9 != 0;
    }

    goto LABEL_26;
  }

  *(v6 + 16) = v9;
  *(v6 + 24) = v9;
  v38 = *v9;
  if (*v9)
  {
    goto LABEL_25;
  }

LABEL_26:
  v39 = *(v6 + 34);
  if (v39 <= v9[33])
  {
    LOBYTE(v39) = v9[33];
  }

  *(v6 + 34) = v39;
  return v9 != 0;
}

uint64_t *GetColorspaceTransformsWithTransformWithCGColorConversionInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x106004075100850uLL);
  if (v6)
  {
    if (CGColorConversionInfoIterateFunctionsWithCallbacks())
    {
      v11 = v6[2];
      if (v11)
      {
        v12 = *(v11 + 8);
        if (v12)
        {
          v13 = v6[2];
          do
          {
            v14 = v13;
            v13 = v12;
            while (**v14 == 6 && **v13 == 6)
            {
              v7.i32[0] = *(v14 + 48);
              v8.i32[0] = *(v14 + 52);
              v7.i32[1] = *(v14 + 64);
              v7.i32[2] = *(v14 + 80);
              v8.i32[1] = *(v14 + 68);
              v8.i32[2] = *(v14 + 84);
              v9.i32[0] = *(v14 + 56);
              v10.i32[0] = *(v14 + 60);
              v9.i32[1] = *(v14 + 72);
              v9.i32[2] = *(v14 + 88);
              v10.i32[1] = *(v14 + 76);
              v10.i32[2] = *(v14 + 92);
              v15 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v13 + 64)), v7, *(v13 + 48)), v9, *(v13 + 80));
              v16 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v13 + 68)), v7, *(v13 + 52)), v9, *(v13 + 84));
              v17 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v13 + 72)), v7, *(v13 + 56)), v9, *(v13 + 88));
              v18 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v13 + 76)), v7, *(v13 + 60)), v9, *(v13 + 92)), v10);
              *&v19 = vzip1q_s32(v15, v16).u64[0];
              v20 = vzip1q_s32(v17, v18);
              *(&v19 + 1) = vextq_s8(*&v17, v20, 8uLL).i64[1];
              *&v21 = vtrn2q_s32(v15, v16).u64[0];
              *(&v21 + 1) = v20.i64[1];
              *(v14 + 48) = v19;
              *(v14 + 64) = v21;
              *&v19 = vzip2q_s32(v15, v16).u64[0];
              *(&v19 + 1) = __PAIR64__(v18.u32[2], v17.u32[2]);
              v15.i32[3] = 0;
              v16.i32[3] = 0;
              v17.i32[3] = 0;
              v18.i32[3] = 0;
              *(v14 + 80) = v19;
              v22 = vceqzq_f32(v15);
              v23 = vmvnq_s8(v22);
              v24 = vmvnq_s8(vceqzq_f32(v16));
              v25 = vceqzq_f32(v17);
              v26 = vmvnq_s8(v25);
              v27 = vornq_s8(vornq_s8(v24, v22), v25);
              v28 = vpaddq_s32(v23, v24);
              v29 = vaddq_s32(vuzp1q_s32(v26, 0), vuzp2q_s32(v26, 0));
              v30 = vbicq_s8(xmmword_23399FCD0, vceqq_s32(vuzp1q_s32(v28, v29), vnegq_s32(vuzp2q_s32(v28, v29))));
              v31 = vorrq_s8(vuzp1q_s32(v30, v30), vuzp2q_s32(v30, v30));
              *(v14 + 38) = vorrq_s8(vdupq_lane_s32(*v31.i8, 1), v31).u8[0];
              v32 = vandq_s8(vornq_s8(v27, vceqzq_f32(v18)), xmmword_23399FCD0);
              v33 = vorrq_s8(vuzp1q_s32(v32, v32), vuzp2q_s32(v32, v32));
              *(v14 + 40) = vorrq_s8(vdupq_lane_s32(*v33.i8, 1), v33).u8[0];
              v34 = *(v13 + 8);
              *(v14 + 8) = v34;
              *(v13 + 8) = 0;
              ColorSpaceTransform_Free(v13);
              v13 = v34;
              if (!v34)
              {
                goto LABEL_12;
              }
            }

            v12 = *(v13 + 8);
          }

          while (v12);
        }
      }

LABEL_12:
      v6[2] = v11;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      ColorSpaceTransform_Free(v6);
      return 0;
    }
  }

  return v6;
}

const char *Init_CGInterfaces(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  vectorAvail = *a1;
  Convert_AnyToAny = v2;
  v3 = *(a1 + 24);
  Converter_Retain = *(a1 + 16);
  Converter_Release = v3;
  v4 = *(a1 + 40);
  Converter_CreateWithCGImageFormat = *(a1 + 32);
  Converter_CreateWithCGColorConversionInfo = v4;
  v5 = *(a1 + 56);
  GetLogicalCPUCount = *(a1 + 48);
  GetPhysicalCPUCount = v5;
  v6 = *(a1 + 72);
  LogError = *(a1 + 64);
  AffineWarpCG_ARGB8888 = v6;
  v7 = *(a1 + 88);
  AffineWarpCG_ARGB16U = *(a1 + 80);
  AffineWarpCG_ARGBFFFF = v7;
  v8 = *(a1 + 104);
  Scale_Planar8 = *(a1 + 96);
  Converter_MustOperateOutOfPlace = v8;
  v9 = *(a1 + 120);
  CopyBuffer = *(a1 + 112);
  v10 = *(a1 + 136);
  Converter_GetNumberOfDestinationBuffers = *(a1 + 128);
  Converter_GetNumberOfSourceBuffers = v9;
  Converter_CreateForCGToCVImageFormat = v10;
  v11 = *(a1 + 152);
  Converter_CreateForCVToCGImageFormat = *(a1 + 144);
  kvImageDecodeArray_RGB101010_0 = v11;
  v12 = *(a1 + 168);
  kvImageDecodeArray_16Q12Format = *(a1 + 160);
  kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4 = v12;
  v13 = *(a1 + 184);
  kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2 = *(a1 + 176);
  kvImage_ARGBToYpCbCrMatrix_ITU_R_2020_NCL_0 = v13;
  v14 = *(a1 + 200);
  kvImage_YpCbCrToARGBMatrix_ITU_R_601_4 = *(a1 + 192);
  kvImage_YpCbCrToARGBMatrix_ITU_R_709_2 = v14;
  kvImage_YpCbCrToARGBMatrix_ITU_R_2020_NCL_0 = *(a1 + 208);
  *a2 = MEMORY[0x277CBF318];
  a2[1] = MEMORY[0x277CBF320];
  a2[2] = MEMORY[0x277CBF2D0];
  a2[3] = MEMORY[0x277CBF308];
  a2[4] = MEMORY[0x277CBF2D8];
  a2[5] = MEMORY[0x277CBF2F8];
  a2[6] = MEMORY[0x277CBF2E0];
  a2[7] = MEMORY[0x277CBF2E8];
  a2[14] = MEMORY[0x277CBF328];
  v15 = *MEMORY[0x277CBF4B8];
  a2[15] = MEMORY[0x277CBF300];
  a2[16] = v15;
  v16 = *MEMORY[0x277CBF430];
  v17 = MEMORY[0x277CBF428];
  a2[17] = *MEMORY[0x277CBF3E0];
  a2[18] = v16;
  v18 = *MEMORY[0x277CBF3F8];
  a2[19] = *v17;
  a2[20] = v18;
  a2[21] = MEMORY[0x277CBF2C8];
  a2[8] = MEMORY[0x277CBE538];
  a2[9] = MEMORY[0x277CBE558];
  a2[10] = MEMORY[0x277CBE550];
  a2[11] = MEMORY[0x277CBE520];
  a2[12] = MEMORY[0x277CBE540];
  a2[13] = MEMORY[0x277CBE528];
  a2[22] = CreateColorSpaceTransformZero;
  a2[23] = CreateColorspaceTransformForColorspaces;
  a2[24] = GetColorspaceTransformsWithTransform;
  a2[25] = GetColorspaceTransformsWithTransformWithCGColorConversionInfo;
  a2[26] = ColorSpaceTransform_Free;
  a2[27] = ColorSpaceTransform_DoConvert;
  a2[28] = GetColorSpaceDescription;
  a2[34] = GetCodeFragmentWithCGColorConverter;
  a2[29] = vmCopyBuffers;
  a2[30] = Allocate_vImageCGConverterRef;
  a2[31] = CVImageFormat_CalculateInverseConversionMatrix;
  a2[32] = CVImageFormat_InitvImageCGImageFormat;
  a2[33] = CVImageFormat_Print;
  a2[37] = _vImageBuffer_Init;
  a2[38] = _vImageBuffer_GetSize;
  a2[39] = _vImageCGImageFormat_GetComponentCount;
  a2[40] = _vImageCGImageFormat_IsEqual;
  a2[41] = _vImageBuffer_InitWithCGImage;
  a2[42] = _vImageCreateCGImageFromBuffer;
  a2[43] = CVImageFormat_CreateWithCVPixelBuffer;
  a2[44] = CVImageFormat_Create;
  a2[45] = CVImageFormat_Copy;
  a2[46] = CVImageFormat_Retain;
  a2[47] = CVImageFormat_Release;
  a2[48] = CVImageFormat_GetFormatCode;
  a2[49] = CVImageFormat_GetChannelCount;
  a2[50] = CVImageFormat_GetChannelNames;
  a2[51] = CVImageFormat_GetColorSpace;
  a2[52] = CVImageFormat_SetColorSpace;
  a2[53] = CVImageFormat_GetChromaSiting;
  a2[54] = CVImageFormat_SetChromaSiting;
  a2[55] = CVImageFormat_GetConversionMatrix;
  a2[56] = CVImageFormat_CopyConversionMatrix;
  a2[57] = CVImageFormat_GetAlphaHint;
  a2[58] = CVImageFormat_SetAlphaHint;
  a2[59] = CVImageFormat_GetChannelDescription;
  a2[60] = CVImageFormat_CopyChannelDescription;
  a2[61] = CVImageFormat_GetUserData;
  a2[62] = CVImageFormat_SetUserData;
  a2[63] = CVImageFormat_InitvImageCGImageFormat;
  a2[64] = CVImageFormat_Print;
  a2[65] = Buffer_InitWithCVPixelBuffer;
  a2[66] = Buffer_CopyToCVPixelBuffer;
  a2[67] = Buffer_InitForCopyFromCVPixelBuffer;
  a2[68] = Buffer_InitForCopyToCVPixelBuffer;
  a2[69] = CreateRGBColorSpaceWithPrimariesAndTransferFunction;
  a2[70] = CreateMonochromeColorSpaceWithWhitePointAndTransferFunction;
  a2[35] = MEMORY[0x277CBF2F0];
  a2[36] = MEMORY[0x277CBF310];
  return "630";
}

uint64_t __GetColorspaceTransformsWithTransformWithCGColorConversionInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = *(a1 + 32);
  v3[32] = v2;
  v4 = *(a2 + 20);
  v3[33] = v4;
  if (v2 <= v4)
  {
    LOBYTE(v2) = v4;
  }

  v3[34] = v2;
  return 1;
}

uint64_t _vImageBuffer_InitWithCGImage(uint64_t a1, unsigned int *a2, uint64_t a3, CGImage *a4, unsigned int a5)
{
  if (!a1)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 927, "vImageBuffer_InitWithCGImage failed: buf may not be NULL.\n");
    }

    return -21772;
  }

  v64[0] = 0;
  if (a2 && !*a2)
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    v5 = (a5 & 0x200) == 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if ((a5 & 0x200) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = (a5 & 0x200) == 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if ((a5 & 0x200) == 0)
    {
LABEL_5:
      *a1 = 0;
      *(a1 + 24) = 0;
      goto LABEL_11;
    }
  }

  if (!*a1)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 950, "vImageBuffer_InitWithCGImage failed: buf->data is NULL and kvImageNoAllocate passed.\n");
    }

    return -21772;
  }

  if (!*(a1 + 24))
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 955, "vImageBuffer_InitWithCGImage failed: buf->rowBytes is 0 and kvImageNoAllocate passed.\n");
    }

    return -21777;
  }

LABEL_11:
  if (!a2 || !a4)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 963, "vImageBuffer_InitWithCGImage failed: fmt and image may not be NULL.\n");
    }

    return -21772;
  }

  if (a2[5] >= 2)
  {
    if ((a5 & 0x100) == 0)
    {
      return -21778;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 970, "vImageBuffer_InitWithCGImage failed: fmt->version must be 0 or 1\n");
    return -21778;
  }

  if ((a5 & 0xFFFFFCFF) != 0)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 978, "vImageBuffer_InitWithCGImage failed: fmt->bitmapInfo has unknown/unsupported flags: 0x%8.8x\n", a5 & 0xFFFFFCFF);
    }

    return -21775;
  }

  v7 = a2[4];
  if ((v7 & 0x7000) > 0x4000 || (v7 & 0xFFFF8EF8) != 0)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 987, "vImageBuffer_InitWithCGImage failed: fmt->bitmapInfo has unknown bits: 0x%8.8x\n", a2[4]);
      return -21773;
    }

    return -21773;
  }

  v8 = *a2;
  if ((v7 & 0x100) != 0 && v8 != 16 && v8 != 32)
  {
    if ((a5 & 0x100) == 0)
    {
      return -21773;
    }

    v42 = *a2;
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 995, "vImageBuffer_InitWithCGImage failed: kCGBitmapFloatComponents must be 16 or 32 bits\n");
    return -21773;
  }

  if ((v8 & (v8 - 1)) == 0)
  {
    if (v8 < 0x21)
    {
      if (v8 != 16 && kvImageDecodeArray_RGB101010_0 == *(a2 + 3))
      {
        if ((a5 & 0x100) == 0)
        {
          return -21778;
        }

        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1009, "vImageBuffer_InitWithCGImage failed: %u-bit image bad decode array\n", *a2);
        return -21778;
      }

      goto LABEL_58;
    }

    if ((a5 & 0x100) == 0)
    {
      return -21773;
    }

    v41 = *a2;
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1004, "vImageBuffer_InitWithCGImage failed: fmt->bitsPerComponent > 32  (%u)\n");
    return -21773;
  }

  if (v8 == 12)
  {
    goto LABEL_58;
  }

  if (v8 != 10)
  {
    if (v8 == 5)
    {
      if (*(a2 + 3))
      {
        if ((a5 & 0x100) == 0)
        {
          return -21778;
        }

        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1020, "vImageBuffer_InitWithCGImage failed: 5-bit images must have a NULL decode array\n");
        return -21778;
      }

      goto LABEL_58;
    }

    if ((a5 & 0x100) != 0)
    {
      v43 = *a2;
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1034, "vImageBuffer_InitWithCGImage failed: fmt->bitsPerComponent %u not a supported bitdepth\n");
      return -21773;
    }

    return -21773;
  }

  if (*(a2 + 3) != kvImageDecodeArray_RGB101010_0)
  {
    if ((a5 & 0x100) == 0)
    {
      return -21778;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1027, "vImageBuffer_InitWithCGImage failed: 10-bit image bad decode array\n");
    return -21778;
  }

LABEL_58:
  v9 = *(a2 + 1);
  v61 = *a2;
  v62 = v9;
  v63 = *(a2 + 4);
  v10 = v61;
  if (v61)
  {
    if (*(&v61 + 1))
    {
      v14 = a2;
      v15 = 1;
      v16 = a4;
      if (!CGImageGetClipPath())
      {
        goto LABEL_69;
      }

LABEL_70:
      result = GetImageWithBitmapContext(a1, &v61, a3, v16, a5);
      v5 = 0;
      v64[0] = result;
      goto LABEL_71;
    }

    v16 = a4;
    v14 = a2;
    *(&v61 + 1) = CGColorSpaceCreateDeviceRGB();
    if (!*(&v61 + 1))
    {
      if ((a5 & 0x100) == 0)
      {
        return -21771;
      }

      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1050, "vImageBuffer_InitWithCGImage failed: could not allocate device RGB colorspace\n");
      return -21771;
    }

    v15 = 0;
    if (CGImageGetClipPath())
    {
      goto LABEL_70;
    }
  }

  else
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    v14 = a2;
    v15 = 1;
    v16 = a4;
    if (CGImageGetClipPath())
    {
      goto LABEL_70;
    }
  }

LABEL_69:
  if (CGImageGetMaskingColors())
  {
    goto LABEL_70;
  }

  Mask = CGImageGetMask();
  if (Mask)
  {
    v19 = Mask;
    if (!v10)
    {
      v64[0] = GetImageWithImageProvider(a1, &v61, a3, v16, a5 | 0x200);
      if (v64[0])
      {
        v64[0] = GetImageWithDataProvider(a1, &v61, a3, v16, a5 | 0x200);
        if (v64[0])
        {
          goto LABEL_70;
        }
      }
    }

    v57 = v61;
    v20 = v62 & 0xFFFF8FFF;
    v58 = v62 & 0xFFFFFFFFFFFF8FFFLL;
    v59 = 0;
    v60 = v63;
    if (v61 <= 9)
    {
      if ((v61 - 1) >= 2 && v61 != 4)
      {
        if (v61 == 8)
        {
          BaseColorSpace = *(&v57 + 1);
          v22 = vImageMaskAlpha_Chunky8;
          if (*(&v57 + 1))
          {
            do
            {
              Model = CGColorSpaceGetModel(BaseColorSpace);
              v22 = vImageMaskAlpha_Chunky8;
              if (Model != kCGColorSpaceModelXYZ)
              {
                break;
              }

              BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(&v57 + 1));
              *(&v57 + 1) = BaseColorSpace;
              v22 = vImageMaskAlpha_Chunky8;
            }

            while (BaseColorSpace);
          }

          goto LABEL_123;
        }

        goto LABEL_119;
      }

      LODWORD(v57) = 8;
      DWORD1(v57) *= 8u / v61;
      v28 = *(&v57 + 1);
      v22 = vImageMaskAlpha_Chunky8;
      if (*(&v57 + 1))
      {
        do
        {
          v29 = CGColorSpaceGetModel(v28);
          v22 = vImageMaskAlpha_Chunky8;
          if (v29 != kCGColorSpaceModelXYZ)
          {
            break;
          }

          v28 = CGColorSpaceGetBaseColorSpace(*(&v57 + 1));
          *(&v57 + 1) = v28;
          v22 = vImageMaskAlpha_Chunky8;
        }

        while (v28);
      }

LABEL_123:
      v31 = v22;
      LODWORD(v58) = v58 & 0xFFFFFFE0 | 3;
      DWORD1(v57) = v57 + v57 * CGColorSpaceGetNumberOfComponents(*(&v57 + 1));
      space[0] = 0x800000008;
      memset(v56, 0, 24);
      space[1] = CGColorSpaceCreateDeviceGray();
      *v53 = 0u;
      v54 = 0u;
      _vImageBuffer_InitWithCGImage(v53, space, a3, v19, a5 & 0x100);
      CGColorSpaceRelease(space[1]);
      if (v53[0])
      {
        v45 = a5 & 0x100;
        Height = CGImageGetHeight(v16);
        Width = CGImageGetWidth(v16);
        v34 = Width;
        if (v53[1] == Height && v54 == Width)
        {
          goto LABEL_126;
        }

        *v50 = *v53;
        v51 = v54;
        *v53 = 0u;
        v54 = 0u;
        _vImageBuffer_Init(v53, Height, Width, 8u, v45);
        if (v53[0])
        {
          v64[0] = Scale_Planar8(v50, v53, 0, 0);
          free(v50[0]);
          if (v64[0])
          {
            free(v53[0]);
            if ((a5 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1225, "vImageBuffer_InitWithCGImage failed: unable to rescale image mask to image dimensions\n");
            }

            return v64[0];
          }

LABEL_126:
          v44 = v34;
          if (LODWORD(space[0]) != v57 || *(&v56[0] + 1) != v59)
          {
            LODWORD(v50[0]) = v57;
            HIDWORD(v50[0]) = v57;
            v50[1] = space[1];
            *&v51 = v58 & 0xFFFFFFE0;
            *(&v51 + 1) = v59;
            v52 = 0;
            *v48 = *v53;
            v49 = v54;
            *v53 = 0u;
            v54 = 0u;
            _vImageBuffer_Init(v53, Height, v34, v57, v45);
            if (!v53[0])
            {
              free(v48[0]);
              if ((a5 & 0x100) != 0)
              {
                LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1250, "vImageBuffer_InitWithCGImage failed: unable to convert image mask to image format\n");
                return -21771;
              }

              return -21771;
            }

            v35 = Converter_CreateWithCGImageFormat(space, v50, a3, a5 & 0x100, v64);
            if (v64[0])
            {
              free(v53[0]);
              free(v48[0]);
              if ((a5 & 0x100) != 0)
              {
                LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1259, "vImageBuffer_InitWithCGImage failed: unable make converter to convert image mask to image format (%d)\n", LODWORD(v64[0]));
              }

              return v64[0];
            }

            v37 = v35;
            v64[0] = Convert_AnyToAny(v35, v48, v53, 0, a5 & 0x100);
            free(v48[0]);
            Converter_Release(v37);
            if (v64[0])
            {
              free(v53[0]);
              if ((a5 & 0x100) != 0)
              {
                LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1269, "vImageBuffer_InitWithCGImage failed: unable to convert image mask to image format (%d)\n", LODWORD(v64[0]));
              }

              return v64[0];
            }

            *space = *v50;
            v56[0] = v51;
            *&v56[1] = v52;
            v34 = v44;
          }

          *v46 = 0u;
          v47 = 0u;
          _vImageBuffer_Init(v46, Height, v34, DWORD1(v57), v45);
          if (v46[0])
          {
            v64[0] = GetImageWithImageProvider(v46, &v57, a3, v16, a5);
            if (v64[0])
            {
              v64[0] = GetImageWithDataProvider(v46, &v57, a3, v16, a5);
              if (v64[0])
              {
                v64[0] = GetImageWithBitmapContext(v46, &v57, a3, v16, a5);
                free(v53[0]);
                v53[0] = 0;
                free(v46[0]);
                v5 = 0;
                v46[0] = 0;
                goto LABEL_132;
              }
            }

            if (*(&v57 + 1))
            {
              v36 = CGColorSpaceGetNumberOfComponents(*(&v57 + 1)) + 1;
            }

            else
            {
              v36 = 4;
            }

            v38 = v31(v53, v46, v36, 0);
            v64[0] = v38;
            free(v53[0]);
            if (v38)
            {
              goto LABEL_164;
            }

            if (!*v14 && ((0x61uLL >> (v62 & 7)) & 1) != 0)
            {
              if ((v62 & 0x1F) == 0)
              {
                DWORD1(v61) += v61;
              }

              LODWORD(v62) = AddAlpha_newAlpha[v62 & 0x1F] | v62 & 0xFFFFFFE0;
            }

            v39 = Converter_CreateWithCGImageFormat(&v57, &v61, a3, a5 & 0x100, v64);
            if (v64[0])
            {
LABEL_164:
              free(v46[0]);
              return v64[0];
            }

            v40 = v39;
            if ((a5 & 0x200) == 0)
            {
              _vImageBuffer_Init(a1, Height, v44, DWORD1(v61), a5);
              if (!*a1)
              {
                free(v46[0]);
                return -21771;
              }

              goto LABEL_170;
            }

            *(a1 + 8) = Height;
            *(a1 + 16) = v44;
            if (*(a1 + 24) >= (v44 * DWORD1(v61) + 7) >> 3)
            {
LABEL_170:
              v64[0] = Convert_AnyToAny(v40, v46, a1, 0, a5 & 0x100);
              free(v46[0]);
              Converter_Release(v40);
              goto LABEL_132;
            }

            return -21777;
          }

          free(v53[0]);
          if ((a5 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1282, "vImageBuffer_InitWithCGImage failed: insufficient free memory to extract masked image\n");
            return -21771;
          }

          return -21771;
        }

        free(v50[0]);
        if ((a5 & 0x100) == 0)
        {
          return -21771;
        }

        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1216, "vImageBuffer_InitWithCGImage failed: insufficient free memory to resize image mask to image dimensions\n");
      }

      else
      {
        if ((a5 & 0x100) == 0)
        {
          return -21771;
        }

        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1201, "vImageBuffer_InitWithCGImage failed: insufficient free memory to extract image mask\n");
      }

      return -21771;
    }

    if (v61 <= 15)
    {
      if (v61 == 10)
      {
        v59 = kvImageDecodeArray_16Q12Format;
        *&v57 = 0x4000000010;
        v22 = vImageMaskAlpha_Chunky16Q12;
        goto LABEL_123;
      }

      if (v61 == 12)
      {
        LODWORD(v57) = 16;
        DWORD1(v57) = 16 * DWORD1(v57) / 0xCu;
        LODWORD(v58) = v20 | 0x1000;
        v22 = vImageMaskAlpha_Chunky16U;
        goto LABEL_123;
      }

      goto LABEL_119;
    }

    if (v61 == 16)
    {
      if ((v62 & 0x100) == 0)
      {
        LODWORD(v58) = v20 | 0x1000;
        v22 = vImageMaskAlpha_Chunky16U;
        if (*(&v62 + 1) == kvImageDecodeArray_16Q12Format)
        {
          v59 = kvImageDecodeArray_16Q12Format;
          v22 = vImageMaskAlpha_Chunky16Q12;
        }

        goto LABEL_123;
      }

      LODWORD(v57) = 32;
      DWORD1(v57) *= 2;
      v30 = v20 | 0x2000;
    }

    else
    {
      if (v61 != 32)
      {
LABEL_119:
        if ((a5 & 0x100) == 0)
        {
          return -21778;
        }

        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 1174, "vImageBuffer_IniteWithCGImage: unknown / unsupported bitsPerComponent %u\n");
        return -21778;
      }

      v30 = v62 & 0xFFFF8EFF | 0x2100;
    }

    LODWORD(v58) = v30;
    v22 = vImageMaskAlpha_ChunkyF;
    goto LABEL_123;
  }

  result = GetImageWithImageProvider(a1, &v61, a3, v16, a5);
  v64[0] = result;
  if (result != -21781 || (result = GetImageWithDataProvider(a1, &v61, a3, v16, a5), v64[0] = result, result != -21781))
  {
    v5 = 0;
    goto LABEL_71;
  }

  if (!CheckNonNullDataProviderWithLengthZero(v16))
  {
    goto LABEL_70;
  }

  v5 = 0;
LABEL_132:
  result = v64[0];
LABEL_71:
  if (*v14)
  {
    v17 = a1;
  }

  else
  {
    v17 = a1;
    if (result)
    {
      *(v14 + 4) = 0;
      *v14 = 0u;
      *(v14 + 1) = 0u;
    }

    else
    {
      v24 = DWORD1(v61);
      *v14 = v61;
      v14[1] = v24;
      v14[4] = v62;
      v25 = *(&v61 + 1);
      if (v15)
      {
        result = 0;
      }

      else
      {
        CGColorSpaceRelease(*(&v61 + 1));
        v17 = a1;
        v25 = 0;
        result = v64[0];
      }

      *(v14 + 1) = v25;
      v14[5] = DWORD1(v62);
      *(v14 + 3) = *(&v62 + 1);
      v14[8] = v63;
    }
  }

  v26 = !v5;
  if (!result)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v17;
    free(*v17);
    *v27 = 0u;
    *(v27 + 1) = 0u;
    return v64[0];
  }

  return result;
}

uint64_t GetImageWithImageProvider(uint64_t a1, uint64_t a2, uint64_t a3, CGImage *a4, unsigned int a5)
{
  v71 = *MEMORY[0x277D85DE8];
  if (!CGImageGetImageProvider())
  {
    goto LABEL_24;
  }

  if (CGImageProviderGetComponentType() > 5)
  {
    result = -21773;
    goto LABEL_25;
  }

  BitmapInfo = CGImageProviderGetBitmapInfo();
  v65 = 0;
  *(a1 + 8) = CGImageGetHeight(a4);
  *(a1 + 16) = CGImageGetWidth(a4);
  v64 = 0;
  *space = 0u;
  v63 = 0u;
  CGImageProviderGetPixelSize();
  CGImageProviderGetColorSpace();
  *&v63 = __PAIR64__(*(a2 + 20), BitmapInfo);
  *(&v63 + 1) = CGImageGetDecode(a4);
  LODWORD(v64) = CGImageGetRenderingIntent(a4);
  if (CGImageGetBitsPerComponent(a4) == 8 && CGImageGetBitsPerPixel(a4) == 32 && (CGImageGetBitmapInfo(a4) == 8194 || CGImageGetBitmapInfo(a4) == 8193))
  {
    keys[0] = *MEMORY[0x277CBF530];
    values[0] = *MEMORY[0x277CBF528];
    v12 = CFDictionaryCreate(0, keys, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = CGImageProviderCopyImageBlockSetWithOptions();
  if (!v12)
  {
    goto LABEL_17;
  }

  CFRelease(v12);
  if (!v15)
  {
    v15 = CGImageProviderCopyImageBlockSetWithOptions();
LABEL_17:
    if (!v15)
    {
      goto LABEL_24;
    }

    LODWORD(space[0]) = GetImageWithImageProvider_kSizes[CGImageBlockSetGetComponentType()];
    HIDWORD(space[0]) = 8 * CGImageBlockSetGetPixelSize();
    space[1] = CGImageBlockSetGetColorSpace();
    goto LABEL_19;
  }

  space[0] = 0x2000000008;
  LODWORD(v63) = 8194;
  space[1] = CGImageBlockSetGetColorSpace();
  Model = CGColorSpaceGetModel(space[1]);
  if (Model != kCGColorSpaceModelRGB)
  {
    if (Model != kCGColorSpaceModelIndexed || (space[1] = CGColorSpaceGetBaseColorSpace(space[1]), CGColorSpaceGetModel(space[1]) != kCGColorSpaceModelRGB))
    {
      CGImageBlockSetRelease();
LABEL_24:
      result = -21781;
      goto LABEL_25;
    }
  }

LABEL_19:
  CGImageBlockSetGetSize();
  *(a1 + 8) = vcvtmd_u64_f64(v17);
  *(a1 + 16) = vcvtmd_u64_f64(v18);
  if (*a2)
  {
    v19 = a5 & 0x200;
  }

  else
  {
    v22 = v63;
    *a2 = *space;
    *(a2 + 16) = v22;
    *(a2 + 32) = v64;
    v19 = a5 & 0x200;
    if ((a5 & 0x200) != 0 && !*a1)
    {
      CGImageBlockSetRelease();
      result = 0;
      goto LABEL_25;
    }
  }

  v20 = *(a2 + 4);
  if (v19)
  {
    if (*(a1 + 24) < (*(a1 + 16) * v20 + 7) >> 3)
    {
      CGImageBlockSetRelease();
      result = -21777;
      goto LABEL_25;
    }
  }

  else
  {
    if ((a5 & 0xFFFFFCFF) == 0)
    {
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      *a1 = 0;
      v25 = (v24 * v20 + 7) >> 3;
      v26 = ((2 * MEMORY[0xFFFFFC020]) & 0xE0uLL) <= 2 * v25 ? (2 * MEMORY[0xFFFFFC020]) & 0xE0 : 16;
      v27 = (v25 + v26 - 1) & -v26;
      v28 = (v27 & (v27 - 1)) == 0 && v27 >= 0x1000;
      v29 = v28 ? v26 : 0;
      v30 = v29 + v27;
      *(a1 + 24) = v30;
      if (a5 <= 0x1FF)
      {
        v31 = malloc_type_posix_memalign(a1, v26, v30 * v23, 0x2C15998uLL);
        if (a5)
        {
          if (v31)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 208, "vImageBuffer_Init failed: could not allocate buf->data of size %lu\n", *(a1 + 8) * *(a1 + 24));
          }
        }
      }
    }

    if (!*a1)
    {
      CGImageBlockSetRelease();
      result = -21771;
      goto LABEL_25;
    }
  }

  IsEqual = _vImageCGImageFormat_IsEqual(space, a2);
  if (IsEqual)
  {
    v33 = 0;
  }

  else
  {
    v37 = *(a2 + 16);
    *keys = *a2;
    v69 = v37;
    v70 = *(a2 + 32);
    if ((v63 & 0x1F) - 1 <= 1 && (v69 & 0x1F) - 5 <= 1)
    {
      LODWORD(v69) = v69 - 2;
    }

    v33 = Converter_CreateWithCGImageFormat(space, keys, a3, a5 & 0x110, &v65);
    v36 = v65;
    if (v65)
    {
      goto LABEL_81;
    }
  }

  PixelSize = CGImageBlockSetGetPixelSize();
  Count = CGImageBlockSetGetCount();
  if (Count == 1)
  {
    if (CGImageBlockSetGetImageBlock())
    {
      CGImageBlockGetRect();
      v39 = v38;
      v41 = v40;
      keys[0] = CGImageBlockGetData();
      keys[1] = v41;
      *&v69 = v39;
      *(&v69 + 1) = CGImageBlockGetBytesPerRow();
      if (IsEqual)
      {
        v36 = vmCopyBuffers(keys, a1);
        v65 = v36;
        if (v19)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v36 = Convert_AnyToAny(v33, keys, a1, 0, a5 & 0x110);
        v65 = v36;
        if (v19)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      v36 = -21781;
      v65 = -21781;
      if (v19)
      {
        goto LABEL_86;
      }
    }

    goto LABEL_82;
  }

  v35 = Count;
  if (!Count)
  {
    v36 = v65;
    if (v19)
    {
      goto LABEL_86;
    }

LABEL_82:
    if (v36)
    {
      if (*a1)
      {
        free(*a1);
      }

      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    goto LABEL_86;
  }

  v60 = v19;
  if (v33)
  {
    v42 = 1;
    while (CGImageBlockSetGetImageBlock())
    {
      CGImageBlockGetRect();
      v45 = *(a1 + 24);
      v47 = v46;
      keys[0] = (*a1 + v45 * v44 + ((*(a2 + 4) * v43) >> 3));
      keys[1] = v46;
      v49 = v48;
      *&v69 = v48;
      *(&v69 + 1) = v45;
      *values = 0u;
      v67 = 0u;
      values[0] = CGImageBlockGetData();
      values[1] = v47;
      *&v67 = v49;
      *(&v67 + 1) = CGImageBlockGetBytesPerRow();
      v36 = Convert_AnyToAny(v33, values, keys, 0, a5 & 0x110);
      v65 = v36;
      if (v36)
      {
        v50 = 1;
      }

      else
      {
        v50 = v42 >= v35;
      }

      ++v42;
      if (v50)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v51 = 1;
    while (CGImageBlockSetGetImageBlock())
    {
      CGImageBlockGetRect();
      v54 = *(a1 + 24);
      v56 = v55;
      keys[0] = (*a1 + v54 * v53 + ((*(a2 + 4) * v52) >> 3));
      keys[1] = v55;
      v58 = v57;
      *&v69 = v57;
      *(&v69 + 1) = v54;
      *values = 0u;
      v67 = 0u;
      values[0] = CGImageBlockGetData();
      values[1] = v56;
      *&v67 = v58;
      *(&v67 + 1) = CGImageBlockGetBytesPerRow();
      v36 = CopyBuffer(values, keys, PixelSize, a5 & 0xFFFFFDFF);
      v65 = v36;
      if (v36)
      {
        v59 = 1;
      }

      else
      {
        v59 = v51 >= v35;
      }

      ++v51;
      if (v59)
      {
        v33 = 0;
        goto LABEL_80;
      }
    }
  }

  v36 = -21781;
  v65 = -21781;
LABEL_80:
  v19 = v60;
LABEL_81:
  if (!v19)
  {
    goto LABEL_82;
  }

LABEL_86:
  if (v33)
  {
    Converter_Release(v33);
  }

  CGImageBlockSetRelease();
  result = v65;
LABEL_25:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _vImageCGImageFormat_IsEqual(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4 == v5 && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  DeviceRGB = *(a1 + 8);
  if (v4)
  {
    v8 = *(a2 + 8);
    if (v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = v5;
    if (v5)
    {
LABEL_9:
      result = CFEqual(DeviceRGB, v8);
      if (!result)
      {
        goto LABEL_30;
      }

LABEL_16:
      v9 = result;
      if (*(a1 + 24))
      {
        v10 = *(a1 + 24);
      }

      else
      {
        v10 = &_vImageCGImageFormat_IsEqual_identity;
      }

      if (*(a2 + 24))
      {
        v11 = *(a2 + 24);
      }

      else
      {
        v11 = &_vImageCGImageFormat_IsEqual_identity;
      }

      NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceRGB);
      if (NumberOfComponents)
      {
        v13 = NumberOfComponents;
        v14 = (v10 + 8);
        v15 = (v11 + 8);
        result = v9;
        while (*(v14 - 1) == *(v15 - 1) && *v14 == *v15)
        {
          v14 += 2;
          v15 += 2;
          if (!--v13)
          {
            goto LABEL_30;
          }
        }

        result = 0;
      }

      else
      {
        result = v9;
      }

      goto LABEL_30;
    }
  }

  v8 = CGColorSpaceCreateDeviceRGB();
  result = CFEqual(DeviceRGB, v8);
  if (result)
  {
    goto LABEL_16;
  }

LABEL_30:
  if (!v4)
  {
    v16 = result;
    CGColorSpaceRelease(DeviceRGB);
    result = v16;
  }

  if (!v5)
  {
    v17 = result;
    CGColorSpaceRelease(v8);
    return v17;
  }

  return result;
}

uint64_t vmCopyBuffers(vm_address_t *a1, char **a2)
{
  v2 = MEMORY[0x277D85FA0];
  v3 = *a1;
  v4 = *MEMORY[0x277D85FA0];
  v5 = *MEMORY[0x277D85FA0] - 1;
  v6 = *a2;
  if (((*a2 ^ *a1) & v5) != 0)
  {
    goto LABEL_10;
  }

  v7 = a2[3];
  v8 = a2[1] * v7;
  if (a1[3] != v7 || v8 < 4 * v4)
  {
    goto LABEL_10;
  }

  v10 = a1;
  v11 = a2;
  v12 = v5 & -v3;
  if (v12)
  {
    memcpy(*a2, v3, v5 & -v3);
    v3 += v12;
    v6 += v12;
    v8 -= v12;
    v4 = *v2;
  }

  v13 = vm_copy(*MEMORY[0x277D85F48], v3, v8 & -v4, v6);
  a2 = v11;
  a1 = v10;
  if (v13)
  {
LABEL_10:
    v14 = CopyBuffer;

    return v14(a1, a2);
  }

  else
  {
    memcpy(&v6[v8 & -*v2], (v3 + (v8 & -*v2)), (*v2 - 1) & v8);
    return 0;
  }
}

uint64_t Allocate_vImageCGConverterRef(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals == -1)
  {
    if (qword_280AC12D0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  Allocate_vImageCGConverterRef_cold_1();
  if (!qword_280AC12D0)
  {
    return 0;
  }

LABEL_3:
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t CGConverterClassRegister(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = _CFRuntimeRegisterClass();
    *v1 = result;
  }

  return result;
}

uint64_t __GetColorspaceTransformsWithTransformWithCGColorConversionInfo_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 60);
  result = malloc_type_calloc(1uLL, 0x70uLL, 0x1060040AA1FD6ACuLL);
  if (result)
  {
    v8 = result;
    v9 = *(v6 + 8 * a4);
    Properties = CGColorFunctionGetProperties();
    if ((Properties & 8) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    *(v8 + 32) = v11;
    if ((Properties & 0x10) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    *(v8 + 33) = v12;
    *v8 = &CreateMatrixStep_matrix_vtbl;
    *(v8 + 8) = 0;
    *(v8 + 35) = 1;
    v13 = CFGetTypeID(*(v6 + 8 * a4));
    if (v13 == CGColorMatrixGetTypeID())
    {
      CGColorMatrixGetMatrix();
      *(v8 + 48) = v39;
      *(v8 + 64) = v40;
      *(v8 + 80) = v41;
      v14 = *(v6 + 8 * a4);
      CGColorFunctionGetInputRange();
      *(v8 + 96) = v15;
      *(v8 + 100) = v16;
      v17 = *(v6 + 8 * a4);
      CGColorFunctionGetOutputRange();
      *(v8 + 104) = v18;
      *(v8 + 108) = v19;
      v20.i32[0] = *(v8 + 48);
      v21.i32[0] = *(v8 + 52);
      v20.i32[1] = *(v8 + 64);
      v20.i32[2] = *(v8 + 80);
      v21.i32[1] = *(v8 + 68);
      v21.i32[2] = *(v8 + 84);
      v22.i32[0] = *(v8 + 56);
      v23.i32[0] = *(v8 + 60);
      v22.i32[1] = *(v8 + 72);
      v22.i32[2] = *(v8 + 88);
      v23.i32[1] = *(v8 + 76);
      v23.i32[2] = *(v8 + 92);
      v24 = vceqzq_f32(v20);
      v25 = vmvnq_s8(v24);
      v26 = vmvnq_s8(vceqzq_f32(v21));
      v27 = vceqzq_f32(v22);
      v28 = vmvnq_s8(v27);
      v29 = vornq_s8(vornq_s8(v26, v24), v27);
      v30 = vpaddq_s32(v25, v26);
      v31 = vaddq_s32(vuzp1q_s32(v28, 0), vuzp2q_s32(v28, 0));
      v32 = vbicq_s8(xmmword_23399FCD0, vceqq_s32(vuzp1q_s32(v30, v31), vnegq_s32(vuzp2q_s32(v30, v31))));
      v33 = vorrq_s8(vuzp1q_s32(v32, v32), vuzp2q_s32(v32, v32));
      v34 = vandq_s8(vornq_s8(v29, vceqzq_f32(v23)), xmmword_23399FCD0);
      v35 = vorrq_s8(vuzp1q_s32(v34, v34), vuzp2q_s32(v34, v34));
      *(v8 + 38) = vorrq_s8(vdupq_lane_s32(*v33.i8, 1), v33).u8[0];
      *(v8 + 40) = vorrq_s8(vdupq_lane_s32(*v35.i8, 1), v35).u8[0];
      v36 = *(v5 + 16);
      if (v36)
      {
        *(v8 + 8) = v36;
        *(v5 + 16) = v8;
        v37 = *v8;
        if (!*v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(v5 + 16) = v8;
        *(v5 + 24) = v8;
        v37 = *v8;
        if (!*v8)
        {
          goto LABEL_16;
        }
      }

      if (*(v37 + 144) == DoConvert_MatrixStep)
      {
        return 1;
      }

LABEL_16:
      v38 = *(v5 + 34);
      if (v38 <= *(v8 + 33))
      {
        LOBYTE(v38) = *(v8 + 33);
      }

      *(v5 + 34) = v38;
      return 1;
    }

    return 0;
  }

  return result;
}

void vImage_free(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void ColorSpaceTransform_Free(uint64_t *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      ColorSpaceTransform_Free();
    }

    v2 = *a1;
    if (*a1 && ((v3 = *(v2 + 160)) == 0 || (v3(a1), (v2 = *a1) != 0)) && (v4 = *(v2 + 168)) != 0)
    {

      v4(a1);
    }

    else
    {

      vImage_free(a1);
    }
  }
}

uint64_t vImageConverter_Finalize(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(*(result + 16) + 8);
    if (v2)
    {
      result = v2(result);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t _vImageBuffer_Init(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if ((a5 & 0xFFFFFCFF) != 0)
  {
    return -21775;
  }

  v6 = (a4 * a3 + 7) >> 3;
  v7 = (2 * MEMORY[0xFFFFFC020]) & 0xE0;
  if (v7 > 2 * v6)
  {
    v7 = 16;
  }

  v8 = (v6 + v7 - 1) & -v7;
  if ((v8 & (v8 - 1)) == 0 && v8 >= 0x1000)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 + v10;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = v11;
  if (a5 > 0x1FF)
  {
    return v7;
  }

  if (malloc_type_posix_memalign(a1, v7, v11 * a2, 0x2C15998uLL))
  {
    if (a5)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 208, "vImageBuffer_Init failed: could not allocate buf->data of size %lu\n", *(a1 + 8) * *(a1 + 24));
    }

    return -21771;
  }

  return 0;
}

void DestroyTRCStep(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = (a1 + 132);
    do
    {
      if (*(v2 - 3) == 5)
      {
        vImage_free(*v2);
      }

      v2 = (v2 + 60);
      --v1;
    }

    while (v1);
  }
}

uint64_t CreateColorspaceTransformForColorspaces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  keys[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v7 = ColorSyncProfileForColorSpace(*(a1 + 8), &v41);
  if (v41 || (v8 = v7, v9 = ColorSyncProfileForColorSpace(*(a2 + 8), &v41), v41))
  {
    result = 0;
LABEL_4:
    if (!a4)
    {
LABEL_7:
      v12 = *MEMORY[0x277D85DE8];
      return result;
    }

    v11 = v41;
LABEL_6:
    *a4 = v11;
    goto LABEL_7;
  }

  v13 = v9;
  if (CFEqual(v8, v9))
  {
    if (v8)
    {
      CFRelease(v8);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = MEMORY[0x277CBCA30];
    v15 = MEMORY[0x277CBCA38];
    v16 = *MEMORY[0x277CBCA38];
    v17 = MEMORY[0x277CBCA90];
    keys[0] = *MEMORY[0x277CBCA30];
    keys[1] = v16;
    v18 = MEMORY[0x277CBC9A0];
    v19 = *MEMORY[0x277CBC9A0];
    keys[2] = *MEMORY[0x277CBCA90];
    keys[3] = v19;
    values[0] = v8;
    v20 = *(a1 + 32);
    if (_MergedGlobals_0 != -1)
    {
      CreateColorspaceTransformForColorspaces_cold_1();
      v18 = MEMORY[0x277CBC9A0];
      v17 = MEMORY[0x277CBCA90];
      v15 = MEMORY[0x277CBCA38];
      v14 = MEMORY[0x277CBCA30];
    }

    if (v20 <= 4)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    values[1] = qword_280AC12E0[v21];
    v22 = *MEMORY[0x277CBED10];
    values[2] = *MEMORY[0x277CBCA70];
    values[3] = v22;
    v23 = *v15;
    v46[0] = *v14;
    v46[1] = v23;
    v24 = *v17;
    v25 = *v18;
    v46[2] = v24;
    v46[3] = v25;
    v45[0] = v13;
    v26 = *(a2 + 32);
    if (v26 > 4)
    {
      v26 = 0;
    }

    v27 = *MEMORY[0x277CBCA80];
    v45[1] = qword_280AC12E0[v26];
    v45[2] = v27;
    v45[3] = v22;
    v28 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v8)
    {
      CFRelease(v8);
    }

    v29 = CFDictionaryCreate(0, v46, v45, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v13)
    {
      CFRelease(v13);
    }

    if (!v28 || !v29 || (v44[0] = v28, v44[1] = v29, v44[2] = 0, v30 = CFArrayCreate(0, v44, 2, MEMORY[0x277CBF128]), CFRelease(v28), CFRelease(v29), !v30))
    {
      result = 0;
      v41 = -21771;
      goto LABEL_4;
    }

    v31 = ColorSyncTransformCreate(v30, 0);
    CFRelease(v30);
    if (!v31)
    {
      result = 0;
      v41 = -21778;
      goto LABEL_4;
    }

    v32 = MEMORY[0x2383AE310](v31, @"com.apple.cmm.TransformType", 0);
    if (!v32 || (v33 = v32, v34 = CFEqual(v32, @"NULLTransform"), CFRelease(v33), !v34))
    {
      v36 = MEMORY[0x2383AE310](v31, *MEMORY[0x277CBCA78], 0);
      if (!v36)
      {
        valuePtr = gCGInterfacesTableSize;
        v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v38 = *MEMORY[0x277CBC9C8];
        v42 = v37;
        v43 = v38;
        v39 = CFDictionaryCreate(0, &v43, &v42, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(v37);
        v36 = MEMORY[0x2383AE310](v31, *MEMORY[0x277CBCA88], v39);
        CFRelease(v39);
      }

      CFRelease(v31);
      result = v36;
      goto LABEL_4;
    }

    CFRelease(v31);
    if (a4)
    {
LABEL_14:
      v11 = 0;
      result = 0;
      goto LABEL_6;
    }
  }

  result = 0;
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

ColorSyncProfile *ColorSyncProfileForColorSpace(CGColorSpace *a1, uint64_t *a2)
{
  v4 = MEMORY[0x2383ADE10]();
  v16 = 0;
  if (v4)
  {
    v15 = 0;
    v5 = v4;
    v6 = ColorSyncProfileCreate(v4, &v15);
    CFRelease(v5);
    if (v6)
    {
      result = v6;
      v8 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    v16 = -21778;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(a1);
  if (NumberOfComponents == 4)
  {
    DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
    v12 = CFEqual(a1, DeviceCMYK);
    result = 0;
    if (v12)
    {
      v11 = *MEMORY[0x277CBCA20];
    }

    else
    {
      v11 = 0;
    }

    if (DeviceCMYK)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (NumberOfComponents == 3)
    {
      DeviceCMYK = CGColorSpaceCreateDeviceRGB();
      if (CFEqual(a1, DeviceCMYK))
      {
        result = 0;
        v11 = *MEMORY[0x277CBCA68];
        if (!DeviceCMYK)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      Type = CGColorSpaceGetType();
      if (Type == 5)
      {
        result = ColorSyncProfileCreateWithLab(a1, &v16);
        v11 = 0;
        if (!DeviceCMYK)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (Type == 4)
      {
        result = ColorSyncProfileCreateWithCalRGB(a1, &v16);
        v11 = 0;
        if (!DeviceCMYK)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (NumberOfComponents != 1)
      {
        result = 0;
        v8 = -21778;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      DeviceCMYK = CGColorSpaceCreateDeviceGray();
      if (CFEqual(a1, DeviceCMYK))
      {
        result = 0;
        v11 = *MEMORY[0x277CBCA28];
        if (!DeviceCMYK)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (CGColorSpaceGetType() == 3)
      {
        result = ColorSyncProfileCreateWithCalGray(a1, &v16);
        v11 = 0;
        if (!DeviceCMYK)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    result = 0;
    v11 = 0;
    if (DeviceCMYK)
    {
LABEL_30:
      v14 = result;
      CGColorSpaceRelease(DeviceCMYK);
      result = v14;
    }
  }

LABEL_31:
  if (v11 && (result = ColorSyncProfileCreateWithName(v11)) == 0)
  {
    v8 = -21771;
    if (a2)
    {
LABEL_36:
      *a2 = v8;
    }
  }

  else
  {
    v8 = -21778;
    if (result)
    {
      v8 = 0;
    }

    if (a2)
    {
      goto LABEL_36;
    }
  }

  return result;
}

float32x4_t *GetColorspaceTransformsWithTransform(int a1, int a2, int a3, CFArrayRef theArray, uint64_t *a5)
{
  v6 = theArray;
  v269 = a3;
  v275[1] = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    v226 = 0;
    goto LABEL_434;
  }

  v8 = Count;
  v265 = 0;
  v266 = a5;
  v9 = 0;
  v10 = 0;
  v260 = 0;
  v11 = MEMORY[0x277CBC9C0];
  v264 = xmmword_23399FCD0;
  v267 = Count;
  v268 = v6;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
    if (!ValueAtIndex)
    {
      goto LABEL_6;
    }

    v14 = ValueAtIndex;
    v15 = CFGetTypeID(ValueAtIndex);
    if (v15 != CFDictionaryGetTypeID())
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3504, "Unexpected type at code fragment entry %zu. Expected CFDictionary.\n", v10);
      }

      v226 = -21773;
      a5 = v266;
      goto LABEL_433;
    }

    v16 = CFDictionaryGetCount(v14);
    v270 = &v255;
    MEMORY[0x28223BE20]();
    v17 = (8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v18 = (&v255 - v17);
    v19 = (8 * v16) >= 0x200 ? 512 : 8 * v16;
    bzero(&v255 - v17, v19);
    MEMORY[0x28223BE20]();
    v20 = (&v255 - v17);
    bzero(&v255 - v17, v19);
    CFDictionaryGetKeysAndValues(v14, (&v255 - v17), (&v255 - v17));
    v275[0] = 0;
    valuePtr = -1;
    v274 = 0;
    *&v272[36] = 0;
    *&v272[20] = 0;
    *&v272[4] = 0;
    *v272 = 1065353216;
    *&v272[12] = 0x3F8000003F800000;
    *&v272[28] = 0x7F800000FF800000;
    if (v16)
    {
      break;
    }

LABEL_282:
    if ((v269 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3970, "Unknown color space transform type.\n");
    }

    v265 = -21778;
LABEL_4:
    v12 = v9;
LABEL_5:
    v9 = v12;
    v8 = v267;
    v6 = v268;
LABEL_6:
    if (++v10 == v8)
    {
      v226 = v265;
      a5 = v266;
      if (v260 >= 2)
      {
        if (v9)
        {
          v227 = v9->i64[1];
          if (v227)
          {
            v228 = v9;
            do
            {
              v229 = v228;
              v228 = v227;
              while (*v229->i64[0] == 1 && *v228->i64[0] == 1)
              {
                v230 = v229[3];
                v231 = v229[4];
                v232 = v229[5];
                v233 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v231, *v228[3].f32, 1), v230, COERCE_FLOAT(*&v228[3])), v232, v228[3], 2);
                v234 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v231, *v228[4].f32, 1), v230, COERCE_FLOAT(*&v228[4])), v232, v228[4], 2);
                v235 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v231, *v228[5].f32, 1), v230, COERCE_FLOAT(*&v228[5])), v232, v228[5], 2);
                v236 = vaddq_f32(v229[6], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v231, *v228[6].f32, 1), v230, COERCE_FLOAT(*&v228[6])), v232, v228[6], 2));
                v229[3] = v233;
                v229[4] = v234;
                v229[5] = v235;
                v229[6] = v236;
                v237 = vceqzq_f32(v233);
                v238 = vmvnq_s8(v237);
                v239 = vmvnq_s8(vceqzq_f32(v234));
                v240 = vceqzq_f32(v235);
                v241 = vmvnq_s8(v240);
                v242 = vornq_s8(vornq_s8(v239, v237), v240);
                v243 = vpaddq_s32(v238, v239);
                v244 = vaddq_s32(vuzp1q_s32(v241, 0), vuzp2q_s32(v241, 0));
                v245 = v264;
                v246 = vbicq_s8(v264, vceqq_s32(vuzp1q_s32(v243, v244), vnegq_s32(vuzp2q_s32(v243, v244))));
                v247 = vorrq_s8(vuzp1q_s32(v246, v246), vuzp2q_s32(v246, v246));
                v229[2].i16[3] = vorrq_s8(vdupq_lane_s32(*v247.i8, 1), v247).u8[0];
                v248 = vandq_s8(vornq_s8(v242, vceqzq_f32(v236)), v245);
                v249 = vorrq_s8(vuzp1q_s32(v248, v248), vuzp2q_s32(v248, v248));
                v229[2].i16[4] = vorrq_s8(vdupq_lane_s32(*v249.i8, 1), v249).u8[0];
                v250 = v228->i64[1];
                v229->i64[1] = v250;
                v228->i64[1] = 0;
                ColorSpaceTransform_Free(v228);
                v228 = v250;
                if (!v250)
                {
                  goto LABEL_398;
                }
              }

              v227 = v228->i64[1];
            }

            while (v227);
          }
        }
      }

LABEL_398:
      if (v226)
      {
        goto LABEL_433;
      }

      goto LABEL_435;
    }
  }

  v21 = 0;
  v261 = 0;
  v262 = 0;
  v263 = 0;
  v22 = 0;
  while (1)
  {
    if (CFEqual(*v18, *v11))
    {
      v24 = *v20;
      if (*v20)
      {
        v25 = CFGetTypeID(*v20);
        if (v25 != CFNumberGetTypeID())
        {
LABEL_380:
          if ((v269 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3543, "Invalid value for key kColorSyncConversionChannelID. Expected CFNumber.\n");
          }

          goto LABEL_431;
        }
      }

      else
      {
        TypeID = CFNullGetTypeID();
        if (TypeID != CFNumberGetTypeID())
        {
          goto LABEL_380;
        }
      }

      if (!CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr))
      {
        goto LABEL_380;
      }

      goto LABEL_16;
    }

    if (CFEqual(*v18, *MEMORY[0x277CBC9D0]))
    {
      v26 = *v20;
      if (*v20)
      {
        v27 = CFGetTypeID(*v20);
        if (v27 != CFNumberGetTypeID())
        {
          goto LABEL_382;
        }
      }

      else
      {
        v30 = CFNullGetTypeID();
        if (v30 != CFNumberGetTypeID())
        {
          goto LABEL_382;
        }
      }

      if (!CFNumberGetValue(v26, kCFNumberSInt32Type, v275 + 4))
      {
LABEL_382:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3549, "Invalid value for key kColorSyncConversionInpChan. Expected CFNumber.\n");
        }

        goto LABEL_431;
      }

      goto LABEL_16;
    }

    if (CFEqual(*v18, *MEMORY[0x277CBC9E8]))
    {
      v28 = *v20;
      if (*v20)
      {
        v29 = CFGetTypeID(*v20);
        if (v29 != CFNumberGetTypeID())
        {
          goto LABEL_388;
        }
      }

      else
      {
        v32 = CFNullGetTypeID();
        if (v32 != CFNumberGetTypeID())
        {
          goto LABEL_388;
        }
      }

      if (!CFNumberGetValue(v28, kCFNumberSInt32Type, v275))
      {
LABEL_388:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3555, "Invalid value for key kColorSyncConversionOutChan. Expected CFNumber.\n");
        }

        goto LABEL_431;
      }

      goto LABEL_16;
    }

    if (CFEqual(*v18, *MEMORY[0x277CBC9F0]))
    {
      if (*v20)
      {
        v31 = CFGetTypeID(*v20);
        if (v31 != CFArrayGetTypeID())
        {
          goto LABEL_400;
        }
      }

      else
      {
        v34 = CFNullGetTypeID();
        if (v34 != CFArrayGetTypeID())
        {
          goto LABEL_400;
        }
      }

      if (CFArrayGetCount(*v20) <= 0)
      {
LABEL_400:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3562, "Invalid value for key kColorSyncConversionParamCurve0.\n");
        }

        goto LABEL_431;
      }

      v35 = CFArrayGetValueAtIndex(*v20, 0);
      v36 = v35;
      if (v35)
      {
        v37 = CFGetTypeID(v35);
        if (v37 != CFNumberGetTypeID())
        {
          goto LABEL_402;
        }
      }

      else
      {
        v38 = CFNullGetTypeID();
        if (v38 != CFNumberGetTypeID())
        {
          goto LABEL_402;
        }
      }

      if (!CFNumberGetValue(v36, kCFNumberFloat32Type, &v272[12]))
      {
LABEL_402:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3570, "Found invalid value in specified parameters for kColorSyncConversionParamCurve3.\n");
        }

        goto LABEL_431;
      }

      v21 = *&v272[12] == 1.0;
      goto LABEL_228;
    }

    if (CFEqual(*v18, *MEMORY[0x277CBC9F8]))
    {
      if (*v20)
      {
        v33 = CFGetTypeID(*v20);
        if (v33 != CFArrayGetTypeID())
        {
          goto LABEL_404;
        }
      }

      else
      {
        v40 = CFNullGetTypeID();
        if (v40 != CFArrayGetTypeID())
        {
          goto LABEL_404;
        }
      }

      if (CFArrayGetCount(*v20) <= 2)
      {
LABEL_404:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3579, "Invalid value for key kColorSyncConversionParamCurve1.\n");
        }

        goto LABEL_431;
      }

      v41 = CFArrayGetValueAtIndex(*v20, 0);
      v42 = v41;
      if (v41)
      {
        v43 = CFGetTypeID(v41);
        if (v43 == CFNumberGetTypeID())
        {
          goto LABEL_58;
        }
      }

      else
      {
        v50 = CFNullGetTypeID();
        if (v50 == CFNumberGetTypeID())
        {
LABEL_58:
          v44 = CFNumberGetValue(v42, kCFNumberFloat32Type, &v272[12]) != 0;
          v45 = CFArrayGetValueAtIndex(*v20, 1);
          if (v45)
          {
            goto LABEL_59;
          }

          goto LABEL_65;
        }
      }

      v44 = 0;
      v45 = CFArrayGetValueAtIndex(*v20, 1);
      if (v45)
      {
LABEL_59:
        v46 = CFGetTypeID(v45);
        if (v46 == CFNumberGetTypeID())
        {
          goto LABEL_60;
        }

        goto LABEL_66;
      }

LABEL_65:
      v51 = CFNullGetTypeID();
      if (v51 == CFNumberGetTypeID())
      {
LABEL_60:
        v47 = CFNumberGetValue(v45, kCFNumberFloat32Type, v272) != 0;
        v48 = CFArrayGetValueAtIndex(*v20, 2);
        if (v48)
        {
          goto LABEL_61;
        }

        goto LABEL_67;
      }

LABEL_66:
      v47 = 0;
      v48 = CFArrayGetValueAtIndex(*v20, 2);
      if (v48)
      {
LABEL_61:
        v49 = CFGetTypeID(v48);
        if (v49 != CFNumberGetTypeID())
        {
          goto LABEL_406;
        }

LABEL_68:
        Value = CFNumberGetValue(v48, kCFNumberFloat32Type, &v272[4]);
        v54 = !v44 || !v47;
        if (!Value)
        {
          v54 = 1;
        }

        if ((v54 & 1) != 0 || *v272 == 0.0)
        {
LABEL_406:
          if ((v269 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3593, "Found invalid value in specified parameters for kColorSyncConversionParamCurve3.\n");
          }

          goto LABEL_431;
        }

        *&v272[24] = -*&v272[4] / *v272;
        v56 = *v272 == 1.0 && *&v272[12] == 1.0;
        v21 = v56 && *&v272[4] == 0.0;
        goto LABEL_228;
      }

LABEL_67:
      v52 = CFNullGetTypeID();
      if (v52 != CFNumberGetTypeID())
      {
        goto LABEL_406;
      }

      goto LABEL_68;
    }

    if (CFEqual(*v18, *MEMORY[0x277CBCA00]))
    {
      if (*v20)
      {
        v39 = CFGetTypeID(*v20);
      }

      else
      {
        v39 = CFNullGetTypeID();
      }

      if (v39 != CFArrayGetTypeID() || CFArrayGetCount(*v20) <= 3)
      {
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3604, "Invalid value for key kColorSyncConversionParamCurve2.\n");
        }

        goto LABEL_431;
      }

      v58 = CFArrayGetValueAtIndex(*v20, 0);
      v59 = v58;
      if (v58)
      {
        v60 = CFGetTypeID(v58);
        if (v60 == CFNumberGetTypeID())
        {
LABEL_87:
          v259 = CFNumberGetValue(v59, kCFNumberFloat32Type, &v272[12]) != 0;
          goto LABEL_90;
        }
      }

      else
      {
        v61 = CFNullGetTypeID();
        if (v61 == CFNumberGetTypeID())
        {
          goto LABEL_87;
        }
      }

      v259 = 0;
LABEL_90:
      v62 = CFArrayGetValueAtIndex(*v20, 1);
      v63 = v62;
      if (v62)
      {
        v64 = CFGetTypeID(v62);
        if (v64 == CFNumberGetTypeID())
        {
LABEL_92:
          v65 = CFNumberGetValue(v63, kCFNumberFloat32Type, v272) != 0;
          goto LABEL_95;
        }
      }

      else
      {
        v66 = CFNullGetTypeID();
        if (v66 == CFNumberGetTypeID())
        {
          goto LABEL_92;
        }
      }

      v65 = 0;
LABEL_95:
      v67 = CFArrayGetValueAtIndex(*v20, 2);
      v68 = v67;
      if (v67)
      {
        v69 = CFGetTypeID(v67);
        if (v69 == CFNumberGetTypeID())
        {
LABEL_97:
          v70 = CFNumberGetValue(v68, kCFNumberFloat32Type, &v272[4]) != 0;
          goto LABEL_100;
        }
      }

      else
      {
        v71 = CFNullGetTypeID();
        if (v71 == CFNumberGetTypeID())
        {
          goto LABEL_97;
        }
      }

      v70 = 0;
LABEL_100:
      v72 = CFArrayGetValueAtIndex(*v20, 3);
      v73 = v72;
      if (v72)
      {
        v74 = CFGetTypeID(v72);
      }

      else
      {
        v74 = CFNullGetTypeID();
      }

      if (v74 != CFNumberGetTypeID())
      {
        goto LABEL_413;
      }

      v75 = v259 && v65 && v70;
      v76 = CFNumberGetValue(v73, kCFNumberFloat32Type, &v272[8]);
      v77 = !v75;
      if (!v76)
      {
        v77 = 1;
      }

      if ((v77 & 1) != 0 || *v272 == 0.0)
      {
LABEL_413:
        if ((v269 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3619, "Found invalid value in specified parameters for kColorSyncConversionParamCurve3.\n");
        }

        goto LABEL_431;
      }

      *&v272[20] = *&v272[8];
      *&v272[24] = -*&v272[4] / *v272;
      v79 = *v272 == 1.0 && *&v272[12] == 1.0;
      v80 = v79 && *&v272[4] == 0.0;
      if (*&v272[8] != 0.0)
      {
        v80 = 0;
      }

      if ((-*&v272[4] / *v272) <= 0.0)
      {
        v21 = v80;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_228;
    }

    if (!CFEqual(*v18, *MEMORY[0x277CBCA08]))
    {
      break;
    }

    if (*v20)
    {
      v57 = CFGetTypeID(*v20);
    }

    else
    {
      v57 = CFNullGetTypeID();
    }

    if (v57 != CFArrayGetTypeID() || CFArrayGetCount(*v20) <= 4)
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3632, "Invalid value for key kColorSyncConversionParamCurve3.\n");
      }

      goto LABEL_431;
    }

    v82 = CFArrayGetValueAtIndex(*v20, 0);
    v83 = v82;
    if (v82)
    {
      v84 = CFGetTypeID(v82);
    }

    else
    {
      v84 = CFNullGetTypeID();
    }

    v259 = v84 == CFNumberGetTypeID() && CFNumberGetValue(v83, kCFNumberFloat32Type, &v272[12]) != 0;
    v85 = CFArrayGetValueAtIndex(*v20, 1);
    v86 = v85;
    if (v85)
    {
      v87 = CFGetTypeID(v85);
    }

    else
    {
      v87 = CFNullGetTypeID();
    }

    v258 = v87 == CFNumberGetTypeID() && CFNumberGetValue(v86, kCFNumberFloat32Type, v272) != 0;
    v88 = CFArrayGetValueAtIndex(*v20, 2);
    v89 = v88;
    if (v88)
    {
      v90 = CFGetTypeID(v88);
    }

    else
    {
      v90 = CFNullGetTypeID();
    }

    v91 = v90 == CFNumberGetTypeID() && CFNumberGetValue(v89, kCFNumberFloat32Type, &v272[4]) != 0;
    v92 = CFArrayGetValueAtIndex(*v20, 3);
    v93 = v92;
    if (v92)
    {
      v94 = CFGetTypeID(v92);
    }

    else
    {
      v94 = CFNullGetTypeID();
    }

    v95 = v94 == CFNumberGetTypeID() && CFNumberGetValue(v93, kCFNumberFloat32Type, &v272[16]) != 0;
    v96 = CFArrayGetValueAtIndex(*v20, 4);
    v97 = v96;
    if (v96)
    {
      v98 = CFGetTypeID(v96);
    }

    else
    {
      v98 = CFNullGetTypeID();
    }

    if (v98 != CFNumberGetTypeID() || ((v99 = v259 && v258 && v91 && v95, CFNumberGetValue(v97, kCFNumberFloat32Type, &v272[24])) ? (v100 = v99) : (v100 = 0), !v100))
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3648, "Found invalid value in specified parameters for kColorSyncConversionParamCurve3.\n");
      }

      goto LABEL_431;
    }

    v102 = *v272 == 1.0 && *&v272[12] == 1.0;
    v103 = v102 && *&v272[4] == 0.0;
    v104 = *&v272[16] == 1.0;
LABEL_225:
    if (v104)
    {
      v21 = v103;
    }

    else
    {
      v21 = 0;
    }

LABEL_228:
    v22 = 2;
LABEL_16:
    ++v20;
    ++v18;
    if (!--v16)
    {
      if (v21)
      {
        goto LABEL_4;
      }

      if (v22 > 2)
      {
        if (v22 != 3)
        {
          if (valuePtr >= 0x10)
          {
            if ((v269 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3909, "Invalid channelID: %d. Must be in [0, 15].\n", valuePtr);
            }

            goto LABEL_431;
          }

          if (!v9 || *v9->i64[0] != 4 || (v148 = v9[2].u16[3], v149 = 1 << valuePtr, ((1 << valuePtr) & v148) != 0))
          {
            v150 = vImage_malloc(0x170uLL);
            if (!v150)
            {
              goto LABEL_415;
            }

            LOWORD(v148) = 0;
            *v150 = &GetColorspaceTransformsWithTransform_lut1d_vtbl;
            *(v150 + 1) = v9;
            *(v150 + 16) = 0;
            v150[35] = 0;
            *(v150 + 38) = 0;
            v149 = 1 << valuePtr;
            v9 = v150;
          }

          v151 = v148 | v149;
          v9[2].i16[3] = v151;
          v9[2].i16[4] = v151;
          v152 = v262;
          BytePtr = CFDataGetBytePtr(v262);
          v154 = valuePtr;
          v155 = v9 + 8 * valuePtr;
          *(v155 + 6) = BytePtr;
          *(v155 + 30) = v152;
          v9[11].i32[v154] = v274;
          ++v9[2].i8[0];
          ++v9[2].i8[1];
          CFRetain(v152);
          goto LABEL_4;
        }

        v161 = malloc_type_calloc(1uLL, 0x48uLL, 0x107004073900581uLL);
        if (!v161)
        {
          goto LABEL_415;
        }

        v12 = v161;
        v161->i64[0] = &GetColorspaceTransformsWithTransform_lut_vtbl;
        v161->i64[1] = v9;
        v162 = v261;
        v161[3].i64[0] = CFDataGetBytePtr(v261);
        v12[4].i64[0] = v162;
        v164 = v275[0];
        v163 = BYTE4(v275[0]);
        v12[2].i8[0] = BYTE4(v275[0]);
        v12[2].i8[1] = v164;
        v12[2].i8[3] = 1;
        v12[2].i16[3] = ~(-1 << v163);
        v12[2].i16[4] = ~(-1 << v164);
        v12[3].i32[2] = v274;
        CFRetain(v162);
      }

      else
      {
        if (v22 != 1)
        {
          if (v22 != 2)
          {
            goto LABEL_282;
          }

          v138 = valuePtr;
          if (valuePtr >= 0x10)
          {
            if ((v269 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3862, "Invalid channelID: %d. Must be in [0, 15].\n", valuePtr);
            }

            goto LABEL_431;
          }

          if (v9 && *v9->i64[0] == 2 && (v139 = v9[2].u16[3], v140 = 1 << valuePtr, ((1 << valuePtr) & v139) == 0))
          {
            v143 = v9[2].i8[0] + 1;
            v142 = v9[2].i8[1] + 1;
          }

          else
          {
            v141 = vImage_malloc(0x2B0uLL);
            if (!v141)
            {
LABEL_415:
              v226 = -21771;
              goto LABEL_432;
            }

            LOWORD(v139) = 0;
            *v141 = &GetColorspaceTransformsWithTransform_parameter_vtbl;
            *(v141 + 1) = v9;
            *(v141 + 16) = 0;
            v141[35] = 0;
            *(v141 + 38) = 0;
            v138 = valuePtr;
            v142 = 1;
            v140 = 1 << valuePtr;
            v143 = 1;
            v9 = v141;
          }

          v144 = v139 | v140;
          v9[2].i16[3] = v144;
          v9[2].i16[4] = v144;
          v9[2].i8[0] = v143;
          v9[2].i8[1] = v142;
          v145 = v9 + 40 * v138;
          v146 = *&v272[32];
          v147 = *&v272[16];
          *(v145 + 3) = *v272;
          *(v145 + 4) = v147;
          *(v145 + 10) = v146;
          v12 = v9;
          goto LABEL_5;
        }

        v156 = v263;
        if (CFArrayGetCount(v263) <= 2)
        {
          a5 = v266;
          if ((v269 & 0x100) != 0)
          {
            v251 = LogError;
            v252 = CFArrayGetCount(v263);
            v251("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3795, "kColorSpaceTransform_Matrix matrix must have 3 elements. Found %d.\n", v252);
          }

          v226 = -21773;
          goto LABEL_433;
        }

        v157 = vImage_malloc(0x70uLL);
        if (!v157)
        {
          goto LABEL_415;
        }

        v12 = v157;
        v158 = CFArrayGetValueAtIndex(v156, 0);
        v159 = v158;
        if (v158)
        {
          v160 = CFGetTypeID(v158);
        }

        else
        {
          v160 = CFNullGetTypeID();
        }

        if (v160 != CFArrayGetTypeID() || CFArrayGetCount(v159) < 4)
        {
          goto LABEL_408;
        }

        v165 = CFArrayGetValueAtIndex(v159, 0);
        v166 = v165;
        v167 = v165 ? CFGetTypeID(v165) : CFNullGetTypeID();
        LODWORD(v262) = v167 == CFNumberGetTypeID() && CFNumberGetValue(v166, kCFNumberFloat32Type, &v12[3]) != 0;
        v168 = CFArrayGetValueAtIndex(v159, 1);
        v169 = v168;
        v170 = v168 ? CFGetTypeID(v168) : CFNullGetTypeID();
        LODWORD(v261) = v170 == CFNumberGetTypeID() && CFNumberGetValue(v169, kCFNumberFloat32Type, &v12[4]) != 0;
        v171 = CFArrayGetValueAtIndex(v159, 2);
        v172 = v171;
        v173 = v171 ? CFGetTypeID(v171) : CFNullGetTypeID();
        v259 = v173 == CFNumberGetTypeID() && CFNumberGetValue(v172, kCFNumberFloat32Type, &v12[5]) != 0;
        v174 = CFArrayGetValueAtIndex(v159, 3);
        v175 = v174;
        v176 = v174 ? CFGetTypeID(v174) : CFNullGetTypeID();
        v258 = v176 == CFNumberGetTypeID() && CFNumberGetValue(v175, kCFNumberFloat32Type, &v12[6]) != 0;
        v177 = CFArrayGetValueAtIndex(v156, 1);
        v178 = v177;
        v179 = v177 ? CFGetTypeID(v177) : CFNullGetTypeID();
        if (v179 != CFArrayGetTypeID() || CFArrayGetCount(v178) < 4)
        {
          goto LABEL_408;
        }

        v180 = CFArrayGetValueAtIndex(v178, 0);
        v181 = v180;
        v182 = v180 ? CFGetTypeID(v180) : CFNullGetTypeID();
        v257 = v182 == CFNumberGetTypeID() && CFNumberGetValue(v181, kCFNumberFloat32Type, &v12[3].i32[1]) != 0;
        v183 = CFArrayGetValueAtIndex(v178, 1);
        v184 = v183;
        v185 = v183 ? CFGetTypeID(v183) : CFNullGetTypeID();
        v256 = v185 == CFNumberGetTypeID() && CFNumberGetValue(v184, kCFNumberFloat32Type, &v12[4].i32[1]) != 0;
        v186 = CFArrayGetValueAtIndex(v178, 2);
        v187 = v186;
        v188 = v186 ? CFGetTypeID(v186) : CFNullGetTypeID();
        v255 = v188 == CFNumberGetTypeID() && CFNumberGetValue(v187, kCFNumberFloat32Type, &v12[5].i32[1]) != 0;
        v189 = CFArrayGetValueAtIndex(v178, 3);
        v190 = v189;
        v191 = v189 ? CFGetTypeID(v189) : CFNullGetTypeID();
        v192 = v191 == CFNumberGetTypeID() && CFNumberGetValue(v190, kCFNumberFloat32Type, &v12[6].i32[1]) != 0;
        v193 = CFArrayGetValueAtIndex(v156, 2);
        v194 = v193;
        v195 = v193 ? CFGetTypeID(v193) : CFNullGetTypeID();
        if (v195 != CFArrayGetTypeID() || CFArrayGetCount(v194) < 4)
        {
          goto LABEL_408;
        }

        v196 = CFArrayGetValueAtIndex(v194, 0);
        v197 = v196;
        v198 = v196 ? CFGetTypeID(v196) : CFNullGetTypeID();
        v199 = v198 == CFNumberGetTypeID() && CFNumberGetValue(v197, kCFNumberFloat32Type, &v12[3].u32[2]) != 0;
        v200 = CFArrayGetValueAtIndex(v194, 1);
        v201 = v200;
        v202 = v200 ? CFGetTypeID(v200) : CFNullGetTypeID();
        v203 = v202 == CFNumberGetTypeID() && CFNumberGetValue(v201, kCFNumberFloat32Type, &v12[4].u32[2]) != 0;
        v204 = CFArrayGetValueAtIndex(v194, 2);
        v205 = v204;
        v206 = v204 ? CFGetTypeID(v204) : CFNullGetTypeID();
        v207 = v206 == CFNumberGetTypeID() && CFNumberGetValue(v205, kCFNumberFloat32Type, &v12[5].u32[2]) != 0;
        v208 = CFArrayGetValueAtIndex(v194, 3);
        v209 = v208;
        v210 = v208 ? CFGetTypeID(v208) : CFNullGetTypeID();
        if (v210 != CFNumberGetTypeID())
        {
LABEL_408:
          v12[6].i32[3] = 0;
          v12[5].i32[3] = 0;
          v12[4].i32[3] = 0;
          v12[3].i32[3] = 0;
LABEL_409:
          vImage_free(v12);
          if ((v269 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3840, "Invalid data in kColorSpaceTransform_Matrix matrix.\n");
          }

          goto LABEL_431;
        }

        v211 = v262 & v261 & v259 & v258 & v257 & v256 & v255 & v192 & v199 & v203 & v207;
        v212 = CFNumberGetValue(v209, kCFNumberFloat32Type, &v12[6].u32[2]);
        v12[6].i32[3] = 0;
        if (v212)
        {
          v213 = v211;
        }

        else
        {
          v213 = 0;
        }

        v12[5].i32[3] = 0;
        v12[4].i32[3] = 0;
        v12[3].i32[3] = 0;
        if ((v213 & 1) == 0)
        {
          goto LABEL_409;
        }

        v12[2].i16[0] = 771;
        v12->i64[0] = &GetColorspaceTransformsWithTransform_matrix_vtbl;
        v12->i64[1] = v9;
        v12[2].i8[3] = 1;
        v214 = vceqzq_f32(v12[3]);
        v215 = vmvnq_s8(v214);
        v216 = vmvnq_s8(vceqzq_f32(v12[4]));
        v217 = vceqzq_f32(v12[5]);
        v218 = vmvnq_s8(v217);
        v219 = vornq_s8(vornq_s8(v216, v214), v217);
        v220 = vpaddq_s32(v215, v216);
        v221 = vaddq_s32(vuzp1q_s32(v218, 0), vuzp2q_s32(v218, 0));
        v222 = vbicq_s8(v264, vceqq_s32(vuzp1q_s32(v220, v221), vnegq_s32(vuzp2q_s32(v220, v221))));
        v223 = vorrq_s8(vuzp1q_s32(v222, v222), vuzp2q_s32(v222, v222));
        v224 = vandq_s8(vornq_s8(v219, vceqzq_f32(v12[6])), v264);
        v225 = vorrq_s8(vuzp1q_s32(v224, v224), vuzp2q_s32(v224, v224));
        v12[2].i16[3] = vorrq_s8(vdupq_lane_s32(*v223.i8, 1), v223).u8[0];
        v12[2].i16[4] = vorrq_s8(vdupq_lane_s32(*v225.i8, 1), v225).u8[0];
        ++v260;
      }

      goto LABEL_5;
    }
  }

  if (CFEqual(*v18, *MEMORY[0x277CBCA10]))
  {
    if (*v20)
    {
      v81 = CFGetTypeID(*v20);
    }

    else
    {
      v81 = CFNullGetTypeID();
    }

    if (v81 != CFArrayGetTypeID() || CFArrayGetCount(*v20) <= 6)
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3658, "Invalid value for key kColorSyncConversionParamCurve4.\n");
      }

      goto LABEL_431;
    }

    v107 = CFArrayGetValueAtIndex(*v20, 0);
    v108 = v107;
    if (v107)
    {
      v109 = CFGetTypeID(v107);
    }

    else
    {
      v109 = CFNullGetTypeID();
    }

    v259 = v109 == CFNumberGetTypeID() && CFNumberGetValue(v108, kCFNumberFloat32Type, &v272[12]) != 0;
    v110 = CFArrayGetValueAtIndex(*v20, 1);
    v111 = v110;
    if (v110)
    {
      v112 = CFGetTypeID(v110);
    }

    else
    {
      v112 = CFNullGetTypeID();
    }

    v258 = v112 == CFNumberGetTypeID() && CFNumberGetValue(v111, kCFNumberFloat32Type, v272) != 0;
    v113 = CFArrayGetValueAtIndex(*v20, 2);
    v114 = v113;
    if (v113)
    {
      v115 = CFGetTypeID(v113);
    }

    else
    {
      v115 = CFNullGetTypeID();
    }

    v257 = v115 == CFNumberGetTypeID() && CFNumberGetValue(v114, kCFNumberFloat32Type, &v272[4]) != 0;
    v116 = CFArrayGetValueAtIndex(*v20, 3);
    v117 = v116;
    if (v116)
    {
      v118 = CFGetTypeID(v116);
    }

    else
    {
      v118 = CFNullGetTypeID();
    }

    v256 = v118 == CFNumberGetTypeID() && CFNumberGetValue(v117, kCFNumberFloat32Type, &v272[16]) != 0;
    v119 = CFArrayGetValueAtIndex(*v20, 4);
    v120 = v119;
    if (v119)
    {
      v121 = CFGetTypeID(v119);
    }

    else
    {
      v121 = CFNullGetTypeID();
    }

    v122 = v121 == CFNumberGetTypeID() && CFNumberGetValue(v120, kCFNumberFloat32Type, &v272[24]) != 0;
    v123 = CFArrayGetValueAtIndex(*v20, 5);
    v124 = v123;
    if (v123)
    {
      v125 = CFGetTypeID(v123);
    }

    else
    {
      v125 = CFNullGetTypeID();
    }

    v126 = v125 == CFNumberGetTypeID() && CFNumberGetValue(v124, kCFNumberFloat32Type, &v272[8]) != 0;
    v127 = CFArrayGetValueAtIndex(*v20, 6);
    if (v127)
    {
      v128 = v127;
      v129 = CFGetTypeID(v127);
    }

    else
    {
      v128 = 0;
      v129 = CFNullGetTypeID();
    }

    if (v129 != CFNumberGetTypeID() || ((v130 = v259 && v258 && v257 && v256 && v122 && v126, CFNumberGetValue(v128, kCFNumberFloat32Type, &v272[20])) ? (v131 = v130) : (v131 = 0), !v131))
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3676, "Found invalid value in specified parameters for kColorSyncConversionParamCurve4.\n");
      }

      goto LABEL_431;
    }

    v133 = *v272 == 1.0 && *&v272[12] == 1.0;
    v103 = v133 && *&v272[4] == 0.0;
    if (*&v272[8] != 0.0)
    {
      v103 = 0;
    }

    if (*&v272[16] != 1.0)
    {
      v103 = 0;
    }

    v104 = *&v272[20] == 0.0;
    goto LABEL_225;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBC9D8]))
  {
    v105 = *v20;
    if (*v20)
    {
      v106 = CFGetTypeID(*v20);
    }

    else
    {
      v106 = CFNullGetTypeID();
    }

    v263 = v105;
    if (v106 != CFArrayGetTypeID())
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3690, "Invalid value for key kColorSyncConversionMatrix.\n");
      }

      goto LABEL_431;
    }

    v22 = 1;
    goto LABEL_16;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBC9A8]))
  {
    v262 = *v20;
    if (v262)
    {
      v134 = CFGetTypeID(v262);
    }

    else
    {
      v134 = CFNullGetTypeID();
    }

    if (v134 != CFDataGetTypeID())
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3700, "Invalid value for key kColorSyncConversion1DLut.\n");
      }

      goto LABEL_431;
    }

    v22 = 4;
    goto LABEL_16;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBC9C8]))
  {
    if (!SafeCFNumberGetValue(*v20, kCFNumberSInt32Type, &v274))
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3708, "Invalid value for key kColorSyncConversionGridPoints.\n");
      }

      goto LABEL_431;
    }

    goto LABEL_16;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBC9B0]))
  {
    v261 = *v20;
    if (v261)
    {
      v135 = CFGetTypeID(v261);
    }

    else
    {
      v135 = CFNullGetTypeID();
    }

    if (v135 != CFDataGetTypeID())
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3718, "Invalid value for key kColorSyncConversion3DLut.\n");
      }

      goto LABEL_431;
    }

LABEL_257:
    v22 = 3;
    goto LABEL_16;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBC9E0]))
  {
    v261 = *v20;
    if (v261)
    {
      v136 = CFGetTypeID(v261);
    }

    else
    {
      v136 = CFNullGetTypeID();
    }

    if (v136 != CFDataGetTypeID())
    {
      if ((v269 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3728, "Invalid value for key kColorSyncConversionNDLut.\n");
      }

      goto LABEL_431;
    }

    goto LABEL_257;
  }

  if (CFEqual(*v18, *MEMORY[0x277CBCA18]) || CFEqual(*v18, *MEMORY[0x277CBC9B8]) || !CFEqual(*v18, @"com.apple.cmm.FunctionDoesSignedReflection"))
  {
    goto LABEL_16;
  }

  v271 = 0;
  if (*v20)
  {
    v137 = CFGetTypeID(*v20);
  }

  else
  {
    v137 = CFNullGetTypeID();
  }

  if (v137 == CFBooleanGetTypeID() && CFNumberGetValue(*v20, kCFNumberCharType, &v271) || SafeCFNumberGetValue(*v20, kCFNumberCharType, &v271))
  {
    v272[36] = v271 != 0;
    goto LABEL_16;
  }

  if ((v269 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/ColorSpaceTransform.c", 3751, "Invalid value for key kColorSyncFunctionDoesSignedReflection.\n");
  }

LABEL_431:
  v226 = -21773;
LABEL_432:
  a5 = v266;
LABEL_433:
  ColorSpaceTransform_Free(v9);
LABEL_434:
  v9 = 0;
LABEL_435:
  if (a5)
  {
    *a5 = v226;
  }

  v253 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t GetImageWithDataProvider(uint64_t a1, uint64_t a2, uint64_t a3, CGImageRef image, unsigned int a5)
{
  v42 = 0;
  LODWORD(v39) = CGImageGetBitsPerComponent(image);
  DWORD1(v39) = CGImageGetBitsPerPixel(image);
  *(&v39 + 1) = CGImageGetColorSpace(image);
  *&v40 = CGImageGetBitmapInfo(image);
  *(&v40 + 1) = CGImageGetDecode(image);
  RenderingIntent = CGImageGetRenderingIntent(image);
  if (*a2)
  {
    v10 = _vImageCGImageFormat_IsEqual(&v39, a2) == 0;
  }

  else
  {
    v10 = 0;
    v27 = v40;
    *a2 = v39;
    *(a2 + 16) = v27;
    *(a2 + 32) = RenderingIntent;
    if ((a5 & 0x200) != 0 && !*a1)
    {
      return 0;
    }
  }

  *(a1 + 8) = CGImageGetHeight(image);
  *(a1 + 16) = CGImageGetWidth(image);
  DataProvider = CGImageGetDataProvider(image);
  if (!DataProvider)
  {
    return -21781;
  }

  v12 = CGDataProviderCopyData(DataProvider);
  if (!v12)
  {
    return -21781;
  }

  v13 = v12;
  BytePtr = CFDataGetBytePtr(v12);
  BytesPerRow = CGImageGetBytesPerRow(image);
  Length = CFDataGetLength(v13);
  if (!BytePtr || !BytesPerRow || !Length)
  {
    v42 = -21781;
    v28 = -21771;
    goto LABEL_48;
  }

  if ((a5 & 0x200) == 0)
  {
    if (v10)
    {
      if ((a5 & 0xFFFFFCFF) != 0)
      {
        goto LABEL_38;
      }

      v17 = *(a2 + 4);
      v18 = *(a1 + 8);
      v19 = *(a1 + 16);
      *a1 = 0;
      v20 = (v19 * v17 + 7) >> 3;
      if (((2 * MEMORY[0xFFFFFC020]) & 0xE0uLL) <= 2 * v20)
      {
        v21 = (2 * MEMORY[0xFFFFFC020]) & 0xE0;
      }

      else
      {
        v21 = 16;
      }

      v22 = (v20 + v21 - 1) & -v21;
      if ((v22 & (v22 - 1)) == 0 && v22 >= 0x1000)
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24 + v22;
      *(a1 + 24) = v25;
      if (a5 <= 0x1FF)
      {
        if (malloc_type_posix_memalign(a1, v21, v25 * v18, 0x2C15998uLL))
        {
          if (a5)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 208, "vImageBuffer_Init failed: could not allocate buf->data of size %lu\n", *(a1 + 8) * *(a1 + 24));
          }

          goto LABEL_38;
        }

        v42 = 0;
LABEL_40:
        v31 = *(a1 + 8);
        v32 = *(a1 + 16);
        v38[0] = BytePtr;
        v38[1] = v31;
        v38[2] = v32;
        v38[3] = BytesPerRow;
        if (v10)
        {
          v33 = *(a2 + 16);
          v35 = *a2;
          v36 = v33;
          v37 = *(a2 + 32);
          if ((v40 & 0x1F) - 1 <= 1 && (v36 & 0x1F) - 5 <= 1)
          {
            LODWORD(v36) = v36 - 2;
          }

          v34 = Converter_CreateWithCGImageFormat(&v39, &v35, a3, a5 & 0x110, &v42);
          v28 = v42;
          if (!v42)
          {
            v42 = Convert_AnyToAny(v34, v38, a1, 0, a5 & 0x110);
            Converter_Release(v34);
            v28 = v42;
          }

          goto LABEL_48;
        }

        v28 = vmCopyBuffers(v38, a1);
        goto LABEL_47;
      }
    }

    else
    {
      v29 = (1 << (__clz((BytePtr - 1) ^ BytePtr) ^ 0x3Fu)) & ((BytePtr - 1) ^ BytePtr);
      if (v29 >= *MEMORY[0x277D85FA0])
      {
        v29 = *MEMORY[0x277D85FA0];
      }

      if (v29 <= ((2 * MEMORY[0xFFFFFC020]) & 0xE0uLL))
      {
        v30 = (2 * MEMORY[0xFFFFFC020]) & 0xE0;
      }

      else
      {
        v30 = v29;
      }

      *(a1 + 24) = BytesPerRow;
      v21 = malloc_type_posix_memalign(a1, v30, *(a1 + 8) * BytesPerRow, 0xB3D6B13AuLL);
    }

    v42 = v21;
    if (!v21)
    {
      goto LABEL_40;
    }

LABEL_38:
    v28 = -21771;
LABEL_47:
    v42 = v28;
LABEL_48:
    if ((a5 & 0x200) == 0)
    {
      if (v28)
      {
        free(*a1);
        *a1 = 0;
      }
    }

    goto LABEL_51;
  }

  if (*(a1 + 24) >= (*(a1 + 16) * *(a2 + 4) + 7) >> 3)
  {
    goto LABEL_40;
  }

  v42 = -21777;
LABEL_51:
  CFRelease(v13);
  return v42;
}

void __RenderingIntentName_block_invoke()
{
  v0 = *MEMORY[0x277CBCA40];
  qword_280AC12E0 = *MEMORY[0x277CBCA60];
  *algn_280AC12E8 = v0;
  v1 = *MEMORY[0x277CBCA48];
  qword_280AC12F0 = *MEMORY[0x277CBCA50];
  unk_280AC12F8 = v1;
  qword_280AC1300 = *MEMORY[0x277CBCA58];
}

uint64_t __GetColorspaceTransformsWithTransformWithCGColorConversionInfo_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 68);
  memset(v14, 0, 36);
  v7 = *(v6 + 8 * a4);
  CGColorNxMTransformGetTransform();
  result = malloc_type_calloc(1uLL, 4 * *(v14 + 12) + 72, 0x10E004062AC84A7uLL);
  if (result)
  {
    v11 = result;
    *(result + 32) = 0;
    *(result + 33) = 0;
    *result = &CreateLUTStep_lut_vtbl;
    *(result + 8) = 0;
    *(result + 35) = 1;
    *(result + 38) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    v12 = *(v6 + 8 * a4);
    *(v11 + 56) = v12;
    *(v11 + 64) = *(&v14[1] + 12);
    CFRetain(v12);
    v8 = *(v5 + 16);
    if (v8)
    {
      *(v11 + 8) = v8;
      *(v5 + 16) = v11;
      v9 = *v11;
      if (!*v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v5 + 16) = v11;
      *(v5 + 24) = v11;
      v9 = *v11;
      if (!*v11)
      {
        goto LABEL_10;
      }
    }

    if (*(v9 + 144) == DoConvert_MatrixStep)
    {
      return 1;
    }

LABEL_10:
    v13 = *(v5 + 34);
    if (v13 <= *(v11 + 33))
    {
      LOBYTE(v13) = *(v11 + 33);
    }

    *(v5 + 34) = v13;
    return 1;
  }

  return result;
}

ColorSyncProfile *ColorSyncProfileCreateWithCalGray(uint64_t a1, uint64_t *a2)
{
  *&bytes[136] = *MEMORY[0x277D85DE8];
  CGColorSpaceGetCalibratedGrayData();
  v10[0] = 0.0;
  v10[1] = 0.0;
  v10[2] = 0.0;
  v9[0] = 0.0;
  v9[1] = 0.0;
  v9[2] = 0.0;
  Mutable = ColorSyncProfileCreateMutable();
  if (!Mutable)
  {
    v6 = -21771;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *bytes = xmmword_23399FAB0;
  bytes[25] = unk_23399FAC9;
  *&bytes[26] = unk_23399FACA;
  *&bytes[28] = unk_23399FACC;
  *&bytes[64] = xmmword_23399FAF0;
  *&bytes[80] = *"lppa";
  memset(&bytes[96], 0, 32);
  *&bytes[32] = xmmword_23399FAD0;
  *&bytes[48] = unk_23399FAE0;
  strcpy(&bytes[12], "rtnmYARG ZYX");
  v4 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x277CBED00]);
  if (v4)
  {
    v5 = v4;
    ColorSyncProfileSetHeader(Mutable, v4);
    CFRelease(v5);
  }

  set_profile_description_tag(Mutable, "CG Cal Gray");
  set_XYZ_tag(Mutable, 2004119668, v10);
  set_XYZ_tag(Mutable, 1651208308, v9);
  set_TRC_tag(Mutable, 0.0);
  v6 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v6;
  }

LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return Mutable;
}

ColorSyncProfile *ColorSyncProfileCreateWithCalRGB(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  CGColorSpaceGetCalibratedRGBData();
  v10[0] = 0.0;
  v10[1] = 0.0;
  v10[2] = 0.0;
  v9[0] = 0.0;
  v9[1] = 0.0;
  v9[2] = 0.0;
  Mutable = ColorSyncProfileCreateMutable();
  if (!Mutable)
  {
    v6 = -21771;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *bytes = xmmword_23399FAB0;
  v12 = unk_23399FAC9;
  v13 = unk_23399FACA;
  v14 = unk_23399FACC;
  v17 = xmmword_23399FAF0;
  v18 = *"lppa";
  v19 = xmmword_23399FB10;
  v20 = unk_23399FB20;
  v15 = xmmword_23399FAD0;
  v16 = unk_23399FAE0;
  strcpy(&bytes[12], "rtnm BGR ZYX");
  v4 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x277CBED00]);
  if (v4)
  {
    v5 = v4;
    ColorSyncProfileSetHeader(Mutable, v4);
    CFRelease(v5);
  }

  set_profile_description_tag(Mutable, "CG Cal RGB");
  set_XYZ_tag(Mutable, 2004119668, v10);
  set_XYZ_tag(Mutable, 1651208308, v9);
  set_TRC_tag(Mutable, 0.0);
  set_TRC_tag(Mutable, 0.0);
  set_TRC_tag(Mutable, 0.0);
  *bytes = 0.0;
  *&bytes[8] = *bytes;
  *&bytes[16] = *bytes;
  ColorSyncConvertDoubleXYZToD50();
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  set_XYZ_tag(Mutable, 1918392666, &v21);
  *bytes = 0.0;
  *&bytes[8] = *bytes;
  *&bytes[16] = *bytes;
  ColorSyncConvertDoubleXYZToD50();
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  set_XYZ_tag(Mutable, 1733843290, &v21);
  *bytes = 0.0;
  *&bytes[8] = *bytes;
  *&bytes[16] = *bytes;
  ColorSyncConvertDoubleXYZToD50();
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  set_XYZ_tag(Mutable, 1649957210, &v21);
  v6 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v6;
  }

LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return Mutable;
}

ColorSyncProfile *ColorSyncProfileCreateWithLab(uint64_t a1, uint64_t *a2)
{
  *&bytes[136] = *MEMORY[0x277D85DE8];
  CGColorSpaceGetLabData();
  v18[0] = 0.0;
  v18[1] = 0.0;
  v18[2] = 0.0;
  v17[0] = 0.0;
  v17[1] = 0.0;
  v17[2] = 0.0;
  Mutable = ColorSyncProfileCreateMutable();
  if (!Mutable)
  {
    v14 = -21771;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *bytes = xmmword_23399FAB0;
  bytes[25] = unk_23399FAC9;
  *&bytes[26] = unk_23399FACA;
  *&bytes[28] = unk_23399FACC;
  *&bytes[64] = xmmword_23399FAF0;
  *&bytes[80] = *"lppa";
  memset(&bytes[96], 0, 32);
  *&bytes[32] = xmmword_23399FAD0;
  *&bytes[48] = unk_23399FAE0;
  strcpy(&bytes[12], "caps baL baL");
  v4 = *MEMORY[0x277CBED00];
  v5 = CFDataCreateWithBytesNoCopy(0, bytes, 128, *MEMORY[0x277CBED00]);
  if (v5)
  {
    v6 = v5;
    ColorSyncProfileSetHeader(Mutable, v5);
    CFRelease(v6);
  }

  set_profile_description_tag(Mutable, "CG Cal Lab");
  set_XYZ_tag(Mutable, 2004119668, v18);
  set_XYZ_tag(Mutable, 1651208308, v17);
  v7 = malloc_type_calloc(1uLL, 0x7EuLL, 0x10000409C08D13AuLL);
  if (v7)
  {
    v8 = v7;
    *(v7 + 4) = 771;
    v7[10] = 2;
    *(v7 + 11) = 0x10000;
    *v7 = 846489197;
    v9 = *(v7 + 5);
    v10 = bswap32(*(v7 + 4));
    *(v7 + 3) = 256;
    *(v7 + 4) = v10;
    v11 = bswap32(v9);
    v12 = bswap32(*(v7 + 6));
    *(v7 + 5) = v11;
    *(v7 + 6) = v12;
    *(v7 + 7) = 256;
    *(v7 + 6) = 0xFFFF000002000200;
    *(v7 + 7) = 0xFFFF0000FFFF0000;
    *(v7 + 8) = 0;
    *(v7 + 36) = 0;
    *(v7 + 74) = 0xFFFF0000FFFFLL;
    *(v7 + 82) = -65536;
    *(v7 + 90) = 0xFFFF00000000;
    *(v7 + 98) = 0xFFFFFFFFFFFFLL;
    *(v7 + 106) = 0xFFFFFFFFFFFFLL;
    *(v7 + 114) = 0xFFFF0000FFFFLL;
    *(v7 + 61) = -1;
    *(v7 + 62) = bswap32(*(v7 + 62)) >> 16;
    v13 = CFDataCreateWithBytesNoCopy(0, v7, 126, v4);
    ColorSyncProfileSetTag(Mutable, @"A2B0", v13);
    ColorSyncProfileSetTag(Mutable, @"B2A0", v13);
    if (v13)
    {
      CFRelease(v13);
    }

    free(v8);
  }

  v14 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v14;
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t CreateRGBColorSpaceWithPrimariesAndTransferFunction(float *a1, double *a2, int a3, __int16 a4, uint64_t *a5)
{
  v6 = a2[4];
  if (v6 != 0.0)
  {
    v47 = a1[3];
    v48 = a1[2];
    v11 = a1[5];
    v51 = a1[4];
    v12 = a1[6];
    v46 = a1[7];
    v13 = a1[1];
    v49 = *a1;
    v15 = a2[1];
    v44 = *a2;
    v41 = a2[2];
    v42 = a2[3];
    v17 = a2[5];
    v16 = a2[6];
    v18 = a2[7];
    Mutable = CFDataCreateMutable(0, 1064);
    if (Mutable)
    {
      v19 = -v18 / v16;
      v20 = 1.0 / v16;
      v39 = v20;
      v40 = v19;
      v21 = v18 + v16 * v17;
      v22 = -v41 / v15;
      v23 = v44 * pow(v15, v6);
      v24 = -v42 / v23;
      v25 = 1.0 / v23;
      v26 = 1.0 / v6;
      *&v23 = v46 * ((((v11 * (v48 - v49)) + (v51 * (v13 - v48))) + (v12 * (v49 - v13))) + 0.0);
      v27 = (v12 * ((((v11 * (v47 - v49)) + ((v13 - v47) * v51)) + 0.0) + ((v49 - v13) * v46))) / *&v23;
      v28.n128_u32[3] = 0;
      v28.n128_f32[0] = (v48 * v27) / v12;
      v28.n128_f32[1] = v27;
      v28.n128_f32[2] = ((1.0 - (v48 + v12)) * v27) / v12;
      v29 = (v11 * (((((v47 - v48) * v51) + 0.0) + ((v49 - v47) * v12)) + ((v48 - v49) * v46))) / *&v23;
      v30.n128_u32[3] = 0;
      v30.n128_f32[0] = (v13 * v29) / v11;
      v30.n128_f32[1] = v29;
      v30.n128_f32[2] = ((1.0 - (v11 + v13)) * v29) / v11;
      v43 = v30;
      v45 = v28;
      *&v23 = (v51 * (((((v48 - v47) * v11) + 0.0) + ((v47 - v13) * v12)) + ((v13 - v48) * v46))) / *&v23;
      v31.n128_u32[3] = 0;
      v31.n128_f32[0] = (v49 * *&v23) / v51;
      v31.n128_u32[1] = LODWORD(v23);
      v31.n128_f32[2] = ((1.0 - (v51 + v49)) * *&v23) / v51;
      v50 = v31;
      CFDataSetLength(Mutable, 1064);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      InitICCHeader(MutableBytePtr, 0x428u, a3, 0x52474220u);
      *(MutableBytePtr + 32) = 0;
      InitICCTextDescription(MutableBytePtr, (MutableBytePtr + 252), 0x64657363u, "vImage colorspace from primaries and transfer function");
      InitICCTextDescription(MutableBytePtr, (MutableBytePtr + 536), 0x63707274u, "Copyright (c) 2015 Apple Inc. All rights reserved.");
      v33 = a1[3];
      v34 = a1[7];
      v35.n128_f32[0] = v33 / v34;
      v35.n128_u32[1] = 1.0;
      v35.n128_f32[2] = (1.0 - (v33 + v34)) / v34;
      v35.n128_u32[3] = 0;
      v52 = v35.n128_f64[0];
      inited = InitColorantTag(MutableBytePtr, (MutableBytePtr + 820), 0x77747074u, v35.n128_f64[0], v35);
      InitChromaticAdaptationTag(MutableBytePtr, (MutableBytePtr + 840), CreateRGBColorSpaceWithPrimariesAndTransferFunction_bradfordChromaticAdaptationMatrix, inited);
      InitTRC_parametricTag(MutableBytePtr, (MutableBytePtr + 884), 0x72545243u, v25, v24, v22, v21, v39, v40, v26);
      InitTRC_parametricTag(MutableBytePtr, (MutableBytePtr + 924), 0x67545243u, v25, v24, v22, v21, v39, v40, v26);
      InitTRC_parametricTag(MutableBytePtr, (MutableBytePtr + 964), 0x62545243u, v25, v24, v22, v21, v39, v40, v26);
      InitColorantTag(MutableBytePtr, (MutableBytePtr + 1004), 0x7258595Au, v52, v50);
      InitColorantTag(MutableBytePtr, (MutableBytePtr + 1024), 0x6758595Au, v52, v43);
      v37 = InitColorantTag(MutableBytePtr, (MutableBytePtr + 1044), 0x6258595Au, v52, v45);
      v7 = MEMORY[0x2383ADE50](Mutable, v37);
      v9 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      v9 = -21771;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    *a5 = v9;
    goto LABEL_9;
  }

  if ((a4 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/iccUtils.c", 1121, "vImageCreateRGBColorSpaceWithPrimariesAndTransferFunction error: gamma is 0\n");
  }

  v7 = 0;
  Mutable = 0;
  v9 = -21773;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

double InitICCHeader(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  *a1 = bswap32(a2);
  *(a1 + 4) = 1819308129;
  *(a1 + 8) = 0x72746E6D00003004;
  *(a1 + 16) = bswap32(a4);
  *(a1 + 20) = 542792024;
  v9 = 0;
  time(&v9);
  v6 = localtime(&v9);
  if (v6)
  {
    *(a1 + 24) = bswap32(v6[10] + 1900) >> 16;
    *(a1 + 26) = bswap32(v6[8] + 1) >> 16;
    *(a1 + 28) = bswap32(v6[6]) >> 16;
    *(a1 + 30) = bswap32(v6[4]) >> 16;
    *(a1 + 32) = bswap32(v6[2]) >> 16;
    *(a1 + 34) = bswap32(*v6) >> 16;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v7 = 0;
  *(a1 + 36) = 0x4C50504170736361;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 0;
  if ((a3 - 1) <= 3)
  {
    v7 = dword_23399FB30[a3 - 1];
  }

  *(a1 + 64) = v7;
  *(a1 + 68) = bswap32(llroundf(63190.0));
  *(a1 + 72) = bswap32(llroundf(65536.0));
  *(a1 + 76) = bswap32(llroundf(54061.0));
  *(a1 + 80) = 1819304289;
  result = 0.0;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

void InitICCTextDescription(uint64_t a1, uint64_t a2, unsigned int a3, char *cStr)
{
  v4 = bswap32(*(a1 + 128));
  if (v4 <= 9)
  {
    *(a1 + 128) = (v4 << 24) + 0x1000000;
    v6 = (a1 + 12 * v4);
    v6[33] = bswap32(a3);
    v6[34] = bswap32(a2 - a1);
    v6[35] = 469827584;
    *a2 = 0;
    *(a2 + 8) = 0xC00000001000000;
    *a2 = 1668639853;
    *(a2 + 16) = 28261;
    *(a2 + 18) = 18435;
    *(a2 + 20) = 0x1C00000000010000;
    *(a2 + 28) = 0u;
    v7 = (a2 + 28);
    *(a2 + 44) = 0u;
    *(a2 + 60) = 0u;
    *(a2 + 76) = 0u;
    *(a2 + 92) = 0u;
    *(a2 + 108) = 0u;
    *(a2 + 124) = 0u;
    *(a2 + 140) = 0u;
    *(a2 + 156) = 0u;
    *(a2 + 172) = 0u;
    *(a2 + 188) = 0u;
    *(a2 + 204) = 0u;
    *(a2 + 220) = 0u;
    *(a2 + 236) = 0u;
    *(a2 + 252) = 0u;
    *(a2 + 268) = 0u;
    if (cStr)
    {
      v8 = CFStringCreateWithCString(0, cStr, 0x600u);
      if (v8)
      {
        v9 = v8;
        Length = CFStringGetLength(v8);
        v17.location = 0;
        v17.length = Length;
        CFStringGetCharacters(v9, v17, v7);
        if (Length)
        {
          v11 = *v7;
          if (*v7)
          {
            v12 = (a2 + 30);
            v13 = 1;
            do
            {
              *(v12 - 1) = bswap32(v11) >> 16;
              if (v13 >= Length)
              {
                break;
              }

              v14 = *v12++;
              v11 = v14;
              ++v13;
            }

            while (v14);
          }
        }

        v15 = 127;
        if (Length < 0x7F)
        {
          v15 = Length;
        }

        v7[v15] = 0;

        CFRelease(v9);
      }
    }
  }
}

float InitColorantTag(uint64_t a1, uint64_t a2, unsigned int a3, double a4, __n128 a5)
{
  v5 = bswap32(*(a1 + 128));
  if (v5 <= 9)
  {
    *(a1 + 128) = (v5 << 24) + 0x1000000;
    v6 = (a1 + 12 * v5);
    v6[33] = bswap32(a3);
    v6[34] = bswap32(a2 - a1);
    v6[35] = 335544320;
    *a2 = 0;
    v7 = a5.n128_f32[1];
    v8 = a5.n128_f32[2];
    if (a5.n128_f32[2] != 0.8249 && a5.n128_f32[0] != 0.9642 && a5.n128_f32[1] != 1.0)
    {
      v11 = a2;
      ColorSyncConvertDoubleXYZToD50();
      a2 = v11;
      a5.n128_f32[0] = 0.0;
      v7 = 0.0;
      v8 = 0.0;
    }

    *a2 = 542792024;
    *(a2 + 8) = bswap32(llroundf(a5.n128_f32[0] * 65536.0));
    *(a2 + 12) = bswap32(llroundf(v7 * 65536.0));
    result = v8 * 65536.0;
    *(a2 + 16) = bswap32(llroundf(v8 * 65536.0));
  }

  return result;
}

float InitChromaticAdaptationTag(uint64_t a1, uint64_t a2, float *a3, float result)
{
  v4 = bswap32(*(a1 + 128));
  if (v4 <= 9)
  {
    *(a1 + 128) = (v4 << 24) + 0x1000000;
    v5 = (a1 + 12 * v4);
    v5[33] = 1684105315;
    v5[34] = bswap32(a2 - a1);
    v5[35] = 738197504;
    *a2 = 0;
    *a2 = 842229363;
    v6 = -0.000015259;
    if (*a3 >= -0.000015259)
    {
      v7 = *a3;
    }

    else
    {
      v7 = -0.000015259;
    }

    if (v7 <= 65536.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 65536.0;
    }

    *(a2 + 8) = llroundf(v8 * 65536.0);
    v9 = a3[1];
    if (v9 < -0.000015259)
    {
      v9 = -0.000015259;
    }

    if (v9 > 65536.0)
    {
      v9 = 65536.0;
    }

    *(a2 + 12) = llroundf(v9 * 65536.0);
    v10 = a3[2];
    if (v10 < -0.000015259)
    {
      v10 = -0.000015259;
    }

    if (v10 > 65536.0)
    {
      v10 = 65536.0;
    }

    *(a2 + 16) = llroundf(v10 * 65536.0);
    v11 = a3[4];
    if (v11 < -0.000015259)
    {
      v11 = -0.000015259;
    }

    if (v11 > 65536.0)
    {
      v11 = 65536.0;
    }

    *(a2 + 20) = llroundf(v11 * 65536.0);
    v12 = a3[5];
    if (v12 < -0.000015259)
    {
      v12 = -0.000015259;
    }

    if (v12 > 65536.0)
    {
      v12 = 65536.0;
    }

    *(a2 + 24) = llroundf(v12 * 65536.0);
    v13 = a3[6];
    if (v13 < -0.000015259)
    {
      v13 = -0.000015259;
    }

    if (v13 > 65536.0)
    {
      v13 = 65536.0;
    }

    *(a2 + 28) = llroundf(v13 * 65536.0);
    v14 = a3[8];
    if (v14 < -0.000015259)
    {
      v14 = -0.000015259;
    }

    if (v14 > 65536.0)
    {
      v14 = 65536.0;
    }

    *(a2 + 32) = llroundf(v14 * 65536.0);
    v15 = a3[9];
    if (v15 < -0.000015259)
    {
      v15 = -0.000015259;
    }

    if (v15 > 65536.0)
    {
      v15 = 65536.0;
    }

    *(a2 + 36) = llroundf(v15 * 65536.0);
    if (a3[10] >= -0.000015259)
    {
      v6 = a3[10];
    }

    if (v6 > 65536.0)
    {
      v6 = 65536.0;
    }

    result = v6 * 65536.0;
    *(a2 + 40) = llroundf(result);
  }

  return result;
}

float InitTRC_parametricTag(uint64_t a1, uint64_t a2, unsigned int a3, float result, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v10 = bswap32(*(a1 + 128));
  if (v10 > 9)
  {
    return result;
  }

  *(a1 + 128) = (v10 << 24) + 0x1000000;
  v11 = (a1 + 12 * v10);
  v11[33] = bswap32(a3);
  v11[34] = bswap32(a2 - a1);
  v11[35] = 671088640;
  *a2 = 0;
  if (a7 < -INFINITY || a7 > -INFINITY || result != 1.0 || a5 != 0.0 || a6 != 0.0)
  {
    *a2 = 1634886000;
    if (result >= -0.000015259)
    {
      v12 = result;
    }

    else
    {
      v12 = -0.000015259;
    }

    if (v12 > 65536.0)
    {
      v12 = 65536.0;
    }

    v13 = llroundf(v12 * 65536.0);
    if (a5 >= -0.000015259)
    {
      v14 = a5;
    }

    else
    {
      v14 = -0.000015259;
    }

    if (v14 > 65536.0)
    {
      v14 = 65536.0;
    }

    v15 = llroundf(v14 * 65536.0);
    if (a6 < -0.000015259)
    {
      a6 = -0.000015259;
    }

    if (a6 > 65536.0)
    {
      a6 = 65536.0;
    }

    v16 = llroundf(a6 * 65536.0);
    if (a7 >= -0.000015259)
    {
      v17 = a7;
    }

    else
    {
      v17 = -0.000015259;
    }

    if (v17 > 65536.0)
    {
      v17 = 65536.0;
    }

    v18 = llroundf(v17 * 65536.0);
    if (a8 >= -0.000015259)
    {
      v19 = a8;
    }

    else
    {
      v19 = -0.000015259;
    }

    if (v19 > 65536.0)
    {
      v19 = 65536.0;
    }

    v20 = llroundf(v19 * 65536.0);
    *(a2 + 10) = 0;
    if (a9 >= -0.000015259)
    {
      v21 = a9;
    }

    else
    {
      v21 = -0.000015259;
    }

    if (v21 > 65536.0)
    {
      v21 = 65536.0;
    }

    v22 = llroundf(v21 * 65536.0);
    if (a10 >= -0.000015259)
    {
      v23 = a10;
    }

    else
    {
      v23 = -0.000015259;
    }

    if (v23 > 65536.0)
    {
      v23 = 65536.0;
    }

    *(a2 + 12) = bswap32(llroundf(v23 * 65536.0));
    *(a2 + 16) = bswap32(v13);
    *(a2 + 20) = bswap32(v15);
    *(a2 + 24) = bswap32(v16);
    v24 = bswap32(v20);
    *(a2 + 28) = bswap32(v18);
    *(a2 + 32) = v24;
    *(a2 + 36) = bswap32(v22);
    if (v16 != v22)
    {
      goto LABEL_53;
    }

    v25 = -a5 / result;
    if (v25 < -0.000015259)
    {
      v25 = -0.000015259;
    }

    if (v25 > 65536.0)
    {
      v25 = 65536.0;
    }

    result = v25 * 65536.0;
    if (v18 == llroundf(result) && v20 == 0)
    {
      if (v16)
      {
        v27 = 512;
      }

      else
      {
        v27 = 256;
      }

      goto LABEL_54;
    }

    if (!v16)
    {
      *(a2 + 24) = v24;
      v27 = 768;
    }

    else
    {
LABEL_53:
      v27 = 1024;
    }

LABEL_54:
    *(a2 + 8) = v27;
    return result;
  }

  *a2 = 1987212643;
  if (a10 == 0.0)
  {
    *(a2 + 8) = 0;
  }

  else
  {
    *(a2 + 8) = 0x1000000;
    v28 = 0.0;
    if (a10 >= 0.0)
    {
      v28 = a10;
    }

    if (v28 > 256.0)
    {
      v28 = 256.0;
    }

    result = v28 * 256.0;
    *(a2 + 12) = bswap32(llroundf(result)) >> 16;
  }

  return result;
}

uint64_t CreateMonochromeColorSpaceWithWhitePointAndTransferFunction(float *a1, double *a2, int a3, __int16 a4, uint64_t *a5)
{
  v6 = a2[4];
  if (v6 != 0.0)
  {
    v13 = *a2;
    v12 = a2[1];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[5];
    v17 = a2[6];
    v18 = a2[7];
    Mutable = CFDataCreateMutable(0, 924);
    if (Mutable)
    {
      v19 = -v18 / v17;
      v20 = 1.0 / v17;
      v33 = v20;
      v34 = v19;
      v21 = v18 + v17 * v16;
      v22 = -v14 / v12;
      v23 = v13 * pow(v12, v6);
      v24 = -v15 / v23;
      v25 = 1.0 / v23;
      CFDataSetLength(Mutable, 924);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      InitICCHeader(MutableBytePtr, 0x39Cu, a3, 0x47524159u);
      *(MutableBytePtr + 32) = 0;
      InitICCTextDescription(MutableBytePtr, (MutableBytePtr + 252), 0x64657363u, "vImage colorspace from white point and transfer function");
      InitICCTextDescription(MutableBytePtr, (MutableBytePtr + 536), 0x63707274u, "Copyright (c) 2015 Apple Inc. All rights reserved.");
      v28 = a1[1];
      v29.n128_f32[0] = *a1 / v28;
      v29.n128_u32[1] = 1.0;
      v29.n128_f32[2] = (1.0 - (*a1 + v28)) / v28;
      v29.n128_u32[3] = 0;
      inited = InitColorantTag(MutableBytePtr, (MutableBytePtr + 820), 0x77747074u, v29.n128_f64[0], v29);
      InitChromaticAdaptationTag(MutableBytePtr, (MutableBytePtr + 840), CreateMonochromeColorSpaceWithWhitePointAndTransferFunction_bradfordChromaticAdaptationMatrix, inited);
      v26 = 1.0 / v6;
      v31 = InitTRC_parametricTag(MutableBytePtr, (MutableBytePtr + 884), 0x6B545243u, v25, v24, v22, v21, v33, v34, v26);
      v7 = MEMORY[0x2383ADE50](Mutable, v31);
      v9 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      v9 = -21771;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    *a5 = v9;
    goto LABEL_9;
  }

  if ((a4 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/iccUtils.c", 1270, "vImageCreateRGBColorSpaceWithPrimariesAndTransferFunction error: gamma is 0\n");
  }

  v7 = 0;
  Mutable = 0;
  v9 = -21773;
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void set_profile_description_tag(ColorSyncProfile *a1, char *__s)
{
  v4 = strlen(__s);
  Mutable = CFDataCreateMutable(0, v4 + 91);
  if (Mutable)
  {
    v6 = Mutable;
    CFDataSetLength(Mutable, v4 + 91);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    if (MutableBytePtr)
    {
      v8 = MutableBytePtr;
      bzero(MutableBytePtr, v4 + 91);
      *v8 = 1668506980;
      *(v8 + 2) = bswap32(v4 + 1);
      if (v4 != -1)
      {
        memcpy(v8 + 12, __s, v4 + 1);
      }

      ColorSyncProfileSetTag(a1, @"desc", v6);
    }

    CFRelease(v6);
  }
}

void set_XYZ_tag(ColorSyncProfile *a1, uint64_t a2, float *a3)
{
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode();
  v6 = a3[1];
  v7 = llroundf(*a3 * 65536.0);
  *bytes = 542792024;
  v8 = llroundf(a3[2] * 65536.0);
  v11 = bswap32(v7);
  v12 = bswap32(llroundf(v6 * 65536.0));
  v13 = bswap32(v8);
  v9 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *MEMORY[0x277CBED00]);
  ColorSyncProfileSetTag(a1, SignatureFromFourCharCode, v9);
  if (SignatureFromFourCharCode)
  {
    CFRelease(SignatureFromFourCharCode);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void set_TRC_tag(ColorSyncProfile *a1, float a2)
{
  v4 = a2 != 0.0;
  SignatureFromFourCharCode = ColorSyncCreateSignatureFromFourCharCode();
  v7 = 1987212643;
  v8 = v4 << 24;
  v9 = __rev16((a2 * 256.0 + 0.5));
  v6 = CFDataCreateWithBytesNoCopy(0, &v7, 14, *MEMORY[0x277CBED00]);
  ColorSyncProfileSetTag(a1, SignatureFromFourCharCode, v6);
  if (SignatureFromFourCharCode)
  {
    CFRelease(SignatureFromFourCharCode);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t Buffer_InitWithCVPixelBuffer(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, __CVBuffer *a4, uint64_t a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  if (a1)
  {
    if (pixelBuffer)
    {
      if (a2)
      {
        v11 = a4;
        if (!a4)
        {
          v11 = CVImageFormat_CreateWithCVPixelBuffer(pixelBuffer);
          if (!v11)
          {
            v22 = -21778;
LABEL_40:
            result = v22;
            goto LABEL_41;
          }
        }

        v13 = *a2;
        if (!*a2)
        {
          v22 = CVImageFormat_InitvImageCGImageFormat(v11, a2, 0);
          if (v22)
          {
LABEL_38:
            if (!a4)
            {
              CVImageFormat_Release(v11);
            }

            goto LABEL_40;
          }

          CGColorSpaceRetain(*(a2 + 8));
        }

        Height = CVPixelBufferGetHeight(pixelBuffer);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        v16 = a6;
        if ((a6 & 0x200) != 0)
        {
          v17 = 0;
          *(a1 + 8) = Height;
          *(a1 + 16) = Width;
        }

        else
        {
          v22 = _vImageBuffer_Init(a1, Height, Width, *(a2 + 4), a6 & 0x100);
          if (v22)
          {
LABEL_35:
            if (!v13 && v22)
            {
              CGColorSpaceRelease(*(a2 + 8));
            }

            goto LABEL_38;
          }

          v17 = 1;
          v16 = a6;
        }

        v19 = Converter_CreateForCVToCGImageFormat(v11, a2, a5, v16 & 0xFFFFFDFF, &v22);
        if (v19)
        {
          v20 = v19;
          if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
          {
            if ((a6 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 105, "vImageBuffer_InitWithCVPixelBuffer error: could not lock CVPixelBufferRef <%p>\n", pixelBuffer);
            }

            v22 = -21781;
          }

          else
          {
            v22 = Buffer_InitForCopyFromCVPixelBuffer(v23, v20, pixelBuffer, a6 | 0x200u);
            if (!v22)
            {
              v22 = Convert_AnyToAny(v20, v23, a1, 0, a6 & 0xFFFFFDFF);
              if (!v22)
              {
                v17 = 0;
              }
            }

            CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          }

          Converter_Release(v20);
        }

        if (v17)
        {
          free(*a1);
          *a1 = 0;
        }

        goto LABEL_35;
      }

      if ((a6 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 52, "vImageBuffer_InitWithCVPixelBuffer error: desiredFormat may not be NULL\n");
      }

      result = -21778;
    }

    else
    {
      if ((a6 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 46, "vImageBuffer_InitWithCVPixelBuffer error: cvPixelBuffer may not be NULL\n");
      }

      result = -21781;
    }
  }

  else
  {
    if ((a6 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 40, "ImageBuffer_InitWithCVPixelBuffer error: buffer may not be NULL.\n");
    }

    result = -21773;
  }

LABEL_41:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Buffer_InitForCopyFromCVPixelBuffer(__int128 *a1, uint64_t a2, __CVBuffer *a3, __int16 a4)
{
  v4 = *(*(a2 + 16) + 40);
  switch(v4)
  {
    case 13201822:
      if ((a4 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 508, "ImageBuffer_InitForCopyFromCVPixelBuffer error: This converter is for converting among CG image format types. Please us vImageConverter_CreateForCGToCVImageFormat().\n");
        return -21773;
      }

      return -21773;
    case 13201824:
      result = Buffer_InitForCopyToFromCVPixelBuffer(a1, a2, a3, a4, "vImageBuffer_InitForCopyFromCVPixelBuffer", 1);
      if (result)
      {
        return result;
      }

      if ((a4 & 0x200) != 0)
      {
        return 0;
      }

      v10 = *(a2 + 752);
      NumberOfSourceBuffers = Converter_GetNumberOfSourceBuffers(a2);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      FormatCode = CVImageFormat_GetFormatCode(*(a2 + 752));
      if (FormatCode <= 1630697080)
      {
        v13 = a3;
        if (FormatCode != 875704422 && FormatCode != 875704438)
        {
LABEL_44:
          v32 = v13;
          *&v42 = CVPixelBufferGetBaseAddress(v13);
          *(&v43 + 1) = CVPixelBufferGetBytesPerRow(v32);
          *(&v42 + 1) = CVImageFormat_GetHeightInBlocks(*(a2 + 752), *(a1 + 1));
          *&v43 = CVImageFormat_GetWidthInBlocks(*(a2 + 752), *(a1 + 2));
          v33 = *(a1 + 3);
          *&v40 = *a1;
          *(&v40 + 1) = *(&v42 + 1);
          *&v41 = v43;
          *(&v41 + 1) = v33;
          result = CopyBuffer(&v42, &v40, *(v10 + 304), a4 & 0x10);
LABEL_45:
          if (!result)
          {
            return result;
          }

LABEL_57:
          if (!NumberOfSourceBuffers)
          {
LABEL_62:
            v38 = 32 * NumberOfSourceBuffers;
            v39 = result;
            bzero(a1, v38);
            return v39;
          }

LABEL_58:
          v34 = 0;
          v35 = 1;
          do
          {
            v36 = *&a1[2 * v34];
            if (v36)
            {
              v37 = result;
              free(v36);
              result = v37;
            }

            v34 = v35++;
          }

          while (NumberOfSourceBuffers > v34);
          goto LABEL_62;
        }

        *&v42 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        v23 = *(a1 + 1);
        v22 = *(a1 + 2);
        *(&v42 + 1) = v23;
        *&v43 = v22;
        *(&v43 + 1) = BytesPerRowOfPlane;
        v24 = a1[1];
        v40 = *a1;
        v41 = v24;
        if (v42 && BytesPerRowOfPlane)
        {
          *(&v42 + 1) = (BYTE8(v40) & 1) + v23;
          *&v43 = (v41 & 1) + v22;
          *(&v40 + 1) += BYTE8(v40) & 1;
          *&v41 = (v41 & 1) + v41;
          result = CopyBuffer(&v42, &v40, 8, a4 & 0x10);
          if (result)
          {
            goto LABEL_57;
          }

          *&v42 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
          v25 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
          v26 = *(a1 + 6);
          *(&v42 + 1) = *(a1 + 5);
          *&v43 = v26;
          *(&v43 + 1) = v25;
          if (v42 && v25)
          {
            result = CopyBuffer(&v42, a1 + 2, 16, a4 & 0x10);
            goto LABEL_45;
          }

          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 609, "vImageBuffer_InitForCopyFromCVPixelBuffer error: failed to get image data 1  from cvPixelBuffer.\n");
          }
        }

        else if ((a4 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 591, "vImageBuffer_InitForCopyFromCVPixelBuffer error: failed to get image data 0  from cvPixelBuffer.\n");
        }
      }

      else
      {
        v13 = a3;
        if (FormatCode != 1630697081)
        {
          if (FormatCode == 2033463856 || FormatCode == 1714696752)
          {
            if (NumberOfSourceBuffers)
            {
              v14 = 0;
              v15 = 0;
              while (1)
              {
                v16 = v13;
                *&v42 = CVPixelBufferGetBaseAddressOfPlane(v13, v14);
                v17 = CVPixelBufferGetBytesPerRowOfPlane(v16, v14);
                v18 = &a1[2 * v14];
                v19 = *(v18 + 2);
                *(&v42 + 1) = *(v18 + 1);
                *&v43 = v19;
                *(&v43 + 1) = v17;
                if (!v42 || v17 == 0)
                {
                  break;
                }

                result = CopyBuffer(&v42, v18, 8, a4 & 0x10);
                if (result)
                {
                  goto LABEL_58;
                }

                v14 = ++v15;
                v13 = a3;
                if (NumberOfSourceBuffers <= v15)
                {
                  return 0;
                }
              }

              if ((a4 & 0x100) != 0)
              {
                LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 539, "vImageBuffer_InitForCopyFromCVPixelBuffer error: failed to get image data %u from cvPixelBuffer.\n", v15);
              }

              result = -21781;
              goto LABEL_58;
            }

            return 0;
          }

          goto LABEL_44;
        }

        *&v42 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        v27 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        v28 = *(a1 + 2);
        *(&v42 + 1) = *(a1 + 1);
        *&v43 = v28;
        *(&v43 + 1) = v27;
        v29 = a1[1];
        v40 = *a1;
        v41 = v29;
        if (v42 && v27)
        {
          *&v43 = (v41 & 1) + v28;
          *&v41 = (v41 & 1) + v41;
          result = CopyBuffer(&v42, &v40, 16, a4 & 0x10);
          if (result)
          {
            goto LABEL_57;
          }

          *&v42 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
          v30 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
          v31 = *(a1 + 6);
          *(&v42 + 1) = *(a1 + 5);
          *&v43 = v31;
          *(&v43 + 1) = v30;
          if (v42 && v30)
          {
            result = CopyBuffer(&v42, a1 + 2, 8, a4 & 0x10);
            goto LABEL_45;
          }

          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 573, "vImageBuffer_InitForCopyFromCVPixelBuffer error: failed to get image data 1  from cvPixelBuffer.\n");
          }
        }

        else if ((a4 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 557, "vImageBuffer_InitForCopyFromCVPixelBuffer error: failed to get image data 0  from cvPixelBuffer.\n");
        }
      }

      result = -21781;
      goto LABEL_57;
    case 13201823:
      if ((a4 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 505, "ImageBuffer_InitForCopyFromCVPixelBuffer error: This converter is for converting from CGImageFormat to CVPixelBuffers. Perhaps you meant to use vImageBuffer_InitForCopyToCVPixelBuffer?\n");
        return -21773;
      }

      return -21773;
  }

  if ((a4 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 511, "ImageBuffer_InitForCopyFromCVPixelBuffer error: This converter is of unknown / unhandled type.\n");
  }

  return -21776;
}

uint64_t Buffer_CopyToCVPixelBuffer(uint64_t a1, uint64_t a2, CVPixelBufferRef pixelBuffer, __CVBuffer *a4, uint64_t a5, uint64_t a6)
{
  v33[32] = *MEMORY[0x277D85DE8];
  v32 = 0;
  if (!a1)
  {
    if ((a6 & 0x100) == 0)
    {
LABEL_15:
      result = -21773;
      goto LABEL_47;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 157, "ImageBuffer_CopyToCVPixelBuffer error: buffer may not be NULL.\n");
LABEL_20:
    result = -21773;
    goto LABEL_47;
  }

  if (!a2)
  {
    if ((a6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 163, "ImageBuffer_CopyToCVPixelBuffer error: bufferFormat may not be NULL.\n");
    goto LABEL_20;
  }

  if (pixelBuffer)
  {
    v9 = a4;
    if (!a4)
    {
      v10 = a6;
      v11 = a2;
      v12 = CVImageFormat_CreateWithCVPixelBuffer(pixelBuffer);
      a2 = v11;
      a6 = v10;
      a4 = 0;
      v9 = v12;
      if (!v12)
      {
        v32 = -21778;
LABEL_46:
        result = v32;
        goto LABEL_47;
      }
    }

    v13 = a4;
    v14 = a6;
    v15 = Converter_CreateForCGToCVImageFormat(a2, a4, a5, a6, &v32);
    if (!v15)
    {
LABEL_44:
      if (!v13)
      {
        CVImageFormat_Release(v9);
      }

      goto LABEL_46;
    }

    v16 = v15;
    v17 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    v18 = v17;
    v19 = *(*(v16 + 16) + 40);
    switch(v19)
    {
      case 13201822:
        if ((v14 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 483, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is for converting among CG image format types. Please us vImageConverter_CreateForCGToCVImageFormat().\n");
          goto LABEL_40;
        }

        break;
      case 13201823:
        v32 = Buffer_InitForCopyToFromCVPixelBuffer(v33, v16, pixelBuffer, v14 | 0x200u, "vImageBuffer_InitForCopyToCVPixelBuffer", 0);
        if (!v32)
        {
          v32 = Convert_AnyToAny(v16, a1, v33, 0, v14 & 0xFFFFFDFF);
          if (!v32)
          {
            v21 = *MEMORY[0x277CC4B78];
            ColorSpace = CVImageFormat_GetColorSpace(v13);
            CVBufferSetAttachment(pixelBuffer, v21, ColorSpace, kCVAttachmentMode_ShouldNotPropagate);
            CVBufferRemoveAttachment(pixelBuffer, *MEMORY[0x277CC4C00]);
            CVBufferRemoveAttachment(pixelBuffer, *MEMORY[0x277CC4CC0]);
            v23 = *MEMORY[0x277CC4B68];
            AlphaHint = CVImageFormat_GetAlphaHint(v13);
            v25 = MEMORY[0x277CBED28];
            if (!AlphaHint)
            {
              v25 = MEMORY[0x277CBED10];
            }

            CVBufferSetAttachment(pixelBuffer, v23, *v25, kCVAttachmentMode_ShouldNotPropagate);
            CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4B88], *MEMORY[0x277CC4BA0], kCVAttachmentMode_ShouldNotPropagate);
            v31 = 0;
            ConversionMatrix = CVImageFormat_GetConversionMatrix(v13, &v31);
            v27 = *MEMORY[0x277CC4D20];
            if (v31 == 1)
            {
              if (ConversionMatrix != kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4)
              {
                if (ConversionMatrix == kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2)
                {
                  v27 = *MEMORY[0x277CC4D28];
                }

                else
                {
                  p_R_Yp = &ConversionMatrix->R_Yp;
                  DeviationFromRGBToYpCbCrMatrix = FindDeviationFromRGBToYpCbCrMatrix(&ConversionMatrix->R_Yp, &kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4->R_Yp);
                  if (fabsf(DeviationFromRGBToYpCbCrMatrix) > fabsf(FindDeviationFromRGBToYpCbCrMatrix(p_R_Yp, &kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2->R_Yp)))
                  {
                    v27 = *MEMORY[0x277CC4D28];
                  }
                }
              }
            }

            else if ((v14 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 239, "vImageBuffer_CopyToCVPixelBuffer error: CVImageFormat_GetConversionMatrix returned unhandled matrix type. Defaulting to kCVImageBufferYCbCrMatrix_ITU_R_601_4. (%d)\n", v31);
            }

            CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4D10], v27, kCVAttachmentMode_ShouldNotPropagate);
            if (v18)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }
        }

LABEL_41:
        if (!v18)
        {
LABEL_42:
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        }

LABEL_43:
        Converter_Release(v16);
        goto LABEL_44;
      case 13201824:
        if ((v14 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 480, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is for converting from CVPixelBuffers to CGImageFormat. Perhaps you meant to use vImageBuffer_InitForCopyFromCVPixelBuffer?\n");
LABEL_40:
          v32 = -21773;
          goto LABEL_41;
        }

        break;
      default:
        if ((v14 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 486, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is of unknown / unhandled type.\n");
        }

        v32 = -21776;
        if (v18)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
    }

    v32 = -21773;
    if (!v17)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  if ((a6 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 169, "vImageBuffer_CopyToCVPixelBuffer error: cvPixelBuffer may not be NULL\n");
  }

  result = -21781;
LABEL_47:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Buffer_InitForCopyToCVPixelBuffer(void **a1, uint64_t a2, __CVBuffer *a3, __int16 a4)
{
  v4 = *(*(a2 + 16) + 40);
  switch(v4)
  {
    case 13201822:
      if ((a4 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 483, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is for converting among CG image format types. Please us vImageConverter_CreateForCGToCVImageFormat().\n");
      }

      return -21773;
    case 13201823:

      return Buffer_InitForCopyToFromCVPixelBuffer(a1, a2, a3, a4, "vImageBuffer_InitForCopyToCVPixelBuffer", 0);
    case 13201824:
      if ((a4 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 480, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is for converting from CVPixelBuffers to CGImageFormat. Perhaps you meant to use vImageBuffer_InitForCopyFromCVPixelBuffer?\n");
      }

      return -21773;
    default:
      if ((a4 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 486, "ImageBuffer_InitForCopyToCVPixelBuffer error: This converter is of unknown / unhandled type.\n");
      }

      return -21776;
  }
}

uint64_t Buffer_InitForCopyToFromCVPixelBuffer(void **a1, uint64_t a2, __CVBuffer *a3, __int16 a4, const char *a5, int a6)
{
  if (!a1)
  {
    if ((a4 & 0x100) == 0)
    {
      return -21773;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 269, "%s error: buffers may not be NULL.\n");
    return -21773;
  }

  if (!a2)
  {
    if ((a4 & 0x100) == 0)
    {
      return -21773;
    }

    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 275, "%s error: converter may not be NULL.\n");
    return -21773;
  }

  if (!a3)
  {
    if ((a4 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 281, "%s error: pixelBuffe3r may not be NULL.\n");
      return -21781;
    }

    return -21781;
  }

  v7 = *(a2 + 752);
  if (v7)
  {
    v10 = &Converter_GetNumberOfDestinationBuffers;
    if (a6)
    {
      v10 = &Converter_GetNumberOfSourceBuffers;
    }

    v11 = (*v10)(a2);
    bzero(a1, 32 * v11);
    Height = CVPixelBufferGetHeight(a3);
    Width = CVPixelBufferGetWidth(a3);
    FormatCode = CVImageFormat_GetFormatCode(v7);
    if (FormatCode <= 1630697080)
    {
      v15 = a4;
      if (FormatCode == 875704422 || FormatCode == 875704438)
      {
        if ((a4 & 0x200) == 0)
        {
          result = _vImageBuffer_Init(a1, Height, Width, 8u, a4 & 0x100);
          if (result)
          {
            goto LABEL_54;
          }

          v18 = (Height + 1) >> 1;
          v19 = (Width + 1) >> 1;
          v17 = (a1 + 4);
          v20 = a4 & 0x100;
          v21 = 16;
          goto LABEL_37;
        }

        *a1 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        a1[2] = Width;
        a1[3] = BytesPerRowOfPlane;
        a1[1] = Height;
        if (!*a1 || !BytesPerRowOfPlane)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 400, "%s error: failed to get image data from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        a1[4] = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        v26 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
        a1[6] = Width;
        a1[7] = v26;
        a1[5] = Height;
        if (!a1[4] || !v26)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 411, "%s error: failed to get image data from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        return 0;
      }
    }

    else
    {
      v15 = a4;
      if (FormatCode == 1630697081)
      {
        if ((a4 & 0x200) == 0)
        {
          result = _vImageBuffer_Init(a1, Height, Width, 0x10u, a4 & 0x100);
          if (result)
          {
            goto LABEL_54;
          }

          v17 = (a1 + 4);
          goto LABEL_36;
        }

        *a1 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        v34 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        a1[2] = Width;
        a1[3] = v34;
        a1[1] = Height;
        if (!*a1 || !v34)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 363, "%s error: failed to get image data from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        a1[4] = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        v35 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
        a1[6] = Width;
        a1[7] = v35;
        a1[5] = Height;
        if (!a1[4] || !v35)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 374, "%s error: failed to get image data from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        return 0;
      }

      if (FormatCode == 2033463856 || FormatCode == 1714696752)
      {
        if ((a4 & 0x200) == 0)
        {
          result = _vImageBuffer_Init(a1, Height, Width, 8u, a4 & 0x100);
          if (!result)
          {
            Height = (Height + 1) >> 1;
            Width = (Width + 1) >> 1;
            result = _vImageBuffer_Init((a1 + 4), Height, Width, 8u, a4 & 0x100);
            if (!result)
            {
              v17 = (a1 + 8);
LABEL_36:
              v20 = a4 & 0x100;
              v18 = Height;
              v19 = Width;
              v21 = 8;
LABEL_37:
              result = _vImageBuffer_Init(v17, v18, v19, v21, v20);
            }
          }

LABEL_54:
          if (result)
          {
            v30 = result;
            if (v11)
            {
              v31 = 0;
              v32 = 1;
              do
              {
                v33 = a1[4 * v31];
                if (v33)
                {
                  free(v33);
                }

                v31 = v32++;
              }

              while (v11 > v31);
            }

            bzero(a1, 32 * v11);
            return v30;
          }

          return result;
        }

        *a1 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        v22 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        a1[2] = Width;
        a1[3] = v22;
        a1[1] = Height;
        if (!*a1 || !v22)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 312, "%s error: failed to get image data 0 from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        a1[4] = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        v23 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
        a1[6] = Width;
        a1[7] = v23;
        a1[5] = Height;
        if (!a1[4] || !v23)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 323, "%s error: failed to get image data 1 from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        a1[8] = CVPixelBufferGetBaseAddressOfPlane(a3, 2uLL);
        v24 = CVPixelBufferGetBytesPerRowOfPlane(a3, 2uLL);
        a1[10] = Width;
        a1[11] = v24;
        a1[9] = Height;
        if (!a1[8] || !v24)
        {
          if ((a4 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 334, "%s error: failed to get image data 2 from cvPixelBuffer.\n");
            return -21781;
          }

          return -21781;
        }

        return 0;
      }
    }

    if ((v15 & 0x200) != 0)
    {
      *a1 = CVPixelBufferGetBaseAddress(a3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
      a1[3] = BytesPerRow;
      if (!*a1 || !BytesPerRow)
      {
        if ((a4 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 434, "%s error: failed to get image data from cvPixelBuffer.\n");
          return -21781;
        }

        return -21781;
      }
    }

    else
    {
      HeightInBlocks = CVImageFormat_GetHeightInBlocks(v7, Height);
      WidthInBlocks = CVImageFormat_GetWidthInBlocks(v7, Width);
      BlockBits = CVImageFormat_GetBlockBits(v7, 0);
      result = _vImageBuffer_Init(a1, HeightInBlocks, WidthInBlocks, BlockBits, a4 & 0x100);
      if (result)
      {
        goto LABEL_54;
      }
    }

    result = 0;
    a1[1] = Height;
    a1[2] = Width;
    return result;
  }

  if ((a4 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CVInterfaces.c", 290, "%s error: internal cvImageFormatRef record is missing.\n", a5);
  }

  return -21776;
}

double _vImageBuffer_GetSize(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 16);
  result = v1;
  if (v1 < v1)
  {
    --*&result;
  }

  return result;
}

uint64_t _vImageCGImageFormat_GetComponentCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      LODWORD(result) = CGColorSpaceGetNumberOfComponents(v2);
    }

    else
    {
      LODWORD(result) = 3;
    }

    if ((*(v1 + 16) & 0x1F) == 0 || (*(v1 + 16) & 0x1F) == 7)
    {
      return result;
    }

    else
    {
      return (result + 1);
    }
  }

  return result;
}

uint64_t vImageMaskAlpha_Chunky8(uint64_t *a1, uint64_t *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (a1[1] < v4)
  {
    return -21766;
  }

  v5 = a2[2];
  if (a1[2] < v5)
  {
    return -21766;
  }

  if (!a3)
  {
    return -21773;
  }

  if ((a4 & 0xFFFFFFEF) != 0)
  {
    return -21775;
  }

  if (!v4 || !v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a1;
  v9 = a1[3];
  v10 = a3 - 1;
  v11 = *a2;
  v12 = a3;
  v13 = a2[3];
  do
  {
    v14 = 0;
    v15 = v10;
    do
    {
      *(v11 + v15) = (*(v11 + v15) * *(v8 + v14++) + 127) / 0xFFu;
      v15 += v12;
    }

    while (v5 != v14);
    result = 0;
    v8 += v9;
    v11 += v13;
    ++v7;
  }

  while (v7 != v4);
  return result;
}

uint64_t vImageMaskAlpha_Chunky16U(uint64_t *a1, uint64_t *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (a1[1] < v4)
  {
    return -21766;
  }

  v5 = a2[2];
  if (a1[2] < v5)
  {
    return -21766;
  }

  if (!a3)
  {
    return -21773;
  }

  if ((a4 & 0xFFFFFFEF) != 0)
  {
    return -21775;
  }

  if (!v4 || !v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a1;
  v9 = a1[3];
  v10 = *a2;
  v11 = a2[3];
  v12 = 2 * (a3 - 1);
  v13 = 2 * a3;
  do
  {
    v14 = 0;
    v15 = v12;
    do
    {
      *(v10 + v15) = (*(v10 + v15) * *(v8 + 2 * v14++) + 0x7FFF) / 0xFFFF;
      v15 += v13;
    }

    while (v5 != v14);
    result = 0;
    v8 += v9;
    v10 += v11;
    ++v7;
  }

  while (v7 != v4);
  return result;
}

uint64_t vImageMaskAlpha_Chunky16Q12(uint64_t *a1, uint64_t *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (a1[1] < v4)
  {
    return -21766;
  }

  v5 = a2[2];
  if (a1[2] < v5)
  {
    return -21766;
  }

  if (!a3)
  {
    return -21773;
  }

  if ((a4 & 0xFFFFFFEF) != 0)
  {
    return -21775;
  }

  if (!v4 || !v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a1;
  v9 = a1[3];
  v10 = *a2;
  v11 = a2[3];
  do
  {
    v12 = 0;
    v13 = 2 * (a3 - 1);
    do
    {
      *(v10 + v13) = (*(v10 + v13) * *(v8 + 2 * v12++) + 2048) >> 12;
      v13 += 2 * a3;
    }

    while (v5 != v12);
    result = 0;
    v8 += v9;
    v10 += v11;
    ++v7;
  }

  while (v7 != v4);
  return result;
}

uint64_t vImageMaskAlpha_ChunkyF(uint64_t *a1, uint64_t *a2, unsigned int a3, int a4)
{
  v4 = a2[1];
  if (a1[1] < v4)
  {
    return -21766;
  }

  v5 = a2[2];
  if (a1[2] < v5)
  {
    return -21766;
  }

  if (!a3)
  {
    return -21773;
  }

  if ((a4 & 0xFFFFFFEF) != 0)
  {
    return -21775;
  }

  if (!v4 || !v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a1;
  v9 = a1[3];
  v10 = *a2;
  v11 = a2[3];
  do
  {
    v12 = 0;
    v13 = 4 * (a3 - 1);
    do
    {
      *(v10 + v13) = *(v8 + 4 * v12++) * *(v10 + v13);
      v13 += 4 * a3;
    }

    while (v5 != v12);
    result = 0;
    v8 += v9;
    v10 += v11;
    ++v7;
  }

  while (v7 != v4);
  return result;
}

uint64_t GetImageWithBitmapContext(void **a1, uint64_t a2, uint64_t a3, CGImageRef image, unsigned int a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v67 = 0;
  if (*a2)
  {
    v9 = *(a2 + 16);
    *space = *a2;
    *bitmapInfo = v9;
    v66 = *(a2 + 32);
    DeviceRGB = space[1];
    if (!space[1])
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v57 = 0;
      space[1] = DeviceRGB;
      v11 = bitmapInfo[0];
      if (((0x61uLL >> (bitmapInfo[0] & 7)) & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else
  {
    LODWORD(space[0]) = CGImageGetBitsPerComponent(image);
    HIDWORD(space[0]) = CGImageGetBitsPerPixel(image);
    bitmapInfo[0] = CGImageGetBitmapInfo(image);
    DeviceRGB = CGImageGetColorSpace(image);
    space[1] = DeviceRGB;
    bitmapInfo[1] = 0;
    *&bitmapInfo[2] = CGImageGetDecode(image);
    LODWORD(v66) = CGImageGetRenderingIntent(image);
  }

  v57 = 1;
  v11 = bitmapInfo[0];
  if (((0x61uLL >> (bitmapInfo[0] & 7)) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (CGImageGetMaskingColors() || CGImageGetClipPath() || CGImageGetMask())
  {
    if ((v11 & 0x1F) == 0)
    {
      HIDWORD(space[0]) += LODWORD(space[0]);
    }

    v11 = AddAlpha_newAlpha[v11 & 0x1F] | v11 & 0xFFFFFFE0;
  }

LABEL_13:
  v12 = space[0];
  v13 = HIDWORD(space[0]);
  v59 = a1;
  v58 = a5;
  if (LODWORD(space[0]) >= 8)
  {
    if (LODWORD(space[0]) == 8 || LODWORD(space[0]) >= 0x10)
    {
      if (LODWORD(space[0]) > 0x10)
      {
        v12 = 32;
      }
    }

    else
    {
      v12 = 16;
    }
  }

  else
  {
    v12 = 8;
  }

  v15 = *&bitmapInfo[2] != kvImageDecodeArray_RGB101010_0 && *&bitmapInfo[2] != kvImageDecodeArray_16Q12Format;
  v16 = (v11 & 0x100) == 0;
  v17 = v11 & 0xFFFFFEFF;
  v18 = !v15 || !v16;
  if (v15 && v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = 256;
  }

  v20 = v17 | v19;
  if (v18)
  {
    v21 = 32;
  }

  else
  {
    v21 = v12;
  }

  v22 = v11 & 0x7000;
  Type = CGColorSpaceGetType();
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceRGB);
  if (Type > 1)
  {
    if (Type <= 3)
    {
      if (Type != 2)
      {
        goto LABEL_45;
      }

      goto LABEL_58;
    }

    if (Type != 4)
    {
      if (Type != 6)
      {
LABEL_50:
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        goto LABEL_51;
      }

      if (NumberOfComponents == 4)
      {
LABEL_58:
        v17 = v20 & 0xFFFFFFE0;
        switch(v21)
        {
          case 32:
            v13 = 128;
            if ((v11 & 0x7000) != 0 && v22 != 0x2000 && v22 != 0x4000)
            {
LABEL_102:
              v17 = v20 & 0xFFFF8FE0 | 0x2000;
              v21 = 32;
            }

            break;
          case 16:
            v13 = 64;
            if ((v11 & 0x7000) != 0 && v22 != 4096 && v22 != 12288)
            {
LABEL_98:
              v17 = v20 & 0xFFFF8FE0 | 0x1000;
              v21 = 16;
            }

            break;
          case 8:
            v13 = 32;
            if ((v11 & 0x7000) != 0 && v22 != 0x2000 && v22 != 0x4000)
            {
              v17 = v20 & 0xFFFF8FE0;
              v21 = 8;
            }

            break;
        }

LABEL_119:
        space[0] = __PAIR64__(v13, v21);
        space[1] = DeviceRGB;
        bitmapInfo[0] = v17;
        *&bitmapInfo[2] = 0;
        if (*a2)
        {
          goto LABEL_120;
        }

        goto LABEL_86;
      }

      if (NumberOfComponents != 3)
      {
        if (NumberOfComponents == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }
    }

LABEL_51:
    if (v21 != 32)
    {
      if (v21 != 16)
      {
        if (v21 == 8)
        {
          v25 = v11 & 0x1F;
          if ((v11 & 0x1F) > 6)
          {
            v17 = 1;
          }

          else if (((1 << v25) & 0x66) == 0)
          {
            if (((1 << v25) & 0x18) != 0)
            {
              v17 -= 2;
            }

            else
            {
              v17 = v11 & 0xFFFFFEE0 | 5;
            }
          }

          v21 = 8;
          v13 = 32;
          if ((v11 & 0x7000) != 0 && v22 != 0x2000 && v22 != 0x4000)
          {
            v17 &= 0xFFFF8FFF;
          }
        }

        else
        {
          v17 = v20;
        }

        goto LABEL_119;
      }

      v26 = v11 & 0x1F;
      if (v26 <= 1)
      {
        if ((v11 & 0x1F) == 0)
        {
          v17 = v11 & 0xFFFFFEE0 | 5;
          goto LABEL_104;
        }

        if (v26 != 1)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v26 == 6)
        {
LABEL_70:
          --v17;
          goto LABEL_104;
        }

        if (v26 != 5)
        {
          if (v26 == 2)
          {
            goto LABEL_70;
          }

LABEL_91:
          v17 = v11 & 0xFFFFFEE0 | 1;
        }
      }

LABEL_104:
      v21 = 16;
      v13 = 64;
      if ((v11 & 0x7000) != 0 && v22 != 4096 && v22 != 12288)
      {
        v17 = v17 & 0xFFFF8FFF | 0x1000;
      }

      goto LABEL_119;
    }

    v27 = v11 & 0x1F;
    v17 = v11 | 0x100;
    if (v27 <= 1)
    {
      if ((v11 & 0x1F) == 0)
      {
        v17 = v11 & 0xFFFFFEE0 | 0x105;
        goto LABEL_109;
      }

      if (v27 != 1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v27 == 6)
      {
LABEL_75:
        --v17;
        goto LABEL_109;
      }

      if (v27 != 5)
      {
        if (v27 == 2)
        {
          goto LABEL_75;
        }

LABEL_94:
        v17 = v11 & 0xFFFFFEE0 | 0x101;
      }
    }

LABEL_109:
    v21 = 32;
    v13 = 128;
    if ((v11 & 0x7000) != 0 && v22 != 0x2000 && v22 != 0x4000)
    {
      v17 = v17 & 0xFFFF8FFF | 0x2000;
    }

    goto LABEL_119;
  }

  if (Type == -1)
  {
    v13 = 8;
    v17 = 7;
    v21 = 8;
    goto LABEL_119;
  }

  if (Type)
  {
    if (Type == 1)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_45:
  v17 = v20 & 0xFFFFFFE0;
  switch(v21)
  {
    case 32:
      v13 = 32;
      if ((v11 & 0x7000) == 0 || v22 == 0x2000 || v22 == 0x4000)
      {
        v21 = 32;
        goto LABEL_119;
      }

      goto LABEL_102;
    case 16:
      v13 = 16;
      if ((v11 & 0x7000) == 0 || v22 == 4096 || v22 == 12288)
      {
        v21 = 16;
        goto LABEL_119;
      }

      goto LABEL_98;
    case 8:
      space[0] = 0x800000008;
      space[1] = DeviceRGB;
      bitmapInfo[0] = v20 & 0xFFFF8FE0;
      *&bitmapInfo[2] = 0;
      if (!*a2)
      {
        goto LABEL_86;
      }

LABEL_120:
      v28 = _vImageCGImageFormat_IsEqual(space, a2) == 0;
      v30 = v58;
      v31 = v58 & 0x200;
      v32 = v59;
      goto LABEL_121;
  }

  LODWORD(space[0]) = v21;
  HIDWORD(space[0]) = v21;
  space[1] = DeviceRGB;
  bitmapInfo[0] = v20 & 0xFFFFFFE0;
  *&bitmapInfo[2] = 0;
  if (*a2)
  {
    goto LABEL_120;
  }

LABEL_86:
  v28 = 0;
  v29 = *bitmapInfo;
  *a2 = *space;
  *(a2 + 16) = v29;
  *(a2 + 32) = v66;
  v30 = v58;
  v31 = v58 & 0x200;
  v32 = v59;
  if ((v58 & 0x200) != 0 && !*v59)
  {
    result = 0;
    goto LABEL_174;
  }

LABEL_121:
  Height = CGImageGetHeight(image);
  Width = CGImageGetWidth(image);
  v36 = Width;
  if (v31)
  {
    if (v32[3] < (Width * *(a2 + 4) + 7) >> 3)
    {
      result = -21777;
      goto LABEL_174;
    }

    v32[1] = Height;
    v32[2] = Width;
    if (v28)
    {
      goto LABEL_128;
    }

LABEL_144:
    v40 = v32[3];
    v39 = *v32;
    goto LABEL_145;
  }

  if ((v30 & 0xFFFFFCFF) != 0)
  {
    v37 = -21775;
LABEL_126:
    v38 = 0;
    v67 = v37;
    goto LABEL_169;
  }

  v41 = *(a2 + 4);
  *v32 = 0;
  v32[1] = Height;
  v42 = (Width * v41 + 7) >> 3;
  if (((2 * MEMORY[0xFFFFFC020]) & 0xE0uLL) <= 2 * v42)
  {
    v43 = (2 * MEMORY[0xFFFFFC020]) & 0xE0;
  }

  else
  {
    v43 = 16;
  }

  v44 = (v42 + v43 - 1) & -v43;
  if ((v44 & (v44 - 1)) == 0 && v44 >= 0x1000)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46 + v44;
  v32[2] = Width;
  v32[3] = v47;
  if (v30 <= 0x1FF && malloc_type_posix_memalign(v32, v43, v47 * Height, 0x2C15998uLL))
  {
    if (v30)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 208, "vImageBuffer_Init failed: could not allocate buf->data of size %lu\n", v32[1] * v32[3]);
    }

    v37 = -21771;
    goto LABEL_126;
  }

  v67 = 0;
  if (!v28)
  {
    goto LABEL_144;
  }

LABEL_128:
  v39 = 0;
  v40 = (((2 * MEMORY[0xFFFFFC020]) & 0xE0) + ((v36 * HIDWORD(space[0]) + 7) >> 3) - 1) & -((2 * MEMORY[0xFFFFFC020]) & 0xE0);
LABEL_145:
  v38 = CGBitmapContextCreate(v39, v36, Height, LODWORD(space[0]), v40, space[1], bitmapInfo[0]);
  if (v38)
  {
    v48 = CGImageGetBitmapInfo(image);
    v49 = *(a2 + 8);
    if (!v49)
    {
      v49 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
      if (!v49)
      {
        v49 = CGColorSpaceCreateDeviceRGB();
      }
    }

    if ((0x61uLL >> (v48 & 7)))
    {
      goto LABEL_160;
    }

    if ((0x61uLL >> (bitmapInfo[0] & 7)))
    {
      if (a3)
      {
        v50 = CGColorSpaceGetNumberOfComponents(*(a2 + 8));
        __memcpy_chk();
        if (v50 <= 0xF)
        {
          components[v50] = 1.0;
        }

        v51 = CGColorCreate(*(a2 + 8), components);
        if (v51)
        {
          goto LABEL_159;
        }
      }

      components[0] = 0.0;
      components[1] = 0.0;
      *&v69 = 0;
      *(&v69 + 1) = 0x3FF0000000000000;
    }

    else
    {
      *components = 0u;
      v69 = 0u;
    }

    v51 = CGColorCreate(v49, components);
LABEL_159:
    CGContextSetFillColorWithColor(v38, v51);
    CFRelease(v51);
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = v36;
    v71.size.height = Height;
    CGContextFillRect(v38, v71);
LABEL_160:
    if (!*(a2 + 8) && v49)
    {
      CFRelease(v49);
    }

    v72.origin.x = 0.0;
    v72.origin.y = 0.0;
    v72.size.width = v36;
    v72.size.height = Height;
    CGContextDrawImage(v38, v72, image);
    CGContextFlush(v38);
    if (v28)
    {
      v52 = *(a2 + 16);
      v61 = *a2;
      v62 = v52;
      v63 = *(a2 + 32);
      if ((bitmapInfo[0] & 0x1F) - 1 <= 1 && (v62 & 0x1F) - 5 <= 1)
      {
        LODWORD(v62) = v62 - 2;
      }

      v60[0] = CGBitmapContextGetData(v38);
      v60[1] = Height;
      v60[2] = v36;
      v60[3] = v40;
      v53 = Converter_CreateWithCGImageFormat(space, &v61, a3, v58 & 0x110, &v67);
      if (!v67)
      {
        v54 = v53;
        v67 = Convert_AnyToAny(v53, v60, v59, 0, v58 & 0x110);
        Converter_Release(v54);
      }
    }

    goto LABEL_169;
  }

  v67 = -21778;
LABEL_169:
  if ((v57 & 1) == 0)
  {
    CGColorSpaceRelease(space[1]);
  }

  if (v38)
  {
    CGContextRelease(v38);
  }

  result = v67;
LABEL_174:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

CGDataProvider *CheckNonNullDataProviderWithLengthZero(CGImage *a1)
{
  result = CGImageGetDataProvider(a1);
  if (result)
  {
    v2 = CGDataProviderCopyData(result);
    return (v2 && !CFDataGetLength(v2));
  }

  return result;
}

void vImageBlockReleaseCallback(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    munmap(a1[1], v1);
    a1 = v2;
    goto LABEL_3;
  }

  v3 = *a1;
  if (!*a1 || atomic_fetch_add(v3, 0xFFFFFFFF) != 1)
  {
LABEL_3:

    goto LABEL_5;
  }

  v4 = a1;
  v5 = *(v3 + 88);
  if (v5)
  {
    v5(*(v3 + 96), *(v3 + 8));
  }

  else
  {
    v6 = *(v3 + 104);
    if (v6)
    {
      munmap(*(v3 + 8), v6);
    }
  }

  CGColorSpaceRelease(*(v3 + 48));
  free(v3);
  a1 = v4;

LABEL_5:
  free(a1);
}

void vImageProviderRelease(uint64_t a1)
{
  if (!a1 || atomic_fetch_add(a1, 0xFFFFFFFF) != 1)
  {
    return;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = a1;
    v2(*(a1 + 96), *(a1 + 8));
LABEL_8:
    a1 = v3;
    goto LABEL_9;
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    v3 = a1;
    munmap(*(a1 + 8), v4);
    goto LABEL_8;
  }

LABEL_9:
  v5 = a1;
  CGColorSpaceRelease(*(a1 + 48));

  free(v5);
}

void *vImageCopyImageBlockSet(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, double a4, double a5, double a6, double a7)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 120);
  v9 = *(a1 + 56);
  v72 = *(a1 + 40);
  *v73 = v9;
  *&v73[16] = *(a1 + 72);
  *v73 = *(a1 + 80);
  v10 = *v73 != *(a1 + 56);
  v71 = 1;
  if (a6 + a4 <= *(a1 + 24) && a4 >= 0.0)
  {
    v12 = a5;
    if (a7 + a5 <= *(a1 + 16) && a5 >= 0.0)
    {
      v67 = *(a1 + 112);
      v66 = *(a1 + 44) >> 3;
      v68 = *(a1 + 48);
      if (theDict)
      {
        v62 = a2;
        v13 = a4;
        Count = CFDictionaryGetCount(theDict);
        if (Count)
        {
          v16 = Count;
          value[0] = *MEMORY[0x277CBED10];
          ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"kCGImageBlockIOSurfaceOptimizedRequest", value);
          if (value[0] == *MEMORY[0x277CBED28])
          {
            v68 = 0;
            v72 = 0x2000000008uLL;
            *v73 = 8196;
            *&v73[12] = 0;
            v67 = 1;
            v66 = 4;
            v10 = 1;
            *&v73[4] = 0;
          }

          else
          {
            v59[1] = v59;
            MEMORY[0x28223BE20](ValueIfPresent);
            v18 = (8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0;
            v19 = v59 - v18;
            if ((8 * v16) >= 0x200)
            {
              v20 = 512;
            }

            else
            {
              v20 = 8 * v16;
            }

            bzero(v59 - v18, v20);
            MEMORY[0x28223BE20](v21);
            v22 = v59 - v18;
            bzero(v59 - v18, v20);
            valuePtr[0] = 0;
            CFDictionaryGetKeysAndValues(theDict, (v59 - v18), (v59 - v18));
            if (v16 >= 1)
            {
              v23 = 0;
              v24 = *MEMORY[0x277CBF530];
              v65 = *MEMORY[0x277CBF510];
              v64 = *MEMORY[0x277CBF518];
              v61 = *MEMORY[0x277CBF540];
              v60 = *MEMORY[0x277CBF520];
              v63 = *MEMORY[0x277CBF528];
              v59[0] = v59 - v18;
              while (1)
              {
                v27 = *&v19[8 * v23];
                if (CFStringCompare(v27, v24, 0))
                {
                  if (CFStringCompare(v27, v65, 0))
                  {
                    if (CFStringCompare(v27, v64, 0))
                    {
                      if (CFStringCompare(v27, v61, 0))
                      {
                        if (CFStringCompare(v27, v60, 0))
                        {
                          CFStringCompare(v27, @"kCGImageBlockMarkAsReadOnlyRequest", 0);
                        }

                        else
                        {
                          v59[0] = *&v22[8 * v23];
                        }
                      }
                    }

                    else
                    {
                      CFNumberGetValue(*&v22[8 * v23], kCFNumberLongType, &v71);
                      v29 = v71;
                      if (!v71)
                      {
                        v71 = 1;
                        v29 = 1;
                      }

                      v10 |= *(a1 + 32) % v29 != 0;
                    }
                  }

                  else
                  {
                    CFNumberGetValue(*&v22[8 * v23], kCFNumberLongType, valuePtr);
                    if (valuePtr[0] > *MEMORY[0x277D85FA0])
                    {
                      if ((v8 & 0x100) != 0)
                      {
                        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2118, "CGImage (created by vImageCreateCGImageFromBuffer) - kCGImageBlockBaseAddressAlignmentRequest: best we can do is page aligned. Returning NULL.\n");
                      }

                      goto LABEL_15;
                    }
                  }
                }

                else
                {
                  if (CFStringCompare(*&v22[8 * v23], v63, 0))
                  {
                    CFStringGetCString(*&v22[8 * v23], value, 64, 0x8000100u);
                    if ((v8 & 0x100) != 0)
                    {
                      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2108, "CGImage (created by vImageCreateCGImageFromBuffer) - ignoring unrecognized kCGImageBlockFormatRequest '%s'. Returning NULL.\n", value);
                    }

                    goto LABEL_15;
                  }

                  v28 = *(a1 + 56) & 0x1F;
                  *&v72 = 0x2000000008;
                  *v73 = vImageCopyImageBlockSet_kImageMap[v28] | 0x2000;
                  if (*(&v72 + 1))
                  {
                    v68 = *(&v72 + 1);
                    if (CGColorSpaceGetModel(*(&v72 + 1)) != kCGColorSpaceModelRGB)
                    {
                      v68 = 0;
                      *(&v72 + 1) = 0;
                    }
                  }

                  else
                  {
                    v68 = 0;
                  }

                  v67 = 1;
                  v66 = 4;
                }

                if (v16 == ++v23)
                {
                  if (v59[0] != v19)
                  {
                    *(&v72 + 1) = v59[0];
                  }

                  break;
                }
              }
            }
          }
        }

        v10 |= _vImageCGImageFormat_IsEqual(&v72, a1 + 40) == 0;
        a4 = v13;
      }

      v30 = a4;
      v31 = (a1 + 8);
      if (!v10)
      {
        v33 = *(a1 + 24);
        *value = *v31;
        v75 = v33;
        result = malloc_type_malloc(0x18uLL, 0x10A00404E934A1DuLL);
        if (!result)
        {
          goto LABEL_16;
        }

        v34 = result;
        v35 = 0;
LABEL_78:
        *v34 = a1;
        v34[1] = *v31 + v31[3] * v12 + ((v30 * *(a1 + 44)) >> 3);
        v34[2] = v35;
        valuePtr[0] = CGImageBlockCreate();
        if (!valuePtr[0])
        {
          if (v35)
          {
            munmap(value[0], v35);
          }

          free(v34);
          if ((v8 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2265, "CGImage (created by vImageCreateCGImageFromBuffer) CGImageBlockCreate() failed.\n");
          }

          goto LABEL_15;
        }

        if (!v35)
        {
          atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
        }

        if (v68)
        {
          result = CGImageBlockSetCreateWithType();
          if (result)
          {
            goto LABEL_83;
          }
        }

        else
        {
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v58 = CGImageBlockSetCreateWithType();
          CGColorSpaceRelease(DeviceRGB);
          result = v58;
          if (v58)
          {
LABEL_83:
            atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
            if (v35)
            {
              v56 = result;
              mprotect(*v31, v35, 1);
              result = v56;
            }

            goto LABEL_16;
          }
        }

        CGImageBlockRelease();
        goto LABEL_15;
      }

      if (*(&v72 + 1))
      {
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(*(&v72 + 1));
      }

      else
      {
        NumberOfComponents = 3;
      }

      if ((v73[0] & 0x1F) != 0)
      {
        v36 = NumberOfComponents + 1;
      }

      else
      {
        v36 = NumberOfComponents;
      }

      v37 = (v36 * v72);
      DWORD1(v72) = v37;
      v38 = *(a1 + 24);
      *value = *v31;
      v75 = v38;
      v39 = *(a1 + 16) - v12;
      v40 = *(a1 + 24) - v30;
      value[1] = v39;
      *&v75 = v40;
      v41 = (v40 * v37 + 7) >> 3;
      v42 = (2 * MEMORY[0xFFFFFC020]) & 0xE0;
      if (v42 > 2 * v41)
      {
        v42 = 16;
      }

      v43 = (v41 + v42 - 1) & -v42;
      if ((v43 & (v43 - 1)) == 0 && v43 >= 0x1000)
      {
        v45 = v42;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45 + v43;
      *(&v75 + 1) = v46;
      v70 = v42;
      if (v71 >= 2)
      {
        if ((v71 & (v71 - 1)) == 0)
        {
          v46 = (v71 + v46 - 1) & -v71;
          goto LABEL_62;
        }

        if (v71 + v46 / v71 * v71 - v46 < v71)
        {
          v46 = v71 + v46 / v71 * v71;
LABEL_62:
          *(&v75 + 1) = v46;
        }
      }

      v47 = *MEMORY[0x277D85FA0] - 1;
      v48 = -*MEMORY[0x277D85FA0];
      v35 = (v47 + v39 * v46) & v48;
      v49 = mmap(0, (v47 + v35) & v48, 3, 4097, 1258291200, 0);
      if (v49 == -1)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }

      value[0] = v50;
      if (!v50)
      {
        if ((v8 & 0x100) != 0)
        {
          vars0 = 0;
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2196, "CGImage (created by vImageCreateCGImageFromBuffer) block set creation failed. %lu byte allocation failed.\n");
        }

        goto LABEL_15;
      }

      v51 = Converter_CreateWithCGImageFormat(a1 + 40, &v72, 0, v8 & 0x110, &v70);
      v52 = v70;
      if (v51 && !v70)
      {
        v53 = *(a1 + 32);
        valuePtr[0] = *(a1 + 8) + v53 * v12 + ((*(a1 + 44) * v30 + 4) >> 3);
        valuePtr[1] = v39;
        valuePtr[2] = v40;
        valuePtr[3] = v53;
        v54 = v51;
        v70 = Convert_AnyToAny(v51, valuePtr, value, 0, v8 & 0x110);
        Converter_Release(v54);
        v52 = v70;
      }

      if (v52)
      {
        munmap(value[0], v35);
        if ((v8 & 0x100) != 0)
        {
          vars0 = v70;
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2224, "CGImage (created by vImageCreateCGImageFromBuffer) block set creation failed. Couldn't convert to desired format. err = %ld\n");
        }

        goto LABEL_15;
      }

      v55 = malloc_type_malloc(0x18uLL, 0x10A00404E934A1DuLL);
      if (!v55)
      {
        if (v35)
        {
          munmap(value[0], v35);
        }

        goto LABEL_15;
      }

      v34 = v55;
      v30 = 0;
      v12 = 0;
      v31 = value;
      goto LABEL_78;
    }
  }

  if ((v8 & 0x100) != 0)
  {
    LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2028, "CGImage (created by vImageCreateCGImageFromBuffer) - copyImageBlockSet sourceRect is not a subRect of the image bounds.\n");
  }

LABEL_15:
  result = 0;
LABEL_16:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void *mmap_accelerate(uint64_t a1)
{
  result = mmap(0, (a1 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0], 3, 4097, 1258291200, 0);
  if (result == -1)
  {
    return 0;
  }

  return result;
}

void vImageDefaultNoAllocateCallback(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

const void *_vImageCreateCGImageFromBuffer(void *a1, uint64_t a2, void (*a3)(int a1, void *a2), uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v89 = *MEMORY[0x277D85DE8];
  v79 = 0;
  if ((a5 & 0xFFFFFCCF) != 0)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2378, "vImageCreateCGImageFromBuffer: invalid flags 0x%8.8x\n", a5 & 0xFFFFFCCF);
    }

    result = 0;
    if (!a6)
    {
      goto LABEL_205;
    }

    v8 = -21775;
LABEL_204:
    *a6 = v8;
LABEL_205:
    v70 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!a1 || !a2)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2386, "vImageCreateCGImageFromBuffer: buf and format may not be NULL\n");
    }

    result = 0;
    if (!a6)
    {
      goto LABEL_205;
    }

    v8 = -21772;
    goto LABEL_204;
  }

  v9 = *(a2 + 16);
  *space = *a2;
  v77 = v9;
  v78 = *(a2 + 32);
  if (DWORD1(v9) >= 2)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2398, "vImageCreateCGImageFromBuffer: format invalid\n");
    }

    result = 0;
    if (!a6)
    {
      goto LABEL_205;
    }

    v8 = -21773;
    goto LABEL_204;
  }

  if (v78 >= 5)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2407, "vImageCreateCGImageFromBuffer: format.renderingIntent (%u) is unknown\n", v78);
    }

LABEL_20:
    if (!a6)
    {
      result = 0;
      v18 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = 0;
    v8 = -21778;
    goto LABEL_204;
  }

  v12 = CGColorSpaceGetModel(space[1]) == kCGColorSpaceModelLab || space[1] == 0;
  v13 = !v12;
  if (v12)
  {
    BaseColorSpace = 0;
    v16 = 1;
    v14 = space[0];
  }

  else
  {
    v14 = space[0];
    BaseColorSpace = space[1];
    if (CGColorSpaceGetModel(space[1]) == kCGColorSpaceModelIndexed)
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(space[1]);
      if (!BaseColorSpace)
      {
LABEL_33:
        LOBYTE(v16) = 1;
        v17 = a2;
        goto LABEL_53;
      }

      while (CGColorSpaceGetModel(BaseColorSpace) == kCGColorSpaceModelIndexed)
      {
        BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
        if (!BaseColorSpace)
        {
          goto LABEL_33;
        }
      }

      v14 = 8;
    }

    v16 = CGColorSpaceGetModel(BaseColorSpace) == kCGColorSpaceModelRGB;
  }

  v19 = a5;
  v17 = a2;
  if (v14 <= 10)
  {
    if (v14 > 5)
    {
      if (v14 > 8)
      {
        if (v14 != 9)
        {
          if (HIDWORD(space[0]) == 32 && !v16)
          {
            if ((a5 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2483, "vImageCreateCGImageFromBuffer: 10-bit images with bitsPerPixel = 32 must be RGB\n");
            }

            goto LABEL_20;
          }

          v14 = 32;
          goto LABEL_80;
        }

        goto LABEL_41;
      }

      if ((v14 - 6) >= 2)
      {
        if (v14 == 8)
        {
          goto LABEL_80;
        }

        goto LABEL_69;
      }
    }

    else if ((v14 - 1) >= 4)
    {
      if (v14 == 5)
      {
        if (HIDWORD(space[0]) == 16)
        {
          if (!v16)
          {
            if ((a5 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2457, "vImageCreateCGImageFromBuffer: 5-bit images with bitsPerPixel = 16 must be RGB\n");
            }

            goto LABEL_20;
          }

          v14 = 8;
          v16 = 1;
        }

        else
        {
          if (HIDWORD(space[0]) % LODWORD(space[0]))
          {
            if ((a5 & 0x100) != 0)
            {
              LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2467, "vImageCreateCGImageFromBuffer: 5-bit images that are not RGB with bitsPerPixel = 16 must be packed\n");
            }

            goto LABEL_20;
          }

          v14 = 8;
        }

        goto LABEL_80;
      }

      goto LABEL_69;
    }

    if (v13)
    {
      LOBYTE(v13) = 1;
      v14 = 8;
      goto LABEL_81;
    }

LABEL_53:
    v20 = v77;
    v21 = v77 & 7;
    v22 = 8 * HasAlphaChannel_HasAlphaChannelTable[v21] + 24;
    v23 = (v77 - ((0x54u >> v77) & 1)) & 0xFFFF8FFF;
    if (v16)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  if (v14 > 0x20)
  {
    goto LABEL_63;
  }

  if (((1 << v14) & 0xFFFEE000) != 0)
  {
    goto LABEL_41;
  }

  if (v14 != 16)
  {
    if (v14 == 32)
    {
      if (v13)
      {
        goto LABEL_42;
      }

      goto LABEL_61;
    }

LABEL_63:
    if (v14 != 11)
    {
      if (v14 == 12)
      {
        HIDWORD(v26) = -1431655765 * HIDWORD(space[0]);
        LODWORD(v26) = -1431655765 * HIDWORD(space[0]);
        if ((v26 >> 2) >= 0x15555556)
        {
          if ((a5 & 0x100) != 0)
          {
            LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2517, "vImageCreateCGImageFromBuffer: 12-bit per component pixels currently require that the pixel be a multiple of 12 bits in size\n");
          }

          goto LABEL_20;
        }

        v14 = 16;
        goto LABEL_80;
      }

LABEL_69:
      if ((a5 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2534, "vImageCreateCGImageFromBuffer: %u-bpc buffers are not allowed.\n", LODWORD(space[0]));
      }

      goto LABEL_20;
    }

LABEL_41:
    if (v13)
    {
LABEL_42:
      LOBYTE(v13) = 1;
      v14 = 32;
LABEL_81:
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
      v19 = a5;
      v17 = a2;
      goto LABEL_82;
    }

LABEL_61:
    v24 = 0;
    v22 = 32 * HasAlphaChannel_HasAlphaChannelTable[v77 & 7] + 96;
    v20 = (v77 - ((0x54u >> v77) & 1)) & 0xFFFF8EFF | 0x2100;
LABEL_62:
    v25 = 32;
LABEL_91:
    v23 = v20;
    goto LABEL_92;
  }

LABEL_80:
  if (v13)
  {
    goto LABEL_81;
  }

  NumberOfComponents = 3;
LABEL_82:
  v20 = v77;
  v21 = v77 & 7;
  v22 = (NumberOfComponents + HasAlphaChannel_HasAlphaChannelTable[v21]) * v14;
  v28 = v77 - ((0x54u >> v77) & 1);
  if (v14 != 32)
  {
    if (v14 != 16)
    {
      if (v14 != 8)
      {
        if ((v19 & 0x100) != 0)
        {
          LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2589, "vImageCreateCGImageFromBuffer: internal error @%u\nPlease file a bug report with the vImage_CGImageFormat passed to the function.\n", 2589);
        }

        result = 0;
        if (!a6)
        {
          goto LABEL_205;
        }

        v8 = -21776;
        goto LABEL_204;
      }

      v23 = v28 & 0xFFFF8FFF;
      if (v16)
      {
LABEL_86:
        if (v20 & 0x7000) == 0x2000 && ((0xD4uLL >> v21))
        {
          v24 = 0;
          v25 = 8;
          goto LABEL_92;
        }
      }

LABEL_89:
      v24 = 0;
      v25 = 8;
      v20 = v23;
      goto LABEL_92;
    }

    v24 = 0;
    v20 = v28 & 0xFFFF8EFF | 0x1000;
    v25 = 16;
    goto LABEL_91;
  }

  v20 = v28 & 0xFFFF8EFF | 0x2100;
  v54 = v13 ^ 1;
  if (!*(&v77 + 1))
  {
    v54 = 1;
  }

  if (v54)
  {
    v24 = 0;
    goto LABEL_62;
  }

  if (CGColorSpaceGetModel(BaseColorSpace) == kCGColorSpaceModelLab)
  {
    v86[0] = 0;
    v86[1] = 0x4059000000000000;
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    v80 = 0u;
    v81 = 0u;
    CGColorSpaceGetLabData();
    v86[2] = 0;
    v87 = *(v83 + 8);
    v88 = 0;
    v24 = v86;
  }

  else
  {
    v24 = 0;
  }

  v25 = 32;
  v23 = v20;
  v17 = a2;
LABEL_92:
  v29 = *(v17 + 20);
  space[0] = __PAIR64__(v22, v25);
  space[1] = BaseColorSpace;
  *&v77 = __PAIR64__(v29, v20);
  *(&v77 + 1) = v24;
  LODWORD(v78) = 0;
  IsEqual = _vImageCGImageFormat_IsEqual(space, v17);
  if (a3)
  {
    v31 = a3;
  }

  else
  {
    v31 = vImageDefaultNoAllocateCallback;
  }

  if (a5 >= 0x200)
  {
    v32 = a4;
  }

  else
  {
    v32 = 0;
  }

  if (a5 >= 0x200)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  if (space[1])
  {
    CGColorSpaceRetain(space[1]);
  }

  else
  {
    space[1] = CGColorSpaceCreateDeviceRGB();
  }

  v34 = malloc_type_malloc(0x80uLL, 0x10E004033110928uLL);
  if (!v34)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2636, "vImageCreateCGImageFromBuffer: Could not allocate internal representation of image\n");
    }

    v47 = 0;
    v79 = -21771;
    goto LABEL_201;
  }

  v35 = v34;
  *v34 = 1;
  v36 = *a1;
  v37 = *(a1 + 1);
  *(v34 + 11) = v33;
  v38 = (v34 + 8);
  *(v34 + 8) = v36;
  *(v34 + 24) = v37;
  v39 = (v34 + 40);
  v40 = v77;
  *(v34 + 40) = *space;
  *(v34 + 56) = v40;
  *(v34 + 9) = v78;
  *(v34 + 20) = v23;
  *(v34 + 12) = v32;
  *(v34 + 13) = 0;
  *(v34 + 14) = 0x300000000;
  *(v34 + 30) = a5;
  if (a5 >= 0x200 && IsEqual)
  {
    v41 = a5;
    v42 = 0;
    goto LABEL_108;
  }

  *(v34 + 11) = 0;
  *(v34 + 12) = 0;
  v79 = _vImageBuffer_Init((v34 + 8), a1[1], a1[2], *(v34 + 11), 0x200u);
  if (v79 < 0)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2664, "vImageCreateCGImageFromBuffer: Failed to vImageBuffer_Init a new backing store for image.\n");
LABEL_144:
      v56 = a5;
      v47 = 0;
      v42 = 0;
      goto LABEL_186;
    }

LABEL_135:
    v47 = 0;
    goto LABEL_197;
  }

  v48 = (*MEMORY[0x277D85FA0] + *(v35 + 4) * *(v35 + 2) - 1) & -*MEMORY[0x277D85FA0];
  *(v35 + 13) = v48;
  v49 = mmap_accelerate(v48);
  *(v35 + 1) = v49;
  if (!v49)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2673, "vImageCreateCGImageFromBuffer: Failed to mmap a new backing store for image.\n");
    }

    goto LABEL_194;
  }

  if (IsEqual)
  {
    if ((BYTE4(space[0]) & 7) != 0)
    {
      if (a1[1])
      {
        v50 = v49;
        v51 = 0;
        v52 = (a1[2] * HIDWORD(space[0]) + 7) >> 3;
        v53 = *a1;
        do
        {
          memcpy(v50, v53, v52);
          v53 += a1[3];
          v50 += *(v35 + 4);
          ++v51;
        }

        while (v51 < a1[1]);
      }

      goto LABEL_161;
    }

    v79 = vmCopyBuffers(a1, v38);
    if (v79)
    {
      if ((a5 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2720, "vImageCreateCGImageFromBuffer: Failed to copy buf->data into new backing store for image.\n");
        goto LABEL_144;
      }

      goto LABEL_135;
    }
  }

  else
  {
    if (*(a2 + 20) == 1)
    {
      v57 = CGColorConversionInfoCreateFromList(0, *(a2 + 8), kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, *(v35 + 6), 1, 0, 0);
      v58 = Converter_CreateWithCGColorConversionInfo(v57, a2, v39, 0, a5 & 0x110, &v79);
    }

    else
    {
      v58 = Converter_CreateWithCGImageFormat(a2, v39, 0, a5 & 0x110, &v79);
    }

    if (!v58)
    {
      if ((a5 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2701, "vImageCreateCGImageFromBuffer: vImageConverter_CreateWithCGImageFormat failed to create a vImageConverter to convert format to something CG can use.\n");
      }

      goto LABEL_144;
    }

    v59 = v58;
    v79 = Convert_AnyToAny(v58, a1, v38, 0, a5 & 0x110);
    Converter_Release(v59);
    if (v79)
    {
      if ((a5 & 0x100) != 0)
      {
        LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2709, "vImageCreateCGImageFromBuffer: vImageConvert_AnyToAny failed to convert format to something CG can use.\n");
        goto LABEL_144;
      }

      goto LABEL_135;
    }
  }

LABEL_161:
  v42 = 1;
  v60 = mprotect(*(v35 + 1), *(v35 + 13), 1);
  v41 = a5;
  if (!v60)
  {
    v35[29] = 1;
  }

LABEL_108:
  v43 = COERCE__INT64(*(v35 + 2)) - 1;
  if (*(v35 + 3) < *(v35 + 3))
  {
    v44 = *v39;
    if (*v39 != 32)
    {
      goto LABEL_110;
    }

LABEL_166:
    v45 = v35[20];
    if ((v45 & 0x100) != 0)
    {
      v46 = 4;
    }

    else
    {
      v46 = 3;
    }

    goto LABEL_169;
  }

  v44 = *v39;
  if (*v39 == 32)
  {
    goto LABEL_166;
  }

LABEL_110:
  if (v44 == 16)
  {
    v35[28] = 2;
    v45 = v35[20];
    goto LABEL_170;
  }

  if (v44 != 8)
  {
    if ((v41 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2776, "Encountered unexpected %u bit image late in vImageCreateCGImageFromBuffer\n", v72);
    }

    v47 = 0;
    v55 = -21776;
    goto LABEL_196;
  }

  v45 = v35[20];
  if ((v45 & 0x100) != 0)
  {
    if ((v41 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2760, "8-bit images may not be floating-point images\n");
    }

    v47 = 0;
    v55 = -21778;
    goto LABEL_196;
  }

  v46 = 1;
LABEL_169:
  v35[28] = v46;
LABEL_170:
  v47 = 0;
  v61 = v45 & 0x1F;
  keys = 0;
  values = 0;
  v62 = 1;
  if ((v45 & 0x1F) > 7)
  {
    goto LABEL_179;
  }

  if (((1 << v61) & 0x98) != 0)
  {
    v64 = @"kCGImageProviderAlphaIsNotPremultiplied";
  }

  else
  {
    v63 = 1 << v61;
    if ((v63 & 6) != 0)
    {
      v64 = @"kCGImageProviderAlphaIsPremultiplied";
    }

    else
    {
      if ((v63 & 0x60) == 0)
      {
        goto LABEL_179;
      }

      v64 = @"kCGImageProviderAlphaIsOne";
    }
  }

  keys = v64;
  values = *MEMORY[0x277CBED28];
  v47 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v47)
  {
LABEL_195:
    v55 = -21771;
LABEL_196:
    v79 = v55;
LABEL_197:
    v69 = *(v35 + 13);
    if (v69 && *v38)
    {
      munmap(*v38, v69);
    }

    free(v35);
LABEL_201:
    CGColorSpaceRelease(space[1]);
    goto LABEL_202;
  }

  v62 = 0;
  v65 = v35[28];
LABEL_179:
  v66 = *(v35 + 6);
  v67 = CGImageProviderCreate();
  if (v47)
  {
    CFRelease(v47);
  }

  if (!v67)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2830, "vImageCreateCGImageFromBuffer: Could not create CGImageProvider to represent image\n");
    }

    goto LABEL_194;
  }

  if ((v62 & 1) == 0 && !CGImageProviderGetProperty())
  {
    CGImageProviderSetProperty();
  }

  v68 = *(v35 + 8);
  v47 = CGImageCreateWithImageProvider();
  CGImageProviderRelease();
  v56 = a5;
  if (!v47)
  {
    if ((a5 & 0x100) != 0)
    {
      LogError("/Library/Caches/com.apple.xbs/Sources/vImage_CGInterfaces/Source/vImage_CGInterfaces.c", 2851, "vImageCreateCGImageFromBuffer: CGImageCreateWithImageProvider failed\n");
    }

LABEL_194:
    v47 = 0;
    goto LABEL_195;
  }

LABEL_186:
  if (v79)
  {
    goto LABEL_197;
  }

  if (v56 >= 0x200 && v42)
  {
    v31(a4, *a1);
  }

LABEL_202:
  if (a6)
  {
    v8 = v79;
    result = v47;
    goto LABEL_204;
  }

  result = v47;
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void GetColorSpaceDescription(const void *a1, char *__str, size_t __size)
{
  if (a1)
  {
    TypeID = CGColorSpaceGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v7 = CFCopyDescription(a1);
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        if (v9 == CFStringGetTypeID() && CFStringGetCString(v8, __str, __size, 0x600u))
        {
          v10 = v8;
        }

        else
        {
          snprintf(__str, __size, "<CFStringGetCString failed: could not get description>");
          v10 = v8;
        }

        CFRelease(v10);
        return;
      }

      v11 = "<no description>";
    }

    else
    {
      v11 = "<Invalid CGColorSpaceRef object>";
    }
  }

  else
  {
    v11 = "<NULL colorspace>";
  }

  snprintf(__str, __size, v11);
}

BOOL vImageConverter_Equal(void *a1, void *a2)
{
  if (CFGetTypeID(a1) != qword_280AC12D0 || CFGetTypeID(a2) != qword_280AC12D0)
  {
    return 0;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = a1[2];
    if (v5 && a2[2])
    {
      return (*(v5 + 32))(a1, a2) != 0;
    }

    return 0;
  }

  return result;
}

CFStringRef vImageConverter_copyFormattingDesc(uint64_t a1, const __CFDictionary *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 16) + 24))();
  v3 = CFStringCreateWithCString(0, cStr, 0x600u);
  v4 = CFStringCreateWithFormat(0, a2, @"%@", v3);
  CFRelease(v3);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

CFStringRef vImageConverter_copyDebugDesc(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 16) + 24))();
  result = CFStringCreateWithCString(0, cStr, 0x600u);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetCodeFragmentWithCGColorConverter()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  CGColorConversionInfoIterateFunctionsWithCallbacks();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t __GetCodeFragmentWithCGColorConverter_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  values[2] = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v5 = a5;
    v8 = 0;
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = *MEMORY[0x277CBED28];
    value = *MEMORY[0x277CBED28];
    v50 = v9;
    while (1)
    {
      v12 = *(*(a2 + 52) + 8 * *(v5 + 8 * v8));
      valuePtr = v8;
      v53 = 0;
      memset(&v52[1], 0, 32);
      CGColorTRCGetFunction();
      Properties = CGColorFunctionGetProperties();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        goto LABEL_4;
      }

      v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9C0], v14);
      CFRelease(v14);
      if (v52[1] <= 2)
      {
        if (v52[1])
        {
          if (v52[1] == 1)
          {
            v15 = *MEMORY[0x277CBC9F8];
            v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            if (!v16)
            {
              goto LABEL_3;
            }
          }

          else
          {
            if (v52[1] != 2)
            {
              goto LABEL_23;
            }

            v15 = *MEMORY[0x277CBCA00];
            v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            if (!v16)
            {
LABEL_3:
              CFRelease(Mutable);
              Mutable = 0;
              v9 = v50;
              v5 = a5;
              goto LABEL_4;
            }
          }
        }

        else
        {
          v15 = *MEMORY[0x277CBC9F0];
          v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          if (!v16)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_31;
      }

      if (v52[1] == 3)
      {
        break;
      }

      if (v52[1] == 4)
      {
        v15 = *MEMORY[0x277CBCA10];
        v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        if (!v16)
        {
          goto LABEL_3;
        }

        goto LABEL_31;
      }

      if (v52[1] != 5 || (v17 = CFDataCreate(0, *&v52[4], 4 * *&v52[2])) == 0)
      {
LABEL_23:
        CFRelease(Mutable);
        Mutable = 0;
        goto LABEL_4;
      }

      v18 = v17;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9A8], v17);
      CFRelease(v18);
      v52[0] = v52[2];
      v19 = CFNumberCreate(0, kCFNumberSInt32Type, v52);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9C8], v19);
      CFRelease(v19);
      CGColorFunctionGetInputRange();
      v21 = v20;
      v23 = v22;
      CGColorFunctionGetOutputRange();
      if (v23 > 1.0 || v21 < 0.0 || v25 > 1.0 || v24 < 0.0)
      {
        v26 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[8]);
        v27 = CFNumberCreate(0, kCFNumberFloat32Type, &v53);
        values[0] = v26;
        values[1] = v27;
        v28 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
        CFRelease(v26);
        CFRelease(v27);
        if (!v28)
        {
          goto LABEL_43;
        }

        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionNegBoundary", v28);
        CFRelease(v28);
        v29 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[6]);
        v30 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[7]);
        v55[0] = v29;
        v55[1] = v30;
        v31 = CFArrayCreate(0, v55, 2, MEMORY[0x277CBF128]);
        CFRelease(v29);
        CFRelease(v30);
        if (!v31)
        {
LABEL_43:
          CFRelease(Mutable);
          v9 = v50;
          v5 = a5;
          Mutable = 0;
          goto LABEL_4;
        }

        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionPosBoundary", v31);
        v32 = v31;
        goto LABEL_32;
      }

LABEL_33:
      CGColorFunctionGetInputRange();
      v42 = v41;
      v44 = v43;
      CGColorFunctionGetOutputRange();
      if (v44 > 1.0 || v42 < 0.0 || v46 > 1.0 || v45 < 0.0)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesExtendedRange", value);
        v9 = v50;
        v5 = a5;
        if ((Properties & 1) == 0)
        {
LABEL_38:
          if ((Properties & 2) != 0)
          {
            goto LABEL_42;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v9 = v50;
        v5 = a5;
        if ((Properties & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", value);
      if ((Properties & 2) != 0)
      {
LABEL_42:
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesNoClamp", value);
      }

LABEL_4:
      CFArrayAppendValue(v9, Mutable);
      CFRelease(Mutable);
      if (a4 == ++v8)
      {
        goto LABEL_44;
      }
    }

    v15 = *MEMORY[0x277CBCA08];
    v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v16)
    {
      goto LABEL_3;
    }

LABEL_31:
    v33 = v16;
    v34 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[2]);
    CFArrayAppendValue(v33, v34);
    CFRelease(v34);
    v35 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[3]);
    CFArrayAppendValue(v33, v35);
    CFRelease(v35);
    v36 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[4]);
    CFArrayAppendValue(v33, v36);
    CFRelease(v36);
    v37 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[5]);
    CFArrayAppendValue(v33, v37);
    CFRelease(v37);
    v38 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[6]);
    CFArrayAppendValue(v33, v38);
    CFRelease(v38);
    v39 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[7]);
    CFArrayAppendValue(v33, v39);
    CFRelease(v39);
    v40 = CFNumberCreate(0, kCFNumberFloat32Type, &v52[8]);
    CFArrayAppendValue(v33, v40);
    CFRelease(v40);
    CFDictionaryAddValue(Mutable, v15, v33);
    v32 = v33;
LABEL_32:
    CFRelease(v32);
    goto LABEL_33;
  }

LABEL_44:
  v47 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __GetCodeFragmentWithCGColorConverter_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = CFGetTypeID(*(*(a2 + 60) + 8 * a4));
  if (v5 != CGColorMatrixGetTypeID())
  {
    goto LABEL_16;
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  CGColorMatrixGetMatrix();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_17;
  }

  v7 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v7)
  {
LABEL_15:
    CFRelease(Mutable);
LABEL_16:
    Mutable = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = CFNumberCreate(0, kCFNumberFloat32Type, &v36);
  CFArrayAppendValue(v10, v11);
  CFRelease(v11);
  v12 = CFNumberCreate(0, kCFNumberFloat32Type, &v36 + 4);
  CFArrayAppendValue(v10, v12);
  CFRelease(v12);
  v13 = CFNumberCreate(0, kCFNumberFloat32Type, &v36 + 8);
  CFArrayAppendValue(v10, v13);
  CFRelease(v13);
  v14 = CFNumberCreate(0, kCFNumberFloat32Type, (&v36 | 0xC));
  CFArrayAppendValue(v10, v14);
  CFRelease(v14);
  CFArrayAppendValue(v8, v10);
  CFRelease(v10);
  v15 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = CFNumberCreate(0, kCFNumberFloat32Type, &v37);
  CFArrayAppendValue(v16, v17);
  CFRelease(v17);
  v18 = CFNumberCreate(0, kCFNumberFloat32Type, &v37 + 4);
  CFArrayAppendValue(v16, v18);
  CFRelease(v18);
  v19 = CFNumberCreate(0, kCFNumberFloat32Type, &v37 + 8);
  CFArrayAppendValue(v16, v19);
  CFRelease(v19);
  v20 = CFNumberCreate(0, kCFNumberFloat32Type, &v37 + 12);
  CFArrayAppendValue(v16, v20);
  CFRelease(v20);
  CFArrayAppendValue(v8, v16);
  CFRelease(v16);
  v21 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v21)
  {
LABEL_14:
    CFRelease(v8);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = CFNumberCreate(0, kCFNumberFloat32Type, &v38);
  CFArrayAppendValue(v22, v23);
  CFRelease(v23);
  v24 = CFNumberCreate(0, kCFNumberFloat32Type, &v38 + 4);
  CFArrayAppendValue(v22, v24);
  CFRelease(v24);
  v25 = CFNumberCreate(0, kCFNumberFloat32Type, &v38 + 8);
  CFArrayAppendValue(v22, v25);
  CFRelease(v25);
  v26 = CFNumberCreate(0, kCFNumberFloat32Type, &v38 + 12);
  CFArrayAppendValue(v22, v26);
  CFRelease(v26);
  CFArrayAppendValue(v8, v22);
  CFRelease(v22);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9D8], v8);
  CFRelease(v8);
  Properties = CGColorFunctionGetProperties();
  CGColorFunctionGetInputRange();
  v29 = v28;
  v31 = v30;
  CGColorFunctionGetOutputRange();
  v34 = MEMORY[0x277CBED28];
  if (v31 > 1.0 || v29 < 0.0 || v33 > 1.0 || v32 < 0.0)
  {
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesExtendedRange", *MEMORY[0x277CBED28]);
    if ((Properties & 1) == 0)
    {
LABEL_12:
      if ((Properties & 2) != 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  else if ((Properties & 1) == 0)
  {
    goto LABEL_12;
  }

  CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v34);
  if ((Properties & 2) != 0)
  {
LABEL_20:
    CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesNoClamp", *v34);
  }

LABEL_17:
  CFArrayAppendValue(v4, Mutable);
  CFRelease(Mutable);
  return 1;
}

uint64_t __GetCodeFragmentWithCGColorConverter_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(a2 + 68) + 8 * a4);
  memset(v21, 0, 36);
  CGColorNxMTransformGetTransform();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v21[1] + 4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9C8], v7);
    CFRelease(v7);
    v8 = CFNumberCreate(0, kCFNumberSInt32Type, v21 + 4);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9D0], v8);
    CFRelease(v8);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, (v21 | 0xC));
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9E8], v9);
    CFRelease(v9);
    v10 = CFDataCreate(*MEMORY[0x277CBECE8], *(&v21[1] + 12), 2 * *(&v21[1] + 4));
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CBC9B0], v10);
      CFRelease(v11);
      Properties = CGColorFunctionGetProperties();
      CGColorFunctionGetInputRange();
      v14 = v13;
      v16 = v15;
      CGColorFunctionGetOutputRange();
      v19 = MEMORY[0x277CBED28];
      if (v16 > 1.0 || v14 < 0.0 || v18 > 1.0 || v17 < 0.0)
      {
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesExtendedRange", *MEMORY[0x277CBED28]);
        if ((Properties & 1) == 0)
        {
LABEL_8:
          if ((Properties & 2) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else if ((Properties & 1) == 0)
      {
        goto LABEL_8;
      }

      CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesSignedReflection", *v19);
      if ((Properties & 2) != 0)
      {
LABEL_13:
        CFDictionaryAddValue(Mutable, @"com.apple.cmm.FunctionDoesNoClamp", *v19);
      }
    }

    else
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

LABEL_14:
  CFArrayAppendValue(v4, Mutable);
  CFRelease(Mutable);
  return 1;
}

float FindDeviationFromRGBToYpCbCrMatrix(float *a1, float *a2)
{
  result = (vabds_f32(*a1, *a2) + vabds_f32(a1[1], a2[1])) + vabds_f32(a1[2], a2[2]);
  v3 = vabds_f32(a1[5], a2[5]);
  v4 = (vabds_f32(a1[3], a2[3]) + vabds_f32(a1[4], a2[4])) + v3;
  v5 = (v3 + vabds_f32(a1[6], a2[6])) + vabds_f32(a1[7], a2[7]);
  if (result <= v4)
  {
    result = v4;
  }

  if (result <= v5)
  {
    return v5;
  }

  return result;
}

float FindDeviationFromCanonicalRGBToYpCbCrMatrix(const vImage_ARGBToYpCbCrMatrix *a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  result = 0.0;
  if (kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4 != a1 && kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2 != a1 && kvImage_ARGBToYpCbCrMatrix_ITU_R_2020_NCL_0 != a1)
  {
    R_Yp = a1->R_Yp;
    v5 = 1.0 - R_Yp;
    B_Yp = a1->B_Yp;
    v7 = 1.0 - R_Yp - B_Yp;
    v8 = 1.0 - B_Yp;
    v9 = v7;
    *&R_Yp = R_Yp * -0.5 / v8;
    *&v8 = v7 * -0.5 / v8;
    *&v7 = v7 * -0.5 / v5;
    *&v5 = B_Yp * -0.5 / v5;
    result = vabds_f32(B_Yp, B_Yp) + (vabds_f32(a1->R_Yp, a1->R_Yp) + vabds_f32(v9, a1->G_Yp));
    v10 = vabds_f32(*&R_Yp, a1->R_Cb) + vabds_f32(*&v8, a1->G_Cb);
    *&R_Yp = vabds_f32(0.5, a1->B_Cb_R_Cr);
    v11 = *&R_Yp + v10;
    v12 = (*&R_Yp + vabds_f32(*&v7, a1->G_Cr)) + vabds_f32(*&v5, a1->B_Cr);
    if (result <= v11)
    {
      result = v11;
    }

    if (result <= v12)
    {
      return v12;
    }
  }

  return result;
}

vImage_YpCbCrToARGBMatrix *MatrixInverse_forward(vImage_YpCbCrToARGBMatrix *result, uint64_t a2, float a3, double a4, float32x4_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (kvImage_ARGBToYpCbCrMatrix_ITU_R_601_4 == result)
  {
    v12 = &kvImage_YpCbCrToARGBMatrix_ITU_R_601_4;
LABEL_12:
    v13 = *&(*v12)->Yp;
    *(a2 + 16) = (*v12)->Cb_B;
    *a2 = v13;
    result = *v12;
    goto LABEL_13;
  }

  if (kvImage_ARGBToYpCbCrMatrix_ITU_R_709_2 == result)
  {
    v12 = &kvImage_YpCbCrToARGBMatrix_ITU_R_709_2;
    goto LABEL_12;
  }

  if (kvImage_ARGBToYpCbCrMatrix_ITU_R_2020_NCL_0 == result)
  {
    v12 = &kvImage_YpCbCrToARGBMatrix_ITU_R_2020_NCL_0;
    goto LABEL_12;
  }

  if (!result)
  {
LABEL_13:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a3 >= 0.0 && (p_Yp = &result->Yp, DeviationFromCanonicalRGBToYpCbCrMatrix = FindDeviationFromCanonicalRGBToYpCbCrMatrix(result), result = p_Yp, DeviationFromCanonicalRGBToYpCbCrMatrix <= a3))
  {
    v17 = *p_Yp;
    v18 = 1.0 - v17 + 1.0 - v17;
    v19 = p_Yp[2];
    v20 = 1.0 - v17 - v19;
    *&v17 = v17 * -2.0 * (1.0 - v17) / v20;
    *&v20 = v19 * -2.0 * (1.0 - v19) / v20;
    result = a2;
    *a2 = 1065353216;
    *(a2 + 4) = v18;
    *(a2 + 8) = LODWORD(v17);
    v16 = 1.0 - v19 + 1.0 - v19;
    *(a2 + 12) = LODWORD(v20);
  }

  else
  {
    v9.i64[0] = *&result->Yp;
    v9.i64[1] = LODWORD(result->Cr_G);
    a5.i64[0] = *&result->Cb_G;
    a5.i32[2] = LODWORD(result[1].Yp);
    v10.i32[3] = 0;
    v24[0] = v9;
    v24[1] = a5;
    v10.i32[0] = a5.i32[2];
    v10.i32[1] = LODWORD(result[1].Cr_R);
    v10.i32[2] = LODWORD(result[1].Cr_G);
    v24[2] = v10;
    if (MatrixInverse_3x3(v24, v22))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      result = 0;
      v11 = *MEMORY[0x277D85DE8];
      return result;
    }

    v15 = v22[1];
    v15.i32[0] = vextq_s8(v15, v15, 8uLL).u32[0];
    result = a2;
    *a2 = vzip1_s32(*v22[0].f32, *&vextq_s8(v22[0], v22[0], 8uLL));
    *(a2 + 8) = v15.i64[0];
    v16 = v23;
  }

  *(a2 + 16) = v16;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MatrixInverse_3x3(float32x4_t *a1, float32x4_t *a2)
{
  *a2 = xmmword_23399FCA0;
  a2[1] = xmmword_23399FCB0;
  v2 = xmmword_23399FCC0;
  a2[2] = xmmword_23399FCC0;
  v3 = *a1;
  v4 = fabsf(a1[1].f32[0]) > fabsf(COERCE_FLOAT(*a1));
  if (fabsf(a1[2].f32[0]) > fabsf(a1[v4].f32[0]))
  {
    v4 = 2;
  }

  if (v4)
  {
    v5 = v4;
    *a1 = a1[v5];
    a1[v5] = v3;
    v6 = *a2;
    *a2 = a2[v5];
    a2[v5] = v6;
    v3 = *a1;
  }

  if (v3.f32[0] != 1.0)
  {
    v7 = 0xFFFFFFFFLL;
    if (v3.f32[0] == 0.0)
    {
      return v7;
    }

    *a1 = vmulq_n_f32(v3, 1.0 / v3.f32[0]);
    *a2 = vmulq_n_f32(*a2, 1.0 / v3.f32[0]);
    v3 = *a1;
  }

  v8 = a1[1];
  a1[1] = vmlsq_lane_f32(v8, v3, *v8.f32, 0);
  a2[1] = vmlsq_lane_f32(a2[1], *a2, *v8.f32, 0);
  v9 = a1[2];
  a1[2] = vmlsq_lane_f32(v9, *a1, *v9.f32, 0);
  a2[2] = vmlsq_lane_f32(a2[2], *a2, *v9.f32, 0);
  v10 = a1[1];
  LODWORD(v11) = HIDWORD(a1[1].i64[0]);
  if (fabsf(v11) < fabsf(COERCE_FLOAT(HIDWORD(a1[2].i64[0]))))
  {
    a1[1] = a1[2];
    a1[2] = v10;
    v12 = a2[1];
    a2[1] = a2[2];
    a2[2] = v12;
    v10 = a1[1];
    LODWORD(v11) = HIDWORD(a1[1].i64[0]);
  }

  if (v11 != 1.0)
  {
    v7 = 4294967294;
    if (v11 == 0.0)
    {
      return v7;
    }

    v13 = 1.0 / v11;
    a1[1] = vmulq_n_f32(v10, v13);
    a2[1] = vmulq_n_f32(a2[1], v13);
    v10 = a1[1];
  }

  v14 = *a1;
  *a1 = vmlsq_lane_f32(*a1, v10, *a1->f32, 1);
  *a2 = vmlsq_lane_f32(*a2, a2[1], *v14.f32, 1);
  v15 = a1[2];
  a1[2] = vmlsq_lane_f32(v15, a1[1], *v15.f32, 1);
  v16 = vmlsq_lane_f32(a2[2], a2[1], *v15.f32, 1);
  a2[2] = v16;
  v17 = a1[2].f32[2];
  if (v17 == 1.0)
  {
    v2 = a1[2];
    goto LABEL_17;
  }

  v7 = 4294967293;
  if (v17 != 0.0)
  {
    a2[2] = vmulq_n_f32(v16, 1.0 / v17);
    a1[2] = xmmword_23399FCC0;
LABEL_17:
    v7 = 0;
    v18 = *a1;
    *a1 = vmlsq_laneq_f32(*a1, v2, *a1, 2);
    *a2 = vmlsq_laneq_f32(*a2, a2[2], v18, 2);
    v19 = a1[1];
    a1[1] = vmlsq_laneq_f32(v19, a1[2], v19, 2);
    a2[1] = vmlsq_laneq_f32(a2[1], a2[2], v19, 2);
  }

  return v7;
}

void *ColorSpaceTransform_DoConvert@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[1];
  v7 = a1[1];
  v8 = *(*a1 + 136);
  v18[0] = *a2;
  v18[1] = v6;
  v18[2] = v5;
  v18[3] = v4;
  if (v7)
  {
    ColorSpaceTransform_DoConvert(v16, v7, v18);
    result = (v8)(v17, a1, v16);
    v12 = v17[2];
    v11 = v17[3];
    v14 = v17[0];
    v13 = v17[1];
  }

  else
  {
    result = v8(v15);
    v12 = v15[2];
    v11 = v15[3];
    v14 = v15[0];
    v13 = v15[1];
  }

  *a3 = v14;
  a3[1] = v13;
  a3[2] = v12;
  a3[3] = v11;
  return result;
}

float32x4_t DoConvert_Matrix@<Q0>(float32x4_t *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = vaddq_f32(a1[6], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a1[4], *a2, 1), a1[3], COERCE_FLOAT(*a2->f32)), a1[5], *a2->f32, 2));
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = result;
  *(a3 + 16) = 0u;
  return result;
}

char *Print_Matrix(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  if (*a3 < v7)
  {
    v7 = *a3;
  }

  *a3 = v8 - v7;
  v9 = &__str[v7];
  v10 = snprintf(v9, v8 - v7, "\t\t\tmatrix:\n\t\t\t  %10.14f, %10.14f, %10.14f,    +    %10.14f\n\t\t\t  %10.14f, %10.14f, %10.14f,    +    %10.14f\n\t\t\t  %10.14f, %10.14f, %10.14f,    +    %10.14f\n", COERCE_FLOAT(*(a1 + 48)), COERCE_FLOAT(HIDWORD(*(a1 + 48))), COERCE_FLOAT(*(a1 + 56)), COERCE_FLOAT(*(a1 + 96)), COERCE_FLOAT(*(a1 + 64)), COERCE_FLOAT(HIDWORD(*(a1 + 64))), COERCE_FLOAT(*(a1 + 72)), COERCE_FLOAT(HIDWORD(*(a1 + 96))), COERCE_FLOAT(*(a1 + 80)), COERCE_FLOAT(HIDWORD(*(a1 + 80))), COERCE_FLOAT(*(a1 + 88)), COERCE_FLOAT(*(a1 + 104)));
  if (*a3 < v10)
  {
    v10 = *a3;
  }

  *a3 -= v10;
  return &v9[v10];
}

uint64_t DoConvert_MatrixStep(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  memset(v63, 0, sizeof(v63));
  v3 = *(result + 32);
  if (*(result + 32))
  {
    v4 = v63;
    v5 = a2;
    v6 = *(result + 32);
    do
    {
      v7 = *v5;
      v5 += 4;
      *v4++ = v7;
      --v6;
    }

    while (v6);
  }

  memset(v62, 0, sizeof(v62));
  v8 = *(result + 33);
  if (*(result + 33))
  {
    v9 = v62;
    v10 = a3;
    v11 = *(result + 33);
    do
    {
      v12 = *v10;
      v10 += 4;
      *v9++ = v12;
      --v11;
    }

    while (v11);
  }

  v13 = a3[1];
  if (v13)
  {
    v14 = a3[2];
    if (v14)
    {
      v15 = 0;
      v16 = a2 + 3;
      v17 = a3 + 3;
      do
      {
        if (v8)
        {
          v18 = 0;
          if (v3)
          {
            do
            {
              v19 = 0;
              v20 = (result + 48);
              do
              {
                v21 = *(result + 48 + 16 * v19 + 12);
                v22 = v63;
                v23 = v20;
                v24 = v3;
                do
                {
                  v26 = *(*v22 + 4 * v18);
                  v27 = *(result + 96);
                  if (v26 >= v27)
                  {
                    v27 = *(*v22 + 4 * v18);
                    if (v26 > *(result + 100))
                    {
                      v27 = *(result + 100);
                    }
                  }

                  v25 = *v23++;
                  v21 = v21 + (v27 * v25);
                  ++v22;
                  --v24;
                }

                while (v24);
                v28 = *(result + 104);
                if (v21 >= v28)
                {
                  v28 = v21;
                  if (v21 > *(result + 108))
                  {
                    v28 = *(result + 108);
                  }
                }

                *(*(v62 + v19++) + 4 * v18) = v28;
                v20 += 4;
              }

              while (v19 != v8);
              ++v18;
            }

            while (v18 != v14);
          }

          else
          {
            do
            {
              v29 = v62;
              v30 = (result + 60);
              v31 = v8;
              do
              {
                v33 = *(result + 104);
                if (*v30 >= v33)
                {
                  v33 = *v30;
                  if (*v30 > *(result + 108))
                  {
                    v33 = *(result + 108);
                  }
                }

                v32 = *v29++;
                *(v32 + 4 * v18) = v33;
                v30 += 4;
                --v31;
              }

              while (v31);
              ++v18;
            }

            while (v18 != v14);
          }
        }

        if (v3)
        {
          v34 = v63;
          v35 = v16;
          v36 = v3;
          do
          {
            v37 = *v35;
            v35 += 4;
            *v34++ += v37;
            --v36;
          }

          while (v36);
        }

        if (v8)
        {
          v38 = v62;
          v39 = v17;
          v40 = v8;
          do
          {
            v41 = *v39;
            v39 += 4;
            *v38++ += v41;
            --v40;
          }

          while (v40);
        }

        ++v15;
      }

      while (v15 != v13);
    }

    else if (v3)
    {
      if (v8)
      {
        for (i = 0; i != v13; ++i)
        {
          v43 = v63;
          v44 = a2 + 3;
          v45 = v3;
          do
          {
            v46 = *v44;
            v44 += 4;
            *v43++ += v46;
            --v45;
          }

          while (v45);
          v47 = v62;
          v48 = a3 + 3;
          v49 = v8;
          do
          {
            v50 = *v48;
            v48 += 4;
            result = v50;
            *v47++ += v50;
            --v49;
          }

          while (v49);
        }
      }

      else
      {
        for (j = 0; j != v13; ++j)
        {
          v57 = v63;
          v58 = a2 + 3;
          v59 = v3;
          do
          {
            v60 = *v58;
            v58 += 4;
            *v57++ += v60;
            --v59;
          }

          while (v59);
        }
      }
    }

    else if (v8)
    {
      for (k = 0; k != v13; ++k)
      {
        v52 = v62;
        v53 = a3 + 3;
        v54 = v8;
        do
        {
          v55 = *v53;
          v53 += 4;
          *v52++ += v55;
          --v54;
        }

        while (v54);
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
  return result;
}

char *Print_MatrixStep(uint64_t a1, char *__str, size_t *a3)
{
  if (*(a1 + 35))
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = snprintf(__str, *a3, "\t\t%s color space transform:\n\t\t\tinputs:  %u\n\t\t\toutputs: %u\n\t\t\tcrossChan:%s\n\t\t\tsrcMask: 0x%4.4hx\n\t\t\tdstMask: 0x%4.4hx\n", (*a1 + 4), *(a1 + 32), *(a1 + 33), v6, *(a1 + 38), *(a1 + 40));
  v8 = *a3;
  v9 = v7;
  if (*a3 < v7)
  {
    v9 = *a3;
  }

  v10 = &__str[v9];
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 68);
  v17 = *(a1 + 72);
  v18 = *(a1 + 76);
  v19 = *(a1 + 80);
  v20 = *(a1 + 84);
  v21 = *(a1 + 88);
  v22 = *(a1 + 92);
  v23 = *(a1 + 96);
  v24 = *(a1 + 100);
  v25 = *(a1 + 104);
  v26 = *(a1 + 108);
  *a3 = v8 - v9;
  v27 = snprintf(v10, v8 - v9, "\t\tmatrix:         { %8f, %8f, %8f, %8f }\n\t\t                { %8f, %8f, %8f, %8f }\n\t\t                { %8f, %8f, %8f, %8f }\n\t\tinput range:    [%6f, %6f]\n\t\toutput range:   [%6f, %6f]\n", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  if (*a3 < v27)
  {
    v27 = *a3;
  }

  *a3 -= v27;
  return &v10[v27];
}

void DoConvert_Parameter(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>, __int128 a4, __int128 a5, __int128 a6, __int128 a7)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  a6 = a2[2];
  a7 = v10;
  a4 = v8;
  a5 = v9;
  v11 = *(a1 + 38);
  v12 = 0uLL;
  v23 = 0u;
  vars0 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (v11)
  {
    v13 = 0;
    v14 = (a1 + 72);
    do
    {
      if (v11)
      {
        v17 = *(&a4 + v13);
        if (v17 < *v14)
        {
          v15 = *(v14 - 1) + (v17 * *(v14 - 2));
        }

        else
        {
          v15 = powf(*(v14 - 5) + (v17 * *(v14 - 6)), *(v14 - 3)) + *(v14 - 4);
        }

        *(&v21 + v13) = v15;
      }

      v13 += 4;
      v14 += 10;
      v16 = v11 > 1;
      v11 >>= 1;
    }

    while (v16);
    v19 = v23;
    v18 = vars0;
    v12 = v21;
    v20 = v22;
  }

  else
  {
    v20 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
  }

  *a3 = v12;
  a3[1] = v20;
  a3[2] = v19;
  a3[3] = v18;
}

int *DoConvert_TRCs(int *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32))
  {
    v5 = result;
    v6 = 0;
    v7 = result + 30;
    do
    {
      v8 = *v7;
      v7 += 15;
      DoConvert_TRCs_kFuncTable[v8]();
      ++v6;
      a3 += 32;
      a2 += 32;
      result = v7;
    }

    while (v6 < *(v5 + 32));
  }

  return result;
}

void DoTRC0(__int128 *a1, char **a2, char **a3, double a4, double a5, double a6, int8x16_t a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  v10 = v7;
  v11[0] = v8;
  *(v11 + 12) = *(a1 + 44);
  LODWORD(v9) = 4;
  DWORD1(v9) = *(a1 + 1);
  *(&v9 + 1) = 1065353216;
  v10 = 0xFF80000000000000;
  LODWORD(v11[0]) = 0;
  DoTRC4(&v9, a2, a3, COERCE_DOUBLE(__PAIR64__(v11[1], DWORD1(v9))), *&v7, v8, a7);
}

float DoTRC1(uint64_t a1, char **a2, char **a3, double a4, double a5, double a6, int8x16_t a7)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  *v11 = *a1;
  *&v11[16] = v7;
  v12[0] = v8;
  *(v12 + 12) = *(a1 + 44);
  HIDWORD(v9) = v12[1];
  *v11 = 4;
  LODWORD(v7) = *(a1 + 8);
  v8.i32[0] = *(a1 + 12);
  *a7.i32 = -*v8.i32;
  *&v11[4] = *(a1 + 4);
  *&v11[8] = v7;
  *&v11[12] = v8.u32[0];
  *&v9 = -*v8.i32 / *&v7;
  *&v11[20] = *&v9;
  *&v11[24] = 0;
  LODWORD(v12[0]) = 0;
  DoTRC4(v11, a2, a3, v9, *&v7, v8, a7);
  return result;
}

float DoTRC2(uint64_t a1, char **a2, char **a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a1 + 16);
  *v11 = *a1;
  *&v11[16] = v7;
  v12[0] = *(a1 + 32);
  *(v12 + 12) = *(a1 + 44);
  HIDWORD(v8) = v12[1];
  *v11 = 4;
  LODWORD(v7) = *(a1 + 8);
  a6.i32[0] = *(a1 + 12);
  v9 = *(a1 + 16);
  *a7.i32 = -*a6.i32;
  *&v11[4] = *(a1 + 4);
  *&v11[8] = v7;
  *&v11[12] = a6.u32[0];
  *&v8 = -*a6.i32 / *&v7;
  *&v11[20] = *&v8;
  *&v11[24] = v9;
  *&v11[28] = v9;
  LODWORD(v12[0]) = 0;
  DoTRC4(v11, a2, a3, v8, *&v7, a6, a7);
  return result;
}

void DoTRC3(__int128 *a1, char **a2, char **a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = a1[1];
  v9 = *a1;
  v10 = v7;
  v11[0] = a1[2];
  *(v11 + 12) = *(a1 + 44);
  HIDWORD(v8) = v11[1];
  LODWORD(v9) = 4;
  LODWORD(v8) = *(a1 + 3);
  LODWORD(v7) = *(a1 + 4);
  a6.i32[0] = *(a1 + 5);
  *(&v9 + 4) = *(a1 + 4);
  HIDWORD(v9) = LODWORD(v8);
  v10 = __PAIR64__(a6.u32[0], v7);
  LODWORD(v11[0]) = 0;
  DoTRC4(&v9, a2, a3, v8, *&v7, a6, a7);
}

void DoTRC4(uint64_t a1, char **a2, char **a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v9 = *a2;
  v10 = a2[3];
  v11 = *a3;
  v12 = a3[3];
  if (*(a1 + 36) == 7 && (*(a1 + 56) & 6) == 0)
  {
    if (a3[1])
    {
      v28 = 0;
      do
      {
        memcpy(v11, v9, 4 * a3[2]);
        v9 = &v10[v9];
        v11 = &v12[v11];
        ++v28;
      }

      while (v28 < a3[1]);
    }
  }

  else
  {
    v13 = a3[1];
    if (v13)
    {
      v14 = a3[2];
      if (v14)
      {
        v15 = *(a1 + 12);
        v16 = *(a1 + 16);
        v17 = *(a1 + 20);
        v18 = *(a1 + 24);
        v19 = *(a1 + 28);
        v20 = *(a1 + 4);
        v21 = *(a1 + 8);
        if ((*(a1 + 56) & 1) == 0)
        {
          v22 = 0;
          while (1)
          {
            for (i = 0; i != v14; ++i)
            {
              v24 = *(a1 + 40);
              v25 = *&v9[4 * i];
              if (v25 >= v24)
              {
                v24 = *&v9[4 * i];
                if (v25 > *(a1 + 44))
                {
                  v24 = *(a1 + 44);
                }
              }

              if (v24 >= v17)
              {
                v26 = v18 + powf(v15 + (v24 * v21), v20);
                v27 = *(a1 + 48);
                if (v26 < v27)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                v26 = v19 + (v24 * v16);
                v27 = *(a1 + 48);
                if (v26 < v27)
                {
                  goto LABEL_9;
                }
              }

              v27 = v26;
              if (v26 > *(a1 + 52))
              {
                v27 = *(a1 + 52);
              }

LABEL_9:
              *&v11[4 * i] = v27;
            }

            v9 = &v10[v9];
            v11 = &v12[v11];
            if (++v22 == v13)
            {
              return;
            }
          }
        }

        v29 = 0;
        a7.i32[0] = 1.0;
        v30.i64[0] = 0x8000000080000000;
        v30.i64[1] = 0x8000000080000000;
LABEL_25:
        v31 = 0;
        while (1)
        {
          a6.i32[0] = *(a1 + 40);
          v32 = *&v9[4 * v31];
          if (v32 >= *a6.i32)
          {
            a6.i32[0] = *&v9[4 * v31];
            if (v32 > *(a1 + 44))
            {
              a6.i32[0] = *(a1 + 44);
            }
          }

          v33 = fabsf(*a6.i32);
          if (v33 >= v17)
          {
            v37 = a6;
            v36 = powf(v15 + (v33 * v21), v20);
            a6 = v37;
            v30.i64[0] = 0x8000000080000000;
            v30.i64[1] = 0x8000000080000000;
            a7.i32[0] = 1.0;
            v34 = *vbslq_s8(v30, a7, v37).i32 * (v18 + v36);
            v35 = *(a1 + 48);
            if (v34 >= v35)
            {
LABEL_34:
              v35 = v34;
              if (v34 > *(a1 + 52))
              {
                v35 = *(a1 + 52);
              }
            }
          }

          else
          {
            v34 = *vbslq_s8(v30, a7, a6).i32 * (v19 + (v33 * v16));
            v35 = *(a1 + 48);
            if (v34 >= v35)
            {
              goto LABEL_34;
            }
          }

          *&v11[4 * v31++] = v35;
          if (v14 == v31)
          {
            v9 = &v10[v9];
            v11 = &v12[v11];
            if (++v29 == v13)
            {
              return;
            }

            goto LABEL_25;
          }
        }
      }
    }
  }
}

uint64_t DoTRCTable(uint64_t result, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v12 = a3[1];
  if (v12)
  {
    v13 = a3[2];
    if (v13)
    {
      v14 = *(result + 20);
      v15 = *(result + 24);
      v17 = *(result + 40);
      v16 = *(result + 44);
      v19 = *(result + 48);
      v18 = *(result + 52);
      v20 = *(result + 4);
      v21 = (v20 - 1);
      v22 = *(result + 12);
      v23 = *a2;
      v24 = *a3;
      v25 = a2[3];
      v26 = a3[3];
      v27 = v21 - 1;
      v28 = v20 - 2;
      if ((*(result + 56) & 1) == 0)
      {
        v29 = 0;
        v30 = *(result + 28);
        v31 = *(result + 32);
        while (1)
        {
          for (result = 0; result != v13; ++result)
          {
            v32 = *(v23 + 4 * result);
            v33 = v17;
            if (v32 >= v17)
            {
              v33 = *(v23 + 4 * result);
              if (v32 > v16)
              {
                v33 = v16;
              }
            }

            if (v33 > 1.0)
            {
              v34 = v15 + (v14 * v33);
              v35 = v19;
              if (v34 < v19)
              {
                goto LABEL_7;
              }

LABEL_23:
              v35 = v34;
              if (v34 > v18)
              {
                v35 = v18;
              }

              goto LABEL_7;
            }

            if (v33 < 0.0)
            {
              v34 = v31 + (v30 * v33);
              v35 = v19;
              if (v34 < v19)
              {
                goto LABEL_7;
              }

              goto LABEL_23;
            }

            v36 = v33 * v21;
            v37 = v36;
            if (v27 < v36)
            {
              v37 = v21 - 1;
            }

            v38 = v36 - v37;
            v39 = *(v22 + 4 * v37);
            if (v37 + 1 < v28)
            {
              v40 = v37 + 1;
            }

            else
            {
              v40 = v28;
            }

            v34 = (v39 - (v39 * v38)) + (*(v22 + 4 * v40) * v38);
            v35 = v19;
            if (v34 >= v19)
            {
              goto LABEL_23;
            }

LABEL_7:
            *(v24 + 4 * result) = v35;
          }

          v23 += v25;
          v24 += v26;
          if (++v29 == v12)
          {
            return result;
          }
        }
      }

      v41 = 0;
      a11.i32[0] = 1.0;
      v42.i64[0] = 0x8000000080000000;
      v42.i64[1] = 0x8000000080000000;
LABEL_27:
      result = 0;
      while (1)
      {
        v43 = *(v23 + 4 * result);
        *v11.i32 = v17;
        if (v43 >= v17)
        {
          v11.i32[0] = *(v23 + 4 * result);
          if (v43 > v16)
          {
            *v11.i32 = v16;
          }
        }

        v44 = fabsf(*v11.i32);
        if (v44 <= 1.0)
        {
          break;
        }

        v11 = vbslq_s8(v42, a11, v11);
        v45 = (v15 + (v14 * v44)) * *v11.i32;
        *v11.i32 = v19;
        if (v45 >= v19)
        {
          goto LABEL_41;
        }

LABEL_28:
        *(v24 + 4 * result++) = v11.i32[0];
        if (v13 == result)
        {
          v23 += v25;
          v24 += v26;
          if (++v41 == v12)
          {
            return result;
          }

          goto LABEL_27;
        }
      }

      v46 = v44 * v21;
      v47 = v46;
      if (v27 < v46)
      {
        v47 = v21 - 1;
      }

      v48 = v46 - v47;
      v49 = *(v22 + 4 * v47);
      if (v47 + 1 < v28)
      {
        v50 = v47 + 1;
      }

      else
      {
        v50 = v28;
      }

      v11 = vbslq_s8(v42, a11, v11);
      v45 = ((v49 - (v49 * v48)) + (*(v22 + 4 * v50) * v48)) * *v11.i32;
      *v11.i32 = v19;
      if (v45 < v19)
      {
        goto LABEL_28;
      }

LABEL_41:
      *v11.i32 = v45;
      if (v45 > v18)
      {
        *v11.i32 = v18;
      }

      goto LABEL_28;
    }
  }

  return result;
}

void DoTRC_PQ_EOTF(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4, double a5, int8x16_t a6)
{
  v6 = a3[1];
  if (v6)
  {
    v7 = a3[2];
    if (v7)
    {
      v9 = 0;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = *(a1 + 16);
      v13 = *(a1 + 20);
      v14 = *a2;
      v15 = a2[3];
      v16 = *a3;
      v17 = a3[3];
      v18 = *(a1 + 28);
      v19 = -*(a1 + 24);
      v20 = *(a1 + 56);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          a6.i32[0] = *(a1 + 40);
          v22 = *(v14 + 4 * i);
          if (v22 >= *a6.i32)
          {
            a6.i32[0] = *(v14 + 4 * i);
            if (v22 > *(a1 + 44))
            {
              a6.i32[0] = *(a1 + 44);
            }
          }

          v29 = a6;
          v23 = fabsf(*a6.i32);
          if ((v20 & 1) == 0)
          {
            v23 = *a6.i32;
          }

          v24 = powf(v23, v10);
          v25 = v18 * powf(fmaxf(v24 - v12, 0.0) / (v13 + (v19 * v24)), v11);
          v26.i32[0] = 1.0;
          a6.i64[0] = 0x8000000080000000;
          a6.i64[1] = 0x8000000080000000;
          v27 = *vbslq_s8(a6, v26, v29).i32 * v25;
          if ((v20 & 1) == 0)
          {
            v27 = v25;
          }

          v28 = *(a1 + 48);
          if (v27 >= v28)
          {
            v28 = v27;
            if (v27 > *(a1 + 52))
            {
              v28 = *(a1 + 52);
            }
          }

          *(v16 + 4 * i) = v28;
        }

        v14 += v15;
        v16 += v17;
        ++v9;
      }

      while (v9 != v6);
    }
  }
}

void DoTRC_PQ_OETF(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4, double a5, __n128 a6)
{
  v6 = a3[1];
  if (v6)
  {
    v7 = a3[2];
    if (v7)
    {
      v9 = 0;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = *(a1 + 16);
      v13 = *(a1 + 20);
      v14 = *(a1 + 24);
      v15 = *(a1 + 28);
      v16 = a2[3];
      v17 = a3[3];
      v18 = *a2;
      v19 = *a3;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          a6.n128_u32[0] = *(a1 + 40);
          v21 = *(v18 + 4 * i);
          if (v21 >= a6.n128_f32[0])
          {
            a6.n128_u32[0] = *(v18 + 4 * i);
            if (v21 > *(a1 + 44))
            {
              a6.n128_u32[0] = *(a1 + 44);
            }
          }

          v28 = a6;
          v22 = powf(v15 * fabsf(a6.n128_f32[0]), v10);
          v23 = powf((v12 + (v22 * v13)) / ((v14 * v22) + 1.0), v11);
          v24.i64[0] = 0x8000000080000000;
          v24.i64[1] = 0x8000000080000000;
          a6 = v28;
          v25.i32[0] = 1.0;
          v26 = *vbslq_s8(v24, v25, v28).i32 * v23;
          v27 = *(a1 + 48);
          if (v26 >= v27)
          {
            v27 = v26;
            if (v26 > *(a1 + 52))
            {
              v27 = *(a1 + 52);
            }
          }

          *(v19 + 4 * i) = v27;
        }

        v18 += v16;
        v19 += v17;
        ++v9;
      }

      while (v9 != v6);
    }
  }
}

void DoTRC_HLG_EOTF(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = a3[1];
  if (v7)
  {
    v8 = a3[2];
    if (v8)
    {
      v10 = 0;
      v11 = *(a1 + 8);
      v12 = 1.0 / v11;
      v13 = v11 * 4.0;
      a7.i32[0] = *(a1 + 20);
      v14 = *(a1 + 28);
      v15 = a2[3];
      v16 = a3[3];
      v17 = *a2;
      v18 = *a3;
      v19.i64[0] = 0x8000000080000000;
      v19.i64[1] = 0x8000000080000000;
      v28 = a7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          a6.i32[0] = *(a1 + 40);
          v21 = *(v17 + 4 * i);
          if (v21 >= *a6.i32)
          {
            a6.i32[0] = *(v17 + 4 * i);
            if (v21 > *(a1 + 44))
            {
              a6.i32[0] = *(a1 + 44);
            }
          }

          v22 = fabsf(*a6.i32);
          v23 = v22 + (v14 + (v22 * -v14));
          if (v23 <= 0.0)
          {
            v23 = 0.0;
          }

          v24 = v23;
          if (v24 >= 0.5)
          {
            v29 = a6;
            v27 = expm1f((v12 * -0.5) + (v24 * v12));
            a7 = v28;
            a6 = v29;
            v19.i64[0] = 0x8000000080000000;
            v19.i64[1] = 0x8000000080000000;
            v25 = *vbslq_s8(v19, v28, v29).i32 * ((v27 * v13) + 1.0);
            v26 = *(a1 + 48);
            if (v25 < v26)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v25 = *vbslq_s8(v19, a7, a6).i32 * ((v24 * 4.0) * v24);
            v26 = *(a1 + 48);
            if (v25 < v26)
            {
              goto LABEL_6;
            }
          }

          v26 = v25;
          if (v25 > *(a1 + 52))
          {
            v26 = *(a1 + 52);
          }

LABEL_6:
          *(v18 + 4 * i) = v26;
        }

        v17 += v15;
        v18 += v16;
        ++v10;
      }

      while (v10 != v7);
    }
  }
}