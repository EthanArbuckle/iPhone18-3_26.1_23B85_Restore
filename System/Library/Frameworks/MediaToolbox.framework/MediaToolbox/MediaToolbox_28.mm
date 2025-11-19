__n128 OUTLINED_FUNCTION_1_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17)
{
  *v17 = a15;
  v17[1] = a16;
  result = a17;
  v17[2] = a17;
  return result;
}

uint64_t FigSimpleRenderPipelineCreateWithCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  if (a7 && a2 && (*(a5 + 12) & 0x1D) == 1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigRenderPipelineGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      return v12;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 8) = FigSimpleMutexCreate();
    *(DerivedStorage + 32) = a2;
    *(DerivedStorage + 40) = a3;
    *(DerivedStorage + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v14 = *(a5 + 16);
    *(DerivedStorage + 56) = *a5;
    *(DerivedStorage + 72) = v14;
    *(DerivedStorage + 88) = 0;
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    if (a6)
    {
      Value = CFDictionaryGetValue(a6, @"SortSampleBufferQueueByOutputPTS");
      if (Value)
      {
        if (CFBooleanGetValue(Value))
        {
          CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS();
        }
      }
    }

    v17 = CMBufferQueueCreate(*MEMORY[0x1E695E480], 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 16));
    if (!v17)
    {
      *a7 = 0;
    }

    return v17;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t figSimpleRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      FigSimpleMutexLock();
      v4 = *(v3 + 3);
      *(v3 + 3) = 0;
      FigSimpleMutexUnlock();
      if (v4)
      {
        TMCInvalidate(v4);
        CFRelease(v4);
      }

      simplepipelineSetTimebase(a1, 0);
      v5 = *(v3 + 2);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 2) = 0;
      }
    }
  }

  return 0;
}

uint64_t figSimpleRenderPipelineFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figSimpleRenderPipelineInvalidate(a1);
  v3 = *(DerivedStorage + 48);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 48) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *figSimpleRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSimpleRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figSimpleRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(@"SourceSampleBufferQueue", a2))
      {
        v10 = v8[2];
      }

      else
      {
        if (!CFEqual(@"Timebase", a2))
        {
          if (CFEqual(@"PerformanceDictionary", a2))
          {
            v11 = 0;
            *a4 = 0;
          }

          else if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
          {
            memset(&v16, 0, sizeof(v16));
            FigSimpleMutexLock();
            v12 = v8[3];
            if (v12)
            {
              v13 = CFRetain(v12);
              FigSimpleMutexUnlock();
              if (v13)
              {
                v11 = TMCGetEndPresentationTimeForDecodedSamples(v13, &v16);
                if (!v11)
                {
                  v15 = v16;
                  v14 = CMTimeCopyAsDictionary(&v15, a3);
                  *a4 = v14;
                  if (v14)
                  {
                    v11 = 0;
                  }

                  else
                  {
                    v11 = 4294954510;
                  }
                }

                CFRelease(v13);
                return v11;
              }
            }

            else
            {
              FigSimpleMutexUnlock();
            }

            return 4294954513;
          }

          else
          {
            return 4294954446;
          }

          return v11;
        }

        v10 = v8[10];
      }

      *a4 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      return 0;
    }
  }

  return FigSignalErrorAtGM();
}

uint64_t figSimpleRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage && !CFEqual(@"SourceSampleBufferQueue", a2))
  {
    if (CFEqual(@"Timebase", a2))
    {
      if (!a3 || (TypeID = CMTimebaseGetTypeID(), TypeID == CFGetTypeID(a3)))
      {
        simplepipelineSetTimebase(a1, a3);
        return 0;
      }
    }

    else if (!CFEqual(@"PerformanceDictionary", a2) && !CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      return 4294954446;
    }
  }

  return FigSignalErrorAtGM();
}

void simplepipelineSetTimebase(uint64_t a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      TMCInvalidate(v4);
      CFRelease(v4);
    }

    CFRelease(*(DerivedStorage + 80));
  }

  *(DerivedStorage + 80) = a2;
  if (a2)
  {
    v11 = 0;
    v10[0] = 0;
    v10[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v10[2] = simplepipelineSendSample;
    v10[3] = simplepipelineReleaseService;
    v10[4] = simplepipelineResetOutput;
    v5 = *MEMORY[0x1E695E480];
    if (*(DerivedStorage + 88))
    {
      keys[0] = @"AllowCaptionGroupSampleBuffers";
      values[0] = *MEMORY[0x1E695E4D0];
      v6 = CFDictionaryCreate(v5, keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(DerivedStorage + 16);
    *keys = *(DerivedStorage + 56);
    v8 = *(DerivedStorage + 80);
    v13 = *(DerivedStorage + 72);
    TMCCreateWithQueueAndOptions(v5, v7, keys, v10, v8, v6, &v11);
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = v11;
    FigSimpleMutexUnlock();
    if (v9)
    {
      TMCInvalidate(v9);
      CFRelease(v9);
    }

    CFRetain(*(DerivedStorage + 80));
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

uint64_t simplepipelineSendSample(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v6 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (*(DerivedStorage + 32))
        {
          v8 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v8)
          {
            v9 = v8;
            (*(v6 + 32))(v8, a2);
            CFRelease(v9);
          }
        }
      }
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t simplepipelineResetOutput()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      if (!*DerivedStorage)
      {
        if (*(DerivedStorage + 40))
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v5)
          {
            v6 = v5;
            (*(v3 + 40))();
            CFRelease(v6);
          }
        }
      }
    }

    CFRelease(v1);
  }

  return 0;
}

uint64_t FigSampleBufferConsumerCreateForFrameSilo(const void *a1, void *a2)
{
  if (!a1)
  {
    FigSampleBufferConsumerCreateForFrameSilo_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    FigSampleBufferConsumerCreateForFrameSilo_cold_1(&v6);
    return v6;
  }

  FigSampleBufferConsumerGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    *CMBaseObjectGetDerivedStorage() = a1;
    CFRetain(a1);
    *a2 = 0;
  }

  return v4;
}

void otfs_finalize()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  if (v0)
  {

    CFRelease(v0);
  }
}

__CFString *otfs_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForFrameSilo %p>", a1);
  return Mutable;
}

uint64_t otfs_sendSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();

  return VTFrameSiloAddSampleBuffer(v3, a2);
}

__CFString *figAudioQueueRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioQueueRenderPipeline %p>", a1);
  return Mutable;
}

CFTypeRef *faqrp_setTimebase(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v4 = result;
    FigSimpleMutexLock();
    if (v4[14])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFRelease(v4[14]);
    }

    v4[14] = a2;
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CFRetain(v4[14]);
      if (dword_1EAF16ED8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void faqrp_DecodeError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Value = a5;
  values = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(Value, @"FigAudioQueueNotificationParameter_ConverterError");
  values = Value;
  if (!Value)
  {
    goto LABEL_7;
  }

  v7 = CFNumberGetTypeID();
  if (v7 == CFGetTypeID(Value))
  {
    Value = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRenderPipelineNotificationParameter_ErrorCode, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
LABEL_6:
    Value = 0;
  }

LABEL_7:
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Value)
  {
    CFRelease(Value);
  }
}

uint64_t faqrp_PreemptedError()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_RanDry()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_SegmentFinished()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_playResourceReleased()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_defaultDeviceChanged()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_latencyChanged()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_faqRequiresManualRestartBecauseConfigurationChanged()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueDecodeFormatCouldBeImprovedByRebuild()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueStartupPerformanceMetricsAvailable()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_audioQueueDeviceHasDisconnected()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t faqrp_timebaseRateChangedCallback(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (dword_1EAF16ED8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*v4 && !*(v4 + 65))
  {
    return faqrp_startStopAudioQueueSynchronizedToTimebase(a2, *(v4 + 40));
  }

  return result;
}

uint64_t faqrp_startStopAudioQueueSynchronizedToTimebase(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  cf = 0;
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v6 = DerivedStorage;
  v7 = CMTimebaseCopySource(*(DerivedStorage + 112));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(v6 + 112), v7, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (RelativeRateAndAnchorTime)
  {
    goto LABEL_29;
  }

  if (outRelativeRate == 0.0)
  {
    FigAudioQueuePause(a2);
    *(v6 + 64) = 0;
    v18 = outRelativeRate == 0.0;
    if (outRelativeRate == 1.0)
    {
      v18 = 1;
    }

    *(v6 + 101) = v18;
    faqrp_updateTimePitchBypass();
LABEL_20:
    v5 = 0;
    if (!v7)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v7);
    goto LABEL_26;
  }

  memset(&v23, 0, sizeof(v23));
  if (*(v6 + 64))
  {
    goto LABEL_20;
  }

  time1 = outOfClockOrTimebaseAnchorTime;
  v21 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v9;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time2 = outRelativeToClockOrTimebaseAnchorTime;
    rhs = outOfClockOrTimebaseAnchorTime;
    CMTimeSubtract(&time1, &time2, &rhs);
    outRelativeToClockOrTimebaseAnchorTime = time1;
    *&outOfClockOrTimebaseAnchorTime.value = v21;
    outOfClockOrTimebaseAnchorTime.epoch = v9;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  time1 = outRelativeToClockOrTimebaseAnchorTime;
  CMSyncConvertTime(&v23, &time1, v7, HostTimeClock);
  faqrp_updateFAQDiscardSampleBuffersProperty(a1, 1);
  v11 = outRelativeRate == 0.0;
  if (outRelativeRate == 1.0)
  {
    v11 = 1;
  }

  *(v6 + 101) = v11;
  faqrp_updateTimePitchBypass();
  FigAudioQueueSetParameter(a2, 2, *(v6 + 160));
  v12 = outRelativeRate;
  time1 = outOfClockOrTimebaseAnchorTime;
  faqrp_primeAudioChain(v12, a1, &time1);
  v13 = *(v6 + 112);
  v14 = outRelativeRate;
  time1 = outOfClockOrTimebaseAnchorTime;
  time2 = v23;
  RelativeRateAndAnchorTime = faqrp_createPendingStartInfo(v14, a1, v13, &time1.value, &time2.value, 0, &cf);
  if (!RelativeRateAndAnchorTime)
  {
    FigSimpleMutexLock();
    v15 = *(v6 + 120);
    v16 = cf;
    *(v6 + 120) = cf;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    FigSimpleMutexUnlock();
    if (dword_1EAF16ED8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v19 = outRelativeRate;
    time1 = outOfClockOrTimebaseAnchorTime;
    time2 = v23;
    v5 = FigAudioQueueStart2(a2, &time1, &time2, faqrp_startTimebaseAtAnchorAudioTimeStamp, v16, 0, v19);
    if (!v5)
    {
      *(v6 + 64) = 1;
    }

    if (!v7)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_29:
  v5 = RelativeRateAndAnchorTime;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t faqrp_updateFAQDiscardSampleBuffersProperty(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    if (*(result + 102))
    {
      v4 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      if (*(result + 103))
      {
        v5 = a2 == 0;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        v4 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v4 = *MEMORY[0x1E695E4C0];
      }
    }

    v6 = *(result + 40);

    return FigAudioQueueSetProperty(v6, @"DiscardSampleBuffers", v4);
  }

  return result;
}

uint64_t faqrp_updateTimePitchBypass()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v2 = DerivedStorage;
  if (!*(DerivedStorage + 67))
  {
    if (*(DerivedStorage + 101) && !*(DerivedStorage + 100))
    {
      v3 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    v4 = *v3;
    FigAudioQueueSetProperty(*(DerivedStorage + 40), @"TimePitchBypass", *v3);
    if (*(v2 + 66))
    {
      if (v4 == *MEMORY[0x1E695E4D0])
      {
        v5 = *MEMORY[0x1E695E4C0];
      }

      else
      {
        v5 = *MEMORY[0x1E695E4D0];
      }

      FigAudioQueueSetProperty(*(v2 + 40), @"EnableTimePitch", v5);
    }
  }

  return 0;
}

uint64_t faqrp_primeAudioChain(float a1, uint64_t a2, uint64_t a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v6 = result;
    if (*(a3 + 12))
    {
      v7 = *(result + 40);
      v13 = *a3;
      v12 = **&MEMORY[0x1E6960C70];
      v8 = &v13;
      v9 = &v12;
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
      CMTimebaseGetTime(&v13, *(result + 112));
      v7 = *(v6 + 40);
      v12 = v13;
      v10 = *MEMORY[0x1E6960C70];
      v11 = *(MEMORY[0x1E6960C70] + 16);
      v8 = &v12;
      v9 = &v10;
    }

    return FigAudioQueuePrime(v7, v8, v9, 0, a1);
  }

  return result;
}

uint64_t faqrp_createPendingStartInfo(float a1, uint64_t a2, const void *a3, __int128 *a4, __int128 *a5, char a6, uint64_t *a7)
{
  if (_MergedGlobals_38 != -1)
  {
    faqrp_createPendingStartInfo_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v14 = Instance;
    FigCFWeakReferenceStore();
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    result = 0;
    *(v14 + 24) = v15;
    v17 = *a4;
    *(v14 + 48) = *(a4 + 2);
    *(v14 + 32) = v17;
    v18 = *a5;
    *(v14 + 72) = *(a5 + 2);
    *(v14 + 56) = v18;
    *(v14 + 80) = a1;
    *(v14 + 84) = a6;
    *a7 = v14;
  }

  else
  {
    faqrp_createPendingStartInfo_cold_2(&v19);
    return v19;
  }

  return result;
}

uint64_t faqrpPendingStartInfo_registerType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double faqrpPendingStartInfo_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void faqrpPendingStartInfo_Finalize(uint64_t a1)
{
  objc_destroyWeak((a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

__CFString *faqrpPendingStartInfo_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FAQRPPendingStartInfo %p", a1);
  return Mutable;
}

BOOL faqrp_timeDifferenceIsWithinTolerance(CMTime *a1, CMTime *a2, CMTime *a3)
{
  lhs = *a1;
  v5 = *a2;
  CMTimeSubtract(&time, &lhs, &v5);
  CMTimeAbsoluteValue(&lhs, &time);
  time = *a3;
  return CMTimeCompare(&lhs, &time) < 1;
}

uint64_t faqrp_startTimebaseCommon(float a1, uint64_t a2, OpaqueCMTimebase *a3, CMTime *a4, CMTime *a5, CMTime *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  time = *a6;
  CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a6 = timebaseTime;
  time = *a4;
  CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a4 = timebaseTime;
  time = *a5;
  result = CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  *a5 = timebaseTime;
  v12 = a1;
  a6->value += ((a5->value - a4->value) / v12 + 0.5);
  v13 = *&a5->value;
  a4->epoch = a5->epoch;
  *&a4->value = v13;
  if (dword_1EAF16ED8)
  {
    LODWORD(v19.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3)
  {
    v15 = CMTimebaseCopySource(a3);
    memset(&v19, 0, sizeof(v19));
    HostTimeClock = CMClockGetHostTimeClock();
    timebaseTime = *a6;
    CMSyncConvertTime(&v19, &timebaseTime, HostTimeClock, v15);
    if (dword_1EAF16ED8)
    {
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v15)
    {
      CFRelease(v15);
    }

    time = *a4;
    CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a4 = timebaseTime;
    time = v19;
    CMTimeConvertScale(&timebaseTime, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v19 = timebaseTime;
    if (dword_1EAF16ED8)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    timebaseTime = *a4;
    time = v19;
    return CMTimebaseSetRateAndAnchorTime(a3, v12, &timebaseTime, &time);
  }

  return result;
}

uint64_t faqrp_setMuted(uint64_t a1, int a2)
{
  v6 = 1065353216;
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v5 = result;
    if (*(result + 103) != a2)
    {
      if (a2)
      {
        if (!FigAudioQueueGetParameter(*(result + 40), 1u, &v6) && !FigAudioQueueSetParameter(*(v5 + 40), 1, 0.0))
        {
          *(v5 + 108) = 1;
          *(v5 + 104) = v6;
        }

        *(v5 + 103) = 1;
        return faqrp_updateFAQDiscardSampleBuffersProperty(a1, *(v5 + 109));
      }

      else
      {
        *(result + 103) = 0;
        result = faqrp_updateFAQDiscardSampleBuffersProperty(a1, *(result + 109));
        if (*(v5 + 108))
        {
          result = FigAudioQueueSetParameter(*(v5 + 40), 1, *(v5 + 104));
          *(v5 + 108) = 0;
        }
      }
    }
  }

  return result;
}

_BYTE *faqrp_setSuspended(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result && result[102] != a2)
  {
    result[102] = a2;
    v5 = result[109];

    return faqrp_updateFAQDiscardSampleBuffersProperty(a1, v5);
  }

  return result;
}

uint64_t figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition(int a1, CMTimebaseRef timebase, uint64_t a3, const void *a4, uint64_t a5, const void *a6)
{
  if (timebase && a4 && CMTimebaseGetRate(timebase) == 0.0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 66))
    {
      v19 = 4294954444;
    }

    else
    {
      v13 = *MEMORY[0x1E695E480];
      if (*(DerivedStorage + 128) || (v14 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(DerivedStorage + 128) = v14) != 0))
      {
        Mutable = CFDictionaryCreateMutable(v13, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"TransitionTimebase", timebase);
        if (a5)
        {
          FigCFDictionarySetCFIndex();
          if (a6)
          {
            a6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
            if (!a6)
            {
              figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition_cold_1(&v20);
              v19 = v20;
              if (!Mutable)
              {
LABEL_23:
                if (a6)
                {
                  CFRelease(a6);
                }

                goto LABEL_26;
              }

LABEL_22:
              CFRelease(Mutable);
              goto LABEL_23;
            }

            FigCFDictionarySetValue();
          }
        }

        else
        {
          a6 = 0;
        }

        CFDictionarySetValue(*(DerivedStorage + 128), a4, Mutable);
        *&v20 = 0;
        if (faqrp_rememberRenderPipelineForTransitionCallback_sInitializeTableOnce != -1)
        {
          figAudioQueueRenderPipelineStartAndUseTimebaseAtTransition_cold_2();
        }

        if (sTransitionCallbackRefconToAudioQueueRenderPipelineTable)
        {
          Key = FigCFWeakReferenceTableAddValueAndGetKey();
          if (Key)
          {
            goto LABEL_21;
          }

          v17 = v20;
        }

        else
        {
          Key = FigSignalErrorAtGM();
          if (Key)
          {
LABEL_21:
            v19 = Key;
            if (!Mutable)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v17 = 0;
        }

        v18 = *(DerivedStorage + 40);
        v20 = *a3;
        v21 = *(a3 + 16);
        Key = FigAudioQueueRequestTransitionCallback(v18, &v20, a4, faqrp_transitionCallback, v17);
        goto LABEL_21;
      }

      v19 = FigSignalErrorAtGM();
    }

LABEL_26:
    FigSimpleMutexUnlock();
    return v19;
  }

  return FigSignalErrorAtGM();
}

uint64_t figAudioQueueRenderPipelineSynchronizeToTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  started = faqrp_startStopAudioQueueSynchronizedToTimebase(a1, *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return started;
}

