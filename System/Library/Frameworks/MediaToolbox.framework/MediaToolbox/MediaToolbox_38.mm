uint64_t FigQuickTimeMetadataSerializerCreateCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!a3)
    {
      FigQuickTimeMetadataSerializerCreateCopy_cold_1(&v18);
      return v18;
    }

    v6 = DerivedStorage;
    v7 = FigMetadataSerializerCreateForQuickTimeMetadata(a1, &v17);
    v8 = v17;
    if (v7)
    {
      goto LABEL_19;
    }

    v9 = CMBaseObjectGetDerivedStorage();
    if (*v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, *v6);
    }

    else
    {
      MutableCopy = 0;
    }

    *v9 = MutableCopy;
    v11 = *(v6 + 8);
    if (v11)
    {
      v12 = CFArrayCreateMutableCopy(a1, 0, v11);
    }

    else
    {
      v12 = 0;
    }

    v9[1] = v12;
    v13 = *(v6 + 16);
    if (v13)
    {
      v14 = CFArrayCreateMutableCopy(a1, 0, v13);
    }

    else
    {
      v14 = 0;
    }

    v9[2] = v14;
    v15 = *(v6 + 24);
    if (v15)
    {
      v15 = CFRetain(v15);
    }

    v7 = 0;
    v9[3] = v15;
    v9[4] = *(v6 + 32);
    v8 = v17;
  }

  else
  {
    FigQuickTimeMetadataSerializerCreateCopy_cold_2(&v18);
    v8 = 0;
    v7 = v18;
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  if (!v7)
  {
    *a3 = v8;
    return v7;
  }

LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t FigImageQueueCreateForCoreAnimationWithOptions(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (a4)
  {
    FigImageQueueGetClassID();
    v6 = CMDerivedObjectCreate();
    if (v6)
    {
      value_low = v6;
      LoggingIdentifierOfLength = 0;
      v9 = 0;
LABEL_4:
      if (LoggingIdentifierOfLength)
      {
        CFRelease(LoggingIdentifierOfLength);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      return value_low;
    }

    MEMORY[0x19A8D3660](&sPIQCACreateRegistrationDictionaryMutexOnce, piqca_createRegistrationDictionaryMutex);
    MEMORY[0x19A8D3660](&sCAImageQueueSetEDRDeadlineMutexOnce, piqca_loadCAImageQueueSetEDRDeadline);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = FigOSTransactionCreate();
    *(DerivedStorage + 3000) = v12;
    if (!v12)
    {
      FigImageQueueCreateForCoreAnimationWithOptions_cold_6(&v33);
      LoggingIdentifierOfLength = 0;
      v9 = 0;
      value_low = LODWORD(v33.value);
      goto LABEL_4;
    }

    *(DerivedStorage + 3232) = 0;
    StringIfPresent = FigCFDictionaryGetStringIfPresent();
    v14 = MEMORY[0x1E695E480];
    if (StringIfPresent)
    {
      v15 = *MEMORY[0x1E695E480];
      LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
      v16 = CFStringCreateWithFormat(v15, 0, @"%@:IQ/%@", 0, LoggingIdentifierOfLength);
      v9 = v16;
      if (v16)
      {
        CFStringGetCString(v16, (DerivedStorage + 3232), 32, 0x600u);
      }
    }

    else
    {
      v9 = 0;
      LoggingIdentifierOfLength = 0;
    }

    *(DerivedStorage + 3264) = 1;
    v17 = *MEMORY[0x1E695E4C0];
    if (v17 == FigCFDictionaryGetValue())
    {
      *(DerivedStorage + 3264) = 0;
    }

    *(DerivedStorage + 8) = FigSimpleMutexCreate();
    v18 = malloc_type_calloc(0x18uLL, 1uLL, 0x3B5A9EE2uLL);
    *(DerivedStorage + 16) = v18;
    *v18 = 0;
    v18[4] = 1;
    *(*(DerivedStorage + 16) + 8) = FigSimpleMutexCreate();
    *(DerivedStorage + 2912) = FigSimpleMutexCreate();
    v19 = *v14;
    Mutable = CFDictionaryCreateMutable(*v14, 0, 0, MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 120) = Mutable;
    if (!Mutable)
    {
      value_low = FigSignalErrorAtGM();
      goto LABEL_4;
    }

    v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFDictionarySetValue(*(DerivedStorage + 120), 0, v21);
    *DerivedStorage = a2;
    CFRetain(a2);
    *(DerivedStorage + 49) = 1;
    *(DerivedStorage + 137) = 0;
    *(DerivedStorage + 212) = 0x100000001;
    *(DerivedStorage + 56) = 0;
    CAImageQueueSetFlags();
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 96) = 0x404E000000000000;
    *(DerivedStorage + 3016) = 4;
    *(DerivedStorage + 3020) = 0;
    CAImageQueueSetEnhancementMode();
    v22 = CAImageQueueSetFlags();
    if (defaultDisableColorMatching_alreadyChecked == 1)
    {
      if (!defaultDisableColorMatching_result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = MGGetBoolAnswer();
      defaultDisableColorMatching_result = v22 ^ 1;
      defaultDisableColorMatching_alreadyChecked = 1;
      if (v22)
      {
LABEL_23:
        if (defaultEnableDisplayTracking_alreadyChecked == 1)
        {
          if (!defaultEnableDisplayTracking_result)
          {
LABEL_31:
            FigBytePumpGetFigBaseObject(v22);
            *(DerivedStorage + 132) = 1;
            *(DerivedStorage + 3056) = 0;
            *(DerivedStorage + 3064) = FigDispatchQueueCreateWithPriority();
            if (_MergedGlobals_54 != -1)
            {
              FigImageQueueCreateForCoreAnimationWithOptions_cold_1();
            }

            v23 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            if (v23)
            {
              v24 = v23;
              FigSimpleMutexLock();
              CFDictionarySetValue(qword_1ED4CAA40, 0, v24);
              FigSimpleMutexUnlock();
              CFRelease(v24);
            }

            else
            {
              FigImageQueueCreateForCoreAnimationWithOptions_cold_2();
            }

            piqca_WakeupSharedPollingThread();
            v25 = FigImageQueueDisplayCountHistory_Create((DerivedStorage + 2984));
            if (v25)
            {
              value_low = v25;
            }

            else
            {
              FigImageQueueDisplayCountHistory_StartTracingDisplayCount(*(DerivedStorage + 2984), 0, "imagequeue");
              v26 = FigSimpleMutexCreate();
              *(DerivedStorage + 3192) = v26;
              if (v26)
              {
                v27 = FigSimpleMutexCreate();
                *(DerivedStorage + 3168) = v27;
                if (v27)
                {
                  v28 = dispatch_queue_create("com.apple.coremedia.fiq4ca.notificationQueue", 0);
                  *(DerivedStorage + 3216) = v28;
                  if (v28)
                  {
                    *(DerivedStorage + 2528) = 0;
                    *(DerivedStorage + 3032) = 0x41CDCD6500000000;
                    *(DerivedStorage + 3024) = 0;
                    *(DerivedStorage + 3040) = 0u;
                    v34 = 0u;
                    memset(v35, 0, sizeof(v35));
                    AdoptedVoucherProcessIDAndUUIDString = FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
                    v30 = AdoptedVoucherProcessIDAndUUIDString;
                    *(DerivedStorage + 3144) = CFStringCreateWithFormat(v19, 0, @"com.apple.coremedia.iq.ca.client%d", AdoptedVoucherProcessIDAndUUIDString);
                    *(DerivedStorage + 3160) = -1;
                    *(DerivedStorage + 3164) = 1;
                    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
                    CMTimeMake(&v33, CFPreferenceNumberWithDefault, 1000);
                    *(DerivedStorage + 224) = v33;
                    *(DerivedStorage + 248) = FigGetCFPreferenceNumberWithDefault();
                    *(DerivedStorage + 2536) = FigSimpleMutexCreate();
                    if (v30 <= 0)
                    {
                      v30 = getpid();
                    }

                    *(DerivedStorage + 2552) = v30;
                    FigServer_CopyProcessName();
                    if (dword_1EAF19510)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }

                    value_low = 0;
                    *a4 = 0;
                    goto LABEL_44;
                  }

                  FigImageQueueCreateForCoreAnimationWithOptions_cold_3(&v33);
                }

                else
                {
                  FigImageQueueCreateForCoreAnimationWithOptions_cold_4(&v33);
                }
              }

              else
              {
                FigImageQueueCreateForCoreAnimationWithOptions_cold_5(&v33);
              }

              value_low = LODWORD(v33.value);
            }

LABEL_44:
            if (v21)
            {
              CFRelease(v21);
            }

            goto LABEL_4;
          }
        }

        else
        {
          v22 = FigGetCFPreferenceNumberWithDefault();
          defaultEnableDisplayTracking_result = v22;
          defaultEnableDisplayTracking_alreadyChecked = 1;
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        v22 = CAImageQueueSetFlags();
        goto LABEL_31;
      }
    }

    v22 = CAImageQueueSetFlags();
    goto LABEL_23;
  }

  return FigSignalErrorAtGM();
}

uint64_t piqca_createRegistrationDictionaryMutex()
{
  result = FigSimpleMutexCreate();
  sPIQCARegistrationDictionaryMutex = result;
  return result;
}

uint64_t piqca_WakeupSharedPollingThread()
{
  if (_MergedGlobals_54 != -1)
  {
    piqca_WakeupSharedPollingThread_cold_1();
  }

  result = qword_1ED4CAA30;
  if (qword_1ED4CAA30)
  {

    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t piqca_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"CAImageQueue", a2))
  {
    v9 = *DerivedStorage;
LABEL_3:
    DictionaryRepresentation = CFRetain(v9);
    goto LABEL_6;
  }

  if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    LODWORD(valuePtr.value) = FigImageQueueFrameRateGetCurrent(DerivedStorage + 2912);
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    goto LABEL_6;
  }

  if (CFEqual(@"FigImageQueueProperty_EnqueueResetsSystemSleepTimer", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 134);
LABEL_11:
    if (!v14)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    v9 = *v13;
    goto LABEL_3;
  }

  if (CFEqual(@"FigImageQueueProperty_NextNonJerkyStopTime", a2))
  {
    if (!*DerivedStorage || CAImageQueueGetTimes() < 2)
    {
      return 4294954513;
    }

    v15 = v29;
    memset(&valuePtr, 0, sizeof(valuePtr));
    CMTimebaseGetTime(&v27, *(DerivedStorage + 144));
    Seconds = CMTimeGetSeconds(&v27);
    Rate = CMTimebaseGetRate(*(DerivedStorage + 144));
    v18 = Rate;
    if (Rate >= 0.0)
    {
      if (v15 < Seconds || v15 - Seconds >= v18 * 0.1)
      {
        return 4294954513;
      }
    }

    else if (v15 > Seconds || v15 - Seconds <= v18 * 0.1)
    {
      return 4294954513;
    }

    CMTimeMakeWithSeconds(&valuePtr, v15, 90000);
    v27 = valuePtr;
    p_valuePtr = &v27;
    v20 = a3;
LABEL_28:
    DictionaryRepresentation = CMTimeCopyAsDictionary(p_valuePtr, v20);
    goto LABEL_6;
  }

  if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 135);
    goto LABEL_11;
  }

  if (CFEqual(@"FigImageQueueProperty_DisplaySize", a2))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(DerivedStorage + 1600));
    goto LABEL_6;
  }

  if (CFEqual(@"CAImageQueueAlwaysSync", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 137);
    goto LABEL_11;
  }

  if (CFEqual(@"UseLowLatencyModeForImmediateFrames", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 138);
    goto LABEL_11;
  }

  if (CFEqual(@"ForScrubbingOnly", a2))
  {
    v13 = MEMORY[0x1E695E4D0];
    v14 = *(DerivedStorage + 221);
    goto LABEL_11;
  }

  if (CFEqual(@"OriginToPresentationLatencyStatistics", a2))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v22 = Mutable;
      FigSimpleMutexLock();
      if (*(DerivedStorage + 3024) >= 1)
      {
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
        FigCFDictionarySetDouble();
      }

      FigCFDictionarySetInt32();
      *(DerivedStorage + 3032) = 0x41CDCD6500000000;
      *(DerivedStorage + 3024) = 0;
      *(DerivedStorage + 3040) = 0u;
      goto LABEL_41;
    }
  }

  else
  {
    if (CFEqual(@"Duration", a2))
    {
      v20 = *MEMORY[0x1E695E480];
      valuePtr = *(DerivedStorage + 3120);
      p_valuePtr = &valuePtr;
      goto LABEL_28;
    }

    if (CFEqual(@"CanSupportAV1FilmGrainDeferMode", a2))
    {
      v13 = MEMORY[0x1E695E4D0];
      v14 = *(DerivedStorage + 3264);
      goto LABEL_11;
    }

    if (!CFEqual(@"RendererPreparationInfo", a2))
    {
      if (CFEqual(@"ImageQueueGauge", a2))
      {
        DictionaryRepresentation = *(DerivedStorage + 3224);
        if (DictionaryRepresentation)
        {
          v11 = 0;
        }

        else
        {
          v24 = (DerivedStorage + 3224);
          AllocatorForMedia = FigGetAllocatorForMedia();
          v11 = FigImageQueueGaugeCreate(AllocatorForMedia, 0, (DerivedStorage + 3224));
          if (!v11)
          {
            v26 = *v24;
            FigImageQueueGetSafeDisplayDuration(a1, &valuePtr);
            v11 = FigImageQueueGaugeSetSafeDisplayDuration(v26, &valuePtr.value);
          }

          DictionaryRepresentation = *v24;
          if (!*v24)
          {
            goto LABEL_7;
          }
        }

        DictionaryRepresentation = CFRetain(DictionaryRepresentation);
LABEL_7:
        *a4 = DictionaryRepresentation;
        return v11;
      }

      if (!CFEqual(@"ResponsibleProcessID", a2))
      {
        return 4294954512;
      }

      DictionaryRepresentation = FigCFNumberCreateSInt32();
LABEL_6:
      v11 = 0;
      goto LABEL_7;
    }

    v23 = CFDictionaryCreateMutable(a3, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v23)
    {
      v22 = v23;
      FigSimpleMutexLock();
      FigCFDictionarySetBoolean();
      FigCFDictionarySetValue();
LABEL_41:
      FigSimpleMutexUnlock();
      v11 = 0;
      *a4 = v22;
      return v11;
    }
  }

  return FigSignalErrorAtGM();
}

void piqca_gmstats_dump()
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 144);
  if (v1)
  {
    CMTimebaseGetRate(v1);
    CMTimebaseGetTime(&time, *(DerivedStorage + 144));
    CMTimeGetSeconds(&time);
    CACurrentMediaTime();
    CAImageQueueGetUnconsumedImageCount();
    FigSimpleMutexLock();
    v2 = MEMORY[0x1E695E480];
    v18 = *(DerivedStorage + 2572);
    if (*(DerivedStorage + 2572))
    {
      *(DerivedStorage + 2888) = 0;
      Mutable = CFStringCreateMutable(*v2, 0);
      v4 = Mutable;
      v5 = *(DerivedStorage + 2580);
      v6 = *(DerivedStorage + 2576);
      if (*(DerivedStorage + 2568))
      {
        CFStringAppendFormat(Mutable, 0, @"Enqueued Pixel Buffer:%c%c%c%c, %u x %u ", HIBYTE(*(DerivedStorage + 2568)), BYTE2(*(DerivedStorage + 2568)), BYTE1(*(DerivedStorage + 2568)), *(DerivedStorage + 2568), *(DerivedStorage + 1576), *(DerivedStorage + 1584));
      }

      CFStringAppendCString(v4, "[\n", 0x600u);
      if (v5 >= 1)
      {
        do
        {
          if (v6 <= 0)
          {
            v7 = -(-v6 & 3);
          }

          else
          {
            v7 = v6 & 3;
          }

          CFStringAppendFormat(v4, 0, @"{PTS: %.3f s, enqueued at: host %.3f s (media %.3f s)},\n", *(DerivedStorage + 2584 + 24 * v7), *(DerivedStorage + 2584 + 24 * v7 + 8), *(DerivedStorage + 2584 + 24 * v7 + 16));
          ++v6;
          --v5;
        }

        while (v5);
      }

      CFStringAppendCString(v4, "]\n", 0x600u);
      *(DerivedStorage + 2648) = 0u;
      *(DerivedStorage + 2664) = 0u;
      *(DerivedStorage + 2616) = 0u;
      *(DerivedStorage + 2632) = 0u;
      *(DerivedStorage + 2584) = 0u;
      *(DerivedStorage + 2600) = 0u;
      *(DerivedStorage + 2568) = 0u;
    }

    else
    {
      v4 = 0;
    }

    v8 = *(DerivedStorage + 2680);
    if (*(DerivedStorage + 2680))
    {
      *(DerivedStorage + 2892) = 0;
      *(DerivedStorage + 2900) = 0;
      *(DerivedStorage + 2908) = 0;
      v9 = CFStringCreateMutable(*v2, 0);
      v10 = *(DerivedStorage + 2688);
      v11 = *(DerivedStorage + 2684);
      CFStringAppendFormat(v9, 0, @"DisplaySize: %f x %f ", *(DerivedStorage + 1600), *(DerivedStorage + 1608));
      CFStringAppendCString(v9, "[\n", 0x600u);
      if (v10 >= 1)
      {
        do
        {
          if (v11 <= 0)
          {
            v12 = -(-v11 & 3);
          }

          else
          {
            v12 = v11 & 3;
          }

          v13 = DerivedStorage + 2696 + 48 * v12;
          CFStringAppendFormat(v9, 0, @"{PTS: %.3f s, enqueued at : %.3f s, sampled at: host %.3f s (media %.3f s), displayed at: %.3f s, on glass for: %.3f ms},\n", *v13, *(v13 + 40), *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32) * 1000.0);
          ++v11;
          --v10;
        }

        while (v10);
      }

      CFStringAppendCString(v9, "]\n", 0x600u);
      *(DerivedStorage + 2856) = 0u;
      *(DerivedStorage + 2872) = 0u;
      *(DerivedStorage + 2824) = 0u;
      *(DerivedStorage + 2840) = 0u;
      *(DerivedStorage + 2792) = 0u;
      *(DerivedStorage + 2808) = 0u;
      *(DerivedStorage + 2760) = 0u;
      *(DerivedStorage + 2776) = 0u;
      *(DerivedStorage + 2728) = 0u;
      *(DerivedStorage + 2744) = 0u;
      *(DerivedStorage + 2696) = 0u;
      *(DerivedStorage + 2712) = 0u;
      *(DerivedStorage + 2680) = 0u;
    }

    else
    {
      v9 = 0;
    }

    FigSimpleMutexUnlock();
    if (v8 | v18)
    {
      if (dword_1EAF19510)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EAF19510)
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EAF19510)
          {
            v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (dword_1EAF19510)
            {
              v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }
}

void piqca_initSharedPollingThread(void *a1)
{
  a1[2] = FigSimpleMutexCreate();
  a1[1] = FigSemaphoreCreate();
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9E8];
  a1[3] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v2, 2, MEMORY[0x1E695E9D8], v3);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.imagequeue.coreanimation.common");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
  FigThreadCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void piqca_SharedPollingThread(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  while (1)
  {
    *(a1 + 40) = 0;
    FigSimpleMutexLock();
    Mutable = CFArrayCreateMutable(v2, 0, v3);
    *(a1 + 32) = Mutable;
    if (Mutable)
    {
      CFDictionaryApplyFunction(*(a1 + 24), piqca_RetainRegisteredImageQueuesStillAliveApplier, a1);
      FigSimpleMutexUnlock();
      v5 = *(a1 + 32);
      v7.length = CFArrayGetCount(v5);
      v7.location = 0;
      CFArrayApplyFunction(v5, v7, piqca_SharedDoMonitorImageQueueApplier, a1);
      v6 = *(a1 + 32);
      if (v6)
      {
        CFRelease(v6);
        *(a1 + 32) = 0;
      }
    }

    else
    {
      *(a1 + 40) = 1;
    }

    FigSemaphoreWaitRelative();
  }
}

void piqca_RetainRegisteredImageQueuesStillAliveApplier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a3 + 32), v4);

    CFRelease(v5);
  }
}

uint64_t piqca_SharedDoMonitorImageQueueApplier(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 49))
  {
    return result;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = piqca_evictExpiredFramesFromCAImageQueue() != 0;
  CAImageQueueGetUnconsumedImageCount();
  if (*(DerivedStorage + 216) < 1)
  {
    v7 = -INFINITY;
    v8 = *(DerivedStorage + 112);
  }

  else
  {
    v7 = -1.0;
    v8 = *(DerivedStorage + 104);
  }

  if (v7 != v8)
  {
    v6 = 1;
  }

  v9 = FigAtomicBitAnd32Orig();
  if (*(DerivedStorage + 76) < 1)
  {
    if (v9 == 0 && !v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    FigAtomicDecrement32();
  }

  *(DerivedStorage + 104) = 0xBFF0000000000000;
  *(DerivedStorage + 112) = 0xFFF0000000000000;
  piqca_postOccupancyChanged(a1);
LABEL_11:
  result = DerivedStorage + 72;
  if (*(DerivedStorage + 72) >= 1)
  {
    result = FigAtomicDecrement32();
    if (!result)
    {
      if (dword_1EAF19510)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 49) = 0;
      result = CAImageQueueSetFlags();
    }
  }

  if (*(DerivedStorage + 49))
  {
    *(a2 + 40) = 1;
  }

  return result;
}

uint64_t piqca_evictExpiredFramesFromCAImageQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = **&MEMORY[0x1E6960C88];
  if (!*DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = DerivedStorage[18];
  if (v2 && (CMTimebaseGetTime(&v10, v2), v9 = v10, CMTimeGetSeconds(&v9), (v3 = v1[18]) != 0) && (CMTimebaseGetRate(v3) == 0.0 || (v4 = *(v1 + 54), v4 >= 1) || v4 < 0))
  {
    v6 = CAImageQueueConsumeUnconsumedInRange();
    v5 = v6;
    if (v6)
    {
      *(v1 + 410) += v6;
      FigSimpleMutexLock();
      *(v1 + 727) += v5;
      *(v1 + 2680) = 1;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = mach_absolute_time();
  if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
  {
    v1[318] = v7;
    piqca_gmstats_dump();
  }

  v1[8] = CAImageQueueCollect();
  v1[10] = mach_absolute_time();
  CACurrentMediaTime();
  return v5;
}

uint64_t FigImageQueueGaugeSetSafeDisplayDuration(uint64_t a1, __int128 *a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  v6 = *a2;
  v7 = *(a2 + 2);
  return v4(a1, &v6);
}

__n128 FigImageQueueGetSafeDisplayDuration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v4)
  {

    v4(a1);
  }

  else
  {
    v6 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    *(a2 + 16) = *(v6 + 16);
  }

  return result;
}

void piqca_updateImageQueueTimingFields()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = (DerivedStorage + 3072);
  v2 = *(DerivedStorage + 3072);
  if (v2)
  {
    FigSyncMomentSourceDestroy(v2);
    *v1 = 0;
  }

  *(DerivedStorage + 3104) = 0;
  *(DerivedStorage + 3096) = 0;
  *(DerivedStorage + 3080) = 0u;
  if (*(DerivedStorage + 3056))
  {
    if (*(DerivedStorage + 144))
    {
      v3 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v3)
      {
        v4 = v3;
        if (FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(piqca_syncMomentSourceCallback, v3, piqca_ReleaseFIQWeakReference, *(DerivedStorage + 144), *(DerivedStorage + 3064), v1))
        {

          CFRelease(v4);
        }

        else
        {
          outRelativeRate = 0.0;
          memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
          memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
          CMClockGetHostTimeClock();
          v5 = *(DerivedStorage + 144);
          HostTimeClock = CMClockGetHostTimeClock();
          if (!CMSyncGetRelativeRateAndAnchorTime(v5, HostTimeClock, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime))
          {
            v9 = outRelativeToClockOrTimebaseAnchorTime;
            Seconds = CMTimeGetSeconds(&v9);
            v9 = outOfClockOrTimebaseAnchorTime;
            v8 = CMTimeGetSeconds(&v9);
            piqca_setImageQueueTiming(Seconds, v8, outRelativeRate);
          }
        }
      }

      else
      {
        piqca_updateImageQueueTimingFields_cold_1();
      }
    }
  }

  else
  {

    piqca_setImageQueueTiming(0.0, 0.0, 1.0);
  }
}

