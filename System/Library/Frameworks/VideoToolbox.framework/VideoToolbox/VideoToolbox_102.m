uint64_t vtCompressionSessionDispatchQueuesUpdatePriorityAndClientPID(uint64_t a1)
{
  if (!*(a1 + 296))
  {
    goto LABEL_21;
  }

  if (!*(a1 + 572))
  {
    OUTLINED_FUNCTION_9_0();
    if (!v2)
    {
      OUTLINED_FUNCTION_4_0();
    }
  }

  result = FigDispatchQueueSetPriorityAndClientPID();
  if (!result)
  {
LABEL_21:
    if (!*(a1 + 328))
    {
      goto LABEL_11;
    }

    if (!*(a1 + 572))
    {
      OUTLINED_FUNCTION_9_0();
      if (!v2)
      {
        OUTLINED_FUNCTION_4_0();
      }
    }

    result = FigDispatchQueueSetPriorityAndClientPID();
    if (!result)
    {
LABEL_11:
      result = *(a1 + 368);
      if (result)
      {
        if (!*(a1 + 572))
        {
          OUTLINED_FUNCTION_9_0();
          if (!v2)
          {
            OUTLINED_FUNCTION_4_0();
          }
        }

        return FigDispatchQueueSetPriorityAndClientPID();
      }
    }
  }

  return result;
}

uint64_t vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(uint64_t a1, __CVBuffer *a2, CMTaggedBufferGroupRef group)
{
  CVPixelBufferAtIndex = a2;
  cf = 0;
  if (!a2 && group)
  {
    if (CMTaggedBufferGroupGetCount(group) < 1)
    {
      CVPixelBufferAtIndex = 0;
      goto LABEL_12;
    }

    CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
  }

  if (CVPixelBufferAtIndex)
  {
    v5 = *(a1 + 64) == 0;
    if (*(a1 + 72) && !CVPixelBufferIsCompatibleWithAttributes())
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
LABEL_13:
  if (*(a1 + 524) == *(a1 + 520))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_104;
  }

LABEL_15:
  v9 = *(a1 + 64);
  v10 = MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E69660B8];
  v12 = MEMORY[0x1E6966208];
  if (!v9 || (v74 = CFRetain(v9)) == 0)
  {
    if (CVPixelBufferAtIndex)
    {
      Mutable = *(a1 + 72);
      if (v5)
      {
        if (Mutable)
        {
          CFRelease(*(a1 + 72));
          *(a1 + 72) = 0;
        }
      }

      else if (Mutable)
      {
LABEL_29:
        v74 = CFRetain(Mutable);
        goto LABEL_31;
      }

      v15 = *v10;
      Mutable = CFDictionaryCreateMutable(*v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = CVPixelBufferGetPixelFormatType(CVPixelBufferAtIndex);
      v16 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
      OUTLINED_FUNCTION_18_0(v16, *MEMORY[0x1E6966130]);
      CFRelease(v16);
      Height = CVPixelBufferGetHeight(CVPixelBufferAtIndex);
      v17 = CFNumberCreate(v15, kCFNumberSInt32Type, &Height);
      OUTLINED_FUNCTION_18_0(v17, *v11);
      CFRelease(v17);
      Width = CVPixelBufferGetWidth(CVPixelBufferAtIndex);
      v18 = CFNumberCreate(v15, kCFNumberSInt32Type, &Width);
      OUTLINED_FUNCTION_18_0(v18, *v12);
      CFRelease(v18);
      if (CVPixelBufferGetIOSurface(CVPixelBufferAtIndex))
      {
        v19 = CFDictionaryCreate(v15, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        OUTLINED_FUNCTION_18_0(v19, *MEMORY[0x1E69660D8]);
        CFRelease(v19);
        v20 = CVPixelBufferCopyCreationAttributes(CVPixelBufferAtIndex);
        v21 = *MEMORY[0x1E69660F0];
        if (CFDictionaryGetValue(v20, *MEMORY[0x1E69660F0]))
        {
          CFDictionarySetValue(Mutable, v21, *MEMORY[0x1E695E4D0]);
        }

        CFRelease(v20);
      }

      *(a1 + 72) = Mutable;
      if (Mutable)
      {
        goto LABEL_29;
      }
    }

    v74 = 0;
    goto LABEL_31;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 72) = 0;
  }

LABEL_31:
  v22 = *v10;
  v23 = VTCreatePixelBufferPoolAttributesWithName(*v10, *(a1 + 576), @"encode", &cf);
  if (v23)
  {
    v6 = v23;
    v8 = 0;
    goto LABEL_114;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v8 = MutableCopy;
  if (*(a1 + 176) || *(a1 + 184) || *(a1 + 200) || *(a1 + 240) || *(a1 + 248))
  {
    v25 = *MEMORY[0x1E6965C70];
    CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6965C70]);
    v26 = FigCFDictionaryCreateMutableCopy();
    if (!vtCompressionSessionIsIPT(a1))
    {
      v27 = *(a1 + 176);
      if (v27)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965D88], v27);
      }

      v28 = *(a1 + 184);
      if (v28)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965F30], v28);
      }

      v29 = *(a1 + 200);
      if (v29)
      {
        CFDictionarySetValue(v26, *MEMORY[0x1E6965F98], v29);
      }
    }

    v30 = *(a1 + 240);
    if (v30)
    {
      CFDictionarySetValue(v26, *MEMORY[0x1E6965D00], v30);
    }

    v31 = *(a1 + 248);
    if (v31)
    {
      CFDictionarySetValue(v26, *MEMORY[0x1E6965CF0], v31);
    }

    CFDictionarySetValue(v8, v25, v26);
    if (v26)
    {
      CFRelease(v26);
    }
  }

  allocator = v22;
  valuePtr = 0;
  Height = 0;
  Count = FigCFDictionaryGetCount();
  if (CVPixelBufferAtIndex)
  {
    if (Count)
    {
      v33 = *MEMORY[0x1E6966130];
      Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
      if (Value)
      {
        v35 = Value;
        v36 = CFGetTypeID(Value);
        if (v36 == CFArrayGetTypeID())
        {
          v37 = CFDictionaryGetValue(v8, *v12);
          v38 = CFDictionaryGetValue(v8, *v11);
          if (v37)
          {
            v39 = v38;
            v40 = CFGetTypeID(v37);
            v41 = 0;
            if (v40 != CFNumberGetTypeID() || !v39)
            {
LABEL_60:
              key = v33;
              v44 = 1;
              if (CVPixelBufferGetWidth(CVPixelBufferAtIndex) == v41)
              {
                v43 = Height;
                if (CVPixelBufferGetHeight(CVPixelBufferAtIndex) == v43)
                {
                  v44 = 0;
                }
              }

              PixelFormatType = CVPixelBufferGetPixelFormatType(CVPixelBufferAtIndex);
              v46 = CFArrayGetCount(v35);
              v47 = CFArrayCreateMutable(allocator, v46, MEMORY[0x1E695E9C0]);
              if (v47)
              {
                v48 = v47;
                if (CFArrayGetCount(v35) >= 1)
                {
                  v49 = 0;
                  v50 = 0;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v35, v49);
                    if (ValueAtIndex)
                    {
                      v52 = ValueAtIndex;
                      v53 = CFGetTypeID(ValueAtIndex);
                      if (v53 == CFNumberGetTypeID())
                      {
                        Width = 0;
                        CFNumberGetValue(v52, kCFNumberSInt32Type, &Width);
                        if (VTPixelTransferSessionCanTransfer(PixelFormatType, Width, v44))
                        {
                          CFArrayInsertValueAtIndex(v48, v50++, v52);
                        }

                        else
                        {
                          CFArrayAppendValue(v48, v52);
                        }
                      }
                    }

                    ++v49;
                  }

                  while (CFArrayGetCount(v35) > v49);
                }

                CFDictionarySetValue(v8, key, v48);
                CFRelease(v48);
              }

              else
              {
                fig_log_get_emitter();
                v72 = FigSignalErrorAtGM();
                if (v72)
                {
                  v6 = v72;
                  goto LABEL_114;
                }
              }

              goto LABEL_74;
            }

            v42 = CFGetTypeID(v39);
            if (v42 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v37, kCFNumberIntType, &valuePtr);
              CFNumberGetValue(v39, kCFNumberIntType, &Height);
              v41 = valuePtr;
              goto LABEL_60;
            }
          }

          v41 = 0;
          goto LABEL_60;
        }
      }
    }
  }

LABEL_74:
  v54 = *(a1 + 168);
  if (!v54)
  {
    goto LABEL_95;
  }

  if (!CFDictionaryGetCount(v8))
  {
    goto LABEL_95;
  }

  v55 = *MEMORY[0x1E6966130];
  v56 = CFDictionaryGetValue(v8, *MEMORY[0x1E6966130]);
  if (!v56)
  {
    goto LABEL_95;
  }

  v57 = v56;
  v58 = CFGetTypeID(v56);
  if (v58 == CFArrayGetTypeID())
  {
    v59 = CFArrayGetCount(v57);
    v60 = CFArrayCreateMutableCopy(allocator, v59, v57);
    if (!v60)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v61 = CFGetTypeID(v57);
    if (v61 != CFNumberGetTypeID())
    {
      goto LABEL_95;
    }

    v60 = CFArrayCreateMutable(allocator, 1, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v60, v57);
    if (!v60)
    {
      goto LABEL_95;
    }
  }

  if (CFArrayGetCount(v60))
  {
    if (CFArrayGetCount(v60) >= 1)
    {
      v62 = 0;
      do
      {
        v63 = CFArrayGetValueAtIndex(v60, v62);
        if (v63 && (v64 = v63, v65 = CFGetTypeID(v63), v65 == CFNumberGetTypeID()) && (valuePtr = 0, CFNumberGetValue(v64, kCFNumberSInt32Type, &valuePtr), !vtCompressionSessionDoesPixelFormatHaveDesiredColorRange(valuePtr, v54)))
        {
          CFArrayRemoveValueAtIndex(v60, v62);
        }

        else
        {
          ++v62;
        }
      }

      while (v62 < CFArrayGetCount(v60));
    }

    if (CFArrayGetCount(v60))
    {
      CFDictionarySetValue(v8, v55, v60);
      goto LABEL_94;
    }

    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    CFRelease(v60);
    if (!v6)
    {
      goto LABEL_95;
    }

LABEL_114:
    v7 = v74;
    goto LABEL_104;
  }

LABEL_94:
  CFRelease(v60);
LABEL_95:
  v66 = CFGetAllocator(a1);
  v67 = *(a1 + 848);
  if (v67 != 1)
  {
    LOBYTE(v67) = *(a1 + 849) == 0;
  }

  v7 = v74;
  v68 = (a1 + 536);
  v69 = VTBuildPixelBufferPools2(v66, v74, v8, cf, *(a1 + 40), 0, 0, 0, 0, v67, (a1 + 536), (a1 + 528), 0, 0);
  if (v69)
  {
    v6 = v69;
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 524) = *(a1 + 520);
    if (*(a1 + 528))
    {
      v6 = 0;
    }

    else
    {
      v70 = *v68;
      if (*v68)
      {
        v70 = CFRetain(v70);
      }

      v6 = 0;
      *(a1 + 528) = v70;
    }
  }

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

void vtCompressionSessionSetOneProperty_0(void *value, const __CFNumber *a2, uint64_t a3)
{
  VTCompressionSessionSetProperty(*a3, value, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = v4;
  }
}

void VTEncoderSessionSetTimeRangesForNextPass(uint64_t *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = *MEMORY[0x1E6960C98];
  v34 = *(MEMORY[0x1E6960C98] + 8);
  if (!a1)
  {
    goto LABEL_34;
  }

  if (a1[5])
  {
    OUTLINED_FUNCTION_16_0();

    VTParavirtualizationHostEncoderSessionSetTimeRangesForNextPass(v5, v6, v7);
    return;
  }

  v9 = *a1;
  if (*a1 && *(v9 + 16) != 2 && a2 > 0)
  {
    v10 = *(MEMORY[0x1E6960C98] + 12);
    v12 = *(MEMORY[0x1E6960C98] + 16);
    v11 = *(MEMORY[0x1E6960C98] + 24);
    v13 = *(MEMORY[0x1E6960C98] + 32);
    v14 = *(MEMORY[0x1E6960C98] + 36);
    v15 = *(MEMORY[0x1E6960C98] + 40);
    v16 = *(v9 + 840);
    if (v16)
    {
      *(v9 + 832) = 0;
      free(v16);
      *(v9 + 840) = 0;
    }

    __src = a3;
    v27 = v9;
    v17 = v15 == 0;
    v18 = a3 + 5;
    v19 = a2;
    do
    {
      v20 = v10;
      v31 = *(v18 - 5);
      v10 = *(v18 - 7);
      v32 = *(v18 - 8);
      if (v10 & 1) == 0 || (v21 = v14, v14 = *(v18 - 1), (v14 & 1) == 0) || *v18 || (v22 = v11, v11 = *(v18 - 2), v11 < 0) || (v10 & 0x1D) != 1 || *(v18 - 3) || (*(v18 - 1) & 0x1D) != 1 || (v23 = *(v18 - 2), (v20) && (v21 & v17 & 1) != 0 && (v22 & 0x8000000000000000) == 0 && (memset(&v30, 0, sizeof(v30)), range.start.value = v33, range.start.timescale = v34, range.start.flags = v20, range.start.epoch = v12, range.duration.value = v22, range.duration.timescale = v13, range.duration.flags = v21, range.duration.epoch = 0, CMTimeRangeGetEnd(&v30, &range), range.start = v30, time2.value = v31, time2.timescale = v32, time2.flags = v10, time2.epoch = 0, CMTimeCompare(&range.start, &time2) > 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_0();
        FigSignalErrorAtGM();
        goto LABEL_30;
      }

      v12 = 0;
      v18 += 6;
      v33 = v31;
      v34 = v32;
      v17 = 1;
      v13 = v23;
      --v19;
    }

    while (v19);
    *(v27 + 832) = a2;
    if (a2 < 0x555555555555556)
    {
      v24 = malloc_type_malloc(48 * a2, 0x1000040EED21634uLL);
      *(v27 + 840) = v24;
      if (v24)
      {
        memcpy(v24, __src, 48 * *(v27 + 832));
      }
    }

    else
    {
      *(v27 + 840) = 0;
    }

LABEL_30:
    OUTLINED_FUNCTION_16_0();
  }

  else
  {
LABEL_34:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_16_0();

    FigSignalErrorAtGM();
  }
}

uint64_t VTDistributedCompressionGetSegmentsToReencode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  cf = 0;
  if (a3 <= 0 || !a4 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    v9 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  v9 = VTCreateVideoEncoderInstanceFromEncoderID(a1, *MEMORY[0x1E695E480], &cf);
  if (v9)
  {
LABEL_8:
    v13 = v9;
    goto LABEL_10;
  }

  v10 = cf;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (*v11 >= 2uLL)
  {
    v12 = v11[16];
    if (v12)
    {
      v9 = v12(v10, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  v13 = 4294954514;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t vtCompressionSessionDoesPixelFormatHaveDesiredColorRange(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!DescriptionWithPixelFormatType || !CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E6966248]))
  {
    return 1;
  }

  return FigCFEqual();
}

void VTCompressionSessionInvalidate_cold_1(_DWORD *a1, uint64_t a2)
{
  *a1 = 1;
  v4 = *(a2 + 864);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 864) = 0;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    VTCompressionSessionRemote_Invalidate(v5);
  }

  else
  {
    if (*(a2 + 850))
    {
      v6 = *(a2 + 856);
      if (v6)
      {
        VTRateControlSessionCompleteFrames(v6);
      }
    }

    v7 = *(a2 + 280);
    if (v7)
    {
      dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (*(a2 + 472))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v8 = *(a2 + 472);
      if (v8)
      {
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }
    }

    VTPixelTransferSessionInvalidate(*(a2 + 544));
    VTPixelTransferSessionInvalidate(*(a2 + 408));
    v10 = *(a2 + 856);
    if (v10)
    {
      CFRelease(v10);
      *(a2 + 856) = 0;
    }

    if (*(a2 + 576))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        if (*(a2 + 32))
        {
          FigVideoFormatDescriptionContainsHDR();
        }

        MEMORY[0x193AE2670]();
        FigHostTimeToNanoseconds();
        if (*(a2 + 872))
        {
          FigCFDictionarySetValue();
        }

        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (*(a2 + 888))
        {
          FigCFDictionarySetInt32();
        }

        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigLogPowerEvent();
        CFRelease(v12);
      }
    }
  }

  *a1 = 2;
}

uint64_t VTCompressionSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCreateWithOptions_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTCompressionSessionCreateWithOptions_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtRateControlSessionBeforeEncodeCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionCompleteFramesCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionCompressionWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionCompressionWork_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtCompressionSessionCompressionWork_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionCompressionWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionCompressionWork_cold_5(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  FigSimpleMutexUnlock();
  return v3 == 0;
}