uint64_t figAudioQueueRenderPipelineFinishSettingRate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v3 = 4294954444;
  }

  else
  {
    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 120);
    *(DerivedStorage + 120) = 0;
    FigSimpleMutexUnlock();
    if (v4)
    {
      memset(&v14, 0, sizeof(v14));
      if (*(v4 + 68))
      {
        v14 = *(v4 + 56);
      }

      else
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v14, HostTimeClock);
      }

      memset(&v13, 0, sizeof(v13));
      if (*(v4 + 44))
      {
        v13 = *(v4 + 32);
      }

      else
      {
        CMTimebaseGetTime(&v13, *(v4 + 24));
      }

      v6 = *(v4 + 24);
      v7 = *(v4 + 80);
      v12 = v13;
      v11 = v13;
      v10 = v14;
      faqrp_startTimebaseCommon(v7, a1, v6, &v12, &v11, &v10);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v8)
      {
        v8(a1);
      }

      CFRelease(v4);
    }

    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a2)
  {
    figAudioQueueRenderPipelineSetPropertiesToUpdateAtTransition_cold_1(a1, a2, a3, &v4);
    return v4;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t faqrp_stopTimebaseAndAudioQueue(uint64_t a1, CMTime *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954444;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = *(v5 + 15);
  if (v6)
  {
    CFRelease(v6);
    *(v5 + 15) = 0;
  }

  v5[109] = 0;
  FigSimpleMutexUnlock();
  if ((a2->flags & 0x1D) == 1)
  {
    v7 = CMTimebaseCopySource(*(v5 + 14));
    if (dword_1EAF16ED8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(v5 + 14);
    CMSyncGetTime(&time, v7);
    timebaseTime = *a2;
    CMTimebaseSetRateAndAnchorTime(v10, 0.0, &timebaseTime, &time);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    if (dword_1EAF16ED8)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    time = **&MEMORY[0x1E6960C70];
    timebaseTime = time;
    CMTimebaseSetRateAndAnchorTimeWithFlags();
  }

  if (!v5[64])
  {
    return 0;
  }

  result = FigAudioQueuePause(*(v5 + 5));
  v5[64] = 0;
  return result;
}

void figAudioQueueRenderPipelineConvertRPPropertyKeyToFAQPropertyKey(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (FigCFEqual())
  {
    v5 = kFigAudioQueueProperty_AudioCurves;
  }

  else
  {
    if (!FigCFEqual())
    {
      return;
    }

    v5 = kFigAudioQueueProperty_SecondaryAudioCurves;
  }

  v6 = *v5;
  if (*v5)
  {

    CFDictionarySetValue(a3, v6, a2);
  }
}

__n128 OUTLINED_FUNCTION_2_45()
{
  result = *v0;
  v1[7] = *v0;
  v1[8].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return FigSimpleMutexLock();
}

uint64_t FigPlaybackTimer_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackTimerID = result;
  return result;
}

uint64_t FigPlaybackTimerCreate(uint64_t *a1)
{
  if (a1)
  {
    MEMORY[0x19A8D3660](&FigPlaybackTimerGetTypeID_sFigPlaybackTimerRegisterOnce, FigPlaybackTimer_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *a1 = v3;
    }

    else
    {
      FigPlaybackTimerCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlaybackTimerCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t playbacktimer_init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers(uint64_t a1, CFTypeRef cf, NSObject *a3, void *a4, void (__cdecl *a5)(void *), void (__cdecl *a6)(void *), void (__cdecl *a7)(void *), CMTime *a8)
{
  if (!*(a1 + 16) && (a8->flags & 0x1D) == 1 && cf)
  {
    *(a1 + 24) = cf;
    CFRetain(cf);
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a3);
    *(a1 + 16) = v15;
    if (v15)
    {
      dispatch_set_context(v15, a4);
      dispatch_source_set_event_handler_f(*(a1 + 16), a5);
      if (a6)
      {
        dispatch_source_set_cancel_handler_f(*(a1 + 16), a6);
      }

      if (a7)
      {
        dispatch_set_finalizer_f(*(a1 + 16), a7);
      }

      dispatch_resume(*(a1 + 16));
      v16 = CMTimebaseAddTimerDispatchSource(*(a1 + 24), *(a1 + 16));
      if (v16)
      {
        value_low = v16;
        FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_1();
      }

      else
      {
        v18 = *(a1 + 16);
        v17 = *(a1 + 24);
        v23 = *a8;
        value_low = CMTimebaseSetTimerDispatchSourceNextFireTime(v17, v18, &v23, 1u);
        if (!value_low)
        {
          return value_low;
        }

        FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_2();
      }
    }

    else
    {
      if (FigPlaybackTimerScheduleForTimebaseTimeWithTeardownHandlers_cold_3(&v23))
      {
        return 0;
      }

      value_low = LODWORD(v23.value);
    }

    v21 = *(a1 + 16);
    if (v21)
    {
      dispatch_source_cancel(v21);
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    v22 = *(a1 + 24);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 24) = 0;
    }

    return value_low;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigPlaybackTimerCancel(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), v1);
    if (v3)
    {
      FigPlaybackTimerCancel_cold_1();
    }

    else
    {
      dispatch_source_cancel(*(a1 + 16));
      dispatch_release(*(a1 + 16));
      *(a1 + 16) = 0;
      CFRelease(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  else
  {
    FigPlaybackTimerCancel_cold_2(&v5);
    return v5;
  }

  return v3;
}

uint64_t playbacktimer_finalize(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return FigPlaybackTimerCancel(a1);
  }

  return a1;
}

CFStringRef playbacktimer_copyFormattingDesc(uint64_t a1)
{
  v2 = CFCopyDescription(*(a1 + 24));
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigPlaybackTimer %p]: timebase: %@, dispatch_source %p", a1, v2, *(a1 + 16));
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t figCSSParserRegisterFigCSSParser()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSParserID = result;
  return result;
}

uint64_t FigCSSParserCreate(uint64_t a1, const void *a2, CFTypeRef cf, uint64_t **a4)
{
  if (!a2)
  {
    FigCSSParserCreate_cold_4(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCSSParserCreate_cold_3(&v13);
    return v13;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFDictionaryGetTypeID())
    {
      FigCSSParserCreate_cold_1(&v13);
      return v13;
    }
  }

  MEMORY[0x19A8D3660](&FigCSSParserGetTypeID_sRegisterFigCSSParserOnce, figCSSParserRegisterFigCSSParser);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigCSSParserCreate_cold_2(&v13);
    return v13;
  }

  v10 = Instance;
  *(Instance + 32) = 0;
  if (cf)
  {
    LOBYTE(v13) = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  v10[2] = CFRetain(a2);
  v11 = FigCSSTokenizerCreateWithTextContainer(a1, a2, v10 + 3);
  if (v11)
  {
    CFRelease(v10);
  }

  else
  {
    *a4 = v10;
  }

  return v11;
}

uint64_t FigCSSParserProduceStyleSheet(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigCSSParserProduceStyleSheet_cold_12(v109);
    return LODWORD(v109[0]);
  }

  v2 = a2;
  if (!a2)
  {
    FigCSSParserProduceStyleSheet_cold_11(v109);
    return LODWORD(v109[0]);
  }

  figCSSParser_reset(a1);
  if (*(a1 + 32))
  {
    figCSSParser_reset(a1);
  }

  v4 = FigCSSTokenizerProduceTokenArray(*(a1 + 24), (a1 + 40));
  if (v4)
  {
    v26 = v4;
    goto LABEL_298;
  }

  if (!*(a1 + 40))
  {
    if (FigCSSParserProduceStyleSheet_cold_10(v109))
    {
      goto LABEL_276;
    }

    v26 = LODWORD(v109[0]);
    goto LABEL_298;
  }

  if (*(a1 + 80))
  {
    v5 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v5, 0, @"parser produced tokens: %@", *(a1 + 40));
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v79 = 0;
  v80 = 0;
  v7 = CFGetAllocator(a1);
  v8 = FigCSSTokenWalkerCreate(v7, *(a1 + 40), &v79);
  if (v8 || (v9 = CFGetAllocator(a1), v8 = FigCSSStyleSheetCreate(v9, &v80), v8))
  {
    v26 = v8;
    v71 = 0;
    Mutable = 0;
    goto LABEL_290;
  }

  v10 = v79;
  cf = 0;
  v83 = 0;
  value = 0;
  v11 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigCSSParserProduceStyleSheet_cold_9(v109);
    v27 = 0;
    v28 = 0;
    v26 = LODWORD(v109[0]);
    goto LABEL_282;
  }

  v13 = CFGetAllocator(a1);
  v14 = FigCSSRuleListCreate(v13, &v83);
  if (v14 || (v109[0] = 0, LODWORD(v107) = 0, v14 = FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107), v14))
  {
    v26 = v14;
    v27 = 0;
    v28 = 0;
    goto LABEL_282;
  }

  v76 = v2;
  v15 = v107;
  v16 = MEMORY[0x1E695E9C0];
  while (v15 > 24)
  {
    if ((v15 - 25) >= 2)
    {
      goto LABEL_31;
    }

LABEL_79:
    v109[0] = 0;
    LODWORD(v107) = 0;
    appended = FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
    v15 = v107;
    if (appended)
    {
      goto LABEL_280;
    }
  }

  switch(v15)
  {
    case 2:
      goto LABEL_79;
    case 8:
      appended = FigCSSTokenWalkerReconsumeInputToken(v10);
      if (appended || (appended = _figCSSParser_consume_an_at_rule(a1, v10, &cf, &value), appended))
      {
LABEL_280:
        v26 = appended;
        v27 = 0;
        v28 = 0;
        goto LABEL_281;
      }

      if (cf)
      {
        appended = FigCSSRuleListAppendRule(v83, cf);
        if (appended)
        {
          goto LABEL_280;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (value)
      {
        CFArrayAppendValue(Mutable, value);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }

      goto LABEL_79;
    case 1:
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v71 = v83;
      v83 = 0;
      v2 = v76;
      goto LABEL_255;
  }

LABEL_31:
  appended = FigCSSTokenWalkerReconsumeInputToken(v10);
  if (appended)
  {
    goto LABEL_280;
  }

  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  theArray = 0;
  v18 = CFGetAllocator(a1);
  v19 = FigCSSQualifiedRuleParserNodeCreate(v18, &v89);
  if (v19)
  {
    goto LABEL_54;
  }

  v20 = CFGetAllocator(a1);
  v19 = FigCSSRuleCreate(v20, 1, &v90);
  if (v19)
  {
    goto LABEL_54;
  }

  v109[0] = 0;
  LODWORD(v107) = 0;
  v19 = FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
  if (v19)
  {
    goto LABEL_54;
  }

  v21 = v107;
  while (1)
  {
    if (v21 == 1)
    {
      v27 = 0;
      v28 = 0;
      MutableCopy = 0;
      v26 = 4294949493;
      goto LABEL_57;
    }

    if (v21 == 18)
    {
      break;
    }

    v19 = FigCSSTokenWalkerReconsumeInputToken(v10);
    if (!v19)
    {
      v19 = _figCSSParser_consume_a_component_value(a1, v10, &v87, &v88);
      if (!v19)
      {
        v19 = FigCSSQualifiedRuleParserNodeCopyPrelude(v89, &theArray);
        if (!v19)
        {
          v22 = theArray;
          v23 = CFGetAllocator(a1);
          if (v22)
          {
            MutableCopy = CFArrayCreateMutableCopy(v23, 0, theArray);
          }

          else
          {
            MutableCopy = CFArrayCreateMutable(v23, 0, v16);
            if (!MutableCopy)
            {
              FigCSSParserProduceStyleSheet_cold_8(v109);
              v27 = 0;
              v28 = 0;
              v26 = LODWORD(v109[0]);
              goto LABEL_57;
            }
          }

          CFArrayAppendValue(MutableCopy, v88);
          v25 = FigCSSQualifiedRuleParserNodeSetPrelude(v89, MutableCopy);
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = 0;
            goto LABEL_57;
          }

          if (v88)
          {
            CFRelease(v88);
            v88 = 0;
          }

          if (v87)
          {
            CFRelease(v87);
            v87 = 0;
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }

          v109[0] = 0;
          LODWORD(v107) = 0;
          v19 = FigCSSTokenWalkerConsumeNextInputToken(v10, v109, &v107);
          v21 = v107;
          if (!v19)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_54;
  }

  if (v85)
  {
    CFRelease(v85);
    v85 = 0;
  }

  if (v86)
  {
    CFRelease(v86);
    v86 = 0;
  }

  v19 = _figCSSParser_consume_a_simple_block(a1, v10, &v85, &v86);
  if (v19 || (v19 = FigCSSQualifiedRuleParserNodeSetSimpleBlock(v89, v86), v19))
  {
LABEL_54:
    v26 = v19;
LABEL_55:
    v27 = 0;
    v28 = 0;
    MutableCopy = 0;
    goto LABEL_57;
  }

  v30 = v89;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  if (!v89)
  {
    FigCSSParserProduceStyleSheet_cold_7(v109);
LABEL_249:
    v26 = LODWORD(v109[0]);
    goto LABEL_232;
  }

  if (!v90)
  {
    FigCSSParserProduceStyleSheet_cold_6(v109);
    goto LABEL_249;
  }

  v77 = v90;
  v31 = FigCSSQualifiedRuleParserNodeCopyPrelude(v89, &v93);
  if (v31 || (v31 = FigCSSQualifiedRuleParserNodeCopySimpleBlock(v30, &v92), v31) || (v31 = _figCSSParser_util_serializeComponentValueNodeArray(a1, v93, &v91), v31))
  {
    v26 = v31;
    goto LABEL_232;
  }

  v32 = v92;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  if (!v92)
  {
    FigCSSParserProduceStyleSheet_cold_5(v109);
    v69 = 0;
    v40 = 0;
    v26 = LODWORD(v109[0]);
    goto LABEL_204;
  }

  v33 = CFGetAllocator(a1);
  v34 = FigCSSStyleDeclarationCreate(v33, &v102);
  if (v34 || (v34 = FigCSSSimpleBlockParserNodeCopyAssociatedToken(v32, &v100), v34) || (v34 = FigCSSSimpleBlockParserNodeCopyValue(v32, &v98), v34) || (v34 = _figCSSParser_util_convertComponentValueArrayToTokenArray(a1, v98, &v97), v34) || (v35 = CFGetAllocator(a1), v34 = FigCSSTokenWalkerCreate(v35, v97, &v94), v34))
  {
    v26 = v34;
    v69 = 0;
    v32 = 0;
    v40 = 0;
    goto LABEL_204;
  }

  v36 = v94;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v37 = CFGetAllocator(a1);
  v38 = CFArrayCreateMutable(v37, 0, v16);
  if (!v38)
  {
    FigCSSParserProduceStyleSheet_cold_4(v109);
    v32 = 0;
    v40 = 0;
    goto LABEL_253;
  }

  v39 = CFGetAllocator(a1);
  v40 = CFArrayCreateMutable(v39, 0, v16);
  if (!v40)
  {
    FigCSSParserProduceStyleSheet_cold_3(v109);
    v32 = 0;
LABEL_253:
    v62 = 0;
    v78 = 0;
    v44 = 0;
LABEL_243:
    v26 = LODWORD(v109[0]);
    goto LABEL_169;
  }

  v109[0] = 0;
  LODWORD(v107) = 0;
  v41 = FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
  v78 = v40;
  if (v41)
  {
    goto LABEL_168;
  }

  v42 = v107;
  while (2)
  {
    if (v42 <= 7)
    {
      if (v42 != 2)
      {
        if (v42 != 7)
        {
          if (v42 != 1)
          {
            goto LABEL_162;
          }

          v62 = 0;
          v26 = 0;
          v44 = 0;
          v32 = v38;
          v38 = 0;
          v78 = 0;
          goto LABEL_169;
        }

        v43 = CFGetAllocator(a1);
        v44 = CFArrayCreateMutable(v43, 0, v16);
        if (!v44)
        {
          FigCSSParserProduceStyleSheet_cold_2(v109);
          v32 = 0;
          v40 = 0;
          v62 = 0;
          goto LABEL_243;
        }

        v109[0] = 0;
        LODWORD(v107) = 0;
        CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(v36, v109, &v107);
        if (CurrentInputToken)
        {
          goto LABEL_166;
        }

        CFArrayAppendValue(v44, v109[0]);
        v109[0] = 0;
        LODWORD(v107) = 0;
        CurrentInputToken = FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
        if (CurrentInputToken)
        {
          goto LABEL_166;
        }

        v46 = v109[0];
        v47 = v107;
        while (v47 != 1 && v47 != 14)
        {
          CFArrayAppendValue(v44, v46);
          v109[0] = 0;
          LODWORD(v107) = 0;
          CurrentInputToken = FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
          v46 = v109[0];
          v47 = v107;
          if (CurrentInputToken)
          {
            goto LABEL_166;
          }
        }

        v48 = CFGetAllocator(a1);
        CurrentInputToken = FigCSSTokenWalkerCreate(v48, v44, &v103);
        if (CurrentInputToken || (CurrentInputToken = FigCSSTokenWalkerConsumeNextInputToken(v103, 0, 0), CurrentInputToken))
        {
LABEL_166:
          v26 = CurrentInputToken;
          v32 = 0;
          v40 = 0;
          v62 = 0;
          goto LABEL_169;
        }

        v49 = v103;
        v106 = 0;
        v107 = 0;
        v50 = CFGetAllocator(a1);
        v51 = FigCSSDeclarationParserNodeCreate(v50, &v107);
        if (v51 || (v109[0] = 0, v108 = 0, v51 = FigCSSTokenWalkerGetCurrentInputToken(v49, v109, &v108), v51) || (v51 = FigCSSDeclarationParserNodeSetName(v107, v109[0]), v51))
        {
          v26 = v51;
          v53 = 0;
          goto LABEL_142;
        }

        v52 = CFGetAllocator(a1);
        v53 = CFArrayCreateMutable(v52, 0, v16);
        if (!v53)
        {
          FigCSSParserProduceStyleSheet_cold_1(v109);
          v26 = LODWORD(v109[0]);
          goto LABEL_142;
        }

        v54 = FigCSSDeclarationParserNodeSetValue(v107, v53);
        if (v54)
        {
          goto LABEL_129;
        }

        v109[0] = 0;
        v108 = 0;
        v54 = FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
        if (v54)
        {
          goto LABEL_129;
        }

        v55 = v108;
        while (v55 == 2)
        {
          v109[0] = 0;
          v108 = 0;
          v54 = FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
          v55 = v108;
          if (v54)
          {
            goto LABEL_129;
          }
        }

        if (v55 != 13)
        {
          v26 = 4294949493;
          goto LABEL_142;
        }

        v109[0] = 0;
        v108 = 0;
        v54 = FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
        if (v54)
        {
LABEL_129:
          v26 = v54;
          goto LABEL_142;
        }

        v56 = v38;
        v57 = Mutable;
        if (v108 == 1)
        {
LABEL_140:
          v26 = 0;
          v62 = v107;
          v107 = 0;
          Mutable = v57;
          v38 = v56;
          v16 = MEMORY[0x1E695E9C0];
        }

        else
        {
          v58 = v109[0];
          while (1)
          {
            v59 = CFGetAllocator(a1);
            v60 = FigCSSComponentValueParserNodeCreate(v59, &v106);
            if (v60)
            {
              break;
            }

            v60 = FigCSSComponentValueParserNodeSetPreservedToken(v106, v58);
            if (v60)
            {
              break;
            }

            CFArrayAppendValue(v53, v106);
            v109[0] = 0;
            v108 = 0;
            v60 = FigCSSTokenWalkerConsumeNextInputToken(v49, v109, &v108);
            if (v60)
            {
              break;
            }

            v58 = v109[0];
            v61 = v108;
            if (v106)
            {
              CFRelease(v106);
              v106 = 0;
            }

            if (v61 == 1)
            {
              goto LABEL_140;
            }
          }

          v26 = v60;
          Mutable = v57;
          v38 = v56;
          v16 = MEMORY[0x1E695E9C0];
LABEL_142:
          if (v107)
          {
            CFRelease(v107);
          }

          v62 = 0;
        }

        if (v106)
        {
          CFRelease(v106);
        }

        if (v53)
        {
          CFRelease(v53);
        }

        if (v26)
        {
          v32 = 0;
          v40 = 0;
          goto LABEL_169;
        }

        v40 = v78;
        if (v62)
        {
          CFArrayAppendValue(v78, v62);
          CFRelease(v62);
        }

        if (v103)
        {
          CFRelease(v103);
          v103 = 0;
        }

        CFRelease(v44);
      }

LABEL_155:
      v109[0] = 0;
      LODWORD(v107) = 0;
      v41 = FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
      v42 = v107;
      if (v41)
      {
        goto LABEL_168;
      }

      continue;
    }

    break;
  }

  if (v42 == 8)
  {
    v41 = _figCSSParser_consume_an_at_rule(a1, v36, &v105, &v104);
    if (v41)
    {
      goto LABEL_168;
    }

    CFArrayAppendValue(v38, v105);
    CFArrayAppendValue(v40, v104);
    goto LABEL_155;
  }

  if (v42 == 14)
  {
    goto LABEL_155;
  }

LABEL_162:
  while (1)
  {
    v109[0] = 0;
    LODWORD(v107) = 0;
    v41 = FigCSSTokenWalkerConsumeNextInputToken(v36, v109, &v107);
    if (v41)
    {
      break;
    }

    if ((v107 - 3) >= 0xFFFFFFFE)
    {
      v32 = 0;
      v40 = 0;
      v62 = 0;
      v44 = 0;
      v26 = 4294949493;
      goto LABEL_169;
    }
  }

LABEL_168:
  v26 = v41;
  v32 = 0;
  v40 = 0;
  v62 = 0;
  v44 = 0;
LABEL_169:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v62)
  {
    CFRelease(v62);
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (!v26)
  {
    v63 = 0;
    if (v40)
    {
LABEL_185:
      Count = CFArrayGetCount(v40);
      goto LABEL_187;
    }

    while (1)
    {
      Count = 0;
LABEL_187:
      if (v63 >= Count)
      {
        v26 = 0;
        v69 = v102;
        v102 = 0;
        goto LABEL_204;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v40, v63);
      SerializationString = FigCSSDeclarationParserNodeCopyName(ValueAtIndex, &v101);
      if (SerializationString)
      {
        break;
      }

      SerializationString = FigCSSDeclarationParserNodeCopyValue(ValueAtIndex, &v99);
      if (SerializationString)
      {
        break;
      }

      v67 = v101;
      v68 = CFGetAllocator(a1);
      SerializationString = FigCSSTokenCreateSerializationString(v68, v67, &v95);
      if (SerializationString)
      {
        break;
      }

      SerializationString = _figCSSParser_util_serializeComponentValueNodeArray(a1, v99, &v96);
      if (SerializationString)
      {
        break;
      }

      SerializationString = FigCSSStyleDeclarationSetPropertyInfo(v102, v95, v96, 0);
      if (SerializationString)
      {
        break;
      }

      if (v96)
      {
        CFRelease(v96);
        v96 = 0;
      }

      if (v99)
      {
        CFRelease(v99);
        v99 = 0;
      }

      if (v95)
      {
        CFRelease(v95);
        v95 = 0;
      }

      if (v101)
      {
        CFRelease(v101);
        v101 = 0;
      }

      ++v63;
      if (v40)
      {
        goto LABEL_185;
      }
    }

    v26 = SerializationString;
  }

  v69 = 0;
LABEL_204:
  if (v96)
  {
    CFRelease(v96);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (!v26)
  {
    v70 = FigCSSStyleRuleSetSelector(v77, v91);
    if (!v70)
    {
      v70 = FigCSSStyleRuleSetDeclaration(v77, v69);
    }

    v26 = v70;
  }

  if (v69)
  {
    CFRelease(v69);
  }

LABEL_232:
  if (v91)
  {
    CFRelease(v91);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v26)
  {
    goto LABEL_55;
  }

  MutableCopy = 0;
  v28 = v89;
  v27 = v90;
  v89 = 0;
  v90 = 0;
LABEL_57:
  if (v85)
  {
    CFRelease(v85);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v26)
  {
    goto LABEL_281;
  }

  if (!v27)
  {
LABEL_77:
    if (v28)
    {
      CFArrayAppendValue(Mutable, v28);
      CFRelease(v28);
    }

    goto LABEL_79;
  }

  v29 = FigCSSRuleListAppendRule(v83, v27);
  if (!v29)
  {
    CFRelease(v27);
    goto LABEL_77;
  }

  v26 = v29;
LABEL_281:
  v2 = v76;
LABEL_282:
  if (v83)
  {
    CFRelease(v83);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    v71 = 0;
    Mutable = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_255:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (!v26)
  {
    v26 = FigCSSStyleSheetSetRuleList(v80, v71);
    if (!v26)
    {
      *(a1 + 72) = v80;
      v80 = 0;
      goto LABEL_266;
    }
  }

LABEL_290:
  if (v80)
  {
    CFRelease(v80);
  }

LABEL_266:
  if (v71)
  {
    CFRelease(v71);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v26)
  {
LABEL_298:
    *(a1 + 32) = 2;
    return v26;
  }

  if (*(a1 + 81))
  {
    v72 = CFGetAllocator(a1);
    v73 = CFStringCreateWithFormat(v72, 0, @"parser produced styleSheet: %@", *(a1 + 72));
    if (v73)
    {
      CFRelease(v73);
    }
  }

LABEL_276:
  *(a1 + 32) = 1;
  v74 = *(a1 + 72);
  if (v74)
  {
    v74 = CFRetain(v74);
  }

  v26 = 0;
  *v2 = v74;
  return v26;
}

double figCSSParser_reset(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *(a1 + 48) = xmmword_196E732D0;
  return result;
}

double figCSSParser_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figCSSParser_Finalize(uint64_t a1)
{
  figCSSParser_reset(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

uint64_t _figCSSParser_consume_an_at_rule(const void *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v17 = 0;
  cf = 0;
  value = 0;
  if (!a1)
  {
    _figCSSParser_consume_an_at_rule_cold_4(&v20);
LABEL_35:
    v14 = v20;
    goto LABEL_19;
  }

  if (!a3)
  {
    _figCSSParser_consume_an_at_rule_cold_3(&v20);
    goto LABEL_35;
  }

  if (!a4)
  {
    _figCSSParser_consume_an_at_rule_cold_2(&v20);
    goto LABEL_35;
  }

  v8 = CFGetAllocator(a1);
  v20 = 0;
  v19 = 0;
  CurrentInputToken = FigCSSTokenWalkerGetCurrentInputToken(a2, &v20, &v19);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v10 = v20;
  CurrentInputToken = FigCSSAtRuleParserNodeCreate(v8, &cf);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  CurrentInputToken = FigCSSAtRuleParserNodeSetName(cf, v10);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v11 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _figCSSParser_consume_an_at_rule_cold_1(&v20);
    goto LABEL_35;
  }

  v13 = Mutable;
  CurrentInputToken = FigCSSAtRuleParserNodeSetPrelude(cf, Mutable);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  CurrentInputToken = FigCSSAtRuleParserNodeSetSimpleBlock(cf, 0);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v20 = 0;
  v19 = 0;
  CurrentInputToken = FigCSSTokenWalkerConsumeNextInputToken(a2, &v20, &v19);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  if (v19 == 1 || v19 == 14)
  {
    v14 = 0;
    *a3 = 0;
    goto LABEL_19;
  }

  if (v19 != 18)
  {
    CurrentInputToken = FigCSSTokenWalkerReconsumeInputToken(a2);
    if (!CurrentInputToken)
    {
      CurrentInputToken = _figCSSParser_consume_a_component_value(a1, a2, 0, &value);
      if (!CurrentInputToken)
      {
        CFArrayAppendValue(v13, value);
        if (value)
        {
          CFRelease(value);
          v14 = 0;
          value = 0;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_19;
      }
    }

LABEL_30:
    v14 = CurrentInputToken;
    goto LABEL_19;
  }

  v20 = 0;
  CurrentInputToken = _figCSSParser_consume_a_simple_block(a1, a2, &v20, &v17);
  if (CurrentInputToken)
  {
    goto LABEL_30;
  }

  v14 = FigCSSAtRuleParserNodeSetSimpleBlock(cf, v17);
  if (!v14)
  {
    *a4 = cf;
    cf = 0;
    goto LABEL_21;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_21:
  if (v17)
  {
    CFRelease(v17);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v14;
}

uint64_t _figCSSParser_util_serializeComponentValueNodeArray(const void *a1, const __CFArray *a2, __CFString **a3)
{
  if (!a1)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_5(&cf);
    return cf;
  }

  if (!a2)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_4(&cf);
    return cf;
  }

  if (!a3)
  {
    _figCSSParser_util_serializeComponentValueNodeArray_cold_3(&cf);
    return cf;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v6, 0);
  if (CFArrayGetCount(a2) < 1)
  {
    v9 = 0;
LABEL_72:
    v18 = 0;
    *a3 = Mutable;
    goto LABEL_73;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    if (!ValueAtIndex)
    {
      break;
    }

    v11 = ValueAtIndex;
    v12 = CFGetTypeID(ValueAtIndex);
    if (v12 != FigCSSParserNodeGetTypeID())
    {
      break;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v42 = 0;
    v40 = 0;
    cf = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    appendedString = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v13 = CFGetTypeID(v11);
    if (v13 != FigCSSParserNodeGetTypeID())
    {
      _figCSSParser_util_serializeComponentValueNodeArray_cold_1(&v43);
      v29 = 0;
      v9 = 0;
      v18 = v43;
      goto LABEL_39;
    }

    v14 = CFGetAllocator(a1);
    v9 = CFStringCreateMutable(v14, 0);
    v42 = 0;
    Type = FigCSSComponentValueParserNodeGetType(v11, &v42);
    if (Type)
    {
LABEL_68:
      v18 = Type;
LABEL_69:
      v29 = 0;
      goto LABEL_39;
    }

    switch(v42)
    {
      case 3:
        v43 = 0;
        Type = FigCSSComponentValueParserNodeCopySimpleBlock(v11, &v35);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSSimpleBlockParserNodeCopyAssociatedToken(v35, &v39);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSTokenGetTokenType(v39, &v43);
        if (Type)
        {
          goto LABEL_68;
        }

        v23 = v43 - 16 > 4 ? 0 : dword_196E76448[v43 - 16];
        v24 = CFGetAllocator(a1);
        FigCSSSimpleTokenCreate(v24, v23, &v38);
        Type = FigCSSSimpleBlockParserNodeCopyValue(v35, &v37);
        if (Type)
        {
          goto LABEL_68;
        }

        v25 = v39;
        v26 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v26, v25, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = _figCSSParser_util_serializeComponentValueNodeArray(a1, v37, &v33);
        if (Type)
        {
          goto LABEL_68;
        }

        v27 = v38;
        v28 = CFGetAllocator(a1);
        v18 = FigCSSTokenCreateSerializationString(v28, v27, &v32);
        if (v18)
        {
          goto LABEL_69;
        }

        CFStringAppend(v9, appendedString);
        CFStringAppend(v9, v33);
        v22 = v32;
        v21 = v9;
        goto LABEL_37;
      case 2:
        Type = FigCSSComponentValueParserNodeCopyFunctionNode(v11, &v36);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSFunctionParserNodeCopyName(v36, &v40);
        if (Type)
        {
          goto LABEL_68;
        }

        Type = FigCSSFunctionParserNodeCopyValue(v36, &v37);
        if (Type)
        {
          goto LABEL_68;
        }

        v19 = v40;
        v20 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v20, v19, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        v18 = _figCSSParser_util_serializeComponentValueNodeArray(a1, v37, &v33);
        if (v18)
        {
          goto LABEL_69;
        }

        CFStringAppend(v9, appendedString);
        CFStringAppend(v9, v33);
        v21 = v9;
        v22 = @"");
LABEL_37:
        CFStringAppend(v21, v22);
        goto LABEL_38;
      case 1:
        Type = FigCSSComponentValueParserNodeCopyPreservedToken(v11, &cf);
        if (Type)
        {
          goto LABEL_68;
        }

        v16 = cf;
        v17 = CFGetAllocator(a1);
        Type = FigCSSTokenCreateSerializationString(v17, v16, &appendedString);
        if (Type)
        {
          goto LABEL_68;
        }

        if (!appendedString)
        {
          v30 = 0;
          v18 = 0;
          goto LABEL_42;
        }

        CFStringAppend(v9, appendedString);
        break;
    }

    v18 = 0;
LABEL_38:
    v29 = v9;
    v9 = 0;
LABEL_39:
    if (appendedString)
    {
      CFRelease(appendedString);
    }

    v30 = v9;
    v9 = v29;
LABEL_42:
    if (v33)
    {
      CFRelease(v33);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v18)
    {
      goto LABEL_77;
    }

    if (v9)
    {
      CFStringAppend(Mutable, v9);
    }

    if (++v8 >= CFArrayGetCount(a2))
    {
      goto LABEL_72;
    }
  }

  _figCSSParser_util_serializeComponentValueNodeArray_cold_2(&cf);
  v18 = cf;
LABEL_77:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_73:
  if (v9)
  {
    CFRelease(v9);
  }

  return v18;
}

uint64_t _figCSSParser_util_convertComponentValueArrayToTokenArray(const void *a1, const __CFArray *a2, __CFArray **a3)
{
  v21 = 0;
  value = 0;
  cf = 0;
  v20 = 0;
  theArray = 0;
  v18 = 0;
  if (!a1)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_5(&v23);
LABEL_58:
    Mutable = 0;
LABEL_54:
    v12 = v23;
    goto LABEL_37;
  }

  if (!a2)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_4(&v23);
    goto LABEL_58;
  }

  if (!a3)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_3(&v23);
    goto LABEL_58;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_2(&v23);
    goto LABEL_54;
  }

  if (CFArrayGetCount(a2) >= 1)
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v16 = 0;
      NodeType = FigCSSParserNodeGetNodeType(ValueAtIndex, &v16 + 1);
      if (NodeType)
      {
LABEL_52:
        v12 = NodeType;
        goto LABEL_37;
      }

      if (HIDWORD(v16) != 4)
      {
        _figCSSParser_util_convertComponentValueArrayToTokenArray_cold_1(&v23);
        goto LABEL_54;
      }

      Type = FigCSSComponentValueParserNodeGetType(ValueAtIndex, &v16);
      if (v16 == 2)
      {
        NodeType = FigCSSComponentValueParserNodeCopyFunctionNode(ValueAtIndex, &v20);
        if (NodeType)
        {
          goto LABEL_52;
        }

        NodeType = FigCSSFunctionParserNodeCopyName(v20, &cf);
        if (NodeType)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, cf);
        NodeType = FigCSSFunctionParserNodeCopyValue(v20, &v18);
        if (NodeType)
        {
          goto LABEL_52;
        }

        NodeType = _figCSSParser_util_convertComponentValueArrayToTokenArray(a1, v18, &theArray);
        if (NodeType)
        {
          goto LABEL_52;
        }

        v13 = theArray;
        if (theArray)
        {
          v24.length = CFArrayGetCount(theArray);
          v24.location = 0;
          CFArrayAppendArray(Mutable, v13, v24);
        }

        v14 = CFGetAllocator(a1);
        NodeType = FigCSSSimpleTokenCreate(v14, 17, &v21);
        if (NodeType)
        {
          goto LABEL_52;
        }

        CFArrayAppendValue(Mutable, v21);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v21)
        {
          CFRelease(v21);
          v21 = 0;
        }

        if (v20)
        {
          CFRelease(v20);
          v20 = 0;
        }

        if (v18)
        {
          CFRelease(v18);
          v18 = 0;
        }

        if (!theArray)
        {
LABEL_32:
          v12 = 0;
          goto LABEL_33;
        }

        CFRelease(theArray);
        v12 = 0;
        theArray = 0;
      }

      else
      {
        v12 = Type;
        if (v16 == 1)
        {
          NodeType = FigCSSComponentValueParserNodeCopyPreservedToken(ValueAtIndex, &value);
          if (NodeType)
          {
            goto LABEL_52;
          }

          if (!value)
          {
            goto LABEL_32;
          }

          CFArrayAppendValue(Mutable, value);
          if (!value)
          {
            goto LABEL_32;
          }

          CFRelease(value);
          v12 = 0;
          value = 0;
        }
      }

LABEL_33:
      if (++v8 >= CFArrayGetCount(a2))
      {
        goto LABEL_36;
      }
    }
  }

  v12 = 0;
LABEL_36:
  *a3 = Mutable;
  Mutable = 0;
LABEL_37:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v21)
  {
    CFRelease(v21);
    v21 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v12;
}

