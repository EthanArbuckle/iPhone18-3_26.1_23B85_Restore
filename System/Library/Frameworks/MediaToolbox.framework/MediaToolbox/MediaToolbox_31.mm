void fbf_ApplyCacheHeaders(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 272);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"ETag");
    if (Value)
    {
      v6 = Value;
      v7 = CFDictionaryGetValue(*(a1 + 272), @"ETag weak");
      if (v7)
      {
        v8 = CFBooleanGetValue(v7);
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        v10 = Mutable;
        if (v8)
        {
          CFStringAppend(Mutable, @"W/");
        }
      }

      else
      {
        v10 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      }

      CFStringAppend(v10, v6);
      CFDictionaryAddValue(a2, @"If-None-Match", v10);
      CFRelease(v10);
    }

    v11 = CFDictionaryGetValue(*(a1 + 272), @"Last-Modified");
    if (v11)
    {

      CFDictionaryAddValue(a2, @"If-Modified-Since", v11);
    }
  }
}

uint64_t fbf_CopyHttpRequestCreateOptionsAndSetNWActivity(uint64_t a1, int a2)
{
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if ((a2 - 2) <= 2)
  {
    v5 = nw_activity_create();
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 600))
      {
        nw_activity_set_parent_activity();
      }

      FigCFDictionarySetValue();
      CFRelease(v6);
    }
  }

  v7 = FigNetworkUrgencyMonitorCopyExpectedProgressTarget(*(a1 + 624));
  if (v7)
  {
    v8 = v7;
    valuePtr = 0;
    CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr);
    FigGetContinuousUpTimeNanoseconds();
    FigCFDictionarySetValue();
    CFRelease(v8);
  }

  return MutableCopy;
}

void fbf_GetResponseProperties(uint64_t a1, void *a2)
{
  v4 = a2[32];
  if (v4)
  {
    a2[32] = 0;
    CFRelease(v4);
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(a1, @"FHRP_HTTPResponseHeaders", v5, a2 + 32);
  }

  v7 = a2[22];
  if (v7)
  {
    a2[22] = 0;
    CFRelease(v7);
  }

  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(a1, @"FHRP_HTTPFinalURL", v5, a2 + 22);
  }

  v9 = a2[17];
  if (v9)
  {
    a2[17] = 0;
    CFRelease(v9);
  }

  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(a1, @"FHRP_RemoteIPAddress", v5, a2 + 17);
  }

  fbf_ReportingAgentSetServerAddress(a2);
}

BOOL fbf_httpRequestHandlesNetworkTransitions(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"FHRP_HandlesNetworkTransitions", *MEMORY[0x1E695E480], &cf);
    v3 = cf;
    v4 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E4D0];
  }

  return v4 == v3;
}

uint64_t fbf_postHostAvailableOnBetterInterfaceNotification(uint64_t a1)
{
  result = FigByteFlumePostHostAvailableOnBetterInterfaceNotification(a1);
  if (result)
  {

    return fbf_ReportingAgentResetErrorStats(a1);
  }

  return result;
}

void fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 432) + 1000000000 >= UpTimeNanoseconds)
  {
    if (dword_1EAF16F58)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(a1 + 432) = UpTimeNanoseconds;
    if (dword_1EAF16F58)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRetainProxyRetain();
    v7 = dispatch_time(0, 1000000000);
    v8 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fbf_checkAndPostHostAvailableOnBetterInterfaceNotificationIfNeeded_block_invoke;
    block[3] = &unk_1E74833B8;
    block[4] = a2;
    dispatch_after(v7, v8, block);
  }
}

void fbf_SetInactivityMonitorTimer(void *a1, uint64_t a2)
{
  fbf_CancelReconnect(a1);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = a1[40];
  a1[59] = UpTimeNanoseconds + a2;
  a1[60] = v5;
  v6 = a1[6];
  v7 = a1[57];

  FigHTTPRescheduleTimer(a2 / 1000000000.0, v6, v7);
}

uint64_t fbf_CreateHTTPRequestFlags(uint64_t a1)
{
  if (*(a1 + 532))
  {
    v1 = 17;
  }

  else
  {
    v1 = 1;
  }

  if (!*(a1 + 248))
  {
    v1 |= 0x40u;
  }

  if (*(a1 + 152))
  {
    v2 = *(a1 + 160);
    if (!v2 || (v3 = *(a1 + 216), v3 > v2))
    {
      v1 |= 0x180u;
      goto LABEL_14;
    }
  }

  else
  {
    v3 = *(a1 + 216);
  }

  if (v3 > 10485760 && *(a1 + 288) > 10240)
  {
    v1 |= 0x100u;
  }

LABEL_14:
  if (*(a1 + 153))
  {
    v1 |= 0x800u;
  }

  if (*(a1 + 154))
  {
    return v1 | 0x1000;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_5_39()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_19()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_15_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, os_log_type_t type, int a27, int a28)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return _os_log_send_and_compose_impl();
}

const __CFString *OUTLINED_FUNCTION_35_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = *(v15 + 256);

  return FigCFHTTPGetContentRangeFromHTTPResponse(v17, 0, 0, &a15, &a14);
}

void OUTLINED_FUNCTION_36_6(uint64_t a1, const void *a2)
{

  CFDictionaryAddValue(v2, a2, v3);
}

CFNumberRef OUTLINED_FUNCTION_39_7(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt64Type, a3);
}

uint64_t FigPlayerStartupTaskGetTypeID()
{
  if (FigPlayerStartupTaskGetTypeID_sRegisterFigPlayerStartupTaskTypeOnce != -1)
  {
    FigPlayerStartupTaskGetTypeID_cold_1();
  }

  return sFigPlayerStartupTaskID;
}

uint64_t registerFigPlayerStartupTaskType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerStartupTaskID = result;
  return result;
}

BOOL FigPlayerStartupTaskDoesAllowStartup(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40) == 1;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigPlayerStartupTaskNotifyOfEvents(uint64_t a1, int a2, uint64_t a3, BOOL *a4)
{
  FigSimpleMutexLock();
  if ((*(a1 + 20) & a2) == 0)
  {
    if (a4)
    {
      *a4 = *(a1 + 40) == 1;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  *(a1 + 40) = 0;
  ++*(a1 + 32);
  *(a1 + 36) = 1;
  FigSimpleMutexUnlock();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    CFRetain(a1);
    (*(a1 + 64))(v9, *(a1 + 32), a3, a1, figPlayerStartupTask_completion);
    FigSimpleMutexLock();
    *(a1 + 36) = 0;
    if (a4)
    {
      *a4 = *(a1 + 40) == 1;
    }

    FigSimpleMutexUnlock();
    CFRelease(v9);
    return 0;
  }

  v10 = FigSignalErrorAtGM();
  figPlayerStartupTask_completionInternal(a1, *(a1 + 32), 1);
  if (a4)
  {
    *a4 = 1;
  }

  return v10;
}

void figPlayerStartupTask_completionInternal(uint64_t a1, int a2, int a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 32) != a2)
  {
LABEL_7:

    FigSimpleMutexUnlock();
    return;
  }

  if (!a3)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (*(a1 + 36))
  {
    v6 = 1;
LABEL_6:
    *(a1 + 40) = v6;
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  *(a1 + 40) = 1;
  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void figPlayerStartupTask_completion(const void *a1, int a2, int a3)
{
  figPlayerStartupTask_completionInternal(a1, a2, a3);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigPlayerStartupTaskCopyRequiredParameters(uint64_t a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v4 = Mutable;
    CFArrayAppendValue(Mutable, @"CurrentRate");
    CFArrayAppendValue(v4, @"PlayImmediately");
    CFArrayAppendValue(v4, @"CoordinationIdentifier");
    CFArrayAppendValue(v4, @"SeekID");
    CFArrayAppendValue(v4, @"SeekTime");
    CFArrayAppendValue(v4, @"CurrentTime");
    result = 0;
    *a2 = v4;
  }

  else
  {
    FigPlayerStartupTaskCopyRequiredParameters_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerStartupTaskCreateWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (!a5)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_7(&v14);
    return v14;
  }

  if (!a4)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_6(&v14);
    return v14;
  }

  if (!a3)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_5(&v14);
    return v14;
  }

  if (FigPlayerStartupTaskGetTypeID_sRegisterFigPlayerStartupTaskTypeOnce != -1)
  {
    FigPlayerStartupTaskGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_4(&v14);
    return v14;
  }

  v8 = Instance;
  if (!a4[1])
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_3(&v14);
LABEL_14:
    v12 = v14;
    CFRelease(v8);
    return v12;
  }

  *(Instance + 48) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v8 + 40) = 1;
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  *(v8 + 72) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  *(v8 + 20) = 7;
  FigCFDictionaryGetInt32IfPresent();
  v10 = FigSimpleMutexCreate();
  *(v8 + 24) = v10;
  if (!v10)
  {
    FigPlayerStartupTaskCreateWithCallbacks_cold_2(&v14);
    goto LABEL_14;
  }

  *(v8 + 56) = *a4;
  v11 = a4[1];
  v12 = 0;
  *(v8 + 64) = v11;
  *a5 = v8;
  return v12;
}

double FigPlayerStartupTask_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigPlayerStartupTask_Finalize(void *a1)
{
  if (a1[3])
  {
    FigSimpleMutexDestroy();
  }

  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }
}

__CFString *FigPlayerStartupTask_CopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlayerStartupTask %p - %@>", a1, a1[9]);
  return Mutable;
}

uint64_t RegisterFigCachedFileByteStreamClass()
{
  CMByteStreamGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t CMByteStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

uint64_t FigCachedFileByteStreamReadAndCreateBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_2(&theBuffer);
    return theBuffer;
  }

  if (!a4)
  {
    FigCachedFileByteStreamReadAndCreateBlockBuffer_cold_1(&theBuffer);
    return theBuffer;
  }

  v10 = DerivedStorage;
  if (*(DerivedStorage + 120))
  {
    theBuffer = 0;
    v11 = *(DerivedStorage + 40);
    if (a2 && v11 <= a3)
    {
      DataLength = 0;
      v13 = 4294954423;
      if (!a5)
      {
        return v13;
      }
    }

    else
    {
      if (a3 + a2 > v11)
      {
        a2 = v11 - a3;
      }

      FigGetUpTimeNanoseconds();
      v13 = FigReadCacheContainerReadBBuf(*(v10 + 24), a3, (a2 + a3), *(v10 + 32), &theBuffer);
      if (theBuffer)
      {
        DataLength = CMBlockBufferGetDataLength(theBuffer);
      }

      else
      {
        DataLength = 0;
      }

      FigGetUpTimeNanoseconds();
      FigByteStreamStatsLogOneRead();
      *a4 = theBuffer;
      if (!a5)
      {
        return v13;
      }
    }

    *a5 = DataLength;
    return v13;
  }

  v14 = *(DerivedStorage + 8);
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    return 4294954514;
  }

  return v15(v14, a2, a3, a4, a5);
}

uint64_t PurgeableVMAllocatorDeallocateCallBack(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8D6C70);
  }

  return result;
}

uint64_t FigReadCacheCopyContainer(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  if (!gFigReadCache)
  {
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v9 = v8;
  if (a2)
  {
    v8[4] = 8;
    *(v8 + 3) = 0;
    v10 = CFRetain(a2);
    v11 = 1;
  }

  else
  {
    v8[4] = 2;
    v13 = CFRetain(a1);
    v10 = 0;
    v11 = 0;
    *(v9 + 3) = v13;
  }

  *(v9 + 4) = v10;
  *(v9 + 40) = v11;
  *(v9 + 6) = a3;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v9);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();
  v14 = *(v9 + 7);
  if (v14)
  {
    v12 = 0;
    *a4 = v14;
  }

  else
  {
    v12 = 4294955044;
  }

  v15 = *(v9 + 3);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(v9 + 4);
  if (v16)
  {
    CFRelease(v16);
  }

  free(v9);
  return v12;
}

uint64_t FigReadCacheContainerShowInterestInCaching(uint64_t a1)
{
  if (a1)
  {
    if (FigAtomicIncrement32() == 1)
    {
      result = 0;
      *(a1 + 153) = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigReadCacheContainerShowInterestInCaching_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t FigReadCacheContainerShowDisinterestInCaching(uint64_t a1)
{
  if (a1)
  {
    result = FigAtomicDecrement32();
    if (result)
    {
      return 0;
    }

    else
    {
      *(a1 + 153) = 1;
    }
  }

  else
  {
    FigReadCacheContainerShowDisinterestInCaching_cold_1(&v3);
    return v3;
  }

  return result;
}

void IssueCacheMissRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
  v6[4] = 3;
  *(v6 + 3) = a1;
  *(v6 + 4) = a3;
  *(v6 + 5) = a2;
  FigSimpleMutexLock();
  IssueFigReadCacheRequest(v6);
  FigSemaphoreWaitRelative();
  FigSimpleMutexUnlock();

  free(v6);
}

uint64_t CMByteStreamReadAndCreateBlockBuffer_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t CMByteStreamRead_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FRCContainerFinalize(uint64_t a1)
{
  *(a1 + 152) = 0;
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    os_release(v3);
    *(a1 + 144) = 0;
    --*(gFigReadCache + 164);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (*(a1 + 16))
  {
    FigSimpleMutexDestroy();
    *(a1 + 16) = 0;
  }

  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

void LoadOneByteStreamForOpenFile(unint64_t a1, char a2)
{
  cf = 0;
  v4 = *(gFigReadCache + 120);
  if (v4)
  {
    while (!*(v4 + 96) || *(v4 + 88) != a1)
    {
      v4 = *(v4 + 136);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    LoadContainerInCache(v4);
  }

  else
  {
LABEL_5:
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &cf);
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }

    CFNumberGetValue(v7, kCFNumberSInt64Type, v8);
    CreateAndLoadNewContainerInCacheAndReturnContainer(0, a1, v8, a2, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t LoadContainerInCache(uint64_t a1)
{
  result = UnlinkContainer(gFigReadCache + 120, a1);
  v3 = gFigReadCache;
  *(a1 + 32) = *(gFigReadCache + 96);
  v4 = *(v3 + 128);
  if (v4)
  {
    *(v4 + 136) = a1;
    *(a1 + 128) = v4;
  }

  else
  {
    *(v3 + 120) = a1;
  }

  *(v3 + 128) = a1;
  ++*(v3 + 136);
  return result;
}

uint64_t CreateAndLoadNewContainerInCacheAndReturnContainer(unint64_t a1, unint64_t a2, __int128 *a3, char a4, uint64_t *a5)
{
  MEMORY[0x19A8D3660](&sRegisterFigReadCacheContainerTypeOnce, RegisterFigReadCacheContainerType);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (!Instance)
  {
    if (!CreateAndLoadNewContainerInCacheAndReturnContainer_cold_2())
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!(a1 | a2))
  {
    if (CreateAndLoadNewContainerInCacheAndReturnContainer_cold_1())
    {
      v11 = 0;
      goto LABEL_11;
    }

LABEL_21:
    CFRelease(v11);
    v11 = 0;
    goto LABEL_22;
  }

  if (a2)
  {
    *(Instance + 40) = 0;
    v12 = CFRetain(a2);
    v13 = 1;
  }

  else
  {
    v14 = CFRetain(a1);
    v12 = 0;
    v13 = 0;
    *(v11 + 40) = v14;
  }

  *(v11 + 88) = v12;
  v15 = *a3;
  v16 = a3[1];
  *(v11 + 80) = *(a3 + 4);
  *(v11 + 48) = v15;
  *(v11 + 64) = v16;
  *(v11 + 96) = v13;
  *(v11 + 144) = 0;
  *(v11 + 16) = FigSimpleMutexCreate();
  *(v11 + 24) = FigSimpleMutexCreate();
  *(v11 + 152) = 1;
  if (AssureContainerFileIsOpen(v11))
  {
    goto LABEL_21;
  }

  v17 = gFigReadCache;
  v18 = *(gFigReadCache + 128);
  if (v18)
  {
    *(v18 + 136) = v11;
    *(v11 + 128) = v18;
  }

  else
  {
    *(gFigReadCache + 120) = v11;
  }

  *(v17 + 128) = v11;
  ++*(v17 + 136);
  *(v11 + 32) = *(v17 + 96);
LABEL_11:
  *(v11 + 153) = a4;
  v19 = gFigReadCache;
  if (!*(gFigReadCache + 144))
  {
    *(gFigReadCache + 144) = v11;
  }

  if (*(v19 + 304))
  {
    PopulateCacheContainer(v11, 0);
    result = 1;
    if (!a5)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_22:
  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_15:
  *a5 = v11;
  return result;
}

uint64_t FreeEntriesInGroup(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(gFigReadCache + 24 * a1 + 192);
  if (v4)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = *(v4 + 8);
      v9 = *(v4 + 88);
      if (v8 != a2)
      {
        if (v8 != v7)
        {
          if (v7)
          {
            FigSimpleMutexUnlock();
          }

          FigSimpleMutexLock();
          v7 = v8;
        }

        CFGetRetainCount(*(v4 + 48));
        v10 = v8 + 26;
        v11 = *(v4 + 56);
        v12 = *(v4 + 64);
        if (v11)
        {
          v10 = (v11 + 64);
        }

        *v10 = v12;
        v13 = (v12 + 56);
        if (!v12)
        {
          v13 = v8 + 28;
        }

        *v13 = v11;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        v14 = v8[30] - 1;
        v8[30] = v14;
        if (!v14 && CFGetRetainCount(v8) <= 1)
        {
          FigSimpleMutexUnlock();
          DeleteCacheContainer(v8);
          v7 = 0;
        }

        RecycleCacheEntry(v4);
        --v3;
      }

      if (v9)
      {
        v15 = v3 == 0;
      }

      else
      {
        v15 = 1;
      }

      v4 = v9;
    }

    while (!v15);
    if (v7)
    {
      FigSimpleMutexUnlock();
    }
  }

  return v3;
}

void DeleteCacheContainer(CFTypeRef cf)
{
  v1 = gFigReadCache;
  v2 = *(cf + 16);
  if (*(gFigReadCache + 144) == cf)
  {
    v3 = *(cf + 16);
    if (!v2)
    {
      v2 = *(cf + 17);
    }

    *(gFigReadCache + 144) = v2;
    v2 = v3;
  }

  v4 = (v1 + 120);
  v5 = *(cf + 17);
  if (v2)
  {
    v4 = (v2 + 136);
  }

  *v4 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v1;
  }

  *(v6 + 128) = v2;
  *(cf + 16) = 0;
  *(cf + 17) = 0;
  --*(v1 + 136);
  CFRelease(cf);
}

double RecycleCacheEntry(uint64_t a1)
{
  if (*a1 == 1)
  {
    FigAtomicDecrement32();
  }

  MoveToVGroup(a1, 4u, 1);
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void ScanForAbandonedEntries()
{
  if (gFigReadCache)
  {
    if (*(gFigReadCache + 176))
    {
      for (i = *(gFigReadCache + 120); i; i = i[17])
      {
        FigSimpleMutexLock();
        if (CFGetRetainCount(i) <= 1)
        {
          for (j = i[13]; j; j = *(j + 64))
          {
            if (*(j + 72) && CFGetRetainCount(*(j + 48)) == 1 && *(j + 72) != 3)
            {
              MoveToVGroup(j, 3u, 1);
              if (*(j + 96))
              {
                *(j + 96) = 0;
                FigAtomicDecrement32();
              }
            }
          }
        }

        FigSimpleMutexUnlock();
      }
    }
  }
}

void *OUTLINED_FUNCTION_1_52()
{

  return malloc_type_calloc(1uLL, 0x40uLL, 0x1062040E84F1957uLL);
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{

  return FigReadCacheInitialize(a1, 64, 0x40000u);
}

uint64_t figXMLEnsureLibraryIsInitialized()
{
  MEMORY[0x19A8D3660](&figXMLEnsureLibraryIsInitialized_sFigLibXMLLoadOnce, initLibXMLLibrary);
  if (off_1ED4CA830)
  {
    v0 = s_ps_xmlBufferContent == 0;
  }

  else
  {
    v0 = 1;
  }

  v22 = v0 || s_ps_xmlBufferCreate == 0 || s_ps_xmlBufferFree == 0 || s_ps_xmlBufferLength == 0 || off_1ED4CA838 == 0 || _MergedGlobals_41 == 0 || s_ps_xmlFreeNode == 0 || off_1ED4CA840 == 0 || off_1ED4CA848 == 0 || off_1ED4CA850 == 0 || s_ps_xmlNodeAddContent == 0 || s_ps_xmlNodeGetContent == 0 || off_1ED4CA858 == 0 || s_ps_xmlReadFile == 0 || off_1ED4CA818 == 0 || qword_1ED4CA828 == 0 || off_1ED4CA820 == 0 || s_ps_xmlReadMemory == 0 || s_ps_xmlSaveClose == 0 || s_ps_xmlSaveDoc == 0 || s_ps_xmlSaveToBuffer == 0 || s_ps_xmlStrEqual == 0;
  return (v22 << 31 >> 31);
}

uint64_t ps_writeXMLDocToFileAtomically(const __CFURL *a1, const __CFString *a2, uint64_t a3)
{
  if (figXMLEnsureLibraryIsInitialized())
  {
    v6 = 0;
    v12 = 0xFFFFFFFFLL;
LABEL_30:
    FigFileForkClose();
    goto LABEL_16;
  }

  if (!a1)
  {
    ps_writeXMLDocToFileAtomically_cold_10(&v14);
LABEL_22:
    v6 = 0;
LABEL_29:
    v12 = v14;
    goto LABEL_30;
  }

  if (!a2)
  {
    ps_writeXMLDocToFileAtomically_cold_9(&v14);
    goto LABEL_22;
  }

  v6 = s_ps_xmlBufferCreate();
  if (!v6)
  {
    ps_writeXMLDocToFileAtomically_cold_8(&v14);
    goto LABEL_29;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    ps_writeXMLDocToFileAtomically_cold_7(&v14);
    goto LABEL_29;
  }

  v8 = s_ps_xmlSaveToBuffer(v6, CStringPtrAndBufferToFree, 33);
  if (!v8)
  {
    ps_writeXMLDocToFileAtomically_cold_6(&v14);
    goto LABEL_29;
  }

  v9 = v8;
  if (s_ps_xmlSaveDoc(v8, a3) == -1)
  {
    ps_writeXMLDocToFileAtomically_cold_5(&v14);
    goto LABEL_29;
  }

  if (s_ps_xmlSaveClose(v9) == -1)
  {
    ps_writeXMLDocToFileAtomically_cold_4(&v14);
    goto LABEL_29;
  }

  s_ps_xmlBufferLength(v6);
  if (!s_ps_xmlBufferContent(v6))
  {
    ps_writeXMLDocToFileAtomically_cold_3(&v14);
    goto LABEL_29;
  }

  if (FigFileCreateTempFileAtURL())
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

  if (FigFileForkWrite())
  {
    ps_writeXMLDocToFileAtomically_cold_1();
    v11 = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, a1, a2, 0);
    if (v11)
    {
      FigFileRename();
    }

    else
    {
      ps_writeXMLDocToFileAtomically_cold_2();
    }
  }

  FigFileForkClose();
  v12 = FigFileDeleteFile();
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_16:
  free(0);
  if (v6)
  {
    s_ps_xmlBufferFree(v6);
  }

  return v12;
}

uint64_t FigXMLNodeWriteXMLFileFromBlockBufferAtURL(OpaqueCMBlockBuffer *a1, uint64_t a2, const __CFURL *a3)
{
  if (_os_feature_enabled_impl())
  {
    cf = 0;
    PathComponent = CFURLCopyLastPathComponent(a3);
    if (PathComponent)
    {
      v6 = PathComponent;
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFURLCreateCopyDeletingLastPathComponent(AllocatorForMedia, a3);
      if (v8)
      {
        v9 = v8;
        v10 = FigXMLServiceReadFromMemoryAndCopyParsedXML(v8, v6, a1, &cf);
        if (!v10)
        {
          v10 = FigXMLNodeWriteToFilePath(cf, a3);
        }

        v11 = v10;
        CFRelease(v6);
        CFRelease(v9);
        if (cf)
        {
          CFRelease(cf);
        }

        return v11;
      }

      FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_1(v6, &v14);
    }

    else
    {
      FigXMLNodeWriteXMLFileFromBlockBufferAtURL_cold_2(&v14);
    }

    return v14;
  }

  return FigXMLWriteFileDirectlyFromBlockBufferAtURL(a1, a3);
}

uint64_t FigXMLNodeCreateNode(uint64_t a1, const void *a2, void *a3)
{
  cf = 0;
  if (!a2)
  {
    FigXMLNodeCreateNode_cold_1(&v10);
    return v10;
  }

  v5 = figXMLNodeCreateNode(a1, &cf);
  if (v5)
  {
    v7 = cf;
    if (!cf)
    {
      return v5;
    }

LABEL_7:
    CFRelease(v7);
    return v5;
  }

  v6 = CFRetain(a2);
  v7 = cf;
  *(cf + 2) = v6;
  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = 0;
  *a3 = v7;
  return v5;
}

uint64_t figXMLNodeCreateNode(uint64_t a1, void *a2)
{
  if (FigXMLNodeGetTypeID_once != -1)
  {
    figXMLNodeCreateNode_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[1] = 0u;
    Instance[2] = 0u;
    if (a2)
    {
      v4 = 0;
      *a2 = Instance;
    }

    else
    {
      CFRelease(Instance);
      return 0;
    }
  }

  else
  {
    figXMLNodeCreateNode_cold_2(&v6);
    return v6;
  }

  return v4;
}

uint64_t FigXMLNodeCreateChildNode(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigXMLNodeCreateChildNode_cold_1(&v14);
    return v14;
  }

  v7 = figXMLNodeCreateNode(a1, &cf);
  if (v7)
  {
    v10 = v7;
    v11 = cf;
  }

  else
  {
    v8 = CFRetain(a3);
    v9 = cf;
    *(cf + 2) = v8;
    v10 = figXMLNodeAddChild(a2, v9);
    v11 = cf;
    if (a4 && !v10)
    {
      *a4 = cf;
      return v10;
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

uint64_t figXMLNodeAddChild(uint64_t a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      Mutable = *(a1 + 40);
      if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 40) = Mutable) != 0))
      {
        CFArrayAppendValue(Mutable, value);
        return 0;
      }

      else
      {
        figXMLNodeAddChild_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      figXMLNodeAddChild_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    figXMLNodeAddChild_cold_3(&v9);
    return v9;
  }
}

uint64_t FigXMLNodeGetTag(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

CFStringRef *FigXMLNodeGetChild(uint64_t a1, const __CFString *a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v4++);
    if (CFStringCompare(a2, ValueAtIndex[2], 0) == kCFCompareEqualTo)
    {
      return ValueAtIndex;
    }
  }

  return 0;
}

const __CFArray *FigXMLNodeGetCountOfChildren(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigXMLNodeGetAllAttributes(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t FigXMLNodeCopyAttributeAsCFString(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  Value = FigCFDictionaryGetValue();
  if (a3 && Value)
  {
    *a3 = CFRetain(Value);
  }

  return 0;
}

uint64_t FigXMLNodeContentSetCFString(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 24);
      *(a1 + 24) = cf;
      CFRetain(cf);
      if (v2)
      {
        CFRelease(v2);
      }

      return 0;
    }

    else
    {
      FigXMLNodeContentSetCFString_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigXMLNodeContentSetCFString_cold_2(&v5);
    return v5;
  }
}

uint64_t FigXMLNodeContentSetInt64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%lld", a2);
    if (v5)
    {
      v6 = v5;
      v7 = FigXMLNodeContentSetCFString(a1, v5);
      CFRelease(v6);
      return v7;
    }

    else
    {
      FigXMLNodeContentSetInt64_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    FigXMLNodeContentSetInt64_cold_2(&v10);
    return v10;
  }
}

