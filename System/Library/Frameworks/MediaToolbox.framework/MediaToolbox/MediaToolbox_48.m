void bapspManager_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspManager_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_132_1;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

uint64_t bapspManager_isSubPipeStarted()
{
  BOOLean = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 104);
  if (!v0)
  {
    return 0;
  }

  CMBaseObject = FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(v0);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, @"IsStarted", *MEMORY[0x1E695E480], &BOOLean);
  v4 = BOOLean;
  if (v3)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_5;
  }

  Value = CFBooleanGetValue(BOOLean);
  v4 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v4);
  }

  return Value;
}

void bapspManager_startDataFlowIfRateIsValid(const void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 56) != -999999.875)
  {
    CMBaseObjectGetDerivedStorage();

    bapspManager_scheduleProcessingDataIfPossible(a1);
  }
}

uint64_t bapspManager_reset(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __bapspManager_reset_block_invoke;
  v8[3] = &unk_1E748DFA0;
  v8[4] = &v10;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v9 = a2;
  dispatch_sync(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t bapspManager_flush(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __bapspManager_flush_block_invoke;
  v8[3] = &unk_1E748DFC8;
  v8[4] = &v11;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v10 = *(a2 + 2);
  v9 = *a2;
  dispatch_sync(v5, v8);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t OUTLINED_FUNCTION_9_41()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeRef OUTLINED_FUNCTION_23_27()
{

  return CMGetAttachment(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_25_20()
{
  v2 = *(v0 + 56);
  v3 = (*(v0 + 40) + 56);

  return CFNumberGetValue(v2, kCFNumberFloat64Type, v3);
}

void OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
}

uint64_t FigMediaProcessorCreateForVideoRotation(const __CFAllocator *a1, int a2, int a3, int a4, const void *a5, const void *a6, void *a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, int a14, uint64_t *a15)
{
  v34 = 0;
  v32 = 0;
  cf = 0;
  v31 = 0;
  if ((a6 == 0) != (a7 != 0) || !a10)
  {
    goto LABEL_14;
  }

  if (a2 > 179)
  {
    if (a2 == 180 || a2 == 270)
    {
      goto LABEL_12;
    }

LABEL_14:

    return FigSignalErrorAtGM();
  }

  if (a2)
  {
    if (a2 != 90)
    {
      goto LABEL_14;
    }
  }

  else if (!(a4 | a3))
  {
    goto LABEL_14;
  }

LABEL_12:
  if (a3 && a4)
  {
    goto LABEL_14;
  }

  v19 = FigSampleBufferProcessorCreateForVideoRotation(a1, a2, a3, a4, a5, &v34);
  if (!v19)
  {
    v20 = *MEMORY[0x1E695E480];
    if (a6)
    {
      v19 = FigSampleBufferProviderCreateForBufferQueue(v20, a6, &cf);
      if (v19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = *a8;
      v30 = *(a8 + 16);
      v22 = a9[1];
      v26 = *a9;
      v27 = v22;
      v28 = a9[2];
      v29 = v21;
      v19 = FigSampleBufferProviderCreateForVisualContext(v20, a7, &v29, &v26, &cf);
      if (v19)
      {
        goto LABEL_23;
      }
    }

    v26 = *a11;
    *&v27 = *(a11 + 16);
    v29 = *a12;
    v30 = *(a12 + 16);
    v19 = FigSampleBufferConsumerCreateForBufferQueue(a10, &v26, &v29, &v32);
    if (!v19)
    {
      if (a13)
      {
        v24 = a1;
        v19 = FigActivitySchedulerCreateForCFRunLoop(a1, a13, &v31);
        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v24 = a1;
        v19 = FigActivitySchedulerCreateForNewThread(a1, a14, @"com.apple.coremedia.mediaprocessor.videorotation", &v31);
        if (v19)
        {
          goto LABEL_23;
        }
      }

      v19 = FigMediaProcessorCreate(v24, v34, cf, v32, v31, a15);
    }
  }

LABEL_23:
  v23 = v19;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v23;
}

uint64_t FigAlternateFilterMonitorTriggerSetBoss(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    v5 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v4)
  {
    FigAlternateFilterMonitorTriggerSetBoss_cold_1(&v7);
    return v7;
  }

  a2 = v4;
  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v4;
  CFRetain(v4);
  if (v5)
  {
LABEL_4:
    CFRelease(v5);
  }

LABEL_5:
  FigSimpleMutexUnlock();
  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t FigAlternateFilterMonitorTriggerInvoke(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  v6 = famt_copyObserverEntries(a1);
  if (!v6)
  {
    FigAlternateFilterMonitorTriggerInvoke_cold_1(&v15);
    v13 = v15;
    if (!v5)
    {
      return v13;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = FigAlternateSelectionBossLockForConfiguration(v5);
  if (!v8)
  {
    if (CFArrayGetCount(v7) >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v11)
        {
          v12 = v11;
          ValueAtIndex[1](a1, v11, a2, ValueAtIndex[2]);
          CFRelease(v12);
        }

        ++v9;
      }

      while (v9 < CFArrayGetCount(v7));
    }

    v8 = FigAlternateSelectionBossUnlockForConfiguration(v5);
  }

  v13 = v8;
  CFRelease(v7);
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v13;
}

CFArrayRef famt_copyObserverEntries(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v3, *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return Copy;
}

CFTypeRef FigAlternateFilterMonitorTriggerAddObserver(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (cf[0])
  {
    cf[1] = a3;
    cf[2] = a4;
    FigSimpleMutexLock();
    CFArrayAppendValue(*(DerivedStorage + 40), cf);
    FigSimpleMutexUnlock();
    result = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
      return 0;
    }
  }

  else
  {
    FigAlternateFilterMonitorTriggerAddObserver_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigAlternateFilterMonitorTriggerRemoveObserver()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    CFArrayGetValueAtIndex(*(DerivedStorage + 40), i);
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (FigCFEqual())
    {
      break;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), i);
  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t FigAlternateFilterMonitorTriggerCreateForNotification(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorTriggerGetClassID_sRegisterFigAlternateFilterMonitorTriggerTypeOnce, RegisterFigAlternateFilterMonitorTriggerType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v10 = CFRetain(a2);
  }

  else
  {
    v10 = 0;
  }

  *DerivedStorage = v10;
  v11 = FigReentrantMutexCreate();
  DerivedStorage[3] = v11;
  if (!v11)
  {
    v17 = 403;
LABEL_18:
    FigAlternateFilterMonitorTriggerCreateForNotification_cold_1(v17, &v18);
    return v18;
  }

  if (a3)
  {
    v12 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    v12 = 0;
  }

  DerivedStorage[1] = v12;
  v13 = dispatch_queue_create("com.apple.coremedia.alternateFilterMonitorTrigger.callback", 0);
  DerivedStorage[2] = v13;
  if (!v13)
  {
    v17 = 408;
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(a1, 0, &kObserverEntryCFArrayValueCallbacks);
  DerivedStorage[5] = Mutable;
  if (!Mutable)
  {
    v17 = 411;
    goto LABEL_18;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListener();
  if (!v15)
  {
    *a4 = 0;
  }

  return v15;
}

uint64_t famt_equal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    return 0;
  }

  if (*(DerivedStorage + 8))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 8))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v4 = 0;
  }

  v3 = FigCFEqual();
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t famt_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v1 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (v1)
  {
    CFRelease(v1);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    dispatch_release(v5);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famt_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = famt_copyObserverEntries(a1);
  v4 = *MEMORY[0x1E695E480];
  v5 = *DerivedStorage;
  if (!v3)
  {
    return CFStringCreateWithFormat(v4, 0, @"[FigAlternateFilterMonitorTrigger<%p> %@ numObservers:%d]", a1, v5, 0);
  }

  v6 = v3;
  Count = CFArrayGetCount(v3);
  v8 = CFStringCreateWithFormat(v4, 0, @"[FigAlternateFilterMonitorTrigger<%p> %@ numObservers:%d]", a1, v5, Count);
  CFRelease(v6);
  return v8;
}

uint64_t RegisterFigAlternateFilterMonitorTriggerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t famt_observerEntryCFArrayRetainCallBack(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0xE004023458D36, 0);
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(a2 + 2);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v5;
  return v3;
}

void famt_observerEntryCFArrayReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  v4 = ptr[2];
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t remoteXPCCPEClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCCPEClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E748E070;
  block[4] = &v3;
  if (remoteXPCCPEClient_EnsureClientEstablished_gCPERemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteXPCCPEClient_EnsureClientEstablished_gCPERemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFMutableDictionaryRef __FigCPERemoteSetStorageLocation_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _MergedGlobals_81 = result;
  return result;
}

uint64_t FigAlternateSelectionBossGetClassID()
{
  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  return sFigAlternateSelectionBossClassID;
}

uint64_t RegisterFigAlternateSelectionBossType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateSelectionBossGetTypeID()
{
  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternateSelectionBossAddFilter(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = fasb_addFilterGuts();
    FigSimpleMutexUnlock();
    return v3;
  }

  else
  {
    FigAlternateSelectionBossAddFilter_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSelectionBossRemoveFilter(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = fasb_removeFilter();
    FigSimpleMutexUnlock();
    return v3;
  }

  else
  {
    FigAlternateSelectionBossRemoveFilter_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSelectionBossHasFilter(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = 0;
    while (1)
    {
      Count = *(v4 + 40);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v5 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), v5);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v8)
      {
        v8(ValueAtIndex);
      }

      ++v5;
      if (FigCFEqual())
      {
        a2 = 1;
        goto LABEL_11;
      }
    }

    a2 = 0;
LABEL_11:
    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateSelectionBossHasFilter_cold_1();
  }

  return a2;
}

const __CFArray *fasb_copyInitialAlternateListProperty(const __CFArray *result, __CFString *a2, const __CFArray **a3)
{
  if (a2 == @"HasHDRAlternates")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasHDRAlternate(result);
LABEL_14:
    v5 = MEMORY[0x1E695E4D0];
    if (!HasHDRAlternate)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    result = CFRetain(*v5);
    goto LABEL_17;
  }

  if (a2 == @"HasAtmosAlternates")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasATMOSAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasMultiChannelAudio")
  {
    goto LABEL_11;
  }

  if (a2 == @"HasLosslessAudio")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasLosslessAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasBinauralAudio")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasBinauralAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasPlayableMultiChannelAudio")
  {
LABEL_11:
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasMultiChannelAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 != @"HighestVideoResolutionAlternateWithMultiChannelAudio")
  {
    return result;
  }

  result = FigAlternateSelectionUtility_HighestVideoResolutionAlternateWithMultiChannelAudio(result);
LABEL_17:
  *a3 = result;
  return result;
}

uint64_t FigAlternateSelectionBossSetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigAlternateSelectionBossSetProperty_cold_1(&v12);
    return v12;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v8 = *(v7 + 104);
    *(v7 + 104) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    CFRelease(v8);
  }

  else
  {
    if (!FigCFEqual())
    {
      v8 = 4294954509;
      goto LABEL_16;
    }

    v9 = *MEMORY[0x1E695E4D0];
    v10 = CMBaseObjectGetDerivedStorage();
    if (v9 == a3)
    {
      if (!*(v10 + 122))
      {
        FigAlternateSelectionBossLockForConfiguration(a1);
        v8 = 0;
        *(v10 + 122) = 1;
        goto LABEL_16;
      }
    }

    else if (*(v10 + 122))
    {
      v8 = FigAlternateSelectionBossUnlockForConfiguration(a1);
      if (!v8)
      {
        *(v10 + 122) = 0;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigAlternateSelectionBossAddMonitor(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (!a2)
  {
    FigAlternateSelectionBossAddMonitor_cold_1(&v23);
    return v23;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v23 = 0;
  v7 = CFGetAllocator(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || (v9 = v8(a2, @"AlternateFilterMonitorProperty_Trigger", v7, &v23), !v23))
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (!v9)
  {
    v10 = FigAlternateFilterMonitorTriggerSetBoss(v23, a1);
    if (v10)
    {
LABEL_34:
      v9 = v10;
      goto LABEL_17;
    }

    for (i = 0; ; ++i)
    {
      Count = *(v6 + 64);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 64), i);
      v14 = CFGetAllocator(a1);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15 && !v15(ValueAtIndex, @"AlternateFilterMonitorProperty_Trigger", v14, &cf) && FigCFEqual())
      {
        v19 = cf;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v10 = v20(a2, @"AlternateFilterMonitorProperty_Trigger", v19);
          goto LABEL_34;
        }

        v9 = 4294954514;
        goto LABEL_17;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (!v9)
  {
    CFArrayAppendValue(*(v5 + 64), a2);
    CMNotificationCenterGetDefaultLocalCenter();
    v16 = FigNotificationCenterAddWeakListener();
    if (v16 || (CMNotificationCenterGetDefaultLocalCenter(), v16 = FigNotificationCenterAddWeakListener(), v16))
    {
      v9 = v16;
    }

    else
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v17)
      {
        v9 = v17(a2, &v21);
        if (!v9 && v21)
        {
          fasb_addFilterGuts();
          v9 = 0;
        }
      }

      else
      {
        v9 = 4294954514;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v21)
  {
    CFRelease(v21);
  }

  return v9;
}

uint64_t FigAlternateSelectionBossApplyFilters(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = fasb_applyFiltersGuts(a1);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fasb_applyFiltersGuts(const void *a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  context = 0;
  v57 = 0;
  v58 = 0;
  if (*(DerivedStorage + 80))
  {
    Mutable = 0;
    Copy = 0;
    v12 = 0;
    *(DerivedStorage + 96) = 1;
    goto LABEL_81;
  }

  context = a1;
  Mutable = *(DerivedStorage + 24);
  if (!Mutable)
  {
    Copy = 0;
    goto LABEL_30;
  }

  v57 = 0;
  v58 = 0;
  v5 = *(DerivedStorage + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v6)
  {
    v6(v5, Mutable, &v60, &v59);
  }

  else
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v7(v5, Mutable, &v60);
    }
  }

  theArray[0] = 0;
  memset(v63, 0, sizeof(v63));
  FigAlternateFilterApplyInfoGetStorage(v59, v63);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = 0; ; ++i)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
      v67 = 0;
      *key = 0u;
      v66 = 0u;
      FigAlternateFilterApplyInfoGetStorage(ValueAtIndex, key);
      CFDictionarySetValue(Mutable, key[0], ValueAtIndex);
    }
  }

  else
  {
    v13 = FigSignalErrorAtGM();
    if (v13)
    {
      v12 = v13;
      Mutable = 0;
      Copy = 0;
      goto LABEL_81;
    }
  }

  v14 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v14, v60);
  if (Copy)
  {
    if (v59)
    {
      theArray[0] = 0;
      memset(v63, 0, sizeof(v63));
      FigAlternateFilterApplyInfoGetStorage(v59, v63);
      v15 = theArray[0];
      v58 = 0;
      if (theArray[0])
      {
        v16 = CFArrayGetCount(theArray[0]);
        if (v16 >= 1)
        {
          v17 = 0;
          v18 = v16 + 1;
          do
          {
            if (v17)
            {
              break;
            }

            v19 = CFArrayGetValueAtIndex(v15, v18 - 2);
            v67 = 0;
            *key = 0u;
            v66 = 0u;
            FigAlternateFilterApplyInfoGetStorage(v19, key);
            v17 = key[1];
            if (key[1])
            {
              v17 = key[0];
              v58 = key[0];
            }

            --v18;
          }

          while (v18 > 1);
        }
      }
    }

    v20 = *(v3 + 112);
    *(v3 + 112) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v20)
    {
      CFRelease(v20);
    }

