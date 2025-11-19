uint64_t VTPixelTransferSessionCopyProperty(uint64_t a1, const __CFString *cf1, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  if (a1)
  {
    if (FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = _VTPixelTransferSessionCopyProperty(a1, cf1, a3, a4);
    FigAtomicDecrement32();
    return v10;
  }

  else
  {

    return _VTPixelTransferSessionCopyProperty(0, cf1, a3, a4);
  }
}

uint64_t _VTPixelTransferSessionCopyProperty(uint64_t a1, const __CFString *cf1, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  *a4 = 0;
  if (*(a1 + 16))
  {

    return FigSignalErrorAtGM();
  }

  if (CFEqual(cf1, @"DestinationCleanAperture"))
  {
    result = *(a1 + 152);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (CFEqual(cf1, @"DestinationPixelAspectRatio"))
  {
    result = *(a1 + 160);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (CFEqual(cf1, @"ScalingMode"))
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (CFEqual(cf1, @"DownsamplingMode"))
  {
    result = *(a1 + 808);
    if (result)
    {
LABEL_16:
      UInt64 = CFRetain(result);
LABEL_17:
      DictionaryRepresentation = UInt64;
LABEL_18:
      result = 0;
LABEL_19:
      *a4 = DictionaryRepresentation;
      return result;
    }

LABEL_29:
    DictionaryRepresentation = 0;
    goto LABEL_18;
  }

  if (CFEqual(cf1, @"SourceCropRectangle"))
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 88);
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v11, vnegq_f64(v13)), vceqzq_s64(v12))))) & 1) == 0)
    {
      goto LABEL_29;
    }

    v31.origin.y = v12.i64[1];
    v31.origin.x = v12.i64[0];
    v31.size.width = v11.i64[0];
    v31.size.height = v11.i64[1];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v31);
    if (DictionaryRepresentation)
    {
      goto LABEL_18;
    }

LABEL_28:
    result = FigSignalErrorAtGM();
    if (result)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"DestinationRectangle"))
  {
    v14 = *(a1 + 120);
    v15 = *(a1 + 136);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v14, vnegq_f64(v16)), vceqzq_s64(v15))))) & 1) == 0)
    {
      goto LABEL_29;
    }

    v32.origin.y = v15.i64[1];
    v32.origin.x = v15.i64[0];
    v32.size.width = v14.i64[0];
    v32.size.height = v14.i64[1];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v32);
    if (DictionaryRepresentation)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (CFEqual(cf1, @"EnableHardwareAcceleratedTransfer"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 769);
LABEL_46:
    v19 = MEMORY[0x1E695E4C0];
    v20 = v18 == 0;
    goto LABEL_47;
  }

  if (CFEqual(cf1, @"EnableHighSpeedTransfer"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 770);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"DisableDither"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 784);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"UseOptimalMSRCoefficients"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 785);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"EnableHistogram"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 789);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"EnableGPUAcceleratedTransfer"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 786);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"EnableSoftwareTransfer"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 788);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"SetGPUPriorityLow"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 787);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"DestinationColorPrimaries"))
  {
    result = *(a1 + 1080);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"DestinationTransferFunction"))
  {
    result = *(a1 + 1088);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"DestinationICCProfile"))
  {
    result = *(a1 + 1008);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"DestinationYCbCrMatrix"))
  {
    result = *(a1 + 1072);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"WriteBlackPixelsOutsideDestRect"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 1136);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"RealTime"))
  {
    result = *(a1 + 1128);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"ForceDisableVectorInstructions"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 208);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"ForceSingleThreaded"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 209);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"PQEOTFOpticalScale"))
  {
    result = *(a1 + 1192);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"PQInvEOTFOpticalScale"))
  {
    result = *(a1 + 1200);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"HLGOETFOpticalScale"))
  {
    result = *(a1 + 1208);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"HLGInvOETFOpticalScale"))
  {
    result = *(a1 + 1216);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"AllowLowQualityScaling"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 210);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"vImageFlags"))
  {
    if (*(a1 + 1144))
    {
      UInt64 = FigCFNumberCreateUInt64();
      goto LABEL_17;
    }

    goto LABEL_109;
  }

  if (CFEqual(cf1, @"AllowPixelTransferChain"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v19 = MEMORY[0x1E695E4C0];
    v20 = *(a1 + 32) == 0;
LABEL_47:
    if (v20)
    {
      v17 = v19;
    }

LABEL_49:
    result = *v17;
    goto LABEL_16;
  }

  if (CFEqual(cf1, @"AllowPixelTransferGraph"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 40);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"AllowFallbacks"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 41);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"ReducedPrecisionFractionalOffsets"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 1187);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"HardwareSupportsFractionalDimensions"))
  {
    IOSurfaceAcceleratorCapabilityFractionalDimensions = FigGetIOSurfaceAcceleratorCapabilityFractionalDimensions();
    v17 = MEMORY[0x1E695E4D0];
    if (!IOSurfaceAcceleratorCapabilityFractionalDimensions)
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_49;
  }

  if (CFEqual(cf1, @"HistogramData"))
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      VTPixelTransferChainCopyFirstNodeProperty(v22, @"HistogramData", a3, a4);
      return 0;
    }

    v23 = *(a1 + 792);
    if (v23 && CFDataGetLength(v23))
    {
      result = *(a1 + 792);
      if (result)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }

LABEL_109:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (CFEqual(cf1, @"Convert10BitHDRToSDRFor8BitDestinationWithUnspecifiedColorProperties"))
  {
    v17 = MEMORY[0x1E695E4D0];
    v18 = *(a1 + 1120);
    goto LABEL_46;
  }

  if (CFEqual(cf1, @"HistogramRectangle"))
  {
    result = *(a1 + 800);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"Label"))
  {
    result = *(a1 + 24);
    if (result)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  if (FigCFEqual())
  {
    v24 = VTGetOnePassScalingPropertyValue(*(a1 + 1160), *(a1 + 1176));
    result = 0;
    if (v24)
    {
      v25 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v25 = MEMORY[0x1E695E4C0];
    }

    DictionaryRepresentation = *v25;
    goto LABEL_19;
  }

  if (FigCFEqual())
  {
    v26 = *(a1 + 1160);
    if (!v26)
    {
      goto LABEL_123;
    }

LABEL_128:

    return VTSessionCopyProperty(v26, cf1, a3, a4);
  }

  v28 = FigCFEqual();
  v26 = *(a1 + 1160);
  if (v28)
  {
    if (!v26)
    {
LABEL_123:
      v27 = *(a1 + 1176);
      if (!v27)
      {
        return 4294954394;
      }

      result = CFDictionaryGetValue(v27, cf1);
      if (result)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }

    goto LABEL_128;
  }

  if (!v26)
  {
    return 4294954396;
  }

  v29 = *MEMORY[0x1E695E480];

  return VTMetalTransferSessionCopyProperty(v26, cf1, v29, a4);
}

