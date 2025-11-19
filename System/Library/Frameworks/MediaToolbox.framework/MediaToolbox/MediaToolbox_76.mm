__CFString *collector_CopyDebugDesc(const void *a1)
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
  CFStringAppendFormat(Mutable, 0, @"FSAC %p retainCount: %d%s allocator: %p", a1, v5, v6, v7);
  return Mutable;
}

uint64_t collector_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954516;
  }

  v7 = DerivedStorage;
  if (!*DerivedStorage)
  {
    if (!a4)
    {
      collector_CopyProperty_cold_1(&v13);
      return v13;
    }

    v10 = *(DerivedStorage + 136);
    if (v10)
    {
      FigSimpleMutexLock();
    }

    if (CFEqual(@"MetadataSourceBuffersQueues", a2))
    {
      v11 = *(v7 + 208);
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    else if (CFEqual(@"SampleAttachmentCollectionRules", a2))
    {
      v11 = *(v7 + 8);
      if (!v11)
      {
LABEL_21:
        v9 = 0;
        *a4 = v11;
        if (v10)
        {
LABEL_22:
          FigSimpleMutexUnlock();
        }

        return v9;
      }
    }

    else
    {
      if (!CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        fig_log_get_emitter();
        v9 = FigSignalErrorAtGM();
        if (!v10)
        {
          return v9;
        }

        goto LABEL_22;
      }

      v12 = MEMORY[0x1E695E4C0];
      if (*(v7 + 1))
      {
        v12 = MEMORY[0x1E695E4D0];
      }

      v11 = *v12;
    }

    v11 = CFRetain(v11);
    goto LABEL_21;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t collector_SetProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294954516;
  }

  v7 = DerivedStorage;
  if (!*DerivedStorage)
  {
    if (CFEqual(@"MetadataSourceBuffersQueues", a2))
    {
      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFArrayGetTypeID())
        {
          if (*(v7 + 17))
          {
            FigSimpleMutexLock();
            if (FigCFEqual())
            {
LABEL_23:
              FigSimpleMutexUnlock();
              return 0;
            }

            collector_removeMetadataBufferQueueTriggers();
            v10 = *(v7 + 26);
            *(v7 + 26) = a3;
            CFRetain(a3);
            if (v10)
            {
              CFRelease(v10);
            }

            MetadataBufferProvidersAndInstallTriggers = collector_createMetadataBufferProvidersAndInstallTriggers(a1);
            if (MetadataBufferProvidersAndInstallTriggers)
            {
              a3 = MetadataBufferProvidersAndInstallTriggers;
              FigSimpleMutexUnlock();
              return a3;
            }

LABEL_22:
            collector_tearDownAsyncProcessState(a1);
            collector_setUpAsyncProcessState(a1);
            goto LABEL_23;
          }

          v15 = *(v7 + 26);
          *(v7 + 26) = a3;
          goto LABEL_31;
        }

        return 0;
      }
    }

    else
    {
      if (CFEqual(@"SampleAttachmentCollectionRules", a2))
      {
        if (!a3)
        {
          return a3;
        }

        v12 = CFGetTypeID(a3);
        if (v12 == FigSampleAttachmentCollectionRulesGetTypeID())
        {
          if (*(v7 + 17))
          {
            FigSimpleMutexLock();
            v13 = *(v7 + 1);
            *(v7 + 1) = a3;
            CFRetain(a3);
            if (v13)
            {
              CFRelease(v13);
            }

            goto LABEL_22;
          }

          v15 = *(v7 + 1);
          *(v7 + 1) = a3;
LABEL_31:
          CFRetain(a3);
          if (v15)
          {
            CFRelease(v15);
          }
        }

        return 0;
      }

      if (!CFEqual(@"PropagatePerFrameHDRDisplayMetadata", a2))
      {
        goto LABEL_3;
      }

      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 == CFBooleanGetTypeID())
        {
          a3 = 0;
          v7[1] = FigCFEqual();
          return a3;
        }

        return 0;
      }
    }

    return a3;
  }

LABEL_3:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

double collector_tearDownAsyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 148))
  {
    v4 = DerivedStorage;
    v5 = CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v6 = *(v5 + 216);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          FigCFArrayGetValueAtIndex();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }
      }
    }

    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v4 + 152);
    v10 = *(v4 + 200);
    if (v10)
    {
      CFRelease(v10);
    }

    result = 0.0;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  return result;
}

double collector_tearDownSyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage + 240;
  if (*(DerivedStorage + 240))
  {
    v5 = DerivedStorage;
    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v5 + 248);
    CFGetAllocator(a1);
    collectorSearchWindow_teardown(v5 + 296);
    *(v4 + 96) = 0;
    result = 0.0;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return result;
}

void collectorSearchWindow_teardown(uint64_t a1)
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
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    collectorSearchWindow_teardown_cold_1();
  }
}

uint64_t collector_handleVideoBufferQueueConduitNotifications(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigCFEqual();
  if (result)
  {
    if (a5)
    {
      v9 = CFGetTypeID(a5);
      result = CFDictionaryGetTypeID();
      if (v9 == result)
      {
        Value = FigCFDictionaryGetValue();
        FigSimpleMutexLock();
        collectorSearchWindow_setInhibitOutputUntil(DerivedStorage + 152, Value);
        result = FigSimpleMutexUnlock();
      }
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      result = FigCFDictionaryGetInt32IfPresent();
      if (result)
      {
        FigSimpleMutexLock();
        *(DerivedStorage + 168) = 0;
        FigSimpleMutexUnlock();
        return collector_triggerAsyncProcessing();
      }
    }
  }

  v11 = *(DerivedStorage + 32);
  if (v11)
  {
    VTable = CMBaseObjectGetVTable();
    v13 = *(VTable + 16);
    result = VTable + 16;
    v14 = *(v13 + 64);
    if (v14)
    {
      return v14(v11, a3, a5, 0);
    }
  }

  return result;
}

void collectorSearchWindow_setInhibitOutputUntil(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t collector_triggerAsyncProcessing()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return collector_triggerAsyncProcessing_cold_1();
  }

  if (*(result + 80))
  {
    v1 = *(result + 16);
    if (v1)
    {
      VTable = CMBaseObjectGetVTable();
      v3 = *(VTable + 16);
      result = VTable + 16;
      v4 = *(v3 + 16);
      if (v4)
      {

        return v4(v1);
      }
    }
  }

  return result;
}

uint64_t collector_handleMetadataBufferQueueConduitNotifications(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 136))
  {
    FigSimpleMutexLock();
  }

  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      while (FigCFArrayGetValueAtIndex() != a4)
      {
        if (v11 == ++v12)
        {
          goto LABEL_16;
        }
      }

      ValueAtIndex = FigCFArrayGetValueAtIndex();
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex;
        if (*MEMORY[0x1E69605A0] == a3)
        {
          FigCFArrayRemoveAllValues();
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          *(v14 + 40) = 0;
        }

        else if (*MEMORY[0x1E6960598] == a3)
        {
          if (a5)
          {
            v16 = CFGetTypeID(a5);
            if (v16 == CFDictionaryGetTypeID())
            {
              Value = FigCFDictionaryGetValue();
              collectorSearchWindow_setInhibitOutputUntil(v14, Value);
            }
          }
        }

        else if (FigCFEqual() && FigCFDictionaryGetInt32IfPresent())
        {
          *(v14 + 16) = 0;
          collector_triggerAsyncProcessing();
        }
      }

      else
      {
        collector_handleMetadataBufferQueueConduitNotifications_cold_1();
      }
    }
  }

LABEL_16:
  result = *(DerivedStorage + 136);
  if (result)
  {
    return FigSimpleMutexUnlock();
  }

  return result;
}

void collector_removeMetadataBufferQueueTriggers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 208);
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        FigCFArrayGetValueAtIndex();
        FigCFArrayGetInt64AtIndex();
      }
    }
  }

  v5 = *(DerivedStorage + 224);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 224) = 0;
  }
}

double collector_setUpAsyncProcessState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = (DerivedStorage + 148);
  if (*(DerivedStorage + 148))
  {
    collector_tearDownAsyncProcessState(a1);
  }

  *(DerivedStorage + 176) = 0u;
  *(DerivedStorage + 192) = 0u;
  *(DerivedStorage + 144) = 0u;
  *(DerivedStorage + 160) = 0u;
  v4 = CFGetAllocator(a1);
  *(DerivedStorage + 152) = 0u;
  *(DerivedStorage + 168) = 0u;
  *(DerivedStorage + 184) = 0u;
  v18 = xmmword_1F0AFAD68;
  *callBacks = xmmword_1F0AFAD68;
  v17 = *&off_1F0AFAD78;
  *&callBacks[16] = *&off_1F0AFAD78;
  v5 = off_1F0AFAD88;
  *&callBacks[32] = off_1F0AFAD88;
  *(DerivedStorage + 152) = CFArrayCreateMutable(v4, 0, callBacks);
  v6 = *(DerivedStorage + 208);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v8 = CFGetAllocator(a1);
  v20 = *byte_1F0AFAD90;
  v9 = CFArrayCreateMutable(v8, Count, &v20);
  if (!v9)
  {
    return collector_setUpAsyncProcessState_cold_1(&v20, DerivedStorage, v3, a1);
  }

  v10 = v9;
  if (Count >= 1)
  {
    do
    {
      memset(callBacks, 0, sizeof(callBacks));
      *&v21.version = v18;
      *&v21.release = v17;
      v21.equal = v5;
      *callBacks = CFArrayCreateMutable(v8, 0, &v21);
      CFArrayAppendValue(v10, callBacks);
      collectorSearchWindow_teardown(callBacks);
      --Count;
    }

    while (Count);
  }

  *(DerivedStorage + 200) = v10;
  v11 = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListeners();
  v13 = *(v11 + 216);
  if (v13)
  {
    v14 = CFArrayGetCount(v13);
    if (v14 >= 1)
    {
      v15 = v14;
      for (i = 0; i != v15; ++i)
      {
        FigCFArrayGetValueAtIndex();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListeners();
      }
    }
  }

  *v3 = 1;
  return result;
}

void *pendingSampleArray_RetainCallBack(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 64, 0x1020040CD320FF7, 0);
  v4 = v3;
  if (v3)
  {
    v5 = a2[3];
    v7 = *a2;
    v6 = a2[1];
    v3[2] = a2[2];
    v3[3] = v5;
    *v3 = v7;
    v3[1] = v6;
    v8 = *v3;
    if (*v4)
    {
      CFRetain(v8);
    }
  }

  else
  {
    pendingSampleArray_RetainCallBack_cold_1();
  }

  return v4;
}

void pendingSampleArray_ReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }

  else
  {
    pendingSampleArray_ReleaseCallBack_cold_1();
  }
}

CFStringRef pendingSampleArray_CopyDescriptionCallBack(uint64_t a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = *MEMORY[0x1E6960520];
  CMGetAttachment(*a1, *MEMORY[0x1E6960520], 0);
  v3 = *MEMORY[0x1E695E480];
  time = *(a1 + 8);
  Seconds = CMTimeGetSeconds(&time);
  v5 = *a1;
  v10 = **&MEMORY[0x1E6960C70];
  if (v5)
  {
    v6 = *MEMORY[0x1E695E4D0];
    v7 = CMGetAttachment(v5, v2, 0);
    memset(&time, 0, sizeof(time));
    CMSampleBufferGetOutputPresentationTimeStamp(&time, v5);
    memset(&v13, 0, sizeof(v13));
    CMSampleBufferGetOutputDuration(&v13, v5);
    lhs = time;
    rhs = v13;
    if (v7 == v6)
    {
      CMTimeSubtract(&v10, &lhs, &rhs);
    }

    else
    {
      CMTimeAdd(&v10, &lhs, &rhs);
    }
  }

  v9 = CMTimeGetSeconds(&v10);
  return CFStringCreateWithFormat(v3, 0, @"[%1.3f - %1.3f "), *&Seconds, *&v9, v10.value, *&v10.timescale, v10.epoch);
}

BOOL pendingSampleArray_EqualCallBack(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v9 = v2;
  v10 = v3;
  result = 0;
  if (a1 && a2)
  {
    if (*a1 == *a2 && (time1 = *(a1 + 8), v7 = *(a2 + 8), !CMTimeCompare(&time1, &v7)))
    {
      time1 = *(a1 + 32);
      v7 = *(a2 + 32);
      return CMTimeCompare(&time1, &v7) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *collectorSearchWindowArray_RetainCallback(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 48, 0x1060040A8284B34, 0);
  v4 = v3;
  if (v3)
  {
    v5 = a2[2];
    v6 = *a2;
    v3[1] = a2[1];
    v3[2] = v5;
    *v3 = v6;
    v7 = *v3;
    if (*v4)
    {
      CFRetain(v7);
    }
  }

  else
  {
    collectorSearchWindowArray_RetainCallback_cold_1();
  }

  return v4;
}

void collectorSearchWindowArray_ReleaseCallback(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      CFRelease(*ptr);
      *ptr = 0;
    }

    CFAllocatorDeallocate(allocator, ptr);
  }

  else
  {
    collectorSearchWindowArray_ReleaseCallback_cold_1();
  }
}

CFStringRef collectorSearchWindowArray_CopyDescriptionCallback(void *a1)
{
  if (a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<FSAC_BufferQueueCache %p | searchStartIndex: %ld, matchedSampleInfo: %p, sampleInfoArray: %@ >", a1, a1[3], a1[4], *a1);
  }

  else
  {
    return @"NULL";
  }
}

uint64_t collector_AddMetadataToCollection(const void *a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 240))
  {
    v5 = CMBaseObjectGetDerivedStorage();
    if (*(v5 + 240))
    {
      collector_tearDownSyncProcessState(a1);
    }

    *(v5 + 336) = 0;
    *(v5 + 304) = 0u;
    *(v5 + 320) = 0u;
    *(v5 + 272) = 0u;
    *(v5 + 288) = 0u;
    *(v5 + 240) = 0u;
    *(v5 + 256) = 0u;
    v6 = CFGetAllocator(a1);
    *(v5 + 248) = 0u;
    v7 = v5 + 248;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    v11 = *&byte_1F0AFAD68[16];
    v12 = *byte_1F0AFAD68;
    callBacks = *byte_1F0AFAD68;
    v8 = *&byte_1F0AFAD68[32];
    *v7 = CFArrayCreateMutable(v6, 0, &callBacks);
    v9 = CFGetAllocator(a1);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *&callBacks.version = v12;
    *&callBacks.release = v11;
    callBacks.equal = v8;
    *(v7 + 48) = CFArrayCreateMutable(v9, 0, &callBacks);
    *(v7 - 8) = 1;
  }

  return collectorPendingSampleArray_appendSampleBuffer(*(DerivedStorage + 296), a2, 0);
}

uint64_t collector_SynchronousReset()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 72);
  if (v0)
  {
    CFArrayRemoveAllValues(v0);
  }

  return 0;
}

uint64_t collectorPendingSampleArray_appendSingleSampleSampleBuffer(opaqueCMSampleBuffer *a1, uint64_t a2, __CFArray *a3)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  value = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(v13, a1);
  CMSampleBufferGetOutputDuration(&time1, a1);
  v13[1] = time1;
  v5 = *MEMORY[0x1E695E4D0];
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    FigCFDictionaryGetValue();
  }

  LOBYTE(v14) = FigCFEqual();
  CMGetAttachment(a1, *MEMORY[0x1E6960520], 0);
  BYTE1(v14) = FigCFEqual();
  if (!CMSampleBufferGetNumSamples(a1))
  {
    BYTE2(v14) = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_8:
    v8 = *MEMORY[0x1E69604B0];
    if (CMGetAttachment(a1, *MEMORY[0x1E69604B0], 0) == v5 && CMGetAttachment(a1, *MEMORY[0x1E69604F8], 0) == v5)
    {
      BYTE4(v14) = 1;
    }

    else if (CMGetAttachment(a1, v8, 0) != v5 || CMGetAttachment(a1, *MEMORY[0x1E69604F8], 0) == v5)
    {
      goto LABEL_15;
    }

    BYTE3(v14) = 1;
    goto LABEL_15;
  }

  time1 = v13[1];
  v10 = **&MEMORY[0x1E6960CC0];
  v7 = CMTimeCompare(&time1, &v10);
  BYTE2(v14) = v7 == 0;
  if (a1 && !v7)
  {
    goto LABEL_8;
  }

LABEL_15:
  CFArrayAppendValue(a3, &value);
  return 0;
}

char *collectorPendingSampleArray_searchForPendingSampleAtPTSWithDuration(CFArrayRef theArray, CMTime *a2, CMTime *a3, CFIndex a4, unsigned int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (Count > a4)
  {
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a4);
      v11 = ValueAtIndex;
      if (Count < 2 || a4 >= Count - 1)
      {
        if (a5 > 1)
        {
          v20 = *(ValueAtIndex + 8);
          lhs.epoch = *(ValueAtIndex + 3);
          *&lhs.value = v20;
          rhs = *(ValueAtIndex + 32);
          CMTimeSubtract(&time1, &lhs, &rhs);
          value = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          epoch = time1.epoch;
LABEL_21:
          time1 = *a2;
          lhs = *a3;
          CMTimeSubtract(&v33, &time1, &lhs);
          v31 = *(v11 + 1);
          v21 = *(v11 + 5);
          v32 = *(v11 + 4);
          v22 = *(v11 + 3);
          if ((v21 & 0x1F) != 3 && (v33.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = v31, rhs.timescale = v32, rhs.flags = v21, rhs.epoch = v22, v27 = v33, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
          {
            time1.value = v31;
            time1.timescale = v32;
            time1.flags = v21;
            time1.epoch = v22;
            lhs = v33;
            if (CMTimeCompare(&time1, &lhs) >= 1)
            {
              if ((v33.value = a2->value, v23 = a2->flags, v33.timescale = a2->timescale, v24 = a2->epoch, (flags & 0x1F) != 3) && (v23 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = value, rhs.timescale = timescale, rhs.flags = flags, rhs.epoch = epoch, v27.value = a2->value, v27.timescale = a2->timescale, v27.flags = v23, v27.epoch = v24, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
              {
                time1.value = value;
                time1.timescale = timescale;
                time1.flags = flags;
                time1.epoch = epoch;
                lhs.value = v33.value;
                lhs.timescale = v33.timescale;
                lhs.flags = v23;
                lhs.epoch = v24;
                if (CMTimeCompare(&time1, &lhs) < 0)
                {
                  return v11;
                }
              }
            }
          }

          goto LABEL_29;
        }

        v15 = *(ValueAtIndex + 8);
        lhs.epoch = *(ValueAtIndex + 3);
        *&lhs.value = v15;
        rhs = *(ValueAtIndex + 32);
        CMTimeAdd(&time1, &lhs, &rhs);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
      }

      else
      {
        v12 = CFArrayGetValueAtIndex(theArray, a4 + 1);
        value = *(v12 + 1);
        flags = *(v12 + 5);
        timescale = *(v12 + 4);
        epoch = *(v12 + 3);
        if (a5 > 1)
        {
          goto LABEL_21;
        }
      }

      time1 = *a2;
      lhs = *a3;
      CMTimeAdd(&v33, &time1, &lhs);
      v31 = *(v11 + 1);
      v16 = *(v11 + 5);
      v32 = *(v11 + 4);
      v17 = *(v11 + 3);
      if ((v16 & 0x1F) != 3 && (v33.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = v31, rhs.timescale = v32, rhs.flags = v16, rhs.epoch = v17, v27 = v33, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
      {
        time1.value = v31;
        time1.timescale = v32;
        time1.flags = v16;
        time1.epoch = v17;
        lhs = v33;
        if (CMTimeCompare(&time1, &lhs) < 0)
        {
          if ((v33.value = a2->value, v18 = a2->flags, v33.timescale = a2->timescale, v19 = a2->epoch, (flags & 0x1F) != 3) && (v18 & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), rhs.value = value, rhs.timescale = timescale, rhs.flags = flags, rhs.epoch = epoch, v27.value = a2->value, v27.timescale = a2->timescale, v27.flags = v18, v27.epoch = v19, CMTimeSubtract(&lhs, &rhs, &v27), CMTimeAbsoluteValue(&time1, &lhs), CMTimeMake(&lhs, 1, 1000000000), rhs = time1, CMTimeCompare(&rhs, &lhs) > 0))
          {
            time1.value = value;
            time1.timescale = timescale;
            time1.flags = flags;
            time1.epoch = epoch;
            lhs.value = v33.value;
            lhs.timescale = v33.timescale;
            lhs.flags = v18;
            lhs.epoch = v19;
            if (CMTimeCompare(&time1, &lhs) > 0)
            {
              return v11;
            }
          }
        }
      }

LABEL_29:
      ++a4;
    }

    while (Count != a4);
  }

  return 0;
}

uint64_t collector_updateVideoSampleAttachmentsWithMetadataSample(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetSampleAttachmentsArray(a2, 1u);
  FigCFArrayGetValueAtIndex();
  v6 = *(DerivedStorage + 8);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = v7(v6, a3, 0, &cf);
  v9 = cf;
  if (!v8)
  {
    FigCFDictionarySetAllValuesFromDictionary();
    if (!cf)
    {
      return 0;
    }

    FigCFDictionaryApplyBlock();
    v9 = cf;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

uint64_t collector_Go(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    if (!v4[148])
    {
      collector_setUpAsyncProcessState(a1);
    }

    FigSimpleMutexUnlock();
    v4[80] = 1;
    FigMemoryBarrier();
    v5 = *(v4 + 2);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5);
    }

    return 0;
  }
}

uint64_t collector_Stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = DerivedStorage;
    DerivedStorage[80] = 0;
    FigMemoryBarrier();
    if (*(v2 + 17))
    {
      FigSimpleMutexLock();
      FigSimpleMutexUnlock();
    }

    return 0;
  }
}

