uint64_t fcctx_createColorRGBAFromColorStyleDynamicProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovc_preScaleBuffer(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, CVPixelBufferPoolRef *a5, CVPixelBufferRef *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  pixelBufferOut = 0;
  poolOut = 0;
  theDict = 0;
  if (!a1 || !a4 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v33 = FigSignalErrorAtGM();
    goto LABEL_42;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v22 = MEMORY[0x1E6966130];
  if (!*a5)
  {
    goto LABEL_21;
  }

  PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(*a5);
  if (!PixelBufferAttributes || (v24 = PixelBufferAttributes, (Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966208])) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
LABEL_49:
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  valuePtr = 0;
  v75 = 0;
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
  v26 = CFDictionaryGetValue(v24, *MEMORY[0x1E69660B8]);
  if (!v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_49;
  }

  CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
  v27 = CFDictionaryGetValue(v24, *v22);
  if (!v27)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    goto LABEL_49;
  }

  CFNumberGetValue(v27, kCFNumberSInt32Type, &v75);
  if (a2 != SHIDWORD(valuePtr) || a3 != valuePtr || v75 != PixelFormatType)
  {
LABEL_17:
    if (*a5)
    {
      CFRelease(*a5);
      *a5 = 0;
    }

    goto LABEL_21;
  }

  v30 = *a5;
  if (*a5)
  {
    v31 = 0;
    v32 = *MEMORY[0x1E695E480];
    goto LABEL_29;
  }

LABEL_21:
  v32 = *MEMORY[0x1E695E480];
  v33 = ovc_createPixelBufferAttributesDictionary(*MEMORY[0x1E695E480], &theDict);
  if (v33)
  {
LABEL_42:
    v65 = v33;
    v31 = 0;
    goto LABEL_32;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v32, 0, theDict);
  v31 = MutableCopy;
  if (!MutableCopy || (v42 = OUTLINED_FUNCTION_3_144(MutableCopy, v35, v36, v37, v38, v39, v40, v41, v10, v69, a2)) == 0 || (v43 = v42, CFDictionarySetValue(v31, *MEMORY[0x1E6966208], v42), CFRelease(v43), (v52 = OUTLINED_FUNCTION_3_144(v44, v45, v46, v47, v48, v49, v50, v51, v67, v70, a3)) == 0) || (v53 = v52, CFDictionarySetValue(v31, *MEMORY[0x1E69660B8], v52), CFRelease(v53), (v62 = OUTLINED_FUNCTION_3_144(v54, v55, v56, v57, v58, v59, v60, v61, v68, v71, PixelFormatType)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    v64 = FigSignalErrorAtGM();
    goto LABEL_44;
  }

  v63 = v62;
  CFDictionarySetValue(v31, *MEMORY[0x1E6966130], v62);
  CFRelease(v63);
  v64 = VTCreatePixelBufferPoolAttributesWithName();
  if (v64)
  {
    goto LABEL_44;
  }

  v64 = CVPixelBufferPoolCreate(v32, 0, v31, &poolOut);
  if (v64)
  {
    goto LABEL_44;
  }

  v30 = poolOut;
  *a5 = poolOut;
  poolOut = 0;
LABEL_29:
  v64 = CVPixelBufferPoolCreatePixelBuffer(v32, v30, &pixelBufferOut);
  if (v64)
  {
LABEL_44:
    v65 = v64;
    goto LABEL_32;
  }

  v65 = OVCBicubicPrescalerScalePixelBuffer(a4, a1, pixelBufferOut, a7, a8, a9, a10);
  if (!v65)
  {
    *a6 = pixelBufferOut;
    pixelBufferOut = 0;
  }

LABEL_32:
  if (poolOut)
  {
    CFRelease(poolOut);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v65;
}

uint64_t ovc_setupViewPortAndClear(uint64_t a1, uint64_t a2, uint64_t a3, GLfloat *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0u;
  v26 = 0u;
  v8 = OUTLINED_FUNCTION_4_140();
  glViewport(v8, v9, v10, v11);
  glEnable(0xC11u);
  v12 = OUTLINED_FUNCTION_4_140();
  glScissor(v12, v13, v14, v15);
  glClearColor(*a4, a4[1], a4[2], a4[3]);
  glClear(0x4000u);
  bvc_getCleanApertureRect(*(DerivedStorage + 488), *(DerivedStorage + 408), *(DerivedStorage + 416), v25.f64);
  v17 = v16;
  if (!v16)
  {
    v18.i64[0] = a2;
    v18.i64[1] = a3;
    v19 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v18)), vcvt_f32_f64(vcvtq_f64_u64(*(DerivedStorage + 408)))));
    v20 = vmulq_f64(v26, v19);
    v21 = vmulq_f64(v25, v19);
    v25 = v21;
    v26 = v20;
    v22 = v21.f64[1];
    v23 = v20.f64[1];
    v27 = CGRectIntegral(*(&v20 - 1));
    v25.f64[0] = v27.origin.x;
    v25.f64[1] = v27.origin.y;
    v26.f64[0] = v27.size.width;
    v26.f64[1] = v27.size.height;
    glScissor(v27.origin.x, v27.origin.y, v27.size.width, v27.size.height);
  }

  return v17;
}

uint64_t FigVideoCompositorCreateOpenGL_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t ovc_getPrescalingParameters_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_getPrescalingParameters_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_getPrescalingParameters_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_getPrescalingParameters_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_getPrescalingParameters_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_getPrescalingParameters_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t ovc_appendIntToArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __ovc_setNewInFlightEntry_block_invoke_2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovc_createAndConfigureGLProgram_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigTTMLBrCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLBr_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const __CFDictionary *FigDisplayModes_ExtractVSyncRateFromTimingMode(const __CFArray *a1, int a2, int *a3)
{
  if (!a1)
  {
    v7 = OUTLINED_FUNCTION_9_72();
    v15 = OUTLINED_FUNCTION_88_4(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26, v27, v28, SBYTE2(v28), BYTE3(v28), SHIDWORD(v28));
    if (OUTLINED_FUNCTION_77_0(v15))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v4 = lookupTimingModeByID(a1, a2);
  if (!v4)
  {
    v16 = OUTLINED_FUNCTION_9_72();
    v24 = OUTLINED_FUNCTION_88_4(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, SBYTE2(v28), BYTE3(v28), SHIDWORD(v28));
    if (OUTLINED_FUNCTION_77_0(v24))
    {
LABEL_10:
      OUTLINED_FUNCTION_10_71();
      OUTLINED_FUNCTION_8_81();
      _os_log_send_and_compose_impl();
    }

LABEL_11:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954516;
  }

  result = CFDictionaryGetValue(v4, @"VerticalAttributes");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"SyncRate");
    if (result)
    {
      UInt64 = FigCFNumberGetUInt64();
      result = 0;
      *a3 = UInt64 / 0x10000;
    }
  }

  return result;
}

void FigDisplayModes_BuildColorModesFromHDRMode(const void *a1, uint64_t a2, int a3, unsigned int a4, __CFDictionary **a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  setNumberInCFDictionary(Mutable, @"Score", a4);
  setNumberInCFDictionary(Mutable, @"ID", a3);
  if (a1 && !CFEqual(a1, @"SDR"))
  {
    if (CFEqual(a1, @"HDR10") || CFEqual(a1, @"HDR10+") || CFEqual(a1, @"DoVi") || (v10 = CFEqual(a1, @"HLG"), v10))
    {
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      v10 = FigCFDictionarySetInt();
    }

    v11 = OUTLINED_FUNCTION_12_66(v10, @"DynamicRange");
    if (v11)
    {
      if (!CFEqual(0, @"LimitedRange"))
      {
        CFEqual(0, @"FullRange");
      }

      v11 = FigCFDictionarySetInt();
    }

    v12 = OUTLINED_FUNCTION_12_66(v11, @"Gamut");
    if (v12)
    {
      if (!CFEqual(0, @"Gamut_PQ"))
      {
        CFEqual(0, @"Gamut_HLG");
      }

      v12 = FigCFDictionarySetInt();
    }

    v13 = OUTLINED_FUNCTION_12_66(v12, @"ColorSpace");
    if (v13)
    {
      if (!CFEqual(0, @"ColorSpace_HDR10"))
      {
        CFEqual(0, @"ColorSpace_DoVi");
      }

      v13 = FigCFDictionarySetInt();
    }

    if (OUTLINED_FUNCTION_12_66(v13, @"PixelFormat"))
    {
      if (!CFEqual(0, @"RGB") && !CFEqual(0, @"YCrCb420") && !CFEqual(0, @"YCrCb422"))
      {
        CFEqual(0, @"YCrCb444");
      }

      FigCFDictionarySetInt();
    }
  }

  if (a5)
  {
    *a5 = Mutable;
  }

  else if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t FigDisplayModes_ExtractDimensionsFromTimingMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_ExtractDimensionsFromTimingMode_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t getTimingModeDimensions_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t getTimingModeDimensions_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t getTimingModeDimensions_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t getTimingModeDimensions_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t getTimingModeDimensions_cold_5()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_ExtractOverscanInfoFromTimingMode_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_LookupTimingModeIDByIndex_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_LookupTimingModeIDByIndex_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_LookupTimingModeIDByIndex_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_5()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModeForTimingMode_cold_6()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t FigDisplayModes_CopyTimingModeAppendingPreferredUIScale_cold_4()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_1_24();
    OUTLINED_FUNCTION_192_0();
  }

  return OUTLINED_FUNCTION_0_194();
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTGetCGAffineTransformFrom3x3MatrixArray_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTCreate3x3MatrixArrayFromCGAffineTransform_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTCreate3x3MatrixArrayFromCGAffineTransform_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgs_AddCGFloatToArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fcgs_AddCGFloatToArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetTableCopyAsset_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetTableCopyAsset_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCopyAssetWithDownloadToken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCopyAssetWithDownloadToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAssetCopyAssetWithDownloadToken_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  if (a2 && a4)
  {
    if (_MergedGlobals_128 != -1)
    {
      OUTLINED_FUNCTION_2_171();
      dispatch_once_f(v15, v16, v17);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      v9 = dispatch_queue_create("com.apple.coremedia.oobtc_workqueue", 0);
      *(v8 + 24) = v9;
      if (v9)
      {
        *(v8 + 40) = CFRetain(a2);
        if (a3)
        {
          v10 = CFRetain(a3);
        }

        else
        {
          v10 = 0;
        }

        *(v8 + 48) = v10;
        *(v8 + 232) = 0;
        v11 = MEMORY[0x1E6960C70];
        v12 = *MEMORY[0x1E6960C70];
        *(v8 + 184) = *MEMORY[0x1E6960C70];
        v13 = *(v11 + 16);
        *(v8 + 200) = v13;
        *(v8 + 208) = v12;
        *(v8 + 224) = v13;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRegisterForBarrierSupport();
        result = 0;
        *a4 = v8;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        v18 = FigSignalErrorAtGM();
        CFRelease(v8);
        return v18;
      }
    }

    else
    {
      return 4294954434;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigOutOfBandTrackControllerSetProperty_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerSetProperty_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerSetProperty_cold_3()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerSetProperty_cold_4()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerSetProperty_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t oobtcontroller_updateNeroVideoMode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t oobtcontroller_updateNeroVideoMode_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t oobtcontroller_updateNeroVideoMode_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigOutOfBandTrackControllerPrepare_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerPrepare_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t FigOutOfBandTrackControllerPrepare_cold_3()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *v0 = result;
  return result;
}

uint64_t __FigOutOfBandTrackControllerPrepare_block_invoke_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCRABSCachePrimerCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigCRABSCachePrimerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABSCachePrimerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABSCachePrimerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCRABSCachePrimerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void _FigNeroTellOctaviaSinkAttachedStateChanged(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  cf = 0;
  v39 = 0;
  valuePtr = 0;
  v35 = 0;
  v36 = 0.0;
  if (!*(a1 + 24))
  {
    goto LABEL_34;
  }

  if (!*(a1 + 256))
  {
    NeroTransportSendAsyncMessage();
    goto LABEL_34;
  }

  if (*(a1 + 216) && *(a1 + 208))
  {
    FigGetCFPreferenceDoubleWithDefault();
    v3 = v2;
    if (v2 != 0.0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 320) = v3;
    v5 = v3 + 0.033;
    v36 = v5;
    v6 = *MEMORY[0x1E695E480];
    v7 = *MEMORY[0x1E695E498];
    v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a1 + 208), 56 * *(a1 + 216), *MEMORY[0x1E695E498]);
    if (v8)
    {
      v9 = v8;
      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"formats", v9);
        v12 = *(a1 + 224);
        if (!v12)
        {
LABEL_13:
          OUTLINED_FUNCTION_439();
          if (AudioUnitGetProperty(v15, v16, v17, v18, v19, v20))
          {
            Copy = CFStringCreateCopy(v6, @"Unknown HDMI Audio Device Name");
            cf = Copy;
          }

          else
          {
            Copy = cf;
          }

          CFDictionarySetValue(v11, @"deviceName", Copy);
          CFDictionarySetValue(v11, @"deviceUID", *(a1 + 256));
          OUTLINED_FUNCTION_439();
          if (AudioUnitGetProperty(v22, v23, v24, v25, v26, v27))
          {
            valuePtr = 0;
          }

          v28 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
          CFDictionarySetValue(v11, @"EDIDAC3Support", v28);
          v29 = _FigNeroPlayServerCopyAudioProperty();
          if (v29)
          {
            v30 = v29;
            CFDictionarySetValue(v11, @"PreferredAudioChannelLayout", v29);
            CFRelease(v30);
          }

          v31 = _FigNeroPlayServerCopyAudioProperty();
          if (v31)
          {
            v32 = v31;
            CFDictionarySetValue(v11, @"DefaultAudioChannelLayout", v31);
            CFRelease(v32);
          }

          v35 = 0x3FA47AE147AE147BLL;
          v36 = v5 + 0.04;
          v33 = CFNumberCreate(v6, kCFNumberFloat64Type, &v36);
          CFDictionarySetValue(v11, @"BufferAheadInterval", v33);
          v34 = CFNumberCreate(v6, kCFNumberFloat64Type, &v35);
          CFDictionarySetValue(v11, @"ScreenLatency", v34);
          if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
          {
            NeroTransportSendAsyncMessage();
          }

          if (v28)
          {
            CFRelease(v28);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          goto LABEL_30;
        }

        v13 = CFDataCreateWithBytesNoCopy(v6, v12, 56 * *(a1 + 232), v7);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(v11, @"inputFormats", v13);
          CFRelease(v14);
          goto LABEL_13;
        }
      }

LABEL_30:
      CFRelease(v9);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

LABEL_34:
  if (v39)
  {
    CFRelease(v39);
  }
}

uint64_t FigNeroPlayServerCreate(uint64_t a1, NSObject *a2, const void *a3, const void *a4, char a5, uint64_t *a6)
{
  if (_MergedGlobals_129 != -1)
  {
    dispatch_once(&_MergedGlobals_129, &__block_literal_global_113);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294950594;
  }

  v12 = Instance;
  *(Instance + 40) = a2;
  dispatch_retain(a2);
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 32) = v13;
  *(v12 + 192) = dispatch_semaphore_create(0);
  *(v12 + 24) = 0;
  if (a4)
  {
    v14 = CFRetain(a4);
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 16) = v14;
  *(v12 + 220) = a5;
  if (!*(v12 + 32))
  {
    outInstance = 0;
    *inDesc = xmmword_196E76740;
    *&inDesc[16] = 0;
    Next = AudioComponentFindNext(0, inDesc);
    if (Next)
    {
      v15 = AudioComponentInstanceNew(Next, &outInstance);
      v17 = outInstance;
      if (v15)
      {
        if (outInstance)
        {
          AudioComponentInstanceDispose(outInstance);
        }

        goto LABEL_22;
      }

      *(v12 + 48) = outInstance;
    }

    else
    {
      fig_log_get_emitter();
      v18 = FigSignalErrorAtGM();
      if (v18)
      {
LABEL_21:
        v15 = v18;
LABEL_22:
        v21 = *(v12 + 104);
        if (v21)
        {
          CFRelease(v21);
          *(v12 + 104) = 0;
        }

        v22 = *(v12 + 96);
        if (v22)
        {
          CFRelease(v22);
          *(v12 + 96) = 0;
        }

        v23 = *(v12 + 48);
        if (v23)
        {
          AudioComponentInstanceDispose(v23);
          *(v12 + 48) = 0;
        }

        goto LABEL_28;
      }

      v17 = *(v12 + 48);
    }

    inData[0] = _FigNeroPlayServerRenderProc;
    inData[1] = v12;
    v18 = AudioUnitSetProperty(v17, 0x17u, 1u, 0, inData, 0x10u);
    if (!v18)
    {
      v19 = *(v12 + 40);
      *inDesc = MEMORY[0x1E69E9820];
      *&inDesc[8] = 0x40000000;
      *&inDesc[16] = ___FigNeroPlayServerDeviceUIDChanged_block_invoke;
      v28 = &__block_descriptor_tmp_48;
      v29 = v12;
      dispatch_async(v19, inDesc);
      v20 = *MEMORY[0x1E695E480];
      v18 = CMSimpleQueueCreate(*MEMORY[0x1E695E480], 32, (v12 + 96));
      if (!v18)
      {
        v18 = CMSimpleQueueCreate(v20, 32, (v12 + 104));
        if (!v18)
        {
          goto LABEL_11;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_11:
  v15 = NeroTransportRegisterObject();
  if (v15)
  {
LABEL_28:
    CFRelease(v12);
    return v15;
  }

  *a6 = v12;
  return v15;
}

__CFData *_FigNeroPlayServerCopyAudioProperty()
{
  OUTLINED_FUNCTION_439();
  if (AudioUnitGetPropertyInfo(v0, v1, v2, v3, v4, 0))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = Mutable;
  if (Mutable)
  {
    CFDataIncreaseLength(Mutable, 0);
    if (CFDataGetMutableBytePtr(v5))
    {
      OUTLINED_FUNCTION_439();
      AudioUnitGetProperty(v7, v8, v9, v10, v11, v12);
    }
  }

  return v5;
}

uint64_t __FigNeroPlayServerCreate_block_invoke_2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __FigNeroPlayServerCreate_block_invoke_2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __FigNeroPlayServerCreate_block_invoke_2_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __FigNeroPlayServerCreate_block_invoke_2_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigManifoldCreateForWebVTT(CFAllocatorRef Default, CMBlockBufferRef theBuffer, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!theBuffer)
  {
    goto LABEL_12;
  }

  if (CMBlockBufferGetDataLength(theBuffer) < 0xA)
  {
    v12 = -16044;
    goto LABEL_4;
  }

  returnedPointerOut = 0;
  v12 = CMBlockBufferAccessDataBytes(theBuffer, 0, 0xAuLL, temporaryBlock, &returnedPointerOut);
  if (v12)
  {
LABEL_4:
    v13 = 1;
    v14 = 1;
LABEL_5:
    v15 = -16044;
    v16 = v13;
    v17 = v12;
    goto LABEL_7;
  }

  v18 = WebVTTBufferLooksLikeWebVTTFile(returnedPointerOut, 0xAuLL);
  v13 = 0;
  v12 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v19 = v18;
  v14 = !v18;
  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_7:
  if (v16)
  {
    v20 = v17;
  }

  else
  {
    v20 = v15;
  }

  if ((v16 & 1) == 0 && !v14)
  {
LABEL_12:
    FigManifoldGetClassID();
    v21 = CMDerivedObjectCreate();
    if (v21)
    {
      return v21;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!Default)
    {
      Default = CFAllocatorGetDefault();
    }

    *DerivedStorage = CFRetain(Default);
    *(DerivedStorage + 80) = a3;
    *(DerivedStorage + 88) = a4;
    *(DerivedStorage + 96) = a5;
    *(DerivedStorage + 64) = 200;
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 120) = 0;
    v23 = MEMORY[0x1E6960C70];
    v24 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 144) = *MEMORY[0x1E6960C70];
    v25 = *(v23 + 16);
    *(DerivedStorage + 160) = v25;
    *(DerivedStorage + 168) = v24;
    *(DerivedStorage + 184) = v25;
    v26 = FigReentrantMutexCreate();
    *(DerivedStorage + 16) = v26;
    if (v26)
    {
      v20 = WebVTTParserCreate(0, wvmHeaderCallback, wvmSampleCallback, 0, (DerivedStorage + 104));
      if (!v20)
      {
        *a6 = 0;
        return v20;
      }
    }

    else
    {
      fig_log_get_emitter();
      v20 = FigSignalErrorAtGM();
    }

    CFRelease(0);
  }

  return v20;
}