uint64_t FigVideoRenderPipelineCreateWithFigImageQueueArray(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, int a5, CFArrayRef theArray, const __CFArray *a7, const __CFDictionary *a8, void *a9)
{
  v117 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v100 = 0;
  cf = 0;
  v98 = 0;
  v99 = 0;
  value = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a9 && Count > 0)
  {
    v116.value = 0;
    FigRenderPipelineGetClassID();
    v13 = CMDerivedObjectCreate();
    if (v13)
    {
      value_low = v13;
      v40 = 0;
      v32 = 0;
    }

    else
    {
      v14 = v116.value;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 144) = 1;
      v16 = FigSimpleMutexCreate();
      *(DerivedStorage + 80) = v16;
      if (v16)
      {
        *(DerivedStorage + 208) = 0;
        if (a8 && CFDictionaryGetValueIfPresent(a8, @"LoggingID", &value))
        {
          CFStringGetCString(value, (DerivedStorage + 208), 32, 0x600u);
        }

        *(DerivedStorage + 88) = 1;
        if (a7)
        {
          v17 = *MEMORY[0x1E695E480];
          MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a7);
          goto LABEL_20;
        }

        Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          MutableCopy = Mutable;
          v21 = *MEMORY[0x1E695E738];
          do
          {
            CFArrayAppendValue(MutableCopy, v21);
            --Count;
          }

          while (Count);
          v17 = *MEMORY[0x1E695E480];
LABEL_20:
          allocator = v17;
          Copy = CFArrayCreateCopy(v17, theArray);
          *(DerivedStorage + 56) = Copy;
          if (!Copy)
          {
            FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_8(&v116);
            v40 = 0;
            v24 = 0;
            v32 = 0;
            value_low = LODWORD(v116.value);
            goto LABEL_138;
          }

          if (MutableCopy)
          {
            v23 = CFRetain(MutableCopy);
          }

          else
          {
            v23 = 0;
          }

          *(DerivedStorage + 64) = v23;
          if (value)
          {
            v24 = CFDictionaryCreateMutable(v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            FigCFDictionarySetValue();
          }

          else
          {
            v24 = 0;
          }

          v25 = figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(v14, &v100, &v99, &v98);
          if (v25)
          {
            value_low = v25;
            v40 = 0;
            v32 = 0;
            goto LABEL_138;
          }

          theArrayb = v24;
          v85 = MutableCopy;
          v26 = v98;
          v80 = DerivedStorage + 208;
          if (v98)
          {
            v27 = CFArrayGetCount(v98);
          }

          else
          {
            v27 = 0;
          }

          v28 = v100;
          if (v100)
          {
            v29 = CFArrayGetCount(v100);
          }

          else
          {
            v29 = 0;
          }

          if (v27 == v29)
          {
            v30 = v99;
            if (v99)
            {
              v31 = CFArrayGetCount(v99);
            }

            else
            {
              v31 = 0;
            }

            if (v27 == v31)
            {
              v87 = DerivedStorage;
              v32 = CFArrayCreateMutable(a1, v27, MEMORY[0x1E695E9C0]);
              if (v32)
              {
                if (v27 >= 1)
                {
                  v33 = 0;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v28, v33);
                    v35 = CFArrayGetValueAtIndex(v30, v33);
                    v36 = FigImageQueueCreateForCacheAndFanOutWithOptions(a1, ValueAtIndex, v35, theArrayb, &cf);
                    if (v36)
                    {
                      break;
                    }

                    CFArrayAppendValue(v32, cf);
                    if (cf)
                    {
                      CFRelease(cf);
                      cf = 0;
                    }

                    if (v27 == ++v33)
                    {
                      goto LABEL_46;
                    }
                  }

                  value_low = v36;
                  v40 = 0;
                  goto LABEL_157;
                }

LABEL_46:
                v87[5] = v32;
                v87[6] = v26;
                v98 = 0;
                v94 = 0u;
                v95 = 0u;
                v96 = 0;
                v37 = MEMORY[0x1E695E4D0];
                if (a8)
                {
                  v38 = a3;
                  v39 = allocator;
                  if (CFDictionaryGetValue(a8, @"ShouldRotateAndScale") == *v37)
                  {
                    v41 = FigTransformUtilityCreate(a1, a3);
                    v87[17] = v41;
                    *&v94 = 0;
                    *(&v94 + 1) = CFRetain(v41);
                    v40 = &v94;
                    *(&v95 + 1) = FigTransformUtilityRelease;
                    v96 = FigTransformUtilityGenerateReplacementImageBufferAsync;
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else
                {
                  v40 = 0;
                  v38 = a3;
                  v39 = allocator;
                }

                memset(&v116, 0, sizeof(v116));
                CMTimeMake(&v116, 3, 30);
                memset(&v110, 0, sizeof(v110));
                CMTimeMake(&v110, 5, 30);
                v109 = 0;
                v42 = CMBaseObjectGetDerivedStorage();
                v107 = 0;
                v108 = 0;
                v106 = 0;
                v105 = 0;
                v104 = 0;
                if (a8)
                {
                  v84 = CFDictionaryGetValue(a8, @"FormatDescription");
                  FigCFDictionaryGetCMTimeIfPresent();
                  FigCFDictionaryGetCMTimeIfPresent();
                  v43 = CFDictionaryGetValue(a8, @"SharePixelBufferPool");
                  v82 = CFDictionaryGetValue(a8, @"AllowClientProcessDecode");
                  v83 = CFDictionaryGetValue(a8, @"LoggingID");
                  FigCFDictionaryGetBooleanIfPresent();
                  if (FigCFDictionaryGetBooleanIfPresent())
                  {
                    HIBYTE(v109) = v109 == 0;
                  }

                  FigCFDictionaryGetBooleanIfPresent();
                  FigCFDictionaryGetBooleanIfPresent();
                  FigCFDictionaryGetBooleanIfPresent();
                  FigCFDictionaryGetInt32IfPresent();
                  v81 = FigCFDictionaryGetValue();
                  FigCFDictionaryGetBooleanIfPresent();
                  FigCFDictionaryGetBooleanIfPresent();
                  FigCFDictionaryGetBooleanIfPresent();
                }

                else
                {
                  v81 = 0;
                  v82 = 0;
                  v43 = 0;
                  v83 = 0;
                  v84 = 0;
                }

                v44 = *(v42 + 40);
                if (v44)
                {
                  v86 = CFRetain(v44);
                }

                else
                {
                  v86 = 0;
                }

                v45 = *(v42 + 48);
                if (v45)
                {
                  v46 = CFRetain(v45);
                }

                else
                {
                  v46 = 0;
                }

                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.version = 1;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.refcon = 0;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDecodeTimeStamp = vsbufGetDecodeTimeStamp;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getPresentationTimeStamp = vsbufGetPresentationTimeStamp;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDuration = vsbufGetDuration;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.isDataReady = vsbufDataIsReady;
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.compare = 0;
                v47 = *MEMORY[0x1E6960600];
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.dataBecameReadyNotification = *MEMORY[0x1E6960600];
                gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getSize = vsbufGetSampleSize;
                Asynchronous = CMBufferQueueCreate(v39, 0, &gFigBufferQueueCallbacksThatIgnoreCatchupFrames, (v42 + 8));
                if (Asynchronous || HIBYTE(v104) && ((gFigBufferQueueCallbacksThatIgnoreCatchupFrames.version = 1, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.refcon = 0, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDecodeTimeStamp = vsbufGetDecodeTimeStamp, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getPresentationTimeStamp = vsbufGetPresentationTimeStamp, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getDuration = vsbufGetDuration, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.isDataReady = vsbufDataIsReady, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.compare = 0, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.dataBecameReadyNotification = v47, gFigBufferQueueCallbacksThatIgnoreCatchupFrames.getSize = vsbufGetSampleSize, Asynchronous = CMBufferQueueCreate(v39, 0, &gFigBufferQueueCallbacksThatIgnoreCatchupFrames, (v42 + 24)), Asynchronous) || (v49 = *(v42 + 8), v50 = *(v42 + 24), v103 = v110, type = v116, Asynchronous = FigSampleAttachmentCollectorCreateAsynchronous(v39, 0, v49, 0, v50, &v103, &type, 0, (v42 + 32)), Asynchronous)))
                {
                  value_low = Asynchronous;
                  v61 = 0;
                  goto LABEL_176;
                }

                *(v42 + 112) = v38;
                if (v38)
                {
                  CFRetain(v38);
                }

                *(v42 + 120) = a4;
                if (a4)
                {
                  CFRetain(a4);
                }

                figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(v14, &v108);
                for (i = 0; ; ++i)
                {
                  v52 = *(v42 + 40);
                  if (v52)
                  {
                    v52 = CFArrayGetCount(v52);
                  }

                  if (i >= v52)
                  {
                    break;
                  }

                  CFArrayGetValueAtIndex(*(v42 + 40), i);
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListeners();
                }

                v53 = dispatch_queue_create("com.apple.coremedia.svrp.notificationQueue", 0);
                *(v42 + 200) = v53;
                if (v53)
                {
                  v54 = FigSimpleMutexCreate();
                  *(v42 + 160) = v54;
                  if (v54)
                  {
                    v55 = CFGetAllocator(v14);
                    v56 = CFArrayCreateMutable(v55, 0, MEMORY[0x1E695E9C0]);
                    *(v42 + 192) = v56;
                    if (v56)
                    {
                      *(v42 + 168) = 0;
                      *(v42 + 184) = 0;
                      figVideoRenderPipelineCopyVideoImageQueueArray(v14, &v107, 0);
                      for (j = 0; ; ++j)
                      {
                        v58 = v107;
                        if (v107)
                        {
                          v58 = CFArrayGetCount(v107);
                        }

                        if (j >= v58)
                        {
                          break;
                        }

                        v59 = CFArrayGetValueAtIndex(v107, j);
                        CMNotificationCenterGetDefaultLocalCenter();
                        FigNotificationCenterAddWeakListeners();
                        if (!j)
                        {
                          videopipelineAddListenersToFirstImageQueue(v14, v59);
                        }
                      }

                      v60 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      v61 = v60;
                      if (v60)
                      {
                        if (v43)
                        {
                          CFDictionaryAddValue(v60, @"SharePixelBufferPool", v43);
                        }

                        v62 = MEMORY[0x1E695E4D0];
                        if (v82)
                        {
                          CFDictionaryAddValue(v61, @"AllowClientProcessDecode", v82);
                        }

                        if (HIBYTE(v109))
                        {
                          CFDictionarySetValue(v61, @"RealTime", *MEMORY[0x1E695E4C0]);
                        }

                        if (HIBYTE(v106))
                        {
                          CFDictionarySetValue(v61, @"MaximizePowerEfficiency", *v62);
                        }

                        if (v106)
                        {
                          CFDictionarySetValue(v61, @"InhibitPixelFormatConversion", *v62);
                        }

                        if (HIBYTE(v105))
                        {
                          CFDictionarySetValue(v61, @"InhibitCompressedBufferUse", *v62);
                        }

                        if (*(v42 + 4))
                        {
                          FigCFDictionarySetInt32();
                        }

                        if (v81)
                        {
                          CFDictionarySetValue(v61, @"ClientIdentityTokenHolder", v81);
                          FigCFDictionarySetBoolean();
                        }

                        if (v83)
                        {
                          CFDictionarySetValue(v61, @"LoggingIdentifier", v83);
                        }

                        if (v105)
                        {
                          CFDictionarySetValue(v61, @"DisableAsyncDecompression", *v62);
                        }

                        videopipelineUpdateVideoPlaybackStateForClient();
                        v63 = 24;
                        if (!HIBYTE(v104))
                        {
                          v63 = 8;
                        }

                        v64 = *(v42 + v63);
                        v65 = *(v42 + 112);
                        v66 = *(v42 + 120);
                        v67 = (v42 + 16);
                        v103 = v110;
                        type = v116;
                        v68 = VMC2CreateWithQueues2(allocator, v84, a2, v65, v66, v64, v40, v86, v46, &v103, &type, 0, 0, v61, (v42 + 16));
                        if (!v68)
                        {
                          started = FigStartForwardingMediaServicesProcessDeathNotification();
                          MutableCopy = v85;
                          if (started)
                          {
                            value_low = started;
                            v40 = 0;
                          }

                          else
                          {
                            if (v108)
                            {
                              VMC2SetProperty(*v67, @"DisplayLayerSize", v108);
                            }

                            CMNotificationCenterGetDefaultLocalCenter();
                            FigNotificationCenterAddWeakListeners();
                            videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(v14);
                            VMC2Go(*v67);
                            if (HIBYTE(v104))
                            {
                              v70 = *(v42 + 32);
                              v71 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v71)
                              {
                                v72 = v86;
                                v71(v70);
                                v40 = 0;
                                value_low = 0;
LABEL_117:
                                if (v108)
                                {
                                  CFRelease(v108);
                                }

                                if (v61)
                                {
                                  CFRelease(v61);
                                }

                                if (v72)
                                {
                                  CFRelease(v72);
                                }

                                if (v46)
                                {
                                  CFRelease(v46);
                                }

                                if (v107)
                                {
                                  CFRelease(v107);
                                }

                                if (!value_low)
                                {
                                  v74 = FigCFCopyCompactDescription();
                                  if (dword_1EAF16EF8)
                                  {
                                    LODWORD(v103.value) = 0;
                                    LOBYTE(type.value) = 0;
                                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                    v76 = v103.value;
                                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
                                    {
                                      v77 = v76;
                                    }

                                    else
                                    {
                                      v77 = v76 & 0xFFFFFFFE;
                                    }

                                    if (v77)
                                    {
                                      v78 = v87[2];
                                      LODWORD(v110.value) = 136316162;
                                      *(&v110.value + 4) = "FigVideoRenderPipelineCreateWithFigImageQueueArray";
                                      LOWORD(v110.flags) = 2048;
                                      *(&v110.flags + 2) = v14;
                                      HIWORD(v110.epoch) = 2082;
                                      v111 = v80;
                                      v112 = 2114;
                                      v113 = v78;
                                      v114 = 2114;
                                      v115 = v74;
                                      _os_log_send_and_compose_impl();
                                    }

                                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                                  }

                                  v24 = theArrayb;
                                  if (v74)
                                  {
                                    CFRelease(v74);
                                  }

                                  v32 = 0;
                                  value_low = 0;
                                  *a9 = v14;
                                  goto LABEL_138;
                                }

                                v32 = 0;
                                goto LABEL_158;
                              }
                            }

                            v40 = 0;
                            value_low = 0;
                          }

                          v72 = v86;
                          goto LABEL_117;
                        }

                        value_low = v68;
                        v40 = 0;
LABEL_176:
                        MutableCopy = v85;
                        v72 = v86;
                        goto LABEL_117;
                      }

                      FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_3(&v103);
LABEL_175:
                      value_low = LODWORD(v103.value);
                      goto LABEL_176;
                    }

                    FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_4(&v103);
                  }

                  else
                  {
                    FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_5(&v103);
                  }
                }

                else
                {
                  FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_6(&v103);
                }

                v61 = 0;
                goto LABEL_175;
              }

              FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_7(&v116);
              v40 = 0;
LABEL_168:
              value_low = LODWORD(v116.value);
LABEL_157:
              MutableCopy = v85;
LABEL_158:
              v24 = theArrayb;
LABEL_138:
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              goto LABEL_142;
            }

            FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_2(&v116);
          }

          else
          {
            FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_1(&v116);
          }

          v40 = 0;
          v32 = 0;
          goto LABEL_168;
        }

        FigVideoRenderPipelineCreateWithFigImageQueueArray_cold_9(&v116);
        v40 = 0;
        v32 = 0;
        value_low = LODWORD(v116.value);
      }

      else
      {
        v40 = 0;
        v32 = 0;
        value_low = 0;
      }
    }

