__CFString *interruptingStreamWrapper_subEndpointAddRemoveObservingProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamInterruptingWrapper <APSubEndpointAddRemoveObservingProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t interruptingStreamWrapper_NotifySubEndpointAdded(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(DerivedStorage + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v4, a2);
}

uint64_t interruptingStreamWrapper_NotifySubEndpointRemoved(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(DerivedStorage + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v4, a2);
}

uint64_t interruptingStreamWrapper_Suspend(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Suspend_cold_1();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptingStreamWrapper_Resume(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Resume_cold_1();
  }

  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  APSDispatchAsyncFHelper();
  return 0;
}

uint64_t interruptingStreamWrapper_Flush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Flush_cold_1();
  }

  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t interruptingStreamWrapper_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_Dissociate_cold_1();
  }

  v1 = *(DerivedStorage + 8);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1);
}

void interruptingStreamWrapper_suspendAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_suspendAsync_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_suspendAsync_cold_2();
  }

  if (FigEndpointStreamSuspendSync())
  {
    interruptingStreamWrapper_suspendAsync_cold_3();
  }

  else if (APEndpointStreamInterruptibleWrapperEndInterruption())
  {
    interruptingStreamWrapper_suspendAsync_cold_4();
  }

  if (*(a1 + 16))
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

void interruptingStreamWrapper_completionCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_completionCallback_cold_1();
  }

  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24));
  v2 = *a1;

  CFRelease(v2);
}

void interruptingStreamWrapper_resumeAsync(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 30 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_resumeAsync_cold_1();
  }

  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_resumeAsync_cold_2();
  }

  if (APEndpointStreamInterruptibleWrapperBeginInterruption())
  {
    interruptingStreamWrapper_resumeAsync_cold_3();
  }

  else if (FigEndpointStreamResumeSync())
  {
    interruptingStreamWrapper_resumeAsync_cold_4();
  }

  if (*(a1 + 16))
  {
    CFRetain(*a1);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t interruptingStreamWrapper_FlushAudioDataWithinSampleRange(uint64_t a1, __int128 *a2)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_FlushAudioDataWithinSampleRange_cold_1();
  }

  v4 = *(DerivedStorage + 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v5 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return v5(v4, v10);
}

uint64_t interruptingStreamWrapper_SetRateAndAnchorTimeWithCompletionCallback(const void *a1, CMTime *a2, CMTime *a3, uint64_t a4, uint64_t a5, double a6)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    time = *a2;
    CMTimeGetSeconds(&time);
    time = *a3;
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v13 = v14;
  v13[1] = a4;
  v13[2] = a5;
  v15 = *(DerivedStorage + 8);
  *&v21.value = *&a2->value;
  v21.epoch = a2->epoch;
  v19 = *&a3->value;
  epoch = a3->epoch;
  v16 = *(CMBaseObjectGetVTable() + 24);
  if (!v16)
  {
    return 4294954514;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    return 4294954514;
  }

  time = v21;
  v22 = v19;
  v23 = epoch;
  return v17(v15, &time, &v22, interruptingStreamWrapper_setRateCompletionCallback, v13, a6);
}

uint64_t interruptingStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_copyTransportFormatDescriptionForSourceContentFormatDescription_cold_1();
  }

  v6 = *(DerivedStorage + 8);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 24) + 24);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t interruptingStreamWrapper_isPassthroughSupportedForFormatDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 10 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_isPassthroughSupportedForFormatDescription_cold_1();
  }

  v6 = *(DerivedStorage + 8);
  FigEndpointStreamAirPlayGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    v6 = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t interruptingStreamWrapper_setRateCompletionCallback(const void *a1)
{
  FigEndpointStreamAirPlayGetFigEndpointStream();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionCallback_cold_1();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  return APSDispatchAsyncFHelper();
}

void interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);
  FigEndpointStreamAirPlayGetFigEndpointStream();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch_cold_1();
  }

  if (*(v4 + 8))
  {
    CFRetain(*v4);
    APSDispatchAsyncFHelper();
  }

  if (v2)
  {
    if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    *(DerivedStorage + 40) = v3 != 0.0;
    if (interruptingStreamWrapper_yieldToInterruptibleIfNecessary())
    {
      interruptingStreamWrapper_setRateCompletionCallbackWorkDispatch_cold_2();
    }
  }

  CFRelease(*v4);
  free(v4);
  if (*a1)
  {
    CFRelease(*a1);
  }
}

void interruptingStreamWrapper_setRateCompletionClientCallback(uint64_t a1)
{
  if (gLogCategory_APEndpointStreamInterruptingWrapper <= 50 && (gLogCategory_APEndpointStreamInterruptingWrapper != -1 || _LogCategory_Initialize()))
  {
    interruptingStreamWrapper_setRateCompletionClientCallback_cold_1();
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v8 = *(a1 + 64);
  v6(v2, v3, &v9, &v7, v5, v4);
  CFRelease(*a1);
}

uint64_t APAudioHoseManagerBufferedGetClassID()
{
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  return qword_280FB1B88;
}

uint64_t audioHoseManagerBuffered_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioHoseManagerBuffered_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APAudioHoseManagerBufferedGetTypeID()
{
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  v1 = qword_280FB1B88;

  return MEMORY[0x282111A98](v1);
}

uint64_t APAudioHoseManagerBufferedCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  cf = 0;
  if (_MergedGlobals_20 != -1)
  {
    APAudioHoseManagerBufferedGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    value_low = v4;
    APAudioHoseManagerBufferedCreate_cold_2();
    goto LABEL_32;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = dispatch_queue_create("HoseManagerBufferedQueue", 0);
  *(DerivedStorage + 168) = v6;
  if (!v6)
  {
    APAudioHoseManagerBufferedCreate_cold_10(&v21);
LABEL_29:
    value_low = LODWORD(v21.value);
    goto LABEL_32;
  }

  v7 = dispatch_queue_create("HoseManagerBufferedNotificationQueue", 0);
  *(DerivedStorage + 176) = v7;
  if (!v7)
  {
    APAudioHoseManagerBufferedCreate_cold_9(&v21);
    goto LABEL_29;
  }

  *(DerivedStorage + 185) = 0;
  Mutable = CFDictionaryCreateMutable(a1, 0, 0, &hoseManagerBuffered_hoseDescriptorDictionaryCallbacks);
  *DerivedStorage = 0;
  *(DerivedStorage + 192) = Mutable;
  *(DerivedStorage + 200) = 0;
  v9 = MEMORY[0x277CC0898];
  v10 = *MEMORY[0x277CC0898];
  *(DerivedStorage + 236) = *MEMORY[0x277CC0898];
  v11 = *(v9 + 16);
  *(DerivedStorage + 252) = v11;
  *(DerivedStorage + 372) = 1;
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 36) = 0;
  *(DerivedStorage + 40) = 0;
  v20 = v10;
  *(DerivedStorage + 48) = v10;
  *(DerivedStorage + 64) = v11;
  *(DerivedStorage + 72) = FigGetCFPreferenceNumberWithDefault();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    APAudioHoseManagerBufferedCreate_cold_3();
  }

  *(DerivedStorage + 76) = v20;
  *(DerivedStorage + 92) = v11;
  *(DerivedStorage + 100) = v20;
  *(DerivedStorage + 116) = v11;
  *(DerivedStorage + 124) = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v21, CFPreferenceNumberWithDefault, 1);
  *(DerivedStorage + 128) = v21;
  *(DerivedStorage + 208) = 0;
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 188) = 0;
  *(DerivedStorage + 212) = v20;
  *(DerivedStorage + 228) = v11;
  *(DerivedStorage + 236) = v20;
  *(DerivedStorage + 252) = v11;
  *(DerivedStorage + 260) = 0;
  *(DerivedStorage + 264) = v20;
  *(DerivedStorage + 280) = v11;
  *(DerivedStorage + 288) = v20;
  *(DerivedStorage + 304) = v11;
  *(DerivedStorage + 328) = 0;
  *(DerivedStorage + 472) = FigSimpleMutexCreate();
  *(DerivedStorage + 320) = 0;
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 336) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 344) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 352) = MillisecondsToUpTicks();
  FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 360) = MillisecondsToUpTicks();
  *(DerivedStorage + 368) = FigGetCFPreferenceNumberWithDefault();
  *(DerivedStorage + 376) = v20;
  *(DerivedStorage + 392) = v11;
  v13 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v21, v13, 1);
  *(DerivedStorage + 400) = v21;
  v14 = *MEMORY[0x277CBECE8];
  v15 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 456) = v15;
  if (v15)
  {
    v16 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(DerivedStorage + 448) = v16;
    if (v16)
    {
      v17 = FigGetCFPreferenceNumberWithDefault();
      CMTimeMake(&v21, v17, 1000);
      *(DerivedStorage + 212) = v21;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        APAudioHoseManagerBufferedCreate_cold_4();
      }

      *(DerivedStorage + 208) = FigGetCFPreferenceNumberWithDefault();
      if (gLogCategory_APAudioHoseManagerBuffered <= 50)
      {
        if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
        {
          APAudioHoseManagerBufferedCreate_cold_5();
        }

        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          APAudioHoseManagerBufferedCreate_cold_6(&cf);
        }
      }

      value_low = 0;
      *a2 = cf;
      return value_low;
    }

    value_low = 4294894846;
    APAudioHoseManagerBufferedCreate_cold_7();
  }

  else
  {
    value_low = 4294894846;
    APAudioHoseManagerBufferedCreate_cold_8();
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t audioHoseManagerBuffered_Finalize(CMTime *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_Finalize_cold_1(a1);
  }

  *(CMBaseObjectGetDerivedStorage() + 36) = 1;
  dispatch_sync(*(DerivedStorage + 168), &__block_literal_global_30);
  v3 = *(DerivedStorage + 168);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 168) = 0;
  }

  dispatch_sync(*(DerivedStorage + 176), &__block_literal_global_84);
  v4 = *(DerivedStorage + 176);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 176) = 0;
  }

  v5 = *(DerivedStorage + 200);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 200) = 0;
  }

  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 160) = 0;
  }

  v7 = *(DerivedStorage + 192);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 192) = 0;
  }

  v8 = *(DerivedStorage + 440);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 440) = 0;
  }

  *(DerivedStorage + 320) = 0;
  audioHoseManagerBuffered_releaseCryptors(a1, MEMORY[0x277CC0898]);
  v9 = *(DerivedStorage + 448);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 448) = 0;
  }

  audioHoseManagerBuffered_releaseMagicCookies(a1, MEMORY[0x277CC0898]);
  v10 = *(DerivedStorage + 456);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 456) = 0;
  }

  result = FigSimpleMutexDestroy();
  *(DerivedStorage + 472) = 0;
  return result;
}

__CFString *audioHoseManagerBuffered_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioHoseManagerBuffered %p>", a1);
  return Mutable;
}

uint64_t audioHoseManagerBuffered_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    if (a4)
    {
      if (CFEqual(a2, @"ShouldUseReceiverChoosesAnchor"))
      {
        audioHoseManagerBuffered_CopyProperty_cold_1(a1, a4);
        v9 = 0;
      }

      else if (CFEqual(a2, @"IsRunning"))
      {
        CMBaseObjectGetDerivedStorage();
        v11 = 0;
        v12 = &v11;
        v13 = 0x2000000000;
        v14 = 0;
        CFDictionaryApplyBlock();
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          audioHoseManagerBuffered_CopyProperty_cold_2();
        }

        v7 = *(v12 + 24);
        _Block_object_dispose(&v11, 8);
        v8 = MEMORY[0x277CBED28];
        if (!v7)
        {
          v8 = MEMORY[0x277CBED10];
        }

        v9 = 0;
        *a4 = CFRetain(*v8);
      }

      else
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          audioHoseManagerBuffered_CopyProperty_cold_3();
        }

        v9 = 4294954509;
      }
    }

    else
    {
      v9 = 4294894845;
      audioHoseManagerBuffered_CopyProperty_cold_4();
    }
  }

  else
  {
    v9 = 4294894845;
    audioHoseManagerBuffered_CopyProperty_cold_5();
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t audioHoseManagerBuffered_SetProperty(uint64_t a1, uint64_t a2, const __CFBoolean *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v10 = 4294894845;
    audioHoseManagerBuffered_SetProperty_cold_8();
    return v10;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    if (a3 && (v8 = CFGetTypeID(a3), v8 != CFBooleanGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_1();
    }

    else
    {
      Value = CFBooleanGetValue(a3);
      v10 = 0;
      *(v7 + 185) = Value;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        v10 = 4294894845;
        audioHoseManagerBuffered_SetProperty_cold_2();
        return v10;
      }
    }

    UInt16 = FigCFNumberGetUInt16();
    block[6] = MEMORY[0x277D85DD0];
    block[7] = 0x40000000;
    block[8] = __audioHoseManagerBuffered_SetProperty_block_invoke;
    block[9] = &__block_descriptor_tmp_111;
    v25 = UInt16;
    block[10] = a1;
    CFDictionaryApplyBlock();
    return 0;
  }

  if (FigCFEqual())
  {
    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFNumberGetTypeID())
      {
        v10 = 4294894845;
        audioHoseManagerBuffered_SetProperty_cold_3();
        return v10;
      }
    }

    v14 = *(v7 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_2;
    block[3] = &__block_descriptor_tmp_112_0;
    block[4] = a1;
    block[5] = a3;
    v15 = block;
    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    if (a3 && (v17 = CFGetTypeID(a3), v17 != CFDictionaryGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_4();
    }

    else
    {
      CMTimeMakeFromDictionary(&v23, a3);
      v10 = 0;
      *(v7 + 236) = v23;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    if (a3 && (v18 = CFGetTypeID(a3), v18 != CFDictionaryGetTypeID()))
    {
      v10 = 4294894845;
      audioHoseManagerBuffered_SetProperty_cold_5();
    }

    else
    {
      CMTimeMakeFromDictionary(&v23, a3);
      v10 = 0;
      *(v7 + 264) = v23;
    }

    return v10;
  }

  if (FigCFEqual())
  {
    v14 = *(v7 + 168);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 0x40000000;
    v22[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_3;
    v22[3] = &__block_descriptor_tmp_113_0;
    v22[4] = v7;
    v22[5] = a3;
    v15 = v22;
    goto LABEL_14;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      if (a3)
      {
        v20 = CFGetTypeID(a3);
        if (v20 != CFStringGetTypeID())
        {
          v10 = 4294894845;
          audioHoseManagerBuffered_SetProperty_cold_7();
          return v10;
        }
      }

      *v7 = 0;
      CFStringGetCString(a3, v7, 36, 0x600u);
      return 0;
    }

    if (!FigCFEqual())
    {
      return 4294954509;
    }

    v14 = *(v7 + 168);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = __audioHoseManagerBuffered_SetProperty_block_invoke_4;
    v21[3] = &__block_descriptor_tmp_114_1;
    v21[4] = v7;
    v21[5] = a3;
    v15 = v21;
LABEL_14:
    dispatch_sync(v14, v15);
    return 0;
  }

  if (a3 && (v19 = CFGetTypeID(a3), v19 != CFDictionaryGetTypeID()))
  {
    v10 = 4294894845;
    audioHoseManagerBuffered_SetProperty_cold_6();
  }

  else
  {
    CMTimeMakeFromDictionary(&v23, a3);
    v10 = 0;
    *(v7 + 288) = v23;
  }

  return v10;
}

void audioHoseManagerBuffered_handleCryptorKeyUpdated(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_1();
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *v8 = v9;
    if (a4)
    {
      v10 = CFRetain(a4);
    }

    else
    {
      v10 = 0;
    }

    v8[1] = v10;
    v11 = *(DerivedStorage + 168);

    dispatch_async_f(v11, v8, audioHoseManagerBuffered_handleCryptorKeyUpdatedInternal);
  }

  else
  {
    audioHoseManagerBuffered_handleCryptorKeyUpdated_cold_2();
  }
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHoses(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2000000000;
  v12 = 0;
  CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (a2)
  {
    CryptorIDForCryptor = audioHoseManagerBuffered_getCryptorIDForCryptor(a2);
    v7[3] = CryptorIDForCryptor;
    CFDictionaryApplyBlock();
    v4 = *(v11[0] + 24);
  }

  else
  {
    audioHoseManagerBuffered_setCryptorForAllHoses_cold_1(v11);
    v4 = 4294894845;
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (v9)
  {
    v10 = v9;
    if (a4)
    {
      v11 = CFRetain(a4);
    }

    else
    {
      v11 = 0;
    }

    *v10 = v11;
    v10[1] = a1;
    v10[2] = a2;
    *(v10 + 6) = a3;
    dispatch_async_f(*(DerivedStorage + 168), v10, audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandler_cold_1();
    return 4294894846;
  }
}

void audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(DerivedStorage + 192), a1[1]);
  if (!Value)
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_4();
    goto LABEL_16;
  }

  v4 = Value;
  v5 = *(a1 + 6);
  if (!v5)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_1(a1);
    }

    goto LABEL_15;
  }

  if (v5 != 200501)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_3();
    }

LABEL_15:
    v4[176] = 1;
    goto LABEL_16;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetCryptorCallbackCompletionHandlerInternal_cold_2();
  }

LABEL_16:
  v6 = *a1;
  if (*a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __audioHoseManagerBuffered_releaseAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_98;
    block[4] = v6;
    dispatch_async(global_queue, block);
  }

  free(a1);
}

uint64_t __audioHoseManagerBuffered_shouldUseReceiverChoosesAnchor_block_invoke(uint64_t a1)
{
  result = APSGetFBOPropertyInt64();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    result = APSGetFBOPropertyInt64();
    v3 = result != 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

uint64_t __audioHoseManagerBuffered_isRunning_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 92))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  v5 = *a3;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, *MEMORY[0x277CC18E0], 0, &cf);
    v7 = cf;
    if (!*(a3 + 8) && cf)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_1(a1);
      }

      v8 = *a3;
      v9 = *(a1 + 48);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v11 = *(ProtocolVTable + 16)) != 0)
      {
        v12 = *(v11 + 112);
        if (v12)
        {
          v13 = v12(v8, v9);
        }

        else
        {
          v13 = -12782;
        }
      }

      else
      {
        v13 = -12788;
      }

      *(*(*(a1 + 32) + 8) + 24) = v13;
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __audioHoseManagerBuffered_setLoudnessNormalizationOnAllHoses_block_invoke_cold_2();
      }

      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