uint64_t collector_SetDirection(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2 < 1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      *(DerivedStorage + 232) = 0;
      goto LABEL_6;
    }

    v4 = -1;
  }

  else
  {
    v4 = 1;
  }

  *(DerivedStorage + 232) = v4;
LABEL_6:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigCPEExternalProtectionMonitorRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBB78 = result;
  return result;
}

CFTypeRef figCPEExternalProtectionMonitorCopyProperty_DisplayListFunc(void **a1)
{
  result = *((*a1)[18] + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *a1[1] = result;
  return result;
}

void figCPEExternalProtectionMonitorSetProperty_DisplayListFunc(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*a1 + 144);
  v5 = *(v4 + 40);
  if (v5)
  {
    CFRetain(*(v4 + 40));
    v4 = *(v3 + 144);
    v6 = *(v4 + 40);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 40) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  UpdateNonExclusiveDisplayList(*(v3 + 144));
  v7 = FigCFEqual();
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
  *v8 = v3;
  v8[8] = v7 == 0;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async_f(global_queue, v8, figCPEExternalProtectionMonitorSetPropertyPostNotificationFunc);

  free(a1);
}

void figCPEExternalProtectionMonitorBeginMonitoringFunc(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(v1 + 32);
  *(v1 + 32) = v2 + 1;
  if (!v2)
  {
    CFSetApplyFunction(*(v1 + 24), BeginMonitoringSetApplier, 0);
  }
}

void figCPEExternalProtectionMonitorEndMonitoringFunc(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(v1 + 32) - 1;
  *(v1 + 32) = v2;
  if (!v2)
  {
    CFSetApplyFunction(*(v1 + 24), EndMonitoringSetApplier, 0);
  }
}

uint64_t FigCPEExternalProtectionMonitorGetMethods(uint64_t a1)
{
  v2 = a1;
  v3 = 0;
  dispatch_sync_f(*(a1 + 136), &v2, figCPEExternalProtectionMonitorGetMethodsFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorGetStatus(uint64_t a1)
{
  v5 = 0;
  context = a1;
  v3 = 1;
  v4 = 1;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorGetAOCPStatus(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3010000000;
  v8 = "";
  v9 = 0x100000001;
  v10 = 0;
  v1 = *(a1 + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCPEExternalProtectionMonitorGetAOCPStatus_block_invoke;
  v4[3] = &unk_1E7482510;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 10);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void GetStatusSetApplier(void *key, int *a2)
{
  v27 = 0;
  if (!key[16])
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(*(key[18] + 56), key);
  if (Value)
  {
    MutableCopy = Value;
    CFRetain(Value);
    goto LABEL_20;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v8 = key[11];
  if (v8 && *(key[18] + 40))
  {
    v9 = v8(key[4]);
    context[0] = *(key[18] + 40);
    context[1] = MutableCopy;
    v28.length = CFArrayGetCount(v9);
    v28.location = 0;
    CFArrayApplyFunction(v9, v28, AddExclusiveDisplay, context);
  }

  if (MutableCopy && CFArrayGetCount(MutableCopy))
  {
    goto LABEL_74;
  }

  v10 = *(key[18] + 40);
  if (v10 && CFArrayGetCount(v10) >= 1)
  {
    if (!MutableCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (MutableCopy)
  {
LABEL_74:
    if (!CFArrayGetCount(MutableCopy) && !*(a2 + 5))
    {
LABEL_17:
      CFRelease(MutableCopy);
LABEL_18:
      MutableCopy = *MEMORY[0x1E695E738];
    }
  }

  else
  {
    if (!*(a2 + 5))
    {
      goto LABEL_18;
    }

    MutableCopy = 0;
  }

  CFDictionarySetValue(*(key[18] + 56), key, MutableCopy);
  if (!MutableCopy)
  {
    v12 = 1;
    goto LABEL_24;
  }

LABEL_20:
  v11 = CFGetTypeID(MutableCopy);
  if (v11 != CFNullGetTypeID())
  {
    v12 = 0;
LABEL_24:
    v7 = (key[16])(key[4], MutableCopy, &v27);
    goto LABEL_25;
  }

  v12 = 0;
  v27 = 0;
  v7 = 1;
LABEL_25:
  v13 = FigCFArrayContainsValue();
  v14 = v7 == 3;
  if (v7 == 4)
  {
    v14 = 2;
  }

  if (v13)
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  if ((v12 & 1) == 0)
  {
    CFRelease(MutableCopy);
  }

LABEL_32:
  v15 = *a2;
  if (*a2 == 4 || v7 == 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = 1;
  }

  if (!v15)
  {
    v17 = 0;
  }

  if (!v7)
  {
    v17 = 0;
  }

  if (v15 == 2)
  {
    v17 = 2;
  }

  if (v7 == 2)
  {
    v17 = 2;
  }

  if (v15 == 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  if (v7 == 3)
  {
    v18 = 3;
  }

  *a2 = v18;
  v19 = a2[2];
  if (v19 == 2 || v6 == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (v19 == 1 || v6 == 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v21;
  }

  a2[2] = v23;
  if (v27)
  {
    v24 = *(a2 + 4) == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = !v24;
  *(a2 + 4) = v25;
}

uint64_t FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(uint64_t a1)
{
  v4 = 0;
  context = a1;
  v3 = 0x10100000001;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v3;
}

uint64_t FigCPEExternalProtectionMonitorStableStatusDetermined(uint64_t a1)
{
  v5 = 0;
  context = a1;
  v3 = 1;
  v4 = 1;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return v4;
}

uint64_t FigCPEExternalProtectionMonitorStableStatusDeterminedIgnoringDisplays(uint64_t a1)
{
  v4 = 0;
  context = a1;
  v3 = 0x10100000001;
  dispatch_sync_f(*(a1 + 136), &context, figCPEExternalProtectionMonitorGetStatusFunc);
  return BYTE4(v3);
}

uint64_t FigCPEExternalProtectionMonitorGetState(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = -1;
  v5 = a2;
  dispatch_sync_f(*(a1 + 136), &v3, figCPEExternalProtectionMonitorGetStateFunc);
  return v4;
}

uint64_t HDCPAddWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t HDCPRemoveWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t HDCPBeginMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_BeginMonitoring(result);
  }

  return result;
}

uint64_t HDCPEndMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_EndMonitoring(result);
  }

  return result;
}

uint64_t AntiScreenCaptureGetStatus(void *a1, CFArrayRef theArray, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (AntiScreenCaptureGetStatus_once == -1)
  {
    if (!theArray)
    {
LABEL_4:
      v6 = AntiScreenCaptureGetStatus_wirelessDisplayList;

      return HDCPGetStatus(a1, v6, a3);
    }
  }

  else
  {
    AntiScreenCaptureGetStatus_cold_1();
    if (!theArray)
    {
      goto LABEL_4;
    }
  }

  v22.length = CFArrayGetCount(theArray);
  v22.location = 0;
  if (CFArrayContainsValue(theArray, v22, AntiScreenCaptureGetStatus_wirelessDisplayName))
  {
    goto LABEL_4;
  }

  v8 = 1;
  *a3 = 1;
  if (VTParavirtualizationIsRunningInGuest())
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [MEMORY[0x1E6979328] displays];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v14 "availableModes")])
          {
            [v14 deviceName];
            if (!IOMobileFramebufferOpenByName() && !IOMobileFramebufferGetProtectionOptions())
            {
              return 3;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      return 1;
    }
  }

  return v8;
}

void HDCPDisposeRefcon(uint64_t a1)
{
  if (a1)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(a1);
  }
}

void *__copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  result[11] = a2[11];
  result[12] = a2[12];
  return result;
}

uint64_t FigCPEExternalProtectionMonitorCreateForMethods(const __CFAllocator *a1, unsigned int a2, const __CFDictionary *a3, CFTypeRef cf, void *a5)
{
  if (cf)
  {
    v9 = CFRetain(cf);
    if (a3)
    {
LABEL_3:
      v10 = CFDictionaryGetValue(a3, @"InformationalMode") != *MEMORY[0x1E695E4D0];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 1;
LABEL_6:
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2 > 7)
  {
    v13 = 4294955136;
    if (!v9)
    {
      return v13;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    cfa[0] = 0;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sAggregateOnlyCallbacks);
LABEL_27:
    v17 = FigCPEExternalProtectionMonitorCreateWithCallbacks(a1, &v20, v9, cfa);
    if (!v17)
    {
      v12 = cfa[0];
      if (cfa[0])
      {
        CFRetain(cfa[0]);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (cfa[0])
      {
        CFRelease(cfa[0]);
      }

      goto LABEL_14;
    }

    v13 = v17;
LABEL_29:
    if (!v9)
    {
      return v13;
    }

LABEL_30:
    CFRelease(v9);
    return v13;
  }

  if (a2)
  {
    v19 = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sHDCPCallbacks);
    *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(cfa, &v20);
    v15 = FigCPEExternalProtectionMonitorCreateWithCallbacks(a1, cfa, v9, &v19);
    if (v15)
    {
      v13 = v15;
      if (v20)
      {
        FigUpstreamMonitor_ReleaseSharedMonitor(v20);
        if (!v9)
        {
          return v13;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v11 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    v11 = v9;
  }

  if ((a2 & 2) == 0)
  {
    v9 = v11;
LABEL_12:
    if (a2 < 4)
    {
      v12 = v9;
LABEL_14:
      v13 = 0;
      *a5 = v12;
      return v13;
    }

    cfa[0] = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, FigCPEAntiScreenCaptureCreateCallbacks_callbacks);
    *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
    goto LABEL_27;
  }

  v19 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(&v20, sHDCPType1Callbacks);
  *&v20 = FigUpstreamMonitor_CreateOrRetainSharedMonitor(v10);
  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(cfa, &v20);
  v16 = FigCPEExternalProtectionMonitorCreateWithCallbacks(a1, cfa, v11, &v19);
  if (!v16)
  {
    v9 = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    goto LABEL_12;
  }

  v13 = v16;
  if (v20)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(v20);
  }

  v9 = v11;
  if (v11)
  {
    goto LABEL_30;
  }

  return v13;
}

void finalizePoolQueue(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void figCPEExternalProtectionMonitorCreateWithCallbacksFunc(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v2(a1[4], a1[18], FigCPEExternalProtectionMonitorNotificationCallback, 0);
  }

  FigNotificationCenterAddWeakListener();
  CFSetAddValue(*(a1[18] + 24), a1);
  UpdateNonExclusiveDisplayList(a1[18]);
  if (*(a1[18] + 32) >= 1)
  {
    v3 = a1[8];
    if (v3)
    {
      v3(a1[4]);
    }
  }

  CFRetain(a1);
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async_f(global_queue, a1, figCPEExternalProtectionMonitorCreateWithCallbacksPostNotificationFunc);
}

double FigCPEExternalProtectionMonitorInit(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t FigCPEExternalProtectionMonitorFinalize(uint64_t a1)
{
  v7 = a1;
  v8 = 0;
  v2 = *(a1 + 136);
  if (v2)
  {
    dispatch_sync_f(v2, &v7, figCPEExternalProtectionMonitorFinalizeFunc);
    dispatch_release(*(a1 + 136));
    *(a1 + 136) = 0;
    if (v8)
    {
      v3 = *(a1 + 72);
      if (v3)
      {
        v3(*(a1 + 32));
      }
    }
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    v4(*(a1 + 32));
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    return CMNotificationCenterUnregisterForBarrierSupport();
  }

  return result;
}

CFStringRef FigCPEExternalProtectionMonitorCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigCPEExternalProtectionMonitor %p retain count %d", a1, v3);
}

void figCPEExternalProtectionMonitorFinalizeFunc(_BYTE *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  a1[8] = *(v2 + 32) > 0;
  v3 = *(v2 + 24);
  if (v3 && CFSetContainsValue(v3, v1))
  {
    CFSetRemoveValue(*(v1[18] + 24), v1);
    CFDictionaryRemoveValue(*(v1[18] + 56), v1);
    if (*(v1[18] + 16))
    {
      FigNotificationCenterRemoveWeakListener();
    }

    v4 = v1[7];
    if (v4)
    {
      v4(v1[4], v1[18], FigCPEExternalProtectionMonitorNotificationCallback, 0);
    }

    v5 = v1[18];

    UpdateNonExclusiveDisplayList(v5);
  }
}

void FigCPEExternalProtectionMonitorNotificationCallback(int a1, int a2, CFStringRef theString2)
{
  if (CFStringCompare(*MEMORY[0x1E6961150], theString2, 0))
  {

    CMNotificationCenterPostNotification();
  }

  else
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E6961158]))
    {
      FigCFDictionarySetInt32();
    }

    CMNotificationCenterPostNotification();
    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

void UpdateNonExclusiveDisplayList(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  CFDictionaryRemoveAllValues(*(a1 + 56));
  MutableCopy = FigCFArrayCreateMutableCopy();
  *(a1 + 48) = MutableCopy;
  v4 = *(a1 + 24);

  CFSetApplyFunction(v4, RemoveExclusiveDisplays, MutableCopy);
}

void RemoveExclusiveDisplays(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v4 = v2(*(a1 + 32));
    if (v4)
    {
      v5 = v4;
      v6.length = CFArrayGetCount(v4);
      v6.location = 0;

      CFArrayApplyFunction(v5, v6, RemoveExclusiveDisplay, a2);
    }
  }
}

CFIndex RemoveExclusiveDisplay(const void *a1, CFArrayRef theArray)
{
  v6.length = CFArrayGetCount(theArray);
  v6.location = 0;
  result = CFArrayGetFirstIndexOfValue(theArray, v6, a1);
  if (result != -1)
  {
    v5 = result;
    do
    {
      CFArrayRemoveValueAtIndex(theArray, v5);
      v7.length = CFArrayGetCount(theArray);
      v7.location = 0;
      result = CFArrayGetFirstIndexOfValue(theArray, v7, a1);
      v5 = result;
    }

    while (result != -1);
  }

  return result;
}

void figCPEExternalProtectionMonitorSetPropertyPostNotificationFunc(_BYTE *a1)
{
  v2 = *a1;
  if (a1[8])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    CMNotificationCenterPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  CFRelease(v2);

  free(a1);
}

uint64_t BeginMonitoringSetApplier(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    return v1(*(result + 32));
  }

  return result;
}

uint64_t EndMonitoringSetApplier(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    return v1(*(result + 32));
  }

  return result;
}

uint64_t GetMethodsSetApplier(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 80);
  if (v2)
  {
    result = v2(*(result + 32));
    *a2 |= result;
  }

  return result;
}

void AddExclusiveDisplay(const void *a1, const __CFArray **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v7.length = CFArrayGetCount(*a2);
    v7.location = 0;
    if (CFArrayGetFirstIndexOfValue(v2, v7, a1) != -1)
    {
      v5 = a2[1];

      CFArrayAppendValue(v5, a1);
    }
  }
}

uint64_t GetStateSetApplier(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4)
  {
    result = v4(*(result + 32), a2[1]);
    v5 = result;
  }

  else
  {
    v5 = -1;
  }

  if (a2[1] == 7)
  {
    v6 = 2;
    if (v5 != 2)
    {
      v7 = *a2;
      if (*a2 != 2)
      {
        if (v7 == 1 || v5 == 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = -1;
        }

        if (!v7)
        {
          v6 = 0;
        }

        if (!v5)
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    result = (*(v3 + 80))(*(v3 + 32));
    v6 = v5;
    if (result != a2[1])
    {
      return result;
    }
  }

  *a2 = v6;
  return result;
}

CFArrayRef __AntiScreenCaptureGetStatus_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &AntiScreenCaptureGetStatus_wirelessDisplayName, 1, MEMORY[0x1E695E9C0]);
  AntiScreenCaptureGetStatus_wirelessDisplayList = result;
  return result;
}

uint64_t HDCPGetStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
    if ((v5 - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return (5 - v5);
    }
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

uint64_t HDCPGetState(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    return FigUpstreamMonitor_GetExternalProtectionState(a1, a2);
  }

  return 0;
}

uint64_t HDCPGetAliasedStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
    if ((v5 - 1) > 3)
    {
      return 0;
    }

    else
    {
      return dword_196E7BEB0[v5 - 1];
    }
  }

  else
  {
    *a3 = 0;
    return 4;
  }
}

uint64_t HDCPType1AddWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t HDCPType1RemoveWeakListener(uint64_t result)
{
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t HDCPType1BeginMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_BeginMonitoring(result);
  }

  return result;
}

uint64_t HDCPType1EndMonitoring(uint64_t result)
{
  if (result)
  {
    return FigUpstreamMonitor_EndMonitoring(result);
  }

  return result;
}

uint64_t HDCPType1GetStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v4 = 0;
  if (!a1)
  {
    *a3 = 0;
    return 1;
  }

  FigUpstreamMonitor_GetStatus(a1, a2, &v5, &v4, a3);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return 2;
    }

    return v5 == 4;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      return 3;
    }

    return 0;
  }

  if (v4 == 2)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t HDCPType1GetState(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 2) != 0)
  {
    return FigUpstreamMonitor_GetExternalProtectionState(a1, a2);
  }

  return 0;
}

void HDCPType1DisposeRefcon(uint64_t a1)
{
  if (a1)
  {
    FigUpstreamMonitor_ReleaseSharedMonitor(a1);
  }
}

uint64_t HDCPType1GetAliasedStatus(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = 0;
  v5 = 0;
  if (a1)
  {
    FigUpstreamMonitor_GetStatus(a1, a2, &v6, &v5, a3);
    if ((v6 - 2) < 2)
    {
      return 3;
    }

    if (v6 != 4 && v6 != 1)
    {
      return 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  if (v5 == 2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t FigCPEExternalProtectionMonitorPoolDataRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBB88 = result;
  return result;
}

double FigCPEExternalProtectionMonitorPoolDataInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t FigCPEExternalProtectionMonitorPoolDataFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  result = a1[2];
  if (result)
  {

    return CMNotificationCenterUnregisterForBarrierSupport();
  }

  return result;
}

CFStringRef FigCPEExternalProtectionMonitorPoolDataCopyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigCPEExternalProtectionMonitorPoolData %p retain count %d", a1, v3);
}

void figCPEExternalProtectionMonitorCreateWithCallbacksPostNotificationFunc(const void *a1)
{
  CMNotificationCenterPostNotification();

  CFRelease(a1);
}

uint64_t FigCPEOctaviaExternalProtectionMonitorCreate(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *a5)
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  destination[0] = 0;
  destination[1] = OctaviaGetIdentifier;
  destination[2] = OctaviaAddListener;
  destination[3] = OctaviaRemoveListener;
  destination[4] = OctaviaBeginMonitoring;
  destination[5] = OctaviaEndMonitoring;
  destination[6] = OctaviaGetMethods;
  destination[7] = OctaviaGetExclusiveDisplayList;
  destination[8] = OctaviaGetStatus;
  destination[9] = OctaviaGetState;
  destination[10] = OctaviaGetSerializationToken;
  destination[11] = OctaviaDisposeRefCon;
  destination[12] = OctaviaGetAliasedStatus;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __InitializeIOAVProtectionTypeForNero_block_invoke;
  block[3] = &__block_descriptor_tmp_7_9;
  block[4] = a4;
  if (InitializeIOAVProtectionTypeForNero_dpProtectionTypeOnce != -1)
  {
    dispatch_once(&InitializeIOAVProtectionTypeForNero_dpProtectionTypeOnce, block);
  }

  SendIOAVProtectionTypeToNero();
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_28;
  }

  BBufFromPointer = FigCFDictionarySetInt64();
  if (BBufFromPointer)
  {
LABEL_27:
    v18 = BBufFromPointer;
    goto LABEL_29;
  }

  v11 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004023CB03E4uLL);
  if (!v11 || (v12 = v11, v13 = dispatch_queue_create("com.apple.coremedia.fcpeo.transport", 0), (v12[1] = v13) == 0))
  {
LABEL_28:
    v18 = 4294955145;
    goto LABEL_29;
  }

  block[13] = MEMORY[0x1E69E9820];
  block[14] = 0x40000000;
  block[15] = __FigCPEOctaviaExternalProtectionMonitorCreate_block_invoke;
  block[16] = &__block_descriptor_tmp_148;
  block[17] = v12;
  BBufFromPointer = NeroTransportRegisterObjectWithFlags();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  v14 = a4 ? CFRetain(a4) : 0;
  v12[2] = v14;
  destination[0] = v12;
  BBufFromPointer = FigTransportCreateBBufFromPointer();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  v16 = v24;
  v15 = v25;
  DataLength = CMBlockBufferGetDataLength(v24);
  BBufFromPointer = CMBlockBufferAppendBufferReference(v15, v16, 0, DataLength, 0);
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  FigTransportGetRemoteRootObject();
  BBufFromPointer = NeroTransportSendSyncMessageCreatingReply();
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  BBufFromPointer = CMBlockBufferCopyDataBytes(v23, 0, 8uLL, destination[0]);
  if (BBufFromPointer)
  {
    goto LABEL_27;
  }

  __copy_constructor_4_4_t0w8_pa0_40645_8_pa0_52250_16_pa0_9000_24_pa0_19123_32_pa0_44644_40_pa0_37391_48_pa0_21958_56_pa0_35156_64_pa0_50984_72_pa0_62454_80_pa0_21147_88_pa0_17571_96(block, destination);
  v18 = FigCPEExternalProtectionMonitorCreateWithCallbacks(v8, block, a2, &v22);
  if (!v18)
  {
    *a5 = v22;
    v22 = 0;
    destination[0] = 0;
    goto LABEL_18;
  }