LABEL_142:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v100)
    {
      CFRelease(v100);
    }

    if (v99)
    {
      CFRelease(v99);
    }

    if (v98)
    {
      CFRelease(v98);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v40)
    {
      v79 = *(v40 + 3);
      if (v79)
      {
        v79(*(v40 + 1));
      }
    }

    return value_low;
  }

  return FigSignalErrorAtGM();
}

uint64_t figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID(uint64_t a1, __CFArray **a2, const __CFArray **a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 56);
  if (!v8)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_12(&v62);
    return v62;
  }

  if (!*(DerivedStorage + 64))
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_11(&v62);
    return v62;
  }

  Count = CFArrayGetCount(v8);
  if (Count != CFArrayGetCount(*(DerivedStorage + 64)))
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_1(&v62);
    return v62;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_10(&v62);
    return v62;
  }

  v12 = Mutable;
  v13 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!v13)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_9(v12, &v62);
    return v62;
  }

  v14 = v13;
  v59 = v12;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  if (Count >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *MEMORY[0x1E695E738];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v15);
      if (ValueAtIndex == v18)
      {
        break;
      }

      if (!ValueAtIndex || (v20 = CFGetTypeID(ValueAtIndex), v36 = v20 == CFDictionaryGetTypeID(), v12 = v59, !v36))
      {
LABEL_32:
        v30 = FigSignalErrorAtGM();
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v31 = 0;
        goto LABEL_50;
      }

      v62 = 0;
      if (!FigCFDictionaryGetInt32IfPresent())
      {
        if (v17)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }

      if (v16)
      {
        goto LABEL_32;
      }

      FigCFArrayAppendInt32();
      if (!FigCFArrayContainsInt32())
      {
        FigCFArrayAppendInt32();
      }

      v16 = 0;
      v17 = 1;
LABEL_23:
      if (Count == ++v15)
      {
        goto LABEL_24;
      }
    }

    if (v17)
    {
      figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_2(&v62);
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      goto LABEL_67;
    }

LABEL_20:
    CFArrayAppendValue(v12, v18);
    if (!FigCFArrayContainsValue())
    {
      CFArrayAppendValue(v14, v18);
    }

    v17 = 0;
    v16 = 1;
    goto LABEL_23;
  }

LABEL_24:
  v60 = Count;
  v21 = MEMORY[0x1E695E9C0];
  v22 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  v52 = CFArrayCreateMutable(v10, 0, v21);
  v23 = CFArrayCreateMutable(v10, 0, v21);
  v53 = v23;
  if (!v22 || !v52 || !v23)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_8(&v62);
    goto LABEL_77;
  }

  v24 = CFArrayGetCount(v14);
  v61 = v53;
  if (v24 != 1)
  {
    v32 = v24;
    theArray = v22;
    if (v24 < 1)
    {
LABEL_43:
      v12 = v59;
      v22 = theArray;
      if (v60 < 1)
      {
        goto LABEL_49;
      }

      v41 = 0;
      while (1)
      {
        v42 = CFArrayGetValueAtIndex(*(DerivedStorage + 56), v41);
        v43 = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v41);
        v44 = CFArrayGetValueAtIndex(v59, v41);
        v63.location = 0;
        v63.length = v32;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v63, v44);
        if (FirstIndexOfValue == -1)
        {
          break;
        }

        v46 = FirstIndexOfValue;
        v47 = CFArrayGetValueAtIndex(theArray, FirstIndexOfValue);
        CFArrayAppendValue(v47, v42);
        v48 = CFArrayGetValueAtIndex(v52, v46);
        CFArrayAppendValue(v48, v43);
        if (v60 == ++v41)
        {
          goto LABEL_49;
        }
      }

      figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_3(&v62);
      v54 = 0;
      v51 = theArray;
      v31 = 0;
      v30 = v62;
    }

    else
    {
      v33 = 0;
      v34 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v54 = CFArrayCreateMutable(v10, 0, v34);
        v35 = CFArrayCreateMutable(v10, 0, v34);
        v31 = v35;
        if (v54)
        {
          v36 = v35 == 0;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_6(&v62);
          goto LABEL_65;
        }

        CFArrayAppendValue(theArray, v54);
        CFArrayAppendValue(v52, v31);
        CFRelease(v54);
        CFRelease(v31);
        v37 = CFArrayGetValueAtIndex(v14, v33);
        if (!v37 || (v38 = v37, v39 = CFGetTypeID(v37), v39 != CFNumberGetTypeID()))
        {
          figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_5(&v62);
          v54 = 0;
          v31 = 0;
          goto LABEL_65;
        }

        v40 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v31 = v40;
        if (!v40)
        {
          break;
        }

        CFDictionarySetValue(v40, @"DemuxLayerID", v38);
        CFArrayAppendValue(v53, v31);
        CFRelease(v31);
        if (v32 == ++v33)
        {
          goto LABEL_43;
        }
      }

      figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_4(&v62);
      v54 = 0;
LABEL_65:
      v30 = v62;
      v51 = theArray;
      v12 = v59;
    }

    v53 = v61;
    goto LABEL_50;
  }

  CFArrayAppendValue(v22, *(DerivedStorage + 56));
  CFArrayAppendValue(v52, *(DerivedStorage + 64));
  v25 = CFArrayGetValueAtIndex(v14, 0);
  if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFNumberGetTypeID()))
  {
    CFArrayAppendValue(v53, *MEMORY[0x1E695E738]);
    goto LABEL_49;
  }

  v28 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v28)
  {
    figVideoRenderPipelineCopyFigImageQueueAndOptionsArrayGroupedByVideoLayerID_cold_7(&v62);
LABEL_77:
    v54 = 0;
    v51 = v22;
LABEL_67:
    v31 = 0;
    v30 = v62;
    goto LABEL_50;
  }

  v29 = v28;
  CFDictionarySetValue(v28, @"DemuxLayerID", v26);
  CFArrayAppendValue(v53, v29);
  CFRelease(v29);
LABEL_49:
  v30 = 0;
  v54 = 0;
  v49 = v22;
  v31 = 0;
  *v55 = v49;
  *v56 = v52;
  *v57 = v61;
  v51 = 0;
  v52 = 0;
  v53 = 0;
LABEL_50:
  CFRelease(v12);
  CFRelease(v14);
  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return v30;
}

__CFString *figVideoRenderPipelineCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoRenderPipeline %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"videoCompressedFrameQueue %@, videoMediaConverter %@, videoImageQueueArray %@, videoImageQueueOptionsArray %@, destinationPixelBufferAttributes %@, pixelTransferProperties %@, timebase %@", DerivedStorage[1], DerivedStorage[2], DerivedStorage[7], DerivedStorage[8], DerivedStorage[14], DerivedStorage[15], DerivedStorage[16]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t figVideoRenderPipelineCopyVideoImageQueueArray(uint64_t a1, void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v6 = *(DerivedStorage + 56);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *a2 = v6;
  }

  if (a3)
  {
    v7 = *(DerivedStorage + 64);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *a3 = v7;
  }

  return FigSimpleMutexUnlock();
}

void videopipelineRemoveListenersOnFirstImageQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    v1 = DerivedStorage;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v2 = *(v1 + 72);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 72) = 0;
    }
  }
}

uint64_t videopipelineDecodeError()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineRanDry()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineMarkerBufferConsumed()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineSegmentFinished()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineHandleCompletedDecodeForPrerollNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_2();
  }

  v7 = DerivedStorage;
  v8 = CFGetTypeID(a5);
  if (v8 != CFDictionaryGetTypeID())
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_2();
  }

  if (!FigCFDictionaryGetValue())
  {
    return videopipelineHandleCompletedDecodeForPrerollNotification_cold_1();
  }

  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    *(v7 + 184) = 0;
    CMBaseObjectGetDerivedStorage();
    if (figVideoRenderPipelineHasCompletedAllPreparationForPrerollTasks())
    {
      if (dword_1EAF16EF8)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested();
    }

    else if (dword_1EAF16EF8)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t videopipelineLostDecoderState()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 168))
  {
    v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], kFigRenderPipelineNotificationParameter_RequestID, (DerivedStorage + 176), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (dword_1EAF16EF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v1);
  }

  v3 = CMBaseObjectGetDerivedStorage();
  *(v3 + 168) = 0;
  v4 = *(v3 + 176);
  if (v4)
  {
    CFRelease(v4);
    *(v3 + 176) = 0;
  }

  *(v3 + 184) = 0;
  CFArrayRemoveAllValues(*(v3 + 192));
}

uint64_t videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_2();
  }

  v7 = DerivedStorage;
  v8 = CFGetTypeID(a5);
  if (v8 != CFDictionaryGetTypeID())
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_2();
  }

  if (!FigCFDictionaryGetValue())
  {
    return videopipelineHandleImageQueueCompletedRendererPreparationForPrerollNotification_cold_1();
  }

  if (dword_1EAF16EF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    FigCFArrayRemoveLastElementOfValue();
    v10 = *(v7 + 192);
    if (!v10 || !CFArrayGetCount(v10))
    {
      CMBaseObjectGetDerivedStorage();
      if (figVideoRenderPipelineHasCompletedAllPreparationForPrerollTasks())
      {
        if (dword_1EAF16EF8)
        {
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested();
      }

      else if (dword_1EAF16EF8)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t videopipelineFirstImageEnqueued()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineImageReleased()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t videopipelineDisplaySizeChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFBoolean *a5)
{
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {

    return VMC2SetProperty(result, @"DisplayLayerSize", a5);
  }

  return result;
}

void videopipelineUpdateVideoPlaybackStateForClient()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v1 = *(DerivedStorage + 128);
  if (!v1 || CMTimebaseGetRate(v1) == 0.0)
  {
    v3 = 0;
    *(DerivedStorage + 145) = 0;
    v2 = *(DerivedStorage + 4);
    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(DerivedStorage + 145) = 1;
    v2 = *(DerivedStorage + 4);
    v3 = v2 != 0;
    if (v2)
    {
      goto LABEL_7;
    }
  }

  v2 = *(DerivedStorage + 148);
LABEL_7:
  if (sVRPPowerLogOnce != -1)
  {
    videopipelineUpdateVideoPlaybackStateForClient_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videopipelineUpdateVideoPlaybackStateForClient_block_invoke_2;
  block[3] = &unk_1E7482558;
  v8 = v3;
  v7 = v2;
  block[4] = &v9;
  block[5] = DerivedStorage;
  dispatch_sync(sVRPPowerLogQueue, block);
  if (v10[3])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6962D80], v10[3]);
      FigCFDictionarySetFloat32();
      FigCFDictionarySetInt32();
      FigLogPowerEvent();
      CFRelease(v5);
      *(DerivedStorage + 148) = *(DerivedStorage + 4);
    }
  }

  _Block_object_dispose(&v9, 8);
}

CFMutableBagRef __videopipelineUpdateVideoPlaybackStateForClient_block_invoke()
{
  sVRPPowerLogQueue = dispatch_queue_create("com.apple.coremedia.videorenderpipeline.powerlog", 0);
  result = CFBagCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  sVRPBagOfClientPIDsWithPlayingRenderPipelines = result;
  return result;
}

void __videopipelineUpdateVideoPlaybackStateForClient_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 152))
  {
    if (!*(a1 + 52))
    {
      *(v2 + 152) = 0;
      if (MEMORY[0x19A8CCA80](sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48)) == 1)
      {
        *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6962DA0];
      }

      CFBagRemoveValue(sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48));
    }
  }

  else if (*(a1 + 52))
  {
    *(v2 + 152) = *(a1 + 52);
    if (!MEMORY[0x19A8CCA80](sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48)))
    {
      *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6962DA8];
    }

    CFBagAddValue(sVRPBagOfClientPIDsWithPlayingRenderPipelines, *(a1 + 48));
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {

    JUMPOUT(0x19A8CCA80);
  }
}

uint64_t videopipelineCopyPerformanceDictionary(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(v25, 0, sizeof(v25));
  theArray = 0;
  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    v4 = VMC2CopyPerformanceDictionary(v3, v25) == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  if (theArray)
  {
    v7 = CFArrayGetCount(theArray) > 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E695E480];
  if (v7 || Count >= 1)
  {
    keys = @"ImageQueuePerformanceArray";
    Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    values = Mutable;
    v10 = theArray;
    if (theArray)
    {
      v11 = 0;
      do
      {
        if (CFArrayGetCount(v10) <= v11)
        {
          break;
        }

        value = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v13 && !v13(ValueAtIndex, &value))
        {
          CFArrayAppendValue(Mutable, value);
        }

        if (value)
        {
          CFRelease(value);
        }

        ++v11;
        v10 = theArray;
      }

      while (theArray);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        value = 0;
        v15 = CFArrayGetValueAtIndex(*(DerivedStorage + 40), i);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v16 && !v16(v15, &value))
        {
          CFArrayAppendValue(Mutable, value);
        }

        if (value)
        {
          CFRelease(value);
        }
      }
    }

    *(v25 | (8 * v4++)) = CFDictionaryCreate(v8, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values)
    {
      CFRelease(values);
    }
  }

  v17 = FigCFCreateCombinedDictionary();
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v4 >= 1)
  {
    v18 = v25;
    do
    {
      v19 = *v18++;
      CFRelease(v19);
      --v4;
    }

    while (v4);
  }

  return v17;
}

uint64_t FigImageQueueCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBaseObject = FigImageQueueGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(FigBaseObject, a2, a3, a4);
}

uint64_t FigSampleAttachmentCollectorSetDirection(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 48);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigSampleAttachmentCollectorStop(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigSampleAttachmentCollectorGo(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

void videopipelineAddListenersToFirstImageQueue(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != a2)
  {
    v4 = DerivedStorage;
    videopipelineRemoveListenersOnFirstImageQueue();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
    v5 = *(v4 + 72);
    *(v4 + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void figVideoRenderPipelineCopyMaxFanOutDisplayLayerSize(uint64_t a1, __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 40);
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v6 = Count;
    Mutable = 0;
    v8 = 0;
    v9 = MEMORY[0x1E695F060];
    v11 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    v12 = *MEMORY[0x1E695E480];
    do
    {
      dict = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 40), v8);
      FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(FigBaseObject, @"FigImageQueueProperty_DisplaySize", v12, &dict);
      }

      if (dict)
      {
        v18 = *v9;
        CGSizeMakeWithDictionaryRepresentation(dict, &v18);
        height = v18.height;
        width = v18.width;
        if (v18.height * v18.width <= v11 * v10)
        {
          width = v11;
          height = v10;
        }

        else if (Mutable || (Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
        {
          CFDictionarySetValue(Mutable, @"DisplaySize", dict);
        }

        if (dict)
        {
          CFRelease(dict);
        }
      }

      else
      {
        height = v10;
        width = v11;
      }

      ++v8;
      v10 = height;
      v11 = width;
    }

    while (v6 != v8);
  }

  else
  {
    Mutable = 0;
  }

  *a2 = Mutable;
}

uint64_t videopipelineConfigureAV1FilmGrainModeAsAppropriateForImageQueues(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 153) = 0;
  if (*(result + 16))
  {
    v3 = result;
    cf = 0;
    theArray = 0;
    figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        v7 = *MEMORY[0x1E695E480];
        v8 = *MEMORY[0x1E695E4C0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
          FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v11)
          {
            break;
          }

          if (v11(FigBaseObject, @"CanSupportAV1FilmGrainDeferMode", v7, &cf) || cf == 0)
          {
            break;
          }

          v13 = CFGetTypeID(cf);
          if (v13 != CFBooleanGetTypeID() || cf == v8)
          {
            break;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (v5 == ++v6)
          {
            v14 = 1;
            goto LABEL_17;
          }
        }
      }

      v14 = 0;
LABEL_17:
      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      v14 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v15 = MEMORY[0x1E69834A8];
    if (v14)
    {
      v15 = MEMORY[0x1E69834A0];
    }

    result = VMC2SetProperty(*(v3 + 16), @"AV1FilmGrainMode", *v15);
    *(v3 + 153) = v14;
  }

  return result;
}

uint64_t figVideoRenderPipelinePretendOutputIsLow()
{
  result = *(CMBaseObjectGetDerivedStorage() + 16);
  if (result)
  {

    return VMC2PretendOutputIsLow(result);
  }

  return result;
}

uint64_t figVideoRenderPipelineRequestDecodeForPreroll(uint64_t a1, const void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (!a2)
  {
    figVideoRenderPipelineRequestDecodeForPreroll_cold_2(v19);
    return v19[0];
  }

  v5 = DerivedStorage;
  if (*DerivedStorage)
  {
    figVideoRenderPipelineRequestDecodeForPreroll_cold_1(v19);
    return v19[0];
  }

  FigSimpleMutexLock();
  figVideoRenderPipelinePostPreparationForPrerollCompletedIfPreviouslyRequested();
  v6 = *(v5 + 2);
  if (v6 && !VMC2RequestDecodeForPreroll(v6, a2))
  {
    v7 = 1;
    v5[184] = 1;
  }

  else
  {
    v7 = 0;
  }

  figVideoRenderPipelineCopyVideoImageQueueArray(a1, &theArray, 0);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v12 && !v12(ValueAtIndex, a2))
        {
          CFArrayAppendValue(*(v5 + 24), ValueAtIndex);
          v7 = 1;
        }
      }
    }
  }

  v13 = *(v5 + 24);
  if (v13 && CFArrayGetCount(v13) > 0)
  {
    if (dword_1EAF16EF8)
    {
      goto LABEL_19;
    }
  }

  else if (dword_1EAF16EF8)
  {
LABEL_19:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v7)
  {
    v5[168] = 1;
    v15 = CFRetain(a2);
    v16 = 0;
    *(v5 + 22) = v15;
  }

  else
  {
    v16 = 4294954440;
  }

  FigSimpleMutexUnlock();
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v16;
}

uint64_t figVideoRenderPipelineSetWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);
  v9 = *a2;
  v10 = *(a2 + 16);
  v7 = *a3;
  v8 = *(a3 + 16);
  VMC2SetWaterLevels(v5, &v9, &v7);
  return 0;
}

CMTime *vsbufGetDecodeTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  result = vsbufIsCatchupFrame(a1);
  if (result)
  {
    v5 = MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    a2->epoch = *(v5 + 16);
  }

  else
  {

    return CMSampleBufferGetOutputDecodeTimeStamp(a2, a1);
  }

  return result;
}

CMTime *vsbufGetPresentationTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  result = vsbufIsCatchupFrame(a1);
  if (result)
  {
    v5 = MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    a2->epoch = *(v5 + 16);
  }

  else
  {

    return CMSampleBufferGetOutputPresentationTimeStamp(a2, a1);
  }

  return result;
}

const __CFArray *vsbufIsCatchupFrame(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    return (ValueAtIndex && *MEMORY[0x1E695E4D0] == CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960410]));
  }

  return result;
}

uint64_t FigSampleBufferAudioRendererServerRetainAudioRendererForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigSampleBufferAudioRendererGetTypeID())
      {
        return 0;
      }
    }

    FigSampleBufferAudioRendererServerRetainAudioRendererForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigSampleBufferAudioRendererServerStart()
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();

    return FigXPCServerStart();
  }
}

uint64_t audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection()
{
  v0 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v0)
  {
    return v0;
  }

  audioRenderer_lookupAndRetainSampleBufferAudioRendererByObjectIDForConnection_cold_1(&v3);
  return v3;
}

void audioRendererServer_disposeFSBARServedState(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
      a1[1] = 0;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void audioRendererServer_destroyFlushFromTimeCompletionCallbackContext(void *a1)
{
  if (a1)
  {
    FigXPCRelease();
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t fcrSessionSetMasterClockDo(uint64_t a1)
{
  result = FigCaptionRendererTriggerCreate(*a1, *(*(a1 + 16) + 1368), onTriggerEvent, onTriggerTimeUpdate, *(a1 + 16), (*(a1 + 16) + 48));
  v3 = *(a1 + 8);
  if (v3)
  {
    *v3 = result;
  }

  return result;
}

uint64_t fcrSessionSetCGContextDeviceDo(uint64_t *a1)
{
  v2 = a1[7];
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = a1[5];
  v9 = *(v2 + 584);
  if (v9)
  {
    Value = CFDictionaryGetValue(v9, *(v2 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v12 = *(ProtocolVTable + 16);
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v13(Value, 0);
        }
      }
    }

    CFDictionaryRemoveValue(*(v2 + 584), *(v2 + 248));
    v14 = *(v2 + 584);
    if (v14)
    {
      CFRelease(v14);
      *(v2 + 584) = 0;
    }
  }

  v15 = FigCaptionRendererCGOutputCreate(onViewportChanged, drawInContext, v2, v3, *MEMORY[0x1E695E480], (v2 + 64));
  if (v15)
  {
    v33 = v15;
    result = fcrSessionSetCGContextDeviceDo_cold_1();
    goto LABEL_24;
  }

  *(v2 + 624) = v8;
  v16 = *(v2 + 64);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v17)
  {
    v33 = -12782;
LABEL_21:
    result = fcrSessionSetCGContextDeviceDo_cold_3();
    goto LABEL_24;
  }

  v18 = v17(v16, 1, v4, v5, v6, v7);
  if (v18)
  {
    v33 = v18;
    goto LABEL_21;
  }

  v19 = *(v2 + 248);
  v20 = *(v2 + 64);
  v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v21)
  {
    v22 = v21(v20);
    v24 = v23;
    v26 = v25;
    v28 = v27;
  }

  else
  {
    v22 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v26 = *(MEMORY[0x1E695F050] + 16);
    v28 = *(MEMORY[0x1E695F050] + 24);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v29 = CMBaseObjectGetProtocolVTable();
  if (v29 && (v30 = *(v29 + 16)) != 0)
  {
    v31 = *(v30 + 96);
    if (v31)
    {
      result = v31(v19, v22, v24, v26, v28);
      v33 = result;
      if (!result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v33 = -12782;
    }
  }

  else
  {
    v33 = -12788;
  }

  result = fcrSessionSetCGContextDeviceDo_cold_2();
LABEL_24:
  v34 = a1[6];
  if (v34)
  {
    *v34 = v33;
  }

  return result;
}

uint64_t fcrSessionSetLegibleOutputDeviceDo(uint64_t *a1)
{
  v2 = a1[7];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a1[5];
  v8 = FigCaptionRendererLegibleOutputCreate(onViewportChanged, layoutInContext, v2, *a1, v2 + 8);
  if (v8)
  {
    v26 = v8;
    result = fcrSessionSetLegibleOutputDeviceDo_cold_1();
    goto LABEL_17;
  }

  v2[78] = v7;
  v9 = v2[8];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v10)
  {
    v26 = -12782;
LABEL_14:
    result = fcrSessionSetLegibleOutputDeviceDo_cold_3();
    goto LABEL_17;
  }

  v11 = v10(v9, 1, v3, v4, v5, v6);
  if (v11)
  {
    v26 = v11;
    goto LABEL_14;
  }

  v12 = v2[31];
  v13 = v2[8];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v14)
  {
    v15 = v14(v13);
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = *MEMORY[0x1E695F050];
    v17 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v21 = *(MEMORY[0x1E695F050] + 24);
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable && (v23 = *(ProtocolVTable + 16)) != 0)
  {
    v24 = *(v23 + 96);
    if (v24)
    {
      result = v24(v12, v15, v17, v19, v21);
      v26 = result;
      if (!result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = -12782;
    }
  }

  else
  {
    v26 = -12788;
  }

  result = fcrSessionSetLegibleOutputDeviceDo_cold_2();
LABEL_17:
  v27 = a1[6];
  if (v27)
  {
    *v27 = v26;
  }

  return result;
}

void SetProfileDo(uint64_t a1)
{
  v2 = *a1;
  cf = 0;
  v3 = *(a1 + 8);
  if (*(v2 + 268) == v3)
  {
    goto LABEL_2;
  }

  v6 = *(v2 + 584);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, *(v2 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v10 = *(ProtocolVTable + 16)) != 0)
    {
      v15 = *(v10 + 16);
      if (v15)
      {
        v16 = v15(Value, 0);
        if (!v16)
        {
          CFDictionaryRemoveValue(*(v2 + 584), *(v2 + 248));
          v3 = *(a1 + 8);
          goto LABEL_9;
        }

        v4 = v16;
      }

      else
      {
        v4 = -12782;
      }
    }

    else
    {
      v4 = -12788;
    }

    SetProfileDo_cold_1();
    goto LABEL_3;
  }