uint64_t vtCompressionSessionCompressionWork_cold_6(uint64_t a1, CFTypeRef cf, int a3, CFTypeRef a4)
{
  v6 = *(a1 + 8);
  if (v6 != cf)
  {
    *(a1 + 8) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = *(a1 + 16);
  if (v7 != a4)
  {
    *(a1 + 16) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t vtCompressionSessionCompressionWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompressionWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vtCompressionSessionCompressionWork_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM();
  __break(1u);
}

void vtCompressionSessionCompressionWork_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM();
  __break(1u);
}

uint64_t VTCompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtRateControlReactionObserverCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtRateControlReactionObserverCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionUpdateAmbientViewingEnvironment_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t VTCompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_1(uint64_t a1, _DWORD *a2)
{
  FigSimpleMutexLock();
  *a2 = vtCompressionSessionEnsurePixelBufferPoolsAreUpToDate(a1, 0, 0);

  return FigSimpleMutexUnlock();
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetPixelBufferPool_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionPrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionEncodeFrameCommon_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeFrameWithOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEncodeMultiImageFrameWithOutputHandler_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCompleteFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionCompleteFrames_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineCreateContext_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionCompleteFramesWork_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTEncoderSessionSetPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionSetPixelBufferAttributes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionAddDolbyVisionVideoFormatDescriptionExtensions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoSecurityInfoExtension_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoSecurityInfoExtension_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtCompressionSessionSetHDRFormatAndInitializeMetadataGeneration_cold_1(_BYTE *a1, uint64_t a2, void *a3, __CFDictionary **a4)
{
  v7 = *MEMORY[0x1E695E480];
  *a3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(v7, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a4 = Mutable;
  v9 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"HDR10Plus", *MEMORY[0x1E695E4D0]);
  if (*a1)
  {
    CFDictionarySetValue(Mutable, @"PreserveSDRRange", v9);
  }

  return VTHDRMetadataGenerationSessionCreate(v7, 4, Mutable, (a2 + 656)) == 0;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateVideoFormatDescriptionFromHEVCParameterSets_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateVideoFomatDescriptionFromHEVCParameterSets_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateCMBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTEncoderSessionCreateCMBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionBeginPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionEndPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionGetTimeRangesForNextPass_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDistributedCompressionGetSegmentRanges_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineContextHandleError_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionPipelineContextHandleError_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionIOSurfaceSynchronizationWork_cold_6(uint64_t *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_0();
  v2 = FigSignalErrorAtGM();
  if (!v2)
  {
    return 1;
  }

  vtCompressionSessionPipelineContextHandleError(a1, v2);
  return 0;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPixelTransferSessionWork_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionColorSyncWork_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionPipelineContextPerformNextWork_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtcss_initializeClient(uint64_t a1, CFTypeRef cf, const void *a3, const void *a4, const void *a5, const void *a6, int a7, uint64_t a8, int a9, CFTypeRef cfa, uint64_t a11, uint64_t a12, void *a13)
{
  v21 = cfa;
  *(a1 + 88) = a9;
  if (cfa)
  {
    v21 = CFRetain(cfa);
  }

  *(a1 + 96) = v21;
  if (cf)
  {
    v22 = CFRetain(cf);
  }

  else
  {
    v22 = 0;
  }

  *(a1 + 24) = v22;
  if (a3)
  {
    v23 = CFRetain(a3);
  }

  else
  {
    v23 = 0;
  }

  *(a1 + 32) = v23;
  if (a4)
  {
    v24 = CFRetain(a4);
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 120) = v24;
  if (a5)
  {
    v25 = CFRetain(a5);
  }

  else
  {
    v25 = 0;
  }

  *(a1 + 40) = v25;
  if (a6)
  {
    v26 = CFRetain(a6);
  }

  else
  {
    v26 = 0;
  }

  *(a1 + 136) = 0;
  *(a1 + 48) = v26;
  *(a1 + 64) = a7;
  *(a1 + 72) = a8;
  *(a1 + 144) = a1 + 136;
  *(a1 + 160) = dispatch_queue_create("CompressionSessionQueuedFrames", 0);
  *(a1 + 184) = dispatch_queue_create("CompressionSessionAsyncMessageHandlerQueue", 0);
  *(a1 + 192) = dispatch_group_create();
  *(a1 + 168) = 1;
  *(a1 + 176) = FigSemaphoreCreate();
  if (*(a1 + 224) || (v27 = FigOSTransactionCreate(), (*(a1 + 224) = v27) != 0))
  {
    v28 = FigRPCCreateClientConnection();
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = FigRPCGetConnectionInfo();
      if (!v29)
      {
        *a13 = 0;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v29 = FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  return v29;
}

uint64_t vtcss_findClientFromCommandPort(uint64_t a1, uint64_t a2)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (a2)
    {
      if (!result)
      {
        if (*a2)
        {
          if (*(*a2 + 201))
          {
            return 4294954393;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t VTCompressionSessionRemoteServer_PrepareToEncodeFrames(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v15)
    {
      OUTLINED_FUNCTION_0_3(v15);
      OUTLINED_FUNCTION_24_0();
      v11 = __VTCompressionSessionRemoteServer_PrepareToEncodeFrames_block_invoke;
      v12 = &__block_descriptor_tmp_0;
      v13 = v3;
      v14 = v2;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM();
  }

  if (v1 && v15)
  {
    v7 = OUTLINED_FUNCTION_13_1(v15);
    VTCompressionSessionRemoteCallbackClient_PrepareToEncodeFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EncodeFrame(unsigned int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, uint64_t a18, int a19, int a20, uint64_t a21, int a22, uint64_t a23, int a24, int a25, uint64_t a26, int a27, uint64_t a28, int a29, __int128 *a30, __int128 *a31, uint64_t a32, int a33, uint64_t a34)
{
  v139 = *MEMORY[0x1E69E9840];
  v130 = 0;
  v131 = &v130;
  v132 = 0x2000000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2000000000;
  v129 = a4;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x2000000000;
  v125[3] = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0xE000000000;
  bzero(&v100, 0xC8uLL);
  v100 = a5;
  v101 = a6;
  v102 = a7;
  v103 = a8;
  v104 = a9;
  v105 = a10;
  v106 = a11;
  v107 = a12;
  v108 = a13;
  v109 = a14;
  v110 = a15;
  v111 = a16;
  v112 = a17;
  v113 = a18;
  v114 = a19;
  v115 = a20;
  v116 = a21;
  v117 = a22;
  v118 = a23;
  v119 = a24;
  v120 = a25;
  v121 = a26;
  v122 = a27;
  v123 = a28;
  v124 = a29;
  v86 = 0;
  v87 = &v86;
  v88 = 0x9000000000;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2000000000;
  v81[3] = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 0x40000000;
  v69 = __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke;
  v70 = &unk_1E72C7BC0;
  v71 = &v126;
  v72 = v125;
  v73 = v81;
  v74 = &v97;
  v75 = &v86;
  v76 = &v82;
  v77 = a3;
  v79 = a2;
  v80 = a33;
  v78 = a32;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v133);
  if (!ClientFromCommandPort)
  {
    v35 = v131[3];
    if (!v35)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v55 = FigSignalErrorAtGM();
      Mutable = 0;
      v39 = 0;
      if (!v55)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    v36 = *(v35 + 24);
    if (!(a2 | *(v127 + 6)))
    {
LABEL_6:
      if (*(v98 + 6) || *(v98 + 10))
      {
        v37 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v39 = CFArrayCreateMutable(v37, 5, MEMORY[0x1E695E9C0]);
          if (v39)
          {
            v40 = 0;
            v41 = 5;
            while (1)
            {
              v42 = v98;
              if (LODWORD(v98[v40 + 3]) | LODWORD(v98[v40 + 5]))
              {
                PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
                if (PixelBufferFromSerializedAtomData)
                {
                  goto LABEL_33;
                }

                LODWORD(v98[v40 + 5]) = 0;
                v42 = v98;
              }

              v44 = &v42[v40];
              v45 = v44[6];
              if (v45)
              {
                v46 = *(v44 + 14);
                if (v46)
                {
                  v47 = CFDataCreate(v37, v45, v46);
                  v87[v41 - 2] = v47;
                  v48 = v87[v41 - 2];
                  if (!v48)
                  {
                    break;
                  }

                  PixelBufferFromSerializedAtomData = MEMORY[0x193AE2F20](v48, v37, &v87[v41 - 1]);
                  if (PixelBufferFromSerializedAtomData)
                  {
                    goto LABEL_33;
                  }
                }
              }

              v49 = v87[v41 - 1];
              if (v49 && v87[v41])
              {
                CFArrayAppendValue(Mutable, v49);
                CFArrayAppendValue(v39, v87[v41]);
              }

              v41 += 3;
              v40 += 5;
              if (v41 == 20)
              {
                PixelBufferFromSerializedAtomData = MEMORY[0x193AE2F70](v37, Mutable, v39, v83 + 3);
                if (PixelBufferFromSerializedAtomData)
                {
                  goto LABEL_33;
                }

                if (!a33)
                {
                  goto LABEL_25;
                }

                goto LABEL_24;
              }
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v55 = FigSignalErrorAtGM();
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v55 = FigSignalErrorAtGM();
          v39 = 0;
        }

        if (!v55)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      Mutable = 0;
      v39 = 0;
      if (a33)
      {
LABEL_24:
        PixelBufferFromSerializedAtomData = FigCreateCFPropertyListFromData();
        if (PixelBufferFromSerializedAtomData)
        {
LABEL_33:
          v55 = PixelBufferFromSerializedAtomData;
          goto LABEL_36;
        }
      }

LABEL_25:
      v50 = v131[3];
      v52 = *(v50 + 184);
      v51 = *(v50 + 192);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTCompressionSessionRemoteServer_EncodeFrame_block_invoke_2;
      block[3] = &unk_1E72C7BE8;
      v135 = *a30;
      v53 = *(a30 + 2);
      v138 = *(a31 + 2);
      v137 = *a31;
      block[6] = &v82;
      block[7] = v81;
      v136 = v53;
      block[9] = v36;
      block[10] = a34;
      block[8] = v125;
      block[4] = v68;
      block[5] = &v130;
      dispatch_group_async(v51, v52, block);
      goto LABEL_26;
    }

    ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!ClientFromCommandPort)
    {
      *(v127 + 6) = 0;
      goto LABEL_6;
    }
  }

  v55 = ClientFromCommandPort;
  v39 = 0;
  Mutable = 0;
LABEL_36:
  v69(v68);
  v56 = v131[3];
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_8_1(v56);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v57, v58, v59, v60, v55);
  }

LABEL_26:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(v125, 8);
  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);
  return 0;
}

void VTCompressionSessionRemoteServer_DequeueNextPendingEncodedFrame(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, void *a16, CFDataRef theData, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t block, uint64_t a24, uint64_t (*a25)(uint64_t result), void *a26, uint64_t *a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, char a33, uint64_t a34, uint64_t *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, _DWORD *a51, int *a52, void *a53, _DWORD *a54, uint64_t a55, _DWORD *a56)
{
  OUTLINED_FUNCTION_26_0();
  a49 = v56;
  a50 = v57;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = a52;
  v68 = a53;
  v70 = a51;
  a22 = 0;
  a21 = 0;
  a18 = 0;
  a19 = 0;
  a16 = 0;
  theData = 0;
  *v66 = 0;
  v96 = v71;
  v97 = v72;
  *v71 = 0;
  *v72 = 0;
  *v64 = 0;
  *v62 = 0;
  *v60 = 0;
  *v58 = 0;
  *v70 = 0;
  *v69 = 1;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(v73, &a22);
  if (ClientFromCommandPort != -12903 || a22 == 0)
  {
    v76 = ClientFromCommandPort;
    if (ClientFromCommandPort)
    {
      goto LABEL_34;
    }
  }

  if (!a22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v76 = FigSignalErrorAtGM();
LABEL_34:
    v78 = 0;
LABEL_35:
    LODWORD(Length) = 0;
    goto LABEL_24;
  }

  a34 = 0;
  a35 = &a34;
  a36 = 0x2000000000;
  a37 = 0;
  a30 = 0;
  a31 = &a30;
  a32 = 0x2000000000;
  a33 = 0;
  v77 = *(a22 + 160);
  block = MEMORY[0x1E69E9820];
  a24 = 0x40000000;
  a25 = __vtcss_dequeueFrame_block_invoke;
  a26 = &unk_1E72C7DE8;
  a28 = &a30;
  a29 = a22;
  a27 = &a34;
  dispatch_sync(v77, &block);
  v98 = *(a31 + 24);
  v78 = a35[3];
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  if (!v78)
  {
    LODWORD(Length) = 0;
    *v67 = 0;
LABEL_23:
    v76 = 0;
    *v70 = v98;
    goto LABEL_24;
  }

  if (!*(v78 + 56))
  {
    if (!*(v78 + 64))
    {
      goto LABEL_18;
    }

    SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
    if (!SerializedAtomDataForPixelBuffer)
    {
      v80 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v76 = SerializedAtomDataForPixelBuffer;
    LODWORD(Length) = 0;
    *(a22 + 80) = 0;
    goto LABEL_24;
  }

  SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
  if (SerializedAtomDataForPixelBuffer)
  {
    goto LABEL_15;
  }

  v80 = 1;
LABEL_17:
  *(a22 + 80) = (a18 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  *v69 = v80;
LABEL_18:
  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  if (CFDataFromCFPropertyList)
  {
    v76 = CFDataFromCFPropertyList;
    goto LABEL_35;
  }

  Length = CFDataGetLength(theData);
  v83 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &a16, Length);
  if (!v83)
  {
    v95 = v70;
    v84 = v68;
    v85 = v63;
    v86 = v61;
    v87 = v59;
    v88 = a55;
    v89 = a16;
    BytePtr = CFDataGetBytePtr(theData);
    memcpy(v89, BytePtr, Length);
    *v67 = 1;
    *v96 = *(v78 + 8);
    *v97 = *(v78 + 16);
    *v65 = *(v78 + 20);
    if (v88)
    {
      v91 = *(v78 + 32);
      *(v88 + 16) = *(v78 + 48);
      *v88 = v91;
    }

    v59 = v87;
    v61 = v86;
    v63 = v85;
    v68 = v84;
    v70 = v95;
    goto LABEL_23;
  }

  v76 = v83;
LABEL_24:
  v92 = a54;
  vtcss_freeQueuedFrame(v78);
  if (theData)
  {
    CFRelease(theData);
  }

  v93 = a56;
  *v63 = a21;
  v94 = a18;
  *v61 = a19;
  *v59 = v94;
  if (v68)
  {
    *v68 = a16;
  }

  if (v92)
  {
    *v92 = Length;
  }

  if (v93)
  {
    *v93 = v76;
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t VTCompressionSessionRemoteServer_CopySupportedPropertyDictionary(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, theData, supportedPropertyDictionaryOut, v39);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_23;
  }

  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    CFDataFromCFPropertyList = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  v17 = v39[3];
  if (v17)
  {
    v18 = VTCompressionSessionCopySupportedPropertyDictionary(v17, &supportedPropertyDictionaryOut);
  }

  else
  {
    v19 = v39[4];
    if (v19)
    {
      v18 = VTTileCompressionSessionCopySupportedPropertyDictionary(v19, &supportedPropertyDictionaryOut);
    }

    else
    {
      v20 = v39[5];
      if (v20 || (v20 = v39[6]) != 0)
      {
        v18 = VTSessionCopySupportedPropertyDictionary(v20, &supportedPropertyDictionaryOut);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        v18 = FigSignalErrorAtGM();
      }
    }
  }

  v21 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v30 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v23, v24, v25, v26, v27, v28, v29, v35);
      if (v30)
      {
        v21 = v30;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v35, BytePtr, Length);
        v21 = 0;
      }

      goto LABEL_14;
    }

LABEL_23:
    v21 = CFDataFromCFPropertyList;
  }

LABEL_14:
  if (supportedPropertyDictionaryOut)
  {
    CFRelease(supportedPropertyDictionaryOut);
  }

  v32 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v32, v10, v11, v12, v13, v14, v15, v16, v35);
  if (v8)
  {
    *v8 = v21;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopySerializableProperties(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, theData, dictionaryOut, v39);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_23;
  }

  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    CFDataFromCFPropertyList = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  v17 = v39[3];
  if (v17)
  {
    v18 = VTCompressionSessionCopySerializableProperties(v17, *MEMORY[0x1E695E480], &dictionaryOut);
  }

  else
  {
    v19 = v39[4];
    if (v19)
    {
      v18 = VTTileCompressionSessionCopySerializableProperties(v19, *MEMORY[0x1E695E480], &dictionaryOut);
    }

    else
    {
      v20 = v39[5];
      if (v20 || (v20 = v39[6]) != 0)
      {
        v18 = VTSessionCopySerializableProperties(v20, *MEMORY[0x1E695E480], &dictionaryOut);
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        v18 = FigSignalErrorAtGM();
      }
    }
  }

  v21 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v30 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v23, v24, v25, v26, v27, v28, v29, v35);
      if (v30)
      {
        v21 = v30;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v35, BytePtr, Length);
        v21 = 0;
      }

      goto LABEL_14;
    }

LABEL_23:
    v21 = CFDataFromCFPropertyList;
  }

LABEL_14:
  if (dictionaryOut)
  {
    CFRelease(dictionaryOut);
  }

  v32 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v32, v10, v11, v12, v13, v14, v15, v16, v35);
  if (v8)
  {
    *v8 = v21;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopyProperty(uint64_t a1, const char *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v44 = 0;
  v43 = 0;
  *a3 = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v44);
  if (ClientFromCommandPort)
  {
    goto LABEL_21;
  }

  if (!v44 || (v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
LABEL_21:
    v30 = ClientFromCommandPort;
    goto LABEL_16;
  }

  v16 = v15;
  if (v44[3])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTCompressionSessionCopyProperty(v17, v18, v19, v20);
  }

  else if (v44[4])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTTileCompressionSessionCopyProperty(v22, v23, v24, v25);
  }

  else if (v44[5] || v44[6])
  {
    OUTLINED_FUNCTION_18_1();
    v21 = VTSessionCopyProperty(v26, v27, v28, v29);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    v21 = FigSignalErrorAtGM();
  }

  v30 = v21;
  if (!v21)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v30 = CFDataFromCFPropertyList;
    }

    else
    {
      Length = CFDataGetLength(0);
      v40 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v33, v34, v35, v36, v37, v38, v39, 0);
      if (v40)
      {
        v30 = v40;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(0);
        memcpy(v43, BytePtr, Length);
        v30 = 0;
      }
    }
  }

  CFRelease(v16);
