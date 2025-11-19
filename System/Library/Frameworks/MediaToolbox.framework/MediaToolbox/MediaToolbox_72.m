uint64_t mepe_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexDestroy();
}

uint64_t mepe_setImmutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t mepe_isMutable()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

CFTypeRef mepe_copySessionID()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t mepe_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    mepe_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t mepe_getMediaTime@<X0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a1 = *(DerivedStorage + 32);
  *(a1 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t mepe_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    mepe_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

void FigHTTPRequestCommonMandatoryRequestStart()
{
  v1 = 0;
  v2 = &v1;
  v3 = 0x2020000000;
  v4 = 0;
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHTTPRequestCommonMandatoryRequestStart_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v1;
  dispatch_sync(gMandatoryLevelQueue, block);
  if (*(v2 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  _Block_object_dispose(&v1, 8);
}

void sub_19680CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void figHTTPRequestTrackMandatoryRunOnce()
{
  gMandatoryLevelQueue = dispatch_queue_create("com.apple.coremedia.networkmandatoryactivity", 0);
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, gMandatoryLevelQueue);
  gMandatoryActivityIdleTimer = v0;
  v1 = dispatch_time(0, 0x7FFFFFFFFFFFFFFFLL);
  dispatch_source_set_timer(v0, v1, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(gMandatoryActivityIdleTimer, figHTTPRequestMandatoryIdleTimer);
  v2 = gMandatoryActivityIdleTimer;

  dispatch_resume(v2);
}

void __FigHTTPRequestCommonMandatoryRequestStart_block_invoke(uint64_t a1)
{
  v2 = ++gActiveMandatoryConnectionCount;
  ++gMandatoryConnectionCount;
  if (gMandatoryConnectionCountAtIdle)
  {
    v3 = gMandatoryActivityIdleTimer;
    v4 = dispatch_time(0, 0x7FFFFFFFFFFFFFFFLL);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    gMandatoryConnectionCountAtIdle = 0;
    v2 = gActiveMandatoryConnectionCount;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void FigHTTPRequestCommonMandatoryRequestFinish()
{
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  v0 = gMandatoryLevelQueue;

  dispatch_async(v0, &__block_literal_global_118);
}

void __FigHTTPRequestCommonMandatoryRequestFinish_block_invoke()
{
  if (!--gActiveMandatoryConnectionCount)
  {
    gMandatoryConnectionCountAtIdle = gMandatoryConnectionCount;
    v1 = gMandatoryActivityIdleTimer;
    v2 = dispatch_time(0, 100000000);

    dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t FigHTTPRequestPerformingMandatoryActivity()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  MEMORY[0x19A8D3660](&gHTTPRequestTrackMandatoryInit, figHTTPRequestTrackMandatoryRunOnce);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigHTTPRequestPerformingMandatoryActivity_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v3;
  dispatch_sync(gMandatoryLevelQueue, block);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19680CD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigHTTPRequestGetClassID()
{
  if (_MergedGlobals_133 != -1)
  {
    FigHTTPRequestGetClassID_cold_1();
  }

  return qword_1ED4CBAB8;
}

uint64_t FigHTTPRequestGetClassIDDispatchOnce(uint64_t *a1)
{
  result = FigHTTPRequestNSURLSessionGetClassID();
  *a1 = result;
  return result;
}

uint64_t figHTTPRequestMandatoryIdleTimer()
{
  if (!gActiveMandatoryConnectionCount && gMandatoryConnectionCountAtIdle == gMandatoryConnectionCount)
  {
    gMandatoryConnectionCountAtIdle = 0;
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t RegisterFigReportingModeratorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLSerializerCreateForByteStream(uint64_t a1, const void *a2, void *a3)
{
  v5 = FigTTMLGetLibXMLAccess();
  if (!a2)
  {
    FigTTMLSerializerCreateForByteStream_cold_4(&v12);
LABEL_13:
    v10 = v12;
    goto LABEL_7;
  }

  if (!a3)
  {
    FigTTMLSerializerCreateForByteStream_cold_3(&v12);
    a2 = 0;
    goto LABEL_13;
  }

  FigTTMLSerializerGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v10 = v6;
    a2 = 0;
    goto LABEL_7;
  }

  FigBytePumpGetFigBaseObject(0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = CFRetain(a2);
  v8 = (*(v5 + 136))(figTTMLSerializerForByteStream_WriteToByteStream, figTTMLSerializerForByteStream_CloseByteStream, 0, 0);
  a2 = v8;
  if (!v8)
  {
    FigTTMLSerializerCreateForByteStream_cold_2(&v12);
    goto LABEL_13;
  }

  v9 = (*(v5 + 144))(v8);
  if (!v9)
  {
    FigTTMLSerializerCreateForByteStream_cold_1(&v12);
    goto LABEL_13;
  }

  v10 = 0;
  a2 = 0;
  DerivedStorage[1] = v9;
  *a3 = 0;
LABEL_7:
  (*(v5 + 152))(a2);
  (*(v5 + 160))(0);
  return v10;
}

uint64_t figTTMLSerializerForByteStream_WriteToByteStream(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (CMByteStreamAppend())
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t figTTMLSerializerForByteStream_Invalidate(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigTTMLGetLibXMLAccess();
  if (FigAtomicCompareAndSwap32())
  {
    (*(v2 + 176))(*(DerivedStorage + 8));
    (*(v2 + 160))(*(DerivedStorage + 8));
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v4 = CMBaseObject;
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }
  }

  return 0;
}

void figTTMLSerializerForByteStream_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figTTMLSerializerForByteStream_Invalidate(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = 0;
  v4 = DerivedStorage + 3;
  do
  {
    free(v4[v3]);
    v3 += 2;
  }

  while (v3 != 32);
}

CFStringRef figTTMLSerializerForByteStream_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLSerializerForByteStream: %@", *DerivedStorage);
}

uint64_t figTTMLSerializerForByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        FigBytePumpGetFigBaseObject(a1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFEqual(a2, @"UseSingleQuote"))
        {
          result = 0;
          v8 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 16))
          {
            v8 = MEMORY[0x1E695E4C0];
          }

          v9 = *v8;
        }

        else
        {
          v9 = 0;
          result = 4294954512;
        }

        *a4 = v9;
      }

      else
      {
        figTTMLSerializerForByteStream_CopyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      figTTMLSerializerForByteStream_CopyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLSerializerForByteStream_CopyProperty_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t figTTMLSerializerForByteStream_SetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!cf1)
  {
    figTTMLSerializerForByteStream_SetProperty_cold_4(&v11);
    return v11;
  }

  if (!a3)
  {
    figTTMLSerializerForByteStream_SetProperty_cold_3(&v11);
    return v11;
  }

  if (CFEqual(cf1, @"UseSingleQuote"))
  {
    FigBytePumpGetFigBaseObject(a1);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = FigTTMLGetLibXMLAccess();
    v7 = CFGetTypeID(a3);
    if (v7 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(a3);
      if (Value)
      {
        v9 = 39;
      }

      else
      {
        v9 = 34;
      }

      if ((*(v6 + 224))(*(DerivedStorage + 8), v9) != -1)
      {
        result = 0;
        *(DerivedStorage + 16) = Value;
        return result;
      }

      figTTMLSerializerForByteStream_SetProperty_cold_2(&v11);
    }

    else
    {
      figTTMLSerializerForByteStream_SetProperty_cold_1(&v11);
    }

    return v11;
  }

  return 4294954512;
}

uint64_t figTTMLSerializerForByteStream_StartElement(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigTTMLGetLibXMLAccess();
  if (CFEqual(a2, @"tt") && (*(v5 + 168))(*(DerivedStorage + 8), "1.0", 0, 0) == -1)
  {
    v10 = 286;
    goto LABEL_8;
  }

  v6 = *(v5 + 192);
  v7 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  if (v6(v7, XMLStringFromCFString) == -1)
  {
    v10 = 290;
LABEL_8:
    figTTMLSerializerForByteStream_StartElement_cold_1(v10, &v11);
    return v11;
  }

  return 0;
}

uint64_t figTTMLSerializerForByteStream_SetAttribute(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(FigTTMLGetLibXMLAccess() + 232);
  v8 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  v10 = getXMLStringFromCFString(a1, a3);
  if (v7(v8, XMLStringFromCFString, v10) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_SetAttribute_cold_1(&v12);
  return v12;
}

uint64_t figTTMLSerializerForByteStream_EndElement(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigTTMLGetLibXMLAccess();
  if ((*(v2 + 200))(*(DerivedStorage + 8)) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_EndElement_cold_1(&v4);
  return v4;
}

uint64_t figTTMLSerializerForByteStream_AddText(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(FigTTMLGetLibXMLAccess() + 208);
  v6 = *(DerivedStorage + 8);
  XMLStringFromCFString = getXMLStringFromCFString(a1, a2);
  if (v5(v6, XMLStringFromCFString) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_AddText_cold_1(&v9);
  return v9;
}

uint64_t figTTMLSerializerForByteStream_Flush(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigTTMLGetLibXMLAccess();
  if ((*(v2 + 216))(*(DerivedStorage + 8)) != -1)
  {
    return 0;
  }

  figTTMLSerializerForByteStream_Flush_cold_1(&v4);
  return v4;
}

const char *getXMLStringFromCFString(uint64_t a1, const __CFString *a2)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 20);
  *(DerivedStorage + 20) = v5 + 1;
  v6 = v5 & 0xF;
  Length = CFStringGetLength(a2);
  v8 = Length + 1;
  v9 = DerivedStorage + 16 * v6;
  while (1)
  {
    FigBytePumpGetFigBaseObject(a1);
    v10 = CMBaseObjectGetDerivedStorage() + 16 * v6;
    if (*(v10 + 32) < v8)
    {
      v11 = malloc_type_malloc(v8, 0x5CB30633uLL);
      if (v11)
      {
        v12 = v11;
        free(*(v10 + 24));
        *(v10 + 24) = v12;
        *(v10 + 32) = v8;
      }

      else
      {
        getXMLStringFromCFString_cold_1();
      }
    }

    if (CFStringGetCString(a2, *(v9 + 24), *(v9 + 32), 0x8000100u))
    {
      break;
    }

    v8 += Length;
    if (v8 > 16 * Length)
    {
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = *(v9 + 24);
LABEL_10:
  if (v13)
  {
    return v13;
  }

  else
  {
    return "";
  }
}

uint64_t AudioSampleBufferSplitterSetSplitMethod(_DWORD *a1, int a2)
{
  if (a1)
  {
    result = 0;
    *a1 = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    AudioSampleBufferSplitterSetSplitMethod_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 < 0)
    {
      AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 80) = a2;
    }
  }

  else
  {
    AudioSampleBufferSplitterSetMaxNumberOfSplitSampleBuffers_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval(uint64_t a1, __int128 *a2, CMTime *a3)
{
  if (!a1)
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_3(&time1);
    return LODWORD(time1.value);
  }

  if ((*(a2 + 3) & 0x1D) != 1)
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1 || (time1 = **&MEMORY[0x1E6960CC0], v9 = *a3, (CMTimeCompare(&time1, &v9) & 0x80000000) == 0))
  {
    AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval_cold_2(&time1);
    return LODWORD(time1.value);
  }

  result = 0;
  v7 = *a2;
  *(a1 + 20) = *(a2 + 2);
  *(a1 + 4) = v7;
  v8 = *&a3->value;
  *(a1 + 44) = a3->epoch;
  *(a1 + 28) = v8;
  return result;
}

uint64_t AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 4);
      *(a2 + 16) = *(a1 + 20);
      *a2 = v5;
    }

    v6 = 0;
    if (a3)
    {
      v7 = *(a1 + 28);
      *(a3 + 16) = *(a1 + 44);
      *a3 = v7;
    }
  }

  else
  {
    v10 = v3;
    v11 = v4;
    AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval_cold_1(&v9);
    return v9;
  }

  return v6;
}

CMTime *asbs_calculateNextCumulatedSegmentInterval@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v7 = *(a1 + 4);
  CMTimeSubtract(&v9, &lhs, &v7);
  lhs = **&MEMORY[0x1E6960CC0];
  v7 = v9;
  if (CMTimeCompare(&lhs, &v7) < 0)
  {
    lhs = v9;
    v7 = *(a1 + 28);
    v5 = CMTimeDivide() + 1;
  }

  else
  {
    v5 = 1;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *(a1 + 28);
  return CMTimeMultiply(a3, &lhs, v5);
}

BOOL asbs_SampleDurationIsCuriouslyShortOfItsExpectedDuration(CMTime *a1, uint64_t a2)
{
  memset(&v6, 0, sizeof(v6));
  v3 = *(a2 + 8);
  time = *a1;
  CMTimeConvertScale(&v6, &time, v3, kCMTimeRoundingMethod_RoundTowardZero);
  memset(&time, 0, sizeof(time));
  return !CMTimeDivide() && (time.flags & 0x1D) == 1 && time.value / *a2 >= 0.96;
}

uint64_t OUTLINED_FUNCTION_0_200()
{
  *(v0 - 256) = *(v0 - 144);
  *(v0 - 240) = *(v0 - 128);
  return v0 - 224;
}

__n128 OUTLINED_FUNCTION_1_181()
{
  result = *v0;
  *(v1 - 208) = v0[1].n128_u64[0];
  *(v1 - 224) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_5_126()
{
  result = *(v0 - 224);
  *(v0 - 256) = result;
  *(v0 - 240) = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_10_74()
{
  result = *(v0 - 144);
  *(v0 - 224) = result;
  *(v0 - 208) = *(v0 - 128);
  return result;
}

__n128 OUTLINED_FUNCTION_11_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __n128 a39, uint64_t a40)
{
  result = a39;
  *(v40 - 224) = a39;
  *(v40 - 208) = a40;
  return result;
}

__n128 OUTLINED_FUNCTION_13_54()
{
  result = *(v0 + 52);
  *(v1 - 224) = result;
  *(v1 - 208) = *(v0 + 68);
  return result;
}

__n128 OUTLINED_FUNCTION_15_55()
{
  result = *(v1 - 144);
  *(v0 + 52) = result;
  *(v0 + 68) = *(v1 - 128);
  return result;
}

__n128 OUTLINED_FUNCTION_16_52()
{
  result = *(v0 - 224);
  *(v0 - 144) = result;
  *(v0 - 128) = *(v0 - 208);
  return result;
}

void OUTLINED_FUNCTION_17_46()
{

  CFArrayAppendValue(v0, v1);
}

uint64_t __FigBufferedAirPlayOutputProxyCreateFactory_block_invoke(uint64_t a1)
{
  qword_1ED4CBAC8 = CFDictionaryCreateMutable(*(a1 + 32), 0, 0, MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  qword_1ED4CBAD0 = result;
  return result;
}

uint64_t RegisterFigStaticMetadataSupplierType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigStaticMetadataSupplierGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStaticMetadataSupplierGetClassID_sRegisterFigStaticMetadataSupplierTypeOnce, RegisterFigStaticMetadataSupplierType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStartMonitoringNetworkActivity()
{
  v0 = +[CMNetworkActivityMonitor sharedActivityMonitor];

  return [v0 beginMonitoring];
}

uint64_t RegisterFigVirtualDisplaySinkType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySinkGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplaySinkGetClassID_sRegisterFigVirtualDisplaySinkTypeOnce, RegisterFigVirtualDisplaySinkType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVirtualDisplaySinkFileWriterCreate(uint64_t a1, void *a2)
{
  FigVirtualDisplaySinkGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 28) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 44) = *(v5 + 16);
    v6 = *MEMORY[0x1E695F060];
    *(DerivedStorage + 80) = *MEMORY[0x1E695F060];
    *(DerivedStorage + 96) = v6;
    *(DerivedStorage + 112) = FVDUtilsCreateDisplayUUID();
    *a2 = 0;
  }

  return v3;
}

uint64_t fileWriterSink_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
  }

  return 0;
}

void fileWriterSink_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!*v1)
  {
    *v1 = 1;
  }

  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[7] = 0;
  }

  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  v4 = DerivedStorage[14];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[14] = 0;
  }

  v5 = DerivedStorage[8];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[8] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    _Block_release(v6);
    DerivedStorage[9] = 0;
  }

  v7 = DerivedStorage[1];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[1] = 0;
  }
}

__CFString *fileWriterSink_CopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVirtualDisplaySink %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fileWriterSink_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954511;
  }

  else if (CFEqual(@"Type", a2))
  {
    v7 = CFRetain(@"FileWriter");
    result = 0;
    *a4 = v7;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v11 = *MEMORY[0x1E695F060] == *(DerivedStorage + 80);
    v12 = v9 == *(DerivedStorage + 88);
    if (v11 && v12)
    {
      v13 = 720.0;
    }

    else
    {
      v13 = *(DerivedStorage + 88);
    }

    if (v11 && v12)
    {
      v14 = 1280.0;
    }

    else
    {
      v14 = *(DerivedStorage + 80);
    }

    if (fileWriterSink_getPreferredVirtualDisplaySize_sCheckPrefsOnce != -1)
    {
      fileWriterSink_CopyProperty_cold_1();
    }

    if (v10 != *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0 || v9 != *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1)
    {
      v13 = *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1;
      v14 = *&fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0;
    }

    if (CFEqual(a2, @"deviceInfo"))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v28.width = v14;
      v28.height = v13;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v28);
      CFDictionarySetValue(Mutable, @"displaySizeInPixels", DictionaryRepresentation);
      CFDictionarySetValue(Mutable, @"overscanned", *MEMORY[0x1E695E4C0]);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }

      result = 0;
      *a4 = Mutable;
    }

    else if (CFEqual(a2, @"displayInfo"))
    {
      value[0] = 0;
      cf = 0;
      v26 = 0;
      v24 = 0;
      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      BooleanWithDefault = FigVirtualDisplayPrefsGetBooleanWithDefault(@"file_mirroring_supports_rotation", 0);
      v19 = *(DerivedStorage + 120);
      if (v19)
      {
        v20 = CFDictionaryGetValue(v19, @"HDRMode");
        FigDisplayModes_BuildColorAndTimingModes(v14, v13, 0, *(DerivedStorage + 128), 0x64u, 0, 0, 0, &v24);
        FigDisplayModes_BuildColorModesFromHDRMode(v20, *(DerivedStorage + 120), 0, 0x64u, &cf);
      }

      else
      {
        FigDisplayModes_BuildColorAndTimingModes(v14, v13, 0, *(DerivedStorage + 128), 0x64u, 0, 0, &cf, &v24);
      }

      if (cf)
      {
        if (v24)
        {
          FigDisplayModes_CreateColorAndTimingModesArraysWithPreferredMode(cf, v24, value, &v26);
          if (value[0])
          {
            if (v26)
            {
              CFDictionarySetValue(v17, @"colorModes", value[0]);
              CFDictionarySetValue(v17, @"timingModes", v26);
            }
          }
        }
      }

      v21 = MEMORY[0x1E695E4C0];
      if (BooleanWithDefault)
      {
        v21 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(v17, @"rotationSupport", *v21);
      v22 = *(DerivedStorage + 112);
      if (v22)
      {
        CFDictionarySetValue(v17, @"displayUUID", v22);
      }

      if (v10 != *(DerivedStorage + 96) || v9 != *(DerivedStorage + 104))
      {
        FigCFDictionarySetCGSize();
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (value[0])
      {
        CFRelease(value[0]);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      result = 0;
      *a4 = v17;
    }

    else
    {
      return 4294954512;
    }
  }

  return result;
}

uint64_t fileWriterSink_SetProperty(unint64_t a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    if (CFEqual(@"Destination", a2))
    {
      if (!a3)
      {
        return 4294954516;
      }

      v9 = CFGetTypeID(a3);
      if (v9 != CFStringGetTypeID())
      {
        return 4294954516;
      }

      v10 = *(v8 + 7);
      *(v8 + 7) = a3;
      CFRetain(a3);
      if (v10)
      {
        CFRelease(v10);
      }
    }

    else if (CFEqual(@"deviceInfo", a2))
    {
      if (a3)
      {
        v11 = CFGetTypeID(a3);
        if (v11 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(a3, @"displaySizeInPixels");
          if (Value)
          {
            v13 = MEMORY[0x1E695F060];
            v17 = *MEMORY[0x1E695F060];
            CGSizeMakeWithDictionaryRepresentation(Value, &v17);
            if (v17.width != *v13 || v17.height != v13[1])
            {
              *(v8 + 5) = v17;
            }
          }

          FigCFDictionaryGetCGSizeIfPresent();
        }
      }
    }

    else if (CFEqual(@"LogPrefix", a2))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFStringGetTypeID() && !*(v8 + 1))
        {
          LogPrefix = FVDUtilsCreateLogPrefix(a3, a1);
          result = 0;
          *(v8 + 1) = LogPrefix;
          return result;
        }
      }
    }

    else if (!CFEqual(@"fps", a2) && !CFEqual(@"fpsInfo", a2) && !CFEqual(@"timestamps", a2) && !CFEqual(@"timestampInfo", a2) && !CFEqual(@"useEncryption", a2) && !CFEqual(@"submitSurfaceTimestamp", a2))
    {
      if (CFEqual(@"extraInfo", a2))
      {
        return 0;
      }

      else
      {
        return 4294954512;
      }
    }

    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void __fileWriterSink_getPreferredVirtualDisplaySize_block_invoke()
{
  v0 = FigVirtualDisplayPrefsCopyValue(@"file_mirroring_resolution");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    IntValue = 0.0;
    if (v2 == CFArrayGetTypeID())
    {
      v4 = 0.0;
      if (CFArrayGetCount(v1) >= 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFStringGetTypeID())
          {
            IntValue = CFStringGetIntValue(v6);
          }
        }

        v8 = CFArrayGetValueAtIndex(v1, 1);
        if (v8)
        {
          v9 = v8;
          v10 = CFGetTypeID(v8);
          if (v10 == CFStringGetTypeID())
          {
            v4 = CFStringGetIntValue(v9);
          }
        }
      }
    }

    else
    {
      v4 = 0.0;
    }

    CFRelease(v1);
    if (IntValue > 0.0 && v4 > 0.0)
    {
      if (IntValue <= v4)
      {
        *&v11 = v4;
      }

      else
      {
        *&v11 = IntValue;
      }

      fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_0 = v11;
      if (IntValue >= v4)
      {
        *&v12 = v4;
      }

      else
      {
        *&v12 = IntValue;
      }

      fileWriterSink_getPreferredVirtualDisplaySize_prefScreenSize_1 = v12;
    }
  }
}

