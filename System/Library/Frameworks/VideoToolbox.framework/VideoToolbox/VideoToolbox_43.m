uint64_t vtConfigureScalerCommon(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t (**a6)(__CVBuffer *a1, int8x16_t *a2, __CVBuffer *a3, int8x16_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10))
{
  ScalingGroup = getScalingGroup(a2);
  if (getScalingGroup(a1) == ScalingGroup)
  {
    v13 = vt_Scale_L008;
    switch(ScalingGroup)
    {
      case 1:
        goto LABEL_28;
      case 2:
        v14 = vt_Scale_L016;
        goto LABEL_27;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        v14 = vt_Scale_8ARGB_Together;
        goto LABEL_27;
      case 9:
      case 11:
        v14 = vt_Scale_8_SeparatePlanes;
        goto LABEL_27;
      case 10:
      case 12:
        v14 = vt_Scale_8_Y_and_UVPlanes;
        goto LABEL_27;
      case 13:
      case 15:
      case 17:
      case 23:
      case 24:
        v14 = vt_Scale_16_SeparatePlanes;
        goto LABEL_27;
      case 14:
      case 16:
      case 18:
        v14 = vt_Scale_16_Y_and_UVPlanes;
        goto LABEL_27;
      case 19:
      case 20:
      case 21:
      case 22:
        v14 = vt_Scale_101010_Together;
        goto LABEL_27;
      case 25:
      case 26:
        v14 = vt_Scale_16ARGB_Together;
        goto LABEL_27;
      case 27:
        v14 = vt_Scale_L00h;
        goto LABEL_27;
      case 28:
        v14 = vt_Scale_L00f;
        goto LABEL_27;
      case 29:
        v14 = vt_Scale_HalfFloat_Y_and_UVPlanes;
        goto LABEL_27;
      case 30:
        v14 = vt_Scale_HalfFloatRGBA_Together;
        goto LABEL_27;
      case 31:
        v14 = vt_Scale_floatARGB_Together;
LABEL_27:
        v13 = v14;
LABEL_28:
        vtAllocatePlanarBuffersCommon(a1, a3, a5);
        vtAllocatePlanarBuffersCommon(a2, a4, a5 + 128);
        result = 0;
        if (!a6)
        {
          return result;
        }

        goto LABEL_13;
      default:
        break;
    }
  }

  for (i = 0; i != 128; i += 32)
  {
    v16 = *(a5 + i);
    if (v16)
    {
      free(v16);
      *(a5 + i) = 0;
    }
  }

  v17 = 0;
  v18 = a5 + 128;
  do
  {
    v19 = *(v18 + v17);
    if (v19)
    {
      free(v19);
      *(v18 + v17) = 0;
    }

    v17 += 32;
  }

  while (v17 != 128);
  v13 = 0;
  result = 4294954391;
  if (a6)
  {
LABEL_13:
    *a6 = v13;
  }

  return result;
}

uint64_t vtCreatePixelBuffer(OSType pixelFormatType, size_t width, size_t height, int a4, CVPixelBufferRef *pixelBufferOut)
{
  if (a4 && !VTAvoidIOSurfaceBackings())
  {

    return FigCreateIOSurfaceBackedCVPixelBuffer(width, height, pixelFormatType, pixelBufferOut);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];

    return CVPixelBufferCreate(v9, width, height, pixelFormatType, 0, pixelBufferOut);
  }
}

void vtCreateSessionPropertiesIncludingScaling(uint64_t a1, int a2, __CFDictionary **a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13[0] = @"EnableHardwareAcceleratedTransfer";
  v13[1] = @"EnableHighSpeedTransfer";
  v13[2] = @"DisableDither";
  v13[3] = @"EnableHistogram";
  v13[4] = @"UseOptimalMSRCoefficients";
  v13[5] = @"HistogramRectangle";
  v13[6] = @"EnableGPUAcceleratedTransfer";
  v13[7] = @"SetGPUPriorityLow";
  if (a2)
  {
    *&v14 = @"DestinationCleanAperture";
    *(&v14 + 1) = @"DestinationPixelAspectRatio";
    *&v15 = @"ScalingMode";
    *(&v15 + 1) = @"DownsamplingMode";
    *&v16 = @"SourceCropRectangle";
    *(&v16 + 1) = @"DestinationRectangle";
    v8 = 14;
  }

  else
  {
    v8 = 8;
  }

  v9 = 0;
  v13[v8 | 1] = @"AllowPixelTransferChain";
  v13[v8] = @"Label";
  v13[v8 + 2] = @"AllowPixelTransferGraph";
  v10 = 8 * v8 + 24;
  do
  {
    value = 0;
    v11 = v13[v9 / 8];
    _VTPixelTransferSessionCopyProperty(a1, v11, v6, &value);
    if (value)
    {
      CFDictionarySetValue(Mutable, v11, value);
      CFRelease(value);
    }

    v9 += 8;
  }

  while (v10 != v9);
  *a3 = Mutable;
}

uint64_t vtCreateIntermediatePixelBuffer(__CVBuffer *a1, OSType pixelFormatType, void *a3, char a4, CVPixelBufferRef *pixelBufferOut)
{
  if (a1)
  {
    if (pixelBufferOut)
    {
      vtCreatePixelBuffer(pixelFormatType, *a3, a3[1], a4 & 4, pixelBufferOut);
      if (*pixelBufferOut)
      {
        CVBufferPropagateAttachments(a1, *pixelBufferOut);
      }
    }

    return 0;
  }

  else
  {
    vtCreateIntermediatePixelBuffer_cold_1(&v8);
    return v8;
  }
}

uint64_t vtPixelTransferSession_chooseColorCorrectionFormat(uint64_t result, _DWORD *a2, char a3, int a4)
{
  v7 = result;
  v8 = 0;
  *a2 = 0;
  while (*&aAfgrahgrr46lar[v8] != result)
  {
    v8 += 4;
    if (v8 == 20)
    {
      goto LABEL_6;
    }
  }

  *a2 = result;
  if (result)
  {
    return result;
  }

LABEL_6:
  v9 = 0;
  while (1)
  {
    v10 = *&aAfgrahgrr46lar[v9];
    if (a4)
    {
      v11 = v7;
    }

    else
    {
      v11 = *&aAfgrahgrr46lar[v9];
      v10 = v7;
    }

    result = VTPixelTransferSessionCanTransfer(v11, v10, a3);
    if (result)
    {
      break;
    }

    v9 += 4;
    if (v9 == 20)
    {
      return result;
    }
  }

  *a2 = *&aAfgrahgrr46lar[v9];
  return result;
}