LABEL_29:
  if (destination[0])
  {
    OctaviaDisposeRefCon(destination[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

LABEL_18:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v18;
}

uint64_t OctaviaAddListener()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t OctaviaRemoveListener()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRemoveListener();
}

uint64_t OctaviaGetMethods()
{
  cf = 0;
  destination = 0;
  v0 = NeroTransportSendSyncMessageCreatingReply();
  result = 0;
  if (!v0)
  {
    v2 = CMBlockBufferCopyDataBytes(0, 0, 4uLL, &destination);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return destination;
    }
  }

  return result;
}

uint64_t OctaviaGetExclusiveDisplayList()
{
  if (OctaviaGetExclusiveDisplayList_once != -1)
  {
    OctaviaGetExclusiveDisplayList_cold_1();
  }

  return OctaviaGetExclusiveDisplayList_exclusiveDisplayList;
}

uint64_t OctaviaGetState()
{
  cf = 0;
  destination = 0;
  v0 = NeroTransportSendSyncMessageCreatingReply();
  if (v0 == -12031)
  {
    return 1;
  }

  if (v0)
  {
    return 0;
  }

  v2 = CMBlockBufferCopyDataBytes(0, 0, 4uLL, &destination);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return destination;
  }
}

void OctaviaDisposeRefCon(dispatch_object_t *a1)
{
  if (a1)
  {
    NeroTransportUnregisterObject();
    NeroTransportSendAsyncMessage();
    dispatch_release(a1[1]);
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

uint64_t __FigCPEOctaviaExternalProtectionMonitorCreate_block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1937006947 || a2 == 1937007971)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

CFArrayRef __OctaviaGetExclusiveDisplayList_block_invoke()
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &_block_invoke_kWirelessDisplayName, 1, MEMORY[0x1E695E9C0]);
  OctaviaGetExclusiveDisplayList_exclusiveDisplayList = result;
  return result;
}

void __InitializeIOAVProtectionTypeForNero_block_invoke(uint64_t a1)
{
  _block_invoke_2_source = dispatch_source_create(MEMORY[0x1E69E9700], 0x1EuLL, 0, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __InitializeIOAVProtectionTypeForNero_block_invoke_2;
  handler[3] = &__block_descriptor_tmp_6_5;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(_block_invoke_2_source, handler);
  dispatch_resume(_block_invoke_2_source);
}

void SendIOAVProtectionTypeToNero()
{
  v0 = CFPreferencesCopyAppValue(@"IOAVProtectionType", @"com.apple.coremedia");
  v1 = v0;
  valuePtr = 1;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      if (CFStringCompare(v1, @"hdcp", 1uLL) == kCFCompareEqualTo)
      {
        goto LABEL_12;
      }

LABEL_11:
      valuePtr = 0;
      goto LABEL_12;
    }

    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      if (!CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr) || valuePtr >= 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = CFGetTypeID(v1);
      if (v4 != CFBooleanGetTypeID() || !CFBooleanGetValue(v1))
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (!FigCreateBlockBufferCopyingMemoryBlock())
  {
    FigTransportGetRemoteRootObject();
    NeroTransportSendAsyncMessage();
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigAssetExportSessionCreateWithAsset(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, void *a5, char a6, uint64_t a7, CFTypeRef *a8)
{
  v34 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  if (!a4)
  {
    FigAssetExportSessionCreateWithAsset_cold_8();
LABEL_17:
    value_low = 4294950325;
    goto LABEL_26;
  }

  if (!a5)
  {
    FigAssetExportSessionCreateWithAsset_cold_7();
    goto LABEL_17;
  }

  if (FigCFEqual() || FigExportSettingsForExportPreset(a5))
  {
    MEMORY[0x19A8D3660](&FigAssetExportSessionGetClassID_sRegisterFigAssetExportSessionOnce, RegisterFigAssetExportSessionClassOnce);
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      value_low = v12;
      goto LABEL_26;
    }

    if (dword_1EAF17B38)
    {
      LODWORD(duration.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 16) = CFRetain(a4);
    v15 = FigReadWriteLockCreate();
    *(DerivedStorage + 32) = v15;
    if (v15)
    {
      start = **&MEMORY[0x1E6960CC0];
      duration = **&MEMORY[0x1E6960C88];
      CMTimeRangeMake(&v33, &start, &duration);
      v16 = *&v33.start.epoch;
      *(DerivedStorage + 240) = *&v33.start.value;
      *(DerivedStorage + 256) = v16;
      *(DerivedStorage + 272) = *&v33.duration.timescale;
      *(DerivedStorage + 72) = CFRetain(a5);
      *(DerivedStorage + 200) = @"Spectral";
      v17 = dispatch_queue_create("com.apple.coremedia.figassetexportsession.notifications", 0);
      *(DerivedStorage + 472) = v17;
      if (v17)
      {
        v18 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 288) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 304) = *(v18 + 16);
        *(DerivedStorage + 312) = 0;
        *(DerivedStorage + 320) = @"kFigAssetExportSession_VideoFrameRateConversionAlgorithmPrecise";
        v19 = *MEMORY[0x1E695E4C0];
        *(DerivedStorage + 432) = *MEMORY[0x1E695E4C0];
        *(DerivedStorage + 440) = v19;
        *(DerivedStorage + 368) = v19;
        *(DerivedStorage + 344) = v19;
        *(DerivedStorage + 352) = 0;
        v20 = dispatch_semaphore_create(0);
        *(DerivedStorage + 336) = v20;
        if (v20)
        {
          FigDispatchOnceInitWithinObject();
          *(DerivedStorage + 28) = a6;
          *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
          *(DerivedStorage + 424) = a7;
          v21 = dispatch_queue_create("com.apple.coremedia.figassetexportsession.assetLoadValuesAsyncBatchID", 0);
          *(DerivedStorage + 480) = v21;
          if (v21)
          {
            Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(DerivedStorage + 400) = Mutable;
            if (Mutable)
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              *(DerivedStorage + 384) = 0;
              *(DerivedStorage + 96) = 0;
              *(DerivedStorage + 128) = 0;
              *(DerivedStorage + 136) = 0;
              *(DerivedStorage + 144) = 0;
              *(DerivedStorage + 388) = 0;
              *(DerivedStorage + 104) = 0;
              *(DerivedStorage + 112) = 0;
              valuePtr = 0;
              value_low = 0;
              *(DerivedStorage + 64) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
              *a8 = cf;
              return value_low;
            }

            FigAssetExportSessionCreateWithAsset_cold_1(&v33);
          }

          else
          {
            FigAssetExportSessionCreateWithAsset_cold_2(&v33);
          }
        }

        else
        {
          FigAssetExportSessionCreateWithAsset_cold_3(&v33);
        }
      }

      else
      {
        FigAssetExportSessionCreateWithAsset_cold_4(&v33);
      }
    }

    else
    {
      FigAssetExportSessionCreateWithAsset_cold_5(&v33);
    }
  }

  else
  {
    FigAssetExportSessionCreateWithAsset_cold_6(&v33);
  }

  value_low = LODWORD(v33.start.value);
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void figAssetExportSession_figAssetNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v7 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
    *(DerivedStorage + 8) = 1;
    if (dword_1EAF17B38)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFDictionaryApplyFunction(*(DerivedStorage + 400), figAssetExportSession_completePendingTaskWithError, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    CFDictionaryRemoveAllValues(*(DerivedStorage + 400));
  }

  else if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a5, @"assetPayload_BatchID");
    if (Value)
    {
      v10 = Value;
      v11 = CFDictionaryGetValue(*(DerivedStorage + 400), Value);
      if (v11)
      {
        FigAssetExportSessionTaskExecuteAndComplete(v11);
        v12 = *(DerivedStorage + 400);

        CFDictionaryRemoveValue(v12, v10);
      }
    }

    else
    {
      figAssetExportSession_figAssetNotification_cold_1();
    }
  }

  else
  {
    figAssetExportSession_figAssetNotification_cold_2();
  }
}

uint64_t FigAssetExportSessionVideoCompositionCreate(uint64_t a1, __int128 *a2, void *a3)
{
  if (a2)
  {
    if (a3)
    {
      *a3 = 0;
      MEMORY[0x19A8D3660](&FigAssetExportSessionVideoCompositionGetTypeID_sRegisterFigAssetExportSessionVideoCompositionOnce, registerFigAssetExportSessionVideoCompositionOnce);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v6 = Instance;
        v7 = *a2;
        v8 = a2[1];
        v9 = a2[3];
        *(Instance + 48) = a2[2];
        *(Instance + 64) = v9;
        *(Instance + 16) = v7;
        *(Instance + 32) = v8;
        v10 = a2[4];
        v11 = a2[5];
        v12 = a2[7];
        *(Instance + 112) = a2[6];
        *(Instance + 128) = v12;
        *(Instance + 80) = v10;
        *(Instance + 96) = v11;
        v13 = a2[8];
        v14 = a2[9];
        v15 = a2[11];
        *(Instance + 176) = a2[10];
        *(Instance + 192) = v15;
        *(Instance + 144) = v13;
        *(Instance + 160) = v14;
        v16 = *(Instance + 40);
        if (v16)
        {
          CFRetain(v16);
        }

        v17 = v6[7];
        if (v17)
        {
          CFRetain(v17);
        }

        v18 = v6[8];
        if (v18)
        {
          CFRetain(v18);
        }

        v19 = v6[10];
        if (v19)
        {
          CFRetain(v19);
        }

        v20 = v6[11];
        if (v20)
        {
          CFRetain(v20);
        }

        v21 = v6[14];
        if (v21)
        {
          CFRetain(v21);
        }

        v22 = v6[15];
        if (v22)
        {
          CFRetain(v22);
        }

        v23 = v6[16];
        if (v23)
        {
          CFRetain(v23);
        }

        v24 = v6[21];
        if (v24)
        {
          CFRetain(v24);
        }

        v25 = v6[22];
        if (v25)
        {
          CFRetain(v25);
        }

        v26 = v6[23];
        if (v26)
        {
          CFRetain(v26);
        }

        v27 = v6[24];
        if (v27)
        {
          CFRetain(v27);
        }

        v28 = v6[25];
        if (v28)
        {
          CFRetain(v28);
        }

        result = 0;
        *a3 = v6;
      }

      else
      {
        FigAssetExportSessionVideoCompositionCreate_cold_1(&v30);
        return v30;
      }
    }

    else
    {
      FigAssetExportSessionVideoCompositionCreate_cold_2(&v31);
      return v31;
    }
  }

  else
  {
    FigAssetExportSessionVideoCompositionCreate_cold_3(&v32);
    return v32;
  }

  return result;
}

uint64_t FigAssetExportSessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetExportSessionGetClassID_sRegisterFigAssetExportSessionOnce, RegisterFigAssetExportSessionClassOnce);

  return CMBaseClassGetCFTypeID();
}

uint64_t registerFigAssetExportSessionVideoCompositionOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetExportSessionVideoCompositionID = result;
  return result;
}

const __CFDictionary *FigAssetExportSessionGetSettingForFigRemaker(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5 = *(DerivedStorage + 216);
  v6 = *(DerivedStorage + 72);
  v7 = *(DerivedStorage + 360);
  v8 = *(DerivedStorage + 256);
  v10[0] = *(DerivedStorage + 240);
  v10[1] = v8;
  v10[2] = *(DerivedStorage + 272);
  return figAssetExportSession_getSettingForFigRemaker(v4, a2, v10, v5, v6, v7, (DerivedStorage + 80));
}

const __CFDictionary *figAssetExportSession_getSettingForFigRemaker(uint64_t a1, uint64_t a2, __int128 *a3, CGSize *a4, __CFString *a5, uint64_t a6, const void **a7)
{
  UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a4);
  v15 = UntransformedSourceDimension * 9.0;
  v19 = UntransformedSourceDimension * 9.0 == v16 * 16.0;
  v17 = UntransformedSourceDimension * 16.0;
  v18 = v16 * 9.0;
  v19 = v19 || v17 == v18;
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_16x9", v17, v18, 9.0, v15, a5);
  v21 = a3[1];
  v26 = *a3;
  v27 = v21;
  v28 = a3[2];
  v22 = FigAssetExportSession_actualSettingForPreset(a1, a2, &v26, a4, v20, a6);
  if (v22)
  {
    v23 = *a7;
    *a7 = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (!v22)
  {
LABEL_14:
    v24 = a3[1];
    v26 = *a3;
    v27 = v24;
    v28 = a3[2];
    return FigAssetExportSession_actualSettingForPreset(a1, a2, &v26, a4, a5, a6);
  }

  return v22;
}

void FigAssetExportSessionGetDestinationFrameDurationAndExpectedFrameRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 16);
  v11 = *(DerivedStorage + 216);
  v12 = *(DerivedStorage + 288);
  figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v10, a3, v11, a2, &v12, a4, a5);
}

void figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, float *a7)
{
  v39 = *MEMORY[0x1E69E9840];
  figAssetExportSession_getSourceVideoFrameRate();
  v14 = v13;
  v36 = 0;
  v35 = 0.0;
  FigCFDictionaryGetFloatIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  v16 = v14 < 0.0 && *&v36 > 0.0;
  if (*(&v36 + 1) <= 0.0 || v14 <= *(&v36 + 1))
  {
    if ((a5->flags & 0x1D) == 1)
    {
      time = *a5;
      v18 = 1.0 / CMTimeGetSeconds(&time);
      if (v14 > v18 && v18 > 0.0)
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v20 = a3 != 0 && v16 == 0;
  if (v20)
  {
    v21 = 3;
  }

  else
  {
    v21 = v16;
  }

  v37 = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  v38 = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if (v21)
  {
    if (v21 == 2)
    {
      v37 = a5->value;
      flags = a5->flags;
      v38 = a5->timescale;
      epoch = a5->epoch;
    }

    else if (v21 == 1)
    {
      v30.value = 0;
      timescale = 0;
      value = 0;
      v31 = 0;
      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetIntIfPresent();
      FigCFDictionaryGetInt64IfPresent();
      FigCFDictionaryGetIntIfPresent();
      CMTimeMake(&time, 0, 0);
      v37 = time.value;
      flags = time.flags;
      v38 = time.timescale;
      epoch = time.epoch;
    }

    else if (v20)
    {
      v37 = *(a3 + 16);
      flags = *(a3 + 28);
      v38 = *(a3 + 24);
      epoch = *(a3 + 32);
    }
  }

  if ((flags & 0x1D) == 1)
  {
    time.value = v37;
    time.timescale = v38;
    time.flags = flags;
    time.epoch = epoch;
    v14 = 1.0 / CMTimeGetSeconds(&time);
  }

  if (v35 != 0.0)
  {
    UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a3);
    v26 = FigExportSettingsCalculateOutputDimensions(UntransformedSourceDimension, v25);
    v28 = v26 * v27;
    v29 = v35;
    if (v28 * v14 > v35)
    {
      do
      {
        if ((flags & 0x1D) == 1)
        {
          v30.value = v37;
          v30.timescale = v38;
          v30.flags = flags;
          v30.epoch = epoch;
          CMTimeMultiplyByRatio(&time, &v30, 2, 1);
          v37 = time.value;
          flags = time.flags;
          v38 = time.timescale;
          epoch = time.epoch;
          v14 = 1.0 / CMTimeGetSeconds(&time);
          v29 = v35;
        }

        else
        {
          v14 = v14 * 0.5;
        }
      }

      while (v28 * v14 > v29);
      CMTimeMakeWithSeconds(&time, 1.0 / v14, 600);
      v37 = time.value;
      flags = time.flags;
      v38 = time.timescale;
      epoch = time.epoch;
    }
  }

  if (a7)
  {
    *a7 = v14;
  }

  if (a6)
  {
    *a6 = v37;
    *(a6 + 8) = v38;
    *(a6 + 12) = flags;
    *(a6 + 16) = epoch;
  }
}

void FigAssetExportSessionGetAverageVideoBitRateForSourceAndPresetAndTransferFunction(double a1, double a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 72);
  v13 = *(DerivedStorage + 16);

  figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(v13, a5, v12, a6, a1, a2, a3);
}