uint64_t FigXMLNodeGetContentAsCFString(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t FigXMLNodeGetContentAsInt64(uint64_t a1, void *a2)
{
  if (a1)
  {
    IntValue = CFStringGetIntValue(*(a1 + 24));
    if (a2)
    {
      v4 = IntValue;
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigXMLNodeGetContentAsInt64_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigXMLNodeCopyContentAsCFString(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigXMLNodeCopyContentAsCFString_cold_1(&v7);
    return v7;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = CFRetain(v3);
    v5 = v4;
    if (!a2)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      return 0;
    }

LABEL_8:
    result = 0;
    *a2 = v5;
    return result;
  }

  if (a2)
  {
    v5 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t FigXMLNodeSetAttributes(uint64_t a1, const __CFDictionary *a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Count = CFDictionaryGetCount(a2);
  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, Count, a2);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    *(a1 + 32) = CFRetain(MutableCopy);
    CFRelease(v7);
    return 0;
  }

  else
  {
    FigXMLNodeSetAttributes_cold_1(&v9);
    return v9;
  }
}

uint64_t FigXMLNodeAttributeSetCFString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigXMLNodeAttributeSetCFString_cold_4(&v7);
    return v7;
  }

  if (!a2)
  {
    FigXMLNodeAttributeSetCFString_cold_3(&v7);
    return v7;
  }

  if (!a3)
  {
    FigXMLNodeAttributeSetCFString_cold_2(&v7);
    return v7;
  }

  if (!*(a1 + 32))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 32) = Mutable;
    if (!Mutable)
    {
      FigXMLNodeAttributeSetCFString_cold_1(&v7);
      return v7;
    }
  }

  FigCFDictionarySetValue();
  return 0;
}

uint64_t FigXMLNodeAttributeSetInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%lld", a3);
      if (v7)
      {
        v8 = v7;
        v9 = FigXMLNodeAttributeSetCFString(a1, a2, v7);
        CFRelease(v8);
        return v9;
      }

      else
      {
        FigXMLNodeAttributeSetInt64_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigXMLNodeAttributeSetInt64_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigXMLNodeAttributeSetInt64_cold_3(&v13);
    return v13;
  }
}

uint64_t FigXMLNodeAttributeSetDouble(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v7 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"%f", *&a3);
      if (v7)
      {
        v8 = v7;
        v9 = FigXMLNodeAttributeSetCFString(a1, a2, v7);
        CFRelease(v8);
        return v9;
      }

      else
      {
        FigXMLNodeAttributeSetDouble_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      FigXMLNodeAttributeSetDouble_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    FigXMLNodeAttributeSetDouble_cold_3(&v13);
    return v13;
  }
}

void *initLibXMLLibrary()
{
  result = dlopen("/usr/lib/libxml2.dylib", 6);
  if (result)
  {
    v1 = result;
    off_1ED4CA830 = dlsym(result, "xmlAddChild");
    s_ps_xmlBufferContent = dlsym(v1, "xmlBufferContent");
    s_ps_xmlBufferCreate = dlsym(v1, "xmlBufferCreate");
    s_ps_xmlBufferFree = dlsym(v1, "xmlBufferFree");
    s_ps_xmlBufferLength = dlsym(v1, "xmlBufferLength");
    s_ps_xmlFreeFunc = dlsym(v1, "xmlFree");
    off_1ED4CA838 = *s_ps_xmlFreeFunc;
    _MergedGlobals_41 = dlsym(v1, "xmlFreeDoc");
    s_ps_xmlFreeNode = dlsym(v1, "xmlFreeNode");
    off_1ED4CA840 = dlsym(v1, "xmlGetProp");
    off_1ED4CA848 = dlsym(v1, "xmlNewNode");
    off_1ED4CA850 = dlsym(v1, "xmlNewProp");
    s_ps_xmlNodeAddContent = dlsym(v1, "xmlNodeAddContent");
    s_ps_xmlNodeGetContent = dlsym(v1, "xmlNodeGetContent");
    off_1ED4CA858 = dlsym(v1, "xmlNodeSetContent");
    s_ps_xmlReadFile = dlsym(v1, "xmlReadFile");
    off_1ED4CA818 = dlsym(v1, "xmlNewDoc");
    qword_1ED4CA828 = dlsym(v1, "xmlDocDumpFormatMemory");
    off_1ED4CA820 = dlsym(v1, "xmlDocSetRootElement");
    s_ps_xmlReadMemory = dlsym(v1, "xmlReadMemory");
    s_ps_xmlSaveClose = dlsym(v1, "xmlSaveClose");
    s_ps_xmlSaveDoc = dlsym(v1, "xmlSaveDoc");
    s_ps_xmlSaveToBuffer = dlsym(v1, "xmlSaveToBuffer");
    s_ps_xmlStrEqual = dlsym(v1, "xmlStrEqual");
    result = dlsym(v1, "xmlEncodeEntitiesReentrant");
    off_1ED4CA860 = result;
  }

  return result;
}

uint64_t ps_xmlNodeCopyContentAsCFString(uint64_t a1, CFStringRef *a2)
{
  Content = s_ps_xmlNodeGetContent();
  v4 = Content;
  if (a2)
  {
    if (!Content)
    {
      ps_xmlNodeCopyContentAsCFString_cold_2(&v11);
      return v11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = CFStringCreateWithCString(AllocatorForMedia, v4, 0x8000100u);
    if (v6)
    {
      v7 = 0;
      *a2 = v6;
    }

    else
    {
      ps_xmlNodeCopyContentAsCFString_cold_1(&v10);
      v7 = v10;
    }
  }

  else
  {
    v9 = ps_xmlNodeCopyContentAsCFString_cold_3(Content, &v12);
    v7 = v12;
    if (v9)
    {
      return v7;
    }
  }

  off_1ED4CA838(v4);
  return v7;
}

uint64_t xmlnode_registerClass()
{
  result = _CFRuntimeRegisterClass();
  gFigXMLNodeTypeID = result;
  return result;
}

void xmlNode_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    CFRelease(v5);
  }
}

void OUTLINED_FUNCTION_3_42()
{
  v3 = MEMORY[0x1E695D7F0];
  v4.location = 0;
  v4.length = v1;

  CFArraySortValues(v0, v4, v3, 0);
}

uint64_t OUTLINED_FUNCTION_9_21()
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t OUTLINED_FUNCTION_10_20(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, size_t lengthAtOffsetOut, size_t totalLengthOut, char *dataPointerOut)
{

  return CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
}

void FigCEA608Parser::~FigCEA608Parser(FigCEA608Parser *this)
{
  CEA608Parser::~CEA608Parser(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t FigCEA608CaptionDecoderCreate(int a1, CMFormatDescriptionRef desc, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  if (a4)
  {
    v6 = a3 != 0;
  }

  else
  {
    v6 = 0;
  }

  if ((a3 != 0) != (a4 != 0))
  {
    FigCEA608CaptionDecoderCreate_cold_7(&v15);
    return v15;
  }

  if (!a6)
  {
    FigCEA608CaptionDecoderCreate_cold_6(&v15);
    return v15;
  }

  if (!desc)
  {
    FigCEA608CaptionDecoderCreate_cold_5(&v15);
    return v15;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  if (MediaSubType > 1664561207)
  {
    if (MediaSubType == 1664561208)
    {
      goto LABEL_13;
    }

    v9 = 1882599480;
  }

  else
  {
    if (MediaSubType == 1635017571)
    {
      goto LABEL_13;
    }

    v9 = 1664495672;
  }

  if (MediaSubType == v9 || (fig_log_get_emitter(), v13 = FigSignalErrorAtGM(), !v13))
  {
LABEL_13:
    FigCaptionDecoderGetClassID();
    if (CMDerivedObjectCreate())
    {
      FigCEA608CaptionDecoderCreate_cold_1(&v15);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = DerivedStorage;
      if (!v6 || (*(DerivedStorage + 16) = a3, v12 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v11 + 24) = v12) != 0))
      {
        *bytes = cea608dec_rendererCallback;
        v17 = cf;
        operator new();
      }

      FigCEA608CaptionDecoderCreate_cold_4(&v15);
    }

    return v15;
  }

  return v13;
}

void FigCEA608DecoderFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[10];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[10] = 0;
  }

  *DerivedStorage = 0;
  v2 = DerivedStorage[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  DerivedStorage[1] = 0;
  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *FigCEA608DecoderCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<CEA608CaptionDecoder %p>", a1);
  return Mutable;
}

uint64_t FigCEA608DecoderCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v7 + 120));
      result = 0;
      *a4 = v8;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    FigCEA608DecoderCopyProperty(&v10);
    return v10;
  }

  return result;
}

uint64_t FigCEA608DecoderSetProperty(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigCEA608DecoderSetProperty(&v14);
    return v14;
  }

  v6 = DerivedStorage;
  if (FigCFEqual())
  {
    valuePtr = 0;
    if (a3 && (v7 = CFGetTypeID(a3), v7 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      v8 = valuePtr;
      if ((valuePtr - 5) > 0xFFFFFFFB)
      {
        if (v6[30] != valuePtr)
        {
          v6[30] = valuePtr;
          v9 = v8 & 5;
          v10 = 2 * (((v8 - 2) & 0xFFFFFFFD) == 0);
          if (v9 == 1)
          {
            v11 = 1;
          }

          else
          {
            v11 = v10;
          }

          (*(**v6 + 72))(*v6, v11);
        }

        return 0;
      }

      FigCEA608DecoderSetProperty(&v14);
    }

    else
    {
      FigCEA608DecoderSetProperty(&v14);
    }

    return v14;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigCEA608RenderToTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 32);
  if (!v6)
  {
    return 0;
  }

  dataPointerOut = 0;
  totalLengthOut = 0;
  v7 = *(MEMORY[0x1E695F058] + 16);
  v30[0] = *MEMORY[0x1E695F058];
  v30[1] = v7;
  v29[0] = v30[0];
  v29[1] = v7;
  v8 = MEMORY[0x1E6960C70];
  v28 = **&MEMORY[0x1E6960C70];
  v9 = *(DerivedStorage + 120) - 1;
  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_196E76680[v9];
  }

  CMBlockBufferGetDataPointer(v6, 0, 0, &totalLengthOut, &dataPointerOut);
  if ((*(DerivedStorage + 60) & 0x1D) != 1)
  {
    v12 = *MEMORY[0x1E6960C88];
    a2->epoch = *(MEMORY[0x1E6960C88] + 16);
    *&a2->value = v12;
  }

  if ((~a2->flags & 5) != 0)
  {
    v15 = *(DerivedStorage + 100) / *(DerivedStorage + 92);
    lhs = *a2;
    v25 = *(DerivedStorage + 48);
    CMTimeSubtract(&time, &lhs, &v25);
    v16 = CMTimeGetSeconds(&time) * v15;
    v17 = 2 * v16 + 2;
    if (v16 <= 0.0)
    {
      v17 = 2;
    }

    v14 = *(DerivedStorage + 40);
    if (v17 <= v14 + 2)
    {
      v17 = v14 + 2;
    }

    if (v17 >= totalLengthOut)
    {
      v13 = totalLengthOut;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    v13 = totalLengthOut;
    v14 = *(DerivedStorage + 40);
  }

  if (v14 >= v13)
  {
    v11 = 0;
    v19 = 1;
  }

  else
  {
    do
    {
      time = *(DerivedStorage + 92);
      lhs = *(DerivedStorage + 48);
      currentTimeFromBytePositionFrameRateAndStartTime(&time, &lhs, v14, &v28);
      v11 = CEA608Parser::ProcessCodePair(*(DerivedStorage + 8), dataPointerOut, (DerivedStorage + 40), v13, v10);
      if ((*(**DerivedStorage + 56))() && !*(DerivedStorage + 72) && !*(DerivedStorage + 73) && !v11)
      {
        v18 = *DerivedStorage;
        time = v28;
        (*(*v18 + 216))(v18, 0, &time, v30, v29);
      }

      v14 = *(DerivedStorage + 40);
      v19 = v11 == 0;
    }

    while (v14 < v13 && !v11);
  }

  if ((*(**DerivedStorage + 56))() && *(DerivedStorage + 72) != 0 && v19)
  {
    v20 = *DerivedStorage;
    time = v28;
    (*(*v20 + 216))(v20, 0, &time, v30, v29);
    v11 = 0;
    v21 = totalLengthOut;
  }

  else
  {
    v21 = totalLengthOut;
    if (v11 == -12560)
    {
      v11 = 0;
      if (v13 == totalLengthOut)
      {
        *(DerivedStorage + 40) = v13;
        v21 = v13;
      }
    }
  }

  v22 = *(DerivedStorage + 40);
  if (v22 == v21)
  {
    CFRelease(*(DerivedStorage + 32));
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 40) = 0;
    *(DerivedStorage + 48) = *v8;
    *(DerivedStorage + 64) = *(v8 + 2);
    *(DerivedStorage + 72) = 0;
    if (a3)
    {
      v23 = *v8;
      *(a3 + 16) = *(v8 + 2);
      *a3 = v23;
    }
  }

  else if (a3)
  {
    lhs = *(DerivedStorage + 92);
    v25 = *(DerivedStorage + 48);
    currentTimeFromBytePositionFrameRateAndStartTime(&lhs, &v25, v22, &time);
    *a3 = time;
  }

  return v11;
}

uint64_t FigCEA608ResetAtTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(MEMORY[0x1E695F058] + 16);
  v12[0] = *MEMORY[0x1E695F058];
  v12[1] = v4;
  v11[0] = v12[0];
  v11[1] = v4;
  CEA608Parser::Reset(DerivedStorage[1]);
  (*(**DerivedStorage + 208))();
  if ((*(**DerivedStorage + 56))())
  {
    v5 = *DerivedStorage;
    v9 = *a2;
    v10 = *(a2 + 2);
    (*(*v5 + 216))(v5, 0, &v9, v12, v11);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
    v7 = MEMORY[0x1E6960C70];
    DerivedStorage[4] = 0;
    DerivedStorage[5] = 0;
    *(DerivedStorage + 3) = *v7;
    DerivedStorage[8] = *(v7 + 16);
    *(DerivedStorage + 36) = 0;
  }

  return 0;
}