void piqca_setTimebase(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) != a2)
  {
    v5 = *(DerivedStorage + 3064);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __piqca_setTimebase_block_invoke;
    block[3] = &__block_descriptor_tmp_55;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(v5, block);
  }
}

uint64_t piqca_setEnhancementMode(uint64_t result, const __CFString *cf)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!*(result + 3020))
  {
    if (cf)
    {
      v3 = result;
      v4 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (v4 == result)
      {
        result = CFStringGetCString(cf, buffer, 100, 0x600u);
        if (result)
        {
          v5 = 0;
          for (i = &off_1E7486C40; ; i += 2)
          {
            result = strcmp(*i, buffer);
            if (!result)
            {
              break;
            }

            if (++v5 == 5)
            {
              return result;
            }
          }

          *(v3 + 3016) = v5;
          return CAImageQueueSetEnhancementMode();
        }
      }
    }
  }

  return result;
}

void piqca_postRendererPreparationCompletedIfPreviouslyRequestedAndRecordNewRequest(uint64_t a1, char a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 3176);
  v7 = *(DerivedStorage + 3184);
  *(DerivedStorage + 3176) = a2;
  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(DerivedStorage + 3184) = v8;
  FigSimpleMutexUnlock();
  if (v6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

void piqca_ReleaseFIQWeakReference(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t piqca_setImageQueueTiming(double a1, double a2, double a3)
{
  v17 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  if (a3 >= 0.0)
  {
    if (!*(DerivedStorage + 3104))
    {
      goto LABEL_9;
    }

    v9 = 0;
    Seconds = INFINITY;
  }

  else
  {
    if (*(DerivedStorage + 3104))
    {
      goto LABEL_9;
    }

    time = *(DerivedStorage + 3120);
    Seconds = CMTimeGetSeconds(&time);
    if ((*&Seconds & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      Seconds = a2 + 0.1;
    }

    v9 = 1;
  }

  *(v7 + 3112) = Seconds;
  *(v7 + 3104) = v9;
LABEL_9:
  if (a3 == 0.0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = 0.0;
  }

  else if (a3 <= 0.0)
  {
    v13 = *(v7 + 3112);
    v12 = a1 + (a2 - v13) * (-1.0 / a3);
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v13;
  }

  else
  {
    v12 = a1 + a2 * (-1.0 / a3);
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = 0.0;
  }

  *(v7 + 3080) = v12;
  *(v7 + 3088) = a3;
  *(v7 + 3096) = a2;
  return CAImageQueueSetMediaTimingClamped();
}

void __piqca_setTimebase_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 144);
  *(v2 + 144) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  piqca_updateImageQueueTimingFields();
}

uint64_t piqca_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 2464) = 0;
  if (*DerivedStorage)
  {
    *(DerivedStorage + 2464) = CAImageQueueGetUnconsumedImageCount() + 1;
  }

  return PIQCopyPerformanceDictionaryForInstanceStatistics(*MEMORY[0x1E695E480], (DerivedStorage + 1628), a2);
}

uint64_t piqca_enqueueImageWithRotation(uint64_t a1, __CVBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v97 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *v84 = *a4;
  v11 = *(a4 + 12);
  *&v84[8] = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = CMBaseObjectGetDerivedStorage();
  IsNullPixelBuffer = FigIsNullPixelBuffer(a2);
  if (!a2)
  {
    v19 = FigSignalErrorAtGM();
    if (v19)
    {
      goto LABEL_106;
    }

    goto LABEL_120;
  }

  v15 = IsNullPixelBuffer;
  v16 = *(v13 + 3224);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v17)
    {
      v17(v16, 0);
    }
  }

  v18 = CFGetTypeID(a2);
  if (CVPixelBufferGetTypeID() == v18)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  }

  else
  {
    PixelFormatType = 1061109567;
  }

  piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently();
  if (a6 & 2) == 0 || (v11)
  {
    *time = *v84;
    *&time[8] = __PAIR64__(v11, *&v84[8]);
    *&time[16] = v12;
    CMTimeGetSeconds(time);
  }

  if (CVPixelBufferGetTypeID() != v18)
  {
    v19 = 4294948064;
    goto LABEL_106;
  }

  v81 = v12;
  v79 = v11;
  if (v15)
  {
LABEL_69:
    if ((a6 & 4) == 0 && ((a6 & 1) != 0 || *(v13 + 50)))
    {
      *(v13 + 50) = 0;
      *(v13 + 52) = 0;
      FigImageQueueDisplayCountHistory_TraceFlush(*(v13 + 2984));
      bzero((v13 + 368), 0x4B0uLL);
    }

    CVBufferRetain(a2);
    v37 = malloc_type_calloc(0x68uLL, 1uLL, 0x102004047E4D0FBuLL);
    *(v37 + 1) = *v84;
    *v37 = a2;
    *(v37 + 4) = *&v84[8];
    *(v37 + 5) = v11;
    *(v37 + 3) = v12;
    v38 = *(v13 + 144);
    if (v38)
    {
      CMTimebaseGetTime(time, v38);
      *(v37 + 2) = *time;
      *(v37 + 6) = *&time[16];
    }

    *(v37 + 7) = CACurrentMediaTime();
    *(v37 + 18) = *(v13 + 24);
    v39 = CMGetAttachment(a2, @"FigImageBufferOriginHostTime", 0);
    v40 = v39;
    if (a3 && !v39)
    {
      v41 = CFGetTypeID(a3);
      if (v41 != CFDictionaryGetTypeID())
      {
LABEL_82:
        *(v37 + 8) = *(v13 + 16);
        FigAtomicIncrement32();
        v43 = v13 + 24 * *(v13 + 1568);
        v44 = *(v37 + 3);
        *(v43 + 368) = *(v37 + 8);
        *(v43 + 384) = v44;
        v45 = *(v13 + 1568);
        if (v45 == 49)
        {
          v46 = 0;
        }

        else
        {
          v46 = v45 + 1;
        }

        *(v13 + 1568) = v46;
        if (!v15)
        {
          Width = CVPixelBufferGetWidth(a2);
          Height = CVPixelBufferGetHeight(a2);
          v49 = Height;
          if (*(v13 + 1576) != Width || *(v13 + 1584) != Height)
          {
            if (*MEMORY[0x1E695FF58] == 1)
            {
              kdebug_trace();
            }

            CAImageQueueSetSize();
            *(v13 + 1576) = Width;
            *(v13 + 1584) = v49;
          }
        }

        v50 = CMBaseObjectGetDerivedStorage();
        if (*(v50 + 1576))
        {
          v51 = v50;
          if (*(v50 + 1584))
          {
            DisplayedPixelCount = CAImageQueueGetDisplayedPixelCount();
            if (DisplayedPixelCount)
            {
              if (*(v51 + 1592) != DisplayedPixelCount)
              {
                v53 = sqrtf((DisplayedPixelCount * *(v51 + 1584)) / *(v51 + 1576));
                *(v51 + 1592) = DisplayedPixelCount;
                *(v51 + 1600) = (DisplayedPixelCount / v53);
                *(v51 + 1608) = v53;
                *(v51 + 1616) = 1;
              }
            }
          }
        }

        UnconsumedImageCount = CAImageQueueGetUnconsumedImageCount();
        v55 = *(v13 + 252);
        *(v13 + 252) = v55 + 1;
        *(v37 + 19) = v55;
        *(v37 + 20) = UnconsumedImageCount;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          *time = *v84;
          *&time[8] = __PAIR64__(v79, *&v84[8]);
          *&time[16] = v81;
          CMTimeGetSeconds(time);
          kdebug_trace();
        }

        if (CAImageQueueInsertImageWithRotation())
        {
          --*(v13 + 64);
          FigSimpleMutexLock();
          *(v13 + 2568) = PixelFormatType;
          if (*(v13 + 144))
          {
            *time = *v84;
            *&time[8] = __PAIR64__(v79, *&v84[8]);
            *&time[16] = v81;
            Seconds = CMTimeGetSeconds(time);
            CMTimebaseGetTime(time, *(v13 + 144));
            v57 = CMTimeGetSeconds(time);
            v58 = CACurrentMediaTime();
            v59 = CMBaseObjectGetDerivedStorage();
            v60 = *(v59 + 2576);
            v61 = *(v59 + 2580);
            if (v61 + v60 <= 0)
            {
              v62 = -(-(v61 + v60) & 3);
            }

            else
            {
              v62 = (v61 + v60) & 3;
            }

            v63 = (v59 + 24 * v62);
            v63[323] = Seconds;
            v63[325] = v57;
            v63[324] = v58;
            v64 = v61 + 1;
            if (v64 > 4)
            {
              v65 = v60 + 1;
              v66 = -v65 < 0;
              v67 = -v65 & 3;
              v68 = v65 & 3;
              if (!v66)
              {
                v68 = -v67;
              }

              *(v59 + 2576) = v68;
            }

            else
            {
              *(v59 + 2580) = v64;
            }
          }

          ++*(v13 + 2888);
          *(v13 + 2572) = 1;
          FigSimpleMutexUnlock();
          FPSupport_IsDisplayModeSwitchInProgress();
          if (*(v13 + 132) && *(v13 + 134))
          {
            v69 = *(v13 + 3152);
            if (!v69)
            {
              v69 = *(v13 + 3144);
            }

            FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(v69, *(v13 + 3160));
          }

          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          *(v13 + 51) = 1;
          if ((a6 & 4) != 0)
          {
            *(v13 + 52) = 1;
          }

          *(v13 + 56) = 1;
          goto LABEL_120;
        }

        ++*(v13 + 2468);
        CVBufferRelease(a2);
        piqca_decrementSnapLatchCount(v37 + 8);
        free(v37);
        v19 = 4294954482;
LABEL_106:
        FigSimpleMutexUnlock();
        return v19;
      }

      v40 = CFDictionaryGetValue(a3, @"FigImageBufferOriginHostTime");
    }

    if (v40)
    {
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v40, kCFNumberDoubleType, v37 + 88);
        v37[96] = 1;
      }
    }

    goto LABEL_82;
  }

  v20 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965CB8], 0);
  v21 = CVPixelBufferGetPixelFormatType(a2);
  *time = 0;
  if (containsAlpha_sDidCheck == 1)
  {
    AppBooleanValue = containsAlpha_sForceOptimization;
  }

  else
  {
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"force_opaque_caiq_optimization", @"com.apple.coremedia", 0);
    containsAlpha_sForceOptimization = AppBooleanValue;
    containsAlpha_sDidCheck = 1;
  }

  if (*(v13 + 1620) != v21 && !AppBooleanValue)
  {
    v23 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v21);
    if (v23)
    {
      v24 = v23;
      if (CFDictionaryGetValueIfPresent(v23, *MEMORY[0x1E6966290], time) && *time == *MEMORY[0x1E695E4D0])
      {
        *(v13 + 1624) = 1;
      }

      *(v13 + 1620) = v21;
      CFRelease(v24);
    }

    else
    {
      *(v13 + 1620) = v21;
    }
  }

  v11 = v79;
  if (*(v13 + 1624))
  {
    FigCFEqual();
  }

  v12 = v81;
  if (v20)
  {
    CFRelease(v20);
  }

  valuePtr = 0;
  key = CVPixelBufferGetBufferBacking();
  IOSurface = CVPixelBufferGetIOSurface(a2);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  memset(time, 0, sizeof(time));
  v76 = IOSurface;
  if (IOSurface && !IOSurfaceGetBulkAttachments())
  {
    value = CFDataCreate(*MEMORY[0x1E695E480], time, 132);
  }

  else
  {
    value = 0;
  }

  FigSimpleMutexLock();
  if (!key)
  {
    FigSimpleMutexUnlock();
    v28 = 0;
    goto LABEL_45;
  }

  v26 = CFDictionaryGetValue(*(v13 + 120), key);
  FigSimpleMutexUnlock();
  if (!v26)
  {
    v28 = 0;
LABEL_44:
    v12 = v81;
    goto LABEL_45;
  }

  v27 = CFDictionaryGetValue(v26, @"PixelBufferId");
  CFDictionaryGetValue(v26, @"IOSurfaceBulkAttachments");
  if (!v27)
  {
    v28 = 0;
    v11 = v79;
    goto LABEL_44;
  }

  CFNumberGetValue(v27, kCFNumberSInt64Type, &valuePtr);
  v11 = v79;
  v12 = v81;
  if (FigCFEqual())
  {
    goto LABEL_66;
  }

  MEMORY[0x19A8CC3C0](*v13, valuePtr);
  v28 = 1;
LABEL_45:
  v75 = v28;
  if (v76)
  {
    v29 = CVBufferCopyAttachment(a2, @"SceneReferredExtendedLinear", 0);
    FigCFEqual();
    if (v29)
    {
      CFRelease(v29);
    }

    valuePtr = CAImageQueueRegisterIOSurfaceBuffer();
    if (!valuePtr)
    {
      goto LABEL_66;
    }

    goto LABEL_58;
  }

  v30 = CVPixelBufferGetPixelFormatType(a2);
  if (v30 == 32 || v30 == 846624121 || v30 == 1111970369 || !FigSignalErrorAtGM())
  {
    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferGetBaseAddress(a2);
    CVPixelBufferGetBytesPerRow(a2);
    CVPixelBufferGetWidth(a2);
    CVPixelBufferGetHeight(a2);
    valuePtr = CAImageQueueRegisterBuffer();
    v11 = v79;
    v12 = v81;
    if (valuePtr)
    {
LABEL_58:
      FigSimpleMutexLock();
      v31 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v33 = Mutable;
        v34 = CFNumberCreate(v31, kCFNumberSInt64Type, &valuePtr);
        if (v34)
        {
          v35 = v34;
          CFDictionarySetValue(v33, @"PixelBufferId", v34);
          CFRelease(v35);
        }

        if (value)
        {
          CFDictionarySetValue(v33, @"IOSurfaceBulkAttachments", value);
        }

        CFDictionarySetValue(*(v13 + 120), key, v33);
        CFRelease(v33);
      }

      FigSimpleMutexUnlock();
      if ((v75 & 1) == 0)
      {
        CFRetain(*(v13 + 120));
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, *(v13 + 120), piqca_DeregisterPixelBufferBackingThatWillBeDeleted, *MEMORY[0x1E6965C58], key, CFNotificationSuspensionBehaviorDeliverImmediately);
      }
    }
  }

  else
  {
    valuePtr = 0;
  }

LABEL_66:
  if (value)
  {
    CFRelease(value);
  }

  if (valuePtr)
  {
    goto LABEL_69;
  }

  piqca_enqueueImageWithRotation_cold_1(time);
  v19 = *time;
  if (*time)
  {
    goto LABEL_106;
  }

LABEL_120:
  FigSimpleMutexUnlock();
  piqca_postOccupancyChanged(a1);
  if (!DerivedStorage[49])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!DerivedStorage[135])
  {
    if (dword_1EAF19510)
    {
      LODWORD(valuePtr) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v71 = valuePtr;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v71;
      }

      else
      {
        v72 = v71 & 0xFFFFFFFE;
      }

      if (v72)
      {
        *v84 = 136315650;
        *&v84[4] = "piqca_enqueueImageWithRotation";
        v85 = 2048;
        v86 = a1;
        v87 = 2082;
        v88 = DerivedStorage + 3232;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage[135] = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!DerivedStorage[1616])
  {
    return 0;
  }

  v73 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCGSize();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v73)
  {
    CFRelease(v73);
  }

  v19 = 0;
  DerivedStorage[1616] = 0;
  return v19;
}

uint64_t piqca_flushFramesFollowingCurrentFrame(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C88];
  if (*DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = DerivedStorage[18];
    if (v4)
    {
      CMTimebaseGetTime(&v13, v4);
      v12 = v13;
      CMTimeGetSeconds(&v12);
      if (v3[18])
      {
        v5 = *(v3 + 54);
        if (v5 >= 1 || v5 < 0)
        {
          v6 = CAImageQueueConsumeUnconsumedInRange();
          v7 = v6;
          if (v6)
          {
            *(v3 + 410) += v6;
            FigSimpleMutexLock();
            *(v3 + 727) += v7;
            *(v3 + 2680) = 1;
            FigSimpleMutexUnlock();
          }
        }
      }
    }

    v8 = mach_absolute_time();
    if (FigHostTimeToNanoseconds() >= 0x165A0BC00)
    {
      v3[318] = v8;
      piqca_gmstats_dump();
    }

    v3[8] = CAImageQueueCollect();
    v3[10] = mach_absolute_time();
    CACurrentMediaTime();
    piqca_postOccupancyChanged(a1);
    v9 = v3[403];
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v9, 1);
      }
    }
  }

  return 0;
}

uint64_t piqca_evictExpiredFramesFromCAImageQueueIfEvictionNotDoneRecently()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (*(DerivedStorage + 49))
  {
    v2 = result < 100000000;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {

    return piqca_evictExpiredFramesFromCAImageQueue();
  }

  return result;
}

uint64_t piqca_updateEDRDeadline(void *a1, int a2)
{
  result = CelestialShouldManageEDRDeadline();
  if (result && sCAImageQueueSetEDRDeadline)
  {
    if (a2)
    {
      if (*(a1 + 88))
      {
        return result;
      }

      v5 = CACurrentMediaTime();
      result = sCAImageQueueSetEDRDeadline(*a1, v5 + *(a1 + 12));
      v6 = 1;
    }

    else
    {
      if (!*(a1 + 88))
      {
        return result;
      }

      result = sCAImageQueueSetEDRDeadline(*a1, INFINITY);
      v6 = 0;
    }

    *(a1 + 88) = v6;
  }

  return result;
}

uint64_t piqca_updateReducedPollingTimeRange(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 160);
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return CAImageQueueSetFlags();
    }

    if (*(DerivedStorage + 212) < 1)
    {
      return CAImageQueueSetFlags();
    }

    v5 = *(DerivedStorage + 144);
    if (!v5)
    {
      return CAImageQueueSetFlags();
    }

    CMTimebaseGetTime(&time, v5);
    Seconds = CMTimeGetSeconds(&time);
    time = *(v3 + 164);
    p_time = &time;
    goto LABEL_12;
  }

  if (*(DerivedStorage + 212) >= 1)
  {
    time = **&MEMORY[0x1E6960C70];
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v8(a1, 0, 0, &time);
    }

    v9 = *(v3 + 144);
    if (v9)
    {
      if ((time.flags & 0x1D) == 1)
      {
        CMTimebaseGetTime(&v11, v9);
        Seconds = CMTimeGetSeconds(&v11);
        v11 = time;
        p_time = &v11;
LABEL_12:
        if (Seconds < CMTimeGetSeconds(p_time))
        {
          CAImageQueueSetReducedPollingTimeRange();
        }
      }
    }
  }

  return CAImageQueueSetFlags();
}

