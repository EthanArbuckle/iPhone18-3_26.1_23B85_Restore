uint64_t _figCSSTokenizer_consume_an_ident_like_token(const void *a1, void *a2)
{
  cf = 0;
  v16 = 0;
  v4 = _figCSSTokenizer_consume_a_name(a1, &v16);
  if (v4)
  {
    v8 = v4;
    goto LABEL_18;
  }

  v5 = v16;
  if (!v16)
  {
    v9 = 0;
LABEL_17:
    v8 = 0;
    *a2 = v9;
    cf = 0;
    goto LABEL_18;
  }

  v13 = 0;
  _figCSSTokenizer_PeekAheadBuffer(a1, 1, &v14, 4uLL, &v13);
  if (CFStringCompare(v5, @"url", 1uLL) || v13 < 1)
  {
    if (v13 < 1)
    {
      goto LABEL_14;
    }

    v6 = v14;
  }

  else
  {
    v6 = v14;
    if (v14 == 40)
    {
      _figCSSTokenizer_consume_next_input_code_point(a1, 0);
      fig_log_get_emitter();
      v7 = FigSignalErrorAtGM();
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (v6 == 40)
  {
    _figCSSTokenizer_consume_next_input_code_point(a1, 0);
    v10 = CFGetAllocator(a1);
    v11 = 32;
    goto LABEL_15;
  }

LABEL_14:
  v10 = CFGetAllocator(a1);
  v11 = 7;
LABEL_15:
  v7 = FigCSSStringValueTokenCreate(v10, v11, v5, &cf);
  if (!v7)
  {
LABEL_16:
    v9 = cf;
    goto LABEL_17;
  }

LABEL_7:
  v8 = v7;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  if (v16)
  {
    CFRelease(v16);
  }

  return v8;
}

uint64_t FigCSSTokenizerCreateWithTextContainer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenizerCreateWithTextContainer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSTokenizerCreateWithTextContainer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSTokenizer_consume_a_string_token_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSTokenizer_consume_a_name_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t _figCSSTokenizer_consume_a_numeric_token_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t _figCSSTokenizer_PeekAheadBuffer_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

void FigVideoCompositionInstructionGetNormalizedTime(const __CFDictionary *a1, CMTime *a2)
{
  Value = CFDictionaryGetValue(a1, @"StartTime");
  CMTimeMakeFromDictionary(&v11, Value);
  v5 = CFDictionaryGetValue(a1, @"EndTime");
  CMTimeMakeFromDictionary(&v10, v5);
  lhs = v10;
  rhs = v11;
  CMTimeSubtract(&v9, &lhs, &rhs);
  rhs = *a2;
  v6 = v11;
  CMTimeSubtract(&lhs, &rhs, &v6);
  rhs = lhs;
  CMTimeGetSeconds(&rhs);
  rhs = v9;
  CMTimeGetSeconds(&rhs);
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_2(uint64_t a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a4 = FigSignalErrorAtGM();
  CFRelease(a3);
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __pa_handleNotification_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  sbuf = 0;
  HIDWORD(v31) = 0;
  v30 = 0;
  memset(&v29, 0, sizeof(v29));
  if (*(CMBaseObjectGetDerivedStorage() + 32) != 2)
  {
    goto LABEL_10;
  }

  if (v1)
  {
    FigCFDictionaryGetInt32IfPresent();
    OUTLINED_FUNCTION_5_92();
    OUTLINED_FUNCTION_10_48();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = OUTLINED_FUNCTION_14_43(os_log_and_send_and_compose_flags_and_os_log_type, v12, v13, v14, v15, v16, v17, v18, blockBufferOut, v21, sampleSizeArray, v23, v24, v25, type, type_8, v28, v29.value, *&v29.timescale, v29.epoch, v30, v31, sbuf, v33, dataBuffer, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, sampleTimingArray.duration.value, *&sampleTimingArray.duration.timescale, sampleTimingArray.duration.epoch, sampleTimingArray.presentationTimeStamp.value, *&sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.epoch, sampleTimingArray.decodeTimeStamp.value);
    if (!OUTLINED_FUNCTION_77_0(v19))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_7_67("pa_handleNotificationInternal", 4.8151e-34);
    OUTLINED_FUNCTION_2_131(383);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_92();
  OUTLINED_FUNCTION_10_48();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v10 = OUTLINED_FUNCTION_14_43(v2, v3, v4, v5, v6, v7, v8, v9, blockBufferOut, v21, sampleSizeArray, v23, v24, v25, type, type_8, v28, v29.value, *&v29.timescale, v29.epoch, v30, v31, sbuf, v33, dataBuffer, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, sampleTimingArray.duration.value, *&sampleTimingArray.duration.timescale, sampleTimingArray.duration.epoch, sampleTimingArray.presentationTimeStamp.value, *&sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.epoch, sampleTimingArray.decodeTimeStamp.value);
  if (OUTLINED_FUNCTION_77_0(v10))
  {
    OUTLINED_FUNCTION_7_67("pa_handleNotificationInternal", 4.8151e-34);
    OUTLINED_FUNCTION_2_131(380);
LABEL_8:
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl();
  }

LABEL_9:
  OUTLINED_FUNCTION_0_153();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  if (sbuf)
  {
    CFRelease(sbuf);
  }
}

uint64_t pa_finalize_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420();
}

uint64_t __pa_start_block_invoke_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420();
}

uint64_t __pa_start_block_invoke_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420();
}

uint64_t __pa_start_block_invoke_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840]);
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14));
  if (OUTLINED_FUNCTION_77_0(v8))
  {
    OUTLINED_FUNCTION_2_25(v15, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v9);
    OUTLINED_FUNCTION_3_109();
    _os_log_send_and_compose_impl();
    OUTLINED_FUNCTION_192_0();
  }

  OUTLINED_FUNCTION_0_153();
  return OUTLINED_FUNCTION_420();
}

uint64_t FigCaptionRendererTTMLRegionCreate(void *a1)
{
  *a1 = 0;
  *&v14 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererTTMLRegionGetClassID_sRegisterFigCaptionRendererTTMLRegionBaseTypeOnce, RegisterFigCaptionRendererTTMLRegionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = 0;
    FigCaptionRendererNodeCreate(&v16);
    v4 = v16;
    *DerivedStorage = v16;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v6 = *(ProtocolVTable + 16);
      if (v6)
      {
        v7 = *(v6 + 216);
        if (v7)
        {
          v7(v4, 1);
        }
      }
    }

    v8 = *DerivedStorage;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v9 = CMBaseObjectGetProtocolVTable();
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = *(v10 + 232);
        if (v11)
        {
          v11(v8, 1);
        }
      }
    }

    FigGeometryDimensionMake();
    FigGeometryDimensionMake();
    FigGeometrySizeMake();
    *(DerivedStorage + 176) = v14;
    *(DerivedStorage + 192) = v15;
    v12 = *MEMORY[0x1E6960BA0];
    if (*MEMORY[0x1E6960BA0])
    {
      v12 = CFRetain(v12);
    }

    *(DerivedStorage + 152) = v12;
    *a1 = 0;
  }

  return v2;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

void FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_1(CGContext *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a2 = FigSignalErrorAtGM();
  CGContextRelease(a1);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t FigVideoCompositionProcessorCreateWithImageQueueArray(const __CFAllocator *a1, unsigned int a2, const void *UInt32, CMTime *a4, unsigned int a5, const __CFArray *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t *a11)
{
  v69 = __PAIR64__(a2, a5);
  v89 = 0;
  v90[0] = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  number = 0;
  cf = 0;
  valuePtr = 0;
  OUTLINED_FUNCTION_8_53();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_8_53();
  fig_note_initialize_category_with_default_work_cf();
  if (!UInt32)
  {
    OUTLINED_FUNCTION_40_0();
    v43 = FigSignalErrorAtGM();
LABEL_46:
    Instance = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_29();
  if (!v23 || (time1 = *a4, OUTLINED_FUNCTION_11_52(v15, v16, v17, v18, v19, v20, v21, v22, v59, v62, a7, v69, *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), *MEMORY[0x1E6960CC0], *(MEMORY[0x1E6960CC0] + 8), time2.epoch, v79, time1.value) <= 0) || !a6 || !CFArrayGetCount(a6) || (OUTLINED_FUNCTION_29(), !v23) || (*&time1.value = *a9, time1.epoch = *(a9 + 16), (OUTLINED_FUNCTION_11_52(v24, v25, v26, v27, v28, v29, v30, v31, v60, v63, v66, v70, v74, v76, v74, v76, time2.epoch, v79, time1.value) & 0x80000000) != 0) || (OUTLINED_FUNCTION_29(), !v23) || (OUTLINED_FUNCTION_7_68(), OUTLINED_FUNCTION_11_52(v32, v33, v34, v35, v36, v37, v38, v39, v61, v64, v67, v71, v75, v77, v75, v77, time2.epoch, v79, time1.value) <= 0))
  {
    OUTLINED_FUNCTION_40_0();
LABEL_28:
    v43 = FigSignalErrorAtGM();
    Instance = 0;
LABEL_29:
    UInt32 = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_7_68();
  OUTLINED_FUNCTION_12_48();
  if (CMTimeCompare(&time1, &time2) < 0 || !a10)
  {
    OUTLINED_FUNCTION_40_0();
    goto LABEL_28;
  }

  MEMORY[0x19A8D3660](&sRegisterFigVideoCompositionProcessorTypeOnce, RegisterFigVideoCompositionProcessorType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    OUTLINED_FUNCTION_40_0();
    Mutable = FigSignalErrorAtGM();
LABEL_79:
    v43 = Mutable;
    goto LABEL_29;
  }

  Mutable = FigVCPPreprocessParametersCreateMutable(a1, &v87);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPSourceArrayCreateEmpty(a1, Instance, v90);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPSourceArrayCreateEmpty(a1, Instance, &v89);
  if (Mutable)
  {
    goto LABEL_79;
  }

  time1 = *a4;
  Mutable = FigVCPTimingCreate(a1, &time1, v72, v73 & 2, (v73 & 1) == 0, Instance, &v88);
  if (Mutable)
  {
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_7_68();
  OUTLINED_FUNCTION_12_48();
  Mutable = FigVCPOutputCreate(a1, a6, v68, &time1, &time2, Instance, &v86);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPOutputConformerCreate(a1, Instance, &v85);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPCompositorHostCreate(a1, UInt32, Instance, &v84);
  if (Mutable)
  {
    goto LABEL_79;
  }

  v42 = *MEMORY[0x1E695E480];
  Mutable = FigVCPCompositorHostCopyProperty(v84, @"VideoCompositionProcessor_SourcePixelBufferAttributes", *MEMORY[0x1E695E480], &cf);
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPPreprocessParametersSetProperty();
  if (Mutable)
  {
    goto LABEL_79;
  }

  Mutable = FigVCPCompositorHostCopyProperty(v84, @"SourceColorConformanceCapabilityLevel", v42, &number);
  if (Mutable)
  {
    goto LABEL_79;
  }

  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  UInt32 = FigCFNumberCreateUInt32();
  v44 = FigVCPPreprocessParametersSetProperty();
  if (v44)
  {
    goto LABEL_71;
  }

  *(Instance + 20) = 0;
  v46 = v89;
  v45 = v90[0];
  v89 = 0;
  v90[0] = 0;
  *(Instance + 32) = v45;
  *(Instance + 40) = v46;
  v48 = v87;
  v47 = v88;
  v87 = 0;
  v88 = 0;
  *(Instance + 24) = v48;
  v49 = v86;
  v86 = 0;
  *(Instance + 112) = v85;
  *(Instance + 120) = v49;
  v50 = v84;
  *(Instance + 96) = v47;
  *(Instance + 104) = v50;
  v84 = 0;
  v85 = 0;
  if ((v73 & 4) == 0)
  {
    v51 = 1;
LABEL_35:
    *(Instance + 136) = v51;
    goto LABEL_36;
  }

  if (*(Instance + 136) != 3)
  {
    v51 = 3;
    goto LABEL_35;
  }

LABEL_36:
  LODWORD(time1.value) = 0;
  v52 = CFNumberCreate(v42, kCFNumberSInt32Type, &time1);
  FigBaseObject = FigActivitySchedulerGetFigBaseObject(a10);
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v54)
  {
    v54(FigBaseObject, @"ClientPID", v52);
  }

  CFRelease(v52);
  v55 = FigActivitySchedulerGetFigBaseObject(a10);
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v56)
  {
    v56(v55, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v57)
  {
    v43 = 4294954514;
    goto LABEL_48;
  }

  v44 = v57(a10, videoprocessor_processUntilHighWaterMet, Instance);
  if (!v44)
  {
    *(Instance + 128) = CFRetain(a10);
    *(Instance + 216) = 0x7FFFFFFFLL;
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_132();
    FigNotificationCenterAddWeakListener();
    v44 = FigVCPCompositorHostSetOutputCallback(*(Instance + 104), videoprocessor_frameCompleteCallback);
    if (!v44)
    {
      v44 = FigVCPCompositorHostSetCompletePrerollCallback(*(Instance + 104), videoprocessor_completePrerollCallback);
      if (!v44)
      {
        v43 = FigVCPCompositorHostSetDidReachEndOfOutputCallback(*(Instance + 104), videoprocessor_didReachEndOfOutputCallback);
        if (v43)
        {
          goto LABEL_48;
        }

        *a11 = Instance;
        goto LABEL_46;
      }
    }
  }

LABEL_71:
  v43 = v44;
LABEL_48:
  if (cf)
  {
    CFRelease(cf);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v90[0])
  {
    CFRelease(v90[0]);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v43;
}

uint64_t FigVideoCompositionProcessorHasAnySourceTracksInArray(uint64_t a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
      v7 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
      v8 = 0;
      while (!FigCFArrayGetInt32AtIndex() || (!v6 || !FigVCPSourceArrayGetSourceWithTrackID(v6, 0)) && (!v7 || !FigVCPSourceArrayGetSourceWithTrackID(v7, 0)))
      {
        if (v5 == ++v8)
        {
          v2 = 0;
          if (!v6)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      v2 = 1;
      if (v6)
      {
LABEL_11:
        CFRelease(v6);
      }

LABEL_12:
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  return v2;
}

void FigVideoCompositionProcessorInvalidate(uint64_t a1)
{
  if (a1 && FigVCPInvalidatePrologue())
  {
    *(a1 + 160) = 0;
    v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_132();
    FigNotificationCenterRemoveWeakListener();
    v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    if (v3)
    {
      OUTLINED_FUNCTION_3_110();
      FigVCPSourceArrayApplyFunction(v3, v4, 0);
    }

    v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
    if (v5)
    {
      OUTLINED_FUNCTION_3_110();
      FigVCPSourceArrayApplyFunction(v5, v6, 0);
    }

    FigVCPTimingInvalidate(*(a1 + 96));
    FigVCPCompositorHostInvalidate(*(a1 + 104));
    FigVCPOutputInvalidate(v2);
    FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 128));
    if (FigBaseObject)
    {
      v8 = FigBaseObject;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v9)
      {
        v9(v8);
      }
    }

    FigVCPInvalidateEpilogue();
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

uint64_t FigVideoCompositionProcessorSetSourceVisualContext(uint64_t a1, int a2, int a3, const void *a4, const void *a5)
{
  v28 = 0;
  v29 = 0;
  if (!FigVCPIsValid())
  {
    OUTLINED_FUNCTION_376();
    Copy = FigSignalErrorAtGM();
LABEL_19:
    v23 = Copy;
    v13 = 0;
    goto LABEL_11;
  }

  if (a3 == 1986618469)
  {
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &v28);
    if (Copy)
    {
      goto LABEL_19;
    }
  }

  v11 = OUTLINED_FUNCTION_10_49();
  v13 = videoprocessor_loadAndRetainAtomically(v11, v12);
  v14 = CFGetAllocator(v13);
  v15 = v28;
  memcpy(__dst, a4, sizeof(__dst));
  OUTLINED_FUNCTION_1_139();
  v17 = FigVCPSourceArrayCopyAndAddNewVisualContext(v14, v13, a2, a3, a5, v15, __dst, v16, v25, v26);
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_49();
    videoprocessor_releaseAssignAndRetainAtomically(v18, v19, v20);
    memcpy(__dst, a4, sizeof(__dst));
    if (!FigVideoCompositionTimeWindowDurationIsZero(__dst))
    {
      *(a1 + 2256) = 1;
    }

    if (*(a1 + 160))
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v22(v21);
      }
    }

    v23 = 0;
  }

LABEL_11:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v23;
}

uint64_t FigVideoCompositionProcessorSetSourceVisualContextGroup(uint64_t a1, int a2, int a3, const __CFArray *a4, const __CFArray *a5)
{
  cf = 0;
  v28 = 0;
  if (!a1 || !a4 || !a5)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM();
    v23 = 0;
LABEL_22:
    v13 = 0;
    goto LABEL_12;
  }

  if (!FigVCPIsValid())
  {
    OUTLINED_FUNCTION_376();
    Copy = FigSignalErrorAtGM();
LABEL_21:
    v23 = Copy;
    goto LABEL_22;
  }

  if (a3 == 1986618469)
  {
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
    if (Copy)
    {
      goto LABEL_21;
    }
  }

  v11 = OUTLINED_FUNCTION_10_49();
  v13 = videoprocessor_loadAndRetainAtomically(v11, v12);
  CFGetAllocator(a1);
  OUTLINED_FUNCTION_1_139();
  v17 = FigVCPSourceArrayCopyAndAddNewVisualContextGroup(v14, v13, a2, a3, a4, a5, v15, v16, v25, v26);
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_49();
    videoprocessor_releaseAssignAndRetainAtomically(v18, v19, v20);
    *(a1 + 2257) = 1;
    if (*(a1 + 160))
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v22)
      {
        v22(v21);
      }
    }

    v23 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v23;
}

uint64_t FigVideoCompositionProcessorSetAnimationLayer(uint64_t a1, int a2, const void *a3, const __CFArray *a4, uint64_t a5, const void *a6)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  if (!FigVCPIsValid() || a2 && a4 || a4 && CFArrayGetCount(a4) <= 0 || a5 || *(a1 + 136) == 1 && a3 && *(a1 + 20))
  {
    OUTLINED_FUNCTION_303();
    RenderSize = FigSignalErrorAtGM();
    goto LABEL_35;
  }

  if (a2)
  {
    v20.width = 0.0;
    v20.height = 0.0;
    RenderSize = FigVCPCompositorHostGetRenderSize(*(a1 + 104), &v20);
    if (!RenderSize)
    {
      RenderSize = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
      if (!RenderSize)
      {
        v13 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
        v14 = CFGetAllocator(v13);
        v15 = FigVCPSourceArrayCopyAndAddNewCoreAnimationSource(v14, v13, a2, a3, a6, cf, &v23, v20.width, v20.height);
        if (v15)
        {
          v18 = v15;
          goto LABEL_21;
        }

        videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 32), v23);
        goto LABEL_17;
      }
    }

LABEL_35:
    v18 = RenderSize;
    v13 = 0;
    goto LABEL_21;
  }

  RenderSize = FigVCPCoreAnimationPostProcessorCreate(*MEMORY[0x1E695E480], a3, a4, a6, &v22);
  if (RenderSize)
  {
    goto LABEL_35;
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 144), v22);
  v13 = 0;
LABEL_17:
  if (*(a1 + 160))
  {
    v16 = *(a1 + 128);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v17)
    {
      v17(v16);
    }
  }

  v18 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