CMTime *currentTimeFromBytePositionFrameRateAndStartTime@<X0>(CMTime *a1@<X1>, CMTime *a2@<X2>, uint64_t a3@<X0>, CMTime *a4@<X8>)
{
  v10 = **&MEMORY[0x1E6960C70];
  epoch = v10.epoch;
  *&a4->value = *&v10.value;
  a4->epoch = epoch;
  if ((a3 - 0x100000000) <= 0xFFFFFFFEFFFFFFFELL)
  {
    return currentTimeFromBytePositionFrameRateAndStartTime();
  }

  time = *a1;
  CMTimeMultiply(&v10, &time, a3 / 2);
  time = *a2;
  v8 = v10;
  return CMTimeAdd(a4, &time, &v8);
}

uint64_t OUTLINED_FUNCTION_2_53(CFAllocatorRef blockAllocator, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(blockAllocator, a2, blockAllocator, 0, 0, 0, 0, a8);
}

uint64_t FigDiskCacheRepositoryGetTypeID()
{
  if (sRegisterFigDiskCacheRepositoryTypeOnce != -1)
  {
    FigDiskCacheRepositoryGetTypeID_cold_1();
  }

  return sFigDiskCacheRepositoryID;
}

uint64_t RegisterFigDiskCacheRepositoryType()
{
  result = _CFRuntimeRegisterClass();
  sFigDiskCacheRepositoryID = result;
  return result;
}

void fdcr_ReadRepositoryPlist(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = FigCFPropertyListCreateFromFigFileFork();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      if (*(a1 + 128) || *(a1 + 120) != 0.0)
      {
        CFDictionaryRemoveAllValues(*(a1 + 72));
        CFDictionaryRemoveAllValues(*(a1 + 80));
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetInt64IfPresent();
        FigCFDictionaryGetInt64IfPresent();
        *(a1 + 56) = 0;
        Value = CFDictionaryGetValue(v4, @"checkedinlist");
        if (Value)
        {
          CFDictionaryApplyFunction(Value, fdcr_ConvertValueFromCFStringToCFURLApplierFunction, *(a1 + 72));
        }

        if (*(a1 + 112))
        {
          v7 = CFDictionaryGetValue(v4, @"checkedoutlist");
          if (v7)
          {
            CFDictionaryApplyFunction(v7, fdcr_ConvertValueFromCFStringToCFURLApplierFunction, *(a1 + 80));
          }
        }

        *(a1 + 64) = 0;
        if (CFDictionaryGetCount(*(a1 + 104)) < 1)
        {
          CFDictionaryRemoveAllValues(*(a1 + 96));
        }

        else
        {
          Copy = CFDictionaryCreateCopy(v2, *(a1 + 96));
          CFDictionaryApplyFunction(Copy, fdcr_CleanupCacheSizeListApplierFunction, a1);
          if (Copy)
          {
            CFRelease(Copy);
          }
        }

        CFDictionaryApplyFunction(*(a1 + 72), fdcr_UpdateCacheSizeApplierFunction, a1);
        CFDictionaryApplyFunction(*(a1 + 80), fdcr_UpdateCacheSizeApplierFunction, a1);
      }
    }

    CFRelease(v4);
  }
}

uint64_t FigDiskCacheRepositoryExists(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (FigCFURLDoesDirectoryExist())
    {
      FigCFURLGetFileStats();
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigDiskCacheRepositoryExists_cold_1();
  }

  return 0;
}

uint64_t fdcr_CheckInResource(uint64_t a1, const __CFString *a2, const void *a3, void *a4)
{
  v8 = CFDictionaryContainsKey(*(a1 + 80), a2);
  if (v8)
  {
    v11 = fdcr_CopyCheckInIDFromCheckOutID(a2);
    if (!v11)
    {
      fdcr_CheckInResource_cold_1(&v19);
      return v19;
    }

    v9 = v11;
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    if (CFEqual(a3, Value))
    {
      v10 = 0;
    }

    else
    {
      v10 = Value;
    }
  }

  else
  {
    v9 = CFRetain(a2);
    v10 = 0;
  }

  v13 = CFDictionaryGetValue(*(a1 + 72), v9);
  if (v13)
  {
    v15 = v13;
    if (CFEqual(a3, v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  updated = fdcr_UpdateCacheSize();
  if (updated)
  {
    goto LABEL_25;
  }

  if (Int64IfPresent)
  {
    *(a1 + 64) = *(a1 + 64);
  }

  if (v10)
  {
    fdcr_DeleteResource(v10);
  }

  if (v14)
  {
    fdcr_DeleteResource(v14);
  }

  if (v8)
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      CFDictionaryRemoveValue(*(a1 + 96), a2);
      *(a1 + 64) = *(a1 + 64);
    }

    CFDictionaryRemoveValue(*(a1 + 80), a2);
    CFDictionaryRemoveValue(*(a1 + 104), a2);
  }

  CFDictionarySetValue(*(a1 + 72), v9, a3);
  if (!a4)
  {
LABEL_25:
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    updated = 0;
    *a4 = v9;
  }

  return updated;
}

uint64_t fdcr_CheckOutResource(CFDictionaryRef *a1, const void *a2, CFTypeRef *a3, const void **a4)
{
  v14 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1[9], a2);
  if (!Value)
  {
    return 4294954671;
  }

  v9 = Value;
  if (a3)
  {
    *a3 = CFRetain(Value);
  }

  memset(out, 0, sizeof(out));
  memset(v12, 0, 37);
  uuid_generate_random(out);
  uuid_unparse_upper(out, v12);
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s=%@", v12, a2);
  *a4 = v10;
  CFDictionaryAddValue(a1[10], v10, v9);
  CFDictionaryAddValue(a1[13], *a4, v9);
  CFDictionaryRemoveValue(a1[9], a2);
  result = FigCFDictionaryGetInt64IfPresent();
  if (result)
  {
    CFDictionaryRemoveValue(a1[12], a2);
    return FigCFDictionarySetInt64();
  }

  return result;
}

uint64_t FigDiskCacheRepositoryCheckInAndOut(CFDictionaryRef *a1, const __CFString *a2, const void *a3, const void **a4)
{
  cf = 0;
  v16 = 0;
  if (a1 && a2 && a3 && a4)
  {
    FigSimpleMutexLock();
    v8 = FigCFURLCreateDirectory();
    if (v8)
    {
      v9 = v8;
    }

    else if (FigFileForkOpenMainByCFURL())
    {
      v9 = 0;
    }

    else
    {
      fdcr_ReadRepositoryPlist(a1);
      v11 = fdcr_CheckInResource(a1, a2, a3, &cf);
      if (!v11)
      {
        v11 = fdcr_CheckOutResource(a1, cf, 0, a4);
      }

      v12 = v16;
      v13 = CFDictionaryGetCount(a1[10]) == 0;
      v14 = fdcr_WriteRepositoryPlist(a1, v12, 1, v13);
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = v14;
      }

      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }

    return v9;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigDiskCacheRepositoryDelete(CFDictionaryRef *a1, const __CFString *a2)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (FigFileForkOpenMainByCFURL())
    {
      v4 = 0;
    }

    else
    {
      fdcr_ReadRepositoryPlist(a1);
      Value = CFDictionaryGetValue(a1[9], a2);
      if (Value)
      {
        fdcr_DeleteCacheEntry(a1, a2, Value);
        v4 = fdcr_WriteRepositoryPlist(a1, 0, 1, 0);
      }

      else
      {
        if (CFDictionaryGetCount(a1[10]) >= 1)
        {
          CFDictionaryAddValue(a1[11], a2, *MEMORY[0x1E695E4D0]);
        }

        v4 = 0;
      }

      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
    return v4;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fdcr_DeleteCacheEntry(uint64_t a1, const __CFString *a2, const __CFURL *a3)
{
  result = CFDictionaryGetValue(*(a1 + 72), a2);
  if (result)
  {
    fdcr_RemoveFromCacheFileSizeList(a1, a2);
    fdcr_DeleteResource(a3);
    CFDictionaryRemoveValue(*(a1 + 88), a2);
    CFDictionaryRemoveValue(*(a1 + 72), a2);
    return 1;
  }

  return result;
}

uint64_t FigDiskCacheRepositoryReserveBacking(uint64_t a1, const void *a2, uint64_t a3)
{
  theArray = 0;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (CFDictionaryGetValue(*(a1 + 104), a2))
    {
      if (*(a1 + 48) >= a3)
      {
        FigCFDictionaryGetInt64IfPresent();
        v8 = a3 + *(a1 + 64);
        if (v8 > *(a1 + 40) && !FigFileForkOpenMainByCFURL())
        {
          fdcr_ReadRepositoryPlist(a1);
          v10 = fdcr_CopySortedCacheFileListCheckedIn(a1, &theArray);
          if (v10)
          {
            v6 = v10;
            FigFileForkClose();
            goto LABEL_12;
          }

          v11 = *(a1 + 40);
          v12 = v8 - v11;
          if (v12 < 1)
          {
            v13 = 0;
LABEL_23:
            v8 = a3 + *(a1 + 64);
            if (v8 <= v11)
            {
              v6 = 0;
            }

            else
            {
              v6 = 4294954667;
            }
          }

          else
          {
            v13 = 0;
            v14 = 0;
            while (CFArrayGetCount(theArray))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
              if (fdcr_DeleteCacheEntry(a1, *ValueAtIndex, *(ValueAtIndex + 1)))
              {
                v13 = 1;
              }

              v14 += *(ValueAtIndex + 2);
              CFArrayRemoveValueAtIndex(theArray, 0);
              free(ValueAtIndex);
              if (v14 >= v12)
              {
                v11 = *(a1 + 40);
                goto LABEL_23;
              }
            }

            v8 = *(a1 + 64);
            v6 = 4294954667;
          }

          if (v13)
          {
            fdcr_WriteRepositoryPlist(a1, 0, 0, 0);
          }

          FigFileForkClose();
          if (v6)
          {
            goto LABEL_12;
          }
        }

        v6 = FigCFDictionarySetInt64();
        if (!v6)
        {
          *(a1 + 64) = v8;
        }

        goto LABEL_12;
      }

      v6 = 4294954668;
    }

    else
    {
      v6 = 4294954671;
    }

LABEL_12:
    FigSimpleMutexUnlock();
    v7 = theArray;
    goto LABEL_13;
  }

  fig_log_get_emitter();
  v6 = FigSignalErrorAtGM();
  v7 = 0;
LABEL_13:
  fdcr_PurgeFileInfoList(v7);
  return v6;
}

uint64_t fdcr_CopySortedCacheFileListCheckedIn(uint64_t a1, const __CFArray **a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionaryApplyFunction(*(a1 + 72), fdcr_CreateFileInfoFromDictionaryApplierFunction, Mutable);
      v10.length = CFArrayGetCount(v5);
      v10.location = 0;
      CFArraySortValues(v5, v10, fdcr_OlderEntryFirstComparator, 0);
      v6 = 0;
      *a2 = v5;
    }

    else
    {
      fdcr_CopySortedCacheFileListCheckedIn_cold_1(&v8);
      v6 = v8;
    }
  }

  else
  {
    fdcr_CopySortedCacheFileListCheckedIn_cold_2(&v9);
    v6 = v9;
  }

  fdcr_PurgeFileInfoList(0);
  return v6;
}

void fdcr_PurgeFileInfoList(const __CFArray *a1)
{
  if (a1)
  {
    if (CFArrayGetCount(a1) >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
        CFArrayRemoveValueAtIndex(a1, 0);
        free(ValueAtIndex);
      }

      while (CFArrayGetCount(a1) > 0);
    }

    CFRelease(a1);
  }
}

uint64_t FigDiskCacheRepositoryCopyCheckedInIDs(uint64_t a1, CFMutableArrayRef *a2)
{
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    if (FigFileForkOpenMainByCFURL())
    {
      v4 = 0;
      Mutable = 0;
    }

    else
    {
      fdcr_ReadRepositoryPlist(a1);
      v7 = *(a1 + 72);
      if (v7 && CFDictionaryGetCount(v7))
      {
        v8 = *MEMORY[0x1E695E480];
        Count = CFDictionaryGetCount(*(a1 + 72));
        Mutable = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          CFDictionaryApplyFunction(*(a1 + 72), fdcr_CopyKeyIntoArray, Mutable);
          v4 = 0;
        }

        else
        {
          FigDiskCacheRepositoryCopyCheckedInIDs_cold_1(&v10);
          v4 = v10;
        }
      }

      else
      {
        v4 = 0;
        Mutable = 0;
      }

      FigFileForkClose();
    }

    FigSimpleMutexUnlock();
    *a2 = Mutable;
    return v4;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void fdcr_CopyKeyIntoArray(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = CFGetTypeID(a1);
      if (v5 == CFStringGetTypeID())
      {

        CFArrayAppendValue(a3, a1);
      }
    }
  }
}

uint64_t FigDiskCacheRepositoryGetFileSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    FigSimpleMutexLock();
    if (FigCFDictionaryGetInt64IfPresent())
    {
      v3 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v3 = FigSignalErrorAtGM();
    }

    FigSimpleMutexUnlock();
    return v3;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigDiskCacheRepositoryCopyProperty(uint64_t a1, const void *a2, const void *a3, const __CFAllocator *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a3 && a5)
  {
    FigSimpleMutexLock();
    if (CFEqual(a3, @"FigDiskCacheRepository_Size"))
    {
      v15 = 0;
      if (FigCFDictionaryGetInt64IfPresent())
      {
        v10 = 0;
        *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v15);
      }

      else
      {
        fig_log_get_emitter();
        v10 = FigSignalErrorAtGM();
      }

      goto LABEL_21;
    }

    if (!CFEqual(a3, @"FigDiskCacheRepository_LastModifiedDate"))
    {
      v10 = 4294951026;
LABEL_21:
      FigSimpleMutexUnlock();
      return v10;
    }

    v16 = 0;
    v17 = 0;
    v15 = 0;
    if (FigFileForkOpenMainByCFURL())
    {
      goto LABEL_13;
    }

    fdcr_ReadRepositoryPlist(a1);
    if (CFDictionaryGetValue(*(a1 + 72), a2))
    {
      v13 = FigCFURLGetFileStats();
      if (!v13)
      {
        v14 = CFDateCreate(a4, v16 / 1000000000.0 + v15 - *MEMORY[0x1E695E468]);
        if (v14)
        {
          v12 = v14;
          FigFileForkClose();
          goto LABEL_20;
        }

        if (!FigDiskCacheRepositoryCopyProperty_cold_1(&v17, &v15, &v18))
        {
          v10 = v18;
          goto LABEL_21;
        }

LABEL_13:
        v12 = 0;
LABEL_20:
        v10 = 0;
        *a5 = v12;
        goto LABEL_21;
      }

      v10 = v13;
    }

    else
    {
      v10 = 4294954671;
    }

    FigFileForkClose();
    goto LABEL_21;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigDiskCacheRepositoryMakeRoom(uint64_t a1, int a2, void *a3)
{
  theArray = 0;
  v12 = 0;
  if (!a1)
  {
    FigDiskCacheRepositoryMakeRoom_cold_1(&v13);
    v7 = 0;
    v6 = v13;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_16;
  }

  FigSimpleMutexLock();
  if (FigFileForkOpenMainByCFURL())
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    fdcr_ReadRepositoryPlist(a1);
    v6 = fdcr_CopySortedCacheFileListCheckedIn(a1, &theArray);
    if (v6 || !CFArrayGetCount(theArray))
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (fdcr_DeleteCacheEntry(a1, *ValueAtIndex, *(ValueAtIndex + 1)))
        {
          v7 += *(ValueAtIndex + 2);
          v8 = 1;
        }

        CFArrayRemoveValueAtIndex(theArray, 0);
        free(ValueAtIndex);
      }

      while (a2 && CFArrayGetCount(theArray) > 0);
      if (v8)
      {
        fdcr_WriteRepositoryPlist(a1, v12, 0, 0);
      }
    }

    FigFileForkClose();
  }

  FigSimpleMutexUnlock();
  fdcr_PurgeFileInfoList(theArray);
  if (a3)
  {
LABEL_16:
    *a3 = v7;
  }

  return v6;
}

double fdcr_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t fdcr_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
    a1[11] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  result = a1[2];
  if (result)
  {
    result = FigSimpleMutexDestroy();
    a1[2] = 0;
  }

  return result;
}

__CFString *fdcr_CopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigDiskCacheRepository %p repository %@ sizeLimit %llu fileSizeLimit %llu currentSize %llu>", a1, a1[3], a1[5], a1[6], a1[8]);
  return Mutable;
}