uint64_t FigAssetExportSessionExportGetPresetsCompatibleWithFigAsset(uint64_t a1)
{
  hasAudioTrack = figAssetExportSession_hasAudioTrack(a1);
  cf[0] = 0;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v3)
  {
    v4 = v3(a1, 1986618469, cf);
    v5 = cf[0];
    if (!v4)
    {
      v6 = remakerFamily_GetEnabledTrackWithAllAlphaSegments(cf[0]) != 0;
      v5 = cf[0];
      if (!cf[0])
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

    v6 = 0;
    if (cf[0])
    {
LABEL_4:
      CFRelease(v5);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  cf[0] = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v8 = v7(a1, 1986618469, cf);
    v9 = cf[0];
    if (!v8)
    {
      v10 = remakerFamily_GetEnabledTrackWithHomogeneousStereoSegments(cf[0]) != 0;
      v9 = cf[0];
      if (!cf[0])
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v10 = 0;
    if (cf[0])
    {
LABEL_9:
      CFRelease(v9);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  cf[0] = &figAssetExportSession_GetPresets_sCategorizedPresets[7];
  cf[1] = &figAssetExportSession_GetPresets_sCategorizedPresets[6];
  cf[2] = &figAssetExportSession_GetPresets_sCategorizedPresets[5];
  cf[3] = &figAssetExportSession_GetPresets_sCategorizedPresets[4];
  cf[4] = &figAssetExportSession_GetPresets_sCategorizedPresets[3];
  cf[5] = &figAssetExportSession_GetPresets_sCategorizedPresets[2];
  cf[6] = &figAssetExportSession_GetPresets_sCategorizedPresets[1];
  cf[7] = figAssetExportSession_GetPresets_sCategorizedPresets;
  if (figAssetExportSession_GetPresets_onceToken != -1)
  {
    dispatch_once_f(&figAssetExportSession_GetPresets_onceToken, cf, figAssetExportSession_CategorizePresetsOnce);
  }

  return figAssetExportSession_GetPresets_sCategorizedPresets[4 * hasAudioTrack + 2 * v6 + v10];
}

uint64_t figAssetExportSession_hasAudioTrack(uint64_t a1)
{
  theArray = 0;
  v1 = *MEMORY[0x1E695E4C0];
  v16 = *MEMORY[0x1E695E4C0];
  v15 = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    if (!v3(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
          v16 = v1;
          v15 = 0;
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v10 || v10(ValueAtIndex, 0, &v15))
          {
            break;
          }

          if (v15 == 1936684398)
          {
            v11 = FigAssetTrackGetCMBaseObject(ValueAtIndex);
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v12 || v12(v11, @"IsEnabled", v4, &v16))
            {
              break;
            }

            if (v16 == v8)
            {
              v13 = 1;
              goto LABEL_14;
            }
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  v13 = 0;
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

void FigAssetExportSessionDetermineCompatibilityOfExportPreset(const void *a1, const void *a2, int a3, const void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v11 = malloc_type_malloc(0x30uLL, 0x10E0040BF5512D3uLL);
  if (v11)
  {
    v12 = v11;
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13;
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    v12[1] = v14;
    if (a4)
    {
      v15 = CFRetain(a4);
    }

    else
    {
      v15 = 0;
    }

    v12[2] = v15;
    v12[3] = a5;
    v12[4] = a6;
    *(v12 + 10) = a3;
    if (qword_1EAF1AA50 != -1)
    {
      FigAssetExportSessionDetermineCompatibilityOfExportPreset_cold_1(a5);
    }

    v16 = qword_1EAF1AA48;

    dispatch_async_f(v16, v12, figAssetExportSession_IsExportPresetCompatibleWithAssetDeferred);
  }

  else
  {

    a5(a6, 0);
  }
}

void figAssetExportSession_IsExportPresetCompatibleWithAssetDeferred(uint64_t a1)
{
  IsExportPresetCompatibleWithAssetAndOutputFileType = figAssetExportSession_IsExportPresetCompatibleWithAssetAndOutputFileType(*a1, *(a1 + 8), *(a1 + 40), *(a1 + 16), 0);
  (*(a1 + 24))(*(a1 + 32), IsExportPresetCompatibleWithAssetAndOutputFileType);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t FigAssetExportSessionGetMaximumDuration(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    FigCFDictionaryGetInt64IfPresent();
    a2 = 0;
  }

  return figAssetExportSession_maximumDuration(a1, a2, a3);
}

uint64_t figAssetExportSession_maximumDuration(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  if (!a3)
  {
    figAssetExportSession_maximumDuration_cold_2(&v21);
    return LODWORD(v21.value);
  }

  v5 = FigExportSettingsForExportPreset(a1);
  if (!v5)
  {
    figAssetExportSession_maximumDuration_cold_1(&v21);
    return LODWORD(v21.value);
  }

  v6 = v5;
  v7 = MEMORY[0x1E6960C88];
  *a3 = *MEMORY[0x1E6960C88];
  *(a3 + 16) = *(v7 + 16);
  if (!a2)
  {
    FigCFDictionaryGetInt64IfPresent();
    if (!v22)
    {
      return 0;
    }
  }

  Value = CFDictionaryGetValue(v6, @"mediaTiers");
  v21.value = 0;
  v23 = 0;
  if (!Value)
  {
    figAssetExportSession_computeAudioVideoByteRate(v6, 1, &v21.value, &v23);
    v13 = v23 + v21.value;
    goto LABEL_18;
  }

  v9 = Value;
  Count = CFArrayGetCount(Value);
  if (Count > 0)
  {
    v11 = Count;
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
      v15 = CFDictionaryGetValue(ValueAtIndex, @"Video");
      v16 = CFDictionaryGetValue(ValueAtIndex, @"Audio");
      if (v15)
      {
        v15 = figAssetExportSession_computeVideoTrackByteRate(v15, 1);
      }

      if (v16)
      {
        v17 = figAssetExportSession_computeAudioTrackByteRate(v16, 1);
      }

      else
      {
        v17 = 0;
      }

      if (v17 + v15 < v13)
      {
        v13 = v17 + v15;
      }

      ++v12;
    }

    while (v11 != v12);
LABEL_18:
    if (v13 < 1)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
  if (v22 < 30721)
  {
    result = 0;
    v20 = MEMORY[0x1E6960CC0];
    *a3 = *MEMORY[0x1E6960CC0];
    epoch = *(v20 + 16);
  }

  else
  {
    CMTimeMakeWithSeconds(&v21, (((v22 - 30720) * 0.99) / v13), 1000000);
    result = 0;
    *a3 = *&v21.value;
    epoch = v21.epoch;
  }

  *(a3 + 16) = epoch;
  return result;
}

uint64_t FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_3(&v22);
    return v22;
  }

  if (!a2)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_2(&v22);
    return v22;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAssetExportSessionEstimateMaximumDurationWithCompletionHandler_cold_1(&v22);
    return v22;
  }

  v9 = Mutable;
  CFArrayAppendValue(Mutable, @"assetProperty_Tracks");
  CFArrayAppendValue(v9, @"assetProperty_FormatReader");
  CFArrayAppendValue(v9, @"assetProperty_TrackReferences");
  v10 = FigAssetExportSessionTaskCreate(a1, v9, figAssetExportSession_estimateMaximumDurationDeferred, figAssetExportSession_completeEstimateMaximumDurationTask, 0xB0uLL, &v21);
  v11 = v21;
  if (v10)
  {
    CFRelease(v9);
    if (!v11)
    {
      return v10;
    }
  }

  else
  {
    v12 = v21[6];
    v13 = *(v7 + 16);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *v12 = v13;
    v14 = *(v7 + 240);
    v15 = *(v7 + 256);
    *(v12 + 40) = *(v7 + 272);
    *(v12 + 24) = v15;
    *(v12 + 8) = v14;
    v16 = *(v7 + 216);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v12 + 56) = v16;
    v17 = *(v7 + 72);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(v12 + 64) = v17;
    *(v12 + 72) = *(v7 + 360);
    *(v12 + 80) = *(v7 + 352);
    v18 = *(v7 + 304);
    *(v12 + 88) = *(v7 + 288);
    *(v12 + 104) = v18;
    *(v12 + 112) = v7 + 80;
    *(v12 + 124) = *(v7 + 384);
    *(v12 + 128) = *(v7 + 208) != 0;
    *(v12 + 120) = *(v7 + 98);
    v19 = MEMORY[0x1E6960C70];
    *(v12 + 148) = *(MEMORY[0x1E6960C70] + 16);
    *(v12 + 132) = *v19;
    *(v12 + 160) = a2;
    *(v12 + 168) = a3;
    figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(v11);
    CFRelease(v9);
  }

  CFRelease(v11);
  return v10;
}

uint64_t FigAssetExportSessionTaskCreate(const void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, size_t a5, void *a6)
{
  v12 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&figAssetExportSessionTask_GetTypeID_sRegisterfigAssetExportSessionTaskOnce, figAssetExportSessionTask_RegisterOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAssetExportSessionTaskCreate_cold_2(&v22);
    return v22;
  }

  v14 = Instance;
  v15 = malloc_type_malloc(a5, 0x2AD884BBuLL);
  if (!v15)
  {
    v20 = 890;
LABEL_12:
    FigAssetExportSessionTaskCreate_cold_1(v20, v15, v14, &v21);
    return v21;
  }

  Copy = CFArrayCreateCopy(v12, a2);
  if (!Copy)
  {
    v20 = 893;
    goto LABEL_12;
  }

  v17 = Copy;
  if (a1)
  {
    v18 = CFRetain(a1);
  }

  else
  {
    v18 = 0;
  }

  result = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[2] = v18;
  v14[3] = v17;
  v14[6] = v15;
  *a6 = v14;
  return result;
}

CFIndex figAssetExportSession_estimateMaximumDurationDeferred(uint64_t a1, __CFError **a2)
{
  v2 = *MEMORY[0x1E6960C70];
  *&v56.value = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v56.epoch = v3;
  if (!a2)
  {
    figAssetExportSession_estimateMaximumDurationDeferred_cold_1();
    return 4294950325;
  }

  *a2 = 0;
  v46 = v2;
  *(a1 + 132) = v2;
  *(a1 + 148) = v3;
  v55 = *(a1 + 72);
  memset(&v54, 0, sizeof(v54));
  figAssetExportSession_getAssetDuration(*a1, &v54);
  memset(&v53, 0, sizeof(v53));
  v47 = *MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  start.start.epoch = v6;
  duration = v54;
  CMTimeRangeMake(&otherRange, &start.start, &duration);
  v7 = *(a1 + 24);
  *&start.start.value = *(a1 + 8);
  *&start.start.epoch = v7;
  *&start.duration.timescale = *(a1 + 40);
  CMTimeRangeGetIntersection(&v53, &start, &otherRange);
  if (**(a1 + 112))
  {
    v8 = **(a1 + 112);
  }

  else
  {
    v8 = *(a1 + 64);
  }

  if (!figAssetExportSession_isOutputEstimateSupported(v8, 1))
  {
    v44 = "Unable to estimate for this preset.";
    v45 = -17391;
LABEL_52:
    CFError = figAssetExportSession_createCFError(v45, v44);
    v26 = 0;
    goto LABEL_53;
  }

  v49 = 0;
  if (FigCFEqual())
  {
    v9 = 0;
    goto LABEL_8;
  }

  TypeID = FigRemakerGetTypeID();
  v30 = *a1;
  v31 = figAssetExportSession_IsAlphaPreset(*(a1 + 64));
  DefaultSourceVideoTrackFromAsset = remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, v30, v31, *(a1 + 120), &v49);
  if (DefaultSourceVideoTrackFromAsset)
  {
    v26 = DefaultSourceVideoTrackFromAsset;
    CFError = figAssetExportSession_createCFError(-16976, "Unable to select default video track for this asset.");
LABEL_53:
    *a2 = CFError;
    if (!CFError)
    {
      return v26;
    }

    return CFErrorGetCode(CFError);
  }

  v33 = *a1;
  v34 = *(a1 + 56);
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v37 = *(a1 + 112);
  otherRange = v53;
  SettingForFigRemaker = figAssetExportSession_getSettingForFigRemaker(v33, v49, &otherRange.start.value, v34, v35, v36, v37);
  if (!SettingForFigRemaker)
  {
    v44 = "Unable to find export settings for this preset.";
    v45 = -16971;
    goto LABEL_52;
  }

  v9 = SettingForFigRemaker;
  if (v55)
  {
    goto LABEL_9;
  }

  FigCFDictionaryGetInt64IfPresent();
LABEL_8:
  if (!v55)
  {
    v56 = v53.duration;
    epoch = v53.duration.epoch;
    *(a1 + 132) = *&v53.duration.value;
LABEL_18:
    *(a1 + 148) = epoch;
    goto LABEL_35;
  }

LABEL_9:
  if (FigCFEqual())
  {
    v39 = *a1;
    v40 = v55;
    *&otherRange.start.value = v47;
    otherRange.start.epoch = v6;
    TotalByteRateOfAllAssetTracks = figAssetExportSession_getTotalByteRateOfAllAssetTracks(v39);
    CMTimeMakeWithSeconds(&otherRange.start, ((v40 - 30720) * 0.99) / TotalByteRateOfAllAssetTracks, 1000000);
    *(a1 + 132) = *&otherRange.start.value;
    epoch = otherRange.start.epoch;
    goto LABEL_18;
  }

  if (figAssetExportSession_hasVideoTrack(*a1))
  {
    Value = CFDictionaryGetValue(v9, @"Video");
    v11 = Value;
    if (Value)
    {
      if (!CFDictionaryGetValue(Value, @"videoCodec"))
      {
        goto LABEL_35;
      }

      *&otherRange.start.value = v46;
      otherRange.start.epoch = v3;
      v48 = 0.0;
      duration.value = 0;
      figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(*a1, v49);
      v13 = v12;
      figAssetExportSession_createProfileLevel(*(a1 + 56), v11, v12, &duration);
      VideoEncoderSpecification = figAssetExportSession_createVideoEncoderSpecification(*(a1 + 80), v11, duration.value);
      v15 = *a1;
      v16 = *(a1 + 56);
      *&start.start.value = *(a1 + 88);
      start.start.epoch = *(a1 + 104);
      figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v15, v49, v16, v11, &start.start, &otherRange, &v48);
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*a1, v49, *(a1 + 56));
      v19 = v18;
      v20 = figAssetExportSession_copySourceTransferFunction(*a1, v49, *(a1 + 56));
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*a1, v49, *(a1 + 64), v11, UntransformedSourceDimension, v19, v48);
      v22 = v21 + 7;
      if (v21 >= 0)
      {
        v22 = v21;
      }

      v11 = v22 >> 3;
      if (FigCFEqual())
      {
        v11 = (v11 * 1.6);
      }

      else
      {
        isHEVCHDRPreset = figAssetExportSession_isHEVCHDRPreset();
        if (v13)
        {
          if (isHEVCHDRPreset)
          {
            PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(v13);
            if (FigExportSettingsGetHDRType(PreferredFormatDescription) == 20 && v48 > 0.0)
            {
              v11 = (v11 + (v48 * 430.0));
            }
          }
        }
      }
    }

    else
    {
      v13 = 0;
      v20 = 0;
      VideoEncoderSpecification = 0;
    }
  }

  else
  {
    v13 = 0;
    v20 = 0;
    VideoEncoderSpecification = 0;
    v11 = 0;
  }

  if (figAssetExportSession_hasAudioTrack(*a1))
  {
    v24 = CFDictionaryGetValue(v9, @"Audio");
    v25 = figAssetExportSession_computeAudioByteRate(*a1, v24, *(a1 + 128), *(a1 + 124));
  }

  else
  {
    v25 = 0;
  }

  if (v25 + v11 < 1)
  {
    *a2 = figAssetExportSession_createCFError(-16976, "Incompatible preset for source asset.");
    *&v56.value = v46;
    v56.epoch = v3;
  }

  else if (v55 < 30721)
  {
    *&v56.value = v47;
    v56.epoch = v6;
  }

  else
  {
    CMTimeMakeWithSeconds(&v56, (((v55 - 30720) * 0.99) / (v25 + v11)), 1000000);
    otherRange.start = v56;
    start.start = v53.duration;
    if (CMTimeCompare(&otherRange.start, &start.start) >= 1)
    {
      v56 = v53.duration;
    }
  }

  *(a1 + 132) = v56;
  if (v20)
  {
    CFRelease(v20);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (VideoEncoderSpecification)
  {
    CFRelease(VideoEncoderSpecification);
  }

LABEL_35:
  v26 = 0;
  CFError = *a2;
  if (*a2)
  {
    return CFErrorGetCode(CFError);
  }

  return v26;
}

void figAssetExportSession_completeEstimateMaximumDurationTask(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v3 = *(a1 + 168);
  v7 = *(a1 + 132);
  v8 = *(a1 + 148);
  v4(v3, &v7, a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 480);

  dispatch_async_f(v3, a1, figAssetExportSession_runTaskAfterLoadingRequiredAssetPropertiesDispatched);
}

uint64_t FigAssetExportSessionGetEstimatedOutputFileLength(void *a1, CMTime *a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    FigAssetExportSessionGetEstimatedOutputFileLength_cold_2(&v10);
    return LODWORD(v10.value);
  }

  *a4 = 0;
  if ((a2->flags & 0x1D) != 1)
  {
    return 0;
  }

  result = figAssetExportSession_isOutputEstimateSupported(a1, 0);
  if (result)
  {
    v8 = FigExportSettingsForExportPreset(a1);
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      figAssetExportSession_computeAudioVideoByteRate(v8, 0, &v12, &v11);
      v10 = *a2;
      EstimatedFileLengthWithOverhead = figAssetExportSession_getEstimatedFileLengthWithOverhead(&v10, v12, v11);
      result = 0;
      *a4 = EstimatedFileLengthWithOverhead;
      return result;
    }

    FigAssetExportSessionGetEstimatedOutputFileLength_cold_1(&v10);
    return LODWORD(v10.value);
  }

  return result;
}

uint64_t figAssetExportSession_computeAudioVideoByteRate(const __CFDictionary *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  Value = CFDictionaryGetValue(a1, @"Video");
  v9 = CFDictionaryGetValue(a1, @"Audio");
  *a3 = 0;
  *a4 = 0;
  if (Value)
  {
    result = CFDictionaryGetValue(Value, @"videoCodec");
    if (!result)
    {
      return result;
    }

    *a3 = figAssetExportSession_computeVideoTrackByteRate(Value, a2);
  }

  result = figAssetExportSession_computeAudioTrackByteRate(v9, a2);
  *a4 = result;
  return result;
}

uint64_t figAssetExportSession_getEstimatedFileLengthWithOverhead(CMTime *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    figAssetExportSession_getEstimatedFileLengthWithOverhead_cold_2();
  }

  else if (a3 < 0)
  {
    figAssetExportSession_getEstimatedFileLengthWithOverhead_cold_1();
  }

  else if (a3 + a2)
  {
    v4 = *a1;
    return (CMTimeGetSeconds(&v4) * (a3 + a2) / 0.99000001 + 30720.0);
  }

  return 0;
}

uint64_t FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_3(&v22);
    return v22;
  }

  if (!a2)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_2(&v22);
    return v22;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAssetExportSessionEstimateOutputFileLengthWithCompletionHandler_cold_1(&v22);
    return v22;
  }

  v9 = Mutable;
  CFArrayAppendValue(Mutable, @"assetProperty_Tracks");
  CFArrayAppendValue(v9, @"assetProperty_FormatReader");
  CFArrayAppendValue(v9, @"assetProperty_TrackReferences");
  v10 = FigAssetExportSessionTaskCreate(a1, v9, figAssetExportSession_estimateOutputFileLengthDeferred, figAssetExportSession_completeEstimateOutputFileLengthTask, 0xA0uLL, &v21);
  v11 = v21;
  if (v10)
  {
    v19 = v10;
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = v21[6];
    v13 = *(v7 + 16);
    if (v13)
    {
      v13 = CFRetain(v13);
    }

    *v12 = v13;
    v14 = *(v7 + 240);
    v15 = *(v7 + 256);
    *(v12 + 40) = *(v7 + 272);
    *(v12 + 24) = v15;
    *(v12 + 8) = v14;
    v16 = *(v7 + 216);
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v12 + 56) = v16;
    v17 = *(v7 + 72);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(v12 + 64) = v17;
    *(v12 + 72) = *(v7 + 360);
    *(v12 + 80) = *(v7 + 352);
    v18 = *(v7 + 304);
    *(v12 + 88) = *(v7 + 288);
    *(v12 + 104) = v18;
    *(v12 + 112) = v7 + 80;
    *(v12 + 124) = *(v7 + 384);
    *(v12 + 128) = *(v7 + 208) != 0;
    *(v12 + 120) = *(v7 + 98);
    *(v12 + 136) = 0;
    *(v12 + 144) = a2;
    *(v12 + 152) = a3;
    figAssetExportSession_runTaskAfterLoadingRequiredAssetProperties(v11);
    v19 = 0;
  }

  CFRelease(v11);
LABEL_13:
  CFRelease(v9);
  return v19;
}

CFIndex figAssetExportSession_estimateOutputFileLengthDeferred(uint64_t a1, __CFError **a2)
{
  if (!a2)
  {
    figAssetExportSession_estimateOutputFileLengthDeferred_cold_1();
    return 4294950325;
  }

  *a2 = 0;
  *(a1 + 136) = 0;
  memset(&v46, 0, sizeof(v46));
  figAssetExportSession_getAssetDuration(*a1, &v46);
  memset(&v45, 0, sizeof(v45));
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  duration = v46;
  CMTimeRangeMake(&otherRange, &start.start, &duration);
  v4 = *(a1 + 24);
  *&start.start.value = *(a1 + 8);
  *&start.start.epoch = v4;
  *&start.duration.timescale = *(a1 + 40);
  CMTimeRangeGetIntersection(&v45, &start, &otherRange);
  if (**(a1 + 112))
  {
    v5 = **(a1 + 112);
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (!figAssetExportSession_isOutputEstimateSupported(v5, 1))
  {
    v37 = "Unable to estimate for this preset.";
LABEL_39:
    CFError = figAssetExportSession_createCFError(-17391, v37);
    SettingForFigRemaker = 0;
    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v21 = *a1;
    otherRange = v45;
    TotalByteRateOfAllAssetTracks = figAssetExportSession_getTotalByteRateOfAllAssetTracks(v21);
    start.start = otherRange.duration;
    *(a1 + 136) = (TotalByteRateOfAllAssetTracks * CMTimeGetSeconds(&start.start));
    goto LABEL_23;
  }

  v41 = 0;
  TypeID = FigRemakerGetTypeID();
  v7 = *a1;
  v8 = figAssetExportSession_IsAlphaPreset(*(a1 + 64));
  DefaultSourceVideoTrackFromAsset = remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, v7, v8, *(a1 + 120), &v41);
  if (DefaultSourceVideoTrackFromAsset)
  {
    SettingForFigRemaker = DefaultSourceVideoTrackFromAsset;
    v38 = "Unable to select default video track for this asset.";
    v39 = -16976;
LABEL_42:
    CFError = figAssetExportSession_createCFError(v39, v38);
LABEL_43:
    *a2 = CFError;
    if (!CFError)
    {
      return SettingForFigRemaker;
    }

    return CFErrorGetCode(CFError);
  }

  v10 = *a1;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 112);
  otherRange = v45;
  SettingForFigRemaker = figAssetExportSession_getSettingForFigRemaker(v10, v41, &otherRange.start.value, v11, v12, v13, v14);
  if (!SettingForFigRemaker)
  {
    v38 = "Unable to find export settings for this preset.";
    v39 = -16971;
    goto LABEL_42;
  }

  if (!figAssetExportSession_hasVideoTrack(*a1))
  {
    v18 = 0;
    v19 = 0;
    VideoEncoderSpecification = 0;
    v17 = 0;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(SettingForFigRemaker, @"Video");
  v17 = Value;
  if (Value)
  {
    if (CFDictionaryGetValue(Value, @"videoCodec"))
    {
      *&otherRange.start.value = *MEMORY[0x1E6960C70];
      otherRange.start.epoch = *(MEMORY[0x1E6960C70] + 16);
      v40 = 0.0;
      duration.value = 0;
      figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(*a1, v41);
      v18 = v27;
      figAssetExportSession_createProfileLevel(*(a1 + 56), v17, v27, &duration);
      VideoEncoderSpecification = figAssetExportSession_createVideoEncoderSpecification(*(a1 + 80), v17, duration.value);
      v28 = *a1;
      v29 = *(a1 + 56);
      *&start.start.value = *(a1 + 88);
      start.start.epoch = *(a1 + 104);
      figAssetExportSession_getDestinationFrameDurationAndExpectedFrameRate(v28, v41, v29, v17, &start.start, &otherRange, &v40);
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*a1, v41, *(a1 + 56));
      v32 = v31;
      v19 = figAssetExportSession_copySourceTransferFunction(*a1, v41, *(a1 + 56));
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*a1, v41, *(a1 + 64), v17, UntransformedSourceDimension, v32, v40);
      v34 = v33 + 7;
      if (v33 >= 0)
      {
        v34 = v33;
      }

      v17 = v34 >> 3;
      if (FigCFEqual())
      {
        v17 = (v17 * 1.6);
      }

      else
      {
        isHEVCHDRPreset = figAssetExportSession_isHEVCHDRPreset();
        if (v18)
        {
          if (isHEVCHDRPreset)
          {
            PreferredFormatDescription = FigExportSettingsGetPreferredFormatDescription(v18);
            if (FigExportSettingsGetHDRType(PreferredFormatDescription) == 20 && v40 > 0.0)
            {
              v17 = (v17 + (v40 * 430.0));
            }
          }
        }
      }

      goto LABEL_14;
    }

    v37 = "Unable to estimate for pass-through video track.";
    goto LABEL_39;
  }

  v18 = 0;
  v19 = 0;
  VideoEncoderSpecification = 0;
LABEL_14:
  if (figAssetExportSession_hasAudioTrack(*a1))
  {
    v23 = CFDictionaryGetValue(SettingForFigRemaker, @"Audio");
    v24 = figAssetExportSession_computeAudioByteRate(*a1, v23, *(a1 + 128), *(a1 + 124));
  }

  else
  {
    v24 = 0;
  }

  otherRange.start = v45.duration;
  *(a1 + 136) = figAssetExportSession_getEstimatedFileLengthWithOverhead(&otherRange.start, v17, v24);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (VideoEncoderSpecification)
  {
    CFRelease(VideoEncoderSpecification);
  }

LABEL_23:
  SettingForFigRemaker = 0;
  CFError = *a2;
  if (*a2)
  {
    return CFErrorGetCode(CFError);
  }

  return SettingForFigRemaker;
}