LABEL_16:
  OUTLINED_FUNCTION_16_1(0, v8, v9, v10, v11, v12, v13, v14, v43);
  if (a5)
  {
    *a5 = v30;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetMultiPassStorage(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v11);
  if (!ClientFromCommandPort)
  {
    if (v11)
    {
      v6 = *(v11 + 24);
      if (!a2)
      {
        v7 = 0;
LABEL_5:
        VTCompressionSessionSetProperty(v6, @"MultiPassStorage", v7);
        goto LABEL_6;
      }

      ClientFromCommandPort = vtcss_findClientFromCommandPort(a2, &v10);
      if (ClientFromCommandPort)
      {
        goto LABEL_6;
      }

      if (v10)
      {
        v7 = *(v10 + 120);
        goto LABEL_5;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_0();
    }

    ClientFromCommandPort = FigSignalErrorAtGM();
  }

LABEL_6:
  v8 = ClientFromCommandPort;
  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  *a3 = v8;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, int a4, _DWORD *a5)
{
  v19 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v19);
  if (!ClientFromCommandPort)
  {
    if (v19)
    {
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
      if (!v9)
      {
        goto LABEL_22;
      }

      CFPropertyListFromData = FigCreateCFPropertyListFromData();
      if (CFPropertyListFromData)
      {
        goto LABEL_15;
      }

      v11 = FigCFEqual();
      v12 = v19;
      if (v11)
      {
        v13 = v19[26];
        if (v13)
        {
          CFRelease(v13);
          v12 = v19;
          v19[26] = 0;
        }
      }

      v14 = v12[3];
      if (v14)
      {
        VTCompressionSessionSetProperty(v14, v9, 0);
        goto LABEL_15;
      }

      v15 = v12[4];
      if (v15)
      {
        CFPropertyListFromData = VTTileCompressionSessionSetProperty(v15, v9, 0);
        goto LABEL_15;
      }

      v16 = v12[5];
      if (v16 || (v16 = v12[6]) != 0)
      {
        CFPropertyListFromData = VTSessionSetProperty(v16, v9, 0);
      }

      else
      {
LABEL_22:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        CFPropertyListFromData = FigSignalErrorAtGM();
      }

LABEL_15:
      v17 = CFPropertyListFromData;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_10_0();
    ClientFromCommandPort = FigSignalErrorAtGM();
  }

  v17 = ClientFromCommandPort;
  v9 = 0;
  if (a4)
  {
LABEL_16:
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

LABEL_17:
  if (v9)
  {
    CFRelease(v9);
  }

  if (a5)
  {
    *a5 = v17;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_SetProperties(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v13 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v13);
  if (!ClientFromCommandPort)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    ClientFromCommandPort = FigCreateCFPropertyListFromData();
    if (ClientFromCommandPort)
    {
      goto LABEL_12;
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(0))
    {
      goto LABEL_17;
    }

    v8 = v13[3];
    if (v8)
    {
      ClientFromCommandPort = VTCompressionSessionSetProperties(v8, 0);
      goto LABEL_12;
    }

    v9 = v13[4];
    if (v9)
    {
      ClientFromCommandPort = VTTileCompressionSessionSetProperties(v9, 0);
      goto LABEL_12;
    }

    v10 = v13[5];
    if (v10 || (v10 = v13[6]) != 0)
    {
      ClientFromCommandPort = VTSessionSetProperties(v10, 0);
    }

    else
    {
LABEL_17:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_1();
      ClientFromCommandPort = FigSignalErrorAtGM();
    }
  }

LABEL_12:
  v11 = ClientFromCommandPort;
  if (a3)
  {
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

  if (a4)
  {
    *a4 = v11;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteFrames(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v11);
  if (!ClientFromCommandPort)
  {
    if (v11)
    {
      v4 = v11[3];
      v6 = v11[23];
      v5 = v11[24];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTCompressionSessionRemoteServer_CompleteFrames_block_invoke;
      block[3] = &__block_descriptor_tmp_11;
      block[4] = v11;
      block[5] = v4;
      v13 = *a2;
      v14 = *(a2 + 2);
      dispatch_group_async(v5, v6, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
  }

  if (ClientFromCommandPort && v11)
  {
    v8 = OUTLINED_FUNCTION_13_1(v11);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v8, v9, v10);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_BeginPass(uint64_t a1, VTCompressionSessionOptionFlags a2, uint32_t *a3, _DWORD *a4)
{
  v9 = 0;
  *a3 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v9);
  if (!ClientFromCommandPort)
  {
    if (!v9)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_1();
      ClientFromCommandPort = FigSignalErrorAtGM();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_5;
    }

    ClientFromCommandPort = VTCompressionSessionBeginPass(*(v9 + 24), a2, a3);
  }

  if (a4)
  {
LABEL_5:
    *a4 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EndPass(uint64_t a1, _DWORD *a2, uint32_t *a3, _DWORD *a4)
{
  v10 = 0;
  furtherPassesRequestedOut = 0;
  *a2 = 0;
  *a3 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v10);
  if (!ClientFromCommandPort)
  {
    if (!v10)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_19_0();
      ClientFromCommandPort = FigSignalErrorAtGM();
      if (!a4)
      {
        return 0;
      }

      goto LABEL_6;
    }

    ClientFromCommandPort = VTCompressionSessionEndPass(*(v10 + 24), &furtherPassesRequestedOut, a3);
    if (!ClientFromCommandPort)
    {
      *a2 = furtherPassesRequestedOut == 1;
    }
  }

  if (a4)
  {
LABEL_6:
    *a4 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_GetTimeRangesForNextPass(uint64_t a1, CMItemCount *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  timeRangeCountOut = 0;
  v23 = 0;
  timeRangeArrayOut = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v23);
  if (!ClientFromCommandPort)
  {
    if (!v23)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      ClientFromCommandPort = FigSignalErrorAtGM();
      if (!a5)
      {
        return 0;
      }

      goto LABEL_9;
    }

    ClientFromCommandPort = VTCompressionSessionGetTimeRangesForNextPass(*(v23 + 24), &timeRangeCountOut, &timeRangeArrayOut);
    if (!ClientFromCommandPort)
    {
      v17 = timeRangeCountOut;
      if (timeRangeCountOut >= 1)
      {
        v18 = (48 * timeRangeCountOut);
        ClientFromCommandPort = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v10, v11, v12, v13, v14, v15, v16, 0);
        if (ClientFromCommandPort)
        {
          goto LABEL_8;
        }

        memcpy(v20, timeRangeArrayOut, v18);
        *a3 = v20;
        *a4 = v18;
        v17 = timeRangeCountOut;
      }

      ClientFromCommandPort = 0;
      *a2 = v17;
    }
  }

LABEL_8:
  if (a5)
  {
LABEL_9:
    *a5 = ClientFromCommandPort;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCreate(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, const char *a5, unsigned int a6, _OWORD *a7, uint64_t a8, unsigned int a9, const char *a10, _DWORD *a11, void *a12, uint64_t *a13, _DWORD *a14)
{
  v18 = a3[1];
  *&timeRange.start.value = *a3;
  *&timeRange.start.epoch = v18;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v39 = 0;
  multiPassStorageOut = 0;
  v38 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  v20 = *MEMORY[0x1E695E480];
  if (a10)
  {
    v21 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a10);
  }

  else
  {
    v21 = 0;
  }

  cf = v21;
  FigProcessInfoCreateWithDetails();
  v35 = a5;
  v34 = a6;
  if (!a6)
  {
    v24 = a4;
    v22 = 0;
    v23 = 0;
    if (!a9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a5 || a5[a6 - 1])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v29 = FigSignalErrorAtGM();
    v22 = 0;
LABEL_37:
    v23 = 0;
LABEL_40:
    v26 = 0;
    goto LABEL_17;
  }

  v22 = CFStringCreateWithFileSystemRepresentation(v20, a5);
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v29 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v23 = CFURLCreateWithString(v20, v22, 0);
  if (!v23)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    CFPropertyListFromData = FigSignalErrorAtGM();
LABEL_39:
    v29 = CFPropertyListFromData;
    goto LABEL_40;
  }

  v24 = a4;
  if (a9)
  {
LABEL_12:
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (!CFPropertyListFromData)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_13:
  v26 = vtcss_compressionSessionClientRecordCreate();
  if (!v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v28 = FigSignalErrorAtGM();
    goto LABEL_34;
  }

  v27 = a7[1];
  *&timeRange.start.value = *a7;
  *&timeRange.start.epoch = v27;
  *&timeRange.duration.timescale = a7[2];
  v28 = VTMultiPassStorageCreate(v20, v23, &timeRange, v39, &multiPassStorageOut);
  if (v28)
  {
LABEL_34:
    v29 = v28;
    goto LABEL_17;
  }

  v29 = vtcss_initializeClient(v26, 0, 0, multiPassStorageOut, 0, 0, a2, v24, ClientPIDFromAuditToken, v38, "VTMultiPassStorage", a11, a12);
  if (!v29)
  {
    *a13 = FigRemote_GetServerTimeoutToken();
  }

LABEL_17:
  if (multiPassStorageOut)
  {
    CFRelease(multiPassStorageOut);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v29)
  {
    vtcss_finalizeClient(v26);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  v30 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v35, v34);
  MEMORY[0x193AE4440](*v30, a8, a9);
  *a14 = v29;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageDestroy(uint64_t a1)
{
  v2 = 0;
  vtcss_findClientFromCommandPort(a1, &v2);
  if (v2)
  {
    vtcss_finalizeClient(v2);
    return 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM();
  }
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageSetIdentifier(uint64_t a1, const char *a2, _DWORD *a3)
{
  v11 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v11);
  if (ClientFromCommandPort)
  {
LABEL_8:
    v9 = ClientFromCommandPort;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (!v11 || (v6 = *(v11 + 120), (v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  v8 = v7;
  v9 = VTMultiPassStorageSetIdentifier(v6, v7);
  CFRelease(v8);
  if (a3)
  {
LABEL_5:
    *a3 = v9;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCopyIdentifier(uint64_t a1, char *a2)
{
  v6 = 0;
  *a2 = 0;
  if (!vtcss_findClientFromCommandPort(a1, &v6))
  {
    if (v6)
    {
      v3 = VTMultiPassStorageCopyIdentifier(*(v6 + 120));
      if (v3)
      {
        v4 = v3;
        CFStringGetCString(v3, a2, 512, 0);
        CFRelease(v4);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_1();
      FigSignalErrorAtGM();
    }
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageSetDataAtTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v18 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v18);
  if (!ClientFromCommandPort)
  {
    if (v18)
    {
      v10 = *(v18 + 120);
      if (a5)
      {
        OUTLINED_FUNCTION_23_0();
        v14 = CFDataCreate(v11, v12, v13);
      }

      else
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_20_0();
      v16 = VTMultiPassStorageSetDataAtTimeStamp(v10, v15, a3, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (a5)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_15_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
  }

  v16 = ClientFromCommandPort;
  if (a5)
  {
LABEL_9:
    OUTLINED_FUNCTION_23_0();
    MEMORY[0x193AE4440]();
  }

LABEL_10:
  if (a6)
  {
    *a6 = v16;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStamp(uint64_t a1, uint64_t a2, const char *a3, void *a4, _DWORD *a5)
{
  v15 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v15);
  if (ClientFromCommandPort)
  {
LABEL_11:
    TimeStamp = ClientFromCommandPort;
    if (!a5)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v15 || (v10 = *(v15 + 120), a3) && (a3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v13 = *a2;
  v14 = *(a2 + 16);
  TimeStamp = VTMultiPassStorageGetTimeStamp(v10, &v13, a3, a4);
  if (a3)
  {
    CFRelease(a3);
  }

  if (a5)
  {
LABEL_8:
    *a5 = TimeStamp;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageGetTimeStampAndDuration(uint64_t a1, uint64_t a2, const char *a3, void *a4, void *a5, _DWORD *a6)
{
  v15 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v15);
  if (ClientFromCommandPort)
  {
LABEL_11:
    TimeStampAndDuration = ClientFromCommandPort;
    if (!a6)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v15 || (v11 = *(v15 + 120), a3) && (a3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3, 0)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    ClientFromCommandPort = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_20_0();
  TimeStampAndDuration = VTMultiPassStorageGetTimeStampAndDuration(v11, v12, a3, a4, a5);
  if (a3)
  {
    CFRelease(a3);
  }

  if (a6)
  {
LABEL_8:
    *a6 = TimeStampAndDuration;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MultiPassStorageCopyDataAtTimeStamp(uint64_t a1, uint64_t a2, CFIndex Length, void *a4, _DWORD *a5, _DWORD *a6)
{
  theData = 0;
  v22 = 0;
  v20 = 0;
  *a4 = 0;
  *a5 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v22);
  if (ClientFromCommandPort)
  {
    goto LABEL_13;
  }

  if (!v22)
  {
    fig_log_get_emitter();
    ClientFromCommandPort = FigSignalErrorAtGM();
LABEL_13:
    v13 = ClientFromCommandPort;
    v14 = 0;
    v15 = 0;
    LODWORD(Length) = 0;
    goto LABEL_7;
  }

  v12 = *(v22 + 120);
  v18 = *a2;
  v19 = *(a2 + 16);
  v13 = VTMultiPassStorageCopyDataAtTimeStamp(v12, &v18, Length, &theData);
  LODWORD(Length) = 0;
  v14 = 0;
  v15 = theData;
  if (!v13)
  {
    if (theData)
    {
      Length = CFDataGetLength(theData);
      v13 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v20, Length);
      v14 = v20;
      v15 = theData;
      if (!v13)
      {
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v14, BytePtr, Length);
        v14 = v20;
        v15 = theData;
      }
    }
  }

LABEL_7:
  *a4 = v14;
  *a5 = Length;
  if (v15)
  {
    CFRelease(v15);
  }

  if (a6)
  {
    *a6 = v13;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_TileCreate(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, unint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, const char *a11, _DWORD *a12, void *a13, uint64_t *a14, _DWORD *a15)
{
  v37 = a2;
  v19 = OUTLINED_FUNCTION_22_0(a1, a2, a3);
  session = 0;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v20 = MEMORY[0x1E695E480];
  if (a11)
  {
    v36 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a11);
  }

  else
  {
    v36 = 0;
  }

  v39 = a7;
  v38 = a8;
  if (a8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      v31 = CFPropertyListFromData;
      v24 = 0;
      v22 = a9;
      goto LABEL_25;
    }
  }

  v22 = a9;
  if (a10)
  {
    v23 = FigCreateCFPropertyListFromData();
    if (v23)
    {
      v31 = v23;
      v24 = 0;
      goto LABEL_25;
    }
  }

  v24 = vtcss_compressionSessionClientRecordCreate();
  if (!v24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v26 = FigSignalErrorAtGM();
LABEL_24:
    v31 = v26;
LABEL_25:
    v28 = v36;
    goto LABEL_15;
  }

  v25 = a3[1];
  valuePtr[0] = *a3;
  valuePtr[1] = v25;
  v26 = VTFigAudioSessionCreate(valuePtr, v19, @"VTCompressionSessionClient", (v24 + 104));
  if (v26)
  {
    goto LABEL_24;
  }

  v27 = *v20;
  v26 = VTTileCompressionSessionCreate(*v20, a5, a6, 0, 0, *v20, TileCompressionOutputCallback, v24, &session);
  if (v26)
  {
    goto LABEL_24;
  }

  v28 = v36;
  FigProcessInfoCreateWithDetails();
  v29 = vtcss_initializeClient(v24, 0, session, 0, 0, 0, v37, a4, v19, 0, "VTTileCompressionSession", a12, a13);
  if (v29 || *(v24 + 104) && (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_12_1(), (v29 = FigNotificationCenterAddWeakListener()) != 0))
  {
    v31 = v29;
  }

  else
  {
    LODWORD(valuePtr[0]) = v19;
    v30 = CFNumberCreate(v27, kCFNumberSInt32Type, valuePtr);
    VTSessionSetProperty(session, @"ClientPID", v30);
    CFRelease(v30);
    v31 = 0;
    *a14 = FigRemote_GetServerTimeoutToken();
  }

LABEL_15:
  if (v28)
  {
    CFRelease(v28);
  }

  if (session)
  {
    CFRelease(session);
  }

  if (v31)
  {
    vtcss_finalizeClient(v24);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  v32 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v39, v38);
  MEMORY[0x193AE4440](*v32, v22, a10);
  *a15 = v31;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_PrepareToEncodeTiles(uint64_t a1, int a2)
{
  v22 = 0;
  v23 = 0;
  v2 = a2 != 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v23);
  if (!ClientFromCommandPort)
  {
    if (v23)
    {
      OUTLINED_FUNCTION_0_3(v23);
      OUTLINED_FUNCTION_24_0();
      v13 = __VTCompressionSessionRemoteServer_PrepareToEncodeTiles_block_invoke;
      v14 = &unk_1E72C7C30;
      v18 = v2;
      v15 = &v19;
      v16 = v4;
      v17 = v5;
      dispatch_group_async(v6, v7, block);
      goto LABEL_4;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    ClientFromCommandPort = FigSignalErrorAtGM();
  }

  if (ClientFromCommandPort && v23)
  {
    v9 = OUTLINED_FUNCTION_13_1(v23);
    VTCompressionSessionRemoteCallbackClient_PrepareToEncodeTilesReturn(v9, v10, v20[3], v11);
  }

LABEL_4:
  _Block_object_dispose(&v19, 8);
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EncodeTile(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v37);
  if (ClientFromCommandPort)
  {
    goto LABEL_18;
  }

  if (!v37)
  {
    goto LABEL_19;
  }

  v17 = v37[4];
  if (!(a4 | a2))
  {
    v19 = v37[26];
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    v36 = v19;
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v25 = FigSignalErrorAtGM();
    if (!v25)
    {
      return 0;
    }

    goto LABEL_22;
  }

  ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
  if (ClientFromCommandPort)
  {
LABEL_18:
    v25 = ClientFromCommandPort;
    goto LABEL_22;
  }

  v18 = v37[26];
  v37[26] = v36;
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = v36;
  if (!v36)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (!a8)
  {
    v21 = 0;
    goto LABEL_16;
  }

  CFPropertyListFromData = FigCreateCFPropertyListFromData();
  if (!CFPropertyListFromData)
  {
    v21 = v35;
    v19 = v36;
LABEL_16:
    v22 = v37[23];
    v23 = v37[24];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = __VTCompressionSessionRemoteServer_EncodeTile_block_invoke;
    v31[3] = &__block_descriptor_tmp_15;
    v31[4] = v37;
    v31[5] = v17;
    v31[11] = a5;
    v31[12] = a6;
    v31[6] = v19;
    v31[7] = v21;
    v32 = a2;
    v33 = 0;
    v31[8] = a9;
    v31[9] = a3;
    v34 = a8;
    v31[10] = a7;
    dispatch_group_async(v23, v22, v31);
    return 0;
  }

  v25 = CFPropertyListFromData;
  a4 = 0;
LABEL_22:
  if (a2)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v26 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a8)
  {
    MEMORY[0x193AE4440](*v26, a7, a8);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v37)
  {
    v27 = OUTLINED_FUNCTION_8_1(v37);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v27, v28, v29, v30, v25);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteTiles(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v15)
    {
      OUTLINED_FUNCTION_0_3(v15);
      OUTLINED_FUNCTION_24_0();
      v11 = __VTCompressionSessionRemoteServer_CompleteTiles_block_invoke;
      v12 = &__block_descriptor_tmp_16;
      v13 = v2;
      v14 = v3;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM();
  }

  if (v1 && v15)
  {
    v7 = OUTLINED_FUNCTION_13_1(v15);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MotionEstimationCreate(uint64_t a1, int a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, const char *a9, _DWORD *a10, void *a11, uint64_t *a12, _DWORD *a13)
{
  v17 = a9;
  v18 = a3[1];
  *session = *a3;
  v35 = v18;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  cf = 0;
  session[0] = 0;
  v32 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  v20 = MEMORY[0x1E695E480];
  if (a9)
  {
    v17 = OUTLINED_FUNCTION_21_0(*MEMORY[0x1E695E480], a9);
  }

  v30 = a7;
  if (a8)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      v25 = CFPropertyListFromData;
      v22 = 0;
      goto LABEL_9;
    }
  }

  v22 = vtcss_compressionSessionClientRecordCreate();
  if (!v22)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
    v24 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v23 = *v20;
  v24 = VTMotionEstimationSessionCreate(v23, cf, a5, a6, session);
  if (v24)
  {
LABEL_21:
    v25 = v24;
    goto LABEL_9;
  }

  FigProcessInfoCreateWithDetails();
  v25 = vtcss_initializeClient(v22, 0, 0, 0, session[0], 0, a2, a4, ClientPIDFromAuditToken, v32, "VTMotionEstimationSession", a10, a11);
  if (!v25)
  {
    valuePtr = ClientPIDFromAuditToken;
    v26 = CFNumberCreate(v23, kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session[0], @"ClientPID", v26);
    CFRelease(v26);
    *a12 = FigRemote_GetServerTimeoutToken();
  }

LABEL_9:
  if (v17)
  {
    CFRelease(v17);
  }

  if (session[0])
  {
    CFRelease(session[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v25)
  {
    vtcss_finalizeClient(v22);
  }

  OUTLINED_FUNCTION_1_2();
  FigMachPortReleaseSendRight_();
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v30, a8);
  *a13 = v25;
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_MotionEstimationCopySourcePixelBufferAttributes(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4, a5, a6, a7, a8, v18, theData, cf, v21);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    CFDataFromCFPropertyList = FigSignalErrorAtGM();
LABEL_15:
    v16 = CFDataFromCFPropertyList;
    LODWORD(Length) = 0;
    goto LABEL_7;
  }

  CFDataFromCFPropertyList = VTMotionEstimationSessionCopySourcePixelBufferAttributes(*(v21 + 40), &cf);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_15;
  }

  Length = CFDataGetLength(theData);
  v13 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v18, Length);
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v14 = v18;
    BytePtr = CFDataGetBytePtr(theData);
    memcpy(v14, BytePtr, Length);
    v16 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  *v10 = v18;
  *v9 = Length;
  if (v8)
  {
    *v8 = v16;
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_EstimateMotion(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unsigned int a7, char a8)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  cf = 0;
  v28 = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, &v32);
  if (ClientFromCommandPort)
  {
LABEL_30:
    v19 = ClientFromCommandPort;
    goto LABEL_17;
  }

  v16 = v30[3];
  if (!v16)
  {
    goto LABEL_16;
  }

  if (a2 || (a8 & 1) == 0)
  {
    if (!(a4 | a2))
    {
      goto LABEL_16;
    }

    ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!ClientFromCommandPort)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v17 = *(v16 + 216);
  if (v17)
  {
    v17 = CFRetain(v17);
  }

  v28 = v17;
  if (!v17)
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v19 = FigSignalErrorAtGM();
    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (a7 | a5 && (PixelBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData()) != 0)
  {
    v19 = PixelBufferFromSerializedAtomData;
    a4 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v19 = FigSignalErrorAtGM();
    a4 = 0;
    if (!v19)
    {
      goto LABEL_29;
    }
  }

LABEL_17:
  if (a2)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v20 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a5)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v20, a6, a7);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v21 = v30[3];
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_8_1(v21);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v22, v23, v24, v25, v19);
  }

LABEL_29:
  _Block_object_dispose(&v29, 8);
  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteMotionEstimation(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v17)
    {
      v2 = *(v17 + 40);
      v3 = *(v17 + 216);
      if (v3)
      {
        CFRelease(v3);
        *(v17 + 216) = 0;
      }

      OUTLINED_FUNCTION_10_1();
      v12 = 0x40000000;
      v13 = __VTCompressionSessionRemoteServer_CompleteMotionEstimation_block_invoke;
      v14 = &__block_descriptor_tmp_21;
      v15 = v4;
      v16 = v2;
      dispatch_group_async(v5, v6, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM();
  }

  if (v1 && v17)
  {
    v8 = OUTLINED_FUNCTION_13_1(v17);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v8, v9, v10);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CopyTemporalFilterList(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  cf = 0;
  v18 = 0;
  v15 = 0;
  theData = 0;
  if (a3)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
LABEL_16:
      CFDataFromCFPropertyList = CFPropertyListFromData;
      goto LABEL_11;
    }

    v8 = v18;
  }

  else
  {
    v8 = 0;
  }

  CFPropertyListFromData = VTCopyTemporalFilterList(v8, &cf);
  if (CFPropertyListFromData)
  {
    goto LABEL_16;
  }

  CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
  v10 = theData;
  if (!CFDataFromCFPropertyList)
  {
    Length = CFDataGetLength(theData);
    CFDataFromCFPropertyList = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], &v15, Length);
    v10 = theData;
    if (!CFDataFromCFPropertyList)
    {
      v12 = v15;
      BytePtr = CFDataGetBytePtr(theData);
      memcpy(v12, BytePtr, Length);
      CFDataFromCFPropertyList = 0;
      v10 = theData;
      *a4 = v15;
      *a5 = Length;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return CFDataFromCFPropertyList;
}

uint64_t VTCompressionSessionRemoteServer_TemporalProcessFrame(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v20[16] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  ClientFromCommandPort = vtcss_findClientFromCommandPort(a1, v20);
  if (ClientFromCommandPort || v20[0] && a4 | a2 && (ClientFromCommandPort = FigRemote_CreatePixelBufferFromSerializedAtomData()) != 0)
  {
    v13 = ClientFromCommandPort;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_1();
    v13 = FigSignalErrorAtGM();
    if (!v13)
    {
      return 0;
    }
  }

  if (a2)
  {
    OUTLINED_FUNCTION_1_2();
    FigMachPortReleaseSendRight_();
  }

  v14 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v14, a6, a7);
  }

  if (v20[0])
  {
    v15 = OUTLINED_FUNCTION_8_1(v20[0]);
    VTCompressionSessionRemoteCallbackClient_EncodeReturn(v15, v16, v17, v18, v13);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_27_0(a1);
  if (!v1)
  {
    if (v15)
    {
      OUTLINED_FUNCTION_0_3(v15);
      OUTLINED_FUNCTION_24_0();
      v11 = __VTCompressionSessionRemoteServer_CompleteTemporalFilterFrames_block_invoke;
      v12 = &__block_descriptor_tmp_23;
      v13 = v2;
      v14 = v3;
      dispatch_group_async(v4, v5, block);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v1 = FigSignalErrorAtGM();
  }

  if (v1 && v15)
  {
    v7 = OUTLINED_FUNCTION_13_1(v15);
    VTCompressionSessionRemoteCallbackClient_CompleteFramesReturn(v7, v8, v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteServer_GetNextPendingNotification(uint64_t a1, _DWORD *a2, void *a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  vtcss_findClientFromCommandPort(a1, &v16);
  if (!v16)
  {
    return 0;
  }

  v19 = 0;
  cf = 0;
  v17 = 0;
  theData = 0;
  PendingNotification = FigRPCFetchNextPendingNotification();
  if (PendingNotification)
  {
    v12 = PendingNotification;
  }

  else
  {
    FigCreateCFDataFromCFPropertyList();
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      strlcpy(a4, CStringPtrAndBufferToFree, 0x200uLL);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }

    if (theData)
    {
      Length = CFDataGetLength(theData);
      *a6 = Length;
      v12 = OUTLINED_FUNCTION_17_1(*MEMORY[0x1E69E9A60], a5, Length);
      if (!v12)
      {
        v13 = *a5;
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v13, BytePtr, *a6);
      }
    }

    else
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
    }
  }

  free(v17);
  if (theData)
  {
    CFRelease(theData);
  }

  return v12;
}

uint64_t CompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t TileCompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t temporalFilterSessionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, void *a4, CFTypeRef *a5)
{
  v24[23] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24[0] = 0;
  v22 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    v16 = FigSignalErrorAtGM();
    a3 = 0;
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    v16 = FigSignalErrorAtGM();
    a2 = 0;
    goto LABEL_18;
  }

  if (_MergedGlobals_4 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    dispatch_once_f(v18, v19, v20);
  }

  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (!Instance)
  {
    OUTLINED_FUNCTION_3_2();
    v12 = FigSignalErrorAtGM();
LABEL_40:
    v16 = v12;
    a3 = 0;
    goto LABEL_41;
  }

  *(Instance + 20) = 0;
  *(Instance + 128) = Instance;
  *(Instance + 136) = FigDispatchQueueCreateWithPriority();
  v12 = VTParavirtualizationReplyClerkCreate("host decoder session", v11 + 18);
  if (v12)
  {
    goto LABEL_40;
  }

  v11[19] = _Block_copy(a3);
  v11[24] = FigSimpleMutexCreate();
  v11[26] = dispatch_group_create();
  VTParavirtualizationMessageGetUInt32();
  if (v12)
  {
    goto LABEL_40;
  }

  v12 = VTParavirtualizationMessageCopyCFDictionary(a2, 745366895, &v22);
  if (v12)
  {
    goto LABEL_40;
  }

  v12 = VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf);
  if (v12)
  {
    goto LABEL_40;
  }

  a3 = FigCFCopyCompactDescription();
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, v11 + 20);
  if (MessageTypeAndFlagsAndGuestUUID || (VTMotionEstimationProcessorSelectAndCreateInstance(), MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationCreateReplyAndByteStream(a2, 4, v24, &v23), MessageTypeAndFlagsAndGuestUUID) || (OUTLINED_FUNCTION_1_3(), MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageAppendSInt32(), MessageTypeAndFlagsAndGuestUUID) || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageAppendUInt32(), MessageTypeAndFlagsAndGuestUUID))
  {
    v16 = MessageTypeAndFlagsAndGuestUUID;
LABEL_41:
    a2 = 0;
    goto LABEL_19;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  appended = VTParavirtualizationMessageAppendCFDictionary(v23, 745040238, Mutable);
  if (!appended)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = 0;
    *a4 = v11;
    *a5 = v24[0];
    v24[0] = 0;
    goto LABEL_18;
  }

  v16 = appended;
LABEL_19:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v24[0])
  {
    CFRelease(v24[0]);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v16;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, unint64_t a5)
{
  v19 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v19 + 1, &v19, 0);
  if (!result)
  {
    if ((v19 & 8) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (a3 && a5 == 1)
      {
        v15 = *a3;
        v16 = *a4;
      }

      return VTParavirtualizationReplyClerkDeliverReply(a1[18], a2, v15, v16);
    }

    else
    {
      v11 = 0;
      if (a5 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = a5;
      }

      v13 = 0;
      if (a3 && a5)
      {
        v11 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
        v13 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
        if (v11)
        {
          memcpy(v11, a3, 8 * v12);
        }

        if (v13)
        {
          memcpy(v13, a4, 8 * v12);
        }
      }

      CFRetain(a1);
      CFRetain(a2);
      v14 = a1[17];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_1;
      v18 = HIDWORD(v19);
      block[4] = a1;
      block[5] = a2;
      block[6] = v11;
      block[7] = v13;
      block[8] = v12;
      dispatch_async(v14, block);
      return 0;
    }
  }

  return result;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v20 = 0;
  cf = 0;
  v19 = 0;
  v18 = 0;
  surface = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  appended = OUTLINED_FUNCTION_5_2(1298298214, a2, a1 + 160, a4, &cf, &v20);
  if (appended)
  {
    goto LABEL_28;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(v20, 745566064, a3);
    if (appended)
    {
      goto LABEL_28;
    }
  }

  v9 = cf;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(cf, &v24, &v26, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v26 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 144), v9, &v25);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, v9);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v11 = *(a1 + 144);
          v22 = kVTParavirtualizationDefaultReplyTimeout;
          v23 = 0;
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v11, v24, v25, &v22, &v19, &surface, &v15);
        }
      }
    }

    else
    {
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM();
    }
  }

  v12 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 144), v25);
  if (!v12)
  {
    OUTLINED_FUNCTION_1_3();
    VTParavirtualizationMessageGetSInt32();
    if (!appended)
    {
      v12 = v18;
      if (v18)
      {
        goto LABEL_17;
      }

      appended = VTParavirtualizationMessageCopyCFUUID();
      if (!appended)
      {
        appended = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], surface, *(a1 + 184), &v14);
        if (!appended)
        {
          v12 = vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(a1, a2, v14, v17, v15);
          if (!v12)
          {
            *a4 = v14;
            v14 = 0;
          }

          goto LABEL_17;
        }
      }
    }