__CFString *hoseManagerBuffered_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APAudioHoseManagerBuffered <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarRegisterHose(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_1();
  }

  if (CFDictionaryGetValue(*(DerivedStorage + 192), a2))
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_2(&value);
    value_low = value;
    goto LABEL_69;
  }

  v8 = CMBaseObjectGetDerivedStorage();
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  if (!CFDictionaryContainsKey(*(v8 + 192), a2))
  {
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    value = v9;
    LOWORD(v37) = 256;
    *&v38[0] = 0;
    *(&v37 + 1) = mach_absolute_time();
    *(v38 + 8) = *MEMORY[0x277CC08F0];
    *(&v38[1] + 1) = *(MEMORY[0x277CC08F0] + 16);
    *&v39 = 0;
    BYTE8(v44) = 0;
    v49.value = 0;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      LOBYTE(v35) = 0;
LABEL_16:
      v14 = *(v8 + 480);
      *(v8 + 480) = v14 + 1;
      LODWORD(v48) = v14;
      *(&v48 + 1) = 0;
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15)
      {
        v15(a2, *MEMORY[0x277CE9FD0], *MEMORY[0x277CBECE8], &v47 + 8);
      }

      CFDictionaryAddValue(*(v8 + 192), a2, &value);
      if (CFDictionaryGetCount(*(v8 + 192)) > *(v8 + 484))
      {
        *(v8 + 484) = CFDictionaryGetCount(*(v8 + 192));
      }

      goto LABEL_20;
    }

    v11 = v10(a2, *MEMORY[0x277CC1878], 0, &v49);
    v12 = v49.value;
    if (v11)
    {
      v13 = 0;
      if (!v49.value)
      {
LABEL_13:
        LOBYTE(v35) = v13;
        if (v13)
        {
          *(v8 + 184) = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v13 = FigCFEqual() != 0;
      v12 = v49.value;
      if (!v49.value)
      {
        goto LABEL_13;
      }
    }

    CFRelease(v12);
    goto LABEL_13;
  }

  if ((audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_3(&value, &v49) & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_20:
  v16 = CFDictionaryGetValue(*(DerivedStorage + 192), a2);
  if (!v16)
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_11(&v49);
LABEL_92:
    value_low = LODWORD(v49.value);
    goto LABEL_69;
  }

  v17 = v16;
  if (CFDictionaryGetInt64())
  {
    *(DerivedStorage + 187) = 1;
    audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses();
  }

  if (*(DerivedStorage + 187))
  {
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v18)
    {
      v18(a2, *MEMORY[0x277CEA0C0], *MEMORY[0x277CBED28]);
    }
  }

  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v19)
  {
    value_low = 4294954514;
LABEL_57:
    APSLogErrorAt();
    goto LABEL_69;
  }

  v20 = v19(a2, *MEMORY[0x277CE9F58], 0, &cf);
  if (v20)
  {
    value_low = v20;
    goto LABEL_57;
  }

  if (cf && (v21 = CFGetTypeID(cf), v21 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    v22 = *(DerivedStorage + 44) * valuePtr / 0x64;
    if (*(DerivedStorage + 40) < v22)
    {
      v22 = *(DerivedStorage + 40);
    }

    *(v17 + 27) = valuePtr - v22;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_4();
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(&v49, CFPreferenceNumberWithDefault, 1);
    *(v17 + 116) = v49;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_5();
    }

    *(v17 + 28) = *(DerivedStorage + 72) * valuePtr / 0x64;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_6();
    }

    audioHoseManagerBuffered_updateStartWatermarkTime(a1, a2);
    v24 = valuePtr;
    if (*(DerivedStorage + 124) < valuePtr)
    {
      if (valuePtr >= 0x753000)
      {
        v24 = 7680000;
      }

      *(DerivedStorage + 124) = v24;
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_7();
      }
    }

    v25 = *(DerivedStorage + 188);
    if (v25)
    {
      v25 = APSIsFBOPropertyAvailable() != 0;
    }

    v17[9] = v25;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_8();
      }

      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        CFDictionaryGetCount(*(DerivedStorage + 192));
        LogPrintF();
      }
    }

    CMBaseObjectGetDerivedStorage();
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2000000000;
    v54[3] = 0;
    if (a2)
    {
      v49.value = MEMORY[0x277D85DD0];
      *&v49.timescale = 0x40000000;
      v49.epoch = __audioHoseManagerBuffered_setAllCryptorsForSingleHose_block_invoke;
      v50 = &unk_2784A02B8;
      v51 = v54;
      v52 = a1;
      v53 = a2;
      CFDictionaryApplyBlock();
    }

    _Block_object_dispose(v54, 8);
    if (*(CMBaseObjectGetDerivedStorage() + 186))
    {
      v49.value = MEMORY[0x277D85DD0];
      *&v49.timescale = 0x40000000;
      v49.epoch = __audioHoseManagerBuffered_setAllMagicCookiesForSingleHose_block_invoke;
      v50 = &__block_descriptor_tmp_190_1;
      v51 = a2;
      v52 = a1;
      CFDictionaryApplyBlock();
    }

    if (v17[8] || !*(DerivedStorage + 186))
    {
      value_low = 0;
    }

    else
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_9();
      }

      v28 = *(DerivedStorage + 185);
      APSEndpointStreamAudioHoseProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v30 = *(ProtocolVTable + 16)) != 0)
      {
        v31 = *(v30 + 112);
        if (v31)
        {
          value_low = v31(a2, v28);
        }

        else
        {
          value_low = 4294954514;
        }
      }

      else
      {
        value_low = 4294954508;
      }
    }

    *a4 = &audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_callbacks;
  }

  else
  {
    audioHoseManagerBuffered_audioHoseRegistrarRegisterHose_cold_10();
    value_low = 4294960540;
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

uint64_t audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_1();
  }

  if (CFDictionaryContainsKey(*(DerivedStorage + 192), a2))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors(a1, a2);
    if (CFDictionaryGetInt64())
    {
      *(DerivedStorage + 187) = 0;
      audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses();
    }
  }

  else
  {
    audioHoseManagerBuffered_audioHoseRegistrarDeregisterHose_cold_2();
  }

  return 0;
}

uint64_t audioHoseManagerBuffered_CopyAudioDataBBufsForHose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  context[3] = a4;
  context[4] = &v26;
  if (!a2)
  {
    v23 = 4294894845;
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_7();
    return v23;
  }

  if (!a3)
  {
    v23 = 4294894845;
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_6();
    return v23;
  }

  v9 = DerivedStorage;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_1(a1);
  }

  dispatch_sync_f(*(v9 + 168), context, audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal);
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  LODWORD(v56) = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = -1;
  v11 = mach_absolute_time();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2000000000;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2000000000;
  v42 = 0;
  v12 = *(v10 + 260) == 0;
  if (!*(v10 + 328))
  {
    v13 = v11;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_2(a1);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 0x40000000;
    v29 = __audioHoseManagerBuffered_UpdateHosesPrimed_block_invoke;
    v30 = &unk_2784A0248;
    v37 = v10;
    v38 = a1;
    v31 = &v45;
    v32 = v43;
    v40 = v12;
    v39 = v13;
    v33 = v41;
    v34 = &v53;
    v35 = &v49;
    v36 = a1;
    CFDictionaryApplyBlock();
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      CFDictionaryGetCount(*(v10 + 192));
      LogPrintF();
    }
  }

  v14 = *(v54 + 6);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  v15 = CMBaseObjectGetDerivedStorage();
  Count = CFDictionaryGetCount(*(v15 + 192));
  if (!*(v15 + 328))
  {
    v17 = Count;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_3(a1);
    }

    if (v17 == v14)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_4(a1);
      }

LABEL_37:
      *(v15 + 328) = 1;
      goto LABEL_38;
    }

    if (v17 * *(v15 + 368) <= 100 * v14)
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        LogPrintF();
      }

      goto LABEL_37;
    }
  }

LABEL_38:
  v18 = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v19 = mach_absolute_time();
  if (*(v18 + 328))
  {
    v20 = v19;
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_CopyAudioDataBBufsForHose_cold_5(a1);
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 0x40000000;
    v29 = __audioHoseManagerBuffered_UpdateHoseReadiness_block_invoke;
    v30 = &unk_2784A0270;
    LODWORD(v37) = 0;
    v31 = &v49;
    v32 = &v45;
    v33 = &v53;
    v34 = v18;
    v35 = a1;
    v36 = v20;
    CFDictionaryApplyBlock();
  }

  v21 = v54[3];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = v50[3];
  if (v22)
  {
    CFRelease(v22);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  FigSimpleMutexUnlock();
  return v26;
}

double audioHoseManagerBuffered_updateStartWatermarkTime(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = **&MEMORY[0x277CC0898];
  v11 = v12;
  if (CFDictionaryGetValue(*(DerivedStorage + 192), a2))
  {
    CFDictionaryGetCount(*(DerivedStorage + 192));
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v12, CFPreferenceNumberWithDefault, 1000);
  v6 = FigGetCFPreferenceNumberWithDefault();
  CMTimeMake(&v11, v6, 1000);
  time1 = v12;
  time2 = *(DerivedStorage + 48);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time1 = *(DerivedStorage + 48);
    CMTimeGetSeconds(&time1);
    time1 = v12;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  v7 = (DerivedStorage + 376);
  time1 = v11;
  time2 = *(DerivedStorage + 376);
  if (CMTimeCompare(&time1, &time2) && gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    *&time1.value = *v7;
    time1.epoch = *(DerivedStorage + 392);
    CMTimeGetSeconds(&time1);
    time1 = v11;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  *(DerivedStorage + 48) = v12;
  result = *&v11.value;
  *v7 = *&v11.value;
  *(DerivedStorage + 392) = v11.epoch;
  return result;
}

void audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], *(DerivedStorage + 208), MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_8();
    v44 = -72450;
    goto LABEL_100;
  }

  v5 = Mutable;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = MEMORY[0x277CC0898];
  v10 = *MEMORY[0x277CC0898];
  v62 = *MEMORY[0x277CC0898];
  v53 = *(MEMORY[0x277CC0898] + 8);
  timescale = v53;
  v51 = *MEMORY[0x277CC08F0];
  *&v54.value = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  v54.epoch = v11;
  if (*(v8 + 36))
  {
    goto LABEL_14;
  }

  v12 = v8;
  Value = CFDictionaryGetValue(*(v8 + 192), v7);
  if (!Value)
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_7(v6, v7, &time1);
    v15 = time1.value;
    goto LABEL_98;
  }

  v14 = Value;
  if (Value[36] >= 1)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_6();
    }

    v15 = 0;
    *(v14 + 41) = 1;
    goto LABEL_98;
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_1();
  }

  v16 = (v14 + 10);
  if (*(v14 + 40))
  {
    audioHoseManagerBuffered_logForSendRate(v6, v14, 0);
LABEL_14:
    v15 = 0;
    goto LABEL_98;
  }

  if (gLogCategory_APAudioHoseManagerBuffered > 50)
  {
    goto LABEL_23;
  }

  if (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize())
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_2();
  }

  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_3(v6, (v14 + 10), v12);
  }

  if (!*v16)
  {
LABEL_23:
    v45 = v11;
    structureAllocator = v3;
    v48 = a1;
    v17 = 0;
    v46 = *(v9 + 12);
    v52 = *(v9 + 16);
    v18 = &unk_27CFF1000;
    v49 = v10;
    while (1)
    {
      if (!*(v12 + 208) || CFArrayGetCount(v5) >= *(v12 + 208))
      {
        if ((*(v12 + 224) & 1) == 0)
        {
          goto LABEL_86;
        }

        time1 = v54;
        time2 = *(v12 + 212);
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_86;
        }
      }

      if (v17)
      {
        CFRelease(v17);
      }

      v19 = v5;
      v20 = CMBaseObjectGetDerivedStorage();
      *&v59.value = *v9;
      v59.epoch = v52;
      v50 = *&v59.value;
      *&v58.value = *&v59.value;
      v58.epoch = v52;
      v56 = 0;
      blockBufferOut = 0;
      v21 = v18[718];
      if (v21 <= 50 && (v21 != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_4(v6 == 0);
      }

      v62 = v10;
      timescale = v53;
      v22 = *(v20 + 264);
      v23 = *(v20 + 272);
      v65 = *(v20 + 284);
      v64 = *(v20 + 276);
      MessageAtIndex = APMessageRingBufferedGetMessageAtIndex();
      if (MessageAtIndex)
      {
        break;
      }

      *&time1.value = v50;
      time1.epoch = v52;
      APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(v20 + 200), &v56, &time1);
      v28 = v18[718];
      if (v28 <= 50 && (v28 != -1 || _LogCategory_Initialize()))
      {
        if (v6)
        {
          CMBaseObjectGetDerivedStorage();
        }

        time2.value = v22;
        time2.timescale = v23;
        *&time2.flags = v64;
        HIDWORD(time2.epoch) = v65;
        CMTimeGetSeconds(&time2);
        time2 = time1;
        CMTimeGetSeconds(&time2);
        LogPrintF();
      }

      v17 = 0;
      flags = v46;
      v40 = v52;
      v5 = v19;
      a1 = v48;
LABEL_75:
      v9 = MEMORY[0x277CC0898];
      v10 = v49;
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      if (!v17)
      {
        v16 = (v14 + 10);
        goto LABEL_85;
      }

      if (flags)
      {
        time1 = v54;
        time2.value = v62;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = v40;
        CMTimeAdd(&v54, &time1, &time2);
      }

      CFArrayAppendValue(v5, v17);
      v16 = (v14 + 10);
      v18 = &unk_27CFF1000;
      if (*(v14 + 40))
      {
        goto LABEL_86;
      }
    }

    v25 = MessageAtIndex;
    DataLength = CMBlockBufferGetDataLength(MessageAtIndex);
    CMBlockBufferCreateWithBufferReference(structureAllocator, v25, 0, DataLength, 0, &blockBufferOut);
    *(v14 + 7) += DataLength;
    time2 = v59;
    rhs.value = v22;
    rhs.timescale = v23;
    *&rhs.flags = v64;
    HIDWORD(rhs.epoch) = v65;
    CMTimeSubtract(&time1, &time2, &rhs);
    *(v14 + 16) = time1;
    if (v58.flags)
    {
      time2 = *(v14 + 16);
      rhs = v58;
      CMTimeAdd(&time1, &time2, &rhs);
      *(v14 + 4) = *&time1.value;
      epoch = time1.epoch;
    }

    else
    {
      *(v14 + 4) = v51;
      epoch = v45;
    }

    *(v14 + 10) = epoch;
    v5 = v19;
    v14[3] = HIDWORD(v56);
    v29 = v59.epoch;
    *(v14 + 1) = *&v59.value;
    *(v14 + 4) = v29;
    ++*(v14 + 12);
    LOWORD(v29) = *(v14 + 5) + 1;
    *(v14 + 5) = v29;
    APMessageRingBufferedGetByteCountAtIndex(*(v20 + 200), v29, v14 + 22);
    v35 = v18[718];
    a1 = v48;
    if (v35 <= 50 && (v35 != -1 || _LogCategory_Initialize()))
    {
      if (v6)
      {
        CMBaseObjectGetDerivedStorage();
      }

      time1 = *(v14 + 16);
      CMTimeGetSeconds(&time1);
      time1 = *(v14 + 29);
      CMTimeGetSeconds(&time1);
      LogPrintF();
      v18 = &unk_27CFF1000;
    }

    v36 = 0;
    if (v14[22] < v14[27])
    {
      time1 = *(v14 + 16);
      time2 = *(v14 + 29);
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        v36 = 1;
      }
    }

    v37 = v18[718];
    if (v37 <= 50 && (v37 != -1 || _LogCategory_Initialize()))
    {
      if (v6)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LogPrintF();
      if (v36)
      {
        goto LABEL_71;
      }
    }

    else if (v36)
    {
      goto LABEL_71;
    }

    *(v14 + 20) = 257;
    v38 = v18[718];
    if (v38 > 50)
    {
LABEL_74:
      v17 = blockBufferOut;
      blockBufferOut = 0;
      v62 = v58.value;
      flags = v58.flags;
      timescale = v58.timescale;
      v40 = v58.epoch;
      audioHoseManagerBuffered_logForSendRate(v6, v14, DataLength);
      goto LABEL_75;
    }

    if (v38 != -1 || _LogCategory_Initialize())
    {
      if (v6)
      {
        CMBaseObjectGetDerivedStorage();
      }

      time1 = v59;
      CMTimeGetSeconds(&time1);
      time1 = *(v14 + 16);
      CMTimeGetSeconds(&time1);
      LogPrintF();
      v18 = &unk_27CFF1000;
    }

LABEL_71:
    v41 = v18[718];
    if (v41 <= 50 && (v41 != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_copyAudioDataBBufDispatchInternal_cold_5(v6 == 0, (v14 + 16), v6, v30, v31, v32, v33, v34);
    }

    goto LABEL_74;
  }

  v17 = 0;
LABEL_85:
  v18 = &unk_27CFF1000;
LABEL_86:
  v42 = v18[718];
  if (v42 <= 50 && (v42 != -1 || _LogCategory_Initialize()))
  {
    if (v6)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time1 = *(v12 + 236);
    CMTimeGetSeconds(&time1);
    time1 = *(v14 + 4);
    CMTimeGetSeconds(&time1);
    CFArrayGetCount(v5);
    LogPrintF();
  }

  if ((*(v12 + 248) & 1) == 0 || (time1 = *(v12 + 236), time2 = *(v14 + 4), CMTimeCompare(&time1, &time2)))
  {
    v15 = *v16;
    if (!v17)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v15 = 1;
  if (v17)
  {
LABEL_97:
    CFRelease(v17);
  }

LABEL_98:
  **(a1 + 16) = v5;
  v43 = *(a1 + 24);
  v44 = 0;
  if (v43)
  {
    *v43 = v15;
  }

LABEL_100:
  **(a1 + 32) = v44;
}

void audioHoseManagerBuffered_logForSendRate(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = mach_absolute_time();
  v8 = v7;
  v16 = *MEMORY[0x277CC0898];
  v17 = *(MEMORY[0x277CC0898] + 16);
  if (a2[1].i8[0])
  {
    v9 = 10000;
  }

  else
  {
    v9 = 100;
  }

  if (a2[5].i8[0])
  {
    if (!a2[27].i8[0])
    {
      v10 = UpTicksToMilliseconds();
      v11 = UpTicksToMilliseconds();
      if (v10 && v11 != 0)
      {
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LogPrintF();
        }

        a2[25] = 0;
        a2[26] = 0;
        a2[27].i8[0] = 1;
      }
    }
  }

  else
  {
    a2[26] = vadd_s32(a2[26], 0x100000001);
    *&a2[25] += a3;
    if (a2[27].i8[0])
    {
      a2[23] = v7;
      a2[24] = v7;
      a2[27].i8[0] = 0;
    }

    else
    {
      if (!*&a2[23])
      {
        a2[23] = v7;
        a2[24] = v7;
      }

      v13 = UpTicksToMilliseconds();
      v14 = UpTicksToMilliseconds();
      if (v13 && v14 && v13 >= v9)
      {
        v19 = *(DerivedStorage + 264);
        v18 = *a2[2].i8;
        audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose(a1, a2, &v16);
        if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          time = v18;
          CMTimeGetSeconds(&time);
          *&time.value = v16;
          time.epoch = v17;
          CMTimeGetSeconds(&time);
          time = v19;
          CMTimeGetSeconds(&time);
          LogPrintF();
        }

        a2[26].i32[0] = 0;
        a2[24] = v8;
        a2[25] = 0;
      }
    }
  }
}

__n128 audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = **&MEMORY[0x277CC0898];
  v19 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_1(a1, a2, DerivedStorage);
  }

  if (!*(a2 + 9) || !APMessageRingBufferedGetUsedCount(*(DerivedStorage + 200)) || (*(a2 + 28) & 1) == 0)
  {
    goto LABEL_29;
  }

  v7 = *a2;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || v8(v7, *MEMORY[0x277CE9FC0], *MEMORY[0x277CBECE8], &v19))
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_5();
    goto LABEL_29;
  }

  if (!v19)
  {
    goto LABEL_25;
  }

  if (*(DerivedStorage + 186))
  {
    if (APSAPAPBBufDecodeHeader())
    {
      audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_2();
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (APSTransportMessageGetBufferedAudioDataTimestamp())
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_3();
    goto LABEL_29;
  }

  if (APSTransportMessageGetBufferedAudioDataExtendedSequenceNumber())
  {
    audioHoseManagerBuffered_getLastDeliveredRemoteMediaTimeForHose_cold_4();
LABEL_29:
    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_25;
  }

  CMTimeMake(&v18, *(a2 + 16) + (v17 - *(a2 + 16)), *(a2 + 24));
LABEL_16:
  APMessageRingBufferedGetFirstValidReadIndex(*(DerivedStorage + 200), &v15 + 1);
  if (((HIDWORD(v15) - v16) & 0x800000) == 0 && ((HIDWORD(v15) ^ v16) & 0xFFFFFF) != 0)
  {
    goto LABEL_29;
  }

  APMessageRingBufferedGetLastValidReadIndexAndTimestamp(*(DerivedStorage + 200), &v15, 0);
  if (((v15 - v16) & 0x800000) != 0 && ((v15 ^ v16) & 0xFFFFFF) != 0)
  {
    goto LABEL_29;
  }

  v9 = *(a2 + 12);
  if (((v9 - v16) & 0x800000) != 0 && ((v9 ^ v16) & 0xFFFFFF) != 0)
  {
    goto LABEL_29;
  }

  time1 = v18;
  v13 = *(a2 + 16);
  v10 = CMTimeCompare(&time1, &v13);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v10 <= 0)
  {
    v11 = &v18;
    goto LABEL_27;
  }

LABEL_25:
  v11 = MEMORY[0x277CC0898];
LABEL_27:
  result = *v11;
  *a3 = *v11;
  a3[1].n128_u64[0] = v11[1].n128_u64[0];
  return result;
}

uint64_t audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered > 50 || gLogCategory_APAudioHoseManagerBuffered == -1 && !_LogCategory_Initialize())
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_14:
    audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_3();
    return a2;
  }

  audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_1(a1);
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_5:
  a2 = *(a2 + 88) >= *(a2 + 108) || (audioHoseManagerBuffered_getBufferLevelTimeEstimateForHoseStartup(), v6 = *(DerivedStorage + 48), CMTimeCompare(&time1, &v6) >= 1);
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseBufferedToStartHighWaterMark_cold_2(a1);
  }

  return a2;
}

uint64_t __audioHoseManagerBuffered_setEchoCancellationIsEnabledToAllHoses_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(a1 + 32))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = *MEMORY[0x277CEA0C0];
    v10 = *v4;

    return v8(v3, v9, v10);
  }

  return result;
}