uint64_t VTPixelTransferSessionSetProperties(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  if (*(a1 + 16))
  {

    return FigSignalErrorAtGM();
  }

  else if (theDict)
  {
    v4 = 0;
    CFDictionaryApplyFunction(theDict, vtPixelTransferSessionSetOneProperty, &v3);
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t vtPixelTransferSessionSetOneProperty(const __CFString *a1, const void *a2, uint64_t a3)
{
  result = _VTPixelTransferSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTRegisterPixelTransferCapabilityMxN(const void *a1, uint64_t a2, unsigned int *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && (v9 = a3) != 0 && a7 && a8 && a9 && a2 < 10001 && (v14 = a4, a4 < 10001) && (__n = 4 * a2, (v17 = malloc_type_calloc(1uLL, 4 * a2 + 8 * a4 + 80, 0x10B0040618933B4uLL)) != 0))
  {
    v18 = v17;
    v19 = v17 + 10;
    *v17 = a2;
    v17[1] = v17 + 10;
    memcpy(v17 + 10, a1, __n);
    *(v18 + 16) = v14;
    *(v18 + 24) = v19 + __n;
    if (v14 >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *v9++;
        v22 = *(v18 + 24) + v20;
        *v22 = v21;
        getPixelFormatCharacteristics(v21, (v22 + 4), (v22 + 5));
        v20 += 8;
        --v14;
      }

      while (v14);
    }

    *(v18 + 32) = a5;
    *(v18 + 40) = a6;
    *(v18 + 48) = a7;
    *(v18 + 56) = a8;
    *(v18 + 64) = a9;
    *(v18 + 72) = gVTPixelTransferServiceList;
    gVTPixelTransferServiceList = v18;
    return 0;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t vt_Copy_NonPlanar8(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar8_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v8 = *a3;
    v9 = *a5;
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, a1 & 0x1FFFFFFFFFFFFFFFLL);
      v11 += v8;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar16(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar16_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v7 = *a3;
    v8 = *a5;
    v9 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, v9);
      v11 += v7;
      v10 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar32(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = 4 * (a1 & 0x7FFFFFFFFFFFFFFLL);
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar32_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v7 = *a3;
    v8 = *a5;
    v9 = 4 * (a1 & 0x7FFFFFFFFFFFFFFLL);
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, v9);
      v11 += v7;
      v10 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar64(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = 8 * (a1 & 0x3FFFFFFFFFFFFFFLL);
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar64_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v7 = *a3;
    v8 = *a5;
    v9 = 8 * (a1 & 0x3FFFFFFFFFFFFFFLL);
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, v9);
      v11 += v7;
      v10 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar128(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = 16 * (a1 & 0x1FFFFFFFFFFFFFFLL);
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_NonPlanar128_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v7 = *a3;
    v8 = *a5;
    v9 = 16 * (a1 & 0x1FFFFFFFFFFFFFFLL);
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, v9);
      v11 += v7;
      v10 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_v210(uint64_t a1, unint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  v6 = a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = (4 * (((a1 + 5) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0x1FFFFFFFFFFFFFF0;
  if (a2 >= 2 && v7 == v9)
  {
    memcpy(*a6, *a4, v11 + v7 * (a2 - 1));
  }

  else if (a2)
  {
    do
    {
      memcpy(v10, v8, v11);
      v8 += v7;
      v10 += v9;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_v210_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t *a5, void **a6)
{
  if (a2)
  {
    v6 = a2;
    v7 = *a3;
    v8 = *a5;
    v9 = 4 * (((a1 + 5) * 0xAAAAAAAAAAAAAAABLL) >> 64);
    v10 = *a6;
    v11 = *a4;
    do
    {
      memcpy(v10, v11, v9 & 0x1FFFFFFFFFFFFFF0);
      v11 += v7;
      v10 += v8;
      --v6;
    }

    while (v6);
  }

  return 0;
}

uint64_t vt_Copy_y420(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = a1 >> 1;
  v20[2] = a1 >> 1;
  v19[0] = a2;
  v19[1] = a2 >> 1;
  v19[2] = a2 >> 1;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = v20[v9] & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_y420_Crop(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = a1 >> 1;
  v19[2] = a1 >> 1;
  v18[0] = a2;
  v18[1] = a2 >> 1;
  v18[2] = a2 >> 1;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = v19[v9];
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13 & 0x1FFFFFFFFFFFFFFFLL);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_420v(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v9 = 0;
  v10 = a2 >> 1;
  v11 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = *(a3 + 8 * v9);
    v15 = *(a4 + 8 * v9);
    v16 = *(a5 + 8 * v9);
    v17 = *(a6 + 8 * v9);
    if (v14 == v16 && v8 >= 2)
    {
      memcpy(v17, v15, v11 + (v8 - 1) * v14);
    }

    else
    {
      for (; v8; --v8)
      {
        memcpy(v17, v15, v11);
        v15 += v14;
        v17 += v16;
      }
    }

    v12 = 0;
    v8 = v10;
    v9 = 1;
  }

  while ((v13 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_420v_Crop(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = 0;
  v11 = a2 >> 1;
  v12 = 1;
  do
  {
    v13 = v12;
    if (v8)
    {
      v14 = *(a3 + 8 * v10);
      v15 = *(a5 + 8 * v10);
      v16 = *(a6 + 8 * v10);
      v17 = *(a4 + 8 * v10);
      do
      {
        memcpy(v16, v17, a1 & 0x1FFFFFFFFFFFFFFFLL);
        v17 += v14;
        v16 += v15;
        --v8;
      }

      while (v8);
    }

    v12 = 0;
    v8 = v11;
    v10 = 1;
  }

  while ((v13 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_v0a8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = a1;
  v20[2] = a1;
  v19[0] = a2;
  v19[1] = a2 >> 1;
  v19[2] = a2;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = v20[v9] & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_v0a8_Crop(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = a1;
  v19[2] = a1;
  v18[0] = a2;
  v18[1] = a2 >> 1;
  v18[2] = a2;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = v19[v9];
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13 & 0x1FFFFFFFFFFFFFFFLL);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_422v(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v20 = a2 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = *(a3 + 8 * v9);
    v14 = *(a4 + 8 * v9);
    v15 = *(a5 + 8 * v9);
    v16 = *(a6 + 8 * v9);
    if (v13 == v15 && a2 >= 2)
    {
      memcpy(v16, v14, v10 + v20 * v13);
    }

    else if (a2)
    {
      v18 = a2;
      do
      {
        memcpy(v16, v14, v10);
        v14 += v13;
        v16 += v15;
        --v18;
      }

      while (v18);
    }

    v11 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_422v_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2)
    {
      v13 = *(a3 + 8 * v10);
      v14 = *(a5 + 8 * v10);
      v15 = *(a6 + 8 * v10);
      v16 = a2;
      v17 = *(a4 + 8 * v10);
      do
      {
        memcpy(v15, v17, a1 & 0x1FFFFFFFFFFFFFFFLL);
        v17 += v13;
        v15 += v14;
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_v2a8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = a1;
  v20[2] = a1;
  v19[0] = a2;
  v19[1] = a2;
  v19[2] = a2;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = v20[v9] & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_v2a8_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = a1;
  v19[2] = a1;
  v18[0] = a2;
  v18[1] = a2;
  v18[2] = a2;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = v19[v9];
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13 & 0x1FFFFFFFFFFFFFFFLL);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_444v(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  v9 = 2 * a1;
  v20 = a2 - 1;
  v10 = 1;
  do
  {
    v11 = *(a3 + 8 * v8);
    v12 = *(a4 + 8 * v8);
    v13 = *(a5 + 8 * v8);
    v14 = v10;
    v15 = *(a6 + 8 * v8);
    v16 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 == v13 && a2 >= 2)
    {
      memcpy(v15, v12, v16 + v20 * v11);
    }

    else if (a2)
    {
      v18 = a2;
      do
      {
        memcpy(v15, v12, v16);
        v12 += v11;
        v15 += v13;
        --v18;
      }

      while (v18);
    }

    v10 = 0;
    a1 = v9;
    v8 = 1;
  }

  while ((v14 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_444v_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = 0;
  v10 = 2 * a1;
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2)
    {
      v13 = *(a3 + 8 * v9);
      v14 = *(a5 + 8 * v9);
      v15 = *(a6 + 8 * v9);
      v16 = a2;
      v17 = *(a4 + 8 * v9);
      do
      {
        memcpy(v15, v17, v8 & 0x1FFFFFFFFFFFFFFFLL);
        v17 += v13;
        v15 += v14;
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    v8 = v10;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_v4a8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = 2 * a1;
  v20[2] = a1;
  v19[0] = a2;
  v19[1] = a2;
  v19[2] = a2;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = v20[v9] & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_v4a8_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = 2 * a1;
  v19[2] = a1;
  v18[0] = a2;
  v18[1] = a2;
  v18[2] = a2;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = v19[v9];
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13 & 0x1FFFFFFFFFFFFFFFLL);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_x420(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v9 = 0;
  v10 = a2 >> 1;
  v11 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = *(a3 + 8 * v9);
    v15 = *(a4 + 8 * v9);
    v16 = *(a5 + 8 * v9);
    v17 = *(a6 + 8 * v9);
    if (v14 == v16 && v8 >= 2)
    {
      memcpy(v17, v15, v11 + (v8 - 1) * v14);
    }

    else
    {
      for (; v8; --v8)
      {
        memcpy(v17, v15, v11);
        v15 += v14;
        v17 += v16;
      }
    }

    v12 = 0;
    v8 = v10;
    v9 = 1;
  }

  while ((v13 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x420_Crop(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v9 = 0;
  v10 = a2 >> 1;
  v11 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
  v12 = 1;
  do
  {
    v13 = v12;
    if (v8)
    {
      v14 = *(a3 + 8 * v9);
      v15 = *(a5 + 8 * v9);
      v16 = *(a6 + 8 * v9);
      v17 = *(a4 + 8 * v9);
      do
      {
        memcpy(v16, v17, v11);
        v17 += v14;
        v16 += v15;
        --v8;
      }

      while (v8);
    }

    v12 = 0;
    v8 = v10;
    v9 = 1;
  }

  while ((v13 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x422(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
  v20 = a2 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = *(a3 + 8 * v9);
    v14 = *(a4 + 8 * v9);
    v15 = *(a5 + 8 * v9);
    v16 = *(a6 + 8 * v9);
    if (v13 == v15 && a2 >= 2)
    {
      memcpy(v16, v14, v10 + v20 * v13);
    }

    else if (a2)
    {
      v18 = a2;
      do
      {
        memcpy(v16, v14, v10);
        v14 += v13;
        v16 += v15;
        --v18;
      }

      while (v18);
    }

    v11 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x422_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2)
    {
      v13 = *(a3 + 8 * v9);
      v14 = *(a5 + 8 * v9);
      v15 = *(a6 + 8 * v9);
      v16 = a2;
      v17 = *(a4 + 8 * v9);
      do
      {
        memcpy(v15, v17, v10);
        v17 += v13;
        v15 += v14;
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x2as(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = a1;
  v20[2] = a1;
  v19[0] = a2;
  v19[1] = a2;
  v19[2] = a2;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = 2 * (v20[v9] & 0xFFFFFFFFFFFFFFFLL);
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_x2as_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = a1;
  v19[2] = a1;
  v18[0] = a2;
  v18[1] = a2;
  v18[2] = a2;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = 2 * (v19[v9] & 0xFFFFFFFFFFFFFFFLL);
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_x444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  v9 = 2 * a1;
  v20 = a2 - 1;
  v10 = 1;
  do
  {
    v11 = *(a3 + 8 * v8);
    v12 = *(a4 + 8 * v8);
    v13 = *(a5 + 8 * v8);
    v14 = v10;
    v15 = *(a6 + 8 * v8);
    v16 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
    if (v11 == v13 && a2 >= 2)
    {
      memcpy(v15, v12, v16 + v20 * v11);
    }

    else if (a2)
    {
      v18 = a2;
      do
      {
        memcpy(v15, v12, v16);
        v12 += v11;
        v15 += v13;
        --v18;
      }

      while (v18);
    }

    v10 = 0;
    a1 = v9;
    v8 = 1;
  }

  while ((v14 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x444_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  v9 = 2 * a1;
  v10 = 1;
  do
  {
    v11 = v10;
    if (a2)
    {
      v12 = *(a3 + 8 * v8);
      v13 = *(a5 + 8 * v8);
      v14 = 2 * (a1 & 0xFFFFFFFFFFFFFFFLL);
      v15 = *(a6 + 8 * v8);
      v16 = a2;
      v17 = *(a4 + 8 * v8);
      do
      {
        memcpy(v15, v17, v14);
        v17 += v12;
        v15 += v13;
        --v16;
      }

      while (v16);
    }

    v10 = 0;
    a1 = v9;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_x4as(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = a1;
  v20[1] = 2 * a1;
  v20[2] = a1;
  v19[0] = a2;
  v19[1] = a2;
  v19[2] = a2;
  do
  {
    v10 = *(a3 + 8 * v9);
    v11 = *(a4 + 8 * v9);
    v12 = *(a5 + 8 * v9);
    v13 = *(a6 + 8 * v9);
    v14 = 2 * (v20[v9] & 0xFFFFFFFFFFFFFFFLL);
    v15 = v19[v9];
    if (v10 == v12 && v15 >= 2)
    {
      memcpy(*(a6 + 8 * v9), *(a4 + 8 * v9), v14 + (v15 - 1) * v10);
    }

    else
    {
      for (; v15; --v15)
      {
        memcpy(v13, v11, v14);
        v11 += v10;
        v13 += v12;
      }
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_x4as_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  v19[0] = a1;
  v19[1] = 2 * a1;
  v19[2] = a1;
  v18[0] = a2;
  v18[1] = a2;
  v18[2] = a2;
  do
  {
    v10 = v18[v9];
    if (v10)
    {
      v11 = *(a3 + 8 * v9);
      v12 = *(a5 + 8 * v9);
      v13 = 2 * (v19[v9] & 0xFFFFFFFFFFFFFFFLL);
      v14 = *(a6 + 8 * v9);
      v15 = *(a4 + 8 * v9);
      do
      {
        memcpy(v14, v15, v13);
        v15 += v11;
        v14 += v12;
        --v10;
      }

      while (v10);
    }

    ++v9;
  }

  while (v9 != 3);
  return 0;
}

uint64_t vt_Copy_a2vy_Crop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = 2 * a1;
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2)
    {
      v13 = *(a3 + 8 * v9);
      v14 = *(a5 + 8 * v9);
      v15 = *(a6 + 8 * v9);
      v16 = a2;
      v17 = *(a4 + 8 * v9);
      do
      {
        memcpy(v15, v17, v10 & 0x1FFFFFFFFFFFFFFFLL);
        v17 += v13;
        v15 += v14;
        --v16;
      }

      while (v16);
    }

    v11 = 0;
    v10 = a1;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  return 0;
}

uint64_t vt_Copy_b3a8_b3a8_Crop(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4, uint64_t *a5, char **a6)
{
  if (a2)
  {
    v9 = a2;
    v10 = *a3;
    v11 = *a5;
    v12 = 4 * (a1 & 0x7FFFFFFFFFFFFFFLL);
    v13 = *a6;
    v14 = a2;
    v15 = *a4;
    do
    {
      memcpy(v13, v15, v12);
      v15 += v10;
      v13 += v11;
      --v14;
    }

    while (v14);
    v16 = a3[1];
    v17 = a5[1];
    v18 = a6[1];
    v19 = a4[1];
    do
    {
      memcpy(v18, v19, a1 & 0x1FFFFFFFFFFFFFFFLL);
      v19 += v16;
      v18 += v17;
      --v9;
    }

    while (v9);
  }

  return 0;
}

size_t vt_Scale_L008(__CVBuffer *a1, int8x16_t *a2, __CVBuffer *a3, int8x16_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a3, 0);
  v16 = a2[2].i64[1];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v18 = a2[2].i64[0];
  v27 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + BytesPerRow * v16 + v18;
  v28 = vextq_s8(a2[1], a2[1], 8uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v19 = a4[2].i64[1];
  v20 = CVPixelBufferGetBytesPerRow(a3);
  v21 = a4[2].i64[0];
  v24 = CVPixelBufferGetBaseAddressOfPlane(a3, 0) + v20 * v19 + v21;
  v25 = vextq_s8(a4[1], a4[1], 8uLL);
  v26 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v22 = vtScale(&v27, &v24, (a5 + 256), a10 | 8u, MEMORY[0x1E6958A88], a6);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  return v22;
}

size_t vt_SetupOrCleanupPlanarBuffers(__CVBuffer *a1, int8x16_t *a2, uint64_t a3, int a4)
{
  result = CVPixelBufferGetPixelFormatType(a1);
  v9 = result;
  if (result <= 1999843441)
  {
    if (result > 1380410944)
    {
      if (result <= 1714696753)
      {
        if (result > 1647534391)
        {
          if (result == 1647534392)
          {
            goto LABEL_65;
          }

          if (result != 1714696752)
          {
            return result;
          }

          goto LABEL_53;
        }

        if (result == 1380410945)
        {
          if (a4)
          {
            v97 = a2[2].i64[1];
            BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
            v99 = a2[2].i64[0];
            v54 = CVPixelBufferGetBaseAddress(a1) + 16 * v99 + BytesPerRow * v97;
            goto LABEL_93;
          }

          goto LABEL_112;
        }

        if (result != 1630697081)
        {
          return result;
        }

        if (a4)
        {
          v14 = a2[2].i64[1];
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          v16 = a2[2].i64[0];
          *(a3 + 96) = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + BytesPerRowOfPlane * v14 + v16;
          *(a3 + 104) = vextq_s8(a2[1], a2[1], 8uLL);
          v17 = a1;
          v18 = 1;
          goto LABEL_87;
        }

        v96 = 0uLL;
LABEL_116:
        *(a3 + 96) = v96;
        *(a3 + 112) = v96;
        return result;
      }

      if (result <= 1916022839)
      {
        if (result != 1714696754)
        {
          v12 = 1714697268;
LABEL_73:
          if (result != v12)
          {
            return result;
          }

          if (a4)
          {
            for (i = 0; i != 3; ++i)
            {
              v56 = a2[2].i64[1];
              v57 = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
              v58 = a2[2].i64[0];
              *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, i) + v57 * v56 + v58;
              *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
              result = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
              *(a3 + 24) = result;
              a3 += 32;
            }

            return result;
          }

LABEL_101:
          v89 = 0uLL;
          *(a3 + 64) = 0u;
          *(a3 + 80) = 0u;
LABEL_107:
          *(a3 + 32) = v89;
          *(a3 + 48) = v89;
LABEL_113:
          *a3 = v89;
          *(a3 + 16) = v89;
          return result;
        }

        goto LABEL_95;
      }

      if (result == 1916022840)
      {
LABEL_91:
        if (a4)
        {
          v77 = a2[2].i64[1];
          v78 = CVPixelBufferGetBytesPerRow(a1);
          v79 = a2[2].i64[0];
          v54 = CVPixelBufferGetBaseAddress(a1) + 4 * v79 + v78 * v77;
          goto LABEL_93;
        }

LABEL_112:
        v89 = 0uLL;
        goto LABEL_113;
      }

      if (result != 1982882104)
      {
        v11 = 1983131704;
        goto LABEL_90;
      }

      goto LABEL_84;
    }

    if (result <= 875704949)
    {
      if (result <= 875704437)
      {
        if (result == 32)
        {
          goto LABEL_91;
        }

        if (result != 875704422)
        {
          return result;
        }

        goto LABEL_84;
      }

      if (result == 875704438)
      {
LABEL_84:
        if (a4)
        {
          v65 = a2[2].i64[1];
          v66 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v67 = a2[2].i64[0];
          *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + v66 * v65 + v67;
          *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
          *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v68 = a2[2].i64[1] / 2;
          v69 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          v70 = (a2[2].i64[0] + (a2[2].i64[0] >> 63)) & 0xFFFFFFFFFFFFFFFELL;
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
          v72 = a2[1].i64[0];
          v73 = a2[1].i64[1] / 2;
          *(a3 + 32) = &BaseAddressOfPlane[v68 * v69 + v70];
          *(a3 + 40) = v73;
          *(a3 + 48) = v72 / 2;
          result = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          *(a3 + 56) = result;
          if (v9 != 1982882104)
          {
            return result;
          }

          v74 = a2[2].i64[1];
          v75 = CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL);
          v76 = a2[2].i64[0];
          *(a3 + 96) = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL) + v75 * v74 + v76;
          *(a3 + 104) = vextq_s8(a2[1], a2[1], 8uLL);
          v17 = a1;
          v18 = 2;
LABEL_87:
          result = CVPixelBufferGetBytesPerRowOfPlane(v17, v18);
          *(a3 + 120) = result;
          return result;
        }

        v96 = 0uLL;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        if (result != 1982882104)
        {
          return result;
        }

        goto LABEL_116;
      }

      if (result != 875704934)
      {
        return result;
      }

LABEL_80:
      if (a4)
      {
        v59 = a2[2].i64[1];
        v60 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
        v61 = a2[2].i64[0];
        *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + v60 * v59 + v61;
        *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
        *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
        v62 = a2[2].i64[1];
        v63 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
        v64 = (a2[2].i64[0] + (a2[2].i64[0] >> 63)) & 0xFFFFFFFFFFFFFFFELL;
        v25 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + v63 * v62 + v64;
        goto LABEL_82;
      }

LABEL_106:
      v89 = 0uLL;
      goto LABEL_107;
    }

    if (result > 875836533)
    {
      if (result != 875836534)
      {
        v11 = 1111970369;
LABEL_90:
        if (result != v11)
        {
          return result;
        }

        goto LABEL_91;
      }
    }

    else
    {
      if (result == 875704950)
      {
        goto LABEL_80;
      }

      if (result != 875836518)
      {
        return result;
      }
    }

    if (a4)
    {
      v90 = a2[2].i64[1];
      v91 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      v92 = a2[2].i64[0];
      *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + v91 * v90 + v92;
      *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
      *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      v93 = a2[2].i64[1];
      v94 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      v95 = a2[2].i64[0];
      v32 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + 2 * v95 + v94 * v93;
      goto LABEL_104;
    }

    goto LABEL_106;
  }

  if (result <= 2021077551)
  {
    if (result <= 2016687215)
    {
      if (result > 2016686641)
      {
        if (result != 2016686642)
        {
          if (result != 2016687156)
          {
            return result;
          }

          goto LABEL_49;
        }

        goto LABEL_43;
      }

      if (result == 1999843442)
      {
        goto LABEL_65;
      }

      v13 = 2016686640;
    }

    else
    {
      if (result > 2019963441)
      {
        if (result != 2019963442)
        {
          if (result != 2019963956)
          {
            v10 = 2019964016;
            goto LABEL_47;
          }

          goto LABEL_49;
        }

LABEL_43:
        if (a4)
        {
          v19 = a2[2].i64[1];
          v20 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v21 = a2[2].i64[0];
          *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + 2 * v21 + v20 * v19;
          *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
          *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          v22 = a2[2].i64[1];
          v23 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          v24 = (a2[2].i64[0] + (a2[2].i64[0] >> 63)) >> 1;
          v25 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + 4 * v24 + v23 * v22;
LABEL_82:
          v46 = a2[1].i64[0];
          v47 = a2[1].i64[1];
          goto LABEL_83;
        }

        goto LABEL_106;
      }

      if (result == 2016687216)
      {
        goto LABEL_65;
      }

      v13 = 2019963440;
    }

    if (result != v13)
    {
      return result;
    }

LABEL_63:
    if (a4)
    {
      v40 = a2[2].i64[1];
      v41 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      v42 = a2[2].i64[0];
      *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + 2 * v42 + v41 * v40;
      *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
      *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      v43 = a2[2].i64[1] / 2;
      v44 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      v45 = (a2[2].i64[0] + (a2[2].i64[0] >> 63)) >> 1;
      v25 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + 4 * v45 + v43 * v44;
      v46 = a2[1].i64[0];
      v47 = a2[1].i64[1] / 2;
LABEL_83:
      *(a3 + 32) = v25;
      *(a3 + 40) = v47;
      *(a3 + 48) = v46 / 2;
LABEL_105:
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      *(a3 + 56) = result;
      return result;
    }

    goto LABEL_106;
  }

  if (result <= 2033463351)
  {
    if (result > 2021078067)
    {
      if (result != 2021078068)
      {
        v10 = 2021078128;
LABEL_47:
        if (result != v10)
        {
          return result;
        }

LABEL_65:
        if (a4)
        {
          v48 = a2[2].i64[1];
          v49 = CVPixelBufferGetBytesPerRow(a1);
          v50 = a2[2].i64[0];
          *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + 4 * v50 + v49 * v48;
          *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
          result = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
LABEL_94:
          *(a3 + 24) = result;
          return result;
        }

        goto LABEL_112;
      }

LABEL_49:
      if (a4)
      {
        v26 = a2[2].i64[1];
        v27 = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
        v28 = a2[2].i64[0];
        *a3 = CVPixelBufferGetBaseAddressOfPlane(a1, 0) + 2 * v28 + v27 * v26;
        *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
        *(a3 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
        v29 = a2[2].i64[1];
        v30 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
        v31 = a2[2].i64[0];
        v32 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + 4 * v31 + v30 * v29;
LABEL_104:
        *(a3 + 32) = v32;
        *(a3 + 40) = vextq_s8(a2[1], a2[1], 8uLL);
        goto LABEL_105;
      }

      goto LABEL_106;
    }

    if (result != 2021077552)
    {
      if (result != 2021077554)
      {
        return result;
      }

      goto LABEL_43;
    }

    goto LABEL_63;
  }

  if (result <= 2033463855)
  {
    if (result != 2033463352)
    {
      if (result != 2033463606)
      {
        return result;
      }

      if (!a4)
      {
        goto LABEL_112;
      }

      v51 = a2[2].i64[1];
      v52 = CVPixelBufferGetBytesPerRow(a1);
      v53 = a2[2].i64[0];
      v54 = CVPixelBufferGetBaseAddress(a1) + 8 * v53 + v52 * v51;
LABEL_93:
      *a3 = v54;
      *(a3 + 8) = vextq_s8(a2[1], a2[1], 8uLL);
      result = CVPixelBufferGetBytesPerRow(a1);
      goto LABEL_94;
    }

    goto LABEL_91;
  }

  if (result != 2033463856)
  {
    if (result != 2033463858)
    {
      v12 = 2033464372;
      goto LABEL_73;
    }

LABEL_95:
    if ((a4 & 1) == 0)
    {
      goto LABEL_101;
    }

    v80 = 0;
    v81 = (a3 + 16);
    do
    {
      v82 = a2[2].i64[1];
      v83 = CVPixelBufferGetBytesPerRowOfPlane(a1, v80);
      v84 = a2[2].i64[0];
      v85 = CVPixelBufferGetBaseAddressOfPlane(a1, v80);
      v87 = a2[1].i64[0];
      v86 = a2[1].i64[1];
      *(v81 - 2) = &v85[v83 * v82 + (v84 >> (v80 != 0))];
      *(v81 - 1) = v86;
      v88 = v87 / 2;
      if (!v80)
      {
        v88 = v87;
      }

      *v81 = v88;
      result = CVPixelBufferGetBytesPerRowOfPlane(a1, v80);
      v81[1] = result;
      ++v80;
      v81 += 4;
    }

    while (v80 != 3);
    return result;
  }

LABEL_53:
  if ((a4 & 1) == 0)
  {
    goto LABEL_101;
  }

  v33 = 0;
  v34 = (a3 + 16);
  do
  {
    v35 = a2[2].i64[1] >> (v33 != 0);
    v36 = CVPixelBufferGetBytesPerRowOfPlane(a1, v33);
    v37 = a2[2].i64[0] >> (v33 != 0);
    *(v34 - 2) = CVPixelBufferGetBaseAddressOfPlane(a1, v33) + v35 * v36 + v37;
    v38 = a2[1].i64[1];
    if (v33)
    {
      v38 /= 2;
      v39 = a2[1].i64[0] / 2;
    }

    else
    {
      v39 = a2[1].i64[0];
    }

    *(v34 - 1) = v38;
    *v34 = v39;
    result = CVPixelBufferGetBytesPerRowOfPlane(a1, v33);
    v34[1] = result;
    ++v33;
    v34 += 4;
  }

  while (v33 != 3);
  return result;
}

vImage_Error vt_CopyToOrFromPlanarBuffers(__CVBuffer *a1, void *a2, uint64_t a3, int a4, vImage_Flags a5)
{
  result = CVPixelBufferGetPixelFormatType(a1);
  if (result <= 2016686641)
  {
    if (result > 1630697080)
    {
      if (result > 1983000885)
      {
        if (result == 1983000886)
        {
          if (a4)
          {
            v161 = a2;
            v69 = *(a3 + 16);
            v70 = *(a3 + 24);
            v72 = *a3;
            v71 = *(a3 + 8);
            v73 = *(a3 + 88);
            v74 = *(a3 + 32);
            v75 = *(a3 + 56);
            v76 = *(a3 + 64);
            if (CVPixelBufferIsPlanar(a1))
            {
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
              result = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
            }

            else
            {
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
              result = CVPixelBufferGetBaseAddress(a1);
            }

            if (v71 >= 1)
            {
              v124 = 0;
              v125 = (v69 + 1) / 2;
              v126 = result + v161[5] * BytesPerRowOfPlane + 2 * v161[4];
              if (v125 <= 1)
              {
                v125 = 1;
              }

              v127 = 2 * v125;
              do
              {
                if (v69 >= 1)
                {
                  v128 = 0;
                  v129 = 0;
                  v130 = v72;
                  do
                  {
                    v131 = (v76 + v129);
                    v132 = (v74 + v129);
                    *v132 = *(v126 + v128);
                    v132[1] = *(v126 + v128 + 1);
                    *v130 = *(v126 + v128 + 2);
                    v130[1] = *(v126 + v128 + 3);
                    *v131 = *(v126 + v128 + 4);
                    v131[1] = *(v126 + v128 + 5);
                    v130[2] = *(v126 + v128 + 6);
                    v130[3] = *(v126 + v128 + 7);
                    v129 += 2;
                    v128 += 8;
                    v130 += 4;
                  }

                  while (v127 != v129);
                }

                v126 += BytesPerRowOfPlane;
                v72 += v70;
                v74 += v75;
                v76 += v73;
                ++v124;
              }

              while (v124 != v71);
            }
          }

          else
          {

            return vt_Copy_PlanarYUV422_v216(a3, a1, a2);
          }

          return result;
        }

        if (result != 1983131952)
        {
          v159 = a2;
          v12 = 12848;
          goto LABEL_38;
        }

        if (!a4)
        {

          return vt_Copy_Planar444_v410(a3, a1, a2);
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
        v64 = *(a3 + 8);
        v63 = *(a3 + 16);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v67 = BaseAddress;
        if (PixelFormatType <= 2019963439)
        {
          if (PixelFormatType <= 2016686639)
          {
            if (PixelFormatType == 1378955371 || PixelFormatType == 1983131952)
            {
              goto LABEL_228;
            }

            v138 = 1999843442;
            goto LABEL_227;
          }

          if (PixelFormatType <= 2016687155)
          {
            if (PixelFormatType != 2016686640)
            {
              v68 = 2016686642;
              goto LABEL_194;
            }

LABEL_204:
            v136 = a2[4];
            v135 = a2[5] / 2;
            goto LABEL_205;
          }

          if (PixelFormatType != 2016687156)
          {
            v138 = 2016687216;
            goto LABEL_227;
          }
        }

        else if (PixelFormatType > 2021077551)
        {
          if (PixelFormatType <= 2021078067)
          {
            if (PixelFormatType != 2021077552)
            {
              v68 = 2021077554;
              goto LABEL_194;
            }

            goto LABEL_204;
          }

          if (PixelFormatType != 2021078128)
          {
            v138 = 2021078068;
LABEL_227:
            if (PixelFormatType != v138)
            {
              goto LABEL_229;
            }
          }
        }

        else
        {
          if (PixelFormatType <= 2019963955)
          {
            if (PixelFormatType != 2019963440)
            {
              v68 = 2019963442;
LABEL_194:
              if (PixelFormatType != v68)
              {
LABEL_229:
                result = CVPixelBufferGetBytesPerRow(a1);
                if (v63 && v64)
                {
                  v148 = 0;
                  v149 = *(a3 + 88);
                  v150 = *a3;
                  v151 = *(a3 + 24);
                  v152 = *(a3 + 32);
                  v153 = *(a3 + 56);
                  v154 = *(a3 + 64);
                  do
                  {
                    for (i = 0; i != v63; ++i)
                    {
                      v156 = *(v67 + 4 * i);
                      *&v150[2 * i] = (v156 >> 2) & 0x3FF;
                      *(v152 + 2 * i) = (v156 >> 12) & 0x3FF;
                      *(v154 + 2 * i) = v156 >> 22;
                    }

                    v67 += result;
                    v150 += v151;
                    v152 += v153;
                    v154 += v149;
                    ++v148;
                  }

                  while (v148 != v64);
                }

                return result;
              }

              v136 = a2[4];
              v135 = a2[5];
LABEL_205:
              v67 = BaseAddress + v135 * BytesPerRow + ((v136 + (v136 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
              goto LABEL_229;
            }

            goto LABEL_204;
          }

          if (PixelFormatType != 2019963956)
          {
            v138 = 2019964016;
            goto LABEL_227;
          }
        }

LABEL_228:
        v67 = BaseAddress + 8 * a2[4] + a2[5] * BytesPerRow;
        goto LABEL_229;
      }

      v160 = a2;
      if (result != 1630697081)
      {
        if (result == 1983000880)
        {
          if (a4)
          {

            return vt_Copy_v210_10bitBiPlanarYUV422(a1, a2, a3);
          }

          else
          {

            return vt_Copy_10bitBiPlanarYUV422_v210(a3, a1, a2);
          }
        }

        return result;
      }

LABEL_33:
      v27 = *(a3 + 16);
      v28 = *(a3 + 24);
      v158 = (v27 + 1) / 2;
      v30 = *a3;
      v29 = *(a3 + 8);
      v31 = *(a3 + 88);
      v32 = a1;
      v33 = *(a3 + 32);
      v34 = *(a3 + 56);
      v35 = *(a3 + 64);
      v36 = v32;
      IsPlanar = CVPixelBufferIsPlanar(v32);
      if (a4)
      {
        v38 = v36;
        if (IsPlanar)
        {
          v39 = CVPixelBufferGetBytesPerRowOfPlane(v36, 0);
          result = CVPixelBufferGetBaseAddressOfPlane(v38, 0);
        }

        else
        {
          v39 = CVPixelBufferGetBytesPerRow(v36);
          result = CVPixelBufferGetBaseAddress(v38);
        }

        if (v29 >= 1)
        {
          v89 = 0;
          v90 = result + v160[5] * v39 + 2 * v160[4];
          v91 = (v27 + 1) / 2;
          if (v158 <= 1)
          {
            v91 = 1;
          }

          do
          {
            if (v27 >= 1)
            {
              v92 = 0;
              v93 = 0;
              v94 = v30;
              do
              {
                *(v33 + v93) = *(v90 + v92);
                *v94 = *(v90 + v92 + 1);
                *(v35 + v93) = *(v90 + v92 + 2);
                v94[1] = *(v90 + v92 + 3);
                ++v93;
                v92 += 4;
                v94 += 2;
              }

              while (v91 != v93);
            }

            v90 += v39;
            v30 += v28;
            v33 += v34;
            v35 += v31;
            ++v89;
          }

          while (v89 != v29);
        }
      }

      else
      {
        v53 = v36;
        if (IsPlanar)
        {
          v54 = CVPixelBufferGetBytesPerRowOfPlane(v36, 0);
          result = CVPixelBufferGetBaseAddressOfPlane(v53, 0);
        }

        else
        {
          v54 = CVPixelBufferGetBytesPerRow(v36);
          result = CVPixelBufferGetBaseAddress(v53);
        }

        if (v29 >= 1)
        {
          v101 = 0;
          v102 = result + v160[5] * v54 + 2 * v160[4];
          v103 = (v27 + 1) / 2;
          if (v158 <= 1)
          {
            v103 = 1;
          }

          do
          {
            if (v27 >= 1)
            {
              v104 = 0;
              v105 = 0;
              v106 = v30;
              do
              {
                v107 = (v102 + v104);
                *v107 = *(v33 + v105);
                v107[1] = *v106;
                v107[2] = *(v35 + v105);
                v107[3] = v106[1];
                ++v105;
                v104 += 4;
                v106 += 2;
              }

              while (v103 != v105);
            }

            v30 += v28;
            v33 += v34;
            v35 += v31;
            v102 += v54;
            ++v101;
          }

          while (v101 != v29);
        }
      }

      return result;
    }

    if (result <= 1378955370)
    {
      v160 = a2;
      if (result != 846624102 && result != 846624121)
      {
        return result;
      }

      goto LABEL_33;
    }

    if (result != 1378955371)
    {
      if (result == 1380411457)
      {
        if (a4)
        {
          v26 = 4 * a2[2];
          src.height = a2[3];
          src.width = v26;
          src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
          src.data = CVPixelBufferGetBaseAddress(a1) + 8 * a2[4] + a2[5] * src.rowBytes;
          *(a3 + 16) *= 4;
          result = vImageConvert_Planar16FtoPlanarF(&src, a3, a5);
          *(a3 + 16) >>= 2;
        }

        else
        {

          return vt_Copy_ChunkyFloatVImageBuffer_to_RGhA(a3, a1, a2, a5);
        }
      }

      return result;
    }

    if (!a4)
    {

      return vt_Copy_Planar444_R10k(a3, a1, a2);
    }

    v55 = CVPixelBufferGetPixelFormatType(a1);
    v57 = *(a3 + 8);
    v56 = *(a3 + 16);
    v58 = CVPixelBufferGetBytesPerRow(a1);
    v59 = CVPixelBufferGetBaseAddress(a1);
    v60 = v59;
    if (v55 <= 2019963439)
    {
      if (v55 <= 2016686639)
      {
        if (v55 == 1378955371 || v55 == 1983131952)
        {
          goto LABEL_213;
        }

        v137 = 1999843442;
        goto LABEL_212;
      }

      if (v55 <= 2016687155)
      {
        if (v55 != 2016686640)
        {
          v61 = 2016686642;
          goto LABEL_189;
        }

LABEL_202:
        v134 = a2[4];
        v133 = a2[5] / 2;
        goto LABEL_203;
      }

      if (v55 != 2016687156)
      {
        v137 = 2016687216;
        goto LABEL_212;
      }
    }

    else if (v55 > 2021077551)
    {
      if (v55 <= 2021078067)
      {
        if (v55 != 2021077552)
        {
          v61 = 2021077554;
          goto LABEL_189;
        }

        goto LABEL_202;
      }

      if (v55 != 2021078128)
      {
        v137 = 2021078068;
LABEL_212:
        if (v55 != v137)
        {
          goto LABEL_214;
        }
      }
    }

    else
    {
      if (v55 <= 2019963955)
      {
        if (v55 != 2019963440)
        {
          v61 = 2019963442;
LABEL_189:
          if (v55 != v61)
          {
LABEL_214:
            result = CVPixelBufferGetBytesPerRow(a1);
            if (v56 && v57)
            {
              v139 = 0;
              v140 = *(a3 + 88);
              v141 = *a3;
              v142 = *(a3 + 24);
              v143 = *(a3 + 32);
              v144 = *(a3 + 56);
              v145 = *(a3 + 64);
              do
              {
                for (j = 0; j != v56; ++j)
                {
                  v147 = bswap32(*(v60 + 4 * j));
                  *&v141[2 * j] = (v147 >> 2) & 0x3FF;
                  *(v143 + 2 * j) = (v147 >> 12) & 0x3FF;
                  *(v145 + 2 * j) = v147 >> 22;
                }

                v60 += result;
                v141 += v142;
                v143 += v144;
                v145 += v140;
                ++v139;
              }

              while (v139 != v57);
            }

            return result;
          }

          v134 = a2[4];
          v133 = a2[5];
LABEL_203:
          v60 = v59 + v133 * v58 + ((v134 + (v134 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
          goto LABEL_214;
        }

        goto LABEL_202;
      }

      if (v55 != 2019963956)
      {
        v137 = 2019964016;
        goto LABEL_212;
      }
    }

LABEL_213:
    v60 = v59 + 8 * a2[4] + a2[5] * v58;
    goto LABEL_214;
  }

  v159 = a2;
  if (result <= 2021077551)
  {
    if (result > 2019963439)
    {
      if (result == 2019963440 || result == 2019963442)
      {
        goto LABEL_42;
      }

      v11 = 2019963956;
LABEL_41:
      if (result != v11)
      {
        return result;
      }

LABEL_42:
      v40 = CVPixelBufferGetPixelFormatType(a1);
      v42 = *(a3 + 40);
      v41 = *(a3 + 48);
      v43 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      v45 = BaseAddressOfPlane;
      if (a4)
      {
        if (v40 <= 2019963439)
        {
          if (v40 <= 2016686639)
          {
            if (v40 == 1378955371 || v40 == 1983131952)
            {
              goto LABEL_100;
            }

            v52 = 1999843442;
            goto LABEL_99;
          }

          if (v40 <= 2016687155)
          {
            if (v40 != 2016686640)
            {
              v46 = 2016686642;
              goto LABEL_60;
            }

LABEL_70:
            v50 = v159[4];
            v49 = v159[5] / 2;
            goto LABEL_71;
          }

          if (v40 != 2016687156)
          {
            v52 = 2016687216;
            goto LABEL_99;
          }
        }

        else if (v40 > 2021077551)
        {
          if (v40 <= 2021078067)
          {
            if (v40 != 2021077552)
            {
              v46 = 2021077554;
              goto LABEL_60;
            }

            goto LABEL_70;
          }

          if (v40 != 2021078128)
          {
            v52 = 2021078068;
LABEL_99:
            if (v40 != v52)
            {
              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v40 <= 2019963955)
          {
            if (v40 != 2019963440)
            {
              v46 = 2019963442;
LABEL_60:
              if (v40 != v46)
              {
LABEL_101:
                result = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
                if (v41 && v42)
                {
                  v80 = 0;
                  v81 = *(a3 + 88);
                  v82 = *(a3 + 32);
                  v83 = *(a3 + 56);
                  v84 = *(a3 + 64);
                  do
                  {
                    v85 = 0;
                    v86 = v41;
                    do
                    {
                      v87 = (v45 + 2 * v85);
                      v88 = *v87;
                      LOWORD(v87) = v87[1];
                      *(v82 + v85) = v88;
                      *(v84 + v85) = v87;
                      v85 += 2;
                      --v86;
                    }

                    while (v86);
                    v45 += result;
                    v82 += v83;
                    v84 += v81;
                    ++v80;
                  }

                  while (v80 != v42);
                }

                return result;
              }

              v50 = v159[4];
              v49 = v159[5];
LABEL_71:
              v45 = BaseAddressOfPlane + v49 * v43 + ((v50 + (v50 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
              goto LABEL_101;
            }

            goto LABEL_70;
          }

          if (v40 != 2019963956)
          {
            v52 = 2019964016;
            goto LABEL_99;
          }
        }

LABEL_100:
        v45 = BaseAddressOfPlane + 8 * v159[4] + v159[5] * v43;
        goto LABEL_101;
      }

      if (v40 <= 2016686639)
      {
        if (v40 == 1378955371 || v40 == 1983131952)
        {
          goto LABEL_90;
        }

        v51 = 1999843442;
      }

      else
      {
        if (v40 <= 2016687155)
        {
          if (v40 == 2016686640)
          {
            v48 = v159[4];
            v47 = v159[5] / 2;
            goto LABEL_136;
          }

          if (v40 == 2016686642)
          {
            v48 = v159[4];
            v47 = v159[5];
LABEL_136:
            v45 = BaseAddressOfPlane + v47 * v43 + ((v48 + (v48 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
          }

LABEL_137:
          v108 = *(a3 + 32);
          v109 = *(a3 + 88);
          v111 = *(a3 + 56);
          v110 = *(a3 + 64);
          result = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          if (v41 && v42)
          {
            for (k = 0; k != v42; ++k)
            {
              v113 = 0;
              v114 = v41;
              do
              {
                v115 = *(v110 + v113);
                v116 = (v45 + 2 * v113);
                *v116 = *(v108 + v113);
                v116[1] = v115;
                v113 += 2;
                --v114;
              }

              while (v114);
              v108 += v111;
              v110 += v109;
              v45 += result;
            }
          }

          return result;
        }

        if (v40 == 2016687216)
        {
LABEL_90:
          v45 = BaseAddressOfPlane + 8 * v159[4] + v159[5] * v43;
          goto LABEL_137;
        }

        v51 = 2016687156;
      }

      if (v40 != v51)
      {
        goto LABEL_137;
      }

      goto LABEL_90;
    }

    if (result == 2016686642)
    {
      goto LABEL_42;
    }

    v12 = 13364;
LABEL_38:
    v11 = v12 | 0x78340000;
    goto LABEL_41;
  }

  if (result <= 2021078067)
  {
    if (result == 2021077552)
    {
      goto LABEL_42;
    }

    v11 = 2021077554;
    goto LABEL_41;
  }

  if (result == 2021078068)
  {
    goto LABEL_42;
  }

  if (result == 2037741158 || result == 2037741171)
  {
    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
    v157 = (v13 + 1) / 2;
    v16 = *a3;
    v15 = *(a3 + 8);
    v17 = *(a3 + 88);
    v18 = a1;
    v19 = *(a3 + 32);
    v20 = *(a3 + 56);
    v21 = *(a3 + 64);
    v22 = v18;
    v23 = CVPixelBufferIsPlanar(v18);
    if (a4)
    {
      v24 = v22;
      if (v23)
      {
        v25 = CVPixelBufferGetBytesPerRowOfPlane(v22, 0);
        result = CVPixelBufferGetBaseAddressOfPlane(v24, 0);
      }

      else
      {
        v25 = CVPixelBufferGetBytesPerRow(v22);
        result = CVPixelBufferGetBaseAddress(v24);
      }

      if (v15 >= 1)
      {
        v95 = 0;
        v96 = result + v159[5] * v25 + 2 * v159[4];
        v97 = (v13 + 1) / 2;
        if (v157 <= 1)
        {
          v97 = 1;
        }

        do
        {
          if (v13 >= 1)
          {
            v98 = 0;
            v99 = 0;
            v100 = v16;
            do
            {
              *v100 = *(v96 + v98);
              *(v19 + v99) = *(v96 + v98 + 1);
              v100[1] = *(v96 + v98 + 2);
              *(v21 + v99++) = *(v96 + v98 + 3);
              v98 += 4;
              v100 += 2;
            }

            while (v97 != v99);
          }

          v96 += v25;
          v16 += v14;
          v19 += v20;
          v21 += v17;
          ++v95;
        }

        while (v95 != v15);
      }
    }

    else
    {
      v78 = v22;
      if (v23)
      {
        v79 = CVPixelBufferGetBytesPerRowOfPlane(v22, 0);
        result = CVPixelBufferGetBaseAddressOfPlane(v78, 0);
      }

      else
      {
        v79 = CVPixelBufferGetBytesPerRow(v22);
        result = CVPixelBufferGetBaseAddress(v78);
      }

      if (v15 >= 1)
      {
        v117 = 0;
        v118 = result + v159[5] * v79 + 2 * v159[4];
        v119 = (v13 + 1) / 2;
        if (v157 <= 1)
        {
          v119 = 1;
        }

        do
        {
          if (v13 >= 1)
          {
            v120 = 0;
            v121 = 0;
            v122 = v16;
            do
            {
              v123 = (v118 + v120);
              *v123 = *v122;
              v123[1] = *(v19 + v121);
              v123[2] = v122[1];
              v123[3] = *(v21 + v121++);
              v120 += 4;
              v122 += 2;
            }

            while (v119 != v121);
          }

          v16 += v14;
          v19 += v20;
          v21 += v17;
          v118 += v79;
          ++v117;
        }

        while (v117 != v15);
      }
    }
  }

  return result;
}

size_t scaleOrSetAlpha8(__CVBuffer *a1, int8x16_t *a2, CVPixelBufferRef pixelBuffer, void *a4, uint64_t a5, int a6, int a7, int a8, int a9)
{
  if (!a8)
  {
    return 0;
  }

  v16 = a4[5];
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v18 = a4[4];
  v19 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL) + BytesPerRowOfPlane * v16;
  v22 = a4 + 2;
  v20 = a4[2];
  v21 = v22[1];
  v23 = &v19[v18];
  v31[0] = &v19[v18];
  v31[1] = v21;
  v31[2] = v20;
  v24 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v31[3] = v24;
  if (a7)
  {
    v28 = a2[2].i64[1];
    v29 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v30 = a2[2].i64[0];
    v32 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL) + v29 * v28 + v30;
    v33 = vextq_s8(a2[1], a2[1], 8uLL);
    v34 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    return vtScale(&v32, v31, (a5 + 272), a9 | 8u, MEMORY[0x1E6958A88], a6);
  }

  else
  {
    if (v21 >= 1)
    {
      v25 = v24;
      v26 = v21 + 1;
      do
      {
        memset(v23, 255, v20);
        v23 += v25;
        --v26;
      }

      while (v26 > 1);
    }

    return 0;
  }
}

uint64_t VTRepeatRightColumnBiplanar8(__CVBuffer *a1, uint64_t a2)
{
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v5 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v6 = *(a2 + 40);
  if (HeightOfPlane == v5)
  {
    v7 = 0;
    v8 = *(a2 + 24);
  }

  else
  {
    v9 = v6 + *(a2 + 24) - (v6 & 0xFFFFFFFE) + 1;
    v8 = v9 & 0xFFFFFFFE;
    v7 = v9 >> 1;
    if (v7 + ((v6 & 0xFFFFFFFE) >> 1) > CVPixelBufferGetHeightOfPlane(a1, 1uLL))
    {
      v7 = CVPixelBufferGetHeightOfPlane(a1, 1uLL) - (v6 >> 1);
    }

    v6 = v6 & 0xFFFFFFFE;
  }

  if (v8 + v6 > CVPixelBufferGetHeight(a1))
  {
    v8 = CVPixelBufferGetHeight(a1) - v6;
  }

  if (CVPixelBufferGetWidth(a1))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(a1, 1uLL))
    {
      v11 = CVPixelBufferGetWidthOfPlane(a1, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
      v14 = BaseAddressOfPlane + CVPixelBufferGetBytesPerRowOfPlane(a1, 0) * v6;
      v15 = (v14 + v11);
      v16 = *(v14 + v11 - 2);
      if (v11 >= BytesPerRowOfPlane)
      {
        if (v8)
        {
          v18 = v15 - 1;
          if (v18 < v14 + BytesPerRowOfPlane)
          {
            v19 = v8;
            do
            {
              *v18 = v16;
              v18 += BytesPerRowOfPlane;
              --v19;
            }

            while (v19);
          }
        }
      }

      else if (v8)
      {
        v17 = v8;
        do
        {
          *(v15 - 1) = v16;
          *v15 = v16;
          v15 += BytesPerRowOfPlane;
          --v17;
        }

        while (v17);
      }

      v20 = CVPixelBufferGetHeightOfPlane(a1, 0);
      v21 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
      v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
      v23 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      v24 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      v25 = v20 == v21;
      v26 = v6 >> (v20 != v21);
      if (v25)
      {
        v27 = v8;
      }

      else
      {
        v27 = v7;
      }

      v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      vtByteFillColumnCbCr8(v22, v27, v23, v24 + v28 * v26);
      if (CVPixelBufferGetPlaneCount(a1) >= 3)
      {
        v29 = CVPixelBufferGetWidthOfPlane(a1, 2uLL);
        v30 = CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL);
        v31 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
        v32 = v31 + CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL) * v6;
        v33 = (v32 + v29);
        v34 = *(v32 + v29 - 2);
        if (v29 >= v30)
        {
          if (v8)
          {
            v35 = v33 - 1;
            if (v35 < v32 + v30)
            {
              do
              {
                *v35 = v34;
                v35 += v30;
                --v8;
              }

              while (v8);
            }
          }
        }

        else
        {
          for (; v8; --v8)
          {
            *(v33 - 1) = v34;
            *v33 = v34;
            v33 += v30;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t VTRepeatRightColumnBiplanar16(__CVBuffer *a1, uint64_t a2)
{
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v5 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v6 = *(a2 + 40);
  if (HeightOfPlane == v5)
  {
    v7 = 0;
    v8 = *(a2 + 24);
  }

  else
  {
    v9 = v6 + *(a2 + 24) - (v6 & 0xFFFFFFFE) + 1;
    v8 = v9 & 0xFFFFFFFE;
    v7 = v9 >> 1;
    if (v7 + ((v6 & 0xFFFFFFFE) >> 1) > CVPixelBufferGetHeightOfPlane(a1, 1uLL))
    {
      v7 = CVPixelBufferGetHeightOfPlane(a1, 1uLL) - (v6 >> 1);
    }

    v6 = v6 & 0xFFFFFFFE;
  }

  if (v8 + v6 > CVPixelBufferGetHeight(a1))
  {
    v8 = CVPixelBufferGetHeight(a1) - v6;
  }

  if (CVPixelBufferGetWidth(a1))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(a1, 1uLL))
    {
      v11 = CVPixelBufferGetWidthOfPlane(a1, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
      v14 = BaseAddressOfPlane + CVPixelBufferGetBytesPerRowOfPlane(a1, 0) * v6;
      v15 = v14 + BytesPerRowOfPlane;
      v16 = (v14 + 2 * v11);
      v17 = *(v16 - 2);
      if (v16 >= v15)
      {
        if (v8)
        {
          v19 = v16 - 1;
          if (v19 < v15)
          {
            v20 = v8;
            do
            {
              *v19 = v17;
              v19 = (v19 + BytesPerRowOfPlane);
              --v20;
            }

            while (v20);
          }
        }
      }

      else if (v8)
      {
        v18 = v8;
        do
        {
          *(v16 - 1) = v17;
          *v16 = v17;
          v16 = (v16 + BytesPerRowOfPlane);
          --v18;
        }

        while (v18);
      }

      v21 = CVPixelBufferGetHeightOfPlane(a1, 0);
      v22 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
      v23 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
      v24 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      v25 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      v26 = v21 == v22;
      v27 = v6 >> (v21 != v22);
      if (v26)
      {
        v28 = v8;
      }

      else
      {
        v28 = v7;
      }

      v29 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      vtByteFillColumnCbCr16(v23, v28, v24, v25 + v29 * v27);
      if (CVPixelBufferGetPlaneCount(a1) >= 3)
      {
        v30 = CVPixelBufferGetWidthOfPlane(a1, 2uLL);
        v31 = CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL);
        v32 = CVPixelBufferGetBaseAddressOfPlane(a1, 2uLL);
        v33 = v32 + CVPixelBufferGetBytesPerRowOfPlane(a1, 2uLL) * v6;
        v34 = v33 + v31;
        v35 = (v33 + 2 * v30);
        v36 = *(v35 - 2);
        if (v35 >= v34)
        {
          if (v8)
          {
            v37 = v35 - 1;
            if (v37 < v34)
            {
              do
              {
                *v37 = v36;
                v37 = (v37 + v31);
                --v8;
              }

              while (v8);
            }
          }
        }

        else
        {
          for (; v8; --v8)
          {
            *(v35 - 1) = v36;
            *v35 = v36;
            v35 = (v35 + v31);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t vtBufferApplyCropToRect(void *a1, int a2, int a3, int a4, int a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, char *a10)
{
  v10 = a1[4];
  if (v10 <= a2)
  {
    v11 = 0;
    a1[2] += v10 - a2;
    LODWORD(v10) = a2;
  }

  else
  {
    a4 += a2 - v10;
    if (a4 < 1)
    {
      return 4294954394;
    }

    v11 = 1;
  }

  v12 = a1[5];
  if (v12 <= a3)
  {
    v13 = v12 - a3 + a1[3];
    a1[3] = v13;
    LODWORD(v12) = a3;
    goto LABEL_9;
  }

  a5 += a3 - v12;
  if (a5 < 1)
  {
    return 4294954394;
  }

  v13 = a1[3];
  v11 = 1;
LABEL_9:
  v14 = 0;
  v15 = a1[2];
  if (v13 < a5)
  {
    v16 = 1;
  }

  else
  {
    LODWORD(v13) = a5;
    v16 = 0;
  }

  if (v15 < a4)
  {
    v16 = 1;
  }

  else
  {
    LODWORD(v15) = a4;
  }

  *a6 = v10;
  *a7 = v12;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v11;
  }

  *a8 = v15;
  *a9 = v13;
  *a10 = v17;
  return v14;
}

uint64_t vtRoundDimensionsToPixelBlockBoundary()
{
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  IntIfPresent = FigCFDictionaryGetIntIfPresent();
  result = FigCFDictionaryGetIntIfPresent();
  if (DescriptionWithPixelFormatType)
  {
    if (!IntIfPresent && result == 0)
    {
      result = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]);
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        result = CFArrayGetTypeID();
        if (v5 == result)
        {
          result = CFArrayGetCount(v4);
          if (result >= 1)
          {
            for (i = 0; i < result; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
              if (ValueAtIndex)
              {
                v8 = CFGetTypeID(ValueAtIndex);
                if (v8 == CFDictionaryGetTypeID())
                {
                  FigCFDictionaryGetIntIfPresent();
                  FigCFDictionaryGetIntIfPresent();
                }
              }

              result = CFArrayGetCount(v4);
            }
          }
        }
      }
    }
  }

  return result;
}

CFTypeID vtBufferGetPixelAndPictureAspectRatio(CFTypeID result, int a2, int a3, double *a4, double *a5)
{
  if (result && (v9 = result, TypeID = CFDictionaryGetTypeID(), result = CFGetTypeID(v9), TypeID == result) && (v18 = 1, valuePtr = 1, (result = CFDictionaryGetValue(v9, *MEMORY[0x1E6965EF0])) != 0) && (v11 = result, v12 = CFGetTypeID(result), result = CFNumberGetTypeID(), v12 == result) && (result = CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr), valuePtr >= 1) && (result = CFDictionaryGetValue(v9, *MEMORY[0x1E6965F00])) != 0 && (v13 = result, v14 = CFGetTypeID(result), result = CFNumberGetTypeID(), v14 == result) && (result = CFNumberGetValue(v13, kCFNumberSInt32Type, &v18), v15 = v18, v18 > 0))
  {
    v16 = (valuePtr * a2);
    *a4 = valuePtr / v18;
    v17 = v16 / (v15 * a3);
  }

  else
  {
    *a4 = 1.0;
    v17 = a2 / a3;
  }

  *a5 = v17;
  return result;
}

void vtBufferCreateScaledCleanRectFromCropCleanRect(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, unint64_t a10, CFDictionaryRef *a11)
{
  values[4] = *MEMORY[0x1E69E9840];
  v19 = a9 / a3;
  v20 = a10 / a4;
  valuePtr = llroundf(v19 * a7);
  v21 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  keys[0] = *MEMORY[0x1E6965D80];
  v27 = llroundf(v20 * a8);
  values[1] = CFNumberCreate(v21, kCFNumberSInt32Type, &v27);
  keys[1] = *MEMORY[0x1E6965D60];
  v26 = llroundf(v19 * (a5 - a1 + (a7 - a3) / 2));
  values[2] = CFNumberCreate(v21, kCFNumberSInt32Type, &v26);
  keys[2] = *MEMORY[0x1E6965D68];
  v25 = llroundf(v20 * (a6 - a2 + (a8 - a4) / 2));
  values[3] = CFNumberCreate(v21, kCFNumberSInt32Type, &v25);
  keys[3] = *MEMORY[0x1E6965D78];
  v22 = CFDictionaryCreate(v21, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  *a11 = v22;
  do
  {
    v24 = values[v23];
    if (v24)
    {
      CFRelease(v24);
    }

    ++v23;
  }

  while (v23 != 4);
}

void vtBufferCreateScaledPixelAspectRatio(__CVBuffer *a1, int a2, int a3, uint64_t a4, uint64_t a5, const __CFNumber **a6)
{
  v11 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965EF8], 0);
  if (v11)
  {
    v12 = v11;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v12))
    {
      v21 = 1;
      valuePtr = 1;
      Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6965EF0]);
      if (!Value)
      {
        goto LABEL_10;
      }

      v15 = Value;
      v16 = CFGetTypeID(Value);
      if (v16 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberSInt64Type, &valuePtr);
        Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6965F00]);
        if (Value)
        {
          v17 = Value;
          v18 = CFGetTypeID(Value);
          if (v18 == CFNumberGetTypeID())
          {
            v19 = a3 * a4;
            v20 = a2 * a5;
            CFNumberGetValue(v17, kCFNumberSInt64Type, &v21);
            if (v19 == v20)
            {
              Value = CFRetain(v12);
            }

            else
            {
              Value = vtCreatePixelAspectRatioAttachment(valuePtr, v21, v19, v20);
            }

            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_10:
        *a6 = Value;
        CFRelease(v12);
        return;
      }
    }

LABEL_9:
    Value = 0;
    goto LABEL_10;
  }

  *a6 = 0;
}

void vtBufferCreateScaledCleanRect(__CVBuffer *a1, unint64_t a2, unint64_t a3, CFDictionaryRef *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  *values = 0u;
  v42 = 0u;
  *keys = 0u;
  v40 = 0u;
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = Height;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    goto LABEL_13;
  }

  if (CVPixelBufferGetWidth(a1) == a2 && CVPixelBufferGetHeight(a1) == a3)
  {
    v13 = CFRetain(v8);
LABEL_14:
    *a4 = v13;
    goto LABEL_15;
  }

  v37 = 0;
  valuePtr = 0;
  v14 = *MEMORY[0x1E6965D80];
  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6965D80]);
  if (!Value || (v16 = Value, v17 = CFGetTypeID(Value), v17 != CFNumberGetTypeID()))
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v18 = a2 / Width;
  CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr + 4);
  HIDWORD(valuePtr) = llroundf(v18 * SHIDWORD(valuePtr));
  v19 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr + 4);
  keys[0] = v14;
  v20 = *MEMORY[0x1E6965D60];
  v21 = CFDictionaryGetValue(v8, *MEMORY[0x1E6965D60]);
  if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFNumberGetTypeID()))
  {
    v24 = a3 / v11;
    CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
    LODWORD(valuePtr) = llroundf(v24 * valuePtr);
    values[1] = CFNumberCreate(v19, kCFNumberSInt32Type, &valuePtr);
    keys[1] = v20;
    v25 = *MEMORY[0x1E6965D68];
    v26 = CFDictionaryGetValue(v8, *MEMORY[0x1E6965D68]);
    if (v26 && (v27 = v26, v28 = CFGetTypeID(v26), v28 == CFNumberGetTypeID()))
    {
      v29 = 3;
      CFNumberGetValue(v27, kCFNumberSInt32Type, &v37 + 4);
      HIDWORD(v37) = llroundf(v18 * SHIDWORD(v37));
      *&v42 = CFNumberCreate(v19, kCFNumberSInt32Type, &v37 + 4);
      *&v40 = v25;
    }

    else
    {
      v29 = 2;
    }

    v33 = *MEMORY[0x1E6965D78];
    v34 = CFDictionaryGetValue(v8, *MEMORY[0x1E6965D78]);
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v35, kCFNumberSInt32Type, &v37);
        LODWORD(v37) = llroundf(v24 * v37);
        values[v29] = CFNumberCreate(v19, kCFNumberSInt32Type, &v37);
        keys[v29++] = v33;
      }
    }
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  v31 = values;
  *a4 = CFDictionaryCreate(v19, keys, values, v29, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  do
  {
    v32 = *v31++;
    CFRelease(v32);
    --v30;
  }

  while (v30);
LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t vtAllocatePlanarBuffersCommon(int a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v62 = *MEMORY[0x1E69E9840];
  v6 = 4294954391;
  if (a1 <= 1983000885)
  {
    if (a1 <= 1378955370)
    {
      if (a1 > 875704933)
      {
        if (a1 > 875836533)
        {
          if (a1 == 875836534 || a1 == 1111970369)
          {
            return result;
          }

          v7 = 1278226488;
        }

        else
        {
          if (a1 == 875704934 || a1 == 875704950)
          {
            return result;
          }

          v7 = 875836518;
        }

        goto LABEL_95;
      }

      if (a1 > 846624120)
      {
        if (a1 != 846624121)
        {
          if (a1 == 875704422)
          {
            return result;
          }

          v7 = 875704438;
LABEL_95:
          if (a1 == v7)
          {
            return result;
          }

          goto LABEL_141;
        }

        goto LABEL_76;
      }

      if (a1 == 32)
      {
        return result;
      }

      v26 = 846624102;
      goto LABEL_75;
    }

    if (a1 > 1714696751)
    {
      if (a1 <= 1916022839)
      {
        if (a1 == 1714696752 || a1 == 1714696754)
        {
          return result;
        }

        v7 = 1714697268;
        goto LABEL_95;
      }

      if (a1 == 1916022840 || a1 == 1982882104)
      {
        return result;
      }

      if (a1 != 1983000880)
      {
        goto LABEL_141;
      }

      v10 = 0;
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);
      v13 = 12 * ((v11 + 5) / 6) + 127;
      v14 = v13 & 0xFFFFFFFFFFFFFF80;
      v15 = (v13 & 0xFFFFFFFFFFFFFF80) != 0;
      v16 = v13 | v12;
      v19 = (!is_mul_ok(v12, v14) || v14 * v12 == 0 || v16 < 0) && v15;
      if (v12)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = 1;
      while (!v20)
      {
        v22 = malloc_type_malloc(v14 * v12, 0xA5557F30uLL);
        v23 = (a3 + 32 * v10);
        *v23 = v22;
        if (!v22)
        {
          goto LABEL_140;
        }

        result = 0;
        v24 = v21 & 1;
        if (v21)
        {
          v25 = v11;
        }

        else
        {
          v25 = (v11 + 1) >> 1;
        }

        v23[1] = v12;
        v23[2] = v25;
        v23[3] = v14;
        v10 = 1;
        v21 = 0;
        if (!v24)
        {
          return result;
        }
      }

      i = (a3 + 32 * v10);
LABEL_139:
      *i = 0;
LABEL_140:
      v6 = 4294954392;
      goto LABEL_141;
    }

    if (a1 > 1380411456)
    {
      if (a1 != 1380411457)
      {
        if (a1 != 1630697081)
        {
          v7 = 1647534392;
          goto LABEL_95;
        }

        goto LABEL_76;
      }

      v51 = 0;
      v52 = *(a2 + 16);
      v53 = *(a2 + 24);
      v54 = 16 * v52 + 127;
      v55 = v54 & 0xFFFFFFFFFFFFFF80;
      if (!v53 || !v55 || (i = a3, ((v54 | v53) & 0x8000000000000000) == 0) && (i = a3, is_mul_ok(v53, v55)) && (v51 = v55 * v53, i = a3, v55 * v53))
      {
        v56 = malloc_type_malloc(v51, 0x541AC886uLL);
        *a3 = v56;
        if (v56)
        {
          result = 0;
          *(a3 + 8) = v53;
          *(a3 + 16) = v52;
          *(a3 + 24) = v55;
          return result;
        }

        goto LABEL_140;
      }

      goto LABEL_139;
    }

    if (a1 != 1378955371)
    {
      v7 = 1380410945;
      goto LABEL_95;
    }

LABEL_97:
    v35 = *(a2 + 16);
    v36 = *(a2 + 24);
    v40 = (!is_mul_ok(v36, 2 * v35) || 2 * v35 * v36 == 0 || ((v36 | (2 * v35)) & 0x8000000000000000) != 0) && v36 != 0;
    v41 = 3;
    for (i = a3; ; i += 4)
    {
      i[1] = v36;
      i[2] = v35;
      i[3] = 2 * v35;
      if (v35)
      {
        if (v40)
        {
          goto LABEL_139;
        }

        v43 = malloc_type_malloc(2 * v35 * v36, 0x8574C354uLL);
        *i = v43;
        if (!v43)
        {
          break;
        }
      }

      result = 0;
      if (!--v41)
      {
        return result;
      }
    }

    goto LABEL_140;
  }

  if (a1 <= 2019964015)
  {
    if (a1 <= 2016686641)
    {
      if (a1 <= 1983131951)
      {
        if (a1 != 1983000886)
        {
          v7 = 1983131704;
          goto LABEL_95;
        }

        v44 = 0;
        v45 = *(a2 + 16);
        v46 = *(a2 + 24);
        v60 = (((v45 + 1) & 0xFFFFFFFFFFFFFFFELL) + 127) & 0xFFFFFFFFFFFFFF80;
        v61 = v60;
        v59 = (2 * v45 + 127) & 0xFFFFFFFFFFFFFF80;
        v30 = a3;
        while (1)
        {
          v47 = 0;
          v48 = *(&v59 + v44);
          if (v46)
          {
            if (v48)
            {
              if (((v48 | v46) & 0x8000000000000000) != 0)
              {
                break;
              }

              if (!is_mul_ok(v46, v48))
              {
                break;
              }

              v47 = v48 * v46;
              if (!(v48 * v46))
              {
                break;
              }
            }
          }

          v49 = malloc_type_malloc(v47, 0xED6F9116uLL);
          *v30 = v49;
          if (!v49)
          {
            goto LABEL_128;
          }

          if (v44)
          {
            v50 = (v45 + 1) >> 1;
          }

          else
          {
            v50 = v45;
          }

          v30[1] = v46;
          v30[2] = v50;
          v30[3] = v48;
          v30 += 4;
          v44 += 8;
          if (v44 == 24)
          {
            v6 = 0;
            goto LABEL_129;
          }
        }

LABEL_127:
        *v30 = 0;
LABEL_128:
        v6 = 4294954392;
LABEL_129:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_141;
      }

      if (a1 == 1983131952)
      {
        goto LABEL_97;
      }

      if (a1 == 1999843442)
      {
        return result;
      }

      v8 = 12848;
    }

    else
    {
      if (a1 > 2019963439)
      {
        if (a1 == 2019963440 || a1 == 2019963442)
        {
          return result;
        }

        v7 = 2019963956;
        goto LABEL_95;
      }

      if (a1 == 2016686642 || a1 == 2016687156)
      {
        return result;
      }

      v8 = 13424;
    }

    v7 = v8 | 0x78340000;
    goto LABEL_95;
  }

  if (a1 <= 2033463351)
  {
    if (a1 <= 2021077553)
    {
      if (a1 == 2019964016)
      {
        return result;
      }

      v9 = 12848;
    }

    else
    {
      if (a1 == 2021077554 || a1 == 2021078068)
      {
        return result;
      }

      v9 = 13424;
    }

    v7 = v9 | 0x78770000;
    goto LABEL_95;
  }

  if (a1 <= 2033464371)
  {
    if (a1 == 2033463352 || a1 == 2033463856)
    {
      return result;
    }

    v7 = 2033463858;
    goto LABEL_95;
  }

  if (a1 == 2033464372)
  {
    return result;
  }

  if (a1 == 2037741171)
  {
    goto LABEL_76;
  }

  v26 = 2037741158;
LABEL_75:
  if (a1 == v26)
  {
LABEL_76:
    v27 = 0;
    v28 = *(a2 + 16);
    v29 = *(a2 + 24);
    v60 = (((v28 + 1) >> 1) + 127) & 0xFFFFFFFFFFFFFF80;
    v61 = v60;
    v59 = (v28 + 127) & 0xFFFFFFFFFFFFFF80;
    v30 = a3;
    while (1)
    {
      v31 = 0;
      v32 = *(&v59 + v27);
      if (v29)
      {
        if (v32)
        {
          if (((v32 | v29) & 0x8000000000000000) != 0)
          {
            goto LABEL_127;
          }

          if (!is_mul_ok(v29, v32))
          {
            goto LABEL_127;
          }

          v31 = v32 * v29;
          if (!(v32 * v29))
          {
            goto LABEL_127;
          }
        }
      }

      v33 = malloc_type_malloc(v31, 0x30B4AEDuLL);
      *v30 = v33;
      if (!v33)
      {
        goto LABEL_128;
      }

      if (v27)
      {
        v34 = (v28 + 1) >> 1;
      }

      else
      {
        v34 = v28;
      }

      v30[1] = v29;
      v30[2] = v34;
      v30[3] = v32;
      v30 += 4;
      v27 += 8;
      if (v27 == 24)
      {
        v6 = 0;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        goto LABEL_129;
      }
    }
  }

LABEL_141:
  for (j = 0; j != 128; j += 32)
  {
    v58 = *(a3 + j);
    if (v58)
    {
      free(v58);
      *(a3 + j) = 0;
    }
  }

  return v6;
}

BOOL VTPixelTransferSessionCanUseMetalInTheBackground()
{
  getpid();
  can_use_foreground_hw = proc_can_use_foreground_hw();
  result = can_use_foreground_hw == 1;
  if (!can_use_foreground_hw)
  {
    return 0;
  }

  return result;
}

uint64_t VTPixelTransferSessionCanTransfer(OSType pixelFormat, OSType a2, char a3)
{
  v6 = a3 & 1;
  v7 = (a3 & 2) == 0;
  v17 = 0uLL;
  v8 = *MEMORY[0x1E695E480];
  v9 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], pixelFormat);
  v10 = CVPixelFormatDescriptionCreateWithPixelFormatType(v8, a2);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FD0]);
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v19[0] = pixelFormat;
    v18 = a2;
    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetInt32IfPresent();
  }

  if ((a3 & 0x10) == 0)
  {
    vtFindBlitter(pixelFormat, a2, 0, 0, v6 ^ 1, v7, Mutable, Mutable, 0, 0, 0, 0, 0, 0, 0, &v20, v19, &v18, &v17 + 8, &v17, 0, 0, 0);
    if (v17 != 0 && (!v6 || getScalingGroup(a2)))
    {
      goto LABEL_13;
    }

    ScalingGroup = getScalingGroup(pixelFormat);
    if (ScalingGroup)
    {
      if (ScalingGroup == getScalingGroup(a2))
      {
        goto LABEL_13;
      }
    }
  }

  if (vtPixelTransferSessionCanDynamicTransfer())
  {
    goto LABEL_13;
  }

  if (initDefaultsCommon_onceToken != -1)
  {
    _VTPixelTransferSessionSetProperty_cold_1();
  }

  if (!_MergedGlobals || !VTPixelTransferSessionCanUseMetalInTheBackground())
  {
    goto LABEL_32;
  }

  v16 = VTAvoidHardwarePixelTransfer();
  v14 = 0;
  if ((a3 & 8) == 0 && !v16)
  {
    if (VTMetalTransferSessionCanTransfer(pixelFormat, a2, a3) || v6 && (VTMetalTransferSessionCanTransfer(pixelFormat, a2, a3 & 0xF6), (a3 & 0x10) == 0) && (getScalingGroup(pixelFormat) || getScalingGroup(a2)))
    {
LABEL_13:
      v14 = 1;
      goto LABEL_14;
    }

LABEL_32:
    v14 = 0;
  }

LABEL_14:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t vtPixelTransferSessionCanDynamicTransfer()
{
  if (initDefaultsCommon_onceToken != -1)
  {
    VTPixelTransferSessionCreate_cold_1();
  }

  if (byte_1ED6D3B09)
  {
    FigRegisterIOSurfacePixelTransferCapability();
  }

  return 0;
}

uint64_t getScalingGroup(int a1)
{
  result = 0;
  if (a1 > 1815491697)
  {
    if (a1 > 2019963441)
    {
      if (a1 <= 2033463351)
      {
        if (a1 > 2021077551)
        {
          if (a1 <= 2021078067)
          {
            if (a1 != 2021077552 && a1 != 2021077554)
            {
              return result;
            }

            return 18;
          }

          if (a1 == 2021078068)
          {
            return 18;
          }

          v18 = a1 == 2021078128;
          v19 = 21;
          goto LABEL_95;
        }

        if (a1 != 2019963442 && a1 != 2019963956)
        {
          v18 = a1 == 2019964016;
          v19 = 20;
LABEL_95:
          if (v18)
          {
            return v19;
          }

          else
          {
            return 0;
          }
        }

        return 16;
      }

      if (a1 <= 2033463857)
      {
        if (a1 == 2033463352)
        {
          return 7;
        }

        if (a1 == 2033463606)
        {
          return 25;
        }

        v8 = 12848;
LABEL_77:
        v10 = v8 | 0x79340000;
        goto LABEL_101;
      }

      if (a1 <= 2037741157)
      {
        if (a1 == 2033463858)
        {
          return 11;
        }

        v8 = 13364;
        goto LABEL_77;
      }

      if (a1 != 2037741158)
      {
        v10 = 2037741171;
LABEL_101:
        if (a1 != v10)
        {
          return result;
        }

        return 11;
      }

      return 9;
    }

    if (a1 > 1983131951)
    {
      if (a1 > 2016686641)
      {
        if (a1 > 2016687215)
        {
          if (a1 == 2016687216)
          {
            return 19;
          }

          if (a1 != 2019963440)
          {
            return result;
          }

          return 16;
        }

        if (a1 == 2016686642)
        {
          return 14;
        }

        v6 = 13364;
LABEL_51:
        if (a1 != (v6 | 0x78340000))
        {
          return result;
        }

        return 14;
      }

      if (a1 == 1983131952)
      {
        return 13;
      }

      if (a1 != 1999843442)
      {
        v6 = 12848;
        goto LABEL_51;
      }

      return 22;
    }

    if (a1 <= 1983000879)
    {
      if (a1 == 1815491698)
      {
        return 26;
      }

      if (a1 == 1916022840)
      {
        return 6;
      }

      v9 = 1982882104;
LABEL_65:
      if (a1 != v9)
      {
        return result;
      }

      return 12;
    }

    v11 = 1983000880;
    v12 = 14;
    v13 = 1983000886;
    v14 = 13;
    v15 = a1 == 1983131704;
    v16 = 8;
    goto LABEL_54;
  }

  if (a1 <= 1278226741)
  {
    if (a1 <= 875704949)
    {
      if (a1 <= 875704421)
      {
        if (a1 == 32)
        {
          return 3;
        }

        if (a1 != 846624102)
        {
          v10 = 846624121;
          goto LABEL_101;
        }

        return 9;
      }

      if (a1 != 875704422)
      {
        if (a1 == 875704438)
        {
          return 12;
        }

        if (a1 != 875704934)
        {
          return result;
        }
      }
    }

    else
    {
      if (a1 > 1111970368)
      {
        if (a1 == 1278226536)
        {
          v3 = 27;
        }

        else
        {
          v3 = 0;
        }

        if (a1 == 1278226534)
        {
          v4 = 28;
        }

        else
        {
          v4 = v3;
        }

        if (a1 == 1111970369)
        {
          v5 = 4;
        }

        else
        {
          v5 = a1 == 1278226488;
        }

        if (a1 <= 1278226533)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }

      if (a1 == 875704950)
      {
        return 12;
      }

      if (a1 != 875836518)
      {
        v9 = 875836534;
        goto LABEL_65;
      }
    }

    return 10;
  }

  if (a1 <= 1647534391)
  {
    if (a1 > 1380410944)
    {
      if (a1 == 1380410945)
      {
        return 31;
      }

      if (a1 == 1380411457)
      {
        return 30;
      }

      v10 = 1630697081;
      goto LABEL_101;
    }

    v11 = 1278226742;
    v12 = 2;
    v13 = 1378955371;
    v14 = 24;
    v15 = a1 == 1380401729;
    v16 = 5;
LABEL_54:
    if (!v15)
    {
      v16 = 0;
    }

    if (a1 == v13)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (a1 == v11)
    {
      return v12;
    }

    else
    {
      return v17;
    }
  }

  if (a1 > 1714697267)
  {
    if (a1 > 1751527985)
    {
      if (a1 == 1751527986)
      {
        return 29;
      }

      v7 = 13364;
    }

    else
    {
      if (a1 == 1714697268)
      {
        return 9;
      }

      v7 = 12848;
    }

    if (a1 != (v7 | 0x68660000))
    {
      return result;
    }

    return 29;
  }

  if (a1 == 1647534392)
  {
    return 22;
  }

  if (a1 == 1714696752 || a1 == 1714696754)
  {
    return 9;
  }

  return result;
}

IOSurfaceRef VTIsPixelBufferProtected(__CVBuffer *a1)
{
  result = CVPixelBufferGetIOSurface(a1);
  if (result)
  {
    return (IOSurfaceGetProtectionOptions() != 0);
  }

  return result;
}

uint64_t VTFillPixelsOutsideDestRectWithBlack(__CVBuffer *a1, uint64_t *a2, uint64_t **a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
  }

  else
  {
    PlaneCount = 1;
  }

  v8 = vtPixelTransferSession_EnsurePixelFormatPixelBlockInfoArray(PixelFormatType, PlaneCount, a3);
  if (!v8)
  {
    v9 = *a3;
    v10 = a2[5];
    if (v10 <= 0)
    {
      v11 = a2[4];
      if (v11 <= 0 && a2[2] + v11 >= *a2 && a2[3] + v10 >= a2[1])
      {
        return 0;
      }
    }

    CVPixelBufferLockBaseAddress(a1, 0);
    v12 = a2[5];
    if (v12 >= 1)
    {
      v13 = VTFillBufferPixelsWithBlack(a1, 0, 0, *a2, a2[5], v9);
      if (v13)
      {
        goto LABEL_20;
      }

      v12 = a2[5];
    }

    v14 = a2[4];
    if (v14 >= 1)
    {
      v13 = VTFillBufferPixelsWithBlack(a1, 0, v12, v14, a2[3], v9);
      if (v13)
      {
        goto LABEL_20;
      }

      v14 = a2[4];
      v12 = a2[5];
    }

    v15 = a2[2] + v14;
    if (*a2 > v15)
    {
      v13 = VTFillBufferPixelsWithBlack(a1, v15, v12, *a2 - v15, a2[3], v9);
      if (v13)
      {
        goto LABEL_20;
      }

      v12 = a2[5];
    }

    v16 = a2[3] + v12;
    v17 = a2[1];
    if (v17 <= v16)
    {
      v8 = 0;
      goto LABEL_22;
    }

    v13 = VTFillBufferPixelsWithBlack(a1, 0, v16, *a2, v17 - v16, v9);
LABEL_20:
    v8 = v13;
LABEL_22:
    CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  return v8;
}

uint64_t printable4CC(unsigned int a1)
{
  if (a1 > 0x63)
  {
    v2 = a1 >> 8;
    v3 = a1 & 0xFF000000;
    v1 = a1;
  }

  else
  {
    v1 = (a1 % 0xAu) | 0x30;
    LOBYTE(v2) = (a1 / 0xAu) | 0x30;
    a1 = 0x200000;
    v3 = 0x20000000;
  }

  return a1 & 0xFF0000 | v3 | (v2 << 8) | v1;
}

uint64_t _VTPixelTransferSessionTransferImage(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v168 = *MEMORY[0x1E69E9840];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v7 = *MEMORY[0x1E695E480];
  v8 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], PixelFormatType);
  if (*(a1 + 16))
  {

    return FigSignalErrorAtGM();
  }

  v10 = v8;
  if (*(a1 + 789))
  {
    v11 = *(a1 + 792);
    if (v11)
    {
      CFRelease(v11);
    }

    Mutable = CFDataCreateMutable(v7, 0);
    *(a1 + 792) = Mutable;
    CFDictionarySetValue(*(a1 + 776), @"ServiceHistogramData", Mutable);
  }

  v128 = *MEMORY[0x1E6965CE8];
  v126 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CE8], 0);
  v120 = *MEMORY[0x1E6965EC8];
  v125 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EC8], 0);
  key = *MEMORY[0x1E6965D88];
  v124 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D88], 0);
  v122 = *MEMORY[0x1E6965F30];
  v123 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F30], 0);
  v119 = *MEMORY[0x1E6965ED0];
  value = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965ED0], 0);
  *(a1 + 1186) = 0;
  v13 = CVPixelBufferGetPixelFormatType(a2);
  v14 = CVPixelBufferGetPixelFormatType(a3);
  Width = CVPixelBufferGetWidth(a2);
  v16 = a3;
  Height = CVPixelBufferGetHeight(a2);
  v18 = CVPixelBufferGetWidth(a3);
  pixelBuffer = v16;
  v19 = CVPixelBufferGetHeight(v16);
  if (!*(a1 + 568))
  {
    v25 = *(a1 + 32);
    if ((!v25 || !VTPixelTransferChainHasNodes(v25)) && !*(a1 + 211) && !*(a1 + 1016))
    {
      goto LABEL_88;
    }
  }

  if (*(a1 + 744) || v13 != *(a1 + 572) || v14 != *(a1 + 576) || *(a1 + 592) != Width || *(a1 + 600) != Height || *(a1 + 640) != v18 || *(a1 + 648) != v19)
  {
    goto LABEL_88;
  }

  v20 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
  v21 = FigCFEqual();
  if (v20)
  {
    CFRelease(v20);
  }

  if (!v21)
  {
    goto LABEL_88;
  }

  v22 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965EF8], 0);
  v23 = FigCFEqual();
  if (v22)
  {
    CFRelease(v22);
  }

  if (!v23 || *(a1 + 88) != *(a1 + 864) || *(a1 + 96) != *(a1 + 872) || *(a1 + 72) != *(a1 + 848) || *(a1 + 80) != *(a1 + 856) || *(a1 + 136) != *(a1 + 912) || *(a1 + 144) != *(a1 + 920) || *(a1 + 120) != *(a1 + 896) || *(a1 + 128) != *(a1 + 904))
  {
    goto LABEL_88;
  }

  if (*(a1 + 1184))
  {
    if (*(a1 + 216))
    {
      if (*(a1 + 256) != *(a1 + 656) || *(a1 + 264) != *(a1 + 664))
      {
        v24 = a2;
        goto LABEL_43;
      }
    }

    else if (!CVPixelBufferGetIOSurface(a2))
    {
      goto LABEL_88;
    }

    v24 = pixelBuffer;
LABEL_43:
    if (!CVPixelBufferGetIOSurface(v24))
    {
      goto LABEL_88;
    }
  }

  v26 = *(a1 + 752);
  if (v26)
  {
    v27 = *(v26 + 40);
    if (v27)
    {
      if (*(v26 + 56))
      {
        if (*(a1 + 768))
        {
          v28 = a2;
          goto LABEL_49;
        }

        if ((*(a1 + 696) || *(a1 + 704)) && !*(a1 + 216))
        {
          v100 = CVPixelBufferGetPixelFormatType(*(a1 + 232));
          v27 = *(*(a1 + 752) + 40);
          v29 = *(a1 + 232);
          if (*(a1 + 580) == v100)
          {
            v28 = a2;
LABEL_50:
            if (!v27(v28, v29))
            {
              goto LABEL_88;
            }

            goto LABEL_55;
          }

          v28 = *(a1 + 232);
LABEL_49:
          v29 = pixelBuffer;
          goto LABEL_50;
        }
      }
    }
  }

LABEL_55:
  v117 = v10;
  v30 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F98], 0);
  v31 = CVBufferCopyAttachment(a2, key, 0);
  v32 = CVBufferCopyAttachment(a2, v122, 0);
  v33 = CVBufferCopyAttachment(a2, v119, 0);
  v34 = CVBufferCopyAttachment(a2, v120, 0);
  v35 = FigCFEqual();
  cf = v32;
  v36 = FigCFEqual();
  v115 = v33;
  v113 = FigCFEqual();
  v116 = v34;
  v111 = FigCFEqual();
  v37 = CVBufferCopyAttachment(a2, v128, 0);
  v38 = FigCFEqual();
  if (v37)
  {
    CFRelease(v37);
  }

  v112 = v36 == 0;
  v110 = v35 == 0;
  v39 = FigCFEqual();
  v40 = FigCFEqual();
  v41 = FigCFEqual();
  v42 = FigCFEqual();
  v43 = FigCFEqual();
  if (v42)
  {
    v44 = v43 == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v44;
  if (!v41)
  {
    v45 = 1;
  }

  if (!v40)
  {
    v45 = 1;
  }

  if (!v39)
  {
    v45 = 1;
  }

  if (!v38)
  {
    v45 = 1;
  }

  if (!v111)
  {
    v45 = 1;
  }

  if (v113)
  {
    v46 = v45;
  }

  else
  {
    v46 = 1;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v10 = v117;
  if (v115)
  {
    CFRelease(v115);
  }

  v47 = v46 | (v112 || v110);
  if (v116)
  {
    CFRelease(v116);
  }

  if ((v47 & 1) == 0)
  {
    v48 = 0;
    v49 = pixelBuffer;
    goto LABEL_93;
  }

LABEL_88:
  VTPixelTransferChainRemoveAllNodes(*(a1 + 32));
  v49 = pixelBuffer;
  v50 = vtPixelTransferSession_BuildChain(a1, a2, pixelBuffer);
  if (!v50)
  {
    if (*(a1 + 40) || !*(a1 + 32))
    {
      goto LABEL_92;
    }

    v104 = vtPixelTransferSessionBuildChainFromBasicTransfer(a1, v51, v52, v53, v54, v55, v56, v57);
    if (v104)
    {
      v48 = v104;
      VTPixelTransferChainRemoveAllNodes(*(a1 + 32));
    }

    else
    {
      *(a1 + 384) = 0u;
      *(a1 + 400) = 0u;
      *(a1 + 352) = 0u;
      *(a1 + 368) = 0u;
      *(a1 + 320) = 0u;
      *(a1 + 336) = 0u;
      *(a1 + 288) = 0u;
      *(a1 + 304) = 0u;
      *(a1 + 544) = 0;
      *(a1 + 552) = 0u;
      *(a1 + 696) = 0u;
      *(a1 + 712) = 0u;
      *(a1 + 752) = 0u;
      v108 = *(a1 + 776);
      if (!v108)
      {
LABEL_92:
        v48 = 0;
        goto LABEL_93;
      }

      CFRelease(v108);
      v48 = 0;
      *(a1 + 776) = 0;
    }

LABEL_93:
    CVBufferRemoveAttachment(v49, v128);
    v59 = CVBufferCopyAttachments(a2, kCVAttachmentMode_ShouldPropagate);
    if (v59)
    {
      v60 = v59;
      v61 = *MEMORY[0x1E69661F8];
      CVBufferHasAttachment(v49, *MEMORY[0x1E69661F8]);
      CVPixelBufferGetPixelFormatType(v49);
      CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      LOBYTE(v136) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v62 = *(a1 + 1112);
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v58 = MutableCopy;
      if (MutableCopy)
      {
        if (*(a1 + 184))
        {
          CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x1E6965D48]);
          CFDictionaryRemoveValue(v58, *MEMORY[0x1E6965D00]);
          CFDictionaryRemoveValue(v58, *MEMORY[0x1E6965CF0]);
        }

        CFDictionaryRemoveValue(v58, *MEMORY[0x1E6965D70]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E6965EF8]);
        if (!*(a1 + 1138))
        {
          CFDictionaryRemoveValue(v58, *MEMORY[0x1E6965CB8]);
        }

        CFDictionaryRemoveValue(v58, v128);
        CFDictionaryRemoveValue(v58, v120);
        CFDictionaryRemoveValue(v58, key);
        CFDictionaryRemoveValue(v58, v122);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661F8]);
        CFDictionaryApplyFunction(v62, vtCombineDictionariesApplier, v58);
        CFRelease(v60);
        v49 = pixelBuffer;
        CVPixelBufferGetPixelFormatType(pixelBuffer);
        CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
        LOBYTE(v136) = 0;
        LOBYTE(v133) = 0;
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        CFDictionaryRemoveValue(v58, v61);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661E0]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E6966198]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661A8]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661D0]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661D8]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661C8]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661B8]);
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661C0]);
        CFDictionaryRemoveValue(v58, @"ProResRAW_LargestDCQSS");
        CFDictionaryRemoveValue(v58, *MEMORY[0x1E69661A0]);
        CVBufferSetAttachments(pixelBuffer, v58, kCVAttachmentMode_ShouldPropagate);
      }

      else
      {
        CFRelease(v60);
        v49 = pixelBuffer;
      }
    }

    else
    {
      v58 = 0;
    }

    v64 = *(a1 + 1016);
    if (v64 <= 2)
    {
      if (v64 == 2)
      {
        v70 = *(a1 + 1040);
        goto LABEL_114;
      }

      if (v64 == 1)
      {
        v48 = vtVImageConverterProc(a2, *(a1 + 1040), a1 + 1056);
        if (v48)
        {
          goto LABEL_106;
        }

        a2 = *(a1 + 1040);
      }
    }

    else if (v64 == 5 || v64 == 3)
    {
      v65 = _VTPixelTransferSessionTransferImage(*(a1 + 1024), a2, *(a1 + 1040));
      if (v65)
      {
        v48 = v65;
        goto LABEL_106;
      }

      v71 = *(a1 + 1016);
      v69 = v124;
      if (v71 == 3)
      {
        v67 = v125;
        v66 = v126;
        if (*(a1 + 1184))
        {
          v96 = VTMetalTransferSessionTransferImageSync(*(a1 + 1160), *(a1 + 1040), *(a1 + 1048), *(a1 + 1168));
        }

        else if (*(a1 + 704))
        {
          v137 = 0u;
          v138 = 0u;
          v136 = 0u;
          *&v137.f64[0] = CVPixelBufferGetWidth(*(a1 + 1040));
          *&v136 = v137.f64[0];
          *&v137.f64[1] = CVPixelBufferGetHeight(*(a1 + 1040));
          v138 = 0uLL;
          *(&v136 + 1) = *&v137.f64[1];
          v135 = 0u;
          v133 = 0u;
          v134 = 0u;
          *&v134.f64[0] = CVPixelBufferGetWidth(*(a1 + 1048));
          *&v133 = v134.f64[0];
          *&v134.f64[1] = CVPixelBufferGetHeight(*(a1 + 1048));
          v135 = 0uLL;
          *(&v133 + 1) = *&v134.f64[1];
          v96 = vtPixelTransferSession_InvokeBlitter(*(a1 + 696), *(a1 + 704), *(a1 + 712), (a1 + 728), (a1 + 736), *(a1 + 1040), *(a1 + 1048), &v136, &v133);
        }

        else
        {
          v96 = vtVImageConverterProc(*(a1 + 1040), *(a1 + 1048), a1 + 1056);
        }

        v48 = v96;
        v68 = v123;
        if (v96)
        {
          goto LABEL_182;
        }

        v72 = *(a1 + 1032);
        v73 = *(a1 + 1048);
      }

      else
      {
        v67 = v125;
        v66 = v126;
        v68 = v123;
        if (v71 != 5)
        {
          v48 = 0;
          goto LABEL_167;
        }

        v72 = *(a1 + 1032);
        v73 = *(a1 + 1040);
      }

      v99 = _VTPixelTransferSessionTransferImage(v72, v73, pixelBuffer);
      goto LABEL_166;
    }

    v70 = v49;