LABEL_28:
    v12 = appended;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (surface)
  {
    CFRelease(surface);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v12;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v21 = 0;
  cf = 0;
  HIDWORD(v18) = 0;
  v6 = OUTLINED_FUNCTION_5_2(1299411041, a2, a1 + 160, a4, &v21, &v20);
  if (v6 || a2 && (v6 = OUTLINED_FUNCTION_4_1(v6, v7, v8, v9, v10, v11, v12, v13, v18, cf, v20), v6))
  {
    v14 = v6;
  }

  else
  {
    v14 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, v21, &kVTParavirtualizationDefaultReplyTimeout, &cf);
    v15 = cf;
    if (!v14)
    {
      OUTLINED_FUNCTION_1_3();
      VTParavirtualizationMessageGetSInt32();
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v14 = HIDWORD(v18);
      }

      v15 = cf;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v14;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 144), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 144);
          v12 = *a3;
          v13 = *(a3 + 2);
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v9, v14, v15, &v12, a4, 0, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_2();
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM();
    }
  }

  v10 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 144), v15);
  return v10;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v22 = 0;
  cfa = 0;
  HIDWORD(v19) = 0;
  v6 = *(a1 + 184);
  *(a1 + 184) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = OUTLINED_FUNCTION_5_2(1299607650, cf, a1 + 160, a4, &v22, &v21);
  if (v7 || cf && (v7 = OUTLINED_FUNCTION_4_1(v7, v8, v9, v10, v11, v12, v13, v14, v19, cfa, v21), v7))
  {
    v15 = v7;
  }

  else
  {
    v15 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, v22, &kVTParavirtualizationDefaultReplyTimeout, &cfa);
    v16 = cfa;
    if (!v15)
    {
      OUTLINED_FUNCTION_1_3();
      VTParavirtualizationMessageGetSInt32();
      if (v17)
      {
        v15 = v17;
      }

      else
      {
        v15 = HIDWORD(v19);
      }

      v16 = cfa;
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v15;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionEmitMotionVectors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CVBuffer *a6)
{
  v20 = 0;
  cf = 0;
  v19 = 0;
  appended = OUTLINED_FUNCTION_5_2(1298492788, a2, a1 + 160, a4, &cf, &v20);
  if (appended)
  {
    goto LABEL_30;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_3();
  appended = VTParavirtualizationMessageAppendSInt32();
  if (appended)
  {
    goto LABEL_30;
  }

  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_30;
  }

  if (a5)
  {
    appended = VTParavirtualizationMessageAppendCFDictionary(v20, 745365860, a5);
    if (appended)
    {
      goto LABEL_30;
    }
  }

  if (!a6)
  {
    goto LABEL_19;
  }

  appended = VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments(v20, a6);
  if (appended)
  {
LABEL_30:
    v17 = appended;
    a6 = 0;
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  v10 = *(a1 + 200);
  if (!v10 || (Count = CFArrayGetCount(v10), Count < 1))
  {
LABEL_16:
    FigSimpleMutexUnlock();
    a6 = 0;
    goto LABEL_19;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), v13);
    v15 = MEMORY[0x193AE2470]();
    if (v15)
    {
      break;
    }

LABEL_15:
    if (v12 == ++v13)
    {
      goto LABEL_16;
    }
  }

  if (v15 != a6)
  {
    CFRelease(v15);
    goto LABEL_15;
  }

  a6 = *(ValueAtIndex + 2);
  *(ValueAtIndex + 2) = 0;
  CFRelease(v15);
  FigSimpleMutexUnlock();
  if (!a6 || (v16 = VTParavirtualizationMessageAppendCFUUID(), !v16))
  {
LABEL_19:
    v16 = vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuestAndCopyReplySync(a1, cf, &kVTParavirtualizationCodecOperationReplyTimeout, &v19);
  }

  v17 = v16;