const __CFString *fdcr_CopyCheckInIDFromCheckOutID(const __CFString *result)
{
  range.location = 0;
  range.length = 0;
  if (result)
  {
    v1 = result;
    v4.length = CFStringGetLength(result);
    v4.location = 0;
    if (CFStringFindWithOptions(v1, @"=", v4, 0, &range))
    {
      ++range.location;
      Length = CFStringGetLength(v1);
      v5.location = range.location;
      v5.length = Length - range.location;
      range.length = Length - range.location;
      return CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v1, v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fdcr_DeleteResource(const __CFURL *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      result = removefile(buffer, 0, 1u);
      if (result)
      {
        return __error();
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t fdcr_GetDirectoryStats(const __CFURL *a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = buffer;
  v16[1] = 0;
  memset(&v14, 0, sizeof(v14));
  if (a1 && a2 | a3 && CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (stat(buffer, &v14) == -1)
    {
      return *__error();
    }

    else
    {
      v5 = fts_open(v16, 4, 0);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = 0;
        while (1)
        {
          v9 = fts_read(v6);
          if (!v9)
          {
            break;
          }

          v10 = v9;
          if (v9->fts_info == 8)
          {
            fts_namelen = v9->fts_namelen;
            if (fts_namelen < 7 || strncmp(&v9->fts_statp + fts_namelen + 2, ".plist", 6uLL))
            {
              fts_statp = v10->fts_statp;
              v8 += fts_statp->st_size;
              v7 += fts_statp->st_blocks;
            }
          }
        }

        if (a2)
        {
          *a2 = v8;
        }

        if (a3)
        {
          *a3 = v7 << 9;
        }

        fts_close(v6);
        return 0;
      }

      else
      {
        fdcr_GetDirectoryStats_cold_1(&v15);
        return v15;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }
}

void fdcr_CreateFileInfoFromDictionaryApplierFunction(uint64_t a1, uint64_t a2, __CFArray *a3)
{
  if (a3)
  {
    v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600403247B118uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = a1;
      v6[1] = a2;
      if (fdcr_FigCFURLGetFileStats())
      {

        free(v7);
      }

      else
      {

        CFArrayAppendValue(a3, v7);
      }
    }
  }
}

uint64_t fdcr_OlderEntryFirstComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 < v3)
  {
    return -1;
  }

  if (v2 != v3)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = v5 < v6;
  v8 = v5 != v6;
  if (v7)
  {
    return -1;
  }

  else
  {
    return v8;
  }
}

uint64_t fdcr_FigCFURLGetFileStats()
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (fdcr_FigCFURLGetFileStats_sLastStatUptimeNanoseconds + 60000000000 > UpTimeNanoseconds)
  {
    v1 = fdcr_FigCFURLGetFileStats_sNumRecentStatCalls + 1;
  }

  else
  {
    v1 = 0;
  }

  fdcr_FigCFURLGetFileStats_sNumRecentStatCalls = v1;
  fdcr_FigCFURLGetFileStats_sLastStatUptimeNanoseconds = UpTimeNanoseconds;
  if (v1 == 1)
  {
  }

  else if (v1)
  {
    if (v1 > 9)
    {
      if (v1 > 0x63)
      {
        if (v1 > 0x3E7)
        {
        }
      }
    }
  }

  return fdcr_FigCFURLGetFileStats_0_recent_stat_calls();
}

void fdcr_RemoveFromCacheFileSizeList(uint64_t a1, const __CFString *a2)
{
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    v5 = fdcr_CopyCheckInIDFromCheckOutID(a2);
    if (!v5)
    {
      return;
    }

    v4 = v5;
    if (!FigCFDictionaryGetInt64IfPresent())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    v4 = CFRetain(a2);
    if (v4)
    {
LABEL_7:
      *(a1 + 64) = *(a1 + 64);
      CFDictionaryRemoveValue(*(a1 + 96), v4);
LABEL_8:
      CFRelease(v4);
    }
  }
}

void fdcr_ConvertValueFromCFStringToCFURLApplierFunction(const void *a1, const __CFString *a2, __CFDictionary *a3)
{
  v5 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  CFDictionaryAddValue(a3, a1, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

void fdcr_CleanupCacheSizeListApplierFunction(void *key, const __CFNumber *a2, uint64_t a3)
{
  valuePtr = 0;
  if (CFDictionaryGetValue(*(a3 + 104), key))
  {
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    *(a3 + 64) += valuePtr;
  }

  else
  {
    v6 = *(a3 + 96);

    CFDictionaryRemoveValue(v6, key);
  }
}

const void *fdcr_UpdateCacheSizeApplierFunction(void *key, uint64_t a2, uint64_t a3)
{
  result = CFDictionaryGetValue(*(a3 + 104), key);
  if (!result)
  {

    return fdcr_UpdateCacheSize();
  }

  return result;
}

void fdcr_ConvertValueFromCFURLToCFStringApplierFunction(const void *a1, CFURLRef anURL, __CFDictionary *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  CFDictionaryAddValue(a3, a1, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t fdcr_CleanCacheFileList(uint64_t a1, const __CFDictionary *a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionaryApplyFunction(a2, fdcr_CopyNonExistentFileApplierFunction, Mutable);
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          CFDictionaryRemoveValue(a2, ValueAtIndex);
          fdcr_RemoveFromCacheFileSizeList(a1, ValueAtIndex);
        }
      }

      CFRelease(v5);
      return 0;
    }

    else
    {
      fdcr_CleanCacheFileList_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t fdcr_IsResourceInUse(uint64_t a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  p_buffer = &buffer;
  v6 = 0;
  if (a1 && a2)
  {
    FigCFURLGetFileStats();
    if (FigFileForkOpenMainByCFURL())
    {
      v4 = 1;
    }

    else
    {
      FigFileForkClose();
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

void fdcr_CopyFilenameFromPathDictionaryApplierFunction(int a1, CFURLRef url, __CFSet *a3)
{
  if (a3)
  {
    PathComponent = CFURLCopyLastPathComponent(url);
    if (PathComponent)
    {
      v5 = PathComponent;
      CFSetSetValue(a3, PathComponent);

      CFRelease(v5);
    }
  }
}

void fdcr_CopyNonExistentFileApplierFunction(const void *a1, uint64_t a2, __CFArray *a3)
{
  if (!FigFileDoesFileExist())
  {

    CFArrayAppendValue(a3, a1);
  }
}

uint64_t CreateServedCPEProtectorState(uint64_t a1, void *a2)
{
  v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  if (v3)
  {
    v4 = FigOSTransactionCreate();
    *v3 = v4;
    if (v4)
    {
      v5 = 0;
      *a2 = v3;
      v3 = 0;
    }

    else
    {
      CreateServedCPEProtectorState_cold_1(&v7);
      v5 = v7;
    }
  }

  else
  {
    CreateServedCPEProtectorState_cold_2(&v8);
    v5 = v8;
  }

  free(v3);
  return v5;
}

void DisposeServedCPEProtectorState(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      os_release(v2);
    }

    free(a1);
  }
}

uint64_t FigCPEProtectorServerStart()
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

uint64_t OUTLINED_FUNCTION_4_44(xpc_connection_t connection)
{

  return xpc_connection_get_pid(connection);
}

uint64_t FigSamplingEventIdentifierGetTypeID()
{
  if (FigSamplingEventIdentifierGetTypeID_sRegisterSamplingEventIdentifierTypeOnce != -1)
  {
    FigSamplingEventIdentifierGetTypeID_cold_1();
  }

  return FigSamplingEventIdentifierGetTypeID_sSamplingEventIdentifierTypeID;
}

uint64_t __FigSamplingEventIdentifierGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigSamplingEventIdentifierGetTypeID_sSamplingEventIdentifierTypeID = result;
  return result;
}

double samplingEventIdentifier_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void samplingEventIdentifier_finalize(uint64_t a1)
{
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

BOOL samplingEventIdentifier_equal(CMTime *a1, uint64_t a2)
{
  time1 = a1[1];
  v3 = *(a2 + 24);
  return !CMTimeCompare(&time1, &v3) && FigCFEqual() != 0;
}

CFStringRef samplingEventIdentifier_copyDebugDesc(CMTime *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  time = a1[1];
  Seconds = CMTimeGetSeconds(&time);
  return CFStringCreateWithFormat(v2, 0, @"<FigSamplingEventIdentifier %p retainCount: %d> pts: %.3f, samples: %@", a1, v3, *&Seconds, a1->epoch);
}

uint64_t FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID()
{
  if (FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sRegisterReceiverPlaybackStartupPreventionAssertionTypeOnceToken != -1)
  {
    FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_cold_1();
  }

  return FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sReceiverPlaybackStartupPreventionAssertionTypeID;
}

uint64_t __FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sReceiverPlaybackStartupPreventionAssertionTypeID = result;
  return result;
}

void *receiverPlaybackStartupPreventionAssertion_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void receiverPlaybackStartupPreventionAssertion_finalize(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __receiverPlaybackStartupPreventionAssertion_finalize_block_invoke;
  block[3] = &__block_descriptor_tmp_21_0;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 16) = 0;
  }

  _Block_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

CFStringRef receiverPlaybackStartupPreventionAssertion_copyDebugDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverPlaybackStartupPreventionAssertion %p> retainCount: %d, desc: %@", a1, v3, a1[2]);
}

uint64_t FigVideoReceiverForBufferDeliveryCreateLocal(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  FigVideoReceiverGetClassID();
  IsReadyToActivateCallack = CMDerivedObjectCreate();
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = Mutable;
  if (!Mutable)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_14(&timebaseTime);
    goto LABEL_57;
  }

  v8 = dispatch_queue_create("com.apple.coremedia.videoreceiver.callbackQ", 0);
  *(DerivedStorage + 264) = v8;
  if (!v8)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_13(&timebaseTime);
    goto LABEL_57;
  }

  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 632) = v9;
  if (!v9)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_12(&timebaseTime);
    goto LABEL_57;
  }

  *(DerivedStorage + 624) = 0;
  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 304) = v10;
  if (!v10)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_11(&timebaseTime);
    goto LABEL_57;
  }

  v11 = FigSimpleMutexCreate();
  *(DerivedStorage + 336) = v11;
  if (!v11)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_10(&timebaseTime);
    goto LABEL_57;
  }

  v12 = FigSimpleMutexCreate();
  *(DerivedStorage + 440) = v12;
  if (!v12)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_9(&timebaseTime);
    goto LABEL_57;
  }

  if (vr_copyGlobalNotificationQueue_sCommonVideoReceiverNotificationQueueInitOnce != -1)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_1();
  }

  v13 = vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue;
  if (vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue)
  {
    *(DerivedStorage + 600) = vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue;
    dispatch_retain(v13);
  }

  else if (!FigVideoReceiverForBufferDeliveryCreateLocal_cold_2())
  {
    goto LABEL_57;
  }

  values = 0;
  IsReadyToActivateCallack = FigDataChannelGroupCreateForUseCase(a1, 0, &values);
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  v14 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 288) = v14;
  if (values)
  {
    CFRelease(values);
    v14 = *(DerivedStorage + 288);
  }

  if (!v14)
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_8(&timebaseTime);
    goto LABEL_57;
  }

  IsReadyToActivateCallack = FigImageQueueDisplayCountHistory_Create((DerivedStorage + 344));
  if (IsReadyToActivateCallack)
  {
    goto LABEL_40;
  }

  FigImageQueueDisplayCountHistory_StartTracingDisplayCount(*(DerivedStorage + 344), 0, "fvr");
  v15 = CMBaseObjectGetDerivedStorage();
  v16 = *MEMORY[0x1E695E480];
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    value_low = 4294951726;
    goto LABEL_34;
  }

  v18 = LoggingIdentifierOfLength;
  v19 = CFStringCreateWithFormat(v16, 0, @"B/%@", LoggingIdentifierOfLength);
  if (!v19)
  {
    value_low = 4294951726;
    goto LABEL_33;
  }

  v20 = v19;
  CString = CFStringGetCString(v19, (v15 + 228), 16, 0x600u);
  CFRelease(v18);
  if (!CString)
  {
    value_low = 4294951720;
    v18 = v20;
LABEL_33:
    CFRelease(v18);
    goto LABEL_34;
  }

  CFRelease(v20);
  v22 = MEMORY[0x1E6960C70];
  v37 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 360) = *MEMORY[0x1E6960C70];
  v23 = *(v22 + 16);
  *(DerivedStorage + 376) = v23;
  v24 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 16) = v24;
  if (v24)
  {
    v25 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 24) = v25;
    if (v25)
    {
      v26 = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 32) = v26;
      if (v26)
      {
        *(DerivedStorage + 40) = 1;
        *(DerivedStorage + 88) = 0;
        *(DerivedStorage + 92) = v37;
        *(DerivedStorage + 108) = v23;
        *(DerivedStorage + 116) = v37;
        *(DerivedStorage + 132) = v23;
        v27 = dispatch_queue_create("com.apple.coremedia.videoreceiver", 0);
        *(DerivedStorage + 144) = v27;
        if (v27)
        {
          HostTimeClock = CMClockGetHostTimeClock();
          IsReadyToActivateCallack = CMTimebaseCreateWithSourceClock(v16, HostTimeClock, (DerivedStorage + 56));
          if (!IsReadyToActivateCallack)
          {
            v29 = *(DerivedStorage + 56);
            *&timebaseTime.value = *MEMORY[0x1E6960CC0];
            v30 = *(MEMORY[0x1E6960CC0] + 16);
            timebaseTime.epoch = v30;
            v36 = *&timebaseTime.value;
            *&immediateSourceTime.value = *&timebaseTime.value;
            immediateSourceTime.epoch = v30;
            IsReadyToActivateCallack = CMTimebaseSetRateAndAnchorTime(v29, 1.0, &timebaseTime, &immediateSourceTime);
            if (!IsReadyToActivateCallack)
            {
              v31 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              *DerivedStorage = v31;
              if (v31)
              {
                IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerCreate(a1, *(DerivedStorage + 144), *(DerivedStorage + 56), 0, (DerivedStorage + 48));
                if (!IsReadyToActivateCallack)
                {
                  v32 = *(DerivedStorage + 48);
                  *&timebaseTime.value = v36;
                  timebaseTime.epoch = v30;
                  IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v32, &timebaseTime, videoReceiver_schedulerDidRequestConfigurationActivation, cf);
                  if (!IsReadyToActivateCallack)
                  {
                    IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), videoReceiver_schedulerDidRemoveConfigurationCallback, cf);
                    if (!IsReadyToActivateCallack)
                    {
                      if (dword_1ED4CBE90)
                      {
                        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      *(DerivedStorage + 152) = 0;
                      *(DerivedStorage + 156) = v37;
                      *(DerivedStorage + 172) = v23;
                      *(DerivedStorage + 180) = v37;
                      *(DerivedStorage + 196) = v23;
                      *(DerivedStorage + 204) = v37;
                      *(DerivedStorage + 220) = v23;
                      *(DerivedStorage + 480) = 1;
                      *(DerivedStorage + 500) = 0;
                      *(DerivedStorage + 484) = 0u;
                      *(DerivedStorage + 504) = 1000000000;
                      *(DerivedStorage + 512) = 0;
                      *(DerivedStorage + 520) = 1;
                      *(DerivedStorage + 540) = 0;
                      *(DerivedStorage + 524) = 0u;
                      *(DerivedStorage + 544) = 1000000000;
                      *(DerivedStorage + 552) = 0;
                      *(DerivedStorage + 560) = 1;
                      *(DerivedStorage + 580) = 0;
                      *(DerivedStorage + 564) = 0u;
                      *(DerivedStorage + 584) = 1000000000;
                      *(DerivedStorage + 592) = 3;
                      if (*MEMORY[0x1E695FF58] == 1)
                      {
                        strncpy(&timebaseTime, (DerivedStorage + 228), 8uLL);
                        kdebug_trace();
                      }

                      value_low = 0;
                      *a3 = cf;
                      return value_low;
                    }
                  }
                }

                goto LABEL_40;
              }

              FigVideoReceiverForBufferDeliveryCreateLocal_cold_3(&timebaseTime);
              goto LABEL_57;
            }
          }

LABEL_40:
          value_low = IsReadyToActivateCallack;
          goto LABEL_34;
        }

        FigVideoReceiverForBufferDeliveryCreateLocal_cold_4(&timebaseTime);
      }

      else
      {
        FigVideoReceiverForBufferDeliveryCreateLocal_cold_5(&timebaseTime);
      }
    }

    else
    {
      FigVideoReceiverForBufferDeliveryCreateLocal_cold_6(&timebaseTime);
    }
  }

  else
  {
    FigVideoReceiverForBufferDeliveryCreateLocal_cold_7(&timebaseTime);
  }

LABEL_57:
  value_low = LODWORD(timebaseTime.value);
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void videoReceiver_schedulerDidRequestConfigurationActivation(int a1, int a2, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == FigVideoReceiverGetTypeID()))
  {
    CMBaseObjectGetDerivedStorage();

    videoReceiver_activateReceiverConfigurationOnSyncQueue(cf);
  }

  else
  {
    videoReceiver_schedulerDidRequestConfigurationActivation_cold_1();
  }
}

void videoReceiver_schedulerDidRemoveConfigurationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() && !FigCFEqual())
  {

    videoReceiver_announceRemovalOfConfiguration(a3, a2);
  }
}

uint64_t FigVideoReceiverForBufferDeliveryCopyTaggedBufferGroupForHostTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7, CFTypeRef *a8)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v17 = *a2;
    v18 = *(a2 + 2);
    return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v17, a3, a4, a5, a6, a7, a8);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t FigVideoReceiverIsForBufferDelivery(uint64_t result)
{
  if (result)
  {
    FigVideoReceiverGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &kFigVideoReceiverForBufferDeliveryVTable;
    }
  }

  return result;
}

uint64_t videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(const void *a1, uint64_t a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7, CFTypeRef *a8)
{
  v125 = *MEMORY[0x1E69E9840];
  memset(cf, 0, sizeof(cf));
  v78 = *MEMORY[0x1E6960C70];
  v88 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v89 = v8;
  v86 = 0;
  v87 = 0;
  if (!a1 || (v15 = CFGetTypeID(a1), v15 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_4(time1);
LABEL_3:
    v9 = *time1;
    goto LABEL_70;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_3(time1);
    goto LABEL_3;
  }

  if (!a4)
  {
    videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_cold_2(time1);
    goto LABEL_3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(v99) = 0;
  LOBYTE(v95) = 0;
  LOBYTE(v91) = 0;
  v107 = v78;
  v108 = v8;
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v74 = a4;
  v75 = a6;
  v16 = 0;
  v17 = 0;
  *&time1[1] = v78;
  *&time1[17] = v8;
  *&cf[8] = *time1;
  *&cf[17] = *&time1[9];
  v73 = v8;
  if (dword_1ED4CBE90 >= 3)
  {
    LODWORD(v107) = 0;
    v103[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = v91;
    v16 = v95;
  }

  v19 = a8;
  time2 = *a2;
  time1[0] = v99;
  time1[1] = v16;
  time1[2] = v17;
  *&time1[3] = *&cf[8];
  *&time1[12] = *&cf[17];
  v20 = a7;
  v21 = a7;
  v22 = v17;
  v23 = v16;
  v24 = videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForHostTimeInternal(a1, &time2, time1, cf, &v88, &v87, v20);
  if (!v24)
  {
    v51 = DerivedStorage;
    v31 = &_MergedGlobals_89;
    v36 = v19;
    v38 = a1;
    if (*(DerivedStorage + 480) && fvr_isAllowedToLog(DerivedStorage + 480, 0) && dword_1ED4CBE90)
    {
      LODWORD(v107) = 0;
      v103[0] = OS_LOG_TYPE_DEFAULT;
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v53 = v107;
      if (os_log_type_enabled(v52, v103[0]))
      {
        v54 = v53;
      }

      else
      {
        v54 = v53 & 0xFFFFFFFE;
      }

      if (v54)
      {
        v55 = CMBaseObjectGetDerivedStorage() + 228;
        *time1 = *a2;
        *&time1[16] = *(a2 + 16);
        Seconds = CMTimeGetSeconds(time1);
        v57 = *(DerivedStorage + 500);
        LODWORD(time2.value) = 136316162;
        *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 2082;
        *v111 = v55;
        *&v111[8] = 2048;
        *&v111[10] = Seconds;
        v31 = &_MergedGlobals_89;
        *&v111[18] = 1024;
        *&v111[20] = v57;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v51 = DerivedStorage;
    }

    v66 = *(v51 + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_block_invoke;
    block[3] = &__block_descriptor_tmp_88;
    v81 = 0;
    v82 = v23;
    v83 = v22;
    *v84 = *&cf[8];
    *&v84[9] = *&cf[17];
    *&v84[25] = v88;
    v85 = v89;
    block[4] = v51;
    block[5] = *cf;
    block[6] = v87;
    block[7] = v86;
    dispatch_sync(v66, block);
    v30 = a6;
    goto LABEL_56;
  }

  v9 = v24;
  if (v19)
  {
    v25 = &v86;
  }

  else
  {
    v25 = 0;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  *&v107 = 0;
  *(&v107 + 1) = &v107;
  v108 = 0x2000000000;
  v109 = 0;
  *v103 = 0;
  v104 = v103;
  v105 = 0x2000000000;
  v106 = 0;
  time2.value = 0;
  *&time2.timescale = &time2;
  time2.epoch = 0x3000000000;
  *v111 = v78;
  *&v111[16] = v73;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2000000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2000000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2000000000;
  v94 = 0;
  v27 = *(v26 + 144);
  *time1 = MEMORY[0x1E69E9820];
  *&time1[8] = 0x40000000;
  *&time1[16] = __videoReceiver_copyCachedTaggedBufferGroupAndRelatedObjectsIfAvailable_block_invoke;
  *&time1[24] = &unk_1E7483A08;
  v115 = &v107;
  v116 = v103;
  p_time2 = &time2;
  v118 = &v99;
  v121 = v26;
  v122 = v21;
  v28 = a1;
  v123 = a1;
  v124 = v25;
  v119 = &v95;
  v120 = &v91;
  dispatch_sync(v27, time1);
  v29 = v104;
  v30 = v75;
  v31 = &_MergedGlobals_89;
  if (*(*(&v107 + 1) + 24))
  {
    v32 = *(v104 + 3);
    *(v104 + 3) = 0;
    v88 = *(*&time2.timescale + 24);
    v89 = *(*&time2.timescale + 40);
    *cf = v32;
    v87 = v100[3];
    v100[3] = 0;
    if (v21)
    {
      v33 = v96;
      *v21 = v96[3];
      v33[3] = 0;
    }

    if (v19)
    {
      v86 = v92[3];
      v92[3] = 0;
    }
  }

  v34 = *(v29 + 3);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = v100[3];
  v36 = v19;
  if (v35)
  {
    CFRelease(v35);
  }

  v37 = v96[3];
  v38 = v28;
  if (v37)
  {
    CFRelease(v37);
  }

  v39 = v92[3];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(*(&v107 + 1) + 24);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&time2, 8);
  _Block_object_dispose(v103, 8);
  _Block_object_dispose(&v107, 8);
  if (v40)
  {
    isAllowedToLog = fvr_isAllowedToLog(DerivedStorage + 480, 1);
    v42 = dword_1ED4CBE90;
    if (!isAllowedToLog || !dword_1ED4CBE90)
    {
      goto LABEL_57;
    }

    LODWORD(v107) = 0;
    v103[0] = OS_LOG_TYPE_DEFAULT;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v44 = v107;
    if (os_log_type_enabled(v43, v103[0]))
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 & 0xFFFFFFFE;
    }

    if (v45)
    {
      v46 = CMBaseObjectGetDerivedStorage() + 228;
      *time1 = *a2;
      *&time1[16] = *(a2 + 16);
      v47 = CMTimeGetSeconds(time1);
      *time1 = v88;
      *&time1[16] = v89;
      v48 = CMTimeGetSeconds(time1);
      v49 = *(DerivedStorage + 496);
      v50 = "logs skipped ";
      LODWORD(time2.value) = 136316930;
      *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
      LOWORD(time2.flags) = 2048;
      if (!v49)
      {
        v50 = "";
      }

      *(&time2.flags + 2) = v38;
      HIWORD(time2.epoch) = 2082;
      *v111 = v46;
      *&v111[8] = 2048;
      *&v111[10] = v47;
      *&v111[18] = 1024;
      *&v111[20] = v9;
      *&v111[24] = 2048;
      *&v111[26] = v48;
      *&v111[34] = 2080;
      *&v111[36] = v50;
      v112 = 1024;
      v113 = v49;
      v31 = &_MergedGlobals_89;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v30 = v75;
LABEL_56:
    v42 = *(v31 + 932);
LABEL_57:
    if (v42 >= 3)
    {
      LODWORD(v107) = 0;
      v103[0] = OS_LOG_TYPE_DEFAULT;
      v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v68 = v107;
      if (os_log_type_enabled(v67, v103[0]))
      {
        v69 = v68;
      }

      else
      {
        v69 = v68 & 0xFFFFFFFE;
      }

      if (v69)
      {
        v70 = CMBaseObjectGetDerivedStorage() + 228;
        *time1 = v88;
        *&time1[16] = v89;
        v71 = CMTimeGetSeconds(time1);
        LODWORD(time2.value) = 136316418;
        *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v38;
        HIWORD(time2.epoch) = 2082;
        *v111 = v70;
        *&v111[8] = 2048;
        *&v111[10] = v71;
        *&v111[18] = 2114;
        *&v111[20] = *cf;
        *&v111[28] = 2114;
        *&v111[30] = v87;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *v74 = *cf;
    *cf = 0;
    if (a5)
    {
      *a5 = v87;
      v87 = 0;
    }

    if (v30)
    {
      *v30 = v88;
      *(v30 + 16) = v89;
    }

    v9 = 0;
    if (v36)
    {
      *v36 = v86;
      v86 = 0;
    }

    goto LABEL_70;
  }

  if (fvr_isAllowedToLog(DerivedStorage + 480, 2) && dword_1ED4CBE90)
  {
    v58 = v28;
    LODWORD(v107) = 0;
    v103[0] = OS_LOG_TYPE_DEFAULT;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = v107;
    if (os_log_type_enabled(v59, v103[0]))
    {
      v61 = v60;
    }

    else
    {
      v61 = v60 & 0xFFFFFFFE;
    }

    if (v61)
    {
      v62 = CMBaseObjectGetDerivedStorage() + 228;
      *time1 = *a2;
      *&time1[16] = *(a2 + 16);
      v63 = CMTimeGetSeconds(time1);
      v64 = *(DerivedStorage + 496);
      v65 = "logs skipped ";
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample";
      if (!v64)
      {
        v65 = "";
      }

      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v58;
      HIWORD(time2.epoch) = 2082;
      *v111 = v62;
      *&v111[8] = 2048;
      *&v111[10] = v63;
      *&v111[18] = 1024;
      *&v111[20] = v9;
      *&v111[24] = 2080;
      *&v111[26] = v65;
      *&v111[34] = 1024;
      *&v111[36] = v64;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_70:
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  return v9;
}

uint64_t FigVideoReceiverForBufferDeliveryProvideFrameTelemetryForSamplingEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v6)
    {

      return v6(a1, a2, a3);
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

uint64_t FigVideoReceiverForBufferDeliveryCreateEndpointID(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {

      return v4(a1, a2);
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

uint64_t FigVideoReceiverForBufferDeliveryCreatePlaybackStartupPreventionAssertion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {

      return v8(a1, a2, a3, a4);
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

uint64_t FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v4)
    {

      return v4(a1, a2);
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

uint64_t FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler(uint64_t a1, uint64_t a2)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (v4)
    {

      return v4(a1, a2);
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

uint64_t FigVideoReceiverForBufferDeliverySpecifyDataChannelSettingsWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v6)
    {

      return v6(a1, a2, a3);
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

uint64_t FigVideoReceiverForBufferDeliverySpecifyPreferredDataChannelGroupsWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {

      return v6(a1, a2, a3);
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

uint64_t FigVideoReceiverForBufferDeliverySetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    CMBaseObject = FigVideoReceiverGetCMBaseObject(a1);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {

      return v7(CMBaseObject, a2, a3);
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

uint64_t FigVideoReceiverForBufferDeliveryCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    CMBaseObject = FigVideoReceiverGetCMBaseObject(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {

      return v9(CMBaseObject, a2, a3, a4);
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

uint64_t FigVideoReceiverForBufferDeliverySetDataChannelEventHandler(uint64_t a1, NSObject *a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3002000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigVideoReceiverIsForBufferDelivery(a1))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = _Block_copy(a3);
    if (a2)
    {
      dispatch_retain(a2);
    }

    v9 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_block_invoke;
    block[3] = &unk_1E7483508;
    block[4] = v8;
    block[5] = &v20;
    block[6] = &v16;
    block[7] = DerivedStorage;
    block[8] = a2;
    dispatch_sync(v9, block);
    atomic_store(a3 != 0, (DerivedStorage + 624));
    v10 = v17[3];
    if (v10)
    {
      dispatch_release(v10);
    }

    _Block_release(v21[5]);
    v11 = 0;
  }

  else
  {
    FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_cold_1(v26);
    v11 = v26[0];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

void *__FigVideoReceiverForBufferDeliverySetDataChannelEventHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[7] + 608);
  v1 = result[7];
  *(v1 + 608) = result[4];
  *(*(result[6] + 8) + 24) = *(v1 + 616);
  *(result[7] + 616) = result[8];
  return result;
}

uint64_t __receiverPlaybackStartupPreventionAssertion_finalize_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void videoReceiver_Finalize()
{
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 32) = 0;
  }

  v6 = *(DerivedStorage + 48);
  time = **&MEMORY[0x1E6960C70];
  FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v6, &time, 0, 0);
  FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), 0, 0);
  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  v9 = *(DerivedStorage + 80);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 80) = 0;
  }

  v10 = *(DerivedStorage + 72);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 72) = 0;
  }

  v11 = *(DerivedStorage + 144);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(DerivedStorage + 64);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 64) = 0;
  }

  v13 = *(DerivedStorage + 264);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 264) = 0;
  }

  _Block_release(*(DerivedStorage + 424));
  *(DerivedStorage + 424) = 0;
  _Block_release(*(DerivedStorage + 432));
  *(DerivedStorage + 432) = 0;
  FigSimpleMutexDestroy();
  _Block_release(*(DerivedStorage + 448));
  *(DerivedStorage + 448) = 0;
  _Block_release(*(DerivedStorage + 608));
  *(DerivedStorage + 608) = 0;
  v14 = *(DerivedStorage + 616);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 616) = 0;
  }

  if (*(DerivedStorage + 632))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 632) = 0;
  }

  v15 = *(DerivedStorage + 288);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 288) = 0;
  }

  FigSimpleMutexDestroy();
  v16 = *(DerivedStorage + 312);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 312) = 0;
  }

  v17 = *(DerivedStorage + 320);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 320) = 0;
  }

  FigSimpleMutexDestroy();
  FigImageQueueDisplayCountHistory_FinishTracingDisplayCount(*(DerivedStorage + 344));
  v18 = *(DerivedStorage + 344);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 344) = 0;
  }

  v19 = *(DerivedStorage + 352);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 352) = 0;
  }

  v20 = *(DerivedStorage + 384);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 384) = 0;
  }

  v21 = *(DerivedStorage + 392);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 392) = 0;
  }

  v22 = *(DerivedStorage + 400);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 400) = 0;
  }

  if (*(DerivedStorage + 456))
  {
    v23 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v23)
    {
      v24 = v23;
      receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(v23, 0);
      CFRelease(v24);
    }

    v25 = *(DerivedStorage + 456);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 456) = 0;
    }
  }

  v26 = *(DerivedStorage + 464);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 464) = 0;
  }

  v27 = *(DerivedStorage + 472);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 472) = 0;
  }

  v28 = *(DerivedStorage + 600);
  if (v28)
  {
    dispatch_release(v28);
    *(DerivedStorage + 600) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *videoReceiver_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (a1)
  {
    v4 = (CMBaseObjectGetDerivedStorage() + 228);
  }

  else
  {
    v4 = "";
  }

  v5 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoReceiver [%p|%s] retainCount: %d>", a1, v4, v5);
  return Mutable;
}