uint64_t audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200401C4E69EBuLL);
  if (v9)
  {
    *v9 = a4;
    v9[1] = a1;
    v9[2] = a2;
    *(v9 + 6) = a3;
    dispatch_async_f(*(DerivedStorage + 168), v9, audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandler_cold_1();
    return 4294894846;
  }
}

void audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetValue(*(DerivedStorage + 192), *(a1 + 8)))
  {
    if (*(a1 + 24))
    {
      if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
      {
        audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_1(a1);
      }
    }

    else if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
    {
      audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_2(a1);
    }
  }

  else
  {
    audioHoseManagerBuffered_hoseSetMagicCookieCallbackCompletionHandlerInternal_cold_3();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void audioHoseManagerBuffered_removeHoseFromDescriptors(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryRemoveValue(*(DerivedStorage + 192), a2);
  if (gLogCategory_APAudioHoseManagerBuffered <= 40 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors_cold_1();
  }

  audioHoseManagerBuffered_updateStartWatermarkTime(a1, a2);
  v5 = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  CFPreferenceNumberWithDefault = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  CFDictionaryApplyBlock();
  v6 = *(v8 + 6);
  if (v6 >= 0x753000)
  {
    v6 = 7680000;
  }

  *(v5 + 124) = v6;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_removeHoseFromDescriptors_cold_2();
  }

  _Block_object_dispose(&v7, 8);
}

void __audioHoseManagerBuffered_updateMaxAudioToBufferBytes_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  valuePtr = 0;
  v4 = *a3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(v4, *MEMORY[0x277CE9F58], 0, &cf);
    v7 = cf;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = cf == 0;
    }

    if (!v8)
    {
      v9 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      v7 = cf;
      if (v9 == TypeID)
      {
        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        v11 = *(*(a1 + 32) + 8);
        v12 = *(v11 + 24);
        if (v12 <= valuePtr)
        {
          v12 = valuePtr;
        }

        *(v11 + 24) = v12;
        v7 = cf;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

uint64_t audioHoseManagerBuffered_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = MEMORY[0x277CC0898];
  *(DerivedStorage + 236) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 252) = *(v1 + 16);
  CFDictionaryApplyBlock();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_FlushWithinSampleRange(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_FlushWithinSampleRange_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_WakeUpHoses(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_WakeUpHoses_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_NotifyHosesDataAvailable(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_NotifyHosesDataAvailable_cold_1(a1);
  }

  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_SetRateAndAnchorTime(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_SetRateAndAnchorTime_cold_1(a1);
  }

  FigSimpleMutexLock();
  CFDictionaryApplyBlock();
  *(DerivedStorage + 260) = a2;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_SetRate(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_SetRate_cold_1();
  }

  if (CFDictionaryGetCount(*(DerivedStorage + 192)) == 1)
  {
    *(DerivedStorage + 260) = a2;
    CFDictionaryApplyBlock();
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_SetRate_cold_2(&v5);
    return v5;
  }
}

uint64_t audioHoseManagerBuffered_GetAudioToBufferTimes(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = **&MEMORY[0x277CC0898];
  v17 = *MEMORY[0x277CC08F0];
  *&v24.value = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  v24.epoch = v7;
  v22 = *(DerivedStorage + 100);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3000000000;
  v21 = v25;
  v23 = *(DerivedStorage + 264);
  Count = CFDictionaryGetCount(*(DerivedStorage + 192));
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_GetAudioToBufferTimes_cold_1(a1);
  }

  if (Count == 1)
  {
    v10 = CMBaseObjectGetDerivedStorage();
    rhs.value = 0;
    *&rhs.timescale = &rhs;
    rhs.epoch = 0x2000000000;
    v30 = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetCount(*(v10 + 192)) == 1)
    {
      time.value = MEMORY[0x277D85DD0];
      *&time.timescale = 0x40000000;
      time.epoch = __audioHoseManagerBuffered_SingularHoseIsLocal_block_invoke;
      v27 = &unk_2784A0460;
      p_rhs = &rhs;
      CFDictionaryApplyBlock();
    }

    else
    {
      audioHoseManagerBuffered_GetAudioToBufferTimes_cold_2();
    }

    FigSimpleMutexUnlock();
    v11 = *(*&rhs.timescale + 24);
    _Block_object_dispose(&rhs, 8);
    if (v11)
    {
      CMTimeMake(&v25, 18, 1);
LABEL_13:
      CFDictionaryApplyBlock();
      goto LABEL_14;
    }

LABEL_12:
    CMTimeMake(&v25, 125, 1);
    v12 = v19;
    v13 = MEMORY[0x277CC08B0];
    *&v19[1].value = *MEMORY[0x277CC08B0];
    v12[1].epoch = *(v13 + 16);
    goto LABEL_13;
  }

  if (Count)
  {
    if (Count < 1)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  CMTimeMake(&v25, 18, 1);
  v9 = v19;
  *&v19[1].value = v17;
  v9[1].epoch = v7;
LABEL_14:
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time = v25;
    CMTimeGetSeconds(&time);
    time = v19[1];
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  *(DerivedStorage + 76) = v25;
  time = v19[1];
  rhs = *(DerivedStorage + 400);
  CMTimeAdd(&v24, &time, &rhs);
  time = v24;
  rhs = *(DerivedStorage + 128);
  if (CMTimeCompare(&time, &rhs) < 0 || (time = v23, *&rhs.value = v17, rhs.epoch = v7, CMTimeCompare(&time, &rhs) <= 0))
  {
    *(DerivedStorage + 100) = *(DerivedStorage + 128);
    epoch = *(DerivedStorage + 144);
  }

  else
  {
    *(DerivedStorage + 100) = *&v24.value;
    epoch = v24.epoch;
  }

  *(DerivedStorage + 116) = epoch;
  time = v22;
  rhs = *(DerivedStorage + 100);
  if (CMTimeCompare(&time, &rhs) && gLogCategory_APAudioHoseManagerBuffered <= 30 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    if (a1)
    {
      CMBaseObjectGetDerivedStorage();
    }

    time = *(DerivedStorage + 76);
    CMTimeGetSeconds(&time);
    time = *(DerivedStorage + 100);
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  *a2 = v25;
  v15 = v19[1].epoch;
  *a3 = *&v19[1].value;
  *(a3 + 16) = v15;
  _Block_object_dispose(&v18, 8);
  return 0;
}

uint64_t audioHoseManagerBuffered_SetCryptor(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    context[0] = 0;
    context[1] = a1;
    context[2] = a2;
    dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_setCryptorForAllHosesDispatch);
    return LODWORD(context[0]);
  }

  else
  {
    audioHoseManagerBuffered_SetCryptor_cold_1();
    return 4294894845;
  }
}

uint64_t audioHoseManagerBuffered_AddCryptorToJar(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *MEMORY[0x277CBECE8];
  time = *a3;
  v8 = CMTimeCopyAsDictionary(&time, v7);
  v9 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_AddCryptorToJar_block_invoke;
  block[3] = &unk_2784A04B0;
  block[4] = &v14;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  block[8] = v8;
  dispatch_sync(v9, block);
  if (v8)
  {
    CFRelease(v8);
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

uint64_t audioHoseManagerBuffered_AddMagicCookieToJar(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x277CBECE8];
  time = *a3;
  v7 = CMTimeCopyAsDictionary(&time, v6);
  v8 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_AddMagicCookieToJar_block_invoke;
  block[3] = &__block_descriptor_tmp_264;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = v7;
  dispatch_sync(v8, block);
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t audioHoseManagerBuffered_ReleaseOldCryptorAndMagicCookie(uint64_t a1, __int128 *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_ReleaseOldCryptorAndMagicCookie_block_invoke;
  block[3] = &unk_2784A04F8;
  block[4] = &v10;
  block[5] = a1;
  v8 = *a2;
  v9 = *(a2 + 2);
  dispatch_sync(v4, block);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t audioHoseManagerBuffered_ApplyVolumeFade()
{
  CMBaseObjectGetDerivedStorage();
  CFDictionaryApplyBlock();
  return 0;
}

uint64_t audioHoseManagerBuffered_Suspend(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_Suspend_cold_1(a1);
  }

  v3 = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(v3 + 192)) <= 0)
  {
    audioHoseManagerBuffered_Suspend_cold_2();
  }

  else
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = __audioHoseManagerBuffered_deregisterAllHoses_block_invoke;
    v15 = &__block_descriptor_tmp_273_0;
    v16 = a1;
    CFDictionaryApplyBlock();
  }

  *(v9 + 6) = 0;
  *(DerivedStorage + 320) = 0;
  *(DerivedStorage + 328) = 0;
  v4 = *(DerivedStorage + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioHoseManagerBuffered_Suspend_block_invoke;
  block[3] = &unk_2784A0540;
  block[4] = &v8;
  block[5] = a1;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t audioHoseManagerBuffered_hoseFlushCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, unsigned int a4, const void *a5)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a5;
  context[1] = a1;
  v13 = a2;
  *v14 = *a3;
  *&v14[12] = *(a3 + 12);
  v16 = &v17;
  v15 = a4;
  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseFlushCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v17;
}

uint64_t audioHoseManagerBuffered_getHoseDecriptorFromHose()
{
  CMBaseObjectGetDerivedStorage();
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  CFDictionaryApplyBlock();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t __audioHoseManagerBuffered_getHoseDecriptorFromHose_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = FigCFEqual();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  return result;
}

uint64_t audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, int a4, _OWORD *a5, unsigned int a6, const void *a7)
{
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  context[0] = a7;
  context[1] = a1;
  v17 = a2;
  *v18 = *a3;
  *&v18[12] = *(a3 + 12);
  v19 = a4;
  *v20 = *a5;
  *&v20[12] = *(a5 + 12);
  v22 = &v23;
  v21 = a6;
  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseFlushWithinSampleRangeCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v23;
}

uint64_t audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler(const void *a1, int a2, _OWORD *a3, __int128 *a4, _OWORD *a5, uint64_t a6, int a7, const void *a8)
{
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v23[24], 0, 32);
  context[0] = a8;
  context[1] = a1;
  v20 = a2;
  *v21 = *a3;
  v17 = *a4;
  *&v21[3] = *(a3 + 12);
  *&v21[7] = v17;
  v22 = *(a4 + 2);
  *v23 = *a5;
  *&v23[12] = *(a5 + 12);
  *&v23[48] = *(a6 + 16);
  v24 = 0;
  *&v23[32] = *a6;
  LODWORD(v24) = a7;
  v25 = &v26;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandler_cold_1(a8);
  }

  dispatch_sync_f(*(DerivedStorage + 168), context, audioHoseManagerBuffered_hoseSetRateAndAnchorTimeCallbackCompletionHandlerInternal);
  if (context[0])
  {
    CFRelease(context[0]);
  }

  return v26;
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HoseDecriptorFromHose = audioHoseManagerBuffered_getHoseDecriptorFromHose();
  if (HoseDecriptorFromHose)
  {
    v10 = *(a3 + 16);
    *(a5 + 56) = *a3;
    *(a5 + 72) = v10;
    *(a5 + 80) = HoseDecriptorFromHose;
    *(a5 + 88) = a4;
    dispatch_sync_f(*(DerivedStorage + 168), a5, audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal);
    v11 = *(a5 + 16);
    if (v11)
    {
      CFRelease(v11);
    }

    free(a5);
    return 0;
  }

  else
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler_cold_1(&v13);
    return v13;
  }
}

uint64_t audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal(uint64_t *a1)
{
  v2 = (a1 + 2);
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 22);
  if (!v4)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 50)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_1();
      }
    }

    goto LABEL_10;
  }

  if (v4 == 200501)
  {
    if (gLogCategory_APAudioHoseManagerBuffered <= 90)
    {
      if (gLogCategory_APAudioHoseManagerBuffered != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_2();
      }
    }

    goto LABEL_10;
  }

  v9 = result;
  if (gLogCategory_APAudioHoseManagerBuffered <= 90 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_3();
  }

  v11 = (a1 + 10);
  v10 = a1[10];
  v12 = *(v10 + 140);
  if (v12 >= 0x32)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_7();
    goto LABEL_10;
  }

  if (*(v9 + 260) != 1)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_4();
    goto LABEL_10;
  }

  if (*(v10 + 44) != 1)
  {
    result = audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_5();
LABEL_10:
    v5 = a1[1];
    if (v5)
    {
      v6 = a1[2];
      v7 = *(a1 + 22);
      v8 = *a1;
      *v23 = *(a1 + 28);
      *&v23[12] = *(a1 + 5);
      *v22 = *(a1 + 7);
      *&v22[16] = a1[9];
      return v5(v6, v23, v22, v7, v8);
    }

    return result;
  }

  *(v10 + 140) = v12 + 1;
  if (gLogCategory_APAudioHoseManagerBuffered <= 50 && (gLogCategory_APAudioHoseManagerBuffered != -1 || _LogCategory_Initialize()))
  {
    audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandlerInternal_cold_6();
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040428D2481uLL);
  v14 = *v2;
  if (*v2)
  {
    v14 = CFRetain(v14);
  }

  *(v13 + 2) = v14;
  *v13 = *a1;
  *(v13 + 6) = *(a1 + 6);
  v15 = *(a1 + 28);
  *(v13 + 40) = *(a1 + 5);
  *(v13 + 28) = v15;
  usleep(0x186A0u);
  v16 = a1[2];
  if (v16)
  {
    CFRetain(v16);
  }

  v17 = **v11;
  v18 = *(*v11 + 11);
  *v22 = *(v13 + 28);
  *&v22[12] = *(v13 + 40);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v20 = *(result + 16);
    result += 16;
    v19 = v20;
    if (v20)
    {
      v21 = *(v19 + 80);
      if (v21)
      {
        *v23 = *v22;
        *&v23[12] = *&v22[12];
        return v21(v17, v18, v23, audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler, v13);
      }

      else
      {
        return audioHoseManagerBuffered_hoseSetRateCallbackCompletionHandler(v17);
      }
    }
  }

  return result;
}

uint64_t audioHoseManagerBuffered_setCryptorForAllHosesDispatch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = audioHoseManagerBuffered_setCryptorForAllHoses(*(a1 + 8), *(a1 + 16));
  v4 = result;
  if (result)
  {
    result = audioHoseManagerBuffered_setCryptorForAllHosesDispatch_cold_1();
  }

  else
  {
    *(DerivedStorage + 320) = *(a1 + 16);
  }

  *a1 = v4;
  return result;
}

_OWORD *hoseManagerBuffered_hoseDescriptorDictionaryRetain(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0xF8uLL, 0x106004011576FA2uLL);
    v4 = a2[3];
    v6 = *a2;
    v5 = a2[1];
    v3[2] = a2[2];
    v3[3] = v4;
    *v3 = v6;
    v3[1] = v5;
    v7 = a2[7];
    v9 = a2[4];
    v8 = a2[5];
    v3[6] = a2[6];
    v3[7] = v7;
    v3[4] = v9;
    v3[5] = v8;
    v10 = a2[11];
    v12 = a2[8];
    v11 = a2[9];
    v3[10] = a2[10];
    v3[11] = v10;
    v3[8] = v12;
    v3[9] = v11;
    v14 = a2[13];
    v13 = a2[14];
    v15 = a2[12];
    *(v3 + 30) = *(a2 + 30);
    v3[13] = v14;
    v3[14] = v13;
    v3[12] = v15;
    v16 = *(a2 + 28);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v3 + 28) = v16;
    v17 = *a2;
    if (*a2)
    {
      v17 = CFRetain(v17);
    }

    *v3 = v17;
  }

  else
  {
    hoseManagerBuffered_hoseDescriptorDictionaryRetain_cold_1();
    return 0;
  }

  return v3;
}

void hoseManagerBuffered_hoseDescriptorDictionaryRelease(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(v3, *MEMORY[0x277CEA0C8], *MEMORY[0x277CBED10]);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    v5 = *(a2 + 224);
    if (v5)
    {
      CFRelease(v5);
    }

    free(a2);
  }

  else
  {
    hoseManagerBuffered_hoseDescriptorDictionaryRelease_cold_1();
  }
}

__n128 OUTLINED_FUNCTION_30_1@<Q0>(uint64_t a1@<X8>)
{
  *(v1 + 148) = *a1;
  result = *(a1 + 12);
  *(v1 + 160) = result;
  return result;
}

uint64_t SPEndpointDescriptionCreateWithTransportDevice(uint64_t a1, const void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v10 = 4294895545;
    SPEndpointDescriptionCreateWithTransportDevice_cold_5();
    return v10;
  }

  if (!a3)
  {
    v10 = 4294895545;
    SPEndpointDescriptionCreateWithTransportDevice_cold_4();
    return v10;
  }

  APEndpointDescriptionGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v10 = v5;
    SPEndpointDescriptionCreateWithTransportDevice_cold_1();
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  AdvertiserInfo = APTransportDeviceGetAdvertiserInfo();
  DerivedStorage[1] = AdvertiserInfo;
  if (!AdvertiserInfo)
  {
    return APSSignalErrorAt();
  }

  CFRetain(AdvertiserInfo);
  v8 = FigSimpleMutexCreate();
  DerivedStorage[2] = v8;
  if (!v8)
  {
    SPEndpointDescriptionCreateWithTransportDevice_cold_3();
    return 4294895546;
  }

  SNPrintF();
  v9 = dispatch_queue_create(label, 0);
  DerivedStorage[3] = v9;
  if (!v9)
  {
    SPEndpointDescriptionCreateWithTransportDevice_cold_2();
    return 4294895546;
  }

  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

uint64_t spDescription_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 24) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *spDescription_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  spDescription_copyName(a1, &v6);
  v4 = v6;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpointDescription %p, name=%@, advertiserInfo=%@>", a1, v6, *(DerivedStorage + 8));
  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t spDescription_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    v12 = 4294895545;
    spDescription_CopyProperty_cold_2();
    return v12;
  }

  if (!a4)
  {
    v12 = 4294895545;
    spDescription_CopyProperty_cold_1();
    return v12;
  }

  FigSimpleMutexLock();
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"DeviceID"))
  {
    if (CFEqual(a2, @"TransportDevice"))
    {
      v10 = *DerivedStorage;
LABEL_12:
      v11 = CFRetain(v10);
LABEL_13:
      *a4 = v11;
      goto LABEL_14;
    }

    if (CFEqual(a2, @"Name"))
    {
      v9 = spDescription_copyName(a1, a4);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"Manufacturer") || CFEqual(a2, @"Model") || CFEqual(a2, @"SerialNumber"))
    {
      v11 = APAdvertiserInfoCopyProperty();
      goto LABEL_13;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      v9 = spDescription_copySourceVersion(a1, a4);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"MACAddress"))
    {
      v9 = spDescription_copyMACAddress(a1, a3, a4);
      goto LABEL_9;
    }

    if (!CFEqual(a2, @"SupportsBufferedAudio") && !CFEqual(a2, @"HasUnifiedAdvertiserInfo"))
    {
      if (CFEqual(a2, @"SupportedAudioFormats"))
      {
        v9 = spDescription_copyAudioFormats(a3, a4);
        goto LABEL_9;
      }

      if (!CFEqual(a2, @"SupportsCoreUtilsPairingAndEncryption"))
      {
        if (CFEqual(a2, @"SupportsAudioMediaDataControl"))
        {
LABEL_36:
          v14 = MEMORY[0x277CBED10];
          goto LABEL_31;
        }

        if (!CFEqual(a2, @"SupportsReceiverChoosesAnchor"))
        {
          if (!CFEqual(a2, @"SupportsAudioStreamConnectionSetup"))
          {
            if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v15 = -12784;
            goto LABEL_14;
          }

          goto LABEL_36;
        }
      }
    }

    v14 = MEMORY[0x277CBED28];
LABEL_31:
    v10 = *v14;
    goto LABEL_12;
  }

  v9 = spDescription_copyDeviceID(a1, a4);
LABEL_9:
  v15 = v9;
LABEL_14:
  v12 = v15;
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t spDescription_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      CMBaseObjectGetDerivedStorage();
      if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      v5 = 4294895545;
      spDescription_SetProperty_cold_1();
    }
  }

  else
  {
    v5 = 4294895545;
    spDescription_SetProperty_cold_2();
  }

  return v5;
}

uint64_t spDescription_copyName(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  *a2 = APAdvertiserInfoCopyProperty();
  return 0;
}

uint64_t spDescription_copyDeviceID(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *cStr = 0u;
  v7 = 0u;
  v4 = APAdvertiserInfoCopyProperty();
  if (v4 || (v4 = *DerivedStorage) == 0 || (APTransportDeviceGetDiscoveryID(), CFGetInt64(), SNPrintF(), (v4 = CFStringCreateWithCString(0, cStr, 0x8000100u)) != 0))
  {
    *a2 = v4;
  }

  else
  {
    spDescription_copyDeviceID_cold_2();
  }

  return 0;
}