void piqca_releaseBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = (a3 + 64);
    FigSimpleMutexLock();
    if (**v4)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      ReleasedImageInfo = CAImageQueueGetReleasedImageInfo();
      if (ReleasedImageInfo)
      {
        v7 = ReleasedImageInfo;
        if (*ReleasedImageInfo)
        {
          *time = *(a3 + 8);
          *&time[16] = *(a3 + 24);
          Seconds = CMTimeGetSeconds(time);
          v9 = FigHostTimeToNanoseconds() * 0.000000001;
          v10 = *(v7 + 1);
          v11 = FigHostTimeToNanoseconds() * 0.000000001;
          v12 = *(v7 + 7);
          *time = *(a3 + 32);
          *&time[16] = *(a3 + 48);
          v13 = CMTimeGetSeconds(time);
          FigSimpleMutexLock();
          v14 = CMBaseObjectGetDerivedStorage();
          v15 = *(v14 + 2684);
          v16 = *(v14 + 2688);
          if (v16 + v15 <= 0)
          {
            v17 = -(-(v16 + v15) & 3);
          }

          else
          {
            v17 = (v16 + v15) & 3;
          }

          v18 = v14 + 48 * v17;
          *(v18 + 2696) = Seconds;
          *(v18 + 2704) = v9;
          *(v18 + 2712) = v10;
          *(v18 + 2720) = v11;
          *(v18 + 2728) = v12;
          *(v18 + 2736) = v13;
          v19 = v16 + 1;
          if (v19 > 4)
          {
            v25 = v15 + 1;
            v26 = -v25 < 0;
            v27 = -v25 & 3;
            v28 = v25 & 3;
            if (!v26)
            {
              v28 = -v27;
            }

            *(v14 + 2684) = v28;
          }

          else
          {
            *(v14 + 2688) = v19;
          }

          ++*(DerivedStorage + 2900);
          *(DerivedStorage + 2680) = 1;
          FigSimpleMutexUnlock();
          memset(&rhs, 0, sizeof(rhs));
          CMTimeMakeWithSeconds(time, *(v7 + 1), 60000);
          time2 = *(a3 + 8);
          CMTimeSubtract(&rhs, time, &time2);
          EffectiveRate = CMTimebaseGetEffectiveRate(*(DerivedStorage + 144));
          v30 = MEMORY[0x1E695FF58];
          if (*MEMORY[0x1E695FF58] == 1)
          {
            *time = *(a3 + 8);
            *&time[16] = *(a3 + 24);
            CMTimeGetSeconds(time);
            kdebug_trace();
            if (*v30 == 1)
            {
              kdebug_trace();
            }
          }

          v31 = *(v7 + 4);
          ++*(DerivedStorage + 2456);
          if (*(a3 + 96))
          {
            if (*(v7 + 6))
            {
              v32 = FigHostTimeToNanoseconds() * 0.000000001 - *(a3 + 88);
              if (v32 >= 0.0)
              {
                *(DerivedStorage + 3032) = fmin(*(DerivedStorage + 3032), v32);
                *(DerivedStorage + 3040) = fmax(*(DerivedStorage + 3040), v32);
                *(DerivedStorage + 3048) = v32 + *(DerivedStorage + 3048);
                ++*(DerivedStorage + 3024);
              }
            }
          }

          v33 = 2480;
          if ((*(v7 + 5) & 0xFFFFFFFFFFFFLL) == 0)
          {
            v33 = 2476;
          }

          ++*(DerivedStorage + v33);
          FigImageQueueFrameRateIncrementCounter(DerivedStorage + 2912);
          if (*(DerivedStorage + 49) && !*(DerivedStorage + 72) && *(DerivedStorage + 220))
          {
            v38 = CMBaseObjectGetDerivedStorage();
            v39 = (v38 + 2960);
            if ((*(v38 + 2972) & 0x1D) != 1)
            {
              v58 = 0u;
              memset(time, 0, sizeof(time));
              CAImageQueueGetVBLInfo();
              v40 = FigHostTimeToNanoseconds();
              time2 = **&MEMORY[0x1E6960C70];
              if (!FPSupport_GetClosestCommonRefreshIntervalForRate(&time2, round(1000000000.0 / v40)))
              {
                *v39 = time2;
              }
            }

            *time = rhs;
            time2 = *v39;
            if ((CMTimeCompare(time, &time2) & 0x80000000) == 0)
            {
              v41 = *(DerivedStorage + 1644);
              if (v41 <= 0x63)
              {
                *time = *(a3 + 8);
                *&time[16] = *(a3 + 24);
                CMTimeConvertScale(&v54, time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                *(DerivedStorage + 4 * *(DerivedStorage + 1644) + 2052) = v54.value;
                v41 = *(DerivedStorage + 1644);
              }

              *(DerivedStorage + 1644) = v41 + 1;
              if (*v30 == 1)
              {
                *time = rhs;
                CMTimeGetSeconds(time);
                kdebug_trace();
              }

              FigSimpleMutexLock();
              ++*(DerivedStorage + 2904);
              *(DerivedStorage + 2680) = 1;
              FigSimpleMutexUnlock();
            }

            time2 = rhs;
            CMTimeConvertScale(time, &time2, 60000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            rhs = *time;
            if (EffectiveRate != 0.0)
            {
              v42 = (rhs.value / 1000) / EffectiveRate;
              if (v42 > 0.0)
              {
                *(DerivedStorage + 1648) = (v42 + *(DerivedStorage + 1648));
              }
            }
          }

          v34 = *v7;
          if (v34 <= 9)
          {
            ++*(DerivedStorage + 4 * v34 + 2484);
            LODWORD(v34) = *v7;
          }

          v35 = *(DerivedStorage + 2984);
          v36 = *(v7 + 3);
          v37 = *(v7 + 1);
          *time = *(a3 + 8);
          *&time[16] = *(a3 + 24);
          FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(v35, time, v34, v34, v36, v31, v37);
          goto LABEL_46;
        }

        if ((*(ReleasedImageInfo + 17) & 1) == 0)
        {
          if (*(ReleasedImageInfo + 16) == 1 || *(a3 + 72) != *(DerivedStorage + 24))
          {
            ++*(DerivedStorage + 2460);
            FigSimpleMutexLock();
            ++*(DerivedStorage + 2896);
LABEL_62:
            *(DerivedStorage + 2680) = 1;
            FigSimpleMutexUnlock();
            goto LABEL_46;
          }

          if (!*(DerivedStorage + 221))
          {
            v20 = 0;
            for (i = 368; i != 1568; i += 24)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              v22 = *(DerivedStorage + i);
              time2.epoch = *(DerivedStorage + i + 16);
              *&time2.value = v22;
              if (!CMTimeCompare(time, &time2))
              {
                if (v20)
                {
                  goto LABEL_46;
                }

                v20 = 1;
              }
            }

            if (*MEMORY[0x1E695FF58] == 1)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              CMTimeGetSeconds(time);
              kdebug_trace();
            }

            if ((*(DerivedStorage + 268) & 1) != 0 && (time2 = *(DerivedStorage + 256), rhs = *(DerivedStorage + 224), CMTimeAdd(time, &time2, &rhs), time2 = *(a3 + 8), CMTimeCompare(&time2, time) < 1))
            {
              v43 = *(DerivedStorage + 352);
              v44 = v43 + 1;
              *(DerivedStorage + 352) = v43 + 1;
              if (v43 <= 2)
              {
                *time = *(a3 + 8);
                *&time[16] = *(a3 + 24);
                *(DerivedStorage + 280 + 24 * *(DerivedStorage + 352) - 24) = CMTimeGetSeconds(time);
                *time = *(a3 + 32);
                *&time[16] = *(a3 + 48);
                v45 = CMTimeGetSeconds(time);
                v44 = *(DerivedStorage + 352);
                v46 = DerivedStorage + 280 + 24 * (v44 - 1);
                *(v46 + 16) = v45;
                *(v46 + 8) = *(a3 + 56);
              }

              if (v44 == *(DerivedStorage + 248))
              {
                ++*(DerivedStorage + 1636);
                Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
                CFStringAppendCString(Mutable, "[\n", 0x600u);
                if (*(DerivedStorage + 352) >= 1)
                {
                  v48 = 0;
                  v49 = (DerivedStorage + 296);
                  do
                  {
                    v50 = *(v49 - 1);
                    v51 = *v49;
                    v49 += 3;
                    CFStringAppendFormat(Mutable, 0, @"{PTS: %.3f s, enqueued at : host %.3f s (media %.3f)},\n", v50, v51);
                    ++v48;
                    v52 = *(DerivedStorage + 352);
                    if (v52 >= 3)
                    {
                      v52 = 3;
                    }
                  }

                  while (v48 < v52);
                }

                CFStringAppendCString(Mutable, "]\n", 0x600u);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }
              }
            }

            else
            {
              v23 = *(a3 + 8);
              *(DerivedStorage + 272) = *(a3 + 24);
              *(DerivedStorage + 256) = v23;
              *(DerivedStorage + 352) = 1;
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              *(DerivedStorage + 280) = CMTimeGetSeconds(time);
              *time = *(a3 + 32);
              *&time[16] = *(a3 + 48);
              *(DerivedStorage + 296) = CMTimeGetSeconds(time);
              *(DerivedStorage + 288) = *(a3 + 56);
            }

            v24 = *(DerivedStorage + 1628);
            if (v24 <= 0x63)
            {
              *time = *(a3 + 8);
              *&time[16] = *(a3 + 24);
              CMTimeConvertScale(&v53, time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              *(DerivedStorage + 4 * *(DerivedStorage + 1628) + 1652) = v53.value;
              v24 = *(DerivedStorage + 1628);
            }

            *(DerivedStorage + 1628) = v24 + 1;
            if (*(v7 + 3))
            {
              ++*(DerivedStorage + 1632);
            }

            FigSimpleMutexLock();
            ++*(DerivedStorage + 2892);
            goto LABEL_62;
          }
        }
      }
    }

LABEL_46:
    FigSimpleMutexUnlock();
    piqca_decrementSnapLatchCount(v4);
    CVBufferRelease(*a3);
    free(a3);
  }
}

void piqca_DeregisterPixelBufferBackingThatWillBeDeleted(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  FigSimpleMutexLock();
  if (CFDictionaryGetValue(a2, 0) && (v7 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v8 = v7;
    Value = CFDictionaryGetValue(a2, a4);
    if (Value)
    {
      v10 = CFDictionaryGetValue(Value, @"PixelBufferId");
      if (v10)
      {
        CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
        MEMORY[0x19A8CC3C0](v8, valuePtr);
      }

      CFDictionaryRemoveValue(a2, a4);
    }

    v11 = 0;
  }

  else
  {
    CFDictionaryRemoveAllValues(a2);
    v8 = 0;
    v11 = 1;
  }

  FigSimpleMutexUnlock();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
  CFRelease(a2);
  if ((v11 & 1) == 0)
  {
    CFRelease(v8);
  }
}

void piqcas_imageQueueSlotWasDestroyedCallback(uint64_t a1, void *a2)
{
  FPSupport_DeleteCASlot(a1);
  if (a2)
  {
    v4 = a2[1];
    if (v4)
    {
      v4(a1, *a2);
    }
  }

  free(a2);
}

Float64 OUTLINED_FUNCTION_1_80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10)
{
  a9 = *(v10 + 16);
  a10 = *(v10 + 32);

  return CMTimeGetSeconds(&a9);
}

uint64_t FigTrialGetTypeID()
{
  if (qword_1ED4CAA60 != -1)
  {
    FigTrialGetTypeID_cold_1();
  }

  return qword_1ED4CAA68;
}

uint64_t registerFigTrialType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAA68 = result;
  return result;
}

uint64_t FigTrialCopyCFType(uint64_t a1, void *a2)
{
  v15 = 0;
  v4 = objc_autoreleasePoolPush();
  if (!a1 || !*(a1 + 64))
  {
    v6 = 0;
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  if (FigCFDictionaryGetValueIfPresent() != 1)
  {
    v8 = FigTrialCopyTrialValueForFactor(a1, a2);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v8 levelOneOfCase];
    if (v9 > 12)
    {
      if (v9 == 13)
      {
        [v5 longValue];
        SInt64 = FigCFNumberCreateSInt64();
      }

      else
      {
        if (v9 != 15)
        {
          goto LABEL_24;
        }

        [v5 doubleValue];
        SInt64 = FigCFNumberCreateFloat64();
      }

      v15 = SInt64;
    }

    else
    {
      if (v9 == 10)
      {
        v13 = [v5 BOOLeanValue];
        v14 = MEMORY[0x1E695E4D0];
        if (!v13)
        {
          v14 = MEMORY[0x1E695E4C0];
        }

        v11 = *v14;
      }

      else
      {
        if (v9 != 11)
        {
          goto LABEL_24;
        }

        v10 = [v5 stringValue];
        if (v10)
        {
          v11 = CFRetain(v10);
        }

        else
        {
          v11 = 0;
        }
      }

      v15 = v11;
    }

LABEL_24:
    FigCFDictionarySetValue();
    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  FigSimpleMutexUnlock();
  v6 = v15;
LABEL_6:
  objc_autoreleasePoolPop(v4);
  return v6;
}

double FigTrial_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t fstc_populateCachesWithMutex(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v7 = CFDictionaryCreateMutable(v2, 0, v3, v4);
  v8 = v7;
  if (Mutable)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    fstc_populateCachesWithMutex_cold_2(&v26);
    v20 = v26;
  }

  else
  {
    v23 = v7;
    v11 = 0;
    v22 = v25;
    do
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3052000000;
      v29 = __Block_byref_object_copy__5;
      v30 = __Block_byref_object_dispose__5;
      v12 = getTRINamespaceClass_softClass;
      v31 = getTRINamespaceClass_softClass;
      if (!getTRINamespaceClass_softClass)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v25[0] = __getTRINamespaceClass_block_invoke;
        v25[1] = &unk_1E7486A28;
        v25[2] = &v26;
        __getTRINamespaceClass_block_invoke(v24);
        v12 = v27[5];
      }

      _Block_object_dispose(&v26, 8);
      v13 = [v12 namespaceNameFromId:{(v11 + 311), v22}];
      if (!v13)
      {
        fstc_populateCachesWithMutex_cold_1(&v26);
        v20 = v26;
        v8 = v23;
        goto LABEL_24;
      }

      v14 = v13;
      v15 = [objc_msgSend(*(a1 + 8) experimentIdentifiersWithNamespaceName:{v13), "experimentId"}];
      v16 = [*(a1 + 8) factorLevelsWithNamespaceName:v14];
      CFDictionarySetValue(Mutable, [MEMORY[0x1E696AD98] numberWithInt:v11], v14);
      if (v15)
      {
        CFDictionarySetValue(v6, [MEMORY[0x1E696AD98] numberWithInt:v11], v15);
      }

      if (v16)
      {
        CFDictionarySetValue(v23, [MEMORY[0x1E696AD98] numberWithInt:v11], v16);
      }

      v11 = (v11 + 1);
    }

    while (v11 != 3);
    v17 = *(a1 + 32);
    *(a1 + 32) = Mutable;
    CFRetain(Mutable);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 40);
    *(a1 + 40) = v6;
    CFRetain(v6);
    v8 = v23;
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(a1 + 48);
    *(a1 + 48) = v23;
    CFRetain(v23);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = 0;
  }

LABEL_24:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v20;
}

void sub_1965DA7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTRINamespaceClass_block_invoke(uint64_t a1)
{
  TrialLibrary();
  result = objc_getClass("TRINamespace");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTRINamespaceClass_block_invoke_cold_1();
  }

  getTRINamespaceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void TrialLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!TrialLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __TrialLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E7486DB0;
    v2 = 0;
    TrialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TrialLibraryCore_frameworkLibrary)
  {
    TrialLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __TrialLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TrialLibraryCore_frameworkLibrary = result;
  return result;
}

void __fstc_ensure_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  qword_1ED4CAA78 = FigSimpleMutexCreate();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v1 = getTRIClientClass_softClass;
  v11 = __Block_byref_object_dispose__5;
  v12 = getTRIClientClass_softClass;
  if (!getTRIClientClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getTRIClientClass_block_invoke;
    v6[3] = &unk_1E7486A28;
    v6[4] = &v7;
    __getTRIClientClass_block_invoke(v6);
    v1 = *(v8 + 40);
  }

  _Block_object_dispose(&v7, 8);
  qword_1ED4CAA80 = [v1 clientWithIdentifier:221];
  FigSimpleMutexLock();
  _MergedGlobals_55 = fstc_populateCachesWithMutex(&qword_1ED4CAA78);
  v2 = FigCFDictionaryCopyArrayOfValues();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __fstc_installUpdateHandlerWithMutex_block_invoke;
        v10 = &__block_descriptor_40_e8_v16__0_8l;
        v11 = &qword_1ED4CAA78;
        [qword_1ED4CAA80 addUpdateHandlerForNamespaceName:ValueAtIndex usingBlock:&v7];
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }

  else
  {
    __fstc_ensure_block_invoke_cold_1();
  }

  FigSimpleMutexUnlock();
  objc_autoreleasePoolPop(v0);
}

void sub_1965DABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTRIClientClass_block_invoke(uint64_t a1)
{
  TrialLibrary();
  result = objc_getClass("TRIClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getTRIClientClass_block_invoke_cold_1();
  }

  getTRIClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __fstc_installUpdateHandlerWithMutex_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 32);
  *(v2 + 24) = 1;
  if (!*(v2 + 16))
  {
    *(v2 + 24) = 0;
    [*(v2 + 8) refresh];
    fstc_populateCachesWithMutex(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigImageQueueGetTypeID()
{
  MEMORY[0x19A8D3660](&FigImageQueueGetClassID_sRegisterFigImageQueueTypeOnce, RegisterFigImageQueueType);

  return CMBaseClassGetCFTypeID();
}

float FigImageQueueFrameRateGetCurrent(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  v3 = 0.0;
  if (*(a1 + 40) + 1000000000 >= UpTimeNanoseconds)
  {
    v4 = *(a1 + 8);
    if (v4 + 2000000000 <= UpTimeNanoseconds)
    {
      v7 = UpTimeNanoseconds - *(a1 + 24);
      if (v7 <= 1000000000)
      {
        v7 = 1000000000;
      }

      v5 = (1000000000 * *(a1 + 32));
      v6 = v7;
    }

    else
    {
      v5 = (1000000000 * (*(a1 + 32) + *(a1 + 16)));
      v6 = (UpTimeNanoseconds - v4);
    }

    v3 = v5 / v6;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigImageQueueSetPropertyApply(uint64_t a1, uint64_t *a2)
{
  if (!a1 || *MEMORY[0x1E695E738] == a1)
  {
    return FigImageQueueSetPropertyApply_cold_3();
  }

  if (!a2)
  {
    return FigImageQueueSetPropertyApply_cold_2();
  }

  v3 = *a2;
  if (!*a2)
  {
    return FigImageQueueSetPropertyApply_cold_1();
  }

  v4 = a2[1];
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(a1, v3, v4);
  }

  return result;
}

uint64_t FigImageQueueSetPropertyApply2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || *MEMORY[0x1E695E738] == a1)
  {
    return FigImageQueueSetPropertyApply2_cold_1();
  }

  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a1, a3, a2);
  }

  return result;
}

uint64_t FigImageQueueArrayCreateImageQueueConfigurationArray(CFArrayRef theArray, const __CFAllocator *a2, const __CFArray *a3, __CFArray **a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    FigImageQueueArrayCreateImageQueueConfigurationArray_cold_3(&v21);
    return v21;
  }

  Count = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3)
  {
    v9 = CFArrayGetCount(a3);
  }

  else
  {
    v9 = 0;
  }

  if (Count == v9)
  {
    Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v12 = Mutable;
      v18 = a4;
      if (Count >= 1)
      {
        v13 = 0;
        v14 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          v16 = CFArrayGetValueAtIndex(a3, v13);
          v17 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v17, @"FigImageQueueConfigurationKey_ImageQueue", ValueAtIndex);
          if (!FigCFEqual())
          {
            CFDictionarySetValue(v17, @"FigImageQueueConfigurationKey_Options", v16);
          }

          CFArrayAppendValue(v12, v17);
          if (v17)
          {
            CFRelease(v17);
          }

          ++v13;
        }

        while (Count != v13);
      }

      result = 0;
      *v18 = v12;
    }

    else
    {
      FigImageQueueArrayCreateImageQueueConfigurationArray_cold_2(&v20);
      return v20;
    }
  }

  else
  {
    FigImageQueueArrayCreateImageQueueConfigurationArray_cold_1(&v19);
    return v19;
  }

  return result;
}

uint64_t FigImageQueueSlotGetTypeID()
{
  if (_MergedGlobals_56 != -1)
  {
    FigImageQueueSlotGetTypeID_cold_1();
  }

  return qword_1ED4CAAB8;
}

uint64_t figImageQueueSlot_registerTypeIDOnce(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigImageQueueSlotGetSlotID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  FigImageQueueSlotGetSlotID_cold_1();
  return 0;
}

BOOL FigImageQueueSlotIsValid(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

uint64_t FigImageQueueSlotCreateWithSlotID(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    if (a5)
    {
      if (_MergedGlobals_56 != -1)
      {
        FigImageQueueSlotGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v10 = Instance;
        result = 0;
        *(v10 + 16) = a2;
        *(v10 + 24) = a3;
        *(v10 + 32) = a4;
        *a5 = v10;
      }

      else
      {
        FigImageQueueSlotCreateWithSlotID_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      FigImageQueueSlotCreateWithSlotID_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    FigImageQueueSlotCreateWithSlotID_cold_4(&v14);
    return v14;
  }

  return result;
}

void *figImageQueueSlot_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t figImageQueueSlot_finalize(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      return v3();
    }
  }

  return result;
}

BOOL figImageQueueSlot_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

CFStringRef figImageQueueSlot_copyDebugDesc(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigImageQueueSlot %p | %d> imageQueueSlot: %u", a1, v3, a1[4]);
}

uint64_t FigFairplayPSSHAtomParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigFairplayPSSHAtomParserStartServer_block_invoke;
  block[3] = &unk_1E7486F78;
  block[4] = &v3;
  if (FigFairplayPSSHAtomParserStartServer_sFairplayPSSHAtomParserServerSetupOnce != -1)
  {
    dispatch_once(&FigFairplayPSSHAtomParserStartServer_sFairplayPSSHAtomParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigFairplayPSSHAtomParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t FigVideoTargetXPCRemoteGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {

      return remoteXPCVideoTarget_GetObjectID(a1, a2);
    }

    else
    {
      FigVideoTargetXPCRemoteGetObjectID_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    FigVideoTargetXPCRemoteGetObjectID_cold_2(&v4);
    return v4;
  }
}

uint64_t remoteXPCVideoTarget_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 8))
    {
      remoteXPCVideoTarget_GetObjectID_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  else
  {
    remoteXPCVideoTarget_GetObjectID_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t figVideoTargetRemoteCreateCommon(uint64_t a1, void *a2, const void *a3, void *a4)
{
  if (!a2)
  {
    figVideoTargetRemoteCreateCommon_cold_5(v16);
    return LODWORD(v16[0]);
  }

  if (!a4)
  {
    figVideoTargetRemoteCreateCommon_cold_4(v16);
    return LODWORD(v16[0]);
  }

  VideoTargetObject = remoteXPCVideoTarget_CreateVideoTargetObject();
  if (VideoTargetObject)
  {
    return VideoTargetObject;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 112))
  {
    v9 = *(DerivedStorage + 88);
    *(DerivedStorage + 88) = @"Loading";
    if (@"Loading")
    {
      CFRetain(@"Loading");
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __remoteXPCVideoTarget_establishServerConnection_block_invoke;
    v15[3] = &__block_descriptor_tmp_47;
    v15[4] = 0;
    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __videoTargetRemote_establishServerConnectionAsync_block_invoke;
    v16[3] = &unk_1E7486FC0;
    v16[6] = a2;
    v16[7] = a3;
    v16[4] = v15;
    v16[5] = 0;
    if (_MergedGlobals_57 != -1)
    {
      figVideoTargetRemoteCreateCommon_cold_1();
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __remoteXPCVideoTargetClient_EnsureClientEstablishedAsync_block_invoke;
    v17[3] = &unk_1E7486FE8;
    v17[4] = v16;
    FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(qword_1ED4CAAC8, v17);
LABEL_14:
    v10 = 0;
    *a4 = 0;
    return v10;
  }

  v16[0] = 0;
  v17[0] = 0;
  v12 = remoteXPCVideoTargetClient_EnsureClientEstablished();
  if (v12)
  {
    v10 = v12;
  }

  else
  {
    ConnectionEstablishedXPCMessage = remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(a2, a3, v16);
    if (ConnectionEstablishedXPCMessage)
    {
      v10 = ConnectionEstablishedXPCMessage;
    }

    else
    {
      if (_MergedGlobals_57 != -1)
      {
        figVideoTargetRemoteCreateCommon_cold_2();
      }

      v14 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v14)
      {
        v14 = videoTargetRemote_completeObjectSetupWithServerReply(0, v17[0]);
      }

      v10 = v14;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  if (*(qword_1ED4CAAC8 + 16))
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  return v10;
}

uint64_t FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = 0;
  xdict = 0;
  value = 0;
  if (!a2)
  {
    v10 = 1557;
LABEL_21:
    FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget_cold_2(v10, &v14);
    v8 = v14;
    goto LABEL_13;
  }

  if (!a4)
  {
    v10 = 1558;
    goto LABEL_21;
  }

  VideoTargetObject = remoteXPCVideoTargetClient_EnsureClientEstablished();
  if (VideoTargetObject)
  {
    goto LABEL_18;
  }

  VideoTargetObject = remoteXPCVideoTarget_CreateVideoTargetObject();
  if (VideoTargetObject)
  {
    goto LABEL_18;
  }

  VideoTargetObject = FigXPCCreateBasicMessage();
  if (VideoTargetObject)
  {
    goto LABEL_18;
  }

  VideoTargetObject = remoteXPCVideoTarget_GetObjectID(a2, &value);
  if (VideoTargetObject)
  {
    goto LABEL_18;
  }

  xpc_dictionary_set_uint64(xdict, "VideoTargetWithReceiverToShare", value);
  VideoTargetObject = FigXPCMessageSetCFDictionary();
  if (VideoTargetObject)
  {
    goto LABEL_18;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  VideoTargetObject = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (VideoTargetObject)
  {
LABEL_18:
    v8 = VideoTargetObject;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v12, *MEMORY[0x1E69615A0]);
    FigXPCMessageCopyCFString();
    v8 = remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(0, uint64, 0);
    if (!v8)
    {
      *a4 = 0;
    }
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  if (*(qword_1ED4CAAC8 + 16))
  {
    FigXPCRemoteClientKillServerOnTimeout();
  }

  return v8;
}

uint64_t remoteXPCVideoTarget_CreateVideoTargetObject()
{
  FigVideoTargetGetClassID();
  v0 = CMDerivedObjectCreate();
  if (v0)
  {
    return v0;
  }

  remoteXPCVideoTarget_CreateVideoTargetObject_cold_1(&v3);
  return v3;
}

uint64_t RemoteVideoTargetGetRemoteClient()
{
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  return *(qword_1ED4CAAC8 + 16);
}

uint64_t remoteXPCVideoTarget_CompleteVideoTargetObjectSetup(const void *a1, uint64_t a2, __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 8) = 0;
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  v7 = FigXPCRemoteClientAssociateObject();
  if (v7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = @"Failed";
  }

  remoteXPCVideoTarget_updateReceiverLoadingState(a1, a3, v7, 1);
  return v7;
}

void __remoteXPCVideoTarget_establishServerConnection_block_invoke(uint64_t a1, int a2, void *a3)
{
  v3 = a2;
  if (a2 || (v3 = videoTargetRemote_completeObjectSetupWithServerReply(*(a1 + 32), a3)) != 0)
  {
    remoteXPCVideoTarget_updateReceiverLoadingState(*(a1 + 32), @"Failed", v3, 1);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void remoteXPCVideoTarget_updateReceiverLoadingState(const void *a1, const void *a2, int a3, int a4)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF17100)
  {
    LODWORD(v19) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = FigCFEqual();
  *(DerivedStorage + 96) = a3;
  v11 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  FigSimpleMutexUnlock();
  if (!v10)
  {
    if (!FigCFEqual())
    {
LABEL_15:
      if (a4)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v15, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v17 = Mutable;
          FigCFDictionarySetInt64();
          FigCFDictionarySetValue();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          CFRelease(v17);
        }

        else
        {
          remoteXPCVideoTarget_updateReceiverLoadingState_cold_1();
        }
      }

      return;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    LODWORD(v23) = 0;
    v19 = 0;
    v12 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*(v12 + 65) || (active = remoteXPCVideoTarget_informServerActiveStateChanged(a1, *(v12 + 64)), (*(v21 + 6) = active) == 0))
    {
      if (CFDictionaryGetCount(*(v12 + 72)) >= 1)
      {
        ObjectID = remoteXPCVideoTarget_GetObjectID(a1, &v19);
        *(v21 + 6) = ObjectID;
        if (ObjectID)
        {
          goto LABEL_14;
        }

        v24 = MEMORY[0x1E69E9820];
        v25 = 0x40000000;
        v26 = __remoteXPCVideoTarget_setCachedPropertiesOnServer_block_invoke;
        v27 = &unk_1E7487030;
        v28 = &v20;
        v29 = v19;
        FigCFDictionaryApplyBlock();
      }

      *(v12 + 65) = 0;
      CFDictionaryRemoveAllValues(*(v12 + 72));
    }

LABEL_14:
    FigSimpleMutexUnlock();
    v14 = *(v21 + 6);
    _Block_object_dispose(&v20, 8);
    if (v14)
    {
      return;
    }

    goto LABEL_15;
  }
}

void __videoTargetRemote_establishServerConnectionAsync_block_invoke(uint64_t a1, int a2)
{
  cf = 0;
  if (a2 || remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(*(a1 + 48), *(a1 + 56), &cf))
  {
    goto LABEL_6;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  if (FigXPCRemoteClientSendAsyncMessageWithReplyHandler())
  {
LABEL_6:
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = cf;
  if (cf)
  {

    CFRelease(v6);
  }
}

uint64_t remoteXPCVideoTarget_createConnectionEstablishedXPCMessage(void *a1, uint64_t a2, void *a3)
{
  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    return v5;
  }

  value = xpc_dictionary_get_value(a1, kFigVideoReceiverEndpoint);
  if (!value)
  {
    v10 = 1292;
LABEL_10:
    FigVideoTargetCreateRemoteSharingVideoReceiverFromRemoteVideoTarget_cold_2(v10, &v11);
    return v11;
  }

  v7 = value;
  if (MEMORY[0x19A8D7060]() != MEMORY[0x1E69E9E90])
  {
    v10 = 1293;
    goto LABEL_10;
  }

  xpc_dictionary_set_value(0, "ReceiverEndpoint", v7);
  v8 = FigXPCMessageSetCFDictionary();
  if (!v8)
  {
    *a3 = 0;
  }

  return v8;
}

void FigVideoTargetRemoteConnectionEstablisherCreateOnce(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405E66F15BuLL);
  v3 = v2;
  if (!v2)
  {
    FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_3();
    goto LABEL_7;
  }

  *v2 = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3[1] = Mutable;
  if (Mutable && (v6 = FigSimpleMutexCreate(), (v3[3] = v6) != 0))
  {
    v11[5] = 1;
    v11[6] = remoteXPCVideoTargetClient_DeadConnectionCallback;
    v11[7] = remoteXPCVideoTargetClient_NotificationFilter;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v7 = CFDictionaryCreateMutable(v4, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v7, *MEMORY[0x1E69633B0], @"FigVideoTarget_ServerConnectionDied");
      *v3 = 0;
      FigRemote_ShouldConnectToMediaparserdForFileParsing();
      FigRemote_ShouldConnectToMediaplaybackd();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __FigVideoTargetRemoteConnectionEstablisher_EstablishConnectionInternal_block_invoke;
      v11[3] = &__block_descriptor_tmp_11_5;
      v11[4] = v3;
      Async = FigXPCRemoteClientCreateAsync();
      CFRelease(v8);
      if (!Async)
      {
LABEL_6:
        *a1 = v3;
        v3 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_1(v11);
      if (!LODWORD(v11[0]))
      {
        goto LABEL_6;
      }
    }
  }

  else if (FigVideoTargetRemoteConnectionEstablisherCreateOnce_cold_2())
  {
    goto LABEL_7;
  }

  if (v3[3])
  {
    FigSimpleMutexDestroy();
    v3[3] = 0;
  }

  v10 = v3[1];
  if (v10)
  {
    CFRelease(v10);
    v3[1] = 0;
  }

LABEL_7:
  free(v3);
}

uint64_t FigVideoTargetConnectionEstablisher_EstablishConnectionAsync(CFMutableArrayRef *a1, void *a2)
{
  if (!a1)
  {
    v5 = FigSignalErrorAtGM();
    v4 = 2;
LABEL_13:
    v8 = a2[2];

    return v8(a2, v5, v4);
  }

  FigSimpleMutexLock();
  v4 = *a1;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 0;
    }

    else if (v4 == 2)
    {
      v5 = *(a1 + 1);
    }

    else
    {
      v5 = FigSignalErrorAtGM();
      v4 = 2;
    }

    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  v6 = _Block_copy(a2);
  CFArrayAppendValue(a1[1], v6);
  _Block_release(v6);

  return FigSimpleMutexUnlock();
}

void remoteXPCVideoTargetClient_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == FigVideoTargetGetTypeID())
  {
    *(CMBaseObjectGetDerivedStorage() + 8) = 1;

    remoteXPCVideoTarget_updateReceiverLoadingState(a1, @"Failed", -15561, 1);
  }
}