LABEL_114:
    if (!*(a1 + 1186))
    {
      v118 = v10;
      if (VTPixelTransferChainHasNodes(*(a1 + 32)))
      {
        v74 = *(a1 + 640);
        v75 = *(a1 + 592);
        v76 = vcvtq_f64_s64(*(a1 + 608));
        v137 = vcvtq_f64_s64(*(a1 + 624));
        v138 = v76;
        v77 = *(a1 + 656);
        v78 = vcvtq_f64_s64(*(a1 + 672));
        v133 = v74;
        v134 = v78;
        v135 = vcvtq_f64_s64(v77);
        v136 = v75;
        LODWORD(v48) = VTPixelTransferChainDoTransfer(*(a1 + 32), a2, &v136, v70, &v133);
        if (v48)
        {
          VTPixelTransferChainRemoveAllNodes(*(a1 + 32));
        }
      }

      v79 = VTPixelTransferChainHasNodes(*(a1 + 32));
      if (v48 || !v79)
      {
        v80 = *(a1 + 1139);
        v81 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CB8], 0);
        v82 = FigCFEqual();
        v83 = *(a1 + 640);
        v84 = vcvtq_f64_s64(*(a1 + 624));
        v85 = *(a1 + 608);
        v133 = *(a1 + 592);
        v134 = v84;
        v86 = *(a1 + 656);
        v87 = vcvtq_f64_s64(*(a1 + 672));
        v132[0] = v83;
        v132[1] = v87;
        v132[2] = vcvtq_f64_s64(v86);
        v88 = *(a1 + 256);
        v89 = vcvtq_f64_s64(*(a1 + 272));
        v131[0] = *(a1 + 240);
        v131[1] = v89;
        if (v82)
        {
          v80 = 0;
        }

        v90 = a1 + 640;
        v131[2] = vcvtq_f64_s64(v88);
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
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v135 = vcvtq_f64_s64(v85);
        v130 = 0;
        VTPixelTransferSessionSetCrashReporterMethod(&v136, 0x200uLL, a2, &v133, v70, v132, *(a1 + 1112), &v130);
        v91 = *(a1 + 752);
        if (!v91)
        {
          goto LABEL_129;
        }

        v92 = *(v91 + 56);
        if (!v92)
        {
          goto LABEL_129;
        }

        if (*(a1 + 768))
        {
          v48 = v92(*(a1 + 760), *(a1 + 776), a2, &v133, v70, v132);
          v67 = v125;
          v66 = v126;
          v68 = v123;
          v69 = v124;
LABEL_138:
          VTPixelTransferSessionUnsetCrashReporterMethod(v130);
          if (v81)
          {
            CFRelease(v81);
          }

          if (v48)
          {
            v10 = v118;
            goto LABEL_182;
          }

          v10 = v118;
          goto LABEL_155;
        }

        if ((*(a1 + 696) || *(a1 + 704)) && !*(a1 + 216))
        {
          if (*(a1 + 580) == CVPixelBufferGetPixelFormatType(*(a1 + 232)))
          {
            v95 = (*(*(a1 + 752) + 56))(*(a1 + 760), *(a1 + 776), a2, &v133, *(a1 + 232), v131);
            v68 = v123;
            if (!v95)
            {
              v95 = vtPixelTransferSession_InvokeBlitter(*(a1 + 696), *(a1 + 704), *(a1 + 712), (a1 + 728), (a1 + 736), *(a1 + 232), v70, a1 + 240, v90);
            }

            goto LABEL_136;
          }

          v95 = vtPixelTransferSession_InvokeBlitter(*(a1 + 696), *(a1 + 704), *(a1 + 712), (a1 + 728), (a1 + 736), a2, *(a1 + 232), a1 + 592, a1 + 240);
          v68 = v123;
          if (!v95)
          {
            goto LABEL_223;
          }
        }

        else
        {
LABEL_129:
          v93 = *(a1 + 696);
          if (v93)
          {
            v94 = *(a1 + 704);
            v68 = v123;
            if (*(a1 + 216))
            {
              goto LABEL_131;
            }

LABEL_135:
            v95 = vtPixelTransferSession_InvokeBlitter(v93, v94, *(a1 + 712), (a1 + 728), (a1 + 736), a2, v70, a1 + 592, a1 + 640);
            goto LABEL_136;
          }

          v94 = *(a1 + 704);
          v68 = v123;
          if (v94)
          {
            if (*(a1 + 216))
            {
LABEL_131:
              v95 = vtPixelTransferSession_InvokeBlitter(v93, v94, *(a1 + 712), (a1 + 728), (a1 + 736), a2, *(a1 + 232), a1 + 592, a1 + 592);
              if (!v95)
              {
                LOBYTE(v109) = *(a1 + 745);
                v95 = (*(a1 + 216))(*(a1 + 232), a1 + 592, v70, v90, a1 + 288, 0, v80, *(a1 + 1138), v109, *(a1 + 1144));
              }

              goto LABEL_136;
            }

            goto LABEL_135;
          }

          if (*(a1 + 1184))
          {
            if (v91 && *(v91 + 56))
            {
              v97 = CVPixelBufferGetPixelFormatType(*(a1 + 232));
              if (*(a1 + 572) == v97 || *(a1 + 580) == v97)
              {
                v95 = (*(*(a1 + 752) + 56))(*(a1 + 760), *(a1 + 776), a2, &v133, *(a1 + 232), v131);
                if (v95)
                {
                  goto LABEL_136;
                }

                goto LABEL_227;
              }

              v95 = VTMetalTransferSessionTransferImageSync(*(a1 + 1160), a2, *(a1 + 232), *(a1 + 1168));
              if (v95)
              {
                goto LABEL_136;
              }

LABEL_223:
              v95 = (*(*(a1 + 752) + 56))(*(a1 + 760), *(a1 + 776), *(a1 + 232), v131, v70, v132);
              goto LABEL_136;
            }

            v101 = *(a1 + 216);
            if (!v101)
            {
              v105 = *(a1 + 1160);
              v106 = *(a1 + 1168);
              v107 = a2;
LABEL_228:
              v95 = VTMetalTransferSessionTransferImageSync(v105, v107, v70, v106);
              goto LABEL_136;
            }

            if (*(a1 + 256) != *(a1 + 656) || *(a1 + 264) != *(a1 + 664))
            {
              v95 = VTMetalTransferSessionTransferImageSync(*(a1 + 1160), a2, *(a1 + 232), *(a1 + 1168));
              if (!v95)
              {
                v95 = (*(a1 + 216))(*(a1 + 232), a1 + 240, v70, a1 + 640, a1 + 288, 0, v80, *(a1 + 1138), *(a1 + 745), *(a1 + 1144));
              }

              goto LABEL_136;
            }

            if (v80)
            {
              v102 = *(a1 + 1138) != 0;
            }

            else
            {
              v102 = 0;
            }

            v95 = v101(a2, a1 + 592, *(a1 + 232), a1 + 240, a1 + 288, 0, v102, v102, *(a1 + 745), *(a1 + 1144));
            if (!v95)
            {
LABEL_227:
              v105 = *(a1 + 1160);
              v107 = *(a1 + 232);
              v106 = *(a1 + 1168);
              goto LABEL_228;
            }
          }

          else
          {
            v103 = *(a1 + 216);
            if (!v103)
            {
              v48 = 4294954391;
              goto LABEL_137;
            }

            v95 = v103(a2, a1 + 592, v70, a1 + 640, a1 + 288, 0, v80, *(a1 + 1138), *(a1 + 745), *(a1 + 1144));
          }
        }

