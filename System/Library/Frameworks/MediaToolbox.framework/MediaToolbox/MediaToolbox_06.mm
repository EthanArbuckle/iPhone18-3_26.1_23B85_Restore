void appendTrackEditSegmentDictionary(const __CFArray *a1, const __CFDictionary *a2)
{
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_6;
  }

  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  v19 = 0u;
  v5 = Count - 1;
  v16 = 0u;
  v17 = 0u;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, Count - 1);
  getFigTimeMappingFromDictionary(ValueAtIndex, &v21);
  if (!v7)
  {
    getFigTimeMappingFromDictionary(a2, &v16);
    if (!v8)
    {
      *&time1.value = v21;
      time1.epoch = v22;
      v12 = *MEMORY[0x1E6960C70];
      *&time2.value = *MEMORY[0x1E6960C70];
      v9 = *(MEMORY[0x1E6960C70] + 16);
      time2.epoch = v9;
      if (CMTimeCompare(&time1, &time2) || (*&time1.value = v16, time1.epoch = v17, *&time2.value = v12, time2.epoch = v9, CMTimeCompare(&time1, &time2)))
      {
LABEL_6:
        if (a2)
        {
          CFArrayAppendValue(a1, a2);
        }

        return;
      }

      value = 0;
      time1 = *&v25[1];
      time2 = *&v20[1];
      CMTimeAdd(&v25[1], &time1, &time2);
      v10 = CFGetAllocator(ValueAtIndex);
      if (!copyFigTimeMappingAsDictionary(v10, &v21, &value))
      {
        v11 = value;
        CFArraySetValueAtIndex(a1, v5, value);
        CFRelease(v11);
      }
    }
  }
}

void appendTrackEditSegmentArray(const __CFArray *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v5 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    appendTrackEditSegmentDictionary(a1, ValueAtIndex);
    if (!v7)
    {
      v8.length = v5 - 1;
      v8.location = 1;
      CFArrayAppendArray(a1, theArray, v8);
    }
  }
}

float *figMatrixToBigEndianMatrixRecord(float *result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      if (v4 == 2)
      {
        v6 = &result[3 * v2 + 2];
      }

      else
      {
        v6 = v5;
      }

      if (v4 == 2)
      {
        v7 = 1073741820.0;
      }

      else
      {
        v7 = 65536.0;
      }

      *(a2 + 4 * v4++) = bswap32((v7 * *v6));
      ++v5;
    }

    while (v4 != 3);
    ++v2;
    v3 += 3;
    a2 += 12;
  }

  while (v2 != 3);
  return result;
}

uint64_t appendEditAtom(uint64_t a1, uint64_t *a2, int a3)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v35 = 0;
  BasicMetrics = MovieInformationGetBasicMetrics(*(a1 + 8), 0, 0, &v35 + 1, 0);
  if (BasicMetrics || (BasicMetrics = getTimeValueToAddToCompositionOffsets(a1, a2, a3, &v35, 0, 0), BasicMetrics))
  {
    appended = BasicMetrics;
    FigAtomWriterEndAtom();
    return appended;
  }

  v7 = *MEMORY[0x1E695E480];
  v33 = HIDWORD(v35);
  v32 = v35;
  v8 = *a2;
  newTimescale = MovieTrackGetMediaTimeScale(*a2);
  v49 = 0;
  blockBufferOut = 0;
  v29 = a2;
  if (a3)
  {
    EditSegmentCount = MovieTrackGetEditSegmentCount(v8);
  }

  else
  {
    EditSegmentCount = MovieTrackFragmentGetEditSegmentCount(v8);
  }

  v10 = EditSegmentCount;
  v31 = EditSegmentCount - 1;
  v11 = -1;
  v34 = a3;
  v28 = v7;
LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  WritableForBlockBuffer = CMBlockBufferCreateEmpty(v7, 0, 0, &blockBufferOut);
  if (WritableForBlockBuffer || (WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer(), WritableForBlockBuffer))
  {
LABEL_68:
    appended = WritableForBlockBuffer;
  }

  else
  {
    if (v10 < 1)
    {
      v13 = 0;
LABEL_50:
      appended = 0;
      v24 = blockBufferOut;
      blockBufferOut = 0;
      goto LABEL_51;
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      memset(v48, 0, sizeof(v48));
      v47 = 0u;
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v15 = a3 ? MovieTrackGetEditSegmentWithIndex(v8, v14, &v45) : MovieTrackFragmentGetEditSegmentWithIndex(v8, v14, &v45);
      appended = v15;
      if (v15)
      {
        break;
      }

      if (BYTE12(v45))
      {
        *&time.value = v45;
        time.epoch = v46[0];
        CMTimeConvertScale(&v44, &time, newTimescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        value = v44.value;
        time = *&v46[1];
        time2 = *&v48[1];
        if (CMTimeCompare(&time, &time2))
        {
          v19 = v46[1];
          time = *&v48[1];
          CMTimeConvertScale(&v41, &time, v46[2], kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          v17 = vcvtd_n_s64_f64((v19 / v41.value), 0x10uLL);
        }

        else
        {
          v17 = 0x10000;
        }
      }

      else
      {
        v17 = 0x10000;
        value = -1;
      }

      if (value == -1 && v31 == v14)
      {
        goto LABEL_50;
      }

      time = *&v48[1];
      CMTimeConvertScale(&v40, &time, v33, kCMTimeRoundingMethod_QuickTime);
      if (v40.value || (value - 1) <= 0xFFFFFFFFFFFFFFFDLL && *(v29 + 39))
      {
        time2.timescale = 0;
        time2.value = 0;
        memset(&time, 0, 20);
        v20 = value + v32;
        if (value == -1)
        {
          v20 = -1;
        }

        if (HIDWORD(v40.value))
        {
          v21 = 0;
        }

        else
        {
          v21 = v20 - 0x80000000 >= 0xFFFFFFFF7FFFFFFFLL;
        }

        v22 = !v21;
        if (v11 == -1)
        {
          v11 = v22;
        }

        else if (v11 < v22)
        {
          v11 = v22;
          a3 = v34;
          v7 = v28;
          goto LABEL_7;
        }

        v23 = bswap32(v17);
        if (v11 == 1)
        {
          time.value = bswap64(v40.value);
          *&time.timescale = bswap64(v20);
          LODWORD(time.epoch) = v23;
        }

        else
        {
          time2.value = _byteswap_uint64(__PAIR64__(v40.value, v20));
          time2.timescale = v23;
        }

        a3 = v34;
        WritableForBlockBuffer = CMByteStreamAppend();
        if (WritableForBlockBuffer)
        {
          goto LABEL_68;
        }

        ++v13;
      }

      else
      {
        a3 = v34;
      }

      if (v10 == ++v14)
      {
        goto LABEL_50;
      }
    }
  }

  v13 = 0;
  v24 = 0;
LABEL_51:
  if (v49)
  {
    CFRelease(v49);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!appended && v13)
  {
    v25 = FigAtomWriterInitWithParent();
    if (v25 || (v25 = FigAtomWriterBeginAtom(), v25))
    {
      appended = v25;
    }

    else
    {
      *&v47 = 0;
      memset(v46, 0, sizeof(v46));
      v45 = 0u;
      CMBlockBufferGetDataLength(v24);
      v26 = FigAtomWriterInitWithParent();
      if (v26 || (v26 = FigAtomWriterBeginAtom(), v26) || (v26 = FigAtomWriterAppendVersionAndFlags(), v26) || (LODWORD(v44.value) = bswap32(v13), v26 = FigAtomWriterAppendData(), v26))
      {
        appended = v26;
        FigAtomWriterEndAtom();
      }

      else
      {
        appended = FigAtomWriterAppendBlockBufferData();
        FigAtomWriterEndAtom();
        if (!appended)
        {
          *(v29 + 41) = 1;
        }
      }
    }
  }

  FigAtomWriterEndAtom();
  if (v24)
  {
    CFRelease(v24);
  }

  return appended;
}

uint64_t FigUserDataSerializerCreateBBuf(const void *a1, CMBlockBufferRef *a2)
{
  blockBufferOut = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerCreateBBuf_cold_2(context);
    appended = LODWORD(context[0]);
LABEL_32:
    v16 = 1;
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    FigUserDataSerializerCreateBBuf_cold_1(context);
    appended = LODWORD(context[0]);
    goto LABEL_27;
  }

  v5 = DerivedStorage;
  v6 = *DerivedStorage;
  if ((!v6 || !CFDictionaryGetCount(v6)) && !*(v5 + 2) && !*(v5 + 3))
  {
    appended = 0;
    goto LABEL_32;
  }

  v7 = CFGetAllocator(a1);
  v8 = CMBlockBufferCreateEmpty(v7, 8u, 0, &blockBufferOut);
  if (v8 || (v8 = FigAtomWriterInitWithBlockBuffer(), v8))
  {
    appended = v8;
    goto LABEL_27;
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  memset(context, 0, sizeof(context));
  v10 = FigAtomWriterBeginAtom();
  if (v10 || (v10 = FigAtomWriterInitWithParent(), v10))
  {
    appended = v10;
    v11 = 0;
  }

  else
  {
    LOBYTE(v23) = *(v9 + 16);
    if (*v9)
    {
      CFDictionaryApplyFunction(*v9, FigUserDataWriteItemAtom, context);
      v11 = LOBYTE(context[0]);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v9 + 8);
    if (!*(v9 + 12))
    {
LABEL_19:
      appended = FigAtomWriterEndAtom();
      if (!appended)
      {
        if (v12)
        {
          appended = FigMetadataAppendFreeAtom(v18, v12);
          if (!appended)
          {
            v11 = 1;
          }
        }
      }

      goto LABEL_23;
    }

    v21 = 0;
    AtomSize = FigAtomWriterGetAtomSize();
    if (!AtomSize)
    {
      v14 = *(v9 + 12);
      if (v14 > v21 && v14 - v21 > *(v9 + 8))
      {
        v12 = v14 - v21;
      }

      goto LABEL_19;
    }

    appended = AtomSize;
  }

LABEL_23:
  v16 = v11 == 0;
LABEL_24:
  if (!appended)
  {
    appended = 0;
    if (!v16)
    {
      *a2 = blockBufferOut;
      return appended;
    }

    *a2 = 0;
  }

LABEL_27:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return appended;
}

uint64_t FigMetadataAppendFreeAtom(uint64_t a1, unint64_t a2)
{
  destinationBuffer = 0;
  v2 = a2 - 8;
  if (a2 < 8)
  {
    return 0;
  }

  appended = FigAtomWriterBeginAtom();
  if (!appended)
  {
    if (!v2 || (appended = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v2, *MEMORY[0x1E695E480], 0, 0, v2, 1u, &destinationBuffer), !appended) && (appended = CMBlockBufferFillDataBytes(0, destinationBuffer, 0, 0), !appended) && (appended = FigAtomWriterAppendBlockBufferData(), !appended))
    {
      appended = FigAtomWriterEndAtom();
    }
  }

  v4 = appended;
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v4;
}

void FigMetadataSerializerRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t figMovieWriter_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    FigSimpleMutexLock();
    v2 = *(v1 + 335);
    *(v1 + 335) = 1;
    FigSimpleMutexUnlock();
    if (!v2)
    {
      if (*(v1 + 560))
      {
        *(v1 + 571) = 1;
        FigSemaphoreSignal();
        FigThreadJoin();
        *(v1 + 560) = 0;
      }

      MovieSampleDataWriterFlushPendingAsynchronousTasks(*(v1 + 752));
    }
  }

  return 0;
}

void FigUserDataSerializerFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v1 = DerivedStorage;
    v2 = *DerivedStorage;
    if (v2)
    {
      CFRelease(v2);
      *v1 = 0;
    }
  }

  else
  {
    FigUserDataSerializerFinalize_cold_1();
  }
}

uint64_t FigMediaProcessorInvalidate(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 16))
    {
      FigMediaProcessorStop(result);
      FigMediaProcessorWaitUntilCompletelyStopped(v1);
      *(v1 + 16) = 1;
      v2 = *(v1 + 40);
      if (v2 && *(v1 + 56))
      {
        v3 = *(v1 + 48);
        v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v4)
        {
          v4(v2, v3);
        }

        *(v1 + 48) = 0;
        *(v1 + 56) = 0;
      }

      if (*(v1 + 32))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        if (*(v1 + 90))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListener();
        }
      }

      v5 = *(v1 + 64);
      if (v5)
      {
        if (!*(v1 + 72))
        {
          goto LABEL_17;
        }

        v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v6)
        {
          v6(v5, 0, 0);
        }

        *(v1 + 72) = 0;
        v5 = *(v1 + 64);
        if (v5)
        {
LABEL_17:
          FigBaseObject = FigActivitySchedulerGetFigBaseObject(v5);
          if (FigBaseObject)
          {
            v8 = FigBaseObject;
            v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v9)
            {
              v9(v8);
            }
          }
        }
      }

      v10 = *(v1 + 24);
      if (v10)
      {
        v11 = FigSampleBufferProcessorGetFigBaseObject(v10);
        if (v11)
        {
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v13)
          {
            v13(v12);
          }
        }
      }

      result = *(v1 + 32);
      if (result)
      {
        result = FigSampleBufferProviderGetFigBaseObject(result);
        if (result)
        {
          v14 = result;
          VTable = CMBaseObjectGetVTable();
          v16 = *(VTable + 8);
          result = VTable + 8;
          v17 = *(v16 + 24);
          if (v17)
          {

            return v17(v14);
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigMediaProcessorStop(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 73) = 0;
    return 0;
  }
}

uint64_t FigMediaProcessorWaitUntilCompletelyStopped(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigSimpleMutexLock();
    FigSimpleMutexUnlock();
    return 0;
  }
}

uint64_t otfw_removeLowWaterTrigger(uint64_t a1, opaqueCMBufferQueueTriggerToken *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[2];
  if (v4)
  {
    CMBufferQueueRemoveTrigger(v4, a2);
    DerivedStorage[12] = 0;
    DerivedStorage[13] = 0;
    DerivedStorage[11] = 0;
  }

  return 0;
}

uint64_t facInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigAudioCompressorInvalidate(DerivedStorage);
  return 0;
}

void FigAudioCompressorInvalidate(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 64))
    {
      if (*(a1 + 80))
      {
        AudioConverterReleaseHardwareCodec();
        *(a1 + 80) = 0;
      }

      v2 = *(a1 + 72);
      if (v2)
      {
        CFRelease(v2);
        *(a1 + 72) = 0;
      }

      AudioConverterDispose(*(a1 + 64));
      *(a1 + 64) = 0;
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      free(v3);
      *(a1 + 104) = 0;
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }

    v5 = *(a1 + 176);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 2;
        do
        {
          if (*v8)
          {
            free(*v8);
            *v8 = 0;
            v6 = *v5;
          }

          *(v8 - 1) = 0;
          ++v7;
          v8 += 2;
        }

        while (v7 < v6);
        v5 = *(a1 + 176);
      }

      free(v5);
      *(a1 + 176) = 0;
    }

    v9 = *(a1 + 152);
    if (v9)
    {
      free(v9);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
    }

    free(*(a1 + 168));
    *(a1 + 168) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v10 = *(a1 + 24);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 24) = 0;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 32) = 0;
    }

    v12 = *(a1 + 288);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 288) = 0;
    }

    v13 = *(a1 + 296);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 296) = 0;
    }

    v14 = *(a1 + 280);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 280) = 0;
    }

    v15 = *(a1 + 264);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 264) = 0;
    }

    v16 = *(a1 + 216);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 216) = 0;
    }

    *(a1 + 16) = 1;
  }
}

void facFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigAudioCompressorInvalidate(DerivedStorage);
}

void otfw_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t mediaprocessor_Finalize(void *a1)
{
  FigMediaProcessorInvalidate(a1);
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
    a1[8] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  FigSimpleMutexDestroy();
  a1[10] = 0;
  result = FigSimpleMutexDestroy();
  a1[18] = 0;
  return result;
}

uint64_t sbp_vtcs_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 39) = 1;
  *(DerivedStorage + 24) = 0;
  VTCompressionSessionInvalidate(*(DerivedStorage + 16));
  if (*DerivedStorage)
  {
    CMMemoryPoolInvalidate(*DerivedStorage);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  return 0;
}

void sbp_vtcs_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

void figMovieWriter_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figMovieWriter_Invalidate();
  if (DerivedStorage)
  {
    v1 = *(DerivedStorage + 488);
    if (v1)
    {
      Count = CFArrayGetCount(v1);
      if (Count >= 1)
      {
        v3 = Count;
        for (i = 0; i != v3; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 488), i);
          v6 = *(ValueAtIndex + 50);
          if (v6)
          {
            CFRelease(v6);
            *(ValueAtIndex + 50) = 0;
          }

          v7 = *(ValueAtIndex + 51);
          if (v7)
          {
            CFRelease(v7);
            *(ValueAtIndex + 51) = 0;
          }

          v8 = *(ValueAtIndex + 52);
          if (v8)
          {
            CFRelease(v8);
            *(ValueAtIndex + 52) = 0;
          }

          v9 = *(ValueAtIndex + 68);
          if (v9)
          {
            CFRelease(v9);
            *(ValueAtIndex + 68) = 0;
          }

          v10 = *(ValueAtIndex + 69);
          if (v10)
          {
            CFRelease(v10);
            *(ValueAtIndex + 69) = 0;
          }

          v11 = *(ValueAtIndex + 70);
          if (v11)
          {
            CFRelease(v11);
            *(ValueAtIndex + 70) = 0;
          }

          v12 = *(ValueAtIndex + 71);
          if (v12)
          {
            CFRelease(v12);
            *(ValueAtIndex + 71) = 0;
          }

          v13 = *(ValueAtIndex + 72);
          if (v13)
          {
            CFRelease(v13);
            *(ValueAtIndex + 72) = 0;
          }

          v14 = *(ValueAtIndex + 57);
          if (v14)
          {
            CFRelease(v14);
            *(ValueAtIndex + 57) = 0;
          }

          v15 = *(ValueAtIndex + 76);
          if (v15)
          {
            v16 = *(ValueAtIndex + 78);
            if (v16)
            {
              CMBufferQueueRemoveTrigger(v15, v16);
              *(ValueAtIndex + 78) = 0;
              v15 = *(ValueAtIndex + 76);
            }

            v17 = *(ValueAtIndex + 79);
            if (v17)
            {
              CMBufferQueueRemoveTrigger(v15, v17);
              *(ValueAtIndex + 79) = 0;
              v15 = *(ValueAtIndex + 76);
            }

            v18 = *(ValueAtIndex + 80);
            if (v18)
            {
              CMBufferQueueRemoveTrigger(v15, v18);
              *(ValueAtIndex + 80) = 0;
            }

            FigBufferQueueRelease();
            *(ValueAtIndex + 76) = 0;
          }

          v19 = *(ValueAtIndex + 77);
          if (v19)
          {
            CFRelease(v19);
            *(ValueAtIndex + 77) = 0;
          }

          v20 = *(ValueAtIndex + 53);
          if (v20)
          {
            v21 = CFArrayGetCount(v20);
            if (v21 >= 1)
            {
              v22 = v21;
              for (j = 0; j != v22; ++j)
              {
                v24 = CFArrayGetValueAtIndex(*(ValueAtIndex + 53), j);
                editBuilderRelease(v24[34]);
                free(v24);
              }
            }

            CFRelease(*(ValueAtIndex + 53));
            *(ValueAtIndex + 53) = 0;
          }

          v25 = *(ValueAtIndex + 62);
          if (v25)
          {
            editBuilderRelease(v25);
            *(ValueAtIndex + 62) = 0;
          }

          v26 = *(ValueAtIndex + 67);
          if (v26)
          {
            FigCEA608DataInspectorRelease(v26);
            *(ValueAtIndex + 67) = 0;
          }

          v27 = *(ValueAtIndex + 41);
          if (v27)
          {
            CFRelease(v27);
            *(ValueAtIndex + 41) = 0;
          }

          v28 = *(ValueAtIndex + 92);
          if (v28)
          {
            CFRelease(v28);
            *(ValueAtIndex + 92) = 0;
          }

          MediaSampleTimingGeneratorRelease(*(ValueAtIndex + 94));
          *(ValueAtIndex + 94) = 0;
          MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(*(ValueAtIndex + 97));
          free(ValueAtIndex);
        }
      }

      CFRelease(*(DerivedStorage + 488));
      *(DerivedStorage + 488) = 0;
    }

    if (*(DerivedStorage + 520))
    {
      FigSimpleMutexDestroy();
      *(DerivedStorage + 520) = 0;
    }

    if (*(DerivedStorage + 576))
    {
      FigSemaphoreDestroy();
      *(DerivedStorage + 576) = 0;
    }

    if (*(DerivedStorage + 584))
    {
      FigSemaphoreDestroy();
      *(DerivedStorage + 584) = 0;
    }

    if (*(DerivedStorage + 592))
    {
      FigSemaphoreDestroy();
      *(DerivedStorage + 592) = 0;
    }

    if (*(DerivedStorage + 600))
    {
      FigSemaphoreDestroy();
      *(DerivedStorage + 600) = 0;
    }

    v29 = *(DerivedStorage + 616);
    if (v29)
    {
      os_release(v29);
      *(DerivedStorage + 616) = 0;
    }

    v30 = *(DerivedStorage + 696);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 696) = 0;
    }

    v31 = *(DerivedStorage + 272);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 272) = 0;
    }

    v32 = *(DerivedStorage + 280);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 280) = 0;
    }

    v33 = *(DerivedStorage + 288);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 288) = 0;
    }

    v34 = *(DerivedStorage + 296);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 296) = 0;
    }

    v35 = *(DerivedStorage + 304);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 304) = 0;
    }

    v36 = *(DerivedStorage + 312);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 312) = 0;
    }

    v37 = *(DerivedStorage + 472);
    if (v37)
    {
      free(v37);
      *(DerivedStorage + 472) = 0;
    }

    if (*(DerivedStorage + 336))
    {
      FigSimpleMutexDestroy();
      *(DerivedStorage + 336) = 0;
    }

    v38 = *(DerivedStorage + 440);
    if (v38)
    {
      CFRelease(v38);
      *(DerivedStorage + 440) = 0;
    }

    v39 = *(DerivedStorage + 720);
    if (v39)
    {
      CFRelease(v39);
      *(DerivedStorage + 720) = 0;
    }

    v40 = *(DerivedStorage + 728);
    if (v40)
    {
      CFRelease(v40);
      *(DerivedStorage + 728) = 0;
    }

    v41 = *(DerivedStorage + 736);
    if (v41)
    {
      CFRelease(v41);
      *(DerivedStorage + 736) = 0;
    }

    v42 = *(DerivedStorage + 752);
    if (v42)
    {
      CFRelease(v42);
      *(DerivedStorage + 752) = 0;
    }

    v43 = *(DerivedStorage + 8);
    if (v43)
    {
      CFRelease(v43);
      *(DerivedStorage + 8) = 0;
    }

    MovieHeaderMakerRelease(*(DerivedStorage + 744));
    *(DerivedStorage + 744) = 0;
  }
}

void playerasync_InvalidateItem(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {

    itemasync_InvalidateInternal(a1);
  }
}

uint64_t bvc_SimpleMixing_420v_420v_420v_arm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, int16x8_t a9)
{
  if (a2)
  {
    v12 = a2;
    a9.i32[0] = vcvts_n_u32_f32(*a9.i32, 8uLL);
    v13.i64[0] = 0x100010001000100;
    v13.i64[1] = 0x100010001000100;
    a9.i16[1] = vsubq_s16(v13, a9).u16[0];
    v14 = *a3 - a1;
    v15 = *a5 - a1;
    v16 = *a7 - a1;
    v17 = *a4;
    v18 = *a6;
    v19 = *a8;
    do
    {
      for (i = a1 >> 6; i; v19 += 4)
      {
        v21 = *v17;
        v22 = *(v17 + 1);
        v23 = *(v17 + 2);
        v24 = *(v17 + 3);
        v17 += 4;
        v25 = *v18;
        v26 = *(v18 + 1);
        v27 = *(v18 + 2);
        v28 = *(v18 + 3);
        v18 += 4;
        v29 = vmovl_u8(*v21.i8);
        v30 = vmovl_high_u8(v21);
        v31 = vmovl_u8(*v22.i8);
        v32 = vmovl_high_u8(v22);
        v33 = vmovl_u8(*v25.i8);
        v34 = vmovl_high_u8(v25);
        v10 = vmovl_u8(*v27.i8);
        v11 = vmlaq_lane_s16(vmulq_n_s16(v29, a9.i16[0]), v33, *a9.i8, 1);
        v9 = vshrn_high_n_s16(vshrn_n_s16(v11, 8uLL), vmlaq_lane_s16(vmulq_n_s16(v30, a9.i16[0]), v34, *a9.i8, 1), 8uLL);
        --i;
        *v19 = v9;
        v19[1] = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(v31, a9.i16[0]), vmovl_u8(*v26.i8), *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(v32, a9.i16[0]), vmovl_high_u8(v26), *a9.i8, 1), 8uLL);
        v19[2] = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v23.i8), a9.i16[0]), v10, *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v23), a9.i16[0]), vmovl_high_u8(v27), *a9.i8, 1), 8uLL);
        v19[3] = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v24.i8), a9.i16[0]), vmovl_u8(*v28.i8), *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v24), a9.i16[0]), vmovl_high_u8(v28), *a9.i8, 1), 8uLL);
      }

      for (j = (a1 & 0x3F) >> 3; j; v19 = (v19 + 8))
      {
        v36 = *v17;
        v17 = (v17 + 8);
        v10.i64[0] = *v18;
        v18 = (v18 + 8);
        v11 = vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(v36), a9.i16[0]), vmovl_u8(*v10.i8), *a9.i8, 1);
        *v9.i8 = vshrn_n_s16(v11, 8uLL);
        --j;
        v19->i64[0] = v9.i64[0];
      }

      v37 = a1 & 7;
      if ((a1 & 7) != 0)
      {
        do
        {
          v38 = *v17;
          v17 = (v17 + 1);
          v11.i8[0] = v38;
          v39 = *v18;
          v18 = (v18 + 1);
          v9.i8[0] = v39;
          v11 = vmlaq_lane_s16(vmulq_n_s16(v11, a9.i16[0]), v9, *a9.i8, 1);
          --v37;
          v19->i8[0] = v11.i8[1];
          v19 = (v19 + 1);
        }

        while (v37);
      }

      v17 = (v17 + v14);
      v18 = (v18 + v15);
      v19 = (v19 + v16);
      --v12;
    }

    while (v12);
    v40 = a2 >> 1;
    v41 = a1 >> 1;
    v42 = a3[1] - 2 * v41;
    v43 = a5[1] - 2 * v41;
    v44 = a7[1] - 2 * v41;
    v45 = *(a4 + 8);
    v46 = *(a6 + 8);
    v47 = *(a8 + 8);
    do
    {
      for (k = v41 >> 5; k; v47 += 64)
      {
        v49 = *v45;
        v50 = v45[1];
        v51 = v45[2];
        v52 = v45[3];
        v45 += 4;
        v53 = *v46;
        v54 = v46[1];
        v55 = v46[2];
        v56 = v46[3];
        v46 += 4;
        v57 = vmovl_u8(*v49.i8);
        v58 = vmovl_high_u8(v49);
        v59 = vmovl_u8(*v50.i8);
        v60 = vmovl_high_u8(v50);
        v61 = vmovl_u8(*v53.i8);
        v62 = vmovl_high_u8(v53);
        v10 = vmovl_u8(*v55.i8);
        v9 = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(v57, a9.i16[0]), v61, *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(v58, a9.i16[0]), v62, *a9.i8, 1), 8uLL);
        --k;
        *v47 = v9;
        *(v47 + 16) = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(v59, a9.i16[0]), vmovl_u8(*v54.i8), *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(v60, a9.i16[0]), vmovl_high_u8(v54), *a9.i8, 1), 8uLL);
        *(v47 + 32) = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v51.i8), a9.i16[0]), v10, *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v51), a9.i16[0]), vmovl_high_u8(v55), *a9.i8, 1), 8uLL);
        *(v47 + 48) = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v52.i8), a9.i16[0]), vmovl_u8(*v56.i8), *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v52), a9.i16[0]), vmovl_high_u8(v56), *a9.i8, 1), 8uLL);
      }

      for (m = (v41 & 0x1F) >> 3; m; v47 += 16)
      {
        v64 = *v45++;
        v10 = *v46++;
        v9 = vshrn_high_n_s16(vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v64.i8), a9.i16[0]), vmovl_u8(*v10.i8), *a9.i8, 1), 8uLL), vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v64), a9.i16[0]), vmovl_high_u8(v10), *a9.i8, 1), 8uLL);
        --m;
        *v47 = v9;
      }

      v65 = v41 & 7;
      if ((v41 & 7) != 0)
      {
        do
        {
          v66 = v45->i16[0];
          v45 = (v45 + 2);
          v9.i16[0] = v66;
          v67 = v46->i16[0];
          v46 = (v46 + 2);
          v10.i16[0] = v67;
          *v9.i8 = vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v9.i8), a9.i16[0]), vmovl_u8(*v10.i8), *a9.i8, 1), 8uLL);
          --v65;
          *v47 = v9.i16[0];
          v47 += 2;
        }

        while (v65);
      }

      v45 = (v45 + v42);
      v46 = (v46 + v43);
      v47 += v44;
      --v40;
    }

    while (v40);
  }

  return 0;
}

uint64_t bvc_SimpleMixingOpaque_420v_420v_420v_arm(uint64_t a1, uint64_t a2, void *a3, __int128 **a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a2)
  {
    v10 = a2;
    v11 = *a3 - a1;
    v12 = *a7 - a1;
    v13 = *a4;
    v14 = *a8;
    do
    {
      for (i = a1 >> 6; i; v14 += 4)
      {
        v16 = *v13;
        v17 = v13[1];
        v18 = v13[2];
        v19 = v13[3];
        v13 += 4;
        --i;
        *v14 = v16;
        v14[1] = v17;
        v14[2] = v18;
        v14[3] = v19;
      }

      for (j = (a1 & 0x3F) >> 3; j; v14 = (v14 + 8))
      {
        v21 = *v13;
        v13 = (v13 + 8);
        --j;
        *v14 = v21;
      }

      v22 = a1 & 7;
      if ((a1 & 7) != 0)
      {
        do
        {
          v23 = *v13;
          v13 = (v13 + 1);
          --v22;
          *v14 = v23;
          v14 = (v14 + 1);
        }

        while (v22);
      }

      v13 = (v13 + v11);
      v9 += v8;
      v14 = (v14 + v12);
      --v10;
    }

    while (v10);
    v24 = a2 >> 1;
    v25 = a1 >> 1;
    v26 = a3[1] - 2 * v25;
    v27 = a7[1] - 2 * v25;
    v28 = a4[1];
    v29 = *(a8 + 8);
    do
    {
      for (k = v25 >> 5; k; v29 += 4)
      {
        v31 = *v28;
        v32 = v28[1];
        v33 = v28[2];
        v34 = v28[3];
        v28 += 4;
        --k;
        *v29 = v31;
        v29[1] = v32;
        v29[2] = v33;
        v29[3] = v34;
      }

      for (m = (v25 & 0x1F) >> 3; m; ++v29)
      {
        v36 = *v28++;
        --m;
        *v29 = v36;
      }

      v37 = v25 & 7;
      if ((v25 & 7) != 0)
      {
        do
        {
          v38 = *v28;
          v28 = (v28 + 2);
          --v37;
          *v29 = v38;
          v29 = (v29 + 2);
        }

        while (v37);
      }

      v28 = (v28 + v26);
      v9 += v8;
      v29 = (v29 + v27);
      --v24;
    }

    while (v24);
  }

  return 0;
}

uint64_t bvc_FullCompositionYInner_420v_420v_arm(uint64_t a1, unsigned __int16 a2, uint64_t *a3, uint64_t a4, uint64_t a5, signed __int32 a6, int *a7, int *a8, int32x4_t a9, int a10, int a11, int *a12, int *a13, unsigned int a14, unsigned int a15, int a16, int a17)
{
  if (a1)
  {
    a9.i16[0] = a2;
    a9.i16[1] = 256 - a2;
    a9.i32[1] = a6;
    a9.i32[2] = 4;
    v19 = *a3;
    v20 = *a7;
    v21 = *a8;
    v22 = *a12;
    v23 = *a13;
    v24.i32[0] = 0;
    v24.i32[1] = a14;
    v25 = vshlq_n_s32(vdupq_n_s32(a14), 2uLL);
    v26.i32[0] = 0;
    v26.i32[1] = a15;
    v27 = vshlq_n_s32(vdupq_n_s32(a15), 2uLL);
    do
    {
      v28 = (v20 >> 16);
      v29 = (v19 + v28);
      v30 = v22 + a14 * v28;
      v31 = v23 + a15 * v28;
      LODWORD(v28) = (v21 >> 16) - v28;
      v32 = v28 & 0xF;
      v33 = v28 >> 4;
      v34 = vdupq_n_s32(v31);
      v35 = vdupq_n_s32(v30);
      if (v33)
      {
        v26.i32[3] = 3 * a15;
        v26.i32[2] = 2 * a15;
        v34 = vaddq_s32(v34, v26);
        v36 = vaddq_s32(v34, v27);
        v37 = vaddq_s32(v36, v27);
        v38 = vaddq_s32(v37, v27);
        v24.i32[3] = 3 * a14;
        v24.i32[2] = 2 * a14;
        v35 = vaddq_s32(v35, v24);
        v39 = vaddq_s32(v35, v25);
        v40 = vaddq_s32(v39, v25);
        v41 = vaddq_s32(v40, v25);
        do
        {
          v42 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v34, 0x10uLL), *a9.i8, 1), v35, 0x10uLL);
          v43 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v36, 0x10uLL), *a9.i8, 1), v39, 0x10uLL);
          v44 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v37, 0x10uLL), *a9.i8, 1), v40, 0x10uLL);
          v45 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v38, 0x10uLL), *a9.i8, 1), v41, 0x10uLL);
          v42.i16[0] = *(v42.u32[0] + a5);
          v42.i16[1] = *(v42.u32[1] + a5);
          v42.i16[2] = *(v42.u32[2] + a5);
          v42.i16[3] = *(v42.u32[3] + a5);
          v42.i16[4] = *(v43.u32[0] + a5);
          v42.i16[5] = *(v43.u32[1] + a5);
          v42.i16[6] = *(v43.u32[2] + a5);
          v42.i16[7] = *(v43.u32[3] + a5);
          v43.i16[0] = *(v44.u32[0] + a5);
          v43.i16[1] = *(v44.u32[1] + a5);
          v43.i16[2] = *(v44.u32[2] + a5);
          v43.i16[3] = *(v44.u32[3] + a5);
          v43.i16[4] = *(v45.u32[0] + a5);
          v43.i16[5] = *(v45.u32[1] + a5);
          v43.i16[6] = *(v45.u32[2] + a5);
          v43.i16[7] = *(v45.u32[3] + a5);
          v35 = vmlaq_laneq_s32(v35, v25, a9, 2);
          v39 = vmlaq_laneq_s32(v39, v25, a9, 2);
          v40 = vmlaq_laneq_s32(v40, v25, a9, 2);
          v41 = vmlaq_laneq_s32(v41, v25, a9, 2);
          v34 = vmlaq_laneq_s32(v34, v27, a9, 2);
          v36 = vmlaq_laneq_s32(v36, v27, a9, 2);
          v37 = vmlaq_laneq_s32(v37, v27, a9, 2);
          v38 = vmlaq_laneq_s32(v38, v27, a9, 2);
          v18 = vmovl_u8(*v29);
          v17 = vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(v42, a9.i16[0]), v18, *a9.i8, 1), 8uLL);
          *v43.i8 = vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(v43, a9.i16[0]), vmovl_high_u8(*v29->i8), *a9.i8, 1), 8uLL);
          --v33;
          *v29 = v17;
          v29[1] = *v43.i8;
          v29 += 2;
        }

        while (v33);
      }

      if (v32)
      {
        v46 = v35.u32[0];
        v47 = v34.i32[0];
        do
        {
          v48 = a5 + (v46 >> 16);
          v46 = v46 + a14;
          v18.i8[0] = v29->i8[0];
          v49 = (v48 + (v47 >> 16) * a6);
          v47 += a15;
          v17.i8[0] = *v49;
          --v32;
          v17 = vmla_lane_s16(vmul_n_s16(v17, a9.i16[0]), *v18.i8, *a9.i8, 1);
          v29->i8[0] = v17.i8[1];
          v29 = (v29 + 1);
        }

        while (v32);
      }

      --a1;
      v19 += a4;
      v20 += a10;
      v21 += a11;
      v22 += a16;
      v23 += a17;
    }

    while (a1);
    *a3 = v19;
    *a7 = v20;
    *a8 = v21;
    *a12 = v22;
    *a13 = v23;
  }

  return 0;
}

uint64_t bvc_FullCompositionCbCrInner_420v_420v_arm(uint64_t a1, unsigned __int16 a2, uint64_t *a3, uint64_t a4, uint64_t a5, signed __int32 a6, int *a7, int *a8, int32x4_t a9, int a10, int a11, int *a12, int *a13, unsigned int a14, unsigned int a15, int a16, int a17)
{
  if (a1)
  {
    a9.i16[0] = a2;
    a9.i16[1] = 256 - a2;
    a9.i32[1] = a6;
    a9.i32[2] = 2;
    v19 = *a3;
    v20 = *a7;
    v21 = *a8;
    v22 = *a12;
    v23 = *a13;
    v24.i32[0] = 0;
    v24.i32[1] = a14;
    v25 = vshlq_n_s32(vdupq_n_s32(a14), 2uLL);
    v26.i32[0] = 0;
    v26.i32[1] = a15;
    v27 = vshlq_n_s32(vdupq_n_s32(a15), 2uLL);
    do
    {
      v28 = (v20 >> 16);
      v29 = (v19 + 2 * v28);
      v30 = v22 + a14 * v28;
      v31 = v23 + a15 * v28;
      LODWORD(v28) = (v21 >> 16) - v28;
      v32 = v28 & 7;
      v33 = v28 >> 3;
      v34 = vdupq_n_s32(v31);
      v35 = vdupq_n_s32(v30);
      if (v33)
      {
        v26.i32[3] = 3 * a15;
        v26.i32[2] = 2 * a15;
        v34 = vaddq_s32(v34, v26);
        v36 = vaddq_s32(v34, v27);
        v24.i32[3] = 3 * a14;
        v24.i32[2] = 2 * a14;
        v35 = vaddq_s32(v35, v24);
        v37 = vaddq_s32(v35, v25);
        do
        {
          v38 = vmlaq_lane_s32(vshlq_n_s32(vshrq_n_u32(v35, 0x10uLL), 1uLL), vshrq_n_u32(v34, 0x10uLL), *a9.i8, 1);
          v39 = vmlaq_lane_s32(vshlq_n_s32(vshrq_n_u32(v37, 0x10uLL), 1uLL), vshrq_n_u32(v36, 0x10uLL), *a9.i8, 1);
          v38.i16[0] = *(v38.u32[0] + a5);
          v38.i16[1] = *(v38.u32[1] + a5);
          v38.i16[2] = *(v38.u32[2] + a5);
          v38.i16[3] = *(v38.u32[3] + a5);
          v39.i16[0] = *(v39.u32[0] + a5);
          v39.i16[1] = *(v39.u32[1] + a5);
          v39.i16[2] = *(v39.u32[2] + a5);
          v39.i16[3] = *(v39.u32[3] + a5);
          v35 = vmlaq_laneq_s32(v35, v25, a9, 2);
          v37 = vmlaq_laneq_s32(v37, v25, a9, 2);
          v34 = vmlaq_laneq_s32(v34, v27, a9, 2);
          v36 = vmlaq_laneq_s32(v36, v27, a9, 2);
          v18 = vmovl_u8(*v29);
          v17 = vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v38.i8), a9.i16[0]), v18, *a9.i8, 1), 8uLL);
          *v39.i8 = vshrn_n_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v39.i8), a9.i16[0]), vmovl_high_u8(*v29->i8), *a9.i8, 1), 8uLL);
          --v33;
          *v29 = v17;
          v29[1] = *v39.i8;
          v29 += 2;
        }

        while (v33);
      }

      if (v32)
      {
        v40 = v35.i32[0];
        v41 = v34.i32[0];
        do
        {
          v42 = v40 & 0xFFFF0000;
          v40 += a14;
          v18.i16[0] = v29->i16[0];
          v18.i64[0] = vmovl_u8(*v18.i8).u64[0];
          v43 = (a5 + (v42 >> 15) + (v41 >> 16) * a6);
          v41 += a15;
          v17.i16[0] = *v43;
          --v32;
          v44 = vmovl_u8(v17);
          *v44.i8 = vmla_lane_s16(vmul_n_s16(*v44.i8, a9.i16[0]), *v18.i8, *a9.i8, 1);
          v17 = vshrn_n_s16(v44, 8uLL);
          v29->i16[0] = v17.i16[0];
          v29 = (v29 + 2);
        }

        while (v32);
      }

      --a1;
      v19 += a4;
      v20 += a10;
      v21 += a11;
      v22 += a16;
      v23 += a17;
    }

    while (a1);
    *a3 = v19;
    *a7 = v20;
    *a8 = v21;
    *a12 = v22;
    *a13 = v23;
  }

  return 0;
}

uint64_t bvc_FullCompositionOpaqueYInner_420v_420v_arm(uint64_t a1, unsigned __int16 a2, uint64_t *a3, uint64_t a4, uint64_t a5, signed __int32 a6, int *a7, int *a8, int32x4_t a9, int a10, int a11, int *a12, int *a13, unsigned int a14, unsigned int a15, int a16, int a17)
{
  if (a1)
  {
    a9.i16[0] = a2;
    a9.i16[1] = 256 - a2;
    a9.i32[1] = a6;
    a9.i32[2] = 4;
    v17 = *a3;
    v18 = *a7;
    v19 = *a8;
    v20 = *a12;
    v21 = *a13;
    v22.i32[0] = 0;
    v22.i32[1] = a14;
    v23 = vshlq_n_s32(vdupq_n_s32(a14), 2uLL);
    v24.i32[0] = 0;
    v24.i32[1] = a15;
    v25 = vshlq_n_s32(vdupq_n_s32(a15), 2uLL);
    do
    {
      v26 = (v18 >> 16);
      v27 = (v17 + v26);
      v28 = v20 + a14 * v26;
      v29 = v21 + a15 * v26;
      LODWORD(v26) = (v19 >> 16) - v26;
      v30 = v26 & 0xF;
      v31 = v26 >> 4;
      v32 = vdupq_n_s32(v29);
      v33 = vdupq_n_s32(v28);
      if (v31)
      {
        v24.i32[3] = 3 * a15;
        v24.i32[2] = 2 * a15;
        v32 = vaddq_s32(v32, v24);
        v34 = vaddq_s32(v32, v25);
        v35 = vaddq_s32(v34, v25);
        v36 = vaddq_s32(v35, v25);
        v22.i32[3] = 3 * a14;
        v22.i32[2] = 2 * a14;
        v33 = vaddq_s32(v33, v22);
        v37 = vaddq_s32(v33, v23);
        v38 = vaddq_s32(v37, v23);
        v39 = vaddq_s32(v38, v23);
        do
        {
          v40 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v32, 0x10uLL), *a9.i8, 1), v33, 0x10uLL);
          v41 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v34, 0x10uLL), *a9.i8, 1), v37, 0x10uLL);
          v42 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v35, 0x10uLL), *a9.i8, 1), v38, 0x10uLL);
          v43 = vsraq_n_u32(vmulq_lane_s32(vshrq_n_u32(v36, 0x10uLL), *a9.i8, 1), v39, 0x10uLL);
          v40.i16[0] = *(v40.u32[0] + a5);
          v40.i16[1] = *(v40.u32[1] + a5);
          v40.i16[2] = *(v40.u32[2] + a5);
          v40.i16[3] = *(v40.u32[3] + a5);
          v40.i16[4] = *(v41.u32[0] + a5);
          v40.i16[5] = *(v41.u32[1] + a5);
          v40.i16[6] = *(v41.u32[2] + a5);
          v40.i16[7] = *(v41.u32[3] + a5);
          v41.i16[0] = *(v42.u32[0] + a5);
          v41.i16[1] = *(v42.u32[1] + a5);
          v41.i16[2] = *(v42.u32[2] + a5);
          v41.i16[3] = *(v42.u32[3] + a5);
          v41.i16[4] = *(v43.u32[0] + a5);
          v41.i16[5] = *(v43.u32[1] + a5);
          v41.i16[6] = *(v43.u32[2] + a5);
          v41.i16[7] = *(v43.u32[3] + a5);
          v33 = vmlaq_laneq_s32(v33, v23, a9, 2);
          v37 = vmlaq_laneq_s32(v37, v23, a9, 2);
          v38 = vmlaq_laneq_s32(v38, v23, a9, 2);
          v39 = vmlaq_laneq_s32(v39, v23, a9, 2);
          v32 = vmlaq_laneq_s32(v32, v25, a9, 2);
          v34 = vmlaq_laneq_s32(v34, v25, a9, 2);
          v35 = vmlaq_laneq_s32(v35, v25, a9, 2);
          v36 = vmlaq_laneq_s32(v36, v25, a9, 2);
          --v31;
          *v27 = vmovn_s16(v40);
          v27[1] = vmovn_s16(v41);
          v27 += 2;
        }

        while (v31);
      }

      if (v30)
      {
        v44 = v33.u32[0];
        v45 = v32.i32[0];
        do
        {
          v46 = a5 + (v44 >> 16);
          v44 = v44 + a14;
          v47 = (v46 + (v45 >> 16) * a6);
          v45 += a15;
          --v30;
          v27->i8[0] = *v47;
          v27 = (v27 + 1);
        }

        while (v30);
      }

      --a1;
      v17 += a4;
      v18 += a10;
      v19 += a11;
      v20 += a16;
      v21 += a17;
    }

    while (a1);
    *a3 = v17;
    *a7 = v18;
    *a8 = v19;
    *a12 = v20;
    *a13 = v21;
  }

  return 0;
}

uint64_t bvc_FullCompositionOpaqueCbCrInner_420v_420v_arm(uint64_t a1, unsigned __int16 a2, uint64_t *a3, uint64_t a4, uint64_t a5, signed __int32 a6, int *a7, int *a8, int32x4_t a9, int a10, int a11, int *a12, int *a13, unsigned int a14, unsigned int a15, int a16, int a17)
{
  if (a1)
  {
    a9.i16[0] = a2;
    a9.i16[1] = 256 - a2;
    a9.i32[1] = a6;
    a9.i32[2] = 2;
    v17 = *a3;
    v18 = *a7;
    v19 = *a8;
    v20 = *a12;
    v21 = *a13;
    v22.i32[0] = 0;
    v22.i32[1] = a14;
    v23 = vshlq_n_s32(vdupq_n_s32(a14), 2uLL);
    v24.i32[0] = 0;
    v24.i32[1] = a15;
    v25 = vshlq_n_s32(vdupq_n_s32(a15), 2uLL);
    do
    {
      v26 = (v18 >> 16);
      v27 = (v17 + 2 * v26);
      v28 = v20 + a14 * v26;
      v29 = v21 + a15 * v26;
      LODWORD(v26) = (v19 >> 16) - v26;
      v30 = v26 & 7;
      v31 = v26 >> 3;
      v32 = vdupq_n_s32(v29);
      v33 = vdupq_n_s32(v28);
      if (v31)
      {
        v24.i32[3] = 3 * a15;
        v24.i32[2] = 2 * a15;
        v32 = vaddq_s32(v32, v24);
        v34 = vaddq_s32(v32, v25);
        v22.i32[3] = 3 * a14;
        v22.i32[2] = 2 * a14;
        v33 = vaddq_s32(v33, v22);
        v35 = vaddq_s32(v33, v23);
        do
        {
          v36 = vmlaq_lane_s32(vshlq_n_s32(vshrq_n_u32(v33, 0x10uLL), 1uLL), vshrq_n_u32(v32, 0x10uLL), *a9.i8, 1);
          v37 = vmlaq_lane_s32(vshlq_n_s32(vshrq_n_u32(v35, 0x10uLL), 1uLL), vshrq_n_u32(v34, 0x10uLL), *a9.i8, 1);
          v36.i16[0] = *(v36.u32[0] + a5);
          v36.i16[1] = *(v36.u32[1] + a5);
          v36.i16[2] = *(v36.u32[2] + a5);
          v36.i16[3] = *(v36.u32[3] + a5);
          v37.i16[0] = *(v37.u32[0] + a5);
          v37.i16[1] = *(v37.u32[1] + a5);
          v37.i16[2] = *(v37.u32[2] + a5);
          v37.i16[3] = *(v37.u32[3] + a5);
          v33 = vmlaq_laneq_s32(v33, v23, a9, 2);
          v35 = vmlaq_laneq_s32(v35, v23, a9, 2);
          v32 = vmlaq_laneq_s32(v32, v25, a9, 2);
          v34 = vmlaq_laneq_s32(v34, v25, a9, 2);
          --v31;
          *v27 = v36.i64[0];
          v27[1] = v37.i64[0];
          v27 += 2;
        }

        while (v31);
      }

      if (v30)
      {
        v38 = v33.i32[0];
        v39 = v32.i32[0];
        do
        {
          v40 = v38 & 0xFFFF0000;
          v38 += a14;
          v41 = (a5 + (v40 >> 15) + (v39 >> 16) * a6);
          v39 += a15;
          --v30;
          *v27 = *v41;
          v27 = (v27 + 2);
        }

        while (v30);
      }

      --a1;
      v17 += a4;
      v18 += a10;
      v19 += a11;
      v20 += a16;
      v21 += a17;
    }

    while (a1);
    *a3 = v17;
    *a7 = v18;
    *a8 = v19;
    *a12 = v20;
    *a13 = v21;
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32BGRA_420v601_420v601_arm(uint64_t a1, uint64_t a2, void *a3, const char **a4, void *a5, uint8x16_t **a6, uint64_t *a7, int8x8_t **a8, float a9)
{
  v11 = a2 >> 1;
  if (v11)
  {
    v12 = a1 >> 1;
    v28.i16[0] = vcvts_n_u32_f32(a9, 8uLL);
    v28.i16[1] = (v28.u16[0] << 8) / 0xFFu;
    v13 = *a4;
    v14 = &(*a4)[*a3];
    v15 = 2 * *a3 - 8 * v12;
    v16 = *a6;
    v17 = a6[1];
    v18 = (*a6 + *a5);
    v19 = 2 * *a5 - 2 * v12;
    v20 = a5[1] - 2 * v12;
    v21 = *a7;
    v22 = *a8;
    v23 = a7[1];
    v24 = a8[1];
    v25 = (v22 + *a7);
    v26 = 2 * v21 - 2 * v12;
    v27 = v23 - 2 * v12;
    v28.i32[1] = 1082132552;
    v28.i64[1] = 0xED060C93407C20DCLL;
    do
    {
      for (i = v12 >> 3; i; v24 += 2)
      {
        v108 = vld4q_s8(v13);
        v13 += 64;
        v109 = vld4q_s8(v14);
        v14 += 64;
        v30 = vmovl_u8(*v108.val[0].i8);
        v31 = vmovl_high_u8(v108.val[0]);
        v32 = vmovl_u8(*v108.val[1].i8);
        v33 = vmovl_high_u8(v108.val[1]);
        v34 = vmovl_u8(*v109.val[0].i8);
        v35 = vmovl_high_u8(v109.val[0]);
        v36 = vmovl_u8(*v109.val[1].i8);
        v37 = vmovl_high_u8(v109.val[1]);
        v38 = vmull_laneq_s16(*v30.i8, v28, 6);
        v39 = vmull_high_laneq_s16(v30, v28, 6);
        v40 = vmull_laneq_s16(*v31.i8, v28, 6);
        v41 = vmull_high_laneq_s16(v31, v28, 6);
        v42 = vmull_laneq_s16(*v34.i8, v28, 6);
        v43 = vmull_high_laneq_s16(v34, v28, 6);
        v44 = vmull_laneq_s16(*v35.i8, v28, 6);
        v45 = vmull_high_laneq_s16(v35, v28, 6);
        v46 = vmovl_u8(*v108.val[2].i8);
        v47 = vmovl_high_u8(v108.val[2]);
        v48 = vmovl_u8(*v109.val[2].i8);
        v49 = vmovl_high_u8(v109.val[2]);
        v50 = vmlal_laneq_s16(v38, *v32.i8, v28, 5);
        v51 = vmlal_high_laneq_s16(v39, v32, v28, 5);
        v52 = vmlal_laneq_s16(v40, *v33.i8, v28, 5);
        v53 = vmlal_high_laneq_s16(v41, v33, v28, 5);
        v54 = vmlal_laneq_s16(v42, *v36.i8, v28, 5);
        v55 = vmlal_high_laneq_s16(v43, v36, v28, 5);
        v56 = vmlal_laneq_s16(v44, *v37.i8, v28, 5);
        v57 = vmlal_high_laneq_s16(v45, v37, v28, 5);
        v58 = vmovl_u8(*v108.val[3].i8);
        v59 = vmovl_high_u8(v108.val[3]);
        v60 = vmovl_u8(*v109.val[3].i8);
        v61 = vmovl_high_u8(v109.val[3]);
        v62 = *v16++;
        v63 = *v18++;
        v64 = vmlal_laneq_s16(v50, *v46.i8, v28, 4);
        v65 = vmlal_high_laneq_s16(v51, v46, v28, 4);
        v66 = vmlal_laneq_s16(v52, *v47.i8, v28, 4);
        v67 = vmlal_high_laneq_s16(v53, v47, v28, 4);
        v68 = vmlal_laneq_s16(v54, *v48.i8, v28, 4);
        v69 = vmlal_high_laneq_s16(v55, v48, v28, 4);
        v70 = vmlal_laneq_s16(v56, *v49.i8, v28, 4);
        v71 = vmlal_high_laneq_s16(v57, v49, v28, 4);
        v72 = vmovl_u8(*v62.i8);
        v73 = vmovl_high_u8(v62);
        v74 = vmovl_u8(*v63.i8);
        v75 = vmovl_high_u8(v63);
        v76 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v64, *v58.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v65, v58, *v28.i8, 2), 0xFuLL);
        v77 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v66, *v59.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v67, v59, *v28.i8, 2), 0xFuLL);
        v78 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v68, *v60.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v69, v60, *v28.i8, 2), 0xFuLL);
        v79 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v70, *v61.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v71, v61, *v28.i8, 2), 0xFuLL);
        v64.i64[0] = 0x1000000010000;
        v64.i64[1] = 0x1000000010000;
        v65.i64[0] = 0x1000000010000;
        v65.i64[1] = 0x1000000010000;
        v66.i64[0] = 0x1000000010000;
        v66.i64[1] = 0x1000000010000;
        v67.i64[0] = 0x1000000010000;
        v67.i64[1] = 0x1000000010000;
        v68.i64[0] = 0x1000000010000;
        v68.i64[1] = 0x1000000010000;
        v69.i64[0] = 0x1000000010000;
        v69.i64[1] = 0x1000000010000;
        v70.i64[0] = 0x1000000010000;
        v70.i64[1] = 0x1000000010000;
        v71.i64[0] = 0x1000000010000;
        v71.i64[1] = 0x1000000010000;
        v80 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v64, *v58.i8, *v28.i8, 1), vmovl_u16(*v72.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v65, v58, *v28.i8, 1), vmovl_high_u16(v72)), 8uLL);
        v81 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v66, *v59.i8, *v28.i8, 1), vmovl_u16(*v73.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v67, v59, *v28.i8, 1), vmovl_high_u16(v73)), 8uLL);
        v82 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v70, *v61.i8, *v28.i8, 1), vmovl_u16(*v75.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v71, v61, *v28.i8, 1), vmovl_high_u16(v75)), 8uLL);
        v83 = vpaddlq_u8(v109.val[0]);
        v84 = vpaddlq_u8(v109.val[1]);
        v109.val[0] = vld2_s8(v17);
        v17 += 16;
        *v65.i8 = vaddhn_s16(v81, vmulq_n_s16(v77, v28.i16[0]));
        *v67.i8 = vaddhn_s16(v82, vmulq_n_s16(v79, v28.i16[0]));
        v85 = vpaddlq_u8(v109.val[2]);
        v86 = vpaddlq_u8(v109.val[3]);
        *v22 = vaddhn_s16(v80, vmulq_n_s16(v76, v28.i16[0]));
        v22[1] = *v65.i8;
        v22 += 2;
        *v25 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v68, *v60.i8, *v28.i8, 1), vmovl_u16(*v74.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v69, v60, *v28.i8, 1), vmovl_high_u16(v74)), 8uLL), vmulq_n_s16(v78, v28.i16[0]));
        v25[1] = *v67.i8;
        v25 += 2;
        v109.val[2] = vmovl_u8(*v109.val[0].i8);
        v109.val[3] = vmovl_u8(*v109.val[1].i8);
        v108.val[0] = vaddq_s16(vpaddlq_u8(v108.val[0]), v83);
        v108.val[1] = vaddq_s16(vpaddlq_u8(v108.val[1]), v84);
        v72.i64[0] = 0x1000000010000;
        v72.i64[1] = 0x1000000010000;
        v83.i64[0] = 0x1000000010000;
        v83.i64[1] = 0x1000000010000;
        v74.i64[0] = 0x1000000010000;
        v74.i64[1] = 0x1000000010000;
        v84.i64[0] = 0x1000000010000;
        v84.i64[1] = 0x1000000010000;
        v108.val[0] = vshrq_n_u16(v108.val[0], 2uLL);
        v108.val[1] = vshrq_n_u16(v108.val[1], 2uLL);
        v108.val[2] = vshrq_n_u16(vaddq_s16(vpaddlq_u8(v108.val[2]), v85), 2uLL);
        v108.val[3] = vshrq_n_u16(vaddq_s16(vpaddlq_u8(v108.val[3]), v86), 2uLL);
        v9 = vmlsl_high_lane_u16(v83, v108.val[3], *v28.i8, 1);
        v10 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(vmull_lane_s16(*v108.val[0].i8, 0xF6D4D0F83838DAC4, 1), *v108.val[1].i8, 0xF6D4D0F83838DAC4, 0), *v108.val[2].i8, v28, 7), *v108.val[3].i8, *v28.i8, 3);
        --i;
        *v109.val[0].i8 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmovl_u16(*v109.val[2].i8), vmlsl_lane_u16(v72, *v108.val[3].i8, *v28.i8, 1)), 8uLL), vmulq_s32(vmovl_high_u16(v109.val[2]), v9), 8uLL), vmulq_n_s16(vshrn_high_n_s32(vshrn_n_s32(v10, 0xFuLL), vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v108.val[0], 0xF6D4D0F83838DAC4, 1), v108.val[1], 0xF6D4D0F83838DAC4, 0), v108.val[2], v28, 7), v108.val[3], *v28.i8, 3), 0xFuLL), v28.i16[0]));
        *v109.val[1].i8 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmovl_u16(*v109.val[3].i8), vmlsl_lane_u16(v74, *v108.val[3].i8, *v28.i8, 1)), 8uLL), vmulq_s32(vmovl_high_u16(v109.val[3]), vmlsl_high_lane_u16(v84, v108.val[3], *v28.i8, 1)), 8uLL), vmulq_n_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v108.val[0].i8, 0xF6D4D0F83838DAC4, 3), *v108.val[1].i8, 0xF6D4D0F83838DAC4, 2), *v108.val[2].i8, 0xF6D4D0F83838DAC4, 1), *v108.val[3].i8, *v28.i8, 3), 0xFuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v108.val[0], 0xF6D4D0F83838DAC4, 3), v108.val[1], 0xF6D4D0F83838DAC4, 2), v108.val[2], 0xF6D4D0F83838DAC4, 1), v108.val[3], *v28.i8, 3), 0xFuLL), v28.i16[0]));
        *v24 = vzip1_s8(*v109.val[0].i8, *v109.val[1].i8);
        v24[1] = vzip2_s8(*v109.val[0].i8, *v109.val[1].i8);
      }

      v87 = v12 & 7;
      if ((v12 & 7) != 0)
      {
        do
        {
          v88 = *v13;
          v13 += 8;
          v89 = v88;
          v90 = *v14;
          v14 += 8;
          v91 = vuzp1_s8(v89, v90);
          v92 = vuzp2_s8(v89, v90);
          v93 = vmovl_u8(vuzp1_s8(v91, v92));
          v94 = vmovl_u8(vuzp2_s8(v91, v92));
          v90.i16[0] = v16->i16[0];
          v16 = (v16 + 2);
          v92.i16[0] = v90.i16[0];
          v92.i16[1] = v18->i16[0];
          v18 = (v18 + 2);
          v95.i64[0] = 0x1000000010000;
          v95.i64[1] = 0x1000000010000;
          v96 = vpadd_s16(*v93.i8, *v93.i8);
          v97 = vpadd_s16(v93.u64[1], v93.u64[1]);
          v98 = vpadd_s16(*v94.i8, *v94.i8);
          v99 = vpadd_s16(v94.u64[1], v94.u64[1]);
          v100 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v93.i8, v28, 6), v93.u64[1], v28, 5), *v94.i8, v28, 4), v94.u64[1], *v28.i8, 2);
          v101 = vshr_n_u16(vpadd_s16(v96, v96), 2uLL);
          v102 = vshr_n_u16(vpadd_s16(v97, v97), 2uLL);
          v103 = vshr_n_u16(vpadd_s16(v98, v98), 2uLL);
          v104 = vshr_n_u16(vpadd_s16(v99, v99), 2uLL);
          v90.i16[0] = *v17;
          v17 += 2;
          v9.i16[0] = v90.i16[0];
          v9.i64[0] = vmovl_u16(*&vmovl_u8(*v9.i8)).u64[0];
          *v100.i8 = vadd_s16(vmul_n_s16(vshrn_n_s32(v100, 0xFuLL), v28.i16[0]), vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v95, v94.u64[1], *v28.i8, 1), vmovl_u16(*&vmovl_u8(v92))), 8uLL));
          v100.i32[0] = vshrn_n_s16(v100, 8uLL).u32[0];
          v22->i16[0] = v100.i16[0];
          v22 = (v22 + 2);
          v25->i16[0] = v100.i16[1];
          v25 = (v25 + 2);
          v105 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(vmull_lane_s16(v101, 0xF6D4D0F83838DAC4, 1), v102, 0xF6D4D0F83838DAC4, 0), v103, v28, 7), v104, *v28.i8, 3);
          v106 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v101, 0xF6D4D0F83838DAC4, 3), v102, 0xF6D4D0F83838DAC4, 2), v103, 0xF6D4D0F83838DAC4, 1), v104, *v28.i8, 3);
          v10.i64[0] = 0x1000000010000;
          v105.i32[1] = v106.i32[0];
          v10 = vmlsl_lane_u16(v10, v104, *v28.i8, 1);
          *v105.i8 = vshrn_n_s32(v105, 0xFuLL);
          *v10.i8 = vmul_s32(*v9.i8, *v10.i8);
          *v106.i8 = vadd_s16(vshrn_n_s32(v10, 8uLL), *&vmulq_n_s16(v105, v28.i16[0]));
          v24->i16[0] = vshrn_n_s16(v106, 8uLL).u16[0];
          v24 = (v24 + 2);
          --v87;
        }

        while (v87);
      }

      --v11;
      v22 = (v22 + v26);
      v25 = (v25 + v26);
      v24 = (v24 + v27);
      v13 += v15;
      v14 += v15;
      v16 = (v16 + v19);
      v18 = (v18 + v19);
      v17 += v20;
    }

    while (v11);
  }

  return 0;
}

uint64_t bvc_SimpleMixing_32BGRA_420v709_420v709_arm(uint64_t a1, uint64_t a2, void *a3, const char **a4, void *a5, uint8x16_t **a6, uint64_t *a7, int8x8_t **a8, float a9)
{
  v11 = a2 >> 1;
  if (v11)
  {
    v12 = a1 >> 1;
    v28.i16[0] = vcvts_n_u32_f32(a9, 8uLL);
    v28.i16[1] = (v28.u16[0] << 8) / 0xFFu;
    v13 = *a4;
    v14 = &(*a4)[*a3];
    v15 = 2 * *a3 - 8 * v12;
    v16 = *a6;
    v17 = a6[1];
    v18 = (*a6 + *a5);
    v19 = 2 * *a5 - 2 * v12;
    v20 = a5[1] - 2 * v12;
    v21 = *a7;
    v22 = *a8;
    v23 = a7[1];
    v24 = a8[1];
    v25 = (v22 + *a7);
    v26 = 2 * v21 - 2 * v12;
    v27 = v23 - 2 * v12;
    v28.i32[1] = 1082132552;
    v28.i64[1] = 0xF31E07F04E9F175FLL;
    do
    {
      for (i = v12 >> 3; i; v24 += 2)
      {
        v108 = vld4q_s8(v13);
        v13 += 64;
        v109 = vld4q_s8(v14);
        v14 += 64;
        v30 = vmovl_u8(*v108.val[0].i8);
        v31 = vmovl_high_u8(v108.val[0]);
        v32 = vmovl_u8(*v108.val[1].i8);
        v33 = vmovl_high_u8(v108.val[1]);
        v34 = vmovl_u8(*v109.val[0].i8);
        v35 = vmovl_high_u8(v109.val[0]);
        v36 = vmovl_u8(*v109.val[1].i8);
        v37 = vmovl_high_u8(v109.val[1]);
        v38 = vmull_laneq_s16(*v30.i8, v28, 6);
        v39 = vmull_high_laneq_s16(v30, v28, 6);
        v40 = vmull_laneq_s16(*v31.i8, v28, 6);
        v41 = vmull_high_laneq_s16(v31, v28, 6);
        v42 = vmull_laneq_s16(*v34.i8, v28, 6);
        v43 = vmull_high_laneq_s16(v34, v28, 6);
        v44 = vmull_laneq_s16(*v35.i8, v28, 6);
        v45 = vmull_high_laneq_s16(v35, v28, 6);
        v46 = vmovl_u8(*v108.val[2].i8);
        v47 = vmovl_high_u8(v108.val[2]);
        v48 = vmovl_u8(*v109.val[2].i8);
        v49 = vmovl_high_u8(v109.val[2]);
        v50 = vmlal_laneq_s16(v38, *v32.i8, v28, 5);
        v51 = vmlal_high_laneq_s16(v39, v32, v28, 5);
        v52 = vmlal_laneq_s16(v40, *v33.i8, v28, 5);
        v53 = vmlal_high_laneq_s16(v41, v33, v28, 5);
        v54 = vmlal_laneq_s16(v42, *v36.i8, v28, 5);
        v55 = vmlal_high_laneq_s16(v43, v36, v28, 5);
        v56 = vmlal_laneq_s16(v44, *v37.i8, v28, 5);
        v57 = vmlal_high_laneq_s16(v45, v37, v28, 5);
        v58 = vmovl_u8(*v108.val[3].i8);
        v59 = vmovl_high_u8(v108.val[3]);
        v60 = vmovl_u8(*v109.val[3].i8);
        v61 = vmovl_high_u8(v109.val[3]);
        v62 = *v16++;
        v63 = *v18++;
        v64 = vmlal_laneq_s16(v50, *v46.i8, v28, 4);
        v65 = vmlal_high_laneq_s16(v51, v46, v28, 4);
        v66 = vmlal_laneq_s16(v52, *v47.i8, v28, 4);
        v67 = vmlal_high_laneq_s16(v53, v47, v28, 4);
        v68 = vmlal_laneq_s16(v54, *v48.i8, v28, 4);
        v69 = vmlal_high_laneq_s16(v55, v48, v28, 4);
        v70 = vmlal_laneq_s16(v56, *v49.i8, v28, 4);
        v71 = vmlal_high_laneq_s16(v57, v49, v28, 4);
        v72 = vmovl_u8(*v62.i8);
        v73 = vmovl_high_u8(v62);
        v74 = vmovl_u8(*v63.i8);
        v75 = vmovl_high_u8(v63);
        v76 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v64, *v58.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v65, v58, *v28.i8, 2), 0xFuLL);
        v77 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v66, *v59.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v67, v59, *v28.i8, 2), 0xFuLL);
        v78 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v68, *v60.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v69, v60, *v28.i8, 2), 0xFuLL);
        v79 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v70, *v61.i8, *v28.i8, 2), 0xFuLL), vmlal_high_lane_s16(v71, v61, *v28.i8, 2), 0xFuLL);
        v64.i64[0] = 0x1000000010000;
        v64.i64[1] = 0x1000000010000;
        v65.i64[0] = 0x1000000010000;
        v65.i64[1] = 0x1000000010000;
        v66.i64[0] = 0x1000000010000;
        v66.i64[1] = 0x1000000010000;
        v67.i64[0] = 0x1000000010000;
        v67.i64[1] = 0x1000000010000;
        v68.i64[0] = 0x1000000010000;
        v68.i64[1] = 0x1000000010000;
        v69.i64[0] = 0x1000000010000;
        v69.i64[1] = 0x1000000010000;
        v70.i64[0] = 0x1000000010000;
        v70.i64[1] = 0x1000000010000;
        v71.i64[0] = 0x1000000010000;
        v71.i64[1] = 0x1000000010000;
        v80 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v64, *v58.i8, *v28.i8, 1), vmovl_u16(*v72.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v65, v58, *v28.i8, 1), vmovl_high_u16(v72)), 8uLL);
        v81 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v66, *v59.i8, *v28.i8, 1), vmovl_u16(*v73.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v67, v59, *v28.i8, 1), vmovl_high_u16(v73)), 8uLL);
        v82 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v70, *v61.i8, *v28.i8, 1), vmovl_u16(*v75.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v71, v61, *v28.i8, 1), vmovl_high_u16(v75)), 8uLL);
        v83 = vpaddlq_u8(v109.val[0]);
        v84 = vpaddlq_u8(v109.val[1]);
        v109.val[0] = vld2_s8(v17);
        v17 += 16;
        *v65.i8 = vaddhn_s16(v81, vmulq_n_s16(v77, v28.i16[0]));
        *v67.i8 = vaddhn_s16(v82, vmulq_n_s16(v79, v28.i16[0]));
        v85 = vpaddlq_u8(v109.val[2]);
        v86 = vpaddlq_u8(v109.val[3]);
        *v22 = vaddhn_s16(v80, vmulq_n_s16(v76, v28.i16[0]));
        v22[1] = *v65.i8;
        v22 += 2;
        *v25 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v68, *v60.i8, *v28.i8, 1), vmovl_u16(*v74.i8)), 8uLL), vmulq_s32(vmlsl_high_lane_u16(v69, v60, *v28.i8, 1), vmovl_high_u16(v74)), 8uLL), vmulq_n_s16(v78, v28.i16[0]));
        v25[1] = *v67.i8;
        v25 += 2;
        v109.val[2] = vmovl_u8(*v109.val[0].i8);
        v109.val[3] = vmovl_u8(*v109.val[1].i8);
        v108.val[0] = vaddq_s16(vpaddlq_u8(v108.val[0]), v83);
        v108.val[1] = vaddq_s16(vpaddlq_u8(v108.val[1]), v84);
        v72.i64[0] = 0x1000000010000;
        v72.i64[1] = 0x1000000010000;
        v83.i64[0] = 0x1000000010000;
        v83.i64[1] = 0x1000000010000;
        v74.i64[0] = 0x1000000010000;
        v74.i64[1] = 0x1000000010000;
        v84.i64[0] = 0x1000000010000;
        v84.i64[1] = 0x1000000010000;
        v108.val[0] = vshrq_n_u16(v108.val[0], 2uLL);
        v108.val[1] = vshrq_n_u16(v108.val[1], 2uLL);
        v108.val[2] = vshrq_n_u16(vaddq_s16(vpaddlq_u8(v108.val[2]), v85), 2uLL);
        v108.val[3] = vshrq_n_u16(vaddq_s16(vpaddlq_u8(v108.val[3]), v86), 2uLL);
        v9 = vmlsl_high_lane_u16(v83, v108.val[3], *v28.i8, 1);
        v10 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(vmull_lane_s16(*v108.val[0].i8, 0xFADBCCEF3838D4ABLL, 1), *v108.val[1].i8, 0xFADBCCEF3838D4ABLL, 0), *v108.val[2].i8, v28, 7), *v108.val[3].i8, *v28.i8, 3);
        --i;
        *v109.val[0].i8 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmovl_u16(*v109.val[2].i8), vmlsl_lane_u16(v72, *v108.val[3].i8, *v28.i8, 1)), 8uLL), vmulq_s32(vmovl_high_u16(v109.val[2]), v9), 8uLL), vmulq_n_s16(vshrn_high_n_s32(vshrn_n_s32(v10, 0xFuLL), vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v108.val[0], 0xFADBCCEF3838D4ABLL, 1), v108.val[1], 0xFADBCCEF3838D4ABLL, 0), v108.val[2], v28, 7), v108.val[3], *v28.i8, 3), 0xFuLL), v28.i16[0]));
        *v109.val[1].i8 = vaddhn_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(vmovl_u16(*v109.val[3].i8), vmlsl_lane_u16(v74, *v108.val[3].i8, *v28.i8, 1)), 8uLL), vmulq_s32(vmovl_high_u16(v109.val[3]), vmlsl_high_lane_u16(v84, v108.val[3], *v28.i8, 1)), 8uLL), vmulq_n_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v108.val[0].i8, 0xFADBCCEF3838D4ABLL, 3), *v108.val[1].i8, 0xFADBCCEF3838D4ABLL, 2), *v108.val[2].i8, 0xFADBCCEF3838D4ABLL, 1), *v108.val[3].i8, *v28.i8, 3), 0xFuLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v108.val[0], 0xFADBCCEF3838D4ABLL, 3), v108.val[1], 0xFADBCCEF3838D4ABLL, 2), v108.val[2], 0xFADBCCEF3838D4ABLL, 1), v108.val[3], *v28.i8, 3), 0xFuLL), v28.i16[0]));
        *v24 = vzip1_s8(*v109.val[0].i8, *v109.val[1].i8);
        v24[1] = vzip2_s8(*v109.val[0].i8, *v109.val[1].i8);
      }

      v87 = v12 & 7;
      if ((v12 & 7) != 0)
      {
        do
        {
          v88 = *v13;
          v13 += 8;
          v89 = v88;
          v90 = *v14;
          v14 += 8;
          v91 = vuzp1_s8(v89, v90);
          v92 = vuzp2_s8(v89, v90);
          v93 = vmovl_u8(vuzp1_s8(v91, v92));
          v94 = vmovl_u8(vuzp2_s8(v91, v92));
          v90.i16[0] = v16->i16[0];
          v16 = (v16 + 2);
          v92.i16[0] = v90.i16[0];
          v92.i16[1] = v18->i16[0];
          v18 = (v18 + 2);
          v95.i64[0] = 0x1000000010000;
          v95.i64[1] = 0x1000000010000;
          v96 = vpadd_s16(*v93.i8, *v93.i8);
          v97 = vpadd_s16(v93.u64[1], v93.u64[1]);
          v98 = vpadd_s16(*v94.i8, *v94.i8);
          v99 = vpadd_s16(v94.u64[1], v94.u64[1]);
          v100 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmull_laneq_s16(*v93.i8, v28, 6), v93.u64[1], v28, 5), *v94.i8, v28, 4), v94.u64[1], *v28.i8, 2);
          v101 = vshr_n_u16(vpadd_s16(v96, v96), 2uLL);
          v102 = vshr_n_u16(vpadd_s16(v97, v97), 2uLL);
          v103 = vshr_n_u16(vpadd_s16(v98, v98), 2uLL);
          v104 = vshr_n_u16(vpadd_s16(v99, v99), 2uLL);
          v90.i16[0] = *v17;
          v17 += 2;
          v9.i16[0] = v90.i16[0];
          v9.i64[0] = vmovl_u16(*&vmovl_u8(*v9.i8)).u64[0];
          *v100.i8 = vadd_s16(vmul_n_s16(vshrn_n_s32(v100, 0xFuLL), v28.i16[0]), vshrn_n_s32(vmulq_s32(vmlsl_lane_u16(v95, v94.u64[1], *v28.i8, 1), vmovl_u16(*&vmovl_u8(v92))), 8uLL));
          v100.i32[0] = vshrn_n_s16(v100, 8uLL).u32[0];
          v22->i16[0] = v100.i16[0];
          v22 = (v22 + 2);
          v25->i16[0] = v100.i16[1];
          v25 = (v25 + 2);
          v105 = vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(vmull_lane_s16(v101, 0xFADBCCEF3838D4ABLL, 1), v102, 0xFADBCCEF3838D4ABLL, 0), v103, v28, 7), v104, *v28.i8, 3);
          v106 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v101, 0xFADBCCEF3838D4ABLL, 3), v102, 0xFADBCCEF3838D4ABLL, 2), v103, 0xFADBCCEF3838D4ABLL, 1), v104, *v28.i8, 3);
          v10.i64[0] = 0x1000000010000;
          v105.i32[1] = v106.i32[0];
          v10 = vmlsl_lane_u16(v10, v104, *v28.i8, 1);
          *v105.i8 = vshrn_n_s32(v105, 0xFuLL);
          *v10.i8 = vmul_s32(*v9.i8, *v10.i8);
          *v106.i8 = vadd_s16(vshrn_n_s32(v10, 8uLL), *&vmulq_n_s16(v105, v28.i16[0]));
          v24->i16[0] = vshrn_n_s16(v106, 8uLL).u16[0];
          v24 = (v24 + 2);
          --v87;
        }

        while (v87);
      }

      --v11;
      v22 = (v22 + v26);
      v25 = (v25 + v26);
      v24 = (v24 + v27);
      v13 += v15;
      v14 += v15;
      v16 = (v16 + v19);
      v18 = (v18 + v19);
      v17 += v20;
    }

    while (v11);
  }

  return 0;
}

uint64_t WuLaQ4nIoKwZC7KxU(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16920 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * (dword_1EAF16920 ^ 0x30 ^ dword_1EAF16720))] ^ 0x8F]) + 109];
  v2 = off_1F0B1A830;
  v3 = off_1F0B1A3F0 - 12;
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + *v1) ^ 0x30))) ^ 0x9Au) - 12) ^ (91 * ((dword_1EAF16720 + *v1) ^ 0x30))) - 65];
  v5 = (*(v4 - 4) ^ *v1) - &v8;
  *v1 = 636859739 * (v5 + 0x1D38D65F7E9650D0);
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v6 = 566710099 * ((2 * (&v9 & 0x629CC6D62A13DB58) - &v9 + 0x1D633929D5EC24A7) ^ 0xE2EBD7FB59A97C2BLL);
  v9 = a1 + (~(2 * a1) | 0x3F2124CE99CABDEFLL) - v6 - 0x1F9092674CE55EF7;
  v11 = v6 ^ 0x108F;
  LOBYTE(v4) = 91 * ((*(v4 - 1) - *v1) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16920) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 - dword_1EAF16920) ^ 0x30))] ^ 0x1D]) - 102][8 * (v4 ^ v3[v2[v4] ^ 0xE9]) + 51312])(&v9);
  return (v10 - 1237465637);
}

uint64_t at7Z1NwMd(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF166B0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF166B0) ^ 0x30))] ^ 0x86]) + 15];
  v4 = 91 * ((dword_1EAF16720 + *v3) ^ 0x30);
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v4 - 8) ^ 0x5Du) - 8) ^ v4) + 43];
  v6 = (*(v5 - 4) - *v3) ^ &v11;
  *v3 = 636859739 * v6 - 0x1D38D65F7E9650D0;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  v7 = (a1 ^ 0xEEFF657BF3FCFD5BLL) + 0x5FC5FBFFFFFBEEA6 + ((2 * a1) & 0xDDFECAF7E7F9FAB6);
  v8 = (a3 ^ 0xFFA2DFFE) + ((2 * a3) & 0xFF45BFFC);
  v9 = 1311869473 * ((~v12 & 0xA1FF082D2B86D2F2 | v12 & 0x5E00F7D2D4792D0DLL) ^ 0x1250DF78C069C85ELL);
  v12[0] = v8 - v9 + 444414546;
  v12[1] = 5774 - v9;
  v13 = a2;
  v14 = v9 ^ v7;
  LODWORD(v3) = 636859739 * (*v3 ^ 0x8169AF30 ^ *(v5 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF166B0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF166B0) ^ 0x30))] ^ 0xB9]) - 28][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v3) ^ 0xF5u) - 12) ^ v3) + 53208])(v12);
  return (v12[2] - 1237465637);
}

uint64_t fM8WJGMFB()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16638 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16638 ^ 0x30 ^ dword_1EAF16720))] ^ 0x9A]) + 34];
  v1 = *(v0 - 4);
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v1 ^ dword_1EAF16720 ^ 0x30))) ^ 0xEFu) - 12) ^ (91 * (v1 ^ dword_1EAF16720 ^ 0x30))) - 120];
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 636859739 * v3 + 0x768A6804525E3610;
  *(v2 - 4) = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  v7 = 122 - 9 * ((v6 - 2 * (v6 & 0xB5) - 75) ^ 0xE4);
  v6[0] = (1466156297 * ((v6 - 2 * (v6 & 0x545F99B5) + 1415551413) ^ 0x87E819E4)) ^ 0x1468;
  LOBYTE(v2) = 91 * (*(v0 - 1) ^ 0x30 ^ *(v2 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16638) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16638) ^ 0x30))] ^ 0x6F]) - 9][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v2 - 8) ^ 0x6Fu) - 8) ^ v2) + 52328])(v6);
  return (v6[1] - 1237465637);
}

uint64_t xznuOJnBntNZhCW(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16668) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16668) ^ 0x30))] ^ 0xB9]) - 64];
  v4 = off_1F0B1A830;
  v5 = off_1F0B1A3F0 - 12;
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v3) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 - *v3) ^ 0x30))) + 7];
  v7 = *(v6 - 4) - *v3 - &v9;
  *v3 = 636859739 * v7 + 0x1D38D65F7E9650D0;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  LODWORD(v7) = 1427277979 * (&v10 ^ 0x50514D68);
  v13 = a1;
  v12 = v7 ^ a3;
  v14 = v7 + 3355;
  v11 = a2;
  LOBYTE(v6) = 91 * ((*(v6 - 1) - *v3) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16668) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 - dword_1EAF16668) ^ 0x30))] ^ 0xF9]) + 82][8 * (v6 ^ v5[v4[v6] ^ 0xB9]) + 52232])(&v10);
  return v10;
}

uint64_t C6vOmPSMmdHG7(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16790) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16790) ^ 0x30))] ^ 0xF5]) + 85];
  v2 = off_1F0B1A830;
  v3 = off_1F0B1A3F0 - 12;
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) + 45];
  v5 = &v7[*(v4 - 4) - *v1];
  *v1 = 636859739 * (v5 + 0x1D38D65F7E9650D0);
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  LODWORD(v5) = 346387183 * ((-2 - ((~v8 | 0x6CA134B5) + (v8 | 0x935ECB4A))) ^ 0xE9C9E165);
  v8[0] = v5 + 87;
  v10 = a1;
  v11 = 3956 - v5;
  LOBYTE(v4) = 91 * ((*(v4 - 1) - *v1) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16790 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16790 ^ 0x30 ^ dword_1EAF16720))] ^ 0x6F]) - 9][8 * (v4 ^ v3[v2[v4] ^ 0x9A]) + 51936])(v8);
  return (v9 - 1237465637);
}

uint64_t EPCZHIbKRd3RN4()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16670) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF16670) ^ 0x30))] ^ 0x45]) + 148];
  v1 = off_1F0B1A660 - 8;
  v2 = off_1F0B1A1D8 - 8;
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (*v0 ^ dword_1EAF16720 ^ 0x30)) - 8) ^ 0xCAu) - 8) ^ (91 * (*v0 ^ dword_1EAF16720 ^ 0x30))) - 84];
  v4 = *(v3 - 4) - *v0 - &v6;
  *v0 = 636859739 * (v4 + 0x1D38D65F7E9650D0);
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v7[0] = 1468321087 * ((v7 & 0x613BCBB1 | ~(v7 | 0x613BCBB1)) ^ 0x4A2B7520) + 2432;
  LOBYTE(v3) = 91 * ((*(v3 - 1) - *v0) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16670 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * (dword_1EAF16670 ^ 0x30 ^ dword_1EAF16720))] ^ 0x45]) + 99][8 * (v3 ^ v2[v1[v3] ^ 0x7D]) + 52864])(v7);
  return (v7[1] - 1237465637);
}

uint64_t yYL6hW9BuEShD(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16648) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16648) ^ 0x30))] ^ 0xB9]) - 13];
  v6 = *(v5 - 4);
  v7 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v6 ^ dword_1EAF16720 ^ 0x30))) ^ 0x9Au) - 12) ^ (91 * (v6 ^ dword_1EAF16720 ^ 0x30))) - 65];
  v8 = *(v7 - 4) - v6 - &v11;
  *(v5 - 4) = 636859739 * (v8 + 0x1D38D65F7E9650D0);
  *(v7 - 4) = 636859739 * (v8 ^ 0xE2C729A08169AF30);
  v9 = 891395573 * ((((v12 | 0xF30E266C) ^ 0xFFFFFFFE) - (~v12 | 0xCF1D993)) ^ 0x36DCC628);
  v12[0] = a1 - ((2 * a1) & 0x4849C968) - v9 + 606397620;
  v12[1] = 2272 - v9;
  v14 = a5;
  v15 = a4;
  v12[2] = v9 ^ ((a3 ^ 0xEFFADED0) + 1055911808 + ((2 * a3) & 0xDFF5BDA0));
  v13 = a2;
  LOBYTE(v5) = 91 * (*(v5 - 1) ^ 0x30 ^ *(v7 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16648) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 + dword_1EAF16648) ^ 0x30))] ^ 0x1D]) - 102][8 * (*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v5 - 8) ^ 0x5Du) - 8) ^ v5) + 52504])(v12);
  return (v16 - 1237465637);
}

uint64_t BD56IdIsBgN3p(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF166A8) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF166A8) ^ 0x30))] ^ 0x7D]) + 128];
  v4 = 91 * ((dword_1EAF16720 - *v3) ^ 0x30);
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v4 - 8) ^ 0x5Du) - 8) ^ v4) + 43];
  v6 = (*(v5 - 4) ^ *v3) - &v9;
  *v3 = 636859739 * v6 + 0x1D38D65F7E9650D0;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  v7 = 583883621 * (((&v10 | 0xF2DEE33019559896) - &v10 + (&v10 & 0xD211CCFE6AA6768)) ^ 0x975958AB8664439);
  v15 = v7 ^ 0x192F;
  v12 = 0;
  v13 = a2;
  v17 = a1;
  v18 = 800366805 - v7;
  v19 = 0x64549B00DF4781BBLL - v7;
  v20 = a3;
  v14 = v7 - 0x5ECD6407869BE81ELL;
  v10 = v7 ^ 0x55395B31;
  v11 = (1429822258 - v7);
  LOBYTE(v3) = 91 * ((*(v5 - 1) + *v3) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF166A8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF166A8) ^ 0x30))] ^ 0xB9]) - 28][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v3) ^ 0xB9u) - 12) ^ v3) + 52152])(&v10);
  return (v16 - 1237465637);
}

uint64_t pMfUpmEM2xW(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164A0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF164A0) ^ 0x30))] ^ 0x75]) + 152];
  v4 = off_1F0B1A830;
  v5 = off_1F0B1A3F0 - 12;
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v3) ^ 0x30))) ^ 0xB9u) - 12) ^ (91 * ((dword_1EAF16720 - *v3) ^ 0x30))) - 29];
  v7 = (*(v6 - 4) - *v3) ^ &v10;
  *v3 = 636859739 * v7 + 0x768A6804525E3610;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  LODWORD(v7) = a3 - ((2 * a3) & 0xAD56FD3C);
  v8 = 891395573 * ((1371971740 - (v11 | 0x51C6A09C) + (v11 | 0xAE395F63)) ^ 0x941440D8);
  v14 = a1;
  v12 = a2;
  v15 = v7 - 693404002 + v8;
  v13 = v8 ^ 0xDF8EA2E5;
  LODWORD(v6) = 636859739 * ((*(v6 - 1) - *v3) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164A0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF164A0) ^ 0x30))] ^ 0x9A]) - 64][8 * (v6 ^ v5[v4[v6] ^ 0x86]) + 52928])(v11);
  return 4294924449;
}

uint64_t f8M4nz0rXT(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF167A0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF167A0) ^ 0x30))] ^ 0xF5]) + 111];
  v2 = *(v1 - 4);
  v3 = off_1F0B1A830;
  v4 = off_1F0B1A3F0 - 12;
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v2 ^ dword_1EAF16720 ^ 0x30))) ^ 0x75u) - 12) ^ (91 * (v2 ^ dword_1EAF16720 ^ 0x30))) + 62];
  v6 = &v8[*(v5 - 4) - v2];
  *(v1 - 4) = (636859739 * v6) ^ 0xE2C729A08169AF30;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  v9 = a1;
  v11 = (1864678469 * ((-360599962 - (&v9 | 0xEA81AE66) + (&v9 | 0x157E5199)) ^ 0x260E4670)) ^ 0xAAF;
  LOBYTE(v5) = 91 * (*(v1 - 1) ^ 0x30 ^ *(v5 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF167A0) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 - dword_1EAF167A0) ^ 0x30))] ^ 0x45]) + 99][8 * (v5 ^ v4[v3[v5] ^ 0xB9]) + 52328])(&v9);
  return v10 ^ 0xB639C7C3;
}

uint64_t CTqR20dAIbQ7rRXM(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164C0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF164C0) ^ 0x30))] ^ 0xB9]) - 87];
  v10 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v9) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - *v9) ^ 0x30))) - 139];
  v11 = &v14[*v9 + *(v10 - 4)];
  *v9 = (636859739 * v11) ^ 0xE2C729A08169AF30;
  *(v10 - 4) = 636859739 * (v11 ^ 0xE2C729A08169AF30);
  LODWORD(v11) = 1864678469 * ((((2 * v15) | 0xC37EA48) - v15 - 102495524) ^ 0x356BE2CD);
  v17 = a7;
  v18 = a1;
  v21 = (a2 ^ 0xFFB9FAE2) + ((2 * a2) & 0xFF73F5C4) - v11 + 804777310;
  v20 = a8;
  v22 = a9;
  v23 = 3224 - v11;
  v24 = v11 ^ ((a4 ^ 0x2FBFFEF3) - 923315 + ((2 * a4) & 0x5F7FFDE6));
  v25 = a6 - ((2 * a6) & 0x16AA6D56) - v11 - 1957349717;
  v19 = 58 - 69 * ((((2 * v15) | 0x48) - v15 - 36) ^ 0xCD);
  v15[0] = a3;
  v15[1] = a5;
  v12 = 636859739 * (*v9 ^ 0x8169AF30 ^ *(v10 - 1));
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF164C0 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF164C0 ^ 0x30 ^ dword_1EAF16720))] ^ 0x9A]) - 64][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v12 - 8) ^ 0x45u) - 4) ^ v12) + 53488])(v15);
  return (v16 - 1237465637);
}

uint64_t xUyIiUiS1XwJ8aERoPC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = (&off_1F0B1A0C0)[((91 * (dword_1EAF167A8 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF167A8 ^ 0x30 ^ dword_1EAF16720))] ^ 0x7D]) + 149];
  v5 = *(v4 - 4);
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v5 ^ dword_1EAF16720 ^ 0x30))) ^ 0x86u) - 12) ^ (91 * (v5 ^ dword_1EAF16720 ^ 0x30))) + 45];
  v7 = (*(v6 - 4) - v5) ^ &v9;
  *(v4 - 4) = 636859739 * (v7 + 0x1D38D65F7E9650D0);
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  v14 = a2;
  v15 = a1;
  v13 = a3;
  v10 = a4;
  v11 = 1468321087 * ((&v10 & 0xA51ADCFF | ~(&v10 | 0xA51ADCFF)) ^ 0x8E0A626E) + 1047850486;
  v12 = 1468321087 * ((&v10 & 0xA51ADCFF | ~(&v10 | 0xA51ADCFF)) ^ 0x8E0A626E);
  LOBYTE(v6) = 91 * ((*(v6 - 1) + *(v4 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF167A8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF167A8) ^ 0x30))] ^ 0xF5]) + 8][8 * (*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v6 - 8) ^ 0x5Du) - 8) ^ v6) + 53296])(&v10);
  return 4294924449;
}

uint64_t V2qUlL4PZ5VKVXDsUHg5z(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * (dword_1EAF166A0 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF166A0 ^ 0x30 ^ dword_1EAF16720))] ^ 0xE3]) - 21];
  v6 = *(v5 - 4);
  v7 = off_1F0B1A830;
  v8 = off_1F0B1A3F0 - 12;
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - v6) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 - v6) ^ 0x30))) + 7];
  v10 = v6 - &v14 + *(v9 - 4);
  *(v5 - 4) = (636859739 * v10) ^ 0xE2C729A08169AF30;
  *(v9 - 4) = 636859739 * (v10 ^ 0xE2C729A08169AF30);
  LODWORD(v10) = (a2 ^ 0xB7FCEFBA) + ((2 * a2) & 0x6FF9DF74);
  v11 = a4 - ((2 * a4) & 0x125A8E90) - 1993521336;
  v12 = 891395573 * (((v15 | 0xEC94A4CA) - (v15 & 0xEC94A4CA)) ^ 0xD6B9BB71);
  v15[0] = v10 - v12 + 1591178848;
  v20 = a5;
  v16 = a3;
  v17 = a1;
  v18 = v12 ^ v11;
  v19 = 3879 - v12;
  LOBYTE(v5) = 91 * ((*(v9 - 1) - *(v5 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF166A0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF166A0) ^ 0x30))] ^ 0x30]) + 27][8 * (v5 ^ v8[v7[v5] ^ 0xEF]) + 52040])(v15);
  return (v15[1] - 1237465637);
}

uint64_t W296voTQg1mC5(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16910) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF16910) ^ 0x30))] ^ 0x45]) + 35];
  v3 = off_1F0B1A830;
  v4 = off_1F0B1A3F0 - 12;
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v2 ^ dword_1EAF16720 ^ 0x30))) ^ 0x30u) - 12) ^ (91 * (*v2 ^ dword_1EAF16720 ^ 0x30))) + 26];
  v6 = 636859739 * (((*(v5 - 4) ^ *v2) - &v9) ^ 0xE2C729A08169AF30);
  *v2 = v6;
  *(v5 - 4) = v6;
  v7 = 566710099 * ((((2 * &v10) | 0xED14C372) - &v10 + 158703175) ^ 0x7ACF3935);
  v10 = a1;
  v11 = v7 - 1056166977;
  v12 = (a2 ^ 0xB74CF65E) + ((2 * a2) & 0x6E99ECBC) - v7 + 1879014384;
  LOBYTE(v5) = 91 * ((*(v5 - 1) - *v2) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16910) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16910) ^ 0x30))] ^ 0xE9]) - 138][8 * (v5 ^ v4[v3[v5] ^ 0x30]) + 52640])(&v10);
  return 4294924449;
}

uint64_t G9mia9EJCQ0e2Cp3QPbO()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16788) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16788) ^ 0x30))] ^ 0xEF]) - 9];
  v1 = *(v0 - 4);
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 + v1) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_1EAF16720 + v1) ^ 0x30))) + 98];
  v3 = (*(v2 - 4) ^ v1) - &v5;
  *(v0 - 4) = 636859739 * v3 + 0x1D38D65F7E9650D0;
  *(v2 - 4) = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  v7 = 2138251548 - 1468321087 * ((((v6 | 0x23DA9DA6) ^ 0xFFFFFFFE) - (~v6 | 0xDC256259)) ^ 0x8CA2337);
  LOBYTE(v0) = 91 * (*(v0 - 1) ^ 0x30 ^ *(v2 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16788) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 - dword_1EAF16788) ^ 0x30))] ^ 0x45]) + 99][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v0) ^ 0xEFu) - 12) ^ v0) + 51640])(v6);
  return 0;
}

uint64_t uZOxRFTqHPWsyRz(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16770) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16770) ^ 0x30))] ^ 0x6F]) - 75];
  v3 = *(v2 - 4);
  v4 = off_1F0B1A830;
  v5 = off_1F0B1A3F0 - 12;
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - v3) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 - v3) ^ 0x30))) + 7];
  v7 = 636859739 * ((v3 - &v9 + *(v6 - 4)) ^ 0xE2C729A08169AF30);
  *(v2 - 4) = v7;
  *(v6 - 4) = v7;
  v11 = a2;
  v12 = a1;
  v10[0] = -2041212326 - 346387183 * ((v10 & 0xCD4409EA | ~(v10 | 0xCD4409EA)) ^ 0xB7D323C5);
  LOBYTE(v6) = 91 * (*(v2 - 1) ^ 0x30 ^ *(v6 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16770) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16770) ^ 0x30))] ^ 0x86]) + 46][8 * (v6 ^ v5[v4[v6] ^ 0xE9]) + 51568])(v10);
  return v10[1];
}

uint64_t ha7ppnUOLEXmQFTf5()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16488) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16488) ^ 0x30))] ^ 0x75]) + 143];
  v1 = off_1F0B1A830;
  v2 = off_1F0B1A3F0 - 12;
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v0 ^ dword_1EAF16720 ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * (*v0 ^ dword_1EAF16720 ^ 0x30))) + 7];
  v4 = &v6[*(v3 - 4) ^ *v0];
  *v0 = (636859739 * v4) ^ 0xE2C729A08169AF30;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v7 = 0;
  v8 = 2623 - 1427277979 * ((2 * (&v7 & 0x94670A8) - &v7 + 1991872341) ^ 0x26E8C23D);
  LODWORD(v3) = 636859739 * ((*(v3 - 1) - *v0) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16488) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16488) ^ 0x30))] ^ 0x86]) + 46][8 * (v3 ^ v2[v1[v3] ^ 0xEF]) + 51080])(&v7);
  return v9 ^ 0xB639C7C3;
}

uint64_t lgv67dUsckqCBq9YUoNoW(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16748) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16748) ^ 0x30))] ^ 0xCA]) - 63];
  v7 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + *v6) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 + *v6) ^ 0x30))) - 139];
  v8 = (*(v7 - 4) ^ *v6) - &v10;
  *v6 = 636859739 * v8 + 0x768A6804525E3610;
  *(v7 - 4) = 636859739 * (v8 ^ 0xE2C729A08169AF30);
  LODWORD(v8) = 1427277979 * (&v11 ^ 0x50514D68);
  v18 = v8 + a3;
  v14 = a4;
  v15 = v8 ^ 0xAE6F9CD;
  v11 = a1;
  v16 = a6;
  v12 = v8 + a5;
  v13 = v8 ^ a2;
  LOBYTE(v7) = 91 * ((*(v7 - 1) + *v6) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16748) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 - dword_1EAF16748) ^ 0x30))] ^ 0x1D]) - 102][8 * (*(off_1F0B1A428 + (*(off_1F0B1A250 + v7 - 8) ^ 0x8Fu) - 8) ^ v7) + 51840])(&v11);
  return v17;
}

uint64_t nS1Q9ljw9esy9(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF167B0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF167B0) ^ 0x30))] ^ 0x86]) + 67];
  v3 = 91 * ((dword_1EAF16720 - *v2) ^ 0x30);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + v3 - 8) ^ 0xF9u) - 4) ^ v3) + 81];
  v5 = &v7[*v2 + *(v4 - 4)];
  *v2 = 636859739 * v5 + 0x768A6804525E3610;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v8[1] = 912648571 * ((v8 - 1670119448 - 2 * (v8 & 0x9C73FFE8)) ^ 0x40BEB3DD) + 1869;
  v9 = a2;
  v10 = a1;
  LOBYTE(v4) = 91 * (*v2 ^ 0x30 ^ *(v4 - 1));
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF167B0 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF167B0 ^ 0x30 ^ dword_1EAF16720))] ^ 0xCA]) - 83][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v4) ^ 0x30u) - 12) ^ v4) + 52744])(v8);
  return v8[0];
}

uint64_t R7YTuVAR3AZZg93q5T()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16658) ^ 0x30)) ^ byte_196EC01C0[byte_196EC0070[(91 * ((dword_1EAF16720 + dword_1EAF16658) ^ 0x30))] ^ 0x5D]) + 85];
  v1 = off_1F0B1A830;
  v2 = off_1F0B1A3F0 - 12;
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v0) ^ 0x30))) ^ 0xEFu) - 12) ^ (91 * ((dword_1EAF16720 - *v0) ^ 0x30))) - 120];
  v4 = (*(v3 - 4) + *v0) ^ &v6;
  *v0 = 636859739 * v4 - 0x1D38D65F7E9650D0;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v8 = 2138251548 - 1468321087 * ((v7 & 0xC1E11003 | ~(v7 | 0xC1E11003)) ^ 0xEAF1AE92);
  LOBYTE(v3) = 91 * ((*(v3 - 1) - *v0) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16658 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16658 ^ 0x30 ^ dword_1EAF16720))] ^ 0x30]) + 27][8 * (v3 ^ v2[v1[v3] ^ 0xE9]) + 51488])(v7);
  return 0;
}

uint64_t gojqbvrX305gQO(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16970 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * (dword_1EAF16970 ^ 0x30 ^ dword_1EAF16720))] ^ 0x8F]) - 103];
  v3 = 91 * (*v2 ^ dword_1EAF16720 ^ 0x30);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A400 + (*(off_1F0B1A690 + v3 - 4) ^ 0x1Du) - 12) ^ v3) - 103];
  v5 = (*(v4 - 4) ^ *v2) - &v7;
  *v2 = 636859739 * v5 + 0x1D38D65F7E9650D0;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v8[0] = (1468321087 * ((((2 * (v8 ^ 0x34FBC041)) | 0x77642F8C) - (v8 ^ 0x34FBC041) + 1145956410) ^ 0x5BA696E9)) ^ 0x7AA489C1;
  v9 = a2;
  v10 = a1;
  LOBYTE(v4) = 91 * ((*(v4 - 1) + *v2) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16970) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16970) ^ 0x30))] ^ 0xB9]) - 28][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v4 - 8) ^ 0x45u) - 4) ^ v4) + 53088])(v8);
  return v8[1];
}

uint64_t sub_19633D9C8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164D8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF164D8) ^ 0x30))] ^ 0xB9]) - 133];
  v2 = *(v1 - 4);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 - v2) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_1EAF16720 - v2) ^ 0x30))) - 10];
  v4 = 636859739 * (&v6[*(v3 - 4) - v2] ^ 0xE2C729A08169AF30);
  *(v1 - 4) = v4;
  *(v3 - 4) = v4;
  v7 = a1;
  v8 = (912648571 * ((&v7 - 98434104 - 2 * (&v7 & 0xFA2203C8)) ^ 0x26EF4FFD)) ^ 0xFCFC27CE;
  LODWORD(v3) = 636859739 * ((*(v3 - 1) + *(v1 - 1)) ^ 0x8169AF30);
  return (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF164D8 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF164D8 ^ 0x30 ^ dword_1EAF16720))] ^ 0x9A]) - 64][8 * (*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v3 - 8) ^ 0x5Du) - 8) ^ v3) + 52400])(&v7);
}

uint64_t tQFLvn2B7sZg9oYAhp0R8Jz(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16478) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16478) ^ 0x30))] ^ 0x75]) + 123];
  v8 = *(v7 - 4);
  v9 = off_1F0B1A830;
  v10 = off_1F0B1A3F0 - 12;
  v11 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v8 ^ dword_1EAF16720 ^ 0x30))) ^ 0xB9u) - 12) ^ (91 * (v8 ^ dword_1EAF16720 ^ 0x30))) - 29];
  v12 = 636859739 * (((*(v11 - 4) ^ v8) - &v16) ^ 0xE2C729A08169AF30);
  *(v7 - 4) = v12;
  *(v11 - 4) = v12;
  v13 = v17 | 0x2B515DD7;
  v14 = 912648571 * ((v17 & 0x2B515DD7 | ~v13) ^ 0x863EE1D);
  v20 = a1;
  v19 = -912648571 * ((v17 & 0x2B515DD7 | ~v13) ^ 0x863EE1D) + 593404681 * a3 + 1074524517;
  v18 = a6;
  v21 = 1035309529 - v14;
  v22 = v14 + 543020369 * a2 + 2054291963;
  v23 = a4;
  v17[0] = a7 - ((2 * a7) & 0xDD129B32) - v14 + 1854492057;
  v17[1] = v14 ^ (a5 - ((2 * a5) & 0xF64AA0F8) + 2066043004);
  LODWORD(v7) = 636859739 * ((*(v11 - 1) - *(v7 - 1)) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16478) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16478) ^ 0x30))] ^ 0xEF]) - 119][8 * (v7 ^ v10[v9[v7] ^ 0xF5]) + 52368])(v17);
  return 4294924449;
}

uint64_t N1tFeTVrKXYK(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF166B8) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF166B8) ^ 0x30))] ^ 0x6F]) - 29];
  v6 = off_1F0B1A830;
  v7 = off_1F0B1A3F0 - 12;
  v8 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v5 ^ dword_1EAF16720 ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * (*v5 ^ dword_1EAF16720 ^ 0x30))) + 7];
  v9 = (*(v8 - 4) - *v5) ^ &v14;
  *v5 = (636859739 * v9) ^ 0xE2C729A08169AF30;
  *(v8 - 4) = 636859739 * (v9 ^ 0xE2C729A08169AF30);
  v13 = *a4;
  LODWORD(v9) = (a3 ^ 0xDF6F771F) + 666893824 + ((2 * a3) & 0xBEDEEE3E);
  v10 = 891395573 * (((v15 | 0xC4D1F524) - (v15 | 0x3B2E0ADB) + 992873179) ^ 0xFEFCEA9F);
  v17 = 0;
  v18 = 0;
  v20 = v10 + 2317;
  v21 = v10 ^ v9;
  v15[3] = 0;
  v15[4] = &v13;
  v19 = a2;
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = a1;
  v16 = -70 - -11 * (((v15 | 0x24) - (v15 | 0xDB) - 37) ^ 0x9F);
  LOBYTE(v5) = 91 * (*v5 ^ 0x30 ^ *(v8 - 1));
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF166B8 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF166B8 ^ 0x30 ^ dword_1EAF16720))] ^ 0xF5]) + 8][8 * (v5 ^ v7[v6[v5] ^ 0x30]) + 52608])(v15);
  v11 = v22;
  *a4 = v13;
  return (v11 - 1237465637);
}

uint64_t sub_19633E250(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164A8) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 - dword_1EAF164A8) ^ 0x30))] ^ 0x1D]) - 158];
  v2 = *(v1 - 4);
  v3 = (&off_1F0B1A0C0)[((91 * (v2 ^ dword_1EAF16720 ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * (v2 ^ dword_1EAF16720 ^ 0x30))] ^ 0x8F]) - 12];
  v4 = (*(v3 - 4) + v2) ^ &v6;
  *(v1 - 4) = 636859739 * (v4 + 0x1D38D65F7E9650D0);
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v8 = a1;
  v9 = 1864678469 * (((&v7 | 0x4304AB52) - (&v7 & 0x4304AB52)) ^ 0x7074BCBB) + 1693;
  LOBYTE(v1) = 91 * (*(v1 - 1) ^ 0x30 ^ *(v3 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164A8) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 + dword_1EAF164A8) ^ 0x30))] ^ 0x8F]) - 11][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v1) ^ 0xF5u) - 12) ^ v1) + 52544])(&v7);
  return v7;
}

uint64_t zMpzTxW41Kckl4a3h(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16978 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC01C0[byte_196EC0070[(91 * (dword_1EAF16978 ^ 0x30 ^ dword_1EAF16720))] ^ 0x5D]) + 123];
  v6 = *(v5 - 4);
  v7 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (v6 ^ dword_1EAF16720 ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * (v6 ^ dword_1EAF16720 ^ 0x30))) - 10];
  v8 = (*(v7 - 4) - v6) ^ &v11;
  *(v5 - 4) = 636859739 * v8 + 0x768A6804525E3610;
  *(v7 - 4) = 636859739 * (v8 ^ 0xE2C729A08169AF30);
  v9 = 346387183 * ((((2 * v12) | 0x14F4009C) - v12 - 175767630) ^ 0x8F12D59E);
  v13 = -17 * ((((2 * v12) | 0x9C) - v12 - 78) ^ 0x9E) + 49;
  v18 = a2;
  v15 = a1;
  v16 = a4;
  v17 = (a3 ^ 0x7BB3F991) + ((2 * a3) & 0xF767F322) - 276957184 + v9;
  v12[1] = 917 - v9;
  v14 = a5;
  LOBYTE(v5) = 91 * (*(v5 - 1) ^ 0x30 ^ *(v7 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16978) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 - dword_1EAF16978) ^ 0x30))] ^ 0x8F]) - 11][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v5) ^ 0x86u) - 12) ^ v5) + 53144])(v12);
  return (v12[0] - 1237465637);
}

uint64_t Nl4Hw2Sh0cWnSkP(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16678) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 + dword_1EAF16678) ^ 0x30))] ^ 0x8F]) + 11];
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) ^ 0xB9u) - 12) ^ (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) - 29];
  v3 = *(v2 - 4) - *v1 - &v6;
  *v1 = 636859739 * v3 + 0x768A6804525E3610;
  *(v2 - 4) = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  v4 = 346387183 * ((1121617880 - (v7 | 0x42DA87D8) + (v7 | 0xBD257827)) ^ 0x384DADF7);
  v7[0] = v4 ^ (a1 - ((2 * a1) & 0x3790BC82) - 1681367487);
  v7[2] = v4 ^ 0x455A94F9;
  LOBYTE(v2) = 91 * (*v1 ^ 0x30 ^ *(v2 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16678) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16678) ^ 0x30))] ^ 0x86]) + 46][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v2 - 8) ^ 0x45u) - 4) ^ v2) + 53080])(v7);
  return (v7[1] - 1237465637);
}

uint64_t sub_19633E8E4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164E8) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 + dword_1EAF164E8) ^ 0x30))] ^ 0x1D]) - 110];
  v2 = 91 * ((dword_1EAF16720 - *v1) ^ 0x30);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v2 - 8) ^ 0xCAu) - 8) ^ v2) - 84];
  v4 = (*(v3 - 4) - *v1) ^ &v6;
  *v1 = 636859739 * v4 + 0x1D38D65F7E9650D0;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v8 = (1468321087 * ((-1561270101 - (&v7 | 0xA2F0E8AB) + (&v7 | 0x5D0F1754)) ^ 0x89E0563A)) ^ 0x4E2E991C;
  v7 = a1;
  LOBYTE(v1) = 91 * ((*(v3 - 1) - *v1) ^ 0x30);
  return (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF164E8 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF164E8 ^ 0x30 ^ dword_1EAF16720))] ^ 0xCA]) - 83][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v1) ^ 0xB9u) - 12) ^ v1) + 51584])(&v7);
}

uint64_t sub_19633EAF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16740 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16740 ^ 0x30 ^ dword_1EAF16720))] ^ 0x30]) - 30];
  v14 = off_1F0B1A830;
  v15 = off_1F0B1A3F0 - 12;
  v16 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v13) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - *v13) ^ 0x30))) - 139];
  v17 = &v20[*(v16 - 4) - *v13];
  *v13 = (636859739 * v17) ^ 0xE2C729A08169AF30;
  *(v16 - 4) = 636859739 * (v17 ^ 0xE2C729A08169AF30);
  v18 = 1384597421 * (((v21 | 0xD96B56D8D51E9619) - (v21 | 0x2694A9272AE169E6) + 0x2694A9272AE169E6) ^ 0xAF168EB737D0CF60);
  v29 = a3 - ((2 * a3) & 0x1EAB37A2) - 1890214959 + v18;
  v31 = v18 ^ 0x1F;
  v21[0] = a2;
  v21[1] = a12;
  v32 = a13;
  v33 = (a8 ^ 0x672CEFEF) + ((2 * a8) & 0xCE59DFDE) - 2133089 + v18;
  v34 = (a5 ^ 0xFC77FFE7) + 2146885566 + ((2 * a5) & 0xF8EFFFCE) - v18 + 507904;
  v21[2] = v18 ^ ((a1 ^ 0x7AFDE9FFBB3796F7) - 0x2794885392392F2 + ((2 * a1) & 0xF5FBD3FF766F2DEELL));
  v30 = a6;
  v23 = a9;
  v24 = a11;
  v22 = (a10 ^ 0xFC7FBFE7) + ((2 * a10) & 0xF8FF7FCE) + 2146885566 + v18;
  v26 = a4;
  v27 = 5488 - v18;
  v28 = (a7 ^ 0xFCFEDFAD) + ((2 * a7) & 0xF9FDBF5A) + 2138554360 + v18;
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16740) ^ 0x30)) ^ byte_196EC01C0[byte_196EC0070[(91 * ((dword_1EAF16720 - dword_1EAF16740) ^ 0x30))] ^ 0x5D]) + 44][8 * ((91 * ((*(v16 - 1) - *v13) ^ 0x30)) ^ v15[v14[(91 * ((*(v16 - 1) - *v13) ^ 0x30))] ^ 0x86]) + 52544])(v21);
  return (v25 - 1237465637);
}

uint64_t PNFzIarR537mpF(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16698 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC01C0[byte_196EC0070[(91 * (dword_1EAF16698 ^ 0x30 ^ dword_1EAF16720))] ^ 0x5D]) + 100];
  v13 = 91 * ((dword_1EAF16720 + *v12) ^ 0x30);
  v14 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + v13 - 8) ^ 0x45u) - 4) ^ v13) + 98];
  v15 = *v12 ^ &v19 ^ *(v14 - 4);
  *v12 = 636859739 * v15 + 0x1D38D65F7E9650D0;
  *(v14 - 4) = 636859739 * (v15 ^ 0xE2C729A08169AF30);
  v16 = 652747349 * ((&v20 - 2 * (&v20 & 0xA0E6DF6B03314A70) - 0x5F192094FCCEB590) ^ 0xFA50749741C274E5);
  v21 = v16 + 1344803742;
  v22 = (a2 ^ 0xD5F81B9E) + ((2 * a2) & 0xABF0373C) - v16 + 2049964032;
  v20 = a3;
  v23 = a10;
  v24 = a9;
  v34 = (a4 ^ 0x77FEFFA1) + ((2 * a4) & 0xEFFDFF42) - 1392509088 + v16;
  v27 = (a8 ^ 0xFEFEFF41) + ((2 * a8) & 0xFDFDFE82) - v16 + 637534144;
  v25 = a6 - ((2 * a6) & 0x11C96F4C) - v16 - 1998276698;
  v30 = v16 + 85;
  v32 = a12;
  v33 = a11;
  v35 = a7;
  v31 = 5974 - v16;
  v28 = a5;
  v29 = v16 ^ ((a1 ^ 0x4FB0DF7FADCEFCF7) - 0x46A04020A14C5C43 + ((2 * a1) & 0x9F61BEFF5B9DF9EELL));
  v17 = 91 * ((*(v14 - 1) - *v12) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16698) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16698) ^ 0x30))] ^ 0x9A]) - 64][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v17 - 8) ^ 0x7Du) - 8) ^ v17) + 53312])(&v20);
  return (v26 - 1237465637);
}

uint64_t JgOSj27cVZTAIuv(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16950 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16950 ^ 0x30 ^ dword_1EAF16720))] ^ 0x6F]) + 128];
  v12 = 91 * ((dword_1EAF16720 + *v11) ^ 0x30);
  v13 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v12 - 8) ^ 0x7Du) - 8) ^ v12) + 100];
  v14 = &v17[*(v13 - 4) ^ *v11];
  *v11 = 636859739 * (v14 + 0x1D38D65F7E9650D0);
  *(v13 - 4) = 636859739 * (v14 ^ 0xE2C729A08169AF30);
  v15 = 1427277979 * ((2 * ((&v18 ^ 0x2D143A9CCD2A9CC8) & 0x7050A23F3BFE3608) - (&v18 ^ 0x2D143A9CCD2A9CC8) - 0x7050A23F3BFE3610) ^ 0x84D1A0EA597A1850);
  v24 = v15 + 1369802606;
  v21 = v15 ^ ((a3 ^ 0x7B7FF7F3) - 20185665 + ((2 * a3) & 0xF6FFEFE6));
  v19 = v15 + 92;
  v22 = a8;
  v23 = a6;
  v20 = v15 ^ 6;
  v30 = a11;
  v31 = 0;
  v25 = a2;
  v26 = v15 + 0x56E9EE0FB6C65CBDLL * a1 + 0x706969559327EE78;
  v18 = v15 + 5221;
  v33 = a4;
  v34 = a10;
  v27 = a9;
  v29 = 0x54799400B27E420BLL;
  v35 = v15 + 2051798450;
  v36 = (a5 ^ 0xFE4BFDFE) + ((2 * a5) & 0xFC97FBFC) + 2080372660 + v15;
  v32 = a7 - ((2 * a7) & 0xC97F5FD6) - v15 - 457199637;
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16950) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16950) ^ 0x30))] ^ 0x75]) + 63][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v11 ^ 0x30 ^ *(v13 - 1)))) ^ 0x86u) - 12) ^ (91 * (*v11 ^ 0x30 ^ *(v13 - 1)))) + 51984])(&v18);
  return (v28 - 1237465637);
}

uint64_t RbGlMmy8pVzTlxW41KGzMrqckl4Pa345h(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16768) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16768) ^ 0x30))] ^ 0x7D]) + 214];
  v6 = *(v5 - 4);
  v7 = off_1F0B1A830;
  v8 = off_1F0B1A3F0 - 12;
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v6) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 + v6) ^ 0x30))) - 139];
  v10 = 636859739 * (&v12[v6 + *(v9 - 4)] ^ 0xE2C729A08169AF30);
  *(v5 - 4) = v10;
  *(v9 - 4) = v10;
  LODWORD(v10) = 346387183 * ((~v13 & 0x1B160B24 | v13 & 0xE4E9F4DB) ^ 0x9E7EDEF4);
  v14 = -17 * ((~v13 & 0x24 | v13 & 0xDB) ^ 0xF4) + 8;
  v15 = a5;
  v16 = a1;
  v17 = a4;
  v13[1] = 917 - v10;
  v19 = a2;
  v18 = (a3 ^ 0x6BFBF59F) + ((2 * a3) & 0xD7F7EB3E) - 13239310 + v10;
  LOBYTE(v9) = 91 * ((*(v9 - 1) + *(v5 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16768) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16768) ^ 0x30))] ^ 0x7D]) + 101][8 * (v9 ^ v8[v7[v9] ^ 0xE9]) + 51672])(v13);
  return (v13[0] - 1237465637);
}

uint64_t TnhfdPSFlg(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16958) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16958) ^ 0x30))] ^ 0x86]) + 49];
  v3 = *(v2 - 4);
  v4 = off_1F0B1A830;
  v5 = off_1F0B1A3F0 - 12;
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v3) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 + v3) ^ 0x30))) + 45];
  v7 = *(v6 - 4) - v3 - &v9;
  *(v2 - 4) = 636859739 * (v7 + 0x1D38D65F7E9650D0);
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  LODWORD(v7) = 1468321087 * (((&v10 | 0x40C53525) - (&v10 | 0xBF3ACADA) - 1086666022) ^ 0x942A744B);
  v11 = a1;
  v13 = a2;
  v10 = v7 + 1715;
  v14 = v7 + 82;
  LOBYTE(v6) = 91 * ((*(v6 - 1) - *(v2 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16958) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 - dword_1EAF16958) ^ 0x30))] ^ 0x8F]) - 11][8 * (v6 ^ v5[v4[v6] ^ 0xF5]) + 52184])(&v10);
  return (v12 - 1237465637);
}

uint64_t gcr8qXImzjLolsNNXIo(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF167B8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF167B8) ^ 0x30))] ^ 0xEF]) - 226];
  v3 = *(v2 - 4);
  v4 = off_1F0B1A108 - 8;
  v5 = off_1F0B1A230 - 4;
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 - v3) ^ 0x30)) - 8) ^ 0xF9u) - 4) ^ (91 * ((dword_1EAF16720 - v3) ^ 0x30))) + 81];
  v7 = &v10[*(v6 - 4) - v3];
  *(v2 - 4) = 636859739 * v7 + 0x768A6804525E3610;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  v8 = 583883621 * (((v11 | 0x20758F43) + (~v11 | 0xDF8A70BC)) ^ 0x814653ED);
  v14 = v8 + 1127385969 * a2 + 1849019517;
  v12 = v8 ^ 0xFB3A1ED5;
  v13 = a1;
  LOBYTE(v6) = 91 * (*(v2 - 1) ^ 0x30 ^ *(v6 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF167B8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF167B8) ^ 0x30))] ^ 0xEF]) - 119][8 * (v6 ^ v5[v4[v6] ^ 0x45]) + 53696])(v11);
  return 4294924449;
}

uint64_t ZoqDk9vz2T2ka(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16640) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16640) ^ 0x30))] ^ 0xCA]) - 95];
  v2 = 91 * ((dword_1EAF16720 + *v1) ^ 0x30);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + v2 - 8) ^ 0x45u) - 4) ^ v2) + 98];
  v4 = 636859739 * (&v6[*(v3 - 4) - *v1] ^ 0xE2C729A08169AF30);
  *v1 = v4;
  *(v3 - 4) = v4;
  LODWORD(v4) = 566710099 * (((v7 | 0x8FD62D43) - (v7 & 0x8FD62D43)) ^ 0x39375CF);
  v9 = a1;
  v7[1] = v4 ^ 0x8FA;
  v8 = v4 + 91;
  LOBYTE(v3) = 91 * ((*(v3 - 1) + *v1) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16640) ^ 0x30)) ^ byte_196EC01C0[byte_196EC0070[(91 * ((dword_1EAF16720 - dword_1EAF16640) ^ 0x30))] ^ 0x5D]) + 44][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v3 - 8) ^ 0x6Fu) - 8) ^ v3) + 52560])(v7);
  return (v7[0] - 1237465637);
}

uint64_t oYI4gkRtFnE5X6M4mj3kE(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16798) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16798) ^ 0x30))] ^ 0x86]) + 56];
  v2 = off_1F0B1A830;
  v3 = off_1F0B1A3F0 - 12;
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 - *v1) ^ 0x30))) + 7];
  v5 = *v1 - &v7 + *(v4 - 4);
  *v1 = (636859739 * v5) ^ 0xE2C729A08169AF30;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v10 = (1864678469 * ((&v8 & 0xEF5F98F9 | ~(&v8 | 0xEF5F98F9)) ^ 0x23D070EF)) ^ 0xAAF;
  v8 = a1;
  LOBYTE(v4) = 91 * ((*(v4 - 1) + *v1) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16798) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16798) ^ 0x30))] ^ 0xF5]) + 8][8 * (v4 ^ v3[v2[v4] ^ 0xF5]) + 52616])(&v8);
  return v9 ^ 0xB639C7C3;
}

uint64_t qOlNXzAbtnr0Is(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164E0) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF164E0) ^ 0x30))] ^ 0xF9]) + 99];
  v3 = 91 * (*v2 ^ dword_1EAF16720 ^ 0x30);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + v3 - 8) ^ 0xF9u) - 4) ^ v3) + 81];
  v5 = (*(v4 - 4) - *v2) ^ &v8;
  *v2 = 636859739 * v5 - 0x1D38D65F7E9650D0;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v6 = 891395573 * ((-646970772 - (v9 | 0xD970026C) + (v9 | 0x268FFD93)) ^ 0x1CA2E228);
  v9[0] = v6 ^ 0xAD8;
  v9[1] = v6 + 686205303 * a2 + 1062900477;
  v10 = a1;
  LOBYTE(v4) = 91 * ((*(v4 - 1) - *v2) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF164E0 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF164E0 ^ 0x30 ^ dword_1EAF16720))] ^ 0x86]) + 46][8 * (*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v4 - 8) ^ 0x5Du) - 8) ^ v4) + 53288])(v9);
  return 4294924449;
}

uint64_t AguL7jhmAyDI1Bi(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16938) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16938) ^ 0x30))] ^ 0xE9]) - 232];
  v8 = off_1F0B1A830;
  v9 = off_1F0B1A3F0 - 12;
  v10 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v7 ^ dword_1EAF16720 ^ 0x30))) ^ 0x75u) - 12) ^ (91 * (*v7 ^ dword_1EAF16720 ^ 0x30))) + 62];
  v11 = *v7 ^ &v13 ^ *(v10 - 4);
  *v7 = 636859739 * (v11 + 0x1D38D65F7E9650D0);
  *(v10 - 4) = 636859739 * (v11 ^ 0xE2C729A08169AF30);
  LODWORD(v11) = 566710099 * (&v14 ^ 0x8C45588C);
  v23 = 83 * (&v14 ^ 0x8C) + 114;
  v25 = a6;
  v17 = 0;
  v18 = 0;
  v20 = a7;
  v21 = a4;
  v19 = v11 ^ ((a3 ^ 0xBBB7BF8F) + 1608316923 + ((2 * a3) & 0x776F7F1E));
  v24 = (a5 ^ 0xBBF5BF9A) + ((2 * a5) & 0x77EB7F34) + 1604253680 + v11;
  v15 = a1;
  v16 = a2;
  v22 = v11 + 1163564281;
  LODWORD(v7) = 636859739 * ((*(v10 - 1) - *v7) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16938) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16938) ^ 0x30))] ^ 0xF5]) + 8][8 * (v7 ^ v9[v8[v7] ^ 0x30]) + 52216])(&v14);
  return (v14 - 1237465637);
}

uint64_t uSB01B1R2Urw8Q1(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16750 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16750 ^ 0x30 ^ dword_1EAF16720))] ^ 0x86]) + 13];
  v11 = *(v10 - 4);
  v12 = off_1F0B1A830;
  v13 = off_1F0B1A3F0 - 12;
  v14 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v11 ^ dword_1EAF16720 ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * (v11 ^ dword_1EAF16720 ^ 0x30))) + 7];
  v15 = &v18[v11 + *(v14 - 4)];
  *(v10 - 4) = 636859739 * v15 - 0x1D38D65F7E9650D0;
  *(v14 - 4) = 636859739 * (v15 ^ 0xE2C729A08169AF30);
  v16 = 652747349 * ((((2 * &v19) | 0x2E6AC1F829DC32DCLL) - &v19 - 0x173560FC14EE196ELL) ^ 0x4D83CB00561D27FBLL);
  v29 = v16 + 85;
  v30 = 5974 - v16;
  v24 = -1998276698 - v16;
  v26 = (a6 ^ 0xBEFFFFBF) + ((2 * a6) & 0x7DFFFF7E) - v16 + 1711210306;
  v33 = (a4 ^ 0x74FEFF3D) + ((2 * a4) & 0xE9FDFE7A) - 1342177340 + v16;
  v19 = a3;
  v31 = a10;
  v32 = a9;
  v34 = a5;
  v22 = a8;
  v23 = a7;
  v27 = 0;
  v28 = v16 ^ ((a1 ^ 0x9B339FDF2FA3A4B6) + 0x6DDCFF7FDCDEFBFELL + ((2 * a1) & 0x36673FBE5F47496CLL));
  v20 = v16 + 1344803742;
  v21 = (a2 ^ 0xD26BFFDE) + ((2 * a2) & 0xA4D7FFBC) - v16 + 2109477824;
  LODWORD(v10) = 636859739 * (*(v10 - 1) ^ 0x8169AF30 ^ *(v14 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16750) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16750) ^ 0x30))] ^ 0x9A]) - 64][8 * (v10 ^ v13[v12[v10] ^ 0x30]) + 52720])(&v19);
  return (v25 - 1237465637);
}

uint64_t CciXYFQnBz4DB9mkGvXwsTwkFUalVp70Gcf5Y(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16968) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16968) ^ 0x30))] ^ 0x86]) + 71];
  v8 = 91 * (*v7 ^ dword_1EAF16720 ^ 0x30);
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + v8 - 8) ^ 0x45u) - 4) ^ v8) + 98];
  v10 = &v13[*(v9 - 4) - *v7];
  *v7 = 636859739 * v10 - 0x1D38D65F7E9650D0;
  *(v9 - 4) = 636859739 * (v10 ^ 0xE2C729A08169AF30);
  v11 = 912648571 * ((((2 * v14) | 0xF2E68A86) - v14 + 109886141) ^ 0x25BE0976);
  v15 = a6;
  v20 = a4;
  v16 = 593404681 * a3 - v11 + 1074524517;
  v17 = a1;
  v14[0] = a7 - ((2 * a7) & 0xDD129B32) - v11 + 1854492057;
  v14[1] = v11 ^ (a5 - ((2 * a5) & 0xF64AA0F8) + 2066043004);
  v18 = 1035309529 - v11;
  v19 = v11 + 543020369 * a2 + 2054291963;
  LODWORD(v7) = 636859739 * (*v7 ^ 0x8169AF30 ^ *(v9 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16968) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16968) ^ 0x30))] ^ 0x75]) + 63][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v7) ^ 0x86u) - 12) ^ v7) + 52672])(v14);
  return 4294924449;
}

uint64_t Y08TTM99sD0XheA(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16680) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16680) ^ 0x30))] ^ 0xF5]) - 74];
  v2 = *(v1 - 4);
  v3 = off_1F0B1A830;
  v4 = off_1F0B1A3F0 - 12;
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v2) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 + v2) ^ 0x30))) + 45];
  v6 = (*(v5 - 4) - v2) ^ &v8;
  *(v1 - 4) = (636859739 * v6) ^ 0xE2C729A08169AF30;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  LODWORD(v6) = 1864678469 * ((~&v9 & 0xC697EA32 | &v9 & 0x396815CD) ^ 0xF5E7FDDB);
  v9 = a1;
  v11 = v6 + 2936;
  v10 = 32 - v6;
  LODWORD(v5) = 636859739 * ((*(v5 - 1) - *(v1 - 1)) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16680) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16680) ^ 0x30))] ^ 0xE9]) - 138][8 * (v5 ^ v4[v3[v5] ^ 0x75]) + 52856])(&v9);
  return (v12 - 1237465637);
}

uint64_t HMYy2ssZZIFQJ()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + dword_1EAF16610) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_1EAF16720 + dword_1EAF16610) ^ 0x30))) + 82];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - *v0) ^ 0x30)) ^ *(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 - *v0) ^ 0x30)) - 8) ^ 0xCAu) - 8)) - 84];
  v2 = (*(v1 - 4) - *v0) ^ &v4;
  *v0 = 636859739 * (v2 + 0x1D38D65F7E9650D0);
  *(v1 - 4) = 636859739 * (v2 ^ 0xE2C729A08169AF30);
  v5[1] = 583883621 * ((2 * (v5 & 0x23E5F5F4) - v5 - 602273272) ^ 0x7D29D6A7) + 3880;
  v6 = 124 - 101 * ((2 * (v5 & 0xF4) - v5 + 8) ^ 0xA7);
  LOBYTE(v1) = 91 * ((*(v1 - 1) + *v0) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16610) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 + dword_1EAF16610) ^ 0x30))] ^ 0x8F]) - 11][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v1 - 8) ^ 0x45u) - 4) ^ v1) + 52696])(v5);
  return (v5[0] - 1237465637);
}

uint64_t Qt84D4aopGP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16758) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 - dword_1EAF16758) ^ 0x30))] ^ 0x8F]) + 59];
  v4 = *(v3 - 4);
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + v4) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_1EAF16720 + v4) ^ 0x30))) - 10];
  v6 = (*(v5 - 4) ^ v4) - &v9;
  *(v3 - 4) = 636859739 * v6 - 0x1D38D65F7E9650D0;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  v7 = 1466156297 * ((((2 * (&v10 ^ 0xEE3B21294BBD4A74)) | 0xE6B019D6014DBBE4) - (&v10 ^ 0xEE3B21294BBD4A74) - 0x73580CEB00A6DDF2) ^ 0x17A6580998AC17D7);
  v10 = (a1 ^ 0xDF67DEB7DDFFFDFFLL) + ((2 * a1) & 0xBECFBD6FBBFFFBFELL) - v7 + 0x67B9BFDD7FDA7AA8;
  v11 = v7 ^ 0x4D1;
  v12 = a3;
  v13 = a2;
  LOBYTE(v5) = 91 * ((*(v5 - 1) + *(v3 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16758) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 - dword_1EAF16758) ^ 0x30))] ^ 0x8F]) - 11][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v5) ^ 0xEFu) - 12) ^ v5) + 51112])(&v10);
  return (v14 - 1237465637);
}

uint64_t DBBThCw2vI05rGimZ393YZhnr0N(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16780) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16780) ^ 0x30))] ^ 0xE9]) - 180];
  v4 = *(v3 - 4);
  v5 = (&off_1F0B1A0C0)[(*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + (91 * (v4 ^ dword_1EAF16720 ^ 0x30)) - 8) ^ 0x5Du) - 8) ^ (91 * (v4 ^ dword_1EAF16720 ^ 0x30))) + 43];
  v6 = &v8[v4 + *(v5 - 4)];
  *(v3 - 4) = 636859739 * v6 + 0x1D38D65F7E9650D0;
  *(v5 - 4) = 636859739 * (v6 ^ 0xE2C729A08169AF30);
  LODWORD(v6) = 1427277979 * ((((2 * &v9) | 0x3D69CE82) - &v9 - 515172161) ^ 0x4EE5AA29);
  v12 = -1774333530 - v6;
  v10 = v6 ^ (1999422161 * a3 + 1634528631);
  v9 = a2;
  v11 = a1;
  LOBYTE(v5) = 91 * ((*(v5 - 1) - *(v3 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16780) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16780) ^ 0x30))] ^ 0xE9]) - 138][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v5 - 8) ^ 0xF9u) - 4) ^ v5) + 53424])(&v9);
  return 4294924449;
}

uint64_t beiXpE4QvvG(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16900) ^ 0x30)) ^ byte_196EC01C0[byte_196EC0070[(91 * ((dword_1EAF16720 + dword_1EAF16900) ^ 0x30))] ^ 0x5D]) - 6];
  v2 = 91 * ((dword_1EAF16720 + *v1) ^ 0x30);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v2 - 8) ^ 0x7Du) - 8) ^ v2) + 100];
  v4 = (*(v3 - 4) - *v1) ^ &v6;
  *v1 = (636859739 * v4) ^ 0xE2C729A08169AF30;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v7 = 2024068013 - 566710099 * (((&v7 | 0x51C7607F) - &v7 + (&v7 & 0xAE389F80)) ^ 0xDD8238F3);
  v8 = a1;
  LOBYTE(v3) = 91 * ((*(v3 - 1) + *v1) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16900) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16900) ^ 0x30))] ^ 0xE3]) - 47][8 * (*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + v3 - 8) ^ 0x5Du) - 8) ^ v3) + 52456])(&v7);
  return v9;
}

uint64_t KUndSWGZ9wrfzhCOQ2qDQiWsxmFc(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, __int16 a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164D0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF164D0) ^ 0x30))] ^ 0x9A]) + 47];
  v12 = *(v11 - 4);
  v13 = off_1F0B1A830;
  v14 = off_1F0B1A3F0 - 12;
  v15 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v12) ^ 0x30))) ^ 0x75u) - 12) ^ (91 * ((dword_1EAF16720 + v12) ^ 0x30))) + 62];
  v16 = 636859739 * ((*(v15 - 4) - v12) ^ &v18 ^ 0xE2C729A08169AF30);
  *(v11 - 4) = v16;
  *(v15 - 4) = v16;
  LODWORD(v16) = 1466156297 * ((~v19 & 0xF47343BF | v19 & 0xB8CBC40) ^ 0x27C4C3EE);
  v25 = v16 + a4;
  v29 = a3;
  v30 = a9;
  v24 = -15095 * ((~v19 & 0x43BF | v19 & 0xBC40) ^ 0xC3EE) + a11;
  v19[0] = a10;
  v19[1] = a7;
  v26 = a5;
  v27 = a1;
  v22 = v16 + a8;
  v23 = 1135876919 - v16;
  v28 = v16 ^ a2;
  v20 = a6 - v16;
  v21 = v16;
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF164D0 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * (dword_1EAF164D0 ^ 0x30 ^ dword_1EAF16720))] ^ 0x8F]) - 11][8 * ((91 * ((*(v15 - 1) - *(v11 - 1)) ^ 0x30)) ^ v14[v13[(91 * ((*(v15 - 1) - *(v11 - 1)) ^ 0x30))] ^ 0x9A]) + 52248])(v19);
  return 4294924449;
}

uint64_t CUYrBdafj93R3iI1dW(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16918 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16918 ^ 0x30 ^ dword_1EAF16720))] ^ 0xB9]) + 45];
  v10 = off_1F0B1A660 - 8;
  v11 = off_1F0B1A1D8 - 8;
  v12 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 - *v9) ^ 0x30)) - 8) ^ 0x7Du) - 8) ^ (91 * ((dword_1EAF16720 - *v9) ^ 0x30))) + 100];
  v13 = 636859739 * ((*(v12 - 4) - *v9 - &v16) ^ 0xE2C729A08169AF30);
  *v9 = v13;
  *(v12 - 4) = v13;
  v14 = 1427277979 * (((&v17 | 0x67F5440AD4A89217) - (&v17 & 0x67F5440AD4A89217)) ^ 0x419F83BC84F9DF7FLL);
  v19 = v14 | 6;
  v21 = a6;
  v22 = 0;
  v23 = v14 + 1369802606;
  v29 = a9;
  v30 = 0;
  v24 = a2;
  v25 = v14 + 0x56E9EE0FB6C65CBDLL * a1 + 0x706969559327EE78;
  v34 = v14 + 2051798450;
  v35 = (a5 ^ 0xFB6BF7FE) + ((2 * a5) & 0xF6D7EFFC) + 2128608692 + v14;
  v32 = a4;
  v33 = a8;
  v31 = -457199637 - v14;
  v20 = v14 ^ ((a3 ^ 0xFE4FF5F6) + 2080112572 + ((2 * a3) & 0xFC9FEBEC));
  v17 = v14 + 5221;
  v28 = 0x54799400B27E420BLL;
  v26 = a7;
  v18 = v14 + 92;
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16918) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16918) ^ 0x30))] ^ 0xE9]) - 138][8 * ((91 * ((*(v12 - 4) - *v9) ^ 0x30)) ^ v11[v10[(91 * ((*(v12 - 4) - *v9) ^ 0x30))] ^ 0xE3]) + 51240])(&v17);
  return (v27 - 1237465637);
}

uint64_t ITFyRQiJdLZiV2zQ6FE(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16628) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16628) ^ 0x30))] ^ 0x86]) + 113];
  v3 = 91 * ((dword_1EAF16720 - *v2) ^ 0x30);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v3 - 8) ^ 0x7Du) - 8) ^ v3) + 100];
  v5 = &v7[*(v4 - 4) - *v2];
  *v2 = (636859739 * v5) ^ 0xE2C729A08169AF30;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  LODWORD(v5) = 1427277979 * ((2 * (v8 & 0x2838FBE8) - v8 - 674823147) ^ 0x8796497D);
  v12 = v5 + 3355;
  v11 = a1;
  v10 = v5 | 1;
  v9 = a2;
  LOBYTE(v4) = 91 * (*v2 ^ 0x30 ^ *(v4 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16628) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16628) ^ 0x30))] ^ 0x30]) + 27][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v4) ^ 0x9Au) - 12) ^ v4) + 51944])(v8);
  return 4294924449;
}

uint64_t ZPgKbdFMwRgHoKHRfhLwlbNZ77M(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, __int16 a12)
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16690) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16690) ^ 0x30))] ^ 0x6F]) - 41];
  v13 = off_1F0B1A830;
  v14 = off_1F0B1A3F0 - 12;
  v15 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v12 ^ dword_1EAF16720 ^ 0x30))) ^ 0xEFu) - 12) ^ (91 * (*v12 ^ dword_1EAF16720 ^ 0x30))) - 120];
  v16 = &v18[*(v15 - 4) - *v12];
  *v12 = (636859739 * v16) ^ 0xE2C729A08169AF30;
  *(v15 - 4) = 636859739 * (v16 ^ 0xE2C729A08169AF30);
  LODWORD(v16) = 1466156297 * (v19 ^ 0xD3B78051);
  v25 = -15095 * (v19 ^ 0x8051) + a12;
  v29 = v16 ^ a3;
  v26 = v16 + a5;
  v20 = a7 - v16;
  v21 = v16 ^ a2;
  v27 = a6;
  v28 = a1;
  v19[0] = a11;
  v19[1] = a8;
  v23 = v16 + a9;
  v24 = 1135876919 - v16;
  v30 = a4;
  v31 = a10;
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16690) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 + dword_1EAF16690) ^ 0x30))] ^ 0x1D]) - 102][8 * ((91 * ((*(v15 - 1) - *v12) ^ 0x30)) ^ v14[v13[(91 * ((*(v15 - 1) - *v12) ^ 0x30))] ^ 0xB9]) + 52536])(v19);
  return v22;
}

uint64_t eb3cw0DOp9lHgRXCLhWA(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16928) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16928) ^ 0x30))] ^ 0x75]) + 81];
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + *v8) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 + *v8) ^ 0x30))) + 45];
  v10 = &v13[*v8 + *(v9 - 4)];
  *v8 = 636859739 * v10 + 0x1D38D65F7E9650D0;
  *(v9 - 4) = 636859739 * (v10 ^ 0xE2C729A08169AF30);
  v11 = 1427277979 * ((&v14 - 2 * (&v14 & 0xA6A52357061492B3) - 0x595ADCA8F9EB6D4DLL) ^ 0x80CFE4E15645DFDBLL);
  v20 = v11 + 1369802606;
  v17 = v11 ^ ((a3 ^ 0x7BDBF5F3) - 26214465 + ((2 * a3) & 0xF7B7EBE6));
  v26 = a8;
  v27 = 0;
  v23 = a6;
  v25 = 0x54799400B27E420BLL;
  v16 = v11 ^ 6;
  v14 = v11 + 5221;
  v31 = v11 + 2051798450;
  v32 = (a5 ^ 0x7E7FF7F3) + ((2 * a5) & 0xFCFFEFE6) - 70517313 + v11;
  v29 = a4;
  v30 = a7;
  v15 = v11 + 92;
  v28 = -457199637 - v11;
  v18 = 0;
  v19 = 0;
  v21 = a2;
  v22 = v11 + 0x56E9EE0FB6C65CBDLL * a1 + 0x706969559327EE78;
  LOBYTE(v8) = 91 * (*v8 ^ 0x30 ^ *(v9 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16928) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16928) ^ 0x30))] ^ 0x75]) + 63][8 * (*(off_1F0B1A428 + (*(off_1F0B1A250 + v8 - 8) ^ 0x8Fu) - 8) ^ v8) + 51528])(&v14);
  return (v24 - 1237465637);
}

uint64_t sfgjsdew8e2qtdytnp()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (dword_1EAF16618 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0x6Fu) - 8) ^ (91 * (dword_1EAF16618 ^ 0x30 ^ dword_1EAF16720))) + 52];
  v1 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + *v0) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 + *v0) ^ 0x30))) + 7];
  v2 = *v0 ^ &v4 ^ *(v1 - 4);
  *v0 = (636859739 * v2) ^ 0xE2C729A08169AF30;
  *(v1 - 4) = 636859739 * (v2 ^ 0xE2C729A08169AF30);
  v5 = 0;
  v6 = 2623 - 1427277979 * ((((2 * &v5) | 0x2A327088) - &v5 + 1793509308) ^ 0xC548752C);
  LOBYTE(v1) = 91 * (*v0 ^ 0x30 ^ *(v1 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16618) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16618) ^ 0x30))] ^ 0xE3]) - 47][8 * (*(off_1F0B1A400 + (*(off_1F0B1A690 + v1 - 4) ^ 0x1Du) - 12) ^ v1) + 51216])(&v5);
  return v7 ^ 0xB639C7C3;
}

uint64_t RacKZNvKHiqbwaNvv(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164B0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF164B0) ^ 0x30))] ^ 0xEF]) - 205];
  v5 = *(v4 - 4);
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - v5) ^ 0x30))) ^ 0x75u) - 12) ^ (91 * ((dword_1EAF16720 - v5) ^ 0x30))) + 62];
  v7 = (*(v6 - 4) + v5) ^ &v10;
  *(v4 - 4) = (636859739 * v7) ^ 0xE2C729A08169AF30;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  v8 = 1384597421 * ((v11 + 1623644636 - 2 * (v11 & 0x60C6D9DC)) ^ 0x820880A5);
  v11[2] = a4;
  v11[3] = a1;
  v11[0] = a3;
  v12 = -117546963 - v8;
  v13 = v8 + 851988233 * a2 + 953221521;
  LODWORD(v6) = 636859739 * (*(v4 - 1) ^ 0x8169AF30 ^ *(v6 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164B0) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF164B0) ^ 0x30))] ^ 0xF5]) + 8][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v6 - 8) ^ 0x6Fu) - 8) ^ v6) + 52288])(v11);
  return 4294924449;
}

uint64_t YB9vHaqzUjRzn(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF164B8) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF164B8) ^ 0x30))] ^ 0xF9]) + 112];
  v12 = off_1F0B1A830;
  v13 = off_1F0B1A3F0 - 12;
  v14 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v11) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - *v11) ^ 0x30))) - 139];
  v15 = 636859739 * ((*(v14 - 4) - *v11) ^ &v17 ^ 0xE2C729A08169AF30);
  *v11 = v15;
  *(v14 - 4) = v15;
  LODWORD(v15) = 1864678469 * (((v18 | 0x58A68F3F) - (v18 & 0x58A68F3F)) ^ 0x6BD698D6);
  v27 = a11;
  v24 = 69 * (((v18 | 0x3F) - (v18 & 0x3F)) ^ 0xD6) - 36;
  v20 = a3;
  v19 = 2810 - v15;
  v28 = (a4 ^ 0xADF7F8AC) + ((2 * a4) & 0x5BEFF158) + 2130700288 + v15;
  v21 = v15 ^ (a6 - ((2 * a6) & 0x19E6215E) - 1930227537);
  v30 = v15 ^ ((a2 ^ 0xEEFFF8AE) + 1039656958 + ((2 * a2) & 0xDDFFF15C));
  v18[0] = a1;
  v18[1] = a5;
  v22 = a9;
  v23 = a7;
  v25 = (a8 ^ 0x7DFFF7EC) + ((2 * a8) & 0xFBFFEFD8) - 1359484736 + v15;
  v29 = a10;
  LOBYTE(v11) = 91 * ((*(v14 - 1) - *v11) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164B8) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF164B8) ^ 0x30))] ^ 0x7D]) + 101][8 * (v11 ^ v13[v12[v11] ^ 0x86]) + 52392])(v18);
  return (v26 - 1237465637);
}

uint64_t pC3lVfLuVJLMz(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (dword_1EAF16470 ^ 0x30 ^ dword_1EAF16720))) ^ 0x30u) - 12) ^ (91 * (dword_1EAF16470 ^ 0x30 ^ dword_1EAF16720))) + 141];
  v3 = *(v2 - 4);
  v4 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + v3) ^ 0x30)) ^ *(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v3) ^ 0x30))) ^ 0xEFu) - 12)) - 120];
  v5 = (*(v4 - 4) + v3) ^ &v7;
  *(v2 - 4) = 636859739 * (v5 + 0x1D38D65F7E9650D0);
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  LODWORD(v5) = 1468321087 * ((&v8 - 2 * (&v8 & 0xE5FCF8FD) - 436406019) ^ 0x3113B993);
  v12 = v5 + 81;
  v11 = a2;
  v9 = a1;
  v8 = v5 + 1715;
  LOBYTE(v4) = 91 * ((*(v4 - 1) - *(v2 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16470) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16470) ^ 0x30))] ^ 0xE3]) - 47][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v4 - 8) ^ 0xE3u) - 8) ^ v4) + 51744])(&v8);
  return (v10 - 1237465637);
}

uint64_t hKBLIYWgX(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16688) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16688) ^ 0x30))] ^ 0x75]) + 138];
  v6 = *(v5 - 4);
  v7 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + v6) ^ 0x30)) - 8) ^ 0x7Du) - 8) ^ (91 * ((dword_1EAF16720 + v6) ^ 0x30))) + 100];
  v8 = *(v7 - 4) - v6 - &v10;
  *(v5 - 4) = (636859739 * v8) ^ 0xE2C729A08169AF30;
  *(v7 - 4) = 636859739 * (v8 ^ 0xE2C729A08169AF30);
  LODWORD(v8) = 1468321087 * (((&v11 | 0x71BC231E) - &v11 + (&v11 & 0x8E43DCE0)) ^ 0xA5536270);
  v11 = a5;
  v12 = v8 + 1047850486;
  v14 = v8 + a2;
  v16 = a3;
  v17 = a1;
  v15 = a4;
  LODWORD(v7) = 636859739 * ((*(v7 - 1) - *(v5 - 1)) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16688) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16688) ^ 0x30))] ^ 0xE9]) - 138][8 * (*(off_1F0B1A400 + (*(off_1F0B1A690 + v7 - 4) ^ 0x1Du) - 12) ^ v7) + 52128])(&v11);
  return v13;
}

uint64_t kNsH5DWSn1J(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16940) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16940) ^ 0x30))] ^ 0x75]) + 148];
  v3 = *(v2 - 4);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 - v3) ^ 0x30)) - 8) ^ 0xE3u) - 8) ^ (91 * ((dword_1EAF16720 - v3) ^ 0x30))) - 48];
  v5 = (*(v4 - 4) ^ v3) - &v7;
  *(v2 - 4) = 636859739 * v5 + 0x1D38D65F7E9650D0;
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v8[0] = (1468321087 * ((((v8 | 0x7C945C4A) ^ 0xFFFFFFFE) - (~v8 | 0x836BA3B5)) ^ 0x5784E2DB)) ^ 0x7AA489C1;
  v9 = a2;
  v10 = a1;
  LOBYTE(v4) = 91 * (*(v2 - 1) ^ 0x30 ^ *(v4 - 1));
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16940 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * (dword_1EAF16940 ^ 0x30 ^ dword_1EAF16720))] ^ 0x45]) + 99][8 * (*(off_1F0B1A428 + (*(off_1F0B1A250 + v4 - 8) ^ 0x8Fu) - 8) ^ v4) + 52208])(v8);
  return v8[1];
}

uint64_t VCDDnY3lV491XcWac(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16730 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC01C0[byte_196EC0070[(91 * (dword_1EAF16730 ^ 0x30 ^ dword_1EAF16720))] ^ 0x5D]) - 25];
  v3 = *(v2 - 4);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A400 + (*(off_1F0B1A690 + (91 * ((dword_1EAF16720 + v3) ^ 0x30)) - 4) ^ 0x1Du) - 12) ^ (91 * ((dword_1EAF16720 + v3) ^ 0x30))) - 103];
  v5 = v3 - &v7 + *(v4 - 4);
  *(v2 - 4) = 636859739 * (v5 + 0x1D38D65F7E9650D0);
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v11 = (1466156297 * ((((2 * &v8) | 0xF4ED9980) - &v8 + 92877632) ^ 0x29C14C91)) ^ 0x99B;
  v9 = a2;
  v10 = a1;
  LOBYTE(v4) = 91 * (*(v2 - 1) ^ 0x30 ^ *(v4 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16730) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16730) ^ 0x30))] ^ 0x86]) + 46][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v4 - 8) ^ 0xF9u) - 4) ^ v4) + 53064])(&v8);
  return (v8 - 1237465637);
}

uint64_t f5zGmdURga6BZ(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16480 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16480 ^ 0x30 ^ dword_1EAF16720))] ^ 0x6F]) + 99];
  v6 = *(v5 - 4);
  v7 = off_1F0B1A830;
  v8 = off_1F0B1A3F0 - 12;
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - v6) ^ 0x30))) ^ 0x30u) - 12) ^ (91 * ((dword_1EAF16720 - v6) ^ 0x30))) + 26];
  v10 = 636859739 * (v6 ^ &v13 ^ 0xE2C729A08169AF30 ^ *(v9 - 4));
  *(v5 - 4) = v10;
  *(v9 - 4) = v10;
  LODWORD(v10) = a1 - ((2 * a1) & 0x4849C968);
  v11 = 891395573 * (v14 ^ 0x3A2D1FBB);
  v16 = a5;
  v17 = a4;
  v15 = a2;
  v14[0] = v10 - v11 + 606397620;
  v14[1] = 2272 - v11;
  v14[2] = v11 ^ ((a3 ^ 0xBEFFEFDD) + 1877663347 + ((2 * a3) & 0x7DFFDFBA));
  LOBYTE(v9) = 91 * ((*(v9 - 1) - *(v5 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16480) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 + dword_1EAF16480) ^ 0x30))] ^ 0x1D]) - 102][8 * (v9 ^ v8[v7[v9] ^ 0xE9]) + 51048])(v14);
  return (v18 - 1237465637);
}

uint64_t t5TGOUBRGxEjMilNWp(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16498) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 - dword_1EAF16498) ^ 0x30))] ^ 0x1D]) - 36];
  v10 = off_1F0B1A830;
  v11 = off_1F0B1A3F0 - 12;
  v12 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v9) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - *v9) ^ 0x30))) - 139];
  v13 = *v9 ^ &v16 ^ *(v12 - 4);
  *v9 = 636859739 * v13 - 0x1D38D65F7E9650D0;
  *(v12 - 4) = 636859739 * (v13 ^ 0xE2C729A08169AF30);
  v14 = 652747349 * (((&v17 | 0x6466586A03B8B724) - &v17 + (&v17 & 0x9B99A795FC4748D8)) ^ 0x3ED0F396414B89B1);
  v25 = 0;
  v26 = v14 ^ ((a1 ^ 0x8F7EBFFF9FF3AEB7) + 0x7991DF5F6C8EF1FDLL + ((2 * a1) & 0x1EFD7FFF3FE75D6ELL));
  v18 = v14 + 1344803742;
  v19 = (a2 ^ 0xF66817DF) + ((2 * a2) & 0xECD02FBE) - v14 + 1505754047;
  v22 = -1998276698 - v14;
  v24 = (a6 ^ 0x2EFEFFB1) + ((2 * a6) & 0x5DFDFF62) - v14 - 167772336;
  v27 = v14 + 85;
  v17 = a3;
  v28 = 5974 - v14;
  v31 = (a4 ^ 0x65FFFF41) + ((2 * a4) & 0xCBFFFE82) - 1090584640 + v14;
  v32 = a5;
  v29 = a9;
  v30 = a8;
  v20 = a7;
  v21 = 0;
  LOBYTE(v9) = 91 * ((*(v12 - 1) + *v9) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16498) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF16498) ^ 0x30))] ^ 0x45]) + 99][8 * (v9 ^ v11[v10[v9] ^ 0x30]) + 52720])(&v17);
  return (v23 - 1237465637);
}

uint64_t esRr9ErBMyrb1sB3ZZea5Ys(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16778) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 - dword_1EAF16778) ^ 0x30))] ^ 0x8F]) - 32];
  v10 = 91 * ((dword_1EAF16720 + *v9) ^ 0x30);
  v11 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v10 - 8) ^ 0x6Fu) - 8) ^ v10) - 10];
  v12 = 636859739 * (*v9 ^ &v16 ^ 0xE2C729A08169AF30 ^ *(v11 - 4));
  *v9 = v12;
  *(v11 - 4) = v12;
  LODWORD(v12) = a2 - ((2 * a2) & 0xE9DFC4AA) - 185605547;
  v13 = a5 - ((2 * a5) & 0x1B779278) - 1917073092;
  v14 = 891395573 * (&v17 ^ 0x3A2D1FBB);
  v17 = a4;
  v25 = v14 ^ (a9 - ((2 * a9) & 0xF05835B6) - 131327269);
  v26 = v14 ^ v13;
  v21 = 773578177 * a7 - v14 + 1290244352;
  v22 = v14 ^ v12;
  v23 = a1;
  v24 = a8;
  v18 = v14 ^ (1497810575 * a3 + 1316490292);
  v19 = v14 ^ 0x5A0C102A;
  v20 = a6;
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16778 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16778 ^ 0x30 ^ dword_1EAF16720))] ^ 0xCA]) - 83][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((*(v11 - 1) + *v9) ^ 0x30))) ^ 0x30u) - 12) ^ (91 * ((*(v11 - 1) + *v9) ^ 0x30))) + 53040])(&v17);
  return 4294924449;
}

uint64_t JvfqldDvSIjTyuq(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16650 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16650 ^ 0x30 ^ dword_1EAF16720))] ^ 0xCA]) - 86];
  v2 = 91 * (*v1 ^ dword_1EAF16720 ^ 0x30);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v2 - 8) ^ 0x6Fu) - 8) ^ v2) - 10];
  v4 = (*(v3 - 4) ^ *v1) - &v6;
  *v1 = 636859739 * v4 + 0x768A6804525E3610;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v8 = a1;
  v7[1] = 1427277979 * (((v7 | 0x6C5A6E06) - v7 + (v7 & 0x93A591F8)) ^ 0x3C0B236E) + 5911;
  LOBYTE(v3) = 91 * (*v1 ^ 0x30 ^ *(v3 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16650) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16650) ^ 0x30))] ^ 0x86]) + 46][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v3) ^ 0xE9u) - 12) ^ v3) + 51632])(v7);
  return (v7[0] - 1237465637);
}

uint64_t BaRGxXGfX6Am0I()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16630) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16630) ^ 0x30))] ^ 0x7D]) + 91];
  v1 = off_1F0B1A830;
  v2 = off_1F0B1A3F0 - 12;
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + *v0) ^ 0x30))) ^ 0x75u) - 12) ^ (91 * ((dword_1EAF16720 + *v0) ^ 0x30))) + 62];
  v4 = 636859739 * (&v6[*(v3 - 4) ^ *v0] ^ 0xE2C729A08169AF30);
  *v0 = v4;
  *(v3 - 4) = v4;
  v7[0] = 1468321087 * ((((v7 | 0x231A1EEE) ^ 0xFFFFFFFE) - (~v7 | 0xDCE5E111)) ^ 0x80AA07F) + 2432;
  LOBYTE(v3) = 91 * ((*(v3 - 1) + *v0) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16630 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC01C0[byte_196EC0070[(91 * (dword_1EAF16630 ^ 0x30 ^ dword_1EAF16720))] ^ 0x5D]) + 44][8 * (v3 ^ v2[v1[v3] ^ 0xEF]) + 51104])(v7);
  return (v7[1] - 1237465637);
}

uint64_t hFQBjnUlBh73NidnyhtgBkR(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16490) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16490) ^ 0x30))] ^ 0xF5]) + 14];
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v5 ^ dword_1EAF16720 ^ 0x30))) ^ 0x75u) - 12) ^ (91 * (*v5 ^ dword_1EAF16720 ^ 0x30))) + 62];
  v7 = &v9[*v5 + *(v6 - 4)];
  *v5 = 636859739 * v7 - 0x1D38D65F7E9650D0;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  LODWORD(v7) = 1427277979 * ((((2 * &v10) | 0x3EF21F16) - &v10 - 528027531) ^ 0x4F2842E3);
  v14 = v7 ^ 0xAE6F9CD;
  v10 = a1;
  v11 = v7 + a4;
  v12 = v7;
  v16 = v7 + a2;
  v15 = a5;
  v13 = a3;
  LOBYTE(v6) = 91 * (*v5 ^ 0x30 ^ *(v6 - 1));
  (*&(&off_1F0B1A0C0)[((91 * (dword_1EAF16490 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * (dword_1EAF16490 ^ 0x30 ^ dword_1EAF16720))] ^ 0xF9]) + 82][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v6 - 8) ^ 0x7Du) - 8) ^ v6) + 52736])(&v10);
  return 4294924449;
}

uint64_t t3dweEzksdfLu97dkpe03r1s()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16948) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16948) ^ 0x30))] ^ 0xE9]) - 131];
  v1 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - *v0) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - *v0) ^ 0x30))) - 139];
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 636859739 * v2 + 0x1D38D65F7E9650D0;
  *(v1 - 4) = 636859739 * (v2 ^ 0xE2C729A08169AF30);
  v5 = 0;
  v6 = 2623 - 1427277979 * (((&v5 | 0x3E84B0C5) + (~&v5 | 0xC17B4F3A)) ^ 0x6ED5FDAC);
  LOBYTE(v1) = 91 * (*v0 ^ 0x30 ^ *(v1 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16948) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16948) ^ 0x30))] ^ 0xCA]) - 83][8 * (*(off_1F0B1A428 + (*(off_1F0B1A250 + v1 - 8) ^ 0x8Fu) - 8) ^ v1) + 51944])(&v5);
  return v7 ^ 0xB639C7C3;
}

uint64_t Ud5PNQt99i(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF168F8) ^ 0x30)) ^ byte_196EBFF70[byte_196EBFBF0[(91 * ((dword_1EAF16720 + dword_1EAF168F8) ^ 0x30))] ^ 0x8F]) + 23];
  v2 = 91 * (*v1 ^ dword_1EAF16720 ^ 0x30);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A400 + (*(off_1F0B1A690 + v2 - 4) ^ 0x1Du) - 12) ^ v2) - 103];
  v4 = *(v3 - 4) - *v1 - &v6;
  *v1 = 636859739 * v4 + 0x768A6804525E3610;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v7 = a1;
  v9 = 583883621 * (&v7 ^ 0xA133DCAF) + 3989;
  LOBYTE(v3) = 91 * (*v1 ^ 0x30 ^ *(v3 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF168F8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF168F8) ^ 0x30))] ^ 0xEF]) - 119][8 * (*(off_1F0B1A428 + (*(off_1F0B1A250 + v3 - 8) ^ 0x8Fu) - 8) ^ v3) + 51760])(&v7);
  return v8;
}

uint64_t FhS8L9pZ83yt(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * (dword_1EAF164C8 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF164C8 ^ 0x30 ^ dword_1EAF16720))] ^ 0x9A]) - 19];
  v3 = *(v2 - 4);
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + v3) ^ 0x30)) - 8) ^ 0x7Du) - 8) ^ (91 * ((dword_1EAF16720 + v3) ^ 0x30))) + 100];
  v5 = *(v4 - 4) - v3 - &v8;
  *(v2 - 4) = 636859739 * (v5 + 0x1D38D65F7E9650D0);
  *(v4 - 4) = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  v6 = 891395573 * (((v9 | 0xA5376B38) - v9 + (v9 & 0x5AC894C0)) ^ 0x9F1A7483);
  v10 = a1;
  v9[0] = v6 ^ 0xAD8;
  v9[1] = v6 + 686205303 * a2 + 1062900477;
  LODWORD(v4) = 636859739 * ((*(v4 - 1) + *(v2 - 1)) ^ 0x8169AF30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF164C8) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF164C8) ^ 0x30))] ^ 0xE9]) - 138][8 * (*(off_1F0B1A400 + (*(off_1F0B1A690 + v4 - 4) ^ 0x1Du) - 12) ^ v4) + 52120])(v9);
  return 4294924449;
}

uint64_t u9Pn79N5SPDWUA3d2nHLYS0sWXB1z(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16620) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16620) ^ 0x30))] ^ 0x86]) + 29];
  v5 = *(v4 - 4);
  v6 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + v5) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_1EAF16720 + v5) ^ 0x30))) - 10];
  v7 = &v10[v5 + *(v6 - 4)];
  *(v4 - 4) = 636859739 * v7 - 0x1D38D65F7E9650D0;
  *(v6 - 4) = 636859739 * (v7 ^ 0xE2C729A08169AF30);
  v8 = 1384597421 * (((v11 | 0x7FF52EC9) - (v11 & 0x7FF52EC9)) ^ 0x9D3B77B0);
  v11[0] = a3;
  v11[2] = a4;
  v11[3] = a1;
  v12 = -117546963 - v8;
  v13 = v8 + 851988233 * a2 + 953221521;
  LOBYTE(v4) = 91 * (*(v4 - 1) ^ 0x30 ^ *(v6 - 1));
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16620) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16620) ^ 0x30))] ^ 0x6F]) - 9][8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v4) ^ 0xB9u) - 12) ^ v4) + 52136])(v11);
  return 4294924449;
}

uint64_t qo0PLbO2vEnVix1GkQeB8LR(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16738 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC01C0[byte_196EC0070[(91 * (dword_1EAF16738 ^ 0x30 ^ dword_1EAF16720))] ^ 0x5D])];
  v2 = *(v1 - 4);
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v2) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 + v2) ^ 0x30))) + 45];
  v4 = v2 - &v7 + *(v3 - 4);
  *(v1 - 4) = 636859739 * v4 + 0x1D38D65F7E9650D0;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v5 = 346387183 * (v8 ^ 0x8568D5D0);
  v8[0] = v5 ^ (a1 - ((2 * a1) & 0x3790BC82) - 1681367487);
  v8[2] = v5 ^ 0x455A94F9;
  LOBYTE(v3) = 91 * ((*(v3 - 1) - *(v1 - 1)) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16738) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 - dword_1EAF16738) ^ 0x30))] ^ 0x9A]) - 64][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v3 - 8) ^ 0x6Fu) - 8) ^ v3) + 52216])(v8);
  return (v8[1] - 1237465637);
}

uint64_t YuSm1Tar2l(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16760 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16760 ^ 0x30 ^ dword_1EAF16720))] ^ 0x75]) - 25];
  v3 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v2 ^ dword_1EAF16720 ^ 0x30))) ^ 0x86u) - 12) ^ (91 * (*v2 ^ dword_1EAF16720 ^ 0x30))) + 45];
  v4 = *(v3 - 4) - *v2 - &v6;
  *v2 = 636859739 * v4 + 0x768A6804525E3610;
  *(v3 - 4) = 636859739 * (v4 ^ 0xE2C729A08169AF30);
  v7[0] = -2041212326 - 346387183 * ((((2 * v7) | 0xD2B1382) - v7 - 110463425) ^ 0x83FD5C11);
  v8 = a2;
  v9 = a1;
  LOBYTE(v3) = 91 * ((*(v3 - 1) - *v2) ^ 0x30);
  (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16760) ^ 0x30)) ^ byte_196EBFCF0[byte_196EC04F0[(91 * ((dword_1EAF16720 + dword_1EAF16760) ^ 0x30))] ^ 0xF9]) + 82][8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v3 - 8) ^ 0xCAu) - 8) ^ v3) + 52008])(v7);
  return v7[1];
}

uint64_t sub_196344D60(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 1864678469 * (((result | 0x7644FC67BB474816) - (result | 0x89BB039844B8B7E9) - 0x7644FC67BB474817) ^ 0xEB4C35488375FFFLL);
  v3 = *(result + 36) ^ (1864678469 * (((result | 0xBB474816) - (result | 0x44B8B7E9) + 1152956393) ^ 0x88375FFF));
  v4 = *(result + 32) ^ (1864678469 * (((result | 0xBB474816) - (result | 0x44B8B7E9) + 1152956393) ^ 0x88375FFF));
  v5 = *(result + 16);
  v6 = *result - v2;
  v7 = *(result + 8) ^ (1864678469 * (((result | 0xBB474816) - (result | 0x44B8B7E9) + 1152956393) ^ 0x88375FFF));
  v8 = *(result + 40) - v2;
  *v1 = 67110402;
  *(v1 + 4) = v3;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v4;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v6;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v7;
  *(v1 + 30) = 2048;
  *(v1 + 32) = v8;
  *(v1 + 40) = 1024;
  *(v1 + 42) = v5 + 1864678469 * (((result | 0xBB474816) - (result | 0x44B8B7E9) + 1152956393) ^ 0x88375FFF);
  return result;
}

uint64_t sub_196344E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, char *a17)
{
  v23 = (v22 - 1130045988) & 0x11753;
  v24 = 912648571 * (((&a15 ^ 0x7271E62ABC209957 | 0xC5DE548353D93355) - (&a15 ^ 0x7271E62ABC209957 | 0x3A21AB7CAC26CCAALL) + 0x3A21AB7CAC26CCAALL) ^ 0xF70CA0213334E637);
  a16 = (v22 - 715640298) ^ v24;
  a17 = &a11;
  a15 = &v17[-v24];
  (*(v20 + 8 * (v22 + 1938)))(&a15);
  (*(v20 + 8 * (v22 + 1925)))(a9, v18, 0, *(v19 + 8 * (v22 - 4430)), &a11, 12);
  a17 = v17;
  HIDWORD(a15) = (v23 + 423) ^ (566710099 * (&a15 ^ 0x8C45588C));
  LOBYTE(a16) = 83 * (&a15 ^ 0x8C) + 90;
  v25 = (*(v20 + 8 * (v23 + 4813)))(&a15);
  return (*(v20 + 8 * (((*v21 == 0) * ((101 * (v23 ^ 0x741)) ^ 0xB01)) ^ v23)))(v25);
}

void ZZUDP2EEn9tLDQ()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A2E0 + (*(off_1F0B1A3B0 + (91 * (qword_1EAF166E8 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0x5Du) - 8) ^ (91 * (qword_1EAF166E8 ^ 0x30 ^ dword_1EAF16720))) + 43];
  v1 = 636859739 * ((*(v0 - 4) + qword_1EAF166E8) ^ &v2 ^ 0xE2C729A08169AF30);
  qword_1EAF166E8 = v1;
  *(v0 - 4) = v1;
  __asm { BRAA            X8, X17 }
}

void FLKdioewnv289voppasDk()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (qword_1EAF167C0 ^ 0x30 ^ dword_1EAF16720))) ^ 0xE9u) - 12) ^ (91 * (qword_1EAF167C0 ^ 0x30 ^ dword_1EAF16720))) - 139];
  v3 = qword_1EAF167C0 ^ &v6 ^ *(v2 - 4);
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF167C0 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196345280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, int a35)
{
  v38 = (v35 + 158) | 0x1084;
  v39 = *(v37 - 216);
  v40 = *v39;
  v41 = ((a35 ^ 0x8550D15) - 1572675640) ^ a35 ^ ((a35 ^ 0xCB822106) + 1637217237) ^ ((a35 ^ 0x5FF6F7EE) - 169794243) ^ ((a35 ^ 0xC9C9E74D ^ v38) + 1675502595);
  v42 = ((2 * *a33) & 0xFDF7FBFE) + (*a33 ^ 0xFEFBFDFF) + 17039873;
  *(*v39 + v42) = HIBYTE(v41) ^ 0x55;
  *(v40 + v42 + 1) = BYTE2(v41) ^ 0xE8;
  *(v40 + v42 + 2) = ((((a35 ^ 0xD15) - 8248) ^ a35 ^ ((a35 ^ 0x2106) - 3115) ^ ((a35 ^ 0xF7EE) + 9533) ^ ((a35 ^ 0xE74D ^ ((v35 + 158) | 0x1084)) + 9219)) >> 8) ^ 0x2D;
  *(v40 + v42 + 3) = ((a35 ^ 0x15) - 56) ^ a35 ^ ((a35 ^ 6) - 43) ^ ((a35 ^ 0xEE) + 61) ^ ((a35 ^ 0x4D ^ ((v35 - 98) | 0x84)) + 3) ^ 0x2D;
  v43 = (*a33 + 4);
  *a33 = v43;
  return (*(v36 + 8 * ((100 * (a30 > *v39 + (v43 ^ 0x1AE7D7EFECEDBB3FLL) + 0x1B50B549D35EC8FELL + ((2 * v43) & 0x1D9DB767EuLL) - 0x36388D39C04C843DLL)) ^ v38)))(*v39, 100, 807070153, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void pNl28qYdqR8Dyw()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A660 - 8;
  v1 = off_1F0B1A1D8 - 8;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 - qword_1EAF16998) ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * ((dword_1EAF16720 - qword_1EAF16998) ^ 0x30))) - 10];
  v3 = qword_1EAF16998 - &v6 + *(v2 - 4);
  v4 = 636859739 * v3 + 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF16998 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963455F8()
{
  v5 = 912648571 * ((((2 * &v9) | 0xC02CA9DA) - &v9 - 1612076269) ^ 0xBCDB18D8);
  v11 = ((v1 - 1237732212) ^ v2) - v5;
  v10 = v8;
  v9 = (v1 + 1318474844) ^ v5;
  (*(v4 + 8 * (v1 ^ 0xADC)))(&v9);
  (*(v4 + 8 * (v1 + 1649)))(v7, v0, 0, *(v3 + 8 * (v1 ^ 0x13E5)) - 8, v8, 8);
  return v2 ^ 0xB639C7C3;
}

void dh6aBEBplJsY(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963458AC()
{
  v3 = ((2 * *(v1 + 12)) & 0x1DDF5FF7ELL) + ((((v0 + 1786322205) & 0x9586D77F) - 0x1480828011050090) ^ *(v1 + 12)) + 0x148082803E625D07;
  v5 = v3 >= 0x2D5D5CC2 && v3 <= *(v1 + 8) + 761093314;
  return (*(v2 + 8 * ((127 * v5) ^ v0)))();
}

uint64_t sub_196345994(uint64_t a1)
{
  (*(v2 + 8 * (v3 + 5946)))(v4, @"igoeg", a1);
  *(v5 - 184) = v3 + 1427277979 * (((~(v5 - 184) & 0xB22E7F76) - (~(v5 - 184) | 0xB22E7F77)) ^ 0xE27F321F) - 202;
  *(v5 - 176) = v9;
  (*(v2 + 8 * (v3 + 5913)))(v5 - 184);
  result = (*(v2 + 8 * (v3 ^ 0x1B13)))(a1);
  *(v8 + 8) = v1;
  return result;
}

uint64_t sub_196345B3C(uint64_t result)
{
  v1 = 583883621 * ((~result & 0xC1D387F757959698 | result & 0x3E2C7808A86A6967) ^ 0x3A78F14DF6A64A37);
  v2 = *(result + 8);
  v3 = *result - v1;
  LODWORD(v1) = *(result + 20) + v1;
  *v2 = 136315394;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1;
  return result;
}

void ZaLGtFOR8sd3n7()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * (qword_1EAF169D0 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0xF9u) - 4) ^ (91 * (qword_1EAF169D0 ^ 0x30 ^ dword_1EAF16720))) + 81];
  v1 = &v4[*(v0 - 4) ^ qword_1EAF169D0];
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF169D0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196345E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t *a37, char *a38, int a39, uint64_t a40, uint64_t a41)
{
  v48 = (v44 - 1202275684) & 0x447F;
  if (v45 >= 0x40)
  {
    v49 = 64;
  }

  else
  {
    v49 = v45;
  }

  if (v46 >= 0x40)
  {
    v50 = 64;
  }

  else
  {
    v50 = v46;
  }

  v51 = 1427277979 * (((&a31 | 0x20F8BE78DD4F066FLL) - (&a31 | 0xDF07418722B0F990) - 0x20F8BE78DD4F0670) ^ 0x69279CE8D1E4B07);
  a38 = &a20;
  a33 = v51 + a14;
  a34 = a15 - v51;
  a31 = v51 ^ v46;
  a32 = v51 + v50;
  LODWORD(a36) = v51 ^ v45;
  HIDWORD(a36) = (v44 + 417140626) ^ v51;
  LODWORD(a37) = v51 + v49;
  a35 = (v47 - v51);
  (*(v43 + 8 * (v44 + 5266)))(&a31);
  (*(v43 + 8 * (v44 + 5207)))(a9, v41, 0, *(v42 + 8 * (v44 - 1302)), &a20, 56);
  v52 = 891395573 * (((&a31 | 0x416209F8B4F0EEALL) - (&a31 | 0xFBE9DF6074B0F115) - 0x416209F8B4F0EEBLL) ^ 0x3A12ACE4B1621151);
  a40 = a15;
  a41 = a14;
  a37 = &a18;
  a38 = a13;
  a31 = (v48 + 2635) ^ v52;
  LODWORD(a33) = v52 ^ ((v46 ^ 0xD7F8EDFF) + 2112831278 + ((2 * v46) & 0xAFF1DBFE));
  a35 = &a17;
  a36 = (v47 - ((2 * v47) & 0x6B570093361338D4) - 0x4A547FB6809690AALL + (v48 ^ 0x1BA02979u)) ^ v52;
  a34 = a12;
  a39 = ((v45 ^ 0x77E82DBD) - 570425488 + ((((v48 + 2142648682) & 0x1BA0EF3C) - 735039898) & (2 * v45))) ^ v52;
  v53 = (*(v43 + 8 * (v48 + 5534)))(&a31);
  return (*(v43 + 8 * ((29 * (a18 != 0)) ^ v48)))(v53);
}

uint64_t sub_196346154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((797 * ((((v3 ^ 0x1C9Du) - 2276) ^ 0xB5DLL) == (v2 & 0xFFFFFFE0))) ^ v3 ^ 0x1C9D)))();
}

uint64_t sub_1963461B4()
{
  v5 = (*(v4 - 176) | ((*(v4 - 176) < v1) << 32)) + *(v2 + 12) - 142135256;
  v7 = v5 < 0x41496A4D || v5 > *(v2 + 8) + 1095330381;
  v8 = *(v3 + 8 * ((v7 * (v0 - 10204 + ((v0 + 967) | 0x10))) ^ v0));
  *(v4 - 200) = v2;
  return v8();
}

uint64_t sub_196346224()
{
  *(v6 - 136) = (v0 + 1311675827) ^ (1468321087 * ((2 * (v3 & 0x11C066A0) - v3 - 297821859) ^ 0x3AD0D833));
  *(v6 - 144) = v1;
  (*(v5 + 8 * (v0 ^ 0x1AD0)))(v6 - 144);
  v7 = (*(v5 + 8 * (v0 + 5671)))(**(v4 + 8 * (v0 - 712)), *(v4 + 8 * (v0 ^ 0x3A0)) - 4, v2);
  v8 = ((v7 << ((((v0 - 105) | 0xC9) ^ 0x2A) + v0 - 75)) & 0xF3857E5E) + (v7 ^ 0x79C2BF2F);
  *(v6 - 136) = (v0 - 50584475) ^ (912648571 * (((v3 | 0x8B25FB2D) - (v3 & 0x8B25FB2D)) ^ 0x57E8B718));
  *(v6 - 144) = v1;
  v9 = (*(v5 + 8 * (v0 ^ 0x1ABE)))(v6 - 144);
  return (*(v5 + 8 * ((5519 * (v8 == 2042806063)) ^ v0)))(v9);
}

uint64_t sub_196346504()
{
  v7 = *v4;
  *(v3 - 1) = *(v4 - 1);
  *v3 = v7;
  return (*(v6 + 8 * (v1 | (4 * (((v0 == v5) ^ v2) & 1)))))();
}

uint64_t sub_196346538@<X0>(int a1@<W8>)
{
  v7 = (a1 - 1695615790) & 0x6510FF5F;
  (*(v4 + 8 * (a1 + 1813)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v8 = (*(v4 + 8 * (v7 + 4835)))(v2);
  return (*(v4 + 8 * (((((((v7 - 1073785668) & 0x789FB6F7) + 1056318760) & v3) - 1601) * (v1 >= v5)) ^ (v6 + ((v7 - 1073785668) & 0x789FB6F7) + 2132))))(v8);
}

uint64_t sub_196346608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (*(v14 + 8 * (v15 ^ 0x1DF4)))(a13, a12);
  *v13 = v16;
  return (*(v14 + 8 * (((v16 != 0) * ((v15 + 5131) ^ 0x185F)) ^ v15)))();
}

uint64_t sub_196346654()
{
  v7 = *v1;
  if (*v1 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 1468321087 * ((-2 - ((~&v13 | 0x9E976899C793CCBBLL) + (&v13 | 0x61689766386C3344))) ^ 0xCB5C81F6137C8DD5);
  v13 = *v0 ^ v9;
  v16 = v7 - v9;
  v17 = v12;
  v14 = v8 - v9;
  v15 = v2 - v9 - 1035723127;
  (*(v6 + 8 * (v2 + 4861)))(&v13);
  (*(v6 + 8 * (v2 ^ 0x1F59u)))(v11, v3, 0, *(v5 + 8 * (v2 - 1765)) - 12, v12, 24);
  return (v4 - 1237465637);
}

uint64_t sub_196346784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 + 8) = 4096;
  *v4 = v6;
  return v5(4857, 4294962794, a3, a4, v7);
}

uint64_t sub_1963467C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6 - 1;
  *(a1 + v9) = *(a6 + v9);
  return (*(v8 + 8 * (((v9 == 0) * (v7 ^ 0x1333)) ^ v7)))();
}

uint64_t sub_19634682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v12 + 52864))(a11, a10);
  *v13 = v14;
  return (*(v12 + 8 * ((63 * (v14 == 0)) ^ v11)))();
}

uint64_t sub_19634690C@<X0>(_DWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, int a20, int a21)
{
  *v21 = *(v23 - 192) - 1237465637;
  *a1 = *(v23 - 180) + ((a18 | 4) ^ 0xB63DC545);
  *(v23 - 252) = a21;
  return (*(v22 + 8 * (((*(v23 - 208) != 0) * ((((((a18 | 4) + 379) | 0x1100) - 788) | 0x92A) - 6390)) ^ (((a18 | 4) + 379) | 0x1100))))();
}

uint64_t sub_196346970@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v5 + 32;
  v10 = (v7 ^ v9) + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 == v9) * a1) ^ v4)))();
}

uint64_t sub_196346978()
{
  v5 = (*(v0 + 8 * (v4 + 2971)))(v1, v2);
  *v3 = v5;
  return (*(v0 + 8 * (((((v4 - 3617) | 0x1002) + ((v4 + 10623826) | 0xC041240) - 212217274) * (v5 == 0)) ^ v4)))();
}

uint64_t sub_196346A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, int a38, int a39, int a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46, uint64_t a47, int a48, int a49, int a50, uint64_t a51, int a52)
{
  v58 = v55 + 5131;
  v59 = *(v57 + 1);
  v60 = *v57;
  v61 = v57[10];
  if (v61 >= 0x40)
  {
    v62 = 64;
  }

  else
  {
    v62 = v57[10];
  }

  if (v52 >= 0x40)
  {
    v63 = 64;
  }

  else
  {
    v63 = v52;
  }

  v64 = *(v57 + 6);
  v65 = 566710099 * (((&a36 | 0x7FC8D5BAABEF1C7) - (&a36 | 0xF80372A455410E38) - 0x7FC8D5BAABEF1C8) ^ 0xF874638926FBA94BLL);
  v56[3] = *(v57 + 4) - v65;
  v56[7] = v65 ^ a14;
  v56[5] = v64 ^ v65;
  a42 = v52 - v65;
  a40 = v62 - v65;
  a50 = v61 ^ v65;
  a49 = (v55 + 2137915116) ^ v65;
  *v56 = v59 - v65;
  v56[1] = &a26;
  a46 = v60 - v65;
  a48 = v63 - v65;
  (*(v54 + 8 * (v55 ^ 0x1DDEu)))(&a36);
  (*(v54 + 8 * (v55 + 5508)))(a11, v53, 0, (&off_1F0B1A0C0)[v55 ^ 0x44Eu], &a26, 72);
  v66 = *v57;
  v67 = *(v57 + 4);
  v68 = v57[10];
  v69 = *(v57 + 6);
  v70 = (*(v57 + 1) ^ 0xFF1CDF5FECEEECFELL) + 0x9F3BFFF1F93B3B6 + (((v55 + 1098748840) & 0x1E827EF7 ^ 0xFE39BEBFD9DDCF38) & (2 * *(v57 + 1)));
  v71 = *v57 ^ 0x73EBBBBE;
  v72 = 652747349 * ((-2 - ((~&a36 | 0x747265F74CB02F8BLL) + (&a36 | 0x8B8D9A08B34FD074))) ^ 0x2EC4CE0B0E43111ELL);
  v56[12] = a14;
  v56[9] = &a19;
  v56[10] = &a17;
  a42 = -1998276698 - v72;
  a44 = (v52 ^ 0x6FFEFF1B) + ((2 * v52) & 0xDFFDFE36) - v72 - 1258291226;
  *v56 = v67;
  LOBYTE(a48) = v72 + 84;
  v56[6] = 0;
  v56[7] = v70 ^ v72;
  v56[2] = &a18;
  v56[3] = v69;
  a49 = v58 - v72 - 217;
  a52 = v72 + (v68 ^ 0xA6FFFF81) + ((2 * v68) & 0x4DFFFF02) + 2113863552;
  a38 = v72 + v71 + ((2 * v66) & 0xE7D7777C) - 600025120;
  a39 = 1344803742 - v72;
  v73 = (*(v54 + 8 * (v55 + 5612)))(&a36);
  if (a18)
  {
    v74 = a17 == 0;
  }

  else
  {
    v74 = 1;
  }

  v76 = v74 || a19 == 0;
  return (*(v54 + 8 * (((8 * v76) | (16 * v76)) ^ v58)))(v73);
}

uint64_t sub_196346E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((5763 * (((v3 - 1410876707) ^ 0x32ELL) == (((v3 - 1410876707) + 4294966482) & v2))) ^ (v3 - 1410876707))))();
}

uint64_t sub_196347038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v16 ^ 0x176C)))(a14, a13);
  *v15 = v17;
  return (*(v14 + 8 * (((v17 == 0) * ((((v16 - 3728) | 0x1410) ^ 0xBC) + 6 * (v16 ^ 0xECD))) ^ v16)))();
}

uint64_t sub_19634709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, int a33, char a34)
{
  v40 = (v34 + 3251) | 0x180;
  (*(v37 + 8 * (v34 ^ 0x1A9Bu)))(v35);
  v41 = *v36;
  v42 = *v38;
  v43 = 1311869473 * (((((v39 - 152) | 0x6B540C06) ^ 0xFFFFFFFE) - (~(v39 - 152) | 0x94ABF3F9)) ^ 0x7F44E955);
  *(v39 - 152) = (*(v38 + 3) + 599664785 - ((2 * *(v38 + 3)) & 0x477C5122)) ^ v43;
  *(v39 - 120) = v43 + v34 + 4781;
  *(v39 - 112) = (v40 ^ 0x21932A29) - v43 + 622816387 * v41;
  *(v39 - 144) = v42;
  *(v39 - 136) = &a31;
  *(v39 - 128) = &a34;
  (*(v37 + 8 * (v34 ^ 0x1AA3u)))(v39 - 152);
  v44 = *(v39 - 116);
  v45 = (*(v37 + 8 * (v34 ^ 0x1A9Du)))(v35);
  return (*(v37 + 8 * ((27 * (v44 == (v40 ^ 0x60DCB80A))) ^ v40)))(v45);
}

uint64_t sub_196347220()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * ((v0 | 0x8A2) + 3635)))(v1);
  return v2(v4);
}

uint64_t sub_196347254@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(v1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((v3 - 24) ^ 0x1E3Eu) - 4546 != ((v3 - 4116) & v2);
  return (*(v4 + 8 * (((8 * v6) | (32 * v6)) ^ (v3 - 24))))();
}

uint64_t sub_196347384(uint64_t a1, uint64_t a2, int a3)
{
  v6 = v3 - a3 - 2918;
  v7 = (*(v5 + 8 * (v3 ^ 0x14C6)))(v4, 0);
  return (*(v5 + 8 * ((v7 * (((v3 ^ 0x71A) + 1400846233) ^ v6)) ^ v3)))();
}

uint64_t sub_1963473E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, int a17, char *a18)
{
  v25 = 912648571 * (((&a15 ^ 0x1A18533DC80C6CA3) - 2 * ((&a15 ^ 0x1A18533DC80C6CA3) & 0xFCB70CEECEFA8F0) + 0xFCB70CEECEFA8F0) ^ 0x5570317BF82E8866);
  a16 = (v23 - 715636867) ^ v25;
  a18 = &a13;
  a15 = v18 - v25;
  (*(v21 + 8 * (v23 + 5369)))(&a15);
  (*(v21 + 8 * (v23 + 5356)))(v24, v19, 0, *(v20 + 8 * (v23 - 1109)) - 4, &a13, 12);
  v26 = 1864678469 * ((((2 * &a15) | 0xADD71E1E) - &a15 - 1458278159) ^ 0x659B98E6);
  a17 = v26 + v23 + 1724;
  a15 = v18;
  LOBYTE(a16) = 31 - v26;
  v27 = (*(v21 + 8 * (v23 + 5441)))(&a15);
  return (*(v21 + 8 * (((*v22 == 0) * ((v23 ^ 0x48) + 4248)) ^ v23)))(v27);
}

uint64_t sub_196347650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, char *a23, uint64_t *a24)
{
  v31 = (v25 - 1566) | 0x102A;
  v32 = 912648571 * (((&a20 ^ 0x41173C8AA168A30BLL | 0x1008E8E2DA48A6CBLL) - (&a20 ^ 0x41173C8AA168A30BLL) + ((&a20 ^ 0x41173C8AA168A30BLL) & 0xEFF7171D25B75930)) ^ 0x11BCC6E0A7ED49F5);
  a20 = v26 - v32;
  a21 = (v25 - 715637477) ^ v32;
  a23 = &a17;
  (*(v29 + 8 * (v25 + 4759)))(&a20);
  (*(v29 + 8 * (v25 ^ 0x1EB6u)))(a9, v27, 0, *(v28 + 8 * (v25 - 1797)), &a17, 12);
  v33 = 652747349 * ((2 * (&a20 & 0x8A95F6C4B02BC18) - &a20 - 0x8A95F6C4B02BC1ELL) ^ 0xADE00B6FF60E7D77);
  a24 = &a11;
  a20 = v26 + v33 - ((((v31 - 2850) | 0x882u) + 0x1A6E4ACB3CB57774) & (2 * v26)) + 0xD3725659E5AC2FFLL;
  LOBYTE(a23) = v33 - 99;
  a22 = v31 - v33 + 2105;
  v34 = (*(v29 + 8 * (v31 ^ 0x8CB)))(&a20);
  *v24 = a11;
  return (*(v29 + 8 * ((1122 * (*v30 == 0)) ^ v31)))(v34);
}

uint64_t sub_19634789C(uint64_t a1, uint64_t a2)
{
  *(v4 + 8) = 4096;
  *v3 = v4;
  return v2(4294960793, a2, 1374086239);
}

uint64_t sub_1963478DC@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v4 = (v2 ^ 0x39FA6DDC5EF9DFB9) + ((2 * v2) & 0xBDF3BF72) - 0x39FA6DDB63EA4C29;
  v6 = v4 < 0xFB0F938C || v4 > *(a1 + 8) + 4212102028u;
  return (*(v3 + 8 * ((v6 * ((a2 - 991389091) & 0x3B176CFE ^ 0x1F33)) ^ a2)))();
}

uint64_t sub_196347B88@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W7>, int a5@<W8>)
{
  v11 = (v7 & (2 * a5)) + (a5 ^ v6) + 151391855;
  v12 = (*(*v8 + (v11 + 3222)) << 24) | (*(*v8 + (v11 + 3223)) << 16) | (*(*v8 + v11 + (a4 ^ v5)) << 8) | *(*v8 + (v11 + 3225));
  *v10 = (v12 ^ a1) + a3 + (a2 & (2 * v12));
  *(v8 + 12) += 4;
  return v9();
}

uint64_t sub_196347CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39)
{
  v41 = (*(v40 + 8 * (v39 + 4852)))(a38, a37);
  *a39 = v41;
  return (*(v40 + 8 * (((v41 == 0) * (((v39 ^ 0x6DF) + 724) ^ (1917 * (v39 ^ 0x6DF)))) ^ v39)))();
}

unint64_t sub_196347D28(uint64_t a1)
{
  v1 = 583883621 * ((-2 - ((~a1 | 0x297F82BF5AACE2DFLL) + (a1 | 0xD6807D40A5531D20))) ^ 0xD2D4F405FB9F3E70);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 16) + v1;
  v4 = *(a1 + 12) ^ v1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 28) - v1;
  v7 = *(a1 + 56) - v1;
  v8 = *(a1 + 4) + v1;
  v9 = *(a1 + 8) + v1;
  v10 = *(a1 + 48);
  result = *(a1 + 40) - v1;
  *v10 = 68159746;
  *(v10 + 4) = v2;
  *(v10 + 8) = 2096;
  *(v10 + 10) = v3;
  *(v10 + 18) = 1024;
  *(v10 + 20) = v4;
  *(v10 + 24) = 1040;
  *(v10 + 26) = v6;
  *(v10 + 30) = 2096;
  *(v10 + 32) = v7;
  *(v10 + 40) = 1024;
  *(v10 + 42) = v8;
  *(v10 + 46) = 1040;
  *(v10 + 48) = v9;
  *(v10 + 52) = 2096;
  *(v10 + 54) = result;
  *(v10 + 62) = 1024;
  *(v10 + 64) = v5 ^ v1;
  return result;
}

uint64_t sub_196347E58(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = 1466156297 * ((~result & 0x8356BEADEEF6B6C5 | result & 0x7CA941521109493ALL) ^ 0x993CB663D413694);
  v5 = *(result + 32) + v4;
  v6 = *(result + 28) - v4;
  *v1 = 67109890;
  *(v1 + 4) = v5;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v6;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v2 - v4;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v3 - v4;
  return result;
}

uint64_t sub_196347F34(uint64_t a1)
{
  v1 = 912648571 * (((a1 | 0xB1D7E7F812218745) - (a1 & 0xB1D7E7F812218745)) ^ 0xF174F570CEECCB70);
  v2 = *(a1 + 24) + v1;
  v3 = *(a1 + 64) ^ v1;
  v4 = *a1 + v1;
  v5 = *(a1 + 48) ^ v1;
  v6 = *(a1 + 56) - v1;
  v7 = *(a1 + 36) + v1;
  v8 = *(a1 + 80) + v1;
  v9 = *(a1 + 4) ^ v1;
  v10 = *(a1 + 40) + v1;
  v11 = *(a1 + 72) + v1;
  v12 = *(a1 + 32) + v1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16) - v1;
  result = 134220802;
  *v13 = 134220802;
  *(v13 + 4) = v2;
  *(v13 + 12) = 1024;
  *(v13 + 14) = v3;
  *(v13 + 18) = 1040;
  *(v13 + 20) = v4;
  *(v13 + 24) = 2096;
  *(v13 + 26) = v5;
  *(v13 + 34) = 1024;
  *(v13 + 36) = v6;
  *(v13 + 40) = 1040;
  *(v13 + 42) = v7;
  *(v13 + 46) = 2096;
  *(v13 + 48) = v8;
  *(v13 + 56) = 1024;
  *(v13 + 58) = v9;
  *(v13 + 62) = 1040;
  *(v13 + 64) = v10;
  *(v13 + 68) = 2096;
  *(v13 + 70) = v11;
  *(v13 + 78) = 1024;
  *(v13 + 80) = v12;
  *(v13 + 84) = 2048;
  *(v13 + 86) = v14;
  return result;
}

uint64_t sub_19634810C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1 + 566710099 * ((2 * (a1 & 0x18FD296F) - a1 + 1728239248) ^ 0xEB478E1C);
  v5 = *(a1 + 8);
  v4 = v2 + 1427277979 * ((-1935922597 - (&v4 | 0x8C9C2A5B) + (&v4 | 0x7363D5A4)) ^ 0x233298CC) - 2024067510;
  result = (*&(&off_1F0B1A0C0)[v2 ^ 0x78A4D3C1][8 * (v2 ^ 0x78A4CA77) - 8])(&v4);
  *(a1 + 16) = 0;
  return result;
}

void sub_196348230(_DWORD *a1)
{
  v1 = *a1 - 1311869473 * ((~a1 & 0xFE023F44 | a1 & 0x1FDC0BB) ^ 0x15ED25E8);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_196348304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v43 = v41 + 2458;
  v44 = (v41 + 2458) ^ 0xA66;
  if ((a23 - 1237465702) >= 0xFFFFFFBF)
  {
    v45 = a23 + (v43 ^ 0xB63DCAD2);
  }

  else
  {
    v45 = 64;
  }

  v46 = ((((v42 - 184) | 0xC07A107F5321F8B7) - ((v42 - 184) & 0xC07A107F5321F8B7)) ^ 0x80D902F78FECB482) * v38;
  *(v42 - 152) = &a37;
  *(v42 - 168) = a30 - v46;
  *(v42 - 160) = a24 ^ v46;
  *(v42 - 176) = (v43 - 1476600061) ^ v46;
  *(v42 - 172) = a23 + (v43 ^ 0xB63DCAD2) - v46;
  *(v42 - 184) = v39 - v46 - 1237465637;
  *(v42 - 180) = v45 + v46;
  (*(v40 + 8 * (v43 ^ 0x16F8)))(v42 - 184);
  v47 = (*(v40 + 8 * (v43 + 2719)))(a12, v37, 0, (&off_1F0B1A0C0)[v43 ^ 0xFB8] - 4, &a37, 40);
  return (*(v40 + 8 * ((3094 * (v39 == (((857 * (v44 ^ 0x56B) - 2656) | 0x1A) ^ 0x49C2393B))) ^ v44)))(v47);
}

uint64_t sub_19634851C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *a1;
  v3 = 1384597421 * (((a1 | 0x11D59EC908AAE068) - a1 + (a1 & 0xEE2A6136F7551F97)) ^ 0x67A846A6EA64B911);
  v4 = *(a1 + 16) + v3;
  v5 = *(a1 + 8) + v3;
  v6 = *(a1 + 56) + v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 44) + v3;
  v9 = *(a1 + 24) ^ v3;
  v10 = *(a1 + 60) - v3;
  result = (*(a1 + 48) - v3);
  *v1 = 134220034;
  *(v1 + 4) = v4;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v5;
  *(v1 + 22) = 1024;
  *(v1 + 24) = v6;
  *(v1 + 28) = 1040;
  *(v1 + 30) = v8;
  *(v1 + 34) = 2096;
  *(v1 + 36) = v9;
  *(v1 + 44) = 1024;
  *(v1 + 46) = v10;
  *(v1 + 50) = 1040;
  *(v1 + 52) = result;
  *(v1 + 56) = 2096;
  *(v1 + 58) = v2 ^ v3;
  *(v1 + 66) = 1024;
  *(v1 + 68) = v7 + v3;
  return result;
}

uint64_t sub_196348650@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a1 ^ 0x8FD;
  *(v19 - 160) = 0;
  LODWORD(a6) = *(v19 - 196);
  v21 = (((a1 ^ 0x8FD) - 2141) | 0x115) + 1236;
  v22 = (*(v18 + 8 * (a1 ^ 0x1BEE)))(16, 3886098504);
  return (*(v18 + 8 * (((v22 == 0) * (v21 ^ 0x9FB)) ^ v20)))(v22, v23, v24, v25, v26, v27, v28, v29, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_19634867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37)
{
  v39 = *(v38 - 192);
  v40 = *(v37 + 8 * (*(v38 - 196) - 5678));
  *(v38 - 216) = v39;
  return (*(v37 + 8 * (((*(v39 + 12) > 0xFFFFFFFAuLL) * a36) ^ a37)))(v40);
}

uint64_t sub_196348690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *v32 = v33;
  *(v36 - 184) = (v31 + 1311676688) ^ (1468321087 * ((v36 - 192) ^ 0xD4EF416E));
  (*(v34 + 8 * (v31 + 6573)))(v36 - 192);
  v37 = (*(v34 + 8 * (v31 ^ 0x199C)))(*(&off_1F0B1A0C0)[v31 ^ 0xAD], (&off_1F0B1A0C0)[v31 ^ 0xC5] - 4, a31);
  v38 = (((v31 - v35) ^ 0xCB70ED79) & (2 * v37)) + (v37 ^ ((v31 ^ 0x71E) + 2046294229));
  *v32 = v33;
  *(v36 - 184) = (v31 - 50583614) ^ (912648571 * ((v36 - 1637099107 - 2 * ((v36 - 192) & 0x9E6BDA5D)) ^ 0x42A69668));
  v39 = (*(v34 + 8 * (v31 + 6603)))(v36 - 192);
  return (*(v34 + 8 * ((4611 * (v38 == 2046296039)) | v31)))(v39);
}

uint64_t sub_196348844(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *(a26 + 24) ^ v26;
  v31 = *a26 + v26;
  v32 = (a1 - 3645) ^ 0x1268;
  *(v29 - 152) = 0;
  *(v29 - 164) = v28;
  *(v29 - 180) = v28;
  v33 = ((v31 ^ 0x7B0B7B09) - 1843338515) ^ v31 ^ ((v31 ^ 0xA65BD48D) + ((a1 - 3645) ^ 0x4F704D83)) ^ ((v31 ^ 0x347BB66B) - 581947505) ^ ((v31 ^ 0xFFFF7FF5) + 383051281);
  LODWORD(v50) = HIWORD(v33) ^ 0xFFFFFFD4;
  HIDWORD(v50) = HIBYTE(v33) ^ 0x16;
  LODWORD(v49) = v33 ^ 0x1A;
  HIDWORD(v49) = (v33 >> 8) ^ 0x66;
  v48 = (4 * v30) ^ 0x224B51D20;
  LODWORD(v46) = WORD1(v30) ^ 0x2D;
  HIDWORD(v46) = BYTE3(v30) ^ 0xFFFFFF89;
  LODWORD(v45) = v30 ^ 0x48;
  HIDWORD(v45) = (v30 >> 8) ^ 0x47;
  HIDWORD(v44) = (((v30 ^ 0x2E1E49E2) - 773736930) ^ ((v30 ^ 0x6FF8EFBE) - 1878585278) ^ ((v30 ^ 0xC8CBE114) + 926162668)) - 1417712941;
  LODWORD(v43) = (4 * v30) ^ 0x24B51D20;
  HIDWORD(a23) = a1 - 657185713;
  HIDWORD(v53) = (a1 - 698589678) & 0x29A393C7;
  HIDWORD(a20) = (a1 + 407027921) & 0xE7BD303F;
  LODWORD(v44) = HIDWORD(a20) ^ 0x1173;
  v51 = (v31 | ((v31 < 0x16D4661A) << 32)) + 0x7F3DA04E6AF8C5E6;
  v52 = (v31 | ((v31 < 0x16D4661A) << 32)) - 383018522;
  HIDWORD(a16) = v31 - 383018522;
  HIDWORD(v43) = v31 - 383018518;
  v47 = *(a26 + 16);
  v34 = (*(v27 + 8 * (v32 + 1868)))(16, 3886098504);
  LODWORD(v53) = 1237422985;
  return (*(v27 + 8 * (((v34 == 0) * (((v32 - 642) | 0x38C) - 4947)) | v32)))(v34, v35, v36, v37, v38, v39, v40, v41, v47 - 8, v43, v44, v45, v46, v47, v48, a16, v49, v50, v51, a20, v52, v53, a23);
}

uint64_t sub_196348A80@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = ((a13 ^ 0xBA80802D0454ABCFLL) + 0x457F7FD2FBAB5431) ^ ((a13 ^ 0x510BAFBD26D41654) - 0x510BAFBD26D41654) ^ ((a13 ^ 0xFFF75074824AB26ELL) + 0x8AF8B7DB54D92);
  v18 = v17 - (((v17 << (((v13 - 15) | 0x20u) + 87)) + 0x28F8FFC941941FECLL) & v15) + 0x5A4ACC90258F726BLL;
  v19 = *(v14 + 8 * (v13 - 332));
  v20 = (a2 + a1 + v16);
  *v20 = HIBYTE(v18) ^ 0x45;
  v20[1] = BYTE6(v18) ^ 0xCE;
  v20[2] = BYTE5(v18) ^ 0x4C;
  v20[3] = BYTE4(v18) ^ 0xAB;
  v20[4] = ((v17 - (((v17 << (((v13 - 15) | 0x20) + 87)) + 1100226540) & v15) + 630157931) >> 24) ^ 0x84;
  v20[5] = BYTE2(v18) ^ 0xC5;
  v20[6] = BYTE1(v18) ^ 0x62;
  v20[7] = (v17 - (((v17 << (((v13 - 15) | 0x20) + 87)) - 20) & v15) + 107) ^ 0x75;
  return v19();
}

void sub_196348B64(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1427277979 * ((~a1 & 0x14B00ECC | a1 & 0xEB4FF133) ^ 0x44E143A4);
  v3[0] = v1 - 891395573 * ((v3 & 0xE4FC8A64 | ~(v3 | 0xE4FC8A64)) ^ 0x212E6A20) - 842;
  v2 = (&off_1F0B1A0C0)[v1 - 5113] - 8;
  (*&v2[8 * (v1 + 1402)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196348E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t *a43, uint64_t a44, uint64_t a45)
{
  v48 = a43;
  a45 = 0;
  a42 = 0;
  v49 = (&off_1F0B1A0C0)[v45 - 1717] - 8;
  (*(v46 + 8 * (v45 ^ 0x1ECB)))(v49);
  v50 = *v48;
  v51 = v45 + 599662986 + *(v48 + 3) - ((*(v48 + 3) << ((v45 + 5) ^ 0xD)) & 0x477C5122);
  v52 = 1311869473 * ((((v47 - 192) | 0x365E0791) + (~(v47 - 192) | 0xC9A1F86E)) ^ 0xDDB11D3C);
  *(v47 - 152) = -1311869473 * ((((v47 - 192) | 0x365E0791) + (~(v47 - 192) | 0xC9A1F86E)) ^ 0xDDB11D3C) + 622816387 * *(&off_1F0B1A0C0)[v45 ^ 0x730] + 563297187;
  v53 = (v47 - 192);
  v53[3] = &a42;
  v53[1] = v50;
  v53[2] = &a45;
  *(v47 - 160) = v52 + v45 + 3837;
  *(v47 - 192) = v51 ^ v52;
  (*(v46 + 8 * (v45 ^ 0x1EF3)))(v47 - 192);
  LODWORD(v48) = *(v47 - 156);
  v54 = (*(v46 + 8 * (v45 ^ 0x1ECD)))(v49);
  return (*(v46 + 8 * ((21 * (v48 != 1893509507)) ^ v45)))(v54);
}

uint64_t sub_196349068@<X0>(uint64_t (*a1)(void)@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v20 = *a19;
  v21 = a12 + 989737029 - ((((a2 - 1002) | 0x87A) ^ 0x75FC6A70) & (2 * a12));
  v22 = ((2 * *a10) & 0xFD7CFB9E) + (*a10 ^ 0x7EBE7DCF) - 2126413263;
  *(*a19 + v22) = HIBYTE(v21) ^ 0x3A;
  *(v20 + v22 + 1) = BYTE2(v21) ^ 0xFE;
  *(v20 + v22 + 2) = BYTE1(v21) ^ 0x30;
  *(v20 + v22 + 3) = v21 ^ v19;
  *a10 += 4;
  return a1();
}

uint64_t sub_196349128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, _DWORD *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(uint64_t))
{
  v29 = (*(v28 + 8 * (v27 ^ (v26 - 1613))))(*a19);
  *a19 = a16;
  *a18 = a15;
  return a26(v29);
}

uint64_t sub_196349208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  *(v17 + 12) = v15 + v16 - 1237465637;
  v20 = v15;
  v21 = (*(v18 + 8 * (v19 ^ 0x1FA1)))();
  *a15 = v21;
  return (*(v18 + 8 * (((v21 == 0) * ((v19 - 444243016) & 0x1A7A9FDD ^ 0xA19)) ^ v19)))(v21, v22, v23, v20, 3222675024, v24, v25, v26, a9, a10, a11, a12, a13);
}

uint64_t sub_1963492DC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1198)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 - 2065830211) & 0x7B21FEFA) + 26 * (v1 ^ 0x153C) - 1450)) | v1)))();
}

uint64_t sub_1963493C0@<X0>(uint64_t a1@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = *(v1 + v2 - 16);
  *(v6 - 1) = *(v1 + v2 - 16 - 16);
  *v6 = v7;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((((v4 ^ v3) - 871439755) & 0x33F11D6D) - 3359)) ^ v4 ^ v3)))();
}

uint64_t sub_1963494B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  v27 = (v23 - 73139208) & 0x3F7E93D7;
  *(v24 + 8) = a23;
  v28 = (*(v25 + 8 * (v27 - 992114600)))(**(v26 + 8 * (v27 ^ 0x3B22918Au)), a21, a23);
  return (*(v25 + 8 * ((4488 * ((((v27 ^ 0x3B2281A4) - 2793) ^ 0x49C23F1D) == 1237465637)) ^ (v27 - 992119885))))(v28);
}

uint64_t sub_196349608@<X0>(int a1@<W8>)
{
  *v2 = 0;
  v2[1] = 0;
  v4 = (*(v3 + 8 * ((a1 ^ 0x853) + 5183)))(v2);
  return v1(v4);
}

uint64_t sub_196349A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, unsigned int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t a33, int a34, int a35)
{
  a33 = 0;
  a35 = 0;
  v38 = off_1F0B1A350 - 8;
  (*(v36 + 8 * a17))(off_1F0B1A350 - 8);
  v39 = *off_1F0B1A278;
  v40 = *a31;
  v41 = 1311869473 * ((v37 - 152) ^ 0xEBEF1AAC);
  *(v37 - 152) = (*(a31 + 3) + 599664785 - ((v35 ^ 0x477C5122 ^ a18) & (2 * *(a31 + 3)))) ^ v41;
  *(v37 - 128) = &a35;
  *(v37 - 112) = -1311869473 * ((v37 - 152) ^ 0xEBEF1AAC) + 622816387 * v39 + 563297187;
  *(v37 - 120) = v41 + a14;
  *(v37 - 144) = v40;
  *(v37 - 136) = &a33;
  (*(v36 + 8 * a16))(v37 - 152);
  v42 = *(v37 - 116);
  v43 = (*(v36 + 8 * a15))(v38);
  return (*(v36 + 8 * ((7159 * (v42 == 1893509507)) ^ 0x357u)))(v43);
}

uint64_t sub_196349B88(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + v3);
  *(v5 - 1) = *(a2 + v3 - 16);
  *v5 = v7;
  return (*(v6 + 8 * (((a1 == 0) * v4) ^ v2)))(a1 - 32, a2 - 32);
}

uint64_t sub_196349BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  v29 = a26;
  a25 = 0;
  a23 = 0;
  v30 = (&off_1F0B1A0C0)[v26 ^ 0x5DF] - 8;
  (*(v27 + 8 * (v26 ^ 0x1C41)))(v30);
  v31 = *v29;
  v32 = *(v29 + 3) + 599664785 - ((((2 * v26) ^ 0x1AC) + 1199326828) & (2 * *(v29 + 3)));
  v33 = 1311869473 * ((((2 * (v28 - 144)) | 0x1FAD7F52) - (v28 - 144) + 1881751639) ^ 0x6439A505);
  *(v28 - 104) = 563297187 - v33 + 622816387 * *(&off_1F0B1A0C0)[v26 ^ 0x5BA];
  *(v28 - 112) = v33 + v26 + 4215;
  *(v28 - 136) = v31;
  *(v28 - 128) = &a25;
  *(v28 - 144) = v32 ^ v33;
  *(v28 - 120) = &a23;
  (*(v27 + 8 * (v26 + 5223)))(v28 - 144);
  v34 = *(v28 - 108);
  v35 = (*(v27 + 8 * (v26 ^ 0x1C47)))(v30);
  return (*(v27 + 8 * ((2668 * (v34 == ((v26 + 325921073) & 0xEC92DBF7 ^ 0x70DCA335))) ^ v26)))(v35);
}

uint64_t sub_196349D70@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v6 - 2538;
  v12 = (*(v9 + 8 * (v6 ^ 0x1755)))(*(&off_1F0B1A0C0)[v6 ^ 0xE87], *(v10 - 168), a1);
  *(v10 - 196) = a6;
  return (*(v9 + 8 * (((v7 == v8 + v11 - 900 - 282) * (((v11 - 1124) | 0x181) + 2914)) ^ v11)))(v12);
}

uint64_t sub_196349DE0@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * ((2 * v4) ^ 0x144F)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_196349E40@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(v4 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ a2)))();
}

void sub_196349E64(int a1@<W5>, _DWORD *a2@<X8>)
{
  *v2 = (a1 ^ 0x199F) - 1237465637 + *(v3 - 192) - 176;
  *a2 = *(v3 - 180) - 1237465637;
  JUMPOUT(0x196372B44);
}

uint64_t sub_19634A000(uint64_t a1)
{
  (*(v1 + 8 * ((v2 ^ 0x620) + 3223)))(v3, @"o9YYYJ64ntzC", a1);
  result = (*(v1 + 8 * ((v2 ^ 0x620) + 3182)))(a1);
  *(v6 + 8) = 1237465637;
  return result;
}

uint64_t sub_19634A24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 + 12) = v21 - 1237467297 + (v23 ^ 0x9F5) - 4841 + v20;
  v33 = v20;
  v25 = (*(v24 + 8 * (v23 ^ 0x95E)))();
  *(a20 + 32) = v25;
  return (*(v24 + 8 * ((56 * (v25 == 0)) ^ v23)))(v25, v26, v27, v28, v33, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19634A3DC@<X0>(int a1@<W8>)
{
  v6 = 10 * (v1 ^ a1);
  *(v2 + 8) = *(v5 - 168);
  v7 = (*(v3 + 8 * (v6 ^ 0x1327)))(**(v4 + 8 * (v6 ^ 0xAF5)), *(v5 - 176), *(v5 - 168));
  return (*(v3 + 8 * ((3 * (v6 ^ 0xA97)) ^ 0x84F ^ (v6 - 2572))))(v7);
}

uint64_t sub_19634A550()
{
  v6 = (*(v3 + 8 * (v0 ^ 0x14F3u)))(v1, v2);
  *v4 = v6;
  return (*(v3 + 8 * (((v6 == 0) * ((v5 + (v0 ^ 0x784B54A) + 1038) ^ (v0 - 615))) | v0)))();
}

uint64_t sub_19634A5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(v10 + 8 * ((v9 | 0x402) ^ 0x1CBB)))();
  (*(v10 + 8 * ((v9 | 0x402) ^ 0x1F41)))(a1);
  v13 = (*(v10 + 8 * ((v9 | 0x402) + 4869)))(v11, @"LBV3vEsw");
  return (*(v10 + 8 * ((((((v9 | 2) - 18) ^ (v13 == 0)) & 1) * (((v9 | 0x402) + 51) ^ 0x680)) ^ ((v9 | 0x402) - 125))))(v13, v14, v15, v16, v17, v18, v19, v20, a9);
}

uint64_t sub_19634A618(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  v10 = (*(v9 - 180) | ((*(v9 - 180) < 0x49C23A25u) << 32)) + *(v6 + 12) + (((v7 ^ v5) + a2) ^ a3) + a4;
  v12 = v10 >= 0x1890907D && v10 <= *(v6 + 8) + 412127357;
  return (*(v8 + 8 * ((v12 * a5) ^ v7 ^ v5)))();
}

uint64_t sub_19634A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v29 = 4 * (v24 ^ 0x3C3);
  *(v25 + 8) = *(v28 - 184);
  (*(v27 + 8 * (v29 ^ 0x113D)))(**(v26 + 8 * (v29 - 2257)), *(v28 - 176), *(v28 - 184));
  return (*(v27 + 8 * ((v29 - 1924) ^ 0x1230 ^ (v29 - 1730))))(1237465637, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_19634A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v12 + 52864))(a11, a10);
  *v11 = v13;
  return (*(v12 + 8 * ((8026 * (v13 == 0)) ^ 0xB7Fu)))();
}

uint64_t sub_19634A7DC()
{
  v4 = *(v2 + 8 * (((*(v3 - 156) == v0 + 1237459347) * (((v0 + 682841573) & 0xD74C9DFF) - 3135)) ^ v0));
  *(v3 - 208) = v1;
  return v4();
}

void sub_19634A838(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (346387183 * ((a1 - 2 * (a1 & 0x9054486) + 151340166) ^ 0x8C6D9156));
  v3 = v1 - 891395573 * (((&v3 | 0x3249804D) - &v3 + (&v3 & 0xCDB67FB0)) ^ 0x8649FF6) - 1163559902;
  v2 = (&off_1F0B1A0C0)[v1 - 1163564173] - 8;
  (*&v2[8 * (v1 ^ 0x455A8D26)])(&v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_19634A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33)
{
  *(v34 + 8) = 4096;
  *v35 = v34;
  return v33(a1, a2, 2274, a33, a23, a6, 1667808208, 2627157497);
}

uint64_t sub_19634AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = ((2 * v25) & 0x1FFEECFFELL) + ((((a9 + 371514553) & 0xE9DB2BFF) + 0x3FF3FF5FFFF75D05) ^ v25) - 0x3FF3FF5FFE8AB54ALL;
  v29 = v27 < 0x16CB2B1 || v27 > *(a25 + 8) + 23900849;
  return (*(v26 + 8 * ((3395 * v29) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_19634AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(v19 + 8 * (v18 ^ 0x10AB)))(v16);
  *v15 = 0;
  return v17(184702973, 2147482772, 1867, &off_1F0B1A0C0, 4674, -6844, a15);
}

uint64_t sub_19634AD04()
{
  v7 = *(v13 + 40);
  if (v7 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *(v13 + 40);
  }

  v9 = *(v13 + 32);
  v10 = 1466156297 * (((~(v6 - 152) | 0xC8BC50981D1FC3CLL) + ((v6 - 152) | 0xF3743AF67E2E03C3)) ^ 0x79B14F3DAD998393);
  *(v6 - 124) = v8 + v10;
  *(v6 - 120) = v5 - v10 + ((v3 + v0 - 1902) ^ 0x88230B0C);
  *(v6 - 136) = v9 + v10;
  *(v6 - 128) = v7 + v10;
  *(v6 - 144) = v10 + 1747998232 + v0;
  *(v6 - 152) = v6 - 192;
  (*(v4 + 8 * (v0 + 4788)))(v6 - 152);
  (*(v4 + 8 * (v0 + 4666)))(v12, v2, 0, (&off_1F0B1A0C0)[v0 ^ 0x769] - 12, v6 - 192, 30);
  return (v1 + v5 + 1660);
}

uint64_t sub_19634AED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, _DWORD *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t (*a33)(uint64_t))
{
  v35 = (*(v34 + 8 * (v33 + 2862)))(*a24);
  *a24 = a22;
  *a23 = a21;
  return a33(v35);
}

uint64_t sub_19634AF54@<X0>(unsigned int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 + (v4 ^ a1) - 1466;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * a2) ^ v4)))();
}

uint64_t sub_19634AF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28, uint64_t a29)
{
  if (a28 >= 0x40)
  {
    v35 = 64;
  }

  else
  {
    v35 = a28;
  }

  v36 = 1864678469 * ((((2 * (v34 - 224)) | 0x50FF51F07381F48) - (v34 - 224) - 0x287FA8F839C0FA4) ^ 0x7A77C5BCB0EC184DLL);
  *(v34 - 224) = a25 + v36;
  *(v34 - 192) = v35 ^ (1864678469 * ((((2 * (v34 - 224)) | 0x7381F48) - (v34 - 224) + 2086924380) ^ 0xB0EC184D));
  *(v34 - 188) = (v31 - 1237465637) ^ (1864678469 * ((((2 * (v34 - 224)) | 0x7381F48) - (v34 - 224) + 2086924380) ^ 0xB0EC184D));
  *(v34 - 216) = a28 ^ (1864678469 * ((((2 * (v34 - 224)) | 0x7381F48) - (v34 - 224) + 2086924380) ^ 0xB0EC184D));
  *(v34 - 212) = 1864678469 * ((((2 * (v34 - 224)) | 0x7381F48) - (v34 - 224) + 2086924380) ^ 0xB0EC184D) + 870696147 + v33;
  *(v34 - 200) = &STACK[0x270];
  *(v34 - 208) = ((v33 ^ 0xBD) + a18) - 1864678469 * ((((2 * (v34 - 224)) | 0x7381F48) - (v34 - 224) + 2086924380) ^ 0xB0EC184D);
  *(v34 - 184) = a29 + v36;
  (*(v32 + 8 * (v33 ^ 0x192B)))(v34 - 224);
  v37 = (*(v32 + 8 * (v33 ^ 0x1ABA)))(a15, v30, 0, (&off_1F0B1A0C0)[v33 - 703], &STACK[0x270], 46);
  return (*(v32 + 8 * (((v31 == (((v29 - 2034) | 0x622) ^ 0x49C23C96)) * (((v29 + 32092028) & 0xFE164EB3) - 5)) ^ v29)))(v37);
}

uint64_t sub_19634B098()
{
  v5 = 912648571 * (&v9 ^ 0xDCCD4C35);
  v10 = v8;
  v11 = v3 - v5 + ((v4 - 122312393) ^ 0x4E886E43);
  v9 = (v4 + 1318479154) ^ v5;
  (*(v2 + 8 * ((v4 + 82) ^ 0x1B58)))(&v9);
  (*(v2 + 8 * (v4 + 5959)))(v7, v0, 0, *(v1 + 8 * ((v4 + 82) ^ 0x220)) - 12, v8, 8);
  return (v3 - 1237465637);
}

uint64_t sub_19634B198@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 ^ v6) + v4;
  *(a1 + v8) = *(v1 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v2) ^ v3)))();
}

uint64_t sub_19634B1C4(uint64_t a1, uint64_t a2, int a3)
{
  v8 = ((2 * v5) & 0xFDB7797E) + (v5 ^ 0x7EDBBCBF) + a3;
  v9 = (*(*v7 + v8 + 1) << ((v6 & 0xBF) + 81)) | (*(*v7 + v8) << 24) | (*(*v7 + v8 + 2) << 8) | *(*v7 + v8 + 3);
  *v4 = (v9 ^ 0xDDEFFB67) + 1808940734 + ((2 * v9) & 0xBBDFF6CE);
  *(v7 + 12) += 4;
  return v3();
}

uint64_t sub_19634B3B8()
{
  *(v3 - 216) = 0;
  v4 = (v0 - 296570010) & 0x11AD5FF7;
  *(v1 + 8) = *(v3 - 204);
  *(v1 + 12) = 0;
  *(v3 - 244) = 1237465637;
  v5 = v4 ^ 0x1671;
  v6 = (*(v2 + 8 * (v4 + 1400)))(*(&off_1F0B1A0C0)[v4 - 5206], *(v3 - 184), *(v3 - 204));
  return (*(v2 + 8 * ((5216 * ((((v5 + 4684) | 5) ^ 0x49C22E40) == 1237465637)) | v5)))(v6);
}

uint64_t sub_19634B3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t a33, int a34, int a35)
{
  a33 = 0;
  a35 = 0;
  v38 = (&off_1F0B1A0C0)[v36 - 5973] - 8;
  (*(v35 + 8 * (v36 + 549)))(v38);
  v39 = *(&off_1F0B1A0C0)[v36 - 6000];
  v40 = *a31;
  v41 = 1311869473 * ((((2 * (v37 - 160)) | 0x7A8AE7DA) - (v37 - 160) + 1119521811) ^ 0x56AA6941);
  v42 = (*(a31 + 3) + 599664785 - ((2 * *(a31 + 3)) & 0x477C5122)) ^ v41;
  *(v37 - 128) = v41 + v36 - 419;
  *(v37 - 160) = v42;
  *(v37 - 120) = 563297187 - v41 + 622816387 * v39;
  v43 = (v37 - 160);
  v43[3] = &a35;
  v43[1] = v40;
  v43[2] = &a33;
  (*(v35 + 8 * (v36 ^ 0xE53)))(v37 - 160);
  v44 = *(v37 - 124);
  v45 = (*(v35 + 8 * (v36 + 547)))(v38);
  return (*(v35 + 8 * (((v44 == 1893509507) * (((v36 - 5541) | 0x1E5) + 2887)) ^ v36)))(v45);
}

uint64_t sub_19634B758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 ^ 0xFFFFFDF6FDDCFB5BLL) + ((((v3 - 2147467201) | 0x2A619008u) + 0x15158251ALL) & (2 * v4)) + 0x2099E107ECALL;
  v8 = v6 < 0x9BED7A21 || v6 > *(a3 + 8) + 2616031777u;
  return (*(v5 + 8 * ((1068 * v8) ^ v3)))();
}

uint64_t sub_19634B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 8 * (v13 ^ 0x1349)))(a10, a11);
  *v12 = v14;
  return (*(v11 + 8 * (((v14 == 0) * ((v13 - 958196466) & 0x391CEAFB ^ 0xA99)) ^ v13)))();
}

uint64_t sub_19634B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int *a20)
{
  (*(v21 + 8 * (v23 + 3274)))(v20);
  v25 = *a20;
  v26 = *(v22 + 12) + 599664785 - ((2 * *(v22 + 12)) & 0x477C5122);
  v27 = 1311869473 * ((((2 * (v24 - 144)) | 0x38E0A402) - (v24 - 144) + 1670360575) ^ 0x779F48AD);
  *(v24 - 136) = *v22;
  *(v24 - 128) = v24 - 168;
  *(v24 - 144) = v26 ^ v27;
  *(v24 - 120) = v24 - 188;
  *(v24 - 112) = v27 + v23 + 2306;
  *(v24 - 104) = ((v23 - 2071) ^ 0x21933F48) - v27 + 622816387 * v25;
  (*(v21 + 8 * (v23 ^ 0x14F6)))(v24 - 144);
  v28 = *(v24 - 108);
  v29 = (*(v21 + 8 * (v23 ^ 0x14C8)))(v20);
  return (*(v21 + 8 * (((v28 == 1625074048) * (((v23 - 2071) ^ 0x4E2) + 3215 + 10 * ((v23 - 2071) ^ 0x4E2) + 4003)) ^ (v23 - 2071))))(v29);
}

uint64_t sub_19634B9B0()
{
  v5 = (*(v4 + 52864))(v1, v2);
  *v0 = v5;
  return (*(v4 + 8 * ((8088 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_19634BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v12 + 8 * (v11 + 509)))(a11, a10);
  *v13 = v14;
  return (*(v12 + 8 * ((54 * ((((v11 + 1) ^ (v14 == 0)) & 1) == 0)) ^ v11)))();
}

uint64_t sub_19634BE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v12 + 8 * (v14 ^ 0x1300)))(a12, a11);
  *v13 = v15;
  return (*(v12 + 8 * (((v15 == 0) * (((v14 + 778249553) | 0x100C824A) - 1047501207)) ^ v14)))();
}

uint64_t sub_19634BE80@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) | v2)))();
}

uint64_t sub_19634BEA4(uint64_t a1, uint64_t a2, int a3)
{
  v8 = ((v6 << ((v7 + 3) & 0xBD ^ 0x94)) & 0x7F7397D6) + (v6 ^ 0x3FB9CBEB) + a3;
  v9 = (*(*v3 + v8) << 24) | (*(*v3 + v8 + 1) << 16) | (*(*v3 + v8 + 2) << 8) | *(*v3 + v8 + 3);
  *v5 = (v9 ^ 0xDDEFFB67) + 1808940734 + ((2 * v9) & 0xBBDFF6CE);
  *(v3 + 12) += 4;
  return v4();
}

uint64_t sub_19634BF64()
{
  v5 = (*(v3 + 8 * (v4 + 5849)))(v1);
  *v0 = 0;
  return v2(v5);
}

uint64_t sub_19634BFD8@<X0>(int a1@<W8>)
{
  v4 = (a1 + 2145314792) & 0xBC2DFF83;
  v5 = v1;
  (*(v3 + 8 * (a1 ^ 0x870)))();
  *v5 = 0;
  *v5 = 0;
  v5[1] = 0;
  v6 = (*(v3 + 8 * (v4 - 1007476508)))(v5);
  return v2(v6);
}

uint64_t sub_19634C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, char *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, int a48, int a49)
{
  if (v51 >= 0x40)
  {
    v57 = 64;
  }

  else
  {
    v57 = v51;
  }

  if (v56 >= 0x40)
  {
    v58 = 64;
  }

  else
  {
    v58 = v56;
  }

  v59 = 1427277979 * (((&a31 | 0x91348CC32339F1A9) - (&a31 | 0x6ECB733CDCC60E56) + 0x6ECB733CDCC60E56) ^ 0xB75E4B757368BCC1);
  a37 = v59 ^ 0x18DD14E3;
  LODWORD(a38) = v59 + v57;
  a36 = v59 ^ v51;
  a39 = &a23;
  a35 = v54 - v59;
  a31 = v59 ^ v56;
  a32 = v59 + v58;
  a33 = v59 + v52;
  a34 = v53 - v59;
  (*(v49 + 53016))(&a31);
  (*(v49 + 52544))(a10, v55, 0, qword_1F0B1A1D0 - 8, &a23, 56);
  v60 = 1427277979 * (&a31 ^ 0x266AC7B650514D68);
  a31 = v60 + v50 + 4407;
  a45 = -457199637 - v60;
  a36 = v60 + 1369802606;
  BYTE1(a32) = v60 | 6;
  a42 = 0x54799400B27E420BLL;
  a34 = 0;
  a35 = 0;
  LOBYTE(a32) = v60 + 9;
  LODWORD(a33) = v60 ^ ((v51 ^ 0xFA4FFDF2) + 2147219392 + ((2 * v51) & 0xF49FFBE4));
  a46 = v53;
  a47 = a15;
  a39 = (v60 + ((v50 + 1055898833) & 0x3E6FF26B ^ 0x56E9EE0F88A9EED6) * v54 + 0x706969559327EE78);
  a40 = a13;
  a38 = v52;
  a49 = (v56 ^ 0xFA4BFFB3) + ((v56 << (((v50 + 18) | 0x90) + 49)) & 0xF497FF66) + v60 + 2147481087;
  a48 = v60 + 2051798450;
  a43 = a14;
  a44 = 0;
  v61 = (*(v49 + 8 * (v50 + 5747)))(&a31);
  if (a13)
  {
    v62 = a15 == 0;
  }

  else
  {
    v62 = 1;
  }

  v64 = !v62 && a14 != 0;
  return (*(v49 + 8 * (v50 ^ (30 * v64))))(v61);
}

uint64_t sub_19634C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v26 + 8 * (v27 ^ 0x149F)))(a11, @"RulIk", a1);
  v29 = (*(v26 + 8 * (v27 ^ 0x14B6)))(a1);
  return (*(v26 + 8 * (((a26 != 0) * (v27 - 3375)) ^ (v27 - 773))))(v29);
}

uint64_t sub_19634C584()
{
  v5 = (*(v3 + 52864))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * ((25 * (v5 == 0)) ^ v0)))();
}

void sub_19634C5C8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (652747349 * ((((2 * a1) | 0x8392FB3C) - a1 - 1103723934) ^ 0x33A430B));
  v3[0] = v1 - 891395573 * (v3 ^ 0x3A2D1FBB) - 1275;
  v2 = (&off_1F0B1A0C0)[v1 - 5546] - 8;
  (*&v2[8 * (v1 ^ 0xFC9)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19634C760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  HIDWORD(a18) = 3526;
  HIDWORD(a14) = -571057161;
  v21 = (*(v20 + 8 * (v19 + 1333701369)))(16, 3886098504);
  LODWORD(a15) = 1237422985;
  return (*(v20 + 8 * (((v21 == 0) * (((v19 + 1481043497) & 0xF737AFA5) - 3113)) ^ (v19 + 1333695587))))(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_19634C88C()
{
  v4 = v1 + 2960;
  v5 = ((v4 - 2230) + 807066039) ^ v0;
  v7 = v2 < 0x20 || v5 < 8;
  return (*(v3 + 8 * ((v7 * ((v4 - 2525) ^ 0xECF)) ^ v4)))();
}

uint64_t sub_19634C924@<X0>(unint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a2 + v6);
  v7 = v6 == ((v3 - 1152) ^ a1);
  return (*(v4 + 8 * (((2 * v7) | (8 * v7)) ^ v3)))();
}

uint64_t sub_19634C958@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v5 + a1) & a2 ^ a3)) ^ v5)))();
}

uint64_t sub_19634C988@<X0>(uint64_t a1@<X8>)
{
  v5 = ((2 * v3) & 0xE73F8AD6) + (v3 ^ 0xF39FC56B);
  v6 = (*(*a1 + (((v4 - 110) | 0xA22) ^ 0xC6035B2) + v5) << 24) | (*(*a1 + v5 + 207633046) << 16) | (*(*a1 + v5 + 207633047) << 8) | *(*a1 + v5 + 207633048);
  *v1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(a1 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_19634CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v13 + 52864))(a11, v12);
  *v14 = v15;
  return (*(v13 + 8 * (((8 * (v15 == 0)) | ((v15 == 0) << 6)) ^ v11)))();
}

uint64_t sub_19634CA94(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * (v2 + 5907)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * ((((v2 ^ (v4 == 0)) & 1) * (((v2 - 410) | 0x202) - 676)) ^ v2)))();
}

uint64_t sub_19634CB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = v12 + v9;
  v15 = (v12 + v9 - 1066);
  v16 = (v10 ^ 0x6FF7FF96DAE7FD57) + ((2 * v10) & 0x1B5CFFAAELL) - 0x6FF7FF96DAE7FD57 + *(v11 + 8);
  return (*(v13 + 8 * ((4083 * (((v14 - 24) ^ (((v16 ^ v15) & v15) >> (__clz(v16 ^ v15 | 1) ^ 0x3Fu))) & 1)) ^ (v14 + 956))))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_19634CC0C()
{
  v5 = ((2 * v3) & 0x7737A75E) + (v3 ^ 0x3B9BD3AF);
  v6 = (*(*v2 + v5 + 3 * (v4 ^ 0xFBFu) - 1000074462) << 24) | (*(*v2 + (v5 - 1000068014)) << 16) | (*(*v2 + (v5 - 1000068013)) << 8) | *(*v2 + (v5 - 1000068012));
  *v1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(v2 + 12) += 4;
  return v0();
}

uint64_t sub_19634CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v15 + 8 * (v16 + 5418)))(a14, a13);
  *v14 = v17;
  return (*(v15 + 8 * (((v17 != 0) * (((v16 - 546) | 0x22) - 598)) ^ v16)))();
}

uint64_t sub_19634CD60@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v1 + v5);
  v7 = ((v5 + 1) ^ v3) == v2 + (v4 ^ 0x1DA9u) - 2821;
  return (*(v6 + 8 * (((8 * v7) | (16 * v7)) ^ v4)))();
}

uint64_t sub_19634CED0@<X0>(uint64_t a1@<X8>)
{
  v8 = v3 + 32;
  v9 = (v8 ^ v6 ^ (v4 + 1692)) + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * ((2 * (v5 == v8)) | (16 * (v5 == v8)) | v4)))();
}

uint64_t sub_19634CED8()
{
  v5 = (*(v3 + 52864))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * (((2 * (v5 == 0)) | (8 * (v5 == 0))) ^ v0)))();
}

uint64_t sub_19634CF18()
{
  *(v5 - 136) = (v2 + 1311672500) ^ (1468321087 * ((((v5 - 144) | 0x39F7567F) - ((v5 - 144) & 0x39F7567F)) ^ 0xED181711));
  *(v5 - 144) = v0;
  (*(v3 + 8 * (v2 ^ 0x9D1)))(v5 - 144);
  v6 = (*(v3 + 8 * (v2 ^ 0x9F8)))(**(v4 + 8 * (v2 - 4039)), *(v4 + 8 * (v2 ^ 0x10A1)) - 4, v1);
  v7 = ((2 * v6) & 0x9B957FEA) + (v6 ^ 0xCDCABFF5);
  *(v5 - 144) = v0;
  *(v5 - 136) = (v2 - 50587802) ^ (912648571 * ((v5 - 202218107 - 2 * ((v5 - 144) & 0xF3F26615)) ^ 0x2F3F2A20));
  v8 = (*(v3 + 8 * (v2 ^ 0x9BF)))(v5 - 144);
  return (*(v3 + 8 * ((235 * (v7 != ((5 * ((v2 + 1621755711) & 0x9F55EE7E ^ 0x79D)) ^ 0xCDCAB752))) ^ v2)))(v8);
}

uint64_t sub_19634D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46)
{
  (*(v47 + 8 * (a11 ^ 0x1EDE)))(a12);
  v49 = *a32;
  v50 = *a14;
  v51 = 1311869473 * ((v48 - 192) ^ 0xEBEF1AAC);
  v52 = (*(a14 + 3) + 599664773 - ((*(a14 + 3) << ((a11 - 6) ^ 0xD)) & 0x477C5122) + 12) ^ v51;
  *(v48 - 160) = v51 + a11 + 3826;
  *(v48 - 192) = v52;
  *(v48 - 152) = 563297187 - v51 + 622816387 * v49;
  v53 = (v48 - 192);
  v53[3] = &a43;
  v53[1] = v50;
  v53[2] = &a46;
  (*(v47 + 8 * (a11 ^ 0x1EE6)))(v48 - 192);
  v56 = *(v48 - 156);
  v54 = (*(v47 + 8 * (a11 + 4792)))(a12);
  return (*(v47 + 8 * (((v56 == ((a11 + 2143246501) & 0xB8DFB2FF ^ 0x5843BB37)) * (((a11 - 1798) ^ (v46 + 4)) - 949945004)) ^ (a11 - 1798))))(v54);
}

uint64_t sub_19634D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v14 + 8 * (v12 ^ 0x8EEu)))(a12, a11);
  *v13 = v15;
  return (*(v14 + 8 * (((v15 == 0) * (((v12 - 1606319936) & 0x5FBE7F53) - 4326)) ^ v12)))();
}

uint64_t sub_19634D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = *(v29 - 168);
  *(v29 - 216) = v30;
  return (*(v28 + 8 * ((7992 * ((v26 - 1441279277) + (*(v30 + 12) ^ 0xCFEADB81FFFFFFBFLL) + ((*(v30 + 12) << (v27 + 73)) & 0x1FFFFFF7ELL) + 0x3015247E00000041 < 0xFFFFFFFB)) ^ (v27 - 466))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_19634D540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, uint64_t a30, uint64_t a31, uint64_t *a32)
{
  v34 = *a32;
  v35 = (HIDWORD(a28) ^ 0x9B0490FF) & (2 * (((((v32 + 1498581568) & 0xA6AD7CFF) - 1661) ^ 0xDB010685) & HIDWORD(a28))) ^ ((((v32 + 1498581568) & 0xA6AD7CFF) - 1661) ^ 0xDB010685) & HIDWORD(a28);
  v36 = ((2 * (HIDWORD(a28) ^ 0xAF069061)) ^ 0xE80F213C) & (HIDWORD(a28) ^ 0xAF069061) ^ (2 * (HIDWORD(a28) ^ 0xAF069061)) & 0x7407909E;
  v37 = v36 ^ 0x14009082;
  v38 = (v36 ^ 0x6004901E) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0xD01E4278) & v37 ^ (4 * v37) & 0x7407909C;
  v40 = (v39 ^ 0x50060016) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x24019086)) ^ 0x407909E0) & (v39 ^ 0x24019086) ^ (16 * (v39 ^ 0x24019086)) & 0x74079090;
  v42 = v40 ^ 0x7407909E ^ (v41 ^ 0x4001001E) & (v40 << 8);
  v43 = HIDWORD(a28) ^ (2 * ((v42 << 16) & 0x74070000 ^ v42 ^ ((v42 << 16) ^ 0x109E0000) & (((v41 ^ 0x3406901E) << 8) & 0x74070000 ^ 0x70070000 ^ (((v41 ^ 0x3406901E) << 8) ^ 0x7900000) & (v41 ^ 0x3406901E))));
  v44 = ((2 * *a29) & 0xDFF6FBDE) + (*a29 ^ 0xEFFB7DEF) + 268730897;
  *(*a32 + v44) = HIBYTE(v43) ^ 0x13;
  *(v34 + v44 + 1) = BYTE2(v43) ^ 2;
  *(v34 + v44 + 2) = BYTE1(v43) ^ 0x21;
  *(v34 + v44 + 3) = v43 ^ 0xC3;
  v45 = (*a29 + 4);
  *a29 = v45;
  return (*(v33 + 8 * ((112 * (a24 > *a32 + ((2 * v45) & 0xAFDD5F7CLL) + (v45 ^ 0xFE9EF6F957EEAFBELL) + 0x1610906A8115042)) ^ v32)))(807070153, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_19634D7A8@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = v3 - 5;
  v7 = *(a1 - 16 + v2);
  v8 = (a2 + v4 + 0x400008028C154475 + v2);
  *(v8 - 1) = *(a1 - 16 + v2 - 16);
  *v8 = v7;
  LODWORD(v8) = ((v6 - 122) ^ (((32 - ((v6 ^ 0xFFFFF798) & v2)) | (((v6 ^ 0xFFFFF798) & v2) - 32)) < 0)) & 1;
  return (*(v5 + 8 * ((v8 | (4 * v8)) ^ v6)))();
}

uint64_t sub_19634D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v35 = *(v34 + 8 * (v33 + v31 - 361));
  v36 = &a31 + ((((8 * v32) ^ 0xA3E3FF2506507FA8) + 16) ^ 0x1F5BF719DBCAD7CDLL) + ((2 * (((8 * v32) ^ 0xA3E3FF2506507FA8) + 16)) & 0x3EB7EE33B795AF90) + a5 - 0x1240430800421648;
  *v36 = a26 ^ 0x45;
  v36[1] = a25 ^ 0xCE;
  v36[2] = a24 ^ 0x4C;
  v36[3] = a23 ^ 0xAB;
  v36[4] = a22 ^ 0x84;
  v36[5] = a21 ^ 0xC5;
  v36[6] = a20 ^ 0x62;
  v36[7] = a19 ^ 0x75;
  return v35(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_19634DA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _DWORD *a5, int a6, int a7, int a8)
{
  v14 = ((v10 << ((v11 + v13) ^ (a4 + 1))) & a6) + (v10 ^ 0x37DB802B) - 937132075;
  v15 = (*(*v12 + v14) << 24) | (*(*v12 + v14 + 1) << 16) | (*(*v12 + v14 + 2) << 8) | *(*v12 + v14 + 3);
  *a5 = (v15 ^ a7) + v8 + (a8 & (2 * v15));
  *(v12 + 12) = v10 + 4;
  return v9();
}

uint64_t sub_19634DA9C()
{
  v6 = v0 ^ 0x10C2;
  *v2 = 0;
  v2[1] = 0;
  v7 = (*(v1 + 8 * (v0 ^ 0x1DA8)))(v2);
  return (*(v1 + 8 * (((v5 >= v6 - v4 - 550376378) * (((v6 - v4 - 574) ^ v3) - 3108)) ^ (v6 + 115))))(v7);
}

uint64_t sub_19634DB20@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 7 + ~v3 + v2) = *(v1 - 7 + ~v3 + v2);
  v6 = ((v4 + 612159049) & 0xDB832DDE ^ 0xC5ALL) + v3 == (v2 & 0xFFFFFFF8);
  return (*(v5 + 8 * (((8 * v6) | (16 * v6)) ^ v4)))();
}

uint64_t sub_19634DC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = v7 + 8;
  *(v11 + (v13 ^ a5 ^ v10) + v6) = *(v9 + (v13 ^ a5 ^ v10) + v6);
  return (*(v12 + 8 * (((a1 == v13) * a6) ^ v8)))();
}

uint64_t sub_19634DC9C(uint64_t a1)
{
  v1 = *a1;
  v2 = 1468321087 * (((a1 | 0x3163A3ED6CB9CE6CLL) - (a1 & 0x3163A3ED6CB9CE6CLL)) ^ 0x64A84A82B8568F02);
  v3 = *(a1 + 56) - v2;
  v4 = *(a1 + 8) ^ v2;
  v5 = *(a1 + 24) ^ v2;
  v6 = *(a1 + 44) + v2;
  v7 = *(a1 + 40) + v2;
  v8 = *(a1 + 80) + v2;
  v9 = *(a1 + 64) + v2;
  v10 = *(a1 + 72) - v2;
  v11 = *(a1 + 16) ^ v2;
  v12 = *(a1 + 68) - v2;
  v13 = *(a1 + 32) ^ v2;
  result = 134220546;
  *v1 = 134220546;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1040;
  *(v1 + 14) = v4;
  *(v1 + 18) = 2096;
  *(v1 + 20) = v5;
  *(v1 + 28) = 1024;
  *(v1 + 30) = v6;
  *(v1 + 34) = 1040;
  *(v1 + 36) = v7;
  *(v1 + 40) = 2096;
  *(v1 + 42) = v8;
  *(v1 + 50) = 1024;
  *(v1 + 52) = v9;
  *(v1 + 56) = 1040;
  *(v1 + 58) = v10;
  *(v1 + 62) = 2096;
  *(v1 + 64) = v11;
  *(v1 + 72) = 1024;
  *(v1 + 74) = v12;
  *(v1 + 78) = 2048;
  *(v1 + 80) = v13;
  return result;
}

uint64_t sub_19634DD9C(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1468321087 * ((2 * (a1 & 0x575C2700) - a1 + 681826559) ^ 0xFC4C9991));
  v2 = v1 - 1311676592;
  if (*a1)
  {
    return (*&(&off_1F0B1A0C0)[v2][8 * (v1 ^ 0x4E2E835C) - 8])(*a1);
  }

  else
  {
    return (*&(&off_1F0B1A0C0)[v2][8 * (v1 ^ 0x4E2E835C) - 8])((&off_1F0B1A0C0)[v1 - 1311676579]);
  }
}

uint64_t sub_19634DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = (*(a30 + 80) + a23);
  v33 = ((v30 ^ 0xC68) + 1960) | 0x400;
  v49 = (4 * v32) ^ 0x22D54DAACLL;
  LODWORD(v53) = BYTE3(v32) ^ 0xFFFFFF8B;
  HIDWORD(v52) = (v32 >> ((v30 ^ 0x68) + 32)) ^ 0x55;
  LODWORD(v52) = (v32 >> 8) ^ 0x36;
  HIDWORD(v51) = v32 ^ 0xFFFFFFAB;
  v34 = (((v32 ^ 0xBAFCDA8A) + 1157834102) ^ ((v32 ^ 0x62A2A164) - 1654825316) ^ ((v32 ^ 0x530B4D45) - 1393249605)) - 363948165;
  HIDWORD(v50) = ((v34 - (v30 ^ 0x5EF96C48)) | ((v30 ^ 0x5EF96C48) - v34)) >= 0;
  LODWORD(v51) = v34;
  HIDWORD(a9) = (4 * v32) ^ 0x2D54DAAC;
  HIDWORD(v53) = v30 ^ 0xC9B;
  LODWORD(v48) = (v30 ^ 0xCF0) + 723311925;
  HIDWORD(v48) = v30 ^ 0xCF0;
  HIDWORD(v47) = (v30 ^ 0xCF0) - 1829376460;
  LODWORD(v46) = v30 - 278520349;
  LODWORD(v50) = v30 ^ 0xD3B;
  LODWORD(v47) = v30 ^ 0x1F6D;
  HIDWORD(v46) = v30 ^ 0xC02;
  v35 = (v33 - 1144) | 0x108B;
  v36 = v33 - 2491;
  v37 = (*(v31 + 8 * (v33 + 3382)))(16, 3886098504);
  return (*(v31 + 8 * (((v37 == 0) * (v35 ^ 0x197B)) ^ v36)))(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, v48, v49, v50, v51, v52, v53, a18, a19, a20);
}

uint64_t sub_19634DF98()
{
  v5 = v0 | 0x600;
  v7 = v2 > 0x1F && (v1 ^ v3) >= ((10 * (v5 ^ 0x169Cu)) ^ 0x912uLL);
  return (*(v4 + 8 * ((v7 * (v5 ^ 0x167B)) ^ v5)))();
}

uint64_t sub_19634E17C()
{
  v5 = (*(v3 + 8 * (v0 ^ 0x163D)))(v2, v4);
  *v1 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (((v0 - 1538478066) & 0x574D) + 2144)) ^ v0)))();
}

uint64_t sub_19634E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (v17 & 0x164A8EF) - v19 + 3668;
  HIDWORD(a15) = -1436432302;
  v21 = (*(v18 + 8 * (v20 ^ 0xAA61C852)))(16, 3886098504);
  return (*(v18 + 8 * ((53 * (((15 * (v20 ^ 0x8D)) ^ (v21 == 0)) & 1)) ^ (v19 + v20 - 115))))(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, 0x49C19389AA61D18DLL, a17);
}

uint64_t sub_19634E3E8()
{
  v5 = (*(v3 + 8 * ((v2 - 1805016499) & 0x6B965B5F ^ 0x8B9u)))(v1);
  *v4 = 0;
  return v0(v5);
}

uint64_t sub_19634E5D0@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t *a4@<X4>, _DWORD *a5@<X5>, char a6@<W7>, int a7@<W8>)
{
  v20 = *(*(v9 + 24) + 4 * (a7 + v12));
  v21 = *a4;
  v22 = v20 - (v17 & (2 * v20)) + v18;
  v23 = (v8 ^ v13 ^ (v7 + v10) & v11) + (v15 & (2 * v8)) + a3;
  *(*a4 + v23) = a6 ^ HIBYTE(v22);
  *(v21 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v21 + v23 + 3) = v22 ^ v19;
  *a5 += 4;
  v24 = a7 + v14 < a2;
  if (a2 < a1 != a7 + v14 < a1)
  {
    v24 = a2 < a1;
  }

  return (*(v16 + 8 * ((60 * !v24) ^ v7)))();
}

uint64_t sub_19634E73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  (*(v21 + 8 * (v19 + 4967)))(*v23);
  *v23 = v22;
  *(v23 + 8) = v20;
  return v24(2147482676, 8033, 896366627, 3398600701, 5680, a19, a16, a17);
}

uint64_t sub_19634E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, unsigned int a29)
{
  v32 = (a29 | ((a29 < ((80 * (v29 ^ 0x14D9)) ^ (a4 - 3952))) << 32)) + *(v30 + 12) - 807444279;
  v34 = v32 >= (v29 - 3696) + 430019698 && v32 <= *(v30 + 8) + 430021358;
  return (*(v31 + 8 * ((511 * v34) ^ v29)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_19634E868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (*(v14 + 8 * (v13 + 5310)))(a13, a12);
  *v15 = v16;
  return (*(v14 + 8 * (((v16 == 0) * ((v13 + 22) ^ v13)) ^ v13)))();
}

uint64_t sub_19634E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = *(a30 + 24);
  *v34 = (*(v31 + 8 * ((v32 + 3176) ^ 0x150C)))(*(v33 - 156) + ((v32 + 3176) ^ 0xB63DC919), 3886098504);
  return (*(v31 + 8 * ((450 * (((v30 == 0) ^ (v32 + 103)) & 1)) ^ (v32 + 3176))))();
}

uint64_t sub_19634E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *(v12 - 208);
  v14 = (v13 + a8);
  v15 = *(v12 - 192);
  v16 = (~*(v15 + 12) + v14) ^ (~*(v15 + 12) + v14);
  return (*(v11 + 8 * ((((v16 - 1) & ~v16) >> ((v13 + v10) ^ v8)) & 1 | v14 ^ v9)))(*(v11 + 8 * (v13 - 4611)), v15 + 12, 3945480387);
}

uint64_t sub_19634EA50()
{
  (*(v4 + 8 * (v0 ^ 0x1FFA)))(*v1);
  *v1 = v3;
  *(v1 + 8) = v2;
  return v5(1042206423);
}

uint64_t sub_19634EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v25 = *(v24 - 208);
  v26 = (v25 + a8);
  v27 = *(v24 - 192);
  v28 = (~*(v27 + 12) + v26) ^ (~*(v27 + 12) + v26);
  return (*(v23 + 8 * ((((v28 - 1) & ~v28) >> ((v25 + v22) ^ v20)) & 1 | v26 ^ v21)))(*(v23 + 8 * (v25 - 4600)), v27 + 12, a20);
}

uint64_t sub_19634EB94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v6 + ((v8 - 1190) ^ a1) + v5 + v4) = *(a2 + ((v8 - 1190) ^ a1) + v5);
  v11 = v9 == a1;
  v12 = a1 + 8;
  v13 = v11;
  return (*(v10 + 8 * ((v13 * a4) ^ v7)))(v12);
}

uint64_t sub_19634EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = a5 + v19 + 1072291638 + 2508;
  v22 = (*(v20 + 8 * ((v19 + 1072291638) ^ 0x3FE9F807)))(16, 3886098504);
  LODWORD(a18) = 1237422985;
  return (*(v20 + 8 * (((v22 == 0) * ((v19 + 4930) ^ 0x15D9)) ^ v21)))(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, 0xD950000006BLL, a15, a16, a17, a18, a19);
}

uint64_t sub_19634EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(v21 + 8 * (v22 ^ 0x12DF)))(a20, a19);
  *v20 = v23;
  return (*(v21 + 8 * (((v23 != 0) * ((v22 - 652) ^ 0x8A4)) ^ v22)))();
}

uint64_t sub_19634EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v29 - 220) = v25 + 912648571 * ((((v29 - 224) | 0xC286D2B0) - (v29 - 224) + ((v29 - 224) & 0x3D792D48)) ^ 0x1E4B9E85) - 1735;
  *(v29 - 216) = v27;
  *(v29 - 208) = v28;
  v30 = (*(v26 + 8 * (v25 + 3071)))(v29 - 224);
  return (*(v26 + 8 * ((28 * (a25 == 0)) ^ ((v25 ^ 0x8A7) + 1082))))(v30);
}

uint64_t sub_19634EF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v36 = (v29 - 1118) | 0x31;
  if (v27 >= 0x40)
  {
    v37 = 64;
  }

  else
  {
    v37 = v27;
  }

  if (v34 >= 0x40)
  {
    v38 = 64;
  }

  else
  {
    v38 = v34;
  }

  if (v31 >= 0x40)
  {
    v39 = 64;
  }

  else
  {
    v39 = v31;
  }

  v40 = 1468321087 * ((~(v35 - 224) & 0xCDB3FCE94CF75351 | (v35 - 224) & 0x324C0316B308ACAELL) ^ 0x987815869818123FLL);
  *(v35 - 152) = v40 + v39;
  *(v35 - 224) = &a27;
  *(v35 - 176) = (v29 - 1360868961) ^ v40;
  *(v35 - 168) = v40 + a16;
  *(v35 - 160) = v34 - v40;
  *(v35 - 156) = v40 + v31;
  *(v35 - 208) = v40 ^ a19;
  *(v35 - 200) = v40 ^ a17;
  *(v35 - 144) = a18 - v40;
  *(v35 - 192) = v40 ^ v30;
  *(v35 - 184) = v38 - v40;
  *(v35 - 180) = v27 - v40;
  *(v35 - 216) = v40 ^ v37;
  (*(v28 + 8 * (v29 + 4287)))(v35 - 224);
  (*(v28 + 8 * (v29 ^ 0x10C2u)))(a10, v32, 0, *(v33 + 8 * (v29 ^ 0x9C1u)) - 8, &a27, 88);
  *(v35 - 216) = (((2 * v27) & 0xF4BFFFFE) + (v27 ^ 0x7A5FFFFF) + ((v36 - 470295902) & 0xFF7E2F7D ^ 0x1C9DFAEE)) ^ (1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43));
  *(v35 - 220) = -101 * ((v35 + 32 - 2 * ((v35 + 32) & 0x2B) + 43) ^ 0x43) + 9;
  *(v35 - 152) = 0x54799400B27E420BLL;
  *(v35 - 168) = a15;
  *(v35 - 192) = 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43) + 1369802606;
  *(v35 - 144) = a13;
  *(v35 - 136) = 0;
  *(v35 - 104) = 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43) + 2051798450;
  *(v35 - 100) = (v34 ^ 0xFBDBFDB2) + ((2 * v34) & 0xF7B7FB64) + 2121267200 + 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43);
  *(v35 - 184) = a17;
  *(v35 - 176) = 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0x4F17A81BAC4F22BLL) + 0x4F17A81BAC4F22BLL) ^ 0x229BBD37EA95BF43) + (((v36 - 749) | 0x105u) + 0x56E9EE0FB6C65968) * a16 + 0x706969559327EE78;
  *(v35 - 128) = v31 - ((2 * v31) & 0xC97F5FD6) - 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43) - 457199637;
  *(v35 - 120) = a18;
  *(v35 - 112) = a14;
  *(v35 - 224) = 1427277979 * ((v35 - 224 - 2 * ((v35 - 224) & 0xBAC4F22B) - 1161498069) ^ 0xEA95BF43) + v36 + 3880;
  *(v35 - 219) = (-101 * ((v35 + 32 - 2 * ((v35 + 32) & 0x2B) + 43) ^ 0x43)) ^ 6;
  *(v35 - 208) = v30;
  *(v35 - 200) = a19;
  v41 = (*(v28 + 8 * (v36 + 5220)))(v35 - 224);
  if (a15)
  {
    v42 = a14 == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = v42 || a13 == 0;
  return (*(v28 + 8 * (v36 ^ (124 * v44))))(v41);
}

uint64_t sub_19634F2D0()
{
  result = (*(v2 + 8 * (((v0 - 1023411105) | 0x212404) ^ 0xC3213DA0)))();
  *v1 = -33;
  return result;
}

uint64_t sub_19634F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v33 - 136) = (v29 + 1311675532) ^ (1468321087 * ((((2 * (v33 - 144)) | 0x4D285F26) - (v33 - 144) - 647245715) ^ 0xF27B6EFD));
  *(v33 - 144) = v30;
  (*(v32 + 8 * (v29 ^ 0x1D29u)))(v33 - 144);
  v34 = (*(v32 + 8 * (v29 + 5376)))(**(v31 + 8 * (v29 - 1007)), *(v31 + 8 * (v29 - 967)) - 4, a29);
  v35 = ((2 * v34) & 0xD7BEFCEE) + (v34 ^ 0xEBDF7E77);
  *(v33 - 144) = v30;
  *(v33 - 136) = (v29 - 50584770) ^ (912648571 * ((2 * ((v33 - 144) & 0x500858C8) - (v33 - 144) - 1342724297) ^ 0x733AEB02));
  v36 = (*(v32 + 8 * (v29 + 5447)))(v33 - 144);
  return (*(v32 + 8 * (((v35 == -337674633) * (((v29 + 1191430767) & 0xB8FC31EE) + 2169)) ^ v29)))(v36);
}

uint64_t sub_19634F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v21 - 168) = 0;
  v22 = v19 + 29;
  v23 = v19 + 533;
  v24 = (*(v20 + 8 * (v19 ^ 0x112E)))(16, 3886098504);
  return (*(v20 + 8 * ((478 * ((v22 ^ (v24 == 0)) & 1)) ^ v23)))(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_19634F8F4()
{
  v5 = 912648571 * (&v9 ^ 0xDCCD4C35);
  v11 = v1 - v5 + (((v4 + 142943022) | 0x16A5010) ^ 0xBFD2BF83);
  v10 = v8;
  v9 = (v4 + 1318477945) ^ v5;
  (*(v3 + 8 * (v4 ^ 0x1EF1)))(&v9);
  (*(v3 + 8 * (v4 + 4750)))(v7, v0, 0, *(v2 + 8 * (v4 ^ 0x788)) - 12, v8, 8);
  return (v1 - 1237465637);
}

void AePuaz8DCwOiy3obi3eUASRayF()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (qword_1EAF166F0 ^ 0x30 ^ dword_1EAF16720))) ^ 0xF5u) - 12) ^ (91 * (qword_1EAF166F0 ^ 0x30 ^ dword_1EAF16720))) + 7];
  v1 = qword_1EAF166F0 ^ &v4 ^ *(v0 - 4);
  v2 = 636859739 * v1 + 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF166F0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19634FBCC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((463 * (v5 != (v3 ^ 0xAE191BA7))) ^ (v3 + 1374090540))))();
}

uint64_t sub_19634FC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  LODWORD(a9) = v28;
  v43 = v27;
  HIDWORD(a27) = 1885819524;
  HIDWORD(a20) = 1237465637;
  v34 = (*(v31 + 8 * (v29 + 1511)))(v30, @"AAYLwXkf");
  return (*(v31 + 8 * (((v34 == 0) * (857 * (((v29 - 1905) | 0x104) ^ 0xD60) - 3390)) ^ v29)))(v34, v35, v36, v37, v38, v39, v40, v41, a9, v32, v33, v43, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, 0, a27);
}

uint64_t sub_19634FD20()
{
  v5 = (*(v2 + 52864))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * ((27 * (v5 == 0)) ^ v4)))();
}

void sub_19634FD60(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 583883621 * ((788076807 - (a1 | 0x2EF91907) + (a1 | 0xD106E6F8)) ^ 0x70353A57);
  v3[0] = v1 - 891395573 * (v3 ^ 0x3A2D1FBB) + 499;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0xF44] - 8;
  (*&v2[8 * v1 + 21944])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19634FE6C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = (v3 + 1251);
  *(v5 + v2 + v6 - 2823) = *(a2 + v2 + v6 - 2823);
  return (*(v4 + 8 * (((v2 + v6 != 2823) * a1) ^ (v3 - 21))))();
}

uint64_t sub_19634FF6C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = *(a2 + v2);
  v7 = (a1 + v3 - 0x3F3FADFFD25ECE4FLL + v2);
  *(v7 - 1) = *(a2 + v2 - 16);
  *v7 = v6;
  return (*(v5 + 8 * ((((v2 & 0xFFFFFFE0) != 32) * (v4 ^ 0x8A5)) | (v4 - 558))))(a2);
}

uint64_t sub_19634FFD0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1658)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 - 4652) | 0x284) + (v1 ^ 0xFFFFEE4F))) ^ v1)))();
}

uint64_t sub_196350030@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ a1 ^ (v5 - 352)) + v3;
  v11 = *(a3 + v10 - 15);
  v12 = *(a3 + v10 - 31);
  v13 = v7 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 == v9) * a2) ^ v5)))();
}

uint64_t sub_196350060()
{
  v5 = 912648571 * ((1475898289 - (&v9 | 0x57F86BB1) + (&v9 | 0xA807944E)) ^ 0x74CAD87B);
  v11 = v4 - v5 + (v0 ^ 0xB63DC098);
  v10 = v8;
  v9 = (v0 + 1318478416) ^ v5;
  (*(v3 + 8 * (v0 ^ 0x1CA8)))(&v9);
  (*(v3 + 8 * (v0 + 5221)))(v7, v1, 0, *(v2 + 8 * (v0 ^ 0x5E6)) - 4, v8, 8);
  return (v4 - 1237465637);
}

uint64_t sub_1963501A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, unint64_t a26, char *a27)
{
  v32 = 583883621 * (((~&a24 | 0xF8E3ACC0A61CCCA4) + (&a24 | 0x71C533F59E3335BLL)) ^ 0xFCB72585F8D0EFF5);
  a24 = (v27 + 273734792) ^ v32;
  a25 = a11 - v32;
  a26 = v32 ^ v28;
  a27 = &a20;
  (*(v31 + 8 * (v27 + 3705)))(&a24);
  v33 = (*(v31 + 8 * (v27 + 3636)))(a12, v29, 0, *(v30 + 8 * (v27 - 2861)) - 8, &a20, 18);
  if (a13)
  {
    v34 = a14 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34;
  return (*(v31 + 8 * ((118 * ((v35 ^ (v27 + 67)) & 1)) ^ (v27 + 1858))))(v33);
}

uint64_t sub_196350298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, char a27)
{
  (*(v31 + 8 * (v27 + 2774)))(v28);
  v33 = *v29;
  v34 = *(v30 + 12) + 599664785 - (((v27 + 1625070218) ^ 0x27A0F8A2) & (2 * *(v30 + 12)));
  v35 = 1311869473 * ((~((v32 - 144) ^ 0x2FA0EA28 | 0x28F096CA) + (((v32 - 144) ^ 0x2FA0EA28) & 0x28F096CA)) ^ 0x134099B1);
  *(v32 - 136) = *v30;
  *(v32 - 128) = &a27;
  *(v32 - 120) = &a25;
  *(v32 - 144) = v34 ^ v35;
  *(v32 - 112) = v35 + v27 + 1806;
  *(v32 - 104) = 563297187 - v35 + 622816387 * v33;
  (*(v31 + 8 * (v27 + 2814)))(v32 - 144);
  v36 = *(v32 - 108);
  v37 = (*(v31 + 8 * (v27 + 2772)))(v28);
  return (*(v31 + 8 * ((v27 + 1625075289) ^ (v27 + 1625070218) ^ (46 * (((v27 + 9) ^ (((v36 - (v27 + 1625070218)) | (v27 + 1625070218 - v36)) < 0)) & 1)))))(v37);
}

uint64_t sub_19635039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  v27 = (v24 + 211978300) & 0xEF39FFB7;
  *(v25 + 8) = a23;
  *(v25 + 12) = 0;
  v28 = (*(v26 + 8 * (v27 + 1374092854)))(*(&off_1F0B1A0C0)[v27 ^ 0xAE191BA8], a24, a23);
  return (*(v26 + 8 * ((v27 + 1374086348) ^ 0x15CE)))(v28);
}

uint64_t sub_1963504A0()
{
  *v1 = 0;
  v1[1] = 0;
  (*(v4 + 8 * ((v0 | 0xC24A1104) ^ 0xCACEC2B1)))(v1);
  return v3(v2);
}

uint64_t sub_196350520(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + a2);
  v7 = (v4 + a2);
  *(v7 - 1) = *(a1 + a2 - 16);
  *v7 = v6;
  return (*(v5 + 8 * ((112 * (v3 == a2)) | v2)))();
}

uint64_t sub_19635070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16)
{
  a15 = v16 + 1384597421 * ((((2 * &a15) | 0xE4CE105C) - &a15 + 228128722) ^ 0x10A95157) - 1501091087;
  a16 = &a11;
  (*(v19 + 8 * (v16 + 1610)))(&a15);
  (*(v19 + 8 * (v16 ^ 0xA33u)))(v22, v17, 0, *(v18 + 8 * (v16 ^ 0x13ECu)) - 4, &a11, 2);
  a15 = (v21 + 388) ^ (1466156297 * ((&a15 - 2 * (&a15 & 0xB7DFB1DD) - 1210076707) ^ 0x6468318C));
  LOBYTE(a16) = 93 - 9 * ((&a15 - 2 * (&a15 & 0xB7DFB1DD) - 35) ^ 0x8C);
  v23 = (*(v19 + 8 * (v21 + 1823)))(&a15);
  return (*(v19 + 8 * (((*v20 == 0) * ((v21 - 4227) ^ 0x27C)) ^ v21)))(v23);
}

uint64_t sub_196350844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  v30 = *(*(v29 - 192) + 48);
  v31 = *a17;
  v32 = ((*a26 << ((v26 + 4) ^ 0xA8)) & 0xDF7CBEFE) + (*a26 ^ 0xEFBE5F7F) + 272736385;
  *(*a17 + v32) = BYTE4(a20);
  *(v31 + v32 + 1) = a20;
  *(v31 + v32 + 2) = BYTE4(a19);
  *(v31 + v32 + 3) = a19;
  v33 = (*a26 + 4);
  *a26 = v33;
  v34 = *a17;
  *(v29 - 212) = v28;
  *(v29 - 196) = a8;
  v35 = *(v27 + 8 * ((57 * (v30 > v34 + (v33 ^ 0xF63BBDFBFD4F8E3FLL) + 0x3FFCCF3DC2FCF5FELL + ((2 * v33) & 0x1FA9F1C7ELL) - 0x36388D39C04C843DLL)) ^ (((v26 - 1868830120) & 0x6F641797) + 1862)));
  return v35(v34, v35, 433578377, 3861386141, a5, 0x36388D39C04C843DLL, 0x2FBB29FF301AE9D9, 807069236, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_196350C5C@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X5>, _DWORD *a3@<X6>, char a4@<W8>)
{
  v6 = *a2;
  v7 = ((2 * *a3) & 0xF7FDBFBE) + (*a3 ^ 0x7BFEDFDF) - 2080301023;
  *(*a2 + v7) = HIBYTE(v5) ^ 0x81;
  *(v6 + v7 + 1) = (v5 >> (((a4 + 23) | 0x10) ^ (v4 - 16))) ^ 0x18;
  *(v6 + v7 + 2) = BYTE1(v5) ^ 0x7F;
  *(v6 + v7 + 3) = v5 ^ 0x29;
  *a3 += 4;
  return a1();
}

uint64_t sub_196350D00@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x701;
  (*(v3 + 8 * (a1 + 2459)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0xEAC)))(v1);
  return v2(v5);
}

uint64_t sub_196350F84@<X0>(int a1@<W8>)
{
  v4 = 898 * (a1 ^ 0x119A);
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x1360)))(v1);
  return (*(v3 + 8 * (((7 * (v4 ^ 0xA05) - 4684 + ((7 * (v4 ^ 0xA05) - 394) | 0xCB4)) * (v2 < 855917960)) | (7 * (v4 ^ 0xA05) + 3826))))(v5);
}

uint64_t sub_196351004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  *a8 += a21;
  v26 = *(v25 - 152);
  *(v25 - 176) = 0;
  *(v25 - 184) = 0;
  v27 = *(v22 + 8 * (v23 ^ 0x49B)) - 8;
  (*(v24 + 8 * (v23 + 5379)))(v27);
  v28 = **(v22 + 8 * (v23 ^ 0x4FE));
  v29 = *v26;
  v30 = *(v26 + 3) + 599664785 - ((2 * *(v26 + 3)) & 0x477C5122);
  v31 = 1311869473 * ((1541787237 - (v21 | 0x5BE5CE65) + (v21 | 0xA41A319A)) ^ 0x4FF52B36);
  *(v25 - 120) = v25 - 184;
  *(v25 - 136) = v29;
  *(v25 - 128) = v25 - 176;
  *(v25 - 144) = v30 ^ v31;
  *(v25 - 112) = v31 + v23 + 4411;
  *(v25 - 104) = 563297187 - v31 + v28 * (v23 + 622815162);
  (*(v24 + 8 * (v23 + 5419)))(v25 - 144);
  v32 = *(v25 - 108);
  v33 = (*(v24 + 8 * (v23 ^ 0x1D03)))(v27);
  return (*(v24 + 8 * (((v32 == 1893509507) * ((v23 - 352) ^ 0x377)) ^ v23)))(v33);
}

uint64_t sub_196351170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), int a7)
{
  v11 = v9 + 1157656344;
  v12 = ((2 * a7) & 0xFF733156) + (a7 ^ 0xFFB998AB);
  v13 = (*(*v8 + v12 + 4613973) << 24) | (*(*v8 + ((v11 | 0x5A1078) ^ 0x451CF3AF) + v12) << 16) | (*(*v8 + v12 + 4613975) << 8) | *(*v8 + v12 + 4613976);
  *v7 = (v13 ^ 0xDDEFFB67) + v10 + ((2 * v13) & 0xBBDFF6CE);
  *(v8 + 12) = a7 + 4;
  return a6();
}

uint64_t sub_19635122C()
{
  v6 = v0 + 3049;
  *(v3 + 12) = ((v0 + 3049) ^ 0xB63DD50E) + v2 + v1;
  v7 = (*(v5 + 8 * (v0 ^ 0x1D22)))();
  *v4 = v7;
  return (*(v5 + 8 * ((((v6 + 864677417) & 0xCC7611CF ^ (v6 - 179183830) & 0xAAE1CDB ^ 0x1C26) * (v7 == 0)) ^ v6)))(v7, v8);
}

uint64_t sub_196351320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v11 + 8 * (v13 ^ 0x1FB3)))(a11, a10);
  *v12 = v15;
  return (*(v11 + 8 * (((v15 == 0) * (((v13 + 1071556807) & 0xFFF75BD7) + (v13 ^ 0xC3 ^ v14))) ^ v13)))();
}

uint64_t sub_1963513B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v19 = (*(v17 + 52864))(v18, a14);
  *a17 = v19;
  return (*(v17 + 8 * ((1017 * (v19 != 0)) ^ 0x11EEu)))();
}

uint64_t sub_196351478()
{
  v5 = (*(v2 + 8 * (v4 + 5396)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * (((v4 - 1100) | 0x484) - 1196)) ^ v4)))();
}

uint64_t sub_1963514C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  (*(v24 + 8 * (v22 - 1096538387)))(v20);
  *v21 = 0;
  return v23(3311047929, 7487, 4324, 4294964708, a20);
}

void sub_1963515E8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 64) == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = !v2 && *(a1 + 48) != 0 && *(a1 + 16) != 0;
  v1 = *a1 ^ (891395573 * (((a1 | 0x55A6AF6C) - a1 + (a1 & 0xAA595093)) ^ 0x6F8BB0D7));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963516EC()
{
  v5 = v0 + 1554;
  v6 = *(v13 + 4);
  if (v6 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = *(v13 + 4);
  }

  v8 = *v13;
  v9 = 912648571 * ((v4 - 144 - 2 * ((v4 - 144) & 0x7139CEDA6059B8C4) + 0x7139CEDA6059B8C4) ^ 0x319ADC52BC94F4F1);
  v10 = v13[1] ^ v9;
  *(v4 - 136) = (v5 - 1476601378) ^ v9;
  *(v4 - 132) = v6 - v9;
  *(v4 - 144) = v2 - v9 + (v5 ^ 0xB63DD1F5);
  *(v4 - 140) = v7 + v9;
  *(v4 - 128) = v8 - v9;
  *(v4 - 120) = v10;
  *(v4 - 112) = v14;
  (*(v3 + 8 * (v5 + 1475)))(v4 - 144);
  (*(v3 + 8 * (v5 + 1402)))(v12, v1, 0, (&off_1F0B1A0C0)[v5 - 5118] - 12, v14, 40);
  return (v2 - 1237465637);
}

uint64_t sub_19635185C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFA88 ^ (v3 - 4093)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((902 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1963519A8()
{
  v5 = *v1;
  v6 = *v10;
  v7 = 1468321087 * (((v12 | 0x76B6E084) - (v12 & 0x76B6E084)) ^ 0xA259A1EA);
  v14 = v1[1] - v7;
  v12[0] = v7 - 42847;
  v12[1] = (v4 - 1817571154) ^ v7;
  v12[2] = v5 - v7;
  v12[3] = v6 - v7;
  v13 = v11;
  (*(v0 + 8 * (v4 ^ 0xA3C)))(v12);
  (*(v0 + 8 * (v4 ^ 0x9BE)))(v9, v3, 0, *(v2 + 8 * (v4 - 3979)), v11, 26);
  return 4294924449;
}

uint64_t sub_196351DA4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v2 + 8 * (v3 + v4 + 1070)))(va, 3, 56, 64, a1, 0, 0);
  v6 = ((v4 - 2108009221) & 0x1CC90FEF) - 335700617 + (((v4 - 1625068412) ^ 0xE9BDED38) & (2 * v5)) + (v5 ^ 0x74DEFD9E);
  return (*(v2 + 8 * (v4 ^ 0x60DCBED0 ^ (249 * (((v6 - v4) | (v4 - v6)) >> 31)))))();
}

uint64_t sub_196351E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v13 ^ 0xA24;
  v17 = (((v13 ^ 0xA24) - 1082132609) & 0xEE991FEF) - v12;
  v18 = (*(v15 + 8 * (v16 + 5528)))(a12, a11);
  *v14 = v18;
  return (*(v15 + 8 * (((v18 == 0) * (v17 ^ 0x1E0A)) ^ v16)))();
}

uint64_t sub_196351E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, unsigned int a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, int a29, char a30, uint64_t a31)
{
  v38 = a31;
  if (a16 >= 0x40)
  {
    v39 = 64;
  }

  else
  {
    v39 = a16;
  }

  if (a23 >= 0x40)
  {
    v40 = 64;
  }

  else
  {
    v40 = a23;
  }

  if (v36 >= 0x40)
  {
    v41 = 64;
  }

  else
  {
    v41 = v36;
  }

  v42 = a26;
  v43 = 1864678469 * (((~(v37 - 224) | 0xB6807A8DBC71FB70) + ((v37 - 224) | 0x497F8572438E048FLL)) ^ 0x318FBA4170FE1367);
  *(v37 - 176) = v41 - v43;
  *(v37 - 216) = v42 - v43;
  *(v37 - 192) = v38 ^ v43;
  *(v37 - 152) = 8 - v43;
  *(v37 - 224) = v32 - v43 - 2038756235;
  *(v37 - 220) = v43;
  *(v37 - 184) = v40 + v43;
  *(v37 - 180) = v39 + v43;
  *(v37 - 204) = a16 ^ v43;
  *(v37 - 200) = a23 + v43;
  *(v37 - 208) = v36 ^ v43;
  *(v37 - 168) = v31 + v43;
  *(v37 - 160) = a24 - v43;
  *(v37 - 144) = &STACK[0x200];
  *(v37 - 136) = a17 + v43;
  (*(v35 + 8 * (v32 ^ 0x1EF3)))(v37 - 224);
  (*(v35 + 8 * (v32 + 5352)))(a15, v34, 0, (&off_1F0B1A0C0)[v32 ^ 0x48A] - 12, &STACK[0x200], 100);
  v44 = a26;
  v45 = a18 & 0xAF ^ 0x54;
  v46 = ((a31 ^ 0xDF3DBF5FFEF6B1F7) + 0x29D2DFFF0D8BEEBDLL + ((2 * a31) & 0xBE7B7EBFFDED63EELL)) ^ (652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x2C0AEACB973E3E8CLL) + 0x2C0AEACB973E3E8CLL) ^ 0x76BC4137D5CD0019));
  *(v37 - 176) = a24;
  *(v37 - 168) = v46;
  *(v37 - 128) = v31;
  *(v37 - 224) = a17;
  *(v37 - 152) = &a30;
  *(v37 - 144) = &a28;
  *(v37 - 184) = (v36 ^ 0xBDFFFF37) - 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019) + ((2 * v36) & 0x7BFFFE6E) + 1727987658;
  *(v37 - 192) = a23 - 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019) - ((2 * a23) & 0x11C96F4C) - 1998276698;
  *(v37 - 216) = 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019) + 1344803750;
  *(v37 - 212) = 1344803742 - 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019);
  *(v37 - 160) = (a18 ^ (2 * ((a18 ^ 0x2E) & (2 * ((a18 ^ 0x2E) & (2 * ((a18 ^ 0xAE) & (2 * ((a18 ^ 0xAE) & (2 * ((a18 ^ 0xAE) & (2 * (((2 * (a18 & 0xAF)) ^ 0x18) & (a18 ^ 0xE) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ 0x63) + 85 * ((v37 + 32 - 2 * ((v37 + 32) & 0x8C) - 116) ^ 0x19);
  *(v37 - 136) = 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019) + ((2 * a16) & 0xCBFDFEA6) + (v33 ^ 0x83A) + (a16 ^ 0xE5FEF45C ^ (v33 - 25)) + 1056963740;
  *(v37 - 156) = v33 - 652747349 * ((v37 - 224 - 2 * ((v37 - 224) & 0x973E3E8C) - 1757528436) ^ 0xD5CD0019) + 3118;
  *(v37 - 208) = &a25;
  *(v37 - 200) = v44;
  v47 = (*(v35 + 8 * (v33 + 3816)))(v37 - 224);
  return (*(v35 + 8 * ((8104 * (*a22 == 0)) ^ v33)))(v47);
}

uint64_t sub_1963521EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v32 = (*(v28 + 24) - a26 - 2088148901);
  v30 = v32 + (*(*(v29 - 200) + 12) ^ 0x5F7FFD9AABDFFBF7) + ((2 * *(*(v29 - 200) + 12)) & 0x157BFF7EELL) - 0x5F7FFD9AABDFFBF7;
  return (*(v27 + 8 * ((4101 * (((v30 - (v26 - 5493)) & ~v30) >> 63)) ^ (v26 - 5493) & 0x35A)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, *(v28 + 32), v32);
}

uint64_t sub_196352210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = (a9 ^ HIDWORD(a12) & 0x6D0A1DFB ^ 0xFEC7FEFFFD6FAB7ALL) + ((a9 << ((a13 & 0xFAu) + 105)) & 0x1FADF4FC4) + 0x13801006F99F88ELL;
  v24 = v22 < 0x6D09A06C || v22 > *(v20 + 8) + 1829347436;
  return (*(v21 + 8 * ((1765 * v24) ^ HIDWORD(a13))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_19635242C(uint64_t *a1, uint64_t (*a2)(uint64_t *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _DWORD *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20, uint64_t a21)
{
  v22 = *a1;
  v23 = a21 - ((2 * a21) & 0x75FC608A) + 989737029;
  v24 = ((v21 ^ 0xE43BD924) & (2 * *a20)) + (*a20 ^ 0x7FBE7D4F) - 2143190351;
  *(*a1 + v24) = HIBYTE(v23) ^ 0x3A;
  *(v22 + v24 + 1) = BYTE2(v23) ^ 0xFE;
  *(v22 + v24 + 2) = BYTE1(v23) ^ 0x30;
  *(v22 + v24 + 3) = v23 ^ 0x45;
  *a20 += 4;
  return a2(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_19635250C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v29 = (v27 - 995764770) & 0x3B5A2D7C;
  (*(v26 + 8 * (v27 ^ 0x13F2)))(a11, @"igoeg", a1);
  *(v28 - 184) = v27 + 1427277979 * (((v28 - 184) & 0x60249417 | ~((v28 - 184) | 0x60249417)) ^ 0xCF8A2680) - 2066;
  *(v28 - 176) = a24;
  (*(v26 + 8 * (v27 ^ 0x13D3)))(v28 - 184);
  (*(v26 + 8 * (v27 ^ 0x13DB)))(a1);
  v31 = (*(v26 + 8 * (v29 ^ 0x14B6)))(v25);
  return (*(v26 + 8 * (((v24 != 0) * (((v29 - 3426) | 0x2A4) ^ 0x292)) ^ (v29 - 151))))(v31);
}

uint64_t sub_19635264C@<X0>(int a1@<W5>, uint64_t (*a2)(void)@<X6>, _DWORD *a3@<X7>, int a4@<W8>)
{
  v5 = *v4;
  v6 = a1 - ((2 * a1) & 0x75FC608A) + 989737029;
  v7 = (((a4 ^ 0xEB643392) - 537005210) & (2 * *a3)) + (*a3 ^ 0xEFFEFF6F) + 268501137;
  *(*v4 + v7) = HIBYTE(v6) ^ 0x3A;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0xFE;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x30;
  *(v5 + v7 + 3) = v6 ^ 0x45;
  *a3 += 4;
  return a2();
}

uint64_t sub_196352778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *(v20 + 8) = 4096;
  *v21 = v20;
  return v22(3311047929, 7487, 4324, 4294964708, a20, a6, a7, a18);
}

uint64_t sub_196352868(uint64_t a1, int a2)
{
  v7 = v4 - 32;
  v8 = *(v7 + v2);
  v9 = (v5 - 32 + v2);
  *(v9 - 1) = *(v7 + v2 - 16);
  *v9 = v8;
  return (*(v6 + 8 * (((a1 == 32) * a2) ^ v3)))();
}

uint64_t sub_1963528E0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 - 16 + v4);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v3 + 8 * ((((((v2 & 0x9D4015BF) - 1235) & v1) != 32) * (((v2 & 0x9D4015BF) + 1224) ^ 0x94B)) ^ ((v2 & 0x9D4015BF) - 48))))();
}

uint64_t sub_196352A00(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 3586)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 - 1216368213) & 0xFDFBD2FB ^ 0x4A846694) + ((v1 - 667) | 4))) ^ v1)))();
}

uint64_t sub_196352A74()
{
  v3 = (*(v0 + 12) ^ 0x7EA5F77BDFFD3FFFLL) + ((*(v0 + 12) << ((7 * (v1 ^ 0x44)) ^ 0x2Eu)) & 0x1BFFA7FFELL) - 0x7EA5F77B4B4465D8;
  v5 = v3 < 0x94B8DA23 || v3 > *(v0 + 8) + ((v1 - 3587) ^ 0x94B8DDF9uLL);
  return (*(v2 + 8 * ((41 * v5) ^ v1)))();
}

uint64_t sub_196352B70@<X0>(uint64_t a1@<X8>)
{
  v5 = 271 * ((v2 - 4211) ^ 0x4AEu) - 5692 + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((2137 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v2 - 4211))))(-5692);
}

uint64_t sub_196352BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, int a17, int a18, int a19, char *a20)
{
  if (v23 >= 0x40)
  {
    v27 = 64;
  }

  else
  {
    v27 = v23;
  }

  v28 = 1468321087 * ((~&a16 & 0x7B959A9BE70FE950 | &a16 & 0x846A656418F016AFLL) ^ 0x2E5E73F433E0A83ELL);
  a19 = v23 - v28;
  a16 = v28 ^ v22;
  a17 = v27 - v28;
  a18 = v20 - v28 - 1035723981;
  a20 = &a11;
  (*(v25 + 8 * (v20 + 4007)))(&a16);
  v29 = (*(v25 + 8 * (v20 ^ 0x13EFu)))(a9, v21, 0, *(v24 + 8 * (v20 ^ 0xA8Fu)), &a11, 24);
  return (*(v25 + 8 * (((*v26 == 0) * (((v20 - 1861) | 0xB0) ^ 0x351)) ^ v20)))(v29);
}

uint64_t sub_196352CE4@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v10 = v5 + 32;
  v11 = ((v6 + a1) ^ v10) + v3;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = v8 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * a2) ^ v4)))();
}

uint64_t sub_196352CEC()
{
  v7 = 912648571 * ((((v6 - 144) | 0x9E05FEC6) - ((v6 - 144) & 0x9E05FEC6)) ^ 0x42C8B2F3);
  *(v6 - 136) = v9;
  *(v6 - 144) = (v0 + 1318476068) ^ v7;
  *(v6 - 128) = v1 - v7;
  (*(v4 + 8 * (v0 + 2940)))(v6 - 144);
  (*(v4 + 8 * (v0 ^ 0x17C7)))(v3, v2, 0, *(v5 + 8 * (v0 - 3523)) - 4, v9, 8);
  return v1;
}

uint64_t sub_196352DD0@<X0>(uint64_t a1@<X4>, unsigned int a2@<W8>)
{
  v4 = ((2 * v2) & 0x1FB3FEFF8) + ((((a2 + 3990) | 0x145) + 0x7FFFFF1FFD9FE4B7) ^ v2) - 0x7FFFFF1F58C331BFLL;
  v6 = v4 < 0xA4DCC639 || v4 > *(a1 + 8) + 2765932089u;
  return (*(v3 + 8 * ((423 * v6) ^ a2)))();
}

uint64_t sub_196352F28@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, _DWORD *a12)
{
  v12 = *a2;
  v13 = a10 - (((a3 ^ 0xAE191E11) - 941407005) & (2 * a10)) + 989737029;
  v14 = ((2 * *a12) & 0xD5F4FF9E) + (*a12 ^ 0x6AFA7FCF) - 1794801615;
  *(*a2 + v14) = HIBYTE(v13) ^ 0x3A;
  *(v12 + v14 + 1) = BYTE2(v13) ^ 0xFE;
  *(v12 + v14 + 2) = BYTE1(v13) ^ 0x30;
  *(v12 + v14 + 3) = v13 ^ 0x45;
  *a12 += 4;
  return a1();
}

uint64_t sub_196353074@<X0>(unsigned int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 + (v4 ^ a1) - 3054;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * a2) ^ v4)))();
}

uint64_t sub_1963530E0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((v2 - 599066309) & 0x23B4FFFE ^ 0xBDELL) == (v1 & 0xFFFFFFE0);
  return (*(v4 + 8 * (v6 | (16 * v6) | v2)))();
}

uint64_t sub_196353250(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1 + 346387183 * (a1 ^ 0x8568D5D0);
  v3 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = v3;
  v5 = v2 + 2041212434 + 1468321087 * (((&v5 | 0xD54E5377) - &v5 + (&v5 & 0x2AB1AC88)) ^ 0x1A11219) + 3320;
  v6 = 95 - 63 * (((&v5 | 0x77) - &v5 + (&v5 & 0x88)) ^ 0x19);
  result = (*&(&off_1F0B1A0C0)[v2 + 2041212434][8 * v2 + 0x3CD543C68])(&v5);
  *(a1 + 4) = v7 - 1237465637;
  return result;
}

uint64_t sub_196353368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v12 + 8 * (v13 + 2896)))(a11, a10);
  *v11 = v14;
  return (*(v12 + 8 * ((((v13 - 567578633) & 0x21D48BFD ^ 0x1BA02764 ^ ((v13 + 142610836) | 0x13200D00)) * (v14 == 0)) | v13)))();
}

uint64_t sub_1963533E0()
{
  v5 = 912648571 * ((-1942235461 - (&v9 | 0x8C3BD6BB) + (&v9 | 0x73C42944)) ^ 0xAF096571);
  v11 = *v2 - v5;
  v10 = v8;
  v9 = (v0 + 1318473306) ^ v5;
  (*(v4 + 8 * (v0 + 178)))(&v9);
  (*(v4 + 8 * (v0 + 111)))(v7, v1, 0, *(v3 + 8 * (v0 - 6428)), v8, 8);
  return 4294924449;
}

uint64_t sub_19635351C@<X0>(int a1@<W1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((255 * (v7 == (v4 ^ (a1 + 141)) + a2)) ^ v4)))();
}

uint64_t sub_196353554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = *(a2 + v2 - 16);
  *(v6 - 1) = *(a2 + v2 - 16 - 16);
  *v6 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v5 + v3 - 40) | 0x184A) - 4233)) ^ (v3 - 1042202302))))();
}

uint64_t sub_1963535B8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 4466)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 + 1990) | 0x340) ^ (v1 + 2793))) ^ v1)))();
}

uint64_t sub_196353628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25)
{
  v30 = (v25 + 1831075434) | 0x100B5C5C;
  *(v27 + 8) = a23;
  *(v27 + 12) = 0;
  v31 = (*(v29 + 8 * (v28 + v30 + 2389)))(*(&off_1F0B1A0C0)[v30 ^ (v26 - 11)], a25, a23);
  return (*(v29 + 8 * ((924 * ((((v30 - 2100255444) | 0x110) ^ 0x49C2393C) == 1237465637)) ^ (v30 - 2100255589))))(v31);
}

uint64_t sub_1963536EC@<X0>(int a1@<W8>)
{
  v2 = a1 + 5546;
  v3 = (a1 + 390) | 0x1020;
  v4 = (*(v1 + 8 * ((a1 + 5546) ^ 0xEFE)))(16, 3886098504) == 0;
  return (*(v1 + 8 * (((((v2 ^ v4) & 1) == 0) * (v3 ^ 0x1352)) ^ v2)))(1237422985);
}

void oHoupA(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16660 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16660 ^ 0x30 ^ dword_1EAF16720))] ^ 0xE3]) + 89];
  v8 = off_1F0B1A830;
  v9 = off_1F0B1A3F0 - 12;
  v10 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (*v7 ^ dword_1EAF16720 ^ 0x30))) ^ 0x75u) - 12) ^ (91 * (*v7 ^ dword_1EAF16720 ^ 0x30))) + 62];
  v11 = &v17[1] + *(v10 - 4) - *v7;
  *v7 = 636859739 * v11 - 0x1D38D65F7E9650D0;
  *(v10 - 4) = 636859739 * (v11 ^ 0xE2C729A08169AF30);
  v17[0] = 1237465637;
  v15 = *a6;
  v16 = 0;
  v12 = 912648571 * (((v18 | 0x3E04CD417AE88159) - v18 + (v18 & 0xC1FB32BE85177EA0)) ^ 0x7EA7DFC9A625CD6CLL);
  v25 = v12 ^ 9;
  v22 = &v16;
  v23 = v12 ^ (a1 - ((2 * a1) & 0xEEC05189AC2C55C0) - 0x89FD73B29E9D520);
  v24 = (a3 ^ 0xB4FEB7EB) + ((2 * a3) & 0x69FD6FD6) - v12 + 1329156055;
  v18[0] = a2;
  v18[2] = &v15;
  v20 = v17;
  v19 = v12 ^ 0x1708;
  v21 = (a5 ^ 0x95BEDFEA) + ((2 * a5) & 0x2B7DBFD4) + 1853433816 + v12;
  v26 = a4;
  LOBYTE(v7) = 91 * ((*(v10 - 1) + *v7) ^ 0x30);
  v13 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16660 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16660 ^ 0x30 ^ dword_1EAF16720))] ^ 0x6F]) - 9] - 8;
  (*&v13[8 * (v7 ^ v9[v8[v7] ^ 0x86]) + 52696])(v18);
  v14 = v16;
  *a6 = v15;
  __asm { BRAA            X9, X17 }
}

void n2qn70S3cN6uyWbw()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (qword_1EAF166C0 ^ 0x30 ^ dword_1EAF16720))) ^ 0xB9u) - 12) ^ (91 * (qword_1EAF166C0 ^ 0x30 ^ dword_1EAF16720))) - 29];
  v1 = (*(v0 - 4) + qword_1EAF166C0) ^ &v4;
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF166C0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196353C88@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = a1 ^ 0x1800;
  *(v18 - 168) = 0;
  v20 = (a1 ^ 0x621) + 3341;
  v21 = (*(v17 + 8 * ((a1 ^ 0x1800) + 85)))(16, 3886098504);
  return (*(v17 + 8 * (((v21 == 0) * (v20 ^ 0x14DC)) ^ v19)))(v21, v22, v23, v24, v25, v26, v27, v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_196353CA0()
{
  v5 = (&v8 & 0x43A7E97D | ~(&v8 | 0x43A7E97D)) ^ 0x60955AB7;
  v10 = -912648571 * v5;
  v8 = (v4 + 1318477030) ^ (912648571 * v5);
  v9 = v7;
  (*(v3 + 8 * (v4 ^ 0x1346)))(&v8);
  (*(v3 + 8 * (v4 ^ 0x1305)))(v0, v1, 0, *(v2 + 8 * (v4 - 2697)), v7, 8);
  return 0;
}

uint64_t sub_196353D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38)
{
  v45 = (v39 - 1970743479) & 0x75772BE4;
  if (a16 >= 0x40)
  {
    v46 = 64;
  }

  else
  {
    v46 = a16;
  }

  v47 = a38;
  v48 = 1311869473 * ((-2 - ((~(v44 - 184) | 0xBC1C9A3E2970E4CBLL) + ((v44 - 184) | 0x43E365C1D68F1B34))) ^ 0xFB34D6BC29FFE67);
  *(v44 - 144) = (v41 - 1765493338 + v45 + 647) ^ v48;
  *(v44 - 176) = a19 - v48;
  *(v44 - 184) = v48 - 1277784420 + v39;
  *(v44 - 136) = v47 ^ v48;
  *(v44 - 128) = v46 ^ v48;
  *(v44 - 168) = a16 - v48;
  *(v44 - 160) = &STACK[0x2E0];
  *(v44 - 152) = v42 + v48;
  (*(v40 + 8 * (v39 + 4465)))(v44 - 184);
  (*(v40 + 8 * (v39 + 4338)))(a12, v38, 0, (&off_1F0B1A0C0)[v39 ^ 0x8B6], &STACK[0x2E0], 50);
  v49 = 891395573 * ((v44 - 184 - 2 * ((v44 - 184) & 0xCE9180F8) - 829325064) ^ 0xF4BC9F43);
  *(v44 - 184) = 0;
  *(v44 - 176) = &a27;
  *(v44 - 144) = ((((v39 + 73) & 0xE4) + 1) ^ a9) - -11 * ((v44 + 72 - 2 * ((v44 + 72) & 0xF8) - 8) ^ 0x43);
  *(v44 - 136) = &a30;
  *(v44 - 128) = &a21;
  *(v44 - 168) = a19;
  *(v44 - 160) = &a36;
  *(v44 - 120) = v42;
  *(v44 - 152) = &a38;
  *(v44 - 112) = v49 + v45 - 727;
  *(v44 - 108) = ((a16 ^ 0x6F7F7F3F) - 1750075936 + ((a16 << (((v39 + 73) & 0xE4) + 29)) & 0xDEFEFE7E)) ^ v49;
  v50 = (*(v40 + 8 * (v45 ^ 0x11E6)))(v44 - 184);
  return (*(v40 + 8 * ((11 * (*v43 != 0)) | v45)))(v50);
}

uint64_t sub_196353FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + a2 - 16);
  v6 = *(v3 + a2 - 16);
  *(v5 - 1) = *(v3 + a2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((101 * (((((((v2 - 1591) | 0x612) ^ 0xFFFFF152) & a2) == 32) ^ (((v2 - 55) | 0x12) - 1)) & 1)) ^ ((v2 - 1591) | 0x612))))();
}

uint64_t sub_196354078(uint64_t result)
{
  v1 = (&off_1F0B1A0C0)[(*(result + 16) - 346387183 * ((-2 - ((result | 0x1A790747) + (~result | 0xE586F8B8))) ^ 0x60EE2D68) + 1626119114)];
  if (*result)
  {
    v1 = (&off_1F0B1A0C0)[(*(result + 16) - 346387183 * ((-2 - ((result | 0x1A790747) + (~result | 0xE586F8B8))) ^ 0x60EE2D68) + 1626119089)] - 8;
  }

  *(result + 8) = v1;
  return result;
}

void NfcRKVnxuKZy04KWbdFu71Ou()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16728 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC06F0[byte_196EC02C0[(91 * (dword_1EAF16728 ^ 0x30 ^ dword_1EAF16720))] ^ 0xCA]) - 28];
  v1 = *(v0 - 4);
  v2 = off_1F0B1A830;
  v3 = off_1F0B1A3F0 - 12;
  v4 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + v1) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 + v1) ^ 0x30))) + 45];
  v5 = &v9[*(v4 - 4) - v1];
  v6 = 636859739 * v5 + 0x1D38D65F7E9650D0;
  v7 = 636859739 * (v5 ^ 0xE2C729A08169AF30);
  *(v0 - 4) = v6;
  *(v4 - 4) = v7;
  v8 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16728 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * (dword_1EAF16728 ^ 0x30 ^ dword_1EAF16720))] ^ 0x1D]) - 102] - 8;
  (*&v8[8 * ((91 * ((v7 - *(v0 - 1)) ^ 0x30)) ^ v3[v2[(91 * ((v7 - *(v0 - 1)) ^ 0x30))] ^ 0x75]) + 52856])(v10, 0, 192);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_196354608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t *a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, unsigned int a34)
{
  v43 = 1033 * (v39 ^ 0x7D9);
  if (v38 >= 0x40)
  {
    v44 = 64;
  }

  else
  {
    v44 = v38;
  }

  v45 = 566710099 * (((&a24 | 0xA50CB39206388272) - (&a24 & 0xA50CB39206388272)) ^ 0x5A845D408A7DDAFELL);
  a28 = (v45 + v36);
  LODWORD(a25) = v44 - v45;
  a26 = v45 + v37;
  a27 = &a15;
  LODWORD(a24) = v45 + v39 + 576631482;
  HIDWORD(a24) = v38 - v45;
  (*(v42 + 8 * (v39 + 4656)))(&a24);
  (*(v42 + 8 * (v39 + 4556)))(a10, v40, 0, *(v41 + 8 * (v39 ^ 0x7CFu)), &a15, 34);
  v46 = 891395573 * (((~&a24 | 0xC238D4A6) + (&a24 | 0x3DC72B59)) ^ 0x7EA34E3);
  a24 = 0;
  a25 = 0;
  a30 = 0;
  a31 = 0;
  a32 = v37;
  a29 = -69 - -11 * (((~&a24 | 0xA6) + (&a24 | 0x59)) ^ 0xE3);
  a26 = v36;
  a27 = 0;
  a33 = v46 + v43 - 2848;
  a34 = ((v38 ^ 0x672F7F9F) - 1610615424 + ((v38 << (v43 - 44)) & 0xCE5EFF3E)) ^ v46;
  a28 = &a13;
  v47 = (*(v42 + 8 * (v43 + 1493)))(&a24);
  *v34 = a13;
  return (*(v42 + 8 * (((*v35 != 0) * (((v43 - 532) | 0x86) - 4655)) ^ v43)))(v47);
}

uint64_t sub_1963547E0()
{
  v5 = v0 + 1395;
  v7 = (v1 ^ v3) < 8 || v2 < (v5 ^ 0x169AuLL);
  return (*(v4 + 8 * ((124 * (((v0 - 72) ^ v7) & 1)) ^ v5)))();
}

uint64_t sub_196354834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v12 + 8 * (v14 + 1916)))(a12, a11);
  *v13 = v15;
  return (*(v12 + 8 * ((((v14 - 1115756119) & 0x42810EDA ^ (v14 - 1975133015) & 0x75BA17DB ^ 0x9FF) * (v15 == 0)) ^ v14)))();
}

uint64_t sub_196354928@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 - 16 + v4);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v3 + 8 * ((44 * ((((1927 * (v2 ^ 0xF20)) ^ (((1927 * (v2 ^ 0xF20) - 3886) & v1) == 32)) & 1) == 0)) ^ (1927 * (v2 ^ 0xF20)))))();
}

uint64_t sub_196354990()
{
  v4 = 912648571 * ((&v8 - 2134364944 - 2 * (&v8 & 0x80C82CF0)) ^ 0x5C0560C5);
  v10 = -42847 - v4;
  v8 = (v1 + 1318475983) ^ v4;
  v9 = v7;
  (*(v3 + 8 * (v1 + 2855)))(&v8);
  result = (*(v3 + 8 * (v1 ^ 0x176C)))(v6, v2, 0, (&off_1F0B1A0C0)[v1 - 3556], v7, 8);
  *v0 = -42847;
  return result;
}

uint64_t sub_196354A80@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 - 789) - 895) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((2090 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_196354D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25, uint64_t a26, uint64_t a27)
{
  v31 = v28 + v27 - 62;
  *(v29 + 8) = a25;
  *(v29 + 12) = 0;
  v32 = (*(v30 + 8 * (v31 ^ 0x3FE9F814)))(*(&(&off_1F0B1A0C0)[a5 - 10])[v31], a27, a25);
  return (*(v30 + 8 * ((v31 - 1072292060) ^ 0xC02)))(v32);
}

uint64_t sub_196354EBC@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0xDEC)))();
  *v1 = 0;
  return sub_196354EE4(v3);
}

uint64_t sub_196354EE4()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v3 + 8 * (v2 + 1482)))(v0);
  return v1(v4);
}

uint64_t sub_196354FB4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(v1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((4157 * ((((v3 - 1987) | 0x1010u) ^ 0x11B5) == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_196355014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = *(v37 + 8 * (v38 + v35 - 922));
  v40 = &a35 + ((((8 * v36) ^ 0xA3E3FF2506507FA8) + 16) ^ 0xDDFBF5FDFFAAFD9DLL) + ((2 * (((8 * v36) ^ 0xA3E3FF2506507FA8) + 16)) & 0xBBF7EBFBFF55FB30) + a4 + 0x2F1FBE13DBDDC3E8;
  *v40 = a30 ^ 0x45;
  v40[1] = a29 ^ 0xCE;
  v40[2] = a28 ^ 0x4C;
  v40[3] = a27 ^ 0xAB;
  v40[4] = a26 ^ 0x84;
  v40[5] = a25 ^ 0xC5;
  v40[6] = a24 ^ 0x62;
  v40[7] = a23 ^ 0x75;
  return v39(v39, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_196355244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned int a26)
{
  a26 = (v28 - 529768843) ^ (1468321087 * ((&a25 - 1229091944 - 2 * (&a25 & 0xB6BD8B98)) ^ 0x6252CAF6));
  a25 = v26;
  (*(v29 + 8 * (v28 ^ 0x6DC2231E)))(&a25);
  v30 = (*(v29 + 8 * (v28 ^ 0x6DC22337)))(**(v27 + 8 * (v28 & 0x9021C0A9)), *(v27 + 8 * (v28 ^ 0x6DC23A6E)) - 4, a17);
  v31 = ((2 * v30) & 0xDB84754E) + (v30 ^ 0x6DC23AA7);
  a26 = (v28 - 1892029145) ^ (912648571 * ((&a25 + 2086711324 - 2 * (&a25 & 0x7C60B01C)) ^ 0xA0ADFC29));
  a25 = v26;
  v32 = (*(v29 + 8 * (v28 - 1841438928)))(&a25);
  return (*(v29 + 8 * (v28 ^ 0x6DC2393C ^ (1970 * (((v28 + 7) ^ (((v31 - v28) | (v28 - v31)) >> (v28 + 120))) & 1)))))(v32);
}

void sub_196355674(uint64_t a1)
{
  v1 = *a1 - 1468321087 * ((-2 - ((~a1 | 0x180AF936) + (a1 | 0xE7F506C9))) ^ 0xCCE5B858);
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x6DF] - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 39064])(*(a1 + 8), @"gaX8gT7e") == 1) * ((v1 - 803) ^ 0x394)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v41 = (*(v40 + 8 * (v38 + 3974)))(a38, a37);
  *v39 = v41;
  return (*(v40 + 8 * (((v41 == 0) * (v38 + ((v38 - 1434631165) & 0x5582B7FE) + 458)) ^ v38)))();
}

uint64_t sub_1963558E8@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(v1 + v2 - 16);
  *(v5 - 1) = *(v1 + v2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * (((((32 - (v2 & 0xFFFFFFE0)) | ((v2 & 0xFFFFFFE0) - 32)) >= 0) * (108 * (v3 ^ 0x16C1) + 1758)) ^ v3 ^ 0x1DB7)))();
}

uint64_t sub_19635595C@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * ((31 * (v7 != v3 + v5)) ^ v2)))();
}

uint64_t sub_1963559FC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21)
{
  v23 = a1 + 841;
  v24 = (a1 + 8560328) | 0x10490600;
  a20 = a1 + 841 - 891395573 * (((&a20 | 0x92EFC082) - (&a20 & 0x92EFC082)) ^ 0xA8C2DF39) - 1042;
  v25 = (*(v22 + 8 * ((a1 + 841) ^ 0xCF2u)))(&a20);
  return (*(v22 + 8 * (((a21 == (v23 ^ 0x10CBA381) + 881778253) * (v24 ^ (v21 + 15))) ^ v23)))(v25);
}

uint64_t sub_196355BAC@<X0>(uint64_t a1@<X4>, unint64_t a2@<X8>)
{
  v10 = *(v5 + 40);
  *(v4 + 12) = v3 + v2 + ((v6 - 1679755967) ^ 0x2DDD337B);
  *(v8 - 200) = v4;
  return (*(v7 + 8 * ((107 * (a2 <= v10 + (((((v6 - 1679755967) ^ 0x9BE0F1BD) - 1675) | v9) ^ 0xC9C772C63FB37819) + a1)) ^ (v6 - 1679755967) ^ 0x9BE0F1BD)))();
}

uint64_t sub_196355C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, char **, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(v19 + 8 * (v15 + 4504)))(*v16);
  *v16 = v18;
  *(v16 + 8) = v17;
  return a12(184702973, 2147482772, 1867, &off_1F0B1A0C0, 4674, -6844, a15, a14);
}

uint64_t sub_196355CC0(uint64_t a1, int a2)
{
  v6 = (v3 - 32);
  v7 = (a1 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v4 == 32) * (v2 + 868)) ^ a2)))();
}

uint64_t sub_196355DC0()
{
  v5 = (*(v3 + 8 * (v0 ^ 0x1397u)))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (((v0 + 393707496) ^ 0x17778521) + (v0 ^ 0x9F5))) ^ v0)))();
}

uint64_t sub_196355E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v16 + 12) = v15 + v14 - 1237465637;
  v19 = (*(v18 + 8 * (v17 ^ 0x1630)))((v14 - 1237465637), 3886098504);
  *a11 = v19;
  return (*(v18 + 8 * (((((v17 ^ (v19 == 0)) & 1) == 0) * (v17 + 4016)) ^ v17)))(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_196355F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *(v44 - 152) = a21;
  *(v44 - 151) = BYTE4(a20);
  *(v44 - 150) = a20;
  *(v44 - 149) = BYTE4(a19);
  *(v44 - 148) = a19;
  *(v44 - 147) = BYTE4(a18);
  *(v44 - 146) = a18;
  *(v44 - 145) = BYTE4(a17);
  return (*(v43 + 8 * ((((*(*(v44 - 216) + 12) ^ 0x5CFFFEFEBDF8FFFFLL) + 8 + ((2 * *(*(v44 - 216) + 12)) & 0x17BF1FFFEuLL) - 0x5CFFFEFEBDF8FFFFLL < 0xFFFFFFFB) * (((v42 - 44) | 1) + 3129)) ^ (v42 + 615))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v44 - 152, 8, a38, a39, *(v44 - 216) + 12, a41, a42);
}

uint64_t sub_196356100@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  HIDWORD(v17) = v3 + 273699316;
  HIDWORD(a3) = (v3 + 73901356) ^ 0x49C23E0C;
  LODWORD(v17) = v3 + 73901356;
  v6 = v4 + (a1 & 0xEF5EFEF9) + 2301;
  v7 = v4 + (a1 & 0xEF5EFEF9) + 2394;
  v8 = (*(v5 + 8 * ((a1 & 0xEF5EFEF9) - 1163557675)))(16, 3886098504);
  return (*(v5 + 8 * (((v8 == 0) * (v6 ^ 0xD2C)) ^ v7)))(v8, v9, v10, v11, v12, v13, v14, v15, a2, a3, v17);
}

uint64_t sub_1963561F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (*(v14 + 8 * (v11 ^ 0x1C93)))(a11, v12);
  *v15 = v16;
  return (*(v14 + 8 * ((((v16 == 0) ^ (v11 - v13 + 1)) & 1 | (32 * (((v16 == 0) ^ (v11 - v13 + 1)) & 1))) ^ v11)))();
}

uint64_t sub_196356244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  v23 = 912648571 * (((&a15 | 0x7175A6FB0BA124E6) - (&a15 & 0x7175A6FB0BA124E6)) ^ 0x31D6B473D76C68D3);
  LODWORD(a16) = (v22 - 715637506) ^ v23;
  a15 = v17 - v23;
  a17 = &a11;
  (*(v20 + 8 * (v22 + 4730)))(&a15);
  (*(v20 + 8 * (v22 + 4717)))(a9, v18, 0, *(v19 + 8 * (v22 - 1797)) - 8, &a11, 12);
  HIDWORD(a15) = (v22 ^ 0x5BD) + 1427277979 * (&a15 ^ 0x50514D68) + 5265;
  a16 = v17;
  v24 = (*(v20 + 8 * (v22 ^ 0x1D16)))(&a15);
  return (*(v20 + 8 * (((*v21 == 0) * (((v22 ^ 0x5BA) + 5755) ^ v22 ^ 0x5BA)) ^ v22 ^ 0x5BD)))(v24);
}

uint64_t sub_196356634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, int a28, uint64_t a29, char *a30, char *a31, int a32, int a33, int a34)
{
  (*(v35 + 8 * (v36 + 5244)))(v34);
  v38 = *a16;
  v39 = *(v37 + 3) + 599664785 - ((*(v37 + 3) << (((v36 - 71) | 0x90) ^ 0x98)) & 0x477C5122);
  v40 = 1311869473 * (&a28 ^ 0xEBEF1AAC);
  a29 = *v37;
  a30 = &a22;
  a31 = &a26;
  a28 = v39 ^ v40;
  a32 = v40 + v36 + 789 + 3487;
  a34 = 563295754 - v40 + 622816387 * v38 + 1433;
  (*(v35 + 8 * (v36 + 5284)))(&a28);
  v41 = a33;
  v42 = (*(v35 + 8 * ((v36 + 789) ^ 0x11AF)))(v34);
  return (*(v35 + 8 * (((v41 == ((((v36 - 1351) | 0x590) + 2806) ^ 0x60DCB90F)) * (((v36 - 1351) | 0x590) - 449)) ^ ((v36 - 1351) | 0x590))))(v42);
}

uint64_t sub_19635685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _DWORD *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, __int16 a34, char a35)
{
  v40 = 425 * (v35 ^ 0xD98);
  (*(v38 + 8 * (v35 + 3129)))(v37);
  v41 = 1311869473 * ((2 * ((v39 - 152) & 0x186A0708) - (v39 - 152) + 1737881843) ^ 0x8C7AE25F);
  v42 = *v36;
  v43 = v40 + *(v36 + 3) - ((2 * *(v36 + 3)) & 0x477C5122) + 599660110;
  *(v39 - 112) = -1311869473 * ((2 * ((v39 - 152) & 0x186A0708) - (v39 - 152) + 1737881843) ^ 0x8C7AE25F) + 622816387 * *a20 + 563297187;
  *(v39 - 120) = v41 + v35 + 2161;
  *(v39 - 152) = v43 ^ v41;
  v44 = (v39 - 152);
  v44[1] = v42;
  v44[2] = &a35;
  v44[3] = &a33;
  (*(v38 + 8 * (v35 ^ 0x1467)))(v39 - 152);
  v45 = *(v39 - 116);
  v46 = (*(v38 + 8 * (v35 + 3127)))(v37);
  return (*(v38 + 8 * (((v45 == ((v40 + 2080336248) & 0xCFD1E7ED ^ 0x2B0DCA29)) * (v40 - 4242)) ^ v40)))(v46);
}

uint64_t sub_196356A88()
{
  *v4 = v5;
  *(v7 - 152) = (v2 + 1311675701) ^ (1468321087 * (((v0 | 0xC817E3C9) - (v0 & 0xC817E3C9)) ^ 0x1CF8A2A7));
  (*(v1 + 8 * (v2 ^ 0x1A5E)))(v7 - 160);
  v8 = (*(v1 + 8 * (v2 ^ 0x1A77)))(**(v3 + 8 * (v2 - 838)), *(v3 + 8 * (v2 ^ 0x32E)) - 4, v6);
  v9 = ((2 * v8) & 0xDBCEFCEE) + (v8 ^ 0xEDE77E77);
  *(v7 - 152) = (v2 - 50584601) ^ (912648571 * ((v0 - 1704134655 - 2 * (v0 & 0x9A6CF801)) ^ 0x46A1B434));
  *v4 = v5;
  v10 = (*(v1 + 8 * (v2 ^ 0x1A30)))(v7 - 160);
  return (*(v1 + 8 * ((31 * (v9 == (v2 ^ 0x8B9CCE45) + 1649062101)) ^ v2)))(v10);
}

uint64_t sub_196356C94@<X0>(uint64_t a1@<X8>)
{
  v4 = 2024068013 - 566710099 * ((2 * (&v4 & 0x708FD448) - &v4 + 259009462) ^ 0x8335733A);
  v5 = a1;
  (*(v2 + 52976))(&v4);
  return (v1 - 1237465637);
}

uint64_t sub_196356D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  v26 = 2 * (v23 ^ 0xDDC);
  *(v24 + 8) = a23;
  *(v24 + 12) = 0;
  v27 = v26 - 1858;
  (*(v25 + 8 * (v26 + 4147)))(*(&off_1F0B1A0C0)[v26 ^ 0x9A5], a22, a23);
  return (*(v25 + 8 * (((((v27 + 1792920918) & 0xDFFAFE57) == 0x4AD8CE16) * (((v27 - 891491210) & 0x7FFBDF37) - 1255719073)) ^ v27)))(0, 2367137852, 214723087);
}

uint64_t sub_196356F54(uint64_t result)
{
  v1 = *(result + 32);
  v2 = 566710099 * (((result | 0xF9A4EEAA7EF9F3F8) - result + (result & 0x65B115581060C07)) ^ 0x62C0078F2BCAB74);
  v3 = *(result + 52) ^ v2;
  v4 = *(result + 16) + v2;
  v5 = *(result + 44) ^ v2;
  v6 = *result - v2;
  v7 = *(result + 40) ^ v2;
  v8 = *(result + 48) - v2;
  v9 = *(result + 56) + v2;
  LODWORD(v2) = *(result + 8) ^ v2;
  *v1 = 67110914;
  *(v1 + 4) = v3;
  *(v1 + 8) = 2048;
  *(v1 + 10) = v4;
  *(v1 + 18) = 1040;
  *(v1 + 20) = v5;
  *(v1 + 24) = 2096;
  *(v1 + 26) = v6;
  *(v1 + 34) = 1024;
  *(v1 + 36) = v7;
  *(v1 + 40) = 1040;
  *(v1 + 42) = v8;
  *(v1 + 46) = 2096;
  *(v1 + 48) = v9;
  *(v1 + 56) = 1024;
  *(v1 + 58) = v2;
  return result;
}

uint64_t sub_196357044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v14 = (*(v8 + 12) ^ v12) + (a7 ^ a8 ^ v11) + (v13 & (2 * *(v8 + 12)));
  v16 = v14 < 0x89ECB12D || v14 > *(v8 + 8) + 2313990445u;
  return (*(v10 + 8 * ((v16 * ((a7 + 1716) ^ v9)) ^ a7)))();
}

uint64_t sub_1963570A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v49 - 136) = (v46 + 1311672058) ^ (1468321087 * (((v45 | 0xD7320609) - (v45 & 0xD7320609)) ^ 0x3DD4767));
  *(v49 - 144) = v44;
  (*(v47 + 8 * (v46 ^ 0xB9B)))(v49 - 144);
  v50 = (*(v47 + 8 * (v46 + 1902)))(**(v48 + 8 * (v46 ^ 0x1283)), *(v48 + 8 * (v46 - 4441)) - 4, a44);
  v51 = ((v50 << (v46 - 33)) & 0x9BF5756A) + (((v46 - 3807) | 0xC1C) ^ 0x4DFAB5EA ^ v50);
  *(v49 - 136) = (v46 - 50588244) ^ (912648571 * ((~(v45 | 0xA65C5B72) + (v45 & 0xA65C5B72)) ^ 0x856EE8B8));
  *(v49 - 144) = v44;
  v52 = (*(v47 + 8 * (v46 ^ 0xBF5)))(v49 - 144);
  return (*(v47 + 8 * ((2689 * (v51 == 1308277429)) ^ v46)))(v52);
}

uint64_t sub_196357224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v35 = *a33;
  v36 = a29 - ((2 * a29) & 0x75FC608A) + 989737029;
  v37 = ((2 * *a27) & 0xFF77FEFE) + (*a27 ^ 0xFFBBFF7F) + 4456577;
  *(*a33 + v37) = ((v33 ^ 0xB2) + 65) ^ HIBYTE(v36);
  *(v35 + v37 + 1) = BYTE2(v36) ^ 0xFE;
  *(v35 + v37 + 2) = BYTE1(v36) ^ 0x30;
  *(v35 + v37 + 3) = v36 ^ 0x45;
  v38 = (*a27 + 4);
  *a27 = v38;
  return (*(v34 + 8 * ((461 * (a24 > *a33 + (((v33 ^ 0x16B2) + 777494724) & 0xD1A85AEF) - 181 - 0x36388D39C04C9635 + (v38 ^ 0x9DFFF7FBE8D5FBFFLL) - 0x67C76AC2288977C2 + ((2 * v38) & 0x1D1ABF7FELL))) ^ v33 ^ 0x16B2)))(*a33, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_196357424(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 891395573 * ((-2 - ((a1 ^ 0x74082000 | 0x88A7C6F6) + (a1 ^ 0x230442 | 0x77583909))) ^ 0xB1F9C406);
  v3[0] = v1 - 891395573 * (((v3 | 0x1EE50967) + (~v3 | 0xE11AF698)) ^ 0x24C816DD) + 2107;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x88C] - 8;
  (*&v2[8 * v1 + 34808])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196357674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(v20 + 8 * (v15 + 5130)))(*v16);
  *v16 = v18;
  *(v16 + 8) = v17;
  return v19(707564719, 3587407335, -6243, 7253, a15, a14, a13);
}

uint64_t sub_196357798@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 1;
  *(a1 + v7 + v1) = *(v6 + v7);
  return (*(v5 + 8 * (((v7 == (v3 + 15) - 802) * v4) ^ v3)))();
}

uint64_t sub_1963577CC@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 ^ 0x9EBu) - 2565) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((4938 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_196357820(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x831)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * ((1022 * (((((v1 ^ 0x1FB1) - 2156) ^ (v4 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_1963578B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 - 4167) | 0x812u) ^ 0xFFFFFFFFFFFFF4EDLL) + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v3 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((175 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v4 - 2045))))();
}

uint64_t sub_19635794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, char *a17)
{
  v23 = 912648571 * (((&a15 | 0x73DF3B1D5D37BF0) - (&a15 & 0x73DF3B1D5D37BF0)) ^ 0x479EE139091E37C5);
  a15 = a9 - v23;
  a16 = (v22 - 715638411) ^ v23;
  a17 = &a13;
  (*(v20 + 8 * (v22 ^ 0x1371u)))(&a15);
  v24 = (*(v20 + 8 * (v22 + 3812)))(v17, v18, 0, *(v19 + 8 * (v22 ^ 0xACFu)) - 8, &a13, 12);
  return (*(v20 + 8 * (((*v21 == 0) * (v22 - 23 + ((v22 - 1612782359) & 0x1AFF) + 2479)) ^ v22)))(v24);
}

uint64_t sub_196357C64()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2();
}

uint64_t sub_196357CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  v31 = (v26 + 52270795) & 0xFCE27FBF;
  *(v27 + 8) = a26;
  v32 = (*(v29 + 8 * (v31 ^ 0xECA)))(**(v30 + 8 * (v31 - 5896)), a23, a26);
  return (*(v29 + 8 * (((((v31 - 2100) ^ (v28 - 1375)) == 1237465637) * (v31 - 4954)) ^ (v31 - 4869))))(v32);
}

uint64_t sub_196357DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 16) = *(v2 + 16);
  return 0;
}

uint64_t sub_196357E4C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 26;
  v11 = a1 - v8 - 992113491;
  v12 = (*(v9 + 8 * (a1 - v8 - 992113334)))(16, 3886098504);
  LODWORD(a6) = 1237422985;
  return (*(v9 + 8 * ((121 * ((v10 ^ (v12 == 0)) & 1)) ^ v11)))(v12, v13, v14, v15, v16, v17, v18, v19, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_196357EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = (*(v16 + 52864))(v17, a14);
  *v15 = v18;
  return (*(v16 + 8 * ((1012 * (v18 == 0)) ^ v14)))();
}

uint64_t sub_196357EE4@<X0>(int a1@<W0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v6 = *(a2 + v4 - 1 - 31);
  v7 = a3 + v3 + v4 - 1;
  *(v7 - 15) = *(a2 + v4 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((22 * (((38 * (a1 ^ 0x12B1u)) ^ 0x1482) != ((38 * (a1 ^ 0x12B1) - 5314) & v4))) ^ (38 * (a1 ^ 0x12B1)))))();
}

uint64_t sub_1963580C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = v10 + 8;
  *(a1 + ((v13 - 2560) ^ v15) + v9 + v8) = *(v11 + ((v13 - 2560) ^ v15) + v9);
  return (*(v14 + 8 * (((a2 == v15) * a8) ^ v12)))();
}

uint64_t sub_196358150@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 12) ^ 0xB2F1FB7DEB5F7B55) + ((2 * *(a1 + 12)) & 0x1D6BEF6AALL) + 0x4D0E0482E9132D67;
  v5 = v3 >= 0xD472A8B4 && v3 <= *(a1 + 8) + 3564284084u;
  return (*(v2 + 8 * ((v5 * (((v1 - 841853852) ^ 0xCDD2530E) - 3195)) ^ v1)))();
}

uint64_t sub_196358380@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0x1196u) - 5804) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((8082 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1963583E0@<X0>(uint64_t a1@<X8>)
{
  v4 = (a1 | ((a1 < 0x49C23A25) << 32)) + *(v2 + 12) + ((v1 - 852) ^ 0xFFFFFFFFC389A490);
  v6 = v4 >= 0xD4BEB57 && v4 <= *(v2 + 8) + 223079255;
  return (*(v3 + 8 * ((v6 * ((v1 + 724888040) ^ 0x2B35032A)) ^ v1)))();
}

uint64_t sub_1963584F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *a2 = 1;
  *(a2 + 8) = a1;
  *(a2 + 16) = *(v2 + 16);
  return (v4 + v3 + 3558 + 2138);
}

uint64_t sub_196358568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(v29) = (*(a12 + 8) - ((*(a12 + 8) << (v18 - 22)) & 0xD8EE3B4C) - 327737946) ^ 0xEC771DA6;
  HIDWORD(v34) = 1237422985;
  LODWORD(v31) = v18 - 108;
  HIDWORD(v31) = v18 - 5825;
  LODWORD(v33) = v18 - 4445;
  HIDWORD(v32) = v18 + 2061710555;
  LODWORD(v32) = v18 - 4919;
  HIDWORD(v30) = v18 - 5771;
  LODWORD(v30) = v18 - 5769;
  HIDWORD(a13) = v18 - 5723;
  LODWORD(v34) = v18 - 5696;
  HIDWORD(v33) = v18 - 5699;
  HIDWORD(v29) = v18 ^ 0x171F;
  v20 = (*(v19 + 8 * ((v18 - 4971) ^ 0x1A62)))(16, 3886098504);
  return (*(v19 + 8 * (((v20 != 0) * (((v18 - 1731) | 0x300) - 4931)) ^ (v18 - 4971))))(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, v32, v33, v34, a17, a18);
}

uint64_t sub_19635864C()
{
  v4 = 912648571 * (&v8 ^ 0xDCCD4C35);
  v10 = -42847 - v4;
  v9 = v7;
  v8 = (v1 + 1318478241) ^ v4;
  (*(v3 + 8 * (v1 ^ 0x1C19)))(&v8);
  (*(v3 + 8 * (v1 + 5046)))(v6, v0, 0, *(v2 + 8 * (v1 ^ 0x5D2)) - 12, v7, 8);
  return 4294924449;
}

uint64_t sub_196358720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, int a23, char *a24, uint64_t a25, unint64_t a26, int a27, uint64_t a28, int a29, unint64_t a30, uint64_t a31)
{
  v38 = (v33 - 2014095439) & 0x3B6F;
  a22 = v33 + 1384597421 * ((2 * (&a22 & 0x5542E4A0) - &a22 - 1430447265) ^ 0x48734226) - 1501087388;
  a24 = &a15;
  (*(v37 + 8 * (v33 + 5309)))(&a22);
  (*(v37 + 8 * (v33 ^ 0x1C80u)))(v34, v35, 0, *(v36 + 8 * (v33 - 1250)) - 12, &a15, 2);
  v39 = 583883621 * (((&a22 | 0x11F63E75B49638B0) - (&a22 | 0xEE09C18A4B69C74FLL) - 0x11F63E75B49638B1) ^ 0xEA5D48CF15A5E41FLL);
  a26 = v39 - 0x5ECD6407869BE81ELL;
  a30 = 0x64549B00DF4781BBLL - v39;
  a31 = v31;
  a28 = v32;
  a22 = v39 ^ 0x55395B31;
  a23 = 1429822258 - v39;
  a27 = (v38 + 230) ^ v39;
  a29 = 800366805 - v39;
  a24 = 0;
  a25 = a14;
  v40 = (*(v37 + 8 * (v38 + 439)))(&a22);
  if (v32)
  {
    v41 = a14 == 0;
  }

  else
  {
    v41 = 1;
  }

  v43 = v41 || v31 == 0;
  return (*(v37 + 8 * ((((v38 + 134737847) ^ 0x8080357 ^ ((v38 + 134737847) | 0x804450C6) ^ 0x884C53B1) * v43) ^ v38)))(v40);
}

uint64_t sub_196358AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v8 += v11 - 2051803671 + (v7 ^ 0x1815);
  *(v10 - 240) = v9;
  return v9(a1, a2, a3, a4, a5, a6, a7, 4294962070);
}

uint64_t sub_196358B54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    v18 = v17 == a4;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  return (*(v16 + 8 * ((v19 | (2 * v19)) ^ (v15 - 1163558236))))();
}

uint64_t sub_196358B88()
{
  if (*v15 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v15;
  }

  v9 = *v14;
  v10 = *v6;
  v11 = 1311869473 * ((((v7 - 200) | 0xFEC1CEE10FD92C3FLL) - ((v7 - 200) & 0xFEC1CEE10FD92C3FLL)) ^ 0x4D6E19B4E4363693);
  *(v7 - 160) = *v15 ^ v11;
  *(v7 - 200) = v1 - v11 + v5 + v3;
  *(v7 - 196) = (v3 + 2118006044) ^ v11;
  *(v7 - 184) = v9 ^ v11;
  *(v7 - 176) = v16;
  *(v7 - 168) = v10 + v11;
  *(v7 - 192) = v8 - v11;
  (*(v2 + 8 * (v3 + 3941)))(v7 - 200);
  (*(v2 + 8 * (v3 ^ 0x13CAu)))(v13, v0, 0, *(v4 + 8 * (v3 - 2429)) - 8, v16, 40);
  return (v1 + v5 + 2658);
}

uint64_t sub_196358D9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t *a26)
{
  v28 = v26 - 127;
  v29 = *a26;
  v30 = a22 + 989737029 - ((2 * a22) & 0x75FC608A);
  v31 = ((2 * *a24) & 0xD574BEFE) + (*a24 ^ 0xEABA5F7F) + 356884609;
  *(*a26 + v31) = (v30 >> (v28 ^ (a1 - 8))) ^ 0x3A;
  *(v29 + v31 + 1) = BYTE2(v30) ^ 0xFE;
  *(v29 + v31 + 2) = BYTE1(v30) ^ 0x30;
  *(v29 + v31 + 3) = (a22 + 69 - ((2 * a22) & 0x8A)) ^ 0x45;
  *a24 += 4;
  return v27();
}

uint64_t sub_196359004@<X0>(uint64_t a1@<X8>)
{
  v4 = *a1 + v2 == 0;
  *(a1 + 12) = ((v1 - 912143055) & 0x365E2E6B ^ 0x621) + v2;
  v5 = v4;
  return (*(v3 + 8 * ((23 * v5) ^ (v1 - 357))))();
}

uint64_t sub_196359064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v7 ^ 0x5F9D0ADADDFF2E77) + ((v7 << ((v6 - 21) ^ 0x29)) & 0x1BBFE5CEELL) - 0x5F9D0ADA208F135DLL;
  v11 = v9 < 0xBD701B16 || v9 > (v6 ^ 0xBD70192BLL) + *(a6 + 8);
  return (*(v8 + 8 * ((3355 * v11) ^ v6)))();
}

uint64_t sub_1963590FC@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * ((v4 + 3127) ^ 0x1E70)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_196359188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v37 = 599 * (v29 ^ 0x137F);
  if (v34 >= 0x40)
  {
    v38 = 64;
  }

  else
  {
    v38 = v34;
  }

  if (v33 >= 0x40)
  {
    v39 = 64;
  }

  else
  {
    v39 = v33;
  }

  if (a20 >= 0x40)
  {
    v40 = 64;
  }

  else
  {
    v40 = a20;
  }

  v41 = 912648571 * ((((v36 - 200) | 0x1DBBDC05549A24E3) - ((v36 - 200) & 0x1DBBDC05549A24E3)) ^ 0x5D18CE8D885768D6);
  *(v36 - 176) = v28 - v41;
  *(v36 - 152) = v41 ^ a17;
  *(v36 - 164) = v39 - v41;
  *(v36 - 160) = v40 - v41;
  *(v36 - 168) = a20 - v41;
  *(v36 - 192) = &a28;
  *(v36 - 184) = v41 + a15;
  *(v36 - 128) = a16 - v41;
  *(v36 - 120) = a18 - v41;
  *(v36 - 140) = v41 + v29 + 1036691703;
  *(v36 - 136) = v41 ^ v35;
  *(v36 - 144) = v41 + v34;
  *(v36 - 200) = v38 - v41;
  *(v36 - 196) = v41 ^ v33;
  (*(v30 + 8 * (v29 + 1663)))(v36 - 200);
  (*(v30 + 8 * (v29 + 1588)))(a9, v31, 0, *(v32 + 8 * (v29 ^ 0x135Cu)) - 4, &a28, 94);
  v42 = 652747349 * ((((v36 - 200) | 0xBA4846072C5C616) - ((v36 - 200) | 0xF45B7B9F8D3A39E9) - 0xBA4846072C5C617) ^ 0x51122F9C3036F883);
  *(v36 - 104) = a16;
  *(v36 - 136) = 85 * ((((v36 + 56) | 0x16) - ((v36 + 56) | 0xE9) - 23) ^ 0x83) + 84;
  *(v36 - 184) = a13;
  *(v36 - 176) = a15;
  *(v36 - 112) = (v34 ^ 0xF4FFFF3F) + ((2 * v34) & 0xE9FFFE7E) + 805240770 + v42;
  *(v36 - 200) = a17;
  *(v36 - 192) = v42 + 1344803742;
  *(v36 - 188) = (v35 ^ 0xF8FA3BBE) - v42 + (v37 ^ 0x1E4D) + ((v35 << ((v37 - 114) ^ 0x4A)) & 0xF1F4777C) + 1462620144;
  *(v36 - 152) = a18;
  *(v36 - 144) = v42 ^ ((v28 ^ 0x29D0FF7FFFBAA3FFLL) - 0x20C06020F338034BLL + ((2 * v28) & 0x53A1FEFFFF7547FELL));
  *(v36 - 168) = v33 - ((2 * v33) & 0x11C96F4C) - v42 - 1998276698;
  *(v36 - 160) = (a20 ^ 0xFDFFFF95) + ((2 * a20) & 0xFBFFFF2A) - v42 + 654245740;
  *(v36 - 132) = v37 - v42 - 615;
  *(v36 - 128) = a12;
  *(v36 - 120) = a14;
  v43 = (*(v30 + 8 * (v37 ^ 0x3ADu)))(v36 - 200);
  if (a13)
  {
    v44 = a14 == 0;
  }

  else
  {
    v44 = 1;
  }

  v46 = v44 || a12 == 0;
  return (*(v30 + 8 * (v37 ^ (116 * v46))))(v43);
}

void sub_196359578(uint64_t a1)
{
  (*(v1 + 8 * (v2 + 3223)))(v3, @"o9YYYJ64ntzC", a1);
  (*(v1 + 8 * (v2 + 3182)))(a1);
  JUMPOUT(0x19635B058);
}

uint64_t sub_1963595A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = *(v9 - 180) + *(v7 + 12) + ((*(v9 - 180) < ((a7 - 4108) ^ 0x49C23A25u)) << 32) + 1073108624;
  v12 = v10 >= ((a7 - 4108) | 0xEEu) + 2310574023u && v10 <= *(v7 + 8) + 2310574261u;
  return (*(v8 + 8 * (((4 * v12) | (v12 << 6)) ^ a7)))();
}

uint64_t sub_19635963C()
{
  v3 = ((2 * *(v1 + 12)) & 0x1BF8F08D8) + ((((v0 + 71354827) | 0x3BA900C1u) - 0x2030A02060225D5DLL) ^ *(v1 + 12)) + 0x2030A021114A3E18;
  v5 = v3 < 0xF111C280 || v3 > *(v1 + 8) + 4044472960u;
  return (*(v2 + 8 * ((113 * v5) ^ v0)))();
}

uint64_t sub_196359700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v4 + 7 * (v3 ^ v5);
  *(a1 + v8 - 918 + v2) = *(a2 + v8 - 918);
  return (*(v6 + 8 * (((v8 == 918) * v7) ^ v3)))();
}

uint64_t sub_1963597B4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v5 + 32;
  v10 = (v7 ^ v9) + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 == v9) * a1) ^ v4)))();
}

uint64_t sub_1963597E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = (v26 ^ 0x6EF5CDFEE6D5FE7DLL) + (((v28 + v25 - 114) ^ 0x146373158) & (2 * v26)) - 0x6EF5CDFE926D449CLL;
  v31 = v29 < (v25 ^ (v28 + 46) ^ 0xDFF4747FuLL) || v29 > *(a25 + 8) + 1416149469;
  return (*(v27 + 8 * ((3514 * v31) ^ v25)))();
}

uint64_t sub_1963599C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v22 - 144) = v16 + 1384597421 * ((v22 + 1213340854 - 2 * ((v22 - 144) & 0x48521D46)) ^ 0xAA9C443F) - 1501087318;
  *(v22 - 136) = va;
  (*(v21 + 8 * (v16 ^ 0x1D07u)))(v22 - 144);
  v23 = (*(v21 + 8 * (v16 ^ 0x1D4Au)))(v20, v19, 0, (&off_1F0B1A0C0)[v16 ^ 0x451u] - 8, va, 2);
  if (v17)
  {
    v24 = v18 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  return (*(v21 + 8 * ((((v25 ^ ((v16 + 66) | 0x13)) & 1) * ((((v16 - 190) | 0x113) + 3696) ^ 0x13F0)) ^ ((v16 - 190) | 0x113))))(v23);
}

uint64_t sub_196359AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, uint64_t a22)
{
  v26 = (v22 - 408822056) & 0x185E2F7F;
  *(v23 + 8) = a20;
  *(v23 + 12) = 0;
  v27 = (*(v25 + 8 * (v26 ^ 0x16F5)))(*(&off_1F0B1A0C0)[v26 - 3865], a22, a20);
  return (*(v25 + 8 * (((v24 == 1237465637) * ((v26 + 1197) ^ 0x1A4E)) ^ (v26 - 3628))))(v27);
}

void J8WWtDMwk()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + qword_1EAF16540) ^ 0x30)) - 8) ^ 0xE3u) - 8) ^ (91 * ((dword_1EAF16720 + qword_1EAF16540) ^ 0x30))) - 48];
  v1 = (*(v0 - 4) - qword_1EAF16540) ^ &v4;
  v2 = 636859739 * (v1 + 0x1D38D65F7E9650D0);
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF16540 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196359F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, char *a17)
{
  a17 = &a11;
  a15 = v17 + 1384597421 * (((&a15 | 0x8D4E3298) - (&a15 & 0x8D4E3298)) ^ 0x6F806BE1) - 1501088060;
  (*(v21 + 8 * (v17 + 4637)))(&a15);
  (*(v21 + 8 * (v17 + 4576)))(v18, v19, 0, *(v20 + 8 * (v17 ^ 0x78Du)), &a11, 2);
  v24 = 583883621 * (((&a15 | 0x4677F679) - (&a15 | 0xB9880986) - 1182267002) ^ 0xE7442AD6);
  a16 = v24 + v23 + 520;
  LOBYTE(a17) = 69 - v24;
  v25 = (*(v21 + 8 * (v23 + 3237)))(&a15);
  return (*(v21 + 8 * (((((57 * (v23 ^ 0xD1B) - 2803) ^ (*v22 == 0)) & 1) == 0) | (2 * ((((57 * (v23 ^ 0xD1B) - 2803) ^ (*v22 == 0)) & 1) == 0)) | v23)))(v25);
}

uint64_t sub_19635A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ a3)))();
}

uint64_t sub_19635A204()
{
  v5 = (*(v4 + 8 * ((v3 - 3760) ^ 0x106E)))(v2);
  *v0 = 0;
  return v1(v5);
}

uint64_t sub_19635A2B0()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(3191, -4936, 5180);
}

uint64_t sub_19635A4B4@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v10 = v5 + 32;
  v11 = (v10 ^ a1 ^ v6) + v3;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = v8 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * a2) ^ v4)))();
}

uint64_t sub_19635A4BC()
{
  v5 = v1 ^ (v0 - 1203) ^ (v2 + 824);
  v7 = v3 > 0x1F && v5 >= ((473 * (v2 ^ 0x9AA)) ^ 0x180DuLL);
  return (*(v4 + 8 * ((123 * v7) ^ v2)))();
}

uint64_t sub_19635A50C()
{
  v6 = (*(v5 + 8 * (v0 + 5330)))(*v3);
  *v3 = v2;
  *(v3 + 8) = v1;
  return v4(v6);
}

uint64_t sub_19635A57C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v8 = (((v6 ^ 0x1682u) - 1190) ^ v5) + v4;
  *(a1 - 7 + v8 + v3) = *(a3 + v8);
  return (*(v7 + 8 * ((265 * ((v4 & 0xFFFFFFF8) - 8 == v5)) ^ v6)))(v5 + 8);
}

uint64_t sub_19635A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v14 + 8 * (v15 + 3564)))(a14, a13);
  *v16 = v17;
  return (*(v14 + 8 * (((v17 == 0) * (((272 * ((v15 + 11) ^ 0xBFF)) ^ 0x972) + v15 - 1477)) ^ (v15 + 11))))();
}

uint64_t sub_19635A844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  v39 = *(v38 - 192);
  *(v39 + 8) = *(v38 - 196);
  *(v38 - 208) = v39;
  v40 = (*(v37 + 8 * (v36 + 2853)))(*(&off_1F0B1A0C0)[v36 - 3753], *(v38 - 176), *(v38 - 196));
  return (*(v37 + 8 * ((5806 * (a36 == ((v36 - 1584746489) & 0x5E754FF8 ^ (((v36 - 3395) ^ 0xFCD) + 1237460453)))) ^ (v36 - 3395))))(v40);
}

uint64_t sub_19635A85C@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 7 + ~v3 + v2 + v1) = *(v5 - 7 + ~v3 + v2);
  v7 = (((v4 - 748) | 0x60Au) ^ 0x723) + v3 == (v2 & 0xFFFFFFF8);
  return (*(v6 + 8 * (((4 * v7) | (16 * v7)) ^ v4)))();
}

uint64_t sub_19635A8F4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, _DWORD *a8@<X7>, int a9@<W8>)
{
  v20 = *v13;
  v21 = *(v18 + 4 * (v15 + a9 + a2));
  v22 = v21 - (a3 & (2 * v21)) + a5;
  v23 = (v14 & (2 * v10)) + (v10 ^ v16) + v12;
  *(*v13 + v23) = a4 ^ HIBYTE(v22);
  *(v20 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v20 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v20 + v23 + 3) = v22 ^ a6;
  v24 = v19 < v11;
  *a8 += 4;
  if (v24 == a9 + a7 < v11)
  {
    v24 = a9 + a7 < v19;
  }

  return (*(v17 + 8 * ((v24 * a1) ^ v9)))();
}

uint64_t sub_19635AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47)
{
  v49 = (v47 - 73409290) & 0x3CFF33B7;
  a43 = 0;
  a47 = 1237465637;
  HIDWORD(a21) = -20418689;
  HIDWORD(a26) = 1237465637;
  v50 = 32 * (v49 ^ 0x389F121E);
  v51 = v49 - 949948383;
  v52 = (*(v48 + 8 * (v49 - 949942505)))(16, 3886098504);
  LODWORD(a28) = 1237422985;
  return (*(v48 + 8 * (((v52 != 0) * (v50 - 5363)) ^ v51)))(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, 0x16A001379497, a23, a24, a25, a26, a27, a28, a29, a30, &a43, a32, a33, a34, a35, 0, a37, a38);
}

uint64_t sub_19635ADD0@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 12) ^ 0xD6FDEEDBCEF7FFBELL) + ((*(a1 + 12) << ((v1 + 100) ^ 0xA8u)) & 0x19DEFFF7CLL) + 0x2902112471A58672;
  v5 = v3 < 0x409D862C || v3 > *(a1 + 8) + 1084065324;
  return (*(v2 + 8 * ((104 * v5) ^ v1 ^ 0x1F0)))();
}

uint64_t sub_19635AEC0@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 - 454989304) & 0x1B1E96FF ^ 0xFFFFFFFFFFFFE952) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((122 * ((v1 & 0xFFFFFFE0) == 32)) ^ v2)))();
}

uint64_t sub_19635AF2C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a2 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((a1 + v4 - 230) | 0x10) + 3430)) ^ (a1 + v4 + 649))))();
}

void sub_19635AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v16 = (*(v14 + 8 * ((v13 - 1741612164) ^ 0x98310793)))(0, 4, va);
  (*(v14 + 8 * (v13 + 5973)))(v15, @"Oiw0UE", v16);
  JUMPOUT(0x19635B044);
}

uint64_t sub_19635B09C@<X0>(int a1@<W3>, unsigned int a2@<W4>, unint64_t a3@<X5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v10 = v6 - 1;
  *(a5 + v10 + v5) = *(v8 + v10);
  return (*(v9 + 8 * (((v10 == ((v7 + a1) & a2 ^ a3)) * a4) ^ v7)))();
}

uint64_t sub_19635B0D4@<X0>(int a1@<W3>, unint64_t a2@<X4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = (a1 ^ (2 * v5) ^ a2) + v4;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a3) ^ v5)))();
}

uint64_t sub_19635B17C()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2(707564719, 3587407335, -6243, 7253);
}

uint64_t sub_19635B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21)
{
  v25 = v21 + 3695;
  *(v22 + 8) = a20;
  *(v22 + 12) = 0;
  v26 = (*(v24 + 8 * ((v21 + 3695) ^ 0x1667)))(*(&off_1F0B1A0C0)[v21 - 316], a21, a20);
  return (*(v24 + 8 * ((1906 * (v23 == 1237465637)) ^ (v25 - 4025))))(v26);
}

uint64_t sub_19635B324@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 ^ 0xEB0) - 346)) ^ v3)))();
}

uint64_t sub_19635B694@<X0>(uint64_t *a1@<X6>, uint64_t (*a2)(void)@<X7>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char a10, char a11, char a12, uint64_t a13, _DWORD *a14)
{
  v14 = *a1;
  v15 = ((2 * *a14) & 0xF576BBDE) + (*a14 ^ 0xFABB5DEF) + 88384017;
  *(*a1 + v15) = a12 ^ 0x45;
  *(v14 + v15 + 1) = ((a3 ^ 0x37) - 20) ^ a11;
  *(v14 + v15 + 2) = a10 ^ 0xD2;
  *(v14 + v15 + 3) = a9 ^ 0x60;
  *a14 += 4;
  return a2();
}

void f834ofwoih1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (qword_1EAF16800 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0xCAu) - 8) ^ (91 * (qword_1EAF16800 ^ 0x30 ^ dword_1EAF16720))) - 84];
  v1 = qword_1EAF16800 ^ &v4 ^ *(v0 - 4);
  v2 = (636859739 * v1) ^ 0xE2C729A08169AF30;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF16800 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19635B9EC()
{
  (*(v4 + 8 * (v1 ^ 0x1E0A)))(v3);
  *v2 = 0;
  return v0(10638718, 1042);
}

uint64_t sub_19635BB98(uint64_t a1, int a2, char a3)
{
  v7 = ((2 * a2) & 0xEF738ADE) + (a2 ^ 0x77B9C56F) - 2008663407;
  v8 = (*(*v5 + v7) << (v6 + ((a3 + 35) & 0xF9) + 14)) | (*(*v5 + v7 + 1) << 16) | (*(*v5 + v7 + 2) << 8) | *(*v5 + v7 + 3);
  *v4 = (v8 ^ 0xDDEFFB67) + 1808940734 + ((2 * v8) & 0xBBDFF6CE);
  *(v5 + 12) += 4;
  return v3(1);
}

uint64_t sub_19635BC64()
{
  (*(v4 + 8 * (v2 + 4522)))(v3);
  *v1 = 0;
  return v0(4294962059, 479);
}

uint64_t sub_19635BE4C(uint64_t a1)
{
  (*(v2 + 8 * (v3 + 2980)))();
  (*(v2 + 8 * (v3 ^ 0x1796)))(a1);
  v5 = (*(v2 + 8 * (v3 ^ 0x17DC)))(v1, @"ag9jz") == 0;
  return (*(v2 + 8 * ((v5 * ((4 * v3) ^ 0x399C)) ^ v3)))();
}

void sub_19635BF08(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) + 1864678469 * ((2 * (a1 & 0x79C11492) - a1 - 2042696851) ^ 0xB54EFC84);
  v3[0] = v1 - 891395573 * ((((v3 | 0xA5362EBE) ^ 0xFFFFFFFE) - (~v3 | 0x5AC9D141)) ^ 0x60E4CEFA) + 1569;
  v2 = (&off_1F0B1A0C0)[v1 - 2702] - 8;
  (*&v2[8 * (v1 ^ 0x1325)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_19635C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = (*(v21 + 8 * (v19 + 84)))(*(v22 - 192) - 1237465637 + ((79 * (v19 ^ 0x1978)) ^ 0x2A2u) - 572, 3886098504);
  v24 = *(v22 - 220);
  *v20 = v23;
  return (*(v21 + 8 * ((211 * (v23 == 0)) ^ v19)))(v23, v25, 711498875, 3583466996, 4127, v24, 586, 2147478764, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_19635C3EC()
{
  v4 = 912648571 * (&v8 ^ 0xDCCD4C35);
  v8 = (v1 + 1318478531) ^ v4;
  v9 = v7;
  v10 = -42847 - v4;
  (*(v3 + 8 * (v1 ^ 0x1D3B)))(&v8);
  (*(v3 + 8 * (v1 ^ 0x1D78)))(v6, v0, 0, *(v2 + 8 * (v1 - 1154)) - 4, v7, 8);
  return 4294924449;
}

uint64_t sub_19635C568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = (v38 ^ 0x6E5717FFFFDEF9EFLL) + ((2 * v38) & 0x1FFBDF3DELL) - 0x6E5717FF66327FBCLL;
  v42 = v40 < (a9 + 3332) + 2578213751u || v40 > *(a38 + 8) + 2578217519u;
  return (*(v39 + 8 * ((2260 * v42) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_19635C800@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, _DWORD *a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t (*a19)(void))
{
  v19 = *a17;
  v20 = a12 + 989737029 - ((2 * a12) & 0x75FC608A);
  v21 = ((2 * *a14) & 0xFDF5FB9E) + 17105457 + ((((a1 - 536877275) & 0x737F5FE2) - 1417959443) ^ *a14);
  *(*a17 + v21) = HIBYTE(v20) ^ 0x3A;
  *(v19 + v21 + 1) = BYTE2(v20) ^ 0xFE;
  *(v19 + v21 + 2) = BYTE1(v20) ^ 0x30;
  *(v19 + v21 + 3) = (a12 + 69 - ((2 * a12) & 0x8A)) ^ 0x45;
  *a14 += 4;
  return a19();
}

uint64_t sub_19635C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = (v23 ^ 0xDB377DADEAB88F9FLL) + ((v23 << ((v22 - 9) & 0xBFu ^ v24)) & 0x1D5711F3ELL) + 0x24C88253142B24BALL;
  v28 = v26 < 0xFEE3B455 || v26 > (((v22 + 546246182) | 0x18100291u) ^ 0xC67CA6E2) + *(a1 + 8);
  return (*(v25 + 8 * ((4543 * v28) | v22)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_19635C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, int a35, char a36)
{
  v42 = v38 + 3842;
  v43 = (v38 + 3842) ^ 0x1440;
  (*(v36 + 8 * (v38 + 4391)))(v39);
  v44 = *v37;
  v45 = *(v37 + 3) + ((v38 + 3842) ^ 0x23BE3F36) - ((2 * *(v37 + 3)) & 0x477C5122);
  v46 = 1311869473 * ((((v41 - 160) | 0x525A836F) + (~(v41 - 160) | 0xADA57C90)) ^ 0xB9B599C2);
  *(v41 - 120) = 563297187 - v46 + 622816387 * *v40;
  v47 = v45 ^ v46;
  v48 = (v41 - 160);
  v48[1] = v44;
  v48[2] = &a33;
  v48[3] = &a36;
  *(v41 - 160) = v47;
  *(v41 - 128) = v46 + v38 + 3842 - 419;
  (*(v36 + 8 * ((v38 + 3842) ^ 0xE53)))(v41 - 160);
  v49 = *(v41 - 124);
  v50 = (*(v36 + 8 * (v42 ^ 0xE6D)))(v39);
  return (*(v36 + 8 * ((1390 * (v49 == ((((v43 - 989) | 0x294) - 348102268) ^ (v43 - 1342182376) & 0xDB9CDDA2))) ^ v43)))(v50);
}

uint64_t sub_19635CD30@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W7>, uint64_t a5@<X8>)
{
  v9 = v6 - 1;
  *(a1 + v9 + v5) = *(a5 + v9);
  return (*(v8 + 8 * (((v9 == 0) * (a3 + (v7 ^ a2) * a4)) ^ v7)))();
}

uint64_t sub_19635CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  if (v28)
  {
    v33 = a27 == 1237465645;
  }

  else
  {
    v33 = 0;
  }

  v34 = !v33;
  return (*(v31 + 8 * ((v34 * (((3 * (a7 ^ v32)) ^ v27) + (a7 ^ v29) * v30)) ^ a7)))();
}

uint64_t sub_19635CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 8) = 4096;
  *v6 = v5;
  return v4(a1, 1840, 4294962917, a4, 3673, 13, 2147489407, 5423);
}

uint64_t sub_19635CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v23 = *(v22 - 148) + *(v19 + 12) + ((*(v22 - 148) < v20 + ((a19 - 1607) | 0x128u) + 488 - 917) << 32) - 983423591;
  v25 = v23 < 0xF245FBE || v23 > *(v19 + 8) + 254042046;
  return (*(v21 + 8 * ((233 * v25) ^ (a19 + 4002))))();
}

uint64_t sub_19635D0AC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 2976)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 1573) | 0x144) ^ ((v1 ^ 0x763) - 24))) ^ v1)))();
}

uint64_t sub_19635D130()
{
  v3 = (*(v2 + 12) ^ 0xDF7BF1BEFFFFFF97) + ((((v0 - 4306) | 0x31u) ^ 0x1FFFFF816) & (2 * *(v2 + 12))) + 0x20840E41ADC18DFELL;
  v5 = v3 < 0xADC18D91 || v3 > *(v2 + 8) + 2915143057u;
  return (*(v1 + 8 * ((v5 * ((136 * (v0 ^ 0x17F4)) ^ 0x1781)) ^ v0)))();
}

uint64_t sub_19635D254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  (*(v38 + 8 * (v33 + 4910)))(*v36);
  *v36 = v35;
  *(v36 + 8) = v34;
  return v37(*(v39 - 216), 1840, 4294962917, a33, 3673, 13, 2147489407, 5423);
}

uint64_t sub_19635D41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (*(v14 + 8 * (v13 + 3705)))(a13, a12);
  *v15 = v16;
  return (*(v14 + 8 * (((v16 == 0) * ((v13 - 53) & 0xC5 ^ 0x6B6)) ^ v13)))();
}

uint64_t sub_19635D4E0()
{
  v7 = (*(v4 + 12) ^ v0) + ((*(v4 + 12) << (v6 + 92)) & ((v6 - 3085) ^ v1)) + v2;
  v9 = v7 < 0x5E588625 || v7 > *(v4 + 8) + 1582859813;
  return (*(v5 + 8 * ((v9 * v3) ^ v6)))();
}

uint64_t sub_19635D704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v7 - 208) = a5;
  v8 = *(v7 - 184);
  *(v7 - 168) = 0;
  *(v7 - 152) = 0;
  v9 = (&off_1F0B1A0C0)[v5 - 2182] - 8;
  (*(v6 + 8 * (v5 + 4340)))(v9);
  v10 = *(&off_1F0B1A0C0)[v5 ^ 0x8EF];
  v11 = *v8;
  v12 = 1311869473 * ((((2 * (v7 - 144)) | 0x2F5B238) - (v7 - 144) - 24828188) ^ 0xEA95C3B0);
  *(v7 - 144) = (*(v8 + 3) + 599664785 + (~(2 * *(v8 + 3)) | 0xB883AEDD) + 1) ^ v12;
  *(v7 - 120) = v7 - 152;
  *(v7 - 104) = 563293467 - v12 + 622816387 * v10 + 3720;
  *(v7 - 112) = v12 + v5 + 3372;
  *(v7 - 136) = v11;
  *(v7 - 128) = v7 - 168;
  (*(v6 + 8 * (v5 ^ 0x112C)))(v7 - 144);
  LODWORD(v8) = *(v7 - 108);
  v13 = (*(v6 + 8 * (v5 ^ 0x1112)))(v9);
  return (*(v6 + 8 * (((v8 == 1893509507) * (v5 ^ 0x905)) ^ v5)))(v13);
}

uint64_t sub_19635D868(uint64_t a1, int a2)
{
  v11 = (v4 - 32);
  v12 = (v5 - 32);
  v13 = *v12;
  *(v11 - 1) = *(v12 - 1);
  *v11 = v13;
  return (*(v10 + 8 * (((v9 & ~(((v6 + 32) | (v2 + v7 - 32)) >> (v3 - 44 + v8))) * a2) ^ v3)))();
}

uint64_t sub_19635D94C()
{
  v5 = (*(v0 + 8 * (v3 + 4989)))(v4);
  *v2 = 0;
  return v1(v5);
}

uint64_t sub_19635DA24@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + v4 + v2) = *(v7 + v4);
  v10 = ((v4 + 1) ^ v5) == ((v3 + v6) & a1 ^ (v8 + 3437));
  return (*(v9 + 8 * ((v10 | (4 * v10)) ^ v3)))();
}

uint64_t sub_19635DB10()
{
  v8 = (v4 - v6 - 3665) + (*(v5 + 12) ^ v0) + ((*(v5 + 12) << (((v4 - 79) | 0x80u) + 117)) & v1) + v2;
  v10 = v8 >= 0x628CECBA && v8 <= *(v5 + 8) + 1653402810;
  return (*(v7 + 8 * ((v10 * v3) ^ v4)))(0);
}

uint64_t sub_19635DBB8()
{
  v3 = (*(v1 + 12) ^ 0x75EBF9FCDFDEF7FFLL) + ((((v0 - 1438) ^ 0x255) + 0x1BFBDEE86) & (2 * *(v1 + 12))) - 0x75EBF9FC7C1B6D90;
  v5 = v3 >= 0x63C38A6B && v3 <= *(v1 + 8) + 1673759339;
  return (*(v2 + 8 * ((511 * v5) ^ v0)))();
}

uint64_t sub_19635DC38()
{
  v6 = v1 - 3998;
  (*(v4 + 8 * (v6 ^ 0x1A5D)))(v2);
  v7 = *v3;
  v8 = *v0;
  v9 = *(v0 + 3) + 599664785 - ((2 * *(v0 + 3)) & 0x477C5122);
  v10 = 1311869473 * ((v5 - 1504933336 - 2 * ((v5 - 144) & 0xA64C8AB8)) ^ 0x4DA39014);
  *(v5 - 120) = v5 - 184;
  *(v5 - 112) = v10 + v6 + 4723;
  *(v5 - 104) = 563297187 - v10 + v7 * (((v6 - 868) | 0x1300) + 622811478);
  *(v5 - 136) = v8;
  *(v5 - 128) = v5 - 176;
  *(v5 - 144) = v9 ^ v10;
  (*(v4 + 8 * (v6 + 5731)))(v5 - 144);
  (*(v4 + 8 * (v6 ^ 0x1A5B)))(v2);
  return sub_19634686C();
}

uint64_t sub_19635DD40(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v11 = ((v10 << ((32 * (v6 ^ 0xBB)) ^ 0xE1)) & a3) + (v10 ^ 0xFBFBBFFB) + 67387397;
  v12 = (*(*v8 + v11) << 24) | (*(*v8 + v11 + 1) << 16) | (*(*v8 + v11 + 2) << 8) | *(*v8 + v11 + 3);
  *v7 = (v12 ^ a4) + a6 + (a5 & (2 * v12));
  *(v8 + 12) = v10 + 4;
  return v9();
}

uint64_t sub_19635DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24)
{
  v28 = (v24 - 1043) | 0x446;
  (*(v26 + 8 * (v28 ^ 0x1CEE)))();
  v30 = (*(v26 + 8 * (v28 ^ 0x1F14)))(a1);
  v39 = a24 == 11 || v25 != v27;
  return (*(v26 + 8 * (((((((v28 + 996847891) & 0xC4955EE6 ^ 0x1E63) + 1241) ^ v39) & 1) == 0) ^ (v28 + 996847891) & 0xC4955EE6)))(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_19635DE7C@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(v1 + v2 - 16);
  *(v5 - 1) = *(v1 + v2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (695 * (v3 ^ 0xEF6) - 3893)) ^ v3)))();
}

uint64_t sub_19635DF10(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1A0D)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 ^ 0x3C4) + 1160) ^ (166 * (v1 ^ 0x3C4)))) ^ v1)))();
}

uint64_t sub_19635DFC4()
{
  v5 = (*(v2 + 8 * (v4 | 0x10D0u)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * ((((((v4 + 1770455316) | 0x8410C043) + 308825630) ^ (v4 + 880026814) & 0x56FF) * (v5 == 0)) ^ v4)))();
}

uint64_t sub_19635E040(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 4148)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * (((v1 + 914329189) & 0xC9806F7C) - (v1 ^ 0x8B5) + 16 * (v1 ^ 0x8B5) - 6408)) ^ v1)))();
}

uint64_t sub_19635E0FC(uint64_t a1)
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v3(a1, 4294962800, 3169, 4612, 0x36388D39C04C843DLL, 0x2FBB29FF301AE9C9, 2563, 22);
}

uint64_t sub_19635E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  HIDWORD(a29) = -1555814449;
  v33 = *(v32 - 160);
  *(v32 - 232) = *(v31 + 8 * (v30 - 5000));
  return (*(v31 + 8 * (((*(v33 + 12) > 0xFFFFFFFAuLL) * HIDWORD(a24)) ^ (v30 - 1097))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v33 + 12, a29, a30);
}

uint64_t sub_19635E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  v19 = (*(v17 + 8 * (v18 + 3476)))(a12, a14);
  *a17 = v19;
  return (*(v17 + 8 * (((v19 == 0) * (v18 - 4609 + v18 - 1652)) ^ v18)))();
}

uint64_t sub_19635E314()
{
  v4 = (v1 - 367) | 0x105A;
  (*(v2 + 8 * (v1 ^ 0x19FB)))(v0);
  (*(v2 + 8 * (v1 ^ 0x1A01)))(v0);
  v5 = (*(v2 + 8 * (v4 + 1754)))(v3, @"rGLU5bt2");
  return (*(v2 + 8 * ((((v4 ^ 0x6D ^ (v5 == 0)) & 1) * (((v4 - 1024) | 0x100) ^ 0xFEC)) ^ v4)))(v5);
}

uint64_t sub_19635E3D4()
{
  *(v2 - 144) = v0 - 891395573 * ((-495661153 - ((v2 - 144) | 0xE274CF9F) + ((v2 - 144) | 0x1D8B3060)) ^ 0x27A62FDB) + 3788;
  v3 = (*(v1 + 8 * (v0 + 6032)))(v2 - 144);
  return (*(v1 + 8 * (((*(v2 - 140) != 1163564281) * ((v0 ^ 0x3E0) + 1374086239 + ((v0 + 101717972) | 0xA8090184) - 250)) ^ v0)))(v3);
}

uint64_t sub_19635E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v31 = *(v30 + 8 * v28);
  v32 = &a28 + v29 + a4;
  *v32 = HIBYTE(a7) ^ 0x45;
  v32[1] = BYTE6(a7) ^ 0xCE;
  v32[2] = BYTE5(a7) ^ 0x4C;
  v32[3] = BYTE4(a7) ^ 0xAB;
  v32[4] = BYTE3(a7) ^ 0x84;
  v32[5] = BYTE2(a7) ^ 0xC5;
  v32[6] = BYTE1(a7) ^ 0x62;
  v32[7] = a7 ^ 0x75;
  return v31();
}

uint64_t sub_19635E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27)
{
  v31 = v29 + v27 - 552;
  *(v28 + 8) = a27;
  *(v28 + 12) = 0;
  v32 = (*(v30 + 8 * (v29 + v27 + 1333700832)))(*(&off_1F0B1A0C0)[v31 ^ (v29 + 5)], a25, a27);
  return (*(v30 + 8 * ((55 * (((v31 + 1333699115) | 0x297) != 5015)) ^ (v31 + 1333697793))))(v32);
}

uint64_t sub_19635E8C4@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 122) | 0x403) ^ 0x1A;
  v6 = (a1 + v2 - 16);
  v7 = *(v1 + v2 - 16);
  *(v6 - 1) = *(v1 + v2 - 16 - 16);
  *v6 = v7;
  return (*(v4 + 8 * ((26 * (((((v5 - 5161) & v2) == 32) ^ (v5 - 10)) & 1)) ^ v5)))(32);
}

uint64_t sub_19635E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t *a30, int *a31, int a32, int a33, int a34)
{
  v37 = a22;
  a23 = 0;
  a21 = 0;
  v38 = (&off_1F0B1A0C0)[v34 & 0xC1B690F3] - 8;
  (*(v35 + 8 * (v34 + 2674)))(v38);
  v39 = *v37;
  v40 = *(v37 + 3) + 599664785 - ((v34 + 1199325640) & (2 * *(v37 + 3)));
  v41 = 1311869473 * ((((2 * v36) | 0xE87554D8) - v36 + 197481876) ^ 0x1FD5B0C0);
  v42 = 563297187 - v41 + *(&off_1F0B1A0C0)[v34 - 3875] * (((v34 - 282) | 0x190) + 622812339);
  a32 = v41 + v34 + 1706;
  a34 = v42;
  a28 = v40 ^ v41;
  a29 = v39;
  a30 = &a23;
  a31 = &a21;
  (*(v35 + 8 * (v34 + 2714)))(&a28);
  v43 = a33;
  v44 = (*(v35 + 8 * (v34 ^ 0x1690)))(v38);
  return (*(v35 + 8 * (v34 ^ (32 * (v43 != 1893509507)))))(v44);
}

uint64_t sub_19635EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v25 = 4 * (v20 ^ 0x258);
  *(v21 + 8) = a20;
  v26 = (*(v22 + 8 * (v25 ^ 0x16A9)))(**(v24 + 8 * (v25 - 3941)), a17, a20);
  return (*(v22 + 8 * (((v23 == 1237465637) * ((v25 + 515058478) & 0xE14CCDFF ^ 0xFB4)) ^ (v25 - 1746))))(v26);
}

uint64_t sub_19635EC58@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (v4 ^ 0xDD1)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_19635ED9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(v6 + 12) ^ v3) + ((*(v6 + 12) << ((v5 ^ (v7 + 10)) + 95)) & a2) + a3;
  v10 = v8 >= 0xA82E6209 && v8 <= *(v6 + 8) + 2821612041u;
  return (*(v4 + 8 * ((112 * v10) ^ v5)))();
}

uint64_t sub_19635EE0C@<X0>(int a1@<W8>)
{
  v5 = a1 - 10;
  v6 = (a1 - 1849362341) | 0x6A000800;
  v7 = (*(v4 + 8 * ((a1 - 10) ^ 0x1473)))(v2, v3);
  *v1 = v7;
  return (*(v4 + 8 * (((((v7 == 0) ^ ((v5 ^ 0x15) + 1)) & 1) * (v6 ^ 0xFBC50E06)) ^ v5)))();
}

uint64_t sub_19635EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, char *a29, int a30, int a31, int a32, int a33, int a34, int a35)
{
  v42 = v36 ^ 9;
  v43 = v42 + 1182;
  v44 = *v41;
  v45 = *(v41 + 8);
  if (v45 >= 0x40)
  {
    v46 = 64;
  }

  else
  {
    v46 = *(v41 + 8);
  }

  v47 = *(v41 + 24);
  if (v47 >= 0x40)
  {
    v48 = 64;
  }

  else
  {
    v48 = *(v41 + 24);
  }

  v49 = *(v41 + 32);
  v50 = 1384597421 * ((&a25 - 2 * (&a25 & 0x3812900C47BBA884) + 0x3812900C47BBA884) ^ 0x4E6F4863A575F1FDLL);
  a28 = *(v41 + 16) ^ v50;
  a29 = &a13;
  a26 = v44 - v50;
  a27 = v35 - v50;
  a32 = v48 + v50;
  a33 = v50 + 25531645 + v42;
  a25 = v49 ^ v50;
  a34 = v45 - v50;
  a35 = v47 + v50;
  a30 = v40 - v50;
  a31 = v46 - v50;
  (*(v38 + 8 * (v42 + 3032)))(&a25);
  (*(v38 + 8 * (v42 + 2943)))(a10, v37, 0, (&off_1F0B1A0C0)[v42 ^ 0xEA5] - 4, &a13, 72);
  v51 = 1427277979 * (&a25 ^ 0x50514D68);
  HIDWORD(a28) = v43 - v51 - 1774338337;
  LODWORD(a26) = (1999422161 * v40 + 1634528631) ^ v51;
  a27 = v35;
  a25 = v41;
  v52 = (*(v38 + 8 * (v43 ^ 0x8F6)))(&a25);
  return (*(v38 + 8 * (((*v39 == 0) * ((v42 - 1131204420) & 0x436CCFBF ^ 0xE82)) ^ (v42 + 1182))))(v52);
}

uint64_t sub_19635F0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t *a32)
{
  v36 = a32;
  *(v35 - 168) = 0;
  a31 = 0;
  v37 = (&off_1F0B1A0C0)[v32 - 3800] - 8;
  (*(v34 + 8 * (v32 + 2722)))(v37);
  v38 = *(&off_1F0B1A0C0)[v32 ^ 0xF1D];
  v39 = *v36;
  v40 = ((v32 - 3872) | 0x310) + 599663991 + *(v36 + 3) - ((2 * *(v36 + 3)) & 0x477C5122);
  v41 = 1311869473 * (((v33 | 0xAABBA8AA) - (v33 & 0xAABBA8AA)) ^ 0x4154B206);
  *(v35 - 120) = &a31;
  *(v35 - 104) = 563297187 - v41 + 622816387 * v38;
  *(v35 - 112) = v41 + v32 + 1754;
  *(v35 - 136) = v39;
  *(v35 - 128) = v35 - 168;
  *(v35 - 144) = v40 ^ v41;
  (*(v34 + 8 * (v32 + 2762)))(v35 - 144);
  v42 = *(v35 - 108);
  v43 = (*(v34 + 8 * (v32 ^ 0x16E0)))(v37);
  return (*(v34 + 8 * ((97 * (v42 != 1893509507)) ^ v32)))(v43);
}

void sub_19635F228(_DWORD *a1)
{
  v1 = *a1 ^ (891395573 * (((a1 | 0x53D200A9) - (a1 | 0xAC2DFF56) - 1406271658) ^ 0x69FF1F12));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_19635F3FC@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((v3 - 2574) ^ 0xA0E ^ ((((v6 - (v3 - 2574)) | ((v3 - 2574) - v6)) >= 0) * ((a1 + v3 - 2574 + 5) ^ (a1 + 75))))))();
}

uint64_t sub_19635F490@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v20 = (a2 + a1);
  v21 = *(v29 + 8 * v25);
  v22 = *(v30 - 192);
  v23 = (~*(v22 + 12) + v20) ^ (~*(v22 + 12) + v20);
  return (*(v29 + 8 * ((((v23 - 1) & ~v23) >> ((a2 + v28) ^ v26)) & 1 | v20 ^ v27)))(v21, v22 + 12, a20);
}

uint64_t sub_19635F498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v28 = 1311869473 * ((2 * ((v27 - 120) & 0x18FE6F30) - (v27 - 120) + 1728155853) ^ 0x8CEE8A61);
  *(v27 - 112) = &a25;
  *(v27 - 120) = v28 + a17 + 5434;
  *(v27 - 104) = 681228866 - v28;
  v29 = (*(v26 + 8 * (a17 ^ 0x1B46u)))(v27 - 120);
  return (*(v26 + 8 * (((*(v27 - 116) == -1237727293) * ((((a17 - 1140917040) & 0xDFAFD69F) - v25 + 402) ^ 0xD86)) ^ a17)))(v29);
}

void sub_19635F66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, char a20, uint64_t a21, int a22, uint64_t a23, char *a24, char *a25, int a26, int a27, int a28)
{
  (*(v32 + 8 * (v31 ^ 0x1F6E)))(v29);
  v33 = *(v28 + 3) + 599664785 - ((2 * *(v28 + 3)) & 0x477C5122);
  v34 = 1311869473 * ((((2 * &a22) | 0xC7594B02) - &a22 + 475224703) ^ 0x843BF2D);
  v35 = 563297187 - v34 + *v30 * (v31 ^ 0x251F6A21);
  a23 = *v28;
  a24 = &a17;
  a28 = v35;
  a26 = v34 + v31 + 3938;
  a25 = &a20;
  a22 = v33 ^ v34;
  (*(v32 + 8 * (v31 + 4946)))(&a22);
  (*(v32 + 8 * (v31 ^ 0x1F68)))(v29);
  JUMPOUT(0x19635BA54);
}

void sub_19635F960(uint64_t a1)
{
  v1 = *a1 - 1468321087 * ((2 * (a1 & 0x76BACA1A) - a1 - 1991952923) ^ 0x5DAA748B);
  v2 = (&off_1F0B1A0C0)[v1 - 3320] - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 25248])(*(a1 + 16), @"WEfR") != 0) * ((v1 ^ 0x1CC7) - 4496)) | v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_19635FAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v26 = *v23;
  v27 = (v22 ^ 0xD24E878E) & (2 * (v22 & 0xD04E17C0)) ^ v22 & 0xD04E17C0;
  v28 = (v22 ^ 0x52D6A48E) << (((v21 - 120) & 0xB7) + 78);
  v29 = (v28 ^ 0x531669C) & (v22 ^ 0x52D6A48E) ^ v28 & 0x8298B34E;
  v30 = v29 ^ 0x82889142;
  v31 = (v29 ^ 0x902240) & (4 * v27) ^ v27;
  v32 = ((4 * v30) ^ 0xA62CD38) & v30 ^ (4 * v30) & 0x8298B34C;
  v33 = (v32 ^ 0x2008100) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x80983246)) ^ 0x298B34E0) & (v32 ^ 0x80983246) ^ (16 * (v32 ^ 0x80983246)) & 0x8298B340;
  v35 = v33 ^ 0x8298B34E ^ (v34 ^ 0x883000) & (v33 << 8);
  v36 = v22 ^ (2 * ((v35 << 16) & 0x2980000 ^ v35 ^ ((v35 << 16) ^ 0x334E0000) & (((v34 ^ 0x8210830E) << 8) & 0x2980000 ^ 0x2080000 ^ (((v34 ^ 0x8210830E) << 8) ^ 0x18B30000) & (v34 ^ 0x8210830E))));
  v37 = ((2 * *v24) & 0xF7FDBEBE) + (*v24 ^ 0x7BFEDF5F) - 2080300895;
  *(*v23 + v37) = HIBYTE(v36) ^ 0xD1;
  *(v26 + v37 + 1) = BYTE2(v36) ^ 0x6F;
  *(v26 + v37 + 2) = BYTE1(v36) ^ 0x71;
  *(v26 + v37 + 3) = v36 ^ 0x5C;
  v38 = (*v24 + 4);
  *v24 = v38;
  return (*(v25 + 8 * ((244 * (a21 <= *v23 + ((2 * v38) & 0x1FBFECFDELL) + (v38 ^ 0xA53B13E7FDFF67EFLL) + 0x5AC4EC1802009811)) ^ v21)))();
}

uint64_t sub_19635FDEC(uint64_t a1, uint64_t a2)
{
  *(v3 + 8) = 4096;
  *v4 = v3;
  return v2(a1, a2, 19, 183, 2199039578, 2095931295, 2147477874, 42);
}

uint64_t sub_19635FE38()
{
  *(v4 - 208) = 0;
  v5 = *(v2 + 8 * (((*v1 != 0) * (((v0 - 3005) | 0x40) ^ 0x855)) ^ v0));
  *(v4 - 220) = v3;
  return v5();
}

uint64_t sub_19635FF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v22 = (a9 ^ 0xDBFEAFBFFAE4FD7FLL) + ((a9 << (3 * (((a20 - 101) | 1) ^ 0x4Au) + 48)) & 0x1F5C9FAFELL) + 0x2401504072AB308ELL;
  v24 = v22 < 0x6D902E09 || v22 > *(v21 + 8) + 1838165513;
  return (*(v20 + 8 * ((1461 * v24) ^ a20)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
}

uint64_t sub_19636006C()
{
  v7 = (v0 + 1071576629) & 0xDF73CE79;
  v8 = 912648571 * ((v6 + 952389877 - 2 * ((v6 - 144) & 0x38C45185)) ^ 0xE4091DB0);
  *(v6 - 128) = v1 - v8;
  *(v6 - 136) = v6 - 160;
  *(v6 - 144) = (v7 + 792959355) ^ v8;
  (*(v5 + 8 * (v7 - 525513773)))(v6 - 144);
  (*(v5 + 8 * (v7 - 525513840)))(v4, v2, 0, *(v3 + 8 * (v7 - 525520316)) - 12, v6 - 160, 8);
  return v1;
}

uint64_t sub_196360290@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(a24 + 24);
  v27 = (*(a24 + 32) + a20);
  v28 = *(a24 + 48);
  *(v25 - 192) = 0;
  *(v25 - 160) = 1237465637;
  *(v25 - 156) = 1237465637;
  *(v25 - 180) = 1237465637;
  LODWORD(v45) = (v26 ^ 0xD72FFFBE) + 2029523936 + ((v26 << (a1 - 36)) & 0xAE5FFF7C);
  if (v27 == -1998276698 || v28 == 0)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  HIDWORD(v45) = v30 + 1344803743;
  v44 = (4 * v27) ^ 0x22392DE98;
  HIDWORD(v49) = WORD1(v27) ^ 0xFFFFFFE4;
  LODWORD(v50) = BYTE3(v27) ^ 0xFFFFFF88;
  HIDWORD(v48) = v27 ^ 0xFFFFFFA6;
  LODWORD(v49) = (v27 >> 8) ^ 0xFFFFFFB7;
  v52 = v27;
  LODWORD(v43) = (4 * v27) ^ 0x2392DE98;
  v31 = *(v25 - 196);
  LODWORD(v54) = v31 - 5778;
  HIDWORD(v53) = v31 - 5746;
  LODWORD(v51) = (v31 - 5596) ^ 0x170;
  HIDWORD(v51) = v31 - 5596;
  HIDWORD(v47) = v31 - 5435;
  LODWORD(v47) = ((2 * v31) ^ 0x2CD6) + 6254;
  v32 = a1 + 4925;
  LODWORD(v46) = (2 * v31) ^ 0x2CD6;
  HIDWORD(v46) = v31 - 5767;
  LODWORD(v53) = v31 - 5343;
  HIDWORD(v43) = v31 - 5743;
  HIDWORD(v56) = v31 - 5687;
  LODWORD(v55) = v31 - 5714;
  HIDWORD(v55) = (((v27 ^ 0x6481C27) - 105389095) ^ ((v27 ^ 0x7E9ECC17) - 2124336151) ^ ((v27 ^ 0xF0326796) + 265132138)) + 414852117;
  HIDWORD(v50) = v31 - 5699;
  LODWORD(v48) = v31 - 5745;
  HIDWORD(v54) = v31 - 5842;
  LODWORD(v56) = v31 - 5678;
  v33 = (a1 + 2019) | 0x54;
  v34 = (*(v24 + 8 * (a1 + 6569)))(16, 3886098504);
  HIDWORD(a18) = 1237422985;
  return (*(v24 + 8 * (((v34 != 0) * (v33 - 2132)) | v32)))(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v28, v56, a17, a18, a19, a20);
}

uint64_t sub_19636053C()
{
  v5 = (*(v2 + 8 * (v4 + 1772)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * (((v4 ^ 0x1085) - 122312393) ^ 0xF8B5AB88)) ^ v4)))();
}

uint64_t sub_19636059C@<X0>(int a1@<W4>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = v4 + (v5 - 2249);
  *(a3 + v7 - 1550 + v3) = *(a2 + v7 - 1550);
  return (*(v6 + 8 * (((v7 == 1550) * a1) ^ v5)))();
}

uint64_t sub_196360784@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + v9 - 1) | a1;
  v11 = (*(v7 + 8 * (v9 + 3252)))(a6, a5);
  *v8 = v11;
  return (*(v7 + 8 * (((((v11 == 0) ^ v10) & 1) * (((v9 - 1871671902) & 0x6F8F77DB) - 4706)) ^ v9)))();
}

uint64_t sub_196360970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, char *a30, char *a31, int a32, int a33, int a34)
{
  v39 = (v34 + 605173540) & 0xDBEDC339;
  (*(v37 + 8 * (v34 ^ 0x117F)))(v35);
  v40 = *v36;
  v41 = *v38;
  v42 = *(v38 + 3) + 599664785 - ((2 * *(v38 + 3)) & 0x477C5122);
  v43 = 1311869473 * (((&a28 | 0x37ACA925) - (&a28 & 0x37ACA925)) ^ 0xDC43B389);
  a31 = &a24;
  a28 = v42 ^ v43;
  a29 = v41;
  a30 = &a22;
  a32 = v43 + v34 + 3409;
  a34 = 563297187 - v43 + v40 * (v39 + 622815602);
  (*(v37 + 8 * (v34 ^ 0x1147)))(&a28);
  v44 = a33;
  v45 = (*(v37 + 8 * (v34 + 4375)))(v35);
  return (*(v37 + 8 * ((1346 * (v44 == ((v39 - 798666682) ^ 0xD0655390 ^ (v39 - 798666682) & 0x2F9ABFED ^ 0x60DCBA02))) ^ v39)))(v45);
}

uint64_t sub_196360A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  v36 = 2 * (v31 ^ 0xA34);
  *(v33 + 8) = a31;
  *(v33 + 12) = 0;
  v37 = (*(v32 + 8 * (v36 + 847)))(*(&off_1F0B1A0C0)[v36 ^ 0x1681], *(v35 - 168), a31);
  return (*(v32 + 8 * (((v34 == 1237465637) * (((v36 - 5774) | 0x1870) - 6034)) ^ (v36 - 3925))))(v37);
}

uint64_t sub_196360B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v12 + 52864))(a11, v11);
  *v13 = v14;
  return (*(v12 + 8 * ((237 * (v14 != 0)) ^ 0x167Eu)))();
}

uint64_t sub_196360D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = 3 * (v3 ^ 0xDB3u) - 1546 + a3;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((63 * (((v3 ^ 0xFFFFF050) & a3) != 32)) ^ v3 ^ 0x3F)))();
}

uint64_t sub_196360E3C()
{
  v5 = (*(v4 + 8 * (v3 + 1880)))(v1);
  *v2 = 0;
  return v0(v5);
}

uint64_t sub_196360E6C(uint64_t a1)
{
  v7 = (v3 - 32);
  v8 = a1 - 32;
  v9 = *(v8 + v2);
  *(v7 - 1) = *(v8 + v2 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((v4 == 32) * (((v1 + 311) | 0x100) ^ v5)) | v1)))();
}

uint64_t sub_196360F60()
{
  v5 = (v0 + (v2 - 1223) + 2052) ^ v1 ^ ((v2 - 3285) | 0x1212u);
  v7 = v3 > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((1013 * v7) ^ v2)))();
}

uint64_t sub_19636108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ((2 * v5) & 0x1956FD9AELL) + (v5 ^ v4 ^ (v6 - 483) ^ 0x73DEFFB9DA7C5A7BLL) - 0x73DEFFB98100235DLL;
  v10 = v8 < 0x49B7C976 || v8 > *(a4 + 8) + 1236781430;
  return (*(v7 + 8 * ((4535 * v10) ^ v4)))();
}

uint64_t sub_196361110(int a1)
{
  v5 = v1 ^ v2;
  v7 = v3 < 0x20 || v5 < ((267 * (a1 ^ 0x170Du) + 1626) ^ (a1 ^ 0x18B1u));
  return (*(v4 + 8 * ((14 * v7) ^ a1)))();
}

uint64_t sub_19636126C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v23 = (a21 | ((a21 < 0x49C23A25) << 32)) + *(v21 + 12) - 756231532;
  v25 = v23 < 0x1CAF0CB9 || v23 > *(v21 + 8) + 481231540 + ((549 * (a1 ^ 0xA35) - 1647) | 0xA05u);
  return (*(v22 + 8 * ((75 * v25) ^ a1)))();
}

uint64_t sub_1963612F4(int a1, uint64_t a2)
{
  v7 = (v4 - 32);
  v8 = a2 - 32;
  v9 = *(v8 + v3);
  *(v7 - 1) = *(v8 + v3 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((v5 == 32) * a1) ^ v2)))();
}

uint64_t sub_196361304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = (v3 ^ 0x31u) - 2028 - 2026 + a3;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((49 * (((v3 ^ 0xFFFFF004) & a3) != 32)) ^ v3 ^ 0x31)))();
}

uint64_t sub_1963613BC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 - 750057193) ^ 0x1DE2u) - 5923 + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((483 * ((v1 & 0xFFFFFFE0) != 32)) ^ (v2 - 750057193))))(-5923);
}

uint64_t sub_196361428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  *(v33 + 8) = 4096;
  *a33 = v33;
  return v34(a1, a2, a3, a4, a5, *(v35 - 212));
}

void XjXLwKrEB9m8()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF169B0) ^ 0x30))) ^ 0x75u) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF169B0) ^ 0x30))) + 62];
  v3 = qword_1EAF169B0 - &v6 + *(v2 - 4);
  v4 = 636859739 * v3 + 0x768A6804525E3610;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF169B0 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196361730@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 7 + ~v2 + v1) = *(a1 - 7 + ~v2 + v1);
  v6 = v2 - 4488 + ((4 * v3) ^ 0xCB8u) == (v1 & 0xFFFFFFF8);
  return (*(v5 + 8 * (v6 | (4 * v6) | v3)))();
}

uint64_t sub_1963617BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(v13 + 52864))(v15, a12);
  *v14 = v16;
  return (*(v13 + 8 * ((25 * (v16 == 0)) ^ v12)))();
}

uint64_t sub_196361808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12)
{
  v15 = v14 ^ v12;
  a10 = 0;
  a11 = v14 - 1427277979 * (&a10 ^ 0x50514D68) - 319;
  v16 = (*(v13 + 8 * (v14 + 3671)))(&a10);
  return (*(v13 + 8 * (((((v14 - 1) ^ (a12 == -1237727293)) & 1) * (v15 - 5858)) ^ v14)))(v16);
}

void sub_196361884(uint64_t a1)
{
  (*(v1 + 8 * (v2 ^ 0x1017)))();
  (*(v1 + 8 * (v2 + 4051)))(a1);
  JUMPOUT(0x19635E868);
}

uint64_t sub_196361950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  if (v25)
  {
    v28 = &a24 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  return (*(v26 + 8 * ((230 * (((v24 - 13) ^ v29) & 1)) ^ (v27 + v24 + 1652))))();
}

uint64_t sub_1963619C8(uint64_t a1, uint64_t a2, int a3)
{
  v8 = (v3 ^ 0x2C2) - a3 - 941;
  *v5 = 0;
  v5[1] = 0;
  v9 = (*(v6 + 8 * (v3 ^ 0x1EE7)))(v5);
  return (*(v6 + 8 * (((2 * (((v4 < 780379372) ^ (v8 + v7) ^ 0x7D) & 1)) & 0xFB | (4 * (((v4 < 780379372) ^ (v8 + v7) ^ 0x6BB5DF7D) & 1))) ^ (v8 - 1400849650))))(v9);
}

uint64_t sub_196361A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, char *a20)
{
  v27 = 912648571 * (((&a17 | 0xB22E081284245226) - (&a17 | 0x4DD1F7ED7BDBADD9) + 0x4DD1F7ED7BDBADD9) ^ 0xF28D1A9A58E91E13);
  a17 = v21 - v27;
  a18 = (v20 - 715636663) ^ v27;
  a20 = &a15;
  (*(v24 + 8 * (v20 + 5573)))(&a17);
  (*(v24 + 8 * (v20 ^ 0x1A58u)))(v26, v22, 0, *(v23 + 8 * (v20 - 911)) - 4, &a15, 12);
  v28 = 566710099 * ((-2 - ((~&a17 | 0x92AADDD597AC5325) + (&a17 | 0x6D55222A6853ACDALL))) ^ 0x6D2233071BE90BA9);
  a17 = v21 - v28 - ((3 * ((v20 + 370) ^ 0x4A3u) - 0x3F2124CE99CAC333) & (2 * v21)) - 0x1F9092674CE55EF8;
  a19 = (v20 + 3231) ^ v28;
  v29 = (*(v24 + 8 * ((v20 + 370) ^ 0x1F67u)))(&a17);
  return (*(v24 + 8 * (((*v25 == 0) * ((v20 + 339) ^ 0x7FA)) ^ (v20 + 370))))(v29);
}

uint64_t sub_196361C4C@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 + 4442;
  v7 = (((v6 - 234) | 0x80Au) ^ 0xFFFFFFFFFFFFE765) + v1;
  v8 = *(a1 + v7 - 15);
  v9 = *(a1 + v7 - 31);
  v10 = v4 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v5 + 8 * ((2453 * (v1 - (v2 & 0x1F) == 32)) ^ v6)))();
}

uint64_t sub_196361D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  (*(v23 + 8 * (v19 - 1768027280)))(*v24);
  *v24 = v21;
  *(v24 + 8) = v20;
  return v22(1155365296, 7553, 896765210, 3398201341, 3346, a19, a18, a17);
}

uint64_t sub_196361E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  v31 = a28;
  a25 = 0;
  a24 = 0;
  v32 = (&off_1F0B1A0C0)[v29 ^ 0xEE5] - 8;
  (*(v28 + 8 * (v29 + 2837)))(v32);
  v33 = *(&off_1F0B1A0C0)[v29 & 0x47E3917F];
  v34 = *v31;
  v35 = 1311869473 * ((421453433 - ((v30 - 144) | 0x191EDE79) + ((v30 - 144) | 0xE6E12186)) ^ 0xD0E3B2A);
  *(v30 - 144) = (*(v31 + 3) + 599664785 - ((2 * *(v31 + 3)) & 0x477C5122)) ^ v35;
  *(v30 - 120) = &a24;
  *(v30 - 112) = v35 + v29 + 1869;
  *(v30 - 104) = 563297187 - v35 + 622816387 * v33;
  *(v30 - 136) = v34;
  *(v30 - 128) = &a25;
  (*(v28 + 8 * (v29 + 2877)))(v30 - 144);
  v36 = *(v30 - 108);
  v37 = (*(v28 + 8 * (v29 + 2835)))(v32);
  return (*(v28 + 8 * (((v36 == 1893509507) * ((((v29 - 208658112) & 0xC6FD7EC) + 5974) ^ (v29 + 1078528320) & 0xBFB6EFEC)) ^ v29)))(v37);
}

void XgJ8VCncrBfn9DzTTUYPfkG()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16908) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 - dword_1EAF16908) ^ 0x30))] ^ 0xCA]) - 186];
  v1 = *(v0 - 4);
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (v1 ^ dword_1EAF16720 ^ 0x30))) ^ 0x86u) - 12) ^ (91 * (v1 ^ dword_1EAF16720 ^ 0x30))) + 45];
  v3 = 636859739 * ((*(v2 - 4) - v1) ^ &v5 ^ 0xE2C729A08169AF30);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  LODWORD(v2) = 636859739 * ((v3 - *(v0 - 1)) ^ 0x8169AF30);
  v4 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16908) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16908) ^ 0x30))] ^ 0xE9]) - 138] - 8;
  (*&v4[8 * (*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v2 - 8) ^ 0xCAu) - 8) ^ v2) + 51688])(v6, 0, 192);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_1963626C8()
{
  v6 = 912648571 * ((&v10 - 1470456868 - 2 * (&v10 & 0xA85A9BDC)) ^ 0x7497D7E9);
  v10 = (v2 + 1931337397) ^ v6;
  v11 = v9;
  v12 = -42847 - v6;
  (*(v5 + 8 * (v3 + v2 + 1294)))(&v10);
  return (*(v5 + 8 * (v2 ^ (v0 + 2208))))(v8, v1, 0, *(v4 + 8 * (v2 ^ (v0 + 41))) - 12, v9, 8);
}

uint64_t sub_196362824(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1153)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 1073733709) | 0x10140084) ^ 0xD01435AC)) ^ v1)))();
}

uint64_t sub_1963628D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  v32 = (*(v30 + 8 * (v28 ^ 0x1F0B)))(v31, @"gaX8gT7e");
  v33 = (*(v30 + 8 * (v28 + 4880)))(v32, 3, &a28);
  return (*(v30 + 8 * (((a28 == ((v28 - 264397535) & 0xFC25FBB ^ v29)) * ((34 * (v28 ^ 0x6D9)) ^ 0x1016)) ^ v28)))(v33);
}

uint64_t sub_196362988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, int a26, int a27, int a28, int a29, uint64_t a30)
{
  v36 = 1466156297 * ((~&a25 & 0x4059B285BBC13FCALL | &a25 & 0xBFA64D7A443EC035) ^ 0xCA9CC74E6876BF9BLL);
  a25 = &a17;
  a30 = a11 - v36;
  a28 = (v33 - 1658383195) ^ v36;
  a29 = a10 - v36;
  a26 = a13 - v36;
  a27 = v36 ^ v34;
  (*(v30 + 8 * (v33 ^ 0x15A4u)))(&a25);
  v37 = (*(v30 + 8 * (v33 + 2581)))(a14, v35, 0, *(v32 + 8 * (v33 - 3892)) - 4, &a17, 30);
  if (v31)
  {
    v38 = a15 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = v38;
  return (*(v30 + 8 * ((((149 * (v33 ^ 0xFBA) + 212214762) ^ 0xCA63BE0) * v39) ^ (149 * (v33 ^ 0xFBAu)))))(v37);
}

uint64_t sub_196362AA0@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((15 * (v6 == (v3 ^ a1) - 3186)) ^ v3)))();
}

uint64_t sub_196362B18@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v9 = v5 - 1;
  *(a2 + v9 + v2) = *(v8 + v9);
  return (*(v7 + 8 * (((v9 != (v4 ^ v6)) * a1) ^ v3)))();
}

uint64_t sub_196362E94(uint64_t a1)
{
  v5 = v1 ^ a1;
  v7 = v2 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((((v7 ^ v3) & 1) * (v3 ^ 0xD0A)) ^ v3)))();
}

uint64_t sub_196362F1C@<X0>(int a1@<W8>)
{
  v4 = a1 + 1481498853;
  (*(v3 + 8 * (a1 + 1481503186)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x111F)))(v2);
  return v1(v5);
}

uint64_t sub_196362F48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (v11 - 724894270) | 0x1502;
  *(v12 + 12) = v10 + a1 + (v14 ^ 0xB63DD079);
  v15 = *(a10 + 80);
  v16 = (*(v13 + 8 * (v14 + 1068)))((a1 - 1237465637), 3886098504);
  *v15 = v16;
  return (*(v13 + 8 * (((v16 != 0) * ((v14 + 570) ^ 0x17BA)) ^ v14)))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_196362FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  *(v18 + 8) = 4096;
  *v17 = v18;
  return v19(a17, a2, a3, a15);
}

uint64_t sub_196363040(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v20 = *a4;
  v21 = a19 - ((2 * a19) & 0x75FC608A) + 989737029;
  v22 = ((*a3 << (v19 + 39)) & 0xDD75FFDE) + (*a3 ^ 0x6EBAFFEF) - 1857748975;
  *(*a4 + v22) = HIBYTE(v21) ^ 0x3A;
  *(v20 + v22 + 1) = BYTE2(v21) ^ 0xFE;
  *(v20 + v22 + 2) = BYTE1(v21) ^ 0x30;
  *(v20 + v22 + 3) = v21 ^ 0x45;
  *a3 += 4;
  return a2();
}

uint64_t sub_196363198@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 + 2188) - 3477) ^ v2) + v1;
  *(v5 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v4 + 8 * ((39 * ((v1 & 0xFFFFFFF8) - 8 == v2)) | v3)))();
}

uint64_t sub_196363220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = *v22;
  v26 = ((2 * *v24) & 0xF57FBFBE) + ((((v21 - 1877029349) & 0x6FE12EFE) - 88091419) ^ *v24) + 88088609;
  *(*v22 + v26) = a21;
  *(v25 + v26 + 1) = a19;
  *(v25 + v26 + 2) = a17;
  *(v25 + v26 + 3) = a15;
  *v24 += 4;
  return (*(v23 + 8 * (v21 ^ ((2 * (a14 != -1791141614)) | (16 * (a14 != -1791141614))))))();
}

uint64_t sub_196363524@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v2 - 1497239430) ^ 0x17A3)) ^ (v2 - 1497242510))))();
}

uint64_t sub_1963635E4()
{
  v4 = *v9;
  v5 = *v10;
  v6 = 583883621 * (((v12 | 0x5469532B) - v12 + (v12 & 0xAB96ACD0)) ^ 0xF55A8F84);
  v13 = v11;
  v12[2] = -42847 - v6;
  v12[3] = v5 + v6;
  v12[0] = v4 - v6;
  v12[1] = (v0 + 1748885978) ^ v6;
  (*(v3 + 8 * (v0 + 1821)))(v12);
  (*(v3 + 8 * (v0 ^ 0xB1E)))(v8, v1, 0, *(v2 + 8 * (v0 & 0x5D2F45E7)), v11, 20);
  return 4294924449;
}

uint64_t sub_19636378C@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0x3E0u) - 2636 - 1970) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((992 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0x3E0)))();
}

uint64_t sub_196363868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (*(v15 + 8 * (v14 ^ 0xBF9)))(a14, a13);
  *v16 = v17;
  return (*(v15 + 8 * (((v17 == 0) * ((v14 ^ 0x1CBA) - 3589)) ^ v14)))();
}

uint64_t sub_196363958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  v30 = *a28;
  v31 = a25 + 989737029 - ((a25 << ((3 * (v28 ^ 0x43)) ^ 0xAE)) & 0x75FC608A);
  v32 = ((2 * *a23) & 0xF5FCFFBE) + (*a23 ^ 0xFAFE7FDF) + 83984417;
  *(*a28 + v32) = (v28 + 32) ^ HIBYTE(v31) ^ 0xFC;
  *(v30 + v32 + 1) = BYTE2(v31) ^ 0xFE;
  *(v30 + v32 + 2) = BYTE1(v31) ^ 0x30;
  *(v30 + v32 + 3) = v31 ^ 0x45;
  v33 = (*a23 + 4);
  *a23 = v33;
  v34 = a19 > *a28 + ((2 * v33) & 0x13FF3DFFCLL) + (v33 ^ 0xBEEBEFBF9FF9EFFELL) + 0x4114104060061002;
  return (*(v29 + 8 * (((4 * v34) | (8 * v34)) ^ v28)))();
}

uint64_t sub_196363B40@<X0>(int a1@<W8>)
{
  *(v4 - 216) = 0;
  v5 = *(v3 + 8 * ((39 * (*v1 != 0)) ^ a1));
  *(v4 - 244) = v2;
  return v5();
}

uint64_t sub_196363C40@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = (v2 ^ 0x89ELL) == (v1 & 0xFFFFFFE0);
  return (*(v4 + 8 * (((32 * v6) | (v6 << 10)) ^ v2)))();
}

uint64_t sub_196363C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v36 = *(v33 + 8 * (v32 + 424));
  *(v34 - 216) = a1;
  v37 = v36(v31, 3886098504);
  return (*(v33 + 8 * (((v37 == 0) * ((((v32 - 6179) | 0x1500) + 106) ^ (v32 + 1982799187) & 0x89D0DFF6)) ^ v32)))(*(v34 - 216), 1840, 4294962917, a4, 3673, 13, 2147489407, 5423, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v35, a4);
}

uint64_t sub_196363D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v23 - 144) = v19;
  *(v23 - 136) = (v21 + 1311676340) ^ (1468321087 * (((v20 | 0xCCF5A5D3) - (v20 & 0xCCF5A5D3)) ^ 0x181AE4BD));
  (*(v22 + 8 * (v21 ^ 0x18D1)))(v23 - 144);
  v24 = (*(v22 + 8 * (v21 + 6184)))(*(&off_1F0B1A0C0)[v21 ^ 0x1C9], (&off_1F0B1A0C0)[v21 - 159] - 4, a19);
  v25 = ((2 * v24) & 0x93D47FEA) + (v24 ^ 0x49EA3FF5);
  *(v23 - 136) = (v21 - 50583962) ^ (912648571 * ((2 * (v20 & 0x4EF81880) - v20 + 822601598) ^ 0xEDCAAB4B));
  *(v23 - 144) = v19;
  v26 = (*(v22 + 8 * (v21 + 6255)))(v23 - 144);
  return (*(v22 + 8 * (((v25 == 1240088565) * (257 * (((v21 + 218) | 0x481) ^ 0x6D5) - 2314)) ^ v21)))(v26);
}

uint64_t sub_196363EF8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 4726)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 ^ 0xCE) - 1881)) ^ v1)))();
}

uint64_t sub_196364068@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = *(a21 + 32);
  v26 = ((v22 - 1619) ^ 0xB63DC7C5) + a1;
  *(v21 + 12) = v26 + v24;
  v27 = (*(v23 + 8 * (v22 ^ 0x11BF)))(v26, 3886098504);
  *v25 = v27;
  return (*(v23 + 8 * ((225 * (v27 == 0)) ^ v22)))();
}

uint64_t sub_19636436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unint64_t a22, char *a23)
{
  v29 = 583883621 * ((2 * (&a20 & 0xF1F2D588986B270) - &a20 + 0x70E0D2A776794D8DLL) ^ 0x8B4BA41DD74A9122);
  a22 = v29 ^ v25;
  a23 = &a14;
  a20 = (v24 + 273735441) ^ v29;
  a21 = a11 - v29;
  (*(v27 + 8 * (v24 ^ 0x1106u)))(&a20);
  v30 = (*(v27 + 8 * (v24 ^ 0x1143u)))(a12, v23, 0, *(v26 + 8 * (v24 ^ 0x885u)) - 12, &a14, 18);
  return (*(v27 + 8 * ((((((v24 ^ 0xEB) + 1) ^ (*v28 == 0)) & 1) * (v24 - 1792)) ^ v24)))(v30);
}

uint64_t sub_196364488@<X0>(int a1@<W8>)
{
  *v2 = 0;
  v2[1] = 0;
  v4 = (*(v3 + 8 * (a1 & 0xDFE77ED7 ^ v1)))(v2);
  return sub_1963644D4(v4, 2367137852, 214723087);
}

uint64_t sub_1963645B0(uint64_t a1, int a2, uint64_t a3)
{
  v7 = (v5 - 32);
  v8 = a3 - 32;
  v9 = *(v8 + v4);
  *(v7 - 1) = *(v8 + v4 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((a1 == 32) * a2) ^ (v3 + 1374091056))))();
}

uint64_t sub_196364688()
{
  v5 = (&v9 + 272396144 - 2 * (&v9 & 0x103C6F70)) ^ 0xCCF12345;
  v9 = (v4 + 1318476227) ^ (912648571 * v5);
  v11 = -912648571 * v5;
  v10 = v8;
  (*(v3 + 8 * (v4 + 3099)))(&v9);
  result = (*(v3 + 8 * (v4 + 3032)))(v7, v1, 0, *(v2 + 8 * (v4 ^ 0xD7A)), v8, 8);
  *(v0 + 8) = 0;
  return result;
}

uint64_t sub_196364994@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0x13A7)))();
  *v1 = 0;
  return sub_1963649B0(v3);
}

uint64_t sub_1963649B0()
{
  *v1 = 0;
  v1[1] = 0;
  (*(v3 + 8 * (v0 ^ (v5 + 3683))))(v1);
  return v2(v4);
}

uint64_t sub_1963649E0()
{
  v5 = 912648571 * (((&v9 | 0xE1238FC9) + (~&v9 | 0x1EDC7036)) ^ 0x3DEEC3FD);
  v11 = -42847 - v5;
  v10 = v8;
  v9 = (v2 - 1025508492) ^ v5;
  (*(v4 + 8 * (v2 ^ (v1 + 2516))))(&v9);
  (*(v4 + 8 * (v2 + 1950985609)))(v7, v0, 0, *(v3 + 8 * (v2 ^ (v1 + 26))) - 8, v8, 8);
  return 4294924449;
}

uint64_t sub_196364B70()
{
  v4 = *(v3 - 180) + *(v1 + 12) + ((*(v3 - 180) < (v0 ^ 0x1AE1u) + 1237465095) << 32) + 1695633914;
  v6 = v4 >= 0xAED38C1F && v4 <= *(v1 + 8) + 2933099551u;
  return (*(v2 + 8 * ((487 * v6) ^ v0)))();
}

uint64_t sub_196364D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v5 - 1865673980) & 0x6F33ECEF;
  *(a1 - 7 + ~v4 + v3 + v2) = *(a2 - 7 + ~v4 + v3);
  v8 = v4 + 47 * (v7 ^ 0xCB8u) - 1026 != (v3 & 0xFFFFFFF8);
  return (*(v6 + 8 * (((4 * v8) | (16 * v8)) ^ v7)))();
}

uint64_t sub_196364E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, _DWORD *a19)
{
  v21 = *a3;
  v22 = a7 + 989737029 - ((241 * (((v19 - 2547) | 0x200) ^ 0x615) + 1979471407) & (2 * a7));
  v23 = ((2 * *a19) & 0xF7F5BFBE) + (*a19 ^ 0x7BFADFDF) - 2080038879;
  *(*a3 + v23) = HIBYTE(v22) ^ 0x3A;
  *(v21 + v23 + 1) = BYTE2(v22) ^ 0xFE;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0x30;
  *(v21 + v23 + 3) = (a7 + 69 - ((-15 * ((v19 + 13) ^ 0x15) + 47) & (2 * a7))) ^ 0x45;
  v24 = (*a19 + 4);
  *a19 = v24;
  return (*(v20 + 8 * ((57 * (a18 > *a3 + ((2 * v24) & 0xF73EF7DALL) + (v24 ^ 0x63EBB3F67B9F7BEDuLL) - 0x63EBB3F67B9F7BEDLL)) ^ v19)))(a17, a2, a3, a4, a5, a6, a7, a19, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1963650DC(uint64_t a1, int a2)
{
  v6 = a2 - 1459;
  v7 = ((a2 + 383554022) & 0xE9236FD5) - 3669;
  v8 = *(v3 + v7 + v4 - 31);
  v9 = v2 + v7 + v4;
  *(v9 - 15) = *(v3 + v7 + v4 - 15);
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((5656 * ((v4 & 0xFFFFFFE0) == 32)) ^ v6)))();
}

uint64_t sub_1963651A0()
{
  v6 = (*(v4 + 8 * (v0 ^ 0x1289)))(*v3);
  *v3 = v2;
  *(v3 + 8) = v1;
  return v5(v6);
}

uint64_t sub_196365204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  a24 = (v25 + 1311674223) ^ (1468321087 * ((((v26 | 0xA2D2454A) ^ 0xFFFFFFFE) - (~v26 | 0x5D2DBAB5)) ^ 0x89C2FBDB));
  a23 = v24;
  (*(v27 + 8 * (v25 ^ 0x1014)))(&a23);
  v28 = (*(v27 + 8 * (v25 + 4067)))(*(&off_1F0B1A0C0)[v25 - 2316], (&off_1F0B1A0C0)[v25 - 2276] - 4, a14);
  v29 = ((2 * v28) & 0x9BB4745E) + (v28 ^ (((2 * v25) ^ 0x1864) + 1306144497));
  a23 = v24;
  a24 = (v25 - 50586079) ^ (912648571 * (((v26 | 0x67E0AA94) - (v26 & 0x67E0AA94)) ^ 0xBB2DE6A1));
  v30 = (*(v27 + 8 * (v25 + 4138)))(&a23);
  return (*(v27 + 8 * ((71 * (v29 == ((2 * v25) ^ 0x13A6) + 1306147123)) ^ v25)))(v30);
}

uint64_t sub_196365378@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((120 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_1963653A0@<X0>(int a1@<W3>, int a2@<W4>, uint64_t a3@<X8>)
{
  v8 = v4 - 1;
  *(a3 + v8 + v3) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 == 0) * (((v5 + a1) & a2) - 3)) ^ v5)))();
}

uint64_t sub_1963653D4(uint64_t a1, int a2)
{
  v7 = v4 | 0x45;
  v9 = (v3 ^ v2) < 8 || v5 < ((19 * (v7 ^ (a2 - 2713) ^ 0xAE191BED)) ^ 0x55EuLL);
  return (*(v6 + 8 * ((209 * v9) ^ v7)))();
}

uint64_t sub_196365558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4 + 8;
  *(a1 + (a3 ^ v8) + v3) = *(v6 + (a3 ^ v8) + v3);
  return (*(v7 + 8 * ((15 * (a2 == v8)) ^ v5)))();
}

uint64_t sub_196365560@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t *a40, uint64_t (*a41)(void))
{
  v41 = (a1 + 1478270253) & 0x20309F3F;
  v42 = *a40;
  v43 = (a29 ^ 0x88430EE) & (2 * (a29 & 0xAAC6A4CF)) ^ a29 & 0xAAC6A4CF;
  v44 = ((2 * ((v41 + 134223817) ^ a29)) ^ 0x458D286E) & ((v41 + 134223817) ^ a29) ^ (2 * ((v41 + 134223817) ^ a29)) & 0xA2C69436;
  v45 = v44 ^ 0xA2429411;
  v46 = (v44 ^ 0x40024) & (4 * v43) ^ v43;
  v47 = ((4 * v45) ^ 0x8B1A50DC) & v45 ^ (4 * v45) & 0xA2C69434;
  v48 = (v47 ^ 0x82021010) & (16 * v46) ^ v46;
  v49 = ((16 * (v47 ^ 0x20C48423)) ^ 0x2C694370) & (v47 ^ 0x20C48423) ^ (16 * (v47 ^ 0x20C48423)) & 0xA2C69430;
  v50 = v48 ^ 0xA2C69437 ^ (v49 ^ 0x20400000) & (v48 << 8);
  v51 = a29 ^ (2 * ((v50 << 16) & 0x22C60000 ^ v50 ^ ((v50 << 16) ^ 0x14370000) & (((v49 ^ 0x82869407) << 8) & 0x22C60000 ^ 0x20420000 ^ (((v49 ^ 0x82869407) << 8) ^ 0x46940000) & (v49 ^ 0x82869407))));
  v52 = ((2 * *a23) & 0xF5FDBEFE) + (*a23 ^ 0xFAFEDF7F) + 83959937;
  *(*a40 + v52 + 1) = BYTE2(v51) ^ 0x47;
  *(v42 + v52 + 2) = BYTE1(v51) ^ 0x8C;
  *(v42 + v52) = HIBYTE(v51) ^ 0xEF;
  *(v42 + v52 + 3) = v51 ^ 0xA1;
  *a23 += 4;
  return a41();
}

uint64_t sub_196365758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = (a7 | ((a7 < 0x49C23A25) << 32)) + *(v8 + 12) + 2398280832u;
  v13 = v11 < 0xD8B516A5 || v11 > *(v8 + 8) + 3635746469u;
  v14 = *(v9 + 8 * (((((((v7 + 105072161) & 0xF9BCB6F7) - 3757) ^ v13) & 1) == 0) | (2 * ((((((v7 + 105072161) & 0xF9BCB6F7) - 3757) ^ v13) & 1) == 0)) | v7));
  *(v10 - 208) = v8;
  return v14(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_196365888@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = 19 * (a1 ^ 0x3F);
  v11 = (*(v9 + 8 * (v10 + 1894)))(16, 3886098504);
  HIDWORD(a9) = 1237422985;
  return (*(v9 + 8 * (((v11 == 0) * ((v10 + 1548406037) & 0xA3B533C7 ^ (v10 - 617722508) & 0x24D1ABEF ^ 0x183A)) ^ v10)))(v11, v12, v13, v14, v15, v16, v17, v18, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_196365900(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v10 = v8 - 8;
  *(v6 + v10) = *(a1 + v10);
  return (*(v9 + 8 * (((a3 & ~((((a2 + 8) | (v7 + v10)) >> 63) ^ v4)) * a4) ^ v5)))();
}

uint64_t sub_1963659AC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 - 2667) | 0x120u) - 1324 + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v4 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v3 + 8 * ((5986 * ((v1 & 0xFFFFFFE0) == 32)) ^ v2)))();
}

uint64_t sub_196365A08()
{
  v4 = ((v1 + 1272008593) - 464943584) ^ v0;
  v6 = v2 >= (v1 - 909) - 4203 && v4 > 7;
  return (*(v3 + 8 * ((35 * v6) | v1)))();
}

uint64_t sub_196365A5C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 + (v3 ^ a1) - 1721;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((30 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_196365AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v36 = a33 | 0x8802224;
  v37 = *(v35 - 172);
  v38 = *(v35 - 204);
  *(v35 - 200) = v33;
  v39 = (*(v34 + 8 * (v36 - 1237459016)))(*(&off_1F0B1A0C0)[v36 - 1237465622], *(v35 - 168), v37);
  return (*(v34 + 8 * ((7996 * (((v36 + 2) ^ (((v38 - v36) | (v36 - v38)) >> (((v36 + 114) & 0x7E) + 9))) & 1)) ^ (v36 - 1237462009))))(v39);
}

uint64_t sub_196365BB0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 + 1332;
  v7 = a1 + 70;
  v8 = (*(v5 + 8 * (a1 + 4308)))(16, 3886098504);
  return (*(v5 + 8 * (((v8 == 0) * (v6 ^ 0xE23)) | v7)))(v8, v9, v10, v11, v12, v13, v14, v15, a2, a3, a4, a5);
}

void sub_196365CD8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) ^ (566710099 * ((a1 + 484772112 - 2 * (a1 & 0x1CE50910)) ^ 0x90A0519C));
  v3[0] = v1 - 891395573 * ((2 * (v3 & 0x5A94F288) - v3 + 627772784) ^ 0x1F4612CB) + 2081;
  v2 = (&off_1F0B1A0C0)[v1 - 2190] - 8;
  (*&v2[8 * (v1 ^ 0x1125)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196365DFC()
{
  *(v2 - 216) = 0;
  *(v2 - 244) = v1;
  return v0();
}

uint64_t sub_196365E18@<X0>(int a1@<W8>)
{
  v3 = a1 & 0x8656B7;
  v4 = a1 & 0xB7 ^ 0x29;
  v5 = (a1 & 0xB7) - 56;
  *(v2 - 144) = (a1 & 0x8656B7) - 891395573 * ((v2 - 144) ^ 0x3A2D1FBB) - 922;
  v6 = (*(v1 + 8 * (a1 & 0x8656B7 ^ 0xD6Au)))(v2 - 144);
  return (*(v1 + 8 * ((123 * (((v4 + v5) ^ (*(v2 - 140) == 1163564281)) & 1)) ^ v3)))(v6);
}

uint64_t sub_19636601C()
{
  *(v7 - 152) = v2;
  *(v7 - 144) = (v6 + 1311675853) ^ (1468321087 * (((v0 | 0x6FAC3C71) - v0 + (v0 & 0x9053C388)) ^ 0xBB437D1F));
  (*(v4 + 8 * (v6 ^ 0x1AF6u)))(v7 - 152);
  v8 = (*(v4 + 8 * (v6 + 5697)))(**(v1 + 8 * (v6 - 686)), *(v1 + 8 * (v6 - 646)) - 4, v3);
  v9 = ((2 * v8) & 0xFBC574FE) + (v8 ^ 0xFDE2BA7F);
  *(v7 - 152) = v2;
  *(v7 - 144) = (v6 - 50584449) ^ (912648571 * (v0 ^ 0xDCCD4C35));
  v10 = (*(v4 + 8 * (v6 ^ 0x1A98u)))(v7 - 152);
  return (*(v4 + 8 * (((v9 == -35472769) * ((v5 + (v6 ^ 0x510) - 1042205409) ^ (2 * (v6 ^ 0x510)))) ^ v6)))(v10);
}

uint64_t sub_1963661CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  v27 = *(v25 + 8 * (v26 + v23 - 19));
  v28 = &a23 + ((((8 * v24) ^ 0xA3E3FF2506507FA8) + 16) ^ 0x4F5BFED1FBEFC195) + ((2 * (((8 * v24) ^ 0xA3E3FF2506507FA8) + 16)) & 0x9EB7FDA3F7DF8320) + a5 - 0x42404AC020670010;
  *v28 = a20 ^ 0x45;
  v28[1] = a19 ^ 0xCE;
  v28[2] = a18 ^ 0x4C;
  v28[3] = a17 ^ 0xAB;
  v28[4] = a16 ^ 0x84;
  v28[5] = a15 ^ 0xC5;
  v28[6] = a14 ^ 0x62;
  v28[7] = a13 ^ 0x75;
  return v27(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1963663F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = v5 + 32;
  v10 = (a1 ^ v9) + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = a3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v7 == v9) * a2) ^ v6)))();
}

uint64_t sub_1963664BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (*(v14 + 8 * (v12 ^ 0x159F)))(a12, a11);
  *v15 = v16;
  return (*(v14 + 8 * (((v16 == 0) * (((v12 - 1878516301) | 0x6036005C) + (v12 ^ 0x29F ^ (v13 - 3553)))) ^ v12)))();
}

uint64_t sub_196366524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  *(v24 + 8) = a23;
  *(v24 + 12) = 0;
  v26 = v23 + 2760;
  v27 = v23 - 8;
  v28 = (*(v25 + 8 * ((v23 + 5022) ^ 0xDB5)))(*(&off_1F0B1A0C0)[(v23 + 5022) ^ 0x1467], a21, a23);
  return (*(v25 + 8 * ((6011 * ((v26 ^ 0x49C231B7) == 1237465637)) ^ v27)))(v28);
}

uint64_t sub_1963665B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27, char *a28)
{
  a27 = v28 + 1384597421 * ((-2 - ((&a27 ^ 0x6002111C | 0x93ADA6E3) + (&a27 ^ 0x8184A402 | 0x6C52591C))) ^ 0xFCB71398) - 1501087094;
  a28 = &a19;
  (*(v33 + 8 * (v28 ^ 0x1DE7u)))(&a27);
  v34 = (*(v33 + 8 * (v28 ^ 0x1DAAu)))(v32, v31, 0, *(v30 + 8 * (v28 ^ 0x4DBu)) - 12, &a19, 2);
  return (*(v33 + 8 * ((((v28 ^ v29 ^ 0x10CBB559) - 281786020) * (a14 == 0)) | v28 ^ v29)))(v34);
}

uint64_t sub_19636670C()
{
  v4 = 269 * (v0 ^ 0xC98);
  (*(v2 + 8 * (v0 ^ 0x1573)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v2 + 8 * (v4 + 3133)))(v1);
  return v3(v5);
}

uint64_t sub_19636678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t))
{
  v19 = (*(v16 + 8 * (v14 ^ 0x1074)))(*v18);
  *v18 = v17;
  *(v18 + 8) = v15;
  return a14(v19);
}

uint64_t sub_1963667D0(int a1, uint64_t a2)
{
  v7 = (v4 - 32);
  v8 = a2 - 32;
  v9 = *(v8 + v2);
  *(v7 - 1) = *(v8 + v2 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((v5 == 32) * a1) ^ v3)))();
}

uint64_t sub_19636690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(a5 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((2 * v6) ^ 0x1807)) ^ v6)))();
}

uint64_t sub_19636698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (*(v13 + 52864))(a12, a11);
  *v12 = v14;
  return (*(v13 + 8 * ((13 * (v14 != 0)) ^ 0x17F6u)))();
}

uint64_t sub_1963669D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(a21 + 32) ^ a14;
  v24 = a1 ^ 0xB78;
  v34 = (4 * v23) ^ 0x233CC42BCLL;
  HIDWORD(v39) = BYTE3(v23) ^ 0xFFFFFF8C;
  LODWORD(v39) = a1 ^ 0xB78 ^ WORD1(v23) ^ 9;
  LODWORD(v38) = v23 ^ 0xFFFFFFAF;
  HIDWORD(v38) = (v23 >> 8) ^ 0x10;
  HIDWORD(v37) = (((v23 ^ 0x2D3B67EF) - 758867951) ^ ((v23 ^ 0x20798ED2) - 544837330) ^ ((v23 ^ 0x81B1F992) + 2119042670)) + 573598145;
  HIDWORD(a2) = (4 * v23) ^ 0x33CC42BC;
  HIDWORD(v36) = v21 - 1897002748;
  LODWORD(v36) = v21 ^ 0x1A1A;
  HIDWORD(v35) = v21 - 267943163;
  LODWORD(v37) = 283 * (v21 ^ 0xAF8);
  LODWORD(v35) = v21 ^ 0xA04;
  v25 = (*(v22 + 8 * (a1 ^ 0x184C)))(16, 3886098504);
  HIDWORD(a13) = 1237422985;
  return (*(v22 + 8 * (((v25 == 0) * (v24 ^ 0xAC7)) ^ (v24 + 605))))(v25, v26, v27, v28, v29, v30, v31, v32, a2, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_196366AF4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v5 + 8;
  *(a1 + (v10 ^ a3 ^ v8) + v4) = *(v7 + (v10 ^ a3 ^ v8) + v4);
  return (*(v9 + 8 * (((a2 == v10) * a4) ^ v6)))();
}

uint64_t sub_196366B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, int a23, char a24, uint64_t a25, uint64_t a26, int a27, uint64_t a28, char *a29, char *a30, int a31, int a32, int a33)
{
  (*(v36 + 8 * (v35 ^ 0xA9C)))(v33);
  v38 = *(v37 + 3) + ((v35 - 908) ^ 0x23BE2755) - ((2 * *(v37 + 3)) & 0x477C5122);
  v39 = 1311869473 * ((~(&a27 | 0x6F4DADC6) + (&a27 & 0x6F4DADC6)) ^ 0x7B5D4895);
  v40 = 563297187 - v39 + 622816387 * *v34;
  a28 = *v37;
  a29 = &a21;
  a33 = v40;
  a31 = v39 + v35 + 692;
  a30 = &a24;
  a27 = v38 ^ v39;
  (*(v36 + 8 * (v35 ^ 0xAA4)))(&a27);
  v41 = a32;
  v42 = (*(v36 + 8 * (v35 ^ 0xA9A)))(v33);
  return (*(v36 + 8 * (((v41 == ((v35 - 908) ^ 0x1BAC) + 1625068824) * ((v35 - 4750) ^ 0x1C2E)) ^ (v35 - 908))))(v42);
}

uint64_t sub_196366DF0()
{
  v6 = (*(v3 + 8 * (v0 ^ 0x1F49)))(*v4);
  *v4 = v2;
  *(v4 + 8) = v1;
  return v5(v6);
}

uint64_t sub_196366E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v12 ^ 0x1315)))(a12, a11);
  *v14 = v15;
  return (*(v13 + 8 * ((29 * (((v15 == 0) ^ (v12 - 116)) & 1)) ^ v12)))();
}

uint64_t sub_196366E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  v18 = *a4;
  v19 = ((2 * *a16) & 0xF7F7FADE) + (*a16 ^ 0x7BFBFD6F);
  *(*a4 + v19 - 2080111983) = 0;
  *(v18 + v19 - 2080111982) = 0;
  *(v18 + (v16 ^ 0x423) - 2080113761 + ((v16 - 1329) | 0x152) + v19) = 0;
  *(v18 + v19 - 2080111980) = 8;
  v20 = (*a16 + 4);
  *a16 = v20;
  v21 = a7 > *a4 - 0x3BFFE67D3DFDADFBLL + ((2 * v20) & 0x7BFB5BF8) + (v20 ^ 0x3BFFE67D3DFDADFCuLL) - 1;
  return (*(v17 + 8 * ((v21 | (2 * v21)) ^ v16)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_196366FE4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X1>, int a3@<W2>, int a4@<W8>)
{
  v6 = *v4;
  v7 = ((a3 ^ 0x5D615D8B) - 214227685) ^ a3 ^ ((a3 ^ 0xA168D93A) + 254976428) ^ ((a3 ^ 0x7FDFB6FF) - 779760017) ^ (((a4 + 2419) ^ 0x7C29D9D7) + (a3 ^ 0xD273B520));
  v8 = ((2 * *a2) & 0xF5F6BA9E) + (*a2 ^ 0x7AFB5D4F) - 2063293775;
  *(*v4 + v8) = HIBYTE(v7) ^ 0x51;
  *(v6 + v8 + 1) = BYTE2(v7) ^ 0xA5;
  *(v6 + v8 + 2) = BYTE1(v7) ^ 0x87;
  *(v6 + v8 + 3) = v7 ^ 0x6E;
  *a2 += 4;
  *(v5 - 232) = a2;
  *(v5 - 224) = a1;
  return a1();
}

uint64_t sub_19636719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = v27 ^ 0xCA5;
  v31 = (*v26 << 56) | (v26[1] << 48) | (v26[2] << 40) | (v26[3] << 32) | (v26[4] << 24) | (v26[5] << 16) | (v26[6] << (v27 ^ 0x21u));
  v32 = v26[7] - ((2 * v26[7]) & 0x1A8) + 0x1B1479D21F1EF9D4;
  **(a26 + 32) = v32 & 0x1F2 ^ 0x4AF9C64E2F3CDFDDLL ^ ((v31 - ((2 * v31) & 0xFFFAD6776E1550FCLL) - 0x294C448F557BALL) ^ 0xB504AD759836764BLL) & (v32 ^ 0xE4EB862DE0E1062BLL);
  return (*(v28 + 8 * (((*(v29 - 152) == 0) * (v30 - 2639)) ^ v30)))();
}

uint64_t sub_196367314(uint64_t a1, int a2)
{
  v6 = (a2 - 3000) | 8;
  v7 = *v3 + a1;
  *(v3 + 12) = a1 + v6 - 1156;
  v9 = (v6 ^ v2 ^ 0x49C236EB ^ (v6 - 947)) != 0x49C23A25 || v7 == 0;
  return (*(v5 + 8 * ((v9 * v4) ^ v6)))();
}

uint64_t sub_19636742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v13 + 8 * (v11 ^ 0x1556)))(a11, v12);
  *v14 = v15;
  return (*(v13 + 8 * (((((v15 == 0) ^ (v11 + 1)) & 1) * (((v11 - 497699985) & 0x1DAA46FB) - 1762)) ^ v11)))();
}

uint64_t sub_196367500()
{
  v5 = v2 & 0xAB96BEF9;
  v7 = (v1 ^ v0) > 7 && v3 >= ((v5 - 5185) | 0xF10) - 3824;
  return (*(v4 + 8 * ((v7 * (((v5 + 284076990) & 0xEF114DFF) - 3577)) | v5)))();
}

uint64_t sub_1963676D0()
{
  v8 = *v2;
  if (*v2 >= 0x40)
  {
    v9 = 64;
  }

  else
  {
    v9 = *v2;
  }

  v10 = *v1;
  v11 = 1466156297 * ((v7 - 144) ^ 0x8AC575CBD3B78051);
  *(v7 - 144) = v13;
  *(v7 - 136) = v11 + 1747998799 + v0;
  *(v7 - 128) = v10 + v11;
  *(v7 - 120) = v8 + v11;
  *(v7 - 116) = v9 + v11;
  *(v7 - 112) = v5 - v11 + (((v0 + 159980497) | 0x3660C0C1) ^ 0x89D42412);
  (*(v6 + 8 * (v0 ^ 0x1F15)))(v7 - 144);
  (*(v6 + 8 * (v0 + 5233)))(v3, v4, 0, (&off_1F0B1A0C0)[v0 - 1249] - 4, v13, 30);
  return (v5 - 1237465637);
}

uint64_t sub_19636780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  v30 = *a29;
  v31 = a24 + 989737029 - ((a24 << (((a9 - 97) | 4) - 38)) & 0x75FC608A);
  v32 = ((2 * *a26) & 0xD7F4FE9E) + (*a26 ^ 0x6BFA7F4F) - 1811578703;
  *(*a29 + v32) = HIBYTE(v31) ^ 0x3A;
  *(v30 + v32 + 1) = BYTE2(v31) ^ 0xFE;
  *(v30 + v32 + 2) = BYTE1(v31) ^ 0x30;
  *(v30 + v32 + 3) = v31 ^ 0x45;
  *a26 += 4;
  return v29(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_196367A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v17 - 136) = (v13 + 1311672980) ^ (1468321087 * (((v16 ^ 0xF8F7A4D9) + 935891129 - 2 * ((v16 ^ 0xF8F7A4D9) & 0x37C890B9)) ^ 0x1BD0750E));
  *(v17 - 144) = v14;
  (*(v15 + 8 * (v13 + 2865)))(v17 - 144);
  v18 = (*(v15 + 8 * (v13 ^ 0x1718)))(*(&off_1F0B1A0C0)[v13 ^ 0xE29], (&off_1F0B1A0C0)[v13 - 3519] - 4, a13);
  v21 = ((2 * v18) & 0x93D5FDEE) + (v18 ^ 0xC9EAFEF7);
  *(v17 - 144) = v14;
  *(v17 - 136) = (v13 - 50587322) ^ (912648571 * ((((2 * v16) | 0x800FF080) - v16 + 1073219520) ^ 0x1CCAB475));
  v19 = (*(v15 + 8 * (v13 ^ 0x175F)))(v17 - 144);
  return (*(v15 + 8 * (((v21 == -907346185) * (((v13 - 222044847) & 0xD3C1CFE) + 4092)) ^ v13)))(v19);
}

uint64_t sub_196367C34()
{
  v6 = v1 - v0 - 2128;
  v7 = *(v11 + 32);
  v8 = 1864678469 * ((((v5 - 152) | 0x3F0105CCDA01B12) - (v5 - 152) + ((v5 - 152) & 0xFC0FEFA3325FE4E8)) ^ 0x7B002F6FFED00CFBLL);
  *(v5 - 152) = (v1 + 634664015) ^ v8;
  *(v5 - 128) = v5 - 176;
  *(v5 - 136) = v3 - v8 + (v6 ^ 0xE5429039);
  *(v5 - 144) = v7 ^ v8;
  (*(v4 + 8 * (v1 + 4008)))(v5 - 152);
  (*(v4 + 8 * (v1 ^ 0x13CE)))(v10, v2, 0, (&off_1F0B1A0C0)[v1 ^ 0xAEB] - 8, v5 - 176, 18);
  return (v3 - 1237465637);
}

uint64_t sub_196367D70@<X0>(uint64_t a1@<X8>)
{
  *(v6 + v2) = *(a1 + v2);
  v8 = v2 + (v3 ^ v4) * v5 - 1500;
  return (*(v7 + 8 * (((((v8 ^ v1) - v3) | (v3 - (v8 ^ v1))) >> 63) | v3 ^ (v4 + 3693))))();
}

uint64_t sub_196367DB4@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 ^ a1) - 655)) ^ v3)))();
}

uint64_t sub_196367DE0()
{
  *(v5 - 144) = v0;
  *(v5 - 136) = (v4 + 1311675906) ^ (1468321087 * ((((2 * (v5 - 144)) | 0x90FD7E5A) - (v5 - 144) - 1216266029) ^ 0x9C91FE43));
  (*(v2 + 8 * (v4 + 5791)))(v5 - 144);
  v6 = (*(v2 + 8 * (v4 + 5750)))(**(v3 + 8 * (v4 - 633)), *(v3 + 8 * (v4 - 593)) - 4, v1);
  v7 = ((2 * v6) & 0xFFEC75FA) + (v6 ^ 0x7FF63AFD);
  *(v5 - 136) = (v4 - 50584396) ^ (912648571 * ((~((v5 - 144) ^ 0xE62FC2D1 | 0xE26FA6C) + (((v5 - 144) ^ 0xE62FC2D1) & 0xE26FA6C)) ^ 0xCB3B8B77));
  *(v5 - 144) = v0;
  v8 = (*(v2 + 8 * (v4 + 5821)))(v5 - 144);
  return (*(v2 + 8 * ((91 * (v7 == (((v4 - 783) | 0xF40) ^ 0x7FF635B6))) ^ v4)))(v8);
}

void jSNXSLgDwR()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + qword_1EAF169A0) ^ 0x30)) - 8) ^ 0x7Du) - 8) ^ (91 * ((dword_1EAF16720 + qword_1EAF169A0) ^ 0x30))) + 100];
  v1 = &v4[*(v0 - 4) ^ qword_1EAF169A0];
  v2 = 636859739 * (v1 + 0x1D38D65F7E9650D0);
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF169A0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196368170(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = v32 + 2486;
  v36 = -29 * ((v32 - 74) ^ 0x58) + 116;
  v38 = (*(v34 + 8 * ((v32 + 2486) ^ 0xF81)))(v33, 3886098504);
  return (*(v34 + 8 * (((8 * (((v38 == 0) ^ v36) & 1)) & 0xDF | (32 * (((v38 == 0) ^ v36) & 1))) ^ v35)))(v38, v39, a3, 2147483649, a5, a6, 3216, 4294962070, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_196368210@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, _DWORD *a14)
{
  v14 = *a2;
  v15 = a13 - ((2 * a13) & 0x75FC608A) + 989737029;
  v16 = ((a3 - 671616963) & (2 * *a14)) + (*a14 ^ 0xEBFBFF7F) + 335806593;
  *(*a2 + v16) = HIBYTE(v15) ^ 0x3A;
  *(v14 + v16 + 1) = BYTE2(v15) ^ 0xFE;
  *(v14 + v16 + 2) = BYTE1(v15) ^ 0x30;
  *(v14 + v16 + 3) = v15 ^ 0x45;
  *a14 += 4;
  return a1();
}

uint64_t sub_1963682C0()
{
  v4 = (*(v1 + 52864))(v3, v0);
  *v2 = v4;
  return (*(v1 + 8 * ((868 * (v4 == 0)) ^ 0x144Au)))();
}

uint64_t sub_196368368()
{
  v5 = v1 ^ v0;
  v7 = v3 > 0x1F && v5 >= ((v2 + 2592) ^ 0x2D1) - 3557;
  return (*(v4 + 8 * ((42 * v7) ^ v2)))();
}

uint64_t sub_196368404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = (v15 ^ 0x2FD76F7FF7CEFBBBLL) + ((v15 << (((v18 + v14 - 95 + 33) | 0x81u) + 8)) & 0x1EF9DF776) - 0x2FD76F7F69D108E6;
  v21 = v19 < 0x8DFDF2D1 || v19 > *(v16 + 8) + 2382230225u;
  return (*(v17 + 8 * ((4635 * v21) ^ (v14 - 2399))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void N8pdwAfn()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 + qword_1EAF167D8) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_1EAF16720 + qword_1EAF167D8) ^ 0x30))) + 98];
  v1 = &v4[qword_1EAF167D8 + *(v0 - 4)];
  v2 = 636859739 * (v1 + 0x1D38D65F7E9650D0);
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF167D8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19636887C@<X0>(uint64_t a1@<X8>)
{
  v5 = ((314 * (v2 ^ 0xB68u)) ^ 0xFFFFFFFFFFFFF8A3) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((230 * ((v1 & 0xFFFFFFE0) == 32)) ^ v2)))();
}

uint64_t sub_1963688E0()
{
  v6 = (v1 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * v4) ^ v0)))();
}

uint64_t sub_196368928()
{
  v6 = 912648571 * (((&v9 ^ 0x87BEF1C7) + 224120157 - 2 * ((&v9 ^ 0x87BEF1C7) & 0xD5BCD5D)) ^ 0x562870AF);
  v9 = (v0 + 1318478495) ^ v6;
  v10 = v8;
  v11 = -1237466905 - v6 + v5 + v0;
  (*(v4 + 8 * (v0 + 5367)))(&v9);
  (*(v4 + 8 * (v0 + 5300)))(v2, v1, 0, *(v3 + 8 * (v0 - 1042)) - 12, v8, 8);
  return (v5 - 1237465637);
}

uint64_t sub_196368AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((2481 * (v6 == ((v4 - v2) ^ 0x3984263DLL))) ^ v4)))();
}

void f5dnLMQHpqo6KM9x()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF16538) ^ 0x30))) ^ 0xF5u) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF16538) ^ 0x30))) + 7];
  v3 = &v6[*(v2 - 4) - qword_1EAF16538];
  v4 = 636859739 * (v3 + 0x1D38D65F7E9650D0);
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF16538 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196368CC8(uint64_t result)
{
  v1 = *(result + 48);
  v3 = *(result + 16);
  v2 = *(result + 24);
  v4 = *(result + 40);
  v5 = *(result + 32);
  v6 = *(result + 8);
  v7 = 1427277979 * ((-2 - ((~result | 0x97671A8E77F13D2BLL) + (result | 0x6898E571880EC2D4))) ^ 0xB10DDD3827A07043);
  v9 = *result;
  v8 = *(result + 4);
  *v1 = 134219522;
  *(v1 + 4) = v2 + v7;
  *(v1 + 12) = 1040;
  *(v1 + 14) = v4 - v7;
  *(v1 + 18) = 2096;
  *(v1 + 20) = v6 - v7;
  *(v1 + 28) = 1024;
  *(v1 + 30) = v5 ^ v7;
  *(v1 + 34) = 1040;
  *(v1 + 36) = v8 - v7;
  *(v1 + 40) = 2096;
  *(v1 + 42) = v3 + v7;
  *(v1 + 50) = 1024;
  *(v1 + 52) = v9 ^ v7;
  return result;
}

void YejTSDq30PG()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (qword_1EAF16988 ^ 0x30 ^ dword_1EAF16720))) ^ 0xB9u) - 12) ^ (91 * (qword_1EAF16988 ^ 0x30 ^ dword_1EAF16720))) - 29];
  v3 = *(v2 - 4) - qword_1EAF16988 - &v6;
  v4 = 636859739 * (v3 + 0x1D38D65F7E9650D0);
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF16988 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19636902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = (a9 ^ 0x7DBDDE77FE9BF573) + ((((v37 - 251) | 0x804u) + 0x1FD37E1D9) & (2 * a9)) - 0x7DBDDE77E7A60FB2;
  v41 = v39 < 0x16F5E5BD || v39 > ((v37 - 1854600743) & 0x6E8AFD2F ^ 0x16F5ECB0) + *(a37 + 8);
  return (*(v38 + 8 * ((5176 * v41) ^ v37)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void sub_196369154(uint64_t a1)
{
  v1 = *(a1 + 12) - 583883621 * ((a1 + 1789216310 - 2 * (a1 & 0x6AA54636)) ^ 0xCB969A99);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19636923C()
{
  v3 = **(v2 - 176);
  v4 = *(v2 - 152);
  *(v2 - 220) = 1237465637;
  return (*(v1 + 8 * (((v4 > v3) * ((4 * ((((v0 - 1860) ^ 0x403) + 396949025) & 0xE85707B7 ^ 0x346)) ^ 0x38E)) ^ (v0 - 1860) ^ 0x403)))();
}

void rRYQuwj7HYeZMhTReWwPHi()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * (qword_1EAF167E8 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0x45u) - 4) ^ (91 * (qword_1EAF167E8 ^ 0x30 ^ dword_1EAF16720))) + 98];
  v1 = 636859739 * (qword_1EAF167E8 ^ &v2 ^ 0xE2C729A08169AF30 ^ *(v0 - 4));
  qword_1EAF167E8 = v1;
  *(v0 - 4) = v1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963696A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  *(v32 + 8) = 4096;
  *a31 = v32;
  return v31();
}

uint64_t sub_19636972C()
{
  v5 = (*(v2 + 52864))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * ((4475 * (v5 == 0)) ^ v4)))();
}

uint64_t sub_196369770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v32 = (*(v30 + 68) - a26 - 2088148901);
  v26 = v32 + (*(*(v31 - 200) + 12) ^ 0x5F7FFD9AABDFFBF7) + ((2 * *(*(v31 - 200) + 12)) & 0x157BFF7EELL) - 0x5F7FFD9AABDFFBF7;
  return (*(v29 + 8 * ((4101 * (((v26 - (v28 - 5493)) & ~v26) >> 63)) ^ (v28 - 5493) & 0x35A)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a20, v32);
}

uint64_t sub_1963697E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a18)
  {
    v27 = a16 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  return (*(v24 + 8 * (((v26 + ((v25 - 272644996) & 0x8BDCFDEF) - 2135) * v28) ^ v25)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_196369850()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[((91 * (dword_1EAF16930 ^ 0x30 ^ dword_1EAF16720)) ^ byte_196EC07F0[byte_196EC03C0[(91 * (dword_1EAF16930 ^ 0x30 ^ dword_1EAF16720))] ^ 0x75]) + 2];
  v1 = *(v0 - 4);
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (v1 ^ dword_1EAF16720 ^ 0x30)) - 8) ^ 0x6Fu) - 8) ^ (91 * (v1 ^ dword_1EAF16720 ^ 0x30))) - 10];
  v3 = &v5[v1 + *(v2 - 4)];
  *(v0 - 4) = (636859739 * v3) ^ 0xE2C729A08169AF30;
  *(v2 - 4) = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  v8 = 1864678469 * (((v6 | 0x2DE4328D) + (~v6 | 0xD21BCD72)) ^ 0x1E942565) + 1693;
  v7 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((*(v2 - 1) - *(v0 - 1)) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((*(v2 - 1) - *(v0 - 1)) ^ 0x30))) - 228];
  LOBYTE(v0) = 91 * ((*(v2 - 1) - *(v0 - 1)) ^ 0x30);
  return (*&(&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16930) ^ 0x30)) ^ byte_196EC06F0[byte_196EC02C0[(91 * ((dword_1EAF16720 + dword_1EAF16930) ^ 0x30))] ^ 0x6F]) - 9][8 * (*(off_1F0B1A230 + (*(off_1F0B1A108 + v0 - 8) ^ 0xF9u) - 4) ^ v0) + 53136])(v6);
}

uint64_t sub_196369B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32)
{
  v40 = 1941 * (v33 ^ 0x7D4u);
  v41 = ((v37 ^ 0x72AD0ED00A364451) - 0x2D2CBEEA85C0B479) ^ ((v37 ^ 0xFA6DC1AFAB5E2EF7) + 0x5A138E6ADB572121) ^ ((v37 ^ 0xC33D00A18E5483C4 ^ v40) + 0x63434F64FE5D9AADLL);
  v42 = &a25 + ((2 * (((8 * (v37 ^ 0x5F81B03A8FF6F028)) ^ 0xA3E3FF2506507FA8) + 16)) & 0x7B7FFAFFF731FBC0) + ((((8 * (v37 ^ 0x5F81B03A8FF6F028)) ^ 0xA3E3FF2506507FA8) + 16) ^ 0x3DBFFD7FFB98FDE7) - 0x3DBFFD7FFB98FDE7;
  *v42 = a20;
  v42[1] = a18;
  v42[2] = a16;
  v42[3] = v35;
  v42[4] = v36;
  v42[5] = a1;
  v42[6] = v34;
  v42[7] = v32;
  v43 = v41 - ((2 * v41 + 0x28F8FFC941941FECLL) & 0x8B9C9957098AC4EALL) + 0x5A4ACC90258F726BLL;
  a25 = HIBYTE(v43) ^ 0x45;
  a26 = BYTE6(v43) ^ 0xCE;
  a27 = BYTE5(v43) ^ 0x4C;
  a28 = BYTE4(v43) ^ 0xAB;
  a29 = BYTE3(v43) ^ 0x84;
  a30 = BYTE2(v43) ^ 0xC5;
  a31 = BYTE1(v43) ^ 0x62;
  a32 = v43 ^ 0x75;
  return (*(v38 + 8 * (((((((v40 + 76568365) & 0xFB6F9BF7) - 2531) | 0xE5A) ^ 0xE4C) * (v39 < 1154211619)) ^ (v40 + 76568365) & 0xFB6F9BF7)))(a1, BYTE6(v43) ^ 0xCELL, BYTE5(v43) ^ 0x4CLL, BYTE4(v43) ^ 0xABLL, BYTE3(v43) ^ 0x84, a6, BYTE2(v43) ^ 0xC5, BYTE1(v43) ^ 0x62, a9, a10, a11, a12, a13, a14, a15);
}

void sub_196369B1C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 1427277979 * ((a1 & 0xBA2A6C0B | ~(a1 | 0xBA2A6C0B)) ^ 0x1584DE9C);
  v3[0] = (346387183 * ((((v3 | 0x48C496C2) ^ 0xFFFFFFFE) - (~v3 | 0xB73B693D)) ^ 0x3253BCED)) ^ (v1 - 1827734643);
  v2 = (&off_1F0B1A0C0)[v1 - 2515] - 8;
  (*&v2[8 * (v1 ^ 0x107C)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196369C40@<X0>(int a1@<W0>, int a2@<W7>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a3 + v7 + v3) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((a1 + 2131) ^ a2)) ^ a1)))();
}

void sub_196369CA0(uint64_t a1)
{
  v1 = *(a1 + 32) - 1427277979 * ((211473223 - (a1 | 0xC9AD347) + (a1 | 0xF3652CB8)) ^ 0xA33461D0);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196369E28(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x119B)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((907 * (v1 ^ 0x857)) ^ (2 * (v1 ^ 0xBDE)) ^ 0x26)) ^ v1)))();
}