uint64_t videoReceiver_SetProperty(CFTypeRef cf, const void *a2, const void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 4)
  {
    LODWORD(v25.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v8 = CFGetTypeID(cf), v8 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_SetProperty_cold_9(v27);
    return LODWORD(v27[0].value);
  }

  if (!a2)
  {
    videoReceiver_SetProperty_cold_8(v27);
    return LODWORD(v27[0].value);
  }

  if (!a3)
  {
    videoReceiver_SetProperty_cold_7(v27);
    return LODWORD(v27[0].value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFDictionaryGetTypeID())
    {
      v27[0] = **&MEMORY[0x1E6960C70];
      valuePtr = v27[0];
      v25 = v27[0];
      FigCFDictionaryGetCMTimeIfPresent();
      if ((v27[0].flags & 0x1D) == 1 && (type = v27[0], v18 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v11 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v11, CMTimeCompare(&type, &time2) > 0))
      {
        FigCFDictionaryGetCMTimeIfPresent();
        if ((valuePtr.flags & 0x1D) == 1 && (type = valuePtr, *&time2.value = v18, time2.epoch = v11, CMTimeCompare(&type, &time2) > 0))
        {
          FigCFDictionaryGetCMTimeIfPresent();
          if ((v25.flags & 0x1D) == 1)
          {
            *(DerivedStorage + 156) = v27[0];
            *(DerivedStorage + 180) = valuePtr;
            *(DerivedStorage + 204) = v25;
            CFRetain(cf);
            v12 = *(DerivedStorage + 144);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __videoReceiver_SetProperty_block_invoke;
            block[3] = &__block_descriptor_tmp_34;
            block[4] = cf;
            v22 = v27[0];
            dispatch_async(v12, block);
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, a2, a3);
            CMNotificationCenterGetDefaultLocalCenter();
LABEL_21:
            CMNotificationCenterPostNotification();
            value_low = 0;
            goto LABEL_22;
          }

          videoReceiver_SetProperty_cold_2(&type);
        }

        else
        {
          videoReceiver_SetProperty_cold_3(&type);
        }
      }

      else
      {
        videoReceiver_SetProperty_cold_4(&type);
      }

      Mutable = 0;
      value_low = LODWORD(type.value);
      goto LABEL_22;
    }

    videoReceiver_SetProperty_cold_1(v27);
    return LODWORD(v27[0].value);
  }

  if (FigCFEqual())
  {
    v14 = CFGetTypeID(a3);
    if (v14 == CFNumberGetTypeID())
    {
      LODWORD(valuePtr.value) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if ((valuePtr.value & 0x80000000) == 0)
      {
        *(DerivedStorage + 152) = valuePtr.value;
        CFRetain(cf);
        v15 = *(DerivedStorage + 144);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __videoReceiver_SetProperty_block_invoke_2;
        v19[3] = &__block_descriptor_tmp_35;
        v19[4] = cf;
        value = valuePtr.value;
        dispatch_async(v15, v19);
        v16 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
        CMNotificationCenterGetDefaultLocalCenter();
        goto LABEL_21;
      }

      videoReceiver_SetProperty_cold_6(v27);
      Mutable = 0;
      value_low = LODWORD(v27[0].value);
LABEL_22:
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return value_low;
    }

    videoReceiver_SetProperty_cold_5(v27);
    return LODWORD(v27[0].value);
  }

  if (!CFEqual(a2, @"ConnectionHelper"))
  {
    return 4294954509;
  }

  value_low = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a3;
  CFRetain(a3);
  if (value_low)
  {
    CFRelease(value_low);
    return 0;
  }

  return value_low;
}

void receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(uint64_t a1, void *aBlock)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler_block_invoke;
  block[3] = &unk_1E7483550;
  block[5] = &v7;
  block[6] = a1;
  block[4] = v3;
  dispatch_sync(v4, block);
  if (dword_1ED4CBE90 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_release(v8[5]);
  _Block_object_dispose(&v7, 8);
}

void *__receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 32);
  *(result[6] + 32) = result[4];
  return result;
}

void videoReceiver_deferCFObjectRelease(uint64_t a1)
{
  if (a1)
  {
    if (videoReceiver_deferCFObjectRelease_deferredReleaseQueueOnce != -1)
    {
      videoReceiver_deferCFObjectRelease_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_deferCFObjectRelease_block_invoke_2;
    block[3] = &__block_descriptor_tmp_40;
    block[4] = a1;
    dispatch_async(videoReceiver_deferCFObjectRelease_deferredReleaseQueue, block);
  }
}

dispatch_queue_t __videoReceiver_deferCFObjectRelease_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.deferredrelease", 0);
  videoReceiver_deferCFObjectRelease_deferredReleaseQueue = result;
  return result;
}

void __videoReceiver_deferCFObjectRelease_block_invoke_2(uint64_t a1)
{
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(*(a1 + 32));
}

uint64_t videoReceiver_createPlaybackStartupPreventionAssertion(const void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    videoReceiver_createPlaybackStartupPreventionAssertion_cold_6(v41);
    return v41[0];
  }

  if (!a2)
  {
    videoReceiver_createPlaybackStartupPreventionAssertion_cold_5();
    return 0;
  }

  v8 = DerivedStorage;
  if (!*(CMBaseObjectGetDerivedStorage() + 456) || (v9 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    CFGetAllocator(a1);
    if (FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_sRegisterReceiverPlaybackStartupPreventionAssertionTypeOnceToken != -1)
    {
      FigVideoReceiverPlaybackStartupPreventionAssertionGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v13 = Instance;
      v14 = dispatch_queue_create("com.apple.coremedia.videoreceiver.videoreceiverassertionQ", 0);
      *(v13 + 24) = v14;
      if (v14)
      {
        *(v13 + 16) = CFRetain(a2);
        goto LABEL_12;
      }

      videoReceiver_createPlaybackStartupPreventionAssertion_cold_2(v13, v41);
    }

    else
    {
      videoReceiver_createPlaybackStartupPreventionAssertion_cold_3(v41);
    }

    v27 = v41[0];
    if (v41[0])
    {
      return v27;
    }

    v13 = 0;
LABEL_12:
    v15 = *v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __videoReceiver_createPlaybackStartupPreventionAssertion_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_61;
    aBlock[4] = v15;
    receiverPlaybackStartupPreventionAssertion_setAssertionFinalizedHandler(v13, aBlock);
    v16 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v16, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v18 = Mutable;
      CFDictionarySetValue(Mutable, @"PlaybackStartupPreventionAssertionDebugDescription", *(v13 + 16));
      if (dword_1ED4CBE90)
      {
        v32 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v32;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          if (a1)
          {
            v22 = (CMBaseObjectGetDerivedStorage() + 228);
          }

          else
          {
            v22 = "";
          }

          v33 = 136315906;
          v34 = "videoReceiver_createPlaybackStartupPreventionAssertion";
          v35 = 2048;
          v36 = a1;
          v37 = 2082;
          v38 = v22;
          v39 = 2112;
          v40 = v13;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v23 = CMNotificationCenterPostNotification();
      if (v23)
      {
        v27 = v23;
      }

      else
      {
        v24 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v24)
        {
          v25 = v24;
          v26 = v8[57];
          v8[57] = v24;
          CFRetain(v24);
          if (v26)
          {
            CFRelease(v26);
          }

          *a4 = v13;
          CFRelease(v18);
          CFRelease(v25);
          return 0;
        }

        videoReceiver_createPlaybackStartupPreventionAssertion_cold_4(v41);
        v27 = v41[0];
      }

      CFRelease(v13);
      v29 = v18;
    }

    else
    {
      v27 = FigSignalErrorAtGM();
      if (!v13)
      {
        return v27;
      }

      v29 = v13;
    }

    CFRelease(v29);
    return v27;
  }

  v10 = v9;
  if (dword_1ED4CBE90)
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = 0;
  *a4 = v10;
  return v27;
}

uint64_t videoReceiver_specifyDataChannelSettingsWithID(CFTypeRef cf, const __CFArray *a2, int a3)
{
  theDict[16] = *MEMORY[0x1E69E9840];
  v28 = 0;
  cfa = 0;
  if (dword_1ED4CBE90 >= 4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_specifyDataChannelSettingsWithID_cold_3(theDict);
LABEL_5:
    v7 = 0;
    v8 = LODWORD(theDict[0]);
    goto LABEL_43;
  }

  v10 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_16:
  for (i = 0; v10 < i; i = CFArrayGetCount(a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
    CFDictionaryGetValue(ValueAtIndex, @"ChannelSpecificSettings");
    theDict[0] = 0;
    if (FigCFDictionaryGetValueIfPresent() && (CFDictionaryGetCount(theDict[0]) < 3 || !CFDictionaryGetValue(theDict[0], @"VideoColorPrimaries") || !CFDictionaryGetValue(theDict[0], @"VideoYCbCrMatrix") || !CFDictionaryGetValue(theDict[0], @"VideoTransferFunction")))
    {
      v8 = FigSignalErrorAtGM();
      v7 = 0;
      goto LABEL_43;
    }

    ++v10;
    if (!a2)
    {
      goto LABEL_16;
    }

LABEL_15:
    ;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    videoReceiver_specifyDataChannelSettingsWithID_cold_2(theDict);
    goto LABEL_5;
  }

  v16 = Mutable;
  if (CFArrayGetCount(a2) >= 1)
  {
    for (j = 0; j < CFArrayGetCount(a2); ++j)
    {
      v18 = CFArrayGetValueAtIndex(a2, j);
      MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, v18);
      Value = CFDictionaryGetValue(v18, @"ChannelDescription");
      if (Value)
      {
        v21 = vr_createModifiedDataChannelTagCollectionWithDefaultTags(Value, &v28);
        if (v21)
        {
          v8 = v21;
          goto LABEL_50;
        }

        videoReceiver_specifyDataChannelSettingsWithID_cold_1(&v28, MutableCopy, @"ChannelDescription");
      }

      CFArrayAppendValue(v16, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }

  v22 = FigVideoReceiverDataChannelSettingsCopySerializable(v16, &cfa);
  if (v22)
  {
    v8 = v22;
    MutableCopy = 0;
LABEL_50:
    v7 = 0;
  }

  else
  {
    FigSimpleMutexLock();
    v23 = *(DerivedStorage + 312);
    *(DerivedStorage + 312) = v16;
    CFRetain(v16);
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = *(DerivedStorage + 320);
    v25 = cfa;
    *(DerivedStorage + 320) = cfa;
    if (v25)
    {
      CFRetain(v25);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    *(DerivedStorage + 328) = a3;
    FigSimpleMutexUnlock();
    v26 = CFDictionaryCreateMutable(v14, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = v26;
    if (cfa)
    {
      CFDictionarySetValue(v26, @"DataChannelSettings", cfa);
    }

    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    MutableCopy = 0;
    v8 = 0;
  }

  CFRelease(v16);
  if (v28)
  {
    CFRelease(v28);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_43:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

uint64_t videoReceiver_copyTaggedBufferGroupForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v6, a3, a4, 0, a5, 0, 0);
}

uint64_t videoReceiver_copyTaggedBufferGroupAndResourcesForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6)
{
  if (a5)
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v7, a3, a4, a5, a6, 0, 0);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v8 = CFGetTypeID(cf), v8 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v10, block);
    return 0;
  }

  else
  {
    videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_cold_1(v14);
    return v14[0];
  }
}

uint64_t videoReceiver_setResourceLifeCycleCallback(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 3)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v8 = CFGetTypeID(cf), v8 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setResourceLifeCycleCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_64;
    block[4] = DerivedStorage;
    block[5] = a2;
    block[6] = a3;
    dispatch_sync(v10, block);
    return 0;
  }

  else
  {
    videoReceiver_setResourceLifeCycleCallback_cold_1(v14);
    return v14[0];
  }
}

uint64_t videoReceiver_copyTaggedBufferGroupAndResourcesAndSamplingEventIdentifierForTime(const void *a1, __int128 *a2, uint64_t a3, void *a4, CFTypeRef *a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  return videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample(a1, &v8, a3, a4, a5, a6, a7, 0);
}

uint64_t videoReceiver_provideFrameTelemetryForSamplingEvent(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = *(a2 + 24);
  v27 = *(a2 + 32);
  if (!a3)
  {
    v4 = 4963;
    goto LABEL_5;
  }

  if ((*a3 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = 4966;
    goto LABEL_5;
  }

  if (!cf || (v7 = *(a2 + 36), v8 = *(a2 + 40), v9 = CFGetTypeID(cf), v9 != FigVideoReceiverGetTypeID()))
  {
    v4 = 4968;
    goto LABEL_5;
  }

  if ((*(a3 + 20) & 1) == 0)
  {
    v4 = 4969;
    goto LABEL_5;
  }

  if ((*(a3 + 44) & 1) == 0)
  {
    v4 = 4970;
    goto LABEL_5;
  }

  if ((v7 & 1) == 0)
  {
    v4 = 4971;
LABEL_5:
    videoReceiver_provideFrameTelemetryForSamplingEvent_cold_2(v4, &time);
    return LODWORD(time.value);
  }

  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time = *(a3 + 8);
  v12 = CMClockConvertHostTimeToSystemUnits(&time);
  v13 = *(a3 + 56);
  v14 = *(a3 + 64) / v13;
  LODWORD(v15) = v13;
  if (*a3 >= 2uLL)
  {
    v15 = *(a3 + 80);
  }

  v16 = *(DerivedStorage + 344);
  v17 = *(a3 + 72);
  time.value = v26;
  time.timescale = v27;
  time.flags = v7;
  time.epoch = v8;
  FigImageQueueDisplayCountHistory_TraceDisplayCountUsingHostTime(v16, &time, v13, v15, v12, v14, v17);
  for (i = 0; ; ++i)
  {
    Count = *(a2 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), i);
    if (ValueAtIndex)
    {
      v21 = ValueAtIndex;
      FigReadWriteLockLockForWrite();
      v22 = *(a3 + 56);
      if (v22 > 0xFFFFFFFE)
      {
        v23 = -1;
      }

      else
      {
        v23 = *(a3 + 56);
      }

      if (v22 < 0)
      {
        v23 = 0;
      }

      *(v21 + 10) = v23;
      v24 = *(a3 + 64);
      v21[6] = v24 / v22;
      v21[10] = v24;
      time = *(a3 + 8);
      *(v21 + 8) = CMClockConvertHostTimeToSystemUnits(&time);
      time = *(a3 + 32);
      *(v21 + 9) = CMClockConvertHostTimeToSystemUnits(&time);
      v21[7] = *(a3 + 72);
      FigReadWriteLockUnlockForWrite();
    }

    else if (!videoReceiver_provideFrameTelemetryForSamplingEvent_cold_1())
    {
      return LODWORD(time.value);
    }
  }

  return 0;
}