uint64_t fileWriterSink_Start(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetDoubleIfPresent();
  FigVirtualDisplayPrefsGetDoubleWithDefault(@"file_mirroring_moof_interval");
  v40 = v6;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954510;
    if (a3)
    {
      goto LABEL_33;
    }

    return v24;
  }

  v9 = Mutable;
  CFDictionaryAddValue(Mutable, @"AssetWriter_RealTime", *MEMORY[0x1E695E4D0]);
  HasPrefix = CFStringHasPrefix(*(DerivedStorage + 56), @"file://");
  v11 = *(DerivedStorage + 56);
  if (HasPrefix)
  {
    v12 = CFURLCreateWithString(v7, v11, 0);
  }

  else
  {
    v12 = CFURLCreateWithFileSystemPath(v7, v11, kCFURLPOSIXPathStyle, 0);
  }

  v13 = v12;
  if (!v12)
  {
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954510;
    goto LABEL_32;
  }

  memset(&v45, 0, sizeof(v45));
  if (!CFURLGetFileSystemRepresentation(v12, 1u, buffer, 1024))
  {
    v42 = 0;
    v41 = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    v37 = a3;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v24 = 4294954516;
LABEL_38:
    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v37;
    goto LABEL_31;
  }

  if (!stat(buffer, &v45))
  {
    if (removefile(buffer, 0, 0))
    {
      v37 = a3;
      v42 = 0;
      v41 = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = *__error();
      if (v24)
      {
        goto LABEL_38;
      }
    }
  }

  v14 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 28) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 44) = *(v14 + 16);
  Current = CFRunLoopGetCurrent();
  v16 = FigAssetWriterCreateWithURL(v7, v13, Current, v9, 0, (DerivedStorage + 16));
  if (!v16)
  {
    if (v40 <= 0.49)
    {
      goto LABEL_15;
    }

    CMTimeMakeWithSeconds(buffer, v40, 1000);
    v17 = CMTimeCopyAsDictionary(buffer, v7);
    v18 = *(DerivedStorage + 16);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v19)
    {
      if (!v19(v18, @"MovieFragmentCheckpointInterval", v17))
      {
        if (v17)
        {
LABEL_14:
          CFRelease(v17);
        }

LABEL_15:
        v20 = *(DerivedStorage + 16);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v22 = v21(v20, 1986618469, DerivedStorage + 24);
          if (!v22)
          {
            *(DerivedStorage + 128) = 60;
            FigCFDictionaryGetInt32IfPresent();
            if (a2)
            {
              Value = CFDictionaryGetValue(a2, @"HDRInfo");
              *(DerivedStorage + 120) = Value;
              if (Value)
              {
                CFRetain(Value);
              }
            }

            v24 = 0;
            goto LABEL_31;
          }

          v24 = v22;
          v25 = a3;
        }

        else
        {
          v25 = a3;
          v24 = 4294954514;
        }

        v44 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        goto LABEL_30;
      }

      v36 = a3;
    }

    else
    {
      v36 = a3;
    }

    v44 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a3 = v36;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = v16;
  v25 = a3;
  v44 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
LABEL_30:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  a3 = v25;
LABEL_31:
  CFRelease(v13);
LABEL_32:
  CFRelease(v9);
  if (a3)
  {
LABEL_33:
    v32 = *(DerivedStorage + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fileWriterSink_Start_block_invoke;
    block[3] = &unk_1E7496120;
    block[4] = a3;
    v39 = v24;
    dispatch_async(v32, block);
  }

  return v24;
}

uint64_t fileWriterSink_Stop(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(DerivedStorage + 24);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v7 || v7(v5, v6))
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = v4[2];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v10)
  {
    v5 = v10(v9);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 4294954514;
  }

  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  v12 = v4[2];
  if (v12)
  {
    CFRelease(v12);
    v4[2] = 0;
  }

LABEL_12:
  v13 = v4[15];
  if (v13)
  {
    CFRelease(v13);
    v4[15] = 0;
  }

  if (a2)
  {
    v14 = v4[8];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fileWriterSink_Stop_block_invoke;
    block[3] = &unk_1E7496148;
    block[4] = a2;
    dispatch_async(v14, block);
  }

  return v5;
}

uint64_t fileWriterSink_PushFrame(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    v7 = *(DerivedStorage + 8);
    v6 = *(DerivedStorage + 16);
    if (!v6)
    {
      LODWORD(values[0]) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return 4294954516;
    }

    if (*(DerivedStorage + 40))
    {
      goto LABEL_20;
    }

    v51 = *(DerivedStorage + 8);
    v46 = a2;
    CMSampleBufferGetPresentationTimeStamp(&time, a2);
    *(v5 + 28) = time;
    v47 = *(v5 + 16);
    *&type.value = *(v5 + 28);
    type.epoch = *(v5 + 44);
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9D8];
    v10 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = CFDictionaryCreateMutable(v8, 0, v9, v10);
    v13 = CFDictionaryCreateMutable(v8, 0, v9, v10);
    values[0] = Mutable;
    values[1] = v12;
    values[2] = v13;
    v14 = CFArrayCreate(v8, values, 3, MEMORY[0x1E695E9C0]);
    v15 = getprogname();
    if (v15)
    {
      v16 = CFStringCreateWithCString(v8, v15, 0x8000100u);
    }

    else
    {
      v16 = CFRetain(@"???");
    }

    v53 = v16;
    value = CFLocaleCopyCurrent();
    v17 = CFTimeZoneCopySystem();
    Current = CFAbsoluteTimeGetCurrent();
    v19 = Current + FigGetUpTimeNanoseconds() / -1000000000.0;
    time = type;
    v20 = v19 + CMTimeGetSeconds(&time);
    v50 = v14;
    if (v17)
    {
      SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v17, Current);
      v45 = MEMORY[0x19A8CD7D0](v17);
      v22 = CFStringCreateWithFormat(v8, 0, @"%f %d %@", *&v20, SecondsFromGMT, v45);
    }

    else
    {
      v22 = CFStringCreateWithFormat(v8, 0, @"%f", *&v20);
    }

    v23 = v22;
    theDict = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v48 = CFArrayCreate(v8, &theDict, 1, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(Mutable, @"keyspace", @"mdta");
    CFDictionarySetValue(Mutable, @"key", @"com.apple.quicktime.information");
    CFDictionarySetValue(Mutable, @"value", @"Created by FVDFileWriter");
    v49 = Mutable;
    CFDictionarySetValue(Mutable, @"locale", value);
    CFDictionarySetValue(v12, @"keyspace", @"mdta");
    CFDictionarySetValue(v12, @"key", @"com.apple.quicktime.software");
    CFDictionarySetValue(v12, @"value", v53);
    CFDictionarySetValue(v12, @"locale", value);
    CFDictionarySetValue(v13, @"keyspace", @"mdta");
    CFDictionarySetValue(v13, @"key", @"com.apple.quicktime.comment");
    CFDictionarySetValue(v13, @"value", v23);
    CFDictionarySetValue(v13, @"locale", value);
    CFDictionarySetValue(theDict, @"items", v50);
    CFDictionarySetValue(theDict, @"format", @"com.apple.quicktime.mdta");
    FigBaseObject = FigAssetWriterGetFigBaseObject(v47);
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v25)
    {
      v26 = FigBaseObject;
      v27 = v48;
      v28 = v17;
      if (!v25(v26, @"AssetWriter_Metadata", v48))
      {
        if (!v17)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v28 = v17;
    }

    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v27 = v48;
    if (!v28)
    {
LABEL_17:
      CFRelease(v49);
      CFRelease(v12);
      CFRelease(v13);
      CFRelease(v50);
      CFRelease(v53);
      CFRelease(v23);
      CFRelease(value);
      CFRelease(theDict);
      CFRelease(v27);
      v29 = *(v5 + 16);
      v56 = *(v5 + 28);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v30)
      {
        time = v56;
        v31 = v30(v29, &time);
        v7 = v51;
        if (!v31)
        {
          v6 = *(v5 + 16);
          a2 = v46;
LABEL_20:
          v32 = *(v5 + 24);
          v33 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v33)
          {
            v34 = v33(v6, v32, a2);
            if (!v34)
            {
              return v34;
            }
          }

          else
          {
            v34 = 4294954514;
          }

          LODWORD(values[0]) = 0;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = values[0];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v36;
          }

          else
          {
            v37 = v36 & 0xFFFFFFFE;
          }

          if (!v37)
          {
LABEL_42:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            return v34;
          }

          v38 = &stru_1F0B1AFB8;
          LODWORD(v56.value) = 138413058;
          if (v7)
          {
            v38 = v7;
          }

          *(&v56.value + 4) = v38;
          LOWORD(v56.flags) = 2080;
          *(&v56.flags + 2) = "fileWriterSink_PushFrame";
          HIWORD(v56.epoch) = 1024;
          v57 = 597;
          v58 = 1024;
          v59 = v34;
LABEL_41:
          _os_log_send_and_compose_impl();
          goto LABEL_42;
        }

        v34 = v31;
      }

      else
      {
        v34 = 4294954514;
        v7 = v51;
      }

      LODWORD(values[0]) = 0;
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v41 = values[0];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (!v42)
      {
        goto LABEL_42;
      }

      v43 = &stru_1F0B1AFB8;
      LODWORD(v56.value) = 138413058;
      if (v7)
      {
        v43 = v7;
      }

      *(&v56.value + 4) = v43;
      LOWORD(v56.flags) = 2080;
      *(&v56.flags + 2) = "fileWriterSink_PushFrame";
      HIWORD(v56.epoch) = 1024;
      v57 = 590;
      v58 = 1024;
      v59 = v34;
      goto LABEL_41;
    }

LABEL_16:
    CFRelease(v28);
    goto LABEL_17;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t fileWriterSink_GetPropertyAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(a1);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v10 = v9(CMBaseObject, a2, *MEMORY[0x1E695E480], &v15);
    v9 = v15;
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(DerivedStorage + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __fileWriterSink_GetPropertyAsync_block_invoke;
  v13[3] = &unk_1E7496170;
  v14 = v10;
  v13[4] = a4;
  v13[5] = v9;
  dispatch_async(v11, v13);
  return v10;
}

uint64_t fileWriterSink_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    a2 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(a2);
  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(DerivedStorage + 64) = a2;
  return 0;
}

uint64_t fileWriterSink_SetEventHandler(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = _Block_copy(a2);
  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    _Block_release(v5);
  }

  *(DerivedStorage + 72) = v4;
  return 0;
}

uint64_t WebVTTGetSamplePTS(uint64_t a1, CMTime *a2)
{
  if (a1)
  {
    CMTimeMakeWithSeconds(&v4, *(a1 + 32) + dbl_196E7B810[*(a1 + 32) < 0.0], 90000);
    result = 0;
    *a2 = v4;
  }

  else
  {
    WebVTTGetSamplePTS_cold_1(&v4);
    return LODWORD(v4.value);
  }

  return result;
}

BOOL WebVTTBufferLooksLikeWebVTTFile(char *__s1, unint64_t a2)
{
  if (a2 < 3)
  {
    return 0;
  }

  v3 = __s1;
  if (*__s1 == 239 && __s1[1] == 187 && __s1[2] == 191)
  {
    v3 = __s1 + 3;
    a2 -= 3;
  }

  if (a2 < 7 || strncmp(v3, "WEBVTT", 6uLL))
  {
    return 0;
  }

  v4 = v3[6];
  if ((v4 & 0x80000000) == 0)
  {
    return (*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000) != 0;
  }

  return __maskrune(v4, 0x4000uLL) != 0;
}

uint64_t FigWebVTTReadTime(unsigned __int8 **a1, unint64_t *a2, double *a3, int a4, char *a5)
{
  v5 = *a2;
  if (*a2 <= 4)
  {
    FigWebVTTReadTime_cold_5(&v33);
    return v33;
  }

  v9 = 0;
  v10 = *a1;
  *a3 = 0.0;
  v11 = 0.0;
  while ((v10[v9] - 48) <= 9)
  {
    v12 = v11 * 10.0;
    *a3 = v12;
    v11 = v12 + (v10[v9] - 48);
    *a3 = v11;
    if (v5 == ++v9)
    {
      goto LABEL_5;
    }
  }

  v14 = v5 - v9 - 3;
  if (v5 - v9 < 3 || v10[v9] != 58)
  {
    goto LABEL_5;
  }

  v15 = v10[v9 + 1];
  if ((v15 & 0x80000000) != 0)
  {
    if (!__maskrune(v15, 0x400uLL))
    {
      goto LABEL_5;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v16 = v10[v9 + 2];
  if ((v16 & 0x80000000) != 0)
  {
    if (__maskrune(v16, 0x400uLL))
    {
      goto LABEL_17;
    }

LABEL_5:
    FigWebVTTReadTime_cold_4(&v33);
    return v33;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x400) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v17 = *a3 * 60.0;
  *a3 = v17;
  *a3 = v17 + (v10[v9 + 2] + 10 * v10[v9 + 1] - 528);
  v18 = &v10[v9 + 3];
  if (v5 - 3 == v9)
  {
    v14 = 0;
LABEL_62:
    result = 0;
    *a1 = v18;
    *a2 = v14;
    return result;
  }

  if (*v18 == 58)
  {
    if (v14 >= 3)
    {
      v19 = v10[v9 + 4];
      if ((v19 & 0x80000000) != 0)
      {
        if (!__maskrune(v19, 0x400uLL))
        {
          goto LABEL_35;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x400) == 0)
      {
        goto LABEL_35;
      }

      v20 = v10[v9 + 5];
      if ((v20 & 0x80000000) != 0)
      {
        if (__maskrune(v20, 0x400uLL))
        {
          goto LABEL_28;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x400) != 0)
      {
LABEL_28:
        v21 = *a3 * 60.0;
        *a3 = v21;
        *a3 = v21 + (v10[v9 + 5] + 10 * v10[v9 + 4] - 528);
        v18 = &v10[v9 + 6];
        v14 = v5 - v9 - 6;
        goto LABEL_29;
      }
    }

LABEL_35:
    FigWebVTTReadTime_cold_3(&v33);
    return v33;
  }

  if (v9 != 2)
  {
    FigWebVTTReadTime_cold_1(&v33);
    return v33;
  }

LABEL_29:
  if (v14 >= 4 && *v18 == 46)
  {
    v22 = v18[1];
    if ((v22 & 0x80000000) != 0)
    {
      if (!__maskrune(v22, 0x400uLL))
      {
        goto LABEL_68;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x400) == 0)
    {
      goto LABEL_68;
    }

    v23 = v18[2];
    if ((v23 & 0x80000000) != 0)
    {
      if (!__maskrune(v23, 0x400uLL))
      {
        goto LABEL_68;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x400) == 0)
    {
      goto LABEL_68;
    }

    v24 = v18[3];
    if ((v24 & 0x80000000) != 0)
    {
      if (__maskrune(v24, 0x400uLL))
      {
        goto LABEL_43;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x400) != 0)
    {
LABEL_43:
      *a3 = *a3 + (10 * v18[2] + 100 * v18[1] + v18[3] - 5328) / 1000.0;
      v18 += 4;
      v14 -= 4;
      goto LABEL_44;
    }

LABEL_68:
    FigWebVTTReadTime_cold_2(&v33);
    return v33;
  }

LABEL_44:
  if (!a4 || !v14)
  {
    if (!v14)
    {
      v26 = 0;
      v27 = a5;
LABEL_60:
      if (v27)
      {
        *v27 = v26;
      }

      goto LABEL_62;
    }

    goto LABEL_52;
  }

  v25 = *v18;
  if ((v25 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_52;
  }

  if (__maskrune(v25, 0x4000uLL))
  {
LABEL_52:
    v26 = 0;
    v28 = &v18[v14];
    v27 = a5;
    while (1)
    {
      v29 = *v18;
      if (v29 != 32 && v29 != 9)
      {
        goto LABEL_60;
      }

      ++v18;
      v26 = 1;
      if (!--v14)
      {
        v18 = v28;
        goto LABEL_60;
      }
    }
  }

LABEL_64:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t webVTTDumpSample(uint64_t result)
{
  for (i = *(result + 16); i; i = *i)
  {
    dataPointerOut = 0;
    result = CMBlockBufferGetDataPointer(i[2], i[9], 0, 0, &dataPointerOut);
  }

  return result;
}

uint64_t WebVTTParserDestroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
    a1[7] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    CFRelease(v6);
    a1[17] = 0;
  }

  for (i = a1[9]; i; i = a1[9])
  {
    v8 = *i;
    v9 = i[1];
    v10 = (*i + 8);
    if (!*i)
    {
      v10 = a1 + 10;
    }

    *v10 = v9;
    *v9 = v8;
    webVTTFreeSample(i);
  }

  free(a1);
  return 0;
}

void webVTTFreeSample(void *a1)
{
  if (a1)
  {
    for (i = a1[2]; i; i = a1[2])
    {
      v3 = *i;
      v4 = i[1];
      v5 = (*i + 8);
      if (!*i)
      {
        v5 = a1 + 3;
      }

      *v5 = v4;
      *v4 = v3;
      webVTTFreeCue(i);
    }

    free(a1);
  }
}

uint64_t WebVTTParserSetSampleBufferMediaType(uint64_t a1, int a2)
{
  if (a2 == 1935832172 || a2 == 1952807028)
  {
    *(a1 + 124) = a2;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t WebVTTParserSetSourceLabel(uint64_t a1, const char *a2, int a3, const char *a4)
{
  theBuffer = 0;
  blockBufferOut = 0;
  if (!a2 && !a3 && !a4)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      CFRelease(v8);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      *(a1 + 136) = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    goto LABEL_23;
  }

  totalLengthOut = 0;
  dataPointerOut = 0;
  v26 = 0;
  v13 = *MEMORY[0x1E695E480];
  v14 = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (v14 || a2 && (v20 = strlen(a2), v14 = webVTTAppendTextToBlockBuffer(a2, v20, blockBufferOut), v14))
  {
    v12 = v14;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  if (!a3)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v11 = CFUUIDCreate(v13);
  if (!v11)
  {
    WebVTTParserSetSourceLabel_cold_4(&v31);
    v10 = 0;
LABEL_44:
    v9 = 0;
    goto LABEL_41;
  }

  v21 = CFUUIDCreateString(v13, v11);
  v10 = v21;
  if (!v21)
  {
    WebVTTParserSetSourceLabel_cold_3(&v31);
    goto LABEL_44;
  }

  Length = CFStringGetLength(v21);
  v9 = malloc_type_calloc(1uLL, Length + 1, 0x8B2A4551uLL);
  if (v9)
  {
    if (CFStringGetCString(v10, v9, Length + 1, 0x600u))
    {
      v23 = strlen(v9);
      v24 = webVTTAppendTextToBlockBuffer(v9, v23, blockBufferOut);
      if (v24)
      {
        v12 = v24;
        goto LABEL_23;
      }

LABEL_10:
      if (a4)
      {
        v25 = strlen(a4);
        DataPointer = webVTTAppendTextToBlockBuffer(a4, v25, blockBufferOut);
        if (DataPointer)
        {
          goto LABEL_39;
        }
      }

      if (CMBlockBufferIsRangeContiguous(blockBufferOut, 0, 0))
      {
        v15 = CFRetain(blockBufferOut);
        theBuffer = v15;
      }

      else
      {
        DataPointer = CMBlockBufferCreateContiguous(v13, blockBufferOut, v13, 0, 0, 0, 0, &theBuffer);
        if (DataPointer)
        {
          goto LABEL_39;
        }

        v15 = theBuffer;
      }

      DataPointer = CMBlockBufferGetDataPointer(v15, 0, &v26, &totalLengthOut, &dataPointerOut);
      if (!DataPointer)
      {
        v17 = totalLengthOut;
        if (totalLengthOut <= v26)
        {
          v18 = *(a1 + 136);
          if (v18)
          {
            CFRelease(v18);
            *(a1 + 136) = 0;
            v17 = totalLengthOut;
          }

          v12 = 0;
          *(a1 + 136) = CFDataCreate(v13, dataPointerOut, v17);
          goto LABEL_21;
        }

        WebVTTParserSetSourceLabel_cold_5(&v31);
        goto LABEL_41;
      }

LABEL_39:
      v12 = DataPointer;
      goto LABEL_21;
    }

    WebVTTParserSetSourceLabel_cold_1(&v31);
  }

  else
  {
    WebVTTParserSetSourceLabel_cold_2(&v31);
  }

LABEL_41:
  v12 = v31;
LABEL_21:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_23:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  free(v9);
  return v12;
}

uint64_t WebVTTParserCopyFormatDescription(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *a2 = v3;
  return 0;
}

uint64_t WebVTTParserCreate(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = malloc_type_calloc(1uLL, 0x90uLL, 0x10E00407F763D59uLL);
  if (v10)
  {
    v11 = v10;
    result = 0;
    v11[9] = 0;
    v11[10] = v11 + 9;
    *(v11 + 120) = a4;
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    *(v11 + 12) = 0;
    *(v11 + 124) = 0x777674747362746CLL;
    *a5 = v11;
  }

  else
  {
    WebVTTParserCreate_cold_1(&v13);
    return v13;
  }

  return result;
}

void webVTTStyleQueueFree(uint64_t a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    *a1 = *i;
    if (!v3)
    {
      *(a1 + 8) = a1;
    }

    webVTTSelectorClean((i + 1));
    v4 = i[5];
    if (v4)
    {
      CFRelease(v4);
    }

    free(i);
  }
}

uint64_t webVTTAddStyle(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x1060040BA70D472uLL);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E6960C08];
    if (CFEqual(a2, *MEMORY[0x1E6960C08]))
    {
      v7[1] = CFRetain(v8);
      v7[2] = CFRetain(v8);
    }

    else
    {
      v9 = webVTTCreateSelectorFromString(a2, 0, v7 + 1);
      if (v9)
      {
        v11 = v9;
        free(v7);
        return v11;
      }
    }

    if (v7[4])
    {
      *(v7 + 12) = 1000;
    }

    v10 = v7[3];
    if (v10)
    {
      *(v7 + 12) += CFArrayGetCount(v10) + 10;
    }

    if (v7[2])
    {
      ++*(v7 + 12);
    }

    v11 = 0;
    v7[5] = CFRetain(a3);
    *v7 = 0;
    **(a1 + 8) = v7;
    *(a1 + 8) = v7;
  }

  else
  {
    webVTTAddStyle_cold_1(&v13);
    return v13;
  }

  return v11;
}