uint64_t spDescription_copySourceVersion(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  memset(v8, 0, sizeof(v8));
  v3 = APAdvertiserInfoCopyProperty();
  v4 = v3;
  if (v3)
  {
    if (!CFStringGetCString(v3, v8, 256, 0x8000100u))
    {
      spDescription_copySourceVersion_cold_1();
      v6 = 4294960534;
      goto LABEL_6;
    }

    TextToSourceVersion();
  }

  Int64 = CFNumberCreateInt64();
  if (!Int64)
  {
    spDescription_copySourceVersion_cold_2();
    v6 = 4294960534;
    if (!v4)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = 0;
  *a2 = Int64;
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

  return v6;
}

uint64_t spDescription_copyMACAddress(uint64_t a1, const __CFAllocator *a2, CFDataRef *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  CMBaseObjectGetDerivedStorage();
  theString = 0;
  v6 = spDescription_copyDeviceID(a1, &theString);
  if (v6)
  {
    v10 = v6;
    APSLogErrorAt();
    v7 = theString;
    if (!theString)
    {
      return v10;
    }
  }

  else
  {
    v7 = theString;
    if (!theString)
    {
      v10 = 4294895543;
      spDescription_copyMACAddress_cold_4();
      return v10;
    }

    if (CFStringGetCString(theString, buffer, 64, 0x8000100u))
    {
      v8 = TextToHardwareAddress();
      if (v8)
      {
        v10 = v8;
        spDescription_copyMACAddress_cold_1();
      }

      else
      {
        v9 = CFDataCreate(a2, bytes, 6);
        if (v9)
        {
          v10 = 0;
          *a3 = v9;
        }

        else
        {
          spDescription_copyMACAddress_cold_2();
          v10 = 4294895546;
        }
      }
    }

    else
    {
      v10 = 4294895543;
      spDescription_copyMACAddress_cold_3();
    }
  }

  CFRelease(v7);
  return v10;
}

uint64_t spDescription_copyAudioFormats(const __CFAllocator *a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    CFDictionarySetInt64();
    result = 0;
    *a2 = v4;
  }

  else
  {
    spDescription_copyAudioFormats_cold_1();
    return 4294895546;
  }

  return result;
}

uint64_t spDescription_CopyFeatures(uint64_t a1, uint64_t *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_CopyFeatures_cold_1();
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_8:
    spDescription_CopyFeatures_cold_2();
    return 4294895545;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  *a2 = APAdvertiserInfoCopyProperty();
  v3 = 0;
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t spDescription_HasFeature()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpointDescription <= 30 && (gLogCategory_SPEndpointDescription != -1 || _LogCategory_Initialize()))
  {
    spDescription_HasFeature_cold_1();
  }

  FigSimpleMutexLock();
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v0 = APAdvertiserInfoCopyProperty();
  HasFeature = APSFeaturesHasFeature();
  if (v0)
  {
    CFRelease(v0);
  }

  FigSimpleMutexUnlock();
  return HasFeature;
}

uint64_t spDescription_DescribesSameTransportDevice(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = CFEqual(*DerivedStorage, a2);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t SPEndpointCreateWithEndpointDescription(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v57 = 0;
  cf = 0;
  if (!a2)
  {
    SPEndpointCreateWithEndpointDescription_cold_13();
LABEL_86:
    v28 = 4294950576;
    goto LABEL_22;
  }

  if (!a4)
  {
    SPEndpointCreateWithEndpointDescription_cold_12();
    goto LABEL_86;
  }

  FigEndpointExtendedGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v28 = v8;
    SPEndpointCreateWithEndpointDescription_cold_1();
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CFRetain(a2);
  DerivedStorage[30] = v10;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v10);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v28 = 4294954514;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v13 = v12(CMBaseObject, @"Name", a1, &v57);
  if (v13)
  {
    v28 = v13;
    goto LABEL_21;
  }

  v14 = FigSimpleMutexCreate();
  DerivedStorage[5] = v14;
  if (!v14)
  {
    SPEndpointCreateWithEndpointDescription_cold_11();
LABEL_93:
    v28 = 4294950575;
    goto LABEL_22;
  }

  SNPrintF();
  v15 = dispatch_queue_create(label, 0);
  DerivedStorage[35] = v15;
  if (!v15)
  {
    SPEndpointCreateWithEndpointDescription_cold_10();
    goto LABEL_93;
  }

  SNPrintF();
  v16 = dispatch_queue_create(label, 0);
  DerivedStorage[1] = v16;
  if (!v16)
  {
    SPEndpointCreateWithEndpointDescription_cold_9();
    goto LABEL_93;
  }

  SNPrintF();
  v17 = dispatch_queue_create(label, 0);
  DerivedStorage[2] = v17;
  if (!v17)
  {
    SPEndpointCreateWithEndpointDescription_cold_8();
    goto LABEL_93;
  }

  SNPrintF();
  v18 = dispatch_queue_create(label, 0);
  *DerivedStorage = v18;
  if (!v18)
  {
    SPEndpointCreateWithEndpointDescription_cold_7();
    goto LABEL_93;
  }

  FigSimpleMutexLock();
  v19 = cf;
  v20 = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  *label = 0;
  v59 = 0;
  if (*(v20 + 48))
  {
    Mutable = 0;
LABEL_83:
    v28 = 0;
    goto LABEL_49;
  }

  v21 = v20;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v23 = v21[30];
    v24 = CFGetAllocator(v19);
    v25 = APEndpointDescriptionGetCMBaseObject(v23);
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v27 = v26(v25, @"DeviceID", v24, label);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        if (*label && !FigCFEqual())
        {
          if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v29 = v21[32];
          v30 = *label;
          v21[32] = *label;
          if (v30)
          {
            CFRetain(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          CFDictionarySetValue(Mutable, @"SPIDDidChange", *MEMORY[0x277CBED28]);
        }

        v31 = v21[30];
        v32 = CFGetAllocator(v19);
        v33 = APEndpointDescriptionGetCMBaseObject(v31);
        v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v34)
        {
          v35 = v34(v33, @"MACAddress", v32, &v60);
          if (v35)
          {
            v28 = v35;
          }

          else
          {
            v36 = v21[33];
            v37 = v60;
            v21[33] = v60;
            if (v37)
            {
              CFRetain(v37);
            }

            if (v36)
            {
              CFRelease(v36);
            }

            v38 = v21[30];
            v39 = CFGetAllocator(v19);
            v40 = APEndpointDescriptionGetCMBaseObject(v38);
            v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v41)
            {
              v42 = v41(v40, @"Name", v39, &v59);
              if (!v42)
              {
                v43 = v21[31];
                v44 = v59;
                v21[31] = v59;
                if (v44)
                {
                  CFRetain(v44);
                }

                if (v43)
                {
                  CFRelease(v43);
                }

                if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                goto LABEL_83;
              }

              v28 = v42;
            }

            else
            {
              v28 = 4294954514;
            }
          }
        }

        else
        {
          v28 = 4294954514;
        }
      }
    }

    else
    {
      v28 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_49;
  }

  SPEndpointCreateWithEndpointDescription_cold_2();
  v28 = 4294950575;
LABEL_49:
  if (*label)
  {
    CFRelease(*label);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  FigSimpleMutexUnlock();
  if (v28)
  {
    goto LABEL_21;
  }

  v45 = CMBaseObjectGetDerivedStorage();
  *label = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"EventRecorder");
    v47 = *(v45 + 32);
    *(v45 + 32) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v47)
    {
      CFRelease(v47);
    }
  }

  v50 = *(v45 + 24);
  v49 = (v45 + 24);
  v48 = v50;
  if (v50)
  {
    CFRelease(v48);
    *v49 = 0;
  }

  v51 = APSEventRecorderCreate();
  if (v51)
  {
    v28 = v51;
    SPEndpointCreateWithEndpointDescription_cold_3();
  }

  else
  {
    v52 = APEndpointDescriptionGetCMBaseObject(a2);
    v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v53 && (v53(v52, @"TransportDevice", *MEMORY[0x277CBECE8], label), *label) && (EventRecorder = APTransportDeviceGetEventRecorder()) != 0 && (v55 = MEMORY[0x223DAE7F0](*v49, EventRecorder), v55))
    {
      v28 = v55;
      SPEndpointCreateWithEndpointDescription_cold_4();
    }

    else
    {
      APSEventRecorderAddSignPostForEvent();
      v28 = 0;
    }
  }

  if (*label)
  {
    CFRelease(*label);
  }

  if (!v28)
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      SPEndpointCreateWithEndpointDescription_cold_6();
    }

    v28 = 0;
    *a4 = cf;
    cf = 0;
    goto LABEL_78;
  }

  SPEndpointCreateWithEndpointDescription_cold_5();
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_78:
  if (v57)
  {
    CFRelease(v57);
  }

  return v28;
}

void spendpoint_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Finalize_cold_1();
  }

  if (qword_280FB1BC8 != -1)
  {
    spendpoint_Finalize_cold_2();
  }

  if (_MergedGlobals_21)
  {
    v3 = *_MergedGlobals_21;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __spendpoint_Finalize_block_invoke;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = _MergedGlobals_21;
    v13[5] = a1;
    dispatch_sync(v3, v13);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  if (*(DerivedStorage + 136))
  {
    if (gLogCategory_SPEndpoint <= 100 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Finalize_cold_3();
    }

    __break(1u);
  }

  else
  {
    FigSimpleMutexLock();
    spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
    spendpoint_clearEndpointState();
    v4 = *(DerivedStorage + 248);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 248) = 0;
    }

    v5 = *(DerivedStorage + 256);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 256) = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *(DerivedStorage + 32);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 32) = 0;
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 24) = 0;
    }

    v8 = *(DerivedStorage + 232);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 232) = 0;
    }

    v9 = *(DerivedStorage + 240);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 240) = 0;
    }

    v10 = *(DerivedStorage + 16);
    if (v10)
    {
      dispatch_release(v10);
      *(DerivedStorage + 16) = 0;
    }

    v11 = *(DerivedStorage + 8);
    if (v11)
    {
      dispatch_release(v11);
      *(DerivedStorage + 8) = 0;
    }

    v12 = *(DerivedStorage + 280);
    if (v12)
    {
      dispatch_release(v12);
      *(DerivedStorage + 280) = 0;
    }

    FigSimpleMutexDestroy();
  }
}

__CFString *spendpoint_CopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  cf = 0;
  CFStringAppendFormat(Mutable, 0, @"<SPEndpoint %p>", a1);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"EndpointShowInfo", v2, &cf);
    v7 = cf;
    if (!v6)
    {
      ASPrintF();
      v8 = strlen(0);
      if (v8 && *(v8 - 1) == 10)
      {
        *(v8 - 1) = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"%s", 0);
      free(0);
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return Mutable;
}

uint64_t spendpoint_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 10 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = *MEMORY[0x277CC1568];
  if (CFEqual(a2, *MEMORY[0x277CC1568]))
  {
    v9 = MEMORY[0x277CC1A38];
LABEL_10:
    v10 = 0;
    *a4 = CFRetain(*v9);
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC13F0]) || CFEqual(a2, *MEMORY[0x277CC13C0]))
  {
    v9 = MEMORY[0x277CBED10];
    goto LABEL_10;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) && !CFEqual(a2, v8) && !CFEqual(a2, *MEMORY[0x277CC1370]) && !CFEqual(a2, *MEMORY[0x277CC1368]) && !CFEqual(a2, *MEMORY[0x277CC1450]))
  {
    v10 = 4294950573;
LABEL_54:
    FigSimpleMutexUnlock();
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14F0]))
  {
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 240));
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(CMBaseObject, @"SubType", a3, a4);
LABEL_20:
      v10 = v15;
      goto LABEL_21;
    }

    v10 = 4294954514;
LABEL_28:
    FigSimpleMutexUnlock();
LABEL_29:
    APSLogErrorAt();
    return v10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    v17 = *(DerivedStorage + 256);
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1428]))
  {
    v17 = *(DerivedStorage + 264);
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, @"EndpointDescription"))
  {
    v17 = *(DerivedStorage + 240);
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1450]))
  {
    v17 = *(DerivedStorage + 248);
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1370]))
  {
    v19 = MEMORY[0x277CBED28];
    if (*(DerivedStorage + 72) != 2)
    {
      v19 = MEMORY[0x277CBED10];
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    valuePtr = 0;
    if (*(DerivedStorage + 72) == 2)
    {
      valuePtr = *(DerivedStorage + 64);
    }

    v20 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v20;
    if (v20)
    {
      goto LABEL_59;
    }

    spendpoint_CopyProperty_cold_1();
    goto LABEL_84;
  }

  if (CFEqual(a2, @"IsInUse"))
  {
    v19 = MEMORY[0x277CBED28];
    v21 = *(DerivedStorage + 72);
    goto LABEL_64;
  }

  if (CFEqual(a2, @"IsEngaged"))
  {
    v19 = MEMORY[0x277CBED28];
    v21 = *(DerivedStorage + 144);
LABEL_64:
    if (!v21)
    {
      v19 = MEMORY[0x277CBED10];
    }

    goto LABEL_51;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1498]))
  {
    v17 = *MEMORY[0x277CC11D8];
    if (!*MEMORY[0x277CC11D8])
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!CFEqual(a2, *MEMORY[0x277CC14F8]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC14E0]))
    {
      v15 = spendpoint_copyStreams(a1, a3, a4);
      goto LABEL_20;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      goto LABEL_77;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B8]))
    {
      valuePtr = 0;
      v24 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      *a4 = v24;
      if (!v24)
      {
        spendpoint_CopyProperty_cold_4();
        goto LABEL_84;
      }

LABEL_59:
      v10 = 0;
      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1440]))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_Model;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1430]))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_Manufacturer;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1328]))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_FirmwareVersion;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14C0]))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_SerialNumber;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1270]))
    {
      v19 = MEMORY[0x277CC0A70];
      goto LABEL_51;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1210]))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_AirPlaySecurity;
      goto LABEL_91;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1558]))
    {
      v19 = MEMORY[0x277CC1A10];
      goto LABEL_51;
    }

    if (CFEqual(a2, @"Features"))
    {
      v15 = APEndpointDescriptionCopyFeatures(*(DerivedStorage + 240), a4);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"SourceVersion"))
    {
      v25 = *(DerivedStorage + 240);
      v26 = kAPEndpointDescriptionProperty_SourceVersion;
      goto LABEL_91;
    }

    if (CFEqual(a2, @"EndpointStatus"))
    {
      v29 = CFNumberCreate(a3, kCFNumberSInt32Type, (DerivedStorage + 272));
      *a4 = v29;
      if (!v29)
      {
        spendpoint_CopyProperty_cold_5();
        v10 = 4294950575;
        goto LABEL_28;
      }
    }

    else
    {
      if (CFEqual(a2, *MEMORY[0x277CC1238]))
      {
        v25 = *(DerivedStorage + 240);
        v26 = kAPEndpointDescriptionProperty_VodkaVersion;
        goto LABEL_91;
      }

      if (CFEqual(a2, *MEMORY[0x277CC1208]))
      {
        v25 = *(DerivedStorage + 240);
        v26 = kAPEndpointDescriptionProperty_SupportsAirPlayFromCloud;
        goto LABEL_91;
      }

      if (CFEqual(a2, *MEMORY[0x277CC13F8]))
      {
LABEL_77:
        v19 = MEMORY[0x277CBED10];
LABEL_51:
        v17 = *v19;
LABEL_52:
        v17 = CFRetain(v17);
LABEL_53:
        v10 = 0;
        *a4 = v17;
        goto LABEL_54;
      }

      if (!CFEqual(a2, @"EndpointShowInfo"))
      {
        if (CFEqual(a2, *MEMORY[0x277CC1540]))
        {
          v25 = *(DerivedStorage + 240);
          v26 = kAPEndpointDescriptionProperty_StatusFlags;
        }

        else if (CFEqual(a2, @"TransportDevice"))
        {
          v25 = *(DerivedStorage + 240);
          v26 = kAPEndpointDescriptionProperty_TransportDevice;
        }

        else
        {
          if (CFEqual(a2, *MEMORY[0x277CC11F0]))
          {
            valuePtr = 0;
            if (*(DerivedStorage + 136))
            {
              valuePtr = *(DerivedStorage + 56);
            }

            v30 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
            *a4 = v30;
            if (v30)
            {
              goto LABEL_59;
            }

            spendpoint_CopyProperty_cold_6();
            goto LABEL_84;
          }

          if (CFEqual(a2, *MEMORY[0x277CC1398]))
          {
            isConnected = spendpoint_isConnected();
            v19 = MEMORY[0x277CBED28];
            if (!isConnected)
            {
              v19 = MEMORY[0x277CBED10];
            }

            goto LABEL_51;
          }

          if (CFEqual(a2, *MEMORY[0x277CC14C8]) || CFEqual(a2, @"SupportsMuteControl"))
          {
            goto LABEL_77;
          }

          if (!CFEqual(a2, @"EndpointInfo"))
          {
            v10 = 4294954512;
            goto LABEL_54;
          }

          v25 = *(DerivedStorage + 240);
          v26 = kAPEndpointDescriptionProperty_EndpointInfo;
        }

LABEL_91:
        v27 = *v26;
        v28 = APEndpointDescriptionGetCMBaseObject(v25);
        v15 = CMBaseObjectCopyProperty(v28, v27, a3, a4);
        goto LABEL_20;
      }

      spendpoint_copyShowInfoDictionary(a1, a4);
    }

    v10 = 0;
    goto LABEL_54;
  }

  valuePtr = 0;
  SupportedFeatures = spendpoint_getSupportedFeatures(a1, &valuePtr);
  if (!SupportedFeatures)
  {
    v23 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    *a4 = v23;
    if (!v23)
    {
      spendpoint_CopyProperty_cold_3();
LABEL_84:
      v10 = 4294950575;
      goto LABEL_21;
    }

    goto LABEL_59;
  }

  v10 = SupportedFeatures;
  spendpoint_CopyProperty_cold_2();
LABEL_21:
  FigSimpleMutexUnlock();
  if (v10 > -6728)
  {
    if (v10 != -6727 && v10 != 0)
    {
      goto LABEL_29;
    }
  }

  else if (v10 != -16723 && v10 != -12784)
  {
    goto LABEL_29;
  }

  return v10;
}

uint64_t spendpoint_SetProperty(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 30 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    FigSimpleMutexLock();
    if (*(CMBaseObjectGetDerivedStorage() + 48))
    {
      spendpoint_SetProperty_cold_1();
      v3 = 4294950573;
    }

    else
    {
      v3 = 4294954512;
    }

    FigSimpleMutexUnlock();
    APSLogErrorAt();
  }

  else
  {
    spendpoint_SetProperty_cold_2();
    return 4294950576;
  }

  return v3;
}

void spendpoint_resetActivationState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 88) = 0;
  *(a2 + 40) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 24) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 32) = 0;
  }

  v7 = *(a2 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 48) = 0;
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 56) = 0;
  }

  v9 = *(a2 + 64);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 64) = 0;
  }

  v10 = *(a2 + 72);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 72) = 0;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    CFRelease(v11);
    *(a2 + 80) = 0;
  }

  if (*(a2 + 96))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  else
  {
    v12 = *(a2 + 104);
    if (v12)
    {
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v13 = *(a2 + 112);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __spendpoint_resetActivationState_block_invoke;
      block[3] = &unk_2784A05E8;
      block[4] = v12;
      block[5] = a3;
      dispatch_async(v13, block);
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v14 = *(a2 + 112);
  if (v14)
  {
    dispatch_release(v14);
    *(a2 + 112) = 0;
  }

  v15 = *(a2 + 120);
  if (v15)
  {
    CFRelease(v15);
    *(a2 + 120) = 0;
  }

  v16 = *(a2 + 128);
  if (v16)
  {
    CFRelease(v16);
    *(a2 + 128) = 0;
  }
}

void spendpoint_clearEndpointState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_clearEndpointState_cold_1();
  }

  v1 = *(DerivedStorage + 264);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 264) = 0;
  }
}

uint64_t __introspector_getCollectionOfActiveSPEndpoints_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    _MergedGlobals_21 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00401F3BCE50uLL);
    *_MergedGlobals_21 = dispatch_queue_create("CollectionOfActiveSPEndpoints", 0);
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    v2 = _MergedGlobals_21;
    *(_MergedGlobals_21 + 8) = Mutable;
    *(v2 + 16) = "ActiveSPEndpoints";

    return APSIntrospectorAddCommand();
  }

  return result;
}