LABEL_136:
        v48 = v95;
LABEL_137:
        v67 = v125;
        v66 = v126;
        v69 = v124;
        goto LABEL_138;
      }

      v48 = 0;
    }

    v67 = v125;
    v66 = v126;
    v68 = v123;
    v69 = v124;
LABEL_155:
    VTRequiresUnalignedBlackFill();
    if (*(a1 + 1136))
    {
      if (!v98)
      {
        v48 = VTFillPixelsOutsideDestRectWithBlack(v70, (a1 + 640), (a1 + 736));
        if (v48)
        {
          CVPixelBufferGetPixelFormatType(v70);
          goto LABEL_182;
        }
      }
    }

    if (*(a1 + 1016) != 2)
    {
LABEL_167:
      if (value)
      {
        if (v66)
        {
          CVBufferSetAttachment(pixelBuffer, v128, v66, kCVAttachmentMode_ShouldPropagate);
        }

        else
        {
          CVBufferRemoveAttachment(pixelBuffer, v128);
        }

        if (v67)
        {
          CVBufferSetAttachment(pixelBuffer, v120, v67, kCVAttachmentMode_ShouldPropagate);
        }

        else
        {
          CVBufferRemoveAttachment(pixelBuffer, v120);
        }

        if (v69)
        {
          CVBufferSetAttachment(pixelBuffer, key, v69, kCVAttachmentMode_ShouldPropagate);
        }

        else
        {
          CVBufferRemoveAttachment(pixelBuffer, key);
        }

        if (v68)
        {
          CVBufferSetAttachment(pixelBuffer, v122, v68, kCVAttachmentMode_ShouldPropagate);
        }

        else
        {
          CVBufferRemoveAttachment(pixelBuffer, v122);
        }

        CVBufferSetAttachment(pixelBuffer, v119, value, kCVAttachmentMode_ShouldPropagate);
      }

      ++*(a1 + 1232);
      goto LABEL_182;
    }

    v99 = vtVImageConverterProc(*(a1 + 1040), pixelBuffer, a1 + 1056);