uint64_t remoteXPCVideoTargetClient_NotificationFilter(const void *a1, const void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PreferredDataChannelGroupsChanged"))
  {
    Value = FigCFDictionaryGetValue();
    cf[0] = 0;
    v6 = CFGetAllocator(a1);
    v7 = FigDataChannelGroupsArrayCreateFromDictionary(v6, Value, cf);
    FigSimpleMutexLock();
    v8 = *(DerivedStorage + 40);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 40) = 0;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      *(DerivedStorage + 40) = cf[0];
      cf[0] = 0;
      v9 = 1;
    }

    *(DerivedStorage + 48) = v9;
LABEL_17:
    FigSimpleMutexUnlock();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    return 0;
  }

  if (CFEqual(a2, @"DataChannelSettingsChanged"))
  {
    v10 = FigCFDictionaryGetValue();
    cf[0] = 0;
    v11 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v10, cf);
    FigSimpleMutexLock();
    v12 = *(DerivedStorage + 24);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 24) = 0;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      *(DerivedStorage + 24) = cf[0];
      cf[0] = 0;
      v13 = 1;
    }

    *(DerivedStorage + 32) = v13;
    goto LABEL_17;
  }

  if (CFEqual(a2, @"ReceiverLoadingStateChanged"))
  {
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetInt64IfPresent();
    remoteXPCVideoTarget_updateReceiverLoadingState(a1, @"Loading", 0, 0);
  }

  return 0;
}

uint64_t __remoteXPCVideoTarget_setCachedPropertiesOnServer_block_invoke(uint64_t a1)
{
  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_2();
  }

  result = FigXPCSendStdSetPropertyMessage();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

__CFString *remoteXPCVideoTarget_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigVideoTargetRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteXPCVideoTarget_isValid()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v0 = 0;
  }

  else if (FigCFEqual())
  {
    if (_MergedGlobals_57 != -1)
    {
      figVideoTargetRemoteCreateCommon_cold_2();
    }

    FigXPCRemoteClientGetServerPIDSync();
    v0 = 0;
  }

  else
  {
    FigCFEqual();
    v0 = 1;
  }

  FigSimpleMutexUnlock();
  return v0;
}

uint64_t remoteXPCVideoTarget_isFullySetupWithServer()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v0 = FigCFEqual();
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t remoteXPCVideoTarget_copyPreferredDataChannelGroups(uint64_t a1, const __CFAllocator *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_3(&v15);
    return v15;
  }

  v6 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    remoteXPCVideoTarget_copyPreferredDataChannelGroups_cold_2(&v15);
    return v15;
  }

  FigSimpleMutexLock();
  if (*(v6 + 48))
  {
    Copy = FigCFArrayCreateCopy();
    FigSimpleMutexUnlock();
LABEL_23:
    v12 = 0;
    *a3 = Copy;
    return v12;
  }

  FigSimpleMutexUnlock();
  v8 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v15 = 0;
  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
    goto LABEL_25;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9 || (v9 = FigXPCMessageCopyCFDictionary(), v9) || (v9 = FigDataChannelGroupsArrayCreateFromDictionary(a2, v15, &cf), v9))
  {
LABEL_25:
    v12 = v9;
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v10 = *(v8 + 40);
    v11 = cf;
    *(v8 + 40) = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    *(v8 + 48) = 1;
    FigSimpleMutexUnlock();
    v12 = 0;
    Copy = cf;
    cf = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, FigVideoTargetRemoteConnectionEstablisherCreateOnce);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (!v12)
  {
    goto LABEL_23;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v12;
}

uint64_t remoteXPCVideoTarget_copyDataChannelSettings(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    remoteXPCVideoTarget_copyDataChannelSettings_cold_3(&v14);
    return v14;
  }

  v5 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer())
  {
    remoteXPCVideoTarget_copyDataChannelSettings_cold_2(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  if (*(v5 + 32))
  {
    Copy = FigCFArrayCreateCopy();
    FigSimpleMutexUnlock();
LABEL_23:
    v11 = 0;
    *a3 = Copy;
    return v11;
  }

  FigSimpleMutexUnlock();
  v7 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v14 = 0;
  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    goto LABEL_25;
  }

  if (_MergedGlobals_57 != -1)
  {
    figVideoTargetRemoteCreateCommon_cold_1();
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8 || (v8 = FigXPCMessageCopyCFArray(), v8) || (v8 = FigVideoReceiverDataChannelSettingsCopyDeserialized(v14, &cf), v8))
  {
LABEL_25:
    v11 = v8;
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v9 = *(v7 + 24);
    v10 = cf;
    *(v7 + 24) = cf;
    if (v10)
    {
      CFRetain(v10);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    *(v7 + 32) = 1;
    FigSimpleMutexUnlock();
    v11 = 0;
    Copy = cf;
    cf = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (_MergedGlobals_57 != -1)
  {
    dispatch_once_f(&_MergedGlobals_57, &qword_1ED4CAAC8, FigVideoTargetRemoteConnectionEstablisherCreateOnce);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (!v11)
  {
    goto LABEL_23;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v11;
}

uint64_t remoteXPCVideoTarget_setActive(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 64) = a2;
  *(DerivedStorage + 65) = 1;
  FigSimpleMutexUnlock();
  result = remoteXPCVideoTarget_isFullySetupWithServer();
  if (result)
  {

    return remoteXPCVideoTarget_informServerActiveStateChanged(a1, a2);
  }

  return result;
}

uint64_t remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2 && (v5 = DerivedStorage, v6 = CFGetTypeID(a2), v6 == FigLayerSynchronizerConfigurationGetTypeID()))
    {
      v7 = *(v5 + 80);
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v8)
        {

          return v8(v7, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        return 4294951630;
      }
    }

    else
    {
      remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    remoteXPCVideoTarget_addLayersToLayerSynchronizerConfiguration_cold_2(&v11);
    return v11;
  }
}

uint64_t remoteXPCVideoTarget_updateDurationWithDeferredTransaction(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = *(DerivedStorage + 80);
    if (v7)
    {
      v12 = *a2;
      v14 = *(a2 + 2);
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 120);
      if (!v8)
      {
        return 0;
      }

      v16 = v12;
      v17 = v14;
      v9 = v8(v7, &v16, a3);
      if (v9 == -12782)
      {
        return 0;
      }
    }

    else
    {
      v13 = *a2;
      v15 = *(a2 + 2);
      CMBaseObjectGetDerivedStorage();
      v18 = 0;
      v10 = FigXPCCreateBasicMessage();
      if (!v10)
      {
        v16 = v13;
        v17 = v15;
        v10 = FigXPCMessageSetCMTime();
        if (!v10)
        {
          if (_MergedGlobals_57 != -1)
          {
            figVideoTargetRemoteCreateCommon_cold_1();
          }

          v10 = FigXPCRemoteClientSendAsyncMessage();
        }
      }

      v9 = v10;
      FigXPCRelease();
      if (_MergedGlobals_57 != -1)
      {
        figVideoTargetRemoteCreateCommon_cold_1();
      }

      FigXPCRemoteClientKillServerOnTimeout();
    }
  }

  else
  {
    remoteXPCVideoTarget_updateDurationWithDeferredTransaction_cold_3(&v16);
    return v16;
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_5_55()
{

  return _os_log_send_and_compose_impl();
}

void OUTLINED_FUNCTION_6_51(uint64_t a1, uint64_t a2, void (__cdecl *a3)(void *))
{

  dispatch_once_f(v3, v3 + 1, a3);
}

uint64_t FigTTMLDocumentWriterCreateStyleOptimizer(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateStyleOptimizer_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateStyleOptimizer_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterStyleOptimizer_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterStyleOptimizer_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterStyleOptimizer_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v3 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v3);
}

void optimizeStyleAttributesAux(const void *a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  ChildrenCount = FigTTMLDocumentWriterElementGetChildrenCount(a2);
  v6 = *MEMORY[0x1E695E738];
  if (ChildrenCount >= 1)
  {
    v7 = 0;
    while (1)
    {
      ChildAtIndex = FigTTMLDocumentWriterElementGetChildAtIndex(a2, v7);
      if (ChildAtIndex)
      {
        v9 = ChildAtIndex;
        v10 = CFGetTypeID(ChildAtIndex);
        if (v10 == FigCaptionDataGetTypeID())
        {
          goto LABEL_5;
        }

        v14 = CFGetTypeID(v9);
        if (v14 == FigTTMLDocumentWriterElementGetTypeID())
        {
          break;
        }
      }

LABEL_10:
      if (ChildrenCount == ++v7)
      {
        goto LABEL_11;
      }
    }

    optimizeStyleAttributesAux(a1, v9);
    Attribute = FigTTMLDocumentWriterElementGetAttribute(v9, a1);
    if (Attribute)
    {
      v16 = Attribute;
      v13 = CFDictionaryGetValue(Mutable, Attribute) + 1;
      v11 = Mutable;
      v12 = v16;
    }

    else
    {
LABEL_5:
      v11 = Mutable;
      v12 = v6;
      v13 = 0x7FFFFFFFLL;
    }

    CFDictionarySetValue(v11, v12, v13);
    goto LABEL_10;
  }

LABEL_11:
  cf2[0] = v6;
  cf2[1] = 0;
  CFDictionaryApplyFunction(Mutable, findMostCommonStyleValue, cf2);
  if (cf2[0] != v6)
  {
    v17 = FigTTMLDocumentWriterElementGetAttribute(a2, a1);
    if (!v17 || CFEqual(v17, cf2[0]))
    {
      FigTTMLDocumentWriterElementSetAttribute(a2, a1, cf2[0]);
      if (ChildrenCount >= 1)
      {
        for (i = 0; i != ChildrenCount; ++i)
        {
          v19 = FigTTMLDocumentWriterElementGetChildAtIndex(a2, i);
          if (v19)
          {
            v20 = v19;
            v21 = CFGetTypeID(v19);
            if (v21 == FigTTMLDocumentWriterElementGetTypeID())
            {
              FigTTMLDocumentWriterElementGetAttribute(v20, a1);
              if (FigCFEqual())
              {
                FigTTMLDocumentWriterElementRemoveAttribute(v20, a1);
              }
            }
          }
        }
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t findMostCommonStyleValue(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    *a3 = result;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t FigPlaybackCoordinatorGetClassID()
{
  if (FigPlaybackCoordinatorGetClassID_onceToken != -1)
  {
    FigPlaybackCoordinatorGetClassID_cold_1();
  }

  return sFigPlaybackCoordinatorClassID;
}

uint64_t RegisterFigPlaybackCoordinatorBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPlaybackCoordinatorGetTypeID()
{
  if (FigPlaybackCoordinatorGetClassID_onceToken != -1)
  {
    FigPlaybackCoordinatorGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigSFBSKeepForegroundAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigSFBSKeepForegroundAssertionGetTypeID_sFigSFBSKeepForegroundAssertionTypeID = result;
  return result;
}

uint64_t figSFBSKFAssertion_finalize()
{
  if (dword_1EAF17120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

CFStringRef figSFBSKFAssertion_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigSFBSKeepForegroundAssertion %p retainCount: %ld>", a1, v3);
}

uint64_t FigSFBSKeepForegroundAssertionCreate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_3(v10);
    return v10[0];
  }

  if (FigSFBSKeepForegroundAssertionGetTypeID_sRegisterFigSFBSKeepForegroundAssertionTypeOnce != -1)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSFBSKeepForegroundAssertionCreate_cold_2(v10);
    return v10[0];
  }

  v7 = Instance;
  *(Instance + 16) = a3;
  if (dword_1EAF17120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
  *a4 = v7;
  return result;
}

uint64_t FigImageQueueCreateForCoreVideoWithOptions(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigImageQueueGetClassID();
    v5 = CMDerivedObjectCreate();
    if (!v5)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = FigReentrantMutexCreate();
      *(DerivedStorage + 16) = DerivedStorage + 16;
      *(DerivedStorage + 24) = DerivedStorage + 16;
      *(DerivedStorage + 8) = v8;
      *(DerivedStorage + 144) = 1;
      *(DerivedStorage + 152) = 0x100000001;
      *(DerivedStorage + 1128) = FigSimpleMutexCreate();
      *(DerivedStorage + 1124) = 1;
      piqcv_setupLoggingID(0, a2);
      CMBaseObjectGetDerivedStorage();
      if (dword_1EAF170E0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = 0;
      *a3 = 0;
    }

    return v5;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void piqcv_setupLoggingID(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1192) = 0;
  if (a2)
  {
    v4 = DerivedStorage;
    Value = CFDictionaryGetValue(a2, @"BaseLoggingIdentifier");
    v6 = *MEMORY[0x1E695E480];
    LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
    v8 = CFStringCreateWithFormat(v6, 0, @"%@:IQ/%@", Value, LoggingIdentifierOfLength);
    v9 = v8;
    if (v8)
    {
      CFStringGetCString(v8, (v4 + 1192), 32, 0x600u);
    }

    if (LoggingIdentifierOfLength)
    {
      CFRelease(LoggingIdentifierOfLength);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t FigImageQueueCreateForDiscardingWithOptions(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v9[22] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v5 = FigImageQueueCreateForCoreVideoWithOptions(a1, 0, v9);
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 1176) = 1;
    *(DerivedStorage + 1124) = 2;
    piqcv_setupLoggingID(v9[0], a2);
    if (dword_1EAF170E0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *a3 = v9[0];
  return v5;
}

uint64_t piqcv_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF170E0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  piqUnhookVisualContext(a1);
  piqDrop(a1, MEMORY[0x1E6960C70]);
  v5 = *(DerivedStorage + 1184);
  if (v5)
  {
    CMBaseObject = FigImageQueueGaugeGetCMBaseObject(v5, v4);
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    v9 = *(DerivedStorage + 1184);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 1184) = 0;
    }
  }

  FigSimpleMutexDestroy();
  result = *(DerivedStorage + 1128);
  if (result)
  {
    return FigSimpleMutexDestroy();
  }

  return result;
}

uint64_t piqcv_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"FigImageQueueProperty_CurrentFrameRate", a2))
  {
    LODWORD(valuePtr) = FigImageQueueFrameRateGetCurrent(DerivedStorage + 1128);
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  if (CFEqual(@"FigImageQueueProperty_FirstImageEnqueued", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 172);
LABEL_7:
    if (!v10)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    v8 = CFRetain(*v9);
    goto LABEL_10;
  }

  if (CFEqual(@"FigImageQueueProperty_LimitCapacityToOneFrame", a2))
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = *(DerivedStorage + 170);
    goto LABEL_7;
  }

  if (!CFEqual(@"ImageQueueGauge", a2))
  {
    return 4294954512;
  }

  v8 = *(DerivedStorage + 1184);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v13 = (DerivedStorage + 1184);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = FigImageQueueGaugeCreate(AllocatorForMedia, 0, (DerivedStorage + 1184));
    if (!v11)
    {
      v15 = *v13;
      FigImageQueueGetSafeDisplayDuration(a1, &valuePtr);
      v11 = FigImageQueueGaugeSetSafeDisplayDuration(v15, &valuePtr);
    }

    v8 = *v13;
    if (!*v13)
    {
      goto LABEL_11;
    }
  }

  v8 = CFRetain(v8);
LABEL_11:
  *a4 = v8;
  return v11;
}

uint64_t piqcv_setProperty(uint64_t a1, const void *a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"FigImageQueueProperty_LimitCapacityToOneFrame", a2))
  {
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFBooleanGetTypeID()))
    {
      result = 0;
      *(DerivedStorage + 170) = *MEMORY[0x1E695E4D0] == a3;
    }

    else
    {
      piqcv_setProperty_cold_1(&v14);
      return v14;
    }
  }

  else if (CFEqual(@"ImageQueueGauge", a2))
  {
    v9 = *(DerivedStorage + 1184);
    if (!v9 || v9 == a3)
    {
      if (v9)
      {
        CFRelease(v9);
        *(DerivedStorage + 1184) = 0;
      }

      if (a3)
      {
        a3 = CFRetain(a3);
      }

      *(DerivedStorage + 1184) = a3;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v10)
      {
        v10(&v12, a1);
      }

      else
      {
        v12 = *MEMORY[0x1E6960C70];
        v13 = *(MEMORY[0x1E6960C70] + 16);
      }

      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v11)
      {
        v14 = v12;
        v15 = v13;
        return v11(a3, &v14);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    return 4294954512;
  }

  return result;
}

void piqUnhookVisualContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v5)
    {
      v5(v3, 0, 0, 0, 0, a1);
    }

    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }
  }
}

uint64_t piqDrop(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage + 16;
  v4 = *(DerivedStorage + 16);
  if (v4 == (DerivedStorage + 16))
  {
    return 0;
  }

  else
  {
    v6 = DerivedStorage;
    v7 = 0;
    v8 = DerivedStorage + 248;
    do
    {
      if (*(a2 + 12))
      {
        v9 = *v4;
        if (v9 == v5)
        {
          return v7;
        }

        if (v6[39] < 1)
        {
          time1 = *(v9 + 16);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            return v7;
          }
        }

        else
        {
          time1 = *(v9 + 16);
          time2 = *a2;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            return v7;
          }
        }
      }

      v10 = *v5;
      if (*(*v5 + 68))
      {
        ++v6[263];
      }

      else if (*(a2 + 12))
      {
        v11 = v6[56];
        if (v11 <= 0x63)
        {
          time1 = *(v10 + 16);
          CMTimeConvertScale(&v13, &time1, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          *(v8 + 4 * v6[56]) = v13.value;
          v11 = v6[56];
        }

        v6[56] = v11 + 1;
      }

      else
      {
        ++v6[264];
      }

      piqRemoveItemFromQueue(v10);
      v4 = *v5;
      v7 = 1;
    }

    while (*v5 != v5);
  }

  return v7;
}