void spendpoint_handleClientIsActiveDidChange(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*(DerivedStorage + 72) == 2)
  {
    if (*(DerivedStorage + 160) && (FigCFDictionaryGetValue(), !FigCFEqual()))
    {
      spendpoint_handleClientIsActiveDidChange_cold_2();
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v5 = Mutable;
        if (*(DerivedStorage + 152) || *(DerivedStorage + 160))
        {
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
        }

        FigSimpleMutexLock();
        v6 = spEndpoint_sendCommandInternal(a2, @"clientIsActiveDidChange", v5);
        FigSimpleMutexUnlock();
        if (v6)
        {
          spendpoint_handleClientIsActiveDidChange_cold_3();
        }

        CFRelease(v5);
      }

      else
      {
        spendpoint_handleClientIsActiveDidChange_cold_4();
      }
    }
  }

  else
  {
    spendpoint_handleClientIsActiveDidChange_cold_1();
  }
}

void spEndpoint_sendCommand(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v26 = 0;
  if (*(a1 + 48))
  {
    spEndpoint_sendCommand_cold_1();
    v13 = 0;
LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  if (FigCFEqual())
  {
    v2 = *(a1 + 8);
    cf[0] = 0;
    v27 = 0;
    v28 = 0;
    CMBaseObject = APSenderSessionGetCMBaseObject(v2);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = *MEMORY[0x277CBECE8];
      v6 = v4(CMBaseObject, @"TransportControlStream", *MEMORY[0x277CBECE8], cf);
      if (v6)
      {
        v13 = v6;
      }

      else
      {
        v7 = cf[0];
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v8)
        {
          v9 = v8(v7, 1819240307, 0, &v28);
          if (!v9)
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (CFDataWithBlockBufferNoCopy)
            {
              v13 = CFDataWithBlockBufferNoCopy;
              spEndpoint_sendCommand_cold_2();
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(v5, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v12 = Mutable;
                CFDictionarySetValue(Mutable, *MEMORY[0x277CC1668], v27);
                v13 = 0;
                v25 = v12;
              }

              else
              {
                spEndpoint_sendCommand_cold_3();
                v13 = -16721;
              }
            }

            goto LABEL_22;
          }

          v13 = v9;
        }

        else
        {
          v13 = -12782;
        }
      }
    }

    else
    {
      v13 = -12782;
    }

    APSLogErrorAt();
LABEL_22:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (v13)
    {
      spEndpoint_sendCommand_cold_4();
    }

    goto LABEL_30;
  }

  v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = v14;
  if (!v14)
  {
    spEndpoint_sendCommand_cold_6();
    v13 = -16721;
    goto LABEL_31;
  }

  CFDictionarySetValue(v14, @"type", *(a1 + 16));
  v16 = *(a1 + 24);
  if (v16)
  {
    CFDictionarySetValue(v15, @"params", v16);
  }

  v17 = APSenderSessionGetCMBaseObject(*(a1 + 8));
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    v13 = -12782;
LABEL_19:
    APSLogErrorAt();
    goto LABEL_31;
  }

  v19 = v18(v17, @"TransportControlStream", *MEMORY[0x277CBECE8], &v26);
  if (v19)
  {
    v13 = v19;
    goto LABEL_19;
  }

  v13 = APTransportStreamSendPlistMessageCreatingPlistReply();
  if (v13)
  {
    spEndpoint_sendCommand_cold_5();
  }

LABEL_31:
  v20 = *(a1 + 32);
  if (v20)
  {
    cf[0] = *a1;
    cf[1] = v25;
    v21 = *(a1 + 40);
    cf[2] = v20;
    cf[3] = v21;
    cf[4] = v13;
    CFRetain(cf[0]);
    if (v25)
    {
      CFRetain(v25);
    }

    APSDispatchAsyncFHelper();
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v22 = *(a1 + 24);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 8);
  if (v23)
  {
    CFRelease(v23);
  }
}

uint64_t spendpoint_getSupportedFeatures(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v3 = APSGetFBOPropertyInt64();
    result = 0;
    *a2 = 8 * (v3 != 0);
  }

  else
  {
    spendpoint_getSupportedFeatures_cold_1();
    return 4294950576;
  }

  return result;
}

uint64_t spendpoint_copyStreams(uint64_t a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v7 = Mutable;
    if (*(DerivedStorage + 88))
    {
      CFSetApplyBlock();
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    spendpoint_copyStreams_cold_1();
    return 4294950575;
  }

  return result;
}

void spendpoint_copyShowInfoDictionary(uint64_t a1, __CFDictionary **a2)
{
  v30 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  cf[0] = 0;
  v25 = 0;
  v26 = 0;
  v29 = 0;
  cf[1] = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = Mutable;
    SNPrintF();
    CFDictionarySetCString();
    v7 = *MEMORY[0x277CBED10];
    if (*(DerivedStorage + 136))
    {
      v8 = *MEMORY[0x277CBED28];
    }

    else
    {
      v8 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v6, @"Activated", v8);
    CFDictionarySetValue(v6, @"Name", *(DerivedStorage + 248));
    CFDictionarySetValue(v6, @"DeviceID", *(DerivedStorage + 256));
    CMBaseObject = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 240));
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(CMBaseObject, @"TransportDevice", v4, cf);
    }

    if (cf[0])
    {
      DiscoveryID = APTransportDeviceGetDiscoveryID();
      CFDictionarySetValue(v6, @"DiscoveryID", DiscoveryID);
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }
    }

    v12 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 240));
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"Model", v4, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v6, @"Model", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v14 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 240));
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, @"SourceVersion", v4, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v6, @"SourceVersion", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v16 = *(DerivedStorage + 240);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v17)
    {
      v17(v16, &v26);
      if (v26)
      {
        CFDictionarySetValue(v6, @"AirPlayFeatures", v26);
        if (v26)
        {
          CFRelease(v26);
          v26 = 0;
        }
      }
    }

    v18 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 240));
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v19)
    {
      v19(v18, @"StatusFlags", v4, &value);
    }

    if (value)
    {
      CFDictionarySetValue(v6, @"StatusFlags", value);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }
    }

    v20 = *(DerivedStorage + 88);
    if (v20)
    {
      CFSetApplyFunction(v20, spendpoint_copyShowInfoForStreamsSetEntry, v6);
    }

    v21 = *(DerivedStorage + 136);
    v22 = v7;
    if (v21)
    {
      v23 = APSenderSessionGetCMBaseObject(v21);
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      v22 = v7;
      if (v24)
      {
        v24(v23, @"ShowInfo", v4, &v25);
        v22 = v7;
        if (v25)
        {
          CFDictionarySetValue(v6, @"SenderSessionInfo", v25);
          FigCFDictionaryGetBooleanIfPresent();
          v22 = v7;
        }
      }
    }

    CFDictionarySetValue(v6, @"Started", v22);
    CFDictionarySetInt64();
    CFDictionarySetValue(v6, @"IsLocal", v7);
    *a2 = v6;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    spendpoint_copyShowInfoDictionary_cold_1();
  }

  if (value)
  {
    CFRelease(value);
  }
}

uint64_t spendpoint_isConnected()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 136);
  if (!v0)
  {
    return 0;
  }

  v1 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v1)
  {
    return 0;
  }

  return v1(v0);
}

uint64_t spendpoint_Activate(const void *a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 16;
  }

  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v67 = 0u;
  v68 = 0u;
  APSEventRecorderRecordEventWithFlags();
  FigSimpleMutexLock();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v65 = v11;
  if (a3)
  {
    v12 = CFDictionaryGetValue(a3, @"ParentContextID");
    if (!v12)
    {
      v12 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    }

    if (!*(DerivedStorage + 72))
    {
      v13 = *(DerivedStorage + 80);
      *(DerivedStorage + 80) = v12;
      if (v12)
      {
        CFRetain(v12);
      }

      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v13);
LABEL_16:
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_21;
    }
  }

  else if (!*(DerivedStorage + 72))
  {
    v13 = *(DerivedStorage + 80);
    *(DerivedStorage + 80) = 0;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!FigCFEqual())
  {
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_65;
  }

LABEL_21:
  if (*(DerivedStorage + 48))
  {
    spendpoint_Activate_cold_1();
    v19 = 0;
    v63 = 0;
    cf = 0;
    v31 = 0;
    Mutable = 0;
    v33 = -16723;
    goto LABEL_97;
  }

  if (a3)
  {
    v14 = CFGetTypeID(a3);
    if (v14 != CFDictionaryGetTypeID())
    {
      spendpoint_Activate_cold_2();
      v19 = 0;
      v63 = 0;
      cf = 0;
      v31 = 0;
      Mutable = 0;
      v33 = -16720;
      goto LABEL_97;
    }
  }

  v15 = *(DerivedStorage + 64);
  if (v15 && v15 != v11)
  {
    spendpoint_Activate_cold_13();
LABEL_65:
    v19 = 0;
    v63 = 0;
    cf = 0;
    v31 = 0;
    Mutable = 0;
    v33 = -16726;
    goto LABEL_97;
  }

  if (*(DerivedStorage + 136))
  {
    spendpoint_Activate_cold_3();
    v19 = 0;
    v63 = 0;
    cf = 0;
    v31 = 0;
    Mutable = 0;
    v33 = -16727;
    goto LABEL_97;
  }

  v16 = *(DerivedStorage + 240);
  if (!v16)
  {
    spendpoint_Activate_cold_12();
    goto LABEL_65;
  }

  if (!a3)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v63 = 0;
    cf = 0;
    goto LABEL_48;
  }

  Int64 = CFDictionaryGetInt64();
  if (!IsAppleInternalBuild() || Int64)
  {
    if (!Int64)
    {
      goto LABEL_32;
    }

LABEL_35:
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Activate_cold_4();
    }

    v18 = 1;
    goto LABEL_39;
  }

  if (APSSettingsGetIntWithDefault() == 1)
  {
    goto LABEL_35;
  }

LABEL_32:
  v18 = 0;
LABEL_39:
  CFDictionaryGetInt64();
  v20 = CFDictionaryGetInt64() != 0;
  v21 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
  if (v21)
  {
    v21 = CFRetain(v21);
  }

  *(DerivedStorage + 104) = v21;
  v19 = CFDictionaryGetValue(a3, @"SenderSession");
  v22 = CFDictionaryGetValue(a3, @"SenderSessionFactory");
  if (v22)
  {
    cf = CFRetain(v22);
  }

  else
  {
    cf = 0;
  }

  BYTE4(v63) = CFDictionaryGetInt64() != 0;
  LOBYTE(v63) = CFDictionaryGetInt64() != 0;
  v16 = *(DerivedStorage + 240);
LABEL_48:
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(v16);
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    v33 = -12782;
LABEL_56:
    APSLogErrorAt();
    v31 = 0;
    Mutable = 0;
    goto LABEL_97;
  }

  v60 = v20;
  v61 = v18;
  v62 = a5;
  v25 = *MEMORY[0x277CBECE8];
  v26 = v24(CMBaseObject, @"SupportedAudioFormats", *MEMORY[0x277CBECE8], &value);
  if (v26)
  {
    v33 = v26;
    a5 = v62;
    goto LABEL_56;
  }

  v27 = MEMORY[0x277CBF138];
  v28 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"SupportedAudioFormats", value);
  v30 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"IsSidePlay", *MEMORY[0x277CBED28]);
  v31 = CFDictionaryCreateMutable(v25, 0, v27, v28);
  CFDictionarySetValue(v31, @"PreferredNetworkClockType", *MEMORY[0x277CEA268]);
  CFDictionarySetValue(v31, @"AllowP2PForNTP", v30);
  CFDictionarySetValue(v31, @"AudioEngineOptions", Mutable);
  CFDictionarySetValue(v31, @"IgnoreClientPIDForMediaRemote", *MEMORY[0x277CBED10]);
  SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, v65[0], v31, DerivedStorage + 128, (DerivedStorage + 120), (DerivedStorage + 112));
  if (SharedContext)
  {
    v33 = SharedContext;
    spendpoint_Activate_cold_5();
    a5 = v62;
    goto LABEL_97;
  }

  if (v19)
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFRetain(v19);
    a5 = v62;
    goto LABEL_94;
  }

  v34 = *(DerivedStorage + 128);
  v35 = CMBaseObjectGetDerivedStorage();
  v73[0] = 0;
  v37 = v35[30];
  v36 = v35[31];
  v38 = v35[2];
  if (cf)
  {
    AirPlaySession = APSenderSessionFactoryCreateAirPlaySession(cf, v25, v36, v37, 0, 10, 0, v38, 0.0, 0, v61, v60, v34, 0, 0, 0, 0, v73);
    if (AirPlaySession)
    {
      v33 = AirPlaySession;
      spendpoint_Activate_cold_6();
LABEL_133:
      a5 = v62;
      goto LABEL_84;
    }
  }

  else
  {
    v40 = APSenderSessionAirPlayCreate(0.0, v25, v36, v37, 0, 10, 0, v38, 0, v61, v60, v34, 0, 0, 0, 0, 0, 0, v73);
    if (v40)
    {
      v33 = v40;
      spendpoint_Activate_cold_7();
      goto LABEL_133;
    }
  }

  a5 = v62;
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v41 = v73[0];
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v42)
  {
    v42(v41, a1, a1, spendpoint_handleEventMessage, spendpoint_handleEventMessageCreatingReply);
  }

  if (APSSettingsGetInt64())
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spendpoint_Activate_cold_8();
    }

    v43 = APSenderSessionGetCMBaseObject(v73[0]);
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v44)
    {
      v33 = -12782;
      goto LABEL_83;
    }

    v45 = v44(v43, @"PublishEncryptionKeyDiagnosticMode", v30);
    if (v45)
    {
      v33 = v45;
LABEL_83:
      APSLogErrorAt();
LABEL_84:
      if (v73[0])
      {
        v46 = APSenderSessionGetCMBaseObject(v73[0]);
        if (v46)
        {
          v47 = v46;
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v48)
          {
            v48(v47);
          }
        }

        CFRelease(v73[0]);
      }

      APSLogErrorAt();
      v19 = 0;
      goto LABEL_97;
    }
  }

  else if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Activate_cold_9();
  }

  v19 = v73[0];
LABEL_94:
  CMNotificationCenterGetDefaultLocalCenter();
  v49 = FigNotificationCenterAddWeakListener();
  if (v49)
  {
    v33 = v49;
    spendpoint_Activate_cold_10();
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v33 = FigNotificationCenterAddWeakListener();
    if (!v33)
    {
      *(DerivedStorage + 136) = CFRetain(v19);
      ++*(DerivedStorage + 56);
      *(DerivedStorage + 64) = *v65;
      *(DerivedStorage + 72) = 1;
      goto LABEL_97;
    }

    spendpoint_Activate_cold_11();
  }

  APSLogErrorAt();
LABEL_97:
  if (a1)
  {
    v50 = CFRetain(a1);
  }

  else
  {
    v50 = 0;
  }

  *&v67 = v50;
  v51 = *(DerivedStorage + 248);
  if (v51)
  {
    v51 = CFRetain(v51);
  }

  *(&v67 + 1) = v51;
  HIDWORD(v72) = v33;
  if (a3)
  {
    v52 = CFRetain(a3);
  }

  else
  {
    v52 = 0;
  }

  *(&v70 + 1) = v52;
  v53 = *(DerivedStorage + 56);
  *&v68 = *v65;
  *&v69 = v53;
  v54 = *(DerivedStorage + 136);
  if (v54)
  {
    v54 = CFRetain(v54);
  }

  *(&v68 + 1) = v54;
  v55 = *(DerivedStorage + 240);
  v56 = CFGetAllocator(a1);
  v57 = APEndpointDescriptionGetCMBaseObject(v55);
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v58)
  {
    v58(v57, @"TransportDevice", v56, &v69 + 8);
  }

  *&v70 = APEndpointDescriptionCopyDebugString(*(DerivedStorage + 240));
  *&v71 = a4;
  *(&v71 + 1) = a5;
  LOBYTE(v72) = BYTE4(v63);
  BYTE1(v72) = v63;
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t spendpoint_Deactivate(const void *a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_Deactivate_cold_1();
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    Value = CFDictionaryGetValue(a2, *MEMORY[0x277CC0B90]);
    goto LABEL_8;
  }

  Value = 0;
LABEL_8:
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    spendpoint_Deactivate_cold_2();
    v6 = 4294950573;
  }

  else
  {
    v6 = *(DerivedStorage + 136);
    if (v6)
    {
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v7)
      {
        v7(v6);
      }

      v6 = 0;
    }
  }

  CFRetain(a1);
  v8 = *(DerivedStorage + 248);
  if (v8)
  {
    CFRetain(v8);
  }

  if (Value)
  {
    CFRetain(Value);
  }

  v9 = *(DerivedStorage + 136);
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(DerivedStorage + 88);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(DerivedStorage + 176);
  if (v13)
  {
    CFRetain(v13);
  }

  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    CFRetain(v14);
  }

  spendpoint_resetActivationState(a1, DerivedStorage + 56, *(DerivedStorage + 256));
  spendpoint_stopListeningToSenderSessionAndStreamsNotifications(a1, v10, v12);
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t spendpoint_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    v5[0] = *a2;
    v5[1] = v2;
    v6 = *(a2 + 32);
    v3 = spendpoint_SetDelegateRouting(a1, v5);
    if (v3)
    {
      spendpoint_SetDelegate_cold_1();
    }
  }

  else
  {
    v3 = spendpoint_SetDelegateRouting(a1, 0);
    if (v3)
    {
      spendpoint_SetDelegate_cold_2();
    }
  }

  return v3;
}

uint64_t spendpoint_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    spendpoint_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 232);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 232) = 0;
    }

    if (a2)
    {
      v5 = *a2;
      v6 = *(a2 + 16);
      *(DerivedStorage + 224) = *(a2 + 32);
      *(DerivedStorage + 192) = v5;
      *(DerivedStorage + 208) = v6;
      a2 = 0;
      *(DerivedStorage + 232) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 224) = 0;
      *(DerivedStorage + 192) = 0u;
      *(DerivedStorage + 208) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t spendpoint_handleEventMessage()
{
  result = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t spendpoint_handleEventMessageCreatingReply(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 48);
  v10 = *(DerivedStorage + 136);
  FigSimpleMutexUnlock();
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      v23 = -16723;
    }

    else
    {
      v23 = 0;
    }

    if (v10)
    {
      v19 = v23;
    }

    else
    {
      v19 = 4294950570;
    }

    APSLogErrorAt();
    goto LABEL_47;
  }

  if (a2 == 1668116068)
  {
    v12 = *MEMORY[0x277CBECE8];
    CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
    if (CFDataWithBlockBufferNoCopy)
    {
      v19 = CFDataWithBlockBufferNoCopy;
      spendpoint_handleEventMessageCreatingReply_cold_1();
LABEL_47:
      v15 = 0;
      goto LABEL_35;
    }

    v14 = CFPropertyListCreateWithData(v12, 0, 0, 0, 0);
    v15 = v14;
    if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
    {
      spendpoint_handleEventMessageCreatingReply_cold_6();
      v19 = 4294950576;
      goto LABEL_35;
    }

    CMBaseObjectGetDerivedStorage();
    Value = CFDictionaryGetValue(v15, @"type");
    if (Value)
    {
      v18 = Value;
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (CFEqual(v18, @"updateInfo"))
      {
        if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
        {
          spendpoint_handleEventMessageCreatingReply_cold_2();
        }

        goto LABEL_34;
      }

      if (CFEqual(v18, @"interruptionBegan"))
      {
        v20 = spendpoint_processInterruptionCommand(a4, v15, 1);
        if (v20)
        {
          v19 = v20;
          spendpoint_handleEventMessageCreatingReply_cold_3();
LABEL_31:
          APSLogErrorAt();
          goto LABEL_35;
        }
      }

      else
      {
        if (!CFEqual(v18, @"interruptionEnded"))
        {
          if (gLogCategory_SPEndpoint <= 60)
          {
            spendpoint_handleEventMessageCreatingReply_cold_5(gLogCategory_SPEndpoint);
          }

          goto LABEL_34;
        }

        v21 = spendpoint_processInterruptionCommand(a4, v15, 0);
        if (v21)
        {
          v19 = v21;
          spendpoint_handleEventMessageCreatingReply_cold_4();
          goto LABEL_31;
        }
      }
    }

LABEL_34:
    v19 = 0;
    *a5 = 0;
    goto LABEL_35;
  }

  if (gLogCategory_SPEndpoint <= 60 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = 0;
  v19 = 4294950678;
LABEL_35:
  if (v15)
  {
    CFRelease(v15);
  }

  return v19;
}