LABEL_9:
  if ((v3 | 2) == 3)
  {
    v17 = 0;
    v7 = FigCaptionRendererAVFLayoutRegionCreate(onDisplayUpdateEvent, v2, &v17);
    if (v7)
    {
      v4 = v7;
      SetProfileDo_cold_2();
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    v11 = FigCaptionRendererFreeLayoutRegionCreate(onDisplayUpdateEvent, v2, &v17);
    if (v11)
    {
      v4 = v11;
      SetProfileDo_cold_3();
      goto LABEL_3;
    }
  }

  v12 = *(v2 + 248);
  v13 = v17;
  *(v2 + 248) = v17;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!*(v2 + 584))
  {
    goto LABEL_26;
  }

  v14 = FigCaptionRendererCALayerOutputNodeCreate(&cf);
  if (!v14)
  {
    CFDictionarySetValue(*(v2 + 584), *(v2 + 248), cf);
LABEL_26:
    *(v2 + 268) = *(a1 + 8);
    applyContextDefaultsToMASettings(v2);
LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  v4 = v14;
  SetProfileDo_cold_4();
LABEL_3:
  v5 = *(a1 + 16);
  if (v5)
  {
    *v5 = v4;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void updateDisplayPort(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1[22])
  {
    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004065753CD5uLL);
    if (v10)
    {
      v11 = v10;
      *v10 = CFRetain(a1);
      v11[1] = a2;
      v11[2] = a3;
      v12 = MEMORY[0x1E69E96A0];
      v11[3] = a4;
      v11[4] = a5;

      dispatch_async_f(v12, v11, updateDisplayPortDoAsync);
    }
  }
}

uint64_t fcrSessionSetCaptionArrayDo(uint64_t a1)
{
  v8 = 0;
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(v2 + 56);
  if (!v4)
  {
    v8 = FigCaptionRendererCaptionArrayInputCreate(onCaptionInput, onRegionInput, v2, *MEMORY[0x1E695E480], (v2 + 56));
    if (v8)
    {
      result = fcrSessionSetCaptionArrayDo_cold_1();
      goto LABEL_6;
    }

    v7[0] = v2;
    v7[1] = 2;
    v7[2] = &v8;
    SetProfileDo(v7);
    v4 = *(v2 + 56);
  }

  result = FigCaptionRendererCaptionArrayInputSetCaptionsArray(v4, v3);
  v8 = result;
  if (result)
  {
    result = fcrSessionSetCaptionArrayDo_cold_2();
  }

LABEL_6:
  v6 = *(a1 + 8);
  if (v6)
  {
    *v6 = v8;
  }

  return result;
}

uint64_t fcrSessionSetCaptionSampleDo(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v2 + 56);
  v5 = *(v2 + 56);
  if (!v5)
  {
    v10 = FigCaptionRendererBasicInputCreate(onCaptionInput, onRegionInput, v2, *MEMORY[0x1E695E480], v6);
    if (v10)
    {
      result = fcrSessionSetCaptionSampleDo_cold_1();
      goto LABEL_8;
    }

    v9[0] = v2;
    v9[1] = 1;
    v9[2] = &v10;
    SetProfileDo(v9);
    v5 = *(v2 + 56);
  }

  if (v4)
  {
    FigCaptionRendererBasicInputSetLayoutContext(v5, v4);
    v5 = *v6;
  }

  result = FigCaptionRendererBasicInputAddSample(v5, v3);
  v10 = result;
  if (result)
  {
    result = fcrSessionSetCaptionSampleDo_cold_2();
  }

LABEL_8:
  v8 = *(a1 + 16);
  if (v8)
  {
    *v8 = v10;
  }

  return result;
}

uint64_t fcrSessionNotificationInputSetCaptionSampleDo(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v5 = (v2 + 56);
  v4 = *(v2 + 56);
  if (!v4)
  {
    v6 = FigCaptionRendererNotificationInputCreate(onCaptionInput, onRegionInput, onTextHighlightArray, v2, *MEMORY[0x1E695E480], v5);
    if (v6)
    {
      v8 = v6;
      result = fcrSessionNotificationInputSetCaptionSampleDo_cold_1();
      goto LABEL_6;
    }

    v4 = *v5;
  }

  result = FigCaptionRendererNotificationInputAddSample(v4, v3);
  v8 = result;
  if (result)
  {
    result = fcrSessionNotificationInputSetCaptionSampleDo_cold_2();
  }

LABEL_6:
  v9 = *(a1 + 16);
  if (v9)
  {
    *v9 = v8;
  }

  return result;
}

uint64_t fcrSessionStartDo(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 48);
  if (result && (result = FigCaptionRendererTriggerStart(result), result))
  {
    LODWORD(v4) = result;
    result = fcrSessionStartDo_cold_1();
  }

  else
  {
    *(v2 + 40) = 1;
    v4 = *(v2 + 56);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      result = v5(v4);
      LODWORD(v4) = result;
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LODWORD(v4) = -12782;
    }

    result = fcrSessionStartDo_cold_2();
  }

LABEL_6:
  if (*a1)
  {
    **a1 = v4;
  }

  return result;
}

void fcrSessionStopDo(void *a1)
{
  v2 = a1[1];
  if (v2 && ((v3 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0 || v3(v2)))
  {
    fcrSessionStopDo_cold_1();
  }

  else
  {
    *(*a1 + 40) = 0;
    v4 = a1[2];
    if (v4 && FigCaptionRendererTriggerStop(v4))
    {
      fcrSessionStopDo_cold_2();
    }
  }

  v5 = a1[1];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t fcrSessionSetTimeDo(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = *a1;
  result = FigCaptionRendererTriggerSetCurrentTime(*(v2 + 48), &v5);
  v4 = *(a1 + 24);
  if (v4)
  {
    *v4 = result;
  }

  return result;
}

uint64_t fcrSessionSetCaptionCacheRangeDo(uint64_t result)
{
  *(*(result + 24) + 88) = *result;
  v1 = *(result + 16);
  if (v1)
  {
    *v1 = 0;
  }

  return result;
}

uint64_t fcrSessionSetRateDo(uint64_t a1)
{
  result = FigCaptionRendererTriggerSetRate(*(*(a1 + 16) + 48), *a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *v3 = result;
  }

  return result;
}

void fcrSessionGetRateDo(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 48);
  if (v2)
  {
    Rate = FigCaptionRendererTriggerGetRate(v2);
  }

  else
  {
    Rate = 0.0;
  }

  *a1 = Rate;
}

uint64_t SetViewportDo(uint64_t a1)
{
  v2 = *a1;
  v3 = (a1 + 16);
  if (CGRectEqualToRect(*(*a1 + 632), *(a1 + 16)))
  {
    result = 0;
  }

  else
  {
    v6 = *(v2 + 648);
    v7 = *(v2 + 656);
    v8 = v3[1];
    *(v2 + 632) = *v3;
    *(v2 + 648) = v8;
    v9 = *(v2 + 584);
    if (v9)
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      Value = CFDictionaryGetValue(v9, *(v2 + 248));
      getOutputNodeLayout(Value, v15);
      v11 = v16;
      if (v16)
      {
        if (vabdd_f64(v6, *(a1 + 32)) > v6 * 0.1 || vabdd_f64(v7, *(a1 + 40)) > v7 * 0.1)
        {
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          ProtocolVTable = CMBaseObjectGetProtocolVTable();
          if (ProtocolVTable)
          {
            v13 = *(ProtocolVTable + 16);
            if (v13)
            {
              v14 = *(v13 + 120);
              if (v14)
              {
                v14(v11, 0);
              }
            }
          }
        }
      }
    }

    result = UpdateLayoutContext(v2);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *v5 = result;
  }

  return result;
}

uint64_t SetVideoSizeDo(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(a1 + 48);
  v4 = *a1;
  if (*(v4 + 664) == v3 && *(v4 + 672) == *(a1 + 56))
  {
    result = 0;
  }

  else
  {
    *(v4 + 664) = *v2;
    result = UpdateLayoutContext(v4);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    *v6 = result;
  }

  return result;
}

uint64_t SetGravityDo(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 160);
  if (*(result + 272) != v3)
  {
    *(result + 272) = v3;
    return UpdateLayoutContext(result);
  }

  return result;
}

uint64_t SetOverscanDo(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 161);
  if (*(*a1 + 273) == v3)
  {
    result = 0;
  }

  else
  {
    *(v2 + 273) = v3;
    result = *(v2 + 64);
    if (v3)
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      *(v2 + 280) = FigCaptionRendererCALayerOutputGetOverscan();
      result = *(v2 + 64);
    }

    if (result)
    {
      result = UpdateLayoutContext(v2);
    }
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    *v6 = result;
  }

  return result;
}

uint64_t SetVideoRelativeToViewportDo(uint64_t a1)
{
  v2 = *a1;
  v3 = (a1 + 64);
  if (CGRectEqualToRect(*(*a1 + 680), *(a1 + 64)))
  {
    result = 0;
  }

  else
  {
    v6 = v3[1];
    *(v2 + 680) = *v3;
    *(v2 + 696) = v6;
    result = UpdateLayoutContext(v2);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *v5 = result;
  }

  return result;
}

void SetCaptionsAvoidanceMarginsDo(uint64_t a1)
{
  v2 = *a1;
  v3 = (*a1 + 712);
  if (FigGeometryMarginsEqualToMargins())
  {
    updated = 0;
  }

  else
  {
    v6 = *(a1 + 96);
    v7 = *(a1 + 112);
    v8 = *(a1 + 144);
    v3[2] = *(a1 + 128);
    v3[3] = v8;
    *v3 = v6;
    v3[1] = v7;
    updated = UpdateLayoutContext(v2);
    drawInContext(0, v2);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *v5 = updated;
  }
}

uint64_t fcrSessionUpdateOutputDo(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 8) + 64);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v3)
  {
    result = v3(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    LODWORD(v2) = result;
    if (!result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LODWORD(v2) = -12782;
  }

  result = fcrSessionUpdateOutputDo_cold_1();
LABEL_4:
  if (*v1)
  {
    **v1 = v2;
  }

  return result;
}

uint64_t FigCaptionRendererSessionGetCALayerNodeLayoutForAnimation(uint64_t a1, _OWORD *a2)
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  v9 = *MEMORY[0x1E695F058];
  v10 = v4;
  v11 = 0;
  Value = CFDictionaryGetValue(*(a1 + 584), *(a1 + 248));
  getOutputNodeLayout(Value, &v9);
  *(a1 + 1416) = 0;
  v6 = v11;
  if (!v11)
  {
    return 4294950092;
  }

  result = 0;
  v8 = v10;
  *a2 = v9;
  a2[1] = v8;
  *(a1 + 1416) = v6;
  return result;
}

uint64_t getOutputNodeLayout(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return getOutputNodeLayout_cold_5();
  }

  v23 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return getOutputNodeLayout_cold_4();
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return getOutputNodeLayout_cold_4();
  }

  v6 = *(v5 + 112);
  if (!v6 || v6(a1, &v23))
  {
    return getOutputNodeLayout_cold_4();
  }

  if (v23)
  {
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7)
    {
      return getOutputNodeLayout_cold_2();
    }

    v8 = *(v7 + 16);
    if (!v8)
    {
      return getOutputNodeLayout_cold_2();
    }

    v9 = *(v8 + 64);
    if (!v9 || v9(a1, a2))
    {
      return getOutputNodeLayout_cold_2();
    }

    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (!v10)
    {
      return getOutputNodeLayout_cold_1();
    }

    v11 = *(v10 + 16);
    if (!v11)
    {
      return getOutputNodeLayout_cold_1();
    }

    v12 = *(v11 + 80);
    if (!v12 || v12(a1, a2 + 16))
    {
      return getOutputNodeLayout_cold_1();
    }

    __asm { FMOV            V0.2D, #-0.5 }

    *a2 = vaddq_f64(*a2, vmulq_f64(*(a2 + 16), _Q0));
    *(a2 + 32) = a1;
  }

  v22 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v18 = CMBaseObjectGetProtocolVTable();
  if (v18 && (v19 = *(v18 + 16)) != 0 && (v20 = *(v19 + 40)) != 0 && !v20(a1, &v22))
  {
    return FigCFArrayApplyFunction();
  }

  else
  {
    return getOutputNodeLayout_cold_3();
  }
}

uint64_t FigCaptionRendererSessionAddAnimation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1416);
  if (v3)
  {
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v7 = *(ProtocolVTable + 16);
      if (v7)
      {
        v8 = *(v7 + 176);
        if (v8)
        {
          v8(v3, a2, a3);
        }
      }
    }
  }

  return 0;
}

void setOptionsDo(void *a1)
{
  v2 = *a1;
  Mutable = *(*a1 + 1032);
  if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v2 + 1032) = Mutable) != 0))
  {
    v4 = a1[1];
    v5 = a1[2];
    if (v5)
    {

      CFDictionarySetValue(Mutable, v4, v5);
    }

    else
    {

      CFDictionaryRemoveValue(Mutable, v4);
    }
  }

  else
  {
    setOptionsDo_cold_1();
  }
}

uint64_t *setSeparatedDo(uint64_t *result)
{
  v1 = *result;
  *(v1 + 1040) = *(result + 8);
  *(v1 + 1041) = 1;
  return result;
}

uint64_t FigCaptionRendererSessionUpdateMediaAccessibility(int64x2_t *a1, int a2, uint64_t a3)
{
  v4 = vdupq_n_s64(1uLL);
  a1[18] = v4;
  a1[19] = v4;
  a1[20] = v4;
  a1[21] = v4;
  a1[26].i64[0] = 1;
  a1[29].i64[1] = 0;
  a1[30].i64[1] = 0x3FF0000000000000;
  result = 4294950096;
  if (a2 > 4)
  {
    if (a2 > 18)
    {
      if (a2 == 19)
      {
        result = 0;
        a1[20].i64[1] = 1;
      }

      else if (a2 == 20)
      {
        result = 0;
        a1[29].i64[1] = 0x3FD0000000000000;
        a1[20].i64[1] = 0;
      }
    }

    else
    {
      if (a2 == 5)
      {
        v12 = a1[28].i64[0];
        if (v12)
        {
          CFRelease(v12);
          a1[28].i64[0] = 0;
        }

        CGColorSRGB = FigCreateCGColorSRGB();
        result = 0;
        a1[28].i64[0] = CGColorSRGB;
        a1[19].i64[0] = 1;
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        v7 = a1[28].i64[0];
        if (v7)
        {
          CFRelease(v7);
          a1[28].i64[0] = 0;
        }

        v8 = FigCreateCGColorSRGB();
        result = 0;
        a1[28].i64[0] = v8;
        a1[19].i64[0] = 0;
      }

      a1[29].i64[1] = 0x3FF0000000000000;
    }
  }

  else if (a2 > 2)
  {
    if (a2 == 3)
    {
      v14 = a1[27].i64[0];
      if (v14)
      {
        CFRelease(v14);
        a1[27].i64[0] = 0;
      }

      v15 = FigCreateCGColorSRGB();
      result = 0;
      a1[27].i64[0] = v15;
      a1[18].i64[0] = 1;
    }

    else
    {
      v9 = a1[27].i64[0];
      if (v9)
      {
        CFRelease(v9);
        a1[27].i64[0] = 0;
      }

      v10 = FigCreateCGColorSRGB();
      result = 0;
      a1[27].i64[0] = v10;
      a1[18].i64[0] = 0;
    }
  }

  else
  {
    if (a2 == 1)
    {
      a1[30].i64[1] = 0x4010000000000000;
      a1[21].i64[1] = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      a1[30].i64[1] = 0x4000000000000000;
      a1[21].i64[1] = 0;
    }

    v11 = a1[36].i64[0];
    if (v11)
    {
      CFRelease(v11);
    }

    result = 0;
    a1[36].i64[0] = a3;
  }

  return result;
}

uint64_t FigCaptionRendererSessionSynchronizeDefaults(dispatch_queue_t *a1)
{
  if (!a1)
  {
    FigCaptionRendererSessionSynchronizeDefaults_cold_2(&v6);
    return v6;
  }

  if (a1[21])
  {
    v2 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (!v2)
    {
      FigCaptionRendererSessionSynchronizeDefaults_cold_1(&v5);
      return v5;
    }

    v3 = v2;
    *v2 = CFRetain(a1);
    *(v3 + 152) = 256;
    *(v3 + 306) = 0;
    v3[39] = 0;
    dispatch_async_f(a1[21], v3, updateMASettingsDoAsync);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetDefaultTextStyle(dispatch_queue_t *a1, CFTypeRef cf)
{
  if (!a1)
  {
    FigCaptionRendererSessionSetDefaultTextStyle_cold_3(&v10);
    return v10;
  }

  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      FigCaptionRendererSessionSetDefaultTextStyle_cold_1(&v8);
      return v8;
    }
  }

  if (a1[21])
  {
    v5 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (!v5)
    {
      FigCaptionRendererSessionSetDefaultTextStyle_cold_2(&v9);
      return v9;
    }

    v6 = v5;
    *v5 = CFRetain(a1);
    *(v6 + 152) = 0;
    *(v6 + 306) = 1;
    v6[39] = cf;
    dispatch_async_f(a1[21], v6, updateMASettingsDoAsync);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v8 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererSessionLocalGetTypeID_sRegisterFigCaptionRendererSessionOnce, RegisterFigCaptionRendererSessionClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = a1;
  *(Instance + 32) = a2;
  *(Instance + 16) = a3;
  *(Instance + 1400) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 1362) = 0;
  *(Instance + 268) = 3;
  *(Instance + 960) = 1;
  *(Instance + 976) = 0;
  *(Instance + 968) = 0xBFF0000000000000;
  *(Instance + 1056) = 0;
  *(Instance + 1360) = 0;
  fcrReleaseAndClearMediaAccessibilityParams(Instance + 1064);
  *(Instance + 1376) = 0u;
  *(Instance + 1368) = 250;
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(Instance + 584) = Mutable;
  if (!Mutable)
  {
    FigCaptionRendererSessionCreate_cold_8(__str);
    v33 = *__str;
    goto LABEL_26;
  }

  *(Instance + 624) = 0x100000001;
  v11 = MEMORY[0x1E695F058];
  *(Instance + 608) = 0u;
  v12 = *v11;
  v13 = v11[1];
  *(Instance + 632) = *v11;
  *(Instance + 648) = v13;
  v14 = *MEMORY[0x1E695F060];
  *(Instance + 664) = *MEMORY[0x1E695F060];
  *(Instance + 680) = v12;
  *(Instance + 696) = v13;
  v15 = MEMORY[0x1E6962818];
  v16 = *(MEMORY[0x1E6962818] + 16);
  *(Instance + 712) = *MEMORY[0x1E6962818];
  *(Instance + 728) = v16;
  v17 = *(v15 + 48);
  *(Instance + 744) = *(v15 + 32);
  *(Instance + 760) = v17;
  *(Instance + 776) = v12;
  *(Instance + 792) = v13;
  *(Instance + 808) = v14;
  *(Instance + 824) = v12;
  *(Instance + 840) = v13;
  *(Instance + 1044) = 1;
  *(Instance + 1032) = 0;
  *(Instance + 1040) = 0;
  *(Instance + 128) = v12;
  *(Instance + 144) = v13;
  *(Instance + 272) = 0;
  *(Instance + 280) = 0x3FF0000000000000;
  *(Instance + 120) = 0xFFFFFFFFLL;
  *(Instance + 1392) = FigSimpleMutexCreate();
  *(Instance + 1046) = 257;
  v18 = FigCaptionRendererParentIntervalCreate((Instance + 240));
  if (v18)
  {
    v33 = v18;
    FigCaptionRendererSessionCreate_cold_1();
    goto LABEL_26;
  }

  v19 = *(Instance + 240);
  FigBaseObject = FigBytePumpGetFigBaseObject(v18);
  v22 = v21;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v24 = *(ProtocolVTable + 16)) == 0)
  {
    v33 = 4294954508;
LABEL_25:
    FigCaptionRendererSessionCreate_cold_7();
    goto LABEL_26;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
    v33 = 4294954514;
    goto LABEL_25;
  }

  v26 = v25(v19, FigBaseObject, v22);
  if (v26)
  {
    v33 = v26;
    goto LABEL_25;
  }

  *(Instance + 88) = xmmword_196E76470;
  *(Instance + 104) = xmmword_196E76480;
  *(Instance + 40) = 0;
  snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrsession.messagequeue<%p>", Instance);
  v27 = dispatch_queue_create(__str, 0);
  *(Instance + 168) = v27;
  if (!v27 || (snprintf(__str, 0x100uLL, "com.apple.coremedia.figfcrsession.workqueue<%p>", Instance), v28 = dispatch_queue_create(__str, 0), (*(Instance + 176) = v28) == 0))
  {
    v33 = 0;
LABEL_26:
    CFRelease(Instance);
    return v33;
  }

  v29 = FigCaptionRendererTimerCreate(33, onAnimationTimerTimeout, Instance, (Instance + 184));
  if (v29)
  {
    v33 = v29;
    FigCaptionRendererSessionCreate_cold_2();
    goto LABEL_26;
  }

  cf = 0;
  v30 = FigCaptionRendererAVFLayoutRegionCreate(onDisplayUpdateEvent, Instance, &cf);
  if (v30)
  {
    v33 = v30;
    FigCaptionRendererSessionCreate_cold_3();
    goto LABEL_26;
  }

  if (cf)
  {
    v31 = CFRetain(cf);
    v32 = cf;
    *(Instance + 248) = v31;
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    *(Instance + 248) = 0;
  }

  if (*(Instance + 584))
  {
    *__str = 0;
    v34 = FigCaptionRendererCALayerOutputNodeCreate(__str);
    if (v34)
    {
      v33 = v34;
      FigCaptionRendererSessionCreate_cold_4();
      goto LABEL_26;
    }

    CFDictionarySetValue(*(Instance + 584), *(Instance + 248), *__str);
    if (*__str)
    {
      CFRelease(*__str);
    }
  }

  v35 = FigCaptionRendererMACacheCreate(onMAChanged, Instance, (Instance + 232));
  if (v35)
  {
    v33 = v35;
    FigCaptionRendererSessionCreate_cold_5();
    goto LABEL_26;
  }

  v33 = FigCaptionRendererMACacheLoad(*(Instance + 232), 0);
  if (v33)
  {
    FigCaptionRendererSessionCreate_cold_6();
    goto LABEL_26;
  }

  *(Instance + 192) = 0;
  v36 = *(MEMORY[0x1E695F050] + 16);
  *(Instance + 200) = *MEMORY[0x1E695F050];
  *(Instance + 216) = v36;
  *(Instance + 1408) = 0;
  *a4 = Instance;
  return v33;
}