LABEL_30:
    v21 = FigCFEqual();
    if (!v21)
    {
      v22 = *(v3 + 32);
      *(v3 + 32) = Copy;
      if (Copy)
      {
        CFRetain(Copy);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v23 = *(v3 + 40);
    if (!v23 || CFArrayGetCount(v23) < 1)
    {
LABEL_74:
      if (!v21)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    if (v21 && *(v3 + 120) && !*(v3 + 121) && !*(v3 + 123))
    {
LABEL_75:
      if (!*(v3 + 97))
      {
LABEL_80:
        v12 = 0;
        goto LABEL_81;
      }

LABEL_76:
      *(v3 + 97) = 0;
      v57 = Copy;
      v47 = *(v3 + 8);
      if (v47)
      {
        v48.length = CFArrayGetCount(*(v3 + 8));
      }

      else
      {
        v48.length = 0;
      }

      v48.location = 0;
      CFArrayApplyFunction(v47, v48, fasb_dispatchAlternateChangedDelegateFn, &context);
      goto LABEL_80;
    }

    v24 = *(v3 + 120) == 0;
    v55 = CMBaseObjectGetDerivedStorage();
    v25 = fasb_copyVerboseDescriptionInternal(a1, v24);
    if (!v25)
    {
      fasb_applyFiltersGuts_cold_3();
LABEL_73:
      *(v3 + 120) = 1;
      goto LABEL_74;
    }

    v26 = v25;
    v52 = Copy;
    v51 = v21;
    v27 = CFGetAllocator(a1);
    v28 = CFArrayCreateMutable(v27, 0, MEMORY[0x1E695E9C0]);
    if (v28)
    {
      v29 = CFGetAllocator(a1);
      v30 = CFStringCreateMutable(v29, 0);
      if (v30)
      {
        v31 = CFGetAllocator(a1);
        theString = CFStringCreateWithFormat(v31, 0, @"[%p:%@]", a1, *(v55 + 104));
        if (theString)
        {
          cf = a1;
          LineFromString = fasb_copyNextLineFromString(v26, 0);
          if (LineFromString)
          {
            v33 = LineFromString;
            v34 = 0;
            do
            {
              v35 = v26;
              Length = CFStringGetLength(v33);
              v37 = CFStringGetLength(v30);
              v38 = CFStringGetLength(v33) + v37;
              if (v38 + CFStringGetLength(theString) < 980 || CFStringGetLength(v30) < 1)
              {
                v26 = v35;
              }

              else
              {
                CFArrayAppendValue(v28, v30);
                v26 = v35;
                CFRelease(v30);
                v39 = CFGetAllocator(cf);
                v30 = CFStringCreateMutable(v39, 0);
                if (!v30)
                {
                  fasb_applyFiltersGuts_cold_2();
                  goto LABEL_67;
                }
              }

              v34 += Length;
              CFStringAppend(v30, v33);
              CFRelease(v33);
              v33 = fasb_copyNextLineFromString(v26, v34);
            }

            while (v33);
          }

          if (CFStringGetLength(v30) >= 1)
          {
            CFStringAppend(v30, @"\nLOG COMPLETE");
            CFArrayAppendValue(v28, v30);
            CFRelease(v30);
            v30 = 0;
          }

          if (CFArrayGetCount(v28) < 1)
          {
            v33 = 0;
          }

          else
          {
            v50 = v26;
            v40 = 0;
            do
            {
              v41 = CFArrayGetValueAtIndex(v28, v40);
              if (dword_1EAF17490)
              {
                v42 = v41;
                v62 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v44 = v62;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v45 = v44;
                }

                else
                {
                  v45 = v44 & 0xFFFFFFFE;
                }

                if (v45)
                {
                  v46 = *(v55 + 104);
                  LODWORD(v63[0]) = 136315906;
                  *(v63 + 4) = "fasb_log";
                  WORD6(v63[0]) = 2048;
                  *(v63 + 14) = cf;
                  WORD3(v63[1]) = 2114;
                  *(&v63[1] + 1) = v46;
                  LOWORD(theArray[0]) = 2114;
                  *(theArray + 2) = v42;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              ++v40;
            }

            while (v40 < CFArrayGetCount(v28));
            v33 = 0;
            v26 = v50;
          }

LABEL_67:
          CFRelease(v26);
          CFRelease(theString);
          v26 = v33;
          if (!v33)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    FigSignalErrorAtGM();
LABEL_68:
    CFRelease(v26);
LABEL_69:
    if (v28)
    {
      CFRelease(v28);
    }

    v21 = v51;
    Copy = v52;
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_73;
  }

  fasb_applyFiltersGuts_cold_1(key);
  v12 = LODWORD(key[0]);
LABEL_81:
  if (v59)
  {
    CFRelease(v59);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v12;
}

uint64_t FigAlternateSelectionLogNextFilterOperation()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 121) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSelectionBossInitializeAlternateList(void *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 24);
  cf = 0;
  if (!a2)
  {
    FigAlternateSelectionBossInitializeAlternateList_cold_3(&v26);
    return v26;
  }

  v12 = DerivedStorage;
  FigSimpleMutexLock();
  *(v12 + 97) = 1;
  v13 = *(v12 + 24);
  if (v13)
  {
    CFRelease(v13);
    *(v12 + 24) = 0;
  }

  v14 = CFGetAllocator(a1);
  MutableCopy = CFArrayCreateMutableCopy(v14, 0, a2);
  *(v12 + 24) = MutableCopy;
  if (MutableCopy)
  {
    if (a4)
    {
      if (CFArrayGetCount(a4) >= 1)
      {
        v24 = fasb_applyExpandersGuts(a1, a4, &cf);
        if (v24)
        {
          v22 = v24;
          goto LABEL_21;
        }
      }
    }

    if (!a3)
    {
      v16 = 0;
      if (!v11)
      {
LABEL_15:
        v20 = *(v12 + 8);
        if (v20)
        {
          v21.length = CFArrayGetCount(*(v12 + 8));
        }

        else
        {
          v21.length = 0;
        }

        v21.location = 0;
        CFArrayApplyFunction(v20, v21, fasb_dispatchMediaSelectionArrayChangedDelegateFn, a1);
LABEL_19:
        v22 = fasb_applyFiltersGuts(a1);
        if (a5)
        {
          *a5 = cf;
          cf = 0;
        }

        goto LABEL_21;
      }

LABEL_14:
      if (!v16)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v16 = FigCFEqual() == 0;
    v17 = *(v12 + 16);
    if (v17)
    {
      CFRelease(v17);
      *(v12 + 16) = 0;
    }

    v18 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v18, a3);
    *(v12 + 16) = Copy;
    if (Copy)
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    FigAlternateSelectionBossInitializeAlternateList_cold_1(&v26);
  }

  else
  {
    FigAlternateSelectionBossInitializeAlternateList_cold_2(&v26);
  }

  v22 = v26;
LABEL_21:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t FigAlternateSelectionBossAddDelegate(const void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = DerivedStorage;
    FigSimpleMutexLock();
    v10 = CFGetAllocator(a1);
    v11 = MEMORY[0x19A8CC720](v10, 40, 0xE004012604DDCLL, 0);
    if (v11)
    {
      v12 = v11;
      v13 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *v12 = v13;
      if (v13)
      {
        __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v12 + 1, a3);
        if (a4)
        {
          dispatch_retain(a4);
        }

        else
        {
          a4 = FigDispatchQueueCreateWithPriority();
        }

        v12[4] = a4;
        CFArrayAppendValue(*(v9 + 8), v12);
        v14 = 0;
      }

      else
      {
        FigAlternateSelectionBossAddDelegate_cold_1(&v16);
        v14 = v16;
      }
    }

    else
    {
      FigAlternateSelectionBossAddDelegate_cold_2(&v17);
      v14 = v17;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateSelectionBossAddDelegate_cold_3();
    return 0;
  }

  return v14;
}

__CFString *fasb_copyVerboseDescriptionInternal(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = 0;
  v22 = 0;
  FigSimpleMutexLock();
  context = a1;
  v5 = fasb_copyDesc(a1);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v7, 0);
    v9 = Mutable;
    if (Mutable)
    {
      v20 = Mutable;
      CFStringAppendFormat(Mutable, 0, @"%@", v6);
      CFStringAppendFormat(v9, 0, @"\n%sMonitors:\n%s{", "  ", "  ");
      v10 = DerivedStorage[8];
      if (v10)
      {
        v11.length = CFArrayGetCount(DerivedStorage[8]);
      }

      else
      {
        v11.length = 0;
      }

      v11.location = 0;
      CFArrayApplyFunction(v10, v11, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      CFStringAppendFormat(v9, 0, @"\n%sFilters:\n%s{", "  ", "  ");
      CFStringAppendFormat(v9, 0, @"\n%s%sTo decode base64 encoded filter output, run:\n%s%s%% B64=ENCODEDVALUE;python3 -cimport base64,sys;n=int.from_bytes(base64.b64decode(sys.argv[1]),'little');print([i for i in range(0,n.bit_length())if 0!=(n&(1<<i))]) $B64", "  ", "  ", "  ", "  ", context);
      v12 = DerivedStorage[5];
      if (v12)
      {
        v13.length = CFArrayGetCount(DerivedStorage[5]);
      }

      else
      {
        v13.length = 0;
      }

      v13.location = 0;
      CFArrayApplyFunction(v12, v13, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      if (a2)
      {
        CFStringAppendFormat(v9, 0, @"\n%sAlternates:\n%s{", "  ", "  ");
        v14 = DerivedStorage[3];
        if (v14)
        {
          v15.length = CFArrayGetCount(DerivedStorage[3]);
        }

        else
        {
          v15.length = 0;
        }

        v15.location = 0;
        CFArrayApplyFunction(v14, v15, fasb_appendDescriptionApplierFn, &context);
        CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      }

      CFStringAppendFormat(v9, 0, @"\n%sFiltered Alternates:\n%s{", "  ", "  ");
      v16 = DerivedStorage[4];
      if (v16)
      {
        v17.length = CFArrayGetCount(DerivedStorage[4]);
      }

      else
      {
        v17.length = 0;
      }

      v17.location = 0;
      CFArrayApplyFunction(v16, v17, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
    }

    FigSimpleMutexUnlock();
    CFRelease(v6);
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v9;
}

uint64_t FigAlternateSelectionBossCreate(const __CFAllocator *a1, void *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigAlternateSelectionBossCreate_cold_8(&v16);
    return v16;
  }

  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  v7 = FigReentrantMutexCreateWithFlags();
  *DerivedStorage = v7;
  if (!v7)
  {
    FigAlternateSelectionBossCreate_cold_7(&v16);
    return v16;
  }

  Mutable = CFArrayCreateMutable(a1, 0, &kDelegateEntryCFArrayValueCallbacks);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigAlternateSelectionBossCreate_cold_6(&v16);
    return v16;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = FigAlternateFilterTreeCreate(AllocatorForMedia, (DerivedStorage + 48));
  if (v4)
  {
    return v4;
  }

  v4 = fasb_rebuildFilterTree();
  if (v4)
  {
    return v4;
  }

  v10 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = v10;
  if (!v10)
  {
    FigAlternateSelectionBossCreate_cold_5(&v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 72) = v11;
  if (!v11)
  {
    FigAlternateSelectionBossCreate_cold_4(&v16);
    return v16;
  }

  v12 = CFDictionaryCreate(a1, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 112) = v12;
  if (!v12)
  {
    FigAlternateSelectionBossCreate_cold_3(&v16);
    return v16;
  }

  *(DerivedStorage + 104) = &stru_1F0B1AFB8;
  v13 = FigConditionVariableCreate();
  *(DerivedStorage + 88) = v13;
  if (!v13)
  {
    FigAlternateSelectionBossCreate_cold_2(&v16);
    return v16;
  }

  v14 = 0;
  *(DerivedStorage + 123) = FigGetCFPreferenceNumberWithDefault();
  *a2 = 0;
  return v14;
}

BOOL FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = CFArrayGetCount(theArray) > 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v3 >= v4)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3++);
    if (!FigAlternateIsAudioOnly(ValueAtIndex))
    {
      return 0;
    }
  }

  return v2;
}

CFIndex FigAlternateSelectionUtility_GetLowestRequiredHDCPLevel(const __CFArray *a1, char *a2, int *a3, char *a4, int *a5)
{
  result = CFArrayGetCount(a1);
  if (result < 1)
  {
    v9 = 0;
    v8 = 0;
    v12 = -2;
    v11 = -2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -2;
    v12 = -2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      CodecString = FigAlternateGetCodecString(ValueAtIndex);
      if (FigAlternateHasVideo(ValueAtIndex) || !CodecString)
      {
        HDCPLevel = FigAlternateGetHDCPLevel(ValueAtIndex);
        IsIFrameOnly = FigAlternateIsIFrameOnly(ValueAtIndex);
        if (HDCPLevel >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = HDCPLevel;
        }

        if (v12 == -2)
        {
          v17 = HDCPLevel;
        }

        if (HDCPLevel >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = HDCPLevel;
        }

        if (v11 == -2)
        {
          v18 = HDCPLevel;
        }

        if (IsIFrameOnly)
        {
          v8 = 1;
        }

        else
        {
          v9 = 1;
          v12 = v17;
        }

        if (IsIFrameOnly)
        {
          v11 = v18;
        }
      }

      ++v10;
      result = CFArrayGetCount(a1);
    }

    while (v10 < result);
  }

  *a2 = v9;
  *a4 = v8;
  *a3 = v12;
  *a5 = v11;
  return result;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasHDRAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetVideoRange(ValueAtIndex) >= 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasMultiChannelAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetMaxAudioChannelCount(ValueAtIndex) >= 3)
    {
      return 1;
    }
  }

  return 0;
}

CFDictionaryRef FigAlternateSelectionUtility_HighestVideoResolutionAlternateWithMultiChannelAudio(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  v5 = v4;
  v6 = *MEMORY[0x1E695F060];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    if (FigAlternateGetMaxAudioChannelCount(ValueAtIndex) >= 3)
    {
      Resolution = FigAlternateGetResolution(ValueAtIndex);
      if (Resolution > v6 && v10 > v5)
      {
        v5 = v10;
        v6 = Resolution;
      }
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v3 == v6 && v4 == v5)
  {
    return 0;
  }

  v12 = v6;
  v13 = v5;

  return CGSizeCreateDictionaryRepresentation(*&v12);
}

uint64_t FigAlternateSelectionUtility_AlternateListHasPlayableMultiChannelAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetMaxPlayableAudioChannelCount(ValueAtIndex) >= 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasLosslessAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasLosslessAudio(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasBinauralAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasBinauralAudio(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasATMOSAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasAudioFormat(ValueAtIndex, 7))
    {
      return 1;
    }
  }

  return 0;
}

__CFString *figAlternateSelectionBossCopyFormattingDesc(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = fasb_copyDesc(a1);
  FigSimpleMutexUnlock();
  return v2;
}

__CFString *fasb_copyDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = DerivedStorage[5];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    v8 = CFArrayGetCount(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = DerivedStorage[4];
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = DerivedStorage[2];
  if (v11)
  {
    v11 = CFArrayGetCount(v11);
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAlternateSelectionBoss:%p [filterCount %d] [alternateCount %d] [filteredAlternateCount %d] [mediaSelectionArrayCount %d]>", a1, Count, v8, v10, v11);
  return Mutable;
}

void fasb_copyDelegateEntryValues(uint64_t a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(a2 + 1, (a1 + 8));
  v5 = *(a1 + 32);
  a2[4] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void fasb_delegateEntryReleaseAndClearValues(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t fasb_insertFilteringInfoToDescriptionHelper(const void *a1, __CFString *a2, uint64_t a3, CFIndex *a4, CFIndex *a5, CFIndex *a6, int a7)
{
  if (*(a3 + 8) < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(a3 + 32);
    if (v14)
    {
      v15 = CFArrayGetCount(v14) == 0;
    }

    else
    {
      v15 = 1;
    }
  }

  Count = *a6;
  if (*a6)
  {
LABEL_9:
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_27:
    v29 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v29, 0);
    if (!Mutable)
    {
      fasb_insertFilteringInfoToDescriptionHelper_cold_1(cf);
      return LODWORD(cf[0]);
    }

    goto LABEL_28;
  }

  v17 = *(a3 + 24);
  if (v17)
  {
    Count = CFBitVectorGetCount(v17);
    *a6 = Count;
    goto LABEL_9;
  }

  Count = 0;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_10:
  v38 = v15;
  v39 = a7;
  v18 = *(a3 + 24);
  cf[0] = &stru_1F0B1AFB8;
  if (CFBitVectorGetCount(v18) >= Count)
  {
    Count = CFBitVectorGetCount(v18);
  }

  v19 = 0;
  v20 = &stru_1F0B1AFB8;
  if (v18)
  {
    v22 = Count - 1;
    v21 = Count < 1;
    v23 = MEMORY[0x1E695E480];
    if (!v21)
    {
      v24 = v22 >> 3;
      if (v24 >= 0x41)
      {
        v25 = 65;
      }

      else
      {
        v25 = v24;
      }

      v19 = malloc_type_calloc(1uLL, v25 + 1, 0x7BF2EF6DuLL);
      if (v19)
      {
        if (CFBitVectorGetCount(v18) <= 0x210)
        {
          v26.length = CFBitVectorGetCount(v18);
        }

        else
        {
          v26.length = 528;
        }

        v26.location = 0;
        CFBitVectorGetBits(v18, v26, v19);
        FigCreateBase64EncodedStringFromBytes();
        v20 = cf[0];
      }

      else
      {
        v20 = &stru_1F0B1AFB8;
      }
    }
  }

  else
  {
    v23 = MEMORY[0x1E695E480];
  }

  free(v19);
  Mutable = CFStringCreateMutableCopy(*v23, 0, v20);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v15 = v38;
  a7 = v39;
  if (!Mutable)
  {
    return FigSignalErrorAtGM();
  }

LABEL_28:
  v30 = *a5;
  if (!*a5)
  {
    v30 = CFStringGetLength(Mutable) + 4;
    *a5 = v30;
  }

  CFStringPad(Mutable, @" ", v30, 0);
  if (v15)
  {
    CFStringAppendFormat(Mutable, 0, @"%3ld ->%3ld: ", *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v31 = *a5;
    Length = CFStringGetLength(@"000 ->000: ");
    CFStringPad(Mutable, @" ", Length + v31, 0);
  }

  CFStringInsert(a2, *a4, Mutable);
  v33 = 0;
  *a4 += CFStringGetLength(Mutable);
  while (1)
  {
    v34 = *(a3 + 32);
    if (v34)
    {
      v34 = CFArrayGetCount(v34);
    }

    if (v33 >= v34)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 32), v33);
    v44 = 0;
    *cf = 0u;
    v43 = 0u;
    FigAlternateFilterApplyInfoGetStorage(ValueAtIndex, cf);
    if (!fasb_insertFilteringInfo_iterateToNextNewLine(a2, a4))
    {
      break;
    }

    v40[0] = *cf;
    v40[1] = v43;
    v41 = v44;
    inserted = fasb_insertFilteringInfoToDescriptionHelper(a1, a2, v40, a4, a5, a6, 0);
    if (inserted)
    {
LABEL_43:
      v28 = inserted;
      goto LABEL_45;
    }

    ++v33;
  }

  if (a7)
  {
    while (fasb_insertFilteringInfo_iterateToNextNewLine(a2, a4))
    {
      v44 = 0;
      *cf = 0u;
      v43 = 0u;
      inserted = fasb_insertFilteringInfoToDescriptionHelper(a1, a2, cf, a4, a5, a6, 0);
      if (inserted)
      {
        goto LABEL_43;
      }
    }
  }

  v28 = 0;
LABEL_45:
  CFRelease(Mutable);
  return v28;
}

uint64_t fasb_insertFilteringInfo_iterateToNextNewLine(const __CFString *a1, CFIndex *a2)
{
  v6.location = 0;
  v6.length = 0;
  v4 = *a2;
  v7.length = CFStringGetLength(a1) - *a2;
  v7.location = v4;
  result = CFStringFindWithOptions(a1, @"\n", v7, 0, &v6);
  if (result)
  {
    *a2 = v6.location + 1;
    return 1;
  }

  return result;
}

uint64_t fasb_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(v1 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(v1 + 64), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[6];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[8];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[9];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[1];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[13];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = DerivedStorage[14];
  if (v14)
  {
    CFRelease(v14);
  }

  FigConditionVariableDestroy();

  return FigSimpleMutexDestroy();
}

void fasb_delegateEntryCFArrayReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  fasb_delegateEntryReleaseAndClearValues(a2);

  CFAllocatorDeallocate(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_76()
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t initValkRTCReportingUserInfoClientName()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingUserInfoClientName");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingUserInfoClientName = result;
  }

  else
  {
    result = constantValkRTCReportingUserInfoClientName;
  }

  _MergedGlobals_7[0] = kRTCReportingUserInfoClientNameFunction;
  return result;
}

void *__RTCReportingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 2);
  RTCReportingLibrary_sLib = result;
  return result;
}

uint64_t initValkRTCReportingUserInfoServiceName()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingUserInfoServiceName");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingUserInfoServiceName = result;
  }

  else
  {
    result = constantValkRTCReportingUserInfoServiceName;
  }

  off_1ED4CA200[0] = kRTCReportingUserInfoServiceNameFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoClientType()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoClientType");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoClientType = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoClientType;
  }

  off_1ED4CA208[0] = kRTCReportingSessionInfoClientTypeFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoSessionID()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoSessionID");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoSessionID = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoSessionID;
  }

  off_1ED4CA210[0] = kRTCReportingSessionInfoSessionIDFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoContainsRealtimeEvents()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoContainsRealtimeEvents");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoContainsRealtimeEvents = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoContainsRealtimeEvents;
  }

  off_1ED4CA218[0] = kRTCReportingSessionInfoContainsRealtimeEventsFunction;
  return result;
}

Class initRTCReporting()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  result = objc_getClass("RTCReporting");
  classRTCReporting = result;
  off_1ED4CA220 = RTCReportingFunction;
  return result;
}

uint64_t FigAirPlayRoutePuppetCreate(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    FigAirPlayRouteGetClassID();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v10 = DerivedStorage;
        *(DerivedStorage + 16) = 0;
        v11 = (DerivedStorage + 16);
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, v11, 10, 0x600u);
        }

        if (a3)
        {
          v12 = CFRetain(a3);
        }

        else
        {
          v12 = 0;
        }

        *v10 = v12;
        if (a2)
        {
          v10[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
        }

        if (dword_1EAF174B0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v8 = 0;
        *a5 = 0;
      }

      else
      {
        return 4294954510;
      }
    }
  }

  else
  {
    FigAirPlayRoutePuppetCreate_cold_1(v15);
    return v15[0];
  }

  return v8;
}

void airplayRoutePuppet_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174B0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 8))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v2)
    {
      v3 = v2;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CFRelease(v3);
    }

    v4 = *(DerivedStorage + 8);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 8) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }
}

uint64_t airplayRoutePuppet_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    FigBytePumpGetFigBaseObject(*DerivedStorage);
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {

      return v11(v10, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_CopyProperty_cold_1(&v13);
    return v13;
  }
}

uint64_t airplayRoutePuppet_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v7 = DerivedStorage;
    if (FigCFEqual() || FigCFEqual())
    {
      return 0;
    }

    else
    {
      FigBytePumpGetFigBaseObject(*v7);
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {

        return v11(v10, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    airplayRoutePuppet_SetProperty_cold_1(&v12);
    return v12;
  }
}

uint64_t airplayRoutePuppet_Activate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = FigCFWeakReferenceHolderCopyReferencedObject();
      if (result)
      {
        v4 = result;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CFRelease(v4);
        return 0;
      }
    }
  }

  else
  {
    airplayRoutePuppet_Activate_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t airplayRoutePuppet_ReevaluateCurrentRoute(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ReevaluateCurrentRoute_cold_1(&v6);
    return v6;
  }
}

uint64_t airplayRoutePuppet_ResetRoutingContextIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ResetRoutingContextIfNeeded_cold_1(&v6);
    return v6;
  }
}

uint64_t airplayRoutePuppet_SuspendAirPlayScreen(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = *DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(v5, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_SuspendAirPlayScreen_cold_1(&v8);
    return v8;
  }
}

uint64_t airplayRoutePuppet_ResumeAirPlayScreen(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ResumeAirPlayScreen_cold_1(&v6);
    return v6;
  }
}

