uint64_t remakerFamily_GetDefaultSourceVideoTrack(const void *a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_GetDefaultSourceVideoTrack_cold_1(&v11);
    return v11;
  }

  else
  {
    v5 = DerivedStorage;
    v6 = CFGetTypeID(a1);
    v7 = *(v5 + 9);
    v8 = *(v5 + 460);
    v9 = *(v5 + 427);

    return remakerFamily_GetDefaultSourceVideoTrackFromAsset(v6, v7, v8, v9, a2);
  }
}

uint64_t remakerFamily_SetFormatWriterProperty(const void *a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 1 && !CFEqual(a2, @"NextMovieFragmentSequenceNumber"))
  {
    remakerFamily_SetFormatWriterProperty_cold_1(&v21);
    return LODWORD(v21.value);
  }

  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == FigRemakerGetTypeID())
    {
      if (FigCFEqual())
      {
        v9 = FigSignalErrorAtGM();
        if (!v7)
        {
          return v9;
        }

        goto LABEL_32;
      }
    }
  }

  if (CFEqual(a2, @"MovieTimeScale"))
  {
    *(DerivedStorage + 392) = 1;
    *(DerivedStorage + 388) = 0;
  }

  if (CFEqual(a2, @"FileTypeCompatibleBrands") || CFEqual(a2, @"FileTypeMajorBrand") || CFEqual(a2, @"FileTypeMinorVersion"))
  {
    *(DerivedStorage + 393) = 1;
  }

  if (CFEqual(a2, @"JoinWritingThreadToNewWorkgroup"))
  {
    *(DerivedStorage + 394) = 1;
  }

  if (!CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    goto LABEL_27;
  }

  memset(&v21, 0, sizeof(v21));
  CMTimeMakeFromDictionary(&v21, a3);
  if ((v21.flags & 0x1D) == 1 && (time1 = v21, v19 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &v19)))
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  *(DerivedStorage + 241) = v11;
  if (!v7)
  {
    goto LABEL_27;
  }

  if (v10)
  {
    v12 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v12 = MEMORY[0x1E695E4D0];
  }

  FigBaseObject = FigFormatWriterGetFigBaseObject(v7);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v14(FigBaseObject, @"ConsolidateMovieFragments", *v12);
  if (!v15)
  {
LABEL_27:
    if (!v7)
    {
      return 0;
    }

    v16 = FigFormatWriterGetFigBaseObject(v7);
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v15 = v17(v16, a2, a3);
      goto LABEL_30;
    }

LABEL_31:
    v9 = 4294954514;
    goto LABEL_32;
  }

LABEL_30:
  v9 = v15;
LABEL_32:
  CFRelease(v7);
  return v9;
}

uint64_t remakerFamily_SetFormatWriterTrackProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_SetFormatWriterTrackProperty_cold_2(&v13);
    return v13;
  }

  else
  {
    v8 = DerivedStorage;
    if (CFEqual(a3, @"EditList") || CFEqual(a3, @"ReplacementFormatDescriptionArray") || *v8 < 3u)
    {
      v9 = *(v8 + 23);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {

        return v10(v9, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      remakerFamily_SetFormatWriterTrackProperty_cold_1(&v12);
      return v12;
    }
  }
}

uint64_t remakerFamily_CopyFormatWriterTrackProperty(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    remakerFamily_CopyFormatWriterTrackProperty_cold_2(&v15);
    return v15;
  }

  else
  {
    v10 = DerivedStorage;
    if (CFEqual(a3, @"FormatDescriptionArray") || *v10 < 3u)
    {
      v11 = *(v10 + 23);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {

        return v12(v11, a2, a3, a4, a5);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      remakerFamily_CopyFormatWriterTrackProperty_cold_1(&v14);
      return v14;
    }
  }
}

uint64_t remakerFamily_createDestinationTrackReferenceDictionary(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10[0] = a1;
  v10[1] = Mutable;
  if (Mutable)
  {
    v7 = Mutable;
    v11 = 0;
    CFDictionaryApplyFunction(a2, remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType, v10);
    v8 = v11;
    if (v11)
    {
      CFRelease(v7);
    }

    else
    {
      *a3 = v7;
    }
  }

  else
  {
    remakerFamily_createDestinationTrackReferenceDictionary_cold_1(&v12);
    return v12;
  }

  return v8;
}

void remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType(const void *a1, const __CFArray *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 16);
    if (v4)
    {
LABEL_3:
      *(a3 + 16) = v4;
      return;
    }

    v8 = *a3;
    v7 = *(a3 + 8);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v10 = Mutable;
      v23 = a1;
      Count = CFArrayGetCount(a2);
      if (Count >= 2)
      {
        v12 = Count / 2;
        v13 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v13 - 1);
          v15 = CFArrayGetValueAtIndex(a2, v13);
          v25 = 0;
          value = 0;
          if (!CFDictionaryGetValueIfPresent(v8, ValueAtIndex, &value))
          {
            value = 0;
          }

          if (CFDictionaryGetValueIfPresent(v8, v15, &v25) && value && v25 && !FigCFEqual())
          {
            CFArrayAppendValue(v10, value);
            CFArrayAppendValue(v10, v25);
          }

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v22 = v7;
      v16 = CFArrayGetCount(v10);
      if (v16 >= 2)
      {
        v17 = 0;
        v18 = v16 >> 1;
        do
        {
          v19 = 2 * v17 + 2;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, 2 * v17);
            CFArrayGetValueAtIndex(v10, (2 * v17) | 1);
            v24 = v17++;
            if (v17 < v18)
            {
              break;
            }

LABEL_23:
            v19 += 2;
            if (v17 == v18)
            {
              goto LABEL_26;
            }
          }

          v20 = v19;
          v21 = v17;
          while (1)
          {
            CFArrayGetValueAtIndex(v10, v20);
            CFArrayGetValueAtIndex(v10, v20 + 1);
            if (FigCFEqual())
            {
              if (FigCFEqual())
              {
                break;
              }
            }

            ++v21;
            v20 += 2;
            if (v21 >= v18)
            {
              goto LABEL_23;
            }
          }

          CFArrayRemoveValueAtIndex(v10, v20);
          CFArrayRemoveValueAtIndex(v10, v20);
          v18 = CFArrayGetCount(v10) / 2;
          v17 = v24;
        }

        while (v24 < v18);
      }

LABEL_26:
      if (CFArrayGetCount(v10))
      {
        CFDictionaryAddValue(v22, v23, v10);
      }

      CFRelease(v10);
    }

    else if (!remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType_cold_1(&value))
    {
      v4 = value;
      goto LABEL_3;
    }
  }
}

void remakerFamily_safeDispatchAsync(dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  if (context)
  {
    CFRetain(context);
  }

  dispatch_async_f(queue, context, work);

  dispatch_async_f(queue, context, remakerFamily_relaseObject);
}

void remakerFamily_relaseObject(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t assetReaderTrack_Invalidate(uint64_t a1)
{
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = FigAtomicCompareAndSwap32();
  if (result)
  {
    result = *(a1 + 72);
    if (result)
    {
      CMBufferQueueRemoveTrigger(result, *(a1 + 88));
      CMBufferQueueRemoveTrigger(*(a1 + 72), *(a1 + 96));
      if (*(a1 + 160))
      {
        v4 = *(a1 + 128);
        if (v4)
        {
          Count = CFArrayGetCount(v4);
          if (Count >= 2)
          {
            v6 = Count;
            for (i = 1; i != v6; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 128), i);
              CMBufferQueueRemoveTrigger(ValueAtIndex, *(*(a1 + 136) + 8 * i));
              CMBufferQueueRemoveTrigger(ValueAtIndex, *(*(a1 + 144) + 8 * i));
            }
          }
        }
      }

      result = CMBufferQueueRemoveTrigger(*(a1 + 72), *(a1 + 104));
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v10)
      {
        v10(v9, 0, 0);
      }

      if (*(a1 + 160))
      {
        v11 = *(a1 + 120);
        if (v11)
        {
          v12 = CFArrayGetCount(v11);
          if (v12 >= 2)
          {
            v13 = v12;
            for (j = 1; j != v13; ++j)
            {
              v15 = CFArrayGetValueAtIndex(*(a1 + 120), j);
              v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v16)
              {
                v16(v15, 0, 0);
              }
            }
          }
        }
      }

      v17 = *(a1 + 112);
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v18)
      {
        v18(v17, 0, 0);
      }

      v19 = *(a1 + 112);
      VTable = CMBaseObjectGetVTable();
      v21 = *(VTable + 16);
      result = VTable + 16;
      v22 = *(v21 + 32);
      if (v22)
      {
        return v22(v19, 0, 0);
      }
    }
  }

  return result;
}

opaqueCMBufferQueue *assetWriterTrack_Invalidate(uint64_t a1)
{
  result = FigAtomicCompareAndSwap32();
  if (result)
  {
    result = *(a1 + 32);
    if (result)
    {
      v3 = *(a1 + 104);

      return CMBufferQueueRemoveTrigger(result, v3);
    }
  }

  return result;
}

uint64_t RegisterFigRemakerTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigRemakerTrackID = result;
  return result;
}

double FigRemakerTrackInit(_OWORD *a1)
{
  result = 0.0;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigRemakerTrackFinalize(void *a1)
{
  remakerFamily_invalidateTrack(a1);
  v2 = a1[52];
  if (v2)
  {
    CFRelease(v2);
    a1[52] = 0;
  }

  v3 = a1[24];
  if (v3)
  {
    CFRelease(v3);
    a1[24] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  FigSemaphoreDestroy();
  a1[47] = 0;
  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[19];
  if (v6)
  {
    CFRelease(v6);
    a1[19] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    CFRelease(v7);
    a1[20] = 0;
  }

  v8 = a1[21];
  if (v8)
  {
    CFRelease(v8);
    a1[21] = 0;
  }

  v9 = a1[22];
  if (v9)
  {
    CFRelease(v9);
    a1[22] = 0;
  }

  v10 = a1[46];
  if (v10)
  {
    dispatch_release(v10);
    a1[46] = 0;
  }

  v11 = a1[48];
  if (v11)
  {
    CFRelease(v11);
    a1[48] = 0;
  }

  v12 = a1[51];
  if (v12)
  {
    dispatch_release(v12);
    a1[51] = 0;
  }

  v13 = a1[50];
  if (v13)
  {
    CFRelease(v13);
    a1[50] = 0;
  }

  v14 = a1[25];
  if (v14)
  {
    CFRelease(v14);
    a1[25] = 0;
  }

  v15 = a1[26];
  if (v15)
  {
    CFRelease(v15);
    a1[26] = 0;
  }

  FigBufferQueueRelease();
  a1[28] = 0;
  v16 = a1[29];
  if (v16)
  {
    CFRelease(v16);
    a1[29] = 0;
  }

  v17 = a1[30];
  if (v17)
  {
    CFRelease(v17);
    a1[30] = 0;
  }

  FigBufferQueueRelease();
  a1[31] = 0;
  v18 = a1[33];
  if (v18)
  {
    CFRelease(v18);
    a1[33] = 0;
  }

  FigBufferQueueRelease();
  a1[34] = 0;
  v19 = a1[36];
  if (v19)
  {
    CFRelease(v19);
    a1[36] = 0;
  }

  FigBufferQueueRelease();
  a1[39] = 0;
  v20 = a1[55];
  if (v20)
  {
    CFRelease(v20);
    a1[55] = 0;
  }

  v21 = a1[2];
  if (v21)
  {
    CFRelease(v21);
    a1[2] = 0;
  }
}

__CFString *FigRemakerTrackCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (*(a1 + 48))
  {
    v4 = "(passthrough)";
  }

  else
  {
    v4 = "(recompress)";
  }

  v5 = " (done)";
  if (*(a1 + 296))
  {
    v6 = " (done)";
  }

  else
  {
    v6 = "";
  }

  if (!*(a1 + 424))
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"FigRemakerTrack %p: '%c%c%c%c' id %d -> id %d %s, renderPipeline %@, mediaProcessor %@%s  multiPassBoss %@%s", a1, HIBYTE(*(a1 + 32)), BYTE2(*(a1 + 32)), BYTE1(*(a1 + 32)), *(a1 + 32), *(a1 + 28), *(a1 + 300), v4, *(a1 + 56), *(a1 + 288), v6, *(a1 + 416), v5);
  return Mutable;
}

uint64_t remakerFamily_useMakeDataReadyProcessorOnce(BOOL *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = FigGetCFPreferenceBooleanWithDefault();
    v3 = result != 0;
  }

  *a1 = v3;
  return result;
}

uint64_t remakerFamily_frameSiloLowWaterTrigger(uint64_t a1)
{
  v1 = *(a1 + 384);
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  v5 = *(v4 + 24);
  if (v5)
  {
    result = v5(v1);
    if (result)
    {

      return FigSemaphoreSignal();
    }
  }

  return result;
}

uint64_t remakerFamily_addFrameFromSiloToFormatWriter(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    v6 = DerivedStorage;
    if (*DerivedStorage >= 7u)
    {
      remakerFamily_addFrameFromSiloToFormatWriter_cold_1(&v14);
      v12 = v14;
    }

    else
    {
      v7 = *(a1 + 384);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v8 && v8(v7))
      {
        FigSemaphoreWaitRelative();
      }

      v9 = *(v6 + 23);
      v10 = *(a1 + 300);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v12 = v11(v9, v10, a2);
      }

      else
      {
        v12 = 4294954514;
      }
    }

    CFRelease(v4);
  }

  else
  {
    remakerFamily_addFrameFromSiloToFormatWriter_cold_2(&v15);
    return v15;
  }

  return v12;
}

__n128 remakerFamily_timeRangesRetainCallBack(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
  v5 = *(a2 + 16);
  result = *(a2 + 32);
  *v3 = *a2;
  v3[1] = v5;
  v3[2] = result;
  return result;
}

CFStringRef remakerFamily_timeRangesCopyDescriptionCallBack(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *&v4.start.value = *a1;
  *&v4.start.epoch = v2;
  *&v4.duration.timescale = a1[2];
  return CMTimeRangeCopyDescription(v1, &v4);
}

uint64_t remakerFamily_timeRangesEqualCallBack(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&range1.start.value = *a1;
  *&range1.start.epoch = v2;
  *&range1.duration.timescale = a1[2];
  v3 = a2[1];
  *&v5.start.value = *a2;
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a2[2];
  return CMTimeRangeEqual(&range1, &v5);
}

uint64_t RegisterFigAssetReaderTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetReaderTrackID = result;
  return result;
}

double FigAssetReaderTrackInit(_OWORD *a1)
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

void FigAssetReaderTrackFinalize(uint64_t a1)
{
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  assetReaderTrack_Invalidate(a1);
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 80))
  {
    FigSemaphoreDestroy();
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 112) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 128) = 0;
  }

  free(*(a1 + 136));
  free(*(a1 + 144));
  v11 = *(a1 + 152);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 152) = 0;
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 192) = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 16) = 0;
  }
}

__CFString *FigAssetReaderTrackCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"FigAssetReaderTrack %p", a1);
  return Mutable;
}

uint64_t RegisterFigAssetWriterTrack()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetWriterTrackID = result;
  return result;
}

double FigAssetWriterTrackInit(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
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

void FigAssetWriterTrackFinalize(void *a1)
{
  assetWriterTrack_Invalidate(a1);
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[14];
  if (v3)
  {
    CFRelease(v3);
    a1[14] = 0;
  }

  v4 = a1[22];
  if (v4)
  {
    free(v4);
    a1[22] = 0;
  }

  v5 = a1[23];
  if (v5)
  {
    CFRelease(v5);
    a1[23] = 0;
  }

  v6 = a1[30];
  if (v6)
  {
    CFRelease(v6);
    a1[30] = 0;
  }

  v7 = a1[34];
  if (v7)
  {
    CFRelease(v7);
    a1[34] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }
}

__CFString *FigAssetWriterTrackCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"FigAssetWriterTrack %p", a1);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CMTime *OUTLINED_FUNCTION_24_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, CMTime *a12)
{
  v14 = v12[1];
  a9 = *v12;
  a10 = v14;
  a11 = v12[2];

  return CMTimeRangeGetEnd(&a12, &a9);
}

Float64 OUTLINED_FUNCTION_31_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  a9 = a12;
  a10 = a13;

  return CMTimeGetSeconds(&a9);
}

uint64_t OUTLINED_FUNCTION_32_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return FigMediaProcessorSetProperty(a1, v2, v1);
}

const void *OUTLINED_FUNCTION_45_7()
{
  v3 = *(v0 + 80);

  return CFArrayGetValueAtIndex(v3, v1);
}

uint64_t FigXPCAssetServerAssociateCopiedNeighborAsset(_xpc_connection_s *a1)
{
  v9 = 0;
  xpc_connection_get_audit_token();
  memset(v8, 0, sizeof(v8));
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  v3 = CreateServedAssetState(ClientPIDFromAuditToken, &v9);
  v4 = v9;
  if (v3 || (v3 = FigSandboxAssertionCreateForPID(), v3))
  {
    v6 = v3;
    goto LABEL_5;
  }

  xpc_connection_get_pid(a1);
  v5 = FigOSTransactionCreate();
  *(v4 + 8) = v5;
  if (!v5)
  {
    FigXPCAssetServerAssociateCopiedNeighborAsset_cold_1(v8);
    v6 = LODWORD(v8[0]);
    if (!LODWORD(v8[0]))
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v6)
  {
LABEL_5:
    DisposeServedAssetState(v4);
  }

  return v6;
}

uint64_t CreateServedAssetState(int a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00407B9DDE52uLL);
  if (v4)
  {
    result = 0;
    v4[4] = a1;
  }

  else
  {
    CreateServedAssetState_cold_1(&v6);
    result = v6;
  }

  *a2 = v4;
  return result;
}

void DisposeServedAssetState(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      CFRelease(v2);
      a1[4] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      os_release(v3);
    }

    free(a1);
  }
}

uint64_t FigXPCAssetServerCopyAssetForID(uint64_t a1, CFTypeRef *a2)
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
      if (v4 == FigAssetGetTypeID())
      {
        return 0;
      }
    }

    FigXPCAssetServerCopyAssetForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigAssetServerStart()
{
  gCommonAssetServerAsyncQueue = dispatch_queue_create("CommonAssetServerAsyncQueue", 0);
  FigWatchdogMonitorDispatchQueue();
  FigAssetWatchdogMonitorCommonQueues();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    FigServer_IsMediaplaybackd();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v2 = Mutable;
      v0 = FigXPCServerStart();
      CFRelease(v2);
    }

    else
    {
      FigAssetServerStart_cold_1(&v4);
      return v4;
    }
  }

  return v0;
}

uint64_t HandleAssetCopyChapterDataMessage(const void *a1, void *a2)
{
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigAssetGetTypeID())
  {
    HandleAssetCopyChapterDataMessage_cold_1(&v14);
    return v14;
  }

  int64 = xpc_dictionary_get_int64(a2, "ChapterGroupIndex");
  v6 = xpc_dictionary_get_int64(a2, "ChapterIndex");
  v7 = xpc_dictionary_get_int64(a2, "ChapterCount");
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = v8(a1, int64, v6, v7, &cf);
  v10 = cf;
  if (v9)
  {
    v11 = v9;
    if (!cf)
    {
      return v11;
    }

    goto LABEL_5;
  }

  v11 = FigXPCMessageSetCFArray();
  v10 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v10);
  }

  return v11;
}

uint64_t assetXPCServer_NotificationFilter(uint64_t a1, const void *a2, CFTypeRef cf1, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = a4;
  cf[0] = 0;
  if (!a4)
  {
    return v6;
  }

  if (CFEqual(cf1, @"assetNotice_PropertyLoaded") || CFEqual(cf1, @"assetNotice_PropertyRevised"))
  {
    v12 = CFGetTypeID(a2);
    if (v12 == FigAssetGetTypeID())
    {
      Value = CFDictionaryGetValue(v6, @"assetPayload_Property");
      if (!CFEqual(@"assetProperty_MakeReadAheadAssertionWhenCreatingByteStream", Value) && !CFEqual(@"assetProperty_OriginalReadAheadAssertion", Value) && !CFEqual(@"assetProperty_ContentByteStream", Value) && !CFEqual(@"assetProperty_FormatReader", Value) && !CFEqual(@"assetProperty_CPEProtector", Value) && !CFEqual(@"assetProperty_ByteStreamProvider", Value) && !CFEqual(@"assetProperty_StorageSession", Value))
      {
        CMBaseObject = FigAssetGetCMBaseObject(a2);
        v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v15)
        {
          if (!v15(CMBaseObject, Value, *MEMORY[0x1E695E480], cf))
          {
            v16 = xpc_dictionary_create(0, 0, 0);
            if (v16)
            {
              v21 = v16;
              if (!assetXPCServer_SerializeAssetPropertyValueIntoXPCDictionary(*(a1 + 24), Value, cf[0], v16, v17, v18, v19, v20, v31, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]))
              {
LABEL_16:
                xpc_dictionary_set_value(a6, "LoadedValue", v21);
                FigXPCMessageSetCFDictionary();
                v6 = 2;
LABEL_25:
                FigXPCRelease();
                goto LABEL_35;
              }

LABEL_24:
              v6 = 0;
              goto LABEL_25;
            }

            assetXPCServer_NotificationFilter_cold_1();
          }
        }
      }
    }
  }

  else if (CFEqual(cf1, @"assetTrackNotice_PropertyLoaded") || CFEqual(cf1, @"assetTrackNotice_PropertyRevised"))
  {
    v22 = CFGetTypeID(a2);
    if (v22 == FigAssetTrackGetTypeID())
    {
      v23 = CFDictionaryGetValue(v6, @"assetPayload_Property");
      v24 = FigAssetTrackGetCMBaseObject(a2);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v25)
      {
        if (!v25(v24, v23, *MEMORY[0x1E695E480], cf))
        {
          v26 = xpc_dictionary_create(0, 0, 0);
          if (v26)
          {
            v21 = v26;
            if (!assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(v23, cf[0], v26))
            {
              goto LABEL_16;
            }

            goto LABEL_24;
          }

          assetXPCServer_NotificationFilter_cold_2();
        }
      }
    }
  }

  else if (CFDictionaryGetValue(v6, @"assetPayload_CFError"))
  {
    v27 = FigCFCopyCFErrorAsPropertyList();
    if (v27)
    {
      v28 = v27;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v6);
      v6 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"assetPayload_CFError");
        CFDictionarySetValue(v6, @"CFErrorAsDictionary", v28);
        *a5 = v6;
        v6 = 4;
      }

      else
      {
        assetXPCServer_NotificationFilter_cold_3();
      }

      CFRelease(v28);
      goto LABEL_35;
    }

    assetXPCServer_NotificationFilter_cold_4();
  }

  v6 = 0;
LABEL_35:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v6;
}

uint64_t assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (CFEqual(a1, @"FormatDescriptionArray"))
  {

    return FigXPCMessageSetFormatDescriptionArray();
  }

  else if (CFEqual(a1, @"CommonMetadata") || CFEqual(a1, @"assetTrackProperty_QuickTimeMetadata") || CFEqual(a1, @"assetTrackProperty_QuickTimeUserData") || CFEqual(a1, @"assetTrackProperty_ISOUserData"))
  {
    assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary_cold_1(a2, a3, &v7);
    return v7;
  }

  else
  {

    return FigXPCMessageSetCFObject();
  }
}

uint64_t assetXPCServer_SerializeTracksArrayIntoXPCDictionary(int a1, CFArrayRef theArray, void *a3)
{
  Count = CFArrayGetCount(theArray);
  v6 = xpc_array_create(0, 0);
  if (!v6)
  {
    assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_3(&value);
LABEL_18:
    v16 = value;
    goto LABEL_13;
  }

  v7 = xpc_array_create(0, 0);
  if (!v7)
  {
    assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_2(&value);
    goto LABEL_18;
  }

  xdict = a3;
  if (Count < 1)
  {
LABEL_11:
    xpc_dictionary_set_value(xdict, "TrackIDsAndTypes", v6);
    xpc_dictionary_set_value(xdict, "TrackObjectIDs", v7);
    v16 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v20 = 0;
      v21 = 0;
      value = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (!ValueAtIndex || (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 != FigAssetTrackGetTypeID()))
      {
        assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_1(&v22);
        v16 = v22;
        goto LABEL_13;
      }

      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12)
      {
        v16 = 4294954514;
        goto LABEL_13;
      }

      v13 = v12(v10, &v21, &v20);
      if (v13)
      {
        break;
      }

      v14 = v20;
      v15 = v21;
      v13 = FigXPCServerAssociateCopiedObjectWithConnection();
      if (v13)
      {
        break;
      }

      xpc_array_set_uint64(v6, 0xFFFFFFFFFFFFFFFFLL, v14 | (v15 << 32));
      xpc_array_set_uint64(v7, 0xFFFFFFFFFFFFFFFFLL, value);
      if (Count == ++v8)
      {
        goto LABEL_11;
      }
    }

    v16 = v13;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

__n128 OUTLINED_FUNCTION_9_26()
{
  result = *(v0 - 160);
  v2 = *(v0 - 144);
  *(v0 - 192) = result;
  *(v0 - 176) = v2;
  return result;
}

CFTypeID OUTLINED_FUNCTION_17_17(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeID OUTLINED_FUNCTION_23_20(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeID OUTLINED_FUNCTION_24_13(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

CFTypeRef OUTLINED_FUNCTION_31_12(uint64_t a1, const __CFString *a2)
{

  return SecTaskCopyValueForEntitlement(v2, a2, 0);
}

uint64_t FigPWDKeyExchangeSenderGetClassID()
{
  if (FigPWDKeyExchangeSenderGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeSenderGetClassID_cold_1();
  }

  return sFigPWDKeyExchangeSenderClassID;
}

uint64_t RegisterFigPWDKeyExchangeSenderBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPWDKeyExchangeSenderGetTypeID()
{
  if (FigPWDKeyExchangeSenderGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeSenderGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

CGAffineTransform *FCRGetTransform@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = MEMORY[0x1E69792E8];
  v8 = *MEMORY[0x1E69792E8];
  v9 = *(MEMORY[0x1E69792E8] + 40);
  if (a2 > 0.0 && a3 > 0.0)
  {
    v9 = fmin(a4 / a2, a5 / a3);
    v8 = v9;
  }

  v14 = v5;
  v15 = v6;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v13.m11 = v8;
  *&v13.m12 = *(v7 + 8);
  *&v13.m14 = *(v7 + 24);
  v13.m22 = v9;
  v10 = v7[6];
  *&v13.m33 = v7[5];
  *&v13.m41 = v10;
  *&v13.m43 = v7[7];
  v11 = v7[4];
  *&v13.m23 = v7[3];
  *&v13.m31 = v11;
  return CATransform3DGetAffineTransform(a1, &v13);
}

double FCRGetVideoPresentationBounds(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0u;
  v14 = 0u;
  v10 = a5;
  v12 = 0u;
  FCRGetTransform(&v12, a1, a2, a5, a6);
  if (a1 > 0.0 && a2 > 0.0)
  {
    v10 = a2 * *&v13 + *&v12 * a1;
  }

  return a3 + (a5 - v10) * 0.5;
}

double FCRGetOverscanSafeRectForVideo(double *a1)
{
  v1 = FCRGetVideoPresentationBounds(a1[47], a1[48], a1[43], a1[44], a1[45], a1[46]);

  *&result = CGRectInset(*&v1, v3 * 0.1 * 0.5, v4 * 0.1 * 0.5);
  return result;
}

double FCRGetOverscanSafeRectForViewport(uint64_t a1)
{
  if (!CFPreferencesGetAppBooleanValue(@"use_legacy_overscan", @"com.apple.coremedia", 0))
  {
    return FCRGetOverscanSafeRectForVideo(a1);
  }

  v3 = *(a1 + 344);
  *&result = CGRectInset(v3, v3.size.width * 0.1 * 0.5, v3.size.height * 0.1 * 0.5);
  return result;
}

double FCRGetCEA608CellSize(uint64_t a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryMappingConvertPointToPoint();
  FigGeometryPointGetCGPoint();
  v2 = v1;
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryMappingConvertPointToPoint();
  FigGeometryPointGetCGPoint();
  return v3 - v2;
}

void videoContainerLayer_boundsDidChangeCallback(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = objc_autoreleasePoolPush();
  values = a7;
  if (a7)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(a6, v14, a1, a2, a3, a4);
    FPSupport_AppendDeferredTransactionChangeToRelease(a6, v14);
  }

  objc_autoreleasePoolPop(v13);
}

void videoContainerLayer_activeConfigurationChangedCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E695F060];
  v9 = *MEMORY[0x1E695F060];
  CGSizeIfPresent = FigCFDictionaryGetCGSizeIfPresent();
  v7 = *v5;
  v8 = v5[1];
  if (CGSizeIfPresent)
  {
    v7 = *&v9;
    v8 = *(&v9 + 1);
  }

  [a3 setPresentationSize:{v7, v8, v9, v9}];
  objc_autoreleasePoolPop(v4);
}

const __CFDictionary *FCSupport_HasChapterDetails(const __CFDictionary *result)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, @"ChapterSampleMediaPTS") == 0);
  }

  return result;
}

uint64_t FCSupport_CopyChapterTimesForChapterGroup(CFArrayRef theArray, CFIndex a2, __CFArray **a3)
{
  if (a2 < 0)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_3(&v18);
    return v18;
  }

  if (!a3)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_2(&v17);
    return v17;
  }

  if (!theArray)
  {
    goto LABEL_10;
  }

  if (CFArrayGetCount(theArray) <= a2)
  {
    FCSupport_CopyChapterTimesForChapterGroup_cold_1(&v16);
    return v16;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
  Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
  if (Value && (v8 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v10 = Count;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    for (i = 0; i != v10; ++i)
    {
      v13 = CFArrayGetValueAtIndex(v8, i);
      v14 = CFDictionaryGetValue(v13, @"ChapterTime");
      CFArrayAppendValue(Mutable, v14);
    }
  }

  else
  {
LABEL_10:
    Mutable = 0;
  }

  result = 0;
  *a3 = Mutable;
  return result;
}

uint64_t FCSupport_CopyChapterTimeRangesForChapterGroup(CFArrayRef theArray, CFIndex a2, __CFArray **a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_3(keys);
    return LODWORD(keys[0]);
  }

  v3 = a3;
  if (!a3)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_2(keys);
    return LODWORD(keys[0]);
  }

  if (!theArray)
  {
    goto LABEL_12;
  }

  if (CFArrayGetCount(theArray) <= a2)
  {
    FCSupport_CopyChapterTimeRangesForChapterGroup_cold_1(keys);
    return LODWORD(keys[0]);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
  Value = CFDictionaryGetValue(ValueAtIndex, @"chapterGroupKey_PerChapterInfo");
  if (Value)
  {
    v8 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v10 = Count;
      v22 = v3;
      v11 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v13 = 0;
      v14 = *MEMORY[0x1E6960CA0];
      v15 = *MEMORY[0x1E6960C90];
      v16 = MEMORY[0x1E695E9E8];
      do
      {
        v17 = CFArrayGetValueAtIndex(v8, v13);
        v18 = CFDictionaryGetValue(v17, @"ChapterTime");
        v19 = CFDictionaryGetValue(v17, @"ChapterDuration");
        keys[0] = v14;
        keys[1] = v15;
        values[0] = v18;
        values[1] = v19;
        v20 = CFDictionaryCreate(v11, keys, values, 2, MEMORY[0x1E695E9D8], v16);
        CFArrayAppendValue(Mutable, v20);
        if (v20)
        {
          CFRelease(v20);
        }

        ++v13;
      }

      while (v10 != v13);
      v3 = v22;
      goto LABEL_13;
    }
  }

LABEL_12:
  Mutable = 0;
LABEL_13:
  result = 0;
  *v3 = Mutable;
  return result;
}

void fcSupport_getTrackMediaTypeAndEnabled(uint64_t a1, uint64_t a2, Boolean *a3)
{
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v6 && !v6(a1, a2, &cf, 0))
  {
    cf1 = 0;
    FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8 && (v8(FigBaseObject, @"TrackEnabled", *MEMORY[0x1E695E480], &cf1), cf1))
    {
      v9 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
      CFRelease(cf1);
    }

    else
    {
      v9 = 1;
    }

    *a3 = v9;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t OUTLINED_FUNCTION_4_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time2, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time1, uint64_t a20, uint64_t a21, uint64_t a22, __int128 time2a, uint64_t time2_16, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  time2a = *v57;
  time2_16 = a57;

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_5_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  result = a9;
  *(v10 - 96) = a9;
  *(v10 - 80) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_43()
{

  return CMBaseObjectGetVTable();
}

CMTime *OUTLINED_FUNCTION_13_18@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *rhs, uint64_t a19, CMTime *lhs, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t rhsa, uint64_t rhs_8, uint64_t rhs_16, uint64_t a31, uint64_t lhsa)
{
  rhs_16 = a1;

  return CMTimeSubtract(&a16, &lhsa, &rhsa);
}

uint64_t ParseFileTypeAtom(uint64_t a1, void *a2)
{
  if (a2[3])
  {
    ParseFileTypeAtom_cold_1(&v3);
    return v3;
  }

  else if (a2[4])
  {
    ParseFileTypeAtom_cold_2(&v4);
    return v4;
  }

  else if (a2[5])
  {
    ParseFileTypeAtom_cold_3(&v5);
    return v5;
  }

  else
  {

    return IFFParseFileTypeAtom(a1);
  }
}

uint64_t ParseGlobalMetaDataGroupAtom(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  if (FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    goto LABEL_19;
  }

  if (FigAtomStreamReadCurrentAtomData())
  {
    goto LABEL_19;
  }

  v15 = vrev32_s8(v15);
  v12 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    goto LABEL_19;
  }

  if (v14 | v13)
  {
    ParseGlobalMetaDataGroupAtom_cold_8(&v11);
LABEL_18:
    if (!v11)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v15.i32[0] < 0)
  {
    ParseGlobalMetaDataGroupAtom_cold_7(&v11);
    goto LABEL_18;
  }

  IFFInformationReserveItemGroup(*(a2 + 8), v15.i32[0], 0, 0, &v16);
  if (!v3)
  {
    v4 = v15.i32[1]--;
    v5 = -1;
    if (!v4)
    {
LABEL_14:
      *(v16 + 5) = v5;
      return 0;
    }

    v6 = 12;
    while (1)
    {
      LODWORD(v11) = 0;
      if (FigAtomStreamReadCurrentAtomData())
      {
        break;
      }

      v7 = bswap32(v11);
      LODWORD(v11) = v7;
      IFFInformationAddItemToGroup(*(a2 + 8), v7, v16);
      if (v8)
      {
        break;
      }

      if (v7 < v5)
      {
        v5 = v7;
      }

      v9 = v15.i32[1]--;
      v6 += 4;
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_19:
  if (v16)
  {
    IFFInformationDropItemGroup(*(a2 + 8), v16);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_2_70()
{

  return FigAtomStreamInitWithParent();
}

uint64_t OUTLINED_FUNCTION_6_44()
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_7_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *dataPointerOut, CMBlockBufferRef theBuffer)
{
  a9 = 0;
  dataPointerOut = 0;
  v12 = theBuffer;

  return CMBlockBufferGetDataPointer(v12, 0, &a9, 0, &dataPointerOut);
}

void OUTLINED_FUNCTION_8_24()
{

  JUMPOUT(0x19A8CC720);
}

uint64_t OUTLINED_FUNCTION_14_22()
{

  return FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
}

uint64_t OUTLINED_FUNCTION_17_18()
{

  return FigAtomStreamGetCurrentAtomVersionAndFlags();
}

uint64_t OUTLINED_FUNCTION_26_17(OpaqueCMBlockBuffer *a1, uint64_t a2, size_t *a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, a3, 0, a5);
}

uint64_t OUTLINED_FUNCTION_33_11()
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t OUTLINED_FUNCTION_39_10()
{

  return FigAtomStreamReadCurrentAtomData();
}

uint64_t FigUserDataCopyOSTypeKeysFromCommonKey(void *a1, void *a2)
{
  MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
  v4 = qword_1EAF19308;
  MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
  FigCopyOSTypeKeysFromCommonKeys(a1, a2, v4, gUserDataCommonKeyMappingCountDict);
  return 0;
}

void *FigCopyOSTypeKeysFromCommonKeys(void *key, void *a2, CFDictionaryRef theDict, const __CFDictionary *a4)
{
  if (!key)
  {
    return FigCopyOSTypeKeysFromCommonKeys_cold_2();
  }

  if (!a2)
  {
    return FigCopyOSTypeKeysFromCommonKeys_cold_1();
  }

  *a2 = 0;
  result = CFDictionaryGetValue(theDict, key);
  values = result;
  if (result)
  {
    v8 = result;
    Value = CFDictionaryGetValue(a4, key);
    if (Value < 1)
    {
      v11 = *MEMORY[0x1E695E480];
      p_values = &values;
      v10 = 1;
    }

    else
    {
      v10 = Value;
      v11 = *MEMORY[0x1E695E480];
      p_values = v8;
    }

    result = CFArrayCreate(v11, p_values, v10, 0);
    *a2 = result;
  }

  return result;
}

uint64_t FigISOUserDataCopyOSTypeKeysFromCommonKey(void *a1, void *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
  v4 = qword_1EAF19310;
  MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
  FigCopyOSTypeKeysFromCommonKeys(a1, a2, v4, gISOUserDataCommonKeyMappingCountDict);
  return 0;
}

uint64_t FigQuickTimeMetadataCopyNativeKeysFromCommonKey(const void *a1, void *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(qword_1EAF19318, a1);
      if (Value)
      {
        v5 = CFRetain(Value);
      }

      else
      {
        v5 = 0;
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_2(&v8);
    return v8;
  }

  return result;
}

uint64_t FigUserDataStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigUserDataSetUpStringKeyMapping);
  v4 = gUserDataStringKeyToOSTypeKeyDict;

  return FigMetadataCopyOSTypeKeyFromStringKey(v4, a1, a2);
}

uint64_t FigMetadataCopyOSTypeKeyFromStringKey(const __CFDictionary *a1, const __CFString *a2, unsigned int *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    *a3 = Value;
    return 1;
  }

  else
  {

    return FigMetadataStringKeyToOSTypeKey(a2, 0, a3);
  }
}

uint64_t FigISOUserDataStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigISOUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigISOUserDataSetUpStringKeyMapping);
  v4 = gISOUserDataStringKeyToOSTypeKeyDict;

  return FigMetadataCopyOSTypeKeyFromStringKey(v4, a1, a2);
}

uint64_t FigMetadataStringKeyToOSTypeKey(const __CFString *a1, int a2, unsigned int *a3)
{
  *buffer = 0;
  Length = CFStringGetLength(a1);
  if (Length > 4)
  {
    return 0;
  }

  v7 = Length;
  v13.location = 0;
  v13.length = Length;
  if (Length != CFStringGetBytes(a1, v13, 0, 0, 0, buffer, 4, 0))
  {
    return 0;
  }

  v8 = bswap32(*buffer);
  v9 = 32 - 8 * v7;
  if (v7 == 4 || a2 == 0)
  {
    v9 = 0;
  }

  *a3 = v8 >> v9;
  return 1;
}

uint64_t FigID3MetadataCommonKeyToOSTypeKey(const void *a1, _DWORD *a2)
{
  MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
  result = CFDictionaryGetValue(qword_1EAF192F8, a1);
  if (result)
  {
    *a2 = result;
    return 1;
  }

  return result;
}

CFNumberRef FigMetadataCopyLangCodeFromLocale(const __CFLocale *a1)
{
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  v2 = gISO639CanonicalToLangCodeDict;
  v3 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(v2, v3, &value))
  {
    return 0;
  }

  valuePtr = value;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

uint64_t FigMetadataGetPackedISO639_2T(const __CFString *a1)
{
  *buffer = 0;
  if (a1 && CFStringGetLength(a1) == 3 && CFStringGetCString(a1, buffer, 4, 0x600u))
  {
    return ((32 * buffer[1] - 3072) | (buffer[0] << 10) ^ 0x8000 | (buffer[2] - 96));
  }

  else
  {
    return 21956;
  }
}

uint64_t FigMetadataGetPackedISO639_2TFromLocale(const __CFLocale *a1)
{
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  if (!a1 || ((v2 = gISO639CanonicalToISO639_2TDict, (v3 = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0])) != 0) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    LOWORD(result) = 21956;
  }

  else
  {
    v6 = v3;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v2, v3, &value))
    {
      LOWORD(result) = value;
    }

    else
    {
      LOWORD(result) = FigMetadataGetPackedISO639_2T(v6);
    }
  }

  return result;
}

void *FigMetadataGetISO639_1FromISO639_2T(const __CFString *a1)
{
  value = 0;
  MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
  v2 = gISO639_2TToISO639_1Dict;
  PackedISO639_2T = FigMetadataGetPackedISO639_2T(a1);
  if (CFDictionaryGetValueIfPresent(v2, PackedISO639_2T, &value))
  {
    return value;
  }

  else
  {
    return 0;
  }
}

uint64_t FigMetadataGetPackedISO639_2TFromLocaleIdentifier(const __CFString *a1)
{
  if (a1)
  {
    value = 0;
    MEMORY[0x19A8D3660](&FigMetadataSetupNonCanonicalLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639NonCanonicalLanguageMapping);
    v3 = gISO639NonCanonicalToISO639_2TDict;
    v4 = *MEMORY[0x1E695E480];
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @"-");
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    ValueIfPresent = CFDictionaryGetValueIfPresent(v3, ValueAtIndex, &value);
    PackedISO639_2TFromLocale = value;
    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    if (!ValueIfPresent)
    {
      v9 = CFLocaleCreate(v4, a1);
      PackedISO639_2TFromLocale = FigMetadataGetPackedISO639_2TFromLocale(v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    return PackedISO639_2TFromLocale;
  }

  else
  {

    return FigMetadataGetPackedISO639_2TFromLocale(0);
  }
}

void FigMetadataCopyCurrentLocaleAndLangCode(CFTypeRef *a1, CFNumberRef *a2)
{
  v4 = CFLocaleCopyCurrent();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      *a1 = CFRetain(v4);
    }

    if (a2)
    {
      v6 = CFLocaleGetValue(v5, *MEMORY[0x1E695E6F0]);
      MEMORY[0x19A8D3660](&FigMetadataSetupLanguageMapping_sCreateKeyMappingOnce, FigMetadataSetUpISO639LanguageMapping);
      v7 = gISO639CanonicalToLangCodeDict;
      *a2 = 0;
      if (v7)
      {
        if (v6)
        {
          value = 0;
          if (CFDictionaryGetValueIfPresent(v7, v6, &value))
          {
            valuePtr = value;
            *a2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
          }
        }
      }
    }

    CFRelease(v5);
  }
}

uint64_t FigMetadataCopyISO8601GMTStringFromDate(const __CFDate *a1, CFStringRef *a2)
{
  if (!a1)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_5(&v12);
    return v12;
  }

  if (!a2)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_4(&v12);
    return v12;
  }

  v4 = *MEMORY[0x1E695E480];
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x773uLL);
  if (!ISO8601Formatter)
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_3(&v12);
    return v12;
  }

  v6 = ISO8601Formatter;
  v7 = CFTimeZoneCreateWithTimeIntervalFromGMT(v4, 0.0);
  if (v7)
  {
    v8 = v7;
    CFDateFormatterSetProperty(v6, *MEMORY[0x1E695E5D8], v7);
    StringWithDate = CFDateFormatterCreateStringWithDate(v4, v6, a1);
    if (StringWithDate)
    {
      v10 = 0;
      *a2 = StringWithDate;
    }

    else
    {
      FigMetadataCopyISO8601GMTStringFromDate_cold_1(&v12);
      v10 = v12;
    }

    CFRelease(v8);
  }

  else
  {
    FigMetadataCopyISO8601GMTStringFromDate_cold_2(&v12);
    v10 = v12;
  }

  CFRelease(v6);
  return v10;
}

uint64_t FigISOUserDataWeKnowIsISOText(int a1)
{
  result = 0;
  if (a1 <= 1735291492)
  {
    if (a1 <= 1668246635)
    {
      if (a1 == 1633969523)
      {
        return 1;
      }

      v3 = 1635087464;
    }

    else
    {
      if (a1 == 1668246636 || a1 == 1668313716)
      {
        return 1;
      }

      v3 = 1685283696;
    }

LABEL_15:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 1937207908)
  {
    if (a1 == 1937207909 || a1 == 1953390957)
    {
      return 1;
    }

    v3 = 1953068140;
    goto LABEL_15;
  }

  if (a1 != 1735291493 && a1 != 1819239273)
  {
    v3 = 1885696614;
    goto LABEL_15;
  }

  return 1;
}

uint64_t FigMetadataWriteFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    result = FigAtomWriterGetAtomSize();
    if (result)
    {
      return result;
    }

    v8 = a4;
    if (a4 <= a3)
    {
      v8 = a3;
    }

    a3 = v8;
  }

  return FigMetadataAppendFreeAtom(a2, a3);
}

CFArrayRef FigMetadataSetupCommonKeys()
{
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = @"title";
  values[1] = @"creator";
  values[2] = @"subject";
  values[3] = @"description";
  values[4] = @"publisher";
  values[5] = @"contributor";
  values[6] = @"creationDate";
  values[7] = @"lastModifiedDate";
  values[8] = @"type";
  values[9] = @"format";
  values[10] = @"identifier";
  values[11] = @"source";
  values[12] = @"language";
  values[13] = @"relation";
  values[14] = @"location";
  values[15] = @"copyrights";
  values[16] = @"albumName";
  values[17] = @"author";
  values[18] = @"artist";
  values[19] = @"artwork";
  values[20] = @"make";
  values[21] = @"model";
  values[22] = @"software";
  values[23] = @"accessibilityDescription";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 24, 0);
  gCommonKeyArray = result;
  return result;
}

__CFString *FigMetadataGetCommonKey(CFTypeRef cf1, const __CFString *a2)
{
  result = 0;
  if (cf1 && a2)
  {
    if (CFEqual(cf1, @"udta"))
    {
      MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gUserDataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"uiso"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gISOUserDataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"mdta"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gQuickTimeMetadataNativeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"itsk"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0D0, FigiTunesMetadataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &giTunesMetadataShortKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"org.id3"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
      v5 = 1;
      v6 = &gID3MetadataOSTypeKeyToCommonKeyDict;
    }

    else if (CFEqual(cf1, @"vorb"))
    {
      MEMORY[0x19A8D3660](&unk_1ED4CA0F0, FigVorbisCommentSetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gVorbisCommentFieldStringKeyToCommonKeyDict;
    }

    else
    {
      if (CFEqual(cf1, @"icy"))
      {
        if (FigCFEqual())
        {
          return @"title";
        }

        else
        {
          return 0;
        }
      }

      if (!CFEqual(cf1, @"caaf"))
      {
        if (CFEqual(cf1, @"comn"))
        {
          return a2;
        }

        else
        {
          return 0;
        }
      }

      MEMORY[0x19A8D3660](&FigAudioFileInfoDictionarySetUpCommonKeyMappingOnce_sCreateKeyArrayOnce, FigAudioFileInfoDictionarySetUpCommonKeyMapping);
      v5 = 0;
      v6 = &gAudioFileInfoDictionaryKeyToCommonKeyDict;
    }

    v7 = *v6;
    if (!*v6)
    {
      return 0;
    }

    v8 = CFGetTypeID(a2);
    if (v8 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      return CFDictionaryGetValue(v7, v9);
    }

    v10 = CFGetTypeID(a2);
    if (v10 != CFStringGetTypeID())
    {
      return 0;
    }

    if (v5)
    {
      v11 = 0;
      if (FigMetadataStringKeyToOSTypeKeyWithKeySpace(cf1, a2, &v11))
      {
        v9 = v11;
        return CFDictionaryGetValue(v7, v9);
      }

      return 0;
    }

    return CFDictionaryGetValue(v7, a2);
  }

  return result;
}

CFIndex FigMetadataStringKeyToOSTypeKeyWithKeySpace(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigUserDataSetUpStringKeyMapping);
    v5 = gUserDataStringKeyToOSTypeKeyDict;
LABEL_5:

    return FigMetadataCopyOSTypeKeyFromStringKey(v5, a2, a3);
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigISOUserDataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigISOUserDataSetUpStringKeyMapping);
    v5 = gISOUserDataStringKeyToOSTypeKeyDict;
    goto LABEL_5;
  }

  if (FigCFEqual())
  {

    return FigiTunesMetadataShortStringKeyToOSTypeKey(a2, a3);
  }

  else
  {
    if (FigCFEqual())
    {
      v7 = a2;
      v8 = 1;
    }

    else
    {
      v7 = a2;
      v8 = 0;
    }

    return FigMetadataStringKeyToOSTypeKey(v7, v8, a3);
  }
}

uint64_t FigMetadataCopyTrackCommonMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  v22 = 0;
  v23 = 0;
  cf = 0;
  v21 = 0;
  if (!a1)
  {
    FigMetadataCopyTrackCommonMetadata_cold_2(&v24);
LABEL_29:
    v16 = v24;
    goto LABEL_18;
  }

  if (!a3)
  {
    FigMetadataCopyTrackCommonMetadata_cold_1(&v24);
    goto LABEL_29;
  }

  v6 = (FigTrackReaderGetFigBaseObject)();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"SupportsMetadataArrays", a2, &cf);
    v7 = cf;
  }

  if (v7 != *MEMORY[0x1E695E4D0])
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(FigBaseObject, @"QuickTimeMetadataReader", a2, &v23);
    }

    v10 = FigTrackReaderGetFigBaseObject(a1);
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(v10, @"QuickTimeUserDataReader", a2, &v22);
    }

    v12 = FigTrackReaderGetFigBaseObject(a1);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"ISOUserDataReader", a2, &v21);
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    v15 = FigMetadataCopyCommonMetadata(v23, 0, v22, v14, 0, a2, a3);
    goto LABEL_14;
  }

  v17 = FigTrackReaderGetFigBaseObject(a1);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v15 = v18(v17, @"CommonMetadataArray", a2, a3);
LABEL_14:
    v16 = v15;
    goto LABEL_18;
  }

  v16 = 4294954514;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

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

  return v16;
}

uint64_t FigMetadataCopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFAllocator *a6, __CFArray **a7)
{
  theDict = 0;
  value = 0;
  MEMORY[0x19A8D3660](&FigMetadataGetAllCommonKeys_sCreateKeyArrayOnce, FigMetadataSetupCommonKeys);
  v14 = gCommonKeyArray;
  v28 = a7;
  if (gCommonKeyArray)
  {
    Count = CFArrayGetCount(gCommonKeyArray);
    if (Count >= 1)
    {
      v15 = 0;
      Mutable = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
        if (a1)
        {
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v18)
          {
            if (!v18(a1, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (a2)
        {
          v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v19)
          {
            if (!v19(a2, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (a3)
        {
          v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v20)
          {
            if (!v20(a3, @"comn", ValueAtIndex, 0, a6, &value, &theDict))
            {
              goto LABEL_23;
            }
          }
        }

        if (!a4)
        {
          break;
        }

        v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v21)
        {
          v22 = v21(a4, @"comn", ValueAtIndex, 0, a6, &value, &theDict) != 0;
          if (!a5)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = 1;
          if (!a5)
          {
            goto LABEL_23;
          }
        }

        if (v22)
        {
          goto LABEL_21;
        }

LABEL_23:
        if (value)
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(a6, 0, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              FigMetadataCopyCommonMetadata_cold_2(&v32);
              goto LABEL_47;
            }
          }

          if (theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(a6, 0, theDict);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(a6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          v25 = MutableCopy;
          if (!MutableCopy)
          {
            FigMetadataCopyCommonMetadata_cold_1(&v32);
            goto LABEL_47;
          }

          CFDictionaryAddValue(MutableCopy, @"value", value);
          CFArrayAppendValue(Mutable, v25);
          CFRelease(v25);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }

        if (theDict)
        {
          CFRelease(theDict);
          theDict = 0;
        }

        if (Count == ++v15)
        {
          goto LABEL_37;
        }
      }

      if (!a5)
      {
        goto LABEL_23;
      }

LABEL_21:
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v23)
      {
        v23(a5, @"comn", ValueAtIndex, 0, a6, &value, &theDict);
      }

      goto LABEL_23;
    }

    FigMetadataCopyCommonMetadata_cold_3(&v32);
    Mutable = 0;
LABEL_47:
    v26 = v32;
  }

  else
  {
    Mutable = 0;
LABEL_37:
    v26 = 0;
    *v28 = Mutable;
    Mutable = 0;
  }

  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v26;
}

uint64_t FigMetadataCopyMovieCommonMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  v22 = 0;
  cf = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (!a1)
  {
    FigMetadataCopyMovieCommonMetadata_cold_2(&v24);
LABEL_27:
    v17 = v24;
    goto LABEL_16;
  }

  if (!a3)
  {
    FigMetadataCopyMovieCommonMetadata_cold_1(&v24);
    goto LABEL_27;
  }

  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(FigBaseObject, @"QuickTimeMetadataReader", a2, &cf);
  }

  v8 = FigFormatReaderGetFigBaseObject(a1);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, @"iTunesMetadataReader", a2, &v22);
  }

  v10 = FigFormatReaderGetFigBaseObject(a1);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"QuickTimeUserDataReader", a2, &v21);
  }

  v12 = FigFormatReaderGetFigBaseObject(a1);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v13)
  {
    v13(v12, @"ISOUserDataReader", a2, &v20);
  }

  v14 = FigFormatReaderGetFigBaseObject(a1);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(v14, @"MetadataReader", a2, &v19);
    v16 = v19;
  }

  else
  {
    v16 = 0;
  }

  v17 = FigMetadataCopyCommonMetadata(cf, v22, v21, v20, v16, a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t FigMetadataCopyMovieMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  cf = 0;
  if (!a1)
  {
    FigMetadataCopyMovieMetadata_cold_2(&v12);
    return v12;
  }

  if (!a3)
  {
    FigMetadataCopyMovieMetadata_cold_1(&v12);
    return v12;
  }

  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 0;
  }

  v7 = v6(FigBaseObject, @"MetadataReaders", a2, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = 0;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v9 = FigMetadataCopyAllMetadata(cf, a2, a3);
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

  return v9;
}

uint64_t FigMetadataCopyAllMetadata(const __CFArray *a1, const __CFAllocator *a2, __CFArray **a3)
{
  theDict = 0;
  value = 0;
  cf = 0;
  if (!a1 || (Count = CFArrayGetCount(a1), Count < 1))
  {
    v8 = 0;
LABEL_36:
    v22 = 0;
    *a3 = v8;
    goto LABEL_37;
  }

  v6 = Count;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    FigBaseObject = FigMetadataReaderGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      if (!v11(FigBaseObject, @"format", a2, &cf))
      {
        break;
      }
    }

LABEL_30:
    if (++v7 == v6)
    {
      goto LABEL_36;
    }
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v12)
  {
LABEL_25:
    v21 = 0;
LABEL_26:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_30;
  }

  v25 = v8;
  v13 = v12(ValueAtIndex, 0, 0);
  if (v13 < 1)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v15 = 0;
  Mutable = 0;
  do
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v17 && !v17(ValueAtIndex, 0, 0, v15, a2, &value, &theDict))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, theDict);
      v19 = MutableCopy;
      if (!MutableCopy)
      {
        v8 = v25;
        goto LABEL_46;
      }

      CFDictionaryAddValue(MutableCopy, @"value", value);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          v8 = v25;
          goto LABEL_46;
        }
      }

      CFArrayAppendValue(Mutable, v19);
      CFRelease(v19);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }
    }

    ++v15;
  }

  while (v14 != v15);
  v8 = v25;
  if (!Mutable)
  {
    goto LABEL_25;
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    v21 = 0;
    goto LABEL_34;
  }

  v20 = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v20)
  {
    v21 = v20;
    CFDictionaryAddValue(v20, @"items", Mutable);
    CFDictionaryAddValue(v21, @"format", cf);
    if (v25 || (v8 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0])) != 0)
    {
      CFArrayAppendValue(v8, v21);
LABEL_34:
      CFRelease(Mutable);
      goto LABEL_26;
    }

    FigMetadataCopyAllMetadata_cold_1();
    v19 = 0;
    v22 = v29;
LABEL_49:
    CFRelease(Mutable);
  }

  else
  {
    v19 = 0;
LABEL_46:
    fig_log_get_emitter();
    v22 = FigSignalErrorAtGM();
    if (v8)
    {
      CFRelease(v8);
    }

    if (Mutable)
    {
      goto LABEL_49;
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_37:
  if (value)
  {
    CFRelease(value);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t FigMetadataCopyTrackMetadata(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  cf = 0;
  if (!a1)
  {
    FigMetadataCopyTrackMetadata_cold_2(&v12);
    return v12;
  }

  if (!a3)
  {
    FigMetadataCopyTrackMetadata_cold_1(&v12);
    return v12;
  }

  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    return 0;
  }

  v7 = v6(FigBaseObject, @"MetadataReaders", a2, &cf);
  v8 = cf;
  if (v7)
  {
    v9 = 0;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_9;
  }

  v9 = FigMetadataCopyAllMetadata(cf, a2, a3);
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

  return v9;
}

uint64_t FigMetadataCopyMetadataItemsIf(const __CFAllocator *a1, uint64_t a2, unsigned int (*a3)(CFDictionaryRef, uint64_t), uint64_t a4, __CFArray **a5)
{
  value = 0;
  theDict = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v10 && (v11 = v10(a2, 0, 0)) != 0)
  {
    v12 = v11;
    Mutable = CFArrayCreateMutable(a1, v11, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      if (v12 >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v15)
          {
            v16 = v15(a2, 0, 0, v14, a1, &value, &theDict);
            v17 = theDict;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = value == 0;
            }

            if (v18 || theDict == 0)
            {
              goto LABEL_20;
            }

            if (!a3)
            {
              goto LABEL_17;
            }

            if (a3(theDict, a4))
            {
              break;
            }
          }

LABEL_19:
          v17 = theDict;
LABEL_20:
          if (v17)
          {
            CFRelease(v17);
            theDict = 0;
          }

          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          if (v12 == ++v14)
          {
            goto LABEL_25;
          }
        }

        v17 = theDict;
LABEL_17:
        MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v17);
        if (!MutableCopy)
        {
          FigMetadataCopyMetadataItemsIf_cold_1(&v26);
          goto LABEL_37;
        }

        v21 = MutableCopy;
        CFDictionaryAddValue(MutableCopy, @"value", value);
        CFArrayAppendValue(Mutable, v21);
        CFRelease(v21);
        goto LABEL_19;
      }

LABEL_25:
      v22 = 0;
    }

    else
    {
      FigMetadataCopyMetadataItemsIf_cold_2(&v26);
LABEL_37:
      v22 = v26;
    }
  }

  else
  {
    v22 = 0;
    Mutable = 0;
  }

  if (theDict)
  {
    CFRelease(theDict);
    theDict = 0;
  }

  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v22 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  *a5 = Mutable;
  return v22;
}

uint64_t FigMetadataArrayHasKey(uint64_t result, uint64_t a2, uint64_t a3, const __CFArray *a4, CFIndex a5, CFIndex a6)
{
  if (result)
  {
    v10 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
      v15 = ValueAtIndex;
      if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
      {
        Value = CFDictionaryGetValue(v15, @"key");
        if (a4)
        {
          v17.location = a5;
          v17.length = a6;
          if (CFArrayContainsValue(a4, v17, Value))
          {
            return 1;
          }
        }

        else if (FigCFEqual())
        {
          return 1;
        }
      }

      if (v12 == ++v13)
      {
        return 0;
      }
    }
  }

  return result;
}

CFIndex FigMetadataArrayGetKeyCount(const __CFArray *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  Mutable = 0;
  v8 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    v10 = ValueAtIndex;
    if (!a2 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
    {
      if (!Mutable)
      {
        Mutable = CFSetCreateMutable(v8, 0, 0);
      }

      Value = CFDictionaryGetValue(v10, @"key");
      CFSetAddValue(Mutable, Value);
    }

    ++v6;
  }

  while (v5 != v6);
  if (!Mutable)
  {
    return 0;
  }

  v12 = CFSetGetCount(Mutable);
  CFRelease(Mutable);
  return v12;
}

uint64_t FigMetadataArrayCopyKeyAtIndex(const __CFArray *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v9 = Count;
    v19 = a4;
    v10 = 0;
    Mutable = 0;
    v12 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      v14 = ValueAtIndex;
      if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
      {
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(v12, 0, 0);
        }

        Value = CFDictionaryGetValue(v14, @"key");
        CFSetAddValue(Mutable, Value);
        if (CFSetGetCount(Mutable) - 1 == a2)
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }

    if (Value)
    {
      v18 = CFRetain(Value);
      v16 = 0;
      *v19 = v18;
      if (!Mutable)
      {
        return v16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_12:
  fig_log_get_emitter();
  v16 = FigSignalErrorAtGM();
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t FigMetadataArrayGetItemCount(const __CFArray *a1, uint64_t a2, uint64_t a3, const __CFArray *a4, CFIndex a5, CFIndex a6)
{
  v18.location = a5;
  v18.length = a6;
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  v12 = 0;
  v13 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v12);
    v15 = ValueAtIndex;
    if (!a3 || (CFDictionaryGetValue(ValueAtIndex, @"keyspace"), FigCFEqual()))
    {
      Value = CFDictionaryGetValue(v15, @"key");
      if (a4)
      {
        if (CFArrayContainsValue(a4, v18, Value))
        {
          ++v13;
        }
      }

      else if (!a2 || FigCFEqual())
      {
        ++v13;
      }
    }

    ++v12;
  }

  while (v11 != v12);
  return v13;
}

uint64_t FigMetadataArrayCopyItemWithKeyAndIndex(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, CFIndex a6, CFIndex a7, void *a8, __CFDictionary **a9)
{
  v25.location = a6;
  v25.length = a7;
  if (!a1)
  {
    goto LABEL_21;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v14 = Count;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v16);
    v18 = ValueAtIndex;
    if (a4)
    {
      CFDictionaryGetValue(ValueAtIndex, @"keyspace");
      if (!FigCFEqual())
      {
        goto LABEL_13;
      }
    }

    Value = CFDictionaryGetValue(v18, @"key");
    if (a5)
    {
      if (!CFArrayContainsValue(a5, v25, Value))
      {
        goto LABEL_13;
      }
    }

    else if (a2 && !FigCFEqual())
    {
      goto LABEL_13;
    }

    if (v15 == a3)
    {
      break;
    }

    ++v15;
LABEL_13:
    if (v14 == ++v16)
    {
      goto LABEL_21;
    }
  }

  if (a8)
  {
    v20 = CFDictionaryGetValue(v18, @"value");
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *a8 = v20;
  }

  if (a9)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v18);
    CFDictionaryRemoveValue(MutableCopy, @"value");
    *a9 = MutableCopy;
  }

LABEL_21:
  if (!a8)
  {
    return 0;
  }

  if (*a8)
  {
    return 0;
  }

  return 4294954689;
}

CFStringRef FigMetadataGetCoreMediaDataType(uint64_t a1, CFStringRef PreferredIdentifierForTag, uint64_t a3)
{
  if (FigCFEqual())
  {
    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (PreferredIdentifierForTag)
    {
      v6 = CFGetTypeID(PreferredIdentifierForTag);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = -1;
        CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &valuePtr);
        switch(valuePtr)
        {
          case 3:
            v7 = MEMORY[0x1E69602B0];
            return *v7;
          case 2:
            v7 = MEMORY[0x1E69602B8];
            return *v7;
          case 0:
            v7 = MEMORY[0x1E6960260];
            return *v7;
        }
      }

      return 0;
    }

    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v8 = CFGetTypeID(PreferredIdentifierForTag);
    if (v8 != CFNumberGetTypeID())
    {
      return 0;
    }

    key_4 = -1;
    CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &key_4);
    if (key_4 == 22)
    {
      PreferredIdentifierForTag = 0;
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v7 = MEMORY[0x1E6960298];
        }

        else
        {
          if (a3 != 8)
          {
            return PreferredIdentifierForTag;
          }

          v7 = MEMORY[0x1E69602A0];
        }
      }

      else if (a3 == 1)
      {
        v7 = MEMORY[0x1E69602A8];
      }

      else
      {
        if (a3 != 2)
        {
          return PreferredIdentifierForTag;
        }

        v7 = MEMORY[0x1E6960290];
      }

      return *v7;
    }

    if (key_4 != 21)
    {
      MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpQuickTimeMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping);
      v9 = gQTMetadataDataTypeToCoreMediaDataTypeDict;
      v10 = key_4;
      return CFDictionaryGetValue(v9, v10);
    }

    goto LABEL_20;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v11 = CFGetTypeID(PreferredIdentifierForTag);
    if (v11 != CFNumberGetTypeID())
    {
      return 0;
    }

    key = -1;
    CFNumberGetValue(PreferredIdentifierForTag, kCFNumberSInt32Type, &key);
    if (key != 21)
    {
      MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpiTunesMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpiTunesMetadataMapping);
      v9 = giTunesDataTypeToCoreMediaDataTypeDict;
      v10 = key;
      return CFDictionaryGetValue(v9, v10);
    }

LABEL_20:
    PreferredIdentifierForTag = 0;
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v7 = MEMORY[0x1E6960278];
      }

      else
      {
        if (a3 != 8)
        {
          return PreferredIdentifierForTag;
        }

        v7 = MEMORY[0x1E6960280];
      }

      return *v7;
    }

    if (a3 == 1)
    {
      v7 = MEMORY[0x1E6960288];
      return *v7;
    }

    if (a3 == 2)
    {
      v7 = MEMORY[0x1E6960270];
      return *v7;
    }

    return PreferredIdentifierForTag;
  }

  if (FigCFEqual())
  {
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    v12 = CFGetTypeID(PreferredIdentifierForTag);
    if (v12 != CFStringGetTypeID())
    {
      return 0;
    }

    v13 = MEMORY[0x1E6963718];
    Length = CFStringGetLength(PreferredIdentifierForTag);
    v15 = MEMORY[0x1E6963710];
    if (Length != 3)
    {
      v15 = v13;
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*v15, PreferredIdentifierForTag, 0);
    if (!PreferredIdentifierForTag)
    {
      return PreferredIdentifierForTag;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    Value = CFDictionaryGetValue(gUTIDataTypeToCoreMediaDataTypeDict, PreferredIdentifierForTag);
    CFRelease(PreferredIdentifierForTag);
    return Value;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    v17 = gUTIDataTypeToCoreMediaDataTypeDict;

    return CFDictionaryGetValue(v17, PreferredIdentifierForTag);
  }
}

uint64_t FigMetadataGetDataTypeWithNamespaceForCoreMediaDataType(uint64_t a1, const void *a2, const void **a3)
{
  if (FigCFEqual())
  {
    *a3 = a2;
    return 1;
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpQuickTimeMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping);
    v6 = &gCoreMediaDataTypeToQTMetadataDataTypeDict;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpiTunesMetadataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpiTunesMetadataMapping);
    v6 = &gCoreMediaDataTypeToiTunesDataTypeDict;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUserdataMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUserdataMapping);
    v6 = &gCoreMediaDataTypeToUserDataTypeDict;
  }

  else
  {
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    MEMORY[0x19A8D3660](&FigCoreMediaDataTypesSetUpUTIMappingOnce_sCreateDataTypeMappingOnce, FigCoreMediaDataTypesSetUpUTIMapping);
    v6 = &gCoreMediaDataTypeToUTIDataTypeDict;
  }

  result = *v6;
  if (*v6)
  {

    return CFDictionaryGetValueIfPresent(result, a2, a3);
  }

  return result;
}

BOOL FigMetadataDataLengthCanHoldValue(char a1, int a2, CFNumberRef number)
{
  if (a2)
  {
    v4 = -1 << (8 * a1 - 1);
    v7 = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &v7);
    return v4 <= v7 && v7 <= ~v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    CFNumberGetValue(number, kCFNumberMaxType|kCFNumberSInt8Type, &v7);
    return !v7 && v8 >> (8 * a1) == 0;
  }
}

CFMutableArrayRef FigVorbisCommentMetadataCreateChapterArray(const __CFAllocator *a1, CFTypeRef cf)
{
  v46 = 0;
  v47 = 0;
  v4 = CFGetAllocator(cf);
  FigBaseObject = FigMetadataReaderGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(FigBaseObject, @"format", v4, &v47);
  }

  else
  {
    v7 = -12782;
  }

  if (!FigCFEqual())
  {
    Mutable = 0;
    v10 = 0;
    goto LABEL_76;
  }

  FigMetadataCopyMetadataItemsIf(a1, cf, FigMetadataItemKeyIsVorbisCommentChapterFieldName, 0, &v46);
  v8 = v46;
  if (!v46)
  {
    Mutable = 0;
    goto LABEL_80;
  }

  if (CFArrayGetCount(v46) < 1)
  {
    v10 = 0;
    Mutable = 0;
    goto LABEL_77;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  v10 = MutableCopy;
  if (!MutableCopy)
  {
    FigVorbisCommentMetadataCreateChapterArray_cold_6();
    Mutable = 0;
    goto LABEL_76;
  }

  v49.length = CFArrayGetCount(MutableCopy);
  v49.location = 0;
  CFArraySortValues(v10, v49, FigMetadataCompareStringKeys, 0);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(v10);
  if (Count < 1)
  {
    v15 = 0;
    goto LABEL_61;
  }

  v13 = Count;
  v41 = v7;
  v42 = Mutable;
  theDict = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1.0;
  do
  {
    CFArrayGetValueAtIndex(v10, v14);
    Value = FigCFDictionaryGetValue();
    Length = CFStringGetLength(Value);
    if (Length == 10)
    {
      if (FigCFEqual())
      {
        goto LABEL_28;
      }

      v20 = FigCFDictionaryGetValue();
      if (!v20)
      {
        goto LABEL_28;
      }

      v21 = CFGetTypeID(v20);
      if (v21 != CFStringGetTypeID())
      {
        goto LABEL_28;
      }

      v45.value = 0;
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        goto LABEL_28;
      }

      v23 = CStringPtrAndBufferToFree;
      v24 = strchr(CStringPtrAndBufferToFree, 58);
      if (v24)
      {
        v25 = -1;
        do
        {
          v24 = strchr(v24 + 1, 58);
          ++v25;
        }

        while (v24);
        if (v25)
        {
          v26 = -1.0;
          if (v25 != 1)
          {
            goto LABEL_33;
          }

          LODWORD(time.value) = 0;
          *v48 = 0;
          sscanf(v23, "%d:%d:%f", &time, &v48[1], v48);
          v27 = (3600 * LODWORD(time.value) + 60 * LODWORD(v48[1]));
          v28 = v48[0];
        }

        else
        {
          LODWORD(time.value) = 0;
          v48[1] = 0.0;
          sscanf(v23, "%d:%f", &time, &v48[1]);
          v27 = (60 * LODWORD(time.value));
          v28 = v48[1];
        }

        v26 = (v28 + v27);
      }

      else
      {
        v26 = strtod(v23, 0);
      }

LABEL_33:
      free(v45.value);
      if (v26 >= 0.0 && v26 > v17)
      {
        if (theDict)
        {
          memset(&v45, 0, sizeof(v45));
          CMTimeMakeWithSeconds(&v45, v26 - v17, 1000);
          time = v45;
          v35 = CMTimeCopyAsDictionary(&time, a1);
          if (!v35)
          {
            FigVorbisCommentMetadataCreateChapterArray_cold_3(&v45, &time);
            goto LABEL_95;
          }

          v36 = v35;
          CFDictionarySetValue(theDict, @"ChapterDuration", v35);
          CFRelease(v36);
          if (v16)
          {
            if (CFArrayGetCount(v16) >= 1)
            {
              CFDictionarySetValue(theDict, @"ChapterMetadataItems", v16);
            }

            CFRelease(v16);
          }

          CFArrayAppendValue(v42, theDict);
          CFRelease(theDict);
          v16 = 0;
        }

        theDict = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (theDict)
        {
          memset(&v45, 0, sizeof(v45));
          CMTimeMakeWithSeconds(&v45, v26, 1000);
          time = v45;
          v37 = CMTimeCopyAsDictionary(&time, a1);
          if (!v37)
          {
            FigVorbisCommentMetadataCreateChapterArray_cold_4(&v45, &time);
LABEL_95:
            v31 = 0;
            v7 = time.value;
LABEL_89:
            Mutable = v42;
            v39 = theDict;
            goto LABEL_63;
          }

          v38 = v37;
          CFDictionarySetValue(theDict, @"ChapterTime", v37);
          CFRelease(v38);
          v16 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        }

        if (Value)
        {
          CFRetain(Value);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        v17 = v26;
        v15 = Value;
      }

      goto LABEL_28;
    }

    if (v16 && Length >= 11 && v15 && CFStringHasPrefix(Value, v15))
    {
      v29 = CFGetAllocator(Value);
      v30 = CFStringCreateMutableCopy(v29, 0, Value);
      v31 = v30;
      if (v30)
      {
        v50.location = 7;
        v50.length = 3;
        CFStringDelete(v30, v50);
        v32 = FigCFDictionaryCreateMutableCopy();
        if (v32)
        {
          v33 = v32;
          CFDictionarySetValue(v32, @"key", v31);
          CFArrayAppendValue(v16, v33);
          CFRelease(v33);
          CFRelease(v31);
          goto LABEL_28;
        }

        FigVorbisCommentMetadataCreateChapterArray_cold_1(&v45);
      }

      else
      {
        FigVorbisCommentMetadataCreateChapterArray_cold_2(&v45);
      }

      v7 = v45.value;
      goto LABEL_89;
    }

LABEL_28:
    ++v14;
  }

  while (v14 != v13);
  v7 = v41;
  v39 = theDict;
  if (theDict)
  {
    v45 = **&MEMORY[0x1E6960C68];
    v31 = CMTimeCopyAsDictionary(&v45, a1);
    Mutable = v42;
    if (!v31)
    {
      FigVorbisCommentMetadataCreateChapterArray_cold_5(&v45);
      v7 = v45.value;
      goto LABEL_63;
    }

    CFDictionarySetValue(theDict, @"ChapterDuration", v31);
    CFRelease(v31);
    if (v16)
    {
      if (CFArrayGetCount(v16) >= 1)
      {
        CFDictionarySetValue(theDict, @"ChapterMetadataItems", v16);
      }

      CFRelease(v16);
    }

    CFArrayAppendValue(v42, theDict);
    CFRelease(theDict);
LABEL_61:
    v16 = 0;
    if (Mutable)
    {
LABEL_62:
      v39 = 0;
      v31 = 0;
      if (CFArrayGetCount(Mutable))
      {
LABEL_63:
        if (v7 && Mutable)
        {
          CFRelease(Mutable);
          Mutable = 0;
        }

        if (!v31)
        {
LABEL_70:
          if (v16)
          {
            goto LABEL_71;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v31 = Mutable;
        Mutable = 0;
      }

      CFRelease(v31);
      goto LABEL_70;
    }
  }

  else
  {
    Mutable = v42;
    if (v42)
    {
      goto LABEL_62;
    }
  }

  v39 = 0;
  if (v16)
  {
LABEL_71:
    CFRelease(v16);
  }

LABEL_72:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_76:
  v8 = v46;
  if (v46)
  {
LABEL_77:
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_80:
  if (v47)
  {
    CFRelease(v47);
  }

  return Mutable;
}

CFComparisonResult FigMetadataCompareStringKeys()
{
  Value = FigCFDictionaryGetValue();
  v1 = FigCFDictionaryGetValue();

  return CFStringCompare(Value, v1, 0);
}

uint64_t FigIcyMetadataParseSampleBuffer(void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  allocator = CFGetAllocator(a1);
  dataPointerOut = 0;
  blockBufferOut = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = v8;
  if (Mutable)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(a1);
    v12 = CMBlockBufferCreateContiguous(0, DataBuffer, 0, 0, 0, 0, 0, &blockBufferOut);
    if (v12)
    {
      value_low = v12;
      v13 = 0;
      goto LABEL_54;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time, a1);
    v13 = CMTimeCopyAsDictionary(&time, allocator);
    if (v13)
    {
      DataLength = CMBlockBufferGetDataLength(blockBufferOut);
      DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
      if (DataPointer)
      {
        value_low = DataPointer;
        goto LABEL_54;
      }

      if (!dataPointerOut[DataLength - 1])
      {
        v37 = a2;
        theArray = Mutable;
        v16 = dataPointerOut + 1;
        v17 = MEMORY[0x1E69E9830];
        while (1)
        {
          v18 = *(v16 - 1);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          if ((*(v17 + 4 * v18 + 60) & 0x4000) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          dataPointerOut = v16++;
        }

        if (__maskrune(v18, 0x4000uLL))
        {
          goto LABEL_14;
        }

LABEL_15:
        v40 = v13;
        v38 = a3;
        v19 = dataPointerOut;
        if (*dataPointerOut)
        {
          while (1)
          {
            v20 = strchr(v19, 61);
            if (!v20)
            {
              goto LABEL_48;
            }

            v21 = strchr(v20 + 1, 39);
            if (!v21)
            {
              goto LABEL_48;
            }

            v22 = v21;
            v23 = strchr(v21, 59);
            if (v23)
            {
              v24 = v23 + 1;
            }

            else
            {
              v24 = (v22 + strlen(v22));
            }

            v25 = v24;
            if (v24 >= v22)
            {
              v25 = v24;
              do
              {
                if (*v25 == 39)
                {
                  break;
                }

                --v25;
              }

              while (v25 >= v22);
            }

            if (v25 <= v22)
            {
              goto LABEL_48;
            }

            if (v22 + 1 < v25)
            {
              break;
            }

            do
            {
LABEL_43:
              dataPointerOut = v24;
              v33 = *v24;
              if ((v33 & 0x80000000) != 0)
              {
                v34 = __maskrune(v33, 0x4000uLL);
              }

              else
              {
                v34 = *(v17 + 4 * v33 + 60) & 0x4000;
              }

              ++v24;
            }

            while (v34);
            v19 = dataPointerOut;
            if (!*dataPointerOut)
            {
              goto LABEL_48;
            }
          }

          if (!strncasecmp(v19, "StreamUrl", 9uLL))
          {
            v27 = @"StreamUrl";
          }

          else
          {
            if (strncasecmp(v19, "StreamTitle", 0xBuLL))
            {
              time.value = 134217984;
              v26 = FigCFStringCreateWithBytesWithUnknownEncoding();
              goto LABEL_33;
            }

            v27 = @"StreamTitle";
          }

          v26 = CFRetain(v27);
LABEL_33:
          v28 = v26;
          if (v26)
          {
            if (!FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
            {
              if (v28 == @"StreamUrl")
              {
                v29 = CFStringCreateWithBytes(allocator, (v22 + 1), &v25[~v22], 0x8000100u, 1u);
              }

              else
              {
                time.value = 134217984;
                v29 = FigCFStringCreateWithBytesWithUnknownEncoding();
              }

              v30 = v29;
              if (v29)
              {
                time.value = @"key";
                *&time.timescale = @"value";
                values[0] = v28;
                values[1] = v29;
                time.epoch = @"keyspace";
                v46 = @"timestamp";
                values[2] = @"icy";
                values[3] = v40;
                v31 = CFDictionaryCreate(allocator, &time, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v31)
                {
                  v32 = v31;
                  CFArrayAppendValue(theArray, v28);
                  CFDictionarySetValue(v9, v28, v32);
                  CFRelease(v28);
                  v28 = v30;
                  v30 = v32;
                }

                CFRelease(v28);
                v28 = v30;
              }
            }

            CFRelease(v28);
          }

          goto LABEL_43;
        }

LABEL_48:
        Mutable = theArray;
        if (v37)
        {
          *v37 = CFRetain(theArray);
        }

        v13 = v40;
        if (v38)
        {
          value_low = 0;
          *v38 = CFRetain(v9);
          if (!theArray)
          {
            goto LABEL_55;
          }
        }

        else
        {
          value_low = 0;
          if (!theArray)
          {
            goto LABEL_55;
          }
        }

LABEL_54:
        CFRelease(Mutable);
        goto LABEL_55;
      }

      FigIcyMetadataParseSampleBuffer_cold_1(&time);
    }

    else
    {
      FigIcyMetadataParseSampleBuffer_cold_2(&time);
    }

    value_low = LODWORD(time.value);
    goto LABEL_54;
  }

  FigIcyMetadataParseSampleBuffer_cold_3(&time);
  v13 = 0;
  value_low = LODWORD(time.value);
  if (Mutable)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return value_low;
}

uint64_t FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems(uint64_t a1, const void *a2, void *a3)
{
  Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    v5 = Data;
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (!BlockBufferWithCFDataNoCopy)
    {
      *a3 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems_cold_1(&v8);
    return v8;
  }

  return BlockBufferWithCFDataNoCopy;
}

uint64_t FigMetadataArrayCreateWithAudioFileMetadataItemList(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, int a5, CFMutableArrayRef *a6)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a3)
    {
      FigCFDictionaryGetValueIfPresent();
    }

    if (*(a2 + 8))
    {
      v13 = 0;
      v14 = (a2 + 32);
      do
      {
        v15 = *(v14 - 2);
        if (v15 && (v16 = CFGetTypeID(*(v14 - 2)), v16 == CFStringGetTypeID()))
        {
          MutableCopy = CFStringCreateMutableCopy(a1, 0, v15);
          v18 = MutableCopy;
          if (MutableCopy)
          {
            CFStringUppercase(MutableCopy, 0);
            v15 = v18;
          }
        }

        else
        {
          v18 = 0;
        }

        AddVorbisCommentItemToArray(Mutable, v15, *(v14 - 1), *v14, a5);
        if (v18)
        {
          CFRelease(v18);
        }

        ++v13;
        v14 += 3;
      }

      while (v13 < *(a2 + 8));
    }

    if (a4)
    {
      v19 = CFGetTypeID(a4);
      if (v19 == CFDataGetTypeID() && CFDataGetLength(a4) >= 1)
      {
        AddVorbisCommentItemToArray(Mutable, @"METADATA_BLOCK_PICTURE", a4, 0, a5);
      }
    }

    result = 0;
  }

  else
  {
    FigMetadataArrayCreateWithAudioFileMetadataItemList_cold_1(&v21);
    result = v21;
  }

  *a6 = Mutable;
  return result;
}

void AddVorbisCommentItemToArray(void *a1, const void *a2, const void *a3, const void *a4, int a5)
{
  v10 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v12 = Mutable;
    CFDictionarySetValue(Mutable, @"key", a2);
    CFDictionarySetValue(v12, @"keyspace", @"vorb");
    CFDictionarySetValue(v12, @"value", a3);
    if (a4)
    {
      CFDictionarySetValue(v12, @"info", a4);
    }

    if (!a5 || CFPropertyListIsValid(v12, kCFPropertyListBinaryFormat_v1_0))
    {
      CFArrayAppendValue(a1, v12);
    }

    CFRelease(v12);
  }

  else
  {
    AddVorbisCommentItemToArray_cold_1();
  }
}

uint64_t FigMetadataReaderCreateWithVorbisCommentFields(const __CFAllocator *a1, uint64_t a2, const void *a3, void *a4)
{
  v11 = 0;
  theArray = 0;
  v6 = FigMetadataArrayCreateWithAudioFileMetadataItemList(a1, a2, 1, a3, 0, &theArray);
  v7 = theArray;
  if (v6)
  {
    v8 = v6;
    *a4 = 0;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_8;
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v8 = FigMetadataReaderCreateForGenericMetadataArray(a1, v7, @"org.xiph.vorbis-comment", @"vorb", &v11);
      v9 = v11;
    }

    *a4 = v9;
LABEL_8:
    CFRelease(v7);
    return v8;
  }

  v8 = 0;
  *a4 = 0;
  return v8;
}

void FigReleaseAudioFileMetadataItems(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = (a1 + 32);
      do
      {
        v5 = *(v4 - 2);
        if (v5)
        {
          CFRelease(v5);
        }

        v6 = *(v4 - 1);
        if (v6)
        {
          CFRelease(v6);
        }

        if (*v4)
        {
          CFRelease(*v4);
        }

        ++v3;
        v4 += 3;
      }

      while (v3 < *(a1 + 8));
    }
  }
}

uint64_t FigMetadataReaderCreateWithAudioFileProperties(const __CFAllocator *a1, const void *a2, const void *a3, void *a4)
{
  v15 = 0;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = Mutable;
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(a2, CreateFigMetadataItemForAudioFileInfoItem, v9);
      }
    }

    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 == CFDataGetTypeID() && CFDataGetLength(a3) >= 1)
      {
        AddFigMetadataItemToArray(v9, @"aart", a3);
      }
    }

    if (CFArrayGetCount(v9) < 1)
    {
      v13 = 0;
      v12 = 0;
    }

    else
    {
      v12 = FigMetadataReaderCreateForGenericMetadataArray(a1, v9, @"public.unknown", @"caaf", &v15);
      v13 = v15;
    }

    *a4 = v13;
    CFRelease(v9);
  }

  else
  {
    FigMetadataReaderCreateWithAudioFileProperties_cold_1();
    return v16;
  }

  return v12;
}

void CreateFigMetadataItemForAudioFileInfoItem(uint64_t a1, const void *a2, void *cf)
{
  v6 = CFGetAllocator(cf);
  v7 = CFStringCreateWithFormat(v6, 0, @"info-%@", a1);
  if (v7)
  {
    v8 = v7;
    AddFigMetadataItemToArray(cf, v7, a2);

    CFRelease(v8);
  }

  else
  {
    CreateFigMetadataItemForAudioFileInfoItem_cold_1();
  }
}

void AddFigMetadataItemToArray(void *a1, const void *a2, const void *a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetValue(Mutable, @"key", a2);
    CFDictionarySetValue(v8, @"value", a3);
    CFDictionarySetValue(v8, @"keyspace", @"caaf");
    CFArrayAppendValue(a1, v8);

    CFRelease(v8);
  }

  else
  {
    AddFigMetadataItemToArray_cold_1();
  }
}

CFDictionaryRef FigMetadataSetUpISO639LanguageMapping()
{
  keys[162] = *MEMORY[0x1E69E9840];
  bzero(keys, 0x510uLL);
  bzero(values, 0x510uLL);
  bzero(v5, 0x510uLL);
  v0 = 0;
  v1 = &FigMetadataSetUpISO639LanguageMapping_sLanguageMapping;
  do
  {
    v8 = vld3q_f64(v1);
    v1 += 6;
    *&keys[v0] = v8.val[0];
    *&values[v0] = v8.val[1];
    *&v5[v0] = v8.val[2];
    v0 += 2;
  }

  while (v0 != 162);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9D8];
  gISO639CanonicalToISO639_2TDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 162, MEMORY[0x1E695E9D8], 0);
  gISO639CanonicalToLangCodeDict = CFDictionaryCreate(v2, keys, v5, 162, v3, 0);
  result = CFDictionaryCreate(v2, values, keys, 162, 0, MEMORY[0x1E695E9E8]);
  gISO639_2TToISO639_1Dict = result;
  return result;
}

CFDictionaryRef FigMetadataSetUpISO639NonCanonicalLanguageMapping()
{
  v0 = 0;
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *keys = 0u;
  memset(v7, 0, sizeof(v7));
  v1 = &unk_1E7485688;
  do
  {
    v2 = *v1;
    keys[v0] = *(v1 - 1);
    *(v7 + v0 * 8) = v2;
    ++v0;
    v1 += 2;
  }

  while (v0 != 3);
  v3 = &unk_1E74856B8;
  do
  {
    v4 = *v3;
    keys[v0] = *(v3 - 1);
    *(v7 + v0 * 8) = v4;
    ++v0;
    v3 += 2;
  }

  while (v0 != 6);
  v5 = *MEMORY[0x1E695E480];
  gISO639NonCanonicalToISO639_2TDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v7, 6, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v5, v7, keys, 3, 0, 0);
  gISO639_2TToISO639_1NonCanonicalDict = result;
  return result;
}

CFDictionaryRef FigUserDataSetUpCommonKeyMapping()
{
  keys[18] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"subject";
  keys[2] = @"description";
  keys[3] = @"publisher";
  keys[4] = @"contributor";
  keys[5] = @"creationDate";
  keys[6] = @"type";
  keys[7] = @"format";
  keys[8] = @"source";
  keys[9] = @"location";
  keys[10] = @"copyrights";
  keys[11] = @"albumName";
  keys[12] = @"author";
  keys[13] = @"artist";
  keys[14] = @"make";
  keys[15] = @"model";
  keys[16] = @"software";
  keys[17] = @"accessibilityDescription";
  values[0] = @"title";
  values[1] = @"title";
  values[2] = @"title";
  values[3] = @"subject";
  values[4] = @"description";
  values[5] = @"description";
  values[6] = @"publisher";
  values[7] = @"contributor";
  values[8] = @"contributor";
  values[9] = @"contributor";
  values[10] = @"contributor";
  values[11] = @"creationDate";
  values[12] = @"type";
  values[13] = @"format";
  values[14] = @"source";
  values[15] = @"location";
  values[16] = @"copyrights";
  values[17] = @"albumName";
  values[18] = @"author";
  values[19] = @"artist";
  values[20] = @"make";
  values[21] = @"model";
  values[22] = @"software";
  values[23] = @"accessibilityDescription";
  v3 = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  qword_1EAF19308 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigUserDataSetUpCommonKeyMapping_toUserdataKeys, 18, MEMORY[0x1E695E9D8], 0);
  gUserDataOSTypeKeyToCommonKeyDict = CFDictionaryCreate(v0, &FigUserDataSetUpCommonKeyMapping_fromUserdataKeys, values, 24, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, &v3, &FigUserDataSetUpCommonKeyMapping_keyMappingCount, 1, v1, 0);
  gUserDataCommonKeyMappingCountDict = result;
  return result;
}

CFDictionaryRef FigISOUserDataSetUpCommonKeyMapping()
{
  keys[10] = *MEMORY[0x1E69E9840];
  keys[0] = @"copyrights";
  keys[1] = @"author";
  keys[2] = @"contributor";
  keys[3] = @"location";
  keys[4] = @"title";
  keys[5] = @"description";
  keys[6] = @"artwork";
  keys[7] = @"creationDate";
  keys[8] = @"software";
  keys[9] = @"accessibilityDescription";
  v7 = xmmword_196E76970;
  v8 = *"pcsd";
  v9 = xmmword_196E76990;
  *v5 = *"trpc";
  v6 = *"frep";
  v10 = 1633969523;
  values[0] = @"copyrights";
  values[1] = @"author";
  values[2] = @"contributor";
  values[3] = @"location";
  values[4] = @"title";
  values[5] = @"title";
  values[6] = @"description";
  values[7] = @"artwork";
  values[8] = @"creationDate";
  values[9] = @"software";
  values[10] = @"accessibilityDescription";
  v3 = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  qword_1EAF19310 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "trpc", 10, MEMORY[0x1E695E9D8], 0);
  gISOUserDataOSTypeKeyToCommonKeyDict = CFDictionaryCreate(v0, v5, values, 11, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, &v3, &FigISOUserDataSetUpCommonKeyMapping_keyMappingCount, 1, v1, 0);
  gISOUserDataCommonKeyMappingCountDict = result;
  return result;
}

void FigUserDataSetUpStringKeyMapping()
{
  keys[40] = *MEMORY[0x1E69E9840];
  keys[0] = @"@alb";
  keys[1] = @"@arg";
  keys[2] = @"@ART";
  keys[3] = @"@aut";
  keys[4] = @"@chp";
  keys[5] = @"@cmt";
  keys[6] = @"@com";
  keys[7] = @"@cpy";
  keys[8] = @"@day";
  keys[9] = @"@des";
  keys[10] = @"@dir";
  keys[11] = @"@dis";
  keys[12] = @"@enc";
  keys[13] = @"@nam";
  keys[14] = @"@gen";
  keys[15] = @"@hst";
  keys[16] = @"@inf";
  keys[17] = @"@key";
  keys[18] = @"@mak";
  keys[19] = @"@mod";
  keys[20] = @"@ope";
  keys[21] = @"@fmt";
  keys[22] = @"@src";
  keys[23] = @"@prf";
  keys[24] = @"@prd";
  keys[25] = @"@pub";
  keys[26] = @"@PRD";
  keys[27] = @"@swr";
  keys[28] = @"@req";
  keys[29] = @"@trk";
  keys[30] = @"@wrn";
  keys[31] = @"@wrt";
  keys[32] = @"@url";
  keys[33] = @"@xyz";
  keys[34] = @"@src";
  keys[35] = @"@phg";
  keys[36] = @"tnam";
  keys[37] = @"tagc";
  keys[38] = @"ludt";
  keys[39] = @"@ade";
  v0 = *MEMORY[0x1E695E480];
  gUserDataStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys, 40, MEMORY[0x1E695E9D8], 0);
  v1 = MEMORY[0x1E695E9E8];
  gUserDataOSTypeKeyToStringKeyDict = CFDictionaryCreate(v0, FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys, keys, 40, 0, MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(v0, 40, 0, v1);
  for (i = 0; i != 40; ++i)
  {
    v4 = FigUserDataSetUpStringKeyMapping_userdataOSTypeKeys[i];
    UInt32 = FigCFNumberCreateUInt32();
    CFDictionarySetValue(Mutable, v4, UInt32);
    if (UInt32)
    {
      CFRelease(UInt32);
    }
  }

  gUserDataOSTypeKeyToCFNumberDict = Mutable;
}

CFDictionaryRef FigISOUserDataSetUpStringKeyMapping()
{
  keys[18] = *MEMORY[0x1E69E9840];
  keys[0] = @"cprt";
  keys[1] = @"date";
  keys[2] = @"ludt";
  keys[3] = @"auth";
  keys[4] = @"perf";
  keys[5] = @"gnre";
  keys[6] = @"yrrc";
  keys[7] = @"loci";
  keys[8] = @"titl";
  keys[9] = @"dscp";
  keys[10] = @"coll";
  keys[11] = @"urat";
  keys[12] = @"thmb";
  keys[13] = @"albm";
  keys[14] = @"kywd";
  keys[15] = @"clsf";
  keys[16] = @"rtng";
  keys[17] = @"tagc";
  v0 = *MEMORY[0x1E695E480];
  gISOUserDataStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "trpc", 18, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, "trpc", keys, 18, 0, MEMORY[0x1E695E9E8]);
  gISOUserDataOSTypeKeyToStringKeyDict = result;
  return result;
}

void FigQuickTimeMetadataSetUpCommonKeyMapping()
{
  v18[17] = *MEMORY[0x1E69E9840];
  v16[0] = v17;
  v15[0] = @"com.apple.quicktime.displayname";
  v15[1] = @"com.apple.quicktime.title";
  v17[0] = @"com.apple.quicktime.displayname";
  v17[1] = @"com.apple.quicktime.title";
  v16[1] = @"com.apple.quicktime.keywords";
  v15[2] = @"com.apple.quicktime.keywords";
  v16[2] = @"com.apple.quicktime.description";
  v16[3] = @"com.apple.quicktime.publisher";
  v15[3] = @"com.apple.quicktime.description";
  v15[4] = @"com.apple.quicktime.information";
  v15[5] = @"com.apple.quicktime.publisher";
  v16[4] = @"com.apple.quicktime.performer";
  v16[5] = @"com.apple.quicktime.creationdate";
  v15[6] = @"com.apple.quicktime.performer";
  v15[7] = @"com.apple.quicktime.creationdate";
  v16[6] = @"com.apple.quicktime.content.identifier";
  v16[7] = @"com.apple.quicktime.location.ISO6709";
  v15[8] = @"com.apple.quicktime.content.identifier";
  v15[9] = @"com.apple.quicktime.location.ISO6709";
  v16[8] = @"com.apple.quicktime.copyright";
  v16[9] = @"com.apple.quicktime.album";
  v15[10] = @"com.apple.quicktime.copyright";
  v15[11] = @"com.apple.quicktime.album";
  v16[10] = @"com.apple.quicktime.author";
  v16[11] = @"com.apple.quicktime.artist";
  v15[12] = @"com.apple.quicktime.author";
  v15[13] = @"com.apple.quicktime.artist";
  v15[14] = @"com.apple.quicktime.originalartist";
  v15[15] = @"com.apple.quicktime.director";
  v15[16] = @"com.apple.quicktime.producer";
  v16[12] = @"com.apple.quicktime.artwork";
  v16[13] = @"com.apple.quicktime.make";
  v15[17] = @"com.apple.quicktime.artwork";
  v15[18] = @"com.apple.quicktime.make";
  v16[14] = @"com.apple.quicktime.model";
  v16[15] = @"com.apple.quicktime.software";
  v15[19] = @"com.apple.quicktime.model";
  v15[20] = @"com.apple.quicktime.software";
  v18[1] = @"subject";
  v16[16] = @"com.apple.quicktime.accessibility.description";
  v15[21] = @"com.apple.quicktime.accessibility.description";
  v14[2] = @"subject";
  v18[2] = @"description";
  v18[3] = @"publisher";
  v14[3] = @"description";
  v14[4] = @"description";
  v18[5] = @"creationDate";
  v14[5] = @"publisher";
  v14[7] = @"creationDate";
  v18[6] = @"identifier";
  v18[7] = @"location";
  v14[8] = @"identifier";
  v14[9] = @"location";
  v18[8] = @"copyrights";
  v18[9] = @"albumName";
  v14[10] = @"copyrights";
  v14[11] = @"albumName";
  v14[12] = @"author";
  v18[10] = @"author";
  v18[4] = @"contributor";
  v14[6] = @"contributor";
  v18[11] = @"artist";
  v14[13] = @"artist";
  v14[14] = @"contributor";
  v14[15] = @"contributor";
  v14[16] = @"contributor";
  v18[12] = @"artwork";
  v18[13] = @"make";
  v14[17] = @"artwork";
  v14[18] = @"make";
  v18[14] = @"model";
  v18[15] = @"software";
  v14[19] = @"model";
  v14[20] = @"software";
  v14[21] = @"accessibilityDescription";
  v18[16] = @"accessibilityDescription";
  v18[0] = @"title";
  v14[0] = @"title";
  v14[1] = @"title";
  values = 2;
  keys = @"title";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, MEMORY[0x1E695E9E8]);
  v4 = 0;
  v5 = MEMORY[0x1E695E9C0];
  do
  {
    v6 = v18[v4];
    Value = CFDictionaryGetValue(v2, v6);
    if (Value)
    {
      v8 = Value;
      v9 = v16[v4];
      v10 = v0;
    }

    else
    {
      v9 = &v16[v4];
      v10 = v0;
      v8 = 1;
    }

    v11 = CFArrayCreate(v10, v9, v8, v5);
    CFDictionaryAddValue(Mutable, v6, v11);
    CFRelease(v11);
    ++v4;
  }

  while (v4 != 17);
  qword_1EAF19318 = Mutable;
  gQuickTimeMetadataNativeKeyToCommonKeyDict = CFDictionaryCreate(v0, v15, v14, 22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFDictionaryRef FigID3MetadataSetUpCommonKeyMapping()
{
  keys[34] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"creator";
  keys[2] = @"subject";
  keys[3] = @"description";
  keys[4] = @"publisher";
  keys[5] = @"contributor";
  keys[6] = @"creationDate";
  keys[7] = @"type";
  keys[8] = @"format";
  keys[9] = @"identifier";
  keys[10] = @"source";
  keys[11] = @"language";
  keys[12] = @"copyrights";
  keys[13] = @"albumName";
  keys[14] = @"author";
  keys[15] = @"artist";
  keys[16] = @"artwork";
  keys[17] = @"title";
  keys[18] = @"creator";
  keys[19] = @"subject";
  keys[20] = @"description";
  keys[21] = @"publisher";
  keys[22] = @"contributor";
  keys[23] = @"creationDate";
  keys[24] = @"type";
  keys[25] = @"format";
  keys[26] = @"identifier";
  keys[27] = @"source";
  keys[28] = @"language";
  keys[29] = @"copyrights";
  keys[30] = @"albumName";
  keys[31] = @"author";
  keys[32] = @"artist";
  keys[33] = @"artwork";
  v0 = *MEMORY[0x1E695E480];
  qword_1EAF192F8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, "2TIT", 17, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, "2TIT", keys, 34, 0, MEMORY[0x1E695E9E8]);
  gID3MetadataOSTypeKeyToCommonKeyDict = result;
  return result;
}

void FigVorbisCommentSetUpCommonKeyMapping()
{
  v18[13] = *MEMORY[0x1E69E9840];
  v18[0] = @"title";
  v18[1] = @"description";
  v18[2] = @"publisher";
  v18[3] = @"contributor";
  v18[4] = @"creationDate";
  v18[5] = @"identifier";
  v18[6] = @"language";
  v18[7] = @"location";
  v18[8] = @"copyrights";
  v18[9] = @"albumName";
  v18[10] = @"artist";
  v18[11] = @"artwork";
  v18[12] = @"software";
  v17[0] = @"TITLE";
  v17[1] = @"CHAPTERNAME";
  v16[0] = v17;
  v16[1] = @"DESCRIPTION";
  v16[2] = @"ORGANIZATION";
  v16[3] = @"INVOLVED_PEOPLE";
  v16[4] = @"DATE";
  v16[5] = @"ISRC";
  v16[6] = @"LANGUAGE";
  v16[7] = @"LOCATION";
  v16[8] = @"COPYRIGHT";
  v16[9] = @"ALBUM";
  v16[10] = @"ARTIST";
  v16[11] = @"METADATA_BLOCK_PICTURE";
  v16[12] = @"ENCODER";
  v14[13] = @"ENCODER";
  keys = @"title";
  v14[0] = @"TITLE";
  v14[1] = @"CHAPTERNAME";
  v14[2] = @"DESCRIPTION";
  v14[3] = @"ORGANIZATION";
  v14[4] = @"INVOLVED_PEOPLE";
  v14[5] = @"DATE";
  v14[6] = @"ISRC";
  v14[7] = @"LANGUAGE";
  v14[8] = @"LOCATION";
  v14[9] = @"COPYRIGHT";
  v14[10] = @"ALBUM";
  v14[11] = @"ARTIST";
  v14[12] = @"METADATA_BLOCK_PICTURE";
  v13[0] = @"title";
  v13[1] = @"title";
  v13[2] = @"description";
  v13[3] = @"publisher";
  v13[4] = @"contributor";
  v13[5] = @"creationDate";
  v13[6] = @"identifier";
  v13[7] = @"language";
  v13[8] = @"location";
  v13[9] = @"copyrights";
  v13[10] = @"albumName";
  v13[11] = @"artist";
  v13[12] = @"artwork";
  v13[13] = @"software";
  values = 2;
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  Mutable = CFDictionaryCreateMutable(v0, 0, v1, MEMORY[0x1E695E9E8]);
  v4 = 0;
  v5 = MEMORY[0x1E695E9C0];
  do
  {
    v6 = v18[v4];
    Value = CFDictionaryGetValue(v2, v6);
    if (Value)
    {
      v8 = Value;
      v9 = v16[v4];
      v10 = v0;
    }

    else
    {
      v9 = &v16[v4];
      v10 = v0;
      v8 = 1;
    }

    v11 = CFArrayCreate(v10, v9, v8, v5);
    CFDictionaryAddValue(Mutable, v6, v11);
    CFRelease(v11);
    ++v4;
  }

  while (v4 != 13);
  qword_1EAF19300 = Mutable;
  gVorbisCommentFieldStringKeyToCommonKeyDict = CFDictionaryCreate(v0, v14, v13, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFDictionaryRef FigAudioFileInfoDictionarySetUpCommonKeyMapping()
{
  keys[11] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"description";
  keys[2] = @"publisher";
  keys[3] = @"creationDate";
  keys[4] = @"identifier";
  keys[5] = @"copyrights";
  keys[6] = @"albumName";
  keys[7] = @"author";
  keys[8] = @"artist";
  keys[9] = @"artwork";
  keys[10] = @"software";
  values[0] = @"info-title";
  values[1] = @"info-description";
  values[2] = @"info-provider";
  values[3] = @"info-recorded date";
  values[4] = @"info-ISRC";
  values[5] = @"info-copyright";
  values[6] = @"info-album";
  values[7] = @"info-author";
  values[8] = @"info-artist";
  values[9] = @"aart";
  values[10] = @"info-encoding application";
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  gAudioFileCommonKeyToInfoDictionaryKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v0, values, keys, 11, v1, v2);
  gAudioFileInfoDictionaryKeyToCommonKeyDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping()
{
  v44 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960220];
  v18 = *MEMORY[0x1E69602B0];
  v19 = v1;
  v2 = *MEMORY[0x1E6960208];
  v20 = *MEMORY[0x1E6960230];
  v21 = v2;
  v3 = *MEMORY[0x1E69601F0];
  v22 = *MEMORY[0x1E6960210];
  v23 = v3;
  v4 = *MEMORY[0x1E69628D8];
  v24 = *MEMORY[0x1E69628E0];
  v25 = v4;
  v5 = *MEMORY[0x1E6960270];
  v26 = *MEMORY[0x1E6960288];
  v27 = v5;
  v6 = *MEMORY[0x1E6960240];
  v28 = *MEMORY[0x1E6960278];
  v29 = v6;
  v7 = *MEMORY[0x1E6960268];
  v30 = *MEMORY[0x1E69601F8];
  v31 = v7;
  v8 = *MEMORY[0x1E69602A8];
  v32 = *MEMORY[0x1E6960280];
  v33 = v8;
  v9 = *MEMORY[0x1E6960298];
  v34 = *MEMORY[0x1E6960290];
  v35 = v9;
  v10 = *MEMORY[0x1E69601E8];
  v36 = *MEMORY[0x1E69602A0];
  v37 = v10;
  v11 = *MEMORY[0x1E6960250];
  v38 = *MEMORY[0x1E6960248];
  v39 = v11;
  v12 = *MEMORY[0x1E6960238];
  v40 = *MEMORY[0x1E6960228];
  v41 = v12;
  v13 = *MEMORY[0x1E6960200];
  v42 = *MEMORY[0x1E6960258];
  v43 = v13;
  v16[0] = values[0];
  v16[1] = v0;
  v16[2] = v18;
  v16[3] = v2;
  v16[4] = v22;
  v16[5] = v26;
  v16[6] = v5;
  v16[7] = v28;
  v16[8] = v32;
  v16[9] = v8;
  v16[10] = v34;
  v16[11] = v9;
  v16[12] = v36;
  v16[13] = v6;
  v16[14] = v30;
  v16[15] = v7;
  v16[16] = v10;
  v16[17] = v38;
  v16[18] = v11;
  v16[19] = v40;
  v16[20] = v12;
  v16[21] = v1;
  v16[22] = v20;
  v16[23] = v3;
  v16[24] = v24;
  v16[25] = v4;
  v16[26] = v42;
  v16[27] = v13;
  v14 = *MEMORY[0x1E695E480];
  gQTMetadataDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], &FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping_fromQTMetadataDataTypes, values, 28, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v14, v16, &FigCoreMediaDataTypesSetUpQuickTimeMetadataMapping_toQTMetadataDataTypes, 28, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToQTMetadataDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpiTunesMetadataMapping()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v0;
  v1 = *MEMORY[0x1E6960218];
  v9 = *MEMORY[0x1E69602B0];
  v10 = v1;
  v2 = *MEMORY[0x1E6960230];
  v11 = *MEMORY[0x1E6960220];
  v12 = v2;
  v13 = *MEMORY[0x1E69601F0];
  keys[0] = values[0];
  keys[1] = v0;
  v3 = *MEMORY[0x1E6960288];
  keys[2] = v9;
  keys[3] = v3;
  v4 = *MEMORY[0x1E6960278];
  keys[4] = *MEMORY[0x1E6960270];
  keys[5] = v4;
  keys[6] = *MEMORY[0x1E6960280];
  keys[7] = v1;
  keys[8] = v11;
  keys[9] = v2;
  keys[10] = v13;
  v5 = *MEMORY[0x1E695E480];
  giTunesDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], &FigCoreMediaDataTypesSetUpiTunesMetadataMapping_fromiTunesDataTypes, values, 7, 0, MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v5, keys, &FigCoreMediaDataTypesSetUpiTunesMetadataMapping_toiTunesDataTypes, 11, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToiTunesDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpUTIMapping()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69637D8];
  keys[0] = *MEMORY[0x1E6963798];
  keys[1] = v0;
  v1 = *MEMORY[0x1E6963860];
  v19 = *MEMORY[0x1E6963808];
  v20 = v1;
  v2 = *MEMORY[0x1E69638C8];
  v21 = *MEMORY[0x1E6963760];
  v22 = v2;
  v23 = *MEMORY[0x1E69638C0];
  v3 = *MEMORY[0x1E6960218];
  values[0] = *MEMORY[0x1E6960260];
  values[1] = v3;
  v4 = *MEMORY[0x1E6960230];
  v13 = *MEMORY[0x1E6960220];
  v14 = v4;
  v5 = *MEMORY[0x1E69602B8];
  v15 = *MEMORY[0x1E69601F0];
  v16 = v5;
  v17 = *MEMORY[0x1E69602B0];
  v11[0] = values[0];
  v11[1] = v5;
  v11[2] = v17;
  v11[3] = v3;
  v11[4] = v13;
  v11[5] = v4;
  v11[6] = v15;
  v10[0] = keys[0];
  v10[1] = v2;
  v10[2] = v23;
  v10[3] = v0;
  v10[4] = v19;
  v10[5] = v1;
  v10[6] = v21;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  gUTIDataTypeToCoreMediaDataTypeDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = CFDictionaryCreate(v6, v11, v10, 7, v7, v8);
  gCoreMediaDataTypeToUTIDataTypeDict = result;
  return result;
}

CFDictionaryRef FigCoreMediaDataTypesSetUpUserdataMapping()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69602B8];
  v2[0] = *MEMORY[0x1E6960260];
  v2[1] = v0;
  v2[2] = *MEMORY[0x1E69602B0];
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], v2, &FigCoreMediaDataTypesSetUpUserdataMapping_toUserDataTypes, 3, MEMORY[0x1E695E9D8], 0);
  gCoreMediaDataTypeToUserDataTypeDict = result;
  return result;
}

uint64_t FigMetadataReaderCreateForiTunesMetadataArray(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigMetadataReaderCreateForiTunesMetadataArray_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForiTunesMetadataArray_cold_1(&v8);
    return v8;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

__CFString *FigiTunesMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigiTunesMetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigiTunesMetadataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_iTunes;
    goto LABEL_5;
  }

  return 4294954512;
}

void metadataPropertiesCallback(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
      }
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (basic type)\n", a2);
  }
}

uint64_t FigiTunesMetadataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigiTunesMetadataGetKeyCount_cold_1();
    return 0;
  }

  v4 = DerivedStorage;
  memset(v11, 0, sizeof(v11));
  if (a2)
  {
    if (CFEqual(a2, @"itsk"))
    {
      if (*(v4 + 40))
      {
        v5 = 0;
        v6 = *(v4 + 32);
        return v6 + v5;
      }

      v7 = 2;
      goto LABEL_15;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      FigiTunesMetadataGetKeyCount_cold_2();
      return 0;
    }

    if (!*(v4 + 56))
    {
      v8 = 0;
      v7 = 1;
      goto LABEL_16;
    }

    v6 = 0;
LABEL_12:
    v5 = *(v4 + 48);
    return v6 + v5;
  }

  if (*(DerivedStorage + 40) && *(DerivedStorage + 56))
  {
    v6 = *(DerivedStorage + 32);
    goto LABEL_12;
  }

  v7 = 0;
LABEL_15:
  v8 = 1;
LABEL_16:
  if (*(v4 + 24) < 1)
  {
    v5 = 0;
    v6 = 0;
    return v6 + v5;
  }

  if (!FigiTunesMetadataGetItemListAtomStream(v4, v11, 0))
  {
    v5 = 0;
    v6 = 0;
    while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      v6 += v8;
      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom)
      {
        if (Atom != -12890)
        {
          return 0;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            *(v4 + 48) = 0;
            *(v4 + 56) = 1;
            return v6 + v5;
          }

          *(v4 + 32) = v6;
        }

        else
        {
          *(v4 + 32) = v6;
          *(v4 + 48) = 0;
          *(v4 + 56) = 1;
        }

        *(v4 + 40) = 1;
        return v6 + v5;
      }
    }
  }

  return 0;
}

void ArrayiTunesDataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayiTunesDataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)iTunesMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayiTunesDataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_iTunes;
    goto LABEL_5;
  }

  return 4294954512;
}

uint64_t *ArrayiTunesDataHasKey(uint64_t a1, __CFString *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    ArrayiTunesDataHasKey_cold_7();
    return DerivedStorage;
  }

  if (!a3)
  {
    ArrayiTunesDataHasKey_cold_6();
    return 0;
  }

  if (!a2)
  {
    ArrayiTunesDataHasKey_cold_5();
    return 0;
  }

  v7 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (CFEqual(a2, @"comn"))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFStringGetTypeID())
    {
      valuePtr = CFDictionaryGetValue(v7, a3);
      if (valuePtr)
      {
        v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        a2 = @"itlk";
        goto LABEL_19;
      }
    }

    else
    {
      ArrayiTunesDataHasKey_cold_1();
    }

    return 0;
  }

  if (!CFEqual(a2, @"itsk"))
  {
    if (CFEqual(a2, @"itlk"))
    {
      v11 = CFRetain(a3);
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v10 = CFGetTypeID(a3);
  if (v10 == CFStringGetTypeID())
  {
    if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
    {
      ArrayiTunesDataHasKey_cold_4();
      return 0;
    }

    goto LABEL_16;
  }

  v12 = CFGetTypeID(a3);
  if (v12 != CFNumberGetTypeID())
  {
LABEL_21:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    ArrayiTunesDataHasKey_cold_2();
    return 0;
  }

LABEL_16:
  if (valuePtr == 757935405)
  {
    ArrayiTunesDataHasKey_cold_3();
    return 0;
  }

  v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_18:
  v9 = v11;
LABEL_19:
  DerivedStorage = FigMetadataArrayHasKey(*DerivedStorage, v9, a2, 0, 0, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  return DerivedStorage;
}

CFIndex ArrayiTunesDataGetKeyCount(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    ArrayiTunesDataGetKeyCount_cold_1();
    return 0;
  }

  v4 = DerivedStorage;
  if (!a2)
  {
    if (!*(DerivedStorage + 16) || !*(DerivedStorage + 32))
    {
LABEL_9:
      KeyCount = FigMetadataArrayGetKeyCount(*v4, @"itsk");
      *(v4 + 8) = KeyCount;
      *(v4 + 16) = 1;
      if (a2)
      {
        v5 = 0;
        return KeyCount + v5;
      }

LABEL_18:
      v5 = FigMetadataArrayGetKeyCount(*v4, @"itlk");
      *(v4 + 24) = v5;
      *(v4 + 32) = 1;
      return KeyCount + v5;
    }

    KeyCount = *(DerivedStorage + 8);
LABEL_14:
    v5 = *(v4 + 24);
    return KeyCount + v5;
  }

  if (!CFEqual(a2, @"itsk"))
  {
    if (CFEqual(a2, @"itlk"))
    {
      if (!*(v4 + 32))
      {
        KeyCount = 0;
        goto LABEL_18;
      }

      KeyCount = 0;
      goto LABEL_14;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = 0;
  KeyCount = *(v4 + 8);
  return KeyCount + v5;
}

uint64_t ArrayiTunesDataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (a5)
    {
      v9 = DerivedStorage;
      if (!a2 || CFEqual(a2, @"itsk") || CFEqual(a2, @"itlk"))
      {
        v10 = *v9;

        return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
      }

      else
      {
        ArrayiTunesDataCopyKeyAtIndex_cold_1(&v12);
        return v12;
      }
    }

    else
    {
      ArrayiTunesDataCopyKeyAtIndex_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    ArrayiTunesDataCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }
}

uint64_t ArrayiTunesDataGetItemCount(uint64_t a1, __CFString *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    ArrayiTunesDataGetItemCount_cold_8();
    return DerivedStorage;
  }

  if (a2)
  {
    v7 = CommonKeyToShortKeyMapping;
    valuePtr = 0;
    if (CFEqual(a2, @"comn"))
    {
      if (a3)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFStringGetTypeID())
        {
          valuePtr = CFDictionaryGetValue(v7, a3);
          if (valuePtr)
          {
            v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
            a2 = @"itsk";
            goto LABEL_26;
          }
        }

        else
        {
          ArrayiTunesDataGetItemCount_cold_1();
        }
      }

      else
      {
        ArrayiTunesDataGetItemCount_cold_2();
      }

      return 0;
    }

    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
          {
            ArrayiTunesDataGetItemCount_cold_5();
            return 0;
          }

          goto LABEL_23;
        }

        v15 = CFGetTypeID(a3);
        if (v15 == CFNumberGetTypeID())
        {
          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
            ArrayiTunesDataGetItemCount_cold_3();
            return 0;
          }

LABEL_23:
          if (valuePtr == 757935405)
          {
            ArrayiTunesDataGetItemCount_cold_4();
            return 0;
          }

          v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_25:
          v9 = v14;
LABEL_26:
          DerivedStorage = FigMetadataArrayGetItemCount(*DerivedStorage, v9, a2, 0, 0, 0);
          if (v9)
          {
            CFRelease(v9);
          }

          return DerivedStorage;
        }

LABEL_28:
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        return 0;
      }
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
        goto LABEL_28;
      }

      if (a3)
      {
        v13 = CFGetTypeID(a3);
        if (v13 != CFStringGetTypeID())
        {
          ArrayiTunesDataGetItemCount_cold_6();
          return 0;
        }

        v14 = CFRetain(a3);
        goto LABEL_25;
      }
    }
  }

  else if (a3)
  {
    ArrayiTunesDataGetItemCount_cold_7();
    return 0;
  }

  v10 = *DerivedStorage;

  return FigMetadataArrayGetItemCount(v10, 0, a2, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return FigAtomStreamInitWithParent();
}

uint64_t OUTLINED_FUNCTION_7_34(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __CFDictionary **a9)
{

  return FigMetadataArrayCopyItemWithKeyAndIndex(a1, a2, v10, v11, 0, 0, 0, v9, a9);
}

CFStringRef OUTLINED_FUNCTION_9_29(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 0);
}

uint64_t OUTLINED_FUNCTION_13_20()
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

double fhqCF_Init(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void fhqCF_Finalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 72));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {

    dispatch_release(v7);
  }
}

CFStringRef fhqCF_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  Rate = CMTimebaseGetRate(*(a1 + 32));
  return CFStringCreateWithFormat(v2, 0, @"FigHapticQueue:%p{engine=%@, rate=%.1f}", a1, v3, *&Rate);
}

uint64_t __FigHapticQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigHapticQueueGetTypeID_cfTypeID = result;
  return result;
}

uint64_t FigHapticQueueCreate(const __CFAllocator *a1, const void *a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigHapticQueueCreate_cold_4(v23);
    return v23[0];
  }

  if (FigHapticQueueGetTypeID_nonce != -1)
  {
    FigHapticQueueCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigHapticQueueCreate_cold_3(v23);
    return v23[0];
  }

  v7 = Instance;
  *(Instance + 24) = CFRetain(a2);
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1065353216;
  *(v7 + 88) = 0;
  if (dword_1EAF17040)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = CMBufferQueueCreateWithHandlers(a1, 0, &FigHapticQueueCreate_hapticPlayerQueueHandlers, (v7 + 64));
  if (v9)
  {
    v17 = v9;
    goto LABEL_20;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v7 + 80) = Mutable;
  if (!Mutable)
  {
    FigHapticQueueCreate_cold_2(v23);
    v17 = v23[0];
    goto LABEL_20;
  }

  v11 = dispatch_queue_create("com.apple.coremedia.hapticsqueue", 0);
  *(v7 + 16) = v11;
  if (!v11 || (v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11), (*(v7 + 72) = v12) == 0) || (v13 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
  {
    v17 = 4294949434;
LABEL_20:
    CFRelease(v7);
    return v17;
  }

  v14 = v13;
  v15 = *(v7 + 72);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigHapticQueueCreate_block_invoke;
  handler[3] = &__block_descriptor_tmp_23_0;
  handler[4] = v14;
  dispatch_source_set_event_handler(v15, handler);
  v16 = *(v7 + 72);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __FigHapticQueueCreate_block_invoke_2;
  v19[3] = &__block_descriptor_tmp_24_0;
  v19[4] = v14;
  dispatch_source_set_cancel_handler(v16, v19);
  dispatch_source_set_timer(*(v7 + 72), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v7 + 72));
  v17 = 0;
  *a3 = v7;
  return v17;
}

double gFigHapticQueueTrace_block_invoke@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  FigHapticPlayerGetOutputTimeRange(a1, &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double gFigHapticQueueTrace_block_invoke_2@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  FigHapticPlayerGetOutputTimeRange(a1, &v4);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t gFigHapticQueueTrace_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigHapticPlayerGetOutputTimeRange(a2, &v7);
  time1 = v7;
  FigHapticPlayerGetOutputTimeRange(a3, &v5);
  time2 = v5;
  return CMTimeCompare(&time1, &time2);
}

void __FigHapticQueueCreate_block_invoke()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    fhq_scheduleWaitingHapticPlayers(v0);

    CFRelease(v1);
  }
}

uint64_t FigHapticQueueSetTimebase(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigHapticQueueSetTimebase_block_invoke;
  v4[3] = &__block_descriptor_tmp_25_1;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

void __FigHapticQueueSetTimebase_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigHapticQueueSetActiveChannelIndex(uint64_t a1, CFNumberRef number)
{
  valuePtr[22] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  if (dword_1EAF17040 >= 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberCFIndexType, valuePtr);
    v5 = valuePtr[0];
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 48) = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __FigHapticQueueSetActiveChannelIndex_block_invoke;
  v7[3] = &__block_descriptor_tmp_27_0;
  v7[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v7);
}

uint64_t FigHapticQueueStart(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueueStart_block_invoke;
  block[3] = &unk_1E7485AF0;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueuePause(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueuePause_block_invoke;
  block[3] = &unk_1E7485B18;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueueStop(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHapticQueueStop_block_invoke;
  block[3] = &unk_1E7485B40;
  block[4] = &v9;
  block[5] = a1;
  dispatch_sync(v3, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t FigHapticQueueEnqueueSamples(uint64_t a1, CMSampleBufferRef sbuf)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __FigHapticQueueEnqueueSamples_block_invoke;
  handler[3] = &__block_descriptor_tmp_37;
  handler[4] = a1;
  return CMSampleBufferCallBlockForEachSample(sbuf, handler);
}

uint64_t __FigHapticQueueEnqueueSamples_block_invoke_2(uint64_t a1)
{
  result = fhq_scheduleHapticPlayer(*(a1 + 40), *(a1 + 48), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fhq_applyBlockToSubmittedPlayers()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  FigCFArrayApplyBlock();
  v0 = *(v3 + 6);
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t __fhq_applyBlockToSubmittedPlayers_block_invoke(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 24))
  {
    v1 = result;
    result = (*(*(result + 32) + 16))();
    *(*(*(v1 + 40) + 8) + 24) = result;
  }

  return result;
}

void fhq_rescheduleWaitingPlayersAfterTime(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v5 = *a2;
    CMTimeConvertScale(&v6, &v5, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *a2 = v6;
    v4 = dispatch_time(0, *a2);
  }

  else
  {
    v4 = -1;
  }

  dispatch_source_set_timer(*(a1 + 72), v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

uint64_t __fhq_pauseSubmittedPlayers_block_invoke(uint64_t a1, const void *a2)
{
  result = FigHapticPlayerPauseNow(a2);
  if (!result)
  {
    v5 = *(*(a1 + 32) + 64);

    return CMBufferQueueEnqueue(v5, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_73()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_9_30(__int128 *a1@<X8>, __int128 a2, uint64_t a3)
{
  a2 = *a1;
  a3 = *(a1 + 2);

  fhq_rescheduleWaitingPlayersAfterTime(v3, &a2);
}

BOOL OUTLINED_FUNCTION_19_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigMetadataReaderCreateForQuickTimeMetadata(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2 || !a4 || a3 < 0)
  {

    return FigSignalErrorAtGM();
  }

  FigMetadataReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[2] = CFRetain(a2);
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = a3;
  v17 = 0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v9 = CMBaseObjectGetDerivedStorage();
  if (*(v9 + 24) || *(v9 + 32) || FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return 4294954687;
  }

  v12 = 0;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      CurrentAtomGlobalOffset = CurrentAtomTypeAndDataLength;
      goto LABEL_27;
    }

    if (v17 == 1801812339 || v17 == 1768715124)
    {
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    else
    {
      if (v17 != 1751411826)
      {
        goto LABEL_23;
      }

      CurrentAtomGlobalOffset = FigMetadataValidateHandlerType(v15, v16);
      if (!CurrentAtomGlobalOffset)
      {
        v12 = 1;
      }
    }

    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_27;
    }

LABEL_23:
    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890)
  {
    CurrentAtomGlobalOffset = 0;
  }

  else
  {
    CurrentAtomGlobalOffset = Atom;
  }

LABEL_27:
  if (!v12)
  {
    return 4294954687;
  }

  if (!CurrentAtomGlobalOffset)
  {
    *a4 = 0;
  }

  return CurrentAtomGlobalOffset;
}

uint64_t FigMetadataReaderCreateForQuickTimeMetadataArray(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigMetadataReaderCreateForQuickTimeMetadataArray_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigMetadataReaderCreateForQuickTimeMetadataArray_cold_1(&v8);
    return v8;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void FigQuickTimeMetadataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *FigQuickTimeMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigQuickTimeMetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*DerivedStorage);
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_0, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigQuickTimeMetadataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    v7 = MEMORY[0x1E695E4D0];
LABEL_7:
    v8 = CFRetain(*v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"format"))
  {
    v7 = &kFigMetadataFormat_QuickTimeMetadata;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"containerByteStream"))
  {
    v7 = (DerivedStorage + 16);
    goto LABEL_7;
  }

  return 4294954512;
}

void metadataPropertiesCallback_0(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
      valuePtr = bswap32(valuePtr);
      CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
    }

    else
    {
      v7 = CFGetTypeID(a2);
      if (v7 == CFDataGetTypeID() && (v8 = *MEMORY[0x1E695E480], BytePtr = CFDataGetBytePtr(a2), Length = CFDataGetLength(a2), (v11 = CFStringCreateWithBytes(v8, BytePtr, Length, 0, 0)) != 0))
      {
        v12 = v11;
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", v11);

        CFRelease(v12);
      }

      else
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }

  else if (CFEqual(a1, @"locale"))
  {
    CFStringAppendFormat(a3, 0, @"     Locale = %@\n", a2);
  }

  else if (CFEqual(a1, @"dataType"))
  {
    CFStringAppendFormat(a3, 0, @"     DataType = %@ (well-known)\n", a2);
  }

  else if (CFEqual(a1, @"keyspace"))
  {
    CFStringAppendFormat(a3, 0, @"     Keyspace = %@\n", a2);
  }
}

uint64_t FigQuickTimeMetadataCopyValue(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (!a1)
  {
    FigQuickTimeMetadataCopyValue_cold_5(&cf);
LABEL_62:
    v33 = 0;
    v32 = cf;
    goto LABEL_41;
  }

  v8 = a3;
  if (!a3)
  {
    FigQuickTimeMetadataCopyValue_cold_4(&cf);
    goto LABEL_62;
  }

  if (!theString)
  {
    FigQuickTimeMetadataCopyValue_cold_3(&cf);
    goto LABEL_62;
  }

  if (!a6)
  {
    FigQuickTimeMetadataCopyValue_cold_2(&cf);
    goto LABEL_62;
  }

  v13 = a1;
  if (CFStringGetLength(theString) != 4)
  {
    FigQuickTimeMetadataCopyValue_cold_1(&cf);
    goto LABEL_62;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v45 = v14(v13, theString, v8), v45 < 1))
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_41;
  }

  v37 = a6;
  v38 = a7;
  v15 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *MEMORY[0x1E695E6D0];
  key = *MEMORY[0x1E695E6F0];
  v39 = a5;
  v16 = 1;
  v40 = v13;
  while (1)
  {
    v46 = 0;
    cf = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v17)
    {
      v32 = -12782;
      goto LABEL_52;
    }

    v18 = v17(v13, theString, v8, v16 - 1, a5, &cf, &v46);
    if (v18)
    {
      break;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      v19 = v15;
      v20 = v8;
      v21 = a4;
      v22 = v46;
      v23 = CFLocaleCopyCurrent();
      Value = CFLocaleGetValue(v23, key);
      v25 = CFLocaleGetValue(v23, v43);
      if (v22 && (v26 = v25, (v27 = CFDictionaryGetValue(v22, @"locale")) != 0))
      {
        v28 = v27;
        v29 = CFLocaleGetValue(v27, key);
        v30 = 0;
        if (v29 && Value)
        {
          v30 = CFStringCompare(v29, Value, 0) == kCFCompareEqualTo;
        }

        v31 = CFLocaleGetValue(v28, v43);
        if (v31)
        {
          v8 = v20;
          v15 = v19;
          if (v26 && CFStringCompare(v31, v26, 0) == kCFCompareEqualTo)
          {
            ++v30;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v30 = 0;
      }

      v8 = v20;
      v15 = v19;
LABEL_25:
      v13 = v40;
      a4 = v21;
      if (v23)
      {
        CFRelease(v23);
      }

      a5 = v39;
      if (v30 >= v15)
      {
        if (v41)
        {
          CFRelease(v41);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        v15 = v30 + 1;
        v41 = CFRetain(cf);
        v42 = CFRetain(v46);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v46)
    {
      CFRelease(v46);
    }

    v32 = 0;
    if (v16 < v45)
    {
      ++v16;
      if (v15 < 3)
      {
        continue;
      }
    }

    goto LABEL_52;
  }

  v32 = v18;
LABEL_52:
  v33 = v41 != 0;
  if (v41 && (*v37 = v41, v38))
  {
    *v38 = v42;
    v33 = 1;
  }

  else if (v42)
  {
    CFRelease(v42);
  }

LABEL_41:
  if (v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (a4)
  {
    v35 = -12608;
  }

  else
  {
    v35 = -12607;
  }

  if (v34)
  {
    return v32;
  }

  else
  {
    return v35;
  }
}

uint64_t metadataCreateNativeKeySpaceAndKeys(const __CFString *a1, void *a2, void *a3, void *a4)
{
  cf = 0;
  values = a2;
  if (!a1)
  {
    v13 = *MEMORY[0x1E695E480];
    if (a2)
    {
      v14 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        metadataCreateNativeKeySpaceAndKeys_cold_5(&v22);
        return v22;
      }
    }

    else
    {
      v14 = CFArrayCreate(v13, MEMORY[0x1E695E738], 1, MEMORY[0x1E695E9C0]);
      if (!v14)
      {
        metadataCreateNativeKeySpaceAndKeys_cold_6(&v22);
        return v22;
      }
    }

LABEL_20:
    v12 = v14;
    v11 = 0;
    goto LABEL_21;
  }

  if (CFStringGetLength(a1) != 4)
  {
    metadataCreateNativeKeySpaceAndKeys_cold_1(&v22);
    return v22;
  }

  if (!a2)
  {
    v14 = CFArrayCreate(*MEMORY[0x1E695E480], MEMORY[0x1E695E738], 1, MEMORY[0x1E695E9C0]);
    if (!v14)
    {
      metadataCreateNativeKeySpaceAndKeys_cold_4(&v22);
      return v22;
    }

    goto LABEL_20;
  }

  if (!CFEqual(a1, @"comn"))
  {
    v15 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    if (v15)
    {
      v12 = v15;
      v11 = CFRetain(a1);
      v16 = CFEqual(a1, @"mdta");
      v17 = CFGetTypeID(values);
      TypeID = CFStringGetTypeID();
      if (v16)
      {
        if (v17 == TypeID)
        {
          goto LABEL_21;
        }
      }

      else if (v17 == TypeID || v17 == CFDataGetTypeID())
      {
        goto LABEL_21;
      }

      v9 = FigSignalErrorAtGM();
      CFRelease(v12);
      if (!v11)
      {
        return v9;
      }

      v10 = v11;
LABEL_34:
      CFRelease(v10);
      return v9;
    }

    metadataCreateNativeKeySpaceAndKeys_cold_3(&v22);
    return v22;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID())
  {
    metadataCreateNativeKeySpaceAndKeys_cold_2(&v22);
    return v22;
  }

  v9 = FigQuickTimeMetadataCopyNativeKeysFromCommonKey(a2, &cf);
  v10 = cf;
  if (v9)
  {
    goto LABEL_33;
  }

  if (!cf)
  {
    cf = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    if (!cf)
    {
      v9 = FigSignalErrorAtGM();
      v10 = cf;
LABEL_33:
      if (!v10)
      {
        return v9;
      }

      goto LABEL_34;
    }
  }

  v11 = CFRetain(@"mdta");
  v12 = cf;
LABEL_21:
  v9 = 0;
  *a4 = v12;
  *a3 = v11;
  return v9;
}

uint64_t FigQuickTimeMetadataCopyKeyPosSet(const void *a1, const __CFString *a2, const __CFString *a3, __CFSet **a4)
{
  v30 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigQuickTimeMetadataCopyKeyPosSet_cold_3(v31);
    return LODWORD(v31[0]);
  }

  v9 = DerivedStorage;
  if (a2)
  {
    v29 = FigQuickTimeMetadataStringToOSType(a2);
  }

  else
  {
    v29 = 0;
  }

  memset(v31, 0, sizeof(v31));
  if (a3)
  {
    v10 = CFGetTypeID(a3);
    if (v10 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a3);
      v12 = Length;
      if (Length >= 1)
      {
        BytePtr = malloc_type_malloc(Length, 0x100004077774924uLL);
        if (!BytePtr)
        {
          FigQuickTimeMetadataCopyKeyPosSet_cold_2(v32);
          v15 = 0;
          v17 = 0;
          goto LABEL_60;
        }

        v33.location = 0;
        v33.length = v12;
        if (v12 != CFStringGetBytes(a3, v33, 0x8000100u, 0, 0, BytePtr, v12, 0))
        {
          v14 = FigSignalErrorAtGM();
          v15 = 0;
          Mutable = 0;
          v17 = 1;
          goto LABEL_11;
        }

        v17 = 1;
LABEL_20:
        v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
        if (v15)
        {
          goto LABEL_21;
        }

        FigQuickTimeMetadataCopyKeyPosSet_cold_1(v32);
LABEL_60:
        Mutable = 0;
        v14 = v32[0];
LABEL_11:
        if (!v14)
        {
          *a4 = Mutable;
          goto LABEL_13;
        }

LABEL_47:
        if (!v17)
        {
          goto LABEL_50;
        }

LABEL_48:
        if (BytePtr)
        {
          free(BytePtr);
        }

        goto LABEL_50;
      }

      BytePtr = 0;
      v15 = 0;
      v17 = 0;
    }

    else
    {
      v12 = CFDataGetLength(a3);
      BytePtr = CFDataGetBytePtr(a3);
      v17 = 0;
      if (v12 >= 1)
      {
        goto LABEL_20;
      }

      v15 = 0;
    }
  }

  else
  {
    BytePtr = 0;
    v15 = 0;
    v17 = 0;
    v12 = 0;
  }

LABEL_21:
  inited = FigQuickTimeMetadataInitKeyListAtomStreamAndEntryCount(v9, v31, &v30 + 1);
  if (inited)
  {
    v14 = inited;
LABEL_13:
    Mutable = 0;
    if (!v17)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  cf = a1;
  v27 = a4;
  if (!HIDWORD(v30))
  {
    Mutable = 0;
LABEL_46:
    v14 = 4294954692;
    goto LABEL_47;
  }

  v19 = 0;
  Mutable = 0;
  if (a2)
  {
    v20 = a3 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      break;
    }

    if (a3)
    {
      if (v12)
      {
        goto LABEL_38;
      }
    }

    else if (a2 && v30 != v29)
    {
      goto LABEL_38;
    }

    if (!Mutable)
    {
      v23 = CFGetAllocator(cf);
      Mutable = CFSetCreateMutable(v23, 0, 0);
    }

    CFSetAddValue(Mutable, (v19 + 1));
    if (v21)
    {
LABEL_43:
      v14 = 0;
LABEL_44:
      if (v14)
      {
        a4 = v27;
        goto LABEL_11;
      }

      a4 = v27;
      if (Mutable)
      {
        goto LABEL_11;
      }

      goto LABEL_46;
    }

LABEL_38:
    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom == -12890)
    {
      goto LABEL_43;
    }

    v14 = Atom;
    if (!Atom && v19++ < HIDWORD(v30))
    {
      continue;
    }

    goto LABEL_44;
  }

  v14 = CurrentAtomTypeAndDataLength;
  if (v17)
  {
    goto LABEL_48;
  }

LABEL_50:
  if (v15)
  {
    free(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t FigQuickTimeMetadataStringToOSType(const __CFString *a1)
{
  *buffer = 0;
  v4.length = CFStringGetLength(a1);
  v4.location = 0;
  CFStringGetBytes(a1, v4, 0, 0, 0, buffer, 4, 0);
  return bswap32(*buffer);
}

CFStringRef FigQuickTimeMetadataCreateExtendedLanguageTag(CFAllocatorRef alloc, unsigned int a2, unsigned int a3)
{
  CStringPtrAndBufferToFree = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a3 >= 0x100)
  {
    ISO639_1Mapping = FigMetadataGetISO639_1Mapping();
    value = 0;
    if (!CFDictionaryGetValueIfPresent(ISO639_1Mapping, a3, &value))
    {
      ISO639_1NonCanonicalMapping = FigMetadataGetISO639_1NonCanonicalMapping();
      if (!CFDictionaryGetValueIfPresent(ISO639_1NonCanonicalMapping, a3, &value))
      {
        LOBYTE(v18) = (a3 >> 10) | 0x60;
        BYTE1(v18) = (a3 >> 5) & 0x1F | 0x60;
        BYTE2(v18) = a3 & 0x1F | 0x60;
      }
    }

    CStringPtrAndBufferToFree = value;
    if (value)
    {
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      if (!CStringPtrAndBufferToFree)
      {
        FigQuickTimeMetadataCreateExtendedLanguageTag_cold_1();
LABEL_17:
        v12 = 0;
        goto LABEL_18;
      }
    }
  }

  if (a2 >= 0x100)
  {
    v16 = __rev16(a2);
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v9 = &v18;
  if (CStringPtrAndBufferToFree)
  {
    v9 = CStringPtrAndBufferToFree;
  }

  v10 = "-";
  v11 = "";
  if (a2)
  {
    v11 = &v16;
  }

  else
  {
    v10 = "";
  }

  v12 = CFStringCreateWithFormat(alloc, 0, @"%s%s%s", v9, v10, v11);
LABEL_18:
  free(v15);
  return v12;
}

void ArrayQTMetadataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *ArrayQTMetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" Fig(Array)QuickTimeMetadataReader %p\n", DerivedStorage);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v6 = v5(a1, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v6);
      for (i = 0; i != v7; ++i)
      {
        theDict = 0;
        cf = 0;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v9 || v9(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v10 = CFCopyDescription(cf);
          if (v10)
          {
            v11 = v10;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v10);
            CFRelease(v11);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_0, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t ArrayQTMetadataCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (CFEqual(cf1, @"complete"))
  {
    v6 = MEMORY[0x1E695E4D0];
LABEL_5:
    v7 = CFRetain(*v6);
    result = 0;
    *a4 = v7;
    return result;
  }

  if (CFEqual(cf1, @"format"))
  {
    v6 = &kFigMetadataFormat_QuickTimeMetadata;
    goto LABEL_5;
  }

  return 4294954512;
}

const __CFString *ArrayQTMetadataHasKey(uint64_t a1, const __CFString *a2, void *a3)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    ArrayQTMetadataHasKey_cold_3();
LABEL_20:
    a2 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    ArrayQTMetadataHasKey_cold_2();
    goto LABEL_14;
  }

  v6 = DerivedStorage;
  if (CFStringGetLength(a2) != 4)
  {
    ArrayQTMetadataHasKey_cold_1();
    goto LABEL_20;
  }

  v7 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
  v8 = theArray;
  if (!v7 && CFArrayGetCount(theArray) && (Count = CFArrayGetCount(v8)) != 0)
  {
    v10 = Count;
    v11 = 0;
    v12 = cf;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      HasKey = FigMetadataArrayHasKey(*v6, ValueAtIndex, v12, 0, 0, 0);
      if (HasKey)
      {
        break;
      }

      if (v10 == ++v11)
      {
        goto LABEL_10;
      }
    }

    a2 = HasKey;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
    a2 = 0;
    if (v8)
    {
LABEL_13:
      CFRelease(v8);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return a2;
}

CFIndex ArrayQTMetadataGetKeyCount(uint64_t a1, const __CFString *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (CFStringGetLength(a2) == 4)
    {
      if (!CFEqual(a2, @"comn"))
      {
        goto LABEL_4;
      }

      ArrayQTMetadataGetKeyCount_cold_2();
    }

    else
    {
      ArrayQTMetadataGetKeyCount_cold_1();
    }

    return 0;
  }

LABEL_4:
  v4 = *DerivedStorage;

  return FigMetadataArrayGetKeyCount(v4, a2);
}

uint64_t ArrayQTMetadataCopyKeyAtIndex(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_3(&v14);
    return v14;
  }

  v9 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (CFStringGetLength(a2) != 4)
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_1(&v12);
    return v12;
  }

  if (CFEqual(a2, @"comn"))
  {
    ArrayQTMetadataCopyKeyAtIndex_cold_2(&v13);
    return v13;
  }

  else
  {
LABEL_5:
    v10 = *v9;

    return FigMetadataArrayCopyKeyAtIndex(v10, a3, a2, a5);
  }
}

uint64_t ArrayQTMetadataCopyItemWithKeyAndIndex(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, __CFDictionary **a7)
{
  cf = 0;
  theArray = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a6 | a7)
  {
    v13 = DerivedStorage;
    v14 = metadataCreateNativeKeySpaceAndKeys(a2, a3, &cf, &theArray);
    v15 = theArray;
    if (v14)
    {
      v23 = v14;
    }

    else if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(v15);
      if (Count)
      {
        v17 = Count;
        v18 = 0;
        v19 = *MEMORY[0x1E695E738];
        v20 = cf;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
          if (CFEqual(ValueAtIndex, v19))
          {
            v22 = 0;
          }

          else
          {
            v22 = ValueAtIndex;
          }

          v23 = FigMetadataArrayCopyItemWithKeyAndIndex(*v13, v22, a4, v20, 0, 0, 0, a6, a7);
          if (!v23)
          {
            break;
          }

          ++v18;
        }

        while (v17 != v18);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 4294954689;
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    ArrayQTMetadataCopyItemWithKeyAndIndex_cold_1(&v27);
    v23 = v27;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  v2 = *(v0 - 216);

  return CMBlockBufferGetDataPointer(v2, 0, 0, 0, (v0 - 224));
}

uint64_t OUTLINED_FUNCTION_14_23()
{

  return FigAtomStreamGetCurrentAtomTypeAndDataLength();
}

uint64_t OUTLINED_FUNCTION_17_20()
{
  v3 = (bswap32(*v0) >> 16);

  return MEMORY[0x1EEDBC680](v1, v3);
}

uint64_t FigAssetDownloadCoordinatorMarkAssetForInteractivity(uint64_t a1)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v4 = 0;
  if (a1)
  {
    v3[0] = qword_1ED4CA980;
    v3[1] = a1;
    dispatch_sync_f(*(qword_1ED4CA980 + 8), v3, sadc_markAssetForInteractivityDispatch);
    return v4;
  }

  else
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_2(&v5);
    return v5;
  }
}

void sadc_markAssetForInteractivityDispatch(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  cf = 0;
  value = 0;
  v4 = sadc_copyAssetWeakReference(v2, v3, &value);
  if (v4)
  {
    goto LABEL_9;
  }

  CFBagAddValue(*(v2 + 56), value);
  v5 = sadc_copyAssetDownloaderForAsset(v2, v3, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = cf == 0;
  }

  if (!v7)
  {
    if (MEMORY[0x19A8CCA80](*(v2 + 56), value) != 1)
    {
      v5 = 0;
      goto LABEL_12;
    }

    v8 = cf;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v9)
    {
      v5 = -12782;
      goto LABEL_12;
    }

    v4 = v9(v8);
LABEL_9:
    v5 = v4;
LABEL_12:
    v6 = cf;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (value)
  {
    CFRelease(value);
  }

  *(a1 + 16) = v5;
}

uint64_t FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(const void *a1)
{
  if (_MergedGlobals_52 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_3(&v7);
    return v7;
  }

  FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = qword_1ED4CA980;
  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x106004025F8D3E0uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = v2;
    v3[1] = CFRetain(a1);
    dispatch_async_f(*(v2 + 8), v4, sadc_unmarkAssetForInteractivityDispatch);
    return 0;
  }

  else
  {
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity_cold_2(&v6);
    return v6;
  }
}

void sadc_unmarkAssetForInteractivityDispatch(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  cf = 0;
  value = 0;
  if (sadc_copyAssetWeakReference(v3, v2, &value))
  {
    goto LABEL_7;
  }

  CFBagRemoveValue(*(v3 + 56), value);
  v4 = sadc_copyAssetDownloaderForAsset(v3, v2, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (!v6)
  {
    sadc_unmarkAssetForInteractivityDispatch_cold_1((v3 + 56), &value, &cf);
LABEL_7:
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (value)
  {
    CFRelease(value);
  }

  FigDeferCFRelease();
  free(a1);
}

uint64_t FigAssetDownloadCoordinatorRegisterAssetForDownloader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v14 = 0;
  if (!a1)
  {
    FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_3(&v15);
    return v15;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorRegisterAssetForDownloader_cold_2(&v15);
    return v15;
  }

  v13[0] = qword_1ED4CA980;
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  dispatch_sync_f(*(qword_1ED4CA980 + 8), v13, sadc_registerAssetForDownloaderDispatch);
  result = HIDWORD(v14);
  if (a6)
  {
    if (!HIDWORD(v14))
    {
      *a6 = v14;
    }
  }

  return result;
}

uint64_t sadc_getWeakAssetKey(uint64_t a1, void *a2)
{
  valuePtr = 0;
  number = 0;
  if (a2)
  {
    CMBaseObject = FigAssetGetCMBaseObject(a1);
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v4 || v4(CMBaseObject, @"assetProperty_DownloadToken", *MEMORY[0x1E695E480], &number))
    {
      sadc_getWeakAssetKey_cold_2(&v9);
    }

    else
    {
      CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
      if (valuePtr)
      {
        v5 = 0;
        *a2 = valuePtr;
        goto LABEL_6;
      }

      sadc_getWeakAssetKey_cold_1(&v9);
    }
  }

  else
  {
    sadc_getWeakAssetKey_cold_3(&v9);
  }

  v5 = v9;
LABEL_6:
  if (number)
  {
    CFRelease(number);
  }

  return v5;
}

uint64_t sadc_copyDestinationURLForAssetKey(uint64_t a1, const void *a2, void *a3)
{
  if (a3)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *a3 = Value;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    sadc_copyDestinationURLForAssetKey_cold_1(&v8);
    return v8;
  }
}

uint64_t FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken(const void *a1, void *a2)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    FigAssetDownloadCoordinatorCopyDestinationURLForDownloadToken_cold_2(&v6);
    return v6;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = qword_1ED4CA980;

  return sadc_copyDestinationURLForAssetKey(v4, a1, a2);
}

uint64_t FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders(uint64_t a1)
{
  if (_MergedGlobals_52 != -1)
  {
    FigAssetDownloadCoordinatorMarkAssetForInteractivity_cold_1();
  }

  v2 = qword_1ED4CA980;
  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (v3)
  {
    *v3 = v2;
    v3[1] = a1;
    dispatch_async_f(*(v2 + 8), v3, sadc_unregisterAssetWithDownloadTokenForAllDownloadersDispatch);
    return 0;
  }

  else
  {
    FigAssetDownloadCoordinatorUnregisterAssetWithDownloadTokenForAllDownloaders_cold_2(&v5);
    return v5;
  }
}

void sadc_unregisterAssetWithDownloadTokenForAllDownloadersDispatch(CFDictionaryRef **a1)
{
  v3 = *a1;
  v2 = a1[1];
  FigSimpleMutexLock();
  v4 = CFDictionaryContainsKey(v3[3], v2);
  FigSimpleMutexUnlock();
  if (v4)
  {
    if (CFDictionaryGetValue(v3[5], v2))
    {
      FigSimpleMutexLock();
      CFDictionaryGetValue(v3[3], v2);
      FigSimpleMutexUnlock();
      FigFileDeleteDirectory();
    }

    FigSimpleMutexLock();
    CFDictionaryRemoveValue(v3[3], v2);
    FigSimpleMutexUnlock();
    CFDictionaryRemoveValue(v3[4], v2);
    CFDictionaryRemoveValue(v3[5], v2);
  }

  free(a1);
}

uint64_t FigAssetDownloadCoordinatorScheduleAccessToURL(const void *a1, const void *a2, NSObject *a3, char a4, uint64_t a5)
{
  if (qword_1ED4CA988 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_6(&v14);
    return v14;
  }

  FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!a2)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_4(&v14);
    return v14;
  }

  if (!a5)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_3(&v14);
    return v14;
  }

  v10 = qword_1ED4CA990;
  v11 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E0040F23578B3uLL);
  if (!v11)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_2(&v14);
    return v14;
  }

  v12 = v11;
  *v11 = CFRetain(a1);
  v12[1] = CFRetain(a2);
  v12[2] = a5;
  *(v12 + 24) = a4;
  dispatch_retain(a3);
  v12[4] = a3;
  dispatch_async_f(*v10, v12, sads_scheduleAccessToURLDispatch);
  return 0;
}

void sads_scheduleAccessToURLDispatch(uint64_t a1)
{
  sads_scheduleAccessToURLDispatchGuts(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 16), *(a1 + 32), 0, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigAssetDownloadCoordinatorRequestImmediateAccessToURL(uint64_t a1, _BYTE *a2, void *a3)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  }

  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_3(&v10);
    return v10;
  }

  if (!a3)
  {
    FigAssetDownloadCoordinatorRequestImmediateAccessToURL_cold_2(&v10);
    return v10;
  }

  v7 = a1;
  dispatch_sync_f(*qword_1ED4CA990, &v7, sads_requestImmediateAccessToURLAndCopyScheduledAccessToken);
  if (a2)
  {
    *a2 = v8;
  }

  result = 0;
  *a3 = v9;
  return result;
}

void sads_requestImmediateAccessToURLAndCopyScheduledAccessToken(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = FigCFHTTPCreateURLString(*a1);
  sads_scheduleAccessToURLDispatchGuts(*MEMORY[0x1E695E738], *a1, 1, 0, 0, v2, (a1 + 16));
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t FigAssetDownloadCoordinatorRelinquishAccessToURL(void *context)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
    if (context)
    {
      goto LABEL_3;
    }

LABEL_6:
    FigAssetDownloadCoordinatorRelinquishAccessToURL_cold_2(&v3);
    return v3;
  }

  if (!context)
  {
    goto LABEL_6;
  }

LABEL_3:
  dispatch_async_f(*qword_1ED4CA990, context, sads_relinquishAccessToURLDispatch);
  return 0;
}

void sadc_globalDownloadCoordinatorInitOnce()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x20040D91ED9E0uLL);
  if (!v0)
  {
    goto LABEL_13;
  }

  v1 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.registration-state", 0);
  v0[1] = v1;
  if (!v1)
  {
    goto LABEL_13;
  }

  FigWatchdogMonitorDispatchQueue();
  v2 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.notification", 0);
  *v0 = v2;
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *MEMORY[0x1E695E480];
  if (!FigCFWeakReferenceTableCreate())
  {
    Mutable = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x1E695E9E8]);
    v0[3] = Mutable;
    if (!Mutable)
    {
      goto LABEL_13;
    }

    v5 = CFDictionaryCreateMutable(v3, 0, 0, MEMORY[0x1E695E9E8]);
    v0[4] = v5;
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = CFDictionaryCreateMutable(v3, 0, 0, 0);
    v0[5] = v6;
    if (!v6)
    {
      goto LABEL_13;
    }

    if (!FigCFWeakReferenceTableCreate())
    {
      v7 = CFBagCreateMutable(v3, 0, MEMORY[0x1E695E9D0]);
      v0[7] = v7;
      if (v7)
      {
        v8 = FigSimpleMutexCreate();
        v0[8] = v8;
        if (v8)
        {
          qword_1ED4CA980 = v0;
          return;
        }
      }

LABEL_13:
      if (sadc_globalDownloadCoordinatorInitOnce_cold_1())
      {
        return;
      }
    }
  }

  free(v0);
}

void sads_downloadSchedulerCreateInitOnce()
{
  v0 = malloc_type_calloc(1uLL, 0x30uLL, 0x20040A759441BuLL);
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = dispatch_queue_create("com.apple.coremedia.streaming-asset-download-coordinator.scheduled-access-state", 0);
  *v0 = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x1E695E480];
  if (!FigCFWeakReferenceTableCreate())
  {
    Mutable = CFDictionaryCreateMutable(v2, 0, 0, MEMORY[0x1E695E9E8]);
    v0[2] = Mutable;
    if (Mutable)
    {
      v4 = CFDictionaryCreateMutable(v2, 0, 0, MEMORY[0x1E6961610]);
      v0[3] = v4;
      if (v4)
      {
        v5 = CFDictionaryCreateMutable(v2, 0, 0, 0);
        v0[4] = v5;
        if (v5)
        {
          v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v0[5] = v6;
          if (v6)
          {
            qword_1ED4CA990 = v0;
            return;
          }
        }
      }
    }

LABEL_10:
    if (sadc_globalDownloadCoordinatorInitOnce_cold_1())
    {
      return;
    }
  }

  free(v0);
}

void sads_scheduleAccessToURLDispatchGuts(const void *a1, const __CFURL *a2, int a3, const void *a4, NSObject *a5, char *a6, void *a7)
{
  if (qword_1ED4CA988 != -1)
  {
    FigAssetDownloadCoordinatorScheduleAccessToURL_cold_1();
  }

  v14 = qword_1ED4CA990;
  v15 = FigCFHTTPCreateURLString(a2);
  Value = CFDictionaryGetValue(v14[5], v15);
  if (Value)
  {
    v17 = CFRetain(Value);
  }

  else
  {
    v17 = 0;
  }

  v18 = a3 != 0;
  v19 = v17 == 0;
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v18 = 0;
    v20 = 1;
  }

  if (!a1)
  {
    sads_scheduleAccessToURLDispatchGuts_cold_3();
LABEL_31:
    if (v17)
    {
LABEL_26:
      CFRelease(v17);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (v18)
  {
LABEL_18:
    v22 = v20 ^ 1;
    if (!a4)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      sads_dispatchScheduledCallbackFn(a1, v19, 0, a5, a4);
    }

    if (a6)
    {
      *a6 = v19;
    }

    if (a7)
    {
      *a7 = 0;
    }

    goto LABEL_26;
  }

  if (FigCFWeakReferenceTableAddValueAndGetKey())
  {
    goto LABEL_31;
  }

  if (v17)
  {
LABEL_15:
    CFArrayAppendValue(v17, 0);
    CFDictionarySetValue(v14[2], 0, v15);
    if (a4 && a5)
    {
      CFDictionarySetValue(v14[3], 0, a5);
      CFDictionarySetValue(v14[4], 0, a4);
    }

    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v17 = Mutable;
    CFDictionarySetValue(v14[5], v15, Mutable);
    goto LABEL_15;
  }

  sads_scheduleAccessToURLDispatchGuts_cold_2();
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }
}

void sads_dispatchScheduledCallbackFn(const void *a1, char a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10C0040ABF999C2uLL);
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *v11 = v12;
    v11[8] = a2;
    *(v11 + 2) = a3;
    *(v11 + 3) = a5;

    dispatch_async_f(a4, v11, sads_performDispatchScheduledCallbackFn);
  }

  else
  {
    sads_dispatchScheduledCallbackFn_cold_1();
  }
}

void sads_performDispatchScheduledCallbackFn(void *a1)
{
  v2 = *a1;
  v3 = a1[3];
  if (v3)
  {
    v3(*a1, *(a1 + 8), a1[2]);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sads_performDispatchScheduledCallbackFn_cold_1();
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:

  free(a1);
}

void FigCaptionRendererStackLayoutRegionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *FigCaptionRendererStackLayoutRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererStackLayoutRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
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

  v7 = *(v6 + 40);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v4, a2);
  if (!result)
  {
    theArray = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v9 = CMBaseObjectGetProtocolVTable();
    if (v9)
    {
      v10 = *(v9 + 2);
      if (v10 && (v11 = *(v10 + 24)) != 0)
      {
        v11(a1, &theArray);
        v9 = theArray;
      }

      else
      {
        v9 = 0;
      }
    }

    v13.length = CFArrayGetCount(v9);
    v13.location = 0;
    CFArraySortValues(theArray, v13, fcrStackLayout_TimeComparator, 0);
    return 0;
  }

  return result;
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 64);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 128);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 160);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 256);
  if (!v6)
  {
    return 4294954514;
  }

  v4.n128_f64[0] = a1;

  return v6(v2, v4);
}

uint64_t FigCaptionRendererStackLayoutRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}