LABEL_21:
  dispatch_group_leave(*(a1 + 208));
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v17;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v5 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, &v5, 0);
  if (!result)
  {
    if ((v5 & 2) != 0)
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      return vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, cf, v14))
  {
    CMBaseObject = VTMotionEstimationProcessorGetCMBaseObject(*(v8 + 24));
    if (CMBaseObject)
    {
      v10 = CMBaseObject;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }

    OUTLINED_FUNCTION_1_3();
    if (!VTParavirtualizationMessageAppendSInt32())
    {
      vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v8, cfa);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, cf, v13))
  {
    v9 = *(v8 + 24);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      v10(v9);
    }

    OUTLINED_FUNCTION_1_3();
    if (!VTParavirtualizationMessageAppendSInt32())
    {
      vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v8, cfa);
    }
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t vtDecompressionSetAllowBitstreamToChangeFrameDimensionsIfNecessary(const opaqueCMFormatDescription *a1, uint64_t a2)
{
  result = CMFormatDescriptionGetMediaSubType(a1);
  if (result == 1902212657 || result == 1635135537)
  {
    result = dyld_program_sdk_at_least();
    if ((result & 1) == 0)
    {
      v5 = *MEMORY[0x1E695E4C0];

      return VTDecompressionSessionSetProperty(a2, @"AllowBitstreamToChangeFrameDimensions", v5);
    }
  }

  return result;
}

uint64_t vtDecompressionSessionIsPropertySupportedByVideoDecoder(uint64_t a1, const void *a2)
{
  theDict = 0;
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v5)
  {
    return 0;
  }

  v5(v3, &theDict);
  if (!theDict)
  {
    return 0;
  }

  v6 = CFDictionaryContainsKey(theDict, a2);
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v6;
}

uint64_t vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(uint64_t a1)
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  v36 = 0;
  cf = 0;
  if (*(a1 + 88) == *(a1 + 84))
  {
    v1 = 0;
    MutableCopy = 0;
LABEL_3:
    v3 = 0;
    goto LABEL_58;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(*(a1 + 16));
  v6 = *(a1 + 256);
  v7 = MEMORY[0x1E695E480];
  if (v6)
  {
    v8 = *(a1 + 272);
    if (!v8)
    {
LABEL_9:
      v1 = CFStringCreateWithFormat(*v7, 0, @"decode:%@", v6);
      goto LABEL_11;
    }

    v9 = CFGetTypeID(v8);
    if (v9 == CFBooleanGetTypeID() && CFEqual(*MEMORY[0x1E695E4C0], *(a1 + 272)))
    {
      v6 = *(a1 + 256);
      goto LABEL_9;
    }
  }

  v1 = @"decode";
LABEL_11:
  v10 = *v7;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM();
    goto LABEL_72;
  }

  v11 = VTCreatePixelBufferPoolAttributesWithName(v10, *(a1 + 248), v1, &cf);
  if (v11)
  {
    goto LABEL_72;
  }

  if (*(a1 + 80))
  {
    FigCFDictionarySetInt32();
  }

  v12 = *MEMORY[0x1E695E4D0];
  v13 = v12 == CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660C8]);
  LODWORD(valuePtr[0]) = 0;
  Value = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6966130]);
  if (Value)
  {
    v15 = Value;
    v16 = CFGetTypeID(Value);
    if (v16 == CFArrayGetTypeID())
    {
      FigCFArrayGetInt32AtIndex();
    }

    else
    {
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v15, kCFNumberSInt32Type, valuePtr);
      }
    }
  }

  v18 = LODWORD(valuePtr[0]) == 1751410032 || LODWORD(valuePtr[0]) == 1751411059;
  if (v18 || vtDecompressionAttributesHaveColorSpaceAttachments(*(a1 + 72)) || vtDecompressionAttributesHaveColorSpaceAttachments(*(a1 + 64)) || *(a1 + 232) || *(a1 + 208) || *(a1 + 216) || *(a1 + 224))
  {
    goto LABEL_35;
  }

  if (MediaSubType == 1634759272 || MediaSubType == 1634759278)
  {
    goto LABEL_35;
  }

  v11 = vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription(*(a1 + 16), &v36);
  if (v11)
  {
    goto LABEL_72;
  }

  v33 = v36;
  if (!v36 || CFDictionaryGetCount(v36) < 1)
  {
    goto LABEL_35;
  }

  v34 = *MEMORY[0x1E6965C70];
  v35 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E6965C70]);
  if (!v35)
  {
    CFDictionarySetValue(MutableCopy, v34, v33);
    goto LABEL_35;
  }

  valuePtr[0] = v35;
  valuePtr[1] = v33;
  v11 = FigCFCreateCombinedDictionary();
  if (v11)
  {
LABEL_72:
    v3 = v11;
    goto LABEL_58;
  }

  CFDictionarySetValue(MutableCopy, v34, 0);
LABEL_35:
  if (!FigVideoFormatDescriptionContainsAlphaChannel())
  {
    goto LABEL_55;
  }

  v20 = CMFormatDescriptionGetMediaSubType(*(a1 + 16));
  v21 = 1;
  if ((v20 - 1634755432 > 0xB || ((1 << (v20 - 104)) & 0x8C1) == 0) && (v20 - 1634759272 > 6 || ((1 << (v20 - 104)) & 0x51) == 0))
  {
    v22 = v20 == 1634742376 || v20 == 1634742888;
    v23 = v22 || v20 == 1634743416;
    if (!v23 && v20 != 1634743400)
    {
      goto LABEL_56;
    }
  }

  CMFormatDescriptionGetExtension(*(a1 + 16), *MEMORY[0x1E6960028]);
  if (FigCFNumberGetSInt32() != 32)
  {
LABEL_55:
    v21 = 0;
    goto LABEL_56;
  }

  if (!FigCFDictionaryGetValue())
  {
    FigCFDictionarySetInt32();
  }

LABEL_56:
  v25 = CFGetAllocator(*a1);
  v26 = *(a1 + 64);
  v27 = cf;
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(a1 + 16));
  v29 = (a1 + 104);
  v30 = VTBuildPixelBufferPools2(v25, MutableCopy, v26, v27, Dimensions, *(a1 + 272), v13, v21, *(a1 + 267) != 0, *(a1 + 268), (a1 + 104), (a1 + 96), 0, 0);
  if (v30)
  {
    v3 = v30;
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 88) = *(a1 + 84);
    if (*(a1 + 96))
    {
      goto LABEL_3;
    }

    v32 = *v29;
    if (*v29)
    {
      v32 = CFRetain(v32);
    }

    v3 = 0;
    *(a1 + 96) = v32;
  }

LABEL_58:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v3;
}

void VTDecoderSessionRegisterCustomPixelFormat(void *a1, const __CFDictionary *a2)
{
  if (a1 && *a1)
  {
    if (FigCFDictionaryGetInt32IfPresent())
    {
      CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(a2, 0);
    }
  }
}

uint64_t VTDecompressionSessionSetContentAnalyzer2(uint64_t result, const void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*(result + 16))
    {
      FigSimpleMutexLock();
      _Block_release(*(v2 + 176));
      *(v2 + 176) = _Block_copy(a2);

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

CFDictionaryRef VTDecompressionSessionCopyAnalysisOptions(CFDictionaryRef theDict)
{
  keys[2] = *MEMORY[0x1E69E9840];
  keys[0] = 0;
  keys[1] = 0;
  values[0] = 0;
  values[1] = 0;
  if (theDict)
  {
    v1 = theDict;
    v2 = 0;
    v3 = @"ContentAnalyzerRotation";
    v4 = 1;
    do
    {
      v5 = v4;
      if (CFDictionaryGetValueIfPresent(v1, v3, &values[v2]))
      {
        keys[v2++] = v3;
      }

      v4 = 0;
      v3 = @"ContentAnalyzerCropRectangle";
    }

    while ((v5 & 1) != 0);
    if (v2 < 1)
    {
      return 0;
    }

    else
    {
      return CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, v2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }
  }

  return theDict;
}

void VTDecompressionSessionAnalyzeAndInterruptFrame(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, CVPixelBufferRef *a6)
{
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (!a2)
  {
    if (a6)
    {
      v6 = 0;
      if (a1)
      {
        if (*a6)
        {
          v6 = 0;
          if (a5)
          {
            if (!*(a1 + 16))
            {
              FigSimpleMutexLock();
              v6 = _Block_copy(*(a1 + 176));
              FigSimpleMutexUnlock();
              if (v6)
              {
                FigExecuteBlockWithAutoreleasePool();
                v10 = v13;
                if (*(v13 + 25))
                {
                  FigSimpleMutexLock();
                  v11 = *(a1 + 176);
                  if (v11 == v6)
                  {
                    _Block_release(v11);
                    *(a1 + 176) = 0;
                  }

                  FigSimpleMutexUnlock();
                  v10 = v13;
                }

                if (*(v10 + 24) && !VTDecompressionSessionCopyBlackPixelBuffer(a1, a6))
                {
                  *a5 |= 0x10u;
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_release(v6);
  _Block_object_dispose(&v12, 8);
}

void VTDecompressionSessionInvalidate_cold_1(void *cf)
{
  v2 = *(cf + 4);
  if (v2 && *(v2 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v3 = *(*(cf + 4) + 8);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }

    VTDecompressionSessionWaitForAsynchronousFrames(cf);
    CFRelease(*(*(cf + 4) + 8));
    *(*(cf + 4) + 8) = 0;
  }

  v5 = *(cf + 5);
  if (v5)
  {
    vtDecompressionSubDuctFinishAsynchronousTransfers(v5);
    v6 = *(cf + 5);
    *v6 = 0;
    if (*(v6 + 248))
    {
      if (*(cf + 4))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v8 = Mutable;
          CMFormatDescriptionGetMediaSubType(*(*(cf + 4) + 88));
          FigVideoFormatDescriptionContainsHDR();
          CMVideoFormatDescriptionGetDimensions(*(*(cf + 4) + 88));
          MEMORY[0x193AE2670]();
          FigHostTimeToNanoseconds();
          if (*(*(cf + 4) + 184))
          {
            FigCFDictionarySetValue();
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          if (*(*(cf + 4) + 200))
          {
            FigCFDictionarySetInt32();
          }

          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigCFDictionarySetInt32();
          FigLogPowerEvent();
          CFRelease(v8);
        }
      }
    }
  }

  v9 = CFGetAllocator(cf);
  vtDecompressionDuctFinalize(v9, *(cf + 4));
  *(cf + 4) = 0;
  v10 = CFGetAllocator(cf);
  vtDecompressionSubDuctFinalize(v10, *(cf + 5));
  *(cf + 5) = 0;
}

uint64_t VTDecompressionSessionCreateWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionCreateWithOptions_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionSetMultiImageCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionSessionCreatePropertiesHandledByVideoToolbox_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCreateSuggestedQualityOfServiceTiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTDecoderSessionCreatePixelBufferWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL vtDecompressionSessionDecodeFrameCommon_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDecompressionSessionDecodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecoderSessionEmitDecodedFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateFrameTypesArrayElement_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateQualityOfServiceTier_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t DepthWrapperDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {

      return VTSessionCopyProperty(v10, a2, a3, a4);
    }

    else
    {
      return 4294954393;
    }
  }

  return result;
}

uint64_t DepthWrapperDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (a3 && (v6 = CFGetTypeID(a3), v6 == CFDictionaryGetTypeID()))
    {
      v7 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a3;
      CFRetain(a3);
      if (v7)
      {
        CFRelease(v7);
      }

      return 0;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    v9 = *(DerivedStorage + 40);
    if (v9)
    {

      return VTSessionSetProperty(v9, a2, a3);
    }

    else
    {
      return 4294954393;
    }
  }
}

uint64_t DepthWrapperDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = 0;
  v13 = 0;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = *(DerivedStorage + 40);
    if (v7)
    {
      v8 = VTSessionCopySupportedPropertyDictionary(v7, &cf);
      if (v8)
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v5);
        v12 = cf;
        v13 = Mutable;
        FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      Mutable = 0;
      v8 = 4294954393;
    }
  }

  else
  {
    Mutable = 0;
    v8 = 4294954394;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

uint64_t DepthWrapperDecoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_CreateInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_CreateInstance_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t DepthWrapperDecoder_StartSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void DepthWrapperDecoder_StartSession_cold_4(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t DepthWrapperDecoder_StartSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_StartSession_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperDecoder_DecodeFrame_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void depthdecoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t depthdecoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const __CFArray *vtCreatePrioritizedPixelFormatListByAlpha(const __CFArray *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  if (!CFArrayGetCount(v1))
  {
    return 0;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v1 = MutableCopy;
  if (MutableCopy)
  {
    Count = CFArrayGetCount(MutableCopy);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
        if (vtPixelFormatContainsAlpha(ValueAtIndex))
        {
          if (v6 != v7)
          {
            CFArrayRemoveValueAtIndex(v1, v6);
            CFArrayInsertValueAtIndex(v1, v7, ValueAtIndex);
          }

          ++v7;
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v1;
}

uint64_t vtCreateOrReuseSharedPixelBufferPool(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, const void *a5, void *a6, char *a7)
{
  cf = 0;
  MEMORY[0x193AE3010](&vtCreateOrReuseSharedPixelBufferPool_sInitializeVTPSharedPoolOnce, vtInitializeVTPSharedPool);
  FigSimpleMutexLock();
  v13 = qword_1ED6D4038;
  if (!qword_1ED6D4038)
  {
    goto LABEL_28;
  }

  v43 = a5;
  v44 = a6;
  v14 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v15 = v13;
        v13 = *v13;
        Count = CFArrayGetCount(v15[2]);
        if (Count >= 1)
        {
          v17 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15[2], v17);
            if (*ValueAtIndex)
            {
              ++v17;
            }

            else
            {
              v19 = ValueAtIndex;
              MEMORY[0x193AE2430]();
              v20 = v19[1];
              if (v20)
              {
                CFRelease(v20);
                v19[1] = 0;
              }

              v21 = v19[2];
              if (v21)
              {
                CFRelease(v21);
                v19[2] = 0;
              }

              CFArrayRemoveValueAtIndex(v15[2], v17);
              free(v19);
              --Count;
            }
          }

          while (v17 < Count);
        }

        if (v15[1] != a4)
        {
          break;
        }

        v14 = v15;
        if (!v13)
        {
          goto LABEL_26;
        }
      }

      if (!Count)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_26;
      }
    }

    v22 = v15[2];
    if (v22)
    {
      CFRelease(v22);
      v15[2] = 0;
    }

    v15[1] = 0;
    v23 = qword_1ED6D4038;
    if (qword_1ED6D4038 == v15)
    {
      v24 = &qword_1ED6D4038;
    }

    else
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23 != v15);
    }

    *v24 = *v23;
    free(v15);
  }

  while (v13);
LABEL_26:
  a6 = v44;
  a5 = v43;
  if (v14)
  {
    Mutable = *(v14 + 16);
  }

  else
  {
LABEL_28:
    v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
    v14 = v26;
    if (!v26 || (v26[1] = a4, Mutable = CFArrayCreateMutable(0, 0, 0), (*(v14 + 16) = Mutable) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9_1();
      v37 = FigSignalErrorAtGM();
      v31 = 0;
      goto LABEL_47;
    }

    *v14 = qword_1ED6D4038;
    qword_1ED6D4038 = v14;
  }

  v27 = CFArrayGetCount(Mutable);
  if (v27 >= 1)
  {
    v28 = v27;
    v29 = 0;
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(*(v14 + 16), v29);
      if (FigCFEqual())
      {
        if (FigCFEqual())
        {
          break;
        }
      }

      if (v28 == ++v29)
      {
        goto LABEL_36;
      }
    }

    v36 = MEMORY[0x193AE2470](v30);
    cf = v36;
    if (v36)
    {
      v35 = 1;
      goto LABEL_45;
    }

    MEMORY[0x193AE2430](v30);
    v41 = v30[1];
    if (v41)
    {
      CFRelease(v41);
      v30[1] = 0;
    }

    v42 = v30[2];
    if (v42)
    {
      CFRelease(v42);
      v30[2] = 0;
    }

    CFArrayRemoveValueAtIndex(*(v14 + 16), v29);
    free(v30);
  }

LABEL_36:
  v31 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004082687C62uLL);
  if (!v31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9_1();
    NamedPixelBufferPool = FigSignalErrorAtGM();
    goto LABEL_66;
  }

  NamedPixelBufferPool = vtCreateNamedPixelBufferPool(a1, a2, a3, a5, &cf);
  if (NamedPixelBufferPool)
  {
LABEL_66:
    v37 = NamedPixelBufferPool;
    v14 = 0;
    goto LABEL_47;
  }

  FigCFWeakReferenceInit();
  if (a3)
  {
    v33 = CFRetain(a3);
  }

  else
  {
    v33 = 0;
  }

  v31[1] = v33;
  if (a2)
  {
    v34 = CFRetain(a2);
  }

  else
  {
    v34 = 0;
  }

  v31[2] = v34;
  CFArrayAppendValue(*(v14 + 16), v31);
  v35 = 0;
  v36 = cf;