uint64_t FigVideoCompositionProcessorSetSourceBufferQueue(uint64_t a1, int a2, const void *a3, opaqueCMBufferQueue *a4, uint64_t a5)
{
  v21 = 0;
  if (!FigVCPIsValid())
  {
    v10 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  time[0] = **&MEMORY[0x1E6960C70];
  v10 = CMBufferQueueInstallTrigger(a4, videoprocessor_triggerProcessingByBufferQueue, a1, 7, time, (a1 + 56));
  if (v10)
  {
LABEL_19:
    v14 = v10;
    goto LABEL_15;
  }

  v11 = *(a1 + 48);
  *(a1 + 48) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
  v13 = CFGetAllocator(v12);
  v19 = *a5;
  v20 = *(a5 + 16);
  memcpy(time, a3, sizeof(time));
  v14 = FigVCPSourceArrayCopyAndAddNewBufferQueue(v13, v12, a2, a4, &v19, time, videoprocessor_AvailableTimeRangeChanged, a1, &v21);
  if (!v14)
  {
    videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 40), v21);
    memcpy(time, a3, sizeof(time));
    if (!FigVideoCompositionTimeWindowDurationIsZero(time))
    {
      *(a1 + 2256) = 1;
    }

    if (*(a1 + 160))
    {
      v15 = *(a1 + 128);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v16)
      {
        v16(v15);
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_15:
  if (v21)
  {
    CFRelease(v21);
  }

  return v14;
}

uint64_t FigVideoCompositionProcessorSetCompositionInstructionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!FigVCPIsValid())
  {
    v6 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v6 = FigVCPInstructionSourceCreate(*MEMORY[0x1E695E480], a2, a3, a1, &cf);
  if (v6)
  {
LABEL_11:
    v9 = v6;
    goto LABEL_7;
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 88), cf);
  if (*(a1 + 160))
  {
    v7 = *(a1 + 128);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(v7);
    }
  }

  v9 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigVideoCompositionProcessorStartRenderingFramesForTimeRange(uint64_t a1)
{
  cf = 0;
  if (!FigVCPIsValid() || FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    OUTLINED_FUNCTION_376();
    started = FigSignalErrorAtGM();
    v3 = 0;
    v2 = 0;
  }

  else
  {
    v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
    FigVCPInstructionSourceInvalidateCache();
    v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
    if (Copy)
    {
      goto LABEL_17;
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      do
      {
        SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v3, v5);
        FigVCPSourceStartOver(SourceAtIndex);
        FigVCPSourceSetPreprocessParameters(SourceAtIndex, cf);
        ++v5;
      }

      while (v5 < FigVCPSourceArrayGetCount(v3));
    }

    OUTLINED_FUNCTION_4_105();
    Copy = FigVCPTimingStartOver(v7, v8, v9, 0, 1);
    if (Copy)
    {
LABEL_17:
      started = Copy;
    }

    else
    {
      videoprocessor_flushOutput(a1);
      started = FigVCPCompositorHostStartAcceptingRequest(*(a1 + 104));
      if (!started)
      {
        FigVideoCompositionProcessorGo(a1);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return started;
}

uint64_t FigVideoCompositionProcessorSetPlaybackTimeRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  cf = 0;
  if (!FigVCPIsValid() || !FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    OUTLINED_FUNCTION_376();
    Copy = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  Copy = FigVCPPreprocessParametersCreateCopy(*MEMORY[0x1E695E480], *(a1 + 24), &cf);
  if (Copy)
  {
LABEL_26:
    started = Copy;
    v21 = 0;
    v11 = 0;
    goto LABEL_18;
  }

  v9 = OUTLINED_FUNCTION_10_49();
  v11 = videoprocessor_loadAndRetainAtomically(v9, v10);
  if (FigVCPSourceArrayGetCount(v11) >= 1)
  {
    v12 = 0;
    do
    {
      SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v11, v12);
      FigVCPSourceStartOver(SourceAtIndex);
      FigVCPSourceSetPreprocessParameters(SourceAtIndex, cf);
      ++v12;
    }

    while (v12 < FigVCPSourceArrayGetCount(v11));
  }

  OUTLINED_FUNCTION_29();
  if (v14)
  {
    if (a5 < 1)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (a5)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v21 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    v17 = FigVCPOutputSetDirection(v21, v16);
    if (v17)
    {
      started = v17;
    }

    else
    {
      OUTLINED_FUNCTION_4_105();
      started = FigVCPTimingStartOver(v18, v19, v20, a4, v16);
      if (!started)
      {
        videoprocessor_flushOutput(a1);
        FigVideoCompositionProcessorGo(a1);
      }
    }
  }

  else
  {
    v21 = 0;
    started = 0;
    *(a1 + 160) = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return started;
}

void videoprocessor_Finalize(uint64_t a1)
{
  FigVideoCompositionProcessorInvalidate(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
  }

  videoprocessor_releaseAssignAndRetainAtomically(a1, (a1 + 144), 0);
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v11 = *(a1 + 184);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CMBufferQueueRemoveTrigger(v13, *(a1 + 56));
    v14 = *(a1 + 48);
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

uint64_t videoprocessor_updateCoreAnimationThrottling(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = a2;
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
  v6 = *(a1 + 136);
  if (v6 == 1)
  {
    if (v2)
    {
      v7 = FigVCPSourceArrayContainsCoreAnimationSource(v4);
      if (v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = !v7;
      }

      if (v8)
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294954993;
      }
    }

    goto LABEL_20;
  }

  if (v6 != 3)
  {
    if (v6 == 2)
    {
      if (v2)
      {
        if (FigVCPSourceArrayContainsCoreAnimationSource(v4) || v5)
        {
          v2 = 0;
          *(a1 + 160) = 0;
          *(a1 + 140) = 1;
          goto LABEL_20;
        }

LABEL_17:
        v2 = 0;
        goto LABEL_22;
      }

      if (!*(a1 + 160))
      {
        if (*(a1 + 140))
        {
          *(a1 + 160) = 1;
          *(a1 + 140) = 0;
          v10 = *(a1 + 128);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10);
          }
        }
      }
    }

    v2 = 0;
LABEL_20:
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  FigVCPSourceArrayApplyFunction(v4, videoprocessor_throttleSourceForBackground, &v12);
  if (!v5)
  {
    goto LABEL_17;
  }

  FigVCPCoreAnimationPostProcessorThrottleForBackground(v5);
  v2 = 0;
LABEL_21:
  CFRelease(v5);
LABEL_22:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

uint64_t videoprocessor_processUntilHighWaterMet_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoprocessor_processUntilHighWaterMet_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoprocessor_processUntilHighWaterMet_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoprocessor_processUntilHighWaterMet_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL videoprocessor_frameCompleteCallback_cold_1(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorResetCompositionInstruction_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorSetProperty_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t videoprocessor_setThrottleForBackgroundProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositionProcessorGo_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVisualContextCreateRemote(int a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    if (qword_1ED4CB4E0 != -1)
    {
      dispatch_once(&qword_1ED4CB4E0, &__block_literal_global_74);
    }

    v5 = _MergedGlobals_97;
    if (!_MergedGlobals_97)
    {
      if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
      {
        FigVisualContextGetClassID();
        v7 = CMDerivedObjectCreate();
        if (v7 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v9 = FigReadWriteLockCreate(), (*(DerivedStorage + 16) = v9) == 0) && (fig_log_get_emitter(), OUTLINED_FUNCTION_2_10(), v7 = FigSignalErrorAtGM(), v7) || (v7 = FigXPCCreateBasicMessage(), v7) || (v7 = FigXPCMessageSetCFDictionary(), v7) || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
        {
          v5 = v7;
        }

        else
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          *CMBaseObjectGetDerivedStorage() = uint64;
          v5 = FigXPCRemoteClientAssociateObject();
          if (!v5)
          {
            *a3 = 0;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        v5 = FigSignalErrorAtGM();
      }

      FigXPCRelease();
      FigXPCRelease();
      FigXPCRemoteClientKillServerOnTimeout();
    }

    return v5;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM();
  }
}

uint64_t remoteXPCVisualContextClient_MessageHandler(const void *a1)
{
  if (a1 && (v1 = CFGetTypeID(a1), v1 == FigVisualContextGetTypeID()))
  {
    result = FigXPCMessageGetOpCode();
    if (!result)
    {
      return 4294951138;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t rvcFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  rvcInvalidate(a1);
  FigReadWriteLockDestroy();
  FigXPCRemoteClientDisassociateObject();
  if (!*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t rvcSetImageAvailableImmediateCallback()
{
  OUTLINED_FUNCTION_4_106();
  v3 = OUTLINED_FUNCTION_3_111();
  if (v0 && *(v1 + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
LABEL_4:
    v12 = v11;
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_9_50(v3, v4, v5, v6, v7, v8, v9, v10, v23);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v11 = FigXPCCreateBasicMessage();
  if (v11)
  {
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_2_133(v11, v13, v14, v15, v16, v17, v18, v19, v24, v25);
  xpc_dictionary_set_BOOL(v20, "CallbackIsSet", v21);
  v12 = OUTLINED_FUNCTION_10_50();
  if (!v12)
  {
    *(v1 + 24) = v0;
    *(v1 + 32) = v2;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t rvcSetImageAvailableSequentialCallback()
{
  OUTLINED_FUNCTION_4_106();
  v3 = OUTLINED_FUNCTION_3_111();
  if (v0 && *(v1 + 40))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
LABEL_4:
    v12 = v11;
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_9_50(v3, v4, v5, v6, v7, v8, v9, v10, v23);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v11 = FigXPCCreateBasicMessage();
  if (v11)
  {
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_2_133(v11, v13, v14, v15, v16, v17, v18, v19, v24, v25);
  xpc_dictionary_set_BOOL(v20, "CallbackIsSet", v21);
  v12 = OUTLINED_FUNCTION_10_50();
  if (!v12)
  {
    *(v1 + 40) = v0;
    *(v1 + 48) = v2;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t rvcSetNoMoreImagesCallback()
{
  OUTLINED_FUNCTION_4_106();
  v3 = OUTLINED_FUNCTION_3_111();
  if (v0 && *(v1 + 56))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
LABEL_4:
    v12 = v11;
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_9_50(v3, v4, v5, v6, v7, v8, v9, v10, v23);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v11 = FigXPCCreateBasicMessage();
  if (v11)
  {
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_2_133(v11, v13, v14, v15, v16, v17, v18, v19, v24, v25);
  xpc_dictionary_set_BOOL(v20, "CallbackIsSet", v21);
  v12 = OUTLINED_FUNCTION_10_50();
  if (!v12)
  {
    *(v1 + 56) = v0;
    *(v1 + 64) = v2;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t rvcSetBecameEmptyCallback()
{
  OUTLINED_FUNCTION_4_106();
  v3 = OUTLINED_FUNCTION_3_111();
  if (v0 && *(v1 + 72))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v11 = FigSignalErrorAtGM();
LABEL_4:
    v12 = v11;
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_9_50(v3, v4, v5, v6, v7, v8, v9, v10, v23);
  if (v11)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_26_14();
  v11 = FigXPCCreateBasicMessage();
  if (v11)
  {
    goto LABEL_4;
  }

  v20 = OUTLINED_FUNCTION_2_133(v11, v13, v14, v15, v16, v17, v18, v19, v24, v25);
  xpc_dictionary_set_BOOL(v20, "CallbackIsSet", v21);
  v12 = OUTLINED_FUNCTION_10_50();
  if (!v12)
  {
    *(v1 + 72) = v0;
    *(v1 + 80) = v2;
  }

LABEL_9:
  FigReadWriteLockUnlockForWrite();
  FigXPCRelease();
  OUTLINED_FUNCTION_8_54();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t rvcGetEarliestSequentialImageTimeAfterTime(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v14 = 0;
  xdict = 0;
  v13 = 0;
  if (a4)
  {
    v8 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v8 + 16);
  }

  if (a5)
  {
    *a5 = 0;
  }

  ObjectID = remoteXPCVisualContext_GetObjectID(a1, &v13);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_uint64(xdict, "Flags", a2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v11 = ObjectID;
    goto LABEL_16;
  }

  if (!a4)
  {
    if (!a5)
    {
      v11 = 0;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  CMTime = FigXPCMessageGetCMTime();
  v11 = CMTime;
  if (a5 && !CMTime)
  {
LABEL_14:
    v11 = 0;
    *a5 = xpc_dictionary_get_BOOL(v14, "NoMoreImages");
  }

LABEL_16:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t rvcTask(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  if (!remoteXPCVisualContext_GetObjectID(a1, v2))
  {
    OUTLINED_FUNCTION_26_14();
    if (!FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigVisualContextXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVisualContextXPCRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t remoteXPCVisualContext_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t rvcCopyImageForTime_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t rvcCopyImageForTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL FigVideoCompositorUtilityAreCleanAperturesEqual(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1 == a4)
  {
    return 1;
  }

  if (a1 && (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)) || a4 && (v7 = CFDictionaryGetTypeID(), v7 != CFGetTypeID(a4)))
  {
    FigSignalErrorAtGM();
    return 0;
  }

  if (vcu_getCleanApertureRational())
  {
    return 0;
  }

  if (vcu_getCleanApertureRational())
  {
    return 0;
  }

  v9 = vcu_simplifyRational(0);
  if (v9 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v10 = vcu_simplifyRational(0);
  if (v10 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v11 = vcu_simplifyRational(0);
  if (v11 != vcu_simplifyRational(0))
  {
    return 0;
  }

  v12 = vcu_simplifyRational(0);
  v13 = vcu_simplifyRational(0);
  if (v12 != v13)
  {
    return 0;
  }

  return (v12 ^ v13) >> 32 == 0;
}

uint64_t vcu_getCleanApertureRational()
{
  OUTLINED_FUNCTION_2_134();
  if (!v4)
  {
    LODWORD(v13) = v5;
    LODWORD(v12) = v6;
    LODWORD(v11) = 0;
    LODWORD(v10) = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v4;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(v7))
  {
    result = vcu_getRationalFromDictionary(v7, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110], &v13);
    if (result)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v7, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8], &v12);
    if (result)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v7, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100], &v11);
    if (result)
    {
      return result;
    }

    result = vcu_getRationalFromDictionary(v7, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108], &v10);
    if (result)
    {
      return result;
    }

    if (!v3)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v3 = v13;
LABEL_9:
    if (v2)
    {
      *v2 = v12;
    }

    if (v1)
    {
      *v1 = v11;
    }

    result = 0;
    if (v0)
    {
      *v0 = v10;
    }

    return result;
  }

  return FigSignalErrorAtGM();
}

void FigVideoCompositorUtilityGetCleanAperture()
{
  OUTLINED_FUNCTION_2_134();
  if (!OUTLINED_FUNCTION_1_140())
  {
    if (v3)
    {
      *v3 = OUTLINED_FUNCTION_0_154(v10, v11);
    }

    if (v2)
    {
      *v2 = OUTLINED_FUNCTION_0_154(v8, v9);
    }

    if (v1)
    {
      *v1 = OUTLINED_FUNCTION_0_154(v6, v7);
    }

    if (v0)
    {
      *v0 = OUTLINED_FUNCTION_0_154(v4, v5);
    }
  }
}

uint64_t FigVideoCompositorUtilityCopyRenderDimensionsAndEdgeProcessingPixels(int a1, int a2, CFTypeID a3, const __CFDictionary *a4, double *a5, __CFArray **a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 1;
  v28 = 1;
  v25 = a1;
  v26 = 1;
  v23 = a2;
  v24 = 1;
  v21 = 0x100000000;
  v22 = 0x100000000;
  if (a3)
  {
    FigVideoCompositorUtilityGetPixelAspectRatio(a3, &v28, &v27);
  }

  if (!a4 || (result = vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110], &v25), !result) && (result = vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8], &v23), !result) && (result = vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100], &v22), !result) && (result = vcu_getRationalFromDictionary(a4, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108], &v21), !result))
  {
    if (a5)
    {
      v12 = v23 / v24;
      *a5 = v25 * v28 / (v26 * v27);
      a5[1] = v12;
    }

    if (a6)
    {
      v13 = a1 - v25 / v26;
      v14 = a2 - v23 / v24;
      v15 = *MEMORY[0x1E695E480];
      v16 = 4;
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
      v18 = (v22 / SHIDWORD(v22));
      valuePtr[0] = (v18 + v13 * 0.5);
      valuePtr[1] = (v18 + v14 * 0.5);
      valuePtr[2] = -(v18 - v13 * 0.5);
      valuePtr[3] = -(v18 - v14 * 0.5);
      v19 = valuePtr;
      do
      {
        v20 = CFNumberCreate(v15, kCFNumberIntType, v19);
        CFArrayAppendValue(Mutable, v20);
        CFRelease(v20);
        ++v19;
        --v16;
      }

      while (v16);
      result = 0;
      *a6 = Mutable;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueServer_EnsureServerAndCopyXPCEndpoint()
{
  if (qword_1ED4CB4F8 != -1)
  {
    dispatch_once(&qword_1ED4CB4F8, &__block_literal_global_75);
  }

  result = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {

    return FigXPCServerCopyXPCEndpoint();
  }

  return result;
}

uint64_t dqs_HandleRemoteMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t FigDataQueueServer_AssociateObjectByPID_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDataQueueServer_CopyDataQueueForID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dqs_SendLowWaterMarkCallback_cold_1(xpc_connection_t *a1, xpc_object_t *a2)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(a1[2], *a2);
  }

  FigXPCRelease();
  CFRelease(a1);
}

uint64_t dqs_SendLowWaterMarkCallback_cold_2()
{
  FigSignalErrorAtGM();

  return FigXPCRelease();
}

uint64_t FigAssetCacheInspectorCreate_Streaming(const void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  if (!cf)
  {
    goto LABEL_20;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != FigAssetGetTypeID() || !a3)
  {
    goto LABEL_20;
  }

  FigAssetCacheInspectorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_queue_create("com.apple.coremedia.streamingcacheinspector.statequeue", 0);
  *DerivedStorage = v9;
  if (!v9)
  {
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 16) = v10;
  *(DerivedStorage + 24) = CFRetain(cf);
  if (FigIsItOKToLogURLs())
  {
    v11 = FPSupport_GetAssetDoNotLogURLs(cf) == 0;
  }

  else
  {
    v11 = 0;
  }

  *(DerivedStorage + 73) = v11;
  v12 = *(DerivedStorage + 16);
  CMBaseObject = FigAssetGetCMBaseObject(cf);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    return 4294954514;
  }

  v7 = v14(CMBaseObject, @"assetProperty_CreationURL", v12, DerivedStorage + 32);
  if (v7)
  {
    return v7;
  }

  if (!*(DerivedStorage + 32))
  {
    goto LABEL_20;
  }

  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_1_141();
  v7 = FigNotificationCenterAddWeakListener();
  if (v7)
  {
    return v7;
  }

  v15 = sci_copyCacheURL(DerivedStorage, (DerivedStorage + 40));
  if (!v15)
  {
    *a3 = CFRetain(0);
  }

  return v15;
}

uint64_t sci_copyCacheURL(uint64_t a1, void *a2)
{
  cf = 0;
  if (FigCFURLIsLocalResource())
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    cf = v4;
    goto LABEL_6;
  }

  v5 = FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(a1 + 24), &cf);
  v4 = cf;
  if (!v5)
  {
LABEL_6:
    if (v4)
    {
      v6 = CFRetain(v4);
      v4 = cf;
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    *a2 = v6;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sci_invalidateDispatch(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      if (!*(v1 + 8))
      {
        *(v1 + 8) = 1;
        CMBaseObjectGetDerivedStorage();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_141();
        FigNotificationCenterRemoveWeakListener();
        v2 = *(v1 + 16);
        if (v2)
        {
          CFRelease(v2);
          *(v1 + 16) = 0;
        }

        v3 = *(v1 + 24);
        if (v3)
        {
          CFRelease(v3);
          *(v1 + 24) = 0;
        }

        v4 = *(v1 + 32);
        if (v4)
        {
          CFRelease(v4);
          *(v1 + 32) = 0;
        }

        v5 = *(v1 + 40);
        if (v5)
        {
          CFRelease(v5);
          *(v1 + 40) = 0;
        }

        v6 = *(v1 + 48);
        if (v6)
        {
          CFRelease(v6);
          *(v1 + 48) = 0;
        }

        v7 = *(v1 + 56);
        if (v7)
        {
          CFRelease(v7);
          *(v1 + 56) = 0;
        }

        v8 = *(v1 + 64);
        if (v8)
        {
          CFRelease(v8);
          *(v1 + 64) = 0;
        }
      }
    }
  }
}

uint64_t sci_assetBecameReadyForDownload()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 8) && !*(result + 40))
  {

    return sci_copyCacheURL(result, (result + 40));
  }

  return result;
}

void sci_copyPropertyDispatch(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1 || *(v2 + 8))
  {
    return;
  }

  if (CFEqual(@"AssetCacheInspectorProperty_CacheURL", *(a1 + 8)))
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    **(a1 + 16) = v3;
    return;
  }

  if (!CFEqual(@"AssetCacheInspectorProperty_PlayableOffline", *(a1 + 8)))
  {
    return;
  }

  v4 = *(a1 + 16);
  v9 = 0;
  cf = 0;
  if (*(v2 + 72))
  {
    goto LABEL_15;
  }

  if (!*(v2 + 40))
  {
LABEL_16:
    v7 = MEMORY[0x1E695E4C0];
    goto LABEL_17;
  }

  isVideoPlayableOffline = sci_createAndOpenHLSPersistentStore(v2, &cf);
  if (!isVideoPlayableOffline)
  {
    isVideoPlayableOffline = sci_isVideoPlayableOffline(v2, cf, &v9, 0);
    if (!isVideoPlayableOffline)
    {
      if (v9)
      {
LABEL_15:
        v7 = MEMORY[0x1E695E4D0];
LABEL_17:
        v6 = 0;
        *v4 = *v7;
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  v6 = isVideoPlayableOffline;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  *(a1 + 24) = v6;
}

uint64_t sci_isVideoPlayableOffline(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4)
{
  v29 = 0;
  if (*(a1 + 72))
  {
    OUTLINED_FUNCTION_4_107();
    v23 = 1;
    goto LABEL_29;
  }

  if (!*(a1 + 40))
  {
    OUTLINED_FUNCTION_4_107();
LABEL_29:
    *v24 = v23;
    v20 = 0;
    if (v25)
    {
      *v25 = v4;
    }

    goto LABEL_31;
  }

  v9 = sci_ensureAlternateArrayAndMediaSelectionArray(a1, a2);
  if (v9)
  {
    return v9;
  }

  if (*(a1 + 56))
  {
    Mutable = CFArrayCreateMutable(*(a1 + 16), 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = CFArrayCreateMutable(*(a1 + 16), 0, MEMORY[0x1E695E9C0]);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        HasVideo = 0;
        while (1)
        {
          Count = *(a1 + 56);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v13 >= Count)
          {
            CFArrayAppendValue(Mutable, *(a1 + 48));
            goto LABEL_21;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v13);
          PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(ValueAtIndex);
          StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(ValueAtIndex);
          if (HasVideo)
          {
            if (!PlaylistAlternateURL)
            {
              goto LABEL_19;
            }
          }

          else
          {
            HasVideo = FigAlternateHasVideo(ValueAtIndex);
            if (!PlaylistAlternateURL)
            {
              goto LABEL_19;
            }
          }

          v19 = FigCFHTTPCreateURLString(PlaylistAlternateURL);
          CFArrayAppendValue(Mutable, v19);
          if (v19)
          {
            CFRelease(v19);
          }

          if (StableStreamIdentifier)
          {
            CFArrayAppendValue(v12, StableStreamIdentifier);
          }

LABEL_19:
          ++v13;
        }
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    v20 = FigSignalErrorAtGM();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    v20 = FigSignalErrorAtGM();
    Mutable = 0;
  }

  LOBYTE(HasVideo) = 0;
  v12 = 0;
  OUTLINED_FUNCTION_4_107();
  v21 = 0;
  if (!v20)
  {
LABEL_21:
    v5 = CFRetain(Mutable);
    v6 = CFRetain(v12);
    v20 = 0;
    v4 = HasVideo;
    v21 = v12;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
LABEL_31:
    if (!v5)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v22 = sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(a2, v5, v6, &v29);
  if (!v22)
  {
    v23 = v29;
    *(a1 + 72) = v29;
    v24 = a3;
    v25 = a4;
    goto LABEL_29;
  }

  v20 = v22;
  if (v5)
  {
LABEL_32:
    CFRelease(v5);
  }

LABEL_33:
  if (v6)
  {
    CFRelease(v6);
  }

  return v20;
}

uint64_t sci_ensureAlternateArrayAndMediaSelectionArray(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  cf = 0;
  if (*(a1 + 64) || *(a1 + 56))
  {
    v14 = 0;
    goto LABEL_14;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4(a2, @"NetworkPlaylist", &v23, 0, &v22, &v21);
  if (!v5)
  {
    v6 = *(a1 + 16);
    FigBaseObject = FigHLSPersistentStoreGetFigBaseObject(a2);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v5 = v8(FigBaseObject, @"MasterPlaylistNetworkURL", v6, a1 + 48);
      if (!v5)
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          v10 = CFURLCreateWithString(*(a1 + 16), v9, 0);
          if (v10)
          {
            v11 = v10;
            v12 = FigStreamPlaylistParse(v21, v10, 0, &v20, 0, 0, 1, *(a1 + 73), 0, 0, 0, 0, &cf, 0);
            if (v12)
            {
LABEL_34:
              v14 = v12;
              goto LABEL_29;
            }

            if (cf && FigMultivariantPlaylistGetMediaSelectionArray(cf))
            {
              MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(cf);
              *(a1 + 64) = CFRetain(MediaSelectionArray);
            }

            else
            {
              v16 = CFArrayCreate(*(a1 + 16), 0, 0, MEMORY[0x1E695E9C0]);
              *(a1 + 64) = v16;
              if (!v16)
              {
LABEL_33:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_4();
                v12 = FigSignalErrorAtGM();
                goto LABEL_34;
              }
            }

            if (cf && FigMultivariantPlaylistGetAlternates(cf))
            {
              Alternates = FigMultivariantPlaylistGetAlternates(cf);
              v14 = 0;
              *(a1 + 56) = CFRetain(Alternates);
LABEL_29:
              CFRelease(v11);
              goto LABEL_14;
            }

            v18 = CFArrayCreate(*(a1 + 16), 0, 0, MEMORY[0x1E695E9C0]);
            *(a1 + 56) = v18;
            if (v18)
            {
              v14 = 0;
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        v5 = FigSignalErrorAtGM();
      }

      goto LABEL_32;
    }

LABEL_13:
    v14 = 4294954514;
    goto LABEL_14;
  }

LABEL_32:
  v14 = v5;
LABEL_14:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(uint64_t a1, const __CFArray *a2, const __CFArray *a3, _BYTE *a4)
{
  v25 = 0;
  value = 0;
  theArray = 0;
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
LABEL_30:
    v20 = 4294954514;
    goto LABEL_31;
  }

  v9 = v8(a1, &theArray);
  if (v9)
  {
LABEL_40:
    v20 = v9;
    goto LABEL_31;
  }

  for (i = 0; ; ++i)
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v13)
    {
      goto LABEL_30;
    }

    v9 = v13(a1, ValueAtIndex, &cf);
    if (v9)
    {
      goto LABEL_40;
    }

    v14 = cf;
    if (cf)
    {
      if (a3)
      {
        v15.length = CFArrayGetCount(a3);
        v14 = cf;
      }

      else
      {
        v15.length = 0;
      }

      v17 = a3;
    }

    else
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v16)
      {
        goto LABEL_30;
      }

      v9 = v16(a1, ValueAtIndex, &value);
      if (v9)
      {
        goto LABEL_40;
      }

      v14 = value;
      if (!value)
      {
        goto LABEL_24;
      }

      if (a2)
      {
        v15.length = CFArrayGetCount(a2);
        v14 = value;
      }

      else
      {
        v15.length = 0;
      }

      v17 = a2;
    }

    v15.location = 0;
    if (CFArrayContainsValue(v17, v15, v14))
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v18)
      {
        goto LABEL_30;
      }

      v9 = v18(a1, ValueAtIndex, &v25);
      if (v9)
      {
        goto LABEL_40;
      }
    }

LABEL_24:
    v19 = v25;
    if (v25)
    {
      goto LABEL_39;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v19 = v25;
LABEL_39:
  v20 = 0;
  *a4 = v19;
LABEL_31:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v20;
}

uint64_t sci_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_createAndOpenHLSPersistentStore_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigConvertCSSStyleSheetDataToTextMarkup(const __CFAllocator *a1, const __CFData *a2, __CFArray **a3, void *a4)
{
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v8 = FigSignalErrorAtGM();
LABEL_161:
    v57 = v8;
    goto LABEL_148;
  }

  v8 = FigTextContainerCreateWithCFData(a1, a2, 0x8000100u, 0, &v92);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSParserCreate(a1, v92, 0, &v91);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSParserProduceStyleSheet(v91, &v90);
  if (v8)
  {
    goto LABEL_161;
  }

  v8 = FigCSSStyleSheetCopyRuleList(v90, &v88);
  if (v8)
  {
    goto LABEL_161;
  }

  v72 = a3;
  v73 = a4;
  Length = FigCSSRuleListGetLength(v88);
  if (Length < 1)
  {
    v13 = 0;
    v57 = 0;
    v12 = 0;
LABEL_144:
    *v72 = v12;
    if (v73)
    {
      *v73 = 0;
    }

    if (v13)
    {
      goto LABEL_147;
    }

    goto LABEL_148;
  }

  v10 = Length;
  v60 = v4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  key = *MEMORY[0x1E6960A88];
  v63 = *MEMORY[0x1E6960880];
  v61 = *MEMORY[0x1E6960858];
  v81 = *MEMORY[0x1E695E4D0];
  v85 = *MEMORY[0x1E695E4C0];
  v64 = *MEMORY[0x1E69607C0];
  v65 = *MEMORY[0x1E6960B48];
  v66 = *MEMORY[0x1E6960B40];
  v68 = *MEMORY[0x1E6960B38];
  v69 = *MEMORY[0x1E6960990];
  v78 = *MEMORY[0x1E6960948];
  v70 = *MEMORY[0x1E6960B68];
  v71 = *MEMORY[0x1E6960B70];
  v76 = *MEMORY[0x1E6960938];
  v77 = *MEMORY[0x1E6960B78];
  allocator = *MEMORY[0x1E695E480];
  v75 = *MEMORY[0x1E6960890];
  v80 = *MEMORY[0x1E69608A8];
  v83 = *MEMORY[0x1E6960878];
  v84 = *MEMORY[0x1E69607D0];
  v62 = *MEMORY[0x1E6960928];
  v79 = Length;
  while (1)
  {
    v87 = 0;
    v14 = FigCSSRuleListCopyRuleAtIndex(v88, v11, &v89, &v87);
    if (v87 == 1)
    {
      break;
    }

    v57 = v14;
LABEL_132:
    if (v89)
    {
      CFRelease(v89);
      v89 = 0;
    }

    if (++v11 == v10)
    {
      goto LABEL_144;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v13 = v89;
  v95 = 0;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  if (!v89)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
    Mutable = 0;
LABEL_139:
    v18 = 0;
    goto LABEL_142;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
LABEL_138:
    v13 = 0;
    goto LABEL_139;
  }

  if (FigCSSStyleRuleCopySelector(v13, &v96) || !v96)
  {
    goto LABEL_138;
  }

  v16 = CFStringGetLength(v96);
  MutableCopy = CFStringCreateMutableCopy(a1, v16, v96);
  v18 = MutableCopy;
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
LABEL_141:
    v13 = 0;
LABEL_142:
    v22 = 0;
    goto LABEL_113;
  }

  CFStringTrimWhitespace(MutableCopy);
  CFDictionarySetValue(Mutable, key, v18);
  if (FigCSSStyleRuleCopyDeclaration(v13, &v95))
  {
    goto LABEL_141;
  }

  PropertyCount = FigCSSStyleDeclarationGetPropertyCount(v95);
  if (PropertyCount < 1)
  {
    v22 = 0;
    goto LABEL_112;
  }

  v20 = PropertyCount;
  theArray = v12;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (v94)
    {
      CFRelease(v94);
      v94 = 0;
    }

    if (v93)
    {
      CFRelease(v93);
      v93 = 0;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (FigCSSStyleDeclarationCopyPropertyNameAtIndex(v95, v21, &v94) || FigCSSStyleDeclarationCopyPropertyValue(v95, v94, &v93))
    {
      v22 = 0;
      goto LABEL_29;
    }

    v24 = v93;
    if (v93 && (v25 = CFGetTypeID(v93), TypeID = CFStringGetTypeID(), v24 = v93, v25 == TypeID))
    {
      v27 = CFStringGetLength(v93);
      v22 = CFStringCreateMutableCopy(a1, v27, v93);
      CFStringTrimWhitespace(v22);
      v24 = v93;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v28 = v22;
    }

    else
    {
      v28 = v24;
    }

    v97[0] = 0;
    if (OUTLINED_FUNCTION_2_135(@"color") == kCFCompareEqualTo)
    {
      if (FigCSSParserUtilitiesParseColor(a1, v28, v97))
      {
        goto LABEL_65;
      }

      v31 = v97[0];
      v30 = v83;
      goto LABEL_57;
    }

    if (OUTLINED_FUNCTION_2_135(@"font-weight") == kCFCompareEqualTo)
    {
      v33 = OUTLINED_FUNCTION_1_142(@"normal");
      v30 = v84;
      v31 = v85;
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_1_142(@"bold");
        v30 = v84;
        goto LABEL_64;
      }

      goto LABEL_57;
    }

    if (OUTLINED_FUNCTION_2_135(@"font-style") == kCFCompareEqualTo)
    {
      v35 = OUTLINED_FUNCTION_1_142(@"normal");
      v30 = v80;
      v31 = v85;
      if (v35)
      {
        v34 = OUTLINED_FUNCTION_1_142(@"italic");
        v30 = v80;
        goto LABEL_64;
      }

LABEL_57:
      if (v30 && v31)
      {
        CFDictionarySetValue(Mutable, v30, v31);
        v32 = 1;
LABEL_96:
        CFRelease(v31);
        v36 = v32;
        goto LABEL_97;
      }

      goto LABEL_95;
    }

    if (OUTLINED_FUNCTION_2_135(@"text-combine-upright"))
    {
      if (OUTLINED_FUNCTION_2_135(@"ruby-position") == kCFCompareEqualTo)
      {
        v40 = OUTLINED_FUNCTION_1_142(@"over");
        v31 = v77;
        v30 = v78;
        if (v40)
        {
          v41 = OUTLINED_FUNCTION_1_142(@"right");
          v31 = v77;
          v30 = v78;
          if (v41)
          {
            v42 = OUTLINED_FUNCTION_1_142(@"under");
            v30 = v78;
            v31 = v71;
            if (v42)
            {
              v43 = OUTLINED_FUNCTION_1_142(@"left");
              v30 = v78;
              v31 = v71;
              if (v43)
              {
LABEL_65:
                v36 = 0;
                goto LABEL_97;
              }
            }
          }
        }

        goto LABEL_57;
      }

      if (OUTLINED_FUNCTION_2_135(@"ruby-align") == kCFCompareEqualTo)
      {
        v44 = OUTLINED_FUNCTION_1_142(@"start");
        v30 = v76;
        v31 = v70;
        if (v44)
        {
          v45 = OUTLINED_FUNCTION_1_142(@"center");
          v30 = v76;
          v31 = v68;
          if (v45)
          {
            v46 = OUTLINED_FUNCTION_1_142(@"space-between");
            v30 = v76;
            v31 = v66;
            if (v46)
            {
              v47 = OUTLINED_FUNCTION_1_142(@"space-around");
              v30 = v76;
              v31 = v65;
              if (v47)
              {
                goto LABEL_65;
              }
            }
          }
        }

        goto LABEL_57;
      }

      if (OUTLINED_FUNCTION_2_135(@"offset") == kCFCompareEqualTo)
      {
        goto LABEL_65;
      }

      if (OUTLINED_FUNCTION_2_135(@"text-decoration"))
      {
        if (OUTLINED_FUNCTION_2_135(@"background-color"))
        {
          if (OUTLINED_FUNCTION_2_135(@"font-family"))
          {
            if (OUTLINED_FUNCTION_2_135(@"font-size"))
            {
              goto LABEL_65;
            }

            valuePtr[0] = *MEMORY[0x1E6962808];
            if (FigCSSParseFontSize(v28, valuePtr))
            {
              goto LABEL_65;
            }

            if ((BYTE12(valuePtr[0]) & 0x1D) == 1 && DWORD2(valuePtr[0]) == 622862368)
            {
              v31 = OUTLINED_FUNCTION_4_108(*valuePtr, v59, v60, v61, v62, v63, v64, v65, v66, cf, v68, v69, v70, v71, v72, v73, allocator);
              v30 = v62;
            }

            else
            {
              v30 = 0;
              v31 = 0;
            }
          }

          else
          {
            MEMORY[0x19A8D3660](&convertFontFamilyFromCSSToCMTextMarkup_once, initMapFromCSSToCMTextMarkupFontFamily);
            Value = CFDictionaryGetValue(sMapFromCSSToCMTextMarkupFontFamily, v28);
            if (Value)
            {
              v31 = CFRetain(Value);
              v30 = v63;
            }

            else
            {
              if (CFStringGetLength(v28) < 1)
              {
                goto LABEL_65;
              }

              v31 = CFRetain(v28);
              v30 = v61;
            }
          }
        }

        else
        {
          if (FigCSSParserUtilitiesParseColor(a1, v28, v97))
          {
            goto LABEL_65;
          }

          v31 = v97[0];
          v30 = v64;
        }

        goto LABEL_57;
      }

      v48 = OUTLINED_FUNCTION_1_142(@"none");
      v30 = v69;
      v31 = v85;
      if (v48)
      {
        v34 = OUTLINED_FUNCTION_1_142(@"underline");
        v30 = v69;
LABEL_64:
        v31 = v81;
        if (v34)
        {
          goto LABEL_65;
        }

        goto LABEL_57;
      }

      goto LABEL_57;
    }

    if (CFStringCompare(v28, @"none", 1uLL) == kCFCompareEqualTo)
    {
      goto LABEL_65;
    }

    if (CFStringCompare(v28, @"all", 1uLL) == kCFCompareEqualTo || OUTLINED_FUNCTION_2_135(v28) == kCFCompareEqualTo)
    {
      LODWORD(valuePtr[0]) = -1;
      v31 = CFNumberCreate(allocator, kCFNumberSInt32Type, valuePtr);
      v30 = v75;
      goto LABEL_57;
    }

    LODWORD(valuePtr[0]) = 1;
    v37 = CFStringGetLength(@"digits");
    v100.location = 0;
    v100.length = v37;
    if (CFStringCompareWithOptions(v28, @"digits", v100, 1uLL))
    {
      v38 = FigCSSParseDigitsAsUInt32(v28, valuePtr);
      v39 = 0;
      if (!v38)
      {
        cf = 0;
LABEL_72:
        v31 = OUTLINED_FUNCTION_4_108(valuePtr[0], v59, v60, v61, v62, v63, v64, v65, v66, cf, v68, v69, v70, v71, v72, v73, allocator);
        v38 = 0;
        v39 = cf;
        if (cf)
        {
          goto LABEL_93;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v49 = CFGetAllocator(v28);
      v50 = CFStringCreateMutableCopy(v49, 0, v28);
      if (v50)
      {
        v51 = v50;
        v99.location = 0;
        v99.length = v37;
        CFStringReplace(v50, v99, &stru_1F0B1AFB8);
        v52 = CFStringGetLength(v51);
        CFStringTrimWhitespace(v51);
        if (v52 > CFStringGetLength(v51))
        {
          cf = v51;
          v53 = FigCSSParseDigitsAsUInt32(v51, valuePtr);
          if (v53)
          {
            v38 = v53;
            v31 = 0;
            v39 = cf;
LABEL_93:
            CFRelease(v39);
            goto LABEL_94;
          }

          goto LABEL_72;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v55 = FigSignalErrorAtGM();
        v56 = v51;
        v38 = v55;
        v39 = v56;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        v38 = FigSignalErrorAtGM();
        v39 = 0;
      }
    }

    v31 = 0;
    if (v39)
    {
      goto LABEL_93;
    }

LABEL_94:
    v30 = v75;
    if (!v38)
    {
      goto LABEL_57;
    }

LABEL_95:
    v32 = 0;
    v36 = 0;
    if (v31)
    {
      goto LABEL_96;
    }

LABEL_97:
    v23 += v36;
LABEL_29:
    ++v21;
  }

  while (v20 != v21);
  if (v23)
  {
    v13 = Mutable;
    Mutable = 0;
    v10 = v79;
    v12 = theArray;
    goto LABEL_113;
  }

  v10 = v79;
  v12 = theArray;
LABEL_112:
  CFRelease(Mutable);
  v13 = 0;
  Mutable = 0;
LABEL_113:
  if (v94)
  {
    CFRelease(v94);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v13)
  {
LABEL_131:
    v57 = 0;
    goto LABEL_132;
  }

  if (v12 || (v12 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0])) != 0)
  {
    CFArrayAppendValue(v12, v13);
    goto LABEL_131;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_2();
  v57 = FigSignalErrorAtGM();
LABEL_147:
  CFRelease(v13);
LABEL_148:
  if (v88)
  {
    CFRelease(v88);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  return v57;
}

uint64_t FigCSSParserUtilitiesParseColor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, const void *a5, char a6, const void *a7, const __CFDictionary *a8, void *a9)
{
  v236 = *MEMORY[0x1E69E9840];
  value = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_36_8();
  fig_note_initialize_category_with_default_work_cf();
  v162 = a3;
  if (a3 && a4 && a5 && a9)
  {
    FigBufferedAirPlayAudioChainSubPipeGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      return v12;
    }

    v166 = a4;
    v165 = a5;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = 0;
    if (a8 && CFDictionaryGetValueIfPresent(a8, @"LoggingID", &value))
    {
      CFStringGetCString(value, DerivedStorage, 20, 0x600u);
    }

    v14 = FigSimpleMutexCreate();
    *(DerivedStorage + 24) = v14;
    if (!v14 || (v15 = dispatch_queue_create("com.apple.coremedia.bufferedAirPlayAudioChainTranscodeSubPipe.notificationQueue", 0), (*(DerivedStorage + 32) = v15) == 0))
    {
      UInt32 = 0;
      goto LABEL_202;
    }

    v16 = CMBaseObjectGetDerivedStorage();
    memset(&v171, 0, sizeof(v171));
    CMTimeMake(&v171, 1000, 1000);
    memset(&v170, 0, sizeof(v170));
    CMTimeMake(&v170, 2000, 1000);
    v160 = *MEMORY[0x1E6960C70];
    *&time.value = *MEMORY[0x1E6960C70];
    v159 = *(MEMORY[0x1E6960C70] + 16);
    time.epoch = v159;
    v17 = CMTimeCopyAsDictionary(&time, a1);
    formatDescriptionOut = 0;
    *v174 = 0u;
    v175 = 0u;
    memset(&asbd, 0, sizeof(asbd));
    cf = 0;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v19 = MutableCopy;
    if (!MutableCopy)
    {
      v45 = 0;
      v44 = 4294954443;
      goto LABEL_66;
    }

    CFDictionarySetValue(MutableCopy, @"BufferedAirPlayDecode", *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(v19, @"PreparedQueueLowWaterLevel", v17);
    CFDictionarySetValue(v19, @"PreparedQueueHighWaterLevel", v17);
    if (a8)
    {
      v20 = OUTLINED_FUNCTION_45_16();
      if (v20)
      {
        OUTLINED_FUNCTION_21_27(v20);
      }

      v21 = OUTLINED_FUNCTION_45_16();
      if (v21)
      {
        OUTLINED_FUNCTION_21_27(v21);
      }

      v22 = OUTLINED_FUNCTION_45_16();
      if (v22)
      {
        OUTLINED_FUNCTION_21_27(v22);
      }

      v23 = OUTLINED_FUNCTION_45_16();
      if (v23)
      {
        OUTLINED_FUNCTION_21_27(v23);
      }

      v24 = CFDictionaryGetValue(a8, @"FormatDescription");
      formatDescriptionOut = v24;
      if (v24)
      {
        CFRetain(v24);
        CFDictionarySetValue(v19, @"FormatDescription", formatDescriptionOut);
        FigCFDictionarySetValueFromKeyInDict();
        goto LABEL_33;
      }

      FigCFDictionarySetValueFromKeyInDict();
    }

    if (dword_1EAF175F0)
    {
      v25 = OUTLINED_FUNCTION_13_40();
      v26 = v181;
      if (os_log_type_enabled(v25, type[0]))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LODWORD(v232.value) = 136315650;
        *(&v232.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
        LOWORD(v232.flags) = 2048;
        *(&v232.flags + 2) = 0;
        HIWORD(v232.epoch) = 2082;
        v233 = "";
        OUTLINED_FUNCTION_16_38();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_34_21();
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    asbd.mSampleRate = 44100.0;
    *&asbd.mFormatID = xmmword_196E78B20;
    *&asbd.mBytesPerFrame = xmmword_196E78B30;
    v28 = CMAudioFormatDescriptionCreate(a1, &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
    if (v28)
    {
      goto LABEL_209;
    }

    CFDictionarySetValue(v19, @"FormatDescription", formatDescriptionOut);
LABEL_33:
    RichestDecodableFormatAndChannelLayout = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    if (!RichestDecodableFormatAndChannelLayout)
    {
      goto LABEL_208;
    }

    v30 = *(RichestDecodableFormatAndChannelLayout + 8);
    v31 = v30 == 1667574579 || v30 == 1700997939;
    if (!v31 && v30 != 1885547315 && v30 != 2053319475 && v30 != 1902324531)
    {
LABEL_58:
      CFDictionarySetValue(v19, @"FormatDescription", v166);
      if (dword_1EAF175F0)
      {
        v39 = OUTLINED_FUNCTION_13_40();
        v40 = v181;
        os_log_type_enabled(v39, type[0]);
        OUTLINED_FUNCTION_425();
        if (v31)
        {
          v42 = v41;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          LODWORD(v232.value) = 136315906;
          *(&v232.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
          OUTLINED_FUNCTION_22_28("");
          v234 = 2112;
          *(v43 + 226) = v166;
          OUTLINED_FUNCTION_16_38();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_34_21();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635();
      }

      v44 = 0;
      v45 = v19;
      v19 = 0;
LABEL_66:
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (!v44)
      {
        v46 = FigAudioQueueRenderPipelineCreate(a1, v45, (DerivedStorage + 112));
        if (!v46)
        {
          FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v48)
          {
            v44 = 4294954514;
            if (!v45)
            {
              goto LABEL_82;
            }

            goto LABEL_81;
          }

          v46 = v48(FigBaseObject, @"SourceSampleBufferQueue", a1, v16 + 88);
          if (!v46)
          {
            v49 = *(v16 + 88);
            time = v170;
            v232 = v171;
            v46 = FigSampleBufferConsumerCreateForBufferQueue(v49, &time.value, &v232.value, (v16 + 64));
          }
        }

        v44 = v46;
      }

      if (!v45)
      {
LABEL_82:
        if (v44)
        {
LABEL_212:
          UInt32 = 0;
          goto LABEL_91;
        }

        v50 = *(DerivedStorage + 112);
        v51 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (!v51)
        {
          UInt32 = 0;
          v44 = 4294954514;
          goto LABEL_91;
        }

        v52 = v51(v50, 1);
        if (v52)
        {
          goto LABEL_211;
        }

        v53 = &_MergedGlobals_89;
        if (qword_1ED4CB510 != -1)
        {
          dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
        }

        v54 = &_MergedGlobals_89;
        if (_MergedGlobals_99)
        {
          if (a2)
          {
            *(DerivedStorage + 104) = CFRetain(a2);
            *(DerivedStorage + 80) = CFRetain(v162);
            v55 = a7;
            goto LABEL_153;
          }

          OUTLINED_FUNCTION_1_143();
          v52 = FigSignalErrorAtGM();
          goto LABEL_211;
        }

        v52 = FigSampleBufferConsumerCreateForSampleBufferConsumer("bapspTranscode_SampleBufferConsumerFromMixer", (DerivedStorage + 96));
        if (v52)
        {
LABEL_211:
          v44 = v52;
          goto LABEL_212;
        }

        v57 = *(DerivedStorage + 96);
        v174[0] = 0;
        v171.value = 0;
        v170.value = 0;
        memset(&asbd, 0, 32);
        LODWORD(formatDescriptionOut) = 0;
        LODWORD(cf) = 0;
        CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
        v181 = 0x8000;
        *type = 0;
        v179 = -1;
        if (!v57 || (*(DerivedStorage + 104) = 0, (v58 = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout()) == 0) || (v59 = v58, (v60 = FigEndpointStreamAudioFormatDescriptionGetASBD()) == 0))
        {
          OUTLINED_FUNCTION_1_143();
          v44 = FigSignalErrorAtGM();
          v55 = a7;
          goto LABEL_147;
        }

        v61 = v60;
        ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
        LODWORD(asbd.mSampleRate) = ChannelLayoutTag;
        if (qword_1ED4CB510 != -1)
        {
          dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
        }

        OUTLINED_FUNCTION_26_26();
        if (!v63 && dword_1EAF175F0)
        {
          v178 = 0;
          v177 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v65 = v178;
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v177);
          OUTLINED_FUNCTION_425();
          if (v31)
          {
            v67 = v66;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            v68 = *v59;
            v69 = *v61;
            v70 = *(v59 + 16);
            v71 = *(v59 + 20);
            v73 = *(v61 + 16);
            v72 = *(v61 + 20);
            v74 = *(v59 + 24);
            v75 = *(v59 + 28);
            v76 = *(v61 + 24);
            v77 = *(v61 + 28);
            v78 = *(v59 + 8);
            v79 = *(v59 + 12);
            v80 = HIBYTE(v78);
            v155 = BYTE2(v78);
            v156 = BYTE1(v78);
            v81 = v78;
            v83 = *(v61 + 8);
            v82 = *(v61 + 12);
            v84 = *(v59 + 32);
            v85 = *(v61 + 32);
            v86 = v170.value;
            if (v170.value)
            {
              v86 = *v170.value;
            }

            LODWORD(time.value) = 136321794;
            *(&time.value + 4) = "bapspTranscode_createMixer";
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = 0;
            HIWORD(time.epoch) = 2082;
            v183 = "";
            v184 = 2048;
            v185 = v68;
            v186 = 2048;
            v187 = v69;
            v188 = 1024;
            v189 = v75;
            v190 = 1024;
            v191 = v77;
            v192 = 1024;
            v193 = v70;
            v194 = 1024;
            v195 = v73;
            v196 = 1024;
            v197 = v71;
            v198 = 1024;
            v199 = v72;
            v200 = 1024;
            v201 = v74;
            v202 = 1024;
            v203 = v76;
            v204 = 1024;
            v205 = v84;
            v206 = 1024;
            v207 = v85;
            v208 = 1024;
            v209 = v79;
            v210 = 1024;
            v211 = v82;
            v212 = 1024;
            v213 = v80;
            v214 = 1024;
            v215 = v155;
            v216 = 1024;
            v217 = v156;
            v218 = 1024;
            v219 = v81;
            v220 = 1024;
            v221 = HIBYTE(v83);
            v222 = 1024;
            v223 = BYTE2(v83);
            v224 = 1024;
            v225 = BYTE1(v83);
            v226 = 1024;
            v227 = v83;
            v228 = 1024;
            v229 = v86;
            v230 = 1024;
            v231 = ChannelLayoutTag;
            OUTLINED_FUNCTION_33_22();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635();
          v53 = &_MergedGlobals_89;
        }

        v87 = FigActivitySchedulerCreateForNewThread(a1, 36, @"com.apple.coremedia.BAPSubPipeTranscode.mixer", &v171);
        if (v87)
        {
          v44 = v87;
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v90 = Mutable;
            v91 = OUTLINED_FUNCTION_30_21(Mutable, v89, &v181);
            if (v91)
            {
              v92 = v91;
              FigCFDictionarySetValue();
              OUTLINED_FUNCTION_38_17();
              if (!v31 && v93 != 1902211171 && v93 != 1667330147)
              {
                goto LABEL_125;
              }

              CFRelease(v92);
              v98 = OUTLINED_FUNCTION_30_21(v96, v97, type);
              if (v98)
              {
                v99 = v98;
                FigCFDictionarySetValue();
                CFRelease(v99);
                v102 = OUTLINED_FUNCTION_30_21(v100, v101, &v179);
                if (v102)
                {
                  v92 = v102;
                  FigCFDictionarySetValue();
LABEL_125:
                  FigCFDictionarySetValueFromKeyInDict();
                  v103 = FigAudioQueueOfflineMixerCreate(a1, v61, 0xCuLL, &asbd, v90, v57, v171.value, v174);
                  if (v103)
                  {
                    v44 = v103;
                    v55 = a7;
                    goto LABEL_223;
                  }

                  CFRelease(v92);
                  if (*(v61 + 28) >= 3u)
                  {
                    v106 = 32;
                  }

                  else
                  {
                    v106 = 64;
                  }

                  LODWORD(formatDescriptionOut) = v106;
                  v107 = OUTLINED_FUNCTION_30_21(v104, v105, &formatDescriptionOut);
                  v55 = a7;
                  if (v107)
                  {
                    v92 = v107;
                    v108 = FigAudioQueueOfflineMixerSetProperty(v174[0], @"AudioQueueOfflineMixer_CodecQuality", v107);
                    if (!v108)
                    {
                      v109 = *(v61 + 8);
                      if (v109 == 1634492771 || v109 == 1668047203 || v109 == 1902928227 || v109 == 2053923171)
                      {
                        v54 = &_MergedGlobals_89;
                      }

                      else
                      {
                        CFRelease(v92);
                        OUTLINED_FUNCTION_38_17();
                        if (v146)
                        {
                          v150 = 1;
                        }

                        else
                        {
                          v150 = v149 == 1902211171;
                        }

                        if (v150 || v149 == 1667330147)
                        {
                          switch(*(v61 + 28))
                          {
                            case 6:
                              v152 = 512000;
                              break;
                            case 8:
                            case 0xA:
                              v152 = 768000;
                              break;
                            case 0xC:
                              v152 = 896000;
                              break;
                            default:
                              v152 = 256000;
                              break;
                          }
                        }

                        else if (*(v61 + 28) <= 2u)
                        {
                          v152 = 256000;
                        }

                        else
                        {
                          v152 = 512000;
                        }

                        LODWORD(cf) = v152;
                        v54 = &_MergedGlobals_89;
                        if (CFPreferenceNumberWithDefault)
                        {
                          LODWORD(cf) = CFPreferenceNumberWithDefault;
                        }

                        v153 = OUTLINED_FUNCTION_30_21(v147, v148, &cf);
                        if (!v153)
                        {
                          OUTLINED_FUNCTION_1_143();
                          v44 = FigSignalErrorAtGM();
                          goto LABEL_146;
                        }

                        v92 = v153;
                        v154 = FigAudioQueueOfflineMixerSetProperty(v174[0], @"AudioQueueOfflineMixer_BitRateForVBR", v153);
                        if (v154)
                        {
                          v44 = v154;
LABEL_145:
                          CFRelease(v92);
LABEL_146:
                          CFRelease(v90);
                          v53 = &_MergedGlobals_89;
LABEL_147:
                          if (v174[0])
                          {
                            CFRelease(v174[0]);
                          }

                          if (v171.value)
                          {
                            CFRelease(v171.value);
                          }

                          if (v44)
                          {
                            goto LABEL_212;
                          }

                          v52 = FigSampleBufferConsumerOPTSAutoOrderCreate(a1, v162, "TranscodeOPTSAutoOrder", (DerivedStorage + 80));
                          if (!v52)
                          {
LABEL_153:
                            UInt32 = FigCFNumberCreateUInt32();
                            if (UInt32)
                            {
                              bapspTranscode_setThreadPriorities(0, UInt32);
                              v113 = FigSampleBufferConsumerSbufInspectorCreate(a1, *(DerivedStorage + 64), bapspTranscode_inspectSampleBuffer, 0, "sbcSbufInspectForTranscode", (DerivedStorage + 72));
                              if (!v113)
                              {
                                *(DerivedStorage + 128) = a6;
                                *(DerivedStorage + 48) = CFRetain(v165);
                                if (v55)
                                {
                                  v114 = CFRetain(v55);
                                }

                                else
                                {
                                  v114 = 0;
                                }

                                *(DerivedStorage + 56) = v114;
                                *(DerivedStorage + 168) = 0;
                                *(DerivedStorage + 40) = 0;
                                *(DerivedStorage + 44) = 0;
                                *(DerivedStorage + 136) = CFRetain(v166);
                                *(DerivedStorage + 144) = v160;
                                *(DerivedStorage + 160) = v159;
                                if (v53[162] != -1)
                                {
                                  dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
                                }

                                if (!*(v54 + 1288))
                                {
                                  goto LABEL_170;
                                }

                                v115 = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
                                if (v115)
                                {
                                  v116 = v115;
                                  v117 = FigEndpointStreamAudioFormatDescriptionGetASBD();
                                  if (v117)
                                  {
                                    v118 = v117;
                                    v119 = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
                                    if (!dword_1EAF175F0)
                                    {
LABEL_177:
                                      v44 = 0;
                                      *a9 = 0;
LABEL_178:
                                      CFRelease(UInt32);
                                      return v44;
                                    }

                                    v120 = v119;
                                    v121 = OUTLINED_FUNCTION_23_36();
                                    mSampleRate_low = LODWORD(asbd.mSampleRate);
                                    os_log_type_enabled(v121, v174[0]);
                                    OUTLINED_FUNCTION_425();
                                    if (v31)
                                    {
                                      v124 = v123;
                                    }

                                    else
                                    {
                                      v124 = mSampleRate_low;
                                    }

                                    if (v124)
                                    {
                                      allocatora = v120;
                                      v125 = *v116;
                                      v126 = *v118;
                                      v127 = *(v116 + 16);
                                      v128 = *(v116 + 20);
                                      v130 = *(v118 + 16);
                                      v129 = *(v118 + 20);
                                      v131 = *(v116 + 24);
                                      v132 = *(v116 + 28);
                                      v133 = *(v118 + 24);
                                      v134 = *(v118 + 28);
                                      v135 = *(v116 + 8);
                                      v136 = *(v116 + 12);
                                      v138 = *(v118 + 8);
                                      v137 = *(v118 + 12);
                                      v139 = *(v116 + 32);
                                      v140 = *(v118 + 32);
                                      LODWORD(time.value) = 136321794;
                                      *(&time.value + 4) = "FigBufferedAirPlayAudioChainSubPipeTranscodeCreate";
                                      LOWORD(time.flags) = 2048;
                                      *(&time.flags + 2) = 0;
                                      HIWORD(time.epoch) = 2082;
                                      v183 = "";
                                      v184 = 2048;
                                      v185 = v125;
                                      v186 = 2048;
                                      v187 = v126;
                                      v188 = 1024;
                                      v189 = v132;
                                      v190 = 1024;
                                      v191 = v134;
                                      v192 = 1024;
                                      v193 = v127;
                                      v194 = 1024;
                                      v195 = v130;
                                      v196 = 1024;
                                      v197 = v128;
                                      v198 = 1024;
                                      v199 = v129;
                                      v200 = 1024;
                                      v201 = v131;
                                      v202 = 1024;
                                      v203 = v133;
                                      v204 = 1024;
                                      v205 = v139;
                                      v206 = 1024;
                                      v207 = v140;
                                      v208 = 1024;
                                      v209 = v136;
                                      v210 = 1024;
                                      v211 = v137;
                                      v212 = 1024;
                                      v213 = HIBYTE(v135);
                                      v214 = 1024;
                                      v215 = BYTE2(v135);
                                      v216 = 1024;
                                      v217 = BYTE1(v135);
                                      v218 = 1024;
                                      v219 = v135;
                                      v220 = 1024;
                                      v221 = HIBYTE(v138);
                                      v222 = 1024;
                                      v223 = BYTE2(v138);
                                      v224 = 1024;
                                      v225 = BYTE1(v138);
                                      v226 = 1024;
                                      v227 = v138;
                                      v228 = 1024;
                                      v229 = 0;
                                      v230 = 1024;
                                      v231 = allocatora;
                                      OUTLINED_FUNCTION_33_22();
                                      OUTLINED_FUNCTION_108();
                                      _os_log_send_and_compose_impl();
                                    }

                                    OUTLINED_FUNCTION_34_21();
                                    OUTLINED_FUNCTION_7();
                                    OUTLINED_FUNCTION_635();
LABEL_170:
                                    if (dword_1EAF175F0)
                                    {
                                      v141 = OUTLINED_FUNCTION_23_36();
                                      v142 = LODWORD(asbd.mSampleRate);
                                      os_log_type_enabled(v141, v174[0]);
                                      OUTLINED_FUNCTION_425();
                                      if (v31)
                                      {
                                        v144 = v143;
                                      }

                                      else
                                      {
                                        v144 = v142;
                                      }

                                      if (v144)
                                      {
                                        LODWORD(v232.value) = 136315650;
                                        *(&v232.value + 4) = "FigBufferedAirPlayAudioChainSubPipeTranscodeCreate";
                                        OUTLINED_FUNCTION_22_28("");
                                        OUTLINED_FUNCTION_16_38();
                                        OUTLINED_FUNCTION_108();
                                        _os_log_send_and_compose_impl();
                                      }

                                      OUTLINED_FUNCTION_7();
                                      OUTLINED_FUNCTION_635();
                                    }

                                    goto LABEL_177;
                                  }
                                }

                                OUTLINED_FUNCTION_1_143();
                                v113 = FigSignalErrorAtGM();
                              }

                              v44 = v113;
LABEL_91:
                              if (!UInt32)
                              {
                                return v44;
                              }

                              goto LABEL_178;
                            }

LABEL_202:
                            v44 = 4294954510;
                            goto LABEL_91;
                          }

                          goto LABEL_211;
                        }
                      }

                      v44 = FigAudioQueueOfflineMixerSetProperty(v174[0], @"AudioQueueOfflineMixer_SampleBufferAllocator", a7);
                      if (!v44)
                      {
                        *(DerivedStorage + 104) = v174[0];
                        v174[0] = 0;
                      }

                      goto LABEL_145;
                    }

                    v44 = v108;
LABEL_223:
                    v54 = &_MergedGlobals_89;
                    goto LABEL_145;
                  }

                  OUTLINED_FUNCTION_1_143();
                  v44 = FigSignalErrorAtGM();
LABEL_225:
                  v54 = &_MergedGlobals_89;
                  goto LABEL_146;
                }
              }
            }

            OUTLINED_FUNCTION_1_143();
            v44 = FigSignalErrorAtGM();
            v55 = a7;
            goto LABEL_225;
          }

          v44 = 4294954443;
        }

        v55 = a7;
        v54 = &_MergedGlobals_89;
        goto LABEL_147;
      }

LABEL_81:
      CFRelease(v45);
      goto LABEL_82;
    }

    if (FigEndpointStreamAudioFormatDescriptionGetASBD())
    {
      LODWORD(v174[0]) = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
      v28 = FigAudioRenderingPreferencesCreate();
      if (!v28)
      {
        if (dword_1EAF175F0)
        {
          v35 = OUTLINED_FUNCTION_13_40();
          v36 = v181;
          os_log_type_enabled(v35, type[0]);
          OUTLINED_FUNCTION_425();
          if (v31)
          {
            v38 = v37;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            LODWORD(v232.value) = 136315906;
            *(&v232.value + 4) = "bapspTranscode_setupAudioRenderPipelineOptions";
            LOWORD(v232.flags) = 2048;
            *(&v232.flags + 2) = 0;
            HIWORD(v232.epoch) = 2082;
            v233 = "";
            v234 = 2112;
            v235 = cf;
            OUTLINED_FUNCTION_16_38();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_34_21();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635();
        }

        CFDictionarySetValue(v19, @"AudioRenderingPreferences", cf);
        goto LABEL_58;
      }
    }

    else
    {
LABEL_208:
      OUTLINED_FUNCTION_1_143();
      v28 = FigSignalErrorAtGM();
    }

LABEL_209:
    v44 = v28;
    v45 = 0;
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_9_51();

  return FigSignalErrorAtGM();
}

uint64_t bapspTranscode_setThreadPriorities(uint64_t a1, const __CFNumber *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  if (a2)
  {
    v4 = result;
    result = CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
    switch(valuePtr)
    {
      case '$':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayUrgent;
        break;
      case '+':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayRelaxed;
        break;
      case '%':
        v5 = kFigAudioRenderPipelineOfflineRenderPriority_BufferedAirPlayDefault;
        break;
      default:
        return result;
    }

    v6 = *(v4 + 112);
    if (v6)
    {
      v7 = *v5;
      FigBaseObject = FigRenderPipelineGetFigBaseObject(v6);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(FigBaseObject, @"OfflineRenderPriority", v7);
      }
    }

    result = *(v4 + 104);
    if (result)
    {
      return FigAudioQueueOfflineMixerSetProperty(result, @"AudioQueueOfflineMixer_ThreadPriority", a2);
    }
  }

  return result;
}

uint64_t bapspTranscode_inspectSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v307 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(a1);
    v6 = MEMORY[0x1E695E480];
    LODWORD(v7) = MEMORY[0x1E695E4D0];
    if (FormatDescription)
    {
      v8 = *(v4 + 136);
      if (!v8 || !CMAudioFormatDescriptionEqual(FormatDescription, v8, 0xFu, 0) || !*(v4 + 168))
      {
        v9 = *v6;
        v10 = CMSampleBufferGetFormatDescription(a1);
        v11 = OUTLINED_FUNCTION_18_34();
        CMSampleBufferGetOutputPresentationTimeStamp(v12, v11);
        if (!FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v9, @"InputContentFormatDesc", v10, &time, &cf))
        {
          OUTLINED_FUNCTION_41_20(0, v13, v14, v15, v16, v17, v18, v19, v202, v211, v220, DerivedStorage, v238, v248, v257, v266, v275, target, cf);
          v20 = *(v4 + 80);
          v21 = cf;
          v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v22)
          {
            if (!v22(v20, v21))
            {
              *(v4 + 168) = 1;
            }
          }
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v23 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v24 = OUTLINED_FUNCTION_624();
    v26 = CMGetAttachment(v24, v25, 0);
    if (v26)
    {
      v27 = v26;
      v28 = *v6;
      v29 = OUTLINED_FUNCTION_18_34();
      CMSampleBufferGetOutputPresentationTimeStamp(v30, v29);
      epoch = !FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v28, @"SbufTracer", v27, &time, &cf) && (OUTLINED_FUNCTION_41_20(0, v31, v32, v33, v34, v35, v36, v37, v202, v211, v220, DerivedStorage, v238, v248, v257, v266, v275, target, cf), v38 = *(v23 + 80), v39 = cf, (v40 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && v40(v38, v39) == 0;
    }

    else
    {
      epoch = 1;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (epoch)
    {
      v42 = CMBaseObjectGetDerivedStorage();
      v43 = *MEMORY[0x1E6962DF0];
      v44 = CMGetAttachment(a1, *MEMORY[0x1E6962DF0], 0);
      if (v44)
      {
        time = v42[6];
        if (bapspTranscode_setLoudnessInfo(a2, v44, &time.value))
        {
          return 1;
        }

        CMRemoveAttachment(a1, v43);
      }

      v45 = CMBaseObjectGetDerivedStorage();
      targeta = 0;
      v46 = OUTLINED_FUNCTION_624();
      v239 = a2;
      if (CMGetAttachment(v46, v47, 0))
      {
        v48 = OUTLINED_FUNCTION_18_34();
        OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(v49, v48);
        OUTLINED_FUNCTION_8_55(OutputPresentationTimeStamp, v51, v52, v53, v54, v55, v56, v57, v202, v211, v220, DerivedStorage, a2, v248, v257, v266, v275, 0, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
        if (v7)
        {
          epoch = time.epoch;
        }

        else
        {
          OUTLINED_FUNCTION_27_23();
        }

        v58 = OUTLINED_FUNCTION_18_34();
        OutputDuration = CMSampleBufferGetOutputDuration(v59, v58);
        OUTLINED_FUNCTION_14_44(OutputDuration, v61, v62, v63, v64, v65, v66, v67, v203, v212, v221, v230, v240, v249, v258, v267, v276, targetb, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
        if (v68)
        {
          OUTLINED_FUNCTION_17_34();
          v71 = OUTLINED_FUNCTION_7_69(v69, v204, v213, v222, v231, v241, v250, v259, v268, SHIDWORD(v268), v277, targetc, cf, __SPAIR64__(v7, v70), epoch, v299, v300, v301, v302, v303, time.value);
          OUTLINED_FUNCTION_8_55(v71, v72, v73, v74, v75, v76, v77, v78, v205, v214, v223, v232, v242, v251, v260, v269, v278, targeth, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
        }

        if (dword_1EAF175F0)
        {
          v79 = OUTLINED_FUNCTION_24_23();
          OUTLINED_FUNCTION_39_18(v79, v80, v81, v82, v83, v84, v85, v86, v204, v213, v222, v231, v241, v250, SWORD2(v250), SBYTE6(v250), HIBYTE(v250), v259);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v241)
            {
              v222 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v222 = "";
            }

            OUTLINED_FUNCTION_4_109();
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_5_93();
            v299 = v222;
            OUTLINED_FUNCTION_3_112();
            OUTLINED_FUNCTION_43_0();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
        }

        v87 = OUTLINED_FUNCTION_624();
        CMRemoveAttachment(v87, v88);
        v89 = *MEMORY[0x1E695E4D0];
        OUTLINED_FUNCTION_4_109();
        if (OUTLINED_FUNCTION_42_20(v90, v91, v92, v93, v94, v95, v96, v97, v204, v213, v222, v231, v241, v250, v259, v268, v277, targetc, cf, v297, v298, v299, v300, v301, v302, v303, time.value))
        {
          v101 = 0;
          a2 = v239;
        }

        else
        {
          CMSetAttachment(targeta, @"SBUFForAutoOrder", v89, 0);
          v98 = *(v45 + 80);
          v99 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          a2 = v239;
          if (!v99 || v99(v98, targeta))
          {
            v101 = 0;
          }

          else
          {
            FigSimpleMutexLock();
            v100 = bapspTranscode_terminateQueueWithEndMarker();
            FigSimpleMutexUnlock();
            v101 = v100 == 0;
          }
        }
      }

      else
      {
        v101 = 1;
      }

      if (targeta)
      {
        CFRelease(targeta);
      }

      if (v101)
      {
        v102 = CMBaseObjectGetDerivedStorage();
        v103 = *MEMORY[0x1E6962E00];
        v104 = OUTLINED_FUNCTION_624();
        if (!CMGetAttachment(v104, v105, 0))
        {
          goto LABEL_58;
        }

        v106 = OUTLINED_FUNCTION_18_34();
        v108 = CMSampleBufferGetOutputPresentationTimeStamp(v107, v106);
        OUTLINED_FUNCTION_31_23(v108, v109, v110, v111, v112, v113, v114, v115, v202, v211, v220, DerivedStorage, v239, v248, v257, v266, v275, targeta, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
        v7 = time.epoch;
        v116 = OUTLINED_FUNCTION_18_34();
        v118 = CMSampleBufferGetOutputDuration(v117, v116);
        OUTLINED_FUNCTION_14_44(v118, v119, v120, v121, v122, v123, v124, v125, v206, v215, v224, v233, v243, v252, v261, v270, v279, targeti, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
        if (v126)
        {
          OUTLINED_FUNCTION_17_34();
          v129 = OUTLINED_FUNCTION_7_69(v127, v202, v211, v220, DerivedStorage, v239, v248, v257, v266, SHIDWORD(v266), v275, targetd, cf, __SPAIR64__(v101, v128), v7, v299, v300, v301, v302, v303, time.value);
          OUTLINED_FUNCTION_31_23(v129, v130, v131, v132, v133, v134, v135, v136, v207, v216, v225, v234, v244, v253, v262, v271, v280, targetj, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
          v7 = time.epoch;
        }

        if (dword_1EAF175F0)
        {
          LODWORD(v257) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            v220 = v103;
            if (v239)
            {
              v138 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v138 = "";
            }

            time.value = v305;
            time.timescale = v306;
            time.flags = v101;
            time.epoch = v7;
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_5_93();
            v299 = v138;
            OUTLINED_FUNCTION_3_112();
            OUTLINED_FUNCTION_43_0();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_449();
          a2 = v239;
        }

        v139 = OUTLINED_FUNCTION_624();
        CMRemoveAttachment(v139, v140);
        *(v102 + 44) = 1;
        FigSimpleMutexLock();
        v141 = bapspTranscode_terminateQueueWithEndMarker();
        FigSimpleMutexUnlock();
        if (!v141)
        {
LABEL_58:
          v142 = CMBaseObjectGetDerivedStorage();
          targete = 0;
          v143 = OUTLINED_FUNCTION_624();
          if (CMGetAttachment(v143, v144, 0))
          {
            v145 = OUTLINED_FUNCTION_18_34();
            v147 = CMSampleBufferGetOutputPresentationTimeStamp(v146, v145);
            OUTLINED_FUNCTION_8_55(v147, v148, v149, v150, v151, v152, v153, v154, v202, v211, v220, DerivedStorage, v239, v248, v257, v266, v275, 0, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
            if (v7)
            {
              v101 = time.epoch;
            }

            else
            {
              OUTLINED_FUNCTION_27_23();
            }

            v155 = OUTLINED_FUNCTION_18_34();
            v157 = CMSampleBufferGetOutputDuration(v156, v155);
            OUTLINED_FUNCTION_14_44(v157, v158, v159, v160, v161, v162, v163, v164, v208, v217, v226, v235, v245, v254, v263, v272, v281, targetf, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
            if (v165)
            {
              OUTLINED_FUNCTION_17_34();
              v168 = OUTLINED_FUNCTION_7_69(v166, v209, v218, v227, v236, v246, v255, v264, v273, SHIDWORD(v273), v282, targetg, cf, __SPAIR64__(v7, v167), v101, v299, v300, v301, v302, v303, time.value);
              OUTLINED_FUNCTION_8_55(v168, v169, v170, v171, v172, v173, v174, v175, v210, v219, v228, v237, v247, v256, v265, v274, v283, targetk, cf, v297, v298, v299, v300, v301, v302, v303, time.value, time.timescale);
            }

            if (dword_1EAF175F0)
            {
              v176 = OUTLINED_FUNCTION_24_23();
              OUTLINED_FUNCTION_39_18(v176, v177, v178, v179, v180, v181, v182, v183, v209, v218, v227, v236, v246, v255, SWORD2(v255), SBYTE6(v255), HIBYTE(v255), v264);
              OUTLINED_FUNCTION_37();
              if (a2)
              {
                v227 = @"FlushRangeEnd";
                if (v246)
                {
                  v184 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v184 = "";
                }

                OUTLINED_FUNCTION_4_109();
                CMTimeGetSeconds(&time);
                OUTLINED_FUNCTION_5_93();
                v299 = v184;
                OUTLINED_FUNCTION_3_112();
                OUTLINED_FUNCTION_43_0();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449();
              a2 = v246;
            }

            v185 = *MEMORY[0x1E695E4D0];
            OUTLINED_FUNCTION_4_109();
            v196 = !OUTLINED_FUNCTION_42_20(v186, v187, v188, v189, v190, v191, v192, v193, v209, v218, v227, v236, v246, v255, v264, v273, v282, targetg, cf, v297, v298, v299, v300, v301, v302, v303, time.value) && (CMSetAttachment(targete, @"SBUFForAutoOrder", v185, 0), v194 = *(v142 + 80), (v195 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0) && v195(v194, targete) == 0;
          }

          else
          {
            v196 = 1;
          }

          if (targete)
          {
            CFRelease(targete);
          }

          if (v196)
          {
            v197 = CMSampleBufferGetFormatDescription(a1);
            if (v197)
            {
              v198 = v197;
              v199 = *(DerivedStorage + 136);
              if (v199)
              {
                if (!CMAudioFormatDescriptionEqual(v197, v199, 0xFu, 0))
                {
                  v200 = *(DerivedStorage + 136);
                  *(DerivedStorage + 136) = v198;
                  CFRetain(v198);
                  if (v200)
                  {
                    CFRelease(v200);
                  }
                }
              }

              else
              {
                *(DerivedStorage + 136) = v197;
                CFRetain(v197);
              }
            }

            bapspTranscode_updateLastSbufInfo(a2, a1);
          }
        }
      }
    }
  }

  return 1;
}

uint64_t bapspTranscode_invalidate()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 42))
  {
    OUTLINED_FUNCTION_29_22();
    *(v0 + 42) = 1;
    if (qword_1ED4CB510 != -1)
    {
      dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
    }

    OUTLINED_FUNCTION_26_26();
    if (!v1)
    {
      FigAudioQueueOfflineMixerInvalidate(*(v0 + 104));
    }

    v2 = *(v0 + 136);
    if (v2)
    {
      CFRelease(v2);
      *(v0 + 136) = 0;
    }

    v3 = *(v0 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(v0 + 48) = 0;
    }

    v4 = *(v0 + 56);
    if (v4)
    {
      CFRelease(v4);
      *(v0 + 56) = 0;
    }

    v5 = *(v0 + 64);
    if (v5)
    {
      CFRelease(v5);
      *(v0 + 64) = 0;
    }

    v6 = *(v0 + 88);
    if (v6)
    {
      CFRelease(v6);
      *(v0 + 88) = 0;
    }

    v7 = *(v0 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(v0 + 72) = 0;
    }

    v8 = *(v0 + 80);
    if (v8)
    {
      CFRelease(v8);
      *(v0 + 80) = 0;
    }

    v9 = *(v0 + 96);
    if (v9)
    {
      CFRelease(v9);
      *(v0 + 96) = 0;
    }

    v10 = *(v0 + 112);
    if (v10)
    {
      CFRelease(v10);
      *(v0 + 112) = 0;
    }

    v11 = *(v0 + 104);
    if (v11)
    {
      CFRelease(v11);
      *(v0 + 104) = 0;
    }

    v12 = *(v0 + 120);
    if (v12)
    {
      CFRelease(v12);
      *(v0 + 120) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t bapspTranscode_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bapspTranscode_invalidate();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 32) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 24) = 0;
  return result;
}

uint64_t bapspTranscode_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 42))
  {
    return 0;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"SourceSampleBufferConsumer"))
  {
    v9 = *(v8 + 72);
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"IsStarted"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(v8 + 41);
    goto LABEL_7;
  }

  if (CFEqual(a2, @"CurrentFormatDescription"))
  {
    v9 = *(v8 + 136);
    if (!v9)
    {
LABEL_14:
      *a4 = v9;
      return 0;
    }

LABEL_13:
    v9 = CFRetain(v9);
    goto LABEL_14;
  }

  if (CFEqual(a2, @"SubPipeType"))
  {
    v10 = kFigBufferedAirPlayAudioChainSubPipeSubPipeType_Transcode;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"IsAudioChainAssembled"))
  {
    v10 = MEMORY[0x1E695E4D0];
    v11 = *(v8 + 40);
LABEL_7:
    if (!v11)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

LABEL_9:
    v9 = *v10;
    if (!*v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (CFEqual(a2, @"RemainingInputBufferDuration"))
  {
    CMBufferQueueGetDuration(&time, *(v8 + 88));
    v9 = CMTimeCopyAsDictionary(&time, a3);
    goto LABEL_14;
  }

  v13 = *(v8 + 112);

  return FigRenderPipelineCopyProperty(v13, a2, a3, a4);
}

uint64_t bapspTranscode_setProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 42))
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"LoudnessInfo", a2))
  {
    if (!a3 || (v8 = CFGetTypeID(a3), v8 == CFDictionaryGetTypeID()))
    {
      v9 = MEMORY[0x1E6960C70];

      return bapspTranscode_setLoudnessInfo(a1, a3, v9);
    }

    goto LABEL_19;
  }

  if (CFEqual(@"AudioProcessingTap", a2))
  {
    if (!a3 || (TypeID = MTAudioProcessingTapGetTypeID(), TypeID == CFGetTypeID(a3)))
    {
      FigRenderPipelineGetFigBaseObject(*(v7 + 112));
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        return 4294954514;
      }

      v12 = OUTLINED_FUNCTION_228();

      return v13(v12);
    }

    return 0;
  }

  if (CFEqual(@"ThreadPriority", a2))
  {
    if (!a3 || (v14 = CFGetTypeID(a3), v14 != CFNumberGetTypeID()))
    {
LABEL_19:

      return FigSignalErrorAtGM();
    }

    bapspTranscode_setThreadPriorities(a1, a3);
    return 0;
  }

  if (CFEqual(@"TimelineMilestone", a2))
  {
    v15 = *(v7 + 104);
    v16 = @"AudioQueueOfflineMixer_TimelineMilestone";
LABEL_27:

    return FigAudioQueueOfflineMixerSetProperty(v15, v16, a3);
  }

  if (CFEqual(@"ApplyTrimAtEndAfterPTS", a2))
  {
    v15 = *(v7 + 104);
    v16 = @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS";
    goto LABEL_27;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v7 + 112));

  return CMBaseObjectSetProperty(FigBaseObject, a2, a3);
}

uint64_t bapspTranscode_stopAudioChain(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 42))
  {
    v20 = 0;
    goto LABEL_22;
  }

  if (a2)
  {
    v8 = bapspTranscode_stopMixer(a1, 0);
    if (v8)
    {
      goto LABEL_17;
    }
  }

  v6 = *(v2 + 112);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7(v6);
  if (v8)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    v9 = *(v2 + 112);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v10)
    {
      v8 = v10(v9, 1);
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_17:
      v20 = v8;
      goto LABEL_22;
    }

LABEL_15:
    v20 = 4294954514;
    goto LABEL_22;
  }

LABEL_8:
  if (dword_1EAF175F0)
  {
    v11 = OUTLINED_FUNCTION_20_29();
    if (OUTLINED_FUNCTION_311(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23, v24, v25, SBYTE2(v25), BYTE3(v25), SHIDWORD(v25)))
    {
      v19 = v3;
    }

    else
    {
      v19 = v3 & 0xFFFFFFFE;
    }

    if (v19)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      CMBufferQueueGetDuration(&time, *(v2 + 88));
      CMTimeGetSeconds(&time);
      OUTLINED_FUNCTION_32_22();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = 0;
  *(v2 + 41) = 0;
  *(v2 + 44) = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  return v20;
}

uint64_t bapspTranscode_assembleAudioChain()
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22();
  if (*(v0 + 42) || *(v0 + 40))
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = FigNotificationCenterAddWeakListeners();
  if (!v2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = FigNotificationCenterAddWeakListeners();
    if (!v2)
    {
      FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v3 = OUTLINED_FUNCTION_501();
        v4(v3);
      }

      FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_501();
        v6(v5);
      }

      FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
      if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        goto LABEL_19;
      }

      v7 = OUTLINED_FUNCTION_501();
      v2 = v8(v7);
      if (!v2)
      {
        if (qword_1ED4CB510 != -1)
        {
          dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
        }

        OUTLINED_FUNCTION_26_26();
        if (v9)
        {
          goto LABEL_14;
        }

        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v11 = OUTLINED_FUNCTION_501();
          v2 = v12(v11);
          if (!v2)
          {
LABEL_14:
            *(DerivedStorage + 40) = 1;
            if (dword_1EAF175F0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_20;
          }

          goto LABEL_18;
        }

LABEL_19:
        v13 = 4294954514;
        goto LABEL_21;
      }
    }
  }

LABEL_18:
  v13 = v2;
LABEL_21:
  FigSimpleMutexUnlock();
  return v13;
}