LABEL_166:
    v48 = v99;
    if (v99)
    {
      goto LABEL_182;
    }

    goto LABEL_167;
  }

  v48 = v50;
  v58 = 0;
LABEL_106:
  v67 = v125;
  v66 = v126;
  v68 = v123;
  v69 = v124;
LABEL_182:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v48;
}

uint64_t VTPixelTransferSessionGetNextSoftwareBlitter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  if (v4)
  {
    if (v4 > 0x1352)
    {
LABEL_15:
      v14 = 0;
      result = 0;
      *a2 = 0;
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_16;
    }

    v5 = &VTPixelGraphBlitterTable[48 * v4];
    v6 = v4 - 4947;
    v7 = v4 + 1;
    while (v5[4] != *(a1 + 5))
    {
      *(a4 + 32) = v7;
      v5 += 48;
      ++v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v5 = VTPixelGraphBlitterTable;
    v9 = 4947;
    v10 = 1;
    while (*v5 != *a1 || v5[4] != *(a1 + 5))
    {
      *(a4 + 32) = v10++;
      v5 += 48;
      if (!--v9)
      {
LABEL_12:
        v5 = aPedf;
        break;
      }
    }
  }

  if (*v5 != *a1)
  {
    goto LABEL_15;
  }

  *a2 = *(v5 + 2);
  *(a2 + 6) = v5[13];
  *(a2 + 7) = v5[14];
  *(a2 + 4) = *(a1 + 4) & 0x1F;
  *(a2 + 5) = v5[12];
  v11 = *(v5 + 2);
  *a3 = *(v5 + 5);
  *(a3 + 8) = v11;
  *(a3 + 16) = *(v5 + 3);
  *(a3 + 40) = 4;
  v12 = *(v5 + 4);
  *&v13 = v12;
  *(&v13 + 1) = HIDWORD(v12);
  *(a3 + 48) = v13;
  *(a3 + 64) = 0;
  v14 = *(a4 + 32) + 1;
  result = 1;
LABEL_16:
  *(a4 + 32) = v14;
  return result;
}