uint64_t videoReceiver_setResourceLifeCycleHandler(CFTypeRef cf, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v6 = CFGetTypeID(cf), v6 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = _Block_copy(a2);
    v9 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setResourceLifeCycleHandler_block_invoke;
    block[3] = &unk_1E7483738;
    block[5] = &v14;
    block[6] = DerivedStorage;
    block[4] = v8;
    dispatch_sync(v9, block);
    _Block_release(v15[5]);
    v5 = 0;
  }

  else
  {
    videoReceiver_setResourceLifeCycleHandler_cold_1(v20);
    v5 = v20[0];
  }

  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler(CFTypeRef cf, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v6 = CFGetTypeID(cf), v6 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = _Block_copy(a2);
    v9 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_block_invoke;
    block[3] = &unk_1E7483760;
    block[5] = &v14;
    block[6] = DerivedStorage;
    block[4] = v8;
    dispatch_sync(v9, block);
    _Block_release(v15[5]);
    v5 = 0;
  }

  else
  {
    videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_cold_1(v20);
    v5 = v20[0];
  }

  _Block_object_dispose(&v14, 8);
  return v5;
}

uint64_t videoReceiver_setActiveConfigurationChangedHandler(const void *a1, const void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = _Block_copy(a2);
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 448);
    *(DerivedStorage + 448) = v6;
    FigSimpleMutexUnlock();
    if (dword_1ED4CBE90 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    _Block_release(v7);
    return 0;
  }

  else
  {
    videoReceiver_setActiveConfigurationChangedHandler_cold_1(cf);
    return LODWORD(cf[0]);
  }
}

__n128 __videoReceiver_copyImageForTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  time1 = *(a1 + 48);
  v6 = *(v2 + 116);
  if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
  {
    v4 = *(a1 + 32);
    *(v4 + 88) = 1;
    v5 = *(a1 + 48);
    *(v4 + 108) = *(a1 + 64);
    *(v4 + 92) = v5;
    videoReceiver_activateReceiverConfigurationOnSyncQueue(*(a1 + 40));
  }

  return result;
}

void videoReceiver_activateReceiverConfigurationOnSyncQueue(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  CMTimebaseGetTime(&v11, *(DerivedStorage + 56));
  v8 = *MEMORY[0x1E6960C70];
  *&v9.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v9.epoch = v3;
  v10 = 0;
  if (*(DerivedStorage + 88))
  {
    v11 = *(DerivedStorage + 92);
  }

  v4 = *(DerivedStorage + 48);
  time = v11;
  if (!FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime(v4, &time, &v9, &v10))
  {
    if (v10)
    {
      videoReceiver_replacePendingConfiguration(a1, v10);
      if (dword_1ED4CBE90 >= 2)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v6 = *(DerivedStorage + 48);
  time = v9;
  FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime(v6, &time, 1);
  *(DerivedStorage + 116) = *&v9.value;
  v7 = v10;
  *(DerivedStorage + 132) = v9.epoch;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 92) = v8;
  *(DerivedStorage + 108) = v3;
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t videoReceiver_copyOutputQueuesIfReady(const void *a1, _BYTE *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v63 = 0;
  v64[0] = &v63;
  v64[1] = 0x2000000000;
  v65 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  if (a1 && (v16 = CFGetTypeID(a1), v16 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v18 = *(DerivedStorage + 144);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = __videoReceiver_copyOutputQueuesIfReady_block_invoke;
    v34[3] = &unk_1E7483690;
    v34[4] = &v59;
    v34[5] = &v63;
    v34[12] = DerivedStorage;
    v34[13] = a1;
    v34[6] = &v55;
    v34[7] = &v51;
    v34[8] = &v47;
    v34[9] = &v43;
    v34[14] = a8;
    v34[10] = &v39;
    v34[11] = &v35;
    dispatch_sync(v18, v34);
  }

  else
  {
    videoReceiver_copyOutputQueuesIfReady_cold_1(v64);
  }

  v19 = v36;
  if (*(v36 + 24))
  {
    if (a4)
    {
      v20 = v56;
      *a4 = v56[3];
      v20[3] = 0;
    }

    if (a5)
    {
      v21 = v52;
      *a5 = v52[3];
      v21[3] = 0;
    }

    if (a6)
    {
      v22 = v48;
      *a6 = v48[3];
      v22[3] = 0;
    }

    if (a7)
    {
      v23 = v44;
      *a7 = v44[3];
      v23[3] = 0;
    }

    if (a8)
    {
      v24 = v40;
      *a8 = v40[3];
      v24[3] = 0;
    }
  }

  if (a3)
  {
    v25 = v60;
    *a3 = v60[3];
    v25[3] = 0;
  }

  if (a2)
  {
    *a2 = *(v19 + 24);
  }

  v26 = v60[3];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v56[3];
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = v52[3];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v48[3];
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v44[3];
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = v40[3];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(v64[0] + 24);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  return v32;
}

uint64_t __videoReceiver_copyImageForTime_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 104);
  v5 = *(*(a1 + 72) + 40);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(*(a1 + 48) + 8);
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  result = videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime(v2, v3, &v9, v4, v5, (v6 + 24), v7 + 1, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime(const void *a1, const void *a2, uint64_t a3, int a4, int a5, void *a6, CMTime *a7, uint64_t *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFGetAllocator(a1);
  if (a2)
  {
    v16 = *(a3 + 12);
    if (v16)
    {
      v17 = *(a3 + 16);
      time.value = *a3;
      time.timescale = *(a3 + 8);
      time.flags = v16;
      time.epoch = v17;
      CMTimeGetSeconds(&time);
      SampleForTime = CAXPCImageQueueReceiverCreateSampleForTime();
      if (SampleForTime)
      {
        v19 = SampleForTime;
        if (FigCAXPCImageQueueSampleGetTypeID_sRegisterFigCAXPCImageQueueSampleTypeOnce != -1)
        {
          videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (Instance)
        {
          *(Instance + 16) = CFRetain(v19);
          *(Instance + 32) = FigReadWriteLockCreate();
          *(Instance + 24) = a4;
          *(Instance + 25) = a4 == 0;
          *(Instance + 26) = 0;
        }

        else if (!videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_2())
        {
          value_low = LODWORD(time.value);
LABEL_9:
          CFRelease(v19);
          if (!value_low)
          {
            goto LABEL_10;
          }

LABEL_51:
          if (!Instance)
          {
            return value_low;
          }

          Mutable = 0;
          goto LABEL_59;
        }

        value_low = 0;
        goto LABEL_9;
      }

      videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_3(&time);
    }

    else
    {
      videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_4(&time);
    }
  }

  else
  {
    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_5(&time);
  }

  Instance = 0;
  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    goto LABEL_51;
  }

LABEL_10:
  CAXPCImageQueueSampleGetTimestamp();
  v23 = v22;
  if (!CAXPCImageQueueSampleGetIOSurface())
  {
    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_7(&time);
    Mutable = 0;
    v33 = 0;
    goto LABEL_48;
  }

  if (a5)
  {
    v24 = 32;
    if (a4)
    {
      v25 = 32;
    }

    else
    {
      v25 = 24;
    }

    if (a4)
    {
      v24 = 24;
    }

    v26 = *(DerivedStorage + v24);
    v27 = *(DerivedStorage + v25);
    Value = CFDictionaryGetValue(v27, a2);
    Mutable = Value;
    if (Value)
    {
      CFRetain(Value);
      v30 = vr_copyCachedPixelBufferIfSameIQSample(Mutable);
      v31 = v30 != 0;
      if (v30)
      {
LABEL_24:
        v33 = v30;
        goto LABEL_30;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = CFDictionaryGetValue(v26, a2);
    if (v32)
    {
      v30 = vr_copyCachedPixelBufferIfSameIQSample(v32);
      if (v30)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v31 = 0;
    Mutable = 0;
    v27 = 0;
  }

  time.value = 0;
  IOSurface = CAXPCImageQueueSampleGetIOSurface();
  if (IOSurface)
  {
    v35 = IOSurface;
    IsLowLatency = CAXPCImageQueueSampleIsLowLatency();
    v37 = CFGetAllocator(Instance);
    v38 = CVPixelBufferCreateWithIOSurface(v37, v35, 0, &time);
    if (!v38)
    {
      if (IsLowLatency)
      {
        CVBufferSetAttachment(time.value, *MEMORY[0x1E6965DF0], *MEMORY[0x1E695E4D0], kCVAttachmentMode_ShouldNotPropagate);
      }

      v33 = time.value;
      goto LABEL_30;
    }

    value_low = v38;
    if (time.value)
    {
      CFRelease(time.value);
    }

LABEL_59:
    v33 = 0;
    goto LABEL_60;
  }

  v40 = FigSignalErrorAtGM();
  v33 = 0;
  if (v40)
  {
    value_low = v40;
    goto LABEL_60;
  }

LABEL_30:
  if (a5 && !v31)
  {
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      CFDictionarySetValue(Mutable, @"CachedPixelBuffer", v33);
      CFDictionarySetValue(Mutable, @"CachedIQSample", Instance);
      CFDictionarySetValue(v27, a2, Mutable);
      goto LABEL_35;
    }

    videoReceiver_copyPixelBufferFromImageQueueReceiverSamplingAtTime_cold_6(&time);
LABEL_48:
    value_low = LODWORD(time.value);
    goto LABEL_60;
  }

LABEL_35:
  if (a6)
  {
    *a6 = v33;
    v33 = 0;
  }

  if (a7)
  {
    CMTimeMakeWithSeconds(&time, v23 + 0.00000555555556, 90000);
    *a7 = time;
  }

  value_low = 0;
  if (a8)
  {
    *a8 = Instance;
    if (!v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_60:
  CFRelease(Instance);
  if (v33)
  {
LABEL_41:
    CFRelease(v33);
  }

LABEL_42:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return value_low;
}

void videoReceiver_replacePendingConfiguration(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  videoReceiver_RemoveAndReleaseConfiguration(a1, *(DerivedStorage + 72));
  *(DerivedStorage + 72) = a2;
  if (a2)
  {
    CFRetain(a2);
  }
}

void videoReceiver_RemoveAndReleaseConfiguration(const void *a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  videoReceiver_announceRemovalOfConfiguration(a1, a2);
  videoReceiver_deferCFObjectRelease(a2);
}

uint64_t videoReceiver_dispatchAsyncPostNotification()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

uint64_t videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration(uint64_t a1, uint64_t a2, __CFArray **a3, __CFArray **a4, __CFArray **a5, __CFArray **a6, uint64_t *a7, char *a8, char *a9)
{
  CMBaseObjectGetDerivedStorage();
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a2);
  if (!ChannelCount)
  {
    v17 = 0;
    Mutable = 0;
    v16 = 0;
    v28 = 0;
    v15 = 0;
    v29 = 1;
    goto LABEL_30;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_10(&v43);
    v15 = 0;
    goto LABEL_67;
  }

  v15 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_9(&v43);
    goto LABEL_67;
  }

  theArray = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_8(&v43);
LABEL_67:
    v28 = 0;
    v16 = 0;
    ChannelCount = 0;
    v17 = 0;
    v34 = v43;
    if (!v43)
    {
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  v16 = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_7(&v43);
    ChannelCount = 0;
    v17 = 0;
    v34 = v43;
    goto LABEL_62;
  }

  v36 = a8;
  v37 = a7;
  if (ChannelCount >= 1)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      OutputQueueTypeAtIndex = FigDataChannelConfigurationGetOutputQueueTypeAtIndex(a2, v18);
      if (OutputQueueTypeAtIndex == 2)
      {
        FigDataQueueAtIndex = FigDataChannelConfigurationGetFigDataQueueAtIndex(a2, v18);
        if (!FigDataQueueAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_2(&v43);
          goto LABEL_60;
        }

        v25 = FigDataQueueAtIndex;
        ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a2, v18);
        if (!ChannelDescriptionTagsAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_1(&v43);
          goto LABEL_60;
        }

        v27 = ChannelDescriptionTagsAtIndex;
        CFArrayAppendValue(theArray, v25);
        CFArrayAppendValue(v16, v27);
        v17 = 1;
      }

      else if (OutputQueueTypeAtIndex == 1)
      {
        CAImageQueueReceiverAtIndex = FigDataChannelConfigurationGetCAImageQueueReceiverAtIndex(a2, v18);
        if (!CAImageQueueReceiverAtIndex)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_4(&v43);
          goto LABEL_60;
        }

        v21 = CAImageQueueReceiverAtIndex;
        v22 = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a2, v18);
        if (!v22)
        {
          videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_3(&v43);
LABEL_60:
          ChannelCount = 0;
LABEL_61:
          v34 = v43;
          a8 = v36;
          a7 = v37;
LABEL_62:
          v28 = theArray;
          if (!v34)
          {
LABEL_63:
            v29 = 0;
            goto LABEL_30;
          }

          goto LABEL_44;
        }

        v23 = v22;
        if (CAXPCImageQueueReceiverGetImageCount())
        {
          v17 = 1;
        }

        CFArrayAppendValue(Mutable, v21);
        CFArrayAppendValue(v15, v23);
      }

      if (ChannelCount == ++v18)
      {
        goto LABEL_22;
      }
    }
  }

  v17 = 0;
LABEL_22:
  ResourceCount = FigDataChannelConfigurationGetResourceCount(a2);
  ChannelCount = 0;
  v29 = 0;
  if (v37)
  {
    v31 = ResourceCount;
    if (ResourceCount >= 1)
    {
      ChannelCount = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
      if (ChannelCount)
      {
        v32 = 0;
        while (1)
        {
          FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(a2, v32);
          if (!FigDataChannelResourceAtIndex)
          {
            break;
          }

          CFArrayAppendValue(ChannelCount, FigDataChannelResourceAtIndex);
          if (v31 == ++v32)
          {
            v29 = 0;
            goto LABEL_29;
          }
        }

        videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_5(&v43);
      }

      else
      {
        videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration_cold_6(&v43);
      }

      goto LABEL_61;
    }
  }

LABEL_29:
  a8 = v36;
  a7 = v37;
  v28 = theArray;
LABEL_30:
  if (a3)
  {
    *a3 = Mutable;
    Mutable = 0;
  }

  if (a4)
  {
    *a4 = v15;
    v15 = 0;
  }

  if (a5)
  {
    *a5 = v28;
    v28 = 0;
  }

  if (a6)
  {
    *a6 = v16;
    v16 = 0;
  }

  if (a7)
  {
    *a7 = ChannelCount;
    ChannelCount = 0;
  }

  if (a8)
  {
    *a8 = v29;
  }

  v34 = 0;
  if (a9)
  {
    *a9 = v17;
  }

LABEL_44:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (ChannelCount)
  {
    CFRelease(ChannelCount);
  }

  return v34;
}

uint64_t fvr_copyDescriptionSettingsAndResourcesFromConfiguration(const void *a1, __CFArray **a2, __CFDictionary **a3, __CFArray **a4)
{
  theArray = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_5(formatDescriptionOut);
    v23 = 0;
    v17 = 0;
    TagsWithCategory = LODWORD(formatDescriptionOut[0]);
    goto LABEL_60;
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9 || (v10 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0])) == 0)
  {
    TagsWithCategory = FigSignalErrorAtGM();
    v23 = 0;
    v27 = 0;
    v17 = 0;
    goto LABEL_55;
  }

  v32 = a2;
  cf = v10;
  ChannelCount = FigDataChannelConfigurationGetChannelCount(a1);
  if (ChannelCount < 1)
  {
LABEL_44:
    ResourceCount = FigDataChannelConfigurationGetResourceCount(a1);
    v27 = cf;
    if (ResourceCount < 1)
    {
LABEL_48:
      if (v32)
      {
        *v32 = v8;
        v8 = 0;
      }

      if (a3)
      {
        *a3 = v9;
        v9 = 0;
      }

      v17 = 0;
      v23 = 0;
      TagsWithCategory = 0;
      if (a4)
      {
        *a4 = cf;
        v27 = 0;
      }
    }

    else
    {
      v28 = ResourceCount;
      v29 = 0;
      while (1)
      {
        FigDataChannelResourceAtIndex = FigDataChannelConfigurationGetFigDataChannelResourceAtIndex(a1, v29);
        if (!FigDataChannelResourceAtIndex)
        {
          break;
        }

        CFArrayAppendValue(cf, FigDataChannelResourceAtIndex);
        if (v28 == ++v29)
        {
          goto LABEL_48;
        }
      }

      fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_3(formatDescriptionOut);
      v17 = 0;
      v23 = 0;
      TagsWithCategory = LODWORD(formatDescriptionOut[0]);
    }

    goto LABEL_54;
  }

  v11 = 0;
  v36 = v8;
  v37 = v9;
  while (1)
  {
    ChannelDescriptionTagsAtIndex = FigDataChannelConfigurationGetChannelDescriptionTagsAtIndex(a1, v11);
    if (!ChannelDescriptionTagsAtIndex)
    {
      fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_4(formatDescriptionOut);
      v17 = 0;
      v23 = 0;
      TagsWithCategory = LODWORD(formatDescriptionOut[0]);
      goto LABEL_70;
    }

    CFArrayAppendValue(v8, ChannelDescriptionTagsAtIndex);
    v13 = CFGetAllocator(a1);
    FigDataChannelConfigurationCopySidebandVideoPropertiesAtIndex(a1, v13, v11, &theArray);
    v14 = theArray;
    if (!theArray)
    {
      v17 = 0;
      goto LABEL_29;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v16 = Count;
      v17 = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
      if (!v17)
      {
        fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_1();
        goto LABEL_28;
      }

      v18 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v18);
        formatDescriptionOut[0] = 0;
        v41 = 0;
        if (FigSidebandVideoPropertiesCopyAsFormatDescriptionExtensions(ValueAtIndex, &v41) || CMVideoFormatDescriptionCreate(v6, 0x66616B65u, -1, -1, v41, formatDescriptionOut))
        {
          v20 = 0;
          v21 = 0;
        }

        else
        {
          v20 = formatDescriptionOut[0];
          formatDescriptionOut[0] = 0;
          v21 = 1;
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (formatDescriptionOut[0])
        {
          CFRelease(formatDescriptionOut[0]);
        }

        if (!v21)
        {
          break;
        }

        CFArrayAppendValue(v17, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        if (v16 == ++v18)
        {
          goto LABEL_28;
        }
      }

      CFRelease(v17);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    v17 = 0;
LABEL_28:
    v8 = v36;
    v9 = v37;
LABEL_29:
    FigDataChannelConfigurationGetChannelSettingsAtIndex(a1, v11);
    CFGetAllocator(a1);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      break;
    }

LABEL_37:
    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (++v11 == ChannelCount)
    {
      goto LABEL_44;
    }
  }

  v23 = MutableCopy;
  FigCFDictionarySetValue();
  if (v17)
  {
    FigCFDictionarySetValue();
  }

  *formatDescriptionOut = *MEMORY[0x1E6960630];
  v41 = 0;
  TagsWithCategory = FigTagCollectionGetTagsWithCategory();
  if (!TagsWithCategory && v41 == 1)
  {
    FigTagGetSInt64Value();
    SInt64 = FigCFNumberCreateSInt64();
    CFDictionarySetValue(v9, SInt64, v23);
    if (SInt64)
    {
      CFRelease(SInt64);
    }

    CFRelease(v23);
    goto LABEL_37;
  }

  fvr_copyDescriptionSettingsAndResourcesFromConfiguration_cold_2();
LABEL_70:
  v27 = cf;
LABEL_54:
  if (v8)
  {
LABEL_55:
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v27)
  {
    CFRelease(v27);
  }

LABEL_60:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return TagsWithCategory;
}

uint64_t vr_createModifiedDataChannelTagCollectionWithDefaultTags(const OpaqueCMTagCollection *a1, void *a2)
{
  if (!a1)
  {
    v11 = 2275;
LABEL_21:
    videoReceiver_provideFrameTelemetryForSamplingEvent_cold_2(v11, &v12);
    return v12;
  }

  if (!a2)
  {
    v11 = 2276;
    goto LABEL_21;
  }

  MutableCopy = FigTagCollectionCreateMutableCopy();
  if (MutableCopy)
  {
    return MutableCopy;
  }

  if (CMTagCollectionContainsTag(a1, *MEMORY[0x1E6960640]))
  {
    v5 = *MEMORY[0x1E6960690];
    v6 = *(MEMORY[0x1E6960690] + 8);
    *&v13.category = *MEMORY[0x1E6960690];
    v13.value = v6;
    if (CMTagCollectionContainsTag(a1, v13))
    {
      v7 = *MEMORY[0x1E69606A0];
      v8 = *(MEMORY[0x1E69606A0] + 8);
      *&v14.category = *MEMORY[0x1E69606A0];
      v14.value = v8;
      if (CMTagCollectionContainsTag(a1, v14))
      {
        *&v15.category = v5;
        v15.value = v6;
        MutableCopy = CMTagCollectionRemoveTag(0, v15);
        if (MutableCopy)
        {
          return MutableCopy;
        }

        *&v16.category = v7;
        v16.value = v8;
        MutableCopy = CMTagCollectionRemoveTag(0, v16);
        if (MutableCopy)
        {
          return MutableCopy;
        }

        MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960688]);
        if (MutableCopy)
        {
          return MutableCopy;
        }
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_StereoView))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960698]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_PackingType))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960648]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_ProjectionType))
    {
      MutableCopy = CMTagCollectionAddTag(0, *MEMORY[0x1E6960680]);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }
  }

  v9 = 0;
  *a2 = 0;
  return v9;
}