uint64_t spendpoint_processInterruptionCommand(int a1, CFDictionaryRef theDict, int a3)
{
  if (a3)
  {
    v3 = @"InterruptionBegan";
  }

  else
  {
    v3 = @"InterruptionEnded";
  }

  if (CFDictionaryGetValue(theDict, @"streamID"))
  {
    CMBaseObjectGetDerivedStorage();
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    FigSimpleMutexLock();
    CFSetApplyBlock();
    FigSimpleMutexUnlock();
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
    if (v4)
    {
      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v5)
      {
        v5(v4, v3, 0);
      }

      CFRelease(v4);
      return 0;
    }

    else
    {
      if (gLogCategory_SPEndpoint <= 60 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 4294960569;
    }
  }

  else
  {
    spendpoint_processInterruptionCommand_cold_1();
    return 4294960591;
  }
}

void sub_22215BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __spendpoint_copyStreamForID_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    cf[5] = v2;
    cf[6] = v3;
    cf[0] = 0;
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, @"StreamID", *MEMORY[0x277CBECE8], cf);
    }

    if (FigCFEqual())
    {
      *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

uint64_t spendpoint_handleSenderSessionFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_handleSenderSessionFailed_cold_1();
  }

  CFRetain(a2);
  if (a5)
  {
    CFRetain(a5);
  }

  return APSDispatchAsyncFHelper();
}

void spendpoint_callDelegateHandleFailed(uint64_t a1)
{
  (*(a1 + 24))(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 32));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void spendpoint_deferredHandleSenderSessionFailed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 8);
  Int64 = CFDictionaryGetInt64();
  CFDictionaryGetValue(v3, @"SessionState");
  v5 = FigCFEqual();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 72) == 2)
  {
    spendpoint_updateStatus(*a1, Int64, v5 == 0);
  }

  FigSimpleMutexUnlock();
  CFRelease(*a1);
  v6 = *(a1 + 8);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t spendpoint_postPerformanceReport()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
    {
      spendpoint_postPerformanceReport_cold_1();
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
      {
        spendpoint_postPerformanceReport_cold_2();
      }

      if (gLogCategory_SPEndpoint <= 40)
      {
        if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
        {
          spendpoint_postPerformanceReport_cold_1();
        }

        if (gLogCategory_SPEndpoint <= 40)
        {
          if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
          {
            spendpoint_postPerformanceReport_cold_4();
          }

          if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
          {
            spendpoint_postPerformanceReport_cold_5();
          }
        }
      }
    }
  }

  spendpoint_logEventInterval(*(DerivedStorage + 24), 268369920, 268369921, "Total AirPlay Contribution (Endpoint Activate Start To Endpoint Activate Complete)");
  spendpoint_logEvent(*(DerivedStorage + 24), 268369920, "EndpointActivate");
  spendpoint_logEvent(*(DerivedStorage + 24), 150994945, "ResolveDNSTime");
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
    {
      spendpoint_postPerformanceReport_cold_6();
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
      {
        spendpoint_postPerformanceReport_cold_7();
      }

      if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_postPerformanceReport_cold_8();
      }
    }
  }

  spendpoint_logEvent(*(DerivedStorage + 32), 268431360, "PresenceBrowsing_Start");
  spendpoint_logEvent(*(DerivedStorage + 32), 268431361, "DetailedNonP2PBrowsing_Start");
  spendpoint_logEvent(*(DerivedStorage + 32), 268431362, "DetailedBrowsing_Start");
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  spendpoint_logTransportDiscoveryDurationIfEventPresent();
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
    {
      spendpoint_postPerformanceReport_cold_6();
    }

    if (gLogCategory_SPEndpoint <= 40)
    {
      if (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize())
      {
        spendpoint_postPerformanceReport_cold_10();
      }

      if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_postPerformanceReport_cold_11();
      }
    }
  }

  spendpoint_logEvent(*(DerivedStorage + 24), 150994944, "QuerySRVTime");
  spendpoint_logEvent(*(DerivedStorage + 24), 150994946, "ControlStreamConnectingTime");
  spendpoint_logEvent(*(DerivedStorage + 24), 150994948, "ControlStreamConnectedTime");
  spendpoint_logEvent(*(DerivedStorage + 24), 250609664, "EndpointConnectionStartTime");
  spendpoint_logEvent(*(DerivedStorage + 24), 250609666, "EndpointGetInfoCompleteTime");
  spendpoint_logEventInterval(*(DerivedStorage + 24), 250609665, 250609666, "INFOTimeMs");
  CMBaseObjectGetDerivedStorage();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_postPerformanceReport_cold_12();
  }

  spendpoint_logEventInterval(*(DerivedStorage + 24), 150994946, 150994948, "ConnectTimeMs");
  spendpoint_logEventInterval(*(DerivedStorage + 24), 250609677, 250609678, "EndpointAUTHTimeMs");
  result = spendpoint_logEventInterval(*(DerivedStorage + 24), 250609675, 250609676, "EndpointRECORDTimeMs");
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return spendpoint_postPerformanceReport_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return spendpoint_postPerformanceReport_cold_1();
    }
  }

  return result;
}

uint64_t spendpoint_stopListeningToSenderSessionAndStreamsNotifications(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    result = FigNotificationCenterRemoveWeakListener();
  }

  if (a3)
  {
    return CFSetApplyBlock();
  }

  return result;
}

void spendpoint_deactivateInternal(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = dispatch_semaphore_create(0);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  if (*(a1 + 56))
  {
    APSLogErrorAt();
    v9 = *(a1 + 56);
  }

  else
  {
    if (*(a1 + 24))
    {
      if (qword_280FB1BC8 != -1)
      {
        spendpoint_Finalize_cold_2();
      }

      if (_MergedGlobals_21)
      {
        v3 = *_MergedGlobals_21;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __spendpoint_deactivateInternal_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = _MergedGlobals_21;
        block[5] = a1;
        dispatch_sync(v3, block);
      }

      if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_deactivateInternal_cold_2();
      }

      CMBaseObjectGetDerivedStorage();
      APSEventRecorderReset();
      *&v26 = *a1;
      v4 = *(a1 + 24);
      if (v4)
      {
        v4 = CFRetain(v4);
      }

      *(&v26 + 1) = v4;
      v5 = *(a1 + 32);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *&v27 = v5;
      v6 = *(a1 + 64);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      *(&v27 + 1) = v6;
      v7 = *(a1 + 72);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *&v28 = v7;
      *(&v28 + 1) = v2;
      dispatch_retain(v2);
      APSDispatchAsyncFHelper();
      v8 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v2, v8) && gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        spendpoint_deactivateInternal_cold_3();
      }
    }

    else
    {
      spendpoint_deactivateInternal_cold_4();
    }

    v9 = 0;
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    theDict = *a1;
    v21 = *(a1 + 40);
    v23 = v10;
    v22 = v9;
    v24 = *(a1 + 88);
    CFRetain(theDict);
    APSDispatchAsyncFHelper();
  }

  if (!v9 && !FigCFEqual())
  {
    theDict = 0;
    v11 = CFGetAllocator(*a1);
    APEndpointCreateEndpointActivationNotificationPayload(v11, *(a1 + 48), *(a1 + 40), &theDict);
    v12 = CFGetAllocator(*a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, theDict);
    CFDictionarySetValue(MutableCopy, @"WasAutoconnected", *MEMORY[0x277CBED10]);
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  CFRelease(*a1);
  v14 = *(a1 + 8);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 72);
  if (v19)
  {
    CFRelease(v19);
  }

  dispatch_release(v2);
}

uint64_t spendpoint_logEventInterval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return spendpoint_logEventInterval_cold_1();
  }

  result = APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive();
  if (gLogCategory_SPEndpoint <= 40)
  {
    if (gLogCategory_SPEndpoint != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void spendpoint_logEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    APSEventRecorderGetEventTimeRecursive();
    StringWithEventRecorderTime = APSEventRecorderCreateStringWithEventRecorderTime();
    if (gLogCategory_SPEndpoint <= 40 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (StringWithEventRecorderTime)
    {

      CFRelease(StringWithEventRecorderTime);
    }
  }

  else
  {
    spendpoint_logEvent_cold_1();
  }
}

uint64_t __spendpoint_stopListeningToSenderSessionAndStreamsNotifications_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

void spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession(uint64_t a1)
{
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_cold_1();
  }

  if (*(a1 + 16))
  {
    CFSetApplyBlock();
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (v3)
    {
      v3(v2, 0, 0, 0, 0);
    }

    v4 = *(a1 + 8);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v5)
    {
      v5(v4);
    }

    CMBaseObject = APSenderSessionGetCMBaseObject(*(a1 + 8));
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  *a1 = 0;
  v11 = *(a1 + 24);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));
}

void __spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v4(a2, 0, 0, 0);
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(a2);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 32))
  {
    v7 = *(v6 + 24);
    cf = 0;
    if (v7)
    {
      CMBaseObject = FigEndpointStreamGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, @"RTCStats", *MEMORY[0x277CBECE8], &cf);
        if (cf)
        {
          FigCFArrayApplyFunction();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }

    else
    {
      __spendpoint_suspendDissociateAndReleaseStreamsAndStopSenderSession_block_invoke_cold_1();
    }
  }
}

uint64_t __spendpoint_dissociateInternal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

uint64_t spEndpoint_DuckAudio()
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (CFEqual(TypedValue, *MEMORY[0x277CC0B98]))
    {
      v5 = @"duckAudio";
    }

    else
    {
      if (!CFEqual(TypedValue, *MEMORY[0x277CC0BA0]))
      {
        v6 = -16720;
        goto LABEL_9;
      }

      v5 = @"unduckAudio";
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v6 = CFDictionarySetDouble();
      if (v6)
      {
        spEndpoint_DuckAudio_cold_2();
        goto LABEL_10;
      }
    }

    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v6 = CFDictionarySetDouble();
      if (v6)
      {
        spEndpoint_DuckAudio_cold_3();
        goto LABEL_10;
      }
    }

    FigSimpleMutexLock();
    v6 = spEndpoint_sendCommandInternal(FigEndpoint, v5, v2);
    if (v6)
    {
      if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      spEndpoint_DuckAudio_cold_4();
    }

    FigSimpleMutexUnlock();
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    APSLogErrorAt();
LABEL_10:
    CFRelease(v2);
    return v6;
  }

  spEndpoint_DuckAudio_cold_5();
  return 4294950575;
}

uint64_t spEndpoint_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 72) != 2)
  {
    spEndpoint_AcquireAndCopyResource_cold_1();
    v11 = 4294949690;
    goto LABEL_58;
  }

  if (!FigCFEqual())
  {
    v11 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_58;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  if (*(DerivedStorage + 72) != 2)
  {
    spEndpoint_AcquireAndCopyResource_cold_2();
    v11 = 4294949690;
    goto LABEL_57;
  }

  if (!a3)
  {
    spEndpoint_AcquireAndCopyResource_cold_13();
LABEL_65:
    v11 = 4294950576;
    goto LABEL_57;
  }

  if (!a4)
  {
    spEndpoint_AcquireAndCopyResource_cold_12();
    goto LABEL_65;
  }

  v8 = DerivedStorage;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
  if (!Value)
  {
    spEndpoint_AcquireAndCopyResource_cold_11();
    goto LABEL_65;
  }

  v10 = Value;
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = *MEMORY[0x277CC1968];
  if (!CFEqual(v10, *MEMORY[0x277CC1968]))
  {
    v11 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_57;
  }

  if (*(v8 + 96) || !CFSetGetCount(*(v8 + 88)))
  {
    v13 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v14 = CFGetTypeID(v10);
    if (v14 == CFStringGetTypeID())
    {
      if (*(v13 + 72) != 2)
      {
        spEndpoint_AcquireAndCopyResource_cold_4();
        v11 = 4294951716;
        goto LABEL_54;
      }

      v15 = CFDictionaryGetValue(*(v13 + 112), v10);
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, @"AudioEngineVendor");
        CFDictionaryGetInt64();
        if (CFEqual(v10, v12))
        {
          v17 = CMBaseObjectGetDerivedStorage();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (Mutable)
          {
            v19 = Mutable;
            CFDictionarySetValue(Mutable, @"IsSidePlay", *MEMORY[0x277CBED28]);
            v20 = *(v17 + 24);
            if (v20)
            {
              CFDictionarySetValue(v19, @"EventRecorder", v20);
            }

            v21 = CFGetAllocator(FigEndpoint);
            v22 = APEndpointStreamBufferedAudioCreate(v21, *(v13 + 248), *(v13 + 256), v19, *(v13 + 136), v16, *(v13 + 240), &cf);
            if (v22)
            {
              v11 = v22;
              spEndpoint_AcquireAndCopyResource_cold_5();
            }

            else
            {
              CMNotificationCenterGetDefaultLocalCenter();
              v23 = FigNotificationCenterAddWeakListener();
              if (v23)
              {
                v11 = v23;
                spEndpoint_AcquireAndCopyResource_cold_6();
              }

              else
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v24 = FigNotificationCenterAddWeakListener();
                if (!v24)
                {
                  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v11 = 0;
                  v25 = cf;
                  values = cf;
                  cf = 0;
LABEL_43:
                  CFRelease(v19);
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (!v11)
                  {
                    CFSetSetValue(*(v8 + 88), v25);
                    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
                    {
                      CFSetGetCount(*(v8 + 88));
                      LogPrintF();
                    }

                    goto LABEL_50;
                  }

LABEL_55:
                  APSLogErrorAt();
                  if (!v25)
                  {
LABEL_57:
                    APSLogErrorAt();
LABEL_58:
                    FigSimpleMutexUnlock();
                    APSLogErrorAt();
                    return v11;
                  }

LABEL_56:
                  CFRelease(v25);
                  goto LABEL_57;
                }

                v11 = v24;
                spEndpoint_AcquireAndCopyResource_cold_7();
              }

              APSLogErrorAt();
            }

            v25 = 0;
            goto LABEL_43;
          }

          spEndpoint_AcquireAndCopyResource_cold_8();
          v11 = 4294950575;
        }

        else
        {
          spEndpoint_AcquireAndCopyResource_cold_10(FigEndpoint, v10, &v29);
          v11 = v29;
        }

LABEL_54:
        v25 = 0;
        goto LABEL_55;
      }

      spEndpoint_AcquireAndCopyResource_cold_9();
    }

    else
    {
      spEndpoint_AcquireAndCopyResource_cold_3();
    }

    v11 = 4294950576;
    goto LABEL_54;
  }

  CFSetGetValues(*(v8 + 88), &values);
  if (!values)
  {
    APSLogErrorAt();
    v11 = 4294950571;
    v25 = values;
    if (!values)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  CFRetain(values);
  v25 = values;
LABEL_50:
  *a4 = v25;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t spEndpoint_RelinquishResource(uint64_t a1, uint64_t a2, const void *a3)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a3)
  {
    spEndpoint_RelinquishResource_cold_3();
    return 4294950576;
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != 2)
  {
    spEndpoint_RelinquishResource_cold_1();
    v8 = 4294949690;
LABEL_19:
    FigSimpleMutexUnlock();
    APSLogErrorAt();
    return v8;
  }

  v6 = DerivedStorage;
  if (!FigCFEqual())
  {
    v8 = 4294894922;
    if (gLogCategory_SPEndpoint <= 90 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_19;
  }

  if (!CFSetContainsValue(*(v6 + 88), a3))
  {
    spEndpoint_RelinquishResource_cold_2();
    v8 = 4294950576;
    goto LABEL_19;
  }

  if (*(v6 + 96))
  {
    CFRetain(a3);
    v7 = *(v6 + 280);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __spEndpoint_relinquishResourceInternal_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = FigEndpoint;
    block[5] = a3;
    dispatch_async(v7, block);
    CFSetRemoveValue(*(v6 + 88), a3);
    if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
    {
      CFSetGetCount(*(v6 + 88));
      LogPrintF();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

void __spEndpoint_relinquishResourceInternal_block_invoke(uint64_t a1)
{
  if (gLogCategory_SPEndpoint <= 50 && (gLogCategory_SPEndpoint != -1 || _LogCategory_Initialize()))
  {
    __spEndpoint_relinquishResourceInternal_block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    v3(v2, 0, 0, 0);
  }

  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5)
  {
    v5(v4);
  }

  v6 = *(a1 + 40);

  CFRelease(v6);
}

uint64_t APAudioEngineGetClassID()
{
  if (_MergedGlobals_22 != -1)
  {
    APAudioEngineGetClassID_cold_1();
  }

  return qword_280FB1BD8;
}

uint64_t audioEngine_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioEngine_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APAuthenticationClientRSACreate(int a1, const void *a2, CFDataRef theData, void *a4)
{
  if (a2)
  {
    if (theData)
    {
      if (CFDataGetLength(theData) == 6)
      {
        APAuthenticationClientGetClassID();
        v7 = CMDerivedObjectCreate();
        if (v7)
        {
          v9 = v7;
          APSLogErrorAt();
        }

        else
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          DerivedStorage[1] = a2;
          CFRetain(a2);
          *DerivedStorage = CFRetain(theData);
          if (gLogCategory_APAuthenticationClientRSA <= 30 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
          {
            APAuthenticationClientRSACreate_cold_2();
          }

          v9 = 0;
          *a4 = 0;
        }
      }

      else
      {
        v9 = 4294895495;
        APAuthenticationClientRSACreate_cold_1();
      }
    }

    else
    {
      v9 = 4294895495;
      APAuthenticationClientRSACreate_cold_3();
    }
  }

  else
  {
    v9 = 4294895495;
    APAuthenticationClientRSACreate_cold_4();
  }

  return v9;
}

void rsaAuthentication_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientRSA <= 30 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
  {
    rsaAuthentication_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *rsaAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientRSA %p>", a1);
  return Mutable;
}

uint64_t rsaAuthentication_AuthenticateEndpoint()
{
  v23[32] = *MEMORY[0x277D85DE8];
  v19 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientRSA <= 40 && (gLogCategory_APAuthenticationClientRSA != -1 || _LogCategory_Initialize()))
  {
    rsaAuthentication_AuthenticateEndpoint_cold_1();
  }

  lengthAtOffsetOut = 0;
  dataPointerOut[0] = 0;
  v1 = RandomBytes();
  if (v1)
  {
    v16 = v1;
    rsaAuthentication_AuthenticateEndpoint_cold_2();
LABEL_33:
    APSLogErrorAt();
    goto LABEL_24;
  }

  v2 = Base64EncodeEx();
  if (v2)
  {
    v16 = v2;
    rsaAuthentication_AuthenticateEndpoint_cold_3();
    goto LABEL_33;
  }

  v3 = *MEMORY[0x277CBECE8];
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (BlockBufferCopyingMemoryBlock)
  {
    v16 = BlockBufferCopyingMemoryBlock;
    APSLogErrorAt();
    goto LABEL_33;
  }

  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6)
  {
    v7 = v6(v5, 1920164128, dataPointerOut[0], &cf);
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v10 = v9(CMBaseObject, *MEMORY[0x277CE5090], v3, &v19);
        if (v10)
        {
          v16 = v10;
        }

        else
        {
          APSNetworkAddressGetSocketAddr();
          v11 = cf;
          v12 = *DerivedStorage;
          lengthAtOffsetOut = 0;
          dataPointerOut[0] = 0;
          CFDataGetBytePtr(v12);
          DataPointer = CMBlockBufferGetDataPointer(v11, 0, &lengthAtOffsetOut, 0, dataPointerOut);
          if (DataPointer)
          {
            v16 = DataPointer;
            rsaAuthentication_AuthenticateEndpoint_cold_4();
          }

          else
          {
            v14 = Base64Decode();
            if (v14)
            {
              v16 = v14;
              rsaAuthentication_AuthenticateEndpoint_cold_5();
            }

            else
            {
              v15 = AirPlayRSA_PublicDecrypt(v23, lengthAtOffsetOut, v23, 0x100uLL, &lengthAtOffsetOut);
              if (v15)
              {
                v16 = v15;
                rsaAuthentication_AuthenticateEndpoint_cold_6();
              }

              else if (lengthAtOffsetOut <= 0xF)
              {
                rsaAuthentication_AuthenticateEndpoint_cold_14();
                v16 = 4294895492;
              }

              else
              {
                v16 = 4294895491;
                if (dataPointerOut[1] == v23[0] && dataPointerOut[2] == v23[1])
                {
                  v16 = 4294895493;
                }

                else
                {
                  rsaAuthentication_AuthenticateEndpoint_cold_7();
                }
              }
            }
          }
        }
      }

      else
      {
        v16 = 4294954514;
      }
    }
  }

  else
  {
    v16 = 4294954514;
  }

  APSLogErrorAt();
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v16;
}