void figAssetExportSession_completeEstimateOutputFileLengthTask(uint64_t a1, uint64_t a2)
{
  (*(a1 + 144))(*(a1 + 152), *(a1 + 136), a2);
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {

    CFRelease(v5);
  }
}

uint64_t FigAssetExportSessionGetAllPresets(uint64_t a1)
{
  if (qword_1EAF1A988 != -1)
  {
    FigAssetExportSessionGetAllPresets_cold_1(a1);
  }

  return qword_1EAF1A980;
}

uint64_t FigAssetExportSessionExportAsynchronously(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);

  return v6(a1, a2, a3);
}

uint64_t FigAssetExportSessionCancelExport(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);

  return v2(a1);
}

uint64_t FigAssetExportSessionStopResumableExport(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 32);

  return v2(a1);
}

uint64_t FigAssetExportSessionDetermineCompatibleFileTypes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);

  return v6(a1, a2, a3);
}

uint64_t FigAssetExportSessionCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigAssetExportSessionSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

void FigAssetExportSession_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17B38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (*(DerivedStorage + 480) && _FigIsNotCurrentDispatchQueue())
  {
    dispatch_sync_f(*(DerivedStorage + 480), 0, figAssetExportSession_EmptyWait);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    figAssetExportSession_removeListeners(v4);
    if (_FigIsNotCurrentDispatchQueue())
    {
      dispatch_sync_f(*(DerivedStorage + 472), 0, figAssetExportSession_EmptyWait);
    }

    FigReadWriteLockLockForWrite();
    FigBaseObject = FigRemakerGetFigBaseObject(*(DerivedStorage + 40));
    if (FigBaseObject)
    {
      v30 = FigBaseObject;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v31)
      {
        v31(v30);
      }
    }

    v32 = *(DerivedStorage + 40);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 40) = 0;
    }

    FigReadWriteLockUnlockForWrite();
  }

  if (*(DerivedStorage + 97) || *(DerivedStorage + 389))
  {
    FigReadWriteLockLockForWrite();
    figAssetExportSession_releaseSegmentResources(a1);
    FigReadWriteLockUnlockForWrite();
    v5 = *(DerivedStorage + 144);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  FigReadWriteLockDestroy();
  v6 = *(DerivedStorage + 472);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(DerivedStorage + 480);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(DerivedStorage + 336);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(DerivedStorage + 216);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 64);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 16);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 72);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 80);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 88);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 176);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 192);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 200);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 224);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 232);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 208);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 320);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 448);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(DerivedStorage + 464);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(DerivedStorage + 400);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(DerivedStorage + 392);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(DerivedStorage + 160);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(DerivedStorage + 152);
  if (v28)
  {
    CFRelease(v28);
  }
}

__CFString *exportSession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetExportSession %p,  asset = %@, presetName = %@, outputFileType = %@>", a1, DerivedStorage[2], DerivedStorage[9], DerivedStorage[22]);
  return Mutable;
}

uint64_t figAssetExportSession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (!a1)
  {
    figAssetExportSession_CopyProperty_cold_16(&range);
    return LODWORD(range.start.value);
  }

  if (!a2)
  {
    figAssetExportSession_CopyProperty_cold_15(&range);
    return LODWORD(range.start.value);
  }

  if (!a4)
  {
    figAssetExportSession_CopyProperty_cold_14(&range);
    return LODWORD(range.start.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"kFigAssetExportSessionProperty_PresetName", a2))
  {
    v8 = *(DerivedStorage + 72);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Asset", a2))
  {
    v8 = *(DerivedStorage + 16);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_OutputFileType", a2))
  {
    v8 = *(DerivedStorage + 176);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_OutputURL", a2))
  {
    v8 = *(DerivedStorage + 88);
    if (v8)
    {
LABEL_15:
      SInt64 = CFRetain(v8);
LABEL_16:
      v10 = SInt64;
LABEL_79:
      result = 0;
      goto LABEL_80;
    }

LABEL_78:
    v10 = 0;
    goto LABEL_79;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_ShouldOptimizeForNetworkUse", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 432);
LABEL_80:
    *a4 = v10;
    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_PreserveSyncFrames", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 344);
    goto LABEL_80;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_UseHardwareVideoEncoderIfAvailable", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 352);
    goto LABEL_80;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Status", a2))
  {
    FigReadWriteLockLockForRead();
    SInt32 = FigCFNumberCreateSInt32();
    FigReadWriteLockUnlockForRead();
    if (!SInt32)
    {
      figAssetExportSession_CopyProperty_cold_1(&range);
      return LODWORD(range.start.value);
    }

LABEL_39:
    result = 0;
    *a4 = SInt32;
    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Error", a2))
  {
    FigReadWriteLockLockForRead();
    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      SInt32 = CFRetain(v13);
    }

    else
    {
      SInt32 = 0;
    }

    FigReadWriteLockUnlockForRead();
    goto LABEL_39;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Progress", a2))
  {
    figAssetExportSession_updateProgress(DerivedStorage);
    v14 = *(DerivedStorage + 64);
    if (v14)
    {
      SInt64 = CFRetain(v14);
      if (SInt64)
      {
        goto LABEL_16;
      }
    }

    figAssetExportSession_CopyProperty_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_SupportedFileTypes", a2))
  {
    if (qword_1EAF1A990 != -1)
    {
      figAssetExportSession_CopyProperty_cold_3();
    }

    if (qword_1EAF1A998)
    {
      if (*(DerivedStorage + 80))
      {
        v15 = *(DerivedStorage + 80);
      }

      else
      {
        v15 = *(DerivedStorage + 72);
      }

      Value = CFDictionaryGetValue(qword_1EAF1A998, v15);
      if (Value)
      {
        v17 = Value;
        CFRetain(Value);
      }

      else
      {
        v17 = CFArrayCreate(a3, 0, 0, MEMORY[0x1E695E9C0]);
        if (!v17)
        {
          figAssetExportSession_CopyProperty_cold_4(&range);
          return LODWORD(range.start.value);
        }
      }

      result = 0;
      *a4 = v17;
      return result;
    }

    figAssetExportSession_CopyProperty_cold_5(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_TimeRange", a2))
  {
    v18 = *(DerivedStorage + 256);
    *&range.start.value = *(DerivedStorage + 240);
    *&range.start.epoch = v18;
    *&range.duration.timescale = *(DerivedStorage + 272);
    SInt64 = CMTimeRangeCopyAsDictionary(&range, a3);
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_6(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MaxDuration", a2))
  {
    *&range.start.value = *MEMORY[0x1E6960C88];
    range.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    if (*(DerivedStorage + 80))
    {
      v19 = *(DerivedStorage + 80);
    }

    else
    {
      v19 = *(DerivedStorage + 72);
    }

    result = figAssetExportSession_maximumDuration(v19, *(DerivedStorage + 360), &range);
    if (!result)
    {
      start = range.start;
      SInt64 = CMTimeCopyAsDictionary(&start, a3);
      if (!SInt64)
      {
        figAssetExportSession_CopyProperty_cold_7(&start);
        return LODWORD(start.value);
      }

      goto LABEL_16;
    }

    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_FileLengthLimit", a2))
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_8(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MaximizePowerEfficiency", a2))
  {
    v8 = *(DerivedStorage + 368);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MinimizeMemoryUsage", a2))
  {
    v8 = *(DerivedStorage + 376);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Metadata", a2))
  {
    v8 = *(DerivedStorage + 224);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MetadataItemFilterAllowList", a2))
  {
    v8 = *(DerivedStorage + 232);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_AudioMix", a2))
  {
    v8 = *(DerivedStorage + 208);
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

  if (!CFEqual(@"kFigAssetExportSessionProperty_EstimatedOutputFileLength", a2))
  {
    if (CFEqual(@"kFigAssetExportSessionProperty_AudioTimePitchAlgorithm", a2))
    {
      v8 = *(DerivedStorage + 200);
      if (v8)
      {
        goto LABEL_15;
      }

      figAssetExportSession_CopyProperty_cold_10(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_CanPerformMultiplePassesOverSourceMediaData", a2))
    {
      result = 0;
      v10 = *(DerivedStorage + 440);
      goto LABEL_80;
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_DirectoryForTemporaryFiles", a2))
    {
      v8 = *(DerivedStorage + 448);
      if (!v8)
      {
        goto LABEL_78;
      }

      goto LABEL_15;
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_MinVideoFrameDuration", a2))
    {
      *&range.start.value = *(DerivedStorage + 288);
      range.start.epoch = *(DerivedStorage + 304);
      SInt64 = CMTimeCopyAsDictionary(&range.start, a3);
      if (SInt64)
      {
        goto LABEL_16;
      }

      figAssetExportSession_CopyProperty_cold_11(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_VideoFrameRateConversionAlgorithm", a2))
    {
      v8 = *(DerivedStorage + 320);
      if (v8)
      {
        goto LABEL_15;
      }

      figAssetExportSession_CopyProperty_cold_12(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_AudioTrackGroupOutputHandling", a2))
    {
      SInt64 = FigCFNumberCreateSInt32();
      if (SInt64)
      {
        goto LABEL_16;
      }

      figAssetExportSession_CopyProperty_cold_13(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_AllowsParallelizedExport", a2))
    {
      result = 0;
      v22 = *(DerivedStorage + 96);
    }

    else
    {
      if (!CFEqual(@"kFigAssetExportSessionProperty_EnableDecodeAppleOnlySWAV1", a2))
      {
        result = CFEqual(@"kFigAssetExportSessionProperty_ResumableSessionName", a2);
        if (result)
        {
          v8 = *(DerivedStorage + 392);
          if (!v8)
          {
            goto LABEL_78;
          }

          goto LABEL_15;
        }

        return result;
      }

      result = 0;
      v22 = *(DerivedStorage + 98);
    }

    if (v22)
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    v10 = *v23;
    goto LABEL_80;
  }

  start.value = 0;
  if (*(DerivedStorage + 80))
  {
    v21 = *(DerivedStorage + 80);
  }

  else
  {
    v21 = *(DerivedStorage + 72);
  }

  *&range.start.value = *(DerivedStorage + 264);
  range.start.epoch = *(DerivedStorage + 280);
  result = FigAssetExportSessionGetEstimatedOutputFileLength(v21, &range.start, v20, &start.value);
  if (!result)
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_9(&range);
    return LODWORD(range.start.value);
  }

  return result;
}

void figAssetExportSession_releaseSegmentResources(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = (DerivedStorage + 112);
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      figAssetExportSession_releaseSegmentResources_cold_1(DerivedStorage, v4, a1, Count);
    }

    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }
  }

  v6 = *(DerivedStorage + 128);
  if (v6)
  {
    figAssetExportSession_releaseSegmentResources_cold_2(v6, a1, DerivedStorage, (DerivedStorage + 128));
  }

  if (*(DerivedStorage + 48) != 7)
  {

    FigFileDeleteFile();
  }
}

void figAssetExportSession_figRemakerNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  if (FigCFEqual())
  {
    FigSignalErrorAtGM();
    if (a5)
    {
      v9 = CFGetTypeID(a5);
      if (v9 == CFDictionaryGetTypeID())
      {
        FigCFDictionaryGetInt32IfPresent();
      }
    }

    v10 = *MEMORY[0x1E695E480];
    v11 = -16979;
    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM();
    v10 = *MEMORY[0x1E695E480];
    v11 = -16977;
LABEL_8:
    v12 = CFErrorCreate(v10, @"FigAssetExportSession_ErrorDomain", v11, 0);
LABEL_9:
    v13 = 5;
LABEL_10:
    figAssetExportSession_transitionToStatus(a2, v13, v12);
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM();
    v12 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
    *(DerivedStorage + 8) = 1;
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM();
    v12 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
LABEL_18:
    if (*(DerivedStorage + 328))
    {
      *(DerivedStorage + 312) = 0;
      *(DerivedStorage + 328) = 0;
      dispatch_semaphore_signal(*(DerivedStorage + 336));
    }

    goto LABEL_9;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (!FigCFEqual())
      {
        return;
      }

      v12 = 0;
      v13 = 2;
      goto LABEL_10;
    }

    if (a5)
    {
      v18 = CFGetTypeID(a5);
      if (v18 == CFDictionaryGetTypeID())
      {
        LOBYTE(v34) = 0;
        if (FigCFDictionaryGetBooleanIfPresent())
        {
          if (*(DerivedStorage + 328))
          {
            *(DerivedStorage + 312) = v34;
            *(DerivedStorage + 328) = 0;
            dispatch_semaphore_signal(*(DerivedStorage + 336));
          }

          return;
        }
      }
    }

    v12 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16979, 0);
    goto LABEL_11;
  }

  if (!*(DerivedStorage + 97) && !*(DerivedStorage + 389))
  {
    v12 = 0;
    v13 = 4;
    goto LABEL_10;
  }

  v14 = *(DerivedStorage + 128);
  if (v14 && *v14 == a4)
  {
    *(v14 + 48) = 4;
    if (*(DerivedStorage + 389) && (figAssetExportSession_ResolveIntermediateFakeTrackIDs(v14) || figAssetExportSession_writeResumablePlistFile()))
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  if (*(DerivedStorage + 104) >= 1)
  {
    v15 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v15 - 1);
      if (*ValueAtIndex == a4)
      {
        break;
      }

      if (v15++ >= *(DerivedStorage + 104))
      {
        goto LABEL_63;
      }
    }

    v19 = ValueAtIndex;
    *(ValueAtIndex + 12) = 4;
    if (*(DerivedStorage + 389))
    {
      if (figAssetExportSession_ResolveIntermediateFakeTrackIDs(ValueAtIndex))
      {
LABEL_61:
        v12 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -17392, 0);
        goto LABEL_62;
      }

      FirstValue = FigCFArrayGetFirstValue();
      if (!FirstValue)
      {
        figAssetExportSession_figRemakerNotification_cold_2();
        return;
      }

      cf = 0;
      v21 = *v19;
      v22 = *(FirstValue + 4);
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (!v23 || (v24 = *MEMORY[0x1E695E480], v23(v21, v22, @"RemakerTrack_FinalHDRMetadataGenerationState", *MEMORY[0x1E695E480], &cf)))
      {
        v12 = 0;
      }

      else
      {
        v25 = *(DerivedStorage + 120);
        v26 = cf;
        *(DerivedStorage + 120) = cf;
        if (v26)
        {
          CFRetain(v26);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v27 = figAssetExportSession_writeResumablePlistFile();
        if (!v27)
        {
          if (*(DerivedStorage + 389))
          {
            if (*(DerivedStorage + 104) != v15)
            {
              v28 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v15);
              v29 = *v28;
              if (*v28)
              {
                figAssetExportSession_addListeners(*v28);
                started = FigRemakerStartOutput(v29);
                if (started)
                {
                  v12 = CFErrorCreate(v24, @"FigAssetExportSession_ErrorDomain", started, 0);
LABEL_62:
                  FigSignalErrorAtGM();
                  goto LABEL_11;
                }
              }
            }
          }

          goto LABEL_63;
        }

        figAssetExportSession_figRemakerNotification_cold_1(v24, v27, &v34);
        v12 = v34;
      }

LABEL_11:
      if (v12)
      {
        CFRelease(v12);
      }

      return;
    }
  }

LABEL_63:
  if (figAssetExportSession_getOverallVideoSegmentStatus(*(DerivedStorage + 112)) == 4)
  {
    v31 = *(DerivedStorage + 128);
    if (!v31 || *(v31 + 48) == 4)
    {
      v12 = 0;
      v13 = 3;
      goto LABEL_10;
    }
  }
}

uint64_t figAssetExportSession_ResolveIntermediateFakeTrackIDs(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigRemakerGetFigBaseObject(*a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(FigBaseObject, @"Remaker_FakeTrackIDMapping", *MEMORY[0x1E695E480], &cf);
  }

  v4 = *(a1 + 16);
  if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v7);
      RealIntermediateTrackID = figAssetExportSession_getRealIntermediateTrackID(cf, ValueAtIndex[1]);
      if (!RealIntermediateTrackID)
      {
        break;
      }

      ValueAtIndex[1] = RealIntermediateTrackID;
      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }

    figAssetExportSession_ResolveIntermediateFakeTrackIDs_cold_1(&v13);
    v10 = v13;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t figAssetExportSession_writeResumablePlistFile()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    figAssetExportSession_writeResumablePlistFile_cold_8(&time);
    return LODWORD(time.value);
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, @"ResumableSessionName", *(DerivedStorage + 392));
  v4 = CFArrayCreateMutable(v1, 1, MEMORY[0x1E695E9C0]);
  if (!v4)
  {
    figAssetExportSession_writeResumablePlistFile_cold_7(&time);
LABEL_42:
    value_low = LODWORD(time.value);
    goto LABEL_29;
  }

  v5 = v4;
  CFDictionarySetValue(v3, @"OtherTracksSegments", v4);
  CFRelease(v5);
  v6 = MEMORY[0x1E695E4D0];
  v7 = MEMORY[0x1E695E4C0];
  if (*(DerivedStorage + 128))
  {
    v8 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v8)
    {
      figAssetExportSession_writeResumablePlistFile_cold_1(&time);
      goto LABEL_42;
    }

    v9 = v8;
    CFArrayAppendValue(v5, v8);
    CFRelease(v9);
    v10 = CFURLGetString(*(*(DerivedStorage + 128) + 8));
    CFDictionarySetValue(v9, @"SegmentOutputFilename", v10);
    if (*(*(DerivedStorage + 128) + 48) == 4)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    CFDictionarySetValue(v9, @"SegmentCompletionStatus", *v11);
    v12 = *(DerivedStorage + 128);
    if (*(v12 + 48) == 4)
    {
      v13 = figAssetExportSesssion_setTrackMappings(v9, *(v12 + 16));
      if (v13)
      {
        value_low = v13;
        goto LABEL_29;
      }
    }
  }

  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    Count = CFArrayGetCount(v14);
  }

  else
  {
    Count = 0;
  }

  v16 = CFArrayCreateMutable(v1, Count, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    figAssetExportSession_writeResumablePlistFile_cold_6(&time);
    goto LABEL_42;
  }

  v17 = v16;
  theDict = v3;
  CFDictionarySetValue(v3, @"VideoTrackSegments", v16);
  CFRelease(v17);
  if (Count < 1)
  {
LABEL_25:
    v30 = *(DerivedStorage + 120);
    v3 = theDict;
    if (v30)
    {
      CFDictionarySetValue(theDict, @"LastCompletedSegmentHDRMetadataState", v30);
    }

    if (!FigCFPropertyListWriteToURL())
    {
      value_low = 0;
      goto LABEL_29;
    }

    figAssetExportSession_writeResumablePlistFile_cold_2(&time);
    goto LABEL_42;
  }

  v18 = 0;
  v19 = *v6;
  v20 = *v7;
  while (1)
  {
    v21 = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v21)
    {
      figAssetExportSession_writeResumablePlistFile_cold_5(&time);
LABEL_34:
      value_low = LODWORD(time.value);
      goto LABEL_35;
    }

    v22 = v21;
    CFArrayAppendValue(v17, v21);
    CFRelease(v22);
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v18);
    if (!ValueAtIndex)
    {
      figAssetExportSession_writeResumablePlistFile_cold_4(&time);
      goto LABEL_34;
    }

    v24 = ValueAtIndex;
    v25 = CFURLGetString(ValueAtIndex[1]);
    CFDictionarySetValue(v22, @"SegmentOutputFilename", v25);
    time = *(v24 + 1);
    v26 = CMTimeCopyAsDictionary(&time, v1);
    if (!v26)
    {
      figAssetExportSession_writeResumablePlistFile_cold_3(&time);
      goto LABEL_34;
    }

    v27 = v26;
    CFDictionarySetValue(v22, @"SegmentDuration", v26);
    CFRelease(v27);
    v28 = *(v24 + 12) == 4 ? v19 : v20;
    CFDictionarySetValue(v22, @"SegmentCompletionStatus", v28);
    if (*(v24 + 12) == 4)
    {
      v29 = figAssetExportSesssion_setTrackMappings(v22, v24[2]);
      if (v29)
      {
        break;
      }
    }

    if (Count == ++v18)
    {
      goto LABEL_25;
    }
  }

  value_low = v29;
LABEL_35:
  v3 = theDict;
LABEL_29:
  CFRelease(v3);
  return value_low;
}

uint64_t FigRemakerStartOutput(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t figAssetExportSession_getOverallVideoSegmentStatus(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = 4;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        v7 = ValueAtIndex[12];
        if (v7 > 3)
        {
          if (v7 == 4)
          {
LABEL_9:
            if (v7 >= v5)
            {
              v5 = v5;
            }

            else
            {
              v5 = v7;
            }

            goto LABEL_14;
          }

          if ((v7 - 5) < 3)
          {
            return ValueAtIndex[12];
          }
        }

        else if (v7 == 1)
        {
          v5 = 1;
        }

        else if (v7 == 2)
        {
          goto LABEL_9;
        }

LABEL_14:
        if (v3 == ++v4)
        {
          return v5;
        }
      }
    }
  }

  return 4;
}

void figAssetExportSession_transitionToStatus(const void *a1, unsigned int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF17B38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 0, @"kFigAssetExportSessionProperty_Error");
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 0, @"kFigAssetExportSessionProperty_Status");
  FigReadWriteLockLockForWrite();
  v9 = *(DerivedStorage + 48);
  if (v9 == a2 || v9 >= 4)
  {
    FigReadWriteLockUnlockForWrite();
    return;
  }

  *(DerivedStorage + 48) = a2;
  v11 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (a2 < 4)
  {
    if (a2 != 3)
    {
      v12 = *(DerivedStorage + 184);
LABEL_18:
      FigReadWriteLockUnlockForWrite();
      goto LABEL_29;
    }

    FigReadWriteLockUnlockForWrite();
    figAssetExportSession_kickoffSegmentReassembly();
    if (v15)
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16979, 0);
      FigSignalErrorAtGM();
      figAssetExportSession_transitionToStatus(a1, 5, v16);
      if (v16)
      {
        CFRelease(v16);
      }
    }

    goto LABEL_28;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    figAssetExportSession_transitionToStatus_cold_1(DerivedStorage + 32, DerivedStorage, (DerivedStorage + 40), a1);
  }

  if (*(DerivedStorage + 97) || *(DerivedStorage + 389))
  {
    if (v13)
    {
      FigReadWriteLockLockForWrite();
    }

    figAssetExportSession_releaseSegmentResources(a1);
    FigReadWriteLockUnlockForWrite();
LABEL_28:
    v12 = *(DerivedStorage + 184);
    goto LABEL_29;
  }

  v12 = *(DerivedStorage + 184);
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_29:
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 1, @"kFigAssetExportSessionProperty_Error");
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 1, @"kFigAssetExportSessionProperty_Status");
  if (a2 >= 4)
  {
    if (a2 - 5 <= 1 && v12)
    {
      FigFileDeleteFile();
    }

    v14 = *(DerivedStorage + 408);
    if (v14)
    {
      *(DerivedStorage + 408) = 0;
      v14(*(DerivedStorage + 416));
      if (*v7 == 1)
      {
        kdebug_trace();
      }

      CFRelease(a1);
    }
  }
}

uint64_t figAssetExportSession_getRealIntermediateTrackID(uint64_t a1, uint64_t a2)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a2);
  FigCFDictionaryGetValue();
  SInt32 = FigCFNumberGetSInt32();
  if (v2)
  {
    CFRelease(v2);
  }

  return SInt32;
}