void piqRemoveItemFromQueue(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *v3 = *a1;
  *(v2 + 8) = v3;
  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

uint64_t piqcv_setOutputVisualContext(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      v9 = CFRetain(a2);
      *v8 = v9;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v10)
      {
        v10(v9, a3, piqIsNewImageAvailable, piqCopyImageForTime, piqGetEarliestSequentialImageTimeAfterTime, a1);
      }
    }

    return 0;
  }

  if (!a2)
  {
    piqUnhookVisualContext(a1);
    return 0;
  }

  if (*DerivedStorage == a2)
  {
    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t piqcv_flush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 16);
  v4 = *v3;
  *(DerivedStorage + 16) = *v3;
  *(v4 + 8) = DerivedStorage + 16;
  v5 = MEMORY[0x1E6960C70];
  v6 = piqDrop(a1, MEMORY[0x1E6960C70]);
  *v3 = DerivedStorage + 16;
  v3[1] = DerivedStorage + 16;
  *(DerivedStorage + 24) = v3;
  *v3[1] = v3;
  ++*(DerivedStorage + 144);
  *(DerivedStorage + 171) = 257;
  v7 = *(v5 + 2);
  *(DerivedStorage + 192) = v7;
  v8 = *v5;
  *(DerivedStorage + 176) = *v5;
  *(DerivedStorage + 216) = v7;
  *(DerivedStorage + 200) = v8;
  *(DerivedStorage + 88) = 0;
  FigSimpleMutexUnlock();
  if (v6)
  {
    piqcv_postOccupancyChanged(a1);
  }

  if (*DerivedStorage)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return 0;
}

uint64_t piqcv_canEnqueueImage()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 170))
  {
    return *(DerivedStorage + 16) == DerivedStorage + 16;
  }

  else
  {
    return 99;
  }
}

uint64_t piqcv_enqueueImage(uint64_t a1, __CVBuffer *a2, const void *a3, __int128 *a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (*(a4 + 12) & 1) != 0)
  {
    v12 = DerivedStorage;
    if (*(DerivedStorage + 1176))
    {
      return 0;
    }

    FigSimpleMutexLock();
    v13 = *(v12 + 1184);
    if (v13)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v14)
      {
        v14(v13, 0);
      }
    }

    if (a5)
    {
      ++*(v12 + 144);
      v15 = MEMORY[0x1E6960C70];
      v16 = *MEMORY[0x1E6960C70];
      *(v12 + 176) = *MEMORY[0x1E6960C70];
      v17 = *(v15 + 16);
      *(v12 + 192) = v17;
      *(v12 + 200) = v16;
      *(v12 + 216) = v17;
    }

    if ((*(v12 + 188) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (*(v12 + 156) < 1)
    {
      time1 = *(v12 + 176);
      v31 = *a4;
      if ((CMTimeCompare(&time1, &v31) & 0x80000000) == 0)
      {
LABEL_13:
        if (*(v12 + 171))
        {
          a5 = a5 | 1;
          *(v12 + 171) = 0;
        }

        v18 = malloc_type_malloc(0x48uLL, 0x10600402FA6333DuLL);
        if (v18)
        {
          v19 = v18;
          v18[6] = CVBufferRetain(a2);
          v19[7] = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          v20 = *a4;
          v19[4] = *(a4 + 2);
          *(v19 + 1) = v20;
          v19[5] = *(v12 + 144);
          *(v19 + 16) = a5 & 3;
          *(v19 + 34) = 0;
          v21 = CMBaseObjectGetDerivedStorage();
          for (i = *(v21 + 16); i != v21 + 16; i = *i)
          {
            if (*(i + 40) < *(v21 + 144))
            {
              v23 = *(i + 8);
              if (*(i + 68))
              {
                ++*(v21 + 1052);
              }

              else
              {
                ++*(v21 + 1056);
              }

              piqRemoveItemFromQueue(i);
              i = v23;
            }
          }

          v25 = (v12 + 16);
          v24 = *(v12 + 16);
          if (v24 != (v12 + 16))
          {
            v26 = (v12 + 16);
            do
            {
              if (*(v12 + 156) < 1)
              {
                time1 = *(v19 + 2);
                v31 = *(v24 + 2);
                if (CMTimeCompare(&time1, &v31) >= 1)
                {
                  break;
                }
              }

              else
              {
                time1 = *(v19 + 2);
                v31 = *(v24 + 2);
                if (CMTimeCompare(&time1, &v31) < 0)
                {
                  break;
                }
              }

              v26 = *v26;
              v24 = *v26;
            }

            while (*v26 != v25);
            v24 = *v26;
            v25 = v26;
          }

          *v19 = v24;
          v19[1] = v25;
          v24[1] = v19;
          *v19[1] = v19;
          time1 = *a4;
          IsImageTimeSequentialSafe = piqIsImageTimeSequentialSafe(a1, a5, &time1);
          if (IsImageTimeSequentialSafe)
          {
            *(v19 + 69) = 1;
          }

          FigSimpleMutexUnlock();
          v28 = *v12;
          if (*v12)
          {
            v31 = *a4;
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 80);
            if (v29)
            {
              time1 = v31;
              v29(v28, &time1, a5);
            }

            if (IsImageTimeSequentialSafe)
            {
              time1 = *a4;
              piqReportImageAvailableSequential(a1, &time1, a5);
            }
          }

          if (!*(v12 + 168))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          if (!*(v12 + 172))
          {
            *(v12 + 172) = 1;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          piqcv_postOccupancyChanged(a1);
          return 0;
        }

        v30 = 4294954484;
LABEL_53:
        FigSimpleMutexUnlock();
        return v30;
      }
    }

    else
    {
      time1 = *(v12 + 176);
      v31 = *a4;
      if (CMTimeCompare(&time1, &v31) <= 0)
      {
        goto LABEL_13;
      }
    }

    v30 = 0;
    ++*(v12 + 1048);
    goto LABEL_53;
  }

  return FigSignalErrorAtGM();
}

uint64_t piqcv_setDirection(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 152);
  if (a2 >= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (a2 > 0.0)
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    *(DerivedStorage + 152) = v7;
    if (v7)
    {
      if (*(DerivedStorage + 156) != v7)
      {
        *(DerivedStorage + 156) = v7;
        if (v6 || *(DerivedStorage + 160) == *(DerivedStorage + 144))
        {
          piqcv_flush(a1);
        }
      }
    }
  }

  else
  {
    *(DerivedStorage + 160) = *(DerivedStorage + 144);
    *(DerivedStorage + 152) = 0;
  }

  *(v5 + 169) = a2 == 1.0;
  return 0;
}

uint64_t piqcv_setUpcomingImageInfo(uint64_t a1, unsigned int a2, __int128 *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v24[32], 0, 24);
  if (a2 < 4)
  {
    v9 = DerivedStorage;
    if (a2 != 2 || (*(a3 + 3) & 0x1D) == 1 && (*(a4 + 12) & 0x1D) == 1)
    {
      FigSimpleMutexLock();
      v10 = *a3;
      v11 = *(a3 + 2);
      v12 = v9 + 16;
      v13 = *(v9 + 16);
      *(v9 + 108) = v11;
      *(v9 + 92) = v10;
      v14 = *(a4 + 16);
      *(v9 + 116) = *a4;
      *(v9 + 132) = v14;
      *(v9 + 88) = a2;
      if (v13 != (v9 + 16))
      {
        v15 = 1;
        do
        {
          while (*(v13 + 68))
          {
LABEL_10:
            v13 = *v13;
            if (v13 == v12)
            {
              v19 = v15 == 0;
              goto LABEL_18;
            }
          }

          if (*(v13 + 69) || (v16 = *(v13 + 16), *v24 = *(v13 + 2), !piqIsImageTimeSequentialSafe(a1, v16, v24)))
          {
            v15 = 0;
            goto LABEL_10;
          }

          *&v24[32] = *(v13 + 2);
          v17 = *(v13 + 16);
          v15 = 1;
          *(v13 + 69) = 1;
          FigSimpleMutexUnlock();
          *v24 = *&v24[32];
          piqReportImageAvailableSequential(a1, v24, v17);
          FigSimpleMutexLock();
          v13 = *(v9 + 16);
        }

        while (v13 != v12);
      }

      v19 = 0;
LABEL_18:
      FigSimpleMutexUnlock();
      if (a2 == 3)
      {
        if (!v19)
        {
          v20 = *v9;
          if (*v9)
          {
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 96);
            if (v21)
            {
              v21(v20);
            }

            *(v9 + 173) = 1;
          }
        }
      }

      else
      {
        *(v9 + 173) = 0;
        if (a2 == 1)
        {
          if (!v19)
          {
            v22 = *v9;
            if (*v9)
            {
              v23 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (v23)
              {
                v23(v22);
              }

              *(v9 + 174) = 1;
            }
          }

          return 0;
        }
      }

      *(v9 + 174) = 0;
      return 0;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t piqcv_getOccupancyInfo(uint64_t a1, _DWORD *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = **&MEMORY[0x1E6960C70];
  v13 = v14;
  ++*(DerivedStorage + 1068);
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 16);
  if (v8 != (DerivedStorage + 16))
  {
    v9 = 0;
    while (*(v8 + 68))
    {
LABEL_12:
      v8 = *v8;
      if (v8 == (DerivedStorage + 16))
      {
        goto LABEL_15;
      }
    }

    if (v9)
    {
      time1 = *(v8 + 2);
      v11 = v14;
      if (CMTimeCompare(&time1, &v11) < 0)
      {
        v14 = *(v8 + 2);
      }

      time1 = v13;
      v11 = *(v8 + 2);
      if ((CMTimeCompare(&time1, &v11) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = *(v8 + 2);
    }

    v13 = *(v8 + 2);
LABEL_11:
    ++v9;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  if (a2)
  {
    *a2 = v9;
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v13;
  }

  return 0;
}

uint64_t piqcv_copyPerformanceDictionary(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = -1;
  v5 = (DerivedStorage + 16);
  do
  {
    v5 = *v5;
    ++v4;
  }

  while (v5 != (DerivedStorage + 16));
  FigSimpleMutexUnlock();
  *(DerivedStorage + 1060) = v4;
  v6 = *MEMORY[0x1E695E480];

  return PIQCopyPerformanceDictionaryForInstanceStatistics(v6, (DerivedStorage + 224), a2);
}

CMTime *piqcv_getSafeDisplayDuration@<X0>(CMTime *a1@<X0>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 156);
  v6 = *(DerivedStorage + 88);
  v9 = *(DerivedStorage + 92);
  v8 = *(DerivedStorage + 116);
  return FigImageQueueCalculateSafeDisplayDuration(a1, v5, v6, &v9, &v8, a2);
}

uint64_t piqcv_postNotification()
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t piqcv_flushFramesFollowingCurrent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  piqcv_flush(a1);
  v3 = *(DerivedStorage + 1184);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v4(v3, 1);
    }
  }

  return 0;
}

uint64_t piqIsNewImageAvailable(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    FigSignalErrorAtGM();
    return 0;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = v5 + 16;
  for (i = *(v5 + 16); i != v6; i = *i)
  {
    if (*(i + 68))
    {
      continue;
    }

    if ((i[8] & 2) != 0)
    {
      goto LABEL_17;
    }

    if (*(v5 + 156) < 1)
    {
      time1 = *(i + 2);
      v10 = *a2;
      if (CMTimeCompare(&time1, &v10) < 0)
      {
        continue;
      }
    }

    else
    {
      time1 = *(i + 2);
      v10 = *a2;
      if (CMTimeCompare(&time1, &v10) >= 1)
      {
        continue;
      }
    }

    v8 = *i;
    if (*i == v6)
    {
      goto LABEL_17;
    }

    if (*(v5 + 156) < 1)
    {
      time1 = *a2;
      v10 = *(v8 + 2);
      if (CMTimeCompare(&time1, &v10) > 0)
      {
LABEL_17:
        v4 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      time1 = *a2;
      v10 = *(v8 + 2);
      if (CMTimeCompare(&time1, &v10) < 0)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = 0;
LABEL_19:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t piqCopyImageForTime(uint64_t a1, uint64_t a2, CMTime *a3, char a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v73 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a3->flags & 1) == 0)
  {

    return FigSignalErrorAtGM();
  }

  v15 = DerivedStorage;
  v61 = a7;
  FigSimpleMutexLock();
  v17 = v15 + 16;
  v16 = *(v15 + 16);
  if (v16 == v15 + 16)
  {
    v41 = 0;
    v62 = 0;
    goto LABEL_70;
  }

  v58 = a5;
  v59 = a6;
  v60 = a8;
  v62 = 0;
  while (1)
  {
    v18 = *(v16 + 64);
    if (*(v15 + 156) < 1)
    {
      if (((v71 = *(v16 + 16), v24 = *(v16 + 28), v72 = *(v16 + 24), v25 = *(v16 + 32), value = a3->value, flags = a3->flags, timescale = a3->timescale, epoch = a3->epoch, (v24 & 0x1F) == 3) || (flags & 0x1F) == 3) && (memset(&time1, 0, sizeof(time1)), rhs.epoch = epoch, lhs.value = v71, lhs.timescale = v72, lhs.flags = v24, lhs.epoch = v25, rhs.value = a3->value, rhs.timescale = a3->timescale, rhs.flags = flags, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) < 1))
      {
        v23 = 1;
      }

      else
      {
        time1.value = v71;
        time1.timescale = v72;
        time1.flags = v24;
        time1.epoch = v25;
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        v23 = CMTimeCompare(&time1, &time) >= 0;
      }
    }

    else
    {
      v71 = *(v16 + 16);
      v19 = *(v16 + 28);
      v72 = *(v16 + 24);
      v20 = *(v16 + 32);
      value = a3->value;
      v21 = a3->flags;
      timescale = a3->timescale;
      v22 = a3->epoch;
      if ((v19 & 0x1F) != 3 && (v21 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.epoch = v22, lhs.value = v71, lhs.timescale = v72, lhs.flags = v19, lhs.epoch = v20, rhs.value = a3->value, rhs.timescale = a3->timescale, rhs.flags = v21, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), v23 = 1, CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v71;
        time1.timescale = v72;
        time1.flags = v19;
        time1.epoch = v20;
        time.value = value;
        time.timescale = timescale;
        time.flags = v21;
        time.epoch = v22;
        v23 = CMTimeCompare(&time1, &time) < 1;
      }
    }

    v28 = *v16;
    if (*v16 == v17)
    {
      break;
    }

    if (*(v15 + 156) < 1)
    {
      v71 = a3->value;
      v35 = a3->flags;
      v72 = a3->timescale;
      v36 = a3->epoch;
      value = *(v28 + 16);
      v37 = *(v28 + 28);
      timescale = *(v28 + 24);
      v38 = *(v28 + 32);
      if ((v35 & 0x1F) != 3 && (v37 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v39 = a3->value, rhs.epoch = v38, lhs.value = v39, lhs.timescale = a3->timescale, lhs.flags = v35, lhs.epoch = v36, rhs.value = value, rhs.timescale = timescale, rhs.flags = v37, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v71;
        time1.timescale = v72;
        time1.flags = v35;
        time1.epoch = v36;
        time.value = value;
        time.timescale = timescale;
        time.flags = v37;
        time.epoch = v38;
        LOBYTE(v34) = CMTimeCompare(&time1, &time) > 0;
        if (!v23)
        {
          goto LABEL_42;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v71 = a3->value;
      v29 = a3->flags;
      v72 = a3->timescale;
      v30 = a3->epoch;
      value = *(v28 + 16);
      v31 = *(v28 + 28);
      timescale = *(v28 + 24);
      v32 = *(v28 + 32);
      if ((v29 & 0x1F) != 3 && (v31 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v33 = a3->value, rhs.epoch = v32, lhs.value = v33, lhs.timescale = a3->timescale, lhs.flags = v29, lhs.epoch = v30, rhs.value = value, rhs.timescale = timescale, rhs.flags = v31, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), CMTimeMake(&time, 1, 1000000000), lhs = time1, CMTimeCompare(&lhs, &time) >= 1))
      {
        time1.value = v71;
        time1.timescale = v72;
        time1.flags = v29;
        time1.epoch = v30;
        time.value = value;
        time.timescale = timescale;
        time.flags = v31;
        time.epoch = v32;
        v34 = CMTimeCompare(&time1, &time) >> 31;
        if (!v23)
        {
          goto LABEL_42;
        }

        goto LABEL_29;
      }
    }

    LOBYTE(v34) = 0;
    if (!v23)
    {
LABEL_42:
      if ((v18 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

LABEL_29:
    if (v34)
    {
      goto LABEL_37;
    }

    v40 = *v16;
    if (a4)
    {
      piqRemoveItemFromQueue(v16);
      v62 = 1;
    }

    v16 = v40;
    if (v40 == v17)
    {
      goto LABEL_43;
    }
  }

  if (((v23 | ((v18 & 2) >> 1)) & 1) == 0)
  {
LABEL_43:
    v41 = 0;
    a8 = v60;
    goto LABEL_70;
  }

LABEL_37:
  if (v61)
  {
    v42 = *(v16 + 16);
    *(v61 + 16) = *(v16 + 32);
    *v61 = v42;
  }

  if (FigIsNullPixelBuffer(*(v16 + 48)))
  {
    if (v58)
    {
      *v58 = 0;
    }
  }

  else if (v58)
  {
    v43 = *(v16 + 48);
    *v58 = v43;
    if (v43)
    {
      CFRetain(v43);
    }
  }

  a8 = v60;
  if (v59)
  {
    v44 = *(v16 + 56);
    *v59 = v44;
    if (v44)
    {
      CFRetain(v44);
    }
  }

  if ((a4 & 4) != 0 || *(v16 + 68))
  {
    v41 = 0;
  }

  else
  {
    if (*(v15 + 168))
    {
      if (*(v15 + 169))
      {
        memset(&time1, 0, sizeof(time1));
        time = *a3;
        lhs = *(v16 + 16);
        CMTimeSubtract(&time1, &time, &lhs);
        CMTimeMake(&time, 1, 60);
        lhs = time1;
        if ((CMTimeCompare(&lhs, &time) & 0x80000000) == 0)
        {
          v46 = *(v15 + 240);
          if (v46 <= 0x63)
          {
            time = *(v16 + 16);
            CMTimeConvertScale(&v64, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            *(v15 + 4 * *(v15 + 240) + 648) = v64.value;
            v46 = *(v15 + 240);
          }

          *(v15 + 240) = v46 + 1;
        }
      }
    }

    v41 = 1;
    *(v16 + 68) = 1;
    v62 = 1;
  }

  if (a4)
  {
    if (*(v15 + 188))
    {
      if (*(v15 + 156) < 1)
      {
        time1 = *(v15 + 176);
        time = *(v16 + 16);
        if (CMTimeCompare(&time1, &time) >= 1)
        {
          goto LABEL_55;
        }
      }

      else
      {
        time1 = *(v15 + 176);
        time = *(v16 + 16);
        if (CMTimeCompare(&time1, &time) < 0)
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
LABEL_55:
      if (*(v16 + 40) == *(v15 + 144))
      {
        v45 = *(v16 + 16);
        *(v15 + 192) = *(v16 + 32);
        *(v15 + 176) = v45;
      }
    }
  }

  if ((a4 & 2) != 0)
  {
    piqRemoveItemFromQueue(v16);
    v62 = 1;
  }

LABEL_70:
  v47 = *(v15 + 88);
  if (v47 == 3)
  {
    if (*(v15 + 173))
    {
      v48 = 1;
      goto LABEL_76;
    }

    v54 = v15 + 16;
    do
    {
      v54 = *v54;
      v55 = v54 == v17 || v54 == 0;
      v48 = !v55;
    }

    while (!v55 && *(v54 + 68));
  }

  else
  {
    v48 = 1;
  }

  if (v47 == 1 && !*(v15 + 174))
  {
    v56 = v15 + 16;
    do
    {
      v56 = *v56;
      v57 = v56 == v17 || v56 == 0;
      v49 = !v57;
    }

    while (!v57 && *(v56 + 68));
  }

  else
  {
LABEL_76:
    v49 = 1;
  }

  FigSimpleMutexUnlock();
  if (v62)
  {
    piqcv_postOccupancyChanged(a8);
  }

  if ((v48 & 1) == 0)
  {
    v50 = *v15;
    if (*v15)
    {
      *(v15 + 173) = 1;
      v51 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v51)
      {
        v51(v50);
      }
    }
  }

  if ((v49 & 1) == 0)
  {
    v52 = *v15;
    if (*v15)
    {
      *(v15 + 174) = 1;
      v53 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v53)
      {
        v53(v52);
      }
    }
  }

  if (v41)
  {
    FigImageQueueFrameRateIncrementCounter(v15 + 1128);
  }

  return 0;
}

uint64_t piqGetEarliestSequentialImageTimeAfterTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 16);
  FigSimpleMutexLock();
  v12 = DerivedStorage + 16;
  v11 = *(DerivedStorage + 16);
  if (*(a3 + 12))
  {
    while (v11 != v12)
    {
      if (*(DerivedStorage + 156) < 1)
      {
        time1 = *(v11 + 2);
        v17 = *a3;
        if (CMTimeCompare(&time1, &v17) < 0)
        {
          break;
        }
      }

      else
      {
        time1 = *(v11 + 2);
        v17 = *a3;
        if (CMTimeCompare(&time1, &v17) > 0)
        {
          break;
        }
      }

      v11 = *v11;
    }
  }

  if (v11 == v12)
  {
    v15 = *(DerivedStorage + 88) == 3;
  }

  else
  {
    v13 = *(v11 + 16);
    time1 = *(v11 + 2);
    if (piqIsImageTimeSequentialSafe(a6, v13, &time1))
    {
      v14 = 0;
      v15 = 0;
      v19 = *(v11 + 1);
      v20 = v11[4];
      goto LABEL_14;
    }

    v15 = 0;
  }

  v14 = 4294954483;
LABEL_14:
  FigSimpleMutexUnlock();
  if (a4)
  {
    *a4 = v19;
    *(a4 + 16) = v20;
  }

  if (a5)
  {
    *a5 = v15;
  }

  return v14;
}

uint64_t piqcv_postOccupancyChanged(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  result = CMNotificationCenterPostNotification();
  v4 = *(DerivedStorage + 1184);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v5(&v9, a1);
    }

    else
    {
      v9 = *MEMORY[0x1E6960C70];
      v10 = *(MEMORY[0x1E6960C70] + 16);
    }

    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v11 = v9;
      v12 = v10;
      return v8(v4, &v11);
    }
  }

  return result;
}

uint64_t piqIsImageTimeSequentialSafe(uint64_t a1, char a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((a2 & 2) == 0)
  {
    v6 = *(DerivedStorage + 88);
    if (!v6)
    {
      return 0;
    }

    if (v6 == 2)
    {
      if (*(DerivedStorage + 156) < 1)
      {
        time1 = *a3;
        v8 = *(DerivedStorage + 116);
        if (CMTimeCompare(&time1, &v8) <= 0)
        {
          return 0;
        }
      }

      else
      {
        time1 = *a3;
        v8 = *(DerivedStorage + 92);
        if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t piqReportImageAvailableSequential(uint64_t a1, CMTime *a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  v6 = result;
  if (*(result + 212))
  {
    time1 = *(result + 200);
    v12 = *a2;
    result = CMTimeCompare(&time1, &v12);
  }

  v7 = *&a2->value;
  *(v6 + 216) = a2->epoch;
  *(v6 + 200) = v7;
  v8 = *v6;
  if (v8)
  {
    v12 = *a2;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v11 = *(v10 + 88);
    if (v11)
    {
      time1 = v12;
      return v11(v8, &time1, a3);
    }
  }

  return result;
}

__CFString *getFigFileTypeForFormatWriterFileFormatBits(char a1)
{
  v1 = kFigFileType_AppleM4A;
  v2 = kFigFileType_3GPP;
  v3 = kFigFileType_MPEG4;
  if ((a1 & 0x20) == 0)
  {
    v3 = kFigFileType_QuickTimeMovie;
  }

  if ((a1 & 2) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0xC) != 0)
  {
    v2 = kFigFileType_AppleM4V;
  }

  if ((a1 & 0x10) == 0)
  {
    v1 = v2;
  }

  return *v1;
}

BOOL FigMovieFormatWriterCanFileTypeSupportMediaType(const void *a1, int a2, int a3)
{
  if (CFEqual(a1, @"QuickTimeMovie"))
  {
    return 1;
  }

  if (CFEqual(a1, @"MP4Family"))
  {
    result = 1;
    if (a2 <= 1936684397)
    {
      if (a2 == 1668047728)
      {
        return result;
      }

      v7 = 1835365473;
      goto LABEL_8;
    }

    if (a2 == 1936684398 || a2 == 1986618469)
    {
      return result;
    }

    v9 = 1952807028;
    goto LABEL_19;
  }

  if (CFEqual(a1, @"3GPFamily"))
  {
    if (a2 == 1936684398)
    {
      return 1;
    }

    if (a2 == 1952807028)
    {
      return a3 == 0;
    }

    v9 = 1986618469;
LABEL_19:
    if (a2 != v9)
    {
      return 0;
    }

    return a3 == 0;
  }

  if (!CFEqual(a1, @"iTunesVideoFamily"))
  {
    if (CFEqual(a1, @"iTunesAudioFamily"))
    {
      if (a2 <= 1952807027)
      {
        result = 1;
        if (a2 == 1751216244)
        {
          return result;
        }

        v8 = 1936684398;
        goto LABEL_10;
      }

      if (a2 != 1952807028 && a2 != 1986618469)
      {
        return 0;
      }

      v10 = a3 == 0;
    }

    else
    {
      v10 = CFEqual(a1, @"AppleImmersiveVideo") == 0;
    }

    return !v10;
  }

  result = 1;
  if (a2 > 1936684397)
  {
    if (a2 == 1936684398 || a2 == 1952807028)
    {
      return result;
    }

    v8 = 1986618469;
    goto LABEL_10;
  }

  v7 = 1668047728;
LABEL_8:
  if (a2 == v7)
  {
    return result;
  }

  v8 = 1935832172;
LABEL_10:
  if (a2 != v8)
  {
    return 0;
  }

  return result;
}

BOOL FigMovieFormatWriterCanFileTypeSupportFormatDescription(const void *a1, CMFormatDescriptionRef desc, int a3)
{
  MediaType = CMFormatDescriptionGetMediaType(desc);
  result = FigMovieFormatWriterCanFileTypeSupportMediaType(a1, MediaType, a3);
  if (!result)
  {
    return result;
  }

  if (!a3 && MediaType == 1952807028)
  {
    if (CFEqual(a1, @"iTunesVideoFamily"))
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
      if (MediaSubType != 2021028980 && MediaSubType != 2004251764)
      {
        return 0;
      }
    }
  }

  v9 = CMFormatDescriptionGetMediaSubType(desc);
  if (v9 <= 1903522656)
  {
    if (v9 != 1668641633)
    {
      v10 = 1886745441;
LABEL_13:
      if (v9 != v10)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v9 != 1903522657 && v9 != 2054517601)
  {
    v10 = 1970495843;
    goto LABEL_13;
  }

  if (CFEqual(a1, @"iTunesAudioFamily"))
  {
    return 0;
  }

LABEL_16:
  blockBufferOut = 0;
  v11 = CMFormatDescriptionGetMediaType(desc);
  v12 = CMFormatDescriptionGetMediaSubType(desc);
  v13 = figMovieWriter_fileFormatBitsForFileType(a1);
  if (v11 <= 1935832171)
  {
    if (v11 <= 1751216243)
    {
      v15 = 0;
      if (v11 == 1635088502)
      {
        goto LABEL_56;
      }

      if (v11 == 1668047728)
      {
        v16 = CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      }
    }

    else
    {
      if (v11 == 1751216244)
      {
        v16 = CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer();
        goto LABEL_57;
      }

      if (v11 == 1835365473)
      {
        v16 = CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      }

      v15 = 0;
      if (v11 == 1885954932)
      {
LABEL_56:
        SystemEncoding = CFStringGetSystemEncoding();
        v16 = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(0, desc, SystemEncoding, v15, &blockBufferOut);
        goto LABEL_57;
      }
    }

LABEL_45:
    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
    goto LABEL_57;
  }

  if (v11 > 1952807027)
  {
    switch(v11)
    {
      case 1952807028:
        goto LABEL_40;
      case 1953325924:
        v16 = CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
        goto LABEL_57;
      case 1986618469:
        if ((v13 & 2) != 0)
        {
          v17 = MEMORY[0x1E69601C8];
        }

        else if ((v13 & 4) != 0)
        {
          v17 = MEMORY[0x1E69601D8];
        }

        else
        {
          if ((v13 & 1) == 0)
          {
            v15 = 0;
            goto LABEL_56;
          }

          if (v12 == 1635148595 || v12 == 1751479857 || v12 == 1685481573)
          {
            v17 = MEMORY[0x1E6962858];
          }

          else
          {
            v17 = MEMORY[0x1E69601D0];
          }
        }

        v15 = *v17;
        goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v11 == 1935832172)
  {
LABEL_40:
    v16 = CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(0, desc, 0, &blockBufferOut);
    goto LABEL_57;
  }

  if (v11 != 1935893870)
  {
    if (v11 == 1936684398)
    {
      if ((v13 & 2) != 0)
      {
        v14 = *MEMORY[0x1E6960610];
      }

      else if (v13)
      {
        v14 = *MEMORY[0x1E6960618];
      }

      else
      {
        v14 = 0;
      }

      v16 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(0, desc, v14, &blockBufferOut);
      goto LABEL_57;
    }

    goto LABEL_45;
  }

  v16 = CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer();
LABEL_57:
  v19 = v16;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19 == 0;
}

uint64_t createFigMovieFormatWriterObject(const __CFAllocator *a1, int a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  cf = 0;
  v7 = @"com.apple.quicktime-movie";
  v32 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"FileFormat");
    if (Value)
    {
      if (FigCFEqual())
      {
        v10 = kFigFileType_QuickTimeMovie;
      }

      else if (FigCFEqual())
      {
        v10 = kFigFileType_AppleM4A;
      }

      else if (FigCFEqual() || FigCFEqual())
      {
        v10 = kFigFileType_AppleM4V;
      }

      else if (FigCFEqual())
      {
        v10 = kFigFileType_3GPP;
      }

      else if (FigCFEqual() || FigCFEqual())
      {
        v10 = kFigFileType_MPEG4;
      }

      else
      {
        if (!FigCFEqual())
        {
          value_low = 4294954662;
          goto LABEL_31;
        }

        v10 = kFigFileType_AppleImmersiveVideo;
      }

      v7 = *v10;
      LODWORD(Value) = figMovieWriter_fileFormatBitsForFileType(Value);
    }

    v14 = CFDictionaryGetValue(theDict, @"WriteFileType");
    if (v14)
    {
      v15 = v14;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v15))
      {
        if (CFEqual(@"WriteFileType_Never", v15))
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
          if (!CFEqual(@"WriteFileType_BeforeMediaData", v15))
          {
            if (CFEqual(@"WriteFileType_OnlyInWriteHeaderToByteStream", v15))
            {
              v13 = 3;
            }

            else
            {
              v13 = 2;
            }
          }
        }
      }

      else
      {
        v17 = CFBooleanGetTypeID();
        v13 = 2;
        if (v17 == CFGetTypeID(v15))
        {
          if (CFEqual(v15, *MEMORY[0x1E695E4D0]))
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }
        }
      }
    }

    else
    {
      v13 = 2;
    }

    v18 = CFDictionaryGetValue(theDict, @"AudioPrimingFormat");
    if (v18 && (v19 = v18, !CFEqual(v18, @"AudioPrimingFormat_Manual")))
    {
      if (CFEqual(v19, @"AudioPrimingFormat_NoPrimingInfo"))
      {
        v12 = 1;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_iTunesGaplessInfo"))
      {
        v12 = 2;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_RollSampleGroup"))
      {
        v12 = 3;
      }

      else if (CFEqual(v19, @"AudioPrimingFormat_DetermineFromSampleOrFileFormat"))
      {
        v12 = 5;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = CFDictionaryGetValue(theDict, @"FileTypeProfile");
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    LODWORD(Value) = 0;
    v11 = 0;
    v12 = 0;
    v13 = 2;
  }

  FigFormatWriterGetClassID();
  v20 = CMDerivedObjectCreate();
  if (v20)
  {
    goto LABEL_30;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = cf;
  *(DerivedStorage + 20) = 600;
  v23 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 24) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 40) = *(v23 + 16);
  CMTimeMake(&v31, 1, 2);
  *(DerivedStorage + 48) = v31;
  CMTimeMake(&v31, 5, 1);
  *(DerivedStorage + 72) = v31;
  v24 = MEMORY[0x1E6960CC0];
  *(DerivedStorage + 96) = *MEMORY[0x1E6960CC0];
  *(DerivedStorage + 112) = *(v24 + 16);
  *(DerivedStorage + 268) = 0;
  *(DerivedStorage + 320) = v13;
  *(DerivedStorage + 324) = v12;
  *(DerivedStorage + 16) = v32;
  *(DerivedStorage + 334) = 1;
  if (v7)
  {
    v25 = CFRetain(v7);
  }

  else
  {
    v25 = 0;
  }

  *(DerivedStorage + 720) = v25;
  if (v11)
  {
    v26 = CFRetain(v11);
  }

  else
  {
    v26 = 0;
  }

  *(DerivedStorage + 728) = v26;
  *(DerivedStorage + 692) = Value;
  *(DerivedStorage + 376) = 1;
  *(DerivedStorage + 360) = -1;
  *(DerivedStorage + 520) = FigSimpleMutexCreate();
  *(DerivedStorage + 336) = FigSimpleMutexCreate();
  if (a2 | v32)
  {
    *(DerivedStorage + 18) = 1;
  }

  if ((*(DerivedStorage + 576) = FigSemaphoreCreate(), *(DerivedStorage + 584) = FigSemaphoreCreate(), *(DerivedStorage + 592) = FigSemaphoreCreate(), *(DerivedStorage + 600) = FigSemaphoreCreate(), *(DerivedStorage + 552) = 0, v20 = MovieInformationCreate(a1, 0, (DerivedStorage + 736)), v20) || (v20 = MovieHeaderMakerCreateWithMovieInformation(a1, *(DerivedStorage + 736), 0, (DerivedStorage + 744)), v20) || (v13 == 2 ? (v27 = a2 == 0) : (v27 = 0), !a2 ? ((*(DerivedStorage + 692) & 1) == 0 ? (v28 = 1) : (v28 = 3)) : (v28 = 2), (v20 = MovieSampleDataWriterCreate(a1, v7, v11, a2 != 0, v27, v28, (DerivedStorage + 752)), v20) || (v20 = MovieInformationSetMovieTimeScale(*(DerivedStorage + 736), *(DerivedStorage + 20)), v20)))
  {
LABEL_30:
    value_low = v20;
  }

  else
  {
    Mutable = CFArrayCreateMutable(a1, 0, 0);
    if (Mutable)
    {
      value_low = 0;
      *(DerivedStorage + 488) = Mutable;
      *a4 = cf;
      return value_low;
    }

    createFigMovieFormatWriterObject_cold_1(&v31);
    value_low = LODWORD(v31.value);
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t FigMovieFormatWriterCreateForWritingMovieFragments(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, void *a5)
{
  cf = 0;
  if (!a2)
  {
    FigMovieFormatWriterCreateForWritingMovieFragments_cold_2(&v14);
    return v14;
  }

  if (!a5)
  {
    FigMovieFormatWriterCreateForWritingMovieFragments_cold_1(&v14);
    return v14;
  }

  v8 = createFigMovieFormatWriterObject(a1, 1, theDict, &cf);
  v9 = cf;
  if (v8)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 392) = a2;
    *(DerivedStorage + 400) = a3;
    v11 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 408) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 384) = 1;
    *(DerivedStorage + 424) = *(v11 + 16);
    *(DerivedStorage + 432) = 0;
    *(DerivedStorage + 529) = 1;
    *(DerivedStorage + 332) = 257;
    *(DerivedStorage + 352) = 1;
    *a5 = v9;
  }

  return v8;
}