uint64_t wvmCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_69();
  if (v8)
  {
    v10 = 4294954511;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"FMFD_ParserState"))
  {
    valuePtr = 2 * (*(v4 + 9) != 0);
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"FMFD_Type"))
    {
      v10 = 4294954512;
      goto LABEL_7;
    }

    v9 = CFStringCreateWithCString(a3, "WEBVTT", 0x8000100u);
  }

  v10 = 0;
  *a4 = v9;
LABEL_7:
  --*(v4 + 24);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t wvmCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  OUTLINED_FUNCTION_1_69();
  if (v6)
  {
    v7 = 4294954511;
  }

  else if (*(v3 + 64) == a2)
  {
    if (*(v3 + 72))
    {
      v7 = 0;
      *a3 = FigFormatDescriptionRetain();
    }

    else
    {
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
    }
  }

  else
  {
    v7 = 4294951254;
  }

  --*(v3 + 24);
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t wvmInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  if (a3 && *(v4 + 8))
  {
    v8 = 4294954511;
  }

  else if (*(v4 + 64) == a2)
  {
    if (a3)
    {
      *(v4 + 32) = *a3;
      *(v4 + 40) = a3[1];
      *(v4 + 48) = a3[2];
    }

    else
    {
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
    }

    v8 = 0;
    *(v4 + 56) = a4;
  }

  else
  {
    v8 = 4294951254;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t wvmFlush(const void *a1)
{
  FigManifoldGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    v3 = 4294954511;
  }

  else if (*(DerivedStorage + 10))
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
  }

  else
  {
    WebVTTParserFlush(*(DerivedStorage + 104), 1, 0);
    v3 = 0;
    *(DerivedStorage + 11) = 1;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v3;
}

uint64_t wvmCopyTrackProperty(uint64_t a1, int a2, const void *a3)
{
  FigManifoldGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_78();
  v6 = *(v3 + 24);
  *(v3 + 24) = v6 + 1;
  if (*(v3 + 8))
  {
    v7 = 4294954511;
  }

  else if (*(v3 + 64) == a2)
  {
    if (CFEqual(a3, @"FMFD_TrackEstimatedDataRate"))
    {
      v7 = 4294954513;
    }

    else
    {
      v7 = 4294954512;
    }

    v6 = *(v3 + 24) - 1;
  }

  else
  {
    v7 = 4294951254;
  }

  *(v3 + 24) = v6;
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t wvmSetProperty(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t wvmManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void wvmManifoldInjectData(uint64_t a1, uint64_t a2, const void *a3, const void **a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v8(a1);
  }

  v9 = *a4;
  *a4 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(a2 + 128) = 1;
}

uint64_t wvmNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

__CFArray *FigStreamingPlayerCombinedVideoDestinationCreateDefaultDestinationCapability()
{
  value = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return Mutable;
  }

  DefaultTagCollectionForVideo = FPSupport_CreateDefaultTagCollectionForVideo(&value);
  v3 = value;
  if (!DefaultTagCollectionForVideo)
  {
    if (!value)
    {
      v4 = Mutable;
      Mutable = 0;
      goto LABEL_7;
    }

    CFArrayAppendValue(Mutable, value);
    v4 = 0;
    v3 = value;
    if (!value)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = Mutable;
  Mutable = 0;
  if (value)
  {
LABEL_5:
    CFRelease(v3);
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationSetFVTs(uint64_t a1, const void *a2, __CFArray **a3, __CFArray **a4)
{
  if (FigCFEqual())
  {
    return 0;
  }

  if (a4)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return 4294954434;
    }

    v10 = Mutable;
    for (i = 0; ; ++i)
    {
      Count = *(a1 + 24);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
      if (!FigCFArrayContainsValue())
      {
        CFArrayAppendValue(v10, ValueAtIndex);
      }
    }

    *a4 = v10;
  }

  if (!a3)
  {
LABEL_23:
    v20 = *(a1 + 24);
    *(a1 + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    FigStreamingPlayerCombinedVideoDestinationReevaluateCanSendMetadataToFVT(a1);
    return 0;
  }

  v14 = FigGetAllocatorForMedia();
  v15 = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_15:
    for (j = CFArrayGetCount(a2); v17 < j; j = 0)
    {
      v19 = CFArrayGetValueAtIndex(a2, v17);
      if (!FigCFArrayContainsValue())
      {
        CFArrayAppendValue(v16, v19);
      }

      ++v17;
      if (a2)
      {
        goto LABEL_15;
      }

LABEL_16:
      ;
    }

    *a3 = v16;
    goto LABEL_23;
  }

  return 4294954434;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationSetDurationInvalid(uint64_t a1, CFArrayRef theArray, const void *a3)
{
  v3 = a3;
  cf = 0;
  if (!a3)
  {
    v6 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
    if (v6)
    {
LABEL_14:
      v13 = v6;
      goto LABEL_17;
    }

    v3 = cf;
  }

  v7 = MEMORY[0x1E6960C70];
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v16 = *v7;
    v17 = *(v7 + 2);
    FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(v3, &v16, theArray);
  }

  v8 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v8 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
    v11 = *(CMBaseObjectGetVTable() + 24);
    if (!v11 || (v12 = *(v11 + 16)) == 0)
    {
      v13 = 4294954514;
      goto LABEL_17;
    }

    v16 = *v7;
    v17 = *(v7 + 2);
    v6 = v12(ValueAtIndex, &v16, v3);
    ++v8;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  FigDeferredTransactionCommit(cf, 0);
  v13 = 0;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationSendEmptyConfigToGivenFVTsImmediately(const __CFArray *a1)
{
  cf[21] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = FigDataChannelConfigurationCreate(AllocatorForMedia, 0, cf);
  if (v3)
  {
LABEL_11:
    v10 = v3;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 ? CFArrayGetCount(a1) : 0;
      if (v4 >= v5)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      if (dword_1EAF17938)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = cf[0];
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v9)
      {
        v10 = 4294954514;
        goto LABEL_14;
      }

      v3 = v9(ValueAtIndex, v8);
      ++v4;
      if (v3)
      {
        goto LABEL_11;
      }
    }

    v10 = 0;
  }

LABEL_14:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v10;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreateCombinedCapability_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingPlayerCombinedVideoDestinationCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigStreamingItemCombinedVideoDestinationCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_copyNeroInformationDictionary(uint64_t a1, const __CFAllocator *a2, CFMutableDictionaryRef *a3)
{
  theDict = 0;
  if (a3)
  {
    if (!a1 || (v6 = *(CMBaseObjectGetVTable() + 16)) == 0)
    {
      v10 = 4294948075;
      goto LABEL_9;
    }

    v7 = *(v6 + 32);
    if (!v7)
    {
      v10 = 4294948071;
      goto LABEL_9;
    }

    v8 = v7(a1, *MEMORY[0x1E69AEDB8], a2, &theDict);
    if (!v8)
    {
      if (theDict)
      {
        Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionaryGetBooleanIfPresent();
      }

      else
      {
        Mutable = 0;
      }

      *a3 = Mutable;
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
  }

  v10 = v8;
LABEL_9:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v10;
}

uint64_t audioSessionAVAudioSession_copyAudioDeviceIsAvailable(uint64_t a1, CFTypeRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  v22 = 0;
  cf = 0;
  v20 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  v6 = DerivedStorage;
  v7 = *MEMORY[0x1E695E480];
  v8 = audioSessionAVAudioSession_copyRoutingContext();
  if (v8)
  {
LABEL_30:
    v14 = v8;
    goto LABEL_20;
  }

  if (FigCFNumberGetSInt32() == 12)
  {
    if (!a1 || (v9 = *(CMBaseObjectGetVTable() + 16)) == 0)
    {
      v14 = 4294948075;
      goto LABEL_20;
    }

    v10 = *(v9 + 48);
    if (!v10)
    {
      v14 = 4294948071;
      goto LABEL_20;
    }

    v8 = v10(a1, *MEMORY[0x1E69B0370], v7, &v20);
    if (!v8)
    {
      v11 = v22;
      v12 = v20;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (!v13)
      {
        v14 = 4294954514;
        goto LABEL_20;
      }

      v14 = v13(v11, v12, &cf);
      v15 = cf;
      if (v14)
      {
        goto LABEL_18;
      }

      if (!cf)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    goto LABEL_30;
  }

  v16 = [*v6 availableOutputs];
  if (!v16 || ![v16 count])
  {
LABEL_16:
    v17 = MEMORY[0x1E695E4C0];
    goto LABEL_17;
  }

LABEL_14:
  v17 = MEMORY[0x1E695E4D0];
LABEL_17:
  v14 = 0;
  *a2 = CFRetain(*v17);
  v15 = cf;
LABEL_18:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_20:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  objc_autoreleasePoolPop(v4);
  return v14;
}

void __audioSessionAVAudioSession_addAVAudioSessionObserverForNotification_block_invoke(uint64_t a1)
{
  if (qword_1ED4CBA40 != -1)
  {
    dispatch_once(&qword_1ED4CBA40, &__block_literal_global_18_2);
  }

  v2 = FigCFWeakReferenceTableCopyValue();
  if (v2)
  {
    v3 = v2;
    (*(*(a1 + 32) + 16))();

    CFRelease(v3);
  }
}

BOOL FigAudioSessionCreateWithAVAudioSession_cold_3(void *a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v5 = FigSignalErrorAtGM();
  *a3 = v5;
  objc_autoreleasePoolPop(a1);
  return v5 == 0;
}

void FigAudioSessionCreateWithAVAudioSession_cold_4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(v4, 1, *MEMORY[0x1E698D6E8], &__block_literal_global_24_2, (DerivedStorage + 112));
  v7 = *(DerivedStorage + 112);
  if (v7)
  {
    v8 = v7;
  }

  objc_autoreleasePoolPop(v5);
  v9 = *a1;
  v10 = objc_autoreleasePoolPush();
  v11 = CMBaseObjectGetDerivedStorage();
  audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(v9, 1, *MEMORY[0x1E698D5B0], &__block_literal_global_26, (v11 + 120));
  v12 = *(v11 + 120);
  if (v12)
  {
    v13 = v12;
  }

  objc_autoreleasePoolPop(v10);
  *a2 = *a1;
}

uint64_t FigAudioSessionCreateWithAVAudioSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithAVAudioSession_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void audioSessionAVAudioSession_CopyResolvedConfigurationForProperty_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = [*DerivedStorage isActive];
    v6 = MEMORY[0x1E695E4D0];
    if (!v5)
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    *a2 = *v6;
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t audioSessionAVAudioSession_CopyMXSessionProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_SetMXSessionProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_SetMXSessionPropertiesAndCopyErrors_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t audioSessionAVAudioSession_CopyMXSessionPropertiesAndErrors_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_copyRoutingContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_copySpatializationCapabilities_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_copySpatializationCapabilities_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionAVAudioSession_copySpatializationCapabilities_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigToolViewCreateWithOptions(const __CFAllocator *a1, const __CFDictionary *a2, CFMutableArrayRef **a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x118uLL, 0x10600407AE0150EuLL);
  value = 0;
  if (a2)
  {
    LODWORD(a2) = CFDictionaryGetValue(a2, @"StartImmediately") == *MEMORY[0x1E695E4C0];
  }

  *v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v8[2] = FigSimpleMutexCreate();
  v9 = FigSimpleMutexCreate();
  v8[19] = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = FigSimpleMutexCreate();
  v8[26] = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = dispatch_semaphore_create(0);
  v8[7] = v11;
  if (!v11)
  {
    return 0;
  }

  if (a4)
  {
    Basic = FigVisualContextCreateBasic(a1, 0, &value);
    v13 = value;
    if (Basic)
    {
      goto LABEL_18;
    }

    CFArrayAppendValue(*v8, value);
  }

  if (a2)
  {
    v13 = value;
    goto LABEL_12;
  }

  Basic = FigToolViewStart(v8);
  v13 = value;
  if (Basic)
  {
LABEL_18:
    v14 = Basic;
    if (!v13)
    {
      return v14;
    }

    goto LABEL_15;
  }

LABEL_12:
  *a3 = v8;
  v14 = 0;
  if (a4)
  {
    *a4 = v13;
  }

  if (v13)
  {
LABEL_15:
    CFRelease(v13);
  }

  return v14;
}

uint64_t FigToolViewRemoveVisualContext(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *a1;
  v8.length = CFArrayGetCount(*a1);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, a2);
  if (FirstIndexOfValue == -1)
  {
    v6 = 4294954481;
  }

  else
  {
    if (*(a1 + 8) == a2)
    {
      *(a1 + 8) = 0;
    }

    CFArrayRemoveValueAtIndex(*a1, FirstIndexOfValue);
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t ftvClearIOMFLayers(uint64_t a1, _DWORD *a2)
{
  result = IOMobileFramebufferSwapBegin();
  if (!result)
  {
    v4 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_1_177();
      result = IOMobileFramebufferSwapSetLayer();
      if (result)
      {
        break;
      }

      if (++v4 == 3)
      {
        result = IOMobileFramebufferSwapSetBackgroundColor();
        if (!result)
        {
          result = IOMobileFramebufferSwapEnd();
          if (!result)
          {
            *a2 = 0;
          }
        }

        return result;
      }
    }
  }

  return result;
}

void ftvIOMFVSyncCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(&__src[2], 0, 32);
  __src[0] = 0u;
  __src[4] = 0xAuLL;
  __src[1] = (a4 + a3);
  *&__src[2] = FigHostTimeToNanoseconds();
  DWORD1(__src[0]) = 1000000000;
  v116 = 0u;
  v117 = 0u;
  if (*(a5 + 26))
  {
    *(a5 + 26) = 0;
    if (*(a5 + 64))
    {
      ftvIOMFHotPlugNotificationCallback(a1, 0, a5);
      ftvIOMFHotPlugNotificationCallback(a1, 1, a5);
    }
  }

  if (*(a5 + 104))
  {
    if (IOMobileFramebufferSwapWait())
    {
      goto LABEL_110;
    }

    v7 = *(a5 + 112);
    if (v7)
    {
      CFRelease(v7);
      *(a5 + 112) = 0;
    }

    v8 = 0;
    v9 = a5 + 120;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = *(v9 + 8 * v8);
      if (v12)
      {
        CFRelease(v12);
        *(v9 + 8 * v8) = 0;
      }

      v10 = 0;
      v8 = 1;
    }

    while ((v11 & 1) != 0);
    *(a5 + 104) = 0;
  }

  FigSimpleMutexLock();
  Count = CFArrayGetCount(*a5);
  if (Count >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = *MEMORY[0x1E695E480];
    v17 = Count + 1;
    v106 = *MEMORY[0x1E6960CC0];
    v18 = *(MEMORY[0x1E6960CC0] + 16);
    while (1)
    {
      v114 = v106;
      v115 = v18;
      ValueAtIndex = CFArrayGetValueAtIndex(*a5, v17 - 2);
      VTable = CMBaseObjectGetVTable();
      v29 = *(VTable + 16);
      v28 = VTable + 16;
      v30 = *(v29 + 56);
      if (v30)
      {
        v28 = v30(ValueAtIndex, __src, &v114);
      }

      if (v15)
      {
        if (*(*(OUTLINED_FUNCTION_3_145(v28, v21, v22, v23, v24, v25, v26, v27, v103, v104, v106, *(&v106 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v108, v109, v110, *(&v110 + 1), v111, v112, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v114, v115) + 16) + 48))
        {
          v31 = OUTLINED_FUNCTION_2_172();
          v32(ValueAtIndex, v16, __dst, 1, 0, 0, 0, v31);
        }

        v15 = 1;
        goto LABEL_37;
      }

      if (*(*(OUTLINED_FUNCTION_3_145(v28, v21, v22, v23, v24, v25, v26, v27, v103, v104, v106, *(&v106 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v108, v109, v110, *(&v110 + 1), v111, v112, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v114, v115) + 16) + 40) && (v33 = OUTLINED_FUNCTION_2_172(), v35 = v34(ValueAtIndex, __dst, v33), v35))
      {
        v14 = v35;
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        *&__dst[1] += FigNanosecondsToHostTime();
        v43 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v43)
        {
          v43(ValueAtIndex, __dst, &v114);
        }

        v110 = v114;
        v111 = v115;
        v44 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v44)
        {
          goto LABEL_32;
        }

        valuePtr = v110;
        *&v119 = v111;
        v35 = v44(ValueAtIndex, &valuePtr);
        v14 = v35;
        if (!v35)
        {
          v47 = 0;
          goto LABEL_33;
        }
      }

      if (*(*(OUTLINED_FUNCTION_3_145(v35, v36, v37, v38, v39, v40, v41, v42, v103, v104, v106, *(&v106 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), v108, v109, v110, *(&v110 + 1), v111, v112, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), v114, v115) + 16) + 48))
      {
        v45 = OUTLINED_FUNCTION_2_172();
        if (!v46(ValueAtIndex, v16, __dst, 1, &v116 + 8, 0, 0, v45))
        {
          v48 = 0;
          if (*(a5 + 8) != ValueAtIndex)
          {
            *(a5 + 8) = ValueAtIndex;
          }

          v47 = 1;
          goto LABEL_34;
        }
      }

      if (!*(&v116 + 1))
      {
LABEL_32:
        v47 = 0;
        v14 = 0;
        goto LABEL_33;
      }

      CFRelease(*(&v116 + 1));
      v47 = 0;
      v14 = 0;
      *(&v116 + 1) = 0;
LABEL_33:
      v48 = 1;
LABEL_34:
      if ((v48 & (*(a5 + 8) == ValueAtIndex)) != 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = v47;
      }

LABEL_37:
      if (--v17 <= 1)
      {
        goto LABEL_44;
      }
    }
  }

  v14 = 0;