LABEL_45:
  *a6 = v36;
  cf = 0;
  v14 = 0;
  v31 = 0;
  v37 = 0;
  if (a7)
  {
    *a7 = v35;
  }

LABEL_47:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    FigCFWeakReferenceStore();
    v38 = v31[1];
    if (v38)
    {
      CFRelease(v38);
    }

    free(v31);
  }

  if (v14)
  {
    v39 = *(v14 + 16);
    if (v39)
    {
      CFRelease(v39);
    }

    free(v14);
  }

  return v37;
}

CFMutableArrayRef vtCreateReorderedPixelFormatArray(const __CFAllocator *a1, CFArrayRef theArray, __CFArray *a3)
{
  v3 = a3;
  if (a3)
  {
    if (CFArrayGetCount(theArray) < 2)
    {
      return 0;
    }

    MutableCopy = CFArrayCreateMutableCopy(a1, 0, theArray);
    if (!MutableCopy)
    {
      return 0;
    }

    v7 = MutableCopy;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      v3 = 0;
      v9 = v7;
      goto LABEL_54;
    }

    v9 = Mutable;
    v10 = CFGetTypeID(v3);
    if (v10 == CFNumberGetTypeID())
    {
      v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(v11, v3);
      if (!v11)
      {
LABEL_33:
        CFRelease(v7);
        v3 = 0;
LABEL_54:
        CFRelease(v9);
        return v3;
      }
    }

    else
    {
      v12 = CFGetTypeID(v3);
      if (v12 != CFArrayGetTypeID())
      {
        goto LABEL_33;
      }

      v11 = CFRetain(v3);
      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (!CFArrayGetCount(v11))
    {
      goto LABEL_52;
    }

    if (CFArrayGetCount(v11) < 1)
    {
      v23 = 1;
    }

    else
    {
      v34 = 0;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
        Count = CFArrayGetCount(v7);
        v16 = OUTLINED_FUNCTION_6_1(Count);
        if (v16 != -1)
        {
          v17 = v16;
          CFArrayAppendValue(v9, ValueAtIndex);
          CFArrayRemoveValueAtIndex(v7, v17);
        }

        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr != 32 && valuePtr != 1094862674 && valuePtr != 1111970369 && valuePtr != 1647719521 && valuePtr != 1380401729)
        {
          if (vtPixelFormatContainsAlpha(ValueAtIndex))
          {
            v34 = 1;
          }
        }

        ++v13;
      }

      while (v13 < CFArrayGetCount(v11));
      v23 = v34 == 0;
    }

    if (!CFArrayGetCount(v9) && CFArrayGetCount(v11) >= 1)
    {
      v24 = 0;
      do
      {
        v25 = CFArrayGetValueAtIndex(v11, v24);
        SimilarPixelFormat = vtCreateSimilarPixelFormat(v25);
        if (SimilarPixelFormat)
        {
          v27 = SimilarPixelFormat;
          v28 = CFArrayGetCount(v7);
          v29 = OUTLINED_FUNCTION_6_1(v28);
          if (v29 != -1)
          {
            v30 = v29;
            CFArrayAppendValue(v9, v27);
            CFArrayRemoveValueAtIndex(v7, v30);
          }

          CFRelease(v27);
        }

        ++v24;
      }

      while (v24 < CFArrayGetCount(v11));
    }

    if (!v23 && CFArrayGetCount(v7) >= 1)
    {
      v31 = 0;
      do
      {
        v32 = CFArrayGetValueAtIndex(v7, v31);
        if (vtPixelFormatContainsAlpha(v32))
        {
          CFArrayAppendValue(v9, v32);
          CFArrayRemoveValueAtIndex(v7, v31);
        }

        else
        {
          ++v31;
        }
      }

      while (v31 < CFArrayGetCount(v7));
    }

    if (CFArrayGetCount(v9) >= 1)
    {
      v36.length = CFArrayGetCount(v7);
      v36.location = 0;
      CFArrayAppendArray(v9, v7, v36);
      v3 = v9;
      v9 = 0;
    }

    else
    {
LABEL_52:
      v3 = 0;
    }

    CFRelease(v11);
    CFRelease(v7);
    if (v9)
    {
      goto LABEL_54;
    }
  }

  return v3;
}

const void *vtPixelFormatRequiresRGhAFallback(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (v1 == CFNumberGetTypeID())
    {
      UInt64 = FigCFNumberGetUInt64();
      return (UInt64 == 1647392369 || UInt64 == 1651521076 || UInt64 == 1651519798);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *vtGetPixelFormatColorSpace(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      return 0;
    }
  }

  return result;
}