uint64_t FigSampleBufferProcessorCreateForVideoRotation(uint64_t a1, int a2, int a3, int a4, const void *a5, void *a6)
{
  if (a6)
  {
    if (a2 > 179)
    {
      if (a2 == 180 || a2 == 270)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (a2)
      {
        if (a2 != 90)
        {
          goto LABEL_34;
        }

LABEL_11:
        if (a3 && a4 || !a5)
        {
          goto LABEL_34;
        }

        v11 = *MEMORY[0x1E695E480];
        FigSampleBufferProcessorGetClassID();
        v12 = CMDerivedObjectCreate();
        if (v12)
        {
          return v12;
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *DerivedStorage = a2;
        v15 = DerivedStorage;
        *(DerivedStorage + 40) = a5;
        CFRetain(a5);
        *(v15 + 16) = 0;
        v54 = (v15 + 16);
        *(v15 + 24) = 0;
        v16 = CMBaseObjectGetDerivedStorage();
        v17 = *MEMORY[0x1E6966130];
        Value = CFDictionaryGetValue(*(v16 + 40), *MEMORY[0x1E6966130]);
        v19 = Value;
        valuePtr = 0;
        v56 = v15;
        if (Value)
        {
          v20 = CFGetTypeID(Value);
          if (v20 != CFArrayGetTypeID() || CFArrayGetCount(v19) < 1)
          {
            v32 = CFGetTypeID(v19);
            if (v32 == CFNumberGetTypeID())
            {
              v55 = CFRetain(v19);
              CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
              v33 = 0;
              while (*&kSupportedPixelFormats[v33] != valuePtr)
              {
                v33 += 4;
                if (v33 == 44)
                {
                  goto LABEL_73;
                }
              }
            }

            else
            {
              v55 = 0;
            }

            v19 = 0;
            goto LABEL_45;
          }

          Count = CFArrayGetCount(v19);
          ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
          v55 = CFRetain(ValueAtIndex);
          MutableCopy = CFArrayCreateMutableCopy(v11, 0, v19);
          if (MutableCopy)
          {
            v19 = MutableCopy;
            if (Count < 1)
            {
              if (CFArrayGetCount(MutableCopy))
              {
                v15 = v56;
                goto LABEL_45;
              }
            }

            else
            {
              v52 = v16;
              v24 = 0;
              do
              {
                v25 = Count--;
                v26 = CFArrayGetValueAtIndex(v19, Count);
                CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
                v27 = 0;
                while (*&kSupportedPixelFormats[v27] != valuePtr)
                {
                  v27 += 4;
                  if (v27 == 44)
                  {
                    CFArrayRemoveValueAtIndex(v19, Count);
                    v24 = 1;
                    break;
                  }
                }
              }

              while (v25 > 1);
              v16 = v52;
              if (CFArrayGetCount(v19))
              {
                v15 = v56;
                if (v24)
                {
                  v28 = CFDictionaryCreateMutableCopy(v11, 0, *(v52 + 40));
                  if (v28)
                  {
                    v29 = v28;
                    CFDictionarySetValue(v28, v17, v19);
                    CFRelease(*(v52 + 40));
                    *(v52 + 40) = v29;
                    v30 = CFDictionaryCreateMutableCopy(v11, 0, v29);
                    if (!v30)
                    {
                      FigSampleBufferProcessorCreateForVideoRotation_cold_1(&v58);
                      goto LABEL_83;
                    }

                    goto LABEL_46;
                  }

                  FigSampleBufferProcessorCreateForVideoRotation_cold_2(&v58);
                  v30 = 0;
                  goto LABEL_83;
                }

LABEL_45:
                v30 = CFDictionaryCreateMutableCopy(v11, 0, *(v16 + 40));
                if (v30)
                {
LABEL_46:
                  v34 = v16;
                  if (*v16 == 270 || *v16 == 90)
                  {
                    v35 = *(v16 + 40);
                    v36 = *MEMORY[0x1E6966208];
                    v37 = CFDictionaryGetValue(v35, *MEMORY[0x1E6966208]);
                    v38 = *MEMORY[0x1E69660B8];
                    v39 = CFDictionaryGetValue(*(v34 + 40), *MEMORY[0x1E69660B8]);
                    if (v37 && v39 != 0)
                    {
                      CFDictionarySetValue(v30, v36, v39);
                      CFDictionarySetValue(v30, v38, v37);
                    }
                  }

                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E6966088]);
                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E69660A0]);
                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E6966090]);
                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E6966078]);
                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E6966020]);
                  CFDictionaryRemoveValue(v30, *MEMORY[0x1E6966060]);
                  v13 = 0;
                  *(v34 + 32) = CFRetain(v30);
LABEL_54:
                  v15 = v56;
                  if (!v19)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_55;
                }

                FigSampleBufferProcessorCreateForVideoRotation_cold_8(&v58);
LABEL_83:
                v13 = v58;
                if (!v19)
                {
LABEL_56:
                  if (v30)
                  {
                    CFRelease(v30);
                  }

LABEL_58:
                  if (v55)
                  {
                    CFRelease(v55);
                  }

                  if (v13)
                  {
                    return v13;
                  }

                  if (!*v54 || (v12 = sbp_vrot_ensurePoolUpToDate(0, 0), !v12))
                  {
                    v41 = (v15 + 8);
                    v12 = VTImageRotationSessionCreate();
                    if (!v12)
                    {
                      v42 = *MEMORY[0x1E695E4D0];
                      if (!a4 || (v12 = VTSessionSetProperty(*v41, *MEMORY[0x1E6983D00], *MEMORY[0x1E695E4D0]), !v12))
                      {
                        if (!a3 || (v12 = VTSessionSetProperty(*v41, *MEMORY[0x1E6983D08], v42), !v12))
                        {
                          VTSessionSetProperty(*v41, *MEMORY[0x1E6983CF0], v42);
                          v13 = 0;
                          *a6 = 0;
                          return v13;
                        }
                      }
                    }
                  }

                  return v12;
                }

LABEL_55:
                CFRelease(v19);
                goto LABEL_56;
              }
            }

            CFRelease(v19);
LABEL_73:
            key = v17;
            Mutable = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v19 = Mutable;
              for (i = 0; i != 44; i += 4)
              {
                valuePtr = *&kSupportedPixelFormats[i];
                v45 = CFNumberCreate(v11, kCFNumberSInt32Type, &valuePtr);
                if (!v45)
                {
                  FigSampleBufferProcessorCreateForVideoRotation_cold_5(&v58);
                  v30 = 0;
                  v13 = v58;
                  goto LABEL_54;
                }

                v46 = v45;
                CFArrayAppendValue(v19, v45);
                CFRelease(v46);
              }

              v47 = CFGetAllocator(0);
              v48 = VTPixelTransferSessionCreate(v47, (v16 + 16));
              if (v48)
              {
                v13 = v48;
                v30 = 0;
                goto LABEL_54;
              }

              v49 = CFDictionaryCreateMutableCopy(v11, 0, *(v16 + 40));
              v30 = v49;
              v15 = v56;
              if (v49)
              {
                CFDictionarySetValue(v49, key, v19);
                v50 = CFDictionaryCreateMutableCopy(v11, 0, *(v16 + 40));
                if (v50)
                {
                  v51 = v50;
                  CFDictionarySetValue(v50, key, v55);
                  CFRelease(*(v16 + 40));
                  *(v16 + 40) = v51;
                  goto LABEL_46;
                }

                FigSampleBufferProcessorCreateForVideoRotation_cold_3(&v58);
              }

              else
              {
                FigSampleBufferProcessorCreateForVideoRotation_cold_4(&v58);
              }

              goto LABEL_83;
            }

            FigSampleBufferProcessorCreateForVideoRotation_cold_6(&v58);
          }

          else
          {
            FigSampleBufferProcessorCreateForVideoRotation_cold_7(&v58);
          }

          v13 = v58;
          v15 = v56;
          goto LABEL_58;
        }

        v55 = 0;
        goto LABEL_45;
      }

      if (a4 | a3)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_34:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sbp_vrot_ensurePoolUpToDate(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 48);
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    if (!a2 || *(DerivedStorage + 56) == a2)
    {
      return 0;
    }

    CFRelease(v5);
    *v6 = 0;
  }

  if (VTAvoidIOSurfaceBackings())
  {
    if (a2)
    {
LABEL_8:
      v8 = 0;
      v9 = 1;
      goto LABEL_9;
    }

LABEL_15:
    v13 = *(DerivedStorage + 40);
    if (v13)
    {
      MutableCopy = CFRetain(v13);
      a2 = 0;
      v8 = 0;
    }

    else
    {
      a2 = 0;
      v8 = 0;
      MutableCopy = 0;
    }

    goto LABEL_20;
  }

  if (CFDictionaryContainsKey(*(DerivedStorage + 40), *MEMORY[0x1E69660D8]))
  {
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v14 = *MEMORY[0x1E695E480];
  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v9 = 0;
LABEL_9:
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 40));
    valuePtr = a2;
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966130], v11);
      CFRelease(v12);
    }

    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, *(DerivedStorage + 40));
LABEL_12:
  FigCFDictionarySetValue();
LABEL_20:
  *(DerivedStorage + 56) = a2;
  v15 = CFGetAllocator(a1);
  v7 = CVPixelBufferPoolCreate(v15, 0, MutableCopy, v6);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t sbp_vrot_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 72) = 0;
  MEMORY[0x19A8D4DF0](*(DerivedStorage + 8));
  return 0;
}

void sbp_vrot_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    VTPixelTransferSessionInvalidate(v2);
    CFRelease(*(DerivedStorage + 16));
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 64))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *sbp_vrot_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_VideoRotation %p>", a1);
  return Mutable;
}

uint64_t sbp_vrot_copyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SampleBufferProcessor_SourcePixelBufferAttributes"))
  {
    v8 = *(DerivedStorage + 32);
    if (v8)
    {
LABEL_3:
      v9 = CFRetain(v8);
LABEL_7:
      result = 0;
      *a4 = v9;
      return result;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"SampleBufferProcessor_OutputPixelBufferPool"))
  {
    sbp_vrot_ensurePoolUpToDate(a1, 0);
    v8 = *(DerivedStorage + 48);
    if (v8)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return 4294954512;
}

uint64_t sbp_vrot_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 72) = a2;
  *(DerivedStorage + 80) = a3;
  return 0;
}

void FigSCCParserRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 15);
    if (v4)
    {
      CFRelease(v4);
    }

    FigCEA608DataInspectorRelease(*(a1 + 14));
    sccParserMalformedDataInfoRelease(v2, *(a1 + 17));
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t FigSCCParserCaptionDataInfoGetChannel(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *a1;
    }

    if (a3)
    {
      *a3 = a1[1];
    }

    v6 = 0;
    if (a4)
    {
      *a4 = a1[2];
    }
  }

  else
  {
    v9 = v4;
    v10 = v5;
    FigSCCParserCaptionDataInfoGetChannel_cold_1(&v8);
    return v8;
  }

  return v6;
}

uint64_t FigSCCParserCaptionDataInfoGetFrame(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 60);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigSCCParserCaptionDataInfoGetFrame_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetDTS(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 36);
      *(a2 + 16) = *(a1 + 52);
      *a2 = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigSCCParserCaptionDataInfoGetDTS_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetCaptionData(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 64);
    }

    else
    {
      FigSCCParserCaptionDataInfoGetCaptionData_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigSCCParserCaptionDataInfoGetCaptionData_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t sccLineStreamSkipSpaces(void *a1)
{
  v1 = a1;
  __dst = 0;
  v3 = 0;
  while (1)
  {
    sccLineStreamReadData(a1, 1uLL, &__dst, &v3);
    if (!v3)
    {
      return 0;
    }

    if (__dst != 9 && __dst != 32)
    {
      break;
    }

    __dst = 0;
    v3 = 0;
    a1 = v1;
  }

  v1[4] -= v3;
  return 1;
}

void *sccLineStreamReadData(void *result, size_t a2, void *__dst, size_t *a4)
{
  v5 = result[4];
  if (result[3] - v5 + result[2] >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result[3] - v5 + result[2];
  }

  if (v6)
  {
    v7 = result;
    result = memcpy(__dst, (*result + v5), v6);
    v7[4] += v6;
  }

  *a4 = v6;
  return result;
}

void sccParserCaptionDataInfoRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = ptr[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[9];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

unint64_t OUTLINED_FUNCTION_2_112@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int16 __str)
{
  __str = a1;

  return strtoul(&__str, (v24 - 176), 10);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1, CMTime *time2, CMTime *time1, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t time2a, __int128 time2_8, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a15, int a16)
{
  time2a = v16;
  LODWORD(time2_8) = v17;
  *(&time2_8 + 4) = a15;
  HIDWORD(time2_8) = a16;

  return CMTimeCompare(&time1a, &time2a);
}

unint64_t OUTLINED_FUNCTION_11_42@<X0>(__int16 a1@<W8>)
{
  *(v1 - 164) = a1;

  return strtoul((v1 - 164), (v1 - 176), 16);
}

uint64_t FigVenueDescriptionMetadataSupplierCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_6(v19);
LABEL_21:
    v15 = v19[0];
    goto LABEL_22;
  }

  if (!a4)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_5(v19);
    goto LABEL_21;
  }

  FigStaticMetadataSupplierGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v15 = v7;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = CFDateCreate(v9, Current);
  DerivedStorage[11] = v11;
  if (!v11)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_4(v19);
    goto LABEL_21;
  }

  v12 = FigSimpleMutexCreate();
  DerivedStorage[4] = v12;
  if (!v12)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_3(v19);
    goto LABEL_21;
  }

  v13 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[5] = v13;
  if (!v13)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_2(v19);
    goto LABEL_21;
  }

  DerivedStorage[6] = 0;
  DerivedStorage[7] = DerivedStorage + 6;
  *DerivedStorage = CFRetain(a2);
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  DerivedStorage[1] = v14;
  v15 = FigRetainProxyCreate();
  if (!v15)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_1(DerivedStorage, &cf, a4);
    goto LABEL_12;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v15;
}

void vdms_reevaluateProcessingStateAndNotify(uint64_t a1, int a2)
{
  v116[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 16);
  if (a2 && v6 == 6)
  {
    *(DerivedStorage + 16) = 4;
  }

  v102 = v6;
  v7 = 0;
  v8 = &dword_1EAF17000;
  v9 = *MEMORY[0x1E695E480];
  v103 = DerivedStorage;
  while (2)
  {
    for (i = *(v5 + 16); i == 4; *(v5 + 16) = i)
    {
      *type = 0;
      theArray = 0;
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = v11;
      if (*(v11 + 16) == 4)
      {
        v13 = *(v11 + 64);
        if (v13)
        {
          FigBaseObject = FigBytePumpGetFigBaseObject(v13);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v15)
          {
            v16 = v15(FigBaseObject, @"FBSP_Metadata", v9, &theArray);
            if (!v16)
            {
LABEL_11:
              v17 = 0;
              while (1)
              {
                Count = theArray;
                if (theArray)
                {
                  Count = CFArrayGetCount(theArray);
                }

                if (v17 >= Count)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
                CFDictionaryGetValue(ValueAtIndex, @"key");
                ++v17;
                if (FigCFEqual())
                {
                  Value = CFDictionaryGetValue(ValueAtIndex, @"value");
                  if (Value)
                  {
                    v21 = CFGetTypeID(Value);
                    if (v21 == CFDataGetTypeID())
                    {
                      v22 = 0;
                      v7 = 0;
                      goto LABEL_31;
                    }
                  }

                  if (v8[308])
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v8 = &dword_1EAF17000;
                  }

                  v116[0] = 0;
                  v16 = 4294951441;
                  goto LABEL_29;
                }
              }

LABEL_58:
              v7 = 0;
LABEL_30:
              v22 = 1;
              goto LABEL_31;
            }

LABEL_28:
            v116[0] = 0;
LABEL_29:
            FigCreateErrorForOSStatus(v16, v116);
            v7 = v116[0];
            goto LABEL_30;
          }
        }

        else
        {
          v23 = *v12;
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v24)
          {
            v16 = v24(v23, @"assetProperty_HLSMetadata", &type[4], type, 0);
            if (v16)
            {
              goto LABEL_28;
            }

            v16 = *type;
            if (*type)
            {
              goto LABEL_28;
            }

            if (*&type[4] != 2)
            {
              v116[0] = 0;
              v16 = 4294951443;
              goto LABEL_29;
            }

            CMBaseObject = FigAssetGetCMBaseObject(*v12);
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              v16 = v26(CMBaseObject, @"assetProperty_HLSMetadata", v9, &theArray);
              if (!v16)
              {
                if (!theArray)
                {
                  goto LABEL_79;
                }

                goto LABEL_11;
              }

              goto LABEL_28;
            }
          }
        }

        v16 = 4294954514;
        goto LABEL_28;
      }

      if (!v8[308])
      {
        goto LABEL_58;
      }

      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      v5 = v103;
      v22 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = 0;
      v8 = &dword_1EAF17000;
LABEL_31:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v7)
      {
        v49 = v102;
        if (*(v5 + 64) || !FigCFErrorIsEqualToOSStatus(v7, @"CoreMediaErrorDomain", -12785))
        {
          vdms_RTCReportingUpdatePayloadTransferError(a1, v7);
          goto LABEL_149;
        }

        if (v8[308])
        {
          LODWORD(theArray) = 0;
          type[4] = OS_LOG_TYPE_DEFAULT;
          v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v67 = theArray;
          if (os_log_type_enabled(v66, type[4]))
          {
            v68 = v67;
          }

          else
          {
            v68 = v67 & 0xFFFFFFFE;
          }

          if (v68)
          {
            v69 = *(CMBaseObjectGetDerivedStorage() + 8);
            v106 = 136315650;
            v107 = "vdms_reevaluateProcessingStateAndNotify";
            v108 = 2048;
            v109 = a1;
            v110 = 2114;
            v111 = v69;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = v103;
          v8 = &dword_1EAF17000;
        }

        FigRetainProxyRetain();
        v81 = *v5;
        v82 = *(v5 + 72);
        v83 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v83 && !v83(v81, vdms_pumpTransferCallback, v82))
        {
          v88 = 2;
        }

        else
        {
          if (v8[308])
          {
            LODWORD(theArray) = 0;
            type[4] = OS_LOG_TYPE_DEFAULT;
            v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v85 = theArray;
            if (os_log_type_enabled(v84, type[4]))
            {
              v86 = v85;
            }

            else
            {
              v86 = v85 & 0xFFFFFFFE;
            }

            if (v86)
            {
              v87 = *(CMBaseObjectGetDerivedStorage() + 8);
              v106 = 136315650;
              v107 = "vdms_reevaluateProcessingStateAndNotify";
              v108 = 2048;
              v109 = a1;
              v110 = 2114;
              v111 = v87;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v103;
            v8 = &dword_1EAF17000;
          }

          FigRetainProxyRelease();
LABEL_149:
          v88 = 7;
        }

LABEL_153:
        *(v5 + 16) = v88;
        goto LABEL_81;
      }

      if (v22)
      {
LABEL_79:
        v7 = 0;
        *(v5 + 16) = 6;
        goto LABEL_80;
      }

      if (v8[308])
      {
        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = theArray;
        if (os_log_type_enabled(v27, type[4]))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          v30 = *(CMBaseObjectGetDerivedStorage() + 8);
          v106 = 136315650;
          v107 = "vdms_reevaluateProcessingStateAndNotify";
          v108 = 2048;
          v109 = a1;
          v110 = 2114;
          v111 = v30;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = &dword_1EAF17000;
      }

      updated = vdms_updateResourcesAndTransferMetadata(a1);
      if (updated)
      {
        v32 = updated;
        v116[0] = 0;
        FigCreateErrorForOSStatus(updated, v116);
        v7 = v116[0];
        if (v8[308])
        {
          LODWORD(theArray) = 0;
          type[4] = OS_LOG_TYPE_DEFAULT;
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v34 = theArray;
          if (os_log_type_enabled(v33, type[4]))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            v36 = *(CMBaseObjectGetDerivedStorage() + 8);
            v106 = 136315906;
            v107 = "vdms_reevaluateProcessingStateAndNotify";
            v108 = 2048;
            v109 = a1;
            v110 = 2114;
            v111 = v36;
            v112 = 1024;
            v113 = v32;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          i = 7;
          v5 = v103;
          v8 = &dword_1EAF17000;
        }

        else
        {
          i = 7;
        }
      }

      else
      {
        v7 = 0;
        i = 5;
      }
    }

    if (i <= 4)
    {
      if (i == 1)
      {
        type[4] = OS_LOG_TYPE_DEFAULT;
        v44 = *v5;
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v45)
        {
          v46 = v45(v44, @"assetProperty_HLSMetadata", &type[4]);
          if (!v46)
          {
            if (type[4])
            {
              *(v5 + 16) = 4;
              continue;
            }

            goto LABEL_80;
          }

          v97 = v46;
        }

        else
        {
          v97 = 4294954514;
        }

        v116[0] = 0;
        FigCreateErrorForOSStatus(v97, v116);
        v7 = v116[0];
        vdms_RTCReportingUpdatePayloadTransferError(a1, v116[0]);
        v49 = v102;
        if (!v8[308])
        {
          goto LABEL_149;
        }

        LODWORD(theArray) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v99 = theArray;
        if (os_log_type_enabled(v98, type[0]))
        {
          v100 = v99;
        }

        else
        {
          v100 = v99 & 0xFFFFFFFE;
        }

        if (v100)
        {
          v101 = *(CMBaseObjectGetDerivedStorage() + 8);
          v106 = 136315906;
          v107 = "vdms_reevaluateProcessingStateAndNotify";
          v108 = 2048;
          v109 = a1;
          v110 = 2114;
          v111 = v101;
          v112 = 1024;
          v113 = v97;
          _os_log_send_and_compose_impl();
        }

        goto LABEL_167;
      }

      if (i == 3)
      {
        if (*(v5 + 64))
        {
          theArray = 0;
          if (v8[308])
          {
            v39 = v9;
            *&type[4] = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v41 = *&type[4];
            if (os_log_type_enabled(v40, type[0]))
            {
              v42 = v41;
            }

            else
            {
              v42 = v41 & 0xFFFFFFFE;
            }

            if (v42)
            {
              v43 = *(CMBaseObjectGetDerivedStorage() + 8);
              v106 = 136315650;
              v107 = "vdms_reevaluateProcessingStateAndNotify";
              v108 = 2048;
              v109 = a1;
              v110 = 2114;
              v111 = v43;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v9 = v39;
            v5 = v103;
            v8 = &dword_1EAF17000;
          }

          FigSimpleMutexUnlock();
          v47 = FigBytePumpGetFigBaseObject(*(v5 + 64));
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v48)
          {
            v48(v47, @"FBSP_Metadata", v9, &theArray);
          }

          FigSimpleMutexLock();
          *(v5 + 16) = 4;
          if (theArray)
          {
            CFRelease(theArray);
          }

          continue;
        }

        v49 = v102;
        if (!v8[308])
        {
          goto LABEL_149;
        }

        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v90 = theArray;
        if (os_log_type_enabled(v89, type[4]))
        {
          v91 = v90;
        }

        else
        {
          v91 = v90 & 0xFFFFFFFE;
        }

        if (v91)
        {
          v92 = *(CMBaseObjectGetDerivedStorage() + 8);
          v106 = 136315650;
          v107 = "vdms_reevaluateProcessingStateAndNotify";
          v108 = 2048;
          v109 = a1;
          v110 = 2114;
          v111 = v92;
          _os_log_send_and_compose_impl();
        }

LABEL_167:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v103;
        v8 = &dword_1EAF17000;
        goto LABEL_149;
      }