uint64_t figAssetExportSesssion_setTrackMappings(__CFDictionary *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v15 = 3185;
LABEL_18:
    figAssetExportSesssion_setTrackMappings_cold_1(v15, &v16);
    return v16;
  }

  v7 = Mutable;
  CFDictionarySetValue(a1, @"SegmentTrackMappings", Mutable);
  CFRelease(v7);
  if (Count >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = CFDictionaryCreateMutable(v5, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CFArrayAppendValue(v7, v9);
      CFRelease(v10);
      CFArrayGetValueAtIndex(theArray, v8);
      UInt32 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"SourceTrackID", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }

      v12 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"IntermediateTrackID", v12);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"MediaType", v13);
      if (v13)
      {
        CFRelease(v13);
      }

      if (Count == ++v8)
      {
        return 0;
      }
    }

    v15 = 3194;
    goto LABEL_18;
  }

  return 0;
}

void figAssetExportSession_DeliverParentExportNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 424))
  {
    if (*a1)
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        v7 = v6;
        (*(a1 + 424))(v6, a2, a3);

        CFRelease(v7);
      }
    }
  }
}

void figAssetExportSession_updateProgress(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 40))
  {
    FigReadWriteLockLockForRead();
    v2 = *(a1 + 40);
    if (v2)
    {
      FigBaseObject = FigRemakerGetFigBaseObject(v2);
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(FigBaseObject, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
      }
    }

    FigReadWriteLockUnlockForRead();
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 97))
  {
    if (!*(a1 + 389))
    {
      return;
    }

    if (!*(a1 + 136))
    {
      FigReadWriteLockLockForRead();
      v26 = *(a1 + 128);
      v27 = 0.0;
      v28 = 0.95;
      if (v26 && *v26)
      {
        v29 = *MEMORY[0x1E695E480];
        v30 = FigRemakerGetFigBaseObject(*v26);
        if (!CMBaseObjectCopyProperty(v30, @"Remaker_Progress", v29, &cf))
        {
          FigCFNumberGetFloat32();
          v27 = v31 * 0.05 + 0.0;
        }

        v28 = 0.9;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      v32 = *(a1 + 112);
      if (v32)
      {
        Count = CFArrayGetCount(v32);
        if (Count >= 1)
        {
          v34 = Count;
          v35 = 0;
          v36 = v28 / Count;
          v37 = *MEMORY[0x1E695E480];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 112), v35);
            if (ValueAtIndex[12] == 4)
            {
              v27 = v36 + v27;
            }

            else
            {
              v39 = FigRemakerGetFigBaseObject(*ValueAtIndex);
              v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v40 && !v40(v39, @"Remaker_Progress", v37, &cf))
              {
                FigCFNumberGetFloat32();
                v27 = v27 + (v41 * v36);
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            ++v35;
          }

          while (v34 != v35);
        }
      }

      if (fabs(v27 + -0.95) < 0.000001)
      {
        *(a1 + 136) = 1;
      }

      goto LABEL_64;
    }

LABEL_35:
    v43 = 0;
    v22 = *(a1 + 144);
    if (v22)
    {
      FigAssetExportSessionCopyProperty(v22, @"kFigAssetExportSessionProperty_Progress", *MEMORY[0x1E695E480], &v43);
      if (v43)
      {
        FigCFNumberGetFloat32();
        Float32 = FigCFNumberCreateFloat32();
        cf = Float32;
        if (Float32)
        {
          v24 = Float32;
          FigReadWriteLockLockForWrite();
          v25 = *(a1 + 64);
          *(a1 + 64) = v24;
          CFRetain(v24);
          if (v25)
          {
            CFRelease(v25);
          }

          FigReadWriteLockUnlockForWrite();
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }

        v7 = v43;
        if (v43)
        {
          goto LABEL_9;
        }
      }
    }

    return;
  }

  if (*(a1 + 136))
  {
    goto LABEL_35;
  }

  FigReadWriteLockLockForRead();
  v8 = *(a1 + 112);
  v9 = 2.0;
  if (v8)
  {
    v10 = CFArrayGetCount(v8);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        v14 = CFArrayGetValueAtIndex(*(a1 + 112), v12);
        v15 = FigRemakerGetFigBaseObject(*v14);
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          v16(v15, @"Remaker_Progress", v13, &cf);
        }

        FigCFNumberGetFloat32();
        if (v17 < v9)
        {
          v9 = v17;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v12;
      }

      while (v11 != v12);
    }
  }

  v18 = *(a1 + 128);
  if (v18 && *v18)
  {
    v19 = FigRemakerGetFigBaseObject(*v18);
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(v19, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
    }

    FigCFNumberGetFloat32();
    if (v21 < v9)
    {
      v9 = v21;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v9 == 1.0)
  {
    *(a1 + 136) = 1;
  }

LABEL_64:
  FigReadWriteLockUnlockForRead();
  v42 = FigCFNumberCreateFloat32();
  cf = v42;
  if (!v42)
  {
    return;
  }

  v5 = v42;
LABEL_6:
  FigReadWriteLockLockForWrite();
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  CFRetain(v5);
  if (v6)
  {
    CFRelease(v6);
  }

  FigReadWriteLockUnlockForWrite();
  v7 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v7);
  }
}

uint64_t figAssetExportSession_addTrackMapping(__CFDictionary *a1, int a2, int a3)
{
  v11 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &v11);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CFDictionarySetValue(a1, v5, v6);
    v9 = 0;
LABEL_6:
    CFRelease(v5);
    goto LABEL_7;
  }

  v9 = FigSignalErrorAtGM();
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t FigAssetCopyTracksWithMediaType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 48);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

void FAES_RemakerConfigRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a2);
  }
}

CFArrayRef figAssetExportSession_CreateUTTypesForDefaultPassthroughPresetOnce(CFArrayRef *a1)
{
  values[12] = *MEMORY[0x1E69E9840];
  values[0] = @"com.apple.quicktime-movie";
  values[1] = @"com.apple.quicktime-audio";
  values[2] = @"com.apple.m4a-audio";
  values[3] = @"public.mpeg-4";
  values[4] = @"com.apple.m4v-video";
  values[5] = @"public.3gpp";
  values[6] = @"org.3gpp.adaptive-multi-rate-audio";
  values[7] = @"com.microsoft.waveform-audio";
  values[8] = @"public.aiff-audio";
  values[9] = @"public.aifc-audio";
  values[10] = @"com.apple.coreaudio-format";
  values[11] = @"com.apple.immersive-video";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 12, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

void figAssetExportSession_DetermineCompatibleFileTypes_Worker(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 456) != -1)
  {
    dispatch_once_f((DerivedStorage + 456), *a1, figAssetExportSession_DetermineCompatibleFileTypesOnce);
  }

  (*(a1 + 8))(*(a1 + 16), *(v3 + 464));
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void figAssetExportSession_createRemakerAndBeginExport(__CFDictionary *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  cf = 0;
  v44 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v41 = 0;
  v42 = 0;
  if (dword_1EAF17B38)
  {
    LODWORD(start.start.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 48) != 1)
  {
    goto LABEL_21;
  }

  if (*(DerivedStorage + 8))
  {
    figAssetExportSession_createRemakerAndBeginExport_cold_1(&v49);
    v18 = 0;
    value = v49.start.value;
    goto LABEL_32;
  }

  dictionaryRepresentation = 0;
  v4 = *(DerivedStorage + 216);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!*(v4 + 144))
  {
    goto LABEL_22;
  }

  v5 = *(DerivedStorage + 16);
  if (!v5)
  {
    goto LABEL_22;
  }

  CMBaseObject = FigAssetGetCMBaseObject(v5);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(CMBaseObject, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
  v10 = dictionaryRepresentation;
  if (v9)
  {
    v17 = 0;
    if (dictionaryRepresentation)
    {
LABEL_19:
      CFRelease(v10);
    }
  }

  else
  {
    memset(&type, 0, sizeof(type));
    v11 = MEMORY[0x1E6960CC0];
    if (dictionaryRepresentation)
    {
      CMTimeMakeFromDictionary(&type, dictionaryRepresentation);
    }

    else
    {
      type = **&MEMORY[0x1E6960CC0];
    }

    memset(&v49, 0, sizeof(v49));
    *&start.start.value = *v11;
    start.start.epoch = *(v11 + 16);
    duration = type;
    CMTimeRangeMake(&otherRange, &start.start, &duration);
    v12 = *(DerivedStorage + 256);
    *&start.start.value = *(DerivedStorage + 240);
    *&start.start.epoch = v12;
    *&start.duration.timescale = *(DerivedStorage + 272);
    CMTimeRangeGetIntersection(&v49, &start, &otherRange);
    if (*DerivedStorage && (v13 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0 && (v14 = v13, v15 = *(*(DerivedStorage + 216) + 144), otherRange = v49, v16 = v15(v13, &otherRange), CFRelease(v14), v16))
    {
      v17 = 0;
    }

    else
    {
      v44 = CFErrorCreate(v8, @"FigAssetExportSession_ErrorDomain", -17390, 0);
      v17 = 1;
    }

    v10 = dictionaryRepresentation;
    if (dictionaryRepresentation)
    {
      goto LABEL_19;
    }
  }

  if (v17)
  {
LABEL_21:
    v18 = 0;
    value = 0;
    goto LABEL_32;
  }

LABEL_22:
  v20 = CFURLCopyPathExtension(*(DerivedStorage + 88));
  if (v20)
  {
    if (qword_1EAF1A9B0 != -1)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_2();
    }

    v21 = qword_1EAF1A9B8;
    v52.length = CFArrayGetCount(qword_1EAF1A9B8);
    v52.location = 0;
    if (CFArrayContainsValue(v21, v52, v20))
    {
      value = FigSignalErrorAtGM();
      v18 = 0;
LABEL_31:
      CFRelease(v20);
      goto LABEL_32;
    }
  }

  if (!figAssetExportSession_IsAssetPropertyAvailable(*(DerivedStorage + 16), @"assetProperty_FormatReader", &v44) || !figAssetExportSession_IsAssetPropertyAvailable(*(DerivedStorage + 16), @"assetProperty_Tracks", &v44))
  {
    goto LABEL_29;
  }

  v23 = *(DerivedStorage + 72);
  v24 = *(DerivedStorage + 16);
  v25 = *(DerivedStorage + 24);
  v26 = figAssetExportSession_actualOutputFileType(a1);
  if (!figAssetExportSession_IsExportPresetCompatibleWithAssetAndOutputFileType(v23, v24, v25, v26, *(DerivedStorage + 216)) && (*(DerivedStorage + 98) != 1 || !figAssetExportSession_sourceVideoContainsAV1(*(DerivedStorage + 16))))
  {
    value = FigSignalErrorAtGM();
LABEL_30:
    v18 = 0;
    if (!v20)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  figAssetExportSession_createFigRemakers_CopyError(a1, &cf, &v41, &v42);
  v44 = v27;
  if (v27)
  {
    goto LABEL_29;
  }

  v28 = v41;
  if (*(DerivedStorage + 96) && v41)
  {
    *(DerivedStorage + 97) = 1;
  }

  if (*(DerivedStorage + 388) && v28)
  {
    *(DerivedStorage + 389) = 1;
  }

  if (!*(DerivedStorage + 97))
  {
    if (*(DerivedStorage + 389) || cf)
    {
      goto LABEL_59;
    }

LABEL_29:
    value = 0;
    goto LABEL_30;
  }

  if (!(v28 | v42))
  {
    goto LABEL_29;
  }

LABEL_59:
  FigReadWriteLockLockForWrite();
  if (*(DerivedStorage + 48) != 1)
  {
    v18 = 0;
    goto LABEL_79;
  }

  v30 = v42;
  v29 = cf;
  *(DerivedStorage + 40) = cf;
  *(DerivedStorage + 112) = v28;
  *(DerivedStorage + 128) = v30;
  if (v28)
  {
    Count = CFArrayGetCount(v28);
    v29 = *(DerivedStorage + 40);
  }

  else
  {
    Count = 0;
  }

  *(DerivedStorage + 104) = Count;
  cf = 0;
  if (v29)
  {
    figAssetExportSession_addListeners(v29);
    value = FigRemakerStartOutput(*(DerivedStorage + 40));
    if (value)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_3();
    }

    v18 = 0;
    goto LABEL_80;
  }

  v32 = *(DerivedStorage + 112);
  if (!v32)
  {
    goto LABEL_74;
  }

  v33 = CFArrayGetCount(v32);
  if (v33 != *(DerivedStorage + 104))
  {
    figAssetExportSession_createRemakerAndBeginExport_cold_4(&v49);
    v18 = 0;
    value = v49.start.value;
    goto LABEL_80;
  }

  v34 = v33;
  if (v33 < 1)
  {
LABEL_74:
    v18 = 0;
    goto LABEL_75;
  }

  v35 = 0;
  v18 = 0;
  while (1)
  {
    v36 = *CFArrayGetValueAtIndex(*(DerivedStorage + 112), v35);
    if (v36)
    {
      break;
    }

LABEL_70:
    if (v34 == ++v35)
    {
      goto LABEL_75;
    }
  }

  v18 = figAssetExportSession_createRemakerAndBeginExport_cold_5(v36, a1, (DerivedStorage + 389), &v49);
  if (!v18)
  {
    v18 = 1;
    goto LABEL_70;
  }

  if (v18 != 1)
  {
    value = v49.start.value;
    goto LABEL_89;
  }

LABEL_75:
  v37 = *(DerivedStorage + 128);
  if (v37 && (v38 = *(v37 + 16)) != 0 && CFArrayGetCount(v38) && (v39 = *(DerivedStorage + 128), *(v39 + 48) != 4))
  {
    figAssetExportSession_addListeners(*v39);
    v40 = *(DerivedStorage + 128);
    *(v40 + 48) = 2;
    value = FigRemakerStartOutput(*v40);
    if (value)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_6();
    }

LABEL_89:
    v18 = 1;
  }

  else
  {
LABEL_79:
    value = 0;
  }

LABEL_80:
  FigReadWriteLockUnlockForWrite();
  if (v20)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    v22 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", value, 0);
    if (v22)
    {
      goto LABEL_36;
    }

LABEL_38:
    if (*(DerivedStorage + 389))
    {
      if (!v18)
      {
        figAssetExportSession_transitionToStatus(a1, 3u, 0);
      }
    }
  }

  else
  {
    v22 = v44;
    if (!v44)
    {
      goto LABEL_38;
    }

LABEL_36:
    figAssetExportSession_transitionToStatus(a1, 5u, v22);
    CFRelease(v22);
  }
}

void figAssetExportSession_completeExportAsynchronously(const void **a1, const void *a2)
{
  if (a2)
  {
    figAssetExportSession_transitionToStatus(*a1, 5u, a2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

__CFString *figAssetExportSession_GetFigFormatReaderFileFormat()
{
  if (FigCFEqual() || FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_QuickTimeMovie;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_MP4Family;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_3GPFamily;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_iTunesVideoFamily;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_iTunesAudioFamily;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_AppleImmersiveVideo;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_CAFAudioFile;
    return *v0;
  }

  if (FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_WAVEAudioFile;
    return *v0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v0 = kFigFormatWriterOption_FileFormat_AIFFAudioFile;
    return *v0;
  }

  if (FigCFEqual())
  {
    return @"AMRAudioFile";
  }

  else
  {
    return 0;
  }
}

uint64_t figAssetExportSession_IsAssetPropertyAvailable(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v19 = 0;
  cf = 0;
  value = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7 && !v7(CMBaseObject, a2, 0, &v19))
  {
    v8 = 1;
    goto LABEL_22;
  }

  FigSignalErrorAtGM();
  v17 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v9 || (v9(a1, a2, &v17 + 4, &v17, &cf), HIDWORD(v17) != 3))
  {
    v8 = 0;
    *a3 = cf;
    cf = 0;
    goto LABEL_22;
  }

  if (v17 == -12493)
  {
    v10 = -12493;
  }

  else
  {
    v10 = -16979;
  }

  FigSignalErrorAtGM();
  v11 = FigAssetGetCMBaseObject(a1);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, @"assetProperty_CreationURL", 0, &value);
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = Mutable;
  if (value)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E668], value);
  }

  if (!cf)
  {
    goto LABEL_18;
  }

  CFDictionaryAddValue(v8, *MEMORY[0x1E695E670], cf);
  v15 = cf;
  if (!cf || v17 == -12493)
  {
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_18:
    v15 = CFErrorCreate(v13, @"FigAssetExportSession_ErrorDomain", v10, v8);
  }

  *a3 = v15;
  cf = 0;
  if (v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

LABEL_22:
  if (value)
  {
    CFRelease(value);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t figAssetExportSession_sourceVideoContainsAV1(uint64_t a1)
{
  v11 = 0;
  v2 = 0;
  if (figAssetExportSession_hasVideoTrack(a1))
  {
    TypeID = FigRemakerGetTypeID();
    remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, a1, 0, 1, &v11);
    figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(a1, v11);
    v6 = v5;
    v7 = 0;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = CFArrayGetCount(v6); v7 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      v2 = 1;
      if (MediaSubType == 1635135537 || MediaSubType == 1902212657)
      {
        goto LABEL_12;
      }

      ++v7;
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }

    v2 = 0;
LABEL_12:
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v2;
}

CFArrayRef figAssetExportSession_UnsupportedOutputURLPathExtensionsOnce_Worker(CFArrayRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497CC0;
  v3[1] = *&off_1E7497CD0;
  v3[2] = xmmword_1E7497CE0;
  v4 = @"mpa";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 7, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_CanWriteMediaOfAsset(uint64_t a1, int a2, uint64_t a3, const __CFSet *a4)
{
  v27 = 0;
  theArray = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = *MEMORY[0x1E695E480];
  if (v9(CMBaseObject, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &v27))
  {
    goto LABEL_21;
  }

  v11 = FigAssetGetCMBaseObject(a1);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12 || v12(v11, @"assetProperty_Tracks", v10, &theArray))
  {
    goto LABEL_21;
  }

  if (!theArray)
  {
    v16 = 0;
    goto LABEL_24;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_21:
    v16 = 0;
  }

  else
  {
    v14 = Count;
    v15 = 0;
    v16 = 0;
    do
    {
      cf = 0;
      v25 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
      v18 = CFSetContainsValue(a4, ValueAtIndex);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v19)
      {
        v19(ValueAtIndex, &v25, 0);
      }

      v20 = v25;
      if (v25)
      {
        v21 = v27;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v22)
        {
          v22(v21, v20, &cf, 0);
        }
      }

      PassthroughExportPolicy = FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy(ValueAtIndex, a3, v18, a2, cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (PassthroughExportPolicy == 2)
      {
        v16 = 1;
      }

      else if (PassthroughExportPolicy == 1)
      {
        goto LABEL_21;
      }

      ++v15;
    }

    while (v14 != v15);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_24:
  if (v27)
  {
    CFRelease(v27);
  }

  return v16;
}

BOOL figAssetExportSession_firstFormatDescriptionIsLPCM(uint64_t a1)
{
  theArray = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v4 = theArray;
  if (v3 || (Count = CFArrayGetCount(theArray), v4 = theArray, !Count))
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_5;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v7 = CMFormatDescriptionGetMediaSubType(ValueAtIndex) == 1819304813;
  v4 = theArray;
  if (theArray)
  {
LABEL_5:
    CFRelease(v4);
  }

  return v7;
}

CFArrayRef figAssetExportSession_CreateUTTypesForAudioOnlyOnce(CFArrayRef *a1)
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.m4a-audio";
  v3[1] = @"com.apple.quicktime-audio";
  v3[2] = @"org.3gpp.adaptive-multi-rate-audio";
  v3[3] = @"com.microsoft.waveform-audio";
  v3[4] = @"public.aiff-audio";
  v3[5] = @"public.aifc-audio";
  v3[6] = @"com.apple.coreaudio-format";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 7, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession__editCursorServiceContainsEditsInTimeRange(uint64_t a1, uint64_t a2, int a3)
{
  v21 = 0;
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 0;
  }

  v19 = *&time1.start.value;
  *v20 = time1.start.epoch;
  v7 = v6(a1, &v19, &v21);
  v8 = v21;
  if (v7)
  {
    v11 = 0;
    if (!v21)
    {
      return v11;
    }

    goto LABEL_29;
  }

  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v9)
  {
    v10 = 0;
    while (!v9(v8, &v19))
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if ((BYTE12(v19) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (a3 == 2 && v10)
          {
            goto LABEL_32;
          }

          if (a3 == 3)
          {
            if ((v20[44] & 1) == 0)
            {
              goto LABEL_32;
            }

            v11 = 1;
            if ((v20[68] & 1) == 0 || *&v20[72] || (*&v20[56] & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }
          }
        }
      }

      else if ((BYTE12(v19) & 1) != 0 && (v20[20] & 1) != 0 && !*&v20[24] && (*&v20[8] & 0x8000000000000000) == 0)
      {
        *&time1.start.value = *&v20[8];
        time1.start.epoch = *&v20[24];
        time2 = *&v20[56];
        if (CMTimeCompare(&time1.start, &time2))
        {
LABEL_32:
          v11 = 1;
          goto LABEL_28;
        }
      }

      v12 = v21;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        if (!v13(v12, 1))
        {
          v14 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v14;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          time1 = *&v20[32];
          CMTimeRangeGetEnd(&v16, &time1);
          if (CMTimeCompare(&time2, &v16) > 0)
          {
            v19 = 0u;
            memset(v20, 0, sizeof(v20));
            v8 = v21;
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            --v10;
            if (v9)
            {
              continue;
            }
          }
        }
      }

      break;
    }
  }

  v11 = 0;
