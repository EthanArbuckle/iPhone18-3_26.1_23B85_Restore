uint64_t mv_IsExtensionInList(CFURLRef url, __CFHTTPMessage *a2, CFStringRef **a3, _BYTE *a4)
{
  if (a4)
  {
    *a4 = 0;
    v8 = CFURLCopyPathExtension(url);
    cf = v8;
    if (v8)
    {
      v9 = v8;
      *a4 = 1;
      goto LABEL_5;
    }

LABEL_7:
    if (CFURLCanBeDecomposed(url))
    {
      v12 = CFURLCopyHostName(url);
      if (v12)
      {
        v13 = v12;
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v12, @".");
        CFRelease(v13);
        if (ArrayBySeparatingStrings)
        {
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count < 2)
          {
            CFRelease(ArrayBySeparatingStrings);
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
            IsStringInCArrayList = mv_IsStringInCArrayList(ValueAtIndex, a3);
            v18 = IsStringInCArrayList;
            if (a4 && IsStringInCArrayList)
            {
              v11 = 1;
              *a4 = 1;
              v19 = ArrayBySeparatingStrings;
              goto LABEL_21;
            }

            CFRelease(ArrayBySeparatingStrings);
            if (v18)
            {
              return 1;
            }
          }
        }
      }
    }

LABEL_15:
    if (!a2 || FigCFHTTPCopyFilenameFromContentDisposition(a2, 1, &cf))
    {
      return 0;
    }

    if (a4)
    {
      *a4 = 1;
    }

    v11 = mv_IsStringInCArrayList(cf, a3);
    v19 = cf;
LABEL_21:
    CFRelease(v19);
    return v11;
  }

  v9 = CFURLCopyPathExtension(url);
  cf = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = mv_IsStringInCArrayList(v9, a3);
  CFRelease(v9);
  if (!v10)
  {
    goto LABEL_15;
  }

  return 1;
}

CFStringRef mv_CreateCFStringFrom4CC(unsigned int a1)
{
  v1 = bswap32(a1);
  *bytes = v1;
  if ((v1 & 0x80) != 0)
  {
    v2 = __maskrune(v1, 0x40000uLL);
  }

  else
  {
    v2 = *(MEMORY[0x1E69E9830] + 4 * (v1 & 0x7F) + 60) & 0x40000;
  }

  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x8000) != 0)
  {
    if (!__maskrune(BYTE1(v1), 0x40000uLL))
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * ((v1 >> 8) & 0x7F) + 60) & 0x40000) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x800000) != 0)
  {
    if (!__maskrune(BYTE2(v1), 0x40000uLL))
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * (HIWORD(v1) & 0x7F) + 60) & 0x40000) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x80000000) != 0)
  {
    if (__maskrune(HIBYTE(v1), 0x40000uLL))
    {
      return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v1) + 60) & 0x40000) != 0)
  {
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
}

uint64_t mv_GetTrackBoolean(uint64_t a1, uint64_t a2, uint64_t Value)
{
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E480];
    BOOLean = 0;
    if (!v6(FigBaseObject, a2, v7, &BOOLean))
    {
      if (BOOLean)
      {
        Value = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
      }
    }
  }

  return Value;
}

uint64_t mv_IsValueInArrayInDictionary(const __CFDictionary *a1, const void *a2, const void *a3, Boolean *a4, _BYTE *a5)
{
  if (!a4 || !a5)
  {
    mv_IsValueInArrayInDictionary_cold_1(&v14);
    return v14;
  }

  *a5 = 0;
  *a4 = 0;
  Value = CFDictionaryGetValue(a1, a3);
  if (!Value)
  {
    return 0;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 == CFArrayGetTypeID())
  {
    *a5 = 1;
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v15.length = Count;
      v15.location = 0;
      v12 = 0;
      *a4 = CFArrayContainsValue(v9, v15, a2);
      return v12;
    }

    return 0;
  }

  fig_log_get_emitter();
  v12 = FigSignalErrorAtGM();
  if (v12)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return v12;
}

const void *mv_GetCodecProperty(const __CFDictionary *a1, const void *a2, void *key, const void *a4, uint64_t a5, const void **a6)
{
  if (!a6)
  {
    mv_GetCodecProperty_cold_3(&v20);
    return v20;
  }

  *a6 = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_8;
  }

  v12 = Value;
  v13 = CFGetTypeID(Value);
  if (v13 != CFDictionaryGetTypeID())
  {
    mv_GetCodecProperty_cold_1(&v18);
    return v18;
  }

  v14 = CFDictionaryGetValue(v12, a2);
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 != CFDictionaryGetTypeID())
    {
      mv_GetCodecProperty_cold_2(&v19);
      return v19;
    }

    result = CFDictionaryGetValue(v15, a4);
    *a6 = result;
    if (!result)
    {
LABEL_9:
      result = CFDictionaryGetValue(a1, a4);
      *a6 = result;
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
LABEL_8:
    result = *a6;
    if (!*a6)
    {
      goto LABEL_9;
    }
  }

  if (CFGetTypeID(result) == a5)
  {
    return 0;
  }

  *a6 = 0;
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigMediaValidatorCopyByteStream(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (!*(a1 + 44))
  {
    return 4294954513;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    return 4294954513;
  }

  v4 = CFRetain(v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMediaValidatorCopyResolvedURL(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (!*(a1 + 44))
  {
    return 4294954513;
  }

  v3 = *(a1 + 8);
  if (v3 || (v3 = *a1) != 0)
  {
    v3 = CFRetain(v3);
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t FigRemote_SetSerializedCookies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  if (!a2)
  {
    FigRemote_SetSerializedCookies_cold_3(&v12);
    return v12;
  }

  MEMORY[0x19A8D2B00](a3, a4, *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    FigRemote_SetSerializedCookies_cold_2(&v12);
    return v12;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID())
  {
    v7 = cf;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(a1, a2, v7);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  else
  {
    FigRemote_SetSerializedCookies_cold_1(&v12);
    v9 = v12;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigMediaValidatorRelease(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (a1[10])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v3 = CMBaseObject;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  if (!a1[26])
  {
    goto LABEL_11;
  }

  FigSimpleMutexLock();
  a1[3] = 0;
  if (!a1[25])
  {
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    a1[26] = 0;
LABEL_11:
    v6 = a1[22];
    if (v6)
    {
      CFRelease(v6);
      a1[22] = 0;
    }

    v7 = a1[10];
    if (v7)
    {
      CFRelease(v7);
      a1[10] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v8 = a1[1];
    if (v8)
    {
      CFRelease(v8);
      a1[1] = 0;
    }

    v9 = a1[2];
    if (v9)
    {
      CFRelease(v9);
      a1[2] = 0;
    }

    v10 = a1[6];
    if (v10)
    {
      CFRelease(v10);
      a1[6] = 0;
    }

    v11 = a1[7];
    if (v11)
    {
      CFRelease(v11);
      a1[7] = 0;
    }

    if (a1[27])
    {
      FigSemaphoreDestroy();
    }

    free(a1);
    return 0;
  }

  *(a1 + 224) = 1;
  FigThreadAbort();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fpm_streamPausedCallback()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    *(MutableBytePtr + 157) = 257;
    fpm_ensureUpdatePrimed(MutableBytePtr);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

void itemfig_BossBecameIdle(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      v11 = CMBaseObjectGetDerivedStorage();
      if (*v11)
      {
        goto LABEL_23;
      }

      if (!a5)
      {
        goto LABEL_9;
      }

      v12 = v11;
      if (CFDictionaryGetValue(a5, @"ControlToken") != *(DerivedStorage + 512))
      {
        if (dword_1EAF16A10 >= 2)
        {
LABEL_9:
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_22:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_23:
        CFRelease(v10);
        return;
      }

      Value = CFDictionaryGetValue(a5, @"OSStatus");
      if (Value)
      {
        v15 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v15))
        {
          valuePtr[0] = 0;
          CFNumberGetValue(v15, kCFNumberSInt32Type, valuePtr);
          v17 = valuePtr[0];
          if (valuePtr[0])
          {
            *(DerivedStorage + 1034) = 1;
            if (v17 == 561606517)
            {
              FailedNotificationPayload = itemfig_createFailedNotificationPayload(0, v15);
            }

            else
            {
              if (v17 != -12551)
              {
                goto LABEL_16;
              }

              FailedNotificationPayload = itemfig_createFailedNotificationPayloadWithContentStream(*(DerivedStorage + 128), v15);
              v20 = CFDictionaryGetValue(FailedNotificationPayload, @"CFError");
              itemfig_reportingAgentReportError(a2, v20, @"CoreMediaErrorDomain", @"Failed to play to end due to sample out of range", valuePtr[0]);
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            if (FailedNotificationPayload)
            {
              CFRelease(FailedNotificationPayload);
            }
          }
        }
      }

LABEL_16:
      if ((*(DerivedStorage + 200) & 0x1D) != 1)
      {
        if (a2)
        {
          CFRetain(a2);
        }

        dispatch_async_f(v12[13], a2, itemfig_BossBecameIdle_prepareNextItemForTransition_f);
        goto LABEL_23;
      }

      if (dword_1EAF16A10)
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }
}

void itemfig_ReachedEnd(uint64_t a1, const void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    v4 = OUTLINED_FUNCTION_283_0();
    if (v4)
    {
      v5 = v4;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        if (*(v2 + 1352))
        {
          if (dword_1EAF16A10 >= 2)
          {
            OUTLINED_FUNCTION_81_0();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v15 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24, SBYTE2(v24), BYTE3(v24), SHIDWORD(v24));
            if (OUTLINED_FUNCTION_124_0(v15))
            {
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0();
          }
        }

        else
        {
          v16 = DerivedStorage;
          v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
          if (v17)
          {
            v18 = v17;
            *v17 = CFRetain(v5);
            if (a2)
            {
              v19 = CFRetain(a2);
            }

            else
            {
              v19 = 0;
            }

            v18[1] = v19;
            Timebase = FigPlaybackBossGetTimebase(*(v2 + 352));
            if (Timebase)
            {
              Timebase = CFRetain(Timebase);
            }

            v18[2] = Timebase;
            dispatch_async_f(v16[13], v18, itemfig_ReachedEnd_ReachedEndGuts_f);
          }
        }
      }

      CFRelease(v5);
    }
  }
}

void itemfig_ReachedEndGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (*CMBaseObjectGetDerivedStorage())
      {

        CFRelease(v5);
      }

      else
      {
        CFRetain(a1);
        FigSimpleMutexLock();
        if (*(v3 + 44))
        {
          v6 = itemfig_ReachedEndGuts_cold_1();
          if (v6 != 1)
          {
            if (v6)
            {
              if (dword_1EAF16A10)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EAF16A10)
              {
                v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              playerfig_pauseForInternalReason(v5, 1);
            }
          }
        }

        FigSimpleMutexUnlock();
        playerfig_updatePlaybackStateAndBossRate(v5, 7, 0);
        if (!v3[2217])
        {
          itemfig_metricEventPublishPlaybackEndEvent();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v3[2217] = 1;
        }

        CFRelease(a1);
        CFRelease(v5);
      }
    }
  }
}

uint64_t playerasync_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    CFRetain(a1);
    dispatch_async_f(*(DerivedStorage + 56), a1, playerasync_InvalidateOnQueue);
  }

  return 0;
}

void playerasync_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 5))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 5) = 0;
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy();
  v4 = *(DerivedStorage + 48);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 56) = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 88) = 0;
  }

  FigConditionVariableDestroy();
  FigSimpleMutexDestroy();
  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 160);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 160) = 0;
  }
}

uint64_t RegisterFigSampleBufferProcessorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferProcessorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferProcessorGetClassID_sRegisterFigSampleBufferProcessorTypeOnce, RegisterFigSampleBufferProcessorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMovieFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  v15 = 0;
  if (!a2)
  {
    FigMovieFormatWriterCreateWithByteStream_cold_3(&cf);
    return cf;
  }

  if (!a4)
  {
    FigMovieFormatWriterCreateWithByteStream_cold_2(&cf);
    return cf;
  }

  v6 = createFigMovieFormatWriterObject(a1, 0, a3, &v15);
  v7 = v15;
  if (v6)
  {
    v12 = v6;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10 && !v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf))
    {
      v11 = CFURLCopyAbsoluteURL(cf);
      if (v11)
      {
        IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
        CFRelease(v11);
        LOBYTE(v11) = IsFileOnExternalStorageDevice != 0;
      }

      else
      {
        FigMovieFormatWriterCreateWithByteStream_cold_1();
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    *(DerivedStorage + 17) = v11;
    v12 = 0;
    *(DerivedStorage + 8) = CFRetain(a2);
    *a4 = v7;
  }

  return v12;
}

uint64_t RegisterFigFormatWriterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t figMovieWriter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figMovieWriter_SetProperty_cold_28(&v60);
    return v60;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 335))
  {
    goto LABEL_3;
  }

  v9 = *(DerivedStorage + 736);
  if (CFEqual(@"MovieTimeScale", a2))
  {
    LODWORD(valuePtr.value) = 0;
    if (a3)
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        result = MovieInformationSetMovieTimeScale(v9, valuePtr.value);
        if (!result)
        {
          *(v7 + 20) = valuePtr.value;
        }

        return result;
      }
    }

    figMovieWriter_SetProperty_cold_1(&v60);
    return v60;
  }

  if (CFEqual(@"ByteCountToReserveForHeader", a2))
  {
    if (!a3 || (v11 = CFGetTypeID(a3), v11 != CFNumberGetTypeID()))
    {
      figMovieWriter_SetProperty_cold_2(&v60);
      return v60;
    }

    CFNumberGetValue(a3, kCFNumberSInt32Type, (v7 + 268));
    return 0;
  }

  if (CFEqual(@"InterleavingPeriod", a2))
  {
    if (!a3)
    {
      goto LABEL_3;
    }

    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    if ((BYTE12(v60) & 0x1D) == 1)
    {
      result = 0;
      *(v7 + 48) = v60;
      *(v7 + 64) = v61;
      return result;
    }

    goto LABEL_41;
  }

  if (CFEqual(@"InterleavingOverflowThreshold", a2))
  {
    if (!a3)
    {
      goto LABEL_3;
    }

    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    if ((BYTE12(v60) & 0x1D) == 1)
    {
      result = 0;
      *(v7 + 72) = v60;
      *(v7 + 88) = v61;
      return result;
    }

    goto LABEL_41;
  }

  if (CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    if (*(v7 + 384))
    {
      figMovieWriter_SetProperty_cold_3(&v60);
      return v60;
    }

    if (!a3)
    {
      goto LABEL_3;
    }

    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    if ((BYTE12(v60) & 0x1D) == 1)
    {
      v12 = v60;
      *(v7 + 96) = v60;
      v13 = v61;
      *(v7 + 112) = v61;
      *&valuePtr.value = v12;
      valuePtr.epoch = v13;
      time2 = **&MEMORY[0x1E6960CC0];
      result = CMTimeCompare(&valuePtr, &time2);
      if (result)
      {
        result = 0;
        *(v7 + 329) = 1;
      }

      else
      {
        *(v7 + 329) = 0;
      }

      return result;
    }

LABEL_41:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  if (CFEqual(@"InitialMovieFragmentCheckpoint", a2))
  {
    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    if ((BYTE12(v60) & 1) == 0 || (BYTE12(v60) & 0x1D) == 1 && (valuePtr = **&MEMORY[0x1E6960CC0], *&time2.value = v60, time2.epoch = v61, CMTimeCompare(&valuePtr, &time2) < 0))
    {
      result = 0;
      *(v7 + 120) = v60;
      *(v7 + 136) = v61;
      return result;
    }

    figMovieWriter_SetProperty_cold_4(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    if (*(v7 + 384) != 1)
    {
      figMovieWriter_SetProperty_cold_5(&v60);
      return v60;
    }

    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    v14 = BYTE12(v60);
    if ((~HIDWORD(v60) & 0x11) == 0)
    {
LABEL_48:
      *(v7 + 196) = v60;
      *(v7 + 212) = v61;
      if ((v14 & 0x1D) == 1 && (valuePtr = **&MEMORY[0x1E6960CC0], *&time2.value = v60, time2.epoch = v61, CMTimeCompare(&valuePtr, &time2) < 0))
      {
        result = 0;
        *(v7 + 168) = 1;
      }

      else
      {
        result = 0;
        *(v7 + 168) = 0;
      }

      return result;
    }

    if ((BYTE12(v60) & 0x1D) == 1)
    {
      valuePtr = **&MEMORY[0x1E6960CC0];
      *&time2.value = v60;
      time2.epoch = v61;
      if (CMTimeCompare(&valuePtr, &time2) < 0)
      {
        v14 = BYTE12(v60);
        goto LABEL_48;
      }
    }

    figMovieWriter_SetProperty_cold_6(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  if (CFEqual(@"InitialSegmentStartTime", a2))
  {
    if (*(v7 + 384) != 1)
    {
      figMovieWriter_SetProperty_cold_7(&v60);
      return v60;
    }

    v60 = 0uLL;
    *&v61 = 0;
    CMTimeMakeFromDictionary(&v60, a3);
    if ((BYTE12(v60) & 0x1D) == 1)
    {
      result = 0;
      *(v7 + 172) = v60;
      *(v7 + 188) = v61;
      return result;
    }

    figMovieWriter_SetProperty_cold_8(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  if (CFEqual(@"NextMovieFragmentSequenceNumber", a2))
  {
    if (a3 && (v15 = CFGetTypeID(a3), v15 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr.value) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if (SLODWORD(valuePtr.value) > 0)
      {
        result = 0;
        *(v7 + 376) = valuePtr.value;
        return result;
      }

      figMovieWriter_SetProperty_cold_9(&v60);
    }

    else
    {
      figMovieWriter_SetProperty_cold_10(&v60);
    }

    return v60;
  }

  if (CFEqual(@"ProduceCombinableMovieFragments", a2))
  {
    if (a3)
    {
      v16 = CFGetTypeID(a3);
      if (v16 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 533) = Value;
        return result;
      }
    }

    figMovieWriter_SetProperty_cold_11(&v60);
    return v60;
  }

  if (CFEqual(@"AllowNonSyncSampleAtBeginningOfSegment", a2))
  {
    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CFBooleanGetTypeID())
      {
        v19 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 534) = v19;
        return result;
      }
    }

    figMovieWriter_SetProperty_cold_12(&v60);
    return v60;
  }

  if (CFEqual(@"ConsolidateMovieFragments", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        v21 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 531) = v21;
        return result;
      }
    }

    goto LABEL_3;
  }

  if (CFEqual(@"MovieExtendsHeaderFragmentDuration", a2))
  {
    if (a3 && (v22 = CFGetTypeID(a3), v22 == CFDictionaryGetTypeID()))
    {
      CMTimeMakeFromDictionary(&v60, a3);
      time2.value = v60;
      v23 = HIDWORD(v60);
      time2.timescale = DWORD2(v60);
      v24 = v61;
      if ((BYTE12(v60) & 1) == 0 || (BYTE12(v60) & 0x1D) == 1 && (v60 = *MEMORY[0x1E6960CC0], *&v61 = *(MEMORY[0x1E6960CC0] + 16), valuePtr.value = time2.value, valuePtr.timescale = time2.timescale, valuePtr.flags = v23, valuePtr.epoch = v24, CMTimeCompare(&v60, &valuePtr) < 1))
      {
        result = 0;
        *(v7 + 244) = time2.value;
        *(v7 + 252) = time2.timescale;
        *(v7 + 256) = v23;
        *(v7 + 260) = v24;
        return result;
      }

      figMovieWriter_SetProperty_cold_13(&v60);
    }

    else
    {
      figMovieWriter_SetProperty_cold_14(&v60);
    }

    return v60;
  }

  if (CFEqual(@"WriteNoSamplesInMovieHeader", a2))
  {
    if (a3)
    {
      v25 = CFGetTypeID(a3);
      if (v25 == CFBooleanGetTypeID())
      {
        v26 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 332) = v26;
        return result;
      }
    }

    figMovieWriter_SetProperty_cold_15(&v60);
    return v60;
  }

  if (CFEqual(@"WriteBaseMediaDecodeTimeInTrackFragments", a2))
  {
    if (a3)
    {
      v27 = CFGetTypeID(a3);
      if (v27 == CFBooleanGetTypeID())
      {
        v28 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 333) = v28;
        return result;
      }
    }

    figMovieWriter_SetProperty_cold_16(&v60);
    return v60;
  }

  if (CFEqual(@"FileTypeMajorBrand", a2))
  {
    v29 = *(v7 + 752);

    return MovieSampleDataWriterSetMajorBrand(v29, a3);
  }

  if (CFEqual(@"FileTypeMinorVersion", a2))
  {
    v30 = *(v7 + 752);

    return MovieSampleDataWriterSetMinorVersion(v30, a3);
  }

  if (CFEqual(@"FileTypeCompatibleBrands", a2))
  {
    v31 = *(v7 + 752);

    return MovieSampleDataWriterSetCompatibleBrands(v31, a3);
  }

  if (CFEqual(@"EnableWriting", a2))
  {
    if (a3)
    {
      v32 = CFBooleanGetTypeID();
      if (v32 == CFGetTypeID(a3))
      {
        v33 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 334) = v33;
        return result;
      }
    }

    goto LABEL_3;
  }

  if (CFEqual(@"EnableExtendedLanguageTag", a2))
  {
    if (a3)
    {
      v34 = CFBooleanGetTypeID();
      if (v34 == CFGetTypeID(a3))
      {
        v35 = CFBooleanGetValue(a3);
        result = 0;
        *(v7 + 328) = v35;
        return result;
      }
    }

    goto LABEL_3;
  }

  if (CFEqual(@"TrackReference", a2))
  {
    if (a3)
    {
      v36 = CFGetTypeID(a3);
      if (v36 != CFDictionaryGetTypeID())
      {
        figMovieWriter_SetProperty_cold_17(&v60);
        return v60;
      }
    }

    return setTrackReferences(v9, a3);
  }

  if (!CFEqual(@"MovieMatrix", a2))
  {
    if (CFEqual(@"PreferredRate", a2))
    {
      LODWORD(valuePtr.value) = 0;
      if (a3)
      {
        v38 = CFGetTypeID(a3);
        if (v38 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
          return MovieInformationSetPreferredRate(v9, *&valuePtr.value);
        }
      }

      figMovieWriter_SetProperty_cold_19(&v60);
      return v60;
    }

    if (CFEqual(@"PreferredVolume", a2))
    {
      LODWORD(valuePtr.value) = 0;
      if (a3)
      {
        v39 = CFGetTypeID(a3);
        if (v39 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
          return MovieInformationSetPreferredVolume(v9, *&valuePtr.value);
        }
      }

      figMovieWriter_SetProperty_cold_20(&v60);
      return v60;
    }

    if (CFEqual(@"iTunesGaplessInfo", a2))
    {
      if (a3)
      {
        v40 = CFGetTypeID(a3);
        if (v40 != CFDictionaryGetTypeID())
        {
          figMovieWriter_SetProperty_cold_21(&v60);
          return v60;
        }

        v41 = *(v7 + 696);
        *(v7 + 696) = a3;
LABEL_154:
        CFRetain(a3);
        if (!v41)
        {
          return 0;
        }

        goto LABEL_162;
      }

      v41 = *(v7 + 696);
      *(v7 + 696) = 0;
      if (!v41)
      {
        return 0;
      }
    }

    else
    {
      if (CFEqual(@"MetadataToTransfer", a2))
      {
        if (a3)
        {
          v42 = CFDictionaryGetTypeID();
          if (v42 != CFGetTypeID(a3))
          {
            v43 = CFArrayGetTypeID();
            if (v43 != CFGetTypeID(a3))
            {
              return 0;
            }
          }

          v44 = *(v7 + 296);
          *(v7 + 296) = a3;
          CFRetain(a3);
        }

        else
        {
          v44 = *(v7 + 296);
          *(v7 + 296) = 0;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        result = *(v7 + 304);
        if (result)
        {
          CFRelease(result);
          result = 0;
          *(v7 + 304) = 0;
        }

        return result;
      }

      if (CFEqual(@"MetadataToWrite", a2))
      {
        if (a3)
        {
          v45 = CFDictionaryGetTypeID();
          if (v45 != CFGetTypeID(a3))
          {
            v46 = CFArrayGetTypeID();
            if (v46 != CFGetTypeID(a3))
            {
              return 0;
            }
          }

          v47 = *(v7 + 304);
          *(v7 + 304) = a3;
          CFRetain(a3);
        }

        else
        {
          v47 = *(v7 + 304);
          *(v7 + 304) = 0;
        }

        if (v47)
        {
          CFRelease(v47);
        }

        result = *(v7 + 296);
        if (result)
        {
          CFRelease(result);
          result = 0;
          *(v7 + 296) = 0;
        }

        return result;
      }

      if (!CFEqual(@"MetadataAllowList", a2))
      {
        if (CFEqual(@"ClientPID", a2))
        {
          if (a3)
          {
            v49 = CFNumberGetTypeID();
            if (v49 == CFGetTypeID(a3))
            {
              CFNumberGetValue(a3, kCFNumberSInt32Type, (v7 + 544));
              result = *(v7 + 560);
              if (result)
              {

                return FigThreadSetProperty();
              }

              return result;
            }
          }
        }

        else
        {
          if (!CFEqual(@"ThreadPriority", a2))
          {
            if (CFEqual(@"JoinWritingThreadToNewWorkgroup", a2))
            {
              if (a3)
              {
                v52 = CFGetTypeID(a3);
                if (v52 == CFBooleanGetTypeID())
                {
                  v53 = CFBooleanGetValue(a3);
                  result = 0;
                  *(v7 + 608) = v53;
                  return result;
                }
              }

              goto LABEL_3;
            }

            if (CFEqual(@"WriteInSinglePassUsingPredeterminedSizes", a2))
            {
              if (a3)
              {
                v57 = CFGetTypeID(a3);
                if (v57 != CFDictionaryGetTypeID())
                {
                  figMovieWriter_SetProperty_cold_23(&v60);
                  return v60;
                }
              }

              return setPredeterminedSizes(v7, a3);
            }

            else if (CFEqual(@"WriteInSinglePassUsingMediaDataCheckpointInterval", a2))
            {
              if (a3)
              {
                v54 = CFGetTypeID(a3);
                if (v54 != CFDictionaryGetTypeID())
                {
                  figMovieWriter_SetProperty_cold_24(&v60);
                  return v60;
                }
              }

              return setMediaDataCheckpointInterval(v7, a3);
            }

            else if (CFEqual(@"EncryptionConfig", a2))
            {
              if (!a3 || (v58 = CFGetTypeID(a3), v58 != EncryptionConfigGetTypeID()) && (v59 = CFGetTypeID(a3), v59 != CFDictionaryGetTypeID()))
              {
                figMovieWriter_SetProperty_cold_25(&v60);
                return v60;
              }

              return setPSSHDataEntries(v7, a3);
            }

            else
            {
              if (CFEqual(@"MaximizePowerEfficiency", a2))
              {
                if (a3)
                {
                  v55 = CFGetTypeID(a3);
                  if (v55 == CFBooleanGetTypeID())
                  {
                    result = 0;
                    *(v7 + 768) = *MEMORY[0x1E695E4D0] == a3;
                    return result;
                  }
                }

                figMovieWriter_SetProperty_cold_26(&v60);
                return v60;
              }

              if (!CFEqual(@"64BitDataOffsetInTrackRunAtomPolicy", a2))
              {
                return 4294954666;
              }

              if (a3)
              {
                v56 = CFGetTypeID(a3);
                if (v56 != CFStringGetTypeID())
                {
                  figMovieWriter_SetProperty_cold_27(&v60);
                  return v60;
                }
              }

              return set64BitDataOffsetInTrackRunAtomPolicy(v7, a3);
            }
          }

          if (a3)
          {
            v50 = CFGetTypeID(a3);
            if (v50 == CFNumberGetTypeID())
            {
              CFNumberGetValue(a3, kCFNumberSInt32Type, (v7 + 552));
              v51 = *(v7 + 552);

              return ffr_updateThreadPriority(a1, v51);
            }
          }
        }

LABEL_3:
        fig_log_get_emitter();

        return FigSignalErrorAtGM();
      }

      if (a3)
      {
        v48 = CFGetTypeID(a3);
        if (v48 != CFDictionaryGetTypeID())
        {
          figMovieWriter_SetProperty_cold_22(&v60);
          return v60;
        }

        v41 = *(v7 + 312);
        *(v7 + 312) = a3;
        goto LABEL_154;
      }

      v41 = *(v7 + 312);
      *(v7 + 312) = 0;
      if (!v41)
      {
        return 0;
      }
    }

LABEL_162:
    CFRelease(v41);
    return 0;
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  if (!a3 || (v37 = CFGetTypeID(a3), v37 != CFArrayGetTypeID()))
  {
    figMovieWriter_SetProperty_cold_18(&valuePtr);
    return LODWORD(valuePtr.value);
  }

  result = getFigMatrixFromArray(a3, &v60);
  if (!result)
  {
    return MovieInformationSetMovieMatrix(v9, &v60);
  }

  return result;
}

uint64_t figMovieWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figMovieWriter_CopyProperty_cold_5(&v32);
    return v32;
  }

  if (!a4)
  {
    figMovieWriter_CopyProperty_cold_4(&v32);
    return v32;
  }

  v8 = DerivedStorage;
  if (*(DerivedStorage + 335))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v10 = *(DerivedStorage + 736);
  if (CFEqual(@"MovieTimeScale", a2))
  {
    figMovieWriter_CopyProperty_cold_1();
    return v32;
  }

  if (CFEqual(@"HeaderByteCount", a2))
  {
    *&v32 = 0;
    MetadataSerializer = calculateHeaderByteCount(v8, &v32);
    if (MetadataSerializer)
    {
      return MetadataSerializer;
    }

    LODWORD(time.value) = v32;
    v14 = *MEMORY[0x1E695E480];
    p_time = &time;
    v16 = kCFNumberSInt32Type;
    goto LABEL_32;
  }

  if (CFEqual(@"TotalMovieAndMovieFragmentHeaderByteCountWritten", a2))
  {
    SInt64 = FigCFNumberCreateSInt64();
LABEL_18:
    MetadataSerializer = 0;
LABEL_19:
    *a4 = SInt64;
    return MetadataSerializer;
  }

  if (CFEqual(@"MediaDataLocation", a2))
  {

    return createMediaDataLocation(a3, v8, a4);
  }

  if (CFEqual(@"EstimatedFileByteCount", a2))
  {
    *&v32 = 0;
    MetadataSerializer = estimateResultFileSize(v8, &v32);
    if (MetadataSerializer)
    {
      return MetadataSerializer;
    }

    v14 = *MEMORY[0x1E695E480];
    p_time = &v32;
    v16 = kCFNumberSInt64Type;
LABEL_32:
    SInt64 = CFNumberCreate(v14, v16, p_time);
    goto LABEL_19;
  }

  if (CFEqual(@"LongestMediaDecodeDuration", a2))
  {
    v32 = 0uLL;
    *&v33 = 0;
    getLongestMediaDecodeDuration(v8, &v32);
    *&time.value = v32;
    time.epoch = v33;
    v12 = &time;
LABEL_15:
    SInt64 = CMTimeCopyAsDictionary(v12, a3);
    goto LABEL_18;
  }

  if (CFEqual(@"ByteCountToReserveForHeader", a2))
  {
    SInt64 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v8 + 268));
    goto LABEL_18;
  }

  if (CFEqual(@"InterleavingPeriod", a2))
  {
    v32 = *(v8 + 48);
    v17 = *(v8 + 64);
LABEL_44:
    *&v33 = v17;
    v12 = &v32;
    goto LABEL_15;
  }

  if (CFEqual(@"InterleavingOverflowThreshold", a2))
  {
    v32 = *(v8 + 72);
    v17 = *(v8 + 88);
    goto LABEL_44;
  }

  if (CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    v32 = *(v8 + 96);
    v17 = *(v8 + 112);
    goto LABEL_44;
  }

  if (CFEqual(@"InitialMovieFragmentCheckpoint", a2))
  {
    v32 = *(v8 + 120);
    v17 = *(v8 + 136);
    goto LABEL_44;
  }

  if (CFEqual(@"PreferredOutputSegmentInterval", a2) || CFEqual(@"InitialSegmentStartTime", a2))
  {
    v32 = *(v8 + 196);
    v17 = *(v8 + 212);
    goto LABEL_44;
  }

  if (CFEqual(@"ProduceCombinableMovieFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 533);
LABEL_51:
    if (!v19)
    {
      v18 = MEMORY[0x1E695E4C0];
    }

    SInt64 = *v18;
LABEL_54:
    SInt64 = CFRetain(SInt64);
    goto LABEL_18;
  }

  if (CFEqual(@"AllowNonSyncSampleAtBeginningOfSegment", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 534);
    goto LABEL_51;
  }

  if (CFEqual(@"ConsolidateMovieFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 531);
    goto LABEL_51;
  }

  if (CFEqual(@"MovieExtendsHeaderFragmentDuration", a2))
  {
    v32 = *(v8 + 244);
    v17 = *(v8 + 260);
    goto LABEL_44;
  }

  if (CFEqual(@"WriteNoSamplesInMovieHeader", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 332);
    goto LABEL_51;
  }

  if (CFEqual(@"WriteBaseMediaDecodeTimeInTrackFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 333);
    goto LABEL_51;
  }

  if (CFEqual(@"FileTypeMajorBrand", a2))
  {
    v20 = *(v8 + 752);

    return MovieSampleDataWriterCopyMajorBrand(v20, a4);
  }

  if (CFEqual(@"FileTypeMinorVersion", a2))
  {
    v21 = *(v8 + 752);

    return MovieSampleDataWriterCopyMinorVersion(v21, a4);
  }

  if (CFEqual(@"FileTypeCompatibleBrands", a2))
  {
    v22 = *(v8 + 752);

    return MovieSampleDataWriterCopyCompatibleBrands(v22, a4);
  }

  if (CFEqual(@"EnableWriting", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 334);
    goto LABEL_51;
  }

  if (CFEqual(@"EnableExtendedLanguageTag", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v8 + 328);
    goto LABEL_51;
  }

  if (CFEqual(@"TrackReference", a2))
  {

    return MovieInformationCreateTrackReferenceDictionary(a3, v10, a4);
  }

  if (CFEqual(@"MovieMatrix", a2))
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    BasicMetrics = MovieInformationGetBasicMetrics(v10, 0, 0, 0, &v32);
    if (!BasicMetrics)
    {
      return copyFigMatrixAsArray(a3, &v32, a4);
    }

    return BasicMetrics;
  }

  if (CFEqual(@"MetadataWriter", a2))
  {
    *&v32 = 0;
    v24 = *(v8 + 692);
    v25 = &kFigMetadataFormat_QuickTimeUserData;
    if (v24)
    {
      v25 = &kFigMetadataFormat_ISOUserData;
    }

    if ((v24 & 4) != 0)
    {
      v26 = &kFigMetadataFormat_iTunes;
    }

    else
    {
      v26 = v25;
    }

    MetadataSerializer = getMetadataSerializer(a3, v8, *v26, &v32);
    if (MetadataSerializer)
    {
      return MetadataSerializer;
    }

    SInt64 = FigMetadataSerializerGetFigMetadataWriter(v32);
    if (SInt64)
    {
      SInt64 = CFRetain(SInt64);
    }

    goto LABEL_19;
  }

  if (CFEqual(@"MetadataWriters", a2))
  {

    return createMetadataWritersDictionary(a3, v8, a4);
  }

  if (CFEqual(@"PreferredRate", a2))
  {
    figMovieWriter_CopyProperty_cold_2();
    return v32;
  }

  if (CFEqual(@"PreferredVolume", a2))
  {
    figMovieWriter_CopyProperty_cold_3();
    return v32;
  }

  if (CFEqual(@"iTunesGaplessInfo", a2))
  {
    SInt64 = *(v8 + 696);
    if (!SInt64)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

  if (CFEqual(@"MetadataToTransfer", a2))
  {
    v27 = *(v8 + 296);
    if (v27)
    {
LABEL_105:
      SInt64 = CFPropertyListCreateDeepCopy(a3, v27, 0);
      goto LABEL_18;
    }

LABEL_108:
    MetadataSerializer = 0;
    *a4 = 0;
    return MetadataSerializer;
  }

  if (CFEqual(@"MetadataToWrite", a2))
  {
    v27 = *(v8 + 304);
    if (v27)
    {
      goto LABEL_105;
    }

    goto LABEL_108;
  }

  if (CFEqual(@"MetadataAllowList", a2))
  {
    SInt64 = *(v8 + 312);
    if (!SInt64)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

  if (CFEqual(@"JoinWritingThreadToNewWorkgroup", a2))
  {
    v28 = MEMORY[0x1E695E4D0];
    if (!*(v8 + 608))
    {
      v28 = MEMORY[0x1E695E4C0];
    }

    SInt64 = *v28;
    if (!*v28)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

  if (!CFEqual(@"PictureCollectionWriter", a2))
  {
    if (CFEqual(@"WriteInSinglePassUsingPredeterminedSizes", a2))
    {
      *&v32 = 0;
      v31 = copyPredeterminedSizesAsDictionary(v8, a3, &v32);
    }

    else
    {
      if (!CFEqual(@"WriteInSinglePassUsingMediaDataCheckpointInterval", a2))
      {
        if (!CFEqual(@"MaximizePowerEfficiency", a2))
        {
          if (!CFEqual(@"64BitDataOffsetInTrackRunAtomPolicy", a2))
          {
            return 4294954666;
          }

          copy64BitDataOffsetInTrackRunAtomPolicy(v8, a4);
          return 0;
        }

        v18 = MEMORY[0x1E695E4D0];
        v19 = *(v8 + 768);
        goto LABEL_51;
      }

      *&v32 = 0;
      v31 = copyMediaDataCheckpointIntervalAsDictionary(v8, a3, &v32);
    }

    MetadataSerializer = v31;
    if (!v31)
    {
      *a4 = v32;
    }

    return MetadataSerializer;
  }

  v29 = *(v8 + 752);
  v30 = *(v8 + 720);

  return FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(v29, v30, 0, a3, a4);
}

uint64_t getMetadataSerializer(uint64_t a1, uint64_t a2, CFTypeRef cf1, void *a4)
{
  if (!cf1)
  {
    getMetadataSerializer_cold_2(&v11);
    return v11;
  }

  if (!a4)
  {
    getMetadataSerializer_cold_1(&v10);
    return v10;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    if ((*(a2 + 692) & 1) == 0)
    {
      v8 = *(a2 + 280);
      if (!v8)
      {
        result = FigMetadataSerializerCreateForQuickTimeUserData(a1, (a2 + 280));
        if (result)
        {
          return result;
        }

LABEL_17:
        v8 = *(a2 + 280);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (CFEqual(cf1, @"org.mp4ra"))
  {
    if (*(a2 + 692))
    {
      v8 = *(a2 + 280);
      if (!v8)
      {
        result = FigMetadataSerializerCreateForISOUserData(a1, (a2 + 280));
        if (result)
        {
          return result;
        }

        goto LABEL_17;
      }

LABEL_20:
      result = 0;
      *a4 = v8;
      return result;
    }

    return 0;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    v8 = *(a2 + 272);
    if (!v8)
    {
      result = FigMetadataSerializerCreateForQuickTimeMetadata(a1, (a2 + 272));
      if (result)
      {
        return result;
      }

      v8 = *(a2 + 272);
    }

    goto LABEL_20;
  }

  if (CFEqual(cf1, @"com.apple.itunes"))
  {
    v8 = *(a2 + 288);
    if (v8)
    {
      goto LABEL_20;
    }

    result = FigMetadataSerializerCreateForiTunes(a1, (a2 + 288));
    if (!result)
    {
      v8 = *(a2 + 288);
      goto LABEL_20;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t RegisterFigMetadataSerializerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigUserDataSerializerSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    if (CFEqual(@"freeAtomSize", a2))
    {
      if (a3)
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(a3))
        {
          valuePtr = 0;
          if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
            result = 0;
            *(v6 + 8) = valuePtr;
            return result;
          }

          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }
      }
    }

    else
    {
      if (!CFEqual(@"minimumSize", a2))
      {
        return 4294954710;
      }

      if (a3)
      {
        v9 = CFNumberGetTypeID();
        if (v9 == CFGetTypeID(a3))
        {
          v10 = 0;
          if (CFNumberGetValue(a3, kCFNumberSInt32Type, &v10))
          {
            result = 0;
            *(v6 + 12) = v10;
            return result;
          }

          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }
      }
    }

    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    FigUserDataSerializerSetProperty_cold_1(&v12);
    return v12;
  }
}

uint64_t figMovieWriter_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v52 = 0;
  queueOut = 0;
  triggerToken = 0;
  triggerTokenOut = 0;
  v48 = 0;
  v49 = 0;
  cf = 0;
  ptr = 0;
  v45 = 0;
  if (a4)
  {
    v7 = DerivedStorage;
    Count = CFArrayGetCount(*(DerivedStorage + 488));
    v9 = malloc_type_calloc(1uLL, 0x3B0uLL, 0x10E0040FD3C06F9uLL);
    v10 = v9;
    if (!v9)
    {
      figMovieWriter_AddTrack_cold_2(&time);
      Mutable = 0;
      goto LABEL_83;
    }

    v11 = MEMORY[0x1E6960CF0];
    v12 = *MEMORY[0x1E6960CF0];
    *(v9 + 200) = *(MEMORY[0x1E6960CF0] + 16);
    v13 = *(v11 + 48);
    *(v9 + 216) = *(v11 + 32);
    *(v9 + 1) = Count;
    *(v9 + 2) = v7;
    *v9 = a2;
    v14 = MEMORY[0x1E6960CC0];
    *(v9 + 232) = v13;
    v15 = *v14;
    *(v9 + 136) = *v14;
    v16 = *(v14 + 2);
    *(v9 + 19) = v16;
    *(v9 + 10) = v15;
    *(v9 + 22) = v16;
    *(v9 + 31) = *(v11 + 64);
    *(v9 + 184) = v12;
    *(v9 + 16) = v15;
    *(v9 + 34) = v16;
    v17 = MEMORY[0x1E6960C88];
    *(v9 + 280) = *MEMORY[0x1E6960C88];
    *(v9 + 37) = *(v17 + 16);
    v18 = MEMORY[0x1E6960C80];
    *(v9 + 19) = *MEMORY[0x1E6960C80];
    *(v9 + 40) = *(v18 + 16);
    *(v9 + 42) = vneg_f32(0xFFFFFFFFLL);
    v43 = v15;
    *(v9 + 27) = v15;
    *(v9 + 56) = v16;
    *(v9 + 26) = 0;
    v9[352] = 1;
    *(v9 + 16) = 257;
    v9[35] = 1;
    v9[37] = 1;
    v19 = MovieInformationCreateTrack(*(v7 + 736), a2, 0, &v45, &cf);
    if (v19)
    {
      goto LABEL_86;
    }

    v20 = MEMORY[0x1E695E480];
    v21 = v43;
    if (a2 == 1986618469)
    {
      goto LABEL_22;
    }

    if (a2 <= 1885954931)
    {
      if (a2 > 1751216243)
      {
        if (a2 != 1835365473)
        {
          if (a2 != 1751216244)
          {
            goto LABEL_22;
          }

          *(v10 + 108) = v43;
          *(v10 + 124) = v16;
          *(v10 + 344) = 1;
          *(v10 + 492) = 1;
          v19 = editBuilderCreate(*v20, &v48);
          if (!v19)
          {
            goto LABEL_23;
          }

          goto LABEL_86;
        }
      }

      else if (a2 != 1635088502)
      {
        if (a2 == 1668047728)
        {
          v19 = MovieTrackSetLayer(cf, -1);
          goto LABEL_21;
        }

        goto LABEL_22;
      }

LABEL_19:
      *(v10 + 352) = 0;
      goto LABEL_22;
    }

    if (a2 == 1885954932)
    {
      goto LABEL_19;
    }

    if (a2 == 1953325924)
    {
      v19 = MovieTrackSetTimecodeSpecifics(cf, 0);
LABEL_21:
      v21 = v43;
      if (!v19)
      {
        goto LABEL_22;
      }

LABEL_86:
      value_low = v19;
      Mutable = 0;
      goto LABEL_30;
    }

    if (a2 != 1936684398)
    {
LABEL_22:
      *(v10 + 108) = v21;
      *(v10 + 124) = v16;
      *(v10 + 344) = 2;
LABEL_23:
      v23 = *v20;
      Mutable = CFArrayCreateMutable(v23, 0, 0);
      if (Mutable)
      {
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v26 = CMBufferQueueCreate(v23, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
        if (v26 || (v26 = CMBufferQueueSetValidationCallback(queueOut, validateSampleBufferForTrackCallback, v10), v26) || (*&time.value = v43, time.epoch = v16, v26 = CMBufferQueueInstallTrigger(queueOut, wakeupWritingThreadForDataReady, v10, 7, &time, &triggerTokenOut), v26) || (*&time.value = v43, time.epoch = v16, v26 = CMBufferQueueInstallTrigger(queueOut, wakeupWritingThreadForEndOfDataReached, v10, 8, &time, &triggerToken), v26) || (time = *(v7 + 72), v26 = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds(), v26) || (v32 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers(), v26 = CMBufferQueueCreate(v23, 0, v32, &v52), v26))
        {
LABEL_29:
          value_low = v26;
LABEL_30:
          FigCEA608DataInspectorRelease(ptr);
          editBuilderRelease(v48);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v28 = queueOut;
          if (queueOut)
          {
            if (triggerTokenOut)
            {
              CMBufferQueueRemoveTrigger(queueOut, triggerTokenOut);
              v28 = queueOut;
            }

            if (triggerToken)
            {
              CMBufferQueueRemoveTrigger(v28, triggerToken);
              v28 = queueOut;
            }

            if (v49)
            {
              CMBufferQueueRemoveTrigger(v28, v49);
            }

            FigBufferQueueRelease();
          }

          if (v52)
          {
            CFRelease(v52);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v10)
          {
            free(v10);
          }

          return value_low;
        }

        v33 = v52;
        *(v10 + 608) = queueOut;
        *(v10 + 616) = v33;
        v34 = triggerToken;
        *(v10 + 624) = triggerTokenOut;
        *(v10 + 632) = v34;
        *(v10 + 640) = v49;
        v35 = *(v7 + 48);
        *(v10 + 664) = *(v7 + 64);
        *(v10 + 648) = v35;
        *&time.value = v43;
        time.epoch = v16;
        if (*(v7 + 329))
        {
          v36 = 96;
        }

        else
        {
          if (!*(v7 + 330))
          {
LABEL_62:
            *(v10 + 672) = time;
            *(v10 + 424) = Mutable;
            v37 = ptr;
            *(v10 + 496) = v48;
            *(v10 + 536) = v37;
            v38 = cf;
            *(v10 + 736) = cf;
            *(v10 + 732) = v45;
            v26 = MovieHeaderMakerAddTrack(*(v7 + 744), v38, (v10 + 744));
            if (!v26)
            {
              v26 = MovieSampleDataWriterAddTrack(*(v7 + 752), a2, chunkCallback, v10, (v10 + 760));
              if (!v26)
              {
                v26 = MovieSampleDataWriterTrackSetPreferredChunkAlignment(*(v7 + 752), *(v10 + 760), 512);
                if (!v26)
                {
                  v26 = MediaSampleTimingGeneratorCreate(v23, a2, *(v10 + 344), (v10 + 752));
                  if (!v26)
                  {
                    if (!*(v7 + 384))
                    {
LABEL_72:
                      CFArrayAppendValue(*(v7 + 488), v10);
                      v40 = *(v7 + 496);
                      if (v40)
                      {
                        v41 = *(v7 + 496);
                        do
                        {
                          v42 = v41;
                          v41 = *(v41 + 24);
                        }

                        while (v41);
                        *(v42 + 24) = v10;
                      }

                      else
                      {
                        v40 = v10;
                      }

                      value_low = 0;
                      v10 = 0;
                      Mutable = 0;
                      *(v7 + 496) = v40;
                      ptr = 0;
                      v48 = 0;
                      v52 = 0;
                      queueOut = 0;
                      triggerToken = 0;
                      triggerTokenOut = 0;
                      v49 = 0;
                      cf = 0;
                      *a4 = v45;
                      goto LABEL_30;
                    }

                    v39 = FigCFEqual();
                    if (a2 == 1986618469 && v39)
                    {
                      *(v10 + 912) = 1;
                    }

                    v26 = setNegativeCompositionOffsetsInISOFilePolicy(v7, v10);
                    if (!v26)
                    {
                      *(v10 + 729) = 1;
                      goto LABEL_72;
                    }
                  }
                }
              }
            }

            goto LABEL_29;
          }

          v36 = 144;
        }

        time = *(v7 + v36);
        goto LABEL_62;
      }

      figMovieWriter_AddTrack_cold_1(&time);
LABEL_83:
      value_low = LODWORD(time.value);
      goto LABEL_30;
    }

    if (*(v7 + 18))
    {
      *(v10 + 108) = v43;
      *(v10 + 124) = v16;
    }

    else
    {
      CMTimeMakeWithSeconds(&time, 2.0, 1);
      *(v10 + 108) = time;
    }

    *(v10 + 344) = 1;
    if ((*(v7 + 324) - 6) < 0xFFFFFFFB)
    {
      goto LABEL_23;
    }

    *(v10 + 492) = 1;
    v29 = *v20;
    v19 = editBuilderCreate(*v20, &v48);
    if (v19)
    {
      goto LABEL_86;
    }

    v30 = *(v7 + 324);
    if (v30 == 5)
    {
      v31 = (v10 + 508);
      if (*(v7 + 720) == @"com.apple.m4a-audio")
      {
        *(v10 + 768) = 2;
        *(v10 + 504) = 0;
        *v31 = v43;
        *(v10 + 524) = v16;
        goto LABEL_85;
      }

      *(v10 + 768) = 5;
      *(v10 + 504) = 0;
      *v31 = v43;
      *(v10 + 524) = v16;
    }

    else
    {
      *(v10 + 768) = v30;
      *(v10 + 504) = 0;
      *(v10 + 508) = v43;
      *(v10 + 524) = v16;
      if (v30 == 2)
      {
        goto LABEL_85;
      }
    }

    if (!*(v7 + 384))
    {
      goto LABEL_23;
    }

LABEL_85:
    v19 = editBoundaryDetectorCreate(v29, &ptr);
    if (!v19)
    {
      goto LABEL_23;
    }

    goto LABEL_86;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void figMovieWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFAllocator *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3 || (v29 = DerivedStorage) == 0 || *(DerivedStorage + 335))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_5:
    OUTLINED_FUNCTION_65_6();

    FigSignalErrorAtGM();
    return;
  }

  v169 = 0;
  if (getTrackInfoForTrackID(DerivedStorage, a2, &v169))
  {
    goto LABEL_15;
  }

  v31 = v169;
  v32 = *(v169 + 736);
  if (CFEqual(@"MediaTimeScale", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v33 = CFGetTypeID(a4);
      if (v33 == CFNumberGetTypeID())
      {
        v34 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v34, kCFNumberSInt32Type, v35);
        if (!MediaSampleTimingGeneratorSetMediaTimeScale(*(v31 + 752), *v166) && !MovieTrackSetMediaTimeScale(v32, *v166))
        {
          *(v31 + 104) = *v166;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_250;
  }

  if (CFEqual(@"QTLoadSettings", a3))
  {
    if (a4)
    {
      v36 = CFGetTypeID(a4);
      if (v36 == CFDictionaryGetTypeID())
      {
        v168 = 0;
        v167 = 0u;
        memset(v166, 0, sizeof(v166));
        v37 = OUTLINED_FUNCTION_19_24();
        if (!getFigTrackLoadSettingsFromDictionary(v37, v38))
        {
          v39 = *&v166[16];
          *(v31 + 44) = *v166;
          *(v31 + 60) = v39;
          *(v31 + 76) = v167;
          *(v31 + 92) = v168;
          *(v31 + 40) = 1;
        }

        goto LABEL_15;
      }

      goto LABEL_146;
    }

    *(v31 + 40) = 0;
LABEL_15:
    OUTLINED_FUNCTION_65_6();
    return;
  }

  if (CFEqual(@"MediaDataPrecedence", a3))
  {
    if (!a4)
    {
      goto LABEL_146;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      goto LABEL_146;
    }

    *v166 = 0;
    v41 = OUTLINED_FUNCTION_16_23();
    CFNumberGetValue(v41, kCFNumberSInt32Type, v42);
    *(v31 + 100) = 0;
    goto LABEL_15;
  }

  if (CFEqual(@"InterleavingAdvance", a3))
  {
    if (!a4)
    {
      goto LABEL_146;
    }

    memset(v166, 0, 24);
    CMTimeMakeFromDictionary(v166, a4);
    if ((v166[12] & 0x1D) != 1)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
LABEL_38:
      FigSignalErrorAtGM();
      goto LABEL_15;
    }

    *(v31 + 108) = *v166;
    *(v31 + 124) = *&v166[16];
    goto LABEL_15;
  }

  if (CFEqual(@"InterleavingOrder", a3))
  {
    if (a4)
    {
      v43 = CFGetTypeID(a4);
      if (v43 == CFNumberGetTypeID())
      {
        FigCFNumberGetSInt32();
        OUTLINED_FUNCTION_49_4();
        *(v31 + 132) = v44;
        goto LABEL_15;
      }
    }

LABEL_60:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM();
    goto LABEL_15;
  }

  if (CFEqual(@"PreferredChunkAlignment", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v45 = CFGetTypeID(a4);
      if (v45 == CFNumberGetTypeID())
      {
        v46 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v46, kCFNumberSInt32Type, v47);
        MovieSampleDataWriterTrackSetPreferredChunkAlignment(*(v29 + 752), *(v31 + 760), *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_60;
  }

  if (CFEqual(@"PreferredChunkSize", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v48 = CFGetTypeID(a4);
      if (v48 == CFNumberGetTypeID())
      {
        v49 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v49, kCFNumberSInt32Type, v50);
        MovieSampleDataWriterTrackSetPreferredChunkSize(*(v29 + 752), *(v31 + 760), *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_60;
  }

  if (CFEqual(@"PreferredChunkDuration", a3))
  {
    *v166 = *MEMORY[0x1E6960C70];
    *&v166[16] = *(MEMORY[0x1E6960C70] + 16);
    if (a4)
    {
      v51 = CFGetTypeID(a4);
      if (v51 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(v166, a4);
        v52 = *(v29 + 752);
        v53 = *(v31 + 760);
        v165 = *v166;
        MovieSampleDataWriterTrackSetPreferredChunkDuration(v52, v53, &v165);
        goto LABEL_15;
      }
    }

    goto LABEL_60;
  }

  if (CFEqual(@"AlternateGroupID", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v54 = CFGetTypeID(a4);
      if (v54 == CFNumberGetTypeID())
      {
        v55 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v55, kCFNumberSInt16Type, v56);
        MovieInformationSetTrackAlternateGroupID(*(v29 + 736), v32, *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_250;
  }

  if (CFEqual(@"DefaultAlternateGroupID", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v57 = CFGetTypeID(a4);
      if (v57 == CFNumberGetTypeID())
      {
        v58 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v58, kCFNumberSInt16Type, v59);
        MovieTrackSetDefaultAlternateGroupID(v32, *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_250;
  }

  if (CFEqual(@"ProvisionalAlternateGroupID", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v60 = CFGetTypeID(a4);
      if (v60 == CFNumberGetTypeID())
      {
        v61 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v61, kCFNumberSInt16Type, v62);
        MovieTrackSetProvisionalAlternateGroupID(v32, *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_250;
  }

  if (CFEqual(@"TrackVolume", a3))
  {
    *v166 = 0;
    if (a4)
    {
      v63 = CFGetTypeID(a4);
      if (v63 == CFNumberGetTypeID())
      {
        v64 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v64, kCFNumberFloat32Type, v65);
        MovieTrackSetVolume(v32, *v166);
        goto LABEL_15;
      }
    }

    goto LABEL_250;
  }

  if (CFEqual(@"EditList", a3))
  {
    if (a4)
    {
      v66 = CFGetTypeID(a4);
      if (v66 != CFArrayGetTypeID())
      {
        goto LABEL_146;
      }

      v67 = *(v31 + 400);
      *(v31 + 400) = a4;
      CFRetain(a4);
    }

    else
    {
      v67 = *(v31 + 400);
      *(v31 + 400) = 0;
    }

    if (v67)
    {
      CFRelease(v67);
    }

    if (*(v29 + 329))
    {
      *(v31 + 353) = 1;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"LanguageTag", a3))
  {
    if (a4)
    {
      v68 = CFGetTypeID(a4);
      if (v68 != CFStringGetTypeID())
      {
        goto LABEL_146;
      }

      v69 = *(v31 + 408);
      *(v31 + 408) = a4;
      goto LABEL_91;
    }

    v69 = *(v31 + 408);
    *(v31 + 408) = 0;
LABEL_100:
    if (v69)
    {
      CFRelease(v69);
    }

    goto LABEL_15;
  }

  if (CFEqual(@"ExtendedLanguageTag", a3))
  {
    if (!a4)
    {
      v69 = *(v31 + 416);
      *(v31 + 416) = 0;
      goto LABEL_100;
    }

    v70 = CFGetTypeID(a4);
    if (v70 != CFStringGetTypeID())
    {
      goto LABEL_146;
    }

    v69 = *(v31 + 416);
    *(v31 + 416) = a4;
    goto LABEL_91;
  }

  if (!CFEqual(@"EnableTrack", a3))
  {
    if (CFEqual(@"InterleaveTrack", a3))
    {
      if (a4)
      {
        v75 = CFBooleanGetTypeID();
        if (v75 == CFGetTypeID(a4))
        {
          CFBooleanGetValue(a4);
          OUTLINED_FUNCTION_49_4();
          *(v31 + 352) = v76;
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (CFEqual(@"TrackDimensions", a3))
      {
        if (a4)
        {
          v77 = CFGetTypeID(a4);
          if (v77 != CFDictionaryGetTypeID())
          {
            goto LABEL_146;
          }

          *v166 = 0uLL;
          v78 = OUTLINED_FUNCTION_19_24();
          if (getDimensionsFromDictionary(v78, v79))
          {
            goto LABEL_15;
          }

          v80 = OUTLINED_FUNCTION_9_33();
          if (MovieTrackSetTrackDimensions(v80, v81, v82))
          {
            goto LABEL_15;
          }

          v83 = 0;
        }

        else
        {
          v83 = 1;
        }

        *(v31 + 32) = v83;
        goto LABEL_15;
      }

      if (CFEqual(@"CleanApertureDimensions", a3))
      {
        if (a4)
        {
          v84 = CFGetTypeID(a4);
          if (v84 == CFDictionaryGetTypeID())
          {
            *v166 = 0uLL;
            v85 = OUTLINED_FUNCTION_19_24();
            if (getDimensionsFromDictionary(v85, v86))
            {
              goto LABEL_15;
            }

            v87 = OUTLINED_FUNCTION_9_33();
            if (MovieTrackSetCleanApertureDimensions(v87, v88, v89))
            {
              goto LABEL_15;
            }

            v90 = 0;
            v91 = 1;
          }

          else
          {
            if (!CFEqual(@"NoDimensions", a4))
            {
              goto LABEL_146;
            }

            v91 = 0;
            v90 = 0;
          }
        }

        else
        {
          v91 = 0;
          v90 = 1;
        }

        *(v31 + 33) = v90;
        *(v31 + 34) = v91;
        goto LABEL_15;
      }

      if (CFEqual(@"ProductionApertureDimensions", a3))
      {
        if (a4)
        {
          v92 = CFGetTypeID(a4);
          if (v92 == CFDictionaryGetTypeID())
          {
            *v166 = 0uLL;
            v93 = OUTLINED_FUNCTION_19_24();
            if (getDimensionsFromDictionary(v93, v94))
            {
              goto LABEL_15;
            }

            v95 = OUTLINED_FUNCTION_9_33();
            if (MovieTrackSetProductionApertureDimensions(v95, v96, v97))
            {
              goto LABEL_15;
            }

            v98 = 0;
            v99 = 1;
          }

          else
          {
            if (!CFEqual(@"NoDimensions", a4))
            {
              goto LABEL_146;
            }

            v99 = 0;
            v98 = 0;
          }
        }

        else
        {
          v99 = 0;
          v98 = 1;
        }

        *(v31 + 35) = v98;
        *(v31 + 36) = v99;
        goto LABEL_15;
      }

      if (CFEqual(@"EncodedPixelsDimensions", a3))
      {
        if (a4)
        {
          v100 = CFGetTypeID(a4);
          if (v100 == CFDictionaryGetTypeID())
          {
            *v166 = 0uLL;
            v101 = OUTLINED_FUNCTION_19_24();
            if (getDimensionsFromDictionary(v101, v102))
            {
              goto LABEL_15;
            }

            v103 = OUTLINED_FUNCTION_9_33();
            if (MovieTrackSetEncodedPixelsDimensions(v103, v104, v105))
            {
              goto LABEL_15;
            }

            v106 = 0;
            v107 = 1;
          }

          else
          {
            if (!CFEqual(@"NoDimensions", a4))
            {
              goto LABEL_146;
            }

            v106 = 0;
            v107 = 0;
          }
        }

        else
        {
          v107 = 0;
          v106 = 1;
        }

        *(v31 + 37) = v106;
        *(v31 + 38) = v107;
        goto LABEL_15;
      }

      if (CFEqual(@"TrackMatrix", a3))
      {
        LODWORD(v167) = 0;
        memset(v166, 0, sizeof(v166));
        if (a4)
        {
          v108 = CFGetTypeID(a4);
          if (v108 == CFArrayGetTypeID())
          {
            v109 = OUTLINED_FUNCTION_19_24();
            if (!getFigMatrixFromArray(v109, v110))
            {
              MovieTrackSetTrackMatrix(v32, v166);
            }

            goto LABEL_15;
          }
        }

LABEL_250:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        goto LABEL_38;
      }

      if (!CFEqual(@"FormatDescriptionArray", a3))
      {
        if (CFEqual(@"ReplacementFormatDescriptionArray", a3))
        {
          if (!a4)
          {
            goto LABEL_146;
          }

          v119 = CFGetTypeID(a4);
          if (v119 != CFArrayGetTypeID())
          {
            goto LABEL_146;
          }

          if (MovieTrackReplaceFormatDescriptionArray(v32, a4))
          {
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_65_6();

          setDefaultTrackDimensionsIfNecessary(v120);
          return;
        }

        if (CFEqual(@"TrackMetadataToTransfer", a3))
        {
          if (a4)
          {
            CFDictionaryGetTypeID();
            if (v24 != OUTLINED_FUNCTION_68_6())
            {
              CFArrayGetTypeID();
              if (v24 != OUTLINED_FUNCTION_68_6())
              {
                goto LABEL_15;
              }
            }

            v122 = *(v31 + 560);
            *(v31 + 560) = a4;
            CFRetain(a4);
          }

          else
          {
            v122 = *(v31 + 560);
            *(v31 + 560) = 0;
          }

          if (v122)
          {
            CFRelease(v122);
          }

          v124 = *(v31 + 568);
          if (v124)
          {
            CFRelease(v124);
            *(v31 + 568) = 0;
          }

          goto LABEL_15;
        }

        if (CFEqual(@"TrackMetadataToWrite", a3))
        {
          if (a4)
          {
            CFDictionaryGetTypeID();
            if (v24 != OUTLINED_FUNCTION_68_6())
            {
              CFArrayGetTypeID();
              if (v24 != OUTLINED_FUNCTION_68_6())
              {
                goto LABEL_15;
              }
            }

            v123 = *(v31 + 568);
            *(v31 + 568) = a4;
            CFRetain(a4);
          }

          else
          {
            v123 = *(v31 + 568);
            *(v31 + 568) = 0;
          }

          if (v123)
          {
            CFRelease(v123);
          }

          v126 = *(v31 + 560);
          if (v126)
          {
            CFRelease(v126);
            *(v31 + 560) = 0;
          }

          goto LABEL_15;
        }

        if (CFEqual(@"TrackMetadataAllowList", a3))
        {
          if (!a4)
          {
            v69 = *(v31 + 576);
            *(v31 + 576) = 0;
            goto LABEL_100;
          }

          v125 = CFDictionaryGetTypeID();
          if (v125 != CFGetTypeID(a4))
          {
            goto LABEL_146;
          }

          v69 = *(v31 + 576);
          *(v31 + 576) = a4;
        }

        else
        {
          if (CFEqual(@"ExcludeFromAutoSelection", a3))
          {
            if (!a4)
            {
              goto LABEL_146;
            }

            v127 = CFGetTypeID(a4);
            if (v127 != CFBooleanGetTypeID())
            {
              goto LABEL_146;
            }

            CFBooleanGetValue(a4);
            OUTLINED_FUNCTION_65_6();

            MovieTrackSetExcludeFromAutoSelection(v128, v129);
            return;
          }

          if (CFEqual(@"WriteCompactSampleSizeIfPossible", a3))
          {
            if (a4)
            {
              v131 = CFGetTypeID(a4);
              if (v131 == CFBooleanGetTypeID())
              {
                CFBooleanGetValue(a4);
                OUTLINED_FUNCTION_49_4();
                *(v31 + 584) = v132;
                goto LABEL_15;
              }
            }

            goto LABEL_146;
          }

          if (CFEqual(@"WriteQTSoundSampleTableLieIfPossible", a3))
          {
            if (a4)
            {
              v133 = CFGetTypeID(a4);
              if (v133 == CFBooleanGetTypeID())
              {
                CFBooleanGetValue(a4);
                OUTLINED_FUNCTION_49_4();
                *(v31 + 585) = v134;
                goto LABEL_15;
              }
            }

            goto LABEL_146;
          }

          if (CFEqual(@"Layer", a3))
          {
            *v166 = 0;
            if (a4)
            {
              v135 = CFGetTypeID(a4);
              if (v135 == CFNumberGetTypeID())
              {
                v136 = OUTLINED_FUNCTION_16_23();
                CFNumberGetValue(v136, kCFNumberSInt16Type, v137);
                MovieTrackSetLayer(v32, *v166);
                goto LABEL_15;
              }
            }

            goto LABEL_250;
          }

          if (!CFEqual(@"SampleReferenceBaseURL", a3))
          {
            if (CFEqual(@"NegativeCompositionOffsetsInISOFilePolicy", a3))
            {
              if (!a4)
              {
                goto LABEL_146;
              }

              v139 = CFGetTypeID(a4);
              if (v139 != CFStringGetTypeID())
              {
                goto LABEL_146;
              }

              OUTLINED_FUNCTION_65_6();

              setNegativeCompositionOffsetsInISOFilePolicy(v140, v141);
            }

            else if (CFEqual(@"HEVCSyncSampleNALUnitTypes", a3))
            {
              v143 = MovieTrackRemoveSampleGroupInfoForGroupingType(*(v31 + 736), 1937337955);
              if (!a4 || v143)
              {
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_65_6();

              MovieTrackAppendSyncSampleCombinations(v144, v145, v146, v147, v148, v149, v150, v151, a9, a10, SWORD2(a10), BYTE6(a10), a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
            }

            else if (CFEqual(@"HEVCTemporalLevelInfoCombinations", a3))
            {
              v152 = MovieTrackRemoveSampleGroupInfoForGroupingType(*(v31 + 736), 1953719148);
              if (!a4 || v152)
              {
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_65_6();

              MovieTrackAppendTemporalLevelCombinations(v153, v154);
            }

            else
            {
              if (!CFEqual(@"SampleGroupDescriptions", a3))
              {
                goto LABEL_15;
              }

              v156 = MovieTrackRemoveAllSampleGroups(*(v31 + 736));
              if (!a4 || v156)
              {
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_65_6();

              MovieTrackAppendSampleGroupDescriptions(v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, SHIDWORD(a11), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
            }

            return;
          }

          if (!a4)
          {
            v69 = *(v31 + 456);
            *(v31 + 456) = 0;
            goto LABEL_100;
          }

          v138 = CFGetTypeID(a4);
          if (v138 != CFURLGetTypeID())
          {
            goto LABEL_146;
          }

          v69 = *(v31 + 456);
          *(v31 + 456) = a4;
        }

LABEL_91:
        CFRetain(a4);
        goto LABEL_100;
      }

      if (!a4)
      {
        MovieTrackRemoveAllSampleDescriptions(v32);
        goto LABEL_15;
      }

      v111 = CFGetTypeID(a4);
      if (v111 == CFArrayGetTypeID())
      {
        MovieTrackRemoveAllSampleDescriptions(v32);
        Count = CFArrayGetCount(a4);
        if (Count >= 1)
        {
          v113 = Count;
          v114 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(a4, v114);
            OUTLINED_FUNCTION_496();
            if (MovieTrackFindOrAddSampleDescription(v115, v116, v117, v118))
            {
              break;
            }

            if (v113 == ++v114)
            {
              setDefaultTrackDimensionsIfNecessary(v31);
              goto LABEL_15;
            }
          }
        }

        goto LABEL_15;
      }
    }

LABEL_146:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_60;
  }

  v71 = CFGetTypeID(a4);
  if (v71 != CFBooleanGetTypeID())
  {
    goto LABEL_60;
  }

  CFBooleanGetValue(a4);
  OUTLINED_FUNCTION_65_6();

  MovieTrackSetEnabled(v72, v73);
}

uint64_t getTrackInfoArrayIndexFromFigTrackID(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 40);
  if (!v3 || ((Count = CFArrayGetCount(v3), Count >= a2) ? (v7 = a2 < 1) : (v7 = 1), !v7 ? (v8 = Count == 0) : (v8 = 1), v8))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *a3 = a2 - 1;
    return 0;
  }
}

uint64_t getFigMatrixFromArray(const __CFArray *a1, uint64_t a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (a1)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1) && CFArrayGetCount(a1) == 9)
    {
      v5 = 0;
      v6 = 0;
      v7 = &v14;
LABEL_5:
      v8 = v7;
      v9 = 3;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
        v11 = CFNumberGetTypeID();
        if (v11 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        ++v5;
        CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v8);
        v8 += 4;
        if (!--v9)
        {
          ++v6;
          v7 = (v7 + 12);
          if (v6 != 3)
          {
            goto LABEL_5;
          }

          result = 0;
          v13 = v15;
          *a2 = v14;
          *(a2 + 16) = v13;
          *(a2 + 32) = v16;
          return result;
        }
      }
    }
  }

  return 4294954516;
}

uint64_t FigAudioCompressionOptionsGetPreset(const void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  MEMORY[0x19A8D3660](&gCreatePresetGetterDictionaryOnce, createPresetGetterDictionaryOnce);
  if (!a2)
  {
    a2 = &v16;
  }

  if (!a3)
  {
    a3 = &v15;
  }

  if (!a4)
  {
    a4 = &v14;
  }

  if (!a5)
  {
    a5 = &v13;
  }

  if (a1 && gPresetGetterDictionary && (Value = CFDictionaryGetValue(gPresetGetterDictionary, a1)) != 0 && (v11 = Value[1]) != 0)
  {
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    return v11(a2, a3, a4, a5);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

CFDictionaryRef createPresetGetterDictionaryOnce()
{
  v0 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *keys = 0u;
  v4 = 0;
  v1 = &createPresetGetterDictionaryOnce_presetGetterPairs;
  memset(v3, 0, sizeof(v3));
  do
  {
    keys[v0] = **v1;
    *(v3 + v0 * 8) = v1;
    ++v0;
    v1 += 2;
  }

  while (v0 != 27);
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v3, 27, MEMORY[0x1E695E9D8], 0);
  gPresetGetterDictionary = result;
  return result;
}

uint64_t getpreset_AAC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_AAC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFormatWriter(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, __int128 *a9, __int128 *a10, const void *a11, unsigned int a12, uint64_t a13, uint64_t a14, const void *a15, int a16, uint64_t *a17)
{
  v17 = *a9;
  v26 = *(a9 + 2);
  v18 = a10[1];
  v24[0] = *a10;
  v24[1] = v18;
  v24[2] = a10[2];
  v25 = v17;
  v22 = *a13;
  v23 = *(a13 + 16);
  v20 = *a14;
  v21 = *(a14 + 16);
  return FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(a1, a2, a3, a4, a5, a6, a7, a8, &v25, v24, a11, a12, &v22, 0, &v20, 0, a15, a16, a17);
}

uint64_t FigSampleBufferProcessorCreateWithVTCompressionSession(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, const __CFAllocator *Allocator, int a8, void *a9)
{
  valuePtr = a8;
  if (a9)
  {
    v16 = *MEMORY[0x1E695E480];
    FigSampleBufferProcessorGetClassID();
    v17 = CMDerivedObjectCreate();
    if (v17)
    {
      return v17;
    }

    v24 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!Allocator || v16 == Allocator)
    {
      Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v22 = CFStringCreateWithFormat(v16, 0, @"SampleBufferProcessor-VideoCompression-%p", 0);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], v22);
      *DerivedStorage = CMMemoryPoolCreate(Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      Allocator = CMMemoryPoolGetAllocator(*DerivedStorage);
    }

    v17 = VTCompressionSessionCreate(a1, a2, a3, a4, a5, v24, Allocator, sbp_vtcs_outputFrame, 0, (DerivedStorage + 16));
    if (v17)
    {
      return v17;
    }

    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 12) = a3;
    v23 = CFNumberCreate(v16, kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(*(DerivedStorage + 16), *MEMORY[0x1E6983648], v23);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    *a9 = 0;
    if (v23)
    {
      CFRelease(v23);
    }

    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigSampleBufferConsumerCreateForFormatWriter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1 && a7)
  {
    v14 = *MEMORY[0x1E695E480];
    FigSampleBufferConsumerGetClassID();
    v15 = CMDerivedObjectCreate();
    if (!v15)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a1;
      v18 = *(a3 + 16);
      *(DerivedStorage + 24) = *a3;
      *(DerivedStorage + 40) = v18;
      *(DerivedStorage + 48) = a4;
      v19 = *(a5 + 16);
      *(DerivedStorage + 56) = *a5;
      *(DerivedStorage + 72) = v19;
      *(DerivedStorage + 80) = a6;
      CFRetain(a1);
      *(DerivedStorage + 8) = a2;
      if (*(DerivedStorage + 36) & 1) != 0 && (*(DerivedStorage + 68))
      {
        v22 = *DerivedStorage;
        v20 = DerivedStorage + 16;
        v21 = v22;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v23)
        {
          v23(v21, a2, @"SourceSampleBufferQueue", v14, v20);
        }
      }

      v15 = 0;
      *a7 = 0;
    }

    return v15;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMediaProcessorCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t *a6)
{
  cf = 0;
  if (!a2 || !a3 || !a4 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v16 = FigSignalErrorAtGM();
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  MEMORY[0x19A8D3660](&sRegisterMediaProcessorTypeOnce, RegisterFigMediaProcessorType);
  Instance = _CFRuntimeCreateInstance();
  v13 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
LABEL_17:
    v18 = FigSignalErrorAtGM();
LABEL_18:
    v16 = v18;
    goto LABEL_11;
  }

  *(Instance + 24) = a2;
  CFRetain(a2);
  FigBaseObject = FigSampleBufferProcessorGetFigBaseObject(a2);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    v15(FigBaseObject, @"CanProcessUnreadySampleBuffers", a1, &cf);
    v15 = cf;
  }

  if (v15 == *MEMORY[0x1E695E4D0])
  {
    *(v13 + 90) = 1;
  }

  *(v13 + 32) = a3;
  CFRetain(a3);
  *(v13 + 40) = a4;
  CFRetain(a4);
  v19 = FigSimpleMutexCreate();
  *(v13 + 144) = v19;
  if (!v19)
  {
LABEL_39:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    goto LABEL_17;
  }

  *(v13 + 64) = a5;
  CFRetain(a5);
  v20 = FigActivitySchedulerGetFigBaseObject(*(v13 + 64));
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v21)
  {
    v21(v20, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v22 = *(v13 + 24);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v23)
  {
    v18 = v23(v22, mediaprocessor_OutputSampleBuffer, v13);
    if (v18)
    {
      goto LABEL_18;
    }

    v24 = *(v13 + 64);
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v18 = v25(v24, mediaprocessor_ProcessUntilHighWaterMet, v13);
      if (v18)
      {
        goto LABEL_18;
      }

      *(v13 + 72) = 1;
      v26 = *(v13 + 40);
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v27)
      {
        v18 = v27(v26, mediaprocessor_OutputBelowLowWater, v13, v13 + 48);
        if (v18)
        {
          goto LABEL_18;
        }

        *(v13 + 56) = 1;
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_102();
        v18 = CMNotificationCenterAddListener();
        if (v18)
        {
          goto LABEL_18;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_102();
        v18 = CMNotificationCenterAddListener();
        if (v18)
        {
          goto LABEL_18;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_102();
        v18 = CMNotificationCenterAddListener();
        if (v18)
        {
          goto LABEL_18;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_102();
        v18 = CMNotificationCenterAddListener();
        if (v18)
        {
          goto LABEL_18;
        }

        if (!*(v13 + 90))
        {
LABEL_37:
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          v16 = 0;
          *a6 = v13;
          goto LABEL_10;
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_102();
          v18 = FigNotificationCenterAddWeakListener();
          if (!v18)
          {
            goto LABEL_37;
          }

          goto LABEL_18;
        }

        goto LABEL_39;
      }
    }
  }

  v16 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v16;
}

uint64_t RegisterFigMediaProcessorType()
{
  result = _CFRuntimeRegisterClass();
  sFigMediaProcessorTypeID = result;
  return result;
}

uint64_t mediaprocessor_Init(_OWORD *a1)
{
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  result = FigReentrantMutexCreate();
  *(a1 + 10) = result;
  return result;
}

uint64_t sbp_vtcs_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 40) = a3;
  return 0;
}

uint64_t otfw_installLowWaterTrigger(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 16);
  if (result)
  {
    *(DerivedStorage + 88) = a2;
    *(DerivedStorage + 96) = a3;
    if (*(DerivedStorage + 80))
    {
      v11 = *(DerivedStorage + 56);
      result = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    }

    else
    {
      v11 = *(DerivedStorage + 56);
      result = CMBufferQueueInstallTrigger(result, otfw_LowWater, a1, 2, &v11, (DerivedStorage + 104));
    }

    v10 = *(DerivedStorage + 104);
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  return result;
}

uint64_t FigMediaProcessorGetVTCompressionSession(uint64_t a1)
{
  if (!a1 || !FigMediaProcessorGetSampleBufferProcessor(a1))
  {
    return 0;
  }

  return FigSampleBufferProcessorGetVTCompressionSession();
}

uint64_t FigMediaProcessorGetSampleBufferProcessor(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return *(a1 + 24);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t FigSampleBufferProcessorGetVTCompressionSession()
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (*(result + 39))
    {
      return 0;
    }

    else
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t FigMediaProcessorCreateForAudioCompressionWithFormatWriter(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, const void *a8, int a9, __int128 *a10, uint64_t a11, __int128 *a12, uint64_t a13, const void *a14, int a15, uint64_t *a16)
{
  v20 = *a10;
  v21 = *(a10 + 2);
  v18 = *a12;
  v19 = *(a12 + 2);
  LODWORD(v17) = a9;
  return FigMediaProcessorCreateForAudioCompressionCommon(a1, a2, a3, a4, a5, a6, a7, a8, v17, 0, &v20, a11, &v18, a13, a14, a15, a16);
}

uint64_t FigSampleBufferProcessorCreateWithAudioCompression(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, void *a8)
{
  values = 0;
  v120 = 0;
  *outWritable = 0;
  v114 = 0;
  v112 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  valuePtr = 0;
  sizeOut = 0;
  v105 = 75;
  inPropertyData = 0;
  v103 = -1;
  v104 = 3;
  if (a8)
  {
    memset(&inSourceFormat, 0, sizeof(inSourceFormat));
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    ioPropertyDataSize = 0;
    *&inClassDescriptions.mType = 0;
    inClassDescriptions.mManufacturer = 0;
    v14 = *MEMORY[0x1E695E480];
    FigSampleBufferProcessorGetClassID();
    v15 = CMDerivedObjectCreate();
    if (v15)
    {
      value_low = v15;
      v17 = 0;
      MutableCopy = 0;
      goto LABEL_4;
    }

    cf = a7;
    allocator = v14;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!a2)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v21 = DerivedStorage;
    CMTimeMakeWithSeconds(&v102, 0.5, 1000);
    *(v21 + 304) = v102;
    v22 = MEMORY[0x1E6960C70];
    *(v21 + 232) = *MEMORY[0x1E6960C70];
    *(v21 + 248) = *(v22 + 16);
    v23 = FigFormatDescriptionRetain();
    *(v21 + 24) = v23;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v23);
    if (!StreamBasicDescription)
    {
      v17 = 0;
      MutableCopy = 0;
      value_low = 4294954586;
      goto LABEL_4;
    }

    v25 = StreamBasicDescription;
    if (StreamBasicDescription->mFormatID != 1819304813)
    {
      FigSampleBufferProcessorCreateWithAudioCompression_cold_21(&v102);
      goto LABEL_221;
    }

    v26 = *&StreamBasicDescription->mSampleRate;
    v27 = *&StreamBasicDescription->mBytesPerPacket;
    *&inSourceFormat.mBitsPerChannel = *&StreamBasicDescription->mBitsPerChannel;
    *&inSourceFormat.mSampleRate = v26;
    *&inSourceFormat.mBytesPerPacket = v27;
    v28 = *(a3 + 16);
    *&outPropertyData.mSampleRate = *a3;
    *&outPropertyData.mBytesPerPacket = v28;
    *&outPropertyData.mBitsPerChannel = *(a3 + 32);
    if (outPropertyData.mFormatID && *&outPropertyData.mFormatID != 1819304813)
    {
      if (!outPropertyData.mChannelsPerFrame)
      {
        facPickBestDestinationNumberOfChannels(StreamBasicDescription, &outPropertyData);
      }

      ioPropertyDataSize = 40;
      if (AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData))
      {
        FigSampleBufferProcessorCreateWithAudioCompression_cold_20();
        goto LABEL_221;
      }
    }

    else
    {
      *(v21 + 17) = 1;
    }

    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a2, &sizeOut);
    if (v25->mChannelsPerFrame != outPropertyData.mChannelsPerFrame)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    if (*(v21 + 17))
    {
      *(v21 + 32) = FigFormatDescriptionRetain();
      v17 = 0;
      MutableCopy = 0;
      *(v21 + 164) = FigAudioFormatDescriptionEmploysDependentPackets();
      goto LABEL_28;
    }

    if (!outWritable[1])
    {
      mChannelsPerFrame = v25->mChannelsPerFrame;
      if (mChannelsPerFrame == 2 && outPropertyData.mChannelsPerFrame == 1)
      {
        mFormatFlags = v25->mFormatFlags;
        if ((mFormatFlags & 4) != 0)
        {
          mBitsPerChannel = v25->mBitsPerChannel;
          if (mBitsPerChannel != 32 && mBitsPerChannel != 16)
          {
            goto LABEL_218;
          }
        }

        if (mFormatFlags)
        {
          if ((mFormatFlags & 0x20) != 0 || v25->mBitsPerChannel != 32)
          {
            goto LABEL_218;
          }
        }

        else if ((mFormatFlags & 0x20) != 0)
        {
LABEL_218:
          FigSampleBufferProcessorCreateWithAudioCompression_cold_19(&v102);
          goto LABEL_221;
        }

        inSourceFormat.mBytesPerFrame >>= 1;
        inSourceFormat.mChannelsPerFrame = 1;
        inSourceFormat.mBytesPerPacket >>= 1;
        sizeOut = a4;
        if ((mFormatFlags & 2) != 0 || v25->mFormatID != 1819304813)
        {
          inSourceFormat.mFormatFlags ^= 2u;
        }

        v36 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
        *(v21 + 176) = v36;
        ChannelLayout = a5;
        if (v36)
        {
          *v36 = 1;
          v36[2] = outPropertyData.mChannelsPerFrame;
          ChannelLayout = a5;
        }
      }

      else if (mChannelsPerFrame > outPropertyData.mChannelsPerFrame)
      {
        FigSampleBufferProcessorCreateWithAudioCompression_cold_18(&v102);
        goto LABEL_221;
      }
    }

    v37 = 1;
    if (a5 && !outWritable[1])
    {
      v95 = 1;
      if (!ChannelLayout)
      {
        goto LABEL_72;
      }

      if (ChannelLayout->mChannelLayoutTag == -266338299 && a5->mChannelLayoutTag == -266338299)
      {
        v37 = 0;
        v95 = 0;
        goto LABEL_72;
      }

      if (outPropertyData.mFormatID == 1634754915 || outPropertyData.mFormatID == 1902211171 || outPropertyData.mFormatID == 1667330147)
      {
        if (ChannelLayout->mChannelLayoutTag == -266338299)
        {
          v37 = 0;
          v38 = a5->mChannelLayoutTag != -266338299;
LABEL_71:
          v95 = v38;
LABEL_72:
          v94 = ChannelLayout;
          if (a6)
          {
            value = 0;
            v39 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_AudioConverterEncodeBitRate");
            if (v39)
            {
              v40 = v39;
              TypeID = CFNumberGetTypeID();
              if (TypeID == CFGetTypeID(v40))
              {
                CFNumberGetValue(v40, kCFNumberIntType, &v112);
              }
            }

            FigCFDictionaryGetBooleanIfPresent();
            v42 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_BitRateControlMode");
            v92 = v37;
            if (v42 && (v43 = v42, v44 = CFNumberGetTypeID(), v44 == CFGetTypeID(v43)))
            {
              CFNumberGetValue(v43, kCFNumberIntType, &v110);
              v93 = 0;
              v45 = v110 != 3 || FigCFDictionaryGetInt32IfPresent() == 0;
            }

            else
            {
              v45 = 1;
              v93 = 1;
            }

            FigCFDictionaryGetInt32IfPresent();
            v46 = CFDictionaryGetValue(a6, @"kFigAudioCompressionOption_UseHardwareEncoderIfPresent");
            v47 = MEMORY[0x1E695E4D0];
            if (v46)
            {
              v48 = v46;
              v49 = CFBooleanGetTypeID();
              v50 = CFGetTypeID(v48);
              v51 = *v47;
              v53 = v49 != v50 || v48 == v51;
            }

            else
            {
              v51 = *MEMORY[0x1E695E4D0];
              v53 = 1;
            }

            v56 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_TrimSampleBufferDurations");
            *(v21 + 225) = v56 == v51;
            if (v56 == v51)
            {
              *(v21 + 264) = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            }

            FigCFDictionaryGetInt32IfPresent();
            Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
            if (CFDictionaryGetValueIfPresent(a6, @"FigAudioCompressionOption_PreferredOutputBufferDuration", &value))
            {
              CMTimeMakeFromDictionary(&v102, value);
              *(v21 + 304) = v102;
            }

            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            v55 = Int32IfPresent == 0;
            v54 = v45;
            v37 = v92;
          }

          else
          {
            v54 = 1;
            v55 = 1;
            v53 = 1;
            v93 = 1;
          }

          if (findCodecs(outPropertyData.mFormatID, &v114 + 1, &v114))
          {
            FigSampleBufferProcessorCreateWithAudioCompression_cold_17();
          }

          else
          {
            inClassDescriptions.mType = 1634037347;
            inClassDescriptions.mSubType = outPropertyData.mFormatID;
            v58 = HIDWORD(v114);
            if (!v53 || HIDWORD(v114) == 0)
            {
              v58 = v114;
            }

            inClassDescriptions.mManufacturer = v58;
            if (AudioConverterNewSpecific(&inSourceFormat, &outPropertyData, 1u, &inClassDescriptions, (v21 + 64)))
            {
              FigSampleBufferProcessorCreateWithAudioCompression_cold_16();
            }

            else
            {
              if (!inPropertyData)
              {
                v59 = v25->mBitsPerChannel;
                inPropertyData = v59;
                if (v25->mFormatFlags)
                {
                  inPropertyData = -v59;
                }
              }

              AudioConverterSetProperty(*(v21 + 64), 0x61636264u, 4u, &inPropertyData);
              if (v94)
              {
                if (AudioConverterSetProperty(*(v21 + 64), 0x69636C20u, sizeOut, v94))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_15(&v102);
                  goto LABEL_221;
                }

                if ((v37 & 1) == 0 && AudioConverterSetProperty(*(v21 + 64), 0x6F636C20u, a4, a5))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_14(&v102);
                  goto LABEL_221;
                }
              }

              if (v112 < 1)
              {
                goto LABEL_230;
              }

              if (v111)
              {
                LODWORD(v102.value) = 0;
                if (!AudioConverterGetPropertyInfo(*(v21 + 64), 0x62727472u, &v102, 0))
                {
                  v60 = v55;
                  v61 = malloc_type_malloc(LODWORD(v102.value), 0x7D77F5FBuLL);
                  if (!AudioConverterGetProperty(*(v21 + 64), 0x62727472u, &v102, v61))
                  {
                    if (LODWORD(v102.value) >= 0x10)
                    {
                      v63 = LODWORD(v102.value) >> 4;
                      v64 = v61 + 1;
                      v62 = v112;
                      do
                      {
                        v65 = *v64;
                        v64 += 2;
                        v66 = v65;
                        if (v65 < v112)
                        {
                          v62 = v66;
                        }

                        --v63;
                      }

                      while (v63);
                    }

                    else
                    {
                      v62 = v112;
                    }

                    v112 = v62;
                  }

                  free(v61);
                  v55 = v60;
                }
              }

              if (AudioConverterSetProperty(*(v21 + 64), 0x62726174u, 4u, &v112))
              {
                FigSampleBufferProcessorCreateWithAudioCompression_cold_13(&v102);
              }

              else
              {
LABEL_230:
                if (HIDWORD(v110) && AudioConverterSetProperty(*(v21 + 64), 0x73726361u, 4u, &v110 + 4))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_12(&v102);
                }

                else
                {
                  if (v93)
                  {
LABEL_130:
                    Extension = CMFormatDescriptionGetExtension(*(v21 + 24), *MEMORY[0x1E69600A0]);
                    values = Extension;
                    if (!Extension)
                    {
                      goto LABEL_137;
                    }

                    v68 = v55;
                    v69 = CFGetTypeID(Extension);
                    if (v69 != CFDictionaryGetTypeID())
                    {
                      MutableCopy = 0;
                      v55 = v68;
                      goto LABEL_139;
                    }

                    v55 = v68;
                    if (CFDictionaryGetCount(values) >= 1)
                    {
                      if (!FigAudioFormatDescriptionGetCinematicAudioEffectEligibility() || FigAudioChannelLayoutIsSupportedForCinematicAudio() && v103 == 2)
                      {
                        MutableCopy = 0;
                      }

                      else
                      {
                        CFGetAllocator(values);
                        MutableCopy = FigCFDictionaryCreateMutableCopy();
                        CFDictionaryRemoveValue(MutableCopy, @"ngst");
                        values = MutableCopy;
                      }

                      if (!AudioConverterGetPropertyInfo(*(v21 + 64), 0x69736F65u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize && outWritable[0] && !AudioConverterSetProperty(*(v21 + 64), 0x69736F65u, 8u, &values))
                      {
                        values = 0;
                      }
                    }

                    else
                    {
LABEL_137:
                      MutableCopy = 0;
                    }

LABEL_139:
                    if (!v55 && AudioConverterSetProperty(*(v21 + 64), 0x63647175u, 4u, &v109))
                    {
                      FigSampleBufferProcessorCreateWithAudioCompression_cold_9(&v102);
                    }

                    else
                    {
                      if (outWritable[1])
                      {
                        if (inSourceFormat.mChannelsPerFrame <= outPropertyData.mChannelsPerFrame)
                        {
                          if (inSourceFormat.mChannelsPerFrame == 1)
                          {
                            v72 = malloc_type_calloc(outPropertyData.mChannelsPerFrame, 4uLL, 0x100004052888210uLL);
                            value_low = AudioConverterSetProperty(*(v21 + 64), 0x63686D70u, 4 * outPropertyData.mChannelsPerFrame, v72);
                            free(v72);
                            if (value_low)
                            {
                              FigSampleBufferProcessorCreateWithAudioCompression_cold_1();
                              goto LABEL_227;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(value) = 1;
                          v70 = AudioConverterSetProperty(*(v21 + 64), 0x646D6978u, 4u, &value);
                          if (v70)
                          {
                            value_low = v70;
                            FigSampleBufferProcessorCreateWithAudioCompression_cold_2();
                            goto LABEL_227;
                          }

                          v100 = 0;
                          v102.value = 0;
                          v71 = facCopyMixMapForInputs(inSourceFormat.mChannelsPerFrame, v94, sizeOut, outPropertyData.mChannelsPerFrame, a5, &v102, &v100);
                          if (v71)
                          {
                            value_low = v71;
                            goto LABEL_227;
                          }

                          value_low = AudioConverterSetProperty(*(v21 + 64), 0x6D6D6170u, v100, v102.value);
                          free(v102.value);
                          if (value_low)
                          {
                            FigSampleBufferProcessorCreateWithAudioCompression_cold_3();
LABEL_227:
                            v17 = 0;
LABEL_4:
                            if (v120)
                            {
                              CFRelease(v120);
                            }

                            if (!v17)
                            {
                              goto LABEL_8;
                            }

                            goto LABEL_7;
                          }
                        }
                      }

                      ioPropertyDataSize = 40;
                      if (!AudioConverterGetProperty(*(v21 + 64), 0x61636F64u, &ioPropertyDataSize, &outPropertyData))
                      {
                        ioPropertyDataSize = 0;
                        outWritable[0] = 0;
                        if (!AudioConverterGetPropertyInfo(*(v21 + 64), 0x67707072u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 1 && outWritable[0])
                        {
                          LOBYTE(v102.value) = 0;
                          ioPropertyDataSize = 1;
                          AudioConverterSetProperty(*(v21 + 64), 0x67707072u, 1u, &v102);
                        }

                        v17 = 0;
                        if (AudioConverterGetPropertyInfo(*(v21 + 64), 0x636D6763u, &ioPropertyDataSize, 0))
                        {
                          v73 = 0;
                        }

                        else
                        {
                          v73 = 0;
                          if (ioPropertyDataSize)
                          {
                            v17 = malloc_type_malloc(ioPropertyDataSize, 0xC686E1B4uLL);
                            if (AudioConverterGetProperty(*(v21 + 64), 0x636D6763u, &ioPropertyDataSize, v17))
                            {
                              FigSampleBufferProcessorCreateWithAudioCompression_cold_7();
                              goto LABEL_222;
                            }

                            v73 = ioPropertyDataSize;
                          }
                        }

                        if (values)
                        {
                          v74 = v73;
                          v75 = CFDictionaryCreate(a1, MEMORY[0x1E69600A0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          v73 = v74;
                          v76 = v75;
                        }

                        else
                        {
                          v76 = 0;
                        }

                        if (v95)
                        {
                          v77 = a4;
                        }

                        else
                        {
                          v77 = 0;
                        }

                        if (v95)
                        {
                          v78 = a5;
                        }

                        else
                        {
                          v78 = 0;
                        }

                        v79 = CMAudioFormatDescriptionCreate(a1, &outPropertyData, v77, v78, v73, v17, v76, (v21 + 32));
                        if (v76)
                        {
                          CFRelease(v76);
                        }

                        if (v79)
                        {
                          FigSampleBufferProcessorCreateWithAudioCompression_cold_5();
                        }

                        else
                        {
                          v80 = FigAudioFormatDescriptionEmploysDependentPackets();
                          *(v21 + 164) = v80;
                          *(v21 + 168) = 0;
                          if (v80)
                          {
                            if (!AudioConverterGetPropertyInfo(*(v21 + 64), 0x61737066u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                            {
                              AudioConverterSetProperty(*(v21 + 64), 0x61737066u, 4u, &v105);
                            }

                            if (!AudioConverterGetPropertyInfo(*(v21 + 64), 0x63647263u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                            {
                              AudioConverterSetProperty(*(v21 + 64), 0x63647263u, 4u, &v104);
                            }

                            if (v103 != -1 && !AudioConverterGetPropertyInfo(*(v21 + 64), 0x63737263u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                            {
                              AudioConverterSetProperty(*(v21 + 64), 0x63737263u, 4u, &v103);
                            }
                          }

                          if (outPropertyData.mBytesPerPacket || (ioPropertyDataSize = 4, !AudioConverterGetProperty(*(v21 + 64), 0x70616B62u, &ioPropertyDataSize, (v21 + 40))))
                          {
                            ioPropertyDataSize = 8;
                            if (AudioConverterGetProperty(*(v21 + 64), 0x6877727Au, &ioPropertyDataSize, (v21 + 72)))
                            {
                              *(v21 + 72) = 0;
                            }

                            if ((v25->mFormatFlags & 0x20) != 0)
                            {
                              v82 = 16 * (v25->mChannelsPerFrame - 1) + 24;
                              *(v21 + 112) = v82;
                              v83 = malloc_type_calloc(1uLL, v82, 0x10800404ACF7207uLL);
                              *(v21 + 104) = v83;
                              if (v83)
                              {
                                v84 = v25->mChannelsPerFrame;
                                *v83 = v84;
                                if (v84)
                                {
                                  v85 = (v84 + 3) & 0x1FFFFFFFCLL;
                                  v86 = vdupq_n_s64(v84 - 1);
                                  v87 = xmmword_196E73080;
                                  v88 = xmmword_196E73090;
                                  v89 = v83 + 10;
                                  v90 = vdupq_n_s64(4uLL);
                                  v30 = allocator;
                                  do
                                  {
                                    v91 = vmovn_s64(vcgeq_u64(v86, v88));
                                    if (vuzp1_s16(v91, *v86.i8).u8[0])
                                    {
                                      *(v89 - 8) = 1;
                                    }

                                    if (vuzp1_s16(v91, *&v86).i8[2])
                                    {
                                      *(v89 - 4) = 1;
                                    }

                                    if (vuzp1_s16(*&v86, vmovn_s64(vcgeq_u64(v86, *&v87))).i32[1])
                                    {
                                      *v89 = 1;
                                      v89[4] = 1;
                                    }

                                    v87 = vaddq_s64(v87, v90);
                                    v88 = vaddq_s64(v88, v90);
                                    v89 += 16;
                                    v85 -= 4;
                                  }

                                  while (v85);
                                  goto LABEL_29;
                                }
                              }
                            }

                            else
                            {
                              *(v21 + 112) = 24;
                              v81 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
                              *(v21 + 104) = v81;
                              if (v81)
                              {
                                *v81 = 1;
                                v81[2] = v25->mChannelsPerFrame;
                              }
                            }

LABEL_28:
                            v30 = allocator;
LABEL_29:
                            if (*(v21 + 164) || (GDRCountForFormatID = getGDRCountForFormatID(*(v21 + 64), *(v21 + 32), (v21 + 224)), valuePtr = GDRCountForFormatID, !GDRCountForFormatID) || (v35 = CFNumberCreate(v30, kCFNumberSInt16Type, &valuePtr), (*(v21 + 216) = v35) != 0))
                            {
                              if (*(v21 + 225))
                              {
                                *(v21 + 228) = CMAudioFormatDescriptionGetMostCompatibleFormat(*(v21 + 32))->mASBD.mSampleRate;
                              }

                              if (cf)
                              {
                                *(v21 + 280) = cf;
                                CFRetain(cf);
                              }

                              value_low = 0;
                              *a8 = v120;
                              v120 = 0;
                              if (!v17)
                              {
                                goto LABEL_8;
                              }

LABEL_7:
                              free(v17);
LABEL_8:
                              if (MutableCopy)
                              {
                                CFRelease(MutableCopy);
                              }

                              return value_low;
                            }

                            FigSampleBufferProcessorCreateWithAudioCompression_cold_4(&v102);
                            goto LABEL_222;
                          }

                          FigSampleBufferProcessorCreateWithAudioCompression_cold_6();
                        }

LABEL_222:
                        value_low = LODWORD(v102.value);
                        goto LABEL_4;
                      }

                      FigSampleBufferProcessorCreateWithAudioCompression_cold_8();
                    }

                    v17 = 0;
                    goto LABEL_222;
                  }

                  if (!AudioConverterSetProperty(*(v21 + 64), 0x61636266u, 4u, &v110))
                  {
                    if ((v54 & 1) == 0 && AudioConverterSetProperty(*(v21 + 64), 0x76627271u, 4u, &v109 + 4))
                    {
                      FigSampleBufferProcessorCreateWithAudioCompression_cold_10(&v102);
                      goto LABEL_221;
                    }

                    goto LABEL_130;
                  }

                  FigSampleBufferProcessorCreateWithAudioCompression_cold_11(&v102);
                }
              }
            }
          }

LABEL_221:
          v17 = 0;
          MutableCopy = 0;
          goto LABEL_222;
        }

        v37 = 0;
      }
    }

    v38 = 1;
    goto LABEL_71;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sbp_fac_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 48) = a2;
  *(DerivedStorage + 56) = a3;
  return 0;
}

uint64_t FigMediaProcessorGo(uint64_t a1)
{
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(a1 + 73) = 1;
    FigMemoryBarrier();
    v3 = *(a1 + 64);
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {
      v4(v3);
    }

    return 0;
  }
}

uint64_t mediaprocessor_ProcessUntilHighWaterMet(uint64_t a1)
{
  valuePtr = 0;
  FigSimpleMutexLock();
  if (*(a1 + 73))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    do
    {
      v5 = *(a1 + 40);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6 && v6(v5))
      {
        break;
      }

      v13 = 0;
      v7 = mediaprocessor_DequeueAndProcessSampleBuffer(a1, &v13);
      valuePtr = v7;
      if (v13)
      {
        break;
      }

      if (v7)
      {
        cf = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
        if (cf)
        {
          v8 = CFGetAllocator(a1);
          v9 = CFDictionaryCreate(v8, kFigMediaProcessorParameter_Result, &cf, 1, v3, v4);
          if (v9)
          {
            v10 = v9;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            CFRelease(v10);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }

    while (*(a1 + 73));
  }

  return FigSimpleMutexUnlock();
}

uint64_t otfw_isQueueAtOrAboveHighWater()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = **&MEMORY[0x1E6960C70];
  result = *(DerivedStorage + 16);
  if (result)
  {
    CMBufferQueueGetDuration(&v4, result);
    time1 = v4;
    v2 = *(DerivedStorage + 24);
    if (CMTimeCompare(&time1, &v2) < 0)
    {
      return *(DerivedStorage + 48) && CMBufferQueueGetTotalSize(*(DerivedStorage + 16)) >= *(DerivedStorage + 48);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t FigMediaProcessorIsAtEndOfOutputData(uint64_t a1)
{
  result = FigMediaProcessorIsAtEndOfInputData(a1);
  if (result)
  {
    return *(a1 + 89) != 0;
  }

  return result;
}

uint64_t figMovieWriter_BeginSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 335) || (v4 = DerivedStorage, Count = CFArrayGetCount(*(DerivedStorage + 488)), (*(v4 + 36) & 1) != 0))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v6 = Count;
    if (Count < 1)
    {
LABEL_7:
      result = 0;
      *(v4 + 504) = *(v4 + 496);
      v10 = *(a2 + 16);
      *(v4 + 24) = *a2;
      *(v4 + 40) = v10;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 488), v7);
        v11 = *a2;
        v12 = *(a2 + 16);
        result = trackBeginSession(ValueAtIndex, &v11, 1);
        if (result)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

double getMediaDecodeDuration@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  Count = CFArrayGetCount(*(a1 + 424));
  v5 = MEMORY[0x1E6960CC0];
  v6 = *MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v5 + 16);
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 424), Count - 1);
    lhs = *(ValueAtIndex + 248);
    rhs = *(ValueAtIndex + 176);
    CMTimeAdd(a2, &lhs, &rhs);
  }

  if (*(a1 + 480))
  {
    rhs = *(a1 + 136);
    v8 = *(a1 + 104);
    if (v8)
    {
      lhs = *(a1 + 136);
      CMTimeConvertScale(&rhs, &lhs, v8, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    }

    v11 = *a2;
    v10 = rhs;
    CMTimeAdd(&lhs, &v11, &v10);
    *&v6 = lhs.value;
    *a2 = lhs;
  }

  return *&v6;
}

uint64_t mediaprocessor_TriggerSchedulingIfOutputIsLow(uint64_t a1)
{
  v2 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 24);
  if (v6)
  {
    result = v6(v2);
    if (result)
    {
      v7 = *(a1 + 64);
      v8 = CMBaseObjectGetVTable();
      v9 = *(v8 + 16);
      result = v8 + 16;
      v10 = *(v9 + 16);
      if (v10)
      {

        return v10(v7);
      }
    }
  }

  return result;
}

BOOL otfw_isQueueBelowLowWater()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v5, 0, sizeof(v5));
  v1 = *(DerivedStorage + 16);
  if (!v1)
  {
    return 1;
  }

  CMBufferQueueGetDuration(&v5, v1);
  time1 = v5;
  v3 = *(DerivedStorage + 56);
  if (CMTimeCompare(&time1, &v3) > 0)
  {
    return 0;
  }

  return !*(DerivedStorage + 80) || CMBufferQueueGetTotalSize(*(DerivedStorage + 16)) < *(DerivedStorage + 80);
}

uint64_t sbp_vtcs_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v4 = v3;
  v115 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  memset(&v101, 0, sizeof(v101));
  CMSampleBufferGetPresentationTimeStamp(&v101, a2);
  v9 = MEMORY[0x1E695E480];
  if (ImageBuffer)
  {
    goto LABEL_7;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v12 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, MediaSubType);
  if (!v12 || (CFRelease(v12), *&propertyValueOut = 0, v109.value = 0, totalLengthOut = 0, v13 = *MEMORY[0x1E69660D8], values = 0, keys = v13, !a2))
  {
    ImageBuffer = 0;
    goto LABEL_7;
  }

  v14 = CMSampleBufferGetImageBuffer(a2);
  *lhs = v14;
  if (v14)
  {
    ImageBuffer = v14;
    CVBufferRetain(v14);
    goto LABEL_7;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (!DataBuffer || (v54 = DataBuffer, !CMBlockBufferGetDataLength(DataBuffer)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM();
LABEL_113:
    OUTLINED_FUNCTION_2_101();
    goto LABEL_103;
  }

  v55 = *v9;
  if (CMBlockBufferCreateContiguous(*v9, v54, *v9, 0, 0, 0, 0, &propertyValueOut))
  {
    goto LABEL_113;
  }

  v100 = TaggedBufferGroup;
  if (CMBlockBufferGetDataPointer(propertyValueOut, 0, 0, &totalLengthOut, &v109))
  {
    goto LABEL_113;
  }

  ImageBuffer = CMSampleBufferGetFormatDescription(a2);
  Dimensions = CMVideoFormatDescriptionGetDimensions(ImageBuffer);
  v2 = CMFormatDescriptionGetMediaSubType(ImageBuffer);
  Extension = CMFormatDescriptionGetExtension(ImageBuffer, *MEMORY[0x1E6960008]);
  if (Extension && (v58 = Extension, v59 = CFGetTypeID(Extension), v59 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(v58, kCFNumberCFIndexType, &valuePtr);
    v60 = valuePtr;
    if (valuePtr < 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM();
      OUTLINED_FUNCTION_2_101();
LABEL_116:
      TaggedBufferGroup = v100;
      v9 = MEMORY[0x1E695E480];
      goto LABEL_103;
    }
  }

  else if (HIDWORD(*&Dimensions))
  {
    v60 = totalLengthOut / (*&Dimensions >> 32);
  }

  else
  {
    v60 = 0;
  }

  v61 = MEMORY[0x1E695E9D8];
  v62 = MEMORY[0x1E695E9E8];
  values = CFDictionaryCreate(v55, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreate(v55, &keys, &values, 1, v61, v62);
  v63 = CVPixelBufferCreateWithBytes(v55, Dimensions.width, *&Dimensions >> 32, v2, v109.value, v60, sbp_vtcs_releaseCMBlockBuffer, propertyValueOut, v4, lhs);
  if (v63)
  {
    v2 = v63;
    ImageBuffer = 0;
    goto LABEL_116;
  }

  *&propertyValueOut = 0;
  v64 = CMCopyDictionaryOfAttachments(v55, a2, 0);
  TaggedBufferGroup = v100;
  v9 = MEMORY[0x1E695E480];
  if (v64)
  {
    v65 = v64;
    v66 = OUTLINED_FUNCTION_3_79();
    CVBufferSetAttachments(v66, v67, kCVAttachmentMode_ShouldNotPropagate);
    CFRelease(v65);
  }

  v68 = CMCopyDictionaryOfAttachments(v55, a2, 1u);
  if (v68)
  {
    v69 = v68;
    v70 = OUTLINED_FUNCTION_3_79();
    CVBufferSetAttachments(v70, v71, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v69);
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965D88]))
  {
    v72 = OUTLINED_FUNCTION_104_0();
    v74 = CMFormatDescriptionGetExtension(v72, v73);
    if (v74)
    {
      v75 = v74;
      v76 = CFGetTypeID(v74);
      if (v76 == CFStringGetTypeID())
      {
        v77 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v77, v78, v75, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965F30]))
  {
    v79 = OUTLINED_FUNCTION_104_0();
    v81 = CMFormatDescriptionGetExtension(v79, v80);
    if (v81)
    {
      v82 = v81;
      v83 = CFGetTypeID(v81);
      if (v83 == CFStringGetTypeID())
      {
        v84 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v84, v85, v82, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965F98]))
  {
    v86 = OUTLINED_FUNCTION_104_0();
    v88 = CMFormatDescriptionGetExtension(v86, v87);
    if (v88)
    {
      v89 = v88;
      v90 = CFGetTypeID(v88);
      if (v90 == CFStringGetTypeID())
      {
        v91 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v91, v92, v89, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  v2 = 0;
  ImageBuffer = *lhs;
LABEL_103:
  if (values)
  {
    CFRelease(values);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v2)
  {
    return v2;
  }

LABEL_7:
  if (*(DerivedStorage + 34))
  {
    if (!*(DerivedStorage + 35))
    {
      v15 = CMSampleBufferGetFormatDescription(a2);
      if (v15)
      {
        v16 = v15;
        v100 = TaggedBufferGroup;
        v17 = 0;
        v18 = *(DerivedStorage + 16);
        v19 = *MEMORY[0x1E69838B8];
        v20 = v9;
        v21 = *MEMORY[0x1E69835B0];
        *lhs = *MEMORY[0x1E69838B8];
        *&lhs[8] = v21;
        propertyKey = *MEMORY[0x1E6983878];
        v99 = *MEMORY[0x1E69836A8];
        *&lhs[16] = *MEMORY[0x1E6983878];
        *&lhs[24] = v99;
        v22 = *v20;
        while (1)
        {
          *&propertyValueOut = 0;
          VTSessionCopyProperty(v18, *&lhs[v17], v22, &propertyValueOut);
          if (propertyValueOut)
          {
            CFRelease(propertyValueOut);
            if (propertyValueOut)
            {
              break;
            }
          }

          v17 += 8;
          if (v17 == 32)
          {
            Extensions = CMFormatDescriptionGetExtensions(v16);
            if (Extensions)
            {
              v24 = Extensions;
              Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F98]);
              if (Value)
              {
                VTSessionSetProperty(v18, v19, Value);
              }

              v26 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965D88]);
              v27 = MEMORY[0x1E6965F30];
              if (v26)
              {
                VTSessionSetProperty(v18, v21, v26);
              }

              v28 = CFDictionaryGetValue(v24, *v27);
              if (v28)
              {
                v29 = v28;
                VTSessionSetProperty(v18, propertyKey, v28);
                if (CFEqual(v29, *MEMORY[0x1E6965F80]))
                {
                  v30 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965E80]);
                  if (v30)
                  {
                    VTSessionSetProperty(v18, *MEMORY[0x1E6983660], v30);
                  }
                }
              }

              v31 = CFDictionaryGetValue(v24, *MEMORY[0x1E6960070]);
              if (v31)
              {
                VTSessionSetProperty(v18, v99, v31);
              }
            }

            break;
          }
        }

        *(DerivedStorage + 35) = 1;
        TaggedBufferGroup = v100;
        v9 = MEMORY[0x1E695E480];
      }
    }
  }

  if (*(DerivedStorage + 36) && !*(DerivedStorage + 37) && ImageBuffer)
  {
    v109.value = 0;
    totalLengthOut = 0;
    v32 = *MEMORY[0x1E69835A0];
    VTSessionCopyProperty(*(DerivedStorage + 16), *MEMORY[0x1E69835A0], *v9, &totalLengthOut);
    v33 = totalLengthOut;
    if (totalLengthOut)
    {
      goto LABEL_73;
    }

    if (!sbp_CVBufferAttachmentEmpty(ImageBuffer, *MEMORY[0x1E6965D70]))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
      *lhs = 0uLL;
      v51.f64[0] = NAN;
      v51.f64[1] = NAN;
      *&lhs[16] = vnegq_f64(v51);
      v113 = 0;
      v114 = 0;
      propertyValueOut = 0uLL;
      v106 = *&lhs[16];
      v107 = 0;
      v108 = 0;
      v94 = 0;
      v95 = 0;
      v96 = &v109;
      v97 = 0;
      pixelBufferAttributes = PixelFormatType;
      OUTLINED_FUNCTION_104_0();
      VTPixelTransferSessionCreateScalingParameters();
      if (v109.value)
      {
        v52 = CFGetTypeID(v109.value);
        if (v52 == CFDictionaryGetTypeID())
        {
          VTSessionSetProperty(*(DerivedStorage + 16), v32, v109.value);
        }

        v33 = v109.value;
        if (v109.value)
        {
LABEL_73:
          CFRelease(v33);
        }
      }
    }

    *(DerivedStorage + 37) = 1;
  }

  v34 = CMGetAttachment(a2, *MEMORY[0x1E69604E0], 0);
  v35 = *MEMORY[0x1E695E4D0];
  if (v34 == *MEMORY[0x1E695E4D0])
  {
    *(DerivedStorage + 32) = 1;
  }

  if (CMGetAttachment(a2, *MEMORY[0x1E6960508], 0) == v35)
  {
    *(DerivedStorage + 33) = 1;
  }

  if (CMGetAttachment(a2, *MEMORY[0x1E69604D8], 0) == v35)
  {
    *(DerivedStorage + 38) = 1;
  }

  if (!(ImageBuffer | TaggedBufferGroup))
  {
    return 0;
  }

  totalLengthOut = v101.value;
  timescale = v101.timescale;
  if (*(DerivedStorage + 84) & 1) != 0 && (*(DerivedStorage + 60))
  {
    flags = v101.flags;
    if (v101.flags)
    {
      epoch = v101.epoch;
      if ((*(DerivedStorage + 108) & 1) == 0)
      {
        OUTLINED_FUNCTION_4_83(v101.timescale, pixelBufferAttributes, v94, v95, v96, v97, propertyKey, v99, v100, v101.value, *&v101.timescale, v101.epoch, valuePtr, values, keys, v101.value, SDWORD2(propertyValueOut), SHIDWORD(propertyValueOut), v106);
        OUTLINED_FUNCTION_6_67();
      }

      memset(&v109, 0, sizeof(v109));
      *lhs = totalLengthOut;
      *&lhs[8] = __PAIR64__(flags, timescale);
      *&lhs[16] = epoch;
      propertyValueOut = *(DerivedStorage + 48);
      *&v106 = *(DerivedStorage + 64);
      CMTimeSubtract(&v109, lhs, &propertyValueOut);
      *lhs = *(DerivedStorage + 96);
      *&lhs[16] = *(DerivedStorage + 112);
      propertyValueOut = *&v109.value;
      *&v106 = v109.epoch;
      if (CMTimeCompare(lhs, &propertyValueOut) <= 0)
      {
        OUTLINED_FUNCTION_4_83(timescale, pixelBufferAttributes, v94, v95, v96, v97, propertyKey, v99, v100, v101.value, *&v101.timescale, v101.epoch, valuePtr, values, keys, totalLengthOut, SDWORD2(propertyValueOut), SHIDWORD(propertyValueOut), v106);
        OUTLINED_FUNCTION_6_67();
        goto LABEL_49;
      }
    }
  }

  v38 = *(DerivedStorage + 32);
  if (*(DerivedStorage + 32))
  {
LABEL_49:
    v39 = v9;
    v40 = 0;
    *(DerivedStorage + 32) = 0;
    v38 = 1;
    goto LABEL_50;
  }

  v39 = v9;
  v40 = 1;
LABEL_50:
  v41 = *(DerivedStorage + 33);
  if (*(DerivedStorage + 33))
  {
    *(DerivedStorage + 33) = 0;
  }

  v42 = *(DerivedStorage + 38);
  if (*(DerivedStorage + 38))
  {
    *(DerivedStorage + 38) = 0;
  }

  if ((((v42 | v41) == 0) & ~v38) != 0)
  {
    v44 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v39, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294954510;
    }

    v44 = Mutable;
    if ((v40 & 1) == 0)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983BD8], v35);
    }

    if (v41)
    {
      CFDictionarySetValue(v44, *MEMORY[0x1E6983C40], v35);
    }

    if (v42)
    {
      CFDictionarySetValue(v44, *MEMORY[0x1E6983BB8], v35);
    }
  }

  CMSampleBufferGetDuration(lhs, a2);
  v45 = OUTLINED_FUNCTION_0_116();
  if (ImageBuffer)
  {
    v48 = VTCompressionSessionEncodeFrame(v45, ImageBuffer, v46, v47, v44, 0, 0);
  }

  else
  {
    v48 = VTCompressionSessionEncodeMultiImageFrame(v45, TaggedBufferGroup, v46, v47, v44, 0, 0);
  }

  v2 = v48;
  if (v44)
  {
    CFRelease(v44);
  }

  return v2;
}

uint64_t sbp_fac_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CMSampleBufferGetNumSamples(a2))
  {
    return 0;
  }

  if (*(DerivedStorage + 196) == 2)
  {
    v4 = *(DerivedStorage + 64);
    if (v4)
    {
      AudioConverterReset(v4);
    }

    *(DerivedStorage + 196) = 0;
    *(DerivedStorage + 200) = 0;
    v5 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 208) = 0;
    *(DerivedStorage + 232) = *v5;
    *(DerivedStorage + 248) = *(v5 + 16);
    *(DerivedStorage + 144) = 0;
  }

  if (*(DerivedStorage + 17))
  {
    v6 = *(DerivedStorage + 48);
    if (v6)
    {
      v6(*(DerivedStorage + 56), 0, a2);
    }

    return 0;
  }

  return RunConverter(DerivedStorage, a2);
}

uint64_t RunConverter(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  result = acquireHardware(a1);
  if (result)
  {
    return result;
  }

  if (!CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 24)))
  {
    return 4294954516;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 32));
  if (!StreamBasicDescription)
  {
    return 4294954516;
  }

  v6 = StreamBasicDescription;
  *(a1 + 88) = a2;
  if (StreamBasicDescription->mFramesPerPacket && (mSampleRate = StreamBasicDescription->mSampleRate, time = *(a1 + 304), Seconds = CMTimeGetSeconds(&time), LODWORD(v9) = v6->mFramesPerPacket, v10 = (mSampleRate * Seconds / v9), (ioOutputDataPacketSize = v10) != 0))
  {
    if (v10 < 0x81 || v6->mFormatID == 1819304813)
    {
      goto LABEL_13;
    }

    v11 = 128;
  }

  else
  {
    v11 = 1;
  }

  ioOutputDataPacketSize = v11;
LABEL_13:
  blockAllocator = *MEMORY[0x1E695E488];
  key = *MEMORY[0x1E69604E8];
  v54 = *MEMORY[0x1E69604F0];
  allocator = *MEMORY[0x1E695E480];
  v56 = *MEMORY[0x1E6960560];
  v12 = MEMORY[0x1E6960CC0];
  while (1)
  {
    memset(&outOutputData, 0, sizeof(outOutputData));
    dataPointerOut = 0;
    theBuffer = 0;
    mBytesPerPacket = *(a1 + 40);
    if (!mBytesPerPacket)
    {
      mBytesPerPacket = v6->mBytesPerPacket;
    }

    v14 = ioOutputDataPacketSize * mBytesPerPacket;
    DataPointer = CMBlockBufferCreateWithMemoryBlock(*(a1 + 280), 0, v14, blockAllocator, 0, 0, v14, 1u, &theBuffer);
    if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut), DataPointer))
    {
      v18 = DataPointer;
      goto LABEL_98;
    }

    mChannelsPerFrame = v6->mChannelsPerFrame;
    outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = mChannelsPerFrame;
    outOutputData.mBuffers[0].mDataByteSize = v14;
    outOutputData.mBuffers[0].mData = dataPointerOut;
    if ((!v6->mBytesPerPacket || !v6->mFramesPerPacket) && ioOutputDataPacketSize > *(a1 + 160))
    {
      free(*(a1 + 152));
      *(a1 + 152) = malloc_type_malloc(16 * ioOutputDataPacketSize, 0x1000040451B5BE8uLL);
      *(a1 + 160) = ioOutputDataPacketSize;
      if (!*(a1 + 164))
      {
        goto LABEL_25;
      }

      free(*(a1 + 168));
      *(a1 + 168) = malloc_type_malloc(16 * ioOutputDataPacketSize, 0x1000040451B5BE8uLL);
    }

    if (!*(a1 + 164))
    {
LABEL_25:
      v17 = AudioConverterFillComplexBuffer(*(a1 + 64), facEncoderInputProc, a1, &ioOutputDataPacketSize, &outOutputData, *(a1 + 152));
      goto LABEL_26;
    }

    v17 = AudioConverterFillComplexBufferWithPacketDependencyInfo();
LABEL_26:
    v18 = v17;
    if (v17 && v17 != 3)
    {
      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      goto LABEL_98;
    }

    v19 = ioOutputDataPacketSize;
    v20 = theBuffer;
    if (!ioOutputDataPacketSize)
    {
      break;
    }

    v21 = *(a1 + 152);
    v22 = *(a1 + 168);
    *v72 = 0;
    memset(&time1, 0, sizeof(time1));
    sbuf = 0;
    dataBuffer = 0;
    if (*(a1 + 225) && ((*(a1 + 244) & 1) != 0 || ((outPropertyData.value = 0, ioPropertyDataSize = 8, !AudioConverterGetProperty(*(a1 + 64), 0x7072696Du, &ioPropertyDataSize, &outPropertyData)) ? (CMTimeMake(&time, LODWORD(outPropertyData.value), *(a1 + 228)), *(a1 + 232) = time, lhs = *(a1 + 120), rhs = *(a1 + 232), CMTimeSubtract(&time, &lhs, &rhs), *(a1 + 120) = time, *(a1 + 256) = 1) : (*(a1 + 232) = *&v12->value, *(a1 + 248) = v12->epoch), *(a1 + 225))) && *(a1 + 232))
    {
      time = *(a1 + 232);
      lhs = *v12;
      v23 = CMTimeCompare(&time, &lhs) > 0;
    }

    else
    {
      v23 = 0;
    }

    CMTimeMake(&time, v6->mFramesPerPacket, v6->mSampleRate);
    v73.duration = time;
    v73.presentationTimeStamp = *(a1 + 120);
    v73.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    CMTimeMake(&time1, (v6->mFramesPerPacket * v19), v6->mSampleRate);
    lhs = *(a1 + 120);
    rhs = time1;
    CMTimeAdd(&time, &lhs, &rhs);
    *(a1 + 120) = time;
    if (v21)
    {
      v24 = 0;
      v25 = (v21 + 12);
      p_time = &time;
      v27 = v19;
      do
      {
        v28 = *v25;
        v25 += 4;
        p_time->value = v28;
        p_time = (p_time + 8);
        v24 += v28;
        --v27;
      }

      while (v27);
    }

    else
    {
      *v72 = v6->mBytesPerPacket;
      v24 = v72[0] * v19;
    }

    if (!CMBlockBufferCreateWithBufferReference(*(a1 + 280), v20, 0, v24, 0, &dataBuffer))
    {
      if (v21)
      {
        v31 = v19;
      }

      else
      {
        v31 = 1;
      }

      sampleSizeArray = &time;
      if (!v21)
      {
        sampleSizeArray = v72;
      }

      if (CMSampleBufferCreate(*(a1 + 280), dataBuffer, 1u, 0, 0, *(a1 + 32), v19, 1, &v73, v31, sampleSizeArray, &sbuf))
      {
        if (dataBuffer)
        {
          CFRelease(dataBuffer);
        }

        goto LABEL_48;
      }

      if (!v22 && *(a1 + 164))
      {
        RunConverter_cold_1();
        v29 = 0;
        v12 = MEMORY[0x1E6960CC0];
      }

      else
      {
        if (v22)
        {
          if (*(a1 + 164))
          {
            SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
            Count = CFArrayGetCount(SampleAttachmentsArray);
            if (Count >= 1)
            {
              v35 = Count;
              v36 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v36);
                lhs.value = 0;
                if (FigAudioStreamPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary() || !FigCFDictionaryGetCount())
                {
                  break;
                }

                CFDictionaryApplyFunction(lhs.value, appendAttributesToDictionary_0, ValueAtIndex);
                if (lhs.value)
                {
                  CFRelease(lhs.value);
                }

                ++v36;
                v22 += 16;
                if (v35 == v36)
                {
                  goto LABEL_79;
                }
              }

              if (lhs.value)
              {
                CFRelease(lhs.value);
              }

              v29 = 0;
              v12 = MEMORY[0x1E6960CC0];
              goto LABEL_49;
            }
          }
        }

LABEL_79:
        v38 = *(a1 + 216);
        if (v38 && *(a1 + 225) && !*(a1 + 164))
        {
          CMSetAttachment(sbuf, key, v38, 1u);
          if (!*(a1 + 256) || (v39 = MEMORY[0x1E695E4D0], !*(a1 + 224)))
          {
            v39 = MEMORY[0x1E695E4C0];
          }

          CMSetAttachment(sbuf, v54, *v39, 1u);
        }

        v12 = MEMORY[0x1E6960CC0];
        if (!v23)
        {
          goto LABEL_89;
        }

        memset(&v65, 0, sizeof(v65));
        lhs = time1;
        rhs = *(a1 + 232);
        CMTimeMinimum(&v65, &lhs, &rhs);
        rhs = *(a1 + 232);
        outPropertyData = v65;
        CMTimeSubtract(&lhs, &rhs, &outPropertyData);
        *(a1 + 232) = lhs;
        lhs = v65;
        v40 = CMTimeCopyAsDictionary(&lhs, allocator);
        if (v40)
        {
          v41 = v40;
          CMSetAttachment(sbuf, v56, v40, 1u);
          CFRelease(v41);
LABEL_89:
          v29 = sbuf;
          goto LABEL_90;
        }

        RunConverter_cold_2();
        v29 = 0;
      }

LABEL_90:
      if (dataBuffer)
      {
        CFRelease(dataBuffer);
      }

      goto LABEL_49;
    }

LABEL_48:
    v29 = 0;
LABEL_49:
    if (*(a1 + 196) == 1 && *(a1 + 225))
    {
      CFArrayAppendValue(*(a1 + 264), v29);
    }

    else
    {
      v30 = *(a1 + 48);
      if (v30)
      {
        v30(*(a1 + 56), 0, v29);
      }
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

LABEL_58:
    if (v18 == 3)
    {
      return 0;
    }
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (*(a1 + 196) != 1)
  {
    goto LABEL_58;
  }

  if (*(a1 + 225))
  {
    outPropertyData.value = 0;
    v72[0] = 8;
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    v47 = CFArrayGetCount(*(a1 + 264));
    if (!AudioConverterGetProperty(*(a1 + 64), 0x7072696Du, v72, &outPropertyData) && HIDWORD(outPropertyData.value))
    {
      CMTimeMake(&time, HIDWORD(outPropertyData.value), *(a1 + 228));
      value = time.value;
      timescale = time.timescale;
      flags = time.flags;
      epoch = time.epoch;
    }

    if (flags)
    {
      if (v47 >= 1)
      {
        blockAllocatora = *MEMORY[0x1E6960558];
        v48 = v47 + 1;
        while (1)
        {
          v49 = CFArrayGetValueAtIndex(*(a1 + 264), v48 - 2);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetDuration(&time, v49);
          memset(&v73, 0, 24);
          time1 = time;
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          CMTimeMinimum(&v73.duration, &time1, &lhs);
          time1 = v73.duration;
          v50 = CMTimeCopyAsDictionary(&time1, allocator);
          if (!v50)
          {
            break;
          }

          v51 = v50;
          CMSetAttachment(v49, blockAllocatora, v50, 1u);
          CFRelease(v51);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = v73.duration;
          CMTimeSubtract(&time1, &lhs, &rhs);
          value = time1.value;
          timescale = time1.timescale;
          flags = time1.flags;
          epoch = time1.epoch;
          if (time1.value > 0 || (lhs = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &lhs) > 0))
          {
            if (--v48 > 1)
            {
              continue;
            }
          }

          goto LABEL_116;
        }

        RunConverter_cold_3();
      }
    }

    else
    {
LABEL_116:
      if (v47 >= 1)
      {
        do
        {
          v52 = CFArrayGetValueAtIndex(*(a1 + 264), 0);
          v53 = *(a1 + 48);
          if (v53)
          {
            v53(*(a1 + 56), 0, v52);
          }

          CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
          --v47;
        }

        while (v47);
      }
    }
  }

LABEL_98:
  result = 0;
  if (v18 && v18 != 3)
  {
    v42 = *(a1 + 48);
    if (v42)
    {
      v42(*(a1 + 56), v18, 0);
    }

    return v18;
  }

  return result;
}

CMItemCount RunConverter_0(uint64_t a1, CMSampleBufferRef sbuf)
{
  v83[1] = *MEMORY[0x1E69E9840];
  if (!sbuf)
  {
    if (*(a1 + 272) != 1)
    {
      return 0;
    }

    v6 = (a1 + 24);
    if (*(a1 + 24))
    {
      v5 = 10;
      goto LABEL_12;
    }

    goto LABEL_92;
  }

  result = CMSampleBufferGetNumSamples(sbuf);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = (a1 + 24);
  if (*(a1 + 24))
  {
    goto LABEL_12;
  }

  v79.value = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(FormatDescription);
  if (!RichestDecodableFormat)
  {
    goto LABEL_92;
  }

  v9 = RichestDecodableFormat;
  if (AudioConverterNew(&RichestDecodableFormat->mASBD, (a1 + 40), (a1 + 136)))
  {
    fig_log_get_emitter();
  }

  else
  {
    LODWORD(v78.value) = 0;
    if (CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v79) && (HIDWORD(v79.value) || (MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v79), AudioConverterSetProperty(*(a1 + 136), 0x646D6763u, v79.value, MagicCookie))))
    {
      fig_log_get_emitter();
    }

    else
    {
      if (v9->mASBD.mFormatID == 1819304813 || (LODWORD(v78.value) = 4, AudioConverterGetProperty(*(a1 + 136), 0x74627566u, &v78, (a1 + 88)), LODWORD(v78.value) = 4, !AudioConverterGetProperty(*(a1 + 136), 0x70616B66u, &v78, (a1 + 92))) && (LODWORD(v78.value) = 4, !AudioConverterGetProperty(*(a1 + 136), 0x70616B62u, &v78, (a1 + 96))))
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        *(a1 + 264) = Mutable;
        if (Mutable)
        {
          v56 = *(a1 + 136);
          if (v56)
          {
            inPropertyData.duration.value = 0;
            AudioConverterSetProperty(v56, 0x7072696Du, 8u, &inPropertyData);
            v56 = *(a1 + 136);
          }

          LODWORD(v78.value) = 8;
          if (AudioConverterGetProperty(v56, 0x6877727Au, &v78, (a1 + 144)) || !*(a1 + 144))
          {
            *(a1 + 144) = 0;
          }

          if ((*(a1 + 52) & 0x20) != 0)
          {
            v58 = malloc_type_calloc(1uLL, 16 * (*(a1 + 68) - 1) + 24, 0x10800404ACF7207uLL);
            *(a1 + 80) = v58;
            if (v58)
            {
              v59 = *(a1 + 68);
              *v58 = v59;
              if (v59)
              {
                v60 = (v59 + 3) & 0x1FFFFFFFCLL;
                v61 = vdupq_n_s64(v59 - 1);
                v62 = xmmword_196E73080;
                v63 = xmmword_196E73090;
                v64 = v58 + 10;
                v65 = vdupq_n_s64(4uLL);
                do
                {
                  v66 = vmovn_s64(vcgeq_u64(v61, v63));
                  if (vuzp1_s16(v66, *v61.i8).u8[0])
                  {
                    *(v64 - 8) = 1;
                  }

                  if (vuzp1_s16(v66, *&v61).i8[2])
                  {
                    *(v64 - 4) = 1;
                  }

                  if (vuzp1_s16(*&v61, vmovn_s64(vcgeq_u64(v61, *&v62))).i32[1])
                  {
                    *v64 = 1;
                    v64[4] = 1;
                  }

                  v62 = vaddq_s64(v62, v65);
                  v63 = vaddq_s64(v63, v65);
                  v64 += 16;
                  v60 -= 4;
                }

                while (v60);
              }

              goto LABEL_8;
            }
          }

          else
          {
            v57 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
            *(a1 + 80) = v57;
            if (v57)
            {
              *v57 = 1;
              v57[2] = *(a1 + 68);
              goto LABEL_8;
            }
          }
        }
      }

      fig_log_get_emitter();
    }
  }

  if (FigSignalErrorAtGM())
  {
LABEL_92:
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

LABEL_8:
  v10 = CMSampleBufferGetFormatDescription(sbuf);
  *v6 = v10;
  CFRetain(v10);
LABEL_12:
  result = acquireHardware_0(a1);
  if (result)
  {
    return result;
  }

  v11 = CMAudioFormatDescriptionGetRichestDecodableFormat(*v6);
  if (!v11)
  {
    return 4294954516;
  }

  v12 = v11;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 32));
  if (!StreamBasicDescription)
  {
    return 4294954516;
  }

  v14 = StreamBasicDescription;
  v15 = *(a1 + 160);
  *(a1 + 160) = sbuf;
  if (sbuf)
  {
    CFRetain(sbuf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  appended = 0;
  v17 = 0;
LABEL_20:
  v18 = v5 - v17;
  while (1)
  {
    if (appended == 3 || v5 <= v17)
    {
      goto LABEL_96;
    }

    theBuffer = 0;
    v19 = (v12->mASBD.mFramesPerPacket * v18 * *(a1 + 56));
    ioOutputDataPacketSize = v12->mASBD.mFramesPerPacket * v18;
    if ((v14->mFormatFlags & 0x20) == 0)
    {
      v20 = MEMORY[0x19A8CC720](*(a1 + 296), v19, 3052348899, 0);
      v21 = *(a1 + 80);
      *(v21 + 16) = v20;
      if (v20)
      {
        *(v21 + 12) = v19;
        goto LABEL_32;
      }

      v53 = *(a1 + 296);
      v26 = v21;
LABEL_95:
      deallocateAndZeroBufferListDataPointers(v26, v53);
      appended = -12786;
      goto LABEL_96;
    }

    v22 = v18;
    if (*(a1 + 68))
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = MEMORY[0x19A8CC720](*(a1 + 296), v19, 3588519503, 0);
        v26 = *(a1 + 80);
        *&v26[v23 + 4] = v25;
        if (!v25)
        {
          break;
        }

        v26[v23 + 3] = v19;
        ++v24;
        v23 += 4;
        if (v24 >= *(a1 + 68))
        {
          goto LABEL_30;
        }
      }

      v53 = *(a1 + 296);
      goto LABEL_95;
    }

LABEL_30:
    if (appended)
    {
      goto LABEL_96;
    }

    v21 = *(a1 + 80);
    v18 = v22;
LABEL_32:
    v27 = AudioConverterFillComplexBuffer(*(a1 + 136), fadDecoderInputProc, a1, &ioOutputDataPacketSize, v21, 0);
    appended = v27;
    if (v27 && v27 != 3)
    {
      goto LABEL_133;
    }

    if (ioOutputDataPacketSize)
    {
      break;
    }

    deallocateAndZeroBufferListDataPointers(*(a1 + 80), *(a1 + 296));
    if (*(a1 + 272) == 1)
    {
      goto LABEL_96;
    }
  }

  v28 = *(a1 + 296);
  v68 = v18;
  if ((v14->mFormatFlags & 0x20) != 0)
  {
    v30 = CMBlockBufferCreateEmpty(v28, *(a1 + 68), 0, &theBuffer);
    if (v30)
    {
      appended = v30;
LABEL_133:
      v29 = *(a1 + 80);
      goto LABEL_134;
    }

    if (*(a1 + 68))
    {
      v31 = 0;
      v32 = 0;
      v33 = *(a1 + 80);
      while (1)
      {
        appended = CMBlockBufferAppendMemoryBlock(theBuffer, *&v33[v31 + 4], v19, *(a1 + 296), 0, 0, v14->mBytesPerPacket * ioOutputDataPacketSize, 0);
        v33 = *(a1 + 80);
        if (appended)
        {
          break;
        }

        v34 = &v33[v31];
        *(v34 + 2) = 0;
        v34[3] = 0;
        ++v32;
        v31 += 4;
        if (v32 >= *(a1 + 68))
        {
          appended = 0;
          goto LABEL_48;
        }
      }

      deallocateAndZeroBufferListDataPointers(v33, *(a1 + 296));
      CFRelease(theBuffer);
LABEL_48:
      LODWORD(v18) = v68;
    }

    else
    {
      appended = 0;
    }

LABEL_49:
    v35 = theBuffer;
    v36 = ioOutputDataPacketSize;
    if (!ioOutputDataPacketSize)
    {
      v36 = 0;
      goto LABEL_83;
    }

    bufferReference = theBuffer;
    v37 = 0;
    v67 = ioOutputDataPacketSize;
    v69 = v17;
    while (1)
    {
      v38 = v36 - v37;
      if (CFArrayGetCount(*(a1 + 264)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), 0);
        v40 = *ValueAtIndex;
        v41 = *(a1 + 256);
        v42 = v41 + v37;
        if (*ValueAtIndex == v42)
        {
          v43 = ValueAtIndex[2] - v40;
          if (v38 < v43)
          {
            *ValueAtIndex = v40 + v38;
            goto LABEL_81;
          }

          free(ValueAtIndex);
          CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
          v17 = v69;
          goto LABEL_68;
        }

        v44 = v40 - v42;
        if (v41 + v36 > v40)
        {
          v38 = v44;
        }
      }

      v81 = 0;
      v82 = 0;
      memset(&inPropertyData, 0, sizeof(inPropertyData));
      v79 = **&MEMORY[0x1E6960C70];
      v71 = *&v79.value;
      epoch = v79.epoch;
      CMTimeMake(&inPropertyData.duration, *(a1 + 60), *(a1 + 40));
      inPropertyData.presentationTimeStamp = *(a1 + 192);
      *&inPropertyData.decodeTimeStamp.value = v71;
      inPropertyData.decodeTimeStamp.epoch = epoch;
      v72 = v38;
      CMTimeMake(&v79, v38, *(a1 + 40));
      lhs = *(a1 + 192);
      rhs = v79;
      CMTimeAdd(&v78, &lhs, &rhs);
      *(a1 + 192) = v78;
      v46 = *(a1 + 56);
      v18 = v46 * v37;
      v70 = v46;
      v47 = v46 * v38;
      v43 = v38;
      if ((*(a1 + 52) & 0x20) != 0 && *(a1 + 68) != 1)
      {
        v78.value = 0;
        if (CMBlockBufferGetDataPointer(bufferReference, 0, &v78, 0, 0) || CMBlockBufferCreateEmpty(*(a1 + 296), *(a1 + 68), 0, &v82))
        {
          goto LABEL_80;
        }

        if (*(a1 + 68))
        {
          v52 = 0;
          while (!CMBlockBufferAppendBufferReference(v82, bufferReference, v18 + v78.value * v52, v47, 0))
          {
            if (++v52 >= *(a1 + 68))
            {
              goto LABEL_76;
            }
          }

          if (v82)
          {
            CFRelease(v82);
          }

LABEL_80:
          v36 = v67;
          LODWORD(v18) = v68;
LABEL_81:
          v17 = v69;
          goto LABEL_82;
        }

LABEL_76:
        sampleSizeArray = 0;
        v50 = 0;
        v36 = v67;
        LODWORD(v18) = v68;
        v43 = v38;
        v17 = v69;
      }

      else
      {
        v48 = CMBlockBufferCreateWithBufferReference(*(a1 + 296), bufferReference, v18, v47, 0, &v82);
        v36 = v67;
        LODWORD(v18) = v68;
        v17 = v69;
        if (v48)
        {
          goto LABEL_82;
        }

        sampleSizeArray = v83;
        v50 = 1;
      }

      v83[0] = v70;
      if (CMSampleBufferCreate(*(a1 + 296), v82, 1u, 0, 0, *(a1 + 32), v72, 1, &inPropertyData, v50, sampleSizeArray, &v81))
      {
        if (v82)
        {
          CFRelease(v82);
        }

LABEL_82:
        v35 = theBuffer;
LABEL_83:
        *(a1 + 256) += v36;
        if (v35)
        {
          CFRelease(v35);
        }

        if (*(a1 + 272) == 1)
        {
          v5 = 10;
          v17 = 0;
        }

        else
        {
          v17 += v18;
        }

        goto LABEL_20;
      }

      v51 = *(a1 + 120);
      if (v51)
      {
        v51(*(a1 + 128), 0, v81);
      }

      if (v82)
      {
        CFRelease(v82);
      }

      if (v81)
      {
        CFRelease(v81);
      }

LABEL_68:
      v37 += v43;
      if (v37 >= v36)
      {
        goto LABEL_82;
      }
    }
  }

  appended = CMBlockBufferCreateWithMemoryBlock(v28, *(*(a1 + 80) + 16), v19, v28, 0, 0, v14->mBytesPerPacket * ioOutputDataPacketSize, 0, &theBuffer);
  v29 = *(a1 + 80);
  if (!appended)
  {
    *(v29 + 16) = 0;
    *(v29 + 12) = 0;
    goto LABEL_49;
  }

LABEL_134:
  deallocateAndZeroBufferListDataPointers(v29, *(a1 + 296));
LABEL_96:
  if (appended == 3)
  {
    return 0;
  }

  else
  {
    return appended;
  }
}

uint64_t sbp_vtcs_outputFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v8 = *(result + 24);
  if (v8)
  {
    v9 = *(result + 40);

    return v8(v9, a3, a5);
  }

  return result;
}

void mediaprocessor_OutputSampleBuffer(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  if (a2)
  {
    cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (cf)
    {
      v5 = CFGetAllocator(a1);
      v6 = CFDictionaryCreate(v5, kFigMediaProcessorParameter_Result, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v6)
      {
        v7 = v6;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v7);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (a3)
  {
    v8 = *(a1 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8, a3);
    }

    ++*(a1 + 152);
  }
}

uint64_t otfw_sendSampleBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v4, v5, a2);
}

uint64_t figMovieWriter_AddSampleBufferToTrack(uint64_t a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*(DerivedStorage + 335) && a3)
  {
    v8 = 0;
    result = getTrackInfoForTrackID(DerivedStorage, a2, &v8);
    if (!result)
    {
      v7 = *(v8 + 608);

      return CMBufferQueueEnqueue(v7, a3);
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

CMItemCount validateSampleBufferForTrackCallback(int a1, CMSampleBufferRef sbuf, uint64_t a3)
{
  result = CMSampleBufferGetNumSamples(sbuf);
  if (!result)
  {
    return result;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v9 = *a3;
  if (*a3 == 1635088502 || v9 == 1885954932 || v9 == 1986618469)
  {
    v12 = 1986618469;
  }

  else
  {
    v12 = *a3;
  }

  if (!ImageBuffer || (TypeID = CVPixelBufferGetTypeID(), TypeID == CFGetTypeID(ImageBuffer)))
  {
    if (FormatDescription)
    {
      if (v12 == MediaType)
      {
        v14 = CMGetAttachment(sbuf, *MEMORY[0x1E6960520], 0);
        if (!v14 || !CFEqual(v14, *MEMORY[0x1E695E4D0]))
        {
          if (MediaType == 1936684398)
          {
            v26 = 0;
            v22 = 0;
            result = FigMovieIsNonInterleavedPCMAudioSample(sbuf, &v26);
            if (result)
            {
              return result;
            }

            if (v26)
            {
              validateSampleBufferForTrackCallback_cold_1(&time1);
              result = LODWORD(time1.value);
              if (LODWORD(time1.value))
              {
                return result;
              }
            }

            else
            {
              memset(&v25, 0, sizeof(v25));
              v23 = 0.0;
              memset(&v24, 0, sizeof(v24));
              getTrimDurationsAndSpeedMultiplierFromSbuf(sbuf, &v25, &v24, &v22, &v23);
              time1 = **&MEMORY[0x1E6960CC0];
              v19 = *&time1.value;
              epoch = time1.epoch;
              time2 = v25;
              v16 = CMTimeCompare(&time1, &time2);
              *&time1.value = v19;
              time1.epoch = epoch;
              time2 = v24;
              v17 = CMTimeCompare(&time1, &time2);
              v18 = *(a3 + 16);
              if ((*(v18 + 324) - 6) >= 0xFFFFFFFB)
              {
                if ((*(a3 + 768) == 2 || *(v18 + 384)) && editBoundaryDetectorDetectBoundary(*(a3 + 536), v22, v16 != 0, v17 != 0, v23))
                {
LABEL_32:
                  fig_log_get_emitter();
                  result = FigSignalErrorAtGM();
                  if (result)
                  {
                    return result;
                  }
                }
              }

              else if (v16 || v17 || v23 != 1.0)
              {
                goto LABEL_32;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t wakeupWritingThreadForDataReady(uint64_t a1)
{
  v1 = *(a1 + 16);
  FigSimpleMutexLock();
  if (*(v1 + 335))
  {
    return FigSimpleMutexUnlock();
  }

  if (!*(v1 + 528))
  {
    FigSimpleMutexLock();
    if (*(v1 + 528))
    {
LABEL_28:
      FigSimpleMutexUnlock();
      goto LABEL_29;
    }

    Count = CFArrayGetCount(*(v1 + 488));
    v3 = Count;
    values = **&MEMORY[0x1E6960C70];
    v4 = *(v1 + 329);
    if (*(v1 + 329))
    {
      v5 = 120;
      if ((*(v1 + 132) & 1) == 0)
      {
        v5 = 96;
      }
    }

    else
    {
      if (!*(v1 + 330))
      {
LABEL_11:
        *(v1 + 220) = *(v1 + 196);
        *(v1 + 236) = *(v1 + 212);
        v6 = MEMORY[0x1E6960CC0];
        if (Count >= 1)
        {
          v7 = 0;
          v18 = *MEMORY[0x1E6960CC0];
          v8 = *(MEMORY[0x1E6960CC0] + 16);
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 488), v7);
            time1 = *(ValueAtIndex + 108);
            *&time2.value = v18;
            time2.epoch = v8;
            v10 = CMTimeCompare(&time1, &time2);
            v11 = ValueAtIndex + 648;
            if (v10)
            {
              *v11 = *(ValueAtIndex + 108);
              *(ValueAtIndex + 83) = *(ValueAtIndex + 124);
            }

            else
            {
              v12 = *(v1 + 48);
              *(ValueAtIndex + 83) = *(v1 + 64);
              *v11 = v12;
            }

            time2 = values;
            rhs = *(ValueAtIndex + 108);
            CMTimeAdd(&time1, &time2, &rhs);
            *(ValueAtIndex + 28) = time1;
            setTrackHeaderDataCompleteFlagIfCumulatedInterleavingDurationReachesCumulatedMovieFragmentDuration(ValueAtIndex);
            ++v7;
          }

          while (v3 != v7);
          v4 = *(v1 + 329);
        }

        if (v4)
        {
          LOBYTE(v4) = *(v1 + 16);
          if (v4)
          {
            LOBYTE(v4) = *(v1 + 17) != 0;
          }
        }

        *(v1 + 331) = v4;
        v13 = sortTrackInfoLikedList(*(v1 + 496));
        *(v1 + 496) = v13;
        *(v1 + 504) = v13;
        if ((*(v1 + 36) & 1) == 0)
        {
          *(v1 + 24) = *v6;
          *(v1 + 40) = *(v6 + 16);
        }

        values.value = @"com.apple.coremedia.formatwriter.qtmovie";
        v14 = *MEMORY[0x1E695E480];
        v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigThreadCreate();
        if (*(v1 + 544))
        {
          v16 = CFNumberCreate(v14, kCFNumberSInt32Type, (v1 + 544));
          FigThreadSetProperty();
          CFRelease(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        FigMemoryBarrier();
        *(v1 + 528) = 1;
        goto LABEL_28;
      }

      v5 = 144;
    }

    values = *(v1 + v5);
    goto LABEL_11;
  }

LABEL_29:
  if ((*(v1 + 36) & 1) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  if (*(v1 + 560))
  {
    FigSemaphoreSignal();
  }

  return FigSimpleMutexUnlock();
}

uint64_t sortTrackInfoLikedList(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = *(v1 + 24);
      v3 = result;
      if (v2)
      {
        v3 = result;
        do
        {
          v3 = *(v3 + 24);
          v4 = *(v2 + 24);
          if (!v4)
          {
            break;
          }

          v2 = *(v4 + 24);
        }

        while (v2);
        v1 = *(v3 + 24);
      }

      *(v3 + 24) = 0;
      v5 = (sortTrackInfoLikedList)();
      v6 = sortTrackInfoLikedList(v1);

      return mergeTrackInfoLinkedList(v5, v6);
    }
  }

  return result;
}

uint64_t writingThread(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 329) && *(a1 + 330))
  {
    writingThread_cold_1(v38);
    v6 = v38[0];
    goto LABEL_13;
  }

  if (*(a1 + 384) || *(a1 + 330))
  {
    BlockBufferByteStreamForMovieSampleDataWriter = createBlockBufferByteStreamForMovieSampleDataWriter(a1);
    if (BlockBufferByteStreamForMovieSampleDataWriter)
    {
LABEL_110:
      v6 = BlockBufferByteStreamForMovieSampleDataWriter;
      goto LABEL_111;
    }
  }

  else
  {
    BlockBufferByteStreamForMovieSampleDataWriter = MovieSampleDataWriterSetDefaultByteStream(*(a1 + 752), *(a1 + 8));
    if (BlockBufferByteStreamForMovieSampleDataWriter)
    {
      goto LABEL_110;
    }
  }

  BlockBufferByteStreamForMovieSampleDataWriter = MovieSampleDataWriterSetThreadPriorityAndClientPID(*(a1 + 752));
  if (BlockBufferByteStreamForMovieSampleDataWriter)
  {
    goto LABEL_110;
  }

  memset(&token_out, 0, sizeof(token_out));
  if (!*(a1 + 608))
  {
    v6 = 0;
    goto LABEL_13;
  }

  memset(&v38[2] + 4, 0, 28);
  memset(v38 + 4, 0, 32);
  LODWORD(v38[0]) = 799564724;
  v3 = os_workgroup_attr_set_flags();
  if (v3)
  {
    writingThread_cold_2(v3, &theBuffer);
LABEL_115:
    v6 = theBuffer;
    goto LABEL_13;
  }

  v4 = os_workgroup_create();
  v5 = __error();
  if (!v4)
  {
    writingThread_cold_3(v5, &theBuffer);
    goto LABEL_115;
  }

  v6 = os_workgroup_join(v4, &token_out);
  if (v6)
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    os_release(v4);
  }

  else
  {
    *(a1 + 616) = v4;
    v7 = *&token_out.opaque[12];
    *(a1 + 624) = *&token_out.sig;
    *(a1 + 640) = v7;
    *(a1 + 656) = *&token_out.opaque[28];
  }

LABEL_13:
  if (v6)
  {
LABEL_111:
    setWritingThreadErrorAndPostErrorOccurredNotification(a1, v6);
  }

  if (*(a1 + 571))
  {
    goto LABEL_15;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E6960C70];
  do
  {
    if (*(a1 + 568))
    {
      v12 = flushAllSampleBufferQueues(a1);
      if (v12 || (v12 = MovieSampleDataWriterFlush(*(a1 + 752))) != 0)
      {
        setWritingThreadErrorAndPostErrorOccurredNotification(a1, v12);
      }

      *(a1 + 568) = 0;
      goto LABEL_99;
    }

    if (*(a1 + 570))
    {
      v13 = writeMovieHeader(a1, *(a1 + 17) != 0, 0);
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        if (!*(a1 + 329) || !*(a1 + 531))
        {
          goto LABEL_41;
        }

        v14 = *(a1 + 360);
        theBuffer = 0;
        *&v38[0] = 0;
        *&token_out.sig = 0;
        FirstMediaDataAtomOffset = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(a1 + 752), 0, v38);
        if (FirstMediaDataAtomOffset || (FirstMediaDataAtomOffset = MovieSampleDataWriterCopyURLOfDefaultByteStream(*(a1 + 752), v10, &token_out)) != 0 || (FirstMediaDataAtomOffset = createMovieAtomBBuf(a1, 0, *&token_out.sig, &theBuffer)) != 0 || (v16 = theBuffer, *(a1 + 368) = CMBlockBufferGetDataLength(theBuffer), (FirstMediaDataAtomOffset = MovieSampleDataWriterAppendHeader(*(a1 + 752), v16, (a1 + 360))) != 0) || (MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), 1, 0), (FirstMediaDataAtomOffset = MovieSampleDataWriterWriteData(*(a1 + 752), 1, v14 + 4, "h")) != 0) || (*(a1 + 352) = 0, (FirstMediaDataAtomOffset = MovieSampleDataWriterPatchFirstMediaDataAtomSize(*(a1 + 752), *(a1 + 360) - *&v38[0])) != 0))
        {
          v17 = FirstMediaDataAtomOffset;
        }

        else
        {
          if (*(a1 + 17))
          {
            MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), 1, 0);
          }

          v17 = 0;
          *(a1 + 532) = 1;
        }

        if (*&token_out.sig)
        {
          CFRelease(*&token_out.sig);
        }

        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (!v17)
        {
          goto LABEL_41;
        }
      }

      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v17);
LABEL_41:
      *(a1 + 570) = 0;
LABEL_99:
      FigSemaphoreSignal();
      goto LABEL_100;
    }

    if (*(a1 + 569))
    {
      v18 = *(a1 + 488);
      if (v18)
      {
        Count = CFArrayGetCount(v18);
        v20 = flushAllSampleBufferQueues(a1);
        if (!v20)
        {
          if (Count >= 1)
          {
            v21 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v21);
              v38[0] = *(a1 + 664);
              *&v38[1] = *(a1 + 680);
              v20 = trackEndSession(ValueAtIndex, v38, 2);
              if (v20)
              {
                goto LABEL_104;
              }
            }

            while (Count != ++v21);
          }

LABEL_97:
          *(a1 + 24) = *v11;
          *(a1 + 40) = *(v11 + 16);
LABEL_98:
          *(a1 + 569) = 0;
          goto LABEL_99;
        }
      }

      else
      {
        v20 = flushAllSampleBufferQueues(a1);
        if (!v20)
        {
          goto LABEL_97;
        }
      }

LABEL_104:
      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v20);
      goto LABEL_98;
    }

    while (1)
    {
      while (1)
      {
        v31 = *(a1 + 504);
        if (isReadyToWriteTrackHeaderWithNoSamples(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 6;
          goto LABEL_83;
        }

        if (reachedInterleavingPeriod(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 1;
          goto LABEL_83;
        }

        if (trackBufferQueueIsSampleAvailable(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 2;
          goto LABEL_83;
        }

        if (trackBufferQueueIsAtEndOfData(v31))
        {
          break;
        }

        if (!*(v31 + 352) && !*(v31 + 100))
        {
          v28 = 0;
          v29 = 5;
          v30 = 1;
          goto LABEL_83;
        }

        v26 = *(a1 + 504);
        if (!v26)
        {
          goto LABEL_100;
        }

        while (!CMBufferQueueTestTrigger(*(v26 + 608), *(v26 + 640)))
        {
          if (*(v26 + 24))
          {
            v26 = *(v26 + 24);
          }

          else
          {
            v26 = *(a1 + 496);
          }

          if (v26 == *(a1 + 504))
          {
            goto LABEL_100;
          }
        }

        v27 = *(a1 + 504);
        if (!*(v27 + 100))
        {
          v27 = *(v27 + 24) ? *(v27 + 24) : *(a1 + 496);
          if (v27 == v26)
          {
            if (*(v27 + 24))
            {
              v27 = *(v27 + 24);
            }

            else
            {
              v27 = *(a1 + 496);
            }
          }
        }

        setNextCumulatedInterleavingDuration(v31);
        *(a1 + 504) = v26;
        *(a1 + 512) = v27;
      }

      v30 = 0;
      v29 = 3;
      v28 = 1;
LABEL_83:
      LOBYTE(v38[0]) = 1;
      LOBYTE(token_out.sig) = 1;
      v32 = handleWritingThreadEvent(v31, v29, v38, &token_out);
      if (v32)
      {
        break;
      }

      if (LOBYTE(v38[0]))
      {
        v33 = *(a1 + 512);
        if (v33)
        {
          *(a1 + 504) = v33;
          *(a1 + 512) = 0;
        }

        else
        {
          v34 = *(a1 + 496);
          if (*(v31 + 24))
          {
            v34 = *(v31 + 24);
          }

          *(a1 + 504) = v34;
        }
      }

      if (LOBYTE(token_out.sig))
      {
        setNextCumulatedInterleavingDuration(v31);
      }

      if ((v28 | v30) == 1)
      {
        v35 = CFArrayGetCount(*(a1 + 488));
        if (v35 < 1)
        {
          goto LABEL_100;
        }

        v23 = v35;
        v24 = 0;
        while (1)
        {
          v25 = CFArrayGetValueAtIndex(*(a1 + 488), v24);
          if (!trackBufferQueueIsAtEndOfData(v25) && (v25[352] || trackBufferQueueIsSampleAvailable(v25)))
          {
            break;
          }

          if (v23 == ++v24)
          {
            goto LABEL_100;
          }
        }
      }
    }

    setWritingThreadErrorAndPostErrorOccurredNotification(a1, v32);
LABEL_100:
    v36 = MovieSampleDataWriterFlush(*(a1 + 752));
    if (v36)
    {
      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v36);
    }

    FigSemaphoreWaitRelative();
  }

  while (!*(a1 + 571));
LABEL_15:
  v8 = *(a1 + 616);
  if (v8)
  {
    os_workgroup_leave(v8, (a1 + 624));
  }

  return 0;
}

BOOL reachedInterleavingPeriod(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  getMediaDecodeDuration(a1, &v5);
  if ((v5.flags & 1) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  if (*(a1 + 100))
  {
    return 0;
  }

  time1 = *(a1 + 648);
  v3 = v5;
  return CMTimeCompare(&time1, &v3) < 1;
}

uint64_t facEncoderInputProc(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a5 + 24));
  v9 = CMAudioFormatDescriptionGetStreamBasicDescription(*(a5 + 32));
  v10 = *(a5 + 96);
  if (v10)
  {
    CFRelease(v10);
    *(a5 + 96) = 0;
  }

  v11 = *(a5 + 88);
  *(a5 + 88) = 0;
  if (!v11)
  {
    *a2 = 0;
    if (*(a5 + 196) == 1)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  if (!*(a5 + 144))
  {
    CMSampleBufferGetPresentationTimeStamp(&v63, v11);
    *(a5 + 120) = v63;
    *(a5 + 144) = 1;
  }

  if (CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v11, 0, *(a5 + 104), *(a5 + 112), *MEMORY[0x1E695E480], *MEMORY[0x1E695E480], 0, (a5 + 96)))
  {
    *a2 = 0;
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v13 = *(a5 + 104);
  NumSamples = CMSampleBufferGetNumSamples(v11);
  v15 = NumSamples;
  v16 = *(a5 + 176);
  if (v16)
  {
    if (StreamBasicDescription->mChannelsPerFrame != 2 || v9->mChannelsPerFrame != 1)
    {
LABEL_75:
      v13 = *(a5 + 176);
      goto LABEL_76;
    }

    v17 = *v16;
    v18 = NumSamples * (StreamBasicDescription->mBytesPerPacket >> 1);
    if (v17 == 1)
    {
      v18 *= v16[2];
      v19 = (a5 + 184);
      if (v18 <= *(a5 + 184))
      {
        v17 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      v19 = (a5 + 184);
      if (v18 <= *(a5 + 184))
      {
        goto LABEL_30;
      }

      if (!*v16)
      {
LABEL_29:
        *v19 = v18;
LABEL_30:
        if (!v17)
        {
LABEL_39:
          mFormatFlags = StreamBasicDescription->mFormatFlags;
          if (mFormatFlags)
          {
            if (v15)
            {
              v41 = *(v16 + 2);
              v42 = *(*(a5 + 104) + 16);
              v43 = v15;
              do
              {
                v44 = *v42;
                v45 = v42[1];
                v42 += 2;
                *v41++ = (v45 * 0.707) + (v44 * 0.707);
                --v43;
              }

              while (v43);
            }
          }

          else
          {
            mBitsPerChannel = StreamBasicDescription->mBitsPerChannel;
            if ((mFormatFlags & 2) != 0 || StreamBasicDescription->mFormatID != 1819304813)
            {
              v46 = *(*(a5 + 104) + 16);
              v47 = *(v16 + 2);
              if (mBitsPerChannel == 16)
              {
                StereoMonoDownMix16SwappedEndian(v46, v47, v15);
              }

              else
              {
                StereoMonoDownMix32SwappedEndian(v46, v47, v15);
              }
            }

            else if (mBitsPerChannel == 16)
            {
              if (v15)
              {
                v34 = *(v16 + 2);
                v35 = *(*(a5 + 104) + 16);
                v36 = v15;
                do
                {
                  v37 = ((2896 * v35[1]) >> 12) + ((2896 * *v35) >> 12);
                  if (v37 >= 0x7FFF)
                  {
                    v38 = 0x7FFF;
                  }

                  else
                  {
                    v38 = ((2896 * v35[1]) >> 12) + ((2896 * *v35) >> 12);
                  }

                  if (v37 <= -32768)
                  {
                    v39 = 0x8000;
                  }

                  else
                  {
                    v39 = ((2896 * v35[1]) >> 12) + ((2896 * *v35) >> 12);
                  }

                  if (v37 <= 0)
                  {
                    v40 = v39;
                  }

                  else
                  {
                    v40 = v38;
                  }

                  *v34++ = v40;
                  v35 += 2;
                  --v36;
                }

                while (v36);
              }
            }

            else if (v15)
            {
              v48 = *(v16 + 2);
              v49 = *(*(a5 + 104) + 16);
              v50 = v15;
              do
              {
                v51 = *v49;
                v52 = v49[1];
                v49 += 2;
                v53 = ((11863283 * v52) >> 24) + ((11863283 * v51) >> 24);
                if (v53 >= 0x7FFFFFFF)
                {
                  v54 = 0x7FFFFFFF;
                }

                else
                {
                  v54 = v53;
                }

                if (v53 <= 0xFFFFFFFF80000000)
                {
                  v55 = 0x80000000;
                }

                else
                {
                  v55 = v53;
                }

                if (v53 <= 0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = v54;
                }

                *v48++ = v56;
                --v50;
              }

              while (v50);
            }
          }

          goto LABEL_75;
        }

LABEL_31:
        v25 = (v17 + 3) & 0x1FFFFFFFCLL;
        v26 = vdupq_n_s64(v17 - 1);
        v27 = xmmword_196E73080;
        v28 = xmmword_196E73090;
        v29 = v16 + 11;
        v30 = vdupq_n_s64(4uLL);
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v26, v28));
          if (vuzp1_s16(v31, *v26.i8).u8[0])
          {
            *(v29 - 8) = v18;
          }

          if (vuzp1_s16(v31, *&v26).i8[2])
          {
            *(v29 - 4) = v18;
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
          {
            *v29 = v18;
            v29[4] = v18;
          }

          v27 = vaddq_s64(v27, v30);
          v28 = vaddq_s64(v28, v30);
          v29 += 16;
          v25 -= 4;
        }

        while (v25);
        goto LABEL_39;
      }
    }

    v20 = 0;
    v21 = (v16 + 4);
    do
    {
      if (*v21)
      {
        free(*v21);
        *v21 = 0;
        v17 = *v16;
      }

      *(v21 - 1) = 0;
      ++v20;
      v21 += 2;
    }

    while (v20 < v17);
    v16 = *(a5 + 176);
    if (*v16)
    {
      v22 = 0;
      v23 = 4;
      while (1)
      {
        v24 = malloc_type_malloc(v18, 0x9C4A3380uLL);
        v16 = *(a5 + 176);
        *&v16[v23] = v24;
        if (!v24)
        {
          goto LABEL_39;
        }

        ++v22;
        v17 = *v16;
        v23 += 4;
        if (v22 >= v17)
        {
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

LABEL_76:
  v57 = *a3;
  if (v57)
  {
    v58 = 0;
    v61 = *v13;
    v60 = v13 + 4;
    v59 = v61;
    v62 = a3 + 4;
    do
    {
      if (v58 < v59)
      {
        *(v62 - 1) = *(v60 - 1);
        *v62 = *v60;
      }

      ++v58;
      v60 += 2;
      v62 += 2;
    }

    while (v57 != v58);
  }

  result = 0;
  *a2 = v15;
  *(a5 + 200) += v15;
  return result;
}

uint64_t handleWritingThreadEvent(uint64_t a1, int a2, BOOL *a3, char *a4)
{
  v8 = *(a1 + 16);
  if (a2 > 2)
  {
    if (a2 == 5)
    {
      if (!*(v8 + 329) && !*(v8 + 330))
      {
        goto LABEL_12;
      }

      if (!doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(a1))
      {
        goto LABEL_12;
      }

      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (!started)
      {
        goto LABEL_12;
      }

      return started;
    }

    if ((a2 - 3) >= 2)
    {
      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (!started)
      {
        v11 = 0;
        v10 = 1;
        goto LABEL_80;
      }

      return started;
    }

    v10 = *(a1 + 328) == 0;
    MediaSampleTimingGeneratorGetDefaultLastSampleDuration(*(a1 + 752), &v48);
    started = flushSampleBufferToTrack(a1, &v48);
    if (started)
    {
      return started;
    }

    if (a2 == 3)
    {
      if (!*(v8 + 329) && !*(v8 + 330))
      {
        v11 = *(v8 + 168);
        if (!v11)
        {
          goto LABEL_80;
        }
      }

      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (started)
      {
        return started;
      }
    }

LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  if (a2 == 1)
  {
    if (!*(v8 + 329) && !*(v8 + 330) || !*(a1 + 601))
    {
      goto LABEL_12;
    }

    started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
    if (!started)
    {
      *(a1 + 601) = 0;
LABEL_12:
      v10 = 1;
      v11 = 1;
LABEL_80:
      v35 = 0;
      *a3 = v10;
      *a4 = v11;
      return v35;
    }

    return started;
  }

  sbuf = 0;
  if (*(v8 + 329))
  {
    if (*(v8 + 332))
    {
      if (!*(v8 + 352) && !*(a1 + 600))
      {
        Head = CMBufferQueueGetHead(*(a1 + 608));
        sbuf = Head;
        if (CMSampleBufferGetNumSamples(Head))
        {
          FormatDescription = CMSampleBufferGetFormatDescription(Head);
          started = MovieTrackFindOrAddSampleDescription(*(a1 + 736), FormatDescription, 0, 0);
          if (started)
          {
            return started;
          }

          goto LABEL_86;
        }
      }
    }
  }

  if (*(v8 + 168))
  {
    v41 = 0;
    v12 = *(a1 + 16);
    v39 = *MEMORY[0x1E6960C70];
    *&v42.value = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    v42.epoch = v13;
    if (*a1 != 1936684398)
    {
      goto LABEL_60;
    }

    if (*(a1 + 776))
    {
      goto LABEL_60;
    }

    v14 = trackBufferQueueGetHead(a1);
    if (!v14)
    {
      goto LABEL_60;
    }

    v15 = v14;
    if (!CMSampleBufferGetNumSamples(v14))
    {
      goto LABEL_60;
    }

    v16 = (a1 + 784);
    v17 = *(a1 + 810);
    if (*(a1 + 810))
    {
      goto LABEL_49;
    }

    if (*(a1 + 808))
    {
      if (*(a1 + 809))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = CMSampleBufferGetFormatDescription(v15);
      if (!v21)
      {
        fig_log_get_emitter();
        started = FigSignalErrorAtGM();
        v24 = *(a1 + 809);
        v17 = *(a1 + 810);
        *&v43.value = *v16;
        v43.epoch = *(a1 + 800);
        if (started)
        {
          return started;
        }

        goto LABEL_50;
      }

      memset(&v48, 0, sizeof(v48));
      FigGaplessInfoGetDefaultAudioPrimingDuration(v21, &v48);
      if (v48.flags)
      {
        v47 = **&MEMORY[0x1E6960CC0];
        time1 = v48;
        v22 = CMTimeCompare(&v47, &time1) >> 31;
      }

      else
      {
        v22 = 0;
      }

      *(a1 + 809) = v22;
      *(a1 + 808) = 1;
      if (v22)
      {
LABEL_25:
        v18 = CMGetAttachment(v15, *MEMORY[0x1E6960560], 0);
        memset(&v48, 0, sizeof(v48));
        CMSampleBufferGetDuration(&v48, v15);
        memset(&v47, 0, sizeof(v47));
        CMTimeMakeFromDictionary(&v47, v18);
        if ((v47.flags & 1) == 0)
        {
          v47 = **&MEMORY[0x1E6960CC0];
        }

        if (*(a1 + 796))
        {
          *&lhs.value = *v16;
          lhs.epoch = *(a1 + 800);
          rhs = v47;
          CMTimeAdd(&time1, &lhs, &rhs);
          *v16 = *&time1.value;
          epoch = time1.epoch;
        }

        else
        {
          *v16 = *&v47.value;
          epoch = v47.epoch;
        }

        *(a1 + 800) = epoch;
        time1 = v47;
        lhs = v48;
        if ((CMTimeCompare(&time1, &lhs) & 0x80000000) == 0)
        {
          v17 = *(a1 + 810);
LABEL_49:
          v24 = *(a1 + 809);
          *&v43.value = *v16;
          v43.epoch = *(a1 + 800);
LABEL_50:
          if (v17 == 1)
          {
            v25 = (a1 + 776);
            started = AudioSampleBufferSplitterCreate((a1 + 776));
            if (started)
            {
              return started;
            }

            CMSampleBufferGetFormatDescription(v15);
            v26 = FigAudioFormatDescriptionEmploysDependentPackets() ? 2 : 1;
            started = AudioSampleBufferSplitterSetSplitMethod(*v25, v26);
            if (started)
            {
              return started;
            }

            if (v24)
            {
              v48 = *(v12 + 172);
              v47 = v43;
              CMTimeSubtract(&v42, &v48, &v47);
            }

            else
            {
              v42 = *(v12 + 172);
            }

            v27 = *v25;
            v48 = v42;
            v47 = *(v12 + 196);
            started = AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval(v27, &v48.value, &v47);
            if (started)
            {
              return started;
            }
          }

LABEL_60:
          v28 = *(a1 + 16);
          *&v48.value = v39;
          v48.epoch = v13;
          *&v47.value = v39;
          v47.epoch = v13;
          v29 = *(a1 + 344);
          if (v29 == 2)
          {
            v31 = *(a1 + 328);
            if (v31)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v48, v31);
              v30 = *(a1 + 328);
              goto LABEL_66;
            }
          }

          else
          {
            if (v29 != 1)
            {
              v33 = 0;
LABEL_68:
              v34 = *(a1 + 776);
              if (v34)
              {
                started = AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval(v34, &v47, 0);
                if (started)
                {
                  return started;
                }
              }

              else
              {
                v47 = *(v28 + 172);
              }

              memset(&time1, 0, sizeof(time1));
              lhs = v48;
              rhs = v47;
              CMTimeSubtract(&time1, &lhs, &rhs);
              lhs = *(v28 + 220);
              rhs = time1;
              if (CMTimeCompare(&lhs, &rhs) < 1 && v33)
              {
LABEL_86:
                started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
                if (started)
                {
                  return started;
                }

                v10 = 1;
                goto LABEL_79;
              }

              goto LABEL_73;
            }

            v30 = trackBufferQueueGetHead(a1);
            if (CMSampleBufferGetNumSamples(v30))
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v48, v30);
LABEL_66:
              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v30, 0);
              v33 = isFirstSampleAttachmentSync(SampleAttachmentsArray) != 0;
              goto LABEL_68;
            }
          }

LABEL_73:
          v48 = *(*(a1 + 16) + 48);
          started = trackBufferQueueDequeueAndRetain(a1, &v48, &v41);
          if (started)
          {
            return started;
          }

          v20 = v41;
          goto LABEL_75;
        }

LABEL_48:
        v17 = 1;
        *(a1 + 810) = 1;
        goto LABEL_49;
      }
    }

    v23 = MEMORY[0x1E6960CC0];
    *v16 = *MEMORY[0x1E6960CC0];
    *(a1 + 800) = *(v23 + 16);
    goto LABEL_48;
  }

  v48 = *(v8 + 48);
  started = trackBufferQueueDequeueAndRetain(a1, &v48, &sbuf);
  if (started)
  {
    return started;
  }

  v20 = sbuf;
LABEL_75:
  v35 = addSampleBufferToTrack_0(a1, v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (!v35)
  {
    v10 = 0;
    goto LABEL_79;
  }

  return v35;
}

uint64_t addSampleBufferWithSampleMediaTimingToTrack(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, int a7, double a8)
{
  HIDWORD(v199) = a7;
  v287[100] = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  ptr = 0;
  v268 = 0;
  valuePtr = 0;
  cf = 0;
  v17 = CMGetAttachment(sbuf, *MEMORY[0x1E6960528], 0);
  v18 = v17;
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
    v19 = CMGetAttachment(sbuf, *MEMORY[0x1E6960530], 0);
    if (DataBuffer)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (DataBuffer)
    {
      goto LABEL_6;
    }
  }

  DataBuffer = ImageBuffer;
  if (!(ImageBuffer | v18))
  {
    v21 = 0;
    goto LABEL_37;
  }

LABEL_6:
  SampleSizeArrayFromSbuf = getSampleSizeArrayFromSbuf(sbuf, 100, v287, &v268);
  if (SampleSizeArrayFromSbuf != -12737)
  {
    v21 = SampleSizeArrayFromSbuf;
    if (!SampleSizeArrayFromSbuf)
    {
      HIDWORD(v189) = 0;
      ptr = v287;
      goto LABEL_9;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if ((v268 - 0x2000000000000000) <= 0xE000000000000000 || (v33 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 8 * v268, 2888612535, 0), (ptr = v33) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_69();
    v21 = FigSignalErrorAtGM();
    goto LABEL_37;
  }

  v34 = getSampleSizeArrayFromSbuf(sbuf, v268, v33, 0);
  HIDWORD(v189) = 1;
  if (v34)
  {
    v21 = v34;
    v23 = 1;
    goto LABEL_38;
  }

LABEL_9:
  if (NumSamples)
  {
    if (!v268 && !v18)
    {
      OUTLINED_FUNCTION_63();
      if (v28)
      {
        v22 = FigMovieCreateContiguousBBufFromNonContiguousAudioSample(sbuf, *MEMORY[0x1E695E480], &cf, *MEMORY[0x1E695E480], &v268, &ptr);
        if (v22)
        {
LABEL_19:
          v21 = v22;
          v23 = HIDWORD(v189);
          goto LABEL_38;
        }

        HIDWORD(v189) = 1;
        DataBuffer = cf;
      }
    }
  }

  theArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (theArray)
  {
    if (CFArrayGetCount(theArray) != NumSamples)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      v22 = FigSignalErrorAtGM();
      if (v22)
      {
        goto LABEL_19;
      }
    }
  }

  v184 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], sbuf, 1u);
  v24 = *(a1 + 16);
  if (*(v24 + 384) || *(v24 + 533))
  {
    setTrackExtendsDefaultValuesIfNeeded(a1);
  }

  else if (!*(a1 + 728))
  {
    if (a3 && v268)
    {
      v25 = *a1;
      value = a4->value;
      v27 = *ptr;
      v28 = *a1 == 1635088502 || v25 == 1885954932;
      if (v28 || v25 == 1986618469)
      {
        v30 = 16842752;
      }

      else
      {
        OUTLINED_FUNCTION_63();
        if (v32)
        {
          v30 = (FigAudioFormatDescriptionEmploysDependentPackets() != 0) << 16;
        }

        else
        {
          v30 = 0;
        }
      }

      LengthOfDefaultByteStream = MovieTrackSetTrackExtendsDefaultValues(*(a1 + 736), 1, value, v27, v30);
      if (LengthOfDefaultByteStream)
      {
        goto LABEL_167;
      }

      *(a1 + 728) = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      LengthOfDefaultByteStream = FigSignalErrorAtGM();
      if (LengthOfDefaultByteStream)
      {
        goto LABEL_167;
      }
    }
  }

  v36 = ptr;
  v37 = v268;
  v174 = ptr;
  v179 = v268;
  if (v268 == 1)
  {
    v38 = *ptr * NumSamples;
  }

  else
  {
    v38 = 0;
    if (v268 >= 1)
    {
      do
      {
        v39 = *v36++;
        v38 += v39;
        --v37;
      }

      while (v37);
    }
  }

  v40 = *(a1 + 696);
  if (v40 <= v38)
  {
    v40 = v38;
  }

  *(a1 + 696) = v40;
  v41 = *(a1 + 16);
  if (*(v41 + 704) > v38)
  {
    v38 = *(v41 + 704);
  }

  *(v41 + 704) = v38;
  v42 = valuePtr;
  *v247 = *a5;
  *&v247[16] = *(a5 + 16);
  *v229 = *a6;
  *&v229[16] = *(a6 + 16);
  if (*(v41 + 529) && !*(v41 + 530))
  {
    LengthOfDefaultByteStream = MovieInformationBeginBuildingMovieFragment(*(v41 + 736), *(v41 + 531), *(v41 + 533) == 0);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    *(v41 + 530) = 1;
  }

  HIDWORD(v272) = 0;
  LengthOfDefaultByteStream = MovieTrackFindOrAddSampleDescription(*(a1 + 736), FormatDescription, v19, &v272 + 1);
  if (LengthOfDefaultByteStream)
  {
LABEL_167:
    v21 = LengthOfDefaultByteStream;
    v23 = HIDWORD(v189);
    v48 = v184;
    if (!v184)
    {
      goto LABEL_38;
    }

LABEL_140:
    CFRelease(v48);
    goto LABEL_38;
  }

  v205 = v42;
  v43 = a3 != 1 || NumSamples <= 1;
  v44 = MEMORY[0x1E6960CC0];
  if (v43)
  {
    if (a3 < 1)
    {
      goto LABEL_79;
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_5();
    OUTLINED_FUNCTION_18_21();
    if (!OUTLINED_FUNCTION_39_12())
    {
      goto LABEL_78;
    }
  }

  v46 = a4;
  v47 = a3;
  while (!*(a1 + 940))
  {
    v286 = *v46;
    OUTLINED_FUNCTION_18_21();
    if (!OUTLINED_FUNCTION_39_12())
    {
      *(a1 + 940) = 1;
    }

    v46 += 3;
    if (!--v47)
    {
      goto LABEL_79;
    }
  }

LABEL_78:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_69();
  LengthOfDefaultByteStream = FigSignalErrorAtGM();
  if (LengthOfDefaultByteStream)
  {
    goto LABEL_167;
  }

LABEL_79:
  if (DataBuffer)
  {
    v48 = v184;
    if (!*(v41 + 329) || !*(v41 + 530))
    {
      goto LABEL_87;
    }

    if (!*(v41 + 541))
    {
      v49 = *(v41 + 536);
      if (v49 <= 2)
      {
        *(v41 + 540) = 0x100u >> (8 * v49);
      }

      *(v41 + 541) = 1;
    }

    if (*(v41 + 540) || !*(a1 + 905))
    {
      goto LABEL_87;
    }

    LODWORD(v285.value) = 0;
    v286.value = 0;
    LengthOfDefaultByteStream = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(v41 + 752), &v286);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    LengthOfDefaultByteStream = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(v41 + 752), *(a1 + 760), &v285);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    v145 = 0xFFFFFFFF80000000;
    if (LODWORD(v285.value) >= 2 && v286.value % SLODWORD(v285.value))
    {
      v145 = SLODWORD(v285.value) - v286.value % SLODWORD(v285.value) - 0x80000000;
    }

    if ((v145 + v286.value - *(a1 + 888)) > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_87:
      appended = MovieSampleDataWriterTrackAppendSampleData(*(v41 + 752), *(a1 + 760), DataBuffer, HIDWORD(v272), NumSamples, a3, a4, v179, v174, theArray, v48);
      if (!appended)
      {
        goto LABEL_88;
      }

LABEL_101:
      v21 = appended;
      v23 = HIDWORD(v189);
      if (!v48)
      {
        goto LABEL_38;
      }

      goto LABEL_140;
    }

    v146 = *(v41 + 488);
    if (v146)
    {
      Count = CFArrayGetCount(v146);
      if (Count >= 1)
      {
        v148 = Count;
        v149 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v41 + 488), v149);
          LengthOfDefaultByteStream = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(ValueAtIndex);
          if (LengthOfDefaultByteStream)
          {
            goto LABEL_167;
          }

          ValueAtIndex[601] = 0;
        }

        while (v148 != ++v149);
      }
    }

    clearAllTracksHeaderDataCompleteFlag(v41);
    v151 = *(v41 + 488);
    if (v151)
    {
      v152 = CFArrayGetCount(v151);
    }

    else
    {
      v152 = 0;
    }

    memset(&v286, 0, sizeof(v286));
    v285 = *(a1 + 648);
    *&v284.value = *(a1 + 108);
    OUTLINED_FUNCTION_6_52(*(a1 + 124));
    CMTimeSubtract(v155, v153, v154);
    OUTLINED_FUNCTION_18_21();
    v48 = v184;
    if (*(v41 + 329))
    {
      v156 = 96;
    }

    else
    {
      if (!*(v41 + 330))
      {
        goto LABEL_162;
      }

      v156 = 144;
    }

    v285 = *(v41 + v156);
LABEL_162:
    memset(&v284, 0, sizeof(v284));
    v283 = v286;
    v282 = v285;
    CMTimeAdd(&v284, &v283, &v282);
    if (v152 >= 1)
    {
      for (i = 0; i != v152; ++i)
      {
        v158 = CFArrayGetValueAtIndex(*(v41 + 488), i);
        v282 = v284;
        v281 = *(v158 + 108);
        CMTimeAdd(&v283, &v282, &v281);
        *(v158 + 28) = v283;
      }
    }

    goto LABEL_87;
  }

  v48 = v184;
  appended = MovieSampleDataWriterTrackAppendSampleReference(*(v41 + 752), *(a1 + 760), v42, HIDWORD(v272), NumSamples, a3, a4, v179, v174, theArray, v184);
  if (appended)
  {
    goto LABEL_101;
  }

LABEL_88:
  v271 = *v247;
  v269 = *v229;
  v283 = **&MEMORY[0x1E6960C70];
  v210 = *v44;
  *&v282.value = *v44;
  v51 = *(v44 + 2);
  v282.epoch = v51;
  v281 = **&MEMORY[0x1E6960C88];
  v280 = **&MEMORY[0x1E6960C80];
  v279 = v283;
  if (a3 == 1)
  {
    OUTLINED_FUNCTION_63_5();
    v285 = a4[2];
    v284 = a4[1];
    memset(&v278, 0, sizeof(v278));
    time = *a4;
    CMTimeMultiply(&rhs, &time, NumSamples - 1);
    OUTLINED_FUNCTION_56_7();
    CMTimeAdd(&v278, &time, &rhs);
    memset(&rhs, 0, sizeof(rhs));
    OUTLINED_FUNCTION_58_3();
    lhs = a4[2];
    CMTimeSubtract(&rhs, &time, &lhs);
    OUTLINED_FUNCTION_54_9();
    CMTimeMultiply(&time, &lhs, NumSamples);
    lhs = v285;
    CMTimeAdd(&v283, &lhs, &time);
    OUTLINED_FUNCTION_12_30();
    CMTimeMultiply(&v282, &time, NumSamples);
    v281 = v284;
    v280 = v278;
    time = v278;
    OUTLINED_FUNCTION_54_9();
    CMTimeAdd(&v279, &time, &lhs);
    v52 = rhs.value;
    v53 = rhs.value;
    v23 = HIDWORD(v189);
  }

  else
  {
    v23 = HIDWORD(v189);
    if (a3 < 1)
    {
      v53 = 0x80000000;
      v52 = 0x7FFFFFFF;
    }

    else
    {
      v54 = a4 + 1;
      v52 = 0x7FFFFFFF;
      v53 = 0x80000000;
      do
      {
        v286 = v54[-1];
        v285 = v54[1];
        v284 = *v54;
        memset(&v278, 0, sizeof(v278));
        rhs = *v54;
        OUTLINED_FUNCTION_58_3();
        v63 = OUTLINED_FUNCTION_34_13(v55, v56, v57, v58, v59, v60, v61, v62, v159, v164, v169, v174, v179, v184, v189, theArray, v199, v205, v210, *(&v210 + 1), v219, NumSamples, *v229, *&v229[8], *&v229[16], v242, *v247, *&v247[8], *&v247[16], v260, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, time.value, *&time.timescale, time.epoch, v276, rhs.value);
        CMTimeSubtract(v65, v63, v64);
        rhs = v285;
        OUTLINED_FUNCTION_12_30();
        v74 = OUTLINED_FUNCTION_34_13(v66, v67, v68, v69, v70, v71, v72, v73, v160, v165, v170, v175, v180, v185, v190, theArraya, v200, v206, v211, v215, v220, v225, v230, v234, v238, v243, v248, v252, v256, v261, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, time.value, *&time.timescale, time.epoch, v276, rhs.value);
        CMTimeAdd(v76, v74, v75);
        rhs = v282;
        OUTLINED_FUNCTION_12_30();
        v85 = OUTLINED_FUNCTION_34_13(v77, v78, v79, v80, v81, v82, v83, v84, v161, v166, v171, v176, v181, v186, v191, theArrayb, v201, v207, v212, v216, v221, v226, v231, v235, v239, v244, v249, v253, v257, v262, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, time.value, *&time.timescale, time.epoch, v276, rhs.value);
        v88 = CMTimeAdd(v87, v85, v86);
        *&rhs.timescale = *&v284.timescale;
        v96 = OUTLINED_FUNCTION_34_13(v88, v89, v90, v91, v92, v93, v94, v95, v162, v167, v172, v177, v182, v187, v192, theArrayc, v202, v208, v213, v217, v222, v227, v232, v236, v240, v245, v250, v254, v258, v263, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, v281.value, *&v281.timescale, v281.epoch, v276, v284.value);
        CMTimeMinimum(v98, v96, v97);
        rhs = v280;
        OUTLINED_FUNCTION_56_7();
        v107 = OUTLINED_FUNCTION_34_13(v99, v100, v101, v102, v103, v104, v105, v106, v163, v168, v173, v178, v183, v188, v193, theArrayd, v203, v209, v214, v218, v223, v228, v233, v237, v241, v246, v251, v255, v259, v264, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, time.value, *&time.timescale, time.epoch, v276, rhs.value);
        if (CMTimeCompare(v107, v108) < 0)
        {
          v280 = v284;
          rhs = v284;
          OUTLINED_FUNCTION_12_30();
          v117 = OUTLINED_FUNCTION_34_13(v109, v110, v111, v112, v113, v114, v115, v116, v159, v164, v169, v174, v179, v184, v189, theArray, v199, v205, v210, *(&v210 + 1), v219, NumSamples, *v229, *&v229[8], *&v229[16], v242, *v247, *&v247[8], *&v247[16], v260, valuePtr, cf, ptr, v268, v269.value, *&v269.timescale, v269.epoch, v270, v271.value, *&v271.timescale, v271.epoch, v272, lhs.value, *&lhs.timescale, lhs.epoch, v274, time.value, *&time.timescale, time.epoch, v276, rhs.value);
          CMTimeAdd(v119, v117, v118);
        }

        if (v52 >= SLODWORD(v278.value))
        {
          v52 = v278.value;
        }

        if (v53 <= SLODWORD(v278.value))
        {
          v53 = v278.value;
        }

        v54 += 3;
        --a3;
      }

      while (a3);
    }
  }

  *(a1 + 256) = v283;
  v285 = *(a1 + 136);
  *&v284.value = *&v282.value;
  OUTLINED_FUNCTION_6_52(v282.epoch);
  CMTimeAdd(v122, v120, v121);
  *(a1 + 136) = v286;
  v285 = v281;
  *&v284.value = *(a1 + 280);
  OUTLINED_FUNCTION_6_52(*(a1 + 296));
  CMTimeMinimum(v125, v123, v124);
  *(a1 + 280) = v286;
  v286 = *(a1 + 304);
  *&v285.value = *&v280.value;
  if ((OUTLINED_FUNCTION_30_14(v280.epoch) & 0x80000000) != 0)
  {
    *(a1 + 304) = v280;
    *(a1 + 160) = v279;
  }

  v126 = *(a1 + 336);
  if (v52 < v126)
  {
    v126 = v52;
  }

  *(a1 + 336) = v126;
  v127 = *(a1 + 340);
  if (v53 > v127)
  {
    v127 = v53;
  }

  *(a1 + 340) = v127;
  if (*(a1 + 492))
  {
    v278 = v281;
    rhs = v271;
    time = v279;
    lhs = v269;
    v128 = *(a1 + 496);
    *&v286.value = v210;
    v286.epoch = v51;
    v285 = v271;
    v129 = OUTLINED_FUNCTION_39_12() != 0;
    *&v286.value = v210;
    v286.epoch = v51;
    *&v285.value = *&v269.value;
    v130 = OUTLINED_FUNCTION_30_14(v269.epoch);
    v131 = editBoundaryDetectorDetectBoundary(*(v128 + 8), SHIDWORD(v199), v129, v130 != 0, a8);
    if (HIDWORD(v199) && !v130 && *(*(v128 + 8) + 8) == 3)
    {
      lhs = v271;
      *&rhs.value = v210;
      rhs.epoch = v51;
    }

    if (!v131 || !editBuilderResetCurrentEditMediaTime(v128))
    {
      v132 = *(v128 + 16);
      if ((*(v132 + 24) & 1) == 0 || (v286 = v278, v133 = *(v132 + 12), v285.epoch = *(v132 + 28), *&v285.value = v133, (OUTLINED_FUNCTION_39_12() & 0x80000000) != 0))
      {
        *(v132 + 12) = v278;
      }

      if (*(v132 + 72))
      {
        v285 = *(v132 + 60);
        *&v284.value = *&rhs.value;
        OUTLINED_FUNCTION_6_52(rhs.epoch);
        CMTimeAdd(v137, v135, v136);
        *(v132 + 60) = *&v286.value;
        epoch = v286.epoch;
      }

      else
      {
        *(v132 + 60) = *&rhs.value;
        epoch = rhs.epoch;
      }

      *(v132 + 76) = epoch;
      if ((*(v132 + 48) & 1) == 0 || (v286 = *(v132 + 36), *&v285.value = *&time.value, (OUTLINED_FUNCTION_30_14(time.epoch) & 0x80000000) != 0))
      {
        *(v132 + 36) = time;
      }

      if (*(v132 + 96))
      {
        v285 = *(v132 + 84);
        *&v284.value = *&lhs.value;
        OUTLINED_FUNCTION_6_52(lhs.epoch);
        CMTimeAdd(v141, v139, v140);
        *(v132 + 84) = *&v286.value;
        v138 = v286.epoch;
      }

      else
      {
        *(v132 + 84) = *&lhs.value;
        v138 = lhs.epoch;
      }

      *(v132 + 100) = v138;
      v142 = *(v132 + 112);
      if (v142 == -1.0 || v142 != a8)
      {
        *(v132 + 112) = a8;
      }

      v144 = *(a1 + 16);
      if (*(v144 + 329))
      {
        if (*(v144 + 352))
        {
          v286 = v271;
          *&v285.value = v210;
          v285.epoch = v51;
          if (OUTLINED_FUNCTION_39_12() || (v286 = v269, *&v285.value = v210, v285.epoch = v51, OUTLINED_FUNCTION_39_12()))
          {
            *(a1 + 353) = 1;
          }
        }
      }
    }
  }

  v21 = 0;
  if (v48)
  {
    goto LABEL_140;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], ptr);
  }

  return v21;
}

double setNextCumulatedInterleavingDuration(CMTime *a1)
{
  epoch = a1->epoch;
  v3 = a1 + 27;
  lhs = a1[27];
  v5 = *(epoch + 48);
  CMTimeAdd(&v7, &lhs, &v5);
  *v3 = v7;
  return setTrackHeaderDataCompleteFlagIfCumulatedInterleavingDurationReachesCumulatedMovieFragmentDuration(a1);
}

_BYTE *sbp_bq_minOrMaxPTSChanged_orEndOfDataReached()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t sbp_vtcs_finishPendingProcessing()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);
  v2 = **&MEMORY[0x1E6960C70];
  return VTCompressionSessionCompleteFrames(v0, &v2);
}

uint64_t sbp_fac_finishPendingProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  *(DerivedStorage + 196) = 1;
  if (*(DerivedStorage + 17))
  {
    v2 = 0;
  }

  else
  {
    v2 = RunConverter(DerivedStorage, 0);
  }

  *(v1 + 196) = 2;
  *(v1 + 208) = 1;
  if (*(v1 + 80))
  {
    AudioConverterReleaseHardwareCodec();
    *(v1 + 80) = 0;
  }

  return v2;
}

uint64_t figMovieWriter_EndSession(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 335))
  {
    figMovieWriter_EndSession_cold_1(&v7);
    v5 = v7;
  }

  else if (*(DerivedStorage + 36))
  {
    if (*(DerivedStorage + 560))
    {
      v4 = *a2;
      *(DerivedStorage + 680) = *(a2 + 2);
      *(DerivedStorage + 664) = v4;
      *(DerivedStorage + 569) = 1;
      FigSemaphoreSignal();
      FigSemaphoreWaitRelative();
      v5 = *(DerivedStorage + 688);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    figMovieWriter_EndSession_cold_2(&v8);
    v5 = v8;
  }

  FigSimpleMutexUnlock();
  return v5;
}

size_t figMovieWriter_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 335))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v3 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  if (!*(DerivedStorage + 560) || (*(DerivedStorage + 568) = 1, FigSemaphoreSignal(), FigSemaphoreWaitRelative(), v1 = *(DerivedStorage + 688), !v1))
  {
    if (!*(DerivedStorage + 384))
    {
      v1 = 0;
      goto LABEL_6;
    }

    v3 = callFragmentCallback(DerivedStorage);
LABEL_8:
    v1 = v3;
  }

LABEL_6:
  FigSimpleMutexUnlock();
  return v1;
}

CMTime *getSessionMediaDisplayStartTime@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v4 + 16);
  if ((~HIDWORD(result[12].value) & 5) != 0)
  {
    a2->epoch = *&result[12].timescale;
    *&a2->value = *&result[11].epoch;
  }

  timescale = result[4].timescale;
  if (timescale)
  {
    v7 = v2;
    v8 = v3;
    v6 = *a2;
    return CMTimeConvertScale(a2, &v6, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  }

  return result;
}

uint64_t figMovieWriter_WriteHeader()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 335))
  {
    figMovieWriter_WriteHeader_cold_1(&v3);
    v1 = v3;
  }

  else if (*(DerivedStorage + 560))
  {
    *(DerivedStorage + 570) = 1;
    FigSemaphoreSignal();
    FigSemaphoreWaitRelative();
    v1 = *(DerivedStorage + 688);
  }

  else
  {
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t writeMovieHeader(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 329))
  {
    v6 = *(a1 + 360);
    v7 = *(a1 + 368);
  }

  else
  {
    v6 = *(a1 + 360);
    v7 = *(a1 + 368);
    if (!*(a1 + 384))
    {
      v10 = writeMovieAtom(a1, a2, a3);
      if (!v10)
      {
        if (!*(a1 + 352) || (v10 = MovieSampleDataWriterWriteFreeAtom(*(a1 + 752), v6, v7), !v10))
        {
          *(a1 + 352) = 1;
          goto LABEL_6;
        }
      }

      return v10;
    }
  }

  if (!*(a1 + 352))
  {
    v10 = writeMovieAtom(a1, a2, a3);
    if (!v10)
    {
      if (!*(a1 + 532))
      {
LABEL_12:
        if (!*(a1 + 531))
        {
          MovieInformationReleaseMovieHeaderSampleTables(*(a1 + 736));
        }

        *(a1 + 529) = 1;
        *(a1 + 352) = 1;
LABEL_24:
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        goto LABEL_6;
      }

      v10 = MovieSampleDataWriterWriteFreeAtom(*(a1 + 752), v6, v7);
      if (!v10)
      {
        *(a1 + 532) = 0;
        goto LABEL_12;
      }
    }

    return v10;
  }

  if (!*(a1 + 530))
  {
    goto LABEL_6;
  }

  theBuffer = 0;
  createMovieFragmentAtomBBuf(a1, &theBuffer);
  v12 = theBuffer;
  if (v11)
  {
    appended = v11;
  }

  else
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength)
    {
      v14 = DataLength;
      *(a1 + 344) += DataLength;
      appended = MovieSampleDataWriterAppendHeader(*(a1 + 752), v12, 0);
      if (!appended)
      {
        MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), a2, a3);
        v15 = 0;
        v16 = *(a1 + 712);
        if (v16 <= v14)
        {
          v16 = v14;
        }

        *(a1 + 712) = v16;
        if (v12)
        {
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
      appended = 0;
    }
  }

  v15 = 1;
  if (v12)
  {
LABEL_21:
    CFRelease(v12);
  }

LABEL_22:
  if (appended)
  {
    return appended;
  }

  MovieInformationReleaseMovieFragmentSampleTables(*(a1 + 736));
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_6:
  clearAllTracksFirstSampleInfoInFragment(a1);
  return 0;
}

uint64_t writeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a4, a2, a3, 0);
}

uint64_t writeMovieAtom(uint64_t a1, uint64_t a2, int a3)
{
  theBuffer = 0;
  cf = 0;
  if (*(a1 + 329))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 384) != 0;
  }

  MovieAtomBBuf = MovieSampleDataWriterCopyURLOfDefaultByteStream(*(a1 + 752), *MEMORY[0x1E695E480], &cf);
  if (MovieAtomBBuf)
  {
    goto LABEL_16;
  }

  MovieAtomBBuf = createMovieAtomBBuf(a1, v6, cf, &theBuffer);
  if (MovieAtomBBuf)
  {
    goto LABEL_16;
  }

  v8 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  *(a1 + 368) = DataLength;
  *(a1 + 344) += DataLength;
  if (*(a1 + 330))
  {
    CMBlockBufferGetDataLength(v8);
    v16 = 0;
    MovieAtomBBuf = CMByteStreamAppendBlockBuffer();
    if (MovieAtomBBuf)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MovieAtomBBuf = MovieSampleDataWriterAppendHeader(*(a1 + 752), v8, (a1 + 360));
    if (MovieAtomBBuf)
    {
      goto LABEL_16;
    }

    MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), a2, a3);
  }

  v16 = 0;
  if (!*(a1 + 448))
  {
    goto LABEL_22;
  }

  MovieAtomBBuf = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(a1 + 752), &v16);
  if (MovieAtomBBuf)
  {
LABEL_16:
    v12 = MovieAtomBBuf;
    goto LABEL_17;
  }

  v10 = *(a1 + 464);
  v11 = v10 - v16;
  if (v10 != v16)
  {
    if (v11 < 8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      MovieAtomBBuf = FigSignalErrorAtGM();
    }

    else
    {
      MovieAtomBBuf = MovieSampleDataWriterAppendFreeAtom(*(a1 + 752), v11);
    }

    goto LABEL_16;
  }

LABEL_22:
  v12 = 0;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v12;
}

uint64_t createDefaultTrackEditSegmentArray(CFAllocatorRef allocator, uint64_t a2, const __CFArray **a3)
{
  v3 = a3;
  v6 = *(a2 + 16);
  if (*(v6 + 384))
  {
    v7 = *MEMORY[0x1E6960CC0];
    *&time.value = *MEMORY[0x1E6960CC0];
    v8 = *(MEMORY[0x1E6960CC0] + 16);
    time.epoch = v8;
    v179.value = 0;
    if (*a2 == 1936684398)
    {
      v150 = v7;
      v9 = FigCFEqual();
      v7 = v150;
      if (*(a2 + 492))
      {
        if (v9)
        {
          FirstEditBuilder = getFirstEditBuilder(a2);
          Count = CFArrayGetCount(*(FirstEditBuilder + 24));
          IsValid = editMediaTimeIsValid(*(FirstEditBuilder + 16));
          v7 = v150;
          if (Count + IsValid)
          {
            EditMediaTimeAtIndex = editBuilderGetEditMediaTimeAtIndex(FirstEditBuilder, 0);
            v7 = v150;
            time = *(EditMediaTimeAtIndex + 60);
          }
        }
      }
    }

    __dst[0] = time;
    *&__dst[1].value = v7;
    __dst[1].epoch = v8;
    *&__dst[2].value = v7;
    v168 = v7;
    __dst[2].epoch = v8;
    v169 = v8;
    v14 = copyFigTimeMappingAsDictionary(allocator, __dst, &v179);
    if (!v14)
    {
      v15 = OUTLINED_FUNCTION_265();
      Mutable = CFArrayCreateMutable(v15, v16, v17);
      if (Mutable)
      {
        v19 = Mutable;
        value = v179.value;
        appendTrackEditSegmentDictionary(Mutable, v179.value);
        v22 = v21;
        if (!v21)
        {
          if (!value)
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        CFRelease(v19);
        goto LABEL_72;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      v14 = FigSignalErrorAtGM();
    }

    v22 = v14;
LABEL_72:
    v19 = 0;
    value = v179.value;
    if (v179.value)
    {
LABEL_11:
      v23 = value;
LABEL_12:
      CFRelease(v23);
    }

LABEL_13:
    if (!v22)
    {
      goto LABEL_14;
    }

    return v22;
  }

  if (!*(a2 + 492))
  {
    v116 = *(v6 + 488);
    if (v116)
    {
      v117 = CFArrayGetCount(v116) == 1;
    }

    else
    {
      v117 = 0;
    }

    time2.value = 0;
    v118 = CFArrayGetCount(*(a2 + 424));
    OUTLINED_FUNCTION_48_9(MEMORY[0x1E6960CC0]);
    v119 = OUTLINED_FUNCTION_265();
    v122 = CFArrayCreateMutable(v119, v120, v121);
    if (v122)
    {
      if (v118 < 1)
      {
LABEL_49:
        if (*(a2 + 480))
        {
          memcpy(__dst, (a2 + 184), sizeof(__dst));
          v132 = *(a2 + 16);
          v168 = *(v132 + 24);
          v169 = *(v132 + 40);
          bzero(v172, 0xA0uLL);
          v170 = *MEMORY[0x1E6960C70];
          v133 = *(MEMORY[0x1E6960C70] + 16);
          *&v172[4] = *(a2 + 468);
          v173 = *(a2 + 484);
          v174 = v170;
          v171 = v133;
          v175 = v133;
          v178 = *(a2 + 448);
          v177 = *(a2 + 432);
          getSessionMediaDisplayStartTime(a2, v176);
          time1 = *(a2 + 160);
          v134 = *(a2 + 104);
          v3 = a3;
          if (v134)
          {
            time = *(a2 + 160);
            CMTimeConvertScale(&time1, &time, v134, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            v135 = *(a2 + 104);
          }

          else
          {
            v135 = 0;
          }

          v176[1] = time1;
          v136 = *(a2 + 344);
          v137 = *(*(a2 + 16) + 20);
          time = v179;
          v138 = createTrackEditSegmentArrayFromSessionTime(allocator, 0, v136, &time, v135, v137, __dst, &time2, 0);
          if (v138 || (v139 = time2.value, appendTrackEditSegmentArray(v122, time2.value), v138))
          {
            v22 = v138;
            v19 = 0;
          }

          else
          {
            if (v139)
            {
              CFRelease(v139);
              time2.value = 0;
            }

            v22 = 0;
            v19 = v122;
            v122 = 0;
          }

LABEL_60:
          v130 = time2.value;
          if (time2.value)
          {
LABEL_61:
            CFRelease(v130);
          }

LABEL_62:
          if (v122)
          {
            v23 = v122;
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        v22 = 0;
        v19 = v122;
        v122 = 0;
LABEL_51:
        v3 = a3;
        goto LABEL_60;
      }

      v123 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 424), v123);
        v125 = *(a2 + 344);
        v126 = v125 == 2 && ValueAtIndex[37] == 2 && v117;
        v127 = *(a2 + 104);
        v128 = *(*(a2 + 16) + 20);
        __dst[0] = v179;
        TrackEditSegmentArrayFromSessionTime = createTrackEditSegmentArrayFromSessionTime(allocator, v126, v125, __dst, v127, v128, ValueAtIndex, &time2, &v179);
        if (TrackEditSegmentArrayFromSessionTime)
        {
          break;
        }

        v130 = time2.value;
        appendTrackEditSegmentArray(v122, time2.value);
        if (v131)
        {
          v22 = v131;
          v19 = 0;
          v3 = a3;
          if (v130)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        if (v130)
        {
          CFRelease(v130);
          time2.value = 0;
        }

        if (v118 == ++v123)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      TrackEditSegmentArrayFromSessionTime = FigSignalErrorAtGM();
    }

    v22 = TrackEditSegmentArrayFromSessionTime;
    v19 = 0;
    goto LABEL_51;
  }

  cf = 0;
  v25 = CFArrayGetCount(*(a2 + 424));
  memset(__dst, 0, 24);
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_48_9(MEMORY[0x1E6960CC0]);
  v26 = OUTLINED_FUNCTION_265();
  v29 = CFArrayCreateMutable(v26, v27, v28);
  if (!v29)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    v140 = FigSignalErrorAtGM();
    if (v140)
    {
      return v140;
    }

    v19 = 0;
    goto LABEL_14;
  }

  v19 = v29;
  if (v25 >= 1)
  {
    for (i = 0; v25 != i; ++i)
    {
      v31 = CFArrayGetValueAtIndex(*(a2 + 424), i);
      time1 = *(v31 + 124);
      time2 = *(v31 + 3);
      CMTimeMaximum(__dst, &time1, &time2);
      time1 = *(v31 + 152);
      time2 = *(v31 + 4);
      v32 = CMTimeMinimum(&time, &time1, &time2);
      OUTLINED_FUNCTION_693(v32, v33, v34, v35, v36, v37, v38, v39, v141, v145, v149, v155, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, time1.value, *&time1.timescale, time1.epoch, v166, *&__dst[0].value);
      OUTLINED_FUNCTION_26_18();
      v40 = CMTimeCompare(&time1, &time2);
      if ((v40 & 0x80000000) != 0)
      {
        if (v31[36])
        {
          OUTLINED_FUNCTION_55_9(v40, v41, v42, v43, v44, v45, v46, v47, v141, v145, v149, v155, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, time1.value, *&time1.timescale, time1.epoch, v166, *&__dst[0].value);
          *&v161.value = *(v31 + 24);
          OUTLINED_FUNCTION_10_32();
          v51 = CMTimeSubtract(v50, v48, v49);
          OUTLINED_FUNCTION_21_18(v51, v52, v53, v54, v55, v56, v57, v58, v142, v146, v151, v156, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, *&time1.value);
          OUTLINED_FUNCTION_26_18();
          *&v161.value = *(v31 + 24);
          OUTLINED_FUNCTION_10_32();
          CMTimeSubtract(v61, v59, v60);
          time = time1;
        }

        OUTLINED_FUNCTION_51_10();
        OUTLINED_FUNCTION_693(v62, v63, v64, v65, v66, v67, v68, v69, v141, v145, v149, v155, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, time1.value, *&time1.timescale, time1.epoch, v166, *&__dst[0].value);
        OUTLINED_FUNCTION_26_18();
        *&v161.value = *(v31 + 248);
        v70 = *(v31 + 34);
        v161.epoch = *(v31 + 33);
        v159 = v179;
        v72 = editBuilderCreateTimeMappingArray(v70, v71, &time1, &time2, &v161, &v159, allocator, &cf, &v179);
        v73 = cf;
        if (v72)
        {
          goto LABEL_64;
        }

        appendTrackEditSegmentArray(v19, cf);
        if (v72)
        {
          goto LABEL_64;
        }

        if (v73)
        {
          CFRelease(v73);
          cf = 0;
        }
      }
    }
  }

  if ((*(a2 + 480) & 1) == 0)
  {
LABEL_14:
    v22 = 0;
    *v3 = v19;
    return v22;
  }

  v74 = *(a2 + 16);
  time2 = *(a2 + 468);
  *&v161.value = *(v74 + 24);
  OUTLINED_FUNCTION_10_32();
  v78 = CMTimeMaximum(v77, v75, v76);
  OUTLINED_FUNCTION_21_18(v78, v79, v80, v81, v82, v83, v84, v85, v141, v145, v149, v155, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, *&time1.value);
  if (*(a2 + 220))
  {
    OUTLINED_FUNCTION_55_9(v86, v87, v88, v89, v90, v91, v92, v93, v143, v147, v152, v157, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, time1.value, *&time1.timescale, time1.epoch, v166, *&__dst[0].value);
    *&v161.value = *(a2 + 208);
    OUTLINED_FUNCTION_10_32();
    v97 = CMTimeSubtract(v96, v94, v95);
    OUTLINED_FUNCTION_21_18(v97, v98, v99, v100, v101, v102, v103, v104, v144, v148, v153, v158, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, *&time1.value);
  }

  time = **&MEMORY[0x1E6960C70];
  OUTLINED_FUNCTION_51_10();
  OUTLINED_FUNCTION_693(v105, v106, v107, v108, v109, v110, v111, v112, v143, v147, v152, v157, v159.value, *&v159.timescale, v159.epoch, v160, v161.value, *&v161.timescale, v161.epoch, v162, time2.value, *&time2.timescale, time2.epoch, cf, time1.value, *&time1.timescale, time1.epoch, v166, *&__dst[0].value);
  time2 = *(a2 + 432);
  v161 = v179;
  v72 = editBuilderCreateTimeMappingArray(v113, v114, &time1, v115, &time2, &v161, allocator, &cf, 0);
  v73 = cf;
  if (!v72)
  {
    appendTrackEditSegmentArray(v19, cf);
    if (!v72)
    {
      if (v73)
      {
        CFRelease(v73);
      }

      goto LABEL_14;
    }
  }

LABEL_64:
  v22 = v72;
  if (v73)
  {
    CFRelease(v73);
  }

  CFRelease(v19);
  return v22;
}

uint64_t createTrackEditSegmentArrayFromSessionTime(const __CFAllocator *a1, int a2, int a3, CMTime *a4, int32_t a5, int32_t a6, uint64_t a7, const __CFArray **a8, uint64_t a9)
{
  v13 = a1;
  v79 = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E6960C70];
  v77 = *MEMORY[0x1E6960C70];
  v78 = *(MEMORY[0x1E6960C70] + 8);
  v15 = *(MEMORY[0x1E6960C70] + 16);
  v75 = v77;
  v76 = v78;
  *&v67.value = *MEMORY[0x1E6960CC0];
  v16 = *(MEMORY[0x1E6960CC0] + 16);
  v67.epoch = v16;
  *&v66.value = *&v67.value;
  v66.epoch = v16;
  v56 = *&v67.value;
  *&v65.value = *&v67.value;
  v65.epoch = v16;
  v73 = v77;
  v74 = v78;
  v71 = v77;
  v72 = v78;
  cf = 0;
  v17 = *(MEMORY[0x1E6960C78] + 48);
  *&v61[16] = *(MEMORY[0x1E6960C78] + 32);
  v62 = v17;
  v18 = *(MEMORY[0x1E6960C78] + 80);
  *v63 = *(MEMORY[0x1E6960C78] + 64);
  *&v63[16] = v18;
  v19 = *(MEMORY[0x1E6960C78] + 16);
  v60 = *MEMORY[0x1E6960C78];
  *v61 = v19;
  v20 = *(a7 + 60);
  v54 = *MEMORY[0x1E6960C70];
  *&v59.value = *MEMORY[0x1E6960C70];
  v21 = v15;
  v59.epoch = v15;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    createTrackEditSegmentArrayFromSessionTime_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v23 = Mutable;
  v46 = a3;
  v47 = a2;
  v24 = *(v14 + 12);
  time1 = *(a7 + 124);
  time2 = *(a7 + 72);
  CMTimeMaximum(&v59, &time1, &time2);
  time2 = *(a7 + 152);
  rhs = *(a7 + 96);
  CMTimeMinimum(&time1, &time2, &rhs);
  flags = time1.flags;
  timescale = time1.timescale;
  value = time1.value;
  epoch = time1.epoch;
  time2 = v59;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    goto LABEL_6;
  }

  v49 = v24;
  if ((v20 & 1) == 0)
  {
    if (flags)
    {
      time2.value = value;
      time2.timescale = timescale;
      time2.flags = flags;
      time2.epoch = epoch;
      rhs = v59;
      CMTimeSubtract(&time1, &time2, &rhs);
      v67 = time1;
      time2 = time1;
      CMTimeConvertScale(&time1, &time2, a6, kCMTimeRoundingMethod_QuickTime);
      v67 = time1;
    }

LABEL_6:
    v27 = v21;
    v28 = v56;
    goto LABEL_7;
  }

  v45 = v13;
  time2 = v59;
  rhs = *(a7 + 48);
  CMTimeSubtract(&time1, &time2, &rhs);
  v78 = time1.timescale;
  v77 = time1.value;
  time2 = time1;
  CMTimeConvertScale(&time1, &time2, a5, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  v77 = time1.value;
  v38 = time1.flags;
  v78 = time1.timescale;
  v39 = time1.epoch;
  if (flags)
  {
    time2.value = value;
    time2.timescale = timescale;
    time2.flags = flags;
    time2.epoch = epoch;
    rhs = *(a7 + 48);
    CMTimeSubtract(&time1, &time2, &rhs);
    v76 = time1.timescale;
    v75 = time1.value;
    time2 = time1;
    CMTimeConvertScale(&time1, &time2, a5, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v75 = time1.value;
    v40 = time1.flags;
    v76 = time1.timescale;
    v41 = time1.epoch;
  }

  else
  {
    v75 = *(a7 + 224);
    v40 = *(a7 + 236);
    v76 = *(a7 + 232);
    v41 = *(a7 + 240);
  }

  time1.value = v77;
  time1.timescale = v78;
  time1.flags = v38;
  time1.epoch = v39;
  time2 = *(a7 + 200);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1.value = v75;
    time1.timescale = v76;
    time1.flags = v40;
    time1.epoch = v41;
    time2 = *(a7 + 200);
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      rhs.value = v75;
      rhs.timescale = v76;
      v42 = v40;
      v43 = v41;
      *v51 = v21;
    }

    else
    {
      rhs.value = *(a7 + 200);
      v42 = *(a7 + 212);
      rhs.timescale = *(a7 + 208);
      v43 = *(a7 + 216);
      v73 = rhs.value;
      v74 = rhs.timescale;
      v24 = v42;
      *v51 = v43;
    }

    time1.value = rhs.value;
    time1.timescale = rhs.timescale;
    time1.flags = v42;
    time1.epoch = v43;
    time2.value = v77;
    time2.timescale = v78;
    time2.flags = v38;
    time2.epoch = v39;
    CMTimeSubtract(&v67, &time1, &time2);
    time2 = v67;
    CMTimeConvertScale(&time1, &time2, a6, kCMTimeRoundingMethod_QuickTime);
    v67 = time1;
  }

  else
  {
    v73 = v77;
    v74 = v78;
    v24 = v38;
    *v51 = v39;
  }

  time1 = *(a7 + 224);
  time2.value = v75;
  time2.timescale = v76;
  time2.flags = v40;
  time2.epoch = v41;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *(a7 + 224);
    time2.value = v77;
    time2.timescale = v78;
    time2.flags = v38;
    time2.epoch = v39;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      rhs.value = v77;
      rhs.timescale = v78;
      v48 = v21;
    }

    else
    {
      v44 = v46 == 2 && *(a7 + 148) != 2;
      if (v47 || v44)
      {
        rhs.value = v75;
        rhs.timescale = v76;
        v71 = v75;
        v72 = v76;
        v38 = v40;
        v39 = v41;
        v49 = v40;
        v48 = v41;
      }

      else
      {
        rhs.value = *(a7 + 224);
        v38 = *(a7 + 236);
        rhs.timescale = *(a7 + 232);
        v39 = *(a7 + 240);
        v71 = rhs.value;
        v72 = rhs.timescale;
        v49 = v38;
        v48 = v39;
      }
    }

    time1.value = v75;
    time1.timescale = v76;
    time1.flags = v40;
    time1.epoch = v41;
    time2.value = rhs.value;
    time2.timescale = rhs.timescale;
    time2.flags = v38;
    time2.epoch = v39;
    CMTimeSubtract(&v66, &time1, &time2);
    time2 = v66;
    CMTimeConvertScale(&time1, &time2, a6, kCMTimeRoundingMethod_QuickTime);
    v66 = time1;
    v40 = v49;
    v41 = v48;
  }

  else
  {
    v71 = v75;
    v72 = v76;
  }

  v13 = v45;
  v28 = v56;
  if (v24 & 1) != 0 && (v40)
  {
    time1.value = v71;
    time1.timescale = v72;
    time1.flags = v40;
    time1.epoch = v41;
    time2.value = v73;
    time2.timescale = v74;
    time2.flags = v24;
    v27 = *v51;
    time2.epoch = *v51;
    CMTimeSubtract(&v65, &time1, &time2);
    time2 = v65;
    CMTimeConvertScale(&time1, &time2, a6, kCMTimeRoundingMethod_QuickTime);
    v65 = time1;
    v28 = v56;
  }

  else
  {
    v27 = *v51;
  }

LABEL_7:
  *&time1.value = v28;
  time1.epoch = v16;
  time2 = v67;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    newTimescalea = v24;
    v29 = v27;
    v60 = v54;
    *v61 = v21;
    *&v61[8] = v54;
    *&v61[24] = v21;
    v62 = *&a4->value;
    *v63 = a4->epoch;
    *&v63[8] = v67;
    v30 = v13;
    v31 = copyFigTimeMappingAsDictionary(v13, &v60, &cf);
    v32 = cf;
    if (v31)
    {
      goto LABEL_53;
    }

    appendTrackEditSegmentDictionary(v23, cf);
    if (v31)
    {
      goto LABEL_53;
    }

    if (v32)
    {
      CFRelease(v32);
      cf = 0;
    }

    time2 = *a4;
    rhs = *&v63[8];
    CMTimeAdd(&time1, &time2, &rhs);
    *a4 = time1;
    v13 = v30;
    v27 = v29;
    v24 = newTimescalea;
  }

  *&time1.value = v56;
  time1.epoch = v16;
  time2 = v65;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1.value = v73;
    time1.timescale = v74;
    time1.flags = v24;
    time1.epoch = v27;
    time2 = *(a7 + 248);
    CMTimeAdd(&v60, &time1, &time2);
    *&v61[8] = v65;
    v62 = *&a4->value;
    v33 = a4->epoch;
    *&v63[8] = v65;
    *v63 = v33;
    v34 = v13;
    v31 = copyFigTimeMappingAsDictionary(v13, &v60, &cf);
    v32 = cf;
    if (v31)
    {
      goto LABEL_53;
    }

    appendTrackEditSegmentDictionary(v23, cf);
    if (v31)
    {
      goto LABEL_53;
    }

    if (v32)
    {
      CFRelease(v32);
      cf = 0;
    }

    time2 = *a4;
    rhs = *&v63[8];
    CMTimeAdd(&time1, &time2, &rhs);
    *a4 = time1;
    v13 = v34;
  }

  *&time1.value = v56;
  time1.epoch = v16;
  time2 = v66;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
LABEL_25:
    *a8 = v23;
    v35 = 0;
    if (a9)
    {
      v36 = *&a4->value;
      *(a9 + 16) = a4->epoch;
      *a9 = v36;
    }

    return v35;
  }

  v60 = v54;
  *v61 = v21;
  *&v61[8] = v54;
  *&v61[24] = v21;
  v62 = *&a4->value;
  *v63 = a4->epoch;
  *&v63[8] = v66;
  v31 = copyFigTimeMappingAsDictionary(v13, &v60, &cf);
  v32 = cf;
  if (!v31)
  {
    appendTrackEditSegmentDictionary(v23, cf);
    if (!v31)
    {
      if (v32)
      {
        CFRelease(v32);
      }

      time2 = *a4;
      rhs = *&v63[8];
      CMTimeAdd(&time1, &time2, &rhs);
      *a4 = time1;
      goto LABEL_25;
    }
  }

LABEL_53:
  v35 = v31;
  if (v32)
  {
    CFRelease(v32);
  }

  CFRelease(v23);
  return v35;
}