LABEL_80:
      v49 = v102;
      goto LABEL_81;
    }

    break;
  }

  if (i == 6)
  {
    if (vdms_getAllDataChannelResourceProcessingStatus() == 1)
    {
      v49 = v102;
      if (v8[308])
      {
        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v63 = theArray;
        if (os_log_type_enabled(v62, type[4]))
        {
          v64 = v63;
        }

        else
        {
          v64 = v63 & 0xFFFFFFFE;
        }

        if (v64)
        {
          v65 = *(CMBaseObjectGetDerivedStorage() + 8);
          v106 = 136315650;
          v107 = "vdms_reevaluateProcessingStateAndNotify";
          v108 = 2048;
          v109 = a1;
          v110 = 2114;
          v111 = v65;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v103;
        v8 = &dword_1EAF17000;
      }

      v88 = 5;
      goto LABEL_153;
    }

    goto LABEL_80;
  }

  if (i != 5)
  {
    goto LABEL_80;
  }

  vdms_updateResourcesAndTransferMetadata(a1);
  AllDataChannelResourceProcessingStatus = vdms_getAllDataChannelResourceProcessingStatus();
  if (AllDataChannelResourceProcessingStatus == 2)
  {
    v49 = v102;
    if (v8[308])
    {
      LODWORD(theArray) = 0;
      type[4] = OS_LOG_TYPE_DEFAULT;
      v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v94 = theArray;
      if (os_log_type_enabled(v93, type[4]))
      {
        v95 = v94;
      }

      else
      {
        v95 = v94 & 0xFFFFFFFE;
      }

      if (v95)
      {
        v96 = *(CMBaseObjectGetDerivedStorage() + 8);
        v106 = 136315650;
        v107 = "vdms_reevaluateProcessingStateAndNotify";
        v108 = 2048;
        v109 = a1;
        v110 = 2114;
        v111 = v96;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = v103;
      v8 = &dword_1EAF17000;
    }

    v88 = 6;
    goto LABEL_153;
  }

  v49 = v102;
  if (AllDataChannelResourceProcessingStatus == 3)
  {
    v116[0] = 0;
    FigCreateErrorForOSStatus(4294951440, v116);
    v7 = v116[0];
    vdms_RTCReportingUpdatePayloadTransferError(a1, v116[0]);
    if (v8[308])
    {
      LODWORD(theArray) = 0;
      type[4] = OS_LOG_TYPE_DEFAULT;
      v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v78 = theArray;
      if (os_log_type_enabled(v77, type[4]))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (v79)
      {
        v80 = *(CMBaseObjectGetDerivedStorage() + 8);
        v106 = 136315906;
        v107 = "vdms_reevaluateProcessingStateAndNotify";
        v108 = 2048;
        v109 = a1;
        v110 = 2114;
        v111 = v80;
        v112 = 1024;
        v113 = -15856;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v49 = v102;
      v8 = &dword_1EAF17000;
    }

    v88 = 7;
    v5 = v103;
    goto LABEL_153;
  }

LABEL_81:
  if (v8[308])
  {
    LODWORD(theArray) = 0;
    type[4] = OS_LOG_TYPE_DEFAULT;
    v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v51 = theArray;
    if (os_log_type_enabled(v50, type[4]))
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 & 0xFFFFFFFE;
    }

    if (v52)
    {
      v53 = *(CMBaseObjectGetDerivedStorage() + 8);
      v54 = *(v103 + 16);
      v106 = 136316162;
      v107 = "vdms_reevaluateProcessingStateAndNotify";
      v108 = 2048;
      v109 = a1;
      v110 = 2114;
      v111 = v53;
      v112 = 1024;
      v113 = v49;
      v114 = 1024;
      v115 = v54;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = v103;
    v8 = &dword_1EAF17000;
  }

  v55 = *(v5 + 16);
  if (v49 == v55 || (v49 != 7 ? (v56 = v49 == 6) : (v56 = 2), v55 != 7 ? (v57 = v55 == 6) : (v57 = 2), v57 == v56))
  {
LABEL_126:
    if (!v7)
    {
      return;
    }

    goto LABEL_127;
  }

  if (v8[308])
  {
    LODWORD(theArray) = 0;
    type[4] = OS_LOG_TYPE_DEFAULT;
    v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v59 = theArray;
    if (os_log_type_enabled(v58, type[4]))
    {
      v60 = v59;
    }

    else
    {
      v60 = v59 & 0xFFFFFFFE;
    }

    if (v60)
    {
      v61 = *(CMBaseObjectGetDerivedStorage() + 8);
      v106 = 136316162;
      v107 = "vdms_postProcessingStateNotificationIfNeeded";
      v108 = 2048;
      v109 = a1;
      v110 = 2114;
      v111 = v61;
      v112 = 1024;
      v113 = v56;
      v114 = 1024;
      v115 = v57;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v71 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v55 == 6)
    {
      v72 = CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v73 = v72;
        if (*(v72 + 80))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v75 = CFDateCreate(v9, Current);
          if (v75)
          {
            vdms_reevaluateProcessingStateAndNotify_cold_1(v73, v75);
          }

          else
          {
            vdms_reevaluateProcessingStateAndNotify_cold_2();
          }
        }
      }

      else
      {
        vdms_reevaluateProcessingStateAndNotify_cold_3();
      }
    }

    CFRelease(v71);
    goto LABEL_126;
  }

  vdms_reevaluateProcessingStateAndNotify_cold_4();
  if (v7)
  {
LABEL_127:
    CFRelease(v7);
  }
}

__CFString *vdms_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigVenueDescriptionMetadataSupplier %p: ", a1);
  FigSimpleMutexLock();
  CFStringAppendFormat(Mutable, 0, @"VideoTargetArray %@,", *(DerivedStorage + 24), 0);
  FigSimpleMutexUnlock();
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t vdms_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(@"SMS_VideoTargetArray", a2))
  {
    v8 = *(DerivedStorage + 24);
    if (!v8)
    {
      v12 = 0;
      *a4 = 0;
      goto LABEL_12;
    }

    Copy = CFArrayCreateCopy(a3, v8);
  }

  else
  {
    if (!CFEqual(@"SMS_ProcessingStatus", a2))
    {
      v12 = 4294951446;
      goto LABEL_12;
    }

    v10 = *(DerivedStorage + 16);
    if (v10 == 7)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 6;
    }

    valuePtr = v11;
    Copy = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  v12 = 0;
  *a4 = Copy;
LABEL_12:
  FigSimpleMutexUnlock();
  return v12;
}

CFIndex vdms_removeFVTNotificationListeners(CFArrayRef theArray)
{
  v2 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v2 < result; result = 0)
  {
    CFArrayGetValueAtIndex(theArray, v2);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t vdms_deferredAssetPropertyLoadedCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return vdms_deferredAssetPropertyLoadedCallback_cold_5();
  }

  v9 = DerivedStorage;
  if (!FigCFEqual() && !FigCFEqual())
  {
    return vdms_deferredAssetPropertyLoadedCallback_cold_4();
  }

  if (*v9 != a4)
  {
    return vdms_deferredAssetPropertyLoadedCallback_cold_1();
  }

  CFDictionaryGetValue(a5, @"assetPayload_Property");
  result = FigCFEqual();
  if (result)
  {
    FigSimpleMutexLock();
    if (*(v9 + 16) == 1)
    {
      if (FigCFEqual())
      {
        v11 = CMBaseObjectGetDerivedStorage();
        if (*(v11 + 80))
        {
          v12 = v11;
          v13 = *MEMORY[0x1E695E480];
          Current = CFAbsoluteTimeGetCurrent();
          v15 = CFDateCreate(v13, Current);
          if (v15)
          {
            vdms_deferredAssetPropertyLoadedCallback_cold_2(v12, v15);
          }

          else
          {
            vdms_deferredAssetPropertyLoadedCallback_cold_3();
          }
        }
      }

      vdms_reevaluateProcessingStateAndNotify(a2, 0);
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

void vdms_destroyResourceEntry(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t vdms_dataChannelResourceProcessingStateChangedNotificationHandler(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    if ((*(DerivedStorage + 16) - 5) <= 1)
    {
      FigCFDictionaryGetInt32IfPresent();
      v4 = (CMBaseObjectGetDerivedStorage() + 48);
      do
      {
        v4 = *v4;
      }

      while (v4 && !FigCFEqual());
      vdms_reevaluateProcessingStateAndNotify(a2, 0);
    }
  }

  else
  {
    vdms_dataChannelResourceProcessingStateChangedNotificationHandler_cold_1();
  }

  return FigSimpleMutexUnlock();
}

void __vdms_gracefullySetVideoTargetArray_block_invoke(uint64_t a1)
{
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  vdms_reevaluateProcessingStateAndNotify(*(a1 + 32), *(a1 + 48));
  FigSimpleMutexUnlock();
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t vdms_updateDataChannelConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        v9 = DerivedStorage;
        FigSimpleMutexLock();
        if (*(v9 + 16) < 4)
        {
          v12 = 4294951442;
        }

        else
        {
          DataChannelResourceEntryByTarget = vdms_findDataChannelResourceEntryByTarget();
          if (DataChannelResourceEntryByTarget && (v11 = DataChannelResourceEntryByTarget[3]) != 0)
          {
            v12 = FigDataChannelConfigurationAddDataChannelResource(a3, v11);
          }

          else
          {
            v12 = 0;
          }
        }

        FigSimpleMutexUnlock();
      }

      else
      {
        vdms_updateDataChannelConfig_cold_1(&v14);
        return v14;
      }
    }

    else
    {
      vdms_updateDataChannelConfig_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    vdms_updateDataChannelConfig_cold_3(&v16);
    return v16;
  }

  return v12;
}

void *vdms_findDataChannelResourceEntryByTarget()
{
  v0 = (CMBaseObjectGetDerivedStorage() + 48);
  do
  {
    v0 = *v0;
  }

  while (v0 && !FigCFEqual());
  return v0;
}

void vdms_pumpTransferCallback(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v7 = CFRetain(Owner);
  }

  else
  {
    v7 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174D0)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 16) == 2)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    FigBytePumpRetain(a2);
    FigRetainProxyRetain();
    FigRetainProxyRetainOwner();
    v10 = *(DerivedStorage + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vdms_pumpTransferCallback_block_invoke;
    block[3] = &unk_1E748E140;
    block[6] = DerivedStorage;
    block[7] = a3;
    block[8] = a2;
    block[4] = a1;
    block[5] = v7;
    dispatch_async(v10, block);
  }

  else if (dword_1EAF174D0)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyRelease();
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t vdms_getAllDataChannelResourceProcessingStatus()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) - 7) <= 0xFFFFFFFD)
  {
    if (dword_1EAF174D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v5 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v1 = *(DerivedStorage + 48);
    if (v1)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = *(v1 + 9);
        if (v4 != 1)
        {
          v3 = 0;
        }

        v2 |= v4 == 2;
        v1 = *v1;
      }

      while (v1);
      if (v3)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      if (v2)
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v5;
}

void __vdms_pumpTransferCallback_block_invoke(uint64_t a1)
{
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  *(*(a1 + 48) + 16) = 3;
  if (*(a1 + 56))
  {
    if (dword_1EAF174D0)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(*(a1 + 48) + 64) = FigBytePumpRetain(*(a1 + 64));
    v4 = *(*(a1 + 48) + 64);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v5)
    {
      v5(v4);
    }
  }

  vdms_reevaluateProcessingStateAndNotify(*(a1 + 40), 0);
  FigSimpleMutexUnlock();
  FigRetainProxyReleaseOwner();
  FigRetainProxyRelease();
  FigBytePumpRelease(*(a1 + 64));
  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t OUTLINED_FUNCTION_7_56()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_12_37(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = (a1 + 8);
  }

  *v2 = v1;
  *v1 = a1;
}

BOOL OUTLINED_FUNCTION_13_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, __int16 a18, char a19, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

CFTimeInterval OUTLINED_FUNCTION_14_35(uint64_t a1, CFDateRef theDate)
{
  v4 = *(a1 + 96);

  return CFDateGetTimeIntervalSinceDate(theDate, v4);
}