LABEL_28:
  v8 = v21;
  if (v21)
  {
LABEL_29:
    CFRelease(v8);
  }

  return v11;
}

uint64_t FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v24 = 0;
  theArray = 0;
  FigFormatReaderFileFormat = figAssetExportSession_GetFigFormatReaderFileFormat();
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10 || v10(a1, 0, &v24))
  {
LABEL_25:
    v12 = 1;
  }

  else
  {
    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
    v12 = 1;
    if (CFStringForOSTypeValue && FigFormatReaderFileFormat)
    {
      v13 = CFStringForOSTypeValue;
      if (qword_1EAF1A9D8 != -1)
      {
        FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy_cold_1(CFStringForOSTypeValue);
      }

      v14 = CFSetContainsValue(qword_1EAF1A9D0, v13);
      if (v14)
      {
        goto LABEL_8;
      }

      if (qword_1EAF1A9E8 != -1)
      {
        FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy_cold_2(v14);
      }

      if (CFSetContainsValue(qword_1EAF1A9E0, v13))
      {
        goto LABEL_26;
      }

      if (a4 == 1 && a5 && figAssetExportSession_HasEditSegmentData(a5, 3))
      {
        goto LABEL_8;
      }

      CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        return 0;
      }

      v16(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (!Count)
      {
        goto LABEL_8;
      }

      v18 = Count;
      if (Count >= 1)
      {
        v19 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
          MediaType = CMFormatDescriptionGetMediaType(ValueAtIndex);
          if (!FigRemakerCanFileTypeSupportMediaType(FigFormatReaderFileFormat, MediaType, a3))
          {
            break;
          }

          if (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1936684398)
          {
            if (!figAssetExportSession_IsPassthroughExportSupportedForAudioFormat(ValueAtIndex, FigFormatReaderFileFormat, a3, 0))
            {
              goto LABEL_25;
            }
          }

          else if (!FigRemakerCanFileTypeSupportFormatDescription(FigFormatReaderFileFormat, ValueAtIndex, a3))
          {
            goto LABEL_25;
          }

          ++v19;
          v12 = 2;
          if (v18 == v19)
          {
            goto LABEL_26;
          }
        }

LABEL_8:
        v12 = 0;
        goto LABEL_26;
      }

      v12 = 2;
    }
  }

LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

CFSetRef figAssetExportSession_MediaTypesToStripOnPassthroughExportWorkerOnce(CFSetRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1E7497CF8;
  v4 = @"hint";
  result = CFSetCreate(*MEMORY[0x1E695E480], &v3, 3, MEMORY[0x1E695E9F8]);
  *a1 = result;
  return result;
}

CFSetRef figAssetExportSession_MediaTypesToFailPassthroughExportWorkerOnce(CFSetRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[4] = xmmword_1E7497D50;
  v3[5] = *&off_1E7497D60;
  v3[6] = xmmword_1E7497D70;
  v4 = @"mpeg";
  v3[0] = xmmword_1E7497D10;
  v3[1] = *&off_1E7497D20;
  v3[2] = xmmword_1E7497D30;
  v3[3] = *&off_1E7497D40;
  result = CFSetCreate(*MEMORY[0x1E695E480], v3, 15, MEMORY[0x1E695E9F8]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_HasDecodableTrack(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  while (1)
  {
    v4 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v4)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    number = 0;
    valuePtr = 0;
    CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = v7(CMBaseObject, @"assetTrackProperty_MediaDecodingValidation", v3, &number);
      v9 = number;
      if (v8)
      {
        goto LABEL_10;
      }

      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        v9 = number;
LABEL_10:
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }

    ++v2;
    if (!valuePtr)
    {
      return 1;
    }
  }
}

CFArrayRef figAssetExportSession_CreateAudioOnlyPresetsOnce(CFArrayRef *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497D88;
  v3[1] = *&off_1E7497D98;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 4, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

CFArrayRef figAssetExportSession_CreateGetVideoOnlyPresetsOnce(CFArrayRef *a1)
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &kFigAssetExportSessionPresetAuxSmall, 1, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

CGFloat FigAssetExportSession_getUntransformedSourceDimension(uint64_t a1, uint64_t a2, CGSize *a3)
{
  size.width = 0.0;
  size.height = 0.0;
  if (a3)
  {
    size = a3[6];
  }

  else
  {
    v4 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
    if (v4)
    {
      v5 = v4;
      theArray = 0;
      v6 = *MEMORY[0x1E695E480];
      CMBaseObject = FigAssetTrackGetCMBaseObject(v4);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8 && (v8(CMBaseObject, @"FormatDescriptionArray", v6, &theArray), theArray) && CFArrayGetCount(theArray) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        size = CMVideoFormatDescriptionGetPresentationDimensions(ValueAtIndex, 1u, 0);
      }

      else
      {
        cf = 0;
        v10 = FigAssetTrackGetCMBaseObject(v5);
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          v11(v10, @"NaturalSize", v6, &cf);
          if (cf)
          {
            v12 = CFGetTypeID(cf);
            if (v12 == CFDictionaryGetTypeID())
            {
              CGSizeMakeWithDictionaryRepresentation(cf, &size);
              CFRelease(cf);
            }
          }
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      CFRelease(v5);
    }
  }

  return size.width;
}

uint64_t figAssetExportSession_hasVideoTrack(uint64_t a1)
{
  theArray = 0;
  v1 = *MEMORY[0x1E695E4C0];
  v16 = *MEMORY[0x1E695E4C0];
  v15 = 0;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    if (!v3(CMBaseObject, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
          v16 = v1;
          v15 = 0;
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v10 || v10(ValueAtIndex, 0, &v15))
          {
            break;
          }

          if (v15 == 1986618469)
          {
            v11 = FigAssetTrackGetCMBaseObject(ValueAtIndex);
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v12 || v12(v11, @"IsEnabled", v4, &v16))
            {
              break;
            }

            if (v16 == v8)
            {
              v13 = 1;
              goto LABEL_14;
            }
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  v13 = 0;
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v13;
}

uint64_t figAssetExportSession_canPassThroughVideo(uint64_t a1, const __CFDictionary *a2, const void *a3, uint64_t a4, int a5, int a6)
{
  v103[0] = 0;
  v102 = 0.0;
  v100 = 0;
  v101 = 0;
  v12 = *MEMORY[0x1E695E4C0];
  v98 = 0;
  v99 = v12;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(keyExistsAndHasValidFormat.a) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disable_passthrough_export", @"com.apple.avfoundation", &keyExistsAndHasValidFormat);
  if (LOBYTE(keyExistsAndHasValidFormat.a))
  {
    v15 = 0;
    if (AppBooleanValue)
    {
      return v15;
    }
  }

  if (!a2 || !CFDictionaryGetValue(a2, @"videoCodec"))
  {
    v49 = *(DerivedStorage + 16);
    v50 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v50)
    {
      v50(v49, 1986618469, &v101);
    }

    if (v101)
    {
      Count = CFArrayGetCount(v101);
      if (Count >= 1)
      {
        v52 = Count;
        v53 = 0;
        v54 = *MEMORY[0x1E695E480];
        v55 = *MEMORY[0x1E695E4D0];
        do
        {
          v56 = v100;
          ValueAtIndex = CFArrayGetValueAtIndex(v101, v53);
          v100 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v56)
          {
            CFRelease(v56);
          }

          v99 = v12;
          CMBaseObject = FigAssetTrackGetCMBaseObject(v100);
          v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v59)
          {
            v59(CMBaseObject, @"IsEnabled", v54, &v99);
          }

          if (!a5 || v99 == v55)
          {
            v60 = FigAssetTrackGetCMBaseObject(v100);
            v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v61)
            {
              v61(v60, @"FormatDescriptionArray", v54, &v98);
            }

            if (v98)
            {
              v62 = CFArrayGetCount(v98);
              if (v62 >= 1)
              {
                v63 = v62;
                for (i = 0; i != v63; ++i)
                {
                  v65 = CFArrayGetValueAtIndex(v98, i);
                  if (FigRemakerIsFormatDescriptionProtected(v65))
                  {
                    v15 = 0;
                    goto LABEL_119;
                  }
                }
              }

              if (v98)
              {
                CFRelease(v98);
                v98 = 0;
              }
            }
          }

          ++v53;
        }

        while (v53 != v52);
      }
    }

LABEL_113:
    v15 = 1;
    goto LABEL_119;
  }

  theArray = CFDictionaryGetValue(a2, @"applicableVideoCodecs");
  UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*(DerivedStorage + 16), a4, *(DerivedStorage + 216));
  v18 = v17;
  if (v101)
  {
    CFRelease(v101);
    v101 = 0;
  }

  v19 = *(DerivedStorage + 16);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(v19, 1986618469, &v101);
  }

  if (!v101)
  {
    goto LABEL_113;
  }

  v21 = CFArrayGetCount(v101);
  if (v21 < 1)
  {
    goto LABEL_113;
  }

  v22 = v21;
  v82 = v21 - 1;
  v81 = a3;
  v92 = a5;
  v89 = 0;
  v23 = 0;
  v90 = *MEMORY[0x1E695E480];
  v91 = *MEMORY[0x1E695E4D0];
  v86 = *MEMORY[0x1E6965F30];
  extensionKey = *MEMORY[0x1E6965E50];
  v24 = 0.0;
  v25 = 1;
  do
  {
    while (1)
    {
      if (v100)
      {
        CFRelease(v100);
        v100 = 0;
      }

      if (a6)
      {
        v26 = CFArrayGetValueAtIndex(v101, v23);
        v100 = v26;
        if (!v26)
        {
          break;
        }

        CFRetain(v26);
      }

      else
      {
        v27 = *(DerivedStorage + 16);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v28)
        {
          v28(v27, a4, &v100);
        }
      }

      if (!v100)
      {
        break;
      }

      v99 = v12;
      v29 = FigAssetTrackGetCMBaseObject(v100);
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30)
      {
        v30(v29, @"IsEnabled", v90, &v99);
      }

      if (v92 && v99 != v91)
      {
        break;
      }

      v31 = FigAssetTrackGetCMBaseObject(v100);
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v32(v31, @"FormatDescriptionArray", v90, &v98);
      }

      v97 = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v96 = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (v98)
      {
        v79 = a1;
        v80 = a4;
        v83 = CFArrayGetCount(v98);
        if (v83 >= 1)
        {
          v33 = 0;
          theDict = a2;
          do
          {
            v34 = CFArrayGetValueAtIndex(v98, v33);
            MediaSubType = CMFormatDescriptionGetMediaSubType(v34);
            cf = CMFormatDescriptionGetExtension(v34, extensionKey);
            Extension = v89;
            if (!v89)
            {
              CMFormatDescriptionGetExtension(v34, v86);
              if (FigCFEqual() || FigCFEqual())
              {
                Extension = CMFormatDescriptionGetExtension(v34, v86);
                if (Extension)
                {
                  Extension = CFRetain(Extension);
                }
              }

              else
              {
                Extension = 0;
              }
            }

            a2 = theDict;
            if (!MediaSubType)
            {
              goto LABEL_144;
            }

            v89 = Extension;
            if (theArray)
            {
              v37 = CFArrayGetCount(theArray);
              SInt32 = FigCFNumberCreateSInt32();
              v103[0] = SInt32;
              if (SInt32)
              {
                v104.location = 0;
                v104.length = v37;
                if (!CFArrayContainsValue(theArray, v104, SInt32))
                {
                  CFRelease(v103[0]);
                  goto LABEL_143;
                }

                if (v103[0])
                {
                  CFRelease(v103[0]);
                  v103[0] = 0;
                }
              }
            }

            else
            {
              LODWORD(keyExistsAndHasValidFormat.a) = 0;
              FigCFDictionaryGetIntIfPresent();
              v39 = FigVideoFormatDescriptionContainsAlphaChannel();
              v40 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
              if (MediaSubType != LODWORD(keyExistsAndHasValidFormat.a) || (v41 = v40, FigRemakerIsFormatDescriptionProtected(v34)) || (v39 != 0) != (v97 != 0) || (v41 != 0) != (v96 != 0))
              {
                a2 = theDict;
LABEL_143:
                Extension = v89;
LABEL_144:
                v15 = 0;
                v72 = 1;
                v68 = 0.0;
                a4 = v80;
                goto LABEL_164;
              }

              if (cf)
              {
                v42 = CFGetTypeID(cf);
                if (v42 == CFNumberGetTypeID())
                {
                  LODWORD(valuePtr.a) = 0;
                  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
                  if (SLODWORD(valuePtr.a) > 1)
                  {
                    a2 = theDict;
                    a4 = v80;
                    goto LABEL_162;
                  }
                }
              }

              a2 = theDict;
            }

            ++v33;
          }

          while (v83 != v33);
        }

        if (v98)
        {
          CFRelease(v98);
          v98 = 0;
        }

        a4 = v80;
        a1 = v79;
      }

      if (FigCFDictionaryGetFloatIfPresent())
      {
        if (UntransformedSourceDimension > v102)
        {
          goto LABEL_162;
        }
      }

      else if (FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension != v102)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension < v102)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent())
      {
        if (v18 > v102)
        {
          goto LABEL_162;
        }
      }

      else if (FigCFDictionaryGetFloatIfPresent() && v18 != v102)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent() && v18 < v102)
      {
        goto LABEL_162;
      }

      if (CFDictionaryGetValue(a2, @"videoMatrixHandling") && FigCFEqual())
      {
        memset(&keyExistsAndHasValidFormat, 0, sizeof(keyExistsAndHasValidFormat));
        v94 = 0;
        v43 = FigAssetTrackGetCMBaseObject(v100);
        v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v44)
        {
          v44(v43, @"PreferredTransform", v90, &v94);
        }

        if (v94)
        {
          v45 = CFGetTypeID(v94);
          if (v45 == CFArrayGetTypeID())
          {
            FigGetCGAffineTransformFrom3x3MatrixArray(v94, &keyExistsAndHasValidFormat);
          }

          if (v94)
          {
            CFRelease(v94);
          }
        }

        valuePtr = keyExistsAndHasValidFormat;
        if (!CGAffineTransformIsIdentity(&valuePtr))
        {
LABEL_162:
          v15 = 0;
          v72 = 1;
          v68 = 0.0;
          goto LABEL_163;
        }
      }

      v102 = 0.0;
      v46 = FigAssetTrackGetCMBaseObject(v100);
      v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v47)
      {
        v47(v46, @"EstimatedDataRate", v90, v103);
      }

      if (v103[0])
      {
        v48 = CFGetTypeID(v103[0]);
        if (v48 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v103[0], kCFNumberFloatType, &v102);
          v102 = v102 * 8.0;
        }

        if (v103[0])
        {
          CFRelease(v103[0]);
          v103[0] = 0;
        }
      }

      v24 = v24 + v102;
      if (a6)
      {
        v25 = 0;
        v71 = v82 == v23++;
        if (!v71)
        {
          continue;
        }
      }

      goto LABEL_127;
    }

    ++v23;
  }

  while (v22 != v23);
  if (v25)
  {
    v15 = 1;
    Extension = v89;
    goto LABEL_117;
  }

LABEL_127:
  figAssetExportSession_getSourceVideoFrameRate();
  v68 = v67;
  if (v67 == 0.0 || FigCFEqual() && !figAssetExportSession_canPerformFastFrameRateConversionWithPreset(a1, a2, v81))
  {
LABEL_171:
    v15 = 0;
    v72 = 1;
    goto LABEL_163;
  }

  v69 = v68;
  if (FigCFDictionaryGetFloatIfPresent())
  {
    if (v68 > v102)
    {
      goto LABEL_171;
    }
  }

  else if ((*(DerivedStorage + 300) & 0x1D) == 1)
  {
    *&keyExistsAndHasValidFormat.a = *(DerivedStorage + 288);
    keyExistsAndHasValidFormat.c = *(DerivedStorage + 304);
    if (1.0 / CMTimeGetSeconds(&keyExistsAndHasValidFormat) < v69)
    {
      goto LABEL_171;
    }
  }

  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v15 = 0;
  v71 = v68 >= v102 || FloatIfPresent == 0;
  v72 = 1;
  if (v71 && v24 != 0.0)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      v73 = v102;
LABEL_147:
      if (v24 > v73)
      {
        goto LABEL_171;
      }
    }

    else if (CFDictionaryGetValue(a2, @"videoAverageBitRate"))
    {
      FigAssetExportSessionGetAverageVideoBitRateForSourceAndPresetAndTransferFunction(UntransformedSourceDimension, v18, v68, a1, a4, a2);
      v73 = v74 * 1.2;
      goto LABEL_147;
    }

    if (FigCFDictionaryGetFloatIfPresent() && v24 < v102 || FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension * v18 >= v102 || FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension * v18 * v69 >= v102)
    {
      goto LABEL_171;
    }

    LODWORD(keyExistsAndHasValidFormat.a) = 0;
    if (FigCFDictionaryGetInt32IfPresent())
    {
      v75 = LODWORD(keyExistsAndHasValidFormat.a) == 0;
    }

    else
    {
      v75 = 1;
    }

    v72 = !v75;
    v15 = v72 ^ 1u;
  }

LABEL_163:
  Extension = v89;
LABEL_164:
  if (v72 && v24 != 0.0)
  {
    v76 = Extension;
    if (CFDictionaryGetValue(a2, @"videoAverageBitRate"))
    {
      v77 = CMBaseObjectGetDerivedStorage();
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*(v77 + 16), a4, *(v77 + 72), a2, UntransformedSourceDimension, v18, v68);
      if ((v24 + v24) < v78)
      {
        v102 = v24 + v24;
        FigCFDictionarySetFloat();
      }
    }

    Extension = v76;
  }

LABEL_117:
  if (Extension)
  {
    CFRelease(Extension);
  }

LABEL_119:
  if (v98)
  {
    CFRelease(v98);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  return v15;
}