uint64_t webVTTAddGenericStylesToStyleList(void *a1)
{
  v2 = 0;
  values[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69607D0];
  v37[0] = @"b";
  v37[1] = v3;
  v38 = *MEMORY[0x1E695E4D0];
  v39 = @"i";
  v40 = *MEMORY[0x1E69608A8];
  v41 = v38;
  v4 = *MEMORY[0x1E6960990];
  v42 = @"u";
  v43 = v4;
  v44 = v38;
  cf = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  while (1)
  {
    v8 = *a1;
    if (!*a1)
    {
      break;
    }

    while (v8[4] || v8[3] || !FigCFEqual())
    {
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    if (++v2 == 3)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E6960878];
      v36[0] = @".white";
      v36[1] = v14;
      v15 = 0xFF00FF00FF00FFLL;
      v36[2] = 0xFF00FF00FF00FFLL;
      v36[3] = @".lime";
      v36[4] = v14;
      v16 = 0xFF000000FF0000;
      v36[5] = 0xFF000000FF0000;
      v36[6] = @".cyan";
      v36[7] = v14;
      v17 = 0xFF00FF00FF0000;
      v36[8] = 0xFF00FF00FF0000;
      v36[9] = @".red";
      v36[10] = v14;
      v18 = 0xFF0000000000FFLL;
      v36[11] = 0xFF0000000000FFLL;
      v36[12] = @".yellow";
      v36[13] = v14;
      v36[14] = 0xFF000000FF00FFLL;
      v36[15] = @".magenta";
      v36[16] = v14;
      v36[17] = 0xFF00FF000000FFLL;
      v36[18] = @".blue";
      v36[19] = v14;
      v36[20] = 0xFF00FF00000000;
      v36[21] = @".black";
      v36[22] = v14;
      v36[23] = 0xFF000000000000;
      v19 = *MEMORY[0x1E6960810];
      v36[24] = @".bg_white";
      v36[25] = v19;
      v36[26] = 0xFF00FF00FF00FFLL;
      v36[27] = @".bg_lime";
      v36[28] = v19;
      v36[29] = 0xFF000000FF0000;
      v36[30] = @".bg_cyan";
      v36[31] = v19;
      v36[32] = 0xFF00FF00FF0000;
      v36[33] = @".bg_red";
      v36[34] = v19;
      v36[35] = 0xFF0000000000FFLL;
      v36[36] = @".bg_yellow";
      v36[37] = v19;
      v36[38] = 0xFF000000FF00FFLL;
      v36[39] = @".bg_magenta";
      v36[40] = v19;
      v36[41] = 0xFF00FF000000FFLL;
      v36[42] = @".bg_blue";
      v36[43] = v19;
      v36[44] = 0xFF00FF00000000;
      v36[45] = @".bg_black";
      v36[46] = v19;
      v36[47] = 0xFF000000000000;
      while (1)
      {
        v20 = *a1;
        if (*a1)
        {
          while (v20[4] || v20[2] || !FigCFEqual())
          {
            v20 = *v20;
            if (!v20)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:
          v21 = &v36[3 * v13];
          LOWORD(v15) = *(v21 + 11);
          LOWORD(v16) = *(v21 + 8);
          LOWORD(v17) = *(v21 + 9);
          LOWORD(v18) = *(v21 + 10);
          v34 = v16 / *"";
          valuePtr = v15 / *"";
          v32 = v18 / *"";
          v33 = v17 / *"";
          v22 = CFNumberCreate(v5, kCFNumberCGFloatType, &valuePtr);
          v23 = CFNumberCreate(v5, kCFNumberCGFloatType, &v34);
          v24 = CFNumberCreate(v5, kCFNumberCGFloatType, &v33);
          v25 = CFNumberCreate(v5, kCFNumberCGFloatType, &v32);
          values[0] = v22;
          values[1] = v23;
          values[2] = v24;
          values[3] = v25;
          v26 = CFArrayCreate(v5, values, 4, MEMORY[0x1E695E9C0]);
          CFRelease(v22);
          CFRelease(v23);
          CFRelease(v24);
          CFRelease(v25);
          cf = v26;
          if (!v26 || (v27 = CFDictionaryCreate(v5, v21 + 1, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
          {
            webVTTAddGenericStylesToStyleList_cold_1();
            v28 = 0;
            v12 = LODWORD(values[0]);
            goto LABEL_24;
          }

          v28 = v27;
          v29 = webVTTAddStyle(a1, *v21, v27);
          if (v29)
          {
            v12 = v29;
LABEL_24:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            return v12;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          CFRelease(v28);
        }

        if (++v13 == 16)
        {
          v12 = 0;
          v28 = 0;
          goto LABEL_24;
        }
      }
    }
  }

LABEL_7:
  v9 = &v37[3 * v2];
  v10 = CFDictionaryCreate(v5, v9 + 1, v9 + 2, 1, v6, v7);
  if (!v10)
  {
    webVTTAddGenericStylesToStyleList_cold_2(v36);
    return LODWORD(v36[0]);
  }

  v11 = v10;
  v12 = webVTTAddStyle(a1, *v9, v10);
  CFRelease(v11);
  if (!v12)
  {
    goto LABEL_9;
  }

  return v12;
}

uint64_t webVTTFindNextCueSetting(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, void *a5)
{
  if (a2 - 1 <= a3 || a2 == a3)
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + a3);
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    if (a2 == ++a3)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = a1 + a2;
  while (1)
  {
    v10 = *(a1 + v8 + a3);
    if (v10 == 9 || v10 == 32)
    {
      break;
    }

    if (a2 - a3 == ++v8)
    {
      goto LABEL_17;
    }
  }

  v9 = a1 + a3 + v8;
LABEL_17:
  if (a1 + a3 >= v9)
  {
    return 0;
  }

  *a4 = a3;
  *a5 = v9 - a1 - a3;
  return 1;
}

BOOL matchStringInBufferWithSpace(const char *a1, const char *a2, size_t a3, int a4, int a5)
{
  v10 = strlen(a1);
  if (v10 > a3)
  {
    return 0;
  }

  v12 = v10;
  if (a4)
  {
    v13 = strncmp(a1, a2, v10);
  }

  else
  {
    v13 = strncasecmp(a1, a2, v10);
  }

  v14 = v13;
  result = v13 == 0;
  if (v12 < a3 && a5 && !v14)
  {
    v15 = a2[v12];
    if ((v15 & 0x80000000) != 0)
    {
      v16 = __maskrune(v15, 0x4000uLL);
    }

    else
    {
      v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x4000;
    }

    return v16 != 0;
  }

  return result;
}

uint64_t webVTTAddToCueSettingsDictionary(__CFDictionary **a1, void *key, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      webVTTAddToCueSettingsDictionary_cold_1(&v8);
      return v8;
    }

    *a1 = Mutable;
  }

  CFDictionaryAddValue(Mutable, key, value);
  return 0;
}

uint64_t webVTTReadFloatingPointNumberOrPercent(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, double *a4)
{
  *a4 = 0.0;
  v4 = *a1;
  v5 = v4 == 45;
  if (v4 == 45)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

  v7 = a2 - v5;
  if (a2 == v5)
  {
    v10 = 0;
LABEL_28:
    v18 = (v10 * v6);
    goto LABEL_29;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (v4 == 45)
  {
    v11 = a1 + 1;
  }

  else
  {
    v11 = a1;
  }

  v12 = 1;
  while (1)
  {
    v13 = *v11 - 48;
    if (v13 <= 9 && v9 == 0)
    {
      v9 = 0;
      v10 = v13 + 10 * v10;
      goto LABEL_18;
    }

    v15 = *v11;
    if (v15 != 46)
    {
      break;
    }

    v9 = 1;
LABEL_18:
    ++v11;
    if (!--v7)
    {
      v16 = 0;
      goto LABEL_20;
    }
  }

  if (v13 <= 9)
  {
    v8 = v13 + 10 * v8;
    v12 *= 10;
    goto LABEL_18;
  }

  if (v15 != 37)
  {
    goto LABEL_32;
  }

  v16 = v7 != 1;
  LODWORD(v7) = 1;
LABEL_20:
  v17 = v4 == 45 ? v7 : 0;
  if (v16 || v17)
  {
LABEL_32:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v18 = (v8 / v12 + v10) * v6;
LABEL_29:
  *a4 = v18;
  *a3 = v7;
  return 0;
}

uint64_t webVTTParseCueAndCreateAttributedString(uint64_t *a1, char *a2, size_t a3, const __CFDictionary *a4, const void *a5, const void *a6, const void *a7, __CFAttributedString **a8, double a9)
{
  v14 = a3;
  v177[0] = 0;
  v177[1] = v177;
  v17 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  if (!v17)
  {
    webVTTParseCueAndCreateAttributedString_cold_14(&v183);
LABEL_327:
    theString = 0;
    v122 = 0;
    goto LABEL_330;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    webVTTParseCueAndCreateAttributedString_cold_13(&v183);
    goto LABEL_327;
  }

  v176 = a1;
  v165 = a8;
  theString = Mutable;
  if (!a7)
  {
    active = webVTTPushTag(v177, *MEMORY[0x1E6960C08], 0);
    if (active)
    {
      goto LABEL_324;
    }

    active = webVTTPushTag(v177, @"::cue", 0);
    if (active)
    {
      goto LABEL_324;
    }

    if (a5)
    {
      active = webVTTPushTag(v177, a5, 0);
      if (active)
      {
        goto LABEL_324;
      }
    }

    if (a6)
    {
      active = webVTTPushTag(v177, @"::cue-region", 0);
      if (active)
      {
        goto LABEL_324;
      }

      active = webVTTPushTag(v177, a6, 0);
      if (active)
      {
        goto LABEL_324;
      }
    }

    goto LABEL_13;
  }

  active = webVTTAddActiveAttribute(v177, *MEMORY[0x1E6960850], a7, 0);
  if (!active)
  {
LABEL_13:
    if (a9 >= 0.0)
    {
      v20 = webVTTPushTag(v177, @":past", 0);
    }

    else
    {
      v20 = 0;
    }

    v168 = v17;
    if (!v14)
    {
      v119 = allocator;
      v120 = theString;
      goto LABEL_242;
    }

    v174 = 0;
    v21 = 0;
    v171 = v17 - 1;
    range = *MEMORY[0x1E6960850];
    attrName = *MEMORY[0x1E6960958];
    cf = *MEMORY[0x1E6960930];
    while (1)
    {
      v22 = *a2;
      if (v22 == 38)
      {
        break;
      }

      if (v22 != 60)
      {
        v26 = *a2;
        if (v22 < 0)
        {
          if (!__maskrune(v22, 0x4000uLL))
          {
            goto LABEL_37;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x4000) == 0)
        {
          goto LABEL_37;
        }

        if (v22 == 13 || v22 == 10)
        {
          if (!v21 || v171[v21] != 10)
          {
            v26 = 10;
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        if (!v21)
        {
          if (!v174)
          {
            v21 = 0;
            goto LABEL_37;
          }

LABEL_38:
          v25 = a2 + 1;
          --v14;
          goto LABEL_112;
        }

        v47 = v171[v21];
        if (v47 < 0)
        {
          if (!__maskrune(v171[v21], 0x4000uLL))
          {
            goto LABEL_37;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x4000) == 0)
        {
LABEL_37:
          v174 = 0;
          v17[v21++] = v26;
          goto LABEL_38;
        }

        if (v47 != 10 && v47 != 13)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v21)
      {
        v23 = v17[v21 - 1];
        if (v23 < 0)
        {
          v24 = __maskrune(v17[v21 - 1], 0x4000uLL);
        }

        else
        {
          v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x4000;
        }

        v174 = v24 != 0;
        v17[v21] = 0;
        CFStringAppendCString(theString, v17, 0x8000100u);
      }

      Length = CFStringGetLength(theString);
      v181 = 0;
      v29 = (a2 + 1);
      *&v183 = a2 + 1;
      v30 = memchr(a2 + 1, 62, v14 - 1);
      if (!v30)
      {
        v14 = 0;
        goto LABEL_201;
      }

      v31 = v30 - v29;
      v181 = (v30 - v29);
      v14 = v14 - 1 + ~(v30 - v29);
      v25 = v30 + 1;
      v32 = *v29;
      if ((v32 - 48) < 0xA)
      {
        v180 = -1.0;
        v20 = FigWebVTTReadTime(&v183, &v181, &v180, 0, 0);
        if (v20)
        {
          goto LABEL_110;
        }

        if (v180 == a9)
        {
          if (webVTTFindStyle(v177, @":past"))
          {
            v33 = webVTTFindActiveAttribute(v177, range);
            if (v33)
            {
              v34 = v33;
              MutableCopy = CFArrayCreateMutableCopy(allocator, 0, *(v33 + 40));
              Count = CFArrayGetCount(MutableCopy);
              while (1)
              {
                v37 = Count-- < 1;
                if (v37)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count);
                if (CFEqual(@":past", ValueAtIndex))
                {
                  CFArrayRemoveValueAtIndex(MutableCopy, Count);
                  break;
                }
              }

              if (*(v34 + 24) == Length)
              {
                v39 = *(v34 + 40);
                if (v39)
                {
                  CFRelease(v39);
                }

                v20 = 0;
                *(v34 + 40) = CFRetain(MutableCopy);
              }

              else
              {
                v20 = webVTTAddActiveAttribute(v177, range, MutableCopy, Length);
              }

              *(v34 + 24) = Length;
              goto LABEL_109;
            }
          }
        }

        else if (v180 > a9 && !webVTTFindStyle(v177, @":future"))
        {
          v48 = webVTTPushTag(v177, @":future", Length);
          goto LABEL_131;
        }

        v20 = 0;
        goto LABEL_110;
      }

      if ((v32 - 98) > 0x14)
      {
        goto LABEL_75;
      }

      if (((1 << (v32 - 98)) & 0x180083) != 0)
      {
        v40 = CFStringCreateWithBytes(allocator, a2 + 1, v31, 0x8000100u, 0);
        if (!v40)
        {
          webVTTParseCueAndCreateAttributedString_cold_8(&v180);
          goto LABEL_231;
        }

        MutableCopy = v40;
        v20 = webVTTPushTag(v177, v40, Length);
        v41 = *v183 - 98;
        if (v41 > 0x14)
        {
          goto LABEL_109;
        }

        if (((1 << v41) & 0x180081) != 0)
        {
          v42 = CFStringCreateWithBytes(allocator, v183, 1, 0x8000100u, 0);
          if (v42)
          {
            v43 = v42;
            v44 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
            if (v44)
            {
LABEL_62:
              v45 = v44;
              CFStringAppend(v44, v43);
              CFRelease(v43);
              CFStringAppend(v45, @""));
              v20 = webVTTPushTag(v177, v45, Length);
              v46 = v45;
              goto LABEL_63;
            }

            v57 = 2902;
LABEL_230:
            webVTTParseCueAndCreateAttributedString_cold_6(v57, MutableCopy, v43, &v180);
            goto LABEL_231;
          }

          webVTTParseCueAndCreateAttributedString_cold_7(&v180);
        }

        else
        {
          if (*v183 != 99)
          {
            goto LABEL_109;
          }

          v56 = CFStringCreateWithBytes(allocator, (v183 + 1), v181 - 1, 0x8000100u, 0);
          if (v56)
          {
            v43 = v56;
            v44 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
            if (v44)
            {
              goto LABEL_62;
            }

            v57 = 2919;
            goto LABEL_230;
          }

          webVTTParseCueAndCreateAttributedString_cold_5(&v180);
        }

        v20 = LODWORD(v180);
        goto LABEL_109;
      }

      if (v32 == 108)
      {
        if (!matchStringInBufferWithSpace("lang", a2 + 1, v31, 0, 0))
        {
          goto LABEL_200;
        }

        matched = matchStringInBufferWithSpace("lang", a2 + 1, v31, 0, 0);
        v61 = v31 - 4;
        if (v31 < 4 || !matched)
        {
          goto LABEL_200;
        }

        v64 = a2[5];
        v63 = (a2 + 5);
        v62 = v64;
        if ((v64 & 0x80000000) != 0)
        {
          v65 = __maskrune(v62, 0x4000uLL);
          if (v31 == 4)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v65 = *(MEMORY[0x1E69E9830] + 4 * v62 + 60) & 0x4000;
          if (v31 == 4)
          {
            goto LABEL_200;
          }
        }

        if (!v65)
        {
          goto LABEL_200;
        }

        do
        {
          v84 = v63;
          v85 = v61;
          v86 = *v63;
          if ((v86 & 0x80000000) != 0)
          {
            v87 = __maskrune(v86, 0x4000uLL);
          }

          else
          {
            v87 = *(MEMORY[0x1E69E9830] + 4 * v86 + 60) & 0x4000;
          }

          v88 = v87 != 0;
          if (v87)
          {
            ++v63;
          }

          v61 -= v88;
          if (v87)
          {
            v89 = v85 == v88;
          }

          else
          {
            v89 = 1;
          }
        }

        while (!v89);
        if (v87)
        {
          v90 = 1;
        }

        else
        {
          v90 = v85 == v88;
        }

        if (!v90)
        {
          v91 = 0;
          if (v87)
          {
            v92 = -1;
          }

          else
          {
            v92 = 0;
          }

          if (v87)
          {
            v93 = v84 + 1;
          }

          else
          {
            v93 = v84;
          }

          v94 = -v85 - v92;
          v162 = Length;
          while (1)
          {
            v95 = v93[v91];
            if ((v95 & 0x80000000) != 0)
            {
              v96 = v94;
              v97 = __maskrune(v95, 0x4000uLL);
              v94 = v96;
              Length = v162;
              if (v97)
              {
LABEL_180:
                if (v87)
                {
                  v98 = v84 + 1;
                }

                else
                {
                  v98 = v84;
                }

                v99 = v85 - (v87 != 0) - v91;
                v100 = &v98[v91];
                v17 = v168;
                do
                {
                  v101 = *v100;
                  if ((v101 & 0x80000000) != 0)
                  {
                    v102 = __maskrune(v101, 0x4000uLL);
                  }

                  else
                  {
                    v102 = *(MEMORY[0x1E69E9830] + 4 * v101 + 60) & 0x4000;
                  }

                  if (v102)
                  {
                    ++v100;
                  }

                  v99 -= v102 != 0;
                  if (v102)
                  {
                    v103 = v99 == 0;
                  }

                  else
                  {
                    v103 = 1;
                  }
                }

                while (!v103);
LABEL_194:
                if (v91)
                {
                  v104 = CFStringCreateWithBytes(allocator, v63, v91, 0x8000100u, 0);
                  if (v104)
                  {
                    v105 = v104;
                    v106 = CFStringCreateWithFormat(allocator, 0, @":lang(%@)", v104);
                    if (v106)
                    {
                      MutableCopy = v106;
                      webVTTPushTag(v177, v106, Length);
                      v107 = CFStringCreateMutableCopy(allocator, 0, @"::cue(");
                      if (v107)
                      {
                        v108 = v107;
                        CFStringAppend(v107, MutableCopy);
                        CFStringAppend(v108, @""));
                        v20 = webVTTPushTag(v177, v108, Length);
                        CFRelease(v108);
                      }

                      else
                      {
                        webVTTParseCueAndCreateAttributedString_cold_2(&v180);
                        v20 = LODWORD(v180);
                      }

                      v46 = v105;
LABEL_63:
                      CFRelease(v46);
LABEL_109:
                      CFRelease(MutableCopy);
LABEL_110:
                      if (v20)
                      {
                        goto LABEL_304;
                      }

                      v21 = 0;
                      goto LABEL_112;
                    }

                    webVTTParseCueAndCreateAttributedString_cold_3();
                  }

                  else
                  {
                    webVTTParseCueAndCreateAttributedString_cold_4(&v180);
                  }

LABEL_231:
                  v20 = LODWORD(v180);
                  goto LABEL_110;
                }

                goto LABEL_200;
              }
            }

            else if ((*(MEMORY[0x1E69E9830] + 4 * v95 + 60) & 0x4000) != 0)
            {
              goto LABEL_180;
            }

            ++v91;
            if (!(v94 + v91))
            {
              v91 = v61;
              v17 = v168;
              goto LABEL_194;
            }
          }
        }

LABEL_179:
        a2 = v25;
        v17 = v168;
        goto LABEL_201;
      }

      if (v32 != 114)
      {
LABEL_75:
        if (v32 != 47)
        {
          goto LABEL_200;
        }

        if (v31 < 2)
        {
          goto LABEL_200;
        }

        v51 = a2[2];
        v50 = a2 + 2;
        v49 = v51;
        v52 = v51 - 98;
        if ((v51 - 98) > 0x14)
        {
          goto LABEL_200;
        }

        if (v52 == 10)
        {
          if (!matchStringInBufferWithSpace("lang", v50, v31 - 1, 0, 0))
          {
            goto LABEL_200;
          }

          webVTTPopTag(v177, *v50, @"::cue("), Length;
          v71 = *v50;
          v72 = @":lang";
        }

        else
        {
          if (v52 == 16)
          {
            if (matchStringInBufferWithSpace("ruby", v50, v31 - 1, 0, 0))
            {
              v53 = webVTTFindActiveAttribute(v177, cf);
              if (v53)
              {
                *(v53 + 24) = Length;
                v54 = *(v53 + 48);
                if (v54)
                {
                  v55 = (v53 + 16);
                  do
                  {
                    v54[2] = *v55;
                    v55 = v54 + 3;
                    v54 = *v54;
                  }

                  while (v54);
                }
              }
            }

            goto LABEL_200;
          }

          if (((1 << v52) & 0x180083) == 0)
          {
LABEL_200:
            a2 = v25;
            goto LABEL_201;
          }

          webVTTPopTag(v177, v49, @"::cue("), Length;
          v71 = *v50;
          v72 = 0;
        }

        v48 = webVTTPopTag(v177, v71, v72, Length);
LABEL_131:
        v20 = v48;
        goto LABEL_110;
      }

      if (matchStringInBufferWithSpace("ruby", a2 + 1, v31, 0, 0))
      {
        v48 = webVTTAddActiveAttribute(v177, cf, 0, Length);
        goto LABEL_131;
      }

      if (!matchStringInBufferWithSpace("rt", a2 + 1, v31, 0, 0))
      {
        goto LABEL_200;
      }

      if (v14 < 4)
      {
        v66 = 0;
        goto LABEL_140;
      }

      v66 = 0;
      v67 = v14;
      v68 = v25;
      while (1)
      {
        if (*v68 != 60)
        {
          ++v68;
          --v67;
          goto LABEL_128;
        }

        v69 = memchr(v68, 62, v67);
        if (!v69)
        {
          v73 = (v68 - v25);
          v66 = v14 - (v68 - v25);
          goto LABEL_223;
        }

        v70 = v69;
        v66 = v69 - v68;
        if (v68[1] == 47 && matchStringInBufferWithSpace("rt", v68 + 2, v66 - 2, 0, 0))
        {
          break;
        }

        if (matchStringInBufferWithSpace("ruby", v68 + 1, v66 - 1, 0, 0) || matchStringInBufferWithSpace("rt", v68 + 1, v66 - 1, 0, 0))
        {
          v14 = 0;
          goto LABEL_179;
        }

        v68 += v66 + 1;
        v67 -= v66 + 1;
LABEL_128:
        if (v67 <= 3)
        {
          goto LABEL_140;
        }
      }

      if (*v70)
      {
        v73 = (v68 - v25);
      }

      else
      {
        v73 = v14;
      }

LABEL_223:
      if (!v73)
      {
LABEL_140:
        v73 = v14;
      }

      v74 = webVTTFindActiveAttribute(v177, cf);
      if (!v74)
      {
        goto LABEL_179;
      }

      v75 = v74;
      aStr = 0;
      v180 = 0.0;
      v76 = webVTTFindActiveAttribute(v177, range);
      v77 = WebVTTSampleBufferParserCreate(&v180);
      if (v77 || ((v78 = v176[3]) != 0 || (v78 = v176[2]) != 0) && (v77 = webVTTSampleBufferParserSetStyleQueueFromTextMarkup(*&v180, v78), v77))
      {
LABEL_331:
        v20 = v77;
        v17 = v168;
        goto LABEL_304;
      }

      v79 = CFArrayCreateMutableCopy(allocator, 0, *(v76 + 40));
      if (v79)
      {
        v80 = v79;
        v81 = v180;
        v82 = webVTTParseCueAndCreateAttributedString(*&v180, v25, v73, a4, 0, 0, v79, &aStr, a9);
        CFRelease(v80);
        if (v82)
        {
          Copy = aStr;
        }

        else
        {
          v161 = v73;
          valuePtr = v14;
          v109 = CFNumberCreate(allocator, kCFNumberLongType, &valuePtr);
          v110 = aStr;
          v111 = CFAttributedStringCreateMutableCopy(allocator, 0, aStr);
          if (v110)
          {
            CFRelease(v110);
          }

          v185.length = CFAttributedStringGetLength(v111);
          v185.location = 0;
          CFAttributedStringSetAttribute(v111, v185, attrName, v109);
          if (v109)
          {
            CFRelease(v109);
          }

          Copy = CFAttributedStringCreateCopy(allocator, v111);
          aStr = Copy;
          v73 = v161;
          if (v111)
          {
            CFRelease(v111);
          }

          *(v75 + 40) = Copy;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        Copy = 0;
        v81 = v180;
      }

      WebVTTSampleBufferParserDestroy(*&v81);
      v112 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040ADB29C33uLL);
      if (v112)
      {
        v113 = v112;
        v112[3] = Length;
        v112[4] = CFRetain(cf);
        if (Copy)
        {
          v114 = CFRetain(Copy);
        }

        else
        {
          v114 = 0;
        }

        v113[5] = v114;
        *v113 = 0;
        v115 = *(v75 + 56);
        v113[1] = v115;
        *v115 = v113;
        *(v75 + 56) = v113;
      }

      else
      {
        fig_log_get_emitter();
        v77 = FigSignalErrorAtGM();
        if (v77)
        {
          goto LABEL_331;
        }
      }

      v116 = &v73[v66 + 1];
      v25 += v116;
      v117 = v14 >= v116;
      v118 = v14 - v116;
      v17 = v168;
      if (v118 == 0 || !v117)
      {
        webVTTParseCueAndCreateAttributedString_cold_1(&v180);
        goto LABEL_231;
      }

      a2 = v25;
      v14 = v118;
LABEL_201:
      v20 = 0;
      v21 = 0;
      v25 = a2;
LABEL_112:
      a2 = v25;
      if (!v14)
      {
        v119 = allocator;
        if (v21)
        {
          v17[v21] = 0;
          v120 = theString;
          CFStringAppendCString(theString, v17, 0x8000100u);
        }

        else
        {
          v120 = theString;
        }

LABEL_242:
        rangea = CFStringGetLength(v120);
        if (!rangea)
        {
          v122 = 0;
          goto LABEL_297;
        }

        v121 = CFAttributedStringCreateMutable(v119, 0);
        v122 = v121;
        if (v121)
        {
          CFAttributedStringBeginEditing(v121);
          v186.location = 0;
          v186.length = 0;
          CFAttributedStringReplaceString(v122, v186, theString);
          if (a4)
          {
            v187.location = 0;
            v187.length = rangea;
            CFAttributedStringSetAttributes(v122, v187, a4, 1u);
          }

          v123 = v177[0];
          if (v177[0])
          {
            v124 = *MEMORY[0x1E6960850];
            replacementa = *MEMORY[0x1E6960850];
            do
            {
              v125 = *(v123 + 3);
              if (!v125)
              {
                v125 = rangea;
                *(v123 + 3) = rangea;
              }

              v126 = *(v123 + 2);
              v127 = v125 - v126;
              if (v125 - v126 >= 1)
              {
                v128 = *(v123 + 6);
                if (v128)
                {
                  do
                  {
                    v129.location = v128[2];
                    v129.length = v128[3] - v129.location;
                    if (v129.length >= 1)
                    {
                      v130 = v128[5];
                      if (v130)
                      {
                        CFAttributedStringSetAttribute(v122, v129, v128[4], v130);
                      }
                    }

                    v128 = *v128;
                  }

                  while (v128);
                }

                else
                {
                  v131 = *(v123 + 5);
                  if (v131)
                  {
                    v188.location = *(v123 + 2);
                    v188.length = v125 - v126;
                    CFAttributedStringSetAttribute(v122, v188, *(v123 + 4), v131);
                  }
                }

                if (CFEqual(*(v123 + 4), v124))
                {
                  v132 = *(v123 + 5);
                  v183 = 0u;
                  v184 = 0u;
                  v181 = 0;
                  v182 = &v181;
                  v133 = CFDictionaryCreateMutable(v119, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (v133)
                  {
                    v175 = v127;
                    v134 = CFArrayGetCount(v132);
                    if (v134 < 1)
                    {
                      v20 = 0;
                    }

                    else
                    {
                      v135 = v134;
                      while (1)
                      {
                        v136 = CFArrayGetValueAtIndex(v132, v135 - 1);
                        v137 = webVTTCreateSelectorFromString(v136, 1, &v183);
                        if (v137)
                        {
                          break;
                        }

                        for (i = *v176; i; i = *i)
                        {
                          if (*(i + 16) && !FigCFEqual() || *(i + 32) && !FigCFEqual())
                          {
                            continue;
                          }

                          v139 = *(i + 24);
                          if (v139)
                          {
                            if (!v184)
                            {
                              continue;
                            }

                            v140 = CFArrayGetCount(v139);
                            v141 = CFArrayGetCount(v184);
                            if (v140 > v141)
                            {
                              continue;
                            }

                            if (v140 >= 1)
                            {
                              v142 = v141;
                              v143 = 0;
                              while (1)
                              {
                                v144 = CFArrayGetValueAtIndex(*(i + 24), v143);
                                v189.location = 0;
                                v189.length = v142;
                                if (!CFArrayContainsValue(v184, v189, v144))
                                {
                                  break;
                                }

                                if (v140 == ++v143)
                                {
                                  goto LABEL_276;
                                }
                              }

                              continue;
                            }
                          }

LABEL_276:
                          v145 = malloc_type_malloc(0x18uLL, 0xA0040A8488062uLL);
                          if (v145)
                          {
                            webVTTParseCueAndCreateAttributedString_cold_10(v145, i, &v181, &v182);
                          }

                          else if (!webVTTParseCueAndCreateAttributedString_cold_9(&v180))
                          {
                            v20 = LODWORD(v180);
                            goto LABEL_287;
                          }
                        }

                        for (j = v181; j; j = *j)
                        {
                          CFDictionaryApplyFunction(*(j[2] + 40), webVTTApplyStyleDictionaryValue, v133);
                        }

                        webVTTCleanStyleMatchQueue(&v181);
                        webVTTSelectorClean(&v183);
                        v37 = v135-- <= 1;
                        if (v37)
                        {
                          v20 = 0;
                          goto LABEL_287;
                        }
                      }

                      v20 = v137;
LABEL_287:
                      v119 = allocator;
                      v124 = replacementa;
                    }

                    v127 = v175;
                  }

                  else
                  {
                    webVTTParseCueAndCreateAttributedString_cold_11(&v180);
                    v20 = LODWORD(v180);
                  }

                  webVTTSelectorClean(&v183);
                  webVTTCleanStyleMatchQueue(&v181);
                  if (v20)
                  {
                    if (v133)
                    {
                      CFRelease(v133);
                    }

                    v17 = v168;
                    if (v122)
                    {
                      goto LABEL_303;
                    }

                    goto LABEL_304;
                  }

                  v190.location = v126;
                  v190.length = v127;
                  CFAttributedStringSetAttributes(v122, v190, v133, 0);
                  CFRelease(v133);
                  v17 = v168;
                }
              }

              v123 = *v123;
            }

            while (v123);
          }

          *v165 = v122;
LABEL_297:
          if (v20 && v122)
          {
LABEL_303:
            CFRelease(v122);
          }

LABEL_304:
          free(v17);
          v147 = theString;
          if (!theString)
          {
            goto LABEL_306;
          }

          goto LABEL_305;
        }

        webVTTParseCueAndCreateAttributedString_cold_12(&v183);
LABEL_330:
        v20 = v183;
        goto LABEL_297;
      }
    }

    if (matchStringInBufferWithSpace("&amp;", a2, v14, 0, 0))
    {
      v17[v21++] = 38;
      goto LABEL_25;
    }

    if (matchStringInBufferWithSpace("&lt;", a2, v14, 0, 0))
    {
      v27 = 60;
    }

    else
    {
      if (!matchStringInBufferWithSpace("&gt;", a2, v14, 0, 0))
      {
        if (matchStringInBufferWithSpace("&lrm;", a2, v14, 0, 0))
        {
          v58 = &v17[v21];
          *&v17[v21] = -32542;
          v59 = -114;
        }

        else
        {
          if (!matchStringInBufferWithSpace("&rlm;", a2, v14, 0, 0))
          {
            if (matchStringInBufferWithSpace("&nbsp;", a2, v14, 0, 0))
            {
              *&v17[v21] = -24382;
              v21 += 2;
              v25 = a2 + 6;
              v14 -= 6;
              goto LABEL_112;
            }

            goto LABEL_38;
          }

          v58 = &v17[v21];
          *&v17[v21] = -32542;
          v59 = -113;
        }

        v58[2] = v59;
        v21 += 3;
LABEL_25:
        v25 = a2 + 5;
        v14 -= 5;
        goto LABEL_112;
      }

      v27 = 62;
    }

    v17[v21++] = v27;
    v25 = a2 + 4;
    v14 -= 4;
    goto LABEL_112;
  }

LABEL_324:
  v20 = active;
  free(v17);
  v147 = theString;
LABEL_305:
  CFRelease(v147);
LABEL_306:
  for (k = v177[0]; v177[0]; k = v177[0])
  {
    v149 = *k;
    v150 = k[1];
    if (*k)
    {
      v151 = *k;
    }

    else
    {
      v151 = v177;
    }

    v151[1] = v150;
    *v150 = v149;
    v152 = k[4];
    if (v152)
    {
      CFRelease(v152);
    }

    v153 = k[5];
    if (v153)
    {
      CFRelease(v153);
    }

    for (m = k[6]; m; m = k[6])
    {
      v155 = *m;
      v156 = m[1];
      v157 = (*m + 8);
      if (!*m)
      {
        v157 = k + 7;
      }

      *v157 = v156;
      *v156 = v155;
      v158 = m[4];
      if (v158)
      {
        CFRelease(v158);
      }

      v159 = m[5];
      if (v159)
      {
        CFRelease(v159);
      }

      free(m);
    }

    free(k);
  }

  return v20;
}

uint64_t WebVTTCreateMetadataDictionaryFromFormatDescripton(const opaqueCMFormatDescription *a1, uint64_t a2, CFDictionaryRef *a3)
{
  if (!a3)
  {
    WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_5(&valuePtr);
    return valuePtr;
  }

  v3 = a3;
  MediaType = CMFormatDescriptionGetMediaType(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaType != 1935832172 && MediaType != 1952807028 || MediaSubType != 1937142900 && MediaSubType != 2004251764 && MediaSubType != 2021028980)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 0;
  }

  v9 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0]);
  if (!v9)
  {
    return 0;
  }

  v10 = CFDictionaryGetValue(v9, @"vttC");
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v70 = v3;
  theDict = 0;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v11);
  if (Length)
  {
    v14 = Length;
    while (1)
    {
      v15 = 0;
      while (1)
      {
        v16 = BytePtr[v15];
        if (v16 == 10 || v16 == 13)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_33;
        }
      }

      if (v14 == v15)
      {
        break;
      }

      v18 = BytePtr[v15];
      if (v18 == 10)
      {
        goto LABEL_25;
      }

      if (v18 != 13)
      {
        break;
      }

      if (v14 - 1 == v15 || BytePtr[v15 + 1] != 10)
      {
LABEL_25:
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v20 = webVTTProcessHeaderLineForMetadata(a2, &theDict, BytePtr, v19 + v15, v19);
      if (v20)
      {
        goto LABEL_132;
      }

      BytePtr += v19 + v15;
      v14 = v14 - v19 - v15;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

LABEL_33:
    v20 = webVTTProcessHeaderLineForMetadata(a2, &theDict, BytePtr, v14, 0);
    if (v20)
    {
LABEL_132:
      v21 = v20;
      goto LABEL_126;
    }
  }

LABEL_34:
  v23 = CFDataGetBytePtr(v11);
  v24 = CFDataGetLength(v11);
  Mutable = 0;
  v26 = 0;
  v21 = 0;
  allocator = *MEMORY[0x1E695E480];
  v71 = *MEMORY[0x1E6960B10];
  key = *MEMORY[0x1E6960AF8];
  v69 = *MEMORY[0x1E6960B20];
  v68 = *MEMORY[0x1E6960B00];
  v67 = *MEMORY[0x1E6960B08];
  v66 = *MEMORY[0x1E6960B18];
  value = *MEMORY[0x1E6960B28];
  v72 = *MEMORY[0x1E6960A90];
  v27 = MEMORY[0x1E69E9830];
  while (1)
  {
    v28 = v24;
    if (v24)
    {
      v29 = 0;
      v30 = v23;
      while (1)
      {
        v31 = *v30;
        if (v31 == 10 || v31 == 13)
        {
          break;
        }

        ++v30;
        --v29;
        if (!(v24 + v29))
        {
          v33 = 0;
          v34 = v24;
          goto LABEL_52;
        }
      }

      v35 = *v30;
      v34 = -v29;
      if (v35 == 10)
      {
        goto LABEL_49;
      }

      if (v35 == 13)
      {
        if (v24 + v29 == 1 || v30[1] != 10)
        {
LABEL_49:
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        v36 = v33 - v29;
        goto LABEL_53;
      }

      v33 = 0;
LABEL_52:
      v36 = v24;
    }

    else
    {
      v34 = 0;
      v33 = 0;
      v36 = 0;
    }

LABEL_53:
    if (v26 != 2)
    {
      if (v26 != 1)
      {
        v26 = v36 == v33;
        goto LABEL_107;
      }

      if (v36 < 6 || strncmp(v23, "REGION", 6uLL))
      {
        goto LABEL_76;
      }

      v37 = v21;
      v38 = v36 - 6;
      if (v38)
      {
        v39 = (v23 + 6);
        do
        {
          v40 = *v39;
          if ((v40 & 0x80000000) != 0)
          {
            if (!__maskrune(v40, 0x4000uLL))
            {
LABEL_90:
              v26 = 1;
              v21 = v37;
              goto LABEL_107;
            }
          }

          else if ((*(v27 + 4 * v40 + 60) & 0x4000) == 0)
          {
            goto LABEL_90;
          }

          ++v39;
          --v38;
        }

        while (v38);
      }

      v21 = v37;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_106;
    }

    if (v36 == v33)
    {
      break;
    }

    if (v36 <= v33)
    {
      v49 = 0;
    }

    else
    {
      v49 = v33;
    }

    v76 = 0;
    v77 = 0;
    if (webVTTFindNextCueSetting(v23, v36 - v49, 0, &v76, &v77))
    {
      v50 = v77;
      v51 = v77 - 3;
      if (v77 < 3)
      {
        goto LABEL_88;
      }

      v52 = &v23[v76];
      if (matchStringInBufferWithSpace("id:", &v23[v76], v77, 0, 0))
      {
        v53 = CFStringCreateWithBytes(allocator, v52 + 3, v51, 0x8000100u, 0);
        if (v53)
        {
          v54 = v53;
          if (!CFDictionaryGetValue(Mutable, v71))
          {
            CFDictionaryAddValue(Mutable, key, v54);
          }

          CFRelease(v54);
LABEL_88:
          v21 = 0;
          v26 = 2;
          v27 = MEMORY[0x1E69E9830];
          goto LABEL_107;
        }

        WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_1(&valuePtr);
        v21 = valuePtr;
        v27 = MEMORY[0x1E69E9830];
        goto LABEL_105;
      }

      v79 = 0;
      if (matchStringInBufferWithSpace("width:", v52, v50, 0, 0))
      {
        valuePtr = 0;
        v55 = webVTTReadFloatingPointNumberOrPercent(v52 + 6, v50 - 6, &v79, &valuePtr);
        v56 = v69;
        v27 = MEMORY[0x1E69E9830];
        v57 = v55;
        if (!v55 && v79)
        {
          v58 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
          if (!v58)
          {
            WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_2(&v80);
            v21 = v80;
            goto LABEL_105;
          }

LABEL_100:
          if (CFDictionaryGetValue(Mutable, v56))
          {
            v21 = 0;
            v60 = v58;
            goto LABEL_102;
          }

          CFDictionaryAddValue(Mutable, v56, v58);
          CFRelease(v58);
        }

LABEL_104:
        v21 = v57;
      }

      else if (matchStringInBufferWithSpace("lines:", v52, v50, 0, 0))
      {
        v80 = 0;
        v59 = webVTTReadNumberOrPercent(v52 + 6, v50 - 6, &v79, &v80);
        v56 = v68;
        v27 = MEMORY[0x1E69E9830];
        v57 = v59;
        if (v59 || v79)
        {
          goto LABEL_104;
        }

        v58 = CFNumberCreate(allocator, kCFNumberIntType, &v80);
        if (v58)
        {
          goto LABEL_100;
        }

        WebVTTCreateMetadataDictionaryFromFormatDescripton_cold_3(&valuePtr);
        v21 = valuePtr;
      }

      else
      {
        if (matchStringInBufferWithSpace("regionanchor:", v52, v50, 0, 0))
        {
          valuePtr = 0;
          v21 = webVTTReadPercentageXandY((v52 + 13), v50 - 13, &valuePtr);
          v27 = MEMORY[0x1E69E9830];
          if (v21)
          {
            goto LABEL_105;
          }

          if (CFDictionaryGetValue(Mutable, v67))
          {
            goto LABEL_88;
          }

          v61 = valuePtr;
          v62 = Mutable;
          v63 = v67;
        }

        else
        {
          if (!matchStringInBufferWithSpace("viewportanchor:", v52, v50, 0, 0))
          {
            if (matchStringInBufferWithSpace("scroll:", v52, v50, 0, 0) && !CFDictionaryGetValue(Mutable, v71) && matchStringInBufferWithSpace("up", v52 + 7, v50 - 7, 0, 0))
            {
              CFDictionaryAddValue(Mutable, v71, value);
            }

            goto LABEL_88;
          }

          valuePtr = 0;
          v21 = webVTTReadPercentageXandY((v52 + 15), v50 - 15, &valuePtr);
          v27 = MEMORY[0x1E69E9830];
          if (v21)
          {
            goto LABEL_105;
          }

          if (CFDictionaryGetValue(Mutable, v66))
          {
            goto LABEL_88;
          }

          v61 = valuePtr;
          v62 = Mutable;
          v63 = v66;
        }

        CFDictionaryAddValue(v62, v63, v61);
        v60 = valuePtr;
LABEL_102:
        CFRelease(v60);
      }

LABEL_105:
      if (v21)
      {
        goto LABEL_124;
      }

      goto LABEL_106;
    }

    v21 = 0;
LABEL_106:
    v26 = 2;
LABEL_107:
    v23 += v33 + v34;
    v24 = v28 - (v33 + v34);
    if (!v28)
    {
LABEL_124:
      v3 = v70;
      if (Mutable)
      {
        goto LABEL_125;
      }

      goto LABEL_126;
    }
  }

  if (!Mutable)
  {
    goto LABEL_76;
  }

  v41 = CFDictionaryGetValue(Mutable, key);
  if (!v41)
  {
    goto LABEL_75;
  }

  v42 = v41;
  v43 = webVTTInitMetadataDictionaryIfNecessary(a2, &theDict);
  v44 = theDict;
  if (theDict)
  {
    v45 = v43;
    v46 = a2;
    v47 = CFDictionaryGetValue(theDict, v72);
    if (v47)
    {
      goto LABEL_74;
    }

    v48 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v48)
    {
      v47 = v48;
      CFDictionaryAddValue(v44, v72, v48);
      CFRelease(v47);
LABEL_74:
      CFDictionaryAddValue(v47, v42, Mutable);
      a2 = v46;
      v27 = MEMORY[0x1E69E9830];
      v21 = v45;
LABEL_75:
      CFRelease(Mutable);
      Mutable = 0;
LABEL_76:
      v26 = 1;
      goto LABEL_107;
    }
  }

  webVTTAddGenericStylesToStyleList_cold_1();
  v21 = valuePtr;
  v3 = v70;
LABEL_125:
  CFRelease(Mutable);
LABEL_126:
  v64 = theDict;
  if (v21)
  {
    if (theDict)
    {
      CFRelease(theDict);
      v64 = 0;
    }
  }

  *v3 = v64;
  return v21;
}

void WebVTTSampleBufferParserDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    webVTTStyleQueueFree(a1);
    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

const opaqueCMFormatDescription *WebVTTIsFormatDescriptionForWebVTT(const opaqueCMFormatDescription *result)
{
  if (result)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(result);
    return (MediaSubType == 1937142900 || MediaSubType == 2021028980 || MediaSubType == 2004251764);
  }

  return result;
}

uint64_t WebVTTSampleBufferParserCreate(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0xE00403FBB9EB1uLL);
  v3 = v2;
  if (!v2)
  {
    v4 = 4294954510;
    goto LABEL_6;
  }

  *v2 = 0;
  v2[1] = v2;
  v4 = webVTTAddGenericStylesToStyleList(v2);
  if (v4)
  {
LABEL_6:
    WebVTTSampleBufferParserDestroy(v3);
    return v4;
  }

  *a1 = v3;
  return v4;
}

const void *webVTTDuplicateCue(__int128 *a1, void *a2)
{
  v4 = malloc_type_malloc(0x70uLL, 0x10A004090FB26ECuLL);
  v5 = v4;
  if (v4)
  {
    v6 = a1[2];
    v7 = *a1;
    v4[1] = a1[1];
    v4[2] = v6;
    *v4 = v7;
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[6];
    v4[5] = a1[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    result = *(v4 + 2);
    if (result)
    {
      CFRetain(result);
      result = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  *a2 = v5;
  return result;
}

uint64_t webVTTAddCueToSampleQueue(void *a1, uint64_t a2)
{
  v30 = 0;
  v4 = a1[9];
  ++a1[14];
  v5 = a2 != 0;
  v6 = a2;
  if (!a2 || !v4)
  {
    goto LABEL_32;
  }

  v6 = a2;
  while (1)
  {
    v7 = *(v4 + 32);
    v8 = *(v6 + 24);
    if (v7 > v8)
    {
      webVTTAddCueToSampleQueue_cold_1(&v29);
      v21 = v29;
      goto LABEL_36;
    }

    v9 = *(v4 + 40);
    if (v9 <= v8)
    {
      goto LABEL_30;
    }

    if (v7 < v8)
    {
      v10 = webVTTDuplicateSample(v4, &v30);
      if (v10)
      {
        goto LABEL_51;
      }

      v11 = *v4;
      v12 = v30;
      *v30 = *v4;
      if (v11)
      {
        v13 = (v11 + 8);
      }

      else
      {
        v13 = a1 + 10;
      }

      *v13 = v12;
      *v4 = v12;
      v12[1] = v4;
      v14 = *(v6 + 24);
      *(v4 + 40) = v14;
      v12[4] = v14;
      goto LABEL_30;
    }

    v15 = *(v6 + 32);
    if (v9 == v15)
    {
      v16 = *(v4 + 16);
      if (v16)
      {
        break;
      }
    }

LABEL_25:
    if (v15 <= v9)
    {
      if (v15 >= v9)
      {
LABEL_44:
        if (!*(v4 + 16))
        {
          *(v4 + 32) = *(v6 + 24);
          *(v4 + 40) = v15;
        }

        v21 = 0;
        *v6 = 0;
        v27 = *(v4 + 24);
        *(v6 + 8) = v27;
        *v27 = v6;
        *(v4 + 24) = v6;
        return v21;
      }

      v10 = webVTTDuplicateSample(v4, &v30);
      if (!v10)
      {
        v24 = *v4;
        v25 = v30;
        *v30 = *v4;
        if (v24)
        {
          v26 = (v24 + 8);
        }

        else
        {
          v26 = (a1 + 10);
        }

        *v26 = v25;
        *v4 = v25;
        *(v25 + 1) = v4;
        v15 = *(v6 + 32);
        *(v4 + 40) = v15;
        v25[4] = v15;
        goto LABEL_44;
      }

LABEL_51:
      v21 = v10;
LABEL_36:
      if (v6 != a2)
      {
        webVTTFreeCue(v6);
      }

      return v21;
    }

    v29 = 0;
    if (!*(v4 + 16))
    {
      *(v4 + 32) = *(v6 + 24);
      *(v4 + 40) = v15;
    }

    *v6 = 0;
    v19 = *(v4 + 24);
    *(v6 + 8) = v19;
    *v19 = v6;
    *(v4 + 24) = v6;
    v10 = webVTTDuplicateCue(v6, &v29);
    if (v10)
    {
      goto LABEL_51;
    }

    v6 = v29;
    *(v29 + 24) = *(v4 + 40);
LABEL_30:
    v4 = *v4;
    if (!v4)
    {
      v5 = 1;
LABEL_32:
      if (!v5)
      {
        return 0;
      }

      v20 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040D182BB51uLL);
      v30 = v20;
      if (v20)
      {
        v21 = 0;
        *(v20 + 2) = *(v6 + 24);
        *v6 = 0;
        *(v6 + 8) = v20 + 2;
        v20[2] = v6;
        v20[3] = v6;
        v22 = v30;
        *v30 = 0;
        v23 = a1[10];
        v22[1] = v23;
        *v23 = v22;
        a1[10] = v22;
        return v21;
      }

      v21 = 4294954510;
      goto LABEL_36;
    }
  }

  while (1)
  {
    if (v16[10] == *(v6 + 80))
    {
      v17 = v16[8];
      if (v17 == *(v6 + 64))
      {
        v18 = v16[6];
        if (v18 == *(v6 + 48))
        {
          if (!v18)
          {
            goto LABEL_20;
          }

          if (compareCueBB(v16[2], v16[5], *(v6 + 16), *(v6 + 40), v16[6]))
          {
            break;
          }
        }
      }
    }

LABEL_23:
    v16 = *v16;
    if (!v16)
    {
      v15 = *(v6 + 32);
      v9 = *(v4 + 40);
      goto LABEL_25;
    }
  }

  v17 = v16[8];
LABEL_20:
  if (v17 && !compareCueBB(v16[2], v16[7], *(v6 + 16), *(v6 + 56), v17) || !compareCueBB(v16[2], v16[9], *(v6 + 16), *(v6 + 72), *(v6 + 80)))
  {
    goto LABEL_23;
  }

  webVTTFreeCue(v6);
  return 0;
}

void webVTTFreeCue(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t webVTTDuplicateSample(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040D182BB51uLL);
  v5 = v4;
  if (!v4)
  {
    v10 = 4294954510;
LABEL_7:
    webVTTFreeSample(v5);
    v5 = 0;
    goto LABEL_8;
  }

  v4[2] = 0;
  v4[3] = v4 + 2;
  *(v4 + 2) = *(a1 + 32);
  v6 = *(a1 + 16);
  if (v6)
  {
    while (1)
    {
      v12 = 0;
      v7 = webVTTDuplicateCue(v6, &v12);
      if (v7)
      {
        break;
      }

      v8 = v12;
      v9 = v5[3];
      *v12 = 0;
      v8[1] = v9;
      *v9 = v8;
      v5[3] = v8;
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v10 = v7;
    goto LABEL_7;
  }

LABEL_5:
  v10 = 0;
LABEL_8:
  *a2 = v5;
  return v10;
}

BOOL compareCueBB(OpaqueCMBlockBuffer *a1, size_t a2, OpaqueCMBlockBuffer *a3, size_t a4, size_t a5)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  v11 = 0;
  DataPointer = CMBlockBufferGetDataPointer(a1, a2, &lengthAtOffsetOut, 0, &dataPointerOut);
  result = 0;
  if (!DataPointer && lengthAtOffsetOut >= a5)
  {
    v10 = CMBlockBufferGetDataPointer(a3, a4, &lengthAtOffsetOut, 0, &v11);
    result = 0;
    if (!v10 && lengthAtOffsetOut >= a5)
    {
      return memcmp(dataPointerOut, v11, a5) == 0;
    }
  }

  return result;
}

void webVTTSelectorClean(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 24) = 0;
    }
  }
}