uint64_t mv_IsStringInCArrayList(CFStringRef theString1, CFStringRef **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  for (i = a2 + 1; ; ++i)
  {
    v5 = 1;
    if (CFStringCompare(theString1, *v2, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    v6 = *i;
    v2 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t FigMediaValidatorIsNonByteStreamURLStreaming(int a1, const __CFURL *a2, const __CFURL *a3, __CFHTTPMessage *a4, _BYTE *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a1 == -12939)
  {
    if (mv_IsStreaming(a2, a3, a4))
    {
      return 1;
    }

    if (a4)
    {
      ResponseStatusCode = CFHTTPMessageGetResponseStatusCode(a4);
      if (ResponseStatusCode == 200 || ResponseStatusCode == 416 || ResponseStatusCode == 206)
      {
        v12 = 0;
        if (mv_IsMimeTypeInList(a4, audioMimeTypes, &v12))
        {
          goto LABEL_11;
        }

        v11 = a3 ? a3 : a2;
        if (v11)
        {
          if (mv_IsExtensionInList(v11, a4, audioExtensions, &v12 + 1))
          {
LABEL_11:
            if (a5)
            {
              *a5 = 1;
            }

            return 1;
          }

          if (!(v12 | HIBYTE(v12)))
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mv_GetValidationType(const __CFDictionary *a1, int *a2)
{
  Value = CFDictionaryGetValue(a1, @"ValidationType");
  if (Value)
  {
    v4 = Value;
    if (CFEqual(Value, @"RejectIfUnrecognized"))
    {
      v5 = 0;
LABEL_8:
      result = 0;
      *a2 = v5;
      return result;
    }

    if (CFEqual(v4, @"RequireOneRecognized"))
    {
      v5 = 1;
      goto LABEL_8;
    }

    if (CFEqual(v4, @"IgnoreUnrecognized"))
    {
      v5 = 2;
      goto LABEL_8;
    }
  }

  return 4294954334;
}

uint64_t FigMediaValidatorValidateFormatDescription(const opaqueCMFormatDescription *a1, const __CFDictionary *a2)
{
  v16 = 0;
  v15 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = a2;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaType);
  if (CFStringFrom4CC)
  {
    v6 = CFStringFrom4CC;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(a2, CFStringFrom4CC, @"TrackTypes", &v15, &v16);
    if (IsValueInArrayInDictionary)
    {
LABEL_21:
      v11 = IsValueInArrayInDictionary;
LABEL_22:
      CFRelease(v6);
      v13 = HIBYTE(v16) != 0;
      goto LABEL_23;
    }

    if (v16)
    {
      if (v15)
      {
        if (MediaType <= 1936684397)
        {
          if (MediaType == 1668047728)
          {
            IsValueInArrayInDictionary = mv_CheckIfClosedCaptionsPlayable(v17, v6, a1, 0, &v16 + 1);
            goto LABEL_21;
          }

          if (MediaType == 1935832172)
          {
            IsValueInArrayInDictionary = mv_CheckIfSubTitlesPlayable(v17, v6, a1, 0, &v16 + 1);
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (MediaType == 1936684398)
        {
          IsValueInArrayInDictionary = mv_CheckIfAudioPlayable(v17, v6, a1, 0, 0, &v16 + 1);
          goto LABEL_21;
        }

        if (MediaType != 1953325924)
        {
          if (MediaType == 1986618469)
          {
            IsValueInArrayInDictionary = mv_CheckIfVideoPresentable(v17, v6, a1, 0, 0, 0, 0, &v16 + 1);
            goto LABEL_21;
          }

LABEL_20:
          IsValueInArrayInDictionary = mv_CheckIfOtherMediaTypePlayable(v17, v6, a1, &v16 + 1);
          goto LABEL_21;
        }

        MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
        v9 = mv_CreateCFStringFrom4CC(MediaSubType);
        if (v9)
        {
          v10 = v9;
          v19 = 0;
          v11 = mv_IsValueInArrayInDictionary(a2, v9, v6, &v19 + 1, &v19);
          if (!v11)
          {
            if (v19)
            {
              v12 = 0;
              if (!HIBYTE(v19))
              {
                v11 = FigSignalErrorAt();
                v12 = 1;
              }
            }

            else
            {
              v12 = 0;
            }

            HIBYTE(v16) = v12;
          }

          CFRelease(v10);
          goto LABEL_22;
        }

        FigMediaValidatorValidateFormatDescription_cold_1(&v20);
      }

      else
      {
        FigMediaValidatorValidateFormatDescription_cold_2(&v20);
      }
    }

    else
    {
      FigMediaValidatorValidateFormatDescription_cold_3(&v20);
    }

    v11 = v20;
    goto LABEL_22;
  }

  FigMediaValidatorValidateFormatDescription_cold_4(&v20);
  v13 = 0;
  v11 = v20;
LABEL_23:
  if (v11 == 0 && v13)
  {
    return 4294954346;
  }

  else
  {
    return v11;
  }
}

uint64_t mv_CheckIfVideoPresentable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, uint64_t a4, uint64_t a5, int a6, _BYTE *a7, BOOL *a8)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a7)
  {
    *a7 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v17 = CFStringFrom4CC;
    v153 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v153 + 1, &v153);
    if (IsValueInArrayInDictionary || !v153 && (IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), v17, @"VideoCodecs", &v153 + 1, &v153), IsValueInArrayInDictionary))
    {
      v31 = IsValueInArrayInDictionary;
      goto LABEL_151;
    }

    resolvedDictionaryOut = 0;
    values[0] = 0;
    value = 0;
    v149 = a4;
    if (CMFormatDescriptionGetMediaType(desc) != 1986618469)
    {
LABEL_33:
      if (!v153)
      {
        fig_log_get_emitter();
        v31 = FigSignalErrorAtGM();
        goto LABEL_148;
      }

      if (!HIBYTE(v153))
      {
        v31 = FigSignalErrorAt();
        if (!v31)
        {
          goto LABEL_148;
        }

        goto LABEL_46;
      }

      v32 = a8;
      v33 = CMFormatDescriptionGetMediaSubType(desc);
      v34 = mv_CreateCFStringFrom4CC(v33);
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      if (!v34)
      {
        mv_CheckIfVideoPresentable_cold_6(values);
        v31 = LODWORD(values[0]);
        a8 = v32;
        if (!LODWORD(values[0]))
        {
          goto LABEL_148;
        }

        goto LABEL_46;
      }

      v35 = v34;
      v36 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *MEMORY[0x1E695E4D0]);
      VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      number = 0;
      valuePtr = 0;
      *v160 = 0;
      v159 = 0;
      if (VideoDecoderInstance)
      {
        goto LABEL_39;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
      v42 = *(a1 + 112);
      TypeID = CFNumberGetTypeID();
      CodecProperty = mv_GetCodecProperty(v42, v35, @"VideoCodecProfiles", @"VideoMaxWidth", TypeID, &number);
      if (CodecProperty)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v159) && v159 < Dimensions.width)
      {
        goto LABEL_193;
      }

      v143 = v36;
      v44 = *(a1 + 112);
      v45 = CFNumberGetTypeID();
      CodecProperty = mv_GetCodecProperty(v44, v35, @"VideoCodecProfiles", @"VideoMaxHeight", v45, &number);
      if (CodecProperty)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v159) && v159 < Dimensions.height)
      {
        goto LABEL_193;
      }

      v46 = *(a1 + 112);
      v47 = CFNumberGetTypeID();
      CodecProperty = mv_GetCodecProperty(v46, v35, @"VideoCodecProfiles", @"VideoMaxPixelsPerFrame", v47, &number);
      if (CodecProperty)
      {
        goto LABEL_40;
      }

      if (number && CFNumberGetValue(number, kCFNumberSInt32Type, &v159) && v159 < Dimensions.height * Dimensions.width)
      {
LABEL_193:
        mv_CheckIfVideoPresentable_cold_1(values);
        goto LABEL_230;
      }

      if (a5)
      {
        v48 = *(a1 + 112);
        v49 = CFBooleanGetTypeID();
        mv_GetCodecProperty(v48, v35, @"VideoCodecProfiles", @"VideoNoFrameReordering", v49, &valuePtr);
        if (valuePtr)
        {
          if (CFBooleanGetValue(valuePtr))
          {
            values[0] = 0;
            FigBaseObject = FigTrackReaderGetFigBaseObject(a5);
            v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v51)
            {
              v51(FigBaseObject, @"TrackFrameReorderingRequired", v36, values);
            }

            if (values[0])
            {
              v52 = CFBooleanGetValue(values[0]);
              CFRelease(values[0]);
              if (v52)
              {
LABEL_39:
                CodecProperty = FigSignalErrorAt();
LABEL_40:
                v31 = CodecProperty;
LABEL_41:
                a8 = v32;
                goto LABEL_42;
              }
            }
          }
        }
      }

      CodecProperty = mv_GetVideoProfileAndLevelConstraints(*(a1 + 112), v35, &v158, 0, &v157, &v156, &v155, 0);
      if (CodecProperty)
      {
        goto LABEL_40;
      }

      v53 = v155;
      if (!v155 || !(v158 | v156))
      {
        goto LABEL_206;
      }

      v154 = 0;
      if (v156)
      {
        CFNumberGetValue(v156, kCFNumberSInt32Type, &v154 + 4);
        v53 = v155;
      }

      CFNumberGetValue(v53, kCFNumberSInt32Type, &v154);
      if (v33 <= 1752589104)
      {
        if (v33 != 1635148593)
        {
          if (v33 == 1748121139)
          {
            v145 = v17;
            v54 = a1;
            v55 = a5;
            v56 = v158;
            v57 = HIDWORD(v154);
            v151 = v154;
            Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
            if (!Extension)
            {
              goto LABEL_247;
            }

            v59 = Extension;
            v60 = CFDictionaryGetTypeID();
            if (v60 != CFGetTypeID(v59))
            {
              goto LABEL_247;
            }

            v61 = CFDictionaryGetValue(v59, @"d263");
            if (!v61)
            {
              goto LABEL_247;
            }

            ValueAtIndex = v61;
            v63 = CFArrayGetTypeID();
            if (v63 == CFGetTypeID(ValueAtIndex))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
              if (!ValueAtIndex)
              {
                goto LABEL_247;
              }
            }

            else
            {
              v87 = CFDataGetTypeID();
              if (v87 != CFGetTypeID(ValueAtIndex))
              {
                goto LABEL_247;
              }
            }

            if (CFDataGetLength(ValueAtIndex) >= 7)
            {
              BytePtr = CFDataGetBytePtr(ValueAtIndex);
              v89 = BytePtr[6];
              v90 = BytePtr[5];
              if (v56)
              {
                v36 = v143;
                if (!mv_IsIntInCFArray(v89, v56))
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v36 = v143;
                if (v57 < v89)
                {
                  goto LABEL_246;
                }
              }

              if (v151 >= v90)
              {
                a5 = v55;
                a1 = v54;
                v17 = v145;
                goto LABEL_206;
              }

LABEL_246:
              FigSignalErrorAt();
            }

LABEL_247:
            v31 = 4294954341;
            a8 = v32;
            a1 = v54;
            v17 = v145;
            goto LABEL_42;
          }

LABEL_206:
          v114 = *(a1 + 112);
          v115 = CFBooleanGetTypeID();
          CodecProperty = mv_GetCodecProperty(v114, v35, @"VideoCodecProfiles", @"VideoNoInterlacing", v115, &valuePtr);
          if (CodecProperty)
          {
            goto LABEL_40;
          }

          if (!valuePtr || (v116 = CFBooleanGetValue(valuePtr), v33 != 1635148593) || !v116 || (LOBYTE(value) = 0, resolvedDictionaryOut = 0, values[0] = 0, (Extensions = CMFormatDescriptionGetExtensions(desc)) != 0) && (v118 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) != 0 && (v119 = v118, v120 = CFDictionaryGetTypeID(), v120 == CFGetTypeID(v119)) && (v121 = CFDictionaryGetValue(v119, @"avcC")) != 0 && ((v122 = v121, v123 = CFArrayGetTypeID(), v123 != CFGetTypeID(v122)) || (v122 = CFArrayGetValueAtIndex(v122, 0)) != 0) && (v124 = CFDataGetTypeID(), v124 == CFGetTypeID(v122)) && (CFDataGetBytePtr(v122), CFDataGetLength(v122), !FigH264Bridge_GetSPSFromAVCC()) && !FigH264Bridge_GetSPSIsInterlaced() && !value)
          {
            v125 = *(a1 + 112);
            v126 = CFStringGetTypeID();
            v31 = mv_GetCodecProperty(v125, v35, @"VideoCodecProfiles", @"MaxVideoTrackMatrixType", v126, v160);
            if (v31)
            {
              goto LABEL_41;
            }

            a8 = v32;
            if (*v160)
            {
              values[0] = 0;
              v127 = FigTrackReaderGetFigBaseObject(a5);
              v128 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v128)
              {
                v129 = v128(v127, @"TrackMatrix", v36, values);
                v31 = 0;
                v130 = values[0];
                if (!v129 && values[0])
                {
                  v31 = mv_CheckIfMatrixIsSupported(*v160, values[0]);
                  v130 = values[0];
                }

                if (v130)
                {
                  CFRelease(v130);
                }
              }

              else
              {
                v31 = 0;
              }
            }

LABEL_42:
            CFRelease(v35);
            if (!v31)
            {
LABEL_148:
              v40 = 0;
              if (!a8)
              {
                goto LABEL_151;
              }

LABEL_149:
              if (!v31)
              {
                *a8 = v40;
              }

              goto LABEL_151;
            }

LABEL_46:
            v40 = *(a1 + 104) == 1;
            if (*(a1 + 104) == 1)
            {
              v31 = 0;
            }

            else
            {
              v31 = v31;
            }

            if (!a8)
            {
              goto LABEL_151;
            }

            goto LABEL_149;
          }

          mv_CheckIfVideoPresentable_cold_5(values);
LABEL_230:
          v31 = LODWORD(values[0]);
          goto LABEL_41;
        }

        v73 = v158;
        cf = v157;
        v146 = HIDWORD(v154);
        v141 = v154;
        v74 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
        if (v74)
        {
          v75 = v74;
          v76 = CFDictionaryGetTypeID();
          if (v76 == CFGetTypeID(v75))
          {
            v77 = CFDictionaryGetValue(v75, @"avcC");
            if (v77)
            {
              v78 = v77;
              v79 = CFArrayGetTypeID();
              if (v79 == CFGetTypeID(v78))
              {
                v78 = CFArrayGetValueAtIndex(v78, 0);
                if (!v78)
                {
                  goto LABEL_205;
                }
              }

              else
              {
                v96 = CFDataGetTypeID();
                if (v96 != CFGetTypeID(v78))
                {
                  goto LABEL_205;
                }
              }

              if (CFDataGetLength(v78) >= 5)
              {
                v97 = CFDataGetBytePtr(v78);
                v98 = v97[1];
                v99 = v97[3];
                if (v73)
                {
                  IsIntInCFArray = mv_IsIntInCFArray(v97[1], v73);
                }

                else
                {
                  IsIntInCFArray = v146 >= v98;
                }

                if (!IsIntInCFArray)
                {
                  goto LABEL_268;
                }

                if (!a6)
                {
                  v148 = v17;
                  if (a5 && cf && mv_isMovieFamilyFormatReader(v149))
                  {
                    v134 = v141;
                    LODWORD(values[0]) = v141;
                    v135 = mv_EvaluateProfileConstraints(v98, cf, a5, values, 0);
                    if (SLODWORD(values[0]) < v141)
                    {
                      v134 = values[0];
                    }

                    v141 = v134;
                    v17 = v148;
                    if (!v135)
                    {
                      goto LABEL_268;
                    }
                  }

                  v17 = v148;
                  if (v141 < v99)
                  {
                    if (!v149 || !a5 || !mv_isMovieFamilyFormatReader(v149))
                    {
                      goto LABEL_268;
                    }

                    v108 = CMVideoFormatDescriptionGetDimensions(desc);
                    v109 = 0.0;
                    if (v141 > 40)
                    {
                      if (v141 > 49)
                      {
                        if (v141 == 50)
                        {
                          v133 = 0x4122000000000000;
                        }

                        else
                        {
                          if (v141 != 51)
                          {
                            goto LABEL_263;
                          }

                          v133 = 0x412E000000000000;
                        }

                        goto LABEL_262;
                      }

                      if (v141 != 41)
                      {
                        if (v141 == 42)
                        {
                          v109 = 522240.0;
                        }

LABEL_263:
                        v136 = v108.height + 30;
                        if (v108.height >= -15)
                        {
                          v136 = v108.height + 15;
                        }

                        v137 = v136 >> 4;
                        v138 = v108.width + 15;
                        if (v108.width < -15)
                        {
                          v138 = v108.width + 30;
                        }

                        v17 = v148;
                        if (mv_CheckIfDroppingFramesEnablesPlayability(a5, v109 / (v137 * (v138 >> 4)), 0.0))
                        {
                          goto LABEL_205;
                        }

LABEL_268:
                        v31 = 4294954341;
                        FigSignalErrorAt();
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      if (v141 <= 31)
                      {
                        if (v141 == 30)
                        {
                          v109 = 40500.0;
                        }

                        else if (v141 == 31)
                        {
                          v109 = 108000.0;
                        }

                        goto LABEL_263;
                      }

                      if (v141 == 32)
                      {
                        v109 = 216000.0;
                        goto LABEL_263;
                      }

                      if (v141 != 40)
                      {
                        goto LABEL_263;
                      }
                    }

                    v133 = 0x410E000000000000;
LABEL_262:
                    v109 = *&v133;
                    goto LABEL_263;
                  }
                }
              }
            }
          }
        }

LABEL_205:
        v36 = v143;
        goto LABEL_206;
      }

      if (v33 != 1752589105)
      {
        if (v33 != 1836070006)
        {
          goto LABEL_206;
        }

        v145 = v17;
        v54 = a1;
        v64 = a5;
        v65 = v158;
        v66 = HIDWORD(v154);
        v152 = v154;
        v67 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
        if (!v67)
        {
          goto LABEL_247;
        }

        v68 = v67;
        v69 = CFDictionaryGetTypeID();
        if (v69 != CFGetTypeID(v68))
        {
          goto LABEL_247;
        }

        v70 = CFDictionaryGetValue(v68, @"esds");
        if (!v70)
        {
          goto LABEL_247;
        }

        v71 = v70;
        v72 = CFArrayGetTypeID();
        if (v72 == CFGetTypeID(v71))
        {
          v71 = CFArrayGetValueAtIndex(v71, 0);
          if (!v71)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v91 = CFDataGetTypeID();
          if (v91 != CFGetTypeID(v71))
          {
            goto LABEL_247;
          }
        }

        v92 = CFDataGetBytePtr(v71);
        Length = CFDataGetLength(v71);
        if (!v92 || Length < 5)
        {
          goto LABEL_246;
        }

        v94 = Length - 4;
        v95 = v92 + 2;
        while (*(v95 - 2) || *(v95 - 1) || *v95 != 1 || v95[1] != 176)
        {
          ++v95;
          if (!--v94)
          {
            goto LABEL_246;
          }
        }

        v110 = v95[2];
        v111 = &byte_196E77F76;
        v112 = 15;
        while (v110 != *(v111 - 2))
        {
          v111 += 3;
          if (!--v112)
          {
            goto LABEL_247;
          }
        }

        v113 = *(v111 - 1);
        if (v65)
        {
          if (!mv_IsIntInCFArray(v113, v65))
          {
            goto LABEL_246;
          }
        }

        else if (v66 < v113)
        {
          goto LABEL_246;
        }

        if (v152 < *v111)
        {
          goto LABEL_246;
        }

        a5 = v64;
        a1 = v54;
        v17 = v145;
        goto LABEL_205;
      }

      v80 = v158;
      cfa = v157;
      v142 = HIDWORD(v154);
      v147 = v154;
      v81 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
      if (v81)
      {
        v82 = v81;
        v83 = CFGetTypeID(v81);
        if (v83 == CFDictionaryGetTypeID())
        {
          v84 = CFDictionaryGetValue(v82, @"hvcC");
          if (v84)
          {
            v85 = v84;
            v86 = CFGetTypeID(v84);
            if (v86 == CFArrayGetTypeID())
            {
              if (!CFArrayGetValueAtIndex(v85, 0))
              {
                goto LABEL_239;
              }

LABEL_126:
              resolvedDictionaryOut = 0;
              value = 0;
              v164 = 0;
              v163 = 0;
              if (FigHEVCBridge_GetHEVCParameterSetAtIndex() || FigHEVCBridge_GetSPSProfileTierLevel())
              {
                goto LABEL_239;
              }

              v102 = HIBYTE(v164);
              v103 = v163;
              values[0] = 0;
              if (v80)
              {
                v104 = mv_IsIntInCFArray(HIBYTE(v164), v80);
              }

              else
              {
                v104 = v142 >= HIBYTE(v164);
              }

              if (!v104)
              {
                goto LABEL_238;
              }

              if (a6)
              {
                goto LABEL_205;
              }

              if (!a5 || !cfa || !mv_isMovieFamilyFormatReader(v149))
              {
                goto LABEL_137;
              }

              v166 = v147;
              v131 = mv_EvaluateProfileConstraints(v102, cfa, a5, &v166, values);
              if (v149 && !v131)
              {
                if (!mv_isMovieFamilyFormatReader(v149))
                {
                  goto LABEL_238;
                }

                CMVideoFormatDescriptionGetDimensions(desc);
                v131 = mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(a5, 0.0, *values);
              }

              v132 = v147;
              if (v166 < v147)
              {
                v132 = v166;
              }

              v147 = v132;
              if (v131)
              {
LABEL_137:
                if (v147 >= v103)
                {
                  goto LABEL_205;
                }

                if (v149 && a5 && mv_isMovieFamilyFormatReader(v149))
                {
                  v105 = CMVideoFormatDescriptionGetDimensions(desc);
                  v106 = 0.0;
                  if (v147 <= 122)
                  {
                    if (v147 > 89)
                    {
                      switch(v147)
                      {
                        case 'Z':
                          v106 = 16588800.0;
                          break;
                        case ']':
                          v106 = 33177600.0;
                          break;
                        case 'x':
                          v106 = 66846720.0;
                          break;
                      }
                    }

                    else
                    {
                      switch(v147)
                      {
                        case 30:
                          v106 = 552960.0;
                          break;
                        case 60:
                          v106 = 3686400.0;
                          break;
                        case 63:
                          v106 = 7372800.0;
                          break;
                      }
                    }
                  }

                  else if (v147 <= 155)
                  {
                    switch(v147)
                    {
                      case 123:
                        v106 = 133693440.0;
                        break;
                      case 150:
                        v106 = 267386880.0;
                        break;
                      case 153:
                        v106 = 534773760.0;
                        break;
                    }
                  }

                  else if (v147 > 182)
                  {
                    if (v147 == 183)
                    {
                      v106 = 2139095040.0;
                    }

                    else if (v147 == 186)
                    {
                      v106 = 4278190080.0;
                    }
                  }

                  else if (v147 == 156 || v147 == 180)
                  {
                    v106 = 1069547520.0;
                  }

                  if (mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(a5, v106 / (v105.height * v105.width), 0.0))
                  {
                    goto LABEL_205;
                  }
                }
              }

LABEL_238:
              mv_CheckIfVideoPresentable_cold_4();
              goto LABEL_239;
            }

            v101 = CFGetTypeID(v85);
            if (v101 == CFDataGetTypeID())
            {
              goto LABEL_126;
            }
          }
        }
      }

LABEL_239:
      v31 = 4294954341;
      goto LABEL_41;
    }

    v19 = CMFormatDescriptionGetMediaSubType(desc);
    v20 = *MEMORY[0x1E695E480];
    v21 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], v19);
    if (!v21)
    {
      v28 = 0;
      goto LABEL_29;
    }

    v22 = v21;
    v144 = v17;
    v23 = a1;
    v24 = a5;
    v25 = a8;
    values[0] = CFDictionaryCreateMutable(v20, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(values[0], *MEMORY[0x1E69660D0], *MEMORY[0x1E695E4D0]);
    v26 = CFArrayCreate(v20, values, 1, MEMORY[0x1E695E9C0]);
    CVPixelBufferCreateResolvedAttributesDictionary(v20, v26, &resolvedDictionaryOut);
    if (resolvedDictionaryOut)
    {
      CFDictionaryGetValueIfPresent(resolvedDictionaryOut, *MEMORY[0x1E6966130], &value);
      if (value)
      {
        v27 = CFGetTypeID(value);
        if (v27 == CFNumberGetTypeID())
        {
          LODWORD(valuePtr) = 0;
          if (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
          {
            v28 = VTPixelTransferSessionCanTransfer() != 0;
LABEL_24:
            CFRelease(v22);
            if (values[0])
            {
              CFRelease(values[0]);
              values[0] = 0;
            }

            if (v26)
            {
              CFRelease(v26);
            }

            a8 = v25;
            a5 = v24;
            a1 = v23;
            v17 = v144;
LABEL_29:
            if (resolvedDictionaryOut)
            {
              CFRelease(resolvedDictionaryOut);
            }

            if (v28)
            {
              v31 = 0;
LABEL_151:
              CFRelease(v17);
              return v31;
            }

            goto LABEL_33;
          }
        }

        else if (value)
        {
          v29 = CFGetTypeID(value);
          if (v29 == CFArrayGetTypeID() && CFArrayGetCount(value) >= 1)
          {
            v30 = 0;
            while (1)
            {
              LODWORD(valuePtr) = 0;
              if (FigCFArrayGetInt32AtIndex())
              {
                if (VTPixelTransferSessionCanTransfer())
                {
                  break;
                }
              }

              ++v30;
              v28 = 0;
              if (CFArrayGetCount(value) <= v30)
              {
                goto LABEL_24;
              }
            }

            v28 = 1;
            goto LABEL_24;
          }
        }
      }
    }

    v28 = 0;
    goto LABEL_24;
  }

  mv_CheckIfVideoPresentable_cold_7(values);
  return LODWORD(values[0]);
}