BOOL figAssetExportSession_canPassThroughAudio(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v86 = 0;
  v84 = 0;
  v85 = 0;
  theArray = 0;
  v73 = *MEMORY[0x1E695E4C0];
  key = 0;
  v82 = v73;
  cf = 0;
  v80 = 0;
  valuePtr = 0.0;
  v76 = 0;
  v77 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disable_passthrough_export", @"com.apple.avfoundation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v7 = 0;
    if (AppBooleanValue)
    {
      return v7;
    }
  }

  v8 = *MEMORY[0x1E695E480];
  CMBaseObject = FigAssetGetCMBaseObject(*(DerivedStorage + 16));
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, @"assetProperty_Tracks", v8, &theArray);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v12 = Count;
    v13 = Count > 0;
    if (*(DerivedStorage + 208) && Count >= 1)
    {
      v71 = a1;
      v14 = 0;
      v15 = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
        v82 = v73;
        HIDWORD(key) = 0;
        v17 = FigAssetTrackGetCMBaseObject(ValueAtIndex);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"IsEnabled", v8, &v82);
        }

        v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v19)
        {
          v19(ValueAtIndex, &key, &key + 4);
        }

        if ((!a3 || v82 == v15) && HIDWORD(key) == 1936684398)
        {
          v20 = CFDictionaryGetValue(*(DerivedStorage + 208), key);
          if (v20)
          {
            v21 = v20;
            v22 = v20[3];
            if (v22)
            {
              if (CFArrayGetCount(v22) > 0)
              {
                goto LABEL_112;
              }
            }

            if (v21[2] || v21[1])
            {
              goto LABEL_112;
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v13 = 1;
      a1 = v71;
    }

    if (!a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  if (CFDictionaryGetValue(a2, @"audioPreset"))
  {
    v23 = CFDictionaryGetValue(a2, @"audioPreset");
    if (FigAudioCompressionOptionsGetPreset(v23, &v86, 0, 0, &v85))
    {
      goto LABEL_112;
    }

    v24 = CFDictionaryGetValue(a2, @"applicableAudioCodecs");
    if (!FigCFDictionaryGetFloatIfPresent())
    {
      FigCFDictionaryGetFloatIfPresent();
      v25 = *(&v84 + 1);
      if (*(&v84 + 1) == 0.0)
      {
        v26 = *(v86 + 20);
        if (v26)
        {
          *&v27 = v26;
          LODWORD(v27) = *(v86 + 16);
          v25 = *v86 / v26 * v27 * 8.0;
        }
      }

      v28 = v25 * 1.2;
      *(&v84 + 1) = v28;
    }

    FigCFDictionaryGetFloatIfPresent();
    if (qword_1EAF1A9C8 != -1)
    {
      figAssetExportSession_canPassThroughAudio_cold_1();
    }

    v29 = qword_1EAF1A9C0;
    if (qword_1EAF1A9C0)
    {
      v30 = CFArrayGetCount(qword_1EAF1A9C0);
    }

    else
    {
      v30 = 0;
    }

    value = 0;
    FigAssetExportSessionCopyProperty(a1, @"kFigAssetExportSessionProperty_OutputFileType", v8, &value);
    v43 = value;
    v44 = 1;
    if (v29 && value)
    {
      v88.location = 0;
      v88.length = v30;
      v44 = CFArrayContainsValue(v29, v88, value) == 0;
      v43 = value;
    }

    if (v43)
    {
      CFRelease(v43);
    }

    v45 = FigAssetGetCMBaseObject(*(DerivedStorage + 16));
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v46)
    {
      goto LABEL_112;
    }

    v7 = v46(v45, @"assetProperty_FormatReader", v8, &v76) == 0;
    if (!v7 || !v13)
    {
      goto LABEL_113;
    }

    v47 = 0;
    v48 = 0;
    v72 = *MEMORY[0x1E695E4D0];
    v49 = 0.0;
    do
    {
      v50 = CFArrayGetValueAtIndex(theArray, v48);
      key = 0;
      v82 = v73;
      v51 = FigAssetTrackGetCMBaseObject(v50);
      v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v52)
      {
        v52(v51, @"IsEnabled", v8, &v82);
      }

      v53 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v53)
      {
        v53(v50, &key, &key + 4);
      }

      if ((!a3 || v82 == v72) && HIDWORD(key) == 1936684398)
      {
        v54 = v76;
        v55 = key;
        v56 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v56 || v56(v54, v55, &v77, 0) || !v44 && figAssetExportSession_HasEditSegmentData(v77, 2) || figAssetExportSession_HasEditSegmentData(v77, 0))
        {
          goto LABEL_112;
        }

        v57 = FigAssetTrackGetCMBaseObject(v50);
        v58 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v58)
        {
          v58(v57, @"FormatDescriptionArray", v8, &v80);
        }

        if (v80)
        {
          v59 = CFArrayGetCount(v80);
          if (v59 >= 1)
          {
            v60 = v59;
            for (i = 0; i != v60; ++i)
            {
              v62 = CFArrayGetValueAtIndex(v80, i);
              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v62);
              mFormatID = StreamBasicDescription->mFormatID;
              if (!mFormatID)
              {
                goto LABEL_112;
              }

              if (v24)
              {
                v65 = CFArrayGetCount(v24);
                SInt32 = FigCFNumberCreateSInt32();
                cf = SInt32;
                if (SInt32)
                {
                  v89.location = 0;
                  v89.length = v65;
                  if (!CFArrayContainsValue(v24, v89, SInt32))
                  {
                    CFRelease(cf);
                    goto LABEL_112;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }
                }
              }

              else
              {
                if (mFormatID != *(v86 + 8))
                {
                  goto LABEL_112;
                }

                v67 = *(v86 + 28);
                if (v67)
                {
                  if (StreamBasicDescription->mChannelsPerFrame > v67)
                  {
                    goto LABEL_112;
                  }
                }

                if (FigRemakerIsFormatDescriptionProtected(v62))
                {
                  goto LABEL_112;
                }
              }
            }
          }

          if (v80)
          {
            CFRelease(v80);
            v80 = 0;
          }
        }

        valuePtr = 0.0;
        v68 = FigAssetTrackGetCMBaseObject(v50);
        v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v69)
        {
          v69(v68, @"EstimatedDataRate", v8, &cf);
        }

        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
          valuePtr = valuePtr * 8.0;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }

        v49 = v49 + valuePtr;
        if (v77)
        {
          CFRelease(v77);
          v77 = 0;
        }

        v47 = 1;
      }

      ++v48;
    }

    while (v48 != v12);
    if (v47)
    {
      v7 = 0;
      if (v49 != 0.0 && v49 <= *(&v84 + 1))
      {
        v7 = v49 >= *&v84 || *&v84 == 0.0;
      }

      goto LABEL_113;
    }

LABEL_56:
    v7 = 1;
    goto LABEL_113;
  }

LABEL_37:
  if (!v13)
  {
    goto LABEL_56;
  }

  v31 = 0;
  v32 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    v33 = CFArrayGetValueAtIndex(theArray, v31);
    v82 = v73;
    HIDWORD(key) = 0;
    v34 = FigAssetTrackGetCMBaseObject(v33);
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v35)
    {
      v35(v34, @"IsEnabled", v8, &v82);
    }

    v36 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v36)
    {
      v36(v33, 0, &key + 4);
    }

    if (a3 && v82 != v32 || HIDWORD(key) != 1936684398)
    {
      goto LABEL_55;
    }

    v37 = FigAssetTrackGetCMBaseObject(v33);
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v38)
    {
      v38(v37, @"FormatDescriptionArray", v8, &v80);
    }

    if (!v80)
    {
      goto LABEL_55;
    }

    v39 = CFArrayGetCount(v80);
    if (v39 >= 1)
    {
      break;
    }

LABEL_53:
    if (v80)
    {
      CFRelease(v80);
      v80 = 0;
    }

LABEL_55:
    if (++v31 == v12)
    {
      goto LABEL_56;
    }
  }

  v40 = v39;
  v41 = 0;
  while (1)
  {
    v42 = CFArrayGetValueAtIndex(v80, v41);
    if (FigRemakerIsFormatDescriptionProtected(v42))
    {
      break;
    }

    if (v40 == ++v41)
    {
      goto LABEL_53;
    }
  }

LABEL_112:
  v7 = 0;
LABEL_113:
  if (v77)
  {
    CFRelease(v77);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  return v7;
}

uint64_t figAssetExportSession_totalSizeOfTracksIsWithinFileLengthLimit(uint64_t a1, CFArrayRef theArray, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"maxFileSize");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    }
  }

  if (*(a1 + 360))
  {
    valuePtr = *(a1 + 360);
    if (!theArray)
    {
      return 1;
    }
  }

  else
  {
    if (valuePtr)
    {
      v6 = theArray == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 1;
    }
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 1;
  }

  v8 = Count;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    number = 0;
    v17 = 0;
    CMBaseObject = FigAssetTrackGetCMBaseObject(ValueAtIndex);
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(CMBaseObject, @"TotalSampleDataLength", v11, &number);
    }

    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v17);
      CFRelease(number);
    }

    v10 += v17;
    if (v10 > valuePtr)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 1;
    }
  }

  return 0;
}

const void *figAssetExportSession_isAudioMixdownRequired(const void *result, CFErrorRef *a2)
{
  if (result)
  {
    v5 = 0;
    Preset = FigAudioCompressionOptionsGetPreset(result, &v5, 0, 0, 0);
    if (Preset)
    {
      if (a2)
      {
        v4 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", Preset, 0);
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
      return (*(v5 + 28) != 0);
    }
  }

  return result;
}

uint64_t FigRemakerGetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

__CFDictionary *figAssetExportSession_createVideoEncoderSpecification(const void *a1, const __CFDictionary *a2, const void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"usageMode");
    if (Value)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983880], Value);
    }
  }

  if (a1)
  {
    v9 = Mutable;
    v10 = a1;
  }

  else
  {
    v10 = *MEMORY[0x1E695E4D0];
    v9 = Mutable;
  }

  CFDictionaryAddValue(v9, *MEMORY[0x1E6984270], v10);
  if (a3)
  {
    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v11, *MEMORY[0x1E69837D0], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6984298], v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return Mutable;
}

void figAssetExportSession_applyFileSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 360))
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      v5 = SInt64;
      FigBaseObject = FigRemakerGetFigBaseObject(a3);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(FigBaseObject, @"Remaker_MaxFileSize", v5);
      }

      CFRelease(v5);
    }
  }

  else
  {
    FigCFDictionaryGetInt64IfPresent();
  }
}

BOOL figAssetExportSession_isAlternateTrack(uint64_t a1)
{
  cf = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, @"AlternateGroupID", *MEMORY[0x1E695E480], &cf);
  }

  UInt64 = FigCFNumberGetUInt64();
  if (cf)
  {
    CFRelease(cf);
  }

  return UInt64 != 0;
}

uint64_t figAssetExportSession_handleAudioAlternateTrack(int a1, uint64_t a2)
{
  cf = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigAssetTrackGetCMBaseObject(a2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, @"IsEnabled", *MEMORY[0x1E695E480], &cf);
  }

  v9 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v6)
  {
    v6(a2, &v9, 0);
  }

  if (a1 == 1)
  {
    FigCFArrayAppendInt32();
    v7 = 0;
  }

  else
  {
    v7 = FigSignalErrorAtGM();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigRemakerAddAudioMixdownTrackWithPreset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigRemakerAddVideoCompositionTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v29)
  {
    return 4294954514;
  }

  v31 = *a11;
  v32 = *(a11 + 2);
  return v29(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0, 0, &v31, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t FigRemakerSetFormatWriterTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 40);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigRemakerAddPassthroughTrackWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

BOOL figAssetExportSession_useConstantQualityModeForPreset()
{
  if (!*(CMBaseObjectGetDerivedStorage() + 72))
  {
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 1;
  }

  return FigCFEqual() != 0;
}

uint64_t figAssetExportSession_isConstantQualityEnabledOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

_DWORD *FAES_TrackMappingRetain(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  v4 = *(a2 + 8);
  *result = *a2;
  result[2] = v4;
  return result;
}

void FAES_TrackMappingRelease(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFStringRef FAES_TrackMappingCopyDescription(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "source trackID = %d, intermediate trackID = %d, mediaType = %c%c%c%c", *a1, a1[1], HIBYTE(a1[2]), BYTE2(a1[2]), BYTE1(a1[2]), a1[2]);
  v1 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v1, __str, SystemEncoding);
}

CFDictionaryRef figAssetExportSession_CopyEffectiveColorProperties(uint64_t a1, const __CFDictionary *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(DerivedStorage + 216))
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  v7 = FigExportSettings_CopyEffectiveColorPropertyForPresetAndInputOutputFormat(a2, a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t figAssetExportSession_constantQualityOverrideOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_vbvMaxRatePercentChangeOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  if ((result - 100) >= 0xFFFFFF39)
  {
    *a1 = result;
  }

  return result;
}

uint64_t figAssetExportSession_CRFModeEnabledOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_lookAheadOverrideOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

void *FAES_SegmentRetain(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = malloc_type_malloc(0x38uLL, 0x100004021716A34uLL);
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  result[6] = *(a2 + 6);
  *(result + 1) = v5;
  *(result + 2) = v4;
  *result = v6;
  return result;
}

void FAES_SegmentRelease(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFStringRef FAES_SegmentCopyDescription(CMTime *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  if (a1->epoch)
  {
    time = *a1;
    CMTimeGetSeconds(&time);
    time = a1[1];
    CMTimeGetSeconds(&time);
    snprintf(__str, 0x80uLL, "pts=%1.3f (%lld), dur=%1.3f, #f=%ld");
  }

  else
  {
    time = *a1;
    CMTimeGetSeconds(&time);
    time = a1[1];
    CMTimeGetSeconds(&time);
    snprintf(__str, 0x80uLL, "pts=%1.3f, dur=%1.3f, #f=%ld");
  }

  v2 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v2, __str, SystemEncoding);
}

char *FAES_RemakerConfigRetain(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x38uLL, 0x106004012191893uLL);
  v4 = *a2;
  if (*a2)
  {
    v4 = CFRetain(v4);
  }

  *v3 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 1) = v5;
  *(v3 + 12) = *(a2 + 48);
  v6 = *(a2 + 16);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v3 + 2) = v6;
  v7 = *(a2 + 24);
  *(v3 + 5) = *(a2 + 40);
  *(v3 + 24) = v7;
  return v3;
}

CFStringRef FAES_RemakerConfigCopyDescription(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
  }

  else
  {
    Count = 0;
  }

  snprintf(__str, 0x100uLL, "remaker = %p, URL = %p, status = %d, trackArray = %p, trackArrayCnt = %ld", v1, v2, v3, v4, Count);
  v6 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v6, __str, SystemEncoding);
}

CFArrayRef figAssetExportSession_CreateTemporalMetadataPresetDenyListOnce(CFArrayRef *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497DA8;
  v3[1] = *&off_1E7497DB8;
  v3[2] = xmmword_1E7497DC8;
  v3[3] = *off_1E7497DD8;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 8, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t RegisterFigAssetExportSessionClassOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double figAssetExportSessionVideoCompositionInit(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figAssetExportSessionVideoCompositionFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[23];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[24];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[25];
  if (v14)
  {

    CFRelease(v14);
  }
}

void FigAssetExportSessionTaskExecuteAndComplete(uint64_t a1)
{
  cf = 0;
  if (FigAtomicCompareAndSwap32())
  {
    (*(a1 + 32))(*(a1 + 48), &cf);
    (*(a1 + 40))(*(a1 + 48), cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigAssetExportSessionTaskExecuteAndComplete_cold_1();
  }
}

uint64_t FigAssetExportSessionTaskCompleteWithError(uint64_t a1, uint64_t a2)
{
  if (!FigAtomicCompareAndSwap32())
  {
    return FigAssetExportSessionTaskCompleteWithError_cold_1();
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);

  return v5(v4, a2);
}

const __CFDictionary *FigAssetExportSession_actualSettingForPreset(uint64_t a1, uint64_t a2, _OWORD *a3, CGSize *a4, __CFString *a5, uint64_t a6)
{
  if (FigCFEqual() || FigCFEqual())
  {
    v40 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
    if (figAssetExportSession_trackContainsStereoVideo(v40))
    {
      a5 = @"AVAssetExportPresetHighestQuality";
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  v12 = FigExportSettingsForExportPreset(a5);
  v13 = v12;
  if (v12)
  {
    Value = CFDictionaryGetValue(v12, @"mediaTiers");
    if (Value)
    {
      v15 = Value;
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a4);
      v18 = v17;
      if (a6)
      {
        v19 = ((a6 - 30720) * 0.99);
      }

      else
      {
        v19 = 9.1311384e18;
      }

      memset(&v47, 0, sizeof(v47));
      figAssetExportSession_getAssetDuration(a1, &v47);
      memset(&v46, 0, sizeof(v46));
      *&start.start.value = *MEMORY[0x1E6960CC0];
      start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      duration = v47;
      CMTimeRangeMake(&otherRange, &start.start, &duration);
      v20 = a3[1];
      *&start.start.value = *a3;
      *&start.start.epoch = v20;
      *&start.duration.timescale = a3[2];
      CMTimeRangeGetIntersection(&v46, &start, &otherRange);
      v21 = FigCFEqual();
      Count = CFArrayGetCount(v15);
      if (Count >= 1)
      {
        v23 = Count;
        v41 = 0;
        v42 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v27 = 0.0;
        v28 = 0.0;
        while (1)
        {
          v29 = v15;
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v24);
          v31 = CFDictionaryGetValue(ValueAtIndex, @"Video");
          v32 = CFDictionaryGetValue(ValueAtIndex, @"Audio");
          v33 = 0;
          if (v31 && !v21)
          {
            otherRange.start.value = 0;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              v33 = otherRange.start.value / 8;
            }

            else
            {
              v33 = otherRange.start.value;
            }
          }

          if (FigCFEqual())
          {
            v33 = (v33 * 1.6);
          }

          if (v32)
          {
            v34 = figAssetExportSession_computeAudioTrackByteRate(v32, 0);
          }

          else
          {
            v34 = 0;
          }

          v35 = v34 + v33;
          otherRange.start = v46.duration;
          if (CMTimeGetSeconds(&otherRange.start) * (v34 + v33) > v19)
          {
            goto LABEL_35;
          }

          if (v21)
          {
            if (v35 <= v41)
            {
              v36 = v41;
            }

            else
            {
              v36 = v35;
            }

            v37 = v42;
            if (v35 > v41)
            {
              v37 = ValueAtIndex;
            }

            v41 = v36;
            v42 = v37;
            goto LABEL_35;
          }

          otherRange.start.value = 0;
          *&otherRange.start.timescale = 0;
          FigCFDictionaryGetCGFloatIfPresent();
          FigCFDictionaryGetCGFloatIfPresent();
          if (v42)
          {
            if (*&otherRange.start.value < UntransformedSourceDimension)
            {
              goto LABEL_35;
            }

            v38 = *&otherRange.start.timescale;
            if (*&otherRange.start.timescale < v18 || *&otherRange.start.value >= v27 || *&otherRange.start.timescale >= v28)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v38 = *&otherRange.start.timescale;
          }

          v28 = v38;
          v27 = *&otherRange.start.value;
          v42 = ValueAtIndex;
LABEL_35:
          if (v35 < v26)
          {
            v25 = ValueAtIndex;
            v26 = v35;
          }

          ++v24;
          v15 = v29;
          if (v23 == v24)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = 0;
      v42 = 0;
LABEL_41:
      if (v42)
      {
        return v42;
      }

      else
      {
        return v25;
      }
    }
  }

  return v13;
}

uint64_t figAssetExportSession_trackContainsStereoVideo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  CMBaseObject = FigAssetTrackGetCMBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    goto LABEL_8;
  }

  v2(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v5);
      if (FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    v6 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v6 = 0;
LABEL_9:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

__n128 figAssetExportSession_getAssetDuration@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  dictionaryRepresentation = 0;
  v3 = MEMORY[0x1E6960CC0];
  v10 = *MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  v4 = *(v3 + 16);
  a2->epoch = v4;
  CMBaseObject = FigAssetGetCMBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v8 = v6(CMBaseObject, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
    v9 = dictionaryRepresentation;
    if (!v8)
    {
      if (!dictionaryRepresentation)
      {
        result = v10;
        *&a2->value = v10;
        a2->epoch = v4;
        return result;
      }

      CMTimeMakeFromDictionary(a2, dictionaryRepresentation);
      v9 = dictionaryRepresentation;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return result;
}

uint64_t figAssetExportSession_computeVideoTrackByteRate(uint64_t a1, int a2)
{
  if (a2)
  {
    FigCFDictionaryGetInt64IfPresent();
  }

  if (FigCFDictionaryGetInt64IfPresent())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

dispatch_queue_t figAssetExportSession_CreateAsynchronousConcurrentDispatchQueueOnce(dispatch_queue_t *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  result = dispatch_queue_create("com.apple.MediaToolbox.FigAssetExportSession.Concurrent", MEMORY[0x1E69E96A8]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSessionTask_RegisterOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetExportSessionTaskID = result;
  return result;
}

double figAssetExportSessionTask_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figAssetExportSessionTask_Finalize(void *a1)
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

  v4 = a1[6];

  free(v4);
}

void figAssetExportSession_runTaskAfterLoadingRequiredAssetPropertiesDispatched(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v10 = 0;
  v3 = *(DerivedStorage + 16);
  v4 = a1[3];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_8;
  }

  v6 = v5(v3, v4, &v11, &v10);
  if (v6)
  {
LABEL_8:
    CFError = figAssetExportSession_createCFError(v6, "Failed to FigAssetLoadValuesAsyncForProperties.");
    FigAssetExportSessionTaskCompleteWithError(a1, CFError);
    if (!CFError)
    {
      goto LABEL_11;
    }

    v8 = CFError;
    goto LABEL_10;
  }

  if (!v11)
  {
    SInt32 = FigCFNumberCreateSInt32();
    CFDictionarySetValue(*(DerivedStorage + 400), SInt32, a1);
    if (!SInt32)
    {
      goto LABEL_11;
    }

    v8 = SInt32;
LABEL_10:
    CFRelease(v8);
    goto LABEL_11;
  }

  FigAssetExportSessionTaskExecuteAndComplete(a1);
LABEL_11:
  CFRelease(a1);
}

CFTypeRef figAssetExportSession_copySourceTransferFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (a3)
  {
    v3 = *(a3 + 128);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    goto LABEL_6;
  }

  v7 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v5 = v7;
  CMBaseObject = FigAssetTrackGetCMBaseObject(v7);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9 || v9(CMBaseObject, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_19;
  }

  if (!cf)
  {
    v4 = 0;
LABEL_9:
    CFRelease(v5);
    return v4;
  }

  if (CFArrayGetCount(cf) < 1)
  {
    goto LABEL_19;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  Extension = CMFormatDescriptionGetExtension(ValueAtIndex, *MEMORY[0x1E6965F30]);
  v4 = Extension;
  if (!Extension)
  {
    goto LABEL_6;
  }

  v12 = CFGetTypeID(Extension);
  if (v12 == CFStringGetTypeID())
  {
    CFRetain(v4);
  }

  else
  {
LABEL_19:
    v4 = 0;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    goto LABEL_9;
  }

  return v4;
}