uint64_t webVTTCreateSelectorFromString(const __CFString *a1, int a2, CFTypeRef *a3)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xFEC990ECuLL);
  if (!v8)
  {
    webVTTCreateSelectorFromString_cold_6(&v36);
    goto LABEL_61;
  }

  if (!CFStringGetCString(a1, v8, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    webVTTCreateSelectorFromString_cold_5(&v36);
    goto LABEL_61;
  }

  *a3 = CFRetain(a1);
  v9 = *v8;
  if (*v8)
  {
    v10 = MEMORY[0x1E69E9830];
    v11 = v8;
    do
    {
      if (a2)
      {
        if (v9 < 0)
        {
          v12 = __maskrune(v9, 0x4000uLL);
        }

        else
        {
          v12 = *(v10 + 4 * v9 + 60) & 0x4000;
        }

        v13 = v12 == 0;
      }

      else
      {
        v13 = v9 != 91;
      }

      v11 += v13;
      v9 = *v11;
    }

    while (*v11 && v13);
    if (*v11)
    {
      if (a2)
      {
        *v11 = 0;
        while (1)
        {
          v15 = *++v11;
          v14 = v15;
          if ((v15 & 0x80000000) != 0)
          {
            if (!__maskrune(v14, 0x4000uLL))
            {
LABEL_20:
              for (i = strlen(v11) - 1; ; --i)
              {
                v17 = v11[i];
                if ((v17 & 0x80000000) != 0)
                {
                  if (!__maskrune(v17, 0x4000uLL))
                  {
                    goto LABEL_29;
                  }
                }

                else if ((*(v10 + 4 * v17 + 60) & 0x4000) == 0)
                {
                  goto LABEL_29;
                }

                v11[i] = 0;
              }
            }
          }

          else if ((*(v10 + 4 * v14 + 60) & 0x4000) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      v18 = strlen(v11);
      v19 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v11, v18, 0x8000100u, 0);
      a3[3] = v19;
      if (!v19)
      {
        webVTTCreateSelectorFromString_cold_1(&v36);
        goto LABEL_61;
      }

      *v11 = 0;
    }
  }

  v11 = 0;
LABEL_29:
  v20 = strchr(v8, 46);
  if (!v20)
  {
    if (!*v8 || (v31 = strlen(v8), v32 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, v31, 0x8000100u, 0), (a3[1] = v32) != 0))
    {
      v25 = 0;
LABEL_43:
      v33 = 0;
      if (a2 && v11)
      {
        if (FigCFEqual())
        {
          v34 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[voice=%s]", v11);
          a3[3] = v34;
          if (!v34)
          {
            goto LABEL_57;
          }
        }

        v33 = 0;
      }

      if (!v25)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    webVTTCreateSelectorFromString_cold_4(&v36);
LABEL_61:
    v33 = v36;
    goto LABEL_50;
  }

  v21 = v20;
  v22 = *MEMORY[0x1E695E480];
  if (v20 != v8)
  {
    v23 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v8, v20 - v8, 0x8000100u, 0);
    a3[1] = v23;
    if (!v23)
    {
      webVTTCreateSelectorFromString_cold_2(&v36);
      goto LABEL_61;
    }
  }

  Mutable = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    webVTTCreateSelectorFromString_cold_3(&v36);
    goto LABEL_61;
  }

  v25 = Mutable;
  while (1)
  {
    v26 = strchr(v21 + 1, 46);
    v27 = v26;
    v28 = v26 ? v26 - v21 : strlen(v21);
    v29 = CFStringCreateWithBytes(v22, v21, v28, 0x8000100u, 0);
    if (!v29)
    {
      break;
    }

    v30 = v29;
    CFArrayAppendValue(v25, v29);
    CFRelease(v30);
    v21 = v27;
    if (!v27)
    {
      a3[2] = CFRetain(v25);
      goto LABEL_43;
    }
  }

LABEL_57:
  fig_log_get_emitter();
  v33 = FigSignalErrorAtGM();
  if (v25)
  {
LABEL_49:
    CFRelease(v25);
  }

LABEL_50:
  free(v8);
  if (v33)
  {
    webVTTSelectorClean(a3);
  }

  return v33;
}

uint64_t webVTTPushTag(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E6960850];
  active = webVTTFindActiveAttribute(a1, *MEMORY[0x1E6960850]);
  if (active)
  {
    if (*(active + 16) == a3)
    {
      CFArrayAppendValue(*(active + 40), a2);
      return 0;
    }

    *(active + 24) = a3;
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(active + 40));
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  v10 = MutableCopy;
  if (MutableCopy)
  {
    CFArrayAppendValue(MutableCopy, a2);
    v11 = webVTTAddActiveAttribute(a1, v6, v10, a3);
    CFRelease(v10);
    return v11;
  }

  else
  {
    webVTTPushTag_cold_1(&v12);
    return v12;
  }
}

uint64_t webVTTAddActiveAttribute(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040CC652593uLL);
  if (v8)
  {
    v9 = v8;
    v8[2] = a4;
    v8[4] = CFRetain(a2);
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    result = 0;
    v9[5] = v10;
    v12 = *(a1 + 8);
    *v9 = 0;
    v9[1] = v12;
    *v12 = v9;
    *(a1 + 8) = v9;
    v9[6] = 0;
    v9[7] = v9 + 6;
  }

  else
  {
    webVTTAddActiveAttribute_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t webVTTFindActiveAttribute(uint64_t a1, CFTypeRef cf1)
{
  for (i = **(*(a1 + 8) + 8); i; i = **(*(i + 8) + 8))
  {
    if (CFEqual(cf1, *(i + 32)) && !*(i + 24))
    {
      break;
    }
  }

  return i;
}

uint64_t webVTTFindStyle(uint64_t a1, const void *a2)
{
  result = webVTTFindActiveAttribute(a1, *MEMORY[0x1E6960850]);
  if (result)
  {
    v4 = result;
    Count = CFArrayGetCount(*(result + 40));
    while (Count-- >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), Count);
      if (CFEqual(a2, ValueAtIndex))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void webVTTApplyStyleDictionaryValue(const void *a1, const void *a2, __CFDictionary *a3)
{
  v6 = CFEqual(a1, *MEMORY[0x1E6960A88]);
  if (a1 && !v6 && !CFDictionaryContainsKey(a3, a1))
  {

    CFDictionaryAddValue(a3, a1, a2);
  }
}

void *webVTTCleanStyleMatchQueue(void *result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      result = *v1;
      if (!*v1)
      {
        break;
      }

      v2 = *result;
      v3 = result[1];
      if (*result)
      {
        v4 = *result;
      }

      else
      {
        v4 = v1;
      }

      v4[1] = v3;
      *v3 = v2;
      free(result);
    }
  }

  return result;
}

uint64_t webVTTProcessHeaderLineForMetadata(int a1, CFMutableDictionaryRef *a2, char *__big, unint64_t a4, unint64_t a5)
{
  v5 = a4 - a5;
  if (a4 <= a5)
  {
    return 0;
  }

  if (strnstr(__big, "-->", a4 - a5))
  {
    return 0;
  }

  v11 = memchr(__big, 58, v5);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v9 = 0;
  if (v11 == __big)
  {
    return v9;
  }

  v13 = (&__big[v5] - v11);
  if (v13 < 2)
  {
    return v9;
  }

  if (!matchStringInBufferWithSpace("Region:", __big, v11 - __big + 1, 1, 0))
  {
    return 0;
  }

  alloc = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    webVTTProcessHeaderLineForMetadata_cold_6(&valuePtr);
    return valuePtr;
  }

  v15 = Mutable;
  v16 = (v13 - 1);
  v17 = (v12 + 1);
  v51 = 0;
  v52 = 0;
  if (!webVTTFindNextCueSetting((v12 + 1), (v13 - 1), 0, &v51, &v52))
  {
LABEL_50:
    v9 = 0;
    goto LABEL_51;
  }

  v18 = v15;
  v9 = 0;
  v47 = 0;
  key = *MEMORY[0x1E6960AF8];
  v45 = *MEMORY[0x1E6960B20];
  v44 = *MEMORY[0x1E6960B00];
  v43 = *MEMORY[0x1E6960B08];
  v42 = *MEMORY[0x1E6960B18];
  v40 = *MEMORY[0x1E6960B28];
  v41 = *MEMORY[0x1E6960B10];
  do
  {
    v50 = 0;
    v19 = v51;
    v20 = v52;
    v21 = v52 - 3;
    if (v52 < 3)
    {
      goto LABEL_30;
    }

    v22 = v17 + v51;
    if (matchStringInBufferWithSpace("id=", (v17 + v51), v52, 0, 0))
    {
      v23 = CFStringCreateWithBytes(alloc, (v22 + 3), v21, 0x8000100u, 0);
      if (v23)
      {
        v24 = v23;
        CFDictionaryAddValue(v18, key, v23);
        CFRelease(v24);
        v47 = 1;
        goto LABEL_30;
      }

      webVTTProcessHeaderLineForMetadata_cold_1(&valuePtr);
      goto LABEL_53;
    }

    if (matchStringInBufferWithSpace("width=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      v9 = webVTTReadFloatingPointNumberOrPercent((v22 + 6), v20 - 6, &v50, &valuePtr);
      if (v9)
      {
        v25 = 1;
      }

      else
      {
        v25 = v50 == 0;
      }

      if (!v25)
      {
        v26 = CFNumberCreate(alloc, kCFNumberDoubleType, &valuePtr);
        if (!v26)
        {
          webVTTProcessHeaderLineForMetadata_cold_2(&valuePtr, &v53);
          v9 = v53;
LABEL_54:
          v15 = v18;
          if (!v9)
          {
            goto LABEL_44;
          }

          goto LABEL_51;
        }

        v27 = v26;
        v28 = v18;
        v29 = v45;
        goto LABEL_28;
      }
    }

    else if (matchStringInBufferWithSpace("lines=", (v17 + v19), v20, 0, 0))
    {
      v53 = 0;
      v9 = webVTTReadNumberOrPercent((v22 + 6), v20 - 6, &v50, &v53);
      if (!v9 && !v50)
      {
        v30 = CFNumberCreate(alloc, kCFNumberIntType, &v53);
        if (!v30)
        {
          webVTTProcessHeaderLineForMetadata_cold_3(&v53, &valuePtr);
LABEL_53:
          v9 = valuePtr;
          goto LABEL_54;
        }

        v27 = v30;
        v28 = v18;
        v29 = v44;
LABEL_28:
        CFDictionaryAddValue(v28, v29, v27);
        v31 = v27;
LABEL_29:
        CFRelease(v31);
      }
    }

    else if (matchStringInBufferWithSpace("regionanchor=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      v9 = webVTTReadPercentageXandY((v22 + 13), v20 - 13, &valuePtr);
      if (!v9)
      {
        v32 = valuePtr;
        v33 = v18;
        v34 = v43;
LABEL_38:
        CFDictionaryAddValue(v33, v34, v32);
        v31 = valuePtr;
        goto LABEL_29;
      }
    }

    else if (matchStringInBufferWithSpace("viewportanchor=", (v17 + v19), v20, 0, 0))
    {
      valuePtr = 0;
      v9 = webVTTReadPercentageXandY((v22 + 15), v20 - 15, &valuePtr);
      if (!v9)
      {
        v32 = valuePtr;
        v33 = v18;
        v34 = v42;
        goto LABEL_38;
      }
    }

    else if (matchStringInBufferWithSpace("scroll=", (v17 + v19), v20, 0, 0) && matchStringInBufferWithSpace("up", (v22 + 7), v20 - 7, 0, 0))
    {
      CFDictionaryAddValue(v18, v41, v40);
    }

LABEL_30:
    v51 = v20 + v19;
  }

  while (webVTTFindNextCueSetting(v17, v16, v20 + v19, &v51, &v52));
  v15 = v18;
  if (v47 && !v9)
  {
LABEL_44:
    Value = CFDictionaryGetValue(v15, key);
    if (!Value)
    {
      goto LABEL_50;
    }

    v36 = Value;
    v9 = webVTTInitMetadataDictionaryIfNecessary(a1, a2);
    if (*a2)
    {
      v37 = *MEMORY[0x1E6960A90];
      v38 = CFDictionaryGetValue(*a2, *MEMORY[0x1E6960A90]);
      if (v38)
      {
LABEL_49:
        CFDictionaryAddValue(v38, v36, v15);
        goto LABEL_51;
      }

      v39 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v39)
      {
        v38 = v39;
        CFDictionaryAddValue(*a2, v37, v39);
        goto LABEL_49;
      }

      webVTTProcessHeaderLineForMetadata_cold_4(&v52);
    }

    else
    {
      webVTTProcessHeaderLineForMetadata_cold_5(&v52);
    }

    v9 = v52;
  }

LABEL_51:
  CFRelease(v15);
  return v9;
}

uint64_t webVTTInitMetadataDictionaryIfNecessary(int a1, CFMutableDictionaryRef *a2)
{
  if (*a2)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = *MEMORY[0x1E695E480];
  *a2 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v8 = CFUUIDCreate(v7);
    if (!v8)
    {
      webVTTInitMetadataDictionaryIfNecessary_cold_2(&v13);
      return v13;
    }

    v9 = v8;
    v10 = CFUUIDCreateString(v7, v8);
    if (!v10)
    {
      webVTTInitMetadataDictionaryIfNecessary_cold_1();
      return v12;
    }

    v11 = v10;
    CFDictionaryAddValue(*a2, *MEMORY[0x1E6960A98], v10);
    CFRelease(v9);
    CFRelease(v11);
  }

  return 0;
}

uint64_t webVTTReadNumberOrPercent(unsigned __int8 *a1, uint64_t a2, char *a3, int *a4)
{
  v4 = *a1;
  v5 = v4 == 45;
  v6 = a2 - v5;
  if (a2 == v5)
  {
    v7 = 0;
LABEL_9:
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v7 = 0;
    if (v4 == 45)
    {
      v8 = a1 + 1;
    }

    else
    {
      v8 = a1;
    }

    while (1)
    {
      v9 = *v8;
      if ((v9 - 48) > 9)
      {
        break;
      }

      v7 = v9 - 48 + 10 * v7;
      ++v8;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    if (*v8 != 37)
    {
      goto LABEL_20;
    }

    v10 = v6 != 1;
    LODWORD(v6) = 1;
    v11 = 1;
  }

  if (v4 != 45)
  {
    LODWORD(v6) = 0;
  }

  if (!v10 && !v6)
  {
    if (v4 == 45)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    *a4 = v12;
    *a3 = v11;
    return 0;
  }

LABEL_20:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t webVTTReadPercentageXandY(void *a1, size_t __n, CFDictionaryRef *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  keys = 0;
  v22 = 0;
  values = 0;
  cf = 0;
  v6 = memchr(a1, 44, __n);
  if (!v6)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM();
    goto LABEL_11;
  }

  v7 = v6;
  v16 = 0;
  valuePtr = 0.0;
  v15 = 0;
  v8 = webVTTReadFloatingPointNumberOrPercent(a1, v6 - a1, &v15, &valuePtr);
  if (v8)
  {
    goto LABEL_11;
  }

  if (!v15)
  {
    goto LABEL_18;
  }

  v9 = a1 + __n - v7;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  v8 = webVTTReadFloatingPointNumberOrPercent(v7 + 1, v9 - 1, &v15, &v16);
  if (v8)
  {
LABEL_11:
    v13 = v8;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (!v15)
  {
LABEL_18:
    webVTTReadPercentageXandY_cold_1();
    v13 = v18;
    goto LABEL_12;
  }

  v10 = *MEMORY[0x1E6960AE8];
  keys = *MEMORY[0x1E6960AE0];
  v22 = v10;
  v11 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  cf = CFNumberCreate(v11, kCFNumberDoubleType, &v16);
  v12 = CFDictionaryCreate(v11, &keys, &values, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  v13 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3)
  {
    *a3 = v12;
  }

  return v13;
}

BOOL OUTLINED_FUNCTION_3_149(const char *a1)
{

  return matchStringInBufferWithSpace(a1, v1, v2, 0, 0);
}

BOOL OUTLINED_FUNCTION_12_69(const char *a1, const char *a2, size_t a3)
{

  return matchStringInBufferWithSpace(a1, a2, a3, 0, 0);
}

BOOL OUTLINED_FUNCTION_13_55(const char *a1, const char *a2, size_t a3)
{

  return matchStringInBufferWithSpace(a1, a2, a3, 0, 1);
}

CFNumberRef OUTLINED_FUNCTION_16_53(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CFAllocatorRef allocator, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char valuePtr)
{

  return CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
}

uint64_t octtextrp_CreateRenderPipelineCommon(int a1, const opaqueCMFormatDescription *a2, const __CFDictionary *a3, const void *a4, CFTypeRef *a5)
{
  cf = 0;
  if (a4)
  {
    FigRenderPipelineGetClassID();
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      v13 = v10;
      goto LABEL_18;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 120) = CFRetain(a4);
    *(DerivedStorage + 27) = 0;
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    *(DerivedStorage + 27) = CFPreferenceNumberWithDefault;
    *(DerivedStorage + 4) = a1;
    if (a1 == 1668047728)
    {
      v21 = *MEMORY[0x1E6960CC0];
      v22 = *(MEMORY[0x1E6960CC0] + 16);
      v13 = FigCreateClosedCaptionRenderPipeline(a2, octtextrp_closedCaptionsRenderCallback, cf, 0, 0, &v21, a3, (DerivedStorage + 8));
    }

    else
    {
      v21 = *MEMORY[0x1E6960CC0];
      v22 = *(MEMORY[0x1E6960CC0] + 16);
      if (CFPreferenceNumberWithDefault)
      {
        v14 = FigCreateSubtitleRenderPipeline(a2, octtextrp_subtitleRenderCallback, cf, 0, 0, 0, 0, 0, &v21, a3, (DerivedStorage + 8));
      }

      else
      {
        v14 = FigCreateCaptionRenderPipeline(a2, octtextrp_captionRenderCallback, cf, 0, 0, 0, 0, 0, &v21, a3, (DerivedStorage + 8));
      }

      v13 = v14;
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 8));
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v16)
      {
        v16(FigBaseObject, @"DisplayNonForcedSubtitles", *MEMORY[0x1E695E4D0]);
      }
    }

    if (v13)
    {
      goto LABEL_18;
    }

    v17 = dispatch_queue_create("com.apple.coremedia.octtextrp_serialize", 0);
    *(DerivedStorage + 16) = v17;
    if (v17)
    {
      v13 = 0;
      v18 = *MEMORY[0x1E695F060];
      *(DerivedStorage + 40) = *MEMORY[0x1E695F060];
      *(DerivedStorage + 56) = v18;
      v19 = *(MEMORY[0x1E695F050] + 16);
      *(DerivedStorage + 72) = *MEMORY[0x1E695F050];
      *(DerivedStorage + 88) = v19;
      *a5 = cf;
      return v13;
    }

    octtextrp_CreateRenderPipelineCommon_cold_1(&v21);
  }

  else
  {
    octtextrp_CreateRenderPipelineCommon_cold_2(&v21);
  }

  v13 = v21;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void octtextrp_closedCaptionsRenderCallback(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    octtextrp_closedCaptionsRenderCallback_cold_1();
  }

  else
  {
    v9 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_closedCaptionsRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_18_2;
    v11 = a2;
    block[4] = a5;
    block[5] = a3;
    dispatch_sync(v9, block);
  }
}