LABEL_44:
  FigSimpleMutexUnlock();
  LOBYTE(v110) = 0;
  HIBYTE(v109) = 0;
  FigSimpleMutexLock();
  v49 = 0;
  v50 = 0;
  v51 = &v110;
  v52 = 1;
  do
  {
    v53 = v52;
    v54 = a5 + 160 + 16 * v49;
    v55 = *(v54 + 8);
    *v51 = v55;
    if (v55)
    {
      v56 = *v54;
      if (*v54)
      {
        v56 = CFRetain(v56);
      }

      *(&v117 + v49) = v56;
      *(v54 + 8) = 0;
      v50 = 1;
    }

    v52 = 0;
    v51 = (&v109 + 7);
    v49 = 1;
  }

  while ((v53 & 1) != 0);
  FigSimpleMutexUnlock();
  if (v14 | v50 && !IOMobileFramebufferSwapBegin())
  {
    if (!v14)
    {
      goto LABEL_85;
    }

    v57 = *(&v116 + 1);
    if (*(&v116 + 1))
    {
      memset(__dst, 0, 32);
      valuePtr = 0u;
      v119 = 0u;
      v114 = 0uLL;
      v58 = CVBufferCopyAttachment(*(&v116 + 1), @"SourceRect", 0);
      v59 = v58;
      if (v58)
      {
        v60 = CFGetTypeID(v58);
        if (v60 == CFDictionaryGetTypeID())
        {
          FigCGRectMakeWithDictionaryRepresentation(v59, __dst);
        }
      }

      v61 = CVBufferCopyAttachment(v57, @"DestRect", 0);
      v62 = v61;
      if (v61)
      {
        v63 = CFGetTypeID(v61);
        if (v63 == CFDictionaryGetTypeID())
        {
          FigCGRectMakeWithDictionaryRepresentation(v62, &valuePtr);
        }
      }

      v64 = CVBufferCopyAttachment(v57, @"VirtualDisplaySizeForDestRect", 0);
      v65 = v64;
      v66 = 0.0;
      if (v64)
      {
        v67 = CFGetTypeID(v64);
        v68 = 0.0;
        if (v67 == CFDictionaryGetTypeID())
        {
          FigCGSizeMakeWithDictionaryRepresentation(v65, &v114);
          v66 = *(&v114 + 1);
          v68 = *&v114;
        }
      }

      else
      {
        v68 = 0.0;
      }

      v69 = __dst[0];
      v105 = __dst[1];
      v70 = valuePtr;
      v71 = v119;
      if (v59)
      {
        CFRelease(v59);
      }

      if (v62)
      {
        CFRelease(v62);
      }

      if (v65)
      {
        CFRelease(v65);
      }

      OUTLINED_FUNCTION_1_177();
      if (FigCGRectEqualToRect(*&v70, *(&v70 + 1), *&v71, *(&v71 + 1), v72, v73, v74, v75) || v68 == 0.0 && v66 == 0.0 || (OUTLINED_FUNCTION_1_177(), FigCGRectEqualToRect(*&v69, *(&v69 + 1), *&v105, *(&v105 + 1), v76, v77, v78, v79)))
      {
        FigSimpleMutexLock();
        FigSimpleMutexUnlock();
        CVImageBufferGetCleanRect(*(&v116 + 1));
        v80 = *(&v116 + 1);
        CVImageBufferGetCleanRect(*(&v116 + 1));
        v81 = CVBufferCopyAttachment(v80, *MEMORY[0x1E6965EF8], 0);
        if (v81)
        {
          v82 = v81;
          v83 = CFGetTypeID(v81);
          if (v83 == CFDictionaryGetTypeID())
          {
            LODWORD(__dst[0]) = 1;
            LODWORD(valuePtr) = 1;
            Value = CFDictionaryGetValue(v82, *MEMORY[0x1E6965EF0]);
            if (Value)
            {
              v85 = Value;
              v86 = CFGetTypeID(Value);
              if (v86 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v85, kCFNumberSInt32Type, __dst);
                v87 = CFDictionaryGetValue(v82, *MEMORY[0x1E6965F00]);
                if (v87)
                {
                  v88 = v87;
                  v89 = CFGetTypeID(v87);
                  if (v89 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v88, kCFNumberSInt32Type, &valuePtr);
                  }
                }
              }
            }
          }

          CFRelease(v82);
        }
      }

      CVPixelBufferGetIOSurface(*(&v116 + 1));
    }

    if (!IOMobileFramebufferSwapSetLayer())
    {
LABEL_85:
      v90 = 0;
      v91 = (a5 + 192);
      v92 = &v110;
      v93 = 1;
      do
      {
        v94 = v93;
        if (*v92)
        {
          v95 = v91[v90];
          v96 = *(&v117 + v90);
          v91[v90] = v96;
          if (v96)
          {
            CFRetain(v96);
          }

          if (v95)
          {
            CFRelease(v95);
          }
        }

        v93 = 0;
        v92 = (&v109 + 7);
        v90 = 1;
      }

      while ((v94 & 1) != 0);
      if (!v50)
      {
        v97 = 0;
LABEL_100:
        if (!IOMobileFramebufferSwapSetBackgroundColor() && !IOMobileFramebufferSwapEnd())
        {
          if (v14)
          {
            *(a5 + 112) = *(a5 + 80);
            *(a5 + 80) = *(&v116 + 1);
            *(&v116 + 1) = 0;
          }

          if (v50)
          {
            *(a5 + 120) = *(a5 + 88);
            if (v97)
            {
              v98 = CFRetain(v97);
            }

            else
            {
              v98 = 0;
            }

            *(a5 + 88) = v98;
          }

          *(a5 + 104) = *(a5 + 72);
          *(a5 + 72) = v116;
        }

        goto LABEL_110;
      }

      v97 = *(a5 + 200);
      if (!v97)
      {
        v97 = *v91;
      }

      if (v97 == *(a5 + 88))
      {
        goto LABEL_100;
      }

      if (v97)
      {
        CVImageBufferGetCleanRect(v97);
        CVPixelBufferGetIOSurface(v97);
      }

      if (!IOMobileFramebufferSwapSetLayer())
      {
        goto LABEL_100;
      }
    }
  }

LABEL_110:
  if (*(&v116 + 1))
  {
    CFRelease(*(&v116 + 1));
  }

  v99 = 0;
  v100 = 1;
  do
  {
    v101 = v100;
    v102 = *(&v117 + v99);
    if (v102)
    {
      CFRelease(v102);
    }

    v100 = 0;
    v99 = 1;
  }

  while ((v101 & 1) != 0);
}

uint64_t FigCGSizeCreateDictionaryRepresentation_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t FigToolViewStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

intptr_t ftvFramebufferThread_cold_1(const void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    CFRelease(v3);
  }

  return dispatch_semaphore_signal(*(a2 + 56));
}

void ftvFramebufferThread_cold_2(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (v5)
  {
    ftvIOMFHotPlugNotificationCallback(*a3, v5, a2);
  }

  dispatch_semaphore_signal(*(a2 + 56));
  CFRunLoopRun();
  IOMobileFramebufferDisableHotPlugDetectNotifications();
  if (*(a2 + 64))
  {
    ftvIOMFHotPlugNotificationCallback(*a3, 0, a2);
  }
}

uint64_t synchronizerServer_handleMessageWithReply(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v5 = synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection();
  if (v5)
  {
    return v5;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t synchronizerServer_handleMessageNoReply(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  v4 = synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection();
  if (v4)
  {
    return v4;
  }

  else
  {
    return 4294951138;
  }
}

void synchronizerServer_timebaseSyncUpdateCallback(const void *a1, const void *a2)
{
  if (!a1)
  {
    return;
  }

  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  FigSimpleMutexLock();
  if (*(v5 + 64))
  {
    goto LABEL_7;
  }

  v6 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v6)
  {
    v7 = malloc_type_malloc(0x78uLL, 0x1000040A9FC9F90uLL);
    if (v7)
    {
      v8 = v7;
      memcpy(v7, a2, 0x78uLL);
      *v6 = CFRetain(a1);
      v6[1] = v8;
      dispatch_async_f(*(v5 + 48), v6, synchronizerServer_timebaseSyncUpdateCallback_Async);
LABEL_7:
      v6 = 0;
    }
  }

  FigSimpleMutexUnlock();
  free(v6);

  CFRelease(v5);
}

uint64_t synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void synchronizerServer_timebaseSyncUpdateCallback_Async_cold_1(xpc_object_t *a1, const void *a2, uint64_t a3)
{
  if (!FigXPCMessageSetCFData())
  {
    xpc_connection_send_message(*(a3 + 72), *a1);
  }

  FigSimpleMutexUnlock();
  CFRelease(a2);
}

uint64_t __FigPlayerCelesteOneTimeInitialization_block_invoke(uint64_t a1)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  FigByteStreamFactorySetCachedFileByteStreamEnable(1);
  v2 = FigCFWeakReferenceTableCreate();
  result = OUTLINED_FUNCTION_0_5(v2);
  if (!v4)
  {
    v5 = FigCFWeakReferenceTableCreate();
    result = OUTLINED_FUNCTION_0_5(v5);
    if (!v6)
    {
      qword_1ED4CBA98 = FigSimpleMutexCreate();
      if (qword_1ED4CBA98)
      {
        v7 = FigThreadAllocKey();
        result = OUTLINED_FUNCTION_0_5(v7);
        if (!v8)
        {
          CentralOneTimeSetup();
          dword_1ED4CBA5C = IORegisterForSystemPower(0, algn_1ED4CBA78, FigServer_SleepCallBack, &_MergedGlobals_132);
          if (dword_1ED4CBA5C)
          {
            v9 = *algn_1ED4CBA78;
            if (qword_1ED4CBA70 != -1)
            {
              dispatch_once(&qword_1ED4CBA70, &__block_literal_global_21_2);
            }

            IONotificationPortSetDispatchQueue(v9, qword_1ED4CBA68);
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v10 = *MEMORY[0x1E69E98C0];
            global_queue = dispatch_get_global_queue(0, 0);
            notify_register_dispatch(v10, &unk_1ED4CBA60, global_queue, &__block_literal_global_34_2);
          }

          return MEMORY[0x1EEDBD5E0](@"FigPlayerCelesteSysdiagnose", &__block_literal_global_116);
        }
      }

      else
      {
        result = FigSignalErrorAtGM();
        *(*(*(a1 + 32) + 8) + 24) = result;
      }
    }
  }

  return result;
}

uint64_t playerceleste_updatePlayerAudioSession(uint64_t a1, const void *a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v45 = 0;
  v5 = *MEMORY[0x1E69AFD00];
  values[0] = *MEMORY[0x1E69AFCA0];
  values[1] = v5;
  values[2] = *MEMORY[0x1E69AFFB8];
  v44 = 0;
  v43 = 0;
  if (a2)
  {
    v6 = DerivedStorage;
    if (!*(DerivedStorage + 96) || FigAudioSessionIsRelatedSession(*(DerivedStorage + 88), a2))
    {
      return 0;
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = CFArrayCreate(*MEMORY[0x1E695E480], values, 3, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      v41 = v8;
      v9 = &sFigAudioSessionNotifications;
      if (*(v6 + 88))
      {
        v10 = &off_1EE59EF58;
        v11 = 8;
        v12 = &sFigAudioSessionNotifications;
        do
        {
          CMNotificationCenterGetDefaultLocalCenter();
          v10 += 2;
          FigNotificationCenterRemoveWeakListener();
          v12 += 2;
          --v11;
        }

        while (v11);
        FigStopForwardingMediaServicesProcessDeathNotification();
      }

      v42 = v6;
      v13 = &off_1EE59EF58;
      v14 = 8;
      do
      {
        CMNotificationCenterGetDefaultLocalCenter();
        if (qword_1ED4CBA70 != -1)
        {
          dispatch_once(&qword_1ED4CBA70, &__block_literal_global_21_2);
        }

        FigNotificationCenterAddWeakListener();
        v13 += 2;
        v9 += 2;
        --v14;
      }

      while (v14);
      started = FigStartForwardingMediaServicesProcessDeathNotification();
      if (started)
      {
        v30 = started;
LABEL_47:
        CFRelease(v41);
        if (v43)
        {
          CFRelease(v43);
        }

        return v30;
      }

      v16 = v42;
      v17 = *(v42 + 88);
      *(v42 + 88) = a2;
      CFRetain(a2);
      if (v17)
      {
        CFRelease(v17);
      }

      FigBaseObject = FigPlayerGetFigBaseObject(*(v42 + 80));
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v19)
      {
        v19(FigBaseObject, @"FigAudioSession", a2);
      }

      cf = 0;
      v20 = CMBaseObjectGetDerivedStorage();
      if (!*(v20 + 164))
      {
        v23 = 0;
        v30 = 0;
        goto LABEL_28;
      }

      v21 = v20;
      if (a1)
      {
        v22 = (CMBaseObjectGetDerivedStorage() + 165);
      }

      else
      {
        v22 = "";
      }

      v23 = CFStringCreateWithFormat(v7, 0, @"FigPlayer %s (2)", v22);
      if (v23)
      {
        v24 = *(v21 + 36);
        v47[0] = *(v21 + 20);
        v47[1] = v24;
        SiblingSession = FigAudioSessionCreateSiblingSession(v7, a2, v47, v23, &cf);
        if (!SiblingSession)
        {
          v26 = *(v21 + 80);
          v27 = cf;
          v28 = FigPlayerGetFigBaseObject(v26);
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v29)
          {
            v30 = 4294954514;
            goto LABEL_28;
          }

          SiblingSession = v29(v28, @"FigAudioSession2", v27);
        }
      }

      else
      {
        SiblingSession = FigSignalErrorAtGM();
      }

      v30 = SiblingSession;
LABEL_28:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (!v30)
      {
        v31 = *(v42 + 88);
        if (v31)
        {
          v32 = *(CMBaseObjectGetVTable() + 16);
          if (v32)
          {
            v33 = *(v32 + 112);
            if (v33)
            {
              v33(v31, v41, &v43, 0);
            }
          }
        }

        FigCFDictionaryGetInt32IfPresent();
        playerceleste_updatePlayerBasedOnAppState(a1, v44);
        FigCFDictionaryGetValue();
        if (FigCFDictionaryGetBooleanIfPresent())
        {
          if (dword_1EAF17958)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v16 = v42;
          }

          v35 = *(v16 + 80);
          v36 = v45;
          v37 = *(CMBaseObjectGetVTable() + 32);
          if (v37)
          {
            v38 = *(v37 + 16);
            if (v38)
            {
              v38(v35, v36);
            }
          }
        }

        if (FigCFDictionaryGetValue())
        {
          Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        v30 = 0;
      }

      goto LABEL_47;
    }

    return FigSignalErrorAtGM();
  }

  return FigSignalErrorAtGM();
}

uint64_t playerceleste_beginInterruptionInternal(uint64_t a1, uint64_t a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  if (!*(DerivedStorage + 88))
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695E480];
  if (!*(v6 + 163))
  {
    if (dword_1EAF17958)
    {
      OUTLINED_FUNCTION_147();
      v18 = OUTLINED_FUNCTION_126();
      if (os_log_type_enabled(v18, type))
      {
        v19 = v27;
      }

      else
      {
        v19 = v27 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v28 = 136315906;
        OUTLINED_FUNCTION_6_112();
        OUTLINED_FUNCTION_10_72();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_27:
    v20 = *(v5 + 88);
    if (v20)
    {
      v21 = *(CMBaseObjectGetVTable() + 16);
      if (v21)
      {
        v22 = *(v21 + 8);
        if (v22)
        {
          v15 = v22(v20, @"FAS_IsActive", *v7, &BOOLean);
          if (!v15)
          {
            if (CFBooleanGetValue(BOOLean))
            {
LABEL_41:
              *(v5 + 121) = 1;
              if (!*(v5 + 128))
              {
                if (playerceleste_canCallSetConnectionActive())
                {
                  playerceleste_callSetConnectionActive(a1, 1);
                }

                *(v5 + 128) = 1;
                playerceleste_revokePurgeAssertionIfNecessary();
              }

              v23 = 0;
              goto LABEL_35;
            }

            OUTLINED_FUNCTION_239();
            v15 = FigSignalErrorAtGM();
          }

          goto LABEL_33;
        }

        goto LABEL_38;
      }
    }

LABEL_34:
    v23 = 4294948075;
    goto LABEL_35;
  }

  cf[0] = 0;
  v8 = *(v6 + 88);
  if (v8)
  {
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        if (!v10(v8, @"FAS_AudioCategory", *v7, cf))
        {
          v11 = FigCFEqual();
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v11)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  v12 = *(v5 + 88);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = *(CMBaseObjectGetVTable() + 16);
  if (!v13)
  {
    goto LABEL_34;
  }

  v14 = *(v13 + 80);
  if (v14)
  {
    v15 = v14(v12, 0);
    if (!v15)
    {
      if (dword_1EAF17958)
      {
        OUTLINED_FUNCTION_147();
        v16 = OUTLINED_FUNCTION_126();
        if (os_log_type_enabled(v16, type))
        {
          v17 = v27;
        }

        else
        {
          v17 = v27 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v28 = 136315394;
          v29 = "playerceleste_beginInterruptionInternal";
          v30 = 2048;
          v31 = a1;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigPlayerReevaluateRouteConfigurationForReason(a1, a2, @"BeginInterruption for celeste player");
      goto LABEL_41;
    }

LABEL_33:
    v23 = v15;
    goto LABEL_35;
  }

LABEL_38:
  v23 = 4294948071;
LABEL_35:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v23;
}

uint64_t playerceleste_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"Topology"))
  {
    return FPSupport_CreatePlayerTopology(a3, @"Celeste", *(DerivedStorage + 80), a4);
  }

  if (CFEqual(a2, @"UserVolume"))
  {
    if (*(DerivedStorage + 88))
    {
      v11 = *(CMBaseObjectGetVTable() + 16);
      if (v11)
      {
        if (*(v11 + 48))
        {
          goto LABEL_22;
        }

        return 4294948071;
      }

      return 4294948075;
    }

    Float32 = FigCFNumberCreateFloat32();
    goto LABEL_16;
  }

  if (CFEqual(a2, @"ActivationContext"))
  {
    if (*(DerivedStorage + 88))
    {
      v12 = *(CMBaseObjectGetVTable() + 16);
      if (v12)
      {
        if (*(v12 + 48))
        {
          goto LABEL_22;
        }

        return 4294948071;
      }

      return 4294948075;
    }

    return 4294950074;
  }

  if (CFEqual(a2, @"AudioCategory"))
  {
    if (*(DerivedStorage + 88))
    {
      v14 = *(CMBaseObjectGetVTable() + 16);
      if (v14)
      {
        if (*(v14 + 48))
        {
LABEL_22:
          OUTLINED_FUNCTION_403();
          return v15();
        }

        return 4294948071;
      }

      return 4294948075;
    }

    return 4294950074;
  }

  if (CFEqual(a2, @"AudioMode"))
  {
    v16 = *(DerivedStorage + 88);
    if (!v16)
    {
      return 4294950074;
    }

    v17 = MEMORY[0x1E69AFCE8];
    goto LABEL_34;
  }

  if (CFEqual(a2, @"AudioRouteInitiationDescription"))
  {
    v16 = *(DerivedStorage + 88);
    if (!v16)
    {
      return 4294950074;
    }

    v17 = MEMORY[0x1E69AFFD8];
    goto LABEL_34;
  }

  if (CFEqual(a2, @"UserMuted"))
  {
    v16 = *(DerivedStorage + 88);
    if (!v16)
    {
      return 4294950074;
    }

    v17 = MEMORY[0x1E69B0470];
LABEL_34:
    v18 = *v17;
    v19 = a3;
    return FigAudioSessionCopyMXSessionProperty_0(v16, v18, v19, a4);
  }

  if (!CFEqual(a2, @"IsValid"))
  {
    if (CFEqual(a2, @"DeviceSupportsPiP"))
    {
      if (!*(DerivedStorage + 88))
      {
        return 4294950074;
      }

      OUTLINED_FUNCTION_403();
      FigAudioSessionCopyCMSessionProperty(v22, v23, v24, v25);
      return 0;
    }

    if (CFEqual(a2, @"PiPIsPossible"))
    {
      if (*(DerivedStorage + 88))
      {
LABEL_60:
        OUTLINED_FUNCTION_403();
        FigAudioSessionCopyMXSessionProperty_0(v27, v28, v29, v30);
        return 0;
      }

      v26 = MEMORY[0x1E695E4C0];
    }

    else
    {
      if (CFEqual(a2, @"IsLongFormAudio"))
      {
        if (!*(DerivedStorage + 88))
        {
          return 4294950074;
        }

        goto LABEL_60;
      }

      if (CFEqual(a2, @"CanBeginInterruption"))
      {
        if (!*(DerivedStorage + 88))
        {
          return 4294950074;
        }

        goto LABEL_60;
      }

      if (CFEqual(a2, @"UseApplicationAudioSession"))
      {
        Float32 = *MEMORY[0x1E695E4D0];
        if (!*MEMORY[0x1E695E4D0])
        {
          goto LABEL_16;
        }

        goto LABEL_57;
      }

      if (CFEqual(a2, @"AudioSessionID"))
      {
        if (*(DerivedStorage + 88))
        {
          OUTLINED_FUNCTION_403();
          return FigAudioSessionCopyRequestedConfigurationForProperty(v31, v32, v33, v34);
        }

        return 4294950074;
      }

      if (CFEqual(a2, @"AllowPixelBufferPoolSharing"))
      {
        v35 = *(DerivedStorage + 80);
        if (v35)
        {
          cf = 0;
          FigBaseObject = FigPlayerGetFigBaseObject(v35);
          v9 = CMBaseObjectCopyProperty(FigBaseObject, a2, a3, &cf);
          Float32 = cf;
          if (cf)
          {
            v37 = CFGetTypeID(cf);
            TypeID = CFNumberGetTypeID();
            Float32 = cf;
            if (v37 == TypeID)
            {
              CFRelease(cf);
              Float32 = CFRetain(*MEMORY[0x1E695E4D0]);
            }
          }

          goto LABEL_17;
        }
      }

      if (CFEqual(a2, @"DisableAutoPauseOnRouteRemovalIfNoAudio"))
      {
        v26 = MEMORY[0x1E695E4D0];
        v39 = *(DerivedStorage + 162);
      }

      else
      {
        if (!CFEqual(a2, @"EnsuresActiveAudioSessionWhenStartingPlayback"))
        {
          if (CFEqual(a2, @"MXSessionID"))
          {
            v16 = *(DerivedStorage + 88);
            if (!v16)
            {
              OUTLINED_FUNCTION_111();
              return FigSignalErrorAtGM();
            }

            v18 = *MEMORY[0x1E69AFFB8];
            v19 = *MEMORY[0x1E695E480];
            return FigAudioSessionCopyMXSessionProperty_0(v16, v18, v19, a4);
          }

          if (CFEqual(a2, @"FigAudioSession"))
          {
            Float32 = *(DerivedStorage + 88);
            if (!Float32)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (!CFEqual(a2, @"ItemsToPrebuffer"))
            {
              goto LABEL_37;
            }

            Float32 = *(DerivedStorage + 208);
            if (!Float32)
            {
LABEL_16:
              v9 = 0;
LABEL_17:
              *a4 = Float32;
              return v9;
            }
          }

LABEL_57:
          Float32 = CFRetain(Float32);
          goto LABEL_16;
        }

        v26 = MEMORY[0x1E695E4D0];
        v39 = *(DerivedStorage + 163);
      }

      if (!v39)
      {
        v26 = MEMORY[0x1E695E4C0];
      }
    }

    Float32 = *v26;
    goto LABEL_57;
  }

LABEL_37:
  v20 = *(DerivedStorage + 80);
  if (v20)
  {
    FigPlayerGetFigBaseObject(v20);
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      return 4294954514;
    }

    OUTLINED_FUNCTION_403();

    return v21();
  }

  else
  {
    OUTLINED_FUNCTION_111();

    return FigSignalErrorAtGM();
  }
}