uint64_t bapspTranscode_breakAudioChain(uint64_t a1, int a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 42))
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = *(v2 + 112);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v6)
  {
    v7 = v6(v5, 1);
    if (v7 || (v7 = bapspTranscode_stopMixer(a1, 1), v7) || (v7 = FigAudioQueueOfflineMixerSetProperty(*(v2 + 104), @"AudioQueueOfflineMixer_ApplyTrimAtEndAfterPTS", 0), v7))
    {
LABEL_14:
      v8 = v7;
      goto LABEL_12;
    }

LABEL_8:
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = FigNotificationCenterRemoveWeakListeners();
    if (!v7)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v8 = FigNotificationCenterRemoveWeakListeners();
      if (!v8)
      {
        *(v2 + 40) = 0;
        *(v2 + 44) = 0;
      }

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v8 = 4294954514;
LABEL_12:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t bapspTranscode_flush(uint64_t a1, __int128 *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29_22();
  if (*(v2 + 42))
  {
    v12 = 0;
    goto LABEL_12;
  }

  v5 = *(v2 + 64);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v6)
  {
    v6(v5);
  }

  v7 = bapspTranscode_terminateQueueWithEndMarker();
  if (v7)
  {
    goto LABEL_14;
  }

  v8 = *(v2 + 112);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v12 = 4294954514;
    goto LABEL_12;
  }

  v7 = v9(v8);
  if (v7)
  {
LABEL_14:
    v12 = v7;
    goto LABEL_12;
  }

  v10 = *(v2 + 112);
  v14 = *a2;
  v15 = *(a2 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v11)
  {
    v16 = v14;
    v17 = v15;
    v11(v10, &v16);
  }

  v12 = bapspTranscode_stopMixer(a1, 1);
  if (!v12)
  {
    *(v2 + 44) = 0;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t bapspTranscode_stopMixer(uint64_t a1, int a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v4 = FigAudioQueueOfflineMixerCopyProperty(*(DerivedStorage + 104), @"AudioQueueOfflineMixer_ConnectedAudioQueueCount", *MEMORY[0x1E695E480], cf);
  if (v4)
  {
    goto LABEL_6;
  }

  if (FigCFNumberGetSInt32() < 2)
  {
    v5 = *(DerivedStorage + 104);
    if (a2)
    {
      v4 = FigAudioQueueOfflineMixerInterruptAndStop(v5);
      if (v4)
      {
LABEL_6:
        v6 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = FigAudioQueueOfflineMixerStop(v5);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v4 = FigAudioQueueOfflineMixerWaitUntilCompletelyStopped(*(DerivedStorage + 104));
    goto LABEL_6;
  }

  if (dword_1EAF175F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = 0;
LABEL_7:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

void bapspTranscode_offlineMixerMilestonePassed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  *&v23.value = *MEMORY[0x1E6960C70];
  v23.epoch = *(MEMORY[0x1E6960C70] + 16);
  if (a5)
  {
    FigCFDictionaryGetCMTimeIfPresent();
    if (dword_1EAF175F0)
    {
      v7 = OUTLINED_FUNCTION_20_29();
      if (OUTLINED_FUNCTION_311(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, SBYTE2(v22), BYTE3(v22), SHIDWORD(v22)))
      {
        v15 = v5;
      }

      else
      {
        v15 = v5 & 0xFFFFFFFE;
      }

      if (v15)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        time = v23;
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = OUTLINED_FUNCTION_228();
    bapspTranscode_postNotification(v16, v17, v18);
  }
}

void bapspTranscode_offlineMixerDidReachEndOfOutputData(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (dword_1EAF175F0)
  {
    v9 = OUTLINED_FUNCTION_12_49();
    if (os_log_type_enabled(v9, BYTE3(type)))
    {
      v10 = HIDWORD(type);
    }

    else
    {
      v10 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v10)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v39 = 136315650;
      OUTLINED_FUNCTION_2_136();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 42))
  {
    v24 = 0;
  }

  else
  {
    v11 = *MEMORY[0x1E695E480];
    FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E6960C88], &cf);
    v12 = cf;
    if (cf)
    {
      v13 = *(DerivedStorage + 80);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v14)
      {
        v14(v13, v12);
      }
    }

    if (*(DerivedStorage + 43))
    {
      if (dword_1EAF175F0)
      {
        v15 = OUTLINED_FUNCTION_12_49();
        if (OUTLINED_FUNCTION_40_19(v15, v16, v17, v18, v19, v20, v21, v22, v35, v36, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
        {
          v23 = v5;
        }

        else
        {
          v23 = v5 & 0xFFFFFFFE;
        }

        if (v23)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v39 = 136315650;
          OUTLINED_FUNCTION_2_136();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
          v5 = HIDWORD(type);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (qword_1ED4CB510 != -1)
      {
        dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
      }

      OUTLINED_FUNCTION_26_26();
      if (v25)
      {
        time = *(DerivedStorage + 144);
        v24 = CMTimeCopyAsDictionary(&time, v11);
        if (!v24)
        {
          goto LABEL_46;
        }

        bapspTranscode_postNotification(a2, @"FinishedProcessingData", v24);
      }

      else
      {
        bapspTranscode_postNotification(a2, @"FinishedProcessingData", a5);
        v24 = 0;
      }

      *(DerivedStorage + 43) = 0;
    }

    else
    {
      v24 = 0;
    }

    if (*(DerivedStorage + 44))
    {
      if (dword_1EAF175F0)
      {
        v26 = OUTLINED_FUNCTION_12_49();
        if (OUTLINED_FUNCTION_40_19(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, type, SBYTE2(type), BYTE3(type), SHIDWORD(type)))
        {
          v34 = v5;
        }

        else
        {
          v34 = v5 & 0xFFFFFFFE;
        }

        if (v34)
        {
          if (a2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          v39 = 136315650;
          OUTLINED_FUNCTION_2_136();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      bapspTranscode_postNotification(a2, @"PlayResourceReleased", a5);
      *(DerivedStorage + 44) = 0;
    }
  }

LABEL_46:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

void bapspTranscode_playResourceReleased(uint64_t a1, uint64_t a2)
{
  bapspTranscode_stopAudioChain(a2, 1);
  v2 = OUTLINED_FUNCTION_228();

  bapspTranscode_postNotification(v2, v3, v4);
}

void bapspTranscode_segmentFinished(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 42) || ((v9 = *MEMORY[0x1E695E480], FigAudioQueueOfflineMixerCopyProperty(*(DerivedStorage + 104), @"AudioQueueOfflineMixer_ConnectedAudioQueueCount", *MEMORY[0x1E695E480], &cf), SInt32 = FigCFNumberGetSInt32(), *(DerivedStorage + 43)) ? (v11 = SInt32 < 2) : (v11 = 1), v11))
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (dword_1EAF175F0)
  {
    v13 = SInt32;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37();
    if (v5)
    {
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v18 = 136315906;
      OUTLINED_FUNCTION_32_22();
      v19 = 2082;
      v20 = v15;
      v21 = 1024;
      v22 = v13;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_43_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449();
  }

  if (qword_1ED4CB510 != -1)
  {
    dispatch_once(&qword_1ED4CB510, &__block_literal_global_76);
  }

  OUTLINED_FUNCTION_26_26();
  if (v16)
  {
    time = *(DerivedStorage + 144);
    v12 = CMTimeCopyAsDictionary(&time, v9);
    if (!v12)
    {
      goto LABEL_22;
    }

    bapspTranscode_postNotification(a2, @"FinishedProcessingData", v12);
  }

  else
  {
    bapspTranscode_postNotification(a2, @"FinishedProcessingData", a5);
    v12 = 0;
  }

  *(DerivedStorage + 43) = 0;
LABEL_22:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t bapspTranscode_setLoudnessInfo_cold_1(uint64_t a1)
{
  FigRenderPipelineGetFigBaseObject(*(a1 + 112));
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 8);
  result = VTable + 8;
  if (*(v3 + 56))
  {
    v4 = OUTLINED_FUNCTION_228();
    return v5(v4);
  }

  return result;
}

uint64_t bapspTranscode_startAudioChain_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bapspTranscode_terminateQueueWithEndMarker_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLSetCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLSet_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_updateSourcebufferCharacteristics(uint64_t a1)
{
  v12 = 0;
  v10 = 0;
  v11 = 0;
  cf = 0;
  v9 = 0;
  bvc_copyCVBufferProperties(*a1, &v11, &v10, &cf, &v9);
  FigVideoCompositorUtilityGetPixelAspectRatio(cf, &v12 + 1, &v12);
  v3 = v10;
  v2 = v11;
  *(a1 + 160) = v11;
  *(a1 + 168) = v3;
  v4 = v12;
  *(a1 + 184) = SHIDWORD(v12);
  *(a1 + 192) = v4;
  bvc_getCleanApertureRect(v9, v2, v3, (a1 + 232));
  v6 = v5;
  if (!v5)
  {
    v14.size.width = *(a1 + 144);
    v14.size.height = *(a1 + 152);
    v13 = *(a1 + 232);
    v14.origin.x = *(a1 + 128) + v13.origin.x;
    v14.origin.y = *(a1 + 136) + v13.origin.y;
    *(a1 + 264) = CGRectIntersection(v13, v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t bvc_computeScaledTransformAndTransformedRect(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(&v17, 0, sizeof(v17));
  bvc_getCleanApertureRect(a3, a1, a2, &v17.origin.x);
  v6 = v5;
  if (!v5)
  {
    v7 = *(a4 + 48);
    v8 = *(a4 + 32);
    v9 = v7;
    *(a4 + 80) = v8;
    *(a4 + 96) = v7;
    *(a4 + 112) = *(a4 + 64);
    v10 = *(a4 + 264);
    *&v7 = *(a4 + 272);
    v11 = *(a4 + 280);
    v12 = *(a4 + 288);
    *&v16.a = v8;
    *&v16.c = v9;
    *&v16.tx = *(a4 + 64);
    v18 = CGRectApplyAffineTransform(*(&v7 - 8), &v16);
    *(a4 + 200) = v18;
    v19 = CGRectIntersection(v18, v17);
    *(a4 + 200) = v19;
    *(a4 + 200) = CGRectStandardize(v19);
    Width = CVPixelBufferGetWidth(*a4);
    Height = CVPixelBufferGetHeight(*a4);
    *(a4 + 296) = 0;
    *(a4 + 304) = 0;
    *(a4 + 312) = Width;
    *(a4 + 320) = Height;
  }

  return v6;
}

void bvc_getCleanApertureRect(uint64_t a1, unint64_t a2, unint64_t a3, double *a4)
{
  if (a4)
  {
    FigVideoCompositorUtilityGetCleanAperture();
    if (!v7)
    {
      v8 = a2;
      v9 = 0.0;
      if ((a2 + (0.0 * 2.0)) <= 0.0)
      {
        v9 = a2 + (0.0 * 2.0);
      }

      if (v9 >= (v8 + (0.0 * -2.0)))
      {
        v9 = v8 + (0.0 * -2.0);
      }

      v10 = a3;
      v11 = a3 + (0.0 * 2.0);
      if (v11 > 0.0)
      {
        v11 = 0.0;
      }

      if (v11 >= (v10 + (0.0 * -2.0)))
      {
        v11 = v10 + (0.0 * -2.0);
      }

      *a4 = (((v8 - v9) * 0.5) + 0.0);
      a4[1] = (((v10 - v11) * 0.5) + 0.0);
      a4[2] = v9;
      a4[3] = v11;
    }
  }
}

BOOL bvc_doesPixelBufferFillCanvasExactly(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  memset(&v20, 0, sizeof(v20));
  bvc_getCleanApertureRect(a5, a3, a4, &v20.origin.x);
  if (v17)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return 0;
  }

  v21.origin.x = a6;
  v21.origin.y = a7;
  v21.size.width = a8;
  v21.size.height = a9;
  return CGRectEqualToRect(v21, v20);
}

uint64_t bvc_createPixelBufferPoolForPreProcessing(int a1, int a2, int a3, CVPixelBufferPoolRef *a4)
{
  theDict = 0;
  poolOut = 0;
  if (!a4)
  {
    fig_log_get_emitter();
LABEL_17:
    v9 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = bvc_createPixelBufferAttributesDictionary(*MEMORY[0x1E695E480], &theDict);
  if (v9)
  {
LABEL_18:
    v13 = v9;
    goto LABEL_11;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, theDict);
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    goto LABEL_17;
  }

  v11 = MutableCopy;
  v12 = bvc_CFDictionarySetInt(MutableCopy, *MEMORY[0x1E6966208], a1);
  if (v12 || (v12 = bvc_CFDictionarySetInt(v11, *MEMORY[0x1E69660B8], a2), v12) || (v12 = bvc_CFDictionarySetInt(v11, *MEMORY[0x1E6966130], a3), v12) || (v12 = VTCreatePixelBufferPoolAttributesWithName(), v12))
  {
    v13 = v12;
  }

  else
  {
    v13 = CVPixelBufferPoolCreate(v8, 0, v11, &poolOut);
    if (v13)
    {
      if (poolOut)
      {
        CFRelease(poolOut);
      }
    }

    else
    {
      *a4 = poolOut;
      poolOut = 0;
    }
  }

  CFRelease(v11);
LABEL_11:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v13;
}

void bvc_createPixelBufferAttributesDictionary_cold_1(const void *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  *a3 = FigSignalErrorAtGM();
  CFRelease(a1);
  CFRelease(a2);
}

uint64_t bvc_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_createPixelBufferAttributesDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_CFDictionarySetInt_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL basicVideoCompositor_RenderFrame_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL basicVideoCompositor_RenderFrame_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

BOOL basicVideoCompositor_RenderFrame_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_2_14(v0);
}

uint64_t basicVideoCompositor_RenderFrame_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t basicVideoCompositor_RenderFrame_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM();
}

uint64_t bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t bvc_isPixelBufferPoolCompatibleWithDimensionsAndPixelFormat_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t bvc_getBufferCharacteristics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_getBufferCharacteristics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_getBufferCharacteristics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t bvc_getBufferCharacteristics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSecureStopManagerCopyDefaultRuntimeInstance(uint64_t a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a2)
  {
    *a2 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigSecureStopManagerCopyDefaultRuntimeInstance_block_invoke;
    block[3] = &unk_1E7490FB0;
    block[5] = &v8;
    block[6] = a1;
    block[4] = &v12;
    if (qword_1ED4CB520 != -1)
    {
      dispatch_once(&qword_1ED4CB520, block);
    }

    if (!*(v13 + 6))
    {
      v3 = v9[3];
      if (v3)
      {
        _MergedGlobals_100 = v9[3];
        v9[3] = 0;
      }

      else
      {
        v3 = _MergedGlobals_100;
        if (!_MergedGlobals_100)
        {
LABEL_9:
          *a2 = v3;
          goto LABEL_10;
        }
      }

      v3 = CFRetain(v3);
      goto LABEL_9;
    }
  }

  else
  {
    fig_log_get_emitter();
    *(v13 + 6) = FigSignalErrorAtGM();
  }

LABEL_10:
  v4 = v9[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v13 + 6);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __fssm_fbo_copyRecords_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    v2 = *(v1 + 48);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      v4 = v3(v0, v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
  }
}

void __fssm_fbo_removeRecords_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    v2 = *(v1 + 48);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3)
    {
      v4 = v3(v0, v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
  }
}

void __fssm_fbo_updateRecord_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v0)
  {
    OUTLINED_FUNCTION_5_95();
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v1 = OUTLINED_FUNCTION_4_110();
      v3 = v2(v1);
    }

    else
    {
      v3 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v3);
  }
}

void __fssm_fbo_finalizeRecord_block_invoke()
{
  OUTLINED_FUNCTION_6_82();
  if (v1)
  {
    OUTLINED_FUNCTION_5_95();
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v2 = OUTLINED_FUNCTION_4_110();
      v4 = v3(v2);
    }

    else
    {
      v4 = 4294954514;
    }

    OUTLINED_FUNCTION_12_7(v4);
    if (!*(*(*(v0 + 32) + 8) + 24))
    {
      CMNotificationCenterGetDefaultLocalCenter();

      FigDispatchAsyncPostNotification();
    }
  }
}

uint64_t FigSecureStopManagerCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSecureStopManagerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSecureStopManagerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSecureStopManagerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fssm_fbo_initialize_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_initialize_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_copyRecords_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_removeRecords_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_updateRecord_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_updateRecord_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_2()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t fssm_fbo_finalizeRecord_cold_3()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_1_144(v0);
}