void octtextrp_subtitleRenderCallback(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v19 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_subtitleRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_19_5;
    block[4] = a10;
    block[5] = a6;
    v21 = a8;
    v22 = a9;
    *&block[6] = a1;
    *&block[7] = a2;
    *&block[8] = a3;
    *&block[9] = a4;
    dispatch_sync(v19, block);
  }
}

void octtextrp_captionRenderCallback(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v19 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octtextrp_captionRenderCallback_block_invoke;
    block[3] = &__block_descriptor_tmp_20_3;
    block[4] = a10;
    block[5] = a6;
    v21 = a8;
    v22 = a9;
    *&block[6] = a1;
    *&block[7] = a2;
    *&block[8] = a3;
    *&block[9] = a4;
    dispatch_sync(v19, block);
  }
}

uint64_t figOctaviaTextRenderPipelineInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      v3 = *(DerivedStorage + 8);
      if (v3)
      {
        FigBaseObject = FigRenderPipelineGetFigBaseObject(v3);
        if (FigBaseObject)
        {
          v5 = FigBaseObject;
          v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v6)
          {
            v6(v5);
          }
        }

        v7 = *(v1 + 8);
        if (v7)
        {
          CFRelease(v7);
          *(v1 + 8) = 0;
        }
      }

      v8 = *(v1 + 16);
      if (v8)
      {
        dispatch_sync(v8, &__block_literal_global_121);
        dispatch_release(*(v1 + 16));
        *(v1 + 16) = 0;
      }

      octtextrp_clearOutTextImage(*(v1 + 120), *(v1 + 4) == 1668047728);
      v9 = *(v1 + 32);
      if (v9)
      {
        CFRelease(v9);
        *(v1 + 32) = 0;
      }

      free(*(v1 + 104));
      *(v1 + 104) = 0;
      *(v1 + 112) = 0;
      v10 = *(v1 + 120);
      if (v10)
      {
        CFRelease(v10);
        *(v1 + 120) = 0;
      }
    }
  }

  return 0;
}

__CFString *figOctaviaTextRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOctaviaTextRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t figOctaviaTextRenderPipelineCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v8 = DerivedStorage, *DerivedStorage) || !a4)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"DisplayClosedCaptions"))
  {
    if (*(v8 + 1) == 1668047728)
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = v8[24];
LABEL_14:
      if (!v11)
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v12 = CFRetain(*v10);
      result = 0;
      *a4 = v12;
      return result;
    }

    return 4294954446;
  }

  if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
  {
    if (*(v8 + 1) == 1935832172)
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = v8[25];
      goto LABEL_14;
    }

    return 4294954446;
  }

  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v8 + 1));
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    return 4294954514;
  }

  return v14(FigBaseObject, a2, a3, a4);
}

uint64_t figOctaviaTextRenderPipelineSetProperty(uint64_t a1, const void *a2, const __CFBoolean *a3)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(a2, @"DisplayClosedCaptions"))
      {
        if (*(v7 + 1) == 1668047728)
        {
          if (a3)
          {
            TypeID = CFBooleanGetTypeID();
            if (TypeID == CFGetTypeID(a3))
            {
              Value = CFBooleanGetValue(a3);
              if (v7[24] != Value)
              {
                v11 = *(v7 + 2);
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 0x40000000;
                v32[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke;
                v32[3] = &__block_descriptor_tmp_13_5;
                v33 = Value;
                v32[4] = v7;
                v32[5] = a1;
                v12 = v32;
LABEL_16:
                v15 = v11;
LABEL_17:
                dispatch_sync(v15, v12);
                goto LABEL_40;
              }

              goto LABEL_40;
            }
          }

          goto LABEL_38;
        }
      }

      else
      {
        if (!CFEqual(a2, @"DisplayNonForcedSubtitles"))
        {
          if (CFEqual(a2, @"ScreenSize"))
          {
            if (a3)
            {
              v18 = CFDictionaryGetTypeID();
              if (v18 == CFGetTypeID(a3))
              {
                size.origin.x = 0.0;
                size.origin.y = 0.0;
                if (CGSizeMakeWithDictionaryRepresentation(a3, &size) && (size.origin.x != *(v7 + 5) || size.origin.y != *(v7 + 6)))
                {
                  v15 = *(v7 + 2);
                  v28[0] = MEMORY[0x1E69E9820];
                  v28[1] = 0x40000000;
                  v28[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_3;
                  v28[3] = &unk_1E74961F8;
                  origin = size.origin;
                  v28[4] = &v34;
                  v28[5] = v7;
                  v12 = v28;
                  goto LABEL_17;
                }
              }
            }
          }

          else if (CFEqual(a2, @"OriginalVideoSize"))
          {
            if (a3)
            {
              v19 = CFDictionaryGetTypeID();
              if (v19 == CFGetTypeID(a3))
              {
                size.origin.x = 0.0;
                size.origin.y = 0.0;
                if (CGSizeMakeWithDictionaryRepresentation(a3, &size) && (size.origin.x != *(v7 + 7) || size.origin.y != *(v7 + 8)))
                {
                  v15 = *(v7 + 2);
                  v26[0] = MEMORY[0x1E69E9820];
                  v26[1] = 0x40000000;
                  v26[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_4;
                  v26[3] = &unk_1E7496220;
                  v27 = size.origin;
                  v26[4] = &v34;
                  v26[5] = v7;
                  v12 = v26;
                  goto LABEL_17;
                }
              }
            }
          }

          else
          {
            if (!CFEqual(a2, @"VideoDisplayRect"))
            {
              v22 = FigRenderPipelineSetProperty(*(v7 + 1), a2, a3);
              *(v35 + 6) = v22;
              goto LABEL_40;
            }

            if (a3)
            {
              v20 = CFDictionaryGetTypeID();
              if (v20 == CFGetTypeID(a3))
              {
                memset(&size, 0, sizeof(size));
                if (CGRectMakeWithDictionaryRepresentation(a3, &size) && !CGRectEqualToRect(size, *(v7 + 72)))
                {
                  v15 = *(v7 + 2);
                  v23[0] = MEMORY[0x1E69E9820];
                  v23[1] = 0x40000000;
                  v23[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_5;
                  v23[3] = &unk_1E7496248;
                  v24 = size;
                  v23[4] = &v34;
                  v23[5] = v7;
                  v12 = v23;
                  goto LABEL_17;
                }
              }
            }
          }

LABEL_38:
          v16 = v35;
          v17 = -12852;
          goto LABEL_39;
        }

        if (*(v7 + 1) == 1935832172)
        {
          if (a3)
          {
            v13 = CFBooleanGetTypeID();
            if (v13 == CFGetTypeID(a3))
            {
              v14 = CFBooleanGetValue(a3);
              if (v7[25] != v14)
              {
                v11 = *(v7 + 2);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 0x40000000;
                block[2] = __figOctaviaTextRenderPipelineSetProperty_block_invoke_2;
                block[3] = &__block_descriptor_tmp_14_8;
                v31 = v14;
                block[4] = v7;
                block[5] = a1;
                v12 = block;
                goto LABEL_16;
              }

LABEL_40:
              v8 = *(v35 + 6);
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }
      }

      v16 = v35;
      v17 = -12850;
LABEL_39:
      *(v16 + 6) = v17;
      goto LABEL_40;
    }
  }

  fig_log_get_emitter();
  v8 = FigSignalErrorAtGM();
LABEL_41:
  _Block_object_dispose(&v34, 8);
  return v8;
}

void __figOctaviaTextRenderPipelineSetProperty_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  *(v2 + 24) = v1;
  if (v1 == 1)
  {
    octtextrp_sendTextImage(*(a1 + 40), 1, 0);
  }

  else
  {
    octtextrp_clearOutTextImage(*(v2 + 120), 1);
  }
}

void __figOctaviaTextRenderPipelineSetProperty_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  *(v3 + 25) = v2;
  if (v2 == 1)
  {
    __figOctaviaTextRenderPipelineSetProperty_block_invoke_2_cold_1(a1);
  }

  else if (!*(v3 + 26))
  {
    v4 = *(v3 + 120);

    octtextrp_clearOutTextImage(v4, 0);
  }
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_3(uint64_t result)
{
  *(*(result + 40) + 40) = *(result + 48);
  v1 = *(result + 40);
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = result;
    v4 = v1[5];
    v5 = v1[6];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 8))(v2, v4, v5);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_4(uint64_t result)
{
  *(*(result + 40) + 56) = *(result + 48);
  v1 = *(result + 40);
  v2 = *(v1 + 4);
  if (v2)
  {
    v3 = result;
    v4 = v1[7];
    v5 = v1[8];
    v6 = v1[9];
    v7 = v1[10];
    v8 = v1[11];
    v9 = v1[12];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 16))(v2, v4, v5, v6, v7, v8, v9);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __figOctaviaTextRenderPipelineSetProperty_block_invoke_5(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 48);
  *(v1 + 88) = *(result + 64);
  *(v1 + 72) = v2;
  v3 = *(result + 40);
  v4 = *(v3 + 4);
  if (v4)
  {
    v5 = result;
    v6 = v3[7];
    v7 = v3[8];
    v8 = v3[9];
    v9 = v3[10];
    v10 = v3[11];
    v11 = v3[12];
    VTable = CMBaseObjectGetVTable();
    result = (*(*(VTable + 16) + 16))(v4, v6, v7, v8, v9, v10, v11);
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __octtextrp_closedCaptionsRenderCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 32);
  v5 = *(DerivedStorage + 32);
  if (!v5)
  {
    if (FigClosedCaptionsTextRasterizerCreate(*MEMORY[0x1E695E480], v6))
    {
      return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_5();
    }

    v7 = *v6;
    if (!*v6)
    {
      return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_5();
    }

    v8 = *(DerivedStorage + 40);
    v9 = *(DerivedStorage + 48);
    VTable = CMBaseObjectGetVTable();
    if ((*(*(VTable + 16) + 8))(v7, v8, v9))
    {
      return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_1();
    }

    v11 = *(DerivedStorage + 32);
    v12 = *(DerivedStorage + 56);
    v13 = *(DerivedStorage + 64);
    v14 = *(DerivedStorage + 72);
    v15 = *(DerivedStorage + 80);
    v16 = *(DerivedStorage + 88);
    v17 = *(DerivedStorage + 96);
    v18 = CMBaseObjectGetVTable();
    if ((*(*(v18 + 16) + 16))(v11, v12, v13, v14, v15, v16, v17))
    {
      return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_2();
    }

    v5 = *v6;
  }

  result = FigClosedCaptionsTextRasterizerSetCommand(v5, v1, v3);
  if (result)
  {
    return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_3();
  }

  if (*(DerivedStorage + 24))
  {
    return __octtextrp_closedCaptionsRenderCallback_block_invoke_cold_4(v2);
  }

  return result;
}

void octtextrp_rasterizeAndDisplaySubtitle(uint64_t a1, const __CFDictionary *a2, uint64_t a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = (DerivedStorage + 32);
  if (!*(DerivedStorage + 32))
  {
    if (FigSubtitleTextRasterizerCreate(*MEMORY[0x1E695E480], v17) || (v18 = *v17) == 0)
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_8();
      return;
    }

    v19 = *(DerivedStorage + 40);
    v20 = *(DerivedStorage + 48);
    VTable = CMBaseObjectGetVTable();
    if ((*(*(VTable + 16) + 8))(v18, v19, v20))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_1();
      return;
    }

    v22 = *(DerivedStorage + 32);
    v23 = *(DerivedStorage + 56);
    v24 = *(DerivedStorage + 64);
    v25 = *(DerivedStorage + 72);
    v26 = *(DerivedStorage + 80);
    v39 = a5;
    v40 = a6;
    v27 = a8;
    v28 = a7;
    v29 = *(DerivedStorage + 88);
    v30 = *(DerivedStorage + 96);
    v31 = CMBaseObjectGetVTable();
    v32 = v29;
    a8 = v27;
    v33 = v30;
    a7 = v28;
    a5 = v39;
    a6 = v40;
    if ((*(*(v31 + 16) + 16))(v22, v23, v24, v25, v26, v32, v33))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_2();
      return;
    }
  }

  if (a2)
  {
    *(DerivedStorage + 26) = a3;
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    if (!MutableCopy)
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_5();
      return;
    }

    v35 = MutableCopy;
    if (FigSubtitleSampleInsertInfoForRenderer(MutableCopy, a5, a6, a7, a8, 0.0, 0.0, *(DerivedStorage + 40), *(DerivedStorage + 48) * 0.15, a3, a4))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_3();
      goto LABEL_19;
    }

    if (FigSubtitleTextRasterizerSetSubtitleSample(*v17, v35))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_4();
      goto LABEL_19;
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(DerivedStorage + 26))
    {
      *(DerivedStorage + 26) = 0;
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = *v17;
    v38 = CMBaseObjectGetVTable();
    if ((*(*(v38 + 16) + 32))(v37))
    {
      octtextrp_rasterizeAndDisplaySubtitle_cold_6();
      return;
    }

    v35 = 0;
    if (v36)
    {
LABEL_22:
      octtextrp_rasterizeAndDisplaySubtitle_cold_7(a1);
      if (!v35)
      {
        return;
      }

      goto LABEL_19;
    }
  }

  if (*(DerivedStorage + 25))
  {
    goto LABEL_22;
  }

  if (!v35)
  {
    return;
  }

LABEL_19:

  CFRelease(v35);
}

uint64_t CreateServedMutableMovieState(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v2)
  {
    result = 0;
  }

  else
  {
    CreateServedMutableMovieState_cold_1(&v4);
    result = v4;
  }

  *a1 = v2;
  return result;
}

void DisposeServedMutableMovieState(const void **a1)
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
      os_release(v4);
    }

    free(a1);
  }
}

uint64_t FigMutableMovieServerStart()
{
  if (!FigServer_IsMediaparserd())
  {
    FigServer_IsMediaplaybackd();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetInt32();
    v2 = FigXPCServerStart();
    CFRelease(v1);
  }

  else
  {
    FigMutableMovieServerStart_cold_1(&v4);
    return v4;
  }

  return v2;
}

uint64_t HandleMutableMovieDeleteTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "TrackID");
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, int64);
}

uint64_t HandleMutableMovieInsertMediaIntoTrackMessage(uint64_t a1, void *a2)
{
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v5)
  {
    return 4294954514;
  }

  memset(v8, 0, sizeof(v8));
  memset(v7, 0, sizeof(v7));
  return v5(a1, int64, v8, v7);
}

uint64_t HandleMutableMovieInsertEmptySegmentMessage(uint64_t a1)
{
  v4 = *MEMORY[0x1E6960CA8];
  v5 = *(MEMORY[0x1E6960CA8] + 16);
  v6 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v2)
  {
    return 4294954514;
  }

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  return v2(a1, v7);
}

uint64_t HandleMutableMovieInsertEmptyTrackSegmentMessage(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E6960CA8];
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v9 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v5)
  {
    return 4294954514;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return v5(a1, int64, v10);
}

uint64_t HandleMutableMovieDeleteSegmentMessage(uint64_t a1)
{
  v4 = *MEMORY[0x1E6960CA8];
  v5 = *(MEMORY[0x1E6960CA8] + 16);
  v6 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v2)
  {
    return 4294954514;
  }

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  return v2(a1, v7);
}

uint64_t HandleMutableMovieDeleteTrackSegmentMessage(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E6960CA8];
  v8 = *(MEMORY[0x1E6960CA8] + 16);
  v9 = *(MEMORY[0x1E6960CA8] + 32);
  FigXPCMessageGetCMTimeRange();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (!v5)
  {
    return 4294954514;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  return v5(a1, int64, v10);
}

uint64_t HandleMutableMovieScaleSegmentMessage(uint64_t a1)
{
  v6 = *MEMORY[0x1E6960CA8];
  v7 = *(MEMORY[0x1E6960CA8] + 16);
  v8 = *(MEMORY[0x1E6960CA8] + 32);
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTime();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v2)
  {
    return 4294954514;
  }

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v9 = v4;
  v10 = v5;
  return v2(a1, v11, &v9);
}

uint64_t HandleMutableMovieScaleTrackSegmentMessage(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E6960CA8];
  v10 = *(MEMORY[0x1E6960CA8] + 16);
  v11 = *(MEMORY[0x1E6960CA8] + 32);
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  FigXPCMessageGetCMTimeRange();
  FigXPCMessageGetCMTime();
  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v5)
  {
    return 4294954514;
  }

  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v12 = v7;
  v13 = v8;
  return v5(a1, int64, v14, &v12);
}

uint64_t HandleMutableMovieAddTrackReferenceToTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FromTrackID");
  v5 = xpc_dictionary_get_int64(xdict, "ToTrackID");
  v6 = xpc_dictionary_get_int64(xdict, "TrackReferenceType");
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 184);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a1, v6, int64, v5);
}

uint64_t HandleMutableMovieDeleteTrackReferenceToTrackMessage(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "FromTrackID");
  v5 = xpc_dictionary_get_int64(xdict, "ToTrackID");
  v6 = xpc_dictionary_get_int64(xdict, "TrackReferenceType");
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a1, v6, int64, v5);
}

uint64_t mutableMovieServer_CreateByteStreamFromMessageAndAddForMediaDataStorageURL(_xpc_connection_s *a1, uint64_t a2, void *a3)
{
  pid = xpc_connection_get_pid(a1);
  uint64 = xpc_dictionary_get_uint64(a3, "ByteStream");
  if (uint64)
  {
    v7 = pid == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  return mutableMovieServer_CreateByteStreamFromObjectIDAndAddForMediaDataStorageURL(a2, uint64, pid);
}

uint64_t OUTLINED_FUNCTION_4_146()
{

  return CMBaseObjectGetVTable();
}

uint64_t NeroTextImageCodec_Compress32BPPImage(char *__src, __int16 a2, int a3, uint64_t a4, _BYTE *a5, unint64_t *a6)
{
  if (!__src)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_9(&v18);
    return v18;
  }

  v6 = __src;
  if ((__src & 7) != 0)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_1(&v18);
    return v18;
  }

  if ((a4 & 7) != 0)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_2(&v18);
    return v18;
  }

  v8 = a5;
  if (!a5)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_8(&v18);
    return v18;
  }

  if (!a6)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_7(&v18);
    return v18;
  }

  v10 = *a6;
  if (!*a6)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_6(&v18);
    return v18;
  }

  if (!a3)
  {
    NeroTextImageCodec_Compress32BPPImage_cold_5(&v18);
    return v18;
  }

  v11 = 0;
  v12 = a3 + 1;
  v13 = a2;
  while (1)
  {
    v18 = 0;
    result = ntic_compressLine32BPP_Vec(v6, v13, v8, v10, &v18);
    if (result)
    {
      break;
    }

    v15 = v18;
    if (v10 == v18)
    {
      NeroTextImageCodec_Compress32BPPImage_cold_4(&v19);
      return v19;
    }

    v16 = v18 + v11;
    v17 = &v8[v18];
    *v17 = -1;
    v8 = v17 + 1;
    v6 += a4;
    v11 += v15 + 1;
    v10 += ~v15;
    if (--v12 <= 1)
    {
      if (v10 > 1)
      {
        result = 0;
        *v8 = 0;
        *a6 = v16 + 3;
        return result;
      }

      NeroTextImageCodec_Compress32BPPImage_cold_3(&v18);
      return v18;
    }
  }

  return result;
}