BOOL validateFigTrackID(uint64_t a1, int a2)
{
  Count = *(a1 + 488);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  return a2 > 0 && Count != 0 && Count >= a2;
}

uint64_t figMovieWriter_fileFormatBitsForFileType(uint64_t result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      if (CFEqual(v1, @"3GPFamily"))
      {
        return 3;
      }

      else if (CFEqual(v1, @"iTunesVideoFamily"))
      {
        return 13;
      }

      else if (CFEqual(v1, @"iTunesAudioFamily"))
      {
        return 21;
      }

      else if (CFEqual(v1, @"iTunesFamily"))
      {
        return 5;
      }

      else
      {
        if (CFEqual(v1, @"ISOFamily"))
        {
          return 33;
        }

        result = CFEqual(v1, @"MP4Family");
        if (result)
        {
          return 33;
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

__CFString *figMovieWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigMovieWriter %p>", a1);
  return Mutable;
}

void editBuilderRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    FigCEA608DataInspectorRelease(*(a1 + 2));
    *(a1 + 2) = 0;
    v3 = *(a1 + 3);
    if (v3)
    {
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3), i);
          FigCEA608DataInspectorRelease(ValueAtIndex);
        }
      }

      v8 = *(a1 + 3);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a1 + 3) = 0;
    }

    FigCEA608DataInspectorRelease(*(a1 + 1));
    *(a1 + 1) = 0;
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

__n128 getLongestMediaDecodeDuration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Count = CFArrayGetCount(*(a1 + 488));
  v18 = **&MEMORY[0x1E6960CC0];
  v17 = v18;
  if (Count < 1)
  {
    goto LABEL_14;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v6);
    if (!ValueAtIndex[25])
    {
      v9 = ValueAtIndex;
      memset(&v16, 0, sizeof(v16));
      getMediaDecodeDuration(ValueAtIndex, &v16);
      if (*v9 == 1986618469 || *v9 == 1936684398)
      {
        ++v7;
        time1 = v16;
        v14 = v18;
        v11 = &v18;
      }

      else
      {
        time1 = v16;
        v14 = v17;
        v11 = &v17;
      }

      CMTimeMaximum(v11, &time1, &v14);
    }

    ++v6;
  }

  while (v5 != v6);
  if (v7 <= 0)
  {
LABEL_14:
    v12 = &v17;
  }

  else
  {
    v12 = &v18;
  }

  result = *&v12->value;
  *a2 = *&v12->value;
  *(a2 + 16) = v12->epoch;
  return result;
}

uint64_t copyFigMatrixAsArray(const __CFAllocator *a1, char *valuePtr, CFArrayRef *a3)
{
  v6 = 0;
  v7 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  *values = 0u;
  v20 = 0u;
  v8 = *MEMORY[0x1E695E480];
  while (2)
  {
    v9 = valuePtr;
    v10 = 3;
    v11 = v6;
    do
    {
      v12 = CFNumberCreate(v8, kCFNumberFloat32Type, v9);
      if (!v12)
      {
        copyFigMatrixAsArray_cold_2(&v18);
        goto LABEL_9;
      }

      v6 = v11 + 1;
      values[v11] = v12;
      v9 += 4;
      ++v11;
      --v10;
    }

    while (v10);
    ++v7;
    valuePtr += 12;
    if (v7 != 3)
    {
      continue;
    }

    break;
  }

  v13 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  if (v13)
  {
    v14 = 0;
    *a3 = v13;
    goto LABEL_10;
  }

  copyFigMatrixAsArray_cold_1(&v18);
LABEL_9:
  v14 = v18;
LABEL_10:
  for (i = 0; i != 9; ++i)
  {
    v16 = values[i];
    if (v16)
    {
      CFRelease(v16);
    }
  }

  return v14;
}

uint64_t createMetadataWritersDictionary(const __CFAllocator *a1, uint64_t a2, CFDictionaryRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  keys = 0;
  v15 = 0;
  v16 = 0;
  v6 = *(a2 + 692);
  if ((v6 & 4) != 0)
  {
    keys = @"com.apple.itunes";
    v15 = @"org.mp4ra";
    v7 = 2;
  }

  else if (v6)
  {
    keys = @"org.mp4ra";
    v7 = 1;
  }

  else
  {
    keys = @"com.apple.quicktime.udta";
    v15 = @"com.apple.quicktime.mdta";
    v16 = @"com.apple.itunes";
    v7 = 3;
  }

  v8 = 0;
  memset(values, 0, sizeof(values));
  while (1)
  {
    v12 = 0;
    result = getMetadataSerializer(a1, a2, *(&keys + v8), &v12);
    if (result)
    {
      break;
    }

    values[v8++] = FigMetadataSerializerGetFigMetadataWriter(v12);
    if (v7 == v8)
    {
      v10 = CFDictionaryCreate(a1, &keys, values, v7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v10)
      {
        v11 = v10;
        result = 0;
        *a3 = v11;
      }

      else
      {
        createMetadataWritersDictionary_cold_1(&v12);
        return v12;
      }

      return result;
    }
  }

  return result;
}

uint64_t copyPredeterminedSizesAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  if (!*(a1 + 448))
  {
    v5 = 0;
LABEL_7:
    v7 = 0;
    *a3 = v5;
    return v7;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    copyPredeterminedSizesAsDictionary_cold_1(&v9);
    return v9;
  }

  v5 = Mutable;
  v6 = FigCFDictionarySetInt64();
  if (!v6)
  {
    v6 = FigCFDictionarySetInt64();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = v6;
  CFRelease(v5);
  return v7;
}

uint64_t copyMediaDataCheckpointIntervalAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFMutableDictionaryRef *a3)
{
  if (!*(a1 + 330))
  {
    v6 = 0;
LABEL_6:
    v8 = 0;
    *a3 = v6;
    return v8;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    copyMediaDataCheckpointIntervalAsDictionary_cold_1(&v10);
    return v10;
  }

  v6 = Mutable;
  v10 = *(a1 + 144);
  v11 = *(a1 + 160);
  v7 = FigCFDictionarySetCMTime();
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = v7;
  CFRelease(v6);
  return v8;
}

CFTypeRef copy64BitDataOffsetInTrackRunAtomPolicy(uint64_t a1, void *a2)
{
  v3 = *(a1 + 536);
  if (v3 == 1)
  {
    v4 = kFigFormatWriter64BitDataOffsetInTrackRunAtomPolicy_Allow;
  }

  else
  {
    if (v3 != 2)
    {
      result = 0;
      goto LABEL_8;
    }

    v4 = kFigFormatWriter64BitDataOffsetInTrackRunAtomPolicy_DoNotAllow;
  }

  result = *v4;
  if (*v4)
  {
    result = CFRetain(result);
  }

LABEL_8:
  *a2 = result;
  return result;
}

double getFigTimeMappingFromDictionary(const __CFDictionary *a1, _OWORD *a2)
{
  result = 0.0;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Value = CFDictionaryGetValue(a1, @"MediaStart");
      v7 = CFDictionaryGetValue(a1, @"MediaDuration");
      v8 = CFDictionaryGetValue(a1, @"TrackStart");
      v9 = CFDictionaryGetValue(a1, @"TrackDuration");
      if (Value)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && v8 != 0 && v9 != 0)
      {
        v13 = v9;
        CMTimeMakeFromDictionary(v18, Value);
        CMTimeMakeFromDictionary(&v17, v7);
        v18[1] = v17;
        CMTimeMakeFromDictionary(&v17, v8);
        v19 = *&v17.value;
        *&v20[0] = v17.epoch;
        CMTimeMakeFromDictionary(&v17, v13);
        *(v20 + 8) = v17;
        v14 = v19;
        a2[2] = *&v18[1].timescale;
        a2[3] = v14;
        v15 = v20[1];
        a2[4] = v20[0];
        a2[5] = v15;
        result = *&v18[0].value;
        v16 = *&v18[0].epoch;
        *a2 = *&v18[0].value;
        a2[1] = v16;
      }
    }
  }

  return result;
}

uint64_t getFirstEditBuilder(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (!v2)
  {
    return *(a1 + 496);
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return *(a1 + 496);
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    v6 = *(CFArrayGetValueAtIndex(*(a1 + 424), v5) + 34);
    v7 = CFArrayGetCount(*(v6 + 24));
    if (v7 + editMediaTimeIsValid(*(v6 + 16)))
    {
      break;
    }

    if (v4 == ++v5)
    {
      return *(a1 + 496);
    }
  }

  return v6;
}