uint64_t playerceleste_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_14_18();
  v9 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v1, v2, v3, v4, v5, v6, v7, v8);
  if (!v9)
  {
    v10 = *(DerivedStorage + 80);
    if (v10)
    {
      FigBaseObject = FigPlayerGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v12)
      {
        return 4294954514;
      }

      return v12(FigBaseObject, 0, 0);
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return v9;
}

uint64_t playerceleste_handleSetProperty(void *a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  updated = v7;
  keys[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (CFEqual(a3, @"ClientName"))
  {
    v16 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    v17 = 0;
    a1 = 0;
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v19 = CFEqual(a3, @"UserVolume");
  v20 = MEMORY[0x1E695E480];
  if (v19)
  {
    updated = *(DerivedStorage + 88);
    if (updated)
    {
      if (!*(DerivedStorage + 128))
      {
        BOOLean = 0;
        v32 = *(CMBaseObjectGetVTable() + 16);
        if (v32)
        {
          v33 = *(v32 + 48);
          if (v33)
          {
            v33(updated, *MEMORY[0x1E69B00F8], *v20, &BOOLean);
            if (BOOLean)
            {
              if (CFBooleanGetValue(BOOLean))
              {
                if (dword_1EAF17958)
                {
                  updated = OUTLINED_FUNCTION_371();
                  os_log_type_enabled(updated, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                playerceleste_beginInterruptionInternal(a1, 0);
              }

              CFRelease(BOOLean);
            }
          }
        }
      }

      if (*(DerivedStorage + 120))
      {
        a1 = playerceleste_copyUniqueClientID();
        v21 = *MEMORY[0x1E69B06D8];
        keys[0] = *MEMORY[0x1E69B06E0];
        keys[1] = v21;
        values[0] = a4;
        values[1] = a1;
        v22 = CFDictionaryCreate(*v20, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v23 = *(DerivedStorage + 88);
        if (v23)
        {
          v24 = *(CMBaseObjectGetVTable() + 16);
          if (v24)
          {
            v25 = *(v24 + 56);
            if (v25)
            {
              v25(v23, *MEMORY[0x1E69B0488], v22);
            }
          }
        }

        CFRelease(a1);
        CFRelease(v22);
        goto LABEL_18;
      }

      v28 = *(DerivedStorage + 88);
      if (!v28 || (v34 = *(CMBaseObjectGetVTable() + 16)) == 0 || (v30 = *(v34 + 56)) == 0)
      {
LABEL_18:
        OUTLINED_FUNCTION_14_61();
LABEL_20:
        *a5 = 1;
        goto LABEL_26;
      }

      v31 = MEMORY[0x1E69B0480];
LABEL_50:
      v30(v28, *v31, a4);
      goto LABEL_18;
    }

    goto LABEL_103;
  }

  if (CFEqual(a3, @"ActivationContext"))
  {
    v28 = *(DerivedStorage + 88);
    if (v28)
    {
      v29 = *(CMBaseObjectGetVTable() + 16);
      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = *(v29 + 56);
      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = MEMORY[0x1E69AFC30];
      goto LABEL_50;
    }

    goto LABEL_103;
  }

  if (CFEqual(a3, @"AudioCategory"))
  {
    v28 = *(DerivedStorage + 88);
    if (v28)
    {
      v35 = *(CMBaseObjectGetVTable() + 16);
      if (!v35)
      {
        goto LABEL_18;
      }

      v30 = *(v35 + 56);
      if (!v30)
      {
        goto LABEL_18;
      }

      v31 = MEMORY[0x1E69AFCC0];
      goto LABEL_50;
    }

LABEL_103:
    updated = 4294950074;
    goto LABEL_28;
  }

  if (CFEqual(a3, @"AudioMode"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69AFCE8];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"AudioRouteInitiationDescription"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69AFC30];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"ClientPriority"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69AFDB0];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"UserMuted"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69B0470];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"WantsVolumeChangesWhenPaused"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69B04D8];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"WantsExternalVolumeChangesOnly"))
  {
    if (*(DerivedStorage + 88))
    {
      OUTLINED_FUNCTION_14_61();
      *(DerivedStorage + 120) = *MEMORY[0x1E695E4D0] == a4;
      goto LABEL_20;
    }

    goto LABEL_103;
  }

  if (CFEqual(a3, @"WantsVolumeChangesWhenPausedOrInactive"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69B04E0];
    goto LABEL_68;
  }

  if (CFEqual(a3, @"InterruptionHandlingFadeOutDuration"))
  {
    if (a4)
    {
      a1 = CFGetTypeID(a4);
      if (a1 == CFNumberGetTypeID())
      {
        v40 = (DerivedStorage + 112);
LABEL_86:
        CFNumberGetValue(a4, kCFNumberFloat32Type, v40);
        goto LABEL_18;
      }
    }

    goto LABEL_87;
  }

  if (CFEqual(a3, @"StoppingFadeOutDuration"))
  {
    if (a4)
    {
      a1 = CFGetTypeID(a4);
      if (a1 == CFNumberGetTypeID())
      {
        v40 = (DerivedStorage + 116);
        goto LABEL_86;
      }
    }

    goto LABEL_87;
  }

  if (CFEqual(a3, @"AllowGaplessTransitions"))
  {
LABEL_90:
    a1 = 0;
    goto LABEL_6;
  }

  if (CFEqual(a3, @"AudioModeIsMoviePlayback"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v38 = *MEMORY[0x1E69AFCE8];
    if (*MEMORY[0x1E695E4D0] == a4)
    {
      v41 = MEMORY[0x1E69AF8A8];
LABEL_99:
      v39 = *v41;
      goto LABEL_69;
    }

LABEL_98:
    v41 = MEMORY[0x1E69AF828];
    goto LABEL_99;
  }

  if (CFEqual(a3, @"AudioModeIsSpokenAudio"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v38 = *MEMORY[0x1E69AFCE8];
    if (*MEMORY[0x1E695E4D0] == a4)
    {
      v41 = MEMORY[0x1E69AF948];
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  if (CFEqual(a3, @"IsLongFormAudio"))
  {
    v36 = *(DerivedStorage + 88);
    if (!v36)
    {
      goto LABEL_103;
    }

    v37 = MEMORY[0x1E69B0090];
LABEL_68:
    v38 = *v37;
    v39 = a4;
LABEL_69:
    FigAudioSessionSetMXSessionProperty_0(v36, v38, v39);
    goto LABEL_18;
  }

  if (CFEqual(a3, @"UseApplicationAudioSession"))
  {
    goto LABEL_18;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    if (a4)
    {
      v42 = CFGetTypeID(a4);
      if (v42 == FigAudioSessionGetTypeID())
      {
        updated = playerceleste_updatePlayerAudioSession(a1, a4);
        if (updated)
        {
          goto LABEL_28;
        }

        goto LABEL_88;
      }
    }

    goto LABEL_156;
  }

  if (CFEqual(a3, @"AudioSessionID"))
  {
    LODWORD(BOOLean) = 0;
    if (a4)
    {
      v43 = CFGetTypeID(a4);
      if (v43 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &BOOLean);
        if (FigAudioSessionIsRelatedToAudioSessionID(*(DerivedStorage + 88), BOOLean))
        {
          if (dword_1EAF17958)
          {
            v44 = OUTLINED_FUNCTION_371();
            updated = 0;
            os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_18;
        }

        v46 = playerceleste_createFigAudioSessionUsingAudioSessionID(*v20, a1, a4, &cf);
        if (!v46)
        {
          if (dword_1EAF17958)
          {
            v47 = OUTLINED_FUNCTION_371();
            updated = 0;
            os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v46 = playerceleste_updatePlayerAudioSession(a1, cf);
          if (!v46)
          {
            goto LABEL_18;
          }
        }

LABEL_157:
        updated = v46;
        goto LABEL_28;
      }
    }

LABEL_156:
    OUTLINED_FUNCTION_111();
    v46 = FigSignalErrorAtGM();
    goto LABEL_157;
  }

  if (CFEqual(a3, @"AllowPixelBufferPoolSharing"))
  {
    a1 = 0;
    if (!a4 || !*(DerivedStorage + 80))
    {
      goto LABEL_6;
    }

    v45 = CFGetTypeID(a4);
    if (v45 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(a4);
      keys[0] = VTMakePixelBufferPoolSharingIDFromSource();
      v50 = CFNumberCreate(*v20, kCFNumberSInt64Type, keys);
      FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 80));
      updated = CMBaseObjectSetProperty(FigBaseObject, @"AllowPixelBufferPoolSharing", v50);
      if (v50)
      {
        CFRelease(v50);
      }

      goto LABEL_88;
    }

    goto LABEL_90;
  }

  if (CFEqual(a3, @"DisableAutoPauseOnRouteRemovalIfNoAudio"))
  {
    if (a4)
    {
      a1 = CFGetTypeID(a4);
      if (a1 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(a4);
        OUTLINED_FUNCTION_14_61();
        *(DerivedStorage + 162) = v48;
        goto LABEL_20;
      }
    }

    goto LABEL_87;
  }

  if (CFEqual(a3, @"EnsuresActiveAudioSessionWhenStartingPlayback"))
  {
    if (a4)
    {
      a1 = CFGetTypeID(a4);
      if (a1 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(a4);
        OUTLINED_FUNCTION_14_61();
        *(DerivedStorage + 163) = v49;
        goto LABEL_20;
      }
    }

LABEL_87:
    OUTLINED_FUNCTION_111();
    updated = FigSignalErrorAtGM();
LABEL_88:
    a1 = 0;
    goto LABEL_20;
  }

  if (!CFEqual(a3, @"ItemsToPrebuffer"))
  {
    goto LABEL_90;
  }

  if (a4)
  {
    v52 = CFGetTypeID(a4);
    if (v52 != CFArrayGetTypeID())
    {
      goto LABEL_156;
    }

    capacity = CFArrayGetCount(a4);
    if (capacity >= 1)
    {
      Mutable = CFArrayCreateMutable(*v20, capacity, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        a1 = Mutable;
        v54 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v54);
          if (!ValueAtIndex || (v57 = CFGetTypeID(ValueAtIndex), v57 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemCelesteVTable)
          {
            OUTLINED_FUNCTION_111();
            updated = FigSignalErrorAtGM();
            goto LABEL_26;
          }

          if (*(CMBaseObjectGetDerivedStorage() + 8) != *(DerivedStorage + 8))
          {
            break;
          }

          FigCFArrayAppendValue();
          if (capacity == ++v54)
          {
            v17 = a1;
            goto LABEL_153;
          }
        }

        OUTLINED_FUNCTION_111();
        FigSignalErrorAtGM();
        updated = 0;
        goto LABEL_26;
      }

      goto LABEL_156;
    }

    v17 = 0;
    a1 = a4;
LABEL_153:
    v16 = *(DerivedStorage + 208);
    *(DerivedStorage + 208) = a4;
    CFRetain(a4);
    a4 = a1;
  }

  else
  {
    v17 = 0;
    v16 = *(DerivedStorage + 208);
    *(DerivedStorage + 208) = 0;
  }

  a1 = v17;
  if (v16)
  {
LABEL_5:
    CFRelease(v16);
    a1 = v17;
  }

LABEL_6:
  if (!*(DerivedStorage + 80))
  {
    OUTLINED_FUNCTION_111();
    updated = FigSignalErrorAtGM();
    goto LABEL_20;
  }

  *a5 = 0;
  if (a3)
  {
    v18 = CFRetain(a3);
  }

  else
  {
    v18 = 0;
  }

  *a6 = v18;
  if (a4)
  {
    v26 = CFRetain(a4);
  }

  else
  {
    v26 = 0;
  }

  updated = 0;
  *a7 = v26;
LABEL_26:
  if (a1)
  {
    CFRelease(a1);
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return updated;
}

uint64_t itemceleste_SetProperty()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = OUTLINED_FUNCTION_14_18();
  v9 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v1, v2, v3, v4, v5, v6, v7, v8);
  if (!v9)
  {
    v10 = *(DerivedStorage + 24);
    if (v10)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v12)
      {
        return 4294954514;
      }

      return v12(FigBaseObject, 0, 0);
    }

    else
    {
      return FigSignalErrorAtGM();
    }
  }

  return v9;
}

uint64_t itemceleste_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v7 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(a1, a2, 0, itemceleste_handleSetProperty, &v17, &cf, &v16);
  if (v7)
  {
    goto LABEL_9;
  }

  if (v17)
  {
    v13 = 0;
LABEL_8:
    v7 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v16, v13, a3);
LABEL_9:
    v12 = v7;
    goto LABEL_11;
  }

  v8 = *(DerivedStorage + 24);
  if (!v8)
  {
    OUTLINED_FUNCTION_239();
    v11 = FigSignalErrorAtGM();
    goto LABEL_6;
  }

  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v10)
  {
    v11 = v10(v8, v9, &v15);
LABEL_6:
    v12 = v11;
    if (v11)
    {
      goto LABEL_11;
    }

    v13 = v15;
    goto LABEL_8;
  }

  v12 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t playerceleste_CreatePlaybackItemFromAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 129) = 0;
  playerceleste_revokePurgeAssertionIfNecessary();
  v10 = *(DerivedStorage + 80);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v11)
  {
    v12 = v11(v10, a2, a3, a4, &cf);
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v13 = cf;
      v24 = 0;
      v14 = CMBaseObjectGetDerivedStorage();
      theString = 0;
      FigPlaybackItemGetClassID();
      v15 = CMDerivedObjectCreate();
      if (v24)
      {
        v16 = CMBaseObjectGetDerivedStorage();
        *(v16 + 42) = 0;
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(theString, (v16 + 42), 10, 0x600u);
        }

        *(v16 + 8) = *(v14 + 8);
        v17 = CFRetain(v13);
        v18 = *(v14 + 56);
        *(v16 + 24) = v17;
        *(v16 + 32) = v18;
        if (v18)
        {
          CFRetain(v18);
        }

        Key = FigCFWeakReferenceTableAddValueAndGetKey();
        if (!Key)
        {
          Key = FigCFWeakReferenceTableAddValueAssociatedWithKey();
          if (!Key)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            Key = FigNotificationCenterAddWeakListener();
            if (!Key)
            {
              *(v16 + 41) = 1;
              v20 = v24;
LABEL_12:
              v15 = 0;
              *a5 = v20;
              goto LABEL_14;
            }
          }
        }

        v15 = Key;
      }

      else
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM();
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v15)
      {
        v20 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v15 = 4294954514;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t playerceleste_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v17 = 0;
  v18 = 0;
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_239();
LABEL_22:
    v12 = FigSignalErrorAtGM();
    goto LABEL_7;
  }

  v7 = DerivedStorage;
  v8 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(a1, a2, 0, playerceleste_handleSetProperty, &v19, &cf, &v18);
  if (v8)
  {
LABEL_10:
    v13 = v8;
    goto LABEL_12;
  }

  if (v19)
  {
    v14 = 0;
LABEL_9:
    v8 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v18, v14, a3);
    goto LABEL_10;
  }

  v9 = *(v7 + 80);
  if (!v9)
  {
    OUTLINED_FUNCTION_239();
    goto LABEL_22;
  }

  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v11)
  {
    v12 = v11(v9, v10, &v17);
LABEL_7:
    v13 = v12;
    if (v12)
    {
      goto LABEL_12;
    }

    v14 = v17;
    goto LABEL_9;
  }

  v13 = 4294954514;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v13;
}

uint64_t playerceleste_BeginInterruption(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17958)
  {
    OUTLINED_FUNCTION_147();
    v2 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v2, type))
    {
      v3 = v6;
    }

    else
    {
      v3 = v6 & 0xFFFFFFFE;
    }

    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_6_112();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return playerceleste_beginInterruptionInternal(a1, 0);
}