uint64_t ntic_compressLine32BPP_Vec(char *__src, int a2, _BYTE *a3, uint64_t a4, void *a5)
{
  if (a4 <= 0)
  {
    goto LABEL_57;
  }

  *a3 = 1;
  v5 = a3 + 1;
  v6 = a2 >> 1;
  if (a2 >> 1 < 1)
  {
    v22 = a3 + 1;
LABEL_46:
    v24 = a5;
    if (a5)
    {
      v25 = v22 - a3;
      goto LABEL_48;
    }

    return 0;
  }

  v8 = 0;
  v9 = &a3[a4];
  while (1)
  {
    v10 = v5 + 1;
    if (v6 >= 0x7Fu)
    {
      v11 = 127;
    }

    else
    {
      v11 = v6;
    }

    if (v6 < 2u)
    {
      if (v6 == 1)
      {
        break;
      }

      v15 = __src + 8;
      v12 = 1;
      goto LABEL_18;
    }

    v12 = 0;
    v14 = __src + 16;
    v13 = *__src;
    while (1)
    {
      v8 = v13;
      v15 = v14;
      v13 = *(v14 - 1);
      if (v13 == v8)
      {
        break;
      }

      v14 += 8;
      if (v11 - 1 == ++v12)
      {
        v12 = v11;
        break;
      }
    }

    if (v12 == v6)
    {
      break;
    }

    if (v12 != 127)
    {
      if (v12 < 1)
      {
LABEL_24:
        if (v6 >= 128)
        {
          v18 = 128;
        }

        else
        {
          v18 = v6;
        }

        if (v6 < 3)
        {
          v21 = -2;
        }

        else
        {
          v19 = -v18;
          if (-v18 >= -3)
          {
            v20 = -3;
          }

          else
          {
            v20 = -v18;
          }

          v21 = -2;
          while (*v15 == v8)
          {
            v15 += 8;
            if (--v21 <= v19)
            {
              v21 = v20;
              break;
            }
          }
        }

        *v5 = v21;
        *v10 = v8;
        v22 = v10 + 1;
        v6 += v21;
        goto LABEL_37;
      }

LABEL_18:
      *v5 = v12;
      v16 = 8 * v12;
      if (v16 >= v9 - v10)
      {
        v17 = v9 - v10;
      }

      else
      {
        v17 = 8 * v12;
      }

      memcpy(v10, __src, v17);
      if (v16 > v9 - v10 && &v10[v12] > v9)
      {
        goto LABEL_57;
      }

      v5 = v10 + v17;
      v6 -= v12;
      v10 = (v10 + v17 + 1);
      goto LABEL_24;
    }

    *v5 = 127;
    if (v9 - v10 >= 0x3F8)
    {
      v23 = 1016;
    }

    else
    {
      v23 = v9 - v10;
    }

    memcpy(v5 + 1, __src, v23);
    if (v9 - v10 <= 0x3F7 && (v5 + 1017) > v9)
    {
      goto LABEL_57;
    }

    v22 = v10 + v23;
    v6 -= 127;
LABEL_37:
    __src = v15;
    v5 = v22;
    if (v6 <= 0)
    {
      goto LABEL_46;
    }
  }

  *v5 = v6;
  v27 = 8 * v6;
  if (v27 >= v9 - v10)
  {
    v28 = v9 - v10;
  }

  else
  {
    v28 = 8 * v6;
  }

  memcpy(v5 + 1, __src, v28);
  v29 = v10 + v28;
  if (v27 <= v9 - v10 || &v29[8 * v6] <= v9)
  {
    v24 = a5;
    if (a5)
    {
      v25 = v29 - a3;
LABEL_48:
      *v24 = v25;
    }

    return 0;
  }

LABEL_57:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t NeroTextImageCodec_Decompress32BPPImage(char *__src, uint64_t a2, uint64_t a3, int a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (__src)
  {
    v7 = a5;
    if (a5)
    {
      if ((a5 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_1(&__pattern8);
      }

      else if ((a6 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_2(&__pattern8);
      }

      else if ((a7 & 7) != 0)
      {
        NeroTextImageCodec_Decompress32BPPImage_cold_3(&__pattern8);
      }

      else
      {
        v9 = __src;
        v10 = &__src[a2];
        v11 = &a5[a7];
        while (1)
        {
          if (!*v9)
          {
            return 0;
          }

          v12 = &v7[a6];
LABEL_9:
          if (v9 >= v10)
          {
            NeroTextImageCodec_Decompress32BPPImage_cold_11(&__pattern8);
            return __pattern8;
          }

          v13 = v9 + 1;
          if (*v9)
          {
            break;
          }

          ++v9;
LABEL_41:
          v7 = v12;
          if (!--a4)
          {
            return 0;
          }
        }

        if (v13 < v10)
        {
          v7 = &v7[8 * *v9 - 8];
          do
          {
            v9 = v13 + 1;
            v14 = *v13;
            if (!*v13)
            {
              goto LABEL_9;
            }

            if (v14 < 1)
            {
              __pattern8 = 0;
              if (v14 == 255)
              {
                goto LABEL_41;
              }

              if (v13 + 8 >= v10)
              {
                NeroTextImageCodec_Decompress32BPPImage_cold_4(&v25);
                return v25;
              }

              __pattern8 = *v9;
              v18 = 8 * (v14 ^ 0xFF) + 8;
              v19 = v11 - v7;
              if (v18 < v11 - v7)
              {
                v19 = 8 * (v14 ^ 0xFF) + 8;
              }

              if (v19 >= v12 - v7)
              {
                v20 = v12 - v7;
              }

              else
              {
                v20 = v19;
              }

              memset_pattern8(v7, &__pattern8, v20);
              v7 += v20;
              if (v20 != v18)
              {
                v21 = &v7[8 * v18];
                if (v21 > v11)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_6(&v25);
                  return v25;
                }

                if (v21 > v12)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_5(&v25);
                  return v25;
                }
              }

              v13 += 9;
            }

            else
            {
              v15 = v10 - v9;
              if (8 * v14 < (v10 - v9))
              {
                v15 = 8 * v14;
              }

              if (v15 >= v11 - v7)
              {
                v15 = v11 - v7;
              }

              if (v15 >= v12 - v7)
              {
                v16 = v12 - v7;
              }

              else
              {
                v16 = v15;
              }

              memcpy(v7, v13 + 1, v16);
              v13 = &v9[v16];
              v7 += v16;
              if (v16 != 8 * v14)
              {
                if (&v13[8 * v14] > v10)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_9(&__pattern8);
                  return __pattern8;
                }

                v17 = &v7[64 * v14];
                if (v17 > v11)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_8(&__pattern8);
                  return __pattern8;
                }

                if (v17 > v12)
                {
                  NeroTextImageCodec_Decompress32BPPImage_cold_7(&__pattern8);
                  return __pattern8;
                }
              }
            }
          }

          while (v13 < v10);
        }

        NeroTextImageCodec_Decompress32BPPImage_cold_10(&__pattern8);
      }
    }

    else
    {
      NeroTextImageCodec_Decompress32BPPImage_cold_12(&__pattern8);
    }
  }

  else
  {
    NeroTextImageCodec_Decompress32BPPImage_cold_13(&__pattern8);
  }

  return __pattern8;
}

uint64_t NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = 0;
  if (!a1)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_6(&v22);
    return v22;
  }

  if (!a3)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_5(&v22);
    return v22;
  }

  if (!a7)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_4(&v22);
    return v22;
  }

  if ((a7 & 7) != 0)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_1(&v22);
    return v22;
  }

  if ((a8 & 7) != 0)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_2(&v22);
    return v22;
  }

  if ((a9 & 7) != 0)
  {
    NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages_cold_3(&v22);
    return v22;
  }

  v12 = a6 - 1;
  v13 = a7;
  v14 = a3;
  v15 = a1;
  do
  {
    v16 = v12;
    v22 = 0;
    result = ntic_decodeLineRLEto32BGRA(v15, &a1[a2], v13, a7 + a9, v13 + a8, 0, &v22, &v23 + 1);
    if (result)
    {
      break;
    }

    v18 = v22;
    v22 = 0;
    result = ntic_decodeLineRLEto32BGRA(v14, &a3[a4], v13, a7 + a9, v13 + a8, 1, &v22, &v23);
    if (result)
    {
      break;
    }

    if (HIBYTE(v23) != 0 && v23 != 0)
    {
      break;
    }

    v13 += a8;
    v15 += v18;
    v14 += v22;
    v12 = v16 - 1;
  }

  while (v16);
  return result;
}

uint64_t ntic_decodeLineRLEto32BGRA(char *a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v8 = a7;
  v9 = a1;
  if (!*a1)
  {
    result = 0;
    *a8 = 1;
    goto LABEL_50;
  }

  if (a1 >= a2)
  {
    ntic_decodeLineRLEto32BGRA_cold_1(&__pattern8);
    result = __pattern8;
LABEL_50:
    v17 = v9;
    if (v8)
    {
      goto LABEL_47;
    }

    return result;
  }

  v11 = a1 + 1;
  if ((a1 + 1) >= a2)
  {
LABEL_52:
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
    goto LABEL_61;
  }

  v14 = a4;
  v15 = (a3 + 8 * *a1 - 8);
  while (1)
  {
    v17 = v11 + 1;
    v16 = *v11;
    if (!*v11)
    {
LABEL_45:
      result = 0;
      goto LABEL_46;
    }

    if (v16 < 1)
    {
      break;
    }

    v18 = 8 * v16;
    v19 = a2 - v17;
    if (v18 < a2 - v17)
    {
      v19 = v18;
    }

    if (v19 >= v14 - v15)
    {
      v19 = v14 - v15;
    }

    if (v19 >= a5 - v15)
    {
      v20 = a5 - v15;
    }

    else
    {
      v20 = v19;
    }

    if (a6 == 1)
    {
      if (v20)
      {
        for (i = 0; i < v20; i += 4)
        {
          *&v15[i] = ntic_blendTwoBGRAPixels(*&v15[i], *&v17[i]);
        }
      }
    }

    else
    {
      memcpy(v15, v11 + 1, v20);
    }

    v11 = &v17[v20];
    v15 += v20;
    if (v20 != v18)
    {
      if (&v11[v18] > a2)
      {
        ntic_decodeLineRLEto32BGRA_cold_7(&__pattern8);
LABEL_57:
        result = __pattern8;
        goto LABEL_61;
      }

      v29 = &v15[8 * v18];
      if (v29 > v14)
      {
        ntic_decodeLineRLEto32BGRA_cold_6(&__pattern8);
        goto LABEL_57;
      }

      if (v29 > a5)
      {
        ntic_decodeLineRLEto32BGRA_cold_5(&__pattern8);
        goto LABEL_57;
      }
    }

LABEL_39:
    if (v11 >= a2)
    {
      goto LABEL_52;
    }
  }

  __pattern8 = 0;
  if (v16 == 255)
  {
    goto LABEL_45;
  }

  if ((v11 + 8) >= a2)
  {
    ntic_decodeLineRLEto32BGRA_cold_2(&v37);
    result = v37;
    goto LABEL_46;
  }

  v22 = *v17;
  __pattern8 = *v17;
  v23 = 8 * (v16 ^ 0xFF) + 8;
  v24 = v14 - v15;
  if (v23 < v14 - v15)
  {
    v24 = v23;
  }

  v25 = a5;
  if (v24 >= a5 - v15)
  {
    v26 = a5 - v15;
  }

  else
  {
    v26 = v24;
  }

  v27 = a6;
  if (!a6)
  {
LABEL_29:
    memset_pattern8(v15, &__pattern8, v26);
    goto LABEL_30;
  }

  if ((v22 & 0xFF000000FF000000) != 0)
  {
    if ((v22 & 0xFF000000FF000000) != 0xFF000000FF000000)
    {
      if (v26)
      {
        v30 = 0;
        for (j = 0; j < v26; j += 4)
        {
          *&v15[j] = ntic_blendTwoBGRAPixels(*&v15[j], v22 >> (~v30 & 0x20));
          v30 += 32;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  v11 += 9;
  v15 += v26;
  if (v26 == v23)
  {
    goto LABEL_33;
  }

  v28 = &v15[8 * v23];
  if (v28 > a4)
  {
    ntic_decodeLineRLEto32BGRA_cold_4(&v37);
    goto LABEL_60;
  }

  if (v28 <= v25)
  {
LABEL_33:
    a6 = v27;
    a5 = v25;
    v14 = a4;
    goto LABEL_39;
  }

  ntic_decodeLineRLEto32BGRA_cold_3(&v37);
LABEL_60:
  result = v37;
LABEL_61:
  v17 = v11;
LABEL_46:
  v9 = a1;
  v8 = a7;
  if (a7)
  {
LABEL_47:
    *v8 = v17 - v9;
  }

  return result;
}

unint64_t ntic_blendTwoBGRAPixels(uint64_t a1, uint64_t a2)
{
  if (BYTE3(a1))
  {
    v2 = BYTE3(a2);
    if (BYTE3(a2) != 255)
    {
      if (v2)
      {
        return (((((v2 ^ 0xFF) * (a1 & 0xFF00FF)) >> 8) & 0xFF00FF) + (a2 & 0xFF00FF)) | ((((v2 ^ 0xFF) * ((a1 >> 8) & 0xFF00FF)) & 0xFF00FF00) + (a2 & 0xFF00FF00));
      }

      else
      {
        return a1;
      }
    }
  }

  return a2;
}

uint64_t FigClosedCaptionsTextRasterizerCreate(uint64_t a1, CFTypeRef *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigClosedCaptionsTextRasterizerCreate_cold_3(__str);
    return *__str;
  }

  FigTextRasterizerGetClassID();
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v8 = v3;
LABEL_7:
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *(DerivedStorage + 32) = *MEMORY[0x1E695F050];
  *(DerivedStorage + 48) = v5;
  *(DerivedStorage + 24) = 0;
  *(DerivedStorage + 400) = 1;
  *(DerivedStorage + 72) = 0;
  v6 = FigCFCaptionRendererCreate();
  *(DerivedStorage + 64) = v6;
  if (v6)
  {
    snprintf(__str, 0x100uLL, "com.apple.coremedia.FigClosedCaptionsTextRasterizer.messagequeue<%p>", *a2);
    v7 = dispatch_queue_create(__str, 0);
    *(DerivedStorage + 408) = v7;
    if (v7)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v8 = FigNotificationCenterAddWeakListener();
    }

    else
    {
      FigClosedCaptionsTextRasterizerCreate_cold_1(&v10);
      v8 = v10;
    }
  }

  else
  {
    FigClosedCaptionsTextRasterizerCreate_cold_2(__str);
    v8 = *__str;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  return v8;
}

void captionRendererDidChangeCaptionsNotification_0(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = *(DerivedStorage + 408);
    if (v4)
    {
      context = a2;
      dispatch_sync_f(v4, &context, captionRendererDidChangeCaptionsNotificationDo);
    }
  }

  else
  {
    captionRendererDidChangeCaptionsNotification_cold_1();
  }
}

uint64_t FigClosedCaptionsTextRasterizerSetCommand(uint64_t a1, int a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (*(DerivedStorage + 24))
    {
      FigCFCaptionRendererProcessCaptionCommandData(*(DerivedStorage + 64), a2, a3);
      return 0;
    }

    else
    {
      FigClosedCaptionsTextRasterizerSetCommand_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigClosedCaptionsTextRasterizerSetCommand_cold_2(&v8);
    return v8;
  }
}

void ccRasterizerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v1 = *(DerivedStorage + 64);
    if (v1)
    {
      CFRelease(v1);
      *(DerivedStorage + 64) = 0;
    }
  }

  v2 = *(DerivedStorage + 408);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 408) = 0;
  }

  CGContextRelease(*(DerivedStorage + 24));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ccRasterizerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigClosedCaptionsTextRasterizer %p>", a1);
  return Mutable;
}

uint64_t ccRasterizerSetRenderSize(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a1 < 1.0 || a2 < 1.0)
    {
      ccRasterizerSetRenderSize_cold_2(&v16);
      return v16;
    }

    else
    {
      v6 = DerivedStorage;
      if (*(DerivedStorage + 8) == a1 && *(DerivedStorage + 16) == a2)
      {
        return 0;
      }

      else
      {
        *(DerivedStorage + 8) = a1;
        *(DerivedStorage + 16) = a2;
        v8 = CMBaseObjectGetDerivedStorage();
        v9 = *(v8 + 24);
        if (v9)
        {
          CFRelease(v9);
          *(v8 + 24) = 0;
        }

        v10 = *(v8 + 8);
        if (v10 == *MEMORY[0x1E695F060] && *(v8 + 16) == *(MEMORY[0x1E695F060] + 8))
        {
          v13 = 0;
        }

        else
        {
          v12 = vcvtd_n_u64_f64(v10, 2uLL);
          v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          v14 = CGBitmapContextCreate(0, *(v8 + 8), *(v8 + 16), 8uLL, v12, v13, 0x2002u);
          *(v8 + 24) = v14;
          if (!v14)
          {
            ccRasterizerSetRenderSize_cold_1();
          }
        }

        CGColorSpaceRelease(v13);
        ccras_setupElementRects();
        result = 0;
        *(v6 + 400) = 1;
      }
    }
  }

  else
  {
    ccRasterizerSetRenderSize_cold_3(&v17);
    return v17;
  }

  return result;
}

uint64_t ccRasterizerSetVideoSizeAndDisplayRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v11 = DerivedStorage;
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (CGRectIsEmpty(v15))
    {
      ccRasterizerSetVideoSizeAndDisplayRect_cold_1(&v13);
      return v13;
    }

    else
    {
      v16.origin.x = a3;
      v16.origin.y = a4;
      v16.size.width = a5;
      v16.size.height = a6;
      if (!CGRectEqualToRect(v11[1], v16))
      {
        v11[1].origin.x = a3;
        v11[1].origin.y = a4;
        v11[1].size.width = a5;
        v11[1].size.height = a6;
        ccras_setupElementRects();
        ccras_clearBitmapContext();
      }

      return 0;
    }
  }

  else
  {
    ccRasterizerSetVideoSizeAndDisplayRect_cold_2(&v14);
    return v14;
  }
}

uint64_t ccRasterizerSetFontName(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = DerivedStorage;
      v5 = *DerivedStorage;
      *DerivedStorage = a2;
      CFRetain(a2);
      if (v5)
      {
        CFRelease(v5);
      }

      FigCFCaptionRendererSetFontName(v4[8], a2);
      return 0;
    }

    else
    {
      ccRasterizerSetFontName_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    ccRasterizerSetFontName_cold_2(&v8);
    return v8;
  }
}

uint64_t ccRasterizerReset()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    FigCFCaptionRendererResetCaptions();
    *(v1 + 72) = 0;
    ccras_clearBitmapContext();
    return 0;
  }

  else
  {
    ccRasterizerReset_cold_1(&v3);
    return v3;
  }
}

uint64_t ccRasterizerImageHasChangedSinceLastCopy(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 400);
  }

  return 0;
}

__n128 ccras_setupElementRects()
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v1 = (DerivedStorage + 48);
  v2 = (DerivedStorage + 56);
  if (CGRectIsNull(*(DerivedStorage + 32)))
  {
    v1 = (DerivedStorage + 8);
    v2 = (DerivedStorage + 16);
    v3 = 0.0;
    v4 = 0.0;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v3 = *(DerivedStorage + 40);
  }

  v5 = *v1;
  v6 = *v2;
  v7 = *(DerivedStorage + 64);
  v8 = *(MEMORY[0x1E6962818] + 16);
  v17[0] = *MEMORY[0x1E6962818];
  v17[1] = v8;
  v9 = *(MEMORY[0x1E6962818] + 48);
  v17[2] = *(MEMORY[0x1E6962818] + 32);
  v17[3] = v9;
  FigCFCaptionRendererGetCaptionElementRect(v7, v17, 0, 10, &v18, v19, v4, v3, v5, v6, v4, v3);
  v11 = v18;
  if (v18 >= 10)
  {
    v12 = 10;
  }

  else
  {
    v12 = v18;
  }

  *(DerivedStorage + 72) = v12;
  if (v11 >= 1)
  {
    v13 = 0;
    v14 = DerivedStorage + 80;
    v15 = v19;
    do
    {
      result = v15->origin;
      size = v15->size;
      ++v15;
      *v14 = result;
      *(v14 + 16) = size;
      v14 += 32;
      ++v13;
    }

    while (v13 < v12);
  }

  return result;
}

void ccras_clearBitmapContext()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1.origin.x = *MEMORY[0x1E695EFF8];
  v1.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v1.size.width = *(DerivedStorage + 8);
  v1.size.height = *(DerivedStorage + 16);
  CGContextClearRect(*(DerivedStorage + 24), v1);
  *(DerivedStorage + 400) = 1;
}

void captionRendererDidChangeCaptionsNotificationDo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    ccras_setupElementRects();
    ccras_clearBitmapContext();
    if (*(v1 + 72) >= 1)
    {
      v2 = 0;
      v3 = (v1 + 104);
      do
      {
        FigCFCaptionRendererDrawCaptionElementInContextForRectOrientation(*(v3 - 3), *(v3 - 2), *(v3 - 1), *v3, *(v1 + 64), v2++, *(v1 + 24), 0, &v4);
        v3 += 4;
      }

      while (v2 < *(v1 + 72));
    }
  }

  else
  {
    captionRendererDidChangeCaptionsNotificationDo_cold_1();
  }
}

void __ffpap_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    FigCFDictionarySetValue();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12786;
  }
}

void subtitleRasterizerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 129))
  {
    v2 = *(DerivedStorage + 120);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = *(CMBaseObjectGetDerivedStorage() + 136);
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:
  CGContextRelease(*(v1 + 72));
  if (*v1)
  {
    CFRelease(*v1);
  }

  v3 = *(v1 + 144);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *subtitleRasterizerCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSubtitleTextRasterizer %p>", a1);
  return Mutable;
}

uint64_t subtitleRasterizerSetRenderSize(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a1 < 1.0 || a2 < 1.0)
    {
      subtitleRasterizerSetRenderSize_cold_3(&v15);
      return v15;
    }

    else
    {
      v6 = DerivedStorage;
      if (*(DerivedStorage + 8) == a1 && *(DerivedStorage + 16) == a2)
      {
        return 0;
      }

      else
      {
        *(DerivedStorage + 8) = a1;
        *(DerivedStorage + 16) = a2;
        v8 = CMBaseObjectGetDerivedStorage();
        v9 = *(v8 + 72);
        if (v9)
        {
          CFRelease(v9);
          *(v8 + 72) = 0;
        }

        v10 = *(v8 + 8);
        if (v10 == *MEMORY[0x1E695F060] && *(v8 + 16) == *(MEMORY[0x1E695F060] + 8))
        {
          v12 = 0;
        }

        else
        {
          v12 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          if (v12)
          {
            v13 = CGBitmapContextCreate(0, *(v8 + 8), *(v8 + 16), 8uLL, vcvtd_n_u64_f64(v10, 2uLL), v12, 0x2002u);
            *(v8 + 72) = v13;
            if (v13)
            {
              *(v8 + 80) = 0;
              *(v8 + 88) = 0;
              *(v8 + 96) = *(v8 + 8);
              *(v8 + 112) = 0;
            }

            else
            {
              subtitleRasterizerSetRenderSize_cold_1();
            }
          }

          else
          {
            subtitleRasterizerSetRenderSize_cold_2();
          }
        }

        CGColorSpaceRelease(v12);
        result = 0;
        *(v6 + 128) = 1;
      }
    }
  }

  else
  {
    subtitleRasterizerSetRenderSize_cold_4(&v16);
    return v16;
  }

  return result;
}

uint64_t subtitleRasterizerSetVideoSizeAndDisplayRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a1 < 1.0 || a2 < 1.0)
    {
      subtitleRasterizerSetVideoSizeAndDisplayRect_cold_2(&v17);
      return v17;
    }

    else
    {
      v14 = DerivedStorage;
      v19.origin.x = a3;
      v19.origin.y = a4;
      v19.size.width = a5;
      v19.size.height = a6;
      result = CGRectIsEmpty(v19);
      if (result)
      {
        subtitleRasterizerSetVideoSizeAndDisplayRect_cold_1(&v16);
        return v16;
      }

      else
      {
        v14[3] = a1;
        v14[4] = a2;
        v14[5] = a3;
        v14[6] = a4;
        v14[7] = a5;
        v14[8] = a6;
      }
    }
  }

  else
  {
    subtitleRasterizerSetVideoSizeAndDisplayRect_cold_3(&v18);
    return v18;
  }

  return result;
}

uint64_t subtitleRasterizerSetFontName(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a2)
    {
      v4 = *DerivedStorage;
      *DerivedStorage = a2;
      CFRetain(a2);
      if (v4)
      {
        CFRelease(v4);
      }

      return 0;
    }

    else
    {
      subtitleRasterizerSetFontName_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    subtitleRasterizerSetFontName_cold_2(&v7);
    return v7;
  }
}

uint64_t subtitleRasterizerReset()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v4.origin.x = *MEMORY[0x1E695EFF8];
    v4.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v4.size.width = *(DerivedStorage + 8);
    v4.size.height = *(DerivedStorage + 16);
    CGContextClearRect(*(DerivedStorage + 72), v4);
    result = 0;
    *(v1 + 112) = 0;
    *(v1 + 128) = 1;
  }

  else
  {
    subtitleRasterizerReset_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t subtitleRasterizerImageHasChangedSinceLastCopy(uint64_t a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 128);
  }

  return 0;
}

uint64_t EMSGInformationCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterEMSGInformationTypeOnce != -1)
  {
    EMSGInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    EMSGInformationCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t RegisterEMSGInformationType()
{
  result = _CFRuntimeRegisterClass();
  sEMSGInformationID = result;
  return result;
}

void emsgInformationFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }
}

__CFString *emsgInformationCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<EMSGInformationRef %p> timescale: %d presentationTime: %lld eventDuration: %lld identifier: %d schemeIDURI: %@ value: %@", a1, *(a1 + 16), *(a1 + 20), *(a1 + 28), *(a1 + 36), *(a1 + 40), *(a1 + 48));
  return Mutable;
}