const void *editBuilderGetEditMediaTimeAtIndex(uint64_t a1, CFIndex a2)
{
  Count = CFArrayGetCount(*(a1 + 24));
  if (Count <= a2)
  {
    if (Count == a2)
    {
      v7 = *(a1 + 16);
      if (editMediaTimeIsValid(v7))
      {
        return v7;
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

  else
  {
    v5 = *(a1 + 24);

    return CFArrayGetValueAtIndex(v5, a2);
  }
}

uint64_t copyFigTimeMappingAsDictionary(CFAllocatorRef allocator, uint64_t a2, CFDictionaryRef *a3)
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = @"MediaStart";
  keys[1] = @"MediaDuration";
  keys[2] = @"TrackStart";
  keys[3] = @"TrackDuration";
  time = *a2;
  time.value = CMTimeCopyAsDictionary(&time, allocator);
  v11 = *(a2 + 24);
  *&time.timescale = CMTimeCopyAsDictionary(&v11, allocator);
  v11 = *(a2 + 48);
  time.epoch = CMTimeCopyAsDictionary(&v11, allocator);
  v11 = *(a2 + 72);
  v13 = CMTimeCopyAsDictionary(&v11, allocator);
  v6 = CFDictionaryCreate(allocator, keys, &time, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v6)
  {
    value_low = 0;
    *a3 = v6;
  }

  else
  {
    copyFigTimeMappingAsDictionary_cold_1(&v11);
    value_low = LODWORD(v11.value);
  }

  for (i = 0; i != 32; i += 8)
  {
    v9 = *(&time.value + i);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return value_low;
}

uint64_t editBuilderCreateTimeMappingArray(uint64_t a1, int32_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, CFAllocatorRef allocator, const __CFArray **a8, uint64_t a9)
{
  v54 = 0;
  if (*(a4 + 12))
  {
    *&time1[0].start.value = *a4;
    time1[0].start.epoch = *(a4 + 16);
    *&time2.start.value = *a3;
    time2.start.epoch = *(a3 + 16);
    if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  cf = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    editBuilderCreateTimeMappingArray_cold_1(time1);
    return LODWORD(time1[0].start.value);
  }

  Count = CFArrayGetCount(*(a1 + 24));
  v41 = Count + editMediaTimeIsValid(*(a1 + 16));
  v17 = *(a4 + 12);
  if (!v41)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_10:
    *&time1[0].start.value = *a3;
    time1[0].start.epoch = *(a3 + 16);
    *&time2.start.value = *a4;
    time2.start.epoch = *(a4 + 16);
    *&duration.start.value = *&a6->value;
    duration.start.epoch = a6->epoch;
    appended = appendEmptyEditTimeMappingDictionary(cf, allocator, a2, time1, &time2, &duration.start, a6);
    if (!appended)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  v18 = MEMORY[0x1E6960CC0];
  if (v17)
  {
    *&time1[0].start.value = *a4;
    time1[0].start.epoch = *(a4 + 16);
    *&time2.start.value = *MEMORY[0x1E6960CC0];
    time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
    {
      goto LABEL_10;
    }
  }

  v53 = *v18;
  *&time1[0].start.value = *a3;
  time1[0].start.epoch = *(a3 + 16);
  v37 = *&v53.value;
  time2.start = v53;
  epoch = v53.epoch;
  v34 = a5;
  v35 = a8;
  allocatora = allocator;
  if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
  {
    *&time1[0].start.value = *a3;
    time1[0].start.epoch = *(a3 + 16);
    *&time2.start.value = *&a6->value;
    time2.start.epoch = a6->epoch;
    appended = appendEmptyEditTimeMappingDictionary(cf, allocator, a2, time1, MEMORY[0x1E6960CC0], &time2.start, a6);
    if (appended)
    {
      goto LABEL_49;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  if (v41 < 1)
  {
LABEL_39:
    if (*(a4 + 12))
    {
      time1[0].start = v53;
      *&time2.start.value = *a3;
      time2.start.epoch = *(a3 + 16);
      if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
      {
        *&time1[0].start.value = *a3;
        v31 = *(a3 + 16);
LABEL_44:
        time1[0].start.epoch = v31;
        *&time2.start.value = *a4;
        time2.start.epoch = *(a4 + 16);
        *&duration.start.value = *&a6->value;
        duration.start.epoch = a6->epoch;
        appended = appendEmptyEditTimeMappingDictionary(cf, allocatora, a2, time1, &time2, &duration.start, a6);
        if (!appended)
        {
          goto LABEL_45;
        }

LABEL_49:
        v21 = appended;
        goto LABEL_50;
      }

      time1[0].start = v53;
      *&time2.start.value = *a4;
      time2.start.epoch = *(a4 + 16);
      if (CMTimeCompare(&time1[0].start, &time2.start) < 0)
      {
        *&time1[0].start.value = *&v53.value;
        v31 = v53.epoch;
        goto LABEL_44;
      }
    }

LABEL_45:
    a8 = v35;
LABEL_46:
    *a8 = cf;
    v21 = 0;
    if (a9)
    {
      v32 = *&a6->value;
      *(a9 + 16) = a6->epoch;
      *a9 = v32;
    }

    return v21;
  }

  v22 = 0;
  while (1)
  {
    EditMediaTimeAtIndex = editBuilderGetEditMediaTimeAtIndex(a1, v22);
    v24 = *(EditMediaTimeAtIndex + 14);
    memset(&v52, 0, sizeof(v52));
    memset(&duration, 0, 24);
    v25 = *(EditMediaTimeAtIndex + 12);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 28);
    *&time1[0].start.value = v25;
    *&time2.start.value = *(EditMediaTimeAtIndex + 60);
    time2.start.epoch = *(EditMediaTimeAtIndex + 76);
    CMTimeAdd(&duration.start, &time1[0].start, &time2.start);
    memset(&v55, 0, sizeof(v55));
    *&time1[0].start.value = *(EditMediaTimeAtIndex + 36);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 52);
    *&time2.start.value = *(EditMediaTimeAtIndex + 84);
    time2.start.epoch = *(EditMediaTimeAtIndex + 100);
    CMTimeSubtract(&v55, &time1[0].start, &time2.start);
    time1[0].start = v55;
    *&time2.start.value = *&duration.start.value;
    time2.start.epoch = duration.start.epoch;
    CMTimeSubtract(&v52, &time1[0].start, &time2.start);
    memset(&v55, 0, sizeof(v55));
    time1[0].start = v52;
    CMTimeMultiplyByFloat64(&v55, &time1[0].start, 1.0 / v24);
    memset(&time2, 0, sizeof(time2));
    time1[0].start = v53;
    duration.start = v55;
    CMTimeRangeMake(&time2, &time1[0].start, &duration.start);
    memset(&v50, 0, sizeof(v50));
    v26 = *(EditMediaTimeAtIndex + 12);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 28);
    *&time1[0].start.value = v26;
    *&duration.start.value = *(EditMediaTimeAtIndex + 60);
    duration.start.epoch = *(EditMediaTimeAtIndex + 76);
    CMTimeAdd(&v50, &time1[0].start, &duration.start);
    v49 = v50;
    memset(&start, 0, sizeof(start));
    *&time1[0].start.value = *(EditMediaTimeAtIndex + 36);
    time1[0].start.epoch = *(EditMediaTimeAtIndex + 52);
    *&duration.start.value = *(EditMediaTimeAtIndex + 84);
    duration.start.epoch = *(EditMediaTimeAtIndex + 100);
    CMTimeSubtract(&start, &time1[0].start, &duration.start);
    if (!v19)
    {
      time1[0] = time2;
      *&duration.start.value = *a3;
      duration.start.epoch = *(a3 + 16);
      if (!CMTimeRangeContainsTime(time1, &duration.start))
      {
        v19 = 0;
        v27 = 1;
        goto LABEL_21;
      }

      memset(time1, 0, 24);
      *&duration.start.value = *a3;
      duration.start.epoch = *(a3 + 16);
      rhs = time2.start;
      CMTimeSubtract(&time1[0].start, &duration.start, &rhs);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&duration.start, &rhs, v24);
      *&time1[0].start.value = *&duration.start.value;
      time1[0].start.epoch = duration.start.epoch;
      rhs = v50;
      CMTimeAdd(&v49, &duration.start, &rhs);
    }

    v27 = 0;
    v19 = 1;
LABEL_21:
    time1[0] = time2;
    *&duration.start.value = *a4;
    duration.start.epoch = *(a4 + 16);
    v28 = CMTimeRangeContainsTime(time1, &duration.start);
    if (v28)
    {
      memset(time1, 0, 24);
      *&duration.start.value = *a4;
      duration.start.epoch = *(a4 + 16);
      rhs = v53;
      CMTimeSubtract(&time1[0].start, &duration.start, &rhs);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&duration.start, &rhs, v24);
      time1[0].start.epoch = duration.start.epoch;
      *&time1[0].start.value = *&duration.start.value;
      rhs = duration.start;
      v46 = v50;
      CMTimeAdd(&duration.start, &rhs, &v46);
      start = duration.start;
    }

    if ((v27 & 1) == 0)
    {
      if (EditMediaTimeAtIndex[8])
      {
        time1[0].start = v49;
        duration.start = start;
        rhs = *a6;
        appended = appendEmptyEditTimeMappingDictionary(cf, allocatora, a2, time1, &duration, &rhs, a6);
        if (appended)
        {
          goto LABEL_49;
        }

        goto LABEL_35;
      }

      time1[0].start = start;
      duration.start = v49;
      CMTimeSubtract(&rhs, &time1[0].start, &duration.start);
      duration.start = rhs;
      CMTimeConvertScale(&time1[0].start, &duration.start, a2, kCMTimeRoundingMethod_QuickTime);
      rhs = time1[0].start;
      CMTimeMultiplyByFloat64(&v46, &time1[0].start, 1.0 / v24);
      *&time1[0].start.value = v37;
      time1[0].start.epoch = epoch;
      duration.start = v46;
      if (CMTimeCompare(&time1[0].start, &duration.start) < 0)
      {
        break;
      }
    }

LABEL_35:
    time1[0] = time2;
    CMTimeRangeGetEnd(&v53, time1);
    if (v28)
    {
      goto LABEL_45;
    }

    if (v41 == ++v22)
    {
      goto LABEL_39;
    }
  }

  memset(time1, 0, sizeof(time1));
  if (EditMediaTimeAtIndex[132])
  {
    lhs = v49;
    v43 = *(EditMediaTimeAtIndex + 5);
    CMTimeSubtract(&duration.start, &lhs, &v43);
    v49 = duration.start;
    *&lhs.value = v37;
    lhs.epoch = epoch;
    v43 = duration.start;
    CMTimeMaximum(&duration.start, &lhs, &v43);
    v49 = duration.start;
  }

  lhs = v49;
  v43 = *v34;
  CMTimeAdd(&duration.start, &lhs, &v43);
  v49 = duration.start;
  lhs = rhs;
  CMTimeRangeMake(time1, &duration.start, &lhs);
  lhs = *a6;
  v43 = v46;
  CMTimeRangeMake(&duration, &lhs, &v43);
  time1[1] = duration;
  v29 = copyFigTimeMappingAsDictionary(allocatora, time1, &v54);
  v30 = v54;
  if (!v29)
  {
    appendTrackEditSegmentDictionary(cf, v54);
    if (!v29)
    {
      if (v30)
      {
        CFRelease(v30);
        v54 = 0;
      }

      lhs = *a6;
      v43 = time1[1].duration;
      CMTimeAdd(&duration.start, &lhs, &v43);
      *&a6->value = *&duration.start.value;
      a6->epoch = duration.start.epoch;
      goto LABEL_35;
    }
  }

  v21 = v29;
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_50:
  CFRelease(cf);
  return v21;
}

uint64_t appendEmptyEditTimeMappingDictionary(const __CFArray *a1, const __CFAllocator *a2, int32_t a3, uint64_t a4, uint64_t a5, CMTime *a6, uint64_t a7)
{
  v23 = 0;
  *&lhs[0].start.value = *a5;
  lhs[0].start.epoch = *(a5 + 16);
  *&rhs.start.value = *a4;
  rhs.start.epoch = *(a4 + 16);
  CMTimeSubtract(&start, &lhs[0].start, &rhs.start);
  rhs.start = start;
  CMTimeConvertScale(&lhs[0].start, &rhs.start, a3, kCMTimeRoundingMethod_QuickTime);
  epoch = lhs[0].start.epoch;
  start = lhs[0].start;
  v13 = *&lhs[0].start.value;
  *&lhs[0].start.value = *MEMORY[0x1E6960CC0];
  lhs[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  *&rhs.start.value = v13;
  rhs.start.epoch = epoch;
  v14 = 0;
  if (CMTimeCompare(&lhs[0].start, &rhs.start) < 0)
  {
    *&rhs.start.value = *MEMORY[0x1E6960C70];
    rhs.start.epoch = *(MEMORY[0x1E6960C70] + 16);
    duration = rhs.start;
    CMTimeRangeMake(lhs, &rhs.start, &duration);
    memset(&lhs[1], 0, sizeof(CMTimeRange));
    duration = *a6;
    v18 = start;
    CMTimeRangeMake(&rhs, &duration, &v18);
    lhs[1] = rhs;
    v15 = copyFigTimeMappingAsDictionary(a2, lhs, &v23);
    v14 = v23;
    if (v15 || (appendTrackEditSegmentDictionary(a1, v23), v15))
    {
      v16 = v15;
      if (!v14)
      {
        return v16;
      }

      goto LABEL_5;
    }
  }

  *&rhs.start.value = *&a6->value;
  rhs.start.epoch = a6->epoch;
  duration = start;
  CMTimeAdd(&lhs[0].start, &rhs.start, &duration);
  v16 = 0;
  *a7 = *&lhs[0].start.value;
  *(a7 + 16) = lhs[0].start.epoch;
  if (v14)
  {
LABEL_5:
    CFRelease(v14);
  }

  return v16;
}

CFStringRef createiTunesGaplessInfoString(const __CFDictionary *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  valuePtr = 0;
  v9 = 0;
  Value = CFDictionaryGetValue(a1, @"EncodingDelayInFrame");
  v3 = CFDictionaryGetValue(a1, @"EncodingDrainInFrames");
  v4 = CFDictionaryGetValue(a1, @"DurationInFrames");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberSInt32Type, &v10);
  }

  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberSInt64Type, &v9);
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  *&v14[15] = 808464432;
  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  *v14 = v6;
  v13[5] = v6;
  v13[4] = v6;
  v13[3] = v6;
  v13[2] = v6;
  v13[1] = v6;
  v13[0] = v6;
  bytes = 32;
  snprintf(v13 + 8, 0x24uLL, " %08X %08X %016llX", valuePtr, v10, v5);
  v7 = 44;
  do
  {
    *(&bytes + v7) = 32;
    v7 += 9;
  }

  while (v7 != 116);
  return CFStringCreateWithBytes(*MEMORY[0x1E695E480], &bytes, 116, 0x600u, 0);
}

uint64_t copyMetadataSerializer(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  v11 = 0;
  if (a4)
  {
    result = getMetadataSerializer(a1, a2, a3, &v11);
    if (!result)
    {
      v7 = v11;
      if (v11)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v8)
        {
          result = v8(a1, v7, &cf);
          if (result)
          {
            v9 = result;
            if (cf)
            {
              CFRelease(cf);
            }

            return v9;
          }

          else
          {
            *a4 = cf;
          }
        }

        else
        {
          return 4294954514;
        }
      }
    }
  }

  else
  {
    copyMetadataSerializer_cold_1(&v12);
    return v12;
  }

  return result;
}

CFArrayRef copyMetadataDestinationFormat(uint64_t a1, __CFString *cf1, CFArrayRef *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 692);
  if ((v4 & 4) != 0)
  {
    v8 = @"com.apple.itunes";
    v9 = @"org.mp4ra";
  }

  else
  {
    if (v4)
    {
      v8 = @"org.mp4ra";
      goto LABEL_10;
    }

    if (cf1)
    {
      if (CFEqual(cf1, @"com.apple.quicktime.mdta") || CFEqual(cf1, @"com.apple.quicktime.udta"))
      {
        v8 = cf1;
LABEL_10:
        v6 = 1;
        goto LABEL_11;
      }

      if (CFEqual(cf1, @"com.apple.itunes"))
      {
        v8 = @"com.apple.itunes";
        v9 = @"com.apple.quicktime.mdta";
        v6 = 3;
        v10 = @"com.apple.quicktime.udta";
        goto LABEL_11;
      }

      if (!CFEqual(cf1, @"org.mp4ra"))
      {
        v6 = 0;
        goto LABEL_11;
      }

      v8 = @"com.apple.quicktime.mdta";
      v9 = @"com.apple.quicktime.udta";
    }

    else
    {
      v8 = @"com.apple.quicktime.mdta";
      v9 = @"com.apple.quicktime.udta";
    }
  }

  v6 = 2;
LABEL_11:
  result = CFArrayCreate(*MEMORY[0x1E695E480], &v8, v6, MEMORY[0x1E695E9C0]);
  *a3 = result;
  return result;
}

uint64_t copyMetadataSourceAndDestinationFormats(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFArrayRef *a4)
{
  cf = 0;
  if (!(a3 | a4))
  {
    copyMetadataSourceAndDestinationFormats_cold_1(&v13);
    return v13;
  }

  FigBaseObject = FigMetadataReaderGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = v8(FigBaseObject, @"format", *MEMORY[0x1E695E480], &cf);
  if (v9)
  {
    v10 = cf;
  }

  else
  {
    if (a4)
    {
      copyMetadataDestinationFormat(a1, cf, a4);
    }

    v10 = cf;
    if (a3)
    {
      v9 = 0;
      *a3 = cf;
      return v9;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t registerSourceIndexPair()
{
  result = _CFRuntimeRegisterClass();
  sSourceIndexPairID = result;
  return result;
}

CFStringRef sourceIndexPair_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[SourceIndexPair %p] arraySource: %p index: %ld", a1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[SourceIndexPair %p]", 0);
  }
}

uint64_t appendBBufFromMetadataSerializerToBlockBuffer(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  targetBBuf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = v4(a1, &targetBBuf);
  v6 = targetBBuf;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = targetBBuf == 0;
  }

  if (v7)
  {
    appended = v5;
    if (!targetBBuf)
    {
      return appended;
    }

    goto LABEL_7;
  }

  appended = CMBlockBufferAppendBufferReference(a2, targetBBuf, 0, 0, 0);
  v6 = targetBBuf;
  if (targetBBuf)
  {
LABEL_7:
    CFRelease(v6);
  }

  return appended;
}

uint64_t copyTrackMetadataSerializer(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v10 = 0;
  v11 = 0;
  if (a4)
  {
    result = getTrackMetadataSerializer(a1, a2, a3, &v11);
    if (!result)
    {
      v7 = v11;
      if (v11)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v8)
        {
          result = v8(a1, v7, &v10);
          if (result)
          {
            v9 = result;
            if (v10)
            {
              FigMetadataSerializerRelease(v10);
            }

            return v9;
          }

          else
          {
            *a4 = v10;
          }
        }

        else
        {
          return 4294954514;
        }
      }
    }
  }

  else
  {
    copyTrackMetadataSerializer_cold_1(&v12);
    return v12;
  }

  return result;
}