void onAnimationTimerTimeout(uint64_t a1)
{
  v2 = *(a1 + 192);
  *(a1 + 192) = v2 - 33;
  Rate = FigCaptionRendererTriggerGetRate(*(a1 + 48));
  if (v2 > 33)
  {
    if (Rate == 0.0)
    {
      memset(&v10, 0, sizeof(v10));
      FigCaptionRendererTriggerGetCurrentTime(*(a1 + 48), &v10);
      memset(&v9, 0, sizeof(v9));
      CMTimeMake(&rhs, 33, 1000);
      v7 = v10;
      CMTimeAdd(&v9, &v7, &rhs);
      v6 = *(a1 + 48);
      rhs = v9;
      FigCaptionRendererTriggerSetCurrentTime(v6, &rhs);
    }

    updateDisplayPort(a1, *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  }

  else
  {
    if (Rate == 0.0)
    {
      memset(&v10, 0, sizeof(v10));
      FigCaptionRendererTriggerGetCurrentTime(*(a1 + 48), &v10);
      memset(&v9, 0, sizeof(v9));
      CMTimeMake(&rhs, *(a1 + 192) + 33, 1000);
      v7 = v10;
      CMTimeAdd(&v9, &v7, &rhs);
      v4 = *(a1 + 48);
      rhs = v9;
      FigCaptionRendererTriggerSetCurrentTime(v4, &rhs);
      updateDisplayPort(a1, *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
    }

    if (FigCaptionRendererTimerStop(*(a1 + 184)))
    {
      onAnimationTimerTimeout_cold_1();
    }

    else
    {
      *(a1 + 192) = 0;
      v5 = *(MEMORY[0x1E695F050] + 16);
      *(a1 + 200) = *MEMORY[0x1E695F050];
      *(a1 + 216) = v5;
    }
  }
}

uint64_t onDisplayUpdateEvent(uint64_t a1, uint64_t a2)
{
  Rate = FigCaptionRendererTriggerGetRate(*(a2 + 48));
  v5 = *(a1 + 4) + *a1;
  v6 = v5 + 33;
  if (v5 < 165)
  {
    v6 = 198;
  }

  if (Rate != 0.0)
  {
    v5 = v6;
  }

  *(a2 + 192) = v5;
  *(a2 + 200) = CGRectUnion(*(a2 + 200), *(a1 + 8));
  result = FigCaptionRendererTimerIsOn(*(a2 + 184));
  if (!result)
  {
    result = FigCaptionRendererTimerStart(*(a2 + 184));
    if (result)
    {
      return onDisplayUpdateEvent_cold_1();
    }
  }

  return result;
}

void onMAChanged(void *a1, uint64_t a2)
{
  if (a1[21])
  {
    v4 = malloc_type_calloc(1uLL, 0x140uLL, 0x1060040D22D00F8uLL);
    if (v4)
    {
      v5 = v4;
      fcrCopyMediaAccessibilityParams(a2, (v4 + 4));
      *v5 = CFRetain(a1);
      v5[152] = 1;
      *(v5 + 306) = 0;
      *(v5 + 39) = 0;
      v6 = a1[21];

      dispatch_async_f(v6, v5, updateMASettingsDoAsync);
    }
  }
}

uint64_t RegisterFigCaptionRendererSessionClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererSessionID = result;
  return result;
}

void FigCaptionRendererSession_Finalize(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 184) = 0;
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 176) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 168) = 0;
  }

  if (*(a1 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v5 = *(a1 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }
  }

  if (*(a1 + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }
  }

  v7 = *(a1 + 584);
  if (v7)
  {
    Value = CFDictionaryGetValue(v7, *(a1 + 248));
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v10 = *(ProtocolVTable + 16);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v11(Value, 0);
        }
      }
    }

    CFDictionaryRemoveValue(*(a1 + 584), *(a1 + 248));
    v12 = *(a1 + 584);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 584) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 1392) = 0;
  v13 = *(a1 + 248);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 248) = 0;
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 240) = 0;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 56) = 0;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 64) = 0;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 48) = 0;
  }

  v18 = *(a1 + 232);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 232) = 0;
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 160) = 0;
  }

  fcrReleaseAndClearMediaAccessibilityParams(a1 + 288);
  fcrReleaseAndClearMediaAccessibilityParams(a1 + 1064);
  v20 = *(a1 + 1056);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 1056) = 0;
  }

  v21 = *(a1 + 936);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 936) = 0;
  }

  v22 = *(a1 + 920);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 920) = 0;
  }

  v23 = *(a1 + 928);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 928) = 0;
  }

  v24 = *(a1 + 1024);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 1024) = 0;
  }

  v25 = *(a1 + 992);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 992) = 0;
  }

  v26 = *(a1 + 984);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 984) = 0;
  }

  v27 = *(a1 + 1000);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 1000) = 0;
  }

  v28 = *(a1 + 1032);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 1032) = 0;
  }

  v29 = *(a1 + 1384);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 1384) = 0;
  }

  v30 = *(a1 + 1400);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 1400) = 0;
  }
}

__CFString *FigCaptionRendererSessionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererSession %p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererOutputNodeSetParentNode(uint64_t a1)
{
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v4 = *(result + 16);
    result += 16;
    v3 = v4;
    if (v4)
    {
      v5 = *(v3 + 16);
      if (v5)
      {

        return v5(a1, 0);
      }
    }
  }

  return result;
}

void timebaseChangedCallbackDo(void *a1)
{
  cf = 0;
  v2 = *a1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_13;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1[1]);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = cf == 0;
    }

    if (v8)
    {
      goto LABEL_10;
    }

    v9 = v2[6];
    if (v9)
    {
      FigCaptionRendererTriggerSetTimebase(v9, cf);
    }

    else
    {
      timebaseChangedCallbackDo_cold_1();
    }
  }

  v7 = cf;
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v3);
LABEL_13:
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void onTriggerTimeUpdate(CMTime *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    time = *a1;
    Seconds = CMTimeGetSeconds(&time);
    v4 = Seconds % 3600;
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d:%02d:%02d", (Seconds / 3600), ((((34953 * v4) >> 16) >> 5) + (((v4 + ((-30583 * v4) >> 16)) & 0x8000) >> 15)), (v4 - 60 * ((((34953 * v4) >> 16) >> 5) + (((v4 + ((-30583 * v4) >> 16)) & 0x8000) >> 15))));
    (*(a2 + 32))(v5, *(a2 + 16));
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void onTriggerEventDo(uint64_t a1)
{
  v2 = *a1;
  *&v12.value = *(a1 + 16);
  v12.epoch = *(a1 + 32);
  *&time1.value = *&v12.value;
  time1.epoch = *(a1 + 32);
  purgeOutOfRangeCaptionCache(v2, &time1);
  v16 = 0.0;
  v17 = 0.0;
  v3 = v2[30];
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 8)) == 0 || v6(v3, &v16))
  {
    onTriggerEventDo_cold_1();
    goto LABEL_15;
  }

  time1 = v12;
  time2 = **&MEMORY[0x1E6960C70];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = 0;
    copyCaptionsByRange(v2[30], 0, &time1, 0, v16, v17, v16, v17);
    purgeCaptionBitmapCaches(v2, time1.value);
    value = time1.value;
    if (!time1.value)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  time1 = v12;
  CMTimeGetSeconds(&time1);
  FigBaseObject = FigBytePumpGetFigBaseObject(v7);
  time1.value = 0;
  theArray = 0;
  time2.value = 0;
  copyCaptionsByRange(v2[30], &time2, &time1, &theArray, v16, v17, FigBaseObject, v9);
  purgeCaptionBitmapCaches(v2, time2.value);
  purgeCaptionBitmapCaches(v2, theArray);
  if (time2.value)
  {
    CFRelease(time2.value);
  }

  if (time1.value)
  {
    CFRelease(time1.value);
  }

  value = theArray;
  if (theArray)
  {
LABEL_13:
    CFRelease(value);
  }

LABEL_15:
  updateDisplayPort(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    CFRelease(v11);
  }

  free(a1);
}

void purgeOutOfRangeCaptionCache(uint64_t a1, CMTime *a2)
{
  v15 = 0.0;
  v16 = 0.0;
  v4 = *(a1 + 240);
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v6 = *(ProtocolVTable + 16)) == 0 || (v7 = *(v6 + 8)) == 0 || v7(v4, &v15))
  {
    purgeOutOfRangeCaptionCache_cold_1();
    return;
  }

  time1 = *a2;
  time2 = **&MEMORY[0x1E6960C70];
  if (!CMTimeCompare(&time1, &time2))
  {
    time1.value = 0;
    copyCaptionsByRange(*(a1 + 240), 0, &time1, 0, v15, v16, v15, v16);
    purgeCaptionCachesFromCaptionsTimeline(a1, time1.value);
    value = time1.value;
    if (!time1.value)
    {
      return;
    }

    goto LABEL_13;
  }

  time1 = *a2;
  CMTimeGetSeconds(&time1);
  FigBaseObject = FigBytePumpGetFigBaseObject(v8);
  time1.value = 0;
  theArray = 0;
  time2.value = 0;
  copyCaptionsByRange(*(a1 + 240), &time2, &time1, &theArray, v15, v16, FigBaseObject, v10);
  purgeCaptionCachesFromCaptionsTimeline(a1, time2.value);
  purgeCaptionCachesFromCaptionsTimeline(a1, theArray);
  if (time2.value)
  {
    CFRelease(time2.value);
  }

  if (time1.value)
  {
    CFRelease(time1.value);
  }

  value = theArray;
  if (theArray)
  {
LABEL_13:
    CFRelease(value);
  }
}

uint64_t FigCaptionRendererIntervalGetRange(uint64_t a1, uint64_t a2)
{
  FigCaptionRendererIntervalProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v6 = *(result + 16);
    result += 16;
    v5 = v6;
    if (v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {

        return v7(a1, a2);
      }
    }
  }

  return result;
}

void copyCaptionsByRange(uint64_t a1, CFArrayRef *a2, CFTypeRef *a3, CFArrayRef *a4, double a5, double a6, double a7, double a8)
{
  theArray = 0;
  cf = 0;
  Copy = 0;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v16 = *(ProtocolVTable + 16);
    ProtocolVTable += 16;
    v15 = v16;
    if (v16)
    {
      v17 = *(v15 + 32);
      if (v17)
      {
        ProtocolVTable = v17(a1, &cf, a7, a8);
      }
    }
  }

  FigBaseObject = FigBytePumpGetFigBaseObject(ProtocolVTable);
  v20 = v19;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  v21 = CMBaseObjectGetProtocolVTable();
  if (v21)
  {
    v23 = *(v21 + 16);
    v21 += 16;
    v22 = v23;
    if (v23)
    {
      v24 = *(v22 + 32);
      if (v24)
      {
        v21 = v24(a1, &theArray, FigBaseObject, v20);
      }
    }
  }

  v25 = FigBytePumpGetFigBaseObject(v21);
  v27 = v26;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  v28 = CMBaseObjectGetProtocolVTable();
  if (v28)
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v29 + 32);
      if (v30)
      {
        v30(a1, &Copy, v25, v27);
      }
    }
  }

  v31 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

  subtractCFArrayFromCFArray(MutableCopy, cf);
  theArray = CFArrayCreateCopy(v31, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v33 = CFArrayCreateMutableCopy(v31, 0, Copy);
  if (Copy)
  {
    CFRelease(Copy);
  }

  subtractCFArrayFromCFArray(v33, cf);
  Copy = CFArrayCreateCopy(v31, v33);
  if (v33)
  {
    CFRelease(v33);
  }

  if (a2)
  {
    *a2 = theArray;
  }

  else if (theArray)
  {
    CFRelease(theArray);
  }

  if (a3)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = Copy;
  }

  else if (Copy)
  {
    CFRelease(Copy);
  }
}

CFIndex purgeCaptionCachesFromCaptionsTimeline(uint64_t a1, CFArrayRef theArray)
{
  v4 = *(a1 + 240);
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      FigCaptionRendererParentIntervalProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v9 = *(ProtocolVTable + 16);
        if (v9)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            v10(v4, ValueAtIndex);
          }
        }
      }

      v11 = *(a1 + 584);
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, ValueAtIndex);
        if (Value)
        {
          v13 = Value;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v14 = CMBaseObjectGetProtocolVTable();
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = *(v15 + 16);
              if (v16)
              {
                v16(v13, 0);
              }
            }
          }

          CFDictionaryRemoveValue(*(a1 + 584), ValueAtIndex);
        }
      }

      result = CFArrayGetCount(theArray);
    }
  }

  return result;
}

CFIndex subtractCFArrayFromCFArray(CFIndex result, CFArrayRef theArray)
{
  if (result)
  {
    if (theArray)
    {
      v3 = result;
      result = CFArrayGetCount(theArray);
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v7.length = CFArrayGetCount(v3);
          v7.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v7, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            CFArrayRemoveValueAtIndex(v3, FirstIndexOfValue);
          }

          result = CFArrayGetCount(theArray);
        }
      }
    }
  }

  return result;
}

CFIndex purgeCaptionBitmapCaches(uint64_t a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v18 = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 32);
          if (v9)
          {
            v9(ValueAtIndex, &v18);
          }
        }
      }

      image = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v10 = CMBaseObjectGetProtocolVTable();
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v11 + 176);
          if (v12)
          {
            v12(ValueAtIndex, &image);
          }
        }
      }

      if (image)
      {
        BytesPerRow = CGImageGetBytesPerRow(image);
        *(a1 + 124) += CGImageGetHeight(image) * BytesPerRow;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v14 = CMBaseObjectGetProtocolVTable();
        if (v14)
        {
          v15 = *(v14 + 16);
          if (v15)
          {
            v16 = *(v15 + 160);
            if (v16)
            {
              v16(ValueAtIndex);
            }
          }
        }
      }

      result = CFArrayGetCount(theArray);
    }
  }

  return result;
}

void drawInContext(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1365))
  {
    if (*(a2 + 168))
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
      if (v4)
      {
        v5 = v4;
        *v4 = CFRetain(a2);
        v5[1] = a1;
        v6 = *(a2 + 168);
        if (a1)
        {

          dispatch_sync_f(v6, v5, composeSceneDo);
        }

        else
        {

          dispatch_async_f(v6, v5, composeSceneDo);
        }
      }
    }
  }
}

void onUserEventDo(int *a1)
{
  v2 = *(a1 + 3);
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v22 = 0;
  if (v3 == 3)
  {
    v10 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable || (v12 = *(ProtocolVTable + 16)) == 0 || (v13 = *(v12 + 360)) == 0 || v13(v10, &v22, v5, v4))
    {
      onUserEventDo_cold_1();
      goto LABEL_29;
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7 || (v8 = *(v7 + 16)) == 0 || (v9 = *(v8 + 352)) == 0 || v9(v6, &v22, v5, v4))
    {
      onUserEventDo_cold_2();
      goto LABEL_29;
    }
  }

  v14 = *(v2 + 248);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v15 = CMBaseObjectGetProtocolVTable();
  if (v15 && (v16 = *(v15 + 16)) != 0 && (v17 = *(v16 + 272)) != 0 && !v17(v14))
  {
    *(v2 + 608) = 0u;
    v18 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 304)) != 0 && !v21(v18, v2 + 288))
    {
      updateDisplayPort(v2, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else
    {
      onUserEventDo_cold_3();
    }
  }

  else
  {
    onUserEventDo_cold_4();
  }

LABEL_29:
  free(a1);
}

void onViewportChangedDo(double *a1)
{
  v2 = *(a1 + 4);
  v3 = a1[2];
  if (v3 <= 0.0 || (v4 = a1[3], v4 <= 0.0))
  {
    if (!v2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    if (*(v2 + 584))
    {
      *(v2 + 624) = FigCaptionRendererCALayerOutputGetOrientation();
      *(v2 + 628) = FigCaptionRendererCALayerOutputGetDisplayScale();
    }

    v7 = *(v2 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0 && (v10 = *(v9 + 96)) != 0 && !v10(v7, v5, v6, v3, v4))
    {
      v11 = *(v2 + 248);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12 && (v13 = *(v12 + 16)) != 0 && (v14 = *(v13 + 272)) != 0 && !v14(v11))
      {
        v15 = *(v2 + 992);
        if (v15)
        {
          CFRelease(v15);
          *(v2 + 992) = 0;
        }

        v16 = *(v2 + 984);
        if (v16)
        {
          CFRelease(v16);
          *(v2 + 984) = 0;
        }

        v17 = *(v2 + 1000);
        if (v17)
        {
          CFRelease(v17);
          *(v2 + 1000) = 0;
        }

        if (FigGeometryMappingCreateCEA608Mappings())
        {
          onViewportChangedDo_cold_1();
        }

        else
        {
          *(v2 + 1008) = FCRGetCEA608CellSize(*(v2 + 992));
          *(v2 + 1016) = v18;
          v19 = *(v2 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v20 = CMBaseObjectGetProtocolVTable();
          if (v20 && (v21 = *(v20 + 16)) != 0 && (v22 = *(v21 + 96)) != 0 && !v22(v19, v5, v6, v3, v4))
          {
            v23 = *(v2 + 248);
            FigCaptionRendererNodeProtocolGetProtocolID();
            v24 = CMBaseObjectGetProtocolVTable();
            if (!v24 || (v25 = *(v24 + 16)) == 0 || (v26 = *(v25 + 272)) == 0 || v26(v23))
            {
              onViewportChangedDo_cold_2();
            }
          }

          else
          {
            onViewportChangedDo_cold_3();
          }
        }
      }

      else
      {
        onViewportChangedDo_cold_4();
      }
    }

    else
    {
      onViewportChangedDo_cold_5();
    }
  }

  CFRelease(v2);
LABEL_40:
  free(a1);
}

CFTypeRef copyCurrentActiveCaptions(uint64_t a1, CMTime *a2)
{
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  cf = 0;
  v4 = *(a1 + 240);
  FigBaseObject = FigBytePumpGetFigBaseObject(v5);
  v8 = v7;
  FigCaptionRendererParentIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v10 = *(ProtocolVTable + 16);
    if (v10)
    {
      v11 = *(v10 + 32);
      if (v11)
      {
        v11(v4, &cf, FigBaseObject, v8);
      }
    }
  }

  v12 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v14 = MutableCopy;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (CFArrayGetCount(v14) >= 1)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        time.value = 0;
        *&time.timescale = 0;
        time.value = FigBytePumpGetFigBaseObject(ValueAtIndex);
        *&time.timescale = v18;
        FigCaptionRendererIntervalProtocolGetProtocolID();
        v19 = CMBaseObjectGetProtocolVTable();
        if (v19)
        {
          v20 = *(v19 + 16);
          if (v20)
          {
            v21 = *(v20 + 8);
            if (v21)
            {
              v21(ValueAtIndex, &time);
            }
          }
        }

        if (*&time.value + *&time.timescale == Seconds)
        {
          CFArrayRemoveValueAtIndex(v14, v15);
          --v16;
        }

        v15 = ++v16;
      }

      while (CFArrayGetCount(v14) > v16);
    }

    cf = CFArrayCreateCopy(v12, v14);
    CFRelease(v14);
  }

  return cf;
}