uint64_t FigTextRasterizerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTextRasterizerGetClassID_sRegisterFigTextRasterizerOnce, RegisterFigTextRasterizerClass);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTextRasterizerCreatePixelBufferFromBitmapContext(CGContext *a1, OSType a2, uint64_t a3, CVPixelBufferRef *a4)
{
  if (a1)
  {
    Width = CGBitmapContextGetWidth(a1);
    Height = CGBitmapContextGetHeight(a1);
    BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
    v10 = *MEMORY[0x1E695E480];
    Data = CGBitmapContextGetData(a1);
    result = CVPixelBufferCreateWithBytes(v10, Width, Height, a2, Data, BytesPerRow, 0, 0, 0, a4);
    if (result)
    {

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    figTTMLBody_GetNodeType_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t FigOctaviaVideoRenderPipelineCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (!a4)
  {
    FigOctaviaVideoRenderPipelineCreate_cold_2(&v15);
    return v15;
  }

  if (!a3)
  {
    FigOctaviaVideoRenderPipelineCreate_cold_1(&v15);
    return v15;
  }

  FigRenderPipelineGetClassID();
  BBufFromPointer = CMDerivedObjectCreate();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 4) = 1986618469;
  v8 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 16) = v8;
  if (!v8)
  {
    return 4294954443;
  }

  *(DerivedStorage + 176) = CFRetain(a3);
  BBufFromPointer = NeroTransportRegisterObject();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  v9 = dispatch_queue_create("octavia.videoRP.notifications", 0);
  *(DerivedStorage + 24) = v9;
  if (!v9)
  {
    return 4294954443;
  }

  BBufFromPointer = FigTransportCreateBBufFromPointer();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  FigCFDictionaryGetBooleanIfPresent();
  BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  DataLength = CMBlockBufferGetDataLength(0);
  BBufFromPointer = CMBlockBufferAppendBufferReference(0, 0, 0, DataLength, 0);
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  FigTransportGetRemoteRootObject();
  BBufFromPointer = NeroTransportSendSyncMessageCreatingReply();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  *(DerivedStorage + 64) = 8;
  *(DerivedStorage + 96) = 0;
  v11 = CMMemoryPoolCreate(0);
  *(DerivedStorage + 136) = v11;
  if (!v11)
  {
    return 4294954443;
  }

  Allocator = CMMemoryPoolGetAllocator(v11);
  *(DerivedStorage + 144) = Allocator;
  if (Allocator)
  {
    CFRetain(Allocator);
  }

  BBufFromPointer = CMBlockBufferCopyDataBytes(0, 0, 8uLL, (DerivedStorage + 8));
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  BBufFromPointer = octrp_createSourceQueueAndInstallTriggers(0);
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  BBufFromPointer = CMNotificationCenterAddListener();
  if (BBufFromPointer)
  {
    return BBufFromPointer;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v13 = CMNotificationCenterAddListener();
  if (!v13)
  {
    *(DerivedStorage + 184) = FigGetCFPreferenceNumberWithDefault() != 0;
    *a4 = 0;
  }

  return v13;
}

void __FigOctaviaVideoRenderPipelineCreate_block_invoke(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  v5 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (a2 <= 1852138851)
  {
    switch(a2)
    {
      case 828797549:
        v6 = kFigRenderPipelineNotification_FirstVideoFrameEnqueued;
        break;
      case 945976678:
        v6 = MEMORY[0x1E69605B0];
        break;
      case 1684370034:
        v6 = kFigRenderPipelineNotification_DecodeError;
        break;
      default:
        return;
    }

    goto LABEL_15;
  }

  switch(a2)
  {
    case 1936093805:
      v6 = kFigRenderPipelineNotification_SynchronousFrameEnqueued;
LABEL_15:
      v7 = *v6;

      octrp_reflectNeroNotification(v5, v7, a3);
      return;
    case 1918989413:
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      destination = 0.0;
      v13 = **&MEMORY[0x1E6960C70];
      v12 = v13;
      if (CMBlockBufferGetDataLength(a3) == 56 && !CMBlockBufferCopyDataBytes(a3, 0, 8uLL, &destination) && !CMBlockBufferCopyDataBytes(a3, 8uLL, 0x18uLL, &v13) && !CMBlockBufferCopyDataBytes(a3, 0x20uLL, 0x18uLL, &v12))
      {
        v9 = *(DerivedStorage + 120);
        timebaseTime = v13;
        v10 = v12;
        CMTimebaseSetRateAndAnchorTime(v9, destination, &timebaseTime, &v10);
      }

      break;
    case 1852138852:
      FigAtomicIncrement32();

      octrp_sendSampleBuffersToNeroIfNeeded();
      break;
  }
}

uint64_t octrp_createSourceQueueAndInstallTriggers(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  result = CMBufferQueueCreate(v3, 0, CallbacksForUnsortedSampleBuffers, DerivedStorage + 4);
  if (!result)
  {
    v6 = DerivedStorage[4];
    v9 = *MEMORY[0x1E6960C70];
    *&time.value = *MEMORY[0x1E6960C70];
    v7 = *(MEMORY[0x1E6960C70] + 16);
    time.epoch = v7;
    result = CMBufferQueueInstallTrigger(v6, octrp_sourceQueueDataBecameReady, a1, 7, &time, DerivedStorage + 5);
    if (!result)
    {
      result = CMBufferQueueInstallTriggerWithIntegerThreshold(DerivedStorage[4], octrp_sourceQueueBuffersBecameAvailable, a1, 11, 0, DerivedStorage + 6);
      if (!result)
      {
        v8 = DerivedStorage[4];
        *&time.value = v9;
        time.epoch = v7;
        return CMBufferQueueInstallTrigger(v8, octrp_sourceQueueWasReset, a1, 9, &time, DerivedStorage + 7);
      }
    }
  }

  return result;
}

void octrp_inhibitOutputUntil(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  if (!a5)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(a5, *MEMORY[0x1E6960580]);
  if (Value)
  {
    v8 = Value;
    CFRetain(Value);
    v9 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __octrp_inhibitOutputUntil_block_invoke;
    block[3] = &__block_descriptor_tmp_26_2;
    block[4] = DerivedStorage;
    block[5] = v8;
    dispatch_sync(v9, block);
  }

  if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
  {
LABEL_5:
    NeroTransportSendAsyncMessage();
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t octrp_resetOutputQueue()
{
  CMBaseObjectGetDerivedStorage();

  return NeroTransportSendAsyncMessage();
}

uint64_t FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray(const __CFAllocator *a1, const __CFDictionary *a2, CFArrayRef theArray, const __CFArray *a4, const void *a5, const void *a6, const void *a7, int a8, const void *a9, CFTypeRef *a10)
{
  cf = 0;
  if (!a10)
  {
    v24 = 1404;
LABEL_19:
    FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray_cold_1(v24, &v26);
    v20 = v26;
    goto LABEL_8;
  }

  if (!theArray)
  {
    v24 = 1405;
    goto LABEL_19;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    v24 = 1406;
    goto LABEL_19;
  }

  if (!a9)
  {
    v24 = 1407;
    goto LABEL_19;
  }

  v18 = FigOctaviaVideoRenderPipelineCreate(a1, a2, a9, &cf);
  if (v18 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v18 = FigVideoRenderPipelineCreateWithFigImageQueueArray(a1, a5, a6, a7, a8, theArray, a4, a2, (DerivedStorage + 152)), v18))
  {
    v20 = v18;
  }

  else
  {
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 152));
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v20 = v23(FigBaseObject, @"SourceSampleBufferQueue", a1, DerivedStorage + 160);
      if (!v20)
      {
        *a10 = cf;
        return v20;
      }
    }

    else
    {
      v20 = 4294954514;
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

__CFString *octvrp_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigOctaviaVideoRenderPipeline %p>", a1);
  return Mutable;
}

uint64_t octrp_setTimebase(uint64_t a1, OpaqueCMTimebase *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 120);
  if (v7 == a2)
  {
    return 0;
  }

  v8 = DerivedStorage;
  if (a2)
  {
    v9 = CMTimebaseCopySourceClock(a2);
    v10 = v9;
    if (*(v8 + 113) && v9 != *(v8 + 104))
    {
      octrp_setTimebase_cold_1(&v17);
      v12 = v17;
      goto LABEL_30;
    }

    if (v9)
    {
      v11 = FigClockIsOctaviaClock() == 0;
    }

    else
    {
      v11 = 1;
    }

    BBufFromPointer = FigTransportCreateBBufFromPointer();
    if (BBufFromPointer)
    {
LABEL_29:
      v12 = BBufFromPointer;
      goto LABEL_30;
    }

    v7 = *(v8 + 120);
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  if (v7)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    if (*(v8 + 113))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMTimebaseNotificationBarrier(*(v8 + 120));
    }

    v14 = *(v8 + 128);
    if (v14)
    {
      FigSyncMomentSourceSetTimebase(v14, 0);
    }

    v15 = *(v8 + 120);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  *(v8 + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (*(v8 + 113))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (v11)
    {
      BBufFromPointer = octrp_ensurePreferredClock();
      if (BBufFromPointer)
      {
        goto LABEL_29;
      }
    }
  }

  if (a3)
  {
    BBufFromPointer = NeroTransportSendAsyncMessage();
    if (BBufFromPointer)
    {
      goto LABEL_29;
    }
  }

  if (*(v8 + 120))
  {
    BBufFromPointer = octrp_handleTimebaseTimeJumped();
    if (!BBufFromPointer)
    {
      BBufFromPointer = octrp_updateSyncMomentSourceOnTimebase(a1);
    }

    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:
  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

void octrp_timebaseRateChanged()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = *(CMBaseObjectGetDerivedStorage() + 120);
  if (v1)
  {
    Rate = CMTimebaseGetRate(v1);
    v3 = MEMORY[0x1E6962DA0];
    if (Rate != 0.0)
    {
      v3 = MEMORY[0x1E6962DA8];
    }

    v4 = *v3;
    FigCFDictionarySetFloat32();
    if (v4)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6962D80], v4);
    }
  }

  FigCFDictionarySetInt32();
  FigLogPowerEvent();

  CFRelease(Mutable);
}

uint64_t octrp_timebaseMasterDidChange(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = NeroTransportSendAsyncMessage();
  if (!result)
  {

    return octrp_updateSyncMomentSourceOnTimebase(a2);
  }

  return result;
}

uint64_t octrp_ensurePreferredClock()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  theSourceBuffer = 0;
  if (*(DerivedStorage + 104))
  {
    ConsumingNeroClock = 0;
  }

  else
  {
    v2 = NeroTransportSendSyncMessageCreatingReply();
    if (v2 || (v2 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v4), v2))
    {
      ConsumingNeroClock = v2;
    }

    else
    {
      ConsumingNeroClock = FigOctaviaClockCreateConsumingNeroClock(*MEMORY[0x1E695E480], v4, *(DerivedStorage + 176), (DerivedStorage + 104));
      if (!ConsumingNeroClock)
      {
        v4 = 0;
      }
    }
  }

  if (theSourceBuffer)
  {
    CFRelease(theSourceBuffer);
  }

  if (v4)
  {
    NeroTransportSendAsyncMessage();
  }

  return ConsumingNeroClock;
}

uint64_t octrp_handleTimebaseTimeJumped()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  outRelativeRate = 0.0;
  blockBufferOut = 0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&outRelativeToClockOrTimebaseAnchorTime, 0, sizeof(outRelativeToClockOrTimebaseAnchorTime));
  v1 = CMTimebaseCopySource(*(DerivedStorage + 120));
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(*(DerivedStorage + 120), v1, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
  if (!RelativeRateAndAnchorTime)
  {
    v3 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x38uLL, *MEMORY[0x1E695E480], 0, 0, 0x38uLL, 1u, &blockBufferOut);
    v4 = blockBufferOut;
    if (v3 || (v3 = CMBlockBufferReplaceDataBytes(&outRelativeRate, blockBufferOut, 0, 8uLL), v4 = blockBufferOut, v3) || (v3 = CMBlockBufferReplaceDataBytes(&outOfClockOrTimebaseAnchorTime, blockBufferOut, 8uLL, 0x18uLL), v4 = blockBufferOut, v3) || (v3 = CMBlockBufferReplaceDataBytes(&outRelativeToClockOrTimebaseAnchorTime, blockBufferOut, 0x20uLL, 0x18uLL), v4 = blockBufferOut, v3))
    {
      RelativeRateAndAnchorTime = v3;
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    RelativeRateAndAnchorTime = NeroTransportSendAsyncMessage();
    v4 = blockBufferOut;
    if (blockBufferOut)
    {
LABEL_7:
      CFRelease(v4);
    }
  }

LABEL_8:
  if (v1)
  {
    CFRelease(v1);
  }

  return RelativeRateAndAnchorTime;
}

uint64_t octrp_updateSyncMomentSourceOnTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 120);
  if (!v3)
  {
    return 0;
  }

  v4 = CMTimebaseCopySourceClock(v3);
  if (v4)
  {
    v5 = v4;
    IsOctaviaClock = FigClockIsOctaviaClock();
    CFRelease(v5);
    v7 = IsOctaviaClock != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(DerivedStorage + 128);
  if (*(DerivedStorage + 113) || v7)
  {
    if (v8)
    {
      FigSyncMomentSourceSetTimebase(v8, 0);
    }

    return 0;
  }

  v9 = *(DerivedStorage + 120);
  if (v8)
  {
    v10 = *(DerivedStorage + 120);

    return FigSyncMomentSourceSetTimebase(v8, v10);
  }

  else
  {
    v12 = *(DerivedStorage + 24);

    return FigSyncMomentSourceCreateWithDispatchQueue(octrp_timebaseSyncUpdateCallback, a1, v9, v12, (DerivedStorage + 128));
  }
}

void octrp_timebaseSyncUpdateCallback(uint64_t a1, const void *a2)
{
  destinationBuffer = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && a2 && !*DerivedStorage)
  {
    if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x48uLL, *MEMORY[0x1E695E480], 0, 0, 0x48uLL, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, 0x48uLL))
    {
      NeroTransportSendAsyncMessage();
    }

    if (destinationBuffer)
    {
      CFRelease(destinationBuffer);
    }
  }
}

uint64_t octrp_copyNeroProperty()
{
  CMBaseObjectGetDerivedStorage();
  result = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (!result)
  {
    result = NeroTransportSendSyncMessageCreatingReply();
    if (!result)
    {
      return FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
    }
  }

  return result;
}

uint64_t octrp_setNeroProperty()
{
  CMBaseObjectGetDerivedStorage();
  SerializedAtomDataBlockBufferForKeyValuePair = FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair();
  if (!SerializedAtomDataBlockBufferForKeyValuePair)
  {
    return NeroTransportSendAsyncMessage();
  }

  return SerializedAtomDataBlockBufferForKeyValuePair;
}

uint64_t octrp_SetRateAndAnchorTime(float a1, float a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = a2;
  sourceBytes = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  blockBufferOut = 0;
  v8 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x20uLL, *MEMORY[0x1E695E480], 0, 0, 0x20uLL, 1u, &blockBufferOut);
  if (v8 || (v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 4uLL), v8) || (v8 = CMBlockBufferReplaceDataBytes(&v17, blockBufferOut, 4uLL, 4uLL), v8) || (v8 = CMBlockBufferReplaceDataBytes(a4, blockBufferOut, 8uLL, 0x18uLL), v8) || (v8 = NeroTransportSendAsyncMessage(), v8))
  {
    v9 = v8;
  }

  else
  {
    v11 = *(DerivedStorage + 152);
    if (v11)
    {
      v14 = *a4;
      v15 = a4[2];
      v12 = *a5;
      v13 = *(a5 + 16);
      FigRenderPipelineSetRateAndAnchorTime(v11, &v14, &v12, sourceBytes, v17);
    }

    v9 = 0;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

uint64_t octvrp_PretendOutputIsLow()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = NeroTransportSendAsyncMessage();
  if (!v1)
  {
    v3 = *(DerivedStorage + 152);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  return v1;
}

uint64_t FigRenderPipelineSetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, float a4, float a5)
{
  VTable = CMBaseObjectGetVTable();
  v12 = *(VTable + 16);
  result = VTable + 16;
  v13 = *(v12 + 8);
  if (v13)
  {
    v16 = *a2;
    v17 = *(a2 + 2);
    v14 = *a3;
    v15 = *(a3 + 2);
    return v13(a1, &v16, &v14, a4, a5);
  }

  return result;
}

void octrp_sendSampleBuffersToNeroIfNeeded()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  v1 = (DerivedStorage + 64);
  if (*(DerivedStorage + 64) >= 1)
  {
    v2 = DerivedStorage;
    v3 = *MEMORY[0x1E6960518];
    v4 = *MEMORY[0x1E6960478];
    while (1)
    {
      v5 = CMBufferQueueDequeueIfDataReadyAndRetain(*(v2 + 32));
      if (!v5)
      {
LABEL_25:
        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        return;
      }

      v6 = v5;
      if (*(v2 + 72))
      {
        CMGetAttachment(v5, v3, 0);
        if (!FigCFEqual())
        {
          CFRelease(v6);
          goto LABEL_22;
        }

        v7 = *(v2 + 72);
        if (v7)
        {
          CFRelease(v7);
          *(v2 + 72) = 0;
        }
      }

      if (*(v2 + 184))
      {
        v8 = CMGetAttachment(v6, v4, 0);
        if (v8)
        {
          if (CFDictionaryGetValue(v8, @"timestamps"))
          {
            memset(&v15, 0, sizeof(v15));
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&v15, HostTimeClock);
            memset(&v14, 0, sizeof(v14));
            v10 = CMClockGetHostTimeClock();
            v11 = *(v2 + 104);
            v13 = v15;
            CMSyncConvertTime(&v14, &v13, v10, v11);
            v13 = v14;
            CMClockConvertHostTimeToSystemUnits(&v13);
            FigHostTimeToNanoseconds();
            FigCFArrayAppendInt64();
          }
        }
      }

      if (!FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer() || (CMRemoveAttachment(v6, @"PostNotificationWhenConsumed"), !FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForSampleBuffer()))
      {
        if (CMBlockBufferGetDataLength(theBuffer) > *(v2 + 96))
        {
          *(v2 + 96) = CMBlockBufferGetDataLength(theBuffer);
        }

        if (NeroTransportSendAsyncMessage())
        {
          CFRelease(v6);
          goto LABEL_25;
        }

        FigAtomicDecrement32();
        v12 = *(v2 + 160);
        if (v12)
        {
          CMBufferQueueEnqueue(v12, v6);
        }
      }

      CFRelease(v6);
      if (theBuffer)
      {
        CFRelease(theBuffer);
        theBuffer = 0;
      }

LABEL_22:
      if (*v1 <= 0)
      {
        goto LABEL_25;
      }
    }
  }
}

void octrp_reflectNeroNotification(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  if (!a3 || !FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __octrp_reflectNeroNotification_block_invoke;
      block[3] = &__block_descriptor_tmp_23_3;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a1;
      block[7] = v9;
      dispatch_async(v7, block);
    }

    else if (a2)
    {
      CFRelease(a2);
    }
  }
}

void __octrp_reflectNeroNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void octrp_sourceQueueDataBecameReady(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __octrp_sourceQueueDataBecameReady_block_invoke;
  block[3] = &__block_descriptor_tmp_24_3;
  block[4] = a1;
  dispatch_async(v2, block);
}

void octrp_sourceQueueBuffersBecameAvailable(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __octrp_sourceQueueBuffersBecameAvailable_block_invoke;
  block[3] = &__block_descriptor_tmp_25_3;
  block[4] = a1;
  dispatch_async(v2, block);
}

opaqueCMBufferQueue *octrp_sourceQueueWasReset()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  NeroTransportSendAsyncMessage();
  *(DerivedStorage + 64) = 8;
  result = *(DerivedStorage + 160);
  if (result)
  {

    return CMBufferQueueReset(result);
  }

  return result;
}

void __octrp_inhibitOutputUntil_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t IFFrat32FromCGFloat(double a1)
{
  v1 = ceil(a1);
  v2 = floor(a1);
  if (a1 >= 0.0)
  {
    v1 = v2;
  }

  v3 = v1;
  if (v1 == a1)
  {
    v6 = 0x100000000;
  }

  else
  {
    v4 = v3 ^ (v3 >> 31);
    if (v4 >= 0x100)
    {
      if (v4 >= 0x10000)
      {
        if (HIBYTE(v4))
        {
          v5 = 1;
        }

        else
        {
          v5 = 128;
        }
      }

      else
      {
        v5 = 0x8000;
      }
    }

    else
    {
      v5 = 0x800000;
    }

    v7 = v5 * a1;
    v8 = ceil(v7);
    v9 = floor(v7);
    if (v7 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v3 = v10;
    v6 = v5 << 32;
  }

  return v6 | v3;
}

uint64_t IFFItemPropertyGetUnrotatedCLAP(int a1, int8x16_t *a2, int8x16_t *a3)
{
  if (a1 != 270)
  {
    if (a1 == 180)
    {
      v6 = a2[1].i32[2];
      if (v6 == 0x80000000)
      {
        IFFItemPropertyGetUnrotatedCLAP_cold_2(&v9);
        return v9;
      }

      v4 = a2 + 1;
      LODWORD(v3) = a2[1].i32[0];
      if (v3 == 0x80000000)
      {
        IFFItemPropertyGetUnrotatedCLAP_cold_1(&v9);
        return v9;
      }

      a2[1].i32[2] = -v6;
      goto LABEL_11;
    }

    if (a1 != 90)
    {
LABEL_12:
      result = 0;
      v8 = a2[1];
      *a3 = *a2;
      a3[1] = v8;
      return result;
    }
  }

  *a2 = vextq_s8(*a2, *a2, 8uLL);
  v3 = a2[1].i64[1];
  v4 = a2 + 1;
  v5 = a2[1].i64[0];
  a2[1].i64[1] = v5;
  a2[1].i64[0] = v3;
  if (a1 != 90)
  {
    LODWORD(v3) = v5;
    v4 = (a2 + 24);
    if (v5 == 0x80000000)
    {
      IFFItemPropertyGetUnrotatedCLAP_cold_3(&v9);
      return v9;
    }

    goto LABEL_11;
  }

  if (v3 != 0x80000000)
  {
LABEL_11:
    v4->i32[0] = -v3;
    goto LABEL_12;
  }

  IFFItemPropertyGetUnrotatedCLAP_cold_4(&v9);
  return v9;
}

uint64_t IFFItemPropertyGetUnmirroredCLAP(int a1, uint64_t a2, _OWORD *a3)
{
  if (!a1)
  {
    v3 = (a2 + 24);
    v4 = *(a2 + 24);
    if (v4 == 0x80000000)
    {
      IFFItemPropertyGetUnmirroredCLAP_cold_1(&v7);
      return v7;
    }

    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = (a2 + 16);
    v4 = *(a2 + 16);
    if (v4 == 0x80000000)
    {
      IFFItemPropertyGetUnmirroredCLAP_cold_2(&v8);
      return v8;
    }

LABEL_6:
    *v3 = -v4;
  }

  result = 0;
  v6 = *(a2 + 16);
  *a3 = *a2;
  a3[1] = v6;
  return result;
}