uint64_t mv_CheckIfAudioPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, _BYTE *a4, _BYTE *a5, BOOL *a6)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a5)
  {
    *a5 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (!CFStringFrom4CC)
  {
    mv_CheckIfAudioPlayable_cold_4(&number);
    return number;
  }

  v14 = CFStringFrom4CC;
  v31 = 0;
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v31 + 1, &v31);
  if (IsValueInArrayInDictionary)
  {
    goto LABEL_38;
  }

  if (v31)
  {
    goto LABEL_8;
  }

  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), v14, @"AudioCodecs", &v31 + 1, &v31);
  if (IsValueInArrayInDictionary)
  {
LABEL_38:
    v28 = IsValueInArrayInDictionary;
    goto LABEL_35;
  }

  if (v31)
  {
LABEL_8:
    if (MediaSubType == 1634754915)
    {
      mv_CheckIfAudioPlayable_cold_3(desc, &number);
      v26 = number;
      goto LABEL_24;
    }

    if (!HIBYTE(v31))
    {
      v26 = FigSignalErrorAt();
      goto LABEL_24;
    }

    v16 = CMFormatDescriptionGetMediaSubType(desc);
    v17 = mv_CreateCFStringFrom4CC(v16);
    if (!v17)
    {
      mv_CheckIfAudioPlayable_cold_2(&v35);
      v26 = v35;
      goto LABEL_24;
    }

    v18 = v17;
    BOOLean = 0;
    number = 0;
    valuePtr = 0.0;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    if (StreamBasicDescription)
    {
      p_mSampleRate = &StreamBasicDescription->mSampleRate;
      v21 = *(a1 + 112);
      TypeID = CFNumberGetTypeID();
      CodecProperty = mv_GetCodecProperty(v21, v18, @"AudioCodecProfiles", @"AudioMaxSampleRate", TypeID, &number);
      if (CodecProperty)
      {
        v26 = CodecProperty;
        goto LABEL_22;
      }

      if (number && CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr) && *p_mSampleRate > valuePtr)
      {
        v30 = 4294954338;
      }

      else
      {
        if (!a4)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 112);
        v25 = CFBooleanGetTypeID();
        v26 = mv_GetCodecProperty(v24, v18, @"AudioCodecProfiles", @"TrackMustBeDisabled", v25, &BOOLean);
        if (v26 || !BOOLean)
        {
          goto LABEL_22;
        }

        if (!*a4 || !CFBooleanGetValue(BOOLean))
        {
LABEL_21:
          v26 = 0;
LABEL_22:
          CFRelease(v18);
LABEL_24:
          if (v26)
          {
            v27 = *(a1 + 104) == 1;
            if (*(a1 + 104) == 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = v26;
            }

            if (!a6)
            {
              goto LABEL_35;
            }

            goto LABEL_33;
          }

          v28 = 0;
          goto LABEL_32;
        }

        v30 = 4294954339;
      }

      mv_CheckIfAudioPlayable_cold_1(v30, &v35);
      v26 = v35;
      goto LABEL_22;
    }

    v26 = -12957;
    goto LABEL_22;
  }

  fig_log_get_emitter();
  v28 = FigSignalErrorAtGM();
LABEL_32:
  v27 = 0;
  if (a6)
  {
LABEL_33:
    if (!v28)
    {
      *a6 = v27;
    }
  }

LABEL_35:
  CFRelease(v14);
  return v28;
}

uint64_t mv_CheckIfSubTitlesPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, _BYTE *a4, char *a5)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (a4)
  {
    *a4 = FigCPEIsSupportedFormatDescription(desc);
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v12 = CFStringFrom4CC;
    v16 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v16 + 1, &v16);
    if (!IsValueInArrayInDictionary)
    {
      if (v16)
      {
        v14 = 0;
        if (!HIBYTE(v16))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (a5)
      {
        *a5 = v14;
      }
    }

    CFRelease(v12);
  }

  else
  {
    mv_CheckIfSubTitlesPlayable_cold_1(&v17);
    return v17;
  }

  return IsValueInArrayInDictionary;
}

uint64_t mv_CheckIfClosedCaptionsPlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, BOOL *a4, char *a5)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v10 = MediaSubType;
  if (a4)
  {
    *a4 = MediaSubType == 1882599480;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v12 = CFStringFrom4CC;
    v16 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v16 + 1, &v16);
    if (!IsValueInArrayInDictionary)
    {
      if (v16)
      {
        v14 = 0;
        if (!HIBYTE(v16))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v10 != 1664495672 && v10 != 1664561208 && v10 != 1882599480)
      {
        IsValueInArrayInDictionary = FigSignalErrorAt();
        v14 = 1;
      }

      if (a5)
      {
        *a5 = v14;
      }
    }

    CFRelease(v12);
  }

  else
  {
    mv_CheckIfClosedCaptionsPlayable_cold_1(&v17);
    return v17;
  }

  return IsValueInArrayInDictionary;
}

uint64_t mv_CheckIfOtherMediaTypePlayable(uint64_t a1, const void *a2, CMFormatDescriptionRef desc, char *a4)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  CFStringFrom4CC = mv_CreateCFStringFrom4CC(MediaSubType);
  if (CFStringFrom4CC)
  {
    v9 = CFStringFrom4CC;
    v13 = 0;
    IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, a2, &v13 + 1, &v13);
    if (!IsValueInArrayInDictionary)
    {
      if (v13)
      {
        v11 = 0;
        if (!HIBYTE(v13))
        {
          if (*(a1 + 104))
          {
            IsValueInArrayInDictionary = 0;
          }

          else
          {
            IsValueInArrayInDictionary = FigSignalErrorAt();
          }

          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }

      if (a4)
      {
        *a4 = v11;
      }
    }

    CFRelease(v9);
  }

  else
  {
    mv_CheckIfOtherMediaTypePlayable_cold_1(&v14);
    return v14;
  }

  return IsValueInArrayInDictionary;
}

uint64_t FigMediaValidatorCreateInternal(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xE8uLL, 0x10E00405F25D67FuLL);
  if (v2 && (v3 = FigReentrantMutexCreate(), (v2[26] = v3) != 0))
  {
    v4 = 0;
    v2[8] = v2;
    *a1 = v2;
  }

  else
  {
    fig_log_get_emitter();
    v4 = FigSignalErrorAtGM();
    if (v4)
    {
      free(v2);
    }
  }

  return v4;
}

uint64_t FigMediaValidatorValidateAsyncInternal(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, unint64_t a6)
{
  values[0] = @"com.apple.coremedia.mediavalidator";
  values[1] = 0;
  v12 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!a3 || !a5 || !(a2 | a6) || !CFDictionaryGetValue(a5, @"TrackTypes"))
  {
    FigMediaValidatorValidateAsyncInternal_cold_4(&v26);
LABEL_39:
    v21 = v26;
    goto LABEL_35;
  }

  if (CFDictionaryGetValue(a5, @"vide"))
  {
    v13 = 1;
  }

  else
  {
    v13 = CFDictionaryGetValue(a5, @"VideoCodecs") != 0;
  }

  if (CFDictionaryGetValue(a5, @"soun"))
  {
    v14 = 1;
  }

  else
  {
    v14 = CFDictionaryGetValue(a5, @"AudioCodecs") != 0;
  }

  if (!v14 || !v13)
  {
    FigMediaValidatorValidateAsyncInternal_cold_3(&v26);
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(a5, @"DiskCacheURL");
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(a1 + 48) = Value;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 176) = CFRetain(a5);
  if (a6)
  {
    *(a1 + 56) = CFRetain(a6);
  }

  ValidationType = mv_GetValidationType(a5, (a1 + 168));
  if (ValidationType)
  {
    goto LABEL_40;
  }

  if (a2)
  {
    *a1 = CFRetain(a2);
  }

  v17 = CFDictionaryGetValue(a5, @"RefMovieSecurityPolicy");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 != CFNumberGetTypeID() || !CFNumberGetValue(v18, kCFNumberSInt32Type, (a1 + 184)))
    {
      FigMediaValidatorValidateAsyncInternal_cold_1(&v26);
      goto LABEL_44;
    }
  }

  *(a1 + 72) = CFDictionaryGetValue(a5, @"VideoTrackPresent");
  v20 = FigSemaphoreCreate();
  *(a1 + 216) = v20;
  if (!v20)
  {
    FigMediaValidatorValidateAsyncInternal_cold_2(&v26);
LABEL_44:
    v21 = v26;
    if (!v26)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  ValidationType = FigThreadCreate();
  if (!ValidationType)
  {
    if (!FigSemaphoreWaitRelative())
    {
      v21 = 0;
      goto LABEL_35;
    }

    fig_log_get_emitter();
    v21 = FigSignalErrorAtGM();
    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

LABEL_40:
  v21 = ValidationType;
LABEL_26:
  if (*(a1 + 216))
  {
    FigSemaphoreDestroy();
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v22 = *(a1 + 176);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 176) = 0;
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 56) = 0;
  }

LABEL_35:
  if (v12)
  {
    CFRelease(v12);
  }

  return v21;
}

uint64_t FigMediaValidatorCreateSync(void *a1)
{
  v3 = 0;
  result = FigMediaValidatorCreateInternal(&v3);
  *a1 = v3;
  return result;
}

uint64_t FigMediaValidatorValidateURL(uint64_t a1, unint64_t a2, const __CFDictionary *a3, _DWORD *a4, _OWORD *a5)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (*(a1 + 200) || *(a1 + 44) || *(a1 + 40))
  {
    return 4294954342;
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = FigSemaphoreCreate();
  v6 = FigMediaValidatorValidateAsyncInternal(a1, a2, completeSync, &v12, a3, 0);
  if (!v6)
  {
    FigSemaphoreWaitRelative();
    v6 = v12;
    *a4 = HIDWORD(v12);
    *a5 = v13;
  }

  FigSemaphoreDestroy();
  return v6;
}

uint64_t completeSync(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 16) = a6;
  return FigSemaphoreSignal();
}

uint64_t FigMediaValidatorCreateWithByteStream(unint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v15 = 0;
  v10 = FigMediaValidatorCreateInternal(&v15);
  v11 = v10;
  v12 = v15;
  if (v15)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v11 = FigMediaValidatorValidateAsyncInternal(v15, 0, a2, a3, a4, a1);
    if (v11)
    {
      free(v12);
    }

    else
    {
      *a5 = v12;
    }
  }

  return v11;
}

uint64_t FigMediaValidatorGetStatus(uint64_t a1, float *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  v2 = 1.0;
  if (!*(a1 + 44))
  {
    v2 = 0.3;
    if (!*(a1 + 80))
    {
      v2 = 0.0;
    }
  }

  result = 0;
  *a2 = v2;
  return result;
}

uint64_t FigMediaValidatorValidateRFC4281ExtendedMIMEType(const __CFString *a1, const __CFArray *a2, const __CFDictionary *a3)
{
  cf = 0;
  v3 = mv_validateRFC4281ExtendedMIMETypeAndCopyStandardMIMEType(a1, a2, a3, 0, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t mv_validateRFC4281ExtendedMIMETypeAndCopyStandardMIMEType(const __CFString *a1, const __CFArray *a2, const __CFDictionary *a3, int a4, CFTypeRef *a5)
{
  v5 = 0;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  Length = CFStringGetLength(a1);
  v5 = malloc_type_calloc(Length + 1, 1uLL, 0x100004077774924uLL);
  if (!v5 || !CFStringGetCString(a1, v5, Length + 1, 0x8000100u))
  {
    goto LABEL_35;
  }

  v12 = 0;
  if (Length)
  {
    v13 = MEMORY[0x1E69E9830];
    do
    {
      v14 = v5[v12];
      if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune(v14, 0x4000uLL))
        {
          goto LABEL_13;
        }
      }

      else if ((*(v13 + 4 * v14 + 60) & 0x4000) == 0)
      {
        goto LABEL_13;
      }

      ++v12;
    }

    while (Length != v12);
LABEL_35:
    free(v5);
    return 4294954344;
  }

LABEL_13:
  if (v12 == Length)
  {
    goto LABEL_35;
  }

  v43 = a4;
  v15 = 0;
  v16 = &v5[v12];
  do
  {
    v17 = v15;
    if (v12 + v15 + 1 >= Length)
    {
      break;
    }

    v18 = v16[v15 + 1];
    v19 = (v18 & 0x80000000) != 0 ? __maskrune(v16[v15 + 1], 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x4000;
    v15 = v17 + 1;
  }

  while (v18 != 59 && v19 == 0);
  v21 = *MEMORY[0x1E695E480];
  v46.length = v17 + 1;
  v46.location = v12;
  v22 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v46);
  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = v22;
  if (a5)
  {
    *a5 = CFRetain(v22);
  }

  if (!mv_IsStringInCFArrayList(v23, a2))
  {
    free(v5);
    v27 = 4294954344;
    goto LABEL_74;
  }

  v24 = v12 + v17 + 2;
  if (v24 >= Length)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = v5[v24];
      if (v26 == 42)
      {
        v25 = 1;
      }

      else if (v26 == 61)
      {
        goto LABEL_39;
      }

      ++v24;
    }

    while (v24 < Length);
    v24 = Length;
  }

LABEL_39:
  v29 = v24 + 1;
  do
  {
    v30 = v29;
    if (v29 >= Length)
    {
      if (v25)
      {
        v27 = 0;
        goto LABEL_73;
      }

      alloc = v21;
LABEL_66:
      v37 = 1;
      v34 = Length;
      goto LABEL_67;
    }

    v31 = v5[v29];
    if ((v31 & 0x80000000) != 0)
    {
      v32 = __maskrune(v31, 0x4000uLL);
    }

    else
    {
      v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x4000;
    }

    v29 = v30 + 1;
  }

  while (v32);
  alloc = v21;
  if (!v25)
  {
    goto LABEL_66;
  }

  v44 = 0;
  v41 = 0;
  v42 = 0;
  v33 = 0;
  v34 = v30;
  while (1)
  {
    v35 = v5[v34];
    if ((v35 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x4000) == 0)
    {
      goto LABEL_51;
    }

LABEL_60:
    if (++v34 >= Length)
    {
      v34 = Length;
      goto LABEL_62;
    }
  }

  if (__maskrune(v5[v34], 0x4000uLL))
  {
    goto LABEL_60;
  }

LABEL_51:
  if (v35 == 39)
  {
    v36 = v44;
    if (v42)
    {
      v36 = 1;
    }

    v44 = v36;
    v42 = 1;
    goto LABEL_60;
  }

  if (v35 != 34)
  {
    if (v33 == 0 && v44 != 0)
    {
      v33 = 1;
      v30 = v34;
    }

    goto LABEL_60;
  }

  if (!v41)
  {
    v30 = v34 + 1;
    v41 = 1;
    goto LABEL_60;
  }

  v33 = 1;
LABEL_62:
  v37 = v33 != 0;
LABEL_67:
  v27 = 0;
  if (v37 && v30 < Length && v34 > v30)
  {
    v47.location = v30;
    v47.length = v34 - v30;
    v38 = CFStringCreateWithSubstring(alloc, a1, v47);
    if (v38)
    {
      v39 = v38;
      v45 = 0;
      v27 = FigMediaValidatorValidateRFC4281Codecs(v23, v38, v25, a3, v43, &v45);
      CFRelease(v39);
    }

    else
    {
      v27 = 4294954344;
    }
  }

LABEL_73:
  free(v5);
LABEL_74:
  CFRelease(v23);
  return v27;
}