uint64_t vtGetPixelFormatRange(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      CFDictionaryGetValue(result, *MEMORY[0x1E6966248]);
      if (FigCFEqual())
      {
        return 1;
      }

      else if (FigCFEqual())
      {
        return 2;
      }

      else if (FigCFEqual())
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFNumber *vtGetPixelFormatBitsPerComponent(const __CFNumber *result)
{
  valuePtr = 0;
  v1 = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    result = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (result)
    {
      result = CFDictionaryGetValue(result, *MEMORY[0x1E6966218]);
      if (result)
      {
        CFNumberGetValue(result, kCFNumberSInt32Type, &v1);
        return v1;
      }
    }
  }

  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_6(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_8(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtBuildPixelBufferPoolsCommon_cold_10(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateNamedPixelBufferPool_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateReorderedPixelBufferAttributes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreatePaddingNALUForEncoder(uint64_t a1, const __CFData **a2)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM();
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 29765) != 1)
  {
    v4 = malloc_type_malloc(0x1F4uLL, 0x2AB3593EuLL);
    if (v4)
    {
      v6 = FigHEVCBridge_WritePaddingNALU();
      if (v6)
      {
LABEL_11:
        v5 = v6;
        goto LABEL_8;
      }

      v7 = CFDataCreate(*MEMORY[0x1E695E480], v4, 500);
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        *(a1 + 24) = CFDataGetLength(v7);
        *a2 = v8;
        goto LABEL_8;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v6 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
LABEL_8:
  free(v4);
  return v5;
}

uint64_t VTHDRMetadataGenerationSessionCreateSDRPreservationStaticData(uint64_t a1, void *a2)
{
  bzero(&v5, 0x650uLL);
  if (a2 && *(a1 + 29765) && *(a1 + 29764))
  {
    v5 = 260;
    v6 = 1;
    v7 = 1000;
    v8 = 0;
    v9 = xmmword_18FECDE60;
    v10 = 0x5A4B32190A050109;
    v11 = 25439;
    v12 = xmmword_18FECDE70;
    v13 = xmmword_18FECDE80;
    v14 = 10000;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = 26870170;
    v19 = 9;
    v20 = xmmword_18FECDE90;
    v21 = 922;
    v22 = 0;
    result = FigHEVCBridge_CreateHDR10PlusITUT35Payload();
    if (!result)
    {
      *a2 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionInsertData(uint64_t a1, CMSampleBufferRef sbuf, const __CFData *a3, CFTypeRef *a4)
{
  destination = 0;
  v43 = 0;
  theBuffer = 0;
  cf = 0;
  theData = 0;
  if (!a1 || !sbuf || !a3 || !a4 || CMSampleBufferGetNumSamples(sbuf) != 1 || (DataBuffer = CMSampleBufferGetDataBuffer(sbuf)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    SEIMessageWithITUT35Payload = FigSignalErrorAtGM();
    goto LABEL_45;
  }

  v9 = DataBuffer;
  SampleSize = CMSampleBufferGetSampleSize(sbuf, 0);
  Length = CFDataGetLength(a3);
  if (*(a1 + 29765) == 1)
  {
    SEIMessageWithITUT35Payload = FigHEVCBridge_CreateSEIMessageWithITUT35Payload();
    if (!SEIMessageWithITUT35Payload)
    {
      v13 = CFDataGetLength(0);
      v14 = *MEMORY[0x1E695E480];
      SEIMessageWithITUT35Payload = OUTLINED_FUNCTION_4_3(v13, v15, v16, v17, v18, v19, v20, v21, 0, theBuffer);
      if (!SEIMessageWithITUT35Payload)
      {
        v22 = v13 + 7;
        SEIMessageWithITUT35Payload = CMBlockBufferAppendMemoryBlock(theBuffer, 0, v22, v14, 0, 0, v22, 1u);
        if (!SEIMessageWithITUT35Payload)
        {
          SEIMessageWithITUT35Payload = writeNALU(theBuffer, 0, 1, 78, theData);
          if (!SEIMessageWithITUT35Payload)
          {
            SEIMessageWithITUT35Payload = CMBlockBufferAppendBufferReference(theBuffer, v9, 0, 0, 0);
            if (!SEIMessageWithITUT35Payload)
            {
              v23 = v22 + SampleSize;
              goto LABEL_34;
            }
          }
        }
      }
    }

LABEL_45:
    CopyWithNewSizesAndDataBuffer = SEIMessageWithITUT35Payload;
    v37 = 0;
    goto LABEL_37;
  }

  v24 = Length;
  SEIMessageWithITUT35Payload = CFRetain(a3);
  theData = SEIMessageWithITUT35Payload;
  v32 = *(a1 + 24);
  if (v32 < v24 || SampleSize <= v32)
  {
    goto LABEL_28;
  }

  v34 = SampleSize - v32;
  SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, SampleSize - v32, 4uLL, &destination);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  if (*(a1 + 24) - 4 != bswap32(destination))
  {
    goto LABEL_28;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, v34 + 4, 1uLL, &v43 + 1);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  if (HIBYTE(v43) == 76)
  {
    SEIMessageWithITUT35Payload = CMBlockBufferCopyDataBytes(v9, v34 + 5, 1uLL, &v43);
    if (SEIMessageWithITUT35Payload)
    {
      goto LABEL_45;
    }

    theData = a3;
    if (v43 == 1)
    {
      SEIMessageWithITUT35Payload = writeNALU(v9, v34, 0, 124, a3);
      if (SEIMessageWithITUT35Payload)
      {
        goto LABEL_45;
      }

      v23 = v24 + v34 + 6;
      SEIMessageWithITUT35Payload = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], v9, 0, v23, 0, &theBuffer);
      if (SEIMessageWithITUT35Payload)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }
  }

  else
  {
LABEL_28:
    theData = a3;
  }

  v35 = *MEMORY[0x1E695E480];
  SEIMessageWithITUT35Payload = OUTLINED_FUNCTION_4_3(SEIMessageWithITUT35Payload, v25, v26, v27, v28, v29, v30, v31, theData, theBuffer);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferAppendBufferReference(theBuffer, v9, 0, SampleSize, 0);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = CMBlockBufferAppendMemoryBlock(theBuffer, 0, v24 + 6, v35, 0, 0, v24 + 6, 1u);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  SEIMessageWithITUT35Payload = writeNALU(theBuffer, SampleSize, 0, 124, a3);
  if (SEIMessageWithITUT35Payload)
  {
    goto LABEL_45;
  }

  v23 = v24 + 6 + SampleSize;
LABEL_34:
  v36 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v37 = v36;
  if (v36)
  {
    *v36 = v23;
    CopyWithNewSizesAndDataBuffer = FigSampleBufferCreateCopyWithNewSizesAndDataBuffer();
    if (!CopyWithNewSizesAndDataBuffer)
    {
      *a4 = cf;
      cf = 0;
    }
  }

  else
  {
    CopyWithNewSizesAndDataBuffer = 0;
  }

LABEL_37:
  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  free(v37);
  return CopyWithNewSizesAndDataBuffer;
}

uint64_t writeNALU(OpaqueCMBlockBuffer *a1, size_t a2, int a3, char a4, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v12 = Length;
  v13 = 2;
  if (a3)
  {
    v13 = 3;
  }

  v14 = Length + v13;
  sourceBytes[0] = HIBYTE(v14);
  sourceBytes[1] = BYTE2(v14);
  sourceBytes[2] = BYTE1(v14);
  sourceBytes[3] = v14;
  sourceBytes[4] = a4;
  sourceBytes[5] = 1;
  result = CMBlockBufferReplaceDataBytes(sourceBytes, a1, a2, 6uLL);
  if (!result)
  {
    v16 = a2 + 6;
    result = CMBlockBufferReplaceDataBytes(BytePtr, a1, v16, v12);
    if (a3)
    {
      if (!result)
      {
        v17 = 0x80;
        return CMBlockBufferReplaceDataBytes(&v17, a1, v12 + v16, 1uLL);
      }
    }
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionCopySessionState(uint64_t a1, __CFDictionary **a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v12 = FigSignalErrorAtGM();
      if (v12)
      {
        return v12;
      }

      goto LABEL_19;
    }

    v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v6)
    {
      v7 = v6;
      v8 = FigCFDictionarySetDouble();
      if (!v8)
      {
        v8 = FigCFDictionarySetDouble();
        if (!v8)
        {
          v8 = FigCFDictionarySetDouble();
          if (!v8)
          {
            v8 = FigCFDictionarySetDouble();
            if (!v8)
            {
              v8 = FigCFDictionarySetDouble();
              if (!v8)
              {
                v8 = FigCFDictionarySetInt32();
                if (!v8)
                {
                  v8 = FigCFDictionarySetInt32();
                  if (!v8)
                  {
                    v8 = FigCFDictionarySetInt32();
                    if (!v8)
                    {
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      FigCFDictionarySetBoolean();
                      if (!*(a1 + 141) || (v8 = FigCFDictionarySetCGSize(), !v8) && (v8 = FigCFDictionarySetCGRect(), !v8))
                      {
                        CFDictionarySetValue(Mutable, @"DolbyStatistics", v7);
                        CFRelease(v7);
LABEL_16:
                        FigCFDictionarySetDouble();
                        v9 = MEMORY[0x1E695E4D0];
                        if (!*(a1 + 32))
                        {
                          v9 = MEMORY[0x1E695E4C0];
                        }

                        CFDictionarySetValue(Mutable, @"FirstFrame", *v9);
LABEL_19:
                        v10 = 0;
                        *a2 = Mutable;
                        return v10;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v10 = v8;
      CFRelease(v7);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v13 = FigSignalErrorAtGM();
      if (!v13)
      {
        CFDictionarySetValue(Mutable, @"DolbyStatistics", 0);
        goto LABEL_16;
      }

      v10 = v13;
    }

    CFRelease(Mutable);
    return v10;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_10_0();

  return FigSignalErrorAtGM();
}

uint64_t VTHDRMetadataGenerationSessionCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t getValuesFromDictionary_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t getValuesFromDictionary_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t createDataFromStatistics_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatistics_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostCopyDecoderListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v11 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  cf = 0;
  theArray = 0;
  v8 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (v5 || (vtPopulateVideoDecoderRegistry(), v5 = FigRegistryCopyFilteredItemList(), v5) || (v5 = VTParavirtualizationCreateReplyAndByteStream(a1, 4, &cf, &v8), v5) || (v5 = VTParavirtualizationMessageAppendCFPropertyList(), v5))
  {
    appended = v5;
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    appended = VTParavirtualizationMessageAppendUInt32();
    if (!appended)
    {
      *a2 = cf;
      cf = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return appended;
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedDecodersOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

BOOL vtFilterRegistryItemByCodecType(CFTypeRef *a1)
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(0, @"VTCodecType");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 == CFStringGetTypeID())
  {
    if (!CFEqual(v3, *a1))
    {
      return 0;
    }
  }

  else
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFArrayGetTypeID())
    {
      return 0;
    }

    Count = CFArrayGetCount(v3);
    if (!OUTLINED_FUNCTION_4_4(Count))
    {
      return 0;
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  return FigCFEqual() == 0;
}

uint64_t vtFilterRegistryItemToSkipNonParavirtualizedHardwareAcceleratedDecoders()
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

uint64_t vtCopyExpandedDecoderListForWrappers(const __CFArray *a1, __int128 *a2, __CFArray **a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  if (!a1)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_49;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_49;
  }

  v10 = a1;
  Count = CFArrayGetCount(a1);
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    goto LABEL_77;
  }

  v33 = a3;
  if (Count < 1)
  {
LABEL_48:
    v5 = 0;
    MutableCopy = 0;
    v8 = 0;
    v4 = 0;
    *v33 = v9;
    v9 = 0;
    goto LABEL_49;
  }

  v14 = 0;
  v38 = *MEMORY[0x1E695E4D0];
  v15 = @"CMDependencies";
  theArray = Mutable;
  v34 = v10;
  v37 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
    if (ValueAtIndex)
    {
      break;
    }

LABEL_44:
    if (++v14 == Count)
    {
      goto LABEL_48;
    }
  }

  v17 = ValueAtIndex;
  v18 = v15;
  v19 = FigRegistryItemCopyMatchingInfo();
  if (v19)
  {
    goto LABEL_78;
  }

  if (!v49)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_11_1();
LABEL_77:
    v19 = FigSignalErrorAtGM();
LABEL_78:
    v4 = v19;
    v5 = 0;
    MutableCopy = 0;
    v8 = 0;
    goto LABEL_49;
  }

  if (v38 != CFDictionaryGetValue(v49, @"VTIsWrapperDecoder"))
  {
    CFArrayAppendValue(v9, v17);
LABEL_40:
    if (v49)
    {
      CFRelease(v49);
      v49 = 0;
    }

    Count = v37;
    if (v48)
    {
      CFRelease(v48);
      v48 = 0;
    }

    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(v49, @"VTWrapsCodecType");
  if (!Value)
  {
    goto LABEL_40;
  }

  v21 = Value;
  v43 = 0;
  v19 = FigRegistryItemCopyDescription();
  if (v19)
  {
    goto LABEL_78;
  }

  v39 = CFDictionaryGetValue(v48, @"CMClassImplementationID");
  v41 = *a2;
  v42 = *(a2 + 2);
  *&v41 = v21;
  OUTLINED_FUNCTION_2_3();
  v19 = FigRegistryCopyFilteredItemList();
  if (v19)
  {
    goto LABEL_78;
  }

  if (a4 <= 10)
  {
    v19 = vtCopyExpandedDecoderListForWrappers(v47, &v41, &v43, (a4 + 1));
    if (v19)
    {
      goto LABEL_78;
    }
  }

  v22 = v47;
  if (v43)
  {
    if (v47)
    {
      CFRelease(v47);
    }

    v22 = v43;
    v47 = v43;
    v43 = 0;
  }

  if (!v22 || (v23 = CFArrayGetCount(v22), v23 < 1))
  {
LABEL_37:
    if (v47)
    {
      CFRelease(v47);
      v47 = 0;
    }

    v9 = theArray;
    v10 = v34;
    goto LABEL_40;
  }

  v24 = v23;
  v25 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v47, v25);
    v26 = FigRegistryItemCopyMatchingInfo();
    if (v26 || (v26 = FigRegistryItemCopyDescription(), v26))
    {
      v4 = v26;
      v5 = 0;
      MutableCopy = 0;
      goto LABEL_73;
    }

    v27 = CFDictionaryGetValue(v45, @"CMClassImplementationID");
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      v5 = 0;
LABEL_72:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_11_1();
      v4 = FigSignalErrorAtGM();
LABEL_73:
      v8 = 0;
      goto LABEL_74;
    }

    v28 = CFDictionaryGetValue(v49, @"VTCodecType");
    CFDictionarySetValue(MutableCopy, @"VTCodecType", v28);
    CFDictionarySetValue(MutableCopy, @"VTWrappedDecoderID", v27);
    v5 = FigCFDictionaryCreateMutableCopy();
    if (!v5)
    {
      goto LABEL_72;
    }

    v29 = CFStringCreateWithFormat(v12, 0, @"%@:%@", v39, v27);
    if (!v29)
    {
      goto LABEL_72;
    }

    v8 = v29;
    CFDictionarySetValue(v5, @"CMClassImplementationID", v29);
    v30 = CFDictionaryGetValue(v45, v18);
    if (v30)
    {
      CFDictionarySetValue(v5, v18, v30);
    }

    CFDictionarySetValue(v5, @"CMMatchingInfo", MutableCopy);
    Copy2 = FigRegistryItemCreateCopy2();
    if (Copy2)
    {
      break;
    }

    CFArrayAppendValue(theArray, v44);
    if (v46)
    {
      CFRelease(v46);
      v46 = 0;
    }

    v15 = v18;
    if (v45)
    {
      CFRelease(v45);
      v45 = 0;
    }

    CFRelease(MutableCopy);
    CFRelease(v8);
    CFRelease(v5);
    if (v44)
    {
      CFRelease(v44);
      v44 = 0;
    }

    if (v24 == ++v25)
    {
      goto LABEL_37;
    }
  }

  v4 = Copy2;
LABEL_74:
  v9 = theArray;
LABEL_49:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v4;
}

CFComparisonResult vtCompareCodecName(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"CodecName");
  v4 = CFDictionaryGetValue(a2, @"CodecName");
  if (!Value)
  {
    return -1;
  }

  v5 = v4;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    return -1;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = CFGetTypeID(v5);
  if (v7 != CFStringGetTypeID())
  {
    return 1;
  }

  return CFStringCompare(Value, v5, 0);
}

void vtLoadParavirtualizedVideoDecoders()
{
  if (qword_1ED6D4070 != -1)
  {
    dispatch_once(&qword_1ED6D4070, &__block_literal_global_3);
  }

  if (!VTParavirtualizationGuestInstallHandlerForUUID(&stru_1ED6D4078, &__block_literal_global_181, 0))
  {
    v37 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    appended = VTParavirtualizationCreateMessageAndByteStream(1684366195, 1, &stru_1ED6D4078, 0, &v36, &v35);
    if (!appended)
    {
      OUTLINED_FUNCTION_6_2();
      appended = VTParavirtualizationMessageAppendUInt32();
      if (!appended)
      {
        v31 = kVTParavirtualizationDefaultReplyTimeout;
        v32 = 0;
        appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v36, &v31, &v34);
        if (!appended)
        {
          appended = VTParavirtualizationMessageCopyCFPropertyList(v34, 744777059, &v33);
          if (!appended)
          {
            if (v33)
            {
              v1 = CFGetTypeID(v33);
              if (v1 == CFArrayGetTypeID())
              {
                v2 = v33;
                v33 = 0;
                OUTLINED_FUNCTION_6_2();
                VTParavirtualizationMessageGetUInt32();
                v4 = v3;
                goto LABEL_11;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_11_1();
            appended = FigSignalErrorAtGM();
          }
        }
      }
    }

    v4 = appended;
    v2 = 0;
LABEL_11:
    if (v33)
    {
      CFRelease(v33);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (!v4)
    {
      if (!v2)
      {
        return;
      }

      Count = CFArrayGetCount(v2);
      if (Count < 1)
      {
LABEL_35:
        CFRelease(v2);
        return;
      }

      v5 = 0;
      v27 = *MEMORY[0x1E695E4C0];
      v28 = v2;
      v6 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        if (!ValueAtIndex || (v8 = ValueAtIndex, v9 = CFGetTypeID(ValueAtIndex), v9 != CFDictionaryGetTypeID()))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_11_1();
          FigSignalErrorAtGM();
          goto LABEL_34;
        }

        LODWORD(v31) = 0;
        Value = CFDictionaryGetValue(v8, @"CMClassImplementationID");
        v30 = CFDictionaryGetValue(v8, @"VTCodecType");
        v11 = CFStringCreateWithFormat(v6, 0, @"paravirtualized:%@", Value);
        FigCFDictionaryGetInt32IfPresent();
        v12 = CFDictionaryGetValue(v8, @"CMClassImplementationName");
        v13 = CFDictionaryGetValue(v8, @"VTDecoderCapabilities");
        v14 = CFDictionaryGetValue(v8, @"IsPreferredInternalPlugin");
        v15 = v14 ? v14 : v27;
        v16 = CFStringCreateWithFormat(v6, 0, @"paravirtualized:%@", v12, v21, v22, v23, v24, v25, v26);
        v25 = v15;
        v26 = 0;
        v23 = v13;
        v24 = @"IsPreferredInternalPlugin";
        v21 = Value;
        v22 = @"VTDecoderCapabilities";
        if (vtRegisterVideoDecoderWithSpecificationArgumentWithInfoKeysAndValues(v30, v31, v16, v11, v17, v18, v19, v20, @"VTHostDecoderID"))
        {
          break;
        }

        if (v16)
        {
          CFRelease(v16);
        }

        v2 = v28;
        if (v11)
        {
          CFRelease(v11);
        }

        if (Count == ++v5)
        {
          goto LABEL_34;
        }
      }

      if (v16)
      {
        CFRelease(v16);
      }

      v2 = v28;
      if (v11)
      {
        CFRelease(v11);
      }
    }

LABEL_34:
    if (!v2)
    {
      return;
    }

    goto LABEL_35;
  }
}

uint64_t __vtLoadParavirtualizedVideoDecoders_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = stru_1ED6D4078;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], stru_1ED6D4078);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      if (!vtUnregisterParavirtualizedVideoDecoders())
      {
        _MergedGlobals_6 = 1;
      }
    }

    else if (v5 == 1115252001 && !vtUnregisterParavirtualizedVideoDecoders())
    {
      _MergedGlobals_6 = 1;
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedDecodersOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtFilterRegistryItemByCodecTypeAndVideoDecoderSpecification(uint64_t a1)
{
  cf = 0;
  theDict = 0;
  context = *(a1 + 8);
  v46 = 1;
  HIWORD(v42) = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_51;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = CFDictionaryGetValue(v2, @"DecoderID") == 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    v3 = 1;
  }

  Value = CFDictionaryGetValue(theDict, @"VTCodecType");
  v5 = Value;
  if (!Value)
  {
    goto LABEL_52;
  }

  v6 = CFGetTypeID(Value);
  if (v6 == CFStringGetTypeID())
  {
    if (!CFEqual(v5, *a1))
    {
LABEL_51:
      v5 = 0;
LABEL_52:
      v37 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      goto LABEL_51;
    }

    Count = CFArrayGetCount(v5);
    if (!OUTLINED_FUNCTION_4_4(Count))
    {
      goto LABEL_51;
    }
  }

  v9 = *(a1 + 8);
  v10 = MEMORY[0x1E695E4D0];
  if (v9)
  {
    v11 = *MEMORY[0x1E695E4C0];
    if (v11 == CFDictionaryGetValue(v9, @"AllowParavirtualizedDecoder"))
    {
      v12 = *v10;
      if (v12 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized"))
      {
        goto LABEL_51;
      }
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = *v10;
      if (v14 == CFDictionaryGetValue(v13, @"RequireParavirtualizedDecoder") && v11 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized"))
      {
        goto LABEL_51;
      }
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(a1 + 17))
  {
    buffer = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  v15 = VTGetAllowedDecoderList();
  if (v15)
  {
    v16 = CFArrayGetCount(v15);
    if (!OUTLINED_FUNCTION_4_4(v16))
    {
      goto LABEL_51;
    }
  }

  if (FigCFEqual())
  {
    v38 = *(a1 + 8);
    if (v38)
    {
      v39 = *v10;
      if (v39 != CFDictionaryGetValue(v38, @"EnableAppleOnlySWAV1"))
      {
        goto LABEL_51;
      }
    }
  }

  BYTE4(v42) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  VTAvoidHardwareDecoders();
  v17 = VTAvoidHardwareJPEGDecoders();
  if (v17)
  {
    v17 = OUTLINED_FUNCTION_8_2(v17, v18, v19, v20, v21, v22, v23, v24, v42, context, v46, cf, theDict, v49, v50, buffer);
    if (v17)
    {
      OUTLINED_FUNCTION_3_4();
      v27 = v25 | v26;
      v28 = (v27 - 1835692129) < 2 || v27 == 1635152416;
      v29 = v28 || v27 == 1684890161;
      v30 = v29 || v27 == 1785750887;
      if (v30 && HIBYTE(v42))
      {
        goto LABEL_51;
      }
    }
  }

  if (OUTLINED_FUNCTION_8_2(v17, v18, v19, v20, v21, v22, v23, v24, v42, context, v46, cf, theDict, v49, v50, buffer))
  {
    OUTLINED_FUNCTION_3_4();
    v33 = FigCodecTypeIsProtected(v31 | v32) != 0;
  }

  else
  {
    v33 = 0;
  }

  if (v43)
  {
    v34 = 0;
  }

  else
  {
    v34 = v3;
  }

  if (!v34)
  {
    v37 = 0;
    goto LABEL_61;
  }

  if (*(a1 + 16) && !v44)
  {
    goto LABEL_51;
  }

  v35 = CFDictionaryGetValue(theDict, @"VTRequiredSpecificationEntries");
  if (v44 != 0 && !v33)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v37 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"EnableHardwareAcceleratedVideoDecoder", *v10);
      v35 = v37;
      goto LABEL_63;
    }
  }

  v37 = 0;
  if (!v35)
  {
LABEL_61:
    v5 = 1;
    goto LABEL_53;
  }

LABEL_63:
  v41 = CFGetTypeID(v35);
  if (v41 != CFDictionaryGetTypeID())
  {
    goto LABEL_61;
  }

  CFDictionaryApplyFunction(v35, vtCheckRequiredSpecificationKey, &context);
  v5 = v46;
LABEL_53:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v5;
}

uint64_t vtRegisterVideoDecoderInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTCopyVideoDecoderRegistryMatchArrayForCodecType_cold_2(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result != 0;
  return result;
}

uint64_t VTCompressionSessionRemoteCallbackServer_PrepareToEncodeFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    v5 = v4;
    *(v4 + 148) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_EncodeReturn(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v8 = weakReferenceTable_CopyPointerFromKey();
  if (v8)
  {
    v9 = v8;
    *(v8 + 144) = a3;
    *(v8 + 148) = a5;
    *(v8 + 152) = a4;
    FigSemaphoreSignal();
    CFRelease(v9);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_CompleteFramesReturn(uint64_t a1, uint64_t a2, int a3)
{
  v4 = weakReferenceTable_CopyPointerFromKey();
  if (v4)
  {
    v5 = v4;
    *(v4 + 176) = a3;
    FigSemaphoreSignal();
    CFRelease(v5);
  }

  return 0;
}

CFStringRef VTMultiPassStorageRemote_CopyIdentifier(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = VTCompressionSessionRemoteClient_MultiPassStorageCopyIdentifier(*(a1 + 24), cStr);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
  }

  vtcsr_handleMachErrorsInternal(a1, v2);
  return v3;
}

uint64_t VTCompressionSessionRemoteCallbackServer_PrepareToEncodeTilesReturn(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = weakReferenceTable_CopyPointerFromKey();
  if (v6)
  {
    v7 = v6;
    *(v6 + 156) = a3;
    *(v6 + 148) = a4;
    FigSemaphoreSignal();
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTTemporalFilterRemote_CopyList(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  CFDataFromCFPropertyList = vtcsr_oneTimeInitialization();
  if (CFDataFromCFPropertyList || a1 && (CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(), CFDataFromCFPropertyList) || (CFDataFromCFPropertyList = FigRPCCreateServerConnectionForObject(), CFDataFromCFPropertyList) || *(v8 + 6) && (CFDataFromCFPropertyList = FigRemote_CopyArrayOfPropertyListFromData(), CFDataFromCFPropertyList))
  {
    v5 = CFDataFromCFPropertyList;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  if (v16)
  {
    FigRPCDisposeServerConnection();
  }

  if (*(v8 + 6))
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], v12[3]);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t VTTemporalFilterSessionRemote_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  OUTLINED_FUNCTION_1_4();
  v16 = vtcsr_oneTimeInitialization();
  if (v16)
  {
    v19 = v16;
LABEL_18:
    Instance = 0;
    goto LABEL_19;
  }

  MEMORY[0x193AE3010](&VTCompressionSessionRemoteGetTypeID_sRegisterVTCompressionSessionRemoteOnce, vtscr_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[12] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    Instance[16] = a10;
    Instance[23] = a11;
    Instance[10] = dispatch_group_create();
    Instance[11] = FigDispatchQueueCreateWithPriority();
    Instance[9] = dispatch_queue_create("com.apple.coremedia.compressionsession.pendingframequeue", 0);
    Instance[17] = FigSemaphoreCreate();
    Instance[21] = FigSemaphoreCreate();
    Instance[27] = 1;
    Instance[6] = FigSemaphoreCreate();
    if (a3)
    {
      FigCFStringGetCStringPtrAndBufferToFree();
    }

    if (!a6 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
    {
      if (!a7 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
      {
        if (!a8 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
        {
          if (!a9 || (Key = FigCreateCFDataFromCFPropertyList(), !Key))
          {
            Instance[30] = 0;
            Key = weakReferenceTable_AddPointerAndGetKey();
            if (!Key)
            {
              Key = FigRPCCreateServerConnectionForObject();
              if (!Key)
              {
                Key = FigRPCGetServerConnectionInfo();
                if (!Key)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListener();
                  v19 = 0;
                  if (!a12)
                  {
                    goto LABEL_19;
                  }

                  *a12 = Instance;
                  goto LABEL_18;
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
    fig_log_get_emitter();
    Key = FigSignalErrorAtGM();
  }

  v19 = Key;
LABEL_19:
  v20 = vtcsr_handleMachErrorsInternal(Instance, v19);
  free(0);
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v20;
}

uint64_t VTCompressionSessionRemoteCallbackServer_NotificationIsPending()
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    v12 = 0;
    if (!*(v0 + 60))
    {
      v2 = *MEMORY[0x1E695E480];
      v3 = MEMORY[0x1E69E9A60];
      do
      {
        v11 = 0;
        v10 = 0;
        v13 = 0;
        if (!VTCompressionSessionRemoteClient_GetNextPendingNotification(*(v1 + 24), &v13, &v12, cStr, &v11, &v10))
        {
          v4 = v11;
          v5 = v10;
          cf = 0;
          if (!*(v1 + 60))
          {
            v6 = CFStringCreateWithCString(v2, cStr, 0);
            if (v6 && (!v4 || !v5 || !FigCreateCFPropertyListFromData()))
            {
              v7 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v7)
              {
                v8 = v7;
                CMNotificationCenterGetDefaultLocalCenter();
                CMNotificationCenterPostNotification();
                CFRelease(v8);
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v6)
            {
              CFRelease(v6);
            }
          }

          MEMORY[0x193AE4440](*v3, v11, v10);
        }
      }

      while (v13);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTCompressionSessionRemoteCallbackServer_FrameIsPending()
{
  v0 = weakReferenceTable_CopyPointerFromKey();
  if (v0)
  {
    v1 = v0;
    if (!*(v0 + 60))
    {
      vtcsr_dequeueAllPendingFramesAndCallbackClientForEach(v0, 0, 0);
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t VTCompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_AddPointerAndGetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_RemovePointer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTCompressionSessionRemote_SetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_GetPixelBufferPool_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_GetPixelBufferPool_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_PrepareToEncodeFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t weakReferenceTable_CopyPointerFromKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCompressionSessionRemote_EncodeFrameCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_CompleteFrames_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v9 = *a2;
  v10 = *(a2 + 16);
  v6 = VTCompressionSessionRemoteClient_CompleteFrames(v5, &v9);
  if (v6)
  {
    goto LABEL_6;
  }

  v6 = OUTLINED_FUNCTION_5_4();
  v7 = *(a1 + 176);
  if (!v7)
  {
    v6 = OUTLINED_FUNCTION_3_5(v6, 0);
    if (!v6)
    {
      OUTLINED_FUNCTION_2_4();
      v6 = FigSemaphoreSignal();
      v7 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v7 = v6;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v6, v7);
  *a3 = result;
  return result;
}

uint64_t VTMultiPassStorageRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_PrepareToEncodeTiles_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTTileCompressionSessionRemote_CompleteTiles_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = VTCompressionSessionRemoteClient_CompleteTiles(*(v2 + 24));
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_5_4();
  v4 = *(v1 + 176);
  if (!v4)
  {
    v3 = OUTLINED_FUNCTION_3_5(v3, 0);
    if (!v3)
    {
      OUTLINED_FUNCTION_2_4();
      v3 = FigSemaphoreSignal();
      v4 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v4 = v3;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v3, v4);
  *v0 = result;
  return result;
}

uint64_t VTMotionEstimationSessionRemote_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCompressionSessionRemote_CompleteMotionVectors_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = *(v2 + 232);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 232) = 0;
  }

  v4 = VTCompressionSessionRemoteClient_CompleteMotionEstimation(*(v1 + 24));
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_5_4();
  v5 = *(v1 + 176);
  if (!v5)
  {
    v4 = OUTLINED_FUNCTION_3_5(v4, 0);
    if (!v4)
    {
      OUTLINED_FUNCTION_2_4();
      v4 = FigSemaphoreSignal();
      v5 = 0;
      goto LABEL_7;
    }

LABEL_8:
    v5 = v4;
  }

LABEL_7:
  result = OUTLINED_FUNCTION_4_5(v4, v5);
  *v0 = result;
  return result;
}

uint64_t VTTemporalFilterSessionRemote_CompleteFrames_cold_1()
{
  OUTLINED_FUNCTION_1_4();
  v3 = VTCompressionSessionRemoteClient_CompleteTemporalFilterFrames(*(v2 + 24));
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = OUTLINED_FUNCTION_5_4();
  v4 = *(v1 + 176);
  if (!v4)
  {
    v3 = OUTLINED_FUNCTION_3_5(v3, 0);
    if (!v3)
    {
      OUTLINED_FUNCTION_2_4();
      v3 = FigSemaphoreSignal();
      v4 = 0;
      goto LABEL_5;
    }

LABEL_6:
    v4 = v3;
  }

LABEL_5:
  result = OUTLINED_FUNCTION_4_5(v3, v4);
  *v0 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerEncoderSpecification"))
  {
    v8 = *(DerivedStorage + 56);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    if (v10 && CFEqual(a2, @"MinAndMaxDisparity") || (OUTLINED_FUNCTION_2_5(), v10) && CFEqual(a2, @"MinAndMaxDepth"))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v12 = Mutable;
        FigCFDictionarySetFloat();
        FigCFDictionarySetFloat();
        result = 0;
        *a4 = v12;
      }

      else
      {
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      v14 = *(DerivedStorage + 72);
      if (v14)
      {

        return VTSessionCopyProperty(v14, a2, a3, a4);
      }

      else
      {
        return 4294954393;
      }
    }
  }

  return result;
}

uint64_t DepthWrapperEncoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"ProfileLevel"))
  {
    if (FigCFEqual())
    {
      return 0;
    }
  }

  else
  {
    if (!CFEqual(a2, @"SublayerEncoderSpecification"))
    {
      if (CFEqual(a2, @"InputPixelFormat"))
      {
        if (!a3)
        {
          goto LABEL_40;
        }

        v9 = CFGetTypeID(a3);
        if (v9 != CFNumberGetTypeID())
        {
          goto LABEL_40;
        }

        if (*(DerivedStorage + 72))
        {
          LODWORD(v16.value) = 1278226736;
          v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v16);
          v6 = VTSessionSetProperty(*(DerivedStorage + 72), a2, v10);
          if (v10)
          {
            CFRelease(v10);
          }

          return v6;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        if (v11 && CFEqual(a2, @"MinAndMaxDisparity") || (OUTLINED_FUNCTION_2_5(), v11) && CFEqual(a2, @"MinAndMaxDepth"))
        {
          if (a3)
          {
            v12 = CFGetTypeID(a3);
            if (v12 == CFDictionaryGetTypeID())
            {
              v17 = 16.0;
              v18 = 0.0;
              if (FigCFDictionaryGetFloatIfPresent() && v18 >= 0.0 && v18 <= 32768.0 && FigCFDictionaryGetFloatIfPresent() && v17 > v18 && v18 <= 32768.0)
              {
                v13 = *(DerivedStorage + 72);
                v16 = **&MEMORY[0x1E6960C70];
                v6 = VTCompressionSessionCompleteFrames(v13, &v16);
                v14 = v17;
                *(DerivedStorage + 40) = v18;
                *(DerivedStorage + 44) = v14;
                *(DerivedStorage + 104) = 0;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_2();
                return FigSignalErrorAtGM();
              }

              return v6;
            }
          }

          goto LABEL_40;
        }

        v15 = *(DerivedStorage + 72);
        if (v15)
        {
          v6 = VTSessionSetProperty(v15, a2, a3);
          if (v6)
          {
            if (CFEqual(a2, @"SourceFrameCount"))
            {
              return 0;
            }

            else
            {
              return v6;
            }
          }

          return v6;
        }
      }

      return 4294954393;
    }

    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDictionaryGetTypeID())
      {
        v6 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = a3;
        CFRetain(a3);
        if (!v6)
        {
          return v6;
        }

        CFRelease(v6);
        return 0;
      }
    }
  }

LABEL_40:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t DepthWrapperEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v7 = HIDWORD(a3);
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  qmemcpy(v21, "010Lsidh", sizeof(v21));
  sourceImageBufferAttributes = 0;
  v20 = 0;
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 20) = a3;
  *(DerivedStorage + 24) = v7;
  if (*(DerivedStorage + 16) == 1684369512)
  {
    v21[1] = 1751410032;
  }

  v10 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v9 + 48);
  if (v11)
  {
    CFRelease(v11);
    *(v9 + 48) = 0;
  }

  v12 = depthencoder_createPixelBufferAttributesDictionary(a3, v7, &v21[1], &v20);
  v13 = v20;
  if (v12 || (VTEncoderSessionSetPixelBufferAttributes(*(v9 + 8), v20), v12 = depthencoder_createPixelBufferAttributesDictionary(a3, v7, v21, &sourceImageBufferAttributes), v12) || (v14 = (v9 + 72), v12 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], a3, v7, 0x68766331u, *(v9 + 56), sourceImageBufferAttributes, *MEMORY[0x1E695E480], 0, 0, (v9 + 72)), v12) || (v12 = VTSessionSetProperty(*v14, @"ProfileLevel", @"HEVC_Monochrome10_AutoLevel"), v12))
  {
    v17 = v12;
    if (v13)
    {
LABEL_19:
      CFRelease(v13);
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E4D0];
    if (*(v9 + 16) == 1684369512)
    {
      VTSessionSetProperty(*(v9 + 72), @"EncodesDepth", *MEMORY[0x1E695E4D0]);
    }

    OUTLINED_FUNCTION_1_5();
    if (v16)
    {
      VTSessionSetProperty(*v14, @"EncodesDisparity", *v15);
    }

    v17 = 0;
    if (v13)
    {
      goto LABEL_19;
    }
  }

  if (sourceImageBufferAttributes)
  {
    CFRelease(sourceImageBufferAttributes);
  }

  return v17;
}

uint64_t DepthWrapperEncoder_CopySupportedPropertyDictionary(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  VTVideoEncoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v9 = 0;
  v10 = 0;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = VTSessionCopySupportedPropertyDictionary(*(DerivedStorage + 72), &cf);
  if (v4)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"SublayerEncoderSpecification", v3);
    CFDictionarySetValue(Mutable, @"SourceFrameCount", v3);
    OUTLINED_FUNCTION_1_5();
    if (v6)
    {
      CFDictionarySetValue(Mutable, @"MinAndMaxDisparity", v3);
    }

    OUTLINED_FUNCTION_2_5();
    if (v6)
    {
      CFDictionarySetValue(Mutable, @"MinAndMaxDepth", v3);
    }

    v9 = cf;
    v10 = Mutable;
    FigCFCreateCombinedDictionary();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t DepthWrapperEncoder_CreateInstance_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void depthencoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t depthencoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostEncoderSessionCreate(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  cf = 0;
  if (!a2)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_5_5();
LABEL_51:
    v17 = 0;
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
    OUTLINED_FUNCTION_5_5();
    a2 = 0;
    goto LABEL_51;
  }

  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    dispatch_once_f(v25, v26, v27);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    goto LABEL_52;
  }

  v29 = a4;
  *(Instance + 20) = 0;
  VTEncoderSessionCreateTimeStampQueue(Instance + 32);
  v14[9] = v14;
  v14[11] = v14;
  v14[12] = FigDispatchQueueCreateWithPriority();
  if (VTParavirtualizationReplyClerkCreate("host encoder session", v14 + 13))
  {
    goto LABEL_53;
  }

  a4 = 744712548;
  v14[14] = _Block_copy(a3);
  v14[18] = FigSimpleMutexCreate();
  v14[20] = dispatch_group_create();
  v14[21] = FigSimpleMutexCreate();
  v14[23] = dispatch_group_create();
  v14[25] = 0;
  VTParavirtualizationMessageGetSInt32();
  if (v15)
  {
    goto LABEL_53;
  }

  if (!v34)
  {
LABEL_52:
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM();
LABEL_53:
    OUTLINED_FUNCTION_5_5();
    a2 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  VTParavirtualizationMessageGetUInt32();
  if (v16 || VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, 0, 0, v14 + 15))
  {
    goto LABEL_53;
  }

  v17 = CFDictionaryCreateMutable(v11, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v17, @"AllowParavirtualizedEncoder", *MEMORY[0x1E695E4C0]);
  if (VTParavirtualizationMessageCopyCFPropertyList(a2, 744712548, &v33))
  {
    goto LABEL_47;
  }

  v28 = a5;
  if (v33)
  {
    FigCFDictionarySetValue();
  }

  if (VTParavirtualizationMessageCopyCFDictionary(a2, 744974702, &cf))
  {
LABEL_47:
    OUTLINED_FUNCTION_5_5();
    goto LABEL_48;
  }

  a4 = FigCFCopyCompactDescription();
  if (!VTSelectAndCreateVideoEncoderInstanceInternal(v34, a1, 0, v17, 0, v14 + 3, 0, 0, 0))
  {
    v21 = v14[3];
    if (v21)
    {
      CMBaseObject = VTVideoEncoderGetCMBaseObject(v21);
      v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v23)
      {
        v23(CMBaseObject, @"Paravirtualized", *MEMORY[0x1E695E4D0]);
      }
    }
  }

  appended = VTParavirtualizationCreateReplyAndByteStream(a2, 4, &v32, &v31);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (appended = VTParavirtualizationMessageAppendUInt32(), appended))
  {
    v5 = appended;
LABEL_48:
    a2 = 0;
    goto LABEL_27;
  }

  a2 = MGCopyAnswer();
  FigCFDictionarySetValue();
  v19 = VTParavirtualizationMessageAppendCFDictionary(v31, 745040238, Mutable);
  if (!v19)
  {
    if (dword_1EAD321C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = 0;
    *v29 = v14;
    *v28 = v32;
    v32 = 0;
    goto LABEL_26;
  }

  v5 = v19;
LABEL_27:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v5;
}