uint64_t VTPixelTransferSessionGetNextVImageBlitter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 32);
  if (v4)
  {
    if (v4 > 0x157)
    {
LABEL_14:
      v11 = 0;
      result = 0;
      *a2 = 0;
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_15;
    }

    v5 = &VTPixelGraphVImageBlitterTable[8 * v4];
    v6 = v4 + 1;
    while (*(v5 + 4) != *(a1 + 5))
    {
      *(a4 + 32) = v6;
      v5 += 8;
      if (++v6 == 345)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v5 = VTPixelGraphVImageBlitterTable;
    v7 = 1;
    while (*v5 != *a1 || *(v5 + 4) != *(a1 + 5))
    {
      *(a4 + 32) = v7++;
      v5 += 8;
      if (v7 == 345)
      {
LABEL_11:
        v5 = a02wx;
        break;
      }
    }
  }

  if (*v5 != *a1)
  {
    goto LABEL_14;
  }

  *a2 = v5[2];
  *(a2 + 4) = *(a1 + 4) & 0x1F;
  *(a2 + 5) = *(v5 + 12);
  *(a2 + 6) = *(v5 + 13);
  *(a2 + 7) = *(v5 + 14);
  v8 = *(v5 + 2);
  *a3 = vtPixelTransferAppendvImageBlitterNodeCallback;
  *(a3 + 8) = v8;
  *(a3 + 40) = 4;
  v9 = *(v5 + 3);
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *(a3 + 48) = v10;
  *(a3 + 64) = 0;
  v11 = *(a4 + 32) + 1;
  result = 1;
LABEL_15:
  *(a4 + 32) = v11;
  return result;
}

void VTPixelTransferNodeSoftwareFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[4] = 0;
  v1 = DerivedStorage[7];
  if (v1)
  {
    free(v1);
    DerivedStorage[7] = 0;
  }

  v2 = DerivedStorage[8];
  if (v2)
  {
    free(v2);
    DerivedStorage[8] = 0;
  }

  v3 = DerivedStorage[6];
  if (v3)
  {
    v3(DerivedStorage[5]);
  }

  VTPixelTransferNodeBaseFinalize();
}

unint64_t vtPixelTransferSession_PrepareOffsets(unint64_t result, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  if (result >= 2)
  {
    v6 = (a3 + 3);
    v7 = vdupq_n_s64(1uLL);
    v8 = result;
    do
    {
      v9 = *v6;
      v6 += 7;
      v7 = vbslq_s8(vcgtq_u64(v7, v9), v7, v9);
      --v8;
    }

    while (v8);
    v10 = *(a2 + 40) / v7.i64[1] * v7.i64[1];
    v11 = *(a2 + 32) / v7.i64[0] * v7.i64[0];
    v12 = a3 + 2;
    do
    {
      v14 = *a5++;
      v13 = v14;
      v15 = *(v12 - 2);
      v16 = *a4++;
      v17 = v13 + v16 * v10 / (v12[2] * *(v12 - 1));
      v18 = *v12;
      v19 = v12[1];
      v12 += 14;
      *a6++ = v17 + v18 * v11 / (8 * v15 * v19);
      --result;
    }

    while (result);
  }

  else
  {
    *a6 = *a5 + (*a4 * *(a2 + 40) / a3[4] * a3[4]) / a3[1] + a3[2] * *(a2 + 32) / a3[3] * a3[3] / (8 * *a3);
  }

  return result;
}

void VTPixelTransferNodeScalerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[3] = 0;
  v1 = DerivedStorage[36];
  if (v1)
  {
    free(v1);
    DerivedStorage[36] = 0;
  }

  v2 = DerivedStorage[37];
  if (v2)
  {
    free(v2);
    DerivedStorage[37] = 0;
  }

  v3 = DerivedStorage[38];
  if (v3)
  {
    free(v3);
    DerivedStorage[38] = 0;
  }

  v4 = 0;
  v5 = DerivedStorage + 4;
  do
  {
    v6 = v5[v4];
    if (v6)
    {
      free(v6);
      v5[v4] = 0;
    }

    v4 += 4;
  }

  while (v4 != 16);
  v7 = 0;
  v8 = DerivedStorage + 20;
  do
  {
    v9 = v8[v7];
    if (v9)
    {
      free(v9);
      v8[v7] = 0;
    }

    v7 += 4;
  }

  while (v7 != 16);
  for (i = 0; i != 16; i += 4)
  {
    v11 = v5[i];
    if (v11)
    {
      free(v11);
      v5[i] = 0;
    }
  }

  v12 = 0;
  v13 = DerivedStorage + 16;
  do
  {
    v14 = v13[v12];
    if (v14)
    {
      free(v14);
      v13[v12] = 0;
    }

    v12 += 4;
  }

  while (v12 != 16);
  v15 = DerivedStorage[36];
  if (v15)
  {
    free(v15);
    DerivedStorage[36] = 0;
  }

  v16 = DerivedStorage[37];
  if (v16)
  {
    free(v16);
    DerivedStorage[37] = 0;
  }

  v17 = DerivedStorage[38];
  if (v17)
  {
    free(v17);
    DerivedStorage[38] = 0;
  }

  VTPixelTransferNodeBaseFinalize();
}

void VTPixelTransferNodeDynamicFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 136);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 136) = 0;
  }

  (*(DerivedStorage + 160))(*(DerivedStorage + 24));
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 160) = 0;
  *(DerivedStorage + 144) = 0;

  VTPixelTransferNodeBaseFinalize();
}

__CFString *vtPixelTransferSessionCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  VTGetOnePassScalingPropertyValue(*(a1 + 1160), *(a1 + 1176));
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTPixelTransferSession %p [%p]>{", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t vtAllowTransferCapabilityCommonOnce()
{
  sAllowSoftwareTransferSession = FigGetCFPreferenceBooleanWithDefault();
  _MergedGlobals = FigGetCFPreferenceBooleanWithDefault();
  byte_1ED6D3B09 = FigGetCFPreferenceBooleanWithDefault();
  sAllowPixelTransferChain = FigGetCFPreferenceBooleanWithDefault();
  sAllowPixelTransferGraph = FigGetCFPreferenceBooleanWithDefault();
  result = FigGetCFPreferenceBooleanWithDefault();
  sAllowPixelTransferFallbacks = result;
  return result;
}

CFArrayRef vtPixelTransferSessionCreateYCbCrMatricesArray()
{
  values[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6965FC8];
  values[0] = *MEMORY[0x1E6965FD0];
  values[1] = v0;
  values[2] = *MEMORY[0x1E6965FF0];
  values[3] = @"ITU_R_2020";
  values[4] = @"DCI_P3";
  values[5] = @"P3_D65";
  v1 = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
  if (!v1)
  {
    FigSignalErrorAtGM();
  }

  return v1;
}

void vtPixelTransferSessionUpdateTransferOptions(uint64_t a1)
{
  Mutable = *(a1 + 776);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 776) = Mutable;
  }

  v3 = *MEMORY[0x1E695E4D0];
  v4 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 770))
  {
    v5 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"ServiceEnableHighSpeedTransfer", v5);
  if (*(a1 + 784))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  CFDictionarySetValue(*(a1 + 776), @"ServiceDisableDither", v6);
  if (*(a1 + 785))
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  CFDictionarySetValue(*(a1 + 776), @"ServiceUseOptimalMSRCoefficients", v7);
  if (*(a1 + 789))
  {
    v8 = *(a1 + 800);
    v9 = *(a1 + 776);
    if (v8)
    {
      CFDictionarySetValue(v9, @"ServiceHistogramRectangle", v8);
      goto LABEL_17;
    }
  }

  else
  {
    CFDictionaryRemoveValue(*(a1 + 776), @"ServiceHistogramData");
    v9 = *(a1 + 776);
  }

  CFDictionaryRemoveValue(v9, @"ServiceHistogramRectangle");
LABEL_17:
  v10 = *(a1 + 1128);
  v11 = *(a1 + 776);
  if (v10)
  {
    CFDictionarySetValue(v11, @"RealTime", v10);
  }

  else
  {
    CFDictionaryRemoveValue(v11, @"RealTime");
  }

  v12 = *(a1 + 776);
  if (*(a1 + 1187))
  {

    CFDictionarySetValue(v12, @"ReducedPrecisionFractionalOffsets", v3);
  }

  else
  {

    CFDictionaryRemoveValue(v12, @"ReducedPrecisionFractionalOffsets");
  }
}

size_t vt_Copy_Planar444_R10k(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = a1[1];
  v7 = a1[2];
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v11 = BaseAddress;
  if (PixelFormatType <= 2016686639)
  {
    if (PixelFormatType == 1378955371 || PixelFormatType == 1983131952)
    {
      goto LABEL_12;
    }

    v14 = 1999843442;
    goto LABEL_11;
  }

  if (PixelFormatType > 2016687155)
  {
    if (PixelFormatType == 2016687216)
    {
      goto LABEL_12;
    }

    v14 = 2016687156;
LABEL_11:
    if (PixelFormatType != v14)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = BaseAddress + 8 * *(a3 + 32) + *(a3 + 40) * BytesPerRow;
    goto LABEL_15;
  }

  if (PixelFormatType == 2016686640)
  {
    v13 = *(a3 + 32);
    v12 = *(a3 + 40) / 2;
    goto LABEL_14;
  }

  if (PixelFormatType == 2016686642)
  {
    v13 = *(a3 + 32);
    v12 = *(a3 + 40);
LABEL_14:
    v11 = BaseAddress + v12 * BytesPerRow + ((v13 + (v13 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_15:
  v15 = *a1;
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[11];
  v20 = a1[7];
  v19 = a1[8];
  result = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v7 && v8)
  {
    for (i = 0; i != v8; ++i)
    {
      for (j = 0; j != v7; ++j)
      {
        *(v11 + 4 * j) = bswap32((*(v17 + 2 * j) << 12) | (4 * *(v15 + 2 * j)) | (*(v19 + 2 * j) << 22));
      }

      v15 += v16;
      v17 += v20;
      v19 += v18;
      v11 += result;
    }
  }

  return result;
}

size_t vt_Copy_Planar444_v410(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = a1[1];
  v7 = a1[2];
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v11 = BaseAddress;
  if (PixelFormatType <= 2016686639)
  {
    if (PixelFormatType == 1378955371 || PixelFormatType == 1983131952)
    {
      goto LABEL_12;
    }

    v14 = 1999843442;
    goto LABEL_11;
  }

  if (PixelFormatType > 2016687155)
  {
    if (PixelFormatType == 2016687216)
    {
      goto LABEL_12;
    }

    v14 = 2016687156;
LABEL_11:
    if (PixelFormatType != v14)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = BaseAddress + 8 * *(a3 + 32) + *(a3 + 40) * BytesPerRow;
    goto LABEL_15;
  }

  if (PixelFormatType == 2016686640)
  {
    v13 = *(a3 + 32);
    v12 = *(a3 + 40) / 2;
    goto LABEL_14;
  }

  if (PixelFormatType == 2016686642)
  {
    v13 = *(a3 + 32);
    v12 = *(a3 + 40);
LABEL_14:
    v11 = BaseAddress + v12 * BytesPerRow + ((v13 + (v13 >> 63)) & 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_15:
  v15 = *a1;
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[11];
  v20 = a1[7];
  v19 = a1[8];
  result = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (v7 && v8)
  {
    for (i = 0; i != v8; ++i)
    {
      for (j = 0; j != v7; ++j)
      {
        *(v11 + 4 * j) = (*(v17 + 2 * j) << 12) | (4 * *(v15 + 2 * j)) | (*(v19 + 2 * j) << 22);
      }

      v15 += v16;
      v17 += v20;
      v19 += v18;
      v11 += result;
    }
  }

  return result;
}

vImage_Error vt_Copy_ChunkyFloatVImageBuffer_to_RGhA(const vImage_Buffer *a1, CVPixelBufferRef pixelBuffer, uint64_t a3, vImage_Flags a4)
{
  v9.height = CVPixelBufferGetHeight(pixelBuffer);
  v9.width = 4 * CVPixelBufferGetWidth(pixelBuffer);
  v9.rowBytes = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v9.data = CVPixelBufferGetBaseAddress(pixelBuffer) + 8 * *(a3 + 32) + v9.rowBytes * *(a3 + 40);
  a1->width *= 4;
  result = vImageConvert_PlanarFtoPlanar16F(a1, &v9, a4);
  a1->width >>= 2;
  return result;
}

char *vt_Copy_v210_10bitBiPlanarYUV422(__CVBuffer *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[2];
  v6 = a3[3];
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[7];
  v10 = a3[4];
  if (CVPixelBufferIsPlanar(a1))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    result = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a1);
    result = CVPixelBufferGetBaseAddress(a1);
  }

  if (v7 >= 1)
  {
    v13 = 0;
    v14 = (v5 + 5) / 6;
    v15 = &result[2 * *(a2 + 32) + *(a2 + 40) * BytesPerRowOfPlane];
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      if (v5 >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = v14;
        do
        {
          v19 = (v8 + v16);
          v20 = (v10 + v16);
          v21 = *&v15[v17];
          result = *&v15[v17 + 4];
          v22 = *&v15[v17 + 8];
          v23 = *&v15[v17 + 12];
          *v20 = v21 << 6;
          *v19 = (v21 >> 4) & 0xFFC0;
          v20[1] = (v21 >> 14) & 0xFFC0;
          v19[1] = result << 6;
          v20[2] = (result >> 4) & 0xFFC0;
          v19[2] = (result >> 14) & 0xFFC0;
          v20[3] = v22 << 6;
          v19[3] = (v22 >> 4) & 0xFFC0;
          v20[4] = (v22 >> 14) & 0xFFC0;
          v19[4] = v23 << 6;
          v20[5] = (v23 >> 4) & 0xFFC0;
          v19[5] = (v23 >> 14) & 0xFFC0;
          v17 += 16;
          v16 += 12;
          --v18;
        }

        while (v18);
      }

      v15 += BytesPerRowOfPlane;
      v8 += v6;
      v10 += v9;
      ++v13;
    }

    while (v13 != v7);
  }

  return result;
}

__int16 *vt_Copy_10bitBiPlanarYUV422_v210(uint64_t *a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v5 = a1[2];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[7];
  v10 = a1[4];
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    result = CVPixelBufferGetBaseAddress(pixelBuffer);
  }

  if (v7 >= 1)
  {
    v13 = 0;
    v14 = (v5 + 5) / 6;
    v15 = &result[*(a3 + 32)] + *(a3 + 40) * BytesPerRowOfPlane;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v16.i64[0] = 0x2000000020;
    v16.i64[1] = 0x2000000020;
    v17.i64[0] = 0x300000003;
    v17.i64[1] = 0x300000003;
    do
    {
      if (v5 >= 1)
      {
        v18 = 0;
        for (i = 0; i != v14; ++i)
        {
          result = (v10 + v18 + 10);
          v20.i16[0] = *(v8 + v18);
          v20.i16[1] = *(v10 + v18 + 4);
          v20.i16[2] = *(v8 + v18 + 6);
          v20.i16[3] = *result;
          v21.i16[0] = *(v10 + v18);
          v21.i16[1] = *(v8 + v18 + 2);
          v21.i16[2] = *(v10 + v18 + 6);
          v21.i16[3] = *(v8 + v18 + 8);
          v22.i16[0] = *(v10 + v18 + 2);
          v22.i16[1] = *(v8 + v18 + 4);
          v22.i16[2] = *(v10 + v18 + 8);
          v22.i16[3] = *(v8 + v18 + 10);
          *&v15[16 * i] = vorrq_s8(vorrq_s8(vshlq_n_s32(vminq_u32(vshrq_n_u32(vaddw_u16(v16, v20), 6uLL), v17), 0xAuLL), vminq_u32(vshrq_n_u32(vaddw_u16(v16, v21), 6uLL), v17)), vshlq_n_s32(vminq_u32(vshrq_n_u32(vaddw_u16(v16, v22), 6uLL), v17), 0x14uLL));
          v18 += 12;
        }
      }

      v8 += v6;
      v10 += v9;
      v15 += BytesPerRowOfPlane;
      ++v13;
    }

    while (v13 != v7);
  }

  return result;
}

char *vt_Copy_PlanarYUV422_v216(char **a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[11];
  v9 = a1[4];
  v11 = a1[7];
  v10 = a1[8];
  if (CVPixelBufferIsPlanar(pixelBuffer))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    result = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    result = CVPixelBufferGetBaseAddress(pixelBuffer);
  }

  if (v6 >= 1)
  {
    v14 = 0;
    v15 = (v4 + 1) / 2;
    v16 = &result[2 * *(a3 + 32) + *(a3 + 40) * BytesPerRowOfPlane];
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v17 = 2 * v15;
    do
    {
      if (v4 >= 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = v7;
        do
        {
          v21 = &v16[v19];
          *v21 = v9[v18];
          v21[1] = v9[v18 + 1];
          v21[2] = *v20;
          v21[3] = v20[1];
          v21[4] = v10[v18];
          v21[5] = v10[v18 + 1];
          v21[6] = v20[2];
          v21[7] = v20[3];
          v19 += 8;
          v18 += 2;
          v20 += 4;
        }

        while (v17 != v18);
      }

      v7 = &v5[v7];
      v9 = &v11[v9];
      v10 = &v8[v10];
      v16 += BytesPerRowOfPlane;
      ++v14;
    }

    while (v14 != v6);
  }

  return result;
}

uint64_t vtByteFillColumnCbCr8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 2 * result;
  v5 = *(v4 - 4);
  v6 = (v4 - 1);
  if (v4 - 1 >= (a4 + a3))
  {
    if (a2)
    {
      v8 = (v4 - 2);
      if (v4 - 2 < (a4 + a3))
      {
        do
        {
          *v8 = v5;
          v8 += a3;
          --a2;
        }

        while (a2);
      }
    }
  }

  else if (a2)
  {
    v7 = *(v4 - 3);
    do
    {
      *(v6 - 1) = v5;
      *v6 = v7;
      v6 += a3;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t vtByteFillColumnCbCr16(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 4 * result;
  v5 = *(v4 - 8);
  v6 = (v4 - 2);
  if (v4 - 2 >= (a4 + a3))
  {
    if (a2)
    {
      v8 = (v4 - 4);
      if (v4 - 4 < (a4 + a3))
      {
        do
        {
          *v8 = v5;
          v8 = (v8 + a3);
          --a2;
        }

        while (a2);
      }
    }
  }

  else if (a2)
  {
    v7 = *(v4 - 6);
    do
    {
      *(v6 - 1) = v5;
      *v6 = v7;
      v6 = (v6 + a3);
      --a2;
    }

    while (a2);
  }

  return result;
}

CFDictionaryRef vtCreatePixelAspectRatioAttachment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6965F00];
  keys[0] = *MEMORY[0x1E6965EF0];
  keys[1] = v4;
  v5 = a4 * a1;
  v6 = a3 * a2;
  if (a4 * a1 >= 0)
  {
    v7 = a4 * a1;
  }

  else
  {
    v7 = -v5;
  }

  if (v6 >= 0)
  {
    v8 = a3 * a2;
  }

  else
  {
    v8 = -v6;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v7 = v8;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v7;
        v7 = v9 % v7;
        v9 = v10;
      }

      while (v7);
    }
  }

  else if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v12 = v6 / v10;
  v17 = v12;
  valuePtr = v5 / v10;
  if (v5 / v10 && v12)
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    values = v14;
    v15 = CFNumberCreate(v13, kCFNumberSInt64Type, &v17);
    v11 = 0;
    cf = v15;
    if (v14 && v15)
    {
      v11 = CFDictionaryCreate(v13, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = values;
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v11;
}

uint64_t vtPixelTransferServiceNodeMatchesSourceAndDestinationPixelFormats(uint64_t *a1, int a2, int a3)
{
  v3 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v4 = a1[1];
  while (1)
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  v6 = a1[2];
  if (v6 < 1)
  {
    return 0;
  }

  v7 = a1[3];
  while (1)
  {
    v8 = *v7;
    v7 += 2;
    if (v8 == a3)
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return 1;
}

vImage_Error vt_VImage_Setup_2vuy_32ARGB(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 255;
  *(&v18 + 1) = 255;
  *&pixelRange.Yp_bias = xmmword_18FECD060;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp8, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_2vuy_32ARGB;
  *a11 = vt_VImage_Cleanup_2vuy_32ARGB;
  *a8 = v17;
  return result;
}

vImage_Error vt_VImage_Setup_2vuy_32BGRA(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, void *a9, uint64_t a10, void (**a11)(void **a1))
{
  v23 = 0uLL;
  v24 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&v18 = 255;
  *(&v18 + 1) = 255;
  *&pixelRange.Yp_bias = xmmword_18FECD060;
  *&pixelRange.YpMax = v18;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v23 = xmmword_18FECD070;
      v21 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v23 = xmmword_18FECD080;
      v21 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v19 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v23 = xmmword_18FECD090;
      v21 = 1072746935;
    }

    v24 = v21;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v23;
    goto LABEL_11;
  }

  v19 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v19;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, kvImage422CbYpCrYp8, kvImageARGB8888, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_2vuy_32BGRA;
  *a11 = vt_VImage_Cleanup_2vuy_32BGRA;
  *a8 = v17;
  return result;
}

uint64_t vt_CopyAvg_2vuy_y420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v70 = *MEMORY[0x1E69E9840];
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
  v58 = 0u;
  *&v57[32] = 0u;
  *&v57[16] = 0u;
  *v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  *&v52[32] = 0u;
  *&v52[16] = 0u;
  *v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = a2[3];
  v43 = a2[2];
  v46[0] = vdupq_n_s64(1uLL);
  v46[1] = xmmword_18FECD0A0;
  v47 = 1;
  *&v52[8] = v46[0];
  *&v52[24] = xmmword_18FECD0B0;
  *&v52[40] = 2;
  *&v57[8] = v46[0];
  *&v57[24] = xmmword_18FECD0B0;
  v69 = 0;
  *&v57[40] = 2;
  v11 = a2[4];
  v10 = a2[5];
  v12 = *a3;
  v13 = *a4;
  vtPixelTransferSession_PrepareOffsets(3uLL, a6, v46, a8, a7, &v44);
  if (v9 >= 2)
  {
    v14 = 0;
    v15 = v9 >> 1;
    v16 = *a8;
    v17 = a8[1];
    v18 = a8[2];
    v20 = *(&v44 + 1);
    v19 = v45;
    v21 = 2 * *a8;
    v22 = 2 * v13;
    v23 = (v44 + 1);
    v24 = ((2 * v11) & 0xFFFFFFFFFFFFFFCLL) + v13 * v10 + v12 + 3;
    v25 = (v24 + v13);
    do
    {
      if (v43 >= 2)
      {
        v26 = 0;
        v27 = v24;
        v28 = v25;
        v29 = v23;
        do
        {
          v30 = &v29[v16];
          v31 = *(v28 - 3) + *(v27 - 3);
          v32 = v31 >> 1;
          if (v31 >> 1 >= 0xF0)
          {
            LOBYTE(v32) = -16;
          }

          v33 = *(v27 - 2);
          if (v33 >= 0xEB)
          {
            v33 = 235;
          }

          if (v33 <= 0x10)
          {
            LOBYTE(v33) = 16;
          }

          v34 = *(v28 - 1) + *(v27 - 1);
          v35 = v34 >> 1;
          if (v34 >> 1 >= 0xF0)
          {
            LOBYTE(v35) = -16;
          }

          v37 = *v27;
          v27 += 4;
          v36 = v37;
          if (v37 >= 0xEB)
          {
            v36 = 235;
          }

          if (v36 <= 0x10)
          {
            LOBYTE(v36) = 16;
          }

          v38 = *(v28 - 2);
          if (v38 >= 0xEB)
          {
            v38 = 235;
          }

          if (v38 <= 0x10)
          {
            LOBYTE(v38) = 16;
          }

          v39 = *v28;
          v28 += 4;
          *(v29 - 1) = v33;
          *v29 = v36;
          v29 += 2;
          *(v30 - 1) = v38;
          *v30 = v39;
          if (v31 >= 0x20)
          {
            v40 = v32;
          }

          else
          {
            v40 = 16;
          }

          *(v20 + v26) = v40;
          if (v34 >= 0x20)
          {
            v41 = v35;
          }

          else
          {
            v41 = 16;
          }

          *(v19 + v26++) = v41;
        }

        while (v43 >> 1 != v26);
      }

      v20 += v17;
      v19 += v18;
      ++v14;
      v23 += v21;
      v25 += v22;
      v24 += v22;
    }

    while (v14 != v15);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_y420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    *&v54[32] = 0u;
    *&v54[16] = 0u;
    *v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    *&v49[32] = 0u;
    *&v49[16] = 0u;
    *v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = a2[2];
    v10 = a2[3];
    v43[0] = vdupq_n_s64(1uLL);
    v43[1] = xmmword_18FECD0A0;
    v44 = 1;
    *&v49[8] = v43[0];
    *&v49[24] = xmmword_18FECD0B0;
    *&v49[40] = 2;
    *&v54[8] = v43[0];
    *&v54[24] = xmmword_18FECD0B0;
    v66 = 0;
    *&v54[40] = 2;
    v12 = a2[4];
    v11 = a2[5];
    v13 = *a3;
    v14 = *a4;
    vtPixelTransferSession_PrepareOffsets(3uLL, a6, v43, a8, a7, &v41);
    if (v10 >= 2)
    {
      v15 = 0;
      v16 = v10 >> 1;
      v17 = *a8;
      v18 = a8[1];
      v19 = a8[2];
      v20 = *(&v41 + 1);
      v21 = 2 * *a8;
      v22 = 2 * v14;
      v23 = (v41 + 1);
      v24 = ((2 * v12) & 0xFFFFFFFFFFFFFFCLL) + v14 * v11 + v13 + 3;
      v25 = v42;
      v26 = (v24 + v14);
      do
      {
        if (v9 >= 2)
        {
          v27 = 0;
          v28 = v24;
          v29 = v26;
          v30 = v23;
          do
          {
            v31 = &v30[v17];
            v32 = *(v28 - 3);
            if (v32 >= 0xF0)
            {
              v32 = 240;
            }

            if (v32 <= 0x10)
            {
              LOBYTE(v32) = 16;
            }

            v33 = *(v28 - 2);
            if (v33 >= 0xEB)
            {
              v33 = 235;
            }

            if (v33 <= 0x10)
            {
              LOBYTE(v33) = 16;
            }

            v34 = *(v28 - 1);
            if (v34 >= 0xF0)
            {
              v34 = 240;
            }

            if (v34 <= 0x10)
            {
              LOBYTE(v34) = 16;
            }

            v36 = *v28;
            v28 += 4;
            v35 = v36;
            if (v36 >= 0xEB)
            {
              v35 = 235;
            }

            if (v35 <= 0x10)
            {
              LOBYTE(v35) = 16;
            }

            v37 = *(v29 - 2);
            if (v37 >= 0xEB)
            {
              v37 = 235;
            }

            if (v37 <= 0x10)
            {
              LOBYTE(v37) = 16;
            }

            v39 = *v29;
            v29 += 4;
            v38 = v39;
            if (v39 >= 0xEB)
            {
              v38 = 235;
            }

            if (v38 <= 0x10)
            {
              LOBYTE(v38) = 16;
            }

            *(v30 - 1) = v33;
            *v30 = v35;
            v30 += 2;
            *(v31 - 1) = v37;
            *v31 = v38;
            *(v20 + v27) = v32;
            *(v25 + v27++) = v34;
          }

          while (v9 >> 1 != v27);
        }

        v20 += v18;
        v25 += v19;
        ++v15;
        v23 += v21;
        v26 += v22;
        v24 += v22;
      }

      while (v15 != v16);
    }
  }

  return 0;
}

uint64_t vt_CopyAvg_2vuy_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  *&v51[32] = 0u;
  *&v51[16] = 0u;
  *v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  memset(v44, 0, sizeof(v44));
  v9 = a2[2];
  v10 = a2[3];
  v45[0] = vdupq_n_s64(1uLL);
  v45[1] = xmmword_18FECD0A0;
  v46 = 1;
  *&v51[8] = v45[0];
  *&v51[24] = xmmword_18FECD0C0;
  v70 = 0;
  *&v51[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v45, a8, a7, v44);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v44[0] + 1);
    v19 = *&v44[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = *a8 + *&v44[0] + 1;
    v23 = ((2 * v12) & 0xFFFFFFFFFFFFFFCLL) + v14 * v11 + v13;
    v24 = (v23 + 1);
    v25 = v23 + v14 + 3;
    do
    {
      if (v9 >= 2)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v22;
        v30 = v9 >> 1;
        do
        {
          v31 = (v19 + v26);
          v32 = (v18 + v26);
          v33 = *(v27 - 3) + *(v28 - 1);
          v34 = v33 >> 1;
          if (v33 >> 1 >= 0xF0)
          {
            LOBYTE(v34) = -16;
          }

          v35 = *v28;
          if (v35 >= 0xEB)
          {
            v35 = 235;
          }

          if (v35 <= 0x10)
          {
            LOBYTE(v35) = 16;
          }

          v36 = *(v27 - 1) + v28[1];
          v37 = v36 >> 1;
          if (v36 >> 1 >= 0xF0)
          {
            LOBYTE(v37) = -16;
          }

          v38 = v28[2];
          if (v38 >= 0xEB)
          {
            v38 = 235;
          }

          if (v38 <= 0x10)
          {
            LOBYTE(v38) = 16;
          }

          v39 = *(v27 - 2);
          if (v39 >= 0xEB)
          {
            v39 = 235;
          }

          if (v39 <= 0x10)
          {
            LOBYTE(v39) = 16;
          }

          v40 = *v27;
          v27 += 4;
          *v31 = v35;
          v31[1] = v38;
          *(v29 - 1) = v39;
          *v29 = v40;
          v29 += 2;
          if (v33 >= 0x20)
          {
            v41 = v34;
          }

          else
          {
            v41 = 16;
          }

          *v32 = v41;
          if (v36 >= 0x20)
          {
            v42 = v37;
          }

          else
          {
            v42 = 16;
          }

          v32[1] = v42;
          v26 += 2;
          v28 += 4;
          --v30;
        }

        while (v30);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v20;
      v24 += v21;
      v25 += v21;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyDec_2vuy_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v69 = *MEMORY[0x1E69E9840];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  *&v49[32] = 0u;
  *&v49[16] = 0u;
  *v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  memset(v42, 0, sizeof(v42));
  v9 = a2[2];
  v10 = a2[3];
  v43[0] = vdupq_n_s64(1uLL);
  v43[1] = xmmword_18FECD0A0;
  v44 = 1;
  *&v49[8] = v43[0];
  *&v49[24] = xmmword_18FECD0C0;
  v68 = 0;
  *&v49[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v43, a8, a7, v42);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v42[0] + 1);
    v19 = *&v42[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = *a8 + *&v42[0] + 1;
    v23 = ((2 * v12) & 0xFFFFFFFFFFFFFFCLL) + v14 * v11 + v13 + 3;
    v24 = (v23 + v14);
    do
    {
      if (v9 >= 2)
      {
        v25 = 0;
        v26 = v23;
        v27 = v24;
        v28 = v9 >> 1;
        do
        {
          v29 = (v22 + v25);
          v30 = (v19 + v25);
          v31 = (v18 + v25);
          v32 = *(v26 - 3);
          if (v32 >= 0xF0)
          {
            v32 = 240;
          }

          if (v32 <= 0x10)
          {
            LOBYTE(v32) = 16;
          }

          v33 = *(v26 - 2);
          if (v33 >= 0xEB)
          {
            v33 = 235;
          }

          if (v33 <= 0x10)
          {
            LOBYTE(v33) = 16;
          }

          v34 = *(v26 - 1);
          if (v34 >= 0xF0)
          {
            v34 = 240;
          }

          if (v34 <= 0x10)
          {
            LOBYTE(v34) = 16;
          }

          v36 = *v26;
          v26 += 4;
          v35 = v36;
          if (v36 >= 0xEB)
          {
            v35 = 235;
          }

          if (v35 <= 0x10)
          {
            LOBYTE(v35) = 16;
          }

          v37 = *(v27 - 2);
          if (v37 >= 0xEB)
          {
            v37 = 235;
          }

          if (v37 <= 0x10)
          {
            LOBYTE(v37) = 16;
          }

          v39 = *v27;
          v27 += 4;
          v38 = v39;
          if (v39 >= 0xEB)
          {
            v38 = 235;
          }

          *v30 = v33;
          v30[1] = v35;
          if (v38 <= 0x10)
          {
            v40 = 16;
          }

          else
          {
            v40 = v38;
          }

          *(v29 - 1) = v37;
          *v29 = v40;
          *v31 = v32;
          v31[1] = v34;
          v25 += 2;
          --v28;
        }

        while (v28);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v20;
      v24 += v21;
      v23 += v21;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_2vuy_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  *&v52[32] = 0u;
  *&v52[16] = 0u;
  *v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  memset(v45, 0, sizeof(v45));
  v9 = a2[2];
  v10 = a2[3];
  v46[0] = vdupq_n_s64(1uLL);
  v46[1] = xmmword_18FECD0A0;
  v47 = 1;
  *&v52[8] = v46[0];
  *&v52[24] = xmmword_18FECD0C0;
  v71 = 0;
  *&v52[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v46, a8, a7, v45);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v45[0] + 1);
    v19 = *&v45[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = *a8 + *&v45[0] + 1;
    v23 = ((2 * v12) & 0xFFFFFFFFFFFFFFCLL) + v14 * v11 + v13;
    v24 = (v23 + 1);
    v25 = v23 + v14 + 3;
    do
    {
      if (v9 >= 2)
      {
        v26 = 0;
        v27 = v25;
        v28 = v24;
        v29 = v22;
        v30 = v9 >> 1;
        do
        {
          v31 = (v19 + v26);
          v32 = *(v27 - 3) + *(v28 - 1);
          v33 = v32 >> 1;
          if (v32 >> 1 >= 0xF0)
          {
            v33 = 240;
          }

          if (v32 >= 0x20)
          {
            v34 = v33;
          }

          else
          {
            v34 = 16;
          }

          v35 = *v28;
          if (v35 >= 0xEB)
          {
            v35 = 235;
          }

          if (v35 <= 0x10)
          {
            v35 = 16;
          }

          v36 = *(v27 - 1) + v28[1];
          v37 = v36 >> 1;
          if (v36 >> 1 >= 0xF0)
          {
            v37 = 240;
          }

          if (v36 >= 0x20)
          {
            v38 = v37;
          }

          else
          {
            v38 = 16;
          }

          v39 = v28[2];
          if (v39 >= 0xEB)
          {
            v39 = 235;
          }

          if (v39 <= 0x10)
          {
            v39 = 16;
          }

          v40 = *(v27 - 2);
          if (v40 >= 0xEB)
          {
            v40 = 235;
          }

          v42 = *v27;
          v27 += 4;
          v41 = v42;
          if (v40 <= 0x10)
          {
            v40 = 16;
          }

          *v31 = sLumaTableVtoF[v35];
          v31[1] = sLumaTableVtoF[v39];
          *(v29 - 1) = sLumaTableVtoF[v40];
          v43 = (v18 + v26);
          *v29 = sLumaTableVtoF[v41];
          v29 += 2;
          *v43 = sChromaTableVtoF[v34];
          v43[1] = sChromaTableVtoF[v38];
          v26 += 2;
          v28 += 4;
          --v30;
        }

        while (v30);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v20;
      v24 += v21;
      v25 += v21;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_CopyDec_2vuy_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v70 = *MEMORY[0x1E69E9840];
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
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  *&v50[32] = 0u;
  *&v50[16] = 0u;
  *v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  memset(v43, 0, sizeof(v43));
  v9 = a2[2];
  v10 = a2[3];
  v44[0] = vdupq_n_s64(1uLL);
  v44[1] = xmmword_18FECD0A0;
  v45 = 1;
  *&v50[8] = v44[0];
  *&v50[24] = xmmword_18FECD0C0;
  v69 = 0;
  *&v50[40] = 2;
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a3;
  v14 = *a4;
  vtPixelTransferSession_PrepareOffsets(2uLL, a6, v44, a8, a7, v43);
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 >> 1;
    v17 = a8[1];
    v18 = *(&v43[0] + 1);
    v19 = *&v43[0];
    v20 = 2 * *a8;
    v21 = 2 * v14;
    v22 = *a8 + *&v43[0] + 1;
    v23 = ((2 * v12) & 0xFFFFFFFFFFFFFFCLL) + v14 * v11 + v13 + 3;
    v24 = (v23 + v14);
    do
    {
      if (v9 >= 2)
      {
        v25 = 0;
        v26 = v23;
        v27 = v24;
        v28 = v9 >> 1;
        do
        {
          v29 = (v22 + v25);
          v30 = (v19 + v25);
          v31 = *(v26 - 3);
          if (v31 >= 0xF0)
          {
            v31 = 240;
          }

          v32 = *(v26 - 2);
          if (v31 <= 0x10)
          {
            v31 = 16;
          }

          if (v32 >= 0xEB)
          {
            v32 = 235;
          }

          if (v32 <= 0x10)
          {
            v32 = 16;
          }

          v33 = *(v26 - 1);
          if (v33 >= 0xF0)
          {
            v33 = 240;
          }

          if (v33 <= 0x10)
          {
            v33 = 16;
          }

          v35 = *v26;
          v26 += 4;
          v34 = v35;
          if (v35 >= 0xEB)
          {
            v34 = 235;
          }

          if (v34 <= 0x10)
          {
            v34 = 16;
          }

          v36 = *(v27 - 2);
          if (v36 >= 0xEB)
          {
            v36 = 235;
          }

          if (v36 <= 0x10)
          {
            v36 = 16;
          }

          v38 = *v27;
          v27 += 4;
          v37 = v38;
          v39 = sLumaTableVtoF[v32];
          if (v38 >= 0xEB)
          {
            v37 = 235;
          }

          *v30 = v39;
          v30[1] = sLumaTableVtoF[v34];
          if (v37 <= 0x10)
          {
            v40 = 16;
          }

          else
          {
            v40 = v37;
          }

          *(v29 - 1) = sLumaTableVtoF[v36];
          v41 = (v18 + v25);
          *v29 = sLumaTableVtoF[v40];
          *v41 = sChromaTableVtoF[v31];
          v41[1] = sChromaTableVtoF[v33];
          v25 += 2;
          --v28;
        }

        while (v28);
      }

      v19 += v20;
      v18 += v17;
      ++v15;
      v22 += v20;
      v24 += v21;
      v23 += v21;
    }

    while (v15 != v16);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_s4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 4 * v15;
    v21 = v17 + 2 * v15;
    v22 = v18 + 2 * v15;
    v23 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        v25 = 0;
        v26 = v23;
        do
        {
          v27 = (v22 + 2 * v25);
          v28 = (v20 + v24);
          *(v21 + 2 * v25) = -1;
          v29 = *v26 << 8;
          v30 = v26[2] << 8;
          *v28 = v29;
          v28[1] = v30;
          v28[2] = v29;
          v28[3] = v30;
          LOWORD(v28) = v26[3] << 8;
          *v27 = v26[1] << 8;
          v27[1] = v28;
          v25 += 2;
          v26 += 4;
          v24 += 8;
        }

        while (v25 < v8);
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 4 * v14;
    v19 = v16 + 2 * v14;
    v20 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        v22 = 0;
        v23 = v20;
        do
        {
          v24 = (v19 + 2 * v22);
          v25 = (v18 + v21);
          v26 = *v23 << 8;
          v27 = v23[2] << 8;
          *v25 = v26;
          v25[1] = v27;
          v25[2] = v26;
          v25[3] = v27;
          v28 = v23[3] << 8;
          *v24 = v23[1] << 8;
          v24[1] = v28;
          v22 += 2;
          v23 += 4;
          v21 += 8;
        }

        while (v22 < v8);
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v14 = a6[4];
    v15 = a6[5];
    v16 = a7[1] + v13 * v15 + 4 * v14;
    v17 = *a7 + *a8 * v15 + 2 * v14;
    v18 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v19 = 0;
        v20 = 0;
        v21 = v18;
        do
        {
          v22 = (v17 + 2 * v20);
          v23 = (v16 + v19);
          v24 = *v21;
          if (v24 >= 0xF0)
          {
            v24 = 240;
          }

          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = v21[2];
          if (v25 >= 0xF0)
          {
            v25 = 240;
          }

          if (v25 <= 0x10)
          {
            v25 = 16;
          }

          v26 = (613566757 * ((-1048560 - v24 + (v24 << 16)) >> 5)) >> 32;
          v27 = (613566757 * ((-1048560 - v25 + (v25 << 16)) >> 5)) >> 32;
          *v23 = v26;
          v23[1] = v27;
          v23[2] = v26;
          v23[3] = v27;
          v28 = v21[1];
          if (v28 >= 0xEB)
          {
            v28 = 235;
          }

          if (v28 <= 0x10)
          {
            v28 = 16;
          }

          v29 = v21[3];
          if (v29 >= 0xEB)
          {
            v29 = 235;
          }

          if (v29 <= 0x10)
          {
            v29 = 16;
          }

          *v22 = (-1048560 - v28 + (v28 << 16)) / 0xDB;
          v22[1] = (-1048560 - v29 + (v29 << 16)) / 0xDB;
          v20 += 2;
          v21 += 4;
          v19 += 8;
        }

        while (v20 < v8);
      }

      v18 += v11;
      v17 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + 2 * v10;
    v22 = v19 + 2 * v10;
    v23 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v24 = 0;
        v25 = v23;
        do
        {
          v26 = (v22 + 2 * v24);
          v27 = (v16 + 2 * v24);
          *(v21 + 2 * v24) = -1;
          v28 = v25[2] << 8;
          *v27 = *v25 << 8;
          v27[1] = v28;
          LOWORD(v27) = v25[3] << 8;
          *v26 = v25[1] << 8;
          v26[1] = v27;
          v24 += 2;
          v25 += 4;
        }

        while (v24 < v11);
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + 2 * v10;
    v19 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = v19;
        do
        {
          v22 = (v18 + 2 * v20);
          v23 = (v16 + 2 * v20);
          v24 = v21[2] << 8;
          *v23 = *v21 << 8;
          v23[1] = v24;
          v25 = v21[3] << 8;
          *v22 = v21[1] << 8;
          v22[1] = v25;
          v20 += 2;
          v21 += 4;
        }

        while (v20 < v11);
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = a7[1] + v15 * v16 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = *a7 + *a8 * v16 + 2 * v10;
    v19 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = v19;
        do
        {
          v22 = (v18 + 2 * v20);
          v23 = (v17 + 2 * v20);
          v24 = *v21;
          if (v24 >= 0xF0)
          {
            v24 = 240;
          }

          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = v21[2];
          if (v25 >= 0xF0)
          {
            v25 = 240;
          }

          if (v25 <= 0x10)
          {
            v25 = 16;
          }

          *v23 = (613566757 * ((-1048560 - v24 + (v24 << 16)) >> 5)) >> 32;
          v23[1] = (613566757 * ((-1048560 - v25 + (v25 << 16)) >> 5)) >> 32;
          v26 = v21[1];
          if (v26 >= 0xEB)
          {
            v26 = 235;
          }

          if (v26 <= 0x10)
          {
            v26 = 16;
          }

          v27 = v21[3];
          if (v27 >= 0xEB)
          {
            v27 = 235;
          }

          if (v27 <= 0x10)
          {
            v27 = 16;
          }

          *v22 = (-1048560 - v26 + (v26 << 16)) / 0xDB;
          v22[1] = (-1048560 - v27 + (v27 << 16)) / 0xDB;
          v20 += 2;
          v21 += 4;
        }

        while (v20 < v11);
      }

      v19 += v13;
      v18 += v14;
      v17 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_CopyAvg_2vuy_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = (v8 & 1) + v8;
  v13 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v14 = *(a6 + 32);
  v15 = (v14 & 1) + v14;
  v16 = (*(a6 + 40) & 1) + *(a6 + 40);
  v17 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v18 = v11 - (v10 + v9);
  if (v18 >= ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15)
  {
    v18 = ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15;
  }

  v19 = v13 - v12;
  if (v13 - v12 >= (v17 - v16))
  {
    v19 = v17 - v16;
  }

  if (v19)
  {
    v20 = 0;
    v21 = *a8;
    v22 = a8[1];
    v23 = a7[1] + ((v22 * v16) >> 1) + 2 * (v15 & 0x3FFFFFFFFFFFFFFFLL);
    v24 = *a4;
    v25 = *a7 + *a8 * v16 + 2 * v15;
    v26 = v9 + v10 + *a3 + v24 + v24 * (v8 + (v8 & 1)) + 2;
    v27 = v9 + *a4 * v12 + v10 + *a3 + 1;
    do
    {
      if (v18)
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        v31 = v23;
        do
        {
          if ((v20 & 1) == 0)
          {
            v32 = v29[1];
            v33 = *v30;
            *v31 = (*(v30 - 2) + *(v29 - 1)) << 7;
            v31[1] = (v33 + v32) << 7;
            v31 += 2;
          }

          v34 = (v25 + 2 * v28);
          v35 = v29[2] << 8;
          *v34 = *v29 << 8;
          v34[1] = v35;
          v28 += 2;
          v30 += 4;
          v29 += 4;
        }

        while (v28 < v18);
      }

      v25 += v21;
      if (v20)
      {
        v36 = 0;
      }

      else
      {
        v36 = v22;
      }

      v23 += v36;
      ++v20;
      v26 += v24;
      v27 += v24;
    }

    while (v20 != v19);
  }

  return 0;
}

uint64_t vt_CopyDec_2vuy_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  if (v9 - ((v8 & 1) + v8) < v15)
  {
    v15 = v9 - ((v8 & 1) + v8);
  }

  v16 = v11 - v10;
  if (v11 - v10 >= (v14 - v13))
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a8;
    v19 = a8[1];
    v20 = a7[1] + ((v19 * v13) >> 1) + 2 * (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v21 = *a4;
    v22 = *a7 + *a8 * v13 + 2 * v12;
    v23 = v8 + *a4 * v10 + (v8 & 1) + *a3 + 3;
    do
    {
      if (v15)
      {
        v24 = 0;
        v25 = v23;
        v26 = v20;
        do
        {
          if ((v17 & 1) == 0)
          {
            v27 = *(v25 - 1) << 8;
            *v26 = *(v25 - 3) << 8;
            v26[1] = v27;
            v26 += 2;
          }

          v28 = (v22 + 2 * v24);
          v29 = *(v25 - 2);
          v30 = *v25;
          v25 += 4;
          *v28 = v29 << 8;
          v28[1] = v30 << 8;
          v24 += 2;
        }

        while (v24 < v15);
      }

      v22 += v18;
      if (v17)
      {
        v31 = 0;
      }

      else
      {
        v31 = v19;
      }

      v20 += v31;
      ++v17;
      v23 += v21;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_CopyAvg_2vuy_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = v8 & 1;
  v11 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v12 = (v9 & 1) + v9;
  v13 = (*(a2 + 24) + v9) & 0xFFFFFFFE;
  v14 = *(a6 + 32);
  v15 = (v14 & 1) + v14;
  v16 = (*(a6 + 40) & 1) + *(a6 + 40);
  v17 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v18 = v11 - (v10 + v8);
  if (v18 >= ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15)
  {
    v18 = ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15;
  }

  v19 = v13 - v12;
  if (v13 - v12 >= (v17 - v16))
  {
    v19 = v17 - v16;
  }

  if (v19)
  {
    v20 = 0;
    v21 = *a4;
    v22 = *a8;
    v23 = a8[1];
    v24 = a7[1] + ((v23 * v16) >> 1) + 2 * (v15 & 0x3FFFFFFFFFFFFFFFLL);
    v25 = *a7 + *a8 * v16 + 2 * v15;
    v26 = v8 + v10 + *a3 + v21 + v21 * (v9 + (v9 & 1)) + 2;
    v27 = v8 + *a4 * v12 + v10 + *a3 + 1;
    do
    {
      if (v18)
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        v31 = v24;
        do
        {
          if ((v20 & 1) == 0)
          {
            v32 = *(v29 - 1);
            v33 = *(v30 - 2);
            if (v32 >= 0xF0)
            {
              v32 = 240;
            }

            if (v32 <= 0x10)
            {
              v32 = 16;
            }

            if (v33 >= 0xF0)
            {
              v33 = 240;
            }

            if (v33 <= 0x10)
            {
              v33 = 16;
            }

            v34 = v29[1];
            v35 = *v30;
            if (v34 >= 0xF0)
            {
              v34 = 240;
            }

            if (v34 <= 0x10)
            {
              v34 = 16;
            }

            if (v35 >= 0xF0)
            {
              v35 = 240;
            }

            if (v35 <= 0x10)
            {
              v35 = 16;
            }

            *v31 = (((613566757 * ((-1048560 - v32 + (v32 << 16)) >> 5)) >> 32) + ((613566757 * ((-1048560 - v33 + (v33 << 16)) >> 5)) >> 32) + 1) >> 1;
            v31[1] = (((613566757 * ((-1048560 - v34 + (v34 << 16)) >> 5)) >> 32) + ((613566757 * ((-1048560 - v35 + (v35 << 16)) >> 5)) >> 32) + 1) >> 1;
            v31 += 2;
          }

          v36 = (v25 + 2 * v28);
          v37 = *v29;
          if (v37 >= 0xEB)
          {
            v37 = 235;
          }

          if (v37 <= 0x10)
          {
            v37 = 16;
          }

          v38 = v29[2];
          if (v38 >= 0xEB)
          {
            v38 = 235;
          }

          if (v38 <= 0x10)
          {
            v38 = 16;
          }

          *v36 = (-1048560 - v37 + (v37 << 16)) / 0xDB;
          v36[1] = (-1048560 - v38 + (v38 << 16)) / 0xDB;
          v28 += 2;
          v30 += 4;
          v29 += 4;
        }

        while (v28 < v18);
      }

      v25 += v22;
      if (v20)
      {
        v39 = 0;
      }

      else
      {
        v39 = v23;
      }

      v24 += v39;
      ++v20;
      v26 += v21;
      v27 += v21;
    }

    while (v20 != v19);
  }

  return 0;
}

uint64_t vt_CopyDec_2vuy_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  if (v9 - ((v8 & 1) + v8) < v15)
  {
    v15 = v9 - ((v8 & 1) + v8);
  }

  v16 = v11 - v10;
  if (v11 - v10 >= (v14 - v13))
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a4;
    v19 = *a8;
    v20 = a8[1];
    v21 = a7[1] + ((v20 * v13) >> 1) + 2 * (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = *a7 + *a8 * v13 + 2 * v12;
    v23 = v8 + *a4 * v10 + (v8 & 1) + *a3 + 3;
    do
    {
      if (v15)
      {
        v24 = 0;
        v25 = v23;
        v26 = v21;
        do
        {
          if ((v17 & 1) == 0)
          {
            v27 = *(v25 - 3);
            if (v27 >= 0xF0)
            {
              v27 = 240;
            }

            if (v27 <= 0x10)
            {
              v27 = 16;
            }

            v28 = *(v25 - 1);
            if (v28 >= 0xF0)
            {
              v28 = 240;
            }

            if (v28 <= 0x10)
            {
              v28 = 16;
            }

            *v26 = (613566757 * ((-1048560 - v27 + (v27 << 16)) >> 5)) >> 32;
            v26[1] = (613566757 * ((-1048560 - v28 + (v28 << 16)) >> 5)) >> 32;
            v26 += 2;
          }

          v29 = (v22 + 2 * v24);
          v30 = *(v25 - 2);
          if (v30 >= 0xEB)
          {
            v30 = 235;
          }

          if (v30 <= 0x10)
          {
            v30 = 16;
          }

          v32 = *v25;
          v25 += 4;
          v31 = v32;
          if (v32 >= 0xEB)
          {
            v31 = 235;
          }

          if (v31 <= 0x10)
          {
            v31 = 16;
          }

          *v29 = (-1048560 - v30 + (v30 << 16)) / 0xDB;
          v29[1] = (-1048560 - v31 + (v31 << 16)) / 0xDB;
          v24 += 2;
        }

        while (v24 < v15);
      }

      v22 += v19;
      if (v17)
      {
        v33 = 0;
      }

      else
      {
        v33 = v20;
      }

      v21 += v33;
      ++v17;
      v23 += v18;
    }

    while (v17 != v16);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_t4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v12 = a8[1];
    v11 = a8[2];
    v13 = *a8;
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v12 * v14;
    v17 = a7[2] + v11 * v14;
    v18 = *a7 + *a8 * v14;
    v19 = *a4;
    v20 = v16 + 4 * v15;
    v21 = v17 + 2 * v15;
    v22 = v18 + 2 * v15;
    v23 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v24 = 0;
        v25 = 0;
        v26 = v23;
        do
        {
          v27 = (v22 + 2 * v25);
          v28 = (v20 + v24);
          *(v21 + 2 * v25) = -1;
          v29 = *v26 << 8;
          v30 = v26[2] << 8;
          *v28 = v29;
          v28[1] = v30;
          v28[2] = v29;
          v28[3] = v30;
          LOWORD(v28) = v26[3] << 8;
          *v27 = v26[1] << 8;
          v27[1] = v28;
          v25 += 2;
          v26 += 4;
          v24 += 8;
        }

        while (v25 < v8);
      }

      v23 += v19;
      v22 += v13;
      v20 += v12;
      v21 += v11;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a8;
    v12 = a8[1];
    v14 = a6[4];
    v13 = a6[5];
    v15 = a7[1] + v12 * v13;
    v16 = *a7 + *a8 * v13;
    v17 = *a4;
    v18 = v15 + 4 * v14;
    v19 = v16 + 2 * v14;
    v20 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v21 = 0;
        v22 = 0;
        v23 = v20;
        do
        {
          v24 = (v19 + 2 * v22);
          v25 = (v18 + v21);
          v26 = *v23 << 8;
          v27 = v23[2] << 8;
          *v25 = v26;
          v25[1] = v27;
          v25[2] = v26;
          v25[3] = v27;
          v28 = v23[3] << 8;
          *v24 = v23[1] << 8;
          v24[1] = v28;
          v22 += 2;
          v23 += 4;
          v21 += 8;
        }

        while (v22 < v8);
      }

      v20 += v17;
      v19 += v11;
      v18 += v12;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  if (v8 >= a6[2])
  {
    v8 = a6[2];
  }

  if (a2[3] >= a6[3])
  {
    v9 = a6[3];
  }

  else
  {
    v9 = a2[3];
  }

  if (v9)
  {
    v10 = 0;
    v11 = *a4;
    v12 = *a8;
    v13 = a8[1];
    v15 = a6[4];
    v14 = a6[5];
    v16 = a7[1] + v13 * v14 + 4 * v15;
    v17 = *a7 + *a8 * v14 + 2 * v15;
    v18 = *a3 + *a4 * a2[5] + (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v8)
      {
        v19 = 0;
        v20 = 0;
        v21 = v18;
        do
        {
          v22 = (v17 + 2 * v20);
          v23 = (v16 + v19);
          v24 = *v21;
          if (v24 >= 0xF0)
          {
            v24 = 240;
          }

          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = v21[2];
          if (v25 >= 0xF0)
          {
            v25 = 240;
          }

          if (v25 <= 0x10)
          {
            v25 = 16;
          }

          v26 = 16 * ((613566757 * ((4095 * v24 - 65520) >> 5)) >> 32);
          *v23 = v26;
          v27 = 16 * ((613566757 * ((4095 * v25 - 65520) >> 5)) >> 32);
          v23[1] = v27;
          v23[2] = v26;
          v23[3] = v27;
          v28 = v21[1];
          if (v28 >= 0xEB)
          {
            v28 = 235;
          }

          if (v28 <= 0x10)
          {
            v28 = 16;
          }

          v29 = v21[3];
          if (v29 >= 0xEB)
          {
            v29 = 235;
          }

          if (v29 <= 0x10)
          {
            v29 = 16;
          }

          *v22 = ((((725633745 * (4095 * v28 - 65520)) >> 32) + ((4095 * v28 - 65520 - ((725633745 * (4095 * v28 - 65520)) >> 32)) >> 1)) >> 3) & 0xFFF0;
          v22[1] = ((((725633745 * (4095 * v29 - 65520)) >> 32) + ((4095 * v29 - 65520 - ((725633745 * (4095 * v29 - 65520)) >> 32)) >> 1)) >> 3) & 0xFFF0;
          v20 += 2;
          v21 += 4;
          v19 += 8;
        }

        while (v20 < v8);
      }

      v18 += v11;
      v17 += v12;
      v16 += v13;
      ++v10;
    }

    while (v10 != v9);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a8[2];
    v18 = a7[2] + v17 * v15;
    v19 = *a7 + *a8 * v15;
    v20 = *a4;
    v21 = v18 + 2 * v10;
    v22 = v19 + 2 * v10;
    v23 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v24 = 0;
        v25 = v23;
        do
        {
          v26 = (v22 + 2 * v24);
          v27 = (v16 + 2 * v24);
          *(v21 + 2 * v24) = -1;
          v28 = v25[2] << 8;
          *v27 = *v25 << 8;
          v27[1] = v28;
          LOWORD(v27) = v25[3] << 8;
          *v26 = v25[1] << 8;
          v26[1] = v27;
          v24 += 2;
          v25 += 4;
        }

        while (v24 < v11);
      }

      v23 += v20;
      v22 += v13;
      v16 += v14;
      v21 += v17;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a8;
    v14 = a8[1];
    v15 = *(a6 + 40);
    v16 = a7[1] + v14 * v15 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v17 = *a4;
    v18 = *a7 + *a8 * v15 + 2 * v10;
    v19 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = v19;
        do
        {
          v22 = (v18 + 2 * v20);
          v23 = (v16 + 2 * v20);
          v24 = v21[2] << 8;
          *v23 = *v21 << 8;
          v23[1] = v24;
          v25 = v21[3] << 8;
          *v22 = v21[1] << 8;
          v22[1] = v25;
          v20 += 2;
          v21 += 4;
        }

        while (v20 < v11);
      }

      v19 += v17;
      v18 += v13;
      v16 += v14;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = (*(a2 + 32) & 1) + *(a2 + 32);
  v10 = (*(a6 + 32) & 1) + *(a6 + 32);
  v11 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v9;
  if (v11 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10)
  {
    v11 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v10;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v12 = 0;
    v13 = *a4;
    v14 = *a8;
    v15 = a8[1];
    v16 = *(a6 + 40);
    v17 = a7[1] + v15 * v16 + 2 * (v10 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = *a7 + *a8 * v16 + 2 * v10;
    v19 = (*a3 + *a4 * *(a2 + 40) + v9);
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = v19;
        do
        {
          v22 = (v18 + 2 * v20);
          v23 = (v17 + 2 * v20);
          v24 = *v21;
          if (v24 >= 0xF0)
          {
            v24 = 240;
          }

          if (v24 <= 0x10)
          {
            v24 = 16;
          }

          v25 = v21[2];
          if (v25 >= 0xF0)
          {
            v25 = 240;
          }

          if (v25 <= 0x10)
          {
            v25 = 16;
          }

          *v23 = 16 * ((613566757 * ((4095 * v24 - 65520) >> 5)) >> 32);
          v23[1] = 16 * ((613566757 * ((4095 * v25 - 65520) >> 5)) >> 32);
          v26 = v21[1];
          if (v26 >= 0xEB)
          {
            v26 = 235;
          }

          if (v26 <= 0x10)
          {
            v26 = 16;
          }

          v27 = v21[3];
          if (v27 >= 0xEB)
          {
            v27 = 235;
          }

          if (v27 <= 0x10)
          {
            v27 = 16;
          }

          *v22 = ((((725633745 * (4095 * v26 - 65520)) >> 32) + ((4095 * v26 - 65520 - ((725633745 * (4095 * v26 - 65520)) >> 32)) >> 1)) >> 3) & 0xFFF0;
          v22[1] = ((((725633745 * (4095 * v27 - 65520)) >> 32) + ((4095 * v27 - 65520 - ((725633745 * (4095 * v27 - 65520)) >> 32)) >> 1)) >> 3) & 0xFFF0;
          v20 += 2;
          v21 += 4;
        }

        while (v20 < v11);
      }

      v19 += v13;
      v18 += v14;
      v17 += v15;
      ++v12;
    }

    while (v12 != v8);
  }

  return 0;
}

uint64_t vt_CopyAvg_2vuy_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = (v8 & 1) + v8;
  v13 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v14 = *(a6 + 32);
  v15 = (v14 & 1) + v14;
  v16 = (*(a6 + 40) & 1) + *(a6 + 40);
  v17 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v18 = v11 - (v10 + v9);
  if (v18 >= ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15)
  {
    v18 = ((*(a6 + 16) + v14) & 0xFFFFFFFE) - v15;
  }

  v19 = v13 - v12;
  if (v13 - v12 >= (v17 - v16))
  {
    v19 = v17 - v16;
  }

  if (v19)
  {
    v20 = 0;
    v21 = *a8;
    v22 = a8[1];
    v23 = a7[1] + ((v22 * v16) >> 1) + 2 * (v15 & 0x3FFFFFFFFFFFFFFFLL);
    v24 = *a4;
    v25 = *a7 + *a8 * v16 + 2 * v15;
    v26 = v9 + v10 + *a3 + v24 + v24 * (v8 + (v8 & 1)) + 2;
    v27 = v9 + *a4 * v12 + v10 + *a3 + 1;
    do
    {
      if (v18)
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        v31 = v23;
        do
        {
          if ((v20 & 1) == 0)
          {
            v32 = v29[1];
            v33 = *v30;
            *v31 = (*(v30 - 2) + *(v29 - 1)) << 7;
            v31[1] = (v33 + v32) << 7;
            v31 += 2;
          }

          v34 = (v25 + 2 * v28);
          v35 = v29[2] << 8;
          *v34 = *v29 << 8;
          v34[1] = v35;
          v28 += 2;
          v30 += 4;
          v29 += 4;
        }

        while (v28 < v18);
      }

      v25 += v21;
      if (v20)
      {
        v36 = 0;
      }

      else
      {
        v36 = v22;
      }

      v23 += v36;
      ++v20;
      v26 += v24;
      v27 += v24;
    }

    while (v20 != v19);
  }

  return 0;
}

uint64_t vt_CopyDec_2vuy_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v10 = (*(a2 + 40) & 1) + *(a2 + 40);
  v11 = (*(a2 + 24) + *(a2 + 40)) & 0xFFFFFFFE;
  v12 = (*(a6 + 32) & 1) + *(a6 + 32);
  v13 = (*(a6 + 40) & 1) + *(a6 + 40);
  v14 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v15 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v12;
  if (v9 - ((v8 & 1) + v8) < v15)
  {
    v15 = v9 - ((v8 & 1) + v8);
  }

  v16 = v11 - v10;
  if (v11 - v10 >= (v14 - v13))
  {
    v16 = v14 - v13;
  }

  if (v16)
  {
    v17 = 0;
    v18 = *a8;
    v19 = a8[1];
    v20 = a7[1] + ((v19 * v13) >> 1) + 2 * (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v21 = *a4;
    v22 = *a7 + *a8 * v13 + 2 * v12;
    v23 = v8 + *a4 * v10 + (v8 & 1) + *a3 + 3;
    do
    {
      if (v15)
      {
        v24 = 0;
        v25 = v23;
        v26 = v20;
        do
        {
          if ((v17 & 1) == 0)
          {
            v27 = *(v25 - 1) << 8;
            *v26 = *(v25 - 3) << 8;
            v26[1] = v27;
            v26 += 2;
          }

          v28 = (v22 + 2 * v24);
          v29 = *(v25 - 2);
          v30 = *v25;
          v25 += 4;
          *v28 = v29 << 8;
          v28[1] = v30 << 8;
          v24 += 2;
        }

        while (v24 < v15);
      }

      v22 += v18;
      if (v17)
      {
        v31 = 0;
      }

      else
      {
        v31 = v19;
      }

      v20 += v31;
      ++v17;
      v23 += v21;
    }

    while (v17 != v16);
  }

  return 0;
}