uint64_t FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming(CFStringRef theString, const __CFDictionary *a2, _DWORD *a3, const __CFDictionary **a4)
{
  v21 = 1;
  if (a2 && mv_GetValidationType(a2, &v21))
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_1(&v23);
    return v23;
  }

  if (!theString)
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_5(&v23);
    return v23;
  }

  Length = CFStringGetLength(theString);
  v9 = malloc_type_malloc(Length + 1, 0x7C1C561BuLL);
  if (!v9)
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_4(&v23);
    return v23;
  }

  v10 = v9;
  if (CFStringGetCString(theString, v9, Length + 1, 0x600u))
  {
    __stringp = v10;
    if (*v10 != 34)
    {
      goto LABEL_10;
    }

    __stringp = v10 + 1;
    v11 = strchr(v10 + 1, 34);
    if (v11 && *v11)
    {
      *v11 = 0;
LABEL_10:
      if (a4)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        Mutable = 0;
        if (!a3)
        {
LABEL_13:
          v13 = MEMORY[0x1E69E9830];
          do
          {
            v14 = strsep(&__stringp, ",");
            v15 = *v14;
            if (*v14)
            {
              do
              {
                if (v15 < 0)
                {
                  if (!__maskrune(v15, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((*(v13 + 4 * v15 + 60) & 0x4000) == 0)
                {
                  break;
                }

                v16 = *++v14;
                v15 = v16;
              }

              while (v16);
            }

            v23 = v14;
            if (*v14)
            {
              v17 = strsep(&v23, ".");
              if (strlen(v17) == 4)
              {
                v18 = bswap32(*v17);
              }

              else
              {
                v18 = 0;
              }

              v19 = mv_ValidateRFC4281IdEvaluationFn(v18, v23, 2, 1u, a2, a3, Mutable);
              if (v19)
              {
                goto LABEL_31;
              }
            }

            else
            {
              FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_2(&v24);
              v19 = v24;
              if (v24)
              {
                goto LABEL_31;
              }
            }
          }

          while (__stringp);
          if (a4)
          {
            v19 = 0;
            *a4 = Mutable;
            goto LABEL_33;
          }

LABEL_31:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_33;
        }
      }

      *a3 = 0;
      goto LABEL_13;
    }

    v19 = 4294954344;
  }

  else
  {
    FigMediaValidatorValidateAndTranslateRFC4281CodecsForStreaming_cold_3(&v23);
    v19 = v23;
  }

LABEL_33:
  free(v10);
  return v19;
}

uint64_t FigCopySetOfAudioSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = audioMimeTypes[0];
      if (audioMimeTypes[0])
      {
        v6 = off_1EAEFF150;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfAudioSupportedMIMETypes_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopySetOfAudioSupportedMIMETypes_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigCopySetOfPlaylistSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = streamingMimeType[0];
      if (streamingMimeType[0])
      {
        v6 = off_1EAEFF1E8;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfPlaylistSupportedMIMETypes_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigCopySetOfPlaylistSupportedMIMETypes_cold_2(&v10);
    return v10;
  }

  return result;
}

uint64_t FigCopySetOfStreamingSupportedMIMETypes(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = streamingMimeType[0];
      if (streamingMimeType[0])
      {
        v6 = off_1EAEFF1E8;
        do
        {
          CFSetAddValue(v4, *v5);
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v8 = audioMimeTypes[0];
      if (audioMimeTypes[0])
      {
        v9 = off_1EAEFF150;
        do
        {
          CFSetAddValue(v4, *v8);
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfStreamingSupportedMIMETypes_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigCopySetOfStreamingSupportedMIMETypes_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t FigCopySetOfStreamingSupportedUTIs(const __CFAllocator *a1, __CFSet **a2)
{
  if (a2)
  {
    Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E6961578]);
    if (Mutable)
    {
      v4 = Mutable;
      for (i = 0; i != 2; ++i)
      {
        CFSetAddValue(v4, *streamingUTIs[i]);
      }

      v6 = audioUTIs[0];
      if (audioUTIs[0])
      {
        v7 = &off_1EAEFF1B8;
        do
        {
          CFSetAddValue(v4, *v6);
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      FigCopySetOfStreamingSupportedUTIs_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FigCopySetOfStreamingSupportedUTIs_cold_2(&v11);
    return v11;
  }

  return result;
}

const __CFDictionary *FigMediaValidatorGetMaxFrameRate(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"MaxFrameRate");
  }

  return result;
}

uint64_t FigMediaValidatorCreateMediaValidatorPropertyList(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = MEMORY[0x19A8D1510](*MEMORY[0x1E695E480], @"com.apple.MediaToolbox", a1);
      result = 0;
      *a2 = v3;
    }

    else
    {
      FigMediaValidatorCreateMediaValidatorPropertyList_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigMediaValidatorCreateMediaValidatorPropertyList_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t mv_CheckIfFormatReaderIsSupported(uint64_t a1, uint64_t a2)
{
  result = CFDictionaryGetValue(*(a1 + 112), @"AllowedFormatReaders");
  if (result)
  {
    v4 = result;
    value = 0;
    FigBaseObject = FigFormatReaderGetFigBaseObject(a2);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      result = v6(FigBaseObject, @"Identifier", *MEMORY[0x1E695E480], &value);
      if (!result)
      {
        v10.length = CFArrayGetCount(v4);
        v10.location = 0;
        v7 = CFArrayContainsValue(v4, v10, value);
        if (value)
        {
          CFRelease(value);
        }

        if (v7)
        {
          return 0;
        }

        else
        {
          mv_CheckIfFormatReaderIsSupported_cold_1(&v9);
          return v9;
        }
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t mv_CheckIfMatrixIsSupported(const void *a1, CFArrayRef theArray)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0.0;
  v19 = 0u;
  v20 = 0u;
  if (CFArrayGetCount(theArray) != 9)
  {
    return 4294954344;
  }

  v4 = 0;
  v5 = &v19;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v5);
    ++v4;
    v5 = (v5 + 4);
  }

  while (v4 != 9);
  v7 = 8;
  if (*(&v19 + 2) == 0.0 && *(&v20 + 1) == 0.0 && v21 == 1.0)
  {
    v9 = *(&v20 + 2) != 0.0;
    if (*(&v20 + 3) != 0.0)
    {
      v9 = 1;
    }

    v10 = *(&v19 + 1);
    if (*&v19 == 0.0)
    {
      v12 = *(&v19 + 3);
      v11 = *&v20;
      v13 = *(&v19 + 1) == 1.0 && *(&v19 + 3) == -1.0;
      if (v13 && *&v20 == 0.0)
      {
        goto LABEL_29;
      }

      if (*(&v19 + 1) == -1.0)
      {
        v14 = 0;
        v10 = -1.0;
        if (*(&v19 + 3) != 1.0 || *&v20 != 0.0)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v12 = *(&v19 + 3);
      v11 = *&v20;
    }

    v14 = *(&v19 + 1) == 0.0;
    if (*&v19 != -1.0 || *(&v19 + 1) != 0.0 || v11 != -1.0 || v12 != 0.0)
    {
      if (*&v19 != 0.0)
      {
        goto LABEL_37;
      }

      if (*(&v19 + 1) > 0.0 && v12 < 0.0 && v11 == 0.0)
      {
LABEL_41:
        if (*&v19 != v11 || v10 != -v12)
        {
          v9 |= 0x20u;
        }

        v7 = v9 | 0x50;
        goto LABEL_62;
      }

      if (*(&v19 + 1) >= 0.0)
      {
        goto LABEL_37;
      }

LABEL_35:
      if (v12 <= 0.0 || v11 != 0.0)
      {
LABEL_37:
        if (*&v19 >= 0.0 || !v14 || v11 >= 0.0 || v12 != 0.0)
        {
          if (v10 == 0.0 && v12 == 0.0)
          {
            if (*&v19 != v11)
            {
              v9 |= 0x20u;
            }

            if (*&v19 <= 0.0 || v11 <= 0.0 || *&v19 == 1.0 && v11 == 1.0)
            {
              if (v11 == 1.0 && *&v19 == 1.0)
              {
                v7 = v9;
              }

              else
              {
                v7 = v9 | 2;
              }
            }

            else
            {
              v7 = v9 | 0x10;
            }
          }

          else
          {
            v7 = v9 | 4;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

      goto LABEL_41;
    }

LABEL_29:
    v7 = v9 | 0x40;
  }

LABEL_62:
  if (CFEqual(a1, @"Identity"))
  {
    v18 = -1;
  }

  else if (CFEqual(a1, @"UprightUniformScale"))
  {
    v18 = -18;
  }

  else if (CFEqual(a1, @"UprightScale"))
  {
    v18 = -50;
  }

  else if (CFEqual(a1, @"Scale"))
  {
    v18 = -52;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndUniformScale"))
  {
    v18 = -82;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndUprightScale"))
  {
    v18 = -114;
  }

  else if (CFEqual(a1, @"OrthogonalRotationAndScale"))
  {
    v18 = -116;
  }

  else if (CFEqual(a1, @"OrthogonalRotation"))
  {
    v18 = -66;
  }

  else if (CFEqual(a1, @"Linear"))
  {
    v18 = -120;
  }

  else
  {
    v18 = -1;
  }

  if ((v18 & v7) != 0)
  {
    return FigSignalErrorAt();
  }

  else
  {
    return 0;
  }
}

uint64_t mv_ValidateTrackWithTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  cf = 0;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12)
  {
    CFStringFrom4CC = 0;
    goto LABEL_12;
  }

  v13 = v12(a3, &v60, &v61);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v61 == 1751740020;
  }

  if (v14)
  {
    v19 = v13;
LABEL_44:
    CFStringFrom4CC = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    goto LABEL_24;
  }

  v69 = 0;
  v70 = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a3);
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_8;
  }

  v16(FigBaseObject, @"EditCursorService", *MEMORY[0x1E695E480], &v70);
  v17 = v70;
  if (!v70)
  {
    goto LABEL_19;
  }

  v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v30 || (*theArray = *MEMORY[0x1E6960C80], *&v64 = *(MEMORY[0x1E6960C80] + 16), v30(v17, theArray, &v69), !v69))
  {
LABEL_8:
    LODWORD(v17) = 0;
    goto LABEL_9;
  }

  v31 = 0;
  while (1)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    *theArray = 0u;
    v64 = 0u;
    v32 = v69;
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v33 || v33(v32, theArray) || (BYTE4(theArray[1]) & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v31 > 0)
    {
      break;
    }

    ++v31;
LABEL_60:
    v34 = v69;
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v35 || v35(v34, 1))
    {
      goto LABEL_62;
    }
  }

  v31 = 2;
LABEL_62:
  LODWORD(v17) = v31 > 1;
LABEL_9:
  if (v70)
  {
    CFRelease(v70);
    v70 = 0;
  }

LABEL_19:
  if (v69)
  {
    CFRelease(v69);
  }

  if (v17)
  {
    mv_ValidateTrackWithTrackReader_cold_8(theArray);
    CFStringFrom4CC = 0;
    goto LABEL_23;
  }

LABEL_24:
  TrackBoolean = mv_GetTrackBoolean(a3, @"TrackEnabled", 1);
  if (!TrackBoolean && !a5 && *(a1 + 104) == 1)
  {
    v19 = 0;
    goto LABEL_44;
  }

  v23 = v61;
  if (v61 != 1952807028)
  {
LABEL_32:
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(v23);
    if (CFStringFrom4CC)
    {
      goto LABEL_33;
    }

    mv_ValidateTrackWithTrackReader_cold_7(theArray);
    goto LABEL_23;
  }

  theArray[0] = 0;
  v70 = 0;
  if (FCSupport_GetListOfChapterTitleTrackIDs(a2, theArray, &v70, 0) || (v25 = theArray[0], theArray[0] < 1))
  {
LABEL_27:
    CFStringFrom4CC = 0;
  }

  else
  {
    v26 = v70;
    while (1)
    {
      v27 = *v26++;
      if (v27 == v60)
      {
        break;
      }

      v25 = (v25 - 1);
      if (!v25)
      {
        goto LABEL_27;
      }
    }

    CFStringFrom4CC = CFRetain(@"ChapterName");
  }

  if (v70)
  {
    free(v70);
  }

  if (!CFStringFrom4CC)
  {
    v23 = v61;
    goto LABEL_32;
  }

LABEL_33:
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*(a1 + 112), CFStringFrom4CC, @"TrackTypes", &v62, &v59 + 1);
  if (IsValueInArrayInDictionary)
  {
    goto LABEL_40;
  }

  if (!HIBYTE(v59))
  {
    mv_ValidateTrackWithTrackReader_cold_6(theArray);
    goto LABEL_23;
  }

  if (v62 || !a5 && *(a1 + 104))
  {
    FigCFDictionaryGetBooleanIfPresent();
    v28 = mv_GetTrackBoolean(a3, @"TrackIsSelfContained", 1);
    v29 = MEMORY[0x1E695E480];
    if (!v28)
    {
      mv_ValidateTrackWithTrackReader_cold_5(theArray);
      goto LABEL_23;
    }

    v36 = FigTrackReaderGetFigBaseObject(a3);
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v37)
    {
      IsValueInArrayInDictionary = v37(v36, @"TrackFormatDescriptionArray", *v29, &cf);
      if (IsValueInArrayInDictionary)
      {
        goto LABEL_40;
      }

      if (cf)
      {
        Count = CFArrayGetCount(cf);
        if (Count)
        {
          v39 = Count;
          if (v61 <= 1936684397)
          {
            if (v61 == 1668047728)
            {
              v52 = cf;
              LOBYTE(theArray[0]) = 0;
              LOBYTE(v70) = 0;
              if (Count >= 1)
              {
                v53 = 0;
                v45 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v52, v53);
                  IsValueInArrayInDictionary = mv_CheckIfClosedCaptionsPlayable(a1, CFStringFrom4CC, ValueAtIndex, theArray, &v70);
                  if (IsValueInArrayInDictionary)
                  {
                    goto LABEL_40;
                  }

                  if (v70)
                  {
                    goto LABEL_135;
                  }

                  if (LOBYTE(theArray[0]))
                  {
                    v45 = 1;
                  }

                  if (v39 == ++v53)
                  {
                    goto LABEL_119;
                  }
                }
              }

              v45 = 0;
LABEL_119:
              if (!TrackBoolean)
              {
                goto LABEL_135;
              }

              v55 = *(a1 + 88);
              *(a1 + 88) = v55 + 1;
            }

            else
            {
              if (v61 != 1935832172)
              {
                goto LABEL_100;
              }

              v43 = cf;
              LOBYTE(theArray[0]) = 0;
              LOBYTE(v70) = 0;
              if (Count >= 1)
              {
                v44 = 0;
                v45 = 0;
                while (1)
                {
                  v46 = CFArrayGetValueAtIndex(v43, v44);
                  IsValueInArrayInDictionary = mv_CheckIfSubTitlesPlayable(a1, CFStringFrom4CC, v46, &v70, theArray);
                  if (IsValueInArrayInDictionary)
                  {
                    goto LABEL_40;
                  }

                  if (LOBYTE(theArray[0]))
                  {
                    goto LABEL_135;
                  }

                  if (v70)
                  {
                    v45 = 1;
                  }

                  if (v39 == ++v44)
                  {
                    goto LABEL_129;
                  }
                }
              }

              v45 = 0;
LABEL_129:
              if (!TrackBoolean)
              {
                goto LABEL_135;
              }

              v55 = *(a1 + 80);
              *(a1 + 80) = v55 + 1;
            }

            if (v55 >= 1 && !*(a1 + 104))
            {
LABEL_39:
              IsValueInArrayInDictionary = FigSignalErrorAt();
              goto LABEL_40;
            }

            v19 = 0;
          }

          else
          {
            if (v61 != 1936684398)
            {
              if (v61 == 1952807028)
              {
                if (CFEqual(CFStringFrom4CC, @"ChapterName"))
                {
                  goto LABEL_135;
                }
              }

              else if (v61 == 1986618469)
              {
                v57 = cf;
                LOBYTE(theArray[0]) = 0;
                LOBYTE(v70) = 0;
                ++*(a1 + 48);
                if (Count >= 1)
                {
                  v40 = 0;
                  v41 = 0;
                  while (1)
                  {
                    v42 = CFArrayGetValueAtIndex(v57, v40);
                    IsValueInArrayInDictionary = mv_CheckIfVideoPresentable(a1, CFStringFrom4CC, v42, a2, a3, a6, theArray, &v70);
                    if (IsValueInArrayInDictionary)
                    {
                      goto LABEL_40;
                    }

                    if (v70)
                    {
                      goto LABEL_135;
                    }

                    if (LOBYTE(theArray[0]))
                    {
                      v41 = 1;
                    }

                    if (v39 == ++v40)
                    {
                      goto LABEL_122;
                    }
                  }
                }

                v41 = 0;
LABEL_122:
                if (TrackBoolean)
                {
                  v56 = *(a1 + 56);
                  *(a1 + 56) = v56 + 1;
                  if (v56 < 1 || *(a1 + 104))
                  {
                    *(a1 + 42) = 1;
                    if (!a6)
                    {
                      *(a1 + 41) = 1;
                    }

                    v19 = 0;
                    *(a1 + 40) = v41;
                    goto LABEL_13;
                  }

                  goto LABEL_39;
                }

LABEL_135:
                v19 = 0;
                goto LABEL_13;
              }

LABEL_100:
              v20 = cf;
              if (v39 < 1)
              {
                v19 = 0;
                if (cf)
                {
                  goto LABEL_14;
                }

                goto LABEL_15;
              }

              v50 = 0;
              while (1)
              {
                LOBYTE(theArray[0]) = 0;
                v51 = CFArrayGetValueAtIndex(v20, v50);
                IsValueInArrayInDictionary = mv_CheckIfOtherMediaTypePlayable(a1, CFStringFrom4CC, v51, theArray);
                if (IsValueInArrayInDictionary)
                {
                  break;
                }

                if (v39 == ++v50)
                {
                  goto LABEL_135;
                }
              }

LABEL_40:
              v19 = IsValueInArrayInDictionary;
              goto LABEL_13;
            }

            v47 = cf;
            LOBYTE(theArray[0]) = TrackBoolean;
            LOBYTE(v70) = 0;
            LOBYTE(v69) = 0;
            ++*(a1 + 64);
            if (Count >= 1)
            {
              v48 = 0;
              v45 = 0;
              while (1)
              {
                v49 = CFArrayGetValueAtIndex(v47, v48);
                IsValueInArrayInDictionary = mv_CheckIfAudioPlayable(a1, CFStringFrom4CC, v49, theArray, &v70, &v69);
                if (IsValueInArrayInDictionary)
                {
                  goto LABEL_40;
                }

                if (v69)
                {
                  goto LABEL_135;
                }

                if (v70)
                {
                  v45 = 1;
                }

                if (v39 == ++v48)
                {
                  TrackBoolean = LOBYTE(theArray[0]);
                  goto LABEL_116;
                }
              }
            }

            v45 = 0;
LABEL_116:
            if (!TrackBoolean)
            {
              goto LABEL_135;
            }

            v19 = 0;
            ++*(a1 + 72);
            *(a1 + 41) = 257;
          }

          *(a1 + 40) = v45;
          goto LABEL_13;
        }

        mv_ValidateTrackWithTrackReader_cold_3(theArray);
      }

      else
      {
        mv_ValidateTrackWithTrackReader_cold_4(theArray);
      }

LABEL_23:
      v19 = LODWORD(theArray[0]);
      goto LABEL_13;
    }

LABEL_12:
    v19 = 4294954514;
    goto LABEL_13;
  }

  if (CFEqual(CFStringFrom4CC, @"ChapterName"))
  {
    goto LABEL_39;
  }

  v19 = 4294954335;
LABEL_13:
  v20 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v20);
    cf = 0;
  }

LABEL_15:
  if (CFStringFrom4CC)
  {
    CFRelease(CFStringFrom4CC);
  }

  return v19;
}

uint64_t mv_IsIntInCFArray(int a1, const __CFArray *a2)
{
  valuePtr = a1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v8.length = CFArrayGetCount(a2);
  v8.location = 0;
  v5 = CFArrayContainsValue(a2, v8, v4);
  CFRelease(v4);
  return v5;
}