uint64_t getTrackMetadataSerializer(uint64_t a1, void *a2, CFTypeRef cf1, void *a4)
{
  if (!cf1)
  {
    getTrackMetadataSerializer_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    getTrackMetadataSerializer_cold_1(&v11);
    return v11;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    if ((*(a2[2] + 692) & 1) == 0)
    {
      v8 = a2[69];
      if (!v8)
      {
        v9 = a2 + 69;
        result = FigMetadataSerializerCreateForQuickTimeUserData(a1, v9);
        if (result)
        {
          return result;
        }

LABEL_17:
        v8 = *v9;
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    return 0;
  }

  if (CFEqual(cf1, @"org.mp4ra"))
  {
    if (*(a2[2] + 692))
    {
      v8 = a2[69];
      if (!v8)
      {
        v9 = a2 + 69;
        result = FigMetadataSerializerCreateForISOUserData(a1, v9);
        if (result)
        {
          return result;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }

    return 0;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    v8 = a2[68];
    if (!v8)
    {
      v9 = a2 + 68;
      result = FigMetadataSerializerCreateForQuickTimeMetadata(a1, v9);
      if (result)
      {
        return result;
      }

      goto LABEL_17;
    }

LABEL_18:
    result = 0;
    *a4 = v8;
    return result;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t setTrackReferences(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = MovieInformationRemoveAllTrackReferences(a1);
  v5 = v4;
  if (!a2 || v4)
  {
    return v5;
  }

  Count = CFDictionaryGetCount(a2);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  if (!(Count >> 61))
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 8 * Count, 3838129463, 0);
    if (v10)
    {
      v11 = v10;
      v12 = MEMORY[0x19A8CC720](v9, 8 * v7, 227515377, 0);
      if (v12)
      {
        v13 = v12;
        allocator = v9;
        CFDictionaryGetKeysAndValues(a2, v11, v12);
        for (i = 0; i != v7; ++i)
        {
          if (v13[i])
          {
            v15 = CFArrayGetCount(v13[i]);
            if (v15 >= 1)
            {
              v16 = v15;
              v17 = 0;
              while (FigCFArrayGetInt32AtIndex())
              {
                v18 = v17 + 1;
                if (!FigCFArrayGetInt32AtIndex())
                {
                  v21 = 2625;
                  v20 = allocator;
                  goto LABEL_25;
                }

                if (FigCFStringGetOSTypeValue())
                {
                  v19 = MovieInformationAddOneTrackReference(a1, 0, 0, 0);
                  if (v19)
                  {
                    v5 = v19;
                    goto LABEL_22;
                  }
                }

                v17 = v18 + 1;
                if (v17 >= v16)
                {
                  goto LABEL_20;
                }
              }

              v20 = allocator;
              v21 = 2624;
LABEL_25:
              setTrackReferences_cold_1(v21, &v23);
              v5 = v23;
              goto LABEL_26;
            }
          }

LABEL_20:
          ;
        }

        v5 = 0;
LABEL_22:
        v20 = allocator;
LABEL_26:
        CFAllocatorDeallocate(v20, v11);
        CFAllocatorDeallocate(v20, v13);
        return v5;
      }

      setTrackReferences_cold_2(v9, v11, &v23);
    }

    else
    {
      setTrackReferences_cold_3(&v23);
    }

    return v23;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t ffr_updateThreadPriority(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!*(CMBaseObjectGetDerivedStorage() + 560))
  {
    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v3 = FigThreadSetProperty();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t setMediaDataCheckpointInterval(uint64_t a1, uint64_t a2)
{
  v7 = **&MEMORY[0x1E6960C70];
  if (!a2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (FigCFDictionaryGetCMTimeIfPresent() != 1)
  {
    setMediaDataCheckpointInterval_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((v7.flags & 1) == 0)
  {
    setMediaDataCheckpointInterval_cold_3(&time1);
    return LODWORD(time1.value);
  }

  time1 = **&MEMORY[0x1E6960CC0];
  v5 = v7;
  if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
  {
    setMediaDataCheckpointInterval_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v3 = 1;
LABEL_7:
  result = 0;
  *(a1 + 144) = v7;
  *(a1 + 330) = v3;
  return result;
}

uint64_t set64BitDataOffsetInTrackRunAtomPolicy(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(a1 + 536) = 0;
    return 0;
  }

  if (FigCFEqual())
  {
    v3 = 1;
LABEL_7:
    *(a1 + 536) = v3;
    return 0;
  }

  if (FigCFEqual())
  {
    v3 = 2;
    goto LABEL_7;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void figMovieWriter_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, const __CFArray **a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, CFIndex a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    figMovieWriter_CopyTrackProperty_cold_2(&v51);
    return;
  }

  if (!a5)
  {
    figMovieWriter_CopyTrackProperty_cold_1(&v51);
    return;
  }

  v25 = DerivedStorage;
  if (!DerivedStorage || *(DerivedStorage + 335))
  {
    fig_log_get_emitter();
LABEL_6:

    FigSignalErrorAtGM();
    return;
  }

  v56 = 0;
  if (getTrackInfoForTrackID(DerivedStorage, a2, &v56))
  {
    return;
  }

  v26 = v56;
  v27 = *(v56 + 736);
  if (CFEqual(@"MediaTimeScale", a3))
  {
    LODWORD(v51) = *(v26 + 104);
    v28 = *MEMORY[0x1E695E480];
    v29 = &v51;
LABEL_12:
    v30 = kCFNumberSInt32Type;
LABEL_13:
    SInt32 = CFNumberCreate(v28, v30, v29);
    goto LABEL_14;
  }

  if (CFEqual(@"QTLoadSettings", a3))
  {
    *&v51 = 0;
    if (*(v26 + 40))
    {
      if (copyFigTrackLoadSettingsAsDictionary(a4, v26 + 44, &v51))
      {
        return;
      }

      v32 = v51;
LABEL_29:
      *a5 = v32;
      return;
    }

    goto LABEL_28;
  }

  if (CFEqual(@"MediaDataPrecedence", a3))
  {
    v28 = *MEMORY[0x1E695E480];
    v29 = (v26 + 100);
    goto LABEL_12;
  }

  if (CFEqual(@"InterleavingAdvance", a3))
  {
    v51 = *(v26 + 108);
    *&v52 = *(v26 + 124);
    SInt32 = CMTimeCopyAsDictionary(&v51, a4);
    goto LABEL_14;
  }

  if (CFEqual(@"InterleavingOrder", a3))
  {
    SInt32 = FigCFNumberCreateSInt32();
    goto LABEL_14;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a3))
  {
    v33 = *(v26 + 608);
    if (v33)
    {
      CFRetain(v33);
      v32 = *(v26 + 608);
      goto LABEL_29;
    }

LABEL_28:
    v32 = 0;
    goto LABEL_29;
  }

  if (CFEqual(@"PreferredChunkAlignment", a3))
  {
    LODWORD(v51) = 0;
    PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(v25 + 752), *(v26 + 760), &v51);
LABEL_37:
    if (PreferredChunkAlignment)
    {
      return;
    }

    SInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v51);
    goto LABEL_14;
  }

  if (CFEqual(@"PreferredChunkSize", a3))
  {
    LODWORD(v51) = 0;
    PreferredChunkAlignment = MovieSampleDataWriterTrackGetPreferredChunkSize(*(v25 + 752), *(v26 + 760), &v51);
    goto LABEL_37;
  }

  if (CFEqual(@"PreferredChunkDuration", a3))
  {
    v51 = *MEMORY[0x1E6960C70];
    *&v52 = *(MEMORY[0x1E6960C70] + 16);
    if (MovieSampleDataWriterTrackGetPreferredChunkDuration(*(v25 + 752), *(v26 + 760), &v51))
    {
      return;
    }

    *&time.value = v51;
    time.epoch = v52;
    SInt32 = CMTimeCopyAsDictionary(&time, a4);
    goto LABEL_14;
  }

  if (CFEqual(@"AlternateGroupID", a3))
  {
    TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(*(v25 + 736), v27);
LABEL_46:
    LOWORD(v51) = TrackAlternateGroupID;
LABEL_47:
    v28 = *MEMORY[0x1E695E480];
    v29 = &v51;
    v30 = kCFNumberSInt16Type;
    goto LABEL_13;
  }

  if (CFEqual(@"DefaultAlternateGroupID", a3))
  {
    TrackAlternateGroupID = MovieTrackGetDefaultAlternateGroupID(v27);
    goto LABEL_46;
  }

  if (CFEqual(@"ProvisionalAlternateGroupID", a3))
  {
    LOWORD(v51) = 0;
    if (MovieTrackGetProvisionalAlternateGroupID(v27, &v51))
    {
      goto LABEL_47;
    }

LABEL_50:
    SInt32 = 0;
    goto LABEL_14;
  }

  if (CFEqual(@"TrackVolume", a3))
  {
    if (*v26 != 1936684398)
    {
      fig_log_get_emitter();
      goto LABEL_6;
    }

    LODWORD(v51) = MovieTrackGetVolume(v27);
    v28 = *MEMORY[0x1E695E480];
    v29 = &v51;
    v30 = kCFNumberFloat32Type;
    goto LABEL_13;
  }

  if (CFEqual(@"DefaultEditList", a3))
  {

    createDefaultTrackEditSegmentArray(a4, v26, a5);
  }

  else
  {
    if (CFEqual(@"EditList", a3))
    {
      SInt32 = *(v26 + 400);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"LanguageTag", a3))
    {
      SInt32 = *(v26 + 408);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"ExtendedLanguageTag", a3))
    {
      SInt32 = *(v26 + 416);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"EnableTrack", a3))
    {
      IsEnabled = MovieTrackIsEnabled(v27);
      v37 = MEMORY[0x1E695E4D0];
      if (!IsEnabled)
      {
        v37 = MEMORY[0x1E695E4C0];
      }

LABEL_75:
      SInt32 = *v37;
LABEL_76:
      SInt32 = CFRetain(SInt32);
      goto LABEL_14;
    }

    if (CFEqual(@"InterleaveTrack", a3))
    {
      v37 = MEMORY[0x1E695E4D0];
      if (!*(v26 + 352))
      {
        v37 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_75;
    }

    if (CFEqual(@"TrackDimensions", a3))
    {
      LODWORD(v51) = 0;
      LODWORD(time.value) = 0;
      MovieTrackGetSpatialInformation(v27, &v51, &time, 0);
      copyDimensionsAsDictionary(a4, a5, *&v51, *&time.value);
      return;
    }

    if (CFEqual(@"CleanApertureDimensions", a3))
    {
      *&v51 = 0;
      if (*(v26 + 34))
      {
        v54 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetCleanApertureDimensions(v27, &time, &v54);
LABEL_91:
        if (copyDimensionsAsDictionary(a4, &v51, *&time.value, v54))
        {
          return;
        }

        SInt32 = v51;
LABEL_14:
        *a5 = SInt32;
        return;
      }

      if (*(v26 + 33))
      {
        goto LABEL_50;
      }

      goto LABEL_98;
    }

    if (CFEqual(@"ProductionApertureDimensions", a3))
    {
      *&v51 = 0;
      if (*(v26 + 36))
      {
        v54 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetProductionApertureDimensions(v27, &time, &v54);
        goto LABEL_91;
      }

      if (*(v26 + 35))
      {
        goto LABEL_50;
      }

      goto LABEL_98;
    }

    if (CFEqual(@"EncodedPixelsDimensions", a3))
    {
      *&v51 = 0;
      if (*(v26 + 38))
      {
        v54 = 0.0;
        LODWORD(time.value) = 0;
        MovieTrackGetEncodedPixelsDimensions(v27, &time, &v54);
        goto LABEL_91;
      }

      if (*(v26 + 37))
      {
        goto LABEL_50;
      }

LABEL_98:
      v38 = kFigFormatWriter_NoDimensions;
      goto LABEL_99;
    }

    if (CFEqual(@"TrackMatrix", a3))
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      MovieTrackGetSpatialInformation(v27, 0, 0, &v51);
      copyFigMatrixAsArray(a4, &v51, a5);
      return;
    }

    if (CFEqual(@"FormatDescriptionArray", a3))
    {
      SInt32 = MovieTrackCopyFormatDescriptionArray(v27);
      goto LABEL_14;
    }

    if (CFEqual(@"TrackMetadataWriters", a3))
    {

      createTrackMetadataWritersDictionary(a4, v26, a5);
      return;
    }

    if (CFEqual(@"TrackMetadataToTransfer", a3))
    {
      v39 = *(v26 + 560);
      if (!v39)
      {
        goto LABEL_116;
      }

LABEL_112:
      SInt32 = CFPropertyListCreateDeepCopy(a4, v39, 0);
      goto LABEL_14;
    }

    if (CFEqual(@"TrackMetadataToWrite", a3))
    {
      v39 = *(v26 + 568);
      if (v39)
      {
        goto LABEL_112;
      }

LABEL_116:
      *a5 = 0;
      return;
    }

    if (CFEqual(@"TrackMetadataAllowList", a3))
    {
      v40 = *(v26 + 576);
      if (v40)
      {
        SInt32 = CFDictionaryCreateCopy(a4, v40);
        goto LABEL_14;
      }

      goto LABEL_116;
    }

    if (CFEqual(@"ExcludeFromAutoSelection", a3))
    {
      IsExcludedFromAutoSelection = MovieTrackIsExcludedFromAutoSelection(v27);
      v38 = MEMORY[0x1E695E4D0];
      if (!IsExcludedFromAutoSelection)
      {
        v38 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_99;
    }

    if (CFEqual(@"WriteCompactSampleSizeIfPossible", a3))
    {
      v38 = MEMORY[0x1E695E4D0];
      v42 = *(v26 + 584);
      goto LABEL_125;
    }

    if (CFEqual(@"WriteQTSoundSampleTableLieIfPossible", a3))
    {
      v38 = MEMORY[0x1E695E4D0];
      v42 = *(v26 + 585);
LABEL_125:
      if (!v42)
      {
        v38 = MEMORY[0x1E695E4C0];
      }

LABEL_99:
      SInt32 = *v38;
      if (!*v38)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"Layer", a3))
    {
      TrackAlternateGroupID = MovieTrackGetLayer(v27);
      goto LABEL_46;
    }

    if (CFEqual(@"SampleReferenceBaseURL", a3))
    {
      SInt32 = *(v26 + 456);
      if (!SInt32)
      {
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    if (CFEqual(@"NegativeCompositionOffsetsInISOFilePolicy", a3))
    {

      copyNegativeCompositionOffsetsInISOFilePolicy(v25, v26, a5);
    }

    else if (CFEqual(@"HEVCSyncSampleNALUnitTypes", a3))
    {
      v48 = *(v26 + 736);

      MovieTrackCopySyncSampleCombinations(a4, v48, a5, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else if (CFEqual(@"HEVCTemporalLevelInfoCombinations", a3))
    {
      v49 = *(v26 + 736);

      MovieTrackCopyTemporalLevelCombinations(a4, v49, a5);
    }

    else if (CFEqual(@"SampleGroupDescriptions", a3))
    {
      v50 = *(v26 + 736);

      MovieTrackCopySampleGroupDescriptionDictionary(a4, v50, a5);
    }
  }
}

uint64_t editBoundaryDetectorCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 24, 0x1060040C052FB36, 0);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v5 = v6;
    *(v5 + 2) = 0;
    v5[2] = 0xBFF0000000000000;
    *a2 = v5;
  }

  else
  {
    editBoundaryDetectorCreate_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t wakeupWritingThreadForEndOfDataReached(uint64_t result)
{
  v1 = *(result + 16);
  if (!*(v1 + 335))
  {
    if (*(v1 + 560))
    {
      return FigSemaphoreSignal();
    }
  }

  return result;
}

uint64_t wakeupWritingThreadForOverflow(uint64_t result)
{
  v1 = *(result + 16);
  if (!*(v1 + 335))
  {
    if (*(v1 + 560))
    {
      return FigSemaphoreSignal();
    }
  }

  return result;
}

uint64_t setNegativeCompositionOffsetsInISOFilePolicy(uint64_t a1, uint64_t a2)
{
  if (FigCFEqual())
  {
    v4 = 0;
LABEL_7:
    v5 = *(a1 + 744);
    v6 = *(a2 + 744);

    return MovieHeaderMakerTrackSetNegativeCompositionOffsetsInISOFilePolicy(v5, v6, v4);
  }

  if (FigCFEqual())
  {
    v4 = 1;
    goto LABEL_7;
  }

  if (FigCFEqual())
  {
    v4 = 2;
    goto LABEL_7;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t editMediaTimeCreate(const void *a1, void *a2)
{
  v4 = MEMORY[0x19A8CC720](a1, 144, 0x1060040C85BD49CLL, 0);
  if (v4)
  {
    v5 = v4;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    result = 0;
    *v5 = v6;
    *(v5 + 8) = 0;
    *(v5 + 14) = 0xBFF0000000000000;
    v8 = MEMORY[0x1E6960C70];
    v9 = *MEMORY[0x1E6960C70];
    *(v5 + 12) = *MEMORY[0x1E6960C70];
    v10 = *(v8 + 16);
    *(v5 + 28) = v10;
    *(v5 + 36) = v9;
    *(v5 + 52) = v10;
    *(v5 + 60) = v9;
    *(v5 + 76) = v10;
    *(v5 + 100) = v10;
    *(v5 + 84) = v9;
    *(v5 + 17) = v10;
    *(v5 + 120) = v9;
    *a2 = v5;
  }

  else
  {
    editMediaTimeCreate_cold_1(&v11);
    return v11;
  }

  return result;
}

CFTypeID getTrimDurationsAndSpeedMultiplierFromSbuf(void *a1, CMTime *a2, CMTime *a3, char *a4, double *a5)
{
  *&v24.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v24.epoch = v10;
  v17 = *&v24.value;
  *&v23.value = *&v24.value;
  v23.epoch = v10;
  valuePtr = 0x3FF0000000000000;
  getTrimDurationFromSampleBuffer(a1, *MEMORY[0x1E6960560], &v24);
  getTrimDurationFromSampleBuffer(a1, *MEMORY[0x1E6960558], &v23);
  lhs = v24;
  rhs = v23;
  CMTimeAdd(&v22, &lhs, &rhs);
  CMSampleBufferGetDuration(&lhs, a1);
  rhs = lhs;
  time2 = v22;
  if (CMTimeCompare(&rhs, &time2) <= 0)
  {
    rhs = lhs;
    time2 = v22;
    if (CMTimeCompare(&rhs, &time2) < 0)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a1);
      CMFormatDescriptionGetMediaType(FormatDescription);
    }

    v24 = v22;
    *&v23.value = v17;
    v23.epoch = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  result = CMGetAttachment(a1, *MEMORY[0x1E6960540], 0);
  v14 = 1.0;
  if (result)
  {
    v15 = result;
    TypeID = CFNumberGetTypeID();
    result = CFGetTypeID(v15);
    if (TypeID == result)
    {
      result = CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
      v14 = *&valuePtr;
    }
  }

  *a2 = v24;
  *a3 = v23;
  *a5 = v14;
  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t editBoundaryDetectorDetectBoundary(uint64_t a1, int a2, int a3, int a4, double a5)
{
  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (a4)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v15;
    }

    if (a4)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if (a2)
    {
      v16 = 1;
    }

    if (v5 != 1)
    {
      v16 = 0;
    }

    if (v5)
    {
      v8 = v16;
    }

    LODWORD(v14) = 0;
  }

  else
  {
    v6 = a3 != 0;
    if (a4)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    if (a2)
    {
      v8 = 3;
    }

    else
    {
      v8 = v7;
    }

    if (a2)
    {
      v6 = 0;
    }

    if (a4)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    if (a2)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    if (a4)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    if (a2)
    {
      v11 = 1;
    }

    if (v5 == 4)
    {
      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (v5 == 3)
    {
      v11 = v10;
      v13 = a2 == 0;
    }

    else
    {
      v13 = v12;
    }

    if (v5 == 2)
    {
      LODWORD(v14) = v6;
    }

    else
    {
      v8 = v11;
      LODWORD(v14) = v13;
    }
  }

  v17 = *(a1 + 16);
  if (v17 == a5 || v17 == -1.0)
  {
    v14 = v14;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 8) = v8;
  *(a1 + 16) = a5;
  return v14;
}

CMTime *getTrimDurationFromSampleBuffer@<X0>(const void *a1@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = CMGetAttachment(a1, a2, 0);
  memset(&v8, 0, sizeof(v8));
  result = CMTimeMakeFromDictionary(&v8, v4);
  if (v8.flags)
  {
    *a3 = *&v8.value;
    epoch = v8.epoch;
  }

  else
  {
    v6 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v6 + 16);
  }

  *(a3 + 16) = epoch;
  return result;
}

double setTrackHeaderDataCompleteFlagIfCumulatedInterleavingDurationReachesCumulatedMovieFragmentDuration(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 329) || *(v2 + 330))
  {
    v3 = (a1 + 648);
    time1 = *(a1 + 672);
    time2 = *(a1 + 648);
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      v5 = (a1 + 672);
      *v3 = *(a1 + 672);
      *(a1 + 664) = *(a1 + 688);
      v6 = MEMORY[0x1E6960CC0];
      *(a1 + 601) = 1;
      time1 = *v6;
      if (*(v2 + 329))
      {
        v7 = 96;
      }

      else
      {
        if (!*(v2 + 330))
        {
LABEL_9:
          *&lhs.value = *v5;
          lhs.epoch = *(a1 + 688);
          v8 = time1;
          CMTimeAdd(&time2, &lhs, &v8);
          result = *&time2.value;
          *v5 = *&time2.value;
          *(a1 + 688) = time2.epoch;
          return result;
        }

        v7 = 144;
      }

      time1 = *(v2 + v7);
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t mergeTrackInfoLinkedList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1 != 0;
  v5 = &v12;
  v12 = 0u;
  v13 = 0u;
  if (a1 && a2)
  {
    v5 = &v12;
    while (1)
    {
      v6 = *(v3 + 100);
      v7 = *(v2 + 100);
      if (v6 | v7)
      {
        if (v6 < v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        time1 = *(v3 + 108);
        time2 = *(v2 + 108);
        if (CMTimeCompare(&time1, &time2))
        {
          time1 = *(v3 + 108);
          time2 = *(v2 + 108);
          if (CMTimeCompare(&time1, &time2) <= 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = *(v3 + 132);
          v10 = *(v2 + 132);
          if (v9 == v10)
          {
            if (*(*(v3 + 16) + 18) && *v3 != 1986618469 && *v2 == 1986618469)
            {
LABEL_9:
              *(v5 + 3) = v2;
              v8 = *(v2 + 24);
              goto LABEL_17;
            }
          }

          else if (v9 >= v10)
          {
            goto LABEL_9;
          }
        }
      }

      *(v5 + 3) = v3;
      v8 = v2;
      v2 = v3;
      v3 = *(v3 + 24);
LABEL_17:
      v5 = v2;
      v4 = v3 != 0;
      if (v3)
      {
        v2 = v8;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  v8 = a2;
LABEL_21:
  if (v4)
  {
    v8 = v3;
  }

  *(v5 + 3) = v8;
  return *(&v13 + 1);
}

uint64_t createBlockBufferByteStreamForMovieSampleDataWriter(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v9 = 0;
  cf = 0;
  v3 = CMBlockBufferCreateEmpty(v2, 0x40u, 0, &v9);
  if (v3)
  {
    v6 = v3;
    goto LABEL_10;
  }

  WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
  v5 = cf;
  if (WritableForBlockBuffer)
  {
    v6 = WritableForBlockBuffer;
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_10:
    v7 = v9;
    if (!v9)
    {
      return v6;
    }

    goto LABEL_5;
  }

  *(a1 + 440) = v9;
  v6 = MovieSampleDataWriterSetDefaultByteStream(*(a1 + 752), v5);
  if (v5)
  {
    v7 = v5;
LABEL_5:
    CFRelease(v7);
  }

  return v6;
}

uint64_t flushAllSampleBufferQueues(uint64_t a1)
{
  value = *(a1 + 504);
  if (!value)
  {
    return 0;
  }

  v3 = 1;
  while (1)
  {
    v11 = 0;
    do
    {
      v10 = 0;
      if (isReadyToWriteTrackHeaderWithNoSamples(value))
      {
        v4 = 6;
      }

      else if (reachedInterleavingPeriod(value))
      {
        v4 = 1;
      }

      else if (trackBufferQueueIsSampleAvailable(value))
      {
        v4 = 2;
      }

      else if (trackBufferQueueIsAtEndOfData(value))
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      v5 = handleWritingThreadEvent(value, v4, &v10, &v11);
      if (v10)
      {
        v6 = 7;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        v6 = 8;
      }
    }

    while (!v6);
    v7 = v5;
    if (v6 != 7)
    {
      break;
    }

    if (v11)
    {
      setNextCumulatedInterleavingDuration(value);
    }

    if (trackBufferQueueIsSampleAvailable(value) || (v8 = v3, value[13].epoch))
    {
      v8 = 0;
      v3 = 0;
    }

    if (value[1].value)
    {
      value = value[1].value;
    }

    else
    {
      value = *(a1 + 496);
    }

    if (value == *(a1 + 504))
    {
      v3 = 1;
      if (v8)
      {
        *(a1 + 504) = *(a1 + 496);
        return v7;
      }
    }
  }

  return v7;
}

const __CFArray *isReadyToWriteTrackHeaderWithNoSamples(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1[329] && v1[332] && !v1[352] && !*(a1 + 600))
  {
    return doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(a1);
  }

  else
  {
    return 0;
  }
}

BOOL trackBufferQueueIsSampleAvailable(uint64_t a1)
{
  result = 1;
  if (!CMBufferQueueGetHead(*(a1 + 616)))
  {
    Head = CMBufferQueueGetHead(*(a1 + 608));
    if (!Head || !CMSampleBufferDataIsReady(Head))
    {
      return 0;
    }
  }

  return result;
}

uint64_t trackBufferQueueIsAtEndOfData(uint64_t a1)
{
  result = CMBufferQueueIsAtEndOfData(*(a1 + 608));
  if (result)
  {
    return CMBufferQueueIsEmpty(*(a1 + 616)) != 0;
  }

  return result;
}

const __CFArray *doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(uint64_t a1)
{
  result = MovieTrackGetNumFormatDescriptions(*(a1 + 736));
  if (result)
  {
    return (MovieTrackGetMediaTimeScale(*(a1 + 736)) != 0);
  }

  return result;
}

uint64_t trackBufferQueueDequeueAndRetain(uint64_t a1, CMTime *a2, opaqueCMSampleBuffer **a3)
{
  v6 = CMBufferQueueDequeueAndRetain(*(a1 + 616));
  if (v6 || (v9 = CMBufferQueueDequeueIfDataReadyAndRetain(*(a1 + 608)), (v6 = v9) == 0) || *a1 != 1936684398 || (NumSamples = CMSampleBufferGetNumSamples(v9), memset(&v41, 0, sizeof(v41)), time = *a2, CMTimeMultiplyByFloat64(&v41, &time, 0.5), !NumSamples))
  {
LABEL_2:
    value_low = 0;
    *a3 = v6;
    return value_low;
  }

  v11 = *(a1 + 616);
  value = v41.value;
  v40 = *&v41.timescale;
  sampleBufferOut = 0;
  timingArrayEntriesNeededOut = 0;
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v6, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    value_low = SampleTimingInfoArray;
    v15 = 0;
    goto LABEL_54;
  }

  if (timingArrayEntriesNeededOut)
  {
    if (timingArrayEntriesNeededOut < 0)
    {
      goto LABEL_12;
    }

    if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL)
    {
      goto LABEL_12;
    }

    v14 = 72 * timingArrayEntriesNeededOut;
    if (!(72 * timingArrayEntriesNeededOut))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = malloc_type_malloc(v14, 0x1000040FF89C88EuLL);
  if (!v16)
  {
LABEL_12:
    trackBufferQueueDequeueAndRetain_cold_1(&time);
    v15 = 0;
    value_low = LODWORD(time.value);
    goto LABEL_54;
  }

  v15 = v16;
  v17 = CMSampleBufferGetSampleTimingInfoArray(v6, timingArrayEntriesNeededOut, v16, 0);
  if (v17)
  {
    value_low = v17;
    goto LABEL_54;
  }

  allocator = CFGetAllocator(v6);
  v18 = CMSampleBufferGetNumSamples(v6);
  memset(&v43, 0, sizeof(v43));
  CMSampleBufferGetOutputPresentationTimeStamp(&v43, v6);
  v39 = v18;
  if (v18 < 1)
  {
    value_low = 0;
    goto LABEL_54;
  }

  v36 = a3;
  v37 = v15;
  v19 = 0;
  while (1)
  {
    if (timingArrayEntriesNeededOut == 1)
    {
      flags = v15->duration.flags;
      if ((flags & 0x1D) == 1 && (v21 = v15->duration.value, timescale = v15->duration.timescale, epoch = v15->duration.epoch, time.value = v15->duration.value, time.timescale = timescale, time.flags = flags, time.epoch = epoch, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time, &time2)))
      {
        time2.value = value;
        *&time2.timescale = v40;
        CMTimeConvertScale(&time, &time2, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v24 = v39 - v19 >= time.value / v21 ? time.value / v21 : v39 - v19;
      }

      else
      {
        v24 = v39 - v19;
      }
    }

    else
    {
      time = **&MEMORY[0x1E6960CC0];
      v24 = 0;
      v25 = timingArrayEntriesNeededOut - v19;
      if (timingArrayEntriesNeededOut > v19)
      {
        v26 = &v15[v19];
        while (1)
        {
          time2 = time;
          rhs.value = value;
          *&rhs.timescale = v40;
          if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
          {
            break;
          }

          time2 = time;
          v27 = *&v26->duration.value;
          rhs.epoch = v26->duration.epoch;
          *&rhs.value = v27;
          CMTimeAdd(&time, &time2, &rhs);
          ++v24;
          ++v26;
          if (v25 == v24)
          {
            v24 = v25;
            break;
          }
        }
      }
    }

    v28 = v24 <= 1 ? 1 : v24;
    v49.location = v19;
    v49.length = v28;
    v29 = CMSampleBufferCopySampleBufferForRange(allocator, v6, v49, &sampleBufferOut);
    if (v29)
    {
      break;
    }

    time = v43;
    v29 = CMSampleBufferSetOutputPresentationTimeStamp(sampleBufferOut, &time);
    if (v29)
    {
      break;
    }

    v30 = *(a1 + 776);
    if (v30)
    {
      time.value = 0;
      SplitSampleBufferArray = AudioSampleBufferSplitterCreateSplitSampleBufferArray(v30, sampleBufferOut, 0, &time);
      if (SplitSampleBufferArray)
      {
        goto LABEL_45;
      }

      if (!time.value)
      {
        goto LABEL_49;
      }

      Count = CFArrayGetCount(time.value);
      if (Count < 1)
      {
LABEL_42:
        value_low = 0;
      }

      else
      {
        v33 = Count;
        v34 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(time.value, v34);
          SplitSampleBufferArray = CMBufferQueueEnqueue(v11, ValueAtIndex);
          if (SplitSampleBufferArray)
          {
            break;
          }

          if (v33 == ++v34)
          {
            goto LABEL_42;
          }
        }

LABEL_45:
        value_low = SplitSampleBufferArray;
      }

      if (time.value)
      {
        CFRelease(time.value);
      }

      if (value_low)
      {
        goto LABEL_59;
      }

      goto LABEL_49;
    }

    v29 = CMBufferQueueEnqueue(v11, sampleBufferOut);
    if (v29)
    {
      break;
    }

LABEL_49:
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputDuration(&time, sampleBufferOut);
    rhs = v43;
    v42 = time;
    CMTimeAdd(&time2, &rhs, &v42);
    v43 = time2;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
      sampleBufferOut = 0;
    }

    v19 += v28;
    v15 = v37;
    if (v19 >= v39)
    {
      value_low = 0;
      a3 = v36;
      goto LABEL_54;
    }
  }

  value_low = v29;
LABEL_59:
  a3 = v36;
  v15 = v37;
LABEL_54:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  free(v15);
  if (!value_low)
  {
    CFRelease(v6);
    v6 = CMBufferQueueDequeueIfDataReadyAndRetain(*(a1 + 616));
    goto LABEL_2;
  }

  CFRelease(v6);
  return value_low;
}