CFTypeRef vr_copyCachedPixelBufferIfSameIQSample(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"CachedPixelBuffer");
  v3 = CFDictionaryGetValue(a1, @"CachedIQSample");
  if (Value)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  IOSurface = CAXPCImageQueueSampleGetIOSurface();
  CAXPCImageQueueSampleGetTimestamp();
  v7 = v6;
  v8 = CAXPCImageQueueSampleGetIOSurface();
  CAXPCImageQueueSampleGetTimestamp();
  v10 = v9;
  ID = IOSurfaceGetID(IOSurface);
  if (ID != IOSurfaceGetID(v8) || v7 != v10)
  {
    return 0;
  }

  return CFRetain(Value);
}

uint64_t __FigCAXPCImageQueueSampleGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigCAXPCImageQueueSampleGetTypeID_sFigCAXPCImageQueueSampleTypeID = result;
  return result;
}

double figCAXPCImageQueueSample_init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figCAXPCImageQueueSample_finalize(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 25))
  {
    cf[0] = 0;
    figCAXPCImageQueueSample_copyTelemetryInfoDict(a1, cf);
    CAXPCImageQueueSampleFinish();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  return FigReadWriteLockDestroy();
}

CFStringRef figCAXPCImageQueueSample_copyDebugDesc(uint64_t a1)
{
  cf = 0;
  figCAXPCImageQueueSample_copyTelemetryInfoDict(a1, &cf);
  v2 = FigCFCopyCompactDescription();
  v3 = CFGetAllocator(a1);
  v4 = CFGetRetainCount(a1);
  if (*(a1 + 26))
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v6 = CFStringCreateWithFormat(v3, 0, @"<FigCAXPCImageQueueSample %p retainCount %d> iqSample: %@, wasProvidedToClient: %s, telemetryInfo: %@", a1, v4, *(a1 + 16), v5, v2);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

void figCAXPCImageQueueSample_copyTelemetryInfoDict(_BYTE *a1, CFMutableDictionaryRef *a2)
{
  if (!a1)
  {
    figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_3();
    return;
  }

  if (!a2)
  {
    figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_2();
    return;
  }

  if (a1[26])
  {
    FigReadWriteLockLockForRead();
    v4 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v4, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      figCAXPCImageQueueSample_copyTelemetryInfoDict_cold_1();
      goto LABEL_12;
    }

    v6 = Mutable;
    if (!FigCFDictionarySetUInt32() && !FigCFDictionarySetDouble() && !FigCFDictionarySetUInt64() && !FigCFDictionarySetUInt64() && !FigCFDictionarySetDouble() && !FigCFDictionarySetDouble())
    {
      *a2 = v6;
LABEL_12:

      FigReadWriteLockUnlockForRead();
      return;
    }

    FigReadWriteLockUnlockForRead();

    CFRelease(v6);
  }

  else if (dword_1ED4CBE90 >= 7)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __videoReceiver_createPlaybackStartupPreventionAssertion_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v2 = v1;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      if (CMNotificationCenterPostNotification() || dword_1ED4CBE90)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFRelease(v2);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void *__videoReceiver_setPrepareDataChannelsWithDependentResourcesCallback_block_invoke(void *result)
{
  *(result[4] + 248) = result[5];
  *(result[4] + 256) = result[6];
  return result;
}

void *__videoReceiver_setResourceLifeCycleCallback_block_invoke(void *result)
{
  *(result[4] + 272) = result[5];
  *(result[4] + 280) = result[6];
  return result;
}

void *__videoReceiver_setResourceLifeCycleHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 424);
  *(result[6] + 424) = result[4];
  return result;
}

void *__videoReceiver_setPrepareDataChannelsWithDependentResourcesHandler_block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[6] + 432);
  *(result[6] + 432) = result[4];
  return result;
}

uint64_t videoReceiver_createImageQueueReceiver(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_createImageQueueReceiver_cold_4(&time);
    return LODWORD(time.value);
  }

  if (!a2)
  {
    videoReceiver_createImageQueueReceiver_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a4)
  {
    videoReceiver_createImageQueueReceiver_cold_2(&time);
    return LODWORD(time.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = CAXPCImageQueueReceiverCreate();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    videoReceiver_createImageQueueReceiver_cold_1(&time);
    value_low = LODWORD(time.value);
    if (!v11)
    {
      return value_low;
    }

    goto LABEL_23;
  }

  v13 = Mutable;
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 152))
  {
    CAXPCImageQueueReceiverSetDisplayedPixelCount();
  }

  if ((*(DerivedStorage + 168) & 0x1D) == 1)
  {
    time = *(DerivedStorage + 156);
    CMTimeGetSeconds(&time);
    Float32 = FigCFNumberCreateFloat32();
    CAXPCImageQueueReceiverSetProperty();
    if (Float32)
    {
      CFRelease(Float32);
    }
  }

  v15 = *(DerivedStorage + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_createImageQueueReceiver_block_invoke;
  block[3] = &__block_descriptor_tmp_74;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = v13;
  dispatch_sync(v15, block);
  if (dword_1ED4CBE90)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = v23;
    if (os_log_type_enabled(v16, type))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = CMBaseObjectGetDerivedStorage();
      v24 = 136316162;
      v25 = "videoReceiver_createImageQueueReceiver";
      v26 = 2048;
      v27 = cf;
      v28 = 2082;
      v29 = v19 + 228;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = a2;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v13);
  value_low = 0;
  if (v11)
  {
LABEL_23:
    CFRelease(v11);
  }

  return value_low;
}

uint64_t videoReceiver_releaseImageQueueReceiver(CFTypeRef cf, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!cf || (v6 = CFGetTypeID(cf), v6 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_releaseImageQueueReceiver_cold_2(v11);
    return v11[0];
  }

  if (!a2)
  {
    videoReceiver_releaseImageQueueReceiver_cold_1(v11);
    return v11[0];
  }

  v7 = *(CMBaseObjectGetDerivedStorage() + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_releaseImageQueueReceiver_block_invoke;
  block[3] = &__block_descriptor_tmp_75_0;
  block[4] = cf;
  block[5] = a2;
  dispatch_sync(v7, block);
  return 0;
}

uint64_t videoReceiver_setImageQueueMessage(const void *a1, uint64_t a2, uint64_t a3)
{
  block[16] = *MEMORY[0x1E69E9840];
  v6 = CAXPCImageQueueCommandForMessage();
  if (dword_1ED4CBE90 >= 2)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a1 || (v9 = CFGetTypeID(a1), v9 != FigVideoReceiverGetTypeID()))
  {
    videoReceiver_setImageQueueMessage_cold_4(block);
    return LODWORD(block[0]);
  }

  if (!a2)
  {
    videoReceiver_setImageQueueMessage_cold_3(block);
    return LODWORD(block[0]);
  }

  if (!a3)
  {
    videoReceiver_setImageQueueMessage_cold_2(block);
    return LODWORD(block[0]);
  }

  if (v6 == 5)
  {
    v30 = 0;
    *type = 0;
    theArray = 0;
    values = 0;
    cf = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = atomic_load((DerivedStorage + 624));
    if (v11)
    {
      v12 = DerivedStorage;
      v13 = videoReceiver_copyImageQueueReceiverWithID(a1, a2, &cf);
      if (v13)
      {
        v8 = v13;
      }

      else
      {
        v8 = videoReceiver_copyOutputQueuesIfReady(a1, &v30, 0, &theArray, type, 0, 0, 0);
        if (!v8 && v30)
        {
          v14 = 0;
          v15 = cf;
          while (1)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (v14 >= Count)
            {
              goto LABEL_30;
            }

            if (v15 == CFArrayGetValueAtIndex(theArray, v14))
            {
              values = CFArrayGetValueAtIndex(*type, v14);
              CFRetain(a1);
              v21 = CFGetAllocator(a1);
              v22 = CFDictionaryCreate(v21, kFigVideoReceiverDataChannelEventInfo_ChannelDescription, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              FigSimpleMutexLock();
              v23 = *(v12 + 616);
              if (!v23)
              {
                v23 = *(v12 + 264);
              }

              v24 = _Block_copy(*(v12 + 608));
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __videoReceiver_lowLatencyImageEnqueuedForImageQueueWithID_block_invoke;
              block[3] = &unk_1E7483880;
              block[4] = v24;
              block[5] = a1;
              block[6] = v22;
              dispatch_async(v23, block);
              FigSimpleMutexUnlock();
              goto LABEL_30;
            }

            ++v14;
          }
        }

        if (dword_1ED4CBE90 >= 2)
        {
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

LABEL_31:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (*type)
      {
        CFRelease(*type);
      }

      v19 = cf;
      if (cf)
      {
        goto LABEL_36;
      }

      return v8;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  block[0] = 0;
  v17 = videoReceiver_copyImageQueueReceiverWithID(a1, a2, block);
  v18 = block[0];
  if (v17)
  {
    v8 = v17;
  }

  else if (CAXPCImageQueueReceiverProcessMessage())
  {
    v8 = 0;
  }

  else
  {
    videoReceiver_setImageQueueMessage_cold_1(&v31);
    v8 = v31;
  }

  if (v18)
  {
    v19 = v18;
LABEL_36:
    CFRelease(v19);
  }

  return v8;
}

uint64_t videoReceiver_createDataQueue(const void *a1, uint64_t a2, CMTime *a3, CMTime *a4, CFTypeRef *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1ED4CBE90 >= 2)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = CFGetAllocator(a1);
    v28[0] = *a3;
    v24 = *a4;
    v13 = FigDataQueueCreate(v12, a2, v28, &v24, &cf);
    if (v13)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v14 = *(DerivedStorage + 144);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __videoReceiver_createDataQueue_block_invoke;
      block[3] = &__block_descriptor_tmp_78;
      block[4] = cf;
      block[5] = DerivedStorage;
      dispatch_sync(v14, block);
      if (dword_1ED4CBE90)
      {
        v22 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = v22;
        if (os_log_type_enabled(v15, type))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          if (a1)
          {
            v18 = (CMBaseObjectGetDerivedStorage() + 228);
          }

          else
          {
            v18 = "";
          }

          LODWORD(v24.value) = 136315906;
          *(&v24.value + 4) = "videoReceiver_createDataQueue";
          LOWORD(v24.flags) = 2048;
          *(&v24.flags + 2) = a1;
          HIWORD(v24.epoch) = 2082;
          v25 = v18;
          v26 = 2048;
          v27 = cf;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v13 = 0;
      *a5 = cf;
    }
  }

  else
  {
    videoReceiver_createDataQueue_cold_1(v28);
    return LODWORD(v28[0].value);
  }

  return v13;
}

uint64_t videoReceiver_createDataChannelResource(const void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (dword_1ED4CBE90 >= 3)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = CFGetAllocator(a1);
    v11 = FigDataChannelResourceCreate(v10, a2, a3, &cf);
    if (v11)
    {
      v15 = v11;
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      if (dword_1ED4CBE90)
      {
        v19 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (cf)
      {
        CFRetain(cf);
        v13 = cf;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(DerivedStorage + 264);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __videoReceiver_createDataChannelResource_block_invoke;
      block[3] = &__block_descriptor_tmp_79;
      block[4] = DerivedStorage;
      block[5] = a1;
      block[6] = v13;
      dispatch_async(v14, block);
      v15 = 0;
      *a4 = cf;
    }
  }

  else
  {
    videoReceiver_createDataChannelResource_cold_1(v21);
    return v21[0];
  }

  return v15;
}

uint64_t videoReceiver_announceDataChannelResourceRemoval(CFTypeRef cf, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 3)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf && (v6 = CFGetTypeID(cf), v6 == FigVideoReceiverGetTypeID()))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(cf);
    if (a2)
    {
      CFRetain(a2);
    }

    v8 = *(DerivedStorage + 264);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __videoReceiver_announceDataChannelResourceRemoval_block_invoke;
    block[3] = &__block_descriptor_tmp_80;
    block[4] = DerivedStorage;
    block[5] = cf;
    block[6] = a2;
    dispatch_async(v8, block);
    return 0;
  }

  else
  {
    videoReceiver_announceDataChannelResourceRemoval_cold_1(v12);
    return v12[0];
  }
}

uint64_t videoReceiver_getInstanceType(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = 2;
    }

    else
    {
      videoReceiver_getInstanceType_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    videoReceiver_getInstanceType_cold_2(&v4);
    return v4;
  }

  return result;
}

void __videoReceiver_addDataChannelConfiguration_block_invoke(uint64_t a1)
{
  if (FigCFEqual())
  {
    v2 = *(*(a1 + 40) + 72) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2 || FigCFEqual())
  {
    if (dword_1ED4CBE90 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerReset(*(*(a1 + 40) + 48));
    videoReceiver_replacePendingConfiguration(*(a1 + 48), *(a1 + 32));
    v4 = *(a1 + 40);
    v5 = MEMORY[0x1E6960C70];
    *(v4 + 116) = *MEMORY[0x1E6960C70];
    *(v4 + 132) = *(v5 + 16);
  }
}

void __videoReceiver_addDataChannelConfiguration_block_invoke_70(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[31];
  if (v3)
  {
    if (dword_1ED4CBE90)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v2 = *(a1 + 32);
      v3 = v2[31];
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 104);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = v2[32];
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    v3(v5, &v24, v6, v7, v8, v9, v10);
    v2 = *(a1 + 32);
  }

  v11 = v2[54];
  if (v11)
  {
    if (dword_1ED4CBE90)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v11 = *(*(a1 + 32) + 432);
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 104);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(v11 + 16);
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    v18(v11, v13, &v24, v14, v15, v16, v17);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }
}

const __CFDictionary *videoReceiver_getImageQueueReceiverByIDOnSyncQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UInt64 = FigCFNumberCreateUInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), UInt64);
  if (UInt64)
  {
    CFRelease(UInt64);
  }

  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"ImageQueueReceiverKey");
    if (dword_1ED4CBE90 >= 7)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return Value;
}

void __videoReceiver_createImageQueueReceiver_block_invoke(uint64_t a1)
{
  UInt64 = FigCFNumberCreateUInt64();
  CFDictionarySetValue(*(*(a1 + 40) + 16), UInt64, *(a1 + 48));
  if (UInt64)
  {

    CFRelease(UInt64);
  }
}

void __videoReceiver_releaseImageQueueReceiver_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  UInt64 = FigCFNumberCreateUInt64();
  Value = CFDictionaryGetValue(*(DerivedStorage + 16), UInt64);
  if (Value)
  {
    CFDictionaryGetValue(Value, @"ImageQueueReceiverKey");
    if (dword_1ED4CBE90)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionaryRemoveValue(*(DerivedStorage + 16), UInt64);
  }

  if (UInt64)
  {
    CFRelease(UInt64);
  }
}

uint64_t videoReceiver_copyImageQueueReceiverWithID(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __videoReceiver_copyImageQueueReceiverWithID_block_invoke;
  block[3] = &unk_1E74838A8;
  block[4] = &v13;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v6, block);
  v7 = v14;
  v8 = v14[3];
  if (v8)
  {
    v9 = 0;
    *a3 = v8;
    v7[3] = 0;
  }

  else
  {
    v9 = FigSignalErrorAtGM();
    v11 = v14[3];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __videoReceiver_lowLatencyImageEnqueuedForImageQueueWithID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), 1, *(a1 + 48));
    _Block_release(*(a1 + 32));
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
}

const void *__videoReceiver_copyImageQueueReceiverWithID_block_invoke(uint64_t a1)
{
  result = videoReceiver_getImageQueueReceiverByIDOnSyncQueue();
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __videoReceiver_createDataQueue_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFArrayAppendValue(*(*(a1 + 40) + 64), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __videoReceiver_createDataChannelResource_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[34];
  if (v3)
  {
    v3(a1[5], a1[6], v2[35], 0);
    v2 = a1[4];
  }

  v4 = v2[53];
  if (v4)
  {
    (*(v4 + 16))(v4, a1[5], a1[6], 0);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

void __videoReceiver_announceDataChannelResourceRemoval_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[34];
  if (v3)
  {
    v3(a1[5], a1[6], v2[35], 1);
    v2 = a1[4];
  }

  v4 = v2[53];
  if (v4)
  {
    (*(v4 + 16))(v4, a1[5], a1[6], 1);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

dispatch_queue_t __vr_copyGlobalNotificationQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.videoreceiver.notificationqueue", 0);
  vr_copyGlobalNotificationQueue_sCommonVideoReceiverForBufferDeliveryNotificationQueue = result;
  return result;
}

uint64_t fvr_isAllowedToLog(uint64_t a1, int a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 4) == a2 && *a1)
  {
    v5 = *(a1 + 16) + 1;
    *(a1 + 16) = v5;
    if (!a2 || v5 > *(a1 + 32) && UpTimeNanoseconds < *(a1 + 24) + *(a1 + 8))
    {
      return 0;
    }

    *(a1 + 8) = UpTimeNanoseconds;
  }

  else
  {
    *(a1 + 4) = a2;
    *(a1 + 8) = UpTimeNanoseconds;
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 20) = v7;
  }

  return 1;
}

void __videoReceiver_copyTaggedBufferGroupDependentResourcesAndSamplingEventIdentifierForTimeIfAvailableOtherwiseLastReturnedSample_block_invoke(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 92);
    *(v2 + 376) = *(a1 + 108);
    *(v2 + 360) = v3;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 384);
    *(v5 + 384) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 392);
    v9 = *(a1 + 48);
    *(v7 + 392) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 400);
    v12 = *(a1 + 56);
    *(v10 + 400) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }
}

__n128 __videoReceiver_updateActiveConfigurationForHostTimeIfNecessary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  time1 = *(a1 + 48);
  v6 = *(v2 + 116);
  if ((CMTimeCompare(&time1, &v6) & 0x80000000) == 0)
  {
    v4 = *(a1 + 32);
    *(v4 + 88) = 1;
    v5 = *(a1 + 48);
    *(v4 + 108) = *(a1 + 64);
    *(v4 + 92) = v5;
    videoReceiver_activateReceiverConfigurationOnSyncQueue(*(a1 + 40));
  }

  return result;
}

const __CFArray *__videoReceiver_createConformedPixelBufferWithClientSpecifiedAttributes_block_invoke(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = *(*(a1 + 40) + 464);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 464), i);
    if (CMTagCollectionContainsTagsOfCollection(*(a1 + 48), ValueAtIndex))
    {
      result = CFArrayGetValueAtIndex(*(*(a1 + 40) + 472), i);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(*(a1 + 32) + 8) + 24) = result;
      return result;
    }
  }

  return result;
}

uint64_t samplingEventIdentifier_create(uint64_t a1, __int128 *a2, const void *a3, uint64_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (dword_1ED4CBE90 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a4)
  {
    samplingEventIdentifier_create_cold_3(&time);
    return LODWORD(time.value);
  }

  if (FigSamplingEventIdentifierGetTypeID_sRegisterSamplingEventIdentifierTypeOnce != -1)
  {
    samplingEventIdentifier_create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    samplingEventIdentifier_create_cold_2(&time);
    return LODWORD(time.value);
  }

  v9 = Instance;
  v10 = *a2;
  *(Instance + 40) = *(a2 + 2);
  *(Instance + 24) = v10;
  if (a3)
  {
    v11 = CFRetain(a3);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  *(v9 + 16) = v11;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  for (i = 0; v12 < i; i = CFArrayGetCount(a3))
  {
    *(CFArrayGetValueAtIndex(a3, v12++) + 26) = 1;
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    ;
  }

  result = 0;
  *a4 = v9;
  return result;
}

void *__videoReceiver_copyCachedTaggedBufferGroupAndRelatedObjectsIfAvailable_block_invoke(void *result)
{
  v1 = result[10];
  if ((*(v1 + 372) & 1) != 0 && *(v1 + 384))
  {
    v2 = result;
    *(*(result[4] + 8) + 24) = 1;
    v3 = *(result[10] + 384);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(v2[5] + 8) + 24) = v3;
    v4 = *(v2[6] + 8);
    v5 = v2[10];
    v6 = *(v5 + 360);
    *(v4 + 40) = *(v5 + 376);
    *(v4 + 24) = v6;
    result = *(v2[10] + 392);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v2[7] + 8) + 24) = result;
    if (v2[11])
    {
      result = FigCFWeakReferenceHolderCopyReferencedObject();
      *(*(v2[8] + 8) + 24) = result;
      if (!*(*(v2[8] + 8) + 24))
      {
        v7 = CFGetAllocator(v2[12]);
        v8 = *(v2[6] + 8);
        v9 = *(v2[8] + 8);
        v10 = *(v8 + 24);
        v11 = *(v8 + 40);
        result = samplingEventIdentifier_create(v7, &v10, 0, (v9 + 24));
      }
    }

    if (v2[13])
    {
      result = *(v2[10] + 400);
      if (result)
      {
        result = CFRetain(result);
      }

      *(*(v2[9] + 8) + 24) = result;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_55(int a1@<W8>, double a2@<D0>)
{
  LOWORD(STACK[0x2A6]) = 2082;
  STACK[0x2A8] = v5;
  LOWORD(STACK[0x2B0]) = v3;
  *(v4 + 34) = a2;
  LOWORD(STACK[0x2BA]) = 2080;
  *(v4 + 44) = v2;
  LOWORD(STACK[0x2C4]) = 1024;
  *(v4 + 54) = a1;
}

uint64_t OUTLINED_FUNCTION_2_54()
{

  return _os_log_send_and_compose_impl();
}

CFIndex OUTLINED_FUNCTION_5_41(const __CFString *a1, CFRange a2, uint64_t a3, uint64_t a4, uint64_t a5, UInt8 *a6, uint64_t a7, CFIndex *a8)
{
  a2.location = 0;

  return CFStringGetBytes(a1, a2, 0, 0x3Fu, 0, a6, 8, a8);
}

Float64 OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t timea, int time_8, int time_12)
{
  timea = *(v66 - 184);
  time_8 = *(v66 - 176);
  time_12 = v64;
  time_16 = v65;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

Float64 OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 timea, uint64_t time_16)
{
  timea = *a18;
  time_16 = *(a18 + 2);

  return CMTimeGetSeconds(&timea);
}