uint64_t __fssm_fbo_initialize_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void FigXPCFormatReaderServerAssociateCopiedNeighborSampleCursor(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef a10, void *cf, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  cf = 0;
  a12 = 0;
  if (v29)
  {
    if (!FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon() && cf)
    {
      v30 = CFGetTypeID(cf);
      if (qword_1ED4CB530 != -1)
      {
        OUTLINED_FUNCTION_2_138();
        dispatch_once_f(v31, v32, v33);
      }

      if (v30 == qword_1ED4CB538 && !FigServedSampleCursorStateCreate(*MEMORY[0x1E695E480], v28, cf, &a12))
      {
        OUTLINED_FUNCTION_1_145();
        if (!FigXPCServerAssociateCopiedObjectWithNeighborProcess())
        {
          FigSampleCursorServer_SetSampleCursorProperties(a12, v26, 1, 2, MEMORY[0x1E6960C98], 0, v24);
          a12 = 0;
        }
      }
    }
  }

  else if (v21)
  {
    FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_860();
}

void FigXPCFormatReaderServerAssociateCopiedNeighborTrackReader(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v22;
  a11 = 0;
  cf = 0;
  if (!v23)
  {
    if (!v21)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM();
      goto LABEL_13;
    }

    pid = xpc_connection_get_pid(v21);
    v25 = *MEMORY[0x1E695E480];
    if (CreateServedFormatReaderState(*MEMORY[0x1E695E480], pid, &cf))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon() && cf)
  {
    v24 = CFGetTypeID(cf);
    if (qword_1ED4CB540 != -1)
    {
      dispatch_once(&qword_1ED4CB540, &__block_literal_global_78);
    }

    if (v24 == qword_1ED4CB548)
    {
      v25 = *MEMORY[0x1E695E480];
LABEL_10:
      if (!FigServedTrackReaderStateCreate(v25, cf, &a11))
      {
        OUTLINED_FUNCTION_1_145();
        if (!FigXPCServerAssociateCopiedObjectWithNeighborProcess())
        {
          a11 = 0;
        }
      }
    }
  }

LABEL_13:
  if (a11)
  {
    CFRelease(a11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleFormatReaderMessage()
{
  OUTLINED_FUNCTION_3_37();
  cf1 = 0;
  v35 = 0;
  HIDWORD(v33) = 0;
  v31 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_45;
  }

  v4 = MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E69615A0];
  OUTLINED_FUNCTION_26_27();
  if (v7)
  {
    OUTLINED_FUNCTION_23_37();
    uint64 = xpc_dictionary_get_uint64(v2, "OtherProcessObjectID");
    v18 = FigXPCFormatReaderServerCopySampleCursorForID(uint64, v43);
    if (v18)
    {
      v25 = v18;
      v21 = v43[0];
      if (!v43[0])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v19 = xpc_dictionary_get_uint64(v2, "FormatReaderObjectID");
      v20 = xpc_dictionary_get_uint64(v2, "TrackReaderObjectID");
      v21 = v43[0];
      FigXPCFormatReaderServerAssociateCopiedNeighborSampleCursor(v19, v20, v1, v43[0], v0, value, v22, v23, 0, 0, v33, 0, 0, v36, v37[0], v37[1], v38, v39, v40, v41);
      v25 = v24;
      if (!v24)
      {
        xpc_dictionary_set_uint64(v0, *v5, value[0]);
      }

      if (!v21)
      {
        goto LABEL_36;
      }
    }

    v26 = v21;
LABEL_35:
    CFRelease(v26);
    goto LABEL_36;
  }

  if (v6 != 1180922424)
  {
    xpc_dictionary_get_uint64(v2, *v5);
    OpCode = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
    if (!OpCode)
    {
      v29 = CFGetTypeID(0);
      v30 = CFCopyTypeIDDescription(v29);
      if (v30)
      {
        CFRelease(v30);
      }

      v25 = 0;
      goto LABEL_36;
    }

LABEL_45:
    v25 = OpCode;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_16_39();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37[0] = 0;
  pid = xpc_connection_get_pid(v1);
  v9 = *v4;
  v10 = CreateServedFormatReaderState(*v4, pid, &v40);
  if (v10)
  {
    goto LABEL_49;
  }

  v10 = FigXPCMessageCopyCFURL();
  if (v10)
  {
    goto LABEL_49;
  }

  FigXPCMessageCopySandboxRegistration();
  v10 = FigXPCMessageCopyCFDictionary();
  if (v10)
  {
    goto LABEL_49;
  }

  BaseByteStreamProvider = FigGetBaseByteStreamProvider();
  v12 = v43[0];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    v25 = 4294954514;
    goto LABEL_24;
  }

  v10 = v13(BaseByteStreamProvider, v12, 0, 0, v9, &v39);
  if (v10 || (v10 = FigFormatReaderCreateForStream(v39, v9, v44, value), v10) || (v14 = mightFormatReaderBlockOnIOWhenStepping(value[0]), *(v40 + 32) = v14, OUTLINED_FUNCTION_0_155(), v10 = FigXPCServerAssociateObjectWithConnection(), v10))
  {
LABEL_49:
    v25 = v10;
  }

  else
  {
    FigBaseObject = FigFormatReaderGetFigBaseObject(value[0]);
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(FigBaseObject, @"CanMutate", v9, v37);
      v16 = v37[0];
    }

    v27 = v16 != *MEMORY[0x1E695E4D0];
    v40 = 0;
    xpc_dictionary_set_uint64(v0, *v5, v41);
    xpc_dictionary_set_BOOL(v0, "AllowsPropertyCaching", v27);
    if (v37[0])
    {
      CFRelease(v37[0]);
    }

    v25 = 0;
  }

LABEL_24:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v43[0])
  {
    CFRelease(v43[0]);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (value[0])
  {
    CFRelease(value[0]);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  v26 = v38;
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (v35)
  {
    CFRelease(v35);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v25;
}

uint64_t HandleNoReplyFormatReaderMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void FigSampleCursorServer_TranslateDataSource(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t value, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  a20 = v23;
  a21 = v24;
  OUTLINED_FUNCTION_375_0();
  v26 = v25;
  value = 0;
  a12 = 0;
  if (!FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(*(*v25 + 24), @"DataSourceURL", v22, &value, &a12))
  {
    if (a12)
    {
      array = xpc_dictionary_get_array(*(v26 + 8), "SampleCursorDataSourceArray");
      if (!array)
      {
        array = xpc_array_create(0, 0);
        xpc_dictionary_set_value(*(v26 + 8), "SampleCursorDataSourceArray", array);
        FigXPCRelease();
      }

      v28 = _CFXPCCreateXPCObjectFromCFObject();
      if (!v28 || (empty = xpc_dictionary_create_empty(), (v30 = empty) == 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM();
        goto LABEL_9;
      }

      xpc_dictionary_set_value(empty, "SampleCursorDataSourceURL", v28);
      xpc_dictionary_set_uint64(v30, "SampleCursorDataSourceOutOfBandID", value);
      xpc_array_append_value(array, v30);
    }

    *v21 = value;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_652();
}

uint64_t FigSampleCursorServer_TranslateFormatDescription()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  value = 0;
  theBuffer = 0;
  v20 = 0;
  IDForObjectOfType = FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(*(*v2 + 24), @"FormatDescription", v1, &value, &v20);
  if (IDForObjectOfType)
  {
    v16 = IDForObjectOfType;
    v12 = 0;
    goto LABEL_14;
  }

  if (!v20)
  {
    v12 = 0;
    goto LABEL_13;
  }

  dataPointerOut = 0;
  array = xpc_dictionary_get_array(*(v3 + 8), "SampleCursorFormatDescriptionArray");
  if (!array)
  {
    array = xpc_array_create(0, 0);
    xpc_dictionary_set_value(*(v3 + 8), "SampleCursorFormatDescriptionArray", array);
    FigXPCRelease();
  }

  SerializedAtomDataBlockBufferForFormatDescription = FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription();
  if (SerializedAtomDataBlockBufferForFormatDescription)
  {
    goto LABEL_21;
  }

  v7 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(v7, 0, DataLength))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    SerializedAtomDataBlockBufferForFormatDescription = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  SerializedAtomDataBlockBufferForFormatDescription = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
  if (SerializedAtomDataBlockBufferForFormatDescription)
  {
LABEL_21:
    v16 = SerializedAtomDataBlockBufferForFormatDescription;
    v12 = 0;
    goto LABEL_14;
  }

  v9 = dataPointerOut;
  v10 = CMBlockBufferGetDataLength(theBuffer);
  destructor[0] = MEMORY[0x1E69E9820];
  destructor[1] = 0x40000000;
  destructor[2] = __FigSampleCursorServer_TranslateFormatDescription_block_invoke;
  destructor[3] = &__block_descriptor_tmp_114;
  destructor[4] = theBuffer;
  v11 = dispatch_data_create(v9, v10, 0, destructor);
  v12 = v11;
  if (v11)
  {
    theBuffer = 0;
    v13 = xpc_data_create_with_dispatch_data(v11);
    if (v13)
    {
      empty = xpc_dictionary_create_empty();
      if (empty)
      {
        v15 = empty;
        xpc_dictionary_set_value(empty, "SampleCursorFormatDescription", v13);
        xpc_dictionary_set_uint64(v15, "SampleCursorFormatDescriptionOutOfBandID", value);
        xpc_array_append_value(array, v15);
LABEL_13:
        v16 = 0;
        *v0 = value;
        goto LABEL_14;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();
  v16 = FigSignalErrorAtGM();
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  return v16;
}

void CopySampleCursorAndReturnObjectID(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _BYTE *cf, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_14_45(v34, v32);
  v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v36)
  {
    goto LABEL_12;
  }

  if (v36(v33, &a12) || (v37 = CFGetAllocator(v33), FigServedSampleCursorStateCreate(v37, v35, *(v31 + 16), &cf)) || (v38 = cf, cf[32] = *(v31 + 32), *(v31 + 32) = 0, CFRetain(v38), OUTLINED_FUNCTION_1_145(), FigXPCServerAssociateObjectWithConnectionWithFlags()))
  {
    if (!v27)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v29)
  {
    *v29 = a12;
    a12 = 0;
  }

  if (v27)
  {
    *v27 = cf;
  }

  if (v25)
  {
    *v25 = a10;
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_12:
    if (!v27)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (*v27)
  {
    CFRetain(*v27);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_424_0();
}

void HandleTrackReaderCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef cf1, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_375_0();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_60_13(v22);
  if (v24 != FigTrackReaderGetTypeID())
  {
    goto LABEL_30;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_21;
  }

  if (!cf1)
  {
LABEL_30:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM();
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    v25 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackISOUserdata(v25, v26, v27))
    {
      goto LABEL_21;
    }
  }

  else if (FigCFEqual())
  {
    v28 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackQuickTimeUserdata(v28, v29, v30))
    {
      goto LABEL_21;
    }
  }

  else if (FigCFEqual())
  {
    v31 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackQuickTimeMetadata(v31, v32, v33))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      FigTrackReaderGetFigBaseObject(v23);
      OUTLINED_FUNCTION_118_0();
      if (CMBaseObjectCopyProperty(v37, v38, v39, v40))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v34 = OUTLINED_FUNCTION_403_0();
    if (FigMetadataCopyTrackCommonMetadata(v34, v35, v36))
    {
      goto LABEL_21;
    }
  }

  if (FigRemote_CreateBinaryPListDataFromMetadataItemArray(cf, &a12))
  {
    goto LABEL_21;
  }

LABEL_16:
  if (a12)
  {
    if (CFEqual(cf1, @"TrackFormatDescriptionArray"))
    {
      FigXPCMessageSetFormatDescriptionArray();
    }

    else
    {
      FigXPCMessageSetCFObject();
    }
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleTrackReaderCopyMetadataReadersMessage(int a1, CFTypeRef cf, const void *a3, void *a4)
{
  theArray = 0;
  v7 = CFGetTypeID(cf);
  if (v7 != FigTrackReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    v10 = FigSignalErrorAtGM();
LABEL_19:
    v17 = v10;
    goto LABEL_13;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    v17 = 4294954514;
    goto LABEL_13;
  }

  v10 = v9(FigBaseObject, @"MetadataReaders", *MEMORY[0x1E695E480], &theArray);
  if (v10)
  {
    goto LABEL_19;
  }

  if (!theArray)
  {
    goto LABEL_12;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    goto LABEL_12;
  }

  v12 = Count;
  v13 = xpc_array_create(0, 0);
  if (v12 < 1)
  {
LABEL_10:
    xpc_dictionary_set_value(a4, "ObjectIDArray", v13);
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v14);
    v15 = CFRetain(a3);
    OUTLINED_FUNCTION_0_155();
    v16 = FigXPCServerAssociateObjectWithConnection();
    if (v16)
    {
      break;
    }

    xpc_array_set_uint64(v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v12 == ++v14)
    {
      goto LABEL_10;
    }
  }

  v17 = v16;
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_13:
  FigXPCRelease();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v17;
}

void HandleTrackReaderCreateSampleCursorServiceMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void (*a10)(uint64_t, __CFString *, void, CFTypeRef *), CFTypeRef cf, uint64_t value, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  OUTLINED_FUNCTION_32_23();
  v28 = OUTLINED_FUNCTION_14_45(v26, v27);
  v29 = CFGetTypeID(v28);
  if (v29 == FigTrackReaderGetTypeID())
  {
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v30 && !v30(v21, &cf))
    {
      v31 = CFRetain(v20);
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v32)
      {
        v32(v21, 0, v31 + 9);
      }

      v33 = v31[9];
      if (v33 == 1986618469)
      {
        *(v31 + 33) = 1;
      }

      else if (v33 == 1936684398)
      {
        FigBaseObject = FigTrackReaderGetFigBaseObject(v21);
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v35(FigBaseObject, @"HasAudioSampleDependencyInformation", *MEMORY[0x1E695E480], &a10);
          v35 = a10;
        }

        *(v31 + 32) = v35 == *MEMORY[0x1E695E4D0];
      }

      OUTLINED_FUNCTION_0_155();
      if (OUTLINED_FUNCTION_18_35())
      {
        CFRelease(v31);
      }

      else
      {
        xpc_dictionary_set_uint64(v25, *MEMORY[0x1E69615A0], value);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a10)
  {
    CFRelease(a10);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleEditCursorServiceCreateCursorAtTrackTimeMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_32_23();
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  cf = 0;
  v9 = CFGetTypeID(v8);
  if (v9 != FigEditCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v11 = FigSignalErrorAtGM();
LABEL_11:
    v13 = v11;
    goto LABEL_7;
  }

  FigXPCMessageGetCMTime();
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    v13 = 4294954514;
    goto LABEL_7;
  }

  v18 = v16;
  v19 = v17;
  v11 = v10(v6, &v18, &cf);
  if (v11)
  {
    goto LABEL_11;
  }

  v12 = CFRetain(v5);
  OUTLINED_FUNCTION_0_155();
  v13 = OUTLINED_FUNCTION_18_35();
  if (v13)
  {
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], 0);
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void HandleEditCursorCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  cf = 0;
  v21 = CFGetTypeID(v20);
  if (v21 != FigEditCursorGetTypeID() || !FigXPCMessageCopyCFString())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_652();
}

void HandleEditCursorCopyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t value, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v20;
  a18 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_32_23();
  cf = 0;
  v25 = CFGetTypeID(v24);
  if (v25 == FigEditCursorGetTypeID())
  {
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v26 && !v26(v19, &cf))
    {
      v27 = CFRetain(v18);
      OUTLINED_FUNCTION_0_155();
      if (OUTLINED_FUNCTION_18_35())
      {
        if (v27)
        {
          CFRelease(v27);
        }
      }

      else
      {
        xpc_dictionary_set_uint64(v23, *MEMORY[0x1E69615A0], 0);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t HandleEditCursorGetEditSegmentMessage(const void *a1)
{
  memset(__src, 0, sizeof(__src));
  v2 = CFGetTypeID(a1);
  if (v2 == FigEditCursorGetTypeID())
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v3)
    {
      result = v3(a1, __src);
      if (!result)
      {
        memcpy(v5, __src, sizeof(v5));
        return FigXPCMessageSetCMTimeMapping();
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorServiceCreateCursorAtPresentationTimeStampMessage(int a1, const void *a2, int a3, void *a4, void *a5, int a6, int a7, int a8)
{
  v11 = OUTLINED_FUNCTION_27_24(a1, a2, a3, a4, a5, a6, a7, a8, v34, v36, v37, v38, v39, SWORD2(v39), SHIWORD(v39), cf, value, v42, v43, v44);
  if (v11 != FigSampleCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    CMTime = FigSignalErrorAtGM();
LABEL_15:
    v30 = CMTime;
    goto LABEL_9;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_15;
  }

  v13 = OUTLINED_FUNCTION_42_21();
  v22 = *(v13 + 16);
  v21 = v13 + 16;
  if (!*(v22 + 8))
  {
    v30 = 4294954514;
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_37_23(v21, v14, v15, v16, v17, v18, v19, v20, v35);
  CMTime = v24(a2, v23);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v25 = CFGetAllocator(a2);
  CMTime = OUTLINED_FUNCTION_58_9(v25, v26, v27, &cf);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v28 = FigSampleCursorServer_obtainCacheOption(a4);
  OUTLINED_FUNCTION_31_24(cf, v42, v29, v28, MEMORY[0x1E6960C98]);
  OUTLINED_FUNCTION_1_145();
  v30 = OUTLINED_FUNCTION_30_22();
  if (!v30)
  {
    cf = 0;
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedBeforeStart", v31);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedAfterEnd", v32);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v30;
}

uint64_t HandleSampleCursorServiceCreateCursorNearPresentationTimeStampMessage(int a1, const void *a2, int a3, void *a4, void *a5, int a6, int a7, int a8)
{
  v11 = OUTLINED_FUNCTION_27_24(a1, a2, a3, a4, a5, a6, a7, a8, v34, v36, v37, v38, v39, SWORD2(v39), SHIWORD(v39), cf, value, v42, v43, v44);
  if (v11 != FigSampleCursorServiceGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    CMTime = FigSignalErrorAtGM();
LABEL_15:
    v30 = CMTime;
    goto LABEL_9;
  }

  CMTime = FigXPCMessageGetCMTime();
  if (CMTime)
  {
    goto LABEL_15;
  }

  xpc_dictionary_get_BOOL(a4, "SampleCursorAllowCreationAfterPTS");
  v13 = OUTLINED_FUNCTION_42_21();
  v22 = *(v13 + 16);
  v21 = v13 + 16;
  if (!*(v22 + 16))
  {
    v30 = 4294954514;
    goto LABEL_9;
  }

  v23 = OUTLINED_FUNCTION_37_23(v21, v14, v15, v16, v17, v18, v19, v20, v35);
  CMTime = v24(a2, v23);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v25 = CFGetAllocator(a2);
  CMTime = OUTLINED_FUNCTION_58_9(v25, v26, v27, &cf);
  if (CMTime)
  {
    goto LABEL_15;
  }

  v28 = FigSampleCursorServer_obtainCacheOption(a4);
  OUTLINED_FUNCTION_31_24(cf, v42, v29, v28, MEMORY[0x1E6960C98]);
  OUTLINED_FUNCTION_1_145();
  v30 = OUTLINED_FUNCTION_30_22();
  if (!v30)
  {
    cf = 0;
    xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedBeforeStart", v31);
    OUTLINED_FUNCTION_4_36();
    xpc_dictionary_set_BOOL(a5, "SampleCursorCreatedAfterEnd", v32);
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v30;
}

void HandleSampleCursorServiceCreateCursorAtFirstSampleInDecodeOrderMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t value, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = OUTLINED_FUNCTION_14_45(v30, v28);
  v32 = CFGetTypeID(v31);
  if (v32 == FigSampleCursorServiceGetTypeID())
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v33)
    {
      if (!v33(v29, &a12))
      {
        v34 = CFGetAllocator(v29);
        if (!OUTLINED_FUNCTION_58_9(v34, v35, v36, &cf))
        {
          v37 = FigSampleCursorServer_obtainCacheOption(v27);
          OUTLINED_FUNCTION_31_24(cf, a12, v38, v37, MEMORY[0x1E6960C98]);
          OUTLINED_FUNCTION_1_145();
          if (!OUTLINED_FUNCTION_30_22())
          {
            cf = 0;
            xpc_dictionary_set_uint64(v25, *MEMORY[0x1E69615A0], value);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_424_0();
}

void HandleSampleCursorServiceCreateCursorAtLastSampleInDecodeOrderMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t value, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_427_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = OUTLINED_FUNCTION_14_45(v30, v28);
  v32 = CFGetTypeID(v31);
  if (v32 == FigSampleCursorServiceGetTypeID())
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      if (!v33(v29, &a12))
      {
        v34 = CFGetAllocator(v29);
        if (!OUTLINED_FUNCTION_58_9(v34, v35, v36, &cf))
        {
          v37 = FigSampleCursorServer_obtainCacheOption(v27);
          OUTLINED_FUNCTION_31_24(cf, a12, v38, v37, MEMORY[0x1E6960C98]);
          OUTLINED_FUNCTION_1_145();
          if (!OUTLINED_FUNCTION_30_22())
          {
            cf = 0;
            xpc_dictionary_set_uint64(v25, *MEMORY[0x1E69615A0], value);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  OUTLINED_FUNCTION_424_0();
}

void HandleMetadataReaderCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, CFTypeRef cf1, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_113_1();
  v23 = OUTLINED_FUNCTION_60_13(v22);
  if (v23 != FigMetadataReaderGetTypeID())
  {
    goto LABEL_17;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_12;
  }

  if (!cf1)
  {
LABEL_17:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
    goto LABEL_12;
  }

  FigMetadataReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    OUTLINED_FUNCTION_118_0();
    if (!v24())
    {
      v25 = CFEqual(cf1, @"containerByteStream");
      if (!v25)
      {
        goto LABEL_11;
      }

      if (FigSampleCursorServer_TranslateByteStream(v25, cf, &a10))
      {
        goto LABEL_12;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      cf = FigCFNumberCreateUInt64();
      if (cf)
      {
LABEL_11:
        FigXPCMessageSetCFObject();
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

LABEL_12:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleMetadataReaderCopyValueMessage()
{
  OUTLINED_FUNCTION_3_37();
  v16 = 0;
  cf = 0;
  v3 = OUTLINED_FUNCTION_60_13(v2);
  if (v3 != FigMetadataReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v4 = FigSignalErrorAtGM();
LABEL_27:
    MetadataPropertiesBinaryPListData = v4;
    goto LABEL_15;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    goto LABEL_27;
  }

  v4 = FigXPCMessageCopyCFObject();
  if (v4)
  {
    goto LABEL_27;
  }

  xpc_dictionary_get_BOOL(v1, "MetadataPropertiesDesired");
  xpc_dictionary_get_BOOL(v1, "MetadataValueDesired");
  xpc_dictionary_get_uint64(v1, "MetadataValueType");
  OUTLINED_FUNCTION_44_21();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    MetadataPropertiesBinaryPListData = 4294954514;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_25_26();
  v4 = v7(v6);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    MetadataPropertiesBinaryPListData = FigXPCMessageSetCFObject();
    if (MetadataPropertiesBinaryPListData)
    {
      goto LABEL_15;
    }

    v9 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = v15;
    if (!v15)
    {
      MetadataPropertiesBinaryPListData = 0;
      goto LABEL_15;
    }
  }

  MetadataPropertiesBinaryPListData = FigRemote_CreateMetadataPropertiesBinaryPListData(v9, v5, &theData);
  if (!MetadataPropertiesBinaryPListData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    xpc_dictionary_set_data(v0, "MetadataProperties", BytePtr, Length);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return MetadataPropertiesBinaryPListData;
}

void HandleMetadataReaderGetItemCountMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_3_37();
  v20 = CFGetTypeID(v19);
  if (v20 == FigMetadataReaderGetTypeID())
  {
    if (!FigXPCMessageCopyCFString() && !FigXPCMessageCopyCFObject())
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        OUTLINED_FUNCTION_118_0();
        v22 = v21();
      }

      else
      {
        v22 = 0;
      }

      xpc_dictionary_set_int64(v18, "MetadataItemCount", v22);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_652();
}

uint64_t HandleMetadataReaderCopyItemWithKeyAndIndexMessage()
{
  OUTLINED_FUNCTION_3_37();
  v16 = 0;
  cf = 0;
  v3 = OUTLINED_FUNCTION_60_13(v2);
  if (v3 != FigMetadataReaderGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v4 = FigSignalErrorAtGM();
LABEL_27:
    MetadataPropertiesBinaryPListData = v4;
    goto LABEL_15;
  }

  v4 = FigXPCMessageCopyCFString();
  if (v4)
  {
    goto LABEL_27;
  }

  v4 = FigXPCMessageCopyCFObject();
  if (v4)
  {
    goto LABEL_27;
  }

  xpc_dictionary_get_BOOL(v1, "MetadataPropertiesDesired");
  xpc_dictionary_get_BOOL(v1, "MetadataValueDesired");
  xpc_dictionary_get_int64(v1, "MetadataItemIndex");
  OUTLINED_FUNCTION_44_21();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    MetadataPropertiesBinaryPListData = 4294954514;
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_25_26();
  v4 = v7(v6);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    MetadataPropertiesBinaryPListData = FigXPCMessageSetCFObject();
    if (MetadataPropertiesBinaryPListData)
    {
      goto LABEL_15;
    }

    v9 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = v15;
    if (!v15)
    {
      MetadataPropertiesBinaryPListData = 0;
      goto LABEL_15;
    }
  }

  MetadataPropertiesBinaryPListData = FigRemote_CreateMetadataPropertiesBinaryPListData(v9, v5, &theData);
  if (!MetadataPropertiesBinaryPListData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    xpc_dictionary_set_data(v0, "MetadataProperties", BytePtr, Length);
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return MetadataPropertiesBinaryPListData;
}

uint64_t EventLinkServerMessageHandler(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3, OpaqueCMBlockBuffer *a4)
{
  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(a3, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (!DataPointer)
  {
    DataPointer = 4294949526;
    if ((dataPointerOut & 7) == 0 && lengthAtOffsetOut > 0x197)
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(a4, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (!DataPointer)
      {
        DataPointer = 4294949526;
        if ((dataPointerOut & 7) == 0 && lengthAtOffsetOut > 0x197)
        {
          bzero(dataPointerOut, 0x198uLL);
          FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection();
          return FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
        }
      }
    }
  }

  return DataPointer;
}

void HandleSampleCursorSetPropertyFromEventLink(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = CFGetTypeID(v22);
  if (v23 != FigSampleCursorGetTypeID() || (v24 = *(v21 + 336), v24 > v19) || !v24 || !FigInMemoryDeserializerCopyCFString())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_652();
}

uint64_t HandleSampleCursorGetSampleTimingInfoFromEventLink(const void *a1, uint64_t a2)
{
  memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v5)
    {
      return 4294954514;
    }

    result = v5(a1, &__dst[24]);
    if (result)
    {
      return result;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v7)
    {
      return 4294954514;
    }

    result = v7(a1, &__dst[48]);
    if (result)
    {
      return result;
    }

    v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v8)
    {
      result = v8(a1, __dst);
      if (!result)
      {
        memcpy((a2 + 336), __dst, 0x48uLL);
        return 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t HandleSampleCursorStepByDecodeTimeFromEventLink()
{
  OUTLINED_FUNCTION_15_41();
  v14 = v1;
  cf = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v3 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_35();
  v3 = FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse();
  if (v3)
  {
LABEL_17:
    v7 = v3;
    goto LABEL_11;
  }

  if (*(*(OUTLINED_FUNCTION_36_23() + 16) + 120))
  {
    v4 = OUTLINED_FUNCTION_29_23();
    v6 = v5(v4);
    v7 = v6;
    if (v6)
    {
      v8 = v6 == -12840;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_35_17(-12840, v10, v11, v12, v13, v14, cf);
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

uint64_t HandleSampleCursorStepByPresentationTimeFromEventLink()
{
  OUTLINED_FUNCTION_15_41();
  v14 = v1;
  cf = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v3 = FigSignalErrorAtGM();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_35();
  v3 = FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse();
  if (v3)
  {
LABEL_17:
    v7 = v3;
    goto LABEL_11;
  }

  if (*(*(OUTLINED_FUNCTION_36_23() + 16) + 128))
  {
    v4 = OUTLINED_FUNCTION_29_23();
    v6 = v5(v4);
    v7 = v6;
    if (v6)
    {
      v8 = v6 == -12840;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_35_17(-12840, v10, v11, v12, v13, v14, cf);
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

void HandleSampleCursorStepInDecodeOrderAndReportStepsTakenFromEventLink(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_15_41();
  a11 = v26;
  cf = v25;
  a10 = 0;
  v27 = CFGetTypeID(v25);
  if (v27 == FigSampleCursorGetTypeID())
  {
    OUTLINED_FUNCTION_19_35();
    if (!FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse())
    {
      v28 = *(v22 + 336);
      v29 = cf;
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v30)
      {
        if (!v30(v29, v28, &a10))
        {
          FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(a11, v21, cf, v20);
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  *(v20 + 336) = a10;
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

void HandleSampleCursorStepInPresentationOrderAndReportStepsTakenFromEventLink(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef a11, CFTypeRef cf, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_15_41();
  a11 = v26;
  cf = v25;
  a10 = 0;
  v27 = CFGetTypeID(v25);
  if (v27 == FigSampleCursorGetTypeID())
  {
    OUTLINED_FUNCTION_19_35();
    if (!FigSampleCursorServer_ResolveCopiedCursorObjectIDForEventLinkReplyAndCopyCursorToUse())
    {
      v28 = *(v22 + 336);
      v29 = cf;
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v30)
      {
        if (!v30(v29, v28, &a10))
        {
          FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(a11, v21, cf, v20);
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
  }

  *(v20 + 336) = a10;
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

void HandleSampleCursorCopySampleLocationFromEventLink(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, CFTypeRef cf, CFTypeRef a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_47_5();
  a18 = v22;
  a19 = v23;
  OUTLINED_FUNCTION_113_1();
  cf = 0;
  a11 = 0;
  a9 = 0uLL;
  v25 = CFGetTypeID(v24);
  if (v25 == FigSampleCursorGetTypeID())
  {
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v26)
    {
      if (!v26(v21, &a9, &a9 + 8, &a11, &cf))
      {
        OUTLINED_FUNCTION_59_13();
        *(v19 + 368) = 0;
        *(v19 + 336) = a9;
        *(v19 + 352) = 0u;
        if (!a11 || (v27 = FigSampleCursorServer_TranslateByteStream(v27, a11, (v19 + 352)), !v27))
        {
          OUTLINED_FUNCTION_56_15(v27, *(v20 + 48), cf, v28, v29, v30, (v19 + 360), (v19 + 368));
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

uint64_t HandleSampleCursorCopyChunkDetailsFromEventLink()
{
  OUTLINED_FUNCTION_113_1();
  v17 = 0;
  cf = 0;
  v16 = 0;
  v4 = CFGetTypeID(v3);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v6 = FigSignalErrorAtGM();
LABEL_7:
    v11 = v6;
    goto LABEL_9;
  }

  v14 = 0uLL;
  v13 = 0uLL;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v5)
  {
    v6 = v5(v2, &v16, &cf, &v14, &v14 + 8, &v13, &v17, &v13 + 8, &v13 + 9, &v13 + 10);
    if (!v6)
    {
      OUTLINED_FUNCTION_59_13();
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
      v10 = v13;
      *(v0 + 336) = v14;
      *(v0 + 352) = v10;
      *(v0 + 368) = v17;
      if (!v16 || (v6 = FigSampleCursorServer_TranslateByteStream(v6, v16, (v0 + 376)), !v6))
      {
        v6 = OUTLINED_FUNCTION_56_15(v6, *(v1 + 48), cf, v7, v8, v9, (v0 + 384), (v0 + 392));
      }
    }

    goto LABEL_7;
  }

  v11 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v11;
}

uint64_t HandleSampleCursorCreateSampleBufferFromEventLink(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v7 = CFGetTypeID(a1);
  if (v7 == FigSampleCursorGetTypeID())
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (!v8)
    {
      appended = 4294954514;
      goto LABEL_6;
    }

    v9 = v8(a1, a2, &v12);
    if (!v9)
    {
      OUTLINED_FUNCTION_59_13();
      *(a4 + 336) = 0;
      appended = FigInMemorySerializerAppendCMSampleBuffer();
      goto LABEL_6;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v9 = FigSignalErrorAtGM();
  }

  appended = v9;
LABEL_6:
  if (v12)
  {
    CFRelease(v12);
  }

  return appended;
}

uint64_t HandleSampleCursorGetBatchSampleTimingAndSizesFromEventLink(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = CFGetTypeID(a1);
  if (v9 != FigSampleCursorGetTypeID())
  {
    goto LABEL_39;
  }

  v10 = *(a4 + 336);
  *(a5 + 368) = 0;
  *(a5 + 336) = 0u;
  *(a5 + 352) = 0u;
  v11 = (a5 + 360);
  if (*(a4 + 344))
  {
    v12 = (a5 + 360);
  }

  else
  {
    v12 = 0;
  }

  v13 = (a5 + 352);
  if (*(a4 + 345))
  {
    v14 = (a5 + 352);
  }

  else
  {
    v14 = 0;
  }

  BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, v10, a2, 0, v12, 0, v14, 0);
  if (BatchSampleTimingAndSizes)
  {
    return BatchSampleTimingAndSizes;
  }

  v16 = *v11;
  if (*v11 <= v10 && (v17 = *v13, *v13 <= v10))
  {
    v18 = MEMORY[0x1E695E480];
    if (!v17)
    {
      MutableBytePtr = 0;
      v20 = 0;
      if (v16)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8 * v17);
    if (Mutable)
    {
      v20 = Mutable;
      CFDataSetLength(Mutable, 8 * *v13);
      MutableBytePtr = CFDataGetMutableBytePtr(v20);
      v16 = *v11;
      if (*v11)
      {
LABEL_14:
        v22 = CFDataCreateMutable(*v18, 72 * v16);
        v23 = v22;
        if (!v22)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_2();
          v27 = FigSignalErrorAtGM();
          goto LABEL_31;
        }

        CFDataSetLength(v22, 72 * *v11);
        v24 = CFDataGetMutableBytePtr(v23);
LABEL_18:
        if (*(a4 + 344))
        {
          v25 = (a5 + 360);
        }

        else
        {
          v25 = 0;
        }

        if (*(a4 + 345))
        {
          v26 = (a5 + 352);
        }

        else
        {
          v26 = 0;
        }

        v27 = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, v10, a2, (a5 + 368), v25, v24, v26, MutableBytePtr);
        if (!v27)
        {
          if (v20)
          {
            appended = FigInMemorySerializerAppendCFType();
            v29 = appended;
            if (!v23 || appended)
            {
LABEL_32:
              CFRelease(v20);
LABEL_33:
              if (v23)
              {
                CFRelease(v23);
              }

              return v29;
            }

            goto LABEL_30;
          }

          if (v23)
          {
LABEL_30:
            v27 = FigInMemorySerializerAppendCFType();
            goto LABEL_31;
          }

          return 0;
        }

LABEL_31:
        v29 = v27;
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_17:
      v24 = 0;
      v23 = 0;
      goto LABEL_18;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
  }

  else
  {
LABEL_39:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_114();
  }

  return FigSignalErrorAtGM();
}

void FigSampleCursorServer_TranslateSampleDependencyAttributesFromEventLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_427_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = OUTLINED_FUNCTION_41_21(v31);
  if (FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(v32, @"SampleDependencyAttributes", v33, &a15, &a13))
  {
    goto LABEL_8;
  }

  if (a13)
  {
    if (FigInMemorySerializerAppendCFType())
    {
      goto LABEL_8;
    }

    if (!v30)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a14 = 0;
  if (v30)
  {
LABEL_5:
    *v30 = a15;
  }

LABEL_6:
  if (v28)
  {
    *v28 = a14;
  }

LABEL_8:
  OUTLINED_FUNCTION_424_0();
}

void FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(uint64_t a1, uint64_t a2, CFTypeRef cf, uint64_t a4)
{
  v36 = 0;
  v37 = 0;
  v35 = 0uLL;
  v33 = 0;
  cfa = 0;
  v8 = CFGetTypeID(cf);
  if (v8 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
    goto LABEL_32;
  }

  bzero((a4 + 24), 0x130uLL);
  memset(__src, 0, sizeof(__src));
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v9)
  {
    if (!v9(cf, &__src[24]))
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v10)
      {
        if (!v10(cf, &__src[48]))
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v11)
          {
            if (!v11(cf, __src))
            {
              v30 = 0;
              if (*(*(a1 + 16) + 32) && *(*(CMBaseObjectGetVTable() + 16) + 64))
              {
                v12 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                if (v12)
                {
                  v12(cf, &v30 + 4, &v30 + 5, &v30, &v30 + 6);
                }

                *(a4 + 96) = v30;
              }

              memcpy((a4 + 24), __src, 0x48uLL);
              v14 = *(*(CMBaseObjectGetVTable() + 16) + 160);
              if (v14)
              {
                v14(cf, &cfa);
              }

              *(a4 + 104) = 0;
              FigSampleCursorServer_TranslateFormatDescriptionFromEventLink(a1, *(a1 + 48), cfa, a4, a2, a4 + 104, a4 + 144, v13, v28, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30), *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v32, v33, cfa);
              if (!v15)
              {
                *(a4 + 112) = 0;
                *(a4 + 120) = 0;
                *(a4 + 168) = 0;
                *(a4 + 152) = 0;
                if (*(a1 + 32))
                {
                  FigBaseObject = FigSampleCursorGetFigBaseObject(cf);
                  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v17 && (v17(FigBaseObject, @"SampleDependencyAttributes", *MEMORY[0x1E695E480], &v33), v33))
                  {
                    FigSampleCursorServer_TranslateSampleDependencyAttributesFromEventLink(a1, *(a1 + 48), v33, a4, *(a4 + 144), a2, a4 + 112, a4 + 152, v29, v30, SWORD2(v30), SBYTE6(v30), SHIBYTE(v30), *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v32, v33, cfa);
                    if (v27)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    *(a4 + 112) = -1;
                  }
                }

                if (*(*(CMBaseObjectGetVTable() + 16) + 144))
                {
                  v18 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                  if (v18)
                  {
                    v19 = v18(cf, &v35, &v35 + 8, &v37, &v36);
                    v20 = v37;
                    *(a4 + 128) = v35;
                    if (v20 && FigSampleCursorServer_TranslateByteStream(v19, v20, (a4 + 168)))
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    *(a4 + 128) = v35;
                  }

                  if (FigSampleCursorServer_TranslateDataSourceFromEventLink(a1, *(a1 + 48), v36, a4, *(a4 + 152) + *(a4 + 144), a2, (a4 + 120), (a4 + 160)))
                  {
                    goto LABEL_32;
                  }
                }

                v22 = *(MEMORY[0x1E6960C98] + 16);
                v21 = *(MEMORY[0x1E6960C98] + 32);
                *(a4 + 176) = *MEMORY[0x1E6960C98];
                *(a4 + 192) = v22;
                v23 = MEMORY[0x1E6960C70];
                v24 = *MEMORY[0x1E6960C70];
                *(a4 + 208) = v21;
                *(a4 + 224) = v24;
                v25 = *(v23 + 16);
                *(a4 + 240) = v25;
                *(a4 + 248) = v24;
                *(a4 + 264) = v25;
                *(a4 + 272) = 0;
                *(a4 + 292) = v25;
                *(a4 + 276) = v24;
                *(a4 + 316) = v25;
                *(a4 + 300) = v24;
                if (*(*(a1 + 16) + 36) != 1936684398)
                {
                  FigSampleCursorUtilityGetPresentationTimeRange(cf, (a4 + 176));
                  if (*(*(CMBaseObjectGetVTable() + 16) + 200))
                  {
                    v26 = *(*(CMBaseObjectGetVTable() + 16) + 200);
                    if (v26)
                    {
                      v26(cf, a4 + 224, a4 + 248);
                    }
                  }

                  FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(cf, 0, (a4 + 276), (a4 + 300));
                  *(a4 + 272) = 1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v33)
  {
    CFRelease(v33);
  }
}

void FigSampleCursorServer_TranslateFormatDescriptionFromEventLink(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_427_0();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = OUTLINED_FUNCTION_41_21(v31);
  if (FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(v32, @"FormatDescription", v33, &a15, &a13))
  {
    goto LABEL_9;
  }

  if (!a15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
    goto LABEL_9;
  }

  if (a13)
  {
    if (FigInMemorySerializerAppendCMFormatDescription())
    {
      goto LABEL_9;
    }

    if (!v30)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  a14 = 0;
  if (v30)
  {
LABEL_6:
    *v30 = a15;
  }

LABEL_7:
  if (v28)
  {
    *v28 = a14;
  }

LABEL_9:
  OUTLINED_FUNCTION_424_0();
}

uint64_t FigServedTrackReaderStateCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedTrackReaderStateCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedTrackReaderStateCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedSampleCursorStateCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedSampleCursorStateCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedSampleCursorStateCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigServedSampleCursorStateCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleCursorServer_SetSampleCursorProperties_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM();
}

uint64_t CreateServedFormatReaderState_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t CreateServedFormatReaderState_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCFormatReaderServerCopyFormatReaderForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFormatReaderServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_2()
{
  OUTLINED_FUNCTION_375_0();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v2 = FigXPCServerStartWithNewXPCEndpoint();
  if (!v2)
  {
    v2 = FigXPCServerCopyXPCEndpoint();
  }

  v3 = v2;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  *v0 = v3;
}

uint64_t FigXPCFormatReaderServerCopyTrackReaderForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigXPCFormatReaderServerCopySampleCursorForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleEditCursorStepMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorCopyPropertyFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorCopyPropertyFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorCopyPropertyFromEventLink_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorGetSampleSyncInfoFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigSampleCursorServer_TranslateDataSourceFromEventLink_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateEditArrayFromData(const UInt8 *__src, unint64_t a2, const __CFAllocator *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  v5 = __src;
  if (__src && (v6 = a2) != 0)
  {
    v7 = a4;
    if (a4 >= 1)
    {
      v9 = (a5 + 104);
      do
      {
        memset(v19, 0, sizeof(v19));
        if (v6 <= 0x67 || (memcpy(v19, v5, sizeof(v19)), v10 = *(v5 + 8), *(v9 - 14) = *(v5 + 3), *(v9 - 5) = v10, *(v9 - 2) = *(&v19[4] + 8), *(v9 - 2) = *(&v19[5] + 1), *(v9 - 11) = *&v19[1], *(v9 - 26) = v19[0], *(v9 - 5) = *(&v19[1] + 8), *(v9 - 8) = *(&v19[2] + 1), v11 = *(v5 + 24), v12 = v6 - 100, v13 = (-v11 & 3) + v11, v6 - 100 < v13 + 4))
        {
          OUTLINED_FUNCTION_376();
          OUTLINED_FUNCTION_1_19();
          return FigSignalErrorAtGM();
        }

        v14 = v5 + 100;
        if (v11)
        {
          v15 = CFStringCreateWithBytes(a3, v14, v11, 0x8000100u, 0);
          if (!v15 || (v16 = v15, *(v9 - 1) = CFURLCreateWithString(a3, v15, 0), CFRelease(v16), !*(v9 - 1)))
          {
            OUTLINED_FUNCTION_376();
            OUTLINED_FUNCTION_2_139();
            return FigSignalErrorAtGM();
          }

          v14 += v13;
          v12 -= v13;
        }

        else
        {
          *(v9 - 1) = 0;
        }

        v17 = *v14;
        v5 = v14 + 4;
        *v9 = v17;
        v9 += 27;
        v6 = v12 - 4;
        --v7;
      }

      while (v7);
      if (v12 != 4)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_21:
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_1_19();
  }

  else
  {
    OUTLINED_FUNCTION_376();
    OUTLINED_FUNCTION_1_19();
  }

  return FigSignalErrorAtGM();
}

uint64_t FigRemote_CreateEditArrayData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateEditArrayData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRemote_CreateEditArrayData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_139();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_19();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}