uint64_t rsaAuthentication_CreateEncryptedKey(int a1, CFDataRef theData, const __CFAllocator *a3, CFDataRef *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  v7 = AirPlayRSA_PublicEncrypt(BytePtr, 0x10uLL, bytes, 0x100uLL, &v11);
  if (v7)
  {
    v9 = v7;
    rsaAuthentication_CreateEncryptedKey_cold_1();
  }

  else if (v11 == 256)
  {
    v8 = CFDataCreate(a3, bytes, 256);
    if (v8)
    {
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      rsaAuthentication_CreateEncryptedKey_cold_3();
      return 4294895496;
    }
  }

  else
  {
    v9 = 4294895492;
    rsaAuthentication_CreateEncryptedKey_cold_2();
  }

  return v9;
}

uint64_t APEndpointCreateStreamTypeArrayFromFeatures(char a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v5 = Mutable;
  if (a2)
  {
    if (a1)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x277CC1980]);
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    CFArrayAppendValue(v5, *MEMORY[0x277CC1960]);
    if ((a1 & 8) == 0)
    {
LABEL_5:
      if ((a1 & 0x20) == 0)
      {
LABEL_7:
        result = 0;
        *a2 = v5;
        return result;
      }

LABEL_6:
      CFArrayAppendValue(v5, *MEMORY[0x277CC1970]);
      goto LABEL_7;
    }

LABEL_10:
    CFArrayAppendValue(v5, *MEMORY[0x277CC1968]);
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  APSLogErrorAt();
  if (v5)
  {
    CFRelease(v5);
  }

  return 4294950576;
}

uint64_t APEndpointTriggerAudioHALDeviceCreation(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, int a7, char a8)
{
  v8 = APEndpointTriggerAudioHALDeviceCreationEx(a1, a2, 0, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    APEndpointTriggerAudioHALDeviceCreation_cold_1();
  }

  return v8;
}

uint64_t APEndpointTriggerAudioHALDeviceCreationEx(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, int a8, char a9)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v15 = Mutable;
    if (a5)
    {
      CFDictionarySetValue(Mutable, @"DeviceType", a5);
    }

    if (a4)
    {
      CFDictionarySetValue(v15, @"EndpointName", a4);
    }

    if (a6)
    {
      CFDictionarySetValue(v15, @"NetworkClockType", a6);
    }

    CFDictionarySetInt64();
    v16 = *MEMORY[0x277CBED28];
    v17 = *MEMORY[0x277CBED10];
    if (a8)
    {
      v18 = *MEMORY[0x277CBED28];
    }

    else
    {
      v18 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v15, @"VolumeCtrlSupported", v18);
    if (a9)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    CFDictionarySetValue(v15, @"MuteCtrlSupported", v19);
    CFDictionarySetDouble();
    if (a3)
    {
      CFDictionarySetValue(v15, @"AudioStreamOverride", a3);
    }

    FigHALAudioDeviceBrokerCopy();
    APEndpointTriggerAudioHALDeviceCreationEx_cold_1();
    v21 = 4294949690;
    CFRelease(v15);
  }

  else
  {
    APEndpointTriggerAudioHALDeviceCreationEx_cold_2();
    return 4294950575;
  }

  return v21;
}

uint64_t APEndpointCreateAudioStreamOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  APSGetPersistentGroupModel();
  APSGetClusterModelForPersistentGroupModel();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APEndpointCreateAudioStreamOptions_cold_8();
    v9 = 4294950575;
    goto LABEL_18;
  }

  if (a3)
  {
    CFDictionaryGetValue(a3, @"SupportedAudioFormats");
    CFDictionaryGetInt64();
    CFDictionaryGetInt64Ranged();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    CFDictionaryGetInt64();
    if (CFDictionaryContainsKey(a3, @"PerceivedClusterType"))
    {
      CFDictionaryGetInt64();
    }
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v6 = APAudioFormatCopyPreferredBufferedAudioFormats();
      if (v6)
      {
        v9 = v6;
        APEndpointCreateAudioStreamOptions_cold_2();
        goto LABEL_18;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_16;
      }

      v7 = APAudioFormatCopyPreferredLowLatencyAudioFormats();
      if (v7)
      {
        v9 = v7;
        APEndpointCreateAudioStreamOptions_cold_3();
        goto LABEL_18;
      }
    }

LABEL_13:
    if (CFDictionaryGetInt64())
    {
      v8 = APAudioFormatChooseFromPreferredAudioFormats();
      if (v8)
      {
        v9 = v8;
        APEndpointCreateAudioStreamOptions_cold_4();
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    FigCFArrayGetInt64AtIndex();
LABEL_17:
    APEndpointCreateAudioStreamOptions_cold_7();
    v9 = 4294950576;
    goto LABEL_18;
  }

  v5 = APAudioFormatCopyPreferredRealTimeAudioFormatsSender();
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = v5;
  APEndpointCreateAudioStreamOptions_cold_1();
LABEL_18:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t APEndpointCreateAudioOptions(char a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFDictionary **a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APEndpointCreateAudioOptions_cold_3();
    return 4294950575;
  }

  v10 = Mutable;
  if ((a1 & 2) != 0)
  {
    v11 = *MEMORY[0x277CC1960];
    AudioStreamOptions = APEndpointCreateAudioStreamOptions(*MEMORY[0x277CC1960], a2, a3);
    if (AudioStreamOptions)
    {
      v15 = AudioStreamOptions;
      APEndpointCreateAudioOptions_cold_1();
      goto LABEL_18;
    }

    CFDictionarySetValue(v10, v11, 0);
    if ((a1 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = *MEMORY[0x277CC1968];
    v14 = APEndpointCreateAudioStreamOptions(*MEMORY[0x277CC1968], a2, a3);
    if (!v14)
    {
      CFDictionarySetValue(v10, v13, 0);
      goto LABEL_9;
    }

    v15 = v14;
    APEndpointCreateAudioOptions_cold_2();
LABEL_18:
    CFRelease(v10);
    return v15;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (gLogCategory_APEndpointUtilities <= 50 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = 0;
  *a5 = v10;
  return v15;
}

uint64_t APEndpointCopyFromActivationOptionsOrCreateSharedContext(const __CFDictionary *a1, char a2, CFDictionaryRef theDict, unint64_t a4, void *a5, __CFDictionary **a6)
{
  v31 = 0;
  if (gLogCategory_APEndpointUtilities <= 40 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_1();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else if (!a1)
  {
    goto LABEL_11;
  }

  if (!CFDictionaryGetInt64())
  {
    goto LABEL_11;
  }

  if (a6 && !CFDictionaryContainsKey(a1, @"AudioOptions"))
  {
    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_2();
  }

  else
  {
    if (!a4 || CFDictionaryContainsKey(theDict, @"NetworkClock") || CFDictionaryContainsKey(a1, @"NetworkClock"))
    {
LABEL_11:
      v30 = a2;
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"PreferredNetworkClockType");
        v13 = CFDictionaryGetValue(theDict, @"NetworkClock");
        if (v13)
        {
          v14 = CFRetain(v13);
        }

        else
        {
          v14 = 0;
        }

        v31 = v14;
        CFDictionaryGetInt64();
        v29 = CFDictionaryGetValue(theDict, @"AudioEngineOptions");
        CFDictionaryGetInt64();
        v15 = a6 != 0;
        v16 = a4 != 0;
        if (a4 | a6)
        {
          if (v14)
          {
LABEL_38:
            if (!v15)
            {
              goto LABEL_47;
            }

            if (a1 && (Int64 = CFDictionaryGetInt64(), v25 = CFDictionaryGetValue(a1, @"AudioOptions"), CFDictionaryGetValue(a1, *MEMORY[0x277CC09E8]), Int64))
            {
              if (v25)
              {
                *a6 = CFRetain(v25);
                if (gLogCategory_APEndpointUtilities <= 50 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

LABEL_47:
                if (v16)
                {
                  v21 = 0;
                  *a4 = v31;
                  return v21;
                }

                goto LABEL_49;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_5();
            }

            else
            {
              if (v31)
              {
                v26 = FigCFEqual();
                AudioOptions = APEndpointCreateAudioOptions(v30, v31, v29, v26, a6);
                if (!AudioOptions)
                {
                  goto LABEL_47;
                }

                v21 = AudioOptions;
                APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_6();
                goto LABEL_64;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_7();
            }

            v21 = 4294950576;
LABEL_64:
            APSLogErrorAt();
            goto LABEL_50;
          }

LABEL_19:
          cf = 0;
          if (a1)
          {
            v17 = CFDictionaryGetInt64();
            v18 = CFDictionaryGetValue(a1, @"NetworkClock");
            if (v17)
            {
              if (v18)
              {
                v31 = CFRetain(v18);
                CMBaseObject = APSNetworkClockGetCMBaseObject();
                v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v20)
                {
                  v21 = v20(CMBaseObject, *MEMORY[0x277CEA260], *MEMORY[0x277CBECE8], &cf);
                  if (!v21)
                  {
                    v22 = cf;
                    if (!a5)
                    {
LABEL_35:
                      if (v22)
                      {
                        CFRelease(v22);
                      }

LABEL_37:
                      if (v21)
                      {
                        goto LABEL_64;
                      }

                      goto LABEL_38;
                    }

LABEL_34:
                    *a5 = v22;
                    goto LABEL_37;
                  }
                }

                else
                {
                  v21 = 4294954514;
                }

                APSLogErrorAt();
                v22 = cf;
                goto LABEL_35;
              }

              APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_4();
LABEL_63:
              v21 = 4294950576;
              goto LABEL_64;
            }
          }

          if (FigCFEqual())
          {
            v23 = APSNetworkClockPTPCreate();
          }

          else
          {
            if (!FigCFEqual())
            {
              if (!FigCFEqual())
              {
                goto LABEL_63;
              }

              v21 = 0;
              v31 = 0;
LABEL_33:
              v22 = CFRetain(Value);
              cf = v22;
              if (!a5)
              {
                goto LABEL_35;
              }

              goto LABEL_34;
            }

            v23 = APSNetworkClockNTPServerCreate();
          }

          v21 = v23;
          goto LABEL_33;
        }
      }

      else
      {
        v15 = a6 != 0;
        v16 = a4 != 0;
        if (a4 | a6)
        {
          Value = 0;
          v29 = 0;
          goto LABEL_19;
        }
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    APEndpointCopyFromActivationOptionsOrCreateSharedContext_cold_3();
  }

  v21 = 4294950576;
LABEL_50:
  if (v31)
  {
    CFRelease(v31);
  }

  return v21;
}

void APEndpointCallCompletionCallbackForActivationOrDeactivation(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2(*a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *(a1 + 40));
  }

  v3 = *a1;

  CFRelease(v3);
}

uint64_t APEndpointCreateStreamsChangedNotificationPayload(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  if (a5)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      CFDictionarySetInt64();
      result = 0;
      *a5 = v7;
    }

    else
    {
      APEndpointCreateStreamsChangedNotificationPayload_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateStreamsChangedNotificationPayload_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t APEndpointAPSClusterTypeToAPSLocalRouteType(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t APEndpointCreateLocalRouteState(int a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = MEMORY[0x277CBED10];
      if (a1)
      {
        v9 = MEMORY[0x277CBED28];
      }

      CFDictionarySetValue(Mutable, @"IsActive", *v9);
      if (a1)
      {
        if (a2)
        {
          CFDictionarySetValue(v8, @"GroupContextID", a2);
        }
      }

      CFDictionarySetInt64();
      result = 0;
      *a4 = v8;
    }

    else
    {
      APEndpointCreateLocalRouteState_cold_1();
      return 4294950575;
    }
  }

  else
  {
    APEndpointCreateLocalRouteState_cold_2();
    return 4294950576;
  }

  return result;
}

uint64_t APEndpointGetEnabledFeatures(uint64_t a1, int a2, void *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a3)
  {
    v5 = &v9;
    if (a1)
    {
      CFDictionaryApplyBlock();
      v5 = v10;
    }

    v6 = v5[3];
    if (a2)
    {
      v6 |= 4uLL;
      v5[3] = v6;
    }

    v7 = 0;
    *a3 = v6;
  }

  else
  {
    APEndpointGetEnabledFeatures_cold_1();
    v7 = 4294950576;
  }

  _Block_object_dispose(&v9, 8);
  return v7;
}

uint64_t APEndpointFigEndpointClusterTypeToAPSClusterType(const void *a1)
{
  if (a1)
  {
    if (CFEqual(a1, *MEMORY[0x277CC0B00]))
    {
      return 1;
    }

    else if (CFEqual(a1, *MEMORY[0x277CC0AF8]))
    {
      return 2;
    }

    else if (CFEqual(a1, *MEMORY[0x277CC0AF0]))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APEndpointFigEndpointClusterTypeToAPSClusterType_cold_1();
    return 0;
  }
}

void APEndpointCallCompletionCallbackForSendCommand(uint64_t a1)
{
  v2 = *a1;
  if (!*a1 || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v2 = 0;
  }

  (*(a1 + 16))(v2, *(a1 + 32), *(a1 + 8), *(a1 + 24));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    CFRelease(v3);
  }
}

void *APEndpointCreateRCSendDataCompletionContext(const void *a1, const void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0xE0040B6671DC2uLL);
  if (v10)
  {
    *v10 = CFRetain(a1);
    v10[1] = CFRetain(a2);
    v10[4] = a3;
    dispatch_retain(a3);
    v10[2] = a4;
    v10[3] = a5;
  }

  else
  {
    APEndpointCreateRCSendDataCompletionContext_cold_1();
  }

  return v10;
}

void APEndpointCallRCSendDataCompletionAsync(CFTypeRef cf, CFTypeRef a2, int a3, dispatch_queue_t queue, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __APEndpointCallRCSendDataCompletionAsync_block_invoke;
    block[3] = &__block_descriptor_tmp_59_0;
    block[4] = a5;
    block[5] = cf;
    v13 = a3;
    block[6] = a2;
    block[7] = a6;
    dispatch_async(queue, block);
  }
}

void __APEndpointCallRCSendDataCompletionAsync_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void APEndpointCallRCSendDataCompletionFromContextAsync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  APEndpointCallRCSendDataCompletionAsync(*a4, *(a4 + 8), a3, *(a4 + 32), *(a4 + 16), *(a4 + 24));
  if (*a4)
  {
    CFRelease(*a4);
  }

  v5 = *(a4 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  dispatch_release(*(a4 + 32));

  free(a4);
}

void APEndpointCallRCDelegateDidReceiveDataAsync(const void *a1, uint64_t a2, const void *a3, const void *a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a6)
        {
          if (a5)
          {
            if (a7)
            {
              v13 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (!v13)
              {
                APEndpointCallRCDelegateDidReceiveDataAsync_cold_1();
                return;
              }
            }

            else
            {
              v13 = 0;
            }

            CFRetain(a1);
            CFRetain(a3);
            CFRetain(a4);
            if (v13)
            {
              CFRetain(v13);
            }

            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 0x40000000;
            v14[2] = __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke;
            v14[3] = &__block_descriptor_tmp_61;
            v14[4] = a1;
            v14[5] = a3;
            v14[6] = a4;
            v14[7] = a6;
            v14[8] = a2;
            v14[9] = v13;
            dispatch_async(a5, v14);
            if (v13)
            {
              CFRelease(v13);
            }
          }

          else
          {
            APEndpointCallRCDelegateDidReceiveDataAsync_cold_2();
          }
        }

        else
        {
          APEndpointCallRCDelegateDidReceiveDataAsync_cold_3();
        }
      }

      else
      {
        APEndpointCallRCDelegateDidReceiveDataAsync_cold_4();
      }
    }

    else
    {
      APEndpointCallRCDelegateDidReceiveDataAsync_cold_5();
    }
  }

  else
  {
    APEndpointCallRCDelegateDidReceiveDataAsync_cold_6();
  }
}

void __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointUtilities <= 30 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    __APEndpointCallRCDelegateDidReceiveDataAsync_block_invoke_cold_1(a1);
  }

  (*(a1 + 56))(*(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48), *(a1 + 72));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 72);
  if (v2)
  {

    CFRelease(v2);
  }
}

void APEndpointCallRCDelegateDidCloseAsync(const void *a1, uint64_t a2, const void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        if (a4)
        {
          if (a6)
          {
            v11 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (!v11)
            {
              APEndpointCallRCDelegateDidCloseAsync_cold_1();
              return;
            }
          }

          else
          {
            v11 = 0;
          }

          CFRetain(a1);
          CFRetain(a3);
          if (v11)
          {
            CFRetain(v11);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = __APEndpointCallRCDelegateDidCloseAsync_block_invoke;
          block[3] = &__block_descriptor_tmp_63_0;
          block[4] = a1;
          block[5] = a3;
          block[6] = a5;
          block[7] = a2;
          block[8] = v11;
          dispatch_async(a4, block);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        else
        {
          APEndpointCallRCDelegateDidCloseAsync_cold_2();
        }
      }

      else
      {
        APEndpointCallRCDelegateDidCloseAsync_cold_3();
      }
    }

    else
    {
      APEndpointCallRCDelegateDidCloseAsync_cold_4();
    }
  }

  else
  {
    APEndpointCallRCDelegateDidCloseAsync_cold_5();
  }
}

void __APEndpointCallRCDelegateDidCloseAsync_block_invoke(uint64_t a1)
{
  if (gLogCategory_APEndpointUtilities <= 50 && (gLogCategory_APEndpointUtilities != -1 || _LogCategory_Initialize()))
  {
    __APEndpointCallRCDelegateDidCloseAsync_block_invoke_cold_1();
  }

  (*(a1 + 48))(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 64);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t APEndpointApplyInitialVolume(uint64_t a1)
{
  if (a1 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v2 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v2)
    {

      return v2(a1, @"applyInitialVolume", 0, 0, 0);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294950576;
  }
}

CFMutableDictionaryRef APEndpointCreateSecondDisplayModeCommandParams()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    CFDictionarySetInt64();
  }

  else
  {
    APEndpointCreateSecondDisplayModeCommandParams_cold_1();
  }

  return Mutable;
}

NSObject *APEndpointCreateAndStartProcessDemiseListener(void *a1, int a2, dispatch_queue_t queue, void (__cdecl *a4)(void *))
{
  v6 = dispatch_source_create(MEMORY[0x277D85D20], a2, 0x80000000uLL, queue);
  v7 = v6;
  if (v6)
  {
    dispatch_set_context(v6, a1);
    dispatch_source_set_event_handler_f(v7, a4);
    dispatch_resume(v7);
  }

  else
  {
    APEndpointCreateAndStartProcessDemiseListener_cold_1();
  }

  return v7;
}

uint64_t APAuthenticationClientMFiCreate(uint64_t a1, const void *a2, void *a3)
{
  if (a2)
  {
    APAuthenticationClientGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v6 = v5;
      APSLogErrorAt();
    }

    else
    {
      *(CMBaseObjectGetDerivedStorage() + 8) = a2;
      CFRetain(a2);
      if (gLogCategory_APAuthenticationClientMFi <= 30 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
      {
        APAuthenticationClientMFiCreate_cold_1();
      }

      v6 = 0;
      *a3 = 0;
    }
  }

  else
  {
    APAuthenticationClientMFiCreate_cold_2();
    return 4294895495;
  }

  return v6;
}

void mfiAuthentication_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFi <= 30 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
  {
    mfiAuthentication_Finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    MFiSAP_Delete();
    *DerivedStorage = 0;
  }

  v1 = DerivedStorage[1];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[1] = 0;
  }
}

__CFString *mfiAuthentication_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAuthenticationClientMFi %p>", a1);
  return Mutable;
}

void *__getMFAACreateCertificateSerialNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MFAAuthenticationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 0x40000000;
    v5[3] = __MFAAuthenticationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_tmp_8;
    v5[5] = v5;
    v6 = xmmword_2784A0790;
    v7 = 0;
    MFAAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
    if (MFAAuthenticationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MFAAuthenticationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MFAACreateCertificateSerialNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMFAACreateCertificateSerialNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MFAAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MFAAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t mfiAuthentication_AuthenticateEndpoint()
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v12 = 0;
  v10 = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFi <= 40 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
  {
    mfiAuthentication_AuthenticateEndpoint_cold_1();
  }

  if (*DerivedStorage)
  {
    MFiSAP_Delete();
    *DerivedStorage = 0;
  }

  v1 = MFiSAP_Create();
  if (v1)
  {
    v8 = v1;
    mfiAuthentication_AuthenticateEndpoint_cold_2();
  }

  else
  {
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    v2 = MFiSAP_Exchange();
    if (v2)
    {
LABEL_19:
      v8 = v2;
    }

    else
    {
      while (1)
      {
        if (v12)
        {
          v8 = 0;
          goto LABEL_23;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v10)
        {
          CFRelease(v10);
          v10 = 0;
        }

        BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
        if (BlockBufferCopyingMemoryBlock)
        {
          v8 = BlockBufferCopyingMemoryBlock;
          mfiAuthentication_AuthenticateEndpoint_cold_3();
          goto LABEL_23;
        }

        if (dataPointerOut)
        {
          free(dataPointerOut);
          dataPointerOut = 0;
        }

        v4 = DerivedStorage[1];
        v5 = cf;
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v6)
        {
          v8 = 4294954514;
          goto LABEL_21;
        }

        v7 = v6(v4, 1835428128, v5, &v10);
        if (v7)
        {
          break;
        }

        CMBlockBufferGetDataPointer(v10, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        v2 = MFiSAP_Exchange();
        if (v2)
        {
          goto LABEL_19;
        }
      }

      v8 = v7;
    }

LABEL_21:
    APSLogErrorAt();
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    if (*DerivedStorage)
    {
      MFiSAP_Delete();
      *DerivedStorage = 0;
    }

    if (gLogCategory_APAuthenticationClientMFi <= 60 && (gLogCategory_APAuthenticationClientMFi != -1 || _LogCategory_Initialize()))
    {
      mfiAuthentication_AuthenticateEndpoint_cold_4();
    }
  }

  return v8;
}

uint64_t mfiAuthentication_CreateEncryptedKey(uint64_t a1, const __CFData *a2, const __CFAllocator *a3, CFDataRef *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*CMBaseObjectGetDerivedStorage())
  {
    CFDataGetBytePtr(a2);
    v7 = MFiSAP_Encrypt();
    if (v7)
    {
      v9 = v7;
      mfiAuthentication_CreateEncryptedKey_cold_1();
    }

    else
    {
      v8 = CFDataCreate(a3, bytes, 16);
      if (v8)
      {
        v9 = 0;
        *a4 = v8;
      }

      else
      {
        mfiAuthentication_CreateEncryptedKey_cold_2();
        return 4294895496;
      }
    }
  }

  else
  {
    v9 = 4294895493;
    mfiAuthentication_CreateEncryptedKey_cold_3();
  }

  return v9;
}

uint64_t mrcr_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APMediaRemoteCommandReceiverCreate(uint64_t a1, const void *a2, int **a3)
{
  if (a2)
  {
    if (a3)
    {
      if (_MergedGlobals_23 != -1)
      {
        APMediaRemoteCommandReceiverCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        *(Instance + 16) = 0u;
        *(Instance + 32) = 0u;
        v7 = (Instance + 32);
        *(Instance + 16) = CFRetain(a2);
        *v7 = -1;
        v6[10] = -1;
        v8 = DACPServer_Create();
        if (v8)
        {
          v9 = v8;
          APMediaRemoteCommandReceiverCreate_cold_2(v8, v6);
        }

        else
        {
          notify_register_check("com.apple.AirTunes.DACP.devicevolume", v7);
          notify_register_check("com.apple.AirTunes.DACP.devicevolumechanged", v6 + 9);
          notify_register_check("com.apple.AirTunes.DACP.device-prevent-playback", v6 + 10);
          if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
          {
            APMediaRemoteCommandReceiverCreate_cold_3();
          }

          v9 = 0;
          *a3 = v6;
        }
      }

      else
      {
        APMediaRemoteCommandReceiverCreate_cold_4();
        return 4294895606;
      }
    }

    else
    {
      v9 = 4294895603;
      APMediaRemoteCommandReceiverCreate_cold_5();
    }
  }

  else
  {
    v9 = 4294895603;
    APMediaRemoteCommandReceiverCreate_cold_6();
  }

  return v9;
}

uint64_t mrcr_handleDACPCommand(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v11 = 30064;
LABEL_24:
    v7 = v11 | 0x766C0000;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v11 = 25710;
    goto LABEL_24;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1836414068;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1852404845;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1885959277;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1920166260;
    goto LABEL_25;
  }

  v7 = 1886151033;
  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1937010544;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1885435251;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1685086581;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1886154867;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1919967588;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1936225383;
    goto LABEL_25;
  }

  if (!strnicmp_prefix())
  {
    if (a3 < 13)
    {
LABEL_42:
      APSLogErrorAt();
      return 4294895605;
    }

    v13 = 0;
    while (*(a2 + v13 + 12) != 61)
    {
      ++v13;
      if (a2 + v13 + 12 >= (a2 + a3))
      {
        goto LABEL_42;
      }
    }

    v9 = a2 + v13 + 13;
    v10 = a3 - v13 - 13;
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        v8 = 4294895602;
        if (gLogCategory_APMediaRemoteCommandReceiver <= 60 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_49;
        }

        return v8;
      }

      if (*(a4 + 40) == -1)
      {
        mrcr_handleDACPCommand_cold_1();
        return 4294895604;
      }

      if (strnicmpx())
      {
        if (!strnicmpx() || !strnicmpx())
        {
          v7 = 1885499506;
          goto LABEL_25;
        }

        if (strnicmpx())
        {
          return 4294895603;
        }
      }

      v7 = 1885495660;
    }

    else
    {
      v7 = 1685482605;
    }

LABEL_25:
    APMediaRemoteCommandReceiverHandleAPCommand(a4, v7, v9, v10);
    return 0;
  }

  if (!strnicmp_prefix())
  {
    v7 = 1685482604;
    v9 = a2 + 13;
    v10 = a3 - 13;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1650878052;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1651668836;
    goto LABEL_25;
  }

  if (!strnicmpx())
  {
    v9 = 0;
    v10 = 0;
    v7 = 1886155379;
    goto LABEL_25;
  }

  v8 = 4294895602;
  if (gLogCategory_APMediaRemoteCommandReceiver <= 60 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
LABEL_49:
    LogPrintF();
  }

  return v8;
}

uint64_t APMediaRemoteCommandReceiverAddClient()
{
  v0 = DACPServer_AddRemote();
  if (v0)
  {
    v2 = v0;
    APMediaRemoteCommandReceiverAddClient_cold_1();
  }

  else
  {
    v1 = HTTPServer_Start();
    if (v1)
    {
      v2 = v1;
      APMediaRemoteCommandReceiverAddClient_cold_2();
    }

    else
    {
      if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
      {
        APMediaRemoteCommandReceiverAddClient_cold_3();
      }

      return 0;
    }
  }

  return v2;
}

uint64_t APMediaRemoteCommandReceiverRemoveClient()
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    APMediaRemoteCommandReceiverRemoveClient_cold_1();
  }

  v0 = DACPServer_RemoveRemote();
  if (v0)
  {
    v1 = v0;
    APMediaRemoteCommandReceiverRemoveClient_cold_2();
  }

  else
  {
    v1 = HTTPServer_Stop();
    if (v1)
    {
      APMediaRemoteCommandReceiverRemoveClient_cold_3();
    }
  }

  return v1;
}

uint64_t APMediaRemoteCommandReceiverHandleAPCommand(uint64_t result, int a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (gLogCategory_APMediaRemoteCommandReceiver <= 50)
  {
    if (gLogCategory_APMediaRemoteCommandReceiver != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (a2 > 1885495659)
  {
    if (a2 > 1986815085)
    {
      if (a2 == 1986819440)
      {
        v8 = "com.apple.AirTunes.DACP.volumeup";
        goto LABEL_28;
      }

      if (a2 == 1986815086)
      {
        v8 = "com.apple.AirTunes.DACP.volumedown";
        goto LABEL_28;
      }
    }

    else
    {
      if (a2 == 1885495660)
      {
        return result;
      }

      if (a2 == 1885499506)
      {
        CMNotificationCenterGetDefaultLocalCenter();

        return CMNotificationCenterPostNotification();
      }
    }

LABEL_31:
    v9 = *(v7 + 16);

    return APMediaRemoteCommandSinkHandleAPCommand(v9, a2);
  }

  if (a2 > 1685482604)
  {
    if (a2 == 1685482605)
    {
      result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolume", a3, a4);
      if (result)
      {
        return APMediaRemoteCommandReceiverHandleAPCommand_cold_2();
      }

      return result;
    }

    if (a2 == 1836414068)
    {
      v8 = "com.apple.AirTunes.DACP.mutetoggle";
LABEL_28:
      result = notify_post(v8);
      if (gLogCategory_APMediaRemoteCommandReceiver <= 50)
      {
        if (gLogCategory_APMediaRemoteCommandReceiver != -1)
        {
          return LogPrintF();
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return LogPrintF();
        }
      }

      return result;
    }

    goto LABEL_31;
  }

  if (a2 != 1685482595)
  {
    if (a2 == 1685482604)
    {
      result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolume", a3, a4);
      if (result)
      {
        return APMediaRemoteCommandReceiverHandleAPCommand_cold_3();
      }

      return result;
    }

    goto LABEL_31;
  }

  result = mrcr_handleDeviceVolume(v7, "com.apple.AirTunes.DACP.devicevolumechanged", a3, a4);
  if (result)
  {
    return APMediaRemoteCommandReceiverHandleAPCommand_cold_1();
  }

  return result;
}

uint64_t mrcr_handleDeviceVolume(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0.0;
  if (!a2)
  {
    mrcr_handleDeviceVolume_cold_3();
    return 4294895603;
  }

  if (a4 >= 0x40)
  {
    v12 = 4294895601;
    mrcr_handleDeviceVolume_cold_2();
    return v12;
  }

  __memcpy_chk();
  v15[a4] = 0;
  if (sscanf(v15, "%lf", &v14) != 1)
  {
    mrcr_handleDeviceVolume_cold_1();
    return 4294895605;
  }

  v7 = v14;
  if (v14 > 0.0)
  {
    v7 = 0.0;
  }

  if (v7 < -30.0)
  {
    v7 = -30.0;
  }

  v14 = v7;
  APSVolumeConvertDBToSliderValue();
  v9 = v8;
  if (!strcmp(a2, "com.apple.AirTunes.DACP.devicevolume"))
  {
    v10 = 32;
  }

  else
  {
    if (strcmp(a2, "com.apple.AirTunes.DACP.devicevolumechanged"))
    {
      return 0;
    }

    v10 = 36;
  }

  v11 = *(a1 + v10);
  if (v11 == -1)
  {
    return 0;
  }

  notify_set_state(v11, COERCE_UINT64_T(v9));
  v12 = notify_post(a2);
  if (gLogCategory_APMediaRemoteCommandReceiver <= 40 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v12;
}

uint64_t APMediaRemoteCommandReceiverHandleMRCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 16);

  return APMediaRemoteCommandSinkHandleMRCommand(v6, a2, a3);
}

void mrcr_Finalize(uint64_t a1)
{
  if (gLogCategory_APMediaRemoteCommandReceiver <= 30 && (gLogCategory_APMediaRemoteCommandReceiver != -1 || _LogCategory_Initialize()))
  {
    mrcr_Finalize_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    notify_cancel(v2);
    *(a1 + 32) = -1;
  }

  v3 = *(a1 + 36);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(a1 + 36) = -1;
  }

  v4 = *(a1 + 40);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(a1 + 40) = -1;
  }

  if (*(a1 + 24))
  {
    HTTPServer_Delete();
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }
}

__CFString *jitterBuffer_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSinkJitterBuffer>");
  return Mutable;
}

uint64_t jitterBuffer_GetInputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 56);
  v5 = *(DerivedStorage + 40);
  *a2 = *(DerivedStorage + 24);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t jitterBuffer_Suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (gLogCategory_APAudioSinkJitterBuffer <= 30 && (gLogCategory_APAudioSinkJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      jitterBuffer_Suspend_cold_1();
    }

    result = 0;
    *v1 = 0;
  }

  else
  {
    jitterBuffer_Suspend_cold_2();
    return 4294950503;
  }

  return result;
}

uint64_t SPHubbedDevicesProviderPropertyCreate(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    SPHubbedDevicesProviderPropertyCreate_cold_6();
    return 4294960591;
  }

  SPHubbedDevicesProviderGetClassID();
  v2 = CMDerivedObjectCreate();
  if (v2)
  {
    v6 = v2;
    SPHubbedDevicesProviderPropertyCreate_cold_1();
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    SPHubbedDevicesProviderPropertyCreate_cold_2();
  }

  *(DerivedStorage + 24) = 0;
  v4 = FigSimpleMutexCreate();
  *DerivedStorage = v4;
  if (!v4)
  {
    SPHubbedDevicesProviderPropertyCreate_cold_5();
    return 4294960568;
  }

  SNPrintF();
  v5 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v5;
  if (!v5)
  {
    SPHubbedDevicesProviderPropertyCreate_cold_4();
    return 4294960568;
  }

  *(DerivedStorage + 16) = 0;
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    SPHubbedDevicesProviderPropertyCreate_cold_3();
  }

  v6 = 0;
  *a1 = 0;
  return v6;
}

uint64_t hdpp_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    hdpp_Invalidate_cold_1();
  }

  *(DerivedStorage + 24) = 1;
  return 0;
}

uint64_t hdpp_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 50)
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = hdpp_Finalize_cold_1();
    }
  }

  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 16) = 0;
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(v1 + 8) = 0;
    }

    return FigSimpleMutexDestroy();
  }

  else
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 90)
    {
      if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = hdpp_Finalize_cold_2();
      }
    }

    __break(1u);
  }

  return result;
}

__CFString *hdpp_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<SPHubbedDevicesProviderProperty %p>", a1);
  return Mutable;
}

uint64_t hdpp_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFSetRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    hdpp_CopyProperty_cold_6();
    return 4294960591;
  }

  if (!a4)
  {
    hdpp_CopyProperty_cold_5();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_CopyProperty_cold_4();
    }

    v10 = 4294954512;
    goto LABEL_24;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 16);
  if (!v8)
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_CopyProperty_cold_2();
    }

    Copy = CFSetCreate(a3, 0, 0, MEMORY[0x277CBF158]);
    if (Copy)
    {
      goto LABEL_23;
    }

    hdpp_CopyProperty_cold_3();
LABEL_32:
    v10 = 4294960568;
    goto LABEL_24;
  }

  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30)
  {
    v9 = DerivedStorage;
    if (gLogCategory_SPHubbedDevicesProviderProperty != -1 || (v12 = _LogCategory_Initialize(), v8 = *(v9 + 16), v12))
    {
      LogPrintF();
      v8 = *(v9 + 16);
    }
  }

  Copy = CFSetCreateCopy(a3, v8);
  if (!Copy)
  {
    hdpp_CopyProperty_cold_1();
    goto LABEL_32;
  }

LABEL_23:
  v10 = 0;
  *a4 = Copy;
LABEL_24:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t hdpp_SetProperty(uint64_t a1, const void *a2, CFSetRef a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a2)
  {
    hdpp_SetProperty_cold_4();
    return 4294960591;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"HubbedDevices"))
  {
    if (gLogCategory_SPHubbedDevicesProviderProperty <= 30 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
    {
      hdpp_SetProperty_cold_3();
    }

    v8 = 4294954512;
    goto LABEL_35;
  }

  values = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    goto LABEL_19;
  }

  v6 = CFGetTypeID(a3);
  if (v6 == CFSetGetTypeID())
  {
    v7 = CFRetain(a3);
LABEL_18:
    a3 = v7;
    goto LABEL_19;
  }

  v9 = CFGetTypeID(a3);
  if (v9 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a3);
    v11 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    v16.location = 0;
    v16.length = Count;
    CFArrayGetValues(a3, v16, v11);
    a3 = CFSetCreate(*MEMORY[0x277CBECE8], v11, Count, MEMORY[0x277CBF158]);
    free(v11);
LABEL_19:
    if (!FigCFEqual())
    {
      if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v13 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (gLogCategory_SPHubbedDevicesProviderProperty <= 50 && (gLogCategory_SPHubbedDevicesProviderProperty != -1 || _LogCategory_Initialize()))
      {
        hdpp_SetProperty_cold_2();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    if (a3)
    {
      CFRelease(a3);
    }

    v8 = 0;
    goto LABEL_35;
  }

  v12 = CFGetTypeID(a3);
  if (v12 == CFStringGetTypeID())
  {
    v7 = CFSetCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF158]);
    goto LABEL_18;
  }

  hdpp_SetProperty_cold_1();
  v8 = 4294960591;
LABEL_35:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APAudioEngineBufferedAdapterCreate(uint64_t a1, const __CFDictionary *a2, const void *a3, CFTypeRef *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  value = 0;
  cf = 0;
  if (!a2)
  {
    APAudioEngineBufferedAdapterCreate_cold_22();
    goto LABEL_35;
  }

  if (!a3)
  {
    APAudioEngineBufferedAdapterCreate_cold_21();
    goto LABEL_35;
  }

  if (!a4)
  {
    APAudioEngineBufferedAdapterCreate_cold_20();
    goto LABEL_35;
  }

  if (gLogCategory_APAudioEngineBufferedAdapter <= 30 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    APAudioEngineBufferedAdapterCreate_cold_1();
  }

  FigEndpointStreamAudioEngineGetClassID();
  v26 = CMDerivedObjectCreate();
  if (v26)
  {
    APAudioEngineBufferedAdapterCreate_cold_2();
    goto LABEL_35;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 49) = 0;
  *(DerivedStorage + 144) = CFRetain(a3);
  v26 = APSDispatchSectionCreate();
  if (v26)
  {
    APAudioEngineBufferedAdapterCreate_cold_3();
    goto LABEL_35;
  }

  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    APAudioEngineBufferedAdapterCreate_cold_19(&v26);
    goto LABEL_35;
  }

  if (!CFDictionaryGetValueIfPresent(a2, @"streamType", &value))
  {
    APAudioEngineBufferedAdapterCreate_cold_18();
    goto LABEL_35;
  }

  v10 = value;
  if (value)
  {
    v10 = CFRetain(value);
  }

  *(DerivedStorage + 8) = v10;
  *DerivedStorage = CFStringCreateF();
  if (v26)
  {
    APAudioEngineBufferedAdapterCreate_cold_4();
    goto LABEL_35;
  }

  SNPrintF();
  v11 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 160) = v11;
  if (!v11)
  {
    APAudioEngineBufferedAdapterCreate_cold_17(&v26);
    goto LABEL_35;
  }

  SNPrintF();
  v12 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v12;
  if (!v12)
  {
    APAudioEngineBufferedAdapterCreate_cold_16(&v26);
    goto LABEL_35;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_15();
    goto LABEL_35;
  }

  *(DerivedStorage + 16) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_14();
    goto LABEL_35;
  }

  *(DerivedStorage + 20) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_13();
    goto LABEL_35;
  }

  *(DerivedStorage + 24) = 0 / 1000.0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    APAudioEngineBufferedAdapterCreate_cold_12();
    goto LABEL_35;
  }

  *(DerivedStorage + 28) = 0 / 1000.0;
  if (gLogCategory_APAudioEngineBufferedAdapter <= 50 && (gLogCategory_APAudioEngineBufferedAdapter != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v13 = CFDictionaryGetValue(a2, @"senderNetworkClock");
  if (!v13)
  {
    *(DerivedStorage + 32) = 0;
    goto LABEL_41;
  }

  v14 = CFRetain(v13);
  *(DerivedStorage + 32) = v14;
  if (!v14)
  {
LABEL_41:
    APAudioEngineBufferedAdapterCreate_cold_11();
    goto LABEL_35;
  }

  v15 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 104) = Mutable;
  if (Mutable)
  {
    v17 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v17)
    {
      v18 = v17;
      FigCFDictionarySetValue();
      SNPrintF();
      v19 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 184) = v19;
      if (!v19)
      {
        APAudioEngineBufferedAdapterCreate_cold_8(&v26);
        goto LABEL_34;
      }

      v26 = APSRealTimeDispatcherCreate();
      if (v26)
      {
        APAudioEngineBufferedAdapterCreate_cold_5();
        goto LABEL_34;
      }

      v20 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(DerivedStorage + 200) = v20;
      if (!v20)
      {
        APAudioEngineBufferedAdapterCreate_cold_7(&v26);
        goto LABEL_34;
      }

      CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v26 = v22(CMBaseObject, *MEMORY[0x277CD6248], a1, DerivedStorage + 152);
        if (!v26)
        {
          *(DerivedStorage + 48) = 0;
          *a4 = cf;
          cf = 0;
LABEL_34:
          CFRelease(v18);
          goto LABEL_35;
        }
      }

      else
      {
        v26 = -12782;
      }

      APAudioEngineBufferedAdapterCreate_cold_6();
      goto LABEL_34;
    }

    APAudioEngineBufferedAdapterCreate_cold_9();
  }

  else
  {
    APAudioEngineBufferedAdapterCreate_cold_10();
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}