BOOL OUTLINED_FUNCTION_24_10(NSObject *a1)
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(a1, v3);
}

Float64 OUTLINED_FUNCTION_32_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CMTime *time, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 timea, uint64_t time_16)
{
  timea = *v62;
  time_16 = *(v62 + 2);

  return CMTimeGetSeconds(&timea);
}

void OUTLINED_FUNCTION_35_8()
{
  STACK[0x290] = *(v2 - 184);
  LODWORD(STACK[0x298]) = *(v2 - 176);
  LODWORD(STACK[0x29C]) = v0;
  STACK[0x2A0] = v1;
}

BOOL OUTLINED_FUNCTION_37_7(NSObject *a1)
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(a1, v3);
}

Float64 OUTLINED_FUNCTION_38_7@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, CMTime *time, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t timea, uint64_t time_8, uint64_t time_16)
{
  time_16 = a1;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_41_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{

  return videoReceiver_copyOutputQueuesResourceAndStatusFromConfiguration(a1, a2, (a4 + 24), (v45 + 24), (v46 + 24), (v47 + 24), a3, &a45, &a44);
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_53_5()
{
  LOWORD(STACK[0x2A6]) = 2082;
  STACK[0x2A8] = v0;
  LOWORD(STACK[0x2B0]) = 1024;
}

__n128 OUTLINED_FUNCTION_58_1()
{
  result = *&STACK[0x338];
  *&STACK[0x290] = *&STACK[0x338];
  STACK[0x2A0] = *(v0 - 152);
  return result;
}

char *OUTLINED_FUNCTION_59_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char __src)
{

  return strncpy((v61 - 240), &__src, 8uLL);
}

uint64_t OUTLINED_FUNCTION_60_6()
{
  *&STACK[0x290] = *v0;
  STACK[0x2A0] = *(v0 + 16);

  return CMBaseObjectGetDerivedStorage();
}

__n128 OUTLINED_FUNCTION_69_2()
{
  result = *(v0 + 152);
  *(v1 + 16) = *(v0 + 168);
  return result;
}

BOOL OUTLINED_FUNCTION_74_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, os_log_type_t type, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_75_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, os_log_type_t type, int a56)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_76_5()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_77_4(NSObject *a1)
{
  v2 = STACK[0x270];

  return os_log_type_enabled(a1, v2);
}

void OUTLINED_FUNCTION_78_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  _Block_object_dispose(&a55, 8);
}

uint64_t FigStreamTrackGetSyncPairID(uint64_t result)
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

uint64_t FigStreamTrackIsRendererTimebaseStarter(uint64_t a1)
{
  cf = 0;
  v1 = *(a1 + 112);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigBaseObject = FigRenderPipelineGetFigBaseObject(v2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 0;
  }

  if (v5(FigBaseObject, @"IsTimebaseStarter", AllocatorForMedia, &cf))
  {
    v6 = 0;
  }

  else
  {
    v6 = cf == *MEMORY[0x1E695E4D0];
  }

  v7 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigStreamTrack_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackID = result;
  return result;
}

uint64_t FigStreamTrackCreate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, const void *a6, char a7, int a8, uint64_t a9, const void *a10, uint64_t *a11)
{
  if (!a3)
  {
    FigStreamTrackCreate_cold_2(&v39);
    return v39;
  }

  MEMORY[0x19A8D3660](&FigStreamTrackGetTypeID_sFigStreamTrackRegisterOnce, FigStreamTrack_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamTrackCreate_cold_1(&v38);
    return v38;
  }

  v19 = Instance;
  *(Instance + 32) = a2;
  v20 = MEMORY[0x1E6960C70];
  *(Instance + 44) = a3;
  v37 = *v20;
  *(Instance + 144) = *v20;
  v21 = *(v20 + 2);
  *(Instance + 160) = v21;
  *(Instance + 208) = v37;
  *(Instance + 224) = v21;
  *(Instance + 232) = v37;
  *(Instance + 248) = v21;
  *(Instance + 256) = v37;
  *(Instance + 272) = v21;
  *(Instance + 304) = v21;
  *(Instance + 288) = v37;
  v22 = MEMORY[0x1E6960CC0];
  v23 = *MEMORY[0x1E6960CC0];
  *(Instance + 412) = *MEMORY[0x1E6960CC0];
  v24 = *(v22 + 16);
  *(Instance + 428) = v24;
  *(Instance + 352) = v24;
  *(Instance + 336) = v23;
  *(Instance + 440) = -1;
  *(Instance + 360) = FigGetUpTimeNanoseconds();
  *(v19 + 376) = v37;
  *(v19 + 392) = v21;
  v25 = MEMORY[0x1E6960C98];
  v26 = *(MEMORY[0x1E6960C98] + 16);
  *(v19 + 512) = *MEMORY[0x1E6960C98];
  *(v19 + 528) = v26;
  *(v19 + 544) = *(v25 + 32);
  *(v19 + 16) = a4;
  *(v19 + 40) = a5;
  if (a6)
  {
    v27 = CFRetain(a6);
  }

  else
  {
    v27 = 0;
  }

  *(v19 + 64) = v27;
  *(v19 + 196) = a7;
  *(v19 + 80) = a9;
  if (a10)
  {
    v28 = CFRetain(a10);
  }

  else
  {
    v28 = 0;
  }

  *(v19 + 456) = v28;
  IsIFrameOnly = 1;
  if (a8 <= 1935832171)
  {
    if (a8 == 1668047728 || a8 == 1835365473)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (a8 != 1935832172)
  {
    if (a8 == 1936684398)
    {
      goto LABEL_17;
    }

    if (a8 == 1986618469)
    {
      IsIFrameOnly = FigAlternateIsIFrameOnly(a10);
      goto LABEL_16;
    }

LABEL_21:
    *(v19 + 560) = v37;
    *(v19 + 576) = v21;
    v35 = 4294947616;
    goto LABEL_22;
  }

LABEL_16:
  *(v19 + 200) = IsIFrameOnly;
LABEL_17:
  *(v19 + 560) = v37;
  *(v19 + 576) = v21;
  *(v19 + 48) = a8;
  AllocatorForMedia = FigGetAllocatorForMedia();
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v32 = CMBufferQueueCreate(AllocatorForMedia, 0, CallbacksForUnsortedSampleBuffers, (v19 + 88));
  if (v32)
  {
    v35 = v32;
    goto LABEL_22;
  }

  v33 = FigGetAllocatorForMedia();
  v34 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v35 = CMBufferQueueCreate(v33, 0, v34, (v19 + 96));
  if (v35)
  {
LABEL_22:
    CFRelease(v19);
    return v35;
  }

  *a11 = v19;
  return v35;
}

__n128 FigStreamTrackGetRecentSampleEndTimeForTrack@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v2 + 16);
  if (a1)
  {
    v4 = 560;
    if ((*(a1 + 572) & 1) == 0)
    {
      v4 = 208;
    }

    v5 = (a1 + v4);
    result = *v5;
    *a2 = *v5;
    *(a2 + 16) = v5[1].n128_u64[0];
  }

  return result;
}

__n128 FigStreamTrackUpdateRecentSampleEndTimeForTrack(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 232);
    *(a1 + 560) = result;
    *(a1 + 576) = *(a1 + 248);
  }

  return result;
}

void *fst_finalize(void *a1)
{
  FigFormatDescriptionRelease();
  v2 = a1[56];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[57];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[60];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[50];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[12];
  if (v10)
  {
    CFRelease(v10);
  }

  return memset(a1 + 2, 3, 0x238uLL);
}

CFStringRef fst_copyFormattingDesc(uint64_t a1)
{
  v19 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = v2 >> 24;
  v4 = MEMORY[0x1E69E9830];
  if ((v2 & 0x80000000) != 0)
  {
    v5 = __maskrune(HIBYTE(*(a1 + 48)), 0x40000uLL);
    LODWORD(v2) = *(a1 + 48);
  }

  else
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
  }

  v6 = MEMORY[0x1E695E480];
  v7 = BYTE2(v2);
  if (BYTE2(v2) > 0x7Fu)
  {
    v8 = __maskrune(BYTE2(v2), 0x40000uLL);
    LODWORD(v2) = *(a1 + 48);
  }

  else
  {
    v8 = *(v4 + 4 * BYTE2(v2) + 60) & 0x40000;
  }

  v9 = *v6;
  v10 = BYTE1(v2);
  if (BYTE1(v2) > 0x7Fu)
  {
    v11 = __maskrune(BYTE1(v2), 0x40000uLL);
    LOBYTE(v2) = *(a1 + 48);
  }

  else
  {
    v11 = *(v4 + 4 * BYTE1(v2) + 60) & 0x40000;
  }

  v12 = v2;
  if (v2 > 0x7Fu)
  {
    v13 = __maskrune(v2, 0x40000uLL);
  }

  else
  {
    v13 = *(v4 + 4 * v2 + 60) & 0x40000;
  }

  if (v11)
  {
    v14 = v10;
  }

  else
  {
    v14 = 46;
  }

  if (v8)
  {
    v15 = v7;
  }

  else
  {
    v15 = 46;
  }

  if (v5)
  {
    v16 = v3;
  }

  else
  {
    v16 = 46;
  }

  if (v13)
  {
    v17 = v12;
  }

  else
  {
    v17 = 46;
  }

  return CFStringCreateWithFormat(v9, 0, @"Track[%p] %d [%c%c%c%c]", a1, v19, v16, v15, v14, v17);
}

uint64_t FigSampleBufferProcessorCreateForMonochrome(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSampleBufferProcessorGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      *a2 = 0;
    }

    return v3;
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

void *sbp_monochrome_finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 0;
  return result;
}

__CFString *sbp_monochrome_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_Monochrome %p>", a1);
  return Mutable;
}

uint64_t sbp_monochrome_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  DerivedStorage[1] = a3;
  return 0;
}

uint64_t sbp_monochrome_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (ImageBuffer && (v5 = ImageBuffer, CVPixelBufferGetPixelFormatType(ImageBuffer) == 875704438) && !CVPixelBufferLockBaseAddress(v5, 0))
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v5, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, 1uLL);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, 1uLL);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v5, 1uLL);
    if (WidthOfPlane == BytesPerRowOfPlane >> 1)
    {
      memset(BaseAddressOfPlane, 136, 2 * WidthOfPlane * HeightOfPlane);
      v6 = 0;
    }

    else
    {
      v6 = FigSignalErrorAtGM();
    }

    CVPixelBufferUnlockBaseAddress(v5, 0);
  }

  else
  {
    v6 = FigSignalErrorAtGM();
  }

  if (*DerivedStorage)
  {
    (*DerivedStorage)(*(DerivedStorage + 8), v6, a2);
  }

  return v6;
}

uint64_t FigVideoReceiverForCALayerCommonCreateFigImageQueue(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  cf = 0;
  v12 = 0;
  if (!a3)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_3(v13);
    Mutable = 0;
LABEL_16:
    v9 = v13[0];
    goto LABEL_8;
  }

  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetStringIfPresent();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_2(v13);
    goto LABEL_16;
  }

  if (dword_1ED4CBE90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FPSupport_EnsureCAImageQueue(&cf, 0, 0, 0);
  if (!cf)
  {
    FigVideoReceiverForCALayerCommonCreateFigImageQueue_cold_1(v13);
    goto LABEL_16;
  }

  v7 = CFGetAllocator(a1);
  v8 = FigImageQueueCreateForCoreAnimationWithOptions(v7, cf, Mutable, &v12);
  if (v8)
  {
    v9 = v8;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v9 = 0;
    *a3 = v12;
    v12 = 0;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

uint64_t FigVideoReceiverCreateWithVideoLayer(const __CFAllocator *a1, void *a2, uint64_t a3, CFTypeRef *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  v40 = a2;
  values = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_14(&timebaseTime);
LABEL_54:
    value_low = LODWORD(timebaseTime.value);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_13(&timebaseTime);
    goto LABEL_54;
  }

  FigVideoReceiverGetClassID();
  IsReadyToActivateCallack = CMDerivedObjectCreate();
  if (IsReadyToActivateCallack)
  {
LABEL_31:
    value_low = IsReadyToActivateCallack;
    goto LABEL_32;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CFGetAllocator(cf);
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_2(&timebaseTime);
    goto LABEL_42;
  }

  v12 = LoggingIdentifierOfLength;
  v13 = CFStringCreateWithFormat(v10, 0, @"L/%@", LoggingIdentifierOfLength);
  if (!v13)
  {
    FigVideoReceiverCreateWithVideoLayer_cold_1(v12, &timebaseTime);
LABEL_42:
    value_low = LODWORD(timebaseTime.value);
    if (!LODWORD(timebaseTime.value))
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

  v14 = v13;
  if (CFStringGetCString(v13, (v9 + 8), 16, 0x600u))
  {
    value_low = 0;
  }

  else
  {
    value_low = FigSignalErrorAtGM();
  }

  CFRelease(v12);
  CFRelease(v14);
  if (!value_low)
  {
LABEL_10:
    FigDataChannelGroupCreateForUseCase(a1, 116, &values);
    v16 = MEMORY[0x1E695E9C0];
    v17 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0]);
    *(DerivedStorage + 144) = v17;
    FigDataChannelGroupsArrayCopyAsDictionary(v17, a1, (DerivedStorage + 152));
    v18 = CFArrayCreate(*MEMORY[0x1E695E480], &v40, 1, v16);
    *(DerivedStorage + 24) = v18;
    if (v18)
    {
      v19 = v18;
      Count = CFArrayGetCount(v18);
      if (Count >= 1)
      {
        v21 = Count;
        v22 = 0;
        do
        {
          CFArrayGetValueAtIndex(v19, v22);
          CMNotificationCenterGetDefaultLocalCenter();
          IsReadyToActivateCallack = FigNotificationCenterAddWeakListener();
          if (IsReadyToActivateCallack)
          {
            goto LABEL_31;
          }
        }

        while (v21 != ++v22);
      }

      v23 = FigSimpleMutexCreate();
      *(DerivedStorage + 136) = v23;
      if (v23)
      {
        Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(DerivedStorage + 128) = Mutable;
        if (Mutable)
        {
          v25 = FigSimpleMutexCreate();
          *(DerivedStorage + 232) = v25;
          if (v25)
          {
            v26 = FigSimpleMutexCreate();
            *(DerivedStorage + 280) = v26;
            if (v26)
            {
              v27 = FigSimpleMutexCreate();
              *(DerivedStorage + 296) = v27;
              if (v27)
              {
                v28 = FigSimpleMutexCreate();
                *(DerivedStorage + 256) = v28;
                if (v28)
                {
                  v29 = FigSimpleMutexCreate();
                  *(DerivedStorage + 168) = v29;
                  if (v29)
                  {
                    v30 = FigSimpleMutexCreate();
                    *(DerivedStorage + 200) = v30;
                    if (v30)
                    {
                      v31 = FigDispatchQueueCreateWithPriority();
                      *(DerivedStorage + 32) = v31;
                      if (v31)
                      {
                        HostTimeClock = CMClockGetHostTimeClock();
                        IsReadyToActivateCallack = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (DerivedStorage + 40));
                        if (!IsReadyToActivateCallack)
                        {
                          v33 = *(DerivedStorage + 40);
                          timebaseTime = **&MEMORY[0x1E6960CC0];
                          immediateSourceTime = timebaseTime;
                          IsReadyToActivateCallack = CMTimebaseSetRateAndAnchorTime(v33, 1.0, &timebaseTime, &immediateSourceTime);
                          if (!IsReadyToActivateCallack)
                          {
                            IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerCreate(a1, 0, *(DerivedStorage + 40), 0, (DerivedStorage + 48));
                            if (!IsReadyToActivateCallack)
                            {
                              memset(&v37, 0, sizeof(v37));
                              CMTimeMake(&v37, 50, 1000);
                              v34 = *(DerivedStorage + 48);
                              timebaseTime = v37;
                              IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v34, &timebaseTime, videoReceiverForCA_configurationIsReadyCallback, cf);
                              if (!IsReadyToActivateCallack)
                              {
                                IsReadyToActivateCallack = FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), videoReceiverForCA_schedulerDidRemoveConfigurationCallback, cf);
                                if (!IsReadyToActivateCallack)
                                {
                                  if (dword_1ED4CBE90)
                                  {
                                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                                  }

                                  value_low = 0;
                                  *a4 = cf;
                                  cf = 0;
                                  goto LABEL_35;
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_31;
                      }

                      FigVideoReceiverCreateWithVideoLayer_cold_3(&timebaseTime);
                    }

                    else
                    {
                      FigVideoReceiverCreateWithVideoLayer_cold_4(&timebaseTime);
                    }
                  }

                  else
                  {
                    FigVideoReceiverCreateWithVideoLayer_cold_5(&timebaseTime);
                  }
                }

                else
                {
                  FigVideoReceiverCreateWithVideoLayer_cold_6(&timebaseTime);
                }
              }

              else
              {
                FigVideoReceiverCreateWithVideoLayer_cold_7(&timebaseTime);
              }
            }

            else
            {
              FigVideoReceiverCreateWithVideoLayer_cold_8(&timebaseTime);
            }
          }

          else
          {
            FigVideoReceiverCreateWithVideoLayer_cold_9(&timebaseTime);
          }
        }

        else
        {
          FigVideoReceiverCreateWithVideoLayer_cold_10(&timebaseTime);
        }
      }

      else
      {
        FigVideoReceiverCreateWithVideoLayer_cold_11(&timebaseTime);
      }
    }

    else
    {
      FigVideoReceiverCreateWithVideoLayer_cold_12(&timebaseTime);
    }

    goto LABEL_54;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (values)
  {
    CFRelease(values);
  }

  return value_low;
}

uint64_t videoReceiverForCA_schedulerDidRemoveConfigurationCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {

    return FigSimpleMutexUnlock();
  }

  else
  {
    v6 = FigCFEqual();
    result = FigSimpleMutexUnlock();
    if (!v6)
    {

      return videoReceiverForCA_announceRemovalOfConfiguration(a3, a2);
    }
  }

  return result;
}

void videoReceiverForCA_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v1 = *(DerivedStorage + 48);
  v20 = *MEMORY[0x1E6960C70];
  v21 = *(MEMORY[0x1E6960C70] + 16);
  FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(v1, &v20, 0, 0);
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 24));
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        CFArrayGetValueAtIndex(v2, i);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
      }
    }
  }

  v6 = *(DerivedStorage + 88);
  v7 = *(DerivedStorage + 96);
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 96) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(*(DerivedStorage + 48), 0, 0);
  FigVideoReceiverConfigurationSchedulerReset(*(DerivedStorage + 48));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 136))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 136) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }

  v10 = *(DerivedStorage + 128);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 128) = 0;
  }

  v11 = *(DerivedStorage + 144);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 144) = 0;
  }

  v12 = *(DerivedStorage + 152);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 152) = 0;
  }

  if (*(DerivedStorage + 168))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 168) = 0;
  }

  v13 = *(DerivedStorage + 176);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 176) = 0;
  }

  v14 = *(DerivedStorage + 184);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 184) = 0;
  }

  if (*(DerivedStorage + 200))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 216) = 0;
  _Block_release(*(DerivedStorage + 208));
  *(DerivedStorage + 208) = 0;
  v15 = *(DerivedStorage + 224);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 224) = 0;
  }

  if (*(DerivedStorage + 232))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 232) = 0;
  }

  *(DerivedStorage + 240) = 0;
  v16 = *(DerivedStorage + 248);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 248) = 0;
  }

  if (*(DerivedStorage + 256))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 256) = 0;
  }

  v17 = *(DerivedStorage + 272);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 272) = 0;
  }

  if (*(DerivedStorage + 280))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 280) = 0;
  }

  v18 = *(DerivedStorage + 288);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 288) = 0;
  }

  if (*(DerivedStorage + 296))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 296) = 0;
  }

  v19 = *(DerivedStorage + 32);
  if (v19)
  {
    dispatch_release(v19);
    *(DerivedStorage + 32) = 0;
  }

  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, *(DerivedStorage + 24));
  *(DerivedStorage + 24) = 0;
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, *(DerivedStorage + 264));
  *(DerivedStorage + 264) = 0;
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }
}