void updateNodeTree(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    v5 = *(a1 + 248);
    v6 = *MEMORY[0x1E695E480];
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    v233[0] = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0 && (v10 = *(v9 + 24)) != 0 && (v217 = theArray, v218 = v5, !v10(v5, v233)))
    {
      if ((*(a1 + 268) & 0xFFFFFFFE) == 2 && CFArrayGetCount(v233[0]) >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = *MEMORY[0x1E6960968];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v233[0], v11);
          v232 = 0;
          FigCaptionRendererBaseProtocolGetProtocolID();
          v15 = CMBaseObjectGetProtocolVTable();
          if (!v15)
          {
            break;
          }

          v16 = *(v15 + 16);
          if (!v16)
          {
            break;
          }

          v17 = *(v16 + 8);
          if (!v17 || v17(ValueAtIndex, &v232))
          {
            break;
          }

          v18 = v232;
          if (v232)
          {
            if (!strcmp(v232, "FigCaptionRendererStackLayoutRegion") || !strcmp(v18, "FigCaptionRendererTTMLRegion") || !strcmp(v18, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v18, "FigCaptionRendereriTTRegion") || !strcmp(v18, "FigCaptionRendererSRTRegion") || !strcmp(v18, "FigCaptionRendererFreeLayoutRegion"))
            {
              v231 = 0;
              FigCaptionRendererRegionProtocolGetProtocolID();
              v27 = CMBaseObjectGetProtocolVTable();
              if (v27)
              {
                v28 = *(v27 + 16);
                if (v28)
                {
                  v29 = *(v28 + 16);
                  if (v29)
                  {
                    v29(ValueAtIndex, &v231);
                  }
                }
              }

              theArraya = 0;
              FigCaptionRendererNodeProtocolGetProtocolID();
              v30 = CMBaseObjectGetProtocolVTable();
              if (!v30 || (v31 = *(v30 + 16)) == 0 || (v32 = *(v31 + 24)) == 0 || (v219 = v12, v32(ValueAtIndex, &theArraya)))
              {
                updateNodeTree_cold_3();
                goto LABEL_305;
              }

              if (CFArrayGetCount(theArraya) < 1)
              {
LABEL_111:
                v12 = v219;
                goto LABEL_112;
              }

              v33 = 0;
              v34 = 0;
              while (2)
              {
                v35 = CFArrayGetValueAtIndex(theArraya, v33);
                aStr = 0;
                FigCaptionRendererCaptionProtocolGetProtocolID();
                v36 = CMBaseObjectGetProtocolVTable();
                if (v36)
                {
                  v37 = *(v36 + 16);
                  if (v37)
                  {
                    v38 = *(v37 + 32);
                    if (v38)
                    {
                      v38(v35, &aStr);
                    }
                  }
                }

                effectiveRange.location = 0;
                effectiveRange.length = 0;
                Attribute = CFAttributedStringGetAttribute(aStr, 0, v13, &effectiveRange);
                if (Attribute)
                {
                  Mutable = searchNodesCopyByID(MutableCopy, Attribute);
                  goto LABEL_51;
                }

                Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
                idx[0] = 0;
                if (CFArrayGetCount(MutableCopy) < 1)
                {
                  goto LABEL_60;
                }

                v42 = -1;
                do
                {
                  if (CFArrayGetValueAtIndex(MutableCopy, idx[0]) == v35)
                  {
                    v42 = idx[0];
                    v43 = CFNumberCreate(v6, kCFNumberCFIndexType, idx);
                    CFArrayAppendValue(Mutable, v43);
                    if (v43)
                    {
                      CFRelease(v43);
                    }
                  }

                  v44 = ++idx[0];
                }

                while (v44 < CFArrayGetCount(MutableCopy));
                if (v42 == -1)
                {
LABEL_60:
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

LABEL_62:
                  v227 = 0;
                  FigCaptionRendererCaptionProtocolGetProtocolID();
                  v45 = CMBaseObjectGetProtocolVTable();
                  if (v45)
                  {
                    v46 = *(v45 + 16);
                    if (v46)
                    {
                      v47 = *(v46 + 48);
                      if (v47)
                      {
                        v47(v35, &v227);
                      }
                    }
                  }

                  __s1 = 0;
                  FigCaptionRendererBaseProtocolGetProtocolID();
                  v48 = CMBaseObjectGetProtocolVTable();
                  if (v48)
                  {
                    v49 = *(v48 + 16);
                    if (v49)
                    {
                      v50 = *(v49 + 8);
                      if (v50)
                      {
                        v50(v35, &__s1);
                      }
                    }
                  }

                  if (v227 != 1)
                  {
                    goto LABEL_103;
                  }

                  if (strcmp(v232, "FigCaptionRendererCellStackLayoutRegion"))
                  {
                    goto LABEL_103;
                  }

                  v51 = __s1;
                  if (!__s1)
                  {
                    goto LABEL_103;
                  }

                  v52 = strcmp(__s1, "FigCaptionRendererCaption");
                  if (v52)
                  {
                    v52 = strcmp(v51, "FigCaptionRendererPaintOnCaption");
                    if (v52)
                    {
                      goto LABEL_103;
                    }
                  }

                  idx[0] = 0;
                  idx[1] = 0;
                  idx[0] = FigBytePumpGetFigBaseObject(v52);
                  idx[1] = v53;
                  FigCaptionRendererIntervalProtocolGetProtocolID();
                  v54 = CMBaseObjectGetProtocolVTable();
                  if (v54)
                  {
                    v56 = *(v54 + 16);
                    v54 += 16;
                    v55 = v56;
                    if (v56)
                    {
                      v57 = *(v55 + 8);
                      if (v57)
                      {
                        v54 = v57(v35, idx);
                      }
                    }
                  }

                  *&BOOLean = 0.0;
                  v225 = 0.0;
                  *&BOOLean = FigBytePumpGetFigBaseObject(v54);
                  v225 = v58;
                  if (CFArrayGetCount(MutableCopy) >= 1)
                  {
                    v59 = CFArrayGetValueAtIndex(MutableCopy, 0);
                    theDict = 0;
                    FigCaptionRendererCaptionProtocolGetProtocolID();
                    v60 = CMBaseObjectGetProtocolVTable();
                    if (!v60 || (v61 = *(v60 + 16)) == 0 || (v62 = *(v61 + 16)) == 0 || v62(v59, &theDict))
                    {
                      updateNodeTree_cold_2();
                      goto LABEL_305;
                    }

                    Value = CFDictionaryGetValue(theDict, @"region");
                    if (Value)
                    {
                      if (Value == v231)
                      {
                        FigCaptionRendererIntervalProtocolGetProtocolID();
                        v64 = CMBaseObjectGetProtocolVTable();
                        if (v64)
                        {
                          v65 = *(v64 + 16);
                          if (v65)
                          {
                            v66 = *(v65 + 8);
                            if (v66)
                            {
                              v66(v59, &BOOLean);
                            }
                          }
                        }
                      }
                    }
                  }

                  if (*&BOOLean - (*idx + *&idx[1]) == 0.0)
                  {
                    v67 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v68 = CMBaseObjectGetProtocolVTable();
                    if (!v68 || (v69 = *(v68 + 16)) == 0 || (v70 = *(v69 + 16)) == 0 || v70(v67, v35))
                    {
                      updateNodeTree_cold_1();
                      goto LABEL_305;
                    }

                    v71 = *idx;
                    v72 = v225 + *&idx[1];
                    *&idx[1] = v225 + *&idx[1];
                    FigCaptionRendererIntervalProtocolGetProtocolID();
                    v73 = CMBaseObjectGetProtocolVTable();
                    if (v73)
                    {
                      v74 = *(v73 + 16);
                      if (v74)
                      {
                        v75 = *(v74 + 16);
                        if (v75)
                        {
                          v75(v35, v71, v72);
                        }
                      }
                    }

                    v76 = *(a1 + 240);
                    FigCaptionRendererParentIntervalProtocolGetProtocolID();
                    v77 = CMBaseObjectGetProtocolVTable();
                    if (v77)
                    {
                      v78 = *(v77 + 16);
                      if (v78)
                      {
                        v79 = *(v78 + 8);
                        if (v79)
                        {
                          v79(v76, v35);
                        }
                      }
                    }
                  }

                  else
                  {
LABEL_103:
                    v80 = *(a1 + 584);
                    if (v80)
                    {
                      v81 = CFDictionaryGetValue(v80, v35);
                      if (v81)
                      {
                        v82 = v81;
                        FigCaptionRendererOutputNodeProtocolGetProtocolID();
                        v83 = CMBaseObjectGetProtocolVTable();
                        if (v83)
                        {
                          v84 = *(v83 + 16);
                          if (v84)
                          {
                            v85 = *(v84 + 16);
                            if (v85)
                            {
                              v85(v82, 0);
                            }
                          }
                        }
                      }
                    }

                    CFArrayRemoveValueAtIndex(theArraya, v33);
                    --v34;
                  }
                }

                else
                {
LABEL_51:
                  if (!Mutable)
                  {
                    goto LABEL_62;
                  }

                  removeNodesByIndexes(MutableCopy, Mutable);
                  CFRelease(Mutable);
                  v41 = *(a1 + 72) != 0;
                  *idx = *a3;
                  v222[0] = *(a3 + 16);
                  updateTimedNode(v35, idx, v41);
                }

                v33 = ++v34;
                if (CFArrayGetCount(theArraya) <= v34)
                {
                  goto LABEL_111;
                }

                continue;
              }
            }

            if (strcmp(v18, "FigCaptionRendererCaption") && strcmp(v18, "FigCaptionRendererPaintOnCaption"))
            {
              goto LABEL_112;
            }

            *&BOOLean = 0.0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v19 = CMBaseObjectGetProtocolVTable();
            if (v19)
            {
              v20 = *(v19 + 16);
              if (v20)
              {
                v21 = *(v20 + 32);
                if (v21)
                {
                  v21(ValueAtIndex, &BOOLean);
                }
              }
            }

            LODWORD(__s1) = 0;
            FigCaptionRendererCaptionProtocolGetProtocolID();
            v22 = CMBaseObjectGetProtocolVTable();
            if (v22)
            {
              v23 = *(v22 + 16);
              if (v23)
              {
                v24 = *(v23 + 48);
                if (v24)
                {
                  v24(ValueAtIndex, &__s1);
                }
              }
            }

            if (__s1 > 4 || __s1 == 2)
            {
              effectiveRange.location = 0;
              effectiveRange.length = 0;
              v96 = CFAttributedStringGetAttribute(BOOLean, 0, v13, &effectiveRange);
              if (!v96)
              {
                goto LABEL_112;
              }

              v97 = searchNodesCopyByID(MutableCopy, v96);
              if (!v97)
              {
                v113 = *(a1 + 584);
                if (v113)
                {
                  v114 = CFDictionaryGetValue(v113, ValueAtIndex);
                  if (v114)
                  {
                    FigCaptionRendererOutputNodeSetParentNode(v114);
                  }
                }

LABEL_147:
                v115 = v233[0];
                v235.length = CFArrayGetCount(v233[0]);
                v235.location = 0;
                FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v115, v235, ValueAtIndex);
                CFArrayRemoveValueAtIndex(v115, FirstIndexOfValue);
                --v12;
                goto LABEL_112;
              }

              v98 = v97;
              removeNodesByIndexes(MutableCopy, v97);
              CFRelease(v98);
            }

            else
            {
              v234.length = CFArrayGetCount(MutableCopy);
              v234.location = 0;
              v25 = CFArrayGetFirstIndexOfValue(MutableCopy, v234, ValueAtIndex);
              if (v25 == -1)
              {
                v231 = 0;
                FigCaptionRendererBaseProtocolGetProtocolID();
                v86 = CMBaseObjectGetProtocolVTable();
                if (v86)
                {
                  v87 = *(v86 + 16);
                  if (v87)
                  {
                    v88 = *(v87 + 8);
                    if (v88)
                    {
                      v88(ValueAtIndex, &v231);
                    }
                  }
                }

                if (v231)
                {
                  v89 = strcmp(v231, "FigCaptionRendererPaintOnCaption");
                  if (!v89)
                  {
                    idx[0] = 0;
                    idx[1] = 0;
                    idx[0] = FigBytePumpGetFigBaseObject(v89);
                    idx[1] = v99;
                    FigCaptionRendererIntervalProtocolGetProtocolID();
                    v100 = CMBaseObjectGetProtocolVTable();
                    if (v100)
                    {
                      v102 = *(v100 + 16);
                      v100 += 16;
                      v101 = v102;
                      if (v102)
                      {
                        v103 = *(v101 + 8);
                        if (v103)
                        {
                          v100 = v103(ValueAtIndex, idx);
                        }
                      }
                    }

                    effectiveRange.location = 0;
                    effectiveRange.length = 0;
                    effectiveRange.location = FigBytePumpGetFigBaseObject(v100);
                    effectiveRange.length = v104;
                    if (CFArrayGetCount(MutableCopy) >= 1)
                    {
                      v105 = CFArrayGetValueAtIndex(MutableCopy, 0);
                      theArraya = 0;
                      FigCaptionRendererBaseProtocolGetProtocolID();
                      v106 = CMBaseObjectGetProtocolVTable();
                      if (v106)
                      {
                        v107 = *(v106 + 16);
                        if (v107)
                        {
                          v108 = *(v107 + 8);
                          if (v108)
                          {
                            v108(v105, &theArraya);
                          }
                        }
                      }

                      aStr = 0;
                      FigCaptionRendererCaptionProtocolGetProtocolID();
                      v109 = CMBaseObjectGetProtocolVTable();
                      if (v109)
                      {
                        v110 = *(v109 + 16);
                        if (v110)
                        {
                          v111 = *(v110 + 16);
                          if (v111)
                          {
                            v111(v105, &aStr);
                          }
                        }
                      }

                      if (aStr)
                      {
                        v112 = CFDictionaryGetValue(aStr, @"region") == 0;
                      }

                      else
                      {
                        v112 = 1;
                      }

                      if (theArraya && strcmp(theArraya, "FigCaptionRendererPaintOnCaption") == 0 && v112)
                      {
                        FigCaptionRendererIntervalGetRange(v105, &effectiveRange);
                      }
                    }

                    if (*&effectiveRange.location - (*idx + *&idx[1]) == 0.0)
                    {
                      v117 = *(a1 + 240);
                      FigCaptionRendererParentIntervalProtocolGetProtocolID();
                      v118 = CMBaseObjectGetProtocolVTable();
                      if (!v118 || (v119 = *(v118 + 16)) == 0 || (v120 = *(v119 + 16)) == 0 || v120(v117, ValueAtIndex))
                      {
                        fig_log_get_emitter();
                        FigSignalErrorAtGM();
                        goto LABEL_305;
                      }

                      v121 = *idx;
                      v122 = *&effectiveRange.length + *&idx[1];
                      *&idx[1] = *&effectiveRange.length + *&idx[1];
                      FigCaptionRendererIntervalProtocolGetProtocolID();
                      v123 = CMBaseObjectGetProtocolVTable();
                      if (v123)
                      {
                        v124 = *(v123 + 16);
                        if (v124)
                        {
                          v125 = *(v124 + 16);
                          if (v125)
                          {
                            v125(ValueAtIndex, v121, v122);
                          }
                        }
                      }

                      v126 = *(a1 + 240);
                      FigCaptionRendererParentIntervalProtocolGetProtocolID();
                      v127 = CMBaseObjectGetProtocolVTable();
                      if (v127)
                      {
                        v128 = *(v127 + 16);
                        if (v128)
                        {
                          v129 = *(v128 + 8);
                          if (v129)
                          {
                            v129(v126, ValueAtIndex);
                          }
                        }
                      }

                      goto LABEL_112;
                    }
                  }
                }

                v90 = *(a1 + 584);
                if (v90)
                {
                  v91 = CFDictionaryGetValue(v90, ValueAtIndex);
                  if (v91)
                  {
                    v92 = v91;
                    FigCaptionRendererOutputNodeProtocolGetProtocolID();
                    v93 = CMBaseObjectGetProtocolVTable();
                    if (v93)
                    {
                      v94 = *(v93 + 16);
                      if (v94)
                      {
                        v95 = *(v94 + 16);
                        if (v95)
                        {
                          v95(v92, 0);
                        }
                      }
                    }
                  }
                }

                goto LABEL_147;
              }

              CFArrayRemoveValueAtIndex(MutableCopy, v25);
            }

            v26 = *(a1 + 72) != 0;
            *idx = *a3;
            v222[0] = *(a3 + 16);
            updateTimedNode(ValueAtIndex, idx, v26);
          }

LABEL_112:
          v11 = ++v12;
          if (CFArrayGetCount(v233[0]) <= v12)
          {
            goto LABEL_165;
          }
        }

        updateNodeTree_cold_16();
        goto LABEL_305;
      }

LABEL_165:
      if (CFArrayGetCount(MutableCopy) >= 1)
      {
        v130 = 0;
        while (1)
        {
          v131 = CFArrayGetValueAtIndex(MutableCopy, v130);
          v132 = *(a1 + 72) != 0;
          *idx = *a3;
          v222[0] = *(a3 + 16);
          updateTimedNode(v131, idx, v132);
          effectiveRange.location = 0;
          FigCaptionRendererCaptionProtocolGetProtocolID();
          v133 = CMBaseObjectGetProtocolVTable();
          if (!v133)
          {
            break;
          }

          v134 = *(v133 + 16);
          if (!v134)
          {
            break;
          }

          v135 = *(v134 + 16);
          if (!v135 || v135(v131, &effectiveRange))
          {
            break;
          }

          v136 = CFDictionaryGetValue(effectiveRange.location, @"region");
          if (v136)
          {
            v137 = v136;
            if (CFArrayGetCount(v233[0]) >= 1)
            {
              for (i = 0; CFArrayGetCount(v233[0]) > i; ++i)
              {
                v139 = CFArrayGetValueAtIndex(v233[0], i);
                *&BOOLean = 0.0;
                FigCaptionRendererBaseProtocolGetProtocolID();
                v140 = CMBaseObjectGetProtocolVTable();
                if (!v140 || (v141 = *(v140 + 16)) == 0 || (v142 = *(v141 + 8)) == 0 || v142(v139, &BOOLean))
                {
                  updateNodeTree_cold_8();
                  goto LABEL_305;
                }

                v143 = BOOLean;
                if (*&BOOLean != 0.0 && (!strcmp(BOOLean, "FigCaptionRendererStackLayoutRegion") || !strcmp(v143, "FigCaptionRendererTTMLRegion") || !strcmp(v143, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v143, "FigCaptionRendereriTTRegion") || !strcmp(v143, "FigCaptionRendererSRTRegion") || !strcmp(v143, "FigCaptionRendererFreeLayoutRegion")))
                {
                  v232 = 0;
                  FigCaptionRendererRegionProtocolGetProtocolID();
                  v144 = CMBaseObjectGetProtocolVTable();
                  if (!v144 || (v145 = *(v144 + 16)) == 0 || (v146 = *(v145 + 16)) == 0 || v146(v139, &v232))
                  {
                    updateNodeTree_cold_7();
                    goto LABEL_305;
                  }

                  if (CFStringCompare(v137, v232, 1uLL) == kCFCompareEqualTo)
                  {
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v147 = CMBaseObjectGetProtocolVTable();
                    if (!v147 || (v148 = *(v147 + 16)) == 0 || (v149 = *(v148 + 40)) == 0 || v149(v139, v131))
                    {
                      updateNodeTree_cold_6();
                      goto LABEL_305;
                    }

                    v150 = *(a1 + 584);
                    if (v150)
                    {
                      v151 = CFDictionaryGetValue(v150, v131);
                      v152 = CFDictionaryGetValue(*(a1 + 584), v139);
                      if (v151)
                      {
                        v153 = v152;
                        if (v152)
                        {
                          FigCaptionRendererOutputNodeProtocolGetProtocolID();
                          v154 = CMBaseObjectGetProtocolVTable();
                          if (!v154 || (v155 = *(v154 + 16)) == 0 || (v156 = *(v155 + 24)) == 0 || v156(v153, v151))
                          {
                            updateNodeTree_cold_4();
                            goto LABEL_305;
                          }
                        }
                      }
                    }

                    v157 = *(MEMORY[0x1E695F050] + 16);
                    *idx = *MEMORY[0x1E695F050];
                    *v222 = v157;
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v158 = CMBaseObjectGetProtocolVTable();
                    if (v158)
                    {
                      v159 = *(v158 + 16);
                      if (v159)
                      {
                        v160 = *(v159 + 152);
                        if (v160)
                        {
                          v160(v139, idx);
                        }
                      }
                    }

                    v161 = *idx;
                    v162 = *&idx[1];
                    v163 = *v222;
                    FigCaptionRendererNodeProtocolGetProtocolID();
                    v164 = CMBaseObjectGetProtocolVTable();
                    if (!v164 || (v165 = *(v164 + 16)) == 0 || (v166 = *(v165 + 64)) == 0 || v166(v131, v161, v162, *&v163, *(&v163 + 1)))
                    {
                      updateNodeTree_cold_5();
                      goto LABEL_305;
                    }
                  }
                }
              }
            }
          }

          else
          {
            FigCaptionRendererNodeProtocolGetProtocolID();
            v167 = CMBaseObjectGetProtocolVTable();
            if (!v167 || (v168 = *(v167 + 16)) == 0 || (v169 = *(v168 + 40)) == 0 || v169(v218, v131))
            {
              updateNodeTree_cold_14();
              goto LABEL_305;
            }

            v170 = *(a1 + 584);
            if (v170)
            {
              v171 = CFDictionaryGetValue(v170, v131);
              v172 = CFDictionaryGetValue(*(a1 + 584), v218);
              if (v171)
              {
                v173 = v172;
                if (v172)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v174 = CMBaseObjectGetProtocolVTable();
                  if (!v174 || (v175 = *(v174 + 16)) == 0 || (v176 = *(v175 + 24)) == 0 || v176(v173, v171))
                  {
                    updateNodeTree_cold_9();
                    goto LABEL_305;
                  }
                }
              }
            }

            *&BOOLean = 0.0;
            v177 = *(a1 + 248);
            FigCaptionRendererBaseProtocolGetProtocolID();
            v178 = CMBaseObjectGetProtocolVTable();
            if (!v178 || (v179 = *(v178 + 16)) == 0 || (v180 = *(v179 + 8)) == 0 || v180(v177, &BOOLean))
            {
              updateNodeTree_cold_13();
              goto LABEL_305;
            }

            v181 = *(MEMORY[0x1E695F050] + 16);
            *idx = *MEMORY[0x1E695F050];
            *v222 = v181;
            if (!strcmp(BOOLean, "FigCaptionRendererAVFLayoutRegion"))
            {
              LODWORD(v232) = 0;
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v185 = CMBaseObjectGetProtocolVTable();
              if (v185)
              {
                v186 = *(v185 + 16);
                if (v186)
                {
                  v187 = *(v186 + 48);
                  if (v187)
                  {
                    v187(v131, &v232);
                  }
                }
              }

              if (v232 == 3)
              {
                FigCaptionRendererNodeProtocolGetProtocolID();
                v188 = CMBaseObjectGetProtocolVTable();
                if (v188)
                {
                  v189 = *(v188 + 16);
                  if (v189)
                  {
                    v190 = *(v189 + 104);
                    if (v190)
                    {
                      v190(v218, idx);
                    }
                  }
                }
              }

              if (v222[0] == 0.0 || v222[1] == 0.0)
              {
                idx[0] = FCRGetVideoPresentationBounds(*(a1 + 664), *(a1 + 672), *(a1 + 632), *(a1 + 640), *(a1 + 648), *(a1 + 656));
                idx[1] = v191;
                v222[0] = v192;
                v222[1] = v193;
              }
            }

            else
            {
              FigCaptionRendererNodeProtocolGetProtocolID();
              v182 = CMBaseObjectGetProtocolVTable();
              if (v182)
              {
                v183 = *(v182 + 16);
                if (v183)
                {
                  v184 = *(v183 + 152);
                  if (v184)
                  {
                    v184(v218, idx);
                  }
                }
              }
            }

            v194 = *idx;
            v195 = *&idx[1];
            v196 = *v222;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v197 = CMBaseObjectGetProtocolVTable();
            if (!v197 || (v198 = *(v197 + 16)) == 0 || (v199 = *(v198 + 64)) == 0 || v199(v131, v194, v195, *&v196, *(&v196 + 1)))
            {
              updateNodeTree_cold_12();
              goto LABEL_305;
            }
          }

          if (CFArrayGetCount(MutableCopy) <= ++v130)
          {
            goto LABEL_248;
          }
        }

        updateNodeTree_cold_15();
        goto LABEL_305;
      }

LABEL_248:
      if (CFArrayGetCount(v217) && CFArrayGetCount(v233[0]) >= 1)
      {
        v200 = 0;
        v201 = *MEMORY[0x1E695E4C0];
        v202 = *MEMORY[0x1E695E4D0];
        do
        {
          v203 = CFArrayGetValueAtIndex(v233[0], v200);
          idx[0] = 0;
          FigCaptionRendererBaseProtocolGetProtocolID();
          v204 = CMBaseObjectGetProtocolVTable();
          if (!v204 || (v205 = *(v204 + 16)) == 0 || (v206 = *(v205 + 8)) == 0 || v206(v203, idx))
          {
            updateNodeTree_cold_11();
            goto LABEL_305;
          }

          if (idx[0] && !strcmp(idx[0], "FigCaptionRendererTTMLRegion"))
          {
            effectiveRange.location = 0;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v207 = CMBaseObjectGetProtocolVTable();
            if (!v207 || (v208 = *(v207 + 16)) == 0 || (v209 = *(v208 + 24)) == 0 || v209(v203, &effectiveRange))
            {
              updateNodeTree_cold_10();
              goto LABEL_305;
            }

            if (!CFArrayGetCount(effectiveRange.location))
            {
              v210 = v203;
              v211 = v202;
              goto LABEL_265;
            }

            BOOLean = v201;
            FigCaptionRendererTTMLRegionGetInvisible(v203, &BOOLean);
            if (CFBooleanGetValue(BOOLean))
            {
              v210 = v203;
              v211 = v201;
LABEL_265:
              FigCaptionRendererTTMLRegionSetInvisible(v210, v211);
            }
          }

          ++v200;
        }

        while (CFArrayGetCount(v233[0]) > v200);
      }

      if (!*(a1 + 72))
      {
        *idx = *a3;
        v222[0] = *(a3 + 16);
        v212 = copyCurrentActiveCaptions(a1, idx);
        if (CFArrayGetCount(v212) >= 1)
        {
          v213 = 0;
          do
          {
            v214 = CFArrayGetValueAtIndex(v212, v213);
            v215 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            if (!v215)
            {
              break;
            }

            v216 = v215;
            *v215 = CFRetain(a1);
            v216[1] = CFRetain(v214);
            renderCaptionDo(v216);
            ++v213;
          }

          while (CFArrayGetCount(v212) > v213);
        }

        if (v212)
        {
          CFRelease(v212);
        }
      }
    }

    else
    {
      updateNodeTree_cold_17();
    }

LABEL_305:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

CFIndex ensureCaptionsAreRendered(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v6 = *(v5 + 24);
  if (!v6 || v6(a2, &theArray))
  {
    return ensureCaptionsAreRendered_cold_4();
  }

  v7 = 0;
  v8 = MEMORY[0x1E695F050];
  while (1)
  {
    result = theArray;
    if (theArray)
    {
      result = CFArrayGetCount(theArray);
    }

    if (v7 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    __s1 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    v11 = CMBaseObjectGetProtocolVTable();
    if (!v11)
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v12 = *(v11 + 16);
    if (!v12)
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v13 = *(v12 + 8);
    if (!v13 || v13(ValueAtIndex, &__s1))
    {
      return ensureCaptionsAreRendered_cold_3();
    }

    v14 = __s1;
    if (__s1)
    {
      if (!strcmp(__s1, "FigCaptionRendererCaption"))
      {
        v15 = v8[1];
        v26 = *v8;
        v27 = v15;
        v25 = 0;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v16 = CMBaseObjectGetProtocolVTable();
        if (!v16)
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        v17 = *(v16 + 16);
        if (!v17)
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        v18 = *(v17 + 104);
        if (!v18 || v18(ValueAtIndex, &v26))
        {
          return ensureCaptionsAreRendered_cold_2();
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v19 = CMBaseObjectGetProtocolVTable();
        if (!v19)
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        v20 = *(v19 + 16);
        if (!v20)
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        v21 = *(v20 + 224);
        if (!v21 || v21(ValueAtIndex, &v25))
        {
          return ensureCaptionsAreRendered_cold_1();
        }

        if (*&v27 == 0.0 || *(&v27 + 1) == 0.0 || v25)
        {
          FigCaptionRendererNodeProtocolGetProtocolID();
          v22 = CMBaseObjectGetProtocolVTable();
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = *(v23 + 280);
              if (v24)
              {
                v24(ValueAtIndex, a1 + 288);
              }
            }
          }
        }
      }

      else if (!strcmp(v14, "FigCaptionRendererTTMLRegion"))
      {
        ensureCaptionsAreRendered(a1, ValueAtIndex);
      }
    }

    ++v7;
  }

  return result;
}