uint64_t mv_isMovieFamilyFormatReader(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(FigBaseObject, @"Identifier", *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t mv_CheckIfDroppingFramesEnablesPlayability(uint64_t a1, double a2, double a3)
{
  memset(&v12, 0, sizeof(v12));
  CMTimeMake(&v12, 2, 1);
  if (a2 <= 0.0 && a3 <= 0.0)
  {
    return 0;
  }

  v10 = 0.0;
  v11 = 0.0;
  v9 = v12;
  if (mv_ComputeDroppableFrameRate(a1, &v9, -1, &v11, &v10))
  {
    return 0;
  }

  v7 = a3 > 0.0;
  v8 = a2 > 0.0;
  if (v11 > a2)
  {
    v8 = 0;
  }

  if (v10 > a3)
  {
    v7 = 0;
  }

  return v7 | v8;
}

uint64_t mv_CheckIfDroppingHEVCTemporalLevelsEnablesPlayability(uint64_t a1, double a2, double a3)
{
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&v16, 2, 1);
  theArray = 0;
  if (a2 <= 0.0 && a3 <= 0.0)
  {
    return 0;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8 && !v8(FigBaseObject, @"HEVCTemporalLevelInfoCombinations", *MEMORY[0x1E695E480], &theArray))
  {
    if (!theArray || CFArrayGetCount(theArray) < 1)
    {
      v6 = mv_CheckIfDroppingFramesEnablesPlayability(a1, a2, a3);
      goto LABEL_16;
    }

    v13 = 0.0;
    v14 = 0.0;
    v12 = v16;
    if (!mv_ComputeDroppableFrameRate(a1, &v12, 0, &v14, &v13))
    {
      v9 = a3 > 0.0;
      v10 = a2 > 0.0;
      if (v14 > a2)
      {
        v10 = 0;
      }

      if (v13 > a3)
      {
        v9 = 0;
      }

      v6 = v9 | v10;
      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

uint64_t mv_ValidateAudioCodecsParameterValue(uint64_t a1)
{
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  inSpecifier[0] = a1;
  inSpecifier[1] = 1836069990;
  LODWORD(result) = AudioFormatGetProperty(0x63646370u, 0x10u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (outPropertyData)
  {
    v2 = 0;
  }

  else
  {
    v2 = -12957;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

BOOL mv_IsStringInCFArrayList(const __CFString *a1, CFArrayRef theArray)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if (ValueAtIndex)
    {
      v7 = ValueAtIndex;
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFStringGetTypeID() && CFStringCompare(v7, a1, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  return v4 < i;
}

uint64_t FigMediaValidatorValidateRFC4281Codecs(const __CFString *a1, CFStringRef theString, int a3, const __CFDictionary *a4, int a5, _DWORD *a6)
{
  Length = CFStringGetLength(theString);
  v12 = malloc_type_malloc(Length + 1, 0x8D7B7AF3uLL);
  if (v12)
  {
    v13 = v12;
    v37 = v12;
    if (CFStringGetCString(theString, v12, Length + 1, 0x8000100u))
    {
      __stringp = v13;
      if (*v13 != 34)
      {
LABEL_7:
        if (a6)
        {
          *a6 = 0;
        }

        if (a5)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        v40 = v15;
        v39 = a3;
        while (1)
        {
          v16 = strsep(&__stringp, ", \t");
          v17 = v16;
          if (!v16)
          {
            goto LABEL_47;
          }

          if (!*v16)
          {
            v17 = 0;
            goto LABEL_47;
          }

          value = 0;
          __s = v16;
          if (!CFDictionaryGetValueIfPresent(a4, @"MIMETypesToTreatAsISOBMFFMediaFormatContainers", &value) || !value || (v18 = CFGetTypeID(value), v18 != CFArrayGetTypeID()) || !mv_IsStringInCFArrayList(a1, value) || !@"video/mp4" || (v19 = CFRetain(@"video/mp4")) == 0)
          {
            v19 = FigFormatReaderUtilityCopyRepresentativeMIMETypeForMIMEType(a1);
            if (!v19 && (!a1 || (v19 = CFRetain(a1)) == 0))
            {
              FigMediaValidatorValidateRFC4281Codecs_cold_2(&v42);
              v22 = 0;
              v17 = v42;
              goto LABEL_46;
            }
          }

          v20 = v19;
          if (a3)
          {
            v42 = 0;
            v21 = strlen(v17);
            v22 = malloc_type_calloc(v21 + 1, 1uLL, 0x100004077774924uLL);
            if (!__s || !*__s)
            {
              FigMediaValidatorValidateRFC4281Codecs_cold_1(&v45);
              v17 = v45;
              goto LABEL_45;
            }

            v23 = strsep(&__s, ".");
            if (!v23)
            {
              v17 = 0;
              goto LABEL_45;
            }

            v24 = v23;
            v25 = strlen(v23);
            mv_ConvertTokenToCString(v24, v25, v22, v21 + 1, &v42);
            v26 = v42;
            if (v42 == 4)
            {
              v27 = bswap32(*v22);
            }

            else
            {
              v27 = 0;
            }

            if (__s)
            {
              v29 = strlen(__s);
              mv_ConvertTokenToCString(__s, v29, v22 + v42 + 1, v21 - v42, 0);
              __s = v22 + v26 + 1;
            }

            v28 = v22;
            a3 = v39;
          }

          else
          {
            v28 = strsep(&__s, ".");
            v22 = 0;
            if (strlen(v28) == 4)
            {
              v27 = bswap32(*v28);
            }

            else
            {
              v27 = 0;
            }
          }

          if (FigCFEqual())
          {
            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 1;
          }

          else if (FigCFEqual())
          {
            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 2;
          }

          else if (FigCFEqual())
          {
            if (!a5)
            {
              v17 = 4294954332;
              goto LABEL_45;
            }

            v30 = __s;
            v31 = v27;
            v32 = 3;
            v33 = 4;
          }

          else
          {
            if (!FigCFEqual())
            {
              LODWORD(v42) = 0;
              v45 = 0;
              v34 = FigFormatReaderUtilityConvertCodecElementsToMediaSubType(v20, v27, v28, __s, 0, &v42, &v45);
              if (v34)
              {
                v17 = 0;
              }

              else
              {
                v17 = 4294954346;
              }

              if (v34)
              {
                if (a4)
                {
                  CFStringFrom4CC = mv_CreateCFStringFrom4CC(v42);
                  v17 = mv_LookupCodecSupport(CFStringFrom4CC, a4);
                  if (CFStringFrom4CC)
                  {
                    CFRelease(CFStringFrom4CC);
                  }
                }
              }

              goto LABEL_45;
            }

            v30 = __s;
            v31 = v27;
            v32 = v40;
            v33 = 8;
          }

          v17 = mv_ValidateRFC4281IdEvaluationFn(v31, v30, v32, v33, a4, a6, 0);
LABEL_45:
          CFRelease(v20);
LABEL_46:
          free(v22);
LABEL_47:
          if (v17 || !__stringp)
          {
            goto LABEL_68;
          }
        }
      }

      __stringp = v13 + 1;
      v14 = strchr(v13 + 1, 34);
      if (v14 && *v14)
      {
        *v14 = 0;
        goto LABEL_7;
      }

      v17 = 4294954344;
    }

    else
    {
      FigMediaValidatorValidateRFC4281Codecs_cold_3(&__s);
      v17 = __s;
    }

LABEL_68:
    free(v37);
  }

  else
  {
    FigMediaValidatorValidateRFC4281Codecs_cold_4(&__s);
    return __s;
  }

  return v17;
}

uint64_t mv_ConvertTokenToCString(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  if (a3)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = result + v5;
        v8 = *(result + v5);
        if (*(result + v5))
        {
          v9 = v6 >= a4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          break;
        }

        if (v8 == 37)
        {
          v10 = v5 + 2;
          if (v5 + 2 < a2 && (v11 = *(v7 + 1), *(v7 + 1)) && (v12 = *(result + v10), *(result + v10)))
          {
            v13 = v11 - 48;
            v14 = v11 - 65;
            if ((v11 - 97) >= 6)
            {
              v15 = -1;
            }

            else
            {
              v15 = v11 - 87;
            }

            v16 = v11 - 55;
            if (v14 > 5)
            {
              v16 = v15;
            }

            if (v13 < 0xA)
            {
              v16 = v13;
            }

            v17 = v12 - 48;
            v18 = v12 - 65;
            if ((v12 - 97) >= 6)
            {
              v19 = -1;
            }

            else
            {
              v19 = v12 - 87;
            }

            v20 = v12 - 55;
            if (v18 > 5)
            {
              v20 = v19;
            }

            if (v17 < 0xA)
            {
              v20 = v17;
            }

            v21 = v20 >= 0;
            if (v20 >= 0)
            {
              v22 = v20 + 16 * v16;
            }

            else
            {
              v22 = 63;
            }

            if (v21)
            {
              v23 = v5 + 2;
            }

            else
            {
              v23 = v5;
            }

            if (v16 >= 0)
            {
              LOBYTE(v8) = v22;
            }

            else
            {
              LOBYTE(v8) = 63;
            }

            if (v16 >= 0)
            {
              v5 = v23;
            }
          }

          else
          {
            LOBYTE(v8) = 63;
          }
        }

        *(a3 + v6++) = v8;
        ++v5;
      }

      while (v5 < a2);
    }

    else
    {
      v6 = 0;
    }

    if (v6 < a4)
    {
      *(a3 + v6) = 0;
      if (!a5)
      {
        return result;
      }

LABEL_46:
      *a5 = v6;
      return result;
    }

    *(a3 + a4 - 1) = 0;
    if (a5)
    {
      v6 = a4 - 1;
      goto LABEL_46;
    }
  }

  return result;
}

uint64_t mv_ValidateRFC4281IdEvaluationFn(signed int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, _DWORD *a6, CFDictionaryRef theDict)
{
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
    mv_ValidateRFC4281IdEvaluationFn_cold_1(&v30, &v31);
    v12 = v31;
    if (!a6)
    {
      return v12;
    }

    goto LABEL_32;
  }

  v27 = a2;
  v28 = 0;
  v23 = a5;
  v24 = a1;
  v25 = a3;
  v10 = &dword_1F0AEB088;
  v11 = 37;
  v26 = a4;
  do
  {
    if (*(v10 - 4) == a1 && (a4 & ~*(v10 - 3)) == 0)
    {
      v31 = 0;
      v14 = *v10;
      LODWORD(v28) = *v10;
      v15 = *(v10 - 1);
      if (v15)
      {
        v12 = v15(&v23, &v29, &v31);
        LODWORD(v15) = v31;
      }

      else
      {
        v12 = 0;
        v29 = v14;
      }

      v13 = v15 | v10[1];
      goto LABEL_18;
    }

    v10 += 6;
    --v11;
  }

  while (v11);
  if (a3 == 2)
  {
    v12 = 0;
    v13 = 4;
LABEL_18:
    v30 = v13;
    goto LABEL_19;
  }

  if ((a4 & 2) != 0)
  {
    goto LABEL_41;
  }

  v12 = 4294954346;
  if (a1 <= 1634743415)
  {
    if (a1 != 1634742376 && a1 != 1634742888)
    {
      v16 = 13416;
LABEL_37:
      if (a1 != (v16 | 0x61700000))
      {
        goto LABEL_19;
      }
    }
  }

  else if (((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0) && ((a1 - 1634759272) > 6 || ((1 << (a1 - 104)) & 0x51) == 0))
  {
    v16 = 13432;
    goto LABEL_37;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_41:
  v12 = 4294954346;
  if (a1 > 1752589104)
  {
    if (a1 <= 1902207855)
    {
      if (a1 > 1885430639)
      {
        if (a1 == 1885430640 || a1 == 1886745441)
        {
          goto LABEL_19;
        }

        v21 = 1902207848;
      }

      else
      {
        if (a1 == 1752589105 || a1 == 1885430115)
        {
          goto LABEL_19;
        }

        v21 = 1885430632;
      }
    }

    else if (a1 <= 1987063864)
    {
      if (a1 == 1902207856 || a1 == 1903522657)
      {
        goto LABEL_19;
      }

      v21 = 1970495843;
    }

    else if (a1 > 2053202799)
    {
      if (a1 == 2053202800)
      {
        goto LABEL_19;
      }

      v21 = 2054517601;
    }

    else
    {
      if (a1 == 1987063865)
      {
        goto LABEL_19;
      }

      v21 = 2053202792;
    }
  }

  else if (a1 > 1635135536)
  {
    if (a1 > 1668641632)
    {
      if (a1 == 1668641633 || a1 == 1684108849)
      {
        goto LABEL_19;
      }

      v21 = 1685481521;
    }

    else
    {
      if (a1 == 1635135537 || a1 == 1667326824)
      {
        goto LABEL_19;
      }

      v21 = 1667326832;
    }
  }

  else
  {
    if ((a1 - 1633772389) <= 0xB && ((1 << (a1 - 101)) & 0x80F) != 0 || a1 == 1633771875)
    {
      goto LABEL_19;
    }

    v21 = 1633772320;
  }

  if (a1 != v21)
  {
    CFStringFrom4CC = mv_CreateCFStringFrom4CC(a1);
    v12 = mv_LookupCodecSupport(CFStringFrom4CC, a5);
    if (CFStringFrom4CC)
    {
      CFRelease(CFStringFrom4CC);
    }
  }

LABEL_19:
  if (!theDict)
  {
    goto LABEL_31;
  }

  if (v30)
  {
    v17 = @"soun";
  }

  else
  {
    if ((v30 & 2) == 0)
    {
      goto LABEL_31;
    }

    v17 = @"vide";
  }

  if (CFDictionaryContainsKey(theDict, v17))
  {
    Value = CFDictionaryGetValue(theDict, v17);
    if (!Value)
    {
      goto LABEL_31;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      goto LABEL_31;
    }

    Value = Mutable;
    CFDictionarySetValue(theDict, v17, Mutable);
    CFRelease(Value);
  }

  if (!mv_IsIntInCFArray(v29, Value))
  {
    FigCFArrayAppendInt32();
  }

LABEL_31:
  if (a6)
  {
LABEL_32:
    *a6 |= v30;
  }

  return v12;
}

uint64_t mv_ValidateRFC4281_avc1_avc3_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 32) == 1635148595 && (*(a1 + 12) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *a1;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    *v13 = 0;
    v10 = 0;
    number = 0;
    v9 = 0;
    if (strlen(v4) == 6 && sscanf(v4, "%x%c", &v15, &v14) == 1)
    {
      HIBYTE(v9) = BYTE2(v15);
      LOBYTE(v9) = v15;
      if (!v5)
      {
LABEL_18:
        v8 = 0;
LABEL_19:
        if (*(a1 + 32) != 1635148595)
        {
          result = 0;
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v6 = sscanf(v4, "%hhu.%hhu%c", &v9 + 1, &v9, &v14);
      if (!v5 || v6 != 2)
      {
        goto LABEL_18;
      }
    }

    result = mv_GetVideoProfileAndLevelConstraints(v5, @"avc1", v13, 0, &v12, &number, &v10, 0);
    if (!result)
    {
      if (!(number | *v13) || !v10)
      {
        goto LABEL_18;
      }

      result = mv_ValidateVideoProfileLevelTier(*v13, number, v10, 0, HIBYTE(v9), v9, 0);
    }

    v8 = result == -16055;
    if (result)
    {
      if (result != -16055)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_21:
  result = CheckVideoCodecAvailable(a1, 0x61766331u);
LABEL_22:
  *a2 = *(a1 + 8);
  return result;
}

uint64_t mv_ValidateRFC4281_hvc1_hev1_evaluation_fn(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 32) == 1751479857 && (*(a1 + 12) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    v10 = 0;
LABEL_45:
    result = CheckVideoCodecAvailable(a1, 0x68766331u);
    goto LABEL_46;
  }

  v7 = *v6;
  if ((v7 - 65) < 3 || (v7 - 48) >= 0xA)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
LABEL_40:
    v10 = 0;
LABEL_41:
    result = v26;
    goto LABEL_34;
  }

  v8 = *a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  theDict = 0;
  *v22 = 0;
  v19 = 0;
  number = 0;
  v18 = 0;
  if (sscanf(v6, "%u.%x.%c%d*", &v24, &v25, &v23, &v24 + 4) != 4)
  {
LABEL_39:
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
    goto LABEL_40;
  }

  if (v23 != 76)
  {
    if (v23 == 72)
    {
      v9 = 1;
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  v9 = 0;
LABEL_13:
  if (!v8)
  {
    v16 = 0;
    v10 = 0;
    goto LABEL_43;
  }

  result = mv_GetVideoProfileAndLevelConstraints(v8, @"hvc1", v22, 0, &theDict, &number, &v19, &v18);
  if (!result)
  {
    if (!theDict || !*v22 || !mv_IsIntInCFArray(v24, *v22))
    {
      goto LABEL_27;
    }

    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v24);
    Value = CFDictionaryGetValue(theDict, v12);
    LOBYTE(v26) = 0;
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    if (v26)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (Value)
    {
      v15 = CFDictionaryGetValue(Value, @"MaxLevel");
      if (v15)
      {
        v19 = v15;
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (!BooleanIfPresent)
    {
LABEL_27:
      if (mv_IsHEVCDecoderHardwareAccelerated_hevcHardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_1();
      }

      if (sHEVCDecoderIsHardwareAccelerated)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    if (number | *v22)
    {
      result = mv_ValidateVideoProfileLevelTier(*v22, number, v19, v18, v24, SHIDWORD(v24), v9);
      goto LABEL_34;
    }

    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v26);
    goto LABEL_41;
  }

  v10 = 0;
LABEL_34:
  v16 = result == -16055;
  if (result)
  {
    if (result != -16055)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_43:
  if (*(a1 + 32) == 1751479857)
  {
    goto LABEL_45;
  }

  result = 0;
  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v10 == 1)
  {
    v17 = 24;
  }

  else
  {
    v17 = 16;
  }

  *a3 |= v17;
  *a2 = *(a1 + 8);
  return result;
}

uint64_t mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 32) == 1685481573 && (*(a1 + 12) & 0xFFFFFFFE) != 2)
  {
    return 4294954340;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
LABEL_54:
    v16 = CheckVideoCodecAvailable(a1, 0x64766831u);
    goto LABEL_55;
  }

  v7 = *a1;
  v30 = 0;
  theArray = 0;
  theDict = 0;
  __stringp = v6;
  v8 = strsep(&__stringp, ".");
  if (!v8 || (v9 = v8, !*v8))
  {
    if (!mv_ValidateRFC4281_dvhe_dvh1_evaluation_fn_cold_1(&__stringp, &v28))
    {
      LODWORD(v7) = 0;
      v16 = v28;
      goto LABEL_51;
    }

    goto LABEL_77;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v8, 0x8000100u);
  v12 = v11;
  if (__stringp)
  {
    v13 = strsep(&__stringp, ".");
    v14 = v13;
    if (v13 && *v13)
    {
      v15 = CFStringCreateWithCString(v10, v13, 0x8000100u);
    }

    else
    {
      v15 = 0;
    }

    if (__stringp || !v12)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (!v11)
    {
      goto LABEL_61;
    }
  }

  if (CFStringGetLength(v12) == 2 && (*v9 - 48) <= 9 && (v9[1] - 48) <= 9 && v15 && CFStringGetLength(v15) == 2 && (*v14 - 48) <= 9 && (v14[1] - 48) <= 9)
  {
    v17 = CFRetain(v12);
    v18 = 0;
LABEL_25:
    v19 = CFRetain(v15);
    CFRelease(v12);
LABEL_26:
    v12 = v15;
    goto LABEL_27;
  }

LABEL_61:
  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  if (v27)
  {
    v16 = v27;
    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    LODWORD(v7) = 0;
    goto LABEL_51;
  }

  if (!v12)
  {
    if (v15)
    {
      v19 = CFRetain(v15);
      v17 = 0;
      v18 = 1;
      goto LABEL_26;
    }

LABEL_77:
    v19 = 0;
    v17 = 0;
    v18 = 1;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_78:
    v16 = 0;
    goto LABEL_79;
  }

  v17 = CFRetain(v12);
  v18 = 1;
  if (v15)
  {
    goto LABEL_25;
  }

  v19 = 0;
LABEL_27:
  CFRelease(v12);
  if (!v7)
  {
    goto LABEL_78;
  }

LABEL_28:
  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"dvh1", &theArray, &v30, &theDict, 0, 0, 0);
  if (VideoProfileAndLevelConstraints)
  {
    v16 = VideoProfileAndLevelConstraints;
LABEL_73:
    LODWORD(v7) = 0;
    goto LABEL_79;
  }

  v7 = theArray;
  if (theArray)
  {
    v33.length = CFArrayGetCount(theArray);
    v33.location = 0;
    if (CFArrayContainsValue(v7, v33, v17) || (v28 = 0, FigCFStringGetCStringPtrAndBufferToFree(), v16 = FigSignalErrorAt(), free(v28), !v16))
    {
      if ((v18 & 1) != 0 || v19 && (v21 = v30) != 0 && (v34.length = CFArrayGetCount(v30), v34.location = 0, CFArrayContainsValue(v21, v34, v19)))
      {
        v16 = 0;
      }

      else
      {
        v28 = 0;
        FigCFStringGetCStringPtrAndBufferToFree();
        v16 = FigSignalErrorAt();
        free(v28);
      }

      if (theDict)
      {
        if (v17)
        {
          v22 = *MEMORY[0x1E695E480];
          IntValue = CFStringGetIntValue(v17);
          v24 = CFStringCreateWithFormat(v22, 0, @"%d", IntValue);
          CFDictionaryGetValue(theDict, v24);
          LOBYTE(v28) = 0;
          FigCFDictionaryGetBooleanIfPresent();
          if (v24)
          {
            CFRelease(v24);
          }
        }
      }

      if (mv_IsHEVCDecoderHardwareAccelerated_hevcHardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_1();
      }

      if (sHEVCDecoderIsHardwareAccelerated)
      {
        LODWORD(v7) = 2;
      }

      else
      {
        LODWORD(v7) = 1;
      }

      if (!v17)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_73;
  }

  mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v28);
  v16 = v28;
LABEL_79:
  if (v17)
  {
LABEL_48:
    CFRelease(v17);
  }

LABEL_49:
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_51:
  if (v16 == -16055)
  {
    goto LABEL_54;
  }

  if (!v16)
  {
    if (*(a1 + 32) != 1685481573)
    {
      v16 = 0;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_55:
  if (v7 == 1)
  {
    v25 = 24;
  }

  else
  {
    v25 = 16;
  }

  *a3 |= v25;
  *a2 = *(a1 + 8);
  return v16;
}

uint64_t mv_ValidateRFC4281_av01_evaluation_fn(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = *(a1 + 24);
  if (!v6)
  {
    v10 = 0;
LABEL_70:
    result = CheckVideoCodecAvailable(a1, 0x61763031u);
    goto LABEL_71;
  }

  v7 = *a1;
  v38 = 0;
  number = 0;
  theDict = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 32;
  v30 = 0;
  v31 = 0;
  v29 = 272;
  v8 = sscanf(v6, "%1u.%2u%c.%2u.%1d.%03x", &v33 + 4, &v33, &v32, &v31, &v30, &v29);
  if (v8 < 4 || HIDWORD(v33) >= 3 || (v31 & 0xFFFFFFFD) != 8 && (HIDWORD(v33) != 2 || v31 != 12))
  {
    goto LABEL_67;
  }

  if (v32 == 77)
  {
    v9 = 0;
  }

  else
  {
    if (v32 != 72)
    {
      goto LABEL_67;
    }

    v9 = 1;
  }

  if (v8 != 4 && v30 >= 2)
  {
    goto LABEL_67;
  }

  if (v8 < 6)
  {
    goto LABEL_33;
  }

  if ((v29 & 0xFFFFFF00) > 0x100 || (v29 & 0xF0u) > 0x10 || (v29 & 0xFu) > 3)
  {
    goto LABEL_67;
  }

  v11 = (v29 & 0xFF0) == 0x110 || (v29 & 0xF) == 0;
  v12 = !v11;
  if ((v29 & 0xFF0) == 0x10 || v12 || v30 && (v29 & 0xFFF) != 0x110)
  {
    goto LABEL_67;
  }

  if (!HIDWORD(v33))
  {
    if ((v29 & 0xFFFFFEFF) != 0)
    {
      goto LABEL_33;
    }

LABEL_67:
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
    v10 = 0;
LABEL_68:
    result = v39;
    goto LABEL_69;
  }

  if (HIDWORD(v33) == 1 && v29 == 256)
  {
    goto LABEL_67;
  }

LABEL_33:
  if (!v7)
  {
    v10 = 0;
    goto LABEL_65;
  }

  result = mv_GetVideoProfileAndLevelConstraints(v7, @"av01", &v38, 0, &theDict, &number, &v35, &v34);
  v10 = 0;
  if (result)
  {
    goto LABEL_69;
  }

  if (!theDict || !v38)
  {
LABEL_57:
    if (!(number | v38))
    {
      mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v39);
      goto LABEL_68;
    }

    result = mv_ValidateVideoProfileLevelTier(v38, number, v35, v34, SHIDWORD(v33), v33, v9);
    if (result)
    {
      goto LABEL_69;
    }

    if (!v10)
    {
      if (mv_IsAV1DecoderHardwareAccelerated_av1HardwareCheckOnce != -1)
      {
        mv_ValidateRFC4281_av01_evaluation_fn_cold_1();
      }

      if (sAV1DecoderIsHardwareAccelerated)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

LABEL_65:
    result = 0;
    goto LABEL_71;
  }

  if (!mv_IsIntInCFArray(SHIDWORD(v33), v38))
  {
    goto LABEL_66;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", HIDWORD(v33));
  Value = CFDictionaryGetValue(theDict, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (!Value)
  {
LABEL_66:
    v10 = 0;
    goto LABEL_57;
  }

  LOBYTE(v39) = 0;
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v39)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (BooleanIfPresent)
  {
    v10 = v18;
  }

  else
  {
    v10 = 0;
  }

  v19 = CFDictionaryGetValue(Value, @"MaxLevel");
  if (v19)
  {
    v35 = v19;
  }

  v20 = CFDictionaryGetValue(Value, @"ChromaSubsampling");
  if (!v20)
  {
    goto LABEL_56;
  }

  v21 = v20;
  v22 = CFStringCreateWithFormat(v14, 0, @"%03x", v29 & 0xFF0 | v30);
  v40.length = CFArrayGetCount(v21);
  v40.location = 0;
  v23 = CFArrayContainsValue(v21, v40, v22);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
LABEL_56:
    v24 = CFDictionaryGetValue(Value, @"ColorDepth");
    if (!v24)
    {
      goto LABEL_57;
    }

    v25 = v24;
    v26 = CFStringCreateWithFormat(v14, 0, @"%02d", v31);
    v41.length = CFArrayGetCount(v25);
    v41.location = 0;
    v27 = CFArrayContainsValue(v25, v41, v26);
    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      goto LABEL_57;
    }
  }

  result = FigSignalErrorAt();
LABEL_69:
  if (result == -16055)
  {
    goto LABEL_70;
  }

LABEL_71:
  if (v10)
  {
    v28 = *a3;
    *a3 |= 0x10u;
    if (v10 == 1)
    {
      *a3 = v28 | 0x18;
    }
  }

  *a2 = 1635135537;
  return result;
}