uint64_t playerceleste_EndInterruption(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17958)
  {
    OUTLINED_FUNCTION_147();
    v2 = OUTLINED_FUNCTION_126();
    if (os_log_type_enabled(v2, type))
    {
      v3 = v11;
    }

    else
    {
      v3 = v11 & 0xFFFFFFFE;
    }

    if (v3)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_6_112();
      OUTLINED_FUNCTION_10_72();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 121) != 1)
  {
    return 0;
  }

  v5 = DerivedStorage;
  *(DerivedStorage + 121) = 0;
  if (*(DerivedStorage + 130))
  {
    playerceleste_pauseCurrentlyPlayingMovie(a1, 15);
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(CMBaseObjectGetVTable() + 16);
  if (!v7)
  {
    return 4294948075;
  }

  v8 = *(v7 + 88);
  if (!v8)
  {
    return 4294948071;
  }

  result = v8(v6, 0);
  if (!result)
  {
    if (*(v5 + 128))
    {
      if (playerceleste_canCallSetConnectionActive())
      {
        playerceleste_callSetConnectionActive(a1, 0);
      }

      result = 0;
      *(v5 + 128) = 0;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPlayerCelesteCreateWithOptions_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerceleste_createFigAudioSessionUsingAudioSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t playerceleste_createFigAudioSessionUsingAudioSessionID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_2(void **a1)
{
  OUTLINED_FUNCTION_2_174(a1);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *v1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_3(void **a1)
{
  OUTLINED_FUNCTION_2_174(a1);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *v1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_1(uint64_t a1, void *a2)
{
  FigSignalErrorAtGM();

  free(a2);
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_3(void **a1)
{
  OUTLINED_FUNCTION_2_174(a1);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *v1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_4(void **a1)
{
  OUTLINED_FUNCTION_2_174(a1);
  OUTLINED_FUNCTION_5_47();
  result = FigSignalErrorAtGM();
  *v1 = result;
  return result;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerCreate(const void *a1, uint64_t a2, const void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a1))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      v13 = FigSignalErrorAtGM();
      goto LABEL_32;
    }
  }

  v9 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10E00405B1E1B7CuLL);
  if (!v9)
  {
    goto LABEL_39;
  }

  v10 = OVCGetCurrentOpenGLContext();
  *v9 = v10;
  if (!v10)
  {
    goto LABEL_39;
  }

  if (a2)
  {
    if (a3)
    {
      *(v9 + 2) = a2;
      *(v9 + 3) = CFRetain(a3);
      goto LABEL_12;
    }

LABEL_39:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v11 = FigSignalErrorAtGM();
    goto LABEL_40;
  }

  if (a3)
  {
    goto LABEL_39;
  }

  v11 = OVCGLObjectCacheCreate(40, v9 + 2);
  if (v11)
  {
    goto LABEL_40;
  }

  v11 = FigOVCGLObjectCacheWrapperCreate(*MEMORY[0x1E695E480], *(v9 + 2), v9 + 3);
  if (v11)
  {
    goto LABEL_40;
  }

  *(v9 + 8) = 1;
LABEL_12:
  v11 = OVCGLObjectCacheCreate(20, v9 + 4);
  if (v11)
  {
    goto LABEL_40;
  }

  *shader = 0;
  v28 = 0;
  *textures = 0;
  v12 = OVCCreateShader("uniform vec2 tex_dim; \n \tuniform vec2 tex_dim_rcp;\n \tattribute vec2 position; \n \tattribute vec2 texcoord; \n \t\n \tvarying vec2 tc_pix[4]; \n \tvarying highp vec2 tc_kernel; \n \tvoid main() \n \t{ \n \t\tgl_Position = vec4(position, 0.0, 1.0); \n \t\tfloat d; \n \t\t\ntc_pix[0] = texcoord + tex_dim_rcp * vec2(0.0, -1.0); \n \t\ttc_pix[1] = texcoord; \n \t\ttc_pix[2] = texcoord + tex_dim_rcp * vec2(0.0, 1.0); \n \t\ttc_pix[3] = texcoord + tex_dim_rcp * vec2(0.0, 2.0); \n \t\t\n \t\td = texcoord.y * tex_dim.y; \ntc_kernel = vec2(d, 0.0); \n \t}", 0x8B31u, shader);
  if (!v12)
  {
    v12 = OVCCreateShader("uniform vec2 tex_dim; \n \tuniform vec2 tex_dim_rcp;\n \tattribute vec2 position; \n \tattribute vec2 texcoord; \n \t\n \tvarying vec2 tc_pix[4]; \n \tvarying highp vec2 tc_kernel; \n \tvoid main() \n \t{ \n \t\tgl_Position = vec4(position, 0.0, 1.0); \n \t\tfloat d; \n \t\t\ntc_pix[0] = texcoord + tex_dim_rcp * vec2(-1.0, 0.0); \n \t\ttc_pix[1] = texcoord; \n \t\ttc_pix[2] = texcoord + tex_dim_rcp * vec2(1.0, 0.0); \n \t\ttc_pix[3] = texcoord + tex_dim_rcp * vec2(2.0, 0.0); \n \t\t\n \t\td = texcoord.x * tex_dim.x; \ntc_kernel = vec2(d, 0.0); \n \t}", 0x8B31u, &shader[1]);
    if (!v12)
    {
      v12 = OVCCreateShader("precision mediump float; \nuniform sampler2D sampler_pixels;\n \tuniform sampler2D sampler_kernel; \n \tvarying vec2 tc_pix[4]; \n \tvarying highp vec2 tc_kernel; \n \t\n \tvoid main() \n \t{ \n \t\tvec4 t[4], w, s; \n \t\t\n \t\tt[0] = texture2D(sampler_pixels, tc_pix[0]); \n \t\tt[1] = texture2D(sampler_pixels, tc_pix[1]); \n \t\tt[2] = texture2D(sampler_pixels, tc_pix[2]); \n \t\tt[3] = texture2D(sampler_pixels, tc_pix[3]); \n \t\t\n \t\tw = texture2D(sampler_kernel, tc_kernel); \n \t\t\n \t\ts  = t[0] * w.xxxx; \n \t\ts += t[1] * w.yyyy; \n \t\ts += t[2] * w.zzzz; \n \t\ts += t[3] * w.wwww; \n \t\t\n \t\tgl_FragColor = s; \n \t}", 0x8B30u, textures);
      if (!v12)
      {
        v12 = OVCCreateShader("precision mediump float; \nuniform sampler2D sampler_pixels;\n \tuniform sampler2D sampler_kernel; \n \tvarying vec2 tc_pix[4]; \n \tvarying highp vec2 tc_kernel; \n \t\n \tvoid main() \n \t{ \n \t\tfloat s; \n \t\tvec4 w, t; \n \t\t\n \t\tt[0] = texture2D(sampler_pixels, tc_pix[0]).x; \n \t\tt[1] = texture2D(sampler_pixels, tc_pix[1]).x; \n \t\tt[2] = texture2D(sampler_pixels, tc_pix[2]).x; \n \t\tt[3] = texture2D(sampler_pixels, tc_pix[3]).x; \n \t\t\n \t\tw = texture2D(sampler_kernel, tc_kernel); \n \t\t\n \t\ts = dot( t, w); \n \t\t\n \t\tgl_FragColor.x = s; \n \t}", 0x8B30u, &textures[1]);
        if (!v12)
        {
          v12 = OVCCreateShader("precision mediump float; \nuniform sampler2D sampler_pixels;\n \tuniform sampler2D sampler_kernel; \n \tvarying vec2 tc_pix[4]; \n \tvarying highp vec2 tc_kernel; \n \t\n \tvoid main() \n \t{ \n \t\tvec2 t[4], s; \n \t\tvec4 w; \n \t\t\n \t\tt[0] = texture2D(sampler_pixels, tc_pix[0]).xy; \n \t\tt[1] = texture2D(sampler_pixels, tc_pix[1]).xy; \n \t\tt[2] = texture2D(sampler_pixels, tc_pix[2]).xy; \n \t\tt[3] = texture2D(sampler_pixels, tc_pix[3]).xy; \n \t\t\n \t\tw = texture2D(sampler_kernel, tc_kernel); \n \t\t\n \t\ts  = t[0] * w.xx; \n \t\ts += t[1] * w.yy; \n \t\ts += t[2] * w.zz; \n \t\ts += t[3] * w.ww; \n \t\t\n \t\tgl_FragColor.xy = s; \n \t}", 0x8B30u, &v28);
          if (!v12)
          {
            v12 = ovcbp_createAndSetupProgram(v9 + 11, shader[0], textures[0]);
            if (!v12)
            {
              v12 = ovcbp_createAndSetupProgram(v9 + 18, shader[1], textures[0]);
              if (!v12)
              {
                v12 = ovcbp_createAndSetupProgram(v9 + 25, shader[0], textures[1]);
                if (!v12)
                {
                  v12 = ovcbp_createAndSetupProgram(v9 + 32, shader[1], textures[1]);
                  if (!v12)
                  {
                    v12 = ovcbp_createAndSetupProgram(v9 + 39, shader[0], v28);
                    if (!v12)
                    {
                      v12 = ovcbp_createAndSetupProgram(v9 + 46, shader[1], v28);
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

  v13 = v12;
  glDeleteShader(shader[0]);
  glDeleteShader(shader[1]);
  for (i = 0; i != 3; ++i)
  {
    glDeleteShader(textures[i]);
  }

  if (!v13)
  {
    textures[0] = 0;
    v15 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (v15)
    {
      pixels = v15;
      v17 = 0;
      v23 = vdupq_n_s32(0x437F0000u);
      do
      {
        v18 = v17 / *"";
        v26 = ovcbp_polynomial(v18 + 1.0);
        v25 = ovcbp_polynomial(v18);
        v24 = ovcbp_polynomial(1.0 - v18);
        v19 = ovcbp_polynomial(2.0 - v18);
        v20.i64[0] = __PAIR64__(LODWORD(v25), LODWORD(v26));
        v20.i64[1] = __PAIR64__(LODWORD(v19), LODWORD(v24));
        v21 = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(v20, v23))));
        pixels[v17++] = vuzp1_s8(v21, v21).u32[0];
      }

      while (v17 != 256);
      glGenTextures(1, textures);
      glBindTexture(0xDE1u, textures[0]);
      glTexParameteri(0xDE1u, 0x2802u, 10497);
      glTexParameteri(0xDE1u, 0x2803u, 33071);
      glTexParameteri(0xDE1u, 0x2800u, 9728);
      glTexParameteri(0xDE1u, 0x2801u, 9728);
      glTexImage2D(0xDE1u, 0, 6408, 256, 1, 0, 0x1908u, 0x1401u, pixels);
      *(v9 + 10) = textures[0];
      free(pixels);
      goto LABEL_31;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v11 = FigSignalErrorAtGM();
    if (!v11)
    {
LABEL_31:
      v13 = 0;
      *a4 = v9;
LABEL_32:
      v9 = 0;
      goto LABEL_33;
    }

LABEL_40:
    v13 = v11;
  }

LABEL_33:
  OVCBicubicPrescalerDestroy(v9);
  return v13;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCBicubicPrescalerScalePixelBuffer_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovcbp_getProgramForPixelFormatAndPlane_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovcbp_getProgramForPixelFormatAndPlane_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ovcbp_createAndSetupProgram_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t OVCCreateGLProgram(GLuint a1, GLuint a2, GLuint *a3)
{
  params = 0;
  Program = glCreateProgram();
  glAttachShader(Program, a1);
  glAttachShader(Program, a2);
  glLinkProgram(Program);
  glGetProgramiv(Program, 0x8B82u, &params);
  if (params != 1 && (fig_log_get_emitter(), v7 = FigSignalErrorAtGM(), v7))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
    *a3 = Program;
    Program = 0;
  }

  glDeleteProgram(Program);
  return v8;
}

uint64_t OVCRegisterPixelBufferAsTexture(void *a1, uint64_t a2, CVPixelBufferRef pixelBuffer, size_t a4, int a5)
{
  v17 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(pixelBuffer, a4);
  HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(pixelBuffer, a4);
  if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_24;
      }

      if (a5)
      {
        if (a5 != 1)
        {
          goto LABEL_24;
        }

        v14 = 33319;
        v15 = 33319;
      }

      else
      {
        v14 = 6410;
        v15 = 6410;
      }
    }

    else
    {
      v14 = 6409;
      v15 = 6409;
    }
  }

  else
  {
    if (PixelFormatType != 1111970369 || a4)
    {
LABEL_24:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();

      return FigSignalErrorAtGM();
    }

    v15 = 32993;
    v14 = 6408;
  }

  texture = 0;
  result = FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane(a2, pixelBuffer, a4, 3553, &texture, &v17);
  if (!result)
  {
    glBindTexture(0xDE1u, texture);
    if (v17)
    {
      return OVCTexImagePixelBuffer(a1, pixelBuffer, 0xDE1u, v14, WidthOfPlane, HeightOfPlane, v15, 0x1401u, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OVCRegisterTextureAsRenderTargetForAttributes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  *texture = 0;
  v34 = 0;
  HIDWORD(v32) = 0;
  WORD1(v32) = 0;
  result = ovc_getTextureAttributesForRendering(a2, a5, &v34 + 1, &v34, &texture[1]);
  if (!result)
  {
    v8 = OUTLINED_FUNCTION_2_175();
    result = OVCGLObjectCacheGetObjectForAttributesAndPlane(v8, v9, v10, v11, v12, 3553, v13, v14);
    if (!result)
    {
      glBindTexture(0xDE1u, texture[0]);
      v15 = OUTLINED_FUNCTION_2_175();
      result = OVCGLObjectCacheGetObjectForAttributesAndPlane(v15, v16, v17, v18, v19, 36160, v20, v21);
      if (!result)
      {
        glBindFramebuffer(0x8D40u, 0);
        OUTLINED_FUNCTION_4_141();
        if (v30)
        {
          OUTLINED_FUNCTION_3_146(v22, v23, v24, v25, v26, v27, v28, v29, pixels, v32, texture[0]);
        }

        result = 0;
        if (a6)
        {
          *a6 = texture[0];
        }
      }
    }
  }

  return result;
}

uint64_t OVCRegisterPixelBufferAsRenderTarget(void *a1, uint64_t a2, CVPixelBufferRef pixelBuffer, size_t a4)
{
  *texture = 0;
  v24 = 0;
  HIDWORD(v22) = 0;
  WORD1(v22) = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(pixelBuffer, a4);
  HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(pixelBuffer, a4);
  result = ovc_getTextureAttributesForRendering(PixelFormatType, a4, &v24 + 1, &v24, &texture[1]);
  if (!result)
  {
    result = FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane(a2, pixelBuffer, a4, 3553, texture, &v22 + 3);
    if (!result)
    {
      glBindTexture(0xDE1u, texture[0]);
      if (!BYTE3(v22) || (result = OVCTexImagePixelBuffer(a1, pixelBuffer, 0xDE1u, HIDWORD(v24), WidthOfPlane, HeightOfPlane, v24, texture[1], a4), !result))
      {
        result = FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane(a2, pixelBuffer, a4, 36160, &v22 + 1, &v22 + 2);
        if (!result)
        {
          glBindFramebuffer(0x8D40u, HIDWORD(v22));
          OUTLINED_FUNCTION_4_141();
          if (v20)
          {
            OUTLINED_FUNCTION_3_146(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, texture[0]);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateCleanApertureDictionaryFromRect_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateOpenGLContext_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateOpenGLContext_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateOpenGLContext_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCCreateShader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCTexImagePixelBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCTexImagePixelBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t OVCRegisterFenceBlock_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MTProxyAudioProcessingTapGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMetricItemVariantChangeEventDeserializeAndCopy(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  cf = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  if (a1 && a2)
  {
    v4 = xpc_dictionary_get_BOOL(a1, "DidSucceed");
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      CMTime = FigXPCMessageCopyCFDate();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFString();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFArray();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFString();
            if (!CMTime)
            {
              CMTime = FigXPCMessageCopyCFURL();
              if (!CMTime)
              {
                CMTime = FigXPCMessageCopyCFString();
                if (!CMTime)
                {
                  CMTime = FigXPCMessageCopyCFURL();
                  if (!CMTime)
                  {
                    CMTime = FigXPCMessageCopyCFString();
                    if (!CMTime)
                    {
                      CMTime = FigXPCMessageCopyCFURL();
                      if (!CMTime)
                      {
                        value = xpc_dictionary_get_value(a1, "FromVariant");
                        CMTime = FigAlternateCreateWithXPCObject(value, 0, &v21);
                        if (!CMTime)
                        {
                          v7 = xpc_dictionary_get_value(a1, "ToVariant");
                          CMTime = FigAlternateCreateWithXPCObject(v7, 0, &v20);
                          if (!CMTime)
                          {
                            AllocatorForMedia = FigGetAllocatorForMedia();
                            v11 = v24;
                            v12 = v25;
                            CMTime = FigMetricItemVariantChangeEventCreateInternal(AllocatorForMedia, &v11, v23, v22, v20, v21, cf, v18, v15, v16, v13, v14, v19, v4, a2);
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
  }

  else
  {
    CMTime = FigSignalErrorAtGM();
  }

  v9 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v9;
}

uint64_t meivc_serialize(uint64_t a1, void *a2)
{
  v26 = 0;
  value = 0;
  if (!a1 || !a2)
  {
    v6 = FigSignalErrorAtGM();
LABEL_49:
    v22 = v6;
    goto LABEL_45;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 56) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = FigAlternateCopyAsXPCObject(v5, &value);
  if (v6)
  {
    goto LABEL_49;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 56) + 16);
  v8 = v7 ? v7(a1) : 0;
  v6 = FigAlternateCopyAsXPCObject(v8, &v26);
  if (v6)
  {
    goto LABEL_49;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v10 = v9 ? v9(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v10);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v11)
  {
    v11(&v24, a1);
  }

  else
  {
    v24 = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
  }

  v6 = FigXPCMessageSetCMTime();
  if (v6)
  {
    goto LABEL_49;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v12)
  {
    v12(a1);
  }

  v6 = FigXPCMessageSetCFDate();
  if (v6)
  {
    goto LABEL_49;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v13)
  {
    v14 = v13(a1);
  }

  else
  {
    v14 = 0;
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_46;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 56) + 24);
  if (v16)
  {
    v16(a1);
  }

  v15 = FigXPCMessageSetCFArray();
  if (v15)
  {
    goto LABEL_46;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 56) + 32);
  if (v17)
  {
    v17(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_46;
  }

  v15 = FigXPCMessageSetCFURL();
  if (v15)
  {
    goto LABEL_46;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 56) + 40);
  if (v18)
  {
    v18(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_46;
  }

  v15 = FigXPCMessageSetCFURL();
  if (v15)
  {
    goto LABEL_46;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 56) + 48);
  if (v19)
  {
    v19(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15 || (v15 = FigXPCMessageSetCFURL(), v15))
  {
LABEL_46:
    v22 = v15;
    if (!v14)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 56) + 56);
  if (v20)
  {
    v21 = v20(a1) != 0;
  }

  else
  {
    v21 = 0;
  }

  xpc_dictionary_set_BOOL(a2, "DidSucceed", v21);
  xpc_dictionary_set_value(a2, "ToVariant", value);
  xpc_dictionary_set_value(a2, "FromVariant", v26);
  v22 = 0;
  if (v14)
  {
LABEL_44:
    CFRelease(v14);
  }

LABEL_45:
  FigXPCRelease();
  FigXPCRelease();
  return v22;
}

uint64_t FigMetricItemVariantChangeEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meivc_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meivc_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateFilterMonitorProperty_PathwayPriorityList"))
  {
    Copy = *(DerivedStorage + 56);
    if (!Copy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (CFEqual(a2, @"AlternateFilterMonitorProperty_DefinedPathwayIDs"))
  {
    Copy = *(DerivedStorage + 88);
    if (Copy)
    {
LABEL_6:
      Copy = CFRetain(Copy);
    }

LABEL_7:
    v9 = 0;
    *a4 = Copy;
    goto LABEL_8;
  }

  if (!CFEqual(a2, @"AlternateFilterMonitorProperty_KnownPathwayPriorityList"))
  {
    if (!CFEqual(a2, @"AlternateFilterMonitorProperty_CurrentPathwayID"))
    {
      if (!CFEqual(a2, @"AlternateFilterMonitorProperty_Expanders"))
      {
        v9 = 4294951681;
        goto LABEL_8;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(DerivedStorage + 80));
      goto LABEL_7;
    }

    Copy = *(DerivedStorage + 48);
    if (Copy)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  if (*(v11 + 56))
  {
    if (a4 && (v12 = v11, (Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0])) != 0))
    {
      v14 = Mutable;
      if (CFArrayGetCount(*(v12 + 56)) >= 1)
      {
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 56), v15);
          if (CFSetContainsValue(*(v12 + 88), ValueAtIndex) || FigCFEqual())
          {
            CFArrayAppendValue(v14, ValueAtIndex);
          }

          ++v15;
        }

        while (v15 < CFArrayGetCount(*(v12 + 56)));
      }

      v9 = 0;
      *a4 = v14;
    }

    else
    {
      v9 = FigSignalErrorAtGM();
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t famcs_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_369();
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v74 = 0;
  v73 = *(DerivedStorage + 16);
  if (CFEqual(v4, @"AlternateFilterMonitorProperty_PathwayPriorityList"))
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (!FigCFEqual())
    {
      v8 = FigCFCopyCompactDescription();
      v9 = FigCFCopyCompactDescription();
      if (dword_1EAF17490)
      {
        LODWORD(v76) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_28_1(v11))
        {
          v77 = 136315906;
          v78 = "famcs_setPathwayPriorityList";
          v79 = 2048;
          v80 = v3;
          v81 = 2112;
          v82 = v8;
          v83 = 2112;
          v84 = v9;
          OUTLINED_FUNCTION_95_1();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v14 = *(v7 + 56);
      *(v7 + 56) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v74 = 1;
      if (v8)
      {
        CFRelease(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

    goto LABEL_20;
  }

  if (CFEqual(v4, @"AlternateFilterMonitorProperty_DefinedPathwayIDs"))
  {
    v31 = OUTLINED_FUNCTION_198_0();
    famcs_setDefinedPathwayIDs(v31, v32, v33);
    goto LABEL_20;
  }

  if (CFEqual(v4, @"AlternateFilterMonitorProperty_CurrentPathwayID"))
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (!FigCFEqual())
    {
      if (dword_1EAF17490)
      {
        LODWORD(v76) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = *(v12 + 48);
      *(v12 + 48) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      v17 = v73;
      if (v21)
      {
        CFRelease(v21);
      }

      v15 = 0;
      v16 = 1;
      v74 = 1;
      goto LABEL_33;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (!CFEqual(v4, @"AlternateFilterMonitorProperty_PathwayClones"))
  {
    if (!CFEqual(v4, @"AlternateFilterMonitorProperty_ReportingAgent"))
    {
      if (CFEqual(v4, @"AlternateFilterMonitorProperty_LastTimestampClientDidPause"))
      {
        v28 = OUTLINED_FUNCTION_198_0();
        TimestampClientDidPause = famcs_setLastTimestampClientDidPause(v28, v29);
      }

      else if (CFEqual(v4, @"AlternateFilterMonitorProperty_SelectedAlternate"))
      {
        OUTLINED_FUNCTION_198_0();
        TimestampClientDidPause = famcs_setSelectedAlternate();
      }

      else if (CFEqual(v4, @"AlternateFilterMonitorProperty_SelectedMediaArray"))
      {
        OUTLINED_FUNCTION_198_0();
        TimestampClientDidPause = famcs_setSelectedMediaArray();
      }

      else
      {
        if (!CFEqual(v4, @"AlternateFilterMonitorProperty_StreamingCache"))
        {
          v15 = 4294951681;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_198_0();
        TimestampClientDidPause = famcs_setStreamingCache();
      }

      v15 = TimestampClientDidPause;
LABEL_21:
      v16 = 1;
      v17 = v73;
      goto LABEL_33;
    }

    v58 = OUTLINED_FUNCTION_198_0();
    famcs_setReportingAgent(v58, v59);
    goto LABEL_20;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  *type = 0;
  v76 = 0;
  if (FigCFEqual())
  {
    v60 = 0;
    goto LABEL_101;
  }

  v72 = v18;
  PathwayIDDescriptionGivenPathwayClones = famcs_createPathwayIDDescriptionGivenPathwayClones(*(v18 + 64), &v76);
  if (PathwayIDDescriptionGivenPathwayClones || (PathwayIDDescriptionGivenPathwayClones = famcs_createPathwayIDDescriptionGivenPathwayClones(a3, type), PathwayIDDescriptionGivenPathwayClones))
  {
    v15 = PathwayIDDescriptionGivenPathwayClones;
    v60 = 0;
    goto LABEL_102;
  }

  if (dword_1EAF17490)
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v34 = *(v18 + 64);
  *(v72 + 64) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v35 = CMBaseObjectGetDerivedStorage();
  v36 = OUTLINED_FUNCTION_9_2();
  Mutable = CFDictionaryCreateMutable(v36, v37, v38, v39);
  if (Mutable)
  {
    v41 = Mutable;
    v42 = OUTLINED_FUNCTION_9_2();
    v46 = CFDictionaryCreateMutable(v42, v43, v44, v45);
    if (v46)
    {
      v47 = v46;
      for (i = 0; ; ++i)
      {
        Count = *(v35 + 64);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v35 + 64), i);
        BaseID = FigPathwayCloneGetBaseID();
        ID = FigPathwayCloneGetID();
        if (!CFDictionaryContainsKey(v47, BaseID))
        {
          v53 = OUTLINED_FUNCTION_9_2();
          v55 = CFArrayCreateMutable(v53, v54, MEMORY[0x1E695E9C0]);
          if (!v55)
          {
            OUTLINED_FUNCTION_120();
            v15 = FigSignalErrorAtGM();
            CFRelease(v47);
            goto LABEL_78;
          }

          v56 = v55;
          CFDictionaryAddValue(v47, BaseID, v55);
          CFRelease(v56);
        }

        Value = CFDictionaryGetValue(v47, BaseID);
        CFArrayAppendValue(Value, ID);
        CFDictionaryAddValue(v41, ID, ValueAtIndex);
      }

      goto LABEL_80;
    }

    OUTLINED_FUNCTION_120();
    v15 = FigSignalErrorAtGM();
LABEL_78:
    CFRelease(v41);
  }

  else
  {
    OUTLINED_FUNCTION_120();
    v15 = FigSignalErrorAtGM();
  }

  v41 = 0;
  v47 = 0;
  v60 = 0;
  v61 = 0;
  if (v15)
  {
    goto LABEL_93;
  }

LABEL_80:
  v62 = FigCFSetCopyValuesAsCFArray();
  if (v62)
  {
    v15 = v62;
    v60 = 0;
    goto LABEL_89;
  }

  v63 = OUTLINED_FUNCTION_9_2();
  v61 = CFArrayCreateMutable(v63, v64, v65);
  if (v61)
  {
    v66 = 0;
    while (1)
    {
      v67 = cf[0];
      if (cf[0])
      {
        v67 = CFArrayGetCount(cf[0]);
      }

      if (v66 >= v67)
      {
        break;
      }

      v68 = CFArrayGetValueAtIndex(cf[0], v66);
      v69 = CFDictionaryGetValue(v47, v68);
      v70 = famcs_recursivelyProcessPathwayClonesAndAddToExpanderArray(v3, v69, v47, v41, v61);
      ++v66;
      if (v70)
      {
        goto LABEL_116;
      }
    }

    v15 = 0;
    v60 = v61;
LABEL_89:
    v61 = 0;
    if (!v47)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  OUTLINED_FUNCTION_120();
  v70 = FigSignalErrorAtGM();
LABEL_116:
  v15 = v70;
  v60 = 0;
  if (!v47)
  {
    goto LABEL_91;
  }

LABEL_90:
  CFRelease(v47);
LABEL_91:
  if (v41)
  {
    CFRelease(v41);
  }

LABEL_93:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v15)
  {
    goto LABEL_102;
  }

  v71 = *(v72 + 80);
  if (!v60)
  {
    v87.location = 0;
    v87.length = 0;
    CFArrayAppendArray(*(v72 + 80), 0, v87);
LABEL_101:
    v15 = 0;
LABEL_102:
    v16 = 1;
    goto LABEL_103;
  }

  v86.length = CFArrayGetCount(v60);
  v86.location = 0;
  CFArrayAppendArray(v71, v60, v86);
  v15 = 0;
  v16 = CFArrayGetCount(v60) < 1;
LABEL_103:
  v17 = v73;
  if (v76)
  {
    CFRelease(v76);
  }

  if (*type)
  {
    CFRelease(*type);
  }

  if (v60)
  {
    CFRelease(v60);
  }

LABEL_33:
  if (v74)
  {
    ++v17;
  }

  v22 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v23 = v22[2];
  if (v23 == v17)
  {
    FigSimpleMutexUnlock();
    if (!v16)
    {
      FigAlternateFilterMonitorUtilityPostExpandersAddedNotification();
    }
  }

  else
  {
    v24 = CFGetAllocator(v3);
    if (FigAlternatePathwayPreferenceFilterCreate(v24, v22[6], v22[7], cf))
    {
      v25 = 0;
    }

    else
    {
      v25 = v22[3];
      v26 = cf[0];
      if (cf[0])
      {
        v26 = CFRetain(cf[0]);
      }

      v22[2] = v17;
      v22[3] = v26;
    }

    FigSimpleMutexUnlock();
    if (v16 || !FigAlternateFilterMonitorUtilityPostExpandersAddedNotification())
    {
      FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewStateIfNecessary(v3, v25, cf[0], v23, v17);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v15;
}

uint64_t famcs_clearNetworkRequestState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 216);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (!v2)
    {
      return 4294954514;
    }

    result = v2(v1);
    if (result)
    {
      return result;
    }

    v4 = *(DerivedStorage + 216);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 216) = 0;
    }
  }

  v5 = *(DerivedStorage + 232);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 232) = 0;
  }

  *(DerivedStorage + 224) = 0;
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(v6 + 240);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = *(v6 + 248);
  if (!v9)
  {
    return 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  result = v10(v7, v9);
  if (!result)
  {
    *(v8 + 248) = 0;
  }

  return result;
}

void famcs_setDefinedPathwayIDs(uint64_t a1, const void *a2, _BYTE *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    v6 = FigCFCopyCompactDescription();
    v7 = FigCFCopyCompactDescription();
    if (dword_1EAF17490)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v9 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (a3)
    {
      *a3 = 1;
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void famcs_setReportingAgent(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    v4 = *(DerivedStorage + 120);
    *(DerivedStorage + 120) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }
}

uint64_t famcs_setSelectedAlternate()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    return 0;
  }

  v3 = *(DerivedStorage + 136);
  *(DerivedStorage + 136) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return famcs_ensureSteeringReloadTimerIsScheduled(v0);
}

uint64_t famcs_setSelectedMediaArray()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    return 0;
  }

  v3 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return famcs_ensureSteeringReloadTimerIsScheduled(v0);
}

uint64_t famcs_setStreamingCache()
{
  OUTLINED_FUNCTION_369();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    return 0;
  }

  v3 = *(DerivedStorage + 144);
  *(DerivedStorage + 144) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return famcs_ensureSteeringReloadTimerIsScheduled(v0);
}

uint64_t famcs_recursivelyProcessPathwayClonesAndAddToExpanderArray(uint64_t a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, __CFArray *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!a2)
  {
    return 0;
  }

  v11 = DerivedStorage;
  if (CFArrayGetCount(a2) < 1)
  {
    return 0;
  }

  v12 = 0;
  v13 = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
    if (CFSetContainsValue(*(v11 + 88), ValueAtIndex))
    {
      goto LABEL_10;
    }

    MutableCopy = CFSetCreateMutableCopy(v13, 0, *(v11 + 88));
    CFSetAddValue(MutableCopy, ValueAtIndex);
    famcs_setDefinedPathwayIDs(a1, MutableCopy, 0);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v16 = CFDictionaryGetValue(a4, ValueAtIndex);
    v17 = FigAlternatePathwayCloningExpanderCreate(v13, v16, &value);
    if (v17)
    {
      break;
    }

    CFArrayAppendValue(a5, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

LABEL_10:
    v18 = CFDictionaryGetValue(a3, ValueAtIndex);
    v17 = famcs_recursivelyProcessPathwayClonesAndAddToExpanderArray(a1, v18, a3, a4, a5);
    if (v17)
    {
      break;
    }

    if (++v12 >= CFArrayGetCount(a2))
    {
      v19 = 0;
      goto LABEL_13;
    }
  }

  v19 = v17;
LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  return v19;
}

uint64_t famcs_ensureSteeringReloadTimerIsScheduled(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104) == 0x8000000000000000)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CMBaseObjectGetDerivedStorage();
  if (v4[22] || v4[27] || v4[31])
  {
    return 0;
  }

  if (famcs_shouldSendSteeringManifestRequest())
  {
    v7 = *(v3 + 40);

    return famcs_sendContentSteeringManifestRequest(a1, v7);
  }

  else
  {
    if (*(CMBaseObjectGetDerivedStorage() + 112) == 0x8000000000000000)
    {
      return 0;
    }

    v6 = *(v3 + 96) + (FigGetUpTimeNanoseconds() - *(v3 + 112)) / -1000000000.0;

    return famcs_setSteeringRequestReloadTimer(v6);
  }
}

uint64_t famcs_sendContentSteeringManifestRequest(uint64_t a1, const __CFURL *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = famcs_clearNetworkRequestState();
  if (v5)
  {
    return v5;
  }

  *(DerivedStorage + 112) = FigGetUpTimeNanoseconds();
  if ((*(CMBaseObjectGetDerivedStorage() + 128) & 1) != 0 && (FigCFHTTPIsHTTPBasedURL(a2) || FigCFHTTPIsDataURL(a2)))
  {
    if (!FigCFHTTPIsHTTPBasedURL(a2))
    {
      v13 = 0;
      goto LABEL_36;
    }

    v8 = CMBaseObjectGetDerivedStorage();
    v9 = OUTLINED_FUNCTION_9_2();
    Mutable = CFArrayCreateMutable(v9, v10, v11);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = DerivedStorage;
      v15 = CMBaseObjectGetDerivedStorage();
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v64 = 0;
      memset(__src, 0, sizeof(__src));
      v17 = *(v15 + 32);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v18)
      {
        bzero(cf, 0xA8uLL);
        v70 = 9;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        if (!v18(v17, UpTimeNanoseconds, cf, __src))
        {
          v57 = *&__src[0];
          v30 = OUTLINED_FUNCTION_9_2();
          v33 = CFStringCreateWithFormat(v30, v31, v32, v57);
          if (v33)
          {
            v19 = v33;
            CFArrayAppendValue(v13, @"_HLS_throughput=");
            CFArrayAppendValue(v13, v19);
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM();
        }
      }

      v19 = 0;
LABEL_32:
      DerivedStorage = v14;
      if (*(v8 + 48))
      {
        CFArrayAppendValue(v13, @"_HLS_pathway=");
        CFArrayAppendValue(v13, *(v8 + 48));
      }

      if (v19)
      {
        CFRelease(v19);
      }

LABEL_36:
      if (dword_1EAF17490)
      {
        v34 = OUTLINED_FUNCTION_14_62();
        v35 = os_log_type_enabled(v34, type[0]);
        if (OUTLINED_FUNCTION_28_1(v35))
        {
          LODWORD(__src[0]) = 136315906;
          *(__src + 4) = "famcs_sendContentSteeringManifestRequest";
          OUTLINED_FUNCTION_8_82();
          LOWORD(__src[2]) = 2112;
          *(&__src[2] + 2) = v13;
          OUTLINED_FUNCTION_95_1();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v36 = CMBaseObjectGetDerivedStorage();
      *type = 0;
      v61 = 0;
      memset(__src, 0, 68);
      v37 = famcs_clearNetworkRequestState();
      if (v37)
      {
        v29 = v37;
        a2 = 0;
        goto LABEL_67;
      }

      *cf = 0;
      if (a2)
      {
        a2 = CFRetain(a2);
      }

      if (v13)
      {
        Count = CFArrayGetCount(v13);
        if (Count >= 2 && (Count & 1) == 0)
        {
          v39 = 0;
          v40 = Count - 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v39);
            v42 = v39 + 1;
            v43 = CFArrayGetValueAtIndex(v13, v39 + 1);
            Param = FigCFHTTPCreateURLWithQueryParam(a2, ValueAtIndex, v43, cf);
            v45 = *cf;
            if (Param)
            {
              break;
            }

            if (*cf)
            {
              CFRetain(*cf);
            }

            if (a2)
            {
              CFRelease(a2);
            }

            if (*cf)
            {
              CFRelease(*cf);
              *cf = 0;
            }

            v39 += 2;
            a2 = v45;
            if (v42 + 1 >= v40)
            {
              goto LABEL_55;
            }
          }

          v29 = Param;
          if (*cf)
          {
            CFRelease(*cf);
          }

LABEL_67:
          if (*type)
          {
            CFRelease(*type);
          }

          if (a2)
          {
            CFRelease(a2);
          }

          if (v29)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }
      }

      v45 = a2;
LABEL_55:
      v46 = *MEMORY[0x1E695E480];
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(v36 + 200));
      if (MutableCopy)
      {
        v48 = nw_activity_create();
        if (v48)
        {
          v49 = v48;
          if (*(v36 + 208))
          {
            nw_activity_set_parent_activity();
          }

          CFDictionarySetValue(MutableCopy, @"FHRP_NetworkActivity", v49);
          CFRelease(v49);
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_179();
        v56 = FigSignalErrorAtGM();
        if (v56)
        {
          v29 = v56;
LABEL_66:
          a2 = v45;
          goto LABEL_67;
        }
      }

      v50 = *(v36 + 160);
      v58 = *(v36 + 192);
      v59 = *(v36 + 184);
      v51 = *(v36 + 8);
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v52)
      {
        memcpy(cf, __src, sizeof(cf));
        v66 = 9;
        v67 = 0u;
        v68 = 0u;
        v69 = 0;
        v29 = v52(v50, v46, 0, v45, 0, v58, MutableCopy, v59, cf, 0, 0, 0, famcs_steeringManifestHTTPReadCallback, v51, type, &v61);
        if (!v29)
        {
          *(v36 + 216) = *type;
          *(v36 + 224) = v61;
          *type = 0;
        }
      }

      else
      {
        v29 = 4294954514;
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1_179();
    v5 = FigSignalErrorAtGM();
    if (!v5)
    {
      v13 = 0;
      goto LABEL_36;
    }

    return v5;
  }

  if (dword_1EAF17490)
  {
    v6 = OUTLINED_FUNCTION_14_62();
    if (os_log_type_enabled(v6, type[0]))
    {
      v7 = v60;
    }

    else
    {
      v7 = v60 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LODWORD(__src[0]) = 136315650;
      *(__src + 4) = "famcs_sendContentSteeringManifestRequest";
      OUTLINED_FUNCTION_8_82();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = CMBaseObjectGetDerivedStorage();
  *cf = 0;
  if (!*(v20 + 240) || (v21 = v20, v22 = v20 + 248, *(v20 + 248)))
  {
    OUTLINED_FUNCTION_1_179();
    v23 = FigSignalErrorAtGM();
    goto LABEL_83;
  }

  v23 = FigCustomURLRequestInfoCreateMutable();
  if (v23)
  {
LABEL_83:
    v29 = v23;
    goto LABEL_27;
  }

  v24 = FigCFHTTPCreateUserAgent();
  v25 = FigCustomURLRequestInfoSetUserAgent();
  if (v25 || (v25 = FigCustomURLRequestInfoSetAcceptEncoding(), v25))
  {
LABEL_23:
    v29 = v25;
    if (!v24)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v26 = *(v21 + 240);
  v27 = *(v21 + 168);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v28)
  {
    v25 = v28(v26, *cf, a1, v27, famcs_steeringManifestCustomURLReadCallback, v22);
    goto LABEL_23;
  }

  v29 = 4294954514;
  if (v24)
  {
LABEL_26:
    CFRelease(v24);
  }

LABEL_27:
  if (v29)
  {
    return v29;
  }

  v13 = 0;
LABEL_72:
  v53 = *(DerivedStorage + 120);
  if (v53)
  {
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v54)
    {
      v54(v53, 0x1F0B64538, 0x1F0B43658, 1);
    }
  }

  v29 = 0;
LABEL_76:
  if (v13)
  {
    CFRelease(v13);
  }

  return v29;
}

void famcs_steeringManifestHTTPReadCallback(uint64_t a1, int a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, int a8)
{
  cf[21] = *MEMORY[0x1E69E9840];
  v28 = 0;
  cf[0] = 0;
  v27 = 0;
  if (!famcs_copyMonitorFromRetainProxy(a3, cf))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 216) == a1 && *(DerivedStorage + 224) == a2)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        v19 = 0;
        v21 = 0;
        v22 = 1;
        goto LABEL_14;
      }

      v17 = *MEMORY[0x1E695E480];
      v18 = v16(a1, @"FHRP_HTTPResponseHeaders", *MEMORY[0x1E695E480], &v28);
      if (v18)
      {
        v22 = v18;
        v19 = 0;
        v21 = 0;
        goto LABEL_14;
      }

      v19 = FigCFHTTPCopyRetryAfterDateFromHTTPResponse(v28);
      if (a8)
      {
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(a1, @"FHRP_ErrorReturned", v17, &v27);
        }

        famcs_handleSteeringManifestNetworkError(cf[0], v19, a8);
        v21 = 0;
        v22 = 1;
        goto LABEL_14;
      }

      if (!a4 || (appended = famcs_appendBlockBuffers(cf[0], a4, a5, a6)) == 0)
      {
        if ((a7 & 2) != 0)
        {
          v25 = *(DerivedStorage + 232);
          if (v25)
          {
            v21 = CFRetain(v25);
          }

          else
          {
            v21 = 0;
          }

          BB = famcs_clearNetworkRequestState();
          if (!BB)
          {
            BB = famcs_evaluateContentSteeringManifestFromReadBB(cf[0], v21);
          }

          v22 = BB;
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

LABEL_14:
        FigSimpleMutexUnlock();
        if (!v22)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      v22 = appended;
    }

    else
    {
      v22 = FigSignalErrorAtGM();
      v19 = 0;
    }

    v21 = 0;
    goto LABEL_14;
  }

  v19 = 0;
  v21 = 0;
LABEL_15:
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_17:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

size_t famcs_appendBlockBuffers(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, size_t a4)
{
  v7 = (CMBaseObjectGetDerivedStorage() + 232);
  if (*v7 || (result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, v7), !result))
  {
    result = CMBlockBufferGetDataLength(a2);
    if (result)
    {
      v9 = *v7;

      return CMBlockBufferAppendBufferReference(v9, a2, a3, a4, 0);
    }
  }

  return result;
}

uint64_t famcs_evaluateContentSteeringManifestFromReadBB(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v5 = FigSteeringManifestCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 40), 0, 0, 0, &cf);
  if (v5)
  {
LABEL_10:
    v13 = v5;
    goto LABEL_12;
  }

  ReloadURI = FigSteeringManifestGetReloadURI();
  if (ReloadURI)
  {
    v7 = *(DerivedStorage + 40);
    *(DerivedStorage + 40) = ReloadURI;
    CFRetain(ReloadURI);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  TTL = FigSteeringManifestGetTTL();
  v9 = 1.0;
  if (TTL > 1.0)
  {
    v9 = FigSteeringManifestGetTTL();
  }

  *(DerivedStorage + 96) = v9;
  PathwayClones = FigSteeringManifestGetPathwayClones();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v5 = v11(a1, @"AlternateFilterMonitorProperty_PathwayClones", PathwayClones);
    if (!v5)
    {
      PathwayPriorityList = FigSteeringManifestGetPathwayPriorityList();
      v5 = famcs_invokeTrigger(a1, PathwayPriorityList);
    }

    goto LABEL_10;
  }

  v13 = 4294954514;
LABEL_12:
  famcs_setSteeringRequestReloadTimer(a1, *(DerivedStorage + 96));
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void famcs_steeringManifestCustomURLReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, __CFError *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v31 = 0;
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 248) != a2)
  {
    appended = FigSignalErrorAtGM();
    goto LABEL_43;
  }

  HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
  if (HTTPStatusCode)
  {
    appended = HTTPStatusCode;
    if (HTTPStatusCode != -17360)
    {
      goto LABEL_43;
    }
  }

  v14 = FigCustomURLResponseInfoCopyHTTPHeaders();
  if (v14 == -17360)
  {
    appended = 0;
  }

  else
  {
    appended = v14;
  }

  if (a6)
  {
    goto LABEL_10;
  }

  appended = FigCFHTTPCreateCFErrorFromHTTPStatusCode(0, &v31);
  if (appended)
  {
LABEL_43:
    v20 = 0;
    v16 = 0;
    goto LABEL_44;
  }

  a6 = v31;
  if (v31)
  {
LABEL_10:
    Code = CFErrorGetCode(a6);
    goto LABEL_11;
  }

  Code = 0;
LABEL_11:
  if (FigCFHTTPIsStatusCodeRedirect(0))
  {
    v16 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(cf);
    if (v16)
    {
      v17 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF17490)
      {
        v18 = OUTLINED_FUNCTION_13_52();
        v19 = os_log_type_enabled(v18, type);
        if (OUTLINED_FUNCTION_28_1(v19))
        {
          v22 = *(v17 + 40);
          v23 = @"[]";
          if (*(v17 + 152))
          {
            v23 = v16;
          }

          else
          {
            v22 = @"[]";
          }

          v35 = 136315906;
          v36 = "famcs_redirectSteeringManifestRequest";
          v37 = 2048;
          v38 = a1;
          v39 = 2112;
          v40 = v22;
          v41 = 2112;
          v42 = v23;
          OUTLINED_FUNCTION_95_1();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v24 = *(v17 + 40);
      *(v17 + 40) = v16;
      CFRetain(v16);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = famcs_clearNetworkRequestState();
      if (!v25)
      {
        appended = famcs_sendContentSteeringManifestRequest(a1, *(v17 + 40));
        if (appended)
        {
LABEL_30:
          v20 = 0;
LABEL_44:
          v21 = 0;
          goto LABEL_45;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = FigSignalErrorAtGM();
    }

    appended = v25;
    goto LABEL_30;
  }

  if (Code)
  {
    v43 = 0;
    if (FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
    {
      v20 = FigCFHTTPCreateDateFromHTTPDateStringOrDelayString(v43);
    }

    else
    {
      v20 = 0;
    }

    famcs_handleSteeringManifestNetworkError(a1, v20, Code);
    v16 = 0;
    v21 = 0;
    appended = 1;
    goto LABEL_45;
  }

  if (a4)
  {
    appended = famcs_appendBlockBuffers(a1, a4, 0, 0);
    v20 = 0;
    if (appended)
    {
      v16 = 0;
      v21 = 0;
      goto LABEL_45;
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_29:
  if ((a5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v26 = *(DerivedStorage + 232);
  if (v26)
  {
    v21 = CFRetain(v26);
  }

  else
  {
    v21 = 0;
  }

  BB = famcs_clearNetworkRequestState();
  if (!BB)
  {
    BB = famcs_evaluateContentSteeringManifestFromReadBB(a1, v21);
  }

  appended = BB;
  v20 = 0;
LABEL_45:
  FigSimpleMutexUnlock();
  if (appended && dword_1EAF17490)
  {
    v28 = OUTLINED_FUNCTION_13_52();
    v29 = v34;
    if (os_log_type_enabled(v28, type))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      v35 = 136315394;
      v36 = "famcs_steeringManifestCustomURLReadCallback";
      v37 = 2048;
      v38 = a1;
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void famcs_steeringRequestReloadTimerCallback(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!famcs_copyMonitorFromRetainProxy(a2, &cf))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (famcs_shouldSendSteeringManifestRequest())
    {
      if (dword_1EAF17490)
      {
        v14 = OUTLINED_FUNCTION_11_69();
        if (OUTLINED_FUNCTION_106_1(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25)))
        {
          v22 = v2;
        }

        else
        {
          v22 = v2 & 0xFFFFFFFE;
        }

        if (v22)
        {
          v27 = 136315394;
          OUTLINED_FUNCTION_6_113();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      famcs_sendContentSteeringManifestRequest(cf, *(DerivedStorage + 40));
    }

    else
    {
      if (dword_1EAF17490)
      {
        v4 = OUTLINED_FUNCTION_11_69();
        if (OUTLINED_FUNCTION_106_1(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25)))
        {
          v12 = v2;
        }

        else
        {
          v12 = v2 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v27 = 136315394;
          OUTLINED_FUNCTION_6_113();
          OUTLINED_FUNCTION_65();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v13 = CMBaseObjectGetDerivedStorage();
      FigHTTPStopAndReleaseTimer((v13 + 176));
    }

    FigSimpleMutexUnlock();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternateFilterMonitorCreateForContentSteering_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateFilterMonitorCreateForContentSteering_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_createPathwayIDDescriptionGivenPathwayClones_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_createPathwayIDDescriptionGivenPathwayClones_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_copyMonitorFromRetainProxy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_copyMonitorFromRetainProxy_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_copyMonitorFromRetainProxy_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t famcs_copyFilterForCurrentState_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ProcessContainerAtom(uint64_t a1, uint64_t a2, int a3, uint64_t (**a4)(uint64_t, uint64_t, char *, uint64_t), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  result = FigAtomStreamInitWithParent();
  if (a3 == 1969517665 && result == -12893)
  {
    return 0;
  }

  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      OUTLINED_FUNCTION_4_9();
      result = FigAtomWriterInitWithParent();
      if (!result)
      {
        result = ProcessChildAtoms(v17, v15, a4, a5, a6, a7);
        v14 = result == -12893 && a3 == 1969517665;
        if (v14 || !result)
        {
          return FigAtomWriterEndAtom();
        }
      }
    }
  }

  return result;
}

uint64_t ProcessSampleTableAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ProcessContainerAtom(a1, a2, 1937007212, ProcessSampleTableAtom_atomDispatch, 10, SampleTableOmitFilter, a4);
  if (!v5)
  {
    destination = 0;
    CMBlockBufferCopyDataBytes(*(a4 + 8), *(a4 + 16), 4uLL, &destination);
    destination = bswap32(*(a4 + 24));
    CMBlockBufferReplaceDataBytes(&destination, *(a4 + 8), *(a4 + 16), 4uLL);
  }

  return v5;
}

uint64_t ProcessTimeToSampleNumAtom()
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v3 = 0u;
  v4 = 0u;
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (!CurrentAtomData)
  {
    CurrentAtomData = OUTLINED_FUNCTION_8_83();
    if (!CurrentAtomData)
    {
      CurrentAtomData = FigAtomWriterAppendData();
      if (!CurrentAtomData)
      {
        CurrentAtomData = FigAtomWriterEndAtom();
      }
    }
  }

  v1 = CurrentAtomData;
  if (v7)
  {
    CFRelease(v7);
  }

  return v1;
}

uint64_t ProcessCompositionOffsetAtom()
{
  v8 = 0;
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v3 = 0u;
  v4 = 0u;
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (!CurrentAtomData)
  {
    v7 = bswap32(v7);
    CurrentAtomData = FigAtomWriterBeginAtom();
    if (!CurrentAtomData)
    {
      CurrentAtomData = FigAtomWriterAppendData();
      if (!CurrentAtomData)
      {
        CurrentAtomData = FigAtomWriterEndAtom();
      }
    }
  }

  v1 = CurrentAtomData;
  if (v8)
  {
    CFRelease(v8);
  }

  return v1;
}

uint64_t ProcessSampleToChunkAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = FigAtomStreamReadCurrentAtomData();
  if (!result)
  {
    v6 = bswap32(0);
    if (v6 < 1)
    {
LABEL_15:
      result = OUTLINED_FUNCTION_8_83();
      if (!result)
      {
        FigAtomWriterGetAtomGlobalDataOffset();
        *(a4 + 16) = 12;
        result = FigAtomWriterAppendData();
        if (!result)
        {
          return FigAtomWriterEndAtom();
        }
      }
    }

    else
    {
      result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!result)
      {
        result = OUTLINED_FUNCTION_7_96(0, v7, v8, v9, v10, v11, v12, v13, v24, 0, 0);
        if (!result)
        {
          if (lengthAtOffsetOut == 12 * v6)
          {
            v14 = 0;
            v15 = v6 - 1;
            v16 = v26;
            while (1)
            {
              v17 = bswap32(*v16);
              v18 = bswap32(v16[3]);
              v19 = __OFSUB__(v18, v17);
              v20 = v18 - v17;
              if (v19)
              {
                break;
              }

              v21 = bswap32(v16[1]) * v20;
              v22 = v21 != v21;
              v19 = __OFADD__(v14, v21);
              v14 += v21;
              v23 = v19;
              if (v22 || v23)
              {
                break;
              }

              v16 += 3;
              if (!--v15)
              {
                if (__OFADD__(bswap32(v26[3 * (v6 - 1) + 1]), v14))
                {
                  break;
                }

                goto LABEL_15;
              }
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
          return FigSignalErrorAtGM();
        }
      }
    }
  }

  return result;
}

uint64_t ProcessSampleSizeAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = FigAtomStreamReadCurrentAtomData();
  if (!result)
  {
    *(a4 + 24) = bswap32(0);
    result = OUTLINED_FUNCTION_8_83();
    if (!result)
    {
      result = FigAtomWriterAppendData();
      if (!result)
      {
        return FigAtomWriterEndAtom();
      }
    }
  }

  return result;
}

uint64_t ProcessChunkOffsetAtom()
{
  result = OUTLINED_FUNCTION_8_83();
  if (!result)
  {
    OUTLINED_FUNCTION_4_9();
    result = FigAtomWriterAppendData();
    if (!result)
    {
      return FigAtomWriterEndAtom();
    }
  }

  return result;
}

uint64_t ProcessChunkOffset64Atom()
{
  result = FigAtomWriterBeginAtom();
  if (!result)
  {
    OUTLINED_FUNCTION_4_9();
    result = FigAtomWriterAppendData();
    if (!result)
    {
      return FigAtomWriterEndAtom();
    }
  }

  return result;
}

uint64_t ProcessSampleDependencyAtom()
{
  OUTLINED_FUNCTION_613();
  result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      if (CMBlockBufferGetDataLength(0) <= 0x1F4)
      {
        CMBlockBufferGetDataLength(0);
      }

      result = FigAtomWriterAppendBlockBufferData();
      if (!result)
      {
        return FigAtomWriterEndAtom();
      }
    }
  }

  return result;
}

uint64_t ProcessSampleToGroupAtom()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t ProcessMOVCompactSampleToGroupAtom()
{
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  else
  {
    return 0;
  }
}

uint64_t MovieProxyDataCreateForByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MovieProxyDataCreateForByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVCPPreprocessParametersSetProperty()
{
  OUTLINED_FUNCTION_48_4();
  MEMORY[0x19A8D3660](&fvcp_preprocessParameters_getSetPropertyDispatchDictionary_sSetPropertyDispatchDictionaryOnce, fvcp_preprocessParameters_initSetPropertyDispatchDictionary);
  Value = CFDictionaryGetValue(fvcp_preprocessParameters_setPropertyDispatchDictionary, v2);
  if (!Value)
  {
    return 4294954512;
  }

  return Value(v1, v0);
}

uint64_t FigVCPSourceInvalidate(uint64_t a1)
{
  if (!CMBaseObjectGetDerivedStorage() || !FigVCPInvalidatePrologue())
  {
    return 0;
  }

  if (a1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v2)
    {
      v3 = v2(a1);
    }

    else
    {
      v3 = 4294954514;
    }
  }

  else
  {
    v3 = 4294954516;
  }

  FigAtomicCompareAndSwap32();
  return v3;
}

uint64_t FigVCPSourceRequiresWindowedSampling(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    memcpy(v5, (result + 120), sizeof(v5));
    if (a2)
    {
      IsZeroWhenNotSeeking = FigVideoCompositionTimeWindowDurationIsZeroWhenNotSeeking(v5);
    }

    else
    {
      IsZeroWhenNotSeeking = FigVideoCompositionTimeWindowDurationIsZeroWhenSeeking(v5);
    }

    return !IsZeroWhenNotSeeking;
  }

  return result;
}

uint64_t FigVCPSourceHoldTriggerUntilAvailabilityChanges()
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_35_24();
  if (result)
  {
    OUTLINED_FUNCTION_81_6();

    return FigAtomicCompareAndSwap32();
  }

  return result;
}

uint64_t FigVCPSourceShouldTriggerWhenAvailabilityChanges()
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_35_24();
  if (result)
  {
    OUTLINED_FUNCTION_63_14();

    return FigAtomicCompareAndSwap32();
  }

  return result;
}

uint64_t FigVCPCoreAnimationSourceCreate(const __CFAllocator *a1, int a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6, double a7, double a8)
{
  v23 = 0;
  cf = 0;
  if (!a6 || !a2 || !a3)
  {
    v16 = FigSignalErrorAtGM();
    goto LABEL_16;
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v16 = CMDerivedObjectCreate();
  if (v16)
  {
LABEL_16:
    v19 = v16;
    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 8) = a5;
  v18 = CMBaseObjectGetDerivedStorage();
  *(v18 + 16) = 1986618469;
  v19 = FigVCPPreprocessParametersCreate(a1, 1111970369, &v23);
  v20 = v23;
  if (!v19)
  {
    *(v18 + 32) = v23;
    v23 = 0;
    *(v18 + 240) = a7;
    *(v18 + 248) = a8;
    *(v18 + 256) = CFRetain(a3);
    if (a4)
    {
      v21 = CFRetain(a4);
    }

    else
    {
      v21 = 0;
    }

    *(v18 + 264) = v21;
    *(v18 + 288) = 0x7FFFFFFFLL;
    v20 = v23;
    *a6 = cf;
    cf = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t fvcp_bq_source_resetOutput()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_35_24();
  if (result)
  {
    FigSimpleMutexLock();
    v2 = MEMORY[0x1E6960C70];
    v3 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 304) = *MEMORY[0x1E6960C70];
    v4 = *(v2 + 16);
    *(DerivedStorage + 320) = v4;
    *(DerivedStorage + 328) = v3;
    *(DerivedStorage + 344) = v4;
    OUTLINED_FUNCTION_63_14();
    FigAtomicCompareAndSwap32();
    OUTLINED_FUNCTION_63_14();
    FigAtomicCompareAndSwap32();
    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 240);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 240) = 0;
    }

    v6 = *(DerivedStorage + 256);
    if (v6)
    {
      CFArrayRemoveAllValues(v6);
    }

    result = FigSimpleMutexUnlock();
    *(DerivedStorage + 264) = 0;
  }

  return result;
}

void fvcp_pendingFrame_propagateSceneLuxAttachmentFromSourceToRenderedFrameIfApplicable(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = CVBufferCopyAttachment(v2, @"SceneIllumination", 0);
    if (v3)
    {

      CFRelease(v3);
    }

    else
    {
      v4 = *(a1 + 192);
      if (v4)
      {
        v5 = *(a1 + 176);

        CVBufferSetAttachment(v5, @"SceneIllumination", v4, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }
}

void FigVCPPendingFrameSetRenderedTaggedBufferGroup(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 184) = v3;

  fvcp_pendingFrame_propagateSceneLuxAttachmentFromSourceToRenderedFrameIfApplicable(a1);
}

uint64_t fvcp_timing_removeTimebaseListeners()
{
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_32_27();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_32_27();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void FigVCPTimingInvalidate(uint64_t a1)
{
  if (a1 && FigVCPInvalidatePrologue())
  {
    if (FigVCPTimingCopyTimebase(a1))
    {
      OUTLINED_FUNCTION_199();
      if (!fvcp_timing_removeTimebaseListeners())
      {
        OUTLINED_FUNCTION_44_24();
        FigAtomicCompareAndSwap32();
      }

      CFRelease(v1);
    }

    else
    {
      OUTLINED_FUNCTION_44_24();

      FigAtomicCompareAndSwap32();
    }
  }
}

void fvcp_processingState_advanceCurrentTimeWithSourceTiming()
{
  OUTLINED_FUNCTION_48_4();
  v12 = 0;
  v10 = *(v3 + 100);
  v11 = *(v3 + 116);
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  *(v3 + 126) = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 88) && (v6 = v10, v7 = v11, !FigVCPSourceGetEarliestSequentialSampleTimeAfterTime(v2, &v6, &v8, &v12)))
  {
    if (v12)
    {
      if ((*(v1 + 76) & 0x80000000) != 0)
      {
        v5 = MEMORY[0x1E6960C80];
      }

      else
      {
        v5 = MEMORY[0x1E6960C88];
      }

      OUTLINED_FUNCTION_106(v5);
    }

    if (BYTE12(v8))
    {
      *(v1 + 100) = v8;
      *(v1 + 116) = v9;
      v4 = 1;
      if (!v0)
      {
        return;
      }
    }

    else
    {
      v4 = 1;
      *(v1 + 126) = 1;
      FigVCPSourceHoldTriggerUntilAvailabilityChanges();
      if (!v0)
      {
        return;
      }
    }
  }

  else
  {
    v4 = 0;
    if (!v0)
    {
      return;
    }
  }

  *v0 = v4;
}

uint64_t FigVCPOutputInvalidate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = FigVCPInvalidatePrologue();
    if (result)
    {
      v2 = *(v1 + 72);
      if (v2)
      {
        Count = CFArrayGetCount(v2);
        if (Count >= 1)
        {
          v4 = Count;
          for (i = 0; i != v4; ++i)
          {
            CFArrayGetValueAtIndex(*(v1 + 72), i);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }
        }
      }

      OUTLINED_FUNCTION_44_24();

      return FigAtomicCompareAndSwap32();
    }
  }

  return result;
}

uint64_t FigVCPOutputCalculateAndStoreHDRStats(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (*(a2 + 168))
  {
    OUTLINED_FUNCTION_239();
    Statistics = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  Statistics = VTHDRImageStatisticsGenerationSessionCreateStatistics();
  if (Statistics)
  {
LABEL_8:
    v6 = Statistics;
    goto LABEL_6;
  }

  *(a2 + 212) = 1;
  FigAtomicCompareAndSwap32();
  v5 = *(a1 + 64);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v6 = 0;
  *(a2 + 216) = v5;
LABEL_6:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t FigVCPSourceArrayCopyAndAddNewVisualContext(const __CFAllocator *a1, uint64_t a2, int a3, int a4, const void *a5, const void *a6, const void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;
  valuePtr[0] = a3;
  v37 = 0;
  if (!a10)
  {
    OUTLINED_FUNCTION_239();
    v31 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_56_17();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_176();
  v10 = OUTLINED_FUNCTION_86_8();
  if (!v10)
  {
    OUTLINED_FUNCTION_239();
    v31 = FigSignalErrorAtGM();
    v12 = 0;
    goto LABEL_9;
  }

  v34 = a4;
  v20 = *MEMORY[0x1E695E480];
  CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v21 = OUTLINED_FUNCTION_72_10();
  fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(v21, v22, a3);
  if (a5)
  {
    v33 = a6;
    v23 = *(a2 + 24);
    memcpy(__dst, a7, sizeof(__dst));
    v24 = FigVCPVisualContextSourceCreateWithSamplingWindow(a1, a3, v34, a5, __dst, a8, a9, v23, &v37);
    if (v24)
    {
      v31 = v24;
      goto LABEL_9;
    }

    FigVCPSourceSetPreprocessParameters(v37, v33);
    CFArrayAppendValue(v11, v37);
  }

  v25 = OUTLINED_FUNCTION_173_0();
  MutableCopy = CFSetCreateMutableCopy(v25, v26, v27);
  CFNumberCreate(v20, kCFNumberSInt32Type, valuePtr);
  v29 = OUTLINED_FUNCTION_71_11();
  CFSetRemoveValue(v29, v30);
  v10[5] = MutableCopy;
  v10[3] = *(a2 + 24);
  v10[4] = v11;
  *a10 = v10;
  if (a1)
  {
    CFRelease(a1);
  }

  OUTLINED_FUNCTION_56_17();
  v31 = 0;
LABEL_9:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v31;
}

uint64_t FigVCPSourceArrayCopyAndAddNewVisualContextGroup(const __CFAllocator *a1, uint64_t a2, int a3, int a4, const __CFArray *a5, const __CFArray *a6, const void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;
  valuePtr = a3;
  value = 0;
  if (!a10)
  {
    OUTLINED_FUNCTION_239();
    v30 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_56_17();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_176();
  v10 = OUTLINED_FUNCTION_86_8();
  if (!v10)
  {
    OUTLINED_FUNCTION_239();
    v30 = FigSignalErrorAtGM();
    v12 = 0;
    goto LABEL_10;
  }

  v20 = *MEMORY[0x1E695E480];
  CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v21 = OUTLINED_FUNCTION_72_10();
  fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(v21, v22, a3);
  if (a5 && CFArrayGetCount(a5) >= 1)
  {
    v23 = FigVCPVisualContextGroupSourceCreate(a1, a3, a4, a5, a6, a8, a9, *(a2 + 24), &value);
    if (v23)
    {
      v30 = v23;
      goto LABEL_10;
    }

    FigVCPSourceSetPreprocessParameters(value, a7);
    CFArrayAppendValue(v11, value);
  }

  v24 = OUTLINED_FUNCTION_173_0();
  MutableCopy = CFSetCreateMutableCopy(v24, v25, v26);
  CFNumberCreate(v20, kCFNumberSInt32Type, &valuePtr);
  v28 = OUTLINED_FUNCTION_71_11();
  CFSetRemoveValue(v28, v29);
  v10[5] = MutableCopy;
  v10[3] = *(a2 + 24);
  v10[4] = v11;
  *a10 = v10;
  if (a1)
  {
    CFRelease(a1);
  }

  OUTLINED_FUNCTION_56_17();
  v30 = 0;
LABEL_10:
  if (value)
  {
    CFRelease(value);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v30;
}

uint64_t FigVCPSourceArrayCopyAndAddNewCoreAnimationSource(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, const void *a5, const void *a6, void *a7, double a8, double a9)
{
  Mutable = v10;
  valuePtr = a3;
  value = 0;
  if (a7)
  {
    OUTLINED_FUNCTION_2_176();
    v9 = OUTLINED_FUNCTION_86_8();
    if (v9)
    {
      v21 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(*(a2 + 32), Mutable, a3);
      v22 = FigVCPCoreAnimationSourceCreate(a1, a3, a4, a5, *(a2 + 24), &value, a8, a9);
      if (v22)
      {
        v29 = v22;
      }

      else
      {
        FigVCPSourceSetPreprocessParameters(value, a6);
        CFArrayAppendValue(Mutable, value);
        v23 = OUTLINED_FUNCTION_173_0();
        MutableCopy = CFSetCreateMutableCopy(v23, v24, v25);
        CFNumberCreate(v21, kCFNumberSInt32Type, &valuePtr);
        v27 = OUTLINED_FUNCTION_71_11();
        CFSetAddValue(v27, v28);
        v9[4] = Mutable;
        v9[5] = MutableCopy;
        *a7 = v9;
        if (a1)
        {
          CFRelease(a1);
        }

        OUTLINED_FUNCTION_56_17();
        v29 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      v29 = FigSignalErrorAtGM();
      Mutable = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();
    v29 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_56_17();
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v29;
}

uint64_t FigVCPSourceArrayCopyAndAddNewBufferQueue(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, __int128 *a5, const void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = v10;
  v12 = a9;
  valuePtr[0] = a3;
  v33 = 0;
  if (!a9)
  {
    OUTLINED_FUNCTION_239();
    v26 = FigSignalErrorAtGM();
    OUTLINED_FUNCTION_56_17();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_176();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    OUTLINED_FUNCTION_239();
    v26 = FigSignalErrorAtGM();
    v11 = 0;
    goto LABEL_9;
  }

  v28 = a7;
  v20 = *MEMORY[0x1E695E480];
  CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v21 = OUTLINED_FUNCTION_72_10();
  fvcp_sourceArray_appendEachSourceToArrayExceptTrackID(v21, v22, a3);
  if (a4)
  {
    v23 = *(a2 + 24);
    v31 = *a5;
    v32 = *(a5 + 2);
    memcpy(__dst, a6, sizeof(__dst));
    v24 = FigVCPBufferQueueSourceCreate(a1, a3, a4, &v31, __dst, v28, a8, v23, &v33);
    if (v24)
    {
      v26 = v24;
      goto LABEL_9;
    }

    CFArrayAppendValue(v10, v33);
    v12 = a9;
  }

  v25 = CFNumberCreate(v20, kCFNumberSInt32Type, valuePtr);
  Instance[3] = *(a2 + 24);
  Instance[4] = v10;
  *v12 = Instance;
  if (v25)
  {
    CFRelease(v25);
  }

  OUTLINED_FUNCTION_56_17();
  v26 = 0;
LABEL_9:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v26;
}

uint64_t FigVCPInstructionSourceCopyInstructionAtTime(void *a1, uint64_t a2, BOOL *a3, void *a4)
{
  cf = 0;
  if (a4)
  {
    FigSimpleMutexLock();
    v8 = a1[7];
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    OUTLINED_FUNCTION_63_14();
    v10 = FigAtomicCompareAndSwap32();
    if (v9)
    {
      if (!v10)
      {
        *&v20.value = *a2;
        v20.epoch = *(a2 + 16);
        memset(&v25, 0, sizeof(v25));
        memset(&v24, 0, sizeof(v24));
        if (FigCFDictionaryGetCMTimeIfPresent())
        {
          time1 = v25;
          time2 = v20;
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            if (FigCFDictionaryGetCMTimeIfPresent())
            {
              time1 = v20;
              time2 = v24;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                v11 = CFRetain(v9);
                if (!a3)
                {
                  goto LABEL_24;
                }

                goto LABEL_23;
              }
            }
          }
        }
      }
    }

    v13 = a1[3];
    v12 = a1[4];
    v25 = *a2;
    v14 = v13(v12, &v25, &cf);
    if (!v14)
    {
      if (!cf)
      {
        v18 = 4294954995;
        goto LABEL_25;
      }

      v15 = CFGetTypeID(cf);
      if (v15 == CFDictionaryGetTypeID())
      {
        memset(&v25, 0, sizeof(v25));
        if (FigCFDictionaryGetCMTimeIfPresent())
        {
          if (FigCFDictionaryGetCMTimeIfPresent())
          {
            FigSimpleMutexLock();
            v16 = a1[7];
            v17 = cf;
            a1[7] = cf;
            if (v17)
            {
              CFRetain(v17);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            FigSimpleMutexUnlock();
            v11 = cf;
            if (!a3)
            {
              goto LABEL_24;
            }

LABEL_23:
            *a3 = v9 != v11;
LABEL_24:
            v18 = 0;
            *a4 = v11;
            cf = 0;
            goto LABEL_25;
          }
        }
      }

      OUTLINED_FUNCTION_111();
      v14 = FigSignalErrorAtGM();
    }

    v18 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v18 = FigSignalErrorAtGM();
    v9 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  return v18;
}

uint64_t FigVCPOutputConformerCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  MEMORY[0x19A8D3660](&fvcp_outputConformer_getCopyPropertyDispatchDictionary_sCopyPropertyDispatchDictionaryOnce, fvcp_outputConformer_initCopyPropertyDispatchDictionary);
  Value = CFDictionaryGetValue(fvcp_outputConformer_copyPropertyDispatchDictionary, a2);
  if (!Value)
  {
    return 4294954512;
  }

  v8 = Value(a1);
  v9 = v8;
  if (a4)
  {
    result = 0;
    *a4 = v9;
  }

  else
  {
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  return result;
}

uint64_t FigVCPOutputConformerSetProperty()
{
  OUTLINED_FUNCTION_48_4();
  MEMORY[0x19A8D3660](&fvcp_outputConformer_getSetPropertyDispatchDictionary_sSetPropertyDispatchDictionaryOnce, fvcp_outputConformer_initSetPropertyDispatchDictionary);
  Value = CFDictionaryGetValue(fvcp_outputConformer_setPropertyDispatchDictionary, v2);
  if (!Value)
  {
    return 4294954512;
  }

  return Value(v1, v0);
}

uint64_t FigVCPOutputConformerCopyConformedPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, CVPixelBufferRef *a3)
{
  v57 = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  FigSimpleMutexLock();
  v43 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRetain(*(a1 + 40));
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRetain(*(a1 + 48));
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    CFRetain(*(a1 + 56));
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    CFRetain(*(a1 + 72));
  }

  v55 = v9;
  v10 = *(a1 + 64);
  if (v10)
  {
    CFRetain(*(a1 + 64));
  }

  v11 = *(a1 + 88);
  v57 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRetain(*(a1 + 80));
  }

  v44 = a3;
  v51 = v12;
  propertyDictionary = v7;
  v13 = *(a1 + 96);
  pixelTransferSessionOut = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v48 = *(a1 + 104);
  FigSimpleMutexUnlock();
  if (v6)
  {
    v14 = 0;
    key = *MEMORY[0x1E69662B8];
    v49 = *MEMORY[0x1E695E4D0];
    v15 = *MEMORY[0x1E695E480];
    propertyKey = *MEMORY[0x1E6983DE0];
    v46 = *MEMORY[0x1E6983DD8];
    v45 = *MEMORY[0x1E6983DC0];
    v16 = v48;
    v53 = v8;
    while (1)
    {
      IsCompatibleWithAttributes = CVPixelBufferIsCompatibleWithAttributes();
      v18 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      FigSimpleMutexLock();
      if (*(a1 + 112) == v18)
      {
        if (!*(a1 + 116))
        {
          v8 = 0;
        }
      }

      else
      {
        DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
        *(a1 + 116) = CFDictionaryGetValue(DescriptionWithPixelFormatType, key) == v49;
      }

      *(a1 + 112) = v18;
      FigSimpleMutexUnlock();
      HaveRequestedColorParameters = fvcp_doesPixelBufferHaveRequestedColorParameters(pixelBuffer, v8, v55, v10);
      if (IsCompatibleWithAttributes)
      {
        if (HaveRequestedColorParameters)
        {
          break;
        }
      }

      v21 = v57;
      v8 = v53;
      if (!v57)
      {
        CVPixelBufferGetWidth(pixelBuffer);
        CVPixelBufferGetHeight(pixelBuffer);
        Mutable = CFDictionaryCreateMutable(v15, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          OUTLINED_FUNCTION_0_91();
          PixelBufferAttributesWithIOSurfaceSupport = FigSignalErrorAtGM();
LABEL_101:
          v29 = PixelBufferAttributesWithIOSurfaceSupport;
LABEL_103:
          v25 = v51;
          v37 = propertyDictionary;
LABEL_104:
          v14 = Mutable;
          v8 = v53;
          goto LABEL_76;
        }

        PixelBufferAttributesWithIOSurfaceSupport = FigCFDictionarySetInt32();
        if (PixelBufferAttributesWithIOSurfaceSupport)
        {
          goto LABEL_101;
        }

        FigGetAlignmentForIOSurfaceOutput();
        PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport();
        if (PixelBufferAttributesWithIOSurfaceSupport)
        {
          goto LABEL_101;
        }

        v14 = 0;
        CFRelease(Mutable);
        v8 = v53;
        v24 = VTCreatePixelBufferPoolAttributesWithName();
        if (v24)
        {
          v29 = v24;
          Mutable = 0;
          goto LABEL_103;
        }

        v25 = v51;
        v26 = VTBuildPixelBufferPools2();
        if (v26)
        {
          v29 = v26;
          Mutable = 0;
          v37 = propertyDictionary;
          goto LABEL_104;
        }

        v21 = v57;
        v16 = PixelFormatType;
      }

      v27 = CVPixelBufferPoolCreatePixelBuffer(v15, v21, &pixelBufferOut);
      if (v27)
      {
        goto LABEL_98;
      }

      if (!pixelTransferSessionOut)
      {
        v27 = VTPixelTransferSessionCreate(v15, &pixelTransferSessionOut);
        if (v27)
        {
LABEL_98:
          v29 = v27;
LABEL_99:
          v25 = v51;
          v37 = propertyDictionary;
          goto LABEL_76;
        }

        if (propertyDictionary)
        {
          VTSessionSetProperties(pixelTransferSessionOut, propertyDictionary);
        }

        if (v8)
        {
          VTSessionSetProperty(pixelTransferSessionOut, propertyKey, v8);
        }

        if (v55)
        {
          VTSessionSetProperty(pixelTransferSessionOut, v46, v55);
        }

        if (v10)
        {
          VTSessionSetProperty(pixelTransferSessionOut, v45, v10);
        }
      }

      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v29 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBuffer, pixelBufferOut);
      v30 = FigGetUpTimeNanoseconds();
      v31 = (v30 - UpTimeNanoseconds) / 1000;
      ++*(a1 + 144);
      *(a1 + 136) += v31;
      v32 = *(a1 + 128);
      if (v32 >= v31)
      {
        v32 = (v30 - UpTimeNanoseconds) / 1000;
      }

      if (*(a1 + 120) > v31)
      {
        v31 = *(a1 + 120);
      }

      *(a1 + 120) = v31;
      *(a1 + 128) = v32;
      if (v29)
      {
        if (PixelFormatType == v16)
        {
          goto LABEL_99;
        }

        if (v57)
        {
          CFRelease(v57);
          v57 = 0;
        }

        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
          pixelBufferOut = 0;
        }
      }

      else if (pixelBufferOut)
      {
        v48 = v16;
        v25 = v51;
        v37 = propertyDictionary;
        v34 = v44;
        v35 = v43;
        goto LABEL_65;
      }
    }

    v8 = v53;
    if (pixelBuffer)
    {
      v36 = CFRetain(pixelBuffer);
    }

    else
    {
      v36 = 0;
    }

    v34 = v44;
    v35 = v43;
    pixelBufferOut = v36;
    v48 = v16;
  }

  else
  {
    if (pixelBuffer)
    {
      v33 = CFRetain(pixelBuffer);
    }

    else
    {
      v33 = 0;
    }

    v34 = a3;
    v35 = v43;
    v14 = 0;
    pixelBufferOut = v33;
  }

  v25 = v51;
  v37 = propertyDictionary;
LABEL_65:
  FigSimpleMutexLock();
  if (*(a1 + 32) == v35)
  {
    v38 = *(a1 + 88);
    v39 = v57;
    *(a1 + 88) = v57;
    if (v39)
    {
      CFRetain(v39);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    v40 = *(a1 + 96);
    v41 = pixelTransferSessionOut;
    *(a1 + 96) = pixelTransferSessionOut;
    if (v41)
    {
      CFRetain(v41);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    *(a1 + 104) = v48;
  }

  FigSimpleMutexUnlock();
  v29 = 0;
  *v34 = pixelBufferOut;
  pixelBufferOut = 0;
LABEL_76:
  CVPixelBufferPoolFlush(*(a1 + 88), 0);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v29;
}

uint64_t FigVCPOutputConformerCopyConformedTaggedBufferGroup(const void *a1, OpaqueCMTaggedBufferGroup *a2, CFTypeRef *a3)
{
  value = 0;
  cf = 0;
  v6 = CFGetAllocator(a1);
  if (!a3)
  {
    return 0;
  }

  v7 = v6;
  Count = CMTaggedBufferGroupGetCount(a2);
  if (Count <= 0)
  {
    OUTLINED_FUNCTION_374();
    v17 = FigSignalErrorAtGM();
    v11 = 0;
    Mutable = 0;
  }

  else
  {
    v9 = Count;
    Mutable = CFArrayCreateMutable(v7, Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = CFArrayCreateMutable(v7, v9, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        v12 = 0;
        while (1)
        {
          CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(a2, v12);
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a2, v12);
          v15 = FigVCPOutputConformerCopyConformedPixelBuffer(a1, CVPixelBufferAtIndex, &value);
          if (v15)
          {
            break;
          }

          v16 = value;
          CFArrayAppendValue(Mutable, value);
          if (v16)
          {
            CFRelease(v16);
            value = 0;
          }

          CFArrayAppendValue(v11, TagCollectionAtIndex);
          if (v9 == ++v12)
          {
            v17 = MEMORY[0x19A8CF050](v7, v11, Mutable, &cf);
            if (v17)
            {
              if (cf)
              {
                CFRelease(cf);
              }
            }

            else
            {
              *a3 = cf;
              cf = 0;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_374();
        v15 = FigSignalErrorAtGM();
      }

      v17 = v15;
    }

    else
    {
      OUTLINED_FUNCTION_374();
      v17 = FigSignalErrorAtGM();
      v11 = 0;
    }
  }

LABEL_12:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v17;
}

uint64_t FigVCPCompositorHostInvalidate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = FigVCPInvalidatePrologue();
    if (result)
    {
      FigVCPCompositorHostStopAcceptingRequest(v1);
      FigVCPCompositorHostCancelPendingFrames(v1);
      v2 = dispatch_time(0, 100000000);
      if (dispatch_group_wait(*(v1 + 64), v2))
      {
        v3 = 6;
        while (--v3)
        {
          FigVCPCompositorHostCancelPendingFrames(v1);
          v4 = dispatch_time(0, 100000000);
          if (!dispatch_group_wait(*(v1 + 64), v4))
          {
            goto LABEL_9;
          }
        }

        FigVCPCompositorHostPurgePendingFrames(v1);
      }

LABEL_9:
      v5 = *(v1 + 40);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(v5, 0, 0);
      }

      v7 = *(v1 + 40);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v8)
      {
        v8(v7, 0, 0);
      }

      OUTLINED_FUNCTION_44_24();

      return FigAtomicCompareAndSwap32();
    }
  }

  return result;
}

uint64_t FigVCPCompositorHostPrepareToComposeFromWindow(uint64_t a1, const void *a2, __int128 *a3, __int128 *a4, char a5, int a6, int a7, const void *a8, const void *a9)
{
  value = 0;
  if (a2)
  {
    FigAtomicIncrement32();
    OUTLINED_FUNCTION_98_4();
    v17 = *MEMORY[0x1E695E480];
    v25 = *a3;
    v26 = *(a3 + 2);
    v23 = *a4;
    v24 = *(a4 + 2);
    v20 = FigVCPPendingFrameCreateWithWindowedSamples(v17, v18, a2, &v25, &v23, a5, a6, a7, v19, a8, a9, &value);
    if (!v20)
    {
      FigSimpleMutexLock();
      if (*(a1 + 32))
      {
        OUTLINED_FUNCTION_303();
        v21 = FigSignalErrorAtGM();
      }

      else
      {
        dispatch_group_enter(*(a1 + 64));
        CFArrayAppendValue(*(a1 + 56), value);
        FigAtomicIncrement32();
        v21 = 0;
      }

      FigSimpleMutexUnlock();
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    v20 = FigSignalErrorAtGM();
  }

  v21 = v20;
LABEL_7:
  if (value)
  {
    CFRelease(value);
  }

  return v21;
}