void copyOutputNodeContentIntoCGContext(uint64_t a1, CGContext *a2)
{
  if (!a1 || !a2)
  {
    copyOutputNodeContentIntoCGContext_cold_5();
    return;
  }

  v20 = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 112)) == 0 || v6(a1, &v20))
  {
    copyOutputNodeContentIntoCGContext_cold_4();
    return;
  }

  if (v20)
  {
    *v19 = *MEMORY[0x1E695EFF8];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v7 = CMBaseObjectGetProtocolVTable();
    if (!v7 || (v8 = *(v7 + 16)) == 0 || (v9 = *(v8 + 64)) == 0 || v9(a1, v19))
    {
      copyOutputNodeContentIntoCGContext_cold_2();
      return;
    }

    v18 = *MEMORY[0x1E695F060];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (!v10 || (v11 = *(v10 + 16)) == 0 || (v12 = *(v11 + 80)) == 0 || v12(a1, &v18))
    {
      copyOutputNodeContentIntoCGContext_cold_1();
      return;
    }

    v22.size = v18;
    v22.origin.x = v19[0] - v18.width * 0.5;
    v22.origin.y = v19[1] - v18.height * 0.5;
    v23 = CGRectIntegral(v22);
    CGContextDrawImage(a2, v23, v20);
  }

  theArray = 0;
  FigCaptionRendererOutputNodeProtocolGetProtocolID();
  v13 = CMBaseObjectGetProtocolVTable();
  if (v13 && (v14 = *(v13 + 16)) != 0 && (v15 = *(v14 + 40)) != 0 && !v15(a1, &theArray))
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v21.length = Count;
        v21.location = 0;
        CFArrayApplyFunction(theArray, v21, copyOutputNodeContentIntoCGContext, a2);
      }
    }
  }

  else
  {
    copyOutputNodeContentIntoCGContext_cold_3();
  }
}

__CFArray *searchNodesCopyByID(const __CFArray *a1, const __CFString *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  idx = 0;
  if (CFArrayGetCount(a1) <= 0)
  {
    goto LABEL_26;
  }

  theString2 = a2;
  v6 = -1;
  attrName = *MEMORY[0x1E6960968];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, idx);
    __s1 = 0;
    FigCaptionRendererBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable)
    {
      break;
    }

    v9 = *(ProtocolVTable + 16);
    if (!v9)
    {
      break;
    }

    v10 = *(v9 + 8);
    if (!v10 || v10(ValueAtIndex, &__s1))
    {
      break;
    }

    v11 = __s1;
    if (__s1 && strcmp(__s1, "FigCaptionRendererStackLayoutRegion") && strcmp(v11, "FigCaptionRendererTTMLRegion") && strcmp(v11, "FigCaptionRendererCellStackLayoutRegion") && strcmp(v11, "FigCaptionRendereriTTRegion") && strcmp(v11, "FigCaptionRendererSRTRegion") && strcmp(v11, "FigCaptionRendererFreeLayoutRegion") && !strcmp(v11, "FigCaptionRendererCaption"))
    {
      aStr = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v12 = CMBaseObjectGetProtocolVTable();
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = *(v13 + 32);
          if (v14)
          {
            v14(ValueAtIndex, &aStr);
          }
        }
      }

      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attribute = CFAttributedStringGetAttribute(aStr, 0, attrName, &effectiveRange);
      if (CFStringCompare(Attribute, theString2, 1uLL) == kCFCompareEqualTo)
      {
        v6 = idx;
        v16 = CFNumberCreate(v4, kCFNumberCFIndexType, &idx);
        CFArrayAppendValue(Mutable, v16);
        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    v17 = ++idx;
    if (v17 >= CFArrayGetCount(a1))
    {
      goto LABEL_25;
    }
  }

  searchNodesCopyByID_cold_1();
LABEL_25:
  if (v6 == -1)
  {
LABEL_26:
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

CFIndex removeNodesByIndexes(__CFArray *a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v5 = 0;
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      valuePtr = -1;
      CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
      valuePtr += v5;
      CFArrayRemoveValueAtIndex(a1, valuePtr);
      result = CFArrayGetCount(theArray);
      --v5;
    }
  }

  return result;
}

uint64_t updateTimedNode(uint64_t a1, __int128 *a2, int a3)
{
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return updateTimedNode_cold_1();
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return updateTimedNode_cold_1();
  }

  v8 = *(v7 + 8);
  if (!v8 || v8(a1, &__s1))
  {
    return updateTimedNode_cold_1();
  }

  result = __s1;
  if (__s1)
  {
    result = strcmp(__s1, "FigCaptionRendererPaintOnCaption");
    if (!result)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      return FigCaptionRendererPaintOnCaptionSetCurrentTime(a1, &v10, a3);
    }
  }

  return result;
}

void renderCaptionDo(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (((*(*a1 + 120) & 0x80000000) != 0 || *(v3 + 124) > 0 || *(v3 + 268) == 1) && *(v3 + 1365))
  {
    *(v3 + 608) = 0u;
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable)
    {
      v5 = *(ProtocolVTable + 16);
      if (v5)
      {
        v6 = *(v5 + 280);
        if (v6)
        {
          v6(v2, v3 + 288);
        }
      }
    }

    v7 = *(*a1 + 248);
    FigCaptionRendererNodeProtocolGetProtocolID();
    v8 = CMBaseObjectGetProtocolVTable();
    if (v8 && (v9 = *(v8 + 16)) != 0 && (v10 = *(v9 + 104)) != 0 && !v10(v7, v3 + 128))
    {
      v11 = *(v3 + 160);
      *(v3 + 160) = v2;
      if (v2)
      {
        CFRetain(v2);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (*(v3 + 268) != 1)
      {
        image = 0;
        v12 = *(v3 + 248);
        FigCaptionRendererNodeProtocolGetProtocolID();
        v13 = CMBaseObjectGetProtocolVTable();
        if (v13 && (v14 = *(v13 + 16)) != 0 && (v15 = *(v14 + 176)) != 0 && !v15(v12, &image))
        {
          BytesPerRow = CGImageGetBytesPerRow(image);
          Height = CGImageGetHeight(image);
          *(v3 + 124) -= Height * BytesPerRow;
          if (*(v3 + 268) != 2)
          {
            FigBaseObject = FigBytePumpGetFigBaseObject(Height);
            v26 = v18;
            FigCaptionRendererIntervalProtocolGetProtocolID();
            v19 = CMBaseObjectGetProtocolVTable();
            if (v19 && (v20 = *(v19 + 16)) != 0 && (v21 = *(v20 + 8)) != 0 && !v21(v2, &FigBaseObject))
            {
              FigCaptionRendererTriggerManualTrigger(*(v3 + 48));
              v22 = *(v3 + 48);
              CMTimeMake(&v24, ((FigBaseObject + v26) * 1000.0), 1000);
              if (FigCaptionRendererTriggerScheduleEvent(v22, v2, &v24.value))
              {
                renderCaptionDo_cold_1();
              }
            }

            else
            {
              renderCaptionDo_cold_2();
            }
          }
        }

        else
        {
          renderCaptionDo_cold_3();
        }
      }
    }

    else
    {
      renderCaptionDo_cold_4();
    }
  }

  v23 = a1[1];
  if (v23)
  {
    CFRelease(v23);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void layoutInContext(const void *a1, void *a2)
{
  if (a2[21])
  {
    v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = CFRetain(a2);
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      v5[1] = v6;
      v7 = a2[21];

      dispatch_sync_f(v7, v5, layoutSceneDo);
    }
  }
}

void layoutSceneDo(uint64_t a1)
{
  v2 = *a1;
  v2[38] = 0u;
  *(v2 + 75) = *(a1 + 8);
  v3 = *(v2 + 31);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0 || (v6 = *(v5 + 304)) == 0 || v6(v3, v2 + 18))
  {
    layoutSceneDo_cold_1();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  free(a1);
}

void onCaptionInputDo(uint64_t a1)
{
  FigBaseObject = FigBytePumpGetFigBaseObject(a1);
  v142 = v2;
  v4 = *a1;
  v3 = *(a1 + 8);
  values = *a1;
  FigSimpleMutexLock();
  if (*(v3 + 1363))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    onCaptionInputDo_cold_1(v3, (v3 + 1363));
  }

  if (*(v3 + 268) == 1 || *(v3 + 40))
  {
    v5 = *(v3 + 1400);
    if (v5)
    {
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v7 = *(ProtocolVTable + 16);
        if (v7)
        {
          v8 = *(v7 + 72);
          if (v8)
          {
            v8(v4, v5);
          }
        }
      }
    }

    if (*(v3 + 1408))
    {
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v9 = CMBaseObjectGetProtocolVTable();
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = *(v10 + 120);
          if (v11)
          {
            v11(v4, *MEMORY[0x1E695E4D0]);
          }
        }
      }
    }

    Seconds = 0.0;
    if (*(v3 + 268) != 1)
    {
      v13 = *(v3 + 48);
      if (!v13)
      {
        onCaptionInputDo_cold_2();
        goto LABEL_205;
      }

      value[0] = 0;
      value[1] = 0;
      *&v133 = 0;
      FigCaptionRendererTriggerGetCurrentTime(v13, value);
      *&time.value = *value;
      time.epoch = v133;
      Seconds = CMTimeGetSeconds(&time);
    }

    v139 = 0;
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v14 = CMBaseObjectGetProtocolVTable();
    if (!v14 || (v15 = *(v14 + 16)) == 0 || (v16 = *(v15 + 48)) == 0 || v16(v4, &v139))
    {
      onCaptionInputDo_cold_24();
      goto LABEL_205;
    }

    if (v139 == 5 && *(v3 + 268) == 3)
    {
      value[0] = 0;
      value[1] = 0;
      v17 = *(v3 + 240);
      FigCaptionRendererIntervalProtocolGetProtocolID();
      v18 = CMBaseObjectGetProtocolVTable();
      if (v18 && (v19 = *(v18 + 16)) != 0 && (v20 = *(v19 + 8)) != 0 && !v20(v17, value))
      {
        time.value = 0;
        copyCaptionsByRange(*(v3 + 240), 0, &time, 0, *value, *&value[1], *value, *&value[1]);
        purgeCaptionCachesFromCaptionsTimeline(v3, time.value);
        if (time.value)
        {
          CFRelease(time.value);
        }
      }

      else
      {
        onCaptionInputDo_cold_23();
      }
    }

    else
    {
      if (*(v3 + 584))
      {
        value[0] = 0;
        if (FigCaptionRendererCALayerOutputNodeCreate(value))
        {
          onCaptionInputDo_cold_3();
          goto LABEL_205;
        }

        CFDictionarySetValue(*(v3 + 584), v4, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }
      }

      if ((*(v3 + 268) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_41;
      }

      FigCaptionRendererIntervalProtocolGetProtocolID();
      v21 = CMBaseObjectGetProtocolVTable();
      if (!v21 || (v22 = *(v21 + 16)) == 0 || (v23 = *(v22 + 8)) == 0 || v23(v4, &FigBaseObject))
      {
        onCaptionInputDo_cold_22();
        goto LABEL_205;
      }

      v24 = Seconds + *(v3 + 88);
      if (FigBaseObject + v142 >= v24 && FigBaseObject <= v24 + *(v3 + 96))
      {
LABEL_41:
        __s1 = 0;
        v25 = *(v3 + 248);
        FigCaptionRendererBaseProtocolGetProtocolID();
        v26 = CMBaseObjectGetProtocolVTable();
        if (!v26 || (v27 = *(v26 + 16)) == 0 || (v28 = *(v27 + 8)) == 0 || v28(v25, &__s1))
        {
          onCaptionInputDo_cold_21();
          goto LABEL_205;
        }

        v129 = *(MEMORY[0x1E695F050] + 16);
        v130 = *MEMORY[0x1E695F050];
        v136 = *MEMORY[0x1E695F050];
        *v137 = v129;
        if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
        {
          if (v139 == 3)
          {
            v33 = *(v3 + 248);
            FigCaptionRendererNodeProtocolGetProtocolID();
            v34 = CMBaseObjectGetProtocolVTable();
            if (!v34 || (v35 = *(v34 + 16)) == 0 || (v36 = *(v35 + 104)) == 0 || v36(v33, &v136))
            {
              onCaptionInputDo_cold_20();
              goto LABEL_205;
            }
          }

          if (v137[0] == 0.0 || v137[1] == 0.0)
          {
            *&v136 = FCRGetVideoPresentationBounds(*(v3 + 664), *(v3 + 672), *(v3 + 632), *(v3 + 640), *(v3 + 648), *(v3 + 656));
            *(&v136 + 1) = v37;
            v137[0] = v38;
            v137[1] = v39;
            if (*(v3 + 1046))
            {
              v40 = *(v3 + 712);
              v41 = *(v3 + 728);
              if (v40 > 0.0 || v41 > 0.0)
              {
                v137[0] = v38 - (v40 + v41);
              }
            }

            if (*(v3 + 1048))
            {
              v42 = *(v3 + 744);
              v43 = *(v3 + 760);
              if (v42 > 0.0 || v43 > 0.0)
              {
                v137[1] = v39 - (v42 + v43);
              }
            }
          }
        }

        else
        {
          v29 = *(v3 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v30 = CMBaseObjectGetProtocolVTable();
          if (!v30 || (v31 = *(v30 + 16)) == 0 || (v32 = *(v31 + 152)) == 0 || v32(v29, &v136))
          {
            onCaptionInputDo_cold_4();
            goto LABEL_205;
          }
        }

        theDict = 0;
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v44 = CMBaseObjectGetProtocolVTable();
        if (!v44 || (v45 = *(v44 + 16)) == 0 || (v46 = *(v45 + 16)) == 0 || v46(v4, &theDict))
        {
          onCaptionInputDo_cold_19();
          goto LABEL_205;
        }

        v47 = CFDictionaryGetValue(theDict, @"region");
        if (v47)
        {
          v48 = v47;
          time.value = 0;
          v49 = *(v3 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v50 = CMBaseObjectGetProtocolVTable();
          if (!v50 || (v51 = *(v50 + 16)) == 0 || (v52 = *(v51 + 24)) == 0 || v52(v49, &time))
          {
            onCaptionInputDo_cold_11();
            goto LABEL_205;
          }

          if (CFArrayGetCount(time.value) >= 1)
          {
            v53 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(time.value, v53);
              v144[0] = 0;
              FigCaptionRendererBaseProtocolGetProtocolID();
              v55 = CMBaseObjectGetProtocolVTable();
              if (!v55 || (v56 = *(v55 + 16)) == 0 || (v57 = *(v56 + 8)) == 0 || v57(ValueAtIndex, v144))
              {
                onCaptionInputDo_cold_10();
                goto LABEL_205;
              }

              v58 = v144[0];
              if (!strcmp(v144[0], "FigCaptionRendererStackLayoutRegion") || !strcmp(v58, "FigCaptionRendererTTMLRegion") || !strcmp(v58, "FigCaptionRendererCellStackLayoutRegion") || !strcmp(v58, "FigCaptionRendereriTTRegion") || !strcmp(v58, "FigCaptionRendererSRTRegion") || !strcmp(v58, "FigCaptionRendererFreeLayoutRegion"))
              {
                theString2 = 0;
                FigCaptionRendererRegionProtocolGetProtocolID();
                v59 = CMBaseObjectGetProtocolVTable();
                if (!v59 || (v60 = *(v59 + 16)) == 0 || (v61 = *(v60 + 16)) == 0 || v61(ValueAtIndex, &theString2))
                {
                  onCaptionInputDo_cold_9();
                  goto LABEL_205;
                }

                if (CFStringCompare(v48, theString2, 1uLL) == kCFCompareEqualTo)
                {
                  break;
                }
              }

              if (CFArrayGetCount(time.value) <= ++v53)
              {
                goto LABEL_94;
              }
            }

            *value = v130;
            v133 = v129;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v97 = CMBaseObjectGetProtocolVTable();
            if (!v97 || (v98 = *(v97 + 16)) == 0 || (v99 = *(v98 + 152)) == 0 || v99(ValueAtIndex, value))
            {
              onCaptionInputDo_cold_8();
              goto LABEL_205;
            }

            v100 = value[0];
            v101 = value[1];
            v102 = v133;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v103 = CMBaseObjectGetProtocolVTable();
            if (!v103 || (v104 = *(v103 + 16)) == 0 || (v105 = *(v104 + 64)) == 0 || v105(v4, *&v100, *&v101, *&v102, *(&v102 + 1)))
            {
              onCaptionInputDo_cold_7();
              goto LABEL_205;
            }

            FigCaptionRendererNodeProtocolGetProtocolID();
            v106 = CMBaseObjectGetProtocolVTable();
            if (!v106 || (v107 = *(v106 + 16)) == 0 || (v108 = *(v107 + 8)) == 0 || v108(v4, ValueAtIndex))
            {
              onCaptionInputDo_cold_6();
              goto LABEL_205;
            }

            if (!strcmp(v144[0], "FigCaptionRendererTTMLRegion"))
            {
              v131 = 0;
              FigCaptionRendererTTMLRegionGetWritingMode(ValueAtIndex, &v131);
              v125 = v131;
              FigCaptionRendererCaptionProtocolGetProtocolID();
              v126 = CMBaseObjectGetProtocolVTable();
              if (v126)
              {
                v127 = *(v126 + 16);
                if (v127)
                {
                  v128 = *(v127 + 112);
                  if (v128)
                  {
                    v128(v4, v125);
                  }
                }
              }
            }

            v109 = *(v3 + 584);
            if (v109)
            {
              v110 = CFDictionaryGetValue(v109, ValueAtIndex);
              v111 = CFDictionaryGetValue(*(v3 + 584), v4);
              if (v110)
              {
                v112 = v111;
                if (v111)
                {
                  FigCaptionRendererOutputNodeProtocolGetProtocolID();
                  v113 = CMBaseObjectGetProtocolVTable();
                  if (!v113 || (v114 = *(v113 + 16)) == 0 || (v115 = *(v114 + 24)) == 0 || v115(v110, v112))
                  {
                    onCaptionInputDo_cold_5();
                    goto LABEL_205;
                  }

                  v131 = 0;
                  v116 = *(v3 + 1032);
                  if (v116)
                  {
                    if (CFDictionaryGetValueIfPresent(v116, @"separatedOptions", &v131))
                    {
                      v117 = v131;
                      FigCaptionRendererOutputNodeProtocolGetProtocolID();
                      v118 = CMBaseObjectGetProtocolVTable();
                      if (v118)
                      {
                        v119 = *(v118 + 16);
                        if (v119)
                        {
                          v120 = *(v119 + 184);
                          if (v120)
                          {
                            v120(v110, 0x1F0B1E858, v117);
                          }
                        }
                      }
                    }
                  }

                  if (*(v3 + 1041))
                  {
                    v121 = *(v3 + 1040);
                    FigCaptionRendererOutputNodeProtocolGetProtocolID();
                    v122 = CMBaseObjectGetProtocolVTable();
                    if (v122)
                    {
                      v123 = *(v122 + 16);
                      if (v123)
                      {
                        v124 = *(v123 + 192);
                        if (v124)
                        {
                          v124(v110, v121);
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
          v66 = v136;
          v67 = *v137;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v68 = CMBaseObjectGetProtocolVTable();
          if (!v68 || (v69 = *(v68 + 16)) == 0 || (v70 = *(v69 + 64)) == 0 || v70(v4, *&v66, *(&v66 + 1), *&v67, *(&v67 + 1)))
          {
            onCaptionInputDo_cold_18();
            goto LABEL_205;
          }

          v71 = *(v3 + 248);
          FigCaptionRendererNodeProtocolGetProtocolID();
          v72 = CMBaseObjectGetProtocolVTable();
          if (!v72 || (v73 = *(v72 + 16)) == 0 || (v74 = *(v73 + 8)) == 0 || v74(v4, v71))
          {
            onCaptionInputDo_cold_17();
            goto LABEL_205;
          }

          v75 = *(v3 + 584);
          if (v75)
          {
            v76 = CFDictionaryGetValue(v75, *(v3 + 248));
            v77 = CFDictionaryGetValue(*(v3 + 584), v4);
            if (v76)
            {
              v78 = v77;
              if (v77)
              {
                FigCaptionRendererOutputNodeProtocolGetProtocolID();
                v79 = CMBaseObjectGetProtocolVTable();
                if (!v79 || (v80 = *(v79 + 16)) == 0 || (v81 = *(v80 + 24)) == 0 || v81(v76, v78))
                {
                  onCaptionInputDo_cold_12();
                  goto LABEL_205;
                }

                value[0] = 0;
                v82 = *(v3 + 1032);
                if (v82 && CFDictionaryGetValueIfPresent(v82, @"separatedOptions", value))
                {
                  FigCaptionRendererOutputNodeSetOptions(v78, 0x1F0B1E858, value[0]);
                }

                if (*(v3 + 1041))
                {
                  FigCaptionRendererOutputNodeSetSeparated(v78, *(v3 + 1040));
                }
              }
            }
          }
        }

LABEL_94:
        if (*(v3 + 268) == 1)
        {
          v62 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
          if (v62)
          {
            v63 = v62;
            updateNodeTree(v3, v62, MEMORY[0x1E6960C70]);
            CFRelease(v63);
            v64 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            if (v64)
            {
              v65 = v64;
              *v64 = CFRetain(v3);
              v65[1] = CFRetain(values);
              renderCaptionDo(v65);
            }
          }

          else
          {
            onCaptionInputDo_cold_16();
          }
        }

        else
        {
          v83 = *(v3 + 240);
          FigCaptionRendererParentIntervalProtocolGetProtocolID();
          v84 = CMBaseObjectGetProtocolVTable();
          if (v84 && (v85 = *(v84 + 16)) != 0 && (v86 = *(v85 + 8)) != 0 && !v86(v83, v4))
          {
            if (*(v3 + 72))
            {
              v87 = *(v3 + 48);
              if (v87)
              {
                value[0] = 0;
                value[1] = 0;
                *&v133 = 0;
                FigCaptionRendererTriggerGetCurrentTime(v87, value);
                v144[0] = 0;
                v144[1] = 0;
                FigCaptionRendererIntervalProtocolGetProtocolID();
                v88 = CMBaseObjectGetProtocolVTable();
                if (v88 && (v89 = *(v88 + 16)) != 0 && (v90 = *(v89 + 8)) != 0 && !v90(v4, v144))
                {
                  *&time.value = *value;
                  time.epoch = v133;
                  v91 = CMTimeGetSeconds(&time);
                  v92 = *(v3 + 268);
                  if (v92 == 2 || v92 == 3 && (v93 = *v144 - v91, v94 = *(v3 + 104), v93 >= v94) && v93 <= (*(v3 + 112) + v94))
                  {
                    if (*(v3 + 168))
                    {
                      v95 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
                      if (v95)
                      {
                        v96 = v95;
                        *v95 = CFRetain(v3);
                        v96[1] = CFRetain(v4);
                        dispatch_async_f(*(v3 + 168), v96, renderCaptionDo);
                      }
                    }
                  }
                }

                else
                {
                  onCaptionInputDo_cold_13();
                }
              }

              else
              {
                onCaptionInputDo_cold_14();
              }
            }
          }

          else
          {
            onCaptionInputDo_cold_15();
          }
        }
      }
    }
  }

LABEL_205:
  if (values)
  {
    CFRelease(values);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}