uint64_t vt_Copy_2vuy_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_yuvs(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = 0;
        do
        {
          *(v9 + 4 * v11) = __rev16(*(v10 + 4 * v11));
          ++v11;
        }

        while (a1 >> 1 != v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_2vuy_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_2vuy_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_2vuy_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_yuvs_2vuy(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1 >= 2)
      {
        v11 = 0;
        do
        {
          *(v9 + 4 * v11) = __rev16(*(v10 + 4 * v11));
          ++v11;
        }

        while (a1 >> 1 != v11);
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_yuvs_y420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_yuvs_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_yuvs_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_yuvs_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_yuvs_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_yuvs_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_yuvs_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_yuvs_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_yuvs_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_yuvf_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_yuvf_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_yuvf_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v2a8_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v2a8_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v2a8_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422v_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422v_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422v_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_422f_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_422f_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_422f_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v4a8_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v4a8_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v4a8_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v4a8_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v4a8_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v4a8_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v4a8_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v4a8_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v4a8_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v4a8_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v4a8_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v4a8_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v4a8_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v4a8_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v4a8_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444v_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444v_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444v_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_444f_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_444f_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_444f_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_s2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_sv22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_sf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_sv20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_sf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_t2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_tv22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_tf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_tv20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_tf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_x2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_x422(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_xf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_x420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_xf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_v2a8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_422v(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_422f(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_420v(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_420f(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_v0a8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_y420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y408_f420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y408_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y408_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_s2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_sv22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_sf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_sv20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_sf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_t2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_tv22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_tf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_tv20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_tf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_x2as(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_x422(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_xf22(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_x420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_xf20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_v2a8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_422v(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_422f(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_v0a8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_420v(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_420f(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_y420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_y416_f420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_y416_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_y416_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v216_f420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v216_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v216_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v210_420v(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v210_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v210_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v210_420f(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v210_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v210_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v210_x420(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v210_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v210_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_v210_xf20(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_v210_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_v210_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_L010_L016(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v6 = 0;
    v7 = *a3;
    v8 = *a5;
    v9 = *a6;
    v10 = *a4;
    do
    {
      if (a1)
      {
        for (i = 0; i != a1; ++i)
        {
          *(v9 + 2 * i) = (67174465 * (0xFFFF * (*(v10 + 2 * i) >> 6))) >> 36;
        }
      }

      v10 += v7;
      v9 += v8;
      ++v6;
    }

    while (v6 != a2);
  }

  return 0;
}

uint64_t vt_Copy_x444_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x444_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x444_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x444_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s4as_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s4as_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s4as_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s4as_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s4as_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv44_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf44_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_s2as_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_s2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_s2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sv22_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sv22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sv22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_sf22_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_sf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_sf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t4as_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t4as_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t4as_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t4as_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t4as_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv44_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf44_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_t2as_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_t2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_t2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tv22_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tv22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tv22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_tf22_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_tf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_tf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x4as_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x4as_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x4as_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x4as_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x4as_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x4as_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x4as_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x4as_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x4as_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x4as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x2as_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x2as_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_x422_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_x422_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_x422_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_v216(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_2vuy(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_s2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_sv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_sf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_sv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_sf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_t2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_tv22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_tf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_tv20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_tf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_x2as(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_x422(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_x422(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_xf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_xf22(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_x420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_xf20(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_v2a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_422v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_422v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_422f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_422f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_v0a8(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_420v(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_420f(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_y420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf44_f420(uint64_t a1, int64x2_t *a2, void *a3, uint64_t *a4, uint64_t a5, int64x2_t *a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf44_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_sv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_sf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_tv20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_tf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_x420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_x420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_xf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_xf20(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_v0a8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_420v(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_420v(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_420f(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_420f(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_y420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_y420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_Copy_xf22_f420(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  if (a1 && *(a1 + 2))
  {
    vt_CopyAvg_xf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    vt_CopyDec_xf22_f420(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t vt_VImage_Setup_L008_L016(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, vImage_Error (**a9)(uint64_t a1, vImagePixelCount *a2, uint64_t *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, size_t *a8), uint64_t a10, void (**a11)(void **a1))
{
  v14 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  *(v14 + 36) = 0;
  *(v14 + 37) = a5;
  *(v14 + 288) = a6;
  *a9 = vt_VImage_Copy_L008_L016;
  *a11 = vt_VImage_Cleanup_L008_L016;
  *a8 = v14;
  return 0;
}

uint64_t vt_VImage_Setup_L016_L008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void *a8, vImage_Error (**a9)(uint64_t a1, vImagePixelCount *a2, uint64_t *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, size_t *a8), uint64_t a10, void (**a11)(void **a1))
{
  v14 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  v14[8] = 0u;
  v14[9] = 0u;
  v14[10] = 0u;
  v14[11] = 0u;
  v14[12] = 0u;
  v14[13] = 0u;
  v14[14] = 0u;
  v14[15] = 0u;
  v14[16] = 0u;
  v14[17] = 0u;
  *(v14 + 36) = 0;
  *(v14 + 37) = a5;
  *(v14 + 288) = a6;
  *a9 = vt_VImage_Copy_L016_L008;
  *a11 = vt_VImage_Cleanup_L016_L008;
  *a8 = v14;
  return 0;
}

vImage_Error vt_VImage_Copy_L008_L016(uint64_t a1, vImagePixelCount *a2, uint64_t *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, size_t *a8)
{
  v8 = a2[3];
  v9 = *(a1 + 296);
  v10 = *a3;
  v11 = *a4;
  src.width = a2[2];
  src.rowBytes = v11;
  v12 = *a7;
  v13 = *a8;
  v15.width = src.width;
  v15.rowBytes = v13;
  src.data = (v10 + a2[4] + a2[5] * v11);
  src.height = v8;
  v15.data = (v12 + 2 * *(a6 + 32) + *(a6 + 40) * v13);
  v15.height = v8;
  return vImageConvert_Planar8To16U(&src, &v15, v9);
}

void vt_VImage_Cleanup_L008_L016(void **a1)
{
  free(a1[32]);

  free(a1);
}

vImage_Error vt_VImage_Copy_L016_L008(uint64_t a1, vImagePixelCount *a2, uint64_t *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, size_t *a8)
{
  v8 = a2[3];
  v9 = *(a1 + 296);
  v10 = *a3;
  v11 = *a4;
  src.width = a2[2];
  src.rowBytes = v11;
  v12 = *a7;
  v13 = *a8;
  v15.width = src.width;
  v15.rowBytes = v13;
  src.data = (v10 + 2 * a2[4] + a2[5] * v11);
  src.height = v8;
  v15.data = (v12 + *(a6 + 32) + *(a6 + 40) * v13);
  v15.height = v8;
  return vImageConvert_16UToPlanar8(&src, &v15, v9);
}

void vt_VImage_Cleanup_L016_L008(void **a1)
{
  free(a1[32]);

  free(a1);
}

uint64_t OUTLINED_FUNCTION_4(__CVBuffer *a1)
{

  return CVPixelBufferLockBaseAddress(a1, 1uLL);
}

size_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return vtScale(&a13, &a9, (v15 + 256), v16 | 8u, v13, v14);
}

size_t OUTLINED_FUNCTION_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, __int128 a10)
{

  return CVPixelBufferGetBytesPerRowOfPlane(v10, 0);
}

size_t OUTLINED_FUNCTION_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return CVPixelBufferGetBytesPerRowOfPlane(v14, 0);
}

void OUTLINED_FUNCTION_16(uint64_t a1@<X8>)
{
  v1[88] = a1;
  v1[89] = STACK[0x228];
  v1[90] = STACK[0x220];
  STACK[0x228] = 0;
  STACK[0x220] = 0;
}

vImage_Error OUTLINED_FUNCTION_18(int a1, int a2, int a3, int a4, int a5, int a6, vImage_Flags a7, int a8, uint64_t a9, int a10, uint8_t permuteMap, vImage_Buffer *srcCbCr, vImage_Buffer *dest, uint64_t srcCbCr_16, uint64_t srcCbCr_24, uint64_t desta)
{

  return vImageConvert_420Yp8_CbCr8ToARGB8888((v17 - 32), &srcCbCr, &desta, v16, &permuteMap, 0xFFu, a7);
}

void *OUTLINED_FUNCTION_25()
{

  return CVPixelBufferGetBaseAddressOfPlane(v0, 0);
}

uint64_t OUTLINED_FUNCTION_28(__CVBuffer *a1)
{

  return CVPixelBufferLockBaseAddress(a1, 1uLL);
}

void OUTLINED_FUNCTION_30()
{
  LOBYTE(STACK[0x247]) = *(v0 + 184);
  v1 = *(v0 + 168);
  STACK[0x238] = *(v0 + 176);
  STACK[0x230] = v1;
}

void OUTLINED_FUNCTION_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 + 1138);
  v25 = *(v22 + 745);

  VTPixelTransferChainAppendScalerNode(a1, a2, v22 + 288, 0, SHIDWORD(a12), v24, v25, a8, 0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_33(__n128 a1, __n128 a2)
{
  *(v4 - 160) = v2;
  *(v4 - 152) = v3;
  *(v4 - 144) = a2;
  *(v4 - 128) = a1;

  return vtPixelTransferChainAppendDynamicNode();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return FigCFDictionarySetValue();
}

size_t OUTLINED_FUNCTION_43(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{

  return scaleOrSetAlpha8(v13, v16, v12, v14, v15, v19, v18, a12, v17);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return CMBaseObjectGetDerivedStorage();
}

CFTypeRef OUTLINED_FUNCTION_45(uint64_t a1, const __CFString *a2)
{

  return CVBufferCopyAttachment(v2, a2, 0);
}

double OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19)
{
  a18 = 0u;
  a19 = 0u;
  a17 = 0u;

  *&result = VTConvertFloatRectToIntRect(v19, &a17).n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_56(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, size_t a11)
{

  return memcpy(v13, (v14 + (v11 - 2) * v12 + a10), a11);
}

CFTypeRef OUTLINED_FUNCTION_57()
{

  return CVBufferCopyAttachment(v1, v0, 0);
}

const void *OUTLINED_FUNCTION_58()
{
  v3 = *(v0 + 1096);

  return CFDictionaryGetValue(v3, v1);
}

CFTypeRef OUTLINED_FUNCTION_59(uint64_t a1, const __CFString *a2)
{

  return CVBufferCopyAttachment(v2, a2, 0);
}

size_t OUTLINED_FUNCTION_66(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void *, void *, uint64_t))
{

  return vtScale(a1, a1 + 16, (v5 + 256), v6 | 8u, a5, v7);
}

uint64_t vtInitializeDeviceGroupsAndCache()
{
  _MergedGlobals_3 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  qword_1ED6D3F90 = result;
  return result;
}

uint64_t translateNSErrorToVTFrameProcessorError(void *a1)
{
  if (!a1 || [a1 domain] == @"VTFrameProcessorErrorDomain")
  {
    return a1;
  }

  v2 = -19730;
  if (![objc_msgSend(a1 "domain")])
  {
    v3 = [a1 code];
    if ((v3 - 2) < 0xB)
    {
      v2 = -19729 - v3;
    }
  }

  v4 = MEMORY[0x1E696ABC0];
  v5 = [a1 userInfo];

  return [v4 errorWithDomain:@"VTFrameProcessorErrorDomain" code:v2 userInfo:v5];
}

uint64_t loadVEFrameworkOnce()
{
  if (loadVEFrameworkOnce_veLibraryLoaderOnce != -1)
  {
    loadVEFrameworkOnce_cold_1();
  }

  return loadVEFrameworkOnce_frameworkLoaded;
}

void *__loadVEFrameworkOnce_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VideoEffect.framework/VideoEffect", 9);
  if (result)
  {
    loadVEFrameworkOnce_frameworkLoaded = 1;
  }

  return result;
}

uint64_t loadVCPFrameworkOnce()
{
  if (loadVCPFrameworkOnce_vcpLibraryLoaderOnce != -1)
  {
    loadVCPFrameworkOnce_cold_1();
  }

  return loadVCPFrameworkOnce_vcpFrameworkLoaded;
}

void *__loadVCPFrameworkOnce_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 9);
  if (result)
  {
    loadVCPFrameworkOnce_vcpFrameworkLoaded = 1;
  }

  return result;
}

void sub_18FB7242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t vt_Copy_x422_v210_internal(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v48 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v47 = *(a1 + 148);
  v9 = *(a1 + 40);
  v44 = *(a1 + 32);
  v45 = *(a1 + 104);
  result = FigAtomicIncrement32();
  v15 = (result - 1);
  if (v2 > v15)
  {
    v16 = v6 + v8 * v5;
    v17 = v7;
    v18 = (2 * (v44 + 1 + ((v44 + 1) >> 63))) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = v45 + v9 * v48 + v18;
    v20 = v4 + v3 * v9 + v18;
    v21 = v16 + 24 * (((v7 + 1 + ((v7 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) / 6);
    v22 = v17 + 2;
    v46 = v17 - 1;
    v23 = 0uLL;
    do
    {
      v24 = (v19 + v15 * v48);
      v25 = (v20 + v15 * v3);
      v26 = v21 + v15 * v5;
      if (v22 >= 3)
      {
        if (v46 >= 2)
        {
          v32 = *(v26 + 8);
          v27 = 2;
        }

        else
        {
          v28 = *v24 >> 6;
          v29 = *(v24 + 1) >> 6;
          v30 = *v25;
          v31 = *(v25 + 1) >> 6;
          v24 += 2;
          v25 += 2;
          *(v26 + 4) = (16 * v30) & 0xFFC00 | *(v26 + 4) & 0x3F | ((v28 & 0x3FF) << 20);
          v32 = v31 & 0xFFF003FF | ((v29 & 0x3FF) << 10);
          v27 = 4;
        }

        v33 = *v24 >> 6;
        v34 = *(v24 + 1) >> 6;
        v35 = *v25;
        v36 = *(v25 + 1) >> 6;
        v24 += 2;
        v25 += 2;
        *(v26 + 8) = (v35 << 14) & 0x3FF00000 | v32 & 0xFFFFF;
        *(v26 + 12) = v33 & 0xC00003FF | ((v36 & 0x3FF) << 10) & 0xC00FFFFF | ((v34 & 0x3FF) << 20);
        v26 += 16;
      }

      else
      {
        v27 = 0;
      }

      if (v47)
      {
        while (v1 - 23 > v27)
        {
          v49 = vld3q_s16(v24);
          v24 += 24;
          *v11.i8 = vmovn_s32(v49.val[0]);
          v37 = vzip1q_s16(vuzp2q_s16(v49.val[0], v49.val[0]), v23);
          *v12.i8 = vmovn_s32(v49.val[1]);
          v38 = vzip1q_s16(vuzp2q_s16(v49.val[1], v49.val[0]), v23);
          *v13.i8 = vmovn_s32(v49.val[2]);
          v49.val[0] = vzip1q_s16(vuzp2q_s16(v49.val[2], v49.val[0]), v23);
          v49.val[2] = vshlq_n_s32(vzip1q_s16(v11, v23), 4uLL);
          v50 = vld3q_s16(v25);
          v25 += 24;
          v49.val[1] = vsraq_n_u32(vshlq_n_s32(vzip1q_s16(v13, v23), 0xEuLL), vzip1q_s16(v12, v23), 6uLL);
          v11 = vshlq_n_s32(v37, 4uLL);
          v49.val[0] = vsraq_n_u32(vshlq_n_s32(v49.val[0], 0xEuLL), v38, 6uLL);
          *v37.i8 = vmovn_s32(v50.val[0]);
          v12 = vzip1q_s16(vuzp2q_s16(v50.val[0], v49.val[0]), v23);
          *v38.i8 = vmovn_s32(v50.val[1]);
          v13 = vzip1q_s16(vuzp2q_s16(v50.val[1], v49.val[0]), v23);
          *v14.i8 = vmovn_s32(v50.val[2]);
          v50.val[0] = vzip1q_s16(vuzp2q_s16(v50.val[2], v49.val[0]), v23);
          v50.val[2] = vorrq_s8(vorrq_s8(vshrq_n_u32(vzip1q_s16(v37, v23), 6uLL), v49.val[2]), vshlq_n_s32(vzip1q_s16(v38, v23), 0xEuLL));
          v14 = vorrq_s8(v49.val[1], vshlq_n_s32(vzip1q_s16(v14, v23), 4uLL));
          v39 = vorrq_s8(vorrq_s8(vshrq_n_u32(v12, 6uLL), v11), vshlq_n_s32(v13, 0xEuLL));
          v40 = vorrq_s8(v49.val[0], vshlq_n_s32(v50.val[0], 4uLL));
          vst4q_f32(v26, *(&v14 - 1));
          v26 += 64;
          v27 += 24;
        }
      }

      while (v27 < v1)
      {
        v41 = *(v24 + 1) >> 6;
        *v26 = (*v25 >> 6) & 0xC00003FF | (((*v24 >> 6) & 0x3FF) << 10) & 0xC00FFFFF | (((*(v25 + 1) >> 6) & 0x3FF) << 20);
        *(v26 + 4) = v41;
        if (v27 + 2 >= v1)
        {
          break;
        }

        v42 = (*(v25 + 3) >> 6) & 0xFFF003FF | (((*(v24 + 3) >> 6) & 0x3FF) << 10);
        *(v26 + 4) = (*(v24 + 2) << 14) & 0x3FF00000 | (((*(v25 + 2) >> 6) & 0x3FF) << 10) | v41;
        *(v26 + 8) = v42;
        if (v27 + 4 >= v1)
        {
          break;
        }

        v43 = (*(v24 + 4) >> 6) & 0xC00003FF | (((*(v25 + 5) >> 6) & 0x3FF) << 10) & 0xC00FFFFF | (((*(v24 + 5) >> 6) & 0x3FF) << 20);
        v27 += 6;
        *(v26 + 8) = v42 & 0xC00FFFFF | (((*(v25 + 4) >> 6) & 0x3FF) << 20);
        *(v26 + 12) = v43;
        v24 += 6;
        v25 += 6;
        v26 += 16;
      }

      result = FigAtomicIncrement32();
      v15 = (result - 1);
      v23 = 0uLL;
    }

    while (v2 > v15);
  }

  return result;
}

uint64_t vt_Copy_v210_x422_internal(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v34 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v33 = *(a1 + 148);
  v9 = *(a1 + 88);
  v30 = *(a1 + 104);
  v31 = *(a1 + 80);
  result = FigAtomicIncrement32();
  v11 = (result - 1);
  if (v2 > v11)
  {
    v12 = v6 + v5 * v9;
    v13 = v7;
    v14 = v30 + v8 * v34 + 24 * (((v7 + 1 + ((v7 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) / 6);
    v15 = (2 * (v31 + 1 + ((v31 + 1) >> 63))) & 0xFFFFFFFFFFFFFFFCLL;
    v16 = v4 + v9 * v3 + v15;
    v17 = v12 + v15;
    v18 = v7 + 2;
    v32 = v13 - 1;
    do
    {
      v19 = v14 + v11 * v34;
      v20 = (v16 + v11 * v3);
      v21 = (v17 + v11 * v5);
      if (v18 >= 3)
      {
        v24 = *(v19 + 8);
        v23 = *(v19 + 12);
        if (v32 > 1)
        {
          v22 = 2;
        }

        else
        {
          v25 = *(v19 + 4);
          *v20 = (v25 >> 14) & 0xFFC0;
          *v21 = (v25 >> 4) & 0xFFC0;
          v20[1] = (v24 >> 4) & 0xFFC0;
          v21[1] = v24 << 6;
          v20 += 2;
          v21 += 2;
          v22 = 4;
        }

        v19 += 16;
        *v20 = v23 << 6;
        *v21 = (v24 >> 14) & 0xFFC0;
        v20[1] = (v23 >> 14) & 0xFFC0;
        v21[1] = (v23 >> 4) & 0xFFC0;
        v20 += 2;
        v21 += 2;
      }

      else
      {
        v22 = 0;
      }

      if (v33)
      {
        while (v1 - 23 > v22)
        {
          v36 = vld4q_f32(v19);
          v19 += 64;
          v35.val[0] = (*&vtrn1q_s16(vshrq_n_u32(v36.val[0], 4uLL), vshrq_n_u32(v36.val[2], 4uLL)) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          v35.val[1] = (*&vshlq_n_s32(vtrn1q_s16(v36.val[1], v36.val[3]), 6uLL) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          v35.val[2] = (*&vtrn1q_s16(vshrq_n_u32(v36.val[1], 0xEuLL), vshrq_n_u32(v36.val[3], 0xEuLL)) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          vst3q_s16(v20, v35);
          v20 += 24;
          v35.val[0] = (*&vshlq_n_s32(vtrn1q_s16(v36.val[0], v36.val[2]), 6uLL) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          v35.val[1] = (*&vtrn1q_s16(vshrq_n_u32(v36.val[0], 0xEuLL), vshrq_n_u32(v36.val[2], 0xEuLL)) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          v35.val[2] = (*&vtrn1q_s16(vshrq_n_u32(v36.val[1], 4uLL), vshrq_n_u32(v36.val[3], 4uLL)) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0));
          vst3q_s16(v21, v35);
          v21 += 24;
          v22 += 24;
        }
      }

      while (v22 < v1)
      {
        v27 = *v19;
        v26 = *(v19 + 4);
        *v20 = (*v19 >> 4) & 0xFFC0;
        *v21 = LOWORD(v27) << 6;
        v20[1] = v26 << 6;
        v21[1] = (LODWORD(v27) >> 14) & 0xFFC0;
        if (v22 + 2 >= v1)
        {
          break;
        }

        v28 = *(v19 + 8);
        v20[2] = (v26 >> 14) & 0xFFC0;
        v21[2] = (v26 >> 4) & 0xFFC0;
        v20[3] = (v28 >> 4) & 0xFFC0;
        v21[3] = v28 << 6;
        if (v22 + 4 >= v1)
        {
          break;
        }

        v29 = *(v19 + 12);
        v20[4] = v29 << 6;
        v21[4] = (v28 >> 14) & 0xFFC0;
        v20[5] = (v29 >> 14) & 0xFFC0;
        v21[5] = (v29 >> 4) & 0xFFC0;
        v20 += 6;
        v21 += 6;
        v22 += 6;
        v19 += 16;
      }

      result = FigAtomicIncrement32();
      v11 = (result - 1);
    }

    while (v2 > v11);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return FigThreadGetMaxLogicalCoreCount();
}

uint64_t VTGetDefaultColorAttributesWithHints(int a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, void *a6, void *a7)
{
  if (a1 == 1785750887 || a1 == 1246774599)
  {
    v13 = *MEMORY[0x1E6965DD8];
    v14 = *MEMORY[0x1E6965F50];
    v15 = *MEMORY[0x1E6965FC8];
    v16 = 1;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (a1 != 1246774599 && a1 != 1785750887)
  {
    if (FigCFEqual())
    {
      v17 = MEMORY[0x1E6965FD0];
LABEL_19:
      v18 = MEMORY[0x1E6965F50];
      v19 = MEMORY[0x1E6965DB8];
LABEL_31:
      v13 = *v19;
      v14 = *v18;
      goto LABEL_46;
    }

    if (FigCFEqual())
    {
      v17 = MEMORY[0x1E6965FB0];
      v18 = MEMORY[0x1E6965F40];
LABEL_27:
      v19 = MEMORY[0x1E6965DB0];
      goto LABEL_31;
    }

    if (FigCFEqual())
    {
      v17 = MEMORY[0x1E6965FC8];
      v18 = MEMORY[0x1E6965F50];
    }

    else
    {
      if (FigCFEqual())
      {
        v17 = MEMORY[0x1E6965FC8];
        goto LABEL_19;
      }

      if (FigCFEqual())
      {
        v17 = MEMORY[0x1E6965FD0];
        v18 = MEMORY[0x1E6965F70];
      }

      else
      {
        if (!FigCFEqual())
        {
          if (FigCFEqual())
          {
            v17 = MEMORY[0x1E6965FB0];
            v18 = MEMORY[0x1E6965F70];
          }

          else
          {
            if (!FigCFEqual())
            {
              v16 = 0;
              if (a3)
              {
                goto LABEL_12;
              }

LABEL_43:
              if (v16)
              {
                goto LABEL_47;
              }

              v13 = *MEMORY[0x1E6965DB8];
              v14 = *MEMORY[0x1E6965F50];
              goto LABEL_45;
            }

            v17 = MEMORY[0x1E6965FB0];
            v18 = MEMORY[0x1E6965F48];
          }

          goto LABEL_27;
        }

        v17 = MEMORY[0x1E6965FD0];
        v18 = MEMORY[0x1E6965F48];
      }
    }

    v19 = MEMORY[0x1E6965DD0];
    goto LABEL_31;
  }

LABEL_11:
  if (!a3)
  {
    goto LABEL_43;
  }

LABEL_12:
  if (!a4 || v16)
  {
    goto LABEL_43;
  }

  if (a3 != 704 || a4 != 576)
  {
    v14 = *MEMORY[0x1E6965F50];
    if (a3 <= 0x2C0 && a4 <= 0x240)
    {
      v13 = *MEMORY[0x1E6965DD8];
      goto LABEL_23;
    }

    v13 = *MEMORY[0x1E6965DB8];
LABEL_45:
    v17 = MEMORY[0x1E6965FD0];
    goto LABEL_46;
  }

  v13 = *MEMORY[0x1E6965DA0];
  v14 = *MEMORY[0x1E6965F50];
LABEL_23:
  v17 = MEMORY[0x1E6965FC8];
LABEL_46:
  v15 = *v17;
LABEL_47:
  if (a5)
  {
    *a5 = v13;
  }

  if (a6)
  {
    *a6 = v14;
  }

  if (a7)
  {
    *a7 = v15;
  }

  return 0;
}

uint64_t VTGetDefaultYCbCrMatrixWithDimensionHints(unint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x1E6965FD0];
  if (a1)
  {
    if (a2)
    {
      v2 = MEMORY[0x1E6965FC8];
      if ((a1 != 704 || a2 != 576) && (a2 >= 0x241 || a1 >= 0x2C1))
      {
        v2 = MEMORY[0x1E6965FD0];
      }
    }
  }

  return *v2;
}

uint64_t VTGetDefaultYCbCrMatrixWithColorSpaceNameAndDimensionHints(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = 0;
  VTGetDefaultColorAttributesWithHints(0, a1, a2, a3, 0, 0, &v4);
  return v4;
}

uint64_t VTVPParavirtualizedHEVCVideoEncoder_CreateInstance(uint64_t a1, const void *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"VTHostEncoderID", @"com.apple.videotoolbox.videoencoder.ave.hevc");
  InstanceWithSpecification = ParavirtualizedVideoEncoder_CreateInstanceWithSpecification(1752589105, @"paravirtualized:com.apple.videotoolbox.videoencoder.ave.hevc", Mutable, a2, a3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return InstanceWithSpecification;
}

uint64_t VTVPParavirtualizedH264VideoEncoder_CreateInstance(uint64_t a1, const void *a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"VTHostEncoderID", @"com.apple.videotoolbox.videoencoder.ave.avc");
  InstanceWithSpecification = ParavirtualizedVideoEncoder_CreateInstanceWithSpecification(1635148593, @"paravirtualized:com.apple.videotoolbox.videoencoder.ave.avc", Mutable, a2, a3);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return InstanceWithSpecification;
}

uint64_t getPixelFormatCharacteristics(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (result)
  {
    v6 = result;
    if (a2)
    {
      FigCFDictionaryGetInt32IfPresent();
      *a2 = 0;
    }

    if (a3)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      CFDictionaryGetValue(v6, *MEMORY[0x1E6966248]);
      if (FigCFEqual())
      {
        v7 = 8;
      }

      else if (FigCFEqual())
      {
        v7 = 4;
      }

      else if (FigCFEqual())
      {
        v7 = 12;
      }

      else
      {
        v7 = 0;
      }

      if (!FigCFDictionaryGetInt16IfPresent() || !FigCFDictionaryGetInt16IfPresent())
      {
        Value = CFDictionaryGetValue(v6, *MEMORY[0x1E69662D8]);
        if (Value)
        {
          v9 = Value;
          v10 = CFGetTypeID(Value);
          if (v10 == CFArrayGetTypeID())
          {
            Count = CFArrayGetCount(v9);
            if (Count >= 1)
            {
              v12 = Count;
              for (i = 0; i != v12; ++i)
              {
                CFArrayGetValueAtIndex(v9, i);
                if (FigCFDictionaryGetInt16IfPresent() && FigCFDictionaryGetInt16IfPresent())
                {
                  break;
                }
              }
            }
          }
        }
      }

      FigCFDictionaryGetBooleanIfPresent();
      *a3 = v7 | 0x10;
    }

    return 1;
  }

  return result;
}

uint64_t VTPixelTransferGraphGetCurrentDimensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 108);
  if ((*(a4 + 20) & 4) != 0)
  {
    v7 = *(a4 + 108);
  }

  else
  {
    v7 = *(a4 + 116);
  }

  if ((*(a4 + 20) & 4) != 0)
  {
    v6 = *(a4 + 116);
  }

  v8 = v7;
  v9 = v6;
  if ((*(a1 + 4) & 1) == 0)
  {
    v9 = *(a4 + 60);
    v8 = *(a4 + 68);
  }

  if (*(a2 + 4))
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if ((*(a2 + 4) & 1) == 0)
  {
    v6 = v9;
  }

  if ((*(a1 + 4) & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if ((*(a1 + 4) & 4) == 0)
  {
    v8 = v9;
  }

  if ((*(a2 + 4) & 4) != 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = v10;
  }

  if ((*(a2 + 4) & 4) != 0)
  {
    v6 = v10;
  }

  if (a5)
  {
    if ((*(a1 + 4) & 0x20) != 0)
    {
      v13 = *(a4 + 60);
      *a5 = *(a4 + 44);
      *(a5 + 16) = v13;
      if (!a6)
      {
        return 0;
      }

      goto LABEL_29;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = v8;
    *(a5 + 24) = v11;
  }

  if (!a6)
  {
    return 0;
  }

LABEL_29:
  if (*a2 == *(a4 + 16))
  {
    v14 = *(a4 + 108);
    *a6 = *(a4 + 92);
    *(a6 + 16) = v14;
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = v6;
    *(a6 + 24) = v12;
  }

  return 0;
}

uint64_t VTPixelTransferGraphBuildChain(uint64_t a1, char a2, double *a3, unsigned int a4, char a5, uint64_t a6, int a7, int a8, char a9, char a10, char a11, char a12, uint64_t a13, const void *a14, __int16 a15, uint64_t a16, uint64_t a17, char a18, char a19, unsigned __int16 a20, unsigned __int16 a21, uint64_t a22, CFTypeRef *a23, _BYTE *a24)
{
  v29 = *(a6 + 32);
  v28 = *(a6 + 40);
  Value = FigCFDictionaryGetValue();
  v31 = FigCFDictionaryGetValue();
  v135 = 0;
  v134 = a1 | 0x2000000000;
  BYTE5(v134) = CVYCbCrMatrixGetIntegerCodePointForString(Value);
  v133 = a4;
  IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(v31);
  BYTE5(v133) = IntegerCodePointForString;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  *v127 = 0u;
  memset(v126, 0, sizeof(v126));
  *cf = 0u;
  BYTE8(v126[0]) = a2;
  BYTE9(v126[0]) = a5;
  BYTE10(v126[0]) = (a10 != 0) | (2 * (a11 != 0)) | (4 * (a12 != 0));
  v32 = *a3;
  v33 = *(a3 + 1);
  *(&v126[2] + 12) = *(a3 + 2);
  *(&v126[1] + 12) = v33;
  *(v126 + 12) = v32;
  v34 = *(a6 + 16);
  *(&v126[3] + 12) = *a6;
  *(&v126[4] + 12) = v34;
  *(&v126[5] + 12) = *(a6 + 32);
  v36 = a7 == 90 || a7 == 270;
  BYTE12(v126[6]) = v36;
  BYTE13(v126[6]) = a19;
  v127[1] = a14;
  LOWORD(v128) = a15;
  *(&v128 + 1) = a16;
  *&v129 = a17;
  *(&v129 + 9) = __PAIR32__(a21, a20);
  v130 = a22;
  LOBYTE(v132) = 0;
  v131 = 0uLL;
  v124 = 0;
  v122 = 0uLL;
  v123 = 0uLL;
  v121 = 0uLL;
  v37 = *MEMORY[0x1E695E480];
  v38 = MEMORY[0x193AE0CD0](*MEMORY[0x1E695E480], 160176, 0x102004042366147, 0);
  if (!v38)
  {
    VTPixelTransferGraphBuildChain_cold_2(v136);
    v43 = 0;
    v44 = LODWORD(v136[0]);
    goto LABEL_31;
  }

  v39 = v38;
  bzero(v38, 0x271B0uLL);
  CFAbsoluteTimeGetCurrent();
  if (a13)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v37, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v127[0] = MutableCopy;
  if (!MutableCopy)
  {
    v44 = 0;
    v43 = 0;
    goto LABEL_23;
  }

  if (!getPixelFormatCharacteristics(a1, &v134 + 6, &v134 + 7) || !getPixelFormatCharacteristics(v133, &v133 + 6, &v133 + 7))
  {
    v43 = 0;
LABEL_22:
    v44 = 4294954391;
    goto LABEL_23;
  }

  if ((v134 & 0x200000000000000) == 0)
  {
    BYTE5(v134) = 0;
  }

  if ((v133 & 0x200000000000000) == 0)
  {
    v41 = 0;
LABEL_18:
    BYTE5(v133) = v41;
    goto LABEL_19;
  }

  if (BYTE5(v134) && BYTE5(v133) && !a18 && BYTE5(v134) == IntegerCodePointForString)
  {
    v41 = 1;
    BYTE5(v134) = 1;
    goto LABEL_18;
  }

LABEL_19:
  switch(a7)
  {
    case 90:
      BYTE4(v133) |= 0xCu;
      v28 = *(a6 + 32);
      v29 = *(a6 + 40);
      v42 = &kVTRotation_CW90;
      break;
    case 270:
      BYTE4(v133) |= 0x14u;
      v28 = *(a6 + 32);
      v29 = *(a6 + 40);
      v42 = &kVTRotation_CCW90;
      break;
    case 180:
      BYTE4(v133) |= 0x18u;
      v42 = &kVTRotation_180;
      break;
    default:
      goto LABEL_48;
  }

  CFDictionarySetValue(v127[0], @"Rotation", *v42);
LABEL_48:
  v49 = MEMORY[0x1E695E4D0];
  if (a8)
  {
    BYTE4(v133) ^= 0x10u;
    CFDictionarySetValue(v127[0], @"FlipHorizontalOrientation", *MEMORY[0x1E695E4D0]);
  }

  v50 = v29;
  if (a9)
  {
    BYTE4(v133) ^= 8u;
    CFDictionarySetValue(v127[0], @"FlipVerticalOrientation", *v49);
  }

  if (a3[4] != v50 || (v51 = v28, a3[5] != v51))
  {
    BYTE4(v133) |= 1u;
  }

  if (a18)
  {
    BYTE4(v133) |= 2u;
  }

  if ((BYTE10(v126[0]) & 2) != 0)
  {
    LOBYTE(v124) = VTMetalTransferSessionCanAcceptSource1xWithSession(a22, a1);
    if ((v133 & 0x100000000) != 0)
    {
      BYTE1(v124) = VTMetalTransferSessionCanDoHighQualityScaling(a22, a1);
    }
  }

  v52 = v133;
  v53 = v134;
  cf[1] = v134;
  *&v126[0] = v133;
  v54 = (LODWORD(cf[1]) ^ BYTE4(cf[1]) ^ (cf[1] >> 36) & 0xFF0) % 0x4E35;
  v55 = v39[v54];
  if (v55)
  {
    while ((v134 & 0xFF00FFFFFFFFLL | (BYTE4(v134) << 32)) != (*v55 & 0xFFFFFFFFFFFFLL))
    {
      if (v54 + 1 <= 0x4E34)
      {
        ++v54;
      }

      else
      {
        v54 = 0;
      }

      v55 = v39[v54];
      if (!v55)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
LABEL_66:
    v56 = v39[20021] + 1;
    v39[20021] = v56;
    if (v56 > 0x4E34 || (v57 = MEMORY[0x193AE0CD0](v37, 80, 0x10E00409CAEB0EDLL, 0)) == 0)
    {
      v44 = 0;
      v43 = 0;
      v120 = 0;
      goto LABEL_23;
    }

    v55 = v57;
    *v57 = v53;
    *(v57 + 24) = 0u;
    *(v57 + 40) = 0u;
    *(v57 + 8) = -1;
    *(v57 + 16) = 0;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0;
    v39[v54] = v57;
    v52 = v133;
  }

  v120 = v55;
  v58 = (v52 ^ BYTE4(v52) ^ (v52 >> 36) & 0xFF0) % 0x4E35;
  v59 = v39[v58];
  if (v59)
  {
    while ((v52 & 0xFF00FFFFFFFFLL | (BYTE4(v52) << 32)) != (*v59 & 0xFFFFFFFFFFFFLL))
    {
      if (v58 + 1 <= 0x4E34)
      {
        ++v58;
      }

      else
      {
        v58 = 0;
      }

      v59 = v39[v58];
      if (!v59)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
LABEL_75:
    v60 = v39[20021] + 1;
    v39[20021] = v60;
    if (v60 > 0x4E34 || (v61 = MEMORY[0x193AE0CD0](v37, 80, 0x10E00409CAEB0EDLL, 0)) == 0)
    {
      v44 = 0;
      v43 = 0;
      goto LABEL_23;
    }

    v59 = v61;
    *v61 = v52;
    *(v61 + 24) = 0u;
    *(v61 + 40) = 0u;
    *(v61 + 8) = -1;
    *(v61 + 16) = 0;
    *(v61 + 64) = 0;
    *(v61 + 72) = 0;
    v39[v58] = v61;
  }

  if (a10 && (memset(&v136[2], 0, 40), VTPixelTransferSessionGetDynamicServiceList()) && (DynamicServiceList = VTPixelTransferSessionGetDynamicServiceList()) != 0)
  {
    v63 = DynamicServiceList;
    while (1)
    {
      v64 = *v63;
      if (*v63 >= 1)
      {
        v65 = *(v63 + 8);
        while (1)
        {
          v66 = *v65++;
          if (v66 == *v55)
          {
            break;
          }

          if (!--v64)
          {
            goto LABEL_91;
          }
        }

        v67 = *(v63 + 16);
        if (v67 >= 1)
        {
          break;
        }
      }

LABEL_91:
      v63 = *(v63 + 72);
      if (!v63)
      {
        goto LABEL_92;
      }
    }

    v68 = *(v63 + 24);
    while (1)
    {
      v69 = *v68;
      v68 += 2;
      if (v69 == *v59)
      {
        break;
      }

      if (!--v67)
      {
        goto LABEL_91;
      }
    }

    if ((*(v63 + 32) & 8) != 0)
    {
      v109 = 1;
    }

    else
    {
      v109 = 4;
    }

    DWORD2(v136[2]) = v109;
    v118 = *(v63 + 48);
    *(v136 + 8) = v118;
    v110 = *(v63 + 64);
    *&v136[0] = vtPixelTransferAppendDynamicNodeCallback;
    *(&v136[1] + 1) = v110;
    v136[3] = vdupq_n_s64(0x64uLL);
    LOBYTE(v136[4]) = 0;
    v111 = vtPixelTransferGraphEdgeCost(v55, v59, v136, cf);
    v71 = v111;
    if (v111 == -1)
    {
      v70 = 1;
    }

    else
    {
      v70 = 0;
      *(v59 + 8) = v111;
      *(v59 + 16) = vtPixelTransferAppendDynamicNodeCallback;
      *(v59 + 24) = v118;
      *(v59 + 32) = *(v63 + 56);
      *(v59 + 40) = *(v63 + 64);
      *(v59 + 56) = 0;
      *(v59 + 64) = v55;
    }
  }

  else
  {
LABEL_92:
    v70 = 1;
    v71 = -1;
  }

  v117 = v37;
  if (!a11)
  {
    goto LABEL_103;
  }

  memset(v136 + 8, 0, 64);
  v72 = 108;
  if ((*(v59 + 4) & 1) == 0)
  {
    v72 = 60;
  }

  v73 = *(cf + v72);
  v74 = 116;
  if ((*(v59 + 4) & 1) == 0)
  {
    v74 = 68;
  }

  if (*(cf + v74) * v73 >= 0x9C41 && VTMetalTransferSessionCanTransferWithSession(v130, *v55, *v59, !(*(v59 + 4) & 1), 0) && (*&v136[0] = vtPixelTransferAppendMetalNodeCallback, DWORD2(v136[2]) = 2, v136[3] = vdupq_n_s64(0xC8uLL), LOBYTE(v136[4]) = 0, v75 = vtPixelTransferGraphEdgeCost(v55, v59, v136, cf), v75 != -1))
  {
    if (v75 < v71)
    {
      *(v59 + 8) = v75;
      *(v59 + 16) = vtPixelTransferAppendMetalNodeCallback;
      *(v59 + 56) = 0;
      *(v59 + 64) = v55;
    }
  }

  else
  {
LABEL_103:
    if (v70)
    {
      if ((BYTE10(v126[0]) & 2) != 0)
      {
        VTMetalTransferSessionInitializeDestinationArray(cf);
      }

      FigPriorityQueueCreate();
      if (!v135)
      {
        VTPixelTransferGraphBuildChain_cold_1(v136);
        v43 = 0;
        v44 = LODWORD(v136[0]);
        goto LABEL_23;
      }

      v76 = 0;
      *(v120 + 1) = -1;
      while (2)
      {
        v119 = 0;
        memset(v136, 0, 72);
        LOBYTE(v121) = 0;
        *(&v121 + 1) = VTPixelTransferSessionGetDynamicServiceList();
        LODWORD(v122) = 0;
        *(&v122 + 3) = 0;
        v123 = 0uLL;
        *(&v122 + 1) = 0;
        if ((BYTE10(v126[0]) & 2) != 0)
        {
          LOBYTE(v124) = VTMetalTransferSessionCanAcceptSource1xWithSession(a22, *v120);
          if ((BYTE4(v133) ^ BYTE4(v119)))
          {
            BYTE1(v124) = VTMetalTransferSessionCanDoHighQualityScaling(a22, *v120);
          }
        }

        while (vtPixelTransferGraphNextEdgeIterator(v120, &v119, v136, &v121, cf))
        {
          v77 = v120;
          v78 = vtPixelTransferGraphEdgeCost(v120, &v119, v136, cf);
          v79 = v78;
          if ((v76 & 1) == 0 || (v80 = *(v77 + 1), v79 = v80 + v78, !__CFADD__(v80, v78)))
          {
            if (v79 != -1)
            {
              v81 = v119;
              v82 = (v119 ^ BYTE4(v119) ^ (v119 >> 36) & 0xFF0) % 0x4E35;
              v83 = v39[v82];
              if (v83)
              {
                while ((v119 & 0xFF00FFFFFFFFLL | (BYTE4(v119) << 32)) != (*v83 & 0xFFFFFFFFFFFFLL))
                {
                  if (v82 + 1 <= 0x4E34)
                  {
                    ++v82;
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v83 = v39[v82];
                  if (!v83)
                  {
                    goto LABEL_120;
                  }
                }

                v86 = *(v83 + 8);
              }

              else
              {
LABEL_120:
                v84 = v39[20021] + 1;
                v39[20021] = v84;
                if (v84 > 0x4E34 || (v85 = MEMORY[0x193AE0CD0](v37, 80, 0x10E00409CAEB0EDLL, 0)) == 0)
                {
                  v44 = 0;
                  v43 = 0;
LABEL_148:
                  v37 = v117;
                  goto LABEL_23;
                }

                v83 = v85;
                *v85 = v81;
                *(v85 + 24) = 0u;
                *(v85 + 40) = 0u;
                v86 = -1;
                *(v85 + 8) = -1;
                *(v85 + 16) = 0;
                *(v85 + 64) = 0;
                *(v85 + 72) = 0;
                v39[v82] = v85;
              }

              if (v79 < v86)
              {
                v87 = *(v83 + 72);
                v88 = *&v136[0];
                *(v83 + 8) = v79;
                *(v83 + 16) = v88;
                v89 = *(&v136[1] + 8);
                *(v83 + 24) = *(v136 + 8);
                *(v83 + 40) = v89;
                *(v83 + 56) = v136[4] & 1;
                *(v83 + 64) = v120;
                if (v87)
                {
                  FigPriorityQueueTokenUpdatePriority();
                }

                else
                {
                  FigPriorityQueueInsertItemAndCreateUpdateToken();
                }
              }
            }
          }

          memset(v136, 0, 72);
        }

        FigPriorityQueueGetItem();
        if (v120 && v120 != v59)
        {
          v90 = *(v120 + 9);
          if (v90)
          {
            CFRelease(v90);
            *(v120 + 9) = 0;
          }

          FigPriorityQueueRemoveItem();
          v76 = 1;
          if (v120)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v91.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  if (!*(v59 + 64))
  {
    v43 = 0;
    goto LABEL_150;
  }

  v92 = 0;
  v93 = 0;
  v94 = v59;
  do
  {
    v94 = *(v94 + 64);
    ++v93;
    v92 += 7;
  }

  while (v94 != v55);
  v95 = MEMORY[0x193AE0CD0](v37, v92 * 8 + 56, 0x10E004075308647, 0, v91);
  v43 = v95;
  if (v95)
  {
    *v95 = &v134;
    v96 = &v95[v92];
    v96[1] = *(v55 + 16);
    v97 = *(v55 + 40);
    *(v96 + 1) = *(v55 + 24);
    *(v96 + 2) = v97;
    *(v96 + 48) = *(v55 + 56);
    v98 = v93;
    do
    {
      v99 = &v95[7 * v98];
      *v99 = v59;
      *(v99 - 6) = *(v59 + 16);
      v100 = *(v59 + 24);
      *(v99 - 3) = *(v59 + 40);
      *(v99 - 5) = v100;
      *(v99 - 8) = *(v59 + 56);
      v59 = *(v59 + 64);
      --v98;
    }

    while (v59 != v55);
    v101 = 0;
    v102 = v95;
    v103 = v93;
    while (v103)
    {
      memset(&v136[2] + 8, 0, 32);
      v104 = *(v102 + 1);
      *(&v136[1] + 8) = *(v102 + 2);
      *(v136 + 8) = v104;
      v105 = v102[1];
      *&v136[0] = v105;
      LOBYTE(v136[4]) = *(v102 + 48);
      v106 = *v102;
      v107 = v102[7];
      if (!cf[0])
      {
        v108 = VTPixelTransferChainCreate(v117, v129, cf);
        if (v108)
        {
          goto LABEL_147;
        }

        v105 = *&v136[0];
      }

      v108 = (v105)(v106, v107, v136, v101, v93, cf);
      --v103;
      v102 += 7;
      v101 = (v101 + 1);
      if (v108)
      {
LABEL_147:
        v44 = v108;
        goto LABEL_148;
      }
    }

LABEL_150:
    v37 = v117;
    if (VTPixelTransferChainHasNodes(cf[0]))
    {
      *a23 = cf[0];
      cf[0] = 0;
      v44 = 0;
      if (a24)
      {
        *a24 = v132;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v44 = 4294954305;
LABEL_23:
  for (i = 0; i != 20021; ++i)
  {
    v46 = v39[i];
    if (v46)
    {
      v47 = v46[9];
      if (v47)
      {
        CFRelease(v47);
        *(v39[i] + 72) = 0;
        v46 = v39[i];
      }

      CFAllocatorDeallocate(v37, v46);
    }
  }

  CFAllocatorDeallocate(v37, v39);
  if (v135)
  {
    CFRelease(v135);
  }

LABEL_31:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v127[0])
  {
    CFRelease(v127[0]);
  }

  VTMetalTransferSessionCleanupDestinationArray(cf);
  if (v43)
  {
    CFAllocatorDeallocate(v37, v43);
  }

  return v44;
}

uint64_t nodeInfoCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

uint64_t vtPixelTransferGraphNextEdgeIterator(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ((a5[26] & 1) != 0 && !*a4)
  {
    v16 = *(a4 + 8);
    if (!v16)
    {
LABEL_32:
      *a4 = 1;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      if ((a5[26] & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

    while (1)
    {
      v17 = *(a4 + 24);
      while (1)
      {
        v18 = v16[1];
        if (*(v18 + 4 * v17) == *a1)
        {
          break;
        }

        v19 = *v16;
        v20 = v17 + 1;
        while (1)
        {
          *(a4 + 24) = v20;
          if (v20 >= v19)
          {
            break;
          }

          v21 = *(v18 + 4 * v20++);
          if (v21 == *a1)
          {
            goto LABEL_25;
          }
        }

        v17 = 0;
        v16 = v16[9];
        *(a4 + 8) = v16;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        if (!v16)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      if (*(a4 + 40) <= 0x3FuLL)
      {
        break;
      }

LABEL_30:
      v24 = *(a4 + 32) + 1;
      *(a4 + 32) = v24;
      *(a4 + 40) = 0;
      if (v24 >= v16[2])
      {
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        v16 = v16[9];
        *(a4 + 8) = v16;
        if (!v16)
        {
          goto LABEL_32;
        }
      }
    }

    while (1)
    {
      v22 = a1[4] & 0x1F;
      *(a2 + 4) = v22;
      v23 = *(a4 + 40);
      if ((v23 & ~a5[20] & 7) == 0 && (a1[4] & v23 & 7) == 0)
      {
        break;
      }

      *(a4 + 40) = v23 + 1;
      if ((v23 + 1) >= 0x40)
      {
        v16 = *(a4 + 8);
        goto LABEL_30;
      }
    }

    if (v23)
    {
      v22 |= 1u;
      *(a2 + 4) = v22;
      v23 = *(a4 + 40);
      if ((v23 & 2) == 0)
      {
LABEL_44:
        if ((v23 & 4) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_52;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_44;
    }

    v22 |= 2u;
    *(a2 + 4) = v22;
    v23 = *(a4 + 40);
    if ((v23 & 4) == 0)
    {
LABEL_45:
      if ((v23 & 8) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }

LABEL_52:
    v22 |= 4u;
    *(a2 + 4) = v22;
    v23 = *(a4 + 40);
    if ((v23 & 8) == 0)
    {
LABEL_46:
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

LABEL_53:
    v22 ^= 8u;
    *(a2 + 4) = v22;
    v23 = *(a4 + 40);
    if ((v23 & 0x10) == 0)
    {
LABEL_48:
      *(a4 + 40) = v23 + 1;
      *a2 = *(*(*(a4 + 8) + 24) + 8 * *(a4 + 32));
      *(a2 + 6) = *(*(*(a4 + 8) + 24) + 8 * *(a4 + 32) + 4);
      v25 = *(*(*(a4 + 8) + 24) + 8 * *(a4 + 32) + 5);
      *(a2 + 7) = v25;
      if ((v25 & 2) == 0)
      {
        v26 = 0;
LABEL_101:
        *(a2 + 5) = v26;
        v50 = *(a4 + 8);
        if ((*(v50 + 32) & 8) != 0)
        {
          v51 = 1;
        }

        else
        {
          v51 = 4;
        }

        *(a3 + 40) = v51;
        v52 = *(v50 + 48);
        *a3 = vtPixelTransferAppendDynamicNodeCallback;
        *(a3 + 8) = v52;
        *(a3 + 16) = *(*(a4 + 8) + 56);
        *(a3 + 24) = *(*(a4 + 8) + 64);
        *(a3 + 48) = vdupq_n_s64(0x64uLL);
        *(a3 + 64) = 0;
        return 1;
      }

      if ((a5[23] & 3) == 1)
      {
        if ((a1[7] & 2) == 0)
        {
          v26 = 1;
          goto LABEL_101;
        }

        v27 = a1 + 5;
      }

      else
      {
        v27 = a5 + 21;
      }

      v26 = *v27;
      goto LABEL_101;
    }

LABEL_47:
    *(a2 + 4) = v22 ^ 0x10;
    v23 = *(a4 + 40);
    goto LABEL_48;
  }

  if ((a5[26] & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (!*(a4 + 16))
  {
    result = VTPixelTransferSessionGetNextMetalBlitter(a1, a2, a3, a4, a5);
    if (result)
    {
      return result;
    }

    *(a4 + 16) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 0;
  }

  if (!*(a4 + 17))
  {
    result = VTPixelTransferSessionGetNextDirectMetalBlitter(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    *(a4 + 17) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 0;
  }

LABEL_6:
  if ((a5[26] & 4) == 0)
  {
    return 0;
  }

  if (!*(a4 + 18))
  {
    result = VTPixelTransferSessionGetNextSoftwareBlitter(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    *(a4 + 18) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 0;
  }

  if (!*(a4 + 19))
  {
    result = VTPixelTransferSessionGetNextVImageBlitter(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    *(a4 + 19) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 24) = 0;
  }

  if (!*(a4 + 20))
  {
    v11 = (a4 + 24);
    v12 = *(a4 + 24);
    if (v12 <= 0x2E)
    {
      v13 = v12 + 1;
      v14 = (&sSrcColorOptimizedPixelFormatArray + 8 * v12);
      while (1)
      {
        v15 = *v14;
        v14 += 2;
        if (v15 == *a1)
        {
          break;
        }

        *v11 = v13++;
        if (v13 == 48)
        {
          goto LABEL_67;
        }
      }

      v28 = *(a4 + 32);
      if (v28 <= 0x34)
      {
        v29 = *(a4 + 40) < 3uLL;
        while (!v29)
        {
LABEL_66:
          *(a4 + 32) = ++v28;
          *(a4 + 40) = 0;
          v29 = 1;
          if (v28 >= 0x35)
          {
            goto LABEL_67;
          }
        }

        while (1)
        {
          v30 = a1[4] & 0x1F;
          *(a2 + 4) = v30;
          v31 = *(a4 + 40);
          if ((v31 & ~a5[20]) == 0 && (v31 & a1[4]) == 0)
          {
            break;
          }

          v32 = v31 + 1;
          *(a4 + 40) = v32;
          if (v32 >= 3)
          {
            v28 = *(a4 + 32);
            goto LABEL_66;
          }
        }

        if ((v31 & 2) != 0)
        {
          *(a2 + 4) = v30 | 2;
          v31 = *(a4 + 40);
        }

        v53 = *(&sDstColorOptimizedPixelFormatArray + 2 * *(a4 + 32));
        *(a4 + 40) = v31 + 1;
        *a2 = v53;
        *(a2 + 6) = *(&sDstColorOptimizedPixelFormatArray + 8 * *(a4 + 32) + 4);
        v54 = *(a4 + 32);
        *(a2 + 7) = *(&sDstColorOptimizedPixelFormatArray + 8 * v54 + 5);
        v55 = *a1 == v53 && (a1[4] & 0x20) == 0;
        if (v54 < 0xA)
        {
          v56 = 0;
LABEL_120:
          *(a2 + 5) = v56;
          *a3 = vtPixelTransferAppendColorProcessingBlitterNodeCallback;
          *(a3 + 40) = 4;
          *(a3 + 48) = vdupq_n_s64(0x136uLL);
          *(a3 + 64) |= v55;
          return 1;
        }

        if ((a5[23] & 3) == 1)
        {
          if ((a1[7] & 2) == 0)
          {
            v56 = 1;
            goto LABEL_120;
          }

          v57 = a1 + 5;
        }

        else
        {
          v57 = a5 + 21;
        }

        v56 = *v57;
        goto LABEL_120;
      }
    }

LABEL_67:
    *a2 = 0;
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a4 + 20) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *v11 = 0;
  }

  if (*(a4 + 21))
  {
    goto LABEL_82;
  }

  v33 = *(a4 + 32);
  if (v33)
  {
    if (v33 > 0x66)
    {
LABEL_81:
      *a2 = 0;
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a4 + 21) = 1;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
LABEL_82:
      if ((a5[20] & 0x1C) == 0 || *(a4 + 22))
      {
        return 0;
      }

      v40 = *(a4 + 32);
      if (v40 > 0xB3)
      {
LABEL_85:
        result = 0;
        *a2 = 0;
        *(a3 + 64) = 0;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a4 + 22) = 1;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        *(a4 + 24) = 0;
        return result;
      }

      v41 = v40 + 1;
      v42 = &vtRotationBlitterTable + 40 * v40;
      while (1)
      {
        v43 = *v42;
        if (*v42 == *a1)
        {
          break;
        }

        *(a4 + 32) = v41++;
        v42 += 40;
        if (v41 == 181)
        {
          v43 = 1983000886;
          if (*a1 != 1983000886)
          {
            goto LABEL_85;
          }

          v42 = &unk_1F038F2B0;
          break;
        }
      }

      v44 = v42[16];
      if (v44)
      {
        v44 = (a1[4] & 0x20) == 0;
      }

      *a2 = v43;
      *(a2 + 6) = *(v42 + 2);
      *(a2 + 5) = a1[5];
      v45 = a1[4];
      LOBYTE(v46) = v45 & 0xDF;
      *(a2 + 4) = v45 & 0xDF;
      v47 = v42[6];
      if ((v47 & 4) != 0)
      {
        v46 = ((2 * v45) & 0x10 | v45 & 0xFFFFFFC7 | (v45 >> 1) & 8) ^ 4;
        *(a2 + 4) = ((2 * v45) & 0x10 | v45 & 0xC7 | (v45 >> 1) & 8) ^ 4;
      }

      v48 = v47 & 0x18;
      if (v48)
      {
        *(a2 + 4) = v46 ^ v48;
      }

      v49 = *(v42 + 1);
      *a3 = VTPixelTransferAppendSoftwareRotationNodeCallback;
      *(a3 + 8) = v49;
      *(a3 + 40) = 4;
      *(a3 + 48) = *(v42 + 24);
      *(a3 + 64) |= v44;
      goto LABEL_98;
    }

    v34 = &VTPixelGraphScalerTable[32 * v33];
  }

  else
  {
    v34 = VTPixelGraphScalerTable;
    v35 = 1;
    while (*v34 != *a1)
    {
      *(a4 + 32) = v35++;
      v34 += 32;
      if (v35 == 104)
      {
        v34 = aAfgrafgr;
        break;
      }
    }
  }

  if (*v34 != *a1)
  {
    goto LABEL_81;
  }

  *a2 = *(v34 + 1);
  *(a2 + 6) = v34[8];
  *(a2 + 7) = v34[10];
  if (a5[20])
  {
    v36 = (a1[4] & 0x1E) + 1;
  }

  else
  {
    v36 = a1[4] & 0x1F;
  }

  *(a2 + 4) = v36;
  *(a2 + 5) = a1[5];
  v37 = *(v34 + 2);
  *a3 = vtPixelTransferAppendScalerNodeCallback;
  *(a3 + 8) = v37;
  *(a3 + 40) = 4;
  v38 = *(v34 + 3);
  *&v39 = v38;
  *(&v39 + 1) = HIDWORD(v38);
  *(a3 + 48) = v39;
  *(a3 + 64) = 0;
LABEL_98:
  ++*(a4 + 32);
  return 1;
}

uint64_t vtPixelTransferGraphEdgeCost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 4);
  v5 = 108;
  if ((v4 & 1) == 0)
  {
    v5 = 60;
  }

  v6 = 116;
  if ((v4 & 1) == 0)
  {
    v6 = 68;
  }

  v7 = *(a3 + 40);
  if ((v7 & *(a4 + 26)) == 0)
  {
    return -1;
  }

  v8 = *(a2 + 6);
  v9 = *(a4 + v5);
  v10 = *(a4 + v6);
  if ((v7 - 1) > 1)
  {
    goto LABEL_27;
  }

  if ((a4 + 8 == a1 || *(a4 + 8) == *a1 && *(a4 + 12) == *(a1 + 4) && *(a4 + 13) == *(a1 + 5)) && !*(a4 + 24) || (a4 + 16 == a2 || *(a4 + 16) == *a2 && *(a4 + 20) == v4 && *(a4 + 21) == *(a2 + 5)) && !*(a4 + 25))
  {
    return -1;
  }

  if (v7 == 1)
  {
    v11 = 0;
    if ((v4 & 2) == 0 || (*(a1 + 4) & 2) != 0)
    {
LABEL_28:
      if (!*(a1 + 6))
      {
        goto LABEL_55;
      }

      goto LABEL_29;
    }

    if (!*(a4 + 125))
    {
LABEL_27:
      v11 = 0;
      goto LABEL_28;
    }

    return -1;
  }

  if (!*(a4 + 176))
  {
    return -1;
  }

  v12 = v10 * v9;
  if (v10 * v9 > 0x9C40)
  {
    goto LABEL_27;
  }

  if (v4)
  {
    v11 = 630 * v12;
    if (!*(a1 + 6))
    {
      goto LABEL_55;
    }
  }

  else
  {
    v11 = 130 * v12;
    if (!*(a1 + 6))
    {
      goto LABEL_55;
    }
  }

LABEL_29:
  if (*(a2 + 6) && *(a1 + 6) > v8)
  {
    v13 = *(a4 + 14);
    v14 = *(a4 + 14) != 0;
    if (*(a4 + 22))
    {
      v15 = v13 > *(a4 + 22);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = (v14 & v16) == 0;
    if ((v14 & v16) != 0)
    {
      v18 = *(a4 + 14);
    }

    else
    {
      v18 = *(a4 + 22);
    }

    if (!v17)
    {
      v13 = *(a4 + 22);
    }

    v19 = !v18 || v18 >= v8;
    v20 = v19;
    v21 = v13 <= v8 || v13 == 0;
    if (!v21 || !v20)
    {
      return -1;
    }
  }

LABEL_55:
  v23 = *(a2 + 7);
  if ((*(a1 + 7) & 0x30u) < (v23 & 0x30u) && (v23 & 0x30u) > (*(a4 + 23) & 0x30u))
  {
    return -1;
  }

  v24 = *(a4 + 15);
  if ((v24 & 0x40) != 0 && (v23 & 0x40) == 0 && (*(a4 + 23) & 0x40) != 0)
  {
    return -1;
  }

  if ((~v24 & 3) != 0 && (~v23 & 3) == 0 && (*(a4 + 23) & 3) != 3)
  {
    return -1;
  }

  if (*(a3 + 64))
  {
    v25 = v11;
  }

  else
  {
    v25 = v11 + 1000;
  }

  v26 = v10 * v9;
  if (*a2 == *(a4 + 16))
  {
    v27 = 0;
  }

  else
  {
    v27 = 600 * v26;
  }

  v28 = *(a4 + 20) ^ v4;
  v29 = vmovl_u16(vceqz_s16(vand_s8(vdup_n_s16(v28), 0x8000400020001)));
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vshrq_n_s64(vshlq_n_s64(v30, 0x38uLL), 0x38uLL);
  v30.i64[0] = v29.u32[2];
  v30.i64[1] = v29.u32[3];
  v32 = vdupq_n_s64(600 * v26);
  v33 = vbicq_s8(v32, vshrq_n_s64(vshlq_n_s64(v30, 0x38uLL), 0x38uLL));
  v34 = vbicq_s8(v32, v31);
  if ((v28 & 0x10) != 0)
  {
    v35 = 600 * v26;
  }

  else
  {
    v35 = 0;
  }

  return vaddvq_s64(vaddq_s64(v34, v33)) + v25 + v27 + v35 + *(a3 + 48) + v26 * *(a3 + 56);
}

uint64_t vtCompressionSession_handleSessionTerminatedNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t VTCompressionSessionCreateWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, uint64_t *a11)
{
  v99 = *MEMORY[0x1E69E9840];
  v81 = 0;
  if (!a11 || a2 < 1 || a3 <= 0 || (*a11 = 0, MEMORY[0x193AE3010](&VTCompressionSessionGetTypeID_sRegisterVTCompressionSessionOnce, RegisterVTCompressionSession), (Instance = _CFRuntimeCreateInstance()) == 0))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v18 = Instance;
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v20 = CFRetain(Value);
LABEL_12:
    cf = v20;
    goto LABEL_13;
  }

  v22 = getpid();
  proc_name(v22, buffer, 0x21u);
  LOBYTE(v84) = 0;
  if (LOBYTE(buffer[0]))
  {
    v23 = *MEMORY[0x1E695E480];
    v24 = strnlen(buffer, 0x21uLL);
    v20 = CFStringCreateWithBytes(v23, buffer, v24, 0x8000100u, 0);
    goto LABEL_12;
  }

  cf = 0;
LABEL_13:
  v78 = a5;
  if (a5)
  {
    v25 = CFDictionaryGetValue(a5, @"RequiredLowLatency");
    if (v25)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v25))
      {
        LODWORD(v25) = CFBooleanGetValue(v25);
      }

      else
      {
        LODWORD(v25) = 0;
      }

      a5 = v78;
    }

    v27 = CFDictionaryGetValue(a5, @"EnableLowLatencyRateControl");
    if (v27)
    {
      v28 = v27;
      v29 = CFBooleanGetTypeID();
      if (v29 == CFGetTypeID(v28))
      {
        if (v25)
        {
          LOBYTE(v25) = 1;
        }

        else
        {
          LODWORD(v25) = CFBooleanGetValue(v28) != 0;
        }
      }
    }

    a5 = v78;
  }

  else
  {
    LOBYTE(v25) = 0;
  }

  *(v18 + 850) = v25;
  if (a10)
  {
    v30 = CFDictionaryGetValue(a10, @"AllowClientProcessEncode") != *MEMORY[0x1E695E4D0];
  }

  else
  {
    v30 = 1;
  }

  if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
  {
    if (FigServer_IsVideocodecd())
    {
      goto LABEL_43;
    }
  }

  else if (FigServer_IsServerProcess())
  {
    goto LABEL_43;
  }

  v31 = v30 && VTShouldRunVideoEncodersInProcess() == 0;
  if (FigDebugIsInternalBuild())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v31)
  {
    v32 = *(v18 + 850);
    v33 = VTCompressionSessionRemote_Create(v18, a1, a2, a3, a4, a5, a6, a7, cf, a8, a9, (v18 + 24));
    if (!v33)
    {
      MutableCopy = 0;
      if (v32)
      {
        *(v18 + 864) = VTRateControlReactionObserverCreate(v18, vtRateControlReactionObserverCallback);
      }

      v62 = cf;
      goto LABEL_124;
    }

    v47 = v33;
    MutableCopy = 0;
    goto LABEL_137;
  }

LABEL_43:
  buffer[0] = 0;
  if (VTRateControlGetVersion(buffer))
  {
    v35 = 0;
  }

  else
  {
    v35 = buffer[0] > 0x6C;
  }

  v36 = v35;
  *(v18 + 851) = v36;
  if (*(v18 + 850) || v36)
  {
    CFGetAllocator(*MEMORY[0x1E695E480]);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      if (!VTRateControlSessionCreate(a1, a2, a3, a4, MutableCopy, a6, 0, vtRateControlSessionBeforeEncodeCallback, vtCompressionSessionCompleteFramesCallback, (v18 + 856)))
      {
        *(*(v18 + 856) + 24) = v18;
        if (*(v18 + 850) && !CFDictionaryGetValue(MutableCopy, @"EncoderUsage"))
        {
          FigCFDictionarySetInt32();
        }

        v38 = MutableCopy;
        goto LABEL_59;
      }

      VTCompressionSessionCreateWithOptions_cold_1(buffer);
      v47 = LODWORD(buffer[0]);
    }

    else
    {
      VTCompressionSessionCreateWithOptions_cold_4();
      v47 = 0;
    }

LABEL_137:
    v62 = cf;
    goto LABEL_127;
  }

  MutableCopy = 0;
  v37 = 0;
  v38 = a5;
  if (a5)
  {
LABEL_59:
    v37 = CFRetain(v38);
  }

  *(v18 + 56) = v37;
  *(v18 + 40) = a2;
  *(v18 + 44) = a3;
  *(v18 + 48) = a4;
  if (a6)
  {
    v39 = CFRetain(a6);
  }

  else
  {
    v39 = 0;
  }

  *(v18 + 64) = v39;
  *(v18 + 80) = a8;
  *(v18 + 88) = a9;
  *(v18 + 104) = FigSimpleMutexCreate();
  *(v18 + 112) = 1;
  *(v18 + 120) = 0;
  *(v18 + 504) = FigSimpleMutexCreate();
  *(v18 + 520) = 1;
  *(v18 + 256) = 1;
  v40 = *(v18 + 480);
  VTEncoderSessionCreateTimeStampQueue(v18 + 424);
  *(v18 + 328) = 0;
  *(v18 + 336) = 0;
  *(v18 + 296) = 0;
  *(v18 + 304) = vtCompressionSessionCompressionWork;
  *(v18 + 280) = dispatch_group_create();
  *(v18 + 288) = 0;
  *(v18 + 568) = 1;
  *(v18 + 572) = 0;
  *(v18 + 16) = 0;
  *(v18 + 272) = 0;
  if (vtCompressionSessionStoreHDRDefaultWrites_onceToken != -1)
  {
    VTCompressionSessionCreateWithOptions_cold_2();
  }

  v41 = vtCompressionSessionStoreHDRDefaultWrites_hdrEnabled;
  *(v18 + 593) = vtCompressionSessionStoreHDRDefaultWrites_hdrEnabled;
  *(v18 + 594) = vtCompressionSessionStoreHDRDefaultWrites_hdrAlwaysGenerateStats;
  *(v18 + 689) = vtCompressionSessionStoreHDRDefaultWrites_enableAmbientViewingEnvironment;
  *(v18 + 692) = vtCompressionSessionStoreHDRDefaultWrites_generateDM4;
  *(v18 + 694) = vtCompressionSessionStoreHDRDefaultWrites_hdr10PlusExtractionEnabled;
  *(v18 + 693) = vtCompressionSessionStoreHDRDefaultWrites_sdrPreservationEnabled;
  if (a4 <= 1634743415)
  {
    if (a4 == 1634742376 || a4 == 1634742888)
    {
      goto LABEL_77;
    }

    v42 = 13416;
  }

  else
  {
    if ((a4 - 1634755432) <= 0xB && ((1 << (a4 - 104)) & 0x8C1) != 0 || (a4 - 1634759272) <= 6 && ((1 << (a4 - 104)) & 0x51) != 0)
    {
      goto LABEL_77;
    }

    v42 = 13432;
  }

  if (a4 != (v42 | 0x61700000) && v41)
  {
    v43 = 0;
    goto LABEL_78;
  }

LABEL_77:
  v43 = *MEMORY[0x1E695E4C0];
LABEL_78:
  *(v18 + 616) = v43;
  *(v18 + 652) = 0;
  *(v18 + 656) = 0;
  v44 = MEMORY[0x1E6960C70];
  *(v18 + 628) = *MEMORY[0x1E6960C70];
  *(v18 + 644) = *(v44 + 16);
  *(v18 + 600) = 0;
  *(v18 + 608) = 0;
  *(v18 + 690) = 0;
  *(v18 + 728) = 0;
  *(v18 + 848) = 256;
  *(v18 + 672) = 0u;
  *(v18 + 704) = 0u;
  *(v18 + 717) = 0;
  v45 = CFGetAllocator(v18);
  v46 = (v18 + 496);
  v47 = VTSelectAndCreateVideoEncoderInstanceInternal(a4, v45, 0, *(v18 + 56), v40, (v18 + 472), &v81, (v18 + 480), (v18 + 496));
  if (v47)
  {
LABEL_98:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v62 = cf;
    goto LABEL_127;
  }

  while (1)
  {
    *(v18 + 424) = v18;
    FigCFDictionaryGetBooleanIfPresent();
    v48 = *(v18 + 56);
    if (v48)
    {
      v49 = CFDictionaryGetValue(v48, @"EncoderUsage");
      if (v49)
      {
        v50 = v49;
        v51 = *(v18 + 472);
        v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v52)
        {
          v52(v51, @"EncoderUsage", v50);
        }
      }
    }

    v53 = *(v18 + 472);
    v54 = *(v18 + 40);
    v55 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v55)
    {
      v56 = -12782;
      goto LABEL_87;
    }

    v56 = v55(v53, v18 + 424, v54, a7);
    if (!v56)
    {
      break;
    }

LABEL_87:
    if (v47)
    {
      v47 = v47;
    }

    else
    {
      v47 = v56;
    }

    v57 = *(v18 + 472);
    v58 = *(v18 + 480);
    if (v57)
    {
      v59 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v59)
      {
        v59(v57);
      }

      v60 = *(v18 + 472);
      if (v60)
      {
        CFRelease(v60);
        *(v18 + 472) = 0;
      }
    }

    if (*v46)
    {
      CFRelease(*v46);
      *v46 = 0;
    }

    v61 = CFGetAllocator(v18);
    if (VTSelectAndCreateVideoEncoderInstanceInternal(a4, v61, 0, *(v18 + 56), v58 + 1, (v18 + 472), &v81, (v18 + 480), (v18 + 496)))
    {
      goto LABEL_98;
    }
  }

  buffer[0] = 0;
  v63 = *MEMORY[0x1E695E480];
  if (VTCompressionSessionCopyProperty(v18, @"UsingHardwareAcceleratedVideoEncoder", *MEMORY[0x1E695E480], buffer))
  {
    v65 = 1;
  }

  else
  {
    v65 = buffer[0] == 0;
  }

  if (v65 || (v66 = CFGetTypeID(buffer[0]), v66 != CFBooleanGetTypeID()))
  {
    *(v18 + 888) = 0;
    v62 = cf;
    v67 = v78;
  }

  else
  {
    v62 = cf;
    v67 = v78;
    if (CFEqual(*MEMORY[0x1E695E4D0], buffer[0]))
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }

    *(v18 + 888) = v68;
  }

  if (buffer[0])
  {
    CFRelease(buffer[0]);
  }

  *(v18 + 592) = 0;
  *(v18 + 368) = 0;
  *(v18 + 376) = 0;
  *(v18 + 384) = FigSemaphoreCreate();
  *(v18 + 312) = FigSemaphoreCreate();
  *(v18 + 352) = FigSemaphoreCreate();
  *(v18 + 392) = FigSemaphoreCreate();
  *(v18 + 320) = FigSemaphoreCreate();
  *(v18 + 360) = FigSemaphoreCreate();
  if (v62)
  {
    v69 = CFRetain(v62);
  }

  else
  {
    v69 = 0;
  }

  *(v18 + 904) = v69;
  v82[0] = @"EnableHardwareAcceleratedVideoEncoder";
  v82[1] = @"RequireHardwareAcceleratedVideoEncoder";
  v82[2] = @"EncoderID";
  buffer[0] = @"ProfileLevel";
  buffer[1] = @"ColorPrimaries";
  buffer[2] = @"TransferFunction";
  buffer[3] = @"YCbCrMatrix";
  v84 = @"AverageBitRate";
  v85 = @"ExpectedFrameRate";
  v86 = @"Quality";
  v87 = @"RealTime";
  v88 = @"MaximizePowerEfficiency";
  v89 = @"PrioritizeEncodingSpeedOverQuality";
  v90 = @"ConstantBitRate";
  v91 = @"AllowFrameReordering";
  v92 = @"MaxKeyFrameIntervalDuration";
  v93 = @"AllowTemporalCompression";
  v94 = @"BaseLayerFrameRate";
  v95 = @"OutputBitDepth";
  v96 = @"EncoderID";
  v97 = @"DataRateLimits";
  v98 = @"H264EntropyMode";
  Mutable = CFSetCreateMutable(v63, 3, MEMORY[0x1E695E9F8]);
  *(v18 + 912) = Mutable;
  if (!Mutable)
  {
    goto LABEL_139;
  }

  for (i = 0; i != 3; ++i)
  {
    CFSetAddValue(*(v18 + 912), v82[i]);
  }

  v72 = CFSetCreateMutable(v63, 19, MEMORY[0x1E695E9F8]);
  *(v18 + 920) = v72;
  if (!v72)
  {
    goto LABEL_139;
  }

  for (j = 0; j != 19; ++j)
  {
    CFSetAddValue(*(v18 + 920), buffer[j]);
  }

  v74 = CFDictionaryCreateMutable(v63, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v18 + 928) = v74;
  if (!v74)
  {
LABEL_139:
    VTCompressionSessionCreateWithOptions_cold_3();
    v62 = cf;
    v67 = v78;
  }

  if (v67)
  {
    CFDictionaryApplyFunction(v67, vtCoreAnalyticsSaveTrackedVideoEncoderSpecificationProperty, v18);
  }

LABEL_124:
  if (*(v18 + 472) && (CMNotificationCenterGetDefaultLocalCenter(), v75 = FigNotificationCenterAddWeakListener(), v75))
  {
    v47 = v75;
  }

  else
  {
    v47 = 0;
    *(v18 + 896) = MEMORY[0x193AE2670]();
    *a11 = v18;
    v18 = 0;
  }

LABEL_127:
  if (v62)
  {
    CFRelease(v62);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v47;
}

void vtRateControlSessionBeforeEncodeCallback(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, char a9)
{
  v29 = 0;
  v28 = a1;
  if (!a1)
  {
    vtRateControlSessionBeforeEncodeCallback_cold_4(&context);
    v10 = 0;
    goto LABEL_24;
  }

  v10 = *a1;
  if (!*a1)
  {
    vtRateControlSessionBeforeEncodeCallback_cold_3(&context);
    goto LABEL_24;
  }

  if (*(v10 + 16) == 2)
  {
    vtRateControlSessionBeforeEncodeCallback_cold_2(&context);
LABEL_24:
    v23 = context;
    if (!context)
    {
LABEL_16:
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_15:
    vtCompressionSessionPipelineContextHandleError(a1, v23);
    goto LABEL_16;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(v10 + 128), a2);
  if (Value)
  {
    Value[4] = a8;
    *(Value + 40) = 1;
  }

  else
  {
    vtRateControlSessionBeforeEncodeCallback_cold_1();
  }

  FigSimpleMutexUnlock();
  if ((a9 & 1) == 0)
  {
    if (a7)
    {
      v19 = *(v10 + 472);
      context = v19;
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v20 || v20(v19, a7) == -12782)
      {
        DWORD2(context) = 0;
        CFDictionaryApplyFunction(a7, vtEncoderSetOneProperty, &context);
      }
    }

    ++*(v10 + 124);
    v21 = *(v10 + 472);
    v26 = *a4;
    v27 = *(a4 + 2);
    v24 = *a5;
    v25 = *(a5 + 2);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v22)
    {
      context = v26;
      v33 = v27;
      v30 = v24;
      v31 = v25;
      v23 = v22(v21, a2, a3, &context, &v30, a6, &v29);
      if (!v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = 4294954514;
    }

    goto LABEL_15;
  }

  VTEncoderSessionEmitEncodedFrame((v10 + 424), a2, 0, 2u, 0);
LABEL_17:
  if (*(a1 + 116))
  {
    FigSemaphoreSignal();
  }

LABEL_19:
  vtCompressionSessionPipelineContextInvalidate(&v28);
}

uint64_t vtCompressionSessionCompleteFramesCallback(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return vtCompressionSessionCompleteFramesCallback_cold_2();
  }

  if (*(v2 + 16) == 2)
  {
    return vtCompressionSessionCompleteFramesCallback_cold_1();
  }

  v3 = *(v2 + 472);
  v8 = *a2;
  v9 = *(a2 + 2);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 24);
  if (v7)
  {
    v10 = v8;
    v11 = v9;
    return v7(v3, &v10);
  }

  return result;
}

uint64_t VTEncoderSessionCreateTimeStampQueue(uint64_t a1)
{
  callBacks.version = 0;
  callBacks.retain = vtTimeStampRetain;
  callBacks.release = vtTimeStampRelease;
  callBacks.copyDescription = vtTimeStampCopyDescription;
  callBacks.equal = 0;
  v2 = *a1;
  if (v2)
  {
    v3 = CFGetAllocator(v2);
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
  }

  v4 = CFArrayCreateMutable(v3, 0, &callBacks);
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = FigSimpleMutexCreate();
    result = 0;
    *(a1 + 24) = v5;
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

void vtCompressionSessionCompressionWork(uint64_t a1)
{
  *(&v80[7] + 4) = *MEMORY[0x1E69E9840];
  v65 = a1;
  v64 = 0;
  if (!a1)
  {
    vtCompressionSessionCompressionWork_cold_10();
  }

  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    vtCompressionSessionCompressionWork_cold_9();
  }

  if (*(v2 + 16) == 2)
  {
    vtCompressionSessionCompressionWork_cold_8(time1);
LABEL_153:
    x_low = *time1;
    goto LABEL_39;
  }

  CVPixelBufferAtIndex = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 32) == 0)
  {
    vtCompressionSessionCompressionWork_cold_1(time1);
    goto LABEL_153;
  }

  theDict = *(a1 + 48);
  v74 = *(a1 + 56);
  v62 = *(a1 + 68);
  v75 = *(a1 + 64);
  v60 = *(a1 + 72);
  v72 = *(a1 + 80);
  v73 = *(a1 + 88);
  v5 = *(a1 + 104);
  if (!v5)
  {
    vtCompressionSessionCompressionWork_cold_7(time1);
    goto LABEL_153;
  }

  v6 = *(a1 + 92);
  v61 = *(a1 + 96);
  v7 = *(v2 + 616);
  v8 = *MEMORY[0x1E695E4C0];
  v9 = MEMORY[0x1E695E4D0];
  if (v7 != *MEMORY[0x1E695E4C0])
  {
    if (vtCompressionSessionIsHLG())
    {
      if (vtCompressionSessionIsHEVC10BitCompatible(v2))
      {
        v7 = *v9;
        *(v2 + 616) = *v9;
      }

      else
      {
        *(v2 + 616) = v8;
        v7 = v8;
      }
    }

    else
    {
      v7 = *(v2 + 616);
    }
  }

  v59 = v6;
  if (*v9 != v7)
  {
    v10 = 0;
    v11 = 0;
LABEL_14:
    x_low = 0;
    goto LABEL_15;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(v2 + 128), v5);
  if (Value)
  {
    v19 = Value[1];
    v18 = Value[2];
    FigSimpleMutexUnlock();
    if (CVPixelBufferAtIndex)
    {
      goto LABEL_50;
    }

    goto LABEL_24;
  }

  if (!vtCompressionSessionCompressionWork_cold_2(v2 + 104, time1))
  {
    x_low = *time1;
    goto LABEL_44;
  }

  v18 = 0;
  v19 = 0;
  if (!CVPixelBufferAtIndex)
  {
LABEL_24:
    if (v4)
    {
      if (CMTaggedBufferGroupGetCount(v4) < 1)
      {
        CVPixelBufferAtIndex = 0;
      }

      else
      {
        CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      }
    }
  }

LABEL_50:
  v70 = 0;
  cf = 0;
  v24 = *(v2 + 720);
  if (!v24)
  {
    vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration(v2, 1);
    v24 = *(v2 + 720);
  }

  if ((v24 - 1) >= 2)
  {
    if (v24 != 3)
    {
      if (v24 == 4 && !*(v2 + 704))
      {
        v25 = CVBufferCopyAttachment(CVPixelBufferAtIndex, *MEMORY[0x1E6965CD8], 0);
        if (v25)
        {
          v26 = 0;
          *(v2 + 704) = v25;
LABEL_125:
          x_low = 0;
          v11 = v70;
          v10 = cf;
          v70 = 0;
          cf = 0;
          goto LABEL_126;
        }
      }

LABEL_124:
      v26 = 0;
      goto LABEL_125;
    }

    if (!*(v2 + 216))
    {
      v29 = CVBufferCopyAttachment(CVPixelBufferAtIndex, @"MasteringDisplayColorVolume", 0);
      *(v2 + 216) = v29;
      if (!v29)
      {
        *time1 = xmmword_18FECDB60;
        *&time1[16] = 0x500000080969800;
        *(v2 + 216) = CFDataCreate(*MEMORY[0x1E695E480], time1, 24);
      }
    }

    if (!*(v2 + 224))
    {
      v30 = CVBufferCopyAttachment(CVPixelBufferAtIndex, @"ContentLightLevelInfo", 0);
      *(v2 + 224) = v30;
      if (!v30)
      {
        *time1 = -1878923261;
        *(v2 + 224) = CFDataCreate(*MEMORY[0x1E695E480], time1, 4);
      }
    }

    if (*(v2 + 652))
    {
      if (v18)
      {
        v31 = CFRetain(v18);
      }

      else
      {
        v31 = 0;
      }

      v70 = v31;
      v32 = v31 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (!*(v2 + 624) || *(v2 + 693) == 0 || !v32)
    {
      goto LABEL_124;
    }

    DataFromStatisticsDictionary = VTHDRMetadataGenerationSessionCreateSDRPreservationStaticData(*(v2 + 656), &v70);
    v26 = 0;
    if (!DataFromStatisticsDictionary)
    {
      goto LABEL_125;
    }

    goto LABEL_112;
  }

  v58 = v19;
  if (v6)
  {
    *time1 = *MEMORY[0x1E6960CC0];
    *&time1[16] = *(MEMORY[0x1E6960CC0] + 16);
    time2.origin.x = v72;
    *&time2.origin.y = __PAIR64__(v6, v73);
    time2.size.width = v61;
    if (CMTimeCompare(time1, &time2) < 0)
    {
      *time1 = v72;
      *&time1[8] = __PAIR64__(v6, v73);
      *&time1[16] = v61;
      v28 = 1.0 / CMTimeGetSeconds(time1);
      VTHDRMetadataGenerationSessionSetFramesPerSecond(*(v2 + 656), v28);
LABEL_76:
      if (v28 > 0.0)
      {
        v33 = *(v2 + 728);
        v34 = v33 == 0.0;
        if (v33 <= 0.0)
        {
          v35 = -v28;
          if (!v34)
          {
            v35 = v28;
          }

          *(v2 + 728) = v35;
        }
      }

      goto LABEL_81;
    }
  }

  if (v62)
  {
    v27 = (v2 + 628);
    v28 = 0.0;
    if (*(v2 + 640))
    {
      memset(time1, 0, 24);
      time2.origin.x = v74;
      *&time2.origin.y = __PAIR64__(v62, v75);
      time2.size.width = v60;
      *&rhs.value = *v27;
      rhs.epoch = *(v2 + 644);
      CMTimeSubtract(time1, &time2, &rhs);
      time2.origin = *MEMORY[0x1E6960CC0];
      time2.size.width = *(MEMORY[0x1E6960CC0] + 16);
      rhs = *time1;
      if (CMTimeCompare(&time2, &rhs) < 0)
      {
        time2.origin = *time1;
        time2.size.width = *&time1[16];
        v28 = 1.0 / CMTimeGetSeconds(&time2);
        VTHDRMetadataGenerationSessionSetFramesPerSecond(*(v2 + 656), v28);
      }
    }

    *v27 = v74;
    *(v2 + 636) = v75;
    *(v2 + 640) = v62;
    *(v2 + 644) = v60;
    goto LABEL_76;
  }

LABEL_81:
  Width = CVPixelBufferGetWidth(CVPixelBufferAtIndex);
  Height = CVPixelBufferGetHeight(CVPixelBufferAtIndex);
  v38 = *MEMORY[0x1E6965F10];
  v26 = CVBufferCopyAttachment(CVPixelBufferAtIndex, *MEMORY[0x1E6965F10], 0);
  if (*(v2 + 594))
  {
    goto LABEL_82;
  }

  if (theDict)
  {
    v43 = CFDictionaryGetValue(theDict, @"HDRImageStatistics");
    if (v43)
    {
      DataFromStatisticsDictionary = VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary(*(v2 + 656), *(v2 + 720) == 2, *(v2 + 692), v43, 0, &cf, Width, Height);
      if (DataFromStatisticsDictionary)
      {
        goto LABEL_112;
      }
    }
  }

  if (!*(v2 + 652))
  {
LABEL_82:
    if (cf)
    {
      goto LABEL_125;
    }
  }

  else
  {
    if (cf)
    {
      goto LABEL_125;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v44 = *MEMORY[0x1E6965E90];
      v45 = CVBufferCopyAttachment(CVPixelBufferAtIndex, *MEMORY[0x1E6965E90], 0);
      if (v45)
      {
        v46 = v45;
        CFDictionarySetValue(Mutable, v44, v45);
        CFRelease(v46);
      }

      v47 = CVBufferCopyAttachment(CVPixelBufferAtIndex, @"Filtered", 0);
      if (v47)
      {
        v48 = v47;
        CFDictionarySetValue(Mutable, @"Filtered", v47);
        CFRelease(v48);
      }

      v49 = *MEMORY[0x1E6965E98];
      v50 = CVBufferCopyAttachment(CVPixelBufferAtIndex, *MEMORY[0x1E6965E98], 0);
      if (v50)
      {
        v51 = v50;
        CFDictionarySetValue(Mutable, v49, v50);
        CFRelease(v51);
      }

      v52 = CVBufferCopyAttachment(CVPixelBufferAtIndex, @"Raw", 0);
      if (v52)
      {
        v53 = v52;
        CFDictionarySetValue(Mutable, @"Raw", v52);
        CFRelease(v53);
      }

      if (CFDictionaryGetCount(Mutable))
      {
        if (v26)
        {
          CFDictionarySetValue(Mutable, v38, v26);
        }

        x_low = VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary(*(v2 + 656), *(v2 + 720) == 2, *(v2 + 692), Mutable, 0, &cf, Width, Height);
        CFRelease(Mutable);
        if (x_low)
        {
          goto LABEL_113;
        }
      }

      else
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      vtCompressionSessionCompressionWork_cold_3();
    }

    v56 = v58;
    if (cf)
    {
      goto LABEL_125;
    }

    if (v58)
    {
      v56 = CFRetain(v58);
    }

    cf = v56;
    if (v56)
    {
      goto LABEL_125;
    }
  }

  LODWORD(rhs.value) = 0;
  v68 = 0;
  v67 = 0.0;
  memset(v80 + 4, 0, 44);
  v77 = 0u;
  v78 = 0;
  memset(time1, 0, sizeof(time1));
  BYTE2(v80[5]) = 1;
  v79 = Width;
  *v80 = Height;
  LOBYTE(v80[5]) = *(v2 + 692);
  v39 = *(v2 + 720);
  if (v39 == 2)
  {
    v41 = *(v2 + 656);
    v42 = 1;
    goto LABEL_111;
  }

  if (v39 != 1)
  {
    vtCompressionSessionCompressionWork_cold_4(&time2);
    x_low = LODWORD(time2.origin.x);
    goto LABEL_113;
  }

  memset(&time2, 0, sizeof(time2));
  DataFromStatisticsDictionary = VTHDRImageStatisticsGenerationSessionCreateStatistics(*(v2 + 672), CVPixelBufferAtIndex, &v68, &rhs, &v68 + 4, &v67);
  if (!DataFromStatisticsDictionary)
  {
    *time1 = *&rhs.value;
    *&time1[8] = *(&v68 + 1);
    *&time1[16] = *&v68;
    if (*(v2 + 692))
    {
      *&time1[24] = v67;
      *&v77 = *&v68;
      BYTE4(v80[5]) = 1;
    }

    if (v26)
    {
      CGRectMakeWithDictionaryRepresentation(v26, &time2);
      *&v80[1] = time2;
      BYTE5(v80[5]) = 1;
    }

    BYTE2(v80[5]) = 1;
    v41 = *(v2 + 656);
    v42 = 0;
LABEL_111:
    DataFromStatisticsDictionary = VTHDRMetadataGenerationSessionCreateDataFromStatistics(v41, v42, 1, time1, 0, &cf);
    if (!DataFromStatisticsDictionary)
    {
      goto LABEL_125;
    }
  }

LABEL_112:
  x_low = DataFromStatisticsDictionary;
LABEL_113:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v10 = 0;
  v11 = 0;
LABEL_126:
  if (v26)
  {
    CFRelease(v26);
  }

  if (x_low)
  {
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  v54 = CFDictionaryGetValue(*(v2 + 128), v5);
  if (v54)
  {
    vtCompressionSessionCompressionWork_cold_6(v54, v10, v2 + 104, v11);
  }

  else if (!vtCompressionSessionCompressionWork_cold_5(v2 + 104, time1))
  {
    x_low = *time1;
    goto LABEL_35;
  }

  if (!*(v2 + 689))
  {
    goto LABEL_14;
  }

  x_low = 0;
  if (*(v2 + 688) && theDict)
  {
    if (!CFDictionaryContainsKey(theDict, @"AmbientViewingEnvironment"))
    {
      goto LABEL_136;
    }

    v55 = CFDictionaryGetValue(theDict, @"AmbientViewingEnvironment");
    if (FigCFEqual())
    {
      goto LABEL_136;
    }

    updated = vtCompressionSessionUpdateAmbientViewingEnvironment(v2, v55);
    if (updated)
    {
      goto LABEL_33;
    }

    if (*(v2 + 690))
    {
      x_low = VTVideoEncoderSetProperty(*(v2 + 472), @"AmbientViewingEnvironment", v55);
    }

    else
    {
LABEL_136:
      x_low = 0;
    }
  }

LABEL_15:
  if (!*(v2 + 936))
  {
    *(v2 + 936) = CVBufferCopyAttachment(CVPixelBufferAtIndex, @"LogTransferFunction", 0);
  }

  if (v4)
  {
    if (!*(v2 + 850))
    {
      ++*(v2 + 124);
      v13 = *(v2 + 472);
      v14 = *(CMBaseObjectGetVTable() + 16);
      if (*v14 > 3uLL)
      {
        v15 = v14[21];
        if (v15)
        {
          *time1 = v74;
          *&time1[8] = __PAIR64__(v62, v75);
          *&time1[16] = v60;
          time2.origin.x = v72;
          *&time2.origin.y = __PAIR64__(v59, v73);
          time2.size.width = v61;
          updated = v15(v13, v5, v4, time1, &time2, theDict, &v64);
LABEL_33:
          x_low = updated;
          goto LABEL_35;
        }
      }

LABEL_34:
      x_low = 4294954514;
    }
  }

  else
  {
    if (!*(v2 + 850))
    {
      goto LABEL_31;
    }

    v20 = *(v2 + 856);
    *(v20 + 72) = v1;
    *time1 = v74;
    *&time1[8] = __PAIR64__(v62, v75);
    *&time1[16] = v60;
    time2.origin.x = v72;
    *&time2.origin.y = __PAIR64__(v59, v73);
    time2.size.width = v61;
    updated = VTRateControlSessionBeforeEncodeFrame(v20, v5, CVPixelBufferAtIndex, time1, &time2);
    if (updated)
    {
      goto LABEL_33;
    }

    if (!*(v2 + 850))
    {
LABEL_31:
      ++*(v2 + 124);
      v21 = *(v2 + 472);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        *time1 = v74;
        *&time1[8] = __PAIR64__(v62, v75);
        *&time1[16] = v60;
        time2.origin.x = v72;
        *&time2.origin.y = __PAIR64__(v59, v73);
        time2.size.width = v61;
        updated = v22(v21, v5, CVPixelBufferAtIndex, time1, &time2, theDict, &v64);
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    x_low = 0;
  }

LABEL_35:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_39:
  if (*(v2 + 850))
  {
    v23 = x_low == 0;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    v1 = v65;
    if (!x_low)
    {
LABEL_45:
      if (*(v1 + 116))
      {
        FigSemaphoreSignal();
      }

      vtCompressionSessionPipelineContextInvalidate(&v65);
      return;
    }

LABEL_44:
    vtCompressionSessionPipelineContextHandleError(v1, x_low);
    